# Source: ../ODYSSEY/ody_vapi.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_vapi.c
# Total Functions: 28

.text

# Function: __glOdyim_EdgeFlag
# Declared: Line 25 (Source lines: 33-36)
# Address: 0x0d9da2e0 - 0x0d9da300 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_EdgeFlag
.ent __glOdyim_EdgeFlag
__glOdyim_EdgeFlag:
    # Line 33
    lui	$at,0x2f00
    lui	$v1,0x3000
    ori	$v1,$v1,0xc02e
    ori	$at,$at,0xc02e
    lui	$v0,0x1
    movz	$at,$v1,$a0
    # Line 36
    jr	$ra
    # Line 33
    sw	$at,0($v0)
.end __glOdyim_EdgeFlag

# Function: __glOdyim_EdgeFlagv
# Declared: Line 39 (Source lines: 47-50)
# Address: 0x0d9da300 - 0x0d9da324 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_EdgeFlagv
.ent __glOdyim_EdgeFlagv
__glOdyim_EdgeFlagv:
    # Line 47
    lbu	$v1,0($a0)
    lui	$at,0x2f00
    lui	$a1,0x3000
    ori	$a1,$a1,0xc02e
    ori	$at,$at,0xc02e
    lui	$v0,0x1
    movz	$at,$a1,$v1
    # Line 50
    jr	$ra
    # Line 47
    sw	$at,0($v0)
.end __glOdyim_EdgeFlagv

# Function: AfterIgloo
# Declared: Line 3480 (Source lines: 3480-3504)
# Address: 0x0d9da330 - 0x0d9da478 (Size: 328 bytes, Frame: 16)
.ent AfterIgloo
AfterIgloo:
    # Line 3480
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    # Line 3481
    lw	$s0,4112($zero)
    lbu	$at,3220($s0)
    beqz	$at,.L0d9da46c
    nop
    # Line 3489
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,4608
    lui	$a2,0x1
    li	$a0,1028
    ori	$a2,$a2,0x9de8
    sd	$ra,8($sp)
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3490
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,4609
    lui	$a2,0x1
    li	$a0,1028
    ori	$a2,$a2,0x9df8
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3491
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,4610
    lui	$a2,0x1
    li	$a0,1028
    ori	$a2,$a2,0x9e08
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3492
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,5632
    lui	$a2,0x1
    li	$a0,1028
    ori	$a2,$a2,0x9e18
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3493
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,4608
    lui	$a2,0x1
    li	$a0,1029
    ori	$a2,$a2,0x9e38
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3494
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,4609
    lui	$a2,0x1
    li	$a0,1029
    ori	$a2,$a2,0x9e48
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3495
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,4610
    lui	$a2,0x1
    li	$a0,1029
    ori	$a2,$a2,0x9e58
    jalr	$t9
    addu	$a2,$s0,$a2
    # Line 3496
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    li	$a1,5632
    lui	$a2,0x1
    li	$a0,1029
    ori	$a2,$a2,0x9e68
    jalr	$t9
    addu	$a2,$s0,$a2
    ld	$ra,8($sp)
    # Line 3497
    lui	$at,0x1
    ori	$at,$at,0x9e88
    addu	$at,$at,$s0
    # Line 3504
    ld	$s0,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 3497
    sb	$zero,0($at)
.L0d9da46c:
    ld	$s0,0($sp)
    # Line 3504
    jr	$ra
    addiu	$sp,$sp,16
.end AfterIgloo

# Function: BeforeIgloo
# Declared: Line 3513 (Source lines: 3513-3725)
# Address: 0x0d9da480 - 0x0d9daf58 (Size: 2776 bytes, Frame: 192)
.ent BeforeIgloo
BeforeIgloo:
    # Line 3513
    addiu	$sp,$sp,-2368
    # Line 3514
    lwc1	$f0,_lit_3f800000
    # Line 3513
    sd	$s0,2336($sp)
    # Line 3514
    mtc1	$zero,$f1
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    swc1	$f1,4($sp)
    swc1	$f1,0($sp)
    # Line 3516
    lw	$s0,4112($zero)
    lbu	$t8,3220($s0)
    # Line 3513
    sd	$s1,2344($sp)
    # Line 3516
    lui	$s1,0x2
    beqz	$t8,.L0d9da814
    addu	$s1,$s0,$s1
    # Line 3528
    # lw $t9, -30512($gp) # &__glOdysseyGetHardwareShadow
    move	$a0,$s0
    sd	$ra,2352($sp)
    bal __glOdysseyGetHardwareShadow
    move	$a1,$zero
    # Line 3530
    # lw $t9, -16968($gp) # &bcopy
    lui	$a0,0x1
    ori	$a0,$a0,0x6d28
    li	$a2,2304
    addu	$a0,$a0,$s0
    addiu	$a1,$sp,16
    jal	bcopy
    lw	$a0,0($a0)
    # Line 3536
    lw	$a4,148($sp)
    srl	$a4,$a4,0x10
    andi	$a4,$a4,0x3
    addiu	$ra,$sp,16
    sll	$a4,$a4,0x4
    addu	$a4,$ra,$a4
    # Line 3537
    lwc1	$f7,1280($a4)
    swc1	$f7,-25112($s1)
    lwc1	$f6,1284($a4)
    swc1	$f6,-25108($s1)
    lwc1	$f5,1288($a4)
    swc1	$f5,-25104($s1)
    lwc1	$f4,1292($a4)
    swc1	$f4,-25100($s1)
    # Line 3539
    lw	$a3,148($sp)
    srl	$a3,$a3,0xe
    andi	$a3,$a3,0x3
    sll	$a3,$a3,0x4
    addu	$a3,$ra,$a3
    # Line 3540
    lwc1	$f3,1344($a3)
    swc1	$f3,-25096($s1)
    lwc1	$f2,1348($a3)
    swc1	$f2,-25092($s1)
    lwc1	$f1,1352($a3)
    swc1	$f1,-25088($s1)
    lwc1	$f0,1356($a3)
    swc1	$f0,-25084($s1)
    # Line 3542
    lw	$a2,148($sp)
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0x3
    sll	$a2,$a2,0x4
    addu	$a2,$ra,$a2
    # Line 3543
    lwc1	$f31,1408($a2)
    swc1	$f31,-25080($s1)
    lwc1	$f29,1412($a2)
    swc1	$f29,-25076($s1)
    lwc1	$f27,1416($a2)
    swc1	$f27,-25072($s1)
    lwc1	$f25,1420($a2)
    swc1	$f25,-25068($s1)
    # Line 3545
    lw	$a1,148($sp)
    srl	$a1,$a1,0xa
    andi	$a1,$a1,0x3
    sll	$a1,$a1,0x4
    addu	$a1,$ra,$a1
    # Line 3546
    lwc1	$f23,1472($a1)
    swc1	$f23,-25064($s1)
    lwc1	$f21,1476($a1)
    swc1	$f21,-25060($s1)
    lwc1	$f19,1480($a1)
    swc1	$f19,-25056($s1)
    lwc1	$f18,1484($a1)
    swc1	$f18,-25052($s1)
    # Line 3548
    lw	$a0,148($sp)
    srl	$a0,$a0,0x4
    andi	$a0,$a0,0x3
    sll	$a0,$a0,0x4
    addu	$a0,$ra,$a0
    # Line 3549
    lwc1	$f17,1664($a0)
    swc1	$f17,-25032($s1)
    lwc1	$f16,1668($a0)
    swc1	$f16,-25028($s1)
    lwc1	$f15,1672($a0)
    swc1	$f15,-25024($s1)
    lwc1	$f14,1676($a0)
    swc1	$f14,-25020($s1)
    # Line 3551
    lw	$v1,148($sp)
    srl	$v1,$v1,0x2
    andi	$v1,$v1,0x3
    sll	$v1,$v1,0x4
    addu	$v1,$ra,$v1
    # Line 3552
    lwc1	$f13,1728($v1)
    swc1	$f13,-25016($s1)
    lwc1	$f12,1732($v1)
    swc1	$f12,-25012($s1)
    lwc1	$f11,1736($v1)
    swc1	$f11,-25008($s1)
    lwc1	$f10,1740($v1)
    swc1	$f10,-25004($s1)
    # Line 3554
    lw	$v0,148($sp)
    andi	$v0,$v0,0x3
    sll	$v0,$v0,0x4
    addu	$v0,$ra,$v0
    # Line 3555
    lwc1	$f9,1792($v0)
    swc1	$f9,-25000($s1)
    lwc1	$f8,1796($v0)
    swc1	$f8,-24996($s1)
    lwc1	$f7,1800($v0)
    swc1	$f7,-24992($s1)
    lwc1	$f6,1804($v0)
    swc1	$f6,-24988($s1)
    # Line 3557
    lw	$at,152($sp)
    srl	$at,$at,0x1e
    sll	$at,$at,0x4
    addu	$ra,$ra,$at
    # Line 3558
    lwc1	$f5,1856($ra)
    swc1	$f5,-24984($s1)
    lwc1	$f4,1860($ra)
    swc1	$f4,-24980($s1)
    lwc1	$f3,1864($ra)
    swc1	$f3,-24976($s1)
    lwc1	$f2,1868($ra)
    swc1	$f2,-24972($s1)
    # Line 3563
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,4608
    jalr	$t9
    li	$a0,1028
    # Line 3564
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,4609
    jalr	$t9
    li	$a0,1028
    # Line 3565
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,4610
    jalr	$t9
    li	$a0,1028
    # Line 3566
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,4608
    jalr	$t9
    li	$a0,1029
    # Line 3567
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,4609
    jalr	$t9
    li	$a0,1029
    # Line 3568
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,4610
    jalr	$t9
    li	$a0,1029
    # Line 3571
    lw	$a1,148($sp)
    srl	$a1,$a1,0x1c
    andi	$a1,$a1,0x3
    addiu	$a0,$sp,16
    sll	$a4,$a1,0x2
    addu	$a4,$a0,$a4
    lw	$a4,288($a4)
    la	$a2,sub_0daf0000
    andi	$a4,$a4,0x3ff
    addiu	$a2,$a2,-27172
    addiu	$a4,$a4,-8
    sll	$a1,$a1,0x4
    sltiu	$a5,$a4,14
    addu	$a0,$a0,$a1
    sll	$a4,$a4,0x2
    beqz	$a5,.L0d9da7ac
    addu	$a2,$a2,$a4
    lw	$a4,0($a2)
    jr	$a4
    # Line 3617
    lwc1	$f18,896($a0)
.L0d9da768:
    # Line 3624
    lw	$a7,896($a0)
    sll	$a7,$a7,0x2
    # Line 3625
    lw	$a6,900($a0)
    # Line 3624
    addu	$a7,$s0,$a7
    lwc1	$f10,3824($a7)
    # Line 3626
    lw	$a5,904($a0)
    # Line 3625
    sll	$a6,$a6,0x2
    addu	$a6,$s0,$a6
    # Line 3624
    swc1	$f10,2320($sp)
    # Line 3625
    lwc1	$f9,3824($a6)
    # Line 3626
    sll	$a5,$a5,0x2
    addu	$a5,$s0,$a5
    # Line 3625
    swc1	$f9,2324($sp)
    # Line 3626
    lwc1	$f8,3824($a5)
    swc1	$f8,2328($sp)
.L0d9da7a4:
    # Line 3664
    lwc1	$f11,_lit_3f800000
    swc1	$f11,2332($sp)
.L0d9da7ac:
    # Line 3668
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,2320
    li	$a1,5632
    jalr	$t9
    li	$a0,1028
    # Line 3669
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,2320
    li	$a1,5632
    jalr	$t9
    li	$a0,1029
    lw	$at,1792($s0)
    andi	$at,$at,0x80
    beqz	$at,.L0d9da814
    ld	$ra,2352($sp)
    # Line 3673
    lw	$a0,1384($s0)
    li	$v0,1028
    beq	$a0,$v0,.L0d9da8a0
    li	$v1,1032
    beq	$a0,$v1,.L0d9da8a0
.L0d9da800:
    # Line 3695
    li	$a1,1029
    beq	$a0,$a1,.L0d9da82c
    li	$a2,1032
    beq	$a0,$a2,.L0d9da82c
    nop
