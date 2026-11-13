# Source: ../ODYSSEY/ody_image_tiling.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_tiling.c
# Total Functions: 2

.text

# Function: __glOdysseyImageTilingCreate
# Declared: Line 44 (Source lines: 47-625)
# Address: 0x0d9c00d0 - 0x0d9c1720 (Size: 5712 bytes, Frame: 144)
.globl __glOdysseyImageTilingCreate
.ent __glOdysseyImageTilingCreate
__glOdysseyImageTilingCreate:
    # Line 47
    addiu	$sp,$sp,-528
    sd	$a2,392($sp)
    sdc1	$f22,400($sp)
    sd	$s6,248($sp)
    # Line 75
    lw	$v0,4112($zero)
    sd	$v0,312($sp)
    # Line 82
    lw	$v0,1796($v0)
    # Line 47
    move	$s6,$a1
    sdc1	$f20,408($sp)
    sd	$s4,232($sp)
    lui	$v1,0x14
    # Line 82
    andi	$at,$v0,0x20
    # Line 47
    move	$s4,$a0
    sd	$s0,456($sp)
    addiu	$v1,$v1,-31552
    sd	$gp,240($sp)
    # Line 82
    beqz	$at,.L0d9c012c
    # Line 47
    addu	$gp,$t9,$v1
    # Line 82
    lw	$a6,24($a1)
    lw	$v1,56($a6)
    li	$a0,1
    beq	$v1,$a0,.L0d9c0e3c
    nop
.L0d9c012c:
    move	$a6,$zero
.L0d9c0130:
    # Line 87
    dsll32	$a1,$v0,0xe
    bgez	$a1,.L0d9c0150
    nop
    lw	$a5,20($s6)
    lw	$a2,56($a5)
    li	$a3,1
    beq	$a2,$a3,.L0d9c0e50
    nop
.L0d9c0150:
    lwc1	$f6,12($s4)
    move	$a1,$zero
    lwc1	$f4,4($s4)
