# Source: ../ODYSSEY/ody_image_chain.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_chain.c
# Total Functions: 68

.text

# Function: __glOdysseyImageChainCreate
# Declared: Line 362 (Source lines: 366-637)
# Address: 0x0d98eb90 - 0x0d98f068 (Size: 1240 bytes, Frame: 128)
.globl __glOdysseyImageChainCreate
.ent __glOdysseyImageChainCreate
__glOdysseyImageChainCreate:
    # Line 366
    addiu	$sp,$sp,-128
    sd	$a3,80($sp)
    sd	$a2,88($sp)
    sd	$s0,56($sp)
    sd	$s1,104($sp)
    lui	$at,0x17
    # Line 374
    lw	$s1,4112($zero)
    sd	$gp,112($sp)
    # Line 366
    addiu	$at,$at,-26112
    addu	$gp,$t9,$at
    # Line 384
    lw	$t9,0($s1)
    # Line 366
    sd	$a1,72($sp)
    # Line 384
    li	$a1,28
    # Line 366
    sd	$a0,64($sp)
    sd	$ra,96($sp)
    # Line 384
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0d98ed3c
    move	$s0,$v0
    # Line 394
    sw	$zero,16($v0)
    sw	$zero,12($v0)
    sw	$zero,8($v0)
    # Line 402
    ld	$a1,80($sp)
    # Line 394
    sw	$zero,4($v0)
    sw	$zero,0($v0)
    # Line 402
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 395
    ld	$at,72($sp)
    # Line 394
    ld	$ra,64($sp)
    # Line 402
    addiu	$t9,$t9,-2416
    # Line 394
    sw	$ra,24($v0)
    # Line 402
    move	$a0,$v0
    bal __glOdysseyImageChainFree
    # Line 395
    sw	$at,20($v0)
    # Line 405
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,2992
    move	$a0,$s0
    bal __glOdysseyImageChainFree
    ld	$a1,88($sp)
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d98ef7c
    # Line 407
    nop	# was lw $t9, -31416($gp) # &__glOdysseyImageChainFree
    # Line 418
    lw	$v0,4($s0)
    beqz	$v0,.L0d98eccc
    move	$a2,$zero
    move	$a0,$zero
    b	.L0d98ec90
    lui	$a3,0x1
    nop
.L0d98ec50:
    # Line 432
    andi	$a2,$a2,0x1
    sll	$at,$a2,0x2
    subu	$at,$at,$a2
    sll	$at,$at,0x2
    addu	$at,$s1,$at
    addu	$at,$a3,$at
    lw	$a4,-22796($at)
    sw	$a4,16($a1)
    lw	$v1,-22792($at)
    sw	$v1,20($a1)
    lw	$at,-22788($at)
    # Line 433
    addiu	$a2,$a2,1
    # Line 432
    sw	$at,24($a1)
.L0d98ec84:
    # Line 437
    lw	$v0,76($v0)
    beqz	$v0,.L0d98eccc
    nop
.L0d98ec90:
    # Line 418
    lw	$a1,68($v0)
    lbu	$v1,0($a1)
    beqz	$v1,.L0d98ec84
    nop
    lw	$a4,56($a1)
    bnez	$a4,.L0d98ec50
    nop
    # Line 426
    andi	$a0,$a0,0x1
    sll	$a5,$a0,0x2
    addu	$a5,$s1,$a5
    addu	$a5,$a3,$a5
    lw	$a5,-22772($a5)
    # Line 427
    addiu	$a0,$a0,1
    b	.L0d98ec84
    # Line 426
    sw	$a5,44($a1)
.L0d98eccc:
    # Line 437
    lw	$a6,0($s0)
    sltiu	$a6,$a6,2
    bnez	$a6,.L0d98ecfc
    li	$a1,1
    # Line 446
    sb	$a1,12($s0)
.L0d98ece0:
    # Line 637
    ld	$ra,96($sp)
.L0d98ece4:
    ld	$gp,112($sp)
    move	$v0,$s0
    ld	$s0,56($sp)
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d98ecfc:
    # Line 454
    lw	$v0,4($s0)
    lw	$a0,0($v0)
    beqz	$a0,.L0d98edc4
    nop
    # Line 571
    beq	$a0,$a1,.L0d98ef24
    # Line 601
    li	$a7,19
    beq	$a0,$a7,.L0d98ed64
    # Line 618
    li	$t0,9
    beq	$a0,$t0,.L0d98edb0
    nop
    # Line 628
    lw	$t1,8($v0)
    andi	$t1,$t1,0x10
    beqz	$t1,.L0d98ece4
    # Line 637
    ld	$ra,96($sp)
    # Line 632
    b	.L0d98ece0
    sb	$a1,12($s0)
.L0d98ed3c:
    # Line 387
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 637
    ld	$ra,96($sp)
    ld	$gp,112($sp)
    # Line 388
    move	$v0,$zero
    # Line 637
    ld	$s0,56($sp)
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d98ed64:
    # Line 611
    lwc1	$f0,24($v0)
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    bc1f	.L0d98eda8
    nop
    lwc1	$f1,40($v0)
    c.eq.s $f1,$f4
    bc1f .L0d98eda8
    nop
    lbu	$t2,62($v0)
    beq	$a1,$t2,.L0d98eda8
    nop
    lw	$t3,72($v0)
    lw	$t3,12($t3)
    li	$t8,5121
    beq	$t3,$t8,.L0d98f044
    nop
.L0d98eda8:
    b	.L0d98ece0
    # Line 618
    sb	$a1,12($s0)
.L0d98edb0:
    lbu	$t8,61($v0)
    beqz	$t8,.L0d98ece4
    # Line 637
    ld	$ra,96($sp)
    b	.L0d98ece0
    # Line 628
    sb	$a1,12($s0)
.L0d98edc4:
    sd	$v0,48($sp)
    # Line 479
    ld	$a0,48($sp)
    # lw $t9, -31192($gp) # &__glOdysseyImageCalcXferWriteParams
    lw	$a2,72($a0)
    lw	$a0,68($a0)
    lw	$a2,52($a2)
    lw	$a1,12($a0)
    addiu	$a3,$sp,0
    jal	__glOdysseyImageCalcXferWriteParams
    lw	$a0,8($a0)
    # Line 489
    ld	$v0,48($sp)
    lw	$a2,68($v0)
    lw	$a2,8($a2)
    li	$a3,6400
    beq	$a3,$a2,.L0d98efcc
    li	$a0,1
.L0d98ee04:
    # Line 498
    beq	$a3,$a2,.L0d98f008
    lbu	$a1,4($sp)
.L0d98ee0c:
    # Line 507
    lw	$a4,31600($s1)
    andi	$a4,$a4,0x80
    beqz	$a4,.L0d98f018
    nop
    # Line 517
    beq	$a0,$a1,.L0d98f02c
    # Line 519
    li	$a2,4354
.L0d98ee24:
    # Line 527
    lw	$a5,68($v0)
    lw	$a5,8($a5)
    beq	$a3,$a5,.L0d98eeec
    # Line 545
    lbu	$a1,2($sp)
    # Line 527
    lui	$a6,0x1
    ori	$a6,$a6,0x1e20
    lwc1	$f2,24($v0)
    addu	$a6,$a6,$s1
    lwc1	$f4,0($a6)
    abs.s	$f2,$f2
    c.lt.s $f4,$f2
    bc1t .L0d98eee4
    nop
    lwc1	$f3,28($v0)
    abs.s	$f3,$f3
    c.lt.s $f4,$f3
    bc1t .L0d98eee4
    nop
    lwc1	$f5,32($v0)
    abs.s	$f5,$f5
    c.lt.s $f4,$f5
    bc1t .L0d98eee4
    nop
    lwc1	$f6,36($v0)
    abs.s	$f6,$f6
    c.lt.s $f4,$f6
    bc1t .L0d98eee4
    nop
    lwc1	$f7,40($v0)
    abs.s	$f7,$f7
    c.lt.s $f4,$f7
    bc1t .L0d98eee4
    nop
    lwc1	$f8,44($v0)
    abs.s	$f8,$f8
    c.lt.s $f4,$f8
    bc1t .L0d98eee4
    nop
    lwc1	$f9,48($v0)
    abs.s	$f9,$f9
    c.lt.s	$f4,$f9
    bc1t	.L0d98eee4
    nop
    lwc1	$f10,52($v0)
    abs.s	$f10,$f10
    c.lt.s $f4,$f10
    bc1f .L0d98eeec
    # Line 545
    lbu	$a1,2($sp)
.L0d98eee4:
    # Line 532
    sb	$zero,0($sp)
    # Line 545
    lbu	$a1,2($sp)
.L0d98eeec:
    li	$a7,3
    beq	$a1,$a7,.L0d98efa0
    li	$t0,4
    beq	$a1,$t0,.L0d98efa0
    nop
    # Line 556
    lw	$a1,1928($s1)
.L0d98ef04:
    # Line 548
    lbu	$t1,0($sp)
.L0d98ef08:
    xor	$t2,$a2,$a1
    sltiu	$t2,$t2,1
    movn	$t1,$zero,$t2
    bnez	$t1,.L0d98ece4
    # Line 637
    ld	$ra,96($sp)
    b	.L0d98ece0
    # Line 571
    sb	$a0,12($s0)
.L0d98ef24:
    # Line 591
    lw	$a1,72($v0)
    lw	$a1,40($a1)
    # Line 595
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    # Line 591
    li	$a2,1
    # Line 592
    sb	$zero,32($sp)
    # Line 591
    xor	$a1,$a1,$a2
    sltiu	$a1,$a1,1
    sb	$a1,33($sp)
    # Line 595
    lw	$a0,72($v0)
    lw	$a2,68($v0)
    lw	$a1,12($a0)
    addiu	$a3,$sp,24
    jal	__glOdysseyImageCalcXferReadParams
    lw	$a0,8($a0)
    # Line 599
    lbu	$a2,24($sp)
    beqz	$a2,.L0d98ef74
    li	$a4,1
    lw	$a3,1148($s1)
    beqz	$a3,.L0d98ece0
    li	$a4,1
.L0d98ef74:
    b	.L0d98ece0
    # Line 601
    sb	$a4,12($s0)
.L0d98ef7c:
    # Line 407
    bal __glOdysseyImageChainFree
    move	$a0,$s0
    # Line 637
    ld	$ra,96($sp)
    ld	$gp,112($sp)
    # Line 408
    move	$v0,$zero
    # Line 637
    ld	$s0,56($sp)
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d98efa0:
    # Line 548
    lw	$a1,1928($s1)
    li	$a5,4352
    bne	$a1,$a5,.L0d98ef08
    lbu	$t1,0($sp)
    lw	$a6,8($v0)
    andi	$a6,$a6,0x1
    beqz	$a6,.L0d98ef08
    lbu	$t1,0($sp)
    # Line 556
    sb	$zero,0($sp)
    b	.L0d98ef04
    lw	$a1,1928($s1)
.L0d98efcc:
    # Line 489
    lwc1	$f11,24($v0)
    dmtc1	$zero,$f4
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f4
    bc1f .L0d98eff8
    nop
    lwc1	$f12,40($v0)
    cvt.d.s	$f12,$f12
    c.eq.d $f12,$f4
    bc1t .L0d98ee04
    nop
.L0d98eff8:
    # Line 491
    sb	$zero,0($sp)
    lw	$a2,68($v0)
    b	.L0d98ee04
    lw	$a2,8($a2)
.L0d98f008:
    # Line 498
    bne	$a0,$a1,.L0d98ee0c
    nop
    # Line 500
    b	.L0d98ee0c
    sb	$zero,0($sp)
.L0d98f018:
    # Line 507
    beq	$a0,$a1,.L0d98f028
    nop
    # Line 517
    b	.L0d98ee24
    li	$a2,4354
.L0d98f028:
    # Line 509
    sb	$zero,0($sp)
.L0d98f02c:
    # Line 517
    lw	$a4,1924($s1)
    li	$a2,4354
    bne	$a2,$a4,.L0d98ee24
    nop
    # Line 519
    b	.L0d98ee24
    sb	$zero,0($sp)
.L0d98f044:
    # Line 611
    lw	$a5,1796($s1)
    dsll32	$a5,$a5,0xe
    bltz	$a5,.L0d98eda8
    nop
    lw	$a6,1148($s1)
    bnez	$a6,.L0d98eda8
    nop
    b	.L0d98ece4
    # Line 637
    ld	$ra,96($sp)
.end __glOdysseyImageChainCreate

# Function: __glOdysseyImageChainFree
# Declared: Line 647 (Source lines: 648-671)
# Address: 0x0d98f070 - 0x0d98f104 (Size: 148 bytes, Frame: 48)
.globl __glOdysseyImageChainFree
.ent __glOdysseyImageChainFree
__glOdysseyImageChainFree:
    # Line 649
    lw	$a3,4112($zero)
    # Line 648
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s1,0($sp)
    lui	$at,0x17
    move	$s1,$a0
    sd	$s0,32($sp)
    addiu	$at,$at,-27360
    sd	$gp,8($sp)
    # Line 649
    beqz	$a0,.L0d98f0ec
    # Line 648
    addu	$gp,$t9,$at
    # Line 656
    lw	$s0,4($a0)
    beqz	$s0,.L0d98f0d0
    nop
    sd	$a3,16($sp)
    nop
.L0d98f0b0:
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3248
    # Line 659
    sw	$s0,4($s1)
    move	$a0,$s0
    # Line 661
    bal __glOdysseyImageChainFree
    # Line 660
    lw	$s0,76($s0)
    # Line 661
    bnez	$s0,.L0d98f0b0
    ld	$a3,16($sp)
.L0d98f0d0:
    # Line 666
    sw	$zero,0($s1)
    # Line 665
    sw	$zero,4($s1)
    sw	$zero,8($s1)
    # Line 669
    lw	$t9,12($a3)
    move	$a1,$s1
    jal	sub_0d990000
    move	$a0,$a3
.L0d98f0ec:
    ld	$ra,24($sp)
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    # Line 671
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseyImageChainFree

# Function: ImageChainOpCreate
# Declared: Line 682 (Source lines: 683-700)
# Address: 0x0d98f110 - 0x0d98f1b0 (Size: 160 bytes, Frame: 16)
.ent ImageChainOpCreate
ImageChainOpCreate:
    # Line 687
    lw	$a0,4112($zero)
    # Line 690
    lw	$t9,0($a0)
    # Line 683
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 690
    jalr	$t9
    li	$a1,84
    # Line 700
    ld	$ra,0($sp)
    # Line 690
    beqz	$v0,.L0d98f194
    move	$a2,$v0
    # Line 698
    sdl	$zero,0($v0)
    sdr	$zero,7($v0)
    sdl	$zero,8($v0)
    sdr	$zero,15($v0)
    sdl	$zero,16($v0)
    sdr	$zero,23($v0)
    sdl	$zero,24($v0)
    sdr	$zero,31($v0)
    sdl	$zero,32($v0)
    sdr	$zero,39($v0)
    sdl	$zero,40($v0)
    sdr	$zero,47($v0)
    sdl	$zero,48($v0)
    sdr	$zero,55($v0)
    sdl	$zero,56($v0)
    sdr	$zero,63($v0)
    sdl	$zero,64($v0)
    sdr	$zero,71($v0)
    sdl	$zero,72($v0)
    sdr	$zero,79($v0)
    swl	$zero,80($v0)
    swr	$zero,83($v0)
    # Line 700
    jr	$ra
    addiu	$sp,$sp,16
.L0d98f194:
    # Line 693
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 700
    ld	$ra,0($sp)
    # Line 694
    move	$v0,$zero
    # Line 700
    jr	$ra
    addiu	$sp,$sp,16
.end ImageChainOpCreate

# Function: ImageChainOpAllocateFilters
# Declared: Line 704 (Source lines: 705-748)
# Address: 0x0d98f1b0 - 0x0d98f348 (Size: 408 bytes, Frame: 48)
.ent ImageChainOpAllocateFilters
ImageChainOpAllocateFilters:
    # Line 706
    lw	$at,4112($zero)
    # Line 705
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    # Line 706
    beqz	$a1,.L0d98f338
    sd	$at,0($sp)
    # Line 713
    ld	$a2,8($sp)
    ld	$t9,0($sp)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    move	$a0,$t9
    lw	$t9,0($t9)
    sll	$a1,$a1,0x3
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    sd	$ra,24($sp)
    subu	$a1,$a1,$a2
    jalr	$t9
    sll	$a1,$a1,0x5
    bnez	$v0,.L0d98f244
    sw	$v0,20($s1)
    # Line 716
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    beqz	$s1,.L0d98f32c
    ld	$ra,24($sp)
    # Line 719
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    sd	$s2,40($sp)
    sd	$s0,32($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$s0,32($sp)
    b	.L0d98f328
    ld	$s2,40($sp)
.L0d98f244:
    # Line 728
    ld	$t8,8($sp)
    sd	$s2,40($sp)
    addiu	$s2,$t8,-1
    sd	$s0,32($sp)
    sll	$s0,$s2,0x2
    subu	$s0,$s0,$s2
    sll	$s0,$s0,0x3
    subu	$s0,$s0,$s2
    sll	$s0,$s0,0x2
    subu	$s0,$s0,$s2
    # Line 724
    sw	$t8,16($s1)
    # Line 728
    li	$s2,-2912
    sll	$s0,$s0,0x5
    nop
    # Line 730
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
.L0d98f280:
    lw	$a0,20($s1)
    jal	__glOdysseyInitLerpTree
    addu	$a0,$a0,$s0
    # Line 731
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s1)
    addu	$a0,$a0,$s0
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,720
    # Line 732
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s1)
    addu	$a0,$a0,$s0
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,1440
    # Line 733
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s1)
    addu	$a0,$a0,$s0
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,2160
    # Line 736
    lw	$a5,20($s1)
    addu	$a5,$a5,$s0
    sw	$zero,2880($a5)
    # Line 737
    lw	$a4,20($s1)
    addu	$a4,$a4,$s0
    sw	$zero,2884($a4)
    # Line 738
    lw	$a3,20($s1)
    addu	$a3,$a3,$s0
    sw	$zero,2888($a3)
    # Line 739
    lw	$a2,20($s1)
    addu	$a2,$a2,$s0
    sw	$zero,2892($a2)
    # Line 740
    lw	$a1,20($s1)
    # Line 742
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 740
    addu	$a1,$a1,$s0
    sw	$zero,2896($a1)
    # Line 742
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s0
    # Line 728
    addiu	$s0,$s0,-2912
    bne	$s2,$s0,.L0d98f280
    # Line 730
    nop	# was lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    ld	$s0,32($sp)
    ld	$s2,40($sp)
.L0d98f328:
    ld	$ra,24($sp)
.L0d98f32c:
    ld	$s1,16($sp)
    # Line 748
    jr	$ra
    addiu	$sp,$sp,48
.L0d98f338:
    # Line 746
    sw	$zero,20($a0)
    # Line 748
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ImageChainOpAllocateFilters

# Function: ImageChainOpFree
# Declared: Line 756 (Source lines: 757-775)
# Address: 0x0d98f350 - 0x0d98f3e0 (Size: 144 bytes, Frame: 32)
.ent ImageChainOpFree
ImageChainOpFree:
    # Line 757
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 759
    lw	$s1,4112($zero)
    # Line 757
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 759
    beqz	$a0,.L0d98f3cc
    sd	$ra,16($sp)
    lw	$a1,20($a0)
    beqz	$a1,.L0d98f384
    nop
    # Line 763
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
.L0d98f384:
    lw	$a1,68($s0)
    beqz	$a1,.L0d98f3ac
    # Line 770
    nop	# was lw $t9, -16944($gp) # &memset
    # Line 763
    lbu	$at,0($a1)
    beqz	$at,.L0d98f3ac
    # Line 770
    nop	# was lw $t9, -16944($gp) # &memset
    # Line 767
    lw	$t9,12($s1)
    jal	memset
    move	$a0,$s1
    # Line 770
    # lw $t9, -16944($gp) # &memset
.L0d98f3ac:
    move	$a0,$s0
    move	$a1,$zero
    jal	memset
    li	$a2,84
    # Line 773
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
.L0d98f3cc:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 775
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainOpFree

# Function: ImageChainOpCreateScratchImage
# Declared: Line 778 (Source lines: 779-814)
# Address: 0x0d98f3e0 - 0x0d98f4f0 (Size: 272 bytes, Frame: 32)
.ent ImageChainOpCreateScratchImage
ImageChainOpCreateScratchImage:
    # Line 779
    addiu	$sp,$sp,-32
    sd	$a0,8($sp)
    # Line 782
    lw	$a0,4112($zero)
    # Line 784
    lw	$t9,0($a0)
    sd	$s0,0($sp)
    sd	$ra,24($sp)
    li	$a1,60
    jalr	$t9
    # Line 782
    sd	$a0,16($sp)
    # Line 795
    ld	$a2,16($sp)
    # Line 784
    beqz	$v0,.L0d98f48c
    move	$s0,$v0
    # Line 795
    lui	$a4,0x1
    # Line 793
    sw	$zero,8($v0)
    sw	$zero,12($v0)
    sw	$zero,16($v0)
    sw	$zero,20($v0)
    sw	$zero,24($v0)
    sw	$zero,28($v0)
    sw	$zero,32($v0)
    sw	$zero,36($v0)
    sw	$zero,40($v0)
    sw	$zero,44($v0)
    sw	$zero,48($v0)
    sw	$zero,52($v0)
    # Line 794
    sw	$zero,4($v0)
    # Line 793
    sw	$zero,0($v0)
    ld	$at,8($sp)
    # Line 795
    li	$a3,1
    sb	$a3,0($v0)
    addu	$a2,$a2,$a4
    # Line 793
    sw	$at,56($v0)
    # Line 795
    beq	$at,$a3,.L0d98f4ac
    lw	$v0,7708($a2)
    # Line 809
    sw	$v0,16($s0)
    # Line 810
    lw	$a5,7704($a2)
    # Line 811
    sw	$a3,24($s0)
    # Line 810
    sw	$a5,20($s0)
.L0d98f478:
    # Line 814
    ld	$ra,24($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98f48c:
    # Line 787
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 814
    ld	$ra,24($sp)
    # Line 788
    move	$v0,$zero
    # Line 814
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98f4ac:
    # Line 802
    sw	$v0,32($s0)
    # Line 803
    lw	$a7,7704($a2)
    sw	$a7,36($s0)
    # Line 804
    lw	$a6,7708($a2)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f12
    cvt.s.l	$f12,$f12
    lwc1	$f13,_lit_3d800000
    # lw $t9, -17036($gp) # &ceil
    mul.s	$f12,$f12,$f13
    jal	ceil
    cvt.d.s	$f12,$f12
    trunc.l.d	$f13,$f0
    dmfc1	$t0,$f13
    b	.L0d98f478
    sw	$t0,28($s0)
.end ImageChainOpCreateScratchImage

# Function: ImageChainAddOp
# Declared: Line 833 (Source lines: 835-938)
# Address: 0x0d98f4f0 - 0x0d98f684 (Size: 404 bytes, Frame: 32)
.ent ImageChainAddOp
ImageChainAddOp:
    # Line 835
    lw	$at,4($a0)
    addiu	$sp,$sp,-32
    # Line 848
    move	$v0,$a1
    # Line 835
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,0($sp)
    bnez	$at,.L0d98f544
    move	$s0,$a1
    # Line 846
    sw	$zero,80($a1)
    # Line 845
    sw	$zero,76($a1)
    # Line 848
    sw	$a1,8($a0)
    # Line 847
    sw	$a1,4($a0)
    # Line 894
    bne	$a1,$a1,.L0d98f594
    # Line 847
    nop
.L0d98f528:
    # Line 894
    bne	$v0,$s0,.L0d98f618
    # Line 923
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 899
    lw	$v1,20($s1)
    sw	$v1,68($s0)
    # Line 900
    lw	$v0,24($s1)
    b	.L0d98f5e8
    sw	$v0,72($s0)
.L0d98f544:
    # Line 848
    beqz	$a2,.L0d98f604
    # Line 860
    li	$a0,1
    beq	$a3,$a0,.L0d98f648
    nop
    # Line 877
    lw	$a0,76($a2)
    beqz	$a0,.L0d98f568
    nop
    # Line 882
    sw	$a1,80($a0)
    lw	$a0,76($a2)
.L0d98f568:
    # Line 884
    sw	$a2,80($s0)
    # Line 883
    sw	$a0,76($s0)
    # Line 885
    sw	$s0,76($a2)
    lw	$v0,8($s1)
    bne	$v0,$a2,.L0d98f588
    nop
    # Line 889
    move	$v0,$s0
    sw	$s0,8($s1)
.L0d98f588:
    lw	$a0,4($s1)
.L0d98f58c:
    # Line 894
    beq	$a0,$s0,.L0d98f528
    nop
.L0d98f594:
    # Line 900
    bne	$v0,$s0,.L0d98f614
    sd	$ra,16($sp)
    # Line 908
    # lw $t9, -32728($gp) # &sub_0d990000
    lw	$a0,80($s0)
    addiu	$t9,$t9,-3104
    bal __glOdysseyImageChainFree
    lw	$a0,12($a0)
    beqz	$v0,.L0d98f604
    ld	$ra,16($sp)
    # Line 913
    lw	$v1,24($s1)
    # Line 914
    sw	$v0,68($s0)
    # Line 915
    lw	$at,80($s0)
    # Line 913
    sw	$v1,72($s0)
    # Line 915
    b	.L0d98f5e8
    sw	$v0,72($at)
.L0d98f5d0:
    # Line 931
    lw	$a0,80($s0)
    lw	$a0,72($a0)
    sw	$a0,68($s0)
.L0d98f5dc:
    # Line 934
    lw	$a1,76($s0)
    # Line 933
    sw	$v0,72($s0)
    # Line 934
    sw	$v0,68($a1)
.L0d98f5e8:
    # Line 937
    lw	$a2,0($s1)
    # Line 938
    ld	$s0,0($sp)
    # Line 937
    addiu	$a2,$a2,1
    sw	$a2,0($s1)
    # Line 938
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98f604:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98f614:
    # Line 923
    # lw $t9, -32728($gp) # &sub_0d990000
.L0d98f618:
    addiu	$t9,$t9,-3104
    sd	$ra,16($sp)
    bal __glOdysseyImageChainFree
    lw	$a0,12($s0)
    beqz	$v0,.L0d98f604
    ld	$ra,16($sp)
    # Line 925
    lw	$at,4($s1)
    bne	$at,$s0,.L0d98f5d0
    nop
    # Line 929
    lw	$v1,20($s1)
    b	.L0d98f5dc
    sw	$v1,68($s0)
.L0d98f648:
    # Line 860
    lw	$v0,80($a2)
    beqz	$v0,.L0d98f65c
    nop
    # Line 870
    sw	$a1,76($v0)
    lw	$v0,80($a2)
.L0d98f65c:
    # Line 872
    sw	$a2,76($s0)
    # Line 871
    sw	$v0,80($s0)
    # Line 873
    sw	$s0,80($a2)
    lw	$a0,4($s1)
    bne	$a0,$a2,.L0d98f67c
    nop
    # Line 877
    move	$a0,$s0
    sw	$s0,4($s1)
.L0d98f67c:
    b	.L0d98f58c
    lw	$v0,8($s1)
.end ImageChainAddOp

# Function: ImageChainDetermineChainType
# Declared: Line 941 (Source lines: 942-1061)
# Address: 0x0d98f690 - 0x0d98f810 (Size: 384 bytes, Frame: 0)
.ent ImageChainDetermineChainType
ImageChainDetermineChainType:
    # Line 942
    lw	$a3,20($a0)
    lw	$at,56($a3)
    beqz	$at,.L0d98f704
    # Line 962
    li	$t1,6400
    # Line 987
    lw	$a4,24($a0)
    lw	$v0,56($a4)
    beqz	$v0,.L0d98f738
    # Line 1029
    li	$v1,6145
    beq	$a1,$v1,.L0d98f7bc
    li	$a2,6146
    # Line 1051
    li	$a6,2
    # Line 1029
    beq	$a1,$a2,.L0d98f7c8
    # Line 1036
    li	$a5,4
    # Line 1041
    lw	$a1,52($a3)
    li	$a5,16
    beq	$a1,$a5,.L0d98f6e8
    li	$a3,17
    beq	$a1,$a3,.L0d98f6e8
    nop
    # Line 1056
    li	$a4,1
    # Line 1061
    jr	$ra
    # Line 1056
    sw	$a4,16($a0)
.L0d98f6e8:
    # Line 1045
    lw	$a1,52($a4)
    beq	$a1,$a5,.L0d98f77c
    li	$a5,17
    beq	$a1,$a5,.L0d98f780
    # Line 1048
    li	$v1,3
    # Line 1061
    jr	$ra
    # Line 1051
    sw	$a6,16($a0)
.L0d98f704:
    # Line 962
    lw	$a1,8($a3)
    # Line 973
    li	$a2,17
    # Line 962
    li	$a7,6402
    li	$t0,6401
    # Line 973
    li	$a3,16
    # Line 962
    beq	$a1,$a7,.L0d98f7dc
    # Line 985
    li	$t2,1
    # Line 962
    beq	$a1,$t0,.L0d98f7f0
    nop
    beq	$a1,$t1,.L0d98f79c
    nop
    # Line 1061
    jr	$ra
    # Line 985
    sw	$t2,16($a0)
.L0d98f738:
    # Line 1018
    li	$v0,1
    # Line 995
    lw	$a5,8($a4)
    # Line 1007
    li	$at,17
    # Line 995
    li	$t3,6402
    # Line 1007
    li	$t9,16
    # Line 995
    li	$t8,6401
    beq	$a5,$t3,.L0d98f7fc
    # Line 1014
    li	$a2,2
    # Line 995
    beq	$a5,$t8,.L0d98f808
    # Line 1002
    li	$t3,4
    # Line 1007
    lw	$a1,52($a3)
    beq	$a1,$t9,.L0d98f788
    nop
    beq	$a1,$at,.L0d98f78c
    # Line 1011
    li	$a1,6400
    # Line 1061
    jr	$ra
    # Line 1018
    sw	$v0,16($a0)
.L0d98f77c:
    # Line 1048
    li	$v1,3
.L0d98f780:
    # Line 1061
    jr	$ra
    # Line 1048
    sw	$v1,16($a0)
.L0d98f788:
    # Line 1011
    li	$a1,6400
.L0d98f78c:
    beq	$a5,$a1,.L0d98f7e8
    # Line 1012
    li	$t0,3
    # Line 1061
    jr	$ra
    # Line 1014
    sw	$a2,16($a0)
.L0d98f79c:
    # Line 973
    lw	$a1,24($a0)
    lw	$a1,52($a1)
    beq	$a1,$a3,.L0d98f7d4
    # Line 976
    li	$a6,3
    # Line 973
    beq	$a1,$a2,.L0d98f7d0
    # Line 979
    li	$a3,2
    # Line 1061
    jr	$ra
    # Line 979
    sw	$a3,16($a0)
.L0d98f7bc:
    # Line 1032
    li	$a4,5
    # Line 1061
    jr	$ra
    # Line 1032
    sw	$a4,16($a0)
.L0d98f7c8:
    # Line 1061
    jr	$ra
    # Line 1036
    sw	$a5,16($a0)
.L0d98f7d0:
    # Line 976
    li	$a6,3
.L0d98f7d4:
    # Line 1061
    jr	$ra
    # Line 976
    sw	$a6,16($a0)
.L0d98f7dc:
    # Line 965
    li	$a7,5
    # Line 1061
    jr	$ra
    # Line 965
    sw	$a7,16($a0)
.L0d98f7e8:
    # Line 1061
    jr	$ra
    # Line 1012
    sw	$t0,16($a0)
.L0d98f7f0:
    # Line 969
    li	$t1,4
    # Line 1061
    jr	$ra
    # Line 969
    sw	$t1,16($a0)
.L0d98f7fc:
    # Line 998
    li	$t2,5
    # Line 1061
    jr	$ra
    # Line 998
    sw	$t2,16($a0)
.L0d98f808:
    # Line 1061
    jr	$ra
    # Line 1002
    sw	$t3,16($a0)
.end ImageChainDetermineChainType

# Function: ImageChainValidateScratchBufferFormats
# Declared: Line 1070 (Source lines: 1079-1158)
# Address: 0x0d98f810 - 0x0d98f9a4 (Size: 404 bytes, Frame: 0)
.ent ImageChainValidateScratchBufferFormats
ImageChainValidateScratchBufferFormats:
    # Line 1082
    lw	$a2,4($a0)
    # Line 1079
    lw	$a4,16($a0)
    # Line 1082
    li	$t2,6
    # Line 1079
    li	$a5,1
    # Line 1082
    li	$t8,2
    # Line 1079
    xor	$a4,$a4,$a5
    # Line 1082
    beqz	$a2,.L0d98f8f8
    # Line 1079
    sltiu	$a4,$a4,1
    # Line 1082
    li	$a6,7
    li	$t9,6400
    li	$a7,5123
    li	$t0,6408
    b	.L0d98f860
    li	$t3,12
.L0d98f848:
    # Line 1122
    sw	$t0,8($a3)
    # Line 1123
    lw	$t1,72($a2)
    sw	$a7,12($t1)
.L0d98f854:
    # Line 1082
    lw	$a2,76($a2)
    beqz	$a2,.L0d98f8f8
    nop
.L0d98f860:
    lw	$a3,72($a2)
    lbu	$at,0($a3)
    beqz	$at,.L0d98f854
    nop
    # Line 1090
    lw	$v0,0($a2)
    beq	$v0,$a6,.L0d98f8e4
    nop
.L0d98f87c:
    # Line 1093
    beqz	$a4,.L0d98f8c8
    # Line 1134
    li	$v0,13
.L0d98f884:
    # Line 1099
    sb	$a5,11($a3)
    lw	$a3,72($a2)
    lw	$v1,56($a3)
    bne	$v1,$a5,.L0d98f848
    nop
    # Line 1107
    lw	$t1,24($a0)
    lw	$a1,56($t1)
    beqz	$a1,.L0d98f93c
    li	$v1,5121
.L0d98f8a8:
    # Line 1115
    sw	$zero,48($a3)
    # Line 1116
    lw	$v0,72($a2)
    sw	$t3,52($v0)
    # Line 1117
    lw	$at,72($a2)
    sw	$t8,44($at)
    # Line 1118
    lw	$t1,72($a2)
    b	.L0d98f854
    sw	$t8,40($t1)
.L0d98f8c8:
    # Line 1123
    lw	$v1,56($a3)
    beq	$v1,$a5,.L0d98f900
    nop
    # Line 1149
    sw	$t9,8($a3)
    # Line 1150
    lw	$a1,72($a2)
    b	.L0d98f854
    sw	$a7,12($a1)
.L0d98f8e4:
    # Line 1090
    lw	$t1,56($a2)
    bne	$t1,$t2,.L0d98f87c
    nop
    b	.L0d98f884
    li	$a4,1
.L0d98f8f8:
    # Line 1158
    jr	$ra
    li	$v0,1
.L0d98f900:
    # Line 1134
    lw	$t1,76($a2)
    beqz	$t1,.L0d98f918
    nop
    lw	$at,0($t1)
    beq	$at,$v0,.L0d98f978
    nop
.L0d98f918:
    # Line 1142
    sw	$zero,48($a3)
    # Line 1143
    lw	$at,72($a2)
    li	$t1,17
    sw	$t1,52($at)
    # Line 1144
    lw	$a1,72($a2)
    sw	$zero,44($a1)
    # Line 1145
    lw	$v1,72($a2)
    b	.L0d98f854
    sw	$zero,40($v1)
.L0d98f93c:
    # Line 1107
    lw	$v0,40($t1)
    bne	$v0,$a5,.L0d98f8a8
    nop
    lw	$a1,12($t1)
    bne	$v1,$a1,.L0d98f8a8
    nop
    # Line 1110
    sw	$a5,48($a3)
    # Line 1111
    lw	$v1,72($a2)
    li	$v0,10
    sw	$v0,52($v1)
    # Line 1112
    lw	$at,72($a2)
    sw	$a5,44($at)
    # Line 1113
    lw	$t1,72($a2)
    b	.L0d98f854
    sw	$a5,40($t1)
.L0d98f978:
    # Line 1135
    sb	$a5,11($a3)
    # Line 1136
    lw	$v1,72($a2)
    sw	$zero,48($v1)
    # Line 1137
    lw	$v0,72($a2)
    li	$at,5
    sw	$at,52($v0)
    # Line 1138
    lw	$t1,72($a2)
    sw	$zero,44($t1)
    # Line 1139
    lw	$a1,72($a2)
    b	.L0d98f854
    sw	$zero,40($a1)
.end ImageChainValidateScratchBufferFormats

# Function: ImageChainBuildColorChain
# Declared: Line 1162 (Source lines: 1163-1973)
# Address: 0x0d98f9b0 - 0x0d990a28 (Size: 4216 bytes, Frame: 192)
.ent ImageChainBuildColorChain
ImageChainBuildColorChain:
    # Line 1163
    addiu	$sp,$sp,-320
    sd	$ra,312($sp)
    # Line 1169
    lwc1	$f4,_lit_3f800000
    # Line 1163
    sd	$s2,288($sp)
    # Line 1169
    swc1	$f4,12($sp)
    swc1	$f4,8($sp)
    # Line 1170
    mtc1	$zero,$f3
    # Line 1169
    swc1	$f4,4($sp)
    swc1	$f4,0($sp)
    # Line 1170
    swc1	$f3,16($sp)
    swc1	$f3,20($sp)
    swc1	$f3,24($sp)
    swc1	$f3,28($sp)
    # Line 1180
    lwc1	$f3,12($a1)
    lwc1	$f2,4($a1)
    # Line 1163
    sd	$s0,304($sp)
    # Line 1173
    lwc1	$f0,0($a1)
    lwc1	$f1,8($a1)
    # Line 1181
    mov.s	$f4,$f2
    c.lt.s $f2,$f3
    # Line 1173
    lw	$s0,4112($zero)
    # Line 1180
    c.lt.s $f3,$f2
    # Line 1163
    sd	$s1,296($sp)
    movf.s	$f4,$f3,$fcc3
    # Line 1187
    lw	$at,1796($s0)
    # Line 1173
    c.lt.s	$f1,$f0
    movf.s	$f2,$f3,$fcc2
    # Line 1180
    c.lt.s $f0,$f1
    sdc1	$f2,264($sp)
    mov.s	$f2,$f0
    # Line 1187
    dsll32	$at,$at,0xe
    sdc1	$f4,272($sp)
    movf.s	$f0,$f1,$fcc0
    # Line 1163
    move	$s1,$a0
    sdc1	$f0,248($sp)
    movf.s	$f2,$f1,$fcc1
    # Line 1187
    li	$s2,1
    bgez	$at,.L0d98fa5c
    sdc1	$f2,256($sp)
    lw	$v0,20($a0)
    lw	$v1,56($v0)
    beq	$v1,$s2,.L0d990368
    nop
.L0d98fa5c:
    # Line 1192
    lw	$v1,16($s1)
    beq	$v1,$s2,.L0d9901e4
    nop
    # Line 1369
    lw	$a2,752($s0)
    mtc1	$a2,$f4
    # Line 1370
    mtc1	$zero,$f6
    # Line 1372
    swc1	$f6,100($sp)
    # Line 1369
    cvt.s.w	$f4,$f4
    # Line 1371
    swc1	$f6,96($sp)
    # Line 1370
    swc1	$f6,92($sp)
    # Line 1369
    swc1	$f4,88($sp)
    # Line 1374
    lw	$a1,756($s0)
    mtc1	$a1,$f5
    # Line 1377
    swc1	$f6,116($sp)
    # Line 1374
    cvt.s.w	$f5,$f5
    # Line 1376
    swc1	$f6,112($sp)
    # Line 1375
    swc1	$f6,108($sp)
    # Line 1374
    swc1	$f5,104($sp)
    # Line 1377
    lw	$a0,20($s1)
    lw	$a0,56($a0)
    beqz	$a0,.L0d990574
    # Line 1396
    dmtc1	$zero,$f6
    cvt.d.s	$f7,$f4
    c.eq.d $f7,$f6
    bc1f .L0d98fdb4
    # Line 1398
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1396
    cvt.d.s	$f8,$f5
    c.eq.d $f8,$f6
    bc1f .L0d98fdb4
    # Line 1398
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
.L0d98fad4:
    # Line 1399
    lw	$v0,16($s1)
    li	$a3,2
    beq	$v0,$a3,.L0d9905ac
    # Line 1411
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 1413
    lbu	$a4,760($s0)
    beqz	$a4,.L0d98fb10
    # Line 1421
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3616
    li	$a1,4
    bal __glOdysseyImageChainFree
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990684
    ld	$ra,312($sp)
    # Line 1423
    lw	$v0,16($s1)
.L0d98fb10:
    # Line 1430
    beq	$v0,$s2,.L0d98fdf4
    li	$at,2
    beq	$v0,$at,.L0d98fdf4
    nop
    # Line 1715
    lw	$v0,24($s1)
    lw	$v1,56($v0)
    beq	$v1,$s2,.L0d990448
    nop
    # Line 1729
    lw	$a0,1796($s0)
    andi	$a0,$a0,0x20
.L0d98fb38:
    # Line 1740
    beqz	$a0,.L0d98fb9c
    # Line 1746
    la	$s0,sub_0d990000
.L0d98fb40:
    # Line 1740
    lw	$v0,24($s1)
    lw	$a1,56($v0)
    bne	$a1,$s2,.L0d98fb9c
    # Line 1746
    la	$s0,sub_0d990000
    # Line 1740
    lbu	$a2,8($v0)
    beqz	$a2,.L0d99050c
    nop
.L0d98fb5c:
    lw	$v0,8($s1)
    beqz	$v0,.L0d98fb7c
    # Line 1745
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1740
    lw	$a3,0($v0)
    li	$a4,14
    beq	$a3,$a4,.L0d98fb9c
    # Line 1746
    la	$s0,sub_0d990000
    # Line 1745
    # lw $t9, -32724($gp) # &sub_0d9a0000
.L0d98fb7c:
    addiu	$t9,$t9,24672
    move	$a0,$s1
    jal	sub_0d9a0000
    move	$a1,$zero
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d9904dc
    ld	$ra,312($sp)
    # Line 1746
    la	$s0,sub_0d990000
.L0d98fb9c:
    addiu	$s0,$s0,-2032
    # Line 1756
    move	$t9,$s0
    bal __glOdysseyImageChainFree
    move	$a0,$s1
    andi	$t8,$v0,0xff
    beqz	$t8,.L0d9904f4
    ld	$ra,312($sp)
    # Line 1758
    lw	$s0,4($s1)
    beqz	$s0,.L0d990400
    nop
.L0d98fbc4:
    # Line 1809
    beqz	$s0,.L0d98fcd0
    # Line 1967
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    b	.L0d98fbec
    # Line 1809
    lw	$a4,68($s0)
.L0d98fbd4:
    # Line 1882
    beq	$v0,$s2,.L0d99054c
    # Line 1900
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
.L0d98fbdc:
    # Line 1809
    lw	$s0,76($s0)
.L0d98fbe0:
    beqz	$s0,.L0d98fcd0
    # Line 1967
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 1809
    lw	$a4,68($s0)
.L0d98fbec:
    lw	$a1,56($a4)
    beqz	$a1,.L0d98fc90
    lw	$v0,8($s0)
    # Line 1850
    andi	$a2,$v0,0x4
    beqz	$a2,.L0d990190
    # Line 1872
    andi	$a3,$v0,0x20
    beqz	$a3,.L0d98fc18
    nop
    lbu	$a5,11($a4)
    beqz	$a5,.L0d9901bc
    # Line 1881
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
.L0d98fc18:
    # Line 1882
    lw	$a0,72($s0)
.L0d98fc1c:
    lw	$a6,56($a0)
    # Line 1936
    lw	$a7,8($s0)
    # Line 1882
    lw	$v0,12($s0)
    beqz	$a6,.L0d98fbd4
    # Line 1936
    andi	$a7,$a7,0x8
    # Line 1902
    beqz	$v0,.L0d98fd18
    # Line 1915
    mtc1	$zero,$f9
    # Line 1936
    bnez	$a7,.L0d98fbdc
    nop
    lbu	$t0,8($a0)
    beqz	$t0,.L0d98fbdc
    nop
    # Line 1946
    lw	$a4,68($s0)
    lw	$t1,56($a4)
    bne	$t1,$s2,.L0d98fd88
    # Line 1953
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 1946
    lbu	$t2,11($a4)
    beqz	$t2,.L0d98fd84
    # Line 1947
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3168
    move	$a0,$s1
    move	$a1,$s0
    bal __glOdysseyImageChainFree
    move	$a2,$zero
    andi	$ra,$v0,0xff
    bnezl	$ra,.L0d98fbe0
    # Line 1809
    lw	$s0,76($s0)
    # Line 1949
    b	.L0d98fd00
    move	$v0,$zero
.L0d98fc90:
    # Line 1809
    andi	$at,$v0,0x2
    beqz	$at,.L0d990394
    # Line 1818
    mtc1	$zero,$f13
    # Line 1840
    lbu	$v1,0($a4)
    bnez	$v1,.L0d98fc1c
    lw	$a0,72($s0)
    lbu	$a1,8($a0)
    beqz	$a1,.L0d98fc1c
    nop
    lw	$a2,40($a4)
    bne	$a2,$s2,.L0d98fc1c
    # Line 1850
    li	$a3,-9
    and	$a3,$v0,$a3
    b	.L0d98fc1c
    sw	$a3,8($s0)
    # Line 1967
    # lw $t9, -32728($gp) # &sub_0d990000
.L0d98fcd0:
    addiu	$t9,$t9,-2032
    bal __glOdysseyImageChainFree
    move	$a0,$s1
    # Line 1973
    ld	$s0,304($sp)
    ld	$ra,312($sp)
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    addiu	$sp,$sp,320
    # Line 1967
    andi	$at,$v0,0xff
    # Line 1973
    li	$v0,1
    jr	$ra
    movz	$v0,$zero,$at
.L0d98fd00:
    ld	$ra,312($sp)
    ld	$s0,304($sp)
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d98fd18:
    # Line 1914
    lwc1	$f10,_lit_3f800000
    # Line 1915
    swc1	$f9,244($sp)
    swc1	$f9,240($sp)
    swc1	$f9,236($sp)
    swc1	$f9,232($sp)
    # Line 1914
    swc1	$f10,228($sp)
    swc1	$f10,224($sp)
    swc1	$f10,220($sp)
    swc1	$f10,216($sp)
    # Line 1915
    lw	$v1,68($s0)
    lw	$v1,8($v1)
    li	$v0,6400
    beq	$v0,$v1,.L0d9904c4
.L0d98fd4c:
    # Line 1931
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$zero
    addiu	$t9,$t9,15360
    addiu	$a4,$sp,232
    addiu	$a3,$sp,216
    jal	sub_0d9a0000
    move	$a5,$zero
    andi	$ra,$v0,0xff
    bnezl	$ra,.L0d98fbe0
    # Line 1809
    lw	$s0,76($s0)
    # Line 1933
    b	.L0d98fd00
    move	$v0,$zero
.L0d98fd84:
    # Line 1953
    # lw $t9, -32728($gp) # &sub_0d990000
.L0d98fd88:
    addiu	$t9,$t9,3392
    move	$a0,$s1
    move	$a1,$s0
    bal __glOdysseyImageChainFree
    move	$a2,$zero
    andi	$ra,$v0,0xff
    bnezl	$ra,.L0d98fbe0
    # Line 1809
    lw	$s0,76($s0)
    # Line 1955
    b	.L0d98fd00
    move	$v0,$zero
    # Line 1398
    # lw $t9, -32724($gp) # &sub_0d9a0000
.L0d98fdb4:
    trunc.w.s	$f12,$f5
    trunc.w.s	$f11,$f4
    addiu	$t9,$t9,25040
    mfc1	$a2,$f12
    move	$a0,$s1
    jal	sub_0d9a0000
    mfc1	$a1,$f11
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d98fad4
    ld	$ra,312($sp)
    # Line 1973
    ld	$s0,304($sp)
    # Line 1400
    move	$v0,$zero
    # Line 1973
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d98fdf4:
    # Line 1430
    lw	$at,1796($s0)
    andi	$at,$at,0x1
    beqz	$at,.L0d98fe20
    # Line 1440
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3616
    move	$a0,$s1
    bal __glOdysseyImageChainFree
    move	$a1,$zero
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990774
    nop
.L0d98fe20:
    # Line 1532
    lwc1	$f4,680($s0)
    ldc1	$f14,_lit8_3ff0000000000000
    cvt.d.s	$f13,$f4
    c.eq.d $f13,$f14
    bc1f .L0d98fec8
    nop
    lwc1	$f15,684($s0)
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f14
    bc1f .L0d98fec8
    nop
    lwc1	$f16,688($s0)
    cvt.d.s	$f16,$f16
    c.eq.d	$f16,$f14
    bc1f	.L0d98fec8
    nop
    lwc1	$f17,692($s0)
    cvt.d.s	$f17,$f17
    c.eq.d $f17,$f14
    bc1f .L0d98fec8
    nop
    lwc1	$f18,696($s0)
    dmtc1	$zero,$f6
    cvt.d.s	$f18,$f18
    c.eq.d $f18,$f6
    bc1f .L0d98fec8
    nop
    lwc1	$f19,700($s0)
    cvt.d.s	$f19,$f19
    c.eq.d $f19,$f6
    bc1f .L0d98fec8
    nop
    lwc1	$f21,704($s0)
    cvt.d.s	$f21,$f21
    c.eq.d $f21,$f6
    bc1f .L0d98fec8
    nop
    lwc1	$f23,708($s0)
    cvt.d.s	$f23,$f23
    c.eq.d $f23,$f6
    bc1t .L0d98ff04
    nop
.L0d98fec8:
    # Line 1541
    swc1	$f4,0($sp)
    # Line 1542
    lwc1	$f2,684($s0)
    swc1	$f2,4($sp)
    # Line 1543
    lwc1	$f1,688($s0)
    swc1	$f1,8($sp)
    # Line 1544
    lwc1	$f0,692($s0)
    swc1	$f0,12($sp)
    # Line 1546
    lwc1	$f31,696($s0)
    swc1	$f31,16($sp)
    # Line 1547
    lwc1	$f29,700($s0)
    swc1	$f29,20($sp)
    # Line 1548
    lwc1	$f27,704($s0)
    swc1	$f27,24($sp)
    # Line 1549
    lwc1	$f25,708($s0)
    swc1	$f25,28($sp)
.L0d98ff04:
    lw	$at,764($s0)
    lw	$at,0($at)
    beqz	$at,.L0d98ff98
    # Line 1561
    ldc1	$f5,256($sp)
    ldc1	$f4,248($sp)
    # Line 1562
    ldc1	$f3,264($sp)
    # Line 1561
    sub.s	$f4,$f4,$f5
    # Line 1562
    ldc1	$f5,272($sp)
    sub.s	$f3,$f3,$f5
    # Line 1561
    trunc.l.s	$f4,$f4
    lui	$v0,0x1
    # Line 1562
    trunc.l.s	$f3,$f3
    # Line 1561
    addu	$v0,$s0,$v0
    dmfc1	$a1,$f4
    sw	$a1,7108($v0)
    # Line 1562
    dmfc1	$a0,$f3
    sw	$a0,7112($v0)
    # Line 1563
    lw	$v1,764($s0)
    lw	$v1,4($v1)
    sw	$v1,7124($v0)
    # Line 1566
    lw	$a1,1924($s0)
    li	$a4,4354
    beq	$a4,$a1,.L0d9905d0
    # Line 1575
    li	$a0,4353
.L0d98ff64:
    # Line 1577
    sw	$a0,6624($v0)
    lw	$a1,764($s0)
    beq	$a4,$a0,.L0d990520
    lw	$a1,0($a1)
    # Line 1582
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6320
    move	$a0,$s1
    addiu	$a3,$sp,16
    bal __glOdysseyClearScratchBuffer
    addiu	$a2,$sp,0
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990544
    nop
.L0d98ff98:
    # Line 1585
    lw	$at,1796($s0)
    andi	$at,$at,0x2
    beqz	$at,.L0d98ffc4
    # Line 1593
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3616
    move	$a0,$s1
    bal __glOdysseyImageChainFree
    li	$a1,2
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d99077c
    nop
.L0d98ffc4:
    # Line 1607
    lw	$at,30692($s0)
    li	$v0,0x8421
    bne	$at,$v0,.L0d990078
    lwc1	$f4,712($s0)
    ldc1	$f7,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f4
    c.eq.d $f6,$f7
    bc1f .L0d990078
    nop
    lwc1	$f8,716($s0)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f7
    bc1f .L0d990078
    nop
    lwc1	$f9,720($s0)
    cvt.d.s	$f9,$f9
    c.eq.d	$f9,$f7
    bc1f	.L0d990078
    nop
    lwc1	$f10,724($s0)
    cvt.d.s	$f10,$f10
    c.eq.d $f10,$f7
    bc1f .L0d990078
    nop
    lwc1	$f11,728($s0)
    dmtc1	$zero,$f6
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f6
    bc1f .L0d990078
    nop
    lwc1	$f12,732($s0)
    cvt.d.s	$f12,$f12
    c.eq.d $f12,$f6
    bc1f .L0d990078
    nop
    lwc1	$f13,736($s0)
    cvt.d.s	$f13,$f13
    c.eq.d $f13,$f6
    bc1f .L0d990078
    nop
    lwc1	$f14,740($s0)
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f6
    bc1t .L0d9900dc
    nop
.L0d990078:
    # Line 1620
    swc1	$f4,120($sp)
    # Line 1621
    lwc1	$f23,716($s0)
    swc1	$f23,124($sp)
    # Line 1622
    lwc1	$f21,720($s0)
    swc1	$f21,128($sp)
    # Line 1623
    lwc1	$f19,724($s0)
    swc1	$f19,132($sp)
    # Line 1625
    lwc1	$f18,728($s0)
    swc1	$f18,136($sp)
    # Line 1626
    lwc1	$f17,732($s0)
    swc1	$f17,140($sp)
    # Line 1627
    lwc1	$f16,736($s0)
    # Line 1630
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1627
    swc1	$f16,144($sp)
    # Line 1628
    lwc1	$f15,740($s0)
    # Line 1630
    addiu	$t9,$t9,-20416
    addiu	$a3,$sp,136
    addiu	$a2,$sp,120
    # Line 1628
    swc1	$f15,148($sp)
    # Line 1630
    move	$a0,$s1
    jal	sub_0d9a0000
    lw	$a1,29744($s0)
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d99074c
    ld	$ra,312($sp)
.L0d9900dc:
    # Line 1633
    lw	$at,1796($s0)
    andi	$at,$at,0x4
    beqz	$at,.L0d990108
    # Line 1643
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3616
    move	$a0,$s1
    bal __glOdysseyImageChainFree
    li	$a1,3
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990784
    nop
.L0d990108:
    # Line 1654
    lw	$v0,1792($s0)
    dsll32	$a1,$v0,0x3
    lui	$a0,0x1000
    bgez	$a1,.L0d990134
    and	$a0,$v0,$a0
    lw	$a2,1248($s0)
    bgtz	$a2,.L0d990154
    # Line 1661
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1654
    lbu	$a3,1280($s0)
    beq	$s2,$a3,.L0d990154
    # Line 1661
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
.L0d990134:
    # Line 1654
    dsll32	$a4,$v0,0x2
    bgez	$a4,.L0d99016c
    nop
    beqz	$a0,.L0d990154
    # Line 1661
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1654
    lbu	$a5,1280($s0)
    bnez	$a5,.L0d99016c
    # Line 1661
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
.L0d990154:
    addiu	$t9,$t9,2880
    jal	sub_0d9a0000
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990794
    nop
.L0d99016c:
    # Line 1674
    lw	$v0,24($s1)
    lw	$a0,56($v0)
    beq	$a0,$s2,.L0d9905d8
    nop
    # Line 1680
    lw	$a1,1796($s0)
.L0d990180:
    # Line 1688
    beq	$a0,$s2,.L0d990618
    nop
    b	.L0d98fb38
    # Line 1702
    andi	$a0,$a1,0x20
.L0d990190:
    # Line 1867
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,22432
    move	$a0,$s1
    move	$a1,$s0
    jal	sub_0d9a0000
    li	$a2,1
    andi	$ra,$v0,0xff
    bnezl	$ra,.L0d98fc1c
    # Line 1882
    lw	$a0,72($s0)
    # Line 1869
    b	.L0d98fd00
    move	$v0,$zero
.L0d9901bc:
    # Line 1881
    addiu	$t9,$t9,3392
    move	$a0,$s1
    move	$a1,$s0
    bal __glOdysseyImageChainFree
    li	$a2,1
    andi	$ra,$v0,0xff
    bnezl	$ra,.L0d98fc1c
    # Line 1882
    lw	$a0,72($s0)
    # Line 1883
    b	.L0d98fd00
    move	$v0,$zero
.L0d9901e4:
    # Line 1202
    lwc1	$f25,640($s0)
    swc1	$f25,32($sp)
    # Line 1203
    lwc1	$f4,644($s0)
    # Line 1215
    ldc1	$f6,_lit8_404f800000000000
    # Line 1203
    swc1	$f4,36($sp)
    # Line 1215
    cvt.d.s	$f25,$f25
    # Line 1204
    lwc1	$f5,648($s0)
    # Line 1215
    c.lt.d $f6,$f25
    # Line 1204
    swc1	$f5,40($sp)
    # Line 1205
    lwc1	$f7,652($s0)
    # Line 1215
    bc1t .L0d990244
    # Line 1205
    swc1	$f7,44($sp)
    # Line 1215
    cvt.d.s	$f27,$f4
    c.lt.d $f6,$f27
    bc1t .L0d990248
    # Line 1217
    lwc1	$f0,_lit_40800000
    # Line 1215
    cvt.d.s	$f29,$f5
    c.lt.d	$f6,$f29
    bc1t	.L0d990248
    # Line 1217
    lwc1	$f0,_lit_40800000
    # Line 1215
    cvt.d.s	$f31,$f7
    c.lt.d $f6,$f31
    bc1f .L0d990764
    # Line 1219
    lwc1	$f31,_lit_40fffe00
.L0d990244:
    # Line 1217
    lwc1	$f0,_lit_40800000
.L0d990248:
    lui	$v0,0x1
    addu	$v0,$s0,$v0
    swc1	$f0,7712($v0)
.L0d990254:
    # Line 1222
    lwc1	$f4,660($s0)
    swc1	$f4,48($sp)
    # Line 1223
    lwc1	$f5,664($s0)
    swc1	$f5,52($sp)
    # Line 1224
    lwc1	$f7,668($s0)
    swc1	$f7,56($sp)
    # Line 1225
    lwc1	$f8,672($s0)
    swc1	$f8,60($sp)
    lw	$v1,20($s1)
    lw	$v1,56($v1)
    beqz	$v1,.L0d99079c
    sd	$v0,280($sp)
    # Line 1342
    lwc1	$f1,32($sp)
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f2
    bc1f .L0d990314
    lwc1	$f2,36($sp)
    ldc1	$f3,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f3
    bc1f .L0d990314
    lwc1	$f3,40($sp)
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f6
    bc1f .L0d990314
    lwc1	$f6,44($sp)
    ldc1	$f9,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f9
    bc1f .L0d990314
    dmtc1	$zero,$f6
    cvt.d.s	$f9,$f4
    c.eq.d $f9,$f6
    bc1f .L0d990318
    # Line 1348
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1342
    cvt.d.s	$f10,$f5
    c.eq.d $f10,$f6
    bc1f .L0d990318
    # Line 1348
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1342
    cvt.d.s	$f11,$f7
    c.eq.d	$f11,$f6
    bc1f	.L0d990318
    # Line 1348
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 1342
    cvt.d.s	$f12,$f8
    c.eq.d $f12,$f6
    bc1t .L0d990338
.L0d990314:
    # Line 1348
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
.L0d990318:
    addiu	$t9,$t9,-26064
    move	$a0,$s1
    addiu	$a2,$sp,48
    jal	sub_0d9a0000
    addiu	$a1,$sp,32
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d99078c
    nop
.L0d990338:
    # Line 1349
    lbu	$at,760($s0)
    beqz	$at,.L0d990360
    # Line 1357
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3616
    li	$a1,7
    bal __glOdysseyImageChainFree
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d9908f8
    nop
.L0d990360:
    # Line 1359
    b	.L0d98fb10
    lw	$v0,16($s1)
.L0d990368:
    # Line 1187
    lbu	$at,10($v0)
    bnez	$at,.L0d98fa5c
    # Line 1191
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,24672
    jal	sub_0d9a0000
    move	$a1,$s2
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d98fa5c
    nop
    # Line 1193
    b	.L0d98fd00
    move	$v0,$zero
.L0d990394:
    # Line 1817
    lwc1	$f14,_lit_3f800000
    # Line 1818
    swc1	$f13,212($sp)
    swc1	$f13,208($sp)
    swc1	$f13,204($sp)
    swc1	$f13,200($sp)
    # Line 1817
    swc1	$f14,196($sp)
    swc1	$f14,192($sp)
    swc1	$f14,188($sp)
    swc1	$f14,184($sp)
    # Line 1818
    lw	$v0,68($s0)
    lw	$v0,8($v0)
    li	$at,6400
    beq	$at,$v0,.L0d9906c8
.L0d9903c8:
    # Line 1835
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    move	$a0,$s1
    move	$a1,$s0
    addiu	$a4,$sp,200
    addiu	$t9,$t9,15360
    addiu	$a3,$sp,184
    li	$a2,1
    jal	sub_0d9a0000
    move	$a5,$zero
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990910
    nop
    # Line 1837
    b	.L0d98fc1c
    lw	$a0,72($s0)
.L0d990400:
    # Line 1758
    lw	$at,20($s1)
    lw	$at,56($at)
    beqz	$at,.L0d9906e0
    # Line 1769
    mtc1	$zero,$f27
    # Line 1784
    lw	$v0,24($s1)
    lw	$v0,56($v0)
    beqz	$v0,.L0d99069c
    # Line 1793
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,3392
    # Line 1798
    li	$a2,1
    move	$a1,$s0
    bal __glOdysseyImageChainFree
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990900
    nop
.L0d990440:
    b	.L0d98fbc4
    # Line 1800
    lw	$s0,4($s1)
.L0d990448:
    # Line 1715
    lbu	$at,8($v0)
    lw	$a0,1796($s0)
    beqz	$at,.L0d98fb38
    andi	$a0,$a0,0x20
    bnez	$a0,.L0d98fb38
    nop
    # Line 1725
    lwc1	$f15,744($s0)
    ldc1	$f16,_lit8_3ff0000000000000
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f16
    bc1f .L0d990490
    # Line 1719
    lwc1	$f4,748($s0)
    # Line 1725
    cvt.d.s	$f5,$f4
    c.eq.d $f5,$f16
    bc1t .L0d98fb38
    ldc1	$f17,_lit8_bff0000000000000
    c.eq.d $f5,$f17
    bc1t .L0d98fb38
.L0d990490:
    # Line 1728
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,24448
    jal	sub_0d9a0000
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990980
    nop
    # Line 1730
    lw	$a0,1796($s0)
    andi	$a0,$a0,0x20
    # Line 1740
    bnez	$a0,.L0d98fb40
    nop
    b	.L0d98fb9c
    # Line 1746
    la	$s0,sub_0d990000
.L0d9904c4:
    # Line 1923
    mtc1	$zero,$f18
    swc1	$f18,216($sp)
    swc1	$f18,220($sp)
    swc1	$f18,224($sp)
    b	.L0d98fd4c
    swc1	$f18,228($sp)
.L0d9904dc:
    # Line 1973
    ld	$s0,304($sp)
    # Line 1747
    move	$v0,$zero
    # Line 1973
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9904f4:
    ld	$s0,304($sp)
    # Line 1758
    move	$v0,$zero
    # Line 1973
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d99050c:
    # Line 1740
    lbu	$a1,10($v0)
    bnez	$a1,.L0d98fb5c
    nop
    b	.L0d98fb9c
    # Line 1746
    la	$s0,sub_0d990000
.L0d990520:
    # Line 1580
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,18960
    move	$a0,$s1
    addiu	$a3,$sp,16
    bal __glOdysseyClearScratchBuffer
    addiu	$a2,$sp,0
    andi	$a0,$v0,0xff
    # Line 1582
    bnez	$a0,.L0d98ff98
    nop
.L0d990544:
    # Line 1585
    b	.L0d98fd00
    move	$v0,$zero
.L0d99054c:
    # Line 1900
    addiu	$t9,$t9,22432
    move	$a0,$s1
    move	$a1,$s0
    jal	sub_0d990000
    move	$a2,$zero
    andi	$ra,$v0,0xff
    bnezl	$ra,.L0d98fbe0
    # Line 1809
    lw	$s0,76($s0)
    # Line 1902
    b	.L0d98fd00
    move	$v0,$zero
.L0d990574:
    # Line 1389
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$a4,$sp,104
    addiu	$a3,$sp,88
    addiu	$t9,$t9,15360
    li	$a2,1
    move	$a0,$s1
    lw	$a1,4($s1)
    jal	sub_0d9a0000
    move	$a5,$zero
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d98fad4
    nop
    # Line 1392
    b	.L0d98fd00
    move	$v0,$zero
.L0d9905ac:
    # Line 1411
    addiu	$t9,$t9,3616
    li	$a1,6
    bal __glOdysseyImageChainFree
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990908
    nop
    # Line 1413
    b	.L0d98fb10
    lw	$v0,16($s1)
.L0d9905d0:
    b	.L0d98ff64
    move	$a0,$a4
.L0d9905d8:
    # Line 1674
    lbu	$at,8($v0)
    beqz	$at,.L0d990180
    lw	$a1,1796($s0)
    andi	$v1,$a1,0x4000
    beqz	$v1,.L0d990180
    # Line 1678
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,3968
    jal	sub_0d9a0000
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990970
    nop
    # Line 1680
    lw	$v0,24($s1)
    lw	$a1,1796($s0)
    b	.L0d990180
    lw	$a0,56($v0)
.L0d990618:
    # Line 1688
    lbu	$at,8($v0)
    beqz	$at,.L0d98fb38
    andi	$a0,$a1,0x20
    bnez	$a0,.L0d98fb38
    nop
    # Line 1698
    lwc1	$f19,744($s0)
    ldc1	$f21,_lit8_3ff0000000000000
    cvt.d.s	$f19,$f19
    c.eq.d $f19,$f21
    bc1f .L0d99065c
    # Line 1692
    lwc1	$f4,748($s0)
    # Line 1698
    cvt.d.s	$f5,$f4
    c.eq.d $f5,$f21
    bc1t .L0d98fb38
    ldc1	$f23,_lit8_bff0000000000000
    c.eq.d $f5,$f23
    bc1t .L0d98fb38
.L0d99065c:
    # Line 1701
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,24224
    jal	sub_0d9a0000
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d9909cc
    nop
    # Line 1703
    lw	$a0,1796($s0)
    b	.L0d98fb38
    andi	$a0,$a0,0x20
.L0d990684:
    # Line 1973
    ld	$s0,304($sp)
    # Line 1423
    move	$v0,$zero
    # Line 1973
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d99069c:
    # Line 1791
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,22432
    li	$a2,1
    move	$a1,$s0
    jal	sub_0d9a0000
    move	$a0,$s1
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d990440
    nop
    b	.L0d990968
    nop
.L0d9906c8:
    # Line 1826
    mtc1	$zero,$f25
    swc1	$f25,184($sp)
    swc1	$f25,188($sp)
    swc1	$f25,192($sp)
    b	.L0d9903c8
    swc1	$f25,196($sp)
.L0d9906e0:
    # Line 1768
    lwc1	$f29,_lit_3f800000
    # Line 1769
    swc1	$f27,180($sp)
    swc1	$f27,176($sp)
    swc1	$f27,172($sp)
    swc1	$f27,168($sp)
    # Line 1768
    swc1	$f29,164($sp)
    swc1	$f29,160($sp)
    swc1	$f29,156($sp)
    swc1	$f29,152($sp)
    # Line 1769
    lw	$at,20($s1)
    lw	$at,8($at)
    li	$v0,6400
    beq	$at,$v0,.L0d990918
.L0d990714:
    # Line 1782
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    move	$a0,$s1
    addiu	$a4,$sp,168
    addiu	$t9,$t9,15360
    addiu	$a3,$sp,152
    li	$a2,1
    lw	$a1,4($s1)
    jal	sub_0d9a0000
    move	$a5,$zero
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d990440
    nop
    b	.L0d990978
    nop
.L0d99074c:
    # Line 1973
    ld	$s0,304($sp)
    # Line 1634
    move	$v0,$zero
    # Line 1973
    ld	$s1,296($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d990764:
    # Line 1219
    lui	$v0,0x1
    addu	$v0,$s0,$v0
    b	.L0d990254
    swc1	$f31,7712($v0)
.L0d990774:
    # Line 1442
    b	.L0d98fd00
    move	$v0,$zero
.L0d99077c:
    # Line 1595
    b	.L0d98fd00
    move	$v0,$zero
.L0d990784:
    # Line 1645
    b	.L0d98fd00
    move	$v0,$zero
.L0d99078c:
    # Line 1350
    b	.L0d98fd00
    move	$v0,$zero
.L0d990794:
    # Line 1663
    b	.L0d98fd00
    move	$v0,$zero
.L0d99079c:
    # Line 1242
    # lw $t9, -32724($gp) # &sub_0d9a0000
    li	$a5,1
    addiu	$a4,$sp,48
    addiu	$t9,$t9,15360
    addiu	$a3,$sp,32
    li	$a2,1
    lw	$a1,4($s1)
    jal	sub_0d9a0000
    move	$a0,$s1
    andi	$ra,$v0,0xff
    beqz	$ra,.L0d990960
    nop
    # Line 1247
    lw	$a2,24($s1)
    lw	$a0,20($s1)
    # lw $t9, -31192($gp) # &__glOdysseyImageCalcXferWriteParams
    lw	$a2,52($a2)
    lw	$a1,12($a0)
    addiu	$a3,$sp,64
    jal	__glOdysseyImageCalcXferWriteParams
    lw	$a0,8($a0)
    # Line 1269
    lbu	$v0,66($sp)
    li	$a3,3
    beq	$v0,$a3,.L0d990930
    li	$a4,4
    beq	$v0,$a4,.L0d990930
    nop
    # Line 1284
    lw	$v0,1928($s0)
.L0d990808:
    # Line 1293
    lbu	$a5,64($sp)
.L0d99080c:
    xori	$a6,$v0,0x1102
    sltiu	$a6,$a6,1
    movn	$a5,$zero,$a6
    bne	$s2,$a5,.L0d990338
    sb	$a5,64($sp)
    lbu	$a7,68($sp)
    beq	$s2,$a7,.L0d990988
    nop
    # Line 1328
    lw	$t0,20($s1)
    lw	$t0,8($t0)
    li	$t1,6400
    beq	$t0,$t1,.L0d990338
    lwc1	$f0,32($sp)
    ld	$t1,280($sp)
    lwc1	$f4,7712($t1)
    abs.s	$f0,$f0
    c.lt.s	$f4,$f0
    bc1t	.L0d9908cc
    lwc1	$f1,36($sp)
    abs.s	$f1,$f1
    c.lt.s $f4,$f1
    bc1t .L0d9908cc
    lwc1	$f2,40($sp)
    abs.s	$f2,$f2
    c.lt.s $f4,$f2
    bc1t .L0d9908cc
    lwc1	$f3,44($sp)
    abs.s	$f3,$f3
    c.lt.s $f4,$f3
    bc1t .L0d9908d0
    # Line 1334
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 1328
    lwc1	$f5,48($sp)
    abs.s	$f5,$f5
    c.lt.s $f4,$f5
    bc1t .L0d9908cc
    lwc1	$f6,52($sp)
    abs.s	$f6,$f6
    c.lt.s $f4,$f6
    bc1t .L0d9908cc
    lwc1	$f7,56($sp)
    abs.s	$f7,$f7
    c.lt.s $f4,$f7
    bc1t .L0d9908d0
    # Line 1334
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 1328
    lwc1	$f8,60($sp)
    abs.s	$f8,$f8
    c.lt.s $f4,$f8
    bc1f .L0d990338
.L0d9908cc:
    # Line 1334
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
.L0d9908d0:
    addiu	$t9,$t9,26176
    move	$a0,$s1
    addiu	$a2,$sp,48
    bal __glOdysseyClearScratchBuffer
    addiu	$a1,$sp,32
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d990338
    nop
    # Line 1336
    b	.L0d98fd00
    move	$v0,$zero
.L0d9908f8:
    # Line 1359
    b	.L0d98fd00
    move	$v0,$zero
.L0d990900:
    # Line 1800
    b	.L0d98fd00
    move	$v0,$zero
.L0d990908:
    # Line 1413
    b	.L0d98fd00
    move	$v0,$zero
.L0d990910:
    # Line 1837
    b	.L0d98fd00
    move	$v0,$zero
.L0d990918:
    # Line 1779
    mtc1	$zero,$f9
    swc1	$f9,152($sp)
    swc1	$f9,156($sp)
    swc1	$f9,160($sp)
    b	.L0d990714
    swc1	$f9,164($sp)
.L0d990930:
    # Line 1281
    lw	$v0,1928($s0)
    li	$at,4352
    bne	$v0,$at,.L0d99080c
    # Line 1293
    lbu	$a5,64($sp)
    # Line 1281
    lw	$v1,4($s1)
    lw	$v1,8($v1)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d99080c
    # Line 1293
    lbu	$a5,64($sp)
    # Line 1284
    sb	$zero,64($sp)
    b	.L0d990808
    lw	$v0,1928($s0)
.L0d990960:
    # Line 1244
    b	.L0d98fd00
    move	$v0,$zero
.L0d990968:
    # Line 1793
    b	.L0d98fd00
    move	$v0,$zero
.L0d990970:
    # Line 1680
    b	.L0d98fd00
    move	$v0,$zero
.L0d990978:
    # Line 1784
    b	.L0d98fd00
    move	$v0,$zero
.L0d990980:
    # Line 1730
    b	.L0d98fd00
    move	$v0,$zero
.L0d990988:
    # Line 1293
    lw	$v0,31600($s0)
    andi	$a0,$v0,0x80
    beqz	$a0,.L0d990338
    dsll32	$a1,$v0,0xc
    bgez	$a1,.L0d9909d4
    # Line 1319
    lwc1	$f14,60($sp)
.L0d9909a0:
    # Line 1322
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,26176
    move	$a0,$s1
    addiu	$a2,$sp,48
    bal __glOdysseyClearScratchBuffer
    addiu	$a1,$sp,32
    andi	$ra,$v0,0xff
    bnez	$ra,.L0d990338
    nop
    # Line 1324
    b	.L0d98fd00
    move	$v0,$zero
.L0d9909cc:
    # Line 1703
    b	.L0d98fd00
    move	$v0,$zero
.L0d9909d4:
    # Line 1319
    lwc1	$f12,56($sp)
    # Line 1318
    lwc1	$f11,52($sp)
    ldc1	$f13,_lit8_3fe0000000000000
    # Line 1319
    cvt.d.s	$f14,$f14
    # Line 1318
    lwc1	$f10,48($sp)
    # Line 1319
    cvt.d.s	$f12,$f12
    mul.d	$f14,$f14,$f13
    # Line 1318
    cvt.d.s	$f11,$f11
    # Line 1319
    mul.d	$f12,$f12,$f13
    # Line 1318
    cvt.d.s	$f10,$f10
    # Line 1319
    cvt.s.d	$f14,$f14
    # Line 1318
    mul.d	$f11,$f11,$f13
    # Line 1319
    swc1	$f14,60($sp)
    cvt.s.d	$f12,$f12
    # Line 1318
    mul.d	$f10,$f10,$f13
    # Line 1319
    swc1	$f12,56($sp)
    # Line 1318
    cvt.s.d	$f11,$f11
    swc1	$f11,52($sp)
    cvt.s.d	$f10,$f10
    # Line 1319
    b	.L0d9909a0
    # Line 1318
    swc1	$f10,48($sp)
.end ImageChainBuildColorChain

# Function: ImageChainBuildDepthChain
# Declared: Line 1977 (Source lines: 1978-2029)
# Address: 0x0d990a30 - 0x0d990ae4 (Size: 180 bytes, Frame: 16)
.ent ImageChainBuildDepthChain
ImageChainBuildDepthChain:
    # Line 1981
    lw	$at,20($a0)
    lw	$v0,4112($zero)
    # Line 1978
    addiu	$sp,$sp,-16
    # Line 1981
    lw	$at,56($at)
    sd	$ra,0($sp)
    lwc1	$f14,676($v0)
    beqz	$at,.L0d990ac0
    lwc1	$f13,656($v0)
    # Line 1998
    lw	$v0,24($a0)
    lw	$v0,56($v0)
    beqz	$v0,.L0d990a90
    # Line 2019
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,10912
    jal	sub_0d9a0000
    nop
    andi	$at,$v0,0xff
    # Line 2023
    move	$v0,$zero
    # Line 2019
    beqz	$at,.L0d990ab8
    ld	$ra,0($sp)
.L0d990a7c:
    # Line 2029
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d990a88:
    jr	$ra
    addiu	$sp,$sp,16
.L0d990a90:
    # Line 2006
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,8960
    jal	sub_0d9a0000
    nop
    andi	$at,$v0,0xff
    # Line 2010
    move	$v0,$zero
    # Line 2006
    bnez	$at,.L0d990a7c
    ld	$ra,0($sp)
    # Line 2010
    b	.L0d990a88
    nop
.L0d990ab8:
    # Line 2029
    jr	$ra
    addiu	$sp,$sp,16
.L0d990ac0:
    # Line 1994
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,5264
    jal	sub_0d9a0000
    nop
    andi	$at,$v0,0xff
    bnez	$at,.L0d990a7c
    ld	$ra,0($sp)
    # Line 1998
    b	.L0d990a88
    move	$v0,$zero
.end ImageChainBuildDepthChain

# Function: ImageChainBuildStencilChain
# Declared: Line 2033 (Source lines: 2034-2084)
# Address: 0x0d990af0 - 0x0d990ba8 (Size: 184 bytes, Frame: 16)
.ent ImageChainBuildStencilChain
ImageChainBuildStencilChain:
    # Line 2034
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 2037
    lw	$at,20($a0)
    lw	$a1,4112($zero)
    lw	$at,56($at)
    lbu	$a3,761($a1)
    lw	$a2,756($a1)
    beqz	$at,.L0d990b84
    lw	$a1,752($a1)
    # Line 2053
    lw	$v0,24($a0)
    lw	$v0,56($v0)
    beqz	$v0,.L0d990b58
    # Line 2061
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 2074
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,13120
    jal	sub_0d9a0000
    nop
    andi	$at,$v0,0xff
    # Line 2079
    move	$v0,$zero
    # Line 2074
    beqz	$at,.L0d990b7c
    ld	$ra,0($sp)
.L0d990b44:
    # Line 2084
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d990b50:
    jr	$ra
    addiu	$sp,$sp,16
.L0d990b58:
    # Line 2061
    addiu	$t9,$t9,10016
    jalr	$t9
    nop
    andi	$at,$v0,0xff
    # Line 2066
    move	$v0,$zero
    # Line 2061
    bnez	$at,.L0d990b44
    ld	$ra,0($sp)
    # Line 2066
    b	.L0d990b50
    nop
.L0d990b7c:
    # Line 2084
    jr	$ra
    addiu	$sp,$sp,16
.L0d990b84:
    # Line 2048
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,7072
    jal	sub_0d9a0000
    nop
    andi	$at,$v0,0xff
    bnez	$at,.L0d990b44
    ld	$ra,0($sp)
    # Line 2053
    b	.L0d990b50
    move	$v0,$zero
.end ImageChainBuildStencilChain

# Function: ImageChainBuildChain
# Declared: Line 2088 (Source lines: 2089-2123)
# Address: 0x0d990bb0 - 0x0d990c54 (Size: 164 bytes, Frame: 16)
.ent ImageChainBuildChain
ImageChainBuildChain:
    # Line 2098
    lw	$a3,16($a0)
    li	$at,1
    # Line 2089
    addiu	$sp,$sp,-16
    # Line 2098
    beq	$a3,$at,.L0d990bfc
    sd	$ra,0($sp)
    li	$v0,2
    beq	$a3,$v0,.L0d990bfc
    move	$ra,$ra
    li	$v1,3
    beq	$a3,$v1,.L0d990bfc
    # Line 2119
    move	$v0,$zero
    # Line 2098
    li	$a1,5
    beq	$a3,$a1,.L0d990c38
    # Line 2107
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 2098
    li	$a2,4
    beq	$a3,$a2,.L0d990c1c
    # Line 2111
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
    # Line 2123
    jr	$ra
    addiu	$sp,$sp,16
.L0d990bfc:
    # Line 2103
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-1616
    bal __glOdysseyImageChainFree
    nop
    ld	$ra,0($sp)
    andi	$v0,$v0,0xff
    # Line 2123
    jr	$ra
    addiu	$sp,$sp,16
.L0d990c1c:
    # Line 2111
    addiu	$t9,$t9,2800
    bal __glOdysseyImageChainFree
    nop
    ld	$ra,0($sp)
    andi	$v0,$v0,0xff
    # Line 2123
    jr	$ra
    addiu	$sp,$sp,16
.L0d990c38:
    # Line 2107
    addiu	$t9,$t9,2608
    bal __glOdysseyImageChainFree
    nop
    ld	$ra,0($sp)
    andi	$v0,$v0,0xff
    # Line 2123
    jr	$ra
    addiu	$sp,$sp,16
.end ImageChainBuildChain

# Function: ImageChainAddOpTextureColor
# Declared: Line 2131 (Source lines: 2132-2163)
# Address: 0x0d990c60 - 0x0d990ce8 (Size: 136 bytes, Frame: 32)
.ent ImageChainAddOpTextureColor
ImageChainAddOpTextureColor:
    # Line 2132
    addiu	$sp,$sp,-32
    # Line 2138
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2132
    sd	$a0,0($sp)
    sd	$a1,8($sp)
    # Line 2138
    addiu	$t9,$t9,-3824
    sd	$ra,24($sp)
    bal __glOdysseyImageChainFree
    # Line 2132
    sd	$a2,16($sp)
    # Line 2138
    bnez	$v0,.L0d990c98
    # Line 2160
    ld	$a3,16($sp)
    # Line 2163
    ld	$ra,24($sp)
    # Line 2140
    move	$v0,$zero
    # Line 2163
    jr	$ra
    addiu	$sp,$sp,32
.L0d990c98:
    # Line 2160
    ld	$a2,8($sp)
    ld	$a0,0($sp)
    # Line 2144
    li	$ra,2
    sw	$ra,0($v0)
    # Line 2154
    lw	$v1,8($v0)
    # Line 2160
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2157
    li	$at,1
    sw	$at,12($v0)
    # Line 2147
    la	$at,sub_0d990000
    # Line 2160
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 2154
    ori	$v1,$v1,0x2c
    sw	$v1,8($v0)
    # Line 2147
    addiu	$at,$at,3312
    # Line 2160
    bal __glOdysseyImageChainFree
    # Line 2147
    sw	$at,4($v0)
    # Line 2163
    ld	$ra,24($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpTextureColor

# Function: RenderFunc_TextureColor
# Declared: Line 2167 (Source lines: 2168-2187)
# Address: 0x0d990cf0 - 0x0d990d38 (Size: 72 bytes, Frame: 16)
.ent RenderFunc_TextureColor
RenderFunc_TextureColor:
    # Line 2168
    lui	$v0,0x16
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,30880
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 2181
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 2168
    move	$at,$a0
    # Line 2181
    lw	$a0,72($a0)
    li	$a3,1
    # Line 2168
    sd	$ra,0($sp)
    move	$a2,$a1
    # Line 2181
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($at)
    ld	$ra,0($sp)
    # Line 2187
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end RenderFunc_TextureColor

# Function: ImageChainAddOpCopyColor
# Declared: Line 2192 (Source lines: 2193-2223)
# Address: 0x0d990d40 - 0x0d990dc8 (Size: 136 bytes, Frame: 32)
.ent ImageChainAddOpCopyColor
ImageChainAddOpCopyColor:
    # Line 2193
    addiu	$sp,$sp,-32
    # Line 2199
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2193
    sd	$a0,0($sp)
    sd	$a1,8($sp)
    # Line 2199
    addiu	$t9,$t9,-3824
    sd	$ra,24($sp)
    bal __glOdysseyImageChainFree
    # Line 2193
    sd	$a2,16($sp)
    # Line 2199
    bnez	$v0,.L0d990d78
    # Line 2220
    ld	$a3,16($sp)
    # Line 2223
    ld	$ra,24($sp)
    # Line 2201
    move	$v0,$zero
    # Line 2223
    jr	$ra
    addiu	$sp,$sp,32
.L0d990d78:
    # Line 2220
    ld	$a2,8($sp)
    ld	$a0,0($sp)
    # Line 2205
    li	$ra,3
    sw	$ra,0($v0)
    # Line 2215
    lw	$v1,8($v0)
    # Line 2220
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2217
    li	$at,1
    sw	$at,12($v0)
    # Line 2208
    la	$at,sub_0d990000
    # Line 2220
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 2215
    ori	$v1,$v1,0xc
    sw	$v1,8($v0)
    # Line 2208
    addiu	$at,$at,3536
    # Line 2220
    bal __glOdysseyImageChainFree
    # Line 2208
    sw	$at,4($v0)
    # Line 2223
    ld	$ra,24($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpCopyColor

# Function: RenderFunc_CopyColor
# Declared: Line 2227 (Source lines: 2228-2246)
# Address: 0x0d990dd0 - 0x0d990e1c (Size: 76 bytes, Frame: 16)
.ent RenderFunc_CopyColor
RenderFunc_CopyColor:
    # Line 2228
    lui	$v0,0x16
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,30656
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 2240
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2228
    move	$at,$a0
    # Line 2240
    lw	$a0,72($a0)
    li	$a4,1
    move	$a3,$zero
    # Line 2228
    sd	$ra,0($sp)
    move	$a2,$a1
    # Line 2240
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($at)
    ld	$ra,0($sp)
    # Line 2246
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end RenderFunc_CopyColor

# Function: ImageChainAddOpLut
# Declared: Line 2262 (Source lines: 2263-2293)
# Address: 0x0d990e20 - 0x0d990eb0 (Size: 144 bytes, Frame: 32)
.ent ImageChainAddOpLut
ImageChainAddOpLut:
    # Line 2269
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2263
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    # Line 2269
    addiu	$t9,$t9,-3824
    sd	$ra,16($sp)
    bal __glOdysseyImageChainFree
    # Line 2263
    sd	$a1,8($sp)
    # Line 2269
    bnez	$v0,.L0d990e54
    # Line 2287
    li	$a4,1
    # Line 2293
    ld	$ra,16($sp)
    # Line 2271
    move	$v0,$zero
    # Line 2293
    jr	$ra
    addiu	$sp,$sp,32
.L0d990e54:
    # Line 2287
    sw	$a4,12($v0)
    # Line 2275
    li	$a0,7
    sw	$a0,0($v0)
    # Line 2278
    ld	$v1,8($sp)
    sw	$v1,56($v0)
    # Line 2290
    ld	$a2,0($sp)
    # Line 2281
    la	$at,sub_0d990000
    # Line 2290
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 2284
    lw	$ra,8($v0)
    # Line 2281
    addiu	$at,$at,3760
    sw	$at,4($v0)
    # Line 2290
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 2284
    ori	$ra,$ra,0xe
    sw	$ra,8($v0)
    # Line 2290
    move	$a0,$a2
    bal __glOdysseyImageChainFree
    lw	$a2,8($a2)
    # Line 2293
    ld	$ra,16($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpLut

# Function: RenderFunc_Lut
# Declared: Line 2310 (Source lines: 2311-2457)
# Address: 0x0d990eb0 - 0x0d9915b8 (Size: 1800 bytes, Frame: 208)
.ent RenderFunc_Lut
RenderFunc_Lut:
    # Line 2311
    addiu	$sp,$sp,-2256
    sd	$s1,2168($sp)
    # Line 2314
    sw	$zero,0($sp)
    # Line 2338
    lw	$t0,56($a0)
    sd	$s8,2184($sp)
    sd	$s0,2192($sp)
    sll	$a7,$t0,0x7
    sd	$s5,2200($sp)
    addu	$a7,$a7,$t0
    sd	$ra,2208($sp)
    sll	$a7,$a7,0x2
    # Line 2323
    lw	$a6,4112($zero)
    # Line 2338
    subu	$a7,$a7,$t0
    sd	$s7,2216($sp)
    sll	$a7,$a7,0x2
    sd	$s4,2224($sp)
    li	$t0,0xa744
    addu	$a7,$a6,$a7
    sd	$s3,2232($sp)
    addu	$a7,$a7,$t0
    li	$a2,2
    # Line 2311
    lui	$v0,0x16
    # Line 2338
    lw	$a4,2052($a7)
    sd	$s2,2240($sp)
    li	$at,1
    # Line 2311
    addiu	$v0,$v0,30432
    move	$t1,$a0
    sd	$gp,2128($sp)
    addu	$gp,$t9,$v0
    sd	$s6,2176($sp)
    # Line 2338
    bne	$a4,$at,.L0d991338
    # Line 2311
    move	$t0,$a1
    sd	$a6,2088($sp)
    sd	$t1,2112($sp)
    sd	$t0,2104($sp)
    sd	$a7,2096($sp)
    # Line 2345
    lw	$v1,31964($a6)
    lw	$s8,31956($a6)
    addiu	$v0,$sp,8
    sw	$s8,16($v0)
    sw	$v1,24($v0)
    lw	$t9,31952($a6)
    lw	$t8,31948($a6)
    # Line 2346
    lui	$ra,0x1
    addu	$ra,$a6,$ra
    sd	$ra,2120($sp)
    li	$s0,0x20
    # Line 2345
    sw	$t8,8($v0)
    # Line 2346
    li	$a5,512
    addiu	$a1,$sp,40
    # Line 2345
    sw	$t9,12($v0)
    # Line 2346
    move	$a4,$zero
    addiu	$s1,$a1,28
    # Line 2345
    lw	$at,31960($a6)
    addiu	$a0,$a1,4
    addiu	$a2,$a1,8
    sw	$at,20($v0)
    addiu	$s5,$a1,12
    addiu	$s3,$a1,20
    lw	$at,31944($a6)
    addiu	$s2,$ra,-29288
    addiu	$s7,$ra,-29304
    sw	$at,4($v0)
    lw	$at,31940($a6)
    addiu	$s4,$ra,-29296
    addiu	$t9,$ra,-29292
    addiu	$t8,$ra,-29300
    # Line 2346
    addiu	$ra,$ra,-29316
    # Line 2345
    sw	$at,8($sp)
    addiu	$s6,$a1,24
    addiu	$t3,$ra,8
    sd	$t3,2152($sp)
    addiu	$s8,$a1,16
    addiu	$t2,$ra,4
    sd	$t2,2160($sp)
    nop
.L0d990fe0:
    # Line 2346
    addu	$a3,$a4,$s2
    addu	$a7,$a4,$t9
    lw	$a3,0($a3)
    addu	$t1,$a4,$s4
    lw	$a7,0($a7)
    addu	$t3,$a4,$t8
    lw	$t1,0($t1)
    addu	$v0,$a4,$s7
    lw	$t3,0($t3)
    lw	$v0,0($v0)
    addu	$v1,$a4,$ra
    lw	$v1,0($v1)
    ld	$a6,2152($sp)
    addu	$t0,$a4,$a1
    ld	$t2,2160($sp)
    sw	$v1,0($t0)
    addu	$a6,$a4,$a6
    addu	$t2,$a4,$t2
    lw	$a6,0($a6)
    addu	$at,$a4,$a0
    lw	$t2,0($t2)
    addu	$t0,$a4,$a2
    sw	$t2,0($at)
    addu	$v1,$a4,$s5
    sw	$a6,0($t0)
    sw	$v0,0($v1)
    addu	$at,$a4,$s8
    addu	$t2,$a4,$s3
    sw	$t3,0($at)
    addiu	$a5,$a5,-8
    addu	$t0,$a4,$s6
    sw	$t1,0($t2)
    addu	$a6,$a4,$s1
    sw	$a7,0($t0)
    addu	$a4,$a4,$s0
    bgtz	$a5,.L0d990fe0
    sw	$a3,0($a6)
    li	$t2,0x20
    ld	$ra,2120($sp)
    # Line 2349
    li	$a5,512
    move	$a4,$zero
    addiu	$t3,$ra,-29288
    addiu	$s5,$ra,-29316
    addiu	$s4,$ra,-29312
    addiu	$s1,$ra,-29308
    addiu	$s3,$ra,-29304
    addiu	$t0,$ra,-29296
    ld	$s6,2096($sp)
    addiu	$t8,$ra,-29292
    addiu	$ra,$ra,-29300
    addiu	$t1,$s6,32
    addiu	$a6,$s6,16
    addiu	$a7,$s6,24
    addiu	$t9,$s6,28
    addiu	$s0,$s6,20
    addiu	$s6,$s6,4
    addiu	$s2,$s6,8
    addiu	$s7,$s6,4
    nop
    nop
.L0d9910d0:
    addu	$at,$a4,$s6
    addu	$v0,$a4,$s5
    lw	$at,0($at)
    addu	$a3,$a4,$s7
    sw	$at,0($v0)
    addu	$at,$a4,$s4
    lw	$a3,0($a3)
    addu	$a2,$a4,$s2
    sw	$a3,0($at)
    addu	$a3,$a4,$s1
    lw	$a2,0($a2)
    addu	$a1,$a4,$a6
    sw	$a2,0($a3)
    addu	$a2,$a4,$s3
    lw	$a1,0($a1)
    addu	$a0,$a4,$s0
    sw	$a1,0($a2)
    addu	$a1,$a4,$ra
    lw	$a0,0($a0)
    addu	$v1,$a4,$a7
    sw	$a0,0($a1)
    addu	$a0,$a4,$t0
    lw	$v1,0($v1)
    addu	$v0,$a4,$t9
    sw	$v1,0($a0)
    addu	$v1,$a4,$t8
    lw	$v0,0($v0)
    addiu	$a5,$a5,-8
    addu	$at,$a4,$t1
    sw	$v0,0($v1)
    addu	$v0,$a4,$t3
    lw	$at,0($at)
    addu	$a4,$a4,$t2
    bgtz	$a5,.L0d9910d0
    sw	$at,0($v0)
    # Line 2350
    ld	$a5,2120($sp)
    lw	$a7,26976($a5)
    lui	$t0,0x40
    or	$a7,$a7,$t0
    sw	$a7,26976($a5)
    # Line 2353
    ld	$a7,2088($sp)
    # Line 2350
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 2353
    lw	$a6,31956($a7)
    # Line 2354
    ld	$t0,2096($sp)
    # Line 2353
    ori	$a6,$a6,0x1
    sw	$a6,31956($a7)
    # Line 2354
    lw	$t0,2056($t0)
    lui	$t1,0x70
    nor	$t2,$t1,$zero
    sll	$t0,$t0,0x14
    and	$a6,$a6,$t2
    and	$t0,$t0,$t1
    or	$a6,$a6,$t0
    sw	$a6,31956($a7)
    # Line 2356
    lw	$a4,26976($a5)
    ld	$a0,2112($sp)
    ori	$a4,$a4,0x200
    sw	$a4,26976($a5)
    sw	$a3,4120($zero)
    lw	$a1,68($a0)
    lw	$a2,56($a1)
    beqz	$a2,.L0d9914f8
    lw	$a0,72($a0)
    # Line 2361
    lbu	$t1,11($a1)
    beqz	$t1,.L0d9914dc
    # Line 2368
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    ld	$a2,2104($sp)
    jal	__glOdysseyImageMovePixelsTexture
    li	$a3,1
    # Line 2378
    lw	$a4,8($sp)
.L0d9911ec:
    ld	$v1,2088($sp)
    addiu	$v0,$sp,8
    lw	$at,20($v0)
    # Line 2379
    addiu	$s4,$sp,40
    # Line 2378
    sw	$at,31960($v1)
    addiu	$at,$s4,4
    sd	$at,2136($sp)
    ld	$t9,2120($sp)
    lw	$a0,24($v0)
    sw	$a4,31940($v1)
    lw	$a4,16($v0)
    addiu	$a3,$t9,-29312
    sd	$a3,2144($sp)
    li	$s5,0x20
    # Line 2379
    li	$a2,512
    # Line 2378
    lw	$a3,12($v0)
    # Line 2379
    move	$a1,$zero
    addiu	$t3,$s4,28
    # Line 2378
    sw	$a0,31964($v1)
    addiu	$t1,$s4,8
    addiu	$s0,$s4,12
    lw	$a0,8($v0)
    addiu	$s3,$s4,20
    addiu	$s1,$s4,24
    lw	$v0,4($v0)
    addiu	$t8,$s4,16
    addiu	$s7,$t9,-29288
    sw	$a4,31956($v1)
    # Line 2379
    addiu	$s6,$t9,-29316
    addiu	$t2,$t9,-29308
    # Line 2378
    sw	$a3,31952($v1)
    addiu	$s8,$t9,-29304
    addiu	$ra,$t9,-29296
    sw	$a0,31948($v1)
    addiu	$s2,$t9,-29292
    addiu	$t9,$t9,-29300
    sw	$v0,31944($v1)
.L0d991280:
    # Line 2379
    addu	$a5,$a1,$t3
    addu	$a7,$a1,$s1
    lw	$a5,0($a5)
    addu	$at,$a1,$s3
    lw	$a7,0($a7)
    addu	$v1,$a1,$t8
    lw	$at,0($at)
    addu	$a3,$a1,$s0
    lw	$v1,0($v1)
    lw	$a3,0($a3)
    addu	$a6,$a1,$t1
    lw	$a6,0($a6)
    ld	$a0,2144($sp)
    addu	$a4,$a1,$s4
    ld	$v0,2136($sp)
    addu	$t0,$a1,$s6
    lw	$a4,0($a4)
    sw	$a4,0($t0)
    addu	$v0,$a1,$v0
    addu	$a0,$a1,$a0
    lw	$v0,0($v0)
    addu	$t0,$a1,$t2
    sw	$v0,0($a0)
    addu	$a4,$a1,$s8
    sw	$a6,0($t0)
    sw	$a3,0($a4)
    addu	$a0,$a1,$t9
    addu	$v0,$a1,$ra
    sw	$v1,0($a0)
    addiu	$a2,$a2,-8
    addu	$t0,$a1,$s2
    sw	$at,0($v0)
    addu	$a6,$a1,$s7
    sw	$a7,0($t0)
    addu	$a1,$a1,$s5
    bgtz	$a2,.L0d991280
    sw	$a5,0($a6)
    # Line 2380
    ld	$t0,2120($sp)
    lui	$t1,0x40
    lw	$a7,26976($t0)
    ori	$t1,$t1,0x200
    or	$a7,$a7,$t1
    sw	$a7,26976($t0)
    li	$a6,2
    b	.L0d99134c
    sw	$a6,4120($zero)
.L0d991338:
    sd	$a0,2112($sp)
    sd	$a1,2104($sp)
    sd	$a7,2096($sp)
    beq	$a4,$a2,.L0d991384
    sd	$a6,2088($sp)
.L0d99134c:
    ld	$s1,2168($sp)
    ld	$s8,2184($sp)
    ld	$s0,2192($sp)
    ld	$s5,2200($sp)
    ld	$s7,2216($sp)
    ld	$s4,2224($sp)
    ld	$s3,2232($sp)
    ld	$ra,2208($sp)
    ld	$s2,2240($sp)
    # Line 2457
    li	$v0,1
    ld	$s6,2176($sp)
    ld	$gp,2128($sp)
    jr	$ra
    addiu	$sp,$sp,2256
.L0d991384:
    # Line 2392
    ld	$a1,2096($sp)
    # Line 2388
    ld	$a0,2088($sp)
    # Line 2392
    lw	$a1,0($a1)
    # Line 2388
    lw	$s1,31744($a0)
    # Line 2386
    lui	$s0,0x1
    # Line 2392
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    li	$a5,1
    # Line 2386
    addu	$s3,$s0,$a0
    sd	$s3,2120($sp)
    # Line 2392
    addiu	$a4,$sp,0
    move	$a3,$zero
    # Line 2387
    lw	$s2,-26592($s3)
    # Line 2392
    move	$a2,$zero
    jal	__glOdysseyOpenPMObjReference
    # Line 2386
    lw	$s3,-26596($s3)
    # Line 2392
    beqz	$v0,.L0d991530
    # Line 2412
    ld	$a0,2088($sp)
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    # Line 2405
    lw	$ra,0($sp)
    ld	$a7,2120($sp)
    # Line 2406
    ld	$a1,2096($sp)
    # Line 2405
    sw	$ra,-26596($a7)
    # Line 2406
    lw	$t8,2056($a1)
    # Line 2409
    lui	$t3,0x1
    # Line 2406
    sw	$t8,-26592($a7)
    # Line 2409
    ori	$a6,$t3,0x443
    sw	$a6,0($s0)
    li	$a5,250
    sw	$a5,0($s0)
    ori	$a4,$t3,0x46
    sw	$a4,0($s0)
    sw	$a4,0($s0)
    ori	$t3,$t3,0x842
    sw	$t3,0($s0)
    lw	$t2,-26596($a7)
    sw	$t2,0($s0)
    lw	$t1,-26592($a7)
    sw	$t1,0($s0)
    sw	$a6,0($s0)
    li	$t0,150
    sw	$t0,0($s0)
    sw	$a4,0($s0)
    sw	$a4,0($s0)
    sw	$a4,0($s0)
    sw	$a4,0($s0)
    sw	$zero,-26576($a7)
    sw	$a6,0($s0)
    sw	$a5,0($s0)
    sw	$a4,0($s0)
    # Line 2412
    move	$a3,$zero
    # Line 2409
    sw	$a4,0($s0)
    # Line 2412
    move	$a2,$zero
    jal	__glOdysseyClosePMObjReference
    lw	$a1,0($a1)
    beqz	$v0,.L0d991574
    # Line 2423
    ld	$a6,2088($sp)
    lw	$a5,31744($a6)
    ori	$a5,$a5,0x40
    sw	$a5,31744($a6)
    # Line 2424
    ld	$a5,2120($sp)
    lw	$a4,26976($a5)
    ld	$a0,2112($sp)
    ori	$a4,$a4,0x4
    sw	$a4,26976($a5)
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a1,68($a0)
    lw	$a2,56($a1)
    beqz	$a2,.L0d991514
    lw	$a0,72($a0)
    # Line 2434
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    ld	$a2,2104($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 2446
    ld	$t0,2120($sp)
.L0d9914b4:
    # Line 2453
    ld	$t1,2088($sp)
    # Line 2447
    sw	$s2,-26592($t0)
    # Line 2446
    sw	$s3,-26596($t0)
    # Line 2453
    sw	$s1,31744($t1)
    # Line 2454
    lw	$a7,26976($t0)
    ori	$a7,$a7,0x4
    sw	$a7,26976($t0)
    li	$a6,2
    b	.L0d99134c
    sw	$a6,4120($zero)
.L0d9914dc:
    # Line 2372
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    ld	$a2,2104($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    b	.L0d9911ec
    # Line 2378
    lw	$a4,8($sp)
.L0d9914f8:
    # Line 2361
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    li	$a4,1
    ld	$a2,2104($sp)
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    li	$a3,1
    b	.L0d9911ec
    # Line 2378
    lw	$a4,8($sp)
.L0d991514:
    # Line 2429
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    li	$a4,1
    ld	$a2,2104($sp)
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    li	$a3,1
    b	.L0d9914b4
    # Line 2446
    ld	$t0,2120($sp)
.L0d991530:
    ld	$s2,2240($sp)
    ld	$s3,2232($sp)
    ld	$s4,2224($sp)
    ld	$s7,2216($sp)
    ld	$s5,2200($sp)
    ld	$s0,2192($sp)
    # Line 2402
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s8,2184($sp)
    ld	$s1,2168($sp)
    ld	$s6,2176($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,2208($sp)
    # Line 2403
    move	$v0,$zero
    # Line 2457
    ld	$gp,2128($sp)
    jr	$ra
    addiu	$sp,$sp,2256
.L0d991574:
    ld	$s2,2240($sp)
    ld	$s3,2232($sp)
    ld	$s4,2224($sp)
    ld	$s7,2216($sp)
    ld	$s5,2200($sp)
    ld	$s0,2192($sp)
    # Line 2419
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s8,2184($sp)
    ld	$s6,2176($sp)
    ld	$s1,2168($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,2208($sp)
    # Line 2420
    move	$v0,$zero
    # Line 2457
    ld	$gp,2128($sp)
    jr	$ra
    addiu	$sp,$sp,2256
.end RenderFunc_Lut

# Function: __glOdysseyClearScratchBuffer
# Declared: Line 2465 (Source lines: 2466-2572)
# Address: 0x0d9915c0 - 0x0d9918ac (Size: 748 bytes, Frame: 160)
.globl __glOdysseyClearScratchBuffer
.ent __glOdysseyClearScratchBuffer
__glOdysseyClearScratchBuffer:
    # Line 2466
    addiu	$sp,$sp,-160
    sd	$s0,136($sp)
    # Line 2470
    sw	$zero,16($sp)
    # Line 2480
    lw	$s0,4112($zero)
    # Line 2475
    lw	$a2,36($a0)
    # Line 2473
    lw	$a6,24($a0)
    # Line 2474
    lw	$a7,32($a0)
    # Line 2472
    lw	$a4,20($a0)
    # Line 2466
    lui	$at,0x16
    # Line 2471
    lw	$a5,16($a0)
    # Line 2466
    addiu	$at,$at,28624
    sd	$gp,144($sp)
    # Line 2481
    blez	$a7,.L0d991870
    # Line 2466
    addu	$gp,$t9,$at
    sd	$a2,80($sp)
    sd	$a1,128($sp)
    sd	$a7,120($sp)
    sd	$a0,112($sp)
    sd	$a6,104($sp)
    sd	$a5,96($sp)
    # Line 2481
    blez	$a2,.L0d991870
    sd	$a4,88($sp)
    # Line 2493
    ld	$a2,88($sp)
    sd	$ra,152($sp)
    # Line 2486
    lw	$t8,31740($s0)
    sd	$s1,72($sp)
    # Line 2488
    lui	$s1,0x1
    # Line 2486
    sd	$t8,24($sp)
    # Line 2488
    addu	$s1,$s1,$s0
    lw	$v0,-26980($s1)
    lw	$a0,-26972($s1)
    lw	$v1,-26976($s1)
    lw	$a1,-26968($s1)
    sd	$a1,64($sp)
    # Line 2493
    ld	$a1,96($sp)
    # Line 2487
    lw	$t9,31836($s0)
    sd	$t9,40($sp)
    # Line 2493
    # lw $t9, -30964($gp) # &__glOdysseyOpenPMObjWriteReference
    # Line 2488
    sd	$v1,56($sp)
    # Line 2493
    li	$a4,1
    addiu	$a3,$sp,16
    # Line 2488
    sd	$a0,32($sp)
    # Line 2493
    move	$a0,$s0
    jal	__glOdysseyOpenPMObjWriteReference
    sd	$v0,48($sp)
    beqz	$v0,.L0d991894
    lui	$a2,0x1
    # Line 2516
    li	$at,4095
    sw	$at,31776($s0)
    # Line 2517
    sw	$at,31780($s0)
    lw	$ra,-26576($s1)
    # Line 2519
    ori	$v0,$a2,0x46
    # Line 2517
    beqz	$ra,.L0d9916b0
    # Line 2519
    ori	$a0,$a2,0x443
    sw	$zero,-26576($s1)
    sw	$a0,0($a2)
    li	$v1,250
    sw	$v1,0($a2)
    sw	$v0,0($a2)
    sw	$v0,0($a2)
.L0d9916b0:
    lui	$ra,0x1
    ori	$ra,$ra,0x81d
    sw	$ra,0($a2)
    lw	$t9,31776($s0)
    sw	$t9,0($a2)
    lw	$t8,31780($s0)
    sw	$t8,0($a2)
    # Line 2521
    lw	$t3,26980($s1)
    # Line 2524
    ld	$t2,104($sp)
    # Line 2521
    ori	$t3,$t3,0x2000
    sw	$t3,26980($s1)
    li	$a1,2
    sw	$a1,4120($zero)
    # Line 2524
    lw	$t1,16($sp)
    addu	$t1,$t1,$t2
    sw	$t1,16($sp)
    # Line 2529
    lw	$a7,31836($s0)
    # Line 2530
    lui	$a6,0x20
    # Line 2529
    lui	$t0,0x10
    or	$a7,$a7,$t0
    # Line 2533
    lui	$t0,0x100
    # Line 2530
    or	$a6,$a6,$a7
    # Line 2531
    lui	$a7,0x40
    or	$a6,$a6,$a7
    # Line 2532
    lui	$a7,0x80
    or	$a6,$a6,$a7
    # Line 2534
    lui	$a7,0xf
    # Line 2533
    nor	$t0,$t0,$zero
    # Line 2534
    ori	$a7,$a7,0xf000
    # Line 2533
    and	$a6,$a6,$t0
    # Line 2534
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    # Line 2535
    li	$a7,-4096
    and	$a6,$a6,$a7
    sw	$a6,31836($s0)
    # Line 2536
    lw	$a5,26976($s1)
    ori	$a5,$a5,0x80
    sw	$a5,26976($s1)
    sw	$a1,4120($zero)
    # Line 2539
    lui	$a4,0x4
    lw	$a3,31740($s0)
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    sw	$a3,31740($s0)
    # Line 2540
    lw	$a2,26976($s1)
    # Line 2547
    # lw $t9, -31180($gp) # &__glOdysseyImageCalcPixelModeFields
    # Line 2540
    ori	$a2,$a2,0x2
    sw	$a2,26976($s1)
    sw	$a1,4120($zero)
    # Line 2547
    li	$a0,0x969c
    # Line 2545
    lw	$a2,-26980($s1)
    # Line 2547
    addu	$a0,$s0,$a0
    # Line 2545
    lui	$a4,0x1fff
    lw	$a3,16($sp)
    lui	$a5,0xe000
    ori	$a4,$a4,0xffff
    # Line 2547
    ld	$a1,112($sp)
    # Line 2545
    and	$a3,$a3,$a4
    and	$a2,$a2,$a5
    or	$a2,$a2,$a3
    # Line 2547
    jal	__glOdysseyImageCalcPixelModeFields
    # Line 2545
    sw	$a2,-26980($s1)
    # Line 2550
    ld	$a7,80($sp)
    ld	$a6,120($sp)
    ld	$a1,128($sp)
    move	$a5,$zero
    move	$a4,$zero
    # Line 2548
    lw	$a0,26976($s1)
    # Line 2550
    move	$a3,$zero
    # Line 2548
    lui	$v1,0x20
    # Line 2550
    # lw $t9, -32168($gp) # &__glOdysseyClear
    mtc1	$zero,$f14
    # Line 2548
    or	$v1,$v1,$a0
    sw	$v1,26976($s1)
    # Line 2550
    li	$at,1
    # Line 2548
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 2550
    move	$a0,$s0
    jal	__glOdysseyClear
    sw	$at,4($sp)
    # Line 2554
    # lw $t9, -30960($gp) # &__glOdysseyClosePMObjWriteReference
    ld	$a1,96($sp)
    move	$a0,$s0
    jal	__glOdysseyClosePMObjWriteReference
    ld	$a2,88($sp)
    beqz	$v0,.L0d991880
    # Line 2559
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2572
    ld	$gp,144($sp)
    # Line 2568
    ld	$a7,48($sp)
    ld	$a6,56($sp)
    ld	$a5,32($sp)
    ld	$a4,64($sp)
    # Line 2567
    ld	$t0,40($sp)
    # Line 2566
    ld	$t1,24($sp)
    sw	$t1,31740($s0)
    # Line 2567
    sw	$t0,31836($s0)
    # Line 2572
    ld	$s0,136($sp)
    # Line 2568
    sw	$a4,-26968($s1)
    sw	$a5,-26972($s1)
    sw	$a6,-26976($s1)
    sw	$a7,-26980($s1)
    # Line 2569
    lui	$a3,0x20
    lw	$a2,26976($s1)
    ori	$a3,$a3,0x82
    ld	$ra,152($sp)
    or	$a2,$a2,$a3
    sw	$a2,26976($s1)
    li	$a1,2
    sw	$a1,4120($zero)
    # Line 2572
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d991870:
    ld	$s0,136($sp)
    ld	$gp,144($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d991880:
    ld	$s1,72($sp)
    # Line 2559
    jal	__glSetError
    li	$a0,1285
    b	.L0d991870
    ld	$ra,152($sp)
.L0d991894:
    # Line 2499
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s1,72($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d991870
    ld	$ra,152($sp)
.end __glOdysseyClearScratchBuffer

# Function: ImageChainAddOpConvolve
# Declared: Line 2575 (Source lines: 2577-2871)
# Address: 0x0d9918b0 - 0x0d99274c (Size: 3740 bytes, Frame: 160)
.ent ImageChainAddOpConvolve
ImageChainAddOpConvolve:
    # Line 2577
    addiu	$sp,$sp,-160
    sd	$a0,72($sp)
    sd	$a3,80($sp)
    sdc1	$f22,120($sp)
    sd	$s1,136($sp)
    sd	$s4,144($sp)
    sd	$ra,152($sp)
    sd	$s5,96($sp)
    # Line 2585
    mtc1	$zero,$f0
    # Line 2577
    sd	$s2,112($sp)
    # Line 2603
    swc1	$f0,0($sp)
    swc1	$f0,4($sp)
    swc1	$f0,8($sp)
    swc1	$f0,12($sp)
    # Line 2596
    lw	$v0,4112($zero)
    # Line 2577
    sd	$s3,88($sp)
    # Line 2604
    lw	$s3,764($v0)
    # Line 2577
    sd	$s0,104($sp)
    # Line 2606
    lw	$t9,68($s3)
    # Line 2605
    lw	$t8,64($s3)
    # Line 2577
    sdc1	$f24,24($sp)
    # Line 2606
    mtc1	$t9,$f24
    # Line 2607
    lui	$s0,0x1
    # Line 2577
    sdc1	$f20,32($sp)
    # Line 2605
    mtc1	$t8,$f20
    # Line 2607
    addu	$s0,$v0,$s0
    # Line 2604
    lw	$s3,80($s3)
    # Line 2577
    move	$s2,$a1
    # Line 2608
    sb	$zero,7147($s0)
    # Line 2606
    cvt.s.w	$f24,$f24
    # Line 2577
    move	$s5,$a2
    # Line 2607
    sb	$zero,7120($s0)
    # Line 2610
    beqz	$a1,.L0d991e80
    # Line 2605
    cvt.s.w	$f20,$f20
    # Line 2610
    li	$ra,0x8010
    beq	$a1,$ra,.L0d991e80
    li	$at,0x8012
    c.eq.s	$f20,$f0
    lwc1	$f22,_lit_3f000000
    li	$a2,1
    beq	$a1,$at,.L0d992250
    movf	$a2,$zero,$fcc0
    # Line 2756
    c.eq.s $f24,$f0
    li	$a1,1
    beqz	$a2,.L0d992310
    movf	$a1,$zero,$fcc1
    # Line 2759
    lw	$v1,764($v0)
    lwc1	$f20,_lit_3f800000
    li	$s1,1
    beqz	$a1,.L0d991988
    sw	$s1,64($v1)
.L0d99197c:
    # Line 2761
    lw	$a0,764($v0)
    lwc1	$f24,_lit_3f800000
    sw	$s1,68($a0)
.L0d991988:
    # Line 2763
    sb	$s1,7147($s0)
.L0d99198c:
    # Line 2767
    # lw $t9, -17032($gp) # &ceilf
.L0d991990:
    jal	ceilf
    mul.s	$f12,$f20,$f22
    # lw $t9, -17032($gp) # &ceilf
    sdc1	$f0,16($sp)
    jal	ceilf
    mul.s	$f12,$f24,$f22
    ldc1	$f12,16($sp)
    # lw $t9, -17032($gp) # &ceilf
    mul.s	$f12,$f12,$f0
    jal	ceilf
    mul.s	$f12,$f22,$f12
    trunc.l.s	$f13,$f0
    # Line 2769
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2767
    dmfc1	$s1,$f13
    # Line 2769
    addiu	$t9,$t9,-3824
    # Line 2767
    sll	$s1,$s1,0x0
    # Line 2769
    bal __glOdysseyImageChainFree
    # Line 2767
    sd	$s1,56($sp)
    # Line 2769
    bnez	$v0,.L0d991a14
    move	$s4,$v0
    ld	$s4,144($sp)
    ld	$s1,136($sp)
    ldc1	$f22,120($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    # Line 2771
    move	$v0,$zero
    # Line 2871
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d991a14:
    # Line 2773
    # lw $t9, -32728($gp) # &sub_0d990000
    ld	$a1,56($sp)
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    bal __glOdysseyImageChainFree
    addiu	$a1,$a1,1
    lw	$ra,20($s4)
    beqz	$ra,.L0d992364
    # Line 2779
    mtc1	$zero,$f8
    mul.s	$f22,$f24,$f20
    c.lt.s $f8,$f22
    bc1f .L0d992398
    sd	$s1,64($sp)
    move	$a7,$s3
    move	$t1,$zero
    li	$s1,1
    dmtc1	$zero,$f0
    nop
    nop
    addiu	$t0,$sp,0
.L0d991a64:
    # Line 2781
    lwc1	$f15,0($a7)
    lwc1	$f14,0($sp)
    cvt.d.s	$f16,$f15
    abs.s	$f15,$f15
    cvt.d.s	$f14,$f14
    cvt.d.s	$f15,$f15
    c.lt.d $f16,$f0
    add.d	$f14,$f14,$f15
    cvt.s.d	$f14,$f14
    bc1f .L0d991a94
    swc1	$f14,0($sp)
    # Line 2783
    sb	$s1,7122($s0)
.L0d991a94:
    # Line 2781
    lwc1	$f17,4($a7)
    lwc1	$f16,4($t0)
    cvt.d.s	$f18,$f17
    abs.s	$f17,$f17
    cvt.d.s	$f16,$f16
    cvt.d.s	$f17,$f17
    c.lt.d $f18,$f0
    lwc1	$f18,8($t0)
    add.d	$f16,$f16,$f17
    # Line 2779
    addiu	$t1,$t1,1
    dsll32	$at,$t1,0x0
    # Line 2781
    cvt.s.d	$f16,$f16
    # Line 2779
    dsrl32	$at,$at,0x0
    # Line 2781
    cvt.d.s	$f18,$f18
    bc1f .L0d991ad8
    swc1	$f16,4($t0)
    # Line 2783
    sb	$s1,7122($s0)
.L0d991ad8:
    # Line 2781
    lwc1	$f19,8($a7)
    cvt.d.s	$f21,$f19
    abs.s	$f19,$f19
    cvt.d.s	$f19,$f19
    c.lt.d $f21,$f0
    lwc1	$f21,12($t0)
    add.d	$f18,$f18,$f19
    cvt.s.d	$f18,$f18
    cvt.d.s	$f21,$f21
    bc1f .L0d991b08
    swc1	$f18,8($t0)
    # Line 2783
    sb	$s1,7122($s0)
.L0d991b08:
    # Line 2781
    lwc1	$f23,12($a7)
    cvt.d.s	$f25,$f23
    abs.s	$f23,$f23
    c.lt.d $f25,$f0
    # Line 2779
    dmtc1	$at,$f25
    # Line 2781
    cvt.d.s	$f23,$f23
    # Line 2779
    cvt.s.l	$f25,$f25
    # Line 2781
    add.d	$f21,$f21,$f23
    cvt.s.d	$f21,$f21
    # Line 2779
    addiu	$a7,$a7,16
    # Line 2781
    swc1	$f21,12($t0)
    bc1f .L0d991b40
    # Line 2779
    c.lt.s $f25,$f22
    # Line 2783
    sb	$s1,7122($s0)
.L0d991b40:
    # Line 2779
    bc1t .L0d991a64
    addiu	$t0,$sp,0
.L0d991b48:
    # Line 2787
    lwc1	$f6,_lit_3f800000
    lwc1	$f7,_lit_3f800000
    ldc1	$f5,_lit8_3ff0000000000000
    lbu	$v0,7122($s0)
    move	$a2,$s5
    addiu	$t0,$sp,0
    sb	$v0,7120($s0)
    lwc1	$f0,0($sp)
    cvt.d.s	$f27,$f0
    c.le.d	$f27,$f5
    bc1f	.L0d991b80
    nop
    # Line 2792
    mov.s	$f0,$f7
    swc1	$f6,0($sp)
.L0d991b80:
    # Line 2794
    lwc1	$f29,0($a2)
    mul.s	$f29,$f29,$f0
    # Line 2787
    lwc1	$f0,4($t0)
    cvt.d.s	$f31,$f0
    c.le.d $f31,$f5
    bc1f .L0d991ba4
    # Line 2794
    swc1	$f29,1388($s0)
    # Line 2792
    mov.s	$f0,$f7
    swc1	$f6,4($t0)
.L0d991ba4:
    # Line 2794
    lwc1	$f31,4($a2)
    mul.s	$f31,$f31,$f0
    # Line 2787
    lwc1	$f0,8($t0)
    cvt.d.s	$f1,$f0
    c.le.d $f1,$f5
    bc1f .L0d991bc8
    # Line 2794
    swc1	$f31,1392($s0)
    # Line 2792
    mov.s	$f0,$f7
    swc1	$f6,8($t0)
.L0d991bc8:
    # Line 2794
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f0
    # Line 2787
    lwc1	$f0,12($t0)
    cvt.d.s	$f2,$f0
    c.le.d $f2,$f5
    bc1f .L0d991bec
    # Line 2794
    swc1	$f1,1396($s0)
    # Line 2792
    mov.s	$f0,$f7
    swc1	$f6,12($t0)
.L0d991bec:
    # Line 2794
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f0
    swc1	$f2,1400($s0)
    # Line 2790
    lwc1	$f3,12($sp)
    c.eq.s $f3,$f22
    bc1f .L0d991c10
    nop
    # Line 2801
    lwc1	$f4,12($s5)
    swc1	$f4,1400($s0)
.L0d991c10:
    c.lt.s $f8,$f22
    li	$v1,1
    movf	$v1,$zero,$fcc5
    beqz	$v1,.L0d991c9c
    sd	$v1,48($sp)
    move	$a7,$s3
    move	$t1,$zero
    nop
    addiu	$t0,$sp,0
.L0d991c34:
    # Line 2806
    addiu	$t2,$a7,16
    # Line 2807
    lwc1	$f9,12($sp)
    lwc1	$f8,12($a7)
    div.s	$f8,$f8,$f9
    lwc1	$f7,8($a7)
    lwc1	$f9,8($sp)
    div.s	$f7,$f7,$f9
    lwc1	$f6,4($a7)
    lwc1	$f9,4($sp)
    div.s	$f6,$f6,$f9
    lwc1	$f5,0($a7)
    lwc1	$f9,0($sp)
    div.s	$f5,$f5,$f9
    # Line 2805
    addiu	$t1,$t1,1
    dsll32	$a0,$t1,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f10
    cvt.s.l	$f10,$f10
    # Line 2807
    swc1	$f8,12($a7)
    swc1	$f7,8($a7)
    swc1	$f6,4($a7)
    # Line 2805
    c.lt.s $f10,$f22
    # Line 2807
    swc1	$f5,0($a7)
    move	$a7,$t2
    # Line 2805
    bc1t .L0d991c34
    # Line 2801
    addiu	$t0,$sp,0
.L0d991c9c:
    # Line 2812
    # lw $t9, -31224($gp) # &__glOdysseyGenericConvolution
    move	$a0,$s4
    move	$a1,$s3
    mov.s	$f15,$f20
    ld	$a2,56($sp)
    mov.s	$f16,$f24
    jal	__glOdysseyGenericConvolution
    move	$a5,$s2
    ld	$a1,48($sp)
    beqz	$a1,.L0d991d3c
    move	$a7,$s3
    move	$t1,$zero
    nop
    addiu	$t0,$sp,0
.L0d991cd4:
    # Line 2819
    addiu	$a5,$a7,16
    # Line 2820
    lwc1	$f12,0($a7)
    lwc1	$f14,4($a7)
    # Line 2818
    addiu	$t1,$t1,1
    # Line 2820
    lwc1	$f16,8($a7)
    # Line 2818
    dsll32	$a2,$t1,0x0
    # Line 2820
    lwc1	$f18,12($a7)
    # Line 2818
    dsrl32	$a2,$a2,0x0
    # Line 2820
    lwc1	$f17,12($sp)
    # Line 2818
    dmtc1	$a2,$f19
    # Line 2820
    lwc1	$f15,8($sp)
    lwc1	$f13,4($sp)
    lwc1	$f11,0($sp)
    mul.s	$f17,$f17,$f18
    # Line 2818
    cvt.s.l	$f19,$f19
    # Line 2820
    mul.s	$f15,$f15,$f16
    swc1	$f17,12($a7)
    mul.s	$f13,$f13,$f14
    swc1	$f15,8($a7)
    mul.s	$f11,$f11,$f12
    swc1	$f13,4($a7)
    swc1	$f11,0($a7)
    move	$a7,$a5
    # Line 2818
    c.lt.s $f19,$f22
    bc1t .L0d991cd4
    # Line 2812
    addiu	$t0,$sp,0
.L0d991d3c:
    # Line 2824
    lwc1	$f21,1400($s0)
    swc1	$f21,12($sp)
.L0d991d44:
    # Line 2831
    mtc1	$zero,$f5
    mtc1	$zero,$f0
    addiu	$t0,$sp,0
    li	$a4,8
    sw	$a4,0($s4)
    lwc1	$f31,0($s5)
    # Line 2840
    ld	$a5,80($sp)
    # Line 2831
    lwc1	$f27,0($sp)
    # Line 2840
    lwc1	$f29,0($a5)
    # Line 2831
    lwc1	$f12,4($s5)
    mul.s	$f27,$f27,$f31
    lwc1	$f10,4($sp)
    # Line 2840
    abs.s	$f29,$f29
    lwc1	$f11,4($a5)
    # Line 2831
    abs.s	$f27,$f27
    # Line 2840
    c.lt.s $f0,$f29
    # Line 2831
    lwc1	$f23,8($sp)
    mul.s	$f10,$f10,$f12
    c.lt.s $f5,$f27
    lwc1	$f31,8($s5)
    # Line 2840
    abs.s	$f11,$f11
    movf.s	$f29,$f0,$fcc7
    lwc1	$f25,8($a5)
    # Line 2831
    abs.s	$f10,$f10
    movf.s	$f27,$f5,$fcc6
    # Line 2840
    c.lt.s $f29,$f11
    # Line 2831
    lwc1	$f8,12($sp)
    mul.s	$f23,$f23,$f31
    c.lt.s $f27,$f10
    lwc1	$f12,12($s5)
    # Line 2840
    abs.s	$f25,$f25
    movf.s	$f11,$f29,$fcc5
    lwc1	$f9,12($a5)
    # Line 2831
    abs.s	$f23,$f23
    movf.s	$f10,$f27,$fcc4
    # Line 2840
    c.lt.s $f11,$f25
    # Line 2831
    mul.s	$f8,$f8,$f12
    c.lt.s $f10,$f23
    # Line 2840
    abs.s	$f9,$f9
    movf.s	$f25,$f11,$fcc3
    # Line 2831
    abs.s	$f8,$f8
    movf.s	$f23,$f10,$fcc2
    # Line 2840
    c.lt.s $f25,$f9
    # Line 2831
    c.lt.s	$f23,$f8
    movf.s	$f9,$f25,$fcc1
    movf.s	$f8,$f23,$fcc0
    # Line 2846
    lbu	$a6,7120($s0)
    beqz	$a6,.L0d992328
    # Line 2850
    ld	$a7,64($sp)
.L0d991e08:
    sltiu	$a7,$a7,6
    bnez	$a7,.L0d991f28
    # Line 2852
    la	$t0,sub_0d990000
    addiu	$t0,$t0,15168
    sw	$t0,4($s4)
.L0d991e1c:
    ldc1	$f22,120($sp)
    # Line 2861
    sw	$s1,12($s4)
    # Line 2863
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2858
    lw	$ra,8($s4)
    # Line 2863
    move	$a3,$zero
    ld	$a2,72($sp)
    addiu	$t9,$t9,-2832
    move	$a1,$s4
    # Line 2858
    ori	$ra,$ra,0x34
    sw	$ra,8($s4)
    # Line 2863
    move	$a0,$a2
    bal __glOdysseyImageChainFree
    lw	$a2,8($a2)
    ld	$s1,136($sp)
    ld	$s4,144($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    li	$v0,1
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d991e80:
    # Line 2615
    c.eq.s	$f20,$f0
    bc1f	.L0d991eb8
    # Line 2626
    nop	# was lw $t9, -17032($gp) # &ceilf
    # Line 2617
    c.eq.s $f24,$f0
    lw	$at,764($v0)
    li	$s1,1
    bc1f .L0d991eac
    sw	$s1,64($at)
    # Line 2619
    lw	$v1,764($v0)
    lwc1	$f24,_lit_3f800000
    sw	$s1,68($v1)
.L0d991eac:
    # Line 2622
    lwc1	$f20,_lit_3f800000
    sb	$s1,7147($s0)
    # Line 2626
    # lw $t9, -17032($gp) # &ceilf
.L0d991eb8:
    lwc1	$f22,_lit_3f000000
    jal	ceilf
    mul.s	$f12,$f20,$f22
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    mul.s	$f12,$f22,$f0
    trunc.l.s	$f0,$f0
    # Line 2628
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2626
    dmfc1	$s1,$f0
    # Line 2628
    addiu	$t9,$t9,-3824
    # Line 2626
    sll	$s1,$s1,0x0
    # Line 2628
    bal __glOdysseyImageChainFree
    sd	$s1,64($sp)
    bnez	$v0,.L0d991f38
    move	$s4,$v0
    ld	$s4,144($sp)
    ld	$s1,136($sp)
    ldc1	$f22,120($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    # Line 2630
    move	$v0,$zero
    # Line 2871
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d991f28:
    # Line 2854
    la	$ra,sub_0d990000
    addiu	$ra,$ra,10064
    b	.L0d991e1c
    sw	$ra,4($s4)
.L0d991f38:
    # Line 2632
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    bal __glOdysseyImageChainFree
    addiu	$a1,$s1,1
    lw	$ra,20($s4)
    beqz	$ra,.L0d9926b8
    # Line 2638
    mtc1	$zero,$f8
    mul.s	$f22,$f24,$f20
    c.lt.s $f8,$f22
    bc1f .L0d9926ec
    sd	$s1,128($sp)
    move	$a7,$s3
    move	$t1,$zero
    ld	$a5,128($sp)
    li	$s1,1
    dmtc1	$zero,$f0
.L0d991f7c:
    # Line 2640
    lwc1	$f1,0($sp)
    lwc1	$f2,0($a7)
    # Line 2638
    addiu	$t0,$sp,0
    # Line 2640
    cvt.d.s	$f3,$f2
    abs.s	$f2,$f2
    cvt.d.s	$f1,$f1
    cvt.d.s	$f2,$f2
    c.lt.d $f3,$f0
    add.d	$f1,$f1,$f2
    cvt.s.d	$f1,$f1
    bc1f .L0d991fb0
    swc1	$f1,0($sp)
    # Line 2642
    sb	$s1,7121($s0)
.L0d991fb0:
    # Line 2640
    lwc1	$f4,4($a7)
    lwc1	$f3,4($t0)
    cvt.d.s	$f5,$f4
    abs.s	$f4,$f4
    cvt.d.s	$f3,$f3
    cvt.d.s	$f4,$f4
    c.lt.d $f5,$f0
    lwc1	$f5,8($t0)
    add.d	$f3,$f3,$f4
    # Line 2638
    addiu	$t1,$t1,1
    dsll32	$at,$t1,0x0
    # Line 2640
    cvt.s.d	$f3,$f3
    # Line 2638
    dsrl32	$at,$at,0x0
    # Line 2640
    cvt.d.s	$f5,$f5
    bc1f .L0d991ff4
    swc1	$f3,4($t0)
    # Line 2642
    sb	$s1,7121($s0)
.L0d991ff4:
    # Line 2640
    lwc1	$f6,8($a7)
    cvt.d.s	$f7,$f6
    abs.s	$f6,$f6
    cvt.d.s	$f6,$f6
    c.lt.d $f7,$f0
    lwc1	$f7,12($t0)
    add.d	$f5,$f5,$f6
    cvt.s.d	$f5,$f5
    cvt.d.s	$f7,$f7
    bc1f .L0d992024
    swc1	$f5,8($t0)
    # Line 2642
    sb	$s1,7121($s0)
.L0d992024:
    # Line 2640
    lwc1	$f9,12($a7)
    cvt.d.s	$f10,$f9
    abs.s	$f9,$f9
    c.lt.d $f10,$f0
    # Line 2638
    dmtc1	$at,$f10
    # Line 2640
    cvt.d.s	$f9,$f9
    # Line 2638
    cvt.s.l	$f10,$f10
    # Line 2640
    add.d	$f7,$f7,$f9
    cvt.s.d	$f7,$f7
    # Line 2638
    addiu	$a7,$a7,16
    # Line 2640
    swc1	$f7,12($t0)
    bc1f .L0d99205c
    # Line 2638
    c.lt.s $f10,$f22
    # Line 2642
    sb	$s1,7121($s0)
.L0d99205c:
    # Line 2638
    bc1t .L0d991f7c
.L0d992060:
    # Line 2646
    lwc1	$f6,_lit_3f800000
    lwc1	$f7,_lit_3f800000
    ldc1	$f5,_lit8_3ff0000000000000
    lbu	$v0,7121($s0)
    move	$a2,$s5
    addiu	$t0,$sp,0
    sb	$v0,7120($s0)
    lwc1	$f0,0($sp)
    cvt.d.s	$f11,$f0
    c.le.d	$f11,$f5
    bc1f	.L0d992098
    nop
    # Line 2651
    mov.s	$f0,$f7
    swc1	$f6,0($sp)
.L0d992098:
    # Line 2653
    lwc1	$f12,0($a2)
    mul.s	$f12,$f12,$f0
    # Line 2646
    lwc1	$f0,4($t0)
    cvt.d.s	$f13,$f0
    c.le.d $f13,$f5
    bc1f .L0d9920bc
    # Line 2653
    swc1	$f12,-1524($s0)
    # Line 2651
    mov.s	$f0,$f7
    swc1	$f6,4($t0)
.L0d9920bc:
    # Line 2653
    lwc1	$f13,4($a2)
    mul.s	$f13,$f13,$f0
    # Line 2646
    lwc1	$f0,8($t0)
    cvt.d.s	$f14,$f0
    c.le.d $f14,$f5
    bc1f .L0d9920e0
    # Line 2653
    swc1	$f13,-1520($s0)
    # Line 2651
    mov.s	$f0,$f7
    swc1	$f6,8($t0)
.L0d9920e0:
    # Line 2653
    lwc1	$f14,8($a2)
    mul.s	$f14,$f14,$f0
    # Line 2646
    lwc1	$f0,12($t0)
    cvt.d.s	$f15,$f0
    c.le.d $f15,$f5
    bc1f .L0d992104
    # Line 2653
    swc1	$f14,-1516($s0)
    # Line 2651
    mov.s	$f0,$f7
    swc1	$f6,12($t0)
.L0d992104:
    # Line 2653
    lwc1	$f15,12($a2)
    mul.s	$f15,$f15,$f0
    swc1	$f15,-1512($s0)
    # Line 2649
    lwc1	$f16,12($sp)
    c.eq.s $f16,$f22
    bc1f .L0d992128
    nop
    # Line 2659
    lwc1	$f17,12($s5)
    swc1	$f17,-1512($s0)
.L0d992128:
    c.lt.s $f8,$f20
    li	$v1,1
    movf	$v1,$zero,$fcc5
    beqz	$v1,.L0d9921b0
    sd	$v1,40($sp)
    move	$a7,$s3
    move	$t1,$zero
    addiu	$t0,$sp,0
.L0d992148:
    # Line 2664
    addiu	$v0,$a7,16
    # Line 2665
    lwc1	$f25,12($sp)
    lwc1	$f23,12($a7)
    div.s	$f23,$f23,$f25
    lwc1	$f21,8($a7)
    lwc1	$f25,8($sp)
    div.s	$f21,$f21,$f25
    lwc1	$f19,4($a7)
    lwc1	$f25,4($sp)
    div.s	$f19,$f19,$f25
    lwc1	$f18,0($a7)
    lwc1	$f25,0($sp)
    div.s	$f18,$f18,$f25
    # Line 2663
    addiu	$t1,$t1,1
    dsll32	$a0,$t1,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f27
    cvt.s.l	$f27,$f27
    # Line 2665
    swc1	$f23,12($a7)
    swc1	$f21,8($a7)
    swc1	$f19,4($a7)
    # Line 2663
    c.lt.s $f27,$f20
    # Line 2665
    swc1	$f18,0($a7)
    move	$a7,$v0
    # Line 2663
    bc1t .L0d992148
    # Line 2659
    addiu	$t0,$sp,0
.L0d9921b0:
    # Line 2669
    # lw $t9, -31236($gp) # &__glOdysseyMap1DFilterToAlphas
    move	$a0,$s4
    move	$a1,$s3
    move	$a2,$a5
    jal	__glOdysseyMap1DFilterToAlphas
    move	$a3,$s2
    ld	$a1,40($sp)
    beqz	$a1,.L0d992244
    move	$a7,$s3
    move	$t1,$zero
    addiu	$t0,$sp,0
.L0d9921dc:
    # Line 2676
    addiu	$v0,$a7,16
    # Line 2677
    lwc1	$f31,0($a7)
    lwc1	$f1,4($a7)
    # Line 2675
    addiu	$t1,$t1,1
    # Line 2677
    lwc1	$f3,8($a7)
    # Line 2675
    dsll32	$a2,$t1,0x0
    # Line 2677
    lwc1	$f5,12($a7)
    # Line 2675
    dsrl32	$a2,$a2,0x0
    # Line 2677
    lwc1	$f4,12($sp)
    # Line 2675
    dmtc1	$a2,$f6
    # Line 2677
    lwc1	$f2,8($sp)
    lwc1	$f0,4($sp)
    lwc1	$f29,0($sp)
    mul.s	$f4,$f4,$f5
    # Line 2675
    cvt.s.l	$f6,$f6
    # Line 2677
    mul.s	$f2,$f2,$f3
    swc1	$f4,12($a7)
    mul.s	$f0,$f0,$f1
    swc1	$f2,8($a7)
    mul.s	$f29,$f29,$f31
    swc1	$f0,4($a7)
    swc1	$f29,0($a7)
    move	$a7,$v0
    # Line 2675
    c.lt.s $f6,$f20
    bc1t .L0d9921dc
    # Line 2669
    addiu	$t0,$sp,0
.L0d992244:
    # Line 2681
    lwc1	$f7,-1512($s0)
    b	.L0d991d44
    swc1	$f7,12($sp)
.L0d992250:
    # Line 2685
    c.eq.s	$f24,$f0
    li	$a1,1
    beqz	$a2,.L0d9926f8
    movf	$a1,$zero,$fcc0
    # Line 2688
    lw	$a3,764($v0)
    lwc1	$f20,_lit_3f800000
    li	$s1,1
    beqz	$a1,.L0d992280
    sw	$s1,64($a3)
.L0d992274:
    # Line 2690
    lw	$a4,764($v0)
    lwc1	$f24,_lit_3f800000
    sw	$s1,68($a4)
.L0d992280:
    # Line 2692
    sb	$s1,7147($s0)
.L0d992284:
    # Line 2696
    # lw $t9, -17032($gp) # &ceilf
.L0d992288:
    jal	ceilf
    mul.s	$f12,$f20,$f22
    # lw $t9, -17032($gp) # &ceilf
    sdc1	$f0,16($sp)
    jal	ceilf
    mul.s	$f12,$f24,$f22
    ldc1	$f12,16($sp)
    # lw $t9, -17032($gp) # &ceilf
    mul.s	$f12,$f12,$f0
    jal	ceilf
    mul.s	$f12,$f22,$f12
    trunc.l.s	$f13,$f0
    # Line 2698
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 2696
    dmfc1	$a5,$f13
    # Line 2698
    addiu	$t9,$t9,-3824
    # Line 2696
    sll	$a5,$a5,0x0
    sd	$a5,56($sp)
    # Line 2698
    bal __glOdysseyImageChainFree
    sd	$a5,64($sp)
    bnez	$v0,.L0d9923a0
    move	$s4,$v0
    ld	$s4,144($sp)
    ld	$s1,136($sp)
    ldc1	$f22,120($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    # Line 2700
    move	$v0,$zero
    # Line 2871
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d992310:
    # Line 2756
    beqz	$a1,.L0d991990
    # Line 2767
    nop	# was lw $t9, -17032($gp) # &ceilf
    # Line 2759
    bnez	$a1,.L0d99197c
    # Line 2756
    li	$s1,1
    b	.L0d99198c
    # Line 2763
    sb	$s1,7147($s0)
.L0d992328:
    # Line 2846
    lw	$ra,7124($s0)
    li	$at,0x8016
    bne	$ra,$at,.L0d991e08
    # Line 2850
    ld	$a7,64($sp)
    # Line 2846
    lwc1	$f6,7712($s0)
    c.le.s $f8,$f6
    bc1f .L0d991e08
    # Line 2850
    ld	$a7,64($sp)
    # Line 2846
    c.le.s $f9,$f6
    bc1f .L0d991e08
    # Line 2850
    ld	$a7,64($sp)
    la	$v0,sub_0d990000
    addiu	$v0,$v0,12272
    b	.L0d991e1c
    sw	$v0,4($s4)
.L0d992364:
    ld	$s4,144($sp)
    ld	$s1,136($sp)
    ldc1	$f22,120($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    # Line 2775
    move	$v0,$zero
    # Line 2871
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d992398:
    b	.L0d991b48
    # Line 2779
    li	$s1,1
.L0d9923a0:
    # Line 2702
    # lw $t9, -32728($gp) # &sub_0d990000
    ld	$a1,56($sp)
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    bal __glOdysseyImageChainFree
    addiu	$a1,$a1,1
    lw	$ra,20($s4)
    # Line 2708
    move	$t1,$zero
    dmtc1	$zero,$f0
    li	$s1,1
    mtc1	$zero,$f8
    # Line 2702
    beqz	$ra,.L0d992710
    # Line 2708
    move	$a7,$s3
    mul.s	$f22,$f24,$f20
    c.lt.s $f8,$f22
    bc1f .L0d992744
    nop
.L0d9923e4:
    # Line 2710
    lwc1	$f14,0($sp)
    lwc1	$f15,0($a7)
    # Line 2708
    addiu	$t0,$sp,0
    # Line 2710
    cvt.d.s	$f16,$f15
    abs.s	$f15,$f15
    cvt.d.s	$f14,$f14
    cvt.d.s	$f15,$f15
    c.lt.d $f16,$f0
    add.d	$f14,$f14,$f15
    cvt.s.d	$f14,$f14
    bc1f .L0d992418
    swc1	$f14,0($sp)
    # Line 2712
    sb	$s1,7123($s0)
.L0d992418:
    # Line 2710
    lwc1	$f17,4($a7)
    lwc1	$f16,4($t0)
    cvt.d.s	$f18,$f17
    abs.s	$f17,$f17
    cvt.d.s	$f16,$f16
    cvt.d.s	$f17,$f17
    c.lt.d $f18,$f0
    lwc1	$f18,8($t0)
    add.d	$f16,$f16,$f17
    # Line 2708
    addiu	$t1,$t1,1
    dsll32	$at,$t1,0x0
    # Line 2710
    cvt.s.d	$f16,$f16
    # Line 2708
    dsrl32	$at,$at,0x0
    # Line 2710
    cvt.d.s	$f18,$f18
    bc1f .L0d99245c
    swc1	$f16,4($t0)
    # Line 2712
    sb	$s1,7123($s0)
.L0d99245c:
    # Line 2710
    lwc1	$f19,8($a7)
    cvt.d.s	$f21,$f19
    abs.s	$f19,$f19
    cvt.d.s	$f19,$f19
    c.lt.d $f21,$f0
    lwc1	$f21,12($t0)
    add.d	$f18,$f18,$f19
    cvt.s.d	$f18,$f18
    cvt.d.s	$f21,$f21
    bc1f .L0d99248c
    swc1	$f18,8($t0)
    # Line 2712
    sb	$s1,7123($s0)
.L0d99248c:
    # Line 2710
    lwc1	$f23,12($a7)
    cvt.d.s	$f25,$f23
    abs.s	$f23,$f23
    c.lt.d $f25,$f0
    # Line 2708
    dmtc1	$at,$f25
    # Line 2710
    cvt.d.s	$f23,$f23
    # Line 2708
    cvt.s.l	$f25,$f25
    # Line 2710
    add.d	$f21,$f21,$f23
    cvt.s.d	$f21,$f21
    # Line 2708
    addiu	$a7,$a7,16
    # Line 2710
    swc1	$f21,12($t0)
    bc1f .L0d9924c4
    # Line 2708
    c.lt.s	$f25,$f22
    # Line 2712
    sb	$s1,7123($s0)
.L0d9924c4:
    # Line 2708
    bc1t	.L0d9923e4
.L0d9924c8:
    # Line 2716
    lwc1	$f6,_lit_3f800000
    lwc1	$f7,_lit_3f800000
    ldc1	$f5,_lit8_3ff0000000000000
    lbu	$v0,7123($s0)
    move	$a2,$s5
    addiu	$t0,$sp,0
    sb	$v0,7120($s0)
    lwc1	$f0,0($sp)
    cvt.d.s	$f27,$f0
    c.le.d $f27,$f5
    bc1f .L0d992500
    # Line 2723
    lwc1	$f29,0($a2)
    # Line 2721
    mov.s	$f0,$f7
    swc1	$f6,0($sp)
.L0d992500:
    # Line 2723
    mul.s	$f29,$f29,$f0
    # Line 2716
    lwc1	$f0,4($t0)
    cvt.d.s	$f31,$f0
    c.le.d $f31,$f5
    bc1f .L0d992520
    # Line 2723
    swc1	$f29,4300($s0)
    # Line 2721
    mov.s	$f0,$f7
    swc1	$f6,4($t0)
.L0d992520:
    # Line 2723
    lwc1	$f31,4($a2)
    mul.s	$f31,$f31,$f0
    # Line 2716
    lwc1	$f0,8($t0)
    cvt.d.s	$f1,$f0
    c.le.d $f1,$f5
    bc1f .L0d992544
    # Line 2723
    swc1	$f31,4304($s0)
    # Line 2721
    mov.s	$f0,$f7
    swc1	$f6,8($t0)
.L0d992544:
    # Line 2723
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f0
    # Line 2716
    lwc1	$f0,12($t0)
    cvt.d.s	$f2,$f0
    c.le.d $f2,$f5
    bc1f .L0d992568
    # Line 2723
    swc1	$f1,4308($s0)
    # Line 2721
    mov.s	$f0,$f7
    swc1	$f6,12($t0)
.L0d992568:
    # Line 2723
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f0
    swc1	$f2,4312($s0)
    # Line 2719
    lwc1	$f3,12($sp)
    c.eq.s $f3,$f22
    # Line 2729
    c.lt.s $f8,$f22
    move	$t1,$zero
    li	$v1,1
    move	$a7,$s3
    # Line 2719
    bc1f .L0d99259c
    # Line 2729
    movf	$v1,$zero,$fcc6
    lwc1	$f4,12($s5)
    swc1	$f4,4312($s0)
.L0d99259c:
    beqz	$v1,.L0d992610
    sd	$v1,48($sp)
    addiu	$t0,$sp,0
.L0d9925a8:
    # Line 2733
    addiu	$v0,$a7,16
    # Line 2734
    lwc1	$f9,12($sp)
    lwc1	$f8,12($a7)
    div.s	$f8,$f8,$f9
    lwc1	$f7,8($a7)
    lwc1	$f9,8($sp)
    div.s	$f7,$f7,$f9
    lwc1	$f6,4($a7)
    lwc1	$f9,4($sp)
    div.s	$f6,$f6,$f9
    lwc1	$f5,0($a7)
    lwc1	$f9,0($sp)
    div.s	$f5,$f5,$f9
    # Line 2732
    addiu	$t1,$t1,1
    dsll32	$a0,$t1,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f10
    cvt.s.l	$f10,$f10
    # Line 2734
    swc1	$f8,12($a7)
    swc1	$f7,8($a7)
    swc1	$f6,4($a7)
    # Line 2732
    c.lt.s $f10,$f22
    # Line 2734
    swc1	$f5,0($a7)
    move	$a7,$v0
    # Line 2732
    bc1t .L0d9925a8
    # Line 2729
    addiu	$t0,$sp,0
.L0d992610:
    # Line 2738
    # lw $t9, -31224($gp) # &__glOdysseyGenericConvolution
    move	$a0,$s4
    move	$a1,$s3
    mov.s	$f15,$f20
    ld	$a2,56($sp)
    mov.s	$f16,$f24
    jal	__glOdysseyGenericConvolution
    move	$a5,$s2
    ld	$a1,48($sp)
    beqz	$a1,.L0d9926ac
    move	$a7,$s3
    move	$t1,$zero
    addiu	$t0,$sp,0
.L0d992644:
    # Line 2745
    addiu	$v0,$a7,16
    # Line 2746
    lwc1	$f12,0($a7)
    lwc1	$f14,4($a7)
    # Line 2744
    addiu	$t1,$t1,1
    # Line 2746
    lwc1	$f16,8($a7)
    # Line 2744
    dsll32	$a2,$t1,0x0
    # Line 2746
    lwc1	$f18,12($a7)
    # Line 2744
    dsrl32	$a2,$a2,0x0
    # Line 2746
    lwc1	$f17,12($sp)
    # Line 2744
    dmtc1	$a2,$f19
    # Line 2746
    lwc1	$f15,8($sp)
    lwc1	$f13,4($sp)
    lwc1	$f11,0($sp)
    mul.s	$f17,$f17,$f18
    # Line 2744
    cvt.s.l	$f19,$f19
    # Line 2746
    mul.s	$f15,$f15,$f16
    swc1	$f17,12($a7)
    mul.s	$f13,$f13,$f14
    swc1	$f15,8($a7)
    mul.s	$f11,$f11,$f12
    swc1	$f13,4($a7)
    swc1	$f11,0($a7)
    move	$a7,$v0
    # Line 2744
    c.lt.s	$f19,$f22
    bc1t	.L0d992644
    # Line 2738
    addiu	$t0,$sp,0
.L0d9926ac:
    # Line 2750
    lwc1	$f21,4312($s0)
    # Line 2752
    b	.L0d991d44
    # Line 2750
    swc1	$f21,12($sp)
.L0d9926b8:
    ld	$s4,144($sp)
    ld	$s1,136($sp)
    ldc1	$f22,120($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    # Line 2634
    move	$v0,$zero
    # Line 2871
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9926ec:
    ld	$a5,128($sp)
    b	.L0d992060
    # Line 2638
    li	$s1,1
.L0d9926f8:
    # Line 2685
    beqz	$a1,.L0d992288
    # Line 2696
    nop	# was lw $t9, -17032($gp) # &ceilf
    # Line 2688
    bnez	$a1,.L0d992274
    # Line 2685
    li	$s1,1
    b	.L0d992284
    # Line 2692
    sb	$s1,7147($s0)
.L0d992710:
    ld	$s4,144($sp)
    ld	$s1,136($sp)
    ldc1	$f22,120($sp)
    # Line 2871
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$ra,152($sp)
    ld	$s5,96($sp)
    # Line 2704
    move	$v0,$zero
    # Line 2871
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d992744:
    b	.L0d9924c8
    # Line 2708
    li	$s1,1
.end ImageChainAddOpConvolve

# Function: RenderFunc_Convolve
# Declared: Line 2879 (Source lines: 2880-3144)
# Address: 0x0d992750 - 0x0d992ff0 (Size: 2208 bytes, Frame: 144)
.ent RenderFunc_Convolve
RenderFunc_Convolve:
    # Line 2880
    addiu	$sp,$sp,-400
    move	$a2,$a1
    sd	$s6,320($sp)
    # Line 2893
    addiu	$a3,$sp,0
    # Line 2880
    lui	$at,0x16
    # Line 2886
    lw	$s6,16($a0)
    # Line 2880
    sd	$s4,272($sp)
    move	$s4,$a0
    addiu	$at,$at,24128
    sd	$gp,280($sp)
    addu	$gp,$t9,$at
    # Line 2886
    addiu	$s6,$s6,-1
    sd	$s3,328($sp)
    sd	$s1,336($sp)
    sd	$s5,352($sp)
    sd	$s2,264($sp)
    sd	$s7,360($sp)
    # Line 2893
    lw	$t2,0($a1)
    sw	$t2,0($sp)
    lw	$t1,4($a1)
    sw	$t1,4($sp)
    lw	$t0,8($a1)
    sw	$t0,8($sp)
    lw	$a7,12($a1)
    sw	$a7,12($sp)
    lw	$a5,16($a1)
    sw	$a5,16($sp)
    lw	$a1,20($a1)
    sw	$a1,20($sp)
    lw	$a0,24($a2)
    sw	$a0,24($sp)
    lw	$v1,28($a2)
    sw	$v1,28($sp)
    lw	$v0,32($a2)
    sw	$v0,32($sp)
    # Line 2916
    addiu	$t9,$sp,40
    # Line 2908
    lw	$s3,4112($zero)
    # Line 2921
    lw	$a4,31804($s3)
    # Line 2920
    lw	$a6,31800($s3)
    # Line 2919
    lw	$a3,31796($s3)
    # Line 2918
    lw	$s5,31740($s3)
    # Line 2916
    lw	$t8,31940($s3)
    lw	$a7,31960($s3)
    lw	$t1,31964($s3)
    lw	$a5,31956($s3)
    lw	$v1,31952($s3)
    # Line 2917
    lui	$t0,0x1
    # Line 2916
    lw	$v0,31948($s3)
    lw	$at,31944($s3)
    # Line 2917
    addu	$s2,$t0,$s3
    lw	$a1,-26968($s2)
    lw	$s1,-26972($s2)
    lw	$a0,-26976($s2)
    lw	$s7,-26980($s2)
    # Line 2916
    sw	$at,4($t9)
    sw	$v0,8($t9)
    sw	$v1,12($t9)
    sw	$a5,16($t9)
    sw	$t1,24($t9)
    sw	$a7,20($t9)
    # Line 2922
    addiu	$a7,$sp,72
    # Line 2916
    sw	$t8,40($sp)
    sd	$a6,256($sp)
    sd	$a4,248($sp)
    sd	$a3,240($sp)
    sd	$a1,232($sp)
    sd	$a0,208($sp)
    # Line 2922
    ld	$a5,-29680($s2)
    ld	$v1,-29688($s2)
    ld	$v0,-29696($s2)
    ld	$at,-29704($s2)
    sd	$at,16($a7)
    sd	$v0,24($a7)
    sd	$v1,32($a7)
    sd	$a5,40($a7)
    ld	$t9,-29664($s2)
    ld	$t8,-29672($s2)
    sd	$t8,48($a7)
    ld	$t8,-29720($s2)
    sd	$t9,56($a7)
    ld	$t9,-29712($s2)
    sd	$t9,8($a7)
    sd	$t8,72($sp)
    # Line 2924
    addiu	$a1,$sp,136
    # Line 2923
    lw	$a0,-29724($s2)
    sd	$s0,344($sp)
    sd	$s8,224($sp)
    sd	$a0,216($sp)
    # Line 2924
    lw	$at,-29460($s2)
    lw	$t3,-29432($s2)
    lw	$t2,-29436($s2)
    lw	$t1,-29440($s2)
    lw	$a7,-29444($s2)
    lw	$a5,-29448($s2)
    lw	$v1,-29452($s2)
    lw	$v0,-29456($s2)
    sw	$v0,4($a1)
    sw	$v1,8($a1)
    sw	$a5,12($a1)
    sw	$a7,16($a1)
    sw	$t1,20($a1)
    sw	$t2,24($a1)
    sw	$t3,28($a1)
    sw	$at,136($sp)
    sd	$ra,368($sp)
    # Line 2925
    lw	$at,-29464($s2)
    # Line 2926
    lw	$v0,-29332($s2)
    lw	$v1,-29328($s2)
    lw	$a0,-29324($s2)
    sd	$a0,304($sp)
    lbu	$t8,7147($s2)
    sd	$v1,296($sp)
    li	$t9,1
    lui	$s0,0x20
    sd	$v0,288($sp)
    li	$s8,2
    beq	$t8,$t9,.L0d992d98
    # Line 2925
    sd	$at,312($sp)
    sd	$s7,384($sp)
    # Line 2988
    move	$a1,$s4
    addiu	$a0,$sp,168
    # lw $t9, -32724($gp) # &sub_0d9a0000
    ori	$s7,$t0,0x19e4
    sd	$s5,376($sp)
    ori	$s5,$t0,0x1a20
    addu	$s5,$s3,$s5
    addiu	$t9,$t9,-6992
    addu	$s7,$s3,$s7
    move	$a4,$s5
    jal	sub_0d9a0000
    move	$a3,$s7
    # Line 2991
    lw	$a7,31740($s3)
    lui	$a6,0x2
    or	$a7,$a6,$a7
    sw	$a7,31740($s3)
    # Line 2992
    lw	$a5,26976($s2)
    ori	$a5,$a5,0x2
    sw	$a5,26976($s2)
    sw	$s8,4120($zero)
    # Line 3000
    lw	$a1,26976($s2)
    # Line 2998
    lui	$a3,0x6
    # Line 2996
    lui	$a4,0x1
    lw	$a2,-26972($s2)
    # Line 2998
    nor	$a3,$a3,$zero
    # Line 2996
    nor	$a4,$a4,$zero
    # Line 3000
    ori	$a1,$a1,0x1
    sw	$a1,26976($s2)
    # Line 2996
    and	$a2,$a2,$a4
    # Line 2998
    and	$a2,$a2,$a3
    sw	$a2,-26972($s2)
    # Line 3000
    sw	$s8,4120($zero)
    # Line 3002
    lui	$a0,0xff7f
    lw	$a4,-26972($s2)
    ori	$a0,$a0,0xffff
    # Line 3003
    lw	$a3,26976($s2)
    # Line 3002
    and	$a4,$a0,$a4
    sw	$a4,-26972($s2)
    # Line 3003
    or	$a3,$s0,$a3
    sw	$a3,26976($s2)
    # Line 3011
    li	$t8,-769
    # Line 3003
    sw	$s8,4120($zero)
    # Line 3007
    lui	$t3,0x1000
    # Line 3013
    lui	$a2,0xff00
    # Line 3007
    lw	$t1,31956($s3)
    # Line 3013
    ori	$a2,$a2,0xfff
    # Line 3014
    li	$a3,-4096
    # Line 3013
    lw	$t2,31960($s3)
    # Line 3007
    or	$t1,$t1,$t3
    # Line 3009
    li	$t3,-12289
    and	$t1,$t1,$t3
    # Line 3010
    li	$t3,-3073
    # Line 3013
    and	$t2,$a2,$t2
    # Line 3010
    and	$t1,$t1,$t3
    # Line 3014
    and	$t2,$a3,$t2
    # Line 3011
    and	$t1,$t1,$t8
    # Line 3015
    lw	$t3,31964($s3)
    # Line 3021
    li	$t8,-225
    # Line 3020
    ori	$t1,$t1,0x4000
    # Line 3014
    sw	$t2,31960($s3)
    # Line 3023
    li	$t2,-31
    # Line 3021
    and	$t1,$t1,$t8
    # Line 3015
    and	$t3,$a2,$t3
    # Line 3021
    ori	$t1,$t1,0x20
    # Line 3016
    and	$t3,$a3,$t3
    sw	$t3,31964($s3)
    # Line 3023
    and	$t1,$t1,$t2
    ori	$t1,$t1,0x2
    sw	$t1,31956($s3)
    # Line 3026
    lw	$t0,26976($s2)
    ori	$t0,$t0,0x200
    sw	$t0,26976($s2)
    sw	$s8,4120($zero)
    # Line 3028
    lw	$a7,31740($s3)
    or	$a6,$a6,$a7
    sw	$a6,31740($s3)
    # Line 3029
    lw	$a5,26976($s2)
    ori	$a5,$a5,0x2
    sw	$a5,26976($s2)
    sw	$s8,4120($zero)
    # Line 3030
    lw	$a1,31744($s3)
    li	$a4,-385
    and	$a1,$a1,$a4
    ori	$a1,$a1,0x80
    # Line 3032
    and	$a0,$a0,$a1
    sw	$a0,31744($s3)
    # Line 3034
    lw	$v1,26976($s2)
    ori	$v1,$v1,0x4
    sw	$v1,26976($s2)
    sw	$s8,4120($zero)
    # Line 3041
    li	$v0,0xe000
    lw	$at,31796($s3)
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 3043
    li	$v0,-8129
    and	$at,$at,$v0
    # Line 3045
    li	$ra,-64
    # Line 3043
    ori	$at,$at,0xa00
    # Line 3045
    and	$ra,$ra,$at
    sw	$ra,31796($s3)
    # Line 3047
    lw	$t9,26976($s2)
    ori	$t9,$t9,0x1
    sw	$t9,26976($s2)
    sw	$s8,4120($zero)
    lbu	$t8,7120($s2)
    # Line 3056
    lui	$t0,0x10
    li	$a0,2047
    # Line 3072
    lui	$t9,0xff
    # Line 3047
    beqz	$t8,.L0d992fd8
    lw	$a1,-26972($s2)
    # Line 3056
    or	$t0,$a1,$t0
    sw	$t0,-26972($s2)
.L0d992aec:
    # Line 3070
    lw	$ra,26976($s2)
    or	$ra,$s0,$ra
    sw	$ra,26976($s2)
    sw	$s8,4120($zero)
    # Line 3072
    ori	$t9,$t9,0xf000
    sll	$t3,$a0,0xc
    lw	$t8,31800($s3)
    and	$t3,$t3,$t9
    # Line 3074
    lw	$t9,31804($s3)
    # Line 3073
    andi	$t2,$a0,0xfff
    # Line 3072
    and	$t8,$a2,$t8
    # Line 3074
    and	$t9,$a2,$t9
    # Line 3072
    or	$t8,$t3,$t8
    # Line 3074
    or	$t3,$t3,$t9
    # Line 3073
    and	$t8,$a3,$t8
    # Line 3075
    and	$t3,$a3,$t3
    # Line 3073
    or	$t8,$t2,$t8
    sw	$t8,31800($s3)
    # Line 3075
    or	$t2,$t2,$t3
    sw	$t2,31804($s3)
    # Line 3076
    lw	$t1,26976($s2)
    ori	$t1,$t1,0x1
    sw	$t1,26976($s2)
    blez	$s6,.L0d992bbc
    sw	$s8,4120($zero)
    sd	$s1,392($sp)
    la	$s1,sub_0d9a0000
    move	$s0,$zero
    addiu	$s1,$s1,-13472
.L0d992b60:
    # Line 3080
    move	$t9,$s1
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s0
    # Line 3082
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s5
    move	$a1,$s7
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsTexture
    addiu	$a2,$sp,168
    # Line 3084
    lw	$ra,31796($s3)
    li	$t9,-64
    and	$t9,$t9,$ra
    ori	$t9,$t9,0x8
    sw	$t9,31796($s3)
    # Line 3086
    lw	$t8,26976($s2)
    # Line 3078
    addiu	$s0,$s0,1
    # Line 3086
    ori	$t8,$t8,0x1
    sw	$t8,26976($s2)
    # Line 3078
    bne	$s6,$s0,.L0d992b60
    # Line 3086
    sw	$s8,4120($zero)
    lui	$s0,0x20
    ld	$s1,392($sp)
.L0d992bbc:
    # Line 3101
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,-13200
    move	$a0,$s4
    move	$a2,$s5
    ld	$s6,384($sp)
    jal	sub_0d9a0000
    addiu	$a1,$sp,168
    # Line 3108
    # lw $t9, -32724($gp) # &sub_0d9a0000
    move	$a0,$s4
    move	$a4,$s7
    addiu	$t9,$t9,-8816
    move	$a3,$s5
    addiu	$a2,$sp,0
    jal	sub_0d9a0000
    addiu	$a1,$sp,168
    ld	$s5,352($sp)
    ld	$s7,360($sp)
    ld	$ra,368($sp)
    # Line 3144
    ld	$gp,280($sp)
    ld	$s4,272($sp)
    # Line 3123
    ld	$a0,240($sp)
    # Line 3108
    lw	$at,31600($s3)
    # Line 3124
    ld	$a2,256($sp)
    # Line 3125
    ld	$a3,248($sp)
    # Line 3108
    andi	$at,$at,0x80
    # Line 3121
    ld	$a5,208($sp)
    # Line 3120
    addiu	$a6,$sp,40
    # Line 3108
    beqz	$at,.L0d992c40
    ld	$a1,376($sp)
    # Line 3116
    lw	$v0,-26972($s2)
    li	$v1,-2
    and	$v0,$v0,$v1
    sw	$v0,-26972($s2)
.L0d992c40:
    # Line 3120
    lw	$a7,20($a6)
    # Line 3121
    ld	$a4,232($sp)
    # Line 3120
    lw	$t0,16($a6)
    lw	$t1,12($a6)
    lw	$t2,8($a6)
    lw	$t3,4($a6)
    lw	$a6,24($a6)
    # Line 3118
    lw	$t9,26976($s2)
    # Line 3120
    lw	$t8,40($sp)
    # Line 3118
    or	$t9,$s0,$t9
    sw	$t9,26976($s2)
    sw	$s8,4120($zero)
    # Line 3120
    sw	$t8,31940($s3)
    sw	$t3,31944($s3)
    sw	$t2,31948($s3)
    sw	$t1,31952($s3)
    sw	$t0,31956($s3)
    sw	$a7,31960($s3)
    sw	$a6,31964($s3)
    # Line 3121
    sw	$s6,-26980($s2)
    sw	$a5,-26976($s2)
    sw	$s1,-26972($s2)
    sw	$a4,-26968($s2)
    # Line 3125
    sw	$a3,31804($s3)
    # Line 3124
    sw	$a2,31800($s3)
    # Line 3122
    sw	$a1,31740($s3)
    # Line 3123
    sw	$a0,31796($s3)
    # Line 3126
    addiu	$a0,$sp,72
    # Line 3127
    ld	$t1,216($sp)
    ld	$s0,344($sp)
    ld	$s1,336($sp)
    ld	$s3,328($sp)
    # Line 3126
    ld	$at,72($sp)
    ld	$v0,8($a0)
    ld	$v1,16($a0)
    ld	$a1,24($a0)
    ld	$a5,32($a0)
    ld	$a6,40($a0)
    ld	$a7,48($a0)
    ld	$t0,56($a0)
    sd	$t0,-29664($s2)
    sd	$a7,-29672($s2)
    sd	$a6,-29680($s2)
    sd	$a5,-29688($s2)
    sd	$a1,-29696($s2)
    sd	$v1,-29704($s2)
    sd	$v0,-29712($s2)
    # Line 3128
    addiu	$a0,$sp,136
    # Line 3126
    sd	$at,-29720($s2)
    # Line 3130
    ld	$a7,304($sp)
    ld	$t0,296($sp)
    # Line 3127
    sw	$t1,-29724($s2)
    # Line 3130
    ld	$t1,288($sp)
    # Line 3128
    lw	$v0,20($a0)
    lw	$t2,136($sp)
    lw	$t3,4($a0)
    lw	$t8,8($a0)
    lw	$t9,12($a0)
    lw	$at,16($a0)
    lw	$v1,24($a0)
    lw	$a4,28($a0)
    sw	$a4,-29432($s2)
    sw	$v1,-29436($s2)
    sw	$at,-29444($s2)
    sw	$t9,-29448($s2)
    sw	$t8,-29452($s2)
    sw	$t3,-29456($s2)
    sw	$t2,-29460($s2)
    sw	$v0,-29440($s2)
    # Line 3144
    ld	$s6,320($sp)
    # Line 3130
    sw	$a7,-29324($s2)
    sw	$t0,-29328($s2)
    sw	$t1,-29332($s2)
    # Line 3129
    ld	$t2,312($sp)
    # Line 3132
    lw	$a6,26976($s2)
    lui	$a5,0x23
    # Line 3129
    sw	$t2,-29464($s2)
    # Line 3132
    ori	$a5,$a5,0x8203
    or	$a5,$a5,$a6
    sw	$a5,26976($s2)
    # Line 3144
    ld	$s2,264($sp)
    li	$v0,1
    # Line 3132
    sw	$s8,4120($zero)
    # Line 3144
    ld	$s8,224($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L0d992d98:
    # Line 2935
    lw	$t1,26976($s2)
    # Line 2934
    lui	$t2,0x10
    nor	$t2,$t2,$zero
    # Line 2935
    or	$t1,$s0,$t1
    sw	$t1,26976($s2)
    # Line 2934
    and	$t2,$s1,$t2
    sw	$t2,-26972($s2)
    # Line 2935
    sw	$s8,4120($zero)
    # Line 2938
    lui	$a7,0x2
    lw	$a6,31740($s3)
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,31740($s3)
    # Line 2939
    lw	$a5,26976($s2)
    # Line 2953
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 2939
    ori	$a5,$a5,0x2
    sw	$a5,26976($s2)
    sw	$s8,4120($zero)
    # Line 2951
    sw	$s8,-29464($s2)
    # Line 2949
    lw	$ra,-29432($s2)
    # Line 2947
    lw	$v0,-29440($s2)
    # Line 2952
    lw	$t3,26976($s2)
    # Line 2944
    lw	$a1,-29452($s2)
    # Line 2942
    lw	$a4,-29460($s2)
    lui	$t8,0xffff
    # Line 2943
    lw	$a3,-29456($s2)
    # Line 2945
    lw	$a0,-29448($s2)
    # Line 2942
    and	$a4,$t8,$a4
    # Line 2946
    lw	$v1,-29444($s2)
    # Line 2943
    and	$a3,$t8,$a3
    # Line 2944
    and	$a1,$t8,$a1
    # Line 2948
    lw	$at,-29436($s2)
    # Line 2945
    and	$a0,$t8,$a0
    # Line 2952
    or	$t3,$t0,$t3
    sw	$t3,26976($s2)
    # Line 2946
    and	$v1,$t8,$v1
    # Line 2947
    and	$v0,$t8,$v0
    # Line 2948
    and	$at,$t8,$at
    # Line 2949
    and	$t8,$t8,$ra
    sw	$t8,-29432($s2)
    # Line 2948
    sw	$at,-29436($s2)
    # Line 2947
    sw	$v0,-29440($s2)
    # Line 2946
    sw	$v1,-29444($s2)
    # Line 2945
    sw	$a0,-29448($s2)
    # Line 2944
    sw	$a1,-29452($s2)
    # Line 2943
    sw	$a3,-29456($s2)
    # Line 2942
    sw	$a4,-29460($s2)
    # Line 2952
    sw	$s8,4120($zero)
    # Line 2953
    lw	$a1,68($s4)
    li	$a3,1
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s4)
    ld	$ra,368($sp)
    ld	$s0,344($sp)
    # Line 3144
    ld	$gp,280($sp)
    # Line 2958
    ld	$t3,240($sp)
    # Line 2959
    ld	$t8,256($sp)
    # Line 2960
    ld	$t9,248($sp)
    # Line 2956
    ld	$v0,208($sp)
    ld	$at,232($sp)
    # Line 2955
    lw	$a5,40($sp)
    sw	$a5,31940($s3)
    addiu	$v1,$sp,40
    lw	$a4,4($v1)
    lw	$a3,8($v1)
    lw	$a2,12($v1)
    lw	$a1,16($v1)
    lw	$a0,20($v1)
    lw	$v1,24($v1)
    sw	$v1,31964($s3)
    sw	$a0,31960($s3)
    sw	$a1,31956($s3)
    sw	$a2,31952($s3)
    sw	$a3,31948($s3)
    sw	$a4,31944($s3)
    # Line 2956
    sw	$at,-26968($s2)
    # Line 2962
    ld	$at,216($sp)
    # Line 2956
    sw	$s7,-26980($s2)
    ld	$s7,360($sp)
    sw	$s1,-26972($s2)
    sw	$v0,-26976($s2)
    # Line 2957
    sw	$s5,31740($s3)
    ld	$s5,352($sp)
    ld	$s1,336($sp)
    # Line 2960
    sw	$t9,31804($s3)
    # Line 2959
    sw	$t8,31800($s3)
    # Line 2958
    sw	$t3,31796($s3)
    # Line 2961
    addiu	$a0,$sp,72
    ld	$s3,328($sp)
    ld	$t9,56($a0)
    ld	$t8,48($a0)
    ld	$a6,72($sp)
    ld	$a7,8($a0)
    ld	$t0,16($a0)
    ld	$t1,24($a0)
    ld	$t3,40($a0)
    sd	$t3,-29680($s2)
    sd	$t1,-29696($s2)
    sd	$t0,-29704($s2)
    sd	$a7,-29712($s2)
    sd	$a6,-29720($s2)
    sd	$t8,-29672($s2)
    ld	$t2,32($a0)
    sd	$t2,-29688($s2)
    # Line 2967
    lui	$t2,0x23
    # Line 2963
    addiu	$a0,$sp,136
    # Line 2961
    sd	$t9,-29664($s2)
    # Line 2967
    ori	$t2,$t2,0x8203
    # Line 2962
    sw	$at,-29724($s2)
    # Line 2963
    lw	$v0,136($sp)
    lw	$v1,4($a0)
    lw	$a4,8($a0)
    lw	$a5,12($a0)
    lw	$a6,16($a0)
    lw	$a7,20($a0)
    lw	$t0,24($a0)
    lw	$t1,28($a0)
    sw	$t1,-29432($s2)
    sw	$t0,-29436($s2)
    sw	$a7,-29440($s2)
    sw	$a6,-29444($s2)
    sw	$a5,-29448($s2)
    sw	$a4,-29452($s2)
    sw	$v1,-29456($s2)
    sw	$v0,-29460($s2)
    # Line 2975
    li	$v0,1
    # Line 2965
    ld	$t8,288($sp)
    # Line 2964
    ld	$t9,312($sp)
    # Line 2965
    ld	$s6,296($sp)
    ld	$s4,304($sp)
    sw	$s4,-29324($s2)
    # Line 3144
    ld	$s4,272($sp)
    # Line 2965
    sw	$s6,-29328($s2)
    # Line 3144
    ld	$s6,320($sp)
    # Line 2964
    sw	$t9,-29464($s2)
    # Line 2967
    lw	$t3,26976($s2)
    # Line 2965
    sw	$t8,-29332($s2)
    # Line 2967
    or	$t2,$t2,$t3
    sw	$t2,26976($s2)
    # Line 3144
    ld	$s2,264($sp)
    # Line 2967
    sw	$s8,4120($zero)
    # Line 3144
    ld	$s8,224($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L0d992fd8:
    # Line 3062
    lui	$ra,0x10
    # Line 3063
    li	$a0,4095
    # Line 3062
    nor	$ra,$ra,$zero
    and	$ra,$a1,$ra
    b	.L0d992aec
    sw	$ra,-26972($s2)
.end RenderFunc_Convolve

# Function: RenderFunc_FastConvolve
# Declared: Line 3156 (Source lines: 3157-3464)
# Address: 0x0d992ff0 - 0x0d993b34 (Size: 2884 bytes, Frame: 192)
.ent RenderFunc_FastConvolve
RenderFunc_FastConvolve:
    # Line 3157
    addiu	$sp,$sp,-448
    move	$a2,$a1
    sd	$s5,376($sp)
    # Line 3170
    addiu	$a4,$sp,0
    # Line 3157
    lui	$at,0x16
    # Line 3163
    lw	$s5,16($a0)
    # Line 3157
    sd	$s1,384($sp)
    move	$s1,$a0
    addiu	$at,$at,21920
    sd	$gp,368($sp)
    addu	$gp,$t9,$at
    # Line 3163
    addiu	$s5,$s5,-1
    sd	$s4,408($sp)
    sd	$s3,360($sp)
    sd	$s2,392($sp)
    # Line 3170
    lw	$v0,0($a2)
    lw	$v1,4($a2)
    lw	$a0,8($a2)
    lw	$t2,32($a1)
    lw	$t1,28($a1)
    lw	$t0,24($a1)
    lw	$a7,20($a1)
    lw	$a3,16($a1)
    lw	$a1,12($a1)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a7,20($sp)
    sw	$a3,16($sp)
    sw	$a1,12($sp)
    sw	$a0,8($sp)
    sw	$v1,4($sp)
    sw	$v0,0($sp)
    # Line 3185
    lw	$s4,4112($zero)
    # Line 3210
    lw	$a1,31804($s4)
    # Line 3209
    lw	$a4,31800($s4)
    # Line 3208
    lw	$a5,31796($s4)
    # Line 3207
    lw	$a6,31740($s4)
    # Line 3205
    lw	$at,31940($s4)
    lw	$a0,31948($s4)
    lw	$t8,31964($s4)
    lw	$t3,31960($s4)
    lw	$t2,31956($s4)
    # Line 3206
    lui	$t9,0x1
    # Line 3205
    lw	$a3,31952($s4)
    lw	$v1,31944($s4)
    # Line 3206
    addu	$s3,$t9,$s4
    la	$t0,__glim_Color4d
    la	$s2,__glim_Color4bv
    la	$a7,__glim_Color4b
    # Line 3205
    addiu	$v0,$sp,40
    # Line 3206
    la	$t1,__glim_Color4ubv
    # Line 3205
    sw	$v1,4($v0)
    sw	$a3,12($v0)
    sw	$t2,16($v0)
    sw	$t3,20($v0)
    sw	$t8,24($v0)
    sw	$a0,8($v0)
    # Line 3211
    addiu	$a0,$sp,72
    # Line 3205
    sw	$at,40($sp)
    sd	$t1,336($sp)
    sd	$t0,328($sp)
    sd	$a7,320($sp)
    sd	$a6,312($sp)
    sd	$a5,304($sp)
    sd	$a4,296($sp)
    sd	$a1,288($sp)
    # Line 3211
    ld	$v0,-29680($s3)
    ld	$v1,-29672($s3)
    ld	$a3,-29664($s3)
    ld	$at,-29688($s3)
    sd	$at,32($a0)
    ld	$at,-29720($s3)
    sd	$a3,56($a0)
    ld	$a3,-29696($s3)
    sd	$v1,48($a0)
    ld	$v1,-29704($s3)
    sd	$v0,40($a0)
    ld	$v0,-29712($s3)
    sd	$v0,8($a0)
    sd	$v1,16($a0)
    sd	$a3,24($a0)
    sd	$at,72($sp)
    # Line 3213
    addiu	$a1,$sp,136
    # Line 3212
    la	$a0,__glOdysseySoftClipClipLine
    sd	$s6,256($sp)
    sd	$s0,416($sp)
    sd	$s8,264($sp)
    sd	$s7,352($sp)
    sd	$a0,344($sp)
    # Line 3213
    la	$a7,__glOdyim_SoftIndexsv
    la	$v0,__glOdyim_SoftScratchColor3f
    la	$at,__glOdyim_SoftScratchColor3dv
    la	$t8,__glOdyim_SoftScratchColor3d
    la	$t3,__glOdyim_SoftScratchColor3bv
    la	$t2,__glOdyim_SoftScratchColor3b
    la	$t1,__glOdyim_SoftIndexubv
    la	$t0,__glOdyim_SoftIndexub
    sw	$t0,4($a1)
    sw	$t1,8($a1)
    sw	$t2,12($a1)
    sw	$t3,16($a1)
    sw	$t8,20($a1)
    sw	$at,24($a1)
    sw	$v0,28($a1)
    sw	$a7,136($sp)
    # Line 3215
    la	$a0,__glOdyim_SoftScratchColor4usv
    lui	$s0,0x20
    li	$s7,2
    lbu	$t1,7147($s3)
    la	$s6,__glOdyim_SoftScratchColor4us
    lui	$a7,0xfffd
    li	$t2,1
    la	$a4,__glOdyim_SoftScratchColor4uiv
    lui	$a6,0xffef
    ori	$a7,$a7,0xffff
    # Line 3214
    la	$s8,__glOdyim_SoftIndexs
    # Line 3215
    beq	$t1,$t2,.L0d9938d0
    ori	$a6,$a6,0xffff
    # Line 3272
    lw	$t1,764($s4)
    # Line 3273
    lw	$t2,68($t1)
    mtc1	$t2,$f5
    # Line 3272
    lw	$t1,64($t1)
    mtc1	$t1,$f4
    # Line 3273
    cvt.s.w	$f5,$f5
    # Line 3274
    addiu	$a5,$sp,168
    # Line 3272
    cvt.s.w	$f4,$f4
    # Line 3273
    sdc1	$f5,208($sp)
    sd	$ra,400($sp)
    sd	$a4,272($sp)
    sd	$a0,280($sp)
    # Line 3274
    lw	$t0,0($a2)
    sw	$t0,168($sp)
    lw	$a3,4($a2)
    sw	$a3,4($a5)
    lw	$v1,8($a2)
    sw	$v1,8($a5)
    lw	$v0,12($a2)
    sw	$v0,12($a5)
    lw	$at,16($a2)
    sw	$at,16($a5)
    lw	$t9,20($a2)
    sw	$t9,20($a5)
    lw	$t8,24($a2)
    sw	$t8,24($a5)
    lw	$t3,28($a2)
    sw	$t3,28($a5)
    lw	$t2,32($a2)
    sw	$t2,32($a5)
    # Line 3275
    lwc1	$f12,_lit_bf800000
    add.s	$f12,$f4,$f12
    ldc1	$f13,_lit8_3fe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    mul.d	$f12,$f12,$f13
    cvt.s.d	$f12,$f12
    jal	ceilf
    sdc1	$f12,216($sp)
    # Line 3276
    lwc1	$f13,_lit_bf800000
    ldc1	$f12,208($sp)
    ldc1	$f14,_lit8_3fe0000000000000
    add.s	$f12,$f12,$f13
    # Line 3275
    lwc1	$f13,168($sp)
    # Line 3276
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 3275
    add.s	$f13,$f13,$f0
    # Line 3276
    mul.d	$f12,$f12,$f14
    # Line 3275
    sdc1	$f13,232($sp)
    swc1	$f13,168($sp)
    # Line 3276
    cvt.s.d	$f12,$f12
    jal	ceilf
    sdc1	$f12,224($sp)
    lwc1	$f14,172($sp)
    # Line 3277
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f12,216($sp)
    # Line 3276
    add.s	$f14,$f14,$f0
    sdc1	$f14,240($sp)
    # Line 3277
    jal	floorf
    # Line 3276
    swc1	$f14,172($sp)
    # Line 3277
    lwc1	$f15,176($sp)
    # Line 3278
    ldc1	$f12,224($sp)
    # lw $t9, -16948($gp) # &floorf
    sd	$s8,440($sp)
    # Line 3277
    sub.s	$f15,$f15,$f0
    sdc1	$f15,248($sp)
    # Line 3278
    jal	floorf
    # Line 3277
    swc1	$f15,176($sp)
    # Line 3280
    ldc1	$f19,232($sp)
    ldc1	$f18,240($sp)
    ldc1	$f17,248($sp)
    # Line 3278
    lwc1	$f16,180($sp)
    # Line 3280
    swc1	$f17,192($sp)
    swc1	$f18,188($sp)
    swc1	$f19,184($sp)
    # Line 3278
    sub.s	$f16,$f16,$f0
    # Line 3280
    swc1	$f16,196($sp)
    # Line 3278
    swc1	$f16,180($sp)
    # Line 3283
    lw	$a2,31740($s4)
    lui	$v1,0x2
    or	$a2,$v1,$a2
    sw	$a2,31740($s4)
    # Line 3284
    lw	$a1,26976($s3)
    ori	$a1,$a1,0x2
    sw	$a1,26976($s3)
    sw	$s7,4120($zero)
    # Line 3292
    lw	$ra,26976($s3)
    # Line 3290
    lui	$v0,0x6
    # Line 3288
    lui	$a0,0x1
    la	$at,__glim_Color4bv
    # Line 3290
    nor	$v0,$v0,$zero
    # Line 3288
    nor	$a0,$a0,$zero
    # Line 3292
    ori	$ra,$ra,0x1
    sw	$ra,26976($s3)
    # Line 3288
    and	$at,$at,$a0
    # Line 3290
    and	$at,$at,$v0
    sw	$at,-26972($s3)
    # Line 3292
    sw	$s7,4120($zero)
    # Line 3295
    lw	$a3,26976($s3)
    # Line 3294
    lui	$s8,0xff7f
    la	$a4,__glim_Color4bv
    ori	$s8,$s8,0xffff
    # Line 3295
    or	$a3,$s0,$a3
    sw	$a3,26976($s3)
    # Line 3294
    and	$a4,$s8,$a4
    sw	$a4,-26972($s3)
    # Line 3303
    li	$a7,-769
    # Line 3295
    sw	$s7,4120($zero)
    # Line 3299
    lui	$a6,0x1000
    # Line 3305
    lui	$a2,0xff00
    # Line 3299
    lw	$a3,31956($s4)
    # Line 3305
    ori	$a2,$a2,0xfff
    # Line 3306
    li	$a4,-4096
    # Line 3305
    lw	$a5,31960($s4)
    # Line 3299
    or	$a3,$a3,$a6
    # Line 3301
    li	$a6,-12289
    and	$a3,$a3,$a6
    # Line 3302
    li	$a6,-3073
    # Line 3305
    and	$a5,$a2,$a5
    # Line 3302
    and	$a3,$a3,$a6
    # Line 3306
    and	$a5,$a4,$a5
    # Line 3303
    and	$a3,$a3,$a7
    # Line 3307
    lw	$a6,31964($s4)
    # Line 3313
    li	$a7,-225
    # Line 3312
    ori	$a3,$a3,0x4000
    # Line 3306
    sw	$a5,31960($s4)
    # Line 3315
    li	$a5,-31
    # Line 3313
    and	$a3,$a3,$a7
    # Line 3307
    and	$a6,$a2,$a6
    # Line 3313
    ori	$a3,$a3,0x20
    # Line 3308
    and	$a6,$a4,$a6
    sw	$a6,31964($s4)
    # Line 3315
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x2
    sw	$a3,31956($s4)
    # Line 3318
    lw	$a1,26976($s3)
    ori	$a1,$a1,0x200
    sw	$a1,26976($s3)
    sw	$s7,4120($zero)
    # Line 3320
    lw	$a0,31740($s4)
    or	$v1,$v1,$a0
    sw	$v1,31740($s4)
    # Line 3321
    lw	$v0,26976($s3)
    ori	$v0,$v0,0x2
    sw	$v0,26976($s3)
    sw	$s7,4120($zero)
    # Line 3322
    lw	$ra,31744($s4)
    li	$at,-385
    and	$ra,$ra,$at
    ori	$ra,$ra,0x80
    # Line 3324
    and	$s8,$s8,$ra
    sw	$s8,31744($s4)
    # Line 3326
    lw	$t9,26976($s3)
    ori	$t9,$t9,0x4
    sw	$t9,26976($s3)
    sw	$s7,4120($zero)
    # Line 3333
    li	$t8,0xe000
    lw	$t3,31796($s4)
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    # Line 3335
    li	$t8,-8129
    and	$t3,$t3,$t8
    # Line 3337
    li	$s8,-64
    # Line 3335
    ori	$t3,$t3,0xa00
    # Line 3337
    and	$t3,$s8,$t3
    sw	$t3,31796($s4)
    # Line 3339
    lw	$t2,26976($s3)
    ori	$t2,$t2,0x1
    sw	$t2,26976($s3)
    sw	$s7,4120($zero)
    lbu	$t1,7120($s3)
    beqz	$t1,.L0d9938b8
    la	$a1,__glim_Color4bv
    # Line 3348
    lui	$a3,0x10
    li	$a0,2047
    or	$a3,$a1,$a3
    sw	$a3,-26972($s3)
.L0d993490:
    # Line 3362
    lw	$t1,26976($s3)
    or	$t1,$s0,$t1
    sw	$t1,26976($s3)
    # Line 3364
    lui	$t0,0xff
    # Line 3362
    sw	$s7,4120($zero)
    # Line 3364
    sll	$a6,$a0,0xc
    ori	$t0,$t0,0xf000
    lw	$a7,31800($s4)
    and	$a6,$a6,$t0
    # Line 3366
    lw	$t0,31804($s4)
    # Line 3365
    andi	$a5,$a0,0xfff
    # Line 3366
    and	$t0,$a2,$t0
    # Line 3364
    and	$a7,$a2,$a7
    or	$a7,$a6,$a7
    # Line 3366
    or	$a6,$a6,$t0
    sd	$s6,432($sp)
    # Line 3367
    and	$a6,$a4,$a6
    # Line 3365
    and	$a7,$a4,$a7
    or	$a7,$a5,$a7
    # Line 3367
    or	$a5,$a5,$a6
    sw	$a5,31804($s4)
    # Line 3365
    sw	$a7,31800($s4)
    # Line 3368
    lw	$a3,26976($s3)
    sd	$s2,424($sp)
    lui	$a1,0x1
    ori	$a3,$a3,0x1
    sw	$a3,26976($s3)
    ori	$a1,$a1,0x19e4
    blez	$s5,.L0d9938a8
    sw	$s7,4120($zero)
    la	$s2,sub_0d9a0000
    move	$s0,$zero
    addu	$s6,$a1,$s4
    addiu	$s2,$s2,-13472
    nop
    nop
.L0d993520:
    # Line 3372
    move	$t9,$s2
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    # Line 3374
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s6
    move	$a3,$zero
    addiu	$a2,$sp,168
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    # Line 3376
    lw	$t9,31796($s4)
    and	$t9,$s8,$t9
    ori	$t9,$t9,0x8
    sw	$t9,31796($s4)
    # Line 3378
    lw	$t8,26976($s3)
    # Line 3370
    addiu	$s0,$s0,1
    # Line 3378
    ori	$t8,$t8,0x1
    sw	$t8,26976($s3)
    # Line 3370
    bne	$s5,$s0,.L0d993520
    # Line 3378
    sw	$s7,4120($zero)
    lui	$s0,0x20
.L0d993574:
    # Line 3386
    sll	$a1,$s5,0x2
    subu	$a1,$a1,$s5
    sll	$a1,$a1,0x3
    subu	$a1,$a1,$s5
    lw	$a2,7148($s3)
    sll	$a1,$a1,0x2
    lw	$t8,20($s1)
    subu	$a1,$a1,$s5
    lwc1	$f29,592($a2)
    sll	$a1,$a1,0x5
    addu	$t8,$t8,$a1
    swc1	$f29,36($t8)
    # Line 3388
    lw	$t3,7148($s3)
    lw	$t2,20($s1)
    lwc1	$f27,596($t3)
    addu	$t2,$t2,$a1
    swc1	$f27,184($t2)
    # Line 3390
    lw	$t1,7148($s3)
    lw	$t0,20($s1)
    lwc1	$f25,600($t1)
    addu	$t0,$t0,$a1
    swc1	$f25,332($t0)
    # Line 3392
    lw	$a7,7148($s3)
    lw	$a6,20($s1)
    lwc1	$f23,604($a7)
    addu	$a6,$a6,$a1
    swc1	$f23,480($a6)
    # Line 3394
    lw	$a5,20($s1)
    lwc1	$f21,696($s4)
    addu	$a5,$a5,$a1
    swc1	$f21,40($a5)
    # Line 3396
    lw	$a4,20($s1)
    lwc1	$f19,700($s4)
    addu	$a4,$a4,$a1
    swc1	$f19,188($a4)
    # Line 3398
    lw	$a3,20($s1)
    lwc1	$f18,704($s4)
    addu	$a3,$a3,$a1
    swc1	$f18,336($a3)
    # Line 3400
    lw	$a2,20($s1)
    lwc1	$f17,708($s4)
    # Line 3403
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 3400
    addu	$a2,$a2,$a1
    swc1	$f17,484($a2)
    lui	$s8,0xffef
    # Line 3403
    lw	$a0,20($s1)
    ori	$s8,$s8,0xffff
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 3406
    lw	$a0,31740($s4)
    lui	$v1,0xfffd
    ori	$v1,$v1,0xffff
    and	$v1,$v1,$a0
    sw	$v1,31740($s4)
    # Line 3407
    lw	$v0,26976($s3)
    ori	$v0,$v0,0x2
    sw	$v0,26976($s3)
    sw	$s7,4120($zero)
    # Line 3412
    la	$at,__glim_Color4bv
    # Line 3413
    lw	$ra,26976($s3)
    # Line 3416
    move	$t9,$s2
    # Line 3412
    and	$at,$s8,$at
    sw	$at,-26972($s3)
    # Line 3416
    move	$a1,$s5
    # Line 3413
    or	$ra,$s0,$ra
    sw	$ra,26976($s3)
    # Line 3416
    move	$a0,$s1
    jalr	$t9
    # Line 3413
    sw	$s7,4120($zero)
    # Line 3419
    lwc1	$f2,16($sp)
    lwc1	$f1,20($sp)
    lwc1	$f31,28($sp)
    lwc1	$f0,24($sp)
    swc1	$f31,196($sp)
    swc1	$f0,192($sp)
    swc1	$f1,188($sp)
    swc1	$f2,184($sp)
    lbu	$a0,6639($s3)
    beqz	$a0,.L0d993888
    # Line 3427
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 3421
    sw	$zero,31956($s4)
    # Line 3422
    lw	$a1,26976($s3)
    # Line 3423
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3422
    ori	$a1,$a1,0x200
    sw	$a1,26976($s3)
    # Line 3423
    li	$a3,1
    addiu	$a2,$sp,168
    # Line 3422
    sw	$s7,4120($zero)
    # Line 3423
    move	$a1,$s6
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s1)
    ld	$s2,392($sp)
.L0d9936e4:
    ld	$s6,256($sp)
    ld	$s8,264($sp)
    ld	$ra,400($sp)
    ld	$a0,272($sp)
    # Line 3427
    lw	$a2,31600($s4)
    ld	$a1,280($sp)
    ld	$a5,440($sp)
    andi	$a2,$a2,0x80
    ld	$a6,432($sp)
    beqz	$a2,.L0d993720
    ld	$a4,424($sp)
    # Line 3436
    la	$a3,__glim_Color4bv
    li	$a7,-2
    and	$a3,$a3,$a7
    sw	$a3,-26972($s3)
.L0d993720:
    # Line 3445
    ld	$t9,288($sp)
    # Line 3441
    ld	$v1,336($sp)
    ld	$v0,320($sp)
    ld	$at,328($sp)
    # Line 3440
    lw	$t3,40($sp)
    addiu	$a2,$sp,40
    lw	$t1,8($a2)
    lw	$t0,12($a2)
    lw	$a7,16($a2)
    lw	$a3,20($a2)
    # Line 3438
    lw	$t8,26976($s3)
    # Line 3440
    lw	$t2,4($a2)
    lw	$a2,24($a2)
    # Line 3438
    or	$t8,$s0,$t8
    sw	$t8,26976($s3)
    sw	$s7,4120($zero)
    # Line 3440
    sw	$a2,31964($s4)
    sw	$a3,31960($s4)
    sw	$a7,31956($s4)
    sw	$t0,31952($s4)
    sw	$t1,31948($s4)
    sw	$t2,31944($s4)
    sw	$t3,31940($s4)
    # Line 3441
    sw	$at,-26968($s3)
    sw	$a4,-26972($s3)
    sw	$v0,-26976($s3)
    sw	$v1,-26980($s3)
    # Line 3445
    sw	$t9,31804($s4)
    # Line 3442
    ld	$t2,312($sp)
    # Line 3443
    ld	$t3,304($sp)
    # Line 3444
    ld	$t8,296($sp)
    sw	$t8,31800($s4)
    # Line 3443
    sw	$t3,31796($s4)
    # Line 3446
    addiu	$a2,$sp,72
    # Line 3442
    sw	$t2,31740($s4)
    ld	$s4,408($sp)
    ld	$s0,416($sp)
    # Line 3446
    ld	$t9,72($sp)
    ld	$at,8($a2)
    ld	$v0,16($a2)
    ld	$v1,24($a2)
    ld	$a3,32($a2)
    ld	$a4,40($a2)
    ld	$t2,48($a2)
    ld	$t3,56($a2)
    sd	$t3,-29664($s3)
    sd	$t2,-29672($s3)
    sd	$a4,-29680($s3)
    sd	$a3,-29688($s3)
    sd	$v1,-29696($s3)
    sd	$v0,-29704($s3)
    sd	$at,-29712($s3)
    sd	$t9,-29720($s3)
    # Line 3447
    ld	$t8,344($sp)
    # Line 3448
    addiu	$a2,$sp,136
    # Line 3447
    sw	$t8,-29724($s3)
    # Line 3448
    lw	$t9,136($sp)
    lw	$at,4($a2)
    lw	$v0,8($a2)
    lw	$v1,12($a2)
    lw	$a3,16($a2)
    lw	$t1,20($a2)
    lw	$t2,24($a2)
    lw	$t3,28($a2)
    sw	$t3,-29432($s3)
    sw	$t2,-29436($s3)
    sw	$t1,-29440($s3)
    sw	$a3,-29444($s3)
    sw	$v1,-29448($s3)
    sw	$v0,-29452($s3)
    sw	$at,-29456($s3)
    sw	$t9,-29460($s3)
    # Line 3464
    ld	$gp,368($sp)
    # Line 3449
    sw	$a5,-29464($s3)
    # Line 3450
    sw	$a0,-29332($s3)
    sw	$a6,-29328($s3)
    # Line 3452
    lw	$s5,26976($s3)
    lui	$s1,0x23
    # Line 3450
    sw	$a1,-29324($s3)
    # Line 3452
    ori	$s1,$s1,0x8203
    or	$s1,$s1,$s5
    sw	$s1,26976($s3)
    # Line 3464
    ld	$s1,384($sp)
    ld	$s3,360($sp)
    ld	$s5,376($sp)
    li	$v0,1
    # Line 3452
    sw	$s7,4120($zero)
    # Line 3464
    ld	$s7,352($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0d993888:
    # Line 3427
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,168
    move	$a1,$s6
    jalr	$t9
    lw	$a0,72($s1)
    b	.L0d9936e4
    ld	$s2,392($sp)
.L0d9938a8:
    # Line 3370
    la	$s2,sub_0d9a0000
    addu	$s6,$a1,$s4
    b	.L0d993574
    addiu	$s2,$s2,-13472
.L0d9938b8:
    # Line 3354
    lui	$t8,0xffef
    # Line 3355
    li	$a0,4095
    # Line 3354
    ori	$t8,$t8,0xffff
    and	$t8,$t8,$a1
    b	.L0d993490
    sw	$t8,-26972($s3)
.L0d9938d0:
    # Line 3220
    lw	$v1,26976($s3)
    # Line 3219
    and	$a1,$a6,$s2
    sw	$a1,-26972($s3)
    # Line 3220
    or	$v1,$s0,$v1
    sw	$v1,26976($s3)
    sw	$s7,4120($zero)
    # Line 3223
    lw	$v0,31740($s4)
    and	$v0,$a7,$v0
    sw	$v0,31740($s4)
    # Line 3224
    lw	$at,26976($s3)
    ori	$at,$at,0x2
    sw	$at,26976($s3)
    sw	$s7,4120($zero)
    # Line 3236
    sw	$s7,-29464($s3)
    # Line 3234
    la	$a1,__glOdyim_SoftScratchColor3f
    # Line 3232
    la	$a5,__glOdyim_SoftScratchColor3d
    # Line 3237
    lw	$v0,26976($s3)
    # Line 3229
    la	$t2,__glOdyim_SoftIndexubv
    # Line 3227
    la	$t8,__glOdyim_SoftIndexsv
    lui	$v1,0xffff
    # Line 3228
    la	$t3,__glOdyim_SoftIndexub
    # Line 3230
    la	$t1,__glOdyim_SoftScratchColor3b
    # Line 3227
    and	$t8,$v1,$t8
    # Line 3231
    la	$t0,__glOdyim_SoftScratchColor3bv
    # Line 3228
    and	$t3,$v1,$t3
    # Line 3229
    and	$t2,$v1,$t2
    # Line 3233
    la	$a3,__glOdyim_SoftScratchColor3dv
    # Line 3230
    and	$t1,$v1,$t1
    # Line 3237
    or	$v0,$t9,$v0
    sw	$v0,26976($s3)
    # Line 3231
    and	$t0,$v1,$t0
    # Line 3232
    and	$a5,$v1,$a5
    # Line 3233
    and	$a3,$v1,$a3
    # Line 3234
    and	$v1,$v1,$a1
    sw	$v1,-29432($s3)
    # Line 3233
    sw	$a3,-29436($s3)
    # Line 3232
    sw	$a5,-29440($s3)
    # Line 3231
    sw	$t0,-29444($s3)
    # Line 3230
    sw	$t1,-29448($s3)
    # Line 3229
    sw	$t2,-29452($s3)
    # Line 3228
    sw	$t3,-29456($s3)
    # Line 3227
    sw	$t8,-29460($s3)
    # Line 3237
    sw	$s7,4120($zero)
    lw	$a1,68($s1)
    sd	$ra,400($sp)
    lbu	$at,11($a1)
    sd	$a4,272($sp)
    sd	$a0,280($sp)
    beqz	$at,.L0d993b18
    lw	$t0,72($s1)
    # Line 3239
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$t0
    jal	__glOdysseyImageMovePixelsTexture
    li	$a3,1
    ld	$s0,416($sp)
.L0d9939ac:
    ld	$ra,400($sp)
    # Line 3464
    ld	$gp,368($sp)
    ld	$s1,384($sp)
    # Line 3249
    ld	$a3,312($sp)
    # Line 3250
    ld	$a4,304($sp)
    # Line 3251
    ld	$a5,296($sp)
    # Line 3252
    ld	$a6,288($sp)
    # Line 3248
    ld	$t1,336($sp)
    ld	$t0,320($sp)
    ld	$a7,328($sp)
    # Line 3247
    lw	$v1,40($sp)
    sw	$v1,31940($s4)
    addiu	$t2,$sp,40
    lw	$v0,4($t2)
    lw	$at,8($t2)
    lw	$t9,12($t2)
    lw	$t8,16($t2)
    lw	$t3,20($t2)
    lw	$t2,24($t2)
    sw	$t2,31964($s4)
    sw	$t3,31960($s4)
    sw	$t8,31956($s4)
    sw	$t9,31952($s4)
    sw	$at,31948($s4)
    sw	$v0,31944($s4)
    # Line 3248
    sw	$a7,-26968($s3)
    sw	$s2,-26972($s3)
    sw	$t0,-26976($s3)
    sw	$t1,-26980($s3)
    # Line 3252
    sw	$a6,31804($s4)
    # Line 3251
    sw	$a5,31800($s4)
    # Line 3250
    sw	$a4,31796($s4)
    # Line 3249
    sw	$a3,31740($s4)
    ld	$s4,408($sp)
    # Line 3253
    addiu	$a0,$sp,72
    ld	$s2,392($sp)
    # Line 3254
    ld	$t8,344($sp)
    # Line 3253
    ld	$t0,32($a0)
    ld	$t3,56($a0)
    ld	$t2,48($a0)
    ld	$a3,72($sp)
    ld	$a5,8($a0)
    ld	$a6,16($a0)
    ld	$a7,24($a0)
    ld	$t1,40($a0)
    sd	$t1,-29680($s3)
    sd	$a7,-29696($s3)
    sd	$a6,-29704($s3)
    sd	$a5,-29712($s3)
    sd	$a3,-29720($s3)
    sd	$t2,-29672($s3)
    sd	$t3,-29664($s3)
    sd	$t0,-29688($s3)
    # Line 3255
    addiu	$a0,$sp,136
    # Line 3254
    sw	$t8,-29724($s3)
    # Line 3255
    lw	$v0,8($a0)
    lw	$t9,136($sp)
    lw	$at,4($a0)
    lw	$v1,12($a0)
    lw	$a3,16($a0)
    lw	$a5,20($a0)
    lw	$a6,24($a0)
    lw	$a7,28($a0)
    sw	$a7,-29432($s3)
    sw	$a6,-29436($s3)
    sw	$a5,-29440($s3)
    sw	$a3,-29444($s3)
    sw	$v1,-29448($s3)
    sw	$at,-29456($s3)
    sw	$t9,-29460($s3)
    sw	$v0,-29452($s3)
    # Line 3267
    li	$v0,1
    # Line 3464
    ld	$s5,376($sp)
    # Line 3257
    sw	$s6,-29328($s3)
    # Line 3464
    ld	$s6,256($sp)
    # Line 3256
    sw	$s8,-29464($s3)
    # Line 3464
    ld	$s8,264($sp)
    # Line 3257
    ld	$t2,280($sp)
    ld	$t3,272($sp)
    sw	$t3,-29332($s3)
    # Line 3259
    lw	$t1,26976($s3)
    lui	$t0,0x23
    # Line 3257
    sw	$t2,-29324($s3)
    # Line 3259
    ori	$t0,$t0,0x8203
    or	$t0,$t0,$t1
    sw	$t0,26976($s3)
    # Line 3464
    ld	$s3,360($sp)
    # Line 3259
    sw	$s7,4120($zero)
    # Line 3464
    ld	$s7,352($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0d993b18:
    # Line 3243
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$t0
    li	$a4,1
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    b	.L0d9939ac
    ld	$s0,416($sp)
.end RenderFunc_FastConvolve

# Function: RenderFunc_Convolve24BitMode
# Declared: Line 3470 (Source lines: 3471-3949)
# Address: 0x0d993b40 - 0x0d994a08 (Size: 3784 bytes, Frame: 160)
.ent RenderFunc_Convolve24BitMode
RenderFunc_Convolve24BitMode:
    # Line 3471
    addiu	$sp,$sp,-416
    move	$a2,$a1
    sd	$s5,296($sp)
    # Line 3485
    addiu	$a3,$sp,0
    # Line 3471
    lui	$at,0x16
    # Line 3477
    lw	$s5,16($a0)
    # Line 3471
    sd	$s4,344($sp)
    move	$s4,$a0
    addiu	$at,$at,19024
    sd	$gp,320($sp)
    addu	$gp,$t9,$at
    # Line 3477
    addiu	$s5,$s5,-1
    sd	$s7,368($sp)
    sd	$s6,384($sp)
    sd	$s3,360($sp)
    sd	$s2,224($sp)
    # Line 3485
    lw	$t2,0($a1)
    sw	$t2,0($sp)
    lw	$t1,4($a1)
    sw	$t1,4($sp)
    lw	$t0,8($a1)
    sw	$t0,8($sp)
    lw	$a7,12($a1)
    sw	$a7,12($sp)
    lw	$a5,16($a1)
    sw	$a5,16($sp)
    lw	$a1,20($a1)
    sw	$a1,20($sp)
    lw	$a0,24($a2)
    sw	$a0,24($sp)
    lw	$v1,28($a2)
    sw	$v1,28($sp)
    lw	$v0,32($a2)
    sw	$v0,32($sp)
    # Line 3500
    lw	$s3,4112($zero)
    # Line 3519
    lw	$a4,31804($s3)
    # Line 3518
    lw	$a6,31800($s3)
    # Line 3517
    lw	$a7,31796($s3)
    # Line 3516
    lw	$a3,31740($s3)
    # Line 3514
    lw	$t9,31940($s3)
    lw	$t0,31956($s3)
    lw	$t3,31964($s3)
    lw	$t2,31960($s3)
    lw	$a5,31952($s3)
    # Line 3515
    lui	$t1,0x1
    # Line 3514
    lw	$v1,31948($s3)
    lw	$v0,31944($s3)
    # Line 3515
    addu	$s2,$t1,$s3
    lw	$a1,-26968($s2)
    lw	$s6,-26972($s2)
    lw	$a0,-26976($s2)
    # Line 3514
    addiu	$at,$sp,40
    # Line 3515
    lw	$s7,-26980($s2)
    # Line 3514
    sw	$v0,4($at)
    sw	$v1,8($at)
    sw	$a5,12($at)
    sw	$t2,20($at)
    sw	$t3,24($at)
    sw	$t0,16($at)
    # Line 3520
    addiu	$t0,$sp,72
    # Line 3514
    sw	$t9,40($sp)
    sd	$a7,288($sp)
    sd	$a6,280($sp)
    sd	$a4,272($sp)
    sd	$a3,264($sp)
    sd	$a1,248($sp)
    sd	$a0,240($sp)
    # Line 3520
    ld	$a5,-29688($s2)
    ld	$v1,-29696($s2)
    sd	$v1,24($t0)
    sd	$a5,32($t0)
    ld	$at,-29672($s2)
    ld	$v0,-29664($s2)
    ld	$t9,-29680($s2)
    sd	$t9,40($t0)
    ld	$t9,-29720($s2)
    sd	$v0,56($t0)
    ld	$v0,-29704($s2)
    sd	$at,48($t0)
    ld	$at,-29712($s2)
    sd	$at,8($t0)
    sd	$v0,16($t0)
    sd	$t9,72($sp)
    # Line 3522
    addiu	$a1,$sp,136
    # Line 3521
    lw	$a0,-29724($s2)
    sd	$s8,256($sp)
    sd	$s1,376($sp)
    sd	$s0,352($sp)
    sd	$a0,232($sp)
    # Line 3522
    lw	$v1,-29460($s2)
    lw	$t9,-29432($s2)
    lw	$t8,-29436($s2)
    lw	$t3,-29440($s2)
    lw	$t2,-29444($s2)
    lw	$t0,-29448($s2)
    lw	$a7,-29452($s2)
    lw	$a5,-29456($s2)
    sw	$a5,4($a1)
    sw	$a7,8($a1)
    sw	$t0,12($a1)
    sw	$t2,16($a1)
    sw	$t3,20($a1)
    sw	$t8,24($a1)
    sw	$t9,28($a1)
    sw	$v1,136($sp)
    sd	$ra,392($sp)
    # Line 3523
    lw	$t8,-29464($s2)
    # Line 3524
    lw	$a5,-29332($s2)
    lw	$a6,-29328($s2)
    lw	$a7,-29324($s2)
    sd	$a7,336($sp)
    lui	$s0,0x20
    li	$s8,2
    lbu	$at,7147($s2)
    lui	$a4,0xfffd
    sd	$a6,304($sp)
    li	$v0,1
    lui	$s1,0xffef
    sd	$a5,312($sp)
    ori	$a4,$a4,0xffff
    # Line 3523
    sd	$t8,328($sp)
    # Line 3524
    beq	$at,$v0,.L0d9947b4
    ori	$s1,$s1,0xffff
    # Line 3587
    move	$a1,$s4
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$a0,$sp,168
    ori	$a4,$t1,0x1a20
    sd	$s7,408($sp)
    ori	$s7,$t1,0x19e4
    addiu	$t9,$t9,-6992
    addu	$a4,$s3,$a4
    addu	$s7,$s3,$s7
    sd	$a4,216($sp)
    jal	sub_0d9a0000
    move	$a3,$s7
    # Line 3591
    lw	$a0,31740($s3)
    lui	$at,0x2
    or	$a0,$at,$a0
    sw	$a0,31740($s3)
    # Line 3592
    lw	$v1,26976($s2)
    ori	$v1,$v1,0x2
    sw	$v1,26976($s2)
    sw	$s8,4120($zero)
    # Line 3600
    lw	$t8,26976($s2)
    # Line 3598
    lui	$t9,0xfff9
    # Line 3596
    lui	$v0,0x1
    lw	$ra,-26972($s2)
    # Line 3598
    ori	$t9,$t9,0xffff
    # Line 3596
    nor	$v0,$v0,$zero
    # Line 3600
    ori	$t8,$t8,0x1
    sw	$t8,26976($s2)
    # Line 3596
    and	$ra,$ra,$v0
    # Line 3598
    and	$t9,$t9,$ra
    sw	$t9,-26972($s2)
    # Line 3600
    sw	$s8,4120($zero)
    # Line 3603
    lw	$a4,26976($s2)
    # Line 3602
    lui	$t3,0xff7f
    lw	$a5,-26972($s2)
    ori	$t3,$t3,0xffff
    # Line 3603
    or	$a4,$s0,$a4
    sw	$a4,26976($s2)
    # Line 3602
    and	$a5,$t3,$a5
    sw	$a5,-26972($s2)
    # Line 3603
    sw	$s8,4120($zero)
    # Line 3613
    lui	$a3,0xff00
    lw	$a1,31960($s3)
    # Line 3614
    li	$a2,-4096
    # Line 3613
    ori	$a3,$a3,0xfff
    # Line 3607
    lw	$a0,31956($s3)
    # Line 3613
    and	$a1,$a3,$a1
    # Line 3607
    lui	$a4,0x1000
    or	$a0,$a0,$a4
    # Line 3609
    li	$a4,-12289
    # Line 3615
    lw	$a5,31964($s3)
    # Line 3609
    and	$a0,$a0,$a4
    # Line 3610
    li	$a4,-3073
    and	$a0,$a0,$a4
    # Line 3611
    li	$a4,-769
    # Line 3615
    and	$a3,$a3,$a5
    # Line 3611
    and	$a0,$a0,$a4
    # Line 3621
    li	$a4,-225
    # Line 3620
    ori	$a0,$a0,0x4000
    # Line 3614
    and	$a1,$a2,$a1
    # Line 3621
    and	$a0,$a0,$a4
    # Line 3614
    sw	$a1,31960($s3)
    # Line 3623
    li	$a1,-31
    # Line 3621
    ori	$a0,$a0,0x20
    # Line 3616
    and	$a2,$a2,$a3
    sw	$a2,31964($s3)
    # Line 3623
    and	$a0,$a0,$a1
    ori	$a0,$a0,0x2
    sw	$a0,31956($s3)
    # Line 3626
    lw	$v1,26976($s2)
    ori	$v1,$v1,0x200
    sw	$v1,26976($s2)
    sw	$s8,4120($zero)
    # Line 3628
    lw	$v0,31740($s3)
    or	$at,$at,$v0
    sw	$at,31740($s3)
    # Line 3629
    lw	$ra,26976($s2)
    ori	$ra,$ra,0x2
    sw	$ra,26976($s2)
    sw	$s8,4120($zero)
    # Line 3630
    lw	$t8,31744($s3)
    li	$t9,-385
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x80
    # Line 3632
    and	$t3,$t3,$t8
    sw	$t3,31744($s3)
    # Line 3634
    lw	$t2,26976($s2)
    ori	$t2,$t2,0x4
    sw	$t2,26976($s2)
    sw	$s8,4120($zero)
    # Line 3641
    lui	$t1,0xffff
    lw	$t2,31796($s3)
    ori	$t1,$t1,0x1fff
    # Line 3643
    li	$t0,-8129
    # Line 3641
    and	$t1,$t1,$t2
    # Line 3643
    and	$t0,$t0,$t1
    # Line 3646
    li	$a7,-64
    # Line 3643
    ori	$t0,$t0,0xa00
    # Line 3646
    and	$a7,$a7,$t0
    sw	$a7,31796($s3)
    # Line 3649
    lw	$a6,26976($s2)
    ori	$a6,$a6,0x1
    sw	$a6,26976($s2)
    sw	$s8,4120($zero)
    # Line 3657
    lui	$a1,0x10
    # Line 3676
    lui	$t9,0xfff9
    # Line 3649
    lbu	$a5,7120($s2)
    # Line 3676
    ori	$t9,$t9,0xffff
    # Line 3681
    lui	$t3,0xff
    ori	$t3,$t3,0xf000
    # Line 3682
    li	$t2,-4096
    # Line 3657
    li	$a6,2047
    # Line 3649
    beqz	$a5,.L0d9949f8
    lw	$a7,-26972($s2)
    # Line 3657
    or	$a1,$a7,$a1
    sw	$a1,-26972($s2)
.L0d993efc:
    # Line 3671
    lw	$ra,26976($s2)
    or	$ra,$s0,$ra
    sw	$ra,26976($s2)
    sw	$s8,4120($zero)
    # Line 3676
    lw	$ra,-26972($s2)
    # Line 3678
    lw	$t8,26976($s2)
    # Line 3676
    and	$t9,$t9,$ra
    sw	$t9,-26972($s2)
    # Line 3678
    or	$t8,$s0,$t8
    sw	$t8,26976($s2)
    sw	$s8,4120($zero)
    # Line 3681
    lw	$t8,31800($s3)
    lui	$t9,0xff00
    sll	$ra,$a6,0xc
    ori	$t9,$t9,0xfff
    and	$t3,$t3,$ra
    # Line 3683
    lw	$ra,31804($s3)
    # Line 3682
    andi	$t1,$a6,0xfff
    # Line 3681
    and	$t8,$t9,$t8
    or	$t8,$t3,$t8
    # Line 3683
    and	$t9,$t9,$ra
    sd	$s6,400($sp)
    # Line 3682
    and	$t8,$t2,$t8
    # Line 3683
    or	$t3,$t3,$t9
    # Line 3682
    or	$t8,$t1,$t8
    sw	$t8,31800($s3)
    # Line 3684
    and	$t2,$t2,$t3
    or	$t1,$t1,$t2
    sw	$t1,31804($s3)
    # Line 3685
    lui	$a7,0x1
    lw	$t0,26976($s2)
    la	$s1,sub_0d9a0000
    ori	$a7,$a7,0x1a5c
    addu	$s6,$a7,$s3
    ori	$t0,$t0,0x1
    sw	$t0,26976($s2)
    addiu	$s1,$s1,-13472
    blez	$s5,.L0d9949e8
    sw	$s8,4120($zero)
    move	$s0,$zero
    nop
.L0d993fa0:
    # Line 3691
    move	$t9,$s1
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s0
    # Line 3693
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s6
    move	$a1,$s7
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsTexture
    addiu	$a2,$sp,168
    # Line 3694
    lw	$t9,31796($s3)
    li	$a0,-64
    and	$t9,$a0,$t9
    ori	$t9,$t9,0x8
    sw	$t9,31796($s3)
    # Line 3696
    lw	$t8,26976($s2)
    # Line 3688
    addiu	$s0,$s0,1
    # Line 3696
    ori	$t8,$t8,0x1
    sw	$t8,26976($s2)
    # Line 3688
    bne	$s5,$s0,.L0d993fa0
    # Line 3696
    sw	$s8,4120($zero)
    lui	$s0,0x20
.L0d993ff8:
    # Line 3704
    lui	$a6,0x4
    lw	$t0,-26972($s2)
    lui	$a7,0xfff9
    # Line 3707
    lw	$a4,26976($s2)
    # Line 3706
    lui	$a5,0xffef
    # Line 3704
    ori	$a7,$a7,0xffff
    # Line 3706
    ori	$a5,$a5,0xffff
    # Line 3704
    and	$a7,$a7,$t0
    # Line 3707
    or	$a4,$s0,$a4
    sw	$a4,26976($s2)
    # Line 3704
    or	$a6,$a6,$a7
    # Line 3706
    and	$a5,$a5,$a6
    sw	$a5,-26972($s2)
    # Line 3707
    sw	$s8,4120($zero)
    # Line 3713
    li	$a0,-64
    # Line 3719
    li	$at,-4096
    # Line 3720
    lw	$a1,31804($s3)
    # Line 3711
    li	$a2,-8129
    # Line 3709
    lui	$a3,0xffff
    lw	$a4,31796($s3)
    # Line 3718
    lui	$v0,0xff00
    # Line 3709
    ori	$a3,$a3,0x1fff
    # Line 3718
    lw	$v1,31800($s3)
    ori	$v0,$v0,0xfff
    # Line 3709
    and	$a3,$a3,$a4
    # Line 3718
    and	$v1,$v0,$v1
    # Line 3720
    and	$v0,$v0,$a1
    ori	$v0,$v0,0x1000
    # Line 3718
    ori	$v1,$v1,0x1000
    # Line 3719
    and	$v1,$at,$v1
    # Line 3721
    and	$at,$at,$v0
    # Line 3711
    and	$a2,$a2,$a3
    # Line 3721
    ori	$at,$at,0x1
    sw	$at,31804($s3)
    # Line 3711
    ori	$a2,$a2,0xa00
    # Line 3719
    ori	$v1,$v1,0x1
    sw	$v1,31800($s3)
    # Line 3713
    and	$a0,$a0,$a2
    sw	$a0,31796($s3)
    # Line 3722
    lw	$ra,26976($s2)
    # Line 3725
    move	$t9,$s1
    move	$a1,$s5
    # Line 3722
    ori	$ra,$ra,0x1
    sw	$ra,26976($s2)
    # Line 3725
    move	$a0,$s4
    jalr	$t9
    # Line 3722
    sw	$s8,4120($zero)
    # Line 3727
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s7
    move	$a1,$s6
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsTexture
    addiu	$a2,$sp,168
    # Line 3735
    lw	$at,26976($s2)
    # Line 3733
    lui	$v0,0xffef
    # Line 3731
    lw	$v1,-26972($s2)
    lui	$a0,0x6
    # Line 3733
    ori	$v0,$v0,0xffff
    # Line 3735
    or	$at,$s0,$at
    sw	$at,26976($s2)
    # Line 3731
    or	$v1,$v1,$a0
    # Line 3733
    and	$v0,$v0,$v1
    sw	$v0,-26972($s2)
    # Line 3735
    sw	$s8,4120($zero)
    # Line 3738
    li	$t8,-4096
    # Line 3743
    lui	$t1,0xffff
    # Line 3741
    lw	$t3,31796($s3)
    li	$t2,-64
    # Line 3743
    ori	$t1,$t1,0x1fff
    # Line 3739
    lw	$v0,31804($s3)
    # Line 3737
    lui	$ra,0xff00
    # Line 3741
    and	$t2,$t2,$t3
    # Line 3737
    lw	$at,31800($s3)
    ori	$ra,$ra,0xfff
    # Line 3743
    and	$t1,$t1,$t2
    # Line 3737
    and	$at,$ra,$at
    # Line 3739
    and	$ra,$ra,$v0
    # Line 3748
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3739
    ori	$ra,$ra,0x1000
    # Line 3737
    ori	$at,$at,0x1000
    # Line 3743
    sw	$t1,31796($s3)
    # Line 3738
    and	$at,$t8,$at
    # Line 3740
    and	$t8,$t8,$ra
    ori	$t8,$t8,0x1
    sw	$t8,31804($s3)
    # Line 3738
    ori	$at,$at,0x1
    sw	$at,31800($s3)
    # Line 3745
    lw	$t0,26976($s2)
    # Line 3748
    move	$a3,$zero
    ld	$a0,216($sp)
    addiu	$a2,$sp,168
    # Line 3745
    ori	$t0,$t0,0x1
    sw	$t0,26976($s2)
    # Line 3748
    move	$a1,$s6
    jal	__glOdysseyImageMovePixelsTexture
    # Line 3745
    sw	$s8,4120($zero)
    # Line 3758
    lui	$t0,0x4
    # Line 3755
    lw	$t3,-26972($s2)
    lui	$t2,0xffef
    # Line 3760
    lw	$a7,26976($s2)
    # Line 3758
    lui	$t1,0xfff9
    # Line 3755
    ori	$t2,$t2,0xffff
    # Line 3758
    ori	$t1,$t1,0xffff
    # Line 3755
    and	$t2,$t2,$t3
    # Line 3760
    or	$a7,$s0,$a7
    sw	$a7,26976($s2)
    # Line 3758
    and	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sw	$t0,-26972($s2)
    # Line 3760
    sw	$s8,4120($zero)
    # Line 3762
    lw	$t1,31800($s3)
    # Line 3768
    li	$a5,-64
    # Line 3762
    lui	$a6,0xff
    # Line 3766
    lw	$t2,31796($s3)
    # Line 3762
    ori	$a6,$a6,0xf000
    # Line 3766
    li	$a7,-8129
    # Line 3764
    lw	$t0,31804($s3)
    # Line 3762
    or	$t1,$a6,$t1
    # Line 3766
    and	$a7,$a7,$t2
    # Line 3776
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3764
    or	$a6,$a6,$t0
    # Line 3766
    ori	$a7,$a7,0xa00
    # Line 3765
    ori	$a6,$a6,0xfff
    sw	$a6,31804($s3)
    # Line 3768
    and	$a5,$a5,$a7
    # Line 3763
    ori	$t1,$t1,0xfff
    sw	$t1,31800($s3)
    # Line 3768
    ori	$a5,$a5,0x28
    # Line 3770
    ori	$a5,$a5,0xe000
    sw	$a5,31796($s3)
    # Line 3772
    lw	$a4,26976($s2)
    # Line 3776
    move	$a3,$zero
    ld	$a0,216($sp)
    addiu	$a2,$sp,168
    # Line 3772
    ori	$a4,$a4,0x1
    sw	$a4,26976($s2)
    # Line 3776
    move	$a1,$s7
    jal	__glOdysseyImageMovePixelsTexture
    # Line 3772
    sw	$s8,4120($zero)
    # Line 3783
    lw	$a3,31740($s3)
    lui	$a2,0xfffd
    ori	$a2,$a2,0xffff
    and	$a2,$a2,$a3
    sw	$a2,31740($s3)
    # Line 3787
    sll	$a1,$s5,0x2
    # Line 3784
    lw	$a2,26976($s2)
    # Line 3787
    subu	$a1,$a1,$s5
    sll	$a1,$a1,0x3
    # Line 3784
    ori	$a2,$a2,0x2
    sw	$a2,26976($s2)
    # Line 3787
    subu	$a1,$a1,$s5
    # Line 3784
    sw	$s8,4120($zero)
    # Line 3787
    sll	$a1,$a1,0x2
    mtc1	$zero,$f1
    lw	$t1,20($s4)
    subu	$a1,$a1,$s5
    sll	$a1,$a1,0x5
    addu	$t1,$t1,$a1
    swc1	$f1,36($t1)
    # Line 3788
    lw	$t0,20($s4)
    addu	$t0,$t0,$a1
    swc1	$f1,184($t0)
    # Line 3789
    lw	$a7,20($s4)
    addu	$a7,$a7,$a1
    swc1	$f1,332($a7)
    # Line 3790
    lw	$a6,20($s4)
    addu	$a6,$a6,$a1
    swc1	$f1,480($a6)
    # Line 3791
    lw	$a5,20($s4)
    lwc1	$f0,_lit_39800000
    addu	$a5,$a5,$a1
    swc1	$f0,40($a5)
    # Line 3792
    lw	$a4,20($s4)
    addu	$a4,$a4,$a1
    swc1	$f0,188($a4)
    # Line 3793
    lw	$a3,20($s4)
    addu	$a3,$a3,$a1
    swc1	$f0,336($a3)
    # Line 3794
    lw	$a2,20($s4)
    # Line 3795
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 3794
    addu	$a2,$a2,$a1
    swc1	$f0,484($a2)
    # Line 3795
    lw	$a0,20($s4)
    # Line 3787
    sd	$a1,208($sp)
    # Line 3795
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 3798
    lw	$a3,26976($s2)
    # Line 3801
    move	$t9,$s1
    # Line 3797
    lw	$a5,-26972($s2)
    lui	$a4,0xffef
    ori	$a4,$a4,0xffff
    # Line 3798
    or	$a3,$s0,$a3
    sw	$a3,26976($s2)
    # Line 3801
    move	$a0,$s4
    # Line 3797
    and	$a4,$a4,$a5
    sw	$a4,-26972($s2)
    # Line 3801
    move	$a1,$s5
    jalr	$t9
    # Line 3798
    sw	$s8,4120($zero)
    # Line 3803
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s6
    move	$a3,$zero
    addiu	$a2,$sp,168
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s4)
    # Line 3807
    ld	$a1,208($sp)
    lw	$t1,20($s4)
    lwc1	$f3,_lit_3f800000
    addu	$t1,$t1,$a1
    swc1	$f3,36($t1)
    # Line 3808
    lw	$t0,20($s4)
    addu	$t0,$t0,$a1
    swc1	$f3,184($t0)
    # Line 3809
    lw	$a7,20($s4)
    addu	$a7,$a7,$a1
    swc1	$f3,332($a7)
    # Line 3810
    lw	$a6,20($s4)
    addu	$a6,$a6,$a1
    swc1	$f3,480($a6)
    # Line 3811
    lw	$a5,20($s4)
    mtc1	$zero,$f2
    addu	$a5,$a5,$a1
    swc1	$f2,40($a5)
    # Line 3812
    lw	$a4,20($s4)
    addu	$a4,$a4,$a1
    swc1	$f2,188($a4)
    # Line 3813
    lw	$a3,20($s4)
    addu	$a3,$a3,$a1
    swc1	$f2,336($a3)
    # Line 3814
    lw	$a2,20($s4)
    # Line 3815
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 3814
    addu	$a2,$a2,$a1
    swc1	$f2,484($a2)
    # Line 3815
    lw	$a0,20($s4)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 3818
    lw	$t2,26976($s2)
    # Line 3821
    move	$t9,$s1
    # Line 3817
    lw	$t8,-26972($s2)
    lui	$t3,0xffef
    ori	$t3,$t3,0xffff
    # Line 3818
    or	$t2,$s0,$t2
    sw	$t2,26976($s2)
    # Line 3821
    move	$a0,$s4
    # Line 3817
    and	$t3,$t3,$t8
    sw	$t3,-26972($s2)
    # Line 3821
    move	$a1,$s5
    jalr	$t9
    # Line 3818
    sw	$s8,4120($zero)
    # Line 3825
    lw	$a0,31740($s3)
    lui	$v1,0x2
    or	$v1,$v1,$a0
    sw	$v1,31740($s3)
    # Line 3826
    lw	$v0,26976($s2)
    ori	$v0,$v0,0x2
    sw	$v0,26976($s2)
    sw	$s8,4120($zero)
    # Line 3829
    lw	$a0,31800($s3)
    # Line 3835
    li	$ra,-64
    # Line 3829
    lui	$at,0xff
    # Line 3833
    lw	$a1,31796($s3)
    # Line 3829
    ori	$at,$at,0xf000
    # Line 3831
    lw	$v1,31804($s3)
    # Line 3833
    li	$v0,-8129
    # Line 3841
    ld	$s1,216($sp)
    # Line 3829
    or	$a0,$at,$a0
    # Line 3833
    and	$v0,$v0,$a1
    # Line 3841
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3831
    or	$at,$at,$v1
    # Line 3833
    ori	$v0,$v0,0x200
    # Line 3832
    ori	$at,$at,0xfff
    sw	$at,31804($s3)
    # Line 3835
    and	$ra,$ra,$v0
    # Line 3830
    ori	$a0,$a0,0xfff
    sw	$a0,31800($s3)
    # Line 3835
    ori	$ra,$ra,0x8
    # Line 3837
    ori	$ra,$ra,0xe000
    sw	$ra,31796($s3)
    # Line 3839
    lw	$t8,26976($s2)
    # Line 3841
    move	$a3,$zero
    addiu	$a2,$sp,168
    move	$a1,$s1
    # Line 3839
    ori	$t8,$t8,0x1
    sw	$t8,26976($s2)
    # Line 3841
    move	$a0,$s6
    jal	__glOdysseyImageMovePixelsTexture
    # Line 3839
    sw	$s8,4120($zero)
    # Line 3848
    lw	$t3,26976($s2)
    # Line 3846
    lw	$t9,-26972($s2)
    lui	$t8,0xfff9
    ori	$t8,$t8,0xffff
    # Line 3848
    or	$t3,$s0,$t3
    sw	$t3,26976($s2)
    # Line 3846
    and	$t8,$t8,$t9
    sw	$t8,-26972($s2)
    # Line 3848
    sw	$s8,4120($zero)
    # Line 3850
    lw	$t2,31796($s3)
    li	$t1,-8129
    and	$t1,$t1,$t2
    # Line 3852
    li	$t0,-64
    # Line 3850
    ori	$t1,$t1,0x200
    # Line 3854
    lui	$a7,0xffff
    # Line 3852
    and	$t0,$t0,$t1
    # Line 3854
    ori	$a7,$a7,0x1fff
    # Line 3852
    ori	$t0,$t0,0x8
    # Line 3854
    and	$a7,$a7,$t0
    ori	$a7,$a7,0x4000
    sw	$a7,31796($s3)
    # Line 3856
    lw	$a6,26976($s2)
    ori	$a6,$a6,0x1
    sw	$a6,26976($s2)
    sw	$s8,4120($zero)
    # Line 3860
    lw	$a6,31804($s3)
    # Line 3858
    lui	$a5,0xff
    lw	$a7,31800($s3)
    ori	$a5,$a5,0xf000
    # Line 3864
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3858
    or	$a7,$a5,$a7
    # Line 3860
    or	$a5,$a5,$a6
    # Line 3861
    ori	$a5,$a5,0xfff
    sw	$a5,31804($s3)
    # Line 3859
    ori	$a7,$a7,0xfff
    sw	$a7,31800($s3)
    # Line 3864
    move	$a3,$zero
    addiu	$a2,$sp,168
    # Line 3862
    lw	$a4,26976($s2)
    # Line 3864
    move	$a1,$s6
    move	$a0,$s1
    lui	$s5,0xffef
    # Line 3862
    ori	$a4,$a4,0x1
    sw	$a4,26976($s2)
    ori	$s5,$s5,0xffff
    # Line 3864
    jal	__glOdysseyImageMovePixelsTexture
    # Line 3862
    sw	$s8,4120($zero)
    # Line 3875
    lw	$a3,26976($s2)
    # Line 3873
    lui	$a4,0xfff9
    # Line 3870
    lw	$a5,-26972($s2)
    # Line 3873
    ori	$a4,$a4,0xffff
    # Line 3875
    or	$a3,$s0,$a3
    sw	$a3,26976($s2)
    # Line 3870
    and	$a5,$s5,$a5
    # Line 3873
    and	$a4,$a4,$a5
    sw	$a4,-26972($s2)
    # Line 3881
    lui	$v1,0xffff
    # Line 3875
    sw	$s8,4120($zero)
    # Line 3881
    ori	$v1,$v1,0x1fff
    # Line 3884
    lw	$v0,31800($s3)
    # Line 3879
    li	$a0,-64
    # Line 3884
    lui	$ra,0xff
    # Line 3877
    lw	$a2,31796($s3)
    # Line 3884
    ori	$ra,$ra,0xf000
    # Line 3877
    li	$a1,-8129
    # Line 3886
    lw	$at,31804($s3)
    # Line 3884
    or	$v0,$ra,$v0
    # Line 3877
    and	$a1,$a1,$a2
    # Line 3891
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3886
    or	$ra,$ra,$at
    # Line 3877
    ori	$a1,$a1,0xa00
    # Line 3887
    ori	$ra,$ra,0xfff
    sw	$ra,31804($s3)
    # Line 3879
    and	$a0,$a0,$a1
    # Line 3885
    ori	$v0,$v0,0xfff
    sw	$v0,31800($s3)
    # Line 3879
    ori	$a0,$a0,0x8
    # Line 3881
    and	$v1,$v1,$a0
    sw	$v1,31796($s3)
    # Line 3889
    lw	$t8,26976($s2)
    ld	$s6,384($sp)
    # Line 3891
    move	$a3,$zero
    addiu	$a2,$sp,168
    move	$a1,$s7
    # Line 3889
    ori	$t8,$t8,0x1
    sw	$t8,26976($s2)
    # Line 3891
    move	$a0,$s1
    jal	__glOdysseyImageMovePixelsTexture
    # Line 3889
    sw	$s8,4120($zero)
    # Line 3902
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,-13200
    move	$a0,$s4
    move	$a2,$s1
    ld	$s5,408($sp)
    jal	sub_0d9a0000
    addiu	$a1,$sp,168
    # Line 3913
    # lw $t9, -32724($gp) # &sub_0d9a0000
    move	$a0,$s4
    move	$a4,$s7
    addiu	$t9,$t9,-8816
    move	$a3,$s1
    addiu	$a2,$sp,0
    jal	sub_0d9a0000
    addiu	$a1,$sp,168
    lw	$at,31600($s3)
    ld	$s7,368($sp)
    ld	$s1,376($sp)
    andi	$at,$at,0x80
    ld	$ra,392($sp)
    beqz	$at,.L0d994640
    ld	$a1,400($sp)
    # Line 3921
    lw	$v0,-26972($s2)
    li	$v1,-2
    and	$v0,$v0,$v1
    sw	$v0,-26972($s2)
.L0d994640:
    # Line 3927
    ld	$a5,264($sp)
    # Line 3928
    ld	$a6,288($sp)
    # Line 3929
    ld	$a7,280($sp)
    # Line 3930
    ld	$t0,272($sp)
    # Line 3926
    ld	$t2,240($sp)
    ld	$t1,248($sp)
    # Line 3925
    lw	$a0,40($sp)
    # Line 3923
    lw	$a2,26976($s2)
    # Line 3925
    addiu	$t3,$sp,40
    lw	$v1,4($t3)
    lw	$v0,8($t3)
    lw	$at,12($t3)
    lw	$t9,16($t3)
    lw	$t8,20($t3)
    lw	$t3,24($t3)
    # Line 3923
    or	$a2,$s0,$a2
    sw	$a2,26976($s2)
    sw	$s8,4120($zero)
    # Line 3925
    sw	$t3,31964($s3)
    sw	$t8,31960($s3)
    sw	$t9,31956($s3)
    sw	$at,31952($s3)
    sw	$v0,31948($s3)
    sw	$v1,31944($s3)
    sw	$a0,31940($s3)
    # Line 3926
    sw	$t1,-26968($s2)
    sw	$a1,-26972($s2)
    sw	$t2,-26976($s2)
    sw	$s5,-26980($s2)
    # Line 3930
    sw	$t0,31804($s3)
    # Line 3929
    sw	$a7,31800($s3)
    # Line 3928
    sw	$a6,31796($s3)
    # Line 3931
    addiu	$a0,$sp,72
    # Line 3927
    sw	$a5,31740($s3)
    ld	$s0,352($sp)
    ld	$s3,360($sp)
    # Line 3931
    ld	$a5,72($sp)
    ld	$a6,8($a0)
    ld	$a7,16($a0)
    ld	$t0,24($a0)
    ld	$t1,32($a0)
    ld	$t2,40($a0)
    ld	$t3,48($a0)
    ld	$t8,56($a0)
    sd	$t8,-29664($s2)
    sd	$t3,-29672($s2)
    sd	$t2,-29680($s2)
    sd	$t1,-29688($s2)
    sd	$t0,-29696($s2)
    sd	$a7,-29704($s2)
    sd	$a6,-29712($s2)
    sd	$a5,-29720($s2)
    # Line 3932
    ld	$t9,232($sp)
    # Line 3933
    addiu	$a0,$sp,136
    # Line 3932
    sw	$t9,-29724($s2)
    # Line 3933
    lw	$at,136($sp)
    lw	$v0,4($a0)
    lw	$v1,8($a0)
    lw	$a4,12($a0)
    lw	$a5,16($a0)
    lw	$a6,20($a0)
    lw	$a7,24($a0)
    lw	$t0,28($a0)
    sw	$t0,-29432($s2)
    sw	$a7,-29436($s2)
    sw	$a6,-29440($s2)
    sw	$a5,-29444($s2)
    sw	$a4,-29448($s2)
    sw	$v1,-29452($s2)
    sw	$v0,-29456($s2)
    sw	$at,-29460($s2)
    # Line 3949
    ld	$gp,320($sp)
    # Line 3935
    ld	$t3,336($sp)
    # Line 3934
    ld	$t8,328($sp)
    # Line 3935
    ld	$s5,312($sp)
    ld	$s4,304($sp)
    sw	$s4,-29328($s2)
    # Line 3949
    ld	$s4,344($sp)
    # Line 3935
    sw	$s5,-29332($s2)
    # Line 3949
    ld	$s5,296($sp)
    # Line 3934
    sw	$t8,-29464($s2)
    # Line 3937
    lw	$t2,26976($s2)
    lui	$t1,0x23
    # Line 3935
    sw	$t3,-29324($s2)
    # Line 3937
    ori	$t1,$t1,0x8203
    or	$t1,$t1,$t2
    sw	$t1,26976($s2)
    # Line 3949
    ld	$s2,224($sp)
    li	$v0,1
    # Line 3937
    sw	$s8,4120($zero)
    # Line 3949
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d9947b4:
    # Line 3538
    lw	$t2,26976($s2)
    # Line 3537
    and	$t3,$s1,$s6
    sw	$t3,-26972($s2)
    # Line 3538
    or	$t2,$s0,$t2
    sw	$t2,26976($s2)
    sw	$s8,4120($zero)
    # Line 3541
    lw	$t0,31740($s3)
    and	$t0,$a4,$t0
    sw	$t0,31740($s3)
    # Line 3542
    lw	$a7,26976($s2)
    # Line 3556
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 3542
    ori	$a7,$a7,0x2
    sw	$a7,26976($s2)
    sw	$s8,4120($zero)
    # Line 3554
    sw	$s8,-29464($s2)
    # Line 3552
    lw	$v0,-29432($s2)
    # Line 3550
    lw	$a0,-29440($s2)
    # Line 3555
    lw	$ra,26976($s2)
    # Line 3547
    lw	$a4,-29452($s2)
    # Line 3545
    lw	$a6,-29460($s2)
    lui	$at,0xffff
    # Line 3546
    lw	$a5,-29456($s2)
    # Line 3548
    lw	$a3,-29448($s2)
    # Line 3545
    and	$a6,$at,$a6
    # Line 3549
    lw	$a1,-29444($s2)
    # Line 3546
    and	$a5,$at,$a5
    # Line 3547
    and	$a4,$at,$a4
    # Line 3551
    lw	$v1,-29436($s2)
    # Line 3548
    and	$a3,$at,$a3
    # Line 3555
    or	$ra,$t1,$ra
    sw	$ra,26976($s2)
    # Line 3549
    and	$a1,$at,$a1
    # Line 3550
    and	$a0,$at,$a0
    # Line 3551
    and	$v1,$at,$v1
    # Line 3552
    and	$at,$at,$v0
    sw	$at,-29432($s2)
    # Line 3551
    sw	$v1,-29436($s2)
    # Line 3550
    sw	$a0,-29440($s2)
    # Line 3549
    sw	$a1,-29444($s2)
    # Line 3548
    sw	$a3,-29448($s2)
    # Line 3547
    sw	$a4,-29452($s2)
    # Line 3546
    sw	$a5,-29456($s2)
    # Line 3545
    sw	$a6,-29460($s2)
    # Line 3555
    sw	$s8,4120($zero)
    # Line 3556
    lw	$a1,68($s4)
    li	$a3,1
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s4)
    ld	$ra,392($sp)
    ld	$s1,376($sp)
    ld	$s0,352($sp)
    # Line 3949
    ld	$gp,320($sp)
    # Line 3560
    ld	$t8,264($sp)
    # Line 3561
    ld	$t9,288($sp)
    # Line 3562
    ld	$at,280($sp)
    # Line 3563
    ld	$v0,272($sp)
    # Line 3559
    ld	$a0,240($sp)
    ld	$v1,248($sp)
    # Line 3558
    lw	$a7,40($sp)
    sw	$a7,31940($s3)
    addiu	$a1,$sp,40
    lw	$a6,4($a1)
    lw	$a5,8($a1)
    lw	$a4,12($a1)
    lw	$a3,16($a1)
    lw	$a2,20($a1)
    lw	$a1,24($a1)
    sw	$a1,31964($s3)
    sw	$a2,31960($s3)
    sw	$a3,31956($s3)
    sw	$a4,31952($s3)
    sw	$a5,31948($s3)
    sw	$a6,31944($s3)
    # Line 3559
    sw	$s6,-26972($s2)
    ld	$s6,384($sp)
    sw	$s7,-26980($s2)
    ld	$s7,368($sp)
    sw	$v1,-26968($s2)
    sw	$a0,-26976($s2)
    # Line 3563
    sw	$v0,31804($s3)
    # Line 3562
    sw	$at,31800($s3)
    # Line 3561
    sw	$t9,31796($s3)
    # Line 3560
    sw	$t8,31740($s3)
    ld	$s3,360($sp)
    # Line 3564
    addiu	$a0,$sp,72
    # Line 3565
    ld	$v1,232($sp)
    # Line 3564
    ld	$v0,56($a0)
    ld	$at,48($a0)
    ld	$t9,40($a0)
    ld	$t8,32($a0)
    ld	$t0,72($sp)
    ld	$t1,8($a0)
    ld	$t2,16($a0)
    ld	$t3,24($a0)
    sd	$t3,-29696($s2)
    sd	$t2,-29704($s2)
    sd	$t1,-29712($s2)
    sd	$t0,-29720($s2)
    sd	$t8,-29688($s2)
    sd	$t9,-29680($s2)
    sd	$at,-29672($s2)
    sd	$v0,-29664($s2)
    # Line 3566
    addiu	$a0,$sp,136
    # Line 3565
    sw	$v1,-29724($s2)
    # Line 3566
    lw	$a4,136($sp)
    lw	$a5,4($a0)
    lw	$a6,8($a0)
    lw	$a7,12($a0)
    lw	$t0,16($a0)
    lw	$t1,20($a0)
    lw	$t2,24($a0)
    lw	$t3,28($a0)
    sw	$t3,-29432($s2)
    sw	$t2,-29436($s2)
    sw	$t1,-29440($s2)
    sw	$t0,-29444($s2)
    sw	$a7,-29448($s2)
    sw	$a6,-29452($s2)
    sw	$a5,-29456($s2)
    sw	$a4,-29460($s2)
    # Line 3568
    ld	$t8,336($sp)
    ld	$t9,304($sp)
    ld	$at,312($sp)
    # Line 3567
    ld	$v0,328($sp)
    sw	$v0,-29464($s2)
    # Line 3568
    sw	$at,-29332($s2)
    sw	$t9,-29328($s2)
    # Line 3570
    lw	$s5,26976($s2)
    lui	$s4,0x23
    # Line 3568
    sw	$t8,-29324($s2)
    # Line 3570
    ori	$s4,$s4,0x8203
    or	$s4,$s4,$s5
    sw	$s4,26976($s2)
    # Line 3949
    ld	$s2,224($sp)
    ld	$s4,344($sp)
    ld	$s5,296($sp)
    # Line 3578
    li	$v0,1
    # Line 3570
    sw	$s8,4120($zero)
    # Line 3949
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d9949e8:
    # Line 3688
    la	$s1,sub_0d9a0000
    addu	$s6,$a7,$s3
    b	.L0d993ff8
    addiu	$s1,$s1,-13472
.L0d9949f8:
    # Line 3664
    li	$a6,4095
    # Line 3663
    and	$t8,$s1,$a7
    b	.L0d993efc
    sw	$t8,-26972($s2)
.end RenderFunc_Convolve24BitMode

# Function: ImageChainAddOpConvolveResidue
# Declared: Line 3954 (Source lines: 3957-4210)
# Address: 0x0d994a10 - 0x0d99564c (Size: 3132 bytes, Frame: 128)
.ent ImageChainAddOpConvolveResidue
ImageChainAddOpConvolveResidue:
    # Line 3957
    addiu	$sp,$sp,-128
    sd	$a0,64($sp)
    sd	$a2,72($sp)
    sdc1	$f22,104($sp)
    sd	$ra,112($sp)
    sd	$s2,120($sp)
    # Line 3985
    mtc1	$zero,$f0
    # Line 3957
    sd	$s0,80($sp)
    # Line 3985
    swc1	$f0,0($sp)
    swc1	$f0,4($sp)
    swc1	$f0,8($sp)
    swc1	$f0,12($sp)
    # Line 3975
    lw	$v0,4112($zero)
    # Line 3957
    sd	$s1,88($sp)
    # Line 3986
    lw	$s1,764($v0)
    # Line 3957
    sd	$s3,96($sp)
    # Line 3988
    lw	$t9,68($s1)
    # Line 3987
    lw	$t8,64($s1)
    # Line 3957
    sdc1	$f24,24($sp)
    # Line 3988
    mtc1	$t9,$f24
    # Line 3989
    lui	$s3,0x1
    # Line 3957
    sdc1	$f20,32($sp)
    # Line 3987
    mtc1	$t8,$f20
    # Line 3989
    addu	$s3,$v0,$s3
    # Line 3986
    lw	$s1,80($s1)
    # Line 3990
    sb	$zero,7147($s3)
    # Line 3988
    cvt.s.w	$f24,$f24
    # Line 3957
    move	$s0,$a1
    # Line 3989
    sb	$zero,7120($s3)
    # Line 3992
    beqz	$a1,.L0d994eac
    # Line 3987
    cvt.s.w	$f20,$f20
    # Line 3992
    li	$ra,0x8010
    beq	$a1,$ra,.L0d994eac
    li	$at,0x8012
    c.eq.s	$f20,$f0
    lwc1	$f22,_lit_3f000000
    li	$a3,1
    beq	$a1,$at,.L0d995214
    movf	$a3,$zero,$fcc0
    # Line 4125
    c.eq.s $f24,$f0
    li	$a1,1
    beqz	$a3,.L0d9952bc
    movf	$a1,$zero,$fcc1
    # Line 4127
    lw	$v1,764($v0)
    lwc1	$f20,_lit_3f800000
    li	$a3,1
    beqz	$a1,.L0d994adc
    sw	$a3,64($v1)
.L0d994ad0:
    # Line 4129
    lw	$a0,764($v0)
    lwc1	$f24,_lit_3f800000
    sw	$a3,68($a0)
.L0d994adc:
    # Line 4131
    sb	$a3,7147($s3)
.L0d994ae0:
    # Line 4135
    # lw $t9, -17032($gp) # &ceilf
.L0d994ae4:
    jal	ceilf
    mul.s	$f12,$f20,$f22
    # lw $t9, -17032($gp) # &ceilf
    sdc1	$f0,16($sp)
    jal	ceilf
    mul.s	$f12,$f24,$f22
    ldc1	$f12,16($sp)
    # lw $t9, -17032($gp) # &ceilf
    mul.s	$f12,$f12,$f0
    jal	ceilf
    mul.s	$f12,$f22,$f12
    # Line 4137
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3824
    bal __glOdysseyImageChainFree
    # Line 4135
    mov.s	$f22,$f0
    # Line 4137
    bnez	$v0,.L0d994b54
    move	$s2,$v0
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    # Line 4139
    move	$v0,$zero
    # Line 4210
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d994b54:
    # Line 4141
    trunc.l.s	$f13,$f22
    # lw $t9, -32728($gp) # &sub_0d990000
    dmfc1	$a1,$f13
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    sll	$a1,$a1,0x0
    sd	$a1,56($sp)
    bal __glOdysseyImageChainFree
    addiu	$a1,$a1,1
    lw	$ra,20($s2)
    beqz	$ra,.L0d9952d4
    # Line 4148
    mtc1	$zero,$f8
    mul.s	$f22,$f24,$f20
    c.lt.s $f8,$f22
    bc1f .L0d994c4c
    move	$a7,$s1
    move	$t1,$zero
    nop
    nop
    addiu	$t0,$sp,0
.L0d994ba4:
    # Line 4149
    addiu	$t2,$a7,16
    # Line 4148
    addiu	$t1,$t1,1
    # Line 4150
    lwc1	$f14,0($sp)
    # Line 4148
    dsll32	$at,$t1,0x0
    # Line 4150
    lwc1	$f15,4($sp)
    # Line 4148
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f21
    # Line 4150
    cvt.d.s	$f14,$f14
    lwc1	$f18,12($sp)
    cvt.d.s	$f15,$f15
    lwc1	$f16,8($sp)
    # Line 4148
    cvt.s.l	$f21,$f21
    # Line 4150
    lwc1	$f17,8($a7)
    cvt.d.s	$f18,$f18
    lwc1	$f19,12($a7)
    cvt.d.s	$f16,$f16
    abs.s	$f17,$f17
    abs.s	$f19,$f19
    cvt.d.s	$f17,$f17
    cvt.d.s	$f19,$f19
    add.d	$f16,$f16,$f17
    add.d	$f18,$f18,$f19
    lwc1	$f19,4($a7)
    cvt.s.d	$f16,$f16
    lwc1	$f17,0($a7)
    cvt.s.d	$f18,$f18
    abs.s	$f19,$f19
    abs.s	$f17,$f17
    cvt.d.s	$f19,$f19
    cvt.d.s	$f17,$f17
    add.d	$f15,$f15,$f19
    swc1	$f18,12($sp)
    add.d	$f14,$f14,$f17
    swc1	$f16,8($sp)
    cvt.s.d	$f15,$f15
    cvt.s.d	$f14,$f14
    swc1	$f15,4($sp)
    move	$a7,$t2
    # Line 4148
    c.lt.s $f21,$f22
    # Line 4150
    swc1	$f14,0($sp)
    # Line 4148
    bc1t .L0d994ba4
    addiu	$t0,$sp,0
.L0d994c4c:
    lwc1	$f7,_lit_3f800000
    lwc1	$f6,_lit_3f800000
    ldc1	$f5,_lit8_3ff0000000000000
    ld	$a2,72($sp)
    addiu	$t0,$sp,0
    lwc1	$f0,0($sp)
    cvt.d.s	$f23,$f0
    c.le.d $f23,$f5
    bc1f .L0d994c7c
    nop
    # Line 4156
    mov.s	$f0,$f6
    swc1	$f7,0($sp)
.L0d994c7c:
    # Line 4158
    lwc1	$f25,0($a2)
    mul.s	$f25,$f25,$f0
    # Line 4148
    lwc1	$f0,4($t0)
    cvt.d.s	$f27,$f0
    c.le.d $f27,$f5
    bc1f .L0d994ca0
    # Line 4158
    swc1	$f25,1388($s3)
    # Line 4156
    mov.s	$f0,$f6
    swc1	$f7,4($t0)
.L0d994ca0:
    # Line 4158
    lwc1	$f27,4($a2)
    mul.s	$f27,$f27,$f0
    # Line 4148
    lwc1	$f0,8($t0)
    cvt.d.s	$f29,$f0
    c.le.d $f29,$f5
    bc1f .L0d994cc4
    # Line 4158
    swc1	$f27,1392($s3)
    # Line 4156
    mov.s	$f0,$f6
    swc1	$f7,8($t0)
.L0d994cc4:
    # Line 4158
    lwc1	$f29,8($a2)
    mul.s	$f29,$f29,$f0
    # Line 4148
    lwc1	$f0,12($t0)
    cvt.d.s	$f31,$f0
    c.le.d $f31,$f5
    bc1f .L0d994ce8
    # Line 4158
    swc1	$f29,1396($s3)
    # Line 4156
    mov.s	$f0,$f6
    swc1	$f7,12($t0)
.L0d994ce8:
    # Line 4158
    lwc1	$f31,12($a2)
    mul.s	$f31,$f31,$f0
    swc1	$f31,1400($s3)
    # Line 4154
    lwc1	$f0,12($sp)
    c.eq.s	$f0,$f22
    bc1f	.L0d994d0c
    # Line 4163
    ld	$v0,72($sp)
    lwc1	$f1,12($v0)
    swc1	$f1,1400($s3)
.L0d994d0c:
    c.lt.s $f8,$f22
    li	$s3,1
    movf	$s3,$zero,$fcc1
    beqz	$s3,.L0d994da0
    # Line 4173
    nop	# was lw $t9, -31224($gp) # &__glOdysseyGenericConvolution
    # Line 4163
    move	$a7,$s1
    move	$t1,$zero
    nop
    nop
    addiu	$t0,$sp,0
.L0d994d34:
    # Line 4168
    addiu	$t2,$a7,16
    # Line 4169
    lwc1	$f6,12($sp)
    lwc1	$f5,12($a7)
    div.s	$f5,$f5,$f6
    lwc1	$f4,8($a7)
    lwc1	$f6,8($sp)
    div.s	$f4,$f4,$f6
    lwc1	$f3,4($a7)
    lwc1	$f6,4($sp)
    div.s	$f3,$f3,$f6
    lwc1	$f2,0($a7)
    lwc1	$f6,0($sp)
    div.s	$f2,$f2,$f6
    # Line 4167
    addiu	$t1,$t1,1
    dsll32	$v1,$t1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    cvt.s.l	$f7,$f7
    # Line 4169
    swc1	$f5,12($a7)
    swc1	$f4,8($a7)
    swc1	$f3,4($a7)
    # Line 4167
    c.lt.s $f7,$f22
    # Line 4169
    swc1	$f2,0($a7)
    move	$a7,$t2
    # Line 4167
    bc1t .L0d994d34
    # Line 4163
    addiu	$t0,$sp,0
    # Line 4173
    # lw $t9, -31224($gp) # &__glOdysseyGenericConvolution
.L0d994da0:
    move	$a0,$s2
    move	$a1,$s1
    mov.s	$f15,$f20
    ld	$a2,56($sp)
    mov.s	$f16,$f24
    jal	__glOdysseyGenericConvolution
    move	$a5,$s0
    beqz	$s3,.L0d994e3c
    # Line 4199
    li	$a4,1
    # Line 4173
    move	$a7,$s1
    move	$t1,$zero
    nop
.L0d994dd0:
    addiu	$t0,$sp,0
    # Line 4180
    addiu	$a2,$a7,16
    # Line 4181
    lwc1	$f9,0($a7)
    lwc1	$f11,4($a7)
    # Line 4179
    addiu	$t1,$t1,1
    # Line 4181
    lwc1	$f13,8($a7)
    # Line 4179
    dsll32	$a0,$t1,0x0
    # Line 4181
    lwc1	$f15,12($a7)
    # Line 4179
    dsrl32	$a0,$a0,0x0
    # Line 4181
    lwc1	$f14,12($sp)
    # Line 4179
    dmtc1	$a0,$f16
    # Line 4181
    lwc1	$f12,8($sp)
    lwc1	$f10,4($sp)
    lwc1	$f8,0($sp)
    mul.s	$f14,$f14,$f15
    # Line 4179
    cvt.s.l	$f16,$f16
    # Line 4181
    mul.s	$f12,$f12,$f13
    swc1	$f14,12($a7)
    mul.s	$f10,$f10,$f11
    swc1	$f12,8($a7)
    mul.s	$f8,$f8,$f9
    swc1	$f10,4($a7)
    swc1	$f8,0($a7)
    move	$a7,$a2
    # Line 4179
    c.lt.s $f16,$f22
    bc1t .L0d994dd0
    # Line 4199
    li	$a4,1
.L0d994e3c:
    sw	$a4,12($s2)
    # Line 4191
    li	$v0,8
    sw	$v0,0($s2)
    # Line 4202
    ld	$a2,64($sp)
    # Line 4193
    la	$at,sub_0d990000
    # Line 4202
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 4196
    lw	$ra,8($s2)
    # Line 4193
    addiu	$at,$at,22096
    sw	$at,4($s2)
    # Line 4202
    addiu	$t9,$t9,-2832
    move	$a1,$s2
    # Line 4196
    ori	$ra,$ra,0x34
    sw	$ra,8($s2)
    # Line 4202
    move	$a0,$a2
    bal __glOdysseyImageChainFree
    lw	$a2,8($a2)
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    li	$v0,1
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d994eac:
    # Line 3997
    c.eq.s $f20,$f0
    bc1f .L0d994ee4
    # Line 4007
    nop	# was lw $t9, -17032($gp) # &ceilf
    # Line 3998
    c.eq.s $f24,$f0
    lw	$v1,764($v0)
    li	$a3,1
    bc1f .L0d994ed8
    sw	$a3,64($v1)
    # Line 4001
    lw	$a0,764($v0)
    lwc1	$f24,_lit_3f800000
    sw	$a3,68($a0)
.L0d994ed8:
    # Line 4003
    lwc1	$f20,_lit_3f800000
    sb	$a3,7147($s3)
    # Line 4007
    # lw $t9, -17032($gp) # &ceilf
.L0d994ee4:
    lwc1	$f22,_lit_3f000000
    jal	ceilf
    mul.s	$f12,$f20,$f22
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    mul.s	$f12,$f22,$f0
    # Line 4009
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3824
    bal __glOdysseyImageChainFree
    # Line 4007
    mov.s	$f22,$f0
    # Line 4009
    bnez	$v0,.L0d994f40
    move	$s2,$v0
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    # Line 4011
    move	$v0,$zero
    # Line 4210
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d994f40:
    # Line 4013
    trunc.l.s	$f17,$f22
    # lw $t9, -32728($gp) # &sub_0d990000
    dmfc1	$a1,$f17
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    sll	$a1,$a1,0x0
    sd	$a1,48($sp)
    bal __glOdysseyImageChainFree
    addiu	$a1,$a1,1
    lw	$ra,20($s2)
    beqz	$ra,.L0d9955dc
    # Line 4019
    mtc1	$zero,$f18
    c.lt.s $f18,$f20
    li	$at,1
    movf	$at,$zero,$fcc6
    beqz	$at,.L0d995038
    sd	$at,40($sp)
    move	$a7,$s1
    move	$t1,$zero
    addiu	$t1,$t1,1
.L0d994f90:
    addiu	$t0,$sp,0
    # Line 4020
    addiu	$a3,$a7,16
    # Line 4021
    lwc1	$f19,0($sp)
    # Line 4019
    dsll32	$v0,$t1,0x0
    # Line 4021
    lwc1	$f21,4($sp)
    # Line 4019
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f31
    # Line 4021
    cvt.d.s	$f19,$f19
    lwc1	$f27,12($sp)
    cvt.d.s	$f21,$f21
    lwc1	$f23,8($sp)
    # Line 4019
    cvt.s.l	$f31,$f31
    # Line 4021
    lwc1	$f25,8($a7)
    cvt.d.s	$f27,$f27
    lwc1	$f29,12($a7)
    cvt.d.s	$f23,$f23
    abs.s	$f25,$f25
    abs.s	$f29,$f29
    cvt.d.s	$f25,$f25
    cvt.d.s	$f29,$f29
    add.d	$f23,$f23,$f25
    add.d	$f27,$f27,$f29
    lwc1	$f29,4($a7)
    cvt.s.d	$f23,$f23
    lwc1	$f25,0($a7)
    cvt.s.d	$f27,$f27
    abs.s	$f29,$f29
    abs.s	$f25,$f25
    cvt.d.s	$f29,$f29
    cvt.d.s	$f25,$f25
    add.d	$f21,$f21,$f29
    swc1	$f27,12($sp)
    add.d	$f19,$f19,$f25
    swc1	$f23,8($sp)
    cvt.s.d	$f21,$f21
    cvt.s.d	$f19,$f19
    swc1	$f21,4($sp)
    move	$a7,$a3
    # Line 4019
    c.lt.s $f31,$f20
    # Line 4021
    swc1	$f19,0($sp)
    # Line 4019
    bc1t .L0d994f90
    addiu	$t1,$t1,1
.L0d995038:
    lwc1	$f7,_lit_3f800000
    lwc1	$f6,_lit_3f800000
    ldc1	$f5,_lit8_3ff0000000000000
    ld	$a2,72($sp)
    addiu	$t0,$sp,0
    lwc1	$f0,0($sp)
    cvt.d.s	$f1,$f0
    c.le.d	$f1,$f5
    bc1f	.L0d995068
    nop
    # Line 4027
    mov.s	$f0,$f6
    swc1	$f7,0($sp)
.L0d995068:
    # Line 4029
    lwc1	$f2,0($a2)
    mul.s	$f2,$f2,$f0
    # Line 4019
    lwc1	$f0,4($t0)
    cvt.d.s	$f3,$f0
    c.le.d $f3,$f5
    bc1f .L0d99508c
    # Line 4029
    swc1	$f2,-1524($s3)
    # Line 4027
    mov.s	$f0,$f6
    swc1	$f7,4($t0)
.L0d99508c:
    # Line 4029
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f0
    # Line 4019
    lwc1	$f0,8($t0)
    cvt.d.s	$f4,$f0
    c.le.d $f4,$f5
    bc1f .L0d9950b0
    # Line 4029
    swc1	$f3,-1520($s3)
    # Line 4027
    mov.s	$f0,$f6
    swc1	$f7,8($t0)
.L0d9950b0:
    # Line 4029
    lwc1	$f4,8($a2)
    mul.s	$f4,$f4,$f0
    # Line 4019
    lwc1	$f0,12($t0)
    cvt.d.s	$f8,$f0
    c.le.d $f8,$f5
    bc1f .L0d9950d4
    # Line 4029
    swc1	$f4,-1516($s3)
    # Line 4027
    mov.s	$f0,$f6
    swc1	$f7,12($t0)
.L0d9950d4:
    # Line 4029
    lwc1	$f5,12($a2)
    mul.s	$f5,$f5,$f0
    swc1	$f5,-1512($s3)
    # Line 4025
    lwc1	$f6,12($sp)
    mul.s	$f7,$f24,$f20
    c.eq.s $f6,$f7
    bc1f .L0d9950fc
    # Line 4035
    ld	$v1,72($sp)
    lwc1	$f8,12($v1)
    swc1	$f8,-1512($s3)
.L0d9950fc:
    ld	$s3,40($sp)
    beqz	$s3,.L0d99517c
    # Line 4045
    nop	# was lw $t9, -31236($gp) # &__glOdysseyMap1DFilterToAlphas
    # Line 4035
    move	$a7,$s1
    move	$t1,$zero
.L0d995110:
    addiu	$t0,$sp,0
    # Line 4040
    addiu	$a3,$a7,16
    # Line 4041
    lwc1	$f13,12($sp)
    lwc1	$f12,12($a7)
    div.s	$f12,$f12,$f13
    lwc1	$f11,8($a7)
    lwc1	$f13,8($sp)
    div.s	$f11,$f11,$f13
    lwc1	$f10,4($a7)
    lwc1	$f13,4($sp)
    div.s	$f10,$f10,$f13
    lwc1	$f9,0($a7)
    lwc1	$f13,0($sp)
    div.s	$f9,$f9,$f13
    # Line 4039
    addiu	$t1,$t1,1
    dsll32	$a0,$t1,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f14
    cvt.s.l	$f14,$f14
    # Line 4041
    swc1	$f12,12($a7)
    swc1	$f11,8($a7)
    swc1	$f10,4($a7)
    # Line 4039
    c.lt.s $f14,$f20
    # Line 4041
    swc1	$f9,0($a7)
    move	$a7,$a3
    # Line 4039
    bc1t .L0d995110
    # Line 4045
    nop	# was lw $t9, -31236($gp) # &__glOdysseyMap1DFilterToAlphas
.L0d99517c:
    move	$a0,$s2
    move	$a1,$s1
    ld	$a2,48($sp)
    jal	__glOdysseyMap1DFilterToAlphas
    move	$a3,$s0
    beqz	$s3,.L0d994e3c
    # Line 4199
    li	$a4,1
    # Line 4045
    move	$a7,$s1
    move	$t1,$zero
    addiu	$t0,$sp,0
.L0d9951a4:
    # Line 4052
    addiu	$a2,$a7,16
    # Line 4053
    lwc1	$f16,0($a7)
    lwc1	$f18,4($a7)
    # Line 4051
    addiu	$t1,$t1,1
    # Line 4053
    lwc1	$f21,8($a7)
    # Line 4051
    dsll32	$a1,$t1,0x0
    # Line 4053
    lwc1	$f25,12($a7)
    # Line 4051
    dsrl32	$a1,$a1,0x0
    # Line 4053
    lwc1	$f23,12($sp)
    # Line 4051
    dmtc1	$a1,$f27
    # Line 4053
    lwc1	$f19,8($sp)
    lwc1	$f17,4($sp)
    lwc1	$f15,0($sp)
    mul.s	$f23,$f23,$f25
    # Line 4051
    cvt.s.l	$f27,$f27
    # Line 4053
    mul.s	$f19,$f19,$f21
    swc1	$f23,12($a7)
    mul.s	$f17,$f17,$f18
    swc1	$f19,8($a7)
    mul.s	$f15,$f15,$f16
    swc1	$f17,4($a7)
    swc1	$f15,0($a7)
    move	$a7,$a2
    # Line 4051
    c.lt.s $f27,$f20
    bc1t .L0d9951a4
    # Line 4045
    addiu	$t0,$sp,0
    b	.L0d994e3c
    # Line 4199
    li	$a4,1
.L0d995214:
    # Line 4059
    c.eq.s $f24,$f0
    li	$a1,1
    beqz	$a3,.L0d995608
    movf	$a1,$zero,$fcc7
    # Line 4061
    lw	$a2,764($v0)
    lwc1	$f20,_lit_3f800000
    li	$a3,1
    beqz	$a1,.L0d995244
    sw	$a3,64($a2)
.L0d995238:
    # Line 4063
    lw	$a4,764($v0)
    lwc1	$f24,_lit_3f800000
    sw	$a3,68($a4)
.L0d995244:
    # Line 4065
    sb	$a3,7147($s3)
.L0d995248:
    # Line 4070
    # lw $t9, -17032($gp) # &ceilf
.L0d99524c:
    jal	ceilf
    mul.s	$f12,$f20,$f22
    # lw $t9, -17032($gp) # &ceilf
    sdc1	$f0,16($sp)
    jal	ceilf
    mul.s	$f12,$f24,$f22
    ldc1	$f12,16($sp)
    # lw $t9, -17032($gp) # &ceilf
    mul.s	$f12,$f12,$f0
    jal	ceilf
    mul.s	$f12,$f22,$f12
    # Line 4072
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3824
    bal __glOdysseyImageChainFree
    # Line 4070
    mov.s	$f22,$f0
    # Line 4072
    bnez	$v0,.L0d995300
    move	$s2,$v0
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    # Line 4074
    move	$v0,$zero
    # Line 4210
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9952bc:
    # Line 4125
    beqz	$a1,.L0d994ae4
    # Line 4135
    nop	# was lw $t9, -17032($gp) # &ceilf
    # Line 4127
    bnez	$a1,.L0d994ad0
    # Line 4125
    li	$a3,1
    b	.L0d994ae0
    # Line 4131
    sb	$a3,7147($s3)
.L0d9952d4:
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    # Line 4143
    move	$v0,$zero
    # Line 4210
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d995300:
    # Line 4076
    trunc.l.s	$f13,$f22
    # lw $t9, -32728($gp) # &sub_0d990000
    dmfc1	$a1,$f13
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    sll	$a1,$a1,0x0
    sd	$a1,56($sp)
    bal __glOdysseyImageChainFree
    addiu	$a1,$a1,1
    lw	$ra,20($s2)
    # Line 4082
    move	$t1,$zero
    mtc1	$zero,$f8
    # Line 4076
    beqz	$ra,.L0d995620
    # Line 4082
    move	$a7,$s1
    mul.s	$f22,$f24,$f20
    lwc1	$f6,_lit_3f800000
    c.lt.s	$f8,$f22
    ldc1	$f5,_lit8_3ff0000000000000
    ld	$a2,72($sp)
    bc1f	.L0d995400
    lwc1	$f7,_lit_3f800000
    addiu	$t1,$t1,1
.L0d995358:
    addiu	$t0,$sp,0
    # Line 4083
    addiu	$v0,$a7,16
    # Line 4084
    lwc1	$f14,0($sp)
    # Line 4082
    dsll32	$at,$t1,0x0
    # Line 4084
    lwc1	$f15,4($sp)
    # Line 4082
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f21
    # Line 4084
    cvt.d.s	$f14,$f14
    lwc1	$f18,12($sp)
    cvt.d.s	$f15,$f15
    lwc1	$f16,8($sp)
    # Line 4082
    cvt.s.l	$f21,$f21
    # Line 4084
    lwc1	$f17,8($a7)
    cvt.d.s	$f18,$f18
    lwc1	$f19,12($a7)
    cvt.d.s	$f16,$f16
    abs.s	$f17,$f17
    abs.s	$f19,$f19
    cvt.d.s	$f17,$f17
    cvt.d.s	$f19,$f19
    add.d	$f16,$f16,$f17
    add.d	$f18,$f18,$f19
    lwc1	$f19,4($a7)
    cvt.s.d	$f16,$f16
    lwc1	$f17,0($a7)
    cvt.s.d	$f18,$f18
    abs.s	$f19,$f19
    abs.s	$f17,$f17
    cvt.d.s	$f19,$f19
    cvt.d.s	$f17,$f17
    add.d	$f15,$f15,$f19
    swc1	$f18,12($sp)
    add.d	$f14,$f14,$f17
    swc1	$f16,8($sp)
    cvt.s.d	$f15,$f15
    cvt.s.d	$f14,$f14
    swc1	$f15,4($sp)
    move	$a7,$v0
    # Line 4082
    c.lt.s $f21,$f22
    # Line 4084
    swc1	$f14,0($sp)
    # Line 4082
    bc1t .L0d995358
    addiu	$t1,$t1,1
.L0d995400:
    lwc1	$f0,0($sp)
    addiu	$t0,$sp,0
    cvt.d.s	$f23,$f0
    c.le.d $f23,$f5
    bc1f .L0d995420
    nop
    # Line 4090
    mov.s	$f0,$f6
    swc1	$f7,0($sp)
.L0d995420:
    # Line 4092
    lwc1	$f25,0($a2)
    mul.s	$f25,$f25,$f0
    # Line 4082
    lwc1	$f0,4($t0)
    cvt.d.s	$f27,$f0
    c.le.d $f27,$f5
    bc1f .L0d995444
    # Line 4092
    swc1	$f25,4300($s3)
    # Line 4090
    mov.s	$f0,$f6
    swc1	$f7,4($t0)
.L0d995444:
    # Line 4092
    lwc1	$f27,4($a2)
    mul.s	$f27,$f27,$f0
    # Line 4082
    lwc1	$f0,8($t0)
    cvt.d.s	$f29,$f0
    c.le.d $f29,$f5
    bc1f .L0d995468
    # Line 4092
    swc1	$f27,4304($s3)
    # Line 4090
    mov.s	$f0,$f6
    swc1	$f7,8($t0)
.L0d995468:
    # Line 4092
    lwc1	$f29,8($a2)
    mul.s	$f29,$f29,$f0
    # Line 4082
    lwc1	$f0,12($t0)
    cvt.d.s	$f31,$f0
    c.le.d $f31,$f5
    # Line 4098
    ld	$v0,72($sp)
    move	$a7,$s1
    move	$t1,$zero
    c.lt.s $f8,$f22
    # Line 4082
    bc1f .L0d99549c
    # Line 4092
    swc1	$f29,4308($s3)
    # Line 4090
    mov.s	$f0,$f6
    swc1	$f7,12($t0)
.L0d99549c:
    # Line 4092
    lwc1	$f31,12($a2)
    mul.s	$f31,$f31,$f0
    # Line 4088
    lwc1	$f0,12($sp)
    # Line 4092
    swc1	$f31,4312($s3)
    # Line 4088
    c.eq.s $f0,$f22
    bc1f .L0d9954c0
    nop
    # Line 4098
    lwc1	$f1,12($v0)
    swc1	$f1,4312($s3)
.L0d9954c0:
    li	$s3,1
    movf	$s3,$zero,$fcc7
    beqz	$s3,.L0d99553c
    # Line 4109
    nop	# was lw $t9, -31224($gp) # &__glOdysseyGenericConvolution
.L0d9954d0:
    # Line 4098
    addiu	$t0,$sp,0
    # Line 4104
    addiu	$v0,$a7,16
    # Line 4105
    lwc1	$f6,12($sp)
    lwc1	$f5,12($a7)
    div.s	$f5,$f5,$f6
    lwc1	$f4,8($a7)
    lwc1	$f6,8($sp)
    div.s	$f4,$f4,$f6
    lwc1	$f3,4($a7)
    lwc1	$f6,4($sp)
    div.s	$f3,$f3,$f6
    lwc1	$f2,0($a7)
    lwc1	$f6,0($sp)
    div.s	$f2,$f2,$f6
    # Line 4103
    addiu	$t1,$t1,1
    dsll32	$v1,$t1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    cvt.s.l	$f7,$f7
    # Line 4105
    swc1	$f5,12($a7)
    swc1	$f4,8($a7)
    swc1	$f3,4($a7)
    # Line 4103
    c.lt.s	$f7,$f22
    # Line 4105
    swc1	$f2,0($a7)
    move	$a7,$v0
    # Line 4103
    bc1t	.L0d9954d0
    # Line 4109
    nop	# was lw $t9, -31224($gp) # &__glOdysseyGenericConvolution
.L0d99553c:
    move	$a0,$s2
    move	$a1,$s1
    mov.s	$f15,$f20
    ld	$a2,56($sp)
    mov.s	$f16,$f24
    jal	__glOdysseyGenericConvolution
    move	$a5,$s0
    beqz	$s3,.L0d994e3c
    # Line 4199
    li	$a4,1
    # Line 4109
    move	$t1,$zero
    move	$a7,$s1
    addiu	$t0,$sp,0
.L0d99556c:
    # Line 4116
    addiu	$v0,$a7,16
    # Line 4117
    lwc1	$f9,0($a7)
    lwc1	$f11,4($a7)
    # Line 4115
    addiu	$t1,$t1,1
    # Line 4117
    lwc1	$f13,8($a7)
    # Line 4115
    dsll32	$a0,$t1,0x0
    # Line 4117
    lwc1	$f15,12($a7)
    # Line 4115
    dsrl32	$a0,$a0,0x0
    # Line 4117
    lwc1	$f14,12($sp)
    # Line 4115
    dmtc1	$a0,$f16
    # Line 4117
    lwc1	$f12,8($sp)
    lwc1	$f10,4($sp)
    lwc1	$f8,0($sp)
    mul.s	$f14,$f14,$f15
    # Line 4115
    cvt.s.l	$f16,$f16
    # Line 4117
    mul.s	$f12,$f12,$f13
    swc1	$f14,12($a7)
    mul.s	$f10,$f10,$f11
    swc1	$f12,8($a7)
    mul.s	$f8,$f8,$f9
    swc1	$f10,4($a7)
    swc1	$f8,0($a7)
    move	$a7,$v0
    # Line 4115
    c.lt.s $f16,$f22
    bc1t .L0d99556c
    # Line 4109
    addiu	$t0,$sp,0
    b	.L0d994e3c
    # Line 4199
    li	$a4,1
.L0d9955dc:
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    # Line 4015
    move	$v0,$zero
    # Line 4210
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d995608:
    # Line 4059
    beqz	$a1,.L0d99524c
    # Line 4070
    nop	# was lw $t9, -17032($gp) # &ceilf
    # Line 4061
    bnez	$a1,.L0d995238
    # Line 4059
    li	$a3,1
    b	.L0d995248
    # Line 4065
    sb	$a3,7147($s3)
.L0d995620:
    ld	$s2,120($sp)
    ldc1	$f22,104($sp)
    # Line 4210
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    # Line 4078
    move	$v0,$zero
    # Line 4210
    ldc1	$f20,32($sp)
    ldc1	$f24,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end ImageChainAddOpConvolveResidue

# Function: RenderFunc_ConvolveResidue
# Declared: Line 4215 (Source lines: 4216-4648)
# Address: 0x0d995650 - 0x0d996634 (Size: 4068 bytes, Frame: 192)
.ent RenderFunc_ConvolveResidue
RenderFunc_ConvolveResidue:
    # Line 4216
    addiu	$sp,$sp,-576
    sd	$s3,424($sp)
    move	$a2,$a1
    sd	$s8,416($sp)
    # Line 4243
    addiu	$a3,$sp,0
    # Line 4216
    lui	$at,0x16
    # Line 4222
    lw	$s8,16($a0)
    # Line 4216
    move	$s3,$a0
    sd	$a1,488($sp)
    addiu	$at,$at,12096
    sd	$gp,432($sp)
    addu	$gp,$t9,$at
    # Line 4222
    addiu	$s8,$s8,-1
    sd	$s0,408($sp)
    sd	$s7,512($sp)
    sd	$s4,536($sp)
    # Line 4243
    lw	$v0,0($a2)
    lw	$v1,4($a2)
    lw	$a0,8($a2)
    lw	$t2,32($a1)
    lw	$t1,28($a1)
    lw	$t0,24($a1)
    lw	$a7,20($a1)
    lw	$a6,16($a1)
    lw	$a1,12($a1)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a7,20($sp)
    sw	$a6,16($sp)
    sw	$a1,12($sp)
    sw	$a0,8($sp)
    sw	$v1,4($sp)
    sw	$v0,0($sp)
    # Line 4260
    lw	$s7,4112($zero)
    # Line 4284
    lw	$t0,31804($s7)
    # Line 4283
    lw	$t1,31800($s7)
    # Line 4282
    lw	$t2,31796($s7)
    # Line 4281
    lw	$t3,31740($s7)
    # Line 4279
    lw	$s4,31940($s7)
    lw	$a3,31964($s7)
    lw	$a2,31960($s7)
    lw	$a1,31956($s7)
    lw	$a0,31952($s7)
    # Line 4268
    lui	$s0,0x1
    # Line 4279
    lw	$v1,31948($s7)
    lw	$v0,31944($s7)
    # Line 4268
    addu	$s0,$s0,$s7
    # Line 4280
    lw	$t8,-26968($s0)
    lw	$a4,-26972($s0)
    lw	$a5,-26976($s0)
    # Line 4279
    addiu	$at,$sp,40
    # Line 4280
    lw	$a7,-26980($s0)
    # Line 4279
    sw	$v0,4($at)
    sw	$v1,8($at)
    sw	$a0,12($at)
    sw	$a1,16($at)
    sw	$a2,20($at)
    sw	$a3,24($at)
    sw	$s4,40($sp)
    # Line 4285
    addiu	$a3,$sp,72
    # Line 4268
    lw	$s4,7116($s0)
    sd	$t8,400($sp)
    sd	$t3,392($sp)
    sd	$t2,384($sp)
    sd	$t1,376($sp)
    sd	$t0,368($sp)
    sd	$a7,360($sp)
    sd	$a5,352($sp)
    sd	$a4,344($sp)
    # Line 4285
    ld	$a6,-29688($s0)
    ld	$a2,-29696($s0)
    sd	$a2,24($a3)
    sd	$a6,32($a3)
    ld	$v0,-29672($s0)
    ld	$v1,-29664($s0)
    ld	$at,-29680($s0)
    sd	$at,40($a3)
    ld	$at,-29720($s0)
    sd	$v1,56($a3)
    ld	$v1,-29704($s0)
    sd	$v0,48($a3)
    ld	$v0,-29712($s0)
    sd	$v0,8($a3)
    sd	$v1,16($a3)
    sd	$at,72($sp)
    # Line 4287
    addiu	$a3,$sp,136
    # Line 4286
    lw	$a4,-29724($s0)
    sd	$a4,336($sp)
    sd	$ra,520($sp)
    # Line 4287
    lw	$a0,-29460($s0)
    lw	$t8,-29432($s0)
    lw	$t3,-29436($s0)
    lw	$t2,-29440($s0)
    lw	$t1,-29444($s0)
    lw	$a6,-29448($s0)
    lw	$a2,-29452($s0)
    lw	$a1,-29456($s0)
    sw	$a1,4($a3)
    sw	$a2,8($a3)
    sw	$a6,12($a3)
    sw	$t1,16($a3)
    sw	$t2,20($a3)
    sw	$t3,24($a3)
    sw	$t8,28($a3)
    sw	$a0,136($sp)
    # Line 4288
    lw	$a2,-29464($s0)
    # Line 4289
    lw	$a3,-29332($s0)
    lw	$a4,-29328($s0)
    lw	$t2,-29324($s0)
    sd	$t2,304($sp)
    # Line 4308
    li	$a5,1
    # Line 4313
    sw	$a5,7072($s0)
    # Line 4312
    li	$a6,5123
    sw	$a6,7060($s0)
    # Line 4311
    li	$a7,6408
    sw	$a7,7056($s0)
    # Line 4310
    lw	$t1,7704($s0)
    # Line 4309
    lw	$t0,7708($s0)
    # Line 4308
    sb	$a5,7048($s0)
    # Line 4307
    sw	$zero,7052($s0)
    # Line 4315
    multu	$t0,$t1
    # Line 4306
    sw	$zero,7104($s0)
    # Line 4310
    sw	$t1,7068($s0)
    # Line 4309
    sw	$t0,7064($s0)
    # Line 4315
    lw	$t9,0($s7)
    # Line 4289
    sd	$a4,296($sp)
    # Line 4315
    move	$a0,$s7
    # Line 4289
    sd	$a3,312($sp)
    # Line 4288
    sd	$a2,320($sp)
    # Line 4315
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    sw	$v0,7092($s0)
    sdc1	$f22,496($sp)
    beqz	$v0,.L0d9965f8
    sd	$s6,528($sp)
    # Line 4323
    lbu	$t9,7147($s0)
    li	$t8,1
    sd	$s5,328($sp)
    li	$s5,2
    lui	$s6,0xffef
    beq	$t8,$t9,.L0d9963a8
    ori	$s6,$s6,0xffff
    # Line 4380
    ld	$a0,488($sp)
    sd	$s1,552($sp)
    move	$a1,$s3
    lui	$s1,0x1
    # lw $t9, -32724($gp) # &sub_0d9a0000
    move	$a2,$a0
    ori	$a4,$s1,0x1ad4
    sdc1	$f20,504($sp)
    ori	$s1,$s1,0x1a98
    addiu	$t9,$t9,-6992
    sd	$s2,544($sp)
    addu	$a4,$s7,$a4
    addu	$s1,$s7,$s1
    sd	$a4,480($sp)
    jal	sub_0d9a0000
    move	$a3,$s1
    # Line 4388
    lui	$v0,0x80
    # Line 4384
    lw	$t3,-26972($s0)
    lui	$t2,0xfff9
    # Line 4386
    lui	$t1,0xfffe
    # Line 4384
    ori	$t2,$t2,0xffff
    # Line 4386
    ori	$t1,$t1,0xffff
    # Line 4384
    and	$t2,$t2,$t3
    # Line 4389
    lw	$t0,26976($s0)
    # Line 4386
    and	$t1,$t1,$t2
    # Line 4388
    nor	$t2,$v0,$zero
    and	$t1,$t1,$t2
    sw	$t1,-26972($s0)
    # Line 4389
    lui	$t1,0x20
    or	$t0,$t1,$t0
    sw	$t0,26976($s0)
    # Line 4400
    lui	$a7,0xff00
    # Line 4389
    sw	$s5,4120($zero)
    # Line 4401
    li	$a6,-4096
    # Line 4400
    ori	$a7,$a7,0xfff
    # Line 4394
    lw	$a1,31956($s7)
    # Line 4398
    li	$a4,-769
    # Line 4394
    lui	$a3,0x1000
    # Line 4400
    lw	$a2,31960($s7)
    # Line 4394
    or	$a1,$a1,$a3
    # Line 4396
    li	$a3,-12289
    and	$a1,$a1,$a3
    # Line 4397
    li	$a3,-3073
    # Line 4400
    and	$a2,$a7,$a2
    # Line 4397
    and	$a1,$a1,$a3
    # Line 4401
    and	$a2,$a6,$a2
    # Line 4398
    and	$a1,$a1,$a4
    # Line 4402
    lw	$a3,31964($s7)
    # Line 4408
    li	$a4,-225
    # Line 4407
    ori	$a1,$a1,0x4000
    # Line 4401
    sw	$a2,31960($s7)
    # Line 4410
    li	$a2,-31
    # Line 4408
    and	$a1,$a1,$a4
    # Line 4402
    and	$a3,$a7,$a3
    # Line 4408
    ori	$a1,$a1,0x20
    # Line 4403
    and	$a3,$a6,$a3
    sw	$a3,31964($s7)
    # Line 4410
    and	$a1,$a1,$a2
    ori	$a1,$a1,0x2
    sw	$a1,31956($s7)
    # Line 4413
    lw	$a0,26976($s0)
    ori	$a0,$a0,0x200
    sw	$a0,26976($s0)
    sw	$s5,4120($zero)
    # Line 4415
    lw	$at,31744($s7)
    li	$v1,-385
    and	$at,$at,$v1
    ori	$at,$at,0x80
    # Line 4417
    or	$at,$at,$v0
    sw	$at,31744($s7)
    # Line 4419
    lw	$ra,26976($s0)
    ori	$ra,$ra,0x4
    sw	$ra,26976($s0)
    sw	$s5,4120($zero)
    # Line 4426
    lw	$t9,31740($s7)
    lui	$t8,0x2
    or	$t8,$t8,$t9
    sw	$t8,31740($s7)
    # Line 4427
    lw	$s2,26976($s0)
    ori	$s2,$s2,0x2
    sw	$s2,26976($s0)
    sw	$s5,4120($zero)
    # Line 4434
    lw	$t2,26976($s0)
    # Line 4433
    lw	$t3,-26972($s0)
    # Line 4434
    or	$t1,$t1,$t2
    sw	$t1,26976($s0)
    # Line 4433
    and	$t3,$s6,$t3
    sw	$t3,-26972($s0)
    # Line 4434
    sw	$s5,4120($zero)
    # Line 4444
    lw	$t1,31804($s7)
    # Line 4442
    lw	$t0,31800($s7)
    and	$t0,$a7,$t0
    # Line 4444
    and	$a7,$a7,$t1
    ori	$a7,$a7,0x1000
    # Line 4442
    ori	$t0,$t0,0x1000
    sd	$s1,280($sp)
    # Line 4443
    and	$t0,$a6,$t0
    # Line 4445
    and	$a6,$a6,$a7
    ori	$a6,$a6,0x1
    sw	$a6,31804($s7)
    # Line 4443
    ori	$t0,$t0,0x1
    sw	$t0,31800($s7)
    # Line 4384
    addiu	$t1,$sp,168
    # Line 4446
    lw	$a5,26976($s0)
    mtc1	$zero,$f20
    addiu	$a7,$t1,16
    sd	$a7,448($sp)
    li	$a3,4
    ori	$a5,$a5,0x1
    sw	$a5,26976($s0)
    move	$s2,$zero
    move	$a5,$t1
    sw	$s5,4120($zero)
.L0d995a54:
    # Line 4457
    swc1	$f20,12($a5)
    swc1	$f20,8($a5)
    swc1	$f20,4($a5)
    # Line 4456
    addiu	$t0,$a5,16
    # Line 4457
    swc1	$f20,0($a5)
    # Line 4455
    addiu	$s2,$s2,1
    addiu	$a7,$a7,16
    bne	$s2,$a3,.L0d995a54
    move	$a5,$t0
    move	$s2,$zero
    lui	$s6,0x3
    addiu	$t8,$sp,168
    sd	$t8,464($sp)
    ori	$s6,$s6,0x8000
    addiu	$t8,$t1,64
    sd	$t8,272($sp)
    sd	$t8,456($sp)
    lui	$t8,0x1
    sll	$s1,$s8,0x2
    ori	$t9,$t8,0x1b4c
    subu	$s1,$s1,$s8
    lwc1	$f22,_lit_3f800000
    ori	$t8,$t8,0x1b10
    sll	$s1,$s1,0x3
    sd	$s4,288($sp)
    addu	$t9,$s7,$t9
    subu	$s1,$s1,$s8
    sd	$t9,440($sp)
    addu	$t8,$s7,$t8
    sll	$s1,$s1,0x2
    sd	$t8,472($sp)
    subu	$s1,$s1,$s8
    b	.L0d995c34
    sll	$s1,$s1,0x5
.L0d995adc:
    # Line 4575
    ld	$t9,488($sp)
    lwc1	$f7,0($t9)
    swc1	$f7,232($sp)
    # Line 4576
    lwc1	$f6,4($t9)
    swc1	$f6,236($sp)
    # Line 4577
    lwc1	$f5,8($t9)
    swc1	$f5,240($sp)
    # Line 4578
    lwc1	$f4,12($t9)
    # Line 4581
    swc1	$f20,252($sp)
    # Line 4580
    swc1	$f20,248($sp)
    # Line 4578
    swc1	$f4,244($sp)
    # Line 4582
    lwc1	$f3,0($t9)
    lwc1	$f2,8($t9)
    ld	$s1,560($sp)
    sub.s	$f2,$f2,$f3
    swc1	$f2,256($sp)
    # Line 4583
    lwc1	$f0,12($t9)
    lwc1	$f1,4($t9)
    # Line 4585
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    ld	$a1,472($sp)
    ld	$a0,440($sp)
    # Line 4583
    sub.s	$f0,$f0,$f1
    # Line 4585
    addiu	$a2,$sp,232
    jal	__glOdysseyImageMovePixelsDMAtoHost
    # Line 4583
    swc1	$f0,260($sp)
    # Line 4588
    lwc1	$f11,236($sp)
    lwc1	$f13,244($sp)
    lwc1	$f12,240($sp)
    lwc1	$f10,232($sp)
    mov.s	$f9,$f13
    c.lt.s $f13,$f11
    mov.s	$f8,$f12
    c.lt.s $f11,$f13
    c.lt.s $f12,$f10
    movt.s	$f9,$f11,$fcc3
    c.lt.s	$f10,$f12
    movf.s	$f11,$f13,$fcc2
    movt.s	$f8,$f10,$fcc1
    movf.s	$f10,$f12,$fcc0
    sub.s	$f9,$f9,$f11
    sub.s	$f8,$f8,$f10
    # lw $t9, -31252($gp) # &__glOdysseyReconstructFromResidue
    trunc.w.s	$f9,$f9
    lw	$a1,7092($s0)
    trunc.w.s	$f8,$f8
    ld	$a4,288($sp)
    mfc1	$a3,$f9
    move	$a5,$s2
    lw	$a0,7032($s0)
    jal	__glOdysseyReconstructFromResidue
    mfc1	$a2,$f8
    li	$a3,4
    addiu	$a5,$sp,168
    ld	$a7,448($sp)
    move	$s4,$zero
.L0d995bb8:
    # Line 4598
    swc1	$f20,12($a5)
    swc1	$f20,8($a5)
    # Line 4596
    addiu	$s4,$s4,1
    # Line 4598
    swc1	$f20,4($a5)
    # Line 4597
    addiu	$t0,$a5,16
    # Line 4596
    addiu	$a7,$a7,16
    # Line 4598
    swc1	$f20,0($a5)
    move	$a5,$t0
    # Line 4596
    bne	$s4,$a3,.L0d995bb8
    nop
    # Line 4607
    lw	$v0,26976($s0)
    # Line 4463
    ld	$v1,456($sp)
    # Line 4607
    lui	$at,0x20
    # Line 4463
    addiu	$s2,$s2,1
    ld	$ra,464($sp)
    # Line 4605
    lui	$a0,0xfffe
    # Line 4463
    addiu	$v1,$v1,4
    sd	$v1,456($sp)
    # Line 4605
    ori	$a0,$a0,0xffff
    # Line 4603
    lw	$a2,-26972($s0)
    lui	$a1,0xfff9
    # Line 4463
    addiu	$ra,$ra,4
    sd	$ra,464($sp)
    # Line 4603
    ori	$a1,$a1,0xffff
    # Line 4607
    or	$at,$at,$v0
    sw	$at,26976($s0)
    # Line 4603
    and	$a1,$a1,$a2
    # Line 4605
    and	$a0,$a0,$a1
    sw	$a0,-26972($s0)
    # Line 4463
    beq	$s2,$a3,.L0d9961c8
    # Line 4607
    sw	$s5,4120($zero)
.L0d995c34:
    # Line 4465
    ld	$a2,464($sp)
    swc1	$f22,48($a2)
    swc1	$f22,32($a2)
    swc1	$f22,16($a2)
    swc1	$f22,0($a2)
    # Line 4464
    move	$a5,$zero
    lui	$t1,0xfffd
    ld	$t0,272($sp)
    addiu	$a7,$sp,168
    ori	$t1,$t1,0xffff
.L0d995c5c:
    # Line 4469
    lw	$t9,20($s3)
    lwc1	$f17,0($a7)
    addu	$t9,$t9,$s1
    addu	$t9,$a5,$t9
    swc1	$f17,0($t9)
    # Line 4470
    lw	$t8,20($s3)
    lwc1	$f16,4($a7)
    addu	$t8,$t8,$s1
    addu	$t8,$a5,$t8
    swc1	$f16,4($t8)
    # Line 4471
    lw	$t3,20($s3)
    lwc1	$f15,8($a7)
    addu	$t3,$t3,$s1
    addu	$t3,$a5,$t3
    swc1	$f15,8($t3)
    # Line 4472
    lw	$t2,20($s3)
    # Line 4468
    addiu	$a7,$a7,16
    # Line 4472
    lwc1	$f14,-4($a7)
    addu	$t2,$t2,$s1
    addu	$t2,$a5,$t2
    # Line 4468
    addiu	$a5,$a5,148
    bne	$a7,$t0,.L0d995c5c
    # Line 4472
    swc1	$f14,12($t2)
    # Line 4476
    lw	$a2,31740($s7)
    and	$a2,$t1,$a2
    sw	$a2,31740($s7)
    # Line 4477
    lw	$a1,26976($s0)
    # Line 4481
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 4477
    ori	$a1,$a1,0x2
    sw	$a1,26976($s0)
    sw	$s5,4120($zero)
    # Line 4481
    lw	$a0,20($s3)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s1
    # Line 4484
    lw	$at,31956($s7)
    lui	$s4,0x1
    # Line 4489
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 4484
    or	$at,$s4,$at
    # Line 4485
    ori	$at,$at,0x4000
    sw	$at,31956($s7)
    # Line 4486
    lw	$ra,26976($s0)
    # Line 4489
    addiu	$t9,$t9,-13472
    move	$a0,$s3
    # Line 4486
    ori	$ra,$ra,0x200
    sw	$ra,26976($s0)
    # Line 4489
    move	$a1,$s8
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 4486
    sw	$s5,4120($zero)
    # Line 4500
    ld	$a1,8($sp)
    ld	$a3,0($sp)
    addiu	$a2,$sp,232
    sd	$a3,232($sp)
    sd	$a1,8($a2)
    # Line 4502
    ld	$a1,280($sp)
    # Line 4500
    ld	$a0,16($sp)
    sd	$a0,16($a2)
    # Line 4502
    ld	$a0,480($sp)
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 4500
    ld	$v1,24($sp)
    lw	$v0,32($sp)
    sw	$v0,32($a2)
    sd	$v1,24($a2)
    # Line 4501
    lwc1	$f18,232($sp)
    lwc1	$f19,236($sp)
    lwc1	$f23,244($sp)
    lwc1	$f21,240($sp)
    swc1	$f23,260($sp)
    swc1	$f21,256($sp)
    swc1	$f19,252($sp)
    # Line 4502
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsTexture
    # Line 4501
    swc1	$f18,248($sp)
    # Line 4507
    lw	$a7,31956($s7)
    lui	$a3,0xfffe
    ori	$a3,$a3,0xffff
    and	$a7,$a3,$a7
    sw	$a7,31956($s7)
    # Line 4508
    lw	$a6,26976($s0)
    ori	$a6,$a6,0x200
    sw	$a6,26976($s0)
    sw	$s5,4120($zero)
    # Line 4512
    lui	$a5,0xfff9
    lw	$t9,-26972($s0)
    # Line 4518
    lui	$t3,0x20
    # Line 4512
    ori	$a5,$a5,0xffff
    # Line 4518
    lw	$t8,26976($s0)
    # Line 4512
    lui	$t0,0x2
    and	$t9,$a5,$t9
    # Line 4518
    or	$t3,$t3,$t8
    sw	$t3,26976($s0)
    # Line 4512
    or	$t9,$t0,$t9
    # Line 4515
    or	$t9,$s4,$t9
    sw	$t9,-26972($s0)
    # Line 4518
    sw	$s5,4120($zero)
    # Line 4522
    lw	$t2,31740($s7)
    or	$t2,$t0,$t2
    sw	$t2,31740($s7)
    # Line 4523
    lw	$t1,26976($s0)
    ori	$t1,$t1,0x2
    sw	$t1,26976($s0)
    sw	$s5,4120($zero)
    # Line 4526
    lui	$a7,0xffff
    lw	$t2,31796($s7)
    ori	$a7,$a7,0x1fff
    # Line 4528
    li	$t1,-8129
    # Line 4526
    and	$t2,$a7,$t2
    # Line 4528
    and	$t2,$t1,$t2
    # Line 4530
    li	$a6,-64
    # Line 4528
    ori	$t2,$t2,0xa00
    # Line 4530
    and	$a6,$a6,$t2
    sw	$a6,31796($s7)
    # Line 4532
    lw	$a4,26976($s0)
    sd	$s1,560($sp)
    ori	$a4,$a4,0x1
    sw	$a4,26976($s0)
    blez	$s8,.L0d995adc
    sw	$s5,4120($zero)
    move	$s1,$zero
    b	.L0d995f64
    move	$s4,$zero
    nop
.L0d995e40:
    addiu	$t8,$s0,-29716
    li	$t3,0x8
    # Line 4540
    lw	$ra,20($s3)
    li	$t0,16
    move	$a7,$zero
    addiu	$t1,$s0,-29720
    addu	$ra,$ra,$s1
    addiu	$t2,$ra,628
    addiu	$ra,$ra,624
    nop
    nop
    nop
.L0d995e70:
    addu	$v0,$a7,$ra
    addu	$v1,$a7,$t1
    lw	$v0,0($v0)
    addiu	$t0,$t0,-2
    addu	$at,$a7,$t2
    sw	$v0,0($v1)
    addu	$v0,$a7,$t8
    lw	$at,0($at)
    addu	$a7,$a7,$t3
    bgtz	$t0,.L0d995e70
    sw	$at,0($v0)
    # Line 4541
    lw	$a5,20($s3)
    addu	$a5,$a5,$s1
    lw	$v1,688($a5)
    sw	$v1,-29460($s0)
    lw	$v0,692($a5)
    sw	$v0,-29456($s0)
    lw	$at,696($a5)
    sw	$at,-29452($s0)
    lw	$ra,700($a5)
    sw	$ra,-29448($s0)
    lw	$t9,704($a5)
    sw	$t9,-29444($s0)
    lw	$t8,708($a5)
    sw	$t8,-29440($s0)
    lw	$t3,712($a5)
    sw	$t3,-29436($s0)
    lw	$a6,716($a5)
    sw	$a6,-29432($s0)
    # Line 4542
    lw	$a0,20($s3)
    addu	$a0,$a0,$s1
    lw	$a2,2900($a0)
    sw	$a2,-29332($s0)
    lw	$a1,2904($a0)
    sw	$a1,-29328($s0)
    lw	$a0,2908($a0)
    sw	$a0,-29324($s0)
.L0d995f04:
    # Line 4567
    ld	$a2,488($sp)
.L0d995f08:
    ld	$a1,480($sp)
    ld	$a0,472($sp)
    # Line 4562
    sw	$s5,-29464($s0)
    # Line 4563
    lw	$a4,26976($s0)
    # Line 4567
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 4561
    sw	$s5,-29724($s0)
    # Line 4563
    or	$a4,$s6,$a4
    sw	$a4,26976($s0)
    # Line 4567
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsTexture
    # Line 4563
    sw	$s5,4120($zero)
    # Line 4568
    lw	$a7,31796($s7)
    li	$a6,-64
    and	$a6,$a6,$a7
    ori	$a6,$a6,0x8
    sw	$a6,31796($s7)
    # Line 4570
    lw	$a5,26976($s0)
    # Line 4535
    addiu	$s4,$s4,1
    # Line 4570
    ori	$a5,$a5,0x1
    sw	$a5,26976($s0)
    # Line 4535
    addiu	$s1,$s1,2912
    beq	$s8,$s4,.L0d995adc
    # Line 4570
    sw	$s5,4120($zero)
.L0d995f64:
    # Line 4538
    beqz	$s2,.L0d995e40
    li	$t1,3
    li	$t0,1
    beq	$s2,$t0,.L0d996048
    addiu	$a5,$s0,-29716
    beq	$s2,$s5,.L0d996108
    addiu	$t2,$s0,-29716
    bne	$s2,$t1,.L0d995f08
    # Line 4567
    ld	$a2,488($sp)
    addiu	$t3,$s0,-29716
    li	$t2,0x8
    # Line 4555
    lw	$t0,20($s3)
    li	$a7,16
    move	$a5,$zero
    addiu	$t1,$s0,-29720
    addu	$t0,$t0,$s1
    addiu	$t8,$t0,2788
    addiu	$t0,$t0,2784
    nop
.L0d995fb0:
    addu	$ra,$a5,$t0
    addu	$at,$a5,$t1
    lw	$ra,0($ra)
    addiu	$a7,$a7,-2
    addu	$t9,$a5,$t8
    sw	$ra,0($at)
    addu	$ra,$a5,$t3
    lw	$t9,0($t9)
    addu	$a5,$a5,$t2
    bgtz	$a7,.L0d995fb0
    sw	$t9,0($ra)
    # Line 4556
    lw	$a5,20($s3)
    addu	$a5,$a5,$s1
    lw	$v1,2848($a5)
    sw	$v1,-29460($s0)
    lw	$v0,2852($a5)
    sw	$v0,-29456($s0)
    lw	$at,2856($a5)
    sw	$at,-29452($s0)
    lw	$ra,2860($a5)
    sw	$ra,-29448($s0)
    lw	$t9,2864($a5)
    sw	$t9,-29444($s0)
    lw	$t8,2868($a5)
    sw	$t8,-29440($s0)
    lw	$t3,2872($a5)
    sw	$t3,-29436($s0)
    lw	$a6,2876($a5)
    sw	$a6,-29432($s0)
    # Line 4557
    lw	$a0,20($s3)
    addu	$a0,$a0,$s1
    lw	$a2,2900($a0)
    sw	$a2,-29332($s0)
    lw	$a1,2904($a0)
    sw	$a1,-29328($s0)
    lw	$a0,2908($a0)
    # Line 4558
    b	.L0d995f04
    # Line 4557
    sw	$a0,-29324($s0)
.L0d996048:
    li	$t3,0x8
    # Line 4545
    lw	$t1,20($s3)
    li	$a7,16
    move	$t0,$zero
    addiu	$t2,$s0,-29720
    addu	$t1,$t1,$s1
    addiu	$t8,$t1,1348
    addiu	$t1,$t1,1344
    nop
    nop
.L0d996070:
    addu	$ra,$t0,$t1
    addu	$at,$t0,$t2
    lw	$ra,0($ra)
    addiu	$a7,$a7,-2
    addu	$t9,$t0,$t8
    sw	$ra,0($at)
    addu	$ra,$t0,$a5
    lw	$t9,0($t9)
    addu	$t0,$t0,$t3
    bgtz	$a7,.L0d996070
    sw	$t9,0($ra)
    # Line 4546
    lw	$a5,20($s3)
    addu	$a5,$a5,$s1
    lw	$v1,1408($a5)
    sw	$v1,-29460($s0)
    lw	$v0,1412($a5)
    sw	$v0,-29456($s0)
    lw	$at,1416($a5)
    sw	$at,-29452($s0)
    lw	$ra,1420($a5)
    sw	$ra,-29448($s0)
    lw	$t9,1424($a5)
    sw	$t9,-29444($s0)
    lw	$t8,1428($a5)
    sw	$t8,-29440($s0)
    lw	$t3,1432($a5)
    sw	$t3,-29436($s0)
    lw	$a6,1436($a5)
    sw	$a6,-29432($s0)
    # Line 4547
    lw	$a0,20($s3)
    addu	$a0,$a0,$s1
    lw	$a2,2900($a0)
    sw	$a2,-29332($s0)
    lw	$a1,2904($a0)
    sw	$a1,-29328($s0)
    lw	$a0,2908($a0)
    # Line 4548
    b	.L0d995f04
    # Line 4547
    sw	$a0,-29324($s0)
.L0d996108:
    li	$t0,0x8
    # Line 4550
    lw	$t8,20($s3)
    li	$a5,16
    move	$a7,$zero
    addiu	$t1,$s0,-29720
    addu	$t8,$t8,$s1
    addiu	$t3,$t8,2068
    addiu	$t8,$t8,2064
    nop
    nop
.L0d996130:
    addu	$ra,$a7,$t8
    addu	$at,$a7,$t1
    lw	$ra,0($ra)
    addiu	$a5,$a5,-2
    addu	$t9,$a7,$t3
    sw	$ra,0($at)
    addu	$ra,$a7,$t2
    lw	$t9,0($t9)
    addu	$a7,$a7,$t0
    bgtz	$a5,.L0d996130
    sw	$t9,0($ra)
    # Line 4551
    lw	$a5,20($s3)
    addu	$a5,$a5,$s1
    lw	$v1,2128($a5)
    sw	$v1,-29460($s0)
    lw	$v0,2132($a5)
    sw	$v0,-29456($s0)
    lw	$at,2136($a5)
    sw	$at,-29452($s0)
    lw	$ra,2140($a5)
    sw	$ra,-29448($s0)
    lw	$t9,2144($a5)
    sw	$t9,-29444($s0)
    lw	$t8,2148($a5)
    sw	$t8,-29440($s0)
    lw	$t3,2152($a5)
    sw	$t3,-29436($s0)
    lw	$a6,2156($a5)
    sw	$a6,-29432($s0)
    # Line 4552
    lw	$a0,20($s3)
    addu	$a0,$a0,$s1
    lw	$a2,2900($a0)
    sw	$a2,-29332($s0)
    lw	$a1,2904($a0)
    sw	$a1,-29328($s0)
    lw	$a0,2908($a0)
    # Line 4553
    b	.L0d995f04
    # Line 4552
    sw	$a0,-29324($s0)
.L0d9961c8:
    # Line 4613
    lwc1	$f31,16($sp)
    lwc1	$f29,20($sp)
    swc1	$f31,248($sp)
    swc1	$f29,252($sp)
    lwc1	$f27,24($sp)
    lwc1	$f25,28($sp)
    # Line 4615
    li	$a4,1
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    li	$a3,1
    lui	$a1,0x1
    # Line 4613
    swc1	$f27,256($sp)
    # Line 4615
    addiu	$a2,$sp,232
    ori	$a1,$a1,0x1b88
    # Line 4613
    swc1	$f25,260($sp)
    # Line 4615
    addu	$a1,$s7,$a1
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s3)
    lw	$a1,7092($s0)
    beqz	$a1,.L0d996228
    ld	$s4,536($sp)
    # Line 4620
    lw	$t9,12($s7)
    jalr	$t9
    move	$a0,$s7
    ld	$s4,536($sp)
.L0d996228:
    ld	$a0,296($sp)
    ld	$a1,304($sp)
    ld	$a2,312($sp)
    ld	$a3,320($sp)
    ld	$ra,520($sp)
    ld	$s6,528($sp)
    ld	$s1,552($sp)
    ld	$s2,544($sp)
    ldc1	$f22,496($sp)
    ldc1	$f20,504($sp)
    # Line 4628
    ld	$t1,376($sp)
    # Line 4629
    ld	$t2,368($sp)
    # Line 4625
    ld	$at,360($sp)
    ld	$t9,352($sp)
    ld	$t8,344($sp)
    ld	$t3,400($sp)
    # Line 4624
    lw	$t0,40($sp)
    sw	$t0,31940($s7)
    # Line 4627
    ld	$t0,384($sp)
    # Line 4624
    addiu	$v0,$sp,40
    lw	$a7,4($v0)
    lw	$a5,12($v0)
    lw	$a4,16($v0)
    lw	$v1,20($v0)
    lw	$a6,8($v0)
    lw	$v0,24($v0)
    sw	$v0,31964($s7)
    sw	$v1,31960($s7)
    sw	$a4,31956($s7)
    sw	$a5,31952($s7)
    sw	$a7,31944($s7)
    sw	$a6,31948($s7)
    # Line 4625
    sw	$t3,-26968($s0)
    sw	$t8,-26972($s0)
    sw	$t9,-26976($s0)
    sw	$at,-26980($s0)
    # Line 4629
    sw	$t2,31804($s7)
    # Line 4628
    sw	$t1,31800($s7)
    # Line 4627
    sw	$t0,31796($s7)
    # Line 4626
    ld	$a6,392($sp)
    # Line 4630
    addiu	$a4,$sp,72
    # Line 4626
    sw	$a6,31740($s7)
    ld	$s7,512($sp)
    # Line 4630
    ld	$t1,72($sp)
    ld	$t2,8($a4)
    ld	$t3,16($a4)
    ld	$t8,24($a4)
    ld	$t9,32($a4)
    ld	$at,40($a4)
    ld	$v0,48($a4)
    ld	$v1,56($a4)
    sd	$v1,-29664($s0)
    sd	$v0,-29672($s0)
    sd	$at,-29680($s0)
    sd	$t9,-29688($s0)
    sd	$t8,-29696($s0)
    sd	$t3,-29704($s0)
    sd	$t2,-29712($s0)
    sd	$t1,-29720($s0)
    # Line 4631
    ld	$a6,336($sp)
    # Line 4632
    addiu	$a4,$sp,136
    # Line 4631
    sw	$a6,-29724($s0)
    # Line 4632
    lw	$v1,28($a4)
    sw	$v1,-29432($s0)
    lw	$v0,24($a4)
    sw	$v0,-29436($s0)
    lw	$at,20($a4)
    sw	$at,-29440($s0)
    lw	$t9,16($a4)
    sw	$t9,-29444($s0)
    lw	$t8,12($a4)
    sw	$t8,-29448($s0)
    lw	$t3,8($a4)
    sw	$t3,-29452($s0)
    lw	$t2,4($a4)
    sw	$t2,-29456($s0)
    lw	$t1,136($sp)
    sw	$t1,-29460($s0)
    # Line 4648
    ld	$gp,432($sp)
    ld	$s3,424($sp)
    ld	$s8,416($sp)
    # Line 4633
    sw	$a3,-29464($s0)
    # Line 4634
    sw	$a2,-29332($s0)
    # Line 4636
    lw	$a2,26976($s0)
    # Line 4634
    sw	$a0,-29328($s0)
    # Line 4636
    lui	$a0,0x23
    # Line 4634
    sw	$a1,-29324($s0)
    # Line 4636
    ori	$a0,$a0,0x8203
    or	$a0,$a0,$a2
    sw	$a0,26976($s0)
    # Line 4648
    ld	$s0,408($sp)
    li	$v0,1
    # Line 4636
    sw	$s5,4120($zero)
    # Line 4648
    ld	$s5,328($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9963a8:
    # Line 4330
    lw	$at,26976($s0)
    lui	$ra,0x20
    # Line 4329
    lw	$v0,-26972($s0)
    # Line 4330
    or	$ra,$ra,$at
    sw	$ra,26976($s0)
    # Line 4329
    and	$v0,$s6,$v0
    sw	$v0,-26972($s0)
    # Line 4330
    sw	$s5,4120($zero)
    # Line 4333
    lui	$t9,0xfffd
    lw	$ra,31740($s7)
    ori	$t9,$t9,0xffff
    and	$t9,$t9,$ra
    sw	$t9,31740($s7)
    # Line 4334
    lw	$t8,26976($s0)
    ld	$s4,536($sp)
    ori	$t8,$t8,0x2
    sw	$t8,26976($s0)
    sw	$s5,4120($zero)
    # Line 4346
    sw	$s5,-29464($s0)
    # Line 4348
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 4344
    lw	$a4,-29432($s0)
    # Line 4342
    lw	$a6,-29440($s0)
    # Line 4347
    lw	$a2,26976($s0)
    # Line 4339
    lw	$t1,-29452($s0)
    # Line 4337
    lw	$t3,-29460($s0)
    lui	$a3,0xffff
    # Line 4338
    lw	$t2,-29456($s0)
    # Line 4347
    lui	$a1,0x1
    # Line 4340
    lw	$t0,-29448($s0)
    # Line 4337
    and	$t3,$a3,$t3
    # Line 4341
    lw	$a7,-29444($s0)
    # Line 4338
    and	$t2,$a3,$t2
    # Line 4339
    and	$t1,$a3,$t1
    # Line 4343
    lw	$a5,-29436($s0)
    # Line 4340
    and	$t0,$a3,$t0
    # Line 4347
    or	$a1,$a1,$a2
    sw	$a1,26976($s0)
    # Line 4341
    and	$a7,$a3,$a7
    # Line 4342
    and	$a6,$a3,$a6
    # Line 4343
    and	$a5,$a3,$a5
    # Line 4344
    and	$a3,$a3,$a4
    sw	$a3,-29432($s0)
    # Line 4343
    sw	$a5,-29436($s0)
    # Line 4342
    sw	$a6,-29440($s0)
    # Line 4341
    sw	$a7,-29444($s0)
    # Line 4340
    sw	$t0,-29448($s0)
    # Line 4339
    sw	$t1,-29452($s0)
    # Line 4338
    sw	$t2,-29456($s0)
    # Line 4337
    sw	$t3,-29460($s0)
    # Line 4347
    sw	$s5,4120($zero)
    # Line 4348
    lw	$a1,68($s3)
    ld	$a2,488($sp)
    mov.d	$f22,$f22
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s3)
    ld	$s6,528($sp)
    ld	$ra,520($sp)
    # Line 4352
    ld	$v1,392($sp)
    # Line 4353
    ld	$a0,384($sp)
    # Line 4354
    ld	$a1,376($sp)
    # Line 4355
    ld	$a2,368($sp)
    # Line 4351
    ld	$a6,360($sp)
    ld	$a5,352($sp)
    ld	$a4,344($sp)
    ld	$a3,400($sp)
    # Line 4350
    lw	$t9,40($sp)
    sw	$t9,31940($s7)
    addiu	$a7,$sp,40
    lw	$t8,4($a7)
    lw	$t3,8($a7)
    lw	$t2,12($a7)
    lw	$t1,16($a7)
    lw	$t0,20($a7)
    lw	$a7,24($a7)
    sw	$a7,31964($s7)
    sw	$t0,31960($s7)
    sw	$t1,31956($s7)
    sw	$t2,31952($s7)
    sw	$t3,31948($s7)
    sw	$t8,31944($s7)
    # Line 4351
    sw	$a3,-26968($s0)
    sw	$a4,-26972($s0)
    sw	$a5,-26976($s0)
    sw	$a6,-26980($s0)
    # Line 4355
    sw	$a2,31804($s7)
    # Line 4354
    sw	$a1,31800($s7)
    # Line 4353
    sw	$a0,31796($s7)
    # Line 4356
    addiu	$a0,$sp,72
    # Line 4352
    sw	$v1,31740($s7)
    ld	$s7,512($sp)
    # Line 4356
    ld	$at,72($sp)
    ld	$v0,8($a0)
    ld	$v1,16($a0)
    ld	$a4,24($a0)
    ld	$a5,32($a0)
    ld	$a6,40($a0)
    ld	$a7,48($a0)
    ld	$t0,56($a0)
    sd	$t0,-29664($s0)
    sd	$a7,-29672($s0)
    sd	$a6,-29680($s0)
    sd	$a5,-29688($s0)
    sd	$a4,-29696($s0)
    sd	$v1,-29704($s0)
    sd	$v0,-29712($s0)
    sd	$at,-29720($s0)
    # Line 4357
    ld	$t1,336($sp)
    # Line 4358
    addiu	$a0,$sp,136
    # Line 4357
    sw	$t1,-29724($s0)
    # Line 4358
    lw	$a4,28($a0)
    sw	$a4,-29432($s0)
    lw	$v1,24($a0)
    sw	$v1,-29436($s0)
    lw	$v0,20($a0)
    sw	$v0,-29440($s0)
    lw	$at,16($a0)
    sw	$at,-29444($s0)
    lw	$t9,12($a0)
    sw	$t9,-29448($s0)
    lw	$t8,8($a0)
    sw	$t8,-29452($s0)
    lw	$t3,4($a0)
    sw	$t3,-29456($s0)
    lw	$t2,136($sp)
    sw	$t2,-29460($s0)
    # Line 4648
    ld	$gp,432($sp)
    ld	$s3,424($sp)
    ld	$s8,416($sp)
    # Line 4360
    ld	$a7,304($sp)
    ld	$t0,296($sp)
    ld	$t1,312($sp)
    # Line 4359
    ld	$t2,320($sp)
    sw	$t2,-29464($s0)
    # Line 4360
    sw	$t1,-29332($s0)
    sw	$t0,-29328($s0)
    # Line 4362
    lw	$a6,26976($s0)
    lui	$a5,0x23
    # Line 4360
    sw	$a7,-29324($s0)
    # Line 4362
    ori	$a5,$a5,0x8203
    or	$a5,$a5,$a6
    sw	$a5,26976($s0)
    # Line 4648
    ld	$s0,408($sp)
    # Line 4370
    li	$v0,1
    # Line 4362
    sw	$s5,4120($zero)
    # Line 4648
    ld	$s5,328($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9965f8:
    # Line 4321
    # lw $t9, -26792($gp) # &__glSetError
    move	$s6,$s6
    ld	$s4,536($sp)
    ld	$s7,512($sp)
    mov.d	$f22,$f22
    jal	__glSetError
    li	$a0,1285
    # Line 4648
    ld	$gp,432($sp)
    ld	$ra,520($sp)
    ld	$s0,408($sp)
    # Line 4323
    move	$v0,$zero
    # Line 4648
    ld	$s3,424($sp)
    ld	$s8,416($sp)
    jr	$ra
    addiu	$sp,$sp,576
.end RenderFunc_ConvolveResidue

# Function: ImageChainAddOpScaleBias
# Declared: Line 4654 (Source lines: 4655-4752)
# Address: 0x0d996640 - 0x0d9967dc (Size: 412 bytes, Frame: 208)
.ent ImageChainAddOpScaleBias
ImageChainAddOpScaleBias:
    # Line 4659
    lw	$at,4112($zero)
    # Line 4655
    addiu	$sp,$sp,-80
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    # Line 4669
    # lw $t9, -32728($gp) # &sub_0d990000
    sd	$at,24($sp)
    sd	$ra,48($sp)
    addiu	$t9,$t9,-3824
    # Line 4655
    sd	$s1,56($sp)
    move	$s1,$a0
    # Line 4669
    bal __glOdysseyImageChainFree
    sd	$s0,64($sp)
    # Line 4752
    ld	$ra,48($sp)
    # Line 4669
    bnez	$v0,.L0d996690
    move	$s0,$v0
    # Line 4671
    move	$v0,$zero
    ld	$s0,64($sp)
    # Line 4752
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d996690:
    # Line 4678
    ld	$a4,32($sp)
    # Line 4675
    li	$a5,5
    sw	$a5,0($v0)
    # Line 4678
    lwc1	$f7,0($a4)
    swc1	$f7,24($v0)
    # Line 4679
    lwc1	$f6,4($a4)
    swc1	$f6,28($v0)
    # Line 4680
    lwc1	$f5,8($a4)
    swc1	$f5,32($v0)
    # Line 4681
    lwc1	$f4,12($a4)
    # Line 4682
    ld	$a3,40($sp)
    # Line 4681
    swc1	$f4,36($v0)
    # Line 4682
    lwc1	$f3,0($a3)
    swc1	$f3,40($v0)
    # Line 4683
    lwc1	$f2,4($a3)
    swc1	$f2,44($v0)
    # Line 4684
    lwc1	$f1,8($a3)
    swc1	$f1,48($v0)
    # Line 4685
    lwc1	$f0,12($a3)
    # Line 4689
    # lw $t9, -31192($gp) # &__glOdysseyImageCalcXferWriteParams
    # Line 4685
    swc1	$f0,52($v0)
    # Line 4689
    lw	$a2,24($s1)
    lw	$a0,20($s1)
    lw	$a2,52($a2)
    lw	$a1,12($a0)
    addiu	$a3,$sp,0
    jal	__glOdysseyImageCalcXferWriteParams
    lw	$a0,8($a0)
    # Line 4694
    lbu	$a6,4($sp)
    # Line 4742
    la	$t0,sub_0d990000
    # Line 4694
    li	$v0,1
    beq	$v0,$a6,.L0d996770
    # Line 4742
    addiu	$t0,$t0,26592
.L0d996714:
    # Line 4739
    sw	$v0,12($s0)
    # Line 4735
    lw	$a7,8($s0)
    # Line 4742
    sw	$t0,4($s0)
    # Line 4735
    ori	$a7,$a7,0x1e
    sw	$a7,8($s0)
.L0d996728:
    # Line 4748
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3664
    move	$a0,$s0
    bal __glOdysseyImageChainFree
    li	$a1,1
    # Line 4749
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-2832
    move	$a0,$s1
    move	$a1,$s0
    move	$a3,$zero
    bal __glOdysseyImageChainFree
    lw	$a2,8($s1)
    # Line 4752
    ld	$ra,48($sp)
    li	$v0,1
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d996770:
    # Line 4694
    ld	$ra,24($sp)
    lw	$ra,31600($ra)
    # Line 4710
    li	$a2,6406
    # Line 4694
    andi	$ra,$ra,0x80
    # Line 4710
    li	$a1,0x8000
    li	$at,6408
    # Line 4694
    beqz	$ra,.L0d996714
    # Line 4710
    li	$a3,6410
    # Line 4708
    sb	$v0,60($s0)
    # Line 4710
    lw	$a0,20($s1)
    lw	$a0,8($a0)
    # Line 4728
    la	$a5,sub_0d9a0000
    # Line 4710
    beq	$a0,$at,.L0d9967c0
    # Line 4728
    addiu	$a5,$a5,-32752
    # Line 4710
    beq	$a0,$a1,.L0d9967c0
    nop
    beq	$a0,$a2,.L0d9967c0
    nop
    bne	$a0,$a3,.L0d9967c4
    nop
.L0d9967c0:
    # Line 4714
    sb	$zero,60($s0)
.L0d9967c4:
    # Line 4725
    sw	$v0,12($s0)
    # Line 4721
    lw	$a4,8($s0)
    # Line 4728
    sw	$a5,4($s0)
    # Line 4721
    ori	$a4,$a4,0x1e
    # Line 4728
    b	.L0d996728
    # Line 4721
    sw	$a4,8($s0)
.end ImageChainAddOpScaleBias

# Function: RenderFunc_ScaleBias
# Declared: Line 4757 (Source lines: 4758-5444)
# Address: 0x0d9967e0 - 0x0d998004 (Size: 6180 bytes, Frame: 160)
.ent RenderFunc_ScaleBias
RenderFunc_ScaleBias:
    # Line 4758
    addiu	$sp,$sp,-544
    # Line 4807
    sd	$zero,312($sp)
    # Line 4758
    sd	$s6,432($sp)
    sdc1	$f24,240($sp)
    # Line 4760
    mtc1	$zero,$f24
    # Line 4758
    sd	$s0,408($sp)
    # Line 4762
    swc1	$f24,60($sp)
    swc1	$f24,56($sp)
    swc1	$f24,52($sp)
    swc1	$f24,48($sp)
    # Line 4761
    swc1	$f24,44($sp)
    swc1	$f24,40($sp)
    swc1	$f24,36($sp)
    # Line 4758
    sd	$s8,424($sp)
    sdc1	$f26,248($sp)
    # Line 4760
    swc1	$f24,28($sp)
    swc1	$f24,24($sp)
    # Line 4758
    sd	$s2,416($sp)
    lui	$s2,0x16
    # Line 4760
    swc1	$f24,20($sp)
    # Line 4758
    addiu	$s2,$s2,7600
    sd	$gp,440($sp)
    addu	$gp,$t9,$s2
    # Line 4759
    lwc1	$f26,_lit_3f800000
    # Line 4760
    swc1	$f24,16($sp)
    # Line 4759
    swc1	$f26,12($sp)
    swc1	$f26,8($sp)
    swc1	$f26,4($sp)
    swc1	$f26,0($sp)
    # Line 4790
    lw	$s8,4112($zero)
    # Line 4761
    swc1	$f24,32($sp)
    # Line 4806
    lw	$a5,31804($s8)
    # Line 4805
    lw	$a6,31800($s8)
    # Line 4804
    lw	$a7,31796($s8)
    # Line 4803
    lw	$a2,31740($s8)
    # Line 4801
    lw	$at,31944($s8)
    lw	$s6,31960($s8)
    lw	$a4,31952($s8)
    lw	$s2,31956($s8)
    lw	$a3,31948($s8)
    # Line 4802
    lui	$s0,0x1
    # Line 4801
    lw	$t8,31964($s8)
    lw	$t9,31940($s8)
    # Line 4802
    addu	$s0,$s8,$s0
    lw	$t0,-26968($s0)
    lw	$t1,-26972($s0)
    lw	$t2,-26976($s0)
    lw	$t3,-26980($s0)
    # Line 4801
    addiu	$v0,$sp,64
    sw	$t9,64($sp)
    sw	$t8,24($v0)
    sw	$a3,8($v0)
    # Line 4807
    addiu	$v1,$s0,-29720
    sd	$v1,304($sp)
    # Line 4801
    sw	$s2,16($v0)
    sw	$a4,12($v0)
    # Line 4807
    addiu	$a4,$sp,96
    # Line 4801
    sw	$s6,20($v0)
    # Line 4758
    move	$s6,$a1
    move	$s2,$a0
    # Line 4801
    sw	$at,4($v0)
    sd	$t3,400($sp)
    sd	$t2,392($sp)
    sd	$t1,384($sp)
    sd	$t0,376($sp)
    sd	$a7,368($sp)
    sd	$a6,360($sp)
    sd	$a5,352($sp)
    # Line 4807
    ld	$a3,-29672($s0)
    ld	$a1,-29680($s0)
    ld	$a0,-29688($s0)
    ld	$v1,-29696($s0)
    ld	$v0,-29704($s0)
    ld	$at,-29712($s0)
    sd	$at,8($a4)
    sd	$v0,16($a4)
    sd	$v1,24($a4)
    sd	$a0,32($a4)
    sd	$a1,40($a4)
    sd	$a3,48($a4)
    ld	$t9,-29664($s0)
    sd	$t9,56($a4)
    ld	$t9,-29720($s0)
    sd	$t9,96($sp)
    # Line 4809
    addiu	$a1,$sp,160
    # Line 4808
    lw	$a0,-29724($s0)
    sd	$a0,344($sp)
    # Line 4809
    lw	$at,-29460($s0)
    lw	$t2,-29432($s0)
    lw	$t1,-29436($s0)
    lw	$t0,-29440($s0)
    lw	$a7,-29444($s0)
    lw	$a3,-29448($s0)
    lw	$v1,-29452($s0)
    lw	$v0,-29456($s0)
    sw	$v0,4($a1)
    sw	$v1,8($a1)
    sw	$a3,12($a1)
    sw	$a7,16($a1)
    sw	$t0,20($a1)
    sw	$t1,24($a1)
    sw	$t2,28($a1)
    sw	$at,160($sp)
    # Line 4810
    lw	$a6,-29464($s0)
    # Line 4811
    lw	$a5,-29332($s0)
    # Line 4814
    lui	$a4,0x2
    # Line 4811
    lw	$a1,-29328($s0)
    # Line 4814
    nor	$a4,$a4,$zero
    # Line 4811
    lw	$a7,-29324($s0)
    # Line 4814
    and	$a4,$a2,$a4
    sw	$a4,31740($s8)
    # Line 4815
    lw	$a3,26976($s0)
    ori	$a3,$a3,0x2
    sw	$a3,26976($s0)
    li	$t0,2
    sw	$t0,4120($zero)
    # Line 4818
    lw	$v1,31956($s8)
    lui	$a0,0x4
    or	$v1,$v1,$a0
    # Line 4819
    ori	$v1,$v1,0x4000
    sw	$v1,31956($s8)
    # Line 4820
    lw	$v0,26976($s0)
    ori	$v0,$v0,0x200
    sw	$v0,26976($s0)
    sw	$t0,4120($zero)
    # Line 4822
    lui	$at,0x10
    lw	$t9,-26972($s0)
    nor	$at,$at,$zero
    # Line 4823
    lw	$t3,26976($s0)
    # Line 4822
    and	$t9,$t9,$at
    sw	$t9,-26972($s0)
    # Line 4823
    lui	$t8,0x20
    or	$t3,$t3,$t8
    sw	$t3,26976($s0)
    sw	$t0,4120($zero)
    # Line 4839
    lwc1	$f10,24($s2)
    abs.s	$f10,$f10
    swc1	$f10,0($sp)
    # Line 4840
    lwc1	$f7,28($s2)
    abs.s	$f7,$f7
    swc1	$f7,4($sp)
    # Line 4841
    lwc1	$f6,32($s2)
    abs.s	$f6,$f6
    swc1	$f6,8($sp)
    # Line 4842
    lwc1	$f8,36($s2)
    abs.s	$f8,$f8
    swc1	$f8,12($sp)
    # Line 4844
    lwc1	$f3,40($s2)
    swc1	$f3,16($sp)
    # Line 4845
    lwc1	$f2,44($s2)
    swc1	$f2,20($sp)
    # Line 4846
    lwc1	$f1,48($s2)
    swc1	$f1,24($sp)
    # Line 4847
    lwc1	$f0,52($s2)
    mtc1	$zero,$f9
    addiu	$a4,$sp,16
    swc1	$f0,28($sp)
    abs.s	$f13,$f3
    lwc1	$f12,4($a4)
    c.lt.s $f9,$f13
    abs.s	$f12,$f12
    movf.s	$f13,$f9,$fcc3
    lwc1	$f11,8($a4)
    c.lt.s $f13,$f12
    abs.s	$f11,$f11
    movf.s	$f12,$f13,$fcc2
    lwc1	$f9,12($a4)
    c.lt.s $f12,$f11
    abs.s	$f9,$f9
    movf.s	$f11,$f12,$fcc1
    sd	$a7,336($sp)
    sd	$a6,296($sp)
    c.lt.s	$f11,$f9
    sd	$a5,288($sp)
    sd	$a1,280($sp)
    movf.s	$f9,$f11,$fcc0
    # Line 4849
    c.eq.s $f10,$f24
    lwc1	$f4,7712($s0)
    lwc1	$f5,40($s2)
    bc1t .L0d996ac8
    sd	$a2,272($sp)
    # Line 4855
    div.s	$f14,$f5,$f10
    swc1	$f14,32($sp)
    # Line 4856
    mul.s	$f14,$f4,$f14
    b	.L0d996ad0
    swc1	$f14,48($sp)
.L0d996ac8:
    # Line 4859
    swc1	$f5,48($sp)
    # Line 4858
    swc1	$f5,32($sp)
.L0d996ad0:
    # Line 4859
    c.eq.s $f7,$f24
    bc1t .L0d996af0
    lwc1	$f5,44($s2)
    # Line 4863
    div.s	$f15,$f5,$f7
    swc1	$f15,36($sp)
    # Line 4864
    mul.s	$f15,$f4,$f15
    b	.L0d996af8
    swc1	$f15,52($sp)
.L0d996af0:
    # Line 4867
    swc1	$f5,52($sp)
    # Line 4866
    swc1	$f5,36($sp)
.L0d996af8:
    # Line 4867
    c.eq.s $f6,$f24
    bc1t .L0d996b18
    lwc1	$f5,48($s2)
    # Line 4871
    div.s	$f16,$f5,$f6
    swc1	$f16,40($sp)
    # Line 4872
    mul.s	$f16,$f4,$f16
    b	.L0d996b20
    swc1	$f16,56($sp)
.L0d996b18:
    # Line 4875
    swc1	$f5,56($sp)
    # Line 4874
    swc1	$f5,40($sp)
.L0d996b20:
    # Line 4875
    lwc1	$f5,52($s2)
    sdc1	$f20,464($sp)
    sd	$s5,536($sp)
    sd	$s1,528($sp)
    sd	$ra,520($sp)
    c.eq.s $f8,$f24
    sd	$s7,512($sp)
    sd	$s4,504($sp)
    bc1t .L0d996b5c
    sd	$s3,496($sp)
    # Line 4880
    div.s	$f17,$f5,$f8
    swc1	$f17,44($sp)
    # Line 4881
    mul.s	$f17,$f4,$f17
    b	.L0d996b64
    swc1	$f17,60($sp)
.L0d996b5c:
    # Line 4884
    swc1	$f5,60($sp)
    # Line 4883
    swc1	$f5,44($sp)
.L0d996b64:
    # Line 4884
    mtc1	$zero,$f8
    mtc1	$zero,$f7
    addiu	$a1,$sp,48
    addiu	$a0,$sp,32
    # Line 4889
    lwc1	$f23,48($sp)
    # Line 4884
    lwc1	$f21,32($sp)
    # Line 4889
    abs.s	$f23,$f23
    lwc1	$f11,4($a1)
    # Line 4884
    abs.s	$f21,$f21
    lwc1	$f10,4($a0)
    # Line 4889
    c.lt.s $f7,$f23
    # Line 4884
    c.lt.s $f8,$f21
    # Line 4889
    abs.s	$f11,$f11
    movf.s	$f23,$f7,$fcc7
    lwc1	$f19,8($a1)
    # Line 4884
    abs.s	$f10,$f10
    movf.s	$f21,$f8,$fcc6
    lwc1	$f18,8($a0)
    # Line 4889
    c.lt.s $f23,$f11
    # Line 4884
    c.lt.s $f21,$f10
    # Line 4889
    abs.s	$f19,$f19
    movf.s	$f11,$f23,$fcc5
    # Line 4884
    abs.s	$f18,$f18
    # Line 4889
    lwc1	$f7,12($a1)
    movf.s	$f10,$f21,$fcc4
    # Line 4884
    lwc1	$f8,12($a0)
    # Line 4889
    c.lt.s $f11,$f19
    # Line 4884
    c.lt.s $f10,$f18
    # Line 4889
    abs.s	$f7,$f7
    movf.s	$f19,$f11,$fcc3
    # Line 4884
    abs.s	$f8,$f8
    movf.s	$f18,$f10,$fcc2
    # Line 4889
    c.lt.s $f19,$f7
    sdc1	$f30,488($sp)
    # Line 4884
    c.lt.s	$f18,$f8
    sdc1	$f28,480($sp)
    movf.s	$f7,$f19,$fcc1
    sdc1	$f22,472($sp)
    movf.s	$f8,$f18,$fcc0
    # Line 4901
    lwc1	$f28,32($s2)
    abs.s	$f28,$f28
    div.s	$f28,$f28,$f4
    # Line 4899
    lwc1	$f5,24($s2)
    abs.s	$f5,$f5
    div.s	$f5,$f5,$f4
    # Line 4902
    lwc1	$f6,36($s2)
    abs.s	$f6,$f6
    div.s	$f6,$f6,$f4
    # Line 4911
    ldc1	$f22,_lit8_3ff0000000000000
    # Line 4900
    lwc1	$f30,28($s2)
    # Line 4911
    cvt.d.s	$f31,$f5
    c.le.d	$f31,$f22
    # Line 4900
    abs.s	$f30,$f30
    # Line 4902
    sdc1	$f6,264($sp)
    # Line 4900
    div.s	$f30,$f30,$f4
    # Line 4911
    bc1f	.L0d996c4c
    swc1	$f5,0($sp)
    # Line 4912
    swc1	$f26,0($sp)
.L0d996c4c:
    # Line 4913
    cvt.d.s	$f10,$f30
    c.le.d $f10,$f22
    bc1f .L0d996c60
    swc1	$f30,4($sp)
    # Line 4914
    swc1	$f26,4($sp)
.L0d996c60:
    # Line 4915
    cvt.d.s	$f11,$f28
    c.le.d $f11,$f22
    bc1f .L0d996c74
    swc1	$f28,8($sp)
    # Line 4916
    swc1	$f26,8($sp)
.L0d996c74:
    # Line 4917
    ldc1	$f12,264($sp)
    cvt.d.s	$f13,$f12
    c.le.d $f13,$f22
    bc1f .L0d996c8c
    swc1	$f12,12($sp)
    # Line 4918
    swc1	$f26,12($sp)
.L0d996c8c:
    lwc1	$f6,_lit_3f800000
    addiu	$a5,$sp,0
    lwc1	$f16,0($sp)
    c.lt.s $f6,$f16
    lwc1	$f15,4($sp)
    movf.s	$f16,$f6,$fcc7
    c.lt.s $f16,$f15
    lwc1	$f14,8($sp)
    movf.s	$f15,$f16,$fcc6
    c.lt.s $f15,$f14
    lwc1	$f10,12($sp)
    movf.s	$f14,$f15,$fcc5
    c.lt.s $f14,$f10
    movf.s	$f10,$f14,$fcc4
    mov.s	$f6,$f10
    # Line 4925
    lwc1	$f29,0($s6)
    swc1	$f29,192($sp)
    lwc1	$f27,4($s6)
    swc1	$f27,196($sp)
    lwc1	$f25,8($s6)
    swc1	$f25,200($sp)
    lwc1	$f23,12($s6)
    # Line 4927
    swc1	$f24,212($sp)
    # Line 4926
    swc1	$f24,208($sp)
    # Line 4925
    swc1	$f23,204($sp)
    # Line 4927
    lwc1	$f23,8($s6)
    lwc1	$f21,0($s6)
    # Line 4928
    c.lt.s $f21,$f23
    # Line 4927
    c.lt.s $f23,$f21
    # Line 4928
    mov.s	$f19,$f21
    movf.s	$f21,$f23,$fcc3
    movf.s	$f19,$f23,$fcc4
    sub.s	$f19,$f19,$f21
    swc1	$f19,216($sp)
    lwc1	$f19,12($s6)
    lwc1	$f18,4($s6)
    # Line 4951
    cvt.d.s	$f4,$f10
    # Line 4929
    c.lt.s $f18,$f19
    # Line 4928
    c.lt.s $f19,$f18
    # Line 4929
    mov.s	$f17,$f18
    # Line 4951
    c.lt.d	$f22,$f4
    movf.s	$f18,$f19,$fcc1
    li	$a0,1
    movf.s	$f17,$f19,$fcc2
    movf	$a0,$zero,$fcc0
    # Line 4929
    sub.s	$f17,$f17,$f18
    # Line 4951
    beqz	$a0,.L0d996dd0
    # Line 4929
    swc1	$f17,220($sp)
    # Line 4951
    lwc1	$f31,7712($s0)
    c.le.s $f7,$f31
    bc1f .L0d996dd0
    nop
    # Line 4958
    swc1	$f24,16($sp)
    swc1	$f24,20($sp)
    swc1	$f24,24($sp)
    swc1	$f24,28($sp)
    # Line 4960
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f10
    li	$s7,1
    sdc1	$f5,256($sp)
    bc1f .L0d997a6c
    move	$a0,$s7
    lwc1	$f5,_lit_3f800000
    move	$a0,$s7
    nop
.L0d996d90:
    # Line 4964
    mul.s	$f5,$f4,$f5
    div.s	$f0,$f6,$f5
    c.lt.s $f4,$f0
    bc1t .L0d996d90
    # Line 4963
    addiu	$a0,$a0,1
    # Line 4964
    blez	$a0,.L0d99720c
    # Line 5426
    ld	$ra,272($sp)
    # Line 4964
    addiu	$s5,$a0,1
.L0d996db0:
    la	$s3,sub_0d9a0000
    li	$s1,1
    lui	$s4,0x1
    ori	$s4,$s4,0x19e4
    addiu	$s3,$s3,-13808
    sd	$a0,456($sp)
    b	.L0d9970ec
    addu	$s4,$s8,$s4
.L0d996dd0:
    # Line 5028
    c.le.d	$f4,$f22
    bc1f	.L0d996ec0
    nop
    lwc1	$f4,7712($s0)
    # Line 5143
    li	$s1,1
    # Line 5028
    c.lt.s $f4,$f9
    # Line 5131
    addiu	$a5,$sp,0
    # Line 5143
    la	$s3,sub_0d9a0000
    lui	$s4,0x1
    # Line 5138
    li	$s7,1
    # Line 5143
    ori	$s4,$s4,0x19e4
    addiu	$s3,$s3,-13808
    # Line 5028
    bc1f .L0d996ec0
    # Line 5143
    addu	$s4,$s8,$s4
    # Line 5028
    c.lt.s $f4,$f8
    bc1t .L0d997cf8
    sdc1	$f9,232($sp)
    # Line 5126
    swc1	$f24,16($sp)
    swc1	$f24,20($sp)
    swc1	$f24,24($sp)
    swc1	$f24,28($sp)
    # Line 5128
    lwc1	$f4,24($s2)
    abs.s	$f4,$f4
    swc1	$f4,0($sp)
    # Line 5129
    lwc1	$f3,28($s2)
    abs.s	$f3,$f3
    swc1	$f3,4($sp)
    # Line 5130
    lwc1	$f2,32($s2)
    abs.s	$f2,$f2
    swc1	$f2,8($sp)
    # Line 5131
    lwc1	$f1,36($s2)
    abs.s	$f1,$f1
    swc1	$f1,12($sp)
    lwc1	$f8,0($sp)
    c.lt.s $f6,$f8
    lwc1	$f7,4($sp)
    movf.s	$f8,$f6,$fcc6
    c.lt.s $f8,$f7
    lwc1	$f6,8($sp)
    movf.s	$f7,$f8,$fcc5
    c.lt.s $f7,$f6
    lwc1	$f5,12($sp)
    movf.s	$f6,$f7,$fcc4
    c.lt.s $f6,$f5
    # Line 5138
    lwc1	$f4,7712($s0)
    movf.s	$f5,$f6,$fcc3
    mov.s	$f6,$f5
    c.lt.s $f4,$f5
    lwc1	$f5,_lit_3f800000
    bc1f .L0d997cf0
    move	$a0,$s7
.L0d996e9c:
    # Line 5143
    mul.s	$f5,$f4,$f5
    div.s	$f9,$f6,$f5
    c.lt.s	$f4,$f9
    bc1t	.L0d996e9c
    # Line 5142
    addiu	$a0,$a0,1
    # Line 5143
    blez	$a0,.L0d997208
.L0d996eb4:
    addiu	$s5,$a0,1
    b	.L0d99770c
    sd	$a0,320($sp)
.L0d996ec0:
    # Line 5200
    beqz	$a0,.L0d9971f0
    # Line 5417
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5200
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f7
    bc1f .L0d9971f0
    # Line 5417
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5200
    c.lt.s $f4,$f8
    li	$s7,1
    bc1t .L0d9977ec
    sdc1	$f5,256($sp)
    # Line 5334
    swc1	$f24,16($sp)
    swc1	$f24,20($sp)
    swc1	$f24,24($sp)
    swc1	$f24,28($sp)
    # Line 5336
    lwc1	$f13,24($s2)
    abs.s	$f13,$f13
    swc1	$f13,0($sp)
    # Line 5337
    lwc1	$f12,28($s2)
    abs.s	$f12,$f12
    swc1	$f12,4($sp)
    # Line 5338
    lwc1	$f11,32($s2)
    abs.s	$f11,$f11
    swc1	$f11,8($sp)
    # Line 5339
    lwc1	$f10,36($s2)
    abs.s	$f10,$f10
    addiu	$a5,$sp,0
    swc1	$f10,12($sp)
    lwc1	$f16,0($sp)
    c.lt.s $f6,$f16
    lwc1	$f15,4($sp)
    movf.s	$f16,$f6,$fcc6
    c.lt.s $f16,$f15
    lwc1	$f14,8($sp)
    movf.s	$f15,$f16,$fcc5
    c.lt.s $f15,$f14
    lwc1	$f5,12($sp)
    movf.s	$f14,$f15,$fcc4
    c.lt.s $f14,$f5
    movf.s	$f5,$f14,$fcc3
    mov.s	$f6,$f5
    # Line 5341
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    move	$a0,$s7
    # Line 5351
    la	$s3,sub_0d9a0000
    lui	$s4,0x1
    li	$s1,1
    ori	$s4,$s4,0x19e4
    addiu	$s3,$s3,-13808
    addu	$s4,$s8,$s4
    # Line 5341
    bc1f .L0d997ce8
    lwc1	$f5,_lit_3f800000
    move	$a0,$s7
.L0d996f90:
    # Line 5351
    mul.s	$f5,$f4,$f5
    div.s	$f17,$f6,$f5
    c.lt.s	$f4,$f17
    bc1t	.L0d996f90
    # Line 5350
    addiu	$a0,$a0,1
    # Line 5351
    blez	$a0,.L0d99720c
    # Line 5426
    ld	$ra,272($sp)
    # Line 5351
    addiu	$s5,$a0,1
.L0d996fb0:
    b	.L0d9974f4
    sd	$a0,448($sp)
.L0d996fb8:
    # Line 4998
    lwc1	$f23,16($s6)
    # Line 4997
    lw	$a0,72($s2)
    # Line 4998
    swc1	$f23,208($sp)
    lwc1	$f21,20($s6)
    swc1	$f21,212($sp)
    lwc1	$f19,24($s6)
    swc1	$f19,216($sp)
    lwc1	$f18,28($s6)
    swc1	$f18,220($sp)
.L0d996fdc:
    # Line 5003
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s4
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
.L0d996ff4:
    # Line 5014
    mtc1	$s1,$f20
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    nop
    ldc1	$f21,256($sp)
    div.s	$f21,$f21,$f0
    # Line 5015
    # lw $t9, -17028($gp) # &powf
    # Line 5014
    swc1	$f21,0($sp)
    # Line 5015
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f23,$f30,$f0
    # Line 5016
    # lw $t9, -17028($gp) # &powf
    # Line 5015
    swc1	$f23,4($sp)
    # Line 5016
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f25,$f28,$f0
    # Line 5017
    # lw $t9, -17028($gp) # &powf
    # Line 5016
    swc1	$f25,8($sp)
    # Line 5017
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    ldc1	$f27,264($sp)
    div.s	$f27,$f27,$f0
    addiu	$a5,$sp,0
    addiu	$a4,$sp,16
    # Line 4968
    addiu	$s1,$s1,1
    # Line 5017
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d997090
    nop
    # Line 5022
    swc1	$f24,16($sp)
    # Line 5021
    swc1	$f26,0($sp)
.L0d997090:
    # Line 5017
    lwc1	$f31,4($a5)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d9970ac
    nop
    # Line 5022
    swc1	$f24,4($a4)
    # Line 5021
    swc1	$f26,4($a5)
.L0d9970ac:
    # Line 5017
    lwc1	$f0,8($a5)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d9970c8
    nop
    # Line 5022
    swc1	$f24,8($a4)
    # Line 5021
    swc1	$f26,8($a5)
.L0d9970c8:
    # Line 5017
    lwc1	$f1,12($a5)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d9970e4
    nop
    # Line 5022
    swc1	$f24,12($a4)
    # Line 5021
    swc1	$f26,12($a5)
.L0d9970e4:
    # Line 4968
    beq	$s1,$s5,.L0d99720c
    # Line 5426
    ld	$ra,272($sp)
.L0d9970ec:
    # Line 4968
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a5,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d997108
    nop
    # Line 4971
    swc1	$f4,0($sp)
.L0d997108:
    # Line 4968
    lwc1	$f3,4($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f3
    bc1f .L0d997120
    nop
    # Line 4971
    swc1	$f4,4($a5)
.L0d997120:
    # Line 4968
    lwc1	$f5,8($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997138
    nop
    # Line 4971
    swc1	$f4,8($a5)
.L0d997138:
    # Line 4968
    lwc1	$f6,12($a5)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f6
    bc1f	.L0d997154
    # Line 4974
    move	$t9,$s3
    # Line 4971
    swc1	$f4,12($a5)
    # Line 4974
    move	$t9,$s3
.L0d997154:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    beq	$s1,$s7,.L0d997198
    # Line 4993
    lwc1	$f7,208($sp)
    swc1	$f7,192($sp)
    lwc1	$f8,212($sp)
    lwc1	$f10,220($sp)
    lwc1	$f9,216($sp)
    ld	$t8,456($sp)
    swc1	$f9,200($sp)
    swc1	$f10,204($sp)
    # Line 5000
    move	$a0,$s4
    # Line 4993
    bne	$s1,$t8,.L0d996fdc
    swc1	$f8,196($sp)
    b	.L0d996fb8
    nop
.L0d997198:
    # Line 4983
    move	$a0,$s4
    # Line 4974
    ld	$t9,456($sp)
    bne	$s1,$t9,.L0d9971cc
    nop
    # Line 4981
    lwc1	$f14,16($s6)
    # Line 4980
    lw	$a0,72($s2)
    # Line 4981
    swc1	$f14,208($sp)
    lwc1	$f13,20($s6)
    swc1	$f13,212($sp)
    lwc1	$f12,24($s6)
    swc1	$f12,216($sp)
    lwc1	$f11,28($s6)
    swc1	$f11,220($sp)
.L0d9971cc:
    # Line 4986
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d996ff4
    nop
    # Line 5417
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d9971f0:
    li	$a4,1
    move	$a3,$zero
    lw	$a1,68($s2)
    move	$a2,$s6
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a0,72($s2)
.L0d997208:
    # Line 5426
    ld	$ra,272($sp)
.L0d99720c:
    # Line 5427
    ld	$at,368($sp)
    # Line 5428
    ld	$v0,360($sp)
    # Line 5429
    ld	$v1,352($sp)
    # Line 5425
    ld	$a3,400($sp)
    ld	$a2,392($sp)
    ld	$a1,384($sp)
    ld	$a0,376($sp)
    # Line 5424
    lw	$t2,64($sp)
    sw	$t2,31940($s8)
    addiu	$a4,$sp,64
    lw	$t1,4($a4)
    lw	$t0,8($a4)
    lw	$a7,12($a4)
    lw	$a6,16($a4)
    lw	$a5,20($a4)
    lw	$a4,24($a4)
    sw	$a4,31964($s8)
    sw	$a5,31960($s8)
    sw	$a6,31956($s8)
    sw	$a7,31952($s8)
    sw	$t0,31948($s8)
    sw	$t1,31944($s8)
    # Line 5425
    sw	$a0,-26968($s0)
    sw	$a1,-26972($s0)
    sw	$a2,-26976($s0)
    sw	$a3,-26980($s0)
    # Line 5429
    sw	$v1,31804($s8)
    # Line 5428
    sw	$v0,31800($s8)
    # Line 5427
    sw	$at,31796($s8)
    # Line 5430
    addiu	$a0,$sp,96
    # Line 5426
    sw	$ra,31740($s8)
    ld	$s5,536($sp)
    ld	$s1,528($sp)
    ld	$ra,520($sp)
    ld	$s7,512($sp)
    ld	$s4,504($sp)
    ld	$s3,496($sp)
    ldc1	$f30,488($sp)
    ldc1	$f28,480($sp)
    ldc1	$f22,472($sp)
    ldc1	$f20,464($sp)
    # Line 5430
    ld	$t3,96($sp)
    ld	$t8,8($a0)
    ld	$t9,16($a0)
    ld	$at,24($a0)
    ld	$v0,32($a0)
    ld	$v1,40($a0)
    ld	$a3,48($a0)
    ld	$a5,56($a0)
    sd	$a5,-29664($s0)
    sd	$a3,-29672($s0)
    sd	$v1,-29680($s0)
    sd	$v0,-29688($s0)
    sd	$at,-29696($s0)
    sd	$t9,-29704($s0)
    sd	$t8,-29712($s0)
    sd	$t3,-29720($s0)
    # Line 5431
    ld	$a6,344($sp)
    # Line 5432
    addiu	$a0,$sp,160
    # Line 5431
    sw	$a6,-29724($s0)
    # Line 5432
    lw	$at,28($a0)
    sw	$at,-29432($s0)
    lw	$t9,24($a0)
    sw	$t9,-29436($s0)
    lw	$t8,20($a0)
    sw	$t8,-29440($s0)
    lw	$t3,16($a0)
    sw	$t3,-29444($s0)
    lw	$t2,12($a0)
    sw	$t2,-29448($s0)
    lw	$t1,8($a0)
    sw	$t1,-29452($s0)
    lw	$t0,4($a0)
    sw	$t0,-29456($s0)
    lw	$a7,160($sp)
    sw	$a7,-29460($s0)
    # Line 5444
    ld	$gp,440($sp)
    ld	$s2,416($sp)
    ld	$s6,432($sp)
    ld	$s8,424($sp)
    ldc1	$f24,240($sp)
    ldc1	$f26,248($sp)
    # Line 5433
    ld	$a5,296($sp)
    # Line 5434
    ld	$a4,288($sp)
    ld	$a3,280($sp)
    ld	$a2,336($sp)
    sw	$a2,-29324($s0)
    sw	$a3,-29328($s0)
    sw	$a4,-29332($s0)
    # Line 5436
    lw	$a0,26976($s0)
    lui	$a1,0x23
    # Line 5433
    sw	$a5,-29464($s0)
    # Line 5436
    ori	$a1,$a1,0x8203
    or	$a0,$a0,$a1
    sw	$a0,26976($s0)
    # Line 5444
    li	$v0,1
    # Line 5436
    li	$v1,2
    sw	$v1,4120($zero)
    # Line 5444
    ld	$s0,408($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d9973a0:
    # Line 5383
    lwc1	$f18,16($s6)
    # Line 5382
    lw	$a0,72($s2)
    # Line 5383
    swc1	$f18,208($sp)
    lwc1	$f17,20($s6)
    swc1	$f17,212($sp)
    lwc1	$f16,24($s6)
    swc1	$f16,216($sp)
    lwc1	$f15,28($s6)
    swc1	$f15,220($sp)
.L0d9973c4:
    # Line 5388
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s4
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    # Line 5393
    mtc1	$s1,$f20
.L0d9973e0:
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    nop
    nop
    nop
    lwc1	$f21,24($s2)
    abs.s	$f21,$f21
    div.s	$f21,$f21,$f0
    # Line 5394
    # lw $t9, -17028($gp) # &powf
    # Line 5393
    swc1	$f21,0($sp)
    # Line 5394
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f23,28($s2)
    abs.s	$f23,$f23
    div.s	$f23,$f23,$f0
    # Line 5395
    # lw $t9, -17028($gp) # &powf
    # Line 5394
    swc1	$f23,4($sp)
    # Line 5395
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f25,32($s2)
    abs.s	$f25,$f25
    div.s	$f25,$f25,$f0
    # Line 5396
    # lw $t9, -17028($gp) # &powf
    # Line 5395
    swc1	$f25,8($sp)
    # Line 5396
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f27,36($s2)
    abs.s	$f27,$f27
    div.s	$f27,$f27,$f0
    addiu	$a5,$sp,0
    addiu	$a4,$sp,16
    # Line 5355
    addiu	$s1,$s1,1
    # Line 5396
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d997498
    nop
    # Line 5401
    swc1	$f24,16($sp)
    # Line 5400
    swc1	$f26,0($sp)
.L0d997498:
    # Line 5396
    lwc1	$f31,4($a5)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d9974b4
    nop
    # Line 5401
    swc1	$f24,4($a4)
    # Line 5400
    swc1	$f26,4($a5)
.L0d9974b4:
    # Line 5396
    lwc1	$f0,8($a5)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d9974d0
    nop
    # Line 5401
    swc1	$f24,8($a4)
    # Line 5400
    swc1	$f26,8($a5)
.L0d9974d0:
    # Line 5396
    lwc1	$f1,12($a5)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d9974ec
    nop
    # Line 5401
    swc1	$f24,12($a4)
    # Line 5400
    swc1	$f26,12($a5)
.L0d9974ec:
    # Line 5355
    beq	$s1,$s5,.L0d99720c
    # Line 5426
    ld	$ra,272($sp)
.L0d9974f4:
    # Line 5355
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a5,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d997510
    nop
    # Line 5358
    swc1	$f4,0($sp)
.L0d997510:
    # Line 5355
    lwc1	$f3,4($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f3
    bc1f .L0d997528
    nop
    # Line 5358
    swc1	$f4,4($a5)
.L0d997528:
    # Line 5355
    lwc1	$f5,8($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997540
    nop
    # Line 5358
    swc1	$f4,8($a5)
.L0d997540:
    # Line 5355
    lwc1	$f6,12($a5)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f6
    bc1f	.L0d99755c
    # Line 5363
    move	$t9,$s3
    # Line 5358
    swc1	$f4,12($a5)
    # Line 5363
    move	$t9,$s3
.L0d99755c:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    beq	$s1,$s7,.L0d997580
    # Line 5375
    ld	$a6,448($sp)
    bne	$s1,$a6,.L0d9973c4
    # Line 5385
    move	$a0,$s4
    b	.L0d9973a0
    nop
.L0d997580:
    # Line 5372
    move	$a0,$s4
    # Line 5363
    ld	$a7,448($sp)
    bne	$s1,$a7,.L0d9975b4
    nop
    # Line 5370
    lwc1	$f10,16($s6)
    # Line 5369
    lw	$a0,72($s2)
    # Line 5370
    swc1	$f10,208($sp)
    lwc1	$f9,20($s6)
    swc1	$f9,212($sp)
    lwc1	$f8,24($s6)
    swc1	$f8,216($sp)
    lwc1	$f7,28($s6)
    swc1	$f7,220($sp)
.L0d9975b4:
    # Line 5375
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d9973e0
    # Line 5393
    mtc1	$s1,$f20
.L0d9975d4:
    # Line 5175
    lwc1	$f14,16($s6)
    # Line 5174
    lw	$a0,72($s2)
    # Line 5175
    swc1	$f14,208($sp)
    lwc1	$f13,20($s6)
    swc1	$f13,212($sp)
    lwc1	$f12,24($s6)
    swc1	$f12,216($sp)
    lwc1	$f11,28($s6)
    swc1	$f11,220($sp)
    # Line 5180
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d9975fc:
    move	$a1,$s4
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    # Line 5185
    mtc1	$s1,$f20
.L0d997614:
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    nop
    nop
    lwc1	$f21,24($s2)
    abs.s	$f21,$f21
    div.s	$f21,$f21,$f0
    # Line 5186
    # lw $t9, -17028($gp) # &powf
    # Line 5185
    swc1	$f21,0($sp)
    # Line 5186
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f23,28($s2)
    abs.s	$f23,$f23
    div.s	$f23,$f23,$f0
    # Line 5187
    # lw $t9, -17028($gp) # &powf
    # Line 5186
    swc1	$f23,4($sp)
    # Line 5187
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f25,32($s2)
    abs.s	$f25,$f25
    div.s	$f25,$f25,$f0
    # Line 5188
    # lw $t9, -17028($gp) # &powf
    # Line 5187
    swc1	$f25,8($sp)
    # Line 5188
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f27,36($s2)
    abs.s	$f27,$f27
    div.s	$f27,$f27,$f0
    addiu	$a5,$sp,0
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d9976bc
    nop
    # Line 5192
    swc1	$f26,0($sp)
.L0d9976bc:
    # Line 5188
    lwc1	$f31,4($a5)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d9976d4
    nop
    # Line 5192
    swc1	$f26,4($a5)
.L0d9976d4:
    # Line 5188
    lwc1	$f0,8($a5)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d9976ec
    # Line 5147
    addiu	$s1,$s1,1
    # Line 5192
    swc1	$f26,8($a5)
.L0d9976ec:
    # Line 5188
    lwc1	$f1,12($a5)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d997704
    nop
    # Line 5192
    swc1	$f26,12($a5)
.L0d997704:
    # Line 5147
    beq	$s1,$s5,.L0d99720c
    # Line 5426
    ld	$ra,272($sp)
.L0d99770c:
    # Line 5147
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a5,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d997728
    nop
    # Line 5150
    swc1	$f4,0($sp)
.L0d997728:
    # Line 5147
    lwc1	$f3,4($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f3
    bc1f .L0d997740
    nop
    # Line 5150
    swc1	$f4,4($a5)
.L0d997740:
    # Line 5147
    lwc1	$f5,8($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997758
    nop
    # Line 5150
    swc1	$f4,8($a5)
.L0d997758:
    # Line 5147
    lwc1	$f6,12($a5)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f6
    bc1f	.L0d997774
    # Line 5155
    move	$t9,$s3
    # Line 5150
    swc1	$f4,12($a5)
    # Line 5155
    move	$t9,$s3
.L0d997774:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    beq	$s1,$s7,.L0d997798
    # Line 5167
    ld	$t0,320($sp)
    beq	$s1,$t0,.L0d9975d4
    # Line 5177
    move	$a0,$s4
    b	.L0d9975fc
    # Line 5180
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d997798:
    # Line 5164
    move	$a0,$s4
    # Line 5155
    ld	$t1,320($sp)
    bne	$s1,$t1,.L0d9977cc
    nop
    # Line 5162
    lwc1	$f10,16($s6)
    # Line 5161
    lw	$a0,72($s2)
    # Line 5162
    swc1	$f10,208($sp)
    lwc1	$f9,20($s6)
    swc1	$f9,212($sp)
    lwc1	$f8,24($s6)
    swc1	$f8,216($sp)
    lwc1	$f7,28($s6)
    swc1	$f7,220($sp)
.L0d9977cc:
    # Line 5167
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d997614
    # Line 5185
    mtc1	$s1,$f20
.L0d9977ec:
    # Line 5200
    c.lt.s $f4,$f6
    move	$a0,$s7
    # Line 5215
    la	$s3,sub_0d9a0000
    lui	$s4,0x1
    # Line 5200
    lwc1	$f5,_lit_3f800000
    # Line 5215
    li	$s1,1
    ori	$s4,$s4,0x19e4
    sdc1	$f9,232($sp)
    addu	$s4,$s8,$s4
    # Line 5200
    bc1f .L0d997838
    # Line 5215
    addiu	$s3,$s3,-13808
    move	$a0,$s7
.L0d99781c:
    mul.s	$f5,$f4,$f5
    div.s	$f11,$f6,$f5
    c.lt.s $f4,$f11
    bc1t .L0d99781c
    # Line 5214
    addiu	$a0,$a0,1
    # Line 5215
    blez	$a0,.L0d997a08
    nop
.L0d997838:
    b	.L0d997958
    addiu	$s5,$a0,1
.L0d997840:
    # Line 5239
    lwc1	$f13,212($sp)
    lwc1	$f15,220($sp)
    lwc1	$f14,216($sp)
    swc1	$f15,204($sp)
    # Line 5241
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    # Line 5239
    swc1	$f14,200($sp)
    # Line 5241
    addiu	$a2,$sp,192
    move	$a1,$s4
    # Line 5239
    swc1	$f13,196($sp)
    # Line 5241
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsCopy
    # Line 5239
    swc1	$f12,192($sp)
    # Line 5246
    mtc1	$s1,$f20
.L0d99787c:
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    ldc1	$f21,256($sp)
    div.s	$f21,$f21,$f0
    # Line 5247
    # lw $t9, -17028($gp) # &powf
    # Line 5246
    swc1	$f21,0($sp)
    # Line 5247
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f23,$f30,$f0
    # Line 5248
    # lw $t9, -17028($gp) # &powf
    # Line 5247
    swc1	$f23,4($sp)
    # Line 5248
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f25,$f28,$f0
    # Line 5249
    # lw $t9, -17028($gp) # &powf
    # Line 5248
    swc1	$f25,8($sp)
    # Line 5249
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    ldc1	$f27,264($sp)
    div.s	$f27,$f27,$f0
    addiu	$a5,$sp,0
    # Line 5219
    addiu	$s1,$s1,1
    # Line 5249
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d997908
    nop
    # Line 5253
    swc1	$f26,0($sp)
.L0d997908:
    # Line 5249
    lwc1	$f31,4($a5)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d997920
    nop
    # Line 5253
    swc1	$f26,4($a5)
.L0d997920:
    # Line 5249
    lwc1	$f0,8($a5)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d997938
    nop
    # Line 5253
    swc1	$f26,8($a5)
.L0d997938:
    # Line 5249
    lwc1	$f1,12($a5)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d997950
    nop
    # Line 5253
    swc1	$f26,12($a5)
.L0d997950:
    # Line 5219
    beq	$s1,$s5,.L0d997a08
    nop
.L0d997958:
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a5,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d997974
    nop
    # Line 5222
    swc1	$f4,0($sp)
.L0d997974:
    # Line 5219
    lwc1	$f3,4($a5)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f3
    bc1f	.L0d99798c
    nop
    # Line 5222
    swc1	$f4,4($a5)
.L0d99798c:
    # Line 5219
    lwc1	$f5,8($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9979a4
    nop
    # Line 5222
    swc1	$f4,8($a5)
.L0d9979a4:
    # Line 5219
    lwc1	$f6,12($a5)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f6
    bc1f .L0d9979bc
    nop
    # Line 5222
    swc1	$f4,12($a5)
.L0d9979bc:
    # Line 5226
    swc1	$f24,16($sp)
    swc1	$f24,20($sp)
    # Line 5227
    move	$t9,$s3
    # Line 5226
    swc1	$f24,24($sp)
    # Line 5227
    addiu	$a1,$sp,16
    addiu	$a0,$sp,0
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 5226
    swc1	$f24,28($sp)
    # Line 5227
    bne	$s1,$s7,.L0d997840
    # Line 5239
    lwc1	$f12,208($sp)
    # Line 5232
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s4
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d99787c
    # Line 5246
    mtc1	$s1,$f20
.L0d997a08:
    # Line 5259
    lwc1	$f17,40($s2)
    swc1	$f17,16($sp)
    # Line 5260
    lwc1	$f16,44($s2)
    swc1	$f16,20($sp)
    # Line 5261
    lwc1	$f15,48($s2)
    # Line 5264
    ldc1	$f12,232($sp)
    # Line 5261
    swc1	$f15,24($sp)
    # Line 5262
    lwc1	$f14,52($s2)
    # Line 5264
    # lw $t9, -17032($gp) # &ceilf
    # Line 5262
    swc1	$f14,28($sp)
    # Line 5264
    lwc1	$f13,7712($s0)
    # Line 5219
    la	$s3,sub_0d9a0000
    addiu	$s3,$s3,-13808
    # Line 5264
    jal	ceilf
    div.s	$f12,$f12,$f13
    trunc.w.s	$f18,$f0
    lui	$s4,0x1
    mfc1	$s7,$f18
    ori	$s4,$s4,0x19e4
    li	$s1,1
    addu	$s4,$s8,$s4
    blez	$s7,.L0d997208
    addiu	$s5,$s7,1
    b	.L0d997a8c
    lwc1	$f5,16($sp)
.L0d997a6c:
    # Line 4968
    b	.L0d996db0
    # Line 4964
    addiu	$s5,$a0,1
    nop
    nop
    nop
.L0d997a80:
    # Line 5324
    swc1	$f24,28($sp)
.L0d997a84:
    # Line 5266
    beqz	$t8,.L0d997208
    # Line 5264
    lwc1	$f5,16($sp)
.L0d997a8c:
    lwc1	$f4,7712($s0)
    addiu	$a4,$sp,16
    c.lt.s $f4,$f5
    bc1f .L0d997aa8
    nop
    # Line 5269
    b	.L0d997abc
    swc1	$f4,16($sp)
.L0d997aa8:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d997abc
    nop
    # Line 5271
    swc1	$f6,16($sp)
.L0d997abc:
    # Line 5264
    lwc1	$f5,4($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997ad8
    nop
    # Line 5269
    b	.L0d997aec
    swc1	$f4,4($a4)
.L0d997ad8:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d997aec
    nop
    # Line 5271
    swc1	$f6,4($a4)
.L0d997aec:
    # Line 5264
    lwc1	$f5,8($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997b08
    nop
    # Line 5269
    b	.L0d997b1c
    swc1	$f4,8($a4)
.L0d997b08:
    neg.s	$f6,$f4
    c.lt.s	$f5,$f6
    bc1f	.L0d997b1c
    nop
    # Line 5271
    swc1	$f6,8($a4)
.L0d997b1c:
    # Line 5264
    lwc1	$f5,12($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997b38
    nop
    # Line 5269
    b	.L0d997b4c
    swc1	$f4,12($a4)
.L0d997b38:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d997b4c
    nop
    # Line 5271
    swc1	$f6,12($a4)
.L0d997b4c:
    # Line 5275
    swc1	$f26,0($sp)
    swc1	$f26,4($sp)
    # Line 5277
    move	$t9,$s3
    # Line 5275
    swc1	$f26,8($sp)
    # Line 5277
    addiu	$a1,$sp,16
    addiu	$a0,$sp,0
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 5275
    swc1	$f26,12($sp)
    # Line 5281
    lwc1	$f19,208($sp)
    lwc1	$f21,212($sp)
    lwc1	$f25,220($sp)
    lwc1	$f23,216($sp)
    swc1	$f25,204($sp)
    swc1	$f23,200($sp)
    swc1	$f21,196($sp)
    # Line 5287
    move	$a0,$s4
    # Line 5281
    bne	$s1,$s7,.L0d997bb8
    swc1	$f19,192($sp)
    # Line 5285
    lwc1	$f0,16($s6)
    # Line 5284
    lw	$a0,72($s2)
    # Line 5285
    swc1	$f0,208($sp)
    lwc1	$f31,20($s6)
    swc1	$f31,212($sp)
    lwc1	$f29,24($s6)
    swc1	$f29,216($sp)
    lwc1	$f27,28($s6)
    swc1	$f27,220($sp)
.L0d997bb8:
    # Line 5290
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s4
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    mtc1	$s1,$f20
    cvt.s.w	$f20,$f20
    lwc1	$f6,7712($s0)
    lwc1	$f5,40($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997bfc
    nop
    # Line 5295
    nmsub.s	$f21,$f5,$f6,$f20
    b	.L0d997c1c
    swc1	$f21,16($sp)
.L0d997bfc:
    neg.s	$f23,$f4
    c.lt.s $f5,$f23
    bc1f .L0d997c18
    nop
    # Line 5298
    madd.s	$f25,$f5,$f6,$f20
    b	.L0d997c1c
    swc1	$f25,16($sp)
.L0d997c18:
    # Line 5300
    swc1	$f24,16($sp)
.L0d997c1c:
    lwc1	$f6,7712($s0)
    lwc1	$f5,44($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997c40
    nop
    # Line 5303
    nmsub.s	$f27,$f5,$f6,$f20
    b	.L0d997c60
    swc1	$f27,20($sp)
.L0d997c40:
    neg.s	$f29,$f4
    c.lt.s $f5,$f29
    bc1f .L0d997c5c
    nop
    # Line 5306
    madd.s	$f31,$f5,$f6,$f20
    b	.L0d997c60
    swc1	$f31,20($sp)
.L0d997c5c:
    # Line 5308
    swc1	$f24,20($sp)
.L0d997c60:
    lwc1	$f6,7712($s0)
    lwc1	$f5,48($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    # Line 5266
    addiu	$s1,$s1,1
    # Line 5308
    bc1f .L0d997c88
    # Line 5266
    slt	$t8,$s1,$s5
    # Line 5311
    nmsub.s	$f0,$f5,$f6,$f20
    b	.L0d997ca8
    swc1	$f0,24($sp)
.L0d997c88:
    neg.s	$f1,$f4
    c.lt.s	$f5,$f1
    bc1f	.L0d997ca4
    nop
    # Line 5314
    madd.s	$f2,$f5,$f6,$f20
    b	.L0d997ca8
    swc1	$f2,24($sp)
.L0d997ca4:
    # Line 5316
    swc1	$f24,24($sp)
.L0d997ca8:
    lwc1	$f6,7712($s0)
    lwc1	$f5,52($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997ccc
    nop
    # Line 5319
    nmsub.s	$f3,$f5,$f6,$f20
    b	.L0d997a84
    swc1	$f3,28($sp)
.L0d997ccc:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d997a80
    nop
    # Line 5322
    madd.s	$f8,$f5,$f6,$f20
    b	.L0d997a84
    swc1	$f8,28($sp)
.L0d997ce8:
    # Line 5355
    b	.L0d996fb0
    # Line 5351
    addiu	$s5,$a0,1
.L0d997cf0:
    # Line 5147
    b	.L0d996eb4
    move	$a0,$s7
.L0d997cf8:
    # Line 5039
    swc1	$f26,0($sp)
    swc1	$f26,4($sp)
    swc1	$f26,8($sp)
    swc1	$f26,12($sp)
    # Line 5042
    lwc1	$f13,7712($s0)
    ldc1	$f12,232($sp)
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    div.s	$f12,$f12,$f13
    trunc.w.s	$f14,$f0
    mfc1	$t9,$f14
    blez	$t9,.L0d997208
    sd	$t9,328($sp)
    la	$s3,sub_0d9a0000
    li	$s7,1
    ld	$s5,328($sp)
    lui	$s4,0x1
    move	$s1,$s7
    ori	$s4,$s4,0x19e4
    addiu	$s5,$s5,1
    addiu	$s3,$s3,-13808
    b	.L0d997d5c
    addu	$s4,$s8,$s4
.L0d997d54:
    # Line 5116
    swc1	$f24,28($sp)
.L0d997d58:
    # Line 5044
    beq	$s1,$s5,.L0d997208
.L0d997d5c:
    # Line 5042
    lwc1	$f5,16($sp)
    lwc1	$f4,7712($s0)
    addiu	$a4,$sp,16
    c.lt.s $f4,$f5
    bc1f .L0d997d7c
    nop
    # Line 5047
    b	.L0d997d90
    swc1	$f4,16($sp)
.L0d997d7c:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d997d90
    nop
    # Line 5049
    swc1	$f6,16($sp)
.L0d997d90:
    # Line 5042
    lwc1	$f5,4($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997dac
    nop
    # Line 5047
    b	.L0d997dc0
    swc1	$f4,4($a4)
.L0d997dac:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d997dc0
    nop
    # Line 5049
    swc1	$f6,4($a4)
.L0d997dc0:
    # Line 5042
    lwc1	$f5,8($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997ddc
    nop
    # Line 5047
    b	.L0d997df0
    swc1	$f4,8($a4)
.L0d997ddc:
    neg.s	$f6,$f4
    c.lt.s	$f5,$f6
    bc1f	.L0d997df0
    nop
    # Line 5049
    swc1	$f6,8($a4)
.L0d997df0:
    # Line 5042
    lwc1	$f5,12($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d997e0c
    nop
    # Line 5047
    b	.L0d997e20
    swc1	$f4,12($a4)
.L0d997e0c:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d997e24
    # Line 5054
    move	$t9,$s3
    # Line 5049
    swc1	$f6,12($a4)
.L0d997e20:
    # Line 5054
    move	$t9,$s3
.L0d997e24:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    beq	$s1,$s7,.L0d997fb0
    # Line 5072
    lwc1	$f15,208($sp)
    swc1	$f15,192($sp)
    lwc1	$f16,212($sp)
    lwc1	$f18,220($sp)
    lwc1	$f17,216($sp)
    ld	$t8,328($sp)
    swc1	$f17,200($sp)
    swc1	$f18,204($sp)
    # Line 5078
    move	$a0,$s4
    # Line 5072
    bne	$s1,$t8,.L0d997e84
    swc1	$f16,196($sp)
    # Line 5076
    lwc1	$f25,16($s6)
    # Line 5075
    lw	$a0,72($s2)
    # Line 5076
    swc1	$f25,208($sp)
    lwc1	$f23,20($s6)
    swc1	$f23,212($sp)
    lwc1	$f21,24($s6)
    swc1	$f21,216($sp)
    lwc1	$f19,28($s6)
    swc1	$f19,220($sp)
.L0d997e84:
    # Line 5081
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s4
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    mtc1	$s1,$f20
.L0d997ea0:
    cvt.s.w	$f20,$f20
    lwc1	$f6,7712($s0)
    lwc1	$f5,40($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997ec8
    nop
    # Line 5087
    nmsub.s	$f21,$f5,$f6,$f20
    b	.L0d997ee8
    swc1	$f21,16($sp)
.L0d997ec8:
    neg.s	$f23,$f4
    c.lt.s $f5,$f23
    bc1f .L0d997ee4
    nop
    # Line 5090
    madd.s	$f25,$f5,$f6,$f20
    b	.L0d997ee8
    swc1	$f25,16($sp)
.L0d997ee4:
    # Line 5092
    swc1	$f24,16($sp)
.L0d997ee8:
    lwc1	$f6,7712($s0)
    lwc1	$f5,44($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997f0c
    # Line 5044
    addiu	$s1,$s1,1
    # Line 5095
    nmsub.s	$f27,$f5,$f6,$f20
    b	.L0d997f2c
    swc1	$f27,20($sp)
.L0d997f0c:
    neg.s	$f29,$f4
    c.lt.s $f5,$f29
    bc1f .L0d997f28
    nop
    # Line 5098
    madd.s	$f31,$f5,$f6,$f20
    b	.L0d997f2c
    swc1	$f31,20($sp)
.L0d997f28:
    # Line 5100
    swc1	$f24,20($sp)
.L0d997f2c:
    lwc1	$f6,7712($s0)
    lwc1	$f5,48($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997f50
    nop
    # Line 5103
    nmsub.s	$f0,$f5,$f6,$f20
    b	.L0d997f70
    swc1	$f0,24($sp)
.L0d997f50:
    neg.s	$f1,$f4
    c.lt.s	$f5,$f1
    bc1f	.L0d997f6c
    nop
    # Line 5106
    madd.s	$f2,$f5,$f6,$f20
    b	.L0d997f70
    swc1	$f2,24($sp)
.L0d997f6c:
    # Line 5108
    swc1	$f24,24($sp)
.L0d997f70:
    lwc1	$f6,7712($s0)
    lwc1	$f5,52($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d997f94
    nop
    # Line 5111
    nmsub.s	$f3,$f5,$f6,$f20
    b	.L0d997d58
    swc1	$f3,28($sp)
.L0d997f94:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d997d54
    nop
    # Line 5114
    madd.s	$f8,$f5,$f6,$f20
    b	.L0d997d58
    swc1	$f8,28($sp)
.L0d997fb0:
    # Line 5062
    move	$a0,$s4
    # Line 5054
    ld	$t9,328($sp)
    bne	$s1,$t9,.L0d997fe4
    nop
    # Line 5060
    lwc1	$f12,16($s6)
    # Line 5059
    lw	$a0,72($s2)
    # Line 5060
    swc1	$f12,208($sp)
    lwc1	$f11,20($s6)
    swc1	$f11,212($sp)
    lwc1	$f10,24($s6)
    swc1	$f10,216($sp)
    lwc1	$f9,28($s6)
    swc1	$f9,220($sp)
.L0d997fe4:
    # Line 5065
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d997ea0
    # Line 5081
    mtc1	$s1,$f20
.end RenderFunc_ScaleBias

# Function: RenderFunc_ScaleBiasForSignedTypes
# Declared: Line 5451 (Source lines: 5452-6197)
# Address: 0x0d998010 - 0x0d999a24 (Size: 6676 bytes, Frame: 208)
.ent RenderFunc_ScaleBiasForSignedTypes
RenderFunc_ScaleBiasForSignedTypes:
    # Line 5452
    addiu	$sp,$sp,-592
    # Line 5501
    sd	$zero,288($sp)
    # Line 5452
    sdc1	$f26,256($sp)
    # Line 5454
    mtc1	$zero,$f26
    # Line 5452
    sd	$s0,448($sp)
    # Line 5456
    swc1	$f26,60($sp)
    swc1	$f26,56($sp)
    swc1	$f26,52($sp)
    swc1	$f26,48($sp)
    # Line 5455
    swc1	$f26,44($sp)
    swc1	$f26,40($sp)
    swc1	$f26,36($sp)
    swc1	$f26,32($sp)
    # Line 5452
    sdc1	$f24,248($sp)
    # Line 5454
    swc1	$f26,28($sp)
    swc1	$f26,24($sp)
    # Line 5452
    sd	$s2,456($sp)
    lui	$s2,0x16
    # Line 5454
    swc1	$f26,20($sp)
    # Line 5452
    addiu	$s2,$s2,1408
    sd	$gp,464($sp)
    addu	$gp,$t9,$s2
    # Line 5453
    lwc1	$f24,_lit_3f800000
    # Line 5454
    swc1	$f26,16($sp)
    # Line 5453
    swc1	$f24,12($sp)
    swc1	$f24,8($sp)
    swc1	$f24,4($sp)
    swc1	$f24,0($sp)
    # Line 5487
    lw	$a4,4112($zero)
    # Line 5501
    li	$s2,8
    sd	$s2,272($sp)
    # Line 5500
    lw	$a3,31804($a4)
    # Line 5499
    lw	$a6,31800($a4)
    # Line 5498
    lw	$t1,31796($a4)
    # Line 5497
    lw	$a5,31740($a4)
    # Line 5495
    lw	$t8,31952($a4)
    # Line 5496
    lui	$s0,0x1
    # Line 5495
    lw	$v1,31964($a4)
    lw	$t9,31956($a4)
    # Line 5496
    addu	$s0,$s0,$a4
    lw	$t0,-26968($s0)
    lw	$t3,-26972($s0)
    lw	$t2,-26976($s0)
    lw	$a7,-26980($s0)
    # Line 5495
    lw	$a2,31940($a4)
    addiu	$v0,$sp,64
    sw	$a2,64($sp)
    sw	$t9,16($v0)
    sw	$v1,24($v0)
    # Line 5501
    addiu	$v1,$s0,-29720
    sd	$v1,280($sp)
    # Line 5495
    sw	$t8,12($v0)
    lw	$at,31960($a4)
    sw	$at,20($v0)
    lw	$at,31944($a4)
    lw	$a2,31948($a4)
    sw	$a2,8($v0)
    # Line 5452
    move	$s2,$a0
    # Line 5501
    addiu	$t8,$sp,96
    # Line 5495
    sw	$at,4($v0)
    sd	$t3,440($sp)
    sd	$t2,432($sp)
    sd	$t1,424($sp)
    sd	$t0,368($sp)
    sd	$a7,360($sp)
    sd	$a6,352($sp)
    sd	$a3,344($sp)
    # Line 5501
    ld	$a2,-29680($s0)
    ld	$a0,-29688($s0)
    ld	$v1,-29696($s0)
    ld	$v0,-29704($s0)
    sd	$v0,16($t8)
    sd	$v1,24($t8)
    sd	$a0,32($t8)
    sd	$a2,40($t8)
    ld	$at,-29664($s0)
    ld	$t9,-29672($s0)
    sd	$t9,48($t8)
    ld	$t9,-29720($s0)
    sd	$at,56($t8)
    ld	$at,-29712($s0)
    sd	$at,8($t8)
    sd	$t9,96($sp)
    # Line 5503
    addiu	$a3,$sp,160
    # Line 5502
    lw	$a0,-29724($s0)
    sd	$s8,392($sp)
    sd	$s7,568($sp)
    sd	$a0,376($sp)
    # Line 5503
    lw	$v0,-29460($s0)
    lw	$t9,-29432($s0)
    lw	$t8,-29436($s0)
    lw	$t3,-29440($s0)
    lw	$t2,-29444($s0)
    lw	$t1,-29448($s0)
    lw	$a2,-29452($s0)
    lw	$v1,-29456($s0)
    sw	$v1,4($a3)
    sw	$a2,8($a3)
    sw	$t1,12($a3)
    sw	$t2,16($a3)
    sw	$t3,20($a3)
    sw	$t8,24($a3)
    sw	$t9,28($a3)
    sw	$v0,160($sp)
    # Line 5505
    lw	$a6,-29324($s0)
    lw	$a7,-29328($s0)
    lw	$t0,-29332($s0)
    # Line 5514
    lui	$t3,0x2
    # Line 5504
    lw	$a0,-29464($s0)
    # Line 5514
    nor	$t3,$t3,$zero
    and	$t3,$a5,$t3
    sw	$t3,31740($a4)
    # Line 5515
    lw	$t2,26976($s0)
    ori	$t2,$t2,0x2
    sw	$t2,26976($s0)
    li	$s8,2
    sw	$s8,4120($zero)
    # Line 5518
    lw	$a3,31956($a4)
    lui	$t1,0x4
    or	$a3,$a3,$t1
    # Line 5519
    ori	$a3,$a3,0x4000
    sw	$a3,31956($a4)
    # Line 5520
    lw	$a2,26976($s0)
    ori	$a2,$a2,0x200
    sw	$a2,26976($s0)
    sw	$s8,4120($zero)
    # Line 5524
    lw	$at,26976($s0)
    lui	$s7,0x20
    # Line 5523
    lw	$v0,-26972($s0)
    lui	$v1,0x10
    # Line 5524
    or	$at,$s7,$at
    sw	$at,26976($s0)
    # Line 5523
    or	$v0,$v0,$v1
    sw	$v0,-26972($s0)
    # Line 5524
    sw	$s8,4120($zero)
    # Line 5526
    lwc1	$f15,0($a1)
    swc1	$f15,192($sp)
    lwc1	$f14,4($a1)
    swc1	$f14,196($sp)
    lwc1	$f13,8($a1)
    swc1	$f13,200($sp)
    lwc1	$f12,12($a1)
    # Line 5528
    swc1	$f26,212($sp)
    # Line 5527
    swc1	$f26,208($sp)
    # Line 5526
    swc1	$f12,204($sp)
    # Line 5528
    lwc1	$f12,8($a1)
    lwc1	$f11,0($a1)
    # Line 5529
    c.lt.s $f11,$f12
    # Line 5528
    c.lt.s $f12,$f11
    # Line 5529
    mov.s	$f10,$f11
    movf.s	$f11,$f12,$fcc2
    movf.s	$f10,$f12,$fcc3
    sub.s	$f10,$f10,$f11
    swc1	$f10,216($sp)
    lwc1	$f10,12($a1)
    lwc1	$f9,4($a1)
    # Line 5530
    c.lt.s	$f9,$f10
    # Line 5529
    c.lt.s $f10,$f9
    # Line 5530
    mov.s	$f8,$f9
    movf.s	$f9,$f10,$fcc0
    movf.s	$f8,$f10,$fcc1
    sub.s	$f8,$f8,$f9
    swc1	$f8,220($sp)
    # Line 5546
    lwc1	$f7,24($s2)
    abs.s	$f7,$f7
    swc1	$f7,0($sp)
    # Line 5547
    lwc1	$f8,28($s2)
    abs.s	$f8,$f8
    swc1	$f8,4($sp)
    # Line 5548
    lwc1	$f6,32($s2)
    abs.s	$f6,$f6
    swc1	$f6,8($sp)
    # Line 5549
    lwc1	$f10,36($s2)
    abs.s	$f10,$f10
    swc1	$f10,12($sp)
    # Line 5551
    lwc1	$f3,40($s2)
    swc1	$f3,16($sp)
    # Line 5552
    lwc1	$f2,44($s2)
    swc1	$f2,20($sp)
    # Line 5553
    lwc1	$f1,48($s2)
    swc1	$f1,24($sp)
    # Line 5554
    lwc1	$f0,52($s2)
    addiu	$a3,$sp,16
    mtc1	$zero,$f9
    swc1	$f0,28($sp)
    abs.s	$f17,$f3
    lwc1	$f11,4($a3)
    c.lt.s $f9,$f17
    abs.s	$f11,$f11
    movf.s	$f17,$f9,$fcc7
    lwc1	$f16,8($a3)
    c.lt.s $f17,$f11
    abs.s	$f16,$f16
    movf.s	$f11,$f17,$fcc6
    lwc1	$f9,12($a3)
    c.lt.s $f11,$f16
    abs.s	$f9,$f9
    movf.s	$f16,$f11,$fcc5
    sd	$t0,416($sp)
    sd	$a7,408($sp)
    c.lt.s $f16,$f9
    sd	$a6,400($sp)
    sd	$a0,384($sp)
    movf.s	$f9,$f16,$fcc4
    # Line 5556
    lwc1	$f4,7712($s0)
    lwc1	$f5,40($s2)
    c.eq.s	$f7,$f26
    sd	$a1,336($sp)
    sd	$a5,328($sp)
    bc1t	.L0d998370
    sd	$a4,320($sp)
    # Line 5562
    div.s	$f18,$f5,$f7
    swc1	$f18,32($sp)
    # Line 5563
    mul.s	$f18,$f4,$f18
    b	.L0d998378
    swc1	$f18,48($sp)
.L0d998370:
    # Line 5566
    swc1	$f5,48($sp)
    # Line 5565
    swc1	$f5,32($sp)
.L0d998378:
    # Line 5566
    c.eq.s $f8,$f26
    bc1t .L0d998398
    lwc1	$f5,44($s2)
    # Line 5570
    div.s	$f19,$f5,$f8
    swc1	$f19,36($sp)
    # Line 5571
    mul.s	$f19,$f4,$f19
    b	.L0d9983a0
    swc1	$f19,52($sp)
.L0d998398:
    # Line 5574
    swc1	$f5,52($sp)
    # Line 5573
    swc1	$f5,36($sp)
.L0d9983a0:
    # Line 5574
    c.eq.s $f6,$f26
    bc1t .L0d9983c0
    lwc1	$f5,48($s2)
    # Line 5578
    div.s	$f21,$f5,$f6
    swc1	$f21,40($sp)
    # Line 5579
    mul.s	$f21,$f4,$f21
    b	.L0d9983c8
    swc1	$f21,56($sp)
.L0d9983c0:
    # Line 5582
    swc1	$f5,56($sp)
    # Line 5581
    swc1	$f5,40($sp)
.L0d9983c8:
    # Line 5582
    lwc1	$f5,52($s2)
    sdc1	$f20,504($sp)
    sd	$s1,584($sp)
    sd	$s5,576($sp)
    sd	$ra,560($sp)
    c.eq.s $f10,$f26
    sd	$s4,552($sp)
    sd	$s6,544($sp)
    bc1t .L0d998404
    sd	$s3,536($sp)
    # Line 5587
    div.s	$f23,$f5,$f10
    swc1	$f23,44($sp)
    # Line 5588
    mul.s	$f23,$f4,$f23
    b	.L0d99840c
    swc1	$f23,60($sp)
.L0d998404:
    # Line 5591
    swc1	$f5,60($sp)
    # Line 5590
    swc1	$f5,44($sp)
.L0d99840c:
    # Line 5591
    mtc1	$zero,$f10
    mtc1	$zero,$f8
    addiu	$a3,$sp,48
    addiu	$a0,$sp,32
    # Line 5596
    lwc1	$f31,48($sp)
    # Line 5591
    lwc1	$f29,32($sp)
    # Line 5596
    abs.s	$f31,$f31
    lwc1	$f12,4($a3)
    # Line 5591
    abs.s	$f29,$f29
    lwc1	$f11,4($a0)
    # Line 5596
    c.lt.s $f8,$f31
    # Line 5591
    c.lt.s $f10,$f29
    # Line 5596
    abs.s	$f12,$f12
    movf.s	$f31,$f8,$fcc3
    lwc1	$f27,8($a3)
    # Line 5591
    abs.s	$f11,$f11
    movf.s	$f29,$f10,$fcc2
    lwc1	$f25,8($a0)
    # Line 5596
    c.lt.s $f31,$f12
    # Line 5591
    c.lt.s	$f29,$f11
    # Line 5596
    abs.s	$f27,$f27
    movf.s	$f12,$f31,$fcc1
    # Line 5591
    abs.s	$f25,$f25
    # Line 5596
    lwc1	$f8,12($a3)
    movf.s	$f11,$f29,$fcc0
    # Line 5591
    lwc1	$f10,12($a0)
    # Line 5596
    c.lt.s $f12,$f27
    # Line 5591
    c.lt.s $f11,$f25
    # Line 5596
    abs.s	$f8,$f8
    movf.s	$f27,$f12,$fcc7
    # Line 5591
    abs.s	$f10,$f10
    movf.s	$f25,$f11,$fcc6
    # Line 5596
    c.lt.s $f27,$f8
    sdc1	$f30,528($sp)
    # Line 5591
    c.lt.s $f25,$f10
    sdc1	$f28,520($sp)
    movf.s	$f8,$f27,$fcc5
    sdc1	$f22,512($sp)
    movf.s	$f10,$f25,$fcc4
    # Line 5609
    lwc1	$f7,36($s2)
    abs.s	$f7,$f7
    div.s	$f7,$f7,$f4
    # Line 5606
    lwc1	$f5,24($s2)
    abs.s	$f5,$f5
    div.s	$f5,$f5,$f4
    # Line 5608
    lwc1	$f28,32($s2)
    abs.s	$f28,$f28
    div.s	$f28,$f28,$f4
    # Line 5619
    ldc1	$f22,_lit8_3ff0000000000000
    # Line 5607
    lwc1	$f30,28($s2)
    # Line 5619
    cvt.d.s	$f31,$f5
    c.le.d $f31,$f22
    # Line 5607
    abs.s	$f30,$f30
    div.s	$f30,$f30,$f4
    # Line 5619
    bc1f .L0d9984f0
    swc1	$f5,0($sp)
    # Line 5620
    swc1	$f24,0($sp)
.L0d9984f0:
    # Line 5621
    cvt.d.s	$f11,$f30
    c.le.d $f11,$f22
    bc1f .L0d998504
    swc1	$f30,4($sp)
    # Line 5622
    swc1	$f24,4($sp)
.L0d998504:
    # Line 5623
    cvt.d.s	$f12,$f28
    c.le.d $f12,$f22
    bc1f .L0d998518
    swc1	$f28,8($sp)
    # Line 5624
    swc1	$f24,8($sp)
.L0d998518:
    # Line 5625
    cvt.d.s	$f13,$f7
    c.le.d $f13,$f22
    bc1f .L0d99852c
    swc1	$f7,12($sp)
    # Line 5626
    swc1	$f24,12($sp)
.L0d99852c:
    mtc1	$zero,$f6
    addiu	$a3,$sp,0
    lwc1	$f16,0($sp)
    c.lt.s $f6,$f16
    lwc1	$f15,4($sp)
    movf.s	$f16,$f6,$fcc3
    c.lt.s $f16,$f15
    lwc1	$f14,8($sp)
    movf.s	$f15,$f16,$fcc2
    c.lt.s $f15,$f14
    lwc1	$f11,12($sp)
    movf.s	$f14,$f15,$fcc1
    c.lt.s	$f14,$f11
    movf.s	$f11,$f14,$fcc0
    mov.s	$f6,$f11
    # Line 5647
    cvt.d.s	$f4,$f11
    c.lt.d $f22,$f4
    li	$a0,1
    movf	$a0,$zero,$fcc4
    beqz	$a0,.L0d998624
    nop
    lwc1	$f17,7712($s0)
    c.le.s $f8,$f17
    bc1f .L0d998624
    nop
    # Line 5654
    swc1	$f26,28($sp)
    swc1	$f26,24($sp)
    swc1	$f26,20($sp)
    swc1	$f26,16($sp)
    # Line 5656
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f11
    sdc1	$f7,232($sp)
    ldc1	$f26,232($sp)
    li	$a0,1
    bc1f .L0d999164
    sdc1	$f5,264($sp)
    ldc1	$f26,232($sp)
    lwc1	$f5,_lit_3f800000
    li	$a0,1
    nop
    nop
.L0d9985d0:
    # Line 5660
    mul.s	$f5,$f4,$f5
    div.s	$f18,$f6,$f5
    c.lt.s $f4,$f18
    bc1t .L0d9985d0
    # Line 5659
    addiu	$a0,$a0,1
    # Line 5660
    blez	$a0,.L0d9996b8
    # Line 5665
    la	$s4,sub_0d9a0000
    # Line 5660
    move	$s3,$zero
.L0d9985f0:
    li	$s1,1
    ld	$s5,320($sp)
    addiu	$s6,$a0,1
    la	$s4,sub_0d9a0000
    lui	$t8,0x1
    sd	$s6,488($sp)
    ori	$s6,$t8,0x1a20
    ori	$t8,$t8,0x19e4
    addiu	$s4,$s4,-13808
    addu	$s6,$s5,$s6
    sd	$a0,472($sp)
    b	.L0d998988
    addu	$s5,$s5,$t8
.L0d998624:
    # Line 5726
    c.le.d	$f4,$f22
    bc1f	.L0d998728
    nop
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f9
    # Line 5846
    la	$s4,sub_0d9a0000
    li	$s1,1
    lui	$t8,0x1
    ld	$s5,320($sp)
    move	$s3,$zero
    # Line 5726
    bc1f .L0d998728
    # Line 5846
    addiu	$s4,$s4,-13808
    # Line 5726
    c.lt.s $f4,$f10
    bc1t .L0d9996cc
    sdc1	$f9,240($sp)
    # Line 5829
    swc1	$f26,16($sp)
    swc1	$f26,20($sp)
    swc1	$f26,24($sp)
    swc1	$f26,28($sp)
    # Line 5831
    lwc1	$f25,24($s2)
    abs.s	$f25,$f25
    swc1	$f25,0($sp)
    # Line 5832
    lwc1	$f23,28($s2)
    abs.s	$f23,$f23
    swc1	$f23,4($sp)
    # Line 5833
    lwc1	$f21,32($s2)
    abs.s	$f21,$f21
    swc1	$f21,8($sp)
    # Line 5834
    lwc1	$f19,36($s2)
    abs.s	$f19,$f19
    addiu	$a3,$sp,0
    swc1	$f19,12($sp)
    lwc1	$f31,0($sp)
    c.lt.s $f6,$f31
    lwc1	$f29,4($sp)
    movf.s	$f31,$f6,$fcc6
    c.lt.s $f31,$f29
    lwc1	$f27,8($sp)
    movf.s	$f29,$f31,$fcc5
    c.lt.s $f29,$f27
    lwc1	$f5,12($sp)
    movf.s	$f27,$f29,$fcc4
    c.lt.s $f27,$f5
    movf.s	$f5,$f27,$fcc3
    mov.s	$f6,$f5
    # Line 5841
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    li	$a0,1
    bc1f .L0d9996a8
    lwc1	$f5,_lit_3f800000
    li	$a0,1
.L0d9986f0:
    # Line 5846
    mul.s	$f5,$f4,$f5
    div.s	$f0,$f6,$f5
    c.lt.s	$f4,$f0
    bc1t	.L0d9986f0
    # Line 5845
    addiu	$a0,$a0,1
    # Line 5846
    blez	$a0,.L0d9999f4
    addiu	$s6,$a0,1
.L0d99870c:
    sd	$s6,488($sp)
    ori	$s6,$t8,0x1a20
    ori	$t8,$t8,0x19e4
    addu	$s6,$s5,$s6
    sd	$a0,304($sp)
    b	.L0d998e54
    addu	$s5,$s5,$t8
.L0d998728:
    # Line 5907
    beqz	$a0,.L0d998a5c
    # Line 6140
    la	$s4,sub_0d9a0000
    # Line 5907
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f8
    bc1f .L0d998a58
    sdc1	$f5,264($sp)
    c.lt.s $f4,$f10
    bc1t .L0d99916c
    # Line 6071
    ld	$s5,320($sp)
    # Line 6054
    swc1	$f26,16($sp)
    swc1	$f26,20($sp)
    swc1	$f26,24($sp)
    swc1	$f26,28($sp)
    # Line 6056
    lwc1	$f4,24($s2)
    abs.s	$f4,$f4
    swc1	$f4,0($sp)
    # Line 6057
    lwc1	$f3,28($s2)
    abs.s	$f3,$f3
    swc1	$f3,4($sp)
    # Line 6058
    lwc1	$f2,32($s2)
    abs.s	$f2,$f2
    swc1	$f2,8($sp)
    # Line 6059
    lwc1	$f1,36($s2)
    # Line 6071
    la	$s4,sub_0d9a0000
    # Line 6059
    addiu	$a3,$sp,0
    abs.s	$f1,$f1
    # Line 6071
    move	$s3,$zero
    li	$s1,1
    # Line 6059
    swc1	$f1,12($sp)
    lwc1	$f8,0($sp)
    c.lt.s $f6,$f8
    lwc1	$f7,4($sp)
    movf.s	$f8,$f6,$fcc6
    c.lt.s $f8,$f7
    lwc1	$f6,8($sp)
    movf.s	$f7,$f8,$fcc5
    c.lt.s $f7,$f6
    lwc1	$f5,12($sp)
    movf.s	$f6,$f7,$fcc4
    c.lt.s $f6,$f5
    movf.s	$f5,$f6,$fcc3
    mov.s	$f6,$f5
    # Line 6061
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    li	$a0,1
    bc1f .L0d9996b0
    lwc1	$f5,_lit_3f800000
    li	$a0,1
.L0d9987e8:
    # Line 6071
    mul.s	$f5,$f4,$f5
    div.s	$f9,$f6,$f5
    c.lt.s	$f4,$f9
    bc1t	.L0d9987e8
    # Line 6070
    addiu	$a0,$a0,1
    # Line 6071
    blez	$a0,.L0d999a04
    lui	$t8,0x1
.L0d998804:
    addiu	$s4,$s4,-13808
    addiu	$s6,$a0,1
    sd	$s6,488($sp)
    ori	$s6,$t8,0x1a20
    ori	$t8,$t8,0x19e4
    addu	$s6,$s5,$s6
    sd	$a0,296($sp)
    b	.L0d999094
    addu	$s5,$s5,$t8
    nop
    nop
.L0d998830:
    # Line 5692
    swc1	$f10,192($sp)
    lwc1	$f11,212($sp)
    lwc1	$f13,220($sp)
    lwc1	$f12,216($sp)
    # Line 5694
    move	$a1,$s3
    # Line 5695
    xor	$t9,$s3,$s5
    ld	$t8,472($sp)
    move	$s3,$s5
    sltiu	$t9,$t9,1
    # Line 5692
    swc1	$f12,200($sp)
    # Line 5695
    movn	$s3,$s6,$t9
    # Line 5692
    swc1	$f13,204($sp)
    # Line 5695
    bne	$s1,$t8,.L0d998884
    # Line 5692
    swc1	$f11,196($sp)
    # Line 5703
    lw	$ra,26976($s0)
    # Line 5702
    lw	$at,-26972($s0)
    # Line 5703
    or	$ra,$s7,$ra
    sw	$ra,26976($s0)
    # Line 5702
    ori	$at,$at,0x1
    sw	$at,-26972($s0)
    # Line 5703
    sw	$s8,4120($zero)
.L0d998884:
    # Line 5706
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s3
    move	$a4,$zero
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
.L0d99889c:
    # Line 5713
    mtc1	$s1,$f20
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    nop
    nop
    nop
    ldc1	$f21,264($sp)
    div.s	$f21,$f21,$f0
    # Line 5714
    # lw $t9, -17028($gp) # &powf
    # Line 5713
    swc1	$f21,0($sp)
    # Line 5714
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f23,$f30,$f0
    # Line 5715
    # lw $t9, -17028($gp) # &powf
    # Line 5714
    swc1	$f23,4($sp)
    # Line 5715
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f25,$f28,$f0
    # Line 5716
    # lw $t9, -17028($gp) # &powf
    # Line 5715
    swc1	$f25,8($sp)
    # Line 5716
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f27,$f26,$f0
    # Line 5665
    ld	$v0,488($sp)
    # Line 5716
    addiu	$a3,$sp,0
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d998934
    nop
    # Line 5720
    swc1	$f24,0($sp)
.L0d998934:
    # Line 5716
    lwc1	$f31,4($a3)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d99894c
    nop
    # Line 5720
    swc1	$f24,4($a3)
.L0d99894c:
    # Line 5716
    lwc1	$f0,8($a3)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d998964
    nop
    # Line 5720
    swc1	$f24,8($a3)
.L0d998964:
    # Line 5716
    lwc1	$f1,12($a3)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d99897c
    nop
    # Line 5720
    swc1	$f24,12($a3)
.L0d99897c:
    # Line 5665
    addiu	$s1,$s1,1
    beq	$s1,$v0,.L0d998a68
    # Line 6154
    lwc1	$f7,_lit_40000000
.L0d998988:
    # Line 5665
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a3,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d9989a4
    nop
    # Line 5668
    swc1	$f4,0($sp)
.L0d9989a4:
    # Line 5665
    lwc1	$f3,4($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f3
    bc1f .L0d9989bc
    nop
    # Line 5668
    swc1	$f4,4($a3)
.L0d9989bc:
    # Line 5665
    lwc1	$f5,8($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9989d4
    nop
    # Line 5668
    swc1	$f4,8($a3)
.L0d9989d4:
    # Line 5665
    lwc1	$f6,12($a3)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f6
    bc1f	.L0d9989f0
    # Line 5674
    move	$t9,$s4
    # Line 5668
    swc1	$f4,12($a3)
    # Line 5674
    move	$t9,$s4
.L0d9989f0:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    li	$a0,1
    # Line 5692
    lwc1	$f10,208($sp)
    # Line 5674
    bne	$s1,$a0,.L0d998830
    ld	$v1,472($sp)
    bne	$s1,$v1,.L0d998a34
    # Line 5685
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5680
    lw	$a0,26976($s0)
    # Line 5679
    lw	$a1,-26972($s0)
    # Line 5680
    or	$a0,$s7,$a0
    sw	$a0,26976($s0)
    # Line 5679
    ori	$a1,$a1,0x1
    sw	$a1,-26972($s0)
    # Line 5680
    sw	$s8,4120($zero)
    # Line 5685
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d998a34:
    # Line 5684
    move	$s3,$s5
    # Line 5685
    move	$a0,$s5
    move	$a4,$zero
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d99889c
    nop
.L0d998a58:
    # Line 6140
    la	$s4,sub_0d9a0000
.L0d998a5c:
    lw	$s3,68($s2)
    addiu	$s4,$s4,-13808
.L0d998a64:
    # Line 6154
    lwc1	$f7,_lit_40000000
.L0d998a68:
    # Line 6155
    lwc1	$f8,_lit_39800000
    # Line 6147
    lw	$at,26976($s0)
    # Line 6146
    lw	$v0,-26972($s0)
    li	$v1,-2
    # Line 6147
    or	$at,$s7,$at
    sw	$at,26976($s0)
    # Line 6146
    and	$v0,$v0,$v1
    sw	$v0,-26972($s0)
    # Line 6147
    sw	$s8,4120($zero)
    # Line 6151
    lw	$t8,26976($s0)
    # Line 6150
    lui	$ra,0x10
    lw	$t9,-26972($s0)
    nor	$ra,$ra,$zero
    # Line 6151
    or	$t8,$s7,$t8
    sw	$t8,26976($s0)
    # Line 6150
    and	$t9,$t9,$ra
    sw	$t9,-26972($s0)
    # Line 6151
    sw	$s8,4120($zero)
    # Line 6155
    swc1	$f8,16($sp)
    swc1	$f8,20($sp)
    swc1	$f8,24($sp)
    swc1	$f8,28($sp)
    # Line 6154
    swc1	$f7,0($sp)
    swc1	$f7,4($sp)
    # Line 6156
    move	$t9,$s4
    addiu	$a1,$sp,16
    # Line 6154
    swc1	$f7,8($sp)
    # Line 6156
    addiu	$a0,$sp,0
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 6154
    swc1	$f7,12($sp)
    ld	$s1,584($sp)
    ld	$s5,576($sp)
    ld	$s7,568($sp)
    ld	$s4,552($sp)
    ld	$s6,544($sp)
    ldc1	$f30,528($sp)
    # Line 6156
    lbu	$a0,60($s2)
    ldc1	$f28,520($sp)
    ldc1	$f22,512($sp)
    lui	$a6,0x1
    beqz	$a0,.L0d998b24
    ldc1	$f20,504($sp)
    # Line 6158
    lw	$a1,-29432($s0)
    lui	$a2,0xffff
    and	$a1,$a1,$a2
    ori	$a1,$a1,0x1000
    sw	$a1,-29432($s0)
.L0d998b24:
    # Line 6161
    sw	$s8,-29464($s0)
    # Line 6162
    lw	$a4,26976($s0)
    # Line 6166
    ld	$a3,336($sp)
    # Line 6162
    or	$a4,$a6,$a4
    sw	$a4,26976($s0)
    sw	$s8,4120($zero)
    # Line 6166
    lwc1	$f12,16($a3)
    swc1	$f12,208($sp)
    lwc1	$f11,20($a3)
    swc1	$f11,212($sp)
    lwc1	$f10,24($a3)
    # Line 6169
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 6166
    swc1	$f10,216($sp)
    lwc1	$f9,28($a3)
    # Line 6169
    addiu	$a2,$sp,192
    move	$a1,$s3
    li	$a4,1
    # Line 6166
    swc1	$f9,220($sp)
    # Line 6169
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a0,72($s2)
    ld	$ra,560($sp)
    ld	$s3,536($sp)
    # Line 6179
    ld	$a5,328($sp)
    # Line 6180
    ld	$a7,424($sp)
    # Line 6181
    ld	$t0,352($sp)
    # Line 6182
    ld	$t1,344($sp)
    # Line 6178
    ld	$t9,360($sp)
    ld	$t8,432($sp)
    ld	$t3,440($sp)
    ld	$t2,368($sp)
    # Line 6177
    lw	$a3,64($sp)
    ld	$a6,320($sp)
    addiu	$at,$sp,64
    lw	$a2,4($at)
    lw	$a1,8($at)
    lw	$a0,12($at)
    lw	$v1,16($at)
    lw	$v0,20($at)
    lw	$at,24($at)
    sw	$at,31964($a6)
    sw	$v0,31960($a6)
    sw	$v1,31956($a6)
    sw	$a0,31952($a6)
    sw	$a1,31948($a6)
    sw	$a2,31944($a6)
    sw	$a3,31940($a6)
    # Line 6178
    sw	$t2,-26968($s0)
    sw	$t3,-26972($s0)
    sw	$t8,-26976($s0)
    sw	$t9,-26980($s0)
    # Line 6182
    sw	$t1,31804($a6)
    # Line 6181
    sw	$t0,31800($a6)
    # Line 6180
    sw	$a7,31796($a6)
    # Line 6183
    addiu	$a0,$sp,96
    # Line 6179
    sw	$a5,31740($a6)
    # Line 6183
    ld	$t8,56($a0)
    sd	$t8,-29664($s0)
    ld	$t3,48($a0)
    sd	$t3,-29672($s0)
    ld	$t2,40($a0)
    sd	$t2,-29680($s0)
    ld	$t1,32($a0)
    sd	$t1,-29688($s0)
    ld	$t0,24($a0)
    sd	$t0,-29696($s0)
    ld	$a7,16($a0)
    sd	$a7,-29704($s0)
    ld	$a6,8($a0)
    sd	$a6,-29712($s0)
    ld	$a5,96($sp)
    sd	$a5,-29720($s0)
    # Line 6184
    ld	$t9,376($sp)
    # Line 6185
    addiu	$a0,$sp,160
    # Line 6184
    sw	$t9,-29724($s0)
    # Line 6185
    lw	$t0,28($a0)
    sw	$t0,-29432($s0)
    lw	$a7,24($a0)
    sw	$a7,-29436($s0)
    lw	$a6,20($a0)
    sw	$a6,-29440($s0)
    lw	$a5,16($a0)
    sw	$a5,-29444($s0)
    lw	$a2,12($a0)
    sw	$a2,-29448($s0)
    lw	$v1,8($a0)
    sw	$v1,-29452($s0)
    lw	$v0,4($a0)
    sw	$v0,-29456($s0)
    lw	$at,160($sp)
    sw	$at,-29460($s0)
    # Line 6197
    ld	$gp,464($sp)
    ldc1	$f24,248($sp)
    ldc1	$f26,256($sp)
    # Line 6187
    ld	$t3,400($sp)
    ld	$t8,416($sp)
    # Line 6186
    ld	$t9,384($sp)
    # Line 6187
    ld	$s2,408($sp)
    sw	$s2,-29328($s0)
    # Line 6197
    ld	$s2,456($sp)
    # Line 6186
    sw	$t9,-29464($s0)
    # Line 6187
    sw	$t8,-29332($s0)
    # Line 6189
    lw	$t1,26976($s0)
    lui	$t2,0x23
    # Line 6187
    sw	$t3,-29324($s0)
    # Line 6189
    ori	$t2,$t2,0x8203
    or	$t1,$t1,$t2
    sw	$t1,26976($s0)
    # Line 6197
    ld	$s0,448($sp)
    li	$v0,1
    # Line 6189
    sw	$s8,4120($zero)
    # Line 6197
    ld	$s8,392($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d998cec:
    # Line 5874
    swc1	$f13,192($sp)
    lwc1	$f14,212($sp)
    lwc1	$f16,220($sp)
    lwc1	$f15,216($sp)
    # Line 5875
    move	$a1,$s3
    # Line 5876
    xor	$at,$s3,$s5
    ld	$ra,304($sp)
    move	$s3,$s5
    sltiu	$at,$at,1
    # Line 5874
    swc1	$f15,200($sp)
    # Line 5876
    movn	$s3,$s6,$at
    # Line 5874
    swc1	$f16,204($sp)
    # Line 5876
    bne	$s1,$ra,.L0d998d40
    # Line 5874
    swc1	$f14,196($sp)
    # Line 5884
    lw	$v0,26976($s0)
    # Line 5883
    lw	$v1,-26972($s0)
    # Line 5884
    or	$v0,$s7,$v0
    sw	$v0,26976($s0)
    # Line 5883
    ori	$v1,$v1,0x1
    sw	$v1,-26972($s0)
    # Line 5884
    sw	$s8,4120($zero)
.L0d998d40:
    # Line 5887
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s3
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    # Line 5892
    mtc1	$s1,$f20
.L0d998d5c:
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    lwc1	$f21,24($s2)
    abs.s	$f21,$f21
    div.s	$f21,$f21,$f0
    # Line 5893
    # lw $t9, -17028($gp) # &powf
    # Line 5892
    swc1	$f21,0($sp)
    # Line 5893
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f23,28($s2)
    abs.s	$f23,$f23
    div.s	$f23,$f23,$f0
    # Line 5894
    # lw $t9, -17028($gp) # &powf
    # Line 5893
    swc1	$f23,4($sp)
    # Line 5894
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f25,32($s2)
    abs.s	$f25,$f25
    div.s	$f25,$f25,$f0
    # Line 5895
    # lw $t9, -17028($gp) # &powf
    # Line 5894
    swc1	$f25,8($sp)
    # Line 5895
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f27,36($s2)
    abs.s	$f27,$f27
    div.s	$f27,$f27,$f0
    # Line 5850
    ld	$a0,488($sp)
    # Line 5895
    addiu	$a3,$sp,0
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d998e00
    nop
    # Line 5899
    swc1	$f24,0($sp)
.L0d998e00:
    # Line 5895
    lwc1	$f31,4($a3)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d998e18
    nop
    # Line 5899
    swc1	$f24,4($a3)
.L0d998e18:
    # Line 5895
    lwc1	$f0,8($a3)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d998e30
    nop
    # Line 5899
    swc1	$f24,8($a3)
.L0d998e30:
    # Line 5895
    lwc1	$f1,12($a3)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d998e48
    nop
    # Line 5899
    swc1	$f24,12($a3)
.L0d998e48:
    # Line 5850
    addiu	$s1,$s1,1
    beq	$s1,$a0,.L0d998a68
    # Line 6154
    lwc1	$f7,_lit_40000000
.L0d998e54:
    # Line 5850
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a3,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d998e70
    nop
    # Line 5853
    swc1	$f4,0($sp)
.L0d998e70:
    # Line 5850
    lwc1	$f3,4($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f3
    bc1f .L0d998e88
    nop
    # Line 5853
    swc1	$f4,4($a3)
.L0d998e88:
    # Line 5850
    lwc1	$f5,8($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d998ea0
    nop
    # Line 5853
    swc1	$f4,8($a3)
.L0d998ea0:
    # Line 5850
    lwc1	$f6,12($a3)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f6
    bc1f	.L0d998ebc
    # Line 5858
    move	$t9,$s4
    # Line 5853
    swc1	$f4,12($a3)
    # Line 5858
    move	$t9,$s4
.L0d998ebc:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    li	$a1,1
    # Line 5874
    lwc1	$f13,208($sp)
    # Line 5858
    bne	$s1,$a1,.L0d998cec
    ld	$a2,304($sp)
    bne	$s1,$a2,.L0d998f00
    # Line 5868
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5864
    lw	$a3,26976($s0)
    # Line 5863
    lw	$a4,-26972($s0)
    # Line 5864
    or	$a3,$s7,$a3
    sw	$a3,26976($s0)
    # Line 5863
    ori	$a4,$a4,0x1
    sw	$a4,-26972($s0)
    # Line 5864
    sw	$s8,4120($zero)
    # Line 5868
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d998f00:
    # Line 5867
    move	$s3,$s5
    # Line 5868
    move	$a0,$s5
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d998d5c
    # Line 5892
    mtc1	$s1,$f20
.L0d998f24:
    # Line 6099
    swc1	$f7,192($sp)
    lwc1	$f8,212($sp)
    lwc1	$f10,220($sp)
    lwc1	$f9,216($sp)
    # Line 6100
    move	$a1,$s3
    # Line 6101
    xor	$a6,$s3,$s5
    ld	$a5,296($sp)
    move	$s3,$s5
    sltiu	$a6,$a6,1
    # Line 6099
    swc1	$f9,200($sp)
    # Line 6101
    movn	$s3,$s6,$a6
    # Line 6099
    swc1	$f10,204($sp)
    # Line 6101
    bne	$s1,$a5,.L0d998f78
    # Line 6099
    swc1	$f8,196($sp)
    # Line 6109
    lw	$a7,26976($s0)
    # Line 6108
    lw	$t0,-26972($s0)
    # Line 6109
    or	$a7,$s7,$a7
    sw	$a7,26976($s0)
    # Line 6108
    ori	$t0,$t0,0x1
    sw	$t0,-26972($s0)
    # Line 6109
    sw	$s8,4120($zero)
.L0d998f78:
    # Line 6112
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s3
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    # Line 6117
    mtc1	$s1,$f20
.L0d998f94:
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    nop
    nop
    lwc1	$f21,24($s2)
    abs.s	$f21,$f21
    div.s	$f21,$f21,$f0
    # Line 6118
    # lw $t9, -17028($gp) # &powf
    # Line 6117
    swc1	$f21,0($sp)
    # Line 6118
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f23,28($s2)
    abs.s	$f23,$f23
    div.s	$f23,$f23,$f0
    # Line 6119
    # lw $t9, -17028($gp) # &powf
    # Line 6118
    swc1	$f23,4($sp)
    # Line 6119
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f25,32($s2)
    abs.s	$f25,$f25
    div.s	$f25,$f25,$f0
    # Line 6120
    # lw $t9, -17028($gp) # &powf
    # Line 6119
    swc1	$f25,8($sp)
    # Line 6120
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    lwc1	$f27,36($s2)
    abs.s	$f27,$f27
    div.s	$f27,$f27,$f0
    # Line 6075
    ld	$t1,488($sp)
    # Line 6120
    addiu	$a3,$sp,0
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d999040
    nop
    # Line 6124
    swc1	$f24,0($sp)
.L0d999040:
    # Line 6120
    lwc1	$f31,4($a3)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    bc1f .L0d999058
    nop
    # Line 6124
    swc1	$f24,4($a3)
.L0d999058:
    # Line 6120
    lwc1	$f0,8($a3)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d999070
    nop
    # Line 6124
    swc1	$f24,8($a3)
.L0d999070:
    # Line 6120
    lwc1	$f1,12($a3)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d999088
    nop
    # Line 6124
    swc1	$f24,12($a3)
.L0d999088:
    # Line 6075
    addiu	$s1,$s1,1
    beq	$s1,$t1,.L0d998a68
    # Line 6154
    lwc1	$f7,_lit_40000000
.L0d999094:
    # Line 6075
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a3,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d9990b0
    nop
    # Line 6078
    swc1	$f4,0($sp)
.L0d9990b0:
    # Line 6075
    lwc1	$f3,4($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f3
    bc1f .L0d9990c8
    nop
    # Line 6078
    swc1	$f4,4($a3)
.L0d9990c8:
    # Line 6075
    lwc1	$f5,8($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9990e0
    nop
    # Line 6078
    swc1	$f4,8($a3)
.L0d9990e0:
    # Line 6075
    lwc1	$f6,12($a3)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f6
    bc1f	.L0d9990fc
    # Line 6083
    move	$t9,$s4
    # Line 6078
    swc1	$f4,12($a3)
    # Line 6083
    move	$t9,$s4
.L0d9990fc:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    li	$t2,1
    # Line 6099
    lwc1	$f7,208($sp)
    # Line 6083
    bne	$s1,$t2,.L0d998f24
    ld	$t3,296($sp)
    bne	$s1,$t3,.L0d999140
    # Line 6093
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 6089
    lw	$t8,26976($s0)
    # Line 6088
    lw	$t9,-26972($s0)
    # Line 6089
    or	$t8,$s7,$t8
    sw	$t8,26976($s0)
    # Line 6088
    ori	$t9,$t9,0x1
    sw	$t9,-26972($s0)
    # Line 6089
    sw	$s8,4120($zero)
    # Line 6093
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d999140:
    # Line 6092
    move	$s3,$s5
    # Line 6093
    move	$a0,$s5
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d998f94
    # Line 6117
    mtc1	$s1,$f20
.L0d999164:
    # Line 5665
    b	.L0d9985f0
    # Line 5660
    move	$s3,$zero
.L0d99916c:
    sdc1	$f9,240($sp)
    li	$a0,1
    # Line 5907
    c.lt.s $f4,$f6
    # Line 5922
    move	$s3,$zero
    lui	$t8,0x1
    la	$s4,sub_0d9a0000
    # Line 5907
    lwc1	$f5,_lit_3f800000
    # Line 5922
    li	$s1,1
    ori	$s6,$t8,0x1a20
    sdc1	$f7,232($sp)
    ori	$t8,$t8,0x19e4
    # Line 5907
    bc1f .L0d9996c4
    # Line 5922
    addiu	$s4,$s4,-13808
.L0d9991a0:
    mul.s	$f5,$f4,$f5
    div.s	$f7,$f6,$f5
    c.lt.s $f4,$f7
    bc1t .L0d9991a0
    # Line 5921
    addiu	$a0,$a0,1
    # Line 5922
    blez	$a0,.L0d9993b0
.L0d9991b8:
    addiu	$s5,$a0,1
    sd	$s5,488($sp)
    ld	$s5,320($sp)
    addu	$s6,$s5,$s6
    b	.L0d9992fc
    addu	$s5,$s5,$t8
.L0d9991d0:
    # Line 5947
    lwc1	$f8,208($sp)
    lwc1	$f9,212($sp)
    lwc1	$f11,220($sp)
    lwc1	$f10,216($sp)
    # Line 5955
    li	$a4,1
    li	$a3,1
    # Line 5947
    swc1	$f11,204($sp)
    # Line 5948
    move	$a1,$s3
    # Line 5955
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5949
    xor	$t8,$s3,$s5
    move	$s3,$s5
    # Line 5947
    swc1	$f10,200($sp)
    # Line 5949
    sltiu	$t8,$t8,1
    # Line 5955
    addiu	$a2,$sp,192
    # Line 5947
    swc1	$f9,196($sp)
    # Line 5949
    movn	$s3,$s6,$t8
    # Line 5947
    swc1	$f8,192($sp)
    # Line 5955
    jal	__glOdysseyImageMovePixelsCopy
    move	$a0,$s3
    # Line 5960
    mtc1	$s1,$f20
.L0d999220:
    cvt.s.w	$f20,$f20
    # lw $t9, -17028($gp) # &powf
    lwc1	$f12,7712($s0)
    jal	powf
    mov.s	$f13,$f20
    ldc1	$f21,264($sp)
    div.s	$f21,$f21,$f0
    # Line 5961
    # lw $t9, -17028($gp) # &powf
    # Line 5960
    swc1	$f21,0($sp)
    # Line 5961
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f23,$f30,$f0
    # Line 5962
    # lw $t9, -17028($gp) # &powf
    # Line 5961
    swc1	$f23,4($sp)
    # Line 5962
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    div.s	$f25,$f28,$f0
    # Line 5963
    # lw $t9, -17028($gp) # &powf
    # Line 5962
    swc1	$f25,8($sp)
    # Line 5963
    mov.s	$f13,$f20
    jal	powf
    lwc1	$f12,7712($s0)
    ldc1	$f27,232($sp)
    div.s	$f27,$f27,$f0
    addiu	$a3,$sp,0
    swc1	$f27,12($sp)
    lwc1	$f29,0($sp)
    cvt.d.s	$f29,$f29
    c.le.d $f29,$f22
    bc1f .L0d9992a8
    nop
    # Line 5967
    swc1	$f24,0($sp)
.L0d9992a8:
    # Line 5963
    lwc1	$f31,4($a3)
    cvt.d.s	$f31,$f31
    c.le.d $f31,$f22
    # Line 5926
    ld	$t9,488($sp)
    # Line 5963
    bc1f .L0d9992c4
    # Line 5926
    addiu	$s1,$s1,1
    # Line 5967
    swc1	$f24,4($a3)
.L0d9992c4:
    # Line 5963
    lwc1	$f0,8($a3)
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f22
    bc1f .L0d9992dc
    nop
    # Line 5967
    swc1	$f24,8($a3)
.L0d9992dc:
    # Line 5963
    lwc1	$f1,12($a3)
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f22
    bc1f .L0d9992f4
    nop
    # Line 5967
    swc1	$f24,12($a3)
.L0d9992f4:
    # Line 5926
    beq	$s1,$t9,.L0d9993bc
    nop
.L0d9992fc:
    lwc1	$f2,0($sp)
    lwc1	$f4,7712($s0)
    addiu	$a3,$sp,0
    c.lt.s $f4,$f2
    bc1f .L0d999318
    nop
    # Line 5929
    swc1	$f4,0($sp)
.L0d999318:
    # Line 5926
    lwc1	$f3,4($a3)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f3
    bc1f	.L0d999330
    nop
    # Line 5929
    swc1	$f4,4($a3)
.L0d999330:
    # Line 5926
    lwc1	$f5,8($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d999348
    nop
    # Line 5929
    swc1	$f4,8($a3)
.L0d999348:
    # Line 5926
    lwc1	$f6,12($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f6
    bc1f .L0d999360
    nop
    # Line 5929
    swc1	$f4,12($a3)
.L0d999360:
    # Line 5934
    swc1	$f26,16($sp)
    swc1	$f26,20($sp)
    # Line 5935
    move	$t9,$s4
    # Line 5934
    swc1	$f26,24($sp)
    # Line 5935
    addiu	$a1,$sp,16
    addiu	$a0,$sp,0
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 5934
    swc1	$f26,28($sp)
    # Line 5935
    li	$ra,1
    bne	$s1,$ra,.L0d9991d0
    # Line 5940
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5939
    move	$s3,$s5
    # Line 5940
    move	$a0,$s5
    li	$a3,1
    addiu	$a2,$sp,192
    move	$a4,$ra
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d999220
    # Line 5960
    mtc1	$s1,$f20
.L0d9993b0:
    # Line 5926
    la	$s4,sub_0d9a0000
    move	$s3,$zero
    addiu	$s4,$s4,-13808
.L0d9993bc:
    # Line 5972
    lwc1	$f17,40($s2)
    swc1	$f17,16($sp)
    # Line 5973
    lwc1	$f16,44($s2)
    swc1	$f16,20($sp)
    # Line 5974
    lwc1	$f15,48($s2)
    # Line 5977
    ldc1	$f12,240($sp)
    # Line 5974
    swc1	$f15,24($sp)
    # Line 5975
    lwc1	$f14,52($s2)
    # Line 5977
    # lw $t9, -17032($gp) # &ceilf
    # Line 5975
    swc1	$f14,28($sp)
    # Line 5977
    lwc1	$f13,7712($s0)
    jal	ceilf
    div.s	$f12,$f12,$f13
    trunc.w.s	$f18,$f0
    mfc1	$t8,$f18
    ld	$s5,320($sp)
    li	$s1,1
    blez	$t8,.L0d998a64
    sd	$t8,480($sp)
    ld	$t8,480($sp)
    addiu	$t8,$t8,1
    sd	$t8,496($sp)
    lui	$t8,0x1
    ori	$s6,$t8,0x1a20
    ori	$t8,$t8,0x19e4
    addu	$s6,$s5,$s6
    b	.L0d99943c
    addu	$s5,$s5,$t8
    nop
.L0d999430:
    # Line 6043
    swc1	$f26,28($sp)
.L0d999434:
    # Line 5979
    slt	$t9,$s1,$t9
    beqz	$t9,.L0d998a64
.L0d99943c:
    # Line 5977
    lwc1	$f5,16($sp)
    lwc1	$f4,7712($s0)
    addiu	$a3,$sp,16
    c.lt.s $f4,$f5
    bc1f .L0d99945c
    nop
    # Line 5982
    b	.L0d999470
    swc1	$f4,16($sp)
.L0d99945c:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d999470
    nop
    # Line 5984
    swc1	$f6,16($sp)
.L0d999470:
    # Line 5977
    lwc1	$f5,4($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99948c
    nop
    # Line 5982
    b	.L0d9994a0
    swc1	$f4,4($a3)
.L0d99948c:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d9994a0
    nop
    # Line 5984
    swc1	$f6,4($a3)
.L0d9994a0:
    # Line 5977
    lwc1	$f5,8($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9994bc
    nop
    # Line 5982
    b	.L0d9994d0
    swc1	$f4,8($a3)
.L0d9994bc:
    neg.s	$f6,$f4
    c.lt.s	$f5,$f6
    bc1f	.L0d9994d0
    nop
    # Line 5984
    swc1	$f6,8($a3)
.L0d9994d0:
    # Line 5977
    lwc1	$f5,12($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9994ec
    nop
    # Line 5982
    b	.L0d999500
    swc1	$f4,12($a3)
.L0d9994ec:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d999500
    nop
    # Line 5984
    swc1	$f6,12($a3)
.L0d999500:
    # Line 5989
    swc1	$f24,0($sp)
    swc1	$f24,4($sp)
    # Line 5991
    move	$t9,$s4
    # Line 5989
    swc1	$f24,8($sp)
    # Line 5991
    addiu	$a1,$sp,16
    addiu	$a0,$sp,0
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 5989
    swc1	$f24,12($sp)
    # Line 5994
    lwc1	$f19,208($sp)
    lwc1	$f21,212($sp)
    lwc1	$f25,220($sp)
    lwc1	$f23,216($sp)
    swc1	$f25,204($sp)
    # Line 5996
    move	$a1,$s3
    # Line 5997
    xor	$at,$s3,$s5
    ld	$ra,480($sp)
    move	$s3,$s5
    sltiu	$at,$at,1
    # Line 5994
    swc1	$f23,200($sp)
    # Line 5997
    movn	$s3,$s6,$at
    # Line 5994
    swc1	$f21,196($sp)
    # Line 5997
    bne	$s1,$ra,.L0d999578
    # Line 5994
    swc1	$f19,192($sp)
    # Line 6005
    lw	$v0,26976($s0)
    # Line 6004
    lw	$v1,-26972($s0)
    # Line 6005
    or	$v0,$s7,$v0
    sw	$v0,26976($s0)
    # Line 6004
    ori	$v1,$v1,0x1
    sw	$v1,-26972($s0)
    # Line 6005
    sw	$s8,4120($zero)
.L0d999578:
    # Line 6008
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s3
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    mtc1	$s1,$f20
    cvt.s.w	$f20,$f20
    lwc1	$f6,7712($s0)
    lwc1	$f5,40($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d9995bc
    nop
    # Line 6014
    nmsub.s	$f21,$f5,$f6,$f20
    b	.L0d9995dc
    swc1	$f21,16($sp)
.L0d9995bc:
    neg.s	$f23,$f4
    c.lt.s $f5,$f23
    bc1f .L0d9995d8
    nop
    # Line 6017
    madd.s	$f25,$f5,$f6,$f20
    b	.L0d9995dc
    swc1	$f25,16($sp)
.L0d9995d8:
    # Line 6019
    swc1	$f26,16($sp)
.L0d9995dc:
    lwc1	$f6,7712($s0)
    lwc1	$f5,44($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d999600
    nop
    # Line 6022
    nmsub.s	$f27,$f5,$f6,$f20
    b	.L0d999620
    swc1	$f27,20($sp)
.L0d999600:
    neg.s	$f29,$f4
    c.lt.s $f5,$f29
    bc1f .L0d99961c
    nop
    # Line 6025
    madd.s	$f31,$f5,$f6,$f20
    b	.L0d999620
    swc1	$f31,20($sp)
.L0d99961c:
    # Line 6027
    swc1	$f26,20($sp)
.L0d999620:
    lwc1	$f6,7712($s0)
    lwc1	$f5,48($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    # Line 5979
    ld	$t9,496($sp)
    # Line 6027
    bc1f .L0d999648
    # Line 5979
    addiu	$s1,$s1,1
    # Line 6030
    nmsub.s	$f0,$f5,$f6,$f20
    b	.L0d999668
    swc1	$f0,24($sp)
.L0d999648:
    neg.s	$f1,$f4
    c.lt.s	$f5,$f1
    bc1f	.L0d999664
    nop
    # Line 6033
    madd.s	$f2,$f5,$f6,$f20
    b	.L0d999668
    swc1	$f2,24($sp)
.L0d999664:
    # Line 6035
    swc1	$f26,24($sp)
.L0d999668:
    lwc1	$f6,7712($s0)
    lwc1	$f5,52($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99968c
    nop
    # Line 6038
    nmsub.s	$f3,$f5,$f6,$f20
    b	.L0d999434
    swc1	$f3,28($sp)
.L0d99968c:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d999430
    nop
    # Line 6041
    madd.s	$f8,$f5,$f6,$f20
    b	.L0d999434
    swc1	$f8,28($sp)
.L0d9996a8:
    # Line 5850
    b	.L0d99870c
    # Line 5846
    addiu	$s6,$a0,1
.L0d9996b0:
    # Line 6075
    b	.L0d998804
    # Line 6071
    lui	$t8,0x1
.L0d9996b8:
    # Line 5665
    move	$s3,$zero
    b	.L0d998a64
    addiu	$s4,$s4,-13808
.L0d9996c4:
    # Line 5926
    b	.L0d9991b8
    li	$a0,1
.L0d9996cc:
    # Line 5737
    swc1	$f24,0($sp)
    swc1	$f24,4($sp)
    swc1	$f24,8($sp)
    swc1	$f24,12($sp)
    # Line 5740
    lwc1	$f13,7712($s0)
    ldc1	$f12,240($sp)
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    div.s	$f12,$f12,$f13
    trunc.w.s	$f14,$f0
    mfc1	$t8,$f14
    blez	$t8,.L0d999a14
    sd	$t8,312($sp)
    ld	$s5,312($sp)
    la	$s4,sub_0d9a0000
    move	$s3,$zero
    addiu	$s5,$s5,1
    sd	$s5,496($sp)
    li	$s1,1
    lui	$t8,0x1
    ld	$s5,320($sp)
    ori	$s6,$t8,0x1a20
    ori	$t8,$t8,0x19e4
    addiu	$s4,$s4,-13808
    addu	$s6,$s5,$s6
    b	.L0d999740
    addu	$s5,$s5,$t8
.L0d999738:
    # Line 5818
    swc1	$f26,28($sp)
.L0d99973c:
    # Line 5742
    beq	$s1,$t8,.L0d998a64
.L0d999740:
    # Line 5740
    lwc1	$f5,16($sp)
    lwc1	$f4,7712($s0)
    addiu	$a3,$sp,16
    c.lt.s $f4,$f5
    bc1f .L0d999760
    nop
    # Line 5745
    b	.L0d999774
    swc1	$f4,16($sp)
.L0d999760:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d999774
    nop
    # Line 5747
    swc1	$f6,16($sp)
.L0d999774:
    # Line 5740
    lwc1	$f5,4($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d999790
    nop
    # Line 5745
    b	.L0d9997a4
    swc1	$f4,4($a3)
.L0d999790:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d9997a4
    nop
    # Line 5747
    swc1	$f6,4($a3)
.L0d9997a4:
    # Line 5740
    lwc1	$f5,8($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9997c0
    nop
    # Line 5745
    b	.L0d9997d4
    swc1	$f4,8($a3)
.L0d9997c0:
    neg.s	$f6,$f4
    c.lt.s	$f5,$f6
    bc1f	.L0d9997d4
    nop
    # Line 5747
    swc1	$f6,8($a3)
.L0d9997d4:
    # Line 5740
    lwc1	$f5,12($a3)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9997f0
    nop
    # Line 5745
    b	.L0d999804
    swc1	$f4,12($a3)
.L0d9997f0:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d999808
    # Line 5752
    move	$t9,$s4
    # Line 5747
    swc1	$f6,12($a3)
.L0d999804:
    # Line 5752
    move	$t9,$s4
.L0d999808:
    addiu	$a1,$sp,16
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,0
    li	$a0,1
    # Line 5769
    lwc1	$f15,208($sp)
    # Line 5752
    beq	$s1,$a0,.L0d9999a8
    ld	$v1,312($sp)
    # Line 5769
    swc1	$f15,192($sp)
    lwc1	$f16,212($sp)
    lwc1	$f18,220($sp)
    lwc1	$f17,216($sp)
    # Line 5771
    move	$a1,$s3
    # Line 5772
    xor	$ra,$s3,$s5
    ld	$t9,312($sp)
    move	$s3,$s5
    sltiu	$ra,$ra,1
    # Line 5769
    swc1	$f17,200($sp)
    # Line 5772
    movn	$s3,$s6,$ra
    # Line 5769
    swc1	$f18,204($sp)
    # Line 5772
    bne	$s1,$t9,.L0d999878
    # Line 5769
    swc1	$f16,196($sp)
    # Line 5780
    lw	$at,26976($s0)
    # Line 5779
    lw	$v0,-26972($s0)
    # Line 5780
    or	$at,$s7,$at
    sw	$at,26976($s0)
    # Line 5779
    ori	$v0,$v0,0x1
    sw	$v0,-26972($s0)
    # Line 5780
    sw	$s8,4120($zero)
.L0d999878:
    # Line 5783
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s3
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,192
    mtc1	$s1,$f20
.L0d999894:
    cvt.s.w	$f20,$f20
    lwc1	$f6,7712($s0)
    lwc1	$f5,40($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d9998bc
    nop
    # Line 5789
    nmsub.s	$f21,$f5,$f6,$f20
    b	.L0d9998dc
    swc1	$f21,16($sp)
.L0d9998bc:
    neg.s	$f23,$f4
    c.lt.s $f5,$f23
    bc1f .L0d9998d8
    nop
    # Line 5792
    madd.s	$f25,$f5,$f6,$f20
    b	.L0d9998dc
    swc1	$f25,16($sp)
.L0d9998d8:
    # Line 5794
    swc1	$f26,16($sp)
.L0d9998dc:
    lwc1	$f6,7712($s0)
    lwc1	$f5,44($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    # Line 5742
    ld	$t8,496($sp)
    # Line 5794
    bc1f .L0d999904
    # Line 5742
    addiu	$s1,$s1,1
    # Line 5797
    nmsub.s	$f27,$f5,$f6,$f20
    b	.L0d999924
    swc1	$f27,20($sp)
.L0d999904:
    neg.s	$f29,$f4
    c.lt.s $f5,$f29
    bc1f .L0d999920
    nop
    # Line 5800
    madd.s	$f31,$f5,$f6,$f20
    b	.L0d999924
    swc1	$f31,20($sp)
.L0d999920:
    # Line 5802
    swc1	$f26,20($sp)
.L0d999924:
    lwc1	$f6,7712($s0)
    lwc1	$f5,48($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d999948
    nop
    # Line 5805
    nmsub.s	$f0,$f5,$f6,$f20
    b	.L0d999968
    swc1	$f0,24($sp)
.L0d999948:
    neg.s	$f1,$f4
    c.lt.s	$f5,$f1
    bc1f	.L0d999964
    nop
    # Line 5808
    madd.s	$f2,$f5,$f6,$f20
    b	.L0d999968
    swc1	$f2,24($sp)
.L0d999964:
    # Line 5810
    swc1	$f26,24($sp)
.L0d999968:
    lwc1	$f6,7712($s0)
    lwc1	$f5,52($s2)
    mul.s	$f4,$f6,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99998c
    nop
    # Line 5813
    nmsub.s	$f3,$f5,$f6,$f20
    b	.L0d99973c
    swc1	$f3,28($sp)
.L0d99998c:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d999738
    nop
    # Line 5816
    madd.s	$f8,$f5,$f6,$f20
    b	.L0d99973c
    swc1	$f8,28($sp)
.L0d9999a8:
    # Line 5752
    bne	$s1,$v1,.L0d9999d0
    # Line 5762
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 5758
    lw	$a0,26976($s0)
    # Line 5757
    lw	$a1,-26972($s0)
    # Line 5758
    or	$a0,$s7,$a0
    sw	$a0,26976($s0)
    # Line 5757
    ori	$a1,$a1,0x1
    sw	$a1,-26972($s0)
    # Line 5758
    sw	$s8,4120($zero)
    # Line 5762
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
.L0d9999d0:
    # Line 5761
    move	$s3,$s5
    # Line 5762
    move	$a0,$s5
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,192
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s2)
    b	.L0d999894
    # Line 5783
    mtc1	$s1,$f20
.L0d9999f4:
    # Line 5850
    la	$s4,sub_0d9a0000
    move	$s3,$zero
    b	.L0d998a64
    addiu	$s4,$s4,-13808
.L0d999a04:
    # Line 6075
    la	$s4,sub_0d9a0000
    move	$s3,$zero
    b	.L0d998a64
    addiu	$s4,$s4,-13808
.L0d999a14:
    # Line 5742
    la	$s4,sub_0d9a0000
    move	$s3,$zero
    b	.L0d998a64
    addiu	$s4,$s4,-13808
.end RenderFunc_ScaleBiasForSignedTypes

# Function: ImageChainAddOpScaleBiasGfx
# Declared: Line 6207 (Source lines: 6208-6251)
# Address: 0x0d999a30 - 0x0d999b1c (Size: 236 bytes, Frame: 48)
.ent ImageChainAddOpScaleBiasGfx
ImageChainAddOpScaleBiasGfx:
    # Line 6208
    addiu	$sp,$sp,-48
    # Line 6215
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 6208
    sd	$a0,16($sp)
    sd	$a1,0($sp)
    # Line 6215
    addiu	$t9,$t9,-3824
    sd	$ra,32($sp)
    jal	sub_0d990000
    # Line 6208
    sd	$a2,8($sp)
    # Line 6215
    bnez	$v0,.L0d999a68
    sd	$v0,24($sp)
    # Line 6251
    ld	$ra,32($sp)
    # Line 6217
    move	$v0,$zero
    # Line 6251
    jr	$ra
    addiu	$sp,$sp,48
.L0d999a68:
    # Line 6221
    ld	$at,24($sp)
    # Line 6224
    ld	$v1,0($sp)
    # Line 6221
    li	$a0,5
    sw	$a0,0($at)
    # Line 6224
    lwc1	$f7,0($v1)
    swc1	$f7,24($at)
    # Line 6225
    lwc1	$f6,4($v1)
    swc1	$f6,28($at)
    # Line 6226
    lwc1	$f5,8($v1)
    swc1	$f5,32($at)
    # Line 6227
    lwc1	$f4,12($v1)
    # Line 6228
    ld	$v0,8($sp)
    # Line 6227
    swc1	$f4,36($at)
    # Line 6228
    lwc1	$f3,0($v0)
    swc1	$f3,40($at)
    # Line 6229
    lwc1	$f2,4($v0)
    # Line 6243
    la	$ra,sub_0d9a0000
    # Line 6229
    swc1	$f2,44($at)
    # Line 6230
    lwc1	$f1,8($v0)
    # Line 6247
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 6230
    swc1	$f1,48($at)
    # Line 6231
    lwc1	$f0,12($v0)
    # Line 6240
    li	$a1,1
    sw	$a1,12($at)
    # Line 6236
    lw	$v0,8($at)
    # Line 6243
    addiu	$ra,$ra,-25824
    # Line 6247
    addiu	$t9,$t9,-3664
    # Line 6243
    sw	$ra,4($at)
    # Line 6236
    ori	$v0,$v0,0x1e
    sw	$v0,8($at)
    # Line 6247
    move	$a0,$at
    jal	sub_0d990000
    # Line 6231
    swc1	$f0,52($at)
    # Line 6248
    # lw $t9, -32728($gp) # &sub_0d990000
    ld	$a2,16($sp)
    addiu	$t9,$t9,-2832
    ld	$a1,24($sp)
    move	$a3,$zero
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 6251
    ld	$ra,32($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.end ImageChainAddOpScaleBiasGfx

# Function: RenderFunc_ScaleBiasGfx
# Declared: Line 6262 (Source lines: 6263-6723)
# Address: 0x0d999b20 - 0x0d99a950 (Size: 3632 bytes, Frame: 192)
.ent RenderFunc_ScaleBiasGfx
RenderFunc_ScaleBiasGfx:
    # Line 6263
    addiu	$sp,$sp,-448
    sd	$ra,368($sp)
    sd	$gp,392($sp)
    sdc1	$f24,232($sp)
    sd	$s1,376($sp)
    sd	$s6,344($sp)
    sd	$s7,352($sp)
    sd	$s8,360($sp)
    # Line 6292
    lw	$s8,4112($zero)
    # Line 6263
    sd	$s0,384($sp)
    # Line 6304
    lw	$a6,31804($s8)
    # Line 6303
    lw	$a7,31800($s8)
    # Line 6302
    lw	$a5,31796($s8)
    # Line 6301
    lw	$a2,31740($s8)
    # Line 6299
    lw	$at,31940($s8)
    lw	$s7,31964($s8)
    lw	$a4,31952($s8)
    lw	$s6,31960($s8)
    lw	$v1,31944($s8)
    # Line 6300
    lui	$s0,0x1
    # Line 6299
    lw	$a3,31948($s8)
    lw	$s1,31956($s8)
    # Line 6300
    addu	$s0,$s8,$s0
    lw	$t0,-26968($s0)
    lw	$t1,-26972($s0)
    lw	$t2,-26976($s0)
    lw	$t3,-26980($s0)
    # Line 6299
    sw	$s1,16($sp)
    sw	$a3,8($sp)
    sw	$v1,4($sp)
    # Line 6263
    lui	$v0,0x16
    # Line 6299
    sw	$s6,20($sp)
    # Line 6266
    mtc1	$zero,$f24
    # Line 6263
    addiu	$v0,$v0,-5520
    # Line 6299
    sw	$a4,12($sp)
    # Line 6263
    addu	$gp,$t9,$v0
    # Line 6305
    addiu	$a4,$sp,32
    # Line 6299
    sw	$s7,24($sp)
    # Line 6263
    move	$s7,$a1
    move	$s6,$a0
    # Line 6299
    sw	$at,0($sp)
    sd	$t3,336($sp)
    sd	$t2,328($sp)
    sd	$t1,320($sp)
    sd	$t0,312($sp)
    sd	$a7,304($sp)
    sd	$a6,296($sp)
    sd	$a5,288($sp)
    # Line 6305
    ld	$a3,-29672($s0)
    ld	$a1,-29680($s0)
    ld	$a0,-29688($s0)
    ld	$v1,-29696($s0)
    ld	$v0,-29704($s0)
    ld	$at,-29712($s0)
    sd	$at,8($a4)
    sd	$v0,16($a4)
    sd	$v1,24($a4)
    sd	$a0,32($a4)
    sd	$a1,40($a4)
    sd	$a3,48($a4)
    ld	$t9,-29664($s0)
    sd	$t9,56($a4)
    ld	$t9,-29720($s0)
    sd	$t9,32($sp)
    # Line 6306
    lw	$ra,-29724($s0)
    # Line 6307
    addiu	$a0,$sp,96
    sd	$ra,272($sp)
    sdc1	$f20,400($sp)
    lw	$at,-29460($s0)
    lw	$t1,-29432($s0)
    lw	$t0,-29436($s0)
    lw	$a7,-29440($s0)
    lw	$a6,-29444($s0)
    lw	$a3,-29448($s0)
    lw	$v1,-29452($s0)
    lw	$v0,-29456($s0)
    sw	$v0,4($a0)
    sw	$v1,8($a0)
    sw	$a3,12($a0)
    sw	$a6,16($a0)
    sw	$a7,20($a0)
    sw	$t0,24($a0)
    sw	$t1,28($a0)
    sw	$at,96($sp)
    # Line 6309
    lw	$a3,-29332($s0)
    # Line 6308
    lw	$a4,-29464($s0)
    # Line 6309
    lw	$a1,-29328($s0)
    sd	$a1,240($sp)
    # Line 6314
    lui	$a0,0x2
    # Line 6309
    lw	$a1,-29324($s0)
    # Line 6314
    nor	$a0,$a0,$zero
    and	$a0,$a2,$a0
    sw	$a0,31740($s8)
    # Line 6315
    lw	$v1,26976($s0)
    # Line 6309
    sd	$a1,264($sp)
    # Line 6315
    ori	$v1,$v1,0x2
    sw	$v1,26976($s0)
    li	$a1,2
    sw	$a1,4120($zero)
    # Line 6318
    lw	$at,31956($s8)
    lui	$v0,0x4
    or	$at,$at,$v0
    # Line 6319
    ori	$at,$at,0x4000
    sw	$at,31956($s8)
    # Line 6320
    lw	$ra,26976($s0)
    ori	$ra,$ra,0x200
    sw	$ra,26976($s0)
    sw	$a1,4120($zero)
    # Line 6323
    lw	$t2,26976($s0)
    lui	$t3,0x20
    # Line 6322
    lui	$t9,0x10
    lw	$t8,-26972($s0)
    nor	$t9,$t9,$zero
    # Line 6323
    or	$t2,$t2,$t3
    sw	$t2,26976($s0)
    # Line 6322
    and	$t8,$t8,$t9
    sw	$t8,-26972($s0)
    # Line 6323
    sw	$a1,4120($zero)
    # Line 6334
    lwc1	$f3,24($s6)
    swc1	$f3,128($sp)
    # Line 6335
    lwc1	$f2,28($s6)
    swc1	$f2,132($sp)
    # Line 6336
    lwc1	$f1,32($s6)
    # Line 6308
    sd	$a4,256($sp)
    # Line 6336
    swc1	$f1,136($sp)
    # Line 6337
    lwc1	$f0,36($s6)
    # Line 6309
    sd	$a3,248($sp)
    # Line 6337
    mtc1	$zero,$f20
    addiu	$a0,$sp,128
    swc1	$f0,140($sp)
    abs.s	$f5,$f3
    lwc1	$f6,4($a0)
    c.lt.s $f20,$f5
    abs.s	$f6,$f6
    movf.s	$f5,$f20,$fcc3
    lwc1	$f4,8($a0)
    c.lt.s $f5,$f6
    abs.s	$f4,$f4
    movf.s	$f6,$f5,$fcc2
    lwc1	$f5,12($a0)
    c.lt.s $f6,$f4
    abs.s	$f5,$f5
    movf.s	$f4,$f6,$fcc1
    c.lt.s	$f4,$f5
    movf.s	$f5,$f4,$fcc0
    mov.s	$f20,$f5
    # Line 6345
    lwc1	$f10,40($s6)
    swc1	$f10,144($sp)
    # Line 6346
    lwc1	$f9,44($s6)
    swc1	$f9,148($sp)
    # Line 6347
    lwc1	$f8,48($s6)
    swc1	$f8,152($sp)
    # Line 6348
    lwc1	$f7,52($s6)
    mtc1	$zero,$f6
    addiu	$a1,$sp,144
    swc1	$f7,156($sp)
    abs.s	$f12,$f10
    lwc1	$f8,4($a1)
    c.lt.s $f6,$f12
    abs.s	$f8,$f8
    movf.s	$f12,$f6,$fcc7
    lwc1	$f11,8($a1)
    c.lt.s $f12,$f8
    abs.s	$f11,$f11
    movf.s	$f8,$f12,$fcc6
    lwc1	$f7,12($a1)
    c.lt.s $f8,$f11
    abs.s	$f7,$f7
    movf.s	$f11,$f8,$fcc5
    c.lt.s $f11,$f7
    movf.s	$f7,$f11,$fcc4
    # Line 6362
    lwc1	$f23,_lit_40e00000
    swc1	$f23,7712($s0)
    # Line 6365
    lwc1	$f21,0($s7)
    swc1	$f21,160($sp)
    lwc1	$f19,4($s7)
    swc1	$f19,164($sp)
    lwc1	$f18,8($s7)
    swc1	$f18,168($sp)
    lwc1	$f17,12($s7)
    # Line 6367
    swc1	$f24,180($sp)
    # Line 6366
    swc1	$f24,176($sp)
    # Line 6365
    swc1	$f17,172($sp)
    # Line 6367
    lwc1	$f17,8($s7)
    lwc1	$f16,0($s7)
    # Line 6368
    c.lt.s $f16,$f17
    # Line 6367
    c.lt.s $f17,$f16
    # Line 6368
    mov.s	$f15,$f16
    movf.s	$f16,$f17,$fcc3
    movf.s	$f15,$f17,$fcc4
    sub.s	$f15,$f15,$f16
    swc1	$f15,184($sp)
    lwc1	$f15,12($s7)
    lwc1	$f14,4($s7)
    # Line 6369
    c.lt.s $f14,$f15
    # Line 6368
    c.lt.s $f15,$f14
    # Line 6369
    mov.s	$f13,$f14
    movf.s	$f14,$f15,$fcc1
    movf.s	$f13,$f15,$fcc2
    sub.s	$f13,$f13,$f14
    swc1	$f13,188($sp)
    # Line 6389
    lwc1	$f4,7712($s0)
    sdc1	$f22,408($sp)
    sd	$s2,416($sp)
    sd	$s3,424($sp)
    c.le.s	$f5,$f4
    sd	$s4,432($sp)
    sd	$s5,440($sp)
    bc1f	.L0d999e74
    sd	$a2,280($sp)
    c.le.s $f7,$f4
    bc1t .L0d99a4dc
    # Line 6398
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
.L0d999e74:
    # Line 6444
    c.lt.s $f4,$f20
    bc1f .L0d999f5c
    nop
    lwc1	$f27,24($s6)
    lwc1	$f25,40($s6)
    abs.s	$f27,$f27
    abs.s	$f25,$f25
    c.le.s $f25,$f27
    lwc1	$f0,36($s6)
    lwc1	$f29,28($s6)
    bc1f .L0d999f5c
    lwc1	$f27,44($s6)
    lwc1	$f31,32($s6)
    abs.s	$f29,$f29
    abs.s	$f27,$f27
    c.le.s	$f27,$f29
    bc1f	.L0d999f5c
    lwc1	$f29,48($s6)
    # Line 6461
    move	$s1,$zero
    # Line 6444
    abs.s	$f31,$f31
    abs.s	$f29,$f29
    c.le.s $f29,$f31
    bc1f .L0d999f5c
    lwc1	$f31,52($s6)
    # Line 6455
    lwc1	$f22,_lit_3f800000
    # Line 6444
    abs.s	$f0,$f0
    abs.s	$f31,$f31
    c.le.s $f31,$f0
    # Line 6461
    la	$s3,sub_0d9a0000
    # Line 6455
    li	$s4,1
    # Line 6461
    lui	$s2,0x1
    ori	$s2,$s2,0x19e4
    # Line 6444
    bc1f .L0d999f5c
    # Line 6461
    addiu	$s3,$s3,-13808
    # Line 6455
    c.lt.s $f4,$f20
    # Line 6458
    addiu	$a0,$sp,128
    # Line 6455
    bc1f .L0d99a948
    # Line 6458
    addiu	$a4,$sp,200
    mov.s	$f5,$f22
.L0d999f10:
    mul.s	$f5,$f4,$f5
    div.s	$f0,$f20,$f5
    c.lt.s $f4,$f0
    bc1t .L0d999f10
    # Line 6457
    addiu	$s4,$s4,1
.L0d999f24:
    # Line 6461
    ldc1	$f20,_lit8_3ff0000000000000
    # Line 6462
    lwc1	$f1,128($sp)
    lwc1	$f2,4($a0)
    lwc1	$f4,12($a0)
    lwc1	$f3,8($a0)
    swc1	$f4,12($a4)
    swc1	$f3,8($a4)
    swc1	$f2,4($a4)
    # Line 6461
    addiu	$s5,$s4,-1
    # Line 6462
    swc1	$f1,200($sp)
    # Line 6461
    blez	$s4,.L0d99a508
    ld	$a0,240($sp)
    b	.L0d99a6b0
    addu	$s2,$s8,$s2
.L0d999f5c:
    # Line 6549
    c.eq.s $f20,$f24
    bc1t .L0d99a508
    ld	$a0,240($sp)
    # Line 6577
    lwc1	$f13,24($s6)
    abs.s	$f13,$f13
    swc1	$f13,128($sp)
    # Line 6578
    lwc1	$f12,28($s6)
    abs.s	$f12,$f12
    swc1	$f12,132($sp)
    # Line 6579
    lwc1	$f11,32($s6)
    abs.s	$f11,$f11
    swc1	$f11,136($sp)
    # Line 6580
    lwc1	$f10,36($s6)
    abs.s	$f10,$f10
    swc1	$f10,140($sp)
    # Line 6582
    lwc1	$f5,40($s6)
    # Line 6583
    lwc1	$f7,44($s6)
    # Line 6585
    lwc1	$f9,52($s6)
    # Line 6584
    lwc1	$f8,48($s6)
    # Line 6585
    swc1	$f9,228($sp)
    # Line 6584
    swc1	$f8,224($sp)
    # Line 6585
    mtc1	$zero,$f6
    # Line 6583
    swc1	$f7,220($sp)
    # Line 6585
    addiu	$a4,$sp,216
    addiu	$a0,$sp,128
    # Line 6582
    swc1	$f5,216($sp)
    # Line 6585
    c.eq.s $f13,$f24
    mov.s	$f4,$f13
    bc1t .L0d999fdc
    lwc1	$f5,216($sp)
    # Line 6590
    div.s	$f5,$f5,$f13
    swc1	$f5,216($sp)
.L0d999fdc:
    # Line 6585
    lwc1	$f4,4($a0)
    # Line 6590
    abs.s	$f14,$f5
    # Line 6585
    c.eq.s	$f4,$f24
    # Line 6590
    c.lt.s $f6,$f14
    # Line 6585
    lwc1	$f5,4($a4)
    bc1t	.L0d99a000
    movt.s	$f6,$f14,$fcc7
    # Line 6590
    div.s	$f5,$f5,$f4
    swc1	$f5,4($a4)
.L0d99a000:
    # Line 6585
    lwc1	$f4,8($a0)
    # Line 6590
    abs.s	$f15,$f5
    # Line 6585
    c.eq.s $f4,$f24
    # Line 6590
    c.lt.s $f6,$f15
    # Line 6585
    lwc1	$f5,8($a4)
    bc1t .L0d99a024
    movt.s	$f6,$f15,$fcc1
    # Line 6590
    div.s	$f5,$f5,$f4
    swc1	$f5,8($a4)
.L0d99a024:
    # Line 6585
    lwc1	$f4,12($a0)
    # Line 6590
    abs.s	$f16,$f5
    # Line 6585
    c.eq.s $f4,$f24
    # Line 6590
    c.lt.s $f6,$f16
    # Line 6585
    lwc1	$f5,12($a4)
    bc1t .L0d99a048
    movt.s	$f6,$f16,$fcc3
    # Line 6590
    div.s	$f5,$f5,$f4
    swc1	$f5,12($a4)
.L0d99a048:
    abs.s	$f17,$f5
    c.lt.s $f6,$f17
    movt.s	$f6,$f17,$fcc5
    # Line 6597
    lwc1	$f22,_lit_3f800000
    # Line 6599
    # lw $t9, -17032($gp) # &ceilf
    # Line 6597
    swc1	$f22,140($sp)
    swc1	$f22,136($sp)
    swc1	$f22,132($sp)
    swc1	$f22,128($sp)
    # Line 6599
    lwc1	$f12,7712($s0)
    jal	ceilf
    div.s	$f12,$f6,$f12
    trunc.w.s	$f13,$f0
    mfc1	$s4,$f13
    blez	$s4,.L0d99a258
    la	$s3,sub_0d9a0000
    move	$s1,$zero
    lui	$s2,0x1
    ori	$s2,$s2,0x19e4
    addiu	$s3,$s3,-13808
    b	.L0d99a100
    addu	$s2,$s8,$s2
.L0d99a0a0:
    # Line 6613
    swc1	$f24,12($a4)
    # Line 6612
    swc1	$f5,12($a1)
.L0d99a0a8:
    # Line 6617
    move	$t9,$s3
    addiu	$a1,$sp,144
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,128
    beqz	$s1,.L0d99a250
    # Line 6622
    move	$a1,$s2
.L0d99a0c0:
    # Line 6625
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s2
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,160
    # Line 6634
    lwc1	$f14,176($sp)
    lwc1	$f15,180($sp)
    lwc1	$f17,188($sp)
    lwc1	$f16,184($sp)
    swc1	$f17,172($sp)
    # Line 6601
    addiu	$s1,$s1,1
    # Line 6634
    swc1	$f16,168($sp)
    swc1	$f15,164($sp)
    # Line 6601
    beq	$s4,$s1,.L0d99a258
    # Line 6634
    swc1	$f14,160($sp)
.L0d99a100:
    # Line 6599
    lwc1	$f5,216($sp)
    lwc1	$f4,7712($s0)
    addiu	$a4,$sp,216
    addiu	$a1,$sp,144
    c.lt.s $f4,$f5
    bc1f .L0d99a130
    nop
    # Line 6604
    swc1	$f4,144($sp)
    # Line 6605
    lwc1	$f18,7712($s0)
    sub.s	$f18,$f5,$f18
    b	.L0d99a15c
    swc1	$f18,216($sp)
.L0d99a130:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a154
    nop
    # Line 6608
    swc1	$f6,144($sp)
    # Line 6609
    lwc1	$f19,7712($s0)
    add.s	$f19,$f19,$f5
    b	.L0d99a15c
    swc1	$f19,216($sp)
.L0d99a154:
    # Line 6613
    swc1	$f24,216($sp)
    # Line 6612
    swc1	$f5,144($sp)
.L0d99a15c:
    # Line 6599
    lwc1	$f5,4($a4)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f5
    bc1f	.L0d99a184
    nop
    # Line 6604
    swc1	$f4,4($a1)
    # Line 6605
    lwc1	$f21,7712($s0)
    sub.s	$f21,$f5,$f21
    b	.L0d99a1b0
    swc1	$f21,4($a4)
.L0d99a184:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a1a8
    nop
    # Line 6608
    swc1	$f6,4($a1)
    # Line 6609
    lwc1	$f23,7712($s0)
    add.s	$f23,$f23,$f5
    b	.L0d99a1b0
    swc1	$f23,4($a4)
.L0d99a1a8:
    # Line 6613
    swc1	$f24,4($a4)
    # Line 6612
    swc1	$f5,4($a1)
.L0d99a1b0:
    # Line 6599
    lwc1	$f5,8($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a1d8
    nop
    # Line 6604
    swc1	$f4,8($a1)
    # Line 6605
    lwc1	$f25,7712($s0)
    sub.s	$f25,$f5,$f25
    b	.L0d99a204
    swc1	$f25,8($a4)
.L0d99a1d8:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a1fc
    nop
    # Line 6608
    swc1	$f6,8($a1)
    # Line 6609
    lwc1	$f27,7712($s0)
    add.s	$f27,$f27,$f5
    b	.L0d99a204
    swc1	$f27,8($a4)
.L0d99a1fc:
    # Line 6613
    swc1	$f24,8($a4)
    # Line 6612
    swc1	$f5,8($a1)
.L0d99a204:
    # Line 6599
    lwc1	$f5,12($a4)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a22c
    nop
    # Line 6604
    swc1	$f4,12($a1)
    # Line 6605
    lwc1	$f29,7712($s0)
    sub.s	$f29,$f5,$f29
    b	.L0d99a0a8
    swc1	$f29,12($a4)
.L0d99a22c:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a0a0
    nop
    # Line 6608
    swc1	$f6,12($a1)
    # Line 6609
    lwc1	$f31,7712($s0)
    add.s	$f31,$f31,$f5
    b	.L0d99a0a8
    swc1	$f31,12($a4)
.L0d99a250:
    # Line 6620
    b	.L0d99a0c0
    lw	$a1,68($s6)
.L0d99a258:
    # Line 6639
    swc1	$f24,144($sp)
    swc1	$f24,148($sp)
    swc1	$f24,152($sp)
    swc1	$f24,156($sp)
    # Line 6641
    lwc1	$f3,24($s6)
    swc1	$f3,128($sp)
    # Line 6642
    lwc1	$f2,28($s6)
    swc1	$f2,132($sp)
    # Line 6643
    lwc1	$f1,32($s6)
    swc1	$f1,136($sp)
    # Line 6644
    lwc1	$f0,36($s6)
    swc1	$f0,140($sp)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f20
    # Line 6601
    la	$s3,sub_0d9a0000
    # Line 6650
    li	$s4,1
    # Line 6644
    bc1f .L0d99a2c4
    # Line 6601
    addiu	$s3,$s3,-13808
    # Line 6644
    li	$s4,1
    lwc1	$f5,_lit_3f800000
    nop
    nop
.L0d99a2b0:
    # Line 6650
    mul.s	$f5,$f4,$f5
    div.s	$f6,$f20,$f5
    c.lt.s $f4,$f6
    bc1t .L0d99a2b0
    # Line 6649
    addiu	$s4,$s4,1
.L0d99a2c4:
    # Line 6650
    addiu	$a4,$sp,200
    addiu	$a0,$sp,128
    # Line 6654
    lwc1	$f10,12($a0)
    lwc1	$f9,8($a0)
    swc1	$f10,12($a4)
    swc1	$f9,8($a4)
    lwc1	$f8,4($a0)
    lwc1	$f7,128($sp)
    swc1	$f8,4($a4)
    swc1	$f7,200($sp)
    # Line 6653
    blez	$s4,.L0d99a508
    ld	$a0,240($sp)
    move	$s1,$zero
    lui	$s2,0x1
    addiu	$s5,$s4,-1
    ori	$s2,$s2,0x19e4
    ldc1	$f20,_lit8_3ff0000000000000
    b	.L0d99a334
    addu	$s2,$s8,$s2
.L0d99a310:
    # Line 6687
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s2
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,160
    # Line 6658
    addiu	$s1,$s1,1
    beq	$s4,$s1,.L0d99a508
    ld	$a0,240($sp)
.L0d99a334:
    # Line 6653
    addiu	$a4,$sp,200
    addiu	$a0,$sp,128
    # Line 6663
    lwc1	$f5,200($sp)
    swc1	$f5,128($sp)
    lwc1	$f4,7712($s0)
    c.lt.s	$f4,$f5
    bc1f	.L0d99a360
    nop
    # Line 6667
    swc1	$f4,128($sp)
    b	.L0d99a378
    lwc1	$f4,7712($s0)
.L0d99a360:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a378
    nop
    # Line 6669
    swc1	$f6,128($sp)
    lwc1	$f4,7712($s0)
.L0d99a378:
    # Line 6672
    div.s	$f11,$f5,$f4
    abs.s	$f11,$f11
    cvt.d.s	$f12,$f11
    c.le.d $f12,$f20
    bc1f .L0d99a394
    swc1	$f11,0($a4)
    # Line 6675
    swc1	$f22,0($a4)
.L0d99a394:
    # Line 6663
    lwc1	$f5,4($a4)
    swc1	$f5,4($a0)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a3b8
    nop
    # Line 6667
    swc1	$f4,4($a0)
    b	.L0d99a3d0
    lwc1	$f4,7712($s0)
.L0d99a3b8:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a3d0
    nop
    # Line 6669
    swc1	$f6,4($a0)
    lwc1	$f4,7712($s0)
.L0d99a3d0:
    # Line 6672
    div.s	$f12,$f5,$f4
    abs.s	$f12,$f12
    cvt.d.s	$f13,$f12
    c.le.d $f13,$f20
    bc1f .L0d99a3ec
    swc1	$f12,4($a4)
    # Line 6675
    swc1	$f22,4($a4)
.L0d99a3ec:
    # Line 6663
    lwc1	$f5,8($a4)
    swc1	$f5,8($a0)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a410
    nop
    # Line 6667
    swc1	$f4,8($a0)
    b	.L0d99a428
    lwc1	$f4,7712($s0)
.L0d99a410:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a428
    nop
    # Line 6669
    swc1	$f6,8($a0)
    lwc1	$f4,7712($s0)
.L0d99a428:
    # Line 6672
    div.s	$f13,$f5,$f4
    abs.s	$f13,$f13
    cvt.d.s	$f14,$f13
    c.le.d	$f14,$f20
    bc1f	.L0d99a444
    swc1	$f13,8($a4)
    # Line 6675
    swc1	$f22,8($a4)
.L0d99a444:
    # Line 6663
    lwc1	$f5,12($a4)
    swc1	$f5,12($a0)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a468
    nop
    # Line 6667
    swc1	$f4,12($a0)
    b	.L0d99a480
    lwc1	$f4,7712($s0)
.L0d99a468:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a480
    nop
    # Line 6669
    swc1	$f6,12($a0)
    lwc1	$f4,7712($s0)
.L0d99a480:
    # Line 6672
    div.s	$f14,$f5,$f4
    abs.s	$f14,$f14
    cvt.d.s	$f15,$f14
    c.le.d $f15,$f20
    bc1f .L0d99a49c
    swc1	$f14,12($a4)
    # Line 6675
    swc1	$f22,12($a4)
.L0d99a49c:
    # Line 6678
    move	$t9,$s3
    addiu	$a1,$sp,144
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,128
    bne	$s5,$s1,.L0d99a310
    # Line 6684
    move	$a0,$s2
    # Line 6682
    lwc1	$f18,16($s7)
    # Line 6681
    lw	$a0,72($s6)
    # Line 6682
    swc1	$f18,176($sp)
    lwc1	$f17,20($s7)
    swc1	$f17,180($sp)
    lwc1	$f16,24($s7)
    swc1	$f16,184($sp)
    lwc1	$f15,28($s7)
    b	.L0d99a310
    swc1	$f15,188($sp)
.L0d99a4dc:
    # Line 6398
    addiu	$t9,$t9,-13808
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    nop
    # Line 6400
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    lw	$a1,68($s6)
    move	$a2,$s7
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a0,72($s6)
    ld	$a0,240($sp)
.L0d99a508:
    ld	$a1,248($sp)
    ld	$a2,256($sp)
    ld	$a5,264($sp)
    ld	$a4,272($sp)
    # Line 6708
    ld	$v1,296($sp)
    # Line 6704
    ld	$t0,336($sp)
    ld	$a7,328($sp)
    ld	$a6,320($sp)
    ld	$a3,312($sp)
    # Line 6703
    lw	$t9,12($sp)
    lw	$t8,16($sp)
    lw	$t3,20($sp)
    lw	$t1,24($sp)
    sw	$t1,31964($s8)
    sw	$t3,31960($s8)
    sw	$t8,31956($s8)
    sw	$t9,31952($s8)
    lw	$v0,0($sp)
    lw	$at,4($sp)
    lw	$ra,8($sp)
    sw	$ra,31948($s8)
    sw	$at,31944($s8)
    sw	$v0,31940($s8)
    # Line 6704
    sw	$a3,-26968($s0)
    sw	$a6,-26972($s0)
    sw	$a7,-26976($s0)
    sw	$t0,-26980($s0)
    # Line 6708
    sw	$v1,31804($s8)
    # Line 6705
    ld	$ra,280($sp)
    # Line 6706
    ld	$at,288($sp)
    # Line 6707
    ld	$v0,304($sp)
    sw	$v0,31800($s8)
    # Line 6706
    sw	$at,31796($s8)
    li	$t2,2
    # Line 6709
    addiu	$a6,$sp,32
    # Line 6705
    sw	$ra,31740($s8)
    ld	$s2,416($sp)
    ld	$s3,424($sp)
    ld	$s4,432($sp)
    ld	$s6,344($sp)
    ld	$s7,352($sp)
    ld	$s8,360($sp)
    ld	$ra,368($sp)
    ld	$s1,376($sp)
    ld	$s5,440($sp)
    ldc1	$f20,400($sp)
    ldc1	$f22,408($sp)
    ldc1	$f24,232($sp)
    # Line 6709
    ld	$a3,8($a6)
    ld	$t3,16($a6)
    ld	$t8,24($a6)
    ld	$t9,32($a6)
    ld	$at,40($a6)
    ld	$v0,48($a6)
    sd	$v0,-29672($s0)
    sd	$at,-29680($s0)
    sd	$t9,-29688($s0)
    sd	$t8,-29696($s0)
    sd	$t3,-29704($s0)
    sd	$a3,-29712($s0)
    ld	$v1,56($a6)
    sd	$v1,-29664($s0)
    ld	$v1,32($sp)
    sd	$v1,-29720($s0)
    # Line 6711
    addiu	$a6,$sp,96
    # Line 6710
    sw	$a4,-29724($s0)
    # Line 6711
    lw	$v1,28($a6)
    sw	$v1,-29432($s0)
    lw	$v0,24($a6)
    sw	$v0,-29436($s0)
    lw	$at,20($a6)
    sw	$at,-29440($s0)
    lw	$t9,16($a6)
    sw	$t9,-29444($s0)
    lw	$t8,12($a6)
    sw	$t8,-29448($s0)
    lw	$t3,8($a6)
    sw	$t3,-29452($s0)
    lw	$a4,4($a6)
    sw	$a4,-29456($s0)
    lw	$a3,96($sp)
    sw	$a3,-29460($s0)
    # Line 6723
    ld	$gp,392($sp)
    # Line 6713
    sw	$a5,-29324($s0)
    sw	$a0,-29328($s0)
    # Line 6715
    lw	$a0,26976($s0)
    # Line 6713
    sw	$a1,-29332($s0)
    # Line 6715
    lui	$a1,0x23
    # Line 6712
    sw	$a2,-29464($s0)
    # Line 6715
    ori	$a1,$a1,0x8203
    or	$a0,$a0,$a1
    sw	$a0,26976($s0)
    # Line 6723
    li	$v0,1
    # Line 6715
    sw	$t2,4120($zero)
    # Line 6723
    ld	$s0,384($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0d99a68c:
    # Line 6538
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s2
    li	$a4,1
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    addiu	$a2,$sp,160
.L0d99a6a4:
    # Line 6466
    addiu	$s1,$s1,1
    beq	$s4,$s1,.L0d99a508
    ld	$a0,240($sp)
.L0d99a6b0:
    # Line 6461
    addiu	$a4,$sp,200
    addiu	$a0,$sp,128
    # Line 6471
    lwc1	$f5,200($sp)
    swc1	$f5,128($sp)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a6dc
    nop
    # Line 6475
    swc1	$f4,128($sp)
    b	.L0d99a6f4
    lwc1	$f4,7712($s0)
.L0d99a6dc:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a6f4
    nop
    # Line 6477
    swc1	$f6,128($sp)
    lwc1	$f4,7712($s0)
.L0d99a6f4:
    # Line 6480
    div.s	$f19,$f5,$f4
    abs.s	$f19,$f19
    cvt.d.s	$f21,$f19
    c.le.d $f21,$f20
    bc1f .L0d99a710
    swc1	$f19,0($a4)
    # Line 6483
    swc1	$f22,0($a4)
.L0d99a710:
    # Line 6471
    lwc1	$f5,4($a4)
    swc1	$f5,4($a0)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a734
    nop
    # Line 6475
    swc1	$f4,4($a0)
    b	.L0d99a74c
    lwc1	$f4,7712($s0)
.L0d99a734:
    neg.s	$f6,$f4
    c.lt.s	$f5,$f6
    bc1f	.L0d99a74c
    nop
    # Line 6477
    swc1	$f6,4($a0)
    lwc1	$f4,7712($s0)
.L0d99a74c:
    # Line 6480
    div.s	$f21,$f5,$f4
    abs.s	$f21,$f21
    cvt.d.s	$f23,$f21
    c.le.d $f23,$f20
    bc1f .L0d99a768
    swc1	$f21,4($a4)
    # Line 6483
    swc1	$f22,4($a4)
.L0d99a768:
    # Line 6471
    lwc1	$f5,8($a4)
    swc1	$f5,8($a0)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a78c
    nop
    # Line 6475
    swc1	$f4,8($a0)
    b	.L0d99a7a4
    lwc1	$f4,7712($s0)
.L0d99a78c:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a7a4
    nop
    # Line 6477
    swc1	$f6,8($a0)
    lwc1	$f4,7712($s0)
.L0d99a7a4:
    # Line 6480
    div.s	$f23,$f5,$f4
    abs.s	$f23,$f23
    cvt.d.s	$f25,$f23
    c.le.d $f25,$f20
    bc1f .L0d99a7c0
    swc1	$f23,8($a4)
    # Line 6483
    swc1	$f22,8($a4)
.L0d99a7c0:
    # Line 6471
    lwc1	$f5,12($a4)
    swc1	$f5,12($a0)
    lwc1	$f4,7712($s0)
    c.lt.s $f4,$f5
    bc1f .L0d99a7e4
    nop
    # Line 6475
    swc1	$f4,12($a0)
    b	.L0d99a7fc
    lwc1	$f4,7712($s0)
.L0d99a7e4:
    neg.s	$f6,$f4
    c.lt.s $f5,$f6
    bc1f .L0d99a7fc
    nop
    # Line 6477
    swc1	$f6,12($a0)
    lwc1	$f4,7712($s0)
.L0d99a7fc:
    # Line 6480
    div.s	$f25,$f5,$f4
    abs.s	$f25,$f25
    cvt.d.s	$f27,$f25
    c.le.d $f27,$f20
    bc1f .L0d99a818
    swc1	$f25,12($a4)
    # Line 6483
    swc1	$f22,12($a4)
.L0d99a818:
    # Line 6469
    bnez	$s1,.L0d99a90c
    # Line 6529
    move	$t9,$s3
    # Line 6469
    lwc1	$f4,24($s6)
    # Line 6502
    lwc1	$f29,128($sp)
    # Line 6469
    c.eq.s	$f4,$f24
    # Line 6506
    lwc1	$f2,136($sp)
    # Line 6504
    lwc1	$f0,132($sp)
    # Line 6469
    bc1t	.L0d99a84c
    # Line 6508
    lwc1	$f5,140($sp)
    # Line 6502
    lwc1	$f27,40($s6)
    mul.s	$f27,$f27,$f29
    div.s	$f27,$f27,$f4
    swc1	$f27,144($sp)
.L0d99a84c:
    lwc1	$f4,28($s6)
    c.eq.s $f4,$f24
    bc1t .L0d99a86c
    nop
    # Line 6504
    lwc1	$f31,44($s6)
    mul.s	$f31,$f31,$f0
    div.s	$f31,$f31,$f4
    swc1	$f31,148($sp)
.L0d99a86c:
    lwc1	$f4,32($s6)
    c.eq.s $f4,$f24
    bc1t .L0d99a88c
    nop
    # Line 6506
    lwc1	$f1,48($s6)
    mul.s	$f1,$f1,$f2
    div.s	$f1,$f1,$f4
    swc1	$f1,152($sp)
.L0d99a88c:
    lwc1	$f4,36($s6)
    c.eq.s $f4,$f24
    bc1t .L0d99a8b0
    # Line 6510
    move	$t9,$s3
    # Line 6508
    lwc1	$f3,52($s6)
    mul.s	$f3,$f3,$f5
    div.s	$f3,$f3,$f4
    swc1	$f3,156($sp)
    # Line 6510
    move	$t9,$s3
.L0d99a8b0:
    addiu	$a1,$sp,144
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,128
    # Line 6512
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s2
    move	$a4,$zero
    li	$a3,1
    addiu	$a2,$sp,160
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a1,68($s6)
    # Line 6525
    swc1	$f24,144($sp)
    swc1	$f24,148($sp)
    swc1	$f24,152($sp)
    swc1	$f24,156($sp)
    # Line 6522
    lwc1	$f6,176($sp)
    lwc1	$f7,180($sp)
    lwc1	$f9,188($sp)
    lwc1	$f8,184($sp)
    swc1	$f9,172($sp)
    swc1	$f8,168($sp)
    swc1	$f7,164($sp)
    # Line 6525
    b	.L0d99a6a4
    # Line 6522
    swc1	$f6,160($sp)
.L0d99a90c:
    # Line 6529
    addiu	$a1,$sp,144
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,128
    bne	$s5,$s1,.L0d99a68c
    # Line 6535
    move	$a0,$s2
    # Line 6533
    lwc1	$f13,16($s7)
    # Line 6532
    lw	$a0,72($s6)
    # Line 6533
    swc1	$f13,176($sp)
    lwc1	$f12,20($s7)
    swc1	$f12,180($sp)
    lwc1	$f11,24($s7)
    swc1	$f11,184($sp)
    lwc1	$f10,28($s7)
    b	.L0d99a68c
    swc1	$f10,188($sp)
.L0d99a948:
    b	.L0d999f24
    # Line 6458
    li	$s4,1
.end RenderFunc_ScaleBiasGfx

# Function: __glOdysseyImageChainAddOpAcceptSignedDataFromHost
# Declared: Line 6730 (Source lines: 6733-6838)
# Address: 0x0d99a950 - 0x0d99aa94 (Size: 324 bytes, Frame: 48)
.globl __glOdysseyImageChainAddOpAcceptSignedDataFromHost
.ent __glOdysseyImageChainAddOpAcceptSignedDataFromHost
__glOdysseyImageChainAddOpAcceptSignedDataFromHost:
    # Line 6733
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    lui	$ra,0x16
    addiu	$ra,$ra,-9152
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 6740
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 6733
    sd	$s2,16($sp)
    sd	$s0,40($sp)
    # Line 6740
    addiu	$t9,$t9,-3824
    # Line 6733
    move	$s0,$a3
    move	$s2,$a2
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 6740
    jal	sub_0d990000
    sd	$a0,0($sp)
    beqz	$v0,.L0d99aa74
    # Line 6808
    li	$a1,6408
    li	$at,6410
    # Line 6746
    li	$v1,4
    sw	$v1,0($v0)
    # Line 6749
    lwc1	$f5,0($s1)
    swc1	$f5,24($v0)
    # Line 6750
    lwc1	$f4,0($s2)
    swc1	$f4,40($v0)
    # Line 6752
    lwc1	$f3,4($s1)
    swc1	$f3,28($v0)
    # Line 6753
    lwc1	$f2,4($s2)
    swc1	$f2,44($v0)
    # Line 6755
    lwc1	$f1,8($s1)
    swc1	$f1,32($v0)
    # Line 6756
    lwc1	$f0,8($s2)
    # Line 6808
    beq	$s0,$at,.L0d99aa60
    # Line 6756
    swc1	$f0,48($v0)
    # Line 6808
    li	$a0,6406
    beq	$s0,$a0,.L0d99aa60
    nop
    beq	$s0,$a1,.L0d99aa60
    # Line 6818
    mtc1	$zero,$f8
    swc1	$f8,36($v0)
    # Line 6819
    lwc1	$f7,12($s2)
    lwc1	$f6,12($s1)
    add.s	$f6,$f6,$f7
    swc1	$f6,52($v0)
.L0d99aa00:
    # Line 6829
    li	$ra,1
    sw	$ra,12($v0)
    # Line 6835
    ld	$a2,0($sp)
    # Line 6832
    la	$a4,sub_0d9a0000
    # Line 6835
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 6826
    lw	$at,8($v0)
    # Line 6832
    addiu	$a4,$a4,-21856
    sw	$a4,4($v0)
    # Line 6835
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 6826
    ori	$at,$at,0x1a
    sw	$at,8($v0)
    # Line 6835
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 6838
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    li	$v0,1
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d99aa60:
    # Line 6813
    lwc1	$f10,12($s1)
    swc1	$f10,36($v0)
    # Line 6814
    lwc1	$f9,12($s2)
    b	.L0d99aa00
    swc1	$f9,52($v0)
.L0d99aa74:
    # Line 6838
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    # Line 6742
    move	$v0,$zero
    # Line 6838
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseyImageChainAddOpAcceptSignedDataFromHost

# Function: RenderFunc_AcceptSignedDataFromHost
# Declared: Line 6843 (Source lines: 6844-6991)
# Address: 0x0d99aaa0 - 0x0d99b040 (Size: 1440 bytes, Frame: 192)
.ent RenderFunc_AcceptSignedDataFromHost
RenderFunc_AcceptSignedDataFromHost:
    # Line 6844
    addiu	$sp,$sp,-320
    sd	$s1,264($sp)
    # Line 6846
    lw	$s1,4112($zero)
    # Line 6860
    sw	$zero,0($sp)
    sd	$zero,8($sp)
    # Line 6844
    sd	$s0,280($sp)
    # Line 6860
    addiu	$a4,$sp,8
    sw	$zero,56($a4)
    sd	$zero,48($a4)
    sd	$zero,40($a4)
    sd	$zero,32($a4)
    sd	$zero,24($a4)
    sd	$zero,16($a4)
    sd	$zero,8($a4)
    # Line 6868
    li	$a3,1
    # Line 6870
    sb	$a3,8($sp)
    # Line 6869
    sw	$zero,12($sp)
    # Line 6844
    sd	$s2,256($sp)
    # Line 6871
    lui	$s2,0x1
    # Line 6868
    sw	$a3,64($sp)
    # Line 6871
    addu	$s0,$s2,$s1
    lw	$a2,7708($s0)
    sw	$a2,40($sp)
    # Line 6872
    lw	$v1,7704($s0)
    sw	$v1,44($sp)
    # Line 6873
    lw	$v0,7708($s0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f12
    # Line 6844
    lui	$at,0x16
    sd	$s7,304($sp)
    addiu	$at,$at,-9488
    sd	$gp,224($sp)
    addu	$gp,$t9,$at
    # Line 6873
    cvt.s.l	$f12,$f12
    lwc1	$f13,_lit_3d800000
    sd	$s3,216($sp)
    # lw $t9, -17036($gp) # &ceil
    # Line 6844
    sd	$s5,272($sp)
    # Line 6873
    mul.s	$f12,$f12,$f13
    # Line 6844
    move	$s5,$a1
    sd	$s4,288($sp)
    move	$s4,$a0
    sd	$ra,296($sp)
    # Line 6873
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 6877
    li	$s3,2
    # Line 6878
    sw	$s3,52($sp)
    # Line 6877
    sw	$s3,48($sp)
    # Line 6873
    trunc.l.d	$f31,$f0
    # Line 6876
    li	$t9,12
    sw	$t9,60($sp)
    # Line 6875
    sw	$zero,56($sp)
    # Line 6873
    dmfc1	$ra,$f31
    sw	$ra,36($sp)
    # Line 6881
    lw	$t8,-22764($s0)
    sw	$t8,24($sp)
    lw	$s7,-22760($s0)
    sw	$s7,28($sp)
    lw	$t3,-22756($s0)
    sw	$t3,32($sp)
    # Line 6883
    lwc1	$f29,0($s5)
    swc1	$f29,72($sp)
    lwc1	$f27,4($s5)
    swc1	$f27,76($sp)
    lwc1	$f25,8($s5)
    # Line 6884
    mtc1	$zero,$f19
    # Line 6883
    swc1	$f25,80($sp)
    lwc1	$f23,12($s5)
    # Line 6885
    swc1	$f19,92($sp)
    # Line 6884
    swc1	$f19,88($sp)
    # Line 6883
    swc1	$f23,84($sp)
    # Line 6885
    lwc1	$f23,8($s5)
    lwc1	$f21,0($s5)
    # Line 6886
    c.lt.s $f21,$f23
    # Line 6885
    c.lt.s $f23,$f21
    # Line 6886
    mov.s	$f18,$f21
    movf.s	$f21,$f23,$fcc2
    movf.s	$f18,$f23,$fcc3
    sub.s	$f18,$f18,$f21
    swc1	$f18,96($sp)
    lwc1	$f23,12($s5)
    lwc1	$f21,4($s5)
    # Line 6887
    c.lt.s	$f21,$f23
    # Line 6886
    c.lt.s $f23,$f21
    # Line 6887
    mov.s	$f17,$f21
    movf.s	$f21,$f23,$fcc0
    # Line 6889
    swc1	$f18,120($sp)
    movf.s	$f17,$f23,$fcc1
    swc1	$f19,116($sp)
    swc1	$f19,112($sp)
    # Line 6887
    sub.s	$f17,$f17,$f21
    # Line 6889
    swc1	$f17,124($sp)
    # Line 6887
    swc1	$f17,100($sp)
    # Line 6890
    lwc1	$f16,16($s5)
    swc1	$f16,128($sp)
    lwc1	$f15,20($s5)
    swc1	$f15,132($sp)
    lwc1	$f14,24($s5)
    swc1	$f14,136($sp)
    lwc1	$f13,28($s5)
    swc1	$f13,140($sp)
    # Line 6897
    lw	$s7,-26968($s0)
    lw	$t1,-26976($s0)
    lw	$t2,-26980($s0)
    sd	$t2,248($sp)
    sd	$t1,240($sp)
    # Line 6899
    lw	$a5,26976($s0)
    # Line 6897
    lw	$a7,-26972($s0)
    # Line 6899
    lui	$a6,0x20
    # Line 6897
    sd	$a7,232($sp)
    # Line 6898
    lui	$t0,0x10
    # Line 6899
    or	$a5,$a5,$a6
    sw	$a5,26976($s0)
    # Line 6898
    or	$a7,$a7,$t0
    sw	$a7,-26972($s0)
    # Line 6902
    addiu	$a0,$sp,152
    # Line 6899
    sw	$s3,4120($zero)
    # Line 6902
    lw	$t3,-29432($s0)
    lw	$t8,-29436($s0)
    lw	$t1,-29440($s0)
    lw	$t0,-29444($s0)
    lw	$a7,-29448($s0)
    lw	$a6,-29452($s0)
    lw	$t2,-29456($s0)
    lw	$at,-29460($s0)
    sd	$at,208($sp)
    sw	$t2,4($a0)
    sw	$a6,8($a0)
    sw	$a7,12($a0)
    sw	$t0,16($a0)
    sw	$t1,20($a0)
    sw	$t8,24($a0)
    sw	$t3,28($a0)
    sw	$at,152($sp)
    # Line 6904
    lwc1	$f1,_lit_45800000
    lwc1	$f8,24($s4)
    mul.s	$f8,$f8,$f1
    trunc.w.s	$f8,$f8
    ld	$ra,208($sp)
    mfc1	$t9,$f8
    lui	$a0,0xffff
    and	$ra,$a0,$ra
    andi	$t9,$t9,0xffff
    or	$t9,$t9,$ra
    sw	$t9,-29460($s0)
    # Line 6905
    lwc1	$f7,40($s4)
    mul.s	$f7,$f7,$f1
    trunc.w.s	$f7,$f7
    mfc1	$s5,$f7
    and	$t2,$a0,$t2
    andi	$s5,$s5,0xffff
    or	$t2,$s5,$t2
    sw	$t2,-29456($s0)
    # Line 6906
    lwc1	$f6,28($s4)
    mul.s	$f6,$f6,$f1
    trunc.w.s	$f6,$f6
    mfc1	$a5,$f6
    and	$a6,$a0,$a6
    andi	$a5,$a5,0xffff
    or	$a5,$a5,$a6
    sw	$a5,-29452($s0)
    # Line 6907
    lwc1	$f5,44($s4)
    mul.s	$f5,$f5,$f1
    trunc.w.s	$f5,$f5
    mfc1	$a4,$f5
    and	$a5,$a0,$a7
    andi	$a4,$a4,0xffff
    or	$a4,$a4,$a5
    sw	$a4,-29448($s0)
    # Line 6908
    lwc1	$f4,32($s4)
    mul.s	$f4,$f4,$f1
    trunc.w.s	$f4,$f4
    mfc1	$a3,$f4
    and	$a4,$a0,$t0
    andi	$a3,$a3,0xffff
    or	$a3,$a3,$a4
    sw	$a3,-29444($s0)
    # Line 6909
    lwc1	$f3,48($s4)
    mul.s	$f3,$f3,$f1
    trunc.w.s	$f3,$f3
    mfc1	$a2,$f3
    and	$a3,$a0,$t1
    andi	$a2,$a2,0xffff
    or	$a2,$a2,$a3
    sw	$a2,-29440($s0)
    # Line 6910
    lwc1	$f2,36($s4)
    mul.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    and	$a2,$a0,$t8
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a2
    sw	$a1,-29436($s0)
    # Line 6911
    lwc1	$f0,52($s4)
    mul.s	$f0,$f0,$f1
    # Line 6913
    lw	$v0,26976($s0)
    # Line 6911
    trunc.w.s	$f0,$f0
    # Line 6915
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 6903
    lw	$s5,-29464($s0)
    # Line 6911
    mfc1	$v1,$f0
    # Line 6913
    or	$v0,$s2,$v0
    sw	$v0,26976($s0)
    # Line 6911
    and	$a0,$a0,$t3
    # Line 6912
    sw	$s3,-29464($s0)
    # Line 6911
    andi	$v1,$v1,0xffff
    # Line 6915
    move	$a4,$zero
    # Line 6911
    or	$v1,$v1,$a0
    sw	$v1,-29432($s0)
    # Line 6915
    li	$a3,1
    addiu	$a2,$sp,72
    # Line 6913
    sw	$s3,4120($zero)
    # Line 6915
    addiu	$a0,$sp,8
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a1,68($s4)
    # Line 6919
    sw	$s7,-26968($s0)
    ld	$s7,304($sp)
    ld	$ra,248($sp)
    ld	$at,240($sp)
    ld	$v0,232($sp)
    sw	$v0,-26972($s0)
    sw	$at,-26976($s0)
    # Line 6920
    addiu	$a0,$sp,152
    # Line 6919
    sw	$ra,-26980($s0)
    # Line 6920
    lw	$v1,152($sp)
    lw	$a2,4($a0)
    lw	$a5,8($a0)
    lw	$a6,12($a0)
    lw	$a7,16($a0)
    lw	$t0,20($a0)
    lw	$t1,24($a0)
    lw	$t2,28($a0)
    sw	$t2,-29432($s0)
    sw	$t1,-29436($s0)
    sw	$t0,-29440($s0)
    sw	$a7,-29444($s0)
    sw	$a6,-29448($s0)
    sw	$a5,-29452($s0)
    sw	$a2,-29456($s0)
    sw	$v1,-29460($s0)
    # Line 6922
    lw	$t9,26976($s0)
    # Line 6921
    sw	$s5,-29464($s0)
    # Line 6922
    lui	$ra,0x21
    or	$t9,$t9,$ra
    sw	$t9,26976($s0)
    sw	$s3,4120($zero)
    # Line 6938
    lw	$a1,-4176($s0)
    # Line 6936
    lw	$t3,-26596($s0)
    # Line 6938
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    li	$a5,1
    addiu	$a4,$sp,0
    # Line 6937
    lw	$t8,-26592($s0)
    # Line 6938
    move	$a3,$zero
    move	$a2,$zero
    # Line 6937
    sd	$t8,200($sp)
    # Line 6938
    move	$a0,$s1
    jal	__glOdysseyOpenPMObjReference
    sd	$t3,192($sp)
    beqz	$v0,.L0d99b008
    # Line 6958
    nop	# was lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    # Line 6952
    lw	$a5,0($sp)
    # Line 6953
    lw	$a4,-2120($s0)
    sw	$a4,-26592($s0)
    # Line 6956
    lui	$a3,0x1
    # Line 6952
    sw	$a5,-26596($s0)
    # Line 6956
    ori	$v1,$a3,0x443
    sw	$v1,0($s2)
    li	$v0,250
    sw	$v0,0($s2)
    ori	$at,$a3,0x46
    sw	$at,0($s2)
    sw	$at,0($s2)
    ori	$a3,$a3,0x842
    sw	$a3,0($s2)
    lw	$a2,-26596($s0)
    sw	$a2,0($s2)
    lw	$a1,-26592($s0)
    sw	$a1,0($s2)
    sw	$v1,0($s2)
    li	$a0,150
    sw	$a0,0($s2)
    sw	$at,0($s2)
    sw	$at,0($s2)
    sw	$at,0($s2)
    sw	$at,0($s2)
    sw	$zero,-26576($s0)
    sw	$v1,0($s2)
    sw	$v0,0($s2)
    sw	$at,0($s2)
    # Line 6958
    move	$a3,$zero
    move	$a2,$zero
    # Line 6956
    sw	$at,0($s2)
    # Line 6958
    move	$a0,$s1
    jal	__glOdysseyClosePMObjReference
    lw	$a1,-4176($s0)
    beqz	$v0,.L0d99afd4
    # Line 6965
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s2,192($sp)
    ld	$s5,200($sp)
    # Line 6970
    lw	$a7,31744($s1)
    sd	$a7,184($sp)
    # Line 6971
    ori	$a7,$a7,0x40
    sw	$a7,31744($s1)
    # Line 6972
    lw	$a6,26976($s0)
    # Line 6974
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    # Line 6972
    ori	$a6,$a6,0x4
    sw	$a6,26976($s0)
    # Line 6974
    li	$a3,1
    addiu	$a2,$sp,112
    # Line 6972
    sw	$s3,4120($zero)
    # Line 6974
    addiu	$a1,$sp,8
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a0,72($s4)
    # Line 6991
    ld	$gp,224($sp)
    # Line 6986
    sw	$s2,-26596($s0)
    # Line 6991
    ld	$s2,256($sp)
    ld	$s4,288($sp)
    # Line 6987
    sw	$s5,-26592($s0)
    # Line 6991
    ld	$s5,272($sp)
    # Line 6988
    ld	$t1,184($sp)
    sw	$t1,31744($s1)
    # Line 6991
    ld	$s1,264($sp)
    # Line 6989
    lw	$t0,26976($s0)
    # Line 6991
    ld	$ra,296($sp)
    # Line 6989
    ori	$t0,$t0,0x4
    sw	$t0,26976($s0)
    # Line 6991
    ld	$s0,280($sp)
    li	$v0,1
    # Line 6989
    sw	$s3,4120($zero)
    # Line 6991
    ld	$s3,216($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d99afd4:
    # Line 6965
    jalr	$t9
    li	$a0,1285
    # Line 6991
    ld	$gp,224($sp)
    ld	$s0,280($sp)
    ld	$s1,264($sp)
    ld	$s2,256($sp)
    ld	$ra,296($sp)
    ld	$s3,216($sp)
    # Line 6966
    move	$v0,$zero
    # Line 6991
    ld	$s4,288($sp)
    ld	$s5,272($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d99b008:
    # Line 6948
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 6991
    ld	$gp,224($sp)
    ld	$s0,280($sp)
    ld	$s1,264($sp)
    ld	$s2,256($sp)
    ld	$ra,296($sp)
    ld	$s3,216($sp)
    # Line 6949
    move	$v0,$zero
    # Line 6991
    ld	$s4,288($sp)
    ld	$s5,272($sp)
    jr	$ra
    addiu	$sp,$sp,320
.end RenderFunc_AcceptSignedDataFromHost

# Function: ImageChainAddOpColorMatrix
# Declared: Line 6998 (Source lines: 7000-7130)
# Address: 0x0d99b040 - 0x0d99b3d8 (Size: 920 bytes, Frame: 192)
.ent ImageChainAddOpColorMatrix
ImageChainAddOpColorMatrix:
    # Line 7005
    lw	$at,4112($zero)
    # Line 7000
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    sd	$a2,8($sp)
    sd	$a3,16($sp)
    # Line 7008
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 7005
    sd	$at,24($sp)
    sd	$ra,40($sp)
    # Line 7008
    addiu	$t9,$t9,-3824
    # Line 7000
    sd	$s1,32($sp)
    move	$s1,$a1
    # Line 7008
    jal	sub_0d990000
    sd	$s0,48($sp)
    # Line 7130
    ld	$ra,40($sp)
    # Line 7008
    bnez	$v0,.L0d99b094
    move	$s0,$v0
    # Line 7011
    move	$v0,$zero
    ld	$s0,48($sp)
    # Line 7130
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99b094:
    # Line 7013
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-3664
    move	$a0,$v0
    jal	sub_0d990000
    li	$a1,1
    # Line 7018
    li	$at,9
    # Line 7013
    lw	$ra,20($s0)
    # Line 7084
    ld	$a5,8($sp)
    # Line 7018
    li	$a1,4
    move	$a7,$zero
    # Line 7043
    ldc1	$f5,_lit8_3ff0000000000000
    # Line 7018
    move	$v0,$s1
    addiu	$t1,$s1,16
    lwc1	$f4,_lit_3f800000
    # Line 7013
    beqz	$ra,.L0d99b3c0
    # Line 7018
    move	$a6,$t1
    sw	$at,0($s0)
.L0d99b0d8:
    lwc1	$f1,0($v0)
    abs.s	$f1,$f1
    lwc1	$f7,4($v0)
    c.lt.s $f4,$f1
    abs.s	$f7,$f7
    movf.s	$f1,$f4,$fcc3
    lwc1	$f0,8($v0)
    c.lt.s $f1,$f7
    abs.s	$f0,$f0
    movf.s	$f7,$f1,$fcc2
    lwc1	$f6,12($v0)
    c.lt.s $f7,$f0
    abs.s	$f6,$f6
    movf.s	$f0,$f7,$fcc1
    c.lt.s	$f0,$f6
    movf.s	$f6,$f0,$fcc0
    # Line 7030
    addiu	$a7,$a7,1
    # Line 7031
    addiu	$t0,$v0,16
    # Line 7030
    addiu	$a6,$a6,16
    move	$v0,$t0
    mov.s	$f4,$f6
    bne	$a7,$a1,.L0d99b0d8
    # Line 7043
    lwc1	$f2,_lit_3f800000
    cvt.d.s	$f3,$f6
    c.le.d $f3,$f5
    mov.s	$f5,$f6
    move	$a6,$zero
    movt.s	$f5,$f2,$fcc4
    move	$v0,$s1
    # Line 7056
    dmtc1	$zero,$f4
    # Line 7043
    swc1	$f5,64($s0)
.L0d99b154:
    # Line 7046
    lwc1	$f9,0($v0)
    div.s	$f9,$f9,$f5
    lw	$a2,20($s0)
    addu	$a2,$a2,$a6
    swc1	$f9,0($a2)
    # Line 7047
    lwc1	$f8,16($v0)
    div.s	$f8,$f8,$f5
    lw	$a1,20($s0)
    addu	$a1,$a1,$a6
    swc1	$f8,4($a1)
    # Line 7048
    lwc1	$f7,32($v0)
    div.s	$f7,$f7,$f5
    lw	$a0,20($s0)
    addu	$a0,$a0,$a6
    swc1	$f7,8($a0)
    # Line 7049
    lwc1	$f6,48($v0)
    div.s	$f6,$f6,$f5
    lw	$v1,20($s0)
    # Line 7045
    addiu	$v0,$v0,4
    # Line 7049
    addu	$v1,$v1,$a6
    # Line 7045
    addiu	$a6,$a6,148
    bne	$v0,$t1,.L0d99b154
    # Line 7049
    swc1	$f6,12($v1)
    # Line 7056
    sb	$zero,61($s0)
    move	$a1,$zero
    move	$v0,$s1
    # Line 7079
    ld	$a6,16($sp)
.L0d99b1c0:
    # Line 7056
    lwc1	$f10,0($v0)
    cvt.d.s	$f10,$f10
    c.lt.d $f10,$f4
    bc1t .L0d99b220
    # Line 7060
    li	$a3,1
    # Line 7061
    lwc1	$f11,16($v0)
    cvt.d.s	$f11,$f11
    c.lt.d $f11,$f4
    bc1t .L0d99b394
    nop
    # Line 7065
    lwc1	$f12,32($v0)
    cvt.d.s	$f12,$f12
    c.lt.d $f12,$f4
    bc1t .L0d99b3a4
    # Line 7068
    li	$v1,1
    # Line 7069
    lwc1	$f13,48($v0)
    cvt.d.s	$f13,$f13
    c.lt.d	$f13,$f4
    bc1t	.L0d99b3b0
    # Line 7075
    addiu	$v0,$v0,4
    bne	$v0,$t1,.L0d99b1c0
    nop
    b	.L0d99b22c
    # Line 7079
    lwc1	$f8,0($a6)
.L0d99b220:
    # Line 7060
    sb	$a3,61($s0)
    move	$a1,$a3
.L0d99b228:
    # Line 7079
    lwc1	$f8,0($a6)
.L0d99b22c:
    div.s	$f8,$f8,$f5
    swc1	$f8,40($s0)
    # Line 7080
    lwc1	$f7,4($a6)
    div.s	$f7,$f7,$f5
    swc1	$f7,44($s0)
    # Line 7081
    lwc1	$f6,8($a6)
    div.s	$f6,$f6,$f5
    swc1	$f6,48($s0)
    # Line 7082
    lwc1	$f9,12($a6)
    div.s	$f9,$f9,$f5
    swc1	$f9,52($s0)
    # Line 7084
    lwc1	$f4,0($a5)
    swc1	$f4,24($s0)
    # Line 7085
    lwc1	$f16,4($a5)
    swc1	$f16,28($s0)
    # Line 7086
    lwc1	$f15,8($a5)
    swc1	$f15,32($s0)
    # Line 7087
    lwc1	$f14,12($a5)
    ld	$a4,24($sp)
    swc1	$f14,36($s0)
    lw	$a4,31600($a4)
    dsll32	$a4,$a4,0xc
    bltz	$a4,.L0d99b2d4
    nop
    beqz	$a1,.L0d99b2d4
    # Line 7092
    ldc1	$f13,_lit8_3fe0000000000000
    # Line 7095
    cvt.d.s	$f14,$f9
    # Line 7094
    cvt.d.s	$f12,$f6
    # Line 7093
    cvt.d.s	$f11,$f7
    # Line 7095
    mul.d	$f14,$f14,$f13
    # Line 7092
    cvt.d.s	$f10,$f8
    # Line 7094
    mul.d	$f12,$f12,$f13
    # Line 7093
    mul.d	$f11,$f11,$f13
    # Line 7095
    cvt.s.d	$f14,$f14
    # Line 7092
    mul.d	$f10,$f10,$f13
    # Line 7094
    cvt.s.d	$f12,$f12
    # Line 7095
    swc1	$f14,52($s0)
    # Line 7093
    cvt.s.d	$f11,$f11
    # Line 7094
    swc1	$f12,48($s0)
    # Line 7092
    cvt.s.d	$f10,$f10
    # Line 7093
    swc1	$f11,44($s0)
    # Line 7092
    swc1	$f10,40($s0)
.L0d99b2d4:
    # Line 7100
    lw	$ra,20($s0)
    swc1	$f4,36($ra)
    # Line 7101
    lw	$t9,20($s0)
    lwc1	$f23,28($s0)
    swc1	$f23,184($t9)
    # Line 7102
    lw	$t8,20($s0)
    lwc1	$f21,32($s0)
    swc1	$f21,332($t8)
    # Line 7103
    lw	$t3,20($s0)
    lwc1	$f19,36($s0)
    swc1	$f19,480($t3)
    # Line 7104
    lw	$t2,20($s0)
    lwc1	$f18,40($s0)
    swc1	$f18,40($t2)
    # Line 7105
    lw	$t1,20($s0)
    lwc1	$f17,44($s0)
    swc1	$f17,188($t1)
    # Line 7106
    lw	$t0,20($s0)
    lwc1	$f16,48($s0)
    # Line 7111
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 7106
    swc1	$f16,336($t0)
    # Line 7107
    lw	$a7,20($s0)
    lwc1	$f15,52($s0)
    ld	$s1,0($sp)
    swc1	$f15,484($a7)
    # Line 7111
    jal	__glOdysseyProgramTexFilter
    lw	$a0,20($s0)
    # Line 7120
    lw	$ra,8($s0)
    # Line 7114
    la	$at,sub_0d9a0000
    # Line 7127
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 7114
    addiu	$at,$at,-19488
    sw	$at,4($s0)
    # Line 7124
    li	$at,1
    sw	$at,12($s0)
    # Line 7127
    addiu	$t9,$t9,-2832
    move	$a1,$s0
    # Line 7120
    ori	$ra,$ra,0x3c
    sw	$ra,8($s0)
    # Line 7127
    move	$a0,$s1
    jal	sub_0d990000
    lw	$a2,8($s1)
    # Line 7130
    ld	$ra,40($sp)
    li	$v0,1
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99b394:
    # Line 7064
    li	$v0,1
    sb	$v0,61($s0)
    # Line 7065
    b	.L0d99b228
    # Line 7064
    li	$a1,1
.L0d99b3a4:
    # Line 7068
    sb	$v1,61($s0)
    # Line 7069
    b	.L0d99b228
    # Line 7068
    li	$a1,1
.L0d99b3b0:
    # Line 7072
    li	$a0,1
    sb	$a0,61($s0)
    # Line 7073
    b	.L0d99b228
    # Line 7072
    li	$a1,1
.L0d99b3c0:
    # Line 7130
    ld	$ra,40($sp)
    # Line 7015
    move	$v0,$zero
    ld	$s0,48($sp)
    # Line 7130
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end ImageChainAddOpColorMatrix

# Function: RenderFunc_ColorMatrix
# Declared: Line 7134 (Source lines: 7135-7709)
# Address: 0x0d99b3e0 - 0x0d99ca0c (Size: 5676 bytes, Frame: 240)
.ent RenderFunc_ColorMatrix
RenderFunc_ColorMatrix:
    # Line 7135
    addiu	$sp,$sp,-1264
    sd	$ra,1200($sp)
    sd	$s0,1112($sp)
    sd	$s4,1072($sp)
    sd	$s7,1064($sp)
    sd	$s3,1096($sp)
    # Line 7137
    lwc1	$f7,12($a1)
    li	$a5,1
    lwc1	$f5,4($a1)
    li	$a3,1
    li	$a4,1
    lwc1	$f6,8($a1)
    li	$s3,2
    # Line 7135
    move	$s7,$a1
    # Line 7137
    lwc1	$f4,0($a1)
    # Line 7135
    move	$s4,$a0
    # Line 7137
    li	$t1,1
    # Line 7135
    sd	$s1,1080($sp)
    # Line 7137
    c.lt.s $f5,$f7
    lui	$s1,0x1
    move	$a6,$t1
    lbu	$at,61($a0)
    c.lt.s $f7,$f5
    # Line 7135
    lui	$v0,0x16
    sd	$s6,1088($sp)
    # Line 7137
    c.lt.s $f4,$f6
    movf	$a6,$zero,$fcc3
    lw	$s6,4112($zero)
    # Line 7135
    addiu	$v0,$v0,-11856
    # Line 7137
    movf	$a4,$zero,$fcc2
    sd	$gp,1104($sp)
    # Line 7135
    addu	$gp,$t9,$v0
    # Line 7137
    c.lt.s	$f6,$f4
    movf	$a3,$zero,$fcc1
    addu	$s0,$s1,$s6
    lwc1	$f8,_lit_3d800000
    beqz	$at,.L0d99c0d4
    movf	$a5,$zero,$fcc0
    # Line 7159
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    # Line 7163
    li	$t8,1
    # Line 7166
    sb	$t8,11($sp)
    # Line 7165
    sb	$t8,0($sp)
    # Line 7164
    sw	$zero,4($sp)
    # Line 7163
    sw	$t8,56($sp)
    # Line 7167
    lw	$t3,7708($s0)
    sw	$t3,32($sp)
    # Line 7168
    lw	$t2,7704($s0)
    sw	$t2,36($sp)
    # Line 7169
    lw	$t1,7708($s0)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f12
    # Line 7159
    mov.s	$f14,$f5
    movz.s	$f5,$f7,$a4
    # Line 7169
    cvt.s.l	$f12,$f12
    # Line 7158
    mov.s	$f13,$f4
    movz.s	$f4,$f6,$a3
    sdc1	$f5,856($sp)
    # Line 7169
    # lw $t9, -17036($gp) # &ceil
    movz.s	$f13,$f6,$a5
    sdc1	$f4,864($sp)
    mul.s	$f12,$f12,$f8
    movz.s	$f14,$f7,$a6
    sdc1	$f13,872($sp)
    sdc1	$f14,848($sp)
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 7174
    sw	$s3,44($sp)
    # Line 7173
    sw	$s3,40($sp)
    # Line 7169
    trunc.l.d	$f13,$f0
    # Line 7172
    li	$a4,12
    sw	$a4,52($sp)
    # Line 7171
    sw	$zero,48($sp)
    # Line 7169
    dmfc1	$a5,$f13
    sw	$a5,28($sp)
    # Line 7177
    lw	$a3,-22764($s0)
    sw	$a3,16($sp)
    lw	$a2,-22760($s0)
    sw	$a2,20($sp)
    lw	$a1,-22756($s0)
    addiu	$a0,$sp,64
    sd	$zero,64($sp)
    sw	$zero,56($a0)
    sd	$zero,48($a0)
    sd	$zero,40($a0)
    sd	$zero,32($a0)
    sd	$zero,24($a0)
    sd	$zero,16($a0)
    sd	$zero,8($a0)
    # Line 7182
    li	$v1,1
    # Line 7185
    sb	$v1,75($sp)
    # Line 7184
    sb	$v1,64($sp)
    # Line 7183
    sw	$zero,68($sp)
    # Line 7182
    sw	$v1,120($sp)
    # Line 7177
    sw	$a1,24($sp)
    # Line 7186
    lw	$v0,7708($s0)
    sw	$v0,96($sp)
    # Line 7187
    lw	$at,7704($s0)
    sw	$at,100($sp)
    # Line 7188
    lw	$ra,7708($s0)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f12
    cvt.s.l	$f12,$f12
    lwc1	$f13,_lit_3d800000
    # lw $t9, -17036($gp) # &ceil
    mul.s	$f12,$f12,$f13
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 7193
    sw	$s3,108($sp)
    # Line 7192
    sw	$s3,104($sp)
    # Line 7188
    trunc.l.d	$f14,$f0
    # Line 7191
    li	$t1,12
    sw	$t1,116($sp)
    # Line 7190
    sw	$zero,112($sp)
    # Line 7188
    dmfc1	$t2,$f14
    sw	$t2,92($sp)
    # Line 7196
    lw	$t0,-22752($s0)
    sw	$t0,80($sp)
    lw	$a7,-22748($s0)
    sw	$a7,84($sp)
    lw	$a6,-22744($s0)
    # Line 7206
    addiu	$a0,$sp,128
    # Line 7196
    sw	$a6,88($sp)
    ldc1	$f4,848($sp)
    ldc1	$f5,856($sp)
    ldc1	$f6,864($sp)
    ldc1	$f7,872($sp)
    sdc1	$f22,1136($sp)
    sd	$s5,1192($sp)
    # Line 7206
    lw	$t8,-29460($s0)
    lw	$t1,-29432($s0)
    lw	$a6,-29436($s0)
    lw	$t3,-29440($s0)
    lw	$a5,-29444($s0)
    lw	$t0,-29448($s0)
    lw	$t2,-29452($s0)
    lw	$a7,-29456($s0)
    sw	$a7,4($a0)
    sw	$t2,8($a0)
    sw	$t0,12($a0)
    sw	$a5,16($a0)
    sw	$t3,20($a0)
    sw	$a6,24($a0)
    sw	$t1,28($a0)
    sw	$t8,128($sp)
    # Line 7226
    sub.s	$f16,$f7,$f6
    sdc1	$f16,896($sp)
    # Line 7212
    lui	$s5,0xffff
    and	$a2,$s5,$t8
    # Line 7207
    lw	$t8,-29464($s0)
    # Line 7221
    sw	$s3,-29464($s0)
    # Line 7219
    and	$t9,$s5,$t1
    sw	$t9,-29432($s0)
    # Line 7218
    and	$ra,$s5,$t3
    sw	$ra,-29440($s0)
    # Line 7217
    and	$at,$s5,$t0
    sw	$at,-29448($s0)
    # Line 7216
    and	$v0,$s5,$a7
    sw	$v0,-29456($s0)
    # Line 7215
    and	$v1,$s5,$a6
    # Line 7214
    and	$a0,$s5,$a5
    # Line 7215
    ori	$v1,$v1,0x7ff
    sw	$v1,-29436($s0)
    # Line 7213
    and	$a1,$s5,$t2
    # Line 7214
    ori	$a0,$a0,0x7ff
    sw	$a0,-29444($s0)
    # Line 7213
    ori	$a1,$a1,0x7ff
    sw	$a1,-29452($s0)
    # Line 7222
    lw	$t3,26976($s0)
    # Line 7212
    ori	$a2,$a2,0x7ff
    sw	$a2,-29460($s0)
    # Line 7222
    or	$t3,$s1,$t3
    sw	$t3,26976($s0)
    sw	$s3,4120($zero)
    # Line 7226
    sub.s	$f15,$f5,$f4
    # Line 7225
    lwc1	$f21,0($s7)
    # Line 7226
    sdc1	$f15,904($sp)
    # Line 7225
    swc1	$f21,160($sp)
    lwc1	$f19,4($s7)
    # Line 7207
    sd	$t8,1056($sp)
    # Line 7225
    swc1	$f19,164($sp)
    lwc1	$f18,8($s7)
    # Line 7229
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 7225
    swc1	$f18,168($sp)
    lwc1	$f17,12($s7)
    # Line 7226
    mtc1	$zero,$f22
    swc1	$f15,188($sp)
    swc1	$f16,184($sp)
    swc1	$f22,180($sp)
    swc1	$f22,176($sp)
    # Line 7229
    move	$a3,$zero
    addiu	$a2,$sp,160
    # Line 7225
    swc1	$f17,172($sp)
    # Line 7229
    addiu	$a0,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s4)
    # Line 7234
    ld	$a5,1056($sp)
    # Line 7235
    addiu	$a0,$s0,-29460
    addiu	$a1,$sp,128
    # Line 7234
    sw	$a5,-29464($s0)
    sd	$s2,1184($sp)
    # Line 7235
    lw	$a6,128($sp)
    lw	$a7,4($a1)
    lw	$t0,8($a1)
    lw	$t1,12($a1)
    lw	$t2,16($a1)
    lw	$t3,20($a1)
    lw	$t8,24($a1)
    lw	$t9,28($a1)
    sw	$t9,-29432($s0)
    sw	$t8,-29436($s0)
    sw	$t3,-29440($s0)
    sw	$t2,-29444($s0)
    sw	$t1,-29448($s0)
    sw	$t0,-29452($s0)
    sw	$a7,-29456($s0)
    sw	$a6,-29460($s0)
    # Line 7236
    lw	$t0,26976($s0)
    or	$t0,$s1,$t0
    sw	$t0,26976($s0)
    sw	$s3,4120($zero)
    # Line 7251
    lw	$s2,-26972($s0)
    # Line 7252
    lw	$ra,31940($s6)
    lw	$a1,31952($s6)
    # Line 7251
    lw	$a6,-26976($s0)
    # Line 7252
    lw	$a4,31964($s6)
    lw	$a3,31960($s6)
    lw	$a2,31956($s6)
    lw	$v1,31948($s6)
    lw	$v0,31944($s6)
    # Line 7251
    lw	$a5,-26980($s0)
    lw	$a7,-26968($s0)
    sd	$a7,1048($sp)
    # Line 7252
    addiu	$at,$sp,200
    # Line 7251
    sd	$a5,1032($sp)
    # Line 7252
    sw	$v0,4($at)
    sw	$v1,8($at)
    sw	$a2,16($at)
    sw	$a3,20($at)
    sw	$a4,24($at)
    # Line 7251
    sd	$a6,1040($sp)
    # Line 7252
    sw	$a1,12($at)
    # Line 7253
    addiu	$a1,$sp,232
    addiu	$a6,$s0,-29720
    # Line 7252
    sw	$ra,200($sp)
    # Line 7253
    ld	$v0,-29664($s0)
    sd	$v0,56($a1)
    ld	$at,-29672($s0)
    sd	$at,48($a1)
    ld	$ra,-29680($s0)
    sd	$ra,40($a1)
    ld	$t9,-29688($s0)
    sd	$t9,32($a1)
    ld	$t8,-29696($s0)
    sd	$t8,24($a1)
    ld	$t3,-29704($s0)
    sd	$t3,16($a1)
    ld	$t2,-29712($s0)
    sd	$t2,8($a1)
    ld	$t1,-29720($s0)
    sd	$t1,232($sp)
    # Line 7255
    lw	$a3,-29464($s0)
    # Line 7256
    addiu	$a1,$sp,296
    # Line 7254
    lw	$a4,-29724($s0)
    sd	$a4,1208($sp)
    sd	$a3,1216($sp)
    # Line 7256
    lw	$v1,0($a0)
    lw	$t9,28($a0)
    lw	$t8,24($a0)
    lw	$t3,20($a0)
    lw	$t2,16($a0)
    lw	$t1,12($a0)
    lw	$t0,8($a0)
    lw	$a2,4($a0)
    sw	$a2,4($a1)
    sw	$t0,8($a1)
    sw	$t1,12($a1)
    sw	$t2,16($a1)
    sw	$t3,20($a1)
    sw	$t8,24($a1)
    sw	$t9,28($a1)
    sw	$v1,296($sp)
    # Line 7257
    lw	$t3,-29324($s0)
    lw	$t2,-29328($s0)
    lw	$t8,-29332($s0)
    # Line 7260
    lui	$at,0x10
    # Line 7261
    lw	$ra,26976($s0)
    lui	$t1,0x20
    # Line 7260
    or	$at,$s2,$at
    sw	$at,-26972($s0)
    # Line 7261
    or	$ra,$t1,$ra
    sw	$ra,26976($s0)
    sw	$s3,4120($zero)
    # Line 7268
    lw	$t9,31956($s6)
    # Line 7269
    lui	$a1,0x4
    # Line 7268
    or	$t9,$s1,$t9
    # Line 7269
    or	$t9,$a1,$t9
    # Line 7270
    ori	$t9,$t9,0x4000
    sw	$t9,31956($s6)
    # Line 7271
    lw	$t0,26976($s0)
    ori	$t0,$t0,0x200
    sw	$t0,26976($s0)
    sw	$s3,4120($zero)
    addiu	$a5,$a6,4
    li	$a0,0x8
    # Line 7275
    lw	$a7,20($s4)
    li	$a4,16
    move	$a3,$zero
    addiu	$t0,$a7,628
    addiu	$a7,$a7,624
    nop
    nop
.L0d99b8e0:
    addu	$v1,$a3,$a7
    addu	$a2,$a3,$a6
    lw	$v1,0($v1)
    addiu	$a4,$a4,-2
    addu	$v0,$a3,$t0
    sw	$v1,0($a2)
    addu	$v1,$a3,$a5
    lw	$v0,0($v0)
    addu	$a3,$a3,$a0
    bgtz	$a4,.L0d99b8e0
    sw	$v0,0($v1)
    # Line 7276
    sw	$s3,-29724($s0)
    # Line 7277
    lw	$a0,20($s4)
    sd	$t8,1224($sp)
    sd	$t3,1232($sp)
    sd	$t2,1240($sp)
    lw	$t9,688($a0)
    sw	$t9,-29460($s0)
    lw	$t8,692($a0)
    sw	$t8,-29456($s0)
    lw	$t3,696($a0)
    sw	$t3,-29452($s0)
    lw	$t2,700($a0)
    sw	$t2,-29448($s0)
    lw	$t1,704($a0)
    sw	$t1,-29444($s0)
    lw	$t0,708($a0)
    sw	$t0,-29440($s0)
    lw	$a7,712($a0)
    sw	$a7,-29436($s0)
    lui	$a6,0x3
    lw	$a2,716($a0)
    ori	$a6,$a6,0x8000
    sw	$a2,-29432($s0)
    # Line 7286
    ldc1	$f23,896($sp)
    ldc1	$f25,904($sp)
    # Line 7280
    lw	$a7,26976($s0)
    # Line 7278
    sw	$s3,-29464($s0)
    # Line 7279
    lw	$t0,20($s4)
    # Line 7289
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 7279
    lw	$t2,2900($t0)
    sw	$t2,-29332($s0)
    lw	$t1,2904($t0)
    sw	$t1,-29328($s0)
    lw	$t0,2908($t0)
    # Line 7280
    or	$a7,$a6,$a7
    sw	$a7,26976($s0)
    # Line 7279
    sw	$t0,-29324($s0)
    # Line 7280
    sw	$s3,4120($zero)
    # Line 7286
    swc1	$f25,356($sp)
    swc1	$f23,352($sp)
    swc1	$f22,348($sp)
    swc1	$f22,344($sp)
    # Line 7285
    swc1	$f25,340($sp)
    # Line 7289
    move	$a3,$zero
    # Line 7285
    swc1	$f23,336($sp)
    # Line 7289
    addiu	$a2,$sp,328
    addiu	$a1,$sp,0
    # Line 7285
    swc1	$f22,332($sp)
    # Line 7289
    addiu	$a0,$sp,64
    jal	__glOdysseyImageMovePixelsTexture
    # Line 7285
    swc1	$f22,328($sp)
    # Line 7293
    sw	$s2,-26972($s0)
    # Line 7294
    lw	$v1,200($sp)
    # Line 7293
    ld	$a2,1032($sp)
    ld	$a1,1040($sp)
    ld	$a0,1048($sp)
    sw	$a0,-26968($s0)
    sw	$a1,-26976($s0)
    sw	$a2,-26980($s0)
    # Line 7294
    sw	$v1,31940($s6)
    addiu	$t3,$sp,200
    lw	$v0,24($t3)
    lw	$at,20($t3)
    lw	$ra,16($t3)
    lw	$t9,12($t3)
    lw	$t8,8($t3)
    lw	$t3,4($t3)
    sw	$v0,31964($s6)
    sw	$at,31960($s6)
    sw	$ra,31956($s6)
    sw	$t9,31952($s6)
    sw	$t8,31948($s6)
    # Line 7295
    addiu	$a3,$sp,232
    # Line 7294
    sw	$t3,31944($s6)
    ld	$a0,1208($sp)
    ld	$a1,1216($sp)
    # Line 7295
    ld	$a7,232($sp)
    ld	$t0,8($a3)
    ld	$t1,16($a3)
    ld	$t2,24($a3)
    ld	$t3,32($a3)
    ld	$t8,40($a3)
    ld	$t9,48($a3)
    ld	$ra,56($a3)
    sd	$ra,-29664($s0)
    sd	$t9,-29672($s0)
    sd	$t8,-29680($s0)
    sd	$t3,-29688($s0)
    sd	$t2,-29696($s0)
    sd	$t1,-29704($s0)
    sd	$t0,-29712($s0)
    sd	$a7,-29720($s0)
    # Line 7297
    sw	$a1,-29464($s0)
    # Line 7298
    addiu	$a3,$sp,296
    # Line 7296
    sw	$a0,-29724($s0)
    ld	$a7,1240($sp)
    ld	$t0,1224($sp)
    ld	$t1,1232($sp)
    # Line 7298
    lw	$at,296($sp)
    lw	$v0,4($a3)
    lw	$v1,8($a3)
    lw	$a0,12($a3)
    lw	$a1,16($a3)
    lw	$a2,20($a3)
    lw	$t3,24($a3)
    lw	$t8,28($a3)
    sw	$t8,-29432($s0)
    sw	$t3,-29436($s0)
    sw	$a2,-29440($s0)
    sw	$a1,-29444($s0)
    sw	$a0,-29448($s0)
    sw	$v1,-29452($s0)
    lui	$t2,0x23
    sw	$v0,-29456($s0)
    ori	$t2,$t2,0x8200
    sw	$at,-29460($s0)
    # Line 7299
    sw	$t1,-29324($s0)
    sw	$a7,-29328($s0)
    # Line 7301
    lw	$t8,26976($s0)
    # Line 7299
    sw	$t0,-29332($s0)
    # Line 7301
    or	$t8,$t2,$t8
    sw	$t8,26976($s0)
    sw	$s3,4120($zero)
    # Line 7319
    sw	$zero,368($sp)
    # Line 7331
    lw	$a1,-4176($s0)
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    # Line 7323
    lw	$t3,-26596($s0)
    # Line 7325
    lw	$s2,31744($s6)
    # Line 7331
    li	$a5,1
    addiu	$a4,$sp,368
    # Line 7325
    sd	$s2,1016($sp)
    # Line 7331
    move	$a3,$zero
    move	$a2,$zero
    # Line 7324
    lw	$s2,-26592($s0)
    # Line 7331
    move	$a0,$s6
    jal	__glOdysseyOpenPMObjReference
    sd	$t3,1024($sp)
    beqz	$v0,.L0d99c95c
    # Line 7352
    nop	# was lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    # Line 7344
    lw	$a4,368($sp)
    sw	$a4,-26596($s0)
    # Line 7345
    lw	$a3,-2120($s0)
    # Line 7348
    lui	$a2,0x1
    # Line 7345
    sw	$a3,-26592($s0)
    # Line 7348
    ori	$v0,$a2,0x443
    sw	$v0,0($s1)
    li	$at,250
    sw	$at,0($s1)
    ori	$ra,$a2,0x46
    sw	$ra,0($s1)
    sw	$ra,0($s1)
    ori	$a2,$a2,0x842
    sw	$a2,0($s1)
    lw	$a1,-26596($s0)
    sw	$a1,0($s1)
    lw	$a0,-26592($s0)
    sw	$a0,0($s1)
    sw	$v0,0($s1)
    li	$v1,150
    sw	$v1,0($s1)
    sw	$ra,0($s1)
    sw	$ra,0($s1)
    sw	$ra,0($s1)
    sw	$ra,0($s1)
    sw	$zero,-26576($s0)
    sw	$v0,0($s1)
    sw	$at,0($s1)
    sw	$ra,0($s1)
    # Line 7352
    move	$a3,$zero
    move	$a2,$zero
    # Line 7348
    sw	$ra,0($s1)
    # Line 7352
    move	$a0,$s6
    jal	__glOdysseyClosePMObjReference
    lw	$a1,-4176($s0)
    beqz	$v0,.L0d99c9b4
    # Line 7358
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 7363
    lw	$a6,31744($s6)
    ori	$a6,$a6,0x40
    sw	$a6,31744($s6)
    # Line 7364
    lw	$a5,26976($s0)
    ori	$a5,$a5,0x4
    sw	$a5,26976($s0)
    sw	$s3,4120($zero)
    lwc1	$f27,64($s4)
    sdc1	$f26,1144($sp)
    ldc1	$f26,_lit8_3ff0000000000000
    cvt.d.s	$f27,$f27
    c.lt.d $f26,$f27
    bc1f .L0d99bc50
    nop
    # Line 7369
    swc1	$f22,396($sp)
    swc1	$f22,392($sp)
    # Line 7368
    swc1	$f22,380($sp)
    swc1	$f22,376($sp)
    # Line 7369
    ldc1	$f31,904($sp)
    ldc1	$f29,896($sp)
    swc1	$f31,404($sp)
    # Line 7372
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a4,$zero
    li	$a3,1
    # Line 7369
    swc1	$f29,400($sp)
    # Line 7372
    addiu	$a2,$sp,376
    addiu	$a1,$sp,64
    # Line 7368
    swc1	$f31,388($sp)
    # Line 7372
    addiu	$a0,$sp,0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 7368
    swc1	$f29,384($sp)
    b	.L0d99bca4
    nop
.L0d99bc50:
    # Line 7378
    swc1	$f22,380($sp)
    swc1	$f22,376($sp)
    ldc1	$f4,904($sp)
    ldc1	$f5,896($sp)
    swc1	$f4,388($sp)
    swc1	$f5,384($sp)
    # Line 7379
    lwc1	$f3,16($s7)
    swc1	$f3,392($sp)
    lwc1	$f2,20($s7)
    swc1	$f2,396($sp)
    lwc1	$f1,24($s7)
    # Line 7381
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 7379
    swc1	$f1,400($sp)
    lwc1	$f0,28($s7)
    # Line 7381
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,376
    # Line 7379
    swc1	$f0,404($sp)
    # Line 7381
    addiu	$a1,$sp,64
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a0,72($s4)
.L0d99bca4:
    # Line 7394
    sw	$s2,-26592($s0)
    # Line 7395
    ld	$t0,1016($sp)
    # Line 7393
    ld	$t1,1024($sp)
    sw	$t1,-26596($s0)
    # Line 7395
    sw	$t0,31744($s6)
    # Line 7396
    lw	$a7,26976($s0)
    ori	$a7,$a7,0x4
    sw	$a7,26976($s0)
    sw	$s3,4120($zero)
    lwc1	$f6,64($s4)
    cvt.d.s	$f6,$f6
    c.lt.d $f26,$f6
    bc1f .L0d99c098
    # Line 7408
    addiu	$a0,$sp,416
    sdc1	$f24,1152($sp)
    sdc1	$f28,1160($sp)
    sdc1	$f20,1176($sp)
    lw	$t2,-29460($s0)
    lw	$v1,-29432($s0)
    lw	$v0,-29436($s0)
    lw	$at,-29440($s0)
    lw	$ra,-29444($s0)
    lw	$t9,-29448($s0)
    lw	$t8,-29452($s0)
    lw	$t3,-29456($s0)
    sw	$t3,4($a0)
    sw	$t8,8($a0)
    sw	$t9,12($a0)
    sw	$ra,16($a0)
    sw	$at,20($a0)
    sw	$v0,24($a0)
    sw	$v1,28($a0)
    sw	$t2,416($sp)
    # Line 7410
    lw	$v0,31964($s6)
    lw	$a6,31960($s6)
    lw	$a5,31956($s6)
    lw	$a4,31952($s6)
    lw	$a3,31948($s6)
    lw	$a2,31944($s6)
    # Line 7418
    lw	$t3,31744($s6)
    # Line 7409
    lw	$t9,-29464($s0)
    # Line 7418
    li	$t8,-65
    and	$t3,$t3,$t8
    sw	$t3,31744($s6)
    # Line 7419
    lw	$t2,26976($s0)
    # Line 7410
    lw	$a0,31940($s6)
    # Line 7419
    ori	$t2,$t2,0x4
    sw	$t2,26976($s0)
    sw	$s3,4120($zero)
    # Line 7422
    lui	$t1,0x1
    lw	$t0,31956($s6)
    nor	$t1,$t1,$zero
    and	$t0,$t0,$t1
    sw	$t0,31956($s6)
    # Line 7423
    lw	$a7,26976($s0)
    ori	$a7,$a7,0x200
    sw	$a7,26976($s0)
    sw	$s3,4120($zero)
    # Line 7426
    lw	$a1,31956($s6)
    # Line 7444
    lwc1	$f28,_lit_3f800000
    # Line 7426
    lui	$v1,0x4
    # Line 7409
    sd	$t9,1008($sp)
    # Line 7426
    or	$v1,$v1,$a1
    # Line 7427
    ori	$v1,$v1,0x4000
    sw	$v1,31956($s6)
    # Line 7410
    addiu	$a1,$sp,448
    # Line 7428
    lw	$at,26976($s0)
    # Line 7410
    sw	$a2,4($a1)
    # Line 7428
    ori	$at,$at,0x200
    sw	$at,26976($s0)
    sw	$s3,4120($zero)
    # Line 7432
    lw	$t8,26976($s0)
    # Line 7431
    lui	$ra,0x10
    # Line 7432
    lui	$t3,0x20
    # Line 7431
    lw	$t9,-26972($s0)
    nor	$ra,$ra,$zero
    # Line 7432
    or	$t3,$t3,$t8
    sw	$t3,26976($s0)
    # Line 7431
    and	$t9,$t9,$ra
    sw	$t9,-26972($s0)
    # Line 7432
    sw	$s3,4120($zero)
    # Line 7444
    lwc1	$f20,7712($s0)
    # Line 7434
    lw	$t2,-29456($s0)
    # Line 7436
    lw	$t1,-29448($s0)
    # Line 7440
    lw	$a7,-29432($s0)
    # Line 7438
    lw	$t0,-29440($s0)
    # Line 7440
    and	$a7,$s5,$a7
    sw	$a7,-29432($s0)
    # Line 7438
    and	$t0,$s5,$t0
    sw	$t0,-29440($s0)
    # Line 7436
    and	$t1,$s5,$t1
    sw	$t1,-29448($s0)
    # Line 7434
    and	$t2,$s5,$t2
    sw	$t2,-29456($s0)
    # Line 7443
    lwc1	$f24,64($s4)
    # Line 7410
    sw	$a3,8($a1)
    sw	$a4,12($a1)
    sw	$a5,16($a1)
    # Line 7444
    c.lt.s $f20,$f24
    # Line 7410
    sw	$a6,20($a1)
    sw	$v0,24($a1)
    sw	$a0,448($sp)
    # Line 7444
    bc1f .L0d99c994
    # Line 7443
    mov.s	$f5,$f24
    # Line 7444
    li	$a0,1
    mov.s	$f4,$f28
    nop
.L0d99be50:
    # Line 7448
    mul.s	$f4,$f20,$f4
    div.s	$f7,$f24,$f4
    c.lt.s $f20,$f7
    bc1t .L0d99be50
    # Line 7447
    addiu	$a0,$a0,1
    # Line 7448
    blez	$a0,.L0d99bfec
    nop
.L0d99be6c:
    sd	$a0,1128($sp)
    sd	$s8,1248($sp)
    addiu	$s8,$a0,1
    sdc1	$f30,1168($sp)
    lwc1	$f30,_lit_45800000
    b	.L0d99c9f4
    li	$s2,1
.L0d99be88:
    # Line 7471
    swc1	$f22,484($sp)
    swc1	$f22,480($sp)
    ldc1	$f12,904($sp)
    ldc1	$f13,896($sp)
    swc1	$f12,492($sp)
    swc1	$f13,488($sp)
    # Line 7472
    lwc1	$f11,16($s7)
    swc1	$f11,496($sp)
    lwc1	$f10,20($s7)
    swc1	$f10,500($sp)
    lwc1	$f9,24($s7)
    # Line 7474
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 7472
    swc1	$f9,504($sp)
    lwc1	$f8,28($s7)
    # Line 7474
    li	$a3,1
    addiu	$a2,$sp,480
    # Line 7472
    swc1	$f8,508($sp)
    # Line 7474
    addiu	$a1,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s4)
.L0d99bed8:
    # Line 7488
    lwc1	$f20,7712($s0)
    # lw $t9, -17028($gp) # &powf
    mtc1	$s2,$f13
    cvt.s.w	$f13,$f13
    jal	powf
    mov.s	$f12,$f20
    # Line 7489
    div.s	$f5,$f24,$f0
    cvt.d.s	$f15,$f5
    c.lt.d $f15,$f26
    li	$ra,1
    movf	$ra,$zero,$fcc1
    mtc1	$ra,$f14
    cvt.s.w	$f14,$f14
    abs.s	$f14,$f14
    # Line 7451
    addiu	$s2,$s2,1
    # Line 7489
    c.eq.s	$f22,$f14
    # Line 7454
    mov.s	$f16,$f20
    # Line 7451
    beq	$s2,$s8,.L0d99bfe4
    # Line 7489
    movf.s	$f5,$f28,$fcc0
    # Line 7451
    c.lt.s $f20,$f5
.L0d99bf28:
    movf.s	$f16,$f5,$fcc2
    # Line 7467
    lw	$v0,26976($s0)
    # Line 7457
    mul.s	$f16,$f30,$f16
    # Line 7459
    lw	$a2,-29452($s0)
    # Line 7463
    lw	$a0,-29436($s0)
    # Line 7457
    trunc.w.s	$f16,$f16
    # Line 7461
    lw	$a1,-29444($s0)
    # Line 7467
    or	$v0,$s1,$v0
    # Line 7457
    lw	$a3,-29460($s0)
    # Line 7463
    and	$a0,$s5,$a0
    # Line 7457
    mfc1	$v1,$f16
    # Line 7466
    sw	$s3,-29464($s0)
    # Line 7461
    and	$a1,$s5,$a1
    # Line 7459
    and	$a2,$s5,$a2
    # Line 7467
    sw	$v0,26976($s0)
    # Line 7457
    and	$a3,$s5,$a3
    andi	$v1,$v1,0xffff
    # Line 7467
    ld	$at,1128($sp)
    # Line 7457
    or	$a3,$v1,$a3
    # Line 7459
    or	$a2,$v1,$a2
    # Line 7461
    or	$a1,$v1,$a1
    # Line 7463
    or	$v1,$v1,$a0
    sw	$v1,-29436($s0)
    # Line 7461
    sw	$a1,-29444($s0)
    # Line 7459
    sw	$a2,-29452($s0)
    # Line 7457
    sw	$a3,-29460($s0)
    # Line 7467
    beq	$s2,$at,.L0d99be88
    sw	$s3,4120($zero)
    # Line 7480
    swc1	$f22,500($sp)
    swc1	$f22,496($sp)
    # Line 7479
    swc1	$f22,484($sp)
    swc1	$f22,480($sp)
    # Line 7480
    ldc1	$f18,904($sp)
    ldc1	$f17,896($sp)
    swc1	$f18,508($sp)
    # Line 7482
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    li	$a3,1
    # Line 7480
    swc1	$f17,504($sp)
    # Line 7482
    addiu	$a2,$sp,480
    addiu	$a1,$sp,0
    # Line 7479
    swc1	$f18,492($sp)
    # Line 7482
    addiu	$a0,$sp,0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 7479
    swc1	$f17,488($sp)
    b	.L0d99bed8
    nop
.L0d99bfe4:
    ld	$s8,1248($sp)
    ldc1	$f30,1168($sp)
.L0d99bfec:
    ldc1	$f20,1176($sp)
    ldc1	$f28,1160($sp)
    ldc1	$f24,1152($sp)
    # Line 7496
    ld	$a5,1008($sp)
    # Line 7497
    addiu	$a0,$sp,416
    # Line 7496
    sw	$a5,-29464($s0)
    # Line 7497
    lw	$t9,28($a0)
    sw	$t9,-29432($s0)
    lw	$t8,24($a0)
    sw	$t8,-29436($s0)
    lw	$t3,20($a0)
    sw	$t3,-29440($s0)
    lw	$t2,16($a0)
    sw	$t2,-29444($s0)
    lw	$t1,12($a0)
    sw	$t1,-29448($s0)
    lw	$t0,8($a0)
    sw	$t0,-29452($s0)
    lw	$a7,4($a0)
    sw	$a7,-29456($s0)
    lw	$a6,416($sp)
    sw	$a6,-29460($s0)
    # Line 7498
    addiu	$v0,$sp,448
    lw	$a4,448($sp)
    sw	$a4,31940($s6)
    lw	$a3,4($v0)
    sw	$a3,31944($s6)
    lw	$a2,8($v0)
    sw	$a2,31948($s6)
    lw	$a1,12($v0)
    sw	$a1,31952($s6)
    lw	$a0,16($v0)
    sw	$a0,31956($s6)
    lw	$v1,20($v0)
    sw	$v1,31960($s6)
    lw	$v0,24($v0)
    sw	$v0,31964($s6)
    # Line 7499
    lui	$at,0x1
    lw	$ra,26976($s0)
    ori	$at,$at,0x200
    or	$ra,$ra,$at
    sw	$ra,26976($s0)
    sw	$s3,4120($zero)
.L0d99c098:
    ld	$s5,1192($sp)
    ld	$s2,1184($sp)
    ldc1	$f22,1136($sp)
    ldc1	$f26,1144($sp)
    # Line 7709
    ld	$gp,1104($sp)
    ld	$s0,1112($sp)
    ld	$s1,1080($sp)
    ld	$s3,1096($sp)
    ld	$ra,1200($sp)
    ld	$s4,1072($sp)
    li	$v0,1
    ld	$s6,1088($sp)
    ld	$s7,1064($sp)
    jr	$ra
    addiu	$sp,$sp,1264
.L0d99c0d4:
    # Line 7520
    lw	$a1,-26968($s0)
    lw	$t3,-26972($s0)
    lw	$t8,-26976($s0)
    lw	$t9,-26980($s0)
    # Line 7521
    lw	$a0,31960($s6)
    lw	$ra,31948($s6)
    lw	$v1,31956($s6)
    addiu	$v0,$sp,520
    sw	$v1,16($v0)
    # Line 7522
    addiu	$v1,$s0,-29720
    sd	$v1,952($sp)
    # Line 7521
    sw	$ra,8($v0)
    sw	$a0,20($v0)
    # Line 7522
    li	$a0,8
    sd	$a0,912($sp)
    # Line 7521
    lw	$a2,31964($s6)
    lw	$at,31952($s6)
    sw	$at,12($v0)
    lw	$at,31940($s6)
    sw	$a2,24($v0)
    lw	$a2,31944($s6)
    sw	$a2,4($v0)
    # Line 7522
    addiu	$a0,$sp,552
    # Line 7521
    sw	$at,520($sp)
    sd	$t9,920($sp)
    sd	$t8,944($sp)
    sd	$t3,936($sp)
    sd	$a1,928($sp)
    # Line 7522
    ld	$a2,-29672($s0)
    ld	$v1,-29680($s0)
    ld	$v0,-29688($s0)
    ld	$at,-29696($s0)
    ld	$t2,-29704($s0)
    ld	$t0,-29712($s0)
    sd	$t0,8($a0)
    sd	$t2,16($a0)
    sd	$at,24($a0)
    sd	$v0,32($a0)
    sd	$v1,40($a0)
    sd	$a2,48($a0)
    ld	$a7,-29664($s0)
    sd	$a7,56($a0)
    ld	$a7,-29720($s0)
    sd	$a7,552($sp)
    # Line 7523
    lw	$t2,-29724($s0)
    # Line 7524
    lw	$t3,-29464($s0)
    sd	$t3,984($sp)
    # Line 7525
    addiu	$a0,$sp,616
    sd	$t2,992($sp)
    lw	$t8,-29460($s0)
    lw	$t2,-29432($s0)
    lw	$a2,-29436($s0)
    lw	$v1,-29440($s0)
    lw	$v0,-29444($s0)
    lw	$at,-29448($s0)
    lw	$ra,-29452($s0)
    lw	$t9,-29456($s0)
    sw	$t9,4($a0)
    sw	$ra,8($a0)
    sw	$at,12($a0)
    sw	$v0,16($a0)
    sw	$v1,20($a0)
    sw	$a2,24($a0)
    sw	$t2,28($a0)
    sw	$t8,616($sp)
    # Line 7526
    lw	$at,-29324($s0)
    lw	$v0,-29328($s0)
    lw	$v1,-29332($s0)
    # Line 7534
    sd	$zero,648($sp)
    addiu	$ra,$sp,648
    sw	$zero,56($ra)
    sd	$zero,48($ra)
    sd	$zero,40($ra)
    sd	$zero,32($ra)
    sd	$zero,24($ra)
    sd	$zero,16($ra)
    sd	$zero,8($ra)
    # Line 7541
    sb	$t1,659($sp)
    # Line 7540
    sb	$t1,648($sp)
    # Line 7539
    sw	$zero,652($sp)
    # Line 7538
    sw	$t1,704($sp)
    # Line 7542
    lw	$t9,7708($s0)
    sw	$t9,680($sp)
    # Line 7543
    lw	$t8,7704($s0)
    sw	$t8,684($sp)
    # Line 7544
    lw	$t3,7708($s0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f12
    # Line 7526
    sd	$v1,976($sp)
    # Line 7534
    mov.s	$f13,$f5
    movz.s	$f5,$f7,$a4
    # Line 7526
    sd	$v0,968($sp)
    # Line 7544
    cvt.s.l	$f12,$f12
    # Line 7526
    sd	$at,960($sp)
    movz.s	$f13,$f7,$a6
    sdc1	$f13,840($sp)
    # Line 7533
    mov.s	$f13,$f4
    movz.s	$f4,$f6,$a5
    # Line 7544
    # lw $t9, -17036($gp) # &ceil
    sdc1	$f5,832($sp)
    mul.s	$f12,$f12,$f8
    sdc1	$f4,816($sp)
    movz.s	$f13,$f6,$a3
    sdc1	$f13,824($sp)
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 7549
    sw	$s3,692($sp)
    # Line 7548
    sw	$s3,688($sp)
    # Line 7544
    trunc.l.d	$f14,$f0
    # Line 7547
    li	$t8,12
    sw	$t8,700($sp)
    # Line 7546
    sw	$zero,696($sp)
    # Line 7544
    dmfc1	$t9,$f14
    sw	$t9,676($sp)
    # Line 7552
    lw	$t3,-22752($s0)
    sw	$t3,664($sp)
    lw	$t2,-22748($s0)
    sw	$t2,668($sp)
    lw	$t1,-22744($s0)
    sw	$t1,672($sp)
    # Line 7561
    lw	$t0,31956($s6)
    or	$t0,$s1,$t0
    # Line 7562
    ori	$t0,$t0,0x4000
    sw	$t0,31956($s6)
    # Line 7563
    lw	$a7,26976($s0)
    ori	$a7,$a7,0x200
    sw	$a7,26976($s0)
    li	$a1,0x8
    sw	$s3,4120($zero)
    # Line 7566
    li	$a3,16
    move	$a0,$zero
    lw	$a6,20($s4)
    addiu	$a5,$s0,-29720
    addiu	$a7,$s0,-29716
    addiu	$a4,$a6,628
    addiu	$a6,$a6,624
    nop
    nop
.L0d99c300:
    addu	$at,$a0,$a6
    addu	$v0,$a0,$a5
    lw	$at,0($at)
    addiu	$a3,$a3,-2
    addu	$ra,$a0,$a4
    sw	$at,0($v0)
    addu	$at,$a0,$a7
    lw	$ra,0($ra)
    addu	$a0,$a0,$a1
    bgtz	$a3,.L0d99c300
    sw	$ra,0($at)
    # Line 7567
    sw	$s3,-29724($s0)
    # Line 7568
    lw	$a0,20($s4)
    sdc1	$f26,1144($sp)
    lw	$t2,688($a0)
    sw	$t2,-29460($s0)
    lw	$t1,692($a0)
    sw	$t1,-29456($s0)
    lw	$t0,696($a0)
    sw	$t0,-29452($s0)
    lw	$a7,700($a0)
    sw	$a7,-29448($s0)
    lw	$a6,704($a0)
    sw	$a6,-29444($s0)
    lw	$a2,708($a0)
    sw	$a2,-29440($s0)
    lw	$v1,712($a0)
    sw	$v1,-29436($s0)
    lw	$v0,716($a0)
    sw	$v0,-29432($s0)
    # Line 7569
    sw	$s3,-29464($s0)
    # Line 7570
    lw	$t9,20($s4)
    # Line 7571
    lw	$t8,26976($s0)
    # Line 7570
    lw	$at,2900($t9)
    sw	$at,-29332($s0)
    lw	$ra,2904($t9)
    # Line 7571
    lui	$t3,0x3
    # Line 7570
    sw	$ra,-29328($s0)
    # Line 7571
    ori	$t3,$t3,0x8000
    # Line 7570
    lw	$t9,2908($t9)
    # Line 7571
    or	$t3,$t3,$t8
    sw	$t3,26976($s0)
    # Line 7570
    sw	$t9,-29324($s0)
    # Line 7571
    sw	$s3,4120($zero)
    lwc1	$f15,64($s4)
    ldc1	$f26,_lit8_3ff0000000000000
    cvt.d.s	$f15,$f15
    sdc1	$f22,1136($sp)
    c.lt.d $f26,$f15
    sd	$s5,1192($sp)
    sd	$s2,1184($sp)
    bc1f .L0d99c43c
    lwc1	$f4,0($s7)
    # Line 7581
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 7578
    ldc1	$f19,824($sp)
    ldc1	$f17,840($sp)
    # Line 7577
    swc1	$f4,712($sp)
    lwc1	$f27,4($s7)
    # Line 7578
    ldc1	$f16,832($sp)
    # Line 7577
    swc1	$f27,716($sp)
    lwc1	$f25,8($s7)
    # Line 7578
    ldc1	$f18,816($sp)
    # Line 7577
    swc1	$f25,720($sp)
    # Line 7578
    sub.s	$f16,$f16,$f17
    # Line 7577
    lwc1	$f23,12($s7)
    # Line 7578
    mtc1	$zero,$f21
    sub.s	$f18,$f18,$f19
    swc1	$f16,740($sp)
    swc1	$f18,736($sp)
    swc1	$f21,732($sp)
    swc1	$f21,728($sp)
    # Line 7581
    move	$a3,$zero
    addiu	$a2,$sp,712
    # Line 7577
    swc1	$f23,724($sp)
    # Line 7581
    addiu	$a0,$sp,648
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s4)
    b	.L0d99c490
    nop
.L0d99c43c:
    # Line 7587
    swc1	$f4,712($sp)
    lwc1	$f4,4($s7)
    swc1	$f4,716($sp)
    lwc1	$f3,8($s7)
    swc1	$f3,720($sp)
    lwc1	$f2,12($s7)
    swc1	$f2,724($sp)
    # Line 7588
    lwc1	$f1,16($s7)
    swc1	$f1,728($sp)
    lwc1	$f0,20($s7)
    swc1	$f0,732($sp)
    lwc1	$f31,24($s7)
    swc1	$f31,736($sp)
    lwc1	$f29,28($s7)
    # Line 7590
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 7588
    swc1	$f29,740($sp)
    # Line 7590
    li	$a3,1
    lw	$a1,68($s4)
    addiu	$a2,$sp,712
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s4)
.L0d99c490:
    ld	$a1,960($sp)
    ld	$a3,968($sp)
    ld	$a4,976($sp)
    ld	$a5,984($sp)
    ld	$a6,992($sp)
    # Line 7597
    lw	$t1,520($sp)
    # Line 7596
    ld	$t9,920($sp)
    ld	$t8,944($sp)
    ld	$t3,936($sp)
    ld	$t2,928($sp)
    sw	$t2,-26968($s0)
    sw	$t3,-26972($s0)
    sw	$t8,-26976($s0)
    sw	$t9,-26980($s0)
    # Line 7597
    sw	$t1,31940($s6)
    addiu	$v0,$sp,520
    lw	$t0,24($v0)
    lw	$a7,20($v0)
    lw	$a2,16($v0)
    lw	$a0,12($v0)
    lw	$v1,8($v0)
    lw	$v0,4($v0)
    sw	$a7,31960($s6)
    sw	$a2,31956($s6)
    sw	$v1,31948($s6)
    sw	$t0,31964($s6)
    sw	$a0,31952($s6)
    # Line 7598
    addiu	$a0,$sp,552
    # Line 7597
    addiu	$t0,$s6,31940
    sw	$v0,31944($s6)
    # Line 7598
    ld	$ra,552($sp)
    ld	$at,8($a0)
    ld	$v0,16($a0)
    ld	$v1,24($a0)
    ld	$a2,32($a0)
    ld	$t3,40($a0)
    ld	$t8,48($a0)
    ld	$t9,56($a0)
    sd	$t9,-29664($s0)
    sd	$t8,-29672($s0)
    sd	$t3,-29680($s0)
    sd	$a2,-29688($s0)
    sd	$v1,-29696($s0)
    sd	$v0,-29704($s0)
    sd	$at,-29712($s0)
    sd	$ra,-29720($s0)
    # Line 7600
    sw	$a5,-29464($s0)
    # Line 7601
    addiu	$a0,$s0,-29460
    addiu	$a7,$sp,616
    # Line 7599
    sw	$a6,-29724($s0)
    ldc1	$f8,824($sp)
    # Line 7601
    lw	$ra,616($sp)
    lw	$at,4($a7)
    lw	$v0,8($a7)
    lw	$v1,12($a7)
    lw	$a2,16($a7)
    lw	$a5,20($a7)
    lw	$a6,24($a7)
    lw	$t3,28($a7)
    sw	$t3,-29432($s0)
    sw	$a6,-29436($s0)
    sw	$a5,-29440($s0)
    sw	$a2,-29444($s0)
    sw	$v1,-29448($s0)
    sw	$v0,-29452($s0)
    sw	$at,-29456($s0)
    sw	$ra,-29460($s0)
    # Line 7602
    sw	$a1,-29324($s0)
    sw	$a3,-29328($s0)
    # Line 7604
    lw	$t9,26976($s0)
    lui	$t8,0x23
    # Line 7602
    sw	$a4,-29332($s0)
    # Line 7604
    ori	$t8,$t8,0x8200
    or	$t8,$t8,$t9
    sw	$t8,26976($s0)
    sw	$s3,4120($zero)
    lwc1	$f5,64($s4)
    cvt.d.s	$f5,$f5
    c.lt.d $f26,$f5
    bc1f .L0d99c098
    # Line 7619
    addiu	$a1,$sp,752
    sdc1	$f24,1152($sp)
    sdc1	$f20,1176($sp)
    # Line 7621
    lw	$a7,0($t0)
    lw	$t3,8($t0)
    lw	$t8,12($t0)
    # Line 7620
    lw	$t2,-29464($s0)
    sdc1	$f28,1160($sp)
    # Line 7619
    lw	$t9,-29460($s0)
    lw	$ra,-29456($s0)
    lw	$at,-29452($s0)
    lw	$v0,-29448($s0)
    lw	$v1,-29444($s0)
    lw	$a2,-29440($s0)
    lw	$a5,-29436($s0)
    lw	$a6,-29432($s0)
    sw	$a6,28($a1)
    sw	$a5,24($a1)
    sw	$a2,20($a1)
    sw	$v1,16($a1)
    sw	$v0,12($a1)
    sw	$at,8($a1)
    sw	$ra,4($a1)
    sw	$t9,752($sp)
    # Line 7620
    sd	$t2,1000($sp)
    # Line 7621
    lw	$t2,4($t0)
    lw	$t9,16($t0)
    lw	$ra,20($t0)
    # Line 7629
    lw	$a6,31956($s6)
    lui	$t1,0x1
    # Line 7621
    lw	$a2,24($t0)
    # Line 7629
    nor	$t1,$t1,$zero
    and	$a6,$a6,$t1
    sw	$a6,31956($s6)
    # Line 7630
    lw	$a5,26976($s0)
    ori	$a5,$a5,0x200
    sw	$a5,26976($s0)
    sw	$s3,4120($zero)
    # Line 7633
    lw	$a3,31956($s6)
    lui	$a4,0x4
    # Line 7648
    lwc1	$f28,_lit_3f800000
    # Line 7633
    or	$a3,$a3,$a4
    # Line 7634
    ori	$a3,$a3,0x4000
    sw	$a3,31956($s6)
    # Line 7621
    addiu	$t1,$sp,784
    # Line 7635
    lw	$a1,26976($s0)
    # Line 7621
    sw	$a2,24($t1)
    # Line 7635
    ori	$a1,$a1,0x200
    sw	$a1,26976($s0)
    sw	$s3,4120($zero)
    # Line 7648
    lwc1	$f20,7712($s0)
    # Line 7643
    lw	$at,-29432($s0)
    # Line 7641
    lw	$v0,-29440($s0)
    # Line 7637
    lw	$a0,-29456($s0)
    lui	$s5,0xffff
    # Line 7639
    lw	$v1,-29448($s0)
    # Line 7637
    and	$a0,$s5,$a0
    sw	$a0,-29456($s0)
    # Line 7639
    and	$v1,$s5,$v1
    sw	$v1,-29448($s0)
    # Line 7641
    and	$v0,$s5,$v0
    sw	$v0,-29440($s0)
    # Line 7643
    and	$at,$s5,$at
    sw	$at,-29432($s0)
    # Line 7647
    lwc1	$f24,64($s4)
    # Line 7621
    sw	$ra,20($t1)
    sw	$t9,16($t1)
    sw	$t8,12($t1)
    # Line 7648
    c.lt.s $f20,$f24
    # Line 7621
    sw	$t3,8($t1)
    sw	$t2,4($t1)
    sw	$a7,784($sp)
    # Line 7648
    bc1f .L0d99c9a4
    # Line 7647
    mov.s	$f5,$f24
    # Line 7648
    li	$a0,1
    mov.s	$f4,$f28
.L0d99c700:
    # Line 7652
    mul.s	$f4,$f20,$f4
    div.s	$f6,$f24,$f4
    c.lt.s $f20,$f6
    bc1t .L0d99c700
    # Line 7651
    addiu	$a0,$a0,1
    # Line 7652
    blez	$a0,.L0d99c8ac
.L0d99c718:
    addiu	$t3,$a0,1
    sd	$t3,1120($sp)
    sdc1	$f30,1168($sp)
    ldc1	$f10,840($sp)
    ldc1	$f7,816($sp)
    ldc1	$f9,832($sp)
    lwc1	$f30,_lit_45800000
    sd	$s8,1248($sp)
    sub.s	$f7,$f7,$f8
    li	$s2,1
    mtc1	$zero,$f22
    sub.s	$f9,$f9,$f10
    sdc1	$f7,888($sp)
    move	$s8,$a0
    b	.L0d99ca00
    sdc1	$f9,880($sp)
.L0d99c758:
    # Line 7671
    swc1	$f22,716($sp)
    swc1	$f22,712($sp)
    ldc1	$f15,880($sp)
    ldc1	$f16,888($sp)
    swc1	$f15,724($sp)
    swc1	$f16,720($sp)
    # Line 7672
    lwc1	$f14,16($s7)
    swc1	$f14,728($sp)
    lwc1	$f13,20($s7)
    swc1	$f13,732($sp)
    lwc1	$f12,24($s7)
    # Line 7674
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 7672
    swc1	$f12,736($sp)
    lwc1	$f11,28($s7)
    # Line 7674
    li	$a3,1
    addiu	$a2,$sp,712
    # Line 7672
    swc1	$f11,740($sp)
    # Line 7674
    addiu	$a1,$sp,648
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s4)
.L0d99c7a8:
    # Line 7690
    lwc1	$f20,7712($s0)
    # lw $t9, -17028($gp) # &powf
    mtc1	$s2,$f13
    cvt.s.w	$f13,$f13
    jal	powf
    mov.s	$f12,$f20
    # Line 7691
    div.s	$f5,$f24,$f0
    cvt.d.s	$f15,$f5
    c.lt.d	$f15,$f26
    li	$t9,1
    movf	$t9,$zero,$fcc0
    mtc1	$t9,$f14
    cvt.s.w	$f14,$f14
    abs.s	$f14,$f14
    # Line 7655
    ld	$t8,1120($sp)
    addiu	$s2,$s2,1
    # Line 7691
    c.eq.s $f22,$f14
    # Line 7658
    mov.s	$f16,$f20
    # Line 7655
    beq	$s2,$t8,.L0d99c8a4
    # Line 7691
    movf.s	$f5,$f28,$fcc7
    # Line 7655
    c.lt.s $f20,$f5
.L0d99c7fc:
    movf.s	$f16,$f5,$fcc1
    # Line 7667
    lw	$ra,26976($s0)
    # Line 7661
    mul.s	$f16,$f30,$f16
    # Line 7662
    lw	$a0,-29452($s0)
    # Line 7664
    lw	$v0,-29436($s0)
    # Line 7661
    trunc.w.s	$f16,$f16
    # Line 7663
    lw	$v1,-29444($s0)
    # Line 7667
    or	$ra,$s1,$ra
    # Line 7661
    lw	$a1,-29460($s0)
    # Line 7664
    and	$v0,$s5,$v0
    # Line 7661
    mfc1	$at,$f16
    # Line 7663
    and	$v1,$s5,$v1
    # Line 7662
    and	$a0,$s5,$a0
    # Line 7666
    sw	$s3,-29464($s0)
    # Line 7661
    and	$a1,$s5,$a1
    andi	$at,$at,0xffff
    # Line 7667
    sw	$ra,26976($s0)
    # Line 7661
    or	$a1,$at,$a1
    # Line 7662
    or	$a0,$at,$a0
    # Line 7663
    or	$v1,$at,$v1
    # Line 7664
    or	$at,$at,$v0
    sw	$at,-29436($s0)
    # Line 7663
    sw	$v1,-29444($s0)
    # Line 7662
    sw	$a0,-29452($s0)
    # Line 7661
    sw	$a1,-29460($s0)
    # Line 7667
    beq	$s2,$s8,.L0d99c758
    sw	$s3,4120($zero)
    # Line 7681
    swc1	$f22,716($sp)
    swc1	$f22,712($sp)
    ldc1	$f18,880($sp)
    # Line 7683
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a4,$zero
    li	$a3,1
    # Line 7681
    ldc1	$f17,888($sp)
    # Line 7683
    addiu	$a2,$sp,712
    addiu	$a0,$sp,648
    # Line 7681
    swc1	$f18,724($sp)
    move	$a1,$a0
    # Line 7683
    jal	__glOdysseyImageMovePixelsCopy
    # Line 7681
    swc1	$f17,720($sp)
    b	.L0d99c7a8
    nop
.L0d99c8a4:
    ld	$s8,1248($sp)
    ldc1	$f30,1168($sp)
.L0d99c8ac:
    ldc1	$f20,1176($sp)
    ldc1	$f28,1160($sp)
    ldc1	$f24,1152($sp)
    # Line 7697
    ld	$a2,1000($sp)
    # Line 7698
    addiu	$a0,$sp,752
    # Line 7697
    sw	$a2,-29464($s0)
    # Line 7699
    lw	$a3,784($sp)
    # Line 7698
    lw	$a5,752($sp)
    lw	$a6,4($a0)
    lw	$a7,8($a0)
    lw	$t0,12($a0)
    lw	$t1,16($a0)
    lw	$t2,20($a0)
    lw	$t3,24($a0)
    lw	$t8,28($a0)
    sw	$t8,-29432($s0)
    sw	$t3,-29436($s0)
    sw	$t2,-29440($s0)
    sw	$t1,-29444($s0)
    sw	$t0,-29448($s0)
    sw	$a7,-29452($s0)
    sw	$a6,-29456($s0)
    sw	$a5,-29460($s0)
    # Line 7700
    lui	$ra,0x1
    # Line 7699
    sw	$a3,31940($s6)
    addiu	$at,$sp,784
    lw	$a2,4($at)
    lw	$a1,8($at)
    lw	$a0,12($at)
    lw	$v1,16($at)
    lw	$v0,20($at)
    lw	$at,24($at)
    sw	$a2,31944($s6)
    sw	$a1,31948($s6)
    sw	$a0,31952($s6)
    sw	$v1,31956($s6)
    sw	$v0,31960($s6)
    sw	$at,31964($s6)
    # Line 7700
    lw	$t9,26976($s0)
    ori	$ra,$ra,0x200
    or	$t9,$t9,$ra
    sw	$t9,26976($s0)
    b	.L0d99c098
    sw	$s3,4120($zero)
.L0d99c95c:
    ld	$s2,1184($sp)
    ld	$s5,1192($sp)
    ldc1	$f22,1136($sp)
    # Line 7709
    ld	$gp,1104($sp)
    ld	$s0,1112($sp)
    ld	$s1,1080($sp)
    ld	$s3,1096($sp)
    ld	$ra,1200($sp)
    ld	$s4,1072($sp)
    # Line 7340
    move	$v0,$zero
    # Line 7709
    ld	$s6,1088($sp)
    ld	$s7,1064($sp)
    jr	$ra
    addiu	$sp,$sp,1264
.L0d99c994:
    sdc1	$f30,1168($sp)
    # Line 7451
    li	$a0,1
    b	.L0d99be6c
    sd	$s8,1248($sp)
.L0d99c9a4:
    sdc1	$f30,1168($sp)
    # Line 7655
    li	$a0,1
    b	.L0d99c718
    sd	$s8,1248($sp)
.L0d99c9b4:
    ld	$s5,1192($sp)
    ld	$s2,1184($sp)
    ldc1	$f22,1136($sp)
    # Line 7358
    jalr	$t9
    li	$a0,1285
    # Line 7709
    ld	$gp,1104($sp)
    ld	$s0,1112($sp)
    ld	$s1,1080($sp)
    ld	$s3,1096($sp)
    ld	$ra,1200($sp)
    ld	$s4,1072($sp)
    # Line 7359
    move	$v0,$zero
    # Line 7709
    ld	$s6,1088($sp)
    ld	$s7,1064($sp)
    jr	$ra
    addiu	$sp,$sp,1264
.L0d99c9f4:
    # Line 7454
    mov.s	$f16,$f20
    b	.L0d99bf28
    # Line 7451
    c.lt.s $f20,$f5
.L0d99ca00:
    # Line 7658
    mov.s	$f16,$f20
    b	.L0d99c7fc
    # Line 7655
    c.lt.s $f20,$f5
.end RenderFunc_ColorMatrix

# Function: SetupScaleBiasForTexFilter
# Declared: Line 7717 (Source lines: 7720-7735)
# Address: 0x0d99ca10 - 0x0d99cb60 (Size: 336 bytes, Frame: 0)
.ent SetupScaleBiasForTexFilter
SetupScaleBiasForTexFilter:
    # Line 7723
    lwc1	$f8,0($a0)
    lwc1	$f0,_lit_45800000
    mul.s	$f8,$f0,$f8
    # Line 7720
    lw	$v1,4112($zero)
    # Line 7723
    lui	$v0,0x1
    trunc.w.s	$f8,$f8
    addu	$v1,$v0,$v1
    lw	$t2,-29460($v1)
    mfc1	$t1,$f8
    lui	$a2,0xffff
    and	$t2,$a2,$t2
    andi	$t1,$t1,0xffff
    or	$t1,$t1,$t2
    sw	$t1,-29460($v1)
    # Line 7724
    lwc1	$f7,0($a1)
    mul.s	$f7,$f0,$f7
    trunc.w.s	$f7,$f7
    lw	$t1,-29456($v1)
    mfc1	$t0,$f7
    and	$t1,$a2,$t1
    andi	$t0,$t0,0xffff
    or	$t0,$t0,$t1
    sw	$t0,-29456($v1)
    # Line 7725
    lwc1	$f6,4($a0)
    mul.s	$f6,$f0,$f6
    trunc.w.s	$f6,$f6
    lw	$t0,-29452($v1)
    mfc1	$a7,$f6
    and	$t0,$a2,$t0
    andi	$a7,$a7,0xffff
    or	$a7,$a7,$t0
    sw	$a7,-29452($v1)
    # Line 7726
    lwc1	$f5,4($a1)
    mul.s	$f5,$f0,$f5
    trunc.w.s	$f5,$f5
    lw	$a7,-29448($v1)
    mfc1	$a6,$f5
    and	$a7,$a2,$a7
    andi	$a6,$a6,0xffff
    or	$a6,$a6,$a7
    sw	$a6,-29448($v1)
    # Line 7727
    lwc1	$f4,8($a0)
    mul.s	$f4,$f0,$f4
    trunc.w.s	$f4,$f4
    lw	$a6,-29444($v1)
    mfc1	$a5,$f4
    and	$a6,$a2,$a6
    andi	$a5,$a5,0xffff
    or	$a5,$a5,$a6
    sw	$a5,-29444($v1)
    # Line 7728
    lwc1	$f3,8($a1)
    mul.s	$f3,$f0,$f3
    trunc.w.s	$f3,$f3
    lw	$a5,-29440($v1)
    mfc1	$a4,$f3
    and	$a5,$a2,$a5
    andi	$a4,$a4,0xffff
    or	$a4,$a4,$a5
    sw	$a4,-29440($v1)
    # Line 7729
    lwc1	$f2,12($a0)
    mul.s	$f2,$f0,$f2
    trunc.w.s	$f2,$f2
    lw	$a4,-29436($v1)
    mfc1	$a3,$f2
    and	$a4,$a2,$a4
    andi	$a3,$a3,0xffff
    or	$a3,$a3,$a4
    sw	$a3,-29436($v1)
    # Line 7730
    lwc1	$f1,12($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 7734
    lw	$a0,26976($v1)
    # Line 7730
    lw	$a3,-29432($v1)
    mfc1	$a1,$f0
    # Line 7732
    li	$at,2
    # Line 7734
    or	$v0,$v0,$a0
    sw	$v0,26976($v1)
    # Line 7732
    sw	$at,-29464($v1)
    # Line 7730
    and	$a2,$a2,$a3
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a2
    sw	$a1,-29432($v1)
    # Line 7735
    jr	$ra
    # Line 7734
    sw	$at,4120($zero)
.end SetupScaleBiasForTexFilter

# Function: LoadTextureFilter
# Declared: Line 7739 (Source lines: 7742-7753)
# Address: 0x0d99cb60 - 0x0d99cc6c (Size: 268 bytes, Frame: 0)
.ent LoadTextureFilter
LoadTextureFilter:
    # Line 7744
    sll	$t3,$a1,0x2
    li	$a5,0x8
    subu	$t3,$t3,$a1
    li	$a3,16
    sll	$t3,$t3,0x3
    move	$a4,$zero
    # Line 7742
    lw	$t2,4112($zero)
    # Line 7744
    subu	$t3,$t3,$a1
    lui	$t8,0x1
    sll	$t3,$t3,0x2
    lw	$a7,20($a0)
    addu	$t2,$t2,$t8
    subu	$t3,$t3,$a1
    addiu	$a6,$t2,-29716
    sll	$t3,$t3,0x5
    addiu	$t0,$t2,-29720
    addu	$a7,$a7,$t3
    addiu	$t1,$a7,628
    addiu	$a7,$a7,624
    nop
.L0d99cbb0:
    addu	$t9,$a4,$a7
    addu	$at,$a4,$t0
    lw	$t9,0($t9)
    addiu	$a3,$a3,-2
    addu	$t8,$a4,$t1
    sw	$t9,0($at)
    addu	$t9,$a4,$a6
    lw	$t8,0($t8)
    addu	$a4,$a4,$a5
    bgtz	$a3,.L0d99cbb0
    sw	$t8,0($t9)
    # Line 7745
    li	$a7,2
    sw	$a7,-29724($t2)
    # Line 7746
    lw	$a2,20($a0)
    # Line 7749
    lui	$a3,0x3
    ori	$a3,$a3,0x8000
    # Line 7746
    addu	$a2,$a2,$t3
    lw	$a1,688($a2)
    sw	$a1,-29460($t2)
    lw	$v1,692($a2)
    sw	$v1,-29456($t2)
    lw	$v0,696($a2)
    sw	$v0,-29452($t2)
    lw	$at,700($a2)
    sw	$at,-29448($t2)
    lw	$t9,704($a2)
    sw	$t9,-29444($t2)
    lw	$t8,708($a2)
    sw	$t8,-29440($t2)
    lw	$t1,712($a2)
    sw	$t1,-29436($t2)
    lw	$t0,716($a2)
    sw	$t0,-29432($t2)
    # Line 7747
    sw	$a7,-29464($t2)
    # Line 7748
    lw	$a4,20($a0)
    # Line 7749
    lw	$a2,26976($t2)
    # Line 7748
    addu	$a4,$a4,$t3
    lw	$a6,2900($a4)
    sw	$a6,-29332($t2)
    lw	$a5,2904($a4)
    sw	$a5,-29328($t2)
    lw	$a4,2908($a4)
    # Line 7749
    or	$a2,$a2,$a3
    sw	$a2,26976($t2)
    # Line 7748
    sw	$a4,-29324($t2)
    # Line 7753
    jr	$ra
    # Line 7749
    sw	$a7,4120($zero)
.end LoadTextureFilter

# Function: ConvolutionDenormAndScale
# Declared: Line 7760 (Source lines: 7763-8127)
# Address: 0x0d99cc70 - 0x0d99dd8c (Size: 4380 bytes, Frame: 144)
.ent ConvolutionDenormAndScale
ConvolutionDenormAndScale:
    # Line 7763
    addiu	$sp,$sp,-272
    sd	$s3,176($sp)
    sd	$s4,152($sp)
    sd	$s5,128($sp)
    sdc1	$f20,104($sp)
    sdc1	$f24,80($sp)
    sdc1	$f26,112($sp)
    sd	$ra,160($sp)
    sd	$s0,144($sp)
    sd	$s7,120($sp)
    sd	$s2,192($sp)
    sd	$s6,168($sp)
    # Line 7777
    lw	$s6,16($a0)
    # Line 7763
    sd	$s1,136($sp)
    sdc1	$f28,96($sp)
    # Line 7767
    mtc1	$zero,$f28
    # Line 7763
    sdc1	$f22,88($sp)
    # Line 7765
    lwc1	$f22,_lit_3f800000
    # Line 7775
    swc1	$f28,44($sp)
    swc1	$f28,40($sp)
    swc1	$f28,36($sp)
    swc1	$f28,32($sp)
    # Line 7767
    swc1	$f28,28($sp)
    swc1	$f28,24($sp)
    swc1	$f28,20($sp)
    swc1	$f28,16($sp)
    # Line 7765
    swc1	$f22,12($sp)
    swc1	$f22,8($sp)
    # Line 7763
    sd	$s8,184($sp)
    # Line 7780
    mtc1	$zero,$f4
    # Line 7763
    move	$s2,$a0
    # Line 7780
    lw	$s8,4112($zero)
    # Line 7763
    move	$s7,$a1
    # Line 7780
    lui	$s1,0x1
    # Line 7765
    swc1	$f22,4($sp)
    # Line 7763
    move	$s0,$a2
    # Line 7765
    swc1	$f22,0($sp)
    # Line 7780
    addu	$s1,$s8,$s1
    addiu	$a5,$sp,0
    # Line 7777
    addiu	$s6,$s6,-1
    # Line 7780
    lw	$a4,7148($s1)
    # Line 7785
    lwc1	$f1,592($a4)
    abs.s	$f7,$f1
    lwc1	$f2,596($a4)
    c.lt.s $f4,$f7
    abs.s	$f6,$f2
    movf.s	$f7,$f4,$fcc3
    lwc1	$f3,600($a4)
    c.lt.s $f7,$f6
    abs.s	$f0,$f3
    movf.s	$f6,$f7,$fcc2
    lwc1	$f5,604($a4)
    c.lt.s $f6,$f0
    sdc1	$f30,264($sp)
    abs.s	$f4,$f5
    movf.s	$f0,$f6,$fcc1
    swc1	$f5,12($sp)
    swc1	$f3,8($sp)
    c.lt.s	$f0,$f4
    swc1	$f2,4($sp)
    swc1	$f1,0($sp)
    movf.s	$f4,$f0,$fcc0
    # Line 7791
    lwc1	$f8,696($s8)
    # Line 7793
    lwc1	$f7,700($s8)
    # Line 7797
    lwc1	$f5,708($s8)
    # Line 7795
    lwc1	$f6,704($s8)
    # Line 7797
    swc1	$f5,28($sp)
    swc1	$f5,44($sp)
    # Line 7795
    swc1	$f6,24($sp)
    swc1	$f6,40($sp)
    # Line 7793
    swc1	$f7,20($sp)
    swc1	$f7,36($sp)
    # Line 7791
    swc1	$f8,16($sp)
    addiu	$a1,$sp,16
    # Line 7797
    mtc1	$zero,$f30
    # Line 7791
    swc1	$f8,32($sp)
    # Line 7797
    abs.s	$f10,$f8
    lwc1	$f31,4($a1)
    c.lt.s $f30,$f10
    abs.s	$f31,$f31
    movf.s	$f10,$f30,$fcc7
    lwc1	$f9,8($a1)
    c.lt.s $f10,$f31
    abs.s	$f9,$f9
    movf.s	$f31,$f10,$fcc6
    lwc1	$f30,12($a1)
    c.lt.s $f31,$f9
    abs.s	$f30,$f30
    movf.s	$f9,$f31,$fcc5
    sdc1	$f8,72($sp)
    sdc1	$f7,64($sp)
    c.lt.s $f9,$f30
    sdc1	$f6,56($sp)
    sdc1	$f5,48($sp)
    movf.s	$f30,$f9,$fcc4
    # Line 7800
    lbu	$t8,7120($s1)
    # Line 7829
    lui	$s5,0x4
    lui	$s4,0xfffd
    # Line 7800
    lw	$a0,-26972($s1)
    # Line 7829
    sll	$v0,$s6,0x2
    ori	$s4,$s4,0xffff
    ldc1	$f26,_lit8_3ff0000000000000
    # Line 7800
    beqz	$t8,.L0d99d3d0
    # Line 7829
    subu	$v0,$v0,$s6
    # Line 7811
    lui	$t9,0x10
    or	$t9,$a0,$t9
    sw	$t9,-26972($s1)
.L0d99ce1c:
    # Line 7815
    lw	$at,26976($s1)
    lui	$s3,0x20
    or	$at,$s3,$at
    sw	$at,26976($s1)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 7822
    lwc1	$f20,7712($s1)
    c.lt.s	$f20,$f4
    li	$a0,1
    # Line 7829
    sll	$v0,$v0,0x3
    subu	$v0,$v0,$s6
    # Line 7822
    movf	$a0,$zero,$fcc0
    # Line 7829
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$s6
    # Line 7822
    beqz	$a0,.L0d99ceb4
    # Line 7829
    sll	$v0,$v0,0x5
    # Line 7822
    c.le.s $f30,$f20
    bc1f .L0d99ceb4
    lwc1	$f5,_lit_3f800000
    c.lt.s $f20,$f4
    # Line 7829
    la	$s3,sub_0d9a0000
    # Line 7832
    li	$a5,1
    # Line 7822
    bc1f .L0d99d3e4
    # Line 7829
    addiu	$s3,$s3,-13472
    # Line 7822
    li	$a5,1
.L0d99ce80:
    # Line 7829
    mul.s	$f5,$f20,$f5
    div.s	$f11,$f4,$f5
    c.lt.s $f20,$f11
    bc1t .L0d99ce80
    # Line 7828
    addiu	$a5,$a5,1
    # Line 7829
    blez	$a5,.L0d99d05c
    sd	$s0,256($sp)
.L0d99ce9c:
    sd	$a5,200($sp)
    addiu	$v1,$a5,1
    sd	$v1,208($sp)
    li	$s0,1
    b	.L0d99d2d4
    sd	$v0,248($sp)
.L0d99ceb4:
    # Line 7895
    c.le.s $f4,$f20
    bc1f .L0d99cecc
    nop
    c.lt.s $f20,$f30
    bc1t .L0d99da5c
    # Line 7899
    nop	# was lw $t9, -17032($gp) # &ceilf
.L0d99cecc:
    # Line 7955
    beqz	$a0,.L0d99cee4
    # Line 8026
    addiu	$a5,$sp,0
    # Line 7955
    c.lt.s $f20,$f30
    bc1t .L0d99d3ec
    # Line 7965
    lui	$s5,0x4
    # Line 8026
    addiu	$a5,$sp,0
.L0d99cee4:
    lw	$a4,7148($s1)
    # Line 8081
    lwc1	$f12,592($a4)
    lwc1	$f13,596($a4)
    lwc1	$f15,604($a4)
    lwc1	$f14,600($a4)
    swc1	$f15,12($sp)
    swc1	$f14,8($sp)
    swc1	$f13,4($sp)
    swc1	$f12,0($sp)
    # Line 8092
    sll	$a1,$s6,0x2
    subu	$a1,$a1,$s6
    # Line 8088
    lwc1	$f16,708($s8)
    # Line 8092
    sll	$a1,$a1,0x3
    # Line 8087
    lwc1	$f17,704($s8)
    # Line 8092
    subu	$a1,$a1,$s6
    # Line 8086
    lwc1	$f18,700($s8)
    # Line 8092
    sll	$a1,$a1,0x2
    lw	$t1,20($s2)
    subu	$a1,$a1,$s6
    lwc1	$f27,0($sp)
    sll	$a1,$a1,0x5
    # Line 8085
    lwc1	$f19,696($s8)
    # Line 8092
    addu	$t1,$t1,$a1
    swc1	$f27,36($t1)
    # Line 8093
    lw	$t0,20($s2)
    lwc1	$f25,4($sp)
    addu	$t0,$t0,$a1
    swc1	$f25,184($t0)
    # Line 8094
    lw	$a7,20($s2)
    lwc1	$f23,8($sp)
    addu	$a7,$a7,$a1
    swc1	$f23,332($a7)
    # Line 8095
    lw	$a6,20($s2)
    lwc1	$f21,12($sp)
    addu	$a6,$a6,$a1
    swc1	$f21,480($a6)
    # Line 8096
    lw	$a5,20($s2)
    addu	$a5,$a5,$a1
    swc1	$f19,40($a5)
    # Line 8097
    lw	$a4,20($s2)
    addu	$a4,$a4,$a1
    swc1	$f18,188($a4)
    # Line 8098
    lw	$a3,20($s2)
    addu	$a3,$a3,$a1
    swc1	$f17,336($a3)
    # Line 8099
    lw	$a2,20($s2)
    # Line 8101
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8099
    addu	$a2,$a2,$a1
    swc1	$f16,484($a2)
    # Line 8101
    lw	$a0,20($s2)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 8104
    lw	$t0,31740($s8)
    lui	$t1,0x2
    nor	$t1,$t1,$zero
    and	$t0,$t0,$t1
    sw	$t0,31740($s8)
    # Line 8105
    lw	$a7,26976($s1)
    ori	$a7,$a7,0x2
    sw	$a7,26976($s1)
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 8108
    lw	$a5,31956($s8)
    lui	$a6,0x4
    or	$a5,$a5,$a6
    # Line 8109
    ori	$a5,$a5,0x4000
    sw	$a5,31956($s8)
    # Line 8110
    lw	$a4,26976($s1)
    ori	$a4,$a4,0x200
    sw	$a4,26976($s1)
    sw	$a3,4120($zero)
    lbu	$a2,7120($s1)
    # Line 8113
    lui	$t2,0x10
    # Line 8110
    beqz	$a2,.L0d99da48
    lw	$a0,-26972($s1)
    # Line 8113
    or	$t2,$a0,$t2
    sw	$t2,-26972($s1)
.L0d99d018:
    # Line 8121
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 8118
    lw	$t8,26976($s1)
    # Line 8121
    move	$a1,$s6
    addiu	$t9,$t9,-13472
    move	$a0,$s2
    # Line 8118
    or	$t8,$s3,$t8
    sw	$t8,26976($s1)
    # Line 8121
    li	$t3,2
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 8118
    sw	$t3,4120($zero)
    # Line 8122
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s0
    move	$a1,$s0
    move	$a2,$s7
    move	$a4,$zero
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
.L0d99d05c:
    ldc1	$f30,264($sp)
.L0d99d060:
    # Line 8127
    ld	$s0,144($sp)
    ld	$s1,136($sp)
    ld	$s2,192($sp)
    ld	$s3,176($sp)
    ld	$s4,152($sp)
    ld	$s5,128($sp)
    ld	$s6,168($sp)
    ld	$s7,120($sp)
    ld	$s8,184($sp)
    ldc1	$f20,104($sp)
    ldc1	$f22,88($sp)
    ld	$ra,160($sp)
    ldc1	$f24,80($sp)
    ldc1	$f26,112($sp)
    ldc1	$f28,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d99d0a4:
    # Line 7836
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d0bc
    # Line 7843
    ld	$a1,248($sp)
    # Line 7838
    swc1	$f5,12($a5)
.L0d99d0b8:
    # Line 7843
    ld	$a1,248($sp)
.L0d99d0bc:
    lw	$t1,20($s2)
    lwc1	$f1,0($sp)
    addu	$t1,$t1,$a1
    swc1	$f1,36($t1)
    # Line 7844
    lw	$t0,20($s2)
    lwc1	$f0,4($sp)
    addu	$t0,$t0,$a1
    swc1	$f0,184($t0)
    # Line 7845
    lw	$a7,20($s2)
    lwc1	$f31,8($sp)
    addu	$a7,$a7,$a1
    swc1	$f31,332($a7)
    # Line 7846
    lw	$a6,20($s2)
    lwc1	$f29,12($sp)
    addu	$a6,$a6,$a1
    swc1	$f29,480($a6)
    # Line 7847
    lw	$a5,20($s2)
    addu	$a5,$a5,$a1
    swc1	$f28,40($a5)
    # Line 7848
    lw	$a4,20($s2)
    addu	$a4,$a4,$a1
    swc1	$f28,188($a4)
    # Line 7849
    lw	$a3,20($s2)
    addu	$a3,$a3,$a1
    swc1	$f28,336($a3)
    # Line 7850
    lw	$a2,20($s2)
    # Line 7852
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 7850
    addu	$a2,$a2,$a1
    swc1	$f28,484($a2)
    # Line 7852
    lw	$a0,20($s2)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 7855
    lw	$at,31740($s8)
    and	$at,$s4,$at
    sw	$at,31740($s8)
    # Line 7856
    lw	$ra,26976($s1)
    ori	$ra,$ra,0x2
    sw	$ra,26976($s1)
    li	$t2,2
    sw	$t2,4120($zero)
    # Line 7859
    lw	$t9,31956($s8)
    # Line 7861
    ld	$t3,200($sp)
    # Line 7859
    or	$t9,$s5,$t9
    # Line 7860
    ori	$t9,$t9,0x4000
    sw	$t9,31956($s8)
    # Line 7861
    lw	$t8,26976($s1)
    ori	$t8,$t8,0x200
    sw	$t8,26976($s1)
    beq	$s0,$t3,.L0d99d374
    sw	$t2,4120($zero)
    # Line 7875
    move	$t9,$s3
.L0d99d188:
    move	$a0,$s2
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a1,$s6
    # Line 7877
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a2,$s7
    ld	$a1,256($sp)
    move	$a4,$zero
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    move	$a0,$a1
    # Line 7881
    mtc1	$s0,$f24
    lwc1	$f20,7712($s1)
    cvt.s.w	$f24,$f24
    # lw $t9, -17028($gp) # &powf
    mov.s	$f12,$f20
    jal	powf
    mov.s	$f13,$f24
    lw	$v0,7148($s1)
    lwc1	$f25,592($v0)
    abs.s	$f25,$f25
    div.s	$f25,$f25,$f0
    # Line 7882
    # lw $t9, -17028($gp) # &powf
    mov.s	$f13,$f24
    # Line 7881
    sd	$v0,240($sp)
    # Line 7882
    mov.s	$f12,$f20
    jal	powf
    # Line 7881
    swc1	$f25,0($sp)
    # Line 7882
    ld	$v1,240($sp)
    lwc1	$f27,596($v1)
    abs.s	$f27,$f27
    div.s	$f27,$f27,$f0
    # Line 7883
    # lw $t9, -17028($gp) # &powf
    mov.s	$f13,$f24
    mov.s	$f12,$f20
    jal	powf
    # Line 7882
    swc1	$f27,4($sp)
    # Line 7883
    ld	$a0,240($sp)
    lwc1	$f29,600($a0)
    abs.s	$f29,$f29
    div.s	$f29,$f29,$f0
    # Line 7884
    # lw $t9, -17028($gp) # &powf
    mov.s	$f13,$f24
    mov.s	$f12,$f20
    jal	powf
    # Line 7883
    swc1	$f29,8($sp)
    # Line 7884
    ld	$a1,240($sp)
    lwc1	$f31,604($a1)
    abs.s	$f31,$f31
    div.s	$f31,$f31,$f0
    # Line 7832
    ld	$a2,208($sp)
    # Line 7884
    addiu	$a5,$sp,0
    swc1	$f31,12($sp)
    lwc1	$f0,0($sp)
    abs.s	$f0,$f0
    cvt.d.s	$f0,$f0
    c.le.d	$f0,$f26
    bc1f	.L0d99d274
    nop
    # Line 7888
    swc1	$f22,0($sp)
.L0d99d274:
    # Line 7884
    lwc1	$f1,4($a5)
    abs.s	$f1,$f1
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f26
    bc1f .L0d99d290
    nop
    # Line 7888
    swc1	$f22,4($a5)
.L0d99d290:
    # Line 7884
    lwc1	$f2,8($a5)
    abs.s	$f2,$f2
    cvt.d.s	$f2,$f2
    c.le.d $f2,$f26
    bc1f .L0d99d2ac
    nop
    # Line 7888
    swc1	$f22,8($a5)
.L0d99d2ac:
    # Line 7884
    lwc1	$f3,12($a5)
    abs.s	$f3,$f3
    cvt.d.s	$f3,$f3
    c.le.d $f3,$f26
    bc1f .L0d99d2c8
    nop
    # Line 7888
    swc1	$f22,12($a5)
.L0d99d2c8:
    # Line 7832
    addiu	$s0,$s0,1
    beq	$s0,$a2,.L0d99d060
    ldc1	$f30,264($sp)
.L0d99d2d4:
    lwc1	$f4,0($sp)
    addiu	$a5,$sp,0
    c.lt.s $f20,$f4
    bc1f .L0d99d2f0
    nop
    # Line 7836
    b	.L0d99d304
    swc1	$f20,0($sp)
.L0d99d2f0:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d304
    nop
    # Line 7838
    swc1	$f5,0($sp)
.L0d99d304:
    # Line 7832
    lwc1	$f4,4($a5)
    c.lt.s $f20,$f4
    bc1f .L0d99d31c
    nop
    # Line 7836
    b	.L0d99d330
    swc1	$f20,4($a5)
.L0d99d31c:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d330
    nop
    # Line 7838
    swc1	$f5,4($a5)
.L0d99d330:
    # Line 7832
    lwc1	$f4,8($a5)
    c.lt.s	$f20,$f4
    bc1f	.L0d99d348
    nop
    # Line 7836
    b	.L0d99d35c
    swc1	$f20,8($a5)
.L0d99d348:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d35c
    nop
    # Line 7838
    swc1	$f5,8($a5)
.L0d99d35c:
    # Line 7832
    lwc1	$f4,12($a5)
    c.lt.s $f20,$f4
    bc1f .L0d99d0a4
    nop
    # Line 7836
    b	.L0d99d0b8
    swc1	$f20,12($a5)
.L0d99d374:
    # Line 7865
    ld	$a1,248($sp)
    lw	$a5,20($s2)
    ldc1	$f7,72($sp)
    addu	$a5,$a5,$a1
    swc1	$f7,40($a5)
    # Line 7866
    lw	$a4,20($s2)
    ldc1	$f6,64($sp)
    addu	$a4,$a4,$a1
    swc1	$f6,188($a4)
    # Line 7867
    lw	$a3,20($s2)
    ldc1	$f5,56($sp)
    addu	$a3,$a3,$a1
    swc1	$f5,336($a3)
    # Line 7868
    lw	$a2,20($s2)
    ldc1	$f4,48($sp)
    # Line 7870
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 7868
    addu	$a2,$a2,$a1
    swc1	$f4,484($a2)
    # Line 7870
    lw	$a0,20($s2)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    b	.L0d99d188
    # Line 7875
    move	$t9,$s3
.L0d99d3d0:
    # Line 7813
    lui	$a6,0x10
    nor	$a6,$a6,$zero
    and	$a6,$a0,$a6
    b	.L0d99ce1c
    sw	$a6,-26972($s1)
.L0d99d3e4:
    # Line 7832
    b	.L0d99ce9c
    sd	$s0,256($sp)
.L0d99d3ec:
    # Line 7955
    c.lt.s $f20,$f4
    # Line 7968
    li	$a5,1
    # Line 7965
    lui	$s4,0xfffd
    la	$s3,sub_0d9a0000
    # Line 7955
    lwc1	$f5,_lit_3f800000
    # Line 7965
    sll	$a7,$s6,0x2
    ori	$s4,$s4,0xffff
    ldc1	$f26,_lit8_3ff0000000000000
    subu	$a7,$a7,$s6
    # Line 7955
    bc1f .L0d99dd84
    # Line 7965
    addiu	$s3,$s3,-13472
    # Line 7955
    li	$a5,1
.L0d99d41c:
    # Line 7965
    mul.s	$f5,$f20,$f5
    div.s	$f8,$f4,$f5
    c.lt.s $f20,$f8
    bc1t .L0d99d41c
    # Line 7964
    addiu	$a5,$a5,1
    # Line 7965
    blez	$a5,.L0d99d728
    sd	$s0,256($sp)
.L0d99d438:
    sll	$a7,$a7,0x3
    subu	$a7,$a7,$s6
    sll	$a7,$a7,0x2
    subu	$a7,$a7,$s6
    addiu	$t0,$a5,1
    sd	$t0,208($sp)
    sll	$a7,$a7,0x5
    li	$s0,1
    b	.L0d99d688
    sd	$a7,248($sp)
.L0d99d460:
    # Line 7972
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d478
    # Line 7979
    ld	$a1,248($sp)
    # Line 7974
    swc1	$f5,12($a5)
.L0d99d474:
    # Line 7979
    ld	$a1,248($sp)
.L0d99d478:
    lw	$t1,20($s2)
    lwc1	$f12,0($sp)
    addu	$t1,$t1,$a1
    swc1	$f12,36($t1)
    # Line 7980
    lw	$t0,20($s2)
    lwc1	$f11,4($sp)
    addu	$t0,$t0,$a1
    swc1	$f11,184($t0)
    # Line 7981
    lw	$a7,20($s2)
    lwc1	$f10,8($sp)
    addu	$a7,$a7,$a1
    swc1	$f10,332($a7)
    # Line 7982
    lw	$a6,20($s2)
    lwc1	$f9,12($sp)
    addu	$a6,$a6,$a1
    swc1	$f9,480($a6)
    # Line 7983
    lw	$a5,20($s2)
    addu	$a5,$a5,$a1
    swc1	$f28,40($a5)
    # Line 7984
    lw	$a4,20($s2)
    addu	$a4,$a4,$a1
    swc1	$f28,188($a4)
    # Line 7985
    lw	$a3,20($s2)
    addu	$a3,$a3,$a1
    swc1	$f28,336($a3)
    # Line 7986
    lw	$a2,20($s2)
    # Line 7988
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 7986
    addu	$a2,$a2,$a1
    swc1	$f28,484($a2)
    # Line 7988
    lw	$a0,20($s2)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 7991
    lw	$ra,31740($s8)
    and	$ra,$s4,$ra
    sw	$ra,31740($s8)
    # Line 7992
    lw	$t9,26976($s1)
    ori	$t9,$t9,0x2
    sw	$t9,26976($s1)
    li	$t2,2
    sw	$t2,4120($zero)
    # Line 7995
    lw	$t8,31956($s8)
    or	$t8,$s5,$t8
    # Line 7996
    ori	$t8,$t8,0x4000
    sw	$t8,31956($s8)
    # Line 7997
    lw	$t3,26976($s1)
    # Line 8001
    move	$t9,$s3
    move	$a0,$s2
    # Line 7997
    ori	$t3,$t3,0x200
    sw	$t3,26976($s1)
    # Line 8001
    move	$a1,$s6
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 7997
    sw	$t2,4120($zero)
    # Line 8003
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a2,$s7
    ld	$a1,256($sp)
    move	$a4,$zero
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    move	$a0,$a1
    # Line 8007
    mtc1	$s0,$f24
    lwc1	$f20,7712($s1)
    cvt.s.w	$f24,$f24
    # lw $t9, -17028($gp) # &powf
    mov.s	$f12,$f20
    jal	powf
    mov.s	$f13,$f24
    lw	$at,7148($s1)
    lwc1	$f25,592($at)
    abs.s	$f25,$f25
    div.s	$f25,$f25,$f0
    # Line 8008
    # lw $t9, -17028($gp) # &powf
    mov.s	$f13,$f24
    # Line 8007
    sd	$at,240($sp)
    # Line 8008
    mov.s	$f12,$f20
    jal	powf
    # Line 8007
    swc1	$f25,0($sp)
    # Line 8008
    ld	$v0,240($sp)
    lwc1	$f27,596($v0)
    abs.s	$f27,$f27
    div.s	$f27,$f27,$f0
    # Line 8009
    # lw $t9, -17028($gp) # &powf
    mov.s	$f13,$f24
    mov.s	$f12,$f20
    jal	powf
    # Line 8008
    swc1	$f27,4($sp)
    # Line 8009
    ld	$v1,240($sp)
    lwc1	$f29,600($v1)
    abs.s	$f29,$f29
    div.s	$f29,$f29,$f0
    # Line 8010
    # lw $t9, -17028($gp) # &powf
    mov.s	$f13,$f24
    mov.s	$f12,$f20
    jal	powf
    # Line 8009
    swc1	$f29,8($sp)
    # Line 8010
    ld	$a0,240($sp)
    lwc1	$f31,604($a0)
    abs.s	$f31,$f31
    div.s	$f31,$f31,$f0
    # Line 7968
    ld	$a1,208($sp)
    # Line 8010
    addiu	$a5,$sp,0
    swc1	$f31,12($sp)
    lwc1	$f0,0($sp)
    abs.s	$f0,$f0
    cvt.d.s	$f0,$f0
    c.le.d $f0,$f26
    bc1f .L0d99d628
    nop
    # Line 8014
    swc1	$f22,0($sp)
.L0d99d628:
    # Line 8010
    lwc1	$f1,4($a5)
    abs.s	$f1,$f1
    cvt.d.s	$f1,$f1
    c.le.d $f1,$f26
    bc1f .L0d99d644
    nop
    # Line 8014
    swc1	$f22,4($a5)
.L0d99d644:
    # Line 8010
    lwc1	$f2,8($a5)
    abs.s	$f2,$f2
    cvt.d.s	$f2,$f2
    c.le.d	$f2,$f26
    bc1f	.L0d99d660
    nop
    # Line 8014
    swc1	$f22,8($a5)
.L0d99d660:
    # Line 8010
    lwc1	$f3,12($a5)
    abs.s	$f3,$f3
    cvt.d.s	$f3,$f3
    c.le.d $f3,$f26
    bc1f .L0d99d67c
    nop
    # Line 8014
    swc1	$f22,12($a5)
.L0d99d67c:
    # Line 7968
    addiu	$s0,$s0,1
    beq	$s0,$a1,.L0d99d72c
    # Line 8024
    nop	# was lw $t9, -17032($gp) # &ceilf
.L0d99d688:
    # Line 7968
    lwc1	$f4,0($sp)
    addiu	$a5,$sp,0
    c.lt.s $f20,$f4
    bc1f .L0d99d6a4
    nop
    # Line 7972
    b	.L0d99d6b8
    swc1	$f20,0($sp)
.L0d99d6a4:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d6b8
    nop
    # Line 7974
    swc1	$f5,0($sp)
.L0d99d6b8:
    # Line 7968
    lwc1	$f4,4($a5)
    c.lt.s $f20,$f4
    bc1f .L0d99d6d0
    nop
    # Line 7972
    b	.L0d99d6e4
    swc1	$f20,4($a5)
.L0d99d6d0:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d6e4
    nop
    # Line 7974
    swc1	$f5,4($a5)
.L0d99d6e4:
    # Line 7968
    lwc1	$f4,8($a5)
    c.lt.s $f20,$f4
    bc1f .L0d99d6fc
    nop
    # Line 7972
    b	.L0d99d710
    swc1	$f20,8($a5)
.L0d99d6fc:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d710
    nop
    # Line 7974
    swc1	$f5,8($a5)
.L0d99d710:
    # Line 7968
    lwc1	$f4,12($a5)
    c.lt.s	$f20,$f4
    bc1f	.L0d99d460
    nop
    # Line 7972
    b	.L0d99d474
    swc1	$f20,12($a5)
.L0d99d728:
    # Line 8024
    # lw $t9, -17032($gp) # &ceilf
.L0d99d72c:
    # Line 7968
    la	$s3,sub_0d9a0000
    # Line 8024
    div.s	$f12,$f30,$f20
    jal	ceilf
    # Line 7968
    addiu	$s3,$s3,-13472
    # Line 8024
    trunc.w.s	$f4,$f0
    sd	$s6,216($sp)
    mfc1	$t8,$f4
    sd	$s7,224($sp)
    ld	$ra,216($sp)
    lui	$s5,0x4
    sd	$t8,232($sp)
    blez	$t8,.L0d99d05c
    sll	$t9,$ra,0x2
    addiu	$s7,$sp,16
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    li	$s0,1
    subu	$t9,$t9,$ra
    move	$s6,$zero
    sll	$t9,$t9,0x2
    addiu	$s7,$s7,12
    subu	$t9,$t9,$ra
    lui	$s4,0xfffd
    sll	$t9,$t9,0x5
    ori	$s4,$s4,0xffff
    b	.L0d99d7b4
    sd	$t9,248($sp)
    nop
    nop
.L0d99d7a0:
    # Line 8073
    swc1	$f28,0($a4)
    nop
    nop
    nop
.L0d99d7b0:
    # Line 8026
    beqz	$t8,.L0d99d05c
.L0d99d7b4:
    # Line 8024
    lwc1	$f4,16($sp)
    addiu	$a4,$sp,16
    c.lt.s $f20,$f4
    bc1f .L0d99d7d0
    nop
    # Line 8029
    b	.L0d99d7e4
    swc1	$f20,16($sp)
.L0d99d7d0:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d7e4
    nop
    # Line 8031
    swc1	$f5,16($sp)
.L0d99d7e4:
    # Line 8024
    lwc1	$f4,4($a4)
    c.lt.s $f20,$f4
    bc1f .L0d99d7fc
    nop
    # Line 8029
    b	.L0d99d810
    swc1	$f20,4($a4)
.L0d99d7fc:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d810
    nop
    # Line 8031
    swc1	$f5,4($a4)
.L0d99d810:
    # Line 8024
    lwc1	$f4,8($a4)
    c.lt.s $f20,$f4
    bc1f .L0d99d828
    nop
    # Line 8029
    b	.L0d99d83c
    swc1	$f20,8($a4)
.L0d99d828:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99d83c
    nop
    # Line 8031
    swc1	$f5,8($a4)
.L0d99d83c:
    # Line 8024
    lwc1	$f4,12($a4)
    c.lt.s $f20,$f4
    bc1f .L0d99d854
    nop
    # Line 8029
    b	.L0d99d868
    swc1	$f20,12($a4)
.L0d99d854:
    neg.s	$f5,$f20
    c.lt.s	$f4,$f5
    bc1f	.L0d99d86c
    # Line 8040
    ld	$a1,248($sp)
    # Line 8031
    swc1	$f5,12($a4)
.L0d99d868:
    # Line 8040
    ld	$a1,248($sp)
.L0d99d86c:
    lw	$t1,20($s2)
    addu	$t1,$t1,$a1
    swc1	$f22,36($t1)
    # Line 8041
    lw	$t0,20($s2)
    addu	$t0,$t0,$a1
    swc1	$f22,184($t0)
    # Line 8042
    lw	$a7,20($s2)
    addu	$a7,$a7,$a1
    swc1	$f22,332($a7)
    # Line 8043
    lw	$a6,20($s2)
    addu	$a6,$a6,$a1
    swc1	$f22,480($a6)
    # Line 8044
    lw	$a5,20($s2)
    lwc1	$f8,16($sp)
    addu	$a5,$a5,$a1
    swc1	$f8,40($a5)
    # Line 8045
    lw	$a4,20($s2)
    lwc1	$f7,20($sp)
    addu	$a4,$a4,$a1
    swc1	$f7,188($a4)
    # Line 8046
    lw	$a3,20($s2)
    lwc1	$f6,24($sp)
    addu	$a3,$a3,$a1
    swc1	$f6,336($a3)
    # Line 8047
    lw	$a2,20($s2)
    lwc1	$f5,28($sp)
    # Line 8049
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8047
    addu	$a2,$a2,$a1
    swc1	$f5,484($a2)
    # Line 8049
    lw	$a0,20($s2)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 8052
    lw	$ra,31740($s8)
    and	$ra,$s4,$ra
    sw	$ra,31740($s8)
    # Line 8053
    lw	$t9,26976($s1)
    ori	$t9,$t9,0x2
    sw	$t9,26976($s1)
    li	$t2,2
    sw	$t2,4120($zero)
    # Line 8056
    lw	$t8,31956($s8)
    or	$t8,$s5,$t8
    # Line 8057
    ori	$t8,$t8,0x4000
    sw	$t8,31956($s8)
    # Line 8058
    lw	$t3,26976($s1)
    # Line 8061
    ld	$a1,216($sp)
    move	$t9,$s3
    # Line 8058
    ori	$t3,$t3,0x200
    sw	$t3,26976($s1)
    # Line 8061
    move	$a0,$s2
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 8058
    sw	$t2,4120($zero)
    # Line 8063
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    ld	$a1,256($sp)
    move	$a4,$zero
    li	$a3,1
    ld	$a2,224($sp)
    jal	__glOdysseyImageMovePixelsCopy
    move	$a0,$a1
    mtc1	$s0,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f20,7712($s1)
    addiu	$a5,$sp,32
    # Line 8026
    addiu	$s0,$s0,1
    ld	$t8,232($sp)
    addiu	$s6,$s6,1
    # Line 8063
    addiu	$a4,$sp,16
    lwc1	$f4,32($sp)
    # Line 8067
    addiu	$a4,$a4,4
    # Line 8026
    slt	$t8,$s6,$t8
    # Line 8063
    mul.s	$f5,$f6,$f20
    c.lt.s $f5,$f4
    bc1f .L0d99d9a0
    nop
    # Line 8069
    nmsub.s	$f7,$f4,$f6,$f20
    b	.L0d99d9c0
    swc1	$f7,16($sp)
.L0d99d9a0:
    neg.s	$f8,$f5
    c.lt.s $f4,$f8
    bc1f .L0d99d9bc
    nop
    # Line 8071
    madd.s	$f9,$f4,$f6,$f20
    b	.L0d99d9c0
    swc1	$f9,16($sp)
.L0d99d9bc:
    # Line 8073
    swc1	$f28,16($sp)
.L0d99d9c0:
    # Line 8067
    beq	$a4,$s7,.L0d99d7b0
    nop
    # Line 8063
    lwc1	$f4,4($a5)
    c.lt.s $f5,$f4
    bc1f .L0d99d9e4
    nop
    # Line 8069
    sub.s	$f10,$f4,$f5
    b	.L0d99da04
    swc1	$f10,0($a4)
.L0d99d9e4:
    neg.s	$f11,$f5
    c.lt.s $f4,$f11
    bc1f .L0d99da00
    nop
    # Line 8071
    add.s	$f12,$f4,$f5
    b	.L0d99da04
    swc1	$f12,0($a4)
.L0d99da00:
    # Line 8073
    swc1	$f28,0($a4)
.L0d99da04:
    # Line 8067
    addiu	$a4,$a4,4
    beq	$a4,$s7,.L0d99d7b0
    nop
    # Line 8063
    lwc1	$f4,8($a5)
    c.lt.s $f5,$f4
    bc1f .L0d99da2c
    nop
    # Line 8069
    sub.s	$f13,$f4,$f5
    b	.L0d99d7b0
    swc1	$f13,0($a4)
.L0d99da2c:
    neg.s	$f14,$f5
    c.lt.s $f4,$f14
    bc1f .L0d99d7a0
    nop
    # Line 8071
    add.s	$f15,$f4,$f5
    b	.L0d99d7b0
    swc1	$f15,0($a4)
.L0d99da48:
    # Line 8115
    lui	$at,0x10
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0d99d018
    sw	$at,-26972($s1)
.L0d99da5c:
    # Line 7899
    jalr	$t9
    div.s	$f12,$f30,$f20
    trunc.w.s	$f16,$f0
    sd	$s0,256($sp)
    sd	$s6,216($sp)
    mfc1	$v0,$f16
    sd	$s7,224($sp)
    lui	$s5,0x4
    ld	$a0,216($sp)
    move	$s6,$zero
    sd	$v0,232($sp)
    blez	$v0,.L0d99d05c
    sll	$v1,$a0,0x2
    lwc1	$f9,12($sp)
    subu	$v1,$v1,$a0
    li	$s0,1
    sll	$v1,$v1,0x3
    lwc1	$f8,8($sp)
    lui	$s4,0xfffd
    subu	$v1,$v1,$a0
    lwc1	$f7,4($sp)
    addiu	$s7,$sp,16
    sll	$v1,$v1,0x2
    addiu	$s7,$s7,12
    la	$s3,sub_0d9a0000
    subu	$v1,$v1,$a0
    lwc1	$f6,0($sp)
    ori	$s4,$s4,0xffff
    sll	$v1,$v1,0x5
    addiu	$s3,$s3,-13472
    b	.L0d99dae8
    sd	$v1,248($sp)
.L0d99dadc:
    # Line 7944
    swc1	$f28,0($a4)
.L0d99dae0:
    # Line 7948
    mov.s	$f6,$f22
.L0d99dae4:
    # Line 7901
    beqz	$t8,.L0d99d05c
.L0d99dae8:
    # Line 7899
    lwc1	$f4,16($sp)
    addiu	$a4,$sp,16
    c.lt.s $f20,$f4
    bc1f .L0d99db04
    nop
    # Line 7904
    b	.L0d99db18
    swc1	$f20,16($sp)
.L0d99db04:
    neg.s	$f5,$f20
    c.lt.s	$f4,$f5
    bc1f	.L0d99db18
    nop
    # Line 7906
    swc1	$f5,16($sp)
.L0d99db18:
    # Line 7899
    lwc1	$f4,4($a4)
    c.lt.s $f20,$f4
    bc1f .L0d99db30
    nop
    # Line 7904
    b	.L0d99db44
    swc1	$f20,4($a4)
.L0d99db30:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99db44
    nop
    # Line 7906
    swc1	$f5,4($a4)
.L0d99db44:
    # Line 7899
    lwc1	$f4,8($a4)
    c.lt.s $f20,$f4
    bc1f .L0d99db5c
    nop
    # Line 7904
    b	.L0d99db70
    swc1	$f20,8($a4)
.L0d99db5c:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99db70
    nop
    # Line 7906
    swc1	$f5,8($a4)
.L0d99db70:
    # Line 7899
    lwc1	$f4,12($a4)
    c.lt.s $f20,$f4
    bc1f .L0d99db88
    nop
    # Line 7904
    b	.L0d99db9c
    swc1	$f20,12($a4)
.L0d99db88:
    neg.s	$f5,$f20
    c.lt.s $f4,$f5
    bc1f .L0d99dba0
    # Line 7911
    ld	$a1,248($sp)
    # Line 7906
    swc1	$f5,12($a4)
.L0d99db9c:
    # Line 7911
    ld	$a1,248($sp)
.L0d99dba0:
    lw	$t1,20($s2)
    addu	$t1,$t1,$a1
    swc1	$f6,36($t1)
    # Line 7912
    lw	$t0,20($s2)
    addu	$t0,$t0,$a1
    swc1	$f7,184($t0)
    # Line 7913
    lw	$a7,20($s2)
    addu	$a7,$a7,$a1
    swc1	$f8,332($a7)
    # Line 7914
    lw	$a6,20($s2)
    addu	$a6,$a6,$a1
    swc1	$f9,480($a6)
    # Line 7915
    lw	$a5,20($s2)
    lwc1	$f21,16($sp)
    addu	$a5,$a5,$a1
    swc1	$f21,40($a5)
    # Line 7916
    lw	$a4,20($s2)
    lwc1	$f19,20($sp)
    addu	$a4,$a4,$a1
    swc1	$f19,188($a4)
    # Line 7917
    lw	$a3,20($s2)
    lwc1	$f18,24($sp)
    addu	$a3,$a3,$a1
    swc1	$f18,336($a3)
    # Line 7918
    lw	$a2,20($s2)
    lwc1	$f17,28($sp)
    # Line 7920
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 7918
    addu	$a2,$a2,$a1
    swc1	$f17,484($a2)
    # Line 7920
    lw	$a0,20($s2)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$a1
    # Line 7923
    lw	$ra,31740($s8)
    and	$ra,$s4,$ra
    sw	$ra,31740($s8)
    # Line 7924
    lw	$t9,26976($s1)
    ori	$t9,$t9,0x2
    sw	$t9,26976($s1)
    li	$t2,2
    sw	$t2,4120($zero)
    # Line 7927
    lw	$t8,31956($s8)
    or	$t8,$s5,$t8
    # Line 7928
    ori	$t8,$t8,0x4000
    sw	$t8,31956($s8)
    # Line 7929
    lw	$t3,26976($s1)
    # Line 7932
    ld	$a1,216($sp)
    move	$t9,$s3
    # Line 7929
    ori	$t3,$t3,0x200
    sw	$t3,26976($s1)
    # Line 7932
    move	$a0,$s2
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 7929
    sw	$t2,4120($zero)
    # Line 7934
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    ld	$a1,256($sp)
    move	$a4,$zero
    li	$a3,1
    ld	$a2,224($sp)
    jal	__glOdysseyImageMovePixelsCopy
    move	$a0,$a1
    mtc1	$s0,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f20,7712($s1)
    addiu	$a5,$sp,32
    # Line 7901
    addiu	$s0,$s0,1
    ld	$t8,232($sp)
    addiu	$s6,$s6,1
    # Line 7934
    addiu	$a4,$sp,16
    lwc1	$f4,32($sp)
    # Line 7938
    addiu	$a4,$a4,4
    # Line 7901
    slt	$t8,$s6,$t8
    # Line 7934
    mul.s	$f5,$f6,$f20
    c.lt.s $f5,$f4
    bc1f .L0d99dcd4
    nop
    # Line 7940
    nmsub.s	$f7,$f4,$f6,$f20
    b	.L0d99dcf4
    swc1	$f7,16($sp)
.L0d99dcd4:
    neg.s	$f8,$f5
    c.lt.s	$f4,$f8
    bc1f	.L0d99dcf0
    nop
    # Line 7942
    madd.s	$f9,$f4,$f6,$f20
    b	.L0d99dcf4
    swc1	$f9,16($sp)
.L0d99dcf0:
    # Line 7944
    swc1	$f28,16($sp)
.L0d99dcf4:
    # Line 7948
    mov.s	$f8,$f22
    mov.s	$f7,$f22
    # Line 7938
    beq	$a4,$s7,.L0d99dae0
    # Line 7948
    mov.s	$f9,$f22
    # Line 7934
    lwc1	$f4,4($a5)
    c.lt.s $f5,$f4
    bc1f .L0d99dd20
    nop
    # Line 7940
    sub.s	$f10,$f4,$f5
    b	.L0d99dd40
    swc1	$f10,0($a4)
.L0d99dd20:
    neg.s	$f11,$f5
    c.lt.s $f4,$f11
    bc1f .L0d99dd3c
    nop
    # Line 7942
    add.s	$f12,$f4,$f5
    b	.L0d99dd40
    swc1	$f12,0($a4)
.L0d99dd3c:
    # Line 7944
    swc1	$f28,0($a4)
.L0d99dd40:
    # Line 7938
    addiu	$a4,$a4,4
    beq	$a4,$s7,.L0d99dae4
    # Line 7948
    mov.s	$f6,$f22
    # Line 7934
    lwc1	$f4,8($a5)
    c.lt.s $f5,$f4
    bc1f .L0d99dd68
    nop
    # Line 7940
    sub.s	$f13,$f4,$f5
    b	.L0d99dae0
    swc1	$f13,0($a4)
.L0d99dd68:
    neg.s	$f14,$f5
    c.lt.s $f4,$f14
    bc1f .L0d99dadc
    nop
    # Line 7942
    add.s	$f15,$f4,$f5
    b	.L0d99dae0
    swc1	$f15,0($a4)
.L0d99dd84:
    # Line 7968
    b	.L0d99d438
    sd	$s0,256($sp)
.end ConvolutionDenormAndScale

# Function: ConvolutionClampToZero
# Declared: Line 8135 (Source lines: 8140-8424)
# Address: 0x0d99dd90 - 0x0d99e4b0 (Size: 1824 bytes, Frame: 224)
.ent ConvolutionClampToZero
ConvolutionClampToZero:
    # Line 8140
    addiu	$sp,$sp,-96
    sd	$s7,80($sp)
    sd	$s3,32($sp)
    sd	$s0,56($sp)
    sd	$s1,64($sp)
    sd	$s5,72($sp)
    # Line 8152
    mtc1	$zero,$f4
    # Line 8148
    lw	$s5,16($a0)
    # Line 8140
    move	$s0,$a0
    move	$s3,$a1
    sd	$s2,16($sp)
    move	$s7,$a4
    # Line 8152
    lw	$s2,4112($zero)
    # Line 8148
    addiu	$s5,$s5,-1
    # Line 8152
    lui	$s1,0x1
    # Line 8140
    sd	$s6,24($sp)
    # Line 8152
    sll	$s6,$s5,0x2
    # Line 8140
    sd	$s4,40($sp)
    # Line 8152
    addu	$s1,$s2,$s1
    subu	$s6,$s6,$s5
    lui	$s4,0x4
    lbu	$a6,7120($s1)
    sll	$s6,$s6,0x3
    # Line 8140
    sd	$s8,48($sp)
    # Line 8152
    lui	$s8,0xfffd
    subu	$s6,$s6,$s5
    ori	$s8,$s8,0xffff
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$s5
    beqz	$a6,.L0d99e110
    sll	$s6,$s6,0x5
    lw	$t8,31600($s2)
    lwc1	$f5,_lit_3f800000
    sd	$a2,8($sp)
    andi	$t8,$t8,0x80
    sd	$ra,88($sp)
    beqz	$t8,.L0d99e120
    sd	$a3,0($sp)
    # Line 8298
    lw	$t0,20($a0)
    addu	$t0,$t0,$s6
    swc1	$f5,36($t0)
    # Line 8299
    lw	$a7,20($a0)
    addu	$a7,$a7,$s6
    swc1	$f5,184($a7)
    # Line 8300
    lw	$a6,20($a0)
    addu	$a6,$a6,$s6
    swc1	$f5,332($a6)
    # Line 8301
    lw	$a5,20($a0)
    addu	$a5,$a5,$s6
    swc1	$f5,480($a5)
    # Line 8302
    lw	$a4,20($a0)
    mtc1	$zero,$f0
    addu	$a4,$a4,$s6
    swc1	$f0,40($a4)
    # Line 8303
    lw	$a3,20($a0)
    addu	$a3,$a3,$s6
    swc1	$f0,188($a3)
    # Line 8304
    lw	$a2,20($a0)
    addu	$a2,$a2,$s6
    swc1	$f0,336($a2)
    # Line 8305
    lw	$a1,20($a0)
    # Line 8307
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8305
    addu	$a1,$a1,$s6
    swc1	$f0,484($a1)
    # Line 8307
    lw	$a0,20($a0)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s6
    # Line 8315
    lw	$a1,26976($s1)
    # Line 8309
    lw	$a2,-26972($s1)
    # Line 8315
    lui	$a0,0x20
    # Line 8309
    lui	$a3,0x10
    # Line 8315
    or	$a0,$a0,$a1
    sw	$a0,26976($s1)
    # Line 8309
    or	$a2,$a2,$a3
    # Line 8314
    ori	$a2,$a2,0x1
    sw	$a2,-26972($s1)
    # Line 8315
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 8318
    lw	$v1,31740($s2)
    and	$v1,$s8,$v1
    sw	$v1,31740($s2)
    # Line 8319
    lw	$v0,26976($s1)
    ori	$v0,$v0,0x2
    sw	$v0,26976($s1)
    sw	$t1,4120($zero)
    # Line 8322
    lw	$at,31956($s2)
    # Line 8309
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 8322
    or	$at,$s4,$at
    # Line 8323
    ori	$at,$at,0x4000
    sw	$at,31956($s2)
    # Line 8324
    lw	$ra,26976($s1)
    # Line 8309
    addiu	$t9,$t9,-13472
    # Line 8327
    move	$a0,$s0
    # Line 8324
    ori	$ra,$ra,0x200
    sw	$ra,26976($s1)
    # Line 8327
    move	$a1,$s5
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 8324
    sw	$t1,4120($zero)
    # Line 8329
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s7
    move	$a2,$s3
    move	$a4,$zero
    ld	$a1,0($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    mtc1	$zero,$f4
.L0d99df38:
    lbu	$a6,7120($s1)
.L0d99df3c:
    # Line 8347
    lwc1	$f2,_lit_3f800000
    # Line 8329
    lwc1	$f1,_lit_40000801
    # Line 8358
    lw	$t0,20($s0)
    addu	$t0,$t0,$s6
    movz.s	$f1,$f2,$a6
    swc1	$f1,36($t0)
    # Line 8359
    lw	$a7,20($s0)
    addu	$a7,$a7,$s6
    swc1	$f1,184($a7)
    # Line 8360
    lw	$a6,20($s0)
    addu	$a6,$a6,$s6
    swc1	$f1,332($a6)
    # Line 8361
    lw	$a5,20($s0)
    addu	$a5,$a5,$s6
    swc1	$f1,480($a5)
    # Line 8362
    lw	$a4,20($s0)
    addu	$a4,$a4,$s6
    swc1	$f4,40($a4)
    # Line 8363
    lw	$a3,20($s0)
    addu	$a3,$a3,$s6
    swc1	$f4,188($a3)
    # Line 8364
    lw	$a2,20($s0)
    addu	$a2,$a2,$s6
    swc1	$f4,336($a2)
    # Line 8365
    lw	$a1,20($s0)
    # Line 8367
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8365
    addu	$a1,$a1,$s6
    swc1	$f4,484($a1)
    # Line 8367
    lw	$a0,20($s0)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s6
    # Line 8370
    lw	$a2,-26972($s1)
    lui	$a1,0xffef
    ori	$a1,$a1,0xffff
    and	$a1,$a1,$a2
    sw	$a1,-26972($s1)
    # Line 8373
    lw	$a0,31740($s2)
    and	$a0,$s8,$a0
    sw	$a0,31740($s2)
    # Line 8374
    lw	$v1,26976($s1)
    ori	$v1,$v1,0x2
    sw	$v1,26976($s1)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 8377
    lw	$v0,31956($s2)
    # Line 8383
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 8377
    or	$v0,$s4,$v0
    # Line 8378
    ori	$v0,$v0,0x4000
    sw	$v0,31956($s2)
    # Line 8379
    lw	$at,26976($s1)
    # Line 8383
    addiu	$t9,$t9,-13472
    move	$a1,$s5
    # Line 8379
    ori	$at,$at,0x200
    sw	$at,26976($s1)
    sw	$ra,4120($zero)
    # Line 8383
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a0,$s0
    lw	$a2,7124($s1)
    li	$a3,0x8150
    beq	$a2,$a3,.L0d99e0a8
    lbu	$a6,7120($s1)
    # Line 8410
    ld	$a5,8($sp)
    lwc1	$f6,16($a5)
    swc1	$f6,16($s3)
    lwc1	$f5,20($a5)
    swc1	$f5,20($s3)
    lwc1	$f4,24($a5)
    swc1	$f4,24($s3)
    lwc1	$f3,28($a5)
    swc1	$f3,28($s3)
    lbu	$a4,7120($s1)
    beqz	$a4,.L0d99e470
    lw	$a0,72($s0)
    # Line 8413
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s7
    move	$a2,$s3
    li	$a4,1
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    ld	$s2,16($sp)
.L0d99e07c:
    ld	$s6,24($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    ld	$s8,48($sp)
    ld	$s0,56($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
    # Line 8424
    jr	$ra
    addiu	$sp,$sp,96
.L0d99e0a8:
    # Line 8383
    beqz	$a6,.L0d99e490
    lw	$a0,68($s0)
    # Line 8390
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s7
    move	$a2,$s3
    move	$a4,$zero
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 8401
    ld	$a7,8($sp)
.L0d99e0cc:
    lwc1	$f10,16($a7)
    swc1	$f10,16($s3)
    lwc1	$f9,20($a7)
    swc1	$f9,20($s3)
    lwc1	$f8,24($a7)
    swc1	$f8,24($s3)
    lwc1	$f7,28($a7)
    # Line 8402
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 8401
    swc1	$f7,28($s3)
    # Line 8402
    li	$a4,1
    li	$a3,1
    lw	$a1,68($s0)
    move	$a2,$s3
    jal	__glOdysseyImageMovePixelsCopy
    lw	$a0,72($s0)
    b	.L0d99e07c
    ld	$s2,16($sp)
.L0d99e110:
    sd	$a2,8($sp)
    sd	$ra,88($sp)
    b	.L0d99df3c
    sd	$a3,0($sp)
.L0d99e120:
    # Line 8165
    lw	$t3,31740($s2)
    and	$t3,$s8,$t3
    sw	$t3,31740($s2)
    # Line 8166
    lw	$t2,26976($s1)
    ori	$t2,$t2,0x2
    sw	$t2,26976($s1)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 8182
    lw	$t0,20($a0)
    mtc1	$zero,$f12
    addu	$t0,$t0,$s6
    swc1	$f12,36($t0)
    # Line 8183
    lw	$a7,20($a0)
    addu	$a7,$a7,$s6
    swc1	$f12,184($a7)
    # Line 8184
    lw	$a6,20($a0)
    addu	$a6,$a6,$s6
    swc1	$f12,332($a6)
    # Line 8185
    lw	$a5,20($a0)
    addu	$a5,$a5,$s6
    swc1	$f12,480($a5)
    # Line 8186
    lw	$a4,20($a0)
    lwc1	$f11,_lit_3f000000
    addu	$a4,$a4,$s6
    swc1	$f11,40($a4)
    # Line 8187
    lw	$a3,20($a0)
    addu	$a3,$a3,$s6
    swc1	$f11,188($a3)
    # Line 8188
    lw	$a2,20($a0)
    addu	$a2,$a2,$s6
    swc1	$f11,336($a2)
    # Line 8189
    lw	$a1,20($a0)
    # Line 8191
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8189
    addu	$a1,$a1,$s6
    swc1	$f11,484($a1)
    # Line 8191
    lw	$a0,20($a0)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s6
    # Line 8195
    lw	$a0,31956($s2)
    or	$a0,$s4,$a0
    # Line 8196
    ori	$a0,$a0,0x4000
    sw	$a0,31956($s2)
    # Line 8197
    lw	$v1,26976($s1)
    # Line 8195
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 8197
    ori	$v1,$v1,0x200
    sw	$v1,26976($s1)
    li	$t8,2
    sw	$t8,4120($zero)
    # Line 8199
    lui	$v0,0xffef
    lw	$v1,-26972($s1)
    # Line 8200
    lui	$ra,0x20
    # Line 8199
    ori	$v0,$v0,0xffff
    # Line 8200
    lw	$at,26976($s1)
    # Line 8195
    addiu	$t9,$t9,-13472
    # Line 8199
    and	$v0,$v0,$v1
    sw	$v0,-26972($s1)
    # Line 8203
    move	$a1,$s5
    # Line 8200
    or	$ra,$ra,$at
    sw	$ra,26976($s1)
    # Line 8203
    move	$a0,$s0
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 8200
    sw	$t8,4120($zero)
    # Line 8205
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s7
    move	$a2,$s3
    ld	$a1,0($sp)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    # Line 8218
    lw	$t0,20($s0)
    lwc1	$f14,_lit_3f800000
    addu	$t0,$t0,$s6
    swc1	$f14,36($t0)
    # Line 8219
    lw	$a7,20($s0)
    addu	$a7,$a7,$s6
    swc1	$f14,184($a7)
    # Line 8220
    lw	$a6,20($s0)
    addu	$a6,$a6,$s6
    swc1	$f14,332($a6)
    # Line 8221
    lw	$a5,20($s0)
    addu	$a5,$a5,$s6
    swc1	$f14,480($a5)
    # Line 8222
    lw	$a4,20($s0)
    mtc1	$zero,$f13
    addu	$a4,$a4,$s6
    swc1	$f13,40($a4)
    # Line 8223
    lw	$a3,20($s0)
    addu	$a3,$a3,$s6
    swc1	$f13,188($a3)
    # Line 8224
    lw	$a2,20($s0)
    addu	$a2,$a2,$s6
    swc1	$f13,336($a2)
    # Line 8225
    lw	$a1,20($s0)
    # Line 8227
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8225
    addu	$a1,$a1,$s6
    swc1	$f13,484($a1)
    # Line 8227
    lw	$a0,20($s0)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s6
    # Line 8230
    lw	$t0,31740($s2)
    lui	$t1,0x2
    or	$t0,$t0,$t1
    sw	$t0,31740($s2)
    # Line 8231
    lw	$a7,26976($s1)
    ori	$a7,$a7,0x2
    sw	$a7,26976($s1)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 8235
    lw	$a5,26976($s1)
    # Line 8233
    lui	$a6,0xfff9
    lw	$a7,-26972($s1)
    # Line 8235
    lui	$a4,0x20
    # Line 8233
    ori	$a6,$a6,0xffff
    # Line 8235
    or	$a4,$a4,$a5
    sw	$a4,26976($s1)
    # Line 8233
    and	$a6,$a6,$a7
    or	$a6,$s4,$a6
    sw	$a6,-26972($s1)
    # Line 8246
    li	$v0,-64
    # Line 8235
    sw	$ra,4120($zero)
    # Line 8239
    li	$a0,-4096
    # Line 8244
    li	$v1,-8129
    # Line 8240
    lw	$a4,31804($s2)
    # Line 8242
    lui	$a2,0xffff
    # Line 8238
    lui	$a3,0xff00
    lw	$a1,31800($s2)
    # Line 8242
    ori	$a2,$a2,0x1fff
    # Line 8238
    ori	$a3,$a3,0xfff
    and	$a1,$a3,$a1
    # Line 8240
    and	$a3,$a3,$a4
    # Line 8242
    lw	$a4,31796($s2)
    # Line 8240
    ori	$a3,$a3,0x1000
    # Line 8238
    ori	$a1,$a1,0x1000
    # Line 8239
    and	$a1,$a0,$a1
    # Line 8242
    and	$a2,$a2,$a4
    # Line 8252
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 8241
    and	$a0,$a0,$a3
    # Line 8244
    and	$v1,$v1,$a2
    # Line 8241
    ori	$a0,$a0,0x1
    sw	$a0,31804($s2)
    # Line 8244
    ori	$v1,$v1,0xa00
    # Line 8239
    ori	$a1,$a1,0x1
    sw	$a1,31800($s2)
    # Line 8246
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x8
    sw	$v0,31796($s2)
    # Line 8249
    lw	$at,26976($s1)
    # Line 8252
    addiu	$t9,$t9,-13472
    move	$a0,$s0
    # Line 8249
    ori	$at,$at,0x1
    sw	$at,26976($s1)
    sw	$ra,4120($zero)
    # Line 8252
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a1,$s5
    # Line 8254
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a1,$s7
    move	$a2,$s3
    ld	$a0,0($sp)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    # Line 8264
    lui	$a1,0x20
    lw	$a2,26976($s1)
    # Line 8262
    lui	$a3,0xfff9
    # Line 8261
    lw	$a5,-26972($s1)
    lui	$a4,0xffef
    # Line 8262
    ori	$a3,$a3,0xffff
    # Line 8261
    ori	$a4,$a4,0xffff
    # Line 8264
    or	$a1,$a1,$a2
    sw	$a1,26976($s1)
    # Line 8261
    and	$a4,$a4,$a5
    # Line 8262
    and	$a3,$a3,$a4
    sw	$a3,-26972($s1)
    # Line 8275
    lui	$v0,0xffff
    # Line 8264
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 8267
    lui	$a0,0xff
    # Line 8275
    ori	$v0,$v0,0x1fff
    # Line 8271
    lw	$a4,31796($s2)
    # Line 8267
    ori	$a0,$a0,0xf000
    lw	$a2,31800($s2)
    # Line 8271
    li	$a3,-8129
    # Line 8273
    li	$v1,-64
    # Line 8269
    lw	$a1,31804($s2)
    # Line 8271
    and	$a3,$a3,$a4
    # Line 8267
    or	$a2,$a0,$a2
    # Line 8271
    ori	$a3,$a3,0xa00
    # Line 8280
    # lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 8269
    or	$a0,$a0,$a1
    # Line 8273
    and	$v1,$v1,$a3
    # Line 8270
    ori	$a0,$a0,0xfff
    sw	$a0,31804($s2)
    # Line 8273
    ori	$v1,$v1,0x8
    # Line 8268
    ori	$a2,$a2,0xfff
    sw	$a2,31800($s2)
    # Line 8275
    and	$v0,$v0,$v1
    ori	$v0,$v0,0xc000
    sw	$v0,31796($s2)
    # Line 8277
    lw	$at,26976($s1)
    # Line 8280
    addiu	$t9,$t9,-13472
    move	$a1,$s5
    # Line 8277
    ori	$at,$at,0x1
    sw	$at,26976($s1)
    sw	$ra,4120($zero)
    # Line 8280
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a0,$s0
    # Line 8282
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s7
    move	$a2,$s3
    ld	$a1,0($sp)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    b	.L0d99df38
    mtc1	$zero,$f4
.L0d99e470:
    # Line 8417
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a2,$s3
    li	$a4,1
    ld	$a1,0($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    b	.L0d99e07c
    ld	$s2,16($sp)
.L0d99e490:
    # Line 8394
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a2,$s3
    move	$a4,$zero
    ld	$a1,0($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    b	.L0d99e0cc
    # Line 8401
    ld	$a7,8($sp)
.end ConvolutionClampToZero

# Function: AddConvolutionBorders
# Declared: Line 8433 (Source lines: 8435-9395)
# Address: 0x0d99e4b0 - 0x0d9a0b38 (Size: 9864 bytes, Frame: 176)
.ent AddConvolutionBorders
AddConvolutionBorders:
    # Line 8435
    addiu	$sp,$sp,-432
    sd	$a3,392($sp)
    sd	$s4,312($sp)
    sd	$s2,320($sp)
    sd	$s5,304($sp)
    sd	$ra,368($sp)
    sd	$s3,344($sp)
    # Line 8467
    lw	$s3,4112($zero)
    # Line 8435
    sd	$s8,336($sp)
    # Line 8490
    lw	$t8,764($s3)
    # Line 8500
    lw	$ra,31740($s3)
    # Line 8492
    lwc1	$f29,60($t8)
    lwc1	$f31,56($t8)
    lwc1	$f0,52($t8)
    lwc1	$f1,48($t8)
    # Line 8435
    sd	$s7,352($sp)
    move	$s4,$a4
    # Line 8500
    lui	$at,0x2
    # Line 8444
    lw	$s7,16($a1)
    # Line 8500
    nor	$at,$at,$zero
    # Line 8501
    lui	$s5,0x1
    # Line 8491
    lw	$a4,68($t8)
    # Line 8501
    addu	$s2,$s5,$s3
    # Line 8490
    lw	$a3,64($t8)
    # Line 8444
    addiu	$s7,$s7,-1
    # Line 8500
    and	$ra,$ra,$at
    sw	$ra,31740($s3)
    # Line 8512
    sll	$s8,$s7,0x2
    # Line 8501
    lw	$ra,26976($s2)
    # Line 8512
    subu	$s8,$s8,$s7
    # Line 8435
    sdc1	$f24,240($sp)
    # Line 8512
    sll	$s8,$s8,0x3
    # Line 8501
    ori	$ra,$ra,0x2
    sw	$ra,26976($s2)
    # Line 8512
    subu	$s8,$s8,$s7
    # Line 8501
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 8512
    sll	$s8,$s8,0x2
    mtc1	$zero,$f24
    lw	$t3,20($a1)
    subu	$s8,$s8,$s7
    sll	$s8,$s8,0x5
    addu	$t3,$t3,$s8
    swc1	$f24,36($t3)
    # Line 8513
    lw	$t2,20($a1)
    addu	$t2,$t2,$s8
    swc1	$f24,184($t2)
    # Line 8514
    lw	$t1,20($a1)
    addu	$t1,$t1,$s8
    swc1	$f24,332($t1)
    # Line 8515
    lw	$t0,20($a1)
    sd	$s6,424($sp)
    addu	$t0,$t0,$s8
    swc1	$f24,480($t0)
    # Line 8516
    lw	$a7,20($a1)
    # Line 8435
    sd	$s1,360($sp)
    # Line 8521
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8516
    addu	$a7,$a7,$s8
    swc1	$f24,40($a7)
    # Line 8517
    lw	$a6,20($a1)
    # Line 8435
    sd	$a0,384($sp)
    sdc1	$f22,248($sp)
    # Line 8517
    addu	$a6,$a6,$s8
    swc1	$f24,188($a6)
    # Line 8518
    lw	$a5,20($a1)
    # Line 8435
    sdc1	$f28,232($sp)
    sd	$s0,328($sp)
    # Line 8518
    addu	$a5,$a5,$s8
    swc1	$f24,336($a5)
    # Line 8435
    move	$s0,$a2
    # Line 8519
    lw	$a2,20($a1)
    # Line 8492
    sdc1	$f1,160($sp)
    sdc1	$f0,168($sp)
    # Line 8491
    mtc1	$a4,$f28
    # Line 8519
    addu	$a2,$a2,$s8
    # Line 8490
    mtc1	$a3,$f22
    # Line 8519
    swc1	$f24,484($a2)
    # Line 8521
    lw	$a0,20($a1)
    # Line 8435
    move	$s1,$a1
    # Line 8492
    sdc1	$f31,144($sp)
    # Line 8491
    cvt.s.w	$f28,$f28
    # Line 8492
    sdc1	$f29,152($sp)
    # Line 8490
    cvt.s.w	$f22,$f22
    # Line 8521
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 8525
    lw	$v1,31956($s3)
    lui	$v0,0x4
    or	$v0,$v0,$v1
    # Line 8526
    ori	$v0,$v0,0x4000
    sw	$v0,31956($s3)
    # Line 8527
    lw	$at,26976($s2)
    # Line 8525
    la	$s6,sub_0d9a0000
    # Line 8527
    ori	$at,$at,0x200
    sw	$at,26976($s2)
    # Line 8529
    lui	$ra,0xffef
    # Line 8527
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 8529
    ori	$ra,$ra,0xffff
    # Line 8530
    lw	$t9,26976($s2)
    lui	$t8,0x20
    # Line 8525
    addiu	$s6,$s6,-13472
    # Line 8529
    lw	$at,-26972($s2)
    # Line 8530
    or	$t8,$t8,$t9
    sw	$t8,26976($s2)
    # Line 8533
    move	$t9,$s6
    move	$a0,$s1
    # Line 8529
    and	$ra,$ra,$at
    sw	$ra,-26972($s2)
    # Line 8533
    move	$a1,$s7
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 8530
    sw	$v0,4120($zero)
    # Line 8535
    addiu	$a1,$sp,0
    lw	$t3,0($s0)
    sw	$t3,0($sp)
    lw	$t2,4($s0)
    sw	$t2,4($sp)
    lw	$t1,8($s0)
    sw	$t1,8($sp)
    lw	$t0,12($s0)
    sw	$t0,12($sp)
    lw	$a7,16($s0)
    sw	$a7,16($sp)
    lw	$a6,20($s0)
    sw	$a6,20($sp)
    lw	$a5,24($s0)
    sw	$a5,24($sp)
    lw	$a3,28($s0)
    sw	$a3,28($sp)
    lw	$a0,32($s0)
    sw	$a0,32($sp)
    # Line 8536
    lwc1	$f3,8($sp)
    # Line 8537
    lwc1	$f2,12($sp)
    # Line 8539
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8536
    add.s	$f3,$f3,$f22
    swc1	$f3,8($sp)
    # Line 8537
    add.s	$f2,$f2,$f28
    swc1	$f2,12($sp)
    # Line 8538
    lwc1	$f5,0($sp)
    lwc1	$f4,4($sp)
    swc1	$f5,16($sp)
    swc1	$f4,20($sp)
    swc1	$f3,24($sp)
    # Line 8539
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8538
    swc1	$f2,28($sp)
    # Line 8539
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    # Line 8552
    lw	$t0,20($s1)
    lwc1	$f4,_lit_3f800000
    addu	$t0,$t0,$s8
    swc1	$f4,36($t0)
    # Line 8553
    lw	$a7,20($s1)
    addu	$a7,$a7,$s8
    swc1	$f4,184($a7)
    # Line 8554
    lw	$a6,20($s1)
    addu	$a6,$a6,$s8
    swc1	$f4,332($a6)
    # Line 8555
    lw	$a5,20($s1)
    addu	$a5,$a5,$s8
    swc1	$f4,480($a5)
    # Line 8556
    lw	$a4,20($s1)
    addu	$a4,$a4,$s8
    swc1	$f24,40($a4)
    # Line 8557
    lw	$a3,20($s1)
    addu	$a3,$a3,$s8
    swc1	$f24,188($a3)
    # Line 8558
    lw	$a2,20($s1)
    addu	$a2,$a2,$s8
    swc1	$f24,336($a2)
    # Line 8559
    lw	$a1,20($s1)
    # Line 8561
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8559
    addu	$a1,$a1,$s8
    swc1	$f24,484($a1)
    # Line 8561
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 8569
    move	$t9,$s6
    move	$a0,$s1
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a1,$s7
    lw	$t1,764($s3)
    lw	$t1,0($t1)
    sdc1	$f30,416($sp)
    li	$t2,0x8010
    sdc1	$f26,408($sp)
    beq	$t1,$t2,.L0d99f400
    sdc1	$f20,400($sp)
.L0d99e7a0:
    # Line 8575
    lw	$a1,7124($s2)
    li	$t2,0x8150
    beq	$a1,$t2,.L0d99e858
    # Line 8577
    ldc1	$f20,_lit8_3fe0000000000000
    # Line 8575
    li	$t3,0x8152
    beq	$a1,$t3,.L0d99f40c
    li	$t8,0x8151
    beq	$a1,$t8,.L0d9a059c
    li	$t9,0x8153
    beq	$a1,$t9,.L0d99fc94
    # Line 9089
    addiu	$a1,$sp,0
    lw	$a7,0($s0)
    sw	$a7,0($sp)
    lw	$a5,4($s0)
    sw	$a5,4($sp)
    lw	$a3,8($s0)
    sw	$a3,8($sp)
    lw	$a2,12($s0)
    sw	$a2,12($sp)
    lw	$a0,16($s0)
    sw	$a0,16($sp)
    lw	$v1,20($s0)
    sw	$v1,20($sp)
    lw	$v0,24($s0)
    sw	$v0,24($sp)
    lw	$at,28($s0)
    sw	$at,28($sp)
    lw	$ra,32($s0)
    sw	$ra,32($sp)
    # Line 9090
    lwc1	$f8,0($sp)
    lwc1	$f7,4($sp)
    swc1	$f8,16($sp)
    swc1	$f7,20($sp)
    lwc1	$f6,8($sp)
    lwc1	$f5,12($sp)
    # Line 9092
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9090
    swc1	$f6,24($sp)
    # Line 9092
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 9090
    swc1	$f5,28($sp)
    # Line 9092
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    # Line 9088
    sd	$zero,376($sp)
    # Line 9107
    b	.L0d99ea4c
    ldc1	$f20,_lit8_3fe0000000000000
.L0d99e858:
    # Line 8577
    li	$t0,1
    sd	$t0,376($sp)
.L0d99e860:
    # Line 9101
    addiu	$a4,$sp,0
    lw	$v1,0($s0)
    sw	$v1,0($sp)
    lw	$v0,4($s0)
    sw	$v0,4($sp)
    lw	$at,8($s0)
    sw	$at,8($sp)
    lw	$ra,12($s0)
    sw	$ra,12($sp)
    lw	$t9,16($s0)
    sw	$t9,16($sp)
    lw	$t8,20($s0)
    sw	$t8,20($sp)
    lw	$t3,24($s0)
    sw	$t3,24($sp)
    lw	$t2,28($s0)
    sw	$t2,28($sp)
    lw	$t1,32($s0)
    sw	$t1,32($sp)
    # Line 9103
    lwc1	$f11,0($sp)
    lwc1	$f10,4($sp)
    lwc1	$f30,12($sp)
    lwc1	$f9,8($sp)
    swc1	$f30,28($sp)
    swc1	$f9,24($sp)
    swc1	$f10,20($sp)
    swc1	$f11,16($sp)
    lbu	$a0,32($s0)
    sdc1	$f11,128($sp)
    sdc1	$f10,136($sp)
    beqz	$a0,.L0d99e91c
    sdc1	$f9,184($sp)
    # Line 9106
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f27,128($sp)
    # Line 9107
    # lw $t9, -16948($gp) # &floorf
    # Line 9106
    add.s	$f27,$f0,$f27
    # Line 9107
    mov.s	$f12,$f26
    jal	floorf
    # Line 9106
    swc1	$f27,16($sp)
    # Line 9107
    ldc1	$f29,184($sp)
    add.s	$f29,$f0,$f29
    swc1	$f29,24($sp)
.L0d99e91c:
    lbu	$a1,35($s0)
    beqz	$a1,.L0d99e960
    nop
    # Line 9111
    cvt.d.s	$f26,$f28
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f27,136($sp)
    # Line 9112
    # lw $t9, -16948($gp) # &floorf
    # Line 9111
    add.s	$f27,$f0,$f27
    # Line 9112
    mov.s	$f12,$f26
    jal	floorf
    # Line 9111
    swc1	$f27,20($sp)
    # Line 9112
    add.s	$f29,$f0,$f30
    swc1	$f29,28($sp)
.L0d99e960:
    # Line 9125
    lw	$t0,20($s1)
    lwc1	$f26,_lit_3f800000
    addu	$t0,$t0,$s8
    swc1	$f26,36($t0)
    # Line 9126
    lw	$a7,20($s1)
    addu	$a7,$a7,$s8
    swc1	$f26,184($a7)
    # Line 9127
    lw	$a6,20($s1)
    addu	$a6,$a6,$s8
    swc1	$f26,332($a6)
    # Line 9128
    lw	$a5,20($s1)
    addu	$a5,$a5,$s8
    swc1	$f26,480($a5)
    # Line 9129
    lw	$a4,20($s1)
    addu	$a4,$a4,$s8
    swc1	$f24,40($a4)
    # Line 9130
    lw	$a3,20($s1)
    addu	$a3,$a3,$s8
    swc1	$f24,188($a3)
    # Line 9131
    lw	$a2,20($s1)
    addu	$a2,$a2,$s8
    swc1	$f24,336($a2)
    # Line 9132
    lw	$a1,20($s1)
    # Line 9134
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 9132
    addu	$a1,$a1,$s8
    swc1	$f24,484($a1)
    # Line 9134
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 9137
    lw	$at,31956($s3)
    lui	$ra,0x4
    or	$ra,$ra,$at
    # Line 9138
    ori	$ra,$ra,0x4000
    sw	$ra,31956($s3)
    # Line 9139
    lw	$t9,26976($s2)
    ori	$t9,$t9,0x200
    sw	$t9,26976($s2)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 9142
    lw	$t3,26976($s2)
    lui	$t2,0x20
    # Line 9141
    lui	$t8,0xffef
    lw	$t9,-26972($s2)
    ori	$t8,$t8,0xffff
    # Line 9142
    or	$t2,$t2,$t3
    sw	$t2,26976($s2)
    # Line 9141
    and	$t8,$t8,$t9
    # Line 9145
    move	$t9,$s6
    move	$a0,$s1
    # Line 9141
    sw	$t8,-26972($s2)
    # Line 9145
    move	$a1,$s7
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 9142
    sw	$t1,4120($zero)
    # Line 9152
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d99ea4c:
    # Line 9173
    lw	$a1,68($s1)
    lw	$a1,12($a1)
    li	$v0,5123
    beq	$a1,$v0,.L0d99ea98
    lwc1	$f4,_lit_3f7ff000
    li	$a2,5122
    beq	$a1,$a2,.L0d99ea98
    lwc1	$f4,_lit_3f7ff000
    li	$a3,5125
    beq	$a1,$a3,.L0d99ea98
    lwc1	$f4,_lit_3f7ff000
    li	$a4,5124
    beq	$a1,$a4,.L0d99ea94
    # Line 9193
    lwc1	$f31,_lit_3f7f1000
    # Line 9173
    lwc1	$f4,_lit_3f7ff000
    lbu	$a5,7120($s2)
    b	.L0d99ea98
    movz.s	$f4,$f31,$a5
.L0d99ea94:
    lwc1	$f4,_lit_3f7ff000
.L0d99ea98:
    # Line 9205
    lw	$t0,20($s1)
    addu	$t0,$t0,$s8
    swc1	$f24,36($t0)
    # Line 9206
    lw	$a7,20($s1)
    addu	$a7,$a7,$s8
    swc1	$f24,184($a7)
    # Line 9207
    lw	$a6,20($s1)
    addu	$a6,$a6,$s8
    swc1	$f24,332($a6)
    # Line 9208
    lw	$a5,20($s1)
    addu	$a5,$a5,$s8
    swc1	$f24,480($a5)
    # Line 9209
    lw	$a4,20($s1)
    addu	$a4,$a4,$s8
    swc1	$f4,40($a4)
    # Line 9210
    lw	$a3,20($s1)
    addu	$a3,$a3,$s8
    swc1	$f4,188($a3)
    # Line 9211
    lw	$a2,20($s1)
    addu	$a2,$a2,$s8
    swc1	$f4,336($a2)
    # Line 9212
    lw	$a1,20($s1)
    # Line 9213
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 9212
    addu	$a1,$a1,$s8
    swc1	$f4,484($a1)
    # Line 9213
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 9216
    move	$t9,$s6
    move	$a0,$s1
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a1,$s7
    ld	$t1,376($sp)
    beqz	$t1,.L0d99f388
    # Line 9222
    addiu	$a1,$sp,0
    lw	$a0,0($s0)
    sw	$a0,0($sp)
    lw	$v1,4($s0)
    sw	$v1,4($sp)
    lw	$v0,8($s0)
    sw	$v0,8($sp)
    lw	$at,12($s0)
    sw	$at,12($sp)
    lw	$ra,16($s0)
    sw	$ra,16($sp)
    lw	$t9,20($s0)
    sw	$t9,20($sp)
    lw	$t8,24($s0)
    sw	$t8,24($sp)
    lw	$t3,28($s0)
    sw	$t3,28($sp)
    lw	$t2,32($s0)
    sw	$t2,32($sp)
    # Line 9223
    lwc1	$f3,0($sp)
    lwc1	$f2,4($sp)
    sdc1	$f3,272($sp)
    sdc1	$f2,264($sp)
    lwc1	$f1,12($sp)
    lwc1	$f28,8($sp)
    swc1	$f1,28($sp)
    swc1	$f28,24($sp)
    swc1	$f2,20($sp)
    swc1	$f3,16($sp)
    lbu	$a1,32($s0)
    sdc1	$f1,256($sp)
    sdc1	$f1,224($sp)
    mov.s	$f30,$f1
    sdc1	$f28,216($sp)
    beqz	$a1,.L0d99ebec
    mov.s	$f5,$f28
    # Line 9226
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f28,216($sp)
    # Line 9227
    # lw $t9, -16948($gp) # &floorf
    # Line 9226
    add.s	$f28,$f0,$f28
    # Line 9227
    mov.s	$f12,$f26
    jal	floorf
    # Line 9226
    swc1	$f28,8($sp)
    # Line 9227
    ldc1	$f5,216($sp)
    add.s	$f5,$f0,$f5
    swc1	$f5,24($sp)
.L0d99ebec:
    lbu	$a2,33($s0)
    beqz	$a2,.L0d99ec30
    sdc1	$f5,184($sp)
    # Line 9230
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 9231
    # lw $t9, -16948($gp) # &floorf
    # Line 9230
    add.s	$f27,$f0,$f28
    # Line 9231
    mov.s	$f12,$f26
    jal	floorf
    # Line 9230
    swc1	$f27,8($sp)
    # Line 9231
    ldc1	$f29,184($sp)
    add.s	$f29,$f0,$f29
    swc1	$f29,24($sp)
.L0d99ec30:
    lbu	$a3,35($s0)
    beqz	$a3,.L0d99ec7c
    nop
    # Line 9234
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f27,224($sp)
    # Line 9235
    # lw $t9, -16948($gp) # &floorf
    # Line 9234
    add.s	$f27,$f0,$f27
    sdc1	$f27,256($sp)
    # Line 9235
    mov.s	$f12,$f26
    jal	floorf
    # Line 9234
    swc1	$f27,12($sp)
    # Line 9235
    ldc1	$f30,224($sp)
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
.L0d99ec7c:
    lbu	$a4,34($s0)
    beqz	$a4,.L0d99ecc4
    # Line 9247
    ld	$a0,392($sp)
    # Line 9238
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f27,256($sp)
    # Line 9239
    # lw $t9, -16948($gp) # &floorf
    # Line 9238
    add.s	$f27,$f0,$f27
    # Line 9239
    mov.s	$f12,$f26
    jal	floorf
    # Line 9238
    swc1	$f27,12($sp)
    # Line 9239
    add.s	$f29,$f0,$f30
    swc1	$f29,28($sp)
.L0d99ecc0:
    # Line 9247
    ld	$a0,392($sp)
.L0d99ecc4:
    # Line 9244
    ldc1	$f0,272($sp)
    # Line 9247
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    ldc1	$f31,264($sp)
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 9244
    swc1	$f0,16($sp)
    # Line 9247
    move	$a1,$s4
    jal	__glOdysseyImageMovePixelsTexture
    # Line 9244
    swc1	$f31,20($sp)
    # Line 9253
    lw	$at,26976($s2)
    lui	$ra,0x20
    # Line 9251
    lw	$v0,-26972($s2)
    lui	$v1,0x6
    nor	$v1,$v1,$zero
    # Line 9253
    or	$ra,$ra,$at
    sw	$ra,26976($s2)
    # Line 9251
    and	$v0,$v0,$v1
    sw	$v0,-26972($s2)
    # Line 9253
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 9256
    lw	$t8,31740($s3)
    lui	$t9,0x2
    or	$t8,$t8,$t9
    sw	$t8,31740($s3)
    # Line 9257
    lw	$t3,26976($s2)
    ori	$t3,$t3,0x2
    sw	$t3,26976($s2)
    sw	$a7,4120($zero)
    # Line 9259
    li	$t2,0xe000
    lw	$t1,31796($s3)
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    ori	$t1,$t1,0xa000
    sw	$t1,31796($s3)
    # Line 9261
    lw	$t0,26976($s2)
    ori	$t0,$t0,0x1
    sw	$t0,26976($s2)
    sw	$a7,4120($zero)
    # Line 9262
    li	$a6,1
    sw	$a6,31808($s3)
    lw	$a5,-26576($s2)
    beqz	$a5,.L0d99ed98
    # Line 9264
    lui	$at,0x1
    lui	$a0,0x1
    sw	$zero,-26576($s2)
    ori	$a2,$a0,0x443
    sw	$a2,0($s5)
    li	$a1,250
    sw	$a1,0($s5)
    ori	$a0,$a0,0x46
    sw	$a0,0($s5)
    sw	$a0,0($s5)
    lui	$at,0x1
.L0d99ed98:
    ori	$at,$at,0x422
    sw	$at,0($s5)
    lw	$ra,31808($s3)
    sw	$ra,0($s5)
    # Line 9269
    lw	$at,31804($s3)
    # Line 9267
    lui	$t9,0xff00
    lw	$ra,31800($s3)
    # Line 9268
    li	$t8,-4096
    # Line 9267
    ori	$t9,$t9,0xfff
    and	$ra,$t9,$ra
    # Line 9269
    and	$t9,$t9,$at
    ori	$t9,$t9,0x1000
    # Line 9267
    ori	$ra,$ra,0x1000
    # Line 9280
    lwc1	$f2,_lit_3f800000
    # Line 9268
    and	$ra,$t8,$ra
    # Line 9270
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x1
    sw	$t8,31804($s3)
    # Line 9268
    ori	$ra,$ra,0x1
    sw	$ra,31800($s3)
    # Line 9271
    lw	$t3,26976($s2)
    lwc1	$f1,_lit_3effefff
    ori	$t3,$t3,0x1
    sw	$t3,26976($s2)
    li	$t2,2
    sw	$t2,4120($zero)
    lbu	$t1,7120($s2)
    # Line 9292
    lw	$t0,20($s1)
    addu	$t0,$t0,$s8
    movz.s	$f1,$f2,$t1
    swc1	$f1,36($t0)
    # Line 9293
    lw	$a7,20($s1)
    addu	$a7,$a7,$s8
    swc1	$f1,184($a7)
    # Line 9294
    lw	$a6,20($s1)
    addu	$a6,$a6,$s8
    swc1	$f1,332($a6)
    # Line 9295
    lw	$a5,20($s1)
    addu	$a5,$a5,$s8
    swc1	$f1,480($a5)
    # Line 9296
    lw	$a4,20($s1)
    addu	$a4,$a4,$s8
    swc1	$f24,40($a4)
    # Line 9297
    lw	$a3,20($s1)
    addu	$a3,$a3,$s8
    swc1	$f24,188($a3)
    # Line 9298
    lw	$a2,20($s1)
    addu	$a2,$a2,$s8
    swc1	$f24,336($a2)
    # Line 9299
    lw	$a1,20($s1)
    # Line 9301
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 9299
    addu	$a1,$a1,$s8
    swc1	$f24,484($a1)
    # Line 9301
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 9304
    lw	$a4,31956($s3)
    lui	$a3,0x4
    or	$a3,$a3,$a4
    # Line 9305
    ori	$a3,$a3,0x4000
    sw	$a3,31956($s3)
    # Line 9306
    lw	$a2,26976($s2)
    ori	$a2,$a2,0x200
    sw	$a2,26976($s2)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 9309
    lui	$v1,0x20
    lw	$a0,26976($s2)
    # Line 9312
    move	$t9,$s6
    # Line 9308
    lui	$a1,0xffef
    lw	$a2,-26972($s2)
    ori	$a1,$a1,0xffff
    # Line 9309
    or	$v1,$v1,$a0
    sw	$v1,26976($s2)
    # Line 9312
    move	$a0,$s1
    # Line 9308
    and	$a1,$a1,$a2
    sw	$a1,-26972($s2)
    # Line 9309
    sw	$v0,4120($zero)
    # Line 9312
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    move	$a1,$s7
    ld	$a5,376($sp)
    beqz	$a5,.L0d99f2b4
    # Line 9343
    addiu	$a4,$sp,0
    # Line 9320
    addiu	$a1,$sp,0
    lw	$ra,0($s0)
    sw	$ra,0($sp)
    lw	$t9,4($s0)
    sw	$t9,4($sp)
    lw	$t8,8($s0)
    sw	$t8,8($sp)
    lw	$t3,12($s0)
    sw	$t3,12($sp)
    lw	$t2,16($s0)
    sw	$t2,16($sp)
    lw	$t1,20($s0)
    sw	$t1,20($sp)
    lw	$t0,24($s0)
    sw	$t0,24($sp)
    lw	$a7,28($s0)
    sw	$a7,28($sp)
    lw	$a6,32($s0)
    sw	$a6,32($sp)
    # Line 9321
    lwc1	$f6,0($sp)
    lwc1	$f5,4($sp)
    lwc1	$f4,12($sp)
    lwc1	$f28,8($sp)
    swc1	$f4,28($sp)
    swc1	$f28,24($sp)
    swc1	$f5,20($sp)
    swc1	$f6,16($sp)
    lbu	$at,32($s0)
    sdc1	$f4,256($sp)
    sdc1	$f4,208($sp)
    mov.s	$f30,$f4
    sdc1	$f28,200($sp)
    beqz	$at,.L0d99efb0
    mov.s	$f26,$f28
    # Line 9324
    lwc1	$f26,_lit_bf800000
    add.s	$f26,$f22,$f26
    cvt.d.s	$f26,$f26
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f28,200($sp)
    # Line 9325
    # lw $t9, -16948($gp) # &floorf
    # Line 9324
    add.s	$f28,$f0,$f28
    # Line 9325
    mov.s	$f12,$f26
    jal	floorf
    # Line 9324
    swc1	$f28,8($sp)
    # Line 9325
    ldc1	$f26,200($sp)
    add.s	$f26,$f0,$f26
    swc1	$f26,24($sp)
.L0d99efb0:
    lbu	$v0,33($s0)
    beqz	$v0,.L0d99eff4
    # Line 9328
    lwc1	$f12,_lit_bf800000
    add.s	$f12,$f22,$f12
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    mul.d	$f12,$f12,$f20
    cvt.s.d	$f12,$f12
    jal	ceilf
    sdc1	$f12,192($sp)
    # Line 9329
    # lw $t9, -17032($gp) # &ceilf
    ldc1	$f12,192($sp)
    # Line 9328
    add.s	$f13,$f0,$f28
    # Line 9329
    jal	ceilf
    # Line 9328
    swc1	$f13,8($sp)
    # Line 9329
    add.s	$f14,$f0,$f26
    swc1	$f14,24($sp)
.L0d99eff4:
    lbu	$v1,35($s0)
    beqz	$v1,.L0d99f044
    lwc1	$f26,_lit_bf800000
    # Line 9332
    add.s	$f28,$f22,$f26
    cvt.d.s	$f28,$f28
    mul.d	$f28,$f28,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f28,$f28
    jal	floorf
    mov.s	$f12,$f28
    ldc1	$f29,208($sp)
    # Line 9333
    # lw $t9, -16948($gp) # &floorf
    # Line 9332
    add.s	$f29,$f0,$f29
    sdc1	$f29,256($sp)
    # Line 9333
    mov.s	$f12,$f28
    jal	floorf
    # Line 9332
    swc1	$f29,12($sp)
    # Line 9333
    ldc1	$f30,208($sp)
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
.L0d99f044:
    lbu	$a0,34($s0)
    beqz	$a0,.L0d99f090
    # Line 9340
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9336
    add.s	$f28,$f22,$f26
    cvt.d.s	$f28,$f28
    mul.d	$f28,$f28,$f20
    # lw $t9, -17032($gp) # &ceilf
    cvt.s.d	$f28,$f28
    jal	ceilf
    mov.s	$f12,$f28
    ldc1	$f29,256($sp)
    # Line 9337
    # lw $t9, -17032($gp) # &ceilf
    # Line 9336
    add.s	$f29,$f0,$f29
    # Line 9337
    mov.s	$f12,$f28
    jal	ceilf
    # Line 9336
    swc1	$f29,12($sp)
    # Line 9337
    add.s	$f31,$f0,$f30
    swc1	$f31,28($sp)
    # Line 9340
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d99f090:
    move	$a1,$s4
    move	$a3,$zero
    ld	$a0,392($sp)
    jal	__glOdysseyImageMovePixelsTexture
    addiu	$a2,$sp,0
.L0d99f0a4:
    # Line 9351
    li	$a3,3
    sw	$a3,31808($s3)
    lw	$a2,-26576($s2)
    ld	$s6,424($sp)
    lwc1	$f4,_lit_3f800000
    lui	$a1,0x1
    ldc1	$f30,416($sp)
    beqz	$a2,.L0d99f0ec
    ori	$a1,$a1,0x422
    # Line 9353
    lui	$a2,0x1
    sw	$zero,-26576($s2)
    ori	$a4,$a2,0x443
    sw	$a4,0($s5)
    li	$a3,250
    sw	$a3,0($s5)
    ori	$a2,$a2,0x46
    sw	$a2,0($s5)
    sw	$a2,0($s5)
.L0d99f0ec:
    sw	$a1,0($s5)
    lw	$t1,31808($s3)
    sw	$t1,0($s5)
    # Line 9366
    lw	$t0,20($s1)
    addu	$t0,$t0,$s8
    swc1	$f4,36($t0)
    # Line 9367
    lw	$a7,20($s1)
    addu	$a7,$a7,$s8
    swc1	$f4,184($a7)
    # Line 9368
    lw	$a6,20($s1)
    addu	$a6,$a6,$s8
    swc1	$f4,332($a6)
    # Line 9369
    lw	$a5,20($s1)
    addu	$a5,$a5,$s8
    swc1	$f4,480($a5)
    # Line 9370
    lw	$a4,20($s1)
    addu	$a4,$a4,$s8
    swc1	$f24,40($a4)
    # Line 9371
    lw	$a3,20($s1)
    addu	$a3,$a3,$s8
    swc1	$f24,188($a3)
    # Line 9372
    lw	$a2,20($s1)
    addu	$a2,$a2,$s8
    swc1	$f24,336($a2)
    # Line 9373
    lw	$a1,20($s1)
    # Line 9375
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 9373
    addu	$a1,$a1,$s8
    swc1	$f24,484($a1)
    # Line 9375
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 9384
    lw	$t2,764($s3)
    lw	$t3,64($t2)
    mtc1	$t3,$f24
    cvt.s.w	$f24,$f24
    # Line 9387
    add.s	$f24,$f24,$f26
    cvt.d.s	$f24,$f24
    # Line 9385
    lw	$t2,68($t2)
    # Line 9387
    mul.d	$f24,$f24,$f20
    # lw $t9, -17032($gp) # &ceilf
    # Line 9385
    mtc1	$t2,$f28
    # Line 9387
    cvt.s.d	$f24,$f24
    # Line 9385
    cvt.s.w	$f28,$f28
    # Line 9387
    jal	ceilf
    mov.s	$f12,$f24
    # Line 9388
    add.s	$f22,$f28,$f26
    # Line 9387
    lwc1	$f25,0($sp)
    # Line 9388
    cvt.d.s	$f22,$f22
    mul.d	$f22,$f22,$f20
    # lw $t9, -17032($gp) # &ceilf
    # Line 9387
    add.s	$f25,$f25,$f0
    # Line 9388
    cvt.s.d	$f22,$f22
    # Line 9387
    sdc1	$f25,272($sp)
    swc1	$f25,0($sp)
    # Line 9388
    jal	ceilf
    mov.s	$f12,$f22
    lwc1	$f23,4($sp)
    ldc1	$f26,408($sp)
    # Line 9389
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f20,400($sp)
    # Line 9388
    add.s	$f23,$f23,$f0
    sdc1	$f23,264($sp)
    # Line 9389
    mov.s	$f12,$f24
    jal	floorf
    # Line 9388
    swc1	$f23,4($sp)
    # Line 9389
    lwc1	$f28,8($sp)
    # Line 9390
    # lw $t9, -16948($gp) # &floorf
    # Line 9389
    sub.s	$f28,$f28,$f0
    # Line 9390
    mov.s	$f12,$f22
    jal	floorf
    # Line 9389
    swc1	$f28,8($sp)
    # Line 9392
    swc1	$f28,24($sp)
    ldc1	$f1,264($sp)
    # Line 9390
    lwc1	$f29,12($sp)
    # Line 9392
    ldc1	$f31,272($sp)
    swc1	$f1,20($sp)
    swc1	$f31,16($sp)
    # Line 9390
    sub.s	$f29,$f29,$f0
    # Line 9392
    swc1	$f29,28($sp)
    # Line 9395
    addiu	$a0,$sp,0
    # Line 9390
    swc1	$f29,12($sp)
    # Line 9395
    ld	$t9,384($sp)
    lw	$a7,0($sp)
    sw	$a7,0($t9)
    lw	$a6,4($sp)
    sw	$a6,4($t9)
    lw	$a5,8($sp)
    sw	$a5,8($t9)
    lw	$a4,12($sp)
    sw	$a4,12($t9)
    lw	$v1,16($sp)
    sw	$v1,16($t9)
    lw	$v0,20($sp)
    sw	$v0,20($t9)
    lw	$at,24($sp)
    sw	$at,24($t9)
    lw	$ra,28($sp)
    sw	$ra,28($t9)
    lw	$t8,32($sp)
    sw	$t8,32($t9)
    ld	$s0,328($sp)
    ld	$s1,360($sp)
    ld	$s2,320($sp)
    ld	$s3,344($sp)
    ld	$s4,312($sp)
    ld	$s5,304($sp)
    ld	$s7,352($sp)
    ld	$s8,336($sp)
    ld	$ra,368($sp)
    ldc1	$f22,248($sp)
    ldc1	$f24,240($sp)
    ldc1	$f28,232($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d99f2b4:
    # Line 9343
    lw	$v0,0($s0)
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    sw	$ra,8($sp)
    lw	$t9,12($s0)
    sw	$t9,12($sp)
    lw	$t8,16($s0)
    sw	$t8,16($sp)
    lw	$t3,20($s0)
    sw	$t3,20($sp)
    lw	$t2,24($s0)
    sw	$t2,24($sp)
    lw	$t1,28($s0)
    sw	$t1,28($sp)
    lw	$t0,32($s0)
    sw	$t0,32($sp)
    # Line 9345
    ld	$a0,392($sp)
    # Line 9344
    lwc1	$f2,0($sp)
    lwc1	$f3,4($sp)
    lwc1	$f5,12($sp)
    lwc1	$f4,8($sp)
    swc1	$f5,28($sp)
    # Line 9345
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9344
    swc1	$f4,24($sp)
    # Line 9345
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 9344
    swc1	$f3,20($sp)
    # Line 9345
    move	$a1,$s4
    jal	__glOdysseyImageMovePixelsTexture
    # Line 9344
    swc1	$f2,16($sp)
    # Line 9346
    addiu	$a0,$sp,0
    lw	$t2,0($s0)
    sw	$t2,0($sp)
    lw	$t1,4($s0)
    sw	$t1,4($sp)
    lw	$t0,8($s0)
    sw	$t0,8($sp)
    lw	$a7,12($s0)
    sw	$a7,12($sp)
    lw	$a6,16($s0)
    sw	$a6,16($sp)
    lw	$a5,20($s0)
    sw	$a5,20($sp)
    lw	$a4,24($s0)
    sw	$a4,24($sp)
    lw	$a1,28($s0)
    sw	$a1,28($sp)
    lw	$v1,32($s0)
    sw	$v1,32($sp)
    b	.L0d99f0a4
    lwc1	$f26,_lit_bf800000
.L0d99f388:
    # Line 9243
    addiu	$a4,$sp,0
    lw	$a1,0($s0)
    sw	$a1,0($sp)
    lw	$a0,4($s0)
    sw	$a0,4($sp)
    lw	$v1,8($s0)
    sw	$v1,8($sp)
    lw	$v0,12($s0)
    sw	$v0,12($sp)
    lw	$at,16($s0)
    sw	$at,16($sp)
    lw	$ra,20($s0)
    sw	$ra,20($sp)
    lw	$t9,24($s0)
    sw	$t9,24($sp)
    lw	$t8,28($s0)
    sw	$t8,28($sp)
    lw	$t3,32($s0)
    sw	$t3,32($sp)
    # Line 9244
    lwc1	$f6,0($sp)
    lwc1	$f7,4($sp)
    lwc1	$f9,12($sp)
    lwc1	$f8,8($sp)
    swc1	$f9,28($sp)
    swc1	$f8,24($sp)
    sdc1	$f7,264($sp)
    sdc1	$f6,272($sp)
    swc1	$f7,20($sp)
    b	.L0d99ecc0
    swc1	$f6,16($sp)
.L0d99f400:
    # Line 8573
    sb	$zero,35($s0)
    b	.L0d99e7a0
    sb	$zero,34($s0)
.L0d99f40c:
    # Line 8599
    lbu	$a3,32($s0)
    beqz	$a3,.L0d9a0584
    move	$a2,$a3
    lbu	$a4,35($s0)
    beqz	$a4,.L0d9a0b20
    ldc1	$f20,_lit8_3fe0000000000000
    # Line 8602
    addiu	$a4,$sp,0
    lw	$at,0($s0)
    sw	$at,0($sp)
    lw	$ra,4($s0)
    sw	$ra,4($sp)
    lw	$t9,8($s0)
    sw	$t9,8($sp)
    lw	$t8,12($s0)
    sw	$t8,12($sp)
    lw	$t3,16($s0)
    sw	$t3,16($sp)
    lw	$t2,20($s0)
    sw	$t2,20($sp)
    lw	$t1,24($s0)
    sw	$t1,24($sp)
    lw	$t0,28($s0)
    sw	$t0,28($sp)
    lw	$a5,32($s0)
    sw	$a5,32($sp)
    # Line 8606
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    # Line 8605
    swc1	$f24,8($sp)
    # Line 8606
    jal	floorf
    mov.s	$f12,$f26
    # Line 8609
    cvt.d.s	$f30,$f28
    mul.d	$f30,$f30,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f30,$f30
    # Line 8608
    swc1	$f24,12($sp)
    # Line 8606
    swc1	$f0,0($sp)
    # Line 8609
    jal	floorf
    mov.s	$f12,$f30
    # Line 8612
    # lw $t9, -16948($gp) # &floorf
    # Line 8611
    swc1	$f24,16($sp)
    # Line 8612
    mov.s	$f12,$f26
    jal	floorf
    # Line 8609
    swc1	$f0,4($sp)
    # Line 8614
    # lw $t9, -16948($gp) # &floorf
    # Line 8613
    swc1	$f24,20($sp)
    # Line 8614
    mov.s	$f12,$f30
    jal	floorf
    # Line 8612
    swc1	$f0,24($sp)
    # Line 8616
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8614
    swc1	$f0,28($sp)
    # Line 8616
    lw	$a1,68($s1)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    lbu	$a2,32($s0)
    # Line 8599
    li	$v0,1
    # Line 8619
    beqz	$a2,.L0d9a0594
    sd	$v0,296($sp)
.L0d99f500:
    lbu	$v1,34($s0)
    beqz	$v1,.L0d9a0b28
    # Line 8622
    addiu	$a4,$sp,0
    lw	$t3,0($s0)
    sw	$t3,0($sp)
    lw	$t2,4($s0)
    sw	$t2,4($sp)
    lw	$t1,8($s0)
    sw	$t1,8($sp)
    lw	$t0,12($s0)
    sw	$t0,12($sp)
    lw	$a5,16($s0)
    sw	$a5,16($sp)
    lw	$a3,20($s0)
    sw	$a3,20($sp)
    lw	$a2,24($s0)
    sw	$a2,24($sp)
    lw	$a1,28($s0)
    sw	$a1,28($sp)
    lw	$a0,32($s0)
    sw	$a0,32($sp)
    # Line 8623
    lwc1	$f31,0($sp)
    lwc1	$f0,4($sp)
    lwc1	$f29,12($sp)
    lwc1	$f27,8($sp)
    sdc1	$f29,120($sp)
    # Line 8627
    cvt.d.s	$f26,$f22
    # Line 8626
    swc1	$f24,8($sp)
    # Line 8623
    swc1	$f29,28($sp)
    # Line 8627
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8623
    swc1	$f27,24($sp)
    # Line 8627
    cvt.s.d	$f26,$f26
    # Line 8623
    swc1	$f0,20($sp)
    swc1	$f31,16($sp)
    # Line 8627
    jal	floorf
    mov.s	$f12,$f26
    # Line 8630
    cvt.d.s	$f30,$f28
    mul.d	$f30,$f30,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8629
    ldc1	$f31,120($sp)
    # Line 8630
    cvt.s.d	$f30,$f30
    # Line 8627
    swc1	$f0,0($sp)
    # Line 8629
    swc1	$f31,4($sp)
    # Line 8630
    jal	floorf
    mov.s	$f12,$f30
    ldc1	$f31,120($sp)
    # Line 8634
    # lw $t9, -16948($gp) # &floorf
    # Line 8633
    swc1	$f24,16($sp)
    # Line 8630
    sub.s	$f31,$f31,$f0
    # Line 8634
    mov.s	$f12,$f26
    jal	floorf
    # Line 8630
    swc1	$f31,12($sp)
    # Line 8636
    # lw $t9, -16948($gp) # &floorf
    # Line 8635
    ldc1	$f26,120($sp)
    # Line 8634
    swc1	$f0,24($sp)
    # Line 8636
    mov.s	$f12,$f30
    jal	floorf
    # Line 8635
    swc1	$f26,20($sp)
    # Line 8640
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8636
    add.s	$f0,$f0,$f26
    # Line 8640
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8636
    swc1	$f0,28($sp)
    # Line 8640
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    # Line 8619
    li	$t8,1
    sd	$t8,288($sp)
.L0d99f614:
    # Line 8643
    lbu	$a2,33($s0)
    beqz	$a2,.L0d9a0b04
    nop
    lbu	$t9,35($s0)
    beqz	$t9,.L0d9a0b30
    # Line 8646
    addiu	$a4,$sp,0
    lw	$a5,0($s0)
    sw	$a5,0($sp)
    lw	$a3,4($s0)
    sw	$a3,4($sp)
    lw	$a2,8($s0)
    sw	$a2,8($sp)
    lw	$a1,12($s0)
    sw	$a1,12($sp)
    lw	$a0,16($s0)
    sw	$a0,16($sp)
    lw	$v1,20($s0)
    sw	$v1,20($sp)
    lw	$v0,24($s0)
    sw	$v0,24($sp)
    lw	$at,28($s0)
    sw	$at,28($sp)
    lw	$ra,32($s0)
    sw	$ra,32($sp)
    # Line 8647
    lwc1	$f2,4($sp)
    lwc1	$f29,12($sp)
    lwc1	$f27,8($sp)
    lwc1	$f1,0($sp)
    sdc1	$f27,112($sp)
    # Line 8651
    cvt.d.s	$f26,$f22
    # Line 8650
    swc1	$f27,0($sp)
    # Line 8647
    swc1	$f29,28($sp)
    # Line 8651
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8647
    swc1	$f27,24($sp)
    # Line 8651
    cvt.s.d	$f26,$f26
    # Line 8647
    swc1	$f2,20($sp)
    swc1	$f1,16($sp)
    # Line 8651
    jal	floorf
    mov.s	$f12,$f26
    # Line 8655
    cvt.d.s	$f30,$f28
    # Line 8651
    ldc1	$f31,112($sp)
    # Line 8655
    mul.d	$f30,$f30,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f30,$f30
    # Line 8654
    swc1	$f24,12($sp)
    # Line 8651
    sub.s	$f31,$f31,$f0
    swc1	$f31,8($sp)
    # Line 8655
    jal	floorf
    mov.s	$f12,$f30
    # Line 8658
    # lw $t9, -16948($gp) # &floorf
    # Line 8657
    ldc1	$f31,112($sp)
    # Line 8655
    swc1	$f0,4($sp)
    # Line 8658
    mov.s	$f12,$f26
    jal	floorf
    # Line 8657
    swc1	$f31,16($sp)
    # Line 8658
    ldc1	$f1,112($sp)
    # Line 8660
    # lw $t9, -16948($gp) # &floorf
    # Line 8659
    swc1	$f24,20($sp)
    # Line 8658
    add.s	$f0,$f0,$f1
    # Line 8660
    mov.s	$f12,$f30
    jal	floorf
    # Line 8658
    swc1	$f0,24($sp)
    # Line 8662
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8660
    swc1	$f0,12($sp)
    # Line 8662
    lw	$a1,68($s1)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    # Line 8643
    li	$a6,1
    sd	$a6,280($sp)
    # Line 8662
    lbu	$a2,33($s0)
.L0d99f738:
    # Line 8665
    beqz	$a2,.L0d99f864
    nop
    lbu	$a7,34($s0)
    beqz	$a7,.L0d99f864
    # Line 8668
    addiu	$a4,$sp,0
    lw	$v0,0($s0)
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    sw	$ra,8($sp)
    lw	$t9,12($s0)
    sw	$t9,12($sp)
    lw	$t8,16($s0)
    sw	$t8,16($sp)
    lw	$t3,20($s0)
    sw	$t3,20($sp)
    lw	$t2,24($s0)
    sw	$t2,24($sp)
    lw	$t1,28($s0)
    sw	$t1,28($sp)
    lw	$t0,32($s0)
    sw	$t0,32($sp)
    # Line 8669
    lwc1	$f3,4($sp)
    lwc1	$f2,0($sp)
    lwc1	$f27,8($sp)
    lwc1	$f29,12($sp)
    sdc1	$f27,104($sp)
    sdc1	$f29,96($sp)
    # Line 8672
    cvt.d.s	$f26,$f22
    # Line 8671
    swc1	$f27,0($sp)
    # Line 8669
    swc1	$f29,28($sp)
    # Line 8672
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8669
    swc1	$f27,24($sp)
    # Line 8672
    cvt.s.d	$f26,$f26
    # Line 8669
    swc1	$f3,20($sp)
    swc1	$f2,16($sp)
    # Line 8672
    jal	floorf
    mov.s	$f12,$f26
    # Line 8676
    cvt.d.s	$f30,$f28
    # Line 8675
    ldc1	$f1,96($sp)
    # Line 8672
    ldc1	$f31,104($sp)
    # Line 8676
    mul.d	$f30,$f30,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f30,$f30
    # Line 8675
    swc1	$f1,4($sp)
    # Line 8672
    sub.s	$f31,$f31,$f0
    swc1	$f31,8($sp)
    # Line 8676
    jal	floorf
    mov.s	$f12,$f30
    # Line 8679
    ldc1	$f1,104($sp)
    # Line 8676
    ldc1	$f31,96($sp)
    # Line 8680
    # lw $t9, -16948($gp) # &floorf
    # Line 8679
    swc1	$f1,16($sp)
    # Line 8676
    sub.s	$f31,$f31,$f0
    # Line 8680
    mov.s	$f12,$f26
    jal	floorf
    # Line 8676
    swc1	$f31,12($sp)
    # Line 8681
    ldc1	$f26,96($sp)
    # Line 8680
    ldc1	$f2,104($sp)
    # Line 8682
    # lw $t9, -16948($gp) # &floorf
    # Line 8681
    swc1	$f26,20($sp)
    # Line 8680
    add.s	$f2,$f0,$f2
    # Line 8682
    mov.s	$f12,$f30
    jal	floorf
    # Line 8680
    swc1	$f2,24($sp)
    # Line 8685
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8682
    add.s	$f3,$f0,$f26
    # Line 8685
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8682
    swc1	$f3,28($sp)
    # Line 8685
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d99f864:
    lbu	$v1,32($s0)
    beqz	$v1,.L0d99f960
    # Line 8691
    addiu	$a4,$sp,0
    lw	$t3,0($s0)
    sw	$t3,0($sp)
    lw	$t2,4($s0)
    sw	$t2,4($sp)
    lw	$t1,8($s0)
    sw	$t1,8($sp)
    lw	$t0,12($s0)
    sw	$t0,12($sp)
    lw	$a5,16($s0)
    sw	$a5,16($sp)
    lw	$a3,20($s0)
    sw	$a3,20($sp)
    lw	$a2,24($s0)
    sw	$a2,24($sp)
    lw	$a1,28($s0)
    sw	$a1,28($sp)
    lw	$a0,32($s0)
    sw	$a0,32($sp)
    # Line 8692
    lwc1	$f27,8($sp)
    lwc1	$f30,12($sp)
    # Line 8694
    swc1	$f24,8($sp)
    # Line 8692
    swc1	$f30,28($sp)
    # Line 8695
    cvt.d.s	$f26,$f22
    # Line 8692
    swc1	$f27,24($sp)
    lwc1	$f5,4($sp)
    # Line 8695
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8692
    lwc1	$f4,0($sp)
    # Line 8695
    cvt.s.d	$f26,$f26
    # Line 8692
    swc1	$f5,20($sp)
    swc1	$f4,16($sp)
    # Line 8695
    jal	floorf
    mov.s	$f12,$f26
    # Line 8699
    # lw $t9, -16948($gp) # &floorf
    # Line 8698
    swc1	$f24,16($sp)
    # Line 8696
    swc1	$f24,4($sp)
    # Line 8699
    mov.s	$f12,$f26
    jal	floorf
    # Line 8695
    swc1	$f0,0($sp)
    # Line 8699
    ld	$t8,296($sp)
    beqz	$t8,.L0d99f948
    swc1	$f0,24($sp)
    # Line 8702
    cvt.d.s	$f26,$f28
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 8703
    # lw $t9, -16948($gp) # &floorf
    mov.s	$f12,$f26
    jal	floorf
    # Line 8702
    swc1	$f0,20($sp)
    # Line 8703
    add.s	$f27,$f0,$f30
    swc1	$f27,28($sp)
.L0d99f948:
    # Line 8706
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d99f960:
    lbu	$t9,33($s0)
    beqz	$t9,.L0d99fa74
    # Line 8710
    addiu	$a4,$sp,0
    lw	$a5,0($s0)
    sw	$a5,0($sp)
    lw	$a3,4($s0)
    sw	$a3,4($sp)
    lw	$a2,8($s0)
    sw	$a2,8($sp)
    lw	$a1,12($s0)
    sw	$a1,12($sp)
    lw	$a0,16($s0)
    sw	$a0,16($sp)
    lw	$v1,20($s0)
    sw	$v1,20($sp)
    lw	$v0,24($s0)
    sw	$v0,24($sp)
    lw	$at,28($s0)
    sw	$at,28($sp)
    lw	$ra,32($s0)
    sw	$ra,32($sp)
    # Line 8711
    lwc1	$f31,4($sp)
    lwc1	$f30,12($sp)
    lwc1	$f27,8($sp)
    lwc1	$f29,0($sp)
    sdc1	$f27,88($sp)
    # Line 8714
    cvt.d.s	$f26,$f22
    # Line 8713
    swc1	$f27,0($sp)
    # Line 8711
    swc1	$f30,28($sp)
    # Line 8714
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8711
    swc1	$f27,24($sp)
    # Line 8714
    cvt.s.d	$f26,$f26
    # Line 8711
    swc1	$f31,20($sp)
    swc1	$f29,16($sp)
    # Line 8714
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f27,88($sp)
    # Line 8718
    # lw $t9, -16948($gp) # &floorf
    # Line 8716
    swc1	$f24,4($sp)
    # Line 8714
    sub.s	$f27,$f27,$f0
    # Line 8718
    mov.s	$f12,$f26
    jal	floorf
    # Line 8714
    swc1	$f27,8($sp)
    # Line 8720
    ldc1	$f29,88($sp)
    ld	$a6,280($sp)
    add.s	$f31,$f29,$f22
    # Line 8718
    add.s	$f29,$f0,$f29
    # Line 8720
    swc1	$f31,24($sp)
    beqz	$a6,.L0d99fa5c
    # Line 8718
    swc1	$f29,16($sp)
    # Line 8723
    cvt.d.s	$f26,$f28
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 8724
    # lw $t9, -16948($gp) # &floorf
    mov.s	$f12,$f26
    jal	floorf
    # Line 8723
    swc1	$f0,20($sp)
    # Line 8724
    add.s	$f27,$f0,$f30
    swc1	$f27,28($sp)
.L0d99fa5c:
    # Line 8727
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d99fa74:
    lbu	$a7,35($s0)
    beqz	$a7,.L0d99fb78
    # Line 8731
    addiu	$a4,$sp,0
    lw	$v0,0($s0)
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    sw	$ra,8($sp)
    lw	$t9,12($s0)
    sw	$t9,12($sp)
    lw	$t8,16($s0)
    sw	$t8,16($sp)
    lw	$t3,20($s0)
    sw	$t3,20($sp)
    lw	$t2,24($s0)
    sw	$t2,24($sp)
    lw	$t1,28($s0)
    sw	$t1,28($sp)
    lw	$t0,32($s0)
    sw	$t0,32($sp)
    # Line 8732
    lwc1	$f0,8($sp)
    lwc1	$f31,12($sp)
    lwc1	$f29,0($sp)
    # Line 8736
    swc1	$f24,12($sp)
    # Line 8734
    swc1	$f24,0($sp)
    # Line 8732
    sdc1	$f0,184($sp)
    # Line 8737
    cvt.d.s	$f30,$f28
    # Line 8732
    swc1	$f0,24($sp)
    # Line 8737
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f30,$f30,$f20
    # Line 8732
    swc1	$f31,28($sp)
    lwc1	$f31,4($sp)
    # Line 8737
    cvt.s.d	$f30,$f30
    # Line 8732
    swc1	$f29,16($sp)
    swc1	$f31,20($sp)
    # Line 8737
    jal	floorf
    mov.s	$f12,$f30
    ld	$v1,296($sp)
    beqz	$v1,.L0d99fb4c
    swc1	$f0,4($sp)
    # Line 8740
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 8741
    # lw $t9, -16948($gp) # &floorf
    mov.s	$f12,$f26
    jal	floorf
    # Line 8740
    swc1	$f0,16($sp)
    # Line 8741
    ldc1	$f27,184($sp)
    add.s	$f27,$f0,$f27
    swc1	$f27,24($sp)
.L0d99fb4c:
    # Line 8745
    # lw $t9, -16948($gp) # &floorf
    mov.s	$f12,$f30
    jal	floorf
    # Line 8744
    swc1	$f24,20($sp)
    # Line 8747
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8745
    swc1	$f0,28($sp)
    # Line 8747
    lw	$a1,68($s1)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
.L0d99fb78:
    lbu	$a0,34($s0)
    beqz	$a0,.L0d99fc8c
    # Line 8773
    li	$ra,1
    # Line 8751
    addiu	$a4,$sp,0
    lw	$t8,0($s0)
    sw	$t8,0($sp)
    lw	$t3,4($s0)
    sw	$t3,4($sp)
    lw	$t2,8($s0)
    sw	$t2,8($sp)
    lw	$t1,12($s0)
    sw	$t1,12($sp)
    lw	$t0,16($s0)
    sw	$t0,16($sp)
    lw	$a5,20($s0)
    sw	$a5,20($sp)
    lw	$a3,24($s0)
    sw	$a3,24($sp)
    lw	$a2,28($s0)
    sw	$a2,28($sp)
    lw	$a1,32($s0)
    sw	$a1,32($sp)
    # Line 8752
    lwc1	$f27,8($sp)
    lwc1	$f31,4($sp)
    lwc1	$f30,12($sp)
    lwc1	$f29,0($sp)
    # Line 8756
    swc1	$f30,4($sp)
    # Line 8754
    swc1	$f24,0($sp)
    # Line 8757
    cvt.d.s	$f26,$f28
    # Line 8752
    swc1	$f30,28($sp)
    sdc1	$f27,184($sp)
    # Line 8757
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8752
    swc1	$f27,24($sp)
    # Line 8757
    cvt.s.d	$f26,$f26
    # Line 8752
    swc1	$f31,20($sp)
    swc1	$f29,16($sp)
    # Line 8757
    jal	floorf
    mov.s	$f12,$f26
    ld	$t9,288($sp)
    sub.s	$f27,$f30,$f0
    beqz	$t9,.L0d99fc54
    swc1	$f27,12($sp)
    # Line 8761
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 8762
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    # Line 8761
    swc1	$f0,16($sp)
    # Line 8762
    jal	floorf
    cvt.s.d	$f12,$f12
    ldc1	$f13,184($sp)
    add.s	$f13,$f0,$f13
    swc1	$f13,24($sp)
.L0d99fc54:
    # Line 8765
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    add.s	$f15,$f0,$f30
    # Line 8769
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8765
    swc1	$f15,20($sp)
    # Line 8767
    add.s	$f14,$f30,$f28
    # Line 8769
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8767
    swc1	$f14,28($sp)
    # Line 8769
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    # Line 8773
    li	$ra,1
.L0d99fc8c:
    b	.L0d99e860
    sd	$ra,376($sp)
.L0d99fc94:
    # Line 8912
    lbu	$at,32($s0)
    beqz	$at,.L0d9a0b0c
    move	$a2,$at
    lbu	$v0,35($s0)
    beqz	$v0,.L0d9a0b10
    ldc1	$f20,_lit8_3fe0000000000000
    # Line 8914
    addiu	$a4,$sp,0
    lw	$t2,0($s0)
    sw	$t2,0($sp)
    lw	$t1,4($s0)
    sw	$t1,4($sp)
    lw	$t0,8($s0)
    sw	$t0,8($sp)
    lw	$a5,12($s0)
    sw	$a5,12($sp)
    lw	$a3,16($s0)
    sw	$a3,16($sp)
    lw	$a2,20($s0)
    sw	$a2,20($sp)
    lw	$a1,24($s0)
    sw	$a1,24($sp)
    lw	$a0,28($s0)
    sw	$a0,28($sp)
    lw	$v1,32($s0)
    sw	$v1,32($sp)
    # Line 8921
    swc1	$f24,16($sp)
    # Line 8918
    swc1	$f24,4($sp)
    # Line 8919
    lwc1	$f13,_lit_3f800000
    # Line 8922
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    # Line 8916
    swc1	$f24,0($sp)
    # Line 8922
    mul.d	$f12,$f12,$f20
    # Line 8919
    swc1	$f13,12($sp)
    # Line 8917
    swc1	$f13,8($sp)
    # Line 8922
    jal	floorf
    cvt.s.d	$f12,$f12
    # Line 8924
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    # Line 8923
    swc1	$f24,20($sp)
    # Line 8922
    swc1	$f0,24($sp)
    # Line 8924
    jal	floorf
    cvt.s.d	$f12,$f12
    # Line 8926
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 8924
    swc1	$f0,28($sp)
    # Line 8926
    lw	$a1,68($s1)
    jal	__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    lbu	$a2,32($s0)
    # Line 8929
    beqz	$a2,.L0d9a0b18
    nop
.L0d99fd68:
    lbu	$t3,34($s0)
    beqz	$t3,.L0d99fe84
    # Line 8931
    addiu	$a4,$sp,0
    lw	$a3,0($s0)
    sw	$a3,0($sp)
    lw	$a1,4($s0)
    sw	$a1,4($sp)
    lw	$a0,8($s0)
    sw	$a0,8($sp)
    lw	$v1,12($s0)
    sw	$v1,12($sp)
    lw	$v0,16($s0)
    sw	$v0,16($sp)
    lw	$at,20($s0)
    sw	$at,20($sp)
    lw	$ra,24($s0)
    sw	$ra,24($sp)
    lw	$t9,28($s0)
    sw	$t9,28($sp)
    lw	$t8,32($s0)
    sw	$t8,32($sp)
    # Line 8938
    swc1	$f24,16($sp)
    # Line 8934
    swc1	$f24,0($sp)
    # Line 8939
    # lw $t9, -16948($gp) # &floorf
    # Line 8935
    lwc1	$f15,_lit_3f800000
    # Line 8932
    lwc1	$f13,12($sp)
    lwc1	$f14,8($sp)
    sdc1	$f13,80($sp)
    # Line 8935
    swc1	$f15,8($sp)
    # Line 8932
    swc1	$f14,24($sp)
    # Line 8939
    cvt.d.s	$f12,$f22
    # Line 8936
    lwc1	$f14,_lit_bf800000
    # Line 8932
    lwc1	$f15,4($sp)
    swc1	$f13,28($sp)
    # Line 8939
    mul.d	$f12,$f12,$f20
    # Line 8932
    swc1	$f15,20($sp)
    # Line 8936
    add.s	$f13,$f13,$f14
    # Line 8939
    cvt.s.d	$f12,$f12
    jal	floorf
    # Line 8936
    swc1	$f13,4($sp)
    # Line 8941
    cvt.d.s	$f26,$f28
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8940
    ldc1	$f16,80($sp)
    # Line 8941
    cvt.s.d	$f26,$f26
    # Line 8939
    swc1	$f0,24($sp)
    # Line 8940
    swc1	$f16,20($sp)
    # Line 8941
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f30,80($sp)
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
    lbu	$a4,35($s0)
    beqz	$a4,.L0d99fe6c
    # Line 8945
    nop	# was lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f31,80($sp)
    # Line 8946
    # lw $t9, -16948($gp) # &floorf
    # Line 8945
    add.s	$f31,$f0,$f31
    # Line 8946
    mov.s	$f12,$f26
    jal	floorf
    # Line 8945
    swc1	$f31,20($sp)
    # Line 8946
    add.s	$f0,$f0,$f30
    swc1	$f0,28($sp)
.L0d99fe6c:
    # Line 8949
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d99fe84:
    # Line 8952
    lbu	$a2,33($s0)
.L0d99fe88:
    beqz	$a2,.L0d9a0118
    nop
    lbu	$a5,35($s0)
    beqz	$a5,.L0d99ffac
    # Line 8954
    addiu	$a4,$sp,0
    lw	$v0,0($s0)
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    sw	$ra,8($sp)
    lw	$t9,12($s0)
    sw	$t9,12($sp)
    lw	$t8,16($s0)
    sw	$t8,16($sp)
    lw	$t3,20($s0)
    sw	$t3,20($sp)
    lw	$t2,24($s0)
    sw	$t2,24($sp)
    lw	$t1,28($s0)
    sw	$t1,28($sp)
    lw	$t0,32($s0)
    sw	$t0,32($sp)
    # Line 8955
    lwc1	$f2,4($sp)
    lwc1	$f27,12($sp)
    lwc1	$f30,8($sp)
    # Line 8959
    lwc1	$f29,_lit_3f800000
    # Line 8961
    swc1	$f30,16($sp)
    # Line 8959
    swc1	$f29,12($sp)
    # Line 8958
    swc1	$f24,4($sp)
    # Line 8962
    cvt.d.s	$f26,$f22
    # Line 8955
    swc1	$f27,28($sp)
    # Line 8957
    lwc1	$f1,_lit_bf800000
    # Line 8962
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 8955
    swc1	$f30,24($sp)
    # Line 8962
    cvt.s.d	$f26,$f26
    # Line 8955
    swc1	$f2,20($sp)
    # Line 8957
    add.s	$f1,$f30,$f1
    swc1	$f1,0($sp)
    # Line 8962
    jal	floorf
    mov.s	$f12,$f26
    # Line 8964
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    # Line 8963
    swc1	$f24,20($sp)
    # Line 8962
    add.s	$f13,$f0,$f30
    # Line 8964
    mul.d	$f12,$f12,$f20
    # Line 8962
    sdc1	$f13,184($sp)
    swc1	$f13,24($sp)
    # Line 8964
    jal	floorf
    cvt.s.d	$f12,$f12
    swc1	$f0,28($sp)
    lbu	$v1,32($s0)
    beqz	$v1,.L0d99ff94
    # Line 8971
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8967
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 8968
    # lw $t9, -16948($gp) # &floorf
    # Line 8967
    add.s	$f13,$f0,$f30
    # Line 8968
    mov.s	$f12,$f26
    jal	floorf
    # Line 8967
    swc1	$f13,16($sp)
    # Line 8968
    ldc1	$f14,184($sp)
    add.s	$f14,$f0,$f14
    swc1	$f14,24($sp)
    # Line 8971
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d99ff94:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    lbu	$a2,33($s0)
.L0d99ffac:
    # Line 8974
    beqz	$a2,.L0d9a0118
    nop
    lbu	$a0,34($s0)
    beqz	$a0,.L0d9a0118
    # Line 8977
    addiu	$a4,$sp,0
    lw	$t8,0($s0)
    sw	$t8,0($sp)
    lw	$t3,4($s0)
    sw	$t3,4($sp)
    lw	$t2,8($s0)
    sw	$t2,8($sp)
    lw	$t1,12($s0)
    sw	$t1,12($sp)
    lw	$t0,16($s0)
    sw	$t0,16($sp)
    lw	$a7,20($s0)
    sw	$a7,20($sp)
    lw	$a5,24($s0)
    sw	$a5,24($sp)
    lw	$a3,28($s0)
    sw	$a3,28($sp)
    lw	$a1,32($s0)
    sw	$a1,32($sp)
    # Line 8978
    lwc1	$f30,8($sp)
    lwc1	$f27,4($sp)
    # Line 8983
    swc1	$f30,16($sp)
    # Line 8978
    swc1	$f30,24($sp)
    # Line 8981
    lwc1	$f15,_lit_bf800000
    # Line 8978
    lwc1	$f16,12($sp)
    # Line 8984
    cvt.d.s	$f26,$f22
    # lw $t9, -16948($gp) # &floorf
    # Line 8978
    sdc1	$f16,56($sp)
    # Line 8984
    mul.d	$f26,$f26,$f20
    # Line 8978
    swc1	$f16,28($sp)
    # Line 8981
    add.s	$f16,$f16,$f15
    # Line 8978
    swc1	$f27,20($sp)
    # Line 8984
    cvt.s.d	$f26,$f26
    # Line 8980
    add.s	$f15,$f30,$f15
    # Line 8981
    swc1	$f16,4($sp)
    # Line 8980
    swc1	$f15,0($sp)
    # Line 8984
    jal	floorf
    mov.s	$f12,$f26
    sdc1	$f30,48($sp)
    add.s	$f27,$f0,$f30
    sdc1	$f27,184($sp)
    # Line 8986
    cvt.d.s	$f12,$f28
    # Line 8985
    ldc1	$f29,56($sp)
    # Line 8986
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    # Line 8984
    swc1	$f27,24($sp)
    # Line 8985
    swc1	$f29,20($sp)
    # Line 8986
    cvt.s.d	$f12,$f12
    jal	floorf
    sdc1	$f12,176($sp)
    ldc1	$f30,56($sp)
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
    lbu	$t9,32($s0)
    beqz	$t9,.L0d9a00c8
    # Line 8989
    nop	# was lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f31,48($sp)
    # Line 8990
    # lw $t9, -16948($gp) # &floorf
    # Line 8989
    add.s	$f31,$f0,$f31
    # Line 8990
    mov.s	$f12,$f26
    jal	floorf
    # Line 8989
    swc1	$f31,16($sp)
    # Line 8990
    ldc1	$f1,184($sp)
    add.s	$f0,$f0,$f1
    swc1	$f0,24($sp)
.L0d9a00c8:
    lbu	$ra,35($s0)
    beqz	$ra,.L0d9a0104
    # Line 8997
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8993
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    ldc1	$f12,176($sp)
    ldc1	$f2,56($sp)
    # Line 8994
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f12,176($sp)
    # Line 8993
    add.s	$f2,$f0,$f2
    # Line 8994
    jal	floorf
    # Line 8993
    swc1	$f2,20($sp)
    # Line 8994
    add.s	$f3,$f0,$f30
    swc1	$f3,28($sp)
    # Line 8997
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a0104:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a0118:
    lbu	$at,32($s0)
    beqz	$at,.L0d9a0204
    # Line 9004
    addiu	$a4,$sp,0
    lw	$t1,0($s0)
    sw	$t1,0($sp)
    lw	$t0,4($s0)
    sw	$t0,4($sp)
    lw	$a5,8($s0)
    sw	$a5,8($sp)
    lw	$a3,12($s0)
    sw	$a3,12($sp)
    lw	$a2,16($s0)
    sw	$a2,16($sp)
    lw	$a1,20($s0)
    sw	$a1,20($sp)
    lw	$a0,24($s0)
    sw	$a0,24($sp)
    lw	$v1,28($s0)
    sw	$v1,28($sp)
    lw	$v0,32($s0)
    sw	$v0,32($sp)
    # Line 9011
    swc1	$f24,16($sp)
    # Line 9007
    swc1	$f24,0($sp)
    # Line 9005
    lwc1	$f30,12($sp)
    lwc1	$f14,8($sp)
    lwc1	$f13,4($sp)
    # Line 9008
    lwc1	$f15,_lit_3f800000
    # Line 9009
    swc1	$f24,4($sp)
    # Line 9008
    swc1	$f15,8($sp)
    # Line 9012
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    # Line 9005
    swc1	$f30,28($sp)
    # Line 9012
    mul.d	$f12,$f12,$f20
    # Line 9005
    swc1	$f14,24($sp)
    swc1	$f13,20($sp)
    # Line 9012
    jal	floorf
    cvt.s.d	$f12,$f12
    swc1	$f0,24($sp)
    lbu	$t2,35($s0)
    beqz	$t2,.L0d9a01f0
    # Line 9019
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9015
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    cvt.s.d	$f12,$f12
    jal	floorf
    sdc1	$f12,176($sp)
    # Line 9016
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f12,176($sp)
    jal	floorf
    # Line 9015
    swc1	$f0,20($sp)
    # Line 9016
    add.s	$f13,$f0,$f30
    swc1	$f13,28($sp)
    # Line 9019
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a01f0:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a0204:
    lbu	$t3,33($s0)
    beqz	$t3,.L0d9a033c
    # Line 9023
    addiu	$a4,$sp,0
    lw	$a2,0($s0)
    sw	$a2,0($sp)
    lw	$a1,4($s0)
    sw	$a1,4($sp)
    lw	$a0,8($s0)
    sw	$a0,8($sp)
    lw	$v1,12($s0)
    sw	$v1,12($sp)
    lw	$v0,16($s0)
    sw	$v0,16($sp)
    lw	$at,20($s0)
    sw	$at,20($sp)
    lw	$ra,24($s0)
    sw	$ra,24($sp)
    lw	$t9,28($s0)
    sw	$t9,28($sp)
    lw	$t8,32($s0)
    sw	$t8,32($sp)
    # Line 9024
    lwc1	$f16,4($sp)
    lwc1	$f30,12($sp)
    # Line 9027
    swc1	$f24,4($sp)
    # Line 9024
    swc1	$f30,28($sp)
    swc1	$f16,20($sp)
    # Line 9030
    # lw $t9, -16948($gp) # &floorf
    cvt.d.s	$f26,$f22
    # Line 9024
    lwc1	$f14,8($sp)
    # Line 9026
    lwc1	$f15,_lit_bf800000
    # Line 9030
    mul.d	$f26,$f26,$f20
    # Line 9024
    sdc1	$f14,64($sp)
    # Line 9029
    swc1	$f14,16($sp)
    # Line 9030
    cvt.s.d	$f26,$f26
    # Line 9024
    swc1	$f14,24($sp)
    # Line 9026
    add.s	$f14,$f14,$f15
    swc1	$f14,0($sp)
    # Line 9030
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f27,64($sp)
    add.s	$f27,$f0,$f27
    swc1	$f27,24($sp)
    lbu	$a3,32($s0)
    beqz	$a3,.L0d9a02e8
    sdc1	$f27,184($sp)
    # Line 9033
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f29,64($sp)
    # Line 9034
    # lw $t9, -16948($gp) # &floorf
    # Line 9033
    add.s	$f29,$f0,$f29
    # Line 9034
    mov.s	$f12,$f26
    jal	floorf
    # Line 9033
    swc1	$f29,16($sp)
    # Line 9034
    ldc1	$f31,184($sp)
    add.s	$f31,$f0,$f31
    swc1	$f31,24($sp)
.L0d9a02e8:
    lbu	$a4,35($s0)
    beqz	$a4,.L0d9a0328
    # Line 9041
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9037
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    cvt.s.d	$f12,$f12
    jal	floorf
    sdc1	$f12,176($sp)
    # Line 9038
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f12,176($sp)
    jal	floorf
    # Line 9037
    swc1	$f0,20($sp)
    # Line 9038
    add.s	$f13,$f0,$f30
    swc1	$f13,28($sp)
    # Line 9041
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a0328:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a033c:
    lbu	$a5,35($s0)
    beqz	$a5,.L0d9a0430
    # Line 9045
    addiu	$a4,$sp,0
    lw	$v0,0($s0)
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    sw	$ra,8($sp)
    lw	$t9,12($s0)
    sw	$t9,12($sp)
    lw	$t8,16($s0)
    sw	$t8,16($sp)
    lw	$t3,20($s0)
    sw	$t3,20($sp)
    lw	$t2,24($s0)
    sw	$t2,24($sp)
    lw	$t1,28($s0)
    sw	$t1,28($sp)
    lw	$t0,32($s0)
    sw	$t0,32($sp)
    # Line 9052
    swc1	$f24,20($sp)
    # Line 9049
    swc1	$f24,4($sp)
    # Line 9046
    lwc1	$f14,8($sp)
    lwc1	$f15,12($sp)
    # Line 9050
    lwc1	$f16,_lit_3f800000
    # Line 9046
    lwc1	$f13,0($sp)
    # Line 9050
    swc1	$f16,12($sp)
    # Line 9048
    swc1	$f24,0($sp)
    # Line 9046
    sdc1	$f14,184($sp)
    # Line 9053
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    # Line 9046
    swc1	$f15,28($sp)
    # Line 9053
    mul.d	$f12,$f12,$f20
    # Line 9046
    swc1	$f14,24($sp)
    swc1	$f13,16($sp)
    # Line 9053
    jal	floorf
    cvt.s.d	$f12,$f12
    swc1	$f0,28($sp)
    lbu	$v1,32($s0)
    beqz	$v1,.L0d9a041c
    # Line 9060
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9056
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 9057
    # lw $t9, -16948($gp) # &floorf
    mov.s	$f12,$f26
    jal	floorf
    # Line 9056
    swc1	$f0,16($sp)
    # Line 9057
    ldc1	$f27,184($sp)
    add.s	$f27,$f0,$f27
    swc1	$f27,24($sp)
    # Line 9060
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a041c:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a0430:
    lbu	$a0,34($s0)
    beqz	$a0,.L0d9a057c
    # Line 9085
    li	$at,1
    # Line 9064
    addiu	$a4,$sp,0
    lw	$t8,0($s0)
    sw	$t8,0($sp)
    lw	$t3,4($s0)
    sw	$t3,4($sp)
    lw	$t2,8($s0)
    sw	$t2,8($sp)
    lw	$t1,12($s0)
    sw	$t1,12($sp)
    lw	$t0,16($s0)
    sw	$t0,16($sp)
    lw	$a5,20($s0)
    sw	$a5,20($sp)
    lw	$a3,24($s0)
    sw	$a3,24($sp)
    lw	$a2,28($s0)
    sw	$a2,28($sp)
    lw	$a1,32($s0)
    sw	$a1,32($sp)
    # Line 9065
    lwc1	$f0,0($sp)
    lwc1	$f27,8($sp)
    # Line 9067
    swc1	$f24,0($sp)
    # Line 9065
    sdc1	$f27,184($sp)
    swc1	$f27,24($sp)
    swc1	$f0,16($sp)
    # Line 9071
    # lw $t9, -16948($gp) # &floorf
    cvt.d.s	$f26,$f28
    # Line 9065
    lwc1	$f29,12($sp)
    # Line 9068
    lwc1	$f31,_lit_bf800000
    # Line 9071
    mul.d	$f26,$f26,$f20
    # Line 9065
    sdc1	$f29,72($sp)
    # Line 9070
    swc1	$f29,20($sp)
    # Line 9071
    cvt.s.d	$f26,$f26
    # Line 9065
    swc1	$f29,28($sp)
    # Line 9068
    add.s	$f29,$f29,$f31
    swc1	$f29,4($sp)
    # Line 9071
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f30,72($sp)
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
    lbu	$t9,32($s0)
    beqz	$t9,.L0d9a0528
    nop
    sdc1	$f26,176($sp)
    # Line 9074
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 9075
    # lw $t9, -16948($gp) # &floorf
    mov.s	$f12,$f26
    jal	floorf
    # Line 9074
    swc1	$f0,16($sp)
    # Line 9075
    ldc1	$f27,184($sp)
    ldc1	$f26,176($sp)
    add.s	$f27,$f0,$f27
    swc1	$f27,24($sp)
.L0d9a0528:
    lbu	$ra,35($s0)
    beqz	$ra,.L0d9a0564
    # Line 9082
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 9078
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f29,72($sp)
    # Line 9079
    # lw $t9, -16948($gp) # &floorf
    # Line 9078
    add.s	$f29,$f0,$f29
    # Line 9079
    mov.s	$f12,$f26
    jal	floorf
    # Line 9078
    swc1	$f29,20($sp)
    # Line 9079
    add.s	$f31,$f0,$f30
    swc1	$f31,28($sp)
    # Line 9082
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a0564:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
    # Line 9085
    li	$at,1
.L0d9a057c:
    b	.L0d99e860
    sd	$at,376($sp)
.L0d9a0584:
    # Line 8599
    sd	$zero,296($sp)
    ldc1	$f20,_lit8_3fe0000000000000
.L0d9a058c:
    # Line 8619
    bnez	$a2,.L0d99f500
    nop
.L0d9a0594:
    b	.L0d99f614
    sd	$zero,288($sp)
.L0d9a059c:
    # Line 8793
    lw	$t0,20($s1)
    addu	$t0,$t0,$s8
    swc1	$f24,36($t0)
    # Line 8794
    lw	$a7,20($s1)
    addu	$a7,$a7,$s8
    swc1	$f24,184($a7)
    # Line 8795
    lw	$a6,20($s1)
    addu	$a6,$a6,$s8
    swc1	$f24,332($a6)
    # Line 8796
    lw	$a5,20($s1)
    addu	$a5,$a5,$s8
    swc1	$f24,480($a5)
    # Line 8797
    lw	$a4,20($s1)
    ldc1	$f3,160($sp)
    addu	$a4,$a4,$s8
    swc1	$f3,40($a4)
    # Line 8798
    lw	$a3,20($s1)
    ldc1	$f2,168($sp)
    addu	$a3,$a3,$s8
    swc1	$f2,188($a3)
    # Line 8799
    lw	$a2,20($s1)
    ldc1	$f1,144($sp)
    addu	$a2,$a2,$s8
    swc1	$f1,336($a2)
    # Line 8800
    lw	$a1,20($s1)
    ldc1	$f0,152($sp)
    # Line 8802
    # lw $t9, -31220($gp) # &__glOdysseyProgramTexFilter
    # Line 8800
    addu	$a1,$a1,$s8
    swc1	$f0,484($a1)
    # Line 8802
    lw	$a0,20($s1)
    jal	__glOdysseyProgramTexFilter
    addu	$a0,$a0,$s8
    # Line 8806
    lw	$at,31956($s3)
    lui	$ra,0x4
    or	$ra,$ra,$at
    # Line 8807
    ori	$ra,$ra,0x4000
    sw	$ra,31956($s3)
    # Line 8808
    lw	$t9,26976($s2)
    ori	$t9,$t9,0x200
    sw	$t9,26976($s2)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 8811
    lw	$t3,26976($s2)
    lui	$t2,0x20
    # Line 8810
    lui	$t8,0xffef
    lw	$t9,-26972($s2)
    ori	$t8,$t8,0xffff
    # Line 8811
    or	$t2,$t2,$t3
    sw	$t2,26976($s2)
    # Line 8810
    and	$t8,$t8,$t9
    # Line 8814
    move	$t9,$s6
    move	$a0,$s1
    # Line 8810
    sw	$t8,-26972($s2)
    # Line 8814
    move	$a1,$s7
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    # Line 8811
    sw	$t1,4120($zero)
    # Line 8814
    lbu	$v0,32($s0)
    beqz	$v0,.L0d9a0760
    ldc1	$f20,_lit8_3fe0000000000000
    # Line 8817
    addiu	$a4,$sp,0
    lw	$t2,0($s0)
    sw	$t2,0($sp)
    lw	$t1,4($s0)
    sw	$t1,4($sp)
    lw	$t0,8($s0)
    sw	$t0,8($sp)
    lw	$a5,12($s0)
    sw	$a5,12($sp)
    lw	$a3,16($s0)
    sw	$a3,16($sp)
    lw	$a2,20($s0)
    sw	$a2,20($sp)
    lw	$a1,24($s0)
    sw	$a1,24($sp)
    lw	$a0,28($s0)
    sw	$a0,28($sp)
    lw	$v1,32($s0)
    sw	$v1,32($sp)
    # Line 8821
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    # Line 8820
    swc1	$f24,4($sp)
    # Line 8819
    swc1	$f24,0($sp)
    # Line 8821
    cvt.s.d	$f12,$f12
    jal	floorf
    sdc1	$f12,176($sp)
    swc1	$f0,8($sp)
    # Line 8823
    swc1	$f24,16($sp)
    swc1	$f24,20($sp)
    lwc1	$f30,12($sp)
    swc1	$f0,24($sp)
    swc1	$f30,28($sp)
    lbu	$t3,35($s0)
    beqz	$t3,.L0d9a0728
    # Line 8825
    nop	# was lw $t9, -16948($gp) # &floorf
    jal	floorf
    ldc1	$f12,176($sp)
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
.L0d9a0728:
    lbu	$t8,34($s0)
    beqz	$t8,.L0d9a074c
    # Line 8831
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8828
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    ldc1	$f12,176($sp)
    add.s	$f13,$f0,$f30
    swc1	$f13,28($sp)
    # Line 8831
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a074c:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a0760:
    lbu	$t9,33($s0)
    beqz	$t9,.L0d9a08b0
    # Line 8835
    addiu	$a4,$sp,0
    lw	$a5,0($s0)
    sw	$a5,0($sp)
    lw	$a3,4($s0)
    sw	$a3,4($sp)
    lw	$a2,8($s0)
    sw	$a2,8($sp)
    lw	$a1,12($s0)
    sw	$a1,12($sp)
    lw	$a0,16($s0)
    sw	$a0,16($sp)
    lw	$v1,20($s0)
    sw	$v1,20($sp)
    lw	$v0,24($s0)
    sw	$v0,24($sp)
    lw	$at,28($s0)
    sw	$at,28($sp)
    lw	$ra,32($s0)
    sw	$ra,32($sp)
    # Line 8837
    cvt.d.s	$f26,$f22
    mul.d	$f26,$f26,$f20
    # lw $t9, -16948($gp) # &floorf
    cvt.s.d	$f26,$f26
    jal	floorf
    mov.s	$f12,$f26
    # Line 8841
    swc1	$f24,20($sp)
    lwc1	$f30,12($sp)
    # Line 8839
    swc1	$f24,4($sp)
    # Line 8841
    swc1	$f30,28($sp)
    # Line 8837
    lwc1	$f27,8($sp)
    # Line 8843
    # lw $t9, -16948($gp) # &floorf
    # Line 8837
    sdc1	$f27,40($sp)
    # Line 8842
    swc1	$f27,16($sp)
    # Line 8841
    swc1	$f27,24($sp)
    # Line 8837
    sub.s	$f27,$f27,$f0
    # Line 8843
    mov.s	$f12,$f26
    jal	floorf
    # Line 8837
    swc1	$f27,0($sp)
    # Line 8843
    ldc1	$f29,40($sp)
    add.s	$f29,$f0,$f29
    swc1	$f29,24($sp)
    lbu	$a6,32($s0)
    beqz	$a6,.L0d9a0848
    sdc1	$f29,184($sp)
    # Line 8845
    # lw $t9, -16948($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    ldc1	$f31,40($sp)
    # Line 8846
    # lw $t9, -16948($gp) # &floorf
    # Line 8845
    add.s	$f31,$f0,$f31
    # Line 8846
    mov.s	$f12,$f26
    jal	floorf
    # Line 8845
    swc1	$f31,16($sp)
    # Line 8846
    ldc1	$f1,184($sp)
    add.s	$f0,$f0,$f1
    swc1	$f0,24($sp)
.L0d9a0848:
    lbu	$a7,35($s0)
    beqz	$a7,.L0d9a0870
    nop
    # Line 8849
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    jal	floorf
    cvt.s.d	$f12,$f12
    add.s	$f30,$f0,$f30
    swc1	$f30,28($sp)
.L0d9a0870:
    lbu	$t0,34($s0)
    beqz	$t0,.L0d9a089c
    # Line 8855
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8852
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    jal	floorf
    cvt.s.d	$f12,$f12
    add.s	$f13,$f0,$f30
    swc1	$f13,28($sp)
    # Line 8855
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a089c:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a08b0:
    lbu	$t1,35($s0)
    beqz	$t1,.L0d9a09ac
    # Line 8859
    addiu	$a4,$sp,0
    lw	$a0,0($s0)
    sw	$a0,0($sp)
    lw	$v1,4($s0)
    sw	$v1,4($sp)
    lw	$v0,8($s0)
    sw	$v0,8($sp)
    lw	$at,12($s0)
    sw	$at,12($sp)
    lw	$ra,16($s0)
    sw	$ra,16($sp)
    lw	$t9,20($s0)
    sw	$t9,20($sp)
    lw	$t8,24($s0)
    sw	$t8,24($sp)
    lw	$t3,28($s0)
    sw	$t3,28($sp)
    lw	$t2,32($s0)
    sw	$t2,32($sp)
    # Line 8863
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    # Line 8862
    swc1	$f24,4($sp)
    # Line 8861
    swc1	$f24,0($sp)
    # Line 8863
    jal	floorf
    cvt.s.d	$f12,$f12
    # Line 8865
    swc1	$f0,28($sp)
    swc1	$f24,20($sp)
    swc1	$f24,16($sp)
    lwc1	$f13,8($sp)
    # Line 8863
    swc1	$f0,12($sp)
    # Line 8865
    swc1	$f13,24($sp)
    lbu	$a1,32($s0)
    beqz	$a1,.L0d9a0968
    sdc1	$f13,184($sp)
    # Line 8867
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    jal	floorf
    cvt.s.d	$f12,$f12
    ldc1	$f13,184($sp)
    add.s	$f13,$f0,$f13
    sdc1	$f13,184($sp)
    swc1	$f13,24($sp)
.L0d9a0968:
    lbu	$a2,33($s0)
    beqz	$a2,.L0d9a0998
    # Line 8873
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8870
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    jal	floorf
    cvt.s.d	$f12,$f12
    ldc1	$f13,184($sp)
    add.s	$f13,$f0,$f13
    swc1	$f13,24($sp)
    # Line 8873
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a0998:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a09ac:
    lbu	$a3,34($s0)
    beqz	$a3,.L0d9a0af8
    # Line 8877
    addiu	$a4,$sp,0
    lw	$at,0($s0)
    sw	$at,0($sp)
    lw	$ra,4($s0)
    sw	$ra,4($sp)
    lw	$t9,8($s0)
    sw	$t9,8($sp)
    lw	$t8,12($s0)
    sw	$t8,12($sp)
    lw	$t3,16($s0)
    sw	$t3,16($sp)
    lw	$t2,20($s0)
    sw	$t2,20($sp)
    lw	$t1,24($s0)
    sw	$t1,24($sp)
    lw	$t0,28($s0)
    sw	$t0,28($sp)
    lw	$a5,32($s0)
    sw	$a5,32($sp)
    # Line 8880
    cvt.d.s	$f12,$f28
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    # Line 8879
    swc1	$f24,0($sp)
    # Line 8880
    cvt.s.d	$f12,$f12
    jal	floorf
    sdc1	$f12,176($sp)
    # Line 8883
    swc1	$f24,16($sp)
    # Line 8885
    ldc1	$f12,176($sp)
    # Line 8880
    lwc1	$f26,12($sp)
    # Line 8883
    lwc1	$f14,8($sp)
    # Line 8884
    swc1	$f26,20($sp)
    # Line 8883
    sdc1	$f14,184($sp)
    # Line 8885
    # lw $t9, -16948($gp) # &floorf
    # Line 8883
    swc1	$f26,28($sp)
    swc1	$f14,24($sp)
    # Line 8880
    sub.s	$f13,$f26,$f0
    # Line 8885
    jal	floorf
    # Line 8880
    swc1	$f13,4($sp)
    # Line 8885
    add.s	$f30,$f0,$f26
    swc1	$f30,28($sp)
    lbu	$v0,35($s0)
    beqz	$v0,.L0d9a0a84
    # Line 8887
    nop	# was lw $t9, -16948($gp) # &floorf
    jal	floorf
    ldc1	$f12,176($sp)
    # Line 8888
    # lw $t9, -16948($gp) # &floorf
    ldc1	$f12,176($sp)
    # Line 8887
    add.s	$f15,$f0,$f26
    # Line 8888
    jal	floorf
    # Line 8887
    swc1	$f15,20($sp)
    # Line 8888
    add.s	$f16,$f0,$f30
    swc1	$f16,28($sp)
.L0d9a0a84:
    lbu	$v1,32($s0)
    beqz	$v1,.L0d9a0ab4
    nop
    # Line 8891
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    jal	floorf
    cvt.s.d	$f12,$f12
    ldc1	$f13,184($sp)
    add.s	$f13,$f0,$f13
    sdc1	$f13,184($sp)
    swc1	$f13,24($sp)
.L0d9a0ab4:
    lbu	$a0,33($s0)
    beqz	$a0,.L0d9a0ae4
    # Line 8897
    nop	# was lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 8894
    cvt.d.s	$f12,$f22
    # lw $t9, -16948($gp) # &floorf
    mul.d	$f12,$f12,$f20
    jal	floorf
    cvt.s.d	$f12,$f12
    ldc1	$f13,184($sp)
    add.s	$f13,$f0,$f13
    swc1	$f13,24($sp)
    # Line 8897
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
.L0d9a0ae4:
    move	$a0,$s4
    move	$a3,$zero
    addiu	$a2,$sp,0
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($s1)
.L0d9a0af8:
    # Line 8900
    li	$a1,1
    b	.L0d99e860
    sd	$a1,376($sp)
.L0d9a0b04:
    # Line 8643
    b	.L0d99f738
    sd	$zero,280($sp)
.L0d9a0b0c:
    # Line 8912
    ldc1	$f20,_lit8_3fe0000000000000
.L0d9a0b10:
    # Line 8929
    bnez	$a2,.L0d99fd68
    nop
.L0d9a0b18:
    b	.L0d99fe88
    # Line 8952
    lbu	$a2,33($s0)
.L0d9a0b20:
    b	.L0d9a058c
    # Line 8599
    sd	$zero,296($sp)
.L0d9a0b28:
    b	.L0d99f614
    # Line 8619
    sd	$zero,288($sp)
.L0d9a0b30:
    b	.L0d99f738
    # Line 8643
    sd	$zero,280($sp)
.end AddConvolutionBorders

# Function: ImageChainAddOpHistogramMinmax
# Declared: Line 9409 (Source lines: 9410-9438)
# Address: 0x0d9a0b40 - 0x0d9a0bc4 (Size: 132 bytes, Frame: 16)
.ent ImageChainAddOpHistogramMinmax
ImageChainAddOpHistogramMinmax:
    # Line 9414
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 9410
    addiu	$sp,$sp,-16
    # Line 9414
    addiu	$t9,$t9,-3824
    sd	$ra,8($sp)
    jal	sub_0d990000
    # Line 9410
    sd	$a0,0($sp)
    # Line 9414
    bnez	$v0,.L0d9a0b70
    # Line 9431
    li	$a4,1
    # Line 9438
    ld	$ra,8($sp)
    # Line 9417
    move	$v0,$zero
    # Line 9438
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a0b70:
    # Line 9431
    sw	$a4,12($v0)
    # Line 9420
    li	$v1,10
    sw	$v1,0($v0)
    # Line 9435
    ld	$a2,0($sp)
    # Line 9425
    la	$at,sub_0d9a0000
    # Line 9435
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 9428
    lw	$ra,8($v0)
    # Line 9425
    addiu	$at,$at,3024
    sw	$at,4($v0)
    # Line 9435
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 9428
    ori	$ra,$ra,0xc
    sw	$ra,8($v0)
    # Line 9435
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 9438
    ld	$ra,8($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end ImageChainAddOpHistogramMinmax

# Function: RenderFunc_HistogramMinmax
# Declared: Line 9460 (Source lines: 9461-9570)
# Address: 0x0d9a0bd0 - 0x0d9a0f74 (Size: 932 bytes, Frame: 128)
.ent RenderFunc_HistogramMinmax
RenderFunc_HistogramMinmax:
    # Line 9461
    addiu	$sp,$sp,-256
    sd	$s3,248($sp)
    sd	$s6,240($sp)
    sd	$s0,232($sp)
    sd	$s5,224($sp)
    sd	$s7,216($sp)
    sd	$s1,168($sp)
    # Line 9478
    lw	$s1,4112($zero)
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    sd	$zero,64($sp)
    addiu	$v1,$sp,64
    sw	$zero,32($v1)
    sd	$zero,24($v1)
    sd	$zero,16($v1)
    sd	$zero,8($v1)
    # Line 9491
    lwc1	$f3,12($a1)
    lwc1	$f2,4($a1)
    sd	$gp,200($sp)
    # Line 9478
    lwc1	$f0,0($a1)
    lwc1	$f1,8($a1)
    # Line 9492
    mov.s	$f4,$f2
    c.lt.s $f2,$f3
    # Line 9461
    sd	$s4,192($sp)
    # Line 9491
    c.lt.s $f3,$f2
    # Line 9461
    sd	$s2,184($sp)
    movf.s	$f4,$f3,$fcc3
    # Line 9494
    lbu	$at,1280($s1)
    # Line 9478
    c.lt.s	$f1,$f0
    movf.s	$f2,$f3,$fcc2
    # Line 9461
    lui	$v0,0x15
    # Line 9491
    c.lt.s $f0,$f1
    sdc1	$f2,144($sp)
    mov.s	$f2,$f0
    # Line 9461
    move	$s2,$a0
    addiu	$v0,$v0,31168
    sdc1	$f4,152($sp)
    movf.s	$f0,$f1,$fcc0
    move	$s4,$a1
    addu	$gp,$t9,$v0
    sdc1	$f0,128($sp)
    movf.s	$f2,$f1,$fcc1
    # Line 9494
    li	$a1,1
    beqz	$at,.L0d9a0ee4
    sdc1	$f2,136($sp)
    lw	$a0,1792($s1)
    dsll32	$a0,$a0,0x3
    bgez	$a0,.L0d9a0ee4
    nop
.L0d9a0cac:
    sd	$a1,176($sp)
.L0d9a0cb0:
    # Line 9504
    sb	$zero,113($sp)
    # Line 9505
    lw	$a0,72($s2)
    lbu	$a2,10($a0)
    li	$v0,1
    beqz	$a2,.L0d9a0f08
    lbu	$t9,8($a0)
.L0d9a0cc8:
    move	$v0,$zero
    sd	$ra,208($sp)
.L0d9a0cd0:
    sb	$v0,112($sp)
    # Line 9509
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    lw	$a2,68($s2)
    lw	$a1,12($sp)
    addiu	$a3,$sp,104
    jal	__glOdysseyImageCalcXferReadParams
    lw	$a0,8($sp)
    # Line 9514
    lw	$s3,120($sp)
    # Line 9517
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    # Line 9513
    lw	$s6,116($sp)
    # Line 9517
    move	$a1,$s3
    jal	__glSpecElementsPerGroup
    move	$a0,$s6
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    move	$s0,$v0
    jal	__glSpecBytesPerElement
    move	$a0,$s3
    # Line 9522
    ldc1	$f5,136($sp)
    ldc1	$f4,128($sp)
    ldc1	$f3,144($sp)
    sub.s	$f4,$f4,$f5
    ldc1	$f5,152($sp)
    sub.s	$f3,$f3,$f5
    # Line 9517
    mult	$s0,$v0
    # Line 9522
    trunc.l.s	$f4,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$s5,$f4
    dmfc1	$s7,$f3
    sll	$s5,$s5,0x0
    sll	$s7,$s7,0x0
    # Line 9517
    mflo	$a3
    nop
    nop
    # Line 9522
    multu	$s5,$s7
    mflo	$a4
    nop
    nop
    multu	$a3,$a4
    lw	$t9,0($s1)
    move	$a0,$s1
    mflo	$a1
    jalr	$t9
    # Line 9517
    sd	$a3,160($sp)
    # Line 9522
    beqz	$v0,.L0d9a0f18
    move	$s0,$v0
    # Line 9530
    addiu	$a2,$sp,64
    ld	$v0,160($sp)
    lw	$a6,0($s4)
    sw	$a6,64($sp)
    lw	$a5,4($s4)
    sw	$a5,4($a2)
    lw	$a4,8($s4)
    sw	$a4,8($a2)
    lw	$a3,12($s4)
    sw	$a3,12($a2)
    lw	$v1,16($s4)
    sw	$v1,16($a2)
    lw	$at,20($s4)
    sw	$at,20($a2)
    lw	$ra,24($s4)
    sw	$ra,24($a2)
    lw	$t9,28($s4)
    sw	$t9,28($a2)
    lw	$t8,32($s4)
    sw	$t8,32($a2)
    # Line 9539
    sw	$s0,44($sp)
    # Line 9541
    mtc1	$zero,$f8
    # Line 9538
    sw	$s3,12($sp)
    # Line 9545
    dsll32	$a7,$s7,0x0
    # Line 9537
    sw	$s6,8($sp)
    # Line 9544
    dsll32	$t0,$s5,0x0
    # Line 9536
    sw	$v0,24($sp)
    # Line 9544
    dsrl32	$t0,$t0,0x0
    # Line 9535
    sw	$s7,20($sp)
    # Line 9545
    dsrl32	$a7,$a7,0x0
    # Line 9534
    sw	$s5,16($sp)
    # Line 9545
    dmtc1	$a7,$f6
    # Line 9533
    sw	$zero,56($sp)
    # Line 9544
    dmtc1	$t0,$f7
    # Line 9532
    sw	$zero,4($sp)
    # Line 9542
    swc1	$f8,84($sp)
    # Line 9545
    cvt.s.l	$f6,$f6
    # Line 9541
    swc1	$f8,80($sp)
    # Line 9544
    cvt.s.l	$f7,$f7
    # Line 9548
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    # Line 9545
    swc1	$f6,92($sp)
    # Line 9544
    swc1	$f7,88($sp)
    # Line 9548
    addiu	$a0,$sp,0
    jal	__glOdysseyImageMovePixelsDMAtoHost
    lw	$a1,68($s2)
    # Line 9551
    move	$a0,$s1
    # lw $t9, -31156($gp) # &__glOdysseyHistogramMinMax
    move	$a1,$s5
    move	$a2,$s7
    move	$a3,$s6
    move	$a4,$s3
    jal	__glOdysseyHistogramMinMax
    move	$a5,$s0
    ld	$s3,248($sp)
    # Line 9555
    lw	$t9,12($s1)
    ld	$s6,240($sp)
    ld	$s5,224($sp)
    move	$a0,$s1
    ld	$s7,216($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$t1,176($sp)
    andi	$t1,$t1,0xff
    ld	$s0,232($sp)
    beqz	$t1,.L0d9a0ea8
    ld	$s1,168($sp)
    ld	$s2,184($sp)
    ld	$s4,192($sp)
    ld	$ra,208($sp)
    # Line 9559
    li	$v0,1
    # Line 9570
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9a0ea8:
    # Line 9559
    lw	$a1,68($s2)
    lbu	$t2,11($a1)
    beqz	$t2,.L0d9a0f58
    lw	$a0,72($s2)
    # Line 9562
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a2,$s4
    jal	__glOdysseyImageMovePixelsTexture
    li	$a3,1
.L0d9a0ec8:
    ld	$ra,208($sp)
    # Line 9570
    ld	$gp,200($sp)
    li	$v0,1
    ld	$s2,184($sp)
    ld	$s4,192($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9a0ee4:
    # Line 9494
    lbu	$t3,1376($s1)
    beqz	$t3,.L0d9a0f00
    nop
    lw	$t8,1792($s1)
    dsll32	$t8,$t8,0x2
    bltz	$t8,.L0d9a0cac
    nop
.L0d9a0f00:
    b	.L0d9a0cb0
    sd	$zero,176($sp)
.L0d9a0f08:
    # Line 9505
    bnez	$t9,.L0d9a0cc8
    nop
    b	.L0d9a0cd0
    sd	$ra,208($sp)
.L0d9a0f18:
    ld	$s3,248($sp)
    ld	$s6,240($sp)
    # Line 9525
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,232($sp)
    ld	$s5,224($sp)
    ld	$s7,216($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 9570
    ld	$gp,200($sp)
    ld	$ra,208($sp)
    ld	$s1,168($sp)
    # Line 9526
    move	$v0,$zero
    # Line 9570
    ld	$s2,184($sp)
    ld	$s4,192($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9a0f58:
    # Line 9565
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a2,$s4
    li	$a4,1
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    b	.L0d9a0ec8
    nop
.end RenderFunc_HistogramMinmax

# Function: ImageChainAddOpPixelTexture
# Declared: Line 9577 (Source lines: 9578-9610)
# Address: 0x0d9a0f80 - 0x0d9a1004 (Size: 132 bytes, Frame: 16)
.ent ImageChainAddOpPixelTexture
ImageChainAddOpPixelTexture:
    # Line 9586
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 9578
    addiu	$sp,$sp,-16
    # Line 9586
    addiu	$t9,$t9,-3824
    sd	$ra,8($sp)
    jal	sub_0d990000
    # Line 9578
    sd	$a0,0($sp)
    # Line 9586
    bnez	$v0,.L0d9a0fb0
    # Line 9593
    li	$v1,11
    # Line 9610
    ld	$ra,8($sp)
    # Line 9589
    move	$v0,$zero
    # Line 9610
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a0fb0:
    # Line 9593
    sw	$v1,0($v0)
    # Line 9599
    li	$ra,1
    sw	$ra,12($v0)
    # Line 9603
    ld	$a2,0($sp)
    # Line 9602
    la	$a4,sub_0d9a0000
    # Line 9603
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 9596
    lw	$at,8($v0)
    # Line 9602
    addiu	$a4,$a4,4112
    sw	$a4,4($v0)
    # Line 9603
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 9596
    ori	$at,$at,0xe
    sw	$at,8($v0)
    # Line 9603
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 9610
    ld	$ra,8($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end ImageChainAddOpPixelTexture

# Function: RenderFunc_PixelTexture
# Declared: Line 9614 (Source lines: 9615-9690)
# Address: 0x0d9a1010 - 0x0d9a1488 (Size: 1144 bytes, Frame: 208)
.ent RenderFunc_PixelTexture
RenderFunc_PixelTexture:
    # Line 9615
    addiu	$sp,$sp,-208
    sd	$gp,168($sp)
    sd	$s4,136($sp)
    # Line 9618
    lw	$s4,4112($zero)
    # Line 9615
    sd	$s8,152($sp)
    # Line 9622
    lw	$s8,31744($s4)
    # Line 9615
    sd	$s0,160($sp)
    # Line 9623
    ld	$a4,31928($s4)
    # Line 9624
    lw	$t0,31944($s4)
    lw	$t2,31948($s4)
    lw	$t3,31952($s4)
    lw	$t8,31956($s4)
    lw	$v1,31940($s4)
    addiu	$t1,$sp,48
    sw	$v1,48($sp)
    sw	$t8,16($t1)
    sw	$t3,12($t1)
    sw	$t2,8($t1)
    sw	$t0,4($t1)
    # Line 9623
    ld	$a7,31920($s4)
    addiu	$a5,$sp,24
    sd	$a7,24($sp)
    sd	$a4,8($a5)
    # Line 9615
    sd	$s1,144($sp)
    # Line 9624
    lw	$v0,31964($s4)
    # Line 9621
    lui	$s1,0x1
    # Line 9623
    lw	$a6,31936($s4)
    sw	$a6,16($a5)
    # Line 9621
    addu	$s0,$s1,$s4
    lw	$a6,-26964($s0)
    # Line 9624
    sw	$v0,24($t1)
    # Line 9621
    lw	$v0,-26960($s0)
    lw	$v1,-26956($s0)
    lw	$a3,-26948($s0)
    sw	$a3,16($sp)
    sw	$v1,8($sp)
    sw	$v0,4($sp)
    sw	$a6,0($sp)
    # Line 9624
    lw	$at,31960($s4)
    # Line 9625
    lw	$a2,-29464($s0)
    # Line 9624
    sw	$at,20($t1)
    # Line 9626
    addiu	$a5,$sp,80
    # Line 9615
    lui	$at,0x15
    # Line 9625
    sd	$a2,128($sp)
    # Line 9615
    move	$a4,$a0
    addiu	$at,$at,30080
    # Line 9621
    lw	$a2,-26952($s0)
    sw	$a2,12($sp)
    # Line 9615
    move	$a2,$a1
    addu	$gp,$t9,$at
    sd	$s5,192($sp)
    sd	$s3,184($sp)
    sd	$s2,200($sp)
    # Line 9626
    lw	$a3,-29460($s0)
    lw	$v1,-29432($s0)
    lw	$v0,-29436($s0)
    lw	$at,-29440($s0)
    lw	$t9,-29444($s0)
    lw	$t8,-29448($s0)
    lw	$t3,-29452($s0)
    lw	$t2,-29456($s0)
    sw	$t2,4($a5)
    sw	$t3,8($a5)
    sw	$t8,12($a5)
    sw	$t9,16($a5)
    sw	$at,20($a5)
    sw	$v0,24($a5)
    sw	$v1,28($a5)
    sw	$a3,80($sp)
    # Line 9633
    ori	$t0,$a6,0x8
    sw	$t0,-26964($s0)
    # Line 9627
    lw	$a0,-29332($s0)
    lw	$a7,-29324($s0)
    addiu	$a1,$sp,112
    sw	$a7,8($a1)
    # Line 9633
    lw	$a3,-26576($s0)
    ori	$s2,$s1,0x46
    ori	$s3,$s1,0x443
    # Line 9627
    lw	$a5,-29328($s0)
    # Line 9633
    li	$s5,250
    # Line 9627
    sw	$a5,4($a1)
    # Line 9636
    lui	$a5,0x1
    # Line 9627
    sw	$a0,112($sp)
    # Line 9633
    beqz	$a3,.L0d9a1178
    # Line 9636
    ori	$a1,$a5,0x1453
    sw	$zero,-26576($s0)
    sw	$s3,0($s1)
    sw	$s5,0($s1)
    sw	$s2,0($s1)
    sw	$s2,0($s1)
.L0d9a1178:
    sw	$s2,0($s1)
    sw	$s2,0($s1)
    sw	$s2,0($s1)
    sw	$a1,0($s1)
    lw	$t8,-26964($s0)
    sw	$t8,0($s1)
    lw	$t3,-26960($s0)
    sw	$t3,0($s1)
    lw	$t2,-26956($s0)
    sw	$t2,0($s1)
    lw	$t1,-26952($s0)
    sw	$t1,0($s1)
    lw	$t0,-26948($s0)
    sw	$t0,0($s1)
    sw	$zero,-26576($s0)
    sw	$s3,0($s1)
    sw	$s5,0($s1)
    sw	$s2,0($s1)
    sw	$s2,0($s1)
    # Line 9647
    lw	$a7,7224($s0)
    lw	$t0,31744($s4)
    li	$t1,-3129
    and	$t0,$t0,$t1
    andi	$a7,$a7,0xc38
    or	$a7,$a7,$t0
    sw	$a7,31744($s4)
    # Line 9649
    ld	$a6,7152($s0)
    sd	$a6,31920($s4)
    ld	$a3,7160($s0)
    sd	$a3,31928($s4)
    lw	$a0,7168($s0)
    sw	$a0,31936($s4)
    # Line 9650
    lw	$v1,7172($s0)
    sw	$v1,31940($s4)
    lw	$v0,7176($s0)
    sw	$v0,31944($s4)
    lw	$at,7180($s0)
    sw	$at,31948($s4)
    lw	$t9,7184($s0)
    sw	$t9,31952($s4)
    lw	$t8,7188($s0)
    sw	$t8,31956($s4)
    lw	$t3,7192($s0)
    sw	$t3,31960($s4)
    lw	$t2,7196($s0)
    sw	$t2,31964($s4)
    # Line 9651
    lw	$t1,7344($s0)
    sw	$t1,-29464($s0)
    # Line 9653
    lw	$a1,7348($s0)
    # Line 9652
    lw	$t9,7312($s0)
    lw	$at,7316($s0)
    lw	$v0,7320($s0)
    lw	$v1,7324($s0)
    lw	$a3,7328($s0)
    lw	$t1,7332($s0)
    lw	$t2,7336($s0)
    lw	$t3,7340($s0)
    sw	$t3,-29432($s0)
    sw	$t2,-29436($s0)
    sw	$t1,-29440($s0)
    sw	$a3,-29444($s0)
    sw	$v1,-29448($s0)
    sw	$v0,-29452($s0)
    sw	$at,-29456($s0)
    sw	$t9,-29460($s0)
    # Line 9653
    sw	$a1,-29332($s0)
    lw	$a0,7352($s0)
    lw	$v1,7356($s0)
    sw	$v1,-29324($s0)
    # Line 9654
    lw	$v0,26976($s0)
    ori	$at,$a5,0x8304
    # Line 9653
    sw	$a0,-29328($s0)
    # Line 9654
    or	$at,$at,$v0
    sw	$at,26976($s0)
    li	$t9,2
    sw	$t9,4120($zero)
    lw	$a1,68($a4)
    lw	$t8,56($a1)
    sd	$ra,176($sp)
    beqz	$t8,.L0d9a1470
    lw	$a0,72($a4)
    # Line 9664
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    li	$a4,1
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    ld	$ra,176($sp)
.L0d9a12d0:
    ld	$a0,128($sp)
    # Line 9690
    ld	$gp,168($sp)
    # Line 9679
    lw	$t3,48($sp)
    # Line 9670
    lw	$a3,0($sp)
    lw	$a6,4($sp)
    lw	$a7,8($sp)
    lw	$t1,12($sp)
    lw	$t2,16($sp)
    sw	$t2,-26948($s0)
    sw	$t1,-26952($s0)
    sw	$a7,-26956($s0)
    sw	$a6,-26960($s0)
    # Line 9678
    addiu	$t8,$sp,24
    # Line 9670
    lw	$a5,-26576($s0)
    li	$t0,2
    lui	$a2,0x1
    # Line 9678
    ld	$t9,8($t8)
    lui	$a4,0x1
    ori	$a2,$a2,0x8304
    lw	$t8,16($t8)
    ori	$a4,$a4,0x1453
    # Line 9670
    beqz	$a5,.L0d9a1340
    sw	$a3,-26964($s0)
    # Line 9673
    sw	$zero,-26576($s0)
    sw	$s3,0($s1)
    sw	$s5,0($s1)
    sw	$s2,0($s1)
    sw	$s2,0($s1)
.L0d9a1340:
    # Line 9678
    ld	$at,24($sp)
    # Line 9673
    sw	$s2,0($s1)
    sw	$s2,0($s1)
    sw	$s2,0($s1)
    sw	$a4,0($s1)
    lw	$a5,-26964($s0)
    sw	$a5,0($s1)
    lw	$a3,-26960($s0)
    sw	$a3,0($s1)
    # Line 9679
    addiu	$a3,$sp,48
    lw	$t2,4($a3)
    lw	$t1,8($a3)
    lw	$a7,12($a3)
    lw	$a6,16($a3)
    lw	$a5,20($a3)
    lw	$a3,24($a3)
    # Line 9673
    lw	$a1,-26956($s0)
    sw	$a1,0($s1)
    lw	$v1,-26952($s0)
    sw	$v1,0($s1)
    lw	$v0,-26948($s0)
    sw	$v0,0($s1)
    sw	$zero,-26576($s0)
    sw	$s3,0($s1)
    sw	$s5,0($s1)
    sw	$s2,0($s1)
    sw	$s2,0($s1)
    # Line 9677
    sw	$s8,31744($s4)
    # Line 9678
    sd	$at,31920($s4)
    sd	$t9,31928($s4)
    sw	$t8,31936($s4)
    # Line 9680
    sw	$t3,31940($s4)
    sw	$t2,31944($s4)
    sw	$t1,31948($s4)
    sw	$a7,31952($s4)
    sw	$a6,31956($s4)
    sw	$a5,31960($s4)
    sw	$a3,31964($s4)
    # Line 9681
    sw	$a0,-29464($s0)
    ld	$s2,200($sp)
    ld	$s3,184($sp)
    ld	$s4,136($sp)
    ld	$s1,144($sp)
    ld	$s5,192($sp)
    # Line 9682
    addiu	$a1,$sp,80
    ld	$s8,152($sp)
    lw	$t2,4($a1)
    lw	$t3,8($a1)
    lw	$t8,12($a1)
    lw	$t9,16($a1)
    lw	$at,20($a1)
    lw	$v0,24($a1)
    lw	$v1,28($a1)
    # Line 9683
    lw	$a1,120($sp)
    # Line 9682
    lw	$t1,80($sp)
    sw	$v1,-29432($s0)
    sw	$at,-29440($s0)
    sw	$t9,-29444($s0)
    sw	$t8,-29448($s0)
    sw	$t3,-29452($s0)
    sw	$t2,-29456($s0)
    sw	$t1,-29460($s0)
    sw	$v0,-29436($s0)
    # Line 9683
    sw	$a1,-29324($s0)
    lw	$a4,112($sp)
    lw	$a3,116($sp)
    sw	$a3,-29328($s0)
    # Line 9684
    lw	$a0,26976($s0)
    # Line 9683
    sw	$a4,-29332($s0)
    # Line 9684
    or	$a0,$a2,$a0
    sw	$a0,26976($s0)
    # Line 9690
    li	$v0,1
    # Line 9684
    sw	$t0,4120($zero)
    # Line 9690
    ld	$s0,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9a1470:
    # Line 9662
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    li	$a4,1
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    li	$a3,1
    b	.L0d9a12d0
    ld	$ra,176($sp)
.end RenderFunc_PixelTexture

# Function: ImageChainAddOpDownloadDepth
# Declared: Line 9696 (Source lines: 9697-9728)
# Address: 0x0d9a1490 - 0x0d9a1528 (Size: 152 bytes, Frame: 32)
.ent ImageChainAddOpDownloadDepth
ImageChainAddOpDownloadDepth:
    # Line 9697
    addiu	$sp,$sp,-32
    # Line 9703
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 9697
    sd	$a0,16($sp)
    sdc1	$f13,0($sp)
    # Line 9703
    addiu	$t9,$t9,-3824
    sd	$ra,24($sp)
    jal	sub_0d990000
    # Line 9697
    sdc1	$f14,8($sp)
    # Line 9703
    bnez	$v0,.L0d9a14c4
    # Line 9728
    ld	$ra,24($sp)
    # Line 9705
    move	$v0,$zero
    # Line 9728
    jr	$ra
    addiu	$sp,$sp,32
.L0d9a14c4:
    # Line 9722
    li	$a3,1
    sw	$a3,12($v0)
    # Line 9709
    li	$v1,16
    sw	$v1,0($v0)
    # Line 9725
    ld	$a2,16($sp)
    # Line 9719
    lw	$ra,8($v0)
    # Line 9712
    la	$at,sub_0d9a0000
    # Line 9716
    ldc1	$f0,8($sp)
    # Line 9715
    ldc1	$f1,0($sp)
    # Line 9716
    swc1	$f0,40($v0)
    # Line 9725
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 9715
    swc1	$f1,24($v0)
    # Line 9712
    addiu	$at,$at,5424
    sw	$at,4($v0)
    # Line 9725
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 9719
    ori	$ra,$ra,0x1a
    sw	$ra,8($v0)
    # Line 9725
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,4($a2)
    # Line 9728
    ld	$ra,24($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpDownloadDepth

# Function: RenderFunc_DownloadDepth
# Declared: Line 9732 (Source lines: 9733-9880)
# Address: 0x0d9a1530 - 0x0d9a1b9c (Size: 1644 bytes, Frame: 208)
.ent RenderFunc_DownloadDepth
RenderFunc_DownloadDepth:
    # Line 9733
    addiu	$sp,$sp,-336
    sd	$s0,296($sp)
    # Line 9739
    lw	$s0,4112($zero)
    mtc1	$zero,$f5
    lwc1	$f4,744($s0)
    c.lt.s	$f4,$f5
    # Line 9733
    sd	$s2,272($sp)
    move	$s2,$a1
    lui	$at,0x15
    sd	$s1,280($sp)
    move	$s1,$a0
    addiu	$at,$at,28768
    sd	$gp,288($sp)
    addu	$gp,$t9,$at
    # Line 9739
    bc1f	.L0d9a1574
    # Line 9742
    mov.s	$f16,$f4
    neg.s	$f16,$f4
.L0d9a1574:
    lwc1	$f4,748($s0)
    c.lt.s $f4,$f5
    sd	$ra,320($sp)
    sdc1	$f22,304($sp)
    bc1f .L0d9a1590
    # Line 9743
    mov.s	$f22,$f4
    neg.s	$f22,$f4
.L0d9a1590:
    # Line 9744
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f16
    c.eq.d $f0,$f4
    sdc1	$f16,216($sp)
    bc1f .L0d9a15b8
    sd	$s5,328($sp)
    cvt.d.s	$f2,$f22
    c.eq.d $f2,$f4
    bc1t .L0d9a1a84
    move	$s5,$zero
.L0d9a15b8:
    li	$s5,1
    # Line 9757
    lwc1	$f7,0($s2)
.L0d9a15c0:
    trunc.w.s	$f7,$f7
    swc1	$f7,0($sp)
    # Line 9758
    lwc1	$f5,4($s2)
    trunc.w.s	$f5,$f5
    swc1	$f5,4($sp)
    # Line 9759
    lwc1	$f6,8($s2)
    trunc.w.s	$f6,$f6
    swc1	$f6,8($sp)
    # Line 9760
    lwc1	$f3,12($s2)
    # Line 9759
    mfc1	$a3,$f6
    # Line 9757
    mfc1	$a1,$f7
    # Line 9760
    trunc.w.s	$f3,$f3
    swc1	$f3,12($sp)
    # Line 9765
    move	$t1,$a3
    # Line 9764
    sw	$zero,20($sp)
    # Line 9765
    move	$t2,$a3
    slt	$t8,$a1,$a3
    # Line 9763
    sw	$zero,16($sp)
    # Line 9765
    slt	$t9,$a3,$a1
    movn	$t2,$a1,$t8
    # Line 9766
    sd	$zero,32($sp)
    # Line 9765
    movn	$t1,$a1,$t9
    subu	$t1,$t1,$t2
    sw	$t1,24($sp)
    # Line 9766
    addiu	$t2,$sp,32
    sw	$zero,56($t2)
    sd	$zero,48($t2)
    sd	$zero,40($t2)
    # Line 9758
    mfc1	$a4,$f5
    # Line 9766
    sd	$zero,32($t2)
    sd	$zero,24($t2)
    # Line 9760
    mfc1	$a0,$f3
    # Line 9775
    li	$a2,6402
    # Line 9772
    li	$v1,1
    # Line 9766
    sd	$zero,16($t2)
    sd	$zero,8($t2)
    move	$a7,$a0
    slt	$t0,$a4,$a0
    # Line 9780
    sw	$v1,64($sp)
    # Line 9766
    movn	$a7,$a4,$t0
    # Line 9773
    move	$t0,$t1
    # Line 9777
    sw	$v1,56($sp)
    # Line 9766
    move	$a6,$a0
    slt	$t3,$a0,$a4
    # Line 9775
    sw	$a2,40($sp)
    # Line 9766
    movn	$a6,$a4,$t3
    # Line 9773
    slti	$t3,$t1,0
    # Line 9772
    sb	$v1,32($sp)
    # Line 9773
    movn	$t0,$zero,$t3
    slt	$t3,$zero,$t1
    # Line 9771
    sw	$zero,36($sp)
    # Line 9773
    movn	$t1,$zero,$t3
    # Line 9766
    subu	$a6,$a6,$a7
    # Line 9770
    sw	$zero,88($sp)
    # Line 9774
    move	$a5,$a6
    slti	$a7,$a6,0
    # Line 9766
    sw	$a6,28($sp)
    # Line 9774
    movn	$a5,$zero,$a7
    slt	$a7,$zero,$a6
    # Line 9773
    subu	$t0,$t0,$t1
    sw	$t0,48($sp)
    # Line 9774
    movn	$a6,$zero,$a7
    subu	$a5,$a5,$a6
    # Line 9776
    li	$a6,5125
    sw	$a6,44($sp)
    # Line 9774
    sw	$a5,52($sp)
    # Line 9784
    lw	$a5,68($s1)
    lw	$v0,32($a5)
    dmtc1	$zero,$f10
    li	$t2,0x8
    bne	$v0,$v1,.L0d9a171c
    # Line 9798
    addiu	$t3,$sp,32
    # Line 9784
    lw	$ra,12($a5)
    bne	$a6,$ra,.L0d9a171c
    addiu	$t0,$t3,4
    lwc1	$f8,24($s1)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f4
    bc1t .L0d9a1714
    # Line 9798
    li	$a6,0xe
    # Line 9784
    lwc1	$f9,40($s1)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f10
    bc1f .L0d9a1720
    # Line 9791
    li	$v0,0xa738
.L0d9a1714:
    # Line 9784
    lbu	$at,1188($s0)
    beqz	$at,.L0d9a1ac0
.L0d9a171c:
    # Line 9791
    li	$v0,0xa738
.L0d9a1720:
    # Line 9794
    move	$a6,$zero
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    # Line 9791
    addu	$v0,$v0,$s0
    # Line 9794
    addiu	$a5,$s1,40
    addiu	$a4,$s1,24
    # Line 9791
    lw	$v0,0($v0)
    # Line 9794
    addiu	$a3,$sp,0
    addiu	$a1,$sp,16
    # Line 9791
    sw	$v0,76($sp)
    # Line 9794
    addiu	$a0,$sp,32
    jal	__glOdysseyImageConvertHostImage
    lw	$a2,68($s1)
    lw	$a1,16($sp)
    lw	$a4,20($sp)
    lw	$a3,24($sp)
    lw	$a0,28($sp)
    # Line 9805
    mtc1	$a0,$f13
.L0d9a1764:
    # Line 9804
    mtc1	$a3,$f14
    # Line 9803
    mtc1	$a4,$f15
    # Line 9802
    mtc1	$a1,$f16
    # Line 9805
    cvt.s.w	$f13,$f13
    # Line 9804
    cvt.s.w	$f14,$f14
    # Line 9803
    cvt.s.w	$f15,$f15
    # Line 9802
    cvt.s.w	$f16,$f16
    # Line 9805
    swc1	$f13,108($sp)
    # Line 9804
    swc1	$f14,104($sp)
    # Line 9803
    swc1	$f15,100($sp)
    # Line 9802
    swc1	$f16,96($sp)
    # Line 9806
    lwc1	$f4,16($s2)
    swc1	$f4,112($sp)
    lwc1	$f12,20($s2)
    swc1	$f12,116($sp)
    lwc1	$f11,24($s2)
    sdc1	$f12,240($sp)
    swc1	$f11,120($sp)
    lwc1	$f10,28($s2)
    andi	$v1,$s5,0xff
    sdc1	$f11,224($sp)
    sdc1	$f10,232($sp)
    beqz	$v1,.L0d9a1b18
    swc1	$f10,124($sp)
    sdc1	$f20,312($sp)
    # Line 9811
    ldc1	$f20,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f4
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 9812
    ldc1	$f12,240($sp)
    cvt.d.s	$f12,$f12
    # Line 9811
    trunc.w.s	$f13,$f0
    # Line 9812
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 9811
    mfc1	$s5,$f13
    # Line 9812
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 9813
    ldc1	$f12,224($sp)
    cvt.d.s	$f12,$f12
    # Line 9812
    trunc.w.s	$f13,$f0
    # Line 9813
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 9812
    mfc1	$s2,$f13
    # Line 9813
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 9814
    ldc1	$f12,232($sp)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 9813
    trunc.w.s	$f13,$f0
    # Line 9814
    add.d	$f12,$f12,$f20
    # Line 9813
    mfc1	$a0,$f13
    sd	$a0,264($sp)
    # Line 9814
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 9818
    ld	$t9,264($sp)
    # Line 9819
    trunc.w.s	$f13,$f0
    # Line 9818
    move	$a7,$t9
    slt	$ra,$t9,$s5
    # Line 9819
    mfc1	$t1,$f13
    # Line 9817
    sw	$zero,140($sp)
    # Line 9818
    slt	$t8,$s5,$t9
    movn	$a7,$s5,$ra
    # Line 9816
    sw	$zero,136($sp)
    # Line 9818
    movz	$s5,$t9,$t8
    # Line 9819
    move	$t2,$t1
    # Line 9821
    ld	$a2,32($sp)
    # Line 9819
    move	$t0,$t1
    slt	$t3,$t1,$s2
    # Line 9821
    sd	$a2,152($sp)
    # Line 9819
    slt	$t1,$s2,$t1
    movn	$t0,$s2,$t3
    # Line 9818
    subu	$a7,$a7,$s5
    sw	$a7,144($sp)
    # Line 9819
    movz	$s2,$t2,$t1
    subu	$t0,$t0,$s2
    sw	$t0,148($sp)
    # Line 9821
    addiu	$t1,$sp,32
    ld	$a1,8($t1)
    ld	$a0,16($t1)
    ld	$v1,24($t1)
    ld	$v0,32($t1)
    ld	$ra,40($t1)
    ld	$t8,48($t1)
    addiu	$t2,$sp,152
    lw	$t1,56($t1)
    # Line 9822
    move	$a5,$a7
    # Line 9821
    sw	$t1,56($t2)
    # Line 9822
    move	$a6,$a7
    slt	$t9,$zero,$a7
    # Line 9821
    sd	$t8,48($t2)
    # Line 9822
    slti	$at,$a7,0
    movn	$a6,$zero,$t9
    # Line 9821
    sd	$ra,40($t2)
    # Line 9822
    movn	$a5,$zero,$at
    # Line 9821
    sd	$v0,32($t2)
    sd	$v1,24($t2)
    # Line 9823
    move	$a2,$t0
    slti	$t3,$t0,0
    # Line 9821
    sd	$a0,16($t2)
    # Line 9823
    move	$a3,$t0
    slt	$a4,$zero,$t0
    # Line 9821
    sd	$a1,8($t2)
    # Line 9823
    movn	$a3,$zero,$a4
    # Line 9824
    mult	$a7,$t0
    # Line 9822
    subu	$a5,$a5,$a6
    sw	$a5,168($sp)
    # Line 9823
    movn	$a2,$zero,$t3
    subu	$a2,$a2,$a3
    sw	$a2,172($sp)
    # Line 9824
    lw	$t9,0($s0)
    move	$a0,$s0
    ldc1	$f20,312($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0d9a1a8c
    sw	$v0,196($sp)
    # Line 9833
    # lw $t9, -31284($gp) # &__glOdysseyImageZoomHostImage
    addiu	$a3,$sp,16
    addiu	$a2,$sp,32
    addiu	$a1,$sp,136
    mov.s	$f17,$f22
    ldc1	$f16,216($sp)
    jal	__glOdysseyImageZoomHostImage
    addiu	$a0,$sp,152
    # Line 9839
    lw	$a2,148($sp)
    # Line 9838
    lw	$a3,144($sp)
    # Line 9837
    lw	$a4,140($sp)
    # Line 9839
    mtc1	$a2,$f14
    # Line 9836
    lw	$a5,136($sp)
    # Line 9838
    mtc1	$a3,$f15
    # Line 9837
    mtc1	$a4,$f16
    # Line 9836
    mtc1	$a5,$f17
    # Line 9839
    cvt.s.w	$f14,$f14
    # Line 9838
    cvt.s.w	$f15,$f15
    # Line 9837
    cvt.s.w	$f16,$f16
    # Line 9836
    cvt.s.w	$f17,$f17
    # Line 9839
    swc1	$f14,108($sp)
    # Line 9838
    swc1	$f15,104($sp)
    # Line 9837
    swc1	$f16,100($sp)
    # Line 9852
    lui	$a1,0xf
    # Line 9836
    swc1	$f17,96($sp)
    # Line 9852
    ori	$a1,$a1,0xf000
    # Line 9848
    lw	$s2,31836($s0)
    # Line 9853
    lui	$a0,0x1
    # Line 9852
    nor	$a1,$a1,$zero
    # Line 9847
    lw	$s5,31744($s0)
    # Line 9851
    li	$a2,-3073
    # Line 9852
    and	$a1,$s2,$a1
    sw	$a1,31836($s0)
    # Line 9853
    addu	$a0,$s0,$a0
    # Line 9851
    and	$a2,$s5,$a2
    sw	$a2,31744($s0)
    # Line 9853
    lw	$v1,26976($a0)
    # Line 9864
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 9853
    ori	$v1,$v1,0x84
    sw	$v1,26976($a0)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 9856
    lw	$at,1796($s0)
    # Line 9864
    li	$a4,1
    # Line 9856
    lw	$v0,72($s1)
    # Line 9853
    sd	$a0,256($sp)
    # Line 9864
    li	$a3,1
    # Line 9856
    andi	$at,$at,0x20
    # Line 9864
    addiu	$a2,$sp,96
    # Line 9856
    sltu	$at,$zero,$at
    sb	$at,12($v0)
    # Line 9864
    addiu	$a1,$sp,152
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    lw	$a1,196($sp)
    beqz	$a1,.L0d9a1a30
    sd	$s5,248($sp)
    # Line 9868
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9a1a30:
    ld	$s5,328($sp)
.L0d9a1a34:
    ldc1	$f22,304($sp)
    # Line 9880
    ld	$gp,288($sp)
    # Line 9872
    sw	$s2,31836($s0)
    # Line 9880
    ld	$s2,272($sp)
    # Line 9871
    ld	$t1,248($sp)
    sw	$t1,31744($s0)
    # Line 9873
    ld	$t1,256($sp)
    # Line 9880
    ld	$s0,296($sp)
    # Line 9873
    lw	$t0,26976($t1)
    ld	$ra,320($sp)
    ori	$t0,$t0,0x84
    sw	$t0,26976($t1)
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 9876
    lw	$a6,72($s1)
    # Line 9880
    li	$v0,1
    ld	$s1,280($sp)
    addiu	$sp,$sp,336
    jr	$ra
    # Line 9876
    sb	$zero,12($a6)
.L0d9a1a84:
    b	.L0d9a15c0
    # Line 9757
    lwc1	$f7,0($s2)
.L0d9a1a8c:
    # Line 9829
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s5,328($sp)
    ldc1	$f22,304($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 9880
    ld	$gp,288($sp)
    ld	$ra,320($sp)
    ld	$s0,296($sp)
    # Line 9830
    move	$v0,$zero
    # Line 9880
    ld	$s1,280($sp)
    ld	$s2,272($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d9a1ac0:
    # Line 9797
    sw	$a1,16($sp)
    sw	$a4,20($sp)
    sw	$a3,24($sp)
    sw	$a0,28($sp)
    # Line 9798
    lw	$a7,68($s1)
    lw	$t8,0($a7)
    li	$a5,4
    addiu	$t1,$a7,4
    sw	$t8,32($sp)
.L0d9a1ae4:
    addu	$t9,$a5,$a7
    addu	$ra,$a5,$t3
    lw	$t9,0($t9)
    addiu	$a6,$a6,-2
    addu	$t8,$a5,$t1
    sw	$t9,0($ra)
    addu	$t9,$a5,$t0
    lw	$t8,0($t8)
    addu	$a5,$a5,$t2
    bgtz	$a6,.L0d9a1ae4
    sw	$t8,0($t9)
    b	.L0d9a1764
    # Line 9805
    mtc1	$a0,$f13
.L0d9a1b18:
    # Line 9853
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    sd	$a0,256($sp)
    # Line 9847
    lw	$ra,31744($s0)
    # Line 9852
    lui	$a1,0xf
    # Line 9851
    li	$a2,-3073
    # Line 9848
    lw	$s2,31836($s0)
    # Line 9852
    ori	$a1,$a1,0xf000
    # Line 9851
    and	$a2,$ra,$a2
    sw	$a2,31744($s0)
    # Line 9852
    nor	$a1,$a1,$zero
    and	$a1,$s2,$a1
    sw	$a1,31836($s0)
    # Line 9853
    lw	$v1,26976($a0)
    # Line 9860
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 9853
    ori	$v1,$v1,0x84
    sw	$v1,26976($a0)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 9856
    lw	$at,1796($s0)
    # Line 9860
    li	$a4,1
    # Line 9856
    lw	$v0,72($s1)
    # Line 9860
    li	$a3,1
    # Line 9847
    sd	$ra,248($sp)
    # Line 9856
    andi	$at,$at,0x20
    # Line 9860
    addiu	$a2,$sp,96
    # Line 9856
    sltu	$at,$zero,$at
    sb	$at,12($v0)
    # Line 9860
    addiu	$a1,$sp,32
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    b	.L0d9a1a34
    ld	$s5,328($sp)
.end RenderFunc_DownloadDepth

# Function: ImageChainAddOpDownloadStencil
# Declared: Line 9885 (Source lines: 9886-9918)
# Address: 0x0d9a1ba0 - 0x0d9a1c54 (Size: 180 bytes, Frame: 48)
.ent ImageChainAddOpDownloadStencil
ImageChainAddOpDownloadStencil:
    # Line 9886
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 9892
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 9886
    sd	$a1,8($sp)
    sd	$a2,16($sp)
    # Line 9892
    addiu	$t9,$t9,-3824
    sd	$ra,32($sp)
    jal	sub_0d990000
    # Line 9886
    sd	$a3,24($sp)
    # Line 9892
    bnez	$v0,.L0d9a1bdc
    # Line 9898
    li	$v1,17
    # Line 9918
    ld	$ra,32($sp)
    # Line 9894
    move	$v0,$zero
    # Line 9918
    jr	$ra
    addiu	$sp,$sp,48
.L0d9a1bdc:
    # Line 9898
    sw	$v1,0($v0)
    # Line 9906
    ld	$ra,24($sp)
    sb	$ra,62($v0)
    # Line 9915
    ld	$a2,0($sp)
    # Line 9905
    ld	$a0,16($sp)
    # Line 9904
    ld	$a1,8($sp)
    # Line 9909
    lw	$a3,8($v0)
    # Line 9905
    mtc1	$a0,$f0
    # Line 9901
    la	$at,sub_0d9a0000
    # Line 9904
    mtc1	$a1,$f1
    # Line 9909
    ori	$a3,$a3,0x1a
    sw	$a3,8($v0)
    # Line 9912
    li	$a3,1
    sw	$a3,12($v0)
    # Line 9905
    cvt.s.w	$f0,$f0
    # Line 9915
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 9904
    cvt.s.w	$f1,$f1
    # Line 9901
    addiu	$at,$at,7264
    sw	$at,4($v0)
    # Line 9915
    addiu	$t9,$t9,-2832
    # Line 9905
    swc1	$f0,40($v0)
    # Line 9915
    move	$a1,$v0
    # Line 9904
    swc1	$f1,24($v0)
    # Line 9915
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,4($a2)
    # Line 9918
    ld	$ra,32($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.end ImageChainAddOpDownloadStencil

# Function: RenderFunc_DownloadStencil
# Declared: Line 9922 (Source lines: 9923-10084)
# Address: 0x0d9a1c60 - 0x0d9a22fc (Size: 1692 bytes, Frame: 224)
.ent RenderFunc_DownloadStencil
RenderFunc_DownloadStencil:
    # Line 9923
    addiu	$sp,$sp,-352
    sd	$s0,312($sp)
    # Line 9926
    lw	$s0,4112($zero)
    mtc1	$zero,$f4
    lwc1	$f5,744($s0)
    c.lt.s	$f5,$f4
    # Line 9923
    sd	$s2,296($sp)
    move	$s2,$a1
    lui	$at,0x15
    sd	$s1,288($sp)
    move	$s1,$a0
    addiu	$at,$at,26928
    sd	$gp,304($sp)
    addu	$gp,$t9,$at
    # Line 9926
    bc1f	.L0d9a1ca4
    # Line 9934
    mov.s	$f16,$f5
    neg.s	$f16,$f5
.L0d9a1ca4:
    lwc1	$f5,748($s0)
    c.lt.s $f5,$f4
    bc1f .L0d9a1cbc
    sdc1	$f22,320($sp)
    # Line 9935
    b	.L0d9a1cc0
    neg.s	$f22,$f5
.L0d9a1cbc:
    mov.s	$f22,$f5
.L0d9a1cc0:
    # Line 9936
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f16
    c.eq.d $f0,$f6
    mov.s	$f5,$f16
    bc1f .L0d9a1ce8
    sd	$s7,336($sp)
    cvt.d.s	$f1,$f22
    c.eq.d $f1,$f6
    bc1t .L0d9a21dc
    move	$s7,$zero
.L0d9a1ce8:
    sdc1	$f5,224($sp)
    sd	$ra,344($sp)
    li	$s7,1
    sd	$s3,280($sp)
.L0d9a1cf8:
    # Line 9939
    swc1	$f4,4($sp)
    # Line 9938
    swc1	$f4,0($sp)
    # Line 9950
    lwc1	$f6,24($s1)
    swc1	$f6,0($sp)
    # Line 9951
    lwc1	$f5,40($s1)
    swc1	$f5,4($sp)
    # Line 9954
    lwc1	$f4,0($s2)
    trunc.w.s	$f4,$f4
    swc1	$f4,8($sp)
    # Line 9955
    lwc1	$f3,4($s2)
    trunc.w.s	$f3,$f3
    swc1	$f3,12($sp)
    # Line 9956
    lwc1	$f5,8($s2)
    trunc.w.s	$f5,$f5
    swc1	$f5,16($sp)
    # Line 9957
    lwc1	$f2,12($s2)
    # Line 9956
    mfc1	$a5,$f5
    # Line 9954
    mfc1	$a4,$f4
    # Line 9966
    move	$a6,$a5
    # Line 9957
    trunc.w.s	$f2,$f2
    # Line 9966
    move	$a3,$a5
    slt	$a7,$a5,$a4
    # Line 9987
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    # Line 9966
    slt	$a5,$a4,$a5
    movn	$a3,$a4,$a7
    # Line 9957
    mfc1	$a0,$f2
    # Line 9955
    mfc1	$v1,$f3
    # Line 9957
    swc1	$f2,20($sp)
    # Line 9966
    movz	$a4,$a6,$a5
    # Line 9965
    sw	$zero,28($sp)
    # Line 9966
    subu	$a3,$a3,$a4
    # Line 9967
    move	$a1,$a0
    # Line 9964
    sw	$zero,24($sp)
    # Line 9967
    move	$v0,$a0
    slt	$a2,$a0,$v1
    sd	$zero,40($sp)
    slt	$a0,$v1,$a0
    movn	$v0,$v1,$a2
    # Line 9966
    sw	$a3,32($sp)
    # Line 9967
    movz	$v1,$a1,$a0
    addiu	$a0,$sp,40
    sw	$zero,56($a0)
    sd	$zero,48($a0)
    sd	$zero,40($a0)
    sd	$zero,32($a0)
    sd	$zero,24($a0)
    sd	$zero,16($a0)
    sd	$zero,8($a0)
    # Line 9976
    li	$ra,6401
    # Line 9977
    li	$t8,5125
    sw	$t8,52($sp)
    # Line 9974
    slti	$a4,$a3,0
    # Line 9976
    sw	$ra,48($sp)
    # Line 9974
    move	$a2,$a3
    # Line 9972
    sw	$zero,44($sp)
    # Line 9974
    movn	$a2,$zero,$a4
    slt	$a1,$zero,$a3
    # Line 9971
    sw	$zero,96($sp)
    # Line 9974
    movn	$a3,$zero,$a1
    # Line 9967
    subu	$v0,$v0,$v1
    sw	$v0,36($sp)
    # Line 9974
    subu	$a2,$a2,$a3
    sw	$a2,56($sp)
    # Line 9975
    move	$at,$v0
    slti	$v1,$v0,0
    movn	$at,$zero,$v1
    # Line 9973
    li	$v1,1
    # Line 9981
    sw	$v1,76($sp)
    # Line 9978
    sw	$v1,64($sp)
    # Line 9975
    slt	$a1,$zero,$v0
    # Line 9984
    lui	$s3,0x1
    # Line 9973
    sb	$v1,40($sp)
    # Line 9975
    movn	$v0,$zero,$a1
    # Line 9984
    addu	$s3,$s0,$s3
    # Line 9975
    subu	$at,$at,$v0
    sw	$at,60($sp)
    # Line 9984
    lw	$v0,-22728($s3)
    # Line 9987
    addiu	$a5,$sp,4
    # Line 9984
    sw	$v0,84($sp)
    # Line 9987
    addiu	$a4,$sp,0
    addiu	$a3,$sp,8
    lbu	$a6,62($s1)
    addiu	$a1,$sp,24
    bal __glOdysseyImageConvertHostImage
    lw	$a2,68($s1)
    # Line 9994
    lw	$t1,36($sp)
    # Line 9993
    lw	$t2,32($sp)
    # Line 9992
    lw	$t3,28($sp)
    # Line 9994
    mtc1	$t1,$f10
    # Line 9991
    lw	$t8,24($sp)
    # Line 9993
    mtc1	$t2,$f11
    # Line 9992
    mtc1	$t3,$f12
    # Line 9991
    mtc1	$t8,$f13
    # Line 9994
    cvt.s.w	$f10,$f10
    # Line 9993
    cvt.s.w	$f11,$f11
    # Line 9992
    cvt.s.w	$f12,$f12
    # Line 9991
    cvt.s.w	$f13,$f13
    # Line 9994
    swc1	$f10,116($sp)
    # Line 9993
    swc1	$f11,112($sp)
    # Line 9992
    swc1	$f12,108($sp)
    # Line 9991
    swc1	$f13,104($sp)
    # Line 9995
    lwc1	$f4,16($s2)
    swc1	$f4,120($sp)
    lwc1	$f9,20($s2)
    swc1	$f9,124($sp)
    lwc1	$f8,24($s2)
    sdc1	$f9,248($sp)
    swc1	$f8,128($sp)
    lwc1	$f7,28($s2)
    andi	$t0,$s7,0xff
    sdc1	$f8,232($sp)
    sdc1	$f7,240($sp)
    beqz	$t0,.L0d9a2224
    swc1	$f7,132($sp)
    sdc1	$f20,328($sp)
    # Line 10000
    ldc1	$f20,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f4
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10001
    ldc1	$f12,248($sp)
    cvt.d.s	$f12,$f12
    # Line 10000
    trunc.w.s	$f13,$f0
    # Line 10001
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 10000
    mfc1	$s2,$f13
    # Line 10001
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10002
    ldc1	$f12,232($sp)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 10001
    trunc.w.s	$f13,$f0
    # Line 10002
    add.d	$f12,$f12,$f20
    # Line 10001
    mfc1	$ra,$f13
    sd	$ra,272($sp)
    # Line 10002
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10003
    ldc1	$f12,240($sp)
    cvt.d.s	$f12,$f12
    # Line 10002
    trunc.w.s	$f13,$f0
    # Line 10003
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 10002
    mfc1	$s7,$f13
    # Line 10003
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10008
    trunc.w.s	$f13,$f0
    # Line 10007
    move	$a7,$s7
    slt	$ra,$s7,$s2
    # Line 10006
    sw	$zero,148($sp)
    # Line 10007
    slt	$t9,$s2,$s7
    movn	$a7,$s2,$ra
    # Line 10008
    mfc1	$t2,$f13
    # Line 10007
    movz	$s2,$s7,$t9
    # Line 10008
    ld	$t1,272($sp)
    # Line 10005
    sw	$zero,144($sp)
    # Line 10007
    subu	$a7,$a7,$s2
    # Line 10008
    move	$t3,$t2
    # Line 10007
    sw	$a7,152($sp)
    # Line 10008
    move	$t0,$t2
    slt	$t8,$t2,$t1
    # Line 10010
    ld	$a2,40($sp)
    # Line 10008
    slt	$t2,$t1,$t2
    movn	$t0,$t1,$t8
    # Line 10010
    sd	$a2,160($sp)
    # Line 10008
    movz	$t1,$t3,$t2
    subu	$t0,$t0,$t1
    sw	$t0,156($sp)
    # Line 10010
    addiu	$t1,$sp,40
    ld	$a1,8($t1)
    ld	$a0,16($t1)
    ld	$v1,24($t1)
    ld	$v0,32($t1)
    ld	$ra,40($t1)
    ld	$t8,48($t1)
    addiu	$t2,$sp,160
    lw	$t1,56($t1)
    # Line 10011
    move	$a5,$a7
    # Line 10010
    sw	$t1,56($t2)
    # Line 10011
    move	$a6,$a7
    slt	$t9,$zero,$a7
    # Line 10010
    sd	$t8,48($t2)
    # Line 10011
    slti	$at,$a7,0
    movn	$a6,$zero,$t9
    # Line 10010
    sd	$ra,40($t2)
    # Line 10011
    movn	$a5,$zero,$at
    # Line 10010
    sd	$v0,32($t2)
    sd	$v1,24($t2)
    # Line 10012
    move	$a2,$t0
    slti	$t3,$t0,0
    # Line 10010
    sd	$a0,16($t2)
    # Line 10012
    move	$a3,$t0
    slt	$a4,$zero,$t0
    # Line 10010
    sd	$a1,8($t2)
    # Line 10012
    movn	$a3,$zero,$a4
    # Line 10013
    mult	$a7,$t0
    # Line 10011
    subu	$a5,$a5,$a6
    sw	$a5,176($sp)
    # Line 10012
    movn	$a2,$zero,$t3
    subu	$a2,$a2,$a3
    sw	$a2,180($sp)
    # Line 10013
    lw	$t9,0($s0)
    move	$a0,$s0
    ldc1	$f20,328($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0d9a21ec
    sw	$v0,204($sp)
    # Line 10022
    # lw $t9, -31284($gp) # &__glOdysseyImageZoomHostImage
    addiu	$a3,$sp,24
    addiu	$a2,$sp,40
    addiu	$a1,$sp,144
    mov.s	$f17,$f22
    ldc1	$f16,224($sp)
    jal	__glOdysseyImageZoomHostImage
    addiu	$a0,$sp,160
    # Line 10028
    lw	$a4,156($sp)
    # Line 10027
    lw	$a5,152($sp)
    # Line 10026
    lw	$a6,148($sp)
    # Line 10028
    mtc1	$a4,$f14
    # Line 10025
    lw	$a7,144($sp)
    # Line 10027
    mtc1	$a5,$f15
    # Line 10026
    mtc1	$a6,$f16
    # Line 10025
    mtc1	$a7,$f17
    # Line 10028
    cvt.s.w	$f14,$f14
    # Line 10027
    cvt.s.w	$f15,$f15
    # Line 10026
    cvt.s.w	$f16,$f16
    # Line 10025
    cvt.s.w	$f17,$f17
    # Line 10028
    swc1	$f14,116($sp)
    # Line 10027
    swc1	$f15,112($sp)
    # Line 10051
    li	$a2,0x8000
    # Line 10026
    swc1	$f16,108($sp)
    # Line 10051
    nor	$a2,$a2,$zero
    # Line 10043
    lui	$a3,0x100
    # Line 10025
    swc1	$f17,104($sp)
    # Line 10042
    li	$a4,-3073
    # Line 10043
    nor	$a3,$a3,$zero
    # Line 10051
    lbu	$a1,3226($s0)
    # Line 10046
    li	$a5,-4096
    # Line 10047
    lui	$a6,0x10
    # Line 10037
    lw	$at,31744($s0)
    # Line 10047
    nor	$a6,$a6,$zero
    # Line 10039
    lw	$s2,31740($s0)
    # Line 10051
    sltu	$a1,$zero,$a1
    # Line 10042
    and	$a4,$at,$a4
    # Line 10051
    sll	$a1,$a1,0xf
    # Line 10038
    lw	$s7,31836($s0)
    # Line 10051
    and	$a2,$s2,$a2
    andi	$a1,$a1,0x8000
    or	$a1,$a1,$a2
    # Line 10043
    and	$a3,$s7,$a3
    # Line 10046
    and	$a3,$a3,$a5
    # Line 10048
    lui	$a5,0x20
    # Line 10047
    and	$a3,$a3,$a6
    # Line 10049
    lui	$a6,0x40
    # Line 10048
    nor	$a5,$a5,$zero
    # Line 10049
    nor	$a6,$a6,$zero
    # Line 10042
    sw	$a4,31744($s0)
    # Line 10048
    and	$a3,$a3,$a5
    # Line 10050
    lui	$a5,0x80
    # Line 10051
    sw	$a1,31740($s0)
    # Line 10050
    nor	$a5,$a5,$zero
    # Line 10049
    and	$a3,$a3,$a6
    # Line 10050
    and	$a3,$a3,$a5
    sw	$a3,31836($s0)
    # Line 10054
    lw	$a0,26976($s3)
    # Line 10066
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 10054
    ori	$a0,$a0,0x86
    sw	$a0,26976($s3)
    li	$v1,2
    sw	$v1,4120($zero)
    # Line 10058
    lw	$v0,1796($s0)
    # Line 10066
    move	$a4,$zero
    # Line 10058
    lw	$v1,72($s1)
    # Line 10037
    sd	$at,264($sp)
    # Line 10066
    addiu	$a2,$sp,104
    # Line 10058
    andi	$v0,$v0,0x20
    # Line 10066
    addiu	$a1,$sp,160
    # Line 10058
    sltu	$v0,$zero,$v0
    sb	$v0,12($v1)
    # Line 10066
    li	$a3,1
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    lw	$a1,204($sp)
    beqz	$a1,.L0d9a2180
    sd	$s7,256($sp)
    # Line 10070
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9a2180:
    ld	$s7,336($sp)
.L0d9a2184:
    ldc1	$f22,320($sp)
    # Line 10084
    ld	$gp,304($sp)
    # Line 10076
    sw	$s2,31740($s0)
    # Line 10084
    ld	$s2,296($sp)
    # Line 10075
    ld	$t3,256($sp)
    # Line 10074
    ld	$t8,264($sp)
    sw	$t8,31744($s0)
    # Line 10075
    sw	$t3,31836($s0)
    # Line 10084
    ld	$s0,312($sp)
    # Line 10077
    lw	$t2,26976($s3)
    ld	$ra,344($sp)
    ori	$t2,$t2,0x86
    sw	$t2,26976($s3)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 10081
    lw	$t0,72($s1)
    # Line 10084
    ld	$s1,288($sp)
    li	$v0,1
    ld	$s3,280($sp)
    addiu	$sp,$sp,352
    jr	$ra
    # Line 10081
    sb	$zero,12($t0)
.L0d9a21dc:
    sdc1	$f16,224($sp)
    sd	$ra,344($sp)
    b	.L0d9a1cf8
    sd	$s3,280($sp)
.L0d9a21ec:
    # Line 10018
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s7,336($sp)
    ldc1	$f22,320($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 10084
    ld	$gp,304($sp)
    ld	$s0,312($sp)
    ld	$ra,344($sp)
    ld	$s1,288($sp)
    # Line 10019
    move	$v0,$zero
    # Line 10084
    ld	$s2,296($sp)
    ld	$s3,280($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d9a2224:
    # Line 10037
    lw	$ra,31744($s0)
    # Line 10039
    lw	$s2,31740($s0)
    # Line 10051
    li	$a2,0x8000
    # Line 10042
    li	$a4,-3073
    # Line 10051
    nor	$a2,$a2,$zero
    # Line 10042
    and	$a4,$ra,$a4
    # Line 10051
    and	$a2,$s2,$a2
    lbu	$a1,3226($s0)
    # Line 10046
    li	$a5,-4096
    # Line 10047
    lui	$a6,0x10
    nor	$a6,$a6,$zero
    # Line 10051
    sltu	$a1,$zero,$a1
    sll	$a1,$a1,0xf
    # Line 10038
    lw	$v1,31836($s0)
    # Line 10043
    lui	$a3,0x100
    # Line 10051
    andi	$a1,$a1,0x8000
    # Line 10043
    nor	$a3,$a3,$zero
    # Line 10051
    or	$a1,$a1,$a2
    # Line 10043
    and	$a3,$v1,$a3
    # Line 10046
    and	$a3,$a3,$a5
    # Line 10048
    lui	$a5,0x20
    # Line 10047
    and	$a3,$a3,$a6
    # Line 10049
    lui	$a6,0x40
    # Line 10038
    sd	$v1,256($sp)
    # Line 10048
    nor	$a5,$a5,$zero
    # Line 10049
    nor	$a6,$a6,$zero
    # Line 10042
    sw	$a4,31744($s0)
    # Line 10048
    and	$a3,$a3,$a5
    # Line 10050
    lui	$a5,0x80
    # Line 10051
    sw	$a1,31740($s0)
    # Line 10050
    nor	$a5,$a5,$zero
    # Line 10049
    and	$a3,$a3,$a6
    # Line 10050
    and	$a3,$a3,$a5
    sw	$a3,31836($s0)
    # Line 10054
    lw	$a0,26976($s3)
    # Line 10062
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 10054
    ori	$a0,$a0,0x86
    sw	$a0,26976($s3)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 10058
    lw	$at,1796($s0)
    # Line 10062
    move	$a4,$zero
    # Line 10058
    lw	$v0,72($s1)
    # Line 10037
    sd	$ra,264($sp)
    # Line 10062
    addiu	$a2,$sp,104
    # Line 10058
    andi	$at,$at,0x20
    # Line 10062
    addiu	$a1,$sp,40
    # Line 10058
    sltu	$at,$zero,$at
    sb	$at,12($v0)
    # Line 10062
    li	$a3,1
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    b	.L0d9a2184
    ld	$s7,336($sp)
.end RenderFunc_DownloadStencil

# Function: ImageChainAddOpReadbackDepth
# Declared: Line 10090 (Source lines: 10091-10121)
# Address: 0x0d9a2300 - 0x0d9a2398 (Size: 152 bytes, Frame: 32)
.ent ImageChainAddOpReadbackDepth
ImageChainAddOpReadbackDepth:
    # Line 10091
    addiu	$sp,$sp,-32
    # Line 10097
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10091
    sd	$a0,16($sp)
    sdc1	$f13,0($sp)
    # Line 10097
    addiu	$t9,$t9,-3824
    sd	$ra,24($sp)
    jal	sub_0d990000
    # Line 10091
    sdc1	$f14,8($sp)
    # Line 10097
    bnez	$v0,.L0d9a2334
    # Line 10121
    ld	$ra,24($sp)
    # Line 10099
    move	$v0,$zero
    # Line 10121
    jr	$ra
    addiu	$sp,$sp,32
.L0d9a2334:
    # Line 10115
    sw	$zero,12($v0)
    # Line 10103
    li	$v1,18
    sw	$v1,0($v0)
    # Line 10118
    ld	$a2,16($sp)
    # Line 10113
    lw	$ra,8($v0)
    # Line 10106
    la	$at,sub_0d9a0000
    # Line 10110
    ldc1	$f0,8($sp)
    # Line 10109
    ldc1	$f1,0($sp)
    # Line 10110
    swc1	$f0,40($v0)
    # Line 10118
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 10109
    swc1	$f1,24($v0)
    # Line 10106
    addiu	$at,$at,9120
    sw	$at,4($v0)
    # Line 10118
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 10113
    ori	$ra,$ra,0x14
    sw	$ra,8($v0)
    # Line 10118
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 10121
    ld	$ra,24($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpReadbackDepth

# Function: RenderFunc_ReadbackDepth
# Declared: Line 10125 (Source lines: 10126-10220)
# Address: 0x0d9a23a0 - 0x0d9a271c (Size: 892 bytes, Frame: 208)
.ent RenderFunc_ReadbackDepth
RenderFunc_ReadbackDepth:
    # Line 10145
    lw	$a2,68($a0)
    # Line 10126
    addiu	$sp,$sp,-208
    sd	$s2,192($sp)
    # Line 10134
    lw	$s2,4112($zero)
    # Line 10126
    sd	$ra,176($sp)
    sd	$s0,168($sp)
    lui	$v0,0x15
    # Line 10145
    lw	$at,72($a0)
    # Line 10126
    addiu	$v0,$v0,25072
    sd	$gp,200($sp)
    addu	$gp,$t9,$v0
    # Line 10145
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    # Line 10126
    sd	$s1,184($sp)
    # Line 10145
    addiu	$a3,$sp,0
    # Line 10126
    move	$s1,$a1
    # Line 10145
    lw	$a1,12($at)
    # Line 10126
    move	$s0,$a0
    # Line 10145
    jal	__glOdysseyImageCalcXferReadParams
    lw	$a0,8($at)
    # Line 10156
    sw	$zero,28($sp)
    # Line 10155
    sw	$zero,24($sp)
    # Line 10156
    lwc1	$f3,8($s1)
    lwc1	$f2,0($s1)
    # Line 10157
    c.lt.s $f2,$f3
    # Line 10156
    c.lt.s $f3,$f2
    # Line 10157
    mov.s	$f1,$f2
    movf.s	$f2,$f3,$fcc2
    movf.s	$f1,$f3,$fcc3
    sub.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    swc1	$f1,32($sp)
    lwc1	$f3,12($s1)
    lwc1	$f2,4($s1)
    # Line 10158
    c.lt.s	$f2,$f3
    # Line 10157
    c.lt.s $f3,$f2
    # Line 10158
    mov.s	$f0,$f2
    movf.s	$f2,$f3,$fcc0
    movf.s	$f0,$f3,$fcc1
    sub.s	$f0,$f0,$f2
    trunc.w.s	$f0,$f0
    swc1	$f0,36($sp)
    addiu	$a5,$sp,40
    sd	$zero,40($sp)
    sw	$zero,56($a5)
    sd	$zero,48($a5)
    sd	$zero,40($a5)
    # Line 10157
    mfc1	$a1,$f1
    # Line 10158
    sd	$zero,32($a5)
    sd	$zero,24($a5)
    # Line 10164
    li	$a0,1
    # Line 10165
    move	$t0,$a1
    # Line 10158
    sd	$zero,16($a5)
    # Line 10165
    move	$t1,$a1
    slt	$t3,$zero,$a1
    # Line 10158
    sd	$zero,8($a5)
    # Line 10165
    slti	$t8,$a1,0
    movn	$t1,$zero,$t3
    # Line 10172
    sw	$a0,72($sp)
    # Line 10165
    movn	$t0,$zero,$t8
    # Line 10169
    sw	$a0,64($sp)
    # Line 10165
    subu	$t0,$t0,$t1
    sw	$t0,56($sp)
    # Line 10158
    mfc1	$a2,$f0
    # Line 10164
    sb	$a0,40($sp)
    # Line 10163
    sw	$zero,44($sp)
    # Line 10166
    move	$a4,$a2
    # Line 10162
    sw	$zero,96($sp)
    # Line 10166
    move	$a6,$a2
    slt	$a7,$zero,$a2
    # Line 10167
    lw	$a3,12($sp)
    # Line 10166
    slti	$t2,$a2,0
    movn	$a6,$zero,$a7
    # Line 10167
    sw	$a3,48($sp)
    # Line 10166
    movn	$a4,$zero,$t2
    subu	$a4,$a4,$a6
    sw	$a4,60($sp)
    # Line 10168
    lw	$a4,16($sp)
    sw	$a4,52($sp)
    # Line 10176
    lw	$a3,72($s0)
    li	$t9,1
    # Line 10191
    mtc1	$zero,$f4
    # Line 10176
    lw	$v1,32($a3)
    # Line 10187
    li	$ra,0xa738
    # Line 10193
    mtc1	$a1,$f5
    # Line 10187
    addu	$ra,$ra,$s2
    # Line 10194
    mtc1	$a2,$f6
    # Line 10176
    beq	$v1,$a0,.L0d9a2618
    li	$a6,5125
.L0d9a2500:
    # Line 10187
    lw	$ra,0($ra)
    sw	$ra,84($sp)
    # Line 10190
    lwc1	$f8,0($s1)
    swc1	$f8,104($sp)
    lwc1	$f7,4($s1)
    swc1	$f7,108($sp)
    lwc1	$f7,8($s1)
    # Line 10176
    sd	$t9,160($sp)
    # Line 10194
    cvt.s.w	$f6,$f6
    # Line 10193
    cvt.s.w	$f5,$f5
    # Line 10190
    swc1	$f7,112($sp)
    lwc1	$f3,12($s1)
    # Line 10194
    swc1	$f6,132($sp)
    # Line 10193
    swc1	$f5,128($sp)
    # Line 10192
    swc1	$f4,124($sp)
    # Line 10191
    swc1	$f4,120($sp)
    # Line 10190
    swc1	$f3,116($sp)
    # Line 10202
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
.L0d9a2548:
    addiu	$a2,$sp,104
    lw	$a1,68($s0)
    jal	__glOdysseyImageMovePixelsDMAtoHost
    addiu	$a0,$sp,40
    ld	$at,160($sp)
    andi	$at,$at,0xff
    # Line 10220
    li	$v0,1
    # Line 10202
    beqz	$at,.L0d9a2600
    ld	$ra,176($sp)
    # Line 10206
    lwc1	$f12,16($s1)
    trunc.w.s	$f12,$f12
    swc1	$f12,144($sp)
    # Line 10207
    lwc1	$f11,20($s1)
    trunc.w.s	$f11,$f11
    swc1	$f11,148($sp)
    # Line 10208
    lwc1	$f10,24($s1)
    trunc.w.s	$f10,$f10
    swc1	$f10,152($sp)
    # Line 10209
    lwc1	$f9,28($s1)
    # Line 10214
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    # Line 10209
    trunc.w.s	$f9,$f9
    swc1	$f9,156($sp)
    # Line 10214
    move	$a6,$zero
    addiu	$a5,$s0,40
    # Line 10211
    lw	$v0,1796($s2)
    # Line 10214
    addiu	$a4,$s0,24
    # Line 10211
    lui	$a0,0x2
    lw	$v1,72($s0)
    # Line 10214
    addiu	$a3,$sp,24
    # Line 10211
    and	$v0,$v0,$a0
    # Line 10214
    addiu	$a2,$sp,40
    # Line 10211
    sltu	$v0,$zero,$v0
    sb	$v0,28($v1)
    # Line 10214
    addiu	$a1,$sp,144
    bal __glOdysseyImageConvertHostImage
    lw	$a0,72($s0)
    # Line 10220
    ld	$gp,200($sp)
    # Line 10217
    lw	$a1,72($s0)
    # Line 10220
    ld	$s0,168($sp)
    ld	$ra,176($sp)
    ld	$s1,184($sp)
    li	$v0,1
    ld	$s2,192($sp)
    addiu	$sp,$sp,208
    jr	$ra
    # Line 10217
    sb	$zero,28($a1)
.L0d9a2600:
    ld	$s0,168($sp)
    ld	$s1,184($sp)
    ld	$s2,192($sp)
    # Line 10220
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9a2618:
    # Line 10176
    lw	$a7,12($a3)
    bne	$a6,$a7,.L0d9a2500
    nop
    bne	$a6,$a4,.L0d9a2500
    nop
    lwc1	$f13,24($s0)
    ldc1	$f14,_lit8_3ff0000000000000
    cvt.d.s	$f13,$f13
    c.eq.d $f13,$f14
    bc1f .L0d9a2500
    nop
    lwc1	$f14,40($s0)
    dmtc1	$zero,$f15
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f15
    bc1f .L0d9a2500
    nop
    lw	$t0,1148($s2)
    bnez	$t0,.L0d9a2500
    nop
    lw	$t1,1796($s2)
    dsll32	$t1,$t1,0xe
    bltz	$t1,.L0d9a2500
    nop
    lbu	$t2,1144($s2)
    bnez	$t2,.L0d9a2500
    nop
    # Line 10196
    lwc1	$f25,0($s1)
    swc1	$f25,104($sp)
    lwc1	$f23,4($s1)
    swc1	$f23,108($sp)
    lwc1	$f21,8($s1)
    swc1	$f21,112($sp)
    lwc1	$f19,12($s1)
    swc1	$f19,116($sp)
    # Line 10197
    lwc1	$f18,16($s1)
    swc1	$f18,120($sp)
    lwc1	$f17,20($s1)
    swc1	$f17,124($sp)
    lwc1	$f16,24($s1)
    swc1	$f16,128($sp)
    lwc1	$f15,28($s1)
    swc1	$f15,132($sp)
    # Line 10198
    lw	$a7,72($s0)
    # Line 10176
    sd	$zero,160($sp)
    addiu	$a4,$a5,4
    li	$a6,0x8
    # Line 10198
    li	$a2,4
    lw	$t3,0($a7)
    li	$a1,0xe
    addiu	$a3,$a7,4
    sw	$t3,0($a5)
.L0d9a26e8:
    addu	$t1,$a2,$a7
    addu	$t2,$a2,$a5
    lw	$t1,0($t1)
    addiu	$a1,$a1,-2
    addu	$t0,$a2,$a3
    sw	$t1,0($t2)
    addu	$t1,$a2,$a4
    lw	$t0,0($t0)
    addu	$a2,$a2,$a6
    bgtz	$a1,.L0d9a26e8
    sw	$t0,0($t1)
    b	.L0d9a2548
    # Line 10202
    nop	# was lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
.end RenderFunc_ReadbackDepth

# Function: ImageChainAddOpReadbackStencil
# Declared: Line 10225 (Source lines: 10226-10257)
# Address: 0x0d9a2720 - 0x0d9a27d4 (Size: 180 bytes, Frame: 48)
.ent ImageChainAddOpReadbackStencil
ImageChainAddOpReadbackStencil:
    # Line 10226
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 10232
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10226
    sd	$a1,8($sp)
    sd	$a2,16($sp)
    # Line 10232
    addiu	$t9,$t9,-3824
    sd	$ra,32($sp)
    jal	sub_0d990000
    # Line 10226
    sd	$a3,24($sp)
    # Line 10232
    bnez	$v0,.L0d9a2758
    # Line 10257
    ld	$ra,32($sp)
    # Line 10234
    move	$v0,$zero
    # Line 10257
    jr	$ra
    addiu	$sp,$sp,48
.L0d9a2758:
    # Line 10251
    sw	$zero,12($v0)
    # Line 10238
    li	$v1,19
    sw	$v1,0($v0)
    # Line 10246
    ld	$ra,24($sp)
    sb	$ra,62($v0)
    # Line 10245
    ld	$a0,16($sp)
    # Line 10244
    ld	$a1,8($sp)
    # Line 10254
    ld	$a2,0($sp)
    # Line 10245
    mtc1	$a0,$f0
    # Line 10241
    la	$at,sub_0d9a0000
    # Line 10244
    mtc1	$a1,$f1
    # Line 10249
    lw	$a3,8($v0)
    # Line 10241
    addiu	$at,$at,10208
    sw	$at,4($v0)
    # Line 10245
    cvt.s.w	$f0,$f0
    # Line 10254
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10244
    cvt.s.w	$f1,$f1
    # Line 10249
    ori	$a3,$a3,0x14
    sw	$a3,8($v0)
    # Line 10254
    addiu	$t9,$t9,-2832
    # Line 10245
    swc1	$f0,40($v0)
    # Line 10254
    move	$a3,$zero
    move	$a1,$v0
    # Line 10244
    swc1	$f1,24($v0)
    # Line 10254
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 10257
    ld	$ra,32($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.end ImageChainAddOpReadbackStencil

# Function: RenderFunc_ReadbackStencil
# Declared: Line 10261 (Source lines: 10262-10366)
# Address: 0x0d9a27e0 - 0x0d9a2aa0 (Size: 704 bytes, Frame: 192)
.ent RenderFunc_ReadbackStencil
RenderFunc_ReadbackStencil:
    # Line 10280
    mtc1	$zero,$f4
    lwc1	$f0,24($a0)
    # Line 10262
    addiu	$sp,$sp,-192
    sd	$s1,152($sp)
    # Line 10280
    c.eq.s	$f0,$f4
    li	$a4,1
    # Line 10263
    lw	$s1,4112($zero)
    # Line 10262
    lui	$at,0x15
    # Line 10280
    li	$a5,5121
    # Line 10262
    sd	$s0,160($sp)
    addiu	$at,$at,23984
    move	$s0,$a0
    sd	$gp,168($sp)
    # Line 10280
    bc1f	.L0d9a2850
    # Line 10262
    addu	$gp,$t9,$at
    # Line 10280
    lwc1	$f1,40($a0)
    c.eq.s $f1,$f4
    bc1f .L0d9a2a54
    sd	$a1,144($sp)
    lbu	$v0,62($a0)
    lw	$a0,72($a0)
    beq	$a4,$v0,.L0d9a2a5c
    li	$a5,5121
    lw	$v1,12($a0)
    beq	$a5,$v1,.L0d9a2a64
    nop
    b	.L0d9a2860
    sd	$ra,176($sp)
.L0d9a2850:
    sd	$ra,176($sp)
    li	$a5,5121
    li	$a4,1
    sd	$a1,144($sp)
.L0d9a2860:
    # Line 10294
    swc1	$f4,4($sp)
    # Line 10293
    swc1	$f4,0($sp)
    # Line 10301
    lwc1	$f6,24($s0)
    # Line 10306
    ld	$a1,144($sp)
    # Line 10301
    swc1	$f6,0($sp)
    # Line 10302
    lwc1	$f5,40($s0)
    # Line 10306
    sw	$zero,12($sp)
    # Line 10305
    sw	$zero,8($sp)
    # Line 10302
    swc1	$f5,4($sp)
    # Line 10306
    lwc1	$f5,8($a1)
    lwc1	$f4,0($a1)
    # Line 10307
    c.lt.s $f4,$f5
    # Line 10306
    c.lt.s $f5,$f4
    # Line 10307
    mov.s	$f3,$f4
    movf.s	$f4,$f5,$fcc4
    movf.s	$f3,$f5,$fcc5
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    swc1	$f3,16($sp)
    lwc1	$f5,12($a1)
    lwc1	$f4,4($a1)
    # Line 10308
    c.lt.s $f4,$f5
    # Line 10307
    c.lt.s $f5,$f4
    # Line 10308
    mov.s	$f2,$f4
    movf.s	$f4,$f5,$fcc2
    movf.s	$f2,$f5,$fcc3
    sub.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    swc1	$f2,20($sp)
    addiu	$a0,$sp,24
    sd	$zero,24($sp)
    sw	$zero,56($a0)
    sd	$zero,48($a0)
    sd	$zero,40($a0)
    sd	$zero,32($a0)
    sd	$zero,24($a0)
    sd	$zero,16($a0)
    # Line 10307
    mfc1	$t2,$f3
    # Line 10308
    sd	$zero,8($a0)
    # Line 10327
    sw	$zero,60($sp)
    # Line 10315
    move	$t1,$t2
    slti	$t3,$t2,0
    # Line 10319
    sw	$a4,48($sp)
    # Line 10315
    movn	$t1,$zero,$t3
    slt	$t3,$zero,$t2
    # Line 10318
    sw	$a5,36($sp)
    # Line 10317
    li	$a3,6401
    # Line 10315
    movn	$t2,$zero,$t3
    # Line 10317
    sw	$a3,32($sp)
    # Line 10308
    mfc1	$a7,$f2
    # Line 10315
    subu	$t1,$t1,$t2
    sw	$t1,40($sp)
    # Line 10314
    sb	$a4,24($sp)
    # Line 10316
    move	$a6,$a7
    slti	$t0,$a7,0
    # Line 10313
    sw	$zero,28($sp)
    # Line 10316
    movn	$a6,$zero,$t0
    slt	$t0,$zero,$a7
    # Line 10330
    li	$a2,0xa738
    # Line 10312
    sw	$zero,80($sp)
    # Line 10316
    movn	$a7,$zero,$t0
    # Line 10330
    addu	$a2,$a2,$s1
    # Line 10316
    subu	$a6,$a6,$a7
    sw	$a6,44($sp)
    # Line 10330
    lw	$a2,0($a2)
    sw	$a2,68($sp)
    # Line 10333
    lwc1	$f8,0($a1)
    swc1	$f8,88($sp)
    lwc1	$f7,4($a1)
    swc1	$f7,92($sp)
    lwc1	$f6,8($a1)
    # Line 10340
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    # Line 10337
    cvt.s.w	$f2,$f2
    # Line 10336
    cvt.s.w	$f3,$f3
    # Line 10333
    swc1	$f6,96($sp)
    lwc1	$f5,12($a1)
    # Line 10334
    mtc1	$zero,$f4
    # Line 10337
    swc1	$f2,116($sp)
    # Line 10336
    swc1	$f3,112($sp)
    # Line 10335
    swc1	$f4,108($sp)
    # Line 10334
    swc1	$f4,104($sp)
    # Line 10333
    swc1	$f5,100($sp)
    # Line 10340
    addiu	$a2,$sp,88
    jal	__glOdysseyImageMovePixelsDMAtoHost
    lw	$a1,68($s0)
    # Line 10343
    ld	$v0,144($sp)
    lwc1	$f10,16($v0)
    trunc.w.s	$f10,$f10
    swc1	$f10,128($sp)
    # Line 10344
    lwc1	$f9,20($v0)
    trunc.w.s	$f9,$f9
    swc1	$f9,132($sp)
    # Line 10345
    lwc1	$f8,24($v0)
    trunc.w.s	$f8,$f8
    swc1	$f8,136($sp)
    # Line 10346
    lwc1	$f7,28($v0)
    trunc.w.s	$f7,$f7
    swc1	$f7,140($sp)
    # Line 10348
    lw	$at,1796($s1)
    lui	$t8,0x2
    lw	$ra,72($s0)
    # Line 10351
    addiu	$a5,$sp,4
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    # Line 10348
    and	$t8,$t8,$at
    # Line 10351
    addiu	$a4,$sp,0
    # Line 10348
    sltu	$t8,$zero,$t8
    sb	$t8,28($ra)
    # Line 10351
    addiu	$a3,$sp,8
    addiu	$a2,$sp,24
    lbu	$a6,62($s0)
    addiu	$a1,$sp,128
    bal __glOdysseyImageConvertHostImage
    lw	$a0,72($s0)
    # Line 10366
    ld	$gp,168($sp)
    # Line 10354
    lw	$v1,72($s0)
    ld	$ra,176($sp)
    # Line 10366
    ld	$s0,160($sp)
    li	$v0,1
    ld	$s1,152($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 10354
    sb	$zero,28($v1)
.L0d9a2a48:
    # Line 10366
    ld	$gp,168($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9a2a54:
    # Line 10280
    b	.L0d9a2860
    sd	$ra,176($sp)
.L0d9a2a5c:
    b	.L0d9a2860
    sd	$ra,176($sp)
.L0d9a2a64:
    lw	$a1,1148($s1)
    bnez	$a1,.L0d9a2860
    sd	$ra,176($sp)
    lw	$a2,1796($s1)
    dsll32	$a2,$a2,0xe
    bltz	$a2,.L0d9a2860
    # Line 10363
    nop	# was lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    ld	$s1,152($sp)
    ld	$a2,144($sp)
    jal	__glOdysseyImageMovePixelsDMAtoHost
    lw	$a1,68($s0)
    ld	$s0,160($sp)
    # Line 10366
    li	$v0,1
    b	.L0d9a2a48
    ld	$ra,176($sp)
.end RenderFunc_ReadbackStencil

# Function: ImageChainAddOpCopyDepth
# Declared: Line 10371 (Source lines: 10372-10403)
# Address: 0x0d9a2aa0 - 0x0d9a2b38 (Size: 152 bytes, Frame: 32)
.ent ImageChainAddOpCopyDepth
ImageChainAddOpCopyDepth:
    # Line 10372
    addiu	$sp,$sp,-32
    # Line 10378
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10372
    sd	$a0,16($sp)
    sdc1	$f13,0($sp)
    # Line 10378
    addiu	$t9,$t9,-3824
    sd	$ra,24($sp)
    jal	sub_0d990000
    # Line 10372
    sdc1	$f14,8($sp)
    # Line 10378
    bnez	$v0,.L0d9a2ad8
    # Line 10397
    li	$a3,1
    # Line 10403
    ld	$ra,24($sp)
    # Line 10380
    move	$v0,$zero
    # Line 10403
    jr	$ra
    addiu	$sp,$sp,32
.L0d9a2ad8:
    # Line 10397
    sw	$a3,12($v0)
    # Line 10384
    li	$v1,20
    sw	$v1,0($v0)
    # Line 10400
    ld	$a2,16($sp)
    # Line 10394
    lw	$ra,8($v0)
    # Line 10387
    la	$at,sub_0d9a0000
    # Line 10391
    ldc1	$f0,8($sp)
    # Line 10390
    ldc1	$f1,0($sp)
    # Line 10391
    swc1	$f0,40($v0)
    # Line 10400
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10390
    swc1	$f1,24($v0)
    # Line 10387
    addiu	$at,$at,11072
    sw	$at,4($v0)
    # Line 10400
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 10394
    ori	$ra,$ra,0x1c
    sw	$ra,8($v0)
    # Line 10400
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,4($a2)
    # Line 10403
    ld	$ra,24($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpCopyDepth

# Function: RenderFunc_CopyDepth
# Declared: Line 10407 (Source lines: 10408-10610)
# Address: 0x0d9a2b40 - 0x0d9a3338 (Size: 2040 bytes, Frame: 192)
.ent RenderFunc_CopyDepth
RenderFunc_CopyDepth:
    # Line 10408
    addiu	$sp,$sp,-448
    sd	$s0,384($sp)
    # Line 10419
    lw	$s0,4112($zero)
    mtc1	$zero,$f5
    lwc1	$f4,744($s0)
    c.lt.s	$f4,$f5
    # Line 10408
    sd	$s1,376($sp)
    move	$s1,$a1
    lui	$at,0x15
    sd	$s2,400($sp)
    move	$s2,$a0
    addiu	$at,$at,23120
    sd	$gp,392($sp)
    addu	$gp,$t9,$at
    # Line 10419
    bc1f	.L0d9a2b84
    # Line 10420
    mov.s	$f16,$f4
    neg.s	$f16,$f4
.L0d9a2b84:
    lwc1	$f4,748($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9a2b9c
    sdc1	$f22,408($sp)
    # Line 10421
    b	.L0d9a2ba0
    neg.s	$f22,$f4
.L0d9a2b9c:
    mov.s	$f22,$f4
.L0d9a2ba0:
    # Line 10422
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f16
    c.eq.d $f0,$f5
    bc1f .L0d9a2bc0
    mov.s	$f4,$f16
    cvt.d.s	$f1,$f22
    c.eq.d $f1,$f5
    bc1t .L0d9a3198
.L0d9a2bc0:
    li	$v0,1
    sd	$v0,368($sp)
    sdc1	$f4,328($sp)
    sd	$ra,440($sp)
.L0d9a2bd0:
    # Line 10437
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    addiu	$a3,$sp,0
    li	$a1,5125
    lw	$a2,68($s2)
    li	$a0,6402
    jal	__glOdysseyImageCalcXferReadParams
    sd	$s3,424($sp)
    # Line 10444
    sw	$zero,28($sp)
    # Line 10443
    sw	$zero,24($sp)
    # Line 10444
    lwc1	$f5,8($s1)
    lwc1	$f4,0($s1)
    # Line 10445
    c.lt.s $f4,$f5
    # Line 10444
    c.lt.s $f5,$f4
    # Line 10445
    mov.s	$f3,$f4
    movf.s	$f4,$f5,$fcc6
    movf.s	$f3,$f5,$fcc7
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    swc1	$f3,32($sp)
    lwc1	$f5,12($s1)
    lwc1	$f4,4($s1)
    # Line 10446
    c.lt.s $f4,$f5
    # Line 10445
    c.lt.s $f5,$f4
    # Line 10446
    mov.s	$f2,$f4
    movf.s	$f4,$f5,$fcc4
    movf.s	$f2,$f5,$fcc5
    sub.s	$f2,$f2,$f4
    sd	$s5,432($sp)
    trunc.w.s	$f2,$f2
    swc1	$f2,36($sp)
    addiu	$a1,$sp,40
    sd	$zero,40($sp)
    sw	$zero,56($a1)
    sd	$zero,48($a1)
    sd	$zero,40($a1)
    # Line 10445
    mfc1	$a5,$f3
    # Line 10446
    sd	$zero,32($a1)
    sd	$zero,24($a1)
    # Line 10453
    move	$v1,$a5
    slt	$a2,$zero,$a5
    # Line 10446
    sd	$zero,16($a1)
    # Line 10453
    movn	$v1,$zero,$a2
    # Line 10452
    li	$a2,1
    # Line 10446
    sd	$zero,8($a1)
    # Line 10453
    move	$v0,$a5
    slti	$a3,$a5,0
    # Line 10460
    sw	$a2,72($sp)
    # Line 10453
    movn	$v0,$zero,$a3
    # Line 10457
    sw	$a2,64($sp)
    # Line 10453
    subu	$v0,$v0,$v1
    sw	$v0,56($sp)
    # Line 10452
    sb	$a2,40($sp)
    # Line 10451
    sw	$zero,44($sp)
    # Line 10446
    mfc1	$a4,$f2
    # Line 10450
    sw	$zero,96($sp)
    # Line 10463
    lui	$s3,0x1
    # Line 10455
    lw	$t8,12($sp)
    # Line 10454
    move	$t9,$a4
    # Line 10456
    lw	$v1,16($sp)
    # Line 10454
    move	$ra,$a4
    slt	$at,$zero,$a4
    # Line 10456
    sw	$v1,52($sp)
    # Line 10454
    slti	$a0,$a4,0
    movn	$ra,$zero,$at
    # Line 10463
    addu	$s3,$s0,$s3
    # Line 10455
    sw	$t8,48($sp)
    # Line 10454
    movn	$t9,$zero,$a0
    # Line 10466
    li	$a0,5125
    # Line 10454
    subu	$t9,$t9,$ra
    sw	$t9,60($sp)
    # Line 10463
    lw	$a1,-22728($s3)
    # Line 10466
    beq	$a0,$v1,.L0d9a31e0
    # Line 10463
    sw	$a1,84($sp)
    # Line 10466
    li	$s5,1
.L0d9a2cf8:
    # Line 10471
    lwc1	$f11,0($s1)
    swc1	$f11,104($sp)
    lwc1	$f10,4($s1)
    # Line 10475
    mtc1	$a4,$f5
    # Line 10474
    mtc1	$a5,$f6
    # Line 10471
    swc1	$f10,108($sp)
    lwc1	$f9,8($s1)
    # Line 10478
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    # Line 10475
    cvt.s.w	$f5,$f5
    # Line 10474
    cvt.s.w	$f6,$f6
    # Line 10471
    swc1	$f9,112($sp)
    lwc1	$f8,12($s1)
    # Line 10472
    mtc1	$zero,$f7
    # Line 10475
    swc1	$f5,132($sp)
    # Line 10474
    swc1	$f6,128($sp)
    # Line 10473
    swc1	$f7,124($sp)
    # Line 10472
    swc1	$f7,120($sp)
    # Line 10478
    addiu	$a2,$sp,104
    # Line 10471
    swc1	$f8,116($sp)
    # Line 10478
    addiu	$a0,$sp,40
    jal	__glOdysseyImageMovePixelsDMAtoHost
    lw	$a1,68($s2)
    # Line 10513
    ld	$t0,40($sp)
    addiu	$a0,$sp,40
    # Line 10478
    andi	$a4,$s5,0xff
    # Line 10513
    ld	$a6,48($a0)
    # Line 10478
    beqz	$a4,.L0d9a2e48
    # Line 10513
    lw	$a7,56($a0)
    # Line 10486
    ld	$t9,40($sp)
    sd	$t9,144($sp)
    addiu	$a5,$sp,40
    ld	$t8,8($a5)
    ld	$t3,16($a5)
    ld	$t2,24($a5)
    ld	$t1,32($a5)
    ld	$t0,40($a5)
    ld	$a7,48($a5)
    addiu	$a6,$sp,144
    lw	$a5,56($a5)
    sw	$a5,56($a6)
    sd	$a7,48($a6)
    sd	$t0,40($a6)
    sd	$t1,32($a6)
    sd	$t2,24($a6)
    sd	$t3,16($a6)
    sd	$t8,8($a6)
    # Line 10487
    li	$a4,5125
    sw	$a4,156($sp)
    # Line 10489
    lw	$a3,7708($s3)
    lw	$a2,7704($s3)
    multu	$a2,$a3
    lw	$t9,0($s0)
    move	$a0,$s0
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    beqz	$v0,.L0d9a3224
    sw	$v0,188($sp)
    # Line 10504
    move	$a6,$zero
    addiu	$a5,$s2,40
    addiu	$a4,$s2,24
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    addiu	$a2,$sp,40
    addiu	$a0,$sp,144
    # Line 10500
    lw	$at,1796($s0)
    # Line 10504
    addiu	$a1,$sp,24
    # Line 10500
    lui	$s5,0x2
    move	$a3,$a1
    and	$at,$s5,$at
    sltu	$at,$zero,$at
    # Line 10504
    bal __glOdysseyImageConvertHostImage
    # Line 10500
    sb	$at,172($sp)
    # Line 10504
    lw	$v0,1796($s0)
    and	$v0,$s5,$v0
    beqz	$v0,.L0d9a2e80
    # Line 10510
    lw	$v1,36($sp)
    mtc1	$v1,$f12
    ldc1	$f13,_lit8_3fe0000000000000
    cvt.d.w	$f12,$f12
    mul.d	$f12,$f12,$f13
    # Line 10509
    sb	$zero,172($sp)
    # Line 10510
    trunc.w.d	$f12,$f12
    b	.L0d9a2e80
    swc1	$f12,36($sp)
.L0d9a2e48:
    # Line 10513
    addiu	$a1,$sp,144
    sd	$t0,144($sp)
    sw	$a7,56($a1)
    sd	$a6,48($a1)
    ld	$a2,16($a0)
    ld	$a3,24($a0)
    ld	$a5,40($a0)
    ld	$a4,32($a0)
    ld	$a0,8($a0)
    sd	$a5,40($a1)
    sd	$a4,32($a1)
    sd	$a3,24($a1)
    sd	$a2,16($a1)
    sd	$a0,8($a1)
.L0d9a2e80:
    ld	$t1,368($sp)
    andi	$t1,$t1,0xff
    beqz	$t1,.L0d9a325c
    nop
    # Line 10519
    lwc1	$f12,16($s1)
    sdc1	$f20,416($sp)
    ldc1	$f20,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10520
    lwc1	$f12,20($s1)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 10519
    trunc.w.s	$f13,$f0
    # Line 10520
    add.d	$f12,$f12,$f20
    # Line 10519
    mfc1	$t2,$f13
    sd	$t2,352($sp)
    # Line 10520
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10521
    lwc1	$f12,24($s1)
    cvt.d.s	$f12,$f12
    # Line 10520
    trunc.w.s	$f13,$f0
    # Line 10521
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    # Line 10520
    mfc1	$s5,$f13
    # Line 10521
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10522
    lwc1	$f12,28($s1)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 10521
    trunc.w.s	$f13,$f0
    # Line 10522
    add.d	$f12,$f12,$f20
    # Line 10521
    mfc1	$t3,$f13
    sd	$t3,360($sp)
    # Line 10522
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10526
    ld	$t3,352($sp)
    ld	$ra,360($sp)
    # Line 10527
    trunc.w.s	$f13,$f0
    # Line 10526
    move	$a7,$ra
    slt	$at,$ra,$t3
    # Line 10527
    mfc1	$t1,$f13
    # Line 10525
    sw	$zero,212($sp)
    # Line 10526
    slt	$t9,$t3,$ra
    movn	$a7,$t3,$at
    # Line 10524
    sw	$zero,208($sp)
    # Line 10526
    movz	$t3,$ra,$t9
    # Line 10527
    move	$t2,$t1
    # Line 10529
    ld	$a2,144($sp)
    # Line 10527
    move	$t0,$t1
    slt	$t8,$t1,$s5
    # Line 10529
    sd	$a2,224($sp)
    # Line 10527
    slt	$t1,$s5,$t1
    movn	$t0,$s5,$t8
    # Line 10526
    subu	$a7,$a7,$t3
    sw	$a7,216($sp)
    # Line 10527
    movz	$s5,$t2,$t1
    subu	$t0,$t0,$s5
    sw	$t0,220($sp)
    # Line 10529
    addiu	$t1,$sp,144
    ld	$a1,8($t1)
    ld	$a0,16($t1)
    ld	$v1,24($t1)
    ld	$v0,32($t1)
    ld	$ra,40($t1)
    ld	$t8,48($t1)
    addiu	$t2,$sp,224
    lw	$t1,56($t1)
    # Line 10530
    move	$a5,$a7
    # Line 10529
    sw	$t1,56($t2)
    # Line 10530
    move	$a6,$a7
    slt	$t9,$zero,$a7
    # Line 10529
    sd	$t8,48($t2)
    # Line 10530
    slti	$at,$a7,0
    movn	$a6,$zero,$t9
    # Line 10529
    sd	$ra,40($t2)
    # Line 10530
    movn	$a5,$zero,$at
    # Line 10529
    sd	$v0,32($t2)
    sd	$v1,24($t2)
    # Line 10531
    move	$a2,$t0
    slti	$t3,$t0,0
    # Line 10529
    sd	$a0,16($t2)
    # Line 10531
    move	$a3,$t0
    slt	$a4,$zero,$t0
    # Line 10529
    sd	$a1,8($t2)
    # Line 10531
    movn	$a3,$zero,$a4
    # Line 10533
    mult	$a7,$t0
    # Line 10530
    subu	$a5,$a5,$a6
    sw	$a5,240($sp)
    # Line 10531
    movn	$a2,$zero,$t3
    subu	$a2,$a2,$a3
    sw	$a2,244($sp)
    # Line 10533
    lw	$t9,0($s0)
    move	$a0,$s0
    ldc1	$f20,416($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0d9a31a8
    sw	$v0,268($sp)
    # Line 10542
    # lw $t9, -31284($gp) # &__glOdysseyImageZoomHostImage
    addiu	$a3,$sp,24
    addiu	$a2,$sp,144
    addiu	$a1,$sp,208
    mov.s	$f17,$f22
    ldc1	$f16,328($sp)
    jal	__glOdysseyImageZoomHostImage
    addiu	$a0,$sp,224
    # Line 10552
    lw	$v0,31744($s0)
    # Line 10557
    lui	$a6,0xf
    # Line 10556
    li	$a7,-3073
    # Line 10553
    lw	$s5,31836($s0)
    # Line 10557
    ori	$a6,$a6,0xf000
    # Line 10556
    and	$a7,$v0,$a7
    sw	$a7,31744($s0)
    # Line 10557
    nor	$a6,$a6,$zero
    and	$a6,$s5,$a6
    sw	$a6,31836($s0)
    # Line 10558
    lw	$a5,26976($s3)
    ori	$a5,$a5,0x84
    sw	$a5,26976($s3)
    li	$a4,2
    sw	$a4,4120($zero)
    # Line 10561
    lw	$a3,1796($s0)
    lw	$a4,72($s2)
    andi	$a3,$a3,0x20
    sltu	$a3,$zero,$a3
    sb	$a3,12($a4)
    # Line 10580
    lw	$v1,220($sp)
    # Line 10579
    lw	$a0,216($sp)
    # Line 10578
    lw	$a1,212($sp)
    # Line 10580
    mtc1	$v1,$f18
    # Line 10577
    lw	$a2,208($sp)
    # Line 10579
    mtc1	$a0,$f19
    # Line 10578
    mtc1	$a1,$f21
    # Line 10577
    mtc1	$a2,$f23
    # Line 10580
    cvt.s.w	$f18,$f18
    # Line 10579
    cvt.s.w	$f19,$f19
    # Line 10578
    cvt.s.w	$f21,$f21
    # Line 10577
    cvt.s.w	$f23,$f23
    # Line 10580
    swc1	$f18,300($sp)
    # Line 10579
    swc1	$f19,296($sp)
    # Line 10578
    swc1	$f21,292($sp)
    # Line 10577
    swc1	$f23,288($sp)
    # Line 10581
    lwc1	$f17,16($s1)
    swc1	$f17,304($sp)
    lwc1	$f16,20($s1)
    swc1	$f16,308($sp)
    lwc1	$f15,24($s1)
    # Line 10584
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 10581
    swc1	$f15,312($sp)
    lwc1	$f14,28($s1)
    # Line 10552
    sd	$v0,344($sp)
    # Line 10584
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,288
    # Line 10581
    swc1	$f14,316($sp)
    # Line 10584
    addiu	$a1,$sp,224
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s2)
    lw	$a1,268($sp)
    beqz	$a1,.L0d9a3120
    sd	$s5,336($sp)
    # Line 10589
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9a3120:
    # Line 10595
    ld	$t8,344($sp)
.L0d9a3124:
    # Line 10596
    ld	$t3,336($sp)
    sw	$t3,31836($s0)
    # Line 10595
    sw	$t8,31744($s0)
    # Line 10597
    lw	$t2,26976($s3)
    ori	$t2,$t2,0x84
    sw	$t2,26976($s3)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 10600
    lw	$t0,72($s2)
    sb	$zero,12($t0)
    lw	$a1,188($sp)
    lw	$a7,84($sp)
    ld	$s5,432($sp)
    beq	$a7,$a1,.L0d9a3174
    ldc1	$f22,408($sp)
    beqz	$a1,.L0d9a3178
    ld	$s3,424($sp)
    # Line 10607
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9a3174:
    ld	$s3,424($sp)
.L0d9a3178:
    # Line 10610
    ld	$gp,392($sp)
    ld	$ra,440($sp)
    ld	$s0,384($sp)
    li	$v0,1
    ld	$s1,376($sp)
    ld	$s2,400($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0d9a3198:
    # Line 10422
    sd	$zero,368($sp)
    sdc1	$f16,328($sp)
    b	.L0d9a2bd0
    sd	$ra,440($sp)
.L0d9a31a8:
    # Line 10538
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,424($sp)
    ld	$s5,432($sp)
    ldc1	$f22,408($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 10610
    ld	$gp,392($sp)
    ld	$ra,440($sp)
    ld	$s0,384($sp)
    # Line 10539
    move	$v0,$zero
    # Line 10610
    ld	$s1,376($sp)
    ld	$s2,400($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0d9a31e0:
    # Line 10466
    lwc1	$f25,24($s2)
    ldc1	$f27,_lit8_3ff0000000000000
    cvt.d.s	$f25,$f25
    c.eq.d	$f25,$f27
    bc1t	.L0d9a320c
    dmtc1	$zero,$f29
    lwc1	$f27,40($s2)
    cvt.d.s	$f27,$f27
    c.eq.d $f27,$f29
    bc1f .L0d9a2cf8
    li	$s5,1
.L0d9a320c:
    lw	$t9,1796($s0)
    dsll32	$t9,$t9,0xe
    bltz	$t9,.L0d9a2cf8
    li	$s5,1
    b	.L0d9a2cf8
    move	$s5,$zero
.L0d9a3224:
    # Line 10495
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s5,432($sp)
    ld	$s3,424($sp)
    ldc1	$f22,408($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 10610
    ld	$gp,392($sp)
    ld	$ra,440($sp)
    ld	$s0,384($sp)
    # Line 10497
    move	$v0,$zero
    # Line 10610
    ld	$s1,376($sp)
    ld	$s2,400($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0d9a325c:
    # Line 10552
    lw	$ra,31744($s0)
    # Line 10557
    lui	$a5,0xf
    # Line 10556
    li	$a6,-3073
    # Line 10553
    lw	$at,31836($s0)
    # Line 10557
    ori	$a5,$a5,0xf000
    # Line 10556
    and	$a6,$ra,$a6
    sw	$a6,31744($s0)
    # Line 10557
    nor	$a5,$a5,$zero
    and	$a5,$at,$a5
    sw	$a5,31836($s0)
    # Line 10558
    lw	$a4,26976($s3)
    ori	$a4,$a4,0x84
    sw	$a4,26976($s3)
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 10561
    lw	$a2,1796($s0)
    lw	$a3,72($s2)
    andi	$a2,$a2,0x20
    sltu	$a2,$zero,$a2
    sb	$a2,12($a3)
    # Line 10568
    lw	$v0,36($sp)
    # Line 10567
    lw	$v1,32($sp)
    # Line 10566
    lw	$a0,28($sp)
    # Line 10568
    mtc1	$v0,$f2
    # Line 10565
    lw	$a1,24($sp)
    # Line 10567
    mtc1	$v1,$f3
    # Line 10566
    mtc1	$a0,$f4
    # Line 10565
    mtc1	$a1,$f5
    # Line 10568
    cvt.s.w	$f2,$f2
    # Line 10567
    cvt.s.w	$f3,$f3
    # Line 10566
    cvt.s.w	$f4,$f4
    # Line 10565
    cvt.s.w	$f5,$f5
    # Line 10568
    swc1	$f2,300($sp)
    # Line 10567
    swc1	$f3,296($sp)
    # Line 10566
    swc1	$f4,292($sp)
    # Line 10565
    swc1	$f5,288($sp)
    # Line 10569
    lwc1	$f1,16($s1)
    swc1	$f1,304($sp)
    lwc1	$f0,20($s1)
    # Line 10553
    sd	$at,336($sp)
    # Line 10569
    swc1	$f0,308($sp)
    lwc1	$f31,24($s1)
    # Line 10572
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 10569
    swc1	$f31,312($sp)
    lwc1	$f29,28($s1)
    # Line 10552
    sd	$ra,344($sp)
    # Line 10572
    li	$a4,1
    li	$a3,1
    addiu	$a2,$sp,288
    # Line 10569
    swc1	$f29,316($sp)
    # Line 10572
    addiu	$a1,$sp,144
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s2)
    b	.L0d9a3124
    # Line 10595
    ld	$t8,344($sp)
.end RenderFunc_CopyDepth

# Function: ImageChainAddOpCopyStencil
# Declared: Line 10616 (Source lines: 10617-10649)
# Address: 0x0d9a3340 - 0x0d9a33f4 (Size: 180 bytes, Frame: 48)
.ent ImageChainAddOpCopyStencil
ImageChainAddOpCopyStencil:
    # Line 10617
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 10623
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10617
    sd	$a1,8($sp)
    sd	$a2,16($sp)
    # Line 10623
    addiu	$t9,$t9,-3824
    sd	$ra,32($sp)
    jal	sub_0d990000
    # Line 10617
    sd	$a3,24($sp)
    # Line 10623
    bnez	$v0,.L0d9a337c
    # Line 10629
    li	$v1,21
    # Line 10649
    ld	$ra,32($sp)
    # Line 10625
    move	$v0,$zero
    # Line 10649
    jr	$ra
    addiu	$sp,$sp,48
.L0d9a337c:
    # Line 10629
    sw	$v1,0($v0)
    # Line 10637
    ld	$ra,24($sp)
    sb	$ra,62($v0)
    # Line 10646
    ld	$a2,0($sp)
    # Line 10636
    ld	$a0,16($sp)
    # Line 10635
    ld	$a1,8($sp)
    # Line 10640
    lw	$a3,8($v0)
    # Line 10636
    mtc1	$a0,$f0
    # Line 10632
    la	$at,sub_0d9a0000
    # Line 10635
    mtc1	$a1,$f1
    # Line 10640
    ori	$a3,$a3,0x1c
    sw	$a3,8($v0)
    # Line 10643
    li	$a3,1
    sw	$a3,12($v0)
    # Line 10636
    cvt.s.w	$f0,$f0
    # Line 10646
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10635
    cvt.s.w	$f1,$f1
    # Line 10632
    addiu	$at,$at,13312
    sw	$at,4($v0)
    # Line 10646
    addiu	$t9,$t9,-2832
    # Line 10636
    swc1	$f0,40($v0)
    # Line 10646
    move	$a1,$v0
    # Line 10635
    swc1	$f1,24($v0)
    # Line 10646
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,4($a2)
    # Line 10649
    ld	$ra,32($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.end ImageChainAddOpCopyStencil

# Function: RenderFunc_CopyStencil
# Declared: Line 10653 (Source lines: 10654-10862)
# Address: 0x0d9a3400 - 0x0d9a3bf4 (Size: 2036 bytes, Frame: 176)
.ent RenderFunc_CopyStencil
RenderFunc_CopyStencil:
    # Line 10654
    addiu	$sp,$sp,-432
    sd	$s0,384($sp)
    # Line 10662
    lw	$s0,4112($zero)
    mtc1	$zero,$f5
    lwc1	$f4,744($s0)
    c.lt.s	$f4,$f5
    # Line 10654
    sd	$s1,376($sp)
    move	$s1,$a1
    lui	$at,0x15
    sd	$s2,368($sp)
    move	$s2,$a0
    addiu	$at,$at,20880
    sd	$gp,392($sp)
    addu	$gp,$t9,$at
    # Line 10662
    bc1f	.L0d9a3444
    # Line 10663
    mov.s	$f16,$f4
    neg.s	$f16,$f4
.L0d9a3444:
    lwc1	$f4,748($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9a345c
    sdc1	$f22,400($sp)
    # Line 10664
    b	.L0d9a3460
    neg.s	$f22,$f4
.L0d9a345c:
    mov.s	$f22,$f4
.L0d9a3460:
    # Line 10665
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f16
    c.eq.d $f0,$f5
    bc1f .L0d9a3480
    mov.s	$f4,$f16
    cvt.d.s	$f1,$f22
    c.eq.d $f1,$f5
    bc1t .L0d9a3a3c
.L0d9a3480:
    li	$v0,1
    sd	$v0,360($sp)
    sdc1	$f4,304($sp)
    sd	$s3,416($sp)
    sd	$ra,424($sp)
.L0d9a3494:
    # Line 10681
    sw	$zero,4($sp)
    # Line 10680
    sw	$zero,0($sp)
    # Line 10681
    lwc1	$f5,8($s1)
    lwc1	$f4,0($s1)
    # Line 10682
    c.lt.s $f4,$f5
    # Line 10681
    c.lt.s $f5,$f4
    # Line 10682
    mov.s	$f3,$f4
    movf.s	$f4,$f5,$fcc6
    movf.s	$f3,$f5,$fcc7
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    swc1	$f3,8($sp)
    lwc1	$f5,12($s1)
    lwc1	$f4,4($s1)
    # Line 10683
    c.lt.s $f4,$f5
    # Line 10682
    c.lt.s $f5,$f4
    # Line 10683
    mov.s	$f2,$f4
    movf.s	$f4,$f5,$fcc4
    movf.s	$f2,$f5,$fcc5
    sub.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    swc1	$f2,12($sp)
    addiu	$a0,$sp,16
    sd	$zero,16($sp)
    sw	$zero,56($a0)
    sd	$zero,48($a0)
    sd	$zero,40($a0)
    sd	$zero,32($a0)
    sd	$zero,24($a0)
    sd	$zero,16($a0)
    # Line 10682
    mfc1	$a2,$f3
    # Line 10683
    sd	$zero,8($a0)
    # Line 10693
    li	$t9,5121
    # Line 10689
    li	$t8,1
    # Line 10702
    sw	$zero,52($sp)
    # Line 10690
    move	$a1,$a2
    slti	$a3,$a2,0
    # Line 10694
    sw	$t8,40($sp)
    # Line 10690
    movn	$a1,$zero,$a3
    slt	$a3,$zero,$a2
    # Line 10693
    sw	$t9,28($sp)
    # Line 10692
    li	$ra,6401
    # Line 10690
    movn	$a2,$zero,$a3
    # Line 10692
    sw	$ra,24($sp)
    # Line 10683
    mfc1	$v0,$f2
    # Line 10690
    subu	$a1,$a1,$a2
    sw	$a1,32($sp)
    # Line 10689
    sb	$t8,16($sp)
    # Line 10691
    move	$at,$v0
    slti	$v1,$v0,0
    # Line 10688
    sw	$zero,20($sp)
    # Line 10691
    movn	$at,$zero,$v1
    slt	$v1,$zero,$v0
    # Line 10705
    lui	$s3,0x1
    # Line 10687
    sw	$zero,72($sp)
    # Line 10691
    movn	$v0,$zero,$v1
    # Line 10705
    addu	$s3,$s0,$s3
    # Line 10691
    subu	$at,$at,$v0
    sw	$at,36($sp)
    # Line 10705
    lw	$v1,-22728($s3)
    sw	$v1,60($sp)
    # Line 10708
    lwc1	$f8,0($s1)
    swc1	$f8,80($sp)
    lwc1	$f7,4($s1)
    swc1	$f7,84($sp)
    lwc1	$f6,8($s1)
    # Line 10715
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    # Line 10712
    cvt.s.w	$f2,$f2
    # Line 10711
    cvt.s.w	$f3,$f3
    # Line 10708
    swc1	$f6,88($sp)
    lwc1	$f5,12($s1)
    # Line 10709
    mtc1	$zero,$f4
    # Line 10712
    swc1	$f2,108($sp)
    # Line 10711
    swc1	$f3,104($sp)
    # Line 10710
    swc1	$f4,100($sp)
    # Line 10709
    swc1	$f4,96($sp)
    # Line 10708
    swc1	$f5,92($sp)
    # Line 10715
    addiu	$a2,$sp,80
    jal	__glOdysseyImageMovePixelsDMAtoHost
    lw	$a1,68($s2)
    # Line 10726
    ld	$ra,16($sp)
    sd	$ra,120($sp)
    addiu	$a6,$sp,16
    ld	$t9,8($a6)
    ld	$t8,16($a6)
    ld	$t3,24($a6)
    ld	$t2,32($a6)
    ld	$t1,40($a6)
    ld	$t0,48($a6)
    addiu	$a7,$sp,120
    lw	$a6,56($a6)
    sw	$a6,56($a7)
    sd	$t0,48($a7)
    sd	$t1,40($a7)
    sd	$t2,32($a7)
    sd	$t3,24($a7)
    sd	$t8,16($a7)
    sd	$t9,8($a7)
    # Line 10728
    li	$a4,1
    sw	$a4,156($sp)
    # Line 10727
    li	$a5,5125
    sw	$a5,132($sp)
    # Line 10731
    lw	$a3,7708($s3)
    lw	$a2,7704($s3)
    multu	$a2,$a3
    lw	$t9,0($s0)
    move	$a0,$s0
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    beqz	$v0,.L0d9a3a50
    sw	$v0,164($sp)
    # Line 10747
    addiu	$a5,$s2,40
    addiu	$a4,$s2,24
    # Line 10743
    lw	$v0,1796($s0)
    # Line 10747
    addiu	$a3,$sp,0
    # Line 10743
    lui	$at,0x2
    # Line 10747
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    addiu	$a2,$sp,16
    # Line 10743
    and	$at,$at,$v0
    # Line 10747
    addiu	$a1,$sp,0
    # Line 10743
    sltu	$at,$zero,$at
    sb	$at,148($sp)
    # Line 10747
    addiu	$a0,$sp,120
    bal __glOdysseyImageConvertHostImage
    lbu	$a6,62($s2)
    lw	$a1,1796($s0)
    lui	$v1,0x2
    # Line 10753
    ldc1	$f6,_lit8_3fe0000000000000
    # Line 10747
    and	$v1,$v1,$a1
    # Line 10753
    lw	$a2,12($sp)
    ld	$a0,360($sp)
    # Line 10747
    beqz	$v1,.L0d9a36c0
    # Line 10753
    mtc1	$a2,$f5
    cvt.d.w	$f5,$f5
    mul.d	$f5,$f5,$f6
    # Line 10752
    sb	$zero,148($sp)
    # Line 10753
    trunc.w.d	$f5,$f5
    swc1	$f5,12($sp)
.L0d9a36c0:
    andi	$a3,$a0,0xff
    beqz	$a3,.L0d9a3ab8
    nop
    # Line 10758
    lwc1	$f12,16($s1)
    sdc1	$f20,408($sp)
    ldc1	$f20,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    add.d	$f12,$f12,$f20
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10759
    lwc1	$f12,20($s1)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 10758
    trunc.w.s	$f13,$f0
    # Line 10759
    add.d	$f12,$f12,$f20
    # Line 10758
    mfc1	$a4,$f13
    sd	$a4,336($sp)
    # Line 10759
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10760
    lwc1	$f12,24($s1)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 10759
    trunc.w.s	$f13,$f0
    # Line 10760
    add.d	$f12,$f12,$f20
    # Line 10759
    mfc1	$a5,$f13
    sd	$a5,344($sp)
    # Line 10760
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10761
    lwc1	$f12,28($s1)
    cvt.d.s	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 10760
    trunc.w.s	$f13,$f0
    # Line 10761
    add.d	$f12,$f12,$f20
    # Line 10760
    mfc1	$a6,$f13
    sd	$a6,352($sp)
    # Line 10761
    jal	ceilf
    cvt.s.d	$f12,$f12
    # Line 10765
    ld	$t8,336($sp)
    ld	$at,352($sp)
    # Line 10766
    trunc.w.s	$f13,$f0
    # Line 10764
    sw	$zero,188($sp)
    # Line 10765
    move	$a7,$at
    slt	$v0,$at,$t8
    # Line 10766
    mfc1	$t2,$f13
    ld	$t1,344($sp)
    # Line 10765
    slt	$ra,$t8,$at
    movn	$a7,$t8,$v0
    # Line 10763
    sw	$zero,184($sp)
    # Line 10765
    movz	$t8,$at,$ra
    # Line 10766
    move	$t3,$t2
    # Line 10768
    ld	$a2,120($sp)
    # Line 10766
    move	$t0,$t2
    slt	$t9,$t2,$t1
    # Line 10768
    sd	$a2,200($sp)
    # Line 10766
    slt	$t2,$t1,$t2
    movn	$t0,$t1,$t9
    # Line 10765
    subu	$a7,$a7,$t8
    sw	$a7,192($sp)
    # Line 10766
    movz	$t1,$t3,$t2
    subu	$t0,$t0,$t1
    sw	$t0,196($sp)
    # Line 10768
    addiu	$t1,$sp,120
    ld	$a1,8($t1)
    ld	$a0,16($t1)
    ld	$v1,24($t1)
    ld	$v0,32($t1)
    ld	$ra,40($t1)
    ld	$t8,48($t1)
    addiu	$t2,$sp,200
    lw	$t1,56($t1)
    # Line 10769
    move	$a5,$a7
    # Line 10768
    sw	$t1,56($t2)
    # Line 10769
    move	$a6,$a7
    slt	$t9,$zero,$a7
    # Line 10768
    sd	$t8,48($t2)
    # Line 10769
    slti	$at,$a7,0
    movn	$a6,$zero,$t9
    # Line 10768
    sd	$ra,40($t2)
    # Line 10769
    movn	$a5,$zero,$at
    # Line 10768
    sd	$v0,32($t2)
    sd	$v1,24($t2)
    # Line 10770
    move	$a2,$t0
    slti	$t3,$t0,0
    # Line 10768
    sd	$a0,16($t2)
    # Line 10770
    move	$a3,$t0
    slt	$a4,$zero,$t0
    # Line 10768
    sd	$a1,8($t2)
    # Line 10770
    movn	$a3,$zero,$a4
    # Line 10772
    mult	$a7,$t0
    # Line 10769
    subu	$a5,$a5,$a6
    sw	$a5,216($sp)
    # Line 10770
    movn	$a2,$zero,$t3
    subu	$a2,$a2,$a3
    sw	$a2,220($sp)
    # Line 10772
    lw	$t9,0($s0)
    move	$a0,$s0
    ldc1	$f20,408($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0d9a3a84
    sw	$v0,244($sp)
    # Line 10781
    # lw $t9, -31284($gp) # &__glOdysseyImageZoomHostImage
    addiu	$a3,$sp,0
    addiu	$a2,$sp,120
    addiu	$a1,$sp,184
    mov.s	$f17,$f22
    ldc1	$f16,304($sp)
    jal	__glOdysseyImageZoomHostImage
    addiu	$a0,$sp,200
    # Line 10796
    lw	$a5,31740($s0)
    # Line 10808
    li	$ra,0x8000
    # Line 10806
    lui	$a2,0x40
    # Line 10808
    nor	$ra,$ra,$zero
    # Line 10806
    nor	$a2,$a2,$zero
    # Line 10808
    and	$ra,$a5,$ra
    lbu	$t9,3226($s0)
    # Line 10803
    li	$v1,-4096
    # Line 10804
    lui	$a1,0x10
    nor	$a1,$a1,$zero
    # Line 10808
    sltu	$t9,$zero,$t9
    sll	$t9,$t9,0xf
    # Line 10795
    lw	$a0,31836($s0)
    # Line 10800
    lui	$at,0x100
    # Line 10808
    andi	$t9,$t9,0x8000
    # Line 10800
    nor	$at,$at,$zero
    # Line 10808
    or	$t9,$t9,$ra
    # Line 10800
    and	$at,$a0,$at
    # Line 10803
    and	$at,$at,$v1
    # Line 10805
    lui	$v1,0x20
    nor	$v1,$v1,$zero
    # Line 10804
    and	$at,$at,$a1
    # Line 10808
    sw	$t9,31740($s0)
    # Line 10807
    lui	$a1,0x80
    # Line 10805
    and	$at,$at,$v1
    # Line 10807
    nor	$a1,$a1,$zero
    # Line 10794
    lw	$v1,31744($s0)
    # Line 10806
    and	$at,$at,$a2
    # Line 10799
    li	$v0,-3073
    # Line 10807
    and	$at,$at,$a1
    sw	$at,31836($s0)
    # Line 10799
    and	$v0,$v1,$v0
    sw	$v0,31744($s0)
    # Line 10810
    lw	$t8,26976($s3)
    ori	$t8,$t8,0x86
    sw	$t8,26976($s3)
    li	$t3,2
    sw	$t3,4120($zero)
    # Line 10814
    lw	$t2,1796($s0)
    lw	$t3,72($s2)
    andi	$t2,$t2,0x20
    sltu	$t2,$zero,$t2
    sb	$t2,12($t3)
    # Line 10833
    lw	$a6,196($sp)
    # Line 10832
    lw	$a7,192($sp)
    # Line 10831
    lw	$t0,188($sp)
    # Line 10833
    mtc1	$a6,$f18
    # Line 10830
    lw	$t1,184($sp)
    # Line 10832
    mtc1	$a7,$f19
    # Line 10831
    mtc1	$t0,$f21
    # Line 10830
    mtc1	$t1,$f23
    # Line 10833
    cvt.s.w	$f18,$f18
    # Line 10832
    cvt.s.w	$f19,$f19
    # Line 10831
    cvt.s.w	$f21,$f21
    # Line 10830
    cvt.s.w	$f23,$f23
    # Line 10833
    swc1	$f18,276($sp)
    # Line 10832
    swc1	$f19,272($sp)
    # Line 10831
    swc1	$f21,268($sp)
    # Line 10830
    swc1	$f23,264($sp)
    # Line 10834
    lwc1	$f17,16($s1)
    # Line 10796
    sd	$a5,328($sp)
    # Line 10834
    swc1	$f17,280($sp)
    lwc1	$f16,20($s1)
    # Line 10795
    sd	$a0,320($sp)
    # Line 10834
    swc1	$f16,284($sp)
    lwc1	$f15,24($s1)
    # Line 10837
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 10834
    swc1	$f15,288($sp)
    lwc1	$f14,28($s1)
    # Line 10837
    move	$a4,$zero
    # Line 10794
    sd	$v1,312($sp)
    # Line 10837
    li	$a3,1
    addiu	$a2,$sp,264
    # Line 10834
    swc1	$f14,292($sp)
    # Line 10837
    addiu	$a1,$sp,200
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s2)
    lw	$a1,244($sp)
    beqz	$a1,.L0d9a39cc
    # Line 10847
    ld	$a3,312($sp)
    # Line 10842
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 10847
    ld	$a3,312($sp)
.L0d9a39cc:
    # Line 10848
    ld	$a2,320($sp)
    # Line 10849
    ld	$a1,328($sp)
    sw	$a1,31740($s0)
    # Line 10848
    sw	$a2,31836($s0)
    # Line 10847
    sw	$a3,31744($s0)
    # Line 10850
    lw	$a0,26976($s3)
    ori	$a0,$a0,0x86
    sw	$a0,26976($s3)
    li	$v1,2
    sw	$v1,4120($zero)
    # Line 10854
    lw	$v0,72($s2)
    sb	$zero,12($v0)
    lw	$a1,164($sp)
    beqz	$a1,.L0d9a3a18
    ld	$s3,416($sp)
    # Line 10859
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$s3,416($sp)
.L0d9a3a18:
    ldc1	$f22,400($sp)
    # Line 10862
    ld	$gp,392($sp)
    ld	$ra,424($sp)
    ld	$s0,384($sp)
    li	$v0,1
    ld	$s1,376($sp)
    ld	$s2,368($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d9a3a3c:
    # Line 10665
    sd	$zero,360($sp)
    sdc1	$f16,304($sp)
    sd	$s3,416($sp)
    b	.L0d9a3494
    sd	$ra,424($sp)
.L0d9a3a50:
    # Line 10737
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,416($sp)
    ldc1	$f22,400($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 10862
    ld	$gp,392($sp)
    ld	$ra,424($sp)
    ld	$s0,384($sp)
    # Line 10739
    move	$v0,$zero
    # Line 10862
    ld	$s1,376($sp)
    ld	$s2,368($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d9a3a84:
    # Line 10777
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,416($sp)
    ldc1	$f22,400($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 10862
    ld	$gp,392($sp)
    ld	$ra,424($sp)
    ld	$s0,384($sp)
    # Line 10778
    move	$v0,$zero
    # Line 10862
    ld	$s1,376($sp)
    ld	$s2,368($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d9a3ab8:
    # Line 10794
    lw	$a5,31744($s0)
    # Line 10796
    lw	$a7,31740($s0)
    # Line 10808
    li	$v0,0x8000
    # Line 10799
    li	$a0,-3073
    # Line 10808
    nor	$v0,$v0,$zero
    # Line 10799
    and	$a0,$a5,$a0
    # Line 10808
    and	$v0,$a7,$v0
    lbu	$at,3226($s0)
    # Line 10803
    li	$a1,-4096
    # Line 10804
    lui	$a2,0x10
    nor	$a2,$a2,$zero
    # Line 10808
    sltu	$at,$zero,$at
    sll	$at,$at,0xf
    # Line 10795
    lw	$a6,31836($s0)
    # Line 10800
    lui	$v1,0x100
    # Line 10808
    andi	$at,$at,0x8000
    # Line 10800
    nor	$v1,$v1,$zero
    # Line 10808
    or	$at,$at,$v0
    # Line 10800
    and	$v1,$a6,$v1
    # Line 10803
    and	$v1,$v1,$a1
    # Line 10805
    lui	$a1,0x20
    # Line 10804
    and	$v1,$v1,$a2
    # Line 10806
    lui	$a2,0x40
    # Line 10805
    nor	$a1,$a1,$zero
    # Line 10806
    nor	$a2,$a2,$zero
    # Line 10799
    sw	$a0,31744($s0)
    # Line 10805
    and	$v1,$v1,$a1
    # Line 10807
    lui	$a1,0x80
    # Line 10808
    sw	$at,31740($s0)
    # Line 10807
    nor	$a1,$a1,$zero
    # Line 10806
    and	$v1,$v1,$a2
    # Line 10807
    and	$v1,$v1,$a1
    sw	$v1,31836($s0)
    # Line 10810
    lw	$ra,26976($s3)
    ori	$ra,$ra,0x86
    sw	$ra,26976($s3)
    li	$t9,2
    sw	$t9,4120($zero)
    # Line 10814
    lw	$t8,1796($s0)
    lw	$t9,72($s2)
    andi	$t8,$t8,0x20
    sltu	$t8,$zero,$t8
    sb	$t8,12($t9)
    # Line 10821
    lw	$t0,12($sp)
    # Line 10820
    lw	$t1,8($sp)
    # Line 10819
    lw	$t2,4($sp)
    # Line 10821
    mtc1	$t0,$f0
    # Line 10818
    lw	$t3,0($sp)
    # Line 10820
    mtc1	$t1,$f1
    # Line 10819
    mtc1	$t2,$f2
    # Line 10818
    mtc1	$t3,$f3
    # Line 10821
    cvt.s.w	$f0,$f0
    # Line 10820
    cvt.s.w	$f1,$f1
    # Line 10819
    cvt.s.w	$f2,$f2
    # Line 10818
    cvt.s.w	$f3,$f3
    # Line 10821
    swc1	$f0,276($sp)
    # Line 10820
    swc1	$f1,272($sp)
    # Line 10819
    swc1	$f2,268($sp)
    # Line 10818
    swc1	$f3,264($sp)
    # Line 10822
    lwc1	$f31,16($s1)
    # Line 10796
    sd	$a7,328($sp)
    # Line 10822
    swc1	$f31,280($sp)
    lwc1	$f29,20($s1)
    # Line 10795
    sd	$a6,320($sp)
    # Line 10822
    swc1	$f29,284($sp)
    lwc1	$f27,24($s1)
    # Line 10825
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 10822
    swc1	$f27,288($sp)
    lwc1	$f25,28($s1)
    # Line 10825
    move	$a4,$zero
    # Line 10794
    sd	$a5,312($sp)
    # Line 10825
    li	$a3,1
    addiu	$a2,$sp,264
    # Line 10822
    swc1	$f25,292($sp)
    # Line 10825
    addiu	$a1,$sp,120
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s2)
    b	.L0d9a39cc
    # Line 10847
    ld	$a3,312($sp)
.end RenderFunc_CopyStencil

# Function: ImageChainAddOpDownloadColor
# Declared: Line 10867 (Source lines: 10872-10916)
# Address: 0x0d9a3c00 - 0x0d9a3dac (Size: 428 bytes, Frame: 192)
.ent ImageChainAddOpDownloadColor
ImageChainAddOpDownloadColor:
    # Line 10872
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    sd	$a1,16($sp)
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    # Line 10878
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10872
    sd	$a4,24($sp)
    sd	$a5,8($sp)
    # Line 10878
    addiu	$t9,$t9,-3824
    sd	$ra,48($sp)
    jal	sub_0d990000
    sd	$s0,56($sp)
    # Line 10916
    ld	$ra,48($sp)
    # Line 10878
    bnez	$v0,.L0d9a3c4c
    move	$s0,$v0
    # Line 10880
    move	$v0,$zero
    ld	$s0,56($sp)
    # Line 10916
    jr	$ra
    addiu	$sp,$sp,64
.L0d9a3c4c:
    # Line 10884
    sw	$zero,0($v0)
    # Line 10886
    lw	$v0,8($v0)
    # Line 10889
    li	$at,1
    sw	$at,12($s0)
    # Line 10885
    la	$v1,__glOdysseyRenderFunc_DownloadColor
    sw	$v1,4($s0)
    # Line 10893
    ld	$ra,40($sp)
    # Line 10886
    ori	$v0,$v0,0x1a
    sw	$v0,8($s0)
    # Line 10893
    lwc1	$f7,0($ra)
    swc1	$f7,24($s0)
    # Line 10894
    lwc1	$f6,4($ra)
    swc1	$f6,28($s0)
    # Line 10895
    lwc1	$f5,8($ra)
    swc1	$f5,32($s0)
    # Line 10896
    lwc1	$f4,12($ra)
    # Line 10897
    ld	$ra,24($sp)
    # Line 10896
    swc1	$f4,36($s0)
    # Line 10897
    lwc1	$f3,0($ra)
    # Line 10903
    ld	$a3,32($sp)
    # Line 10897
    swc1	$f3,40($s0)
    # Line 10898
    lwc1	$f2,4($ra)
    # Line 10903
    ld	$a2,16($sp)
    # Line 10898
    swc1	$f2,44($s0)
    # Line 10899
    lwc1	$f1,8($ra)
    # Line 10903
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 10899
    swc1	$f1,48($s0)
    # Line 10903
    addiu	$t9,$t9,-2832
    # Line 10900
    lwc1	$f0,12($ra)
    # Line 10903
    ld	$a0,0($sp)
    move	$a1,$s0
    jal	sub_0d990000
    # Line 10900
    swc1	$f0,52($s0)
    # Line 10906
    ld	$a0,8($sp)
    # Line 10916
    ld	$ra,48($sp)
    # Line 10906
    li	$a2,6400
    # Line 10916
    li	$v0,1
    # Line 10906
    beqz	$a0,.L0d9a3da0
    ldc1	$f4,_lit8_3ff0000000000000
    lw	$a1,68($s0)
    lw	$a1,8($a1)
    beq	$a1,$a2,.L0d9a3da0
    nop
    lwc1	$f8,24($s0)
    cvt.d.s	$f8,$f8
    lwc1	$f12,40($s0)
    lwc1	$f13,44($s0)
    c.eq.d	$f8,$f4
    lwc1	$f11,36($s0)
    lwc1	$f10,32($s0)
    bc1f	.L0d9a3d94
    lwc1	$f9,28($s0)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f4
    bc1f .L0d9a3d94
    nop
    cvt.d.s	$f10,$f10
    c.eq.d $f10,$f4
    bc1f .L0d9a3d94
    nop
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f4
    bc1f .L0d9a3d94
    dmtc1	$zero,$f4
    cvt.d.s	$f12,$f12
    c.eq.d $f12,$f4
    bc1f .L0d9a3d94
    nop
    cvt.d.s	$f13,$f13
    c.eq.d $f13,$f4
    bc1f .L0d9a3d94
    nop
    lwc1	$f14,48($s0)
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f4
    bc1f .L0d9a3d94
    nop
    lwc1	$f15,52($s0)
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f4
    bc1t .L0d9a3da0
    nop
.L0d9a3d94:
    # Line 10912
    lw	$a2,8($s0)
    ori	$a2,$a2,0x1
    sw	$a2,8($s0)
.L0d9a3da0:
    ld	$s0,56($sp)
    # Line 10916
    jr	$ra
    addiu	$sp,$sp,64
.end ImageChainAddOpDownloadColor

# Function: __glOdysseyRenderFunc_DownloadColor
# Declared: Line 10920 (Source lines: 10922-11714)
# Address: 0x0d9a3db0 - 0x0d9a579c (Size: 6636 bytes, Frame: 208)
.globl __glOdysseyRenderFunc_DownloadColor
.ent __glOdysseyRenderFunc_DownloadColor
__glOdysseyRenderFunc_DownloadColor:
    # Line 10922
    lui	$at,0x15
    # Line 10947
    lwc1	$f0,24($a0)
    # Line 10922
    addiu	$sp,$sp,-848
    addiu	$at,$at,18400
    sd	$gp,720($sp)
    addu	$gp,$t9,$at
    # Line 10947
    ldc1	$f4,_lit8_404f800000000000
    cvt.d.s	$f0,$f0
    # Line 10922
    sd	$s2,728($sp)
    # Line 10947
    c.lt.d	$f4,$f0
    # Line 10926
    lw	$s2,4112($zero)
    # Line 10922
    sd	$s1,712($sp)
    move	$s1,$a0
    # Line 10947
    bc1t	.L0d9a3e28
    sd	$s0,824($sp)
    lwc1	$f1,28($a0)
    cvt.d.s	$f1,$f1
    c.lt.d $f4,$f1
    bc1t .L0d9a3e28
    nop
    lwc1	$f2,32($a0)
    cvt.d.s	$f2,$f2
    c.lt.d $f4,$f2
    bc1t .L0d9a3e28
    nop
    lwc1	$f3,36($a0)
    cvt.d.s	$f3,$f3
    c.lt.d $f4,$f3
    bc1f .L0d9a4838
    nop
.L0d9a3e28:
    sd	$a1,704($sp)
    # Line 10949
    lwc1	$f4,_lit_40800000
    lui	$s0,0x1
    sd	$ra,776($sp)
    addu	$s0,$s2,$s0
    swc1	$f4,7712($s0)
.L0d9a3e40:
    # Line 10956
    lw	$a2,72($s1)
    lw	$a0,68($s1)
    # lw $t9, -31192($gp) # &__glOdysseyImageCalcXferWriteParams
    lw	$a2,52($a2)
    lw	$a1,12($a0)
    addiu	$a3,$sp,0
    jal	__glOdysseyImageCalcXferWriteParams
    lw	$a0,8($a0)
    # Line 10966
    lw	$a1,68($s1)
    lw	$a0,8($a1)
    li	$a7,6400
    beq	$a7,$a0,.L0d9a4680
    nop
.L0d9a3e74:
    # Line 10986
    lw	$a3,31600($s2)
    andi	$a3,$a3,0x80
    li	$a5,1
    beqz	$a3,.L0d9a46e8
    lbu	$a0,4($sp)
    # Line 10996
    beq	$a5,$a0,.L0d9a46fc
    # Line 10998
    li	$a6,4354
.L0d9a3e90:
    # Line 11011
    lbu	$a4,2($sp)
.L0d9a3e94:
    li	$t0,3
    beq	$a4,$t0,.L0d9a4614
    li	$t1,4
    beq	$a4,$t1,.L0d9a4614
    nop
    # Line 11022
    lw	$a4,1928($s2)
.L0d9a3eac:
    # Line 11031
    lbu	$t2,0($sp)
.L0d9a3eb0:
    xor	$t3,$a6,$a4
    sltiu	$t3,$t3,1
    movn	$t2,$zero,$t3
    beqz	$t2,.L0d9a5110
    sb	$t2,0($sp)
    # Line 11116
    beqz	$a0,.L0d9a4854
    nop
    sd	$s3,832($sp)
    # Line 11421
    mtc1	$zero,$f6
    # Line 11420
    lwc1	$f4,_lit_3f800000
    # Line 11421
    swc1	$f6,420($sp)
    swc1	$f6,416($sp)
    swc1	$f6,412($sp)
    swc1	$f6,408($sp)
    # Line 11420
    swc1	$f4,404($sp)
    swc1	$f4,400($sp)
    swc1	$f4,396($sp)
    swc1	$f4,392($sp)
    # Line 11449
    lw	$a4,31804($s2)
    # Line 11448
    lw	$t1,31800($s2)
    # Line 11447
    lw	$a5,31796($s2)
    # Line 11446
    lw	$s3,31740($s2)
    # Line 11445
    lw	$t2,-26968($s0)
    lw	$a6,-26972($s0)
    lw	$t0,-26976($s0)
    lw	$a7,-26980($s0)
    # Line 11423
    swc1	$f6,452($sp)
    swc1	$f6,448($sp)
    swc1	$f6,444($sp)
    swc1	$f6,440($sp)
    # Line 11422
    swc1	$f6,436($sp)
    swc1	$f6,432($sp)
    swc1	$f6,428($sp)
    swc1	$f6,424($sp)
    # Line 11444
    lw	$ra,31940($s2)
    lw	$a0,31952($s2)
    lw	$a3,31964($s2)
    lw	$a2,31960($s2)
    lw	$a1,31956($s2)
    lw	$v1,31948($s2)
    addiu	$at,$sp,456
    lw	$v0,31944($s2)
    sw	$v0,4($at)
    sw	$v1,8($at)
    sw	$a1,16($at)
    sw	$a2,20($at)
    sw	$a3,24($at)
    sw	$a0,12($at)
    # Line 11450
    addiu	$a0,$sp,488
    # Line 11444
    sw	$ra,456($sp)
    sd	$t2,696($sp)
    sd	$t1,688($sp)
    sd	$t0,680($sp)
    sd	$a7,672($sp)
    sd	$a6,664($sp)
    sd	$a5,656($sp)
    sd	$a4,648($sp)
    # Line 11450
    ld	$a3,-29672($s0)
    ld	$a2,-29680($s0)
    ld	$a1,-29688($s0)
    ld	$v1,-29696($s0)
    ld	$v0,-29704($s0)
    ld	$at,-29712($s0)
    sd	$at,8($a0)
    sd	$v0,16($a0)
    sd	$v1,24($a0)
    sd	$a1,32($a0)
    sd	$a2,40($a0)
    sd	$a3,48($a0)
    ld	$ra,-29664($s0)
    sd	$ra,56($a0)
    ld	$ra,-29720($s0)
    sd	$ra,488($sp)
    # Line 11452
    addiu	$a0,$sp,552
    # Line 11451
    lw	$a4,-29724($s0)
    sd	$a4,816($sp)
    # Line 11452
    lw	$at,-29460($s0)
    lw	$t1,-29432($s0)
    lw	$t0,-29436($s0)
    lw	$a3,-29440($s0)
    lw	$a2,-29444($s0)
    lw	$a1,-29448($s0)
    lw	$v1,-29452($s0)
    lw	$v0,-29456($s0)
    sw	$v0,4($a0)
    sw	$v1,8($a0)
    sw	$a1,12($a0)
    sw	$a2,16($a0)
    sw	$a3,20($a0)
    sw	$t0,24($a0)
    sw	$t1,28($a0)
    sw	$at,552($sp)
    # Line 11454
    lw	$a6,-29324($s0)
    lw	$a5,-29328($s0)
    lw	$a7,-29332($s0)
    # Line 11457
    lui	$v1,0x2
    # Line 11453
    lw	$a4,-29464($s0)
    # Line 11457
    nor	$v1,$v1,$zero
    and	$v1,$s3,$v1
    sw	$v1,31740($s2)
    # Line 11458
    lw	$v0,26976($s0)
    ori	$v0,$v0,0x2
    sw	$v0,26976($s0)
    li	$t0,2
    sw	$t0,4120($zero)
    # Line 11461
    lw	$ra,31956($s2)
    lui	$at,0x4
    or	$ra,$ra,$at
    # Line 11462
    ori	$ra,$ra,0x4000
    sw	$ra,31956($s2)
    # Line 11463
    lw	$t9,26976($s0)
    ori	$t9,$t9,0x200
    sw	$t9,26976($s0)
    sw	$t0,4120($zero)
    # Line 11467
    lw	$t2,26976($s0)
    lui	$t1,0x20
    # Line 11466
    lw	$t3,-26972($s0)
    lui	$t8,0x10
    # Line 11467
    or	$t2,$t1,$t2
    sw	$t2,26976($s0)
    # Line 11466
    or	$t3,$t3,$t8
    sw	$t3,-26972($s0)
    # Line 11467
    sw	$t0,4120($zero)
    # Line 11478
    lwc1	$f11,24($s1)
    swc1	$f11,392($sp)
    # Line 11479
    lwc1	$f13,28($s1)
    swc1	$f13,396($sp)
    # Line 11480
    lwc1	$f14,32($s1)
    swc1	$f14,400($sp)
    # Line 11481
    lwc1	$f12,36($s1)
    addiu	$a0,$sp,392
    swc1	$f12,404($sp)
    abs.s	$f9,$f11
    lwc1	$f8,4($a0)
    c.lt.s $f4,$f9
    abs.s	$f8,$f8
    movf.s	$f9,$f4,$fcc7
    lwc1	$f7,8($a0)
    c.lt.s $f9,$f8
    abs.s	$f7,$f7
    movf.s	$f8,$f9,$fcc6
    lwc1	$f5,12($a0)
    c.lt.s $f8,$f7
    abs.s	$f5,$f5
    movf.s	$f7,$f8,$fcc5
    sd	$a7,784($sp)
    sd	$a6,792($sp)
    c.lt.s $f7,$f5
    sd	$a5,800($sp)
    sd	$a4,808($sp)
    movf.s	$f5,$f7,$fcc4
    # Line 11484
    lw	$a0,31600($s2)
    dsll32	$a0,$a0,0xc
    bgez	$a0,.L0d9a47e4
    lwc1	$f4,40($s1)
    # Line 11516
    swc1	$f4,408($sp)
    # Line 11517
    lwc1	$f15,44($s1)
    swc1	$f15,412($sp)
    # Line 11518
    lwc1	$f8,48($s1)
    swc1	$f8,416($sp)
    # Line 11519
    lwc1	$f10,52($s1)
    # Line 11516
    mov.s	$f7,$f4
    # Line 11519
    swc1	$f10,420($sp)
.L0d9a413c:
    mtc1	$zero,$f9
    addiu	$a0,$sp,408
    lwc1	$f18,408($sp)
    abs.s	$f18,$f18
    lwc1	$f17,4($a0)
    c.lt.s $f9,$f18
    abs.s	$f17,$f17
    movf.s	$f18,$f9,$fcc3
    lwc1	$f16,8($a0)
    c.lt.s $f18,$f17
    abs.s	$f16,$f16
    movf.s	$f17,$f18,$fcc2
    lwc1	$f9,12($a0)
    c.lt.s $f17,$f16
    abs.s	$f9,$f9
    movf.s	$f16,$f17,$fcc1
    c.lt.s	$f16,$f9
    movf.s	$f9,$f16,$fcc0
    # Line 11523
    abs.s	$f16,$f11
    c.eq.s $f16,$f6
    bc1t .L0d9a41a8
    lwc1	$f4,7712($s0)
    # Line 11529
    div.s	$f19,$f7,$f16
    swc1	$f19,424($sp)
    # Line 11530
    mul.s	$f17,$f4,$f19
    b	.L0d9a41b8
    swc1	$f17,440($sp)
.L0d9a41a8:
    # Line 11532
    mov.s	$f17,$f7
    swc1	$f7,424($sp)
    mov.s	$f19,$f7
    swc1	$f7,440($sp)
.L0d9a41b8:
    abs.s	$f7,$f13
    c.eq.s $f7,$f6
    bc1t .L0d9a41dc
    # Line 11540
    mov.s	$f16,$f15
    # Line 11537
    div.s	$f23,$f15,$f7
    swc1	$f23,428($sp)
    # Line 11538
    mul.s	$f16,$f4,$f23
    b	.L0d9a41e8
    swc1	$f16,444($sp)
.L0d9a41dc:
    # Line 11540
    swc1	$f15,428($sp)
    mov.s	$f23,$f15
    swc1	$f15,444($sp)
.L0d9a41e8:
    abs.s	$f7,$f14
    c.eq.s $f7,$f6
    bc1t .L0d9a420c
    # Line 11548
    mov.s	$f18,$f8
    # Line 11545
    div.s	$f21,$f8,$f7
    swc1	$f21,432($sp)
    # Line 11546
    mul.s	$f18,$f4,$f21
    b	.L0d9a4218
    swc1	$f18,448($sp)
.L0d9a420c:
    # Line 11548
    swc1	$f8,432($sp)
    mov.s	$f21,$f8
    swc1	$f8,448($sp)
.L0d9a4218:
    abs.s	$f7,$f12
    c.eq.s $f7,$f6
    bc1t .L0d9a423c
    # Line 11555
    mov.s	$f15,$f10
    # Line 11552
    div.s	$f25,$f10,$f7
    swc1	$f25,436($sp)
    # Line 11553
    mul.s	$f15,$f4,$f25
    b	.L0d9a4248
    swc1	$f15,452($sp)
.L0d9a423c:
    # Line 11555
    swc1	$f10,436($sp)
    mov.s	$f25,$f10
    swc1	$f10,452($sp)
.L0d9a4248:
    mtc1	$zero,$f7
    mtc1	$zero,$f8
    addiu	$a4,$sp,440
    addiu	$a0,$sp,424
    # Line 11560
    lwc1	$f1,440($sp)
    # Line 11555
    lwc1	$f0,424($sp)
    # Line 11560
    abs.s	$f1,$f1
    lwc1	$f31,4($a4)
    # Line 11555
    abs.s	$f0,$f0
    lwc1	$f2,4($a0)
    # Line 11560
    c.lt.s $f8,$f1
    # Line 11555
    c.lt.s $f7,$f0
    # Line 11560
    abs.s	$f31,$f31
    movf.s	$f1,$f8,$fcc7
    lwc1	$f29,8($a4)
    # Line 11555
    abs.s	$f8,$f2
    movf.s	$f0,$f7,$fcc6
    lwc1	$f27,8($a0)
    # Line 11560
    c.lt.s $f1,$f31
    # Line 11555
    c.lt.s $f0,$f8
    # Line 11560
    abs.s	$f29,$f29
    movf.s	$f31,$f1,$fcc5
    lwc1	$f10,12($a4)
    # Line 11555
    abs.s	$f27,$f27
    movf.s	$f8,$f0,$fcc4
    lwc1	$f7,12($a0)
    # Line 11560
    c.lt.s $f31,$f29
    # Line 11555
    c.lt.s $f8,$f27
    # Line 11560
    abs.s	$f10,$f10
    movf.s	$f29,$f31,$fcc3
    # Line 11555
    abs.s	$f7,$f7
    movf.s	$f27,$f8,$fcc2
    # Line 11560
    c.lt.s $f29,$f10
    # Line 11555
    c.lt.s	$f27,$f7
    movf.s	$f10,$f29,$fcc1
    movf.s	$f7,$f27,$fcc0
    mov.s	$f8,$f10
    # Line 11570
    c.lt.s	$f4,$f5
    li	$a0,1
    movf	$a0,$zero,$fcc0
    beqz	$a0,.L0d9a45d4
    nop
    c.le.s $f10,$f4
    bc1f .L0d9a45d4
    nop
    addiu	$a0,$sp,392
    lwc1	$f5,392($sp)
    c.lt.s $f4,$f5
    bc1f .L0d9a431c
    nop
    # Line 11578
    swc1	$f4,392($sp)
    b	.L0d9a4334
    lwc1	$f4,7712($s0)
.L0d9a431c:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4334
    nop
    # Line 11580
    swc1	$f7,392($sp)
    lwc1	$f4,7712($s0)
.L0d9a4334:
    # Line 11570
    lwc1	$f5,4($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4350
    nop
    # Line 11578
    swc1	$f4,4($a0)
    b	.L0d9a4368
    lwc1	$f4,7712($s0)
.L0d9a4350:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4368
    nop
    # Line 11580
    swc1	$f7,4($a0)
    lwc1	$f4,7712($s0)
.L0d9a4368:
    # Line 11570
    lwc1	$f5,8($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4384
    nop
    # Line 11578
    swc1	$f4,8($a0)
    b	.L0d9a439c
    lwc1	$f4,7712($s0)
.L0d9a4384:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a439c
    nop
    # Line 11580
    swc1	$f7,8($a0)
    lwc1	$f4,7712($s0)
.L0d9a439c:
    # Line 11570
    lwc1	$f5,12($a0)
    c.lt.s	$f4,$f5
    bc1f	.L0d9a43b8
    nop
    # Line 11578
    swc1	$f4,12($a0)
    b	.L0d9a43d0
    lwc1	$f4,7712($s0)
.L0d9a43b8:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a43d0
    nop
    # Line 11580
    swc1	$f7,12($a0)
    lwc1	$f4,7712($s0)
.L0d9a43d0:
    # Line 11576
    lwc1	$f2,24($s1)
    abs.s	$f2,$f2
    c.lt.s $f4,$f2
    bc1f .L0d9a43ec
    nop
    # Line 11589
    swc1	$f17,408($sp)
    lwc1	$f4,7712($s0)
.L0d9a43ec:
    lwc1	$f3,28($s1)
    abs.s	$f3,$f3
    c.lt.s $f4,$f3
    bc1f .L0d9a4408
    nop
    # Line 11592
    swc1	$f16,412($sp)
    lwc1	$f4,7712($s0)
.L0d9a4408:
    lwc1	$f5,32($s1)
    abs.s	$f5,$f5
    c.lt.s $f4,$f5
    bc1f .L0d9a4424
    nop
    # Line 11595
    swc1	$f18,416($sp)
    lwc1	$f4,7712($s0)
.L0d9a4424:
    lwc1	$f6,36($s1)
    abs.s	$f6,$f6
    c.lt.s $f4,$f6
    bc1f .L0d9a4440
    # Line 11600
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 11598
    swc1	$f15,420($sp)
    # Line 11600
    # lw $t9, -32724($gp) # &sub_0d9a0000
.L0d9a4440:
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,408
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,392
.L0d9a4450:
    # Line 11686
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
.L0d9a4454:
    lw	$a1,68($s1)
    move	$a4,$zero
    ld	$a2,704($sp)
    li	$a3,1
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    ld	$ra,776($sp)
    ld	$a0,784($sp)
    ld	$a1,792($sp)
    ld	$a2,800($sp)
    ld	$a4,808($sp)
    ld	$a5,816($sp)
    # Line 11692
    ld	$t0,672($sp)
    ld	$a7,680($sp)
    ld	$a6,664($sp)
    ld	$a3,696($sp)
    # Line 11691
    lw	$v1,456($sp)
    sw	$v1,31940($s2)
    # Line 11696
    ld	$v1,648($sp)
    # Line 11691
    addiu	$t1,$sp,456
    lw	$t9,12($t1)
    lw	$t8,16($t1)
    lw	$t3,20($t1)
    lw	$v0,4($t1)
    lw	$at,8($t1)
    lw	$t1,24($t1)
    sw	$t1,31964($s2)
    sw	$t3,31960($s2)
    sw	$t8,31956($s2)
    sw	$t9,31952($s2)
    sw	$at,31948($s2)
    sw	$v0,31944($s2)
    # Line 11692
    sw	$a3,-26968($s0)
    sw	$a6,-26972($s0)
    sw	$a7,-26976($s0)
    sw	$t0,-26980($s0)
    # Line 11696
    sw	$v1,31804($s2)
    # Line 11693
    sw	$s3,31740($s2)
    # Line 11694
    ld	$at,656($sp)
    # Line 11695
    ld	$v0,688($sp)
    sw	$v0,31800($s2)
    li	$t2,2
    # Line 11697
    addiu	$a6,$sp,488
    # Line 11694
    sw	$at,31796($s2)
    ld	$s3,832($sp)
    # Line 11697
    ld	$t3,8($a6)
    ld	$t8,16($a6)
    ld	$t9,24($a6)
    ld	$at,32($a6)
    ld	$v0,40($a6)
    ld	$v1,48($a6)
    sd	$v1,-29672($s0)
    sd	$v0,-29680($s0)
    sd	$at,-29688($s0)
    sd	$t9,-29696($s0)
    sd	$t8,-29704($s0)
    sd	$t3,-29712($s0)
    ld	$a3,56($a6)
    sd	$a3,-29664($s0)
    ld	$a3,488($sp)
    sd	$a3,-29720($s0)
    # Line 11699
    addiu	$a6,$sp,552
    # Line 11698
    sw	$a5,-29724($s0)
    # Line 11699
    lw	$a3,28($a6)
    sw	$a3,-29432($s0)
    lw	$v1,24($a6)
    sw	$v1,-29436($s0)
    lw	$v0,20($a6)
    sw	$v0,-29440($s0)
    lw	$at,16($a6)
    sw	$at,-29444($s0)
    lw	$t9,12($a6)
    sw	$t9,-29448($s0)
    lw	$t8,8($a6)
    sw	$t8,-29452($s0)
    lw	$t3,4($a6)
    sw	$t3,-29456($s0)
    lw	$a5,552($sp)
    sw	$a5,-29460($s0)
    # Line 11700
    sw	$a4,-29464($s0)
    # Line 11701
    sw	$a0,-29332($s0)
    sw	$a2,-29328($s0)
    # Line 11703
    lui	$a6,0x23
    lw	$a5,26976($s0)
    # Line 11701
    sw	$a1,-29324($s0)
    # Line 11703
    ori	$a6,$a6,0x8203
    or	$a5,$a5,$a6
    sw	$a5,26976($s0)
    sw	$t2,4120($zero)
.L0d9a45b8:
    ld	$s0,824($sp)
    # Line 11714
    ld	$gp,720($sp)
    li	$v0,1
    ld	$s1,712($sp)
    ld	$s2,728($sp)
    jr	$ra
    addiu	$sp,$sp,848
.L0d9a45d4:
    # Line 11603
    c.le.s $f5,$f4
    bc1f .L0d9a4640
    nop
    c.lt.s $f4,$f9
    bc1f .L0d9a4640
    nop
    c.lt.s	$f4,$f7
    bc1f	.L0d9a5458
    addiu	$a0,$sp,392
    lwc1	$f4,7712($s0)
    lwc1	$f5,392($sp)
    c.lt.s $f4,$f5
    bc1f .L0d9a4cb8
    nop
    # Line 11613
    b	.L0d9a4ccc
    swc1	$f4,392($sp)
.L0d9a4614:
    # Line 11014
    lw	$a4,1928($s2)
    li	$t0,4352
    bne	$a4,$t0,.L0d9a3eb0
    # Line 11031
    lbu	$t2,0($sp)
    # Line 11014
    lw	$t1,8($s1)
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d9a3eb0
    # Line 11031
    lbu	$t2,0($sp)
    # Line 11022
    sb	$zero,0($sp)
    b	.L0d9a3eac
    lw	$a4,1928($s2)
.L0d9a4640:
    # Line 11637
    beqz	$a0,.L0d9a4d8c
    # Line 11676
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 11637
    c.lt.s $f4,$f8
    bc1f .L0d9a4d8c
    # Line 11676
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 11637
    c.lt.s $f4,$f7
    bc1f .L0d9a5370
    # Line 11661
    dmtc1	$zero,$f29
    # Line 11637
    addiu	$a0,$sp,392
    lwc1	$f4,7712($s0)
    lwc1	$f5,392($sp)
    c.lt.s $f4,$f5
    bc1f .L0d9a4714
    nop
    # Line 11651
    b	.L0d9a4728
    swc1	$f4,392($sp)
.L0d9a4680:
    # Line 10966
    lwc1	$f7,24($s1)
    dmtc1	$zero,$f4
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f4
    bc1f .L0d9a46ac
    nop
    lwc1	$f8,40($s1)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f4
    bc1t .L0d9a46b8
    nop
.L0d9a46ac:
    # Line 10968
    sb	$zero,0($sp)
    lw	$a1,68($s1)
    lw	$a0,8($a1)
.L0d9a46b8:
    # Line 10975
    bne	$a7,$a0,.L0d9a3e74
    nop
    lw	$a0,12($a1)
    li	$t2,5120
    beq	$a0,$t2,.L0d9a46e0
    li	$t3,5122
    beq	$a0,$t3,.L0d9a46e0
    li	$t8,5124
    bne	$a0,$t8,.L0d9a3e74
    nop
.L0d9a46e0:
    b	.L0d9a3e74
    # Line 10979
    sb	$zero,0($sp)
.L0d9a46e8:
    # Line 10986
    beq	$a5,$a0,.L0d9a46f8
    nop
    # Line 10996
    b	.L0d9a3e90
    li	$a6,4354
.L0d9a46f8:
    # Line 10988
    sb	$zero,0($sp)
.L0d9a46fc:
    # Line 10996
    lw	$t9,1924($s2)
    li	$a6,4354
    bne	$a6,$t9,.L0d9a3e94
    # Line 11011
    lbu	$a4,2($sp)
    # Line 10998
    b	.L0d9a3e90
    sb	$zero,0($sp)
.L0d9a4714:
    # Line 11651
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4728
    nop
    # Line 11653
    swc1	$f7,392($sp)
.L0d9a4728:
    # Line 11637
    lwc1	$f4,7712($s0)
    lwc1	$f5,4($a0)
    c.lt.s	$f4,$f5
    bc1f	.L0d9a4744
    nop
    # Line 11651
    b	.L0d9a4758
    swc1	$f4,4($a0)
.L0d9a4744:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4758
    nop
    # Line 11653
    swc1	$f7,4($a0)
.L0d9a4758:
    # Line 11637
    lwc1	$f4,7712($s0)
    lwc1	$f5,8($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4774
    nop
    # Line 11651
    b	.L0d9a4788
    swc1	$f4,8($a0)
.L0d9a4774:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4788
    nop
    # Line 11653
    swc1	$f7,8($a0)
.L0d9a4788:
    # Line 11637
    lwc1	$f4,7712($s0)
    lwc1	$f5,12($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a47a4
    nop
    # Line 11651
    b	.L0d9a47b8
    swc1	$f4,12($a0)
.L0d9a47a4:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a47b8
    nop
    # Line 11653
    swc1	$f7,12($a0)
.L0d9a47b8:
    # Line 11656
    swc1	$f6,408($sp)
    swc1	$f6,412($sp)
    swc1	$f6,416($sp)
    swc1	$f6,420($sp)
.L0d9a47c8:
    # Line 11672
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,408
    bal __glOdysseyImageChainAddOpAcceptSignedDataFromHost
    addiu	$a0,$sp,392
    b	.L0d9a4454
    # Line 11686
    nop	# was lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
.L0d9a47e4:
    # Line 11511
    ldc1	$f16,_lit8_3fe0000000000000
    cvt.d.s	$f7,$f4
    mul.d	$f7,$f7,$f16
    cvt.s.d	$f7,$f7
    swc1	$f7,408($sp)
    # Line 11512
    lwc1	$f15,44($s1)
    cvt.d.s	$f15,$f15
    mul.d	$f15,$f15,$f16
    cvt.s.d	$f15,$f15
    swc1	$f15,412($sp)
    # Line 11513
    lwc1	$f8,48($s1)
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f16
    cvt.s.d	$f8,$f8
    swc1	$f8,416($sp)
    # Line 11514
    lwc1	$f10,52($s1)
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f16
    cvt.s.d	$f10,$f10
    b	.L0d9a413c
    swc1	$f10,420($sp)
.L0d9a4838:
    sd	$a1,704($sp)
    # Line 10951
    lwc1	$f8,_lit_40fffe00
    lui	$s0,0x1
    sd	$ra,776($sp)
    addu	$s0,$s2,$s0
    b	.L0d9a3e40
    swc1	$f8,7712($s0)
.L0d9a4854:
    # Line 11116
    lw	$a1,68($s1)
    lw	$t8,8($a1)
    beq	$a7,$t8,.L0d9a570c
    # Line 11132
    mtc1	$zero,$f6
    # Line 11134
    swc1	$f6,260($sp)
    swc1	$f6,256($sp)
    swc1	$f6,252($sp)
    swc1	$f6,248($sp)
    # Line 11133
    swc1	$f6,244($sp)
    swc1	$f6,240($sp)
    swc1	$f6,236($sp)
    swc1	$f6,232($sp)
    # Line 11131
    lwc1	$f4,_lit_3f800000
    # Line 11132
    swc1	$f6,228($sp)
    swc1	$f6,224($sp)
    swc1	$f6,220($sp)
    swc1	$f6,216($sp)
    # Line 11131
    swc1	$f4,212($sp)
    swc1	$f4,208($sp)
    swc1	$f4,204($sp)
    swc1	$f4,200($sp)
    # Line 11154
    lw	$t9,31940($s2)
    lw	$a0,31956($s2)
    lw	$a2,31964($s2)
    lw	$a1,31960($s2)
    lw	$v1,31952($s2)
    lw	$v0,31948($s2)
    lw	$at,31944($s2)
    # Line 11155
    lw	$a3,-26980($s0)
    lw	$a4,-26976($s0)
    lw	$a5,-26972($s0)
    lw	$a6,-26968($s0)
    # Line 11156
    lw	$a7,31740($s2)
    # Line 11157
    lw	$t0,31796($s2)
    # Line 11158
    lw	$t1,31800($s2)
    # Line 11159
    lw	$t2,31804($s2)
    sd	$t2,584($sp)
    # Line 11158
    sd	$t1,600($sp)
    # Line 11157
    sd	$t0,624($sp)
    # Line 11156
    sd	$a7,640($sp)
    # Line 11155
    sd	$a6,616($sp)
    sd	$a5,608($sp)
    sd	$a4,632($sp)
    # Line 11154
    addiu	$ra,$sp,264
    # Line 11155
    sd	$a3,592($sp)
    # Line 11154
    sw	$at,4($ra)
    sw	$v0,8($ra)
    sw	$v1,12($ra)
    sw	$a1,20($ra)
    sw	$a2,24($ra)
    sw	$a0,16($ra)
    # Line 11160
    addiu	$a0,$sp,296
    # Line 11154
    sw	$t9,264($sp)
    # Line 11160
    ld	$a1,-29664($s0)
    sd	$a1,56($a0)
    ld	$v1,-29672($s0)
    sd	$v1,48($a0)
    ld	$v0,-29680($s0)
    sd	$v0,40($a0)
    ld	$at,-29688($s0)
    sd	$at,32($a0)
    ld	$ra,-29696($s0)
    sd	$ra,24($a0)
    ld	$t9,-29704($s0)
    sd	$t9,16($a0)
    ld	$t8,-29712($s0)
    sd	$t8,8($a0)
    ld	$t3,-29720($s0)
    sd	$t3,296($sp)
    # Line 11162
    addiu	$a4,$sp,360
    # Line 11161
    lw	$a0,-29724($s0)
    sd	$a0,736($sp)
    # Line 11162
    lw	$a2,-29460($s0)
    lw	$t9,-29432($s0)
    lw	$t8,-29436($s0)
    lw	$t3,-29440($s0)
    lw	$t2,-29444($s0)
    lw	$t1,-29448($s0)
    lw	$t0,-29452($s0)
    lw	$a3,-29456($s0)
    sw	$a3,4($a4)
    sw	$t0,8($a4)
    sw	$t1,12($a4)
    sw	$t2,16($a4)
    sw	$t3,20($a4)
    sw	$t8,24($a4)
    sw	$t9,28($a4)
    sw	$a2,360($sp)
    # Line 11164
    lw	$a7,-29324($s0)
    lw	$a4,-29328($s0)
    lw	$a6,-29332($s0)
    # Line 11167
    ld	$t1,640($sp)
    lui	$t2,0x2
    # Line 11163
    lw	$a5,-29464($s0)
    # Line 11167
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    sw	$t1,31740($s2)
    # Line 11168
    lw	$t0,26976($s0)
    ori	$t0,$t0,0x2
    sw	$t0,26976($s0)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 11171
    lw	$a2,31956($s2)
    lui	$a3,0x4
    or	$a2,$a2,$a3
    # Line 11172
    ori	$a2,$a2,0x4000
    sw	$a2,31956($s2)
    # Line 11173
    lw	$a1,26976($s0)
    ori	$a1,$a1,0x200
    sw	$a1,26976($s0)
    sw	$ra,4120($zero)
    # Line 11177
    lw	$at,26976($s0)
    lui	$v0,0x20
    # Line 11176
    lui	$a0,0x10
    lw	$v1,-26972($s0)
    nor	$a0,$a0,$zero
    # Line 11177
    or	$at,$at,$v0
    sw	$at,26976($s0)
    # Line 11176
    and	$v1,$v1,$a0
    sw	$v1,-26972($s0)
    # Line 11177
    sw	$ra,4120($zero)
    # Line 11187
    lwc1	$f13,24($s1)
    swc1	$f13,200($sp)
    # Line 11188
    lwc1	$f12,28($s1)
    swc1	$f12,204($sp)
    # Line 11189
    lwc1	$f14,32($s1)
    swc1	$f14,208($sp)
    # Line 11190
    lwc1	$f10,36($s1)
    addiu	$a0,$sp,200
    swc1	$f10,212($sp)
    abs.s	$f11,$f13
    lwc1	$f7,4($a0)
    c.lt.s $f4,$f11
    abs.s	$f7,$f7
    movf.s	$f11,$f4,$fcc1
    lwc1	$f9,8($a0)
    c.lt.s	$f11,$f7
    abs.s	$f9,$f9
    movf.s	$f7,$f11,$fcc0
    lwc1	$f5,12($a0)
    c.lt.s $f7,$f9
    abs.s	$f5,$f5
    movf.s	$f9,$f7,$fcc7
    sd	$a7,744($sp)
    sd	$a6,752($sp)
    c.lt.s $f9,$f5
    sd	$a5,760($sp)
    sd	$a4,768($sp)
    movf.s	$f5,$f9,$fcc6
    # Line 11213
    lwc1	$f18,40($s1)
    swc1	$f18,216($sp)
    # Line 11214
    lwc1	$f17,44($s1)
    swc1	$f17,220($sp)
    # Line 11215
    lwc1	$f16,48($s1)
    swc1	$f16,224($sp)
    # Line 11216
    lwc1	$f15,52($s1)
    mtc1	$zero,$f9
    addiu	$a0,$sp,216
    swc1	$f15,228($sp)
    abs.s	$f21,$f18
    lwc1	$f11,4($a0)
    c.lt.s $f9,$f21
    abs.s	$f11,$f11
    movf.s	$f21,$f9,$fcc5
    lwc1	$f19,8($a0)
    c.lt.s $f21,$f11
    abs.s	$f19,$f19
    movf.s	$f11,$f21,$fcc4
    lwc1	$f9,12($a0)
    c.lt.s $f11,$f19
    abs.s	$f9,$f9
    movf.s	$f19,$f11,$fcc3
    c.lt.s $f19,$f9
    movf.s	$f9,$f19,$fcc2
    # Line 11219
    abs.s	$f8,$f13
    c.eq.s $f8,$f6
    lwc1	$f4,7712($s0)
    bc1t .L0d9a4b34
    lwc1	$f7,40($s1)
    # Line 11225
    div.s	$f19,$f7,$f8
    swc1	$f19,232($sp)
    # Line 11226
    mul.s	$f15,$f4,$f19
    b	.L0d9a4b44
    swc1	$f15,248($sp)
.L0d9a4b34:
    # Line 11228
    mov.s	$f15,$f7
    swc1	$f7,232($sp)
    mov.s	$f19,$f7
    swc1	$f7,248($sp)
.L0d9a4b44:
    abs.s	$f8,$f12
    c.eq.s $f8,$f6
    bc1t .L0d9a4b68
    lwc1	$f7,44($s1)
    # Line 11232
    div.s	$f23,$f7,$f8
    swc1	$f23,236($sp)
    # Line 11233
    mul.s	$f16,$f4,$f23
    b	.L0d9a4b78
    swc1	$f16,252($sp)
.L0d9a4b68:
    # Line 11235
    mov.s	$f16,$f7
    swc1	$f7,236($sp)
    mov.s	$f23,$f7
    swc1	$f7,252($sp)
.L0d9a4b78:
    abs.s	$f8,$f14
    c.eq.s	$f8,$f6
    bc1t	.L0d9a4b9c
    lwc1	$f7,48($s1)
    # Line 11240
    div.s	$f21,$f7,$f8
    swc1	$f21,240($sp)
    # Line 11241
    mul.s	$f18,$f4,$f21
    b	.L0d9a4bac
    swc1	$f18,256($sp)
.L0d9a4b9c:
    # Line 11243
    mov.s	$f18,$f7
    swc1	$f7,240($sp)
    mov.s	$f21,$f7
    swc1	$f7,256($sp)
.L0d9a4bac:
    abs.s	$f8,$f10
    c.eq.s $f8,$f6
    bc1t .L0d9a4bd4
    lwc1	$f7,52($s1)
    # Line 11247
    div.s	$f25,$f7,$f10
    # Line 11248
    div.s	$f17,$f7,$f8
    # Line 11247
    swc1	$f25,244($sp)
    # Line 11248
    mul.s	$f17,$f4,$f17
    b	.L0d9a4be4
    swc1	$f17,260($sp)
.L0d9a4bd4:
    # Line 11250
    mov.s	$f17,$f7
    swc1	$f7,244($sp)
    mov.s	$f25,$f7
    swc1	$f7,260($sp)
.L0d9a4be4:
    mtc1	$zero,$f7
    mtc1	$zero,$f8
    addiu	$a0,$sp,248
    addiu	$a4,$sp,232
    # Line 11256
    lwc1	$f1,248($sp)
    # Line 11250
    lwc1	$f0,232($sp)
    # Line 11256
    abs.s	$f1,$f1
    lwc1	$f31,4($a0)
    # Line 11250
    abs.s	$f0,$f0
    lwc1	$f2,4($a4)
    # Line 11256
    c.lt.s $f8,$f1
    # Line 11250
    c.lt.s	$f7,$f0
    # Line 11256
    abs.s	$f31,$f31
    movf.s	$f1,$f8,$fcc1
    lwc1	$f29,8($a0)
    # Line 11250
    abs.s	$f8,$f2
    movf.s	$f0,$f7,$fcc0
    lwc1	$f27,8($a4)
    # Line 11256
    c.lt.s $f1,$f31
    # Line 11250
    c.lt.s $f0,$f8
    # Line 11256
    abs.s	$f29,$f29
    movf.s	$f31,$f1,$fcc7
    lwc1	$f11,12($a0)
    # Line 11250
    abs.s	$f27,$f27
    movf.s	$f8,$f0,$fcc6
    lwc1	$f7,12($a4)
    # Line 11256
    c.lt.s $f31,$f29
    # Line 11250
    c.lt.s $f8,$f27
    # Line 11256
    abs.s	$f11,$f11
    movf.s	$f29,$f31,$fcc5
    # Line 11250
    abs.s	$f7,$f7
    movf.s	$f27,$f8,$fcc4
    # Line 11256
    c.lt.s $f29,$f11
    # Line 11250
    c.lt.s $f27,$f7
    movf.s	$f11,$f29,$fcc3
    movf.s	$f7,$f27,$fcc2
    mov.s	$f8,$f11
    # Line 11269
    c.lt.s $f4,$f5
    li	$a0,1
    movf	$a0,$zero,$fcc2
    beqz	$a0,.L0d9a53d8
    nop
    c.le.s $f11,$f4
    bc1f .L0d9a53d8
    nop
    addiu	$a0,$sp,200
    lwc1	$f5,200($sp)
    c.lt.s $f4,$f5
    bc1f .L0d9a4dc4
    nop
    # Line 11277
    swc1	$f4,200($sp)
    b	.L0d9a4ddc
    lwc1	$f4,7712($s0)
.L0d9a4cb8:
    # Line 11613
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4ccc
    nop
    # Line 11615
    swc1	$f7,392($sp)
.L0d9a4ccc:
    # Line 11603
    lwc1	$f4,7712($s0)
    lwc1	$f5,4($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4ce8
    nop
    # Line 11613
    b	.L0d9a4cfc
    swc1	$f4,4($a0)
.L0d9a4ce8:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4cfc
    nop
    # Line 11615
    swc1	$f7,4($a0)
.L0d9a4cfc:
    # Line 11603
    lwc1	$f4,7712($s0)
    lwc1	$f5,8($a0)
    c.lt.s	$f4,$f5
    bc1f	.L0d9a4d18
    nop
    # Line 11613
    b	.L0d9a4d2c
    swc1	$f4,8($a0)
.L0d9a4d18:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4d2c
    nop
    # Line 11615
    swc1	$f7,8($a0)
.L0d9a4d2c:
    # Line 11603
    lwc1	$f4,7712($s0)
    lwc1	$f5,12($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4d48
    nop
    # Line 11613
    b	.L0d9a4d5c
    swc1	$f4,12($a0)
.L0d9a4d48:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4d5c
    nop
    # Line 11615
    swc1	$f7,12($a0)
.L0d9a4d5c:
    # Line 11618
    swc1	$f6,408($sp)
    swc1	$f6,412($sp)
    swc1	$f6,416($sp)
    swc1	$f6,420($sp)
.L0d9a4d6c:
    # Line 11634
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,408
    jal	sub_0d9a0000
    addiu	$a0,$sp,392
    b	.L0d9a4454
    # Line 11686
    nop	# was lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 11676
    # lw $t9, -32724($gp) # &sub_0d9a0000
.L0d9a4d8c:
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,408
    jal	sub_0d9a0000
    addiu	$a0,$sp,392
    # Line 11680
    lw	$v0,26976($s0)
    lui	$at,0x20
    # Line 11679
    lw	$v1,-26972($s0)
    # Line 11680
    or	$at,$at,$v0
    sw	$at,26976($s0)
    # Line 11679
    ori	$v1,$v1,0x1
    sw	$v1,-26972($s0)
    li	$ra,2
    b	.L0d9a4450
    # Line 11680
    sw	$ra,4120($zero)
.L0d9a4dc4:
    # Line 11277
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4ddc
    nop
    # Line 11279
    swc1	$f7,200($sp)
    lwc1	$f4,7712($s0)
.L0d9a4ddc:
    # Line 11269
    lwc1	$f5,4($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4df8
    nop
    # Line 11277
    swc1	$f4,4($a0)
    b	.L0d9a4e10
    lwc1	$f4,7712($s0)
.L0d9a4df8:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4e10
    nop
    # Line 11279
    swc1	$f7,4($a0)
    lwc1	$f4,7712($s0)
.L0d9a4e10:
    # Line 11269
    lwc1	$f5,8($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4e2c
    nop
    # Line 11277
    swc1	$f4,8($a0)
    b	.L0d9a4e44
    lwc1	$f4,7712($s0)
.L0d9a4e2c:
    neg.s	$f7,$f4
    c.lt.s	$f5,$f7
    bc1f	.L0d9a4e44
    nop
    # Line 11279
    swc1	$f7,8($a0)
    lwc1	$f4,7712($s0)
.L0d9a4e44:
    # Line 11269
    lwc1	$f5,12($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a4e60
    nop
    # Line 11277
    swc1	$f4,12($a0)
    b	.L0d9a4e78
    lwc1	$f4,7712($s0)
.L0d9a4e60:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a4e78
    nop
    # Line 11279
    swc1	$f7,12($a0)
    lwc1	$f4,7712($s0)
.L0d9a4e78:
    # Line 11275
    lwc1	$f2,24($s1)
    abs.s	$f2,$f2
    c.lt.s $f4,$f2
    bc1f .L0d9a4e94
    nop
    # Line 11288
    swc1	$f15,216($sp)
    lwc1	$f4,7712($s0)
.L0d9a4e94:
    lwc1	$f3,28($s1)
    abs.s	$f3,$f3
    c.lt.s $f4,$f3
    bc1f .L0d9a4eb0
    nop
    # Line 11291
    swc1	$f16,220($sp)
    lwc1	$f4,7712($s0)
.L0d9a4eb0:
    lwc1	$f5,32($s1)
    abs.s	$f5,$f5
    c.lt.s $f4,$f5
    bc1f .L0d9a4ecc
    nop
    # Line 11294
    swc1	$f18,224($sp)
    lwc1	$f4,7712($s0)
.L0d9a4ecc:
    lwc1	$f6,36($s1)
    abs.s	$f6,$f6
    c.lt.s $f4,$f6
    bc1f .L0d9a4ee8
    # Line 11300
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 11297
    swc1	$f17,228($sp)
    # Line 11300
    # lw $t9, -32724($gp) # &sub_0d9a0000
.L0d9a4ee8:
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,216
    jal	sub_0d9a0000
    addiu	$a0,$sp,200
    # Line 11382
    lwc1	$f7,24($s1)
.L0d9a4efc:
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f4
    bc1f .L0d9a4fa0
    li	$a6,1
    lwc1	$f8,28($s1)
    cvt.d.s	$f8,$f8
    c.eq.d	$f8,$f4
    bc1f	.L0d9a4fa0
    li	$a6,1
    lwc1	$f9,32($s1)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f4
    bc1f .L0d9a4fa0
    li	$a6,1
    lwc1	$f10,36($s1)
    cvt.d.s	$f10,$f10
    c.eq.d $f10,$f4
    bc1f .L0d9a4fa0
    li	$a6,1
    lwc1	$f11,40($s1)
    dmtc1	$zero,$f4
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f4
    bc1f .L0d9a4fa0
    li	$a6,1
    lwc1	$f12,44($s1)
    cvt.d.s	$f12,$f12
    c.eq.d $f12,$f4
    bc1f .L0d9a4fa0
    li	$a6,1
    lwc1	$f13,48($s1)
    cvt.d.s	$f13,$f13
    c.eq.d $f13,$f4
    bc1f .L0d9a4fa0
    li	$a6,1
    lwc1	$f14,52($s1)
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f4
    bc1t .L0d9a5794
    li	$a6,1
.L0d9a4fa0:
    # Line 11388
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    ld	$a2,704($sp)
    li	$a4,1
    lw	$a1,68($s1)
    andi	$a3,$a6,0xff
    lw	$a0,72($s1)
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    sltu	$a3,$zero,$a3
    ld	$ra,776($sp)
    # Line 11394
    ld	$a6,640($sp)
    # Line 11395
    ld	$a7,624($sp)
    # Line 11396
    ld	$t0,600($sp)
    # Line 11397
    ld	$t1,584($sp)
    # Line 11393
    ld	$t9,592($sp)
    ld	$t8,632($sp)
    ld	$t3,608($sp)
    ld	$t2,616($sp)
    # Line 11392
    lw	$a3,264($sp)
    sw	$a3,31940($s2)
    addiu	$at,$sp,264
    lw	$a2,4($at)
    lw	$a1,8($at)
    lw	$a0,12($at)
    lw	$v1,16($at)
    lw	$v0,20($at)
    lw	$at,24($at)
    sw	$at,31964($s2)
    sw	$v0,31960($s2)
    sw	$v1,31956($s2)
    sw	$a0,31952($s2)
    sw	$a1,31948($s2)
    sw	$a2,31944($s2)
    # Line 11393
    sw	$t2,-26968($s0)
    sw	$t3,-26972($s0)
    sw	$t8,-26976($s0)
    sw	$t9,-26980($s0)
    # Line 11397
    sw	$t1,31804($s2)
    # Line 11396
    sw	$t0,31800($s2)
    # Line 11395
    sw	$a7,31796($s2)
    # Line 11398
    addiu	$a1,$sp,296
    # Line 11394
    sw	$a6,31740($s2)
    ld	$a0,736($sp)
    # Line 11398
    ld	$a6,296($sp)
    ld	$a7,8($a1)
    ld	$t0,16($a1)
    ld	$t1,24($a1)
    ld	$t2,32($a1)
    ld	$t3,40($a1)
    ld	$t8,48($a1)
    ld	$t9,56($a1)
    sd	$t9,-29664($s0)
    sd	$t8,-29672($s0)
    sd	$t3,-29680($s0)
    sd	$t2,-29688($s0)
    sd	$t1,-29696($s0)
    sd	$t0,-29704($s0)
    sd	$a7,-29712($s0)
    sd	$a6,-29720($s0)
    # Line 11400
    addiu	$a5,$sp,360
    # Line 11399
    sw	$a0,-29724($s0)
    ld	$a0,768($sp)
    ld	$a1,744($sp)
    ld	$a2,752($sp)
    ld	$a4,760($sp)
    # Line 11400
    lw	$at,360($sp)
    lw	$v0,4($a5)
    lw	$v1,8($a5)
    lw	$a3,12($a5)
    lw	$t1,16($a5)
    lw	$t2,20($a5)
    lw	$t3,24($a5)
    lw	$t8,28($a5)
    sw	$t8,-29432($s0)
    sw	$t3,-29436($s0)
    sw	$t2,-29440($s0)
    sw	$t1,-29444($s0)
    sw	$a3,-29448($s0)
    sw	$v1,-29452($s0)
    sw	$v0,-29456($s0)
    sw	$at,-29460($s0)
    # Line 11402
    sw	$a1,-29324($s0)
    sw	$a0,-29328($s0)
    sw	$a2,-29332($s0)
    # Line 11404
    lw	$at,26976($s0)
    lui	$v0,0x23
    # Line 11401
    sw	$a4,-29464($s0)
    # Line 11404
    ori	$v0,$v0,0x8203
    or	$at,$at,$v0
    sw	$at,26976($s0)
    li	$t9,2
    b	.L0d9a45b8
    sw	$t9,4120($zero)
.L0d9a5110:
    # Line 11048
    # lw $t9, -31288($gp) # &__glOdysseyImageCalcSuitableHostFormatForDownload
    # Line 11043
    li	$a4,6408
    sw	$a4,24($sp)
    # Line 11045
    lwc1	$f16,_lit_3f800000
    # Line 11044
    li	$a3,5123
    sw	$a3,28($sp)
    # Line 11045
    swc1	$f16,32($sp)
    swc1	$f16,36($sp)
    swc1	$f16,40($sp)
    # Line 11046
    mtc1	$zero,$f15
    # Line 11045
    swc1	$f16,44($sp)
    # Line 11046
    swc1	$f15,48($sp)
    swc1	$f15,52($sp)
    swc1	$f15,56($sp)
    swc1	$f15,60($sp)
    # Line 11048
    lw	$a2,72($s1)
    lw	$a0,68($s1)
    lw	$a2,52($a2)
    addiu	$a4,$sp,28
    lw	$a1,12($a0)
    addiu	$a3,$sp,24
    bal __glOdysseyImageCalcSuitableHostFormatForDownload
    lw	$a0,8($a0)
    beqz	$v0,.L0d9a5594
    nop
    # Line 11067
    lwc1	$f1,24($s1)
    swc1	$f1,32($sp)
    # Line 11068
    lwc1	$f0,28($s1)
    swc1	$f0,36($sp)
    # Line 11069
    lwc1	$f31,32($s1)
    swc1	$f31,40($sp)
    # Line 11070
    lwc1	$f29,36($s1)
    swc1	$f29,44($sp)
    # Line 11072
    lwc1	$f27,40($s1)
    swc1	$f27,48($sp)
    # Line 11073
    lwc1	$f25,44($s1)
    swc1	$f25,52($sp)
    # Line 11074
    lwc1	$f23,48($s1)
    swc1	$f23,56($sp)
    # Line 11075
    lwc1	$f21,52($s1)
    # Line 11078
    ld	$a5,704($sp)
    # Line 11075
    swc1	$f21,60($sp)
    # Line 11078
    lwc1	$f19,0($a5)
    trunc.w.s	$f19,$f19
    swc1	$f19,64($sp)
    # Line 11079
    lwc1	$f18,4($a5)
    trunc.w.s	$f18,$f18
    swc1	$f18,68($sp)
    # Line 11080
    lwc1	$f21,8($a5)
    trunc.w.s	$f21,$f21
    swc1	$f21,72($sp)
    # Line 11081
    lwc1	$f17,12($a5)
    # Line 11104
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    # Line 11081
    trunc.w.s	$f17,$f17
    swc1	$f17,76($sp)
    # Line 11080
    mfc1	$a2,$f21
    # Line 11078
    mfc1	$a0,$f19
    # Line 11085
    sw	$zero,84($sp)
    # Line 11084
    sw	$zero,80($sp)
    # Line 11086
    move	$a3,$a2
    # Line 11087
    sd	$zero,96($sp)
    # Line 11086
    move	$v0,$a2
    slt	$a4,$a2,$a0
    # Line 11096
    lw	$t2,24($sp)
    # Line 11086
    slt	$a2,$a0,$a2
    movn	$v0,$a0,$a4
    # Line 11097
    lw	$t1,28($sp)
    # Line 11086
    movz	$a0,$a3,$a2
    subu	$v0,$v0,$a0
    sw	$v0,88($sp)
    # Line 11087
    addiu	$a0,$sp,96
    sw	$zero,56($a0)
    sd	$zero,48($a0)
    sd	$zero,40($a0)
    sd	$zero,32($a0)
    # Line 11081
    mfc1	$at,$f17
    # Line 11079
    mfc1	$ra,$f18
    # Line 11087
    sd	$zero,24($a0)
    # Line 11093
    li	$t0,1
    # Line 11087
    sd	$zero,16($a0)
    move	$v1,$at
    sd	$zero,8($a0)
    move	$t8,$at
    slt	$a1,$at,$ra
    # Line 11098
    sw	$t0,120($sp)
    # Line 11087
    slt	$at,$ra,$at
    movn	$t8,$ra,$a1
    # Line 11097
    sw	$t1,108($sp)
    # Line 11087
    movz	$ra,$v1,$at
    # Line 11096
    sw	$t2,104($sp)
    # Line 11094
    move	$at,$v0
    slti	$v1,$v0,0
    # Line 11093
    sb	$t0,96($sp)
    # Line 11094
    movn	$at,$zero,$v1
    slt	$v1,$zero,$v0
    # Line 11092
    sw	$zero,100($sp)
    # Line 11094
    movn	$v0,$zero,$v1
    # Line 11087
    subu	$t8,$t8,$ra
    # Line 11091
    sw	$zero,152($sp)
    # Line 11095
    move	$t3,$t8
    slti	$ra,$t8,0
    # Line 11087
    sw	$t8,92($sp)
    # Line 11095
    movn	$t3,$zero,$ra
    slt	$ra,$zero,$t8
    # Line 11094
    subu	$at,$at,$v0
    sw	$at,112($sp)
    # Line 11095
    movn	$t8,$zero,$ra
    subu	$t3,$t3,$t8
    sw	$t3,116($sp)
    # Line 11104
    move	$a6,$zero
    addiu	$a5,$sp,48
    # Line 11101
    lw	$a7,-22728($s0)
    # Line 11104
    addiu	$a4,$sp,32
    addiu	$a3,$sp,64
    # Line 11101
    sw	$a7,140($sp)
    # Line 11104
    addiu	$a1,$sp,80
    bal __glOdysseyImageConvertHostImage
    lw	$a2,68($s1)
    # Line 11113
    lw	$a7,92($sp)
    # Line 11112
    lw	$t0,88($sp)
    # Line 11111
    lw	$t1,84($sp)
    # Line 11113
    mtc1	$a7,$f6
    # Line 11110
    lw	$t2,80($sp)
    # Line 11112
    mtc1	$t0,$f7
    # Line 11111
    mtc1	$t1,$f8
    # Line 11110
    mtc1	$t2,$f9
    # Line 11113
    cvt.s.w	$f6,$f6
    # Line 11112
    cvt.s.w	$f7,$f7
    # Line 11114
    ld	$a6,704($sp)
    # Line 11111
    cvt.s.w	$f8,$f8
    # Line 11110
    cvt.s.w	$f9,$f9
    # Line 11113
    swc1	$f6,172($sp)
    # Line 11112
    swc1	$f7,168($sp)
    # Line 11111
    swc1	$f8,164($sp)
    # Line 11110
    swc1	$f9,160($sp)
    # Line 11114
    lwc1	$f5,16($a6)
    swc1	$f5,176($sp)
    lwc1	$f4,20($a6)
    swc1	$f4,180($sp)
    lwc1	$f3,24($a6)
    # Line 11116
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    # Line 11114
    swc1	$f3,184($sp)
    lwc1	$f2,28($a6)
    # Line 11116
    li	$a4,1
    move	$a3,$zero
    addiu	$a2,$sp,160
    # Line 11114
    swc1	$f2,188($sp)
    # Line 11116
    addiu	$a1,$sp,96
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    b	.L0d9a45b8
    ld	$ra,776($sp)
.L0d9a5370:
    # Line 11661
    lwc1	$f18,_lit_3f800000
    # Line 11663
    cvt.d.s	$f1,$f14
    # Line 11664
    cvt.d.s	$f27,$f12
    # Line 11661
    lwc1	$f17,_lit_bf800000
    # Line 11663
    c.lt.d $f1,$f29
    mov.s	$f16,$f18
    # Line 11662
    cvt.d.s	$f0,$f13
    # Line 11663
    movt.s	$f16,$f17,$fcc2
    # Line 11661
    cvt.d.s	$f31,$f11
    # Line 11662
    c.lt.d $f0,$f29
    mov.s	$f15,$f18
    # Line 11669
    swc1	$f25,420($sp)
    # Line 11661
    c.lt.d	$f31,$f29
    mov.s	$f10,$f18
    # Line 11668
    swc1	$f21,416($sp)
    # Line 11664
    c.lt.d $f27,$f29
    # Line 11662
    movt.s	$f15,$f17,$fcc1
    # Line 11667
    swc1	$f23,412($sp)
    # Line 11661
    movt.s	$f10,$f17,$fcc0
    # Line 11666
    swc1	$f19,408($sp)
    # Line 11664
    movf.s	$f17,$f18,$fcc7
    swc1	$f17,404($sp)
    # Line 11663
    swc1	$f16,400($sp)
    # Line 11662
    swc1	$f15,396($sp)
    b	.L0d9a47c8
    # Line 11661
    swc1	$f10,392($sp)
.L0d9a53d8:
    # Line 11302
    c.le.s $f5,$f4
    bc1f .L0d9a541c
    nop
    c.lt.s $f4,$f9
    bc1f .L0d9a541c
    nop
    c.lt.s $f4,$f7
    bc1f .L0d9a572c
    # Line 11320
    dmtc1	$zero,$f11
    # Line 11302
    addiu	$a0,$sp,200
    lwc1	$f4,7712($s0)
    lwc1	$f5,200($sp)
    c.lt.s $f4,$f5
    bc1f .L0d9a55b4
    nop
    # Line 11311
    b	.L0d9a55c8
    swc1	$f4,200($sp)
.L0d9a541c:
    # Line 11334
    beqz	$a0,.L0d9a5688
    # Line 11377
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 11334
    c.lt.s $f4,$f8
    bc1f .L0d9a5688
    # Line 11377
    nop	# was lw $t9, -32724($gp) # &sub_0d9a0000
    # Line 11334
    c.lt.s	$f4,$f7
    bc1f	.L0d9a56a0
    addiu	$a0,$sp,200
    lwc1	$f4,7712($s0)
    lwc1	$f5,200($sp)
    c.lt.s $f4,$f5
    bc1f .L0d9a54c4
    nop
    # Line 11348
    b	.L0d9a54d8
    swc1	$f4,200($sp)
.L0d9a5458:
    # Line 11623
    dmtc1	$zero,$f8
    lwc1	$f6,_lit_3f800000
    # Line 11625
    cvt.d.s	$f15,$f14
    # Line 11626
    cvt.d.s	$f7,$f12
    # Line 11623
    lwc1	$f5,_lit_bf800000
    # Line 11625
    c.lt.d $f15,$f8
    mov.s	$f4,$f6
    # Line 11624
    cvt.d.s	$f10,$f13
    # Line 11625
    movt.s	$f4,$f5,$fcc5
    # Line 11623
    cvt.d.s	$f9,$f11
    # Line 11624
    c.lt.d $f10,$f8
    mov.s	$f3,$f6
    # Line 11631
    swc1	$f25,420($sp)
    # Line 11623
    c.lt.d $f9,$f8
    mov.s	$f2,$f6
    # Line 11630
    swc1	$f21,416($sp)
    # Line 11626
    c.lt.d $f7,$f8
    # Line 11624
    movt.s	$f3,$f5,$fcc4
    # Line 11629
    swc1	$f23,412($sp)
    # Line 11623
    movt.s	$f2,$f5,$fcc3
    # Line 11628
    swc1	$f19,408($sp)
    # Line 11626
    movf.s	$f5,$f6,$fcc2
    swc1	$f5,404($sp)
    # Line 11625
    swc1	$f4,400($sp)
    # Line 11624
    swc1	$f3,396($sp)
    b	.L0d9a4d6c
    # Line 11623
    swc1	$f2,392($sp)
.L0d9a54c4:
    # Line 11348
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a54d8
    nop
    # Line 11350
    swc1	$f7,200($sp)
.L0d9a54d8:
    # Line 11334
    lwc1	$f4,7712($s0)
    lwc1	$f5,4($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a54f4
    nop
    # Line 11348
    b	.L0d9a5508
    swc1	$f4,4($a0)
.L0d9a54f4:
    neg.s	$f7,$f4
    c.lt.s	$f5,$f7
    bc1f	.L0d9a5508
    nop
    # Line 11350
    swc1	$f7,4($a0)
.L0d9a5508:
    # Line 11334
    lwc1	$f4,7712($s0)
    lwc1	$f5,8($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a5524
    nop
    # Line 11348
    b	.L0d9a5538
    swc1	$f4,8($a0)
.L0d9a5524:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a5538
    nop
    # Line 11350
    swc1	$f7,8($a0)
.L0d9a5538:
    # Line 11334
    lwc1	$f4,7712($s0)
    lwc1	$f5,12($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a5554
    nop
    # Line 11348
    b	.L0d9a5568
    swc1	$f4,12($a0)
.L0d9a5554:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a5568
    nop
    # Line 11350
    swc1	$f7,12($a0)
.L0d9a5568:
    # Line 11353
    swc1	$f6,216($sp)
    swc1	$f6,220($sp)
    swc1	$f6,224($sp)
    swc1	$f6,228($sp)
.L0d9a5578:
    # Line 11369
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,216
    jal	sub_0d9a0000
    addiu	$a0,$sp,200
    b	.L0d9a4efc
    # Line 11382
    lwc1	$f7,24($s1)
.L0d9a5594:
    ld	$s0,824($sp)
    ld	$ra,776($sp)
    # Line 11714
    ld	$gp,720($sp)
    # Line 11060
    move	$v0,$zero
    # Line 11714
    ld	$s1,712($sp)
    ld	$s2,728($sp)
    jr	$ra
    addiu	$sp,$sp,848
.L0d9a55b4:
    # Line 11311
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a55c8
    nop
    # Line 11313
    swc1	$f7,200($sp)
.L0d9a55c8:
    # Line 11302
    lwc1	$f4,7712($s0)
    lwc1	$f5,4($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a55e4
    nop
    # Line 11311
    b	.L0d9a55f8
    swc1	$f4,4($a0)
.L0d9a55e4:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a55f8
    nop
    # Line 11313
    swc1	$f7,4($a0)
.L0d9a55f8:
    # Line 11302
    lwc1	$f4,7712($s0)
    lwc1	$f5,8($a0)
    c.lt.s	$f4,$f5
    bc1f	.L0d9a5614
    nop
    # Line 11311
    b	.L0d9a5628
    swc1	$f4,8($a0)
.L0d9a5614:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a5628
    nop
    # Line 11313
    swc1	$f7,8($a0)
.L0d9a5628:
    # Line 11302
    lwc1	$f4,7712($s0)
    lwc1	$f5,12($a0)
    c.lt.s $f4,$f5
    bc1f .L0d9a5644
    nop
    # Line 11311
    b	.L0d9a5658
    swc1	$f4,12($a0)
.L0d9a5644:
    neg.s	$f7,$f4
    c.lt.s $f5,$f7
    bc1f .L0d9a5658
    nop
    # Line 11313
    swc1	$f7,12($a0)
.L0d9a5658:
    # Line 11315
    swc1	$f6,216($sp)
    swc1	$f6,220($sp)
    swc1	$f6,224($sp)
    swc1	$f6,228($sp)
.L0d9a5668:
    # Line 11332
    # lw $t9, -32724($gp) # &sub_0d9a0000
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,216
    jal	sub_0d9a0000
    addiu	$a0,$sp,200
    b	.L0d9a4efc
    # Line 11382
    lwc1	$f7,24($s1)
    # Line 11377
    # lw $t9, -32724($gp) # &sub_0d9a0000
.L0d9a5688:
    addiu	$t9,$t9,-13808
    addiu	$a1,$sp,216
    jal	sub_0d9a0000
    addiu	$a0,$sp,200
    b	.L0d9a4efc
    # Line 11382
    lwc1	$f7,24($s1)
.L0d9a56a0:
    # Line 11358
    dmtc1	$zero,$f0
    lwc1	$f29,_lit_3f800000
    # Line 11360
    cvt.d.s	$f3,$f14
    # Line 11361
    cvt.d.s	$f31,$f10
    # Line 11358
    lwc1	$f27,_lit_bf800000
    # Line 11360
    c.lt.d $f3,$f0
    mov.s	$f18,$f29
    # Line 11359
    cvt.d.s	$f2,$f12
    # Line 11360
    movt.s	$f18,$f27,$fcc7
    # Line 11358
    cvt.d.s	$f1,$f13
    # Line 11359
    c.lt.d $f2,$f0
    mov.s	$f17,$f29
    # Line 11366
    swc1	$f25,228($sp)
    # Line 11358
    c.lt.d $f1,$f0
    mov.s	$f16,$f29
    # Line 11365
    swc1	$f21,224($sp)
    # Line 11361
    c.lt.d $f31,$f0
    # Line 11359
    movt.s	$f17,$f27,$fcc6
    # Line 11364
    swc1	$f23,220($sp)
    # Line 11358
    movt.s	$f16,$f27,$fcc5
    # Line 11363
    swc1	$f19,216($sp)
    # Line 11361
    movf.s	$f27,$f29,$fcc4
    swc1	$f27,212($sp)
    # Line 11360
    swc1	$f18,208($sp)
    # Line 11359
    swc1	$f17,204($sp)
    b	.L0d9a5578
    # Line 11358
    swc1	$f16,200($sp)
.L0d9a570c:
    # Line 11413
    # lw $t9, -31204($gp) # &__glOdysseyImageMovePixelsDMAtoGfx
    li	$a4,1
    ld	$a2,704($sp)
    move	$a3,$zero
    jal	__glOdysseyImageMovePixelsDMAtoGfx
    lw	$a0,72($s1)
    b	.L0d9a45b8
    ld	$ra,776($sp)
.L0d9a572c:
    # Line 11320
    lwc1	$f8,_lit_3f800000
    # Line 11322
    cvt.d.s	$f17,$f14
    # Line 11323
    cvt.d.s	$f9,$f10
    # Line 11320
    lwc1	$f7,_lit_bf800000
    # Line 11322
    c.lt.d $f17,$f11
    mov.s	$f6,$f8
    # Line 11321
    cvt.d.s	$f16,$f12
    # Line 11322
    movt.s	$f6,$f7,$fcc3
    # Line 11320
    cvt.d.s	$f15,$f13
    # Line 11321
    c.lt.d $f16,$f11
    mov.s	$f5,$f8
    # Line 11328
    swc1	$f25,228($sp)
    # Line 11320
    c.lt.d $f15,$f11
    mov.s	$f4,$f8
    # Line 11327
    swc1	$f21,224($sp)
    # Line 11323
    c.lt.d	$f9,$f11
    # Line 11321
    movt.s	$f5,$f7,$fcc2
    # Line 11326
    swc1	$f23,220($sp)
    # Line 11320
    movt.s	$f4,$f7,$fcc1
    # Line 11325
    swc1	$f19,216($sp)
    # Line 11323
    movf.s	$f7,$f8,$fcc0
    swc1	$f7,212($sp)
    # Line 11322
    swc1	$f6,208($sp)
    # Line 11321
    swc1	$f5,204($sp)
    b	.L0d9a5668
    # Line 11320
    swc1	$f4,200($sp)
.L0d9a5794:
    b	.L0d9a4fa0
    # Line 11382
    move	$a6,$zero
.end __glOdysseyRenderFunc_DownloadColor

# Function: ImageChainAddOpReadbackColor
# Declared: Line 11719 (Source lines: 11721-11763)
# Address: 0x0d9a57a0 - 0x0d9a58bc (Size: 284 bytes, Frame: 48)
.ent ImageChainAddOpReadbackColor
ImageChainAddOpReadbackColor:
    # Line 11721
    addiu	$sp,$sp,-48
    sd	$a0,24($sp)
    # Line 11727
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 11721
    sd	$a1,8($sp)
    sd	$a2,16($sp)
    # Line 11727
    addiu	$t9,$t9,-3824
    sd	$ra,32($sp)
    jal	sub_0d990000
    sd	$s0,0($sp)
    # Line 11763
    ld	$ra,32($sp)
    # Line 11727
    bnez	$v0,.L0d9a57f4
    move	$s0,$v0
    # Line 11729
    move	$v0,$zero
    ld	$s0,0($sp)
    # Line 11763
    jr	$ra
    addiu	$sp,$sp,48
.L0d9a57e0:
    ld	$ra,32($sp)
.L0d9a57e4:
    li	$v0,1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9a57f4:
    # Line 11744
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    ld	$a0,24($sp)
    # Line 11741
    sw	$zero,12($v0)
    # Line 11733
    li	$ra,1
    sw	$ra,0($v0)
    # Line 11744
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 11736
    la	$v0,__glOdysseyRenderFunc_ReadbackColor
    # Line 11739
    lw	$at,8($s0)
    # Line 11744
    addiu	$t9,$t9,-2832
    move	$a1,$s0
    # Line 11736
    sw	$v0,4($s0)
    # Line 11739
    ori	$at,$at,0x14
    # Line 11744
    jal	sub_0d990000
    # Line 11739
    sw	$at,8($s0)
    # Line 11751
    lw	$v0,68($s0)
    lbu	$at,0($v0)
    bnez	$at,.L0d9a57e4
    # Line 11763
    ld	$ra,32($sp)
    # Line 11751
    lw	$a1,72($s0)
    lbu	$v1,0($a1)
    bnez	$v1,.L0d9a57e0
    li	$a2,1
    lw	$a0,40($a1)
    bne	$a0,$a2,.L0d9a57e4
    # Line 11763
    ld	$ra,32($sp)
    # Line 11751
    lw	$a2,12($a1)
    li	$a3,5121
    beq	$a2,$a3,.L0d9a58a4
    li	$a4,5123
.L0d9a586c:
    bne	$a2,$a4,.L0d9a57e4
    # Line 11763
    ld	$ra,32($sp)
    # Line 11751
    lw	$a5,52($v0)
    li	$a6,12
    beq	$a5,$a6,.L0d9a57e0
    # Line 11759
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
.L0d9a5884:
    ld	$a0,24($sp)
    addiu	$t9,$t9,3392
    li	$a2,1
    ld	$ra,32($sp)
    move	$a1,$s0
    ld	$s0,0($sp)
    jr	$t9
    addiu	$sp,$sp,48
.L0d9a58a4:
    # Line 11751
    lw	$ra,52($v0)
    li	$at,10
    beq	$ra,$at,.L0d9a586c
    li	$a4,5123
    b	.L0d9a5884
    # Line 11759
    nop	# was lw $t9, -32728($gp) # &sub_0d990000
.end ImageChainAddOpReadbackColor

# Function: __glOdysseyRenderFunc_ReadbackColor
# Declared: Line 11767 (Source lines: 11769-12001)
# Address: 0x0d9a58c0 - 0x0d9a5ea0 (Size: 1504 bytes, Frame: 128)
.globl __glOdysseyRenderFunc_ReadbackColor
.ent __glOdysseyRenderFunc_ReadbackColor
__glOdysseyRenderFunc_ReadbackColor:
    # Line 11769
    lui	$at,0x15
    # Line 11790
    lwc1	$f0,24($a0)
    # Line 11769
    addiu	$sp,$sp,-384
    addiu	$at,$at,11472
    sd	$gp,336($sp)
    addu	$gp,$t9,$at
    # Line 11790
    ldc1	$f4,_lit8_404f800000000000
    # Line 11769
    sd	$s0,328($sp)
    # Line 11790
    cvt.d.s	$f0,$f0
    # Line 11769
    sd	$s1,320($sp)
    sd	$s3,312($sp)
    # Line 11790
    c.lt.d	$f4,$f0
    # Line 11773
    lw	$s3,4112($zero)
    # Line 11769
    move	$s1,$a1
    sd	$s2,344($sp)
    # Line 11794
    lui	$s2,0x1
    # Line 11769
    move	$s0,$a0
    sd	$s4,360($sp)
    # Line 11790
    bc1t	.L0d9a594c
    # Line 11794
    addu	$s2,$s3,$s2
    # Line 11790
    lwc1	$f1,28($a0)
    cvt.d.s	$f1,$f1
    c.lt.d $f4,$f1
    # Line 11794
    lwc1	$f29,_lit_40fffe00
    # Line 11790
    lwc1	$f3,36($a0)
    bc1t .L0d9a594c
    lwc1	$f2,32($a0)
    cvt.d.s	$f2,$f2
    c.lt.d $f4,$f2
    bc1t .L0d9a594c
    nop
    cvt.d.s	$f3,$f3
    c.lt.d $f4,$f3
    bc1f .L0d9a5e50
    nop
.L0d9a594c:
    sd	$ra,352($sp)
    # Line 11792
    lwc1	$f4,_lit_40800000
    lui	$s2,0x1
    sd	$s5,368($sp)
    addu	$s2,$s3,$s2
    swc1	$f4,7712($s2)
.L0d9a5964:
    # Line 11797
    lw	$a2,72($s0)
    lw	$a2,40($a2)
    li	$s5,1
    xor	$a2,$a2,$s5
    sltiu	$a2,$a2,1
    sb	$a2,9($sp)
    # Line 11798
    lw	$a1,72($s0)
    # Line 11801
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    # Line 11798
    lbu	$a1,0($a1)
    sb	$a1,8($sp)
    # Line 11801
    lw	$a0,72($s0)
    lw	$a2,68($s0)
    lw	$a1,12($a0)
    addiu	$a3,$sp,0
    jal	__glOdysseyImageCalcXferReadParams
    lw	$a0,8($a0)
    # Line 11805
    lbu	$a3,0($sp)
    beqz	$a3,.L0d9a59bc
    # Line 11845
    move	$s4,$zero
    # Line 11805
    lw	$a4,1148($s3)
    beqz	$a4,.L0d9a5e88
    # Line 11998
    nop	# was lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
.L0d9a59bc:
    # Line 11805
    lw	$a1,68($s0)
    lw	$a1,52($a1)
    la	$a0,sub_0daf0000
    sltiu	$a2,$a1,10
    addiu	$a0,$a0,-28576
    sll	$a1,$a1,0x2
    beqz	$a2,.L0d9a5d88
    addu	$a0,$a0,$a1
    lw	$a2,0($a0)
    jr	$a2
    nop
.L0d9a59e8:
    # Line 11862
    beqz	$s4,.L0d9a5dc0
    li	$s3,1
.L0d9a59f0:
    # Line 11871
    sd	$zero,32($sp)
    addiu	$a6,$sp,32
    sw	$zero,56($a6)
    sd	$zero,48($a6)
    sd	$zero,40($a6)
    sd	$zero,32($a6)
    sd	$zero,24($a6)
    sd	$zero,16($a6)
    sd	$zero,8($a6)
    # Line 11873
    sb	$s5,32($sp)
    # Line 11872
    sw	$zero,36($sp)
    # Line 11871
    sw	$s5,88($sp)
    # Line 11874
    lw	$a5,7708($s2)
    sw	$a5,64($sp)
    # Line 11875
    lw	$a4,7704($s2)
    sw	$a4,68($sp)
    # Line 11876
    lw	$a3,7708($s2)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f12
    cvt.s.l	$f12,$f12
    lwc1	$f13,_lit_3d800000
    # lw $t9, -17036($gp) # &ceil
    mul.s	$f12,$f12,$f13
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 11878
    lw	$t8,24($sp)
    sw	$t8,84($sp)
    # Line 11879
    lw	$t3,28($sp)
    sw	$t3,72($sp)
    # Line 11876
    trunc.l.d	$f25,$f0
    # Line 11880
    sw	$t3,76($sp)
    # Line 11881
    xor	$t3,$t3,$s5
    # Line 11876
    dmfc1	$t9,$f25
    # Line 11881
    sltiu	$t3,$t3,1
    sw	$t3,80($sp)
    # Line 11876
    sw	$t9,60($sp)
    # Line 11885
    lw	$t2,-22764($s2)
    sw	$t2,48($sp)
    lw	$t1,-22760($s2)
    sw	$t1,52($sp)
    lw	$t0,-22756($s2)
    sw	$t0,56($sp)
    # Line 11888
    lwc1	$f23,0($s1)
    swc1	$f23,96($sp)
    lwc1	$f21,4($s1)
    swc1	$f21,100($sp)
    lwc1	$f19,8($s1)
    # Line 11889
    mtc1	$zero,$f17
    # Line 11888
    swc1	$f19,104($sp)
    lwc1	$f18,12($s1)
    # Line 11889
    swc1	$f17,112($sp)
    # Line 11890
    swc1	$f17,116($sp)
    # Line 11888
    swc1	$f18,108($sp)
    # Line 11890
    lwc1	$f17,8($s1)
    lwc1	$f16,0($s1)
    # Line 11891
    c.lt.s $f16,$f17
    # Line 11890
    c.lt.s $f17,$f16
    # Line 11891
    mov.s	$f15,$f16
    movf.s	$f16,$f17,$fcc6
    movf.s	$f15,$f17,$fcc7
    sub.s	$f15,$f15,$f16
    swc1	$f15,120($sp)
    lwc1	$f15,12($s1)
    lwc1	$f14,4($s1)
    # Line 11892
    c.lt.s $f14,$f15
    # Line 11891
    c.lt.s $f15,$f14
    # Line 11892
    mov.s	$f13,$f14
    movf.s	$f14,$f15,$fcc4
    movf.s	$f13,$f15,$fcc5
    sub.s	$f13,$f13,$f14
    swc1	$f13,124($sp)
    lw	$a1,68($s0)
    lbu	$a7,11($a1)
    beqz	$a7,.L0d9a5e34
    # Line 11900
    nop	# was lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 11896
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    move	$a3,$zero
    addiu	$a2,$sp,96
    jal	__glOdysseyImageMovePixelsTexture
    addiu	$a0,$sp,32
    # Line 11906
    lwc1	$f4,112($sp)
.L0d9a5b38:
    lwc1	$f3,116($sp)
    lwc1	$f1,124($sp)
    lwc1	$f2,120($sp)
    swc1	$f1,196($sp)
    swc1	$f2,192($sp)
    swc1	$f3,188($sp)
    swc1	$f4,184($sp)
    # Line 11907
    lwc1	$f0,16($s1)
    swc1	$f0,200($sp)
    lwc1	$f31,20($s1)
    swc1	$f31,204($sp)
    lwc1	$f29,24($s1)
    swc1	$f29,208($sp)
    andi	$ra,$s3,0xff
    lwc1	$f27,28($s1)
    sd	$ra,304($sp)
    beqz	$ra,.L0d9a5e60
    swc1	$f27,212($sp)
.L0d9a5b80:
    # Line 11931
    sw	$zero,172($sp)
.L0d9a5b84:
    # Line 11930
    sw	$zero,168($sp)
    # Line 11923
    mtc1	$zero,$f4
    # Line 11922
    lwc1	$f8,_lit_3f800000
    # Line 11923
    swc1	$f4,164($sp)
    swc1	$f4,160($sp)
    swc1	$f4,156($sp)
    swc1	$f4,152($sp)
    # Line 11922
    swc1	$f8,136($sp)
    swc1	$f8,140($sp)
    swc1	$f8,144($sp)
    swc1	$f8,148($sp)
    # Line 11931
    lwc1	$f8,8($s1)
    lwc1	$f7,0($s1)
    # Line 11932
    c.lt.s $f7,$f8
    # Line 11931
    c.lt.s $f8,$f7
    # Line 11932
    mov.s	$f6,$f7
    movf.s	$f7,$f8,$fcc2
    movf.s	$f6,$f8,$fcc3
    sub.s	$f6,$f6,$f7
    trunc.w.s	$f6,$f6
    swc1	$f6,176($sp)
    lwc1	$f8,12($s1)
    lwc1	$f7,4($s1)
    # Line 11933
    c.lt.s	$f7,$f8
    # Line 11932
    c.lt.s $f8,$f7
    # Line 11933
    mov.s	$f5,$f7
    movf.s	$f7,$f8,$fcc0
    movf.s	$f5,$f8,$fcc1
    sub.s	$f5,$f5,$f7
    trunc.w.s	$f5,$f5
    swc1	$f5,180($sp)
    addiu	$a2,$sp,224
    sd	$zero,224($sp)
    sw	$zero,56($a2)
    # Line 11932
    mfc1	$a5,$f6
    # Line 11933
    sd	$zero,48($a2)
    sd	$zero,40($a2)
    # Line 11944
    move	$a1,$a5
    # Line 11933
    sd	$zero,32($a2)
    # Line 11944
    move	$a3,$a5
    slt	$a4,$zero,$a5
    # Line 11933
    sd	$zero,24($a2)
    # Line 11944
    slti	$a6,$a5,0
    movn	$a3,$zero,$a4
    # Line 11933
    sd	$zero,16($a2)
    mfc1	$a4,$f5
    # Line 11944
    movn	$a1,$zero,$a6
    # Line 11933
    sd	$zero,8($a2)
    # Line 11944
    subu	$a1,$a1,$a3
    sw	$a1,240($sp)
    # Line 11945
    move	$at,$a4
    # Line 11943
    sb	$s5,224($sp)
    # Line 11945
    move	$v0,$a4
    slt	$v1,$zero,$a4
    # Line 11942
    sw	$zero,228($sp)
    # Line 11945
    slti	$a0,$a4,0
    movn	$v0,$zero,$v1
    # Line 11941
    sw	$zero,280($sp)
    # Line 11945
    movn	$at,$zero,$a0
    subu	$at,$at,$v0
    beqz	$s4,.L0d9a5dec
    sw	$at,244($sp)
    # Line 11961
    lwc1	$f9,112($sp)
    lwc1	$f10,116($sp)
    # Line 11947
    lw	$t1,72($s0)
    # Line 11961
    lwc1	$f11,120($sp)
    # Line 11947
    lw	$t1,8($t1)
    sw	$t1,232($sp)
    # Line 11948
    lw	$t0,72($s0)
    # Line 11961
    lwc1	$f12,124($sp)
    # Line 11948
    lw	$t0,12($t0)
    # Line 11953
    sw	$s5,248($sp)
    # Line 11948
    sw	$t0,236($sp)
    # Line 11956
    lw	$a7,-22728($s2)
    # Line 11961
    swc1	$f12,196($sp)
    swc1	$f11,192($sp)
    swc1	$f10,188($sp)
    swc1	$f9,184($sp)
    # Line 11956
    sw	$s5,248($sp)
    # Line 11961
    addiu	$a1,$sp,32
    # Line 11956
    sw	$a7,268($sp)
.L0d9a5cc8:
    # Line 11966
    mtc1	$zero,$f15
    # Line 11969
    mtc1	$a4,$f14
    # Line 11968
    mtc1	$a5,$f13
    # Line 11967
    swc1	$f15,204($sp)
    # Line 11969
    cvt.s.w	$f14,$f14
    # Line 11972
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    # Line 11968
    cvt.s.w	$f13,$f13
    # Line 11966
    swc1	$f15,200($sp)
    # Line 11972
    addiu	$a2,$sp,184
    # Line 11969
    swc1	$f14,212($sp)
    # Line 11972
    addiu	$a0,$sp,224
    jal	__glOdysseyImageMovePixelsDMAtoHost
    # Line 11968
    swc1	$f13,208($sp)
    # Line 11975
    lwc1	$f18,16($s1)
    trunc.w.s	$f18,$f18
    swc1	$f18,288($sp)
    # Line 11976
    lwc1	$f17,20($s1)
    trunc.w.s	$f17,$f17
    swc1	$f17,292($sp)
    # Line 11977
    lwc1	$f16,24($s1)
    trunc.w.s	$f16,$f16
    swc1	$f16,296($sp)
    # Line 11978
    lwc1	$f15,28($s1)
    trunc.w.s	$f15,$f15
    swc1	$f15,300($sp)
    lw	$t2,232($sp)
    li	$t3,6400
    beq	$t2,$t3,.L0d9a5dd4
.L0d9a5d38:
    # Line 11989
    move	$a6,$zero
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    addiu	$a5,$sp,152
    addiu	$a4,$sp,136
    addiu	$a3,$sp,168
    addiu	$a2,$sp,224
    addiu	$a1,$sp,288
    bal __glOdysseyImageConvertHostImage
    lw	$a0,72($s0)
.L0d9a5d5c:
    ld	$s2,344($sp)
.L0d9a5d60:
    ld	$s3,312($sp)
    ld	$s4,360($sp)
    ld	$s5,368($sp)
    ld	$ra,352($sp)
    ld	$s1,320($sp)
    # Line 12001
    li	$v0,1
    ld	$s0,328($sp)
    ld	$gp,336($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0d9a5d88:
    # Line 11853
    lw	$a0,72($s0)
    # lw $t9, -31292($gp) # &__glOdysseyImageCalcSuitableGfxFormatForReadback
    addiu	$a3,$sp,28
    lw	$a1,12($a0)
    addiu	$a2,$sp,24
    bal __glOdysseyImageCalcSuitableGfxFormatForReadback
    lw	$a0,8($a0)
    andi	$s4,$v0,0xff
    # Line 11862
    beqz	$s4,.L0d9a59e8
    nop
    lw	$a1,1148($s3)
    bnez	$a1,.L0d9a59e8
    move	$s3,$zero
    bnez	$s4,.L0d9a59f0
.L0d9a5dc0:
    andi	$a2,$s3,0xff
    beqz	$a2,.L0d9a5d5c
    nop
    b	.L0d9a5b84
    # Line 11931
    sw	$zero,172($sp)
.L0d9a5dd4:
    # Line 11985
    mtc1	$zero,$f19
    swc1	$f19,136($sp)
    swc1	$f19,140($sp)
    swc1	$f19,144($sp)
    b	.L0d9a5d38
    swc1	$f19,148($sp)
.L0d9a5dec:
    # Line 11953
    sw	$s5,248($sp)
    # Line 11950
    lw	$a7,12($sp)
    # Line 11951
    lw	$a6,16($sp)
    sw	$a6,236($sp)
    # Line 11950
    sw	$a7,232($sp)
    # Line 11956
    lw	$a3,-22728($s2)
    sw	$s5,248($sp)
    sw	$a3,268($sp)
    # Line 11964
    lwc1	$f27,0($s1)
    # Line 11963
    lw	$a1,68($s0)
    # Line 11964
    swc1	$f27,184($sp)
    lwc1	$f25,4($s1)
    swc1	$f25,188($sp)
    lwc1	$f23,8($s1)
    swc1	$f23,192($sp)
    lwc1	$f21,12($s1)
    b	.L0d9a5cc8
    swc1	$f21,196($sp)
.L0d9a5e34:
    # Line 11900
    move	$a4,$zero
    li	$a3,1
    addiu	$a2,$sp,96
    jal	__glOdysseyImageCalcSuitableGfxFormatForReadback
    addiu	$a0,$sp,32
    b	.L0d9a5b38
    # Line 11906
    lwc1	$f4,112($sp)
.L0d9a5e50:
    sd	$ra,352($sp)
    sd	$s5,368($sp)
    b	.L0d9a5964
    # Line 11794
    swc1	$f29,7712($s2)
.L0d9a5e60:
    # Line 11914
    # lw $t9, -31200($gp) # &__glOdysseyImageMovePixelsDMAtoHost
    addiu	$a2,$sp,184
    addiu	$a1,$sp,32
    jal	__glOdysseyImageMovePixelsDMAtoHost
    lw	$a0,72($s0)
    ld	$t8,304($sp)
    bnez	$t8,.L0d9a5b80
    nop
    b	.L0d9a5d60
    ld	$s2,344($sp)
.L0d9a5e88:
    # Line 11998
    lw	$a1,68($s0)
    move	$a2,$s1
    jalr	$t9
    lw	$a0,72($s0)
    b	.L0d9a5d60
    ld	$s2,344($sp)
.end __glOdysseyRenderFunc_ReadbackColor

# Function: ImageChainAddOpColorZoom
# Declared: Line 12006 (Source lines: 12007-12038)
# Address: 0x0d9a5ea0 - 0x0d9a5f24 (Size: 132 bytes, Frame: 16)
.ent ImageChainAddOpColorZoom
ImageChainAddOpColorZoom:
    # Line 12013
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 12007
    addiu	$sp,$sp,-16
    # Line 12013
    addiu	$t9,$t9,-3824
    sd	$ra,8($sp)
    jal	sub_0d990000
    # Line 12007
    sd	$a0,0($sp)
    # Line 12013
    bnez	$v0,.L0d9a5ecc
    # Line 12038
    ld	$ra,8($sp)
    # Line 12015
    move	$v0,$zero
    # Line 12038
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a5ecc:
    # Line 12032
    li	$a4,1
    sw	$a4,12($v0)
    # Line 12019
    li	$v1,12
    sw	$v1,0($v0)
    # Line 12035
    ld	$a2,0($sp)
    # Line 12022
    la	$at,sub_0d9a0000
    # Line 12035
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 12029
    lw	$ra,8($v0)
    # Line 12022
    addiu	$at,$at,24368
    sw	$at,4($v0)
    # Line 12035
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 12029
    ori	$ra,$ra,0x2c
    sw	$ra,8($v0)
    # Line 12035
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 12038
    ld	$ra,8($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end ImageChainAddOpColorZoom

# Function: RenderFunc_ColorZoom
# Declared: Line 12042 (Source lines: 12043-12054)
# Address: 0x0d9a5f30 - 0x0d9a5f78 (Size: 72 bytes, Frame: 16)
.ent RenderFunc_ColorZoom
RenderFunc_ColorZoom:
    # Line 12043
    lui	$v0,0x15
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,9824
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 12052
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 12043
    move	$at,$a0
    # Line 12052
    lw	$a0,72($a0)
    li	$a3,1
    # Line 12043
    sd	$ra,0($sp)
    move	$a2,$a1
    # Line 12052
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($at)
    ld	$ra,0($sp)
    # Line 12054
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end RenderFunc_ColorZoom

# Function: ImageChainAddOpIndexZoom
# Declared: Line 12059 (Source lines: 12060-12092)
# Address: 0x0d9a5f80 - 0x0d9a6004 (Size: 132 bytes, Frame: 16)
.ent ImageChainAddOpIndexZoom
ImageChainAddOpIndexZoom:
    # Line 12066
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 12060
    addiu	$sp,$sp,-16
    # Line 12066
    addiu	$t9,$t9,-3824
    sd	$ra,8($sp)
    jal	sub_0d990000
    # Line 12060
    sd	$a0,0($sp)
    # Line 12066
    bnez	$v0,.L0d9a5fac
    # Line 12092
    ld	$ra,8($sp)
    # Line 12068
    move	$v0,$zero
    # Line 12092
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a5fac:
    # Line 12086
    li	$a4,1
    sw	$a4,12($v0)
    # Line 12072
    li	$v1,13
    sw	$v1,0($v0)
    # Line 12089
    ld	$a2,0($sp)
    # Line 12075
    la	$at,sub_0d9a0000
    # Line 12089
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 12083
    lw	$ra,8($v0)
    # Line 12075
    addiu	$at,$at,24592
    sw	$at,4($v0)
    # Line 12089
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 12083
    ori	$ra,$ra,0x2c
    sw	$ra,8($v0)
    # Line 12089
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 12092
    ld	$ra,8($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end ImageChainAddOpIndexZoom

# Function: RenderFunc_IndexZoom
# Declared: Line 12097 (Source lines: 12098-12109)
# Address: 0x0d9a6010 - 0x0d9a6058 (Size: 72 bytes, Frame: 16)
.ent RenderFunc_IndexZoom
RenderFunc_IndexZoom:
    # Line 12098
    lui	$v0,0x15
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,9600
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 12107
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 12098
    move	$at,$a0
    # Line 12107
    lw	$a0,72($a0)
    li	$a3,1
    # Line 12098
    sd	$ra,0($sp)
    move	$a2,$a1
    # Line 12107
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a1,68($at)
    ld	$ra,0($sp)
    # Line 12109
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end RenderFunc_IndexZoom

# Function: ImageChainAddOpInterlace
# Declared: Line 12113 (Source lines: 12114-12149)
# Address: 0x0d9a6060 - 0x0d9a60fc (Size: 156 bytes, Frame: 32)
.ent ImageChainAddOpInterlace
ImageChainAddOpInterlace:
    # Line 12120
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 12114
    addiu	$sp,$sp,-32
    sd	$a0,8($sp)
    # Line 12120
    addiu	$t9,$t9,-3824
    sd	$ra,16($sp)
    jal	sub_0d990000
    # Line 12114
    sd	$a1,0($sp)
    # Line 12129
    li	$v1,15
    # Line 12120
    beqz	$v0,.L0d9a60e4
    # Line 12122
    ld	$ra,0($sp)
    beqz	$ra,.L0d9a60f4
    # Line 12127
    li	$at,14
    sw	$at,0($v0)
.L0d9a6094:
    # Line 12143
    li	$a4,1
    sw	$a4,12($v0)
    # Line 12146
    ld	$a2,8($sp)
    # Line 12133
    la	$at,sub_0d9a0000
    # Line 12146
    # lw $t9, -32728($gp) # &sub_0d990000
    move	$a3,$zero
    # Line 12140
    lw	$ra,8($v0)
    # Line 12133
    addiu	$at,$at,24832
    sw	$at,4($v0)
    # Line 12146
    addiu	$t9,$t9,-2832
    move	$a1,$v0
    # Line 12140
    ori	$ra,$ra,0x2c
    sw	$ra,8($v0)
    # Line 12146
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 12149
    ld	$ra,16($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0d9a60e4:
    ld	$ra,16($sp)
    # Line 12122
    move	$v0,$zero
    # Line 12149
    jr	$ra
    addiu	$sp,$sp,32
.L0d9a60f4:
    b	.L0d9a6094
    # Line 12129
    sw	$v1,0($v0)
.end ImageChainAddOpInterlace

# Function: RenderFunc_Interlace
# Declared: Line 12153 (Source lines: 12154-12175)
# Address: 0x0d9a6100 - 0x0d9a61c8 (Size: 200 bytes, Frame: 32)
.ent RenderFunc_Interlace
RenderFunc_Interlace:
    # Line 12155
    lw	$a4,4112($zero)
    # Line 12163
    lw	$at,1796($a4)
    # Line 12154
    move	$a2,$a1
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lui	$v0,0x15
    # Line 12163
    dsll32	$at,$at,0xe
    # Line 12154
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$v0,$v0,9360
    sd	$gp,0($sp)
    # Line 12163
    bgez	$at,.L0d9a6144
    # Line 12154
    addu	$gp,$t9,$v0
    # Line 12163
    li	$v1,14
    lw	$v0,0($a0)
    beq	$v0,$v1,.L0d9a61c0
    li	$a0,1
.L0d9a6144:
    move	$a0,$zero
    # Line 12165
    li	$a6,1
.L0d9a614c:
    # Line 12163
    lw	$a3,68($s0)
    sb	$a0,12($a3)
    # Line 12165
    lw	$a1,1796($a4)
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d9a61b8
    lw	$a5,72($s0)
    lbu	$a4,8($a5)
    beqz	$a4,.L0d9a61b0
    lbu	$a7,10($a5)
.L0d9a6170:
    # Line 12170
    # lw $t9, -31196($gp) # &__glOdysseyImageMovePixelsTexture
    # Line 12165
    sb	$a6,12($a5)
    # Line 12170
    lw	$a1,68($s0)
    li	$a3,1
    jal	__glOdysseyImageMovePixelsTexture
    lw	$a0,72($s0)
    # Line 12175
    ld	$gp,0($sp)
    # Line 12172
    lw	$a6,68($s0)
    ld	$ra,16($sp)
    sb	$zero,12($a6)
    # Line 12173
    lw	$a5,72($s0)
    # Line 12175
    li	$v0,1
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 12173
    sb	$zero,12($a5)
.L0d9a61b0:
    # Line 12165
    bnez	$a7,.L0d9a6170
    nop
.L0d9a61b8:
    b	.L0d9a6170
    move	$a6,$zero
.L0d9a61c0:
    # Line 12163
    b	.L0d9a614c
    # Line 12165
    li	$a6,1
.end RenderFunc_Interlace

# Function: ImageChainAddOpIndexShiftOffset
# Declared: Line 12179 (Source lines: 12180-12218)
# Address: 0x0d9a61d0 - 0x0d9a6294 (Size: 196 bytes, Frame: 32)
.ent ImageChainAddOpIndexShiftOffset
ImageChainAddOpIndexShiftOffset:
    # Line 12180
    addiu	$sp,$sp,-32
    # Line 12186
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 12180
    sd	$a0,0($sp)
    sd	$a1,8($sp)
    # Line 12186
    addiu	$t9,$t9,-3824
    sd	$ra,24($sp)
    jal	sub_0d990000
    # Line 12180
    sd	$a2,16($sp)
    # Line 12186
    bnez	$v0,.L0d9a6204
    # Line 12218
    ld	$ra,24($sp)
    # Line 12188
    move	$v0,$zero
    # Line 12218
    jr	$ra
    addiu	$sp,$sp,32
.L0d9a6204:
    # Line 12212
    sw	$zero,12($v0)
    # Line 12192
    li	$v1,6
    sw	$v1,0($v0)
    # Line 12215
    ld	$a2,0($sp)
    # Line 12211
    lw	$a3,8($v0)
    # Line 12199
    mtc1	$zero,$f0
    # Line 12195
    la	$ra,sub_0d9a0000
    # Line 12205
    swc1	$f0,52($v0)
    # Line 12204
    swc1	$f0,48($v0)
    # Line 12203
    swc1	$f0,44($v0)
    # Line 12202
    ld	$at,16($sp)
    # Line 12198
    ld	$a0,8($sp)
    # Line 12201
    swc1	$f0,36($v0)
    # Line 12202
    mtc1	$at,$f1
    # Line 12200
    swc1	$f0,32($v0)
    # Line 12198
    mtc1	$a0,$f2
    # Line 12199
    swc1	$f0,28($v0)
    # Line 12195
    addiu	$ra,$ra,25248
    sw	$ra,4($v0)
    # Line 12202
    cvt.s.w	$f1,$f1
    # Line 12215
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 12198
    cvt.s.w	$f2,$f2
    # Line 12211
    ori	$a3,$a3,0x2
    sw	$a3,8($v0)
    # Line 12215
    addiu	$t9,$t9,-2832
    # Line 12202
    swc1	$f1,40($v0)
    # Line 12215
    move	$a1,$v0
    move	$a3,$zero
    # Line 12198
    swc1	$f2,24($v0)
    # Line 12215
    move	$a0,$a2
    jal	sub_0d990000
    lw	$a2,8($a2)
    # Line 12218
    ld	$ra,24($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end ImageChainAddOpIndexShiftOffset

# Function: RenderFunc_IndexShiftOffset
# Declared: Line 12223 (Source lines: 12224-12262)
# Address: 0x0d9a62a0 - 0x0d9a6360 (Size: 192 bytes, Frame: 192)
.ent RenderFunc_IndexShiftOffset
RenderFunc_IndexShiftOffset:
    # Line 12241
    lwc1	$f9,24($a0)
    # Line 12224
    addiu	$sp,$sp,-64
    # Line 12241
    swc1	$f9,0($sp)
    # Line 12242
    lwc1	$f8,40($a0)
    swc1	$f8,4($sp)
    # Line 12245
    lwc1	$f7,0($a1)
    trunc.w.s	$f7,$f7
    swc1	$f7,8($sp)
    # Line 12246
    lwc1	$f6,4($a1)
    trunc.w.s	$f6,$f6
    swc1	$f6,12($sp)
    # Line 12247
    lwc1	$f5,8($a1)
    trunc.w.s	$f5,$f5
    swc1	$f5,16($sp)
    # Line 12248
    lwc1	$f4,12($a1)
    trunc.w.s	$f4,$f4
    swc1	$f4,20($sp)
    # Line 12250
    lwc1	$f3,16($a1)
    trunc.w.s	$f3,$f3
    swc1	$f3,24($sp)
    # Line 12251
    lwc1	$f2,20($a1)
    trunc.w.s	$f2,$f2
    swc1	$f2,28($sp)
    # Line 12252
    lwc1	$f1,24($a1)
    trunc.w.s	$f1,$f1
    swc1	$f1,32($sp)
    # Line 12224
    lui	$a3,0x15
    # Line 12253
    lwc1	$f0,28($a1)
    # Line 12224
    sd	$ra,40($sp)
    addiu	$a3,$a3,8944
    sd	$gp,48($sp)
    addu	$gp,$t9,$a3
    # Line 12256
    # lw $t9, -31296($gp) # &__glOdysseyImageConvertHostImage
    # Line 12253
    trunc.w.s	$f0,$f0
    # Line 12256
    move	$a6,$zero
    addiu	$a5,$sp,4
    # Line 12253
    swc1	$f0,36($sp)
    # Line 12256
    addiu	$a4,$sp,0
    addiu	$a3,$sp,8
    lw	$a2,68($a0)
    addiu	$a1,$sp,24
    bal __glOdysseyImageConvertHostImage
    lw	$a0,72($a0)
    ld	$ra,40($sp)
    # Line 12262
    li	$v0,1
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end RenderFunc_IndexShiftOffset

.late_rodata
jtbl_0dae9060:
    .word .L0d9a59e8
    .word .L0d9a59e8
    .word .L0d9a59e8
    .word .L0d9a59e8
    .word .L0d9a59e8
    .word .L0d9a59e8
    .word .L0d9a59e8
    .word .L0d9a5d88
    .word .L0d9a5d88
    .word .L0d9a59e8

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_404f800000000000:
    .word 0x404f8000, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_39800000:
    .word 0x39800000
_lit_3d800000:
    .word 0x3d800000
_lit_3effefff:
    .word 0x3effefff
_lit_3f000000:
    .word 0x3f000000
_lit_3f7f1000:
    .word 0x3f7f1000
_lit_3f7ff000:
    .word 0x3f7ff000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40000801:
    .word 0x40000801
_lit_40800000:
    .word 0x40800000
_lit_40e00000:
    .word 0x40e00000
_lit_40fffe00:
    .word 0x40fffe00
_lit_45800000:
    .word 0x45800000
_lit_bf800000:
    .word 0xbf800000

