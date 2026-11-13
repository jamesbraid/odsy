# Source: ../ODYSSEY/ody_image_move.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_move.c
# Total Functions: 15

.text

# Function: ImageCopyPixelBody
# Declared: Line 175 (Source lines: 184-303)
# Address: 0x0d9b73c0 - 0x0d9b7820 (Size: 1120 bytes, Frame: 0)
.ent ImageCopyPixelBody
ImageCopyPixelBody:
    # Line 184
    lui	$a7,0x1
    beqz	$a5,.L0d9b75ac
    lw	$t0,4112($zero)
    lw	$v1,0($a2)
    lw	$a3,8($a2)
    lw	$v0,12($a2)
    mtc1	$v1,$f6
    lw	$at,4($a2)
    mtc1	$a3,$f7
    mtc1	$v0,$f8
    mtc1	$at,$f4
    cvt.s.w	$f6,$f6
    cvt.s.w	$f7,$f7
    cvt.s.w	$f8,$f8
    beqz	$a4,.L0d9b77f8
    cvt.s.w	$f4,$f4
    # Line 194
    li	$t1,1
    beq	$a4,$t1,.L0d9b780c
    # Line 221
    mov.s	$f9,$f4
    mov.s	$f11,$f8
    # Line 217
    mov.s	$f5,$f7
    # Line 203
    li	$t2,2
    # Line 221
    mov.s	$f10,$f6
    xor	$t2,$a4,$t2
    movz.s	$f5,$f6,$t2
    movz.s	$f10,$f7,$t2
.L0d9b7428:
    addu	$a4,$a7,$t0
    lw	$t3,-26576($a4)
    lui	$t1,0x1
    li	$t9,250
    ori	$t2,$t1,0x46
    beqz	$t3,.L0d9b7458
    ori	$t1,$t1,0x443
    # Line 226
    sw	$zero,-26576($a4)
    sw	$t1,0($a7)
    sw	$t9,0($a7)
    sw	$t2,0($a7)
    sw	$t2,0($a7)
.L0d9b7458:
    sw	$t2,0($a7)
    sw	$t2,0($a7)
    sw	$t2,0($a7)
    lui	$v1,0x1
    ori	$t3,$v1,0x1453
    sw	$t3,0($a7)
    lw	$a3,-26964($a4)
    sw	$a3,0($a7)
    lw	$v0,-26960($a4)
    sw	$v0,0($a7)
    lw	$at,-26956($a4)
    sw	$at,0($a7)
    lw	$t8,-26952($a4)
    sw	$t8,0($a7)
    lw	$t3,-26948($a4)
    sw	$t3,0($a7)
    sw	$zero,-26576($a4)
    sw	$t1,0($a7)
    sw	$t9,0($a7)
    sw	$t2,0($a7)
    sw	$t2,0($a7)
    # Line 234
    lw	$a3,248($t0)
    # Line 237
    lwc1	$f8,12($a3)
    # Line 236
    lwc1	$f7,8($a3)
    # Line 235
    lwc1	$f6,4($a3)
    # Line 234
    lwc1	$f4,0($a3)
    # Line 242
    ori	$v1,$v1,0x4400
    sw	$v1,0($a7)
    li	$v0,10
    sw	$v0,0($a7)
    lw	$t8,0($a2)
    lw	$t3,8($a2)
    slt	$at,$t3,$t8
    beqz	$at,.L0d9b77d4
    # Line 246
    move	$t9,$t8
.L0d9b74e4:
    subu	$at,$t9,$t3
    sw	$at,-26900($a4)
    lw	$t2,4($a2)
    lw	$t1,12($a2)
    slt	$t8,$t1,$t2
    slt	$v0,$t2,$t1
    beqz	$t8,.L0d9b77e8
    move	$t3,$t2
.L0d9b7504:
    subu	$a3,$t3,$t1
    sw	$a3,-26896($a4)
    # Line 249
    swc1	$f4,-26940($a4)
    swc1	$f6,-26936($a4)
    swc1	$f7,-26932($a4)
    swc1	$f8,-26928($a4)
    # Line 251
    swc1	$f5,-26924($a4)
    swc1	$f11,-26920($a4)
    swc1	$f15,-26916($a4)
    swc1	$f10,-26912($a4)
    swc1	$f9,-26908($a4)
    # Line 255
    lui	$v1,0xcf80
    # Line 251
    swc1	$f15,-26904($a4)
    # Line 255
    ori	$v1,$v1,0xa92f
    sw	$v1,0($a7)
    lwc1	$f25,-26940($a4)
    swc1	$f25,0($a7)
    lwc1	$f23,-26936($a4)
    swc1	$f23,0($a7)
    lwc1	$f21,-26932($a4)
    swc1	$f21,0($a7)
    lwc1	$f19,-26928($a4)
    swc1	$f19,0($a7)
    lwc1	$f18,-26924($a4)
    swc1	$f18,0($a7)
    lwc1	$f17,-26920($a4)
    swc1	$f17,0($a7)
    lwc1	$f16,-26916($a4)
    swc1	$f16,0($a7)
    lwc1	$f14,-26912($a4)
    swc1	$f14,0($a7)
    lwc1	$f13,-26908($a4)
    swc1	$f13,0($a7)
    lwc1	$f12,-26904($a4)
    lui	$v0,0x8080
    swc1	$f12,0($a7)
    ori	$v0,$v0,0xc800
    sw	$v0,0($a7)
    sw	$zero,0($a7)
    sw	$zero,0($a7)
    sw	$zero,-26880($a4)
    sw	$zero,-26884($a4)
.L0d9b75ac:
    lw	$v0,12($a1)
    lw	$t9,4($a1)
    slt	$at,$t9,$v0
    movz	$t9,$v0,$at
    # Line 259
    lw	$at,4($a0)
    lui	$a4,0xffff
    sll	$t9,$t9,0x10
    andi	$at,$at,0xffff
    and	$t9,$a4,$t9
    or	$t9,$t9,$at
    sw	$t9,4($a0)
    lw	$v0,8($a1)
    lw	$t8,0($a1)
    slt	$at,$t8,$v0
    movz	$t8,$v0,$at
    # Line 260
    and	$t9,$a4,$t9
    andi	$t8,$t8,0xffff
    or	$t8,$t8,$t9
    sw	$t8,4($a0)
    lw	$t1,4($a1)
    lw	$t2,12($a1)
    slt	$t3,$t2,$t1
    beqz	$t3,.L0d9b77b0
    # Line 262
    move	$t9,$t1
.L0d9b760c:
    move	$t1,$t2
    lw	$at,12($a0)
.L0d9b7614:
    subu	$t8,$t9,$t1
    sll	$t8,$t8,0x10
    andi	$at,$at,0xffff
    and	$t8,$a4,$t8
    or	$t8,$t8,$at
    sw	$t8,12($a0)
    lw	$t3,0($a1)
    lw	$t2,8($a1)
    slt	$at,$t2,$t3
    # Line 263
    move	$a1,$t2
    # Line 262
    beqz	$at,.L0d9b77c4
    # Line 263
    slt	$t9,$t3,$t2
    move	$a1,$t3
.L0d9b7648:
    subu	$a3,$a1,$t2
    and	$t1,$a4,$t8
    andi	$a3,$a3,0xffff
    or	$a3,$a3,$t1
    sw	$a3,12($a0)
    lw	$t1,12($a2)
    lw	$v1,4($a2)
    slt	$a3,$v1,$t1
    movz	$v1,$t1,$a3
    # Line 265
    lw	$a3,24($a0)
    sll	$v1,$v1,0x10
    andi	$a3,$a3,0xffff
    and	$v1,$a4,$v1
    or	$v1,$v1,$a3
    sw	$v1,24($a0)
    lw	$t1,8($a2)
    lw	$v0,0($a2)
    slt	$a3,$v0,$t1
    movz	$v0,$t1,$a3
    # Line 266
    and	$v1,$a4,$v1
    andi	$v0,$v0,0xffff
    or	$v0,$v0,$v1
    sw	$v0,24($a0)
    # Line 272
    li	$at,8241
    sw	$at,0($a7)
    # Line 274
    lw	$t9,0($a0)
    sw	$t9,0($a7)
    # Line 275
    lw	$t3,4($a0)
    sw	$t3,0($a7)
    # Line 276
    lw	$t1,8($a0)
    sw	$t1,0($a7)
    # Line 277
    lw	$a3,12($a0)
    sw	$a3,0($a7)
    # Line 278
    lw	$v1,16($a0)
    sw	$v1,0($a7)
    # Line 296
    addu	$a2,$a7,$t0
    # Line 279
    lw	$v0,20($a0)
    # Line 288
    addu	$a4,$a7,$t0
    li	$t3,250
    # Line 279
    sw	$v0,0($a7)
    # Line 296
    li	$a3,150
    lui	$v0,0x1
    # Line 280
    lw	$at,24($a0)
    # Line 296
    ori	$a1,$v0,0x443
    ori	$v1,$v0,0x46
    # Line 280
    sw	$at,0($a7)
    # Line 300
    lui	$at,0x12
    # Line 281
    lw	$t9,28($a0)
    # Line 288
    lui	$a0,0x1
    ori	$t1,$a0,0x4001
    # Line 281
    beqz	$a5,.L0d9b7748
    sw	$t9,0($a7)
    # Line 288
    sw	$t1,0($a7)
    lw	$a5,-26892($a4)
    ori	$t8,$a0,0x443
    ori	$t2,$a0,0x46
    beqz	$a5,.L0d9b7744
    li	$t9,1
    sw	$zero,-26576($a4)
    sw	$t8,0($a7)
    sw	$t3,0($a7)
    sw	$t2,0($a7)
    sw	$t2,0($a7)
.L0d9b7744:
    sw	$t9,-26576($a4)
.L0d9b7748:
    beqz	$a6,.L0d9b77a8
    nop
    # Line 296
    sw	$a1,0($a7)
    li	$a0,250
    sw	$a0,0($a7)
    sw	$v1,0($a7)
    sw	$v1,0($a7)
    ori	$a4,$v0,0x19
    sw	$a4,0($a7)
    sw	$a1,0($a7)
    sw	$a3,0($a7)
    sw	$v1,0($a7)
    sw	$v1,0($a7)
    sw	$v1,0($a7)
    sw	$v1,0($a7)
    sw	$zero,-26576($a2)
    sw	$a1,0($a7)
    sw	$a0,0($a7)
    sw	$v1,0($a7)
    sw	$v1,0($a7)
    # Line 299
    ori	$v0,$v0,0x658
    sw	$v0,0($a7)
    # Line 303
    jr	$ra
    # Line 300
    sw	$at,0($a7)
.L0d9b77a8:
    # Line 303
    jr	$ra
    nop
.L0d9b77b0:
    # Line 262
    slt	$t3,$t1,$t2
    beqz	$t3,.L0d9b760c
    move	$t9,$t2
    b	.L0d9b7614
    lw	$at,12($a0)
.L0d9b77c4:
    # Line 263
    beqz	$t9,.L0d9b7648
    nop
    b	.L0d9b7648
    move	$t2,$t3
.L0d9b77d4:
    # Line 246
    slt	$at,$t8,$t3
    beqz	$at,.L0d9b74e4
    move	$t9,$t3
    b	.L0d9b74e4
    move	$t3,$t8
.L0d9b77e8:
    beqz	$v0,.L0d9b7504
    move	$t3,$t1
    b	.L0d9b7504
    move	$t1,$t2
.L0d9b77f8:
    # Line 189
    mov.s	$f5,$f6
    # Line 190
    mov.s	$f11,$f4
    # Line 193
    mov.s	$f10,$f7
    # Line 194
    b	.L0d9b7428
    mov.s	$f9,$f8
.L0d9b780c:
    # Line 198
    mov.s	$f5,$f7
    # Line 199
    mov.s	$f11,$f4
    # Line 202
    mov.s	$f10,$f6
    # Line 203
    b	.L0d9b7428
    mov.s	$f9,$f8
.end ImageCopyPixelBody

# Function: __glOdysseyImageMovePixelsCopy
# Declared: Line 321 (Source lines: 326-1332)
# Address: 0x0d9b7820 - 0x0d9b9674 (Size: 7764 bytes, Frame: 192)
.globl __glOdysseyImageMovePixelsCopy
.ent __glOdysseyImageMovePixelsCopy
__glOdysseyImageMovePixelsCopy:
    # Line 326
    addiu	$sp,$sp,-832
    sd	$s5,520($sp)
    sd	$s6,624($sp)
    sd	$s3,648($sp)
    sd	$s2,664($sp)
    # Line 369
    sw	$zero,16($sp)
    # Line 340
    sw	$zero,12($sp)
    # Line 339
    sw	$zero,8($sp)
    # Line 338
    sw	$zero,4($sp)
    # Line 337
    sw	$zero,0($sp)
    # Line 326
    sd	$s4,640($sp)
    # Line 401
    lw	$s4,4112($zero)
    sd	$zero,24($sp)
    sd	$zero,56($sp)
    addiu	$v1,$sp,56
    sw	$zero,24($v1)
    sd	$zero,16($v1)
    addiu	$a6,$sp,24
    sd	$zero,8($v1)
    sd	$zero,24($a6)
    # Line 423
    lui	$a5,0x2
    # Line 401
    sd	$zero,16($a6)
    sd	$zero,8($a6)
    # Line 423
    addu	$a5,$s4,$a5
    # Line 348
    andi	$s2,$a3,0xff
    # Line 326
    move	$s3,$a2
    # Line 423
    lbu	$at,-25115($a5)
    # Line 326
    move	$s6,$a1
    sd	$s0,632($sp)
    lui	$v0,0x14
    move	$s0,$a0
    sd	$s1,528($sp)
    addiu	$v0,$v0,3440
    sd	$gp,656($sp)
    # Line 423
    beqz	$at,.L0d9b78cc
    # Line 326
    addu	$gp,$t9,$v0
    # Line 423
    lui	$a7,0x1
    ori	$a7,$a7,0x6a70
    addu	$a7,$a7,$s4
    lw	$a7,0($a7)
    li	$t0,1
    beq	$a7,$t0,.L0d9b87b0
    nop
.L0d9b78cc:
    sd	$a5,552($sp)
    sdc1	$f20,744($sp)
    sd	$a4,560($sp)
    sd	$ra,752($sp)
    # Line 430
    lw	$t0,7916($a5)
    sd	$t0,672($sp)
.L0d9b78e4:
    # Line 439
    lwc1	$f12,16($s3)
    ldc1	$f20,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f13,$f0
    swc1	$f13,88($sp)
    # Line 440
    lwc1	$f12,20($s3)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 439
    mfc1	$s1,$f13
    # Line 440
    jal	ceilf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f13,$f0
    swc1	$f13,92($sp)
    # Line 441
    lwc1	$f12,24($s3)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f13,$f0
    swc1	$f13,96($sp)
    # Line 442
    lwc1	$f12,28($s3)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 441
    mfc1	$s5,$f13
    # Line 442
    jal	ceilf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f15,$f0
    swc1	$f15,100($sp)
    # Line 445
    lwc1	$f14,0($s3)
    trunc.w.s	$f14,$f14
    swc1	$f14,104($sp)
    # Line 446
    lwc1	$f15,4($s3)
    trunc.w.s	$f15,$f15
    swc1	$f15,108($sp)
    # Line 447
    lwc1	$f13,8($s3)
    trunc.w.s	$f13,$f13
    swc1	$f13,112($sp)
    # Line 448
    lwc1	$f15,12($s3)
    trunc.w.s	$f15,$f15
    swc1	$f15,116($sp)
    lbu	$t1,8($s0)
    # Line 445
    mfc1	$t0,$f14
    # Line 448
    beqz	$t1,.L0d9b8738
    # Line 447
    mfc1	$t1,$f13
    # Line 448
    li	$a0,0xa6d8
    addu	$a0,$a0,$s4
    lw	$a0,0($a0)
    andi	$t2,$a0,0x1000
    beqz	$t2,.L0d9b8744
    # Line 463
    move	$s3,$a0
    # Line 453
    li	$s3,8192
    subu	$s3,$s3,$a0
    # Line 455
    subu	$a3,$s1,$s3
    sw	$a3,88($sp)
    # Line 456
    subu	$a2,$s5,$s3
    sw	$a2,96($sp)
    lbu	$a1,8($s6)
    beqz	$a1,.L0d9b79f8
    # Line 459
    subu	$t9,$t1,$s3
    sw	$t9,112($sp)
    # Line 458
    subu	$t8,$t0,$s3
    sw	$t8,104($sp)
.L0d9b79f8:
    # Line 459
    li	$ra,1
    sd	$ra,576($sp)
.L0d9b7a00:
    # Line 479
    # lw $t9, -32716($gp) # &sub_0d9c0000
    lw	$a3,44($s6)
    addiu	$t9,$t9,-12112
    addiu	$a2,$sp,56
    lw	$a1,52($s0)
    lw	$a0,52($s6)
    bal __glOdysseyImageMovePixelsTexture
    sltiu	$a3,$a3,1
    lbu	$ra,56($sp)
    beqz	$ra,.L0d9b8e6c
    # Line 492
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 513
    lbu	$at,8($s0)
    sd	$s8,504($sp)
    beqz	$at,.L0d9b874c
    lui	$s8,0x1
    sd	$s7,512($sp)
    addu	$s7,$s8,$s4
    sd	$s3,536($sp)
.L0d9b7a48:
    # Line 519
    li	$s3,1
.L0d9b7a4c:
    move	$s2,$s3
.L0d9b7a50:
    # Line 557
    lw	$s1,88($sp)
    lw	$v0,104($sp)
    slt	$v0,$s1,$v0
    bnez	$v0,.L0d9b7a78
    lw	$v1,112($sp)
    slt	$v1,$v1,$s1
    bnez	$v1,.L0d9b7a7c
    move	$a0,$zero
    b	.L0d9b7a7c
    li	$a0,1
.L0d9b7a78:
    move	$a0,$zero
.L0d9b7a7c:
    # Line 559
    lw	$a2,100($sp)
    lw	$a1,116($sp)
    slt	$a1,$a2,$a1
    bnez	$a1,.L0d9b7ac0
    lw	$a3,108($sp)
    slt	$a3,$a3,$a2
    bnez	$a3,.L0d9b7ac0
    nop
    lw	$t9,27240($s7)
    li	$ra,48
    move	$t8,$zero
    movz	$t8,$ra,$t9
    # Line 574
    ori	$s1,$t8,0x8
    # Line 559
    li	$s5,1
    movz	$s1,$t8,$s2
    # Line 577
    b	.L0d9b7adc
    ori	$s1,$s1,0x40
.L0d9b7ac0:
    # Line 559
    lw	$v0,27240($s7)
    li	$v1,48
    move	$at,$zero
    movz	$at,$v1,$v0
    # Line 574
    ori	$s1,$at,0x8
    # Line 559
    move	$s5,$zero
    movz	$s1,$at,$s2
.L0d9b7adc:
    # Line 580
    lbu	$a3,9($s6)
    # Line 574
    andi	$a1,$a0,0xff
    # Line 580
    ori	$a2,$s1,0x80
    beqz	$a3,.L0d9b8790
    movn	$s1,$a2,$a1
    # Line 593
    lw	$a0,1236($s4)
    li	$a4,1029
    beq	$a0,$a4,.L0d9b831c
    li	$a5,1026
    beq	$a0,$a5,.L0d9b831c
    li	$a6,1027
    beq	$a0,$a6,.L0d9b831c
    li	$a7,1
    sd	$a7,592($sp)
.L0d9b7b14:
    # Line 599
    li	$t0,1031
    beq	$a0,$t0,.L0d9b8328
    move	$a2,$zero
    li	$t1,1025
    beq	$a0,$t1,.L0d9b8324
    li	$t2,1027
    beq	$a0,$t2,.L0d9b8324
    li	$a2,1
    sd	$a1,544($sp)
.L0d9b7b38:
    # Line 607
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,-5312
    # Line 612
    addiu	$a5,$sp,4
    addiu	$a4,$sp,0
    lw	$a1,48($s6)
    move	$a3,$zero
    bal __glOdysseyImageCalcXferWriteParams
    lw	$a0,44($s6)
    beqz	$v0,.L0d9b82e4
    nop
    # Line 617
    lbu	$ra,8($s0)
    beqz	$ra,.L0d9b87a4
    # Line 655
    li	$a2,1
    # Line 641
    lw	$a0,1888($s4)
    li	$at,1029
    beq	$a0,$at,.L0d9b8330
    li	$v0,1026
    beq	$a0,$v0,.L0d9b8330
    li	$v1,1027
    beq	$a0,$v1,.L0d9b8330
    li	$a1,1
    sd	$a1,584($sp)
.L0d9b7b90:
    # Line 647
    li	$a2,1031
    beq	$a0,$a2,.L0d9b8338
    li	$a3,1025
    beq	$a0,$a3,.L0d9b8338
    li	$a4,1027
    beq	$a0,$a4,.L0d9b8338
    li	$a2,1
.L0d9b7bac:
    # Line 660
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,-5312
    addiu	$a5,$sp,12
    addiu	$a4,$sp,8
    lw	$a1,48($s0)
    move	$a3,$zero
    bal __glOdysseyImageCalcXferWriteParams
    lw	$a0,44($s0)
    beqz	$v0,.L0d9b82e4
    # Line 680
    nop	# was lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    move	$a5,$zero
    lw	$a2,20($s6)
    addiu	$a4,$sp,120
    move	$a0,$s4
    lw	$a1,16($s6)
    jal	__glOdysseyOpenPMObjReference
    move	$a3,$a2
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d9b8ad0
    # Line 692
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 698
    lw	$v0,20($s6)
    # Line 704
    lw	$a2,20($s0)
    # lw $t9, -30964($gp) # &__glOdysseyOpenPMObjWriteReference
    # Line 698
    addiu	$at,$sp,120
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$v0,24($s6)
    # Line 704
    sltu	$a4,$zero,$s2
    # Line 698
    lw	$at,0($at)
    # Line 704
    addiu	$a3,$sp,16
    move	$a0,$s4
    lw	$a1,16($s0)
    # Line 698
    addu	$at,$at,$v0
    # Line 704
    jal	__glOdysseyOpenPMObjWriteReference
    sd	$at,568($sp)
    andi	$v1,$v0,0xff
    beqz	$v1,.L0d9b901c
    # Line 718
    lw	$a2,16($sp)
    # Line 755
    lui	$t2,0x8fff
    # Line 750
    lui	$t9,0xe000
    # Line 718
    lw	$a1,24($s0)
    # Line 754
    lui	$a5,0x8000
    # Line 750
    lui	$t8,0x1fff
    ori	$t8,$t8,0xffff
    # Line 718
    addu	$a1,$a1,$a2
    sw	$a1,16($sp)
    # Line 754
    lui	$t3,0x7fff
    # Line 718
    lui	$v0,0x1000
    # Line 729
    lbu	$a3,9($s6)
    # Line 749
    lui	$at,0xdfff
    # Line 729
    li	$ra,1
    # Line 749
    lw	$v1,24($sp)
    ori	$at,$at,0xffff
    movz	$ra,$zero,$a3
    lui	$a2,0x2000
    sll	$a0,$ra,0x1d
    ld	$a4,568($sp)
    and	$v1,$at,$v1
    and	$a0,$a2,$a0
    or	$v1,$v1,$a0
    # Line 729
    ori	$a0,$v0,0x19
    # Line 754
    ori	$t3,$t3,0xffff
    movz	$a0,$a4,$a3
    ld	$a4,584($sp)
    # Line 750
    and	$v1,$t9,$v1
    and	$a0,$t8,$a0
    # Line 754
    lw	$a3,32($sp)
    # Line 750
    or	$v1,$v1,$a0
    # Line 754
    sll	$a4,$a4,0x1f
    # Line 718
    lbu	$a0,8($s0)
    # Line 754
    and	$a3,$t3,$a3
    and	$a4,$a5,$a4
    # Line 755
    ori	$t2,$t2,0xffff
    # Line 750
    sw	$v1,24($sp)
    # Line 754
    or	$a3,$a3,$a4
    # Line 755
    and	$a3,$t2,$a3
    sw	$a3,32($sp)
    # Line 756
    lw	$a6,28($s0)
    lui	$a7,0xfff
    nor	$a4,$a7,$zero
    sll	$a6,$a6,0x10
    and	$a3,$a3,$a4
    # Line 757
    lw	$a4,12($sp)
    # Line 756
    and	$a6,$a6,$a7
    or	$a3,$a3,$a6
    # Line 757
    li	$a6,0xf000
    sll	$a4,$a4,0xc
    nor	$a6,$a6,$zero
    andi	$a4,$a4,0xf000
    and	$a3,$a3,$a6
    # Line 718
    ori	$v0,$v0,0x10
    # Line 757
    or	$a3,$a3,$a4
    sw	$a3,32($sp)
    movz	$v0,$a1,$a0
    # Line 758
    lw	$a6,28($s6)
    # Line 774
    and	$v0,$t8,$v0
    # Line 758
    li	$a4,-4096
    and	$a3,$a4,$a3
    andi	$a6,$a6,0xfff
    # Line 765
    lui	$t1,0xf0
    # Line 758
    or	$a3,$a3,$a6
    # Line 762
    ld	$a6,592($sp)
    # Line 765
    lui	$t0,0xff0f
    # Line 763
    sll	$ra,$ra,0x1c
    # Line 762
    lw	$a7,40($sp)
    # Line 765
    ori	$t0,$t0,0xffff
    # Line 762
    sll	$a6,$a6,0x1f
    and	$t3,$t3,$a7
    and	$a5,$a5,$a6
    # Line 769
    lbu	$v1,58($sp)
    # Line 762
    or	$t3,$t3,$a5
    # Line 763
    lui	$a5,0x7000
    and	$ra,$ra,$a5
    and	$t2,$t2,$t3
    # Line 764
    lw	$t3,4($sp)
    # Line 769
    sll	$v1,$v1,0x3
    # Line 763
    or	$t2,$t2,$ra
    # Line 764
    lui	$ra,0xf00
    sll	$t3,$t3,0x18
    nor	$a5,$ra,$zero
    and	$t3,$t3,$ra
    # Line 765
    lw	$ra,0($sp)
    # Line 769
    andi	$v1,$v1,0xf8
    # Line 764
    and	$t2,$t2,$a5
    or	$t2,$t2,$t3
    # Line 765
    sll	$ra,$ra,0x14
    # Line 758
    sw	$a3,32($sp)
    # Line 765
    and	$t2,$t0,$t2
    and	$ra,$t1,$ra
    # Line 766
    lui	$a7,0xfff0
    # Line 765
    or	$t2,$t2,$ra
    sw	$t2,40($sp)
    # Line 766
    ori	$a7,$a7,0xffff
    # Line 767
    lui	$a5,0xffff
    # Line 766
    lw	$a3,40($s6)
    lui	$a6,0xf
    # Line 767
    ori	$a5,$a5,0x1fff
    # Line 768
    li	$ra,-8
    # Line 767
    lw	$t3,60($sp)
    # Line 766
    sll	$a3,$a3,0x10
    and	$t2,$a7,$t2
    and	$a3,$a6,$a3
    # Line 767
    sll	$t3,$t3,0xd
    # Line 766
    or	$a3,$a3,$t2
    # Line 767
    andi	$t3,$t3,0xe000
    # Line 768
    lbu	$t2,57($sp)
    # Line 767
    and	$a3,$a5,$a3
    or	$t3,$t3,$a3
    # Line 718
    li	$a3,1
    # Line 768
    andi	$t2,$t2,0x7
    and	$t3,$ra,$t3
    or	$t2,$t2,$t3
    # Line 769
    li	$t3,-249
    movz	$a3,$zero,$a0
    and	$t2,$t2,$t3
    # Line 773
    sll	$a3,$a3,0x1d
    # Line 769
    or	$v1,$v1,$t2
    # Line 773
    lw	$t2,44($sp)
    # Line 777
    lui	$a0,0xff00
    # Line 773
    and	$a2,$a2,$a3
    # Line 777
    lw	$t3,52($sp)
    lui	$a3,0xff
    # Line 773
    and	$at,$at,$t2
    # Line 777
    ori	$a3,$a3,0xffff
    # Line 773
    or	$at,$at,$a2
    # Line 782
    lbu	$a1,65($sp)
    # Line 777
    and	$t3,$t3,$a3
    # Line 774
    and	$at,$t9,$at
    # Line 778
    lw	$t2,8($sp)
    # Line 774
    or	$at,$at,$v0
    # Line 777
    sll	$v0,$s1,0x18
    # Line 780
    lw	$a3,68($sp)
    # Line 770
    ori	$v1,$v1,0x1000
    # Line 777
    and	$v0,$v0,$a0
    # Line 770
    sw	$v1,40($sp)
    # Line 778
    sll	$t2,$t2,0x14
    # Line 777
    or	$t3,$t3,$v0
    # Line 774
    sw	$at,44($sp)
    # Line 778
    and	$t1,$t1,$t2
    and	$t0,$t0,$t3
    or	$t0,$t0,$t1
    sw	$t0,52($sp)
    # Line 782
    sll	$a1,$a1,0x5
    # Line 779
    lw	$t1,40($s0)
    # Line 780
    sll	$a3,$a3,0xd
    # Line 779
    sll	$t1,$t1,0x10
    # Line 781
    lbu	$a2,66($sp)
    # Line 779
    and	$a7,$a7,$t0
    and	$a6,$a6,$t1
    # Line 780
    andi	$a3,$a3,0xe000
    # Line 779
    or	$a6,$a6,$a7
    # Line 781
    sll	$a2,$a2,0x9
    # Line 780
    and	$a5,$a5,$a6
    or	$a3,$a3,$a5
    # Line 781
    li	$a5,-513
    andi	$a2,$a2,0x200
    and	$a3,$a3,$a5
    or	$a2,$a2,$a3
    # Line 782
    li	$a3,-481
    andi	$a1,$a1,0x1e0
    # Line 783
    lbu	$a0,64($sp)
    # Line 782
    and	$a2,$a2,$a3
    or	$a1,$a1,$a2
    # Line 783
    li	$a2,-32
    sd	$s5,760($sp)
    andi	$a0,$a0,0x1f
    and	$a1,$a1,$a2
    or	$a0,$a0,$a1
    beqz	$s2,.L0d9b8340
    sw	$a0,52($sp)
    # Line 812
    lw	$at,31800($s4)
    # Line 811
    lw	$v0,31796($s4)
    # Line 810
    lw	$v1,31740($s4)
    # Line 809
    lw	$t0,-26980($s7)
    lw	$t1,-26976($s7)
    lw	$t2,-26972($s7)
    lw	$t3,-26968($s7)
    sd	$t3,440($sp)
    sd	$t2,456($sp)
    sd	$t1,496($sp)
    sd	$t0,432($sp)
    # Line 810
    sd	$v1,448($sp)
    # Line 811
    sd	$v0,472($sp)
    # Line 812
    sd	$at,464($sp)
    # Line 807
    lw	$a2,-26956($s7)
    lw	$a1,-26960($s7)
    addiu	$a0,$sp,184
    sw	$a1,4($a0)
    sw	$a2,8($a0)
    # Line 808
    lw	$a7,-26872($s7)
    sd	$a7,424($sp)
    # Line 813
    lw	$a7,31804($s4)
    # Line 808
    lw	$a6,-26876($s7)
    # Line 807
    lw	$a5,-26948($s7)
    lw	$a3,-26952($s7)
    sw	$a3,12($a0)
    sw	$a5,16($a0)
    # Line 808
    sd	$a6,416($sp)
    # Line 807
    lw	$a6,-26964($s7)
    sw	$a6,184($sp)
    # Line 813
    sd	$a7,480($sp)
    # Line 816
    lw	$a3,-26576($s7)
    lui	$s5,0x1
    li	$a0,250
    lbu	$a5,81($sp)
    ori	$s1,$s5,0x46
    ori	$s5,$s5,0x443
    # Line 814
    lw	$a7,31836($s4)
    sd	$a7,488($sp)
    # Line 816
    and	$a6,$ra,$a6
    andi	$a5,$a5,0x7
    or	$a5,$a5,$a6
    beqz	$a3,.L0d9b7fb8
    sw	$a5,-26964($s7)
    # Line 818
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    sw	$a0,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
.L0d9b7fb8:
    # Line 827
    li	$a0,0x969c
    addu	$a0,$s4,$a0
    sd	$a0,384($sp)
    # Line 818
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    lui	$a3,0x1
    ori	$t2,$a3,0x1453
    sw	$t2,0($s8)
    lw	$t1,-26964($s7)
    sw	$t1,0($s8)
    lw	$t0,-26960($s7)
    sw	$t0,0($s8)
    lw	$a7,-26956($s7)
    sw	$a7,0($s8)
    lw	$a6,-26952($s7)
    sw	$a6,0($s8)
    lw	$a5,-26948($s7)
    sw	$a5,0($s8)
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    li	$a4,250
    sw	$a4,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    # Line 821
    lbu	$a2,80($sp)
    # Line 827
    # lw $t9, -31180($gp) # &__glOdysseyImageCalcPixelModeFields
    # Line 821
    ori	$a3,$a3,0x3c00
    or	$a2,$a2,$a3
    sw	$a2,-26876($s7)
    # Line 822
    li	$a1,1200
    sw	$a1,0($s8)
    lw	$t8,-26876($s7)
    # Line 827
    move	$a1,$s0
    bal __glOdysseyImageCalcPixelModeFields
    # Line 822
    sw	$t8,0($s8)
    # Line 828
    lw	$ra,-26980($s7)
    # Line 829
    lw	$t3,26976($s7)
    # Line 828
    lui	$t9,0xe000
    lw	$at,16($sp)
    and	$t9,$t9,$ra
    lui	$ra,0x1fff
    # Line 829
    lui	$t8,0x20
    # Line 828
    ori	$ra,$ra,0xffff
    # Line 829
    or	$t3,$t3,$t8
    sw	$t3,26976($s7)
    # Line 828
    and	$ra,$ra,$at
    or	$t9,$t9,$ra
    sw	$t9,-26980($s7)
    # Line 829
    li	$a2,2
    sw	$a2,4120($zero)
    # Line 872
    lw	$a1,4($s6)
    beqz	$a1,.L0d9b87d8
    ld	$a0,760($sp)
.L0d9b8090:
    beq	$a1,$s3,.L0d9b8848
    andi	$a5,$a0,0xff
.L0d9b8098:
    # Line 881
    beqz	$a1,.L0d9b88b0
    andi	$a3,$a0,0xff
.L0d9b80a0:
    beq	$a1,$s3,.L0d9b891c
    andi	$v0,$a0,0xff
.L0d9b80a8:
    # Line 891
    beqz	$a1,.L0d9b8988
    andi	$t8,$a0,0xff
.L0d9b80b0:
    beq	$a1,$s3,.L0d9b89f4
    andi	$t0,$a0,0xff
.L0d9b80b8:
    # Line 901
    beqz	$a1,.L0d9b8a5c
    andi	$a4,$a0,0xff
.L0d9b80c0:
    bne	$a1,$s3,.L0d9b82dc
    # Line 917
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 901
    andi	$at,$a0,0xff
    bnez	$at,.L0d9b82dc
    # Line 917
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 901
    ld	$v0,544($sp)
    bne	$s3,$v0,.L0d9b82d8
    ld	$v1,480($sp)
    ld	$a0,464($sp)
    ld	$a1,472($sp)
    ld	$a3,488($sp)
    ld	$a4,448($sp)
    ld	$a5,440($sp)
    ld	$a6,456($sp)
    ld	$a7,496($sp)
    ld	$t0,432($sp)
    ld	$t1,424($sp)
    ld	$t2,416($sp)
    sw	$t2,248($sp)
    sw	$t1,252($sp)
    sw	$t0,232($sp)
    sw	$a7,236($sp)
    sw	$a6,240($sp)
    sw	$a5,244($sp)
    sw	$a4,224($sp)
    sw	$a3,220($sp)
    sw	$a1,216($sp)
    sw	$a0,212($sp)
    sw	$v1,208($sp)
.L0d9b8134:
    # Line 908
    li	$s3,3
.L0d9b8138:
    # Line 936
    lbu	$t3,8($s0)
    beqz	$t3,.L0d9b8154
    # Line 1001
    lw	$a0,92($sp)
    # Line 936
    ld	$t8,560($sp)
    li	$t9,1
    beq	$t8,$t9,.L0d9b8e80
    # Line 1001
    lw	$a0,92($sp)
.L0d9b8154:
    lw	$t0,100($sp)
    move	$s5,$t0
    slt	$t1,$a0,$t0
    # Line 999
    lw	$a1,88($sp)
    # Line 1002
    slt	$a7,$t0,$a0
    # Line 1001
    movn	$s5,$a0,$t1
    # Line 999
    lw	$a5,96($sp)
    # Line 1002
    movz	$a0,$t0,$a7
    lbu	$a3,10($s0)
    # Line 999
    move	$s1,$a5
    slt	$a6,$a1,$a5
    # Line 1000
    slt	$a4,$a5,$a1
    # Line 999
    movn	$s1,$a1,$a6
    # Line 1002
    addiu	$a0,$a0,-1
    # Line 1000
    movz	$a1,$a5,$a4
    # Line 1002
    beqz	$a3,.L0d9b81b0
    # Line 1000
    addiu	$a1,$a1,-1
    # Line 1005
    lw	$t3,7360($s7)
    sw	$t3,31836($s4)
    # Line 1006
    lw	$t2,26976($s7)
    ori	$t2,$t2,0x80
    sw	$t2,26976($s7)
    sw	$a2,4120($zero)
.L0d9b81b0:
    mtc1	$zero,$f20
.L0d9b81b4:
    # Line 1010
    ld	$t8,552($sp)
    lbu	$t8,-25136($t8)
    beqz	$t8,.L0d9b81e8
    # Line 1030
    move	$a6,$a0
    # Line 1010
    lw	$t9,52($s0)
    lw	$ra,72($sp)
    bne	$t9,$ra,.L0d9b81e4
    # Line 1012
    lui	$v0,0x4
    lw	$at,31740($s4)
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,31740($s4)
.L0d9b81e4:
    # Line 1030
    move	$a6,$a0
.L0d9b81e8:
    # Line 1028
    li	$a7,-4096
    move	$t1,$a1
    # Line 1027
    lui	$t2,0xff00
    # Line 1028
    slti	$t9,$a1,0
    # Line 1024
    lw	$v1,31776($s4)
    # Line 1027
    ori	$t2,$t2,0xfff
    # Line 1025
    lw	$a4,31780($s4)
    # Line 1027
    move	$t3,$s1
    slti	$t8,$s1,0
    movn	$t3,$zero,$t8
    and	$t8,$t2,$v1
    # Line 1029
    and	$t2,$t2,$a4
    # Line 1028
    movn	$t1,$zero,$t9
    andi	$t1,$t1,0xfff
    # Line 1027
    lui	$t0,0xff
    ori	$t0,$t0,0xf000
    sll	$t3,$t3,0xc
    # Line 1029
    slti	$t9,$s5,0
    # Line 1027
    and	$t3,$t0,$t3
    or	$t3,$t3,$t8
    # Line 1029
    move	$t8,$s5
    # Line 1028
    and	$t3,$a7,$t3
    # Line 1029
    movn	$t8,$zero,$t9
    # Line 1028
    or	$t1,$t1,$t3
    # Line 1029
    sll	$t8,$t8,0xc
    # Line 1030
    slti	$t3,$a0,0
    # Line 1029
    and	$t0,$t0,$t8
    # Line 1030
    movn	$a6,$zero,$t3
    # Line 1029
    or	$t0,$t0,$t2
    # Line 1028
    sw	$t1,31776($s4)
    # Line 1030
    andi	$a6,$a6,0xfff
    and	$a7,$a7,$t0
    or	$a6,$a6,$a7
    sw	$a6,31780($s4)
    # Line 1031
    lw	$a5,26976($s7)
    ori	$a5,$a5,0x10
    sw	$a5,26976($s7)
    sw	$a2,4120($zero)
    lw	$a3,26976($s7)
    # Line 1025
    sw	$a4,276($sp)
    # Line 1031
    beqz	$a3,.L0d9b829c
    # Line 1024
    sw	$v1,272($sp)
    # Line 1034
    # lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    jal	__glOdysseyValidateHardware
    move	$a0,$s4
.L0d9b829c:
    # Line 1038
    lw	$at,-24072($s7)
    li	$ra,303
    sw	$ra,-24072($s7)
    lw	$t9,-24072($s7)
    lw	$v0,-24072($s7)
    andi	$t9,$t9,0x3ff
    srl	$v0,$v0,0xa
    sll	$v0,$v0,0x17
    lui	$ra,0x2900
    or	$t9,$t9,$v0
    ori	$ra,$ra,0x8000
    sw	$at,-26892($s7)
    or	$t9,$t9,$ra
    b	.L0d9b8348
    sw	$t9,0($s8)
.L0d9b82d8:
    # Line 917
    # lw $t9, -26792($gp) # &__glSetError
.L0d9b82dc:
    jal	__glSetError
    li	$a0,1282
.L0d9b82e4:
    ld	$s8,504($sp)
.L0d9b82e8:
    ld	$s7,512($sp)
    ld	$s5,520($sp)
    ld	$s1,528($sp)
    ldc1	$f20,744($sp)
    # Line 1332
    ld	$gp,656($sp)
    ld	$s0,632($sp)
    ld	$s2,664($sp)
    ld	$ra,752($sp)
    ld	$s3,648($sp)
    ld	$s4,640($sp)
    ld	$s6,624($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L0d9b831c:
    # Line 593
    b	.L0d9b7b14
    sd	$zero,592($sp)
.L0d9b8324:
    # Line 599
    move	$a2,$zero
.L0d9b8328:
    b	.L0d9b7b38
    sd	$a1,544($sp)
.L0d9b8330:
    # Line 641
    b	.L0d9b7b90
    sd	$zero,584($sp)
.L0d9b8338:
    # Line 647
    b	.L0d9b7bac
    move	$a2,$zero
.L0d9b8340:
    # Line 918
    mtc1	$zero,$f20
    lw	$s3,280($sp)
.L0d9b8348:
    ld	$at,576($sp)
    beqz	$at,.L0d9b839c
    nop
    lw	$v0,-26576($s7)
    beqz	$v0,.L0d9b8388
    # Line 1044
    lui	$a3,0x1
    # Line 1043
    lui	$v1,0x1
    sw	$zero,-26576($s7)
    ori	$a1,$v1,0x443
    sw	$a1,0($s8)
    li	$a0,250
    sw	$a0,0($s8)
    ori	$v1,$v1,0x46
    sw	$v1,0($s8)
    sw	$v1,0($s8)
    # Line 1044
    lui	$a3,0x1
.L0d9b8388:
    ori	$a3,$a3,0x841
    sw	$a3,0($s8)
    # Line 1045
    sw	$zero,0($s8)
    # Line 1046
    lw	$a2,-22820($s7)
    sw	$a2,0($s8)
.L0d9b839c:
    beqz	$s2,.L0d9b9030
    # Line 1050
    lw	$a5,92($sp)
    lw	$a2,100($sp)
    lw	$a4,31600($s4)
    lw	$t0,104($sp)
    lw	$a7,108($sp)
    andi	$a4,$a4,0x2
    lw	$t1,112($sp)
    beqz	$a4,.L0d9b8ae0
    lw	$a6,116($sp)
    # Line 1193
    sw	$a2,348($sp)
    sw	$a5,340($sp)
    # Line 1192
    sw	$a6,332($sp)
    sw	$t1,328($sp)
    # Line 1191
    lw	$s1,88($sp)
    lw	$t2,96($sp)
    # Line 1193
    ld	$t3,672($sp)
    # Line 1192
    sw	$a7,324($sp)
    # Line 1191
    subu	$a0,$t2,$s1
    # Line 1192
    sw	$t0,320($sp)
    # Line 1193
    slt	$t3,$a0,$t3
    sw	$t2,344($sp)
    sw	$s1,336($sp)
    bnez	$t3,.L0d9b8ca0
    # Line 1191
    move	$s5,$a0
    # Line 1200
    li	$t8,3
    beq	$s3,$t8,.L0d9b8bdc
    li	$t9,1
    beq	$s3,$t9,.L0d9b8bdc
    nop
    # Line 1221
    blez	$a0,.L0d9b84c4
    # Line 1220
    move	$t2,$s1
    ld	$s1,536($sp)
.L0d9b8420:
    # Line 1221
    addu	$a3,$t2,$s1
    ld	$v0,672($sp)
    mtc1	$a3,$f16
    mtc1	$v0,$f17
    cvt.d.w	$f16,$f16
    cvt.d.w	$f17,$f17
    div.d	$f16,$f16,$f17
    trunc.w.d	$f16,$f16
    mfc1	$t1,$f16
    mult	$t1,$v0
    mflo	$a7
    # Line 1229
    li	$a6,1
    # Line 1227
    sw	$t0,320($sp)
    # Line 1221
    subu	$a3,$a3,$a7
    # Line 1229
    move	$a5,$s2
    # Line 1225
    sw	$t2,336($sp)
    # Line 1221
    subu	$a3,$v0,$a3
    # Line 1224
    move	$ra,$s5
    # Line 1221
    # lw $t9, -32720($gp) # &sub_0d9b0000
    slt	$v1,$s5,$a3
    # Line 1229
    move	$a4,$s3
    movz	$ra,$a3,$v1
    sd	$ra,600($sp)
    addiu	$a2,$sp,336
    # Line 1228
    addu	$at,$ra,$t0
    sd	$at,616($sp)
    # Line 1221
    addiu	$t9,$t9,29632
    # Line 1226
    addu	$ra,$ra,$t2
    sd	$ra,608($sp)
    # Line 1229
    addiu	$a1,$sp,320
    # Line 1221
    teq	$v0,$zero,0x7
    # Line 1226
    sw	$ra,344($sp)
    # Line 1229
    addiu	$a0,$sp,24
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    # Line 1228
    sw	$at,328($sp)
    # Line 1230
    ld	$t2,600($sp)
    subu	$s5,$s5,$t2
    # Line 1232
    ld	$t0,616($sp)
    bgtz	$s5,.L0d9b8420
    # Line 1231
    ld	$t2,608($sp)
.L0d9b84c4:
    # Line 1239
    lw	$t8,-26892($s7)
.L0d9b84c8:
    sw	$t8,-24072($s7)
    lw	$t3,-24072($s7)
    lw	$t9,-24072($s7)
    lui	$s8,0x1
    lui	$t8,0x2900
    srl	$t9,$t9,0xa
    andi	$t3,$t3,0x3ff
    sll	$t9,$t9,0x17
    ori	$t8,$t8,0x8000
    or	$t3,$t3,$t9
    or	$t3,$t3,$t8
    sw	$t3,0($s8)
    sw	$zero,-26892($s7)
    # Line 1248
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
.L0d9b8500:
    lw	$a2,20($s6)
    move	$a0,$s4
    lw	$a1,16($s6)
    jal	__glOdysseyClosePMObjReference
    move	$a3,$a2
    andi	$t9,$v0,0xff
    beqz	$t9,.L0d9b9008
    # Line 1263
    nop	# was lw $t9, -30960($gp) # &__glOdysseyClosePMObjWriteReference
    lw	$a2,20($s0)
    move	$a0,$s4
    jal	__glOdysseyClosePMObjWriteReference
    lw	$a1,16($s0)
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d9b9434
    # Line 1272
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1273
    beqz	$s2,.L0d9b8690
    # Line 1317
    ld	$t2,576($sp)
    # Line 1284
    lw	$a2,184($sp)
    sw	$a2,-26964($s7)
    addiu	$at,$sp,184
    lw	$a1,16($at)
    sw	$a1,-26948($s7)
    lw	$a0,12($at)
    sw	$a0,-26952($s7)
    lw	$v1,8($at)
    lw	$v0,-26576($s7)
    lui	$s5,0x1
    sw	$v1,-26956($s7)
    li	$a0,250
    ori	$s1,$s5,0x46
    lw	$at,4($at)
    ori	$s5,$s5,0x443
    beqz	$v0,.L0d9b859c
    sw	$at,-26960($s7)
    # Line 1285
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    sw	$a0,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
.L0d9b859c:
    # Line 1295
    lw	$t0,272($sp)
    # Line 1289
    lw	$ra,248($sp)
    # Line 1285
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    lui	$a3,0x1
    sw	$s1,0($s8)
    ori	$a3,$a3,0x1453
    sw	$a3,0($s8)
    lw	$a2,-26964($s7)
    sw	$a2,0($s8)
    lw	$a1,-26960($s7)
    sw	$a1,0($s8)
    lw	$v1,-26956($s7)
    sw	$v1,0($s8)
    lw	$v0,-26952($s7)
    sw	$v0,0($s8)
    lw	$at,-26948($s7)
    sw	$at,0($s8)
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    sw	$a0,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    # Line 1289
    sw	$ra,-26876($s7)
    lw	$t9,252($sp)
    sw	$t9,-26872($s7)
    # Line 1294
    lw	$t8,232($sp)
    sw	$t8,-26980($s7)
    lw	$t3,236($sp)
    sw	$t3,-26976($s7)
    lw	$t2,240($sp)
    sw	$t2,-26972($s7)
    lw	$t1,244($sp)
    sw	$t1,-26968($s7)
    # Line 1295
    sw	$t0,31776($s4)
    # Line 1296
    lw	$a7,276($sp)
    sw	$a7,31780($s4)
    # Line 1297
    lw	$a6,224($sp)
    sw	$a6,31740($s4)
    # Line 1298
    lui	$a5,0x20
    lw	$a4,26976($s7)
    ori	$a5,$a5,0x12
    or	$a4,$a4,$a5
    sw	$a4,26976($s7)
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 1306
    lbu	$a3,8($s0)
    beqz	$a3,.L0d9b866c
    ld	$a4,560($sp)
    li	$a5,1
    beq	$a4,$a5,.L0d9b8e3c
    # Line 1309
    lw	$a4,216($sp)
.L0d9b866c:
    # Line 1314
    lbu	$a6,10($s0)
    beqz	$a6,.L0d9b868c
    # Line 1318
    lw	$t1,220($sp)
    sw	$t1,31836($s4)
    # Line 1319
    lw	$t0,26976($s7)
    ori	$t0,$t0,0x80
    sw	$t0,26976($s7)
    sw	$a7,4120($zero)
.L0d9b868c:
    # Line 1317
    ld	$t2,576($sp)
.L0d9b8690:
    beqz	$t2,.L0d9b82e4
    nop
    lw	$t8,-26576($s7)
    lui	$s5,0x1
    li	$a0,250
    ori	$s1,$s5,0x46
    beqz	$t8,.L0d9b86c4
    ori	$s5,$s5,0x443
    # Line 1325
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    sw	$a0,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
.L0d9b86c4:
    ldc1	$f20,744($sp)
    # Line 1332
    ld	$gp,656($sp)
    ld	$s0,632($sp)
    ld	$s2,664($sp)
    ld	$s3,648($sp)
    ld	$s4,640($sp)
    ld	$s6,624($sp)
    # Line 1326
    lui	$at,0x9000
    ori	$at,$at,0x8116
    sw	$at,0($s8)
    # Line 1327
    sw	$s5,0($s8)
    li	$t9,150
    sw	$t9,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    # Line 1328
    sw	$s1,0($s8)
    # Line 1329
    sw	$s1,0($s8)
    # Line 1330
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    sw	$a0,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    # Line 1332
    ld	$s1,528($sp)
    ld	$ra,752($sp)
    ld	$s5,520($sp)
    ld	$s7,512($sp)
    ld	$s8,504($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L0d9b8738:
    # Line 463
    move	$s3,$zero
    b	.L0d9b7a00
    sd	$zero,576($sp)
.L0d9b8744:
    b	.L0d9b7a00
    sd	$zero,576($sp)
.L0d9b874c:
    # Line 513
    lw	$v1,72($sp)
    lw	$v0,52($s0)
    bne	$v0,$v1,.L0d9b8ac4
    sd	$s3,536($sp)
    lw	$a1,4($s6)
    lw	$a0,4($s0)
    bne	$a0,$a1,.L0d9b8cd0
    sd	$s7,512($sp)
    lbu	$a2,10($s0)
    beqz	$a2,.L0d9b9210
    addu	$s7,$s8,$s4
    lw	$a3,7360($s7)
    lw	$a4,7572($s7)
    bne	$a3,$a4,.L0d9b7a4c
    # Line 519
    li	$s3,1
    b	.L0d9b7a50
    li	$s3,1
.L0d9b8790:
    # Line 607
    li	$a5,1
    sd	$a5,592($sp)
    li	$a2,1
    b	.L0d9b7b38
    sd	$a1,544($sp)
.L0d9b87a4:
    # Line 655
    li	$a6,1
    b	.L0d9b7bac
    sd	$a6,584($sp)
.L0d9b87b0:
    # Line 423
    lw	$a7,1792($s4)
    andi	$a7,$a7,0x2
    beqz	$a7,.L0d9b78cc
    # Line 427
    li	$t0,48
    sd	$t0,672($sp)
    sdc1	$f20,744($sp)
    sd	$a4,560($sp)
    sd	$a5,552($sp)
    b	.L0d9b78e4
    sd	$ra,752($sp)
.L0d9b87d8:
    # Line 872
    andi	$t1,$a0,0xff
    bnez	$t1,.L0d9b8090
    ld	$t2,544($sp)
    bnez	$t2,.L0d9b8090
    ld	$t3,480($sp)
    ld	$t8,464($sp)
    ld	$t9,472($sp)
    ld	$ra,488($sp)
    ld	$at,448($sp)
    ld	$v0,440($sp)
    ld	$v1,456($sp)
    ld	$a0,496($sp)
    ld	$a1,432($sp)
    ld	$a3,424($sp)
    ld	$a4,416($sp)
    sw	$a4,248($sp)
    sw	$a3,252($sp)
    sw	$a1,232($sp)
    sw	$a0,236($sp)
    sw	$v1,240($sp)
    sw	$v0,244($sp)
    sw	$at,224($sp)
    sw	$ra,220($sp)
    sw	$t9,216($sp)
    sw	$t8,212($sp)
    sw	$t3,208($sp)
.L0d9b8840:
    # Line 878
    b	.L0d9b8138
    move	$s3,$zero
.L0d9b8848:
    # Line 872
    bne	$s3,$a5,.L0d9b8098
    ld	$a6,544($sp)
    bnez	$a6,.L0d9b8098
    ld	$a7,480($sp)
    ld	$t0,464($sp)
    ld	$t1,472($sp)
    ld	$t2,488($sp)
    ld	$t3,448($sp)
    ld	$t8,440($sp)
    ld	$t9,456($sp)
    ld	$ra,496($sp)
    ld	$at,432($sp)
    ld	$v0,424($sp)
    ld	$v1,416($sp)
    sw	$v1,248($sp)
    sw	$v0,252($sp)
    sw	$at,232($sp)
    sw	$ra,236($sp)
    sw	$t9,240($sp)
    sw	$t8,244($sp)
    sw	$t3,224($sp)
    sw	$t2,220($sp)
    sw	$t1,216($sp)
    sw	$t0,212($sp)
    b	.L0d9b8840
    sw	$a7,208($sp)
.L0d9b88b0:
    # Line 881
    bnez	$a3,.L0d9b80a0
    ld	$a4,544($sp)
    bne	$s3,$a4,.L0d9b80a0
    ld	$a5,480($sp)
    ld	$a6,464($sp)
    ld	$a7,472($sp)
    ld	$t0,488($sp)
    ld	$t1,448($sp)
    ld	$t2,440($sp)
    ld	$t3,456($sp)
    ld	$t8,496($sp)
    ld	$t9,432($sp)
    ld	$ra,424($sp)
    ld	$at,416($sp)
    sw	$at,248($sp)
    sw	$ra,252($sp)
    sw	$t9,232($sp)
    sw	$t8,236($sp)
    sw	$t3,240($sp)
    sw	$t2,244($sp)
    sw	$t1,224($sp)
    sw	$t0,220($sp)
    sw	$a7,216($sp)
    sw	$a6,212($sp)
    sw	$a5,208($sp)
.L0d9b8914:
    # Line 888
    b	.L0d9b8138
    li	$s3,1
.L0d9b891c:
    # Line 881
    bne	$s3,$v0,.L0d9b80a8
    ld	$v1,544($sp)
    bne	$s3,$v1,.L0d9b80a8
    nop
    ld	$a0,480($sp)
    ld	$a1,464($sp)
    ld	$a3,472($sp)
    ld	$a4,488($sp)
    ld	$a5,448($sp)
    ld	$a6,440($sp)
    ld	$a7,456($sp)
    ld	$t0,496($sp)
    ld	$t1,432($sp)
    ld	$t2,424($sp)
    ld	$t3,416($sp)
    sw	$t3,248($sp)
    sw	$t2,252($sp)
    sw	$t1,232($sp)
    sw	$t0,236($sp)
    sw	$a7,240($sp)
    sw	$a6,244($sp)
    sw	$a5,224($sp)
    sw	$a4,220($sp)
    sw	$a3,216($sp)
    sw	$a1,212($sp)
    b	.L0d9b8914
    sw	$a0,208($sp)
.L0d9b8988:
    # Line 891
    bne	$s3,$t8,.L0d9b80b0
    ld	$t9,544($sp)
    bnez	$t9,.L0d9b80b0
    ld	$ra,480($sp)
    ld	$at,464($sp)
    ld	$v0,472($sp)
    ld	$v1,488($sp)
    ld	$a0,448($sp)
    ld	$a1,440($sp)
    ld	$a3,456($sp)
    ld	$a4,496($sp)
    ld	$a5,432($sp)
    ld	$a6,424($sp)
    ld	$a7,416($sp)
    sw	$a7,248($sp)
    sw	$a6,252($sp)
    sw	$a5,232($sp)
    sw	$a4,236($sp)
    sw	$a3,240($sp)
    sw	$a1,244($sp)
    sw	$a0,224($sp)
    sw	$v1,220($sp)
    sw	$v0,216($sp)
    sw	$at,212($sp)
    sw	$ra,208($sp)
.L0d9b89ec:
    # Line 898
    b	.L0d9b8138
    li	$s3,2
.L0d9b89f4:
    # Line 891
    bnez	$t0,.L0d9b80b8
    ld	$t1,544($sp)
    bnez	$t1,.L0d9b80b8
    ld	$t2,480($sp)
    ld	$t3,464($sp)
    ld	$t8,472($sp)
    ld	$t9,488($sp)
    ld	$ra,448($sp)
    ld	$at,440($sp)
    ld	$v0,456($sp)
    ld	$v1,496($sp)
    ld	$a0,432($sp)
    ld	$a1,424($sp)
    ld	$a3,416($sp)
    sw	$a3,248($sp)
    sw	$a1,252($sp)
    sw	$a0,232($sp)
    sw	$v1,236($sp)
    sw	$v0,240($sp)
    sw	$at,244($sp)
    sw	$ra,224($sp)
    sw	$t9,220($sp)
    sw	$t8,216($sp)
    sw	$t3,212($sp)
    b	.L0d9b89ec
    sw	$t2,208($sp)
.L0d9b8a5c:
    # Line 901
    bne	$s3,$a4,.L0d9b80c0
    ld	$a5,544($sp)
    bne	$s3,$a5,.L0d9b80c0
    ld	$a6,480($sp)
    ld	$a7,464($sp)
    ld	$t0,472($sp)
    ld	$t1,488($sp)
    ld	$t2,448($sp)
    ld	$t3,440($sp)
    ld	$t8,456($sp)
    ld	$t9,496($sp)
    ld	$ra,432($sp)
    ld	$at,424($sp)
    ld	$v0,416($sp)
    sw	$v0,248($sp)
    sw	$at,252($sp)
    sw	$ra,232($sp)
    sw	$t9,236($sp)
    sw	$t8,240($sp)
    sw	$t3,244($sp)
    sw	$t2,224($sp)
    sw	$t1,220($sp)
    sw	$t0,216($sp)
    sw	$a7,212($sp)
    b	.L0d9b8134
    sw	$a6,208($sp)
.L0d9b8ac4:
    sd	$s7,512($sp)
    # Line 513
    b	.L0d9b7a48
    addu	$s7,$s8,$s4
.L0d9b8ad0:
    # Line 692
    jal	__glSetError
    li	$a0,1285
    b	.L0d9b82e8
    ld	$s8,504($sp)
.L0d9b8ae0:
    # Line 1076
    move	$v0,$a6
    move	$v1,$a6
    slt	$a0,$a7,$a6
    # Line 1050
    slt	$a4,$a6,$a7
    # Line 1076
    movn	$v1,$a7,$a0
    movn	$v0,$a7,$a4
    li	$a3,32
    subu	$v0,$v0,$v1
    mtc1	$a3,$f18
    addiu	$v0,$v0,31
    mtc1	$v0,$f17
    cvt.d.w	$f18,$f18
    cvt.d.w	$f17,$f17
    div.d	$f17,$f17,$f18
    # Line 1075
    addi	$at,$zero,-32
    # Line 1074
    slt	$ra,$a2,$a5
    # Line 1075
    move	$t9,$a3
    movz	$t9,$at,$ra
    # Line 1077
    move	$a1,$t1
    slt	$t8,$t1,$t0
    slt	$t3,$t0,$t1
    movn	$a1,$t0,$t8
    # Line 1074
    addi	$t2,$zero,-32
    # Line 1077
    movz	$t0,$t1,$t3
    # Line 1076
    teq	$a3,$zero,0x7
    # Line 1077
    subu	$a1,$a1,$t0
    movz	$a3,$t2,$a4
    addiu	$a4,$a1,31
    sd	$a3,720($sp)
    addiu	$a1,$a1,62
    slt	$a3,$a4,$zero
    # Line 1076
    trunc.w.d	$f17,$f17
    sd	$t9,728($sp)
    # Line 1077
    li	$v1,3
    movz	$a1,$a4,$a3
    sra	$a1,$a1,0x5
    sd	$a1,712($sp)
    # Line 1076
    mfc1	$a0,$f17
    # Line 1077
    beq	$s3,$v1,.L0d9b9060
    sd	$a0,680($sp)
    # Line 1081
    li	$a1,2
    beq	$s3,$a1,.L0d9b9218
    # Line 1107
    ld	$t1,680($sp)
    # Line 1108
    li	$a2,1
    beq	$s3,$a2,.L0d9b93f4
    # Line 1159
    ld	$a3,680($sp)
    move	$s8,$a7
    blez	$a3,.L0d9b84c4
    sd	$a5,736($sp)
    sd	$zero,688($sp)
    sd	$s0,792($sp)
    sd	$s4,800($sp)
    sd	$s7,776($sp)
    ld	$s7,728($sp)
    sd	$s6,784($sp)
    ld	$s6,720($sp)
    la	$s5,sub_0d9b0000
    sd	$s3,696($sp)
    subu	$s6,$a7,$s6
    subu	$s7,$a5,$s7
    sd	$s2,704($sp)
    b	.L0d9b8d18
    addiu	$s5,$s5,29632
.L0d9b8bdc:
    # Line 1203
    move	$t0,$t1
    blez	$a0,.L0d9b84c4
    sd	$s5,768($sp)
    la	$s5,sub_0d9b0000
    ld	$s1,768($sp)
    addiu	$s5,$s5,29632
.L0d9b8bf4:
    # Line 1208
    ld	$t9,672($sp)
    ld	$t8,536($sp)
    mtc1	$t9,$f19
    addu	$t8,$t2,$t8
    mtc1	$t8,$f18
    cvt.d.w	$f19,$f19
    cvt.d.w	$f18,$f18
    div.d	$f18,$f18,$f19
    trunc.w.d	$f18,$f18
    mfc1	$at,$f18
    mult	$at,$t9
    mflo	$ra
    subu	$t8,$t8,$ra
    sltiu	$ra,$t8,1
    # Line 1213
    li	$a6,1
    # Line 1212
    sw	$t0,328($sp)
    # Line 1208
    movn	$t8,$t9,$ra
    # Line 1213
    move	$a5,$s2
    # Line 1210
    sw	$t2,344($sp)
    # Line 1208
    slt	$at,$s1,$t8
    # Line 1213
    move	$a4,$s3
    # Line 1208
    movn	$t8,$s1,$at
    sd	$t8,400($sp)
    # Line 1211
    subu	$ra,$t0,$t8
    # Line 1209
    subu	$t8,$t2,$t8
    sd	$t8,392($sp)
    # Line 1208
    teq	$t9,$zero,0x7
    # Line 1213
    move	$t9,$s5
    # Line 1211
    sd	$ra,408($sp)
    # Line 1213
    addiu	$a2,$sp,336
    addiu	$a1,$sp,320
    # Line 1211
    sw	$ra,320($sp)
    # Line 1213
    addiu	$a0,$sp,24
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    # Line 1209
    sw	$t8,336($sp)
    # Line 1214
    ld	$t9,400($sp)
    subu	$s1,$s1,$t9
    # Line 1215
    ld	$t2,392($sp)
    # Line 1216
    bgtz	$s1,.L0d9b8bf4
    ld	$t0,408($sp)
    b	.L0d9b84c8
    # Line 1239
    lw	$t8,-26892($s7)
.L0d9b8ca0:
    # Line 1196
    # lw $t9, -32720($gp) # &sub_0d9b0000
    li	$a6,1
    move	$a5,$s2
    move	$a4,$s3
    addiu	$t9,$t9,29632
    addiu	$a2,$sp,336
    addiu	$a1,$sp,320
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$sp,24
    b	.L0d9b84c8
    # Line 1239
    lw	$t8,-26892($s7)
.L0d9b8cd0:
    b	.L0d9b7a48
    # Line 513
    addu	$s7,$s8,$s4
    nop
    nop
.L0d9b8ce0:
    # Line 1160
    ld	$ra,720($sp)
    ld	$v1,728($sp)
    ld	$at,688($sp)
    ld	$v0,680($sp)
    addiu	$at,$at,1
    sd	$at,688($sp)
    subu	$s7,$s7,$v1
    slt	$at,$at,$v0
    ld	$v0,736($sp)
    subu	$s6,$s6,$ra
    subu	$s8,$s8,$ra
    subu	$v0,$v0,$v1
    beqz	$at,.L0d9b8e24
    sd	$v0,736($sp)
.L0d9b8d18:
    # Line 1161
    ld	$v1,712($sp)
    lw	$t0,104($sp)
    move	$s4,$zero
    lw	$s1,88($sp)
    blez	$v1,.L0d9b8ce0
    move	$s0,$t0
    addiu	$s2,$t0,32
    b	.L0d9b9650
    addiu	$s3,$s1,32
    nop
.L0d9b8d40:
    # Line 1177
    sw	$a0,316($sp)
.L0d9b8d44:
    # Line 1180
    li	$a6,1
    move	$t9,$s5
    ld	$a5,704($sp)
    addiu	$a2,$sp,288
    addiu	$a1,$sp,304
    ld	$a4,696($sp)
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$sp,24
    # Line 1162
    addiu	$s1,$s1,32
    ld	$a2,712($sp)
    addiu	$s2,$s2,32
    addiu	$s4,$s4,1
    addiu	$s0,$s0,32
    addiu	$s3,$s3,32
    beq	$a2,$s4,.L0d9b8ce0
    # Line 1164
    move	$a3,$s3
    # Line 1165
    sw	$s7,300($sp)
.L0d9b8d8c:
    # Line 1163
    sw	$s1,288($sp)
    # Line 1166
    lw	$a2,100($sp)
    # Line 1163
    lw	$a6,96($sp)
    # Line 1173
    move	$t2,$s2
    # Line 1166
    ld	$a4,728($sp)
    # Line 1172
    lw	$t9,112($sp)
    # Line 1168
    move	$t0,$a2
    # Line 1163
    slt	$a5,$s3,$a6
    # Line 1168
    slt	$t1,$a2,$s7
    movz	$a3,$a6,$a5
    # Line 1175
    lw	$a6,116($sp)
    # Line 1166
    ld	$a7,736($sp)
    # Line 1172
    slt	$t8,$s2,$t9
    # Line 1168
    movn	$t0,$s7,$t1
    # Line 1166
    sw	$a7,292($sp)
    movz	$t2,$t9,$t8
    # Line 1177
    slt	$a1,$a6,$s6
    # Line 1164
    sw	$a3,296($sp)
    # Line 1166
    blez	$a4,.L0d9b8e10
    # Line 1177
    move	$a0,$a6
    # Line 1168
    sw	$t0,300($sp)
.L0d9b8de0:
    # Line 1175
    sw	$s8,308($sp)
    ld	$t3,720($sp)
    # Line 1174
    sw	$s6,316($sp)
    # Line 1177
    movn	$a0,$s6,$a1
    # Line 1172
    sw	$s0,304($sp)
    # Line 1175
    bgtz	$t3,.L0d9b8d40
    # Line 1173
    sw	$t2,312($sp)
    # Line 1179
    move	$ra,$a6
    slt	$at,$s6,$a6
    movn	$ra,$s6,$at
    b	.L0d9b8d44
    sw	$ra,316($sp)
.L0d9b8e10:
    # Line 1170
    move	$v0,$a2
    slt	$v1,$s7,$a2
    movn	$v0,$s7,$v1
    b	.L0d9b8de0
    sw	$v0,300($sp)
.L0d9b8e24:
    ld	$s2,704($sp)
    ld	$s4,800($sp)
    ld	$s0,792($sp)
    ld	$s6,784($sp)
    b	.L0d9b84c4
    ld	$s7,776($sp)
.L0d9b8e3c:
    # Line 1309
    sw	$a4,31796($s4)
    # Line 1310
    lw	$a3,212($sp)
    sw	$a3,31800($s4)
    # Line 1311
    lw	$a2,208($sp)
    sw	$a2,31804($s4)
    # Line 1312
    lw	$a1,220($sp)
    sw	$a1,31836($s4)
    # Line 1314
    lw	$a0,26976($s7)
    ori	$a0,$a0,0x81
    sw	$a0,26976($s7)
    b	.L0d9b868c
    sw	$a7,4120($zero)
.L0d9b8e6c:
    # Line 492
    jal	sub_0d9b0000
    li	$a0,1282
    sd	$s7,512($sp)
    b	.L0d9b82e4
    sd	$s8,504($sp)
.L0d9b8e80:
    # Line 945
    lw	$a5,31776($s4)
    lw	$t0,26044($s7)
    bne	$a5,$t0,.L0d9b8ea0
    nop
    lw	$a6,31780($s4)
    lw	$t1,26048($s7)
    beq	$a6,$t1,.L0d9b8f18
    # Line 976
    addiu	$a5,$s4,31836
.L0d9b8ea0:
    # Line 945
    sw	$t0,31776($s4)
    lw	$t1,26048($s7)
    sw	$t1,31780($s4)
    lw	$a7,-26576($s7)
    beqz	$a7,.L0d9b8ed4
    lui	$ra,0x1
    sw	$zero,-26576($s7)
    sw	$s5,0($s8)
    li	$t2,250
    sw	$t2,0($s8)
    sw	$s1,0($s8)
    sw	$s1,0($s8)
    lui	$ra,0x1
.L0d9b8ed4:
    ori	$ra,$ra,0x81d
    sw	$ra,0($s8)
    lw	$t9,31776($s4)
    sw	$t9,0($s8)
    lw	$t8,31780($s4)
    sw	$t8,0($s8)
    lw	$t3,31600($s4)
    dsll32	$t3,$t3,0xb
    bgez	$t3,.L0d9b95e0
    nop
.L0d9b8efc:
    lw	$at,26980($s7)
    ori	$at,$at,0x2000
    sw	$at,26980($s7)
    sw	$a2,4120($zero)
    lw	$t1,26048($s7)
    lw	$t0,26044($s7)
    # Line 976
    addiu	$a5,$s4,31836
.L0d9b8f18:
    addiu	$a4,$s4,31804
    addiu	$a3,$s4,31800
    # Line 972
    lw	$a7,92($sp)
    # Line 951
    srl	$ra,$t0,0xc
    # Line 952
    andi	$t0,$t0,0xfff
    # Line 972
    lw	$t8,100($sp)
    # Line 951
    andi	$ra,$ra,0xfff
    # Line 953
    srl	$v1,$t1,0xc
    # Line 972
    move	$s5,$t8
    slt	$t9,$a7,$t8
    # Line 967
    ld	$a6,536($sp)
    # Line 953
    andi	$v1,$v1,0xfff
    # Line 972
    movn	$s5,$a7,$t9
    # Line 973
    slt	$t3,$t8,$a7
    # Line 972
    slt	$at,$v1,$s5
    movz	$s5,$v1,$at
    # Line 967
    subu	$at,$ra,$a6
    # Line 968
    subu	$a6,$t0,$a6
    # Line 973
    movz	$a7,$t8,$t3
    ld	$v1,576($sp)
    # Line 968
    lw	$t2,96($sp)
    # Line 954
    andi	$t3,$t1,0xfff
    # Line 973
    addiu	$a7,$a7,-1
    # Line 968
    lw	$v0,88($sp)
    movz	$a6,$t0,$v1
    # Line 973
    slt	$t1,$a7,$t3
    # Line 968
    move	$s1,$t2
    movz	$a7,$t3,$t1
    # Line 976
    # lw $t9, -32716($gp) # &sub_0d9c0000
    movz	$at,$ra,$v1
    # Line 968
    slt	$ra,$v0,$t2
    # Line 971
    slt	$t1,$t2,$v0
    # Line 968
    movn	$s1,$v0,$ra
    # Line 976
    addiu	$t9,$t9,-256
    # Line 971
    movz	$v0,$t2,$t1
    # Line 968
    slt	$ra,$at,$s1
    # Line 971
    addiu	$v0,$v0,-1
    # Line 976
    ld	$a0,384($sp)
    movz	$s1,$at,$ra
    # Line 971
    slt	$v1,$v0,$a6
    # Line 976
    addiu	$a2,$s4,31796
    # Line 974
    sd	$a7,368($sp)
    movz	$v0,$a6,$v1
    # Line 976
    addiu	$a1,$s4,31740
    bal __glOdysseyImageCalcXferReadParams
    sd	$v0,376($sp)
    # Line 983
    lw	$a4,26976($s7)
    lui	$a5,0x20
    ori	$a5,$a5,0x83
    or	$a4,$a4,$a5
    sw	$a4,26976($s7)
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a3,31740($s4)
    sll	$a3,$a3,0xf
    ld	$a0,368($sp)
    bltz	$a3,.L0d9b95c0
    ld	$a1,376($sp)
    b	.L0d9b81b4
    # Line 990
    mtc1	$zero,$f20
.L0d9b9008:
    # Line 1258
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9b82e8
    ld	$s8,504($sp)
.L0d9b901c:
    # Line 715
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9b82e8
    ld	$s8,504($sp)
.L0d9b9030:
    # Line 1050
    # lw $t9, -32720($gp) # &sub_0d9b0000
    move	$a6,$zero
    move	$a5,$s2
    move	$a4,$s3
    addiu	$t9,$t9,29632
    addiu	$a2,$sp,88
    addiu	$a1,$sp,104
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$sp,24
    b	.L0d9b8500
    # Line 1248
    nop	# was lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
.L0d9b9060:
    # Line 1080
    ld	$ra,680($sp)
    move	$s8,$a6
    blez	$ra,.L0d9b84c4
    sd	$a2,736($sp)
    sd	$zero,688($sp)
    sd	$s7,776($sp)
    sd	$s6,784($sp)
    ld	$a0,728($sp)
    ld	$a1,720($sp)
    la	$s5,sub_0d9b0000
    sd	$s0,792($sp)
    addu	$a1,$a1,$a6
    addu	$a0,$a0,$a2
    sd	$s4,800($sp)
    b	.L0d9b90d8
    addiu	$s5,$s5,29632
.L0d9b90a0:
    # Line 1081
    ld	$a2,720($sp)
    ld	$a5,728($sp)
    ld	$a3,688($sp)
    ld	$a4,680($sp)
    addiu	$a3,$a3,1
    sd	$a3,688($sp)
    addu	$a0,$a5,$a0
    slt	$a3,$a3,$a4
    ld	$a4,736($sp)
    addu	$a1,$a2,$a1
    addu	$s8,$a2,$s8
    addu	$a4,$a5,$a4
    beqz	$a3,.L0d9b91fc
    sd	$a4,736($sp)
.L0d9b90d8:
    # Line 1082
    lw	$t1,112($sp)
    ld	$a5,712($sp)
    move	$s4,$zero
    lw	$t2,96($sp)
    move	$s0,$t1
    addiu	$s6,$t1,-32
    blez	$a5,.L0d9b90a0
    move	$s1,$t2
    b	.L0d9b965c
    addiu	$s7,$t2,-32
.L0d9b9100:
    # Line 1098
    slt	$t0,$a1,$a7
    sd	$a1,360($sp)
    sd	$a0,352($sp)
    move	$a6,$a7
    movn	$a6,$a1,$t0
    sw	$a6,308($sp)
.L0d9b9118:
    # Line 1102
    li	$a6,1
    move	$a5,$s2
    move	$a4,$s3
    move	$t9,$s5
    addiu	$a2,$sp,288
    addiu	$a1,$sp,304
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$sp,24
    # Line 1083
    addiu	$s1,$s1,-32
    ld	$t1,712($sp)
    addiu	$s6,$s6,-32
    addiu	$s4,$s4,1
    ld	$a0,352($sp)
    addiu	$s0,$s0,-32
    addiu	$s7,$s7,-32
    ld	$a1,360($sp)
    beq	$t1,$s4,.L0d9b90a0
    # Line 1084
    move	$t2,$s7
    # Line 1087
    sw	$a0,292($sp)
.L0d9b9168:
    # Line 1085
    sw	$s1,296($sp)
    # Line 1087
    lw	$a5,92($sp)
    # Line 1082
    lw	$t9,88($sp)
    # Line 1087
    ld	$t3,728($sp)
    # Line 1089
    move	$at,$a5
    slt	$v0,$a0,$a5
    # Line 1086
    ld	$ra,736($sp)
    # Line 1082
    slt	$t8,$t9,$s7
    # Line 1089
    movn	$at,$a0,$v0
    # Line 1086
    sw	$ra,300($sp)
    movz	$t2,$t9,$t8
    # Line 1094
    move	$v1,$s6
    # Line 1087
    blez	$t3,.L0d9b91e8
    # Line 1084
    sw	$t2,288($sp)
    # Line 1089
    sw	$at,292($sp)
.L0d9b91a4:
    # Line 1096
    sw	$a1,308($sp)
    # Line 1095
    sw	$s8,316($sp)
    # Line 1093
    lw	$a4,104($sp)
    # Line 1096
    ld	$a2,720($sp)
    lw	$a7,108($sp)
    # Line 1093
    slt	$a3,$a4,$s6
    sw	$s0,312($sp)
    movz	$v1,$a4,$a3
    # Line 1096
    bgtz	$a2,.L0d9b9100
    # Line 1094
    sw	$v1,304($sp)
    sd	$a1,360($sp)
    # Line 1100
    move	$a5,$a7
    slt	$a6,$a7,$a1
    sd	$a0,352($sp)
    movn	$a5,$a1,$a6
    b	.L0d9b9118
    sw	$a5,308($sp)
.L0d9b91e8:
    # Line 1091
    move	$a7,$a5
    slt	$t0,$a5,$a0
    movn	$a7,$a0,$t0
    b	.L0d9b91a4
    sw	$a7,292($sp)
.L0d9b91fc:
    ld	$s4,800($sp)
    ld	$s0,792($sp)
    ld	$s6,784($sp)
    b	.L0d9b84c4
    ld	$s7,776($sp)
.L0d9b9210:
    # Line 519
    b	.L0d9b7a50
    li	$s3,1
.L0d9b9218:
    # Line 1107
    move	$s8,$a6
    blez	$t1,.L0d9b84c4
    sd	$a2,736($sp)
    sd	$zero,688($sp)
    sd	$s0,792($sp)
    sd	$s4,800($sp)
    sd	$s7,776($sp)
    sd	$s6,784($sp)
    sd	$s2,704($sp)
    la	$s5,sub_0d9b0000
    sd	$s3,696($sp)
    ld	$t9,720($sp)
    ld	$t8,728($sp)
    addu	$t9,$t9,$a6
    sd	$t9,360($sp)
    addu	$t8,$t8,$a2
    sd	$t8,352($sp)
    ld	$s6,696($sp)
    addiu	$s5,$s5,29632
    b	.L0d9b92b4
    ld	$s7,704($sp)
.L0d9b926c:
    # Line 1108
    ld	$ra,720($sp)
    ld	$v1,352($sp)
    ld	$a0,728($sp)
    ld	$v0,680($sp)
    addu	$v1,$a0,$v1
    sd	$v1,352($sp)
    ld	$at,688($sp)
    ld	$v1,736($sp)
    addiu	$at,$at,1
    sd	$at,688($sp)
    slt	$at,$at,$v0
    ld	$v0,360($sp)
    addu	$s8,$ra,$s8
    addu	$v1,$a0,$v1
    sd	$v1,736($sp)
    addu	$v0,$ra,$v0
    beqz	$at,.L0d9b93dc
    sd	$v0,360($sp)
.L0d9b92b4:
    # Line 1109
    ld	$a0,712($sp)
    lw	$t0,104($sp)
    move	$s4,$zero
    lw	$s1,88($sp)
    blez	$a0,.L0d9b926c
    move	$s0,$t0
    addiu	$s2,$t0,32
    b	.L0d9b9668
    addiu	$s3,$s1,32
    nop
    nop
.L0d9b92e0:
    # Line 1116
    ld	$a3,352($sp)
    slt	$a2,$a3,$a5
    movn	$a1,$a3,$a2
    sw	$a1,292($sp)
.L0d9b92f0:
    # Line 1123
    lw	$a7,108($sp)
    # Line 1122
    sw	$s8,316($sp)
    # Line 1123
    ld	$a5,720($sp)
    # Line 1120
    sw	$s0,304($sp)
    # Line 1121
    move	$a4,$s2
    # Line 1123
    sw	$t1,308($sp)
    movz	$a4,$t0,$a6
    # Line 1125
    move	$t2,$a7
    # Line 1123
    blez	$a5,.L0d9b93c4
    # Line 1121
    sw	$a4,312($sp)
    # Line 1125
    ld	$t8,360($sp)
    slt	$t3,$t8,$a7
    movn	$t2,$t8,$t3
    sw	$t2,308($sp)
.L0d9b9328:
    # Line 1128
    li	$a6,1
    move	$a5,$s7
    move	$a4,$s6
    move	$t9,$s5
    addiu	$a2,$sp,288
    addiu	$a1,$sp,304
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$sp,24
    # Line 1110
    addiu	$s1,$s1,32
    ld	$t9,712($sp)
    addiu	$s2,$s2,32
    addiu	$s4,$s4,1
    addiu	$s0,$s0,32
    addiu	$s3,$s3,32
    beq	$t9,$s4,.L0d9b926c
    # Line 1112
    move	$ra,$s3
    # Line 1111
    sw	$s1,288($sp)
.L0d9b9370:
    # Line 1123
    ld	$t1,360($sp)
    # Line 1114
    ld	$a1,352($sp)
    # Line 1113
    ld	$a0,736($sp)
    sw	$a0,300($sp)
    # Line 1114
    lw	$a5,92($sp)
    # Line 1111
    lw	$v1,96($sp)
    # Line 1114
    ld	$at,728($sp)
    # Line 1120
    lw	$t0,112($sp)
    # Line 1111
    slt	$v0,$s3,$v1
    # Line 1114
    sw	$a1,292($sp)
    # Line 1116
    move	$a1,$a5
    movz	$ra,$v1,$v0
    # Line 1120
    slt	$a6,$s2,$t0
    # Line 1114
    bgtz	$at,.L0d9b92e0
    # Line 1112
    sw	$ra,296($sp)
    # Line 1118
    ld	$a4,352($sp)
    move	$a2,$a5
    slt	$a3,$a5,$a4
    movn	$a2,$a4,$a3
    b	.L0d9b92f0
    sw	$a2,292($sp)
.L0d9b93c4:
    # Line 1127
    ld	$t0,360($sp)
    move	$a5,$a7
    slt	$a6,$a7,$t0
    movn	$a5,$t0,$a6
    b	.L0d9b9328
    sw	$a5,308($sp)
.L0d9b93dc:
    ld	$s2,704($sp)
    ld	$s4,800($sp)
    ld	$s0,792($sp)
    ld	$s6,784($sp)
    b	.L0d9b84c4
    ld	$s7,776($sp)
.L0d9b93f4:
    # Line 1133
    ld	$t1,680($sp)
    move	$s8,$a7
    blez	$t1,.L0d9b84c4
    sd	$a5,736($sp)
    sd	$zero,688($sp)
    sd	$s7,776($sp)
    ld	$s7,728($sp)
    sd	$s6,784($sp)
    ld	$s6,720($sp)
    la	$s5,sub_0d9b0000
    sd	$s0,792($sp)
    subu	$s6,$a7,$s6
    subu	$s7,$a5,$s7
    sd	$s4,800($sp)
    b	.L0d9b947c
    addiu	$s5,$s5,29632
.L0d9b9434:
    # Line 1272
    jal	__glOdysseyClosePMObjReference
    li	$a0,1285
    b	.L0d9b82e8
    ld	$s8,504($sp)
.L0d9b9444:
    # Line 1134
    ld	$t8,720($sp)
    ld	$at,728($sp)
    ld	$t9,688($sp)
    ld	$ra,680($sp)
    addiu	$t9,$t9,1
    sd	$t9,688($sp)
    subu	$s7,$s7,$at
    slt	$t9,$t9,$ra
    ld	$ra,736($sp)
    subu	$s6,$s6,$t8
    subu	$s8,$s8,$t8
    subu	$ra,$ra,$at
    beqz	$t9,.L0d9b95ac
    sd	$ra,736($sp)
.L0d9b947c:
    # Line 1135
    lw	$t1,112($sp)
    ld	$at,712($sp)
    move	$s4,$zero
    lw	$t2,96($sp)
    move	$s0,$t1
    addiu	$a1,$t1,-32
    blez	$at,.L0d9b9444
    move	$s1,$t2
    b	.L0d9b9510
    addiu	$a0,$t2,-32
    nop
    nop
    nop
.L0d9b94b0:
    # Line 1151
    slt	$v1,$a6,$s6
    sd	$a1,808($sp)
    sd	$a0,816($sp)
    move	$v0,$a6
    movn	$v0,$s6,$v1
    sw	$v0,316($sp)
.L0d9b94c8:
    # Line 1154
    li	$a6,1
    move	$a5,$s2
    move	$a4,$s3
    move	$t9,$s5
    addiu	$a2,$sp,288
    addiu	$a1,$sp,304
    mov.s	$f15,$f20
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$sp,24
    # Line 1136
    ld	$a0,816($sp)
    ld	$a2,712($sp)
    addiu	$s1,$s1,-32
    ld	$a1,808($sp)
    addiu	$s4,$s4,1
    addiu	$s0,$s0,-32
    addiu	$a0,$a0,-32
    beq	$a2,$s4,.L0d9b9444
    addiu	$a1,$a1,-32
.L0d9b9510:
    # Line 1139
    sw	$s7,300($sp)
    # Line 1138
    sw	$s1,296($sp)
    # Line 1149
    ld	$t3,720($sp)
    # Line 1140
    ld	$a7,736($sp)
    lw	$a2,100($sp)
    # Line 1146
    move	$t2,$a1
    # Line 1137
    move	$a3,$a0
    # Line 1135
    lw	$a6,88($sp)
    # Line 1144
    lw	$t9,104($sp)
    # Line 1142
    move	$t0,$a2
    slt	$t1,$a2,$s7
    # Line 1140
    ld	$a4,728($sp)
    # Line 1135
    slt	$a5,$a6,$a0
    # Line 1142
    movn	$t0,$s7,$t1
    # Line 1140
    sw	$a7,292($sp)
    # Line 1144
    slt	$t8,$t9,$a1
    movz	$a3,$a6,$a5
    # Line 1149
    lw	$a6,116($sp)
    movz	$t2,$t9,$t8
    # Line 1140
    blez	$a4,.L0d9b9598
    # Line 1137
    sw	$a3,288($sp)
    # Line 1142
    sw	$t0,300($sp)
.L0d9b9568:
    # Line 1149
    sw	$s8,308($sp)
    # Line 1148
    sw	$s6,316($sp)
    # Line 1147
    sw	$s0,312($sp)
    # Line 1149
    bgtz	$t3,.L0d9b94b0
    # Line 1146
    sw	$t2,304($sp)
    sd	$a1,808($sp)
    # Line 1153
    move	$ra,$a6
    slt	$at,$s6,$a6
    sd	$a0,816($sp)
    movn	$ra,$s6,$at
    b	.L0d9b94c8
    sw	$ra,316($sp)
.L0d9b9598:
    # Line 1144
    move	$v0,$a2
    slt	$v1,$s7,$a2
    movn	$v0,$s7,$v1
    b	.L0d9b9568
    sw	$v0,300($sp)
.L0d9b95ac:
    ld	$s4,800($sp)
    ld	$s0,792($sp)
    ld	$s6,784($sp)
    b	.L0d9b84c4
    ld	$s7,776($sp)
.L0d9b95c0:
    # Line 990
    # lw $t9, -31140($gp) # &__glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    jal	__glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    nop
    ld	$a0,368($sp)
    li	$a2,2
    ld	$a1,376($sp)
    b	.L0d9b81b4
    mov.s	$f20,$f0
.L0d9b95e0:
    # Line 945
    sw	$zero,268($sp)
    sw	$zero,264($sp)
    sw	$zero,260($sp)
    sw	$zero,256($sp)
    lw	$a4,31776($s4)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,256($sp)
    lw	$a3,31776($s4)
    andi	$a3,$a3,0xfff
    sw	$a3,264($sp)
    lw	$a2,31780($s4)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,260($sp)
    move	$a0,$s4
    lui	$a1,0x6f64
    lw	$a3,31780($s4)
    ori	$a1,$a1,0xd
    addiu	$a2,$sp,256
    andi	$a3,$a3,0xfff
    jal	__glOdysseyIoctl
    sw	$a3,268($sp)
    b	.L0d9b8efc
    li	$a2,2
    nop
    nop
.L0d9b9650:
    # Line 1164
    move	$a3,$s3
    b	.L0d9b8d8c
    # Line 1165
    sw	$s7,300($sp)
.L0d9b965c:
    # Line 1084
    move	$t2,$s7
    b	.L0d9b9168
    # Line 1087
    sw	$a0,292($sp)
.L0d9b9668:
    # Line 1112
    move	$ra,$s3
    b	.L0d9b9370
    # Line 1111
    sw	$s1,288($sp)
.end __glOdysseyImageMovePixelsCopy

# Function: SendPixelsAsUserPIO
# Declared: Line 1341 (Source lines: 1341-1689)
# Address: 0x0d9b9680 - 0x0d9b9e1c (Size: 1948 bytes, Frame: 160)
.ent SendPixelsAsUserPIO
SendPixelsAsUserPIO:
    # Line 1378
    lw	$v1,20($a2)
    # Line 1341
    addiu	$sp,$sp,-288
    sd	$a1,200($sp)
    # Line 1378
    sd	$v1,160($sp)
    sd	$s8,264($sp)
    sd	$s1,256($sp)
    sd	$s7,248($sp)
    sd	$ra,240($sp)
    sd	$s4,232($sp)
    sd	$s6,224($sp)
    sd	$s3,216($sp)
    sd	$s2,208($sp)
    # Line 1358
    li	$a7,3
    sw	$a7,28($sp)
    li	$t0,1
    sw	$t0,20($sp)
    li	$a6,16
    sw	$a6,12($sp)
    li	$v0,2
    sw	$v0,0($sp)
    li	$v0,6
    sw	$v0,24($sp)
    # Line 1341
    sd	$s5,112($sp)
    # Line 1370
    lw	$a5,28($a2)
    # Line 1358
    li	$at,4
    sw	$at,4($sp)
    li	$at,12
    sw	$at,16($sp)
    # Line 1356
    lw	$a4,4112($zero)
    # Line 1341
    sd	$s0,120($sp)
    # Line 1390
    lui	$s0,0x1
    # Line 1358
    li	$t9,8
    # Line 1390
    addu	$at,$s0,$a4
    sd	$at,168($sp)
    # Line 1394
    li	$v0,18
    # Line 1370
    srl	$s5,$a5,0x10
    # Line 1390
    lw	$at,-26876($at)
    # Line 1358
    sw	$t9,8($sp)
    # Line 1373
    lui	$t9,0xf
    # Line 1370
    andi	$s5,$s5,0x7
    # Line 1373
    lw	$t8,24($a2)
    # Line 1370
    sll	$s5,$s5,0x2
    # Line 1394
    andi	$at,$at,0x3ff
    # Line 1373
    ori	$t9,$t9,0xffff
    # Line 1394
    sd	$at,184($sp)
    # Line 1370
    addu	$s5,$sp,$s5
    # Line 1373
    and	$t8,$t8,$t9
    # Line 1394
    beq	$at,$v0,.L0d9b9dfc
    # Line 1370
    lw	$s5,0($s5)
    # Line 1394
    ld	$a1,184($sp)
    beq	$a6,$a1,.L0d9b9df4
    ld	$a2,184($sp)
    li	$a3,17
    beq	$a2,$a3,.L0d9b9df4
    ld	$t0,184($sp)
    li	$t1,20
    beq	$t0,$t1,.L0d9b9df4
    nop
    sd	$zero,176($sp)
.L0d9b976c:
    # Line 1403
    ld	$ra,-13912($gp)
    multu	$s5,$ra
    mfhi	$t3
    subu	$t9,$s5,$t3
    srl	$t9,$t9,0x1
    addu	$t3,$t3,$t9
    srl	$t3,$t3,0x1
    mult	$t3,$a7
    mflo	$t2
    subu	$t2,$s5,$t2
    beqz	$t2,.L0d9b9e08
    # Line 1409
    li	$at,64
    divu	$zero,$at,$s5
    teq	$s5,$zero,0x7
    mflo	$a2
    nop
    nop
.L0d9b97b0:
    # Line 1422
    andi	$a1,$a5,0x1f
    srl	$a7,$a5,0x5
    srl	$a3,$a5,0x9
    andi	$a7,$a7,0xf
    andi	$a3,$a3,0x1
    sll	$a7,$a7,0x5
    sll	$a3,$a3,0x9
    andi	$a7,$a7,0x1e0
    or	$a1,$a1,$a7
    li	$a7,-513
    andi	$a3,$a3,0x200
    and	$a1,$a1,$a7
    or	$a1,$a1,$a3
    srl	$a3,$a5,0xa
    andi	$a3,$a3,0x1
    li	$a7,-1025
    sll	$a3,$a3,0xa
    and	$a1,$a1,$a7
    andi	$a3,$a3,0x400
    or	$a1,$a1,$a3
    li	$a3,-2049
    and	$a1,$a1,$a3
    ld	$a3,176($sp)
    srl	$a7,$a5,0xb
    andi	$a7,$a7,0x1
    srav	$s6,$a6,$a3
    sll	$a7,$a7,0xb
    sltu	$t0,$a2,$s6
    andi	$a7,$a7,0x800
    movn	$s6,$a2,$t0
    or	$a1,$a1,$a7
    sllv	$a3,$s6,$a3
    ori	$a1,$a1,0x1000
    srl	$a7,$a3,0x4
    subu	$a3,$a3,$a7
    lui	$a7,0xf00
    nor	$t0,$a7,$zero
    sll	$a3,$a3,0x18
    and	$a3,$a3,$a7
    and	$a1,$a1,$t0
    or	$a1,$a1,$a3
    # Line 1430
    ld	$a3,168($sp)
    # Line 1431
    ld	$v1,200($sp)
    # Line 1430
    sw	$a1,-26944($a3)
    # Line 1431
    li	$a7,17776
    sw	$a7,0($s0)
    lw	$a3,-26944($a3)
    sw	$a3,0($s0)
    li	$v0,113
    blez	$v1,.L0d9b9dc4
    sw	$v0,0($s0)
    divu	$zero,$t8,$s5
    mflo	$a2
    nop
    nop
    multu	$s6,$s5
    li	$s1,-1
    li	$s7,15
    sd	$zero,136($sp)
    andi	$v1,$s5,0x1
    sd	$v1,128($sp)
    teq	$s5,$zero,0x7
    mflo	$ra
    andi	$v0,$s5,0x3
    sd	$v0,144($sp)
    srl	$s2,$ra,0x2
    ld	$at,160($sp)
    lui	$s4,0x1
    srl	$ra,$ra,0x6
    ori	$s4,$s4,0x4000
    ld	$t9,184($sp)
    subu	$ra,$s2,$ra
    sd	$a4,104($sp)
    addu	$at,$t8,$at
    sll	$ra,$ra,0xa
    sd	$at,152($sp)
    addiu	$s3,$s2,-1
    or	$t9,$t9,$ra
    sd	$a2,192($sp)
    b	.L0d9b9a3c
    or	$s4,$s4,$t9
    nop
    nop
    nop
.L0d9b9900:
    # Line 1637
    beqz	$t2,.L0d9b9a1c
    # Line 1672
    srl	$t1,$t3,0x4
    # Line 1659
    or	$a5,$s0,$a1
    lui	$a3,0xfff9
    # Line 1660
    lui	$a1,0xff0f
    ld	$a4,176($sp)
    # Line 1659
    ori	$a3,$a3,0xffff
    sll	$a7,$a2,0x11
    and	$a3,$a3,$a5
    lui	$a5,0x6
    # Line 1660
    sllv	$a4,$t2,$a4
    srl	$a6,$a4,0x4
    # Line 1659
    and	$a5,$a5,$a7
    # Line 1664
    ld	$a7,168($sp)
    # Line 1660
    subu	$a4,$a4,$a6
    # Line 1659
    or	$a3,$a3,$a5
    # Line 1672
    ld	$a5,184($sp)
    # Line 1660
    ori	$a1,$a1,0xffff
    sll	$a4,$a4,0x14
    # Line 1665
    lw	$ra,-26880($a7)
    # Line 1660
    and	$a1,$a1,$a3
    lui	$a3,0xf0
    # Line 1672
    subu	$t1,$t3,$t1
    # Line 1665
    sw	$ra,-26884($a7)
    # Line 1660
    and	$a3,$a3,$a4
    # Line 1672
    sll	$t1,$t1,0xa
    # Line 1660
    or	$a1,$a1,$a3
    # Line 1664
    sw	$a1,-26944($a7)
    # Line 1665
    li	$t9,17776
    # Line 1672
    or	$a5,$a5,$t1
    # Line 1665
    sw	$t9,0($s0)
    # Line 1672
    move	$a4,$t3
    # Line 1673
    addiu	$t3,$t3,-1
    # Line 1665
    lw	$t9,-26944($a7)
    li	$ra,113
    sw	$t9,0($s0)
    srl	$t0,$a1,0x10
    sw	$ra,0($s0)
    srl	$t9,$a1,0x11
    andi	$t0,$t0,0x1
    lw	$a6,-26880($a7)
    andi	$t9,$t9,0x3
    negu	$t0,$t0
    # Line 1672
    lui	$a3,0x1
    # Line 1665
    and	$t0,$t0,$t9
    # Line 1672
    ori	$a3,$a3,0x4000
    # Line 1665
    addu	$a6,$a6,$t0
    sw	$a6,-26880($a7)
    # Line 1672
    or	$a3,$a3,$a5
    # Line 1673
    beq	$t3,$s1,.L0d9b9a1c
    # Line 1672
    sw	$a3,0($s0)
    andi	$a5,$a4,0x1
    beqz	$a5,.L0d9b99ec
    sra	$a7,$a4,0x1
    # Line 1674
    lw	$a6,0($a0)
    # Line 1673
    addiu	$t3,$t3,-1
    # Line 1675
    addiu	$a0,$a0,4
    # Line 1674
    sw	$a6,0($s0)
    sra	$a7,$a4,0x1
.L0d9b99ec:
    beqz	$a7,.L0d9b9a1c
    move	$a4,$t3
    nop
    nop
    nop
.L0d9b9a00:
    lw	$t1,0($a0)
    # Line 1673
    addiu	$a4,$a4,-2
    # Line 1674
    sw	$t1,0($s0)
    lw	$t0,4($a0)
    # Line 1675
    addiu	$a0,$a0,8
    # Line 1673
    bne	$a4,$s1,.L0d9b9a00
    # Line 1674
    sw	$t0,0($s0)
.L0d9b9a1c:
    # Line 1685
    ld	$a4,152($sp)
    ld	$a3,200($sp)
    ld	$a0,160($sp)
    subu	$a3,$a3,$a4
    # Line 1684
    addu	$a2,$t8,$s8
    # Line 1685
    sd	$a3,200($sp)
    blez	$a3,.L0d9b9da8
    # Line 1684
    addu	$a0,$a0,$a2
.L0d9b9a3c:
    # Line 1467
    andi	$a7,$a0,0x3
    # Line 1471
    beqz	$a7,.L0d9b9d20
    # Line 1465
    move	$s8,$a0
    # Line 1471
    ld	$a5,144($sp)
    beqz	$a5,.L0d9b9cec
    ld	$a6,128($sp)
    beqz	$a6,.L0d9b9ce8
    andi	$ra,$a7,0x1
.L0d9b9a5c:
    # Line 1480
    beqz	$a7,.L0d9b9d20
    addu	$a2,$t8,$s8
    li	$t0,4
    subu	$a2,$t0,$a2
    # Line 1491
    addiu	$a4,$sp,32
    # Line 1494
    ld	$a6,192($sp)
    # Line 1480
    andi	$a2,$a2,0x3
    nop
    nop
.L0d9b9a80:
    # Line 1510
    addiu	$a6,$a6,-1
    # Line 1507
    beqz	$s5,.L0d9b9ae0
    move	$a5,$s5
    sra	$t2,$s5,0x1
    andi	$a3,$s5,0x1
    beqz	$a3,.L0d9b9ab0
    nop
    # Line 1508
    addiu	$a4,$a4,1
    lbu	$t1,0($a0)
    # Line 1507
    addiu	$a5,$s5,-1
    # Line 1508
    addiu	$a0,$a0,1
    sb	$t1,-1($a4)
.L0d9b9ab0:
    beqz	$t2,.L0d9b9ae0
    nop
    nop
    nop
.L0d9b9ac0:
    lbu	$t9,0($a0)
    # Line 1507
    addiu	$a5,$a5,-2
    # Line 1508
    sb	$t9,0($a4)
    addiu	$a4,$a4,2
    lbu	$t3,1($a0)
    addiu	$a0,$a0,2
    # Line 1507
    bnez	$a5,.L0d9b9ac0
    # Line 1508
    sb	$t3,-1($a4)
.L0d9b9ae0:
    # Line 1504
    beqz	$a6,.L0d9b9af0
    andi	$ra,$a0,0x3
    bnez	$ra,.L0d9b9a80
    nop
.L0d9b9af0:
    # Line 1513
    divu	$zero,$a6,$s6
    mflo	$a5
    nop
    nop
    multu	$s6,$a5
    mflo	$t1
    nop
    subu	$t2,$a6,$t1
    multu	$t2,$s5
    mflo	$t3
    addiu	$t3,$t3,3
    srl	$t3,$t3,0x2
    teq	$s6,$zero,0x7
    subu	$a7,$a7,$a0
    beq	$s7,$t3,.L0d9b9a80
    andi	$a7,$a7,0x3
    ld	$ra,192($sp)
    subu	$ra,$ra,$a6
    multu	$ra,$s5
    # Line 1528
    addiu	$a4,$sp,32
    # Line 1513
    move	$t9,$ra
    mflo	$t0
    addiu	$t0,$t0,3
    # Line 1528
    beqz	$ra,.L0d9b9c64
    # Line 1513
    srl	$t0,$t0,0x2
.L0d9b9b54:
    # Line 1571
    lui	$v0,0xfffe
    ori	$v0,$v0,0xffff
    and	$v0,$v0,$a1
    # Line 1572
    lui	$a1,0xff0f
    # Line 1571
    sll	$v1,$a7,0x11
    # Line 1572
    ori	$a1,$a1,0xffff
    ld	$ra,176($sp)
    # Line 1571
    lui	$a3,0xfff9
    sltu	$at,$zero,$t0
    ori	$a3,$a3,0xffff
    sll	$at,$at,0x10
    # Line 1572
    sllv	$ra,$t9,$ra
    # Line 1571
    and	$at,$s0,$at
    or	$at,$at,$v0
    # Line 1572
    srl	$v0,$ra,0x4
    # Line 1571
    and	$a3,$a3,$at
    lui	$at,0x6
    # Line 1572
    subu	$ra,$ra,$v0
    # Line 1571
    and	$at,$at,$v1
    # Line 1572
    sll	$ra,$ra,0x14
    # Line 1571
    or	$a3,$a3,$at
    # Line 1572
    and	$a1,$a1,$a3
    lui	$a3,0xf0
    and	$a3,$a3,$ra
    or	$a1,$a1,$a3
    # Line 1576
    ld	$a3,168($sp)
    sw	$a1,-26944($a3)
    # Line 1577
    lw	$v1,-26880($a3)
    sw	$v1,-26884($a3)
    li	$v0,17776
    # Line 1584
    srl	$at,$t0,0x4
    # Line 1577
    sw	$v0,0($s0)
    li	$v1,113
    srl	$ra,$a1,0x10
    lw	$v0,-26944($a3)
    andi	$ra,$ra,0x1
    sw	$v0,0($s0)
    srl	$v0,$a1,0x11
    sw	$v1,0($s0)
    negu	$ra,$ra
    andi	$v0,$v0,0x3
    # Line 1584
    subu	$at,$t0,$at
    # Line 1577
    and	$ra,$ra,$v0
    # Line 1584
    ld	$v0,184($sp)
    # Line 1585
    addiu	$t0,$t0,-1
    # Line 1584
    sll	$at,$at,0xa
    # Line 1577
    lw	$v1,-26880($a3)
    # Line 1584
    or	$v0,$v0,$at
    lui	$at,0x1
    # Line 1577
    addu	$v1,$v1,$ra
    sw	$v1,-26880($a3)
    # Line 1584
    ori	$at,$at,0x4000
    or	$at,$at,$v0
    # Line 1585
    beq	$t0,$s1,.L0d9b9c64
    # Line 1584
    sw	$at,0($s0)
.L0d9b9c30:
    # Line 1585
    addiu	$t0,$t0,-1
    # Line 1586
    lw	$v0,0($a4)
    sw	$v0,0($s0)
    # Line 1585
    beq	$t0,$s1,.L0d9b9c64
    addiu	$t0,$t0,-1
    # Line 1586
    lw	$v1,4($a4)
    sw	$v1,0($s0)
    # Line 1585
    beq	$t0,$s1,.L0d9b9c64
    addiu	$t0,$t0,-1
    # Line 1586
    lw	$a3,8($a4)
    # Line 1587
    addiu	$a4,$a4,12
    # Line 1585
    bne	$t0,$s1,.L0d9b9c30
    # Line 1586
    sw	$a3,0($s0)
.L0d9b9c64:
    # Line 1585
    beqz	$t1,.L0d9b9900
    # Line 1637
    addiu	$a5,$a5,-1
    bne	$s1,$a5,.L0d9b9cb8
    nop
    b	.L0d9b9900
    nop
    nop
.L0d9b9c80:
    beqz	$a6,.L0d9b9cac
    nop
    nop
    nop
.L0d9b9c90:
    # Line 1643
    lw	$t0,0($a0)
    # Line 1642
    addiu	$a4,$a4,-2
    # Line 1643
    sw	$t0,0($s0)
    lw	$a7,4($a0)
    # Line 1644
    addiu	$a0,$a0,8
    # Line 1642
    bne	$s1,$a4,.L0d9b9c90
    # Line 1643
    sw	$a7,0($s0)
.L0d9b9cac:
    # Line 1637
    addiu	$a5,$a5,-1
    beq	$s1,$a5,.L0d9b9900
    nop
.L0d9b9cb8:
    # Line 1641
    sw	$s4,0($s0)
    # Line 1642
    beqz	$s2,.L0d9b9cac
    move	$a4,$s3
    sra	$a6,$s2,0x1
    andi	$t1,$s2,0x1
    beqz	$t1,.L0d9b9c80
    nop
    addiu	$a4,$s3,-1
    # Line 1643
    lw	$t9,0($a0)
    # Line 1644
    addiu	$a0,$a0,4
    b	.L0d9b9c80
    # Line 1643
    sw	$t9,0($s0)
.L0d9b9ce8:
    # Line 1471
    beqz	$ra,.L0d9b9a5c
.L0d9b9cec:
    ld	$at,136($sp)
    sd	$t8,96($sp)
    beqz	$at,.L0d9b9d8c
    sd	$a1,272($sp)
.L0d9b9cfc:
    # Line 1478
    # lw $t9, -16968($gp) # &bcopy
    ld	$a1,136($sp)
    move	$a0,$s8
    jal	bcopy
    ld	$a2,96($sp)
    ld	$a1,272($sp)
    ld	$t8,96($sp)
    # Line 1479
    ld	$a0,136($sp)
    # Line 1478
    move	$a7,$zero
.L0d9b9d20:
    # Line 1533
    ld	$t2,192($sp)
    divu	$zero,$t2,$s6
    mflo	$a5
    nop
    nop
    # Line 1534
    multu	$s6,$a5
    mflo	$t1
    nop
    # Line 1539
    subu	$t2,$t2,$t1
    # Line 1540
    multu	$t2,$s5
    # Line 1585
    addu	$a3,$t8,$a0
    # Line 1540
    mflo	$v0
    # Line 1585
    li	$a2,4
    # Line 1540
    addiu	$v0,$v0,3
    # Line 1585
    subu	$a2,$a2,$a3
    # Line 1540
    srl	$v0,$v0,0x2
    # Line 1533
    teq	$s6,$zero,0x7
    # Line 1585
    andi	$a2,$a2,0x3
    # Line 1540
    bne	$s7,$v0,.L0d9b9c64
    move	$t3,$v0
    # Line 1552
    li	$t0,8
    li	$t2,7
    li	$t9,8
    li	$t3,7
    # Line 1558
    move	$a4,$a0
    # Line 1552
    b	.L0d9b9b54
    # Line 1559
    addiu	$a0,$a0,32
.L0d9b9d8c:
    # Line 1476
    ld	$t9,104($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jalr	$t9
    ld	$a1,96($sp)
    b	.L0d9b9cfc
    sd	$v0,136($sp)
.L0d9b9da8:
    # Line 1685
    ld	$at,136($sp)
    beqz	$at,.L0d9b9dc4
    # Line 1688
    ld	$t9,104($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a1,136($sp)
.L0d9b9dc4:
    ld	$s8,264($sp)
    ld	$s1,256($sp)
    ld	$s7,248($sp)
    ld	$s4,232($sp)
    ld	$s6,224($sp)
    ld	$s3,216($sp)
    ld	$ra,240($sp)
    ld	$s2,208($sp)
    # Line 1689
    ld	$s0,120($sp)
    ld	$s5,112($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9b9df4:
    # Line 1402
    b	.L0d9b976c
    sd	$zero,176($sp)
.L0d9b9dfc:
    move	$ra,$t0
    b	.L0d9b976c
    sd	$ra,176($sp)
.L0d9b9e08:
    # Line 1411
    li	$at,48
    divu	$zero,$at,$s5
    mflo	$a2
    b	.L0d9b97b0
    teq	$s5,$zero,0x7
.end SendPixelsAsUserPIO

# Function: __glOdysseyImageMovePixelsDMAtoGfx
# Declared: Line 1692 (Source lines: 1697-2753)
# Address: 0x0d9b9e20 - 0x0d9bb894 (Size: 6772 bytes, Frame: 128)
.globl __glOdysseyImageMovePixelsDMAtoGfx
.ent __glOdysseyImageMovePixelsDMAtoGfx
__glOdysseyImageMovePixelsDMAtoGfx:
    # Line 1697
    addiu	$sp,$sp,-768
    sd	$a4,528($sp)
    sdc1	$f20,672($sp)
    sd	$s1,520($sp)
    sd	$s7,696($sp)
    sd	$s5,704($sp)
    sd	$s2,616($sp)
    sd	$s0,592($sp)
    # Line 1746
    sw	$zero,8($sp)
    # Line 1706
    sw	$zero,4($sp)
    # Line 1705
    sw	$zero,0($sp)
    # Line 1697
    sd	$s8,576($sp)
    # Line 1773
    lw	$s8,4112($zero)
    # Line 1697
    sd	$s6,608($sp)
    # Line 1782
    lui	$s6,0x2
    # Line 1697
    sd	$s4,584($sp)
    # Line 1782
    addu	$s6,$s8,$s6
    # Line 1720
    andi	$s4,$a3,0xff
    # Line 1697
    move	$s0,$a2
    # Line 1782
    lw	$at,7900($s6)
    # Line 1697
    move	$s2,$a1
    sd	$s3,600($sp)
    lui	$v0,0x14
    move	$s3,$a0
    sd	$ra,712($sp)
    addiu	$v0,$v0,-6288
    sd	$gp,624($sp)
    # Line 1782
    beqz	$at,.L0d9baf58
    # Line 1697
    addu	$gp,$t9,$v0
    # Line 1782
    lw	$t8,1816($s8)
    andi	$t8,$t8,0x2
    beqz	$t8,.L0d9baf58
    li	$s5,1
.L0d9b9ea4:
    # Line 1786
    addiu	$ra,$sp,16
    sd	$zero,16($sp)
    sd	$zero,8($ra)
    sd	$zero,16($ra)
    sd	$zero,24($ra)
    addiu	$t9,$sp,48
    sd	$zero,48($sp)
    sd	$zero,8($t9)
    sd	$zero,16($t9)
    # Line 1799
    lwc1	$f12,16($s0)
    ldc1	$f20,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 1800
    lwc1	$f12,20($s0)
    cvt.d.s	$f12,$f12
    # Line 1799
    trunc.w.s	$f13,$f0
    # Line 1800
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 1799
    mfc1	$s1,$f13
    # Line 1800
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 1801
    lwc1	$f12,24($s0)
    cvt.d.s	$f12,$f12
    # Line 1800
    trunc.w.s	$f13,$f0
    # Line 1801
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    sd	$s5,456($sp)
    # Line 1800
    mfc1	$s7,$f13
    # Line 1801
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 1802
    lwc1	$f12,28($s0)
    cvt.d.s	$f12,$f12
    # Line 1801
    trunc.w.s	$f13,$f0
    # Line 1802
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    sd	$s7,448($sp)
    # Line 1801
    mfc1	$s5,$f13
    # Line 1802
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 1829
    lw	$a2,52($s3)
    # Line 1810
    lbu	$v0,12($s3)
    # Line 1808
    lwc1	$f16,12($s0)
    # Line 1810
    sd	$v0,512($sp)
    # Line 1807
    lwc1	$f15,8($s0)
    # Line 1829
    # lw $t9, -31192($gp) # &__glOdysseyImageCalcXferWriteParams
    # Line 1808
    trunc.w.s	$f16,$f16
    # Line 1806
    lwc1	$f14,4($s0)
    # Line 1805
    lwc1	$f13,0($s0)
    # Line 1807
    trunc.w.s	$f15,$f15
    # Line 1808
    mfc1	$a1,$f16
    sd	$a1,496($sp)
    # Line 1806
    trunc.w.s	$f14,$f14
    # Line 1807
    mfc1	$a0,$f15
    # Line 1829
    lw	$a1,12($s2)
    # Line 1805
    trunc.w.s	$f13,$f13
    # Line 1807
    sd	$a0,544($sp)
    # Line 1802
    trunc.w.s	$f17,$f0
    # Line 1806
    mfc1	$v1,$f14
    # Line 1829
    lw	$a0,8($s2)
    # Line 1805
    mfc1	$at,$f13
    # Line 1806
    sd	$v1,488($sp)
    # Line 1829
    addiu	$a3,$sp,48
    # Line 1802
    mfc1	$s7,$f17
    # Line 1829
    bal __glOdysseyImageCalcXferWriteParams
    sd	$at,552($sp)
    lbu	$a2,48($sp)
    beqz	$a2,.L0d9bb744
    # Line 1881
    lw	$a4,60($sp)
    lw	$a3,52($s3)
    bne	$a3,$a4,.L0d9b9fe8
    sd	$s7,440($sp)
    lbu	$a5,10($s3)
    beqz	$a5,.L0d9bb5cc
    lui	$a7,0x1
    addu	$a7,$s8,$a7
    lw	$a6,7360($a7)
    lw	$a7,7572($a7)
    beq	$a6,$a7,.L0d9bafb4
.L0d9b9fe8:
    # Line 1886
    li	$s7,1
    move	$s4,$s7
.L0d9b9ff0:
    # Line 1894
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    lw	$a1,12($s2)
    jal	__glSpecElementsPerGroup
    lw	$a0,8($s2)
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    lw	$a0,12($s2)
    move	$s0,$v0
    jal	__glSpecBytesPerElement
    sd	$s6,504($sp)
    mult	$s0,$v0
    lw	$t1,40($s2)
    mflo	$a0
    # Line 1901
    lw	$a1,24($s2)
    xor	$t1,$t1,$s7
    srl	$t2,$a0,0x1
    movz	$a0,$t2,$t1
    sltu	$t0,$a1,$a0
    beqz	$t0,.L0d9ba044
    move	$s6,$a0
    # Line 1910
    move	$a1,$a0
    sw	$a0,24($s2)
.L0d9ba044:
    # Line 1912
    lw	$t8,16($s2)
    multu	$t8,$s6
    mflo	$t3
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f12
    dsll32	$t2,$a1,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f20
    cvt.s.l	$f12,$f12
    cvt.s.l	$f20,$f20
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    div.s	$f12,$f12,$f20
    mul.s	$f13,$f0,$f20
    trunc.l.s	$f13,$f13
    lbu	$t9,0($s2)
    dmfc1	$ra,$f13
    sll	$ra,$ra,0x0
    beqz	$t9,.L0d9bb198
    sd	$ra,640($sp)
.L0d9ba098:
    # Line 1925
    move	$a0,$s5
    move	$a3,$s5
    slt	$a4,$s1,$s5
    ld	$a7,448($sp)
    slt	$a5,$s5,$s1
    movn	$a3,$s1,$a4
    ld	$a1,440($sp)
    movn	$a0,$s1,$a5
    slt	$t0,$a1,$a7
    slt	$a6,$a7,$a1
    move	$a2,$a1
    movn	$a1,$a7,$a6
    movn	$a2,$a7,$t0
    subu	$a0,$a0,$a3
    subu	$s0,$a2,$a1
    mult	$s0,$a0
    mflo	$v1
    nop
    nop
    multu	$s6,$v1
    ld	$v0,504($sp)
    lw	$v0,-25128($v0)
    mflo	$at
    sltu	$at,$at,$v0
    bnez	$at,.L0d9ba134
    ld	$ra,552($sp)
    ld	$t8,544($sp)
    move	$t3,$t8
    slt	$t9,$t8,$ra
    movn	$t3,$ra,$t9
    slt	$t9,$ra,$t8
    movn	$t8,$ra,$t9
    subu	$t3,$t3,$t8
    multu	$s6,$t3
    ld	$t1,640($sp)
    mflo	$t2
    sltu	$t1,$t1,$t2
    beqz	$t1,.L0d9baf9c
    nop
.L0d9ba134:
    # Line 1934
    lbu	$a0,8($s3)
    # Line 1925
    li	$ra,1
    # Line 1934
    beqz	$a0,.L0d9bb330
    sd	$ra,464($sp)
    li	$v0,0xa6d8
    addu	$v0,$v0,$s8
    lw	$v0,0($v0)
    andi	$at,$v0,0x1000
    beqz	$at,.L0d9bb344
    # Line 1939
    li	$a4,1
    sd	$a4,568($sp)
    # Line 1936
    li	$v1,8192
    # Line 1939
    li	$a3,1
    sd	$a3,536($sp)
    # Line 1936
    subu	$v1,$v1,$v0
    sw	$v1,72($sp)
    # Line 1939
    subu	$s5,$s5,$v1
    # Line 1938
    subu	$s1,$s1,$v1
.L0d9ba17c:
    # Line 1940
    beqz	$a0,.L0d9bb33c
    li	$s4,1
    li	$s4,1
.L0d9ba188:
    # Line 1951
    beqz	$s4,.L0d9bb1c4
    ld	$a7,504($sp)
    sd	$zero,632($sp)
.L0d9ba194:
    # Line 1956
    li	$v0,0xa6d8
    addu	$v0,$v0,$s8
    lw	$v0,0($v0)
    andi	$a5,$v0,0x1000
    beqz	$a5,.L0d9ba1bc
    # Line 1961
    li	$a3,1
    sd	$a3,536($sp)
    li	$v1,8192
    subu	$v1,$v1,$v0
    sw	$v1,72($sp)
.L0d9ba1bc:
    beqz	$a0,.L0d9bb208
    li	$s4,1
    # Line 1986
    lw	$v0,1888($s8)
    li	$a4,1029
    beq	$v0,$a4,.L0d9baf8c
    li	$a5,1026
    beq	$v0,$a5,.L0d9baf8c
    li	$a6,1027
    beq	$v0,$a6,.L0d9baf8c
    li	$a7,1
    sd	$a7,480($sp)
.L0d9ba1e8:
    # Line 1992
    li	$t0,1031
    beq	$v0,$t0,.L0d9baf94
    li	$t1,1025
    beq	$v0,$t1,.L0d9baf94
    li	$t2,1027
    beq	$v0,$t2,.L0d9baf94
    li	$v0,1
.L0d9ba204:
    # Line 2003
    lw	$a0,8($s2)
    li	$t3,6402
    beq	$a0,$t3,.L0d9baf7c
    li	$t8,6401
    beq	$a0,$t8,.L0d9baf7c
    nop
    sd	$a2,408($sp)
    move	$t0,$zero
    sd	$a1,472($sp)
.L0d9ba228:
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$a5,$sp,4
    addiu	$t9,$t9,-5312
    addiu	$a4,$sp,0
    andi	$a3,$t0,0xff
    lw	$a1,48($s3)
    andi	$a2,$v0,0xff
    bal __glOdysseyImageCalcXferWriteParams
    lw	$a0,44($s3)
    beqz	$v0,.L0d9baf20
    sd	$s0,400($sp)
    # Line 2029
    lw	$ra,4($s3)
    lw	$at,4($s2)
    xor	$ra,$ra,$at
    li	$s0,64
    beqz	$s4,.L0d9ba278
    movz	$s0,$zero,$ra
    # Line 2078
    ld	$v0,632($sp)
    beqz	$v0,.L0d9bb21c
    # Line 2034
    ori	$s0,$s0,0x8
.L0d9ba278:
    # Line 2078
    move	$a4,$zero
.L0d9ba27c:
    ld	$t0,488($sp)
    ld	$t2,496($sp)
    ld	$a6,640($sp)
    move	$t9,$t2
    slt	$ra,$t2,$t0
    movn	$t9,$t0,$ra
    multu	$a6,$t9
    ld	$a7,552($sp)
    ld	$a3,544($sp)
    move	$t3,$a3
    slt	$t8,$a3,$a7
    movn	$t3,$a7,$t8
    mflo	$a2
    nop
    nop
    multu	$t3,$s6
    slt	$t1,$t0,$t2
    movz	$t0,$t2,$t1
    mflo	$a5
    nop
    nop
    multu	$a6,$t0
    slt	$a6,$a7,$a3
    movn	$a3,$a7,$a6
    mflo	$a1
    nop
    nop
    multu	$a3,$s6
    lw	$v1,44($s2)
    sd	$t3,424($sp)
    # lw $t9, -30964($gp) # &__glOdysseyOpenPMObjWriteReference
    addu	$a2,$v1,$a2
    addu	$a2,$a2,$a5
    sd	$a2,416($sp)
    lw	$a2,20($s3)
    move	$a0,$s8
    sd	$a3,432($sp)
    addiu	$a3,$sp,8
    addu	$v1,$v1,$a1
    lw	$a1,16($s3)
    mflo	$a5
    addu	$v1,$v1,$a5
    jal	__glOdysseyOpenPMObjWriteReference
    sd	$v1,560($sp)
    andi	$at,$v0,0xff
    beqz	$at,.L0d9bb714
    sd	$s5,392($sp)
    # Line 2090
    lw	$a6,8($sp)
    lw	$a5,24($s3)
    addu	$a5,$a5,$a6
    sw	$a5,8($sp)
    lbu	$a4,8($s3)
    # Line 2119
    lui	$v1,0xe000
    # Line 2090
    li	$a2,1
    # Line 2118
    lw	$a1,16($sp)
    lui	$a3,0x2000
    movz	$a2,$zero,$a4
    # Line 2121
    ld	$s5,392($sp)
    # Line 2118
    nor	$a3,$a3,$zero
    andi	$a2,$a2,0x1
    and	$a1,$a1,$a3
    sll	$a2,$a2,0x1d
    # Line 2121
    move	$t8,$s5
    # Line 2118
    or	$a1,$a1,$a2
    # Line 2120
    lw	$v0,20($sp)
    # Line 2119
    and	$v1,$v1,$a1
    # Line 2121
    slt	$a1,$s1,$s5
    movn	$t8,$s1,$a1
    # Line 2120
    ld	$a1,472($sp)
    andi	$v0,$v0,0xffff
    sll	$a1,$a1,0x10
    # Line 2121
    lui	$a7,0xffff
    # Line 2120
    or	$v0,$v0,$a1
    # Line 2121
    andi	$at,$t8,0xffff
    and	$v0,$a7,$v0
    # Line 2146
    move	$a0,$s6
    # Line 2122
    lw	$t1,24($sp)
    # Line 2121
    or	$at,$at,$v0
    # Line 2132
    li	$v0,-8
    # Line 2122
    li	$t0,-4096
    and	$t0,$t0,$t1
    # Line 2123
    lw	$t1,28($sp)
    # Line 2090
    lui	$a3,0x1000
    # Line 2140
    ld	$ra,432($sp)
    # Line 2090
    ori	$a3,$a3,0x10
    # Line 2119
    lui	$a2,0x1fff
    # Line 2140
    ld	$t9,424($sp)
    movz	$a3,$a5,$a4
    # Line 2119
    ori	$a2,$a2,0xffff
    # Line 2123
    andi	$t1,$t1,0xffff
    # Line 2125
    lw	$a4,0($sp)
    # Line 2119
    and	$a2,$a2,$a3
    # Line 2121
    li	$t2,4096
    # Line 2119
    or	$v1,$v1,$a2
    sw	$v1,16($sp)
    # Line 2140
    subu	$t9,$t9,$ra
    # Line 2125
    lw	$v1,32($sp)
    lui	$a2,0xf0
    # Line 2140
    multu	$s6,$t9
    # Line 2125
    nor	$a2,$a2,$zero
    andi	$a4,$a4,0xf
    and	$v1,$v1,$a2
    # Line 2126
    lw	$a2,4($sp)
    # Line 2122
    li	$t9,1
    # Line 2125
    sll	$a4,$a4,0x14
    # Line 2121
    sw	$at,20($sp)
    # Line 2125
    or	$v1,$v1,$a4
    # Line 2126
    lui	$a4,0xf00
    # Line 2121
    lw	$t3,28($s3)
    # Line 2126
    nor	$a4,$a4,$zero
    andi	$a2,$a2,0xf
    sll	$a2,$a2,0x18
    xor	$t2,$t3,$t2
    movz	$t3,$t9,$t2
    # Line 2124
    slt	$t2,$s5,$s1
    # Line 2126
    and	$v1,$v1,$a4
    # Line 2124
    movn	$s5,$s1,$t2
    # Line 2123
    ld	$t2,400($sp)
    # Line 2126
    or	$v1,$v1,$a2
    # Line 2128
    lui	$a2,0x7fff
    ori	$a2,$a2,0xffff
    # Line 2123
    sll	$t2,$t2,0x10
    # Line 2124
    sd	$s5,384($sp)
    subu	$s5,$s5,$t8
    # Line 2123
    or	$t1,$t1,$t2
    # Line 2124
    andi	$a6,$s5,0xffff
    and	$a7,$a7,$t1
    or	$a6,$a6,$a7
    sw	$a6,28($sp)
    # Line 2127
    lui	$a7,0x7000
    # Line 2122
    andi	$t3,$t3,0xfff
    # Line 2128
    ld	$a6,480($sp)
    # Line 2127
    nor	$a7,$a7,$zero
    # Line 2143
    lw	$a4,40($sp)
    # Line 2122
    or	$t0,$t0,$t3
    # Line 2127
    and	$v1,$v1,$a7
    # Line 2122
    sw	$t0,24($sp)
    # Line 2128
    sll	$a6,$a6,0x1f
    and	$v1,$v1,$a2
    # Line 2143
    lui	$a3,0xfff0
    # Line 2128
    or	$v1,$v1,$a6
    sw	$v1,32($sp)
    # Line 2129
    lui	$a1,0xf
    # Line 2143
    and	$a3,$a3,$a4
    # Line 2129
    lw	$a4,40($s3)
    # Line 2143
    ori	$a5,$a1,0xffff
    # Line 2129
    nor	$a1,$a1,$zero
    # Line 2140
    mflo	$a2
    # Line 2129
    andi	$a4,$a4,0xf
    and	$v1,$v1,$a1
    # Line 2130
    lw	$a1,56($sp)
    # Line 2129
    sll	$a4,$a4,0x10
    or	$v1,$v1,$a4
    # Line 2130
    li	$a4,0xe000
    andi	$a1,$a1,0x7
    nor	$a4,$a4,$zero
    # Line 2121
    sd	$t8,376($sp)
    # Line 2130
    sll	$a1,$a1,0xd
    and	$v1,$v1,$a4
    # Line 2146
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 2130
    or	$v1,$v1,$a1
    # Line 2131
    li	$a1,-249
    # Line 2143
    and	$a5,$a5,$a2
    # Line 2131
    and	$v1,$v1,$a1
    # Line 2140
    ld	$a1,640($sp)
    # Line 2146
    addiu	$t9,$t9,-3616
    # Line 2143
    or	$a3,$a3,$a5
    sw	$a3,40($sp)
    # Line 2132
    and	$v0,$v0,$v1
    # Line 2140
    subu	$a1,$a1,$a2
    sw	$a1,36($sp)
    # Line 2133
    ori	$v0,$v0,0x1000
    # Line 2146
    bal __glOdysseyImageCalcPixelModeFields
    # Line 2133
    sw	$v0,32($sp)
    # Line 2146
    lui	$a3,0x7
    lw	$a1,44($sp)
    nor	$a3,$a3,$zero
    andi	$a2,$v0,0x7
    and	$a1,$a1,$a3
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    # Line 2149
    li	$a2,-4097
    and	$a1,$a1,$a2
    # Line 2150
    li	$a2,-2049
    and	$a1,$a1,$a2
    sw	$a1,44($sp)
    # Line 2151
    lbu	$a7,1188($s8)
    beqz	$a7,.L0d9ba57c
    move	$v0,$zero
    lbu	$a4,0($s2)
    beqz	$a4,.L0d9bb224
    move	$v0,$zero
.L0d9ba57c:
    # Line 2157
    lbu	$t1,51($sp)
    andi	$t1,$t1,0x1
    # Line 2151
    li	$a7,-1025
    andi	$t0,$v0,0x1
    sll	$t0,$t0,0xa
    and	$a7,$a1,$a7
    or	$a7,$a7,$t0
    # Line 2157
    li	$t0,-513
    sll	$t1,$t1,0x9
    and	$a7,$a7,$t0
    # Line 2158
    lbu	$t0,50($sp)
    # Line 2160
    lui	$a6,0xff
    # Line 2157
    or	$a7,$a7,$t1
    # Line 2158
    li	$t1,-481
    andi	$t0,$t0,0xf
    # Line 2159
    lbu	$a5,49($sp)
    # Line 2158
    and	$a7,$a7,$t1
    sll	$t0,$t0,0x5
    or	$a7,$a7,$t0
    # Line 2159
    li	$t0,-32
    andi	$a5,$a5,0x1f
    and	$a7,$a7,$t0
    # Line 2160
    ori	$a6,$a6,0xffff
    # Line 2159
    or	$a5,$a5,$a7
    sd	$s1,328($sp)
    # Line 2160
    and	$a5,$a5,$a6
    sll	$a6,$s0,0x18
    or	$a5,$a5,$a6
    beqz	$s4,.L0d9bafbc
    sw	$a5,44($sp)
    # Line 2173
    lw	$a4,31740($s8)
    # Line 2174
    lw	$a5,31796($s8)
    # Line 2175
    lw	$a6,31800($s8)
    # Line 2176
    lw	$a7,31804($s8)
    sw	$a7,140($sp)
    # Line 2175
    sw	$a6,136($sp)
    # Line 2174
    sw	$a5,132($sp)
    # Line 2170
    lui	$s0,0x1
    # Line 2173
    sw	$a4,128($sp)
    # Line 2170
    addu	$s1,$s0,$s8
    # Line 2171
    lw	$v0,-26876($s1)
    lw	$v1,-26872($s1)
    # Line 2172
    lw	$a0,-26980($s1)
    lw	$a1,-26976($s1)
    lw	$a2,-26972($s1)
    lw	$a3,-26968($s1)
    sw	$a3,124($sp)
    sw	$a2,120($sp)
    sw	$a1,116($sp)
    sw	$a0,112($sp)
    # Line 2171
    sw	$v1,108($sp)
    sw	$v0,104($sp)
    # Line 2177
    lw	$t0,31836($s8)
    sw	$t0,144($sp)
    # Line 2180
    lbu	$t0,69($sp)
    lw	$t1,-26576($s1)
    # Line 2170
    lw	$t3,-26964($s1)
    lw	$t8,-26960($s1)
    lw	$t9,-26956($s1)
    lw	$ra,-26952($s1)
    addiu	$t2,$sp,80
    lw	$at,-26948($s1)
    sw	$at,16($t2)
    sw	$ra,12($t2)
    sw	$t9,8($t2)
    sw	$t8,4($t2)
    # Line 2180
    li	$t2,-8
    # Line 2170
    sw	$t3,80($sp)
    # Line 2180
    andi	$t0,$t0,0x7
    and	$t2,$t2,$t3
    or	$t0,$t0,$t2
    beqz	$t1,.L0d9ba6c0
    sw	$t0,-26964($s1)
    # Line 2182
    sw	$zero,-26576($s1)
    ori	$t3,$s0,0x443
    sw	$t3,0($s0)
    li	$t2,250
    sw	$t2,0($s0)
    ori	$t1,$s0,0x46
    sw	$t1,0($s0)
    sw	$t1,0($s0)
.L0d9ba6c0:
    # Line 2191
    li	$a0,0x969c
    addu	$a0,$s8,$a0
    sd	$a0,336($sp)
    # Line 2182
    lui	$a4,0x1
    ori	$a4,$a4,0x46
    sw	$a4,0($s0)
    sw	$a4,0($s0)
    lui	$a3,0x1
    sw	$a4,0($s0)
    ori	$t8,$a3,0x1453
    sw	$t8,0($s0)
    lw	$t3,-26964($s1)
    sw	$t3,0($s0)
    lw	$t2,-26960($s1)
    sw	$t2,0($s0)
    lw	$t1,-26956($s1)
    sw	$t1,0($s0)
    lw	$t0,-26952($s1)
    sw	$t0,0($s0)
    lw	$a7,-26948($s1)
    sw	$a7,0($s0)
    sw	$zero,-26576($s1)
    ori	$a6,$a3,0x443
    sw	$a6,0($s0)
    li	$a5,250
    sw	$a5,0($s0)
    sw	$a4,0($s0)
    sw	$a4,0($s0)
    # Line 2185
    lbu	$a2,68($sp)
    # Line 2191
    # lw $t9, -31180($gp) # &__glOdysseyImageCalcPixelModeFields
    # Line 2185
    ori	$a3,$a3,0x3c00
    or	$a2,$a2,$a3
    sw	$a2,-26876($s1)
    # Line 2186
    li	$a1,1200
    sw	$a1,0($s0)
    lw	$t8,-26876($s1)
    # Line 2191
    move	$a1,$s3
    bal __glOdysseyImageCalcPixelModeFields
    # Line 2186
    sw	$t8,0($s0)
    # Line 2193
    lw	$t1,26976($s1)
    # Line 2192
    lw	$t9,-26980($s1)
    # Line 2193
    lui	$t2,0x20
    # Line 2234
    ld	$at,328($sp)
    # Line 2192
    lui	$t8,0xe000
    lw	$ra,8($sp)
    and	$t8,$t8,$t9
    lui	$t9,0x1fff
    # Line 2193
    or	$t1,$t1,$t2
    # Line 2192
    ori	$t9,$t9,0xffff
    # Line 2193
    sw	$t1,26976($s1)
    # Line 2234
    mtc1	$at,$f21
    # Line 2192
    and	$t9,$t9,$ra
    or	$t8,$t8,$t9
    sw	$t8,-26980($s1)
    # Line 2193
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 2249
    lbu	$a5,8($s3)
    # Line 2234
    cvt.s.w	$f21,$f21
    # Line 2193
    lw	$a6,4($s2)
    ld	$t3,440($sp)
    # Line 2234
    sdc1	$f21,264($sp)
    # Line 2193
    ld	$t0,448($sp)
    mtc1	$t3,$f15
    # Line 2234
    sdc1	$f21,288($sp)
    # Line 2244
    lw	$a7,248($s8)
    # Line 2193
    mtc1	$t0,$f17
    # Line 2234
    ld	$ra,392($sp)
    # Line 2193
    cvt.s.w	$f15,$f15
    # Line 2245
    lwc1	$f18,4($a7)
    # Line 2247
    lwc1	$f23,12($a7)
    # Line 2193
    cvt.s.w	$f17,$f17
    # Line 2234
    mtc1	$ra,$f20
    # Line 2246
    lwc1	$f19,8($a7)
    # Line 2247
    sdc1	$f23,320($sp)
    # Line 2230
    mov.s	$f16,$f15
    # Line 2246
    sdc1	$f19,304($sp)
    # Line 2234
    cvt.s.w	$f20,$f20
    # Line 2245
    sdc1	$f18,312($sp)
    movz.s	$f16,$f17,$a6
    sdc1	$f16,296($sp)
    # Line 2234
    mov.s	$f14,$f17
    sdc1	$f20,256($sp)
    sdc1	$f20,280($sp)
    movz.s	$f14,$f15,$a6
    # Line 2244
    lwc1	$f20,0($a7)
    li	$a2,-4096
    # Line 2249
    beqz	$a5,.L0d9ba828
    sdc1	$f14,272($sp)
    ld	$v1,528($sp)
    beq	$v1,$s7,.L0d9bb22c
.L0d9ba828:
    # Line 2281
    ld	$t0,384($sp)
    # Line 2282
    ld	$a7,472($sp)
    # Line 2281
    andi	$t0,$t0,0xfff
    # Line 2280
    ld	$t1,376($sp)
    lui	$a6,0xff
    # Line 2282
    sll	$a7,$a7,0xc
    # Line 2283
    ld	$a5,408($sp)
    # Line 2280
    ori	$a6,$a6,0xf000
    sll	$t1,$t1,0xc
    # Line 2275
    lw	$a0,31776($s8)
    # Line 2280
    and	$t1,$t1,$a6
    # Line 2282
    and	$a6,$a6,$a7
    # Line 2276
    lw	$a3,31780($s8)
    # Line 2283
    andi	$a5,$a5,0xfff
    and	$a6,$a6,$a2
    # Line 2281
    and	$t1,$t1,$a2
    # Line 2283
    or	$a5,$a5,$a6
    sw	$a5,31780($s8)
    # Line 2281
    or	$t0,$t0,$t1
    sw	$t0,31776($s8)
    # Line 2284
    lw	$a4,26976($s1)
    ori	$a4,$a4,0x10
    sw	$a4,26976($s1)
    sw	$v0,4120($zero)
    lbu	$a1,10($s3)
    # Line 2276
    sw	$a3,172($sp)
    # Line 2284
    beqz	$a1,.L0d9ba8b0
    # Line 2275
    sw	$a0,168($sp)
    # Line 2287
    lw	$t3,7360($s1)
    sw	$t3,31836($s8)
    # Line 2288
    lw	$t2,26976($s1)
    ori	$t2,$t2,0x80
    sw	$t2,26976($s1)
    sw	$v0,4120($zero)
.L0d9ba8b0:
    mtc1	$zero,$f5
.L0d9ba8b4:
    # Line 2286
    ld	$t8,536($sp)
    beqz	$t8,.L0d9ba92c
    # Line 2305
    ld	$at,632($sp)
.L0d9ba8c0:
    # Line 2297
    lw	$v1,31776($s8)
    # Line 2303
    lui	$a3,0xff
    # Line 2297
    lw	$a1,72($sp)
    srl	$at,$v1,0xc
    # Line 2303
    ori	$a3,$a3,0xf000
    # Line 2297
    andi	$at,$at,0xfff
    # Line 2298
    andi	$ra,$v1,0xfff
    # Line 2297
    subu	$at,$at,$a1
    # Line 2298
    subu	$ra,$ra,$a1
    # Line 2303
    slti	$a4,$at,0
    # Line 2304
    slti	$a0,$ra,0
    # Line 2303
    movn	$at,$zero,$a4
    nor	$a1,$a3,$zero
    sll	$at,$at,0xc
    and	$v1,$v1,$a1
    and	$at,$at,$a3
    # Line 2304
    movn	$ra,$zero,$a0
    # Line 2303
    or	$at,$at,$v1
    # Line 2304
    andi	$ra,$ra,0xfff
    and	$at,$a2,$at
    or	$ra,$ra,$at
    sw	$ra,31776($s8)
    # Line 2305
    lw	$t9,26976($s1)
    ori	$t9,$t9,0x10
    sw	$t9,26976($s1)
    sw	$v0,4120($zero)
    ld	$at,632($sp)
.L0d9ba92c:
    beqz	$at,.L0d9ba954
    # Line 2332
    ld	$a0,504($sp)
    # Line 2327
    lw	$v0,31740($s8)
    lui	$v1,0x13
    ori	$v1,$v1,0xc010
    and	$v0,$v0,$v1
    beqz	$v0,.L0d9bb598
    nop
.L0d9ba94c:
    sd	$zero,632($sp)
    # Line 2332
    ld	$a0,504($sp)
.L0d9ba954:
    lbu	$a0,-25136($a0)
    beqz	$a0,.L0d9ba980
    nop
    lw	$a1,52($s3)
    lw	$a2,60($sp)
    bne	$a1,$a2,.L0d9ba980
    # Line 2334
    lui	$a4,0x4
    lw	$a3,31740($s8)
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    sw	$a3,31740($s8)
.L0d9ba980:
    lw	$a5,26976($s1)
    beqz	$a5,.L0d9ba99c
    # Line 2338
    nop	# was lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    sdc1	$f5,664($sp)
    jal	__glOdysseyValidateHardware
    move	$a0,$s8
    ldc1	$f5,664($sp)
.L0d9ba99c:
    # Line 2385
    ld	$a6,504($sp)
    lw	$a6,7916($a6)
    addiu	$a6,$a6,-16
    mtc1	$a6,$f23
    ldc1	$f27,264($sp)
    ldc1	$f25,256($sp)
    cvt.s.w	$f23,$f23
    sub.s	$f25,$f25,$f27
    c.lt.s	$f23,$f25
    bc1t	.L0d9ba9cc
    ld	$a7,512($sp)
    beqz	$a7,.L0d9bb5d4
.L0d9ba9cc:
    li	$a1,1
.L0d9ba9d0:
    # Line 2387
    ld	$t0,568($sp)
    beqz	$t0,.L0d9baa2c
    # Line 2395
    ld	$v0,464($sp)
    # Line 2387
    lui	$s0,0x1
    addu	$s1,$s0,$s8
    lw	$t1,-26576($s1)
    beqz	$t1,.L0d9baa14
    # Line 2393
    lui	$ra,0x1
    # Line 2392
    sw	$zero,-26576($s1)
    ori	$t8,$s0,0x443
    sw	$t8,0($s0)
    li	$t3,250
    sw	$t3,0($s0)
    ori	$t2,$s0,0x46
    sw	$t2,0($s0)
    sw	$t2,0($s0)
    # Line 2393
    lui	$ra,0x1
.L0d9baa14:
    ori	$ra,$ra,0x841
    sw	$ra,0($s0)
    # Line 2394
    sw	$zero,0($s0)
    # Line 2395
    lw	$t9,-22820($s1)
    sw	$t9,0($s0)
    ld	$v0,464($sp)
.L0d9baa2c:
    beqz	$a1,.L0d9bb004
    andi	$v0,$v0,0xff
    # Line 2498
    ldc1	$f25,312($sp)
    # Line 2500
    ld	$a5,560($sp)
    # Line 2495
    lui	$s0,0x1
    # Line 2500
    ld	$a4,416($sp)
    # Line 2495
    addu	$s1,$s0,$s8
    lw	$t0,-24072($s1)
    li	$a7,303
    sw	$a7,-24072($s1)
    lw	$a6,-24072($s1)
    lw	$t1,-24072($s1)
    # Line 2498
    ldc1	$f27,304($sp)
    # Line 2495
    lui	$a7,0x2900
    # Line 2498
    ldc1	$f29,320($sp)
    # Line 2500
    subu	$a4,$a4,$a5
    # Line 2495
    srl	$t1,$t1,0xa
    sw	$t0,-26892($s1)
    andi	$a6,$a6,0x3ff
    sll	$t1,$t1,0x17
    # Line 2500
    ld	$a5,640($sp)
    # Line 2495
    ori	$a7,$a7,0x8000
    or	$a6,$a6,$t1
    or	$a6,$a6,$a7
    sw	$a6,0($s0)
    # Line 2500
    sw	$s6,-26888($s1)
    # Line 2498
    swc1	$f29,-26928($s1)
    swc1	$f27,-26932($s1)
    swc1	$f25,-26936($s1)
    # Line 2500
    subu	$a4,$a4,$a5
    beqz	$v0,.L0d9bb678
    # Line 2498
    swc1	$f20,-26940($s1)
    # Line 2543
    ld	$t0,512($sp)
    beqz	$t0,.L0d9bb350
    lw	$t0,28($sp)
    sd	$s3,728($sp)
    # Line 2555
    ld	$s3,560($sp)
    sd	$s5,648($sp)
    # Line 2559
    lw	$t8,36($sp)
    sd	$s4,720($sp)
    # Line 2554
    addiu	$t9,$sp,16
    ld	$v0,16($t9)
    addiu	$ra,$sp,176
    sd	$v0,16($ra)
    # Line 2552
    ldc1	$f31,296($sp)
    # Line 2554
    ld	$v1,24($t9)
    sd	$v1,24($ra)
    # Line 2559
    lui	$at,0xf
    lw	$v1,40($sp)
    # Line 2554
    ld	$v0,8($t9)
    # Line 2559
    ori	$at,$at,0xffff
    # Line 2554
    ld	$t9,16($sp)
    # Line 2559
    and	$at,$at,$v1
    # Line 2551
    srl	$s6,$t0,0x10
    # Line 2554
    sd	$v0,8($ra)
    # Line 2552
    trunc.w.s	$f31,$f31
    # Line 2562
    subu	$s4,$a4,$at
    # Line 2554
    sd	$t9,176($sp)
    # Line 2559
    addu	$at,$at,$t8
    # Line 2562
    srl	$s4,$s4,0x1
    # Line 2559
    sd	$at,656($sp)
    # Line 2552
    mfc1	$s2,$f31
    # Line 2562
    blez	$s6,.L0d9bac8c
    subu	$s4,$s4,$t8
    sdc1	$f22,744($sp)
    ldc1	$f22,288($sp)
    sd	$s8,736($sp)
    la	$s8,sub_0d9c0000
    sdc1	$f24,752($sp)
    mov.s	$f20,$f5
    ldc1	$f24,280($sp)
    addiu	$s5,$s2,-1
    addiu	$s8,$s8,-27008
.L0d9bab50:
    # Line 2571
    swc1	$f20,-26904($s1)
    swc1	$f24,-26912($s1)
    mtc1	$s5,$f10
    swc1	$f20,-26916($s1)
    mtc1	$s2,$f11
    swc1	$f22,-26924($s1)
    # Line 2569
    sw	$s7,-26896($s1)
    # Line 2571
    cvt.s.w	$f10,$f10
    # Line 2569
    ld	$a0,648($sp)
    # Line 2571
    cvt.s.w	$f11,$f11
    # Line 2569
    sw	$a0,-26900($s1)
    # Line 2571
    swc1	$f10,-26908($s1)
    # Line 2577
    lui	$v1,0x1
    # Line 2571
    swc1	$f11,-26920($s1)
    # Line 2577
    ori	$v1,$v1,0x4400
    sw	$v1,0($s0)
    li	$v0,10
    # Line 2582
    lui	$at,0xcf80
    # Line 2577
    sw	$v0,0($s0)
    # Line 2582
    ori	$at,$at,0xa92f
    sw	$at,0($s0)
    lwc1	$f9,-26940($s1)
    swc1	$f9,0($s0)
    lwc1	$f8,-26936($s1)
    swc1	$f8,0($s0)
    lwc1	$f7,-26932($s1)
    swc1	$f7,0($s0)
    lwc1	$f6,-26928($s1)
    swc1	$f6,0($s0)
    lwc1	$f5,-26924($s1)
    swc1	$f5,0($s0)
    lwc1	$f4,-26920($s1)
    swc1	$f4,0($s0)
    lwc1	$f3,-26916($s1)
    swc1	$f3,0($s0)
    lwc1	$f2,-26912($s1)
    swc1	$f2,0($s0)
    lwc1	$f1,-26908($s1)
    swc1	$f1,0($s0)
    lwc1	$f0,-26904($s1)
    lui	$ra,0x8080
    swc1	$f0,0($s0)
    ori	$ra,$ra,0xc800
    sw	$ra,0($s0)
    sw	$zero,0($s0)
    # Line 2585
    move	$t9,$s8
    # Line 2582
    sw	$zero,0($s0)
    # Line 2585
    addiu	$a2,$sp,176
    move	$a1,$s4
    # Line 2582
    sw	$zero,-26880($s1)
    # Line 2585
    move	$a0,$s3
    bal __glOdysseyImageMovePixelsCopy
    # Line 2582
    sw	$zero,-26884($s1)
    # Line 2590
    lui	$v0,0x1
    ori	$v0,$v0,0x4001
    sw	$v0,0($s0)
    lw	$a1,-26892($s1)
    li	$a0,250
    lui	$v1,0x1
    # Line 2595
    ld	$a2,656($sp)
    # Line 2590
    beqz	$a1,.L0d9bac64
    ori	$v1,$v1,0x46
    sw	$zero,-26576($s1)
    lui	$a1,0x1
    ori	$a1,$a1,0x443
    sw	$a1,0($s0)
    sw	$a0,0($s0)
    sw	$v1,0($s0)
    sw	$v1,0($s0)
.L0d9bac64:
    # Line 2594
    addu	$s3,$s3,$a2
    # Line 2593
    addiu	$s6,$s6,-2
    # Line 2595
    subu	$s4,$s4,$a2
    # Line 2596
    addiu	$s2,$s2,-2
    addiu	$s5,$s5,-2
    bgtz	$s6,.L0d9bab50
    # Line 2590
    sw	$s7,-26576($s1)
    ld	$s8,736($sp)
    ldc1	$f22,744($sp)
    ldc1	$f24,752($sp)
.L0d9bac8c:
    # Line 2654
    ld	$a3,568($sp)
    ld	$s3,728($sp)
    beqz	$a3,.L0d9bad20
    ld	$s4,720($sp)
    lw	$a4,-26576($s1)
    beqz	$a4,.L0d9bacd4
    # Line 2664
    lui	$t3,0x9000
    # Line 2663
    sw	$zero,-26576($s1)
    lui	$a7,0x1
    ori	$a7,$a7,0x443
    sw	$a7,0($s0)
    li	$a6,250
    lui	$a5,0x1
    sw	$a6,0($s0)
    ori	$a5,$a5,0x46
    sw	$a5,0($s0)
    sw	$a5,0($s0)
    # Line 2664
    lui	$t3,0x9000
.L0d9bacd4:
    # Line 2665
    lui	$t2,0x1
    # Line 2664
    ori	$t3,$t3,0x8116
    sw	$t3,0($s0)
    # Line 2665
    ori	$t2,$t2,0x443
    sw	$t2,0($s0)
    li	$t1,150
    lui	$t0,0x1
    sw	$t1,0($s0)
    ori	$t0,$t0,0x46
    sw	$t0,0($s0)
    sw	$t0,0($s0)
    # Line 2666
    sw	$t0,0($s0)
    # Line 2667
    sw	$t0,0($s0)
    # Line 2668
    sw	$zero,-26576($s1)
    sw	$t2,0($s0)
    li	$t1,250
    sw	$t1,0($s0)
    sw	$t0,0($s0)
    sw	$t0,0($s0)
.L0d9bad20:
    # Line 2677
    # lw $t9, -30960($gp) # &__glOdysseyClosePMObjWriteReference
    lw	$a2,20($s3)
    move	$a0,$s8
    jal	__glOdysseyClosePMObjWriteReference
    lw	$a1,16($s3)
    andi	$t8,$v0,0xff
    beqz	$t8,.L0d9bb76c
    # Line 2686
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2687
    beqz	$s4,.L0d9baf20
    # Line 2697
    lui	$s0,0x1
    addu	$s1,$s0,$s8
    lw	$at,-26892($s1)
    sw	$at,-24072($s1)
    lw	$ra,-24072($s1)
    lw	$v0,-24072($s1)
    lui	$at,0x2900
    srl	$v0,$v0,0xa
    # Line 2702
    ld	$t9,456($sp)
    # Line 2697
    andi	$ra,$ra,0x3ff
    sll	$v0,$v0,0x17
    ori	$at,$at,0x8000
    or	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,0($s0)
    # Line 2702
    beqz	$t9,.L0d9bad94
    # Line 2697
    sw	$zero,-26892($s1)
    # Line 2702
    lw	$v0,31600($s8)
    andi	$v0,$v0,0x400
    beqz	$v0,.L0d9bb5b8
.L0d9bad94:
    # Line 2715
    lw	$a4,80($sp)
    sw	$a4,-26964($s1)
    addiu	$v1,$sp,80
    lw	$a3,16($v1)
    lw	$a2,12($v1)
    lw	$a1,8($v1)
    lw	$v1,4($v1)
    sw	$a3,-26948($s1)
    lw	$a0,-26576($s1)
    sw	$a2,-26952($s1)
    sw	$a1,-26956($s1)
    beqz	$a0,.L0d9badf0
    sw	$v1,-26960($s1)
    # Line 2716
    sw	$zero,-26576($s1)
    lui	$a7,0x1
    ori	$a7,$a7,0x443
    sw	$a7,0($s0)
    li	$a6,250
    lui	$a5,0x1
    sw	$a6,0($s0)
    ori	$a5,$a5,0x46
    sw	$a5,0($s0)
    sw	$a5,0($s0)
.L0d9badf0:
    # Line 2727
    lw	$t8,168($sp)
    # Line 2728
    lw	$t3,172($sp)
    # Line 2720
    lw	$a0,104($sp)
    lw	$v1,108($sp)
    # Line 2726
    lw	$v0,112($sp)
    lw	$at,116($sp)
    lw	$ra,120($sp)
    lw	$t9,124($sp)
    # Line 2716
    lui	$a1,0x1
    ori	$a1,$a1,0x46
    sw	$a1,0($s0)
    sw	$a1,0($s0)
    lui	$t1,0x1
    sw	$a1,0($s0)
    ori	$t1,$t1,0x1453
    sw	$t1,0($s0)
    lw	$t0,-26964($s1)
    sw	$t0,0($s0)
    lw	$a7,-26960($s1)
    sw	$a7,0($s0)
    lw	$a6,-26956($s1)
    sw	$a6,0($s0)
    lw	$a5,-26952($s1)
    sw	$a5,0($s0)
    lw	$a4,-26948($s1)
    sw	$a4,0($s0)
    lui	$a3,0x1
    sw	$zero,-26576($s1)
    ori	$a3,$a3,0x443
    sw	$a3,0($s0)
    li	$a2,250
    sw	$a2,0($s0)
    sw	$a1,0($s0)
    sw	$a1,0($s0)
    # Line 2726
    sw	$t9,-26968($s1)
    sw	$ra,-26972($s1)
    sw	$at,-26976($s1)
    sw	$v0,-26980($s1)
    # Line 2720
    sw	$v1,-26872($s1)
    sw	$a0,-26876($s1)
    # Line 2728
    sw	$t3,31780($s8)
    # Line 2727
    sw	$t8,31776($s8)
    # Line 2729
    lui	$t2,0x20
    lw	$t1,26976($s1)
    ori	$t2,$t2,0x10
    or	$t1,$t1,$t2
    sw	$t1,26976($s1)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 2736
    lbu	$t0,8($s3)
    beqz	$t0,.L0d9baec8
    ld	$a2,528($sp)
    beq	$a2,$s7,.L0d9bb5f8
    ld	$s5,704($sp)
.L0d9baec8:
    # Line 2744
    lbu	$a3,10($s3)
    beqz	$a3,.L0d9baf20
    ld	$s5,704($sp)
    ld	$s7,696($sp)
    ldc1	$f20,672($sp)
    # Line 2753
    ld	$gp,624($sp)
    ld	$s0,592($sp)
    ld	$s2,616($sp)
    ld	$s3,600($sp)
    ld	$s4,584($sp)
    ld	$s6,608($sp)
    # Line 2749
    lw	$a5,144($sp)
    sw	$a5,31836($s8)
    # Line 2753
    ld	$s8,576($sp)
    # Line 2750
    lw	$a4,26976($s1)
    ld	$ra,712($sp)
    ori	$a4,$a4,0x80
    sw	$a4,26976($s1)
    sw	$v0,4120($zero)
    # Line 2753
    ld	$s1,520($sp)
    jr	$ra
    addiu	$sp,$sp,768
.L0d9baf20:
    ld	$s1,520($sp)
.L0d9baf24:
    ld	$s7,696($sp)
    ld	$s5,704($sp)
    ldc1	$f20,672($sp)
    ld	$gp,624($sp)
    ld	$s0,592($sp)
    ld	$s2,616($sp)
    ld	$s3,600($sp)
    ld	$ra,712($sp)
    ld	$s4,584($sp)
    ld	$s6,608($sp)
    ld	$s8,576($sp)
    jr	$ra
    addiu	$sp,$sp,768
.L0d9baf58:
    # Line 1782
    lw	$a6,7896($s6)
    beqz	$a6,.L0d9bb5e4
    nop
    lw	$a7,1816($s8)
    andi	$a7,$a7,0x1
    bnez	$a7,.L0d9b9ea4
    li	$s5,1
    b	.L0d9b9ea4
    move	$s5,$zero
.L0d9baf7c:
    sd	$a2,408($sp)
    # Line 2003
    li	$t0,1
    b	.L0d9ba228
    sd	$a1,472($sp)
.L0d9baf8c:
    # Line 1986
    b	.L0d9ba1e8
    sd	$zero,480($sp)
.L0d9baf94:
    # Line 1992
    b	.L0d9ba204
    move	$v0,$zero
.L0d9baf9c:
    # Line 1939
    lbu	$a0,8($s3)
    beqz	$a0,.L0d9bb5ec
    # Line 1925
    sd	$zero,464($sp)
    # Line 1939
    sd	$zero,536($sp)
    b	.L0d9ba188
    sd	$zero,568($sp)
.L0d9bafb4:
    b	.L0d9b9ff0
    # Line 1886
    li	$s7,1
.L0d9bafbc:
    # Line 2385
    mtc1	$zero,$f18
    lwc1	$f12,_lit_3f800000
    mtc1	$zero,$f17
    mtc1	$zero,$f16
    sdc1	$f18,288($sp)
    mtc1	$zero,$f15
    sdc1	$f17,296($sp)
    mtc1	$zero,$f14
    sdc1	$f16,280($sp)
    mtc1	$zero,$f13
    sdc1	$f15,272($sp)
    mtc1	$zero,$f5
    sdc1	$f14,312($sp)
    mtc1	$zero,$f20
    sdc1	$f13,304($sp)
    move	$a1,$zero
    b	.L0d9ba9d0
    sdc1	$f12,320($sp)
.L0d9bb004:
    # Line 2395
    beqz	$s4,.L0d9bb664
    # Line 2406
    lui	$s0,0x1
    addu	$s1,$s0,$s8
    lw	$t2,-24072($s1)
    li	$t1,303
    sw	$t1,-24072($s1)
    lw	$t0,-24072($s1)
    lw	$t3,-24072($s1)
    andi	$t0,$t0,0x3ff
    srl	$t3,$t3,0xa
    sll	$t3,$t3,0x17
    lui	$t1,0x2900
    or	$t0,$t0,$t3
    ori	$t1,$t1,0x8000
    sw	$t2,-26892($s1)
    or	$t0,$t0,$t1
    beqz	$v0,.L0d9bb758
    sw	$t0,0($s0)
.L0d9bb04c:
    # Line 2419
    sw	$s6,-26888($s1)
    # Line 2416
    swc1	$f5,-26904($s1)
    swc1	$f5,-26916($s1)
    # Line 2414
    swc1	$f20,-26940($s1)
    # Line 2411
    sw	$s5,-26900($s1)
    ld	$t2,400($sp)
    sw	$t2,-26896($s1)
    # Line 2414
    ldc1	$f19,312($sp)
    ldc1	$f21,304($sp)
    ldc1	$f23,320($sp)
    # Line 2416
    ldc1	$f25,288($sp)
    ldc1	$f27,296($sp)
    ldc1	$f31,272($sp)
    ldc1	$f29,280($sp)
    swc1	$f31,-26908($s1)
    swc1	$f29,-26912($s1)
    swc1	$f27,-26920($s1)
    swc1	$f25,-26924($s1)
    # Line 2414
    swc1	$f23,-26928($s1)
    swc1	$f21,-26932($s1)
    # Line 2419
    beqz	$v0,.L0d9bb77c
    # Line 2414
    swc1	$f19,-26936($s1)
.L0d9bb0a4:
    # Line 2427
    lui	$v1,0x1
    ori	$v1,$v1,0x4400
    sw	$v1,0($s0)
    li	$v0,10
    # Line 2433
    lui	$at,0xcf80
    # Line 2427
    sw	$v0,0($s0)
    # Line 2433
    ori	$at,$at,0xa92f
    sw	$at,0($s0)
    lwc1	$f9,-26940($s1)
    swc1	$f9,0($s0)
    lwc1	$f8,-26936($s1)
    swc1	$f8,0($s0)
    lwc1	$f7,-26932($s1)
    swc1	$f7,0($s0)
    lwc1	$f6,-26928($s1)
    swc1	$f6,0($s0)
    lwc1	$f5,-26924($s1)
    swc1	$f5,0($s0)
    lwc1	$f4,-26920($s1)
    swc1	$f4,0($s0)
    lwc1	$f3,-26916($s1)
    # Line 2437
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 2433
    swc1	$f3,0($s0)
    lwc1	$f2,-26912($s1)
    # Line 2437
    ld	$a1,416($sp)
    # Line 2433
    swc1	$f2,0($s0)
    lwc1	$f1,-26908($s1)
    # Line 2437
    ld	$a3,560($sp)
    # Line 2433
    swc1	$f1,0($s0)
    lwc1	$f0,-26904($s1)
    # Line 2437
    move	$a0,$a3
    subu	$a1,$a1,$a3
    ld	$a3,640($sp)
    # Line 2433
    lui	$ra,0x8080
    swc1	$f0,0($s0)
    ori	$ra,$ra,0xc800
    sw	$ra,0($s0)
    sw	$zero,0($s0)
    # Line 2437
    addiu	$t9,$t9,-27008
    # Line 2433
    sw	$zero,0($s0)
    # Line 2437
    addiu	$a2,$sp,16
    # Line 2433
    sw	$zero,-26880($s1)
    # Line 2437
    subu	$a1,$a1,$a3
    bal __glOdysseyImageMovePixelsCopy
    # Line 2433
    sw	$zero,-26884($s1)
    # Line 2481
    lui	$v0,0x1
    ori	$a1,$v0,0x4001
    sw	$a1,0($s0)
    lw	$a0,-26892($s1)
    beqz	$a0,.L0d9bb190
    nop
    sw	$zero,-26576($s1)
    ori	$a4,$v0,0x443
    sw	$a4,0($s0)
    li	$a3,250
    sw	$a3,0($s0)
    ori	$a2,$v0,0x46
    sw	$a2,0($s0)
    sw	$a2,0($s0)
.L0d9bb190:
    b	.L0d9bad20
    sw	$s7,-26576($s1)
.L0d9bb198:
    # Line 1917
    lw	$a7,1204($s8)
    ld	$a5,640($sp)
    divu	$zero,$a5,$a7
    mfhi	$a6
    andi	$a6,$a6,0xff
    teq	$a7,$zero,0x7
    # Line 1919
    subu	$a7,$a7,$a6
    addu	$a7,$a5,$a7
    movn	$a5,$a7,$a6
    b	.L0d9ba098
    sd	$a5,640($sp)
.L0d9bb1c4:
    # Line 1951
    lbu	$a7,-25137($a7)
    beqz	$a7,.L0d9bb73c
    nop
    lwc1	$f10,744($s8)
    ldc1	$f4,_lit8_bff0000000000000
    cvt.d.s	$f10,$f10
    c.eq.d $f10,$f4
    bc1t .L0d9bb5dc
    nop
    lwc1	$f11,748($s8)
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f4
    li	$t1,1
    # Line 1940
    move	$t0,$zero
    movf	$t0,$t1,$fcc2
    # Line 1951
    b	.L0d9ba194
    sd	$t0,632($sp)
.L0d9bb208:
    # Line 1986
    li	$s4,1
.L0d9bb20c:
    li	$v0,1
    li	$t2,1
    b	.L0d9ba204
    sd	$t2,480($sp)
.L0d9bb21c:
    # Line 2078
    b	.L0d9ba27c
    li	$a4,1
.L0d9bb224:
    # Line 2151
    b	.L0d9ba57c
    li	$v0,1
.L0d9bb22c:
    # Line 2253
    lw	$t0,31776($s8)
    lw	$a1,26044($s1)
    bne	$a1,$t0,.L0d9bb24c
    nop
    lw	$t1,31780($s8)
    lw	$t3,26048($s1)
    beq	$t3,$t1,.L0d9bb2d4
    # Line 2257
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9bb24c:
    # Line 2253
    sw	$a1,31776($s8)
    lw	$t9,26048($s1)
    sw	$t9,31780($s8)
    lw	$t8,-26576($s1)
    beqz	$t8,.L0d9bb290
    lui	$a4,0x1
    sw	$zero,-26576($s1)
    lui	$v1,0x1
    ori	$v1,$v1,0x443
    sw	$v1,0($s0)
    li	$at,250
    lui	$ra,0x1
    sw	$at,0($s0)
    ori	$ra,$ra,0x46
    sw	$ra,0($s0)
    sw	$ra,0($s0)
    lui	$a4,0x1
.L0d9bb290:
    ori	$a4,$a4,0x81d
    sw	$a4,0($s0)
    lw	$a3,31776($s8)
    sw	$a3,0($s0)
    lw	$a1,31780($s8)
    sw	$a1,0($s0)
    lw	$a0,31600($s8)
    dsll32	$a0,$a0,0xb
    bgez	$a0,.L0d9bb82c
    nop
.L0d9bb2b8:
    lw	$a5,26980($s1)
    ori	$a5,$a5,0x2000
    sw	$a5,26980($s1)
    sw	$v0,4120($zero)
    lw	$t1,31780($s8)
    lw	$t0,31776($s8)
    # Line 2257
    # lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9bb2d4:
    addiu	$a5,$s8,31836
    addiu	$a4,$s8,31804
    # Line 2255
    sw	$t1,172($sp)
    # Line 2257
    addiu	$t9,$t9,-256
    addiu	$a3,$s8,31800
    addiu	$a2,$s8,31796
    ld	$a0,336($sp)
    addiu	$a1,$s8,31740
    bal __glOdysseyImageCalcXferReadParams
    # Line 2254
    sw	$t0,168($sp)
    # Line 2264
    lw	$at,26976($s1)
    lui	$v0,0x20
    ori	$v0,$v0,0x83
    or	$at,$at,$v0
    sw	$at,26976($s1)
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$ra,31740($s8)
    sll	$ra,$ra,0xf
    bltz	$ra,.L0d9bb804
    li	$a2,-4096
    b	.L0d9ba8b4
    # Line 2271
    mtc1	$zero,$f5
.L0d9bb330:
    # Line 1951
    sd	$zero,536($sp)
    b	.L0d9ba17c
    sd	$zero,568($sp)
.L0d9bb33c:
    # Line 1940
    b	.L0d9bb20c
    sd	$zero,632($sp)
.L0d9bb344:
    # Line 1951
    sd	$zero,536($sp)
    b	.L0d9ba17c
    sd	$zero,568($sp)
.L0d9bb350:
    # Line 2605
    andi	$v1,$t0,0xffff
    sd	$v1,352($sp)
    sd	$s6,344($sp)
    sd	$s4,720($sp)
    sd	$s3,728($sp)
    # Line 2609
    addiu	$a0,$sp,16
    ld	$a5,24($a0)
    ld	$a3,16($a0)
    ld	$a2,8($a0)
    ld	$a0,16($sp)
    addiu	$a1,$sp,208
    # Line 2606
    ldc1	$f12,288($sp)
    # Line 2609
    sd	$a2,8($a1)
    sd	$a3,16($a1)
    sd	$a5,24($a1)
    # Line 2606
    trunc.w.s	$f12,$f12
    # Line 2609
    sd	$a0,208($sp)
    # Line 2611
    move	$v0,$a4
    # Line 2610
    ld	$a2,560($sp)
    # Line 2611
    blez	$v1,.L0d9bac8c
    # Line 2606
    mfc1	$a7,$f12
    sd	$a2,368($sp)
    sd	$a4,360($sp)
    sd	$s8,736($sp)
    # Line 2611
    la	$s8,sub_0d9c0000
    move	$t0,$zero
    li	$s6,10
    ldc1	$f14,296($sp)
    ori	$s2,$s0,0x4400
    lui	$s5,0x8080
    ldc1	$f13,272($sp)
    lui	$s4,0xcf80
    ori	$s5,$s5,0xc800
    sdc1	$f14,240($sp)
    mov.s	$f20,$f5
    ori	$s4,$s4,0xa92f
    sdc1	$f13,248($sp)
    addiu	$s8,$s8,-27008
.L0d9bb3e8:
    ld	$at,504($sp)
    lw	$at,7916($at)
    ld	$a6,352($sp)
    addiu	$at,$at,-16
    # Line 2618
    ld	$t9,344($sp)
    # Line 2611
    slt	$a5,$at,$a6
    movz	$at,$a6,$a5
    # Line 2618
    multu	$at,$t9
    lw	$a4,232($sp)
    lui	$a1,0xf
    lui	$a2,0xfff0
    ori	$a1,$a1,0xffff
    # Line 2625
    ld	$ra,400($sp)
    # Line 2618
    and	$a2,$a2,$a4
    mflo	$a3
    # Line 2619
    lw	$v1,40($sp)
    # Line 2628
    addu	$a0,$at,$a7
    # Line 2618
    and	$a3,$a1,$a3
    # Line 2628
    ldc1	$f31,248($sp)
    mtc1	$a0,$f0
    # Line 2618
    or	$a2,$a2,$a3
    # Line 2619
    lw	$v0,36($sp)
    and	$v1,$a1,$v1
    and	$a1,$a1,$a2
    # Line 2618
    sw	$a2,232($sp)
    # Line 2619
    subu	$v1,$v1,$a1
    # Line 2628
    mtc1	$a7,$f1
    cvt.s.w	$f0,$f0
    # Line 2619
    addu	$v0,$v0,$v1
    sw	$v0,228($sp)
    # Line 2628
    swc1	$f20,-26904($s1)
    swc1	$f31,-26908($s1)
    cvt.s.w	$f1,$f1
    swc1	$f0,-26912($s1)
    swc1	$f20,-26916($s1)
    # Line 2625
    sw	$ra,-26896($s1)
    # Line 2628
    swc1	$f1,-26924($s1)
    ldc1	$f1,240($sp)
    # Line 2625
    sw	$at,-26900($s1)
    # Line 2628
    swc1	$f1,-26920($s1)
    # Line 2635
    sw	$s2,0($s0)
    sw	$s6,0($s0)
    # Line 2640
    sw	$s4,0($s0)
    lwc1	$f29,-26940($s1)
    swc1	$f29,0($s0)
    lwc1	$f27,-26936($s1)
    swc1	$f27,0($s0)
    lwc1	$f25,-26932($s1)
    swc1	$f25,0($s0)
    lwc1	$f23,-26928($s1)
    swc1	$f23,0($s0)
    lwc1	$f21,-26924($s1)
    sd	$at,680($sp)
    swc1	$f21,0($s0)
    lwc1	$f19,-26920($s1)
    # Line 2628
    sd	$a0,688($sp)
    # Line 2621
    multu	$t0,$t9
    # Line 2640
    swc1	$f19,0($s0)
    lwc1	$f18,-26916($s1)
    # Line 2621
    ld	$a0,368($sp)
    # Line 2640
    swc1	$f18,0($s0)
    lwc1	$f17,-26912($s1)
    # Line 2622
    ld	$a1,360($sp)
    # Line 2640
    swc1	$f17,0($s0)
    # Line 2621
    mflo	$t8
    # Line 2640
    lwc1	$f16,-26908($s1)
    # Line 2622
    subu	$a1,$a1,$t8
    sd	$a1,360($sp)
    # Line 2640
    swc1	$f16,0($s0)
    lwc1	$f15,-26904($s1)
    # Line 2621
    addu	$a0,$t8,$a0
    sd	$a0,368($sp)
    # Line 2640
    swc1	$f15,0($s0)
    sw	$s5,0($s0)
    sw	$zero,0($s0)
    # Line 2643
    move	$t9,$s8
    # Line 2640
    sw	$zero,0($s0)
    sw	$zero,-26880($s1)
    # Line 2643
    addiu	$a2,$sp,208
    bal __glOdysseyImageMovePixelsCopy
    # Line 2640
    sw	$zero,-26884($s1)
    ld	$t1,680($sp)
    # Line 2648
    lui	$a0,0x1
    ori	$a0,$a0,0x4001
    sw	$a0,0($s0)
    li	$a3,250
    lui	$a1,0x1
    lw	$v1,-26892($s1)
    lui	$a4,0x1
    ori	$a1,$a1,0x46
    ld	$v0,352($sp)
    ori	$a4,$a4,0x443
    # Line 2652
    move	$t0,$t1
    ld	$a2,688($sp)
    # Line 2648
    beqz	$v1,.L0d9bb57c
    # Line 2653
    subu	$v0,$v0,$t1
    # Line 2648
    sw	$zero,-26576($s1)
    sw	$a4,0($s0)
    sw	$a3,0($s0)
    sw	$a1,0($s0)
    sw	$a1,0($s0)
.L0d9bb57c:
    # Line 2654
    move	$a7,$a2
    # Line 2653
    sd	$v0,352($sp)
    # Line 2654
    bgtz	$v0,.L0d9bb3e8
    # Line 2648
    sw	$s7,-26576($s1)
    sd	$s3,728($sp)
    b	.L0d9bac8c
    ld	$s8,736($sp)
.L0d9bb598:
    # Line 2327
    lw	$a5,31836($s8)
    nor	$a5,$a5,$zero
    lui	$a6,0xf0
    and	$a5,$a5,$a6
    bnez	$a5,.L0d9ba94c
    nop
    b	.L0d9ba954
    # Line 2332
    ld	$a0,504($sp)
.L0d9bb5b8:
    # Line 2708
    ori	$a7,$s0,0x658
    sw	$a7,0($s0)
    # Line 2709
    lui	$a6,0x12
    b	.L0d9bad94
    sw	$a6,0($s0)
.L0d9bb5cc:
    # Line 1886
    b	.L0d9b9ff0
    li	$s7,1
.L0d9bb5d4:
    b	.L0d9ba9d0
    # Line 2385
    move	$a1,$zero
.L0d9bb5dc:
    b	.L0d9ba194
    # Line 1940
    sd	$zero,632($sp)
.L0d9bb5e4:
    # Line 1782
    b	.L0d9b9ea4
    move	$s5,$zero
.L0d9bb5ec:
    # Line 1940
    sd	$zero,536($sp)
    b	.L0d9bb33c
    sd	$zero,568($sp)
.L0d9bb5f8:
    ld	$s7,696($sp)
    ldc1	$f20,672($sp)
    # Line 2753
    ld	$gp,624($sp)
    ld	$s3,600($sp)
    ld	$s4,584($sp)
    ld	$s6,608($sp)
    # Line 2740
    lw	$s0,132($sp)
    sw	$s0,31796($s8)
    # Line 2753
    ld	$s0,592($sp)
    # Line 2739
    lw	$s2,128($sp)
    sw	$s2,31740($s8)
    # Line 2753
    ld	$s2,616($sp)
    # Line 2743
    lw	$t1,144($sp)
    # Line 2742
    lw	$t2,140($sp)
    # Line 2741
    lw	$t3,136($sp)
    sw	$t3,31800($s8)
    # Line 2742
    sw	$t2,31804($s8)
    # Line 2743
    sw	$t1,31836($s8)
    # Line 2753
    ld	$s8,576($sp)
    # Line 2744
    lw	$t0,26976($s1)
    ld	$ra,712($sp)
    ori	$t0,$t0,0x83
    sw	$t0,26976($s1)
    sw	$v0,4120($zero)
    # Line 2753
    ld	$s1,520($sp)
    jr	$ra
    addiu	$sp,$sp,768
.L0d9bb664:
    # Line 2419
    beqz	$v0,.L0d9bb780
    # Line 2456
    ld	$a4,416($sp)
    # Line 2419
    lui	$s0,0x1
    b	.L0d9bb0a4
    addu	$s1,$s0,$s8
.L0d9bb678:
    # Line 2527
    ld	$t2,632($sp)
    # Line 2511
    swc1	$f5,-26904($s1)
    swc1	$f5,-26916($s1)
    ldc1	$f6,288($sp)
    ldc1	$f4,296($sp)
    ldc1	$f2,272($sp)
    ldc1	$f3,280($sp)
    swc1	$f2,-26908($s1)
    swc1	$f3,-26912($s1)
    swc1	$f4,-26920($s1)
    swc1	$f6,-26924($s1)
    # Line 2527
    li	$a5,16
    lw	$t1,52($s3)
    movz	$a5,$zero,$t2
    addiu	$a7,$sp,16
    # lw $t9, -30980($gp) # &__glOdysseyAssignToPMObj
    sll	$t1,$t1,0x10
    move	$a6,$zero
    or	$a5,$a5,$t1
    ld	$t1,456($sp)
    ld	$a3,560($sp)
    li	$t0,9
    li	$t2,11
    move	$a0,$s8
    lw	$a2,20($s3)
    movz	$t0,$t2,$t1
    lw	$a1,16($s3)
    jal	__glOdysseyAssignToPMObj
    or	$a5,$a5,$t0
    andi	$a6,$v0,0xff
    sd	$s4,720($sp)
    bnez	$a6,.L0d9bac8c
    sd	$s3,728($sp)
    # Line 2542
    # lw $t9, -26792($gp) # &__glSetError
    sd	$s8,736($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d9baf24
    ld	$s1,520($sp)
.L0d9bb714:
    # Line 2085
    lw	$t9,16($s8)
    la	$a1,sub_0daf0000
    move	$a0,$s8
    jalr	$t9
    addiu	$a1,$a1,-28208
    # Line 2087
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9baf24
    ld	$s1,520($sp)
.L0d9bb73c:
    # Line 1940
    b	.L0d9ba194
    sd	$zero,632($sp)
.L0d9bb744:
    # Line 1843
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9baf24
    ld	$s1,520($sp)
.L0d9bb758:
    # Line 2406
    ori	$a3,$s0,0x658
    sw	$a3,0($s0)
    lui	$a2,0x12
    b	.L0d9bb04c
    sw	$a2,0($s0)
.L0d9bb76c:
    # Line 2686
    jalr	$t9
    li	$a0,1285
    b	.L0d9baf24
    ld	$s1,520($sp)
.L0d9bb77c:
    # Line 2456
    ld	$a4,416($sp)
.L0d9bb780:
    ld	$t3,560($sp)
    move	$a0,$s8
    li	$t0,8
    move	$a3,$t3
    subu	$a4,$a4,$t3
    ld	$t3,640($sp)
    addiu	$a7,$sp,16
    movz	$t0,$zero,$s4
    ld	$t1,632($sp)
    li	$t9,3
    ld	$t8,456($sp)
    li	$t2,16
    li	$a5,1
    movz	$t2,$zero,$t1
    lw	$t1,52($s3)
    move	$a6,$zero
    movz	$a5,$t9,$t8
    # lw $t9, -30980($gp) # &__glOdysseyAssignToPMObj
    or	$a5,$a5,$t2
    sll	$t1,$t1,0x10
    lw	$a2,20($s3)
    subu	$a4,$a4,$t3
    or	$t0,$t0,$t1
    lw	$a1,16($s3)
    jal	__glOdysseyAssignToPMObj
    or	$a5,$a5,$t0
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d9bad20
    # Line 2472
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9baf24
    ld	$s1,520($sp)
.L0d9bb804:
    # Line 2271
    # lw $t9, -31140($gp) # &__glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    bal __glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    nop
    # Line 2286
    ld	$at,536($sp)
    li	$v0,2
    li	$a2,-4096
    bnez	$at,.L0d9ba8c0
    # Line 2271
    mov.s	$f5,$f0
    b	.L0d9ba92c
    # Line 2305
    ld	$at,632($sp)
.L0d9bb82c:
    # Line 2253
    sw	$zero,164($sp)
    sw	$zero,160($sp)
    sw	$zero,156($sp)
    sw	$zero,152($sp)
    lw	$a4,31776($s8)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,152($sp)
    lw	$a3,31776($s8)
    andi	$a3,$a3,0xfff
    sw	$a3,160($sp)
    lw	$a2,31780($s8)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,156($sp)
    move	$a0,$s8
    lui	$a1,0x6f64
    lw	$v0,31780($s8)
    ori	$a1,$a1,0xd
    addiu	$a2,$sp,152
    andi	$v0,$v0,0xfff
    jal	__glOdysseyIoctl
    sw	$v0,164($sp)
    b	.L0d9bb2b8
    li	$v0,2
.end __glOdysseyImageMovePixelsDMAtoGfx

# Function: __glOdysseyImageMovePixelsDMAtoHost
# Declared: Line 2756 (Source lines: 2758-3110)
# Address: 0x0d9bb8a0 - 0x0d9bbfe8 (Size: 1864 bytes, Frame: 176)
.globl __glOdysseyImageMovePixelsDMAtoHost
.ent __glOdysseyImageMovePixelsDMAtoHost
__glOdysseyImageMovePixelsDMAtoHost:
    # Line 2758
    addiu	$sp,$sp,-304
    sd	$ra,256($sp)
    sd	$s0,264($sp)
    sd	$s1,272($sp)
    sd	$gp,280($sp)
    # Line 2767
    sw	$zero,4($sp)
    # Line 2766
    sw	$zero,0($sp)
    # Line 2758
    sd	$s2,248($sp)
    # Line 2792
    lw	$s2,4112($zero)
    sd	$zero,8($sp)
    sd	$zero,40($sp)
    addiu	$a3,$sp,40
    sw	$zero,16($a3)
    addiu	$t1,$sp,8
    sd	$zero,8($a3)
    sd	$zero,24($t1)
    # Line 2758
    lui	$a6,0x14
    # Line 2792
    sd	$zero,16($t1)
    # Line 2758
    addiu	$a6,$a6,-13072
    # Line 2792
    sd	$zero,8($t1)
    # Line 2830
    lw	$a7,40($a0)
    # Line 2758
    addu	$gp,$t9,$a6
    # Line 2835
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    # Line 2805
    lwc1	$f0,16($a2)
    # Line 2806
    lwc1	$f1,20($a2)
    # Line 2807
    lwc1	$f2,24($a2)
    # Line 2808
    lwc1	$f3,28($a2)
    # Line 2811
    lwc1	$f4,0($a2)
    # Line 2812
    lwc1	$f5,4($a2)
    # Line 2830
    li	$t0,1
    # Line 2813
    lwc1	$f6,8($a2)
    # Line 2830
    xor	$a7,$a7,$t0
    # Line 2814
    lwc1	$f7,12($a2)
    # Line 2830
    sltiu	$a7,$a7,1
    sb	$a7,49($sp)
    # Line 2833
    lbu	$a2,0($a0)
    sb	$a2,48($sp)
    # Line 2814
    trunc.w.s	$f7,$f7
    # Line 2758
    move	$s1,$a1
    # Line 2835
    lw	$a1,12($a0)
    # Line 2813
    trunc.w.s	$f6,$f6
    # Line 2758
    move	$s0,$a0
    # Line 2835
    lw	$a0,8($a0)
    # Line 2812
    trunc.w.s	$f5,$f5
    # Line 2814
    mfc1	$t1,$f7
    # Line 2811
    trunc.w.s	$f4,$f4
    # Line 2813
    mfc1	$t0,$f6
    # Line 2814
    sd	$t1,200($sp)
    # Line 2808
    trunc.w.s	$f3,$f3
    # Line 2812
    mfc1	$a7,$f5
    # Line 2813
    sd	$t0,216($sp)
    # Line 2807
    trunc.w.s	$f2,$f2
    # Line 2811
    mfc1	$a5,$f4
    # Line 2812
    sd	$a7,224($sp)
    # Line 2806
    trunc.w.s	$f1,$f1
    # Line 2808
    mfc1	$a4,$f3
    # Line 2811
    sd	$a5,208($sp)
    # Line 2805
    trunc.w.s	$f0,$f0
    # Line 2807
    mfc1	$v1,$f2
    # Line 2808
    sd	$a4,160($sp)
    # Line 2806
    mfc1	$v0,$f1
    # Line 2807
    sd	$v1,240($sp)
    # Line 2805
    mfc1	$at,$f0
    # Line 2806
    sd	$v0,168($sp)
    # Line 2835
    move	$a2,$s1
    bal __glOdysseyImageCalcXferReadParams
    sd	$at,232($sp)
    lbu	$t2,40($sp)
    # Line 2870
    li	$a1,1027
    # Line 2864
    li	$ra,1027
    # Line 2870
    li	$a0,1025
    # Line 2864
    li	$t9,1026
    # Line 2835
    beqz	$t2,.L0d9bbfbc
    # Line 2864
    li	$at,1
    # Line 2851
    lbu	$t3,9($s1)
    beqz	$t3,.L0d9bbf64
    # Line 2878
    li	$a2,1
    # Line 2864
    lw	$v0,1236($s2)
    li	$t8,1029
    beq	$v0,$t8,.L0d9bbf4c
    # Line 2870
    move	$a2,$zero
    # Line 2864
    beq	$v0,$t9,.L0d9bbf4c
    nop
    beq	$v0,$ra,.L0d9bbf4c
    nop
    sd	$at,192($sp)
.L0d9bb9f8:
    # Line 2870
    li	$v1,1031
    beq	$v0,$v1,.L0d9bbf54
    nop
    beq	$v0,$a0,.L0d9bbf54
    nop
    beq	$v0,$a1,.L0d9bbf54
    nop
    li	$a2,1
.L0d9bba18:
    # Line 2881
    lw	$v0,8($s0)
.L0d9bba1c:
    li	$a3,6402
    beq	$v0,$a3,.L0d9bbf5c
    li	$a4,6401
    beq	$v0,$a4,.L0d9bbf5c
    move	$v0,$zero
.L0d9bba30:
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,-5312
    addiu	$a5,$sp,4
    addiu	$a4,$sp,0
    lw	$a1,48($s1)
    andi	$a3,$v0,0xff
    bal __glOdysseyImageCalcXferWriteParams
    lw	$a0,44($s1)
    beqz	$v0,.L0d9bbf30
    nop
    # Line 2895
    lw	$v0,4($s1)
    lw	$at,4($s0)
    # Line 2913
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    lw	$a1,12($s0)
    # Line 2895
    li	$ra,64
    xor	$at,$at,$v0
    movz	$ra,$zero,$at
    sd	$ra,144($sp)
    # Line 2913
    jal	__glSpecElementsPerGroup
    lw	$a0,8($s0)
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    sd	$v0,184($sp)
    lw	$a0,12($s0)
    jal	__glSpecBytesPerElement
    sd	$s3,288($sp)
    ld	$a2,184($sp)
    mult	$a2,$v0
    lw	$a0,40($s0)
    li	$a1,1
    mflo	$s3
    # Line 2920
    lw	$a2,24($s0)
    xor	$a0,$a0,$a1
    srl	$a1,$s3,0x1
    movz	$s3,$a1,$a0
    sltu	$v1,$a2,$s3
    beqz	$v1,.L0d9bbacc
    nop
    # Line 2924
    move	$a2,$s3
    sw	$s3,24($s0)
.L0d9bbacc:
    # Line 2926
    lw	$a5,16($s0)
    multu	$a5,$s3
    dsll32	$a3,$a2,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f13
    mflo	$a4
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f12
    cvt.s.l	$f13,$f13
    cvt.s.l	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    sd	$s4,296($sp)
    sdc1	$f13,128($sp)
    jal	ceilf
    div.s	$f12,$f12,$f13
    ld	$t8,232($sp)
    ld	$t1,240($sp)
    slt	$t9,$t1,$t8
    slt	$s4,$t8,$t1
    move	$t2,$t1
    movn	$t1,$t8,$s4
    ldc1	$f13,128($sp)
    movn	$t2,$t8,$t9
    subu	$t3,$t2,$t1
    multu	$s3,$t3
    mul.s	$f13,$f0,$f13
    trunc.l.s	$f13,$f13
    # Line 2934
    lbu	$t3,0($s0)
    # Line 2926
    dmfc1	$a7,$f13
    ld	$v0,160($sp)
    ld	$t0,168($sp)
    sll	$a7,$a7,0x0
    mflo	$s4
    sd	$s4,176($sp)
    sltu	$a6,$a7,$s4
    # Line 2934
    beqz	$t3,.L0d9bbf70
    movz	$s4,$a7,$a6
.L0d9bbb64:
    # Line 2945
    move	$a3,$v0
    slt	$a4,$t0,$v0
    movn	$a3,$t0,$a4
    multu	$s4,$a3
    mflo	$a1
    nop
    nop
    multu	$t1,$s3
    # Line 2950
    slt	$a2,$v0,$t0
    movz	$t0,$v0,$a2
    # Line 2945
    mflo	$v1
    nop
    nop
    # Line 2950
    multu	$s4,$t0
    mflo	$at
    nop
    nop
    multu	$t2,$s3
    # Line 2945
    lw	$ra,44($s0)
    # Line 2988
    move	$a5,$zero
    move	$a0,$s2
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    addiu	$a4,$sp,64
    lw	$a2,20($s1)
    # Line 2945
    addu	$v0,$ra,$a1
    # Line 2988
    lw	$a1,16($s1)
    # Line 2950
    addu	$ra,$ra,$at
    mflo	$at
    # Line 2988
    move	$a3,$a2
    # Line 2950
    addu	$ra,$ra,$at
    sd	$ra,152($sp)
    # Line 2945
    addu	$v0,$v0,$v1
    # Line 2988
    jal	__glOdysseyOpenPMObjReference
    # Line 2945
    sd	$v0,136($sp)
    # Line 2988
    andi	$a5,$v0,0xff
    beqz	$a5,.L0d9bbfd0
    # Line 3000
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3006
    lw	$t2,20($s1)
    addiu	$t1,$sp,64
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t2,24($s1)
    # Line 3025
    lui	$a7,0x1fff
    # Line 3006
    lw	$t1,0($t1)
    # Line 3025
    ori	$a7,$a7,0xffff
    # Line 3006
    lui	$a5,0x1000
    lbu	$t0,9($s1)
    ori	$a5,$a5,0x19
    addu	$t1,$t1,$t2
    movz	$a5,$t1,$t0
    li	$t3,1
    # Line 3024
    lw	$a0,8($sp)
    lui	$a2,0x2000
    movz	$t3,$zero,$t0
    nor	$a2,$a2,$zero
    andi	$a1,$t3,0x1
    # Line 3027
    ld	$v1,216($sp)
    # Line 3024
    and	$a0,$a0,$a2
    sll	$a1,$a1,0x1d
    # Line 3026
    lw	$v0,12($sp)
    # Line 3024
    or	$a0,$a0,$a1
    # Line 3025
    lui	$a1,0xe000
    and	$a5,$a5,$a7
    # Line 3026
    ld	$a3,200($sp)
    # Line 3025
    and	$a0,$a0,$a1
    or	$a0,$a0,$a5
    # Line 3026
    ld	$a1,224($sp)
    andi	$v0,$v0,0xffff
    # Line 3027
    move	$ra,$v1
    # Line 3026
    move	$a2,$a3
    # Line 3027
    ld	$t2,208($sp)
    # Line 3026
    slt	$a4,$a1,$a3
    # Line 3027
    lui	$t1,0xffff
    # Line 3026
    movn	$a2,$a1,$a4
    # Line 3027
    slt	$a6,$t2,$v1
    # Line 3026
    sll	$a4,$a2,0x10
    # Line 3027
    movn	$ra,$t2,$a6
    # Line 3026
    or	$v0,$v0,$a4
    # Line 3025
    sw	$a0,8($sp)
    # Line 3027
    andi	$at,$ra,0xffff
    and	$v0,$t1,$v0
    # Line 3033
    andi	$t3,$t3,0x7
    # Line 3027
    or	$at,$at,$v0
    sw	$at,12($sp)
    # Line 3033
    sll	$t3,$t3,0x1c
    # Line 3027
    lw	$a4,28($s1)
    # Line 3028
    li	$a6,1
    # Line 3027
    li	$a5,4096
    # Line 3031
    lui	$t0,0xf0
    xor	$a5,$a4,$a5
    lw	$a7,24($sp)
    nor	$t0,$t0,$zero
    movz	$a4,$a6,$a5
    and	$a7,$a7,$t0
    # Line 3029
    slt	$v0,$a3,$a1
    # Line 3028
    lw	$t8,16($sp)
    # Line 3032
    lui	$t0,0xf00
    # Line 3029
    movz	$a1,$a3,$v0
    # Line 3030
    slt	$v0,$v1,$t2
    # Line 3028
    li	$at,-4096
    # Line 3030
    movz	$t2,$v1,$v0
    # Line 3028
    and	$t8,$t8,$at
    # Line 3029
    lw	$at,20($sp)
    # Line 3030
    subu	$t2,$t2,$ra
    # Line 3029
    subu	$a1,$a1,$a2
    # Line 3031
    lw	$ra,0($sp)
    # Line 3029
    sll	$a1,$a1,0x10
    andi	$at,$at,0xffff
    # Line 3030
    andi	$t2,$t2,0xffff
    # Line 3029
    or	$at,$at,$a1
    # Line 3031
    andi	$ra,$ra,0xf
    # Line 3030
    and	$t1,$t1,$at
    # Line 3031
    sll	$ra,$ra,0x14
    # Line 3030
    or	$t1,$t1,$t2
    # Line 3032
    lw	$t2,4($sp)
    nor	$t0,$t0,$zero
    # Line 3031
    or	$a7,$a7,$ra
    # Line 3032
    and	$a7,$a7,$t0
    andi	$t2,$t2,0xf
    # Line 3033
    lui	$t0,0x7000
    # Line 3032
    sll	$t2,$t2,0x18
    # Line 3050
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 3033
    nor	$t0,$t0,$zero
    # Line 3032
    or	$a7,$a7,$t2
    # Line 3038
    lbu	$a6,41($sp)
    # Line 3033
    and	$a7,$a7,$t0
    # Line 3034
    lui	$t0,0x7fff
    # Line 3047
    lw	$t2,32($sp)
    # Line 3034
    ori	$t0,$t0,0xffff
    # Line 3033
    or	$a7,$a7,$t3
    # Line 3028
    andi	$a4,$a4,0xfff
    # Line 3034
    and	$a7,$a7,$t0
    ld	$t0,192($sp)
    # Line 3050
    addiu	$t9,$t9,-3616
    # Line 3028
    or	$t8,$t8,$a4
    sw	$t8,16($sp)
    # Line 3050
    move	$a0,$s3
    # Line 3030
    sw	$t1,20($sp)
    # Line 3034
    sll	$t0,$t0,0x1f
    # Line 3038
    andi	$a6,$a6,0x7
    # Line 3034
    or	$a7,$a7,$t0
    sw	$a7,24($sp)
    # Line 3047
    lui	$ra,0xfff0
    # Line 3035
    lui	$t3,0xf
    lw	$t1,40($s1)
    # Line 3047
    and	$t2,$t2,$ra
    ori	$t8,$t3,0xffff
    # Line 3035
    nor	$t3,$t3,$zero
    andi	$t1,$t1,0xf
    and	$a7,$a7,$t3
    # Line 3036
    lw	$t3,44($sp)
    # Line 3035
    sll	$t1,$t1,0x10
    or	$a7,$a7,$t1
    # Line 3036
    li	$t1,0xe000
    # Line 3047
    ld	$t0,176($sp)
    # Line 3036
    andi	$t3,$t3,0x7
    nor	$t1,$t1,$zero
    sll	$t3,$t3,0xd
    and	$a7,$a7,$t1
    # Line 3037
    lbu	$t1,42($sp)
    # Line 3047
    and	$t8,$t0,$t8
    # Line 3036
    or	$a7,$a7,$t3
    # Line 3037
    li	$t3,-249
    andi	$t1,$t1,0x1f
    and	$a7,$a7,$t3
    sll	$t1,$t1,0x3
    ld	$s0,144($sp)
    or	$a7,$a7,$t1
    # Line 3038
    li	$t1,-8
    # Line 3044
    subu	$t0,$s4,$t0
    sw	$t0,28($sp)
    # Line 3038
    and	$a7,$a7,$t1
    # Line 3047
    or	$t2,$t2,$t8
    sw	$t2,32($sp)
    # Line 3038
    or	$a6,$a6,$a7
    # Line 3039
    ori	$a6,$a6,0x1000
    # Line 3050
    bal __glOdysseyImageCalcPixelModeFields
    # Line 3039
    sw	$a6,24($sp)
    # Line 3050
    lw	$a4,36($sp)
    lui	$a6,0x7
    nor	$a6,$a6,$zero
    andi	$a5,$v0,0x7
    and	$a4,$a4,$a6
    # Line 3058
    li	$a6,-32
    # Line 3050
    sll	$a5,$a5,0x10
    or	$a4,$a4,$a5
    # Line 3053
    li	$a5,-4097
    and	$a4,$a4,$a5
    # Line 3054
    li	$a5,-2049
    and	$a4,$a4,$a5
    # Line 3055
    li	$a5,-1025
    and	$a4,$a4,$a5
    # Line 3056
    li	$a5,-513
    and	$a4,$a4,$a5
    # Line 3057
    li	$a5,-481
    and	$a4,$a4,$a5
    # Line 3059
    lui	$a5,0xff
    ori	$a5,$a5,0xffff
    # Line 3058
    and	$a4,$a4,$a6
    # Line 3059
    and	$a4,$a4,$a5
    sll	$a5,$s0,0x18
    or	$a4,$a4,$a5
    sw	$a4,36($sp)
    # Line 3067
    lw	$a3,31600($s2)
    andi	$a3,$a3,0x400
    beqz	$a3,.L0d9bbed0
    ld	$s3,288($sp)
    lui	$a7,0x2
    ori	$a7,$a7,0x1ee0
    addu	$a7,$a7,$s2
    lw	$a7,0($a7)
    beqz	$a7,.L0d9bbed4
    # Line 3072
    li	$a5,2
    # Line 3067
    lw	$t0,1816($s2)
    andi	$t0,$t0,0x4
    beqz	$t0,.L0d9bbed4
    # Line 3072
    li	$a5,2
    # Line 3070
    b	.L0d9bbed4
    move	$a5,$zero
.L0d9bbed0:
    # Line 3072
    li	$a5,2
.L0d9bbed4:
    # Line 3074
    # lw $t9, -30976($gp) # &__glOdysseyReadFromPMObj
    ld	$a4,152($sp)
    move	$a0,$s2
    ld	$t0,136($sp)
    addiu	$a7,$sp,8
    move	$a6,$zero
    lw	$a2,20($s1)
    move	$a3,$t0
    subu	$a4,$a4,$t0
    lw	$a1,16($s1)
    jal	__glOdysseyReadFromPMObj
    subu	$a4,$a4,$s4
    andi	$t1,$v0,0xff
    beqz	$t1,.L0d9bbf94
    ld	$s4,296($sp)
    # Line 3097
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    lw	$a2,20($s1)
    move	$a0,$s2
    lw	$a1,16($s1)
    jal	__glOdysseyClosePMObjReference
    move	$a3,$a2
    andi	$t2,$v0,0xff
    beqz	$t2,.L0d9bbfa8
.L0d9bbf30:
    ld	$s2,248($sp)
.L0d9bbf34:
    ld	$ra,256($sp)
    ld	$s0,264($sp)
    ld	$s1,272($sp)
    # Line 3110
    ld	$gp,280($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0d9bbf4c:
    # Line 2864
    b	.L0d9bb9f8
    sd	$zero,192($sp)
.L0d9bbf54:
    # Line 2870
    b	.L0d9bba1c
    # Line 2881
    lw	$v0,8($s0)
.L0d9bbf5c:
    b	.L0d9bba30
    li	$v0,1
.L0d9bbf64:
    # Line 2878
    li	$t3,1
    b	.L0d9bba18
    sd	$t3,192($sp)
.L0d9bbf70:
    # Line 2938
    lw	$t9,1160($s2)
    divu	$zero,$s4,$t9
    mfhi	$t8
    andi	$t8,$t8,0xff
    teq	$t9,$zero,0x7
    # Line 2942
    subu	$t9,$t9,$t8
    addu	$t9,$s4,$t9
    b	.L0d9bbb64
    movn	$s4,$t9,$t8
.L0d9bbf94:
    # Line 3090
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9bbf34
    ld	$s2,248($sp)
.L0d9bbfa8:
    # Line 3107
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9bbf34
    ld	$s2,248($sp)
.L0d9bbfbc:
    # Line 2850
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9bbf34
    ld	$s2,248($sp)
.L0d9bbfd0:
    ld	$s4,296($sp)
    ld	$s3,288($sp)
    # Line 3000
    jalr	$t9
    li	$a0,1285
    b	.L0d9bbf34
    ld	$s2,248($sp)
.end __glOdysseyImageMovePixelsDMAtoHost

# Function: __glOdysseyImageMovePixelsTexture
# Declared: Line 3126 (Source lines: 3130-3598)
# Address: 0x0d9bbff0 - 0x0d9bd0ac (Size: 4284 bytes, Frame: 176)
.globl __glOdysseyImageMovePixelsTexture
.ent __glOdysseyImageMovePixelsTexture
__glOdysseyImageMovePixelsTexture:
    # Line 3130
    addiu	$sp,$sp,-432
    sd	$s4,360($sp)
    # Line 3139
    sw	$zero,12($sp)
    # Line 3134
    sw	$zero,8($sp)
    # Line 3133
    sw	$zero,4($sp)
    # Line 3132
    sw	$zero,0($sp)
    # Line 3206
    lw	$v1,20($a1)
    # Line 3130
    move	$s4,$a1
    # Line 3206
    lw	$a1,16($a1)
    # Line 3130
    sd	$ra,368($sp)
    sd	$s6,392($sp)
    sd	$s5,336($sp)
    sd	$s1,328($sp)
    sd	$s3,376($sp)
    sd	$s2,344($sp)
    # Line 3172
    lw	$s2,4112($zero)
    # Line 3130
    sd	$s0,352($sp)
    # Line 3186
    lw	$s1,31940($s2)
    # Line 3187
    lw	$a5,32696($s2)
    lw	$a4,32692($s2)
    sd	$a4,280($sp)
    sd	$a5,288($sp)
    # Line 3186
    sw	$s1,16($sp)
    sd	$gp,384($sp)
    # Line 3187
    lw	$v0,32688($s2)
    # Line 3196
    lw	$t3,31836($s2)
    # Line 3193
    lw	$t2,31804($s2)
    # Line 3192
    lw	$t1,31800($s2)
    # Line 3191
    lw	$t0,31796($s2)
    # Line 3188
    lw	$a6,32736($s2)
    # Line 3185
    lw	$at,31744($s2)
    # Line 3189
    lui	$s0,0x1
    # Line 3185
    sd	$at,264($sp)
    # Line 3189
    addu	$s3,$s0,$s2
    # Line 3186
    lw	$at,31944($s2)
    # Line 3189
    lw	$s5,-26980($s3)
    lw	$s6,-26976($s3)
    lw	$ra,-26968($s3)
    # Line 3188
    sd	$a6,320($sp)
    # Line 3186
    lw	$a6,31948($s2)
    # Line 3191
    sd	$t0,200($sp)
    # Line 3186
    lw	$t0,31952($s2)
    # Line 3192
    sd	$t1,208($sp)
    # Line 3186
    lw	$t1,31956($s2)
    # Line 3193
    sd	$t2,184($sp)
    # Line 3186
    lw	$t2,31960($s2)
    # Line 3196
    sd	$t3,240($sp)
    # Line 3186
    lw	$t3,31964($s2)
    # Line 3189
    lw	$t8,-26972($s3)
    # Line 3187
    sd	$v0,272($sp)
    # Line 3186
    addiu	$v0,$sp,16
    # Line 3189
    sd	$t8,312($sp)
    # Line 3186
    sw	$t3,24($v0)
    sw	$t2,20($v0)
    sw	$t1,16($v0)
    sw	$t0,12($v0)
    # Line 3190
    lw	$a7,31740($s2)
    sd	$a7,192($sp)
    # Line 3130
    lui	$a7,0x14
    # Line 3186
    sw	$a6,8($v0)
    # Line 3130
    addiu	$a7,$a7,-14944
    # Line 3206
    move	$a5,$zero
    # Line 3189
    sd	$ra,256($sp)
    # Line 3130
    addu	$gp,$t9,$a7
    # Line 3206
    addiu	$a4,$sp,48
    # Line 3130
    move	$s1,$a2
    # Line 3206
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    move	$a2,$v1
    # Line 3189
    sd	$s6,304($sp)
    # Line 3130
    move	$s6,$a3
    # Line 3206
    move	$a3,$v1
    # Line 3189
    sd	$s5,296($sp)
    # Line 3130
    move	$s5,$a0
    # Line 3206
    move	$a0,$s2
    jal	__glOdysseyOpenPMObjReference
    # Line 3186
    sw	$at,4($v0)
    sdc1	$f20,400($sp)
    # Line 3206
    beqz	$v0,.L0d9bcf50
    sdc1	$f22,408($sp)
    # Line 3224
    lw	$ra,20($s4)
    # Line 3227
    lw	$a2,20($s5)
    # lw $t9, -30964($gp) # &__glOdysseyOpenPMObjWriteReference
    # Line 3224
    addiu	$t8,$sp,48
    sll	$ra,$ra,0x2
    addu	$t8,$t8,$ra
    lw	$ra,24($s4)
    # Line 3227
    li	$a4,1
    # Line 3224
    lw	$t8,0($t8)
    # Line 3227
    addiu	$a3,$sp,12
    move	$a0,$s2
    lw	$a1,16($s5)
    # Line 3224
    addu	$t8,$t8,$ra
    # Line 3227
    jal	__glOdysseyOpenPMObjWriteReference
    sd	$t8,248($sp)
    beqz	$v0,.L0d9bcf40
    # Line 3238
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3242
    lw	$at,24($s5)
    lw	$v0,12($sp)
    # Line 3250
    # lw $t9, -31188($gp) # &__glOdysseyImageCalcTexObjFormats
    addiu	$a2,$sp,0
    # Line 3242
    addu	$at,$at,$v0
    sw	$at,12($sp)
    # Line 3250
    addiu	$a1,$sp,4
    bal __glOdysseyImageCalcTexObjFormats
    lw	$a0,52($s4)
    beqz	$v0,.L0d9bcf74
    # Line 3258
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3263
    # lw $t9, -31184($gp) # &__glOdysseyImageCalcTexOffset
    move	$a0,$s4
    bal __glOdysseyImageCalcTexOffset
    addiu	$a1,$sp,8
    beqz	$v0,.L0d9bcf64
    # Line 3269
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$s6,232($sp)
    # Line 3288
    lw	$a0,31744($s2)
    sd	$s8,416($sp)
    ori	$a0,$a0,0x10
    sw	$a0,31744($s2)
    # Line 3289
    lw	$v1,26976($s3)
    # Line 3292
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 3289
    ori	$v1,$v1,0x4
    sw	$v1,26976($s3)
    li	$s8,2
    sw	$s8,4120($zero)
    # Line 3292
    bal __glOdysseyImageLogBase2
    lw	$a0,32($s4)
    lw	$a1,31940($s2)
    li	$a3,-31745
    sll	$a2,$v0,0xa
    # Line 3293
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    sd	$s7,424($sp)
    # Line 3292
    andi	$a2,$a2,0x7c00
    and	$a1,$a1,$a3
    or	$a1,$a1,$a2
    sw	$a1,31940($s2)
    # Line 3293
    bal __glOdysseyImageLogBase2
    lw	$a0,36($s4)
    lw	$t3,31940($s2)
    li	$s7,-993
    sll	$s6,$v0,0x5
    andi	$s6,$s6,0x3e0
    and	$t3,$t3,$s7
    or	$t3,$t3,$s6
    # Line 3294
    li	$s6,-32
    and	$t3,$t3,$s6
    sw	$t3,31940($s2)
    # Line 3295
    lw	$t2,32($s4)
    # Line 3296
    lui	$a5,0xff03
    # Line 3295
    lui	$s7,0x1
    lw	$t3,31944($s2)
    lui	$a6,0xfffe
    ori	$a7,$s7,0xffff
    # Line 3302
    lw	$a3,31956($s2)
    # Line 3295
    and	$t3,$a6,$t3
    and	$t2,$a7,$t2
    # Line 3297
    lw	$t0,31948($s2)
    # Line 3296
    ori	$a5,$a5,0xffff
    # Line 3295
    or	$t2,$t2,$t3
    # Line 3302
    lui	$a4,0x380
    # Line 3296
    and	$t2,$a5,$t2
    sw	$t2,31944($s2)
    # Line 3302
    nor	$a4,$a4,$zero
    # Line 3297
    lw	$t1,36($s4)
    # Line 3302
    and	$a3,$a3,$a4
    # Line 3297
    and	$t0,$a6,$t0
    and	$a7,$a7,$t1
    # Line 3302
    lui	$a4,0x300
    # Line 3297
    or	$a7,$a7,$t0
    # Line 3299
    lw	$t0,31952($s2)
    # Line 3302
    or	$a3,$a3,$a4
    sw	$a3,31956($s2)
    # Line 3298
    and	$a7,$a5,$a7
    sw	$a7,31948($s2)
    # Line 3299
    and	$a6,$a6,$t0
    # Line 3300
    and	$a5,$a5,$a6
    sw	$a5,31952($s2)
    # Line 3303
    lw	$a2,26976($s3)
    ori	$a2,$a2,0x200
    sw	$a2,26976($s3)
    sw	$s8,4120($zero)
    # Line 3309
    lw	$a2,32688($s2)
    lui	$a0,0xe000
    lui	$a1,0x1fff
    and	$a0,$a0,$a2
    ld	$a2,248($sp)
    ori	$a1,$a1,0xffff
    and	$a1,$a1,$a2
    or	$a0,$a0,$a1
    sw	$a0,32688($s2)
    # Line 3310
    lw	$at,40($s4)
    lui	$v0,0xc000
    lui	$v1,0x3fff
    lw	$ra,32692($s2)
    ori	$v1,$v1,0xffff
    sll	$at,$at,0x1e
    and	$ra,$ra,$v1
    and	$at,$at,$v0
    or	$ra,$ra,$at
    sw	$ra,32692($s2)
    # Line 3311
    lw	$at,8($sp)
    lui	$v0,0x1c00
    nor	$v1,$v0,$zero
    sll	$at,$at,0x1a
    and	$ra,$ra,$v1
    and	$at,$at,$v0
    or	$ra,$ra,$at
    sw	$ra,32692($s2)
    # Line 3312
    lw	$at,4($sp)
    lui	$v0,0x3f0
    nor	$v1,$v0,$zero
    sll	$at,$at,0x14
    # Line 3314
    lw	$t9,32696($s2)
    # Line 3312
    and	$ra,$ra,$v1
    and	$at,$at,$v0
    or	$ra,$ra,$at
    sw	$ra,32692($s2)
    # Line 3313
    li	$a1,-4096
    lw	$at,28($s4)
    # Line 3314
    and	$t9,$a1,$t9
    sw	$t9,32696($s2)
    # Line 3313
    and	$ra,$a1,$ra
    andi	$at,$at,0xfff
    or	$ra,$ra,$at
    sw	$ra,32692($s2)
    # Line 3314
    lw	$t8,-26576($s3)
    ori	$s6,$s7,0x46
    ori	$s7,$s7,0x443
    beqz	$t8,.L0d9bc398
    li	$a0,250
    # Line 3324
    sw	$zero,-26576($s3)
    sw	$s7,0($s0)
    sw	$a0,0($s0)
    sw	$s6,0($s0)
    sw	$s6,0($s0)
.L0d9bc398:
    lui	$t0,0x1
    ori	$t0,$t0,0xebc
    sw	$t0,0($s0)
    lw	$a7,32688($s2)
    sw	$a7,0($s0)
    lw	$a6,32692($s2)
    sw	$a6,0($s0)
    lw	$a5,32696($s2)
    sw	$a5,0($s0)
    sw	$zero,-26576($s3)
    sw	$s7,0($s0)
    li	$a4,250
    sw	$a4,0($s0)
    sw	$s6,0($s0)
    sw	$s6,0($s0)
    # Line 3330
    lw	$a3,26976($s3)
    ori	$a3,$a3,0x1000
    sw	$a3,26976($s3)
    sw	$s8,4120($zero)
    # Line 3333
    lw	$a1,32736($s2)
    li	$a2,-64
    # Line 3338
    # lw $t9, -31180($gp) # &__glOdysseyImageCalcPixelModeFields
    # Line 3333
    and	$a1,$a1,$a2
    ori	$a1,$a1,0x3c
    sw	$a1,32736($s2)
    # Line 3338
    li	$a0,0x969c
    # Line 3335
    lw	$t8,26976($s3)
    # Line 3338
    addu	$a0,$s2,$a0
    sd	$a0,176($sp)
    # Line 3335
    ori	$t8,$t8,0x800
    sw	$t8,26976($s3)
    # Line 3338
    move	$a1,$s5
    bal __glOdysseyImageCalcPixelModeFields
    # Line 3335
    sw	$s8,4120($zero)
    # Line 3339
    lw	$t8,-26980($s3)
    # Line 3340
    lui	$t1,0x20
    lw	$t2,26976($s3)
    # Line 3339
    lui	$t3,0xe000
    lw	$ra,12($sp)
    and	$t3,$t3,$t8
    lui	$t8,0x1fff
    # Line 3340
    or	$t1,$t1,$t2
    sw	$t1,26976($s3)
    # Line 3339
    ori	$t8,$t8,0xffff
    # Line 3343
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 3339
    and	$t8,$t8,$ra
    or	$t3,$t3,$t8
    sw	$t3,-26980($s3)
    # Line 3340
    sw	$s8,4120($zero)
    # Line 3343
    bal __glOdysseyImageLogBase2
    lw	$a0,32($s4)
    li	$s8,1
    sllv	$t9,$s8,$v0
    mtc1	$t9,$f21
    # Line 3345
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 3343
    cvt.s.w	$f21,$f21
    lwc1	$f20,0($s1)
    # Line 3345
    lw	$a0,36($s4)
    bal __glOdysseyImageLogBase2
    # Line 3343
    div.s	$f20,$f20,$f21
    # Line 3345
    sllv	$ra,$s8,$v0
    mtc1	$ra,$f23
    lwc1	$f22,4($s1)
    cvt.s.w	$f23,$f23
    # Line 3348
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    lw	$a0,32($s4)
    sdc1	$f20,136($sp)
    bal __glOdysseyImageLogBase2
    # Line 3345
    div.s	$f22,$f22,$f23
    # Line 3348
    sllv	$at,$s8,$v0
    mtc1	$at,$f27
    cvt.s.w	$f27,$f27
    lwc1	$f25,8($s1)
    div.s	$f25,$f25,$f27
    # Line 3350
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    lw	$a0,36($s4)
    bal __glOdysseyImageLogBase2
    sdc1	$f25,144($sp)
    sllv	$v1,$s8,$v0
    mtc1	$v1,$f21
    lw	$v0,31956($s2)
    cvt.s.w	$f21,$f21
    srlv	$v0,$v0,$s8
    lwc1	$f20,12($s1)
    andi	$v0,$v0,0xf
    beq	$s8,$v0,.L0d9bce5c
    div.s	$f20,$f20,$f21
.L0d9bc4f4:
    # Line 3373
    lbu	$a0,8($s5)
    beqz	$a0,.L0d9bc604
    ld	$a1,232($sp)
    bne	$a1,$s8,.L0d9bc604
    nop
    # Line 3377
    lw	$a7,31776($s2)
    lw	$a1,26044($s3)
    bne	$a1,$a7,.L0d9bc528
    nop
    lw	$t0,31780($s2)
    lw	$a2,26048($s3)
    beq	$a2,$t0,.L0d9bc5a4
    # Line 3381
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9bc528:
    # Line 3377
    sw	$a1,31776($s2)
    lw	$a4,26048($s3)
    sw	$a4,31780($s2)
    lw	$a3,-26576($s3)
    beqz	$a3,.L0d9bc55c
    lui	$t1,0x1
    sw	$zero,-26576($s3)
    sw	$s7,0($s0)
    li	$a5,250
    sw	$a5,0($s0)
    sw	$s6,0($s0)
    sw	$s6,0($s0)
    lui	$t1,0x1
.L0d9bc55c:
    ori	$t1,$t1,0x81d
    sw	$t1,0($s0)
    lw	$t0,31776($s2)
    sw	$t0,0($s0)
    lw	$a7,31780($s2)
    sw	$a7,0($s0)
    lw	$a6,31600($s2)
    dsll32	$a6,$a6,0xb
    bgez	$a6,.L0d9bd038
    nop
    lw	$t3,26980($s3)
.L0d9bc588:
    ori	$t3,$t3,0x2000
    sw	$t3,26980($s3)
    li	$t2,2
    sw	$t2,4120($zero)
    lw	$t0,31780($s2)
    lw	$a7,31776($s2)
    # Line 3381
    # lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9bc5a4:
    addiu	$a5,$s2,31836
    # Line 3378
    sd	$a7,224($sp)
    # Line 3381
    addiu	$a4,$s2,31804
    addiu	$t9,$t9,-256
    # Line 3379
    sd	$t0,216($sp)
    # Line 3381
    addiu	$a3,$s2,31800
    addiu	$a2,$s2,31796
    ld	$a0,176($sp)
    bal __glOdysseyImageCalcXferReadParams
    addiu	$a1,$s2,31740
    # Line 3388
    lw	$v0,26976($s3)
    lui	$v1,0x20
    ori	$v1,$v1,0x83
    or	$v0,$v0,$v1
    sw	$v0,26976($s3)
    li	$at,2
    sw	$at,4120($zero)
    lw	$ra,31740($s2)
    sll	$ra,$ra,0xf
    bltz	$ra,.L0d9bd028
    # Line 3395
    nop	# was lw $t9, -31140($gp) # &__glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    mtc1	$zero,$f23
    b	.L0d9bc764
    sdc1	$f23,128($sp)
.L0d9bc604:
    # Line 3409
    lwc1	$f12,16($s1)
    ldc1	$f13,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f13
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 3410
    lwc1	$f12,20($s1)
    ldc1	$f14,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 3409
    trunc.w.s	$f13,$f0
    # Line 3410
    add.d	$f12,$f12,$f14
    # Line 3409
    mfc1	$a0,$f13
    sd	$a0,168($sp)
    # Line 3410
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 3411
    lwc1	$f12,24($s1)
    ldc1	$f14,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 3410
    trunc.w.s	$f13,$f0
    # Line 3411
    add.d	$f12,$f12,$f14
    # Line 3410
    mfc1	$a1,$f13
    sd	$a1,152($sp)
    # Line 3411
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 3412
    lwc1	$f12,28($s1)
    ldc1	$f14,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 3411
    trunc.w.s	$f13,$f0
    # Line 3412
    add.d	$f12,$f12,$f14
    # Line 3411
    mfc1	$a2,$f13
    sd	$a2,160($sp)
    # Line 3412
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 3420
    ld	$t8,168($sp)
    ld	$at,160($sp)
    li	$t0,-4096
    # Line 3419
    move	$t9,$at
    slt	$v0,$t8,$at
    # Line 3421
    trunc.w.s	$f13,$f0
    # Line 3420
    slt	$ra,$at,$t8
    # Line 3419
    movn	$t9,$t8,$v0
    lui	$a7,0xff
    # Line 3420
    movz	$t8,$at,$ra
    # Line 3421
    mfc1	$t2,$f13
    # Line 3419
    ori	$a7,$a7,0xf000
    # Line 3420
    andi	$t8,$t8,0xfff
    # Line 3421
    ld	$a6,152($sp)
    # Line 3419
    sll	$t9,$t9,0xc
    # Line 3422
    move	$t3,$t2
    # Line 3421
    slt	$ra,$a6,$t2
    move	$t1,$t2
    # Line 3422
    slt	$t2,$t2,$a6
    # Line 3419
    and	$t9,$t9,$a7
    # Line 3420
    and	$t9,$t9,$t0
    # Line 3421
    movn	$t1,$a6,$ra
    # Line 3420
    or	$t8,$t8,$t9
    # Line 3414
    lw	$t9,31776($s2)
    # Line 3421
    sll	$t1,$t1,0xc
    # Line 3422
    movz	$a6,$t3,$t2
    # Line 3420
    sw	$t8,31776($s2)
    # Line 3421
    and	$a7,$a7,$t1
    # Line 3422
    andi	$a6,$a6,0xfff
    and	$a7,$a7,$t0
    # Line 3415
    lw	$t0,31780($s2)
    # Line 3422
    or	$a6,$a6,$a7
    sw	$a6,31780($s2)
    # Line 3424
    lw	$a5,26976($s3)
    ori	$a5,$a5,0x10
    sw	$a5,26976($s3)
    li	$a4,2
    sw	$a4,4120($zero)
    lbu	$a3,10($s5)
    # Line 3414
    sd	$t9,224($sp)
    # Line 3424
    beqz	$a3,.L0d9bc75c
    # Line 3415
    sd	$t0,216($sp)
    # Line 3427
    lw	$a1,7360($s3)
    sw	$a1,31836($s2)
    # Line 3428
    lw	$a0,26976($s3)
    ori	$a0,$a0,0x80
    sw	$a0,26976($s3)
    move	$v1,$a4
    sw	$v1,4120($zero)
.L0d9bc75c:
    mtc1	$zero,$f14
    sdc1	$f14,128($sp)
.L0d9bc764:
    # Line 3426
    lw	$a2,26976($s3)
    beqz	$a2,.L0d9bc780
    # Line 3440
    lui	$a4,0x1
    # Line 3433
    # lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    jal	__glOdysseyValidateHardware
    move	$a0,$s2
    # Line 3440
    lui	$a4,0x1
.L0d9bc780:
    ori	$a4,$a4,0x4400
    sw	$a4,0($s0)
    li	$a3,7
    sw	$a3,0($s0)
    # Line 3442
    lbu	$a4,12($s4)
    beqz	$a4,.L0d9bcec4
    lbu	$a3,12($s5)
.L0d9bc79c:
    lwc1	$f8,12($s1)
    lwc1	$f7,4($s1)
    # Line 3446
    c.lt.s	$f7,$f8
    # Line 3442
    c.lt.s $f8,$f7
    # Line 3446
    mov.s	$f6,$f7
    movf.s	$f7,$f8,$fcc0
    movf.s	$f6,$f8,$fcc1
    sub.s	$f6,$f6,$f7
    trunc.l.s	$f6,$f6
    dmfc1	$a5,$f6
    sll	$a5,$a5,0x0
    # Line 3447
    dsll32	$a1,$a5,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f5
    cvt.s.l	$f5,$f5
    sub.s	$f4,$f20,$f22
    div.s	$f4,$f4,$f5
    # Line 3446
    move	$a0,$a5
    # Line 3448
    add.s	$f20,$f4,$f22
    beqz	$a4,.L0d9bc81c
    # Line 3447
    mov.s	$f15,$f4
    # Line 3451
    dmtc1	$a1,$f16
    ldc1	$f18,_lit8_3fe0000000000000
    cvt.d.l	$f16,$f16
    # Line 3450
    ldc1	$f17,_lit8_4000000000000000
    # Line 3451
    mul.d	$f16,$f16,$f18
    # Line 3450
    cvt.d.s	$f15,$f4
    # Line 3451
    trunc.l.d	$f16,$f16
    # Line 3450
    mul.d	$f15,$f15,$f17
    # Line 3451
    dmfc1	$a0,$f16
    # Line 3450
    cvt.s.d	$f15,$f15
    # Line 3451
    sll	$a0,$a0,0x0
.L0d9bc81c:
    # Line 3454
    lwc1	$f7,28($s1)
    # Line 3453
    lwc1	$f5,20($s1)
    # Line 3454
    c.le.s $f5,$f7
    li	$a1,-1
    movt	$a1,$s8,$fcc2
    mtc1	$a1,$f6
    cvt.s.w	$f6,$f6
    # Line 3455
    add.s	$f4,$f6,$f5
    beqz	$a3,.L0d9bc854
    # Line 3454
    mov.s	$f8,$f6
    # Line 3457
    ldc1	$f9,_lit8_4000000000000000
    cvt.d.s	$f8,$f6
    mul.d	$f8,$f8,$f9
    cvt.s.d	$f8,$f8
.L0d9bc854:
    # Line 3459
    lbu	$a2,8($s5)
    beqz	$a2,.L0d9bc864
    ld	$a3,232($sp)
    beq	$a3,$s8,.L0d9bcf34
.L0d9bc864:
    # Line 3463
    lwc1	$f16,_lit_3f800000
.L0d9bc868:
    ldc1	$f11,_lit8_3ff0000000000000
    cvt.d.s	$f10,$f16
    c.eq.d $f10,$f11
    bc1t .L0d9bc8b0
    nop
    # Line 3467
    trunc.w.s	$f12,$f5
    # Line 3468
    mov.s	$f14,$f5
    # Line 3470
    move	$a7,$a0
    beqz	$a0,.L0d9bca10
    # Line 3467
    mfc1	$a3,$f12
    # Line 3470
    ldc1	$f9,128($sp)
    ldc1	$f11,136($sp)
    ldc1	$f10,144($sp)
    mtc1	$zero,$f12
    lui	$a4,0x8f80
    lwc1	$f13,_lit_3f800000
    b	.L0d9bd0a0
    ori	$a4,$a4,0xb968
.L0d9bc8b0:
    # Line 3485
    beqz	$a0,.L0d9bca10
    move	$a7,$a0
    li	$a1,1
    sltu	$a5,$a0,$a1
    ldc1	$f10,144($sp)
    movz	$a1,$a0,$a5
    ldc1	$f11,136($sp)
    andi	$a5,$a1,0x1
    mtc1	$zero,$f12
    lwc1	$f13,_lit_3f800000
    lui	$a4,0x8f80
    ldc1	$f9,128($sp)
    beqz	$a5,.L0d9bc94c
    ori	$a4,$a4,0xb968
    # Line 3486
    ldc1	$f14,144($sp)
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f19,16($s1)
    ldc1	$f17,128($sp)
    swc1	$f19,0($s0)
    swc1	$f5,0($s0)
    swc1	$f17,0($s0)
    lwc1	$f18,24($s1)
    ldc1	$f16,136($sp)
    swc1	$f18,0($s0)
    swc1	$f4,0($s0)
    swc1	$f17,0($s0)
    swc1	$f16,0($s0)
    swc1	$f22,0($s0)
    # Line 3491
    add.s	$f5,$f5,$f8
    # Line 3486
    swc1	$f14,0($s0)
    swc1	$f20,0($s0)
    # Line 3492
    add.s	$f20,$f20,$f15
    add.s	$f22,$f22,$f15
    # Line 3485
    addiu	$a7,$a0,-1
    # Line 3491
    add.s	$f4,$f8,$f4
.L0d9bc94c:
    sra	$a6,$a1,0x1
    beqz	$a6,.L0d9bca10
    nop
    nop
    nop
.L0d9bc960:
    # Line 3486
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f16,16($s1)
    swc1	$f16,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f14,24($s1)
    swc1	$f14,0($s0)
    swc1	$f4,0($s0)
    swc1	$f9,0($s0)
    swc1	$f11,0($s0)
    swc1	$f22,0($s0)
    swc1	$f10,0($s0)
    swc1	$f20,0($s0)
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f7,16($s1)
    # Line 3491
    add.s	$f5,$f5,$f8
    # Line 3486
    swc1	$f7,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f6,24($s1)
    # Line 3491
    add.s	$f4,$f8,$f4
    # Line 3486
    swc1	$f6,0($s0)
    # Line 3491
    add.s	$f5,$f5,$f8
    # Line 3486
    swc1	$f4,0($s0)
    # Line 3492
    add.s	$f21,$f20,$f15
    # Line 3486
    swc1	$f9,0($s0)
    # Line 3492
    add.s	$f22,$f22,$f15
    # Line 3486
    swc1	$f11,0($s0)
    # Line 3485
    addiu	$a7,$a7,-2
    # Line 3492
    add.s	$f20,$f21,$f15
    # Line 3486
    swc1	$f22,0($s0)
    # Line 3492
    add.s	$f22,$f22,$f15
    # Line 3486
    swc1	$f10,0($s0)
    # Line 3491
    add.s	$f4,$f8,$f4
    # Line 3485
    bnez	$a7,.L0d9bc960
    # Line 3486
    swc1	$f21,0($s0)
.L0d9bca10:
    # Line 3502
    lui	$t0,0x1
    ori	$t0,$t0,0x4001
    sw	$t0,0($s0)
    lw	$a7,-26892($s3)
    beqz	$a7,.L0d9bca40
    li	$s1,2
    sw	$zero,-26576($s3)
    sw	$s7,0($s0)
    li	$t1,250
    sw	$t1,0($s0)
    sw	$s6,0($s0)
    sw	$s6,0($s0)
.L0d9bca40:
    sw	$s8,-26576($s3)
    # Line 3511
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    lw	$a2,20($s4)
    move	$a0,$s2
    lw	$a1,16($s4)
    jal	__glOdysseyClosePMObjReference
    move	$a3,$a2
    beqz	$v0,.L0d9bcf84
    li	$s4,250
    # Line 3526
    # lw $t9, -30960($gp) # &__glOdysseyClosePMObjWriteReference
    lw	$a2,20($s5)
    move	$a0,$s2
    jal	__glOdysseyClosePMObjWriteReference
    lw	$a1,16($s5)
    beqz	$v0,.L0d9bd010
    # Line 3535
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3554
    ld	$t9,272($sp)
    ld	$t8,280($sp)
    # Line 3545
    lw	$a3,16($sp)
    addiu	$at,$sp,16
    lw	$a2,4($at)
    lw	$a1,8($at)
    lw	$a0,12($at)
    lw	$v1,16($at)
    lw	$v0,20($at)
    # Line 3542
    ld	$a5,264($sp)
    sw	$a5,31744($s2)
    # Line 3543
    lw	$a4,26976($s3)
    # Line 3545
    lw	$at,24($at)
    # Line 3543
    ori	$a4,$a4,0x4
    sw	$a4,26976($s3)
    sw	$s1,4120($zero)
    # Line 3545
    sw	$at,31964($s2)
    sw	$v0,31960($s2)
    sw	$v1,31956($s2)
    sw	$a0,31952($s2)
    sw	$a1,31948($s2)
    sw	$a2,31944($s2)
    sw	$a3,31940($s2)
    # Line 3546
    lw	$ra,26976($s3)
    # Line 3554
    ld	$t3,288($sp)
    # Line 3546
    ori	$ra,$ra,0x200
    sw	$ra,26976($s3)
    sw	$s1,4120($zero)
    # Line 3554
    sw	$t3,32696($s2)
    sw	$t8,32692($s2)
    sw	$t9,32688($s2)
    lw	$t2,-26576($s3)
    beqz	$t2,.L0d9bcb20
    # Line 3566
    ld	$t1,224($sp)
    # Line 3556
    sw	$zero,-26576($s3)
    sw	$s7,0($s0)
    sw	$s4,0($s0)
    sw	$s6,0($s0)
    sw	$s6,0($s0)
    # Line 3566
    ld	$t1,224($sp)
.L0d9bcb20:
    # Line 3567
    ld	$t0,216($sp)
    # Line 3563
    ld	$ra,296($sp)
    ld	$t9,304($sp)
    ld	$t8,312($sp)
    # Line 3556
    lui	$a3,0x1
    ori	$a3,$a3,0xebc
    sw	$a3,0($s0)
    lw	$a2,32688($s2)
    sw	$a2,0($s0)
    lw	$a1,32692($s2)
    sw	$a1,0($s0)
    lw	$a0,32696($s2)
    sw	$a0,0($s0)
    sw	$zero,-26576($s3)
    sw	$s7,0($s0)
    sw	$s4,0($s0)
    sw	$s6,0($s0)
    sw	$s6,0($s0)
    # Line 3558
    lw	$v1,26976($s3)
    # Line 3560
    ld	$v0,320($sp)
    # Line 3558
    ori	$v1,$v1,0x1000
    sw	$v1,26976($s3)
    sw	$s1,4120($zero)
    # Line 3560
    sw	$v0,32736($s2)
    # Line 3561
    lw	$at,26976($s3)
    # Line 3563
    ld	$s7,256($sp)
    # Line 3561
    ori	$at,$at,0x800
    sw	$at,26976($s3)
    sw	$s1,4120($zero)
    # Line 3563
    sw	$s7,-26968($s3)
    sw	$t8,-26972($s3)
    sw	$t9,-26976($s3)
    # Line 3564
    lw	$t3,26976($s3)
    lui	$t2,0x20
    # Line 3563
    sw	$ra,-26980($s3)
    # Line 3564
    or	$t2,$t2,$t3
    sw	$t2,26976($s3)
    sw	$s1,4120($zero)
    # Line 3567
    sw	$t0,31780($s2)
    # Line 3566
    sw	$t1,31776($s2)
    # Line 3568
    lw	$a7,26976($s3)
    ori	$a7,$a7,0x10
    sw	$a7,26976($s3)
    sw	$s1,4120($zero)
    # Line 3581
    lbu	$a6,8($s5)
    beqz	$a6,.L0d9bcbe8
    ld	$s7,424($sp)
    ld	$a4,232($sp)
    beq	$a4,$s8,.L0d9bcfa0
    move	$s7,$s7
.L0d9bcbe8:
    # Line 3589
    lbu	$a5,10($s5)
    beqz	$a5,.L0d9bcc40
    ld	$s8,416($sp)
    ldc1	$f22,408($sp)
    ldc1	$f20,400($sp)
    # Line 3598
    ld	$gp,384($sp)
    ld	$s0,352($sp)
    ld	$s4,360($sp)
    ld	$s5,336($sp)
    ld	$s6,392($sp)
    # Line 3594
    ld	$a7,240($sp)
    sw	$a7,31836($s2)
    # Line 3598
    ld	$s2,344($sp)
    # Line 3595
    lw	$a6,26976($s3)
    # Line 3598
    ld	$ra,368($sp)
    # Line 3595
    ori	$a6,$a6,0x80
    sw	$a6,26976($s3)
    sw	$s1,4120($zero)
    # Line 3598
    ld	$s1,328($sp)
    ld	$s3,376($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d9bcc40:
    ldc1	$f20,400($sp)
.L0d9bcc44:
    ldc1	$f22,408($sp)
    ld	$gp,384($sp)
    ld	$s0,352($sp)
    ld	$s1,328($sp)
    ld	$s2,344($sp)
    ld	$s3,376($sp)
    ld	$ra,368($sp)
    ld	$s4,360($sp)
    ld	$s5,336($sp)
    ld	$s6,392($sp)
    jr	$ra
    addiu	$sp,$sp,432
    nop
    nop
    nop
.L0d9bcc80:
    # Line 3473
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f18,16($s1)
    swc1	$f18,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f17,24($s1)
    swc1	$f17,0($s0)
    swc1	$f4,0($s0)
    swc1	$f9,0($s0)
    swc1	$f11,0($s0)
    addiu	$a6,$a6,-1
    swc1	$f6,0($s0)
    # Line 3478
    add.s	$f5,$f5,$f8
    # Line 3473
    swc1	$f10,0($s0)
    # Line 3479
    addiu	$a3,$a3,1
    # Line 3478
    add.s	$f4,$f8,$f4
    bnez	$a6,.L0d9bcc80
    # Line 3473
    swc1	$f7,0($s0)
.L0d9bccd8:
    beqz	$t1,.L0d9bce18
    nop
.L0d9bcce0:
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f21,16($s1)
    swc1	$f21,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f19,24($s1)
    swc1	$f19,0($s0)
    swc1	$f4,0($s0)
    swc1	$f9,0($s0)
    swc1	$f11,0($s0)
    swc1	$f6,0($s0)
    swc1	$f10,0($s0)
    swc1	$f7,0($s0)
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f18,16($s1)
    # Line 3478
    add.s	$f5,$f5,$f8
    # Line 3473
    swc1	$f18,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f17,24($s1)
    # Line 3478
    add.s	$f4,$f8,$f4
    # Line 3473
    swc1	$f17,0($s0)
    swc1	$f4,0($s0)
    swc1	$f9,0($s0)
    swc1	$f11,0($s0)
    swc1	$f6,0($s0)
    swc1	$f10,0($s0)
    swc1	$f7,0($s0)
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f17,16($s1)
    # Line 3478
    add.s	$f5,$f5,$f8
    # Line 3473
    swc1	$f17,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f17,24($s1)
    # Line 3478
    add.s	$f4,$f8,$f4
    # Line 3473
    swc1	$f17,0($s0)
    swc1	$f4,0($s0)
    swc1	$f9,0($s0)
    swc1	$f11,0($s0)
    swc1	$f6,0($s0)
    swc1	$f10,0($s0)
    swc1	$f7,0($s0)
    sw	$a4,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f12,0($s0)
    swc1	$f13,0($s0)
    lwc1	$f17,16($s1)
    # Line 3478
    add.s	$f5,$f5,$f8
    # Line 3473
    swc1	$f17,0($s0)
    swc1	$f5,0($s0)
    swc1	$f9,0($s0)
    lwc1	$f17,24($s1)
    # Line 3478
    add.s	$f4,$f8,$f4
    # Line 3473
    swc1	$f17,0($s0)
    swc1	$f4,0($s0)
    swc1	$f9,0($s0)
    swc1	$f11,0($s0)
    # Line 3479
    addiu	$a3,$a3,4
    # Line 3473
    swc1	$f6,0($s0)
    # Line 3478
    add.s	$f4,$f8,$f4
    # Line 3473
    swc1	$f10,0($s0)
    # Line 3478
    add.s	$f5,$f5,$f8
    # Line 3479
    bne	$a5,$a3,.L0d9bcce0
    # Line 3473
    swc1	$f7,0($s0)
.L0d9bce18:
    # Line 3479
    move	$a3,$a5
.L0d9bce1c:
    # Line 3470
    beqz	$a7,.L0d9bca10
    # Line 3471
    mov.s	$f7,$f20
    mov.s	$f6,$f22
.L0d9bce28:
    add.s	$f14,$f14,$f16
    trunc.w.s	$f23,$f14
    mfc1	$a5,$f23
    # Line 3470
    addiu	$a7,$a7,-1
    # Line 3481
    add.s	$f20,$f20,$f15
    # Line 3471
    subu	$t0,$a5,$a3
    # Line 3481
    add.s	$f22,$f22,$f15
    # Line 3471
    beq	$a5,$a3,.L0d9bce1c
    andi	$a6,$t0,0x3
    bnez	$a6,.L0d9bcc80
    sra	$t1,$t0,0x2
    b	.L0d9bccd8
    nop
.L0d9bce5c:
    # Line 3365
    lw	$t3,36($s4)
    sll	$t3,$t3,0x2
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f31
    # Line 3364
    ldc1	$f27,_lit8_3ff0000000000000
    # Line 3365
    cvt.d.l	$f31,$f31
    div.d	$f31,$f27,$f31
    # Line 3364
    lw	$t2,32($s4)
    sll	$t2,$t2,0x2
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f29
    cvt.d.l	$f29,$f29
    div.d	$f27,$f27,$f29
    # Line 3368
    ldc1	$f29,144($sp)
    # Line 3365
    cvt.s.d	$f31,$f31
    # Line 3370
    ldc1	$f25,136($sp)
    # Line 3364
    cvt.s.d	$f27,$f27
    # Line 3370
    add.s	$f20,$f20,$f31
    # Line 3368
    add.s	$f29,$f29,$f27
    # Line 3367
    add.s	$f25,$f25,$f27
    # Line 3368
    sdc1	$f29,144($sp)
    # Line 3369
    add.s	$f22,$f22,$f31
    # Line 3370
    b	.L0d9bc4f4
    sdc1	$f25,136($sp)
.L0d9bcec4:
    # Line 3442
    bnez	$a3,.L0d9bc79c
    # Line 3496
    lui	$t8,0x8f80
    ori	$t8,$t8,0xb968
    sw	$t8,0($s0)
    mtc1	$zero,$f8
    lwc1	$f7,_lit_3f800000
    swc1	$f8,0($s0)
    swc1	$f8,0($s0)
    swc1	$f8,0($s0)
    swc1	$f7,0($s0)
    lwc1	$f6,16($s1)
    swc1	$f6,0($s0)
    lwc1	$f5,20($s1)
    ldc1	$f2,128($sp)
    swc1	$f5,0($s0)
    swc1	$f2,0($s0)
    lwc1	$f4,24($s1)
    ldc1	$f0,144($sp)
    swc1	$f4,0($s0)
    lwc1	$f3,28($s1)
    ldc1	$f1,136($sp)
    swc1	$f3,0($s0)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f22,0($s0)
    swc1	$f0,0($s0)
    b	.L0d9bca10
    swc1	$f20,0($s0)
.L0d9bcf34:
    # Line 3461
    lwc1	$f16,748($s2)
    b	.L0d9bc868
    abs.s	$f16,$f16
.L0d9bcf40:
    # Line 3238
    jal	__glSetError
    li	$a0,1285
    b	.L0d9bcc44
    ldc1	$f20,400($sp)
.L0d9bcf50:
    # Line 3218
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9bcc44
    ldc1	$f20,400($sp)
.L0d9bcf64:
    # Line 3269
    jalr	$t9
    li	$a0,1281
    b	.L0d9bcc44
    ldc1	$f20,400($sp)
.L0d9bcf74:
    # Line 3258
    jalr	$t9
    li	$a0,1281
    b	.L0d9bcc44
    ldc1	$f20,400($sp)
.L0d9bcf84:
    # Line 3521
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s8,416($sp)
    ld	$s7,424($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d9bcc44
    ldc1	$f20,400($sp)
.L0d9bcfa0:
    ld	$s8,416($sp)
    ldc1	$f22,408($sp)
    ldc1	$f20,400($sp)
    # Line 3598
    ld	$gp,384($sp)
    ld	$s0,352($sp)
    ld	$s4,360($sp)
    ld	$s5,336($sp)
    ld	$s6,392($sp)
    # Line 3584
    ld	$a0,192($sp)
    # Line 3585
    ld	$v1,200($sp)
    # Line 3586
    ld	$v0,208($sp)
    # Line 3587
    ld	$at,184($sp)
    sw	$at,31804($s2)
    # Line 3586
    sw	$v0,31800($s2)
    # Line 3585
    sw	$v1,31796($s2)
    # Line 3584
    sw	$a0,31740($s2)
    # Line 3588
    ld	$ra,240($sp)
    sw	$ra,31836($s2)
    # Line 3589
    lw	$t9,26976($s3)
    # Line 3598
    ld	$s2,344($sp)
    # Line 3589
    ori	$t9,$t9,0x83
    sw	$t9,26976($s3)
    # Line 3598
    ld	$ra,368($sp)
    # Line 3589
    sw	$s1,4120($zero)
    # Line 3598
    ld	$s1,328($sp)
    ld	$s3,376($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d9bd010:
    ld	$s8,416($sp)
    ld	$s7,424($sp)
    # Line 3535
    jalr	$t9
    li	$a0,1285
    b	.L0d9bcc44
    ldc1	$f20,400($sp)
.L0d9bd028:
    # Line 3395
    bal __glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    nop
    b	.L0d9bc764
    sdc1	$f0,128($sp)
.L0d9bd038:
    # Line 3377
    sw	$zero,112($sp)
    sw	$zero,116($sp)
    sw	$zero,120($sp)
    sw	$zero,124($sp)
    lw	$a4,31776($s2)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,112($sp)
    lw	$a3,31776($s2)
    andi	$a3,$a3,0xfff
    sw	$a3,120($sp)
    lw	$a2,31780($s2)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,116($sp)
    addiu	$a2,$sp,112
    lui	$a1,0x6f64
    lw	$a3,31780($s2)
    move	$a0,$s2
    ori	$a1,$a1,0xd
    andi	$a3,$a3,0xfff
    jal	__glOdysseyIoctl
    sw	$a3,124($sp)
    b	.L0d9bc588
    lw	$t3,26980($s3)
.L0d9bd0a0:
    # Line 3471
    mov.s	$f7,$f20
    b	.L0d9bce28
    mov.s	$f6,$f22
.end __glOdysseyImageMovePixelsTexture

# Function: OdysseyImageCalcXferCopyParams
# Declared: Line 3607 (Source lines: 3611-4039)
# Address: 0x0d9bd0b0 - 0x0d9bd800 (Size: 1872 bytes, Frame: 0)
.ent OdysseyImageCalcXferCopyParams
OdysseyImageCalcXferCopyParams:
    # Line 3611
    sw	$zero,0($a2)
    # Line 3618
    sb	$zero,0($a2)
    # Line 3611
    sw	$zero,20($a2)
    sw	$zero,16($a2)
    # Line 3618
    la	$a5,sub_0daf0000
    # Line 3611
    sw	$zero,12($a2)
    # Line 3618
    sltiu	$a7,$a0,18
    # Line 3611
    sw	$zero,8($a2)
    # Line 3618
    sll	$a6,$a0,0x2
    addiu	$a5,$a5,-28136
    # Line 3611
    sw	$zero,4($a2)
    # Line 3618
    beqz	$a7,.L0d9bd0f0
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    jr	$a6
    # Line 3824
    li	$at,4
.L0d9bd0f0:
    # Line 3962
    sb	$zero,0($a2)
    # Line 3963
    jr	$ra
    move	$v0,$zero
.L0d9bd0fc:
    # Line 3624
    li	$a4,2
    # Line 3630
    sb	$a4,25($a2)
    # Line 3629
    li	$t1,10
    sw	$t1,16($a2)
    # Line 3628
    li	$a5,1
    sw	$a5,12($a2)
    # Line 3627
    li	$t0,11
    sb	$t0,8($a2)
    # Line 3626
    sb	$a4,9($a2)
    move	$a3,$a5
    # Line 3625
    li	$a7,8
    sb	$a7,2($a2)
    # Line 3624
    sb	$a4,1($a2)
    # Line 3632
    b	.L0d9bd170
    move	$a1,$a4
.L0d9bd138:
    # Line 3939
    li	$a5,1
    beqz	$a3,.L0d9bd5f4
    sb	$zero,1($a2)
    # Line 3940
    sb	$zero,2($a2)
.L0d9bd148:
    # Line 3946
    li	$t3,7
    sb	$t3,25($a2)
    # Line 3945
    li	$t2,16
    sw	$t2,16($a2)
    # Line 3944
    sw	$zero,12($a2)
    move	$a1,$t3
    # Line 3943
    sb	$a5,8($a2)
    # Line 3944
    move	$a3,$zero
    # Line 3942
    li	$a4,2
    sb	$a4,9($a2)
.L0d9bd170:
    # Line 3967
    beq	$a1,$a4,.L0d9bd1cc
    # Line 3969
    li	$v1,17
    # Line 3967
    li	$t8,3
    beq	$a1,$t8,.L0d9bd214
    # Line 3972
    li	$a6,18
    # Line 3967
    beq	$a1,$a5,.L0d9bd1a4
    li	$t9,4
    beq	$a1,$t9,.L0d9bd1a4
    li	$at,7
    beq	$a1,$at,.L0d9bd1a8
    # Line 3977
    li	$v0,16
    # Line 3963
    jr	$ra
    # Line 3986
    move	$v0,$zero
.L0d9bd1a4:
    # Line 3977
    li	$v0,16
.L0d9bd1a8:
    sb	$v0,24($a2)
.L0d9bd1ac:
    # Line 3990
    beqz	$a3,.L0d9bd1dc
    nop
    beq	$a3,$a5,.L0d9bd21c
    nop
    beq	$a3,$a4,.L0d9bd1d4
    nop
    # Line 3963
    jr	$ra
    # Line 4006
    move	$v0,$zero
.L0d9bd1cc:
    b	.L0d9bd1ac
    # Line 3969
    sb	$v1,24($a2)
.L0d9bd1d4:
    # Line 3999
    b	.L0d9bd1e0
    # Line 3998
    sb	$zero,20($a2)
.L0d9bd1dc:
    # Line 3992
    sb	$zero,20($a2)
.L0d9bd1e0:
    # Line 4010
    lbu	$a1,1($a2)
    beqz	$a1,.L0d9bd5cc
    nop
    beq	$a1,$a5,.L0d9bd5dc
    nop
    beq	$a1,$a4,.L0d9bd5e4
    li	$a0,3
    beq	$a1,$a0,.L0d9bd5ec
    li	$a3,4
    beq	$a1,$a3,.L0d9bd5c4
    nop
    # Line 3963
    jr	$ra
    # Line 4032
    move	$v0,$zero
.L0d9bd214:
    # Line 3973
    b	.L0d9bd1ac
    # Line 3972
    sb	$a6,24($a2)
.L0d9bd21c:
    # Line 3996
    b	.L0d9bd1e0
    # Line 3995
    sb	$a5,20($a2)
.L0d9bd224:
    # Line 3957
    li	$t2,7
    sb	$t2,25($a2)
    # Line 3956
    li	$t1,17
    sw	$t1,16($a2)
    # Line 3955
    sw	$zero,12($a2)
    # Line 3951
    li	$a5,1
    # Line 3954
    sb	$a5,8($a2)
    # Line 3959
    li	$a4,2
    # Line 3953
    li	$t0,3
    sb	$t0,9($a2)
    move	$a1,$t2
    # Line 3952
    li	$a7,14
    sb	$a7,2($a2)
    # Line 3955
    move	$a3,$zero
    # Line 3959
    b	.L0d9bd170
    # Line 3951
    sb	$a5,1($a2)
.L0d9bd264:
    # Line 3657
    li	$a7,11
    li	$t0,10
    li	$a4,2
    li	$a5,1
    li	$t3,4
    beq	$a1,$t0,.L0d9bd5fc
    sb	$t3,1($a2)
    # Line 3670
    li	$a1,3
    # Line 3674
    sb	$a1,25($a2)
    # Line 3673
    li	$t8,12
    sw	$t8,16($a2)
    # Line 3672
    sw	$a4,12($a2)
    # Line 3671
    sb	$a7,8($a2)
    # Line 3670
    sb	$a1,9($a2)
    move	$a3,$a4
    b	.L0d9bd170
    # Line 3669
    sb	$zero,2($a2)
.L0d9bd2a8:
    # Line 3635
    li	$a7,11
    li	$t0,10
    li	$a4,2
    li	$a5,1
    li	$a6,3
    beq	$a1,$t0,.L0d9bd620
    sb	$a6,1($a2)
    # Line 3652
    sb	$a6,25($a2)
    # Line 3651
    li	$at,12
    sw	$at,16($a2)
    # Line 3650
    sw	$a4,12($a2)
    # Line 3649
    sb	$a7,8($a2)
    move	$a1,$a6
    move	$a3,$a4
    # Line 3648
    sb	$a6,9($a2)
    # Line 3647
    li	$t9,9
    b	.L0d9bd170
    sb	$t9,2($a2)
.L0d9bd2f0:
    # Line 3707
    li	$a0,3
    sb	$a0,25($a2)
    # Line 3704
    li	$v1,11
    # Line 3706
    sw	$v1,16($a2)
    # Line 3705
    li	$a5,1
    sw	$a5,12($a2)
    # Line 3704
    sb	$v1,8($a2)
    # Line 3703
    li	$v0,8
    sb	$v0,9($a2)
    move	$a1,$a0
    move	$a3,$a5
    # Line 3702
    sb	$zero,2($a2)
    # Line 3701
    li	$a4,2
    # Line 3709
    b	.L0d9bd170
    # Line 3701
    sb	$a4,1($a2)
.L0d9bd32c:
    # Line 3830
    li	$a7,8
    li	$a6,6
    li	$a5,1
    # Line 3849
    li	$t1,12
    # Line 3830
    li	$a4,2
    beq	$a1,$a6,.L0d9bd718
    sb	$a4,1($a2)
    # Line 3839
    li	$t0,10
    beq	$a1,$t0,.L0d9bd7b4
    nop
    # Line 3849
    li	$t0,5
    beq	$a1,$t1,.L0d9bd764
    li	$a6,3
    # Line 3868
    li	$a3,4
    # Line 3866
    sw	$a5,12($a2)
    # Line 3865
    sb	$a7,8($a2)
    # Line 3864
    sb	$a6,9($a2)
    # Line 3863
    sb	$t0,2($a2)
    # Line 3867
    li	$a1,9
    sw	$a1,16($a2)
    move	$a1,$a3
    # Line 3868
    sb	$a3,25($a2)
    b	.L0d9bd170
    move	$a3,$a5
.L0d9bd38c:
    # Line 3696
    li	$a4,2
    sb	$a4,25($a2)
    # Line 3695
    li	$t0,8
    sw	$t0,16($a2)
    # Line 3694
    sw	$zero,12($a2)
    # Line 3693
    li	$a7,11
    sb	$a7,8($a2)
    move	$a1,$a4
    # Line 3692
    li	$a6,7
    sb	$a6,9($a2)
    # Line 3694
    move	$a3,$zero
    # Line 3691
    li	$a5,12
    sb	$a5,2($a2)
    # Line 3690
    li	$a5,1
    # Line 3698
    b	.L0d9bd170
    # Line 3690
    sb	$a5,1($a2)
.L0d9bd3cc:
    # Line 3685
    li	$a4,2
    sb	$a4,25($a2)
    # Line 3684
    li	$t8,7
    sw	$t8,16($a2)
    # Line 3683
    sw	$zero,12($a2)
    # Line 3682
    li	$t3,11
    sb	$t3,8($a2)
    move	$a1,$a4
    # Line 3681
    li	$t2,6
    sb	$t2,9($a2)
    # Line 3683
    move	$a3,$zero
    # Line 3680
    li	$t1,13
    sb	$t1,2($a2)
    # Line 3679
    li	$a5,1
    # Line 3687
    b	.L0d9bd170
    # Line 3679
    sb	$a5,1($a2)
.L0d9bd40c:
    # Line 3787
    li	$a4,2
    # Line 3823
    li	$t9,6
    # Line 3822
    move	$a3,$zero
    # Line 3787
    li	$a5,1
    beq	$a1,$a4,.L0d9bd740
    sb	$a5,1($a2)
    # Line 3796
    beqz	$a1,.L0d9bd7dc
    # Line 3805
    li	$a7,8
    li	$t0,10
    beq	$a1,$t0,.L0d9bd78c
    nop
    # Line 3824
    sb	$at,25($a2)
    # Line 3823
    sw	$t9,16($a2)
    # Line 3822
    sw	$zero,12($a2)
    # Line 3821
    sb	$a7,8($a2)
    # Line 3820
    sb	$a4,9($a2)
    # Line 3819
    sb	$zero,2($a2)
    b	.L0d9bd170
    move	$a1,$at
.L0d9bd458:
    # Line 3712
    li	$t1,12
    li	$a6,3
    li	$a4,2
    li	$a5,1
    beq	$a1,$t1,.L0d9bd644
    sb	$a5,1($a2)
    # Line 3731
    sb	$a5,25($a2)
    # Line 3730
    li	$v0,5
    sw	$v0,16($a2)
    # Line 3729
    sw	$zero,12($a2)
    # Line 3728
    sb	$a4,8($a2)
    move	$a1,$a5
    # Line 3727
    sb	$a6,9($a2)
    # Line 3729
    move	$a3,$zero
    b	.L0d9bd170
    # Line 3726
    sb	$a4,2($a2)
.L0d9bd498:
    # Line 3737
    li	$t1,12
    li	$a6,3
    li	$a4,2
    li	$a5,1
    beq	$a1,$t1,.L0d9bd66c
    sb	$a5,1($a2)
    # Line 3756
    sb	$a5,25($a2)
    # Line 3755
    li	$v1,4
    sw	$v1,16($a2)
    # Line 3754
    sw	$zero,12($a2)
    # Line 3753
    sb	$a6,8($a2)
    move	$a1,$a5
    # Line 3752
    sb	$a6,9($a2)
    # Line 3754
    move	$a3,$zero
    b	.L0d9bd170
    # Line 3751
    sb	$a4,2($a2)
.L0d9bd4d8:
    # Line 3762
    li	$t1,12
    li	$a6,3
    li	$a4,2
    li	$a5,1
    beq	$a1,$t1,.L0d9bd694
    sb	$a5,1($a2)
    # Line 3781
    sb	$a5,25($a2)
    # Line 3780
    li	$a0,4
    sw	$a0,16($a2)
    # Line 3779
    sw	$zero,12($a2)
    # Line 3778
    sb	$a4,8($a2)
    move	$a1,$a5
    # Line 3777
    sb	$a6,9($a2)
    # Line 3779
    move	$a3,$zero
    b	.L0d9bd170
    # Line 3776
    sb	$a4,2($a2)
.L0d9bd518:
    # Line 3875
    li	$a4,2
    # Line 3876
    sb	$a4,8($a2)
    # Line 3875
    sb	$a4,9($a2)
    # Line 3876
    li	$t0,10
    # Line 3874
    li	$a5,1
    sb	$a5,2($a2)
    # Line 3887
    move	$a3,$zero
    # Line 3876
    beq	$a1,$t0,.L0d9bd6c0
    # Line 3873
    sb	$zero,1($a2)
    # Line 3889
    sb	$a5,25($a2)
    # Line 3888
    sw	$a4,16($a2)
    move	$a1,$a5
    b	.L0d9bd170
    # Line 3887
    sw	$zero,12($a2)
.L0d9bd550:
    # Line 3898
    li	$a3,3
    sb	$a3,8($a2)
    # Line 3897
    li	$a4,2
    sb	$a4,9($a2)
    # Line 3898
    li	$t0,10
    # Line 3896
    li	$a5,1
    sb	$a5,2($a2)
    # Line 3898
    beq	$a1,$t0,.L0d9bd6dc
    # Line 3895
    sb	$zero,1($a2)
    # Line 3911
    sb	$a5,25($a2)
    # Line 3909
    move	$a3,$zero
    # Line 3910
    sw	$a5,16($a2)
    move	$a1,$a5
    b	.L0d9bd170
    # Line 3909
    sw	$zero,12($a2)
.L0d9bd58c:
    # Line 3919
    li	$a4,2
    sb	$a4,9($a2)
    li	$t0,10
    # Line 3918
    li	$a5,1
    sb	$a5,2($a2)
    # Line 3919
    beq	$a1,$t0,.L0d9bd6f8
    # Line 3917
    sb	$zero,1($a2)
    # Line 3933
    sb	$a5,25($a2)
    # Line 3932
    sw	$zero,16($a2)
    move	$a1,$a5
    # Line 3931
    sw	$zero,12($a2)
    move	$a3,$zero
    b	.L0d9bd170
    # Line 3930
    sb	$a4,8($a2)
.L0d9bd5c4:
    # Line 4025
    b	.L0d9bd5d0
    # Line 4024
    sw	$a4,4($a2)
.L0d9bd5cc:
    # Line 4012
    sw	$zero,4($a2)
.L0d9bd5d0:
    # Line 4039
    li	$v0,1
    # Line 3963
    jr	$ra
    # Line 4036
    sb	$a5,0($a2)
.L0d9bd5dc:
    # Line 4016
    b	.L0d9bd5d0
    # Line 4015
    sw	$zero,4($a2)
.L0d9bd5e4:
    # Line 4019
    b	.L0d9bd5d0
    # Line 4018
    sw	$a5,4($a2)
.L0d9bd5ec:
    # Line 4022
    b	.L0d9bd5d0
    # Line 4021
    sw	$a4,4($a2)
.L0d9bd5f4:
    b	.L0d9bd148
    # Line 3941
    sb	$a5,2($a2)
.L0d9bd5fc:
    # Line 3666
    sb	$a4,25($a2)
    # Line 3665
    sw	$t0,16($a2)
    # Line 3664
    sw	$a5,12($a2)
    # Line 3663
    sb	$a7,8($a2)
    move	$a1,$a4
    # Line 3662
    sb	$a4,9($a2)
    move	$a3,$a5
    # Line 3666
    b	.L0d9bd170
    # Line 3661
    sb	$a4,2($a2)
.L0d9bd620:
    # Line 3644
    sb	$a4,25($a2)
    # Line 3643
    sw	$t0,16($a2)
    # Line 3642
    sw	$a5,12($a2)
    # Line 3641
    sb	$a7,8($a2)
    move	$a1,$a4
    # Line 3640
    sb	$a4,9($a2)
    move	$a3,$a5
    # Line 3644
    b	.L0d9bd170
    # Line 3639
    sb	$a5,2($a2)
.L0d9bd644:
    # Line 3722
    sb	$a6,25($a2)
    # Line 3721
    sw	$t1,16($a2)
    # Line 3720
    sw	$a4,12($a2)
    # Line 3719
    sb	$a5,10($a2)
    # Line 3718
    sb	$a4,8($a2)
    move	$a1,$a6
    # Line 3717
    sb	$a6,9($a2)
    move	$a3,$a4
    # Line 3722
    b	.L0d9bd170
    # Line 3716
    sb	$a4,2($a2)
.L0d9bd66c:
    # Line 3747
    sb	$a6,25($a2)
    # Line 3746
    sw	$t1,16($a2)
    # Line 3745
    sw	$a4,12($a2)
    # Line 3744
    sb	$a5,10($a2)
    # Line 3743
    sb	$a6,8($a2)
    move	$a1,$a6
    # Line 3742
    sb	$a6,9($a2)
    move	$a3,$a4
    # Line 3747
    b	.L0d9bd170
    # Line 3741
    sb	$a4,2($a2)
.L0d9bd694:
    # Line 3772
    sb	$a6,25($a2)
    # Line 3771
    sw	$t1,16($a2)
    # Line 3770
    sw	$a4,12($a2)
    # Line 3769
    sb	$a5,10($a2)
    # Line 3768
    li	$a7,7
    sb	$a7,8($a2)
    move	$a1,$a6
    # Line 3767
    sb	$a6,9($a2)
    move	$a3,$a4
    # Line 3772
    b	.L0d9bd170
    # Line 3766
    sb	$a4,2($a2)
.L0d9bd6c0:
    # Line 3883
    sb	$a4,25($a2)
    # Line 3882
    sw	$t0,16($a2)
    move	$a1,$a4
    # Line 3881
    sw	$a5,12($a2)
    move	$a3,$a5
    # Line 3883
    b	.L0d9bd170
    # Line 3880
    sb	$a5,10($a2)
.L0d9bd6dc:
    # Line 3905
    sb	$a4,25($a2)
    # Line 3904
    sw	$t0,16($a2)
    move	$a1,$a4
    # Line 3903
    sw	$a5,12($a2)
    move	$a3,$a5
    # Line 3905
    b	.L0d9bd170
    # Line 3902
    sb	$a5,10($a2)
.L0d9bd6f8:
    # Line 3926
    sb	$a4,25($a2)
    # Line 3925
    sw	$t0,16($a2)
    move	$a1,$a4
    # Line 3924
    sw	$a5,12($a2)
    move	$a3,$a5
    # Line 3923
    li	$t1,7
    # Line 3926
    b	.L0d9bd170
    # Line 3923
    sb	$t1,8($a2)
.L0d9bd718:
    # Line 3839
    li	$t2,4
    sb	$t2,25($a2)
    # Line 3838
    sw	$a6,16($a2)
    # Line 3837
    sw	$zero,12($a2)
    # Line 3836
    sb	$a7,8($a2)
    move	$a1,$t2
    # Line 3835
    sb	$a4,9($a2)
    # Line 3837
    move	$a3,$zero
    # Line 3839
    b	.L0d9bd170
    # Line 3834
    sb	$a6,2($a2)
.L0d9bd740:
    # Line 3796
    sb	$a5,25($a2)
    # Line 3795
    sw	$a4,16($a2)
    # Line 3794
    sw	$zero,12($a2)
    # Line 3793
    sb	$a4,8($a2)
    move	$a1,$a5
    # Line 3792
    sb	$a4,9($a2)
    # Line 3794
    move	$a3,$zero
    # Line 3796
    b	.L0d9bd170
    # Line 3791
    sb	$a5,2($a2)
.L0d9bd764:
    # Line 3859
    sb	$a6,25($a2)
    # Line 3858
    sw	$t1,16($a2)
    # Line 3857
    sw	$a4,12($a2)
    # Line 3856
    sb	$a5,10($a2)
    # Line 3855
    sb	$a7,8($a2)
    move	$a1,$a6
    # Line 3854
    sb	$a6,9($a2)
    move	$a3,$a4
    # Line 3859
    b	.L0d9bd170
    # Line 3853
    sb	$t0,2($a2)
.L0d9bd78c:
    # Line 3815
    sb	$a4,25($a2)
    # Line 3814
    sw	$t0,16($a2)
    # Line 3813
    sw	$a5,12($a2)
    # Line 3812
    sb	$a5,10($a2)
    # Line 3811
    sb	$a7,8($a2)
    move	$a1,$a4
    # Line 3810
    sb	$a4,9($a2)
    move	$a3,$a5
    # Line 3815
    b	.L0d9bd170
    # Line 3809
    sb	$zero,2($a2)
.L0d9bd7b4:
    # Line 3849
    sb	$a4,25($a2)
    # Line 3848
    sw	$t0,16($a2)
    # Line 3847
    sw	$a5,12($a2)
    # Line 3846
    sb	$a5,10($a2)
    # Line 3845
    sb	$a7,8($a2)
    move	$a1,$a4
    # Line 3844
    sb	$a4,9($a2)
    move	$a3,$a5
    # Line 3849
    b	.L0d9bd170
    # Line 3843
    sb	$a6,2($a2)
.L0d9bd7dc:
    # Line 3805
    sb	$a5,25($a2)
    # Line 3804
    sw	$zero,16($a2)
    # Line 3803
    sw	$zero,12($a2)
    # Line 3802
    sb	$a4,8($a2)
    move	$a1,$a5
    # Line 3801
    sb	$a4,9($a2)
    # Line 3803
    move	$a3,$zero
    # Line 3805
    b	.L0d9bd170
    # Line 3800
    sb	$zero,2($a2)
.end OdysseyImageCalcXferCopyParams

# Function: __glOdysseyImageCalcXferWriteParams
# Declared: Line 4043 (Source lines: 4050-4947)
# Address: 0x0d9bd800 - 0x0d9beb3c (Size: 4924 bytes, Frame: 0)
.globl __glOdysseyImageCalcXferWriteParams
.ent __glOdysseyImageCalcXferWriteParams
__glOdysseyImageCalcXferWriteParams:
    # Line 4050
    lw	$a5,4112($zero)
    sw	$zero,0($a3)
    # Line 4060
    sb	$zero,0($a3)
    # Line 4050
    sw	$zero,20($a3)
    sw	$zero,16($a3)
    sw	$zero,12($a3)
    # Line 4087
    li	$a6,6406
    # Line 4050
    sw	$zero,8($a3)
    # Line 4087
    beq	$a6,$a0,.L0d9bd834
    # Line 4050
    sw	$zero,4($a3)
    # Line 4087
    beqz	$a2,.L0d9bdc08
    li	$at,3
    beq	$a2,$at,.L0d9bdc08
.L0d9bd834:
    # Line 4095
    li	$v0,6409
    beq	$a0,$v0,.L0d9bd960
    li	$v1,6410
    beq	$a0,$v1,.L0d9bd960
    li	$a4,0x8049
    beq	$a0,$a4,.L0d9bd960
.L0d9bd84c:
    # Line 4108
    sltiu	$a7,$a0,6407
    bnez	$a7,.L0d9bd8d0
    sltiu	$v1,$a0,6403
    sltiu	$t0,$a0,6408
    beqz	$t0,.L0d9bd9a8
    li	$a6,0x8000
    # Line 4505
    sltiu	$a0,$a1,5125
    # Line 4503
    li	$t1,9
    # Line 4505
    bnez	$a0,.L0d9bdab8
    # Line 4503
    sb	$t1,1($a3)
    # Line 4505
    sltiu	$t2,$a1,5126
    bnez	$t2,.L0d9bdad8
    li	$a0,0x8363
    sltu	$t3,$a1,$a0
    bnez	$t3,.L0d9bdf40
    sltu	$t8,$a0,$a1
    beqz	$t8,.L0d9bd8a0
    li	$t9,0x8364
    bne	$a1,$t9,.L0d9bdcdc
    # Line 4549
    li	$at,13
    sb	$at,1($a3)
.L0d9bd8a0:
    # Line 4551
    li	$a0,10
    beq	$a2,$a0,.L0d9be4a0
    li	$a6,1
    # Line 4561
    li	$v0,8
    sw	$v0,12($a3)
    # Line 4560
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4559
    sb	$a0,2($a3)
.L0d9bd8c0:
    # Line 4563
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4564
    b	.L0d9bdb04
    # Line 4563
    li	$a0,2
.L0d9bd8d0:
    # Line 4108
    bnez	$v1,.L0d9bda18
    sltiu	$t0,$a0,6401
    sltiu	$a4,$a0,6404
    bnez	$a4,.L0d9bda58
    # Line 4383
    li	$t9,6403
    # Line 4108
    sltiu	$a7,$a0,6405
    bnez	$a7,.L0d9bda50
    li	$t8,6404
    sltiu	$t0,$a0,6406
    bnez	$t0,.L0d9bda58
    # Line 4383
    li	$t9,6403
    # Line 4108
    bne	$a6,$a0,.L0d9bdb44
    nop
    # Line 4423
    beqz	$a2,.L0d9be4bc
    # Line 4436
    li	$v0,5120
    # Line 4423
    li	$t0,3
    beq	$a2,$t0,.L0d9be4b8
    # Line 4470
    li	$t2,5120
    # Line 4468
    li	$t1,7
    # Line 4470
    beq	$a1,$t2,.L0d9be73c
    # Line 4468
    sb	$t1,1($a3)
    # Line 4470
    li	$t3,5121
    beq	$a1,$t3,.L0d9be73c
    li	$t8,5122
    beq	$a1,$t8,.L0d9be8a4
    li	$t9,5123
    beq	$a1,$t9,.L0d9be8a4
    li	$at,5124
    beq	$a1,$at,.L0d9be7a8
    # Line 4493
    li	$a6,1
    # Line 4470
    li	$v0,5125
    beq	$a1,$v0,.L0d9be7a8
    # Line 4493
    li	$a6,1
    # Line 4496
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4497
    move	$v0,$zero
.L0d9bd960:
    # Line 4095
    li	$v1,10
    beq	$a2,$v1,.L0d9bd9a0
    # Line 4104
    li	$t3,1
    # Line 4095
    li	$a4,12
    beq	$a2,$a4,.L0d9bd9a0
    # Line 4104
    li	$t3,1
    # Line 4095
    li	$a7,13
    beq	$a2,$a7,.L0d9bd9a0
    # Line 4104
    li	$t3,1
    # Line 4095
    li	$t0,7
    beq	$a2,$t0,.L0d9bd99c
    li	$t1,8
    beq	$a2,$t1,.L0d9bd99c
    li	$t2,11
    bne	$a2,$t2,.L0d9bd84c
.L0d9bd99c:
    # Line 4104
    li	$t3,1
.L0d9bd9a0:
    b	.L0d9bd84c
    sb	$t3,3($a3)
.L0d9bd9a8:
    # Line 4108
    sltu	$t8,$a0,$a6
    bnez	$t8,.L0d9bdb7c
    sltiu	$a4,$a0,6409
    sltu	$t9,$a6,$a0
    bnez	$t9,.L0d9bdc14
    li	$a6,0x80e0
    # Line 4224
    li	$a0,0x8034
    sltu	$at,$a1,$a0
    # Line 4222
    li	$t0,12
    # Line 4224
    bnez	$at,.L0d9bdf64
    # Line 4222
    sb	$t0,1($a3)
    # Line 4224
    sltu	$v0,$a0,$a1
    beqz	$v0,.L0d9bda0c
    li	$a0,0x8366
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0d9be108
    sltu	$a4,$a0,$a1
    beqz	$a4,.L0d9bda0c
    li	$a0,0x8368
    sltu	$a6,$a1,$a0
    bnez	$a6,.L0d9be3e4
    li	$v1,0x8367
    sltu	$a7,$a0,$a1
    bnez	$a7,.L0d9be13c
    nop
.L0d9bda0c:
    # Line 4316
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4317
    move	$v0,$zero
.L0d9bda18:
    # Line 4108
    bnez	$t0,.L0d9bdbd0
    li	$at,6400
    sltiu	$t1,$a0,6402
    beqz	$t1,.L0d9bdce8
    li	$a6,6402
    # Line 4849
    li	$t2,5124
    beq	$a1,$t2,.L0d9be004
    # Line 4847
    sb	$zero,1($a3)
    # Line 4849
    li	$t3,5125
    beq	$a1,$t3,.L0d9be008
    # Line 4852
    li	$a7,2
    # Line 4859
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4860
    move	$v0,$zero
.L0d9bda50:
    # Line 4108
    bne	$a0,$t8,.L0d9bdb44
    # Line 4383
    li	$t9,6403
.L0d9bda58:
    beq	$a0,$t9,.L0d9bdff8
    # Line 4384
    li	$at,6404
    beq	$a0,$at,.L0d9bdfec
    # Line 4388
    li	$v0,6
    sb	$v0,1($a3)
.L0d9bda6c:
    # Line 4390
    li	$v1,5120
    beq	$a1,$v1,.L0d9bddec
    # Line 4393
    li	$a7,2
    # Line 4390
    li	$a0,5121
    beq	$a1,$a0,.L0d9bdde8
    li	$a2,5122
    beq	$a1,$a2,.L0d9bdf1c
    # Line 4401
    li	$a0,3
    # Line 4390
    li	$a4,5123
    beq	$a1,$a4,.L0d9bdf18
    li	$a6,5124
    beq	$a1,$a6,.L0d9bde14
    # Line 4413
    li	$a6,1
    # Line 4390
    li	$a7,5125
    beq	$a1,$a7,.L0d9bde14
    # Line 4413
    li	$a6,1
    # Line 4416
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4417
    move	$v0,$zero
.L0d9bdab8:
    # Line 4505
    sltiu	$a6,$a1,5122
    bnez	$a6,.L0d9bdcc8
    sltiu	$t0,$a1,5123
    bnez	$t0,.L0d9bde40
    sltiu	$t1,$a1,5124
    bnez	$t1,.L0d9bde3c
    li	$a2,5123
    beqz	$a0,.L0d9bdcdc
.L0d9bdad8:
    # Line 4534
    li	$t8,3
    sb	$t8,21($a3)
    # Line 4535
    li	$a6,1
    # Line 4533
    li	$t3,12
    sw	$t3,12($a3)
    move	$a0,$t8
    # Line 4532
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4531
    li	$t2,4
    sb	$t2,2($a3)
.L0d9bdb04:
    # Line 4888
    beq	$a0,$a7,.L0d9bdd8c
    # Line 4890
    li	$t1,17
    # Line 4888
    li	$t9,3
    beq	$a0,$t9,.L0d9bddac
    # Line 4893
    li	$t3,18
    # Line 4888
    beq	$a0,$a6,.L0d9bdb50
    li	$at,4
    beq	$a0,$at,.L0d9bdb50
    li	$v0,6
    beq	$a0,$v0,.L0d9bdb50
    li	$v1,7
    beq	$a0,$v1,.L0d9bdb54
    # Line 4899
    li	$a0,16
    # Line 4909
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4910
    move	$v0,$zero
.L0d9bdb44:
    # Line 4883
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    move	$v0,$zero
.L0d9bdb50:
    # Line 4899
    li	$a0,16
.L0d9bdb54:
    sb	$a0,20($a3)
.L0d9bdb58:
    # Line 4914
    beqz	$a2,.L0d9bde68
    nop
    beq	$a2,$a6,.L0d9bdf10
    nop
    beq	$a2,$a7,.L0d9bdc98
    nop
    # Line 4930
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4931
    move	$v0,$zero
.L0d9bdb7c:
    # Line 4108
    bnez	$a4,.L0d9bdd10
    sltiu	$a6,$a0,6410
    beqz	$a6,.L0d9bdec0
    # Line 4643
    li	$t0,5120
    # Line 4641
    li	$a7,2
    # Line 4643
    beq	$a1,$t0,.L0d9be230
    # Line 4641
    sb	$a7,1($a3)
    # Line 4643
    li	$t1,5121
    beq	$a1,$t1,.L0d9be230
    li	$t2,5122
    beq	$a1,$t2,.L0d9be2c4
    li	$t3,5123
    beq	$a1,$t3,.L0d9be2c4
    li	$t8,5124
    beq	$a1,$t8,.L0d9be25c
    li	$t9,5125
    beq	$a1,$t9,.L0d9be25c
    nop
    # Line 4693
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4694
    move	$v0,$zero
.L0d9bdbd0:
    # Line 4108
    bne	$a0,$at,.L0d9bdb44
    # Line 4818
    li	$v0,5121
    # Line 4816
    li	$a6,1
    # Line 4818
    beq	$a1,$v0,.L0d9be2f4
    # Line 4816
    sb	$a6,1($a3)
    # Line 4818
    li	$v1,5123
    beq	$a1,$v1,.L0d9be3bc
    # Line 4830
    li	$v0,7
    # Line 4818
    li	$a0,5125
    beq	$a1,$a0,.L0d9be1d8
    # Line 4837
    li	$t3,7
    # Line 4841
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4842
    move	$v0,$zero
.L0d9bdc08:
    # Line 4090
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4091
    move	$v0,$zero
.L0d9bdc14:
    # Line 4108
    sltu	$a4,$a0,$a6
    bnez	$a4,.L0d9bde70
    sltu	$a7,$a6,$a0
    bnez	$a7,.L0d9be074
    li	$a7,0x80e1
    # Line 4575
    sltiu	$a0,$a1,5125
    # Line 4573
    li	$t0,13
    # Line 4575
    bnez	$a0,.L0d9be0b4
    # Line 4573
    sb	$t0,1($a3)
    # Line 4575
    sltiu	$t1,$a1,5126
    bnez	$t1,.L0d9be0d8
    li	$a0,0x8363
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9be668
    sltu	$t3,$a0,$a1
    beqz	$t3,.L0d9bdc6c
    # Line 4619
    li	$a0,10
    # Line 4575
    li	$t8,0x8364
    bne	$a1,$t8,.L0d9be5a0
    # Line 4617
    li	$t9,9
    sb	$t9,1($a3)
    # Line 4619
    li	$a0,10
.L0d9bdc6c:
    beq	$a2,$a0,.L0d9beb24
    li	$a6,1
    # Line 4629
    li	$at,8
    sw	$at,12($a3)
    # Line 4628
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4627
    sb	$a0,2($a3)
.L0d9bdc88:
    # Line 4631
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4632
    b	.L0d9bdb04
    # Line 4631
    li	$a0,2
.L0d9bdc98:
    # Line 4922
    sb	$zero,16($a3)
.L0d9bdc9c:
    # Line 4936
    li	$v0,5120
    beq	$a1,$v0,.L0d9bdd94
    # Line 4935
    sb	$a6,0($a3)
    # Line 4936
    li	$v1,5122
    beq	$a1,$v1,.L0d9bdd94
    li	$a0,5124
    beq	$a1,$a0,.L0d9bdd94
    nop
    # Line 4943
    sb	$zero,4($a3)
.L0d9bdcc0:
    # Line 4884
    jr	$ra
    # Line 4947
    li	$v0,1
.L0d9bdcc8:
    # Line 4505
    sltiu	$a4,$a1,5121
    bnez	$a4,.L0d9bddb4
    li	$t8,5120
    bnez	$a6,.L0d9bddbc
    # Line 4508
    li	$t0,12
.L0d9bdcdc:
    # Line 4567
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4568
    move	$v0,$zero
.L0d9bdce8:
    # Line 4108
    bne	$a0,$a6,.L0d9bdb44
    # Line 4867
    li	$a7,5124
    beq	$a1,$a7,.L0d9be200
    # Line 4865
    sb	$zero,1($a3)
    # Line 4867
    li	$t0,5125
    beq	$a1,$t0,.L0d9be204
    # Line 4870
    li	$a7,2
    # Line 4877
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4878
    move	$v0,$zero
.L0d9bdd10:
    # Line 4108
    li	$t1,6408
    bne	$a0,$t1,.L0d9bdb44
    nop
    lw	$t2,1224($a5)
    li	$t3,0x85a3
    beq	$t2,$t3,.L0d9be374
    # Line 4145
    li	$a0,0x8034
    sltu	$t8,$a1,$a0
    # Line 4143
    li	$t1,11
    # Line 4145
    bnez	$t8,.L0d9be178
    # Line 4143
    sb	$t1,1($a3)
    # Line 4145
    sltu	$t9,$a0,$a1
    beqz	$t9,.L0d9bdd60
    li	$a0,0x8366
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9be618
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9be6f4
    # Line 4194
    li	$v1,12
    sb	$v1,1($a3)
.L0d9bdd60:
    # Line 4201
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4202
    li	$a6,1
    # Line 4200
    li	$t0,8
    sw	$t0,12($a3)
    move	$a0,$a7
    # Line 4199
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4198
    li	$a4,7
    # Line 4202
    b	.L0d9bdb04
    # Line 4198
    sb	$a4,2($a3)
.L0d9bdd8c:
    b	.L0d9bdb58
    # Line 4890
    sb	$t1,20($a3)
.L0d9bdd94:
    # Line 4939
    lw	$t2,31600($a5)
    # Line 4941
    sb	$a6,4($a3)
    # Line 4939
    andi	$t2,$t2,0x80
    sltu	$t2,$zero,$t2
    # Line 4941
    b	.L0d9bdcc0
    # Line 4939
    sb	$t2,0($a3)
.L0d9bddac:
    # Line 4894
    b	.L0d9bdb58
    # Line 4893
    sb	$t3,20($a3)
.L0d9bddb4:
    # Line 4505
    bne	$a1,$t8,.L0d9bdcdc
    # Line 4508
    li	$t0,12
.L0d9bddbc:
    li	$a7,2
    beq	$a2,$t0,.L0d9be35c
    li	$a6,1
    # Line 4516
    li	$t9,10
    sw	$t9,12($a3)
    # Line 4515
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4514
    sb	$a7,2($a3)
.L0d9bdddc:
    # Line 4518
    sb	$a7,21($a3)
    b	.L0d9bdb04
    li	$a0,2
.L0d9bdde8:
    # Line 4393
    li	$a7,2
.L0d9bddec:
    # Line 4396
    sb	$a7,21($a3)
    # Line 4395
    li	$at,10
    sw	$at,12($a3)
    # Line 4394
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4393
    sb	$a7,2($a3)
    b	.L0d9bdb04
    move	$a0,$a7
    # Line 4413
    li	$a6,1
.L0d9bde14:
    # Line 4412
    li	$a0,3
    sb	$a0,21($a3)
    # Line 4411
    li	$v1,12
    sw	$v1,12($a3)
    # Line 4410
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4409
    li	$v0,4
    # Line 4413
    b	.L0d9bdb04
    # Line 4409
    sb	$v0,2($a3)
.L0d9bde3c:
    # Line 4505
    bne	$a1,$a2,.L0d9bdcdc
.L0d9bde40:
    # Line 4523
    li	$a0,3
    # Line 4526
    sb	$a0,21($a3)
    # Line 4525
    li	$a4,12
    sw	$a4,12($a3)
    # Line 4527
    li	$a6,1
    # Line 4524
    li	$a7,2
    sw	$a7,8($a3)
    # Line 4523
    sb	$a0,2($a3)
    # Line 4527
    b	.L0d9bdb04
    move	$a2,$a7
.L0d9bde68:
    b	.L0d9bdc9c
    # Line 4916
    sb	$zero,16($a3)
.L0d9bde70:
    # Line 4108
    li	$a6,0x8049
    bne	$a0,$a6,.L0d9bdb44
    # Line 4701
    li	$a7,5120
    # Line 4699
    li	$t0,3
    # Line 4701
    beq	$a1,$a7,.L0d9be50c
    # Line 4699
    sb	$t0,1($a3)
    # Line 4701
    li	$t1,5121
    beq	$a1,$t1,.L0d9be50c
    li	$t2,5122
    beq	$a1,$t2,.L0d9be690
    li	$t3,5123
    beq	$a1,$t3,.L0d9be690
    li	$t8,5124
    beq	$a1,$t8,.L0d9be5ac
    li	$t9,5125
    beq	$a1,$t9,.L0d9be5ac
    nop
    # Line 4751
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4752
    move	$v0,$zero
.L0d9bdec0:
    # Line 4108
    li	$at,6410
    bne	$a0,$at,.L0d9bdb44
    # Line 4760
    li	$v1,5120
    # Line 4758
    li	$v0,8
    # Line 4760
    beq	$a1,$v1,.L0d9be53c
    # Line 4758
    sb	$v0,1($a3)
    # Line 4760
    li	$a0,5121
    beq	$a1,$a0,.L0d9be53c
    li	$a2,5122
    beq	$a1,$a2,.L0d9be6c0
    li	$a4,5123
    beq	$a1,$a4,.L0d9be6c0
    li	$a6,5124
    beq	$a1,$a6,.L0d9be5e0
    li	$a7,5125
    beq	$a1,$a7,.L0d9be5e0
    nop
    # Line 4810
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4811
    move	$v0,$zero
.L0d9bdf10:
    # Line 4920
    b	.L0d9bdc9c
    # Line 4919
    sb	$a6,16($a3)
.L0d9bdf18:
    # Line 4401
    li	$a0,3
.L0d9bdf1c:
    # Line 4404
    sb	$a0,21($a3)
    # Line 4403
    li	$t0,12
    sw	$t0,12($a3)
    # Line 4405
    li	$a6,1
    # Line 4402
    li	$a7,2
    sw	$a7,8($a3)
    # Line 4401
    sb	$a0,2($a3)
    # Line 4405
    b	.L0d9bdb04
    move	$a2,$a7
.L0d9bdf40:
    # Line 4505
    li	$a0,0x8362
    sltu	$t1,$a1,$a0
    bnez	$t1,.L0d9bdfbc
    li	$t1,0x8032
    sltu	$t2,$a0,$a1
    bnez	$t2,.L0d9bdcdc
    # Line 4538
    li	$t3,13
    b	.L0d9bdfc0
    sb	$t3,1($a3)
.L0d9bdf64:
    # Line 4224
    sltiu	$t8,$a1,5123
    bnez	$t8,.L0d9be034
    sltiu	$a0,$a1,5121
    sltiu	$t9,$a1,5124
    bnez	$t9,.L0d9be050
    sltiu	$at,$a1,5125
    bnez	$at,.L0d9be290
    sltiu	$v0,$a1,5126
    bnez	$v0,.L0d9be298
    li	$v1,0x8033
    bne	$a1,$v1,.L0d9be13c
.L0d9bdf90:
    # Line 4269
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4270
    li	$a6,1
    # Line 4268
    li	$t0,7
    sw	$t0,12($a3)
    move	$a0,$a7
    # Line 4267
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4266
    li	$a4,6
    # Line 4270
    b	.L0d9bdb04
    # Line 4266
    sb	$a4,2($a3)
.L0d9bdfbc:
    # Line 4505
    bne	$a1,$t1,.L0d9bdcdc
.L0d9bdfc0:
    # Line 4545
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4546
    li	$a6,1
    # Line 4544
    li	$t3,7
    sw	$t3,12($a3)
    move	$a0,$a7
    # Line 4543
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4542
    li	$t2,5
    # Line 4546
    b	.L0d9bdb04
    # Line 4542
    sb	$t2,2($a3)
.L0d9bdfec:
    # Line 4386
    li	$t8,5
    b	.L0d9bda6c
    sb	$t8,1($a3)
.L0d9bdff8:
    # Line 4384
    li	$t9,4
    b	.L0d9bda6c
    sb	$t9,1($a3)
.L0d9be004:
    # Line 4852
    li	$a7,2
.L0d9be008:
    # Line 4855
    li	$v1,6
    sb	$v1,21($a3)
    # Line 4852
    li	$a6,1
    # Line 4854
    li	$v0,17
    sw	$v0,12($a3)
    move	$a0,$v1
    # Line 4853
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4852
    li	$at,4
    b	.L0d9bdb04
    sb	$at,2($a3)
.L0d9be034:
    # Line 4224
    bnez	$a0,.L0d9be148
    li	$t3,5120
    sltiu	$a4,$a1,5122
    bnez	$a4,.L0d9be150
    # Line 4228
    li	$a7,2
    # Line 4224
    li	$a6,5122
    bne	$a1,$a6,.L0d9be13c
.L0d9be050:
    # Line 4247
    li	$a0,3
    # Line 4250
    sb	$a0,21($a3)
    # Line 4249
    sw	$t0,12($a3)
    # Line 4251
    li	$a6,1
    # Line 4248
    li	$a7,2
    sw	$a7,8($a3)
    # Line 4247
    sb	$a0,2($a3)
    # Line 4251
    b	.L0d9bdb04
    move	$a2,$a7
.L0d9be074:
    # Line 4108
    bne	$a0,$a7,.L0d9bdb44
    # Line 4328
    li	$a0,0x8036
    sltu	$t1,$a1,$a0
    # Line 4326
    li	$t0,17
    # Line 4328
    bnez	$t1,.L0d9be474
    # Line 4326
    sb	$t0,1($a3)
    # Line 4328
    sltu	$t2,$a0,$a1
    beqz	$t2,.L0d9be774
    li	$a0,0x8367
    sltu	$t3,$a1,$a0
    bnez	$t3,.L0d9be814
    sltu	$t8,$a0,$a1
    bnez	$t8,.L0d9be764
    # Line 4330
    li	$t9,16
    b	.L0d9be87c
    sb	$t9,1($a3)
.L0d9be0b4:
    # Line 4575
    sltiu	$a6,$a1,5122
    bnez	$a6,.L0d9be3f4
    sltiu	$a4,$a1,5121
    sltiu	$at,$a1,5123
    bnez	$at,.L0d9be570
    sltiu	$v0,$a1,5124
    bnez	$v0,.L0d9be56c
    li	$t8,5123
    beqz	$a0,.L0d9be5a0
.L0d9be0d8:
    # Line 4605
    li	$a6,1
    # Line 4604
    li	$a4,3
    sb	$a4,21($a3)
    move	$a0,$a4
    # Line 4603
    li	$a2,12
    sw	$a2,12($a3)
    # Line 4602
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4601
    li	$v1,4
    # Line 4605
    b	.L0d9bdb04
    # Line 4601
    sb	$v1,2($a3)
.L0d9be108:
    # Line 4224
    li	$a0,0x8036
    sltu	$a6,$a1,$a0
    bnez	$a6,.L0d9be134
    li	$t2,0x8035
    sltu	$a7,$a0,$a1
    beqz	$a7,.L0d9bda0c
    li	$t0,0x8365
    bne	$a1,$t0,.L0d9be13c
    # Line 4262
    li	$t1,11
    b	.L0d9bdf90
    sb	$t1,1($a3)
.L0d9be134:
    # Line 4224
    beq	$a1,$t2,.L0d9be150
    # Line 4228
    li	$a7,2
.L0d9be13c:
    # Line 4320
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4321
    move	$v0,$zero
.L0d9be148:
    # Line 4224
    bne	$a1,$t3,.L0d9be13c
.L0d9be14c:
    # Line 4228
    li	$a7,2
.L0d9be150:
    beq	$a2,$t0,.L0d9be860
    li	$a6,1
    # Line 4240
    li	$t8,10
    sw	$t8,12($a3)
    # Line 4239
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4238
    sb	$a7,2($a3)
.L0d9be16c:
    # Line 4242
    sb	$a7,21($a3)
    b	.L0d9bdb04
    li	$a0,2
.L0d9be178:
    # Line 4145
    sltiu	$t9,$a1,5123
    bnez	$t9,.L0d9be31c
    sltiu	$at,$a1,5124
    bnez	$at,.L0d9be450
    # Line 4168
    li	$a0,3
    # Line 4145
    sltiu	$v0,$a1,5125
    bnez	$v0,.L0d9be640
    li	$at,5124
    sltiu	$v1,$a1,5126
    bnez	$v1,.L0d9be968
    # Line 4180
    li	$a6,1
    # Line 4145
    li	$a0,0x8033
    bne	$a1,$a0,.L0d9be648
.L0d9be1ac:
    # Line 4190
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4191
    li	$a6,1
    # Line 4189
    li	$t0,7
    sw	$t0,12($a3)
    move	$a0,$a7
    # Line 4188
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4187
    li	$a4,6
    # Line 4191
    b	.L0d9bdb04
    # Line 4187
    sb	$a4,2($a3)
.L0d9be1d8:
    # Line 4837
    sb	$t3,21($a3)
    # Line 4838
    li	$a7,2
    # Line 4836
    li	$t2,17
    sw	$t2,12($a3)
    move	$a0,$t3
    # Line 4835
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4834
    li	$t1,4
    # Line 4838
    b	.L0d9bdb04
    # Line 4834
    sb	$t1,2($a3)
.L0d9be200:
    # Line 4870
    li	$a7,2
.L0d9be204:
    # Line 4873
    li	$at,6
    sb	$at,21($a3)
    move	$a0,$at
    # Line 4872
    li	$t9,-1
    sw	$t9,12($a3)
    # Line 4871
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4870
    li	$t8,4
    b	.L0d9bdb04
    sb	$t8,2($a3)
.L0d9be230:
    # Line 4646
    lbu	$v0,3($a3)
    li	$a6,1
    beqz	$v0,.L0d9be908
    sb	$a7,2($a3)
    # Line 4651
    sb	$a7,21($a3)
    move	$a2,$a6
    # Line 4650
    li	$v1,10
    sw	$v1,12($a3)
    # Line 4651
    li	$a0,2
    b	.L0d9bdb04
    # Line 4649
    sw	$a6,8($a3)
.L0d9be25c:
    # Line 4678
    lbu	$a2,3($a3)
    li	$a6,1
    li	$a0,4
    beqz	$a2,.L0d9be948
    sb	$a0,2($a3)
    # Line 4683
    li	$t0,3
    sb	$t0,21($a3)
    move	$a0,$t0
    # Line 4682
    li	$a4,12
    sw	$a4,12($a3)
    # Line 4681
    sw	$a7,8($a3)
    # Line 4683
    b	.L0d9bdb04
    # Line 4681
    li	$a2,2
.L0d9be290:
    # Line 4224
    li	$t1,5124
    bne	$a1,$t1,.L0d9be13c
.L0d9be298:
    # Line 4258
    li	$t3,3
    sb	$t3,21($a3)
    # Line 4259
    li	$a6,1
    move	$a0,$t3
    # Line 4257
    sw	$t0,12($a3)
    # Line 4256
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4255
    li	$t2,4
    # Line 4259
    b	.L0d9bdb04
    # Line 4255
    sb	$t2,2($a3)
.L0d9be2c4:
    # Line 4662
    lbu	$t8,3($a3)
    li	$a6,1
    li	$t0,3
    beqz	$t8,.L0d9be994
    sb	$t0,2($a3)
    # Line 4667
    sb	$t0,21($a3)
    move	$a0,$t0
    # Line 4666
    li	$t9,12
    sw	$t9,12($a3)
    # Line 4665
    sw	$a7,8($a3)
    # Line 4667
    b	.L0d9bdb04
    # Line 4665
    li	$a2,2
.L0d9be2f4:
    # Line 4823
    li	$v0,7
    sb	$v0,21($a3)
    # Line 4822
    li	$at,16
    sw	$at,12($a3)
    move	$a0,$v0
    # Line 4821
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4820
    li	$a7,2
    b	.L0d9bdb04
    sb	$a7,2($a3)
.L0d9be31c:
    # Line 4145
    sltiu	$v1,$a1,5121
    bnez	$v1,.L0d9be654
    sltiu	$a0,$a1,5122
    beqz	$a0,.L0d9be444
    li	$t0,12
.L0d9be330:
    # Line 4149
    li	$a7,2
    beq	$a2,$t0,.L0d9bea50
    li	$a6,1
    # Line 4161
    li	$a2,10
    sw	$a2,12($a3)
    # Line 4160
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4159
    sb	$a7,2($a3)
.L0d9be350:
    # Line 4163
    sb	$a7,21($a3)
    b	.L0d9bdb04
    li	$a0,2
.L0d9be35c:
    # Line 4511
    sw	$t0,12($a3)
    # Line 4510
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4509
    li	$a4,11
    # Line 4511
    b	.L0d9bdddc
    # Line 4509
    sb	$a4,2($a3)
.L0d9be374:
    # Line 4108
    lw	$a6,1228($a5)
    li	$a7,0x842f
    beq	$a6,$a7,.L0d9be9e4
    # Line 4117
    li	$t0,10
    sb	$t0,1($a3)
.L0d9be388:
    # Line 4119
    li	$t1,5120
    beq	$a1,$t1,.L0d9be924
    # Line 4122
    li	$a7,2
    # Line 4119
    li	$t2,5121
    beq	$a1,$t2,.L0d9be920
    li	$t3,5122
    beq	$a1,$t3,.L0d9be8cc
    li	$t8,5123
    beq	$a1,$t8,.L0d9be8d0
    # Line 4130
    li	$a0,3
    # Line 4137
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4138
    move	$v0,$zero
.L0d9be3bc:
    # Line 4830
    sb	$v0,21($a3)
    # Line 4831
    li	$a7,2
    # Line 4829
    li	$at,17
    sw	$at,12($a3)
    move	$a0,$v0
    # Line 4828
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4827
    li	$t9,3
    # Line 4831
    b	.L0d9bdb04
    # Line 4827
    sb	$t9,2($a3)
.L0d9be3e4:
    # Line 4224
    bne	$a1,$v1,.L0d9be13c
    # Line 4226
    li	$a0,11
    b	.L0d9be14c
    sb	$a0,1($a3)
.L0d9be3f4:
    # Line 4575
    bnez	$a4,.L0d9be40c
    nop
    bnez	$a6,.L0d9be418
    # Line 4578
    li	$t0,12
    b	.L0d9be5a4
    # Line 4635
    sb	$zero,0($a3)
.L0d9be40c:
    # Line 4575
    li	$a6,5120
    bne	$a1,$a6,.L0d9be5a0
    # Line 4578
    li	$t0,12
.L0d9be418:
    li	$a7,2
    beq	$a2,$t0,.L0d9bead0
    li	$a6,1
    # Line 4586
    li	$t0,10
    sw	$t0,12($a3)
    # Line 4585
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4584
    sb	$a7,2($a3)
.L0d9be438:
    # Line 4588
    sb	$a7,21($a3)
    b	.L0d9bdb04
    li	$a0,2
.L0d9be444:
    # Line 4145
    li	$t1,5122
    bne	$a1,$t1,.L0d9be648
    # Line 4168
    li	$a0,3
.L0d9be450:
    # Line 4171
    sb	$a0,21($a3)
    # Line 4170
    li	$t2,12
    sw	$t2,12($a3)
    # Line 4172
    li	$a6,1
    # Line 4169
    li	$a7,2
    sw	$a7,8($a3)
    # Line 4168
    sb	$a0,2($a3)
    # Line 4172
    b	.L0d9bdb04
    move	$a2,$a7
.L0d9be474:
    # Line 4328
    li	$a0,0x8034
    sltu	$t3,$a1,$a0
    bnez	$t3,.L0d9be7d0
    sltu	$t8,$a0,$a1
    beqz	$t8,.L0d9be834
    li	$t9,0x8035
    beq	$a1,$t9,.L0d9be880
    # Line 4335
    li	$a7,2
.L0d9be494:
    # Line 4375
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4376
    move	$v0,$zero
.L0d9be4a0:
    # Line 4556
    sw	$a0,12($a3)
    # Line 4555
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4554
    li	$at,12
    # Line 4556
    b	.L0d9bd8c0
    # Line 4554
    sb	$at,2($a3)
.L0d9be4b8:
    # Line 4436
    li	$v0,5120
.L0d9be4bc:
    # Line 4434
    sb	$zero,3($a3)
    # Line 4433
    li	$a7,2
    # Line 4436
    beq	$a1,$v0,.L0d9be9b0
    # Line 4433
    sb	$a7,1($a3)
    # Line 4436
    li	$v1,5121
    beq	$a1,$v1,.L0d9be9b0
    li	$a0,5122
    beq	$a1,$a0,.L0d9be9f4
    # Line 4450
    li	$a6,1
    # Line 4436
    li	$a2,5123
    beq	$a1,$a2,.L0d9be9f0
    li	$a4,5124
    beq	$a1,$a4,.L0d9bea68
    # Line 4458
    li	$a6,1
    # Line 4436
    li	$a6,5125
    beq	$a1,$a6,.L0d9bea68
    # Line 4458
    li	$a6,1
    # Line 4462
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4463
    move	$v0,$zero
.L0d9be50c:
    # Line 4704
    lbu	$t0,3($a3)
    li	$a6,1
    li	$a7,2
    beqz	$t0,.L0d9bea18
    sb	$a7,2($a3)
    # Line 4709
    sb	$a7,21($a3)
    move	$a2,$a6
    # Line 4708
    li	$t1,10
    sw	$t1,12($a3)
    move	$a0,$a7
    # Line 4709
    b	.L0d9bdb04
    # Line 4707
    sw	$a6,8($a3)
.L0d9be53c:
    # Line 4763
    lbu	$t2,3($a3)
    li	$a6,1
    li	$a7,2
    beqz	$t2,.L0d9bea30
    sb	$a7,2($a3)
    # Line 4768
    sb	$a7,21($a3)
    move	$a2,$a6
    # Line 4767
    li	$t3,10
    sw	$t3,12($a3)
    move	$a0,$a7
    # Line 4768
    b	.L0d9bdb04
    # Line 4766
    sw	$a6,8($a3)
.L0d9be56c:
    # Line 4575
    bne	$a1,$t8,.L0d9be5a0
.L0d9be570:
    # Line 4593
    li	$a0,3
    # Line 4596
    sb	$a0,21($a3)
    # Line 4595
    li	$t9,12
    sw	$t9,12($a3)
    # Line 4597
    li	$a6,1
    # Line 4594
    li	$a7,2
    sw	$a7,8($a3)
    # Line 4593
    sb	$a0,2($a3)
    # Line 4597
    b	.L0d9bdb04
    move	$a2,$a7
.L0d9be598:
    # Line 4575
    beq	$a1,$at,.L0d9be684
    nop
.L0d9be5a0:
    # Line 4635
    sb	$zero,0($a3)
.L0d9be5a4:
    # Line 4884
    jr	$ra
    # Line 4636
    move	$v0,$zero
.L0d9be5ac:
    # Line 4736
    lbu	$v0,3($a3)
    li	$a7,2
    li	$a6,1
    li	$t1,4
    beqz	$v0,.L0d9bea9c
    sb	$t1,2($a3)
    # Line 4741
    sb	$t0,21($a3)
    move	$a2,$a7
    # Line 4740
    li	$v1,12
    sw	$v1,12($a3)
    # Line 4741
    li	$a0,3
    b	.L0d9bdb04
    # Line 4739
    sw	$a7,8($a3)
.L0d9be5e0:
    # Line 4795
    lbu	$a0,3($a3)
    li	$a7,2
    li	$a6,1
    li	$t1,4
    beqz	$a0,.L0d9beab4
    sb	$t1,2($a3)
    # Line 4800
    li	$t0,3
    sb	$t0,21($a3)
    move	$a2,$a7
    # Line 4799
    li	$a4,12
    sw	$a4,12($a3)
    # Line 4798
    sw	$a7,8($a3)
    # Line 4800
    b	.L0d9bdb04
    move	$a0,$t0
.L0d9be618:
    # Line 4145
    li	$a0,0x8036
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9be8f4
    sltu	$t3,$a0,$a1
    beqz	$t3,.L0d9be710
    li	$t8,0x8365
    bne	$a1,$t8,.L0d9be648
    # Line 4183
    li	$t9,12
    b	.L0d9be1ac
    sb	$t9,1($a3)
.L0d9be640:
    # Line 4145
    beq	$a1,$at,.L0d9be968
    # Line 4180
    li	$a6,1
.L0d9be648:
    # Line 4216
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4217
    move	$v0,$zero
.L0d9be654:
    # Line 4145
    li	$v0,5120
    bne	$a1,$v0,.L0d9be648
    nop
    b	.L0d9be330
    li	$t0,12
.L0d9be668:
    # Line 4575
    li	$a0,0x8362
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0d9be598
    li	$at,0x8032
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0d9be5a0
    nop
.L0d9be684:
    # Line 4613
    sb	$zero,0($a3)
    # Line 4884
    jr	$ra
    # Line 4614
    move	$v0,$zero
.L0d9be690:
    # Line 4720
    lbu	$a4,3($a3)
    li	$a7,2
    li	$a6,1
    beqz	$a4,.L0d9beae8
    sb	$t0,2($a3)
    # Line 4725
    sb	$t0,21($a3)
    move	$a2,$a7
    # Line 4724
    li	$t1,12
    sw	$t1,12($a3)
    # Line 4725
    li	$a0,3
    b	.L0d9bdb04
    # Line 4723
    sw	$a7,8($a3)
.L0d9be6c0:
    # Line 4779
    lbu	$t2,3($a3)
    li	$a7,2
    li	$a6,1
    li	$t0,3
    beqz	$t2,.L0d9beb04
    sb	$t0,2($a3)
    # Line 4784
    sb	$t0,21($a3)
    move	$a2,$a7
    # Line 4783
    li	$t3,12
    sw	$t3,12($a3)
    move	$a0,$t0
    # Line 4784
    b	.L0d9bdb04
    # Line 4782
    sw	$a7,8($a3)
.L0d9be6f4:
    # Line 4145
    li	$a0,0x8368
    sltu	$t8,$a1,$a0
    bnez	$t8,.L0d9be9d0
    sltu	$t9,$a0,$a1
    bnez	$t9,.L0d9be648
    # Line 4205
    li	$at,12
    sb	$at,1($a3)
.L0d9be710:
    # Line 4212
    li	$v1,3
    sb	$v1,21($a3)
    # Line 4213
    li	$a7,2
    move	$a0,$v1
    # Line 4211
    sw	$t1,12($a3)
    # Line 4210
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4209
    li	$v0,8
    # Line 4213
    b	.L0d9bdb04
    # Line 4209
    sb	$v0,2($a3)
.L0d9be73c:
    # Line 4473
    li	$a7,2
    # Line 4476
    sb	$a7,21($a3)
    # Line 4475
    li	$a0,10
    sw	$a0,12($a3)
    # Line 4474
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4473
    sb	$a7,2($a3)
    b	.L0d9bdb04
    move	$a0,$a7
.L0d9be764:
    # Line 4328
    li	$a2,0x8368
    bne	$a1,$a2,.L0d9be494
    # Line 4364
    li	$a4,16
    sb	$a4,1($a3)
.L0d9be774:
    # Line 4372
    li	$a7,2
    # Line 4371
    li	$t2,3
    sb	$t2,21($a3)
    move	$a0,$t2
    # Line 4370
    li	$t1,11
    sw	$t1,12($a3)
    # Line 4369
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4368
    li	$t0,8
    # Line 4372
    b	.L0d9bdb04
    # Line 4368
    sb	$t0,2($a3)
    # Line 4493
    li	$a6,1
.L0d9be7a8:
    # Line 4492
    sb	$t0,21($a3)
    li	$a0,3
    # Line 4491
    li	$t8,12
    sw	$t8,12($a3)
    # Line 4490
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4489
    li	$t3,4
    # Line 4493
    b	.L0d9bdb04
    # Line 4489
    sb	$t3,2($a3)
.L0d9be7d0:
    # Line 4328
    li	$a0,0x8033
    sltu	$t9,$a1,$a0
    bnez	$t9,.L0d9be878
    li	$t3,5121
    sltu	$at,$a0,$a1
    bnez	$at,.L0d9be494
.L0d9be7e8:
    # Line 4349
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4350
    li	$a6,1
    # Line 4348
    li	$v1,7
    sw	$v1,12($a3)
    move	$a0,$a7
    # Line 4347
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4346
    li	$v0,6
    # Line 4350
    b	.L0d9bdb04
    # Line 4346
    sb	$v0,2($a3)
.L0d9be814:
    # Line 4328
    li	$a0,0x8366
    sltu	$a2,$a1,$a0
    bnez	$a2,.L0d9bea8c
    li	$a2,0x8365
    sltu	$a4,$a0,$a1
    bnez	$a4,.L0d9be494
    # Line 4353
    li	$a6,16
    sb	$a6,1($a3)
.L0d9be834:
    # Line 4360
    li	$a7,2
    sb	$a7,21($a3)
    # Line 4361
    li	$a6,1
    # Line 4359
    li	$t1,8
    sw	$t1,12($a3)
    move	$a0,$a7
    # Line 4358
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4357
    li	$t0,7
    # Line 4361
    b	.L0d9bdb04
    # Line 4357
    sb	$t0,2($a3)
.L0d9be860:
    # Line 4235
    sw	$t0,12($a3)
    # Line 4234
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4233
    li	$t2,11
    # Line 4235
    b	.L0d9be16c
    # Line 4233
    sb	$t2,2($a3)
.L0d9be878:
    # Line 4328
    bne	$a1,$t3,.L0d9be494
.L0d9be87c:
    # Line 4335
    li	$a7,2
.L0d9be880:
    # Line 4338
    sb	$a7,21($a3)
    # Line 4337
    li	$t8,10
    sw	$t8,12($a3)
    # Line 4336
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4335
    sb	$a7,2($a3)
    b	.L0d9bdb04
    move	$a0,$a7
.L0d9be8a4:
    # Line 4484
    sb	$t0,21($a3)
    # Line 4485
    li	$a6,1
    # Line 4483
    li	$t9,12
    sw	$t9,12($a3)
    # Line 4484
    li	$a0,3
    # Line 4482
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4485
    b	.L0d9bdb04
    # Line 4481
    sb	$t0,2($a3)
.L0d9be8cc:
    # Line 4130
    li	$a0,3
.L0d9be8d0:
    # Line 4133
    sb	$a0,21($a3)
    # Line 4132
    li	$at,12
    sw	$at,12($a3)
    # Line 4134
    li	$a6,1
    # Line 4131
    li	$a7,2
    sw	$a7,8($a3)
    # Line 4130
    sb	$a0,2($a3)
    # Line 4134
    b	.L0d9bdb04
    move	$a2,$a7
.L0d9be8f4:
    # Line 4145
    li	$v0,0x8035
    bne	$a1,$v0,.L0d9be648
    nop
    b	.L0d9be330
    li	$t0,12
.L0d9be908:
    # Line 4656
    sb	$a6,21($a3)
    # Line 4654
    move	$a2,$zero
    # Line 4655
    sw	$a7,12($a3)
    move	$a0,$a6
    b	.L0d9bdb04
    # Line 4654
    sw	$zero,8($a3)
.L0d9be920:
    # Line 4122
    li	$a7,2
.L0d9be924:
    # Line 4125
    sb	$a7,21($a3)
    # Line 4124
    li	$v1,10
    sw	$v1,12($a3)
    # Line 4123
    li	$a6,1
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4122
    sb	$a7,2($a3)
    b	.L0d9bdb04
    move	$a0,$a7
.L0d9be948:
    # Line 4688
    sb	$a6,21($a3)
    # Line 4686
    move	$a2,$zero
    # Line 4687
    li	$a0,5
    sw	$a0,12($a3)
    move	$a0,$a6
    b	.L0d9bdb04
    # Line 4686
    sw	$zero,8($a3)
    # Line 4180
    li	$a6,1
.L0d9be968:
    # Line 4179
    li	$t0,3
    sb	$t0,21($a3)
    move	$a0,$t0
    # Line 4178
    li	$a7,12
    sw	$a7,12($a3)
    # Line 4177
    li	$a7,2
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4176
    li	$a4,4
    # Line 4180
    b	.L0d9bdb04
    # Line 4176
    sb	$a4,2($a3)
.L0d9be994:
    # Line 4672
    sb	$a6,21($a3)
    # Line 4670
    move	$a2,$zero
    # Line 4671
    li	$t1,5
    sw	$t1,12($a3)
    move	$a0,$a6
    b	.L0d9bdb04
    # Line 4670
    sw	$zero,8($a3)
.L0d9be9b0:
    # Line 4442
    li	$a6,1
    sb	$a6,21($a3)
    # Line 4441
    sw	$a7,12($a3)
    move	$a0,$a6
    # Line 4440
    sw	$zero,8($a3)
    move	$a2,$zero
    b	.L0d9bdb04
    # Line 4439
    sb	$a7,2($a3)
.L0d9be9d0:
    # Line 4145
    li	$t2,0x8367
    bne	$a1,$t2,.L0d9be648
    # Line 4147
    li	$t0,12
    b	.L0d9be330
    sb	$t0,1($a3)
.L0d9be9e4:
    # Line 4115
    li	$t3,14
    b	.L0d9be388
    sb	$t3,1($a3)
.L0d9be9f0:
    # Line 4450
    li	$a6,1
.L0d9be9f4:
    sb	$a6,21($a3)
    # Line 4449
    li	$t9,5
    sw	$t9,12($a3)
    move	$a0,$a6
    # Line 4448
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4447
    li	$t8,3
    # Line 4451
    b	.L0d9bdb04
    # Line 4447
    sb	$t8,2($a3)
.L0d9bea18:
    # Line 4714
    sb	$a6,21($a3)
    # Line 4712
    move	$a2,$zero
    # Line 4713
    sw	$a6,12($a3)
    move	$a0,$a6
    b	.L0d9bdb04
    # Line 4712
    sw	$zero,8($a3)
.L0d9bea30:
    # Line 4773
    li	$v0,4
    sb	$v0,21($a3)
    # Line 4771
    move	$a2,$zero
    # Line 4772
    li	$at,6
    sw	$at,12($a3)
    # Line 4771
    sw	$zero,8($a3)
    b	.L0d9bdb04
    move	$a0,$v0
.L0d9bea50:
    # Line 4156
    sw	$t0,12($a3)
    # Line 4155
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4156
    b	.L0d9be350
    # Line 4154
    sb	$t1,2($a3)
    # Line 4458
    li	$a6,1
.L0d9bea68:
    sb	$a6,21($a3)
    # Line 4457
    li	$a0,5
    sw	$a0,12($a3)
    move	$a0,$a6
    # Line 4456
    sw	$zero,8($a3)
    move	$a2,$zero
    # Line 4455
    li	$v1,4
    # Line 4459
    b	.L0d9bdb04
    # Line 4455
    sb	$v1,2($a3)
.L0d9bea8c:
    # Line 4328
    bne	$a1,$a2,.L0d9be494
    # Line 4342
    li	$a4,16
    b	.L0d9be7e8
    sb	$a4,1($a3)
.L0d9bea9c:
    # Line 4746
    sb	$a6,21($a3)
    # Line 4744
    move	$a2,$zero
    # Line 4745
    sw	$t1,12($a3)
    move	$a0,$a6
    b	.L0d9bdb04
    # Line 4744
    sw	$zero,8($a3)
.L0d9beab4:
    # Line 4805
    sb	$t1,21($a3)
    move	$a2,$a6
    # Line 4804
    li	$t0,9
    sw	$t0,12($a3)
    move	$a0,$t1
    b	.L0d9bdb04
    # Line 4803
    sw	$a6,8($a3)
.L0d9bead0:
    # Line 4581
    sw	$t0,12($a3)
    # Line 4580
    sw	$a7,8($a3)
    move	$a2,$a7
    # Line 4579
    li	$t1,11
    # Line 4581
    b	.L0d9be438
    # Line 4579
    sb	$t1,2($a3)
.L0d9beae8:
    # Line 4730
    sb	$a6,21($a3)
    # Line 4728
    move	$a2,$zero
    # Line 4729
    li	$t2,4
    sw	$t2,12($a3)
    move	$a0,$a6
    b	.L0d9bdb04
    # Line 4728
    sw	$zero,8($a3)
.L0d9beb04:
    # Line 4789
    li	$t8,4
    sb	$t8,21($a3)
    move	$a2,$a6
    # Line 4788
    li	$t3,9
    sw	$t3,12($a3)
    # Line 4787
    sw	$a6,8($a3)
    b	.L0d9bdb04
    move	$a0,$t8
.L0d9beb24:
    # Line 4624
    sw	$a0,12($a3)
    # Line 4623
    sw	$a6,8($a3)
    move	$a2,$a6
    # Line 4622
    li	$t9,12
    # Line 4624
    b	.L0d9bdc88
    # Line 4622
    sb	$t9,2($a3)
.end __glOdysseyImageCalcXferWriteParams

# Function: ImageCalcDmaFieldOffsets
# Declared: Line 4951 (Source lines: 4956-5180)
# Address: 0x0d9beb40 - 0x0d9bed9c (Size: 604 bytes, Frame: 16)
.ent ImageCalcDmaFieldOffsets
ImageCalcDmaFieldOffsets:
    # Line 4957
    beqz	$a0,.L0d9beb98
    # Line 4956
    addiu	$sp,$sp,-16
    # Line 4957
    li	$a7,1
    beq	$a0,$a7,.L0d9bebd4
    li	$t0,2
    beq	$a0,$t0,.L0d9bec08
    li	$t1,3
    bne	$a0,$t1,.L0d9bebb8
    # Line 5175
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5117
    beq	$a7,$a1,.L0d9bec50
    nop
    beq	$t0,$a1,.L0d9bec38
    li	$a0,4
    bne	$a0,$a1,.L0d9bebb8
    # Line 5175
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5148
    beqz	$a3,.L0d9bec60
    nop
    # Line 5149
    sw	$a0,0($a4)
    # Line 5150
    sw	$zero,0($a5)
.L0d9beb8c:
    # Line 5180
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d9beb98:
    # Line 4960
    beqz	$a1,.L0d9bec78
    li	$at,1
    beq	$a1,$at,.L0d9bec2c
    li	$v0,3
    beq	$a1,$v0,.L0d9bec2c
    li	$v1,4
    beq	$a1,$v1,.L0d9bec2c
.L0d9bebb4:
    # Line 5175
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9bebb8:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 5176
    move	$v0,$zero
    # Line 5180
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bebd4:
    # Line 4982
    beqz	$a1,.L0d9bec84
    nop
    beq	$a7,$a1,.L0d9beca4
    li	$a0,2
    beq	$a1,$a0,.L0d9bec90
    li	$a2,3
    bne	$a1,$a2,.L0d9bebb8
    # Line 5175
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5010
    beqz	$a3,.L0d9bed28
    nop
    # Line 5011
    sw	$zero,0($a4)
    # Line 5012
    b	.L0d9beb8c
    sw	$zero,0($a5)
.L0d9bec08:
    # Line 5026
    la	$a0,sub_0daf0000
    sltiu	$t1,$a1,7
    addiu	$a0,$a0,-28064
    sll	$a6,$a1,0x2
    beqz	$t1,.L0d9bebb4
    addu	$a0,$a0,$a6
    lw	$a1,0($a0)
    jr	$a1
    nop
.L0d9bec2c:
    # Line 4972
    sw	$zero,0($a4)
    # Line 4974
    b	.L0d9beb8c
    # Line 4973
    sw	$zero,0($a5)
.L0d9bec38:
    # Line 5136
    beqz	$a3,.L0d9bed34
    # Line 5141
    li	$t1,6
    # Line 5137
    li	$a2,4
    sw	$a2,0($a4)
    # Line 5138
    b	.L0d9beb8c
    sw	$zero,0($a5)
.L0d9bec50:
    # Line 5130
    li	$a3,4
    sw	$a3,0($a4)
    b	.L0d9beb8c
    # Line 5131
    sw	$zero,0($a5)
.L0d9bec60:
    # Line 5150
    beqz	$a2,.L0d9bed40
    # Line 5158
    li	$t2,6
    # Line 5154
    li	$a6,7
    sw	$a6,0($a4)
    # Line 5155
    b	.L0d9beb8c
    sw	$t1,0($a5)
.L0d9bec78:
    # Line 4964
    sw	$zero,0($a4)
    b	.L0d9beb8c
    # Line 4965
    sw	$zero,0($a5)
.L0d9bec84:
    # Line 4986
    sw	$a7,0($a4)
    b	.L0d9beb8c
    # Line 4987
    sw	$zero,0($a5)
.L0d9bec90:
    # Line 4998
    beqz	$a3,.L0d9bed60
    nop
    # Line 4999
    sw	$zero,0($a4)
    # Line 5000
    b	.L0d9beb8c
    sw	$zero,0($a5)
.L0d9beca4:
    # Line 4992
    sw	$zero,0($a4)
    # Line 4994
    b	.L0d9beb8c
    # Line 4993
    sw	$zero,0($a5)
.L0d9becb0:
    # Line 5040
    sw	$zero,0($a4)
    # Line 5042
    b	.L0d9beb8c
    # Line 5041
    sw	$zero,0($a5)
.L0d9becbc:
    # Line 5106
    sw	$zero,0($a4)
    # Line 5108
    b	.L0d9beb8c
    # Line 5107
    sw	$zero,0($a5)
.L0d9becc8:
    # Line 5094
    beqz	$a2,.L0d9bed6c
    nop
    # Line 5095
    li	$t0,3
    sw	$t0,0($a4)
    # Line 5096
    b	.L0d9beb8c
    sw	$a7,0($a5)
.L0d9bece0:
    # Line 5076
    beqz	$a3,.L0d9bed4c
    nop
    # Line 5077
    sw	$zero,0($a4)
    # Line 5078
    b	.L0d9beb8c
    sw	$zero,0($a5)
.L0d9becf4:
    # Line 5064
    beqz	$a3,.L0d9bed78
    # Line 5069
    li	$t3,3
    # Line 5065
    sw	$zero,0($a4)
    # Line 5066
    b	.L0d9beb8c
    sw	$zero,0($a5)
.L0d9bed08:
    # Line 5052
    beqz	$a3,.L0d9bed84
    nop
    # Line 5053
    sw	$zero,0($a4)
    # Line 5054
    b	.L0d9beb8c
    sw	$zero,0($a5)
.L0d9bed1c:
    # Line 5046
    sw	$t0,0($a4)
    b	.L0d9beb8c
    # Line 5047
    sw	$zero,0($a5)
.L0d9bed28:
    # Line 5015
    sw	$a7,0($a4)
    b	.L0d9beb8c
    # Line 5016
    sw	$a7,0($a5)
.L0d9bed34:
    # Line 5141
    sw	$t1,0($a4)
    b	.L0d9beb8c
    # Line 5142
    sw	$t0,0($a5)
.L0d9bed40:
    # Line 5158
    sw	$t2,0($a4)
    b	.L0d9beb8c
    # Line 5159
    sw	$t0,0($a5)
.L0d9bed4c:
    # Line 5078
    beqz	$a2,.L0d9bed90
    li	$t1,3
    # Line 5082
    sw	$t1,0($a4)
    # Line 5083
    b	.L0d9beb8c
    sw	$t0,0($a5)
.L0d9bed60:
    # Line 5003
    sw	$a7,0($a4)
    b	.L0d9beb8c
    # Line 5004
    sw	$a7,0($a5)
.L0d9bed6c:
    # Line 5099
    sw	$t0,0($a4)
    b	.L0d9beb8c
    # Line 5100
    sw	$zero,0($a5)
.L0d9bed78:
    # Line 5069
    sw	$t3,0($a4)
    b	.L0d9beb8c
    # Line 5070
    sw	$t0,0($a5)
.L0d9bed84:
    # Line 5057
    sw	$t0,0($a4)
    b	.L0d9beb8c
    # Line 5058
    sw	$t0,0($a5)
.L0d9bed90:
    # Line 5086
    sw	$t1,0($a4)
    b	.L0d9beb8c
    # Line 5087
    sw	$t0,0($a5)
.end ImageCalcDmaFieldOffsets

# Function: __glOdysseyImageCalcTexObjFormats
# Declared: Line 5184 (Source lines: 5186-5273)
# Address: 0x0d9beda0 - 0x0d9bef40 (Size: 416 bytes, Frame: 0)
.globl __glOdysseyImageCalcTexObjFormats
.ent __glOdysseyImageCalcTexObjFormats
__glOdysseyImageCalcTexObjFormats:
    # Line 5186
    lui	$a6,0x14
    addiu	$a6,$a6,-26640
    addu	$at,$t9,$a6
    la	$a5,sub_0daf0000
    # Line 5270
    move	$v0,$zero
    # Line 5186
    sltiu	$a7,$a0,18
    sll	$a6,$a0,0x2
    addiu	$a5,$a5,-28036
    beqz	$a7,.L0d9bedd4
    addu	$a5,$a5,$a6
    lw	$a7,0($a5)
    jr	$a7
    # Line 5225
    li	$a4,12
.L0d9bedd4:
    # Line 5270
    jr	$ra
    nop
.L0d9beddc:
    # Line 5201
    li	$t1,2
    sw	$t1,0($a1)
    # Line 5202
    li	$t0,4
    sw	$t0,0($a2)
.L0d9bedec:
    # Line 5270
    jr	$ra
    # Line 5273
    li	$v0,1
.L0d9bedf4:
    # Line 5193
    sw	$zero,0($a1)
    # Line 5194
    li	$t2,1
    # Line 5195
    b	.L0d9bedec
    # Line 5194
    sw	$t2,0($a2)
.L0d9bee04:
    # Line 5261
    li	$t8,10
    sw	$t8,0($a1)
    # Line 5262
    li	$t3,2
    # Line 5263
    b	.L0d9bedec
    # Line 5262
    sw	$t3,0($a2)
.L0d9bee18:
    # Line 5257
    li	$v0,4
    sw	$v0,0($a1)
    # Line 5258
    li	$t9,2
    # Line 5259
    b	.L0d9bedec
    # Line 5258
    sw	$t9,0($a2)
.L0d9bee2c:
    # Line 5253
    li	$a0,49
    sw	$a0,0($a1)
    # Line 5254
    li	$v1,6
    # Line 5255
    b	.L0d9bedec
    # Line 5254
    sw	$v1,0($a2)
.L0d9bee40:
    # Line 5249
    li	$a4,48
    sw	$a4,0($a1)
    # Line 5250
    li	$a3,5
    # Line 5251
    b	.L0d9bedec
    # Line 5250
    sw	$a3,0($a2)
.L0d9bee54:
    # Line 5245
    li	$a6,32
    sw	$a6,0($a1)
    # Line 5246
    li	$a5,6
    # Line 5247
    b	.L0d9bedec
    # Line 5246
    sw	$a5,0($a2)
.L0d9bee68:
    # Line 5241
    li	$t0,33
    sw	$t0,0($a1)
    # Line 5242
    li	$a7,6
    # Line 5243
    b	.L0d9bedec
    # Line 5242
    sw	$a7,0($a2)
.L0d9bee7c:
    # Line 5237
    li	$t2,18
    sw	$t2,0($a1)
    # Line 5238
    li	$t1,6
    # Line 5239
    b	.L0d9bedec
    # Line 5238
    sw	$t1,0($a2)
.L0d9bee90:
    # Line 5233
    li	$t8,17
    sw	$t8,0($a1)
    # Line 5234
    li	$t3,6
    # Line 5235
    b	.L0d9bedec
    # Line 5234
    sw	$t3,0($a2)
.L0d9beea4:
    # Line 5221
    li	$v0,16
    sw	$v0,0($a1)
    # Line 5222
    li	$t9,3
    # Line 5223
    b	.L0d9bedec
    # Line 5222
    sw	$t9,0($a2)
.L0d9beeb8:
    # Line 5229
    li	$a0,13
    sw	$a0,0($a1)
    # Line 5230
    li	$v1,6
    # Line 5231
    b	.L0d9bedec
    # Line 5230
    sw	$v1,0($a2)
.L0d9beecc:
    # Line 5225
    sw	$a4,0($a1)
    # Line 5226
    li	$a3,6
    # Line 5227
    b	.L0d9bedec
    # Line 5226
    sw	$a3,0($a2)
.L0d9beedc:
    # Line 5217
    li	$a6,11
    sw	$a6,0($a1)
    # Line 5218
    li	$a5,3
    # Line 5219
    b	.L0d9bedec
    # Line 5218
    sw	$a5,0($a2)
.L0d9beef0:
    # Line 5213
    li	$t0,10
    sw	$t0,0($a1)
    # Line 5214
    li	$a7,2
    # Line 5215
    b	.L0d9bedec
    # Line 5214
    sw	$a7,0($a2)
.L0d9bef04:
    # Line 5205
    li	$t2,9
    sw	$t2,0($a1)
    # Line 5206
    li	$t1,4
    # Line 5207
    b	.L0d9bedec
    # Line 5206
    sw	$t1,0($a2)
.L0d9bef18:
    # Line 5197
    li	$t8,8
    sw	$t8,0($a1)
    # Line 5198
    li	$t3,1
    # Line 5199
    b	.L0d9bedec
    # Line 5198
    sw	$t3,0($a2)
.L0d9bef2c:
    # Line 5209
    li	$v0,4
    sw	$v0,0($a1)
    # Line 5210
    li	$t9,2
    # Line 5211
    b	.L0d9bedec
    # Line 5210
    sw	$t9,0($a2)
.end __glOdysseyImageCalcTexObjFormats

# Function: __glOdysseyImageCalcTexOffset
# Declared: Line 5278 (Source lines: 5279-5351)
# Address: 0x0d9bef40 - 0x0d9bf068 (Size: 296 bytes, Frame: 16)
.globl __glOdysseyImageCalcTexOffset
.ent __glOdysseyImageCalcTexOffset
__glOdysseyImageCalcTexOffset:
    # Line 5280
    lw	$a4,44($a0)
    # Line 5281
    lw	$v0,48($a0)
    # Line 5295
    li	$a0,3
    # Line 5279
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-27056
    sd	$gp,0($sp)
    # Line 5291
    beqz	$a4,.L0d9beff8
    # Line 5279
    addu	$gp,$t9,$at
    # Line 5321
    li	$v1,6
    # Line 5291
    li	$a3,1
    beq	$a3,$a4,.L0d9bf028
    nop
    li	$a3,2
    beq	$a3,$a4,.L0d9befa0
    # Line 5346
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 5347
    move	$v0,$zero
    # Line 5351
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9befa0:
    # Line 5321
    beqz	$v0,.L0d9bf058
    nop
    beq	$a3,$v0,.L0d9bf060
    nop
    beq	$v0,$v1,.L0d9befd8
    # Line 5340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 5341
    move	$v0,$zero
    # Line 5351
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9befd8:
    # Line 5337
    sw	$zero,0($a1)
.L0d9befdc:
    # Line 5351
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9befec:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9beff8:
    # Line 5295
    beqz	$v0,.L0d9bf048
    nop
    beq	$v0,$a0,.L0d9bf048
    li	$a2,4
    beq	$v0,$a2,.L0d9bf048
    # Line 5302
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 5303
    b	.L0d9befec
    move	$v0,$zero
.L0d9bf028:
    # Line 5309
    beq	$a3,$v0,.L0d9bf050
    # Line 5314
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 5315
    b	.L0d9befec
    move	$v0,$zero
.L0d9bf048:
    b	.L0d9befdc
    # Line 5299
    sw	$zero,0($a1)
.L0d9bf050:
    # Line 5311
    b	.L0d9befdc
    sw	$zero,0($a1)
.L0d9bf058:
    b	.L0d9befdc
    # Line 5331
    sw	$zero,0($a1)
.L0d9bf060:
    # Line 5335
    b	.L0d9befdc
    # Line 5334
    sw	$a3,0($a1)
.end __glOdysseyImageCalcTexOffset

# Function: __glOdysseyImageCalcPixelModeFields
# Declared: Line 5356 (Source lines: 5357-5384)
# Address: 0x0d9bf070 - 0x0d9bf1d4 (Size: 356 bytes, Frame: 48)
.globl __glOdysseyImageCalcPixelModeFields
.ent __glOdysseyImageCalcPixelModeFields
__glOdysseyImageCalcPixelModeFields:
    # Line 5357
    addiu	$sp,$sp,-48
    # Line 5367
    lbu	$v0,0($a1)
    # Line 5357
    sd	$s0,24($sp)
    move	$s0,$a1
    lui	$at,0x14
    sd	$s8,8($sp)
    move	$s8,$a0
    addiu	$at,$at,-27360
    sd	$gp,16($sp)
    # Line 5367
    beqz	$v0,.L0d9bf1bc
    # Line 5357
    addu	$gp,$t9,$at
    # Line 5367
    li	$v0,1
.L0d9bf0a0:
    sd	$v0,0($sp)
    sd	$ra,32($sp)
.L0d9bf0a8:
    # Line 5369
    # lw $t9, -31556($gp) # &__glOdysseyImageCalcFieldFormat
    jal	__glOdysseyImageCalcFieldFormat
    lw	$a0,52($s0)
    # Line 5376
    li	$t2,-113
    # Line 5371
    lw	$a4,52($s0)
    ld	$a0,0($sp)
    li	$a2,17
    li	$v1,16
    # Line 5376
    lw	$t0,8($s8)
    # Line 5375
    li	$t9,-4096
    # Line 5380
    lui	$a6,0x8
    ld	$ra,32($sp)
    # Line 5371
    beq	$a4,$v1,.L0d9bf1b4
    # Line 5369
    move	$a1,$v0
    # Line 5371
    beq	$a4,$a2,.L0d9bf1b4
    move	$a4,$zero
.L0d9bf0e8:
    # Line 5376
    sll	$t1,$a1,0x4
    # Line 5375
    lw	$t3,4($s8)
    # Line 5376
    and	$t0,$t0,$t2
    andi	$t1,$t1,0x70
    # Line 5375
    lw	$t8,28($s0)
    # Line 5376
    or	$t0,$t0,$t1
    sw	$t0,8($s8)
    # Line 5375
    andi	$t8,$t8,0xfff
    and	$t3,$t3,$t9
    or	$t3,$t3,$t8
    sw	$t3,4($s8)
    # Line 5377
    lw	$t1,48($s0)
    li	$t2,-897
    sll	$t1,$t1,0x7
    and	$t0,$t0,$t2
    andi	$t1,$t1,0x380
    or	$t0,$t0,$t1
    sw	$t0,8($s8)
    # Line 5378
    lw	$a7,44($s0)
    # Line 5381
    sll	$a3,$a0,0x1b
    # Line 5378
    li	$t1,-7169
    sll	$a7,$a7,0xa
    and	$t0,$t0,$t1
    andi	$a7,$a7,0x1c00
    # Line 5380
    andi	$a4,$a4,0xff
    # Line 5378
    or	$a7,$a7,$t0
    sw	$a7,8($s8)
    # Line 5380
    sll	$a4,$a4,0x13
    # Line 5379
    lw	$a5,40($s0)
    # Line 5380
    and	$a4,$a4,$a6
    # Line 5379
    li	$t0,0xe000
    nor	$t0,$t0,$zero
    sll	$a5,$a5,0xd
    and	$a7,$a7,$t0
    andi	$a5,$a5,0xe000
    # Line 5380
    nor	$a6,$a6,$zero
    # Line 5379
    or	$a5,$a5,$a7
    # Line 5380
    and	$a5,$a5,$a6
    # Line 5381
    lui	$a6,0x800
    # Line 5384
    ld	$gp,16($sp)
    # Line 5380
    or	$a4,$a4,$a5
    # Line 5381
    nor	$a5,$a6,$zero
    # Line 5384
    ld	$s0,24($sp)
    # Line 5381
    and	$a3,$a3,$a6
    and	$a4,$a4,$a5
    # Line 5384
    li	$v0,1
    # Line 5381
    or	$a3,$a3,$a4
    sw	$a3,8($s8)
    # Line 5384
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bf1b4:
    # Line 5371
    b	.L0d9bf0e8
    li	$a4,1
.L0d9bf1bc:
    # Line 5367
    lbu	$at,10($a1)
    bnez	$at,.L0d9bf0a0
    li	$v0,1
    sd	$zero,0($sp)
    b	.L0d9bf0a8
    sd	$ra,32($sp)
.end __glOdysseyImageCalcPixelModeFields

# Function: ImageToDmaHostPixelSize
# Declared: Line 5388 (Source lines: 5398-5398)
# Address: 0x0d9bf1e0 - 0x0d9bf1f8 (Size: 24 bytes, Frame: 0)
.ent ImageToDmaHostPixelSize
ImageToDmaHostPixelSize:
    # Line 5398
    la	$v0,sub_0daf0000
    sll	$v1,$a0,0x2
    addiu	$v0,$v0,-14320
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.end ImageToDmaHostPixelSize

# Function: __glOdysseyImageCalcXferReadParams
# Declared: Line 5402 (Source lines: 5406-5974)
# Address: 0x0d9bf200 - 0x0d9bfefc (Size: 3324 bytes, Frame: 0)
.globl __glOdysseyImageCalcXferReadParams
.ent __glOdysseyImageCalcXferReadParams
__glOdysseyImageCalcXferReadParams:
    # Line 5406
    li	$t2,6402
    lui	$v0,0x14
    addiu	$v0,$v0,-27760
    beq	$t2,$a0,.L0d9bf268
    addu	$at,$t9,$v0
    # Line 5476
    li	$t1,6401
    beq	$t1,$a0,.L0d9bf2b0
    nop
    # Line 5516
    lw	$a7,52($a2)
    la	$a6,sub_0daf0000
    sltiu	$t0,$a7,18
    addiu	$a6,$a6,-27964
    sll	$a7,$a7,0x2
    beqz	$t0,.L0d9bf248
    addu	$a6,$a6,$a7
    lw	$a7,0($a6)
    jr	$a7
    # Line 5926
    li	$a4,5123
.L0d9bf248:
    # Line 5931
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    move	$v0,$zero
.L0d9bf254:
    # Line 5964
    beq	$a6,$a0,.L0d9bf2e0
    # Line 5951
    sw	$t0,4($a3)
.L0d9bf25c:
    # Line 5973
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    # Line 5974
    move	$v0,$zero
.L0d9bf268:
    # Line 5413
    lw	$a6,44($a2)
    li	$t1,1
    beq	$a6,$t1,.L0d9bf77c
    li	$t0,2
    beq	$a6,$t0,.L0d9bf7ac
    li	$t3,3
    bne	$a6,$t3,.L0d9bf2a4
    nop
    # Line 5452
    lw	$a6,48($a2)
    beq	$t1,$a6,.L0d9bf948
    # Line 5457
    li	$a2,5123
    # Line 5452
    beq	$t0,$a6,.L0d9bf844
    li	$t8,4
    beq	$a6,$t8,.L0d9bf848
    # Line 5465
    li	$v1,5125
.L0d9bf2a4:
    # Line 5474
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    # Line 5475
    move	$v0,$zero
.L0d9bf2b0:
    # Line 5480
    lw	$a6,44($a2)
    li	$t0,2
    beq	$a6,$t0,.L0d9bf7f4
    li	$t9,3
    beq	$a6,$t9,.L0d9bf2f0
    nop
    # Line 5514
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    # Line 5515
    move	$v0,$zero
.L0d9bf2d4:
    # Line 5939
    sw	$zero,4($a3)
.L0d9bf2d8:
    # Line 5964
    bne	$a6,$a0,.L0d9bf25c
    nop
.L0d9bf2e0:
    bne	$a7,$a1,.L0d9bf25c
    # Line 5968
    li	$v0,1
    # Line 5932
    jr	$ra
    # Line 5968
    sb	$v0,0($a3)
.L0d9bf2f0:
    # Line 5499
    lw	$a6,48($a2)
    beq	$t0,$a6,.L0d9bf828
    # Line 5505
    li	$v0,5121
    # Line 5499
    li	$v1,4
    beq	$a6,$v1,.L0d9bf828
    # Line 5505
    li	$v0,5121
    # Line 5508
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    # Line 5509
    move	$v0,$zero
.L0d9bf314:
    # Line 5524
    li	$a2,6408
    beq	$a2,$a0,.L0d9bf9f8
    li	$a4,0x8367
    li	$a4,0x8000
.L0d9bf324:
    beq	$a0,$a4,.L0d9bfa08
    li	$a5,0x8035
    # Line 5533
    li	$t1,0x80e1
.L0d9bf330:
    beq	$t1,$a0,.L0d9bfc28
    # Line 5540
    li	$a6,6407
.L0d9bf338:
    beq	$a6,$a0,.L0d9bf9cc
    li	$v0,0x8364
    li	$a7,0x80e0
.L0d9bf344:
    beq	$a7,$a0,.L0d9bf998
    li	$t2,0x8363
.L0d9bf34c:
    # Line 5548
    beq	$a6,$a0,.L0d9bf8a8
    li	$a5,0x8363
    # Line 5563
    beq	$a7,$a0,.L0d9bf8c0
    # Line 5556
    li	$t0,5121
.L0d9bf35c:
    # Line 5570
    beq	$t1,$a0,.L0d9bfbfc
    nop
.L0d9bf364:
    # Line 5579
    lbu	$a6,9($a3)
    # Line 5578
    li	$a5,2
    # Line 5579
    beqz	$a6,.L0d9bf378
    # Line 5578
    sb	$a5,1($a3)
    # Line 5579
    beq	$a2,$a0,.L0d9bfdb4
.L0d9bf378:
    # Line 5583
    li	$a7,8
    sb	$a7,2($a3)
.L0d9bf380:
    # Line 5586
    sw	$t0,16($a3)
    li	$a7,5121
    # Line 5585
    sw	$a2,12($a3)
    b	.L0d9bf3c8
    li	$a6,6408
.L0d9bf394:
    # Line 5869
    lbu	$t0,8($a3)
    li	$t1,1
    beq	$t1,$t0,.L0d9bfb30
    li	$t2,6409
    beq	$a0,$t2,.L0d9bfb98
    li	$t0,5121
.L0d9bf3ac:
    # Line 5872
    li	$t3,6403
.L0d9bf3b0:
    sw	$t3,12($a3)
    move	$a6,$t3
.L0d9bf3b8:
    # Line 5878
    sw	$t0,16($a3)
    # Line 5877
    sb	$t1,2($a3)
    # Line 5878
    li	$a7,5121
    # Line 5876
    sb	$zero,1($a3)
.L0d9bf3c8:
    # Line 5937
    lbu	$a2,1($a3)
    beqz	$a2,.L0d9bf2d4
    li	$t1,1
    beq	$a2,$t1,.L0d9bf400
    li	$t0,2
    beq	$a2,$t0,.L0d9bf408
    li	$t8,3
    beq	$a2,$t8,.L0d9bf410
    li	$t9,4
    beq	$a2,$t9,.L0d9bf254
    nop
    # Line 5959
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    # Line 5960
    move	$v0,$zero
.L0d9bf400:
    # Line 5943
    b	.L0d9bf2d8
    # Line 5942
    sw	$zero,4($a3)
.L0d9bf408:
    # Line 5946
    b	.L0d9bf2d8
    # Line 5945
    sw	$t1,4($a3)
.L0d9bf410:
    # Line 5949
    b	.L0d9bf2d8
    # Line 5948
    sw	$t0,4($a3)
.L0d9bf418:
    # Line 5926
    sw	$a4,16($a3)
    move	$a7,$a4
    # Line 5925
    li	$a2,6400
    sw	$a2,12($a3)
    move	$a6,$a2
    # Line 5924
    li	$v1,14
    sb	$v1,2($a3)
    # Line 5923
    li	$v0,1
    # Line 5928
    b	.L0d9bf3c8
    # Line 5923
    sb	$v0,1($a3)
.L0d9bf440:
    # Line 5906
    sb	$zero,1($a3)
    # Line 5907
    lw	$a5,44($a2)
    beqz	$a5,.L0d9bfa3c
    # Line 5913
    li	$a6,1
    sb	$a6,2($a3)
.L0d9bf454:
    # Line 5918
    li	$t1,5121
    sw	$t1,16($a3)
    move	$a7,$t1
    # Line 5917
    li	$t0,6400
    sw	$t0,12($a3)
    # Line 5920
    b	.L0d9bf3c8
    # Line 5917
    li	$a6,6400
.L0d9bf470:
    # Line 5655
    li	$a2,6408
    # Line 5653
    li	$t2,4
    # Line 5655
    beq	$a2,$a0,.L0d9bf8ec
    # Line 5653
    sb	$t2,1($a3)
    # Line 5665
    li	$t3,5123
.L0d9bf484:
    sw	$t3,16($a3)
    move	$a7,$t3
    # Line 5664
    sw	$a2,12($a3)
    li	$a6,6408
    b	.L0d9bf3c8
    # Line 5663
    sb	$zero,2($a3)
.L0d9bf49c:
    # Line 5593
    li	$a2,6408
    # Line 5591
    li	$t0,3
    # Line 5593
    beq	$a2,$a0,.L0d9bfa44
    # Line 5591
    sb	$t0,1($a3)
    # Line 5593
    li	$a6,0x8000
.L0d9bf4b0:
    beq	$a6,$a0,.L0d9bfa60
    li	$t8,0x8367
    # Line 5601
    li	$t8,6407
.L0d9bf4bc:
    beq	$a0,$t8,.L0d9bfc54
    li	$a7,5121
    # Line 5613
    li	$t9,0x80e0
.L0d9bf4c8:
    beq	$a0,$t9,.L0d9bfcb4
    li	$v1,5121
.L0d9bf4d0:
    # Line 5619
    beq	$a2,$a0,.L0d9bfd08
    li	$t1,0x8368
.L0d9bf4d8:
    # Line 5625
    beq	$a6,$a0,.L0d9bfd58
    li	$t9,5123
.L0d9bf4e0:
    # Line 5631
    beq	$a2,$a0,.L0d9bfd78
    li	$a4,0x8367
.L0d9bf4e8:
    # Line 5640
    lbu	$v0,9($a3)
    beqz	$v0,.L0d9bfdc4
    nop
    beq	$a2,$a0,.L0d9bfdcc
    li	$t0,5123
.L0d9bf4fc:
    # Line 5644
    li	$v1,9
.L0d9bf500:
    sb	$v1,2($a3)
.L0d9bf504:
    # Line 5647
    sw	$t0,16($a3)
    li	$a7,5123
    # Line 5646
    sw	$a2,12($a3)
    b	.L0d9bf3c8
    li	$a6,6408
.L0d9bf518:
    # Line 5759
    li	$a2,6408
    beq	$a2,$a0,.L0d9bf91c
    li	$t9,0x8368
    # Line 5769
    li	$a5,0x8036
.L0d9bf528:
    sw	$a5,16($a3)
    # Line 5768
    sw	$a2,12($a3)
    move	$a7,$a5
    li	$a6,6408
    # Line 5767
    sb	$zero,2($a3)
    # Line 5766
    li	$a4,2
    b	.L0d9bf3c8
    sb	$a4,1($a3)
.L0d9bf548:
    # Line 5846
    lbu	$a2,8($a3)
    # Line 5844
    li	$a6,2
    # Line 5846
    beqz	$a2,.L0d9bf884
    # Line 5844
    sb	$a6,1($a3)
    # Line 5852
    li	$t1,1
    # Line 5855
    beq	$t1,$a2,.L0d9bf8a0
    li	$a7,6410
.L0d9bf564:
    beq	$a0,$a7,.L0d9bfbbc
    li	$t0,5123
.L0d9bf56c:
    # Line 5858
    sw	$t1,12($a3)
    li	$a6,1
.L0d9bf574:
    # Line 5863
    sw	$t0,16($a3)
    li	$a7,5123
    # Line 5862
    li	$t1,5
    b	.L0d9bf3c8
    sb	$t1,2($a3)
.L0d9bf588:
    # Line 5703
    li	$a2,6408
    beq	$a2,$a0,.L0d9bfa84
    li	$t2,0x8000
.L0d9bf594:
    beq	$a0,$t2,.L0d9bfaa0
    li	$a4,0x8367
    # Line 5712
    li	$t3,0x80e1
.L0d9bf5a0:
    beq	$a0,$t3,.L0d9bfc80
    li	$t3,0x8034
.L0d9bf5a8:
    # Line 5726
    beq	$a2,$a0,.L0d9bfcd8
    # Line 5733
    li	$a6,6407
.L0d9bf5b0:
    beq	$a6,$a0,.L0d9bfd28
    li	$t8,0x80e0
.L0d9bf5b8:
    beq	$a0,$t8,.L0d9bfd9c
    li	$a7,0x8364
.L0d9bf5c0:
    # Line 5741
    beq	$a6,$a0,.L0d9bfbcc
    # Line 5753
    li	$v1,0x8034
.L0d9bf5c8:
    sw	$v1,16($a3)
    move	$a7,$v1
    # Line 5752
    sw	$a2,12($a3)
    li	$a6,6408
    # Line 5751
    li	$v0,12
    sb	$v0,2($a3)
    # Line 5750
    li	$t9,1
    b	.L0d9bf3c8
    sb	$t9,1($a3)
.L0d9bf5ec:
    # Line 5671
    li	$a2,6408
    beq	$a2,$a0,.L0d9bfac8
    li	$a6,0x8365
    li	$a4,0x8000
.L0d9bf5fc:
    beq	$a0,$a4,.L0d9bfad8
    li	$t0,0x8033
    # Line 5679
    li	$a5,0x80e1
.L0d9bf608:
    beq	$a0,$a5,.L0d9bf964
    nop
.L0d9bf610:
    # Line 5697
    sw	$t0,16($a3)
    li	$a7,0x8033
    # Line 5696
    sw	$a2,12($a3)
    li	$a6,6408
    # Line 5695
    li	$t2,13
    sb	$t2,2($a3)
    # Line 5694
    li	$t1,1
    b	.L0d9bf3c8
    sb	$t1,1($a3)
.L0d9bf634:
    # Line 5811
    lbu	$a2,8($a3)
    beqz	$a2,.L0d9bfb04
    li	$t2,6409
    # Line 5819
    li	$t0,5121
.L0d9bf644:
    # Line 5821
    li	$t3,6406
.L0d9bf648:
    beq	$a0,$t3,.L0d9bfb40
    # Line 5829
    li	$t1,1
.L0d9bf650:
    beq	$t1,$a2,.L0d9bf660
    li	$t8,6410
    beq	$a0,$t8,.L0d9bfb64
    nop
.L0d9bf660:
    # Line 5832
    sw	$t1,12($a3)
    li	$a6,1
.L0d9bf668:
    # Line 5838
    sw	$t0,16($a3)
    # Line 5837
    sb	$zero,2($a3)
    # Line 5838
    li	$a7,5121
    b	.L0d9bf3c8
    # Line 5836
    sb	$t1,1($a3)
.L0d9bf67c:
    # Line 5774
    lbu	$t9,8($a3)
    li	$t1,1
    beq	$t1,$t9,.L0d9bfb20
    li	$v0,6409
    beq	$a0,$v0,.L0d9bfb74
    li	$t0,5123
.L0d9bf694:
    # Line 5777
    li	$v1,6403
    sw	$v1,12($a3)
    move	$a6,$v1
.L0d9bf6a0:
    # Line 5783
    sw	$t0,16($a3)
    # Line 5782
    li	$a2,2
    sb	$a2,2($a3)
    # Line 5783
    li	$a7,5123
    # Line 5785
    b	.L0d9bf3c8
    # Line 5781
    sb	$t1,1($a3)
.L0d9bf6b8:
    # Line 5788
    lbu	$a4,8($a3)
    li	$t1,1
    beq	$t1,$a4,.L0d9bfb28
    li	$a5,6409
    beq	$a0,$a5,.L0d9bfb84
    li	$t0,5123
.L0d9bf6d0:
    # Line 5792
    li	$a6,6403
.L0d9bf6d4:
    sw	$a6,12($a3)
.L0d9bf6d8:
    # Line 5798
    sw	$t0,16($a3)
    # Line 5797
    li	$a7,2
    sb	$a7,2($a3)
    # Line 5798
    li	$a7,5123
    # Line 5800
    b	.L0d9bf3c8
    # Line 5796
    sb	$t1,1($a3)
.L0d9bf6f0:
    # Line 5806
    li	$t3,5123
    sw	$t3,16($a3)
    move	$a7,$t3
    # Line 5805
    li	$t2,6406
    sw	$t2,12($a3)
    move	$a6,$t2
    # Line 5804
    li	$t1,2
    sb	$t1,2($a3)
    # Line 5803
    li	$t0,1
    # Line 5808
    b	.L0d9bf3c8
    # Line 5803
    sb	$t0,1($a3)
.L0d9bf71c:
    # Line 5883
    lbu	$t8,8($a3)
    li	$t1,1
    beq	$t1,$t8,.L0d9bfb38
    li	$t9,6409
    beq	$a0,$t9,.L0d9bfbac
    li	$t0,5121
.L0d9bf734:
    # Line 5887
    li	$v0,6403
    sw	$v0,12($a3)
    move	$a6,$v0
.L0d9bf740:
    # Line 5893
    sw	$t0,16($a3)
    # Line 5892
    sb	$t1,2($a3)
    # Line 5893
    li	$a7,5121
    # Line 5895
    b	.L0d9bf3c8
    # Line 5891
    sb	$zero,1($a3)
.L0d9bf754:
    # Line 5901
    li	$a4,5121
    sw	$a4,16($a3)
    # Line 5900
    li	$a2,6406
    sw	$a2,12($a3)
    move	$a7,$a4
    # Line 5899
    li	$v1,1
    sb	$v1,2($a3)
    move	$a6,$a2
    b	.L0d9bf3c8
    # Line 5898
    sb	$zero,1($a3)
.L0d9bf77c:
    # Line 5416
    lw	$a6,48($a2)
    beq	$t0,$a6,.L0d9bf78c
    li	$a5,3
    bne	$a6,$a5,.L0d9bf2a4
.L0d9bf78c:
    # Line 5422
    li	$a6,5123
    sw	$a6,16($a3)
    # Line 5421
    sw	$t2,12($a3)
    move	$a7,$a6
    # Line 5420
    sb	$zero,2($a3)
    # Line 5421
    li	$a6,6402
    b	.L0d9bf3c8
    # Line 5419
    sb	$t1,1($a3)
.L0d9bf7ac:
    # Line 5430
    lw	$a6,48($a2)
    beqz	$a6,.L0d9bfde0
    # Line 5435
    li	$t3,5123
    # Line 5430
    beq	$t0,$a6,.L0d9bf7d8
    # Line 5444
    li	$t3,5125
    # Line 5430
    li	$a7,3
    beq	$a6,$a7,.L0d9bf7d8
    # Line 5444
    li	$t3,5125
    # Line 5430
    li	$t1,4
    bne	$a6,$t1,.L0d9bf2a4
    # Line 5444
    li	$t3,5125
.L0d9bf7d8:
    sw	$t3,16($a3)
    # Line 5443
    sw	$t2,12($a3)
    move	$a7,$t3
    # Line 5442
    sb	$t0,2($a3)
    # Line 5443
    li	$a6,6402
    # Line 5445
    b	.L0d9bf3c8
    # Line 5440
    sb	$t0,1($a3)
.L0d9bf7f4:
    # Line 5483
    lw	$a6,48($a2)
    beq	$t0,$a6,.L0d9bf868
    # Line 5490
    li	$a2,5121
    # Line 5483
    li	$t8,3
    beq	$a6,$t8,.L0d9bf868
    # Line 5490
    li	$a2,5121
    # Line 5483
    li	$t9,4
    beq	$a6,$t9,.L0d9bf868
    # Line 5490
    li	$a2,5121
    # Line 5493
    sb	$zero,0($a3)
    # Line 5932
    jr	$ra
    # Line 5494
    move	$v0,$zero
    # Line 5505
    li	$v0,5121
.L0d9bf828:
    sw	$v0,16($a3)
    # Line 5504
    sw	$t1,12($a3)
    move	$a7,$v0
    # Line 5503
    sb	$zero,2($a3)
    # Line 5504
    li	$a6,6401
    # Line 5502
    b	.L0d9bf3c8
    sb	$zero,1($a3)
.L0d9bf844:
    # Line 5465
    li	$v1,5125
.L0d9bf848:
    sw	$v1,16($a3)
    # Line 5464
    sw	$t2,12($a3)
    move	$a7,$v1
    # Line 5463
    sb	$t0,2($a3)
    # Line 5464
    li	$a6,6402
    # Line 5466
    b	.L0d9bf3c8
    # Line 5461
    sb	$t0,1($a3)
    # Line 5490
    li	$a2,5121
.L0d9bf868:
    sw	$a2,16($a3)
    # Line 5489
    sw	$t1,12($a3)
    move	$a7,$a2
    # Line 5488
    sb	$zero,2($a3)
    # Line 5489
    li	$a6,6401
    b	.L0d9bf3c8
    # Line 5487
    sb	$zero,1($a3)
.L0d9bf884:
    # Line 5846
    li	$a4,6410
    beq	$a0,$a4,.L0d9bfdfc
    li	$t1,1
    beq	$t1,$a0,.L0d9bfe00
    li	$t8,5121
.L0d9bf898:
    # Line 5855
    bne	$t1,$a2,.L0d9bf564
    li	$a7,6410
.L0d9bf8a0:
    b	.L0d9bf56c
    li	$t0,5123
.L0d9bf8a8:
    # Line 5548
    beq	$a1,$a5,.L0d9bf9a8
    # Line 5556
    li	$t0,5121
    beq	$t0,$a1,.L0d9bfebc
    nop
    # Line 5563
    bne	$a7,$a0,.L0d9bf35c
    nop
.L0d9bf8c0:
    bne	$t0,$a1,.L0d9bf35c
    nop
    # Line 5568
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5567
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5566
    li	$t1,3
    sb	$t1,2($a3)
    # Line 5565
    li	$t0,2
    # Line 5568
    b	.L0d9bf3c8
    # Line 5565
    sb	$t0,1($a3)
.L0d9bf8ec:
    # Line 5655
    li	$t2,5121
    beq	$a1,$t2,.L0d9bf900
    li	$t3,0x8035
    bne	$a1,$t3,.L0d9bf484
    # Line 5665
    li	$t3,5123
.L0d9bf900:
    # Line 5660
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5659
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5658
    li	$t8,2
    # Line 5660
    b	.L0d9bf3c8
    # Line 5658
    sb	$t8,2($a3)
.L0d9bf91c:
    # Line 5759
    bne	$a1,$t9,.L0d9bf528
    # Line 5769
    li	$a5,0x8036
    # Line 5763
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5762
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5761
    li	$v1,12
    sb	$v1,2($a3)
    # Line 5760
    li	$v0,2
    # Line 5763
    b	.L0d9bf3c8
    # Line 5760
    sb	$v0,1($a3)
.L0d9bf948:
    # Line 5457
    sw	$a2,16($a3)
    # Line 5456
    sw	$t2,12($a3)
    move	$a7,$a2
    # Line 5455
    sb	$zero,2($a3)
    move	$a6,$t2
    b	.L0d9bf3c8
    # Line 5454
    sb	$t1,1($a3)
.L0d9bf964:
    # Line 5679
    beq	$t0,$a1,.L0d9bfe3c
    # Line 5686
    li	$a4,0x8365
    bne	$a1,$a4,.L0d9bf610
    nop
    # Line 5691
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5690
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5689
    li	$t0,7
    sb	$t0,2($a3)
    # Line 5688
    li	$a5,1
    # Line 5691
    b	.L0d9bf3c8
    # Line 5688
    sb	$a5,1($a3)
.L0d9bf998:
    # Line 5540
    beq	$a1,$t2,.L0d9bf9d4
    # Line 5548
    li	$t3,0x8364
    bne	$a1,$t3,.L0d9bf34c
    nop
.L0d9bf9a8:
    # Line 5554
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5553
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5552
    li	$t9,10
    sb	$t9,2($a3)
    # Line 5551
    li	$t8,2
    # Line 5554
    b	.L0d9bf3c8
    # Line 5551
    sb	$t8,1($a3)
.L0d9bf9cc:
    # Line 5540
    bne	$a1,$v0,.L0d9bf344
    li	$a7,0x80e0
.L0d9bf9d4:
    # Line 5546
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5545
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5544
    li	$a2,9
    sb	$a2,2($a3)
    # Line 5543
    li	$v1,2
    # Line 5546
    b	.L0d9bf3c8
    # Line 5543
    sb	$v1,1($a3)
.L0d9bf9f8:
    # Line 5524
    bne	$a1,$a4,.L0d9bf324
    li	$a4,0x8000
    b	.L0d9bfa1c
    # Line 5531
    sw	$a1,16($a3)
.L0d9bfa08:
    # Line 5524
    beq	$a1,$a5,.L0d9bfa18
    li	$a6,5121
    bne	$a1,$a6,.L0d9bf330
    # Line 5533
    li	$t1,0x80e1
.L0d9bfa18:
    # Line 5531
    sw	$a1,16($a3)
.L0d9bfa1c:
    move	$a7,$a1
    # Line 5530
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5529
    li	$t1,11
    sb	$t1,2($a3)
    # Line 5528
    li	$t0,2
    # Line 5531
    b	.L0d9bf3c8
    # Line 5528
    sb	$t0,1($a3)
.L0d9bfa3c:
    b	.L0d9bf454
    # Line 5910
    sb	$zero,2($a3)
.L0d9bfa44:
    # Line 5593
    li	$t2,5121
    beq	$a1,$t2,.L0d9bfa68
    li	$t3,0x8035
    bne	$a1,$t3,.L0d9bf4b0
    li	$a6,0x8000
    b	.L0d9bfa6c
    # Line 5599
    sw	$a1,16($a3)
.L0d9bfa60:
    # Line 5593
    bne	$a1,$t8,.L0d9bf4bc
    # Line 5601
    li	$t8,6407
.L0d9bfa68:
    # Line 5599
    sw	$a1,16($a3)
.L0d9bfa6c:
    move	$a7,$a1
    # Line 5598
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5597
    li	$t9,1
    # Line 5599
    b	.L0d9bf3c8
    # Line 5597
    sb	$t9,2($a3)
.L0d9bfa84:
    # Line 5703
    li	$v0,0x8035
    beq	$a1,$v0,.L0d9bfaa8
    li	$v1,5121
    bne	$a1,$v1,.L0d9bf594
    li	$t2,0x8000
    b	.L0d9bfaac
    # Line 5710
    sw	$a1,16($a3)
.L0d9bfaa0:
    # Line 5703
    bne	$a1,$a4,.L0d9bf5a0
    # Line 5712
    li	$t3,0x80e1
.L0d9bfaa8:
    # Line 5710
    sw	$a1,16($a3)
.L0d9bfaac:
    # Line 5709
    sw	$a0,12($a3)
    # Line 5710
    move	$a7,$a1
    # Line 5707
    li	$a5,1
    # Line 5708
    sb	$a5,2($a3)
    # Line 5709
    move	$a6,$a0
    # Line 5710
    b	.L0d9bf3c8
    # Line 5707
    sb	$a5,1($a3)
.L0d9bfac8:
    # Line 5671
    bne	$a1,$a6,.L0d9bf5fc
    li	$a4,0x8000
    b	.L0d9bfae4
    # Line 5677
    sw	$a1,16($a3)
.L0d9bfad8:
    # Line 5671
    bne	$t0,$a1,.L0d9bf608
    # Line 5679
    li	$a5,0x80e1
    # Line 5677
    sw	$a1,16($a3)
.L0d9bfae4:
    move	$a7,$a1
    # Line 5676
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5675
    li	$t1,6
    sb	$t1,2($a3)
    # Line 5674
    li	$t0,1
    # Line 5677
    b	.L0d9bf3c8
    # Line 5674
    sb	$t0,1($a3)
.L0d9bfb04:
    # Line 5811
    beq	$a0,$t2,.L0d9bfe14
    li	$t0,5121
    li	$t3,6403
    beq	$a0,$t3,.L0d9bfe14
    li	$t0,5121
    b	.L0d9bf644
    # Line 5819
    li	$t0,5121
.L0d9bfb20:
    b	.L0d9bf694
    # Line 5774
    li	$t0,5123
.L0d9bfb28:
    b	.L0d9bf6d0
    # Line 5788
    li	$t0,5123
.L0d9bfb30:
    b	.L0d9bf3ac
    # Line 5869
    li	$t0,5121
.L0d9bfb38:
    b	.L0d9bf734
    # Line 5883
    li	$t0,5121
.L0d9bfb40:
    # Line 5821
    bne	$t0,$a1,.L0d9bf650
    # Line 5829
    li	$t1,1
    # Line 5826
    sw	$a1,16($a3)
    # Line 5825
    sw	$a0,12($a3)
    # Line 5826
    move	$a7,$a1
    # Line 5824
    sb	$zero,2($a3)
    # Line 5825
    move	$a6,$a0
    # Line 5826
    b	.L0d9bf3c8
    # Line 5823
    sb	$zero,1($a3)
.L0d9bfb64:
    # Line 5829
    bne	$t0,$a1,.L0d9bf660
    # Line 5834
    move	$a6,$a0
    b	.L0d9bf668
    sw	$a0,12($a3)
.L0d9bfb74:
    # Line 5774
    bne	$t0,$a1,.L0d9bf694
    # Line 5779
    move	$a6,$a0
    b	.L0d9bf6a0
    sw	$a0,12($a3)
.L0d9bfb84:
    # Line 5788
    bne	$t0,$a1,.L0d9bf6d4
    # Line 5792
    li	$a6,6403
    # Line 5794
    move	$a6,$a0
    b	.L0d9bf6d8
    sw	$a0,12($a3)
.L0d9bfb98:
    # Line 5869
    bne	$t0,$a1,.L0d9bf3b0
    # Line 5872
    li	$t3,6403
    # Line 5874
    move	$a6,$a0
    b	.L0d9bf3b8
    sw	$a0,12($a3)
.L0d9bfbac:
    # Line 5883
    bne	$t0,$a1,.L0d9bf734
    # Line 5889
    move	$a6,$a0
    b	.L0d9bf740
    sw	$a0,12($a3)
.L0d9bfbbc:
    # Line 5855
    bne	$t0,$a1,.L0d9bf56c
    # Line 5860
    move	$a6,$a0
    b	.L0d9bf574
    sw	$a0,12($a3)
.L0d9bfbcc:
    # Line 5741
    li	$t8,0x8364
    bne	$a1,$t8,.L0d9bf5c8
    # Line 5753
    li	$v1,0x8034
    # Line 5747
    sw	$a1,16($a3)
.L0d9bfbdc:
    move	$a7,$a1
    # Line 5746
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5745
    li	$v0,4
    sb	$v0,2($a3)
    # Line 5744
    li	$t9,1
    # Line 5747
    b	.L0d9bf3c8
    # Line 5744
    sb	$t9,1($a3)
.L0d9bfbfc:
    # Line 5570
    bne	$t0,$a1,.L0d9bf364
    nop
    # Line 5575
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5574
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5573
    li	$a2,4
    sb	$a2,2($a3)
    # Line 5572
    li	$v1,2
    # Line 5575
    b	.L0d9bf3c8
    # Line 5572
    sb	$v1,1($a3)
.L0d9bfc28:
    # Line 5533
    li	$a4,0x8367
    bne	$a1,$a4,.L0d9bf338
    # Line 5540
    li	$a6,6407
    # Line 5538
    sw	$a1,16($a3)
    # Line 5537
    sw	$a0,12($a3)
    # Line 5538
    move	$a7,$a1
    # Line 5535
    li	$a5,2
    # Line 5536
    sb	$a5,2($a3)
    # Line 5537
    move	$a6,$a0
    # Line 5538
    b	.L0d9bf3c8
    # Line 5535
    sb	$a5,1($a3)
.L0d9bfc54:
    # Line 5601
    beq	$a1,$a7,.L0d9bfe60
    # Line 5607
    li	$t1,5123
    bne	$a1,$t1,.L0d9bf4c8
    # Line 5613
    li	$t9,0x80e0
    # Line 5611
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5610
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5609
    li	$t2,8
    # Line 5611
    b	.L0d9bf3c8
    # Line 5609
    sb	$t2,2($a3)
.L0d9bfc80:
    # Line 5712
    beq	$a1,$t3,.L0d9bfe7c
    # Line 5719
    li	$t8,0x8366
    bne	$a1,$t8,.L0d9bf5a8
    nop
    # Line 5724
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5723
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5722
    li	$v0,3
    sb	$v0,2($a3)
    # Line 5721
    li	$t9,1
    # Line 5724
    b	.L0d9bf3c8
    # Line 5721
    sb	$t9,1($a3)
.L0d9bfcb4:
    # Line 5613
    bne	$a1,$v1,.L0d9bf4d0
    nop
    # Line 5617
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5616
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5615
    li	$a2,7
    # Line 5617
    b	.L0d9bf3c8
    # Line 5615
    sb	$a2,2($a3)
.L0d9bfcd8:
    # Line 5726
    li	$a4,0x8366
    bne	$a1,$a4,.L0d9bf5b0
    # Line 5733
    li	$a6,6407
    # Line 5731
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5730
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5729
    li	$t0,9
    sb	$t0,2($a3)
    # Line 5728
    li	$a5,1
    # Line 5731
    b	.L0d9bf3c8
    # Line 5728
    sb	$a5,1($a3)
.L0d9bfd08:
    # Line 5619
    bne	$a1,$t1,.L0d9bf4d8
    nop
    # Line 5623
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5622
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5623
    b	.L0d9bf3c8
    # Line 5621
    sb	$t0,2($a3)
.L0d9bfd28:
    # Line 5733
    li	$t2,0x8363
    bne	$a1,$t2,.L0d9bf5b8
    li	$t8,0x80e0
.L0d9bfd34:
    # Line 5739
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5738
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5737
    li	$t8,10
    sb	$t8,2($a3)
    # Line 5736
    li	$t3,1
    # Line 5739
    b	.L0d9bf3c8
    # Line 5736
    sb	$t3,1($a3)
.L0d9bfd58:
    # Line 5625
    beq	$a1,$t9,.L0d9bfea0
    # Line 5631
    li	$v0,0x8035
    beq	$a1,$v0,.L0d9bfd80
    li	$v1,5121
    bne	$a1,$v1,.L0d9bf4e0
    nop
    b	.L0d9bfd84
    # Line 5637
    sw	$a1,16($a3)
.L0d9bfd78:
    # Line 5631
    bne	$a1,$a4,.L0d9bf4e8
    nop
.L0d9bfd80:
    # Line 5637
    sw	$a1,16($a3)
.L0d9bfd84:
    move	$a7,$a1
    # Line 5636
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5635
    li	$a5,6
    # Line 5637
    b	.L0d9bf3c8
    # Line 5635
    sb	$a5,2($a3)
.L0d9bfd9c:
    # Line 5733
    beq	$a1,$a7,.L0d9bfd34
    # Line 5741
    li	$t0,0x8363
    bne	$a1,$t0,.L0d9bf5c0
    nop
    b	.L0d9bfbdc
    # Line 5747
    sw	$a1,16($a3)
.L0d9bfdb4:
    # Line 5579
    bne	$t0,$a1,.L0d9bf378
    # Line 5581
    li	$t1,7
    b	.L0d9bf380
    sb	$t1,2($a3)
.L0d9bfdc4:
    b	.L0d9bf4fc
    # Line 5642
    li	$t0,5123
.L0d9bfdcc:
    # Line 5640
    bne	$t0,$a1,.L0d9bf500
    # Line 5644
    li	$v1,9
    # Line 5642
    li	$t2,10
    b	.L0d9bf504
    sb	$t2,2($a3)
.L0d9bfde0:
    # Line 5435
    sw	$t3,16($a3)
    # Line 5434
    sw	$t2,12($a3)
    move	$a7,$t3
    # Line 5433
    sb	$zero,2($a3)
    move	$a6,$t2
    b	.L0d9bf3c8
    # Line 5432
    sb	$t1,1($a3)
.L0d9bfdfc:
    # Line 5846
    li	$t8,5121
.L0d9bfe00:
    beq	$a1,$t8,.L0d9bfee0
    nop
    b	.L0d9bf898
    # Line 5852
    li	$t1,1
    # Line 5811
    li	$t0,5121
.L0d9bfe14:
    bne	$t0,$a1,.L0d9bf648
    # Line 5821
    li	$t3,6406
    # Line 5819
    sw	$a1,16($a3)
    # Line 5818
    sw	$a0,12($a3)
    # Line 5819
    move	$a7,$a1
    # Line 5817
    li	$t9,1
    sb	$t9,2($a3)
    # Line 5818
    move	$a6,$a0
    # Line 5819
    b	.L0d9bf3c8
    # Line 5816
    sb	$zero,1($a3)
.L0d9bfe3c:
    # Line 5684
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5683
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5682
    li	$v1,8
    sb	$v1,2($a3)
    # Line 5681
    li	$v0,1
    # Line 5684
    b	.L0d9bf3c8
    # Line 5681
    sb	$v0,1($a3)
.L0d9bfe60:
    # Line 5605
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5604
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5603
    li	$a2,2
    # Line 5605
    b	.L0d9bf3c8
    # Line 5603
    sb	$a2,2($a3)
.L0d9bfe7c:
    # Line 5717
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5716
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5715
    li	$a5,5
    sb	$a5,2($a3)
    # Line 5714
    li	$a4,1
    # Line 5717
    b	.L0d9bf3c8
    # Line 5714
    sb	$a4,1($a3)
.L0d9bfea0:
    # Line 5629
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5628
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5627
    li	$t0,5
    # Line 5629
    b	.L0d9bf3c8
    # Line 5627
    sb	$t0,2($a3)
.L0d9bfebc:
    # Line 5561
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5560
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5559
    li	$t2,1
    sb	$t2,2($a3)
    # Line 5558
    li	$t1,2
    # Line 5561
    b	.L0d9bf3c8
    # Line 5558
    sb	$t1,1($a3)
.L0d9bfee0:
    # Line 5852
    sw	$a1,16($a3)
    move	$a7,$a1
    # Line 5851
    sw	$a0,12($a3)
    move	$a6,$a0
    # Line 5850
    li	$t3,6
    # Line 5852
    b	.L0d9bf3c8
    # Line 5850
    sb	$t3,2($a3)
.end __glOdysseyImageCalcXferReadParams

# Function: ImageUpdateRasterTokensForDrawable
# Declared: Line 5991 (Source lines: 5998-6094)
# Address: 0x0d9bff00 - 0x0d9c00c8 (Size: 456 bytes, Frame: 0)
.ent ImageUpdateRasterTokensForDrawable
ImageUpdateRasterTokensForDrawable:
    # Line 5998
    lw	$t9,4112($zero)
    # Line 6035
    lui	$t0,0x1
    addu	$a7,$t0,$t9
    lw	$at,7208($a7)
    # Line 6042
    srl	$a6,$at,0x19
    andi	$a6,$a6,0x1
    # Line 6055
    lui	$t1,0x200
    sll	$a6,$a6,0x19
    and	$a6,$a6,$t1
    # Line 6038
    srl	$v0,$at,0x15
    # Line 6040
    srl	$t2,$at,0x17
    # Line 6038
    andi	$v0,$v0,0x1
    # Line 6055
    nor	$t1,$t1,$zero
    # Line 6051
    sll	$v0,$v0,0x15
    # Line 6040
    andi	$t2,$t2,0x1
    # Line 6047
    srl	$t8,$at,0x10
    # Line 6035
    srl	$t3,$at,0x11
    # Line 6047
    andi	$t8,$t8,0x1
    lw	$v1,8($a0)
    # Line 6035
    andi	$t3,$t3,0x3
    # Line 6047
    sll	$t8,$t8,0x10
    and	$t8,$t0,$t8
    nor	$t0,$t0,$zero
    and	$v1,$v1,$t0
    # Line 6036
    srl	$t0,$at,0x14
    # Line 6048
    sll	$t3,$t3,0x11
    # Line 6036
    andi	$t0,$t0,0x1
    # Line 6047
    or	$t8,$t8,$v1
    # Line 6048
    lui	$v1,0x6
    and	$t3,$t3,$v1
    nor	$v1,$v1,$zero
    # Line 6049
    sll	$t0,$t0,0x14
    # Line 6048
    and	$t8,$t8,$v1
    or	$t3,$t3,$t8
    # Line 6049
    lui	$t8,0x10
    and	$t0,$t0,$t8
    nor	$t8,$t8,$zero
    # Line 6037
    andi	$v1,$at,0x1
    # Line 6049
    and	$t3,$t3,$t8
    or	$t0,$t0,$t3
    # Line 6050
    li	$t3,-2
    and	$t0,$t0,$t3
    # Line 6051
    lui	$t3,0x20
    and	$v0,$v0,$t3
    # Line 6050
    or	$v1,$v1,$t0
    # Line 6051
    nor	$t0,$t3,$zero
    # Line 6039
    srl	$t3,$at,0x16
    # Line 6053
    sll	$t2,$t2,0x17
    # Line 6039
    andi	$t3,$t3,0x1
    # Line 6052
    sll	$t3,$t3,0x16
    # Line 6051
    and	$v1,$v1,$t0
    or	$v0,$v0,$v1
    # Line 6052
    lui	$v1,0x40
    and	$t3,$t3,$v1
    nor	$t0,$v1,$zero
    # Line 6056
    lui	$v1,0x400
    # Line 6053
    lui	$t8,0x80
    and	$t2,$t2,$t8
    # Line 6052
    and	$v0,$v0,$t0
    or	$t3,$t3,$v0
    # Line 6043
    srl	$v0,$at,0x1a
    # Line 6053
    nor	$t8,$t8,$zero
    # Line 6041
    srl	$t0,$at,0x18
    andi	$t0,$t0,0x1
    # Line 6053
    and	$t3,$t3,$t8
    or	$t2,$t2,$t3
    # Line 6054
    lui	$t3,0x100
    sll	$t0,$t0,0x18
    nor	$t8,$t3,$zero
    and	$t0,$t0,$t3
    and	$t2,$t2,$t8
    # Line 6043
    andi	$v0,$v0,0x1
    # Line 6054
    or	$t0,$t0,$t2
    # Line 6056
    sll	$v0,$v0,0x1a
    # Line 6055
    and	$t0,$t0,$t1
    # Line 6056
    and	$v0,$v0,$v1
    # Line 6055
    or	$a6,$a6,$t0
    # Line 6056
    nor	$t0,$v1,$zero
    # Line 6044
    lui	$v1,0x1fff
    ori	$v1,$v1,0xffff
    # Line 6056
    and	$a6,$a6,$t0
    # Line 6044
    and	$at,$v1,$at
    # Line 6056
    or	$v0,$v0,$a6
    # Line 6057
    lui	$a6,0xe000
    and	$v0,$v0,$a6
    and	$at,$at,$v1
    or	$at,$at,$v0
    sw	$at,8($a0)
    # Line 6063
    lw	$t0,7220($a7)
    sw	$t0,0($a1)
    lw	$t9,1792($t9)
    andi	$t9,$t9,0x40
    beqz	$t9,.L0d9c00a4
    # Line 6067
    li	$t3,-2049
    and	$t3,$t0,$t3
    sw	$t3,0($a1)
    # Line 6074
    lw	$t2,7228($a7)
    sw	$t2,0($a2)
    # Line 6075
    lw	$t1,7232($a7)
    sw	$t1,0($a3)
    # Line 6076
    lw	$t0,7236($a7)
    sw	$t0,0($a4)
    # Line 6080
    lw	$a7,7360($a7)
    # Line 6094
    jr	$ra
    # Line 6080
    sw	$a7,0($a5)
.L0d9c00a4:
    # Line 6074
    lw	$v0,7228($a7)
    sw	$v0,0($a2)
    # Line 6075
    lw	$at,7232($a7)
    sw	$at,0($a3)
    # Line 6076
    lw	$t9,7236($a7)
    sw	$t9,0($a4)
    # Line 6080
    lw	$t8,7360($a7)
    # Line 6094
    jr	$ra
    # Line 6080
    sw	$t8,0($a5)
.end ImageUpdateRasterTokensForDrawable

.late_rodata
jtbl_0dae9218:
    .word .L0d9bd58c
    .word .L0d9bd550
    .word .L0d9bd518
    .word .L0d9bd4d8
    .word .L0d9bd498
    .word .L0d9bd458
    .word .L0d9bd40c
    .word .L0d9bd3cc
    .word .L0d9bd38c
    .word .L0d9bd32c
    .word .L0d9bd0fc
    .word .L0d9bd2f0
    .word .L0d9bd2a8
    .word .L0d9bd264
    .word .L0d9bd0f0
    .word .L0d9bd0f0
    .word .L0d9bd138
    .word .L0d9bd224
jtbl_0dae9260:
    .word .L0d9becb0
    .word .L0d9bed1c
    .word .L0d9bed08
    .word .L0d9becf4
    .word .L0d9bece0
    .word .L0d9becc8
    .word .L0d9becbc
jtbl_0dae927c:
    .word .L0d9bedf4
    .word .L0d9beddc
    .word .L0d9bef2c
    .word .L0d9bef18
    .word .L0d9bef04
    .word .L0d9beef0
    .word .L0d9beedc
    .word .L0d9beecc
    .word .L0d9beeb8
    .word .L0d9beea4
    .word .L0d9bee90
    .word .L0d9bee7c
    .word .L0d9bee68
    .word .L0d9bee54
    .word .L0d9bee40
    .word .L0d9bee2c
    .word .L0d9bee18
    .word .L0d9bee04
jtbl_0dae92c4:
    .word .L0d9bf754
    .word .L0d9bf71c
    .word .L0d9bf394
    .word .L0d9bf6f0
    .word .L0d9bf6b8
    .word .L0d9bf67c
    .word .L0d9bf634
    .word .L0d9bf5ec
    .word .L0d9bf588
    .word .L0d9bf548
    .word .L0d9bf314
    .word .L0d9bf518
    .word .L0d9bf49c
    .word .L0d9bf470
    .word .L0d9bf248
    .word .L0d9bf248
    .word .L0d9bf440
    .word .L0d9bf418

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

