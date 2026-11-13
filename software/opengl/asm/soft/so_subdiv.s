# Source: ../soft/so_subdiv.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_subdiv.c
# Total Functions: 29

.text

# Function: __glim_SubdivPatchParameterfSGIX
# Declared: Line 296 (Source lines: 297-326)
# Address: 0x0da6e140 - 0x0da6e274 (Size: 308 bytes, Frame: 32)
.globl __glim_SubdivPatchParameterfSGIX
.ent __glim_SubdivPatchParameterfSGIX
__glim_SubdivPatchParameterfSGIX:
    # Line 297
    addiu	$sp,$sp,-32
    # Line 299
    lw	$a2,4112($zero)
    # Line 301
    li	$v0,24592
    # Line 297
    lui	$at,0x9
    # Line 301
    li	$a3,24593
    # Line 297
    sdc1	$f20,0($sp)
    addiu	$at,$at,-23472
    mov.s	$f20,$f13
    sd	$gp,16($sp)
    # Line 301
    beq	$a0,$v0,.L0da6e1f4
    # Line 297
    addu	$gp,$t9,$at
    # Line 301
    beq	$a3,$a0,.L0da6e194
    # Line 308
    lwc1	$f0,_lit_46288400
    # Line 303
    # lw $t9, -26792($gp) # &__glSetError
    ldc1	$f20,0($sp)
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da6e1e8
    ld	$ra,24($sp)
.L0da6e190:
    # Line 308
    lwc1	$f0,_lit_46288400
.L0da6e194:
    c.eq.s	$f20,$f0
    lwc1	$f2,_lit_46289c00
    lwc1	$f1,_lit_46288c00
    bc1t	.L0da6e1cc
    lwc1	$f3,_lit_4628a400
    c.eq.s $f20,$f1
    bc1t .L0da6e1cc
    nop
    c.eq.s $f20,$f2
    bc1t .L0da6e1cc
    nop
    c.eq.s $f20,$f3
    bc1f .L0da6e224
    # Line 312
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0da6e1cc:
    # Line 315
    trunc.l.s	$f4,$f20
    # Line 326
    ld	$gp,16($sp)
    ldc1	$f20,0($sp)
    # Line 315
    dmfc1	$v0,$f4
    # Line 326
    addiu	$sp,$sp,32
    jr	$ra
    # Line 315
    sw	$v0,6080($a2)
.L0da6e1e8:
    # Line 326
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6e1f4:
    # Line 304
    beq	$a3,$a0,.L0da6e190
    # Line 313
    lwc1	$f5,_lit_40800000
    c.lt.s $f5,$f13
    sd	$a2,8($sp)
    bc1f .L0da6e23c
    sd	$ra,24($sp)
    # Line 319
    # lw $t9, -26792($gp) # &__glSetError
    ldc1	$f20,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0da6e1e8
    ld	$ra,24($sp)
.L0da6e224:
    ldc1	$f20,0($sp)
    sd	$ra,24($sp)
    # Line 312
    jalr	$t9
    li	$a0,1280
    b	.L0da6e1e8
    ld	$ra,24($sp)
.L0da6e23c:
    # Line 322
    # lw $t9, -17036($gp) # &ceil
    jal	ceil
    cvt.d.s	$f12,$f13
    trunc.w.d	$f7,$f0
    # Line 326
    ld	$gp,16($sp)
    # Line 323
    cvt.s.w	$f6,$f7
    # Line 322
    ld	$v1,8($sp)
    ld	$ra,24($sp)
    swc1	$f7,6072($v1)
    # Line 323
    sub.s	$f6,$f6,$f20
    # Line 326
    ldc1	$f20,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 323
    swc1	$f6,6076($v1)
.end __glim_SubdivPatchParameterfSGIX

# Function: __glim_SubdivPatchParameteriSGIX
# Declared: Line 329 (Source lines: 330-334)
# Address: 0x0da6e280 - 0x0da6e2b8 (Size: 56 bytes, Frame: 16)
.globl __glim_SubdivPatchParameteriSGIX
.ent __glim_SubdivPatchParameteriSGIX
__glim_SubdivPatchParameteriSGIX:
    # Line 330
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-23792
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 332
    mtc1	$a1,$f13
    # lw $t9, -24936($gp) # &__glim_SubdivPatchParameterfSGIX
    # Line 330
    sd	$ra,0($sp)
    # Line 332
    bal __glim_SubdivPatchParameterfSGIX
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 334
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_SubdivPatchParameteriSGIX

# Function: __glim_SubdivPatchSGIX
# Declared: Line 338 (Source lines: 341-742)
# Address: 0x0da6e2c0 - 0x0da71ed8 (Size: 15384 bytes, Frame: 128)
.globl __glim_SubdivPatchSGIX
.ent __glim_SubdivPatchSGIX
__glim_SubdivPatchSGIX:
    # Line 341
    addiu	$sp,$sp,-2048
    sd	$ra,1920($sp)
    sd	$s2,1888($sp)
    sd	$s3,1880($sp)
    lui	$at,0x9
    # Line 343
    lw	$s3,4112($zero)
    sd	$gp,1896($sp)
    # Line 341
    addiu	$at,$at,-23856
    addu	$gp,$t9,$at
    # Line 361
    beqz	$a0,.L0da6e728
    lw	$s2,6072($s3)
    # Line 369
    bnez	$a1,.L0da6e334
    sd	$s4,1928($sp)
    move	$t1,$zero
    move	$t0,$zero
    move	$a7,$zero
    # Line 379
    bnez	$a2,.L0da6e348
    # Line 369
    move	$s4,$zero
.L0da6e308:
    sd	$s7,1936($sp)
    sd	$s8,1944($sp)
    sd	$s0,1952($sp)
    # Line 379
    move	$t8,$zero
    sd	$s5,1960($sp)
    move	$t2,$zero
    move	$t9,$zero
    sd	$s6,1968($sp)
    move	$t3,$zero
    b	.L0da6e370
    sd	$s1,1976($sp)
.L0da6e334:
    lw	$t1,12($a1)
    # Line 378
    lw	$t0,8($a1)
    # Line 377
    lw	$a7,4($a1)
    # Line 379
    beqz	$a2,.L0da6e308
    # Line 376
    lw	$s4,0($a1)
.L0da6e348:
    # Line 387
    lw	$t8,12($a2)
    # Line 386
    lw	$t2,8($a2)
    # Line 385
    lw	$t9,4($a2)
    # Line 384
    lw	$t3,0($a2)
    sd	$s7,1936($sp)
    sd	$s8,1944($sp)
    sd	$s0,1952($sp)
    sd	$s5,1960($sp)
    sd	$s6,1968($sp)
    sd	$s1,1976($sp)
.L0da6e370:
    # Line 393
    lw	$a4,12($a0)
    # Line 391
    lw	$s8,4($a0)
    # Line 392
    lw	$s6,8($a0)
    # Line 391
    lw	$a1,0($s8)
    # Line 390
    lw	$s7,0($a0)
    # Line 392
    lw	$a2,0($s6)
    addiu	$s6,$s6,4
    # Line 391
    addiu	$s8,$s8,4
    # Line 390
    lw	$v1,0($s7)
    addiu	$s7,$s7,4
    # Line 393
    addiu	$s5,$a4,4
    lw	$a4,0($a4)
    # Line 391
    addiu	$a3,$a1,-1
    sd	$a3,1912($sp)
    # Line 401
    slti	$v0,$v1,9
    # Line 392
    addiu	$s1,$a2,-1
    # Line 390
    addiu	$v1,$v1,-1
    sd	$v1,1904($sp)
    # Line 393
    addiu	$s0,$a4,-1
    # Line 401
    beqz	$v0,.L0da6e3e0
    # Line 393
    sd	$s0,1872($sp)
    # Line 401
    slti	$ra,$a1,10
    beqz	$ra,.L0da6e3e0
    slti	$at,$a2,10
    beqz	$at,.L0da6e3e0
    slti	$v0,$a4,9
    bnez	$v0,.L0da6e424
    nop
.L0da6e3e0:
    sd	$t8,1992($sp)
    sd	$t3,2000($sp)
    sd	$t2,2008($sp)
    sd	$t9,1984($sp)
    # Line 405
    # lw $t9, -26792($gp) # &__glSetError
    sd	$t1,2016($sp)
    sd	$t0,2032($sp)
    sd	$a7,2040($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a7,2040($sp)
    ld	$t0,2032($sp)
    ld	$t1,2016($sp)
    ld	$t2,2008($sp)
    ld	$t3,2000($sp)
    ld	$t8,1992($sp)
    ld	$t9,1984($sp)
.L0da6e424:
    sd	$s1,1864($sp)
    # Line 409
    beqz	$s4,.L0da6e8bc
    sd	$s0,2024($sp)
    ld	$ra,2024($sp)
    sd	$zero,1856($sp)
.L0da6e438:
    # Line 414
    ld	$v1,1872($sp)
    bltz	$v1,.L0da6e8cc
    sb	$zero,6116($s3)
.L0da6e444:
    # Line 429
    beqz	$s4,.L0da6e484
    addiu	$a2,$sp,152
    beqz	$a7,.L0da6e484
    addiu	$a2,$sp,152
    beqz	$t0,.L0da6e484
    addiu	$a2,$sp,152
    beqz	$t1,.L0da6e484
    addiu	$a2,$sp,152
    beqz	$t3,.L0da6e484
    addiu	$a2,$sp,152
    beqz	$t9,.L0da6e484
    addiu	$a2,$sp,152
    beqz	$t2,.L0da6e484
    addiu	$a2,$sp,152
    bnez	$t8,.L0da6e518
    addiu	$a2,$sp,152
.L0da6e484:
    addiu	$a0,$sp,32
    addiu	$a5,$sp,24
    addiu	$a4,$sp,29
    addiu	$a6,$sp,32
    b	.L0da6e4b0
    addiu	$a1,$sp,0
    nop
.L0da6e4a0:
    # Line 431
    addiu	$a1,$a1,1
    addiu	$a0,$a0,8
    beq	$a1,$a6,.L0da6e4f8
    addiu	$a2,$a2,8
.L0da6e4b0:
    # Line 432
    slt	$a3,$a1,$a5
    beqz	$a3,.L0da6e4c0
    sb	$zero,0($a1)
    # Line 433
    sw	$zero,0($a2)
.L0da6e4c0:
    slt	$at,$a1,$a4
    beqz	$at,.L0da6e4d0
    nop
    # Line 434
    sw	$zero,0($a0)
.L0da6e4d0:
    # Line 431
    addiu	$a1,$a1,1
    # Line 432
    slt	$v0,$a1,$a5
    beqz	$v0,.L0da6e4e4
    sb	$zero,0($a1)
    # Line 433
    sw	$zero,4($a2)
.L0da6e4e4:
    slt	$v1,$a1,$a4
    beqz	$v1,.L0da6e4a0
    nop
    # Line 434
    b	.L0da6e4a0
    sw	$zero,4($a0)
.L0da6e4f8:
    movz	$t8,$sp,$t8
    movz	$t2,$sp,$t2
    movz	$t9,$sp,$t9
    movz	$t3,$sp,$t3
    movz	$t1,$sp,$t1
    movz	$t0,$sp,$t0
    movz	$a7,$sp,$a7
    movz	$s4,$sp,$s4
.L0da6e518:
    # Line 457
    lw	$a0,6080($s3)
    li	$a1,10785
    beq	$a0,$a1,.L0da6e8e8
    # Line 459
    li	$at,3
    # Line 457
    li	$a2,10787
    beq	$a0,$a2,.L0da6f81c
    # Line 481
    li	$a6,4
    # Line 457
    li	$a3,10791
    beq	$a0,$a3,.L0da70324
    # Line 503
    li	$a3,5
    # Line 457
    li	$a4,10793
    beq	$a0,$a4,.L0da70e58
    # Line 529
    li	$a3,6
    # Line 457
    lui	$s1,0xff
    lui	$s0,0x1fff
    lbu	$a6,248($sp)
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
.L0da6e560:
    # Line 570
    beqz	$a6,.L0da6e784
    # Line 569
    sb	$zero,6117($s3)
.L0da6e568:
    # Line 582
    ld	$ra,1856($sp)
.L0da6e56c:
    lui	$at,0x8000
    sw	$s0,6112($s3)
    and	$at,$ra,$at
    # Line 581
    sw	$s1,6108($s3)
    # Line 582
    beqz	$at,.L0da6e9d0
    # Line 580
    sw	$ra,6104($s3)
.L0da6e584:
    # Line 673
    # lw $t9, -17004($gp) # &getenv
    la	$a0,__glim_Color3f
    jal	getenv
    addiu	$a0,$a0,20696
    bnez	$v0,.L0da6e754
    ld	$s3,1880($sp)
    # Line 675
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,12816
    addiu	$a2,$sp,32
    addiu	$a1,$sp,152
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,256
    li	$s0,2
    addiu	$a1,$sp,1416
    # Line 677
    sw	$s0,16($a1)
    sw	$s0,12($a1)
    sw	$s0,8($a1)
    sw	$s0,4($a1)
    sw	$s0,1416($sp)
    # Line 680
    la	$s1,sub_0da70000
    addiu	$s1,$s1,23616
    move	$t9,$s1
    bal __glim_SubdivPatchSGIX
    move	$a0,$zero
    # Line 681
    beqz	$s2,.L0da71e0c
    # Line 683
    nop	# was lw $t9, -32668($gp) # &sub_0da80000
    # Line 681
    li	$t8,1
    beq	$s2,$t8,.L0da71e28
    # Line 686
    move	$t9,$s1
    # Line 681
    beq	$s2,$s0,.L0da71b3c
    # Line 692
    addiu	$s0,$sp,1416
    # Line 681
    li	$t9,3
    beq	$s2,$t9,.L0da71bd0
    # Line 703
    addiu	$s0,$sp,1416
    # Line 681
    li	$ra,4
    bne	$s2,$ra,.L0da6e750
    # Line 718
    sll	$t8,$s2,0x2
    addiu	$s0,$sp,1416
    addu	$s0,$s0,$t8
    lw	$at,-12($s0)
    addiu	$v0,$at,2
    slt	$at,$at,$v0
    beqz	$at,.L0da6e750
    sd	$v0,1792($sp)
    la	$s3,sub_0da80000
    addiu	$s8,$s2,-2
    addiu	$s6,$s2,-3
    sd	$s6,1784($sp)
    addiu	$s6,$s2,-1
    addiu	$s3,$s3,-28064
    # Line 720
    move	$t9,$s1
.L0da6e650:
    ld	$a0,1784($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 721
    lw	$t8,-8($s0)
    addiu	$s7,$t8,2
    slt	$t8,$t8,$s7
    beqz	$t8,.L0da6e710
    # Line 730
    ld	$a6,1792($sp)
    # Line 723
    move	$t9,$s1
.L0da6e674:
    move	$a0,$s8
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 724
    lw	$t9,-4($s0)
    addiu	$s5,$t9,2
    slt	$t9,$t9,$s5
    beqz	$t9,.L0da6e6fc
    nop
    # Line 726
    move	$t9,$s1
.L0da6e698:
    move	$a0,$s6
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 727
    lw	$ra,0($s0)
    addiu	$s4,$ra,2
    slt	$ra,$ra,$s4
    beqz	$ra,.L0da6e6ec
    nop
    # Line 729
    move	$t9,$s1
.L0da6e6bc:
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 730
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    jal	sub_0da80000
    addiu	$a1,$a1,-1
    lw	$a2,0($s0)
    slt	$a2,$a2,$s4
    bnez	$a2,.L0da6e6bc
    # Line 729
    move	$t9,$s1
.L0da6e6ec:
    # Line 730
    lw	$a3,-4($s0)
    slt	$a3,$a3,$s5
    bnez	$a3,.L0da6e698
    # Line 726
    move	$t9,$s1
.L0da6e6fc:
    # Line 730
    lw	$a4,-8($s0)
    slt	$a4,$a4,$s7
    bnez	$a4,.L0da6e674
    # Line 723
    move	$t9,$s1
    # Line 730
    ld	$a6,1792($sp)
.L0da6e710:
    lw	$a5,-12($s0)
    slt	$a5,$a5,$a6
    bnez	$a5,.L0da6e650
    # Line 720
    move	$t9,$s1
    b	.L0da6e754
    ld	$s3,1880($sp)
.L0da6e728:
    sd	$s4,1928($sp)
    sd	$s7,1936($sp)
    sd	$s8,1944($sp)
    sd	$s0,1952($sp)
    # Line 364
    # lw $t9, -26792($gp) # &__glSetError
    sd	$s5,1960($sp)
    sd	$s6,1968($sp)
    li	$a0,1281
    jal	__glSetError
    sd	$s1,1976($sp)
.L0da6e750:
    ld	$s3,1880($sp)
.L0da6e754:
    ld	$s4,1928($sp)
    ld	$s7,1936($sp)
    ld	$s8,1944($sp)
    ld	$s2,1888($sp)
    ld	$s0,1952($sp)
    ld	$s5,1960($sp)
    ld	$ra,1920($sp)
    ld	$s6,1968($sp)
    ld	$s1,1976($sp)
    # Line 742
    ld	$gp,1896($sp)
    jr	$ra
    addiu	$sp,$sp,2048
.L0da6e784:
    # Line 570
    lbu	$ra,1412($sp)
    bnez	$ra,.L0da6e56c
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lw	$at,6088($s3)
    li	$v0,1
    bne	$at,$v0,.L0da6e56c
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lbu	$v1,1413($sp)
    bnez	$v1,.L0da6e56c
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lbu	$a0,1414($sp)
    bnez	$a0,.L0da6e56c
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lw	$a1,6100($s3)
    move	$a2,$v0
    bne	$a1,$a2,.L0da6e56c
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lbu	$a3,6116($s3)
    bnez	$a3,.L0da6e56c
    # Line 582
    ld	$ra,1856($sp)
    sd	$t8,1992($sp)
    sd	$t3,2000($sp)
    # Line 572
    lw	$s6,1408($sp)
    la	$s5,sub_0da70000
    sd	$t2,2008($sp)
    addiu	$a2,$sp,256
    move	$a0,$s6
    sd	$t1,2016($sp)
    sll	$a3,$s6,0x4
    addiu	$s5,$s5,7904
    sd	$t9,1984($sp)
    sll	$s7,$s6,0x5
    move	$t9,$s5
    sd	$t0,2032($sp)
    addu	$s7,$a2,$s7
    addu	$a2,$a2,$a3
    sd	$a7,2040($sp)
    bal __glim_SubdivPatchSGIX
    move	$a1,$s7
    # Line 573
    move	$a0,$s6
    move	$a1,$s7
    sll	$a3,$s6,0x2
    move	$t9,$s5
    addu	$a3,$a3,$s6
    addiu	$a2,$sp,256
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    # Line 574
    move	$a0,$s6
    move	$t9,$s5
    sll	$s7,$s6,0x6
    addiu	$a2,$sp,256
    sll	$a3,$s6,0x2
    addu	$s7,$a2,$s7
    subu	$a3,$a3,$s6
    move	$a1,$s7
    sll	$a3,$a3,0x3
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    # Line 575
    move	$a0,$s6
    move	$a1,$s7
    sll	$a3,$s6,0x3
    move	$t9,$s5
    subu	$a3,$a3,$s6
    addiu	$a2,$sp,256
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    ld	$a7,2040($sp)
    ld	$t0,2032($sp)
    ld	$t1,2016($sp)
    ld	$t2,2008($sp)
    ld	$t3,2000($sp)
    ld	$t8,1992($sp)
    ld	$t9,1984($sp)
    li	$a4,1
    b	.L0da6e568
    # Line 576
    sb	$a4,6117($s3)
.L0da6e8bc:
    # Line 409
    beqz	$a7,.L0da71c9c
    ld	$ra,2024($sp)
    b	.L0da6e438
    sd	$zero,1856($sp)
.L0da6e8cc:
    # Line 416
    move	$s5,$s6
    # Line 417
    ld	$ra,1864($sp)
    # Line 418
    move	$t1,$t0
    # Line 419
    move	$t8,$t2
    # Line 420
    li	$a5,1
    b	.L0da6e444
    sb	$a5,6116($s3)
.L0da6e8e8:
    # Line 459
    sw	$at,6084($s3)
    # Line 461
    lwc1	$f11,0($s7)
    swc1	$f11,256($sp)
    lwc1	$f10,4($s7)
    swc1	$f10,260($sp)
    # Line 462
    lwc1	$f9,8($s7)
    swc1	$f9,264($sp)
    # Line 463
    lwc1	$f8,0($s8)
    swc1	$f8,268($sp)
    lwc1	$f7,4($s8)
    swc1	$f7,272($sp)
    # Line 464
    lwc1	$f6,8($s8)
    swc1	$f6,276($sp)
    # Line 465
    lwc1	$f5,0($s6)
    swc1	$f5,280($sp)
    lwc1	$f4,4($s6)
    swc1	$f4,284($sp)
    # Line 466
    lwc1	$f3,8($s6)
    swc1	$f3,288($sp)
    # Line 467
    lwc1	$f2,0($s5)
    swc1	$f2,292($sp)
    lwc1	$f1,4($s5)
    # Line 470
    ld	$a6,1904($sp)
    # Line 467
    swc1	$f1,296($sp)
    # Line 470
    slti	$a6,$a6,3
    # Line 468
    lwc1	$f0,8($s5)
    # Line 459
    sw	$at,1408($sp)
    # Line 470
    bnez	$a6,.L0da6eec0
    # Line 468
    swc1	$f0,300($sp)
    # Line 470
    ld	$a1,1912($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v0,36($s7)
    addu	$a0,$s8,$a0
    lw	$at,12($a0)
    bne	$at,$v0,.L0da6eec4
    mtc1	$zero,$f15
    lw	$a2,16($a0)
    lw	$a3,40($s7)
    bne	$a2,$a3,.L0da6eec4
    mtc1	$zero,$f15
    lw	$a4,20($a0)
    lw	$a5,44($s7)
    bne	$a4,$a5,.L0da6eec4
    mtc1	$zero,$f15
    lwc1	$f14,36($s7)
    swc1	$f14,304($sp)
    lwc1	$f13,40($s7)
    swc1	$f13,308($sp)
    li	$a6,1
    lui	$s1,0xff
    lwc1	$f12,44($s7)
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da6eee4
    swc1	$f12,312($sp)
.L0da6e9d0:
    # Line 588
    lb	$a0,0($t0)
    lb	$v0,0($a7)
    sll	$a0,$a0,0x8
    lb	$v1,0($s4)
    sll	$v0,$v0,0x10
    lb	$ra,0($t1)
    andi	$at,$s1,0x10
    sll	$v1,$v1,0x18
    or	$ra,$ra,$a0
    or	$v0,$v0,$v1
    or	$ra,$ra,$v0
    beqz	$at,.L0da71cac
    sw	$ra,152($sp)
    # Line 591
    lb	$a0,3($s4)
.L0da6ea08:
    andi	$a2,$s1,0x20
    sll	$a1,$a0,0x18
    beqz	$a2,.L0da71cb4
    sw	$a1,156($sp)
    # Line 592
    lb	$a0,4($t0)
.L0da6ea1c:
    andi	$a3,$s1,0x40
    sll	$a2,$a0,0x10
    or	$a2,$a1,$a2
    beqz	$a3,.L0da71cbc
    sw	$a2,156($sp)
    # Line 593
    lb	$a0,3($t1)
.L0da6ea34:
    andi	$a3,$s1,0x80
    sll	$a1,$a0,0x8
    or	$a1,$a2,$a1
    beqz	$a3,.L0da71cc4
    sw	$a1,156($sp)
    # Line 594
    lb	$a0,4($a7)
.L0da6ea4c:
    # Line 596
    addiu	$t1,$t1,4
    addiu	$t0,$t0,5
    andi	$a3,$s1,0x100
    addiu	$a7,$a7,5
    addiu	$s4,$s4,4
    # Line 594
    or	$a2,$a0,$a1
    # Line 596
    beqz	$a3,.L0da71ccc
    # Line 594
    sw	$a2,156($sp)
    # Line 597
    lb	$a0,0($s4)
    addiu	$s4,$s4,1
.L0da6ea74:
    andi	$a4,$s1,0x200
    sll	$a2,$a0,0x18
    beqz	$a4,.L0da71cd4
    sw	$a2,160($sp)
    # Line 598
    lb	$a0,0($s4)
    addiu	$s4,$s4,1
.L0da6ea8c:
    andi	$a5,$s1,0x400
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    beqz	$a5,.L0da71cdc
    sw	$a1,160($sp)
    # Line 599
    lb	$a0,0($s4)
    addiu	$s4,$s4,1
.L0da6eaa8:
    andi	$a3,$s1,0x800
    sll	$a2,$a0,0x8
    or	$a2,$a1,$a2
    beqz	$a3,.L0da71ce4
    sw	$a2,160($sp)
    # Line 600
    lb	$a0,0($s4)
.L0da6eac0:
    dsll32	$a4,$s1,0xf
    lui	$ra,0x1
    or	$a3,$a0,$a2
    bgez	$a4,.L0da71cec
    sw	$a3,160($sp)
    # Line 602
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0da6eadc:
    dsll32	$a5,$s1,0xe
    sll	$a1,$a0,0x18
    lui	$a6,0x2
    bgez	$a5,.L0da71cf4
    sw	$a1,164($sp)
    # Line 603
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0da6eaf8:
    dsll32	$at,$s1,0xd
    lui	$s6,0x4
    sll	$a2,$a0,0x10
    or	$a2,$a1,$a2
    bgez	$at,.L0da71cfc
    sw	$a2,164($sp)
    # Line 604
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0da6eb18:
    dsll32	$a3,$s1,0xc
    lui	$a5,0x8
    sll	$a1,$a0,0x8
    or	$a1,$a2,$a1
    bgez	$a3,.L0da71d04
    sw	$a1,164($sp)
    # Line 605
    lb	$a0,0($t0)
.L0da6eb34:
    dsll32	$a3,$s1,0xb
    lui	$s4,0x10
    or	$a2,$a0,$a1
    bgez	$a3,.L0da71d0c
    sw	$a2,164($sp)
    # Line 607
    lb	$a0,0($t1)
    addiu	$t1,$t1,1
.L0da6eb50:
    dsll32	$a4,$s1,0xa
    sll	$a2,$a0,0x18
    lui	$s5,0x20
    bgez	$a4,.L0da71d14
    sw	$a2,168($sp)
    # Line 608
    lb	$a0,0($t1)
    addiu	$t1,$t1,1
.L0da6eb6c:
    dsll32	$t0,$s1,0x9
    lui	$s3,0x40
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    bgez	$t0,.L0da71d1c
    sw	$a1,168($sp)
    # Line 609
    lb	$a0,0($t1)
    addiu	$t1,$t1,1
.L0da6eb8c:
    dsll32	$a3,$s1,0x8
    lui	$t0,0x80
    sll	$a2,$a0,0x8
    or	$a2,$a1,$a2
    bgez	$a3,.L0da71d24
    sw	$a2,168($sp)
    # Line 610
    lb	$a0,0($t1)
.L0da6eba8:
    andi	$a4,$s1,0x1000
    or	$a3,$a0,$a2
    beqz	$a4,.L0da71d2c
    sw	$a3,168($sp)
    # Line 612
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0da6ebc0:
    andi	$t1,$s1,0x2000
    sll	$a2,$a0,0x18
    beqz	$t1,.L0da71d34
    sw	$a2,172($sp)
    # Line 613
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0da6ebd8:
    andi	$at,$s1,0x4000
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    beqz	$at,.L0da71d3c
    sw	$a1,172($sp)
    # Line 614
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0da6ebf4:
    andi	$a3,$s1,0x8000
    sll	$a2,$a0,0x8
    or	$a2,$a1,$a2
    beqz	$a3,.L0da71d44
    sw	$a2,172($sp)
    # Line 615
    lb	$a0,0($a7)
.L0da6ec0c:
    or	$v0,$a0,$a2
    sw	$v0,172($sp)
    # Line 621
    lb	$at,0($t8)
    lb	$a7,0($t9)
    sll	$at,$at,0x8
    lb	$t1,0($t3)
    sll	$a7,$a7,0x18
    lb	$a4,0($t2)
    # Line 622
    andi	$a3,$s0,0x10
    # Line 621
    sll	$t1,$t1,0x10
    or	$a4,$a4,$at
    or	$a7,$a7,$t1
    or	$a4,$a4,$a7
    sw	$a4,32($sp)
    # Line 622
    beqz	$a3,.L0da71d4c
    lb	$a1,1($t2)
    # Line 624
    ld	$a0,1912($sp)
    addu	$a0,$a0,$t9
    lb	$a0,0($a0)
.L0da6ec58:
    andi	$a3,$s0,0x20
    sll	$a2,$a0,0x18
    beqz	$a3,.L0da71d54
    sw	$a2,36($sp)
    # Line 625
    lb	$a0,2($t3)
.L0da6ec6c:
    andi	$a7,$s0,0x40
    sll	$a4,$a0,0x10
    or	$a4,$a2,$a4
    beqz	$a7,.L0da71d5c
    sw	$a4,36($sp)
    # Line 626
    ld	$a0,1904($sp)
    addu	$a0,$a0,$t3
    lb	$a0,0($a0)
.L0da6ec8c:
    andi	$a3,$s0,0x80
    sll	$a2,$a0,0x8
    or	$a2,$a4,$a2
    beqz	$a3,.L0da71d64
    sw	$a2,36($sp)
    # Line 627
    lb	$a0,3($t2)
.L0da6eca4:
    andi	$a4,$s0,0xa0
    or	$a3,$a0,$a2
    beqz	$a4,.L0da71d6c
    sw	$a3,36($sp)
    # Line 629
    ld	$a0,1864($sp)
    addu	$a0,$a0,$t2
    lb	$a0,0($a0)
.L0da6ecc0:
    andi	$a3,$s0,0x140
    sll	$a2,$a0,0x18
    beqz	$a3,.L0da71d74
    sw	$a2,40($sp)
    # Line 630
    lb	$a0,2($t8)
.L0da6ecd4:
    andi	$a7,$s0,0x280
    sll	$a4,$a0,0x10
    or	$a4,$a2,$a4
    beqz	$a7,.L0da71d7c
    sw	$a4,40($sp)
    # Line 631
    ld	$a0,1872($sp)
    addu	$a0,$a0,$t8
    lb	$a0,0($a0)
.L0da6ecf4:
    andi	$a3,$s0,0x500
    sll	$a2,$a0,0x8
    or	$a2,$a4,$a2
    beqz	$a3,.L0da71d84
    sw	$a2,40($sp)
    # Line 632
    lb	$a0,3($t9)
.L0da6ed0c:
    # Line 634
    addiu	$t8,$t8,3
    addiu	$t2,$t2,4
    andi	$a4,$s0,0x1000
    addiu	$t9,$t9,4
    addiu	$t3,$t3,3
    # Line 632
    or	$a3,$a0,$a2
    # Line 634
    beqz	$a4,.L0da71d8c
    # Line 632
    sw	$a3,40($sp)
    # Line 635
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0da6ed34:
    andi	$a7,$s0,0x2000
    sll	$a4,$a0,0x18
    beqz	$a7,.L0da71d94
    sw	$a4,44($sp)
    # Line 636
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0da6ed4c:
    andi	$t1,$s0,0x4000
    sll	$a2,$a0,0x10
    or	$a2,$a4,$a2
    beqz	$t1,.L0da71d9c
    sw	$a2,44($sp)
    # Line 637
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0da6ed68:
    andi	$a3,$s0,0x8000
    sll	$a4,$a0,0x8
    or	$a4,$a2,$a4
    beqz	$a3,.L0da71da4
    sw	$a4,44($sp)
    # Line 638
    lb	$a0,0($t3)
.L0da6ed80:
    and	$t1,$s0,$s4
    or	$a7,$a0,$a4
    beqz	$t1,.L0da71dac
    sw	$a7,44($sp)
    # Line 640
    lb	$a2,0($t2)
    addiu	$t2,$t2,1
.L0da6ed98:
    and	$t3,$s0,$s5
    sll	$a0,$a2,0x18
    beqz	$t3,.L0da71db4
    sw	$a0,48($sp)
    # Line 641
    lb	$a2,0($t2)
    addiu	$t2,$t2,1
.L0da6edb0:
    and	$at,$s0,$s3
    sll	$a4,$a2,0x10
    or	$a4,$a0,$a4
    beqz	$at,.L0da71dbc
    sw	$a4,48($sp)
    # Line 642
    lb	$a0,0($t2)
    addiu	$t2,$t2,1
.L0da6edcc:
    and	$a7,$s0,$t0
    sll	$a2,$a0,0x8
    or	$a2,$a4,$a2
    beqz	$a7,.L0da71dc4
    sw	$a2,48($sp)
    # Line 643
    lb	$a0,0($t2)
.L0da6ede4:
    dsll32	$a4,$s0,0x7
    or	$a3,$a0,$a2
    bgez	$a4,.L0da71dcc
    sw	$a3,48($sp)
    # Line 645
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0da6edfc:
    dsll32	$a7,$s0,0x6
    sll	$a0,$a2,0x18
    bgez	$a7,.L0da71dd4
    sw	$a0,52($sp)
    # Line 646
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0da6ee14:
    dsll32	$t0,$s0,0x5
    sll	$a4,$a2,0x10
    or	$a4,$a0,$a4
    bgez	$t0,.L0da71ddc
    sw	$a4,52($sp)
    # Line 647
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0da6ee30:
    dsll32	$a7,$s0,0x4
    sll	$a0,$a2,0x8
    or	$a0,$a4,$a0
    bgez	$a7,.L0da71de4
    sw	$a0,52($sp)
    # Line 648
    lb	$a2,0($t8)
.L0da6ee48:
    and	$a4,$s0,$ra
    or	$a3,$a2,$a0
    beqz	$a4,.L0da71dec
    sw	$a3,52($sp)
    # Line 650
    lb	$a0,0($t9)
    addiu	$t9,$t9,1
.L0da6ee60:
    and	$a7,$s0,$a6
    sll	$a2,$a0,0x18
    beqz	$a7,.L0da71df4
    sw	$a2,56($sp)
    # Line 651
    lb	$a4,0($t9)
    addiu	$t9,$t9,1
.L0da6ee78:
    and	$t0,$s0,$s6
    sll	$a0,$a4,0x10
    or	$a0,$a2,$a0
    beqz	$t0,.L0da71dfc
    sw	$a0,56($sp)
    # Line 652
    lb	$a4,0($t9)
    addiu	$t9,$t9,1
.L0da6ee94:
    and	$a3,$s0,$a5
    sll	$a2,$a4,0x8
    or	$a2,$a0,$a2
    beqz	$a3,.L0da71e04
    sw	$a2,56($sp)
    # Line 653
    lb	$a0,0($t9)
.L0da6eeac:
    # Line 655
    sll	$a4,$a1,0x18
    sw	$a4,60($sp)
    # Line 653
    or	$a3,$a0,$a2
    b	.L0da6e584
    sw	$a3,56($sp)
.L0da6eec0:
    # Line 470
    mtc1	$zero,$f15
.L0da6eec4:
    move	$a6,$zero
    swc1	$f15,312($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f15,308($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f15,304($sp)
.L0da6eee4:
    # Line 471
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da6ef60
    mtc1	$zero,$f19
    ld	$a1,1904($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v1,48($s6)
    addu	$a0,$s7,$a0
    lw	$v0,12($a0)
    bne	$v0,$v1,.L0da6ef60
    mtc1	$zero,$f19
    lw	$a2,16($a0)
    lw	$a3,52($s6)
    bne	$a2,$a3,.L0da6ef60
    mtc1	$zero,$f19
    lw	$a4,20($a0)
    lw	$a5,56($s6)
    bne	$a4,$a5,.L0da6ef60
    mtc1	$zero,$f19
    lwc1	$f18,48($s6)
    swc1	$f18,316($sp)
    lwc1	$f17,52($s6)
    swc1	$f17,320($sp)
    lwc1	$f16,56($s6)
    li	$a2,1
    sb	$a2,1412($sp)
    b	.L0da6ef84
    swc1	$f16,324($sp)
    mtc1	$zero,$f19
.L0da6ef60:
    sb	$zero,1412($sp)
    move	$a2,$zero
    swc1	$f19,324($sp)
    li	$a4,-193
    li	$a3,-33
    swc1	$f19,320($sp)
    and	$s0,$s0,$a4
    and	$s1,$s1,$a3
    swc1	$f19,316($sp)
.L0da6ef84:
    # Line 472
    slti	$a5,$ra,3
    bnez	$a5,.L0da6eff8
    ld	$a1,1864($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v0,36($s5)
    addu	$a0,$s6,$a0
    lw	$at,12($a0)
    bne	$at,$v0,.L0da6eff8
    nop
    lw	$a3,16($a0)
    lw	$a4,40($s5)
    bne	$a3,$a4,.L0da6eff8
    nop
    lw	$a5,20($a0)
    lw	$at,44($s5)
    bne	$a5,$at,.L0da6eff8
    nop
    lwc1	$f25,36($s5)
    swc1	$f25,328($sp)
    lwc1	$f23,40($s5)
    li	$v0,1
    sd	$v0,1824($sp)
    swc1	$f23,332($sp)
    lwc1	$f21,44($s5)
    sb	$v0,1413($sp)
    b	.L0da6f020
    swc1	$f21,336($sp)
.L0da6eff8:
    sb	$zero,1413($sp)
    mtc1	$zero,$f27
    sd	$zero,1824($sp)
    swc1	$f27,336($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f27,332($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f27,328($sp)
.L0da6f020:
    # Line 473
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da6f0a4
    sll	$a0,$ra,0x2
    subu	$a0,$a0,$ra
    sll	$a0,$a0,0x2
    addu	$a0,$s5,$a0
    lw	$a3,12($a0)
    lw	$a4,48($s8)
    bne	$a3,$a4,.L0da6f0a4
    nop
    lw	$a1,16($a0)
    lw	$a3,52($s8)
    bne	$a1,$a3,.L0da6f0a4
    nop
    lw	$a4,20($a0)
    lw	$a5,56($s8)
    bne	$a4,$a5,.L0da6f0a4
    nop
    lwc1	$f0,48($s8)
    li	$at,1
    sd	$at,1832($sp)
    addiu	$a0,$sp,256
    swc1	$f0,84($a0)
    lwc1	$f31,52($s8)
    sb	$at,1414($sp)
    swc1	$f31,88($a0)
    lwc1	$f29,56($s8)
    li	$a4,24
    sd	$a2,1816($sp)
    addiu	$a1,$a0,96
    b	.L0da6f0dc
    swc1	$f29,92($a0)
.L0da6f0a4:
    sb	$zero,1414($sp)
    sd	$zero,1832($sp)
    mtc1	$zero,$f1
    sd	$a2,1816($sp)
    addiu	$a0,$sp,256
    li	$a4,24
    li	$v1,-3073
    swc1	$f1,92($a0)
    li	$v0,-129
    and	$s0,$s0,$v1
    swc1	$f1,88($a0)
    addiu	$a1,$a0,96
    and	$s1,$s1,$v0
    swc1	$f1,84($a0)
.L0da6f0dc:
    # Line 475
    sltu	$a3,$zero,$a6
    sll	$a2,$a3,0x2
    ld	$v0,1816($sp)
    li	$a5,1
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    addu	$s7,$a2,$s7
    sd	$v0,1848($sp)
    addu	$v0,$a3,$v0
    addiu	$s7,$s7,36
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    sd	$a3,1840($sp)
    li	$a3,16
    movn	$at,$v0,$v1
    sd	$a2,1712($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1704($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1680($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da6f248
    and	$s1,$s1,$a3
    ld	$v1,1680($sp)
    sd	$v1,1664($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da6f1b8
    sd	$v1,1800($sp)
.L0da6f180:
    lwc1	$f4,0($s7)
    swc1	$f4,0($a1)
    lwc1	$f3,4($s7)
    ld	$at,1800($sp)
    swc1	$f3,4($a1)
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    lwc1	$f2,8($s7)
    addiu	$s7,$s7,12
    addiu	$a1,$a1,12
    sd	$at,1800($sp)
    addiu	$a4,$a4,3
    bnez	$at,.L0da6f180
    swc1	$f2,-4($a1)
.L0da6f1b8:
    ld	$v0,1664($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0da6f248
    nop
    move	$a0,$s7
    nop
.L0da6f1d0:
    lwc1	$f16,0($a0)
    swc1	$f16,0($a1)
    lwc1	$f15,4($a0)
    swc1	$f15,4($a1)
    lwc1	$f14,8($a0)
    swc1	$f14,8($a1)
    lwc1	$f13,12($a0)
    swc1	$f13,12($a1)
    lwc1	$f12,16($a0)
    swc1	$f12,16($a1)
    lwc1	$f11,20($a0)
    swc1	$f11,20($a1)
    lwc1	$f10,24($a0)
    swc1	$f10,24($a1)
    lwc1	$f9,28($a0)
    swc1	$f9,28($a1)
    lwc1	$f8,32($a0)
    swc1	$f8,32($a1)
    lwc1	$f7,36($a0)
    swc1	$f7,36($a1)
    lwc1	$f6,40($a0)
    swc1	$f6,40($a1)
    addiu	$a2,$a2,-4
    lwc1	$f5,44($a0)
    addiu	$a0,$a0,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a2,$a5,.L0da6f1d0
    swc1	$f5,-4($a1)
    addiu	$a0,$sp,256
.L0da6f248:
    ld	$s7,1704($sp)
    addiu	$a2,$s7,-1
    beq	$a2,$a5,.L0da6f2cc
    # Line 476
    ld	$a1,1848($sp)
    # Line 475
    mtc1	$zero,$f4
    andi	$a3,$s7,0x1
    sll	$a1,$a4,0x2
    sd	$s7,1656($sp)
    beqz	$a3,.L0da6f28c
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    ld	$a2,1704($sp)
    swc1	$f4,4($a1)
    addiu	$a1,$a1,12
    swc1	$f4,-4($a1)
    addiu	$a4,$a4,3
    addiu	$a2,$a2,-2
.L0da6f28c:
    ld	$a3,1656($sp)
    sra	$a3,$a3,0x1
    beqz	$a3,.L0da6f2c8
    nop
    nop
.L0da6f2a0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da6f2a0
    addiu	$a4,$a4,6
.L0da6f2c8:
    # Line 476
    ld	$a1,1848($sp)
.L0da6f2cc:
    ld	$s7,1824($sp)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$v0,1864($sp)
    sll	$v1,$v1,0x2
    sltu	$s7,$zero,$s7
    addu	$s6,$s6,$v1
    addu	$a1,$a1,$s7
    addiu	$s6,$s6,48
    subu	$v0,$v0,$a1
    li	$at,4
    addiu	$v0,$v0,-2
    li	$a1,4
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a1,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a1,$a1,$v0
    subu	$at,$at,$v1
    addiu	$a2,$v0,-1
    sll	$v1,$at,0x14
    sd	$v0,1688($sp)
    sll	$at,$at,0x10
    nor	$v1,$v1,$zero
    sw	$v0,6096($s3)
    nor	$at,$at,$zero
    and	$s0,$s0,$v1
    sd	$a1,1776($sp)
    beq	$a2,$a5,.L0da6f428
    and	$s1,$s1,$at
    ld	$at,1688($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1672($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da6f39c
    sd	$a3,1808($sp)
.L0da6f364:
    lwc1	$f19,0($s6)
    swc1	$f19,0($a1)
    lwc1	$f18,4($s6)
    ld	$v0,1808($sp)
    swc1	$f18,4($a1)
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    lwc1	$f17,8($s6)
    addiu	$s6,$s6,12
    addiu	$a1,$a1,12
    sd	$v0,1808($sp)
    addiu	$a4,$a4,3
    bnez	$v0,.L0da6f364
    swc1	$f17,-4($a1)
.L0da6f39c:
    ld	$v1,1672($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da6f428
    nop
    move	$a0,$s6
.L0da6f3b0:
    lwc1	$f5,0($a0)
    swc1	$f5,0($a1)
    lwc1	$f4,4($a0)
    swc1	$f4,4($a1)
    lwc1	$f3,8($a0)
    swc1	$f3,8($a1)
    lwc1	$f2,12($a0)
    swc1	$f2,12($a1)
    lwc1	$f1,16($a0)
    swc1	$f1,16($a1)
    lwc1	$f0,20($a0)
    swc1	$f0,20($a1)
    lwc1	$f31,24($a0)
    swc1	$f31,24($a1)
    lwc1	$f29,28($a0)
    swc1	$f29,28($a1)
    lwc1	$f27,32($a0)
    swc1	$f27,32($a1)
    lwc1	$f25,36($a0)
    swc1	$f25,36($a1)
    lwc1	$f23,40($a0)
    swc1	$f23,40($a1)
    addiu	$a2,$a2,-4
    lwc1	$f21,44($a0)
    addiu	$a0,$a0,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a2,$a5,.L0da6f3b0
    swc1	$f21,-4($a1)
    addiu	$a0,$sp,256
.L0da6f428:
    ld	$a2,1776($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da6f4ac
    # Line 477
    sll	$at,$s7,0x2
    ld	$s6,1776($sp)
    # Line 476
    mtc1	$zero,$f4
    andi	$a3,$s6,0x1
    sll	$a1,$a4,0x2
    beqz	$a3,.L0da6f46c
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    ld	$a2,1776($sp)
    swc1	$f4,4($a1)
    addiu	$a1,$a1,12
    swc1	$f4,-4($a1)
    addiu	$a4,$a4,3
    addiu	$a2,$a2,-2
.L0da6f46c:
    sra	$a3,$s6,0x1
    beqz	$a3,.L0da6f4a8
    nop
    nop
    nop
.L0da6f480:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da6f480
    addiu	$a4,$a4,6
.L0da6f4a8:
    # Line 477
    sll	$at,$s7,0x2
.L0da6f4ac:
    ld	$s6,1832($sp)
    subu	$at,$at,$s7
    sll	$at,$at,0x2
    sltu	$s6,$zero,$s6
    addu	$s5,$s5,$at
    addu	$v0,$s7,$s6
    addiu	$s5,$s5,36
    subu	$v0,$ra,$v0
    li	$ra,4
    addiu	$v0,$v0,-1
    li	$a1,4
    slt	$ra,$ra,$v0
    li	$v1,1
    movn	$v0,$a1,$ra
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a1,$a1,$v0
    subu	$at,$at,$v1
    addiu	$ra,$v0,-1
    sll	$v1,$at,0x18
    sd	$v0,1696($sp)
    sll	$at,$at,0x14
    nor	$v1,$v1,$zero
    sw	$v0,6100($s3)
    nor	$at,$at,$zero
    and	$s0,$s0,$v1
    sd	$a1,1768($sp)
    beq	$ra,$a5,.L0da6f5f8
    and	$s1,$s1,$at
    ld	$s7,1696($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da6f564
    addu	$a1,$a0,$a1
.L0da6f534:
    lwc1	$f8,0($s5)
    swc1	$f8,0($a1)
    lwc1	$f7,4($s5)
    swc1	$f7,4($a1)
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    lwc1	$f6,8($s5)
    addiu	$s5,$s5,12
    addiu	$a1,$a1,12
    addiu	$a4,$a4,3
    bnez	$a2,.L0da6f534
    swc1	$f6,-4($a1)
.L0da6f564:
    sra	$a2,$s7,0x2
    beqz	$a2,.L0da6f5f8
    nop
    move	$a0,$ra
    move	$a2,$s5
    nop
    nop
.L0da6f580:
    lwc1	$f21,0($a2)
    swc1	$f21,0($a1)
    lwc1	$f19,4($a2)
    swc1	$f19,4($a1)
    lwc1	$f18,8($a2)
    swc1	$f18,8($a1)
    lwc1	$f17,12($a2)
    swc1	$f17,12($a1)
    lwc1	$f16,16($a2)
    swc1	$f16,16($a1)
    lwc1	$f15,20($a2)
    swc1	$f15,20($a1)
    lwc1	$f14,24($a2)
    swc1	$f14,24($a1)
    lwc1	$f13,28($a2)
    swc1	$f13,28($a1)
    lwc1	$f12,32($a2)
    swc1	$f12,32($a1)
    lwc1	$f11,36($a2)
    swc1	$f11,36($a1)
    lwc1	$f10,40($a2)
    swc1	$f10,40($a1)
    addiu	$a0,$a0,-4
    lwc1	$f9,44($a2)
    addiu	$a2,$a2,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a0,$a5,.L0da6f580
    swc1	$f9,-4($a1)
    addiu	$a0,$sp,256
.L0da6f5f8:
    ld	$a2,1768($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da6f67c
    # Line 478
    ld	$at,1712($sp)
    ld	$ra,1768($sp)
    # Line 477
    mtc1	$zero,$f4
    andi	$a3,$ra,0x1
    sll	$a1,$a4,0x2
    beqz	$a3,.L0da6f63c
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    ld	$a2,1768($sp)
    swc1	$f4,4($a1)
    addiu	$a1,$a1,12
    swc1	$f4,-4($a1)
    addiu	$a4,$a4,3
    addiu	$a2,$a2,-2
.L0da6f63c:
    sra	$a3,$ra,0x1
    beqz	$a3,.L0da6f678
    nop
    nop
    nop
.L0da6f650:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da6f650
    addiu	$a4,$a4,6
.L0da6f678:
    # Line 478
    ld	$at,1712($sp)
.L0da6f67c:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,48
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    li	$at,1
    movn	$s7,$s5,$ra
    li	$ra,16
    sllv	$at,$at,$s7
    subu	$s5,$s5,$s7
    subu	$ra,$ra,$at
    addiu	$a2,$s7,-1
    sll	$at,$ra,0x10
    sll	$ra,$ra,0xc
    nor	$at,$at,$zero
    nor	$ra,$ra,$zero
    and	$s0,$s0,$at
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da6f7a8
    and	$s1,$s1,$ra
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da6f720
    addu	$a1,$a0,$a1
.L0da6f6f0:
    lwc1	$f27,0($s8)
    swc1	$f27,0($a1)
    lwc1	$f25,4($s8)
    swc1	$f25,4($a1)
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    lwc1	$f23,8($s8)
    addiu	$s8,$s8,12
    addiu	$a1,$a1,12
    addiu	$a4,$a4,3
    bnez	$ra,.L0da6f6f0
    swc1	$f23,-4($a1)
.L0da6f720:
    sra	$a3,$s7,0x2
    beqz	$a3,.L0da6f7a8
    nop
    move	$a0,$s8
.L0da6f730:
    lwc1	$f9,0($a0)
    swc1	$f9,0($a1)
    lwc1	$f8,4($a0)
    swc1	$f8,4($a1)
    lwc1	$f7,8($a0)
    swc1	$f7,8($a1)
    lwc1	$f6,12($a0)
    swc1	$f6,12($a1)
    lwc1	$f5,16($a0)
    swc1	$f5,16($a1)
    lwc1	$f4,20($a0)
    swc1	$f4,20($a1)
    lwc1	$f3,24($a0)
    swc1	$f3,24($a1)
    lwc1	$f2,28($a0)
    swc1	$f2,28($a1)
    lwc1	$f1,32($a0)
    swc1	$f1,32($a1)
    lwc1	$f0,36($a0)
    swc1	$f0,36($a1)
    lwc1	$f31,40($a0)
    swc1	$f31,40($a1)
    addiu	$a2,$a2,-4
    lwc1	$f29,44($a0)
    addiu	$a0,$a0,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a2,$a5,.L0da6f730
    swc1	$f29,-4($a1)
    addiu	$a0,$sp,256
.L0da6f7a8:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da6e560
    mtc1	$zero,$f4
    andi	$a3,$s5,0x1
    sll	$a1,$a4,0x2
    beqz	$a3,.L0da6f7d8
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$s5,-2
    swc1	$f4,8($a1)
    addiu	$a1,$a1,12
.L0da6f7d8:
    sra	$a4,$s5,0x1
    beqz	$a4,.L0da6e560
    nop
    nop
    nop
    nop
.L0da6f7f0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    swc1	$f4,20($a1)
    bne	$a2,$a5,.L0da6f7f0
    addiu	$a1,$a1,24
    b	.L0da6e560
    nop
.L0da6f81c:
    # Line 481
    sw	$a6,6084($s3)
    # Line 483
    lwc1	$f31,4($s7)
    swc1	$f31,256($sp)
    lwc1	$f29,8($s7)
    swc1	$f29,260($sp)
    # Line 484
    lwc1	$f27,12($s7)
    swc1	$f27,264($sp)
    lw	$a0,0($s7)
    mtc1	$a0,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,268($sp)
    # Line 485
    lwc1	$f23,4($s8)
    swc1	$f23,272($sp)
    lwc1	$f21,8($s8)
    swc1	$f21,276($sp)
    # Line 486
    lwc1	$f19,12($s8)
    swc1	$f19,280($sp)
    lw	$v1,0($s8)
    mtc1	$v1,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,284($sp)
    # Line 487
    lwc1	$f17,4($s6)
    swc1	$f17,288($sp)
    lwc1	$f16,8($s6)
    swc1	$f16,292($sp)
    # Line 488
    lwc1	$f15,12($s6)
    swc1	$f15,296($sp)
    lw	$v0,0($s6)
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,300($sp)
    # Line 489
    lwc1	$f13,4($s5)
    swc1	$f13,304($sp)
    lwc1	$f12,8($s5)
    swc1	$f12,308($sp)
    # Line 490
    lwc1	$f11,12($s5)
    swc1	$f11,312($sp)
    lw	$at,0($s5)
    mtc1	$at,$f10
    # Line 492
    ld	$a5,1904($sp)
    # Line 490
    cvt.s.w	$f10,$f10
    # Line 492
    slti	$a5,$a5,3
    # Line 481
    sw	$a6,1408($sp)
    # Line 492
    bnez	$a5,.L0da6f94c
    # Line 490
    swc1	$f10,316($sp)
    # Line 492
    ld	$a0,1912($sp)
    sll	$a0,$a0,0x4
    lw	$a2,52($s7)
    addu	$a0,$s8,$a0
    lw	$a1,20($a0)
    bne	$a1,$a2,.L0da6f950
    mtc1	$zero,$f4
    lw	$a1,24($a0)
    lw	$a2,56($s7)
    bne	$a1,$a2,.L0da6f950
    mtc1	$zero,$f4
    lw	$a3,28($a0)
    lw	$a4,60($s7)
    bne	$a3,$a4,.L0da6f950
    mtc1	$zero,$f4
    lwc1	$f3,52($s7)
    swc1	$f3,320($sp)
    lwc1	$f2,56($s7)
    swc1	$f2,324($sp)
    lwc1	$f1,60($s7)
    swc1	$f1,328($sp)
    lw	$at,48($s7)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    li	$a6,1
    lui	$s1,0xff
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da6f974
    swc1	$f0,332($sp)
.L0da6f94c:
    mtc1	$zero,$f4
.L0da6f950:
    swc1	$f4,332($sp)
    move	$a6,$zero
    swc1	$f4,328($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f4,324($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f4,320($sp)
.L0da6f974:
    # Line 493
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da6f9f8
    mtc1	$zero,$f9
    ld	$a0,1904($sp)
    sll	$a0,$a0,0x4
    lw	$v1,68($s6)
    addu	$a0,$s7,$a0
    lw	$v0,20($a0)
    bne	$v0,$v1,.L0da6f9f8
    mtc1	$zero,$f9
    lw	$a1,24($a0)
    lw	$a2,72($s6)
    bne	$a1,$a2,.L0da6f9f8
    mtc1	$zero,$f9
    lw	$a3,28($a0)
    lw	$a4,76($s6)
    bne	$a3,$a4,.L0da6f9f8
    mtc1	$zero,$f9
    lwc1	$f8,68($s6)
    swc1	$f8,336($sp)
    lwc1	$f7,72($s6)
    swc1	$f7,340($sp)
    lwc1	$f6,76($s6)
    swc1	$f6,344($sp)
    lw	$a3,64($s6)
    mtc1	$a3,$f5
    cvt.s.w	$f5,$f5
    li	$a2,1
    sb	$a2,1412($sp)
    b	.L0da6fa20
    swc1	$f5,348($sp)
    mtc1	$zero,$f9
.L0da6f9f8:
    sb	$zero,1412($sp)
    swc1	$f9,348($sp)
    move	$a2,$zero
    swc1	$f9,344($sp)
    li	$a5,-193
    li	$a4,-33
    swc1	$f9,340($sp)
    and	$s0,$s0,$a5
    and	$s1,$s1,$a4
    swc1	$f9,336($sp)
.L0da6fa20:
    # Line 494
    slti	$at,$ra,3
    bnez	$at,.L0da6fa9c
    ld	$a0,1864($sp)
    sll	$a0,$a0,0x4
    lw	$v1,52($s5)
    addu	$a0,$s6,$a0
    lw	$v0,20($a0)
    bne	$v0,$v1,.L0da6fa9c
    nop
    lw	$a1,24($a0)
    lw	$a3,56($s5)
    bne	$a1,$a3,.L0da6fa9c
    nop
    lw	$a4,28($a0)
    lw	$a5,60($s5)
    bne	$a4,$a5,.L0da6fa9c
    nop
    lwc1	$f13,52($s5)
    swc1	$f13,352($sp)
    lwc1	$f12,56($s5)
    swc1	$f12,356($sp)
    lwc1	$f11,60($s5)
    swc1	$f11,360($sp)
    lw	$v0,48($s5)
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    li	$at,1
    sd	$at,1824($sp)
    sb	$at,1413($sp)
    b	.L0da6fac8
    swc1	$f10,364($sp)
.L0da6fa9c:
    sb	$zero,1413($sp)
    mtc1	$zero,$f14
    sd	$zero,1824($sp)
    swc1	$f14,364($sp)
    swc1	$f14,360($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f14,356($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f14,352($sp)
.L0da6fac8:
    # Line 495
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da6fb54
    sll	$a0,$ra,0x4
    addu	$a0,$s5,$a0
    lw	$a3,20($a0)
    lw	$a4,68($s8)
    bne	$a3,$a4,.L0da6fb54
    nop
    lw	$a1,24($a0)
    lw	$a3,72($s8)
    bne	$a1,$a3,.L0da6fb54
    nop
    lw	$a4,28($a0)
    lw	$a5,76($s8)
    bne	$a4,$a5,.L0da6fb54
    nop
    lwc1	$f18,68($s8)
    addiu	$a0,$sp,256
    swc1	$f18,112($a0)
    lwc1	$f17,72($s8)
    swc1	$f17,116($a0)
    lwc1	$f16,76($s8)
    swc1	$f16,120($a0)
    lw	$v0,64($s8)
    mtc1	$v0,$f15
    li	$at,1
    sd	$at,1832($sp)
    cvt.s.w	$f15,$f15
    sb	$at,1414($sp)
    li	$a4,32
    sd	$a2,1816($sp)
    addiu	$a1,$a0,128
    b	.L0da6fb90
    swc1	$f15,124($a0)
.L0da6fb54:
    sb	$zero,1414($sp)
    sd	$zero,1832($sp)
    mtc1	$zero,$f19
    sd	$a2,1816($sp)
    addiu	$a0,$sp,256
    swc1	$f19,124($a0)
    li	$a4,32
    li	$a1,-3073
    swc1	$f19,120($a0)
    li	$v1,-129
    and	$s0,$s0,$a1
    swc1	$f19,116($a0)
    addiu	$a1,$a0,128
    and	$s1,$s1,$v1
    swc1	$f19,112($a0)
.L0da6fb90:
    # Line 497
    ld	$v0,1816($sp)
    sltu	$a2,$zero,$a6
    sd	$a2,1840($sp)
    li	$a3,16
    li	$a5,1
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    sd	$v0,1848($sp)
    addu	$v0,$a2,$v0
    sll	$a2,$a2,0x4
    addu	$s7,$a2,$s7
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    addiu	$s7,$s7,48
    movn	$at,$v0,$v1
    sd	$a2,1632($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1640($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1608($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da6fd48
    and	$s1,$s1,$a3
    ld	$v1,1608($sp)
    sd	$v1,1584($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da6fc74
    sd	$v1,1752($sp)
.L0da6fc2c:
    lwc1	$f27,4($s7)
    swc1	$f27,0($a1)
    lwc1	$f25,8($s7)
    swc1	$f25,4($a1)
    lwc1	$f23,12($s7)
    swc1	$f23,8($a1)
    lw	$v0,0($s7)
    mtc1	$v0,$f21
    ld	$at,1752($sp)
    cvt.s.w	$f21,$f21
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    addiu	$s7,$s7,16
    addiu	$a1,$a1,16
    sd	$at,1752($sp)
    addiu	$a4,$a4,4
    bnez	$at,.L0da6fc2c
    swc1	$f21,-4($a1)
.L0da6fc74:
    ld	$v1,1584($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da6fd48
    nop
    move	$a0,$s7
    nop
    nop
.L0da6fc90:
    lwc1	$f13,4($a0)
    swc1	$f13,0($a1)
    lwc1	$f12,8($a0)
    swc1	$f12,4($a1)
    lwc1	$f11,12($a0)
    swc1	$f11,8($a1)
    lw	$v1,0($a0)
    mtc1	$v1,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,12($a1)
    lwc1	$f9,20($a0)
    swc1	$f9,16($a1)
    lwc1	$f8,24($a0)
    swc1	$f8,20($a1)
    lwc1	$f7,28($a0)
    swc1	$f7,24($a1)
    lw	$v0,16($a0)
    mtc1	$v0,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,28($a1)
    lwc1	$f5,36($a0)
    swc1	$f5,32($a1)
    lwc1	$f4,40($a0)
    swc1	$f4,36($a1)
    lwc1	$f3,44($a0)
    swc1	$f3,40($a1)
    lw	$at,32($a0)
    mtc1	$at,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,44($a1)
    lwc1	$f1,52($a0)
    swc1	$f1,48($a1)
    lwc1	$f0,56($a0)
    swc1	$f0,52($a1)
    lwc1	$f31,60($a0)
    swc1	$f31,56($a1)
    lw	$a3,48($a0)
    mtc1	$a3,$f29
    cvt.s.w	$f29,$f29
    addiu	$a2,$a2,-4
    addiu	$a0,$a0,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a2,$a5,.L0da6fc90
    swc1	$f29,-4($a1)
    addiu	$a0,$sp,256
.L0da6fd48:
    ld	$a2,1640($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da6fd94
    # Line 498
    ld	$s7,1824($sp)
    # Line 497
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da6fd70:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    addiu	$a1,$a1,16
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da6fd70
    addiu	$a4,$a4,4
    # Line 498
    ld	$s7,1824($sp)
.L0da6fd94:
    ld	$v1,1848($sp)
    li	$a3,16
    ld	$at,1864($sp)
    sltu	$s7,$zero,$s7
    addu	$v0,$v1,$s7
    sll	$v1,$v1,0x4
    addu	$s6,$s6,$v1
    subu	$at,$at,$v0
    li	$v0,4
    addiu	$at,$at,-2
    li	$v1,4
    slt	$v0,$v0,$at
    movn	$at,$v1,$v0
    li	$v0,1
    addiu	$s6,$s6,64
    sllv	$v0,$v0,$at
    subu	$v1,$v1,$at
    subu	$a3,$a3,$v0
    addiu	$a2,$at,-1
    sll	$v0,$a3,0x14
    sd	$at,1600($sp)
    sll	$a3,$a3,0x10
    nor	$v0,$v0,$zero
    sw	$at,6096($s3)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sd	$v1,1624($sp)
    beq	$a2,$a5,.L0da6ff38
    and	$s1,$s1,$a3
    ld	$at,1600($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1592($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da6fe6c
    sd	$a3,1760($sp)
.L0da6fe24:
    lwc1	$f17,4($s6)
    swc1	$f17,0($a1)
    lwc1	$f16,8($s6)
    swc1	$f16,4($a1)
    lwc1	$f15,12($s6)
    swc1	$f15,8($a1)
    lw	$v1,0($s6)
    mtc1	$v1,$f14
    ld	$v0,1760($sp)
    cvt.s.w	$f14,$f14
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    addiu	$s6,$s6,16
    addiu	$a1,$a1,16
    sd	$v0,1760($sp)
    addiu	$a4,$a4,4
    bnez	$v0,.L0da6fe24
    swc1	$f14,-4($a1)
.L0da6fe6c:
    ld	$a3,1592($sp)
    sra	$a3,$a3,0x2
    beqz	$a3,.L0da6ff38
    nop
    move	$a0,$s6
.L0da6fe80:
    lwc1	$f7,4($a0)
    swc1	$f7,0($a1)
    lwc1	$f6,8($a0)
    swc1	$f6,4($a1)
    lwc1	$f5,12($a0)
    swc1	$f5,8($a1)
    lw	$a3,0($a0)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,12($a1)
    lwc1	$f3,20($a0)
    swc1	$f3,16($a1)
    lwc1	$f2,24($a0)
    swc1	$f2,20($a1)
    lwc1	$f1,28($a0)
    swc1	$f1,24($a1)
    lw	$v1,16($a0)
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,28($a1)
    lwc1	$f31,36($a0)
    swc1	$f31,32($a1)
    lwc1	$f29,40($a0)
    swc1	$f29,36($a1)
    lwc1	$f27,44($a0)
    swc1	$f27,40($a1)
    lw	$v0,32($a0)
    mtc1	$v0,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,44($a1)
    lwc1	$f23,52($a0)
    swc1	$f23,48($a1)
    lwc1	$f21,56($a0)
    swc1	$f21,52($a1)
    lwc1	$f19,60($a0)
    swc1	$f19,56($a1)
    lw	$at,48($a0)
    mtc1	$at,$f18
    cvt.s.w	$f18,$f18
    addiu	$a2,$a2,-4
    addiu	$a0,$a0,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a2,$a5,.L0da6fe80
    swc1	$f18,-4($a1)
    addiu	$a0,$sp,256
.L0da6ff38:
    ld	$a2,1624($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da6ff84
    # Line 499
    ld	$s6,1832($sp)
    # Line 498
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da6ff60:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    addiu	$a1,$a1,16
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da6ff60
    addiu	$a4,$a4,4
    # Line 499
    ld	$s6,1832($sp)
.L0da6ff84:
    sll	$at,$s7,0x4
    sltu	$s6,$zero,$s6
    addu	$s5,$s5,$at
    addu	$a3,$s7,$s6
    addiu	$s5,$s5,48
    subu	$a3,$ra,$a3
    li	$ra,4
    addiu	$a3,$a3,-1
    li	$at,4
    slt	$ra,$ra,$a3
    movn	$a3,$at,$ra
    li	$ra,1
    li	$a2,16
    sllv	$ra,$ra,$a3
    subu	$at,$at,$a3
    subu	$a2,$a2,$ra
    sd	$at,1648($sp)
    addiu	$ra,$a3,-1
    sll	$at,$a2,0x18
    sll	$a2,$a2,0x14
    nor	$at,$at,$zero
    sd	$a3,1616($sp)
    nor	$a2,$a2,$zero
    and	$s0,$s0,$at
    sw	$a3,6100($s3)
    beq	$ra,$a5,.L0da70118
    and	$s1,$s1,$a2
    ld	$s7,1616($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da70044
    addu	$a1,$a0,$a1
.L0da70004:
    lwc1	$f11,4($s5)
    swc1	$f11,0($a1)
    lwc1	$f10,8($s5)
    swc1	$f10,4($a1)
    lwc1	$f9,12($s5)
    swc1	$f9,8($a1)
    lw	$a3,0($s5)
    mtc1	$a3,$f8
    cvt.s.w	$f8,$f8
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    addiu	$s5,$s5,16
    addiu	$a1,$a1,16
    addiu	$a4,$a4,4
    bnez	$a2,.L0da70004
    swc1	$f8,-4($a1)
.L0da70044:
    sra	$at,$s7,0x2
    beqz	$at,.L0da70118
    nop
    move	$a0,$ra
    move	$a2,$s5
    nop
    nop
.L0da70060:
    lwc1	$f1,4($a2)
    swc1	$f1,0($a1)
    lwc1	$f0,8($a2)
    swc1	$f0,4($a1)
    lwc1	$f31,12($a2)
    swc1	$f31,8($a1)
    lw	$ra,0($a2)
    mtc1	$ra,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,12($a1)
    lwc1	$f27,20($a2)
    swc1	$f27,16($a1)
    lwc1	$f25,24($a2)
    swc1	$f25,20($a1)
    lwc1	$f23,28($a2)
    swc1	$f23,24($a1)
    lw	$a3,16($a2)
    mtc1	$a3,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,28($a1)
    lwc1	$f19,36($a2)
    swc1	$f19,32($a1)
    lwc1	$f18,40($a2)
    swc1	$f18,36($a1)
    lwc1	$f17,44($a2)
    swc1	$f17,40($a1)
    lw	$v1,32($a2)
    mtc1	$v1,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,44($a1)
    lwc1	$f15,52($a2)
    swc1	$f15,48($a1)
    lwc1	$f14,56($a2)
    swc1	$f14,52($a1)
    lwc1	$f13,60($a2)
    swc1	$f13,56($a1)
    lw	$v0,48($a2)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    addiu	$a0,$a0,-4
    addiu	$a2,$a2,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a0,$a5,.L0da70060
    swc1	$f12,-4($a1)
    addiu	$a0,$sp,256
.L0da70118:
    ld	$a2,1648($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da70164
    # Line 500
    ld	$at,1632($sp)
    # Line 499
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da70140:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    addiu	$a1,$a1,16
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da70140
    addiu	$a4,$a4,4
    # Line 500
    ld	$at,1632($sp)
.L0da70164:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,64
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    movn	$s7,$s5,$ra
    li	$ra,1
    li	$a3,16
    sllv	$ra,$ra,$s7
    subu	$s5,$s5,$s7
    subu	$a3,$a3,$ra
    addiu	$a2,$s7,-1
    sll	$ra,$a3,0x10
    sll	$a3,$a3,0xc
    nor	$ra,$ra,$zero
    nor	$a3,$a3,$zero
    and	$s0,$s0,$ra
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da702e8
    and	$s1,$s1,$a3
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da70218
    addu	$a1,$a0,$a1
.L0da701d8:
    lwc1	$f5,4($s8)
    swc1	$f5,0($a1)
    lwc1	$f4,8($s8)
    swc1	$f4,4($a1)
    lwc1	$f3,12($s8)
    swc1	$f3,8($a1)
    lw	$a3,0($s8)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    addiu	$s8,$s8,16
    addiu	$a1,$a1,16
    addiu	$a4,$a4,4
    bnez	$ra,.L0da701d8
    swc1	$f2,-4($a1)
.L0da70218:
    sra	$ra,$s7,0x2
    beqz	$ra,.L0da702e8
    nop
    move	$a0,$s8
    nop
    nop
.L0da70230:
    lwc1	$f23,4($a0)
    swc1	$f23,0($a1)
    lwc1	$f21,8($a0)
    swc1	$f21,4($a1)
    lwc1	$f19,12($a0)
    swc1	$f19,8($a1)
    lw	$a3,0($a0)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,12($a1)
    lwc1	$f17,20($a0)
    swc1	$f17,16($a1)
    lwc1	$f16,24($a0)
    swc1	$f16,20($a1)
    lwc1	$f15,28($a0)
    swc1	$f15,24($a1)
    lw	$v1,16($a0)
    mtc1	$v1,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,28($a1)
    lwc1	$f13,36($a0)
    swc1	$f13,32($a1)
    lwc1	$f12,40($a0)
    swc1	$f12,36($a1)
    lwc1	$f11,44($a0)
    swc1	$f11,40($a1)
    lw	$v0,32($a0)
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,44($a1)
    lwc1	$f9,52($a0)
    swc1	$f9,48($a1)
    lwc1	$f8,56($a0)
    swc1	$f8,52($a1)
    lwc1	$f7,60($a0)
    swc1	$f7,56($a1)
    lw	$at,48($a0)
    mtc1	$at,$f6
    cvt.s.w	$f6,$f6
    addiu	$a2,$a2,-4
    addiu	$a0,$a0,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a2,$a5,.L0da70230
    swc1	$f6,-4($a1)
    addiu	$a0,$sp,256
.L0da702e8:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da6e560
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
.L0da70300:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    bne	$a2,$a5,.L0da70300
    addiu	$a1,$a1,16
    b	.L0da6e560
    nop
.L0da70324:
    # Line 503
    sw	$a3,6084($s3)
    # Line 505
    lwc1	$f15,8($s7)
    swc1	$f15,256($sp)
    lwc1	$f14,12($s7)
    swc1	$f14,260($sp)
    # Line 506
    lwc1	$f13,16($s7)
    swc1	$f13,264($sp)
    lwc1	$f12,0($s7)
    swc1	$f12,268($sp)
    # Line 507
    lwc1	$f11,4($s7)
    swc1	$f11,272($sp)
    # Line 508
    lwc1	$f10,8($s8)
    swc1	$f10,276($sp)
    lwc1	$f9,12($s8)
    swc1	$f9,280($sp)
    # Line 509
    lwc1	$f8,16($s8)
    swc1	$f8,284($sp)
    lwc1	$f7,0($s8)
    swc1	$f7,288($sp)
    # Line 510
    lwc1	$f6,4($s8)
    swc1	$f6,292($sp)
    # Line 511
    lwc1	$f5,8($s6)
    swc1	$f5,296($sp)
    lwc1	$f4,12($s6)
    swc1	$f4,300($sp)
    # Line 512
    lwc1	$f3,16($s6)
    swc1	$f3,304($sp)
    lwc1	$f2,0($s6)
    swc1	$f2,308($sp)
    # Line 513
    lwc1	$f1,4($s6)
    swc1	$f1,312($sp)
    # Line 514
    lwc1	$f0,8($s5)
    swc1	$f0,316($sp)
    lwc1	$f31,12($s5)
    swc1	$f31,320($sp)
    # Line 515
    lwc1	$f29,16($s5)
    swc1	$f29,324($sp)
    lwc1	$f27,0($s5)
    # Line 518
    ld	$a2,1904($sp)
    # Line 515
    swc1	$f27,328($sp)
    # Line 518
    slti	$a2,$a2,3
    # Line 516
    lwc1	$f25,4($s5)
    # Line 503
    sw	$a3,1408($sp)
    # Line 518
    bnez	$a2,.L0da7045c
    # Line 516
    swc1	$f25,332($sp)
    # Line 518
    ld	$a1,1912($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$a4,68($s7)
    addu	$a0,$s8,$a0
    lw	$a3,28($a0)
    bne	$a3,$a4,.L0da70460
    mtc1	$zero,$f23
    lw	$a2,32($a0)
    lw	$a3,72($s7)
    bne	$a2,$a3,.L0da70460
    mtc1	$zero,$f23
    lw	$a4,36($a0)
    lw	$a5,76($s7)
    bne	$a4,$a5,.L0da70460
    mtc1	$zero,$f23
    lwc1	$f21,68($s7)
    swc1	$f21,336($sp)
    lwc1	$f19,72($s7)
    swc1	$f19,340($sp)
    lwc1	$f18,76($s7)
    swc1	$f18,344($sp)
    lwc1	$f17,60($s7)
    swc1	$f17,348($sp)
    li	$a6,1
    lui	$s1,0xff
    lwc1	$f16,64($s7)
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da70488
    swc1	$f16,352($sp)
.L0da7045c:
    mtc1	$zero,$f23
.L0da70460:
    swc1	$f23,352($sp)
    swc1	$f23,348($sp)
    move	$a6,$zero
    swc1	$f23,344($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f23,340($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f23,336($sp)
.L0da70488:
    # Line 519
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da70514
    mtc1	$zero,$f1
    ld	$a1,1904($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v1,88($s6)
    addu	$a0,$s7,$a0
    lw	$v0,28($a0)
    bne	$v0,$v1,.L0da70514
    mtc1	$zero,$f1
    lw	$a2,32($a0)
    lw	$a3,92($s6)
    bne	$a2,$a3,.L0da70514
    mtc1	$zero,$f1
    lw	$a4,36($a0)
    lw	$a5,96($s6)
    bne	$a4,$a5,.L0da70514
    mtc1	$zero,$f1
    lwc1	$f0,88($s6)
    swc1	$f0,356($sp)
    lwc1	$f31,92($s6)
    swc1	$f31,360($sp)
    lwc1	$f29,96($s6)
    swc1	$f29,364($sp)
    lwc1	$f27,80($s6)
    swc1	$f27,368($sp)
    lwc1	$f25,84($s6)
    li	$a2,1
    sb	$a2,1412($sp)
    b	.L0da70540
    swc1	$f25,372($sp)
    mtc1	$zero,$f1
.L0da70514:
    sb	$zero,1412($sp)
    swc1	$f1,372($sp)
    swc1	$f1,368($sp)
    move	$a2,$zero
    swc1	$f1,364($sp)
    li	$a4,-193
    li	$a3,-33
    swc1	$f1,360($sp)
    and	$s0,$s0,$a4
    and	$s1,$s1,$a3
    swc1	$f1,356($sp)
.L0da70540:
    # Line 520
    slti	$a5,$ra,3
    bnez	$a5,.L0da705c4
    ld	$a1,1864($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v0,68($s5)
    addu	$a0,$s6,$a0
    lw	$at,28($a0)
    bne	$at,$v0,.L0da705c4
    nop
    lw	$a3,32($a0)
    lw	$a4,72($s5)
    bne	$a3,$a4,.L0da705c4
    nop
    lw	$a5,36($a0)
    lw	$at,76($s5)
    bne	$a5,$at,.L0da705c4
    nop
    lwc1	$f6,68($s5)
    swc1	$f6,376($sp)
    lwc1	$f5,72($s5)
    swc1	$f5,380($sp)
    lwc1	$f4,76($s5)
    swc1	$f4,384($sp)
    lwc1	$f3,60($s5)
    li	$v0,1
    sd	$v0,1824($sp)
    swc1	$f3,388($sp)
    lwc1	$f2,64($s5)
    sb	$v0,1413($sp)
    b	.L0da705f4
    swc1	$f2,392($sp)
.L0da705c4:
    sb	$zero,1413($sp)
    mtc1	$zero,$f7
    sd	$zero,1824($sp)
    swc1	$f7,392($sp)
    swc1	$f7,388($sp)
    swc1	$f7,384($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f7,380($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f7,376($sp)
.L0da705f4:
    # Line 521
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da70688
    sll	$a0,$ra,0x2
    addu	$a0,$a0,$ra
    sll	$a0,$a0,0x2
    addu	$a0,$s5,$a0
    lw	$a3,28($a0)
    lw	$a4,88($s8)
    bne	$a3,$a4,.L0da70688
    nop
    lw	$a1,32($a0)
    lw	$a3,92($s8)
    bne	$a1,$a3,.L0da70688
    nop
    lw	$a4,36($a0)
    lw	$a5,96($s8)
    bne	$a4,$a5,.L0da70688
    nop
    lwc1	$f12,88($s8)
    addiu	$a0,$sp,256
    swc1	$f12,140($a0)
    lwc1	$f11,92($s8)
    swc1	$f11,144($a0)
    lwc1	$f10,96($s8)
    li	$at,1
    sd	$at,1832($sp)
    swc1	$f10,148($a0)
    lwc1	$f9,80($s8)
    sb	$at,1414($sp)
    swc1	$f9,152($a0)
    lwc1	$f8,84($s8)
    li	$a4,40
    sd	$a2,1816($sp)
    addiu	$a1,$a0,160
    b	.L0da706c8
    swc1	$f8,156($a0)
.L0da70688:
    sb	$zero,1414($sp)
    sd	$zero,1832($sp)
    mtc1	$zero,$f13
    sd	$a2,1816($sp)
    addiu	$a0,$sp,256
    swc1	$f13,156($a0)
    swc1	$f13,152($a0)
    li	$a4,40
    li	$v1,-3073
    swc1	$f13,148($a0)
    li	$v0,-129
    and	$s0,$s0,$v1
    swc1	$f13,144($a0)
    addiu	$a1,$a0,160
    and	$s1,$s1,$v0
    swc1	$f13,140($a0)
.L0da706c8:
    # Line 523
    sltu	$a3,$zero,$a6
    sll	$a2,$a3,0x2
    ld	$v0,1816($sp)
    li	$a5,1
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    addu	$s7,$a2,$s7
    sd	$v0,1848($sp)
    addu	$v0,$a3,$v0
    addiu	$s7,$s7,60
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    sd	$a3,1840($sp)
    li	$a3,16
    movn	$at,$v0,$v1
    sd	$a2,1568($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1552($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1528($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da70884
    and	$s1,$s1,$a3
    ld	$v1,1528($sp)
    sd	$v1,1520($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da707b4
    sd	$v1,1744($sp)
.L0da7076c:
    lwc1	$f18,8($s7)
    swc1	$f18,0($a1)
    lwc1	$f17,12($s7)
    swc1	$f17,4($a1)
    lwc1	$f16,16($s7)
    swc1	$f16,8($a1)
    lwc1	$f15,0($s7)
    ld	$at,1744($sp)
    swc1	$f15,12($a1)
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    lwc1	$f14,4($s7)
    addiu	$s7,$s7,20
    addiu	$a1,$a1,20
    sd	$at,1744($sp)
    addiu	$a4,$a4,5
    bnez	$at,.L0da7076c
    swc1	$f14,-4($a1)
.L0da707b4:
    ld	$v0,1520($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0da70884
    nop
    nop
    nop
    nop
.L0da707d0:
    lwc1	$f12,8($s7)
    swc1	$f12,0($a1)
    lwc1	$f11,12($s7)
    swc1	$f11,4($a1)
    lwc1	$f10,16($s7)
    swc1	$f10,8($a1)
    lwc1	$f9,0($s7)
    swc1	$f9,12($a1)
    lwc1	$f8,4($s7)
    swc1	$f8,16($a1)
    lwc1	$f7,28($s7)
    swc1	$f7,20($a1)
    lwc1	$f6,32($s7)
    swc1	$f6,24($a1)
    lwc1	$f5,36($s7)
    swc1	$f5,28($a1)
    lwc1	$f4,20($s7)
    swc1	$f4,32($a1)
    lwc1	$f3,24($s7)
    swc1	$f3,36($a1)
    lwc1	$f2,48($s7)
    swc1	$f2,40($a1)
    lwc1	$f1,52($s7)
    swc1	$f1,44($a1)
    lwc1	$f0,56($s7)
    swc1	$f0,48($a1)
    lwc1	$f31,40($s7)
    swc1	$f31,52($a1)
    lwc1	$f29,44($s7)
    swc1	$f29,56($a1)
    lwc1	$f27,68($s7)
    swc1	$f27,60($a1)
    lwc1	$f25,72($s7)
    swc1	$f25,64($a1)
    lwc1	$f23,76($s7)
    swc1	$f23,68($a1)
    lwc1	$f21,60($s7)
    swc1	$f21,72($a1)
    addiu	$a2,$a2,-4
    lwc1	$f19,64($s7)
    addiu	$s7,$s7,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a2,$a5,.L0da707d0
    swc1	$f19,-4($a1)
.L0da70884:
    ld	$s7,1552($sp)
    addiu	$a2,$s7,-1
    beq	$a2,$a5,.L0da708c8
    # Line 524
    ld	$v0,1848($sp)
    # Line 523
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da708a0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    addiu	$a1,$a1,20
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da708a0
    addiu	$a4,$a4,5
    # Line 524
    ld	$v0,1848($sp)
.L0da708c8:
    ld	$s7,1824($sp)
    ld	$at,1864($sp)
    sltu	$s7,$zero,$s7
    sll	$v1,$v0,0x2
    addu	$v1,$v1,$v0
    addu	$v0,$v0,$s7
    li	$a3,16
    subu	$at,$at,$v0
    li	$v0,4
    sll	$v1,$v1,0x2
    addu	$s6,$s6,$v1
    addiu	$at,$at,-2
    li	$v1,4
    slt	$v0,$v0,$at
    movn	$at,$v1,$v0
    li	$v0,1
    addiu	$s6,$s6,80
    sllv	$v0,$v0,$at
    subu	$v1,$v1,$at
    subu	$a3,$a3,$v0
    addiu	$a2,$at,-1
    sll	$v0,$a3,0x14
    sd	$at,1536($sp)
    sll	$a3,$a3,0x10
    nor	$v0,$v0,$zero
    sw	$at,6096($s3)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sd	$v1,1560($sp)
    beq	$a2,$a5,.L0da70a74
    and	$s1,$s1,$a3
    ld	$at,1536($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1512($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da709a8
    sd	$a3,1736($sp)
.L0da70960:
    lwc1	$f17,8($s6)
    swc1	$f17,0($a1)
    lwc1	$f16,12($s6)
    swc1	$f16,4($a1)
    lwc1	$f15,16($s6)
    swc1	$f15,8($a1)
    lwc1	$f14,0($s6)
    ld	$v0,1736($sp)
    swc1	$f14,12($a1)
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    lwc1	$f13,4($s6)
    addiu	$s6,$s6,20
    addiu	$a1,$a1,20
    sd	$v0,1736($sp)
    addiu	$a4,$a4,5
    bnez	$v0,.L0da70960
    swc1	$f13,-4($a1)
.L0da709a8:
    ld	$v1,1512($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da70a74
    nop
    nop
    nop
.L0da709c0:
    lwc1	$f11,8($s6)
    swc1	$f11,0($a1)
    lwc1	$f10,12($s6)
    swc1	$f10,4($a1)
    lwc1	$f9,16($s6)
    swc1	$f9,8($a1)
    lwc1	$f8,0($s6)
    swc1	$f8,12($a1)
    lwc1	$f7,4($s6)
    swc1	$f7,16($a1)
    lwc1	$f6,28($s6)
    swc1	$f6,20($a1)
    lwc1	$f5,32($s6)
    swc1	$f5,24($a1)
    lwc1	$f4,36($s6)
    swc1	$f4,28($a1)
    lwc1	$f3,20($s6)
    swc1	$f3,32($a1)
    lwc1	$f2,24($s6)
    swc1	$f2,36($a1)
    lwc1	$f1,48($s6)
    swc1	$f1,40($a1)
    lwc1	$f0,52($s6)
    swc1	$f0,44($a1)
    lwc1	$f31,56($s6)
    swc1	$f31,48($a1)
    lwc1	$f29,40($s6)
    swc1	$f29,52($a1)
    lwc1	$f27,44($s6)
    swc1	$f27,56($a1)
    lwc1	$f25,68($s6)
    swc1	$f25,60($a1)
    lwc1	$f23,72($s6)
    swc1	$f23,64($a1)
    lwc1	$f21,76($s6)
    swc1	$f21,68($a1)
    lwc1	$f19,60($s6)
    swc1	$f19,72($a1)
    addiu	$a2,$a2,-4
    lwc1	$f18,64($s6)
    addiu	$s6,$s6,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a2,$a5,.L0da709c0
    swc1	$f18,-4($a1)
.L0da70a74:
    ld	$a2,1560($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da70ab8
    # Line 525
    ld	$s6,1832($sp)
    # Line 524
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da70a90:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    addiu	$a1,$a1,20
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da70a90
    addiu	$a4,$a4,5
    # Line 525
    ld	$s6,1832($sp)
.L0da70ab8:
    li	$a2,16
    sll	$at,$s7,0x2
    addu	$at,$at,$s7
    sltu	$s6,$zero,$s6
    sll	$at,$at,0x2
    addu	$a3,$s7,$s6
    addu	$s5,$s5,$at
    subu	$a3,$ra,$a3
    li	$ra,4
    addiu	$a3,$a3,-1
    li	$at,4
    slt	$ra,$ra,$a3
    movn	$a3,$at,$ra
    li	$ra,1
    addiu	$s5,$s5,60
    sllv	$ra,$ra,$a3
    subu	$at,$at,$a3
    subu	$a2,$a2,$ra
    sd	$at,1576($sp)
    addiu	$ra,$a3,-1
    sll	$at,$a2,0x18
    sll	$a2,$a2,0x14
    nor	$at,$at,$zero
    sd	$a3,1544($sp)
    nor	$a2,$a2,$zero
    and	$s0,$s0,$at
    sw	$a3,6100($s3)
    beq	$ra,$a5,.L0da70c48
    and	$s1,$s1,$a2
    ld	$s7,1544($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da70b80
    addu	$a1,$a0,$a1
.L0da70b40:
    lwc1	$f16,8($s5)
    swc1	$f16,0($a1)
    lwc1	$f15,12($s5)
    swc1	$f15,4($a1)
    lwc1	$f14,16($s5)
    swc1	$f14,8($a1)
    lwc1	$f13,0($s5)
    swc1	$f13,12($a1)
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    lwc1	$f12,4($s5)
    addiu	$s5,$s5,20
    addiu	$a1,$a1,20
    addiu	$a4,$a4,5
    bnez	$a2,.L0da70b40
    swc1	$f12,-4($a1)
.L0da70b80:
    sra	$a2,$s7,0x2
    beqz	$a2,.L0da70c48
    nop
    move	$a0,$ra
.L0da70b90:
    lwc1	$f10,8($s5)
    swc1	$f10,0($a1)
    lwc1	$f9,12($s5)
    swc1	$f9,4($a1)
    lwc1	$f8,16($s5)
    swc1	$f8,8($a1)
    lwc1	$f7,0($s5)
    swc1	$f7,12($a1)
    lwc1	$f6,4($s5)
    swc1	$f6,16($a1)
    lwc1	$f5,28($s5)
    swc1	$f5,20($a1)
    lwc1	$f4,32($s5)
    swc1	$f4,24($a1)
    lwc1	$f3,36($s5)
    swc1	$f3,28($a1)
    lwc1	$f2,20($s5)
    swc1	$f2,32($a1)
    lwc1	$f1,24($s5)
    swc1	$f1,36($a1)
    lwc1	$f0,48($s5)
    swc1	$f0,40($a1)
    lwc1	$f31,52($s5)
    swc1	$f31,44($a1)
    lwc1	$f29,56($s5)
    swc1	$f29,48($a1)
    lwc1	$f27,40($s5)
    swc1	$f27,52($a1)
    lwc1	$f25,44($s5)
    swc1	$f25,56($a1)
    lwc1	$f23,68($s5)
    swc1	$f23,60($a1)
    lwc1	$f21,72($s5)
    swc1	$f21,64($a1)
    lwc1	$f19,76($s5)
    swc1	$f19,68($a1)
    lwc1	$f18,60($s5)
    swc1	$f18,72($a1)
    addiu	$a0,$a0,-4
    lwc1	$f17,64($s5)
    addiu	$s5,$s5,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a0,$a5,.L0da70b90
    swc1	$f17,-4($a1)
    addiu	$a0,$sp,256
.L0da70c48:
    ld	$a2,1576($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da70c98
    # Line 526
    ld	$at,1568($sp)
    # Line 525
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da70c70:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    addiu	$a1,$a1,20
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da70c70
    addiu	$a4,$a4,5
    # Line 526
    ld	$at,1568($sp)
.L0da70c98:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,80
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    movn	$s7,$s5,$ra
    li	$ra,1
    li	$a3,16
    sllv	$ra,$ra,$s7
    subu	$s5,$s5,$s7
    subu	$a3,$a3,$ra
    addiu	$a2,$s7,-1
    sll	$ra,$a3,0x10
    sll	$a3,$a3,0xc
    nor	$ra,$ra,$zero
    nor	$a3,$a3,$zero
    and	$s0,$s0,$ra
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da70e14
    and	$s1,$s1,$a3
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da70d4c
    addu	$a1,$a0,$a1
.L0da70d0c:
    lwc1	$f15,8($s8)
    swc1	$f15,0($a1)
    lwc1	$f14,12($s8)
    swc1	$f14,4($a1)
    lwc1	$f13,16($s8)
    swc1	$f13,8($a1)
    lwc1	$f12,0($s8)
    swc1	$f12,12($a1)
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    lwc1	$f11,4($s8)
    addiu	$s8,$s8,20
    addiu	$a1,$a1,20
    addiu	$a4,$a4,5
    bnez	$ra,.L0da70d0c
    swc1	$f11,-4($a1)
.L0da70d4c:
    sra	$a3,$s7,0x2
    beqz	$a3,.L0da70e14
    nop
    nop
    nop
.L0da70d60:
    lwc1	$f9,8($s8)
    swc1	$f9,0($a1)
    lwc1	$f8,12($s8)
    swc1	$f8,4($a1)
    lwc1	$f7,16($s8)
    swc1	$f7,8($a1)
    lwc1	$f6,0($s8)
    swc1	$f6,12($a1)
    lwc1	$f5,4($s8)
    swc1	$f5,16($a1)
    lwc1	$f4,28($s8)
    swc1	$f4,20($a1)
    lwc1	$f3,32($s8)
    swc1	$f3,24($a1)
    lwc1	$f2,36($s8)
    swc1	$f2,28($a1)
    lwc1	$f1,20($s8)
    swc1	$f1,32($a1)
    lwc1	$f0,24($s8)
    swc1	$f0,36($a1)
    lwc1	$f31,48($s8)
    swc1	$f31,40($a1)
    lwc1	$f29,52($s8)
    swc1	$f29,44($a1)
    lwc1	$f27,56($s8)
    swc1	$f27,48($a1)
    lwc1	$f25,40($s8)
    swc1	$f25,52($a1)
    lwc1	$f23,44($s8)
    swc1	$f23,56($a1)
    lwc1	$f21,68($s8)
    swc1	$f21,60($a1)
    lwc1	$f19,72($s8)
    swc1	$f19,64($a1)
    lwc1	$f18,76($s8)
    swc1	$f18,68($a1)
    lwc1	$f17,60($s8)
    swc1	$f17,72($a1)
    addiu	$a2,$a2,-4
    lwc1	$f16,64($s8)
    addiu	$s8,$s8,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a2,$a5,.L0da70d60
    swc1	$f16,-4($a1)
.L0da70e14:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da6e560
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
.L0da70e30:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    swc1	$f4,16($a1)
    bne	$a2,$a5,.L0da70e30
    addiu	$a1,$a1,20
    b	.L0da6e560
    nop
.L0da70e58:
    # Line 529
    sw	$a3,6084($s3)
    # Line 531
    lwc1	$f7,12($s7)
    swc1	$f7,256($sp)
    lwc1	$f6,16($s7)
    swc1	$f6,260($sp)
    # Line 532
    lwc1	$f5,20($s7)
    swc1	$f5,264($sp)
    lw	$at,8($s7)
    mtc1	$at,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,268($sp)
    # Line 533
    lwc1	$f3,0($s7)
    swc1	$f3,272($sp)
    lwc1	$f2,4($s7)
    swc1	$f2,276($sp)
    # Line 535
    lwc1	$f1,12($s8)
    swc1	$f1,280($sp)
    lwc1	$f0,16($s8)
    swc1	$f0,284($sp)
    # Line 536
    lwc1	$f31,20($s8)
    swc1	$f31,288($sp)
    lw	$a6,8($s8)
    mtc1	$a6,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,292($sp)
    # Line 537
    lwc1	$f27,0($s8)
    swc1	$f27,296($sp)
    lwc1	$f25,4($s8)
    swc1	$f25,300($sp)
    # Line 539
    lwc1	$f23,12($s6)
    swc1	$f23,304($sp)
    lwc1	$f21,16($s6)
    swc1	$f21,308($sp)
    # Line 540
    lwc1	$f19,20($s6)
    swc1	$f19,312($sp)
    lw	$a5,8($s6)
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,316($sp)
    # Line 541
    lwc1	$f17,0($s6)
    swc1	$f17,320($sp)
    lwc1	$f16,4($s6)
    swc1	$f16,324($sp)
    # Line 543
    lwc1	$f15,12($s5)
    swc1	$f15,328($sp)
    lwc1	$f14,16($s5)
    swc1	$f14,332($sp)
    # Line 544
    lwc1	$f13,20($s5)
    swc1	$f13,336($sp)
    lw	$a4,8($s5)
    mtc1	$a4,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,340($sp)
    # Line 545
    lwc1	$f11,0($s5)
    # Line 548
    ld	$a2,1904($sp)
    # Line 545
    swc1	$f11,344($sp)
    # Line 548
    slti	$a2,$a2,3
    # Line 545
    lwc1	$f10,4($s5)
    # Line 529
    sw	$a3,1408($sp)
    # Line 548
    bnez	$a2,.L0da70fe0
    # Line 545
    swc1	$f10,348($sp)
    # Line 548
    ld	$a1,1912($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$v1,84($s7)
    addu	$a0,$s8,$a0
    lw	$v0,36($a0)
    bne	$v0,$v1,.L0da70fe4
    mtc1	$zero,$f14
    lw	$a2,40($a0)
    lw	$a3,88($s7)
    bne	$a2,$a3,.L0da70fe4
    mtc1	$zero,$f14
    lw	$a4,44($a0)
    lw	$a5,92($s7)
    bne	$a4,$a5,.L0da70fe4
    mtc1	$zero,$f14
    lwc1	$f13,84($s7)
    swc1	$f13,352($sp)
    lwc1	$f12,88($s7)
    swc1	$f12,356($sp)
    lwc1	$f11,92($s7)
    swc1	$f11,360($sp)
    lw	$at,80($s7)
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,364($sp)
    lwc1	$f9,72($s7)
    swc1	$f9,368($sp)
    li	$a6,1
    lui	$s1,0xff
    lwc1	$f8,76($s7)
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da71010
    swc1	$f8,372($sp)
.L0da70fe0:
    mtc1	$zero,$f14
.L0da70fe4:
    swc1	$f14,372($sp)
    swc1	$f14,368($sp)
    swc1	$f14,364($sp)
    move	$a6,$zero
    swc1	$f14,360($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f14,356($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f14,352($sp)
.L0da71010:
    # Line 549
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da710a8
    ld	$a1,1904($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$v1,108($s6)
    addu	$a0,$s7,$a0
    lw	$v0,36($a0)
    bne	$v0,$v1,.L0da710a8
    nop
    lw	$a2,40($a0)
    lw	$a3,112($s6)
    bne	$a2,$a3,.L0da710a8
    nop
    lw	$a4,44($a0)
    lw	$a5,116($s6)
    bne	$a4,$a5,.L0da710a8
    nop
    lwc1	$f21,108($s6)
    swc1	$f21,376($sp)
    lwc1	$f19,112($s6)
    swc1	$f19,380($sp)
    lwc1	$f18,116($s6)
    swc1	$f18,384($sp)
    lw	$v0,104($s6)
    mtc1	$v0,$f17
    cvt.s.w	$f17,$f17
    swc1	$f17,388($sp)
    lwc1	$f16,96($s6)
    li	$at,1
    sd	$at,1816($sp)
    swc1	$f16,392($sp)
    lwc1	$f15,100($s6)
    sb	$at,1412($sp)
    b	.L0da710dc
    swc1	$f15,396($sp)
.L0da710a8:
    sb	$zero,1412($sp)
    mtc1	$zero,$f23
    sd	$zero,1816($sp)
    swc1	$f23,396($sp)
    swc1	$f23,392($sp)
    swc1	$f23,388($sp)
    swc1	$f23,384($sp)
    li	$v1,-33
    li	$a0,-193
    swc1	$f23,380($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f23,376($sp)
.L0da710dc:
    # Line 550
    slti	$a1,$ra,3
    bnez	$a1,.L0da71170
    ld	$a1,1864($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$a3,84($s5)
    addu	$a0,$s6,$a0
    lw	$a2,36($a0)
    bne	$a2,$a3,.L0da71170
    nop
    lw	$a2,40($a0)
    lw	$a3,88($s5)
    bne	$a2,$a3,.L0da71170
    nop
    lw	$a4,44($a0)
    lw	$a5,92($s5)
    bne	$a4,$a5,.L0da71170
    nop
    lwc1	$f1,84($s5)
    swc1	$f1,400($sp)
    lwc1	$f0,88($s5)
    swc1	$f0,404($sp)
    lwc1	$f31,92($s5)
    swc1	$f31,408($sp)
    lw	$v0,80($s5)
    mtc1	$v0,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,412($sp)
    lwc1	$f27,72($s5)
    li	$at,1
    sd	$at,1824($sp)
    swc1	$f27,416($sp)
    lwc1	$f25,76($s5)
    sb	$at,1413($sp)
    b	.L0da711a4
    swc1	$f25,420($sp)
.L0da71170:
    sb	$zero,1413($sp)
    mtc1	$zero,$f2
    sd	$zero,1824($sp)
    swc1	$f2,420($sp)
    swc1	$f2,416($sp)
    swc1	$f2,412($sp)
    swc1	$f2,408($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f2,404($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f2,400($sp)
.L0da711a4:
    # Line 551
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da71244
    sll	$a0,$ra,0x2
    subu	$a0,$a0,$ra
    sll	$a0,$a0,0x3
    addu	$a0,$s5,$a0
    lw	$a2,36($a0)
    lw	$a3,108($s8)
    bne	$a2,$a3,.L0da71244
    nop
    lw	$a1,40($a0)
    lw	$a2,112($s8)
    bne	$a1,$a2,.L0da71244
    nop
    lw	$a3,44($a0)
    lw	$a4,116($s8)
    bne	$a3,$a4,.L0da71244
    nop
    lwc1	$f8,108($s8)
    addiu	$a0,$sp,256
    swc1	$f8,168($a0)
    lwc1	$f7,112($s8)
    swc1	$f7,172($a0)
    lwc1	$f6,116($s8)
    swc1	$f6,176($a0)
    lw	$at,104($s8)
    mtc1	$at,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,180($a0)
    lwc1	$f4,96($s8)
    li	$a5,1
    sd	$a5,1832($sp)
    swc1	$f4,184($a0)
    lwc1	$f3,100($s8)
    li	$a4,48
    sb	$a5,1414($sp)
    addiu	$a1,$a0,192
    b	.L0da71284
    swc1	$f3,188($a0)
.L0da71244:
    sb	$zero,1414($sp)
    mtc1	$zero,$f9
    sd	$zero,1832($sp)
    addiu	$a0,$sp,256
    swc1	$f9,188($a0)
    swc1	$f9,184($a0)
    swc1	$f9,180($a0)
    li	$a4,48
    li	$v1,-3073
    swc1	$f9,176($a0)
    li	$v0,-129
    and	$s0,$s0,$v1
    swc1	$f9,172($a0)
    addiu	$a1,$a0,192
    and	$s1,$s1,$v0
    swc1	$f9,168($a0)
.L0da71284:
    # Line 553
    sltu	$a3,$zero,$a6
    sll	$a2,$a3,0x2
    ld	$v0,1816($sp)
    li	$a5,1
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x3
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    addu	$s7,$a2,$s7
    sd	$v0,1848($sp)
    addu	$v0,$a3,$v0
    addiu	$s7,$s7,72
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    sd	$a3,1840($sp)
    li	$a3,16
    movn	$at,$v0,$v1
    sd	$a2,1480($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1488($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1456($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da71484
    and	$s1,$s1,$a3
    ld	$v1,1456($sp)
    sd	$v1,1440($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da71380
    sd	$v1,1720($sp)
.L0da71328:
    lwc1	$f15,12($s7)
    swc1	$f15,0($a1)
    lwc1	$f14,16($s7)
    swc1	$f14,4($a1)
    lwc1	$f13,20($s7)
    swc1	$f13,8($a1)
    lw	$v0,8($s7)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,12($a1)
    lwc1	$f11,0($s7)
    ld	$at,1720($sp)
    swc1	$f11,16($a1)
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    lwc1	$f10,4($s7)
    addiu	$s7,$s7,24
    addiu	$a1,$a1,24
    sd	$at,1720($sp)
    addiu	$a4,$a4,6
    bnez	$at,.L0da71328
    swc1	$f10,-4($a1)
.L0da71380:
    ld	$v1,1440($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da71484
    nop
.L0da71390:
    lwc1	$f13,12($s7)
    swc1	$f13,0($a1)
    lwc1	$f12,16($s7)
    swc1	$f12,4($a1)
    lwc1	$f11,20($s7)
    swc1	$f11,8($a1)
    lw	$v1,8($s7)
    mtc1	$v1,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,12($a1)
    lwc1	$f9,0($s7)
    swc1	$f9,16($a1)
    lwc1	$f8,4($s7)
    swc1	$f8,20($a1)
    lwc1	$f7,36($s7)
    swc1	$f7,24($a1)
    lwc1	$f6,40($s7)
    swc1	$f6,28($a1)
    lwc1	$f5,44($s7)
    swc1	$f5,32($a1)
    lw	$v0,32($s7)
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,36($a1)
    lwc1	$f3,24($s7)
    swc1	$f3,40($a1)
    lwc1	$f2,28($s7)
    swc1	$f2,44($a1)
    lwc1	$f1,60($s7)
    swc1	$f1,48($a1)
    lwc1	$f0,64($s7)
    swc1	$f0,52($a1)
    lwc1	$f31,68($s7)
    swc1	$f31,56($a1)
    lw	$at,56($s7)
    mtc1	$at,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,60($a1)
    lwc1	$f27,48($s7)
    swc1	$f27,64($a1)
    lwc1	$f25,52($s7)
    swc1	$f25,68($a1)
    lwc1	$f23,84($s7)
    swc1	$f23,72($a1)
    lwc1	$f21,88($s7)
    swc1	$f21,76($a1)
    lwc1	$f19,92($s7)
    swc1	$f19,80($a1)
    lw	$a3,80($s7)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,84($a1)
    lwc1	$f17,72($s7)
    swc1	$f17,88($a1)
    addiu	$a2,$a2,-4
    lwc1	$f16,76($s7)
    addiu	$s7,$s7,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$a2,$a5,.L0da71390
    swc1	$f16,-4($a1)
.L0da71484:
    ld	$a2,1488($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da714cc
    # Line 554
    ld	$v0,1848($sp)
    # Line 553
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da714a0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da714a0
    addiu	$a4,$a4,6
    # Line 554
    ld	$v0,1848($sp)
.L0da714cc:
    ld	$s7,1824($sp)
    ld	$at,1864($sp)
    sltu	$s7,$zero,$s7
    sll	$v1,$v0,0x2
    subu	$v1,$v1,$v0
    addu	$v0,$v0,$s7
    li	$a3,16
    subu	$at,$at,$v0
    li	$v0,4
    sll	$v1,$v1,0x3
    addu	$s6,$s6,$v1
    addiu	$at,$at,-2
    li	$v1,4
    slt	$v0,$v0,$at
    movn	$at,$v1,$v0
    li	$v0,1
    addiu	$s6,$s6,96
    sllv	$v0,$v0,$at
    subu	$v1,$v1,$at
    subu	$a3,$a3,$v0
    addiu	$a2,$at,-1
    sll	$v0,$a3,0x14
    sd	$at,1464($sp)
    sll	$a3,$a3,0x10
    nor	$v0,$v0,$zero
    sw	$at,6096($s3)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sd	$v1,1504($sp)
    beq	$a2,$a5,.L0da716c4
    and	$s1,$s1,$a3
    ld	$at,1464($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1448($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da715bc
    sd	$a3,1728($sp)
.L0da71564:
    lwc1	$f19,12($s6)
    swc1	$f19,0($a1)
    lwc1	$f18,16($s6)
    swc1	$f18,4($a1)
    lwc1	$f17,20($s6)
    swc1	$f17,8($a1)
    lw	$v1,8($s6)
    mtc1	$v1,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,12($a1)
    lwc1	$f15,0($s6)
    ld	$v0,1728($sp)
    swc1	$f15,16($a1)
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    lwc1	$f14,4($s6)
    addiu	$s6,$s6,24
    addiu	$a1,$a1,24
    sd	$v0,1728($sp)
    addiu	$a4,$a4,6
    bnez	$v0,.L0da71564
    swc1	$f14,-4($a1)
.L0da715bc:
    ld	$a3,1448($sp)
    sra	$a3,$a3,0x2
    beqz	$a3,.L0da716c4
    nop
    nop
.L0da715d0:
    lwc1	$f17,12($s6)
    swc1	$f17,0($a1)
    lwc1	$f16,16($s6)
    swc1	$f16,4($a1)
    lwc1	$f15,20($s6)
    swc1	$f15,8($a1)
    lw	$a3,8($s6)
    mtc1	$a3,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,12($a1)
    lwc1	$f13,0($s6)
    swc1	$f13,16($a1)
    lwc1	$f12,4($s6)
    swc1	$f12,20($a1)
    lwc1	$f11,36($s6)
    swc1	$f11,24($a1)
    lwc1	$f10,40($s6)
    swc1	$f10,28($a1)
    lwc1	$f9,44($s6)
    swc1	$f9,32($a1)
    lw	$v1,32($s6)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,36($a1)
    lwc1	$f7,24($s6)
    swc1	$f7,40($a1)
    lwc1	$f6,28($s6)
    swc1	$f6,44($a1)
    lwc1	$f5,60($s6)
    swc1	$f5,48($a1)
    lwc1	$f4,64($s6)
    swc1	$f4,52($a1)
    lwc1	$f3,68($s6)
    swc1	$f3,56($a1)
    lw	$v0,56($s6)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,60($a1)
    lwc1	$f1,48($s6)
    swc1	$f1,64($a1)
    lwc1	$f0,52($s6)
    swc1	$f0,68($a1)
    lwc1	$f31,84($s6)
    swc1	$f31,72($a1)
    lwc1	$f29,88($s6)
    swc1	$f29,76($a1)
    lwc1	$f27,92($s6)
    swc1	$f27,80($a1)
    lw	$at,80($s6)
    mtc1	$at,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,84($a1)
    lwc1	$f23,72($s6)
    swc1	$f23,88($a1)
    addiu	$a2,$a2,-4
    lwc1	$f21,76($s6)
    addiu	$s6,$s6,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$a2,$a5,.L0da715d0
    swc1	$f21,-4($a1)
.L0da716c4:
    ld	$a2,1504($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da7170c
    # Line 555
    ld	$s6,1832($sp)
    # Line 554
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da716e0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da716e0
    addiu	$a4,$a4,6
    # Line 555
    ld	$s6,1832($sp)
.L0da7170c:
    li	$a2,16
    sll	$at,$s7,0x2
    subu	$at,$at,$s7
    sltu	$s6,$zero,$s6
    sll	$at,$at,0x3
    addu	$a3,$s7,$s6
    addu	$s5,$s5,$at
    subu	$a3,$ra,$a3
    li	$ra,4
    addiu	$a3,$a3,-1
    li	$at,4
    slt	$ra,$ra,$a3
    movn	$a3,$at,$ra
    li	$ra,1
    addiu	$s5,$s5,72
    sllv	$ra,$ra,$a3
    subu	$at,$at,$a3
    subu	$a2,$a2,$ra
    sd	$at,1496($sp)
    addiu	$ra,$a3,-1
    sll	$at,$a2,0x18
    sll	$a2,$a2,0x14
    nor	$at,$at,$zero
    sd	$a3,1472($sp)
    nor	$a2,$a2,$zero
    and	$s0,$s0,$at
    sw	$a3,6100($s3)
    beq	$ra,$a5,.L0da718e4
    and	$s1,$s1,$a2
    ld	$s7,1472($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da717e4
    addu	$a1,$a0,$a1
.L0da71794:
    lwc1	$f27,12($s5)
    swc1	$f27,0($a1)
    lwc1	$f25,16($s5)
    swc1	$f25,4($a1)
    lwc1	$f23,20($s5)
    swc1	$f23,8($a1)
    lw	$a3,8($s5)
    mtc1	$a3,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,12($a1)
    lwc1	$f19,0($s5)
    swc1	$f19,16($a1)
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    lwc1	$f18,4($s5)
    addiu	$s5,$s5,24
    addiu	$a1,$a1,24
    addiu	$a4,$a4,6
    bnez	$a2,.L0da71794
    swc1	$f18,-4($a1)
.L0da717e4:
    sra	$at,$s7,0x2
    beqz	$at,.L0da718e4
    nop
.L0da717f0:
    lwc1	$f23,12($s5)
    swc1	$f23,0($a1)
    lwc1	$f21,16($s5)
    swc1	$f21,4($a1)
    lwc1	$f19,20($s5)
    swc1	$f19,8($a1)
    lw	$a3,8($s5)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,12($a1)
    lwc1	$f17,0($s5)
    swc1	$f17,16($a1)
    lwc1	$f16,4($s5)
    swc1	$f16,20($a1)
    lwc1	$f15,36($s5)
    swc1	$f15,24($a1)
    lwc1	$f14,40($s5)
    swc1	$f14,28($a1)
    lwc1	$f13,44($s5)
    swc1	$f13,32($a1)
    lw	$a2,32($s5)
    mtc1	$a2,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,36($a1)
    lwc1	$f11,24($s5)
    swc1	$f11,40($a1)
    lwc1	$f10,28($s5)
    swc1	$f10,44($a1)
    lwc1	$f9,60($s5)
    swc1	$f9,48($a1)
    lwc1	$f8,64($s5)
    swc1	$f8,52($a1)
    lwc1	$f7,68($s5)
    swc1	$f7,56($a1)
    lw	$v1,56($s5)
    mtc1	$v1,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,60($a1)
    lwc1	$f5,48($s5)
    swc1	$f5,64($a1)
    lwc1	$f4,52($s5)
    swc1	$f4,68($a1)
    lwc1	$f3,84($s5)
    swc1	$f3,72($a1)
    lwc1	$f2,88($s5)
    swc1	$f2,76($a1)
    lwc1	$f1,92($s5)
    swc1	$f1,80($a1)
    lw	$v0,80($s5)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,84($a1)
    lwc1	$f31,72($s5)
    swc1	$f31,88($a1)
    addiu	$ra,$ra,-4
    lwc1	$f29,76($s5)
    addiu	$s5,$s5,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$ra,$a5,.L0da717f0
    swc1	$f29,-4($a1)
.L0da718e4:
    ld	$a2,1496($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da7192c
    # Line 556
    ld	$at,1480($sp)
    # Line 555
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da71900:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da71900
    addiu	$a4,$a4,6
    # Line 556
    ld	$at,1480($sp)
.L0da7192c:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,96
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    movn	$s7,$s5,$ra
    li	$ra,1
    li	$a3,16
    sllv	$ra,$ra,$s7
    subu	$s5,$s5,$s7
    subu	$a3,$a3,$ra
    addiu	$a2,$s7,-1
    sll	$ra,$a3,0x10
    sll	$a3,$a3,0xc
    nor	$ra,$ra,$zero
    nor	$a3,$a3,$zero
    and	$s0,$s0,$ra
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da71af4
    and	$s1,$s1,$a3
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da719f0
    addu	$a1,$a0,$a1
.L0da719a0:
    lwc1	$f1,12($s8)
    swc1	$f1,0($a1)
    lwc1	$f0,16($s8)
    swc1	$f0,4($a1)
    lwc1	$f31,20($s8)
    swc1	$f31,8($a1)
    lw	$a3,8($s8)
    mtc1	$a3,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,12($a1)
    lwc1	$f27,0($s8)
    swc1	$f27,16($a1)
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    lwc1	$f25,4($s8)
    addiu	$s8,$s8,24
    addiu	$a1,$a1,24
    addiu	$a4,$a4,6
    bnez	$ra,.L0da719a0
    swc1	$f25,-4($a1)
.L0da719f0:
    sra	$ra,$s7,0x2
    beqz	$ra,.L0da71af4
    nop
    nop
.L0da71a00:
    lwc1	$f31,12($s8)
    swc1	$f31,0($a1)
    lwc1	$f29,16($s8)
    swc1	$f29,4($a1)
    lwc1	$f27,20($s8)
    swc1	$f27,8($a1)
    lw	$a3,8($s8)
    mtc1	$a3,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,12($a1)
    lwc1	$f23,0($s8)
    swc1	$f23,16($a1)
    lwc1	$f21,4($s8)
    swc1	$f21,20($a1)
    lwc1	$f19,36($s8)
    swc1	$f19,24($a1)
    lwc1	$f18,40($s8)
    swc1	$f18,28($a1)
    lwc1	$f17,44($s8)
    swc1	$f17,32($a1)
    lw	$v1,32($s8)
    mtc1	$v1,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,36($a1)
    lwc1	$f15,24($s8)
    swc1	$f15,40($a1)
    lwc1	$f14,28($s8)
    swc1	$f14,44($a1)
    lwc1	$f13,60($s8)
    swc1	$f13,48($a1)
    lwc1	$f12,64($s8)
    swc1	$f12,52($a1)
    lwc1	$f11,68($s8)
    swc1	$f11,56($a1)
    lw	$v0,56($s8)
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,60($a1)
    lwc1	$f9,48($s8)
    swc1	$f9,64($a1)
    lwc1	$f8,52($s8)
    swc1	$f8,68($a1)
    lwc1	$f7,84($s8)
    swc1	$f7,72($a1)
    lwc1	$f6,88($s8)
    swc1	$f6,76($a1)
    lwc1	$f5,92($s8)
    swc1	$f5,80($a1)
    lw	$at,80($s8)
    mtc1	$at,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,84($a1)
    lwc1	$f3,72($s8)
    swc1	$f3,88($a1)
    addiu	$a2,$a2,-4
    lwc1	$f2,76($s8)
    addiu	$s8,$s8,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$a2,$a5,.L0da71a00
    swc1	$f2,-4($a1)
.L0da71af4:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da6e560
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
.L0da71b10:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    swc1	$f4,20($a1)
    bne	$a2,$a5,.L0da71b10
    addiu	$a1,$a1,24
    b	.L0da6e560
    nop
.L0da71b3c:
    # Line 692
    sll	$s5,$s2,0x2
    addu	$s0,$s0,$s5
    lw	$a2,-4($s0)
    addiu	$s5,$a2,2
    slt	$a2,$a2,$s5
    beqz	$a2,.L0da6e750
    la	$s3,sub_0da80000
    addiu	$s6,$s2,-1
    addiu	$s3,$s3,-28064
    # Line 694
    move	$t9,$s1
.L0da71b64:
    move	$a0,$s6
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 695
    lw	$t8,0($s0)
    addiu	$s4,$t8,2
    slt	$t8,$t8,$s4
    beqz	$t8,.L0da71bb8
    nop
    # Line 697
    move	$t9,$s1
.L0da71b88:
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 698
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a2,0($s0)
    slt	$a2,$a2,$s4
    bnez	$a2,.L0da71b88
    # Line 697
    move	$t9,$s1
.L0da71bb8:
    # Line 698
    lw	$a3,-4($s0)
    slt	$a3,$a3,$s5
    bnez	$a3,.L0da71b64
    # Line 694
    move	$t9,$s1
    b	.L0da6e754
    ld	$s3,1880($sp)
.L0da71bd0:
    # Line 703
    sll	$s7,$s2,0x2
    addu	$s0,$s0,$s7
    lw	$a4,-8($s0)
    addiu	$s7,$a4,2
    slt	$a4,$a4,$s7
    beqz	$a4,.L0da6e750
    la	$s3,sub_0da80000
    addiu	$s8,$s2,-2
    addiu	$s6,$s2,-1
    addiu	$s3,$s3,-28064
    # Line 705
    move	$t9,$s1
.L0da71bfc:
    move	$a0,$s8
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 706
    lw	$t8,-4($s0)
    addiu	$s5,$t8,2
    slt	$t8,$t8,$s5
    beqz	$t8,.L0da71c84
    nop
    # Line 708
    move	$t9,$s1
.L0da71c20:
    move	$a0,$s6
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 709
    lw	$t9,0($s0)
    addiu	$s4,$t9,2
    slt	$t9,$t9,$s4
    beqz	$t9,.L0da71c74
    nop
    # Line 711
    move	$t9,$s1
.L0da71c44:
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 712
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a2,0($s0)
    slt	$a2,$a2,$s4
    bnez	$a2,.L0da71c44
    # Line 711
    move	$t9,$s1
.L0da71c74:
    # Line 712
    lw	$a3,-4($s0)
    slt	$a3,$a3,$s5
    bnez	$a3,.L0da71c20
    # Line 708
    move	$t9,$s1
.L0da71c84:
    # Line 712
    lw	$a4,-8($s0)
    slt	$a4,$a4,$s7
    bnez	$a4,.L0da71bfc
    # Line 705
    move	$t9,$s1
    b	.L0da6e754
    ld	$s3,1880($sp)
.L0da71c9c:
    # Line 409
    beqz	$t0,.L0da71e88
    nop
    b	.L0da6e438
    sd	$zero,1856($sp)
.L0da71cac:
    b	.L0da6ea08
    # Line 591
    move	$a0,$zero
.L0da71cb4:
    b	.L0da6ea1c
    # Line 592
    move	$a0,$zero
.L0da71cbc:
    b	.L0da6ea34
    # Line 593
    move	$a0,$zero
.L0da71cc4:
    b	.L0da6ea4c
    # Line 594
    move	$a0,$zero
.L0da71ccc:
    b	.L0da6ea74
    # Line 597
    move	$a0,$zero
.L0da71cd4:
    b	.L0da6ea8c
    # Line 598
    move	$a0,$zero
.L0da71cdc:
    b	.L0da6eaa8
    # Line 599
    move	$a0,$zero
.L0da71ce4:
    b	.L0da6eac0
    # Line 600
    move	$a0,$zero
.L0da71cec:
    b	.L0da6eadc
    # Line 602
    move	$a0,$zero
.L0da71cf4:
    b	.L0da6eaf8
    # Line 603
    move	$a0,$zero
.L0da71cfc:
    b	.L0da6eb18
    # Line 604
    move	$a0,$zero
.L0da71d04:
    b	.L0da6eb34
    # Line 605
    move	$a0,$zero
.L0da71d0c:
    b	.L0da6eb50
    # Line 607
    move	$a0,$zero
.L0da71d14:
    b	.L0da6eb6c
    # Line 608
    move	$a0,$zero
.L0da71d1c:
    b	.L0da6eb8c
    # Line 609
    move	$a0,$zero
.L0da71d24:
    b	.L0da6eba8
    # Line 610
    move	$a0,$zero
.L0da71d2c:
    b	.L0da6ebc0
    # Line 612
    move	$a0,$zero
.L0da71d34:
    b	.L0da6ebd8
    # Line 613
    move	$a0,$zero
.L0da71d3c:
    b	.L0da6ebf4
    # Line 614
    move	$a0,$zero
.L0da71d44:
    b	.L0da6ec0c
    # Line 615
    move	$a0,$zero
.L0da71d4c:
    b	.L0da6ec58
    # Line 624
    move	$a0,$zero
.L0da71d54:
    b	.L0da6ec6c
    # Line 625
    move	$a0,$zero
.L0da71d5c:
    b	.L0da6ec8c
    # Line 626
    move	$a0,$zero
.L0da71d64:
    b	.L0da6eca4
    # Line 627
    move	$a0,$zero
.L0da71d6c:
    b	.L0da6ecc0
    # Line 629
    move	$a0,$zero
.L0da71d74:
    b	.L0da6ecd4
    # Line 630
    move	$a0,$zero
.L0da71d7c:
    b	.L0da6ecf4
    # Line 631
    move	$a0,$zero
.L0da71d84:
    b	.L0da6ed0c
    # Line 632
    move	$a0,$zero
.L0da71d8c:
    b	.L0da6ed34
    # Line 635
    move	$a0,$zero
.L0da71d94:
    b	.L0da6ed4c
    # Line 636
    move	$a0,$zero
.L0da71d9c:
    b	.L0da6ed68
    # Line 637
    move	$a0,$zero
.L0da71da4:
    b	.L0da6ed80
    # Line 638
    move	$a0,$zero
.L0da71dac:
    b	.L0da6ed98
    # Line 640
    move	$a2,$zero
.L0da71db4:
    b	.L0da6edb0
    # Line 641
    move	$a2,$zero
.L0da71dbc:
    b	.L0da6edcc
    # Line 642
    move	$a0,$zero
.L0da71dc4:
    b	.L0da6ede4
    # Line 643
    move	$a0,$zero
.L0da71dcc:
    b	.L0da6edfc
    # Line 645
    move	$a2,$zero
.L0da71dd4:
    b	.L0da6ee14
    # Line 646
    move	$a2,$zero
.L0da71ddc:
    b	.L0da6ee30
    # Line 647
    move	$a2,$zero
.L0da71de4:
    b	.L0da6ee48
    # Line 648
    move	$a2,$zero
.L0da71dec:
    b	.L0da6ee60
    # Line 650
    move	$a0,$zero
.L0da71df4:
    b	.L0da6ee78
    # Line 651
    move	$a4,$zero
.L0da71dfc:
    b	.L0da6ee94
    # Line 652
    move	$a4,$zero
.L0da71e04:
    b	.L0da6eeac
    # Line 653
    move	$a0,$zero
.L0da71e0c:
    # Line 683
    lw	$a1,1416($sp)
    addiu	$t9,$t9,-28064
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    b	.L0da6e754
    ld	$s3,1880($sp)
.L0da71e28:
    # Line 686
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 687
    la	$s3,sub_0da80000
    sll	$t8,$s2,0x2
    addiu	$s0,$sp,1416
    addu	$s0,$s0,$t8
    addiu	$s3,$s3,-28064
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    # Line 688
    move	$t9,$s1
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 689
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    b	.L0da6e754
    ld	$s3,1880($sp)
.L0da71e88:
    # Line 409
    beqz	$t1,.L0da71e98
    nop
    b	.L0da6e438
    sd	$zero,1856($sp)
.L0da71e98:
    beqz	$t3,.L0da71ea8
    nop
    b	.L0da6e438
    sd	$zero,1856($sp)
.L0da71ea8:
    beqz	$t9,.L0da71eb8
    nop
    b	.L0da6e438
    sd	$zero,1856($sp)
.L0da71eb8:
    beqz	$t2,.L0da71ec8
    lui	$a3,0x8000
    b	.L0da6e438
    sd	$zero,1856($sp)
.L0da71ec8:
    move	$a2,$zero
    movz	$a2,$a3,$t8
    b	.L0da6e438
    sd	$a2,1856($sp)
.end __glim_SubdivPatchSGIX

# Function: CopyVertex
# Declared: Line 747 (Source lines: 748-755)
# Address: 0x0da71ee0 - 0x0da71f44 (Size: 100 bytes, Frame: 0)
.ent CopyVertex
CopyVertex:
    # Line 748
    move	$a6,$a0
    andi	$a7,$a0,0x1
    blez	$a0,.L0da71f3c
    move	$a5,$a1
    sll	$a4,$a6,0x2
    move	$a1,$a2
    move	$a0,$a5
    beqz	$a7,.L0da71f14
    addu	$a4,$a4,$a5
    # Line 752
    lwc1	$f0,0($a5)
    # Line 751
    addiu	$a0,$a5,4
    addiu	$a1,$a2,4
    # Line 752
    swc1	$f0,0($a2)
.L0da71f14:
    sra	$t0,$a6,0x1
    beqz	$t0,.L0da71f3c
    nop
.L0da71f20:
    lwc1	$f2,0($a0)
    # Line 751
    addiu	$a0,$a0,8
    # Line 752
    swc1	$f2,0($a1)
    lwc1	$f1,-4($a0)
    # Line 751
    addiu	$a1,$a1,8
    bne	$a0,$a4,.L0da71f20
    # Line 752
    swc1	$f1,-4($a1)
.L0da71f3c:
    # Line 755
    jr	$ra
    nop
.end CopyVertex

# Function: CopyRVertex
# Declared: Line 759 (Source lines: 760-767)
# Address: 0x0da71f50 - 0x0da71fc4 (Size: 116 bytes, Frame: 0)
.ent CopyRVertex
CopyRVertex:
    # Line 763
    addiu	$a6,$a0,-1
    # Line 760
    move	$a5,$a0
    # Line 763
    bltz	$a6,.L0da71fbc
    # Line 760
    move	$a7,$a1
    # Line 763
    addiu	$a4,$a1,-4
    sll	$a0,$a6,0x2
    andi	$a3,$a5,0x1
    addu	$a1,$a0,$a2
    beqz	$a3,.L0da71f88
    addu	$a0,$a0,$a7
    # Line 764
    lwc1	$f0,0($a0)
    # Line 763
    addiu	$a1,$a1,-4
    addiu	$a0,$a0,-4
    # Line 764
    swc1	$f0,4($a1)
.L0da71f88:
    sra	$a6,$a5,0x1
    beqz	$a6,.L0da71fbc
    nop
    nop
    nop
    nop
.L0da71fa0:
    lwc1	$f2,0($a0)
    # Line 763
    addiu	$a0,$a0,-8
    # Line 764
    swc1	$f2,0($a1)
    lwc1	$f1,4($a0)
    # Line 763
    addiu	$a1,$a1,-8
    bne	$a0,$a4,.L0da71fa0
    # Line 764
    swc1	$f1,4($a1)
.L0da71fbc:
    # Line 767
    jr	$ra
    nop
.end CopyRVertex

# Function: NormalizedCrossProduct
# Declared: Line 771 (Source lines: 775-783)
# Address: 0x0da71fd0 - 0x0da7205c (Size: 140 bytes, Frame: 0)
.ent NormalizedCrossProduct
NormalizedCrossProduct:
    # Line 775
    lwc1	$f2,8($a1)
    lwc1	$f3,8($a0)
    lwc1	$f0,4($a1)
    lwc1	$f1,4($a0)
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    swc1	$f0,0($a2)
    # Line 776
    lwc1	$f4,8($a0)
    lwc1	$f5,8($a1)
    lwc1	$f2,0($a0)
    lwc1	$f3,0($a1)
    mul.s	$f2,$f2,$f5
    msub.s	$f2,$f2,$f3,$f4
    swc1	$f2,4($a2)
    # Line 777
    lwc1	$f5,4($a1)
    lwc1	$f6,4($a0)
    lwc1	$f3,0($a1)
    lwc1	$f4,0($a0)
    mul.s	$f3,$f3,$f6
    msub.s	$f3,$f3,$f4,$f5
    # Line 779
    mul.s	$f4,$f2,$f2
    madd.s	$f4,$f4,$f0,$f0
    madd.s	$f4,$f4,$f3,$f3
    sqrt.s	$f4,$f4
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f4
    div.d	$f1,$f1,$f4
    cvt.s.d	$f1,$f1
    # Line 781
    mul.s	$f3,$f3,$f1
    mul.s	$f2,$f2,$f1
    swc1	$f3,8($a2)
    mul.s	$f0,$f0,$f1
    swc1	$f2,4($a2)
    # Line 783
    jr	$ra
    # Line 781
    swc1	$f0,0($a2)
.end NormalizedCrossProduct

# Function: SubdivSmoothEdge
# Declared: Line 787 (Source lines: 788-796)
# Address: 0x0da72060 - 0x0da721f0 (Size: 400 bytes, Frame: 0)
.ent SubdivSmoothEdge
SubdivSmoothEdge:
    # Line 788
    blez	$a0,.L0da721e8
    andi	$t0,$a0,0x3
    ldc1	$f4,_lit8_4008000000000000
    sll	$a7,$a0,0x2
    ldc1	$f5,_lit8_3fc0000000000000
    beqz	$t0,.L0da720d4
    addu	$a7,$a7,$a4
.L0da7207c:
    # Line 793
    lwc1	$f2,0($a2)
    lwc1	$f3,0($a1)
    cvt.d.s	$f2,$f2
    cvt.d.s	$f3,$f3
    mul.d	$f2,$f2,$f4
    madd.d	$f2,$f2,$f3,$f4
    lwc1	$f1,0($a3)
    lwc1	$f0,0($a4)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f0,$f0
    add.d	$f1,$f1,$f2
    add.d	$f0,$f0,$f1
    # Line 792
    addiu	$a4,$a4,4
    # Line 793
    mul.d	$f0,$f5,$f0
    # Line 792
    addiu	$a3,$a3,4
    addiu	$t0,$t0,-1
    addiu	$a1,$a1,4
    addiu	$a5,$a5,4
    # Line 793
    cvt.s.d	$f0,$f0
    # Line 792
    addiu	$a2,$a2,4
    bnez	$t0,.L0da7207c
    # Line 793
    swc1	$f0,-4($a5)
.L0da720d4:
    sra	$t0,$a0,0x2
    beqz	$t0,.L0da721e8
    nop
.L0da720e0:
    lwc1	$f16,0($a2)
    lwc1	$f17,0($a1)
    cvt.d.s	$f16,$f16
    cvt.d.s	$f17,$f17
    mul.d	$f16,$f16,$f4
    madd.d	$f16,$f16,$f17,$f4
    lwc1	$f15,0($a3)
    lwc1	$f14,0($a4)
    cvt.d.s	$f15,$f15
    cvt.d.s	$f14,$f14
    add.d	$f15,$f15,$f16
    add.d	$f14,$f14,$f15
    mul.d	$f14,$f5,$f14
    cvt.s.d	$f14,$f14
    swc1	$f14,0($a5)
    lwc1	$f13,4($a2)
    lwc1	$f14,4($a1)
    cvt.d.s	$f13,$f13
    cvt.d.s	$f14,$f14
    mul.d	$f13,$f13,$f4
    madd.d	$f13,$f13,$f14,$f4
    lwc1	$f12,4($a3)
    lwc1	$f11,4($a4)
    cvt.d.s	$f12,$f12
    cvt.d.s	$f11,$f11
    add.d	$f12,$f12,$f13
    add.d	$f11,$f11,$f12
    mul.d	$f11,$f5,$f11
    cvt.s.d	$f11,$f11
    swc1	$f11,4($a5)
    lwc1	$f10,8($a2)
    lwc1	$f11,8($a1)
    cvt.d.s	$f10,$f10
    cvt.d.s	$f11,$f11
    mul.d	$f10,$f10,$f4
    madd.d	$f10,$f10,$f11,$f4
    lwc1	$f9,8($a3)
    lwc1	$f8,8($a4)
    cvt.d.s	$f9,$f9
    cvt.d.s	$f8,$f8
    add.d	$f9,$f9,$f10
    add.d	$f8,$f8,$f9
    mul.d	$f8,$f5,$f8
    cvt.s.d	$f8,$f8
    swc1	$f8,8($a5)
    lwc1	$f7,12($a2)
    lwc1	$f8,12($a1)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f8,$f8
    mul.d	$f7,$f7,$f4
    madd.d	$f7,$f7,$f8,$f4
    lwc1	$f6,12($a3)
    lwc1	$f3,12($a4)
    cvt.d.s	$f6,$f6
    cvt.d.s	$f3,$f3
    add.d	$f6,$f6,$f7
    add.d	$f3,$f3,$f6
    mul.d	$f3,$f5,$f3
    # Line 792
    addiu	$a3,$a3,16
    addiu	$a4,$a4,16
    addiu	$a1,$a1,16
    addiu	$a5,$a5,16
    # Line 793
    cvt.s.d	$f3,$f3
    # Line 792
    addiu	$a2,$a2,16
    bne	$a4,$a7,.L0da720e0
    # Line 793
    swc1	$f3,-4($a5)
.L0da721e8:
    # Line 796
    jr	$ra
    nop
.end SubdivSmoothEdge

# Function: SubdivRegCreaseEdge
# Declared: Line 800 (Source lines: 801-809)
# Address: 0x0da721f0 - 0x0da722d8 (Size: 232 bytes, Frame: 0)
.ent SubdivRegCreaseEdge
SubdivRegCreaseEdge:
    # Line 801
    blez	$a0,.L0da722d0
    andi	$a6,$a0,0x3
    sll	$a5,$a0,0x2
    ldc1	$f4,_lit8_3fe0000000000000
    beqz	$a6,.L0da72238
    addu	$a5,$a5,$a1
.L0da72208:
    # Line 806
    lwc1	$f0,0($a1)
    lwc1	$f1,0($a2)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    addiu	$a6,$a6,-1
    # Line 805
    addiu	$a1,$a1,4
    addiu	$a3,$a3,4
    # Line 806
    cvt.s.d	$f0,$f0
    # Line 805
    addiu	$a2,$a2,4
    bnez	$a6,.L0da72208
    # Line 806
    swc1	$f0,-4($a3)
.L0da72238:
    sra	$a6,$a0,0x2
    beqz	$a6,.L0da722d0
    nop
    nop
    nop
    nop
.L0da72250:
    lwc1	$f9,0($a1)
    lwc1	$f10,0($a2)
    add.s	$f9,$f9,$f10
    cvt.d.s	$f9,$f9
    mul.d	$f9,$f9,$f4
    cvt.s.d	$f9,$f9
    swc1	$f9,0($a3)
    lwc1	$f7,4($a1)
    lwc1	$f8,4($a2)
    add.s	$f7,$f7,$f8
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f4
    cvt.s.d	$f7,$f7
    swc1	$f7,4($a3)
    lwc1	$f5,8($a1)
    lwc1	$f6,8($a2)
    add.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f4
    cvt.s.d	$f5,$f5
    swc1	$f5,8($a3)
    lwc1	$f2,12($a1)
    lwc1	$f3,12($a2)
    add.s	$f2,$f2,$f3
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    # Line 805
    addiu	$a1,$a1,16
    addiu	$a3,$a3,16
    # Line 806
    cvt.s.d	$f2,$f2
    # Line 805
    addiu	$a2,$a2,16
    bne	$a1,$a5,.L0da72250
    # Line 806
    swc1	$f2,-4($a3)
.L0da722d0:
    # Line 809
    jr	$ra
    nop
.end SubdivRegCreaseEdge

# Function: SubdivIRRegCreaseEdge
# Declared: Line 813 (Source lines: 814-822)
# Address: 0x0da722e0 - 0x0da723f8 (Size: 280 bytes, Frame: 0)
.ent SubdivIRRegCreaseEdge
SubdivIRRegCreaseEdge:
    # Line 814
    blez	$a0,.L0da723f0
    ldc1	$f4,_lit8_4014000000000000
    andi	$a6,$a0,0x3
    ldc1	$f5,_lit8_4008000000000000
    sll	$a5,$a0,0x2
    ldc1	$f6,_lit8_3fc0000000000000
    beqz	$a6,.L0da72338
    addu	$a5,$a5,$a1
.L0da72300:
    # Line 819
    lwc1	$f0,0($a2)
    lwc1	$f1,0($a1)
    cvt.d.s	$f0,$f0
    cvt.d.s	$f1,$f1
    mul.d	$f0,$f0,$f5
    madd.d	$f0,$f0,$f1,$f4
    mul.d	$f0,$f6,$f0
    addiu	$a6,$a6,-1
    # Line 818
    addiu	$a1,$a1,4
    addiu	$a3,$a3,4
    # Line 819
    cvt.s.d	$f0,$f0
    # Line 818
    addiu	$a2,$a2,4
    bnez	$a6,.L0da72300
    # Line 819
    swc1	$f0,-4($a3)
.L0da72338:
    sra	$a6,$a0,0x2
    beqz	$a6,.L0da723f0
    nop
    nop
    nop
    nop
.L0da72350:
    lwc1	$f7,0($a2)
    lwc1	$f8,0($a1)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f8,$f8
    mul.d	$f7,$f7,$f5
    madd.d	$f7,$f7,$f8,$f4
    mul.d	$f7,$f6,$f7
    cvt.s.d	$f7,$f7
    swc1	$f7,0($a3)
    lwc1	$f3,4($a2)
    lwc1	$f7,4($a1)
    cvt.d.s	$f3,$f3
    cvt.d.s	$f7,$f7
    mul.d	$f3,$f3,$f5
    madd.d	$f3,$f3,$f7,$f4
    mul.d	$f3,$f6,$f3
    cvt.s.d	$f3,$f3
    swc1	$f3,4($a3)
    lwc1	$f2,8($a2)
    lwc1	$f3,8($a1)
    cvt.d.s	$f2,$f2
    cvt.d.s	$f3,$f3
    mul.d	$f2,$f2,$f5
    madd.d	$f2,$f2,$f3,$f4
    mul.d	$f2,$f6,$f2
    cvt.s.d	$f2,$f2
    swc1	$f2,8($a3)
    lwc1	$f1,12($a2)
    lwc1	$f2,12($a1)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f2,$f2
    mul.d	$f1,$f1,$f5
    madd.d	$f1,$f1,$f2,$f4
    mul.d	$f1,$f6,$f1
    # Line 818
    addiu	$a1,$a1,16
    addiu	$a3,$a3,16
    # Line 819
    cvt.s.d	$f1,$f1
    # Line 818
    addiu	$a2,$a2,16
    bne	$a1,$a5,.L0da72350
    # Line 819
    swc1	$f1,-4($a3)
.L0da723f0:
    # Line 822
    jr	$ra
    nop
.end SubdivIRRegCreaseEdge

# Function: SubdivEdge
# Declared: Line 826 (Source lines: 828-848)
# Address: 0x0da72400 - 0x0da724d0 (Size: 208 bytes, Frame: 208)
.ent SubdivEdge
SubdivEdge:
    # Line 828
    addiu	$sp,$sp,-80
    # Line 830
    lb	$t1,87($sp)
    # Line 834
    andi	$v1,$a7,0x8
    # Line 830
    andi	$v0,$a7,0x4
    andi	$at,$a6,0x4
    beqz	$t1,.L0da7242c
    sd	$ra,0($sp)
    bnez	$at,.L0da7242c
    # Line 834
    andi	$ra,$t1,0x2
    # Line 830
    beqz	$v0,.L0da72448
    # Line 834
    andi	$at,$a6,0x1
.L0da7242c:
    # Line 833
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,8288
    bal __glim_SubdivPatchSGIX
    nop
    ld	$ra,0($sp)
.L0da72440:
    # Line 848
    jr	$ra
    addiu	$sp,$sp,80
.L0da72448:
    # Line 839
    andi	$a3,$a7,0x1
    # Line 834
    andi	$v0,$a7,0x2
    beqz	$ra,.L0da724b8
    # Line 839
    andi	$a4,$a6,0x2
    # Line 834
    beqz	$at,.L0da72470
    nop
    bnez	$v0,.L0da724a4
    # Line 838
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 834
    bnez	$v1,.L0da724a4
    # Line 838
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
.L0da72470:
    # Line 839
    beqz	$a3,.L0da724b8
    andi	$a7,$a6,0x8
    bnez	$a4,.L0da7248c
    # Line 843
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 839
    beqz	$a7,.L0da724bc
    # Line 845
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 843
    # lw $t9, -32672($gp) # &sub_0da70000
.L0da7248c:
    addiu	$t9,$t9,8928
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0da72440
    ld	$ra,0($sp)
    # Line 838
    # lw $t9, -32672($gp) # &sub_0da70000
.L0da724a4:
    addiu	$t9,$t9,8928
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0da72440
    ld	$ra,0($sp)
.L0da724b8:
    # Line 845
    # lw $t9, -32672($gp) # &sub_0da70000
.L0da724bc:
    addiu	$t9,$t9,8688
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0da72440
    ld	$ra,0($sp)
.end SubdivEdge

# Function: PrepSmoothVertex
# Declared: Line 852 (Source lines: 857-865)
# Address: 0x0da724d0 - 0x0da72528 (Size: 88 bytes, Frame: 0)
.ent PrepSmoothVertex
PrepSmoothVertex:
    # Line 857
    mult	$a0,$a1
    mflo	$at
    sll	$v1,$at,0x2
    # Line 863
    addu	$a6,$v1,$a4
    sw	$a6,24($a5)
    # Line 860
    addu	$a1,$v1,$a2
    sw	$a1,12($a5)
    # Line 861
    subu	$v0,$at,$a0
    # Line 857
    addu	$v1,$v1,$a3
    sw	$v1,0($a5)
    # Line 861
    sll	$v0,$v0,0x2
    # Line 858
    addu	$at,$at,$a0
    # Line 862
    addu	$v1,$v0,$a4
    sw	$v1,20($a5)
    # Line 858
    sll	$at,$at,0x2
    # Line 861
    addu	$v0,$v0,$a3
    sw	$v0,16($a5)
    # Line 859
    addu	$v0,$at,$a2
    sw	$v0,8($a5)
    # Line 858
    addu	$at,$at,$a3
    # Line 865
    jr	$ra
    # Line 858
    sw	$at,4($a5)
.end PrepSmoothVertex

# Function: UpdateSmoothVertex
# Declared: Line 869 (Source lines: 870-884)
# Address: 0x0da72530 - 0x0da72668 (Size: 312 bytes, Frame: 0)
.ent UpdateSmoothVertex
UpdateSmoothVertex:
    # Line 870
    blez	$a0,.L0da72650
    addiu	$t2,$a2,4
    move	$a5,$zero
    sll	$t0,$a0,0x2
    la	$v0,sub_0daf0000
    slti	$t1,$a1,1
    addu	$t0,$t0,$a3
    sll	$at,$a1,0x3
    addiu	$v0,$v0,-10976
    addiu	$a6,$a1,1
    addu	$at,$at,$v0
    xori	$t1,$t1,0x1
    sll	$a6,$a6,0x2
    lwc1	$f5,-4($at)
    addu	$a6,$a6,$a2
    b	.L0da72658
    lwc1	$f6,-8($at)
    nop
    nop
    nop
.L0da72580:
    # Line 879
    lw	$t3,0($a0)
    addu	$t3,$t3,$a5
    lwc1	$f0,0($t3)
    addiu	$a7,$a7,-1
    add.s	$f4,$f4,$f0
    # Line 878
    addiu	$a0,$a0,4
    bnez	$a7,.L0da72580
    # Line 879
    swc1	$f4,0($a3)
.L0da725a0:
    beqz	$t8,.L0da72608
    nop
    nop
    nop
.L0da725b0:
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f8,0($v1)
    add.s	$f4,$f4,$f8
    swc1	$f4,0($a3)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f7,0($v0)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$at,8($a0)
    addu	$at,$at,$a5
    lwc1	$f7,0($at)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$t9,12($a0)
    addu	$t9,$t9,$a5
    lwc1	$f7,0($t9)
    # Line 878
    addiu	$a0,$a0,16
    # Line 879
    add.s	$f4,$f4,$f7
    # Line 878
    bne	$a0,$a6,.L0da725b0
    # Line 879
    swc1	$f4,0($a3)
.L0da72608:
    # Line 876
    addiu	$a3,$a3,4
    sra	$t8,$a1,0x2
    addiu	$a5,$a5,4
    # Line 881
    mul.s	$f9,$f5,$f4
    andi	$a7,$a1,0x3
    # Line 876
    beq	$a3,$t0,.L0da72650
    # Line 881
    swc1	$f9,-4($a3)
    # Line 877
    lw	$a0,0($a2)
.L0da72628:
    addu	$a0,$a0,$a5
    lwc1	$f4,0($a0)
    mul.s	$f4,$f6,$f4
    move	$a0,$t2
    beqz	$t1,.L0da72608
    swc1	$f4,0($a3)
    bnez	$a7,.L0da72580
    nop
    b	.L0da725a0
    nop
.L0da72650:
    # Line 884
    jr	$ra
    nop
.L0da72658:
    sra	$t8,$a1,0x2
    andi	$a7,$a1,0x3
    b	.L0da72628
    # Line 877
    lw	$a0,0($a2)
.end UpdateSmoothVertex

# Function: UpdateConicalVertex
# Declared: Line 888 (Source lines: 889-903)
# Address: 0x0da72670 - 0x0da727a8 (Size: 312 bytes, Frame: 0)
.ent UpdateConicalVertex
UpdateConicalVertex:
    # Line 889
    blez	$a0,.L0da72790
    addiu	$t2,$a2,4
    move	$a5,$zero
    sll	$t0,$a0,0x2
    la	$v0,sub_0daf0000
    slti	$t1,$a1,1
    addu	$t0,$t0,$a3
    sll	$at,$a1,0x3
    addiu	$v0,$v0,-10904
    addiu	$a6,$a1,1
    addu	$at,$at,$v0
    xori	$t1,$t1,0x1
    sll	$a6,$a6,0x2
    lwc1	$f5,4($at)
    addu	$a6,$a6,$a2
    b	.L0da72798
    lwc1	$f6,0($at)
    nop
    nop
    nop
.L0da726c0:
    # Line 898
    lw	$t3,0($a0)
    addu	$t3,$t3,$a5
    lwc1	$f0,0($t3)
    addiu	$a7,$a7,-1
    add.s	$f4,$f4,$f0
    # Line 897
    addiu	$a0,$a0,4
    bnez	$a7,.L0da726c0
    # Line 898
    swc1	$f4,0($a3)
.L0da726e0:
    beqz	$t8,.L0da72748
    nop
    nop
    nop
.L0da726f0:
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f8,0($v1)
    add.s	$f4,$f4,$f8
    swc1	$f4,0($a3)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f7,0($v0)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$at,8($a0)
    addu	$at,$at,$a5
    lwc1	$f7,0($at)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$t9,12($a0)
    addu	$t9,$t9,$a5
    lwc1	$f7,0($t9)
    # Line 897
    addiu	$a0,$a0,16
    # Line 898
    add.s	$f4,$f4,$f7
    # Line 897
    bne	$a0,$a6,.L0da726f0
    # Line 898
    swc1	$f4,0($a3)
.L0da72748:
    # Line 895
    addiu	$a3,$a3,4
    sra	$t8,$a1,0x2
    addiu	$a5,$a5,4
    # Line 900
    mul.s	$f9,$f5,$f4
    andi	$a7,$a1,0x3
    # Line 895
    beq	$a3,$t0,.L0da72790
    # Line 900
    swc1	$f9,-4($a3)
    # Line 896
    lw	$a0,0($a2)
.L0da72768:
    addu	$a0,$a0,$a5
    lwc1	$f4,0($a0)
    mul.s	$f4,$f6,$f4
    move	$a0,$t2
    beqz	$t1,.L0da72748
    swc1	$f4,0($a3)
    bnez	$a7,.L0da726c0
    nop
    b	.L0da726e0
    nop
.L0da72790:
    # Line 903
    jr	$ra
    nop
.L0da72798:
    sra	$t8,$a1,0x2
    andi	$a7,$a1,0x3
    b	.L0da72768
    # Line 896
    lw	$a0,0($a2)
.end UpdateConicalVertex

# Function: PrepCreaseVertex
# Declared: Line 907 (Source lines: 910-914)
# Address: 0x0da727b0 - 0x0da727c0 (Size: 16 bytes, Frame: 0)
.ent PrepCreaseVertex
PrepCreaseVertex:
    # Line 912
    sw	$a2,8($a3)
    # Line 911
    sw	$a1,4($a3)
    # Line 914
    jr	$ra
    # Line 910
    sw	$a0,0($a3)
.end PrepCreaseVertex

# Function: UpdateCreaseVertex
# Declared: Line 918 (Source lines: 919-931)
# Address: 0x0da727c0 - 0x0da72848 (Size: 136 bytes, Frame: 0)
.ent UpdateCreaseVertex
UpdateCreaseVertex:
    # Line 919
    blez	$a0,.L0da72840
    ldc1	$f6,_lit8_4018000000000000
    addiu	$a5,$a1,4
    sll	$a6,$a0,0x2
    ldc1	$f7,_lit8_3fc0000000000000
    move	$a4,$zero
    addu	$a6,$a6,$a2
    nop
.L0da727e0:
    # Line 924
    lw	$a7,0($a1)
    addu	$a7,$a7,$a4
    lwc1	$f4,0($a7)
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f6
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a2)
    # Line 926
    lw	$t1,0($a5)
    addu	$t1,$t1,$a4
    lwc1	$f5,0($t1)
    add.s	$f5,$f4,$f5
    swc1	$f5,0($a2)
    lw	$t0,4($a5)
    addu	$t0,$t0,$a4
    lwc1	$f8,0($t0)
    add.s	$f5,$f5,$f8
    # Line 923
    addiu	$a2,$a2,4
    # Line 926
    swc1	$f5,-4($a2)
    # Line 928
    cvt.d.s	$f8,$f5
    # Line 923
    addiu	$a4,$a4,4
    # Line 928
    mul.d	$f8,$f8,$f7
    cvt.s.d	$f8,$f8
    # Line 923
    bne	$a2,$a6,.L0da727e0
    # Line 928
    swc1	$f8,-4($a2)
.L0da72840:
    # Line 931
    jr	$ra
    nop
.end UpdateCreaseVertex

# Function: UpdateVertex
# Declared: Line 935 (Source lines: 936-952)
# Address: 0x0da72850 - 0x0da72968 (Size: 280 bytes, Frame: 16)
.ent UpdateVertex
UpdateVertex:
    # Line 936
    move	$a7,$a2
    move	$a6,$a3
    move	$t0,$a1
    addiu	$sp,$sp,-16
    andi	$t1,$a1,0x1
    # Line 940
    beqz	$a0,.L0da72878
    sd	$ra,0($sp)
    andi	$at,$a0,0x4
    beqz	$at,.L0da728a0
    # Line 942
    andi	$ra,$a0,0x10
.L0da72878:
    # lw $t9, -32672($gp) # &sub_0da70000
    move	$a0,$t0
    addiu	$t9,$t9,9520
    move	$a1,$a7
    move	$a2,$a6
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    ld	$ra,0($sp)
.L0da72898:
    # Line 952
    jr	$ra
    addiu	$sp,$sp,16
.L0da728a0:
    # Line 942
    beqz	$ra,.L0da728cc
    sra	$t3,$t0,0x1
    # Line 944
    # lw $t9, -32672($gp) # &sub_0da70000
    move	$a0,$a1
    addiu	$t9,$t9,9840
    move	$a1,$a2
    move	$a2,$a3
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0da72898
    ld	$ra,0($sp)
.L0da728cc:
    andi	$ra,$a0,0x3
    # Line 946
    move	$a0,$a4
    # Line 944
    beqz	$ra,.L0da728fc
    # Line 946
    move	$a2,$zero
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,10176
    move	$a0,$a1
    move	$a1,$a3
    bal __glim_SubdivPatchSGIX
    move	$a2,$a4
    b	.L0da72898
    ld	$ra,0($sp)
.L0da728fc:
    blez	$a1,.L0da72898
    ld	$ra,0($sp)
    sll	$a7,$a1,0x2
    beqz	$t1,.L0da72924
    addu	$a7,$a7,$a4
    # Line 949
    lw	$t2,0($a3)
    lwc1	$f0,0($t2)
    # Line 948
    addiu	$a0,$a4,4
    li	$a2,4
    # Line 949
    swc1	$f0,0($a4)
.L0da72924:
    beqz	$t3,.L0da72960
    move	$a4,$a2
    nop
.L0da72930:
    lw	$ra,0($a6)
    addu	$ra,$ra,$a4
    lwc1	$f2,0($ra)
    swc1	$f2,0($a0)
    lw	$t8,0($a6)
    # Line 948
    addiu	$t9,$a4,4
    # Line 949
    addu	$t8,$t8,$t9
    # Line 948
    addiu	$a0,$a0,8
    # Line 949
    lwc1	$f1,0($t8)
    # Line 948
    addiu	$a4,$a4,8
    bne	$a0,$a7,.L0da72930
    # Line 949
    swc1	$f1,-4($a0)
.L0da72960:
    b	.L0da72898
    ld	$ra,0($sp)
.end UpdateVertex

# Function: SmoothPosition
# Declared: Line 956 (Source lines: 957-971)
# Address: 0x0da72970 - 0x0da72aa8 (Size: 312 bytes, Frame: 0)
.ent SmoothPosition
SmoothPosition:
    # Line 957
    blez	$a0,.L0da72a90
    addiu	$t2,$a2,4
    move	$a5,$zero
    sll	$t0,$a0,0x2
    la	$v0,sub_0daf0000
    slti	$t1,$a1,1
    addu	$t0,$t0,$a3
    sll	$at,$a1,0x3
    addiu	$v0,$v0,-10832
    addiu	$a6,$a1,1
    addu	$at,$at,$v0
    xori	$t1,$t1,0x1
    sll	$a6,$a6,0x2
    lwc1	$f5,-4($at)
    addu	$a6,$a6,$a2
    b	.L0da72a98
    lwc1	$f6,-8($at)
    nop
    nop
    nop
.L0da729c0:
    # Line 966
    lw	$t3,0($a0)
    addu	$t3,$t3,$a5
    lwc1	$f0,0($t3)
    addiu	$a7,$a7,-1
    add.s	$f4,$f4,$f0
    # Line 965
    addiu	$a0,$a0,4
    bnez	$a7,.L0da729c0
    # Line 966
    swc1	$f4,0($a3)
.L0da729e0:
    beqz	$t8,.L0da72a48
    nop
    nop
    nop
.L0da729f0:
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f8,0($v1)
    add.s	$f4,$f4,$f8
    swc1	$f4,0($a3)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f7,0($v0)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$at,8($a0)
    addu	$at,$at,$a5
    lwc1	$f7,0($at)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$t9,12($a0)
    addu	$t9,$t9,$a5
    lwc1	$f7,0($t9)
    # Line 965
    addiu	$a0,$a0,16
    # Line 966
    add.s	$f4,$f4,$f7
    # Line 965
    bne	$a0,$a6,.L0da729f0
    # Line 966
    swc1	$f4,0($a3)
.L0da72a48:
    # Line 963
    addiu	$a3,$a3,4
    sra	$t8,$a1,0x2
    addiu	$a5,$a5,4
    # Line 968
    mul.s	$f9,$f5,$f4
    andi	$a7,$a1,0x3
    # Line 963
    beq	$a3,$t0,.L0da72a90
    # Line 968
    swc1	$f9,-4($a3)
    # Line 964
    lw	$a0,0($a2)
.L0da72a68:
    addu	$a0,$a0,$a5
    lwc1	$f4,0($a0)
    mul.s	$f4,$f6,$f4
    move	$a0,$t2
    beqz	$t1,.L0da72a48
    swc1	$f4,0($a3)
    bnez	$a7,.L0da729c0
    nop
    b	.L0da729e0
    nop
.L0da72a90:
    # Line 971
    jr	$ra
    nop
.L0da72a98:
    sra	$t8,$a1,0x2
    andi	$a7,$a1,0x3
    b	.L0da72a68
    # Line 964
    lw	$a0,0($a2)
.end SmoothPosition

# Function: CreasePosition
# Declared: Line 975 (Source lines: 976-994)
# Address: 0x0da72ab0 - 0x0da72b58 (Size: 168 bytes, Frame: 0)
.ent CreasePosition
CreasePosition:
    # Line 976
    blez	$a1,.L0da72b50
    lwc1	$f9,_lit_3f800000
    lwc1	$f0,_lit_40400000
    lwc1	$f5,_lit_40800000
    addiu	$a6,$a2,4
    lwc1	$f10,_lit_bf800000
    andi	$at,$a0,0x1
    sll	$a7,$a1,0x2
    ldc1	$f8,_lit8_3ff0000000000000
    move	$a5,$zero
    addu	$a7,$a7,$a3
    movz.s	$f5,$f0,$at
.L0da72ae0:
    # Line 985
    lw	$t0,0($a2)
    addu	$t0,$t0,$a5
    lwc1	$f4,0($t0)
    mul.s	$f4,$f5,$f4
    swc1	$f4,0($a3)
    # Line 988
    lw	$t2,0($a6)
    add.s	$f7,$f5,$f9
    addu	$t2,$t2,$a5
    lwc1	$f11,0($t2)
    add.s	$f6,$f7,$f10
    madd.s	$f6,$f4,$f6,$f11
    swc1	$f6,0($a3)
    lw	$t1,4($a6)
    add.s	$f7,$f7,$f9
    addu	$t1,$t1,$a5
    lwc1	$f12,0($t1)
    add.s	$f11,$f7,$f10
    madd.s	$f6,$f6,$f11,$f12
    # Line 991
    cvt.d.s	$f13,$f7
    # Line 984
    addiu	$a3,$a3,4
    # Line 991
    div.d	$f13,$f8,$f13
    # Line 988
    swc1	$f6,-4($a3)
    # Line 991
    cvt.d.s	$f12,$f6
    # Line 984
    addiu	$a5,$a5,4
    # Line 991
    mul.d	$f12,$f12,$f13
    cvt.s.d	$f12,$f12
    # Line 984
    bne	$a3,$a7,.L0da72ae0
    # Line 991
    swc1	$f12,-4($a3)
.L0da72b50:
    # Line 994
    jr	$ra
    nop
.end CreasePosition

# Function: FinalPosition
# Declared: Line 998 (Source lines: 999-1014)
# Address: 0x0da72b60 - 0x0da72c4c (Size: 236 bytes, Frame: 16)
.ent FinalPosition
FinalPosition:
    # Line 999
    move	$t0,$a2
    move	$a7,$a1
    addiu	$sp,$sp,-16
    # Line 1008
    sll	$a2,$a7,0x2
    # Line 999
    move	$a6,$a3
    # Line 1004
    beqz	$a0,.L0da72b88
    sd	$ra,0($sp)
    andi	$at,$a0,0x4
    beqz	$at,.L0da72bac
    # Line 1006
    andi	$ra,$a0,0x3
.L0da72b88:
    # lw $t9, -32672($gp) # &sub_0da70000
    move	$a0,$a7
    addiu	$t9,$t9,10608
    move	$a1,$t0
    move	$a2,$a6
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0da72c44
    ld	$ra,0($sp)
.L0da72bac:
    beqz	$ra,.L0da72bcc
    # Line 1008
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,10928
    move	$a2,$a3
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0da72c44
    ld	$ra,0($sp)
.L0da72bcc:
    blez	$a1,.L0da72c44
    ld	$ra,0($sp)
    move	$a0,$zero
    andi	$a3,$a1,0x1
    addu	$a2,$a2,$a4
    beqz	$a3,.L0da72bfc
    move	$a1,$a4
    # Line 1011
    lw	$a5,0($a6)
    lwc1	$f0,0($a5)
    # Line 1010
    addiu	$a1,$a4,4
    li	$a0,4
    # Line 1011
    swc1	$f0,0($a4)
.L0da72bfc:
    sra	$t0,$a7,0x1
    beqz	$t0,.L0da72c40
    nop
    nop
    nop
.L0da72c10:
    lw	$t3,0($a6)
    addu	$t3,$t3,$a0
    lwc1	$f2,0($t3)
    swc1	$f2,0($a1)
    lw	$t1,0($a6)
    # Line 1010
    addiu	$t2,$a0,4
    # Line 1011
    addu	$t1,$t1,$t2
    # Line 1010
    addiu	$a1,$a1,8
    # Line 1011
    lwc1	$f1,0($t1)
    # Line 1010
    addiu	$a0,$a0,8
    bne	$a1,$a2,.L0da72c10
    # Line 1011
    swc1	$f1,-4($a1)
.L0da72c40:
    ld	$ra,0($sp)
.L0da72c44:
    # Line 1014
    jr	$ra
    addiu	$sp,$sp,16
.end FinalPosition

# Function: SmoothNormal
# Declared: Line 1018 (Source lines: 1019-1036)
# Address: 0x0da72c50 - 0x0da72d90 (Size: 320 bytes, Frame: 48)
.ent SmoothNormal
SmoothNormal:
    # Line 1019
    addiu	$sp,$sp,-48
    # Line 1021
    mtc1	$zero,$f0
    sd	$ra,32($sp)
    # Line 1022
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1021
    swc1	$f0,8($sp)
    # Line 1022
    move	$a6,$zero
    # Line 1021
    swc1	$f0,4($sp)
    # Line 1022
    li	$a7,1
    blez	$a0,.L0da72d70
    # Line 1021
    swc1	$f0,0($sp)
    # Line 1022
    addiu	$t2,$a0,1
    sll	$t0,$a0,0x3
    la	$a4,sub_0daf0000
    addu	$t0,$t0,$a0
    addiu	$t3,$a0,-1
    addiu	$t0,$t0,1
    addiu	$a4,$a4,-10760
    sll	$t0,$t0,0x2
    addiu	$a5,$a1,4
    addu	$a4,$a4,$t0
    # Line 1027
    move	$t0,$a6
    nop
.L0da72cb0:
    addiu	$t1,$sp,16
    movz	$t0,$t3,$a7
    addiu	$a0,$sp,0
    sll	$t0,$t0,0x2
    # Line 1026
    addiu	$a7,$a7,1
    # Line 1027
    lwc1	$f4,-40($a4)
    addu	$t0,$t0,$a1
    # Line 1026
    addiu	$a4,$a4,4
    # Line 1030
    lw	$ra,0($a5)
    lwc1	$f13,0($ra)
    lwc1	$f12,0($sp)
    madd.s	$f12,$f12,$f4,$f13
    swc1	$f12,0($sp)
    # Line 1031
    lw	$t9,0($t0)
    lwc1	$f11,0($t9)
    lwc1	$f10,16($sp)
    madd.s	$f10,$f10,$f4,$f11
    swc1	$f10,16($sp)
    # Line 1030
    lw	$a3,0($a5)
    # Line 1029
    li	$v1,4
    # Line 1030
    addu	$a3,$a3,$v1
    lwc1	$f9,0($a3)
    lwc1	$f8,4($sp)
    madd.s	$f8,$f8,$f4,$f9
    swc1	$f8,4($sp)
    # Line 1031
    lw	$v0,0($t0)
    addu	$v0,$v0,$v1
    lwc1	$f7,0($v0)
    lwc1	$f6,4($t1)
    madd.s	$f6,$f6,$f4,$f7
    swc1	$f6,4($t1)
    # Line 1030
    lw	$at,0($a5)
    # Line 1029
    li	$ra,0x8
    # Line 1030
    addu	$at,$at,$ra
    lwc1	$f5,0($at)
    lwc1	$f3,8($sp)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($sp)
    # Line 1031
    lw	$t9,0($t0)
    addu	$t9,$t9,$ra
    lwc1	$f2,0($t9)
    lwc1	$f1,8($t1)
    madd.s	$f1,$f1,$f4,$f2
    # Line 1026
    addiu	$a6,$a6,1
    addiu	$a5,$a5,4
    # Line 1027
    move	$t0,$a6
    # Line 1031
    swc1	$f1,8($t1)
    # Line 1026
    bne	$t2,$a7,.L0da72cb0
.L0da72d70:
    # Line 1035
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,8144
    addiu	$a1,$sp,16
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1036
    jr	$ra
    addiu	$sp,$sp,48
.end SmoothNormal

# Function: CreaseNormal
# Declared: Line 1040 (Source lines: 1041-1084)
# Address: 0x0da72d90 - 0x0da7304c (Size: 700 bytes, Frame: 48)
.ent CreaseNormal
CreaseNormal:
    # Line 1043
    mtc1	$zero,$f0
    # Line 1041
    addiu	$sp,$sp,-48
    # Line 1044
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    slti	$at,$a1,1
    # Line 1043
    swc1	$f0,8($sp)
    # Line 1044
    sll	$t0,$a1,0x3
    # Line 1043
    swc1	$f0,4($sp)
    # Line 1044
    xori	$t3,$at,0x1
    bne	$zero,$at,.L0da72e54
    # Line 1043
    swc1	$f0,0($sp)
    # Line 1044
    addiu	$t2,$a1,1
    la	$a6,sub_0daf0000
    addu	$t0,$t0,$a1
    addiu	$t0,$t0,1
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,-10976
    li	$a7,1
    addu	$a6,$a6,$t0
    addiu	$a5,$a2,4
    addiu	$a6,$a6,544
    nop
    nop
.L0da72df0:
    addiu	$t0,$sp,0
    lwc1	$f4,-40($a6)
    # Line 1051
    li	$t9,0x8
    # Line 1049
    addiu	$a6,$a6,4
    # Line 1052
    lw	$v1,0($a5)
    lwc1	$f7,0($v1)
    lwc1	$f6,0($sp)
    madd.s	$f6,$f6,$f4,$f7
    swc1	$f6,0($sp)
    lw	$at,0($a5)
    # Line 1051
    li	$v0,4
    # Line 1052
    addu	$at,$at,$v0
    lwc1	$f5,0($at)
    lwc1	$f3,4($sp)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,4($sp)
    lw	$t8,0($a5)
    addu	$t8,$t8,$t9
    lwc1	$f2,0($t8)
    lwc1	$f1,8($sp)
    madd.s	$f1,$f1,$f4,$f2
    # Line 1049
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1052
    swc1	$f1,8($sp)
    # Line 1049
    bne	$t2,$a7,.L0da72df0
.L0da72e54:
    la	$t0,sub_0daf0000
    andi	$a4,$a0,0x1
    move	$a5,$a2
    sd	$ra,32($sp)
    beqz	$a4,.L0da72f08
    addiu	$t0,$t0,-10976
    li	$a6,5
    move	$a7,$zero
    addiu	$a1,$t0,872
    nop
    nop
.L0da72e80:
    addiu	$a0,$sp,16
    lwc1	$f4,0($a1)
    # Line 1060
    li	$t3,0x8
    # Line 1058
    addiu	$a1,$a1,4
    # Line 1061
    lw	$ra,0($a5)
    lwc1	$f13,0($ra)
    lwc1	$f12,16($sp)
    madd.s	$f12,$f12,$f4,$f13
    swc1	$f12,16($sp)
    lw	$t8,0($a5)
    # Line 1060
    li	$t9,4
    # Line 1061
    addu	$t8,$t8,$t9
    lwc1	$f11,0($t8)
    lwc1	$f10,4($a0)
    madd.s	$f10,$f10,$f4,$f11
    swc1	$f10,4($a0)
    lw	$t2,0($a5)
    addu	$t2,$t2,$t3
    lwc1	$f9,0($t2)
    lwc1	$f8,8($a0)
    madd.s	$f8,$f8,$f4,$f9
    # Line 1058
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1061
    swc1	$f8,8($a0)
    # Line 1058
    bne	$a7,$a6,.L0da72e80
.L0da72ee4:
    # Line 1082
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
.L0da72ee8:
    addiu	$t9,$t9,8144
    move	$a2,$a3
    addiu	$a1,$sp,16
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1084
    jr	$ra
    addiu	$sp,$sp,48
.L0da72f08:
    # Line 1058
    slti	$ra,$a1,4
    # Line 1066
    sll	$a6,$a1,0x3
    li	$a7,1
    addu	$a6,$a6,$a1
    # Line 1058
    beqz	$ra,.L0da72fbc
    # Line 1066
    addiu	$a6,$a6,1
    # Line 1058
    bltz	$a1,.L0da72ee4
    move	$a7,$zero
    sll	$a6,$a1,0x3
    addu	$a6,$a6,$a1
    sll	$a6,$a6,0x2
    addiu	$t2,$a1,1
    addu	$a6,$t0,$a6
    move	$a5,$a2
    addiu	$a6,$a6,896
    nop
    nop
    addiu	$a0,$sp,16
.L0da72f50:
    lwc1	$f4,-36($a6)
    # Line 1068
    li	$t3,0x8
    # Line 1066
    addiu	$a6,$a6,4
    # Line 1069
    lw	$ra,0($a5)
    lwc1	$f19,0($ra)
    lwc1	$f18,16($sp)
    madd.s	$f18,$f18,$f4,$f19
    swc1	$f18,16($sp)
    lw	$t8,0($a5)
    # Line 1068
    li	$t9,4
    # Line 1069
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    lwc1	$f16,4($a0)
    madd.s	$f16,$f16,$f4,$f17
    swc1	$f16,4($a0)
    lw	$t0,0($a5)
    addu	$t0,$t0,$t3
    lwc1	$f15,0($t0)
    lwc1	$f14,8($a0)
    madd.s	$f14,$f14,$f4,$f15
    # Line 1066
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1069
    swc1	$f14,8($a0)
    # Line 1066
    bne	$t2,$a7,.L0da72f50
    # Line 1058
    addiu	$a0,$sp,16
    b	.L0da72ee8
    # Line 1082
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
.L0da72fbc:
    # Line 1066
    beqz	$t3,.L0da72ee4
    sll	$a6,$a6,0x2
    addiu	$t2,$a1,1
    addu	$a6,$t0,$a6
    addiu	$a5,$a2,4
    addiu	$a6,$a6,896
    nop
    nop
    addiu	$a0,$sp,16
.L0da72fe0:
    lwc1	$f4,-40($a6)
    # Line 1075
    li	$t3,0x8
    # Line 1073
    addiu	$a6,$a6,4
    # Line 1076
    lw	$ra,0($a5)
    lwc1	$f31,0($ra)
    lwc1	$f29,16($sp)
    madd.s	$f29,$f29,$f4,$f31
    swc1	$f29,16($sp)
    lw	$t8,0($a5)
    # Line 1075
    li	$t9,4
    # Line 1076
    addu	$t8,$t8,$t9
    lwc1	$f27,0($t8)
    lwc1	$f25,4($a0)
    madd.s	$f25,$f25,$f4,$f27
    swc1	$f25,4($a0)
    lw	$t0,0($a5)
    addu	$t0,$t0,$t3
    lwc1	$f23,0($t0)
    lwc1	$f21,8($a0)
    madd.s	$f21,$f21,$f4,$f23
    # Line 1073
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1076
    swc1	$f21,8($a0)
    # Line 1073
    bne	$t2,$a7,.L0da72fe0
    # Line 1066
    addiu	$a0,$sp,16
    b	.L0da72ee8
    # Line 1082
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
.end CreaseNormal

# Function: CornerNormal
# Declared: Line 1088 (Source lines: 1089-1107)
# Address: 0x0da73050 - 0x0da73190 (Size: 320 bytes, Frame: 48)
.ent CornerNormal
CornerNormal:
    # Line 1089
    addiu	$sp,$sp,-48
    # Line 1092
    mtc1	$zero,$f0
    sd	$ra,32($sp)
    # Line 1093
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1092
    swc1	$f0,8($sp)
    # Line 1093
    move	$a6,$zero
    # Line 1092
    swc1	$f0,4($sp)
    # Line 1093
    li	$a7,1
    blez	$a0,.L0da73170
    # Line 1092
    swc1	$f0,0($sp)
    # Line 1093
    addiu	$t2,$a0,1
    sll	$t0,$a0,0x3
    la	$a4,sub_0daf0000
    addu	$t0,$t0,$a0
    addiu	$t3,$a0,-1
    addiu	$t0,$t0,1
    addiu	$a4,$a4,-10432
    sll	$t0,$t0,0x2
    addiu	$a5,$a1,4
    addu	$a4,$a4,$t0
    # Line 1097
    move	$t0,$a6
    nop
.L0da730b0:
    addiu	$t1,$sp,16
    movz	$t0,$t3,$a7
    addiu	$a0,$sp,0
    sll	$t0,$t0,0x2
    # Line 1096
    addiu	$a7,$a7,1
    # Line 1097
    lwc1	$f4,-40($a4)
    addu	$t0,$t0,$a1
    # Line 1096
    addiu	$a4,$a4,4
    # Line 1100
    lw	$ra,0($a5)
    lwc1	$f13,0($ra)
    lwc1	$f12,0($sp)
    madd.s	$f12,$f12,$f4,$f13
    swc1	$f12,0($sp)
    # Line 1101
    lw	$t9,0($t0)
    lwc1	$f11,0($t9)
    lwc1	$f10,16($sp)
    madd.s	$f10,$f10,$f4,$f11
    swc1	$f10,16($sp)
    # Line 1100
    lw	$a3,0($a5)
    # Line 1099
    li	$v1,4
    # Line 1100
    addu	$a3,$a3,$v1
    lwc1	$f9,0($a3)
    lwc1	$f8,4($sp)
    madd.s	$f8,$f8,$f4,$f9
    swc1	$f8,4($sp)
    # Line 1101
    lw	$v0,0($t0)
    addu	$v0,$v0,$v1
    lwc1	$f7,0($v0)
    lwc1	$f6,4($t1)
    madd.s	$f6,$f6,$f4,$f7
    swc1	$f6,4($t1)
    # Line 1100
    lw	$at,0($a5)
    # Line 1099
    li	$ra,0x8
    # Line 1100
    addu	$at,$at,$ra
    lwc1	$f5,0($at)
    lwc1	$f3,8($sp)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($sp)
    # Line 1101
    lw	$t9,0($t0)
    addu	$t9,$t9,$ra
    lwc1	$f2,0($t9)
    lwc1	$f1,8($t1)
    madd.s	$f1,$f1,$f4,$f2
    # Line 1096
    addiu	$a6,$a6,1
    addiu	$a5,$a5,4
    # Line 1097
    move	$t0,$a6
    # Line 1101
    swc1	$f1,8($t1)
    # Line 1096
    bne	$t2,$a7,.L0da730b0
.L0da73170:
    # Line 1105
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,8144
    addiu	$a1,$sp,16
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1107
    jr	$ra
    addiu	$sp,$sp,48
.end CornerNormal

# Function: ComputeNormal
# Declared: Line 1111 (Source lines: 1112-1122)
# Address: 0x0da73190 - 0x0da7320c (Size: 124 bytes, Frame: 16)
.ent ComputeNormal
ComputeNormal:
    # Line 1112
    andi	$at,$a0,0x3
    move	$a6,$a1
    addiu	$sp,$sp,-16
    move	$a5,$a2
    beqz	$at,.L0da731c0
    sd	$ra,0($sp)
    # Line 1115
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,11664
    bal __glim_SubdivPatchSGIX
    nop
    b	.L0da731e4
    ld	$ra,0($sp)
.L0da731c0:
    andi	$ra,$a0,0x8
    beqz	$ra,.L0da731ec
    # Line 1117
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,12368
    move	$a0,$a1
    move	$a1,$a2
    bal __glim_SubdivPatchSGIX
    move	$a2,$a3
    ld	$ra,0($sp)
.L0da731e4:
    # Line 1122
    jr	$ra
    addiu	$sp,$sp,16
.L0da731ec:
    # Line 1119
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,11344
    move	$a0,$a1
    move	$a1,$a2
    bal __glim_SubdivPatchSGIX
    move	$a2,$a3
    b	.L0da731e4
    ld	$ra,0($sp)
.end ComputeNormal

# Function: InitSubdivision
# Declared: Line 1131 (Source lines: 1132-1715)
# Address: 0x0da73210 - 0x0da75c3c (Size: 10796 bytes, Frame: 192)
.ent InitSubdivision
InitSubdivision:
    # Line 1132
    addiu	$sp,$sp,-960
    sdc1	$f22,840($sp)
    sd	$ra,888($sp)
    sd	$s6,896($sp)
    sd	$s3,904($sp)
    sdc1	$f24,56($sp)
    sd	$s1,192($sp)
    sd	$a2,248($sp)
    sd	$a1,240($sp)
    # Line 1134
    lw	$t8,4112($zero)
    # Line 1132
    sd	$s8,208($sp)
    # Line 1137
    lw	$s1,6084($t8)
    # Line 1138
    lwc1	$f24,6076($t8)
    # Line 1136
    lw	$t9,6080($t8)
    # Line 1132
    move	$s8,$a0
    # Line 1140
    lw	$a0,6092($t8)
    # Line 1141
    lw	$a1,6096($t8)
    # Line 1142
    lw	$a2,6100($t8)
    # Line 1143
    lw	$a3,6112($t8)
    # Line 1144
    lw	$a4,6072($t8)
    # Line 1145
    lbu	$a5,6117($t8)
    sd	$a5,496($sp)
    # Line 1144
    sd	$a4,464($sp)
    # Line 1143
    sd	$a3,184($sp)
    # Line 1142
    sd	$a2,400($sp)
    # Line 1141
    sd	$a1,200($sp)
    # Line 1140
    sd	$a0,768($sp)
    # Line 1139
    lw	$at,6088($t8)
    # Line 1146
    lw	$v0,1792($t8)
    lui	$v1,0x80
    # Line 1139
    sd	$at,776($sp)
    # Line 1146
    and	$v0,$v0,$v1
    # Line 1155
    beqz	$at,.L0da757ec
    # Line 1146
    sd	$v0,216($sp)
.L0da73298:
    # Line 1155
    move	$a3,$zero
.L0da7329c:
    # Line 1156
    ld	$a6,768($sp)
    beqz	$a6,.L0da75848
    # Line 1155
    sw	$a3,-13568($gp)
.L0da732a8:
    sdc1	$f20,848($sp)
    sd	$s5,856($sp)
    sd	$s7,864($sp)
    sd	$s0,872($sp)
    sd	$s4,880($sp)
    # Line 1156
    move	$a3,$zero
    sd	$s2,912($sp)
.L0da732c4:
    li	$s7,4
    li	$s4,3
    la	$t1,sub_0daf0000
    li	$s5,2
    mtc1	$zero,$f20
    la	$s2,sub_0db10000
    move	$s0,$zero
    addiu	$t1,$t1,-10976
    addiu	$s2,$s2,-21520
    addiu	$t3,$t1,1244
    sw	$a3,-13564($gp)
    b	.L0da7332c
    addiu	$t1,$t1,1224
.L0da732f8:
    # Line 1167
    swc1	$f20,144($a4)
    # Line 1166
    swc1	$f20,0($a4)
.L0da73300:
    # Line 1163
    addiu	$a3,$a3,4
    ld	$ra,80($sp)
    addiu	$a7,$a7,4
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    addiu	$ra,$ra,1
    sd	$ra,80($sp)
.L0da7331c:
    bnez	$at,.L0da733e0
    # Line 1164
    ld	$t2,80($sp)
.L0da73324:
    # Line 1162
    beq	$t1,$t3,.L0da734a4
    addiu	$s0,$s0,1
.L0da7332c:
    # Line 1156
    li	$t2,1
    lw	$v0,0($t1)
    mult	$v0,$s1
    # Line 1164
    li	$a1,1
    # Line 1156
    mflo	$t0
    addiu	$a3,$s2,1880
    # Line 1162
    addiu	$t1,$t1,4
    # Line 1156
    blez	$t0,.L0da73324
    slt	$a0,$t0,$t2
    move	$a4,$s2
    movz	$t2,$t0,$a0
    andi	$v1,$t2,0x1
    addiu	$a5,$s2,576
    addiu	$a7,$s2,1120
    sd	$zero,80($sp)
    beqz	$v1,.L0da7331c
    sra	$at,$t2,0x1
    # Line 1164
    beqz	$s0,.L0da732f8
    nop
    beq	$s0,$a1,.L0da757c8
    nop
    beq	$s0,$s5,.L0da757d4
    nop
    beq	$s0,$s4,.L0da757e0
    nop
    bne	$s0,$s7,.L0da73300
    nop
    # Line 1183
    swc1	$f20,2276($s2)
    # Line 1184
    b	.L0da73300
    # Line 1182
    swc1	$f20,1880($s2)
    nop
    nop
    nop
.L0da733b0:
    # Line 1167
    swc1	$f20,148($a4)
    # Line 1166
    swc1	$f20,4($a4)
.L0da733b8:
    # Line 1163
    ld	$a2,80($sp)
.L0da733bc:
    addiu	$a2,$a2,1
    addiu	$a4,$a4,8
    sd	$a2,80($sp)
    slt	$a2,$a2,$t0
    addiu	$a5,$a5,8
    addiu	$a7,$a7,8
    beqz	$a2,.L0da73324
    addiu	$a3,$a3,8
    # Line 1164
    ld	$t2,80($sp)
.L0da733e0:
    beqz	$s0,.L0da73444
    li	$ra,1
    li	$a6,1
    beq	$s0,$a6,.L0da73450
    nop
    beq	$s0,$s5,.L0da73468
    nop
    beq	$s0,$s4,.L0da73480
    nop
    beq	$s0,$s7,.L0da73498
    nop
.L0da7340c:
    # Line 1163
    addiu	$t2,$t2,1
    # Line 1164
    beqz	$s0,.L0da733b0
    sd	$t2,80($sp)
    beq	$s0,$ra,.L0da7345c
    nop
    beq	$s0,$s5,.L0da73474
    nop
    beq	$s0,$s4,.L0da7348c
    nop
    bne	$s0,$s7,.L0da733bc
    # Line 1163
    ld	$a2,80($sp)
    # Line 1183
    swc1	$f20,400($a3)
    # Line 1184
    b	.L0da733b8
    # Line 1182
    swc1	$f20,4($a3)
.L0da73444:
    # Line 1167
    swc1	$f20,144($a4)
    b	.L0da7340c
    # Line 1166
    swc1	$f20,0($a4)
.L0da73450:
    # Line 1171
    swc1	$f20,180($a5)
    # Line 1172
    b	.L0da7340c
    # Line 1170
    swc1	$f20,0($a5)
.L0da7345c:
    # Line 1171
    swc1	$f20,184($a5)
    # Line 1172
    b	.L0da733b8
    # Line 1170
    swc1	$f20,4($a5)
.L0da73468:
    # Line 1175
    swc1	$f20,252($a7)
    # Line 1176
    b	.L0da7340c
    # Line 1174
    swc1	$f20,0($a7)
.L0da73474:
    # Line 1175
    swc1	$f20,256($a7)
    # Line 1176
    b	.L0da733b8
    # Line 1174
    swc1	$f20,4($a7)
.L0da73480:
    # Line 1179
    swc1	$f20,396($a3)
    # Line 1180
    b	.L0da7340c
    # Line 1178
    swc1	$f20,0($a3)
.L0da7348c:
    # Line 1179
    swc1	$f20,400($a3)
    # Line 1180
    b	.L0da733b8
    # Line 1178
    swc1	$f20,4($a3)
.L0da73498:
    # Line 1183
    swc1	$f20,396($a3)
    # Line 1184
    b	.L0da7340c
    # Line 1182
    swc1	$f20,0($a3)
.L0da734a4:
    # Line 1162
    li	$at,10787
    beq	$t9,$at,.L0da75928
    # Line 1194
    sll	$ra,$s1,0x2
    # Line 1195
    li	$v0,10793
    beq	$t9,$v0,.L0da75ac0
.L0da734b8:
    # Line 1202
    la	$s0,sub_0da70000
    addiu	$s0,$s0,7904
.L0da734c0:
    # Line 1213
    move	$a1,$s8
    move	$t9,$s0
    sll	$s6,$s1,0x2
    move	$a0,$s1
    addu	$a2,$s6,$s2
    sd	$a2,176($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a2,$a2,144
    # Line 1214
    addu	$a1,$s6,$s8
    addu	$s3,$s1,$s1
    move	$t9,$s0
    sll	$s3,$s3,0x2
    move	$a0,$s1
    sd	$s3,680($sp)
    addu	$s3,$s3,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a2,$s3,144
    # Line 1215
    ld	$a1,680($sp)
    move	$t9,$s0
    ld	$a2,176($sp)
    move	$a0,$s1
    addu	$a1,$a1,$s8
    addiu	$a2,$a2,288
    bal __glim_SubdivPatchSGIX
    sd	$a2,296($sp)
    # Line 1216
    addiu	$a2,$s3,288
    sll	$a1,$s1,0x2
    move	$t9,$s0
    subu	$a1,$a1,$s1
    move	$a0,$s1
    sll	$a1,$a1,0x2
    sd	$a1,488($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a1,$a1,$s8
    # Line 1217
    move	$a0,$s1
    move	$t9,$s0
    move	$a2,$s3
    sll	$a1,$s6,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a1,$s8,$a1
    # Line 1218
    addiu	$a2,$s2,288
    sll	$a1,$s1,0x2
    ld	$s3,176($sp)
    move	$t9,$s0
    addu	$a1,$a1,$s1
    sd	$a2,392($sp)
    move	$a0,$s1
    sll	$a1,$a1,0x2
    addu	$a1,$s8,$a1
    bal __glim_SubdivPatchSGIX
    sd	$a1,128($sp)
    # Line 1219
    addiu	$a2,$s3,432
    sll	$a1,$s1,0x2
    move	$t9,$s0
    subu	$a1,$a1,$s1
    sd	$a2,152($sp)
    move	$a0,$s1
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$s8
    bal __glim_SubdivPatchSGIX
    sd	$a1,224($sp)
    # Line 1220
    move	$a0,$s1
    ld	$a2,488($sp)
    sll	$s3,$s1,0x3
    move	$t9,$s0
    subu	$s3,$s3,$s1
    addu	$a2,$a2,$s2
    sll	$s3,$s3,0x2
    sd	$a2,360($sp)
    addiu	$a2,$a2,144
    addu	$s3,$s8,$s3
    bal __glim_SubdivPatchSGIX
    move	$a1,$s3
    # Line 1233
    ld	$t8,240($sp)
    sd	$s3,120($sp)
    lbu	$a1,7($t8)
    # Line 1230
    lbu	$a0,6($t8)
    # Line 1229
    lbu	$v1,5($t8)
    # Line 1227
    lbu	$v0,4($t8)
    # Line 1226
    lbu	$at,3($t8)
    # Line 1225
    lbu	$ra,2($t8)
    # Line 1224
    lbu	$t9,1($t8)
    # Line 1223
    lbu	$t8,0($t8)
    # Line 1234
    sb	$a1,5179($s2)
    # Line 1233
    sb	$a1,5178($s2)
    # Line 1232
    sb	$a0,5177($s2)
    # Line 1231
    sb	$a0,5176($s2)
    # Line 1230
    sb	$a0,5175($s2)
    # Line 1229
    sb	$v1,5174($s2)
    # Line 1228
    sb	$v0,5173($s2)
    # Line 1227
    sb	$v0,5172($s2)
    # Line 1226
    sb	$at,5171($s2)
    # Line 1225
    sb	$ra,5170($s2)
    # Line 1224
    sb	$t9,5169($s2)
    # Line 1223
    sb	$t8,5168($s2)
    # Line 1237
    lbu	$at,5179($s2)
    sb	$at,5211($s2)
    lbu	$ra,5178($s2)
    sb	$ra,5210($s2)
    lbu	$t9,5177($s2)
    sb	$t9,5209($s2)
    lbu	$t8,5176($s2)
    sb	$t8,5208($s2)
    lbu	$t3,5175($s2)
    sb	$t3,5207($s2)
    lbu	$t2,5174($s2)
    sb	$t2,5206($s2)
    lbu	$t1,5173($s2)
    sb	$t1,5205($s2)
    lbu	$t0,5172($s2)
    sb	$t0,5204($s2)
    lbu	$a7,5171($s2)
    sb	$a7,5203($s2)
    lbu	$a6,5170($s2)
    sb	$a6,5202($s2)
    lbu	$a5,5169($s2)
    sb	$a5,5201($s2)
    lbu	$a2,5168($s2)
    sb	$a2,5200($s2)
    # Line 1236
    li	$s3,32
    ld	$a7,248($sp)
    addiu	$a4,$s2,5213
    addiu	$t0,$s2,5197
    ld	$a5,240($sp)
    addiu	$a3,$s2,5181
    addiu	$a7,$a7,52
    b	.L0da75c0c
    addiu	$a5,$a5,52
.L0da736c0:
    # Line 1244
    sb	$zero,1($a4)
.L0da736c4:
    # Line 1239
    addiu	$a5,$a5,8
    addiu	$a3,$a3,2
    # Line 1242
    li	$ra,1
    li	$t9,1
    # Line 1239
    beq	$a3,$t0,.L0da73714
    addiu	$a4,$a4,2
    # Line 1240
    lw	$t8,4($a7)
.L0da736e0:
    lw	$t2,0($a7)
    lbu	$t3,-24($a5)
    lbu	$t1,-28($a5)
    # Line 1239
    addiu	$a7,$a7,8
    # Line 1240
    beq	$t2,$s3,.L0da7370c
    sb	$t1,0($a3)
    # Line 1244
    sb	$zero,0($a4)
.L0da736fc:
    # Line 1240
    bne	$t8,$s3,.L0da736c0
    sb	$t3,1($a3)
    # Line 1242
    b	.L0da736c4
    sb	$t9,1($a4)
.L0da7370c:
    b	.L0da736fc
    sb	$ra,0($a4)
.L0da73714:
    # Line 1253
    ld	$v0,248($sp)
    lbu	$a1,2($v0)
    # Line 1250
    lbu	$at,1($v0)
    # Line 1253
    xor	$a1,$s3,$a1
    # Line 1248
    sw	$v0,-13588($gp)
    # Line 1250
    xor	$at,$s3,$at
    # Line 1253
    sltiu	$a1,$a1,1
    # Line 1250
    sltiu	$at,$at,1
    # Line 1253
    blez	$s6,.L0da73790
    sd	$at,424($sp)
    sll	$a4,$s1,0x5
    addiu	$a3,$s2,5232
    sll	$a5,$s1,0x2
    addu	$a5,$a5,$s1
    sll	$a7,$s1,0x3
    sll	$a5,$a5,0x4
    addu	$a7,$a7,$s6
    addu	$a4,$a4,$s8
    sll	$a7,$a7,0x2
    addu	$a5,$a5,$s8
    addu	$a7,$a7,$s8
    nop
    nop
.L0da73770:
    # Line 1259
    lwc1	$f1,0($a4)
    swc1	$f1,0($a3)
    # Line 1258
    addiu	$a4,$a4,4
    # Line 1260
    lwc1	$f0,0($a5)
    # Line 1258
    addiu	$a3,$a3,4
    addiu	$a5,$a5,4
    bne	$a4,$a7,.L0da73770
    # Line 1260
    swc1	$f0,140($a3)
.L0da73790:
    # Line 1258
    ld	$a6,464($sp)
    bltz	$a6,.L0da74c6c
    addiu	$t3,$s2,3756
    sd	$t3,256($sp)
    addiu	$a6,$s2,936
    sd	$a6,376($sp)
    addiu	$a4,$s2,756
    sd	$a4,368($sp)
    addiu	$at,$s2,144
    sd	$at,384($sp)
    addiu	$ra,$s2,5376
    sd	$ra,616($sp)
    addiu	$ra,$s2,8152
    sd	$ra,456($sp)
    sd	$a1,136($sp)
    addiu	$s4,$s2,4440
    sd	$s4,264($sp)
    addiu	$s7,$s2,5232
    sd	$s7,624($sp)
    la	$s7,sub_0da70000
    ld	$t8,400($sp)
    ld	$v0,184($sp)
    addiu	$t2,$s2,2672
    sd	$t2,336($sp)
    addiu	$t8,$t8,15
    andi	$a3,$v0,0x10
    sd	$a3,480($sp)
    mult	$t8,$s1
    andi	$a2,$v0,0x800
    sd	$a2,472($sp)
    andi	$a0,$v0,0x40
    sd	$a0,536($sp)
    ld	$a5,768($sp)
    sd	$s8,144($sp)
    la	$s5,sub_0daf0000
    addiu	$t1,$s2,2276
    addiu	$a5,$a5,-1
    sd	$t1,328($sp)
    mflo	$t1
    nop
    nop
    mult	$a5,$s1
    addiu	$t9,$s2,4656
    sd	$t9,568($sp)
    addiu	$t9,$s2,4800
    sd	$t9,600($sp)
    ld	$t9,776($sp)
    andi	$v1,$v0,0x20
    sd	$v1,528($sp)
    addiu	$s5,$s5,-10976
    ld	$t2,144($sp)
    addiu	$t0,$s2,1624
    addiu	$t9,$t9,-1
    sd	$t0,352($sp)
    mflo	$t0
    nop
    nop
    mult	$t9,$s1
    move	$s8,$zero
    addiu	$s5,$s5,1224
    sd	$s5,648($sp)
    li	$s4,-1
    addiu	$s7,$s7,8288
    la	$s5,sub_0da70000
    andi	$v0,$v0,0x200
    addiu	$a7,$s2,1372
    ld	$t8,464($sp)
    sd	$v0,312($sp)
    addiu	$s5,$s5,9216
    sll	$t1,$t1,0x2
    sd	$a7,344($sp)
    addiu	$t8,$t8,1
    addu	$t1,$t1,$t2
    sd	$t8,448($sp)
    sll	$t0,$t0,0x2
    mflo	$a7
    sd	$t1,160($sp)
    addu	$t0,$t0,$s2
    sll	$a7,$a7,0x2
    addiu	$t0,$t0,4800
    sd	$t0,592($sp)
    addu	$a7,$a7,$s2
    addiu	$a7,$a7,4656
    b	.L0da73958
    sd	$a7,560($sp)
    nop
    nop
    nop
.L0da738f0:
    ld	$s4,944($sp)
    # Line 1264
    ld	$v0,624($sp)
.L0da738f8:
    ld	$v1,568($sp)
    ld	$a0,600($sp)
    ld	$a1,560($sp)
    ld	$a2,592($sp)
    ld	$a4,648($sp)
    ld	$a3,616($sp)
    addiu	$a4,$a4,4
    sd	$a4,648($sp)
    addiu	$a3,$a3,576
    sd	$a3,616($sp)
    addiu	$a2,$a2,576
    sd	$a2,592($sp)
    addiu	$a1,$a1,576
    sd	$a1,560($sp)
    ld	$at,448($sp)
    addiu	$s8,$s8,1
    addiu	$a0,$a0,576
    sd	$a0,600($sp)
    addiu	$s4,$s4,1
    addiu	$v1,$v1,576
    sd	$v1,568($sp)
    addiu	$v0,$v0,576
    beq	$at,$s8,.L0da74c78
    sd	$v0,624($sp)
.L0da73958:
    # Line 1266
    li	$t1,4
    li	$t0,3
    ld	$a5,624($sp)
    li	$a7,2
    beqz	$s8,.L0da748a8
    sd	$a5,544($sp)
    li	$a6,1
    beq	$s8,$a6,.L0da74ae0
    nop
    beq	$s8,$a7,.L0da74b9c
    nop
    beq	$s8,$t0,.L0da74c00
    # Line 1297
    addiu	$at,$s2,1120
    # Line 1266
    beq	$s8,$t1,.L0da74c34
    lw	$s0,24($sp)
.L0da73994:
    # Line 1308
    ld	$t2,648($sp)
    lw	$t2,-4($t2)
    sd	$t2,640($sp)
.L0da739a0:
    # Line 1317
    addu	$v0,$s6,$s0
    sd	$v0,672($sp)
    # Line 1316
    sw	$zero,8192($s2)
    # Line 1315
    lw	$at,20($sp)
    # Line 1317
    sw	$v0,8116($s2)
    # Line 1319
    ld	$ra,680($sp)
    # Line 1315
    addu	$v1,$s6,$at
    sd	$v1,696($sp)
    # Line 1319
    addu	$ra,$ra,$at
    sd	$ra,704($sp)
    # Line 1320
    ld	$t8,528($sp)
    # Line 1310
    ld	$a0,648($sp)
    # Line 1318
    lw	$a1,-13588($gp)
    # Line 1315
    sw	$v1,8112($s2)
    # Line 1318
    lbu	$t3,1($a1)
    # Line 1319
    sw	$ra,8120($s2)
    # Line 1320
    lbu	$t9,0($a1)
    # Line 1310
    lw	$a0,0($a0)
    sd	$a0,632($sp)
    # Line 1320
    sw	$t9,8200($s2)
    # Line 1323
    li	$a3,3
    # Line 1320
    beqz	$t8,.L0da73a18
    # Line 1318
    sw	$t3,8196($s2)
    # Line 1322
    ld	$a4,680($sp)
    lw	$a3,16($sp)
    addu	$a3,$a3,$a4
    sw	$a3,8124($s2)
    # Line 1323
    lbu	$a2,5($a1)
    li	$a3,4
    sw	$a2,8204($s2)
.L0da73a18:
    ld	$a5,776($sp)
    blez	$a5,.L0da73b90
    # Line 1367
    lw	$s3,32($sp)
    # Line 1323
    move	$t1,$zero
    sll	$t2,$a3,0x2
    ld	$ra,776($sp)
    move	$t0,$a1
    addu	$t2,$t2,$s2
    move	$t8,$ra
    andi	$t3,$ra,0x3
    addu	$ra,$ra,$a1
    addiu	$a7,$t2,8192
    beqz	$t3,.L0da73a98
    addiu	$t2,$t2,8112
.L0da73a50:
    move	$v0,$zero
    movn	$v0,$s4,$s8
    # Line 1326
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x4
    addu	$at,$t1,$at
    sll	$at,$at,0x2
    # Line 1325
    addiu	$t0,$t0,1
    # Line 1326
    addu	$at,$s2,$at
    addiu	$t3,$t3,-1
    addiu	$at,$at,5232
    sw	$at,0($t2)
    # Line 1325
    addiu	$t2,$t2,4
    addiu	$a7,$a7,4
    # Line 1327
    lbu	$t9,11($t0)
    # Line 1325
    addu	$t1,$t1,$s1
    bnez	$t3,.L0da73a50
    # Line 1327
    sw	$t9,-4($a7)
.L0da73a98:
    sra	$v1,$t8,0x2
    beqz	$v1,.L0da73b90
    li	$a4,5232
    li	$a0,5232
    li	$t9,5232
    li	$a2,5232
    addu	$a2,$s2,$a2
    addu	$t9,$s2,$t9
    addu	$a0,$s2,$a0
    addu	$a4,$s2,$a4
.L0da73ac0:
    move	$a5,$zero
    movn	$a5,$s4,$s8
    move	$a6,$zero
    movn	$a6,$s4,$s8
    move	$v1,$zero
    movn	$v1,$s4,$s8
    move	$v0,$zero
    movn	$v0,$s4,$s8
    # Line 1326
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v1,$a6,0x3
    sll	$t3,$a5,0x3
    addu	$v1,$v1,$a6
    addu	$t3,$t3,$a5
    sll	$v1,$v1,0x4
    sll	$t3,$t3,0x4
    addu	$v1,$t1,$v1
    # Line 1325
    addu	$t8,$t1,$s1
    # Line 1326
    sll	$v1,$v1,0x2
    addu	$t3,$t8,$t3
    addu	$v1,$v1,$a2
    sw	$v1,0($t2)
    sll	$t3,$t3,0x2
    # Line 1327
    lbu	$v1,12($t0)
    # Line 1326
    addu	$t3,$t3,$t9
    sw	$t3,4($t2)
    sll	$v0,$v0,0x4
    # Line 1327
    lbu	$a5,13($t0)
    # Line 1325
    addu	$t1,$t8,$s1
    # Line 1326
    sll	$at,$at,0x4
    # Line 1327
    sw	$v1,0($a7)
    # Line 1326
    addu	$v0,$t1,$v0
    # Line 1327
    sw	$a5,4($a7)
    # Line 1326
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    sw	$v0,8($t2)
    # Line 1325
    addu	$t1,$t1,$s1
    # Line 1327
    lbu	$t3,14($t0)
    # Line 1326
    addu	$at,$t1,$at
    # Line 1327
    sw	$t3,8($a7)
    # Line 1326
    sll	$at,$at,0x2
    # Line 1325
    addiu	$t0,$t0,4
    # Line 1326
    addu	$at,$at,$a4
    sw	$at,12($t2)
    # Line 1325
    addiu	$a7,$a7,16
    addiu	$t2,$t2,16
    # Line 1327
    lbu	$t8,11($t0)
    # Line 1325
    addu	$t1,$t1,$s1
    bne	$t0,$ra,.L0da73ac0
    # Line 1327
    sw	$t8,-4($a7)
.L0da73b90:
    # Line 1331
    ld	$a0,536($sp)
    ld	$v1,776($sp)
    # Line 1347
    ld	$at,640($sp)
    # Line 1329
    sw	$a3,-13576($gp)
    # Line 1331
    beqz	$a0,.L0da73bb0
    # Line 1330
    addu	$a3,$v1,$a3
    # Line 1331
    lw	$a2,-13568($gp)
    beqz	$a2,.L0da74b14
.L0da73bb0:
    # Line 1338
    ld	$t2,640($sp)
    addiu	$t3,$t2,-2
    mult	$t3,$s1
    # Line 1345
    ld	$a5,472($sp)
    # Line 1335
    addiu	$t1,$a3,-1
    sw	$t1,-13584($gp)
    # Line 1340
    addiu	$t2,$t2,-3
    # Line 1339
    sw	$zero,8232($s2)
    # Line 1338
    mflo	$t0
    nop
    nop
    # Line 1340
    mult	$t2,$s1
    # Line 1338
    sd	$t3,760($sp)
    # Line 1340
    sd	$t2,784($sp)
    # Line 1338
    lw	$t2,20($sp)
    sll	$t0,$t0,0x2
    sd	$t0,552($sp)
    addu	$t3,$t0,$t2
    sd	$t3,688($sp)
    # Line 1344
    addu	$t0,$t0,$s0
    sd	$t0,664($sp)
    # Line 1340
    mflo	$t1
    # Line 1338
    sw	$t3,8152($s2)
    # Line 1340
    sll	$t1,$t1,0x2
    addu	$t2,$t1,$t2
    sd	$t2,608($sp)
    # Line 1342
    addu	$t1,$t1,$s0
    sd	$t1,584($sp)
    # Line 1340
    sw	$t2,8156($s2)
    # Line 1341
    lbu	$a4,0($a1)
    # Line 1342
    sw	$t1,8160($s2)
    # Line 1343
    lbu	$a6,28($a1)
    # Line 1344
    sw	$t0,8164($s2)
    # Line 1345
    lbu	$a7,2($a1)
    sw	$a7,8244($s2)
    # Line 1343
    sw	$a6,8240($s2)
    # Line 1348
    li	$a3,4
    # Line 1345
    beqz	$a5,.L0da73c74
    # Line 1341
    sw	$a4,8236($s2)
    # Line 1347
    addiu	$at,$at,-1
    mult	$s1,$at
    lw	$t9,20($sp)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    sw	$t9,8168($s2)
    # Line 1348
    lbu	$t8,11($a1)
    li	$a3,5
    sw	$t8,8248($s2)
.L0da73c74:
    ld	$v0,768($sp)
    blez	$v0,.L0da73df0
    move	$t1,$zero
    sll	$t2,$a3,0x2
    ld	$ra,768($sp)
    move	$t0,$a1
    addu	$t2,$t2,$s2
    move	$t8,$ra
    andi	$t3,$ra,0x3
    addu	$ra,$ra,$a1
    addiu	$a7,$t2,8192
    beqz	$t3,.L0da73cf0
    addiu	$t2,$t2,8112
.L0da73ca8:
    move	$v0,$zero
    movn	$v0,$s4,$s8
    # Line 1351
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x4
    addu	$at,$t1,$at
    sll	$at,$at,0x2
    # Line 1350
    addiu	$t0,$t0,1
    # Line 1351
    addu	$at,$s2,$at
    addiu	$t3,$t3,-1
    addiu	$at,$at,5376
    sw	$at,40($t2)
    # Line 1350
    addiu	$t2,$t2,4
    addiu	$a7,$a7,4
    # Line 1352
    lbu	$t9,23($t0)
    # Line 1350
    addu	$t1,$t1,$s1
    bnez	$t3,.L0da73ca8
    # Line 1352
    sw	$t9,36($a7)
.L0da73cf0:
    sra	$v1,$t8,0x2
    beqz	$v1,.L0da73df0
    li	$a2,5376
    li	$a0,5376
    li	$a4,5376
    li	$t9,5376
    addu	$t9,$s2,$t9
    addu	$a4,$s2,$a4
    addu	$a0,$s2,$a0
    addu	$a2,$s2,$a2
    nop
    nop
.L0da73d20:
    move	$at,$zero
    movn	$at,$s4,$s8
    move	$a6,$zero
    movn	$a6,$s4,$s8
    move	$a5,$zero
    movn	$a5,$s4,$s8
    move	$v1,$zero
    movn	$v1,$s4,$s8
    # Line 1350
    addu	$t8,$t1,$s1
    # Line 1351
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v1,$a5,0x3
    addu	$v1,$v1,$a5
    sll	$a5,$a6,0x3
    sll	$t3,$at,0x3
    addu	$a5,$a5,$a6
    addu	$t3,$t3,$at
    sll	$a5,$a5,0x4
    sll	$t3,$t3,0x4
    addu	$a5,$t1,$a5
    addu	$t3,$t8,$t3
    sll	$a5,$a5,0x2
    sll	$t3,$t3,0x2
    addu	$a5,$a5,$t9
    sw	$a5,40($t2)
    addu	$t3,$t3,$a4
    # Line 1352
    lbu	$at,24($t0)
    # Line 1351
    sll	$v1,$v1,0x4
    sw	$t3,44($t2)
    # Line 1350
    addu	$t1,$t8,$s1
    # Line 1352
    sw	$at,40($a7)
    # Line 1351
    addu	$v1,$t1,$v1
    sll	$v1,$v1,0x2
    # Line 1352
    lbu	$at,25($t0)
    # Line 1351
    addu	$v1,$v1,$a0
    sw	$v1,48($t2)
    sll	$v0,$v0,0x4
    # Line 1352
    lbu	$t3,26($t0)
    # Line 1350
    addu	$t1,$t1,$s1
    # Line 1352
    sw	$t3,48($a7)
    # Line 1351
    addu	$v0,$t1,$v0
    # Line 1352
    sw	$at,44($a7)
    # Line 1351
    sll	$v0,$v0,0x2
    # Line 1350
    addiu	$t0,$t0,4
    # Line 1351
    addu	$v0,$v0,$a2
    sw	$v0,52($t2)
    # Line 1350
    addiu	$a7,$a7,16
    addiu	$t2,$t2,16
    # Line 1352
    lbu	$t8,23($t0)
    # Line 1350
    addu	$t1,$t1,$s1
    bne	$t0,$ra,.L0da73d20
    # Line 1352
    sw	$t8,36($a7)
.L0da73df0:
    # Line 1356
    ld	$a2,480($sp)
    ld	$a0,768($sp)
    # Line 1389
    ld	$t9,776($sp)
    # Line 1354
    sw	$a3,-13572($gp)
    # Line 1356
    beqz	$a2,.L0da73e10
    # Line 1355
    addu	$a3,$a0,$a3
    # Line 1356
    lw	$a4,-13564($gp)
    beqz	$a4,.L0da74b30
.L0da73e10:
    # Line 1363
    ld	$a5,464($sp)
    # Line 1360
    addiu	$a6,$a3,-1
    # Line 1363
    beqz	$a5,.L0da74c78
    # Line 1360
    sw	$a6,-13580($gp)
    # Line 1364
    beqz	$s8,.L0da738f8
    # Line 1264
    ld	$v0,624($sp)
    # Line 1364
    ld	$t0,760($sp)
    li	$a7,2
    slt	$a7,$a7,$t0
    beqz	$a7,.L0da73f50
    sd	$a7,576($sp)
    lw	$t8,20($sp)
    ld	$s3,704($sp)
    sd	$s8,80($sp)
    ld	$s8,696($sp)
    li	$t1,1
    sd	$t1,808($sp)
    sd	$s0,104($sp)
    lw	$t3,16($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    ld	$t2,680($sp)
    li	$s0,2
    addu	$t9,$s4,$t3
    sd	$t9,824($sp)
    addu	$s4,$s4,$t8
    addu	$t2,$t2,$t3
    sd	$t2,792($sp)
.L0da73e80:
    # Line 1369
    addu	$a7,$s0,$s0
    sd	$a7,816($sp)
    addiu	$a7,$a7,-1
    mult	$s1,$a7
    move	$a3,$s8
    move	$a2,$s3
    lw	$a5,32($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a4,824($sp)
    move	$a0,$s1
    sll	$a6,$a6,0x2
    ld	$a1,792($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1376
    ld	$a7,816($sp)
    mult	$a7,$s1
    move	$a0,$s1
    move	$a2,$s3
    lw	$a5,32($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a1,824($sp)
    move	$a4,$s4
    sll	$a6,$a6,0x2
    ld	$a3,792($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1367
    ld	$t2,824($sp)
    ld	$t3,792($sp)
    ld	$t0,808($sp)
    addu	$s3,$s3,$s6
    addu	$s8,$s8,$s6
    ld	$t1,784($sp)
    addu	$t3,$t3,$s6
    sd	$t3,792($sp)
    addiu	$t0,$t0,1
    addu	$s4,$s4,$s6
    addiu	$s0,$s0,1
    sd	$t0,808($sp)
    addu	$t2,$t2,$s6
    bne	$t0,$t1,.L0da73e80
    sd	$t2,824($sp)
    ld	$s8,80($sp)
    # Line 1389
    ld	$t8,776($sp)
    lw	$s3,32($sp)
    ld	$s4,944($sp)
    ld	$s0,104($sp)
    bnez	$t8,.L0da73f58
    ld	$ra,496($sp)
    b	.L0da73f64
    # Line 1390
    ld	$at,536($sp)
.L0da73f50:
    # Line 1389
    beqz	$t9,.L0da73f60
    ld	$ra,496($sp)
.L0da73f58:
    beqz	$ra,.L0da74b8c
    ld	$a3,568($sp)
.L0da73f60:
    # Line 1390
    ld	$at,536($sp)
.L0da73f64:
    beqz	$at,.L0da73f80
    # Line 1392
    ld	$a3,672($sp)
    # Line 1390
    ld	$v0,776($sp)
    # Line 1391
    move	$a3,$s0
    # Line 1390
    beqz	$v0,.L0da74bd4
    lw	$t9,-13568($gp)
.L0da73f7c:
    # Line 1392
    ld	$a3,672($sp)
.L0da73f80:
    # Line 1393
    ld	$a4,704($sp)
.L0da73f84:
    ld	$a2,696($sp)
    lb	$a7,5168($s2)
    lb	$a6,5173($s2)
    lw	$t0,16($sp)
    ld	$a1,680($sp)
    move	$t9,$s5
    lw	$v1,-13588($gp)
    addu	$a5,$a1,$s3
    addu	$a1,$a1,$t0
    sd	$a1,112($sp)
    lb	$v1,5($v1)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    sw	$v1,4($sp)
    # Line 1402
    ld	$a0,776($sp)
    beqz	$a0,.L0da73fd0
    ld	$a1,496($sp)
    beqz	$a1,.L0da74b94
    ld	$a3,560($sp)
.L0da73fd0:
    # Line 1403
    ld	$a2,528($sp)
    beqz	$a2,.L0da73fe4
    ld	$a3,776($sp)
    beqz	$a3,.L0da74bf0
    lw	$ra,-13568($gp)
.L0da73fe4:
    # Line 1405
    ld	$a3,704($sp)
    sd	$s0,104($sp)
.L0da73fec:
    # Line 1406
    ld	$a4,672($sp)
    ld	$a2,696($sp)
    ld	$a1,104($sp)
    lb	$a7,5168($s2)
    lb	$a6,5174($s2)
    lw	$t0,-13588($gp)
    move	$t9,$s5
    lw	$s0,40($sp)
    move	$a0,$s1
    lb	$t0,6($t0)
    move	$a5,$s0
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    ld	$t1,768($sp)
    beqz	$t1,.L0da74a0c
    # Line 1420
    lw	$t3,16($sp)
    ld	$t2,552($sp)
    ld	$a3,600($sp)
    addu	$t2,$t2,$t3
    sd	$t2,520($sp)
.L0da7403c:
    # Line 1424
    ld	$a4,632($sp)
    addiu	$a4,$a4,-1
    mult	$a4,$s1
    ld	$a2,640($sp)
    lb	$a7,5169($s2)
    addiu	$a2,$a2,-1
    lw	$t1,-13588($gp)
    mflo	$a5
    nop
    nop
    mult	$a2,$s1
    lb	$a6,5179($s2)
    lb	$t1,11($t1)
    ld	$a4,664($sp)
    lw	$t0,20($sp)
    ld	$a2,688($sp)
    sll	$a5,$a5,0x2
    sd	$a5,504($sp)
    mflo	$a1
    sll	$a1,$a1,0x2
    sd	$a1,512($sp)
    move	$t9,$s5
    addu	$a1,$a1,$t0
    lw	$t0,36($sp)
    move	$a0,$s1
    sd	$a1,432($sp)
    sw	$t1,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    ld	$a5,768($sp)
    beqz	$a5,.L0da74a38
    # Line 1434
    ld	$a0,472($sp)
    # Line 1433
    ld	$a3,592($sp)
.L0da740c0:
    # Line 1437
    ld	$t1,632($sp)
.L0da740c4:
    addiu	$t1,$t1,-2
    ld	$a4,608($sp)
    mult	$s1,$t1
    ld	$a2,688($sp)
    ld	$a1,520($sp)
    lb	$a7,5169($s2)
    lw	$t0,-13588($gp)
    lb	$a6,5172($s2)
    move	$t9,$s5
    lb	$t0,4($t0)
    mflo	$a5
    move	$a0,$s1
    sw	$t0,4($sp)
    sll	$a5,$a5,0x2
    sd	$a5,440($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s3
    lw	$a7,-13588($gp)
    lw	$a6,36($sp)
    lbu	$a7,0($a7)
    ld	$a5,680($sp)
    li	$s3,32
    ld	$t1,112($sp)
    bne	$s3,$a7,.L0da742e0
    addu	$a5,$a5,$a6
    # Line 1451
    ld	$a4,672($sp)
    lbu	$t2,5169($s2)
    move	$a3,$t1
    li	$t1,1
    ld	$a2,704($sp)
    li	$a7,1
    xor	$t1,$s8,$t1
    ld	$a1,696($sp)
    move	$t9,$s5
    movz	$a7,$t2,$t1
    lb	$a6,5168($s2)
    move	$t0,$s3
    dsll32	$a7,$a7,0x18
    sw	$t0,4($sp)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$t2,576($sp)
    lw	$t9,16($sp)
    lw	$t8,20($sp)
    beqz	$t2,.L0da742cc
    ld	$ra,104($sp)
    sd	$s8,80($sp)
    ld	$s8,696($sp)
    ld	$s3,704($sp)
    ld	$t3,640($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    addiu	$t3,$t3,-4
    sd	$t3,720($sp)
    addu	$t9,$s4,$t9
    sd	$t9,824($sp)
    ld	$t9,680($sp)
    addu	$s4,$s4,$t8
    li	$t8,1
    sd	$t8,808($sp)
    li	$s0,2
    addu	$t9,$t9,$ra
    sd	$t9,832($sp)
    nop
    nop
    nop
.L0da741d0:
    # Line 1461
    # lw $t9, -32672($gp) # &sub_0da70000
    move	$a0,$s3
    addiu	$t9,$t9,10160
    move	$a1,$s4
    move	$a2,$s8
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s2,5128
    # Line 1465
    addu	$a4,$s0,$s0
    sd	$a4,816($sp)
    addiu	$a4,$a4,-1
    mult	$s1,$a4
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a1,$s2,5128
    lw	$a2,36($sp)
    addiu	$t9,$t9,10176
    mflo	$a3
    move	$a0,$s1
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    # Line 1468
    ld	$t8,816($sp)
    ld	$t3,720($sp)
    mult	$t8,$s1
    li	$a6,1
    ld	$t0,808($sp)
    move	$a2,$s4
    move	$a1,$s3
    lbu	$t2,5169($s2)
    li	$a7,1
    xor	$t0,$t0,$t3
    move	$a0,$s1
    movz	$a7,$t2,$t0
    ld	$a4,832($sp)
    move	$t9,$s5
    dsll32	$a7,$a7,0x18
    lw	$a5,36($sp)
    dsra32	$a7,$a7,0x18
    mflo	$t0
    ld	$a3,824($sp)
    li	$t1,32
    sll	$t0,$t0,0x2
    sw	$t1,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    # Line 1460
    ld	$at,824($sp)
    ld	$v0,832($sp)
    ld	$t9,808($sp)
    addu	$s3,$s3,$s6
    addu	$s8,$s8,$s6
    ld	$ra,784($sp)
    addu	$v0,$v0,$s6
    sd	$v0,832($sp)
    addiu	$t9,$t9,1
    addu	$s4,$s4,$s6
    addiu	$s0,$s0,1
    sd	$t9,808($sp)
    addu	$at,$at,$s6
    bne	$t9,$ra,.L0da741d0
    sd	$at,824($sp)
    ld	$s8,80($sp)
    lw	$s0,40($sp)
    ld	$s4,944($sp)
    li	$s3,32
.L0da742cc:
    li	$v1,1
    bne	$s8,$v1,.L0da74414
    # Line 1506
    ld	$t1,424($sp)
.L0da742d8:
    b	.L0da74414
    lb	$t1,5170($s2)
.L0da742e0:
    # Line 1480
    ld	$a1,696($sp)
    move	$t9,$s7
    move	$a0,$s1
    ld	$a2,704($sp)
    move	$a3,$t1
    bal __glim_SubdivPatchSGIX
    ld	$a4,672($sp)
    ld	$a0,576($sp)
    ld	$a1,680($sp)
    lw	$t8,20($sp)
    beqz	$a0,.L0da74408
    ld	$a2,104($sp)
    lw	$t9,16($sp)
    ld	$s3,704($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    li	$s0,2
    addu	$a1,$a1,$a2
    sd	$a1,832($sp)
    addu	$t9,$s4,$t9
    sd	$t9,824($sp)
    addu	$s4,$s4,$t8
    nop
    nop
.L0da74340:
    # Line 1487
    # lw $t9, -32672($gp) # &sub_0da70000
    lw	$a2,16($sp)
    addiu	$t9,$t9,9424
    move	$a0,$s1
    move	$a1,$s0
    lw	$a3,20($sp)
    ld	$a4,104($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s2,5128
    # Line 1492
    addu	$a5,$s0,$s0
    sd	$a5,816($sp)
    addiu	$a5,$a5,-1
    mult	$s1,$a5
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a2,$s2,5128
    li	$a1,6
    lw	$a3,36($sp)
    addiu	$t9,$t9,9520
    mflo	$a4
    move	$a0,$s1
    sll	$a4,$a4,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$a4
    # Line 1496
    ld	$a7,816($sp)
    mult	$a7,$s1
    move	$a0,$s1
    move	$a1,$s3
    lw	$a5,36($sp)
    move	$t9,$s7
    mflo	$a6
    move	$a2,$s4
    ld	$a3,824($sp)
    sll	$a6,$a6,0x2
    ld	$a4,832($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1486
    ld	$t2,832($sp)
    ld	$t0,760($sp)
    addu	$s3,$s3,$s6
    addiu	$s0,$s0,1
    ld	$t1,824($sp)
    addu	$s4,$s4,$s6
    addu	$t2,$t2,$s6
    sd	$t2,832($sp)
    addu	$t1,$t1,$s6
    bne	$t0,$s0,.L0da74340
    sd	$t1,824($sp)
    lw	$s0,40($sp)
    ld	$s4,944($sp)
    li	$s3,32
.L0da74408:
    li	$t3,1
    beq	$s8,$t3,.L0da742d8
    # Line 1506
    ld	$t1,424($sp)
.L0da74414:
    ld	$a1,696($sp)
    ld	$a2,672($sp)
    ld	$a3,104($sp)
    ld	$a4,704($sp)
    lw	$t8,-13588($gp)
    lb	$a6,5168($s2)
    dsll32	$a7,$t1,0x18
    move	$t9,$s5
    move	$a0,$s1
    dsra32	$a7,$a7,0x18
    lb	$t8,1($t8)
    addu	$a5,$s6,$s0
    bal __glim_SubdivPatchSGIX
    sw	$t8,4($sp)
    # Line 1514
    ld	$a4,432($sp)
    ld	$a3,584($sp)
    ld	$a2,664($sp)
    ld	$a1,688($sp)
    lb	$a6,5169($s2)
    lbu	$t2,5171($s2)
    ld	$a7,136($sp)
    li	$t1,1
    lw	$t0,-13588($gp)
    xor	$t1,$s8,$t1
    move	$t9,$s5
    ld	$a5,440($sp)
    movz	$a7,$t2,$t1
    move	$a0,$s1
    lb	$t0,2($t0)
    dsll32	$a7,$a7,0x18
    addu	$a5,$a5,$s0
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$a6,576($sp)
    beqz	$a6,.L0da745b4
    # Line 1540
    ld	$t1,632($sp)
    sd	$s8,80($sp)
    # Line 1514
    ld	$s8,696($sp)
    ld	$s3,704($sp)
    li	$a7,1
    sd	$a7,808($sp)
    ld	$t2,672($sp)
    ld	$t1,104($sp)
    ld	$t0,680($sp)
    lw	$t8,20($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    li	$s0,2
    sd	$t2,800($sp)
    addu	$s4,$s4,$t8
    addu	$t0,$t0,$t1
    sd	$t0,832($sp)
    nop
    nop
.L0da744f0:
    # Line 1525
    addu	$a7,$s0,$s0
    sd	$a7,816($sp)
    addiu	$a7,$a7,-2
    mult	$s1,$a7
    move	$a3,$s8
    move	$a2,$s3
    lw	$a5,40($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a4,832($sp)
    move	$a0,$s1
    sll	$a6,$a6,0x2
    ld	$a1,800($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1532
    ld	$a7,816($sp)
    addiu	$a7,$a7,-1
    mult	$s1,$a7
    move	$a0,$s1
    move	$a2,$s3
    lw	$a5,40($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a1,832($sp)
    move	$a3,$s4
    sll	$a6,$a6,0x2
    ld	$a4,800($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1523
    ld	$t2,800($sp)
    ld	$t3,832($sp)
    ld	$t0,808($sp)
    addu	$s3,$s3,$s6
    addu	$s8,$s8,$s6
    ld	$t1,784($sp)
    addu	$t3,$t3,$s6
    sd	$t3,832($sp)
    addiu	$t0,$t0,1
    addu	$s4,$s4,$s6
    addu	$t2,$t2,$s6
    sd	$t2,800($sp)
    addiu	$s0,$s0,1
    bne	$t0,$t1,.L0da744f0
    sd	$t0,808($sp)
    ld	$s8,80($sp)
    lw	$s0,40($sp)
    ld	$s4,944($sp)
    li	$s3,32
    # Line 1540
    ld	$t1,632($sp)
.L0da745b4:
    # Line 1523
    lw	$a6,-13588($gp)
    # Line 1540
    addiu	$t1,$t1,-3
    li	$a7,1
    # Line 1523
    lbu	$a6,28($a6)
    # Line 1540
    mult	$s1,$t1
    xor	$a7,$s8,$a7
    lbu	$t1,5170($s2)
    dsll32	$t0,$a6,0x18
    xor	$a6,$s3,$a6
    ld	$a4,664($sp)
    dsra32	$t0,$t0,0x18
    sltiu	$a6,$a6,1
    ld	$a3,608($sp)
    movz	$a6,$t1,$a7
    ld	$a2,688($sp)
    move	$t9,$s5
    dsll32	$a6,$a6,0x18
    ld	$a1,584($sp)
    dsra32	$a6,$a6,0x18
    mflo	$a5
    move	$a0,$s1
    lb	$a7,5169($s2)
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s0,$a5
    ld	$a5,104($sp)
    ld	$a4,512($sp)
    li	$a6,1
    addu	$a4,$a4,$a5
    ld	$a5,504($sp)
    ld	$t1,432($sp)
    beq	$s8,$a6,.L0da74b58
    addu	$a5,$a5,$s0
    # Line 1562
    ld	$a1,664($sp)
    ld	$a3,688($sp)
    move	$t9,$s7
    move	$a0,$s1
    sd	$s4,944($sp)
    move	$a2,$t1
    bal __glim_SubdivPatchSGIX
    sd	$s8,80($sp)
    ld	$s8,80($sp)
    ld	$s4,944($sp)
    li	$s3,32
.L0da74668:
    lbu	$t2,5168($s2)
    li	$a6,3
    lw	$s0,36($sp)
    beq	$a6,$t2,.L0da74964
    lw	$t3,-13584($gp)
    # Line 1579
    # lw $t9, -32672($gp) # &sub_0da70000
.L0da74680:
    move	$a0,$t2
    move	$a1,$s1
    addiu	$t9,$t9,10320
    move	$a2,$t3
    addu	$a4,$s6,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s2,8112
    lbu	$a0,5169($s2)
    li	$a3,3
    ld	$t2,440($sp)
    beq	$a3,$a0,.L0da749b8
    lw	$t3,-13580($gp)
    # Line 1591
    # lw $t9, -32672($gp) # &sub_0da70000
.L0da746b4:
    addiu	$t9,$t9,10320
    move	$a1,$s1
    move	$a2,$t3
    ld	$a3,456($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a4,$t2,$s0
    ld	$ra,776($sp)
    blez	$ra,.L0da747c0
    # Line 1598
    ld	$a6,768($sp)
    sd	$s4,944($sp)
    # Line 1591
    addiu	$s4,$s2,5168
    addiu	$s3,$s2,5200
    ld	$a0,544($sp)
    b	.L0da747a0
    move	$s0,$zero
.L0da746f0:
    # Line 1599
    lbu	$t1,12($s3)
    sd	$a0,96($sp)
.L0da746f8:
    lw	$v0,-13584($gp)
    lw	$a3,-13576($gp)
    addiu	$v0,$v0,1
    addu	$a3,$a3,$s0
    mtc1	$v0,$f3
    addiu	$a4,$a3,1
    mtc1	$a4,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$a5,$f2
    mult	$a5,$v0
    lw	$at,-13588($gp)
    lb	$a6,5168($s2)
    dsll32	$a7,$t1,0x18
    lw	$a1,8112($s2)
    addu	$at,$s0,$at
    sll	$a3,$a3,0x2
    lb	$at,12($at)
    addu	$a3,$s2,$a3
    mflo	$a5
    dsra32	$a7,$a7,0x18
    lw	$a2,8112($a3)
    subu	$a4,$a4,$a5
    lw	$a3,8108($a3)
    sll	$a4,$a4,0x2
    move	$t9,$s5
    ld	$a5,96($sp)
    addu	$a4,$s2,$a4
    teq	$v0,$zero,0x7
    lw	$a4,8112($a4)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    sw	$at,4($sp)
    # Line 1598
    ld	$a4,776($sp)
    ld	$a0,96($sp)
    addiu	$s0,$s0,1
    addiu	$s3,$s3,1
    addiu	$s4,$s4,1
    beq	$a4,$s0,.L0da747b8
    addu	$a0,$a0,$s6
.L0da747a0:
    # Line 1591
    li	$a5,1
    bne	$s8,$a5,.L0da746f0
    nop
    # Line 1599
    lbu	$t1,12($s4)
    b	.L0da746f8
    sd	$a0,96($sp)
.L0da747b8:
    ld	$s4,944($sp)
    # Line 1598
    ld	$a6,768($sp)
.L0da747c0:
    blez	$a6,.L0da738f8
    # Line 1264
    ld	$v0,624($sp)
    sd	$s4,944($sp)
    # Line 1598
    addiu	$s4,$s2,5168
    addiu	$s3,$s2,5200
    ld	$a0,616($sp)
    b	.L0da74890
    move	$s0,$zero
.L0da747e0:
    # Line 1610
    lbu	$t1,24($s3)
    sd	$a0,88($sp)
.L0da747e8:
    lw	$t2,-13580($gp)
    lw	$a3,-13572($gp)
    addiu	$t2,$t2,1
    addu	$a3,$a3,$s0
    mtc1	$t2,$f4
    addiu	$a4,$a3,1
    mtc1	$a4,$f3
    cvt.d.w	$f4,$f4
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a5,$f3
    mult	$a5,$t2
    lw	$t0,-13588($gp)
    lb	$a6,5169($s2)
    dsll32	$a7,$t1,0x18
    lw	$a1,8152($s2)
    addu	$t0,$s0,$t0
    sll	$a3,$a3,0x2
    lb	$t0,24($t0)
    addu	$a3,$s2,$a3
    mflo	$a5
    dsra32	$a7,$a7,0x18
    lw	$a2,8152($a3)
    subu	$a4,$a4,$a5
    lw	$a3,8148($a3)
    sll	$a4,$a4,0x2
    move	$t9,$s5
    ld	$a5,88($sp)
    addu	$a4,$s2,$a4
    teq	$t2,$zero,0x7
    lw	$a4,8152($a4)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    # Line 1609
    ld	$a4,768($sp)
    ld	$a0,88($sp)
    addiu	$s0,$s0,1
    addiu	$s3,$s3,1
    addiu	$s4,$s4,1
    beq	$a4,$s0,.L0da738f0
    addu	$a0,$a0,$s6
.L0da74890:
    # Line 1598
    li	$a5,1
    bne	$s8,$a5,.L0da747e0
    nop
    # Line 1610
    lbu	$t1,24($s4)
    b	.L0da747e8
    sd	$a0,88($sp)
.L0da748a8:
    # Line 1268
    sw	$s2,16($sp)
    # Line 1269
    sw	$s2,32($sp)
    ld	$a7,384($sp)
    ld	$s0,392($sp)
    # Line 1268
    sw	$s0,24($sp)
    # Line 1269
    sw	$s0,40($sp)
    # Line 1273
    ld	$a6,400($sp)
    la	$ra,sub_0daf0000
    andi	$t3,$s1,0x1
    # Line 1269
    sw	$a7,36($sp)
    # Line 1268
    sw	$a7,20($sp)
    # Line 1273
    beqz	$a6,.L0da748ec
    addiu	$ra,$ra,-10976
    # Line 1274
    ld	$t1,160($sp)
    # Line 1273
    ld	$t0,496($sp)
    beqz	$t0,.L0da74904
    nop
.L0da748ec:
    # Line 1275
    ld	$t1,312($sp)
    beqz	$t1,.L0da74900
    ld	$t2,400($sp)
    beqz	$t2,.L0da74904
    # Line 1276
    ld	$t1,152($sp)
.L0da74900:
    # Line 1278
    ld	$t1,296($sp)
.L0da74904:
    # Line 1275
    blez	$s1,.L0da7495c
    # Line 1309
    lw	$ra,1224($ra)
    # Line 1275
    addu	$t0,$s6,$t1
    sra	$t9,$s1,0x1
    move	$a7,$t1
    beqz	$t3,.L0da74934
    ld	$a4,360($sp)
    # Line 1280
    ld	$t8,360($sp)
    # Line 1281
    lwc1	$f4,0($t1)
    # Line 1280
    addiu	$a7,$t1,4
    addiu	$a4,$t8,4
    # Line 1281
    swc1	$f4,288($t8)
.L0da74934:
    beqz	$t9,.L0da7495c
    nop
    nop
.L0da74940:
    lwc1	$f6,0($a7)
    # Line 1280
    addiu	$a7,$a7,8
    # Line 1281
    swc1	$f6,288($a4)
    lwc1	$f5,-4($a7)
    # Line 1280
    addiu	$a4,$a4,8
    bne	$a7,$t0,.L0da74940
    # Line 1281
    swc1	$f5,284($a4)
.L0da7495c:
    b	.L0da739a0
    sd	$ra,640($sp)
.L0da74964:
    # Line 1562
    blez	$t3,.L0da74680
    # Line 1579
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 1562
    addiu	$a4,$s2,8192
    addiu	$a7,$s2,8112
    move	$ra,$t3
    move	$t0,$a7
    andi	$t8,$t3,0x1
    sll	$t1,$t3,0x2
    sra	$t9,$ra,0x1
    addu	$t1,$t1,$s2
    beqz	$t8,.L0da749a8
    addiu	$t1,$t1,8192
    lw	$t8,8192($s2)
    # Line 1574
    addiu	$a7,$a7,4
    # Line 1562
    beq	$t8,$s3,.L0da757a8
    # Line 1574
    addiu	$a4,$a4,4
.L0da749a4:
    lw	$s0,36($sp)
.L0da749a8:
    bnezl	$t9,.L0da74a6c
    # Line 1562
    lw	$a2,0($a4)
.L0da749b0:
    b	.L0da74680
    # Line 1579
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
.L0da749b8:
    blez	$t3,.L0da746b4
    # Line 1591
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 1579
    sll	$t1,$t3,0x2
    addiu	$a4,$s2,8192
    addu	$t1,$t1,$s2
    addiu	$a7,$s2,8112
    move	$ra,$t3
    andi	$t8,$t3,0x1
    sra	$t9,$ra,0x1
    move	$t0,$a7
    beqz	$t8,.L0da749fc
    addiu	$t1,$t1,8192
    lw	$t8,8232($s2)
    # Line 1586
    addiu	$a7,$a7,4
    # Line 1579
    beq	$t8,$s3,.L0da757b8
    # Line 1586
    addiu	$a4,$a4,4
.L0da749f8:
    lw	$s0,36($sp)
.L0da749fc:
    bnezl	$t9,.L0da74ab4
    # Line 1579
    lw	$t9,40($a4)
.L0da74a04:
    b	.L0da746b4
    # Line 1591
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
.L0da74a0c:
    # Line 1421
    ld	$ra,480($sp)
    # Line 1423
    lw	$v1,16($sp)
    ld	$v0,552($sp)
    # Line 1421
    beqz	$ra,.L0da74a28
    lw	$at,-13564($gp)
    beqz	$at,.L0da74d74
    # Line 1422
    lw	$a4,16($sp)
.L0da74a28:
    # Line 1423
    addu	$v0,$v0,$v1
    ld	$a3,608($sp)
    b	.L0da7403c
    sd	$v0,520($sp)
.L0da74a38:
    # Line 1435
    ld	$a3,432($sp)
    # Line 1434
    beqz	$a0,.L0da74a4c
    lw	$a1,-13564($gp)
    beqz	$a1,.L0da74d84
    nop
.L0da74a4c:
    b	.L0da740c0
    # Line 1436
    ld	$a3,664($sp)
    nop
    nop
    nop
.L0da74a60:
    # Line 1574
    beq	$a4,$t1,.L0da749b0
    addiu	$a7,$a7,8
    # Line 1562
    lw	$a2,0($a4)
.L0da74a6c:
    # Line 1574
    addiu	$a4,$a4,8
    # Line 1562
    beq	$a2,$s3,.L0da74a90
    lw	$a3,-4($a4)
.L0da74a78:
    bne	$a3,$s3,.L0da74a60
    nop
    # Line 1576
    addiu	$t0,$t0,4
    lw	$a5,4($a7)
    b	.L0da74a60
    sw	$a5,-4($t0)
.L0da74a90:
    addiu	$t0,$t0,4
    lw	$a6,0($a7)
    b	.L0da74a78
    sw	$a6,-4($t0)
.L0da74aa0:
    # Line 1579
    beq	$t8,$s3,.L0da74ad0
    nop
.L0da74aa8:
    # Line 1586
    beq	$a4,$t1,.L0da74a04
    addiu	$a7,$a7,8
    # Line 1579
    lw	$t9,40($a4)
.L0da74ab4:
    # Line 1586
    addiu	$a4,$a4,8
    # Line 1579
    bne	$t9,$s3,.L0da74aa0
    lw	$t8,36($a4)
    # Line 1588
    addiu	$t0,$t0,4
    lw	$ra,40($a7)
    b	.L0da74aa0
    sw	$ra,36($t0)
.L0da74ad0:
    addiu	$t0,$t0,4
    lw	$at,44($a7)
    b	.L0da74aa8
    sw	$at,36($t0)
.L0da74ae0:
    # Line 1287
    sw	$s2,16($sp)
    # Line 1288
    addiu	$v1,$s2,576
    sw	$v1,32($sp)
    # Line 1289
    ld	$v0,384($sp)
    # Line 1288
    ld	$a1,376($sp)
    ld	$a0,368($sp)
    # Line 1287
    ld	$s0,392($sp)
    sw	$s0,24($sp)
    # Line 1288
    sw	$a0,36($sp)
    sw	$a1,40($sp)
    # Line 1289
    sw	$v0,48($sp)
    b	.L0da73994
    # Line 1287
    sw	$v0,20($sp)
.L0da74b14:
    # Line 1332
    sll	$a4,$a3,0x2
    addu	$a4,$a4,$s2
    sw	$s0,8112($a4)
    # Line 1333
    lbu	$a2,6($a1)
    addiu	$a3,$a3,1
    b	.L0da73bb0
    sw	$a2,8192($a4)
.L0da74b30:
    # Line 1357
    ld	$t0,552($sp)
    lw	$a7,16($sp)
    sll	$a6,$a3,0x2
    addu	$a6,$a6,$s2
    addu	$a7,$a7,$t0
    sw	$a7,8152($a6)
    # Line 1358
    lbu	$a5,4($a1)
    addiu	$a3,$a3,1
    b	.L0da73e10
    sw	$a5,8232($a6)
.L0da74b58:
    # Line 1554
    ld	$a1,664($sp)
    ld	$a3,688($sp)
    lb	$a7,5178($s2)
    lw	$t0,-13588($gp)
    lb	$a6,5171($s2)
    move	$t9,$s5
    move	$a0,$s1
    lb	$t0,10($t0)
    move	$a2,$t1
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    b	.L0da74668
    nop
.L0da74b8c:
    # Line 1389
    b	.L0da73f84
    # Line 1393
    ld	$a4,704($sp)
.L0da74b94:
    # Line 1402
    b	.L0da73fec
    sd	$s0,104($sp)
.L0da74b9c:
    # Line 1292
    addiu	$t1,$s2,576
    sw	$t1,16($sp)
    # Line 1293
    addiu	$t3,$s2,1120
    sw	$t3,32($sp)
    # Line 1294
    ld	$t2,368($sp)
    # Line 1293
    ld	$t8,352($sp)
    sw	$t8,40($sp)
    # Line 1294
    sw	$t2,48($sp)
    # Line 1293
    ld	$s0,344($sp)
    sw	$s0,36($sp)
    # Line 1292
    sw	$t2,20($sp)
    ld	$s0,376($sp)
    # Line 1295
    b	.L0da73994
    # Line 1292
    sw	$s0,24($sp)
.L0da74bd4:
    # Line 1390
    bnez	$t9,.L0da73f7c
    nop
    # Line 1391
    b	.L0da73f84
    # Line 1393
    ld	$a4,704($sp)
    nop
    nop
    nop
.L0da74bf0:
    # Line 1403
    bnez	$ra,.L0da73fe4
    # Line 1404
    ld	$a3,112($sp)
    b	.L0da73fec
    sd	$s0,104($sp)
.L0da74c00:
    # Line 1297
    sw	$at,16($sp)
    # Line 1298
    addiu	$v1,$s2,1880
    sw	$v1,32($sp)
    # Line 1299
    ld	$v0,344($sp)
    # Line 1298
    ld	$a1,336($sp)
    ld	$a0,328($sp)
    # Line 1297
    ld	$s0,352($sp)
    sw	$s0,24($sp)
    # Line 1298
    sw	$a0,36($sp)
    sw	$a1,40($sp)
    # Line 1299
    sw	$v0,48($sp)
    # Line 1300
    b	.L0da73994
    # Line 1297
    sw	$v0,20($sp)
.L0da74c34:
    # Line 1302
    addiu	$a2,$s2,1880
    sw	$a2,16($sp)
    # Line 1303
    addiu	$a4,$s2,3072
    sw	$a4,32($sp)
    # Line 1304
    ld	$a3,328($sp)
    # Line 1303
    ld	$a6,264($sp)
    ld	$a5,256($sp)
    # Line 1302
    ld	$s0,336($sp)
    sw	$s0,24($sp)
    # Line 1303
    sw	$a5,36($sp)
    sw	$a6,40($sp)
    # Line 1304
    sw	$a3,48($sp)
    # Line 1305
    b	.L0da73994
    # Line 1302
    sw	$a3,20($sp)
.L0da74c6c:
    sd	$s8,144($sp)
    # Line 1264
    lw	$a7,52($sp)
    sd	$a7,632($sp)
.L0da74c78:
    # Line 1623
    ld	$s5,632($sp)
    addiu	$s5,$s5,-1
    mult	$s1,$s5
    la	$s7,sub_0da70000
    la	$s4,sub_0da70000
    mflo	$a5
    slt	$t0,$s1,$a5
    addiu	$s4,$s4,9424
    addiu	$s7,$s7,10160
    sw	$zero,-13560($gp)
    beqz	$t0,.L0da74d1c
    li	$s5,32
    la	$s4,sub_0da70000
    addiu	$a2,$s2,8272
    la	$s7,sub_0da70000
    addiu	$s4,$s4,9424
    subu	$a4,$a5,$s1
    lw	$a3,36($sp)
    addiu	$s7,$s7,10160
    move	$a7,$a4
    andi	$a6,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$s6
    addu	$a4,$s2,$a4
    beqz	$a6,.L0da74cf0
    addiu	$a4,$a4,8272
    # Line 1626
    lwc1	$f7,0($a3)
    # Line 1625
    addiu	$a3,$a3,4
    addiu	$a2,$s2,8276
    # Line 1626
    swc1	$f7,8272($s2)
.L0da74cf0:
    sra	$t8,$a7,0x1
    beqz	$t8,.L0da74d1c
    nop
    nop
.L0da74d00:
    lwc1	$f9,0($a3)
    swc1	$f9,0($a2)
    # Line 1625
    addiu	$a2,$a2,8
    # Line 1626
    lwc1	$f8,4($a3)
    # Line 1625
    addiu	$a3,$a3,8
    bne	$a2,$a4,.L0da74d00
    # Line 1626
    swc1	$f8,-4($a2)
.L0da74d1c:
    # Line 1625
    c.eq.s	$f24,$f20
    li	$s8,1
    movt	$s8,$zero,$fcc0
    beqz	$s8,.L0da758c0
    # Line 1638
    ld	$t0,216($sp)
    # Line 1625
    ld	$s3,464($sp)
    la	$t0,sub_0daf0000
    addiu	$t0,$t0,-10976
    sll	$s3,$s3,0x2
    addu	$t0,$s3,$t0
    lw	$t0,1224($t0)
    addiu	$t0,$t0,-2
    blez	$t0,.L0da74e70
    # Line 1634
    nop	# was lw $t9, -32668($gp) # &sub_0da80000
    # Line 1625
    move	$t1,$zero
    move	$s0,$zero
    ldc1	$f5,_lit8_3fe0000000000000
    addiu	$a7,$s2,9640
    addu	$a5,$s6,$s2
    lw	$t2,48($sp)
    b	.L0da75c20
    addiu	$a5,$a5,9640
.L0da74d74:
    # Line 1422
    ld	$a3,552($sp)
    addu	$a3,$a3,$a4
    b	.L0da7403c
    sd	$a3,520($sp)
.L0da74d84:
    # Line 1435
    b	.L0da740c4
    # Line 1437
    ld	$t1,632($sp)
    nop
.L0da74d90:
    # Line 1632
    lwc1	$f10,4($a2)
    add.s	$f10,$f10,$f4
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f5
    cvt.s.d	$f10,$f10
    swc1	$f10,0($a3)
.L0da74da8:
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
.L0da74db0:
    sra	$a6,$s1,0x1
    bnez	$a6,.L0da74e54
    nop
.L0da74dbc:
    # Line 1631
    addiu	$s0,$s0,1
    slt	$t3,$s0,$t0
    addu	$a5,$a5,$s6
    addu	$t1,$t1,$s1
    beqz	$t3,.L0da74e6c
    addu	$a7,$a7,$s6
.L0da74dd4:
    # Line 1625
    blez	$s1,.L0da74dbc
    andi	$a6,$s1,0x1
    sra	$a3,$s0,0x1
    addiu	$a3,$a3,1
    mult	$s1,$a3
    andi	$a4,$s0,0x1
    mflo	$a2
    move	$a3,$a7
    sll	$a2,$a2,0x2
    beqz	$a6,.L0da74db0
    addu	$a2,$t2,$a2
    bnez	$a4,.L0da74d90
    lwc1	$f4,0($a2)
    b	.L0da74da8
    # Line 1632
    swc1	$f4,0($a7)
.L0da74e10:
    lwc1	$f11,4($a2)
    add.s	$f11,$f11,$f4
    cvt.d.s	$f11,$f11
    mul.d	$f11,$f11,$f5
    cvt.s.d	$f11,$f11
    swc1	$f11,0($a3)
.L0da74e28:
    # Line 1625
    beqz	$a4,.L0da74e64
    lwc1	$f4,4($a2)
    # Line 1632
    lwc1	$f12,8($a2)
    add.s	$f12,$f12,$f4
    cvt.d.s	$f12,$f12
    mul.d	$f12,$f12,$f5
    cvt.s.d	$f12,$f12
    swc1	$f12,4($a3)
.L0da74e48:
    addiu	$a3,$a3,8
    beq	$a3,$a5,.L0da74dbc
    addiu	$a2,$a2,8
.L0da74e54:
    # Line 1625
    bnez	$a4,.L0da74e10
    lwc1	$f4,0($a2)
    b	.L0da74e28
    # Line 1632
    swc1	$f4,0($a3)
.L0da74e64:
    b	.L0da74e48
    swc1	$f4,4($a3)
.L0da74e6c:
    # Line 1634
    # lw $t9, -32668($gp) # &sub_0da80000
.L0da74e70:
    addiu	$t9,$t9,-29072
    ld	$a0,464($sp)
    bal __glim_SubdivPatchSGIX
    move	$a1,$zero
    ld	$ra,216($sp)
    beqz	$ra,.L0da7565c
    nop
    sd	$s3,920($sp)
    # Line 1638
    li	$a4,2
    ld	$a5,920($sp)
.L0da74e98:
    sd	$zero,656($sp)
    la	$v0,sub_0daf0000
    addiu	$a0,$s2,8152
    addu	$v1,$s6,$s2
    ld	$at,464($sp)
    sd	$a0,456($sp)
    addiu	$v1,$v1,10784
    addiu	$v0,$v0,-10976
    sd	$v1,304($sp)
    addu	$v1,$a5,$v0
    move	$s3,$at
    sd	$s8,64($sp)
    addiu	$s0,$at,-1
    subu	$at,$at,$a4
    addiu	$v1,$v1,1224
    sd	$v1,408($sp)
    sll	$at,$at,0x2
    sd	$v1,168($sp)
    addu	$at,$at,$v0
    addiu	$at,$at,1224
    b	.L0da75340
    sd	$at,320($sp)
.L0da74ef0:
    ld	$s0,936($sp)
    ld	$s3,928($sp)
.L0da74ef8:
    # Line 1641
    ld	$a1,776($sp)
    li	$s8,5232
    blez	$a1,.L0da75048
    addu	$s8,$s2,$s8
    lw	$t3,-13576($gp)
    ld	$t2,776($sp)
    move	$t1,$zero
    sll	$a4,$t3,0x2
    move	$t8,$t2
    andi	$a5,$t2,0x3
    addu	$t2,$t2,$t3
    li	$t3,5232
    addu	$a4,$a4,$s2
    sll	$t2,$t2,0x2
    addiu	$a4,$a4,8112
    addu	$t2,$t2,$s2
    beqz	$a5,.L0da74f78
    addiu	$t2,$t2,8112
.L0da74f40:
    move	$ra,$zero
    movn	$ra,$s0,$s3
    # Line 1672
    sll	$t9,$ra,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x4
    # Line 1671
    addiu	$a4,$a4,4
    # Line 1672
    addu	$t9,$t1,$t9
    addiu	$a5,$a5,-1
    sll	$t9,$t9,0x2
    # Line 1671
    addu	$t1,$t1,$s1
    # Line 1672
    addu	$t9,$s2,$t9
    addiu	$t9,$t9,5232
    bnez	$a5,.L0da74f40
    sw	$t9,-4($a4)
.L0da74f78:
    sra	$at,$t8,0x2
    beqz	$at,.L0da75048
    li	$ra,5232
    addu	$t3,$s2,$t3
    li	$t8,5232
    addu	$ra,$s2,$ra
    addu	$t8,$s2,$t8
    nop
    nop
    nop
.L0da74fa0:
    move	$a3,$zero
    movn	$a3,$s0,$s3
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    move	$a5,$zero
    sll	$a2,$a2,0x4
    movn	$a5,$s0,$s3
    addu	$a2,$t1,$a2
    sll	$a2,$a2,0x2
    move	$a3,$zero
    # Line 1671
    addiu	$a4,$a4,16
    movn	$a3,$s0,$s3
    addu	$at,$t1,$s1
    # Line 1672
    sll	$a1,$a3,0x3
    # Line 1671
    addu	$v0,$at,$s1
    # Line 1672
    addu	$a1,$a1,$a3
    # Line 1671
    addu	$a0,$v0,$s1
    # Line 1672
    sll	$a1,$a1,0x4
    # Line 1671
    addu	$t1,$a0,$s1
    # Line 1672
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    move	$a3,$zero
    addu	$a2,$a2,$s8
    movn	$a3,$s0,$s3
    addu	$a0,$a0,$t3
    sll	$a1,$a5,0x3
    sll	$v1,$a3,0x3
    addu	$a1,$a1,$a5
    addu	$v1,$v1,$a3
    sll	$a1,$a1,0x4
    sw	$a2,-16($a4)
    sll	$v1,$v1,0x4
    addu	$v0,$v0,$a1
    sw	$a0,-4($a4)
    addu	$at,$at,$v1
    sll	$v0,$v0,0x2
    sll	$at,$at,0x2
    addu	$v0,$v0,$t8
    sw	$v0,-8($a4)
    addu	$at,$at,$ra
    # Line 1671
    bne	$a4,$t2,.L0da74fa0
    # Line 1672
    sw	$at,-12($a4)
.L0da75048:
    # Line 1671
    ld	$a4,768($sp)
    ld	$t2,768($sp)
    move	$t1,$zero
    li	$s8,5376
    lw	$t3,-13572($gp)
    blez	$a4,.L0da75198
    addu	$s8,$s2,$s8
    sll	$a4,$t3,0x2
    move	$t8,$t2
    andi	$a5,$t2,0x3
    addu	$t2,$t2,$t3
    addu	$a4,$a4,$s2
    sll	$t2,$t2,0x2
    addiu	$a4,$a4,8112
    addu	$t2,$t2,$s2
    beqz	$a5,.L0da750c4
    addiu	$t2,$t2,8112
.L0da7508c:
    move	$ra,$zero
    movn	$ra,$s0,$s3
    # Line 1675
    sll	$t9,$ra,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x4
    # Line 1674
    addiu	$a4,$a4,4
    # Line 1675
    addu	$t9,$t1,$t9
    addiu	$a5,$a5,-1
    sll	$t9,$t9,0x2
    # Line 1674
    addu	$t1,$t1,$s1
    # Line 1675
    addu	$t9,$s2,$t9
    addiu	$t9,$t9,5376
    bnez	$a5,.L0da7508c
    sw	$t9,36($a4)
.L0da750c4:
    li	$t3,5376
    sra	$at,$t8,0x2
    beqz	$at,.L0da75198
    li	$ra,5376
    addu	$t3,$s2,$t3
    li	$t8,5376
    addu	$ra,$s2,$ra
    addu	$t8,$s2,$t8
    nop
    nop
    nop
.L0da750f0:
    move	$a3,$zero
    movn	$a3,$s0,$s3
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    move	$a5,$zero
    sll	$a2,$a2,0x4
    movn	$a5,$s0,$s3
    addu	$a2,$t1,$a2
    sll	$a2,$a2,0x2
    move	$a3,$zero
    # Line 1674
    addiu	$a4,$a4,16
    movn	$a3,$s0,$s3
    addu	$at,$t1,$s1
    # Line 1675
    sll	$a1,$a3,0x3
    # Line 1674
    addu	$v0,$at,$s1
    # Line 1675
    addu	$a1,$a1,$a3
    # Line 1674
    addu	$a0,$v0,$s1
    # Line 1675
    sll	$a1,$a1,0x4
    # Line 1674
    addu	$t1,$a0,$s1
    # Line 1675
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    move	$a3,$zero
    addu	$a2,$a2,$s8
    movn	$a3,$s0,$s3
    addu	$a0,$a0,$t3
    sll	$a1,$a5,0x3
    sll	$v1,$a3,0x3
    addu	$a1,$a1,$a5
    addu	$v1,$v1,$a3
    sll	$a1,$a1,0x4
    sw	$a2,24($a4)
    sll	$v1,$v1,0x4
    addu	$v0,$v0,$a1
    sw	$a0,36($a4)
    addu	$at,$at,$v1
    sll	$v0,$v0,0x2
    sll	$at,$at,0x2
    addu	$v0,$v0,$t8
    sw	$v0,32($a4)
    addu	$at,$at,$ra
    # Line 1674
    bne	$a4,$t2,.L0da750f0
    # Line 1675
    sw	$at,28($a4)
.L0da75198:
    # Line 1674
    lbu	$t2,5168($s2)
    li	$a4,3
    beq	$a4,$t2,.L0da7551c
    lw	$t3,-13584($gp)
    # Line 1679
    lw	$a5,-13592($gp)
.L0da751ac:
    beqz	$a5,.L0da751ec
    # Line 1685
    lw	$a5,-13560($gp)
    li	$a6,684
    multu	$a5,$a6
    move	$a0,$t2
    # lw $t9, -32672($gp) # &sub_0da70000
    move	$a1,$s1
    move	$a2,$t3
    addiu	$t9,$t9,11104
    mflo	$a4
    addiu	$a3,$s2,8112
    addu	$a4,$s2,$a4
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lbu	$t2,5168($s2)
    lw	$t3,-13584($gp)
.L0da751ec:
    # Line 1686
    lw	$v0,-13560($gp)
    sll	$at,$v0,0x3
    subu	$at,$at,$v0
    addiu	$a2,$s2,8112
    la	$s8,sub_0da70000
    sll	$at,$at,0x3
    addiu	$a3,$s2,10784
    ld	$ra,168($sp)
    addu	$at,$at,$v0
    addiu	$s8,$s8,12688
    ld	$v0,408($sp)
    sll	$at,$at,0x2
    move	$t9,$s8
    addu	$at,$s2,$at
    xor	$ra,$ra,$v0
    addiu	$at,$at,10328
    move	$a1,$t3
    movz	$a3,$at,$ra
    bal __glim_SubdivPatchSGIX
    andi	$a0,$t2,0xff
    lbu	$a0,5169($s2)
    li	$v0,3
    beq	$v0,$a0,.L0da7556c
    lw	$t3,-13580($gp)
    # Line 1690
    lw	$v1,-13592($gp)
.L0da75250:
    beqz	$v1,.L0da752c0
    ld	$ra,408($sp)
    # Line 1696
    ld	$a7,416($sp)
    lw	$a6,-13560($gp)
    sll	$a5,$a6,0x2
    addiu	$a7,$a7,-3
    mult	$s1,$a7
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    # lw $t9, -32672($gp) # &sub_0da70000
    subu	$a5,$a5,$a6
    mflo	$a4
    move	$a1,$s1
    addu	$a4,$a4,$a5
    addiu	$t9,$t9,11104
    sll	$a4,$a4,0x2
    move	$a2,$t3
    addu	$a4,$s2,$a4
    ld	$a3,456($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lbu	$a0,5169($s2)
    lw	$t3,-13580($gp)
    ld	$ra,408($sp)
.L0da752c0:
    # Line 1698
    lw	$v0,-13560($gp)
    # Line 1696
    ld	$a4,416($sp)
    ld	$s8,168($sp)
    # Line 1698
    sll	$at,$v0,0x3
    # Line 1696
    sll	$a3,$a4,0x2
    # Line 1698
    subu	$at,$at,$v0
    xor	$ra,$s8,$ra
    sll	$at,$at,0x3
    # lw $t9, -32672($gp) # &sub_0da70000
    # Line 1696
    subu	$a3,$a3,$a4
    # Line 1698
    addu	$at,$at,$v0
    addu	$at,$a3,$at
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,12688
    sll	$at,$at,0x2
    addu	$a3,$s2,$a3
    addu	$at,$s2,$at
    addiu	$a3,$a3,10748
    addiu	$at,$at,10292
    movz	$a3,$at,$ra
    move	$a1,$t3
    bal __glim_SubdivPatchSGIX
    ld	$a2,456($sp)
    # Line 1638
    ld	$v0,320($sp)
    ld	$v1,656($sp)
    addiu	$s8,$s8,-4
    sd	$s8,168($sp)
    addiu	$s0,$s0,-1
    addiu	$s3,$s3,-1
    addiu	$v1,$v1,1
    beq	$s8,$v0,.L0da75640
    sd	$v1,656($sp)
.L0da75340:
    # Line 1639
    ld	$a1,168($sp)
    lw	$a1,0($a1)
    ld	$a2,304($sp)
    slti	$a0,$a1,5
    sd	$a1,416($sp)
    addiu	$a1,$a1,-2
    bnez	$a0,.L0da74ef8
    sd	$a1,712($sp)
    ld	$a5,680($sp)
    sd	$s6,736($sp)
    sd	$s3,928($sp)
    lw	$s3,36($sp)
    sd	$a2,752($sp)
    sd	$a5,728($sp)
    sd	$s0,936($sp)
    move	$s8,$s1
    ld	$a3,488($sp)
    li	$s0,2
    b	.L0da75c30
    sd	$a3,744($sp)
.L0da75390:
    # Line 1653
    move	$a0,$s1
    move	$t9,$s4
    move	$a1,$s0
    lw	$a4,40($sp)
    addiu	$a5,$s2,5128
    move	$a3,$s3
    bal __glim_SubdivPatchSGIX
    lw	$a2,32($sp)
    lw	$a6,-13592($gp)
    beqz	$a6,.L0da75404
    # Line 1659
    lw	$a4,-13560($gp)
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    move	$a0,$s1
    # lw $t9, -32672($gp) # &sub_0da70000
    subu	$a3,$a3,$a4
    addiu	$a2,$s2,5128
    addu	$a3,$s8,$a3
    addiu	$t9,$t9,10608
    sll	$a3,$a3,0x2
    li	$a1,6
    addu	$a3,$s2,$a3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
.L0da75404:
    # Line 1663
    lw	$v0,-13560($gp)
    sll	$at,$v0,0x3
    subu	$at,$at,$v0
    sll	$at,$at,0x3
    addu	$at,$at,$v0
    ld	$a2,752($sp)
    addu	$at,$s8,$at
    # lw $t9, -32672($gp) # &sub_0da70000
    sll	$at,$at,0x2
    ld	$ra,656($sp)
    addu	$at,$s2,$at
    addiu	$t9,$t9,11344
    addiu	$at,$at,10328
    addiu	$a1,$s2,5128
    movz	$a2,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    # Line 1639
    lw	$a1,-13588($gp)
.L0da7544c:
    # Line 1641
    ld	$v0,712($sp)
    ld	$a0,728($sp)
    ld	$v1,752($sp)
    addu	$a0,$a0,$s6
    sd	$a0,728($sp)
    ld	$a0,736($sp)
    addiu	$s0,$s0,1
    addu	$v1,$v1,$s6
    sd	$v1,752($sp)
    slt	$v0,$s0,$v0
    ld	$v1,744($sp)
    addu	$s8,$s8,$s1
    addu	$a0,$a0,$s6
    sd	$a0,736($sp)
    addu	$v1,$v1,$s6
    beqz	$v0,.L0da74ef0
    sd	$v1,744($sp)
    # Line 1639
    lbu	$a1,0($a1)
.L0da75494:
    bne	$s5,$a1,.L0da75390
    # Line 1643
    ld	$a1,736($sp)
    ld	$a2,744($sp)
    addiu	$a3,$s2,5128
    ld	$a0,728($sp)
    move	$t9,$s7
    addu	$a2,$a2,$s3
    addu	$a1,$a1,$s3
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s3
    lw	$a3,-13592($gp)
    beqz	$a3,.L0da7544c
    # Line 1639
    lw	$a1,-13588($gp)
    # Line 1648
    lw	$a4,-13560($gp)
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addiu	$a2,$s2,5128
    # lw $t9, -32672($gp) # &sub_0da70000
    subu	$a3,$a3,$a4
    move	$a1,$s1
    addu	$a3,$s8,$a3
    addiu	$t9,$t9,10928
    sll	$a3,$a3,0x2
    li	$a0,1
    addu	$a3,$s2,$a3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
    b	.L0da7544c
    # Line 1639
    lw	$a1,-13588($gp)
.L0da7551c:
    # Line 1674
    blez	$t3,.L0da751ac
    # Line 1679
    lw	$a5,-13592($gp)
    # Line 1674
    addiu	$a4,$s2,8192
    addiu	$a7,$s2,8112
    move	$a5,$t3
    move	$t0,$a7
    andi	$t8,$t3,0x1
    sll	$t1,$t3,0x2
    sra	$t9,$a5,0x1
    addu	$t1,$t1,$s2
    beqz	$t8,.L0da7555c
    addiu	$t1,$t1,8192
    lw	$t8,8192($s2)
    # Line 1679
    addiu	$a7,$a7,4
    # Line 1674
    beq	$t8,$s5,.L0da75bec
    # Line 1679
    addiu	$a4,$a4,4
.L0da7555c:
    bnezl	$t9,.L0da755d4
    # Line 1674
    lw	$ra,0($a4)
.L0da75564:
    b	.L0da751ac
    # Line 1679
    lw	$a5,-13592($gp)
.L0da7556c:
    # Line 1686
    blez	$t3,.L0da75250
    # Line 1690
    lw	$v1,-13592($gp)
    # Line 1686
    sll	$t1,$t3,0x2
    addiu	$a4,$s2,8192
    addu	$t1,$t1,$s2
    addiu	$a7,$s2,8112
    move	$a5,$t3
    andi	$t2,$t3,0x1
    sra	$t8,$a5,0x1
    move	$t0,$a7
    beqz	$t2,.L0da755ac
    addiu	$t1,$t1,8192
    lw	$t2,8232($s2)
    # Line 1690
    addiu	$a7,$a7,4
    # Line 1686
    beq	$t2,$s5,.L0da75bfc
    # Line 1690
    addiu	$a4,$a4,4
.L0da755ac:
    bnezl	$t8,.L0da7560c
    # Line 1686
    lw	$v1,40($a4)
.L0da755b4:
    b	.L0da75250
    # Line 1690
    lw	$v1,-13592($gp)
    nop
.L0da755c0:
    # Line 1674
    beq	$t9,$s5,.L0da755f0
    nop
.L0da755c8:
    # Line 1679
    beq	$a4,$t1,.L0da75564
    addiu	$a7,$a7,8
    # Line 1674
    lw	$ra,0($a4)
.L0da755d4:
    # Line 1679
    addiu	$a4,$a4,8
    # Line 1674
    bne	$ra,$s5,.L0da755c0
    lw	$t9,-4($a4)
    # Line 1681
    addiu	$t0,$t0,4
    lw	$at,0($a7)
    b	.L0da755c0
    sw	$at,-4($t0)
.L0da755f0:
    addiu	$t0,$t0,4
    lw	$v0,4($a7)
    b	.L0da755c8
    sw	$v0,-4($t0)
.L0da75600:
    # Line 1690
    beq	$a4,$t1,.L0da755b4
    addiu	$a7,$a7,8
    # Line 1686
    lw	$v1,40($a4)
.L0da7560c:
    # Line 1690
    addiu	$a4,$a4,8
    # Line 1686
    beq	$v1,$s5,.L0da75630
    lw	$a1,36($a4)
.L0da75618:
    bne	$a1,$s5,.L0da75600
    nop
    # Line 1692
    addiu	$t0,$t0,4
    lw	$a2,44($a7)
    b	.L0da75600
    sw	$a2,36($t0)
.L0da75630:
    addiu	$t0,$t0,4
    lw	$a3,40($a7)
    b	.L0da75618
    sw	$a3,36($t0)
.L0da75640:
    # Line 1638
    ld	$a4,64($sp)
    beqz	$a4,.L0da7565c
    # Line 1702
    nop	# was lw $t9, -32668($gp) # &sub_0da80000
    addiu	$t9,$t9,-28688
    ld	$a0,464($sp)
    bal __glim_SubdivPatchSGIX
    lw	$a1,-13560($gp)
.L0da7565c:
    blez	$s6,.L0da756c4
    # Line 1712
    ld	$a5,200($sp)
    # Line 1702
    sll	$a4,$s1,0x2
    sll	$a2,$s1,0x6
    subu	$a4,$a4,$s1
    addiu	$a3,$s2,5232
    ld	$a6,144($sp)
    sll	$a5,$a4,0x2
    sll	$a4,$a4,0x4
    addu	$a5,$a5,$s6
    addu	$a2,$a2,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a6
    addu	$a5,$a5,$a6
    nop
    nop
    nop
.L0da756a0:
    # Line 1708
    lwc1	$f14,0($a4)
    swc1	$f14,0($a3)
    # Line 1707
    addiu	$a4,$a4,4
    # Line 1709
    lwc1	$f13,0($a2)
    # Line 1707
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    bne	$a4,$a5,.L0da756a0
    # Line 1709
    swc1	$f13,140($a3)
    # Line 1712
    ld	$a5,200($sp)
.L0da756c4:
    beqz	$a5,.L0da758d4
    ld	$a6,224($sp)
.L0da756cc:
    move	$a0,$zero
.L0da756d0:
    # Line 1713
    ld	$a6,400($sp)
    bnez	$a6,.L0da75768
    # Line 1712
    sw	$a0,-13568($gp)
    # Line 1713
    ld	$a7,120($sp)
    ld	$t0,224($sp)
    lwc1	$f16,0($a7)
    lwc1	$f15,0($t0)
    c.eq.s $f15,$f16
    bc1f .L0da75768
    ld	$t1,120($sp)
    ld	$t2,224($sp)
    lwc1	$f18,4($t1)
    lwc1	$f17,4($t2)
    c.eq.s $f17,$f18
    bc1f .L0da75768
    ld	$t3,120($sp)
    ld	$t8,224($sp)
    lwc1	$f21,8($t3)
    lwc1	$f19,8($t8)
    c.eq.s $f19,$f21
    bc1f .L0da75768
    li	$t9,1
    sw	$t9,-13564($gp)
    ld	$s2,912($sp)
    ld	$s3,904($sp)
    ld	$s6,896($sp)
    ld	$s4,880($sp)
    ld	$s0,872($sp)
    ld	$s7,864($sp)
    ld	$s5,856($sp)
    ldc1	$f20,848($sp)
    ldc1	$f22,840($sp)
    ld	$ra,888($sp)
    # Line 1715
    ld	$s1,192($sp)
    ld	$s8,208($sp)
    ldc1	$f24,56($sp)
    jr	$ra
    addiu	$sp,$sp,960
.L0da75768:
    # Line 1713
    sw	$zero,-13564($gp)
    ld	$s5,856($sp)
    ld	$s7,864($sp)
    ld	$s0,872($sp)
    ld	$s4,880($sp)
    ld	$s6,896($sp)
    ld	$s3,904($sp)
    ld	$s2,912($sp)
    ldc1	$f22,840($sp)
    ldc1	$f20,848($sp)
    ld	$ra,888($sp)
    # Line 1715
    ld	$s1,192($sp)
    ld	$s8,208($sp)
    ldc1	$f24,56($sp)
    jr	$ra
    addiu	$sp,$sp,960
.L0da757a8:
    # Line 1576
    lw	$at,8112($s2)
    addiu	$t0,$s2,8116
    b	.L0da749a4
    sw	$at,8112($s2)
.L0da757b8:
    # Line 1588
    lw	$v0,8152($s2)
    addiu	$t0,$s2,8116
    b	.L0da749f8
    sw	$v0,8152($s2)
.L0da757c8:
    # Line 1171
    swc1	$f20,756($s2)
    # Line 1172
    b	.L0da73300
    # Line 1170
    swc1	$f20,576($s2)
.L0da757d4:
    # Line 1175
    swc1	$f20,1372($s2)
    # Line 1176
    b	.L0da73300
    # Line 1174
    swc1	$f20,1120($s2)
.L0da757e0:
    # Line 1179
    swc1	$f20,2276($s2)
    # Line 1180
    b	.L0da73300
    # Line 1178
    swc1	$f20,1880($s2)
.L0da757ec:
    # Line 1155
    sll	$a3,$s1,0x2
    addu	$a3,$a3,$s1
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s8
    sll	$a4,$s1,0x4
    lwc1	$f23,0($a3)
    addu	$a4,$a4,$s8
    lwc1	$f25,0($a4)
    c.eq.s $f23,$f25
    bc1f .L0da73298
    nop
    lwc1	$f27,4($a3)
    lwc1	$f29,4($a4)
    c.eq.s $f27,$f29
    bc1f .L0da73298
    nop
    lwc1	$f31,8($a3)
    lwc1	$f0,8($a4)
    c.eq.s $f31,$f0
    bc1f .L0da7329c
    move	$a3,$zero
    b	.L0da7329c
    li	$a3,1
.L0da75848:
    # Line 1156
    sll	$a5,$s1,0x3
    sll	$a4,$s1,0x4
    subu	$a5,$a5,$s1
    addu	$a4,$a4,$s8
    sll	$a5,$a5,0x2
    lwc1	$f2,0($a4)
    addu	$a5,$a5,$s8
    lwc1	$f1,0($a5)
    c.eq.s $f1,$f2
    bc1f .L0da732a8
    sd	$a5,120($sp)
    ld	$a6,120($sp)
    lwc1	$f4,4($a4)
    lwc1	$f3,4($a6)
    c.eq.s	$f3,$f4
    bc1f	.L0da732a8
    ld	$a7,120($sp)
    lwc1	$f6,8($a4)
    lwc1	$f5,8($a7)
    c.eq.s $f5,$f6
    bc1f .L0da732a8
    nop
    sdc1	$f20,848($sp)
    sd	$s5,856($sp)
    sd	$s7,864($sp)
    sd	$s0,872($sp)
    sd	$s4,880($sp)
    li	$a3,1
    b	.L0da732c4
    sd	$s2,912($sp)
.L0da758c0:
    # Line 1638
    beqz	$t0,.L0da7565c
    ld	$a5,464($sp)
    li	$a4,1
    b	.L0da74e98
    sll	$a5,$a5,0x2
.L0da758d4:
    # Line 1712
    ld	$a7,128($sp)
    lwc1	$f8,0($a6)
    lwc1	$f7,0($a7)
    c.eq.s $f7,$f8
    bc1f .L0da756cc
    ld	$t0,224($sp)
    ld	$t1,128($sp)
    lwc1	$f10,4($t0)
    lwc1	$f9,4($t1)
    c.eq.s $f9,$f10
    bc1f .L0da756d0
    move	$a0,$zero
    ld	$t2,224($sp)
    ld	$t3,128($sp)
    lwc1	$f12,8($t2)
    lwc1	$f11,8($t3)
    c.eq.s $f11,$f12
    bc1f .L0da756d0
    move	$a0,$zero
    b	.L0da756d0
    li	$a0,1
.L0da75928:
    # Line 1194
    ldc1	$f22,_lit8_3f70101010101010
    subu	$s3,$ra,$s1
    addiu	$s6,$s8,-28
    sd	$s6,72($sp)
    sll	$s3,$s3,0x3
    addiu	$s0,$s8,644
    la	$s6,sub_0da70000
    subu	$s3,$s3,$s1
    sd	$ra,288($sp)
    li	$t9,7
    sll	$s3,$s3,0x2
    sw	$t9,6084($t8)
    addiu	$s6,$s6,8016
    addu	$s3,$s3,$s8
.L0da75960:
    # Line 1196
    move	$t9,$s6
    move	$a0,$s1
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    move	$a2,$s0
    # Line 1197
    lwc1	$f17,12($s0)
    trunc.w.s	$f17,$f17
    mfc1	$t9,$f17
    andi	$at,$t9,0xff
    dmtc1	$at,$f15
    srl	$v0,$t9,0x18
    dmtc1	$v0,$f16
    srl	$ra,$t9,0x10
    srl	$t9,$t9,0x8
    andi	$ra,$ra,0xff
    andi	$t9,$t9,0xff
    dmtc1	$ra,$f14
    cvt.s.l	$f16,$f16
    dmtc1	$t9,$f13
    cvt.s.l	$f15,$f15
    cvt.s.l	$f14,$f14
    cvt.s.l	$f13,$f13
    cvt.d.s	$f16,$f16
    cvt.d.s	$f15,$f15
    mul.d	$f16,$f16,$f22
    cvt.d.s	$f14,$f14
    mul.d	$f15,$f15,$f22
    cvt.d.s	$f13,$f13
    # Line 1195
    addiu	$s0,$s0,-28
    ld	$t8,288($sp)
    # Line 1197
    cvt.s.d	$f16,$f16
    mul.d	$f14,$f14,$f22
    cvt.s.d	$f15,$f15
    swc1	$f16,40($s0)
    mul.d	$f13,$f13,$f22
    # Line 1196
    move	$a0,$s1
    move	$t9,$s6
    # Line 1197
    swc1	$f15,52($s0)
    cvt.s.d	$f14,$f14
    # Line 1196
    move	$a2,$s0
    # Line 1195
    subu	$s3,$s3,$t8
    # Line 1197
    cvt.s.d	$f13,$f13
    swc1	$f14,44($s0)
    # Line 1196
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    # Line 1197
    swc1	$f13,48($s0)
    lwc1	$f25,12($s0)
    trunc.w.s	$f25,$f25
    mfc1	$a1,$f25
    andi	$a3,$a1,0xff
    dmtc1	$a3,$f21
    srl	$a4,$a1,0x18
    dmtc1	$a4,$f23
    srl	$a2,$a1,0x10
    srl	$a1,$a1,0x8
    andi	$a2,$a2,0xff
    andi	$a1,$a1,0xff
    dmtc1	$a2,$f19
    cvt.s.l	$f23,$f23
    dmtc1	$a1,$f18
    cvt.s.l	$f21,$f21
    cvt.s.l	$f19,$f19
    cvt.s.l	$f18,$f18
    cvt.d.s	$f23,$f23
    cvt.d.s	$f21,$f21
    mul.d	$f23,$f23,$f22
    cvt.d.s	$f19,$f19
    # Line 1195
    ld	$a0,288($sp)
    # Line 1197
    mul.d	$f21,$f21,$f22
    cvt.d.s	$f18,$f18
    # Line 1195
    addiu	$s0,$s0,-28
    ld	$v1,72($sp)
    # Line 1197
    cvt.s.d	$f23,$f23
    mul.d	$f19,$f19,$f22
    cvt.s.d	$f21,$f21
    swc1	$f23,40($s0)
    mul.d	$f18,$f18,$f22
    swc1	$f21,52($s0)
    cvt.s.d	$f19,$f19
    cvt.s.d	$f18,$f18
    swc1	$f19,44($s0)
    # Line 1195
    subu	$s3,$s3,$a0
    bne	$s0,$v1,.L0da75960
    # Line 1197
    swc1	$f18,48($s0)
    # Line 1195
    la	$s0,sub_0da70000
    li	$s1,7
    b	.L0da734c0
    addiu	$s0,$s0,7904
.L0da75ac0:
    # Line 1201
    ldc1	$f22,_lit8_3f70101010101010
    addiu	$ra,$s8,856
    sd	$ra,280($sp)
    sll	$ra,$s1,0x2
    addiu	$s6,$s8,844
    sd	$s6,272($sp)
    subu	$s3,$ra,$s1
    addiu	$s6,$s8,828
    sd	$ra,288($sp)
    sll	$s3,$s3,0x3
    addiu	$t9,$s8,-20
    la	$s0,sub_0da70000
    subu	$s3,$s3,$s1
    sd	$t9,232($sp)
    li	$t9,9
    sll	$s3,$s3,0x2
    sw	$t9,6084($t8)
    addiu	$s0,$s0,7904
    addu	$s3,$s3,$s8
    nop
.L0da75b10:
    # Line 1203
    move	$t9,$s0
    move	$a0,$s1
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    move	$a2,$s6
    ld	$at,272($sp)
    ld	$v1,280($sp)
    lbu	$a6,0($at)
    sb	$a6,0($v1)
    lbu	$a5,1($at)
    sb	$a5,1($v1)
    # Line 1205
    lwc1	$f1,12($s6)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a3,$a1,0xff
    dmtc1	$a3,$f31
    srl	$a4,$a1,0x18
    dmtc1	$a4,$f0
    srl	$a2,$a1,0x10
    srl	$a1,$a1,0x8
    andi	$a2,$a2,0xff
    andi	$a1,$a1,0xff
    dmtc1	$a2,$f29
    cvt.s.l	$f0,$f0
    dmtc1	$a1,$f27
    cvt.s.l	$f31,$f31
    cvt.s.l	$f29,$f29
    cvt.s.l	$f27,$f27
    cvt.d.s	$f0,$f0
    # Line 1202
    ld	$a0,288($sp)
    # Line 1205
    cvt.d.s	$f31,$f31
    # Line 1202
    addiu	$s6,$s6,-36
    ld	$v0,232($sp)
    # Line 1205
    mul.d	$f0,$f0,$f22
    cvt.d.s	$f29,$f29
    # Line 1202
    addiu	$at,$at,-36
    sd	$at,272($sp)
    # Line 1205
    mul.d	$f31,$f31,$f22
    cvt.d.s	$f27,$f27
    # Line 1202
    addiu	$v1,$v1,-36
    sd	$v1,280($sp)
    # Line 1205
    cvt.s.d	$f0,$f0
    mul.d	$f29,$f29,$f22
    cvt.s.d	$f31,$f31
    swc1	$f0,48($s6)
    mul.d	$f27,$f27,$f22
    swc1	$f31,60($s6)
    cvt.s.d	$f29,$f29
    cvt.s.d	$f27,$f27
    swc1	$f29,52($s6)
    # Line 1202
    subu	$s3,$s3,$a0
    bne	$at,$v0,.L0da75b10
    # Line 1205
    swc1	$f27,56($s6)
    b	.L0da734b8
    # Line 1202
    li	$s1,9
.L0da75bec:
    # Line 1681
    lw	$t8,8112($s2)
    addiu	$t0,$s2,8116
    b	.L0da7555c
    sw	$t8,8112($s2)
.L0da75bfc:
    # Line 1692
    lw	$t9,8152($s2)
    addiu	$t0,$s2,8116
    b	.L0da755ac
    sw	$t9,8152($s2)
.L0da75c0c:
    # Line 1239
    addiu	$a5,$a5,8
    # Line 1242
    li	$ra,1
    li	$t9,1
    b	.L0da736e0
    # Line 1240
    lw	$t8,4($a7)
.L0da75c20:
    # Line 1631
    addu	$t1,$t1,$s1
    b	.L0da74dd4
    nop
    nop
.L0da75c30:
    # Line 1639
    lw	$a1,-13588($gp)
    b	.L0da75494
    lbu	$a1,0($a1)
.end InitSubdivision

# Function: DoRow
# Declared: Line 1719 (Source lines: 1720-2254)
# Address: 0x0da75c40 - 0x0da77dac (Size: 8556 bytes, Frame: 240)
.ent DoRow
DoRow:
    # Line 1720
    addiu	$sp,$sp,-496
    sd	$s5,440($sp)
    sd	$s7,480($sp)
    sd	$s4,472($sp)
    sd	$s8,464($sp)
    sd	$s6,448($sp)
    sd	$s1,256($sp)
    sd	$s2,280($sp)
    sd	$s3,264($sp)
    # Line 1722
    lw	$a5,4112($zero)
    # Line 1738
    lw	$t8,-13588($gp)
    # Line 1724
    lw	$s3,6084($a5)
    # Line 1725
    lw	$s2,6112($a5)
    # Line 1726
    lw	$a7,6096($a5)
    # Line 1727
    lw	$a6,6100($a5)
    # Line 1736
    sll	$a2,$a0,0x2
    # Line 1720
    sd	$s0,272($sp)
    # Line 1736
    addu	$a4,$a2,$a1
    lw	$s0,0($a4)
    # Line 1728
    lbu	$a5,6117($a5)
    # Line 1736
    addiu	$s0,$s0,1
    sw	$s0,0($a4)
    # Line 1741
    lbu	$t2,2($t8)
    # Line 1745
    li	$t1,3
    # Line 1738
    li	$t3,32
    lbu	$t0,1($t8)
    # Line 1720
    move	$s1,$a0
    sd	$ra,456($sp)
    # Line 1741
    xor	$t2,$t3,$t2
    # Line 1726
    sd	$a7,368($sp)
    # Line 1738
    xor	$t3,$t3,$t0
    # Line 1741
    sltiu	$t2,$t2,1
    # Line 1727
    sd	$a6,360($sp)
    # Line 1745
    beqz	$a0,.L0da76c14
    # Line 1738
    sltiu	$t3,$t3,1
    # Line 1745
    li	$t9,1
    beq	$a0,$t9,.L0da76f24
    li	$ra,2
    beq	$a0,$ra,.L0da7708c
    nop
    beq	$a0,$t1,.L0da77220
    li	$at,4
    beq	$a0,$at,.L0da77394
    lw	$s4,28($sp)
    la	$s5,sub_0db10000
    lw	$s7,32($sp)
    lw	$s8,16($sp)
    addiu	$s5,$s5,-21520
.L0da75d00:
    # Line 1834
    # lw $t9, -32592($gp) # &sub_0daf0000
    addiu	$t9,$t9,-9752
    addu	$t9,$a2,$t9
    # Line 1835
    lw	$a3,0($t9)
    addiu	$a6,$a3,-1
    bne	$a6,$s0,.L0da75fcc
    # Line 1834
    lw	$a0,-4($t9)
    # Line 1835
    ld	$ra,368($sp)
    beqz	$ra,.L0da77528
    sd	$a0,224($sp)
    # Line 1843
    ld	$t3,368($sp)
    addiu	$t3,$t3,-1
    mult	$s3,$t3
    sll	$t2,$s1,0x3
    addu	$t2,$t2,$s1
    sll	$t2,$t2,0x4
    mflo	$t1
    addu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    sd	$a5,216($sp)
    addu	$t1,$s5,$t1
    sll	$s6,$s3,0x2
    sd	$a3,136($sp)
    addiu	$t1,$t1,4656
.L0da75d60:
    # Line 1849
    addu	$a2,$s6,$s7
    sd	$a2,208($sp)
    addu	$a1,$s6,$s4
    sd	$a1,144($sp)
    addu	$a4,$s3,$s3
    sll	$a4,$a4,0x2
    sd	$a4,200($sp)
    move	$a3,$t1
    lbu	$t1,5176($s5)
    la	$s0,sub_0da70000
    addu	$a4,$a4,$s4
    lbu	$a7,5208($s5)
    li	$t0,1
    lb	$a6,5170($s5)
    xor	$t0,$s1,$t0
    addiu	$s0,$s0,9216
    sd	$a4,240($sp)
    movz	$a7,$t1,$t0
    move	$t9,$s0
    addu	$a5,$s6,$s8
    lb	$t0,8($t8)
    dsll32	$a7,$a7,0x18
    move	$a0,$s3
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    # Line 1862
    ld	$a5,360($sp)
    beqz	$a5,.L0da75ddc
    ld	$a6,216($sp)
    beqz	$a6,.L0da77550
    # Line 1863
    ld	$a4,224($sp)
.L0da75ddc:
    # Line 1864
    andi	$a7,$s2,0x400
    beqz	$a7,.L0da75df4
    # Line 1867
    ld	$t2,224($sp)
    # Line 1864
    ld	$t0,360($sp)
    beqz	$t0,.L0da775b4
    # Line 1867
    ld	$t2,224($sp)
.L0da75df4:
    addiu	$t2,$t2,-2
    mult	$s3,$t2
    lw	$a3,24($sp)
    mflo	$t1
    sll	$t1,$t1,0x2
    addu	$a3,$a3,$t1
.L0da75e0c:
    # Line 1869
    ld	$s2,224($sp)
    addiu	$s2,$s2,-3
    mult	$s2,$s3
    ld	$t3,136($sp)
    lbu	$t2,5177($s5)
    li	$t0,1
    addiu	$t3,$t3,-3
    lbu	$a7,5209($s5)
    mflo	$a2
    nop
    nop
    mult	$s3,$t3
    xor	$t0,$s1,$t0
    movz	$a7,$t2,$t0
    addu	$a1,$t1,$s4
    dsll32	$a7,$a7,0x18
    move	$a0,$s3
    dsra32	$a7,$a7,0x18
    move	$t9,$s0
    lw	$t0,-13588($gp)
    sll	$a2,$a2,0x2
    lb	$a6,5171($s5)
    addu	$a4,$a2,$s4
    mflo	$a5
    lb	$t0,9($t0)
    addu	$a2,$a2,$s7
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    ld	$a0,240($sp)
    ld	$a2,144($sp)
    ld	$a5,200($sp)
    ld	$a6,208($sp)
    sd	$s2,80($sp)
    slti	$t8,$s2,2
    sw	$s4,28($sp)
    bnez	$t8,.L0da75f9c
    sd	$s7,304($sp)
    la	$s7,sub_0da70000
    ld	$ra,80($sp)
    li	$s0,1
    move	$s1,$a0
    ld	$s5,304($sp)
    move	$s2,$a6
    addiu	$ra,$ra,2
    sd	$ra,376($sp)
    sll	$t9,$s3,0x2
    li	$ra,3
    sd	$ra,384($sp)
    move	$s4,$a2
    subu	$t9,$t9,$s3
    lw	$ra,28($sp)
    addu	$s5,$a5,$s5
    sll	$t9,$t9,0x2
    addiu	$s7,$s7,8288
    addu	$t9,$t9,$ra
    sd	$t9,408($sp)
    nop
    nop
    nop
.L0da75f00:
    # Line 1882
    addu	$a6,$s0,$s0
    mult	$a6,$s3
    move	$a4,$s5
    move	$a3,$s4
    move	$a2,$s1
    move	$a1,$s2
    move	$t9,$s7
    mflo	$a5
    move	$a0,$s3
    sll	$a5,$a5,0x2
    sd	$a6,392($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1889
    ld	$a6,392($sp)
    addiu	$a6,$a6,1
    mult	$s3,$a6
    move	$a0,$s3
    move	$a1,$s5
    move	$a2,$s1
    move	$t9,$s7
    mflo	$a5
    move	$a4,$s2
    sll	$a5,$a5,0x2
    ld	$a3,408($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1880
    ld	$a7,384($sp)
    addu	$s4,$s4,$s6
    addu	$s2,$s2,$s6
    ld	$t0,376($sp)
    addu	$s1,$s1,$s6
    ld	$t1,408($sp)
    addiu	$a7,$a7,1
    addu	$s5,$s5,$s6
    addiu	$s0,$s0,1
    sd	$a7,384($sp)
    addu	$t1,$t1,$s6
    bne	$a7,$t0,.L0da75f00
    sd	$t1,408($sp)
.L0da75f9c:
    ld	$s5,440($sp)
.L0da75fa0:
    ld	$s7,480($sp)
    ld	$s4,472($sp)
    ld	$s8,464($sp)
    ld	$s6,448($sp)
    # Line 1804
    ld	$s0,272($sp)
    ld	$ra,456($sp)
    ld	$s1,256($sp)
    ld	$s2,280($sp)
    ld	$s3,264($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0da75fcc:
    # Line 1896
    addiu	$at,$a3,-2
    mult	$at,$s3
    sd	$a0,224($sp)
    sll	$s6,$s3,0x2
    mflo	$a2
    addiu	$a5,$a0,-2
    sd	$a5,336($sp)
    sll	$a2,$a2,0x2
    sd	$a6,72($sp)
    bne	$at,$s0,.L0da76250
    addu	$a2,$s8,$a2
    ld	$a6,368($sp)
    andi	$a7,$s2,0x100
    sd	$a7,184($sp)
    beqz	$a6,.L0da77660
    sd	$a2,56($sp)
    sw	$s4,28($sp)
    # Line 1905
    sll	$a4,$s1,0x3
    sd	$a3,136($sp)
    addu	$a5,$s6,$s7
    addu	$a4,$a4,$s1
    sd	$a5,208($sp)
    addu	$a5,$s3,$s3
    sll	$a4,$a4,0x6
    sll	$a5,$a5,0x2
    sd	$a5,200($sp)
    addu	$a4,$s5,$a4
    addu	$a5,$a5,$s4
    sd	$a5,240($sp)
    addiu	$a4,$a4,4656
.L0da76044:
    # Line 1910
    lb	$a7,5170($s5)
    lb	$a6,5175($s5)
    # Line 1909
    la	$s4,sub_0da70000
    # Line 1910
    move	$a5,$s8
    lw	$a3,24($sp)
    move	$a0,$s3
    lw	$s0,28($sp)
    # Line 1909
    addiu	$s4,$s4,9216
    # Line 1910
    lb	$t8,7($t8)
    addu	$a3,$s6,$a3
    move	$t9,$s4
    sw	$t8,4($sp)
    move	$a1,$s0
    addu	$s0,$s6,$s0
    sd	$a3,160($sp)
    bal __glim_SubdivPatchSGIX
    move	$a2,$s0
    lw	$v1,24($sp)
    lw	$t9,-13588($gp)
    ld	$v0,200($sp)
    lbu	$t9,3($t9)
    li	$ra,2
    li	$t8,32
    ld	$at,336($sp)
    addu	$a5,$v0,$s8
    addu	$v0,$v0,$v1
    sd	$v0,192($sp)
    slt	$ra,$ra,$at
    bne	$t8,$t9,.L0da7643c
    sd	$ra,152($sp)
    sd	$s0,144($sp)
    # Line 1922
    ld	$a4,208($sp)
    move	$a1,$s0
    lbu	$t2,5171($s5)
    li	$t1,1
    ld	$a3,192($sp)
    li	$a7,1
    xor	$t1,$s1,$t1
    ld	$a2,240($sp)
    move	$t9,$s4
    movz	$a7,$t2,$t1
    lb	$a6,5170($s5)
    move	$t0,$t8
    dsll32	$a7,$a7,0x18
    sw	$t0,4($sp)
    move	$a0,$s3
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$t2,152($sp)
    beqz	$t2,.L0da7656c
    sd	$s7,304($sp)
    ld	$s4,144($sp)
    sd	$s4,344($sp)
    lw	$t9,24($sp)
    sd	$s2,488($sp)
    ld	$s2,200($sp)
    ld	$t8,136($sp)
    sd	$s1,104($sp)
    sll	$s1,$s3,0x2
    addiu	$t8,$t8,-3
    sd	$t8,296($sp)
    li	$s0,2
    subu	$s1,$s1,$s3
    lw	$t8,28($sp)
    ld	$s4,240($sp)
    addu	$s2,$s2,$s7
    sll	$s1,$s1,0x2
    addu	$t9,$s1,$t9
    sd	$t9,400($sp)
    addu	$s1,$s1,$t8
    nop
.L0da76160:
    # Line 1932
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,10160
    move	$a0,$s4
    move	$a1,$s1
    ld	$a2,344($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s5,5128
    # Line 1936
    addu	$a3,$s0,$s0
    sd	$a3,392($sp)
    addiu	$a3,$a3,-1
    mult	$s3,$a3
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a1,$s5,5128
    addiu	$t9,$t9,10176
    mflo	$a2
    move	$a0,$s3
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$s8,$a2
    # Line 1939
    ld	$t2,392($sp)
    mult	$t2,$s3
    li	$a6,1
    move	$a4,$s2
    ld	$t1,296($sp)
    move	$a2,$s1
    move	$a1,$s4
    lbu	$t2,5171($s5)
    li	$a7,1
    # lw $t9, -32672($gp) # &sub_0da70000
    xor	$t1,$t1,$s0
    move	$a0,$s3
    movz	$a7,$t2,$t1
    addiu	$t9,$t9,9216
    dsll32	$a7,$a7,0x18
    dsra32	$a7,$a7,0x18
    mflo	$a5
    ld	$a3,400($sp)
    li	$t0,32
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1931
    ld	$t9,344($sp)
    addu	$s4,$s4,$s6
    ld	$t3,336($sp)
    addu	$s2,$s2,$s6
    addiu	$s0,$s0,1
    ld	$t8,400($sp)
    addu	$s1,$s1,$s6
    addu	$t9,$t9,$s6
    sd	$t9,344($sp)
    addu	$t8,$t8,$s6
    bne	$t3,$s0,.L0da76160
    sd	$t8,400($sp)
    sd	$s7,304($sp)
    la	$s4,sub_0da70000
    ld	$s1,104($sp)
    ld	$s2,488($sp)
    b	.L0da7656c
    addiu	$s4,$s4,9216
.L0da76250:
    # Line 2100
    sra	$at,$s0,0x1f
    xor	$t8,$s0,$at
    sd	$a2,56($sp)
    subu	$t8,$t8,$at
    sd	$t9,432($sp)
    andi	$t8,$t8,0x1
    sd	$t3,96($sp)
    xor	$t8,$t8,$at
    sd	$t2,88($sp)
    subu	$t8,$t8,$at
    sd	$a4,424($sp)
    addu	$at,$s6,$s8
    beqz	$t8,.L0da778ec
    sd	$at,176($sp)
    ld	$t9,224($sp)
    addiu	$t9,$t9,-1
    blez	$t9,.L0da7633c
    sd	$t9,376($sp)
    sw	$s4,28($sp)
    sd	$s0,48($sp)
    sd	$s7,304($sp)
    la	$s7,sub_0da70000
    move	$s1,$s4
    lw	$t8,24($sp)
    move	$s0,$zero
    addu	$s1,$s6,$s1
    ld	$s2,304($sp)
    addu	$t8,$s6,$t8
    sd	$t8,400($sp)
    addiu	$s7,$s7,8288
    nop
    nop
.L0da762d0:
    # Line 2109
    addu	$a6,$s0,$s0
    mult	$s3,$a6
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$t9,$s7
    mflo	$a5
    move	$a4,$s2
    sll	$a5,$a5,0x2
    ld	$a3,400($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 2108
    ld	$a7,376($sp)
    addiu	$s0,$s0,1
    addu	$s4,$s4,$s6
    ld	$t0,400($sp)
    slt	$a7,$s0,$a7
    addu	$s2,$s2,$s6
    addu	$s1,$s1,$s6
    addu	$t0,$t0,$s6
    bnez	$a7,.L0da762d0
    sd	$t0,400($sp)
    ld	$s7,304($sp)
    lw	$s4,28($sp)
    lw	$t0,-13588($gp)
    ld	$s0,48($sp)
    lbu	$t0,1($t0)
.L0da7633c:
    li	$t1,32
    beq	$t1,$t0,.L0da7774c
    # Line 2119
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 2123
    la	$s1,sub_0da70000
    # Line 2127
    addiu	$a5,$s5,5128
    # Line 2123
    addiu	$s1,$s1,9424
    # Line 2127
    move	$a4,$s7
    move	$t9,$s1
    move	$a3,$s4
    li	$a1,1
    lw	$a2,24($sp)
    bal __glim_SubdivPatchSGIX
    move	$a0,$s3
    # Line 2132
    la	$s2,sub_0da70000
    addiu	$s2,$s2,9520
    move	$t9,$s2
    addiu	$a2,$s5,5128
    li	$a1,6
    ld	$a3,176($sp)
    move	$a0,$s3
    bal __glim_SubdivPatchSGIX
    sd	$s0,48($sp)
    la	$s0,sub_0da70000
    addiu	$s0,$s0,10176
.L0da7639c:
    lw	$t9,-13588($gp)
    lbu	$t9,2($t9)
    li	$t8,32
    beq	$t8,$t9,.L0da7779c
    # Line 2147
    move	$a0,$s3
    move	$t9,$s1
    ld	$a1,336($sp)
    move	$a3,$s4
    move	$a4,$s7
    lw	$a2,24($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s5,5128
    # Line 2152
    move	$t9,$s2
    move	$a0,$s3
    addiu	$a2,$s5,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    ld	$a3,56($sp)
    ld	$ra,336($sp)
.L0da763e8:
    slti	$ra,$ra,3
    bnez	$ra,.L0da75f9c
    ld	$a0,48($sp)
    addu	$a1,$s3,$s3
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,1
    li	$s0,2
    sd	$s6,312($sp)
    srl	$v0,$a0,0x1f
    sll	$v1,$s3,0x2
    ld	$at,224($sp)
    addu	$v0,$v0,$a0
    sd	$a1,320($sp)
    subu	$v1,$v1,$s3
    sra	$v0,$v0,0x1
    sll	$v1,$v1,0x2
    sd	$v1,328($sp)
    subu	$at,$at,$v0
    addiu	$at,$at,-1
    b	.L0da77d90
    sd	$at,352($sp)
.L0da7643c:
    sd	$s7,304($sp)
    # Line 1931
    la	$s7,sub_0da70000
    addiu	$s7,$s7,8288
    # Line 1951
    ld	$a2,240($sp)
    move	$t9,$s7
    move	$a0,$s3
    ld	$a3,192($sp)
    move	$a1,$s0
    bal __glim_SubdivPatchSGIX
    ld	$a4,208($sp)
    ld	$t8,152($sp)
    beqz	$t8,.L0da7656c
    sd	$s0,144($sp)
    lw	$t8,28($sp)
    ld	$s4,304($sp)
    sd	$s2,488($sp)
    ld	$s2,200($sp)
    sd	$s1,104($sp)
    sll	$s1,$s3,0x2
    li	$s0,2
    lw	$t9,24($sp)
    subu	$s1,$s1,$s3
    addu	$s2,$s2,$s4
    ld	$s4,240($sp)
    sll	$s1,$s1,0x2
    addu	$t9,$s1,$t9
    sd	$t9,400($sp)
    addu	$s1,$s1,$t8
    nop
.L0da764b0:
    # Line 1958
    # lw $t9, -32672($gp) # &sub_0da70000
    lw	$a2,24($sp)
    addiu	$t9,$t9,9424
    move	$a0,$s3
    move	$a1,$s0
    lw	$a3,28($sp)
    ld	$a4,304($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s5,5128
    # Line 1963
    addu	$a4,$s0,$s0
    sd	$a4,392($sp)
    addiu	$a4,$a4,-1
    mult	$s3,$a4
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a2,$s5,5128
    li	$a1,6
    addiu	$t9,$t9,9520
    mflo	$a3
    move	$a0,$s3
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$s8,$a3
    # Line 1967
    ld	$a6,392($sp)
    mult	$a6,$s3
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$t9,$s7
    mflo	$a5
    move	$a4,$s2
    sll	$a5,$a5,0x2
    ld	$a3,400($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1957
    ld	$a7,336($sp)
    addu	$s4,$s4,$s6
    addiu	$s0,$s0,1
    ld	$t0,400($sp)
    addu	$s2,$s2,$s6
    addu	$s1,$s1,$s6
    addu	$t0,$t0,$s6
    bne	$a7,$s0,.L0da764b0
    sd	$t0,400($sp)
    la	$s4,sub_0da70000
    ld	$s1,104($sp)
    ld	$s2,488($sp)
    addiu	$s4,$s4,9216
.L0da7656c:
    ld	$s7,304($sp)
    # Line 1980
    sw	$zero,8192($s5)
    # Line 1985
    ld	$v1,160($sp)
    # Line 1983
    ld	$a0,192($sp)
    # Line 1979
    ld	$a2,144($sp)
    # Line 1981
    ld	$a1,240($sp)
    sw	$a1,8116($s5)
    # Line 1982
    lw	$t8,-13588($gp)
    # Line 1979
    sw	$a2,8112($s5)
    # Line 1982
    lbu	$t9,3($t8)
    # Line 1983
    sw	$a0,8120($s5)
    # Line 1984
    lbu	$at,28($t8)
    # Line 1985
    sw	$v1,8124($s5)
    # Line 1986
    lbu	$v0,1($t8)
    andi	$ra,$s2,0x80
    sw	$v0,8204($s5)
    # Line 1984
    sw	$at,8200($s5)
    # Line 1986
    beqz	$ra,.L0da77578
    # Line 1982
    sw	$t9,8196($s5)
    # Line 1988
    lw	$a5,28($sp)
    # Line 1989
    ld	$a4,368($sp)
    # Line 1988
    sw	$a5,8128($s5)
    li	$s0,3
    # Line 1989
    lbu	$a3,7($t8)
    li	$t9,5
    blez	$a4,.L0da77588
    sw	$a3,8208($s5)
.L0da765d8:
    move	$ra,$t9
    sll	$a5,$t9,0x2
    move	$a6,$t8
    addu	$a5,$a5,$s5
    addiu	$t1,$a5,8192
    sll	$t0,$s1,0x3
    ld	$a0,368($sp)
    addiu	$t2,$a5,8112
    addu	$t0,$t0,$s1
    sll	$t0,$t0,0x6
    move	$a1,$a0
    andi	$at,$a0,0x1
    addu	$a0,$t9,$a0
    addu	$t0,$s5,$t0
    sll	$t3,$a0,0x2
    addiu	$t0,$t0,4656
    addu	$t3,$t3,$s5
    beqz	$at,.L0da76640
    addiu	$t3,$t3,8112
    # Line 1992
    sw	$t0,8112($a5)
    # Line 1991
    addu	$t0,$t0,$s6
    addiu	$t2,$a5,8116
    # Line 1993
    lbu	$a7,16($t8)
    # Line 1991
    addiu	$t1,$a5,8196
    addiu	$a6,$t8,1
    # Line 1993
    sw	$a7,8192($a5)
.L0da76640:
    sra	$t9,$a1,0x1
    beqz	$t9,.L0da76680
    nop
    nop
.L0da76650:
    # Line 1992
    sw	$t0,0($t2)
    # Line 1993
    lbu	$at,16($a6)
    # Line 1991
    addu	$t0,$t0,$s6
    # Line 1992
    sw	$t0,4($t2)
    # Line 1991
    addiu	$t1,$t1,8
    # Line 1993
    lbu	$t9,17($a6)
    # Line 1991
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 1993
    sw	$t9,-4($t1)
    # Line 1991
    addu	$t0,$t0,$s6
    bne	$t2,$t3,.L0da76650
    # Line 1993
    sw	$at,-8($t1)
.L0da76680:
    # Line 1997
    ld	$at,184($sp)
    # Line 1995
    sw	$ra,-13576($gp)
    # Line 1997
    beqz	$at,.L0da7669c
    # Line 1996
    move	$t9,$a0
    # Line 1997
    lw	$v0,-13568($gp)
    beqz	$v0,.L0da77884
    # Line 1998
    sll	$a5,$a0,0x2
.L0da7669c:
    # Line 2005
    ld	$t0,336($sp)
    mult	$t0,$s3
    # Line 2009
    ld	$a7,224($sp)
    # Line 2001
    addiu	$a2,$t9,-1
    sw	$a2,-13584($gp)
    # Line 2006
    sw	$zero,8232($s5)
    # Line 2009
    addiu	$a7,$a7,-3
    # Line 2005
    lw	$a1,28($sp)
    mflo	$a6
    nop
    nop
    # Line 2009
    mult	$s3,$a7
    # Line 2010
    andi	$a0,$s2,0x200
    sd	$a0,120($sp)
    # Line 2005
    sll	$a6,$a6,0x2
    addu	$t0,$a6,$a1
    sw	$t0,8152($s5)
    # Line 2007
    lw	$a7,24($sp)
    # Line 2005
    sd	$t0,128($sp)
    # Line 2007
    addu	$a6,$a6,$a7
    sw	$a6,8156($s5)
    # Line 2008
    lbu	$a5,2($t8)
    # Line 2009
    mflo	$a4
    # Line 2008
    sw	$a5,8236($s5)
    # Line 2009
    sll	$a4,$a4,0x2
    addu	$a1,$a4,$a1
    sd	$a1,112($sp)
    sw	$a1,8160($s5)
    # Line 2010
    lbu	$v1,3($t8)
    beqz	$a0,.L0da77598
    sw	$v1,8240($s5)
    # Line 2013
    ld	$t2,360($sp)
    # Line 2012
    addu	$t3,$a4,$s7
    sw	$t3,8164($s5)
    # Line 2013
    lbu	$t1,9($t8)
    li	$t9,4
    blez	$t2,.L0da775a4
    sw	$t1,8244($s5)
.L0da76734:
    move	$ra,$t9
    sll	$a1,$t9,0x2
    move	$a6,$t8
    addu	$a1,$a1,$s5
    addiu	$t1,$a1,8192
    sll	$t0,$s1,0x3
    ld	$a0,360($sp)
    addiu	$t2,$a1,8112
    addu	$t0,$t0,$s1
    sll	$t0,$t0,0x6
    move	$a5,$a0
    andi	$at,$a0,0x1
    addu	$a0,$t9,$a0
    addu	$t0,$s5,$t0
    sll	$t3,$a0,0x2
    addiu	$t0,$t0,4800
    addu	$t3,$t3,$s5
    beqz	$at,.L0da7679c
    addiu	$t3,$t3,8112
    # Line 2016
    sw	$t0,8152($a1)
    # Line 2015
    addu	$t0,$t0,$s6
    addiu	$t2,$a1,8116
    # Line 2017
    lbu	$a3,20($t8)
    # Line 2015
    addiu	$t1,$a1,8196
    addiu	$a6,$t8,1
    # Line 2017
    sw	$a3,8232($a1)
.L0da7679c:
    sra	$a7,$a5,0x1
    beqz	$a7,.L0da767e0
    nop
    nop
    nop
.L0da767b0:
    # Line 2016
    sw	$t0,40($t2)
    # Line 2017
    lbu	$t9,20($a6)
    # Line 2015
    addu	$t0,$t0,$s6
    # Line 2016
    sw	$t0,44($t2)
    # Line 2015
    addiu	$t1,$t1,8
    # Line 2017
    lbu	$at,21($a6)
    # Line 2015
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 2017
    sw	$at,36($t1)
    # Line 2015
    addu	$t0,$t0,$s6
    bne	$t2,$t3,.L0da767b0
    # Line 2017
    sw	$t9,32($t1)
.L0da767e0:
    # Line 2021
    andi	$v0,$s2,0x400
    sd	$v0,168($sp)
    # Line 2020
    move	$t9,$a0
    # Line 2021
    beqz	$v0,.L0da76800
    # Line 2019
    sw	$ra,-13572($gp)
    # Line 2021
    lw	$v1,-13564($gp)
    beqz	$v1,.L0da778a0
    # Line 2022
    ld	$t2,224($sp)
.L0da76800:
    # Line 2025
    lbu	$a0,5170($s5)
    addiu	$a1,$t9,-1
    beq	$s0,$a0,.L0da7769c
    sw	$a1,-13580($gp)
.L0da76810:
    # Line 2031
    la	$s2,sub_0da70000
    addiu	$s2,$s2,10320
    # Line 2036
    move	$t9,$s2
    sd	$a4,64($sp)
    addu	$a4,$s6,$s8
    addiu	$a3,$s5,8112
    bal __glim_SubdivPatchSGIX
    move	$a1,$s3
    lbu	$a0,5171($s5)
    ld	$a4,56($sp)
    beq	$s0,$a0,.L0da776f4
    lw	$a2,-13580($gp)
.L0da76840:
    # Line 2048
    move	$t9,$s2
.L0da76844:
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s5,8152
    ld	$t8,368($sp)
    blez	$t8,.L0da76958
    # Line 2055
    ld	$a6,360($sp)
    sd	$s1,104($sp)
    # Line 2048
    ld	$t8,104($sp)
    sd	$s7,304($sp)
    sll	$s7,$t8,0x3
    addiu	$s2,$s5,5168
    addu	$s7,$s7,$t8
    addiu	$s1,$s5,5200
    sll	$s7,$s7,0x6
    move	$s0,$zero
    addu	$s7,$s5,$s7
    b	.L0da77d78
    addiu	$s7,$s7,5232
    nop
.L0da76890:
    # Line 2056
    lbu	$t1,16($s1)
.L0da76894:
    lw	$ra,-13584($gp)
    lw	$a3,-13576($gp)
    addiu	$ra,$ra,1
    addu	$a3,$a3,$s0
    mtc1	$ra,$f1
    addiu	$a4,$a3,1
    mtc1	$a4,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a5,$f0
    mult	$a5,$ra
    lw	$t9,-13588($gp)
    lb	$a6,5170($s5)
    addu	$t9,$s0,$t9
    lw	$a1,8112($s5)
    sll	$a3,$a3,0x2
    mflo	$a5
    lb	$t9,12($t9)
    addu	$a3,$s5,$a3
    subu	$a4,$a4,$a5
    lw	$a2,8112($a3)
    sll	$a4,$a4,0x2
    lw	$a3,8108($a3)
    addu	$a4,$s5,$a4
    dsll32	$a7,$t1,0x18
    lw	$a4,8112($a4)
    dsra32	$a7,$a7,0x18
    sw	$t9,4($sp)
    move	$t9,$s4
    move	$a0,$s3
    teq	$ra,$zero,0x7
    bal __glim_SubdivPatchSGIX
    move	$a5,$s7
    # Line 2055
    ld	$a4,368($sp)
    addu	$s7,$s7,$s6
    addiu	$s0,$s0,1
    addiu	$s1,$s1,1
    # Line 2048
    li	$a5,1
    # Line 2055
    beq	$a4,$s0,.L0da7694c
    addiu	$s2,$s2,1
.L0da7693c:
    # Line 2048
    bne	$s0,$a5,.L0da76890
    nop
    # Line 2056
    b	.L0da76894
    lbu	$t1,16($s2)
.L0da7694c:
    ld	$s7,304($sp)
    ld	$s1,104($sp)
    # Line 2055
    ld	$a6,360($sp)
.L0da76958:
    blez	$a6,.L0da76a58
    # Line 2079
    ld	$a6,168($sp)
    sd	$s1,104($sp)
    # Line 2055
    ld	$t8,104($sp)
    sd	$s7,304($sp)
    sll	$s7,$t8,0x3
    addiu	$s2,$s5,5168
    addu	$s7,$s7,$t8
    addiu	$s1,$s5,5200
    sll	$s7,$s7,0x6
    move	$s0,$zero
    addu	$s7,$s5,$s7
    b	.L0da77d84
    addiu	$s7,$s7,5376
.L0da76990:
    # Line 2067
    lbu	$t1,20($s1)
.L0da76994:
    lw	$ra,-13580($gp)
    lw	$a3,-13572($gp)
    addiu	$ra,$ra,1
    addu	$a3,$a3,$s0
    mtc1	$ra,$f2
    addiu	$a4,$a3,1
    mtc1	$a4,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a5,$f1
    mult	$a5,$ra
    lw	$t9,-13588($gp)
    lb	$a6,5171($s5)
    addu	$t9,$s0,$t9
    lw	$a1,8152($s5)
    sll	$a3,$a3,0x2
    mflo	$a5
    lb	$t9,20($t9)
    addu	$a3,$s5,$a3
    subu	$a4,$a4,$a5
    lw	$a2,8152($a3)
    sll	$a4,$a4,0x2
    lw	$a3,8148($a3)
    addu	$a4,$s5,$a4
    dsll32	$a7,$t1,0x18
    lw	$a4,8152($a4)
    dsra32	$a7,$a7,0x18
    sw	$t9,4($sp)
    move	$t9,$s4
    move	$a0,$s3
    teq	$ra,$zero,0x7
    bal __glim_SubdivPatchSGIX
    move	$a5,$s7
    # Line 2066
    ld	$a4,360($sp)
    addu	$s7,$s7,$s6
    addiu	$s0,$s0,1
    addiu	$s1,$s1,1
    # Line 2055
    li	$a5,1
    # Line 2066
    beq	$a4,$s0,.L0da76a4c
    addiu	$s2,$s2,1
.L0da76a3c:
    # Line 2055
    bne	$s0,$a5,.L0da76990
    nop
    # Line 2067
    b	.L0da76994
    lbu	$t1,20($s2)
.L0da76a4c:
    ld	$s7,304($sp)
    ld	$s1,104($sp)
    # Line 2079
    ld	$a6,168($sp)
.L0da76a58:
    beqz	$a6,.L0da75f9c
    lw	$t8,-13588($gp)
    lbu	$a7,10($t8)
    bnez	$a7,.L0da75f9c
    ld	$t0,360($sp)
    beqz	$t0,.L0da779fc
    # Line 2082
    ld	$t9,360($sp)
    addiu	$t9,$t9,-1
    mult	$s3,$t9
    sll	$t8,$s1,0x3
    addu	$t8,$t8,$s1
    sll	$t8,$t8,0x4
    mflo	$s0
    addu	$s0,$s0,$t8
    sll	$s0,$s0,0x2
    addu	$s0,$s5,$s0
    addiu	$s0,$s0,5376
.L0da76a9c:
    # Line 2093
    blez	$s3,.L0da75f9c
    ld	$a2,72($sp)
    mult	$a2,$s3
    move	$a0,$s0
    andi	$a3,$s3,0x1
    mflo	$a1
    addu	$a2,$s6,$s0
    sll	$a1,$a1,0x2
    beqz	$a3,.L0da76ad4
    addu	$a1,$s8,$a1
    # Line 2096
    lwc1	$f2,0($s0)
    # Line 2095
    addiu	$a1,$a1,4
    addiu	$a0,$s0,4
    # Line 2096
    swc1	$f2,-4($a1)
.L0da76ad4:
    sra	$a3,$s3,0x1
    beqz	$a3,.L0da76afc
    nop
.L0da76ae0:
    lwc1	$f4,0($a0)
    # Line 2095
    addiu	$a0,$a0,8
    # Line 2096
    swc1	$f4,0($a1)
    lwc1	$f3,-4($a0)
    # Line 2095
    addiu	$a1,$a1,8
    bne	$a0,$a2,.L0da76ae0
    # Line 2096
    swc1	$f3,-4($a1)
.L0da76afc:
    b	.L0da75fa0
    ld	$s5,440($sp)
    nop
    nop
    # Line 2170
    move	$a0,$s3
.L0da76b10:
    move	$a1,$s0
    move	$t9,$s1
    move	$a3,$s4
    move	$a4,$s7
    lw	$a2,24($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s5,5128
    # Line 2175
    addu	$a4,$s0,$s0
    addiu	$a4,$a4,-1
    mult	$s3,$a4
    move	$a0,$s3
    addiu	$a2,$s5,5128
    move	$t9,$s2
    mflo	$a3
    li	$a1,6
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$s8,$a3
    # Line 2158
    ld	$a6,328($sp)
.L0da76b5c:
    ld	$a7,312($sp)
    ld	$t0,320($sp)
    ld	$a5,336($sp)
    addiu	$s0,$s0,1
    addu	$t0,$t0,$s6
    sd	$t0,320($sp)
    # Line 2160
    li	$t2,32
    # Line 2158
    addu	$a7,$a7,$s6
    sd	$a7,312($sp)
    addu	$a6,$a6,$s6
    beq	$a5,$s0,.L0da76c0c
    sd	$a6,328($sp)
    nop
    # Line 2160
    ld	$t1,352($sp)
.L0da76b94:
    lw	$t3,-13588($gp)
    bne	$t1,$s0,.L0da76b10
    # Line 2170
    move	$a0,$s3
    # Line 2160
    lbu	$t3,28($t3)
    bne	$t2,$t3,.L0da76b10
    # Line 2170
    move	$a0,$s3
    # Line 2162
    lw	$a4,24($sp)
    ld	$a1,328($sp)
    # lw $t9, -32672($gp) # &sub_0da70000
    ld	$a2,312($sp)
    addiu	$a3,$s5,5128
    ld	$a0,320($sp)
    addiu	$t9,$t9,10160
    addu	$a2,$a2,$s7
    addu	$a1,$a1,$a4
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s4
    # Line 2166
    addu	$a3,$s0,$s0
    addiu	$a3,$a3,-1
    mult	$s3,$a3
    # lw $t9, -32672($gp) # &sub_0da70000
    move	$a0,$s3
    addiu	$t9,$t9,10176
    mflo	$a2
    addiu	$a1,$s5,5128
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$s8,$a2
    b	.L0da76b5c
    # Line 2158
    ld	$a6,328($sp)
.L0da76c0c:
    b	.L0da75fa0
    ld	$s5,440($sp)
.L0da76c14:
    # Line 1748
    la	$a2,sub_0daf0000
    lw	$a2,-9752($a2)
    mult	$s3,$a2
    move	$ra,$ra
    mflo	$a3
    move	$s8,$s8
    move	$s4,$s4
    blez	$a3,.L0da76c88
    move	$s7,$s7
    la	$a4,sub_0db10000
    sll	$a1,$a3,0x2
    andi	$a5,$a3,0x1
    addiu	$a6,$a4,-21520
    addu	$a1,$a1,$a6
    beqz	$a5,.L0da76c60
    move	$a0,$a6
    # Line 1749
    lwc1	$f5,432($a6)
    # Line 1748
    addiu	$a0,$a6,4
    # Line 1749
    swc1	$f5,-21520($a4)
.L0da76c60:
    sra	$a4,$a3,0x1
    beqz	$a4,.L0da76c88
    nop
    nop
.L0da76c70:
    lwc1	$f7,436($a0)
    lwc1	$f6,432($a0)
    # Line 1748
    addiu	$a0,$a0,8
    # Line 1749
    swc1	$f7,-4($a0)
    # Line 1748
    bne	$a0,$a1,.L0da76c70
    # Line 1749
    swc1	$f6,-8($a0)
.L0da76c88:
    # Line 1748
    la	$s5,sub_0db10000
    # Line 1757
    sll	$s6,$s3,0x2
    # Line 1759
    addu	$t2,$s3,$s3
    # Line 1748
    addiu	$s5,$s5,-21520
    # Line 1758
    sw	$zero,8192($s5)
    # Line 1757
    addu	$s0,$s6,$s5
    # Line 1759
    sll	$t2,$t2,0x2
    # Line 1757
    addiu	$t3,$s0,288
    sw	$t3,8112($s5)
    # Line 1759
    addu	$t2,$s5,$t2
    addiu	$t3,$t2,288
    sw	$t3,8116($s5)
    # Line 1760
    lbu	$a5,3($t8)
    # Line 1761
    addiu	$t2,$t2,144
    sw	$t2,8120($s5)
    # Line 1762
    lbu	$a7,28($t8)
    # Line 1763
    addiu	$t1,$s0,144
    sw	$t1,8124($s5)
    # Line 1764
    lbu	$t0,1($t8)
    andi	$a6,$s2,0x80
    sw	$t0,8204($s5)
    # Line 1762
    sw	$a7,8200($s5)
    # Line 1764
    beqz	$a6,.L0da77628
    # Line 1760
    sw	$a5,8196($s5)
    # Line 1767
    ld	$v0,368($sp)
    # Line 1766
    addiu	$v1,$s5,288
    sw	$v1,8128($s5)
    # Line 1767
    lbu	$at,7($t8)
    li	$t9,5
    blez	$v0,.L0da77634
    sw	$at,8208($s5)
.L0da76d04:
    move	$a4,$t9
    addiu	$a0,$s5,5232
    ld	$a3,368($sp)
    move	$a6,$t8
    sll	$t3,$t9,0x2
    addu	$t3,$t3,$s5
    move	$t0,$a3
    andi	$a5,$a3,0x1
    addu	$a3,$t9,$a3
    addiu	$t1,$t3,8192
    sll	$a1,$a3,0x2
    addiu	$t2,$t3,8112
    addu	$a1,$a1,$s5
    beqz	$a5,.L0da76d5c
    addiu	$a1,$a1,8112
    # Line 1770
    sw	$a0,8112($t3)
    # Line 1769
    addu	$a0,$a0,$s6
    addiu	$t2,$t3,8116
    # Line 1771
    lbu	$t9,16($t8)
    # Line 1769
    addiu	$t1,$t3,8196
    addiu	$a6,$t8,1
    # Line 1771
    sw	$t9,8192($t3)
.L0da76d5c:
    sra	$at,$t0,0x1
    beqz	$at,.L0da76da0
    nop
    nop
    nop
.L0da76d70:
    # Line 1770
    sw	$a0,0($t2)
    # Line 1771
    lbu	$v0,16($a6)
    # Line 1769
    addu	$a0,$a0,$s6
    # Line 1770
    sw	$a0,4($t2)
    # Line 1769
    addiu	$t1,$t1,8
    # Line 1771
    lbu	$a5,17($a6)
    # Line 1769
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 1771
    sw	$a5,-4($t1)
    # Line 1769
    addu	$a0,$a0,$s6
    bne	$t2,$a1,.L0da76d70
    # Line 1771
    sw	$v0,-8($t1)
.L0da76da0:
    # Line 1775
    andi	$a6,$s2,0x100
    # Line 1774
    move	$t9,$a3
    # Line 1775
    beqz	$a6,.L0da76dbc
    # Line 1773
    sw	$a4,-13576($gp)
    # Line 1775
    lw	$a7,-13568($gp)
    beqz	$a7,.L0da778d4
    # Line 1776
    sll	$at,$a3,0x2
.L0da76dbc:
    # Line 1783
    addiu	$a4,$a2,-2
    mult	$s3,$a4
    # Line 1787
    addiu	$a3,$a2,-3
    # Line 1783
    mflo	$a1
    nop
    nop
    # Line 1787
    mult	$s3,$a3
    # Line 1784
    sw	$zero,8232($s5)
    # Line 1783
    sll	$a1,$a1,0x2
    # Line 1779
    addiu	$a3,$t9,-1
    sw	$a3,-13584($gp)
    # Line 1783
    addu	$a1,$s5,$a1
    addiu	$a3,$a1,288
    sw	$a3,8152($s5)
    # Line 1787
    mflo	$a0
    # Line 1785
    addiu	$a1,$a1,144
    sw	$a1,8156($s5)
    # Line 1787
    sll	$a0,$a0,0x2
    # Line 1786
    lbu	$a1,2($t8)
    sw	$a1,8236($s5)
    # Line 1787
    addu	$a0,$s5,$a0
    # Line 1788
    andi	$t1,$s2,0x200
    # Line 1787
    addiu	$t2,$a0,288
    sw	$t2,8160($s5)
    # Line 1788
    lbu	$t0,3($t8)
    beqz	$t1,.L0da77644
    sw	$t0,8240($s5)
    # Line 1791
    ld	$a6,360($sp)
    # Line 1790
    sw	$a0,8164($s5)
    # Line 1791
    lbu	$a5,9($t8)
    li	$t9,4
    blez	$a6,.L0da77650
    sw	$a5,8244($s5)
.L0da76e40:
    move	$a4,$t9
    addiu	$a0,$s5,5376
    ld	$a3,360($sp)
    move	$a6,$t8
    sll	$t0,$t9,0x2
    addu	$t0,$t0,$s5
    move	$a5,$a3
    andi	$a7,$a3,0x1
    addu	$a3,$t9,$a3
    addiu	$t1,$t0,8192
    sll	$a1,$a3,0x2
    addiu	$t2,$t0,8112
    addu	$a1,$a1,$s5
    beqz	$a7,.L0da76e98
    addiu	$a1,$a1,8112
    # Line 1794
    sw	$a0,8152($t0)
    # Line 1793
    addu	$a0,$a0,$s6
    addiu	$t2,$t0,8116
    # Line 1795
    lbu	$t3,20($t8)
    # Line 1793
    addiu	$t1,$t0,8196
    addiu	$a6,$t8,1
    # Line 1795
    sw	$t3,8232($t0)
.L0da76e98:
    sra	$t9,$a5,0x1
    beqz	$t9,.L0da76ee0
    nop
    nop
    nop
    nop
.L0da76eb0:
    # Line 1794
    sw	$a0,40($t2)
    # Line 1795
    lbu	$at,20($a6)
    # Line 1793
    addu	$a0,$a0,$s6
    # Line 1794
    sw	$a0,44($t2)
    # Line 1793
    addiu	$t1,$t1,8
    # Line 1795
    lbu	$a5,21($a6)
    # Line 1793
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 1795
    sw	$a5,36($t1)
    # Line 1793
    addu	$a0,$a0,$s6
    bne	$t2,$a1,.L0da76eb0
    # Line 1795
    sw	$at,32($t1)
.L0da76ee0:
    # Line 1799
    andi	$a6,$s2,0x400
    ld	$s6,448($sp)
    # Line 1798
    move	$t9,$a3
    # Line 1799
    beqz	$a6,.L0da76f00
    # Line 1797
    sw	$a4,-13572($gp)
    # Line 1799
    lw	$a7,-13564($gp)
    beqz	$a7,.L0da775f8
    # Line 1800
    addiu	$t2,$a2,-1
.L0da76f00:
    # Line 1803
    addiu	$t0,$t9,-1
    sw	$t0,-13580($gp)
    ld	$s5,440($sp)
    # Line 1804
    ld	$s0,272($sp)
    ld	$s1,256($sp)
    ld	$s2,280($sp)
    ld	$s3,264($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0da76f24:
    # Line 1806
    lw	$t9,-4($a4)
    addiu	$at,$t9,-2
    srl	$s7,$at,0x1f
    li	$v0,0xaaaa
    negu	$ra,$at
    dsll	$v0,$v0,0x10
    movz	$ra,$at,$s7
    ori	$v0,$v0,0xaaab
    multu	$ra,$v0
    mfhi	$s8
    sra	$s8,$s8,0x1
    negu	$s5,$s8
    movz	$s5,$s8,$s7
    mult	$s5,$t1
    # Line 1807
    addiu	$s7,$t9,-1
    srl	$a3,$s7,0x1f
    li	$s4,0xaaaa
    negu	$a7,$s7
    dsll	$s4,$s4,0x10
    movz	$a7,$s7,$a3
    ori	$s4,$s4,0xaaab
    # Line 1806
    mflo	$v1
    nop
    nop
    # Line 1807
    multu	$a7,$s4
    mfhi	$a6
    sra	$a6,$a6,0x1
    negu	$a1,$a6
    movz	$a1,$a6,$a3
    mult	$a1,$t1
    # Line 1808
    srl	$s5,$t9,0x1f
    li	$a0,0xaaaa
    negu	$v0,$t9
    dsll	$a0,$a0,0x10
    movz	$v0,$t9,$s5
    ori	$a0,$a0,0xaaab
    # Line 1807
    mflo	$s8
    nop
    nop
    # Line 1808
    multu	$v0,$a0
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$s4,$ra
    movz	$s4,$ra,$s5
    mult	$s4,$t1
    # Line 1809
    srl	$a1,$s0,0x1f
    li	$a7,0xaaaa
    negu	$a6,$s0
    dsll	$a7,$a7,0x10
    movz	$a6,$s0,$a1
    ori	$a7,$a7,0xaaab
    # Line 1808
    mflo	$v0
    nop
    nop
    # Line 1809
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    mult	$a0,$t1
    # Line 1806
    subu	$at,$at,$v1
    sll	$ra,$at,0x3
    la	$s5,sub_0db10000
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x4
    addiu	$s5,$s5,-21520
    addu	$ra,$s5,$ra
    # Line 1807
    subu	$s7,$s7,$s8
    # Line 1809
    mflo	$at
    # Line 1807
    sll	$s4,$s7,0x3
    # Line 1809
    subu	$at,$s0,$at
    # Line 1807
    addu	$s4,$s4,$s7
    # Line 1809
    sll	$s8,$at,0x2
    # Line 1807
    sll	$s4,$s4,0x4
    # Line 1809
    subu	$s8,$s8,$at
    # Line 1808
    subu	$t9,$t9,$v0
    # Line 1809
    sll	$s8,$s8,0x2
    # Line 1808
    sll	$s7,$t9,0x3
    # Line 1809
    subu	$s8,$s8,$at
    # Line 1808
    addu	$s7,$s7,$t9
    # Line 1809
    sll	$s8,$s8,0x2
    # Line 1808
    sll	$s7,$s7,0x4
    # Line 1809
    addu	$s8,$s8,$at
    # Line 1807
    addu	$s4,$s5,$s4
    # Line 1809
    sll	$s8,$s8,0x2
    # Line 1808
    addu	$s7,$s5,$s7
    # Line 1809
    addu	$s8,$s5,$s8
    # Line 1806
    sw	$ra,24($sp)
    b	.L0da75d00
    # Line 1809
    addiu	$s8,$s8,576
.L0da7708c:
    # Line 1812
    lw	$t9,-4($a4)
    addiu	$at,$t9,-2
    srl	$a1,$at,0x1f
    li	$a7,0xaaaa
    negu	$a6,$at
    dsll	$a7,$a7,0x10
    movz	$a6,$at,$a1
    ori	$a7,$a7,0xaaab
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    mult	$a0,$t1
    # Line 1813
    addiu	$s7,$t9,-1
    srl	$s5,$s7,0x1f
    li	$v1,0xaaaa
    negu	$ra,$s7
    dsll	$v1,$v1,0x10
    movz	$ra,$s7,$s5
    ori	$v1,$v1,0xaaab
    # Line 1812
    mflo	$v0
    nop
    nop
    # Line 1813
    multu	$ra,$v1
    mfhi	$s8
    sra	$s8,$s8,0x1
    negu	$s4,$s8
    movz	$s4,$s8,$s5
    mult	$s4,$t1
    # Line 1814
    srl	$a1,$t9,0x1f
    li	$a7,0xaaaa
    negu	$a6,$t9
    dsll	$a7,$a7,0x10
    movz	$a6,$t9,$a1
    ori	$a7,$a7,0xaaab
    # Line 1813
    mflo	$v1
    nop
    nop
    # Line 1814
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    mult	$a0,$t1
    # Line 1812
    subu	$at,$at,$v0
    sll	$ra,$at,0x2
    # Line 1815
    srl	$v0,$s0,0x1f
    li	$a1,0xaaaa
    negu	$a0,$s0
    dsll	$a1,$a1,0x10
    movz	$a0,$s0,$v0
    ori	$a1,$a1,0xaaab
    # Line 1814
    mflo	$s8
    nop
    nop
    # Line 1815
    multu	$a0,$a1
    # Line 1812
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    # Line 1813
    subu	$s7,$s7,$v1
    # Line 1812
    addu	$ra,$ra,$at
    # Line 1813
    sll	$s4,$s7,0x2
    # Line 1812
    sll	$ra,$ra,0x2
    # Line 1813
    subu	$s4,$s4,$s7
    sll	$s4,$s4,0x2
    # Line 1815
    mfhi	$v1
    # Line 1813
    subu	$s4,$s4,$s7
    # Line 1815
    sra	$v1,$v1,0x1
    # Line 1813
    sll	$s4,$s4,0x2
    # Line 1812
    la	$s5,sub_0db10000
    # Line 1815
    negu	$at,$v1
    movz	$at,$v1,$v0
    # Line 1812
    addiu	$s5,$s5,-21520
    # Line 1815
    mult	$at,$t1
    # Line 1812
    addu	$ra,$s5,$ra
    # Line 1813
    addu	$s4,$s4,$s7
    sll	$s4,$s4,0x2
    # Line 1814
    subu	$t9,$t9,$s8
    # Line 1812
    addiu	$ra,$ra,576
    # Line 1814
    sll	$s7,$t9,0x2
    # Line 1813
    addu	$s4,$s5,$s4
    # Line 1814
    subu	$s7,$s7,$t9
    # Line 1813
    addiu	$s4,$s4,576
    # Line 1814
    sll	$s7,$s7,0x2
    subu	$s7,$s7,$t9
    # Line 1815
    mflo	$at
    # Line 1814
    sll	$s7,$s7,0x2
    # Line 1815
    subu	$at,$s0,$at
    # Line 1814
    addu	$s7,$s7,$t9
    # Line 1815
    sll	$s8,$at,0x6
    # Line 1814
    sll	$s7,$s7,0x2
    # Line 1815
    subu	$s8,$s8,$at
    # Line 1814
    addu	$s7,$s5,$s7
    # Line 1815
    sll	$s8,$s8,0x2
    # Line 1814
    addiu	$s7,$s7,576
    # Line 1815
    addu	$s8,$s5,$s8
    # Line 1812
    sw	$ra,24($sp)
    # Line 1816
    b	.L0da75d00
    # Line 1815
    addiu	$s8,$s8,1120
.L0da77220:
    # Line 1818
    lw	$t9,-4($a4)
    addiu	$at,$t9,-2
    srl	$s7,$at,0x1f
    li	$v0,0xaaaa
    negu	$ra,$at
    dsll	$v0,$v0,0x10
    movz	$ra,$at,$s7
    ori	$v0,$v0,0xaaab
    multu	$ra,$v0
    mfhi	$s8
    sra	$s8,$s8,0x1
    negu	$s5,$s8
    movz	$s5,$s8,$s7
    mult	$s5,$t1
    # Line 1819
    addiu	$s7,$t9,-1
    srl	$a3,$s7,0x1f
    li	$s4,0xaaaa
    negu	$a7,$s7
    dsll	$s4,$s4,0x10
    movz	$a7,$s7,$a3
    ori	$s4,$s4,0xaaab
    # Line 1818
    mflo	$a0
    nop
    nop
    # Line 1819
    multu	$a7,$s4
    mfhi	$a6
    sra	$a6,$a6,0x1
    negu	$a1,$a6
    movz	$a1,$a6,$a3
    mult	$a1,$t1
    # Line 1820
    srl	$s5,$t9,0x1f
    li	$v1,0xaaaa
    negu	$v0,$t9
    dsll	$v1,$v1,0x10
    movz	$v0,$t9,$s5
    ori	$v1,$v1,0xaaab
    # Line 1819
    mflo	$s8
    nop
    nop
    # Line 1820
    multu	$v0,$v1
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$s4,$ra
    movz	$s4,$ra,$s5
    mult	$s4,$t1
    # Line 1821
    srl	$a1,$s0,0x1f
    li	$a7,0xaaaa
    negu	$a6,$s0
    dsll	$a7,$a7,0x10
    movz	$a6,$s0,$a1
    ori	$a7,$a7,0xaaab
    # Line 1820
    mflo	$v0
    nop
    nop
    # Line 1821
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$v1,$a3
    movz	$v1,$a3,$a1
    # Line 1818
    subu	$at,$at,$a0
    # Line 1821
    mult	$v1,$t1
    # Line 1818
    sll	$ra,$at,0x6
    la	$s5,sub_0db10000
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    addiu	$s5,$s5,-21520
    addu	$ra,$s5,$ra
    # Line 1819
    subu	$s7,$s7,$s8
    # Line 1818
    addiu	$ra,$ra,1120
    # Line 1819
    sll	$s4,$s7,0x6
    subu	$s4,$s4,$s7
    # Line 1821
    mflo	$at
    # Line 1819
    sll	$s4,$s4,0x2
    # Line 1821
    subu	$at,$s0,$at
    # Line 1819
    addu	$s4,$s5,$s4
    # Line 1821
    sll	$s8,$at,0x2
    # Line 1819
    addiu	$s4,$s4,1120
    # Line 1821
    subu	$s8,$s8,$at
    # Line 1820
    subu	$t9,$t9,$v0
    # Line 1821
    sll	$s8,$s8,0x3
    # Line 1820
    sll	$s7,$t9,0x6
    # Line 1821
    addu	$s8,$s8,$at
    # Line 1820
    subu	$s7,$s7,$t9
    # Line 1821
    sll	$s8,$s8,0x2
    # Line 1820
    sll	$s7,$s7,0x2
    # Line 1821
    subu	$s8,$s8,$at
    # Line 1820
    addu	$s7,$s5,$s7
    # Line 1821
    sll	$s8,$s8,0x2
    # Line 1820
    addiu	$s7,$s7,1120
    # Line 1821
    addu	$s8,$s5,$s8
    # Line 1818
    sw	$ra,24($sp)
    # Line 1822
    b	.L0da75d00
    # Line 1821
    addiu	$s8,$s8,1880
.L0da77394:
    # Line 1824
    lw	$t9,-4($a4)
    addiu	$v0,$t9,-2
    srl	$s4,$v0,0x1f
    li	$s8,0xaaaa
    negu	$s7,$v0
    dsll	$s8,$s8,0x10
    movz	$s7,$v0,$s4
    ori	$s8,$s8,0xaaab
    multu	$s7,$s8
    mfhi	$s5
    sra	$s5,$s5,0x1
    negu	$a7,$s5
    movz	$a7,$s5,$s4
    mult	$a7,$t1
    # Line 1825
    addiu	$s8,$t9,-1
    srl	$v1,$s8,0x1f
    li	$a6,0xaaaa
    negu	$a3,$s8
    dsll	$a6,$a6,0x10
    movz	$a3,$s8,$v1
    ori	$a6,$a6,0xaaab
    # Line 1824
    mflo	$a0
    nop
    nop
    # Line 1825
    multu	$a3,$a6
    mfhi	$a1
    sra	$a1,$a1,0x1
    negu	$at,$a1
    movz	$at,$a1,$v1
    mult	$at,$t1
    # Line 1826
    srl	$s4,$t9,0x1f
    li	$ra,0xaaaa
    negu	$s7,$t9
    dsll	$ra,$ra,0x10
    movz	$s7,$t9,$s4
    ori	$ra,$ra,0xaaab
    # Line 1825
    mflo	$v1
    nop
    nop
    # Line 1826
    multu	$s7,$ra
    mfhi	$s5
    sra	$s5,$s5,0x1
    negu	$a7,$s5
    movz	$a7,$s5,$s4
    mult	$a7,$t1
    # Line 1827
    srl	$a1,$s0,0x1f
    li	$a6,0xaaaa
    negu	$a3,$s0
    dsll	$a6,$a6,0x10
    movz	$a3,$s0,$a1
    ori	$a6,$a6,0xaaab
    # Line 1826
    mflo	$at
    nop
    nop
    # Line 1827
    multu	$a3,$a6
    # Line 1824
    subu	$v0,$v0,$a0
    sll	$ra,$v0,0x2
    # Line 1827
    mfhi	$a3
    # Line 1824
    subu	$ra,$ra,$v0
    # Line 1827
    sra	$a3,$a3,0x1
    # Line 1824
    sll	$ra,$ra,0x3
    # Line 1827
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    # Line 1824
    addu	$ra,$ra,$v0
    # Line 1827
    mult	$a0,$t1
    # Line 1824
    sll	$ra,$ra,0x2
    # Line 1825
    subu	$s8,$s8,$v1
    # Line 1824
    subu	$ra,$ra,$v0
    # Line 1825
    sll	$s4,$s8,0x2
    # Line 1824
    la	$s5,sub_0db10000
    sll	$ra,$ra,0x2
    # Line 1825
    subu	$s4,$s4,$s8
    sll	$s4,$s4,0x3
    # Line 1824
    addiu	$s5,$s5,-21520
    addu	$ra,$s5,$ra
    # Line 1825
    addu	$s4,$s4,$s8
    # Line 1826
    subu	$t9,$t9,$at
    # Line 1827
    mflo	$at
    subu	$at,$s0,$at
    li	$v0,684
    # Line 1826
    sll	$s7,$t9,0x2
    # Line 1827
    multu	$at,$v0
    # Line 1825
    sll	$s4,$s4,0x2
    # Line 1826
    subu	$s7,$s7,$t9
    # Line 1825
    subu	$s4,$s4,$s8
    # Line 1826
    sll	$s7,$s7,0x3
    # Line 1825
    sll	$s4,$s4,0x2
    # Line 1826
    addu	$s7,$s7,$t9
    # Line 1824
    addiu	$ra,$ra,1880
    # Line 1826
    sll	$s7,$s7,0x2
    # Line 1825
    addu	$s4,$s5,$s4
    # Line 1826
    subu	$s7,$s7,$t9
    # Line 1825
    addiu	$s4,$s4,1880
    # Line 1826
    sll	$s7,$s7,0x2
    addu	$s7,$s5,$s7
    # Line 1827
    mflo	$s8
    # Line 1826
    addiu	$s7,$s7,1880
    # Line 1827
    addu	$s8,$s5,$s8
    # Line 1824
    sw	$ra,24($sp)
    # Line 1828
    b	.L0da75d00
    # Line 1827
    addiu	$s8,$s8,3072
.L0da77528:
    # Line 1844
    andi	$ra,$s2,0x80
    beqz	$ra,.L0da7753c
    sd	$a5,216($sp)
    lw	$at,-13568($gp)
    beqz	$at,.L0da77a2c
.L0da7753c:
    # Line 1847
    lw	$t1,24($sp)
    sll	$s6,$s3,0x2
    sd	$a3,136($sp)
    b	.L0da75d60
    addu	$t1,$t1,$s6
.L0da77550:
    # Line 1863
    addiu	$a4,$a4,-2
    mult	$s3,$a4
    sll	$a3,$s1,0x3
    addu	$a3,$a3,$s1
    sll	$a3,$a3,0x6
    addu	$a3,$s5,$a3
    addiu	$a3,$a3,4800
    mflo	$t1
    b	.L0da75e0c
    sll	$t1,$t1,0x2
.L0da77578:
    # Line 1989
    ld	$a5,368($sp)
    li	$s0,3
    bgtz	$a5,.L0da765d8
    li	$t9,4
.L0da77588:
    ld	$a0,368($sp)
    # Line 1991
    move	$ra,$t9
    b	.L0da76680
    addu	$a0,$t9,$a0
.L0da77598:
    # Line 2013
    ld	$a1,360($sp)
    bgtz	$a1,.L0da76734
    li	$t9,3
.L0da775a4:
    ld	$a0,360($sp)
    # Line 2015
    move	$ra,$t9
    b	.L0da767e0
    addu	$a0,$t9,$a0
.L0da775b4:
    # Line 1864
    lw	$a1,-13564($gp)
    bnez	$a1,.L0da75df4
    # Line 1867
    ld	$t2,224($sp)
    # Line 1865
    ld	$a5,224($sp)
    addiu	$a6,$a5,-1
    mult	$s3,$a6
    addiu	$a5,$a5,-2
    mflo	$a4
    nop
    nop
    mult	$s3,$a5
    lw	$a3,24($sp)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    mflo	$t1
    b	.L0da75e0c
    sll	$t1,$t1,0x2
.L0da775f8:
    # Line 1800
    mult	$s3,$t2
    mflo	$t1
    sll	$t1,$t1,0x2
    sll	$t0,$a3,0x2
    addu	$t1,$s5,$t1
    addu	$t0,$t0,$s5
    addiu	$t1,$t1,144
    sw	$t1,8152($t0)
    # Line 1801
    lbu	$a7,10($t8)
    addiu	$t9,$a3,1
    b	.L0da76f00
    sw	$a7,8232($t0)
.L0da77628:
    # Line 1767
    ld	$t3,368($sp)
    bgtz	$t3,.L0da76d04
    li	$t9,4
.L0da77634:
    ld	$a3,368($sp)
    # Line 1769
    move	$a4,$t9
    b	.L0da76da0
    addu	$a3,$t9,$a3
.L0da77644:
    # Line 1791
    ld	$a4,360($sp)
    bgtz	$a4,.L0da76e40
    li	$t9,3
.L0da77650:
    ld	$a3,360($sp)
    # Line 1793
    move	$a4,$t9
    b	.L0da76ee0
    addu	$a3,$t9,$a3
.L0da77660:
    # Line 1906
    ld	$a4,184($sp)
    beqz	$a4,.L0da77674
    lw	$a5,-13568($gp)
    beqz	$a5,.L0da77ccc
    nop
.L0da77674:
    sw	$s4,28($sp)
    # Line 1909
    addu	$a5,$s6,$s7
    sd	$a5,208($sp)
    sd	$a3,136($sp)
    addu	$a4,$s3,$s3
    sll	$a4,$a4,0x2
    sd	$a4,200($sp)
    addu	$a4,$a4,$s4
    b	.L0da76044
    sd	$a4,240($sp)
.L0da7769c:
    # Line 2025
    slti	$a5,$a2,2
    bnez	$a5,.L0da76810
    addiu	$t1,$s5,8112
    addiu	$t0,$s5,8116
    addiu	$t3,$a2,-1
    sll	$t2,$a2,0x2
    andi	$t8,$t3,0x1
    addiu	$a6,$s5,8196
    addu	$t2,$t2,$s5
    beqz	$t8,.L0da776e0
    addiu	$t2,$t2,8192
    lw	$t8,8196($s5)
    li	$t9,32
    beq	$t8,$t9,.L0da77cf4
    # Line 2033
    lw	$t8,8116($s5)
.L0da776d8:
    # Line 2031
    addiu	$a6,$a6,4
    addiu	$t0,$t0,4
.L0da776e0:
    sra	$ra,$t3,0x1
    bnez	$ra,.L0da77804
    # Line 2025
    li	$a5,32
.L0da776ec:
    b	.L0da76810
    sd	$a4,64($sp)
.L0da776f4:
    # Line 2036
    slti	$at,$a2,2
    bnez	$at,.L0da76840
    addiu	$t1,$s5,8112
    addiu	$t0,$s5,8116
    addiu	$t3,$a2,-1
    sll	$t2,$a2,0x2
    andi	$t8,$t3,0x1
    addiu	$a6,$s5,8196
    addu	$t2,$t2,$s5
    beqz	$t8,.L0da77738
    addiu	$t2,$t2,8192
    lw	$t8,8236($s5)
    li	$t9,32
    beq	$t8,$t9,.L0da77d00
    # Line 2045
    lw	$t9,8156($s5)
.L0da77730:
    # Line 2043
    addiu	$a6,$a6,4
    addiu	$t0,$t0,4
.L0da77738:
    sra	$ra,$t3,0x1
    bnez	$ra,.L0da7784c
    # Line 2036
    li	$v1,32
.L0da77744:
    b	.L0da76844
    # Line 2048
    move	$t9,$s2
.L0da7774c:
    # Line 2119
    addiu	$a3,$s5,5128
    lw	$a1,24($sp)
    addiu	$t9,$t9,10160
    addu	$a2,$s6,$s7
    addu	$a0,$s6,$s4
    sd	$s0,48($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a1,$s6,$a1
    # Line 2123
    la	$s0,sub_0da70000
    addiu	$s0,$s0,10176
    move	$t9,$s0
    addiu	$a1,$s5,5128
    move	$a0,$s3
    bal __glim_SubdivPatchSGIX
    ld	$a2,176($sp)
    la	$s1,sub_0da70000
    la	$s2,sub_0da70000
    addiu	$s1,$s1,9424
    b	.L0da7639c
    addiu	$s2,$s2,9520
.L0da7779c:
    # Line 2139
    ld	$a1,336($sp)
    mult	$a1,$s3
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a3,$s5,5128
    lw	$a1,24($sp)
    mflo	$a0
    addiu	$t9,$t9,10160
    sll	$a0,$a0,0x2
    addu	$a2,$a0,$s7
    addu	$a1,$a0,$a1
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s4
    # Line 2143
    move	$t9,$s0
    move	$a0,$s3
    addiu	$a1,$s5,5128
    bal __glim_SubdivPatchSGIX
    ld	$a2,56($sp)
    b	.L0da763e8
    # Line 2152
    ld	$ra,336($sp)
    nop
    nop
.L0da777f0:
    # Line 2025
    beq	$a3,$a5,.L0da77824
    # Line 2031
    addiu	$a6,$a6,8
.L0da777f8:
    beq	$a6,$t2,.L0da776ec
    addiu	$t0,$t0,8
    # Line 2025
    li	$a5,32
.L0da77804:
    lw	$a7,0($a6)
    li	$t3,32
    bne	$a7,$t3,.L0da777f0
    lw	$a3,4($a6)
    # Line 2033
    addiu	$t1,$t1,4
    lw	$t8,0($t0)
    b	.L0da777f0
    sw	$t8,-4($t1)
.L0da77824:
    addiu	$t1,$t1,4
    lw	$t9,4($t0)
    b	.L0da777f8
    sw	$t9,-4($t1)
    nop
    nop
    nop
.L0da77840:
    # Line 2043
    beq	$a6,$t2,.L0da77744
    addiu	$t0,$t0,8
    # Line 2036
    li	$v1,32
.L0da7784c:
    lw	$ra,40($a6)
    li	$at,32
    beq	$ra,$at,.L0da77874
    lw	$v0,44($a6)
.L0da7785c:
    bne	$v0,$v1,.L0da77840
    # Line 2043
    addiu	$a6,$a6,8
    # Line 2045
    addiu	$t1,$t1,4
    lw	$a1,44($t0)
    b	.L0da77840
    sw	$a1,36($t1)
.L0da77874:
    addiu	$t1,$t1,4
    lw	$a3,40($t0)
    b	.L0da7785c
    sw	$a3,36($t1)
.L0da77884:
    # Line 1998
    ld	$a6,208($sp)
    addu	$a5,$a5,$s5
    sw	$a6,8112($a5)
    # Line 1999
    lbu	$a4,8($t8)
    addiu	$t9,$a0,1
    b	.L0da7669c
    sw	$a4,8192($a5)
.L0da778a0:
    # Line 2022
    addiu	$t2,$t2,-1
    mult	$s3,$t2
    lw	$t0,24($sp)
    sll	$a7,$a0,0x2
    mflo	$t1
    addu	$a7,$a7,$s5
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    sw	$t0,8152($a7)
    # Line 2023
    lbu	$a6,10($t8)
    addiu	$t9,$a0,1
    b	.L0da76800
    sw	$a6,8232($a7)
.L0da778d4:
    # Line 1776
    addu	$at,$at,$s5
    sw	$s0,8112($at)
    # Line 1777
    lbu	$t3,8($t8)
    addiu	$t9,$a3,1
    b	.L0da76dbc
    sw	$t3,8192($at)
.L0da778ec:
    sd	$s7,304($sp)
    # Line 2158
    la	$s7,sub_0da70000
    ld	$s2,432($sp)
    # Line 2184
    addu	$a2,$s6,$s4
    sd	$a2,144($sp)
    # Line 2158
    addiu	$s7,$s7,8288
    # Line 2184
    move	$a0,$s3
    ld	$a1,304($sp)
    move	$t9,$s7
    move	$a3,$s4
    move	$a5,$s8
    sd	$s0,48($sp)
    addu	$a4,$s6,$a1
    bal __glim_SubdivPatchSGIX
    sd	$a4,208($sp)
    # Line 2191
    ld	$a5,176($sp)
    ld	$a3,304($sp)
    ld	$a2,208($sp)
    ld	$a1,144($sp)
    addu	$a4,$s3,$s3
    sll	$a4,$a4,0x2
    sd	$a4,200($sp)
    ld	$a7,96($sp)
    la	$s1,sub_0da70000
    # Line 2184
    ld	$s0,424($sp)
    lw	$t3,0($s2)
    # Line 2191
    addu	$a4,$a4,$s4
    # Line 2184
    lw	$t1,0($s0)
    # Line 2191
    lbu	$t2,5170($s5)
    move	$a6,$a7
    # Line 2184
    addiu	$t3,$t3,-3
    # Line 2191
    lw	$t0,-13588($gp)
    addiu	$s1,$s1,9216
    xor	$t1,$t1,$t3
    sd	$a4,240($sp)
    move	$t9,$s1
    movz	$a7,$t2,$t1
    lb	$t0,1($t0)
    dsll32	$a7,$a7,0x18
    move	$a0,$s3
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$a6,224($sp)
    slti	$a5,$a6,4
    addiu	$t1,$a6,-3
    addiu	$a6,$a6,-1
    bnez	$a5,.L0da77ba0
    sd	$a6,376($sp)
    sd	$t1,80($sp)
    ld	$t9,208($sp)
    ld	$ra,144($sp)
    sd	$ra,344($sp)
    sd	$t9,288($sp)
    sw	$s4,28($sp)
    ld	$s4,304($sp)
    ld	$t8,48($sp)
    ld	$s2,200($sp)
    sll	$a7,$s3,0x2
    subu	$a7,$a7,$s3
    addiu	$t8,$t8,2
    sd	$t8,248($sp)
    addu	$s2,$s2,$s4
    ld	$s4,240($sp)
    sll	$a7,$a7,0x2
    li	$s0,2
    b	.L0da77d9c
    sd	$a7,328($sp)
.L0da779fc:
    # Line 2083
    ld	$at,120($sp)
    beqz	$at,.L0da77a10
    lw	$v0,-13564($gp)
    beqz	$v0,.L0da77d0c
    # Line 2084
    ld	$a3,72($sp)
.L0da77a10:
    # Line 2093
    ld	$t8,136($sp)
    addiu	$t8,$t8,-3
    mult	$s3,$t8
    mflo	$s0
    sll	$s0,$s0,0x2
    b	.L0da76a9c
    addu	$s0,$s8,$s0
.L0da77a2c:
    # Line 1845
    sll	$s6,$s3,0x2
    move	$t1,$s4
    b	.L0da75d60
    sd	$a3,136($sp)
.L0da77a3c:
    # Line 2215
    addu	$a6,$s0,$s0
.L0da77a40:
    sd	$a6,232($sp)
    addiu	$a6,$a6,-2
    mult	$s3,$a6
    move	$a4,$s2
    move	$a2,$s4
    move	$t9,$s7
    mflo	$a5
    ld	$a3,344($sp)
    move	$a0,$s3
    sll	$a5,$a5,0x2
    ld	$a1,288($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
.L0da77a74:
    ld	$a7,336($sp)
    slt	$a7,$s0,$a7
    bnez	$a7,.L0da77b4c
    # Line 2203
    lw	$ra,-13588($gp)
.L0da77a84:
    # Line 2201
    ld	$t1,248($sp)
    ld	$t2,328($sp)
    ld	$t8,288($sp)
    ld	$t3,344($sp)
    addu	$t8,$t8,$s6
    sd	$t8,288($sp)
    addu	$s4,$s4,$s6
    addu	$s2,$s2,$s6
    ld	$t0,376($sp)
    addiu	$s0,$s0,1
    addu	$t3,$t3,$s6
    sd	$t3,344($sp)
    # Line 2203
    li	$t9,32
    # Line 2201
    addu	$t2,$t2,$s6
    sd	$t2,328($sp)
    addiu	$t1,$t1,2
    beq	$t0,$s0,.L0da77b90
    sd	$t1,248($sp)
    # Line 2203
    lbu	$ra,28($ra)
.L0da77ad0:
    ld	$at,248($sp)
    bne	$t9,$ra,.L0da77a3c
    ld	$v0,72($sp)
    bne	$at,$v0,.L0da77a40
    # Line 2215
    addu	$a6,$s0,$s0
    # Line 2205
    addu	$t2,$s0,$s0
    sd	$t2,232($sp)
    addiu	$t2,$t2,-2
    mult	$s3,$t2
    li	$a7,1
    move	$a4,$s2
    move	$a2,$s4
    li	$t1,2
    lbu	$t2,5170($s5)
    li	$a6,1
    xor	$t1,$s0,$t1
    move	$t0,$t9
    movz	$a6,$t2,$t1
    move	$t9,$s1
    dsll32	$a6,$a6,0x18
    ld	$a3,344($sp)
    dsra32	$a6,$a6,0x18
    mflo	$a5
    ld	$a1,288($sp)
    move	$a0,$s3
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    b	.L0da77a74
    nop
.L0da77b4c:
    # Line 2224
    ld	$a6,232($sp)
    addiu	$a6,$a6,-1
    mult	$s3,$a6
    move	$a0,$s3
    ld	$a3,328($sp)
    move	$a1,$s2
    move	$a2,$s4
    lw	$a6,28($sp)
    move	$t9,$s7
    mflo	$a5
    addu	$a3,$a3,$a6
    sll	$a5,$a5,0x2
    ld	$a4,288($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    b	.L0da77a84
    # Line 2203
    lw	$ra,-13588($gp)
.L0da77b90:
    lw	$s4,28($sp)
    ld	$t1,80($sp)
    ld	$s2,432($sp)
    ld	$s0,424($sp)
.L0da77ba0:
    # Line 2232
    ld	$t8,376($sp)
    mult	$t8,$s3
    ld	$s6,336($sp)
    mflo	$a4
    nop
    nop
    mult	$s6,$s3
    # Line 2201
    lw	$t0,0($s0)
    lw	$t3,0($s2)
    # Line 2232
    ld	$a6,88($sp)
    # Line 2201
    addiu	$t3,$t3,-3
    # Line 2232
    lbu	$t2,5171($s5)
    move	$a7,$a6
    xor	$t0,$t0,$t3
    mflo	$a1
    nop
    nop
    mult	$t1,$s3
    ld	$a5,56($sp)
    movz	$a7,$t2,$t0
    move	$a0,$s3
    ld	$a3,304($sp)
    dsll32	$a7,$a7,0x18
    move	$t9,$s1
    sll	$a4,$a4,0x2
    sd	$a4,40($sp)
    addu	$a4,$a4,$s4
    sd	$a4,416($sp)
    sll	$a1,$a1,0x2
    dsra32	$a7,$a7,0x18
    lw	$t1,-13588($gp)
    addu	$s6,$a1,$a3
    addu	$a1,$a1,$s4
    sd	$a1,128($sp)
    mflo	$t0
    lb	$t1,2($t1)
    move	$a2,$s6
    sll	$t0,$t0,0x2
    sw	$t1,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$t0
    ld	$t0,72($sp)
    mult	$t0,$s3
    ld	$a4,40($sp)
    lw	$a6,0($s0)
    lw	$a7,0($s2)
    ld	$t0,304($sp)
    addiu	$a7,$a7,-3
    mflo	$a5
    addu	$a4,$a4,$t0
    sll	$a5,$a5,0x2
    ld	$t1,416($sp)
    bne	$a6,$a7,.L0da77cac
    addu	$a5,$a5,$s8
    # Line 2244
    ld	$a3,128($sp)
    lb	$a7,5171($s5)
    move	$a1,$t1
    lw	$t1,-13588($gp)
    lb	$a6,5210($s5)
    move	$t9,$s1
    move	$a0,$s3
    lb	$t1,10($t1)
    move	$a2,$s6
    bal __glim_SubdivPatchSGIX
    sw	$t1,4($sp)
    b	.L0da75fa0
    ld	$s5,440($sp)
.L0da77cac:
    # Line 2254
    move	$t9,$s7
    move	$a0,$s3
    move	$a1,$t1
    move	$a2,$s6
    bal __glim_SubdivPatchSGIX
    ld	$a3,128($sp)
    b	.L0da75fa0
    ld	$s5,440($sp)
.L0da77ccc:
    sw	$s4,28($sp)
    # Line 1907
    addu	$a4,$s6,$s7
    sd	$a4,208($sp)
    sd	$a3,136($sp)
    addu	$t2,$s3,$s3
    sll	$t2,$t2,0x2
    sd	$t2,200($sp)
    addu	$t2,$t2,$s4
    b	.L0da76044
    sd	$t2,240($sp)
.L0da77cf4:
    move	$t1,$t0
    # Line 2033
    b	.L0da776d8
    sw	$t8,8112($s5)
.L0da77d00:
    move	$t1,$t0
    # Line 2045
    b	.L0da77730
    sw	$t9,8152($s5)
.L0da77d0c:
    # Line 2084
    mult	$a3,$s3
    # Line 2085
    ld	$a2,224($sp)
    addiu	$a2,$a2,-1
    # Line 2084
    mflo	$s0
    nop
    nop
    # Line 2085
    mult	$s3,$a2
    lb	$a7,5171($s5)
    lb	$a6,5177($s5)
    ld	$a1,64($sp)
    move	$a0,$s3
    lb	$t1,9($t8)
    move	$t9,$s4
    lw	$a4,24($sp)
    addu	$a1,$a1,$s7
    # Line 2084
    sll	$s0,$s0,0x2
    # Line 2085
    sw	$t1,4($sp)
    # Line 2084
    addu	$s0,$s8,$s0
    # Line 2085
    mflo	$t0
    ld	$a3,112($sp)
    move	$a5,$s0
    sll	$t0,$t0,0x2
    ld	$a2,128($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a4,$a4,$t0
    b	.L0da76a9c
    nop
.L0da77d78:
    # Line 2048
    li	$a5,1
    b	.L0da7693c
    nop
.L0da77d84:
    # Line 2055
    li	$a5,1
    b	.L0da76a3c
    nop
.L0da77d90:
    # Line 2160
    li	$t2,32
    b	.L0da76b94
    ld	$t1,352($sp)
.L0da77d9c:
    # Line 2203
    lw	$ra,-13588($gp)
    li	$t9,32
    b	.L0da77ad0
    lbu	$ra,28($ra)
.end DoRow

# Function: DoNormal
# Declared: Line 2267 (Source lines: 2268-2458)
# Address: 0x0da77db0 - 0x0da78e6c (Size: 4284 bytes, Frame: 208)
.ent DoNormal
DoNormal:
    # Line 2268
    addiu	$sp,$sp,-336
    # Line 2279
    sd	$zero,248($sp)
    sd	$s2,280($sp)
    sd	$s3,288($sp)
    sd	$ra,296($sp)
    sd	$s4,304($sp)
    sd	$s7,312($sp)
    sd	$s1,320($sp)
    sd	$s8,328($sp)
    addiu	$t8,$a1,-2
    sd	$t8,176($sp)
    lw	$a2,-13560($gp)
    addiu	$t9,$a1,-1
    sd	$t9,184($sp)
    sltiu	$a2,$a2,1
    sd	$a2,48($sp)
    # Line 2268
    la	$v1,sub_0daf0000
    sd	$s6,56($sp)
    # Line 2279
    la	$s6,sub_0da70000
    # Line 2268
    addiu	$v1,$v1,-10976
    # Line 2279
    addiu	$t9,$v1,1236
    sd	$t9,88($sp)
    # Line 2268
    sd	$a1,232($sp)
    # Line 2279
    sll	$a1,$a0,0x3
    # Line 2268
    sd	$s0,64($sp)
    # Line 2279
    addu	$a1,$a1,$a0
    # Line 2268
    la	$s0,sub_0db10000
    # Line 2279
    sll	$a1,$a1,0x4
    sd	$a1,224($sp)
    addiu	$t8,$v1,1232
    # Line 2268
    addiu	$s0,$s0,-21520
    sd	$s5,72($sp)
    # Line 2279
    addiu	$a6,$s0,8152
    sll	$a5,$a0,0x2
    # Line 2270
    lw	$v0,4112($zero)
    # Line 2279
    addu	$a5,$a5,$v1
    addiu	$s5,$v1,1228
    sd	$s5,128($sp)
    addiu	$a5,$a5,1224
    sll	$a1,$a2,0x2
    # Line 2273
    lw	$s5,6084($v0)
    # Line 2279
    sd	$a5,216($sp)
    mtc1	$zero,$f0
    subu	$a1,$a1,$a2
    sd	$a5,240($sp)
    sll	$a1,$a1,0x2
    addu	$a3,$s5,$s5
    addiu	$at,$v1,1240
    # Line 2268
    sdc1	$f24,16($sp)
    # Line 2279
    sll	$a3,$a3,0x2
    li	$a5,1
    sd	$a3,112($sp)
    sll	$a3,$a2,0x3
    # Line 2274
    lwc1	$f24,6076($v0)
    # Line 2279
    sll	$a4,$s5,0x2
    subu	$a3,$a3,$a2
    subu	$a1,$a1,$a2
    sd	$a4,264($sp)
    sll	$a3,$a3,0x3
    subu	$a4,$a4,$s5
    sd	$a4,104($sp)
    addu	$a3,$a3,$a2
    sll	$a1,$a1,0x2
    c.eq.s	$f24,$f0
    addu	$a4,$s5,$a3
    sd	$a4,144($sp)
    li	$a4,1
    sd	$a3,160($sp)
    sll	$a3,$a3,0x2
    sd	$t8,96($sp)
    movt	$a4,$zero,$fcc0
    addu	$a3,$a3,$s0
    addiu	$a3,$a3,10328
    sd	$a3,152($sp)
    li	$a3,684
    # Line 2268
    sd	$a0,40($sp)
    # Line 2279
    multu	$a2,$a3
    li	$a3,2
    sd	$a6,168($sp)
    subu	$a1,$a1,$a2
    movz	$a3,$a5,$a4
    sd	$at,80($sp)
    sll	$a1,$a1,0x2
    subu	$a0,$a0,$a3
    subu	$a1,$a1,$a2
    sd	$a1,208($sp)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 2276
    lw	$a0,6100($v0)
    # Line 2275
    lw	$v0,6096($v0)
    # Line 2276
    sd	$a0,200($sp)
    # Line 2279
    addiu	$v1,$v1,1224
    sd	$v1,120($sp)
    mflo	$at
    addiu	$s6,$s6,9424
    # Line 2275
    sd	$v0,192($sp)
    # Line 2279
    addu	$at,$at,$s0
    addiu	$at,$at,8272
    b	.L0da78e54
    sd	$at,136($sp)
.L0da77f40:
    # Line 2393
    ld	$v1,192($sp)
    blez	$v1,.L0da77ffc
    # Line 2426
    lbu	$at,5168($s0)
    # Line 2393
    lw	$t2,-13576($gp)
    ld	$a7,224($sp)
    sll	$a6,$t2,0x2
    ld	$t0,192($sp)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$s0
    addu	$a7,$s0,$a7
    move	$t3,$t0
    andi	$t1,$t0,0x7
    addu	$t0,$t0,$t2
    addiu	$a7,$a7,5232
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,8112
    addu	$t0,$t0,$s0
    beqz	$t1,.L0da77fa4
    addiu	$t0,$t0,8112
.L0da77f8c:
    # Line 2423
    ld	$t2,264($sp)
    addiu	$t1,$t1,-1
    addiu	$a6,$a6,4
    # Line 2424
    sw	$a7,-4($a6)
    bnez	$t1,.L0da77f8c
    # Line 2423
    addu	$a7,$a7,$t2
.L0da77fa4:
    sra	$t8,$t3,0x3
    beqz	$t8,.L0da77ffc
    nop
.L0da77fb0:
    ld	$ra,264($sp)
    addiu	$a6,$a6,32
    addu	$t9,$a7,$ra
    # Line 2424
    sw	$t9,-28($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-24($a6)
    sw	$a7,-32($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-20($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-16($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-12($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-8($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-4($a6)
    # Line 2423
    bne	$a6,$t0,.L0da77fb0
    addu	$a7,$t9,$ra
.L0da77ffc:
    ld	$ra,200($sp)
    ld	$t0,200($sp)
    ld	$a7,224($sp)
    lw	$t3,-13572($gp)
    blez	$ra,.L0da780bc
    move	$t2,$t0
    andi	$t1,$t0,0x7
    sll	$a6,$t3,0x2
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$s0
    addu	$a7,$s0,$a7
    addu	$t0,$t0,$t3
    addiu	$a7,$a7,5376
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,8112
    addu	$t0,$t0,$s0
    beqz	$t1,.L0da7805c
    addiu	$t0,$t0,8112
.L0da78044:
    # Line 2426
    ld	$t3,264($sp)
    addiu	$t1,$t1,-1
    addiu	$a6,$a6,4
    # Line 2427
    sw	$a7,36($a6)
    bnez	$t1,.L0da78044
    # Line 2426
    addu	$a7,$a7,$t3
.L0da7805c:
    sra	$t8,$t2,0x3
    beqz	$t8,.L0da780bc
    nop
    nop
    nop
.L0da78070:
    ld	$ra,264($sp)
    addiu	$a6,$a6,32
    addu	$t9,$a7,$ra
    # Line 2427
    sw	$t9,12($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,16($a6)
    sw	$a7,8($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,20($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,24($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,28($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,32($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,36($a6)
    # Line 2426
    bne	$a6,$t0,.L0da78070
    addu	$a7,$t9,$ra
.L0da780bc:
    li	$ra,3
    addiu	$a6,$s0,8192
    beq	$ra,$at,.L0da78b78
    lw	$t2,-13584($gp)
    # Line 2431
    lw	$v0,-13592($gp)
.L0da780d0:
    beqz	$v0,.L0da780f8
    # Line 2437
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,11104
    addiu	$a3,$s0,8112
    move	$a2,$t2
    lbu	$a0,5170($s0)
    move	$a1,$s5
    bal __glim_SubdivPatchSGIX
    ld	$a4,136($sp)
    lw	$t2,-13584($gp)
.L0da780f8:
    ld	$at,216($sp)
    ld	$ra,240($sp)
    # Line 2438
    # lw $t9, -32672($gp) # &sub_0da70000
    xor	$ra,$ra,$at
    ld	$at,152($sp)
    addiu	$a3,$s0,10784
    addiu	$t9,$t9,12688
    addiu	$a2,$s0,8112
    movz	$a3,$at,$ra
    move	$a1,$t2
    bal __glim_SubdivPatchSGIX
    lbu	$a0,5170($s0)
    lbu	$v1,5169($s0)
    li	$v0,3
    # Line 2442
    lw	$a0,-13592($gp)
    # Line 2438
    addiu	$t0,$s0,8112
    beq	$v0,$v1,.L0da78bc8
    lw	$t1,-13580($gp)
.L0da78140:
    # Line 2442
    beqz	$a0,.L0da78190
    ld	$v0,216($sp)
    # Line 2448
    ld	$a6,24($sp)
    addiu	$a6,$a6,-3
    mult	$s5,$a6
    ld	$a4,208($sp)
    # lw $t9, -32672($gp) # &sub_0da70000
    mflo	$a5
    move	$a2,$t1
    addu	$a4,$a4,$a5
    addiu	$t9,$t9,11104
    sll	$a4,$a4,0x2
    ld	$a3,168($sp)
    move	$a1,$s5
    addu	$a4,$s0,$a4
    lbu	$a0,5171($s0)
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lw	$t1,-13580($gp)
    ld	$v0,216($sp)
.L0da78190:
    ld	$a4,24($sp)
    ld	$ra,240($sp)
    # Line 2450
    ld	$at,160($sp)
    # Line 2448
    sll	$a3,$a4,0x2
    xor	$ra,$ra,$v0
    # Line 2450
    # lw $t9, -32672($gp) # &sub_0da70000
    # Line 2448
    subu	$a3,$a3,$a4
    # Line 2450
    addu	$at,$a3,$at
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,12688
    sll	$at,$at,0x2
    addu	$a3,$s0,$a3
    addu	$at,$s0,$at
    addiu	$a3,$a3,10748
    addiu	$at,$at,10292
    lbu	$a0,5171($s0)
    movz	$a3,$at,$ra
    move	$a1,$t1
    bal __glim_SubdivPatchSGIX
    ld	$a2,168($sp)
    # Line 2285
    ld	$a7,248($sp)
.L0da781e4:
    ld	$t0,224($sp)
    ld	$a6,120($sp)
    ld	$a5,240($sp)
    addiu	$t0,$t0,-144
    # Line 2286
    la	$a0,sub_0daf0000
    # Line 2285
    sd	$t0,224($sp)
    # Line 2288
    li	$t0,3
    # Line 2285
    addiu	$a5,$a5,-4
    sd	$a5,240($sp)
    addiu	$a7,$a7,1
    # Line 2286
    addiu	$a0,$a0,-10976
    sd	$a7,248($sp)
    # Line 2285
    beq	$a5,$a6,.L0da78dc0
    # Line 2286
    addiu	$t2,$a0,1224
    ld	$t1,240($sp)
.L0da78220:
    # Line 2386
    ld	$s4,264($sp)
    # Line 2288
    ld	$a5,176($sp)
    # Line 2386
    ld	$s3,144($sp)
    move	$s7,$s4
    # Line 2286
    beq	$t1,$t2,.L0da783e0
    # Line 2288
    srl	$a1,$a5,0x1f
    # Line 2298
    ld	$a6,176($sp)
    # Line 2300
    li	$t9,0xaaaa
    # Line 2305
    li	$a7,0xaaaa
    # Line 2286
    ld	$a2,128($sp)
    # Line 2293
    li	$a4,3
    li	$v1,0xaaaa
    # Line 2286
    ld	$a1,240($sp)
    # Line 2294
    li	$t8,0xaaaa
    # Line 2293
    dsll	$v1,$v1,0x10
    # Line 2286
    ld	$a3,240($sp)
    # Line 2294
    dsll	$t8,$t8,0x10
    # Line 2293
    ori	$v1,$v1,0xaaab
    # Line 2294
    ld	$a0,184($sp)
    # Line 2286
    beq	$a1,$a2,.L0da78868
    # Line 2294
    ori	$t8,$t8,0xaaab
    # Line 2286
    ld	$a4,96($sp)
    # Line 2298
    li	$a5,0xaaaa
    # Line 2300
    dsll	$t9,$t9,0x10
    # Line 2286
    beq	$a3,$a4,.L0da7898c
    # Line 2300
    ori	$t9,$t9,0xaaab
    # Line 2286
    ld	$t0,80($sp)
    # Line 2305
    dsll	$a7,$a7,0x10
    # Line 2286
    ld	$a6,88($sp)
    # Line 2303
    li	$a4,3
    li	$v1,0xaaaa
    # Line 2286
    ld	$a5,240($sp)
    # Line 2304
    li	$t8,0xaaaa
    # Line 2303
    dsll	$v1,$v1,0x10
    # Line 2304
    ld	$a0,184($sp)
    dsll	$t8,$t8,0x10
    # Line 2303
    ori	$v1,$v1,0xaaab
    # Line 2309
    ld	$a3,184($sp)
    # Line 2286
    beq	$a5,$a6,.L0da78c10
    # Line 2304
    ori	$t8,$t8,0xaaab
    # Line 2308
    ld	$t2,176($sp)
    # Line 2286
    ld	$a7,240($sp)
    # Line 2308
    li	$v0,0xaaaa
    # Line 2309
    li	$t1,0xaaaa
    # Line 2310
    li	$a2,0xaaaa
    # Line 2309
    dsll	$t1,$t1,0x10
    # Line 2286
    bne	$a7,$t0,.L0da784d8
    # Line 2309
    ori	$t1,$t1,0xaaab
    # Line 2310
    dsll	$a2,$a2,0x10
    # Line 2308
    srl	$t9,$t2,0x1f
    negu	$at,$t2
    dsll	$v0,$v0,0x10
    ori	$v0,$v0,0xaaab
    movz	$at,$t2,$t9
    multu	$at,$v0
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$t8,$ra
    li	$v0,3
    movz	$t8,$ra,$t9
    mult	$t8,$v0
    mflo	$t3
    li	$t8,684
    subu	$t2,$t2,$t3
    multu	$t8,$t2
    # Line 2309
    negu	$t0,$a3
    srl	$a6,$a3,0x1f
    movz	$t0,$a3,$a6
    # Line 2308
    mflo	$t3
    nop
    nop
    # Line 2309
    multu	$t0,$t1
    mfhi	$a7
    sra	$a7,$a7,0x1
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    mult	$a5,$v0
    mflo	$a4
    nop
    subu	$a3,$a3,$a4
    multu	$t8,$a3
    # Line 2310
    ld	$t9,232($sp)
    negu	$a1,$t9
    srl	$v1,$t9,0x1f
    ori	$a2,$a2,0xaaab
    movz	$a1,$t9,$v1
    # Line 2309
    mflo	$t2
    nop
    nop
    # Line 2310
    multu	$a1,$a2
    mfhi	$a0
    sra	$a0,$a0,0x1
    negu	$at,$a0
    movz	$at,$a0,$v1
    mult	$at,$v0
    mflo	$ra
    nop
    subu	$t9,$t9,$ra
    multu	$t8,$t9
    # Line 2308
    addu	$t3,$s0,$t3
    addiu	$t3,$t3,3072
    sw	$t3,0($sp)
    # Line 2309
    addu	$t2,$s0,$t2
    # Line 2310
    mflo	$t1
    # Line 2309
    addiu	$t2,$t2,3072
    sw	$t2,4($sp)
    # Line 2310
    addu	$t1,$s0,$t1
    addiu	$t1,$t1,3072
    # Line 2311
    b	.L0da784d8
    # Line 2310
    sw	$t1,8($sp)
    nop
    nop
.L0da783e0:
    # Line 2288
    li	$a4,0xaaaa
    negu	$a3,$a5
    dsll	$a4,$a4,0x10
    movz	$a3,$a5,$a1
    ori	$a4,$a4,0xaaab
    multu	$a3,$a4
    mfhi	$a2
    sra	$a2,$a2,0x1
    negu	$a0,$a2
    movz	$a0,$a2,$a1
    mult	$a0,$t0
    # Line 2289
    li	$v1,0xaaaa
    ld	$a3,184($sp)
    dsll	$v1,$v1,0x10
    negu	$v0,$a3
    srl	$ra,$a3,0x1f
    ori	$v1,$v1,0xaaab
    movz	$v0,$a3,$ra
    # Line 2288
    mflo	$a6
    nop
    nop
    # Line 2289
    multu	$v0,$v1
    mfhi	$at
    sra	$at,$at,0x1
    negu	$t9,$at
    movz	$t9,$at,$ra
    mult	$t9,$t0
    # Line 2290
    li	$t8,0xaaaa
    ld	$a1,232($sp)
    dsll	$t8,$t8,0x10
    negu	$t3,$a1
    srl	$t1,$a1,0x1f
    ori	$t8,$t8,0xaaab
    movz	$t3,$a1,$t1
    # Line 2289
    mflo	$a4
    nop
    nop
    # Line 2290
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$a7,$t2
    movz	$a7,$t2,$t1
    mult	$a7,$t0
    # Line 2288
    subu	$a5,$a5,$a6
    sll	$a2,$a5,0x3
    addu	$a2,$a2,$a5
    sll	$a2,$a2,0x4
    addu	$a2,$s0,$a2
    # Line 2289
    subu	$a3,$a3,$a4
    # Line 2290
    mflo	$a4
    # Line 2289
    sll	$a0,$a3,0x3
    # Line 2290
    subu	$a1,$a1,$a4
    # Line 2289
    addu	$a0,$a0,$a3
    # Line 2290
    sll	$v1,$a1,0x3
    # Line 2288
    sw	$a2,0($sp)
    # Line 2289
    sll	$a0,$a0,0x4
    # Line 2290
    addu	$v1,$v1,$a1
    # Line 2289
    addu	$a0,$s0,$a0
    sw	$a0,4($sp)
    # Line 2290
    sll	$v1,$v1,0x4
    addu	$v1,$s0,$v1
    sw	$v1,8($sp)
.L0da784d8:
    # Line 2314
    ld	$a0,240($sp)
    lw	$a0,0($a0)
    li	$a6,2
    ld	$t0,232($sp)
    # Line 2386
    addu	$s4,$s4,$s0
    # Line 2314
    addiu	$a2,$a0,-1
    # Line 2386
    ld	$t8,104($sp)
    addiu	$s4,$s4,10784
    # Line 2314
    addiu	$a7,$a0,-2
    sd	$a7,256($sp)
    beq	$a2,$t0,.L0da785e8
    slt	$a6,$a6,$a7
    sd	$a2,32($sp)
    li	$s1,2
    beqz	$a6,.L0da78624
    sd	$a0,24($sp)
    lw	$s8,4($sp)
    la	$s7,sub_0da70000
    ld	$s4,264($sp)
    ld	$s3,144($sp)
    ld	$s2,208($sp)
    addiu	$s7,$s7,10608
    addu	$s4,$s4,$s0
    sll	$s3,$s3,0x2
    addu	$s2,$s5,$s2
    addiu	$s4,$s4,10784
    sll	$s2,$s2,0x2
    addu	$s3,$s3,$s0
    addu	$s2,$s2,$s0
    addiu	$s3,$s3,10328
    addiu	$s2,$s2,8272
    nop
    nop
    nop
.L0da78560:
    # Line 2320
    move	$a0,$s5
    move	$t9,$s6
    move	$a1,$s1
    lw	$a2,0($sp)
    move	$a3,$s8
    lw	$a4,8($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s0,5128
    lw	$t8,-13592($gp)
    beqz	$t8,.L0da785a0
    # Line 2326
    move	$a0,$s5
    move	$t9,$s7
    addiu	$a2,$s0,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    move	$a3,$s2
.L0da785a0:
    # Line 2330
    # lw $t9, -32672($gp) # &sub_0da70000
    ld	$ra,248($sp)
    move	$a2,$s4
    addiu	$t9,$t9,11344
    addiu	$a1,$s0,5128
    movz	$a2,$s3,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    # Line 2319
    ld	$v0,256($sp)
    ld	$at,264($sp)
    addiu	$s1,$s1,1
    slt	$v0,$s1,$v0
    addu	$s4,$s4,$at
    addu	$s3,$s3,$at
    bnez	$v0,.L0da78560
    addu	$s2,$s2,$at
    b	.L0da7862c
    lw	$t9,-13588($gp)
.L0da785e8:
    # Line 2386
    li	$s1,2
    beqz	$a6,.L0da77f40
    sd	$a0,24($sp)
    ld	$s2,208($sp)
    sll	$t8,$t8,0x2
    sll	$s3,$s3,0x2
    addu	$s2,$s5,$s2
    addu	$s3,$s3,$s0
    sll	$s2,$s2,0x2
    ld	$s8,112($sp)
    addiu	$s3,$s3,10328
    addu	$s2,$s2,$s0
    sd	$t8,272($sp)
    b	.L0da78e40
    addiu	$s2,$s2,8272
.L0da78624:
    # Line 2319
    lw	$s8,4($sp)
    lw	$t9,-13588($gp)
.L0da7862c:
    lbu	$t9,1($t9)
    li	$t8,32
    beq	$t8,$t9,.L0da78a8c
    # Line 2338
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    # Line 2348
    move	$a0,$s5
    move	$t9,$s6
    addiu	$a5,$s0,5128
    lw	$a4,8($sp)
    move	$a3,$s8
    lw	$a2,0($sp)
    bal __glim_SubdivPatchSGIX
    li	$a1,1
    lw	$ra,-13592($gp)
    beqz	$ra,.L0da78680
    # Line 2354
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,10608
    move	$a0,$s5
    addiu	$a2,$s0,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    ld	$a3,136($sp)
.L0da78680:
    ld	$at,216($sp)
    ld	$ra,240($sp)
    # Line 2358
    # lw $t9, -32672($gp) # &sub_0da70000
    xor	$ra,$ra,$at
    ld	$at,152($sp)
    addiu	$a2,$s0,10784
    addiu	$t9,$t9,11344
    addiu	$a1,$s0,5128
    movz	$a2,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    lw	$s8,4($sp)
.L0da786b0:
    ld	$a0,24($sp)
    addiu	$a0,$a0,-3
    mult	$s5,$a0
    lw	$v1,-13588($gp)
    lbu	$v1,2($v1)
    li	$v0,32
    mflo	$s1
    beq	$v0,$v1,.L0da78ad8
    # Line 2376
    ld	$a1,256($sp)
    move	$t9,$s6
    move	$a0,$s5
    lw	$a4,8($sp)
    addiu	$a5,$s0,5128
    move	$a3,$s8
    bal __glim_SubdivPatchSGIX
    lw	$a2,0($sp)
    lw	$a1,-13592($gp)
    beqz	$a1,.L0da78724
    # Line 2382
    ld	$a3,208($sp)
    move	$a0,$s5
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a2,$s0,5128
    addu	$a3,$s1,$a3
    addiu	$t9,$t9,10608
    sll	$a3,$a3,0x2
    li	$a1,6
    addu	$a3,$s0,$a3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
.L0da78724:
    # Line 2386
    ld	$at,160($sp)
    ld	$v0,216($sp)
    sll	$a2,$s1,0x2
    ld	$ra,240($sp)
    addu	$a2,$s0,$a2
    addu	$at,$s1,$at
    addiu	$a2,$a2,10784
    # lw $t9, -32672($gp) # &sub_0da70000
    sll	$at,$at,0x2
    xor	$ra,$ra,$v0
    addu	$at,$s0,$at
    addiu	$t9,$t9,11344
    addiu	$at,$at,10328
    addiu	$a1,$s0,5128
    movz	$a2,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    b	.L0da781e4
    # Line 2285
    ld	$a7,248($sp)
.L0da78770:
    # Line 2405
    lw	$a4,8($sp)
    move	$t9,$s6
    move	$a0,$s5
    move	$a1,$s1
    lw	$a3,4($sp)
    addiu	$a5,$s0,5128
    bal __glim_SubdivPatchSGIX
    lw	$a2,0($sp)
    lw	$v0,-13592($gp)
    beqz	$v0,.L0da787b4
    # Line 2411
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    move	$a0,$s5
    addiu	$t9,$t9,10608
    addiu	$a2,$s0,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    move	$a3,$s2
.L0da787b4:
    # Line 2415
    # lw $t9, -32672($gp) # &sub_0da70000
    ld	$ra,248($sp)
    move	$a2,$s4
    addiu	$t9,$t9,11344
    addiu	$a1,$s0,5128
    movz	$a2,$s3,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
.L0da787d4:
    # Line 2393
    ld	$v1,264($sp)
.L0da787d8:
    addu	$s8,$s8,$v1
    addu	$s4,$s4,$v1
    ld	$at,256($sp)
    ld	$v0,272($sp)
    addu	$s7,$s7,$v1
    addiu	$s1,$s1,1
    addu	$s3,$s3,$v1
    slt	$at,$s1,$at
    addu	$s2,$s2,$v1
    addu	$v0,$v0,$v1
    # Line 2386
    lw	$v1,-13588($gp)
    # Line 2393
    beqz	$at,.L0da77f40
    sd	$v0,272($sp)
    # Line 2386
    lbu	$v1,3($v1)
.L0da78810:
    li	$v0,32
    bne	$v0,$v1,.L0da78770
    # Line 2395
    lw	$a0,4($sp)
    # lw $t9, -32672($gp) # &sub_0da70000
    ld	$a2,272($sp)
    addiu	$a3,$s0,5128
    addiu	$t9,$t9,10160
    addu	$a2,$a2,$a0
    addu	$a1,$s7,$a0
    bal __glim_SubdivPatchSGIX
    addu	$a0,$s8,$a0
    lw	$a3,-13592($gp)
    beqz	$a3,.L0da787d4
    # Line 2400
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a2,$s0,5128
    addiu	$t9,$t9,10928
    move	$a1,$s5
    li	$a0,1
    bal __glim_SubdivPatchSGIX
    move	$a3,$s2
    b	.L0da787d8
    # Line 2393
    ld	$v1,264($sp)
.L0da78868:
    # Line 2293
    ld	$a2,176($sp)
    negu	$v0,$a2
    srl	$ra,$a2,0x1f
    movz	$v0,$a2,$ra
    multu	$v0,$v1
    mfhi	$at
    sra	$at,$at,0x1
    negu	$t9,$at
    movz	$t9,$at,$ra
    mult	$t9,$a4
    # Line 2294
    negu	$t3,$a0
    srl	$t1,$a0,0x1f
    movz	$t3,$a0,$t1
    # Line 2293
    mflo	$a3
    nop
    nop
    # Line 2294
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    mult	$t0,$a4
    # Line 2295
    li	$a7,0xaaaa
    ld	$v1,232($sp)
    dsll	$a7,$a7,0x10
    negu	$a6,$v1
    srl	$a5,$v1,0x1f
    ori	$a7,$a7,0xaaab
    movz	$a6,$v1,$a5
    # Line 2294
    mflo	$a1
    nop
    nop
    # Line 2295
    multu	$a6,$a7
    # Line 2293
    subu	$a2,$a2,$a3
    sll	$v0,$a2,0x2
    # Line 2295
    mfhi	$a6
    # Line 2293
    subu	$v0,$v0,$a2
    # Line 2295
    sra	$a6,$a6,0x1
    # Line 2293
    sll	$v0,$v0,0x2
    # Line 2295
    negu	$a3,$a6
    movz	$a3,$a6,$a5
    # Line 2293
    subu	$v0,$v0,$a2
    # Line 2295
    mult	$a3,$a4
    # Line 2293
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a2
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    addiu	$v0,$v0,576
    # Line 2294
    subu	$a0,$a0,$a1
    # Line 2295
    mflo	$a1
    # Line 2294
    sll	$at,$a0,0x2
    # Line 2295
    subu	$v1,$v1,$a1
    # Line 2294
    subu	$at,$at,$a0
    # Line 2295
    sll	$ra,$v1,0x2
    # Line 2294
    sll	$at,$at,0x2
    # Line 2295
    subu	$ra,$ra,$v1
    # Line 2294
    subu	$at,$at,$a0
    # Line 2295
    sll	$ra,$ra,0x2
    # Line 2294
    sll	$at,$at,0x2
    # Line 2295
    subu	$ra,$ra,$v1
    # Line 2294
    addu	$at,$at,$a0
    # Line 2295
    sll	$ra,$ra,0x2
    # Line 2294
    sll	$at,$at,0x2
    # Line 2295
    addu	$ra,$ra,$v1
    # Line 2293
    sw	$v0,0($sp)
    # Line 2294
    addu	$at,$s0,$at
    # Line 2295
    sll	$ra,$ra,0x2
    # Line 2294
    addiu	$at,$at,576
    sw	$at,4($sp)
    # Line 2295
    addu	$ra,$s0,$ra
    addiu	$ra,$ra,576
    # Line 2296
    b	.L0da784d8
    # Line 2295
    sw	$ra,8($sp)
.L0da7898c:
    # Line 2298
    srl	$a2,$a6,0x1f
    negu	$a4,$a6
    dsll	$a5,$a5,0x10
    ori	$a5,$a5,0xaaab
    movz	$a4,$a6,$a2
    multu	$a4,$a5
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a1,$a3
    li	$t0,3
    movz	$a1,$a3,$a2
    mult	$a1,$t0
    # Line 2299
    li	$a0,0xaaaa
    ld	$a4,184($sp)
    dsll	$a0,$a0,0x10
    negu	$v1,$a4
    srl	$at,$a4,0x1f
    ori	$a0,$a0,0xaaab
    movz	$v1,$a4,$at
    # Line 2298
    mflo	$t1
    nop
    nop
    # Line 2299
    multu	$v1,$a0
    mfhi	$v0
    sra	$v0,$v0,0x1
    negu	$ra,$v0
    movz	$ra,$v0,$at
    mult	$ra,$t0
    # Line 2300
    ld	$a3,232($sp)
    negu	$t8,$a3
    srl	$t2,$a3,0x1f
    movz	$t8,$a3,$t2
    # Line 2299
    mflo	$a5
    nop
    nop
    # Line 2300
    multu	$t8,$t9
    mfhi	$t3
    sra	$t3,$t3,0x1
    negu	$a7,$t3
    movz	$a7,$t3,$t2
    # Line 2298
    subu	$a6,$a6,$t1
    # Line 2300
    mult	$a7,$t0
    # Line 2298
    sll	$a2,$a6,0x6
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    addu	$a2,$s0,$a2
    addiu	$a2,$a2,1120
    # Line 2299
    subu	$a4,$a4,$a5
    # Line 2300
    mflo	$a5
    # Line 2299
    sll	$a1,$a4,0x6
    # Line 2300
    subu	$a3,$a3,$a5
    # Line 2299
    subu	$a1,$a1,$a4
    # Line 2300
    sll	$a0,$a3,0x6
    # Line 2299
    sll	$a1,$a1,0x2
    # Line 2300
    subu	$a0,$a0,$a3
    # Line 2298
    sw	$a2,0($sp)
    # Line 2299
    addu	$a1,$s0,$a1
    # Line 2300
    sll	$a0,$a0,0x2
    # Line 2299
    addiu	$a1,$a1,1120
    sw	$a1,4($sp)
    # Line 2300
    addu	$a0,$s0,$a0
    addiu	$a0,$a0,1120
    # Line 2301
    b	.L0da784d8
    # Line 2300
    sw	$a0,8($sp)
.L0da78a8c:
    # Line 2338
    ld	$a2,112($sp)
    addiu	$a3,$s0,5128
    ld	$a0,264($sp)
    addiu	$t9,$t9,10160
    move	$a1,$s8
    addu	$a2,$a2,$s8
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s8
    lw	$a3,-13592($gp)
    beqz	$a3,.L0da786b0
    # Line 2343
    nop	# was lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,10928
    addiu	$a2,$s0,5128
    move	$a1,$s5
    li	$a0,1
    bal __glim_SubdivPatchSGIX
    ld	$a3,136($sp)
    b	.L0da786b0
    lw	$s8,4($sp)
.L0da78ad8:
    # Line 2365
    ld	$a2,256($sp)
    mult	$a2,$s5
    ld	$a1,32($sp)
    mflo	$a0
    nop
    nop
    mult	$a1,$s5
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$a3,$s0,5128
    sll	$s2,$s1,0x2
    addiu	$t9,$t9,10160
    addu	$a1,$s2,$s8
    sll	$a0,$a0,0x2
    mflo	$a2
    addu	$a0,$s8,$a0
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$s8,$a2
    lw	$a3,-13592($gp)
    beqz	$a3,.L0da781e4
    # Line 2285
    ld	$a7,248($sp)
    # Line 2370
    ld	$at,208($sp)
    addiu	$a2,$s0,5128
    ld	$v0,216($sp)
    addu	$a3,$s2,$s0
    ld	$ra,240($sp)
    addu	$at,$s1,$at
    addiu	$a3,$a3,10784
    # lw $t9, -32672($gp) # &sub_0da70000
    sll	$at,$at,0x2
    xor	$ra,$ra,$v0
    addu	$at,$s0,$at
    addiu	$t9,$t9,10928
    addiu	$at,$at,8272
    move	$a1,$s5
    movz	$a3,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,1
    b	.L0da781e4
    # Line 2285
    ld	$a7,248($sp)
.L0da78b78:
    # Line 2426
    blez	$t2,.L0da780d0
    # Line 2431
    lw	$v0,-13592($gp)
    # Line 2426
    sll	$t1,$t2,0x2
    addu	$t1,$t1,$s0
    addiu	$a7,$s0,8112
    move	$t8,$t2
    andi	$t3,$t2,0x1
    sra	$ra,$t8,0x1
    move	$t0,$a7
    beqz	$t3,.L0da78bb8
    addiu	$t1,$t1,8192
    li	$t9,32
    lw	$t3,8192($s0)
    # Line 2431
    addiu	$a7,$a7,4
    # Line 2426
    beq	$t3,$t9,.L0da78e00
    # Line 2431
    addiu	$a6,$a6,4
.L0da78bb8:
    bnez	$ra,.L0da78d3c
    # Line 2426
    li	$a3,32
.L0da78bc0:
    b	.L0da780d0
    # Line 2431
    lw	$v0,-13592($gp)
.L0da78bc8:
    # Line 2438
    blez	$t1,.L0da78140
    sll	$a7,$t1,0x2
    addiu	$a6,$s0,8192
    move	$t8,$t1
    andi	$t2,$t1,0x1
    addu	$a7,$a7,$s0
    sra	$t9,$t8,0x1
    beqz	$t2,.L0da78bfc
    addiu	$a7,$a7,8192
    lw	$t2,8232($s0)
    li	$t3,32
    beq	$t2,$t3,.L0da78e10
    # Line 2442
    addiu	$a6,$a6,4
.L0da78bfc:
    bnez	$t9,.L0da78e4c
    # Line 2438
    li	$t3,32
    b	.L0da78140
    nop
    nop
.L0da78c10:
    # Line 2305
    ori	$a7,$a7,0xaaab
    # Line 2303
    ld	$a2,176($sp)
    negu	$v0,$a2
    srl	$ra,$a2,0x1f
    movz	$v0,$a2,$ra
    multu	$v0,$v1
    mfhi	$at
    sra	$at,$at,0x1
    negu	$t9,$at
    movz	$t9,$at,$ra
    mult	$t9,$a4
    # Line 2304
    negu	$t3,$a0
    srl	$t1,$a0,0x1f
    movz	$t3,$a0,$t1
    # Line 2303
    mflo	$a3
    nop
    nop
    # Line 2304
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    mult	$t0,$a4
    # Line 2305
    ld	$v1,232($sp)
    negu	$a6,$v1
    srl	$a5,$v1,0x1f
    movz	$a6,$v1,$a5
    # Line 2304
    mflo	$a1
    nop
    nop
    # Line 2305
    multu	$a6,$a7
    # Line 2303
    subu	$a2,$a2,$a3
    sll	$v0,$a2,0x2
    # Line 2305
    mfhi	$a6
    # Line 2303
    subu	$v0,$v0,$a2
    # Line 2305
    sra	$a6,$a6,0x1
    # Line 2303
    sll	$v0,$v0,0x3
    # Line 2305
    negu	$a3,$a6
    movz	$a3,$a6,$a5
    # Line 2303
    addu	$v0,$v0,$a2
    # Line 2305
    mult	$a3,$a4
    # Line 2303
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$a2
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    addiu	$v0,$v0,1880
    # Line 2304
    subu	$a0,$a0,$a1
    # Line 2305
    mflo	$a1
    # Line 2304
    sll	$at,$a0,0x2
    # Line 2305
    subu	$v1,$v1,$a1
    # Line 2304
    subu	$at,$at,$a0
    # Line 2305
    sll	$ra,$v1,0x2
    # Line 2304
    sll	$at,$at,0x3
    # Line 2305
    subu	$ra,$ra,$v1
    # Line 2304
    addu	$at,$at,$a0
    # Line 2305
    sll	$ra,$ra,0x3
    # Line 2304
    sll	$at,$at,0x2
    # Line 2305
    addu	$ra,$ra,$v1
    # Line 2304
    subu	$at,$at,$a0
    # Line 2305
    sll	$ra,$ra,0x2
    # Line 2304
    sll	$at,$at,0x2
    # Line 2305
    subu	$ra,$ra,$v1
    # Line 2303
    sw	$v0,0($sp)
    # Line 2304
    addu	$at,$s0,$at
    # Line 2305
    sll	$ra,$ra,0x2
    # Line 2304
    addiu	$at,$at,1880
    sw	$at,4($sp)
    # Line 2305
    addu	$ra,$s0,$ra
    addiu	$ra,$ra,1880
    # Line 2306
    b	.L0da784d8
    # Line 2305
    sw	$ra,8($sp)
    nop
.L0da78d30:
    # Line 2431
    beq	$a6,$t1,.L0da78bc0
    addiu	$a7,$a7,8
    # Line 2426
    li	$a3,32
.L0da78d3c:
    lw	$a0,0($a6)
    li	$a1,32
    beq	$a0,$a1,.L0da78d64
    lw	$a2,4($a6)
.L0da78d4c:
    bne	$a2,$a3,.L0da78d30
    # Line 2431
    addiu	$a6,$a6,8
    # Line 2433
    addiu	$t0,$t0,4
    lw	$a4,4($a7)
    b	.L0da78d30
    sw	$a4,-4($t0)
.L0da78d64:
    addiu	$t0,$t0,4
    lw	$a5,0($a7)
    b	.L0da78d4c
    sw	$a5,-4($t0)
    nop
    nop
    nop
.L0da78d80:
    # Line 2442
    beq	$a6,$a7,.L0da78140
    # Line 2438
    li	$t3,32
    li	$t9,32
.L0da78d8c:
    lw	$t2,40($a6)
    beq	$t2,$t3,.L0da78db0
    lw	$t8,44($a6)
.L0da78d98:
    bne	$t8,$t9,.L0da78d80
    # Line 2442
    addiu	$a6,$a6,8
    # Line 2444
    addiu	$t0,$t0,4
    lw	$ra,40($t0)
    b	.L0da78d80
    sw	$ra,36($t0)
.L0da78db0:
    addiu	$t0,$t0,4
    lw	$at,40($t0)
    b	.L0da78d98
    sw	$at,36($t0)
.L0da78dc0:
    # Line 2285
    mtc1	$zero,$f1
    c.eq.s $f24,$f1
    bc1f .L0da78e20
    ld	$s2,280($sp)
.L0da78dd0:
    ld	$s3,288($sp)
    ld	$s6,56($sp)
    ld	$s4,304($sp)
    ld	$s0,64($sp)
    ld	$s5,72($sp)
    ld	$s7,312($sp)
    ld	$ra,296($sp)
    ld	$s1,320($sp)
    ld	$s8,328($sp)
    ldc1	$f24,16($sp)
    # Line 2458
    jr	$ra
    addiu	$sp,$sp,336
.L0da78e00:
    # Line 2433
    lw	$v0,8112($s0)
    addiu	$t0,$s0,8116
    b	.L0da78bb8
    sw	$v0,8112($s0)
.L0da78e10:
    # Line 2444
    lw	$v1,8156($s0)
    addiu	$t0,$s0,8116
    b	.L0da78bfc
    sw	$v1,8152($s0)
.L0da78e20:
    # Line 2456
    # lw $t9, -32668($gp) # &sub_0da80000
    addiu	$t9,$t9,-28688
    ld	$a0,40($sp)
    bal __glim_SubdivPatchSGIX
    ld	$a1,48($sp)
    b	.L0da78dd0
    ld	$s2,280($sp)
    nop
.L0da78e40:
    # Line 2386
    lw	$v1,-13588($gp)
    b	.L0da78810
    lbu	$v1,3($v1)
.L0da78e4c:
    b	.L0da78d8c
    # Line 2438
    li	$t9,32
.L0da78e54:
    # Line 2286
    la	$a0,sub_0daf0000
    addiu	$a0,$a0,-10976
    # Line 2288
    li	$t0,3
    # Line 2286
    addiu	$t2,$a0,1224
    b	.L0da78220
    ld	$t1,240($sp)
.end DoNormal

# Function: DoInterpolate
# Declared: Line 2462 (Source lines: 2463-2479)
# Address: 0x0da78e70 - 0x0da78fe8 (Size: 376 bytes, Frame: 0)
.ent DoInterpolate
DoInterpolate:
    # Line 2469
    la	$v1,sub_0daf0000
    sll	$a0,$a0,0x2
    addiu	$v1,$v1,-9752
    # Line 2465
    lw	$at,4112($zero)
    # Line 2469
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    # Line 2468
    lw	$v0,6084($at)
    # Line 2469
    addiu	$v1,$v1,-2
    mult	$v0,$v1
    mflo	$a6
    # Line 2463
    move	$a5,$a1
    # Line 2469
    blez	$a6,.L0da78fe0
    lwc1	$f6,6076($at)
    sll	$a3,$a6,0x2
    sll	$a1,$a1,0x2
    li	$a4,1
    subu	$a1,$a1,$a5
    la	$t0,sub_0db10000
    slt	$a2,$a6,$a4
    sll	$a1,$a1,0x2
    movz	$a4,$a6,$a2
    subu	$a1,$a1,$a5
    addiu	$t0,$t0,-21520
    sll	$a1,$a1,0x2
    addiu	$a2,$t0,9640
    subu	$a1,$a1,$a5
    addu	$a3,$t0,$a3
    sll	$a1,$a1,0x2
    ldc1	$f7,_lit8_3ff0000000000000
    move	$a7,$a4
    subu	$a1,$a1,$a5
    cvt.d.s	$f8,$f6
    andi	$a4,$a4,0x3
    sll	$a1,$a1,0x2
    addiu	$a3,$a3,9640
    addu	$a1,$a1,$t0
    sub.d	$f7,$f7,$f8
    beqz	$a4,.L0da78f3c
    addiu	$a1,$a1,8272
.L0da78f0c:
    # Line 2476
    lwc1	$f10,0($a2)
    lwc1	$f9,0($a1)
    mul.s	$f9,$f9,$f6
    cvt.d.s	$f10,$f10
    cvt.d.s	$f9,$f9
    madd.d	$f9,$f9,$f10,$f7
    addiu	$a4,$a4,-1
    # Line 2475
    addiu	$a1,$a1,4
    # Line 2476
    cvt.s.d	$f9,$f9
    # Line 2475
    addiu	$a2,$a2,4
    bnez	$a4,.L0da78f0c
    # Line 2476
    swc1	$f9,-4($a1)
.L0da78f3c:
    sra	$a4,$a7,0x2
    beqz	$a4,.L0da78fe0
    nop
    nop
    nop
.L0da78f50:
    lwc1	$f16,12($a2)
    lwc1	$f13,12($a1)
    lwc1	$f14,8($a2)
    lwc1	$f12,8($a1)
    mul.s	$f13,$f13,$f6
    cvt.d.s	$f16,$f16
    mul.s	$f12,$f12,$f6
    cvt.d.s	$f14,$f14
    lwc1	$f15,4($a2)
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f13,$f16,$f7
    lwc1	$f11,4($a1)
    cvt.d.s	$f12,$f12
    madd.d	$f12,$f12,$f14,$f7
    lwc1	$f14,0($a2)
    lwc1	$f10,0($a1)
    mul.s	$f11,$f11,$f6
    cvt.d.s	$f15,$f15
    mul.s	$f10,$f10,$f6
    cvt.d.s	$f14,$f14
    cvt.d.s	$f11,$f11
    madd.d	$f11,$f11,$f15,$f7
    cvt.d.s	$f10,$f10
    madd.d	$f10,$f10,$f14,$f7
    # Line 2475
    addiu	$a1,$a1,16
    # Line 2476
    cvt.s.d	$f13,$f13
    # Line 2475
    addiu	$a2,$a2,16
    # Line 2476
    swc1	$f13,-4($a1)
    cvt.s.d	$f12,$f12
    # Line 2475
    sltu	$a5,$a2,$a3
    # Line 2476
    swc1	$f12,-8($a1)
    cvt.s.d	$f11,$f11
    swc1	$f11,-12($a1)
    cvt.s.d	$f10,$f10
    # Line 2475
    bnez	$a5,.L0da78f50
    # Line 2476
    swc1	$f10,-16($a1)
.L0da78fe0:
    # Line 2479
    jr	$ra
    nop
.end DoInterpolate

# Function: DoInterpolateNormal
# Declared: Line 2483 (Source lines: 2484-2518)
# Address: 0x0da78ff0 - 0x0da79258 (Size: 616 bytes, Frame: 0)
.ent DoInterpolateNormal
DoInterpolateNormal:
    # Line 2497
    la	$a7,sub_0daf0000
    sll	$t0,$a0,0x2
    addiu	$a7,$a7,-9752
    addu	$a7,$a7,$t0
    lw	$a4,-4($a7)
    la	$a6,sub_0db10000
    # Line 2490
    lw	$a5,4112($zero)
    # Line 2497
    addiu	$a4,$a4,-3
    ldc1	$f5,_lit8_3fe0000000000000
    # Line 2484
    move	$t1,$a1
    # Line 2497
    bltz	$a4,.L0da7908c
    # Line 2490
    lwc1	$f6,6076($a5)
    # Line 2497
    addiu	$a6,$a6,-21520
    sll	$a5,$a4,0x2
    subu	$a5,$a5,$a4
    sll	$a2,$a5,0x2
    addu	$a2,$a2,$a6
    sll	$a3,$a5,0x3
    addiu	$a5,$a5,3
    addu	$a3,$a3,$a6
    sll	$a5,$a5,0x2
    addiu	$a3,$a3,10784
    addu	$a5,$a5,$a6
    addiu	$a2,$a2,10784
    addiu	$a5,$a5,10784
    nop
    nop
    # Line 2500
    lwc1	$f2,0($a2)
.L0da79060:
    swc1	$f2,0($a3)
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    lwc1	$f0,8($a2)
    # Line 2497
    addiu	$a4,$a4,-1
    addiu	$a3,$a3,-24
    addiu	$a5,$a5,-12
    addiu	$a2,$a2,-12
    # Line 2500
    swc1	$f0,32($a3)
    # Line 2497
    bgezl	$a4,.L0da79060
    # Line 2500
    lwc1	$f2,0($a2)
.L0da7908c:
    # Line 2497
    lw	$t0,0($a7)
    li	$a4,1
    la	$a6,sub_0db10000
    addiu	$a3,$t0,-3
    slti	$t2,$t0,5
    addiu	$a6,$a6,-21520
    # Line 2506
    sll	$a7,$t0,0x2
    # Line 2497
    bnez	$t2,.L0da79128
    # Line 2506
    subu	$a7,$a7,$t0
    # Line 2497
    addiu	$a5,$a6,10808
    addiu	$a2,$a6,10796
    nop
    # Line 2509
    lwc1	$f9,16($a2)
.L0da790c0:
    lwc1	$f8,20($a2)
    lwc1	$f7,-4($a2)
    lwc1	$f4,-8($a2)
    lwc1	$f3,-12($a2)
    add.s	$f7,$f7,$f8
    lwc1	$f8,12($a2)
    add.s	$f4,$f4,$f9
    cvt.d.s	$f7,$f7
    add.s	$f3,$f3,$f8
    cvt.d.s	$f4,$f4
    mul.d	$f7,$f7,$f5
    cvt.d.s	$f3,$f3
    mul.d	$f4,$f4,$f5
    # Line 2506
    addiu	$a2,$a2,24
    # Line 2509
    cvt.s.d	$f7,$f7
    mul.d	$f3,$f3,$f5
    cvt.s.d	$f4,$f4
    swc1	$f7,-16($a2)
    # Line 2506
    addiu	$a4,$a4,2
    # Line 2509
    swc1	$f4,-20($a2)
    cvt.s.d	$f3,$f3
    # Line 2506
    addiu	$a5,$a5,24
    slt	$t3,$a4,$a3
    # Line 2509
    swc1	$f3,-24($a2)
    # Line 2506
    bnezl	$t3,.L0da790c0
    # Line 2509
    lwc1	$f9,16($a2)
.L0da79128:
    # Line 2506
    addiu	$a5,$a7,-6
    li	$a4,1
    addiu	$a1,$a6,10784
    blez	$a5,.L0da79250
    sll	$a3,$a5,0x2
    ldc1	$f7,_lit8_3ff0000000000000
    addu	$a3,$a6,$a3
    slti	$t0,$a7,7
    sll	$a2,$t1,0x3
    movz	$a4,$a5,$t0
    subu	$a2,$a2,$t1
    addiu	$a3,$a3,10784
    sll	$a2,$a2,0x3
    move	$t0,$a4
    addu	$a2,$a2,$t1
    cvt.d.s	$f8,$f6
    andi	$a4,$a4,0x3
    sll	$a2,$a2,0x2
    sra	$t1,$t0,0x2
    addu	$a2,$a2,$a6
    sub.d	$f7,$f7,$f8
    beqz	$a4,.L0da791b4
    addiu	$a2,$a2,10328
.L0da79184:
    # Line 2515
    lwc1	$f10,0($a1)
    lwc1	$f9,0($a2)
    mul.s	$f9,$f9,$f6
    cvt.d.s	$f10,$f10
    cvt.d.s	$f9,$f9
    madd.d	$f9,$f9,$f10,$f7
    addiu	$a4,$a4,-1
    # Line 2514
    addiu	$a2,$a2,4
    # Line 2515
    cvt.s.d	$f9,$f9
    # Line 2514
    addiu	$a1,$a1,4
    bnez	$a4,.L0da79184
    # Line 2515
    swc1	$f9,-4($a2)
.L0da791b4:
    beqz	$t1,.L0da79250
    nop
    nop
.L0da791c0:
    lwc1	$f16,12($a1)
    lwc1	$f13,12($a2)
    lwc1	$f14,8($a1)
    lwc1	$f12,8($a2)
    mul.s	$f13,$f13,$f6
    cvt.d.s	$f16,$f16
    mul.s	$f12,$f12,$f6
    cvt.d.s	$f14,$f14
    lwc1	$f15,4($a1)
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f13,$f16,$f7
    lwc1	$f11,4($a2)
    cvt.d.s	$f12,$f12
    madd.d	$f12,$f12,$f14,$f7
    lwc1	$f14,0($a1)
    lwc1	$f10,0($a2)
    mul.s	$f11,$f11,$f6
    cvt.d.s	$f15,$f15
    mul.s	$f10,$f10,$f6
    cvt.d.s	$f14,$f14
    cvt.d.s	$f11,$f11
    madd.d	$f11,$f11,$f15,$f7
    cvt.d.s	$f10,$f10
    madd.d	$f10,$f10,$f14,$f7
    # Line 2514
    addiu	$a2,$a2,16
    # Line 2515
    cvt.s.d	$f13,$f13
    # Line 2514
    addiu	$a1,$a1,16
    # Line 2515
    swc1	$f13,-4($a2)
    cvt.s.d	$f12,$f12
    # Line 2514
    sltu	$t2,$a1,$a3
    # Line 2515
    swc1	$f12,-8($a2)
    cvt.s.d	$f11,$f11
    swc1	$f11,-12($a2)
    cvt.s.d	$f10,$f10
    # Line 2514
    bnez	$t2,.L0da791c0
    # Line 2515
    swc1	$f10,-16($a2)
.L0da79250:
    # Line 2518
    jr	$ra
    nop
.end DoInterpolateNormal

# Function: DoRender
# Declared: Line 2523 (Source lines: 2524-2851)
# Address: 0x0da79260 - 0x0da7a86c (Size: 5644 bytes, Frame: 144)
.ent DoRender
DoRender:
    # Line 2524
    addiu	$sp,$sp,-144
    sd	$s4,128($sp)
    sd	$ra,120($sp)
    sd	$s6,112($sp)
    sd	$s2,104($sp)
    sd	$s5,48($sp)
    sd	$s1,40($sp)
    sd	$s0,56($sp)
    sd	$s7,64($sp)
    # Line 2535
    lw	$s7,-13560($gp)
    # Line 2524
    sd	$s3,72($sp)
    # Line 2526
    lw	$s3,4112($zero)
    # Line 2524
    sd	$s8,32($sp)
    # Line 2531
    lwc1	$f0,6076($s3)
    # Line 2529
    lw	$s0,6084($s3)
    # Line 2538
    li	$a3,3
    # Line 2530
    lbu	$t8,6116($s3)
    # Line 2532
    lui	$at,0x80
    # Line 2524
    move	$s1,$a0
    # Line 2532
    lw	$s8,1792($s3)
    # Line 2531
    trunc.w.s	$f0,$f0
    # Line 2524
    move	$s5,$a1
    # Line 2535
    sltiu	$s7,$s7,1
    # Line 2528
    lw	$s3,6080($s3)
    # Line 2530
    sd	$t8,8($sp)
    # Line 2532
    and	$s8,$s8,$at
    # Line 2538
    beqz	$a0,.L0da798cc
    # Line 2531
    mfc1	$a6,$f0
    # Line 2538
    li	$t9,1
    beq	$a0,$t9,.L0da79acc
    li	$ra,2
    beq	$a0,$ra,.L0da79d80
    # Line 2547
    srl	$t0,$a1,0x1f
    # Line 2538
    beq	$a0,$a3,.L0da79f78
    # Line 2551
    srl	$t0,$a1,0x1f
    # Line 2538
    li	$at,4
    beq	$a0,$at,.L0da79ff8
    la	$s2,sub_0db10000
    addiu	$s2,$s2,-21520
.L0da792fc:
    # Line 2558
    la	$s6,sub_0daf0000
    addiu	$s6,$s6,-9752
    sll	$t8,$s1,0x2
    addu	$s6,$s6,$t8
    lw	$a1,0($s6)
    addiu	$t9,$a1,-1
    mult	$s0,$t9
    mflo	$a7
    slt	$t8,$s0,$a7
    beqz	$t8,.L0da793d0
    sll	$a3,$s0,0x2
    sll	$a4,$s7,0x2
    sll	$a5,$a7,0x2
    lw	$t0,0($sp)
    subu	$a4,$a4,$s7
    subu	$t2,$a7,$s0
    sll	$a4,$a4,0x2
    addu	$a5,$t0,$a5
    subu	$a4,$a4,$s7
    addu	$a3,$a3,$t0
    sll	$a4,$a4,0x2
    li	$t0,1
    subu	$a4,$a4,$s7
    slt	$t1,$t2,$t0
    sll	$a4,$a4,0x2
    movz	$t0,$t2,$t1
    subu	$a4,$a4,$s7
    andi	$a0,$t0,0x3
    sll	$a4,$a4,0x2
    addu	$a4,$s2,$a4
    beqz	$a0,.L0da79394
    addiu	$a4,$a4,8272
.L0da7937c:
    addiu	$a0,$a0,-1
    # Line 2565
    lwc1	$f1,0($a3)
    # Line 2564
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
    bnez	$a0,.L0da7937c
    # Line 2565
    swc1	$f1,-4($a4)
.L0da79394:
    sra	$a7,$t0,0x2
    beqz	$a7,.L0da793d0
    nop
.L0da793a0:
    lwc1	$f5,0($a3)
    swc1	$f5,0($a4)
    lwc1	$f4,4($a3)
    swc1	$f4,4($a4)
    lwc1	$f3,8($a3)
    # Line 2564
    addiu	$a3,$a3,16
    # Line 2565
    swc1	$f3,8($a4)
    # Line 2564
    sltu	$t0,$a3,$a5
    # Line 2565
    lwc1	$f2,-4($a3)
    # Line 2564
    addiu	$a4,$a4,16
    bnez	$t0,.L0da793a0
    # Line 2565
    swc1	$f2,-4($a4)
.L0da793d0:
    # Line 2564
    beqz	$a6,.L0da794f0
    addiu	$t2,$a1,-2
    blez	$t2,.L0da794dc
    move	$t1,$zero
    move	$t0,$zero
    sll	$s4,$s0,0x2
    ldc1	$f5,_lit8_3fe0000000000000
    addiu	$a7,$s2,9640
    addu	$a6,$s4,$s2
    lw	$t3,4($sp)
    b	.L0da7a830
    addiu	$a6,$a6,9640
.L0da79400:
    # Line 2569
    lwc1	$f6,4($a3)
    add.s	$f6,$f6,$f4
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f5
    cvt.s.d	$f6,$f6
    swc1	$f6,0($a4)
.L0da79418:
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
.L0da79420:
    sra	$t8,$s0,0x1
    bnez	$t8,.L0da794c4
    nop
.L0da7942c:
    # Line 2568
    addiu	$t0,$t0,1
    slt	$t9,$t0,$t2
    addu	$a6,$a6,$s4
    addu	$t1,$t1,$s0
    beqz	$t9,.L0da794dc
    addu	$a7,$a7,$s4
.L0da79444:
    # Line 2564
    blez	$s0,.L0da7942c
    andi	$t8,$s0,0x1
    sra	$a4,$t0,0x1
    addiu	$a4,$a4,1
    mult	$s0,$a4
    andi	$a5,$t0,0x1
    mflo	$a3
    move	$a4,$a7
    sll	$a3,$a3,0x2
    beqz	$t8,.L0da79420
    addu	$a3,$t3,$a3
    bnez	$a5,.L0da79400
    lwc1	$f4,0($a3)
    b	.L0da79418
    # Line 2569
    swc1	$f4,0($a7)
.L0da79480:
    lwc1	$f7,4($a3)
    add.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f5
    cvt.s.d	$f7,$f7
    swc1	$f7,0($a4)
.L0da79498:
    # Line 2564
    beqz	$a5,.L0da794d4
    lwc1	$f4,4($a3)
    # Line 2569
    lwc1	$f8,8($a3)
    add.s	$f8,$f8,$f4
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f5
    cvt.s.d	$f8,$f8
    swc1	$f8,4($a4)
.L0da794b8:
    addiu	$a4,$a4,8
    beq	$a4,$a6,.L0da7942c
    addiu	$a3,$a3,8
.L0da794c4:
    # Line 2564
    bnez	$a5,.L0da79480
    lwc1	$f4,0($a3)
    b	.L0da79498
    # Line 2569
    swc1	$f4,0($a4)
.L0da794d4:
    b	.L0da794b8
    swc1	$f4,4($a4)
.L0da794dc:
    # Line 2571
    # lw $t9, -32668($gp) # &sub_0da80000
    addiu	$t9,$t9,-29072
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    move	$a1,$s7
.L0da794f0:
    beqz	$s8,.L0da79510
    # Line 2580
    nop	# was lw $t9, -16860($gp) # &glBegin
    # Line 2574
    # lw $t9, -32672($gp) # &sub_0da70000
    addiu	$t9,$t9,32176
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$s5,1
    # Line 2580
    # lw $t9, -16860($gp) # &glBegin
.L0da79510:
    jal	glBegin
    li	$a0,5
    # Line 2581
    li	$ra,10785
    beq	$s3,$ra,.L0da79854
    # Line 2583
    ld	$a2,8($sp)
    # Line 2581
    li	$at,10787
    beq	$s3,$at,.L0da79924
    # Line 2633
    ld	$a1,8($sp)
    # Line 2581
    li	$v0,10791
    beq	$s3,$v0,.L0da79b4c
    li	$v1,10793
    beq	$s3,$v1,.L0da7959c
    # Line 2764
    ld	$a2,8($sp)
    # Line 2845
    la	$a1,__glim_Color3f
    # lw $t9, -17012($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,20720
    jal	fprintf
    addiu	$a0,$a0,32
.L0da7955c:
    # Line 2847
    # lw $t9, -16844($gp) # &glEnd
.L0da79560:
    jal	glEnd
    nop
    ld	$s4,128($sp)
    ld	$s6,112($sp)
    ld	$s2,104($sp)
    # Line 2851
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s3,72($sp)
    ld	$s5,48($sp)
    ld	$ra,120($sp)
    # Line 2849
    sw	$s7,-13560($gp)
    # Line 2851
    ld	$s7,64($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da7959c:
    # Line 2764
    beqz	$a2,.L0da7a07c
    lw	$a0,0($s6)
    # Line 2817
    subu	$a3,$a0,$s5
    blez	$a3,.L0da7955c
    sd	$a3,96($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    sll	$s4,$s0,0x2
    move	$s1,$zero
    ld	$t9,96($sp)
    sll	$s7,$t8,0x2
    move	$s3,$zero
    subu	$s7,$s7,$t8
    addiu	$t9,$t9,-1
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    sd	$t9,88($sp)
    addiu	$s5,$s7,8272
    addiu	$t8,$s7,8300
    sd	$t8,80($sp)
    b	.L0da7a83c
    addiu	$s7,$s7,8284
    nop
    nop
.L0da79630:
    # Line 2832
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2833
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2834
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da79824
    # Line 2836
    nop	# was lw $t9, -15192($gp) # &glTexCoord2fv
    nop
    nop
    nop
    # Line 2818
    ld	$a2,96($sp)
.L0da796d0:
    addu	$s7,$s7,$s4
    addiu	$s3,$s3,1
    addu	$s5,$s5,$s4
    ld	$a3,80($sp)
    slt	$a2,$s3,$a2
    # Line 2817
    lw	$a1,-13560($gp)
    # Line 2818
    addu	$s6,$s6,$s4
    addu	$s1,$s1,$s0
    addu	$a3,$a3,$s4
    beqz	$a2,.L0da7984c
    sd	$a3,80($sp)
    # Line 2817
    sll	$a0,$a1,0x2
.L0da79700:
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    beqz	$s8,.L0da79630
    addiu	$a0,$a0,8300
    # Line 2820
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2821
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2822
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2823
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da796d0
    # Line 2818
    ld	$a2,96($sp)
    # Line 2825
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,80($sp)
    # Line 2826
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2827
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2828
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da796d0
    # Line 2818
    ld	$a2,96($sp)
.L0da79824:
    # Line 2836
    jalr	$t9
    ld	$a0,80($sp)
    # Line 2837
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2838
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da796d0
    # Line 2818
    ld	$a2,96($sp)
.L0da7984c:
    b	.L0da7955c
    ld	$s7,16($sp)
.L0da79854:
    # Line 2583
    beqz	$a2,.L0da7a2f8
    lw	$a0,0($s6)
    # Line 2614
    subu	$a3,$a0,$s5
    blez	$a3,.L0da7955c
    sd	$a3,96($sp)
    sll	$s4,$s0,0x2
    move	$s1,$zero
    ld	$t8,96($sp)
    sll	$s5,$s7,0x2
    move	$s3,$zero
    subu	$s5,$s5,$s7
    addiu	$t8,$t8,-1
    sll	$s5,$s5,0x2
    sll	$s6,$s7,0x3
    subu	$s5,$s5,$s7
    subu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x3
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x2
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s2
    sll	$s5,$s5,0x2
    addiu	$s6,$s6,10328
    addu	$s5,$s5,$s2
    sd	$t8,88($sp)
    b	.L0da7a848
    addiu	$s5,$s5,8272
.L0da798cc:
    # Line 2540
    srl	$at,$a1,0x1f
    li	$a0,0xaaaa
    negu	$v1,$a1
    dsll	$a0,$a0,0x10
    movz	$v1,$a1,$at
    ori	$a0,$a0,0xaaab
    multu	$v1,$a0
    mfhi	$v0
    sra	$v0,$v0,0x1
    negu	$ra,$v0
    movz	$ra,$v0,$at
    mult	$ra,$a3
    mflo	$t9
    subu	$t9,$a1,$t9
    la	$s2,sub_0db10000
    sll	$t8,$t9,0x3
    addu	$t8,$t8,$t9
    addiu	$s2,$s2,-21520
    sll	$t8,$t8,0x4
    addu	$t8,$s2,$t8
    b	.L0da792fc
    sw	$t8,0($sp)
.L0da79924:
    # Line 2633
    beqz	$a1,.L0da7a458
    lw	$a0,0($s6)
    # Line 2677
    subu	$a2,$a0,$s5
    blez	$a2,.L0da7955c
    sd	$a2,96($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    move	$s1,$zero
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    ld	$t8,96($sp)
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    addiu	$t8,$t8,-1
    addiu	$s5,$s7,8272
    sd	$t8,88($sp)
    b	.L0da79c80
    addiu	$s7,$s7,8284
    nop
    nop
.L0da799b0:
    # Line 2624
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da79ab0
    nop
    nop
    nop
    # Line 2615
    ld	$a2,96($sp)
.L0da79a00:
    addiu	$s3,$s3,1
    slt	$a2,$s3,$a2
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    # Line 2614
    lw	$a3,-13560($gp)
    # Line 2615
    beqz	$a2,.L0da79ac4
    addu	$s1,$s1,$s0
.L0da79a1c:
    # Line 2614
    beqz	$s8,.L0da799b0
    # Line 2617
    sll	$a0,$a3,0x3
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2618
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da79a00
    # Line 2615
    ld	$a2,96($sp)
    # Line 2620
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2621
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da79a00
    # Line 2615
    ld	$a2,96($sp)
.L0da79ab0:
    # Line 2626
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da79a00
    # Line 2615
    ld	$a2,96($sp)
.L0da79ac4:
    b	.L0da79560
    # Line 2847
    nop	# was lw $t9, -16844($gp) # &glEnd
.L0da79acc:
    # Line 2543
    srl	$t0,$a1,0x1f
    li	$t3,0xaaaa
    negu	$t2,$a1
    dsll	$t3,$t3,0x10
    movz	$t2,$a1,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    mult	$a7,$a3
    mflo	$a5
    subu	$a5,$a1,$a5
    sll	$a2,$a5,0x2
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    # Line 2544
    sll	$a4,$a5,0x3
    # Line 2543
    subu	$a2,$a2,$a5
    # Line 2544
    addu	$a4,$a4,$a5
    # Line 2543
    la	$s2,sub_0db10000
    sll	$a2,$a2,0x2
    # Line 2544
    sll	$a4,$a4,0x4
    # Line 2543
    addu	$a2,$a2,$a5
    addiu	$s2,$s2,-21520
    sll	$a2,$a2,0x2
    # Line 2544
    addu	$a4,$s2,$a4
    sw	$a4,4($sp)
    # Line 2543
    addu	$a2,$s2,$a2
    addiu	$a2,$a2,576
    # Line 2545
    b	.L0da792fc
    # Line 2543
    sw	$a2,0($sp)
.L0da79b4c:
    # Line 2700
    ld	$t8,8($sp)
    beqz	$t8,.L0da7a658
    lw	$a0,0($s6)
    # Line 2740
    subu	$t9,$a0,$s5
    blez	$t9,.L0da7955c
    sd	$t9,96($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    move	$s1,$zero
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    ld	$t8,96($sp)
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    addiu	$t8,$t8,-1
    addiu	$s5,$s7,8272
    sd	$t8,88($sp)
    b	.L0da79e74
    addiu	$s7,$s7,8284
    nop
    nop
    nop
.L0da79be0:
    # Line 2689
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2690
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da79d5c
    # Line 2692
    nop	# was lw $t9, -15352($gp) # &glColor4fv
.L0da79c60:
    # Line 2678
    ld	$a2,96($sp)
.L0da79c64:
    addiu	$s3,$s3,1
    addu	$s7,$s7,$s4
    slt	$a2,$s3,$a2
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    beqz	$a2,.L0da79d78
    addu	$s1,$s1,$s0
.L0da79c80:
    # Line 2677
    lw	$a3,-13560($gp)
    beqz	$s8,.L0da79be0
    # Line 2680
    sll	$a0,$a3,0x3
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2681
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2682
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da79c60
    # Line 2684
    nop	# was lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2685
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2686
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da79c64
    # Line 2678
    ld	$a2,96($sp)
.L0da79d5c:
    # Line 2692
    jalr	$t9
    move	$a0,$s7
    # Line 2693
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da79c64
    # Line 2678
    ld	$a2,96($sp)
.L0da79d78:
    b	.L0da7955c
    ld	$s7,16($sp)
.L0da79d80:
    # Line 2547
    li	$t3,0xaaaa
    negu	$t2,$a1
    dsll	$t3,$t3,0x10
    movz	$t2,$a1,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    mult	$a7,$a3
    mflo	$a5
    subu	$a5,$a1,$a5
    # Line 2548
    sll	$a2,$a5,0x2
    # Line 2547
    sll	$a4,$a5,0x6
    # Line 2548
    subu	$a2,$a2,$a5
    # Line 2547
    subu	$a4,$a4,$a5
    # Line 2548
    sll	$a2,$a2,0x2
    # Line 2547
    sll	$a4,$a4,0x2
    la	$s2,sub_0db10000
    # Line 2548
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    # Line 2547
    addiu	$s2,$s2,-21520
    # Line 2548
    addu	$a2,$a2,$a5
    # Line 2547
    addu	$a4,$s2,$a4
    # Line 2548
    sll	$a2,$a2,0x2
    # Line 2547
    addiu	$a4,$a4,1120
    sw	$a4,0($sp)
    # Line 2548
    addu	$a2,$s2,$a2
    addiu	$a2,$a2,576
    # Line 2549
    b	.L0da792fc
    # Line 2548
    sw	$a2,4($sp)
.L0da79e00:
    # Line 2753
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2754
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da79f54
    # Line 2756
    nop	# was lw $t9, -15192($gp) # &glTexCoord2fv
.L0da79e54:
    # Line 2741
    ld	$a2,96($sp)
.L0da79e58:
    addiu	$s3,$s3,1
    addu	$s7,$s7,$s4
    slt	$a2,$s3,$a2
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    beqz	$a2,.L0da79f70
    addu	$s1,$s1,$s0
.L0da79e74:
    # Line 2740
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    beqz	$s8,.L0da79e00
    addiu	$a0,$a0,8284
    # Line 2743
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2744
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2745
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da79e54
    # Line 2747
    nop	# was lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s7
    # Line 2748
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2749
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da79e58
    # Line 2741
    ld	$a2,96($sp)
.L0da79f54:
    # Line 2756
    jalr	$t9
    move	$a0,$s7
    # Line 2757
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da79e58
    # Line 2741
    ld	$a2,96($sp)
.L0da79f70:
    b	.L0da7955c
    ld	$s7,16($sp)
.L0da79f78:
    # Line 2551
    li	$t3,0xaaaa
    negu	$t2,$a1
    dsll	$t3,$t3,0x10
    movz	$t2,$a1,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    mult	$a7,$a3
    mflo	$a5
    subu	$a5,$a1,$a5
    sll	$a2,$a5,0x2
    # Line 2552
    sll	$a4,$a5,0x6
    # Line 2551
    subu	$a2,$a2,$a5
    # Line 2552
    subu	$a4,$a4,$a5
    # Line 2551
    sll	$a2,$a2,0x3
    # Line 2552
    sll	$a4,$a4,0x2
    # Line 2551
    la	$s2,sub_0db10000
    addu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    addiu	$s2,$s2,-21520
    subu	$a2,$a2,$a5
    # Line 2552
    addu	$a4,$s2,$a4
    # Line 2551
    sll	$a2,$a2,0x2
    # Line 2552
    addiu	$a4,$a4,1120
    sw	$a4,4($sp)
    # Line 2551
    addu	$a2,$s2,$a2
    addiu	$a2,$a2,1880
    # Line 2553
    b	.L0da792fc
    # Line 2551
    sw	$a2,0($sp)
.L0da79ff8:
    # Line 2555
    srl	$v0,$a1,0x1f
    li	$a1,0xaaaa
    negu	$a0,$s5
    dsll	$a1,$a1,0x10
    movz	$a0,$s5,$v0
    ori	$a1,$a1,0xaaab
    multu	$a0,$a1
    mfhi	$v1
    sra	$v1,$v1,0x1
    negu	$at,$v1
    movz	$at,$v1,$v0
    mult	$at,$a3
    mflo	$ra
    subu	$ra,$s5,$ra
    li	$at,684
    # Line 2556
    sll	$t9,$ra,0x2
    # Line 2555
    multu	$ra,$at
    # Line 2556
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    # Line 2555
    la	$s2,sub_0db10000
    # Line 2556
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    # Line 2555
    addiu	$s2,$s2,-21520
    # Line 2556
    addu	$t9,$s2,$t9
    # Line 2555
    mflo	$t8
    # Line 2556
    addiu	$t9,$t9,1880
    sw	$t9,4($sp)
    # Line 2555
    addu	$t8,$s2,$t8
    addiu	$t8,$t8,3072
    # Line 2557
    b	.L0da792fc
    # Line 2555
    sw	$t8,0($sp)
.L0da7a07c:
    # Line 2764
    addiu	$a2,$a0,-2
    blez	$a2,.L0da7955c
    sd	$s6,24($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    move	$s1,$zero
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    addiu	$s5,$s7,8272
    addiu	$t8,$s7,8300
    sd	$t8,80($sp)
    b	.L0da7a208
    addiu	$s7,$s7,8284
.L0da7a0f4:
    # Line 2767
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2768
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2769
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2770
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2771
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,80($sp)
    # Line 2772
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2773
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2774
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
.L0da7a1d4:
    # Line 2765
    ld	$a1,24($sp)
    lw	$a1,0($a1)
    addu	$s7,$s7,$s4
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    addu	$s5,$s5,$s4
    ld	$a2,80($sp)
    slt	$a1,$s3,$a1
    addu	$s6,$s6,$s4
    addu	$s1,$s1,$s0
    addu	$a2,$a2,$s4
    beqz	$a1,.L0da7a2f0
    sd	$a2,80($sp)
.L0da7a208:
    # Line 2764
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    bnez	$s8,.L0da7a0f4
    addiu	$a0,$a0,8300
    # Line 2776
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2777
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2778
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2779
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,80($sp)
    # Line 2780
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2781
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da7a1d4
    nop
.L0da7a2f0:
    b	.L0da7955c
    ld	$s7,16($sp)
.L0da7a2f8:
    # Line 2583
    addiu	$a1,$a0,-2
    blez	$a1,.L0da7955c
    sd	$s6,24($sp)
    move	$s1,$zero
    sll	$s5,$s7,0x2
    sll	$s4,$s0,0x2
    subu	$s5,$s5,$s7
    move	$s3,$zero
    sll	$s5,$s5,0x2
    sll	$s6,$s7,0x3
    subu	$s5,$s5,$s7
    subu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x3
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x2
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s2
    sll	$s5,$s5,0x2
    addiu	$s6,$s6,10328
    addu	$s5,$s5,$s2
    b	.L0da7a854
    addiu	$s5,$s5,8272
.L0da7a35c:
    # Line 2586
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2587
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2588
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2589
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    # Line 2584
    ld	$a1,24($sp)
.L0da7a3d8:
    lw	$a1,0($a1)
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    slt	$a1,$s3,$a1
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    # Line 2583
    lw	$a3,-13560($gp)
    # Line 2584
    beqz	$a1,.L0da7a450
    addu	$s1,$s1,$s0
.L0da7a3fc:
    # Line 2583
    bnez	$s8,.L0da7a35c
    # Line 2586
    sll	$a0,$a3,0x3
    # Line 2591
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2592
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da7a3d8
    # Line 2584
    ld	$a1,24($sp)
.L0da7a450:
    b	.L0da79560
    # Line 2847
    nop	# was lw $t9, -16844($gp) # &glEnd
.L0da7a458:
    # Line 2633
    addiu	$a1,$a0,-2
    blez	$a1,.L0da7955c
    sd	$s6,24($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s1,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    addu	$s6,$s6,$s2
    addu	$s7,$s7,$s2
    addiu	$s6,$s6,10328
    addiu	$s5,$s7,8272
    b	.L0da7a860
    addiu	$s7,$s7,8284
.L0da7a4c8:
    # Line 2636
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2637
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2638
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2639
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2640
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2641
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    # Line 2634
    ld	$a1,24($sp)
.L0da7a58c:
    lw	$a1,0($a1)
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    addu	$s7,$s7,$s4
    slt	$a1,$s3,$a1
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    # Line 2633
    lw	$a3,-13560($gp)
    # Line 2634
    beqz	$a1,.L0da7a650
    addu	$s1,$s1,$s0
.L0da7a5b4:
    # Line 2633
    bnez	$s8,.L0da7a4c8
    # Line 2636
    sll	$a0,$a3,0x3
    # Line 2643
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -15352($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2644
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2645
    # lw $t9, -15352($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2646
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da7a58c
    # Line 2634
    ld	$a1,24($sp)
.L0da7a650:
    b	.L0da7955c
    ld	$s7,16($sp)
.L0da7a658:
    # Line 2700
    addiu	$a1,$a0,-2
    blez	$a1,.L0da7955c
    sd	$s6,24($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s1,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    addu	$s6,$s6,$s2
    addu	$s7,$s7,$s2
    addiu	$s6,$s6,10328
    addiu	$s5,$s7,8272
    b	.L0da7a788
    addiu	$s7,$s7,8284
.L0da7a6c8:
    # Line 2703
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2704
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -15256($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2705
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2706
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s7
    # Line 2707
    # lw $t9, -15256($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2708
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    # Line 2701
    ld	$a1,24($sp)
.L0da7a764:
    lw	$a1,0($a1)
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    addu	$s7,$s7,$s4
    slt	$a1,$s3,$a1
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    beqz	$a1,.L0da7a828
    addu	$s1,$s1,$s0
.L0da7a788:
    # Line 2700
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    bnez	$s8,.L0da7a6c8
    addiu	$a0,$a0,8284
    # Line 2710
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2711
    lw	$a1,-13560($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -15064($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2712
    # lw $t9, -15192($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s7
    # Line 2713
    # lw $t9, -15064($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da7a764
    # Line 2701
    ld	$a1,24($sp)
.L0da7a828:
    b	.L0da7955c
    ld	$s7,16($sp)
.L0da7a830:
    # Line 2568
    addu	$t1,$t1,$s0
    b	.L0da79444
    nop
.L0da7a83c:
    # Line 2817
    lw	$a1,-13560($gp)
    b	.L0da79700
    sll	$a0,$a1,0x2
.L0da7a848:
    # Line 2614
    lw	$a3,-13560($gp)
    b	.L0da79a1c
    nop
.L0da7a854:
    # Line 2583
    lw	$a3,-13560($gp)
    b	.L0da7a3fc
    nop
.L0da7a860:
    # Line 2633
    lw	$a3,-13560($gp)
    b	.L0da7a5b4
    nop
.end DoRender

.rdata
_lit8_3f70101010101010:
    .word 0x3f701010, 0x10101010
_lit8_3fc0000000000000:
    .word 0x3fc00000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4014000000000000:
    .word 0x40140000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40400000:
    .word 0x40400000
_lit_40800000:
    .word 0x40800000
_lit_46288400:
    .word 0x46288400
_lit_46288c00:
    .word 0x46288c00
_lit_46289c00:
    .word 0x46289c00
_lit_4628a400:
    .word 0x4628a400
_lit_bf800000:
    .word 0xbf800000

