# Source: ../ODYSSEY/ody_lut.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_lut.c
# Total Functions: 3

.text

# Function: __glOdysseyInitLUTs
# Declared: Line 94 (Source lines: 95-145)
# Address: 0x0d9c3ae0 - 0x0d9c3c48 (Size: 360 bytes, Frame: 144)
.globl __glOdysseyInitLUTs
.ent __glOdysseyInitLUTs
__glOdysseyInitLUTs:
    # Line 95
    addiu	$sp,$sp,-144
    sd	$s8,104($sp)
    sd	$s5,96($sp)
    sd	$s1,88($sp)
    sd	$s0,80($sp)
    sd	$s7,72($sp)
    sd	$s4,64($sp)
    sd	$s6,56($sp)
    lui	$a1,0x13
    sd	$s2,128($sp)
    addiu	$a1,$a1,19120
    sd	$gp,120($sp)
    addu	$gp,$t9,$a1
    # Line 103
    # lw $t9, -16944($gp) # &memset
    li	$a2,20604
    # Line 101
    lw	$s2,4112($zero)
    # Line 103
    li	$a0,0xa740
    sd	$s3,48($sp)
    move	$a1,$zero
    # Line 95
    sd	$ra,112($sp)
    # Line 103
    jal	memset
    addu	$a0,$s2,$a0
    li	$s8,8
    li	$s6,16
    li	$s7,256
    li	$s4,1
    li	$s5,-1
    addiu	$t8,$s2,20600
    li	$s0,0xa744
    lui	$s3,0x1
    addu	$s0,$s2,$s0
    addu	$s1,$s3,$s2
    sd	$s1,40($sp)
    addu	$s3,$s3,$t8
    nop
    nop