.L0d9da814:
    ld	$s0,2336($sp)
    # Line 3724
    li	$a3,1
    sb	$a3,-24952($s1)
    # Line 3725
    ld	$s1,2344($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d9da82c:
    # Line 3698
    lw	$a2,1388($s0)
    li	$a4,4608
    beq	$a2,$a4,.L0d9daef0
    # Line 3700
    lwc1	$f17,2320($sp)
    # Line 3698
    li	$a5,5634
    beq	$a2,$a5,.L0d9da900
    # Line 3703
    lwc1	$f27,2320($sp)
    # Line 3698
    li	$a6,4609
    beq	$a2,$a6,.L0d9da920
    # Line 3706
    lwc1	$f1,2320($sp)
    # Line 3698
    li	$a7,4610
    beq	$a2,$a7,.L0d9daf24
    # Line 3709
    lwc1	$f23,2320($sp)
    # Line 3698
    li	$t0,5632
    bne	$a2,$t0,.L0d9da814
    # Line 3712
    lwc1	$f15,2320($sp)
    swc1	$f15,-24984($s1)
    lwc1	$f14,2324($sp)
    swc1	$f14,-24980($s1)
    lwc1	$f13,2328($sp)
    # Line 3725
    ld	$s0,2336($sp)
    # Line 3712
    swc1	$f13,-24976($s1)
    lwc1	$f12,2332($sp)
    # Line 3724
    li	$t1,1
    sb	$t1,-24952($s1)
    # Line 3712
    swc1	$f12,-24972($s1)
    # Line 3725
    ld	$s1,2344($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d9da8a0:
    # Line 3676
    lw	$a2,1388($s0)
    li	$t2,4608
    beq	$a2,$t2,.L0d9da998
    li	$at,5632
    li	$t3,5634
    beq	$a2,$t3,.L0d9da954
    # Line 3681
    lwc1	$f5,2320($sp)
    # Line 3676
    li	$t8,4609
    beq	$a2,$t8,.L0d9da974
    # Line 3684
    lwc1	$f9,2320($sp)
    # Line 3676
    li	$t9,4610
    beq	$a2,$t9,.L0d9daecc
    # Line 3687
    lwc1	$f13,2320($sp)
    # Line 3676
    bne	$a2,$at,.L0d9da800
    # Line 3690
    lwc1	$f19,2320($sp)
    swc1	$f19,-25064($s1)
    lwc1	$f18,2324($sp)
    swc1	$f18,-25060($s1)
    lwc1	$f17,2328($sp)
    swc1	$f17,-25056($s1)
    lwc1	$f16,2332($sp)
    swc1	$f16,-25052($s1)
    # Line 3691
    b	.L0d9da800
    lw	$a0,1384($s0)
.L0d9da900:
    # Line 3703
    swc1	$f27,-25032($s1)
    lwc1	$f25,2324($sp)
    swc1	$f25,-25028($s1)
    lwc1	$f23,2328($sp)
    swc1	$f23,-25024($s1)
    lwc1	$f21,2332($sp)
    swc1	$f21,-25020($s1)
    # Line 3706
    lwc1	$f1,2320($sp)
.L0d9da920:
    swc1	$f1,-25016($s1)
    lwc1	$f0,2324($sp)
    swc1	$f0,-25012($s1)
    lwc1	$f31,2328($sp)
    # Line 3725
    ld	$s0,2336($sp)
    # Line 3706
    swc1	$f31,-25008($s1)
    lwc1	$f29,2332($sp)
    # Line 3724
    li	$v0,1
    sb	$v0,-24952($s1)
    # Line 3706
    swc1	$f29,-25004($s1)
    # Line 3725
    ld	$s1,2344($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d9da954:
    # Line 3681
    swc1	$f5,-25112($s1)
    lwc1	$f4,2324($sp)
    swc1	$f4,-25108($s1)
    lwc1	$f3,2328($sp)
    swc1	$f3,-25104($s1)
    lwc1	$f2,2332($sp)
    swc1	$f2,-25100($s1)
    # Line 3684
    lwc1	$f9,2320($sp)
.L0d9da974:
    swc1	$f9,-25096($s1)
    lwc1	$f8,2324($sp)
    swc1	$f8,-25092($s1)
    lwc1	$f7,2328($sp)
    swc1	$f7,-25088($s1)
    lwc1	$f6,2332($sp)
    swc1	$f6,-25084($s1)
    # Line 3685
    b	.L0d9da800
    lw	$a0,1384($s0)
.L0d9da998:
    # Line 3678
    lwc1	$f13,2320($sp)
    swc1	$f13,-25112($s1)
    lwc1	$f12,2324($sp)
    swc1	$f12,-25108($s1)
    lwc1	$f11,2328($sp)
    swc1	$f11,-25104($s1)
    lwc1	$f10,2332($sp)
    swc1	$f10,-25100($s1)
    b	.L0d9da800
    lw	$a0,1384($s0)
.L0d9da9c0:
    # Line 3575
    lw	$a4,896($a0)
    sll	$a4,$a4,0x2
    # Line 3576
    lw	$a2,900($a0)
    # Line 3575
    addu	$a4,$s0,$a4
    lwc1	$f17,3824($a4)
    # Line 3577
    lw	$a1,904($a0)
    # Line 3576
    sll	$a2,$a2,0x2
    addu	$a2,$s0,$a2
    # Line 3575
    swc1	$f17,2320($sp)
    # Line 3576
    lwc1	$f16,3824($a2)
    # Line 3578
    lw	$v1,908($a0)
    # Line 3577
    sll	$a1,$a1,0x2
    addu	$a1,$s0,$a1
    # Line 3576
    swc1	$f16,2324($sp)
    # Line 3577
    lwc1	$f15,3824($a1)
    # Line 3578
    sll	$v1,$v1,0x2
    addu	$v1,$s0,$v1
    # Line 3577
    swc1	$f15,2328($sp)
    # Line 3578
    lwc1	$f14,3824($v1)
    # Line 3579
    b	.L0d9da7ac
    # Line 3578
    swc1	$f14,2332($sp)
.L0d9daa14:
    # Line 3618
    lwc1	$f19,900($a0)
    # Line 3620
    lwc1	$f23,908($a0)
    # Line 3619
    lwc1	$f21,904($a0)
    # Line 3620
    swc1	$f23,2332($sp)
    # Line 3619
    swc1	$f21,2328($sp)
    # Line 3618
    swc1	$f19,2324($sp)
    # Line 3621
    b	.L0d9da7ac
    # Line 3617
    swc1	$f18,2320($sp)
.L0d9daa34:
    # Line 3610
    lw	$t0,896($a0)
    mtc1	$t0,$f2
    # Line 3611
    lw	$a7,900($a0)
    # Line 3610
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_40000000
    # Line 3611
    mtc1	$a7,$f3
    # Line 3610
    lwc1	$f27,_lit_3f800000
    madd.s	$f2,$f27,$f2,$f1
    # Line 3612
    lw	$a6,904($a0)
    # Line 3611
    cvt.s.w	$f3,$f3
    # Line 3610
    lwc1	$f0,3568($s0)
    # Line 3612
    mtc1	$a6,$f31
    # Line 3611
    madd.s	$f3,$f27,$f3,$f1
    # Line 3613
    lw	$a5,908($a0)
    # Line 3612
    cvt.s.w	$f31,$f31
    # Line 3610
    mul.s	$f0,$f0,$f2
    swc1	$f0,2320($sp)
    # Line 3611
    lwc1	$f2,3568($s0)
    # Line 3613
    mtc1	$a5,$f0
    # Line 3612
    madd.s	$f31,$f27,$f31,$f1
    # Line 3611
    mul.s	$f2,$f2,$f3
    # Line 3613
    cvt.s.w	$f0,$f0
    # Line 3611
    swc1	$f2,2324($sp)
    # Line 3612
    lwc1	$f29,3568($s0)
    # Line 3613
    madd.s	$f27,$f27,$f0,$f1
    # Line 3612
    mul.s	$f29,$f29,$f31
    swc1	$f29,2328($sp)
    # Line 3613
    lwc1	$f25,3568($s0)
    mul.s	$f25,$f25,$f27
    # Line 3614
    b	.L0d9da7ac
    # Line 3613
    swc1	$f25,2332($sp)
.L0d9daab0:
    # Line 3603
    lw	$t8,896($a0)
    sll	$t8,$t8,0x1
    addiu	$t8,$t8,1
    mtc1	$t8,$f9
    # Line 3604
    lw	$t3,900($a0)
    sll	$t3,$t3,0x1
    # Line 3603
    cvt.s.w	$f9,$f9
    lwc1	$f10,3560($s0)
    # Line 3604
    addiu	$t3,$t3,1
    mtc1	$t3,$f7
    # Line 3605
    lw	$t2,904($a0)
    # Line 3603
    mul.s	$f9,$f9,$f10
    # Line 3605
    sll	$t2,$t2,0x1
    # Line 3604
    cvt.s.w	$f7,$f7
    # Line 3603
    swc1	$f9,2320($sp)
    # Line 3605
    addiu	$t2,$t2,1
    # Line 3604
    lwc1	$f8,3560($s0)
    # Line 3605
    mtc1	$t2,$f5
    # Line 3606
    lw	$t1,908($a0)
    # Line 3604
    mul.s	$f7,$f7,$f8
    # Line 3606
    sll	$t1,$t1,0x1
    # Line 3605
    cvt.s.w	$f5,$f5
    # Line 3604
    swc1	$f7,2324($sp)
    # Line 3606
    addiu	$t1,$t1,1
    # Line 3605
    lwc1	$f6,3560($s0)
    # Line 3606
    mtc1	$t1,$f3
    # Line 3605
    mul.s	$f5,$f5,$f6
    # Line 3606
    cvt.s.w	$f3,$f3
    # Line 3605
    swc1	$f5,2328($sp)
    # Line 3606
    lwc1	$f4,3560($s0)
    mul.s	$f3,$f3,$f4
    # Line 3607
    b	.L0d9da7ac
    # Line 3606
    swc1	$f3,2332($sp)
.L0d9dab34:
    # Line 3596
    lw	$v0,896($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f16
    # Line 3597
    lw	$at,900($a0)
    sll	$at,$at,0x1
    # Line 3596
    cvt.s.w	$f16,$f16
    lwc1	$f17,3552($s0)
    # Line 3597
    addiu	$at,$at,1
    mtc1	$at,$f14
    # Line 3598
    lw	$ra,904($a0)
    # Line 3596
    mul.s	$f16,$f16,$f17
    # Line 3598
    sll	$ra,$ra,0x1
    # Line 3597
    cvt.s.w	$f14,$f14
    # Line 3596
    swc1	$f16,2320($sp)
    # Line 3598
    addiu	$ra,$ra,1
    # Line 3597
    lwc1	$f15,3552($s0)
    # Line 3598
    mtc1	$ra,$f12
    # Line 3599
    lw	$t9,908($a0)
    # Line 3597
    mul.s	$f14,$f14,$f15
    # Line 3599
    sll	$t9,$t9,0x1
    # Line 3598
    cvt.s.w	$f12,$f12
    # Line 3597
    swc1	$f14,2324($sp)
    # Line 3599
    addiu	$t9,$t9,1
    # Line 3598
    lwc1	$f13,3552($s0)
    # Line 3599
    mtc1	$t9,$f10
    # Line 3598
    mul.s	$f12,$f12,$f13
    # Line 3599
    cvt.s.w	$f10,$f10
    # Line 3598
    swc1	$f12,2328($sp)
    # Line 3599
    lwc1	$f11,3552($s0)
    mul.s	$f10,$f10,$f11
    # Line 3600
    b	.L0d9da7ac
    # Line 3599
    swc1	$f10,2332($sp)
.L0d9dabb8:
    # Line 3589
    lw	$a4,896($a0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f27
    # Line 3590
    lw	$a2,900($a0)
    dsll32	$a2,$a2,0x0
    # Line 3589
    cvt.s.l	$f27,$f27
    lwc1	$f29,3568($s0)
    # Line 3590
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f23
    # Line 3591
    lw	$a1,904($a0)
    # Line 3589
    mul.s	$f27,$f27,$f29
    # Line 3591
    dsll32	$a1,$a1,0x0
    # Line 3590
    cvt.s.l	$f23,$f23
    # Line 3589
    swc1	$f27,2320($sp)
    # Line 3591
    dsrl32	$a1,$a1,0x0
    # Line 3590
    lwc1	$f25,3568($s0)
    # Line 3591
    dmtc1	$a1,$f19
    # Line 3592
    lw	$v1,908($a0)
    # Line 3590
    mul.s	$f23,$f23,$f25
    # Line 3592
    dsll32	$v1,$v1,0x0
    # Line 3591
    cvt.s.l	$f19,$f19
    # Line 3590
    swc1	$f23,2324($sp)
    # Line 3592
    dsrl32	$v1,$v1,0x0
    # Line 3591
    lwc1	$f21,3568($s0)
    # Line 3592
    dmtc1	$v1,$f17
    # Line 3591
    mul.s	$f19,$f19,$f21
    # Line 3592
    cvt.s.l	$f17,$f17
    # Line 3591
    swc1	$f19,2328($sp)
    # Line 3592
    lwc1	$f18,3568($s0)
    mul.s	$f17,$f17,$f18
    # Line 3593
    b	.L0d9da7ac
    # Line 3592
    swc1	$f17,2332($sp)
.L0d9dac3c:
    # Line 3582
    lw	$t0,896($a0)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f4
    # Line 3583
    lw	$a7,900($a0)
    dsll32	$a7,$a7,0x0
    # Line 3582
    cvt.s.l	$f4,$f4
    lwc1	$f5,3560($s0)
    # Line 3583
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f2
    # Line 3584
    lw	$a6,904($a0)
    # Line 3582
    mul.s	$f4,$f4,$f5
    # Line 3584
    dsll32	$a6,$a6,0x0
    # Line 3583
    cvt.s.l	$f2,$f2
    # Line 3582
    swc1	$f4,2320($sp)
    # Line 3584
    dsrl32	$a6,$a6,0x0
    # Line 3583
    lwc1	$f3,3560($s0)
    # Line 3584
    dmtc1	$a6,$f0
    # Line 3585
    lw	$a5,908($a0)
    # Line 3583
    mul.s	$f2,$f2,$f3
    # Line 3585
    dsll32	$a5,$a5,0x0
    # Line 3584
    cvt.s.l	$f0,$f0
    # Line 3583
    swc1	$f2,2324($sp)
    # Line 3585
    dsrl32	$a5,$a5,0x0
    # Line 3584
    lwc1	$f1,3560($s0)
    # Line 3585
    dmtc1	$a5,$f29
    # Line 3584
    mul.s	$f0,$f0,$f1
    # Line 3585
    cvt.s.l	$f29,$f29
    # Line 3584
    swc1	$f0,2328($sp)
    # Line 3585
    lwc1	$f31,3560($s0)
    mul.s	$f29,$f29,$f31
    # Line 3586
    b	.L0d9da7ac
    # Line 3585
    swc1	$f29,2332($sp)
.L0d9dacc0:
    # Line 3660
    lwc1	$f5,896($a0)
    # Line 3662
    lwc1	$f7,904($a0)
    # Line 3661
    lwc1	$f6,900($a0)
    # Line 3662
    swc1	$f7,2328($sp)
    # Line 3661
    swc1	$f6,2324($sp)
    # Line 3662
    b	.L0d9da7a4
    # Line 3660
    swc1	$f5,2320($sp)
.L0d9dacdc:
    # Line 3654
    lw	$t3,896($a0)
    mtc1	$t3,$f15
    # Line 3655
    lw	$t2,900($a0)
    # Line 3654
    cvt.s.w	$f15,$f15
    lwc1	$f13,_lit_40000000
    # Line 3655
    mtc1	$t2,$f11
    # Line 3654
    lwc1	$f9,_lit_3f800000
    madd.s	$f15,$f9,$f15,$f13
    # Line 3656
    lw	$t1,904($a0)
    # Line 3655
    cvt.s.w	$f11,$f11
    # Line 3654
    lwc1	$f14,3568($s0)
    # Line 3656
    mtc1	$t1,$f12
    # Line 3655
    madd.s	$f11,$f9,$f11,$f13
    # Line 3656
    cvt.s.w	$f12,$f12
    # Line 3654
    mul.s	$f14,$f14,$f15
    swc1	$f14,2320($sp)
    # Line 3655
    lwc1	$f10,3568($s0)
    # Line 3656
    madd.s	$f9,$f9,$f12,$f13
    # Line 3655
    mul.s	$f10,$f10,$f11
    swc1	$f10,2324($sp)
    # Line 3656
    lwc1	$f8,3568($s0)
    mul.s	$f8,$f8,$f9
    # Line 3657
    b	.L0d9da7a4
    # Line 3656
    swc1	$f8,2328($sp)
.L0d9dad3c:
    # Line 3648
    lw	$ra,896($a0)
    sll	$ra,$ra,0x1
    addiu	$ra,$ra,1
    mtc1	$ra,$f21
    # Line 3649
    lw	$t9,900($a0)
    sll	$t9,$t9,0x1
    # Line 3648
    cvt.s.w	$f21,$f21
    lwc1	$f23,3560($s0)
    # Line 3649
    addiu	$t9,$t9,1
    mtc1	$t9,$f18
    # Line 3650
    lw	$t8,904($a0)
    # Line 3648
    mul.s	$f21,$f21,$f23
    # Line 3650
    sll	$t8,$t8,0x1
    # Line 3649
    cvt.s.w	$f18,$f18
    # Line 3648
    swc1	$f21,2320($sp)
    # Line 3650
    addiu	$t8,$t8,1
    # Line 3649
    lwc1	$f19,3560($s0)
    # Line 3650
    mtc1	$t8,$f16
    # Line 3649
    mul.s	$f18,$f18,$f19
    # Line 3650
    cvt.s.w	$f16,$f16
    # Line 3649
    swc1	$f18,2324($sp)
    # Line 3650
    lwc1	$f17,3560($s0)
    mul.s	$f16,$f16,$f17
    # Line 3651
    b	.L0d9da7a4
    # Line 3650
    swc1	$f16,2328($sp)
.L0d9dada0:
    # Line 3642
    lw	$v1,896($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f31
    # Line 3643
    lw	$v0,900($a0)
    sll	$v0,$v0,0x1
    # Line 3642
    cvt.s.w	$f31,$f31
    lwc1	$f0,3552($s0)
    # Line 3643
    addiu	$v0,$v0,1
    mtc1	$v0,$f27
    # Line 3644
    lw	$at,904($a0)
    # Line 3642
    mul.s	$f31,$f31,$f0
    # Line 3644
    sll	$at,$at,0x1
    # Line 3643
    cvt.s.w	$f27,$f27
    # Line 3642
    swc1	$f31,2320($sp)
    # Line 3644
    addiu	$at,$at,1
    # Line 3643
    lwc1	$f29,3552($s0)
    # Line 3644
    mtc1	$at,$f23
    # Line 3643
    mul.s	$f27,$f27,$f29
    # Line 3644
    cvt.s.w	$f23,$f23
    # Line 3643
    swc1	$f27,2324($sp)
    # Line 3644
    lwc1	$f25,3552($s0)
    mul.s	$f23,$f23,$f25
    # Line 3645
    b	.L0d9da7a4
    # Line 3644
    swc1	$f23,2328($sp)
.L0d9dae04:
    # Line 3636
    lw	$a4,896($a0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f4
    # Line 3637
    lw	$a2,900($a0)
    dsll32	$a2,$a2,0x0
    # Line 3636
    cvt.s.l	$f4,$f4
    lwc1	$f5,3568($s0)
    # Line 3637
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f2
    # Line 3638
    lw	$a1,904($a0)
    # Line 3636
    mul.s	$f4,$f4,$f5
    # Line 3638
    dsll32	$a1,$a1,0x0
    # Line 3637
    cvt.s.l	$f2,$f2
    # Line 3636
    swc1	$f4,2320($sp)
    # Line 3638
    dsrl32	$a1,$a1,0x0
    # Line 3637
    lwc1	$f3,3568($s0)
    # Line 3638
    dmtc1	$a1,$f0
    # Line 3637
    mul.s	$f2,$f2,$f3
    # Line 3638
    cvt.s.l	$f0,$f0
    # Line 3637
    swc1	$f2,2324($sp)
    # Line 3638
    lwc1	$f1,3568($s0)
    mul.s	$f0,$f0,$f1
    # Line 3639
    b	.L0d9da7a4
    # Line 3638
    swc1	$f0,2328($sp)
.L0d9dae68:
    # Line 3630
    lw	$a7,896($a0)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f9
    # Line 3631
    lw	$a6,900($a0)
    dsll32	$a6,$a6,0x0
    # Line 3630
    cvt.s.l	$f9,$f9
    lwc1	$f10,3560($s0)
    # Line 3631
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f7
    # Line 3632
    lw	$a5,904($a0)
    # Line 3630
    mul.s	$f9,$f9,$f10
    # Line 3632
    dsll32	$a5,$a5,0x0
    # Line 3631
    cvt.s.l	$f7,$f7
    # Line 3630
    swc1	$f9,2320($sp)
    # Line 3632
    dsrl32	$a5,$a5,0x0
    # Line 3631
    lwc1	$f8,3560($s0)
    # Line 3632
    dmtc1	$a5,$f5
    # Line 3631
    mul.s	$f7,$f7,$f8
    # Line 3632
    cvt.s.l	$f5,$f5
    # Line 3631
    swc1	$f7,2324($sp)
    # Line 3632
    lwc1	$f6,3560($s0)
    mul.s	$f5,$f5,$f6
    # Line 3633
    b	.L0d9da7a4
    # Line 3632
    swc1	$f5,2328($sp)
.L0d9daecc:
    # Line 3687
    swc1	$f13,-25080($s1)
    lwc1	$f12,2324($sp)
    swc1	$f12,-25076($s1)
    lwc1	$f11,2328($sp)
    swc1	$f11,-25072($s1)
    lwc1	$f10,2332($sp)
    swc1	$f10,-25068($s1)
    # Line 3688
    b	.L0d9da800
    lw	$a0,1384($s0)
.L0d9daef0:
    # Line 3700
    swc1	$f17,-25032($s1)
    lwc1	$f16,2324($sp)
    swc1	$f16,-25028($s1)
    lwc1	$f15,2328($sp)
    # Line 3725
    ld	$s0,2336($sp)
    # Line 3700
    swc1	$f15,-25024($s1)
    lwc1	$f14,2332($sp)
    # Line 3724
    li	$t0,1
    sb	$t0,-24952($s1)
    # Line 3700
    swc1	$f14,-25020($s1)
    # Line 3725
    ld	$s1,2344($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d9daf24:
    # Line 3709
    swc1	$f23,-25000($s1)
    lwc1	$f21,2324($sp)
    swc1	$f21,-24996($s1)
    lwc1	$f19,2328($sp)
    # Line 3725
    ld	$s0,2336($sp)
    # Line 3709
    swc1	$f19,-24992($s1)
    lwc1	$f18,2332($sp)
    # Line 3724
    li	$t1,1
    sb	$t1,-24952($s1)
    # Line 3709
    swc1	$f18,-24988($s1)
    # Line 3725
    ld	$s1,2344($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.end BeforeIgloo

# Function: __glOdyim_IglooVertex2d
# Declared: Line 3732 (Source lines: 3732-3751)
# Address: 0x0d9daf60 - 0x0d9db090 (Size: 304 bytes, Frame: 48)
.globl __glOdyim_IglooVertex2d
.ent __glOdyim_IglooVertex2d
__glOdyim_IglooVertex2d:
    # Line 3732
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3733
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a2,3
    # Line 3732
    lui	$v0,0x12
    # Line 3733
    and	$at,$a2,$at
    # Line 3732
    mov.d	$f4,$f13
    sd	$ra,32($sp)
    addiu	$v0,$v0,-10704
    mov.d	$f5,$f12
    sd	$gp,8($sp)
    # Line 3733
    beq	$a2,$at,.L0d9db030
    # Line 3732
    addu	$gp,$t9,$v0
.L0d9daf98:
    # Line 3735
    lui	$a1,0x1
    ori	$a1,$a1,0x9dbc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a3,1
    beqz	$a1,.L0d9db018
    li	$a4,2
    beq	$a1,$a3,.L0d9db01c
    # Line 3738
    nop	# was lw $t9, -18696($gp) # &__glOdyim_Vertex2d
    # Line 3735
    beq	$a1,$a4,.L0d9db068
    # Line 3741
    nop	# was lw $t9, -18600($gp) # &__glOdyim_Vertex2d_smallw
    # Line 3735
    beq	$a1,$a2,.L0d9daff0
    nop
.L0d9dafcc:
    # Line 3749
    lw	$a5,31552($s0)
    and	$a5,$a2,$a5
    beq	$a2,$a5,.L0d9db054
    # Line 3750
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,32($sp)
.L0d9dafe0:
    ld	$s0,0($sp)
    # Line 3751
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9daff0:
    # Line 3744
    lw	$a6,31600($s0)
    dsll32	$a6,$a6,0x9
    bgez	$a6,.L0d9db07c
    # Line 3747
    nop	# was lw $t9, -18408($gp) # &__glOdyim_Vertex2d_mag_line0
    # Line 3745
    # lw $t9, -18504($gp) # &__glOdyim_Vertex2d_mag
    mov.d	$f12,$f5
    jal	__glOdyim_Vertex2d_mag
    mov.d	$f13,$f4
    b	.L0d9dafcc
    li	$a2,3
.L0d9db018:
    # Line 3738
    # lw $t9, -18696($gp) # &__glOdyim_Vertex2d
.L0d9db01c:
    mov.d	$f12,$f5
    jal	__glOdyim_Vertex2d
    mov.d	$f13,$f4
    b	.L0d9dafcc
    li	$a2,3
.L0d9db030:
    # Line 3734
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    sdc1	$f12,16($sp)
    bal __glOdyim_EdgeFlagv
    sdc1	$f13,24($sp)
    ldc1	$f4,24($sp)
    li	$a2,3
    b	.L0d9daf98
    ldc1	$f5,16($sp)
.L0d9db054:
    # Line 3750
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dafe0
    ld	$ra,32($sp)
.L0d9db068:
    # Line 3741
    mov.d	$f12,$f5
    jal	sub_0d9e0000
    mov.d	$f13,$f4
    b	.L0d9dafcc
    li	$a2,3
.L0d9db07c:
    # Line 3747
    mov.d	$f12,$f5
    jalr	$t9
    mov.d	$f13,$f4
    b	.L0d9dafcc
    li	$a2,3
.end __glOdyim_IglooVertex2d

# Function: __glOdyim_IglooVertex2dv
# Declared: Line 3754 (Source lines: 3754-3774)
# Address: 0x0d9db090 - 0x0d9db1a0 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex2dv
.ent __glOdyim_IglooVertex2dv
__glOdyim_IglooVertex2dv:
    # Line 3754
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 3755
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 3754
    lui	$v0,0x12
    # Line 3755
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 3754
    addiu	$v0,$v0,-11008
    sd	$gp,8($sp)
    # Line 3755
    beq	$a3,$at,.L0d9db14c
    # Line 3754
    addu	$gp,$t9,$v0
.L0d9db0c0:
    # Line 3757
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9db138
    li	$a5,2
    beq	$a2,$a4,.L0d9db13c
    # Line 3760
    nop	# was lw $t9, -18692($gp) # &__glOdyim_Vertex2dv
    # Line 3757
    beq	$a2,$a5,.L0d9db17c
    # Line 3763
    nop	# was lw $t9, -18596($gp) # &__glOdyim_Vertex2dv_smallw
    # Line 3757
    beq	$a2,$a3,.L0d9db118
    nop
.L0d9db0f4:
    # Line 3771
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9db168
    # Line 3772
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,24($sp)
.L0d9db108:
    ld	$s0,0($sp)
    # Line 3774
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9db118:
    # Line 3766
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9db18c
    # Line 3767
    nop	# was lw $t9, -18500($gp) # &__glOdyim_Vertex2dv_mag
    jal	__glOdyim_Vertex2dv_mag
    nop
    b	.L0d9db0f4
    li	$a3,3
.L0d9db138:
    # Line 3760
    # lw $t9, -18692($gp) # &__glOdyim_Vertex2dv
.L0d9db13c:
    jal	__glOdyim_Vertex2dv
    nop
    b	.L0d9db0f4
    li	$a3,3
.L0d9db14c:
    # Line 3756
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9db0c0
    ld	$a0,16($sp)
.L0d9db168:
    # Line 3772
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db108
    ld	$ra,24($sp)
.L0d9db17c:
    # Line 3763
    jal	sub_0d9e0000
    nop
    b	.L0d9db0f4
    li	$a3,3
.L0d9db18c:
    # Line 3769
    # lw $t9, -18404($gp) # &__glOdyim_Vertex2dv_mag_line0
    jal	__glOdyim_Vertex2dv_mag_line0
    nop
    b	.L0d9db0f4
    li	$a3,3
.end __glOdyim_IglooVertex2dv

# Function: __glOdyim_IglooVertex2f
# Declared: Line 3777 (Source lines: 3777-3796)
# Address: 0x0d9db1a0 - 0x0d9db2d0 (Size: 304 bytes, Frame: 48)
.globl __glOdyim_IglooVertex2f
.ent __glOdyim_IglooVertex2f
__glOdyim_IglooVertex2f:
    # Line 3777
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3778
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a2,3
    # Line 3777
    lui	$v0,0x12
    # Line 3778
    and	$at,$a2,$at
    # Line 3777
    mov.s	$f4,$f13
    sd	$ra,32($sp)
    addiu	$v0,$v0,-11280
    mov.s	$f5,$f12
    sd	$gp,8($sp)
    # Line 3778
    beq	$a2,$at,.L0d9db270
    # Line 3777
    addu	$gp,$t9,$v0
.L0d9db1d8:
    # Line 3780
    lui	$a1,0x1
    ori	$a1,$a1,0x9dbc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a3,1
    beqz	$a1,.L0d9db258
    li	$a4,2
    beq	$a1,$a3,.L0d9db25c
    # Line 3783
    nop	# was lw $t9, -18688($gp) # &__glOdyim_Vertex2f
    # Line 3780
    beq	$a1,$a4,.L0d9db2a8
    # Line 3786
    nop	# was lw $t9, -18592($gp) # &__glOdyim_Vertex2f_smallw
    # Line 3780
    beq	$a1,$a2,.L0d9db230
    nop
.L0d9db20c:
    # Line 3794
    lw	$a5,31552($s0)
    and	$a5,$a2,$a5
    beq	$a2,$a5,.L0d9db294
    # Line 3795
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,32($sp)
.L0d9db220:
    ld	$s0,0($sp)
    # Line 3796
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9db230:
    # Line 3789
    lw	$a6,31600($s0)
    dsll32	$a6,$a6,0x9
    bgez	$a6,.L0d9db2bc
    # Line 3792
    nop	# was lw $t9, -18400($gp) # &__glOdyim_Vertex2f_mag_line0
    # Line 3790
    # lw $t9, -18496($gp) # &__glOdyim_Vertex2f_mag
    mov.s	$f12,$f5
    jal	__glOdyim_Vertex2f_mag
    mov.s	$f13,$f4
    b	.L0d9db20c
    li	$a2,3
.L0d9db258:
    # Line 3783
    # lw $t9, -18688($gp) # &__glOdyim_Vertex2f
.L0d9db25c:
    mov.s	$f12,$f5
    jal	__glOdyim_Vertex2f
    mov.s	$f13,$f4
    b	.L0d9db20c
    li	$a2,3
.L0d9db270:
    # Line 3779
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    sdc1	$f12,16($sp)
    bal __glOdyim_EdgeFlagv
    sdc1	$f13,24($sp)
    ldc1	$f4,24($sp)
    li	$a2,3
    b	.L0d9db1d8
    ldc1	$f5,16($sp)
.L0d9db294:
    # Line 3795
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db220
    ld	$ra,32($sp)
.L0d9db2a8:
    # Line 3786
    mov.s	$f12,$f5
    jal	sub_0d9e0000
    mov.s	$f13,$f4
    b	.L0d9db20c
    li	$a2,3
.L0d9db2bc:
    # Line 3792
    mov.s	$f12,$f5
    jalr	$t9
    mov.s	$f13,$f4
    b	.L0d9db20c
    li	$a2,3
.end __glOdyim_IglooVertex2f

# Function: __glOdyim_IglooVertex2fv
# Declared: Line 3799 (Source lines: 3799-3818)
# Address: 0x0d9db2d0 - 0x0d9db3e0 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex2fv
.ent __glOdyim_IglooVertex2fv
__glOdyim_IglooVertex2fv:
    # Line 3799
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 3800
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 3799
    lui	$v0,0x12
    # Line 3800
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 3799
    addiu	$v0,$v0,-11584
    sd	$gp,8($sp)
    # Line 3800
    beq	$a3,$at,.L0d9db38c
    # Line 3799
    addu	$gp,$t9,$v0
.L0d9db300:
    # Line 3802
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9db378
    li	$a5,2
    beq	$a2,$a4,.L0d9db37c
    # Line 3805
    nop	# was lw $t9, -18684($gp) # &__glOdyim_Vertex2fv
    # Line 3802
    beq	$a2,$a5,.L0d9db3c0
    # Line 3808
    nop	# was lw $t9, -18588($gp) # &__glOdyim_Vertex2fv_smallw
    # Line 3802
    beq	$a2,$a3,.L0d9db354
    nop
.L0d9db334:
    # Line 3816
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9db3a8
    ld	$ra,24($sp)
.L0d9db344:
    ld	$s0,0($sp)
    # Line 3818
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9db354:
    # Line 3811
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9db3d0
    # Line 3814
    nop	# was lw $t9, -18396($gp) # &__glOdyim_Vertex2fv_mag_line0
    # Line 3812
    # lw $t9, -18492($gp) # &__glOdyim_Vertex2fv_mag
    jal	__glOdyim_Vertex2fv_mag
    nop
    b	.L0d9db334
    li	$a3,3
.L0d9db378:
    # Line 3805
    # lw $t9, -18684($gp) # &__glOdyim_Vertex2fv
.L0d9db37c:
    jal	__glOdyim_Vertex2fv
    nop
    b	.L0d9db334
    li	$a3,3
.L0d9db38c:
    # Line 3801
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9db300
    ld	$a0,16($sp)
.L0d9db3a8:
    # Line 3817
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db344
    ld	$ra,24($sp)
.L0d9db3c0:
    # Line 3808
    jal	sub_0d9e0000
    nop
    b	.L0d9db334
    li	$a3,3
.L0d9db3d0:
    # Line 3814
    jalr	$t9
    nop
    b	.L0d9db334
    li	$a3,3
.end __glOdyim_IglooVertex2fv

# Function: __glOdyim_IglooVertex2i
# Declared: Line 3821 (Source lines: 3821-3840)
# Address: 0x0d9db3e0 - 0x0d9db4f8 (Size: 280 bytes, Frame: 48)
.globl __glOdyim_IglooVertex2i
.ent __glOdyim_IglooVertex2i
__glOdyim_IglooVertex2i:
    # Line 3821
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3822
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a4,3
    # Line 3821
    lui	$v0,0x12
    # Line 3822
    and	$at,$a4,$at
    sd	$ra,32($sp)
    # Line 3821
    addiu	$v0,$v0,-11856
    sd	$gp,8($sp)
    # Line 3822
    beq	$a4,$at,.L0d9db498
    # Line 3821
    addu	$gp,$t9,$v0
.L0d9db410:
    # Line 3824
    lui	$a3,0x1
    ori	$a3,$a3,0x9dbc
    addu	$a3,$a3,$s0
    lw	$a3,0($a3)
    li	$a5,1
    beqz	$a3,.L0d9db484
    li	$a6,2
    beq	$a3,$a5,.L0d9db488
    # Line 3827
    nop	# was lw $t9, -18680($gp) # &__glOdyim_Vertex2i
    # Line 3824
    beq	$a3,$a6,.L0d9db4d4
    # Line 3830
    nop	# was lw $t9, -18584($gp) # &__glOdyim_Vertex2i_smallw
    # Line 3824
    beq	$a3,$a4,.L0d9db464
    nop
.L0d9db444:
    # Line 3838
    lw	$a7,31552($s0)
    and	$a7,$a4,$a7
    beq	$a4,$a7,.L0d9db4bc
    ld	$ra,32($sp)
.L0d9db454:
    ld	$s0,0($sp)
    # Line 3840
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9db464:
    # Line 3833
    lw	$t0,31600($s0)
    dsll32	$t0,$t0,0x9
    bgez	$t0,.L0d9db4e4
    # Line 3834
    nop	# was lw $t9, -18488($gp) # &__glOdyim_Vertex2i_mag
    jal	__glOdyim_Vertex2i_mag
    nop
    b	.L0d9db444
    li	$a4,3
.L0d9db484:
    # Line 3827
    # lw $t9, -18680($gp) # &__glOdyim_Vertex2i
.L0d9db488:
    jal	__glOdyim_Vertex2i
    nop
    b	.L0d9db444
    li	$a4,3
.L0d9db498:
    # Line 3823
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    sd	$a0,16($sp)
    bal __glOdyim_EdgeFlagv
    sd	$a1,24($sp)
    ld	$a1,24($sp)
    li	$a4,3
    b	.L0d9db410
    ld	$a0,16($sp)
.L0d9db4bc:
    # Line 3839
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db454
    ld	$ra,32($sp)
.L0d9db4d4:
    # Line 3830
    jal	sub_0d9e0000
    nop
    b	.L0d9db444
    li	$a4,3
.L0d9db4e4:
    # Line 3836
    # lw $t9, -18392($gp) # &__glOdyim_Vertex2i_mag_line0
    jal	__glOdyim_Vertex2i_mag_line0
    nop
    b	.L0d9db444
    li	$a4,3
.end __glOdyim_IglooVertex2i

# Function: __glOdyim_IglooVertex2iv
# Declared: Line 3843 (Source lines: 3843-3862)
# Address: 0x0d9db500 - 0x0d9db610 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex2iv
.ent __glOdyim_IglooVertex2iv
__glOdyim_IglooVertex2iv:
    # Line 3843
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 3844
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 3843
    lui	$v0,0x12
    # Line 3844
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 3843
    addiu	$v0,$v0,-12144
    sd	$gp,8($sp)
    # Line 3844
    beq	$a3,$at,.L0d9db5c0
    # Line 3843
    addu	$gp,$t9,$v0
.L0d9db530:
    # Line 3846
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9db5ac
    li	$a5,2
    beq	$a2,$a4,.L0d9db5b0
    # Line 3849
    nop	# was lw $t9, -18676($gp) # &__glOdyim_Vertex2iv
    # Line 3846
    beq	$a2,$a5,.L0d9db5f0
    # Line 3852
    nop	# was lw $t9, -18580($gp) # &__glOdyim_Vertex2iv_smallw
    # Line 3846
    beq	$a2,$a3,.L0d9db588
    nop
.L0d9db564:
    # Line 3860
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9db5dc
    # Line 3861
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,24($sp)
.L0d9db578:
    ld	$s0,0($sp)
    # Line 3862
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9db588:
    # Line 3855
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9db600
    # Line 3858
    nop	# was lw $t9, -18388($gp) # &__glOdyim_Vertex2iv_mag_line0
    # Line 3856
    # lw $t9, -18484($gp) # &__glOdyim_Vertex2iv_mag
    jal	__glOdyim_Vertex2iv_mag
    nop
    b	.L0d9db564
    li	$a3,3
.L0d9db5ac:
    # Line 3849
    # lw $t9, -18676($gp) # &__glOdyim_Vertex2iv
.L0d9db5b0:
    jal	__glOdyim_Vertex2iv
    nop
    b	.L0d9db564
    li	$a3,3
.L0d9db5c0:
    # Line 3845
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9db530
    ld	$a0,16($sp)
.L0d9db5dc:
    # Line 3861
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db578
    ld	$ra,24($sp)
.L0d9db5f0:
    # Line 3852
    jal	sub_0d9e0000
    nop
    b	.L0d9db564
    li	$a3,3
.L0d9db600:
    # Line 3858
    jalr	$t9
    nop
    b	.L0d9db564
    li	$a3,3
.end __glOdyim_IglooVertex2iv

# Function: __glOdyim_IglooVertex2s
# Declared: Line 3865 (Source lines: 3865-3884)
# Address: 0x0d9db610 - 0x0d9db728 (Size: 280 bytes, Frame: 48)
.globl __glOdyim_IglooVertex2s
.ent __glOdyim_IglooVertex2s
__glOdyim_IglooVertex2s:
    # Line 3865
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3866
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a4,3
    # Line 3865
    lui	$v0,0x12
    # Line 3866
    and	$at,$a4,$at
    sd	$ra,32($sp)
    # Line 3865
    addiu	$v0,$v0,-12416
    sd	$gp,8($sp)
    # Line 3866
    beq	$a4,$at,.L0d9db6cc
    # Line 3865
    addu	$gp,$t9,$v0
.L0d9db640:
    # Line 3868
    lui	$a3,0x1
    ori	$a3,$a3,0x9dbc
    addu	$a3,$a3,$s0
    lw	$a3,0($a3)
    li	$a5,1
    beqz	$a3,.L0d9db6b8
    li	$a6,2
    beq	$a3,$a5,.L0d9db6bc
    # Line 3871
    nop	# was lw $t9, -18672($gp) # &__glOdyim_Vertex2s
    # Line 3868
    beq	$a3,$a6,.L0d9db708
    # Line 3874
    nop	# was lw $t9, -18576($gp) # &__glOdyim_Vertex2s_smallw
    # Line 3868
    beq	$a3,$a4,.L0d9db694
    nop
.L0d9db674:
    # Line 3882
    lw	$a7,31552($s0)
    and	$a7,$a4,$a7
    beq	$a4,$a7,.L0d9db6f0
    ld	$ra,32($sp)
.L0d9db684:
    ld	$s0,0($sp)
    # Line 3884
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9db694:
    # Line 3877
    lw	$t0,31600($s0)
    dsll32	$t0,$t0,0x9
    bgez	$t0,.L0d9db718
    # Line 3880
    nop	# was lw $t9, -18384($gp) # &__glOdyim_Vertex2s_mag_line0
    # Line 3878
    # lw $t9, -18480($gp) # &__glOdyim_Vertex2s_mag
    jal	__glOdyim_Vertex2s_mag
    nop
    b	.L0d9db674
    li	$a4,3
.L0d9db6b8:
    # Line 3871
    # lw $t9, -18672($gp) # &__glOdyim_Vertex2s
.L0d9db6bc:
    jal	__glOdyim_Vertex2s
    nop
    b	.L0d9db674
    li	$a4,3
.L0d9db6cc:
    # Line 3867
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    sd	$a0,16($sp)
    bal __glOdyim_EdgeFlagv
    sd	$a1,24($sp)
    ld	$a1,24($sp)
    li	$a4,3
    b	.L0d9db640
    ld	$a0,16($sp)
.L0d9db6f0:
    # Line 3883
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db684
    ld	$ra,32($sp)
.L0d9db708:
    # Line 3874
    jal	sub_0d9e0000
    nop
    b	.L0d9db674
    li	$a4,3
.L0d9db718:
    # Line 3880
    jalr	$t9
    nop
    b	.L0d9db674
    li	$a4,3
.end __glOdyim_IglooVertex2s

# Function: __glOdyim_IglooVertex2sv
# Declared: Line 3887 (Source lines: 3887-3907)
# Address: 0x0d9db730 - 0x0d9db840 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex2sv
.ent __glOdyim_IglooVertex2sv
__glOdyim_IglooVertex2sv:
    # Line 3887
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 3888
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 3887
    lui	$v0,0x12
    # Line 3888
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 3887
    addiu	$v0,$v0,-12704
    sd	$gp,8($sp)
    # Line 3888
    beq	$a3,$at,.L0d9db7ec
    # Line 3887
    addu	$gp,$t9,$v0
.L0d9db760:
    # Line 3890
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9db7d8
    li	$a5,2
    beq	$a2,$a4,.L0d9db7dc
    # Line 3893
    nop	# was lw $t9, -18668($gp) # &__glOdyim_Vertex2sv
    # Line 3890
    beq	$a2,$a5,.L0d9db820
    # Line 3896
    nop	# was lw $t9, -18572($gp) # &__glOdyim_Vertex2sv_smallw
    # Line 3890
    beq	$a2,$a3,.L0d9db7b4
    nop
.L0d9db794:
    # Line 3904
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9db808
    ld	$ra,24($sp)
.L0d9db7a4:
    ld	$s0,0($sp)
    # Line 3907
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9db7b4:
    # Line 3899
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9db830
    # Line 3902
    nop	# was lw $t9, -18380($gp) # &__glOdyim_Vertex2sv_mag_line0
    # Line 3900
    # lw $t9, -18476($gp) # &__glOdyim_Vertex2sv_mag
    jal	__glOdyim_Vertex2sv_mag
    nop
    b	.L0d9db794
    li	$a3,3
.L0d9db7d8:
    # Line 3893
    # lw $t9, -18668($gp) # &__glOdyim_Vertex2sv
.L0d9db7dc:
    jal	__glOdyim_Vertex2sv
    nop
    b	.L0d9db794
    li	$a3,3
.L0d9db7ec:
    # Line 3889
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9db760
    ld	$a0,16($sp)
.L0d9db808:
    # Line 3905
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db7a4
    ld	$ra,24($sp)
.L0d9db820:
    # Line 3896
    jal	sub_0d9e0000
    nop
    b	.L0d9db794
    li	$a3,3
.L0d9db830:
    # Line 3902
    jalr	$t9
    nop
    b	.L0d9db794
    li	$a3,3
.end __glOdyim_IglooVertex2sv

# Function: __glOdyim_IglooVertex3d
# Declared: Line 3910 (Source lines: 3910-3929)
# Address: 0x0d9db840 - 0x0d9db98c (Size: 332 bytes, Frame: 48)
.globl __glOdyim_IglooVertex3d
.ent __glOdyim_IglooVertex3d
__glOdyim_IglooVertex3d:
    # Line 3910
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3911
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a2,3
    # Line 3910
    mov.d	$f4,$f14
    lui	$v0,0x12
    # Line 3911
    and	$at,$a2,$at
    # Line 3910
    mov.d	$f5,$f13
    sd	$ra,40($sp)
    addiu	$v0,$v0,-12976
    mov.d	$f6,$f12
    sd	$gp,8($sp)
    # Line 3911
    beq	$a2,$at,.L0d9db918
    # Line 3910
    addu	$gp,$t9,$v0
.L0d9db87c:
    # Line 3913
    lui	$a1,0x1
    ori	$a1,$a1,0x9dbc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a3,1
    beqz	$a1,.L0d9db8fc
    li	$a4,2
    beq	$a1,$a3,.L0d9db900
    # Line 3916
    nop	# was lw $t9, -18664($gp) # &__glOdyim_Vertex3d
    # Line 3913
    beq	$a1,$a4,.L0d9db958
    # Line 3919
    nop	# was lw $t9, -18568($gp) # &__glOdyim_Vertex3d_smallw
    # Line 3913
    beq	$a1,$a2,.L0d9db8d4
    nop
.L0d9db8b0:
    # Line 3927
    lw	$a5,31552($s0)
    and	$a5,$a2,$a5
    beq	$a2,$a5,.L0d9db944
    # Line 3928
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,40($sp)
.L0d9db8c4:
    ld	$s0,0($sp)
    # Line 3929
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9db8d4:
    # Line 3922
    lw	$a6,31600($s0)
    dsll32	$a6,$a6,0x9
    bgez	$a6,.L0d9db970
    # Line 3923
    nop	# was lw $t9, -18472($gp) # &__glOdyim_Vertex3d_mag
    mov.d	$f12,$f6
    mov.d	$f13,$f5
    jal	__glOdyim_Vertex3d_mag
    mov.d	$f14,$f4
    b	.L0d9db8b0
    li	$a2,3
.L0d9db8fc:
    # Line 3916
    # lw $t9, -18664($gp) # &__glOdyim_Vertex3d
.L0d9db900:
    mov.d	$f12,$f6
    mov.d	$f13,$f5
    jal	__glOdyim_Vertex3d
    mov.d	$f14,$f4
    b	.L0d9db8b0
    li	$a2,3
.L0d9db918:
    # Line 3912
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sdc1	$f12,16($sp)
    addiu	$t9,$t9,-23424
    sdc1	$f13,24($sp)
    bal __glOdyim_EdgeFlagv
    sdc1	$f14,32($sp)
    ldc1	$f4,32($sp)
    ldc1	$f5,24($sp)
    li	$a2,3
    b	.L0d9db87c
    ldc1	$f6,16($sp)
.L0d9db944:
    # Line 3928
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9db8c4
    ld	$ra,40($sp)
.L0d9db958:
    # Line 3919
    mov.d	$f12,$f6
    mov.d	$f13,$f5
    jal	sub_0d9e0000
    mov.d	$f14,$f4
    b	.L0d9db8b0
    li	$a2,3
.L0d9db970:
    # Line 3925
    # lw $t9, -18376($gp) # &__glOdyim_Vertex3d_mag_line0
    mov.d	$f12,$f6
    mov.d	$f13,$f5
    jal	__glOdyim_Vertex3d_mag_line0
    mov.d	$f14,$f4
    b	.L0d9db8b0
    li	$a2,3
.end __glOdyim_IglooVertex3d

# Function: __glOdyim_IglooVertex3dv
# Declared: Line 3932 (Source lines: 3932-3951)
# Address: 0x0d9db990 - 0x0d9dbaa0 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex3dv
.ent __glOdyim_IglooVertex3dv
__glOdyim_IglooVertex3dv:
    # Line 3932
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 3933
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 3932
    lui	$v0,0x12
    # Line 3933
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 3932
    addiu	$v0,$v0,-13312
    sd	$gp,8($sp)
    # Line 3933
    beq	$a3,$at,.L0d9dba4c
    # Line 3932
    addu	$gp,$t9,$v0
.L0d9db9c0:
    # Line 3935
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dba38
    li	$a5,2
    beq	$a2,$a4,.L0d9dba3c
    # Line 3938
    nop	# was lw $t9, -18660($gp) # &__glOdyim_Vertex3dv
    # Line 3935
    beq	$a2,$a5,.L0d9dba80
    # Line 3941
    nop	# was lw $t9, -18564($gp) # &__glOdyim_Vertex3dv_smallw
    # Line 3935
    beq	$a2,$a3,.L0d9dba14
    nop
.L0d9db9f4:
    # Line 3949
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dba68
    ld	$ra,24($sp)
.L0d9dba04:
    ld	$s0,0($sp)
    # Line 3951
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dba14:
    # Line 3944
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dba90
    # Line 3947
    nop	# was lw $t9, -18372($gp) # &__glOdyim_Vertex3dv_mag_line0
    # Line 3945
    # lw $t9, -18468($gp) # &__glOdyim_Vertex3dv_mag
    jal	__glOdyim_Vertex3dv_mag
    nop
    b	.L0d9db9f4
    li	$a3,3
.L0d9dba38:
    # Line 3938
    # lw $t9, -18660($gp) # &__glOdyim_Vertex3dv
.L0d9dba3c:
    jal	__glOdyim_Vertex3dv
    nop
    b	.L0d9db9f4
    li	$a3,3
.L0d9dba4c:
    # Line 3934
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9db9c0
    ld	$a0,16($sp)
.L0d9dba68:
    # Line 3950
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dba04
    ld	$ra,24($sp)
.L0d9dba80:
    # Line 3941
    jal	sub_0d9e0000
    nop
    b	.L0d9db9f4
    li	$a3,3
.L0d9dba90:
    # Line 3947
    jalr	$t9
    nop
    b	.L0d9db9f4
    li	$a3,3
.end __glOdyim_IglooVertex3dv

# Function: __glOdyim_IglooVertex3f
# Declared: Line 3954 (Source lines: 3954-3973)
# Address: 0x0d9dbaa0 - 0x0d9dbbec (Size: 332 bytes, Frame: 48)
.globl __glOdyim_IglooVertex3f
.ent __glOdyim_IglooVertex3f
__glOdyim_IglooVertex3f:
    # Line 3954
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3955
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a2,3
    # Line 3954
    mov.s	$f4,$f14
    lui	$v0,0x12
    # Line 3955
    and	$at,$a2,$at
    # Line 3954
    mov.s	$f5,$f13
    sd	$ra,40($sp)
    addiu	$v0,$v0,-13584
    mov.s	$f6,$f12
    sd	$gp,8($sp)
    # Line 3955
    beq	$a2,$at,.L0d9dbb74
    # Line 3954
    addu	$gp,$t9,$v0
.L0d9dbadc:
    # Line 3957
    lui	$a1,0x1
    ori	$a1,$a1,0x9dbc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a3,1
    beqz	$a1,.L0d9dbb58
    li	$a4,2
    beq	$a1,$a3,.L0d9dbb5c
    # Line 3960
    nop	# was lw $t9, -18656($gp) # &__glOdyim_Vertex3f
    # Line 3957
    beq	$a1,$a4,.L0d9dbbb8
    # Line 3963
    nop	# was lw $t9, -18560($gp) # &__glOdyim_Vertex3f_smallw
    # Line 3957
    beq	$a1,$a2,.L0d9dbb30
    nop
.L0d9dbb10:
    # Line 3971
    lw	$a5,31552($s0)
    and	$a5,$a2,$a5
    beq	$a2,$a5,.L0d9dbba0
    ld	$ra,40($sp)
.L0d9dbb20:
    ld	$s0,0($sp)
    # Line 3973
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9dbb30:
    # Line 3966
    lw	$a6,31600($s0)
    dsll32	$a6,$a6,0x9
    bgez	$a6,.L0d9dbbd0
    # Line 3967
    nop	# was lw $t9, -18464($gp) # &__glOdyim_Vertex3f_mag
    mov.s	$f12,$f6
    mov.s	$f13,$f5
    jal	__glOdyim_Vertex3f_mag
    mov.s	$f14,$f4
    b	.L0d9dbb10
    li	$a2,3
.L0d9dbb58:
    # Line 3960
    # lw $t9, -18656($gp) # &__glOdyim_Vertex3f
.L0d9dbb5c:
    mov.s	$f12,$f6
    mov.s	$f13,$f5
    jal	__glOdyim_Vertex3f
    mov.s	$f14,$f4
    b	.L0d9dbb10
    li	$a2,3
.L0d9dbb74:
    # Line 3956
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sdc1	$f12,16($sp)
    addiu	$t9,$t9,-23424
    sdc1	$f13,24($sp)
    bal __glOdyim_EdgeFlagv
    sdc1	$f14,32($sp)
    ldc1	$f4,32($sp)
    ldc1	$f5,24($sp)
    li	$a2,3
    b	.L0d9dbadc
    ldc1	$f6,16($sp)
.L0d9dbba0:
    # Line 3972
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dbb20
    ld	$ra,40($sp)
.L0d9dbbb8:
    # Line 3963
    mov.s	$f12,$f6
    mov.s	$f13,$f5
    jal	sub_0d9e0000
    mov.s	$f14,$f4
    b	.L0d9dbb10
    li	$a2,3
.L0d9dbbd0:
    # Line 3969
    # lw $t9, -18368($gp) # &__glOdyim_Vertex3f_mag_line0
    mov.s	$f12,$f6
    mov.s	$f13,$f5
    jal	__glOdyim_Vertex3f_mag_line0
    mov.s	$f14,$f4
    b	.L0d9dbb10
    li	$a2,3
.end __glOdyim_IglooVertex3f

# Function: __glOdyim_IglooVertex3fv
# Declared: Line 3976 (Source lines: 3976-3996)
# Address: 0x0d9dbbf0 - 0x0d9dbd00 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex3fv
.ent __glOdyim_IglooVertex3fv
__glOdyim_IglooVertex3fv:
    # Line 3976
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 3977
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 3976
    lui	$v0,0x12
    # Line 3977
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 3976
    addiu	$v0,$v0,-13920
    sd	$gp,8($sp)
    # Line 3977
    beq	$a3,$at,.L0d9dbca8
    # Line 3976
    addu	$gp,$t9,$v0
.L0d9dbc20:
    # Line 3979
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dbc94
    li	$a5,2
    beq	$a2,$a4,.L0d9dbc98
    # Line 3982
    nop	# was lw $t9, -18652($gp) # &__glOdyim_Vertex3fv
    # Line 3979
    beq	$a2,$a5,.L0d9dbcdc
    # Line 3985
    nop	# was lw $t9, -18556($gp) # &__glOdyim_Vertex3fv_smallw
    # Line 3979
    beq	$a2,$a3,.L0d9dbc74
    nop
.L0d9dbc54:
    # Line 3993
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dbcc4
    ld	$ra,24($sp)
.L0d9dbc64:
    ld	$s0,0($sp)
    # Line 3996
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dbc74:
    # Line 3988
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dbcec
    # Line 3989
    nop	# was lw $t9, -18460($gp) # &__glOdyim_Vertex3fv_mag
    jal	__glOdyim_Vertex3fv_mag
    nop
    b	.L0d9dbc54
    li	$a3,3
.L0d9dbc94:
    # Line 3982
    # lw $t9, -18652($gp) # &__glOdyim_Vertex3fv
.L0d9dbc98:
    jal	__glOdyim_Vertex3fv
    nop
    b	.L0d9dbc54
    li	$a3,3
.L0d9dbca8:
    # Line 3978
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dbc20
    ld	$a0,16($sp)
.L0d9dbcc4:
    # Line 3994
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dbc64
    ld	$ra,24($sp)
.L0d9dbcdc:
    # Line 3985
    jal	sub_0d9e0000
    nop
    b	.L0d9dbc54
    li	$a3,3
.L0d9dbcec:
    # Line 3991
    # lw $t9, -18364($gp) # &__glOdyim_Vertex3fv_mag_line0
    jal	__glOdyim_Vertex3fv_mag_line0
    nop
    b	.L0d9dbc54
    li	$a3,3
.end __glOdyim_IglooVertex3fv

# Function: __glOdyim_IglooVertex3i
# Declared: Line 3998 (Source lines: 3998-4017)
# Address: 0x0d9dbd00 - 0x0d9dbe20 (Size: 288 bytes, Frame: 48)
.globl __glOdyim_IglooVertex3i
.ent __glOdyim_IglooVertex3i
__glOdyim_IglooVertex3i:
    # Line 3998
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 3999
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a5,3
    # Line 3998
    lui	$v0,0x12
    # Line 3999
    and	$at,$a5,$at
    sd	$ra,40($sp)
    # Line 3998
    addiu	$v0,$v0,-14192
    sd	$gp,8($sp)
    # Line 3999
    beq	$a5,$at,.L0d9dbdbc
    # Line 3998
    addu	$gp,$t9,$v0
.L0d9dbd30:
    # Line 4001
    lui	$a4,0x1
    ori	$a4,$a4,0x9dbc
    addu	$a4,$a4,$s0
    lw	$a4,0($a4)
    li	$a6,1
    beqz	$a4,.L0d9dbda8
    li	$a7,2
    beq	$a4,$a6,.L0d9dbdac
    # Line 4004
    nop	# was lw $t9, -18648($gp) # &__glOdyim_Vertex3i
    # Line 4001
    beq	$a4,$a7,.L0d9dbe00
    # Line 4007
    nop	# was lw $t9, -18552($gp) # &__glOdyim_Vertex3i_smallw
    # Line 4001
    beq	$a4,$a5,.L0d9dbd84
    nop
.L0d9dbd64:
    # Line 4015
    lw	$t0,31552($s0)
    and	$t0,$a5,$t0
    beq	$a5,$t0,.L0d9dbde8
    ld	$ra,40($sp)
.L0d9dbd74:
    ld	$s0,0($sp)
    # Line 4017
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9dbd84:
    # Line 4010
    lw	$t1,31600($s0)
    dsll32	$t1,$t1,0x9
    bgez	$t1,.L0d9dbe10
    # Line 4013
    nop	# was lw $t9, -18360($gp) # &__glOdyim_Vertex3i_mag_line0
    # Line 4011
    # lw $t9, -18456($gp) # &__glOdyim_Vertex3i_mag
    jal	__glOdyim_Vertex3i_mag
    nop
    b	.L0d9dbd64
    li	$a5,3
.L0d9dbda8:
    # Line 4004
    # lw $t9, -18648($gp) # &__glOdyim_Vertex3i
.L0d9dbdac:
    jal	__glOdyim_Vertex3i
    nop
    b	.L0d9dbd64
    li	$a5,3
.L0d9dbdbc:
    # Line 4000
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sd	$a0,16($sp)
    addiu	$t9,$t9,-23424
    sd	$a1,24($sp)
    bal __glOdyim_EdgeFlagv
    sd	$a2,32($sp)
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    li	$a5,3
    b	.L0d9dbd30
    ld	$a0,16($sp)
.L0d9dbde8:
    # Line 4016
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dbd74
    ld	$ra,40($sp)
.L0d9dbe00:
    # Line 4007
    jal	sub_0d9e0000
    nop
    b	.L0d9dbd64
    li	$a5,3
.L0d9dbe10:
    # Line 4013
    jalr	$t9
    nop
    b	.L0d9dbd64
    li	$a5,3
.end __glOdyim_IglooVertex3i

# Function: __glOdyim_IglooVertex3iv
# Declared: Line 4020 (Source lines: 4020-4039)
# Address: 0x0d9dbe20 - 0x0d9dbf30 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex3iv
.ent __glOdyim_IglooVertex3iv
__glOdyim_IglooVertex3iv:
    # Line 4020
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 4021
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 4020
    lui	$v0,0x12
    # Line 4021
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 4020
    addiu	$v0,$v0,-14480
    sd	$gp,8($sp)
    # Line 4021
    beq	$a3,$at,.L0d9dbee0
    # Line 4020
    addu	$gp,$t9,$v0
.L0d9dbe50:
    # Line 4023
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dbecc
    li	$a5,2
    beq	$a2,$a4,.L0d9dbed0
    # Line 4026
    nop	# was lw $t9, -18644($gp) # &__glOdyim_Vertex3iv
    # Line 4023
    beq	$a2,$a5,.L0d9dbf10
    # Line 4029
    nop	# was lw $t9, -18548($gp) # &__glOdyim_Vertex3iv_smallw
    # Line 4023
    beq	$a2,$a3,.L0d9dbea8
    nop
.L0d9dbe84:
    # Line 4037
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dbefc
    # Line 4038
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,24($sp)
.L0d9dbe98:
    ld	$s0,0($sp)
    # Line 4039
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dbea8:
    # Line 4032
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dbf20
    # Line 4035
    nop	# was lw $t9, -18356($gp) # &__glOdyim_Vertex3iv_mag_line0
    # Line 4033
    # lw $t9, -18452($gp) # &__glOdyim_Vertex3iv_mag
    jal	__glOdyim_Vertex3iv_mag
    nop
    b	.L0d9dbe84
    li	$a3,3
.L0d9dbecc:
    # Line 4026
    # lw $t9, -18644($gp) # &__glOdyim_Vertex3iv
.L0d9dbed0:
    jal	__glOdyim_Vertex3iv
    nop
    b	.L0d9dbe84
    li	$a3,3
.L0d9dbee0:
    # Line 4022
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dbe50
    ld	$a0,16($sp)
.L0d9dbefc:
    # Line 4038
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dbe98
    ld	$ra,24($sp)
.L0d9dbf10:
    # Line 4029
    jal	sub_0d9e0000
    nop
    b	.L0d9dbe84
    li	$a3,3
.L0d9dbf20:
    # Line 4035
    jalr	$t9
    nop
    b	.L0d9dbe84
    li	$a3,3
.end __glOdyim_IglooVertex3iv

# Function: __glOdyim_IglooVertex3s
# Declared: Line 4042 (Source lines: 4042-4061)
# Address: 0x0d9dbf30 - 0x0d9dc050 (Size: 288 bytes, Frame: 48)
.globl __glOdyim_IglooVertex3s
.ent __glOdyim_IglooVertex3s
__glOdyim_IglooVertex3s:
    # Line 4042
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 4043
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a5,3
    # Line 4042
    lui	$v0,0x12
    # Line 4043
    and	$at,$a5,$at
    sd	$ra,40($sp)
    # Line 4042
    addiu	$v0,$v0,-14752
    sd	$gp,8($sp)
    # Line 4043
    beq	$a5,$at,.L0d9dbfec
    # Line 4042
    addu	$gp,$t9,$v0
.L0d9dbf60:
    # Line 4045
    lui	$a4,0x1
    ori	$a4,$a4,0x9dbc
    addu	$a4,$a4,$s0
    lw	$a4,0($a4)
    li	$a6,1
    beqz	$a4,.L0d9dbfd8
    li	$a7,2
    beq	$a4,$a6,.L0d9dbfdc
    # Line 4048
    nop	# was lw $t9, -18640($gp) # &__glOdyim_Vertex3s
    # Line 4045
    beq	$a4,$a7,.L0d9dc030
    # Line 4051
    nop	# was lw $t9, -18544($gp) # &__glOdyim_Vertex3s_smallw
    # Line 4045
    beq	$a4,$a5,.L0d9dbfb4
    nop
.L0d9dbf94:
    # Line 4059
    lw	$t0,31552($s0)
    and	$t0,$a5,$t0
    beq	$a5,$t0,.L0d9dc018
    ld	$ra,40($sp)
.L0d9dbfa4:
    ld	$s0,0($sp)
    # Line 4061
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9dbfb4:
    # Line 4054
    lw	$t1,31600($s0)
    dsll32	$t1,$t1,0x9
    bgez	$t1,.L0d9dc040
    # Line 4057
    nop	# was lw $t9, -18352($gp) # &__glOdyim_Vertex3s_mag_line0
    # Line 4055
    # lw $t9, -18448($gp) # &__glOdyim_Vertex3s_mag
    jal	__glOdyim_Vertex3s_mag
    nop
    b	.L0d9dbf94
    li	$a5,3
.L0d9dbfd8:
    # Line 4048
    # lw $t9, -18640($gp) # &__glOdyim_Vertex3s
.L0d9dbfdc:
    jal	__glOdyim_Vertex3s
    nop
    b	.L0d9dbf94
    li	$a5,3
.L0d9dbfec:
    # Line 4044
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sd	$a0,16($sp)
    addiu	$t9,$t9,-23424
    sd	$a1,24($sp)
    bal __glOdyim_EdgeFlagv
    sd	$a2,32($sp)
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    li	$a5,3
    b	.L0d9dbf60
    ld	$a0,16($sp)
.L0d9dc018:
    # Line 4060
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dbfa4
    ld	$ra,40($sp)
.L0d9dc030:
    # Line 4051
    jal	sub_0d9e0000
    nop
    b	.L0d9dbf94
    li	$a5,3
.L0d9dc040:
    # Line 4057
    jalr	$t9
    nop
    b	.L0d9dbf94
    li	$a5,3
.end __glOdyim_IglooVertex3s

# Function: __glOdyim_IglooVertex3sv
# Declared: Line 4064 (Source lines: 4064-4083)
# Address: 0x0d9dc050 - 0x0d9dc160 (Size: 272 bytes, Frame: 32)
.globl __glOdyim_IglooVertex3sv
.ent __glOdyim_IglooVertex3sv
__glOdyim_IglooVertex3sv:
    # Line 4064
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 4065
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 4064
    lui	$v0,0x12
    # Line 4065
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 4064
    addiu	$v0,$v0,-15040
    sd	$gp,8($sp)
    # Line 4065
    beq	$a3,$at,.L0d9dc10c
    # Line 4064
    addu	$gp,$t9,$v0
.L0d9dc080:
    # Line 4067
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dc0f8
    li	$a5,2
    beq	$a2,$a4,.L0d9dc0fc
    # Line 4070
    nop	# was lw $t9, -18636($gp) # &__glOdyim_Vertex3sv
    # Line 4067
    beq	$a2,$a5,.L0d9dc140
    # Line 4073
    nop	# was lw $t9, -18540($gp) # &__glOdyim_Vertex3sv_smallw
    # Line 4067
    beq	$a2,$a3,.L0d9dc0d4
    nop
.L0d9dc0b4:
    # Line 4081
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dc128
    ld	$ra,24($sp)
.L0d9dc0c4:
    ld	$s0,0($sp)
    # Line 4083
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dc0d4:
    # Line 4076
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dc150
    # Line 4079
    nop	# was lw $t9, -18348($gp) # &__glOdyim_Vertex3sv_mag_line0
    # Line 4077
    # lw $t9, -18444($gp) # &__glOdyim_Vertex3sv_mag
    jal	__glOdyim_Vertex3sv_mag
    nop
    b	.L0d9dc0b4
    li	$a3,3
.L0d9dc0f8:
    # Line 4070
    # lw $t9, -18636($gp) # &__glOdyim_Vertex3sv
.L0d9dc0fc:
    jal	__glOdyim_Vertex3sv
    nop
    b	.L0d9dc0b4
    li	$a3,3
.L0d9dc10c:
    # Line 4066
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dc080
    ld	$a0,16($sp)
.L0d9dc128:
    # Line 4082
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc0c4
    ld	$ra,24($sp)
.L0d9dc140:
    # Line 4073
    jal	sub_0d9e0000
    nop
    b	.L0d9dc0b4
    li	$a3,3
.L0d9dc150:
    # Line 4079
    jalr	$t9
    nop
    b	.L0d9dc0b4
    li	$a3,3
.end __glOdyim_IglooVertex3sv

# Function: __glOdyim_IglooVertex4d
# Declared: Line 4086 (Source lines: 4086-4105)
# Address: 0x0d9dc160 - 0x0d9dc2cc (Size: 364 bytes, Frame: 192)
.globl __glOdyim_IglooVertex4d
.ent __glOdyim_IglooVertex4d
__glOdyim_IglooVertex4d:
    # Line 4086
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 4087
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    # Line 4086
    mov.d	$f5,$f15
    # Line 4087
    li	$a2,3
    # Line 4086
    mov.d	$f4,$f14
    lui	$v0,0x12
    # Line 4087
    and	$at,$a2,$at
    # Line 4086
    mov.d	$f6,$f13
    sd	$ra,48($sp)
    addiu	$v0,$v0,-15312
    mov.d	$f7,$f12
    sd	$gp,8($sp)
    # Line 4087
    beq	$a2,$at,.L0d9dc248
    # Line 4086
    addu	$gp,$t9,$v0
.L0d9dc1a0:
    # Line 4089
    lui	$a1,0x1
    ori	$a1,$a1,0x9dbc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a3,1
    beqz	$a1,.L0d9dc27c
    li	$a4,2
    beq	$a1,$a3,.L0d9dc22c
    # Line 4095
    mov.d	$f12,$f7
    # Line 4089
    beq	$a1,$a4,.L0d9dc22c
    # Line 4095
    mov.d	$f12,$f7
    # Line 4089
    beq	$a1,$a2,.L0d9dc1f8
    nop
.L0d9dc1d4:
    # Line 4103
    lw	$a5,31552($s0)
    and	$a5,$a2,$a5
    beq	$a2,$a5,.L0d9dc29c
    # Line 4104
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,48($sp)
.L0d9dc1e8:
    ld	$s0,0($sp)
    # Line 4105
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9dc1f8:
    # Line 4098
    lw	$a6,31600($s0)
    dsll32	$a6,$a6,0x9
    bgez	$a6,.L0d9dc2b0
    # Line 4101
    mov.d	$f12,$f7
    # Line 4099
    mov.d	$f12,$f7
    # lw $t9, -18440($gp) # &__glOdyim_Vertex4d_mag
    mov.d	$f13,$f6
    mov.d	$f14,$f4
    jal	__glOdyim_Vertex4d_mag
    mov.d	$f15,$f5
    b	.L0d9dc1d4
    li	$a2,3
    # Line 4095
    mov.d	$f12,$f7
.L0d9dc22c:
    # lw $t9, -18536($gp) # &__glOdyim_Vertex4d_smallw
    mov.d	$f13,$f6
    mov.d	$f14,$f4
    jal	__glOdyim_Vertex4d_smallw
    mov.d	$f15,$f5
    b	.L0d9dc1d4
    li	$a2,3
.L0d9dc248:
    # Line 4088
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sdc1	$f12,16($sp)
    sdc1	$f13,24($sp)
    addiu	$t9,$t9,-23424
    sdc1	$f15,32($sp)
    bal __glOdyim_EdgeFlagv
    sdc1	$f14,40($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    ldc1	$f6,24($sp)
    li	$a2,3
    b	.L0d9dc1a0
    ldc1	$f7,16($sp)
.L0d9dc27c:
    # Line 4091
    mov.d	$f12,$f7
    # lw $t9, -18632($gp) # &__glOdyim_Vertex4d
    mov.d	$f13,$f6
    mov.d	$f14,$f4
    jal	__glOdyim_Vertex4d
    mov.d	$f15,$f5
    b	.L0d9dc1d4
    li	$a2,3
.L0d9dc29c:
    # Line 4104
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc1e8
    ld	$ra,48($sp)
.L0d9dc2b0:
    # Line 4101
    # lw $t9, -18344($gp) # &__glOdyim_Vertex4d_mag_line0
    mov.d	$f13,$f6
    mov.d	$f14,$f4
    jal	__glOdyim_Vertex4d_mag_line0
    mov.d	$f15,$f5
    b	.L0d9dc1d4
    li	$a2,3
.end __glOdyim_IglooVertex4d

# Function: __glOdyim_IglooVertex4dv
# Declared: Line 4108 (Source lines: 4108-4127)
# Address: 0x0d9dc2d0 - 0x0d9dc3e4 (Size: 276 bytes, Frame: 32)
.globl __glOdyim_IglooVertex4dv
.ent __glOdyim_IglooVertex4dv
__glOdyim_IglooVertex4dv:
    # Line 4108
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 4109
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 4108
    lui	$v0,0x12
    # Line 4109
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 4108
    addiu	$v0,$v0,-15680
    sd	$gp,8($sp)
    # Line 4109
    beq	$a3,$at,.L0d9dc38c
    # Line 4108
    addu	$gp,$t9,$v0
.L0d9dc300:
    # Line 4111
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dc3a8
    li	$a5,2
    beq	$a2,$a4,.L0d9dc37c
    # Line 4117
    nop	# was lw $t9, -18532($gp) # &__glOdyim_Vertex4dv_smallw
    # Line 4111
    beq	$a2,$a5,.L0d9dc37c
    # Line 4117
    nop	# was lw $t9, -18532($gp) # &__glOdyim_Vertex4dv_smallw
    # Line 4111
    beq	$a2,$a3,.L0d9dc358
    nop
.L0d9dc334:
    # Line 4125
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dc3bc
    # Line 4126
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,24($sp)
.L0d9dc348:
    ld	$s0,0($sp)
    # Line 4127
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dc358:
    # Line 4120
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dc3d0
    # Line 4121
    nop	# was lw $t9, -18436($gp) # &__glOdyim_Vertex4dv_mag
    jal	__glOdyim_Vertex4dv_mag
    nop
    b	.L0d9dc334
    li	$a3,3
    # Line 4117
    # lw $t9, -18532($gp) # &__glOdyim_Vertex4dv_smallw
.L0d9dc37c:
    jal	__glOdyim_Vertex4dv_smallw
    nop
    b	.L0d9dc334
    li	$a3,3
.L0d9dc38c:
    # Line 4110
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dc300
    ld	$a0,16($sp)
.L0d9dc3a8:
    # Line 4113
    # lw $t9, -18628($gp) # &__glOdyim_Vertex4dv
    jal	__glOdyim_Vertex4dv
    nop
    b	.L0d9dc334
    li	$a3,3
.L0d9dc3bc:
    # Line 4126
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc348
    ld	$ra,24($sp)
.L0d9dc3d0:
    # Line 4123
    # lw $t9, -18340($gp) # &__glOdyim_Vertex4dv_mag_line0
    jal	__glOdyim_Vertex4dv_mag_line0
    nop
    b	.L0d9dc334
    li	$a3,3
.end __glOdyim_IglooVertex4dv

# Function: __glOdyim_IglooVertex4f
# Declared: Line 4130 (Source lines: 4130-4149)
# Address: 0x0d9dc3f0 - 0x0d9dc55c (Size: 364 bytes, Frame: 192)
.globl __glOdyim_IglooVertex4f
.ent __glOdyim_IglooVertex4f
__glOdyim_IglooVertex4f:
    # Line 4130
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 4131
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    # Line 4130
    mov.s	$f5,$f15
    # Line 4131
    li	$a2,3
    # Line 4130
    mov.s	$f4,$f14
    lui	$v0,0x12
    # Line 4131
    and	$at,$a2,$at
    # Line 4130
    mov.s	$f6,$f13
    sd	$ra,48($sp)
    addiu	$v0,$v0,-15968
    mov.s	$f7,$f12
    sd	$gp,8($sp)
    # Line 4131
    beq	$a2,$at,.L0d9dc4d8
    # Line 4130
    addu	$gp,$t9,$v0
.L0d9dc430:
    # Line 4133
    lui	$a1,0x1
    ori	$a1,$a1,0x9dbc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a3,1
    beqz	$a1,.L0d9dc50c
    li	$a4,2
    beq	$a1,$a3,.L0d9dc4bc
    # Line 4139
    mov.s	$f12,$f7
    # Line 4133
    beq	$a1,$a4,.L0d9dc4bc
    # Line 4139
    mov.s	$f12,$f7
    # Line 4133
    beq	$a1,$a2,.L0d9dc488
    nop
.L0d9dc464:
    # Line 4147
    lw	$a5,31552($s0)
    and	$a5,$a2,$a5
    beq	$a2,$a5,.L0d9dc52c
    # Line 4148
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,48($sp)
.L0d9dc478:
    ld	$s0,0($sp)
    # Line 4149
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9dc488:
    # Line 4142
    lw	$a6,31600($s0)
    dsll32	$a6,$a6,0x9
    bgez	$a6,.L0d9dc540
    # Line 4145
    mov.s	$f12,$f7
    # Line 4143
    mov.s	$f12,$f7
    # lw $t9, -18432($gp) # &__glOdyim_Vertex4f_mag
    mov.s	$f13,$f6
    mov.s	$f14,$f4
    jal	__glOdyim_Vertex4f_mag
    mov.s	$f15,$f5
    b	.L0d9dc464
    li	$a2,3
    # Line 4139
    mov.s	$f12,$f7
.L0d9dc4bc:
    # lw $t9, -18528($gp) # &__glOdyim_Vertex4f_smallw
    mov.s	$f13,$f6
    mov.s	$f14,$f4
    jal	__glOdyim_Vertex4f_smallw
    mov.s	$f15,$f5
    b	.L0d9dc464
    li	$a2,3
.L0d9dc4d8:
    # Line 4132
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sdc1	$f12,16($sp)
    sdc1	$f13,24($sp)
    addiu	$t9,$t9,-23424
    sdc1	$f15,32($sp)
    bal __glOdyim_EdgeFlagv
    sdc1	$f14,40($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    ldc1	$f6,24($sp)
    li	$a2,3
    b	.L0d9dc430
    ldc1	$f7,16($sp)
.L0d9dc50c:
    # Line 4135
    mov.s	$f12,$f7
    # lw $t9, -18624($gp) # &__glOdyim_Vertex4f
    mov.s	$f13,$f6
    mov.s	$f14,$f4
    jal	__glOdyim_Vertex4f
    mov.s	$f15,$f5
    b	.L0d9dc464
    li	$a2,3
.L0d9dc52c:
    # Line 4148
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc478
    ld	$ra,48($sp)
.L0d9dc540:
    # Line 4145
    # lw $t9, -18336($gp) # &__glOdyim_Vertex4f_mag_line0
    mov.s	$f13,$f6
    mov.s	$f14,$f4
    jal	__glOdyim_Vertex4f_mag_line0
    mov.s	$f15,$f5
    b	.L0d9dc464
    li	$a2,3
.end __glOdyim_IglooVertex4f

# Function: __glOdyim_IglooVertex4fv
# Declared: Line 4152 (Source lines: 4152-4171)
# Address: 0x0d9dc560 - 0x0d9dc674 (Size: 276 bytes, Frame: 32)
.globl __glOdyim_IglooVertex4fv
.ent __glOdyim_IglooVertex4fv
__glOdyim_IglooVertex4fv:
    # Line 4152
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 4153
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 4152
    lui	$v0,0x12
    # Line 4153
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 4152
    addiu	$v0,$v0,-16336
    sd	$gp,8($sp)
    # Line 4153
    beq	$a3,$at,.L0d9dc61c
    # Line 4152
    addu	$gp,$t9,$v0
.L0d9dc590:
    # Line 4155
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dc638
    li	$a5,2
    beq	$a2,$a4,.L0d9dc60c
    # Line 4161
    nop	# was lw $t9, -18524($gp) # &__glOdyim_Vertex4fv_smallw
    # Line 4155
    beq	$a2,$a5,.L0d9dc60c
    # Line 4161
    nop	# was lw $t9, -18524($gp) # &__glOdyim_Vertex4fv_smallw
    # Line 4155
    beq	$a2,$a3,.L0d9dc5e4
    nop
.L0d9dc5c4:
    # Line 4169
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dc64c
    ld	$ra,24($sp)
.L0d9dc5d4:
    ld	$s0,0($sp)
    # Line 4171
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dc5e4:
    # Line 4164
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dc664
    # Line 4167
    nop	# was lw $t9, -18332($gp) # &__glOdyim_Vertex4fv_mag_line0
    # Line 4165
    # lw $t9, -18428($gp) # &__glOdyim_Vertex4fv_mag
    jal	__glOdyim_Vertex4fv_mag
    nop
    b	.L0d9dc5c4
    li	$a3,3
    # Line 4161
    # lw $t9, -18524($gp) # &__glOdyim_Vertex4fv_smallw
.L0d9dc60c:
    jal	__glOdyim_Vertex4fv_smallw
    nop
    b	.L0d9dc5c4
    li	$a3,3
.L0d9dc61c:
    # Line 4154
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dc590
    ld	$a0,16($sp)
.L0d9dc638:
    # Line 4157
    # lw $t9, -18620($gp) # &__glOdyim_Vertex4fv
    jal	__glOdyim_Vertex4fv
    nop
    b	.L0d9dc5c4
    li	$a3,3
.L0d9dc64c:
    # Line 4170
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc5d4
    ld	$ra,24($sp)
.L0d9dc664:
    # Line 4167
    jal	sub_0d9e0000
    nop
    b	.L0d9dc5c4
    li	$a3,3
.end __glOdyim_IglooVertex4fv

# Function: __glOdyim_IglooVertex4i
# Declared: Line 4174 (Source lines: 4174-4194)
# Address: 0x0d9dc680 - 0x0d9dc7ac (Size: 300 bytes, Frame: 192)
.globl __glOdyim_IglooVertex4i
.ent __glOdyim_IglooVertex4i
__glOdyim_IglooVertex4i:
    # Line 4174
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 4175
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a6,3
    # Line 4174
    lui	$v0,0x12
    # Line 4175
    and	$at,$a6,$at
    sd	$ra,48($sp)
    # Line 4174
    addiu	$v0,$v0,-16624
    sd	$gp,8($sp)
    # Line 4175
    beq	$a6,$at,.L0d9dc73c
    # Line 4174
    addu	$gp,$t9,$v0
.L0d9dc6b0:
    # Line 4177
    lui	$a5,0x1
    ori	$a5,$a5,0x9dbc
    addu	$a5,$a5,$s0
    lw	$a5,0($a5)
    li	$a7,1
    beqz	$a5,.L0d9dc770
    li	$t0,2
    beq	$a5,$a7,.L0d9dc72c
    # Line 4183
    nop	# was lw $t9, -18520($gp) # &__glOdyim_Vertex4i_smallw
    # Line 4177
    beq	$a5,$t0,.L0d9dc72c
    # Line 4183
    nop	# was lw $t9, -18520($gp) # &__glOdyim_Vertex4i_smallw
    # Line 4177
    beq	$a5,$a6,.L0d9dc704
    nop
.L0d9dc6e4:
    # Line 4191
    lw	$t1,31552($s0)
    and	$t1,$a6,$t1
    beq	$a6,$t1,.L0d9dc784
    ld	$ra,48($sp)
.L0d9dc6f4:
    ld	$s0,0($sp)
    # Line 4194
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9dc704:
    # Line 4186
    lw	$t2,31600($s0)
    dsll32	$t2,$t2,0x9
    bgez	$t2,.L0d9dc79c
    # Line 4189
    nop	# was lw $t9, -18328($gp) # &__glOdyim_Vertex4i_mag_line0
    # Line 4187
    # lw $t9, -18424($gp) # &__glOdyim_Vertex4i_mag
    jal	__glOdyim_Vertex4i_mag
    nop
    b	.L0d9dc6e4
    li	$a6,3
    # Line 4183
    # lw $t9, -18520($gp) # &__glOdyim_Vertex4i_smallw
.L0d9dc72c:
    jal	__glOdyim_Vertex4i_smallw
    nop
    b	.L0d9dc6e4
    li	$a6,3
.L0d9dc73c:
    # Line 4176
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sd	$a0,16($sp)
    sd	$a3,24($sp)
    addiu	$t9,$t9,-23424
    sd	$a1,32($sp)
    bal __glOdyim_EdgeFlagv
    sd	$a2,40($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    ld	$a3,24($sp)
    li	$a6,3
    b	.L0d9dc6b0
    ld	$a0,16($sp)
.L0d9dc770:
    # Line 4179
    # lw $t9, -18616($gp) # &__glOdyim_Vertex4i
    jal	__glOdyim_Vertex4i
    nop
    b	.L0d9dc6e4
    li	$a6,3
.L0d9dc784:
    # Line 4192
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc6f4
    ld	$ra,48($sp)
.L0d9dc79c:
    # Line 4189
    jal	sub_0d9e0000
    nop
    b	.L0d9dc6e4
    li	$a6,3
.end __glOdyim_IglooVertex4i

# Function: __glOdyim_IglooVertex4iv
# Declared: Line 4197 (Source lines: 4197-4216)
# Address: 0x0d9dc7b0 - 0x0d9dc8c4 (Size: 276 bytes, Frame: 32)
.globl __glOdyim_IglooVertex4iv
.ent __glOdyim_IglooVertex4iv
__glOdyim_IglooVertex4iv:
    # Line 4197
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 4198
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 4197
    lui	$v0,0x12
    # Line 4198
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 4197
    addiu	$v0,$v0,-16928
    sd	$gp,8($sp)
    # Line 4198
    beq	$a3,$at,.L0d9dc870
    # Line 4197
    addu	$gp,$t9,$v0
.L0d9dc7e0:
    # Line 4200
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dc88c
    li	$a5,2
    beq	$a2,$a4,.L0d9dc860
    # Line 4206
    nop	# was lw $t9, -18516($gp) # &__glOdyim_Vertex4iv_smallw
    # Line 4200
    beq	$a2,$a5,.L0d9dc860
    # Line 4206
    nop	# was lw $t9, -18516($gp) # &__glOdyim_Vertex4iv_smallw
    # Line 4200
    beq	$a2,$a3,.L0d9dc838
    nop
.L0d9dc814:
    # Line 4214
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dc8a0
    # Line 4215
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,24($sp)
.L0d9dc828:
    ld	$s0,0($sp)
    # Line 4216
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dc838:
    # Line 4209
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dc8b4
    # Line 4212
    nop	# was lw $t9, -18324($gp) # &__glOdyim_Vertex4iv_mag_line0
    # Line 4210
    # lw $t9, -18420($gp) # &__glOdyim_Vertex4iv_mag
    jal	__glOdyim_Vertex4iv_mag
    nop
    b	.L0d9dc814
    li	$a3,3
    # Line 4206
    # lw $t9, -18516($gp) # &__glOdyim_Vertex4iv_smallw
.L0d9dc860:
    jal	__glOdyim_Vertex4iv_smallw
    nop
    b	.L0d9dc814
    li	$a3,3
.L0d9dc870:
    # Line 4199
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dc7e0
    ld	$a0,16($sp)
.L0d9dc88c:
    # Line 4202
    # lw $t9, -18612($gp) # &__glOdyim_Vertex4iv
    jal	__glOdyim_Vertex4iv
    nop
    b	.L0d9dc814
    li	$a3,3
.L0d9dc8a0:
    # Line 4215
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc828
    ld	$ra,24($sp)
.L0d9dc8b4:
    # Line 4212
    jalr	$t9
    nop
    b	.L0d9dc814
    li	$a3,3
.end __glOdyim_IglooVertex4iv

# Function: __glOdyim_IglooVertex4s
# Declared: Line 4219 (Source lines: 4219-4239)
# Address: 0x0d9dc8d0 - 0x0d9dc9fc (Size: 300 bytes, Frame: 192)
.globl __glOdyim_IglooVertex4s
.ent __glOdyim_IglooVertex4s
__glOdyim_IglooVertex4s:
    # Line 4219
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 4220
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a6,3
    # Line 4219
    lui	$v0,0x12
    # Line 4220
    and	$at,$a6,$at
    sd	$ra,48($sp)
    # Line 4219
    addiu	$v0,$v0,-17216
    sd	$gp,8($sp)
    # Line 4220
    beq	$a6,$at,.L0d9dc98c
    # Line 4219
    addu	$gp,$t9,$v0
.L0d9dc900:
    # Line 4222
    lui	$a5,0x1
    ori	$a5,$a5,0x9dbc
    addu	$a5,$a5,$s0
    lw	$a5,0($a5)
    li	$a7,1
    beqz	$a5,.L0d9dc9c0
    li	$t0,2
    beq	$a5,$a7,.L0d9dc97c
    # Line 4228
    nop	# was lw $t9, -18512($gp) # &__glOdyim_Vertex4s_smallw
    # Line 4222
    beq	$a5,$t0,.L0d9dc97c
    # Line 4228
    nop	# was lw $t9, -18512($gp) # &__glOdyim_Vertex4s_smallw
    # Line 4222
    beq	$a5,$a6,.L0d9dc954
    nop
.L0d9dc934:
    # Line 4236
    lw	$t1,31552($s0)
    and	$t1,$a6,$t1
    beq	$a6,$t1,.L0d9dc9d4
    ld	$ra,48($sp)
.L0d9dc944:
    ld	$s0,0($sp)
    # Line 4239
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9dc954:
    # Line 4231
    lw	$t2,31600($s0)
    dsll32	$t2,$t2,0x9
    bgez	$t2,.L0d9dc9ec
    # Line 4234
    nop	# was lw $t9, -18320($gp) # &__glOdyim_Vertex4s_mag_line0
    # Line 4232
    # lw $t9, -18416($gp) # &__glOdyim_Vertex4s_mag
    jal	__glOdyim_Vertex4s_mag
    nop
    b	.L0d9dc934
    li	$a6,3
    # Line 4228
    # lw $t9, -18512($gp) # &__glOdyim_Vertex4s_smallw
.L0d9dc97c:
    jal	__glOdyim_Vertex4s_smallw
    nop
    b	.L0d9dc934
    li	$a6,3
.L0d9dc98c:
    # Line 4221
    # lw $t9, -32708($gp) # &sub_0d9e0000
    sd	$a0,16($sp)
    sd	$a3,24($sp)
    addiu	$t9,$t9,-23424
    sd	$a1,32($sp)
    bal __glOdyim_EdgeFlagv
    sd	$a2,40($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    ld	$a3,24($sp)
    li	$a6,3
    b	.L0d9dc900
    ld	$a0,16($sp)
.L0d9dc9c0:
    # Line 4224
    # lw $t9, -18608($gp) # &__glOdyim_Vertex4s
    jal	__glOdyim_Vertex4s
    nop
    b	.L0d9dc934
    li	$a6,3
.L0d9dc9d4:
    # Line 4237
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dc944
    ld	$ra,48($sp)
.L0d9dc9ec:
    # Line 4234
    jal	sub_0d9e0000
    nop
    b	.L0d9dc934
    li	$a6,3
.end __glOdyim_IglooVertex4s

# Function: __glOdyim_IglooVertex4sv
# Declared: Line 4242 (Source lines: 4242-4262)
# Address: 0x0d9dca00 - 0x0d9dcb14 (Size: 276 bytes, Frame: 32)
.globl __glOdyim_IglooVertex4sv
.ent __glOdyim_IglooVertex4sv
__glOdyim_IglooVertex4sv:
    # Line 4242
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 4243
    lw	$s0,4112($zero)
    lw	$at,31552($s0)
    li	$a3,3
    # Line 4242
    lui	$v0,0x12
    # Line 4243
    and	$at,$a3,$at
    sd	$ra,24($sp)
    # Line 4242
    addiu	$v0,$v0,-17520
    sd	$gp,8($sp)
    # Line 4243
    beq	$a3,$at,.L0d9dcabc
    # Line 4242
    addu	$gp,$t9,$v0
.L0d9dca30:
    # Line 4245
    lui	$a2,0x1
    ori	$a2,$a2,0x9dbc
    addu	$a2,$a2,$s0
    lw	$a2,0($a2)
    li	$a4,1
    beqz	$a2,.L0d9dcad8
    li	$a5,2
    beq	$a2,$a4,.L0d9dcaac
    # Line 4251
    nop	# was lw $t9, -18508($gp) # &__glOdyim_Vertex4sv_smallw
    # Line 4245
    beq	$a2,$a5,.L0d9dcaac
    # Line 4251
    nop	# was lw $t9, -18508($gp) # &__glOdyim_Vertex4sv_smallw
    # Line 4245
    beq	$a2,$a3,.L0d9dca84
    nop
.L0d9dca64:
    # Line 4259
    lw	$a6,31552($s0)
    and	$a6,$a3,$a6
    beq	$a3,$a6,.L0d9dcaec
    ld	$ra,24($sp)
.L0d9dca74:
    ld	$s0,0($sp)
    # Line 4262
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dca84:
    # Line 4254
    lw	$a7,31600($s0)
    dsll32	$a7,$a7,0x9
    bgez	$a7,.L0d9dcb04
    # Line 4257
    nop	# was lw $t9, -18316($gp) # &__glOdyim_Vertex4sv_mag_line0
    # Line 4255
    # lw $t9, -18412($gp) # &__glOdyim_Vertex4sv_mag
    jal	__glOdyim_Vertex4sv_mag
    nop
    b	.L0d9dca64
    li	$a3,3
    # Line 4251
    # lw $t9, -18508($gp) # &__glOdyim_Vertex4sv_smallw
.L0d9dcaac:
    jal	__glOdyim_Vertex4sv_smallw
    nop
    b	.L0d9dca64
    li	$a3,3
.L0d9dcabc:
    # Line 4244
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23424
    bal __glOdyim_EdgeFlagv
    sd	$a0,16($sp)
    li	$a3,3
    b	.L0d9dca30
    ld	$a0,16($sp)
.L0d9dcad8:
    # Line 4247
    # lw $t9, -18604($gp) # &__glOdyim_Vertex4sv
    jal	__glOdyim_Vertex4sv
    nop
    b	.L0d9dca64
    li	$a3,3
.L0d9dcaec:
    # Line 4260
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,-23760
    bal __glOdyim_EdgeFlagv
    nop
    b	.L0d9dca74
    ld	$ra,24($sp)
.L0d9dcb04:
    # Line 4257
    jal	sub_0d9e0000
    nop
    b	.L0d9dca64
    li	$a3,3
.end __glOdyim_IglooVertex4sv

.late_rodata
jtbl_0dae95dc:
    .word .L0d9da768
    .word .L0d9dae68
    .word .L0d9dae04
    .word .L0d9dada0
    .word .L0d9dad3c
    .word .L0d9dacdc
    .word .L0d9dacc0
    .word .L0d9da9c0
    .word .L0d9dac3c
    .word .L0d9dabb8
    .word .L0d9dab34
    .word .L0d9daab0
    .word .L0d9daa34
    .word .L0d9daa14

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