.L0d9c015c:
    lwc1	$f2,8($s4)
    lwc1	$f1,0($s4)
    # Line 95
    c.lt.s $f1,$f2
    # Line 87
    c.lt.s $f2,$f1
    # Line 95
    mov.s	$f0,$f1
    movf.s	$f1,$f2,$fcc2
    movf.s	$f0,$f2,$fcc3
    # Line 98
    sub.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 96
    mov.s	$f7,$f4
    c.lt.s $f4,$f6
    # Line 98
    mfc1	$v0,$f0
    # Line 96
    mov.s	$f5,$f4
    # Line 95
    c.lt.s	$f6,$f4
    movf.s	$f7,$f6,$fcc1
    # Line 98
    blez	$v0,.L0d9c0e18
    movf.s	$f5,$f6,$fcc0
    sub.s	$f2,$f5,$f7
    trunc.w.s	$f2,$f2
    mfc1	$s0,$f2
    sd	$a6,216($sp)
    sd	$a1,208($sp)
    blez	$s0,.L0d9c0e18
    sd	$v0,488($sp)
    # Line 103
    ld	$t9,312($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    sd	$ra,464($sp)
    jalr	$t9
    li	$a1,12
    ld	$a7,488($sp)
    beqz	$v0,.L0d9c1038
    sd	$v0,352($sp)
    # Line 107
    ld	$v0,352($sp)
    sw	$zero,8($v0)
    ld	$a6,312($sp)
    lui	$t0,0x1
    sw	$zero,4($v0)
    sw	$zero,0($v0)
    addu	$a6,$a6,$t0
    lbu	$at,7147($a6)
    beqz	$at,.L0d9c0e88
    ld	$a5,312($sp)
    # Line 170
    lbu	$t1,12($s6)
    beqz	$t1,.L0d9c0f58
    nop
    sd	$s1,472($sp)
    sd	$s7,480($sp)
    # Line 169
    lw	$t2,7708($a6)
    # Line 170
    lw	$t3,7704($a6)
    sd	$t3,344($sp)
    sd	$t2,272($sp)
.L0d9c022c:
    move	$a5,$a7
    move	$s7,$zero
    move	$s1,$zero
    sd	$zero,264($sp)
.L0d9c023c:
    # Line 182
    ld	$t9,264($sp)
.L0d9c0240:
    # Line 183
    ld	$ra,344($sp)
    # Line 182
    ld	$t8,272($sp)
    # Line 183
    subu	$ra,$ra,$s1
    sd	$ra,344($sp)
    # Line 182
    subu	$t8,$t8,$t9
    sd	$t8,272($sp)
    # Line 187
    ld	$v0,264($sp)
.L0d9c025c:
    ld	$at,272($sp)
    mtc1	$a5,$f12
    subu	$at,$at,$v0
    sd	$at,320($sp)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f13
    cvt.s.w	$f12,$f12
    cvt.s.l	$f13,$f13
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    div.s	$f12,$f12,$f13
    # Line 188
    ld	$a0,344($sp)
    subu	$a1,$s0,$s1
    mtc1	$a1,$f12
    subu	$a0,$a0,$s1
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f13
    # Line 187
    trunc.l.s	$f14,$f0
    # Line 188
    cvt.s.w	$f12,$f12
    cvt.s.l	$f13,$f13
    # lw $t9, -17032($gp) # &ceilf
    # Line 187
    dmfc1	$v1,$f14
    sll	$v1,$v1,0x0
    sd	$v1,296($sp)
    # Line 188
    jal	ceilf
    div.s	$f12,$f12,$f13
    trunc.l.s	$f13,$f0
    dmfc1	$t9,$f13
    # Line 193
    ld	$ra,296($sp)
    # Line 188
    sll	$t9,$t9,0x0
    # Line 193
    multu	$t9,$ra
    ld	$a0,312($sp)
    # Line 188
    sd	$t9,288($sp)
    # Line 193
    mflo	$t8
    lw	$t9,0($a0)
    sll	$s0,$t8,0x3
    addu	$s0,$s0,$t8
    sll	$s0,$s0,0x3
    sd	$t8,224($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,352($sp)
    bnez	$v0,.L0d9c0370
    sw	$v0,8($ra)
    # Line 196
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$at,352($sp)
    beqz	$at,.L0d9c0344
    ld	$s7,480($sp)
    # Line 198
    ld	$t9,312($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a1,352($sp)
    ld	$s7,480($sp)
.L0d9c0344:
    ld	$s1,472($sp)
    ld	$s0,456($sp)
    ldc1	$f20,408($sp)
    ldc1	$f22,400($sp)
    ld	$ra,464($sp)
    # Line 625
    ld	$gp,240($sp)
    # Line 199
    move	$v0,$zero
    # Line 625
    ld	$s4,232($sp)
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,528
.L0d9c0370:
    # Line 203
    # lw $t9, -16944($gp) # &memset
    move	$a0,$v0
    move	$a1,$zero
    sd	$s0,496($sp)
    jal	memset
    move	$a2,$s0
    ld	$ra,288($sp)
    beqz	$ra,.L0d9c0fe4
    nop
    sd	$zero,384($sp)
    sd	$zero,368($sp)
    sd	$zero,304($sp)
    sdc1	$f30,416($sp)
    sdc1	$f28,424($sp)
    sdc1	$f24,432($sp)
    sdc1	$f26,440($sp)
    sd	$s3,512($sp)
    sd	$s2,520($sp)
    sd	$s5,448($sp)
    ld	$s5,208($sp)
    ld	$v0,296($sp)
    ld	$ra,288($sp)
    sd	$s8,504($sp)
    sll	$v1,$v0,0x3
    ld	$s8,216($sp)
    addu	$v1,$v1,$v0
    addiu	$v0,$v0,-1
    addiu	$ra,$ra,-1
    sd	$ra,256($sp)
    sll	$at,$v0,0x3
    sll	$v1,$v1,0x3
    sd	$v1,280($sp)
    addu	$at,$at,$v0
    andi	$s8,$s8,0xff
    sd	$v1,376($sp)
    sll	$at,$at,0x3
    andi	$s5,$s5,0xff
    b	.L0d9c0460
    sd	$at,360($sp)
    nop
.L0d9c0410:
    # Line 206
    ld	$a2,376($sp)
.L0d9c0414:
    ld	$a1,280($sp)
    ld	$a0,368($sp)
    addu	$a2,$a2,$a1
    sd	$a2,376($sp)
    ld	$v1,360($sp)
    ld	$v0,288($sp)
    addu	$v1,$v1,$a1
    sd	$v1,360($sp)
    ld	$at,384($sp)
    ld	$v1,296($sp)
    addiu	$at,$at,1
    sd	$at,384($sp)
    sltu	$at,$at,$v0
    ld	$v0,304($sp)
    addu	$a0,$a0,$a1
    sd	$a0,368($sp)
    addu	$v0,$v0,$v1
    beqz	$at,.L0d9c0b14
    sd	$v0,304($sp)
.L0d9c0460:
    # Line 203
    ld	$a0,296($sp)
    beqz	$a0,.L0d9c0414
    # Line 206
    ld	$a2,376($sp)
    # Line 203
    ld	$at,264($sp)
    mtc1	$at,$f18
    ld	$v0,344($sp)
    ld	$ra,272($sp)
    mtc1	$at,$f14
    dsll32	$v0,$v0,0x0
    dsll32	$ra,$ra,0x0
    ld	$a2,384($sp)
    dsrl32	$ra,$ra,0x0
    dsrl32	$v0,$v0,0x0
    sltiu	$t9,$a2,1
    sd	$t9,328($sp)
    dmtc1	$v0,$f17
    ld	$a1,256($sp)
    cvt.s.w	$f18,$f18
    dmtc1	$ra,$f15
    ldc1	$f16,_lit8_3fe0000000000000
    cvt.d.w	$f14,$f14
    xor	$a1,$a1,$a2
    ld	$t8,304($sp)
    cvt.s.l	$f17,$f17
    sltiu	$a1,$a1,1
    sd	$a1,336($sp)
    cvt.s.l	$f15,$f15
    sll	$s2,$t8,0x3
    sdc1	$f18,160($sp)
    mul.d	$f14,$f14,$f16
    addu	$s2,$s2,$t8
    sdc1	$f17,168($sp)
    sll	$s2,$s2,0x3
    cvt.s.d	$f14,$f14
    sdc1	$f15,152($sp)
    move	$s3,$zero
    b	.L0d9c1710
    sdc1	$f14,200($sp)
    nop
    nop
.L0d9c0500:
    # Line 332
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    ldc1	$f12,200($sp)
    ldc1	$f15,192($sp)
    # Line 333
    # lw $t9, -16948($gp) # &floorf
    # Line 332
    sub.s	$f15,$f15,$f0
    sdc1	$f15,192($sp)
    # Line 333
    mov.s	$f12,$f26
    jal	floorf
    # Line 332
    swc1	$f15,52($s0)
    # Line 334
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f12,200($sp)
    # Line 333
    sub.s	$f20,$f20,$f0
    # Line 334
    jal	floorf
    # Line 333
    swc1	$f20,56($s0)
    # Line 334
    ldc1	$f16,184($sp)
    # Line 335
    # lw $t9, -16948($gp) # &floorf
    # Line 334
    sub.s	$f16,$f16,$f0
    sdc1	$f16,184($sp)
    # Line 335
    mov.s	$f12,$f26
    jal	floorf
    # Line 334
    swc1	$f16,60($s0)
    # Line 335
    sub.s	$f22,$f22,$f0
    swc1	$f22,64($s0)
.L0d9c0560:
    beqz	$s5,.L0d9c0578
.L0d9c0564:
    # Line 338
    ldc1	$f18,_lit8_4000000000000000
    ldc1	$f17,176($sp)
    mul.d	$f17,$f17,$f18
    trunc.w.d	$f17,$f17
    mfc1	$s1,$f17
.L0d9c0578:
    # Line 349
    lwc1	$f6,0($s4)
.L0d9c057c:
    add.s	$f6,$f6,$f24
    swc1	$f6,4($s0)
    # Line 350
    lwc1	$f5,4($s4)
    add.s	$f5,$f5,$f28
    swc1	$f5,8($s0)
    # Line 351
    lwc1	$f7,0($s4)
    # Line 352
    ldc1	$f6,144($sp)
    # Line 351
    add.s	$f7,$f7,$f30
    swc1	$f7,12($s0)
    # Line 352
    lwc1	$f4,4($s4)
    add.s	$f4,$f4,$f6
    swc1	$f4,16($s0)
    # Line 358
    lw	$a5,20($s6)
    # Line 396
    ldc1	$f11,192($sp)
    # Line 358
    lw	$v1,56($a5)
    # Line 387
    ld	$a3,392($sp)
    # Line 358
    li	$a0,1
    # Line 377
    ld	$t2,312($sp)
    # Line 368
    li	$a2,1
    # Line 208
    addiu	$s2,$s2,72
    # Line 358
    beq	$v1,$a0,.L0d9c0a10
    # Line 396
    ld	$a4,392($sp)
.L0d9c05d4:
    # Line 368
    lw	$a6,24($s6)
    lw	$a1,56($a6)
    beq	$a1,$a2,.L0d9c0a5c
    nop
.L0d9c05e4:
    # Line 387
    beqz	$a3,.L0d9c0644
    # Line 208
    ld	$t1,376($sp)
    # Line 396
    lw	$a7,0($a4)
    mtc1	$a7,$f10
    cvt.s.w	$f10,$f10
    add.s	$f10,$f10,$f11
    swc1	$f10,52($s0)
    # Line 397
    lw	$a6,4($a4)
    mtc1	$a6,$f9
    cvt.s.w	$f9,$f9
    add.s	$f9,$f9,$f20
    swc1	$f9,56($s0)
    # Line 398
    lw	$a5,0($a4)
    mtc1	$a5,$f8
    cvt.s.w	$f8,$f8
    ldc1	$f9,184($sp)
    add.s	$f8,$f8,$f9
    swc1	$f8,60($s0)
    # Line 399
    lw	$a4,4($a4)
    mtc1	$a4,$f7
    cvt.s.w	$f7,$f7
    add.s	$f7,$f7,$f22
    swc1	$f7,64($s0)
.L0d9c0640:
    # Line 208
    ld	$t1,376($sp)
.L0d9c0644:
    ld	$t0,320($sp)
    # Line 245
    li	$a5,1
    # Line 233
    li	$a6,1
    # Line 208
    beq	$s2,$t1,.L0d9c0410
    addu	$s3,$t0,$s3
    # Line 231
    ld	$ra,344($sp)
.L0d9c065c:
    ld	$t9,384($sp)
    subu	$ra,$ra,$s1
    multu	$t9,$ra
    # Line 220
    ld	$t2,336($sp)
    # Line 230
    dsll32	$ra,$s3,0x0
    # Line 219
    ld	$t3,360($sp)
    # Line 230
    dsrl32	$ra,$ra,0x0
    # Line 211
    ld	$s0,352($sp)
    # Line 230
    dmtc1	$ra,$f24
    # Line 233
    ldc1	$f4,168($sp)
    # Line 211
    lw	$s0,8($s0)
    # Line 231
    mflo	$t8
    # Line 219
    xor	$t3,$s2,$t3
    # Line 232
    ldc1	$f30,152($sp)
    # Line 230
    cvt.s.l	$f24,$f24
    # Line 231
    dsll32	$t8,$t8,0x0
    # Line 211
    addu	$s0,$s0,$s2
    # Line 217
    ld	$t9,368($sp)
    # Line 231
    dsrl32	$t8,$t8,0x0
    # Line 219
    sltiu	$t3,$t3,1
    sb	$t3,1($s0)
    # Line 231
    dmtc1	$t8,$f28
    # Line 220
    sb	$t2,2($s0)
    # Line 217
    xor	$t9,$s2,$t9
    sltiu	$t9,$t9,1
    sb	$t9,0($s0)
    # Line 232
    add.s	$f30,$f30,$f24
    # Line 230
    swc1	$f24,4($s0)
    # Line 231
    cvt.s.l	$f28,$f28
    # Line 232
    swc1	$f30,12($s0)
    # Line 218
    ld	$t8,328($sp)
    sb	$t8,3($s0)
    # Line 231
    swc1	$f28,8($s0)
    # Line 233
    add.s	$f4,$f4,$f28
    swc1	$f4,16($s0)
    lwc1	$f7,8($s4)
    lwc1	$f6,0($s4)
    # Line 245
    c.lt.s $f6,$f7
    mov.s	$f8,$f6
    # Line 233
    c.lt.s $f7,$f6
    # Line 245
    mov.s	$f5,$f6
    movf	$a5,$zero,$fcc5
    # Line 233
    movf	$a6,$zero,$fcc6
    movz.s	$f8,$f7,$a5
    movz.s	$f5,$f7,$a6
    # Line 245
    sub.s	$f5,$f5,$f8
    c.lt.s $f5,$f30
    # Line 268
    ldc1	$f21,_lit8_3fe0000000000000
    # Line 285
    ldc1	$f27,_lit8_3fe0000000000000
    # Line 268
    mtc1	$s1,$f11
    # Line 271
    ldc1	$f22,160($sp)
    # Line 245
    li	$a5,1
    bc1f .L0d9c073c
    # Line 247
    li	$a6,1
    mov.s	$f30,$f5
    # Line 245
    swc1	$f5,12($s0)
.L0d9c073c:
    lwc1	$f6,12($s4)
    lwc1	$f7,4($s4)
    # Line 247
    c.lt.s	$f7,$f6
    mov.s	$f8,$f7
    # Line 245
    c.lt.s $f6,$f7
    # Line 247
    mov.s	$f5,$f7
    movf	$a6,$zero,$fcc0
    # Line 245
    movf	$a5,$zero,$fcc1
    movz.s	$f8,$f6,$a6
    movz.s	$f5,$f6,$a5
    # Line 247
    sub.s	$f5,$f5,$f8
    c.lt.s $f5,$f4
    # Line 257
    mov.s	$f7,$f28
    # Line 256
    mov.s	$f6,$f24
    c.lt.s $f24,$f30
    # Line 247
    bc1f .L0d9c0788
    # Line 256
    mov.s	$f8,$f24
    mov.s	$f4,$f5
    # Line 247
    swc1	$f5,16($s0)
.L0d9c0788:
    # Line 265
    mtc1	$zero,$f10
    movf.s	$f8,$f30,$fcc2
    # Line 255
    c.lt.s $f30,$f24
    # Line 265
    swc1	$f10,40($s0)
    # Line 257
    mov.s	$f9,$f28
    c.lt.s $f28,$f4
    # Line 265
    swc1	$f10,36($s0)
    # Line 256
    c.lt.s $f4,$f28
    movf.s	$f6,$f30,$fcc5
    # Line 255
    swc1	$f10,24($s0)
    movf.s	$f9,$f4,$fcc3
    # Line 254
    swc1	$f10,20($s0)
    movf.s	$f7,$f4,$fcc4
    # Line 256
    sub.s	$f6,$f6,$f8
    # Line 265
    swc1	$f6,44($s0)
    # Line 256
    swc1	$f6,28($s0)
    # Line 257
    sub.s	$f7,$f7,$f9
    # Line 256
    mov.s	$f5,$f4
    # Line 265
    swc1	$f7,48($s0)
    # Line 257
    swc1	$f7,32($s0)
    # Line 271
    sub.s	$f22,$f6,$f22
    # Line 265
    beqz	$s5,.L0d9c0804
    mov.s	$f20,$f7
    # Line 268
    cvt.d.w	$f11,$f11
    # Line 267
    cvt.d.s	$f20,$f7
    # Line 268
    mul.d	$f11,$f11,$f21
    # Line 267
    mul.d	$f20,$f20,$f21
    # Line 268
    trunc.w.d	$f11,$f11
    # Line 267
    cvt.s.d	$f20,$f20
    swc1	$f20,48($s0)
    # Line 268
    mfc1	$s1,$f11
.L0d9c0804:
    # Line 272
    mtc1	$s1,$f12
    cvt.s.w	$f12,$f12
    # Line 285
    mtc1	$s1,$f26
    # Line 271
    swc1	$f22,44($s0)
    # Line 272
    sub.s	$f20,$f20,$f12
    beqz	$s7,.L0d9c0948
    swc1	$f20,48($s0)
    # Line 285
    cvt.d.w	$f26,$f26
    sdc1	$f26,176($sp)
    mul.d	$f26,$f26,$f27
    cvt.s.d	$f26,$f26
.L0d9c0830:
    # Line 298
    swc1	$f5,64($s0)
    swc1	$f30,60($s0)
    mov.s	$f22,$f5
    swc1	$f28,56($s0)
    mov.s	$f20,$f28
    # Line 303
    beqz	$s8,.L0d9c09f8
    # Line 298
    swc1	$f24,52($s0)
    # Line 303
    beqz	$s5,.L0d9c0aec
    # Line 305
    ldc1	$f21,_lit8_4000000000000000
.L0d9c0854:
    # Line 307
    beqz	$s8,.L0d9c0ac4
    # Line 309
    ldc1	$f21,_lit8_3fe0000000000000
.L0d9c085c:
    # Line 312
    # lw $t9, -16948($gp) # &floorf
    sdc1	$f5,144($sp)
    jal	floorf
    ldc1	$f12,200($sp)
    # Line 313
    # lw $t9, -16948($gp) # &floorf
    # Line 312
    add.s	$f27,$f0,$f24
    sdc1	$f27,192($sp)
    # Line 313
    mov.s	$f12,$f26
    jal	floorf
    # Line 312
    swc1	$f27,52($s0)
    # Line 314
    # lw $t9, -17032($gp) # &ceilf
    ldc1	$f12,200($sp)
    # Line 313
    add.s	$f20,$f0,$f20
    # Line 314
    jal	ceilf
    # Line 313
    swc1	$f20,56($s0)
    # Line 315
    # lw $t9, -17032($gp) # &ceilf
    # Line 314
    sub.s	$f29,$f30,$f0
    sdc1	$f29,184($sp)
    # Line 315
    mov.s	$f12,$f26
    jal	ceilf
    # Line 314
    swc1	$f29,60($s0)
    # Line 315
    sub.s	$f22,$f22,$f0
    bnez	$s7,.L0d9c0500
    swc1	$f22,64($s0)
    lbu	$at,0($s0)
    beqz	$at,.L0d9c08e0
    # Line 319
    nop	# was lw $t9, -16948($gp) # &floorf
    jal	floorf
    ldc1	$f12,200($sp)
    ldc1	$f31,192($sp)
    sub.s	$f31,$f31,$f0
    sdc1	$f31,192($sp)
    swc1	$f31,52($s0)
.L0d9c08e0:
    lbu	$v0,3($s0)
    beqz	$v0,.L0d9c08fc
    # Line 322
    nop	# was lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    sub.s	$f20,$f20,$f0
    swc1	$f20,56($s0)
.L0d9c08fc:
    lbu	$v1,1($s0)
    beqz	$v1,.L0d9c0920
    # Line 325
    nop	# was lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    ldc1	$f12,200($sp)
    ldc1	$f1,184($sp)
    add.s	$f1,$f0,$f1
    sdc1	$f1,184($sp)
    swc1	$f1,60($s0)
.L0d9c0920:
    lbu	$a0,2($s0)
    beqz	$a0,.L0d9c0560
    # Line 328
    nop	# was lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    mov.s	$f12,$f26
    add.s	$f22,$f0,$f22
    # Line 335
    bnez	$s5,.L0d9c0564
    # Line 328
    swc1	$f22,64($s0)
    b	.L0d9c057c
    # Line 349
    lwc1	$f6,0($s4)
.L0d9c0948:
    # Line 272
    lbu	$a1,0($s0)
    beqz	$a1,.L0d9c0974
    # Line 276
    mtc1	$s1,$f26
    # lw $t9, -16948($gp) # &floorf
    sdc1	$f5,144($sp)
    jal	floorf
    ldc1	$f12,200($sp)
    ldc1	$f5,144($sp)
    add.s	$f22,$f0,$f22
    swc1	$f22,44($s0)
    mtc1	$s1,$f26
.L0d9c0974:
    ldc1	$f27,_lit8_3fe0000000000000
    cvt.d.w	$f26,$f26
    lbu	$a2,3($s0)
    sdc1	$f26,176($sp)
    mul.d	$f26,$f26,$f27
    beqz	$a2,.L0d9c09ac
    cvt.s.d	$f26,$f26
    # Line 279
    # lw $t9, -16948($gp) # &floorf
    sdc1	$f5,144($sp)
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f5,144($sp)
    add.s	$f20,$f0,$f20
    swc1	$f20,48($s0)
.L0d9c09ac:
    lbu	$a3,1($s0)
    beqz	$a3,.L0d9c09d0
    # Line 282
    nop	# was lw $t9, -17032($gp) # &ceilf
    sdc1	$f5,144($sp)
    jal	ceilf
    ldc1	$f12,200($sp)
    ldc1	$f5,144($sp)
    add.s	$f27,$f0,$f22
    swc1	$f27,44($s0)
.L0d9c09d0:
    lbu	$a4,2($s0)
    beqz	$a4,.L0d9c0830
    # Line 285
    nop	# was lw $t9, -17032($gp) # &ceilf
    sdc1	$f5,144($sp)
    jal	ceilf
    mov.s	$f12,$f26
    ldc1	$f5,144($sp)
    add.s	$f29,$f0,$f20
    b	.L0d9c0830
    swc1	$f29,48($s0)
.L0d9c09f8:
    # Line 307
    bnez	$s5,.L0d9c0854
    nop
    b	.L0d9c085c
    sdc1	$f5,144($sp)
    nop
    nop
.L0d9c0a10:
    # Line 358
    lbu	$a6,9($a5)
    beqz	$a6,.L0d9c05d4
    nop
    # Line 359
    lw	$t0,36($a5)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f0
    cvt.s.l	$f0,$f0
    sub.s	$f0,$f0,$f5
    swc1	$f0,8($s0)
    # Line 360
    lw	$a7,20($s6)
    lw	$a7,36($a7)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f31
    cvt.s.l	$f31,$f31
    sub.s	$f31,$f31,$f4
    b	.L0d9c05d4
    swc1	$f31,16($s0)
.L0d9c0a5c:
    # Line 368
    lbu	$t1,8($a6)
    beqz	$t1,.L0d9c05e4
    nop
    # Line 376
    lw	$t3,3660($t2)
    # Line 377
    lw	$t8,3664($t2)
    # Line 376
    mtc1	$t3,$f3
    # Line 377
    mtc1	$t8,$f4
    # Line 381
    lwc1	$f5,748($t2)
    # Line 376
    cvt.s.w	$f3,$f3
    lwc1	$f1,368($t2)
    # Line 377
    cvt.s.w	$f4,$f4
    lwc1	$f2,372($t2)
    # Line 380
    lwc1	$f6,744($t2)
    # Line 376
    sub.s	$f1,$f1,$f3
    # Line 386
    ldc1	$f3,184($sp)
    # Line 377
    sub.s	$f2,$f2,$f4
    # Line 387
    nmsub.s	$f4,$f2,$f22,$f5
    # Line 385
    nmsub.s	$f2,$f2,$f20,$f5
    # Line 384
    ldc1	$f5,192($sp)
    # Line 386
    madd.s	$f3,$f1,$f3,$f6
    # Line 384
    madd.s	$f1,$f1,$f5,$f6
    # Line 387
    swc1	$f4,64($s0)
    # Line 385
    swc1	$f2,56($s0)
    # Line 386
    swc1	$f3,60($s0)
    # Line 387
    b	.L0d9c0640
    # Line 384
    swc1	$f1,52($s0)
.L0d9c0ac4:
    # Line 309
    cvt.d.s	$f22,$f5
    # Line 308
    cvt.d.s	$f20,$f28
    # Line 309
    mul.d	$f22,$f22,$f21
    # Line 308
    mul.d	$f20,$f20,$f21
    sdc1	$f5,144($sp)
    # Line 309
    cvt.s.d	$f22,$f22
    # Line 308
    cvt.s.d	$f20,$f20
    # Line 309
    swc1	$f22,64($s0)
    b	.L0d9c085c
    # Line 308
    swc1	$f20,56($s0)
.L0d9c0aec:
    # Line 305
    cvt.d.s	$f22,$f5
    # Line 304
    cvt.d.s	$f20,$f28
    # Line 305
    mul.d	$f22,$f22,$f21
    # Line 304
    mul.d	$f20,$f20,$f21
    sdc1	$f5,144($sp)
    # Line 305
    cvt.s.d	$f22,$f22
    # Line 304
    cvt.s.d	$f20,$f20
    # Line 305
    swc1	$f22,64($s0)
    b	.L0d9c085c
    # Line 304
    swc1	$f20,56($s0)
.L0d9c0b14:
    ld	$s2,520($sp)
    ld	$s3,512($sp)
    ld	$s8,504($sp)
    ld	$s5,448($sp)
    ldc1	$f26,440($sp)
    ldc1	$f24,432($sp)
    ldc1	$f28,424($sp)
    ldc1	$f30,416($sp)
    # Line 405
    ld	$v0,288($sp)
.L0d9c0b38:
    ld	$at,352($sp)
    # Line 406
    ld	$ra,296($sp)
    sw	$ra,4($at)
    # Line 405
    sw	$v0,0($at)
    # Line 447
    lw	$a6,24($s6)
    lw	$a7,56($a6)
    li	$t9,1
    beq	$a7,$t9,.L0d9c0f6c
    # Line 573
    move	$a5,$zero
.L0d9c0b5c:
    ld	$v1,224($sp)
    beqz	$v1,.L0d9c0c4c
    ld	$s0,456($sp)
    ld	$t0,224($sp)
    andi	$a1,$t0,0x1
    move	$a0,$zero
    beqz	$a1,.L0d9c0c3c
    andi	$a7,$a5,0xff
    # Line 582
    ld	$a5,352($sp)
    lw	$a5,8($a5)
    # Line 583
    beqz	$a7,.L0d9c0fdc
    # Line 582
    move	$s0,$a5
    # Line 583
    lwc1	$f23,52($a5)
    lwc1	$f27,60($a5)
    c.lt.s $f27,$f23
    mtc1	$zero,$f25
    sdc1	$f23,192($sp)
    movf.s	$f23,$f27,$fcc7
    c.lt.s $f23,$f25
    bc1t .L0d9c0c30
    sdc1	$f27,184($sp)
    lwc1	$f22,64($a5)
    lwc1	$f20,56($a5)
    mov.s	$f25,$f20
    c.lt.s $f22,$f20
    mtc1	$zero,$f27
    movf.s	$f25,$f22,$fcc1
    c.lt.s	$f25,$f27
    bc1t	.L0d9c0c34
    li	$a5,1
    lw	$a6,24($s6)
    lw	$t1,32($a6)
    ldc1	$f0,184($sp)
    dsll32	$t1,$t1,0x0
    ldc1	$f31,192($sp)
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f29
    c.lt.s $f31,$f0
    cvt.s.l	$f29,$f29
    movf.s	$f31,$f0,$fcc3
    c.lt.s $f29,$f31
    bc1t .L0d9c0c34
    li	$a5,1
    lw	$t2,36($a6)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f31
    cvt.s.l	$f31,$f31
    c.lt.s $f20,$f22
    mov.s	$f0,$f20
    movf.s	$f0,$f22,$fcc5
    c.lt.s $f31,$f0
    bc1f .L0d9c0fdc
.L0d9c0c30:
    li	$a5,1
.L0d9c0c34:
    # Line 581
    addiu	$a0,$a0,72
    # Line 583
    sb	$a5,68($s0)
.L0d9c0c3c:
    sra	$t3,$t0,0x1
    bnez	$t3,.L0d9c0d50
    ld	$a2,496($sp)
.L0d9c0c48:
    ld	$s0,456($sp)
.L0d9c0c4c:
    ld	$s1,472($sp)
    ld	$s7,480($sp)
    ldc1	$f22,400($sp)
    ldc1	$f20,408($sp)
    # Line 625
    ld	$v0,352($sp)
    ld	$ra,464($sp)
    ld	$gp,240($sp)
    ld	$s4,232($sp)
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,528
    nop
    nop
.L0d9c0c80:
    # Line 583
    li	$a5,1
.L0d9c0c84:
    sb	$a5,68($s0)
    # Line 582
    ld	$s0,352($sp)
    lw	$s0,8($s0)
    # Line 581
    addiu	$a0,$a0,72
    # Line 583
    beqz	$a7,.L0d9c0e10
    # Line 582
    addu	$s0,$s0,$a0
    # Line 583
    lwc1	$f0,52($s0)
    lwc1	$f2,60($s0)
    c.lt.s $f2,$f0
    mtc1	$zero,$f1
    sdc1	$f0,192($sp)
    movf.s	$f0,$f2,$fcc7
    c.lt.s $f0,$f1
    bc1t .L0d9c0d40
    sdc1	$f2,184($sp)
    lwc1	$f22,64($s0)
    lwc1	$f20,56($s0)
    mov.s	$f1,$f20
    c.lt.s $f22,$f20
    mtc1	$zero,$f2
    movf.s	$f1,$f22,$fcc1
    c.lt.s	$f1,$f2
    bc1t	.L0d9c0d44
    li	$a5,1
    lw	$a6,24($s6)
    lw	$t8,32($a6)
    ldc1	$f5,184($sp)
    dsll32	$t8,$t8,0x0
    ldc1	$f4,192($sp)
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f3
    c.lt.s $f4,$f5
    cvt.s.l	$f3,$f3
    movf.s	$f4,$f5,$fcc3
    c.lt.s $f3,$f4
    bc1t .L0d9c0d44
    li	$a5,1
    lw	$t9,36($a6)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f4
    cvt.s.l	$f4,$f4
    c.lt.s $f20,$f22
    mov.s	$f5,$f20
    movf.s	$f5,$f22,$fcc5
    c.lt.s $f4,$f5
    bc1f .L0d9c0e10
.L0d9c0d40:
    li	$a5,1
.L0d9c0d44:
    # Line 581
    addiu	$a0,$a0,72
    beq	$a0,$a2,.L0d9c0c48
    # Line 583
    sb	$a5,68($s0)
.L0d9c0d50:
    # Line 582
    ld	$s0,352($sp)
    lw	$s0,8($s0)
    # Line 583
    beqz	$a7,.L0d9c0e08
    # Line 582
    addu	$s0,$s0,$a0
    # Line 583
    lwc1	$f5,52($s0)
    lwc1	$f7,60($s0)
    c.lt.s $f7,$f5
    mtc1	$zero,$f6
    sdc1	$f5,192($sp)
    movf.s	$f5,$f7,$fcc7
    c.lt.s $f5,$f6
    bc1t .L0d9c0c80
    sdc1	$f7,184($sp)
    lwc1	$f22,64($s0)
    lwc1	$f20,56($s0)
    mov.s	$f6,$f20
    c.lt.s $f22,$f20
    mtc1	$zero,$f7
    movf.s	$f6,$f22,$fcc1
    c.lt.s	$f6,$f7
    bc1t	.L0d9c0c84
    li	$a5,1
    lw	$a6,24($s6)
    lw	$t8,32($a6)
    ldc1	$f10,184($sp)
    dsll32	$t8,$t8,0x0
    ldc1	$f9,192($sp)
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f8
    c.lt.s $f9,$f10
    cvt.s.l	$f8,$f8
    movf.s	$f9,$f10,$fcc3
    c.lt.s $f8,$f9
    bc1t .L0d9c0c84
    li	$a5,1
    lw	$t9,36($a6)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f9
    cvt.s.l	$f9,$f9
    c.lt.s $f20,$f22
    mov.s	$f10,$f20
    movf.s	$f10,$f22,$fcc5
    c.lt.s $f9,$f10
    bc1t .L0d9c0c84
    li	$a5,1
.L0d9c0e08:
    b	.L0d9c0c84
    move	$a5,$zero
.L0d9c0e10:
    b	.L0d9c0d44
    move	$a5,$zero
.L0d9c0e18:
    ld	$s0,456($sp)
    ldc1	$f20,408($sp)
    ldc1	$f22,400($sp)
    # Line 625
    ld	$gp,240($sp)
    # Line 99
    move	$v0,$zero
    # Line 625
    ld	$s4,232($sp)
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,528
.L0d9c0e3c:
    # Line 82
    lbu	$at,8($a6)
    beqz	$at,.L0d9c0fec
    nop
.L0d9c0e48:
    b	.L0d9c0130
    li	$a6,1
.L0d9c0e50:
    # Line 87
    lbu	$v0,10($a5)
    bnez	$v0,.L0d9c0150
    nop
    # Line 92
    lwc1	$f4,4($s4)
    lwc1	$f7,12($s4)
    sub.s	$f7,$f7,$f4
    ldc1	$f8,_lit8_4000000000000000
    cvt.d.s	$f7,$f7
    cvt.d.s	$f6,$f4
    madd.d	$f6,$f6,$f7,$f8
    cvt.s.d	$f6,$f6
    # Line 87
    li	$a1,1
    # Line 92
    b	.L0d9c015c
    swc1	$f6,12($s4)
.L0d9c0e88:
    # Line 107
    lw	$a5,764($a5)
    lw	$v1,0($a5)
    beqz	$v1,.L0d9c1000
    nop
    # Line 122
    lw	$t8,64($a5)
    sd	$s1,472($sp)
    # Line 123
    lw	$s1,68($a5)
    sd	$s7,480($sp)
    sd	$s5,448($sp)
    # Line 124
    ld	$s5,208($sp)
    lw	$s7,7124($a6)
    # Line 123
    addiu	$s1,$s1,-1
    # Line 124
    andi	$s5,$s5,0xff
    # Line 122
    addiu	$t8,$t8,-1
    # Line 124
    xori	$s7,$s7,0x8016
    # Line 122
    sd	$t8,264($sp)
    # Line 124
    beqz	$s5,.L0d9c106c
    sltiu	$s7,$s7,1
    # Line 128
    mtc1	$s0,$f9
    mtc1	$s1,$f8
    ldc1	$f10,_lit8_3fe0000000000000
    cvt.d.w	$f9,$f9
    cvt.d.w	$f8,$f8
    msub.d	$f8,$f8,$f9,$f10
    trunc.w.d	$f8,$f8
    mfc1	$t0,$f8
.L0d9c0ef0:
    # Line 132
    ld	$a5,264($sp)
    subu	$a5,$a7,$a5
    blez	$a5,.L0d9c1080
    nop
    blez	$t0,.L0d9c1080
    move	$t0,$s5
    # Line 134
    beqz	$t0,.L0d9c0f2c
    ld	$s5,448($sp)
    # Line 137
    mtc1	$s1,$f10
    ldc1	$f11,_lit8_4000000000000000
    cvt.d.w	$f10,$f10
    mul.d	$f10,$f10,$f11
    trunc.w.d	$f10,$f10
    move	$s5,$s5
    mfc1	$s1,$f10
.L0d9c0f2c:
    lbu	$t1,12($s6)
    beqz	$t1,.L0d9c1074
    nop
    # Line 169
    lw	$t2,7708($a6)
    # Line 170
    lw	$t3,7704($a6)
    sd	$t3,344($sp)
    sd	$t2,272($sp)
.L0d9c0f48:
    bnez	$s7,.L0d9c025c
    # Line 187
    ld	$v0,264($sp)
    b	.L0d9c0240
    # Line 182
    ld	$t9,264($sp)
.L0d9c0f58:
    # Line 153
    sd	$a7,272($sp)
    # Line 154
    sd	$s0,344($sp)
    sd	$s1,472($sp)
    b	.L0d9c022c
    sd	$s7,480($sp)
.L0d9c0f6c:
    # Line 447
    lbu	$ra,8($a6)
    beqz	$ra,.L0d9c0f8c
    # Line 573
    li	$v1,1
    # Line 447
    lw	$a5,20($s6)
    lw	$at,56($a5)
    move	$v0,$t9
    beq	$at,$v0,.L0d9c10b4
.L0d9c0f88:
    # Line 573
    li	$v1,1
.L0d9c0f8c:
    bne	$a7,$v1,.L0d9c0b5c
    move	$a5,$zero
    lbu	$a0,8($a6)
    beqz	$a0,.L0d9c0b5c
    move	$a5,$zero
    lw	$t1,16($s6)
    li	$a1,5
    beq	$t1,$a1,.L0d9c0fd4
    li	$a2,4
    beq	$t1,$a2,.L0d9c0fd4
    li	$a3,3
    beq	$t1,$a3,.L0d9c0fd4
    ld	$a4,312($sp)
    lw	$a4,1792($a4)
    lui	$a5,0x3000
    and	$a4,$a4,$a5
    bnez	$a4,.L0d9c0b5c
    move	$a5,$zero
.L0d9c0fd4:
    b	.L0d9c0b5c
    li	$a5,1
.L0d9c0fdc:
    b	.L0d9c0c34
    # Line 583
    move	$a5,$zero
.L0d9c0fe4:
    b	.L0d9c0b38
    # Line 405
    ld	$v0,288($sp)
.L0d9c0fec:
    # Line 82
    lbu	$a5,10($a6)
    bnez	$a5,.L0d9c0e48
    nop
    b	.L0d9c0130
    move	$a6,$zero
.L0d9c1000:
    # Line 183
    lbu	$t0,12($s6)
    beqz	$t0,.L0d9c130c
    nop
    sd	$s1,472($sp)
    sd	$s7,480($sp)
    # Line 169
    lw	$t1,7708($a6)
    # Line 170
    lw	$t2,7704($a6)
    sd	$t2,344($sp)
    sd	$t1,272($sp)
.L0d9c1024:
    move	$a5,$a7
    move	$s7,$zero
    move	$s1,$zero
    b	.L0d9c023c
    sd	$zero,264($sp)
.L0d9c1038:
    # Line 105
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,456($sp)
    ldc1	$f20,408($sp)
    ldc1	$f22,400($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,464($sp)
    # Line 625
    ld	$gp,240($sp)
    # Line 107
    move	$v0,$zero
    # Line 625
    ld	$s4,232($sp)
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,528
.L0d9c106c:
    b	.L0d9c0ef0
    # Line 130
    subu	$t0,$s0,$s1
.L0d9c1074:
    # Line 153
    sd	$a7,272($sp)
    # Line 154
    b	.L0d9c0f48
    sd	$s0,344($sp)
.L0d9c1080:
    ld	$s7,480($sp)
    ld	$s1,472($sp)
    ld	$s0,456($sp)
    ld	$s5,448($sp)
    ldc1	$f20,408($sp)
    ldc1	$f22,400($sp)
    ld	$ra,464($sp)
    # Line 625
    ld	$gp,240($sp)
    # Line 134
    move	$v0,$zero
    # Line 625
    ld	$s4,232($sp)
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,528
.L0d9c10b4:
    # Line 447
    lbu	$t9,9($a5)
    beqz	$t9,.L0d9c0f8c
    # Line 573
    li	$v1,1
    # Line 447
    ld	$ra,312($sp)
    lbu	$ra,3536($ra)
    beqz	$ra,.L0d9c0f8c
    # Line 573
    li	$v1,1
    # Line 447
    lw	$t1,16($s6)
    li	$at,5
    beq	$t1,$at,.L0d9c117c
    sd	$s8,504($sp)
    li	$v0,4
    beq	$t1,$v0,.L0d9c117c
    sd	$s8,504($sp)
    ld	$t1,312($sp)
    lw	$t2,1236($t1)
    lw	$t1,1888($t1)
    beq	$t2,$t1,.L0d9c117c
    sd	$s8,504($sp)
    ld	$t3,312($sp)
    lbu	$t3,3222($t3)
    beqz	$t3,.L0d9c1120
    ld	$t9,312($sp)
    li	$t8,1032
    beq	$t1,$t8,.L0d9c117c
    sd	$s8,504($sp)
    ld	$t9,312($sp)
.L0d9c1120:
    lbu	$t9,3223($t9)
    beqz	$t9,.L0d9c0f8c
    # Line 573
    li	$v1,1
    # Line 447
    li	$ra,1028
    beq	$t1,$ra,.L0d9c1164
.L0d9c1134:
    li	$at,1029
    bne	$t1,$at,.L0d9c0f8c
    # Line 573
    li	$v1,1
    # Line 447
    li	$v0,1026
    beq	$t2,$v0,.L0d9c117c
    sd	$s8,504($sp)
    li	$v1,1027
    bne	$t2,$v1,.L0d9c0f8c
    # Line 573
    li	$v1,1
    sd	$s8,504($sp)
    b	.L0d9c117c
    sd	$s5,448($sp)
.L0d9c1164:
    # Line 447
    li	$a0,1024
    beq	$t2,$a0,.L0d9c117c
    sd	$s8,504($sp)
    li	$a1,1025
    bne	$t2,$a1,.L0d9c1134
    sd	$s8,504($sp)
.L0d9c117c:
    # Line 480
    ld	$a2,312($sp)
    lw	$at,3664($a2)
    # Line 479
    lw	$ra,3660($a2)
    # Line 480
    mtc1	$at,$f10
    # Line 479
    mtc1	$ra,$f7
    sd	$s5,448($sp)
    # Line 485
    ld	$s8,216($sp)
    # Line 480
    cvt.s.w	$f10,$f10
    lwc1	$f9,372($a2)
    # Line 479
    cvt.s.w	$f7,$f7
    lwc1	$f6,368($a2)
    # Line 485
    ld	$s5,208($sp)
    andi	$s8,$s8,0xff
    # Line 484
    lwc1	$f4,748($a2)
    # Line 480
    sub.s	$f9,$f9,$f10
    # Line 485
    andi	$s5,$s5,0xff
    # Line 483
    lwc1	$f5,744($a2)
    # Line 485
    beqz	$s8,.L0d9c14e4
    # Line 479
    sub.s	$f6,$f6,$f7
    # Line 485
    beqz	$s5,.L0d9c16d8
.L0d9c11cc:
    move	$v0,$s8
    ld	$s5,448($sp)
    # Line 488
    beqz	$v0,.L0d9c16f4
    ld	$s8,504($sp)
.L0d9c11dc:
    # Line 498
    lwc1	$f12,8($s4)
    # Line 496
    lwc1	$f11,0($s4)
    # Line 513
    c.lt.s $f11,$f12
    li	$a1,1
    mov.s	$f13,$f12
    c.lt.s	$f12,$f11
    li	$a0,1
    movf	$a1,$zero,$fcc1
    movf	$a0,$zero,$fcc0
    movn.s	$f13,$f11,$a1
    movz.s	$f11,$f12,$a0
    sub.s	$f10,$f11,$f13
    madd.s	$f10,$f6,$f5,$f10
    # Line 497
    lw	$v1,36($a5)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f8
    # Line 513
    c.lt.s $f6,$f10
    # Line 497
    cvt.s.l	$f8,$f8
    # Line 513
    movt.s	$f10,$f6,$fcc7
    # Line 499
    lwc1	$f7,12($s4)
    # Line 497
    lwc1	$f12,4($s4)
    # Line 513
    c.le.s $f13,$f10
    # Line 499
    sub.s	$f7,$f8,$f7
    # Line 513
    bc1f .L0d9c12a4
    # Line 497
    sub.s	$f8,$f8,$f12
    # Line 513
    c.le.s $f10,$f11
    bc1f .L0d9c12a4
    nop
    # Line 517
    c.lt.s $f7,$f8
    mov.s	$f6,$f7
    li	$a3,1
    c.lt.s $f8,$f7
    li	$a2,1
    movf	$a3,$zero,$fcc6
    movf	$a2,$zero,$fcc5
    movn.s	$f6,$f8,$a3
    movz.s	$f8,$f7,$a2
    sub.s	$f5,$f6,$f8
    nmsub.s	$f5,$f9,$f4,$f5
    c.lt.s $f9,$f5
    movt.s	$f5,$f9,$fcc4
    c.le.s $f8,$f5
    bc1f .L0d9c1320
    move	$s4,$zero
    c.le.s $f5,$f6
    bc1f .L0d9c1320
    move	$s4,$zero
    b	.L0d9c1320
    li	$s4,1
.L0d9c12a4:
    c.lt.s $f7,$f8
    mov.s	$f6,$f7
    li	$a5,1
    c.lt.s $f8,$f7
    li	$a4,1
    movf	$a5,$zero,$fcc3
    movf	$a4,$zero,$fcc2
    movn.s	$f6,$f8,$a5
    movz.s	$f8,$f7,$a4
    sub.s	$f5,$f6,$f8
    nmsub.s	$f5,$f9,$f4,$f5
    c.lt.s $f9,$f5
    movt.s	$f5,$f9,$fcc1
    c.le.s	$f8,$f5
    bc1f	.L0d9c12f4
    move	$s4,$zero
    c.le.s $f5,$f6
    bc1f .L0d9c12f4
    move	$s4,$zero
    li	$s4,1
.L0d9c12f4:
    # Line 531
    andi	$a6,$s4,0xff
.L0d9c12f8:
    beqz	$a6,.L0d9c14f4
    ld	$s0,288($sp)
.L0d9c1300:
    # Line 557
    lw	$a6,24($s6)
    b	.L0d9c0f88
    lw	$a7,56($a6)
.L0d9c130c:
    # Line 153
    sd	$a7,272($sp)
    # Line 154
    sd	$s0,344($sp)
    sd	$s1,472($sp)
    b	.L0d9c1024
    sd	$s7,480($sp)
.L0d9c1320:
    # Line 517
    ld	$t2,288($sp)
    beqz	$t2,.L0d9c12f8
    # Line 531
    andi	$a6,$s4,0xff
    # Line 517
    sd	$zero,368($sp)
    sd	$zero,384($sp)
    sdc1	$f30,416($sp)
    ld	$t8,296($sp)
    sdc1	$f28,424($sp)
    sdc1	$f24,432($sp)
    srl	$s1,$t8,0x1
    sdc1	$f26,440($sp)
    sll	$s0,$t8,0x3
    subu	$at,$t8,$s1
    sd	$s3,512($sp)
    addu	$s0,$s0,$t8
    sll	$ra,$at,0x3
    sd	$s2,520($sp)
    sll	$s0,$s0,0x3
    addu	$ra,$ra,$at
    sd	$s0,280($sp)
    sll	$ra,$ra,0x3
.L0d9c1374:
    beqz	$s1,.L0d9c1498
    # Line 531
    ld	$a4,368($sp)
    # Line 517
    ld	$s2,368($sp)
    move	$t8,$s0
    # Line 539
    move	$a6,$zero
.L0d9c1388:
    # Line 535
    ld	$t9,352($sp)
    # Line 539
    li	$a5,18
    li	$a7,0x8
    # Line 535
    lw	$t9,8($t9)
    addiu	$t1,$sp,4
    # Line 539
    addiu	$t0,$sp,0
    # Line 535
    addu	$t3,$t9,$s2
    # Line 536
    addu	$t9,$t9,$t8
    # Line 532
    addiu	$t8,$t8,-72
    addiu	$s2,$s2,72
    addiu	$t2,$t3,4
    # Line 536
    addiu	$t9,$t9,-72
    nop
    nop
.L0d9c13c0:
    # Line 539
    addu	$at,$a6,$t2
    lw	$at,0($at)
    addu	$v1,$a6,$t3
    addiu	$a5,$a5,-2
    lw	$v1,0($v1)
    addu	$a0,$a6,$t0
    addu	$v0,$a6,$t1
    sw	$v1,0($a0)
    addu	$a6,$a6,$a7
    bgtz	$a5,.L0d9c13c0
    sw	$at,0($v0)
    # Line 540
    move	$t2,$t9
    move	$a5,$zero
    addiu	$t1,$t9,4
    addiu	$t0,$t3,4
    li	$a7,0x8
    li	$a6,18
    nop
    nop
    nop
.L0d9c1410:
    addu	$v1,$a5,$t2
    addu	$a0,$a5,$t3
    lw	$v1,0($v1)
    addiu	$a6,$a6,-2
    addu	$v0,$a5,$t1
    sw	$v1,0($a0)
    addu	$v1,$a5,$t0
    lw	$v0,0($v0)
    addu	$a5,$a5,$a7
    bgtz	$a6,.L0d9c1410
    sw	$v0,0($v1)
    addiu	$a7,$sp,4
    addiu	$t2,$t9,4
    li	$t0,0x8
    # Line 541
    li	$a6,18
    move	$a5,$zero
    move	$t3,$t9
    addiu	$t1,$sp,0
    nop
    nop
.L0d9c1460:
    addu	$a0,$a5,$a7
    lw	$a0,0($a0)
    addu	$a2,$a5,$t1
    addiu	$a6,$a6,-2
    lw	$a2,0($a2)
    addu	$a3,$a5,$t3
    addu	$a1,$a5,$t2
    sw	$a2,0($a3)
    addu	$a5,$a5,$t0
    bgtz	$a6,.L0d9c1460
    sw	$a0,0($a1)
    # Line 532
    bne	$t8,$ra,.L0d9c1388
    # Line 539
    move	$a6,$zero
    # Line 531
    ld	$a4,368($sp)
.L0d9c1498:
    ld	$a1,280($sp)
    ld	$a3,384($sp)
    ld	$a2,288($sp)
    addiu	$a3,$a3,1
    sd	$a3,384($sp)
    addu	$s0,$s0,$a1
    addu	$a4,$a4,$a1
    sd	$a4,368($sp)
    bne	$a2,$a3,.L0d9c1374
    addu	$ra,$ra,$a1
    ld	$s2,520($sp)
    ld	$s3,512($sp)
    ld	$s8,504($sp)
    ld	$s5,448($sp)
    ldc1	$f26,440($sp)
    ldc1	$f24,432($sp)
    ldc1	$f28,424($sp)
    b	.L0d9c12f4
    ldc1	$f30,416($sp)
.L0d9c14e4:
    # Line 488
    bnez	$s5,.L0d9c11cc
    ld	$s5,448($sp)
    b	.L0d9c11dc
    ld	$s8,504($sp)
.L0d9c14f4:
    # Line 531
    srl	$s0,$s0,0x1
    beqz	$s0,.L0d9c1300
    ld	$t9,288($sp)
    ld	$v1,296($sp)
    addiu	$t9,$t9,-1
    multu	$t9,$v1
    sd	$zero,368($sp)
    sd	$zero,384($sp)
    sdc1	$f30,416($sp)
    sdc1	$f28,424($sp)
    sll	$at,$v1,0x3
    sdc1	$f24,432($sp)
    addu	$at,$at,$v1
    sdc1	$f26,440($sp)
    sll	$at,$at,0x3
    negu	$t8,$v1
    sd	$s3,512($sp)
    sll	$s1,$t8,0x3
    mflo	$v0
    sd	$s2,520($sp)
    addu	$s1,$s1,$t8
    sll	$ra,$v0,0x3
    sd	$at,280($sp)
    sll	$s1,$s1,0x3
    addu	$ra,$ra,$v0
    sd	$at,376($sp)
    sll	$ra,$ra,0x3
.L0d9c1560:
    ld	$at,296($sp)
    beqz	$at,.L0d9c1688
    # Line 557
    ld	$a3,368($sp)
    # Line 531
    ld	$s2,368($sp)
    move	$t8,$ra
    li	$a7,0x8
    # Line 565
    li	$a5,18
    move	$a6,$zero
.L0d9c1580:
    # Line 561
    ld	$t2,352($sp)
    # Line 565
    addiu	$t3,$sp,72
    # Line 561
    lw	$t2,8($t2)
    addiu	$t1,$t3,4
    # Line 562
    addu	$t9,$t2,$t8
    # Line 561
    addu	$t2,$t2,$s2
    # Line 558
    addiu	$s2,$s2,72
    addiu	$t0,$t2,4
.L0d9c15a0:
    # Line 565
    addu	$at,$a6,$t0
    lw	$at,0($at)
    addu	$v1,$a6,$t2
    addiu	$a5,$a5,-2
    lw	$v1,0($v1)
    addu	$a0,$a6,$t3
    addu	$v0,$a6,$t1
    sw	$v1,0($a0)
    addu	$a6,$a6,$a7
    bgtz	$a5,.L0d9c15a0
    sw	$at,0($v0)
    # Line 566
    move	$t3,$t9
    move	$a6,$zero
    addiu	$t0,$t9,4
    addiu	$a7,$t2,4
    li	$t1,0x8
    li	$a5,18
    nop
    nop
    nop
.L0d9c15f0:
    addu	$v1,$a6,$t3
    addu	$a0,$a6,$t2
    lw	$v1,0($v1)
    addiu	$a5,$a5,-2
    addu	$v0,$a6,$t0
    sw	$v1,0($a0)
    addu	$v1,$a6,$a7
    lw	$v0,0($v0)
    addu	$a6,$a6,$t1
    bgtz	$a5,.L0d9c15f0
    sw	$v0,0($v1)
    addiu	$t0,$t9,4
    li	$a7,0x8
    # Line 567
    li	$a6,18
    move	$a5,$zero
    addiu	$t1,$sp,72
    move	$t3,$t9
    addiu	$t2,$t1,4
    nop
    nop
.L0d9c1640:
    addu	$a0,$a5,$t2
    lw	$a0,0($a0)
    addu	$a2,$a5,$t1
    addiu	$a6,$a6,-2
    lw	$a2,0($a2)
    addu	$a3,$a5,$t3
    addu	$a1,$a5,$t0
    sw	$a2,0($a3)
    addu	$a5,$a5,$a7
    bgtz	$a6,.L0d9c1640
    sw	$a0,0($a1)
    # Line 558
    ld	$a1,376($sp)
    addiu	$t8,$t8,72
    # Line 565
    li	$a5,18
    move	$a6,$zero
    # Line 558
    bne	$s2,$a1,.L0d9c1580
    li	$a7,0x8
    # Line 557
    ld	$a3,368($sp)
.L0d9c1688:
    ld	$a4,280($sp)
    ld	$a2,384($sp)
    ld	$a5,376($sp)
    addiu	$a2,$a2,1
    sd	$a2,384($sp)
    addu	$ra,$ra,$s1
    addu	$a5,$a5,$a4
    sd	$a5,376($sp)
    addu	$a3,$a3,$a4
    bne	$s0,$a2,.L0d9c1560
    sd	$a3,368($sp)
    ld	$s2,520($sp)
    ld	$s3,512($sp)
    ld	$s8,504($sp)
    ld	$s5,448($sp)
    ldc1	$f26,440($sp)
    ldc1	$f24,432($sp)
    ldc1	$f28,424($sp)
    b	.L0d9c1300
    ldc1	$f30,416($sp)
.L0d9c16d8:
    # Line 486
    ldc1	$f7,_lit8_4000000000000000
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f7
    ld	$s8,504($sp)
    ld	$s5,448($sp)
    b	.L0d9c11dc
    cvt.s.d	$f4,$f4
.L0d9c16f4:
    # Line 489
    ldc1	$f7,_lit8_3fe0000000000000
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f7
    move	$s8,$s8
    b	.L0d9c11dc
    cvt.s.d	$f4,$f4
    nop
.L0d9c1710:
    # Line 245
    li	$a5,1
    # Line 233
    li	$a6,1
    b	.L0d9c065c
    # Line 231
    ld	$ra,344($sp)
.end __glOdysseyImageTilingCreate

# Function: __glOdysseyImageTilingFree
# Declared: Line 635 (Source lines: 636-654)
# Address: 0x0d9c1720 - 0x0d9c1794 (Size: 116 bytes, Frame: 32)
.globl __glOdysseyImageTilingFree
.ent __glOdysseyImageTilingFree
__glOdysseyImageTilingFree:
    # Line 638
    lw	$v0,4112($zero)
    # Line 636
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    lui	$at,0x13
    # Line 638
    sd	$v0,8($sp)
    # Line 636
    addiu	$at,$at,28272
    sd	$gp,16($sp)
    # Line 638
    bnez	$a0,.L0d9c1750
    # Line 636
    addu	$gp,$t9,$at
.L0d9c1744:
    # Line 654
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c1750:
    # Line 643
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,0($sp)
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a1,8($a1)
    # Line 646
    ld	$a1,0($sp)
    # Line 652
    ld	$a0,8($sp)
    # Line 648
    sw	$zero,8($a1)
    # Line 647
    sw	$zero,4($a1)
    # Line 646
    sw	$zero,0($a1)
    # Line 652
    lw	$t9,12($a0)
    jalr	$t9
    nop
    b	.L0d9c1744
    ld	$ra,24($sp)
.end __glOdysseyImageTilingFree

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000