.L0d9c3b70:
    # Line 113
    sw	$s4,-20664($s1)
    # Line 112
    li	$t8,6
    sw	$t8,-20660($s1)
    # Line 111
    sw	$s5,-22716($s1)
    # Line 125
    sw	$zero,32($sp)
    # Line 124
    sw	$zero,28($sp)
    # Line 123
    sw	$zero,12($sp)
    # Line 122
    sw	$zero,8($sp)
    # Line 121
    sw	$zero,4($sp)
    # Line 120
    sw	$s4,24($sp)
    # Line 119
    sb	$t8,0($sp)
    # Line 133
    # lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
    move	$a3,$zero
    # Line 118
    sb	$s8,1($sp)
    # Line 133
    move	$a2,$s0
    addiu	$a1,$sp,0
    # Line 117
    sw	$s6,20($sp)
    # Line 133
    move	$a0,$s2
    bal __glOdysseyCreatePMObj
    # Line 116
    sw	$s7,16($sp)
    # Line 133
    andi	$t9,$v0,0xff
    # Line 105
    addiu	$s0,$s0,2060
    # Line 133
    beqz	$t9,.L0d9c3c14
    # Line 105
    addiu	$s1,$s1,2060
    bne	$s1,$s3,.L0d9c3b70
    nop
    # Line 145
    ld	$gp,120($sp)
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,48($sp)
    ld	$s5,96($sp)
    ld	$s6,56($sp)
    ld	$s7,72($sp)
    # Line 144
    ld	$s8,40($sp)
    # Line 145
    ld	$ra,112($sp)
    # Line 144
    sb	$s4,-22720($s8)
    # Line 145
    ld	$s4,64($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9c3c14:
    ld	$gp,120($sp)
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s5,96($sp)
    ld	$ra,112($sp)
    ld	$s6,56($sp)
    ld	$s7,72($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glOdysseyInitLUTs

# Function: __glOdysseyStoreLUT
# Declared: Line 155 (Source lines: 156-649)
# Address: 0x0d9c3c50 - 0x0d9c4434 (Size: 2020 bytes, Frame: 0)
.globl __glOdysseyStoreLUT
.ent __glOdysseyStoreLUT
__glOdysseyStoreLUT:
    # Line 156
    lui	$at,0x1
    ori	$at,$at,0x80
    subu	$sp,$sp,$at
    sd	$s1,56($sp)
    # Line 163
    lw	$s1,4112($zero)
    lui	$v0,0x1
    addu	$v0,$v0,$s1
    # Line 156
    move	$v1,$s8
    # Line 163
    lbu	$v0,-22720($v0)
    # Line 156
    sd	$v1,80($sp)
    addu	$s8,$sp,$at
    lui	$at,0x13
    sd	$s2,48($sp)
    move	$s2,$a0
    addiu	$at,$at,18752
    sd	$gp,88($sp)
    # Line 163
    beqz	$v0,.L0d9c4360
    # Line 156
    addu	$gp,$t9,$at
.L0d9c3c98:
    # Line 166
    la	$v0,sub_0daf0000
    sltiu	$a0,$s2,10
    addiu	$v0,$v0,-27892
    sll	$v1,$s2,0x2
    beqz	$a0,.L0d9c3cbc
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    # Line 195
    li	$t2,6408
.L0d9c3cbc:
    ld	$s2,48($sp)
    ld	$s1,56($sp)
    # Line 209
    li	$v0,1280
.L0d9c3cc8:
    ld	$a0,80($sp)
    ld	$gp,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0d9c3cdc:
    # Line 179
    li	$a1,6408
    sd	$a1,64($sp)
    sd	$s0,104($sp)
    b	.L0d9c3d00
    sd	$ra,96($sp)
.L0d9c3cf0:
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    # Line 181
    lw	$a2,5504($s1)
    sd	$a2,64($sp)
.L0d9c3d00:
    # Line 217
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 210
    lui	$s0,0xffff
    addu	$s0,$s0,$s8
    # Line 217
    addiu	$t9,$t9,17472
    move	$a1,$s2
    # Line 210
    addiu	$s0,$s0,32752
    # Line 217
    bal __glOdysseyStoreLUT
    move	$a0,$s0
    # Line 221
    li	$a1,1
    lui	$t9,0x1
    sll	$a0,$s2,0x7
    li	$a3,2
    addu	$a0,$a0,$s2
    move	$t8,$a3
    sll	$a0,$a0,0x2
    li	$ra,256
    subu	$a0,$a0,$s2
    xor	$at,$ra,$v0
    sll	$a0,$a0,0x2
    sltiu	$at,$at,1
    addu	$a0,$s1,$a0
    movn	$t8,$a1,$at
    addu	$t9,$t9,$a0
    sd	$t9,72($sp)
    beq	$ra,$v0,.L0d9c41b4
    sw	$t8,-20664($t9)
    # Line 263
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    li	$ra,16
    addiu	$a0,$a0,-16
    move	$t3,$zero
    addiu	$t9,$a0,128
    ld	$s2,48($sp)
    b	.L0d9c3da0
    move	$t8,$a0
    nop
.L0d9c3d90:
    # Line 309
    addiu	$t3,$t3,1
    addiu	$t9,$t9,2048
    beq	$ra,$t3,.L0d9c3ed8
    addiu	$t8,$t8,2048
.L0d9c3da0:
    # Line 351
    andi	$a6,$t3,0x1
    move	$a7,$t8
    # Line 341
    srl	$t0,$t3,0x2
    andi	$a1,$t3,0x3
    sll	$t0,$t0,0x5
    sltiu	$a1,$a1,2
    # Line 351
    addiu	$a2,$t0,2048
    move	$a5,$t9
    movz	$t0,$a2,$a1
    b	.L0d9c3ddc
    addiu	$t2,$t0,2048
    nop
.L0d9c3dd0:
    # Line 359
    addiu	$t0,$t1,128
    beq	$t0,$t2,.L0d9c3d90
    addiu	$a5,$a5,128
.L0d9c3ddc:
    # Line 387
    move	$t1,$t0
    move	$a1,$a7
    # Line 359
    addiu	$a7,$a7,128
    # Line 387
    sll	$v0,$t0,0x3
    b	.L0d9c3e6c
    addu	$v0,$s0,$v0
    nop
    nop
    nop
.L0d9c3e00:
    # Line 439
    lhu	$a3,20($v0)
    # Line 440
    lhu	$a4,28($v0)
    # Line 443
    lhu	$at,14($v0)
    # Line 442
    lhu	$t0,6($v0)
    # Line 443
    sll	$at,$at,0x4
    sh	$at,10($a1)
    # Line 442
    sll	$t0,$t0,0x4
    sh	$t0,8($a1)
    # Line 440
    sll	$a4,$a4,0x4
    sh	$a4,6($a1)
    # Line 439
    sll	$a3,$a3,0x4
    sh	$a3,4($a1)
    # Line 445
    lhu	$a2,30($v0)
    # Line 444
    lhu	$v1,22($v0)
    # Line 445
    sll	$a2,$a2,0x4
    sh	$a2,14($a1)
    # Line 438
    lhu	$a2,12($v0)
    # Line 444
    sll	$v1,$v1,0x4
    sh	$v1,12($a1)
    # Line 437
    lhu	$v1,4($v0)
    # Line 438
    sll	$a2,$a2,0x4
    sh	$a2,2($a1)
    # Line 437
    sll	$v1,$v1,0x4
    sh	$v1,0($a1)
.L0d9c3e60:
    # Line 389
    addiu	$a1,$a1,16
    beq	$a1,$a5,.L0d9c3dd0
    addiu	$v0,$v0,32
.L0d9c3e6c:
    # Line 387
    bnez	$a6,.L0d9c3e00
    nop
    # Line 408
    lhu	$t0,16($v0)
    # Line 409
    lhu	$at,24($v0)
    # Line 412
    lhu	$a2,10($v0)
    # Line 411
    lhu	$v1,2($v0)
    # Line 412
    sll	$a2,$a2,0x4
    sh	$a2,10($a1)
    # Line 411
    sll	$v1,$v1,0x4
    sh	$v1,8($a1)
    # Line 409
    sll	$at,$at,0x4
    sh	$at,6($a1)
    # Line 414
    lhu	$a4,26($v0)
    # Line 413
    lhu	$a3,18($v0)
    # Line 414
    sll	$a4,$a4,0x4
    sh	$a4,14($a1)
    # Line 407
    lhu	$a4,8($v0)
    # Line 413
    sll	$a3,$a3,0x4
    sh	$a3,12($a1)
    # Line 408
    sll	$t0,$t0,0x4
    # Line 406
    lhu	$a3,0($v0)
    # Line 408
    sh	$t0,4($a1)
    # Line 407
    sll	$a4,$a4,0x4
    sh	$a4,2($a1)
    # Line 406
    sll	$a3,$a3,0x4
    # Line 414
    b	.L0d9c3e60
    # Line 406
    sh	$a3,0($a1)
.L0d9c3ed8:
    # Line 487
    # lw $t9, -30964($gp) # &__glOdysseyOpenPMObjWriteReference
    move	$a4,$zero
    ld	$a1,72($sp)
    addiu	$a3,$sp,8
    move	$a2,$zero
    # Line 479
    sw	$zero,8($sp)
    # Line 487
    move	$a0,$s1
    bal __glOdysseyOpenPMObjWriteReference
    lw	$a1,-22716($a1)
    beqz	$v0,.L0d9c4128
    ld	$s0,104($sp)
    # Line 509
    sd	$zero,16($sp)
    addiu	$a7,$sp,16
    sd	$zero,24($a7)
    sd	$zero,16($a7)
    # Line 584
    move	$a6,$zero
    li	$a5,3
    # Line 509
    sd	$zero,8($a7)
    # Line 584
    li	$a4,0x8000
    move	$a2,$zero
    # Line 512
    lw	$at,20($sp)
    # Line 584
    lui	$a3,0xffff
    # Line 513
    lui	$ra,0xffff
    # Line 510
    lw	$v1,8($sp)
    # Line 512
    andi	$at,$at,0xffff
    # Line 510
    lui	$t0,0x1fff
    # Line 519
    lw	$v0,28($sp)
    # Line 513
    and	$at,$ra,$at
    # Line 510
    ori	$t0,$t0,0xffff
    and	$v1,$v1,$t0
    # Line 519
    andi	$v0,$v0,0xffff
    # Line 509
    lui	$a1,0x2000
    # Line 524
    lui	$t9,0xf00
    # Line 509
    lw	$a0,16($sp)
    # Line 524
    nor	$t9,$t9,$zero
    # Line 523
    lui	$t8,0xf0
    lw	$t3,32($sp)
    # Line 509
    nor	$a1,$a1,$zero
    # Line 523
    nor	$t8,$t8,$zero
    # Line 509
    and	$a0,$a0,$a1
    # Line 523
    and	$t3,$t3,$t8
    # Line 510
    lui	$a1,0xe000
    # Line 524
    and	$t3,$t3,$t9
    # Line 526
    lui	$t9,0x8000
    # Line 510
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    # Line 525
    lui	$t8,0x7000
    # Line 519
    lui	$a0,0x10
    # Line 525
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    # Line 527
    lui	$t8,0xf
    nor	$t8,$t8,$zero
    # Line 526
    or	$t3,$t3,$t9
    # Line 519
    or	$v0,$v0,$a0
    # Line 527
    and	$t3,$t3,$t8
    # Line 521
    lw	$t8,24($sp)
    # Line 520
    and	$ra,$ra,$v0
    # Line 521
    li	$v0,-4096
    # Line 584
    addu	$a3,$a3,$s8
    # Line 521
    and	$t8,$t8,$v0
    # Line 520
    ori	$ra,$ra,0x100
    # Line 521
    ori	$t8,$t8,0x10
    # Line 527
    lui	$t0,0x2
    # Line 528
    li	$t9,0xe000
    nor	$t9,$t9,$zero
    # Line 527
    or	$t3,$t0,$t3
    # Line 528
    and	$t3,$t3,$t9
    # Line 529
    li	$t9,-249
    # Line 539
    lui	$a0,0xff
    # Line 528
    ori	$t3,$t3,0x4000
    # Line 539
    lw	$t1,44($sp)
    # Line 529
    and	$t3,$t3,$t9
    # Line 530
    li	$t9,-8
    # Line 539
    ori	$a0,$a0,0xffff
    # Line 530
    and	$t3,$t3,$t9
    # Line 537
    lw	$t2,40($sp)
    # Line 531
    ori	$t3,$t3,0x1000
    # Line 539
    and	$t1,$t1,$a0
    # Line 533
    sw	$zero,36($sp)
    # Line 537
    lui	$t9,0xfff0
    # Line 540
    lui	$v0,0x7
    # Line 513
    sw	$at,20($sp)
    # Line 537
    and	$t2,$t2,$t9
    # Line 540
    nor	$v0,$v0,$zero
    # Line 510
    sw	$v1,16($sp)
    # Line 537
    ori	$t2,$t2,0x800
    # Line 540
    and	$t1,$t1,$v0
    # Line 584
    ld	$a1,72($sp)
    # Line 540
    or	$t0,$t0,$t1
    # Line 541
    li	$t1,-4097
    # Line 520
    sw	$ra,28($sp)
    # Line 541
    and	$t0,$t0,$t1
    # Line 542
    li	$t1,-2049
    # Line 521
    sw	$t8,24($sp)
    # Line 542
    and	$t0,$t0,$t1
    # Line 543
    li	$t1,-1025
    # Line 531
    sw	$t3,32($sp)
    # Line 543
    and	$t0,$t0,$t1
    # Line 544
    li	$t1,-513
    # Line 584
    # lw $t9, -30980($gp) # &__glOdysseyAssignToPMObj
    # Line 544
    and	$t0,$t0,$t1
    # Line 545
    li	$t1,-481
    # Line 537
    sw	$t2,40($sp)
    # Line 545
    and	$t0,$t0,$t1
    # Line 546
    li	$t1,-32
    # Line 584
    addiu	$a3,$a3,-16
    # Line 546
    and	$t0,$t0,$t1
    sw	$t0,44($sp)
    # Line 584
    move	$a0,$s1
    bal __glOdysseyAssignToPMObj
    lw	$a1,-22716($a1)
    beqz	$v0,.L0d9c4340
    # Line 607
    nop	# was lw $t9, -30960($gp) # &__glOdysseyClosePMObjWriteReference
    ld	$a1,72($sp)
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseyClosePMObjWriteReference
    lw	$a1,-22716($a1)
    ld	$s1,56($sp)
    beqz	$v0,.L0d9c43d4
    ld	$ra,96($sp)
    # Line 624
    ld	$v0,64($sp)
    li	$a0,6408
    sltiu	$a3,$v0,1
    li	$a2,6406
    movn	$v0,$a0,$a3
    beq	$v0,$a2,.L0d9c4398
    ld	$t8,72($sp)
    li	$a4,6409
    beq	$v0,$a4,.L0d9c43a4
    # Line 630
    ld	$at,72($sp)
    # Line 624
    li	$a5,6410
    beq	$v0,$a5,.L0d9c43b0
    # Line 633
    ld	$v1,72($sp)
    # Line 624
    li	$a6,0x8049
    beq	$v0,$a6,.L0d9c43bc
    # Line 636
    ld	$a1,72($sp)
    # Line 624
    li	$a7,6407
    beq	$v0,$a7,.L0d9c43c8
    # Line 639
    ld	$a3,72($sp)
    # Line 624
    beq	$a0,$v0,.L0d9c4378
    # Line 641
    ld	$t1,72($sp)
    # Line 209
    ld	$t0,80($sp)
    # Line 645
    li	$v0,1280
    # Line 209
    ld	$gp,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t0
.L0d9c4128:
    ld	$gp,88($sp)
    ld	$ra,96($sp)
    ld	$t1,80($sp)
    # Line 498
    li	$v0,1285
    # Line 209
    ld	$s1,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L0d9c4148:
    sd	$t2,64($sp)
    sd	$s0,104($sp)
    # Line 195
    b	.L0d9c3d00
    sd	$ra,96($sp)
.L0d9c4158:
    # Line 209
    ld	$gp,88($sp)
    ld	$s1,56($sp)
    ld	$t3,80($sp)
    # Line 201
    li	$v0,1280
    # Line 209
    ld	$s2,48($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t3
.L0d9c4178:
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    # Line 190
    lw	$t8,5824($s1)
    # Line 191
    b	.L0d9c3d00
    sd	$t8,64($sp)
.L0d9c418c:
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    # Line 187
    lw	$t9,5664($s1)
    # Line 188
    b	.L0d9c3d00
    sd	$t9,64($sp)
.L0d9c41a0:
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    # Line 184
    lw	$at,5984($s1)
    # Line 185
    b	.L0d9c3d00
    sd	$at,64($sp)
.L0d9c41b4:
    # Line 221
    li	$a7,-4096
    li	$ra,16
    move	$v0,$zero
    move	$t1,$zero
    addiu	$t2,$a0,64
    ld	$s2,48($sp)
    lui	$a6,0x1
    lui	$a3,0xff00
    ld	$s1,56($sp)
    lui	$a5,0xff
    ori	$a3,$a3,0xfff
    ld	$t0,72($sp)
    ori	$a5,$a5,0xf000
    addu	$a6,$a6,$t2
    nop
.L0d9c41f0:
    sll	$a1,$v0,0x3
    move	$a0,$t0
    addu	$a1,$s0,$a1
    nop
.L0d9c4200:
    # Line 233
    lhu	$v1,0($a1)
    lw	$a2,-22712($a0)
    sll	$v1,$v1,0xc
    and	$v1,$a5,$v1
    and	$a2,$a3,$a2
    or	$v1,$v1,$a2
    sw	$v1,-22712($a0)
    # Line 234
    lhu	$at,2($a1)
    andi	$at,$at,0xfff
    and	$v1,$a7,$v1
    or	$at,$at,$v1
    sw	$at,-22712($a0)
    # Line 235
    lhu	$t9,4($a1)
    lw	$at,-21688($a0)
    sll	$t9,$t9,0xc
    and	$t9,$a5,$t9
    and	$at,$a3,$at
    or	$t9,$t9,$at
    sw	$t9,-21688($a0)
    # Line 236
    lhu	$t8,6($a1)
    andi	$t8,$t8,0xfff
    and	$t9,$a7,$t9
    or	$t8,$t8,$t9
    sw	$t8,-21688($a0)
    # Line 233
    lhu	$t3,8($a1)
    lw	$t8,-22708($a0)
    sll	$t3,$t3,0xc
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    sw	$t3,-22708($a0)
    # Line 234
    lhu	$t2,10($a1)
    andi	$t2,$t2,0xfff
    and	$t3,$a7,$t3
    or	$t2,$t2,$t3
    sw	$t2,-22708($a0)
    # Line 235
    lhu	$a4,12($a1)
    lw	$t2,-21684($a0)
    sll	$a4,$a4,0xc
    and	$a4,$a5,$a4
    and	$t2,$a3,$t2
    # Line 231
    addiu	$a1,$a1,16
    # Line 235
    or	$a4,$a4,$t2
    sw	$a4,-21684($a0)
    # Line 236
    lhu	$a2,-2($a1)
    # Line 231
    addiu	$v0,$v0,2
    addiu	$a0,$a0,8
    # Line 236
    andi	$a2,$a2,0xfff
    and	$a4,$a7,$a4
    or	$a2,$a2,$a4
    # Line 231
    bne	$a0,$a6,.L0d9c4200
    # Line 236
    sw	$a2,-21692($a0)
    # Line 230
    addiu	$t1,$t1,1
    addiu	$a6,$a6,64
    bne	$ra,$t1,.L0d9c41f0
    addiu	$t0,$t0,64
    # Line 241
    ld	$v0,64($sp)
    li	$a0,6408
    sltiu	$a2,$v0,1
    li	$a1,6406
    movn	$v0,$a0,$a2
    beq	$v0,$a1,.L0d9c43e8
    ld	$ra,96($sp)
    li	$a3,6409
    ld	$ra,96($sp)
    beq	$v0,$a3,.L0d9c43fc
    ld	$s0,104($sp)
    li	$a4,6410
    beq	$v0,$a4,.L0d9c440c
    # Line 250
    ld	$t3,72($sp)
    # Line 241
    li	$a5,0x8049
    beq	$v0,$a5,.L0d9c4418
    # Line 253
    ld	$t9,72($sp)
    # Line 241
    li	$a6,6407
    beq	$v0,$a6,.L0d9c4424
    nop
    beq	$a0,$v0,.L0d9c43dc
    # Line 259
    ld	$a5,72($sp)
    # Line 262
    b	.L0d9c3cc8
    li	$v0,1280
.L0d9c4340:
    # Line 209
    ld	$gp,88($sp)
    ld	$ra,96($sp)
    ld	$a7,80($sp)
    # Line 600
    li	$v0,1285
    # Line 209
    ld	$s1,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0d9c4360:
    # Line 166
    # lw $t9, -31096($gp) # &__glOdysseyInitLUTs
    sd	$ra,96($sp)
    bal __glOdysseyInitLUTs
    nop
    b	.L0d9c3c98
    ld	$ra,96($sp)
.L0d9c4378:
    # Line 641
    li	$t0,6
    sw	$t0,-20660($t1)
.L0d9c4380:
    # Line 209
    ld	$t2,80($sp)
    # Line 649
    move	$v0,$zero
    # Line 209
    ld	$gp,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t2
.L0d9c4398:
    li	$t3,1
    b	.L0d9c4380
    # Line 626
    sw	$t3,-20660($t8)
.L0d9c43a4:
    # Line 630
    li	$t9,2
    b	.L0d9c4380
    # Line 629
    sw	$t9,-20660($at)
.L0d9c43b0:
    # Line 632
    li	$v0,3
    # Line 633
    b	.L0d9c4380
    # Line 632
    sw	$v0,-20660($v1)
.L0d9c43bc:
    # Line 635
    li	$a0,4
    # Line 636
    b	.L0d9c4380
    # Line 635
    sw	$a0,-20660($a1)
.L0d9c43c8:
    # Line 638
    li	$a2,5
    # Line 639
    b	.L0d9c4380
    # Line 638
    sw	$a2,-20660($a3)
.L0d9c43d4:
    # Line 615
    b	.L0d9c3cc8
    li	$v0,1285
.L0d9c43dc:
    # Line 258
    li	$a4,6
    # Line 259
    b	.L0d9c4380
    # Line 258
    sw	$a4,-20660($a5)
.L0d9c43e8:
    ld	$a7,72($sp)
    ld	$s0,104($sp)
    li	$a6,1
    b	.L0d9c4380
    # Line 243
    sw	$a6,-20660($a7)
.L0d9c43fc:
    # Line 247
    ld	$t1,72($sp)
    li	$t0,2
    b	.L0d9c4380
    # Line 246
    sw	$t0,-20660($t1)
.L0d9c440c:
    # Line 249
    li	$t2,3
    # Line 250
    b	.L0d9c4380
    # Line 249
    sw	$t2,-20660($t3)
.L0d9c4418:
    # Line 252
    li	$t8,4
    # Line 253
    b	.L0d9c4380
    # Line 252
    sw	$t8,-20660($t9)
.L0d9c4424:
    # Line 256
    ld	$v0,72($sp)
    # Line 255
    li	$at,5
    # Line 256
    b	.L0d9c4380
    # Line 255
    sw	$at,-20660($v0)
.end __glOdysseyStoreLUT

# Function: ResizeLUTData
# Declared: Line 751 (Source lines: 752-1034)
# Address: 0x0d9c4440 - 0x0d9c4d8c (Size: 2380 bytes, Frame: 32)
.ent ResizeLUTData
ResizeLUTData:
    # Line 764
    li	$at,7
    lw	$a3,4112($zero)
    # Line 752
    addiu	$sp,$sp,-32
    # Line 764
    beq	$a1,$at,.L0d9c4568
    sd	$ra,24($sp)
    # Line 813
    li	$t0,6
    beq	$a1,$t0,.L0d9c4c5c
    # Line 821
    addiu	$a4,$a3,1084
    # Line 813
    li	$v0,4
    beq	$a1,$v0,.L0d9c4c7c
    # Line 824
    addiu	$a5,$a3,1024
    # Line 878
    beqz	$a1,.L0d9c4d7c
    li	$a4,1
    beq	$a1,$a4,.L0d9c47c8
    # Line 890
    addiu	$a6,$a3,5912
    # Line 878
    li	$v1,2
    beq	$a1,$v1,.L0d9c47a4
    li	$a2,3
    beq	$a1,$a2,.L0d9c47a4
    nop
    # Line 966
    li	$a3,8
    beq	$a1,$a3,.L0d9c44cc
    li	$a4,9
    beq	$a1,$a4,.L0d9c44d0
    # Line 969
    li	$a4,4096
    move	$ra,$ra
    # Line 1031
    move	$v0,$zero
    # Line 1034
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c44b4:
    # Line 850
    li	$a5,4096
    sd	$a5,16($sp)
.L0d9c44bc:
    # Line 1034
    ld	$ra,24($sp)
.L0d9c44c0:
    ld	$v0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c44cc:
    # Line 969
    li	$a4,4096
.L0d9c44d0:
    xor	$a2,$a1,$a3
    li	$a5,256
    sltiu	$a2,$a2,1
    movz	$a5,$a4,$a2
    srl	$a4,$a5,0x1
    beqz	$a4,.L0d9c4520
    sd	$a5,16($sp)
    move	$a3,$a0
    addu	$a6,$a4,$a4
    li	$a1,1
    addiu	$a6,$a6,1
    nop
.L0d9c4500:
    # Line 997
    sh	$a1,0($a3)
    sh	$a1,2($a3)
    sh	$a1,4($a3)
    sh	$a1,6($a3)
    # Line 995
    addiu	$a1,$a1,2
    sltu	$a7,$a1,$a6
    bnez	$a7,.L0d9c4500
    addiu	$a3,$a3,8
.L0d9c4520:
    # Line 1009
    sh	$zero,0($a0)
    sh	$zero,2($a0)
    # Line 1016
    sltu	$t0,$a4,$a5
    # Line 1009
    sh	$zero,4($a0)
    # Line 1016
    beqz	$t0,.L0d9c44bc
    # Line 1009
    sh	$zero,6($a0)
    # Line 1016
    sll	$a3,$a4,0x3
    addu	$a3,$a0,$a3
.L0d9c4540:
    addiu	$a3,$a3,8
    # Line 1018
    sh	$zero,-8($a3)
    # Line 1016
    addiu	$a4,$a4,1
    # Line 1018
    sh	$zero,-6($a3)
    # Line 1016
    sltu	$a6,$a4,$a5
    # Line 1018
    sh	$zero,-4($a3)
    # Line 1016
    bnez	$a6,.L0d9c4540
    # Line 1018
    sh	$zero,-2($a3)
    b	.L0d9c44c0
    # Line 1034
    ld	$ra,24($sp)
.L0d9c4568:
    # Line 775
    lw	$t0,1096($a3)
    # Line 772
    addiu	$t2,$a3,1132
    sw	$t2,12($sp)
    # Line 771
    addiu	$t1,$a3,1120
    sw	$t1,8($sp)
    # Line 775
    slti	$t0,$t0,257
    # Line 770
    addiu	$t1,$a3,1108
    sw	$t1,4($sp)
    # Line 769
    addiu	$a7,$a3,1096
    # Line 775
    beqz	$t0,.L0d9c45d0
    # Line 769
    sw	$a7,0($sp)
    # Line 775
    lw	$t3,1108($a3)
    slti	$t3,$t3,257
    beqz	$t3,.L0d9c45d4
    # Line 781
    li	$at,4096
    # Line 775
    lw	$t8,1120($a3)
    slti	$t8,$t8,257
    beqz	$t8,.L0d9c45d4
    # Line 781
    li	$at,4096
    # Line 775
    lw	$t9,1132($a3)
    slti	$t9,$t9,257
    beqz	$t9,.L0d9c45d4
    # Line 781
    li	$at,4096
    # Line 778
    li	$ra,256
    b	.L0d9c45d8
    sd	$ra,16($sp)
.L0d9c45d0:
    # Line 781
    li	$at,4096
.L0d9c45d4:
    sd	$at,16($sp)
.L0d9c45d8:
    ld	$v0,16($sp)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f6
    ldc1	$f4,_lit8_3fe0000000000000
    move	$t9,$zero
    addiu	$ra,$sp,16
    lwc1	$f5,_lit_457ff000
    addiu	$t8,$sp,0
    b	.L0d9c4610
    cvt.d.l	$f6,$f6
.L0d9c4604:
    # Line 788
    addiu	$t8,$t8,4
    beq	$t8,$ra,.L0d9c44bc
    addiu	$t9,$t9,1
.L0d9c4610:
    # Line 791
    lw	$a6,0($t8)
    lw	$a1,0($a6)
    mtc1	$a1,$f9
    cvt.d.w	$f9,$f9
    beqz	$a1,.L0d9c4604
    div.d	$f9,$f6,$f9
    move	$a5,$zero
    move	$a4,$zero
    dmtc1	$zero,$f8
    b	.L0d9c474c
    move	$a7,$zero
    nop
.L0d9c4640:
    # Line 805
    lw	$a2,8($a6)
    addu	$a2,$a2,$a5
    lwc1	$f10,0($a2)
    mul.s	$f10,$f5,$f10
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f4
    trunc.w.d	$f10,$f10
    addiu	$t0,$t0,-1
    mfc1	$v1,$f10
    # Line 808
    addiu	$a3,$a3,8
    addiu	$a4,$a4,1
    # Line 805
    andi	$v1,$v1,0xfff
    bnez	$t0,.L0d9c4640
    sh	$v1,-8($a3)
.L0d9c4678:
    sra	$t0,$t3,0x2
    beqz	$t0,.L0d9c473c
    nop
    nop
    nop
    nop
.L0d9c4690:
    lw	$t0,8($a6)
    addu	$t0,$t0,$a5
    lwc1	$f14,0($t0)
    mul.s	$f14,$f5,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f4
    trunc.w.d	$f14,$f14
    mfc1	$a2,$f14
    andi	$a2,$a2,0xfff
    sh	$a2,0($a3)
    lw	$v1,8($a6)
    addu	$v1,$v1,$a5
    lwc1	$f13,0($v1)
    mul.s	$f13,$f5,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f4
    trunc.w.d	$f13,$f13
    mfc1	$v0,$f13
    andi	$v0,$v0,0xfff
    sh	$v0,8($a3)
    lw	$at,8($a6)
    addu	$at,$at,$a5
    lwc1	$f12,0($at)
    mul.s	$f12,$f5,$f12
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f4
    trunc.w.d	$f12,$f12
    mfc1	$t3,$f12
    andi	$t3,$t3,0xfff
    sh	$t3,16($a3)
    lw	$t2,8($a6)
    addu	$t2,$t2,$a5
    lwc1	$f11,0($t2)
    mul.s	$f11,$f5,$f11
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f4
    trunc.w.d	$f11,$f11
    # Line 808
    addiu	$a3,$a3,32
    # Line 805
    mfc1	$t1,$f11
    # Line 808
    addiu	$a4,$a4,4
    # Line 805
    andi	$t1,$t1,0xfff
    # Line 808
    bne	$a3,$a1,.L0d9c4690
    # Line 805
    sh	$t1,-8($a3)
.L0d9c473c:
    # Line 808
    lw	$a1,0($a6)
.L0d9c4740:
    # Line 796
    sltu	$t1,$a7,$a1
    beqz	$t1,.L0d9c4604
    addiu	$a5,$a5,4
.L0d9c474c:
    addiu	$a7,$a7,1
    # Line 799
    add.d	$f8,$f9,$f8
    add.d	$f15,$f8,$f4
    trunc.l.d	$f15,$f15
    dmfc1	$t2,$f15
    sll	$a3,$a4,0x2
    sll	$t1,$t2,0x0
    addu	$a3,$t9,$a3
    sltu	$t3,$a4,$t1
    addu	$a3,$a3,$a3
    beqz	$t3,.L0d9c4740
    subu	$t0,$t1,$a4
    move	$t3,$t0
    sll	$a1,$t2,0x2
    andi	$t0,$t0,0x3
    addu	$a1,$t9,$a1
    addu	$a3,$a0,$a3
    addu	$a1,$a1,$a1
    bnez	$t0,.L0d9c4640
    addu	$a1,$a0,$a1
    b	.L0d9c4678
    nop
.L0d9c47a4:
    # Line 878
    beq	$a1,$a4,.L0d9c47c8
    # Line 890
    addiu	$a6,$a3,5912
    li	$t1,2
    beq	$a1,$t1,.L0d9c4d84
    # Line 893
    li	$t2,3
    xor	$t2,$a1,$t2
    # Line 896
    addiu	$t3,$a3,5752
    move	$a6,$zero
    movz	$a6,$t3,$t2
.L0d9c47c8:
    # Line 902
    lw	$t8,12($a6)
    # Line 903
    mtc1	$t8,$f10
    # Line 902
    li	$at,4096
    # Line 903
    lw	$a1,76($a6)
    # Line 902
    li	$a5,256
    slti	$ra,$t8,257
    # Line 903
    mult	$t8,$a1
    # Line 902
    movz	$a5,$at,$ra
    # Line 903
    dsll32	$t9,$a5,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f9
    cvt.d.w	$f10,$f10
    mflo	$a3
    cvt.d.l	$f9,$f9
    # Line 902
    sd	$a5,16($sp)
    # Line 903
    beqz	$a3,.L0d9c44bc
    div.d	$f9,$f9,$f10
    li	$ra,6408
    addiu	$v0,$a5,-1
    li	$t9,6407
    dsll32	$v0,$v0,0x0
    li	$t8,6410
    dsrl32	$v0,$v0,0x0
    li	$t3,6406
    dmtc1	$v0,$f10
    ldc1	$f7,_lit8_40affe0000000000
    li	$t2,6409
    li	$t0,0x8049
    ldc1	$f4,_lit8_3fe0000000000000
    move	$a7,$zero
    dmtc1	$zero,$f8
    lwc1	$f5,_lit_457ff000
    move	$a4,$zero
    b	.L0d9c4878
    cvt.s.l	$f10,$f10
.L0d9c4854:
    # Line 962
    lw	$v1,12($a6)
    lw	$a1,76($a6)
    mult	$v1,$a1
    mflo	$a3
    nop
    nop
.L0d9c486c:
    # Line 908
    addu	$a7,$a1,$a7
    sltu	$a2,$a7,$a3
    beqz	$a2,.L0d9c44bc
.L0d9c4878:
    # Line 911
    dsll32	$at,$a4,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    cvt.s.l	$f6,$f6
    div.s	$f6,$f6,$f10
    # Line 914
    add.d	$f8,$f9,$f8
    add.d	$f11,$f8,$f4
    trunc.l.d	$f11,$f11
    dmfc1	$t1,$f11
    sll	$t1,$t1,0x0
    sltu	$a5,$a4,$t1
    beqz	$a5,.L0d9c486c
    # Line 911
    cvt.d.s	$f6,$f6
    # Line 914
    sll	$a5,$a7,0x2
    sll	$a3,$a4,0x3
    b	.L0d9c4970
    addu	$a3,$a3,$a0
    nop
.L0d9c48c0:
    # Line 920
    bne	$ra,$a1,.L0d9c4c4c
    nop
    # Line 952
    lw	$v1,4($a6)
    addu	$v1,$v1,$a5
    lwc1	$f14,0($v1)
    mul.s	$f14,$f5,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f4
    trunc.w.d	$f14,$f14
    mfc1	$v0,$f14
    andi	$v0,$v0,0xfff
    sh	$v0,0($a3)
    # Line 953
    lw	$at,4($a6)
    addu	$at,$at,$a5
    lwc1	$f13,4($at)
    mul.s	$f13,$f5,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f4
    trunc.w.d	$f13,$f13
    mfc1	$a2,$f13
    andi	$a2,$a2,0xfff
    sh	$a2,2($a3)
    # Line 954
    lw	$a1,4($a6)
    addu	$a1,$a1,$a5
    lwc1	$f12,8($a1)
    mul.s	$f12,$f5,$f12
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f4
    trunc.w.d	$f12,$f12
    mfc1	$v1,$f12
    andi	$v1,$v1,0xfff
    sh	$v1,4($a3)
    # Line 955
    lw	$v0,4($a6)
    addu	$v0,$v0,$a5
    lwc1	$f11,12($v0)
    mul.s	$f11,$f5,$f11
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f4
    trunc.w.d	$f11,$f11
    mfc1	$at,$f11
    andi	$at,$at,0xfff
    sh	$at,6($a3)
.L0d9c4968:
    # Line 962
    beq	$t1,$a4,.L0d9c4854
    addiu	$a3,$a3,8
.L0d9c4970:
    # Line 920
    lw	$a1,72($a6)
    beq	$t0,$a1,.L0d9c4a2c
    # Line 962
    addiu	$a4,$a4,1
    # Line 920
    beq	$t2,$a1,.L0d9c4ad0
    nop
    beq	$t3,$a1,.L0d9c4b60
    nop
    beq	$t8,$a1,.L0d9c4ba8
    nop
    bne	$t9,$a1,.L0d9c48c0
    nop
    # Line 946
    lw	$a2,4($a6)
    addu	$a2,$a2,$a5
    lwc1	$f17,0($a2)
    mul.s	$f17,$f5,$f17
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f4
    trunc.w.d	$f17,$f17
    mfc1	$a1,$f17
    andi	$a1,$a1,0xfff
    sh	$a1,0($a3)
    # Line 947
    lw	$v1,4($a6)
    addu	$v1,$v1,$a5
    lwc1	$f16,4($v1)
    mul.s	$f16,$f5,$f16
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f4
    trunc.w.d	$f16,$f16
    mfc1	$v0,$f16
    andi	$v0,$v0,0xfff
    sh	$v0,2($a3)
    # Line 948
    lw	$at,4($a6)
    addu	$at,$at,$a5
    lwc1	$f15,8($at)
    # Line 949
    madd.d	$f16,$f4,$f6,$f7
    # Line 948
    mul.s	$f15,$f5,$f15
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f4
    # Line 949
    trunc.w.d	$f16,$f16
    # Line 948
    trunc.w.d	$f15,$f15
    # Line 949
    mfc1	$a2,$f16
    # Line 948
    mfc1	$a1,$f15
    # Line 949
    andi	$a2,$a2,0xfff
    sh	$a2,6($a3)
    # Line 948
    andi	$a1,$a1,0xfff
    # Line 950
    b	.L0d9c4968
    # Line 948
    sh	$a1,4($a3)
.L0d9c4a2c:
    # Line 922
    lw	$v1,4($a6)
    addu	$v1,$v1,$a5
    lwc1	$f23,0($v1)
    mul.s	$f23,$f5,$f23
    cvt.d.s	$f23,$f23
    add.d	$f23,$f23,$f4
    trunc.w.d	$f23,$f23
    mfc1	$v0,$f23
    andi	$v0,$v0,0xfff
    sh	$v0,0($a3)
    # Line 923
    lw	$at,4($a6)
    addu	$at,$at,$a5
    lwc1	$f21,0($at)
    mul.s	$f21,$f5,$f21
    cvt.d.s	$f21,$f21
    add.d	$f21,$f21,$f4
    trunc.w.d	$f21,$f21
    mfc1	$a2,$f21
    andi	$a2,$a2,0xfff
    sh	$a2,2($a3)
    # Line 924
    lw	$a1,4($a6)
    addu	$a1,$a1,$a5
    lwc1	$f19,0($a1)
    mul.s	$f19,$f5,$f19
    cvt.d.s	$f19,$f19
    add.d	$f19,$f19,$f4
    trunc.w.d	$f19,$f19
    mfc1	$v1,$f19
    andi	$v1,$v1,0xfff
    sh	$v1,4($a3)
    # Line 925
    lw	$v0,4($a6)
    addu	$v0,$v0,$a5
    lwc1	$f18,0($v0)
    mul.s	$f18,$f5,$f18
    cvt.d.s	$f18,$f18
    add.d	$f18,$f18,$f4
    trunc.w.d	$f18,$f18
    mfc1	$at,$f18
    andi	$at,$at,0xfff
    b	.L0d9c4968
    sh	$at,6($a3)
.L0d9c4ad0:
    # Line 928
    lw	$a2,4($a6)
    addu	$a2,$a2,$a5
    lwc1	$f29,0($a2)
    mul.s	$f29,$f5,$f29
    cvt.d.s	$f29,$f29
    add.d	$f29,$f29,$f4
    trunc.w.d	$f29,$f29
    mfc1	$a1,$f29
    andi	$a1,$a1,0xfff
    sh	$a1,0($a3)
    # Line 929
    lw	$v1,4($a6)
    addu	$v1,$v1,$a5
    lwc1	$f27,0($v1)
    mul.s	$f27,$f5,$f27
    cvt.d.s	$f27,$f27
    add.d	$f27,$f27,$f4
    trunc.w.d	$f27,$f27
    mfc1	$v0,$f27
    andi	$v0,$v0,0xfff
    sh	$v0,2($a3)
    # Line 930
    lw	$at,4($a6)
    addu	$at,$at,$a5
    lwc1	$f25,0($at)
    # Line 931
    madd.d	$f27,$f4,$f6,$f7
    # Line 930
    mul.s	$f25,$f5,$f25
    cvt.d.s	$f25,$f25
    add.d	$f25,$f25,$f4
    # Line 931
    trunc.w.d	$f27,$f27
    # Line 930
    trunc.w.d	$f25,$f25
    # Line 931
    mfc1	$a2,$f27
    # Line 930
    mfc1	$a1,$f25
    # Line 931
    andi	$a2,$a2,0xfff
    sh	$a2,6($a3)
    # Line 930
    andi	$a1,$a1,0xfff
    # Line 932
    b	.L0d9c4968
    # Line 930
    sh	$a1,4($a3)
.L0d9c4b60:
    # Line 934
    madd.d	$f0,$f4,$f6,$f7
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    andi	$v1,$v1,0xfff
    # Line 936
    sh	$v1,4($a3)
    # Line 935
    sh	$v1,2($a3)
    # Line 934
    sh	$v1,0($a3)
    # Line 937
    lw	$v0,4($a6)
    addu	$v0,$v0,$a5
    lwc1	$f31,0($v0)
    mul.s	$f31,$f5,$f31
    cvt.d.s	$f31,$f31
    add.d	$f31,$f31,$f4
    trunc.w.d	$f31,$f31
    mfc1	$at,$f31
    andi	$at,$at,0xfff
    # Line 938
    b	.L0d9c4968
    # Line 937
    sh	$at,6($a3)
.L0d9c4ba8:
    # Line 940
    lw	$at,4($a6)
    addu	$at,$at,$a5
    lwc1	$f11,0($at)
    mul.s	$f11,$f5,$f11
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f4
    trunc.w.d	$f11,$f11
    mfc1	$a2,$f11
    andi	$a2,$a2,0xfff
    sh	$a2,0($a3)
    # Line 941
    lw	$a1,4($a6)
    addu	$a1,$a1,$a5
    lwc1	$f3,0($a1)
    mul.s	$f3,$f5,$f3
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    andi	$v1,$v1,0xfff
    sh	$v1,2($a3)
    # Line 942
    lw	$v0,4($a6)
    addu	$v0,$v0,$a5
    lwc1	$f2,0($v0)
    mul.s	$f2,$f5,$f2
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$at,$f2
    andi	$at,$at,0xfff
    sh	$at,4($a3)
    # Line 943
    lw	$a2,4($a6)
    addu	$a2,$a2,$a5
    lwc1	$f1,4($a2)
    mul.s	$f1,$f5,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xfff
    # Line 944
    b	.L0d9c4968
    # Line 943
    sh	$a1,6($a3)
.L0d9c4c4c:
    # Line 1034
    ld	$ra,24($sp)
    # Line 958
    li	$v0,1280
    # Line 1034
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c4c5c:
    # Line 821
    sw	$a4,12($sp)
    # Line 820
    addiu	$a2,$a3,1072
    sw	$a2,8($sp)
    # Line 819
    addiu	$v1,$a3,1060
    sw	$v1,4($sp)
    # Line 818
    addiu	$v0,$a3,1048
    # Line 821
    b	.L0d9c4c8c
    # Line 818
    sw	$v0,0($sp)
.L0d9c4c7c:
    # Line 827
    sw	$a5,12($sp)
    # Line 826
    sw	$a5,8($sp)
    # Line 825
    sw	$a5,4($sp)
    # Line 824
    sw	$a5,0($sp)
.L0d9c4c8c:
    # Line 827
    addiu	$t2,$a0,8
    ldc1	$f4,_lit8_3fe0000000000000
    addiu	$t8,$sp,0
    li	$t1,0x8000
    lwc1	$f5,_lit_457ff000
    b	.L0d9c4cb8
    addu	$t1,$a0,$t1
.L0d9c4ca8:
    # Line 850
    addiu	$a0,$a0,2
    addiu	$t8,$t8,4
    beq	$a0,$t2,.L0d9c44b4
    addiu	$t1,$t1,2
.L0d9c4cb8:
    # Line 827
    move	$a3,$a0
    lw	$a6,0($t8)
    b	.L0d9c4d10
    move	$a7,$zero
    nop
    nop
.L0d9c4cd0:
    # Line 861
    lw	$t3,0($a4)
    andi	$t3,$t3,0xfff
    sh	$t3,0($a3)
.L0d9c4cdc:
    # Line 855
    lw	$t3,0($a6)
    sltu	$t3,$a5,$t3
    lw	$a7,8($a6)
    movz	$a5,$zero,$t3
    sll	$a4,$a5,0x2
    beq	$a1,$t0,.L0d9c4d58
    addu	$a4,$a4,$a7
    # Line 861
    lw	$t9,0($a4)
    andi	$t9,$t9,0xfff
    sh	$t9,8($a3)
.L0d9c4d04:
    # Line 852
    addiu	$a3,$a3,16
    beq	$a3,$t1,.L0d9c4ca8
    addiu	$a7,$a5,1
.L0d9c4d10:
    # Line 855
    lw	$t9,0($a6)
    move	$a5,$a7
    sltu	$t9,$a7,$t9
    lw	$t3,8($a6)
    movz	$a5,$zero,$t9
    sll	$a4,$a5,0x2
    # Line 852
    addiu	$a5,$a5,1
    # Line 855
    bne	$a1,$t0,.L0d9c4cd0
    addu	$a4,$a4,$t3
    # Line 859
    lwc1	$f12,0($a4)
    mul.s	$f12,$f5,$f12
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f4
    trunc.w.d	$f12,$f12
    mfc1	$ra,$f12
    andi	$ra,$ra,0xfff
    b	.L0d9c4cdc
    sh	$ra,0($a3)
.L0d9c4d58:
    lwc1	$f13,0($a4)
    mul.s	$f13,$f5,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f4
    trunc.w.d	$f13,$f13
    mfc1	$at,$f13
    andi	$at,$at,0xfff
    b	.L0d9c4d04
    sh	$at,8($a3)
.L0d9c4d7c:
    # Line 887
    b	.L0d9c47c8
    addiu	$a6,$a3,5432
.L0d9c4d84:
    # Line 893
    b	.L0d9c47c8
    addiu	$a6,$a3,5592
.end ResizeLUTData

.late_rodata
jtbl_0dae930c:
    .word .L0d9c3cf0
    .word .L0d9c41a0
    .word .L0d9c418c
    .word .L0d9c4178
    .word .L0d9c3cdc
    .word .L0d9c4158
    .word .L0d9c3cdc
    .word .L0d9c3cdc
    .word .L0d9c4148
    .word .L0d9c4148

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_40affe0000000000:
    .word 0x40affe00, 0x00000000
_lit_457ff000:
    .word 0x457ff000

