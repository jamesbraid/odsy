# Source: ../ODYSSEY/ody_dlist.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_dlist.c
# Total Functions: 61

.text

# Function: __glOdyim_ListParameterfvSGIX
# Declared: Line 39 (Source lines: 40-69)
# Address: 0x0d973450 - 0x0d97353c (Size: 236 bytes, Frame: 32)
.globl __glOdyim_ListParameterfvSGIX
.ent __glOdyim_ListParameterfvSGIX
__glOdyim_ListParameterfvSGIX:
    # Line 40
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 43
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v1,1
    # Line 40
    lui	$a3,0x18
    move	$v0,$a0
    sd	$ra,24($sp)
    addiu	$a0,$a3,20800
    sd	$gp,16($sp)
    # Line 43
    beq	$at,$v1,.L0d973528
    # Line 40
    addu	$gp,$t9,$a0
    # Line 43
    li	$a4,0x8182
    beq	$a1,$a4,.L0d97349c
    # Line 47
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d973504
    ld	$ra,24($sp)
.L0d97349c:
    # Line 48
    beqz	$v0,.L0d973514
    sd	$a2,0($sp)
    # Line 57
    # lw $t9, -25700($gp) # &__glNamesLockData
    move	$a0,$s0
    move	$a2,$v0
    jal	__glNamesLockData
    lw	$a1,4928($s0)
    beqz	$v0,.L0d973500
    # Line 61
    ld	$a5,0($sp)
    lwc1	$f4,0($a5)
    dmtc1	$zero,$f0
    cvt.d.s	$f5,$f4
    c.lt.d	$f5,$f0
    bc1f	.L0d9734e0
    # Line 64
    lwc1	$f1,_lit_3f800000
    # Line 61
    b	.L0d9734ec
    mtc1	$zero,$f4
.L0d9734e0:
    # Line 64
    ldc1	$f2,_lit8_3ff0000000000000
    c.lt.d $f2,$f5
    movt.s	$f4,$f1,$fcc1
.L0d9734ec:
    # Line 68
    # lw $t9, -25692($gp) # &__glNamesUnlockData
    move	$a1,$v0
    move	$a0,$s0
    jal	__glNamesUnlockData
    # Line 66
    swc1	$f4,44($v0)
.L0d973500:
    ld	$ra,24($sp)
.L0d973504:
    ld	$s0,8($sp)
    # Line 69
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d973514:
    # Line 53
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d973504
    ld	$ra,24($sp)
.L0d973528:
    # Line 43
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973504
    ld	$ra,24($sp)
.end __glOdyim_ListParameterfvSGIX

# Function: __glOdyim_ListParameterfSGIX
# Declared: Line 72 (Source lines: 73-75)
# Address: 0x0d973540 - 0x0d973578 (Size: 56 bytes, Frame: 48)
.globl __glOdyim_ListParameterfSGIX
.ent __glOdyim_ListParameterfSGIX
__glOdyim_ListParameterfSGIX:
    # Line 73
    lui	$at,0x18
    addiu	$sp,$sp,-48
    addiu	$at,$at,20560
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 74
    # lw $t9, -32068($gp) # &__glOdyim_ListParameterfvSGIX
    # Line 73
    sd	$ra,0($sp)
    # Line 74
    addiu	$a2,$sp,32
    bal __glOdyim_ListParameterfvSGIX
    # Line 73
    swc1	$f14,32($sp)
    ld	$ra,0($sp)
    # Line 75
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_ListParameterfSGIX

# Function: __glOdyim_ListParameterivSGIX
# Declared: Line 78 (Source lines: 79-84)
# Address: 0x0d973580 - 0x0d9735c4 (Size: 68 bytes, Frame: 32)
.globl __glOdyim_ListParameterivSGIX
.ent __glOdyim_ListParameterivSGIX
__glOdyim_ListParameterivSGIX:
    # Line 82
    lw	$v0,0($a2)
    # Line 79
    lui	$at,0x18
    # Line 82
    mtc1	$v0,$f0
    # Line 79
    addiu	$sp,$sp,-32
    addiu	$at,$at,20496
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 83
    # lw $t9, -32068($gp) # &__glOdyim_ListParameterfvSGIX
    # Line 82
    cvt.s.w	$f0,$f0
    # Line 79
    sd	$ra,8($sp)
    # Line 83
    addiu	$a2,$sp,0
    bal __glOdyim_ListParameterfvSGIX
    # Line 82
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 84
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_ListParameterivSGIX

# Function: __glOdyim_ListParameteriSGIX
# Declared: Line 87 (Source lines: 88-93)
# Address: 0x0d9735d0 - 0x0d973610 (Size: 64 bytes, Frame: 32)
.globl __glOdyim_ListParameteriSGIX
.ent __glOdyim_ListParameteriSGIX
__glOdyim_ListParameteriSGIX:
    # Line 91
    mtc1	$a2,$f0
    # Line 88
    lui	$at,0x18
    addiu	$sp,$sp,-32
    addiu	$at,$at,20416
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 91
    cvt.s.w	$f0,$f0
    # Line 92
    # lw $t9, -32068($gp) # &__glOdyim_ListParameterfvSGIX
    # Line 88
    sd	$ra,8($sp)
    # Line 92
    addiu	$a2,$sp,0
    bal __glOdyim_ListParameterfvSGIX
    # Line 91
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 93
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_ListParameteriSGIX

# Function: __glOdyim_GetListParameterfvSGIX
# Declared: Line 96 (Source lines: 97-119)
# Address: 0x0d973610 - 0x0d9736dc (Size: 204 bytes, Frame: 32)
.globl __glOdyim_GetListParameterfvSGIX
.ent __glOdyim_GetListParameterfvSGIX
__glOdyim_GetListParameterfvSGIX:
    # Line 99
    li	$a4,0x8182
    # Line 97
    addiu	$sp,$sp,-32
    # Line 99
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v1,1
    # Line 97
    lui	$a3,0x18
    move	$v0,$a0
    sd	$ra,24($sp)
    addiu	$a0,$a3,20352
    sd	$gp,16($sp)
    # Line 99
    beq	$at,$v1,.L0d9736c8
    # Line 97
    addu	$gp,$t9,$a0
    # Line 99
    beq	$a1,$a4,.L0d973658
    # Line 103
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d973684
    ld	$ra,24($sp)
.L0d973658:
    sd	$a2,0($sp)
    # Line 104
    beqz	$v0,.L0d9736b4
    sd	$a5,8($sp)
    # Line 113
    # lw $t9, -25700($gp) # &__glNamesLockData
    ld	$a1,8($sp)
    move	$a2,$v0
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4928($a1)
    bnez	$v0,.L0d973690
    ld	$ra,24($sp)
.L0d973684:
    # Line 119
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d973690:
    # Line 118
    ld	$a2,0($sp)
    # lw $t9, -25692($gp) # &__glNamesUnlockData
    # Line 116
    lwc1	$f0,44($v0)
    # Line 118
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glNamesUnlockData
    # Line 116
    swc1	$f0,0($a2)
    b	.L0d973684
    ld	$ra,24($sp)
.L0d9736b4:
    # Line 109
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d973684
    ld	$ra,24($sp)
.L0d9736c8:
    # Line 99
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973684
    ld	$ra,24($sp)
.end __glOdyim_GetListParameterfvSGIX

# Function: __glOdyim_GetListParameterivSGIX
# Declared: Line 122 (Source lines: 123-128)
# Address: 0x0d9736e0 - 0x0d97373c (Size: 92 bytes, Frame: 32)
.globl __glOdyim_GetListParameterivSGIX
.ent __glOdyim_GetListParameterivSGIX
__glOdyim_GetListParameterivSGIX:
    # Line 124
    lw	$v0,0($a2)
    # Line 123
    lui	$at,0x18
    # Line 124
    mtc1	$v0,$f0
    # Line 123
    addiu	$sp,$sp,-32
    addiu	$at,$at,20144
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 126
    # lw $t9, -32052($gp) # &__glOdyim_GetListParameterfvSGIX
    # Line 124
    cvt.s.w	$f0,$f0
    # Line 123
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    move	$s8,$a2
    # Line 126
    addiu	$a2,$sp,0
    bal __glOdyim_GetListParameterfvSGIX
    # Line 124
    swc1	$f0,0($sp)
    # Line 127
    lwc1	$f1,0($sp)
    ld	$ra,8($sp)
    # Line 128
    ld	$gp,24($sp)
    # Line 127
    trunc.w.s	$f1,$f1
    swc1	$f1,0($s8)
    # Line 128
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_GetListParameterivSGIX

# Function: __glOdysseyDlistOptimizer
# Declared: Line 136 (Source lines: 138-138)
# Address: 0x0d973740 - 0x0d973748 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyDlistOptimizer
.ent __glOdysseyDlistOptimizer
__glOdysseyDlistOptimizer:
    # Line 138
    jr	$ra
    nop
.end __glOdysseyDlistOptimizer

# Function: __glOdysseyIsBboxClippedRange
# Declared: Line 222 (Source lines: 223-426)
# Address: 0x0d973750 - 0x0d9744f8 (Size: 3496 bytes, Frame: 224)
.globl __glOdysseyIsBboxClippedRange
.ent __glOdysseyIsBboxClippedRange
__glOdysseyIsBboxClippedRange:
    # Line 225
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    lw	$v1,26424($v0)
    # Line 223
    lui	$at,0x18
    # Line 225
    lw	$a4,29716($a0)
    # Line 223
    addiu	$sp,$sp,-224
    addiu	$at,$at,20032
    sd	$gp,200($sp)
    # Line 225
    beqz	$v1,.L0d9737a4
    # Line 223
    addu	$gp,$t9,$at
    # Line 239
    # lw $t9, -32036($gp) # &__glOdysseyIsBboxClippedRange2
    sd	$ra,208($sp)
    bal __glOdysseyIsBboxClippedRange2
    nop
    ld	$ra,208($sp)
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973798:
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9737a4:
    # Line 246
    lwc1	$f14,-27204($v0)
    lwc1	$f15,8($a1)
    lwc1	$f11,-27208($v0)
    lwc1	$f27,0($a1)
    lwc1	$f17,-27200($v0)
    mul.s	$f5,$f14,$f15
    lwc1	$f18,16($a1)
    madd.s	$f5,$f5,$f11,$f27
    # Line 251
    lwc1	$f16,200($a4)
    lwc1	$f13,184($a4)
    # Line 246
    madd.s	$f5,$f5,$f17,$f18
    # Line 251
    mul.s	$f21,$f15,$f16
    lwc1	$f19,216($a4)
    madd.s	$f21,$f21,$f13,$f27
    # Line 246
    lwc1	$f4,-27196($v0)
    # Line 251
    madd.s	$f21,$f21,$f18,$f19
    mtc1	$zero,$f7
    # Line 246
    add.s	$f4,$f4,$f5
    # Line 251
    lwc1	$f29,4($a1)
    lwc1	$f10,232($a4)
    c.lt.s	$f7,$f4
    sub.s	$f12,$f29,$f27
    add.s	$f10,$f10,$f21
    bc1f	.L0d973850
    # Line 246
    swc1	$f4,0($sp)
    # Line 271
    madd.s	$f9,$f4,$f11,$f12
    # Line 259
    mov.s	$f6,$f10
    mov.s	$f5,$f4
    # Line 272
    c.lt.s $f7,$f9
    madd.s	$f8,$f10,$f13,$f12
    mul.s	$f23,$f13,$f12
    # Line 271
    mul.s	$f21,$f11,$f12
    # Line 272
    bc1f .L0d973b34
    # Line 271
    swc1	$f9,16($sp)
    # Line 273
    mul.s	$f13,$f8,$f4
    mul.s	$f25,$f9,$f10
    c.lt.s $f13,$f25
    bc1f .L0d973898
    # Line 272
    li	$a5,1
    # Line 273
    mov.s	$f6,$f8
    mov.s	$f5,$f9
    b	.L0d97389c
    li	$a4,4
.L0d973850:
    # Line 271
    madd.s	$f9,$f4,$f11,$f12
    # Line 272
    madd.s	$f8,$f10,$f13,$f12
    c.lt.s $f7,$f9
    # Line 264
    neg.s	$f5,$f4
    # Line 272
    mul.s	$f23,$f13,$f12
    # Line 271
    mul.s	$f21,$f11,$f12
    # Line 264
    neg.s	$f6,$f10
    # Line 272
    bc1t .L0d973b24
    # Line 271
    swc1	$f9,16($sp)
    # Line 272
    mul.s	$f0,$f5,$f8
    mul.s	$f31,$f6,$f9
    c.lt.s $f31,$f0
    bc1f .L0d973b04
    move	$a5,$zero
    # Line 273
    neg.s	$f5,$f9
    li	$a4,4
    b	.L0d97389c
    neg.s	$f6,$f8
.L0d973898:
    move	$a4,$zero
.L0d97389c:
    # Line 276
    lwc1	$f31,12($a1)
    sdc1	$f31,192($sp)
    sub.s	$f31,$f31,$f15
    # Line 277
    madd.s	$f10,$f9,$f14,$f31
    # Line 278
    c.lt.s $f7,$f10
    madd.s	$f4,$f8,$f16,$f31
    mul.s	$f25,$f16,$f31
    # Line 277
    mul.s	$f13,$f14,$f31
    # Line 278
    bc1f .L0d973ad4
    # Line 277
    swc1	$f10,24($sp)
    # Line 278
    beqz	$a5,.L0d973dac
    nop
    # Line 279
    mul.s	$f1,$f4,$f5
    mul.s	$f2,$f6,$f10
    c.lt.s $f1,$f2
    movt.s	$f6,$f4,$fcc6
    li	$v1,6
    movt.s	$f5,$f10,$fcc6
    movt	$a4,$v1,$fcc6
.L0d9738e8:
    # Line 282
    lwc1	$f9,20($a1)
    sdc1	$f9,168($sp)
    sub.s	$f9,$f9,$f18
    # Line 283
    madd.s	$f8,$f10,$f17,$f9
    # Line 284
    c.lt.s $f7,$f8
    madd.s	$f4,$f4,$f19,$f9
    # Line 282
    sdc1	$f9,184($sp)
    # Line 284
    mul.s	$f16,$f19,$f9
    # Line 283
    mul.s	$f9,$f17,$f9
    # Line 284
    bc1f .L0d973aec
    # Line 283
    swc1	$f8,28($sp)
    # Line 284
    beqz	$a5,.L0d974304
    nop
    # Line 285
    mul.s	$f0,$f6,$f8
    mul.s	$f19,$f4,$f5
    c.lt.s	$f19,$f0
    li	$a2,7
    movt.s	$f6,$f4,$fcc0
    sdc1	$f9,176($sp)
    movt.s	$f5,$f8,$fcc0
    movt	$a4,$a2,$fcc0
.L0d97393c:
    # Line 288
    sub.s	$f9,$f8,$f13
    # Line 289
    c.lt.s $f7,$f9
    sub.s	$f4,$f4,$f25
    bc1f .L0d973b0c
    # Line 288
    swc1	$f9,20($sp)
    # Line 289
    beqz	$a5,.L0d9744d8
    nop
    # Line 290
    mul.s	$f1,$f4,$f5
    mul.s	$f2,$f9,$f6
    c.lt.s $f1,$f2
    movt.s	$f6,$f4,$fcc2
    li	$a3,5
    movt.s	$f5,$f9,$fcc2
    movt	$a4,$a3,$fcc2
.L0d973974:
    # Line 293
    sub.s	$f8,$f9,$f21
    # Line 294
    c.lt.s $f7,$f8
    sub.s	$f4,$f4,$f23
    bc1f .L0d973b68
    # Line 293
    swc1	$f8,4($sp)
    # Line 294
    beqz	$a5,.L0d9744e8
    nop
    # Line 295
    mul.s	$f3,$f4,$f5
    mul.s	$f9,$f8,$f6
    c.lt.s $f3,$f9
    movt.s	$f6,$f4,$fcc4
    li	$a6,1
    movt.s	$f5,$f8,$fcc4
    movt	$a4,$a6,$fcc4
.L0d9739ac:
    # Line 298
    add.s	$f9,$f8,$f13
    # Line 299
    c.lt.s $f7,$f9
    add.s	$f4,$f25,$f4
    bc1f .L0d973ba4
    # Line 298
    swc1	$f9,12($sp)
    # Line 299
    beqz	$a5,.L0d9744f0
    nop
    # Line 300
    mul.s	$f10,$f4,$f5
    mul.s	$f13,$f9,$f6
    c.lt.s $f10,$f13
    movt.s	$f6,$f4,$fcc6
    li	$a7,3
    movt.s	$f5,$f9,$fcc6
    movt	$a4,$a7,$fcc6
    # Line 303
    ldc1	$f8,176($sp)
.L0d9739e8:
    sub.s	$f8,$f9,$f8
    # Line 304
    c.lt.s $f7,$f8
    sub.s	$f10,$f4,$f16
    bc1f .L0d973bf4
    # Line 303
    swc1	$f8,8($sp)
    # Line 304
    beqz	$a5,.L0d9744e0
    nop
    # Line 305
    mul.s	$f9,$f10,$f5
    mul.s	$f13,$f8,$f6
    c.lt.s	$f9,$f13
    li	$t0,2
    movt	$a4,$t0,$fcc0
    # Line 330
    sll	$t1,$a4,0x2
.L0d973a1c:
    addu	$t1,$sp,$t1
    lwc1	$f4,0($t1)
    # Line 328
    mov.s	$f16,$f29
    # Line 330
    ldc1	$f21,168($sp)
    andi	$a7,$a4,0x4
    # Line 329
    ldc1	$f19,192($sp)
    andi	$a5,$a4,0x1
    movz.s	$f16,$f27,$a7
    # Line 330
    c.lt.s $f7,$f4
    # Line 328
    andi	$a6,$a4,0x2
    sdc1	$f16,32($sp)
    movz.s	$f21,$f18,$a5
    movz.s	$f19,$f15,$a6
    sdc1	$f21,40($sp)
    # Line 330
    bc1f .L0d973c38
    sdc1	$f19,48($sp)
.L0d973a5c:
    # Line 343
    lwc1	$f15,-27256($v0)
    lwc1	$f16,-27252($v0)
    ldc1	$f9,48($sp)
    ldc1	$f13,32($sp)
    lwc1	$f8,-27236($v0)
    lwc1	$f19,-27240($v0)
    mul.s	$f10,$f9,$f16
    madd.s	$f10,$f10,$f13,$f15
    lwc1	$f18,-27232($v0)
    mul.s	$f9,$f9,$f8
    madd.s	$f9,$f9,$f13,$f19
    ldc1	$f13,40($sp)
    lwc1	$f29,-27248($v0)
    madd.s	$f9,$f9,$f13,$f18
    madd.s	$f10,$f10,$f13,$f29
    lwc1	$f5,-27228($v0)
    # Line 344
    mov.s	$f23,$f4
    # Line 343
    sdc1	$f19,96($sp)
    # Line 344
    mov.s	$f19,$f4
    # Line 343
    lwc1	$f6,-27244($v0)
    sdc1	$f18,88($sp)
    # Line 346
    mov.s	$f18,$f4
    # Line 343
    add.s	$f5,$f5,$f9
    # Line 346
    mov.s	$f9,$f4
    # Line 343
    add.s	$f6,$f6,$f10
    mov.s	$f25,$f5
    mov.s	$f13,$f5
    # Line 345
    mov.s	$f21,$f6
    # Line 346
    b	.L0d973cac
    # Line 345
    mov.s	$f10,$f6
.L0d973ad4:
    # Line 279
    beqz	$a5,.L0d973b44
    nop
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973aec:
    # Line 285
    beqz	$a5,.L0d973b80
    nop
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973b04:
    b	.L0d97389c
    # Line 273
    move	$a4,$zero
.L0d973b0c:
    # Line 290
    beqz	$a5,.L0d973c04
    nop
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973b24:
    # Line 273
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973b34:
    # Line 273
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973b44:
    # Line 279
    mul.s	$f16,$f6,$f10
    mul.s	$f0,$f4,$f5
    c.lt.s $f16,$f0
    bc1f .L0d9738e8
    nop
    neg.s	$f5,$f10
    li	$a4,6
    b	.L0d9738e8
    neg.s	$f6,$f4
.L0d973b68:
    # Line 295
    beqz	$a5,.L0d973d88
    nop
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973b80:
    # Line 285
    mul.s	$f2,$f4,$f5
    mul.s	$f1,$f6,$f8
    c.lt.s $f1,$f2
    bc1f .L0d97393c
    sdc1	$f9,176($sp)
    neg.s	$f5,$f8
    li	$a4,7
    b	.L0d97393c
    neg.s	$f6,$f4
.L0d973ba4:
    # Line 300
    beqz	$a5,.L0d973bbc
    nop
    li	$v0,1
    # Line 426
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d973bbc:
    # Line 300
    mul.s	$f3,$f9,$f6
    mul.s	$f8,$f4,$f5
    c.lt.s $f3,$f8
    bc1f .L0d9739e8
    # Line 303
    ldc1	$f8,176($sp)
    ldc1	$f8,176($sp)
    sub.s	$f8,$f9,$f8
    # Line 304
    c.lt.s $f7,$f8
    sub.s	$f10,$f4,$f16
    # Line 300
    neg.s	$f5,$f9
    neg.s	$f6,$f4
    # Line 304
    bc1t .L0d9744e0
    # Line 303
    swc1	$f8,8($sp)
    # Line 305
    li	$a4,3
.L0d973bf4:
    beqz	$a5,.L0d97430c
    nop
    b	.L0d973798
    li	$v0,1
.L0d973c04:
    # Line 290
    mul.s	$f10,$f9,$f6
    mul.s	$f19,$f4,$f5
    c.lt.s $f10,$f19
    bc1f .L0d973974
    nop
    sub.s	$f5,$f13,$f8
    li	$a4,5
    b	.L0d973974
    neg.s	$f6,$f4
.L0d973c28:
    # Line 346
    move	$a7,$zero
    mov.s	$f4,$f3
    move	$a5,$zero
    li	$a6,2
.L0d973c38:
    lwc1	$f21,-27240($v0)
    lwc1	$f16,-27252($v0)
    ldc1	$f13,48($sp)
    lwc1	$f8,-27236($v0)
    ldc1	$f18,32($sp)
    lwc1	$f15,-27256($v0)
    mul.s	$f10,$f13,$f16
    mul.s	$f13,$f13,$f8
    lwc1	$f19,-27232($v0)
    madd.s	$f13,$f13,$f18,$f21
    madd.s	$f10,$f10,$f18,$f15
    ldc1	$f18,40($sp)
    lwc1	$f29,-27248($v0)
    madd.s	$f13,$f13,$f18,$f19
    madd.s	$f10,$f10,$f18,$f29
    lwc1	$f5,-27228($v0)
    lwc1	$f6,-27244($v0)
    # Line 350
    neg.s	$f9,$f4
    # Line 346
    add.s	$f5,$f5,$f13
    # Line 350
    mov.s	$f23,$f9
    # Line 346
    add.s	$f6,$f6,$f10
    sdc1	$f19,88($sp)
    # Line 350
    mov.s	$f19,$f9
    # Line 349
    neg.s	$f25,$f5
    # Line 352
    mov.s	$f18,$f9
    # Line 351
    neg.s	$f10,$f6
    # Line 349
    mov.s	$f13,$f25
    # Line 346
    sdc1	$f21,96($sp)
    # Line 351
    mov.s	$f21,$f10
.L0d973cac:
    # Line 358
    lwc1	$f3,28($a1)
    lwc1	$f2,24($a1)
    c.lt.s $f2,$f3
    # Line 360
    lwc1	$f1,32($a1)
    movf.s	$f3,$f2,$fcc3
    c.lt.s $f3,$f1
    movf.s	$f1,$f3,$fcc2
    # Line 366
    ldc1	$f27,184($sp)
    mov.s	$f2,$f31
    # Line 365
    c.lt.s	$f31,$f1
    mov.s	$f0,$f12
    # Line 362
    c.lt.s $f12,$f1
    sdc1	$f29,80($sp)
    # Line 366
    c.lt.s $f27,$f1
    movf.s	$f2,$f1,$fcc0
    movf.s	$f0,$f1,$fcc7
    sdc1	$f2,112($sp)
    movf.s	$f27,$f1,$fcc1
    # Line 367
    beqz	$a7,.L0d9742d8
    sdc1	$f0,104($sp)
    # Line 369
    ldc1	$f29,104($sp)
    ldc1	$f31,96($sp)
    beqz	$a6,.L0d9742e4
    neg.s	$f29,$f29
.L0d973d0c:
    # Line 370
    ldc1	$f12,112($sp)
    beqz	$a5,.L0d9742ec
    neg.s	$f12,$f12
.L0d973d18:
    sdc1	$f12,72($sp)
    sdc1	$f16,64($sp)
    sdc1	$f15,56($sp)
    sdc1	$f8,128($sp)
    # Line 371
    neg.s	$f0,$f27
    sdc1	$f0,136($sp)
.L0d973d30:
    # Line 376
    madd.s	$f16,$f4,$f29,$f11
    # Line 374
    ldc1	$f1,56($sp)
    # Line 375
    mul.s	$f2,$f29,$f31
    madd.s	$f5,$f5,$f29,$f31
    # Line 374
    madd.s	$f6,$f6,$f29,$f1
    # Line 376
    mul.s	$f3,$f29,$f11
    # Line 374
    mul.s	$f1,$f29,$f1
    # Line 376
    mul.s	$f27,$f16,$f13
    c.lt.s $f7,$f16
    sdc1	$f3,160($sp)
    mul.s	$f15,$f16,$f10
    # Line 375
    sdc1	$f2,152($sp)
    # Line 376
    mul.s	$f8,$f9,$f5
    # Line 374
    sdc1	$f1,144($sp)
    # Line 376
    bc1f .L0d973dd8
    mul.s	$f12,$f9,$f6
    c.lt.s $f12,$f15
    bc1f .L0d973db4
    nop
    # Line 378
    mov.s	$f10,$f6
    b	.L0d973dc0
    mov.s	$f9,$f16
.L0d973d88:
    # Line 295
    mul.s	$f10,$f8,$f6
    mul.s	$f19,$f4,$f5
    c.lt.s $f10,$f19
    bc1f .L0d9739ac
    nop
    sub.s	$f5,$f21,$f9
    li	$a4,1
    b	.L0d9739ac
    neg.s	$f6,$f4
.L0d973dac:
    # Line 279
    b	.L0d973798
    li	$v0,1
.L0d973db4:
    # Line 378
    c.lt.s $f15,$f12
    movt.s	$f21,$f6,$fcc7
    movt.s	$f18,$f16,$fcc7
.L0d973dc0:
    c.lt.s	$f8,$f27
    bc1f	.L0d97435c
    nop
    mov.s	$f13,$f5
    b	.L0d973e20
    mov.s	$f19,$f16
.L0d973dd8:
    c.lt.s $f15,$f12
    bc1f .L0d974370
    nop
    neg.s	$f9,$f16
    neg.s	$f10,$f6
.L0d973dec:
    c.lt.s $f27,$f8
    bc1f .L0d973e04
    nop
    neg.s	$f19,$f16
    b	.L0d973e20
    neg.s	$f13,$f5
.L0d973e04:
    mul.s	$f27,$f5,$f18
    mul.s	$f29,$f16,$f21
    c.lt.s $f27,$f29
    bc1f .L0d973e24
    # Line 383
    ldc1	$f27,72($sp)
    # Line 378
    neg.s	$f23,$f16
    neg.s	$f25,$f5
.L0d973e20:
    # Line 383
    ldc1	$f27,72($sp)
.L0d973e24:
    # Line 382
    ldc1	$f29,128($sp)
    # Line 381
    ldc1	$f0,64($sp)
    # Line 383
    madd.s	$f4,$f16,$f27,$f14
    mul.s	$f31,$f27,$f14
    # Line 382
    madd.s	$f5,$f5,$f27,$f29
    # Line 381
    madd.s	$f6,$f6,$f27,$f0
    # Line 382
    mul.s	$f29,$f27,$f29
    # Line 381
    mul.s	$f27,$f27,$f0
    # Line 383
    mul.s	$f12,$f13,$f4
    c.lt.s $f7,$f4
    mul.s	$f11,$f10,$f4
    mul.s	$f8,$f5,$f19
    bc1f .L0d973ea0
    mul.s	$f15,$f6,$f9
    c.lt.s $f15,$f11
    bc1f .L0d973e74
    nop
    # Line 385
    mov.s	$f10,$f6
    b	.L0d973e88
    mov.s	$f9,$f4
.L0d973e74:
    mul.s	$f0,$f21,$f4
    mul.s	$f1,$f6,$f18
    c.lt.s $f0,$f1
    movt.s	$f21,$f6,$fcc6
    movt.s	$f18,$f4,$fcc6
.L0d973e88:
    c.lt.s $f8,$f12
    bc1f .L0d974388
    nop
    mov.s	$f13,$f5
    b	.L0d973ee8
    mov.s	$f19,$f4
.L0d973ea0:
    c.lt.s	$f11,$f15
    bc1f	.L0d9743a0
    nop
    neg.s	$f9,$f4
    neg.s	$f10,$f6
.L0d973eb4:
    c.lt.s $f12,$f8
    bc1f .L0d973ecc
    nop
    neg.s	$f19,$f4
    b	.L0d973ee8
    neg.s	$f13,$f5
.L0d973ecc:
    mul.s	$f2,$f5,$f18
    mul.s	$f3,$f21,$f4
    c.lt.s $f2,$f3
    bc1f .L0d973eec
    # Line 390
    ldc1	$f14,136($sp)
    # Line 385
    neg.s	$f23,$f4
    neg.s	$f25,$f5
.L0d973ee8:
    # Line 390
    ldc1	$f14,136($sp)
.L0d973eec:
    # Line 389
    ldc1	$f0,88($sp)
    # Line 388
    ldc1	$f15,80($sp)
    # Line 390
    madd.s	$f4,$f4,$f14,$f17
    mul.s	$f16,$f14,$f17
    # Line 389
    madd.s	$f5,$f5,$f14,$f0
    # Line 388
    madd.s	$f6,$f6,$f14,$f15
    # Line 389
    mul.s	$f0,$f14,$f0
    # Line 388
    mul.s	$f14,$f14,$f15
    # Line 390
    mul.s	$f12,$f13,$f4
    c.lt.s $f7,$f4
    mul.s	$f11,$f10,$f4
    mul.s	$f8,$f5,$f19
    # Line 389
    sdc1	$f0,120($sp)
    # Line 390
    bc1f .L0d973f6c
    mul.s	$f15,$f6,$f9
    c.lt.s $f15,$f11
    bc1f .L0d973f40
    nop
    # Line 392
    mov.s	$f10,$f6
    b	.L0d973f54
    mov.s	$f9,$f4
.L0d973f40:
    mul.s	$f1,$f21,$f4
    mul.s	$f2,$f6,$f18
    c.lt.s $f1,$f2
    movt.s	$f21,$f6,$fcc5
    movt.s	$f18,$f4,$fcc5
.L0d973f54:
    c.lt.s $f8,$f12
    bc1f .L0d9743c0
    nop
    mov.s	$f13,$f5
    b	.L0d973fb4
    mov.s	$f19,$f4
.L0d973f6c:
    c.lt.s $f11,$f15
    bc1f .L0d9743d8
    nop
    neg.s	$f9,$f4
    neg.s	$f10,$f6
.L0d973f80:
    c.lt.s	$f12,$f8
    bc1f	.L0d973f98
    nop
    neg.s	$f19,$f4
    b	.L0d973fb4
    neg.s	$f13,$f5
.L0d973f98:
    mul.s	$f3,$f5,$f18
    mul.s	$f8,$f21,$f4
    c.lt.s $f3,$f8
    bc1f .L0d973fb4
    nop
    neg.s	$f23,$f4
    neg.s	$f25,$f5
.L0d973fb4:
    # Line 397
    sub.s	$f4,$f4,$f31
    # Line 396
    sub.s	$f5,$f5,$f29
    # Line 397
    mul.s	$f12,$f13,$f4
    c.lt.s $f7,$f4
    mul.s	$f11,$f10,$f4
    # Line 395
    sub.s	$f6,$f6,$f27
    # Line 397
    mul.s	$f8,$f5,$f19
    bc1f .L0d97401c
    mul.s	$f15,$f6,$f9
    c.lt.s $f15,$f11
    bc1f .L0d973ff0
    nop
    # Line 398
    mov.s	$f10,$f6
    b	.L0d974004
    mov.s	$f9,$f4
.L0d973ff0:
    mul.s	$f11,$f21,$f4
    mul.s	$f15,$f6,$f18
    c.lt.s $f11,$f15
    movt.s	$f21,$f6,$fcc4
    movt.s	$f18,$f4,$fcc4
.L0d974004:
    c.lt.s $f8,$f12
    bc1f .L0d9743f8
    nop
    mov.s	$f13,$f5
    b	.L0d974064
    mov.s	$f19,$f4
.L0d97401c:
    c.lt.s $f11,$f15
    bc1f .L0d974410
    nop
    neg.s	$f9,$f4
    neg.s	$f10,$f6
.L0d974030:
    c.lt.s $f12,$f8
    bc1f .L0d974048
    nop
    neg.s	$f19,$f4
    b	.L0d974064
    neg.s	$f13,$f5
.L0d974048:
    mul.s	$f17,$f5,$f18
    mul.s	$f0,$f21,$f4
    c.lt.s	$f17,$f0
    bc1f	.L0d974068
    # Line 403
    ldc1	$f3,160($sp)
    # Line 398
    neg.s	$f23,$f4
    neg.s	$f25,$f5
.L0d974064:
    # Line 403
    ldc1	$f3,160($sp)
.L0d974068:
    # Line 402
    ldc1	$f2,152($sp)
    # Line 401
    ldc1	$f1,144($sp)
    # Line 403
    sub.s	$f4,$f4,$f3
    # Line 402
    sub.s	$f5,$f5,$f2
    # Line 403
    mul.s	$f12,$f13,$f4
    c.lt.s $f7,$f4
    # Line 401
    sub.s	$f6,$f6,$f1
    # Line 403
    mul.s	$f11,$f10,$f4
    mul.s	$f8,$f5,$f19
    bc1f .L0d9740d8
    mul.s	$f15,$f6,$f9
    c.lt.s $f15,$f11
    bc1f .L0d9740ac
    nop
    # Line 404
    mov.s	$f10,$f6
    b	.L0d9740c0
    mov.s	$f9,$f4
.L0d9740ac:
    mul.s	$f11,$f21,$f4
    mul.s	$f15,$f6,$f18
    c.lt.s $f11,$f15
    movt.s	$f21,$f6,$fcc3
    movt.s	$f18,$f4,$fcc3
.L0d9740c0:
    c.lt.s $f8,$f12
    bc1f .L0d974430
    nop
    mov.s	$f13,$f5
    b	.L0d974120
    mov.s	$f19,$f4
.L0d9740d8:
    c.lt.s $f11,$f15
    bc1f .L0d974448
    nop
    neg.s	$f9,$f4
    neg.s	$f10,$f6
.L0d9740ec:
    c.lt.s $f12,$f8
    bc1f .L0d974104
    nop
    neg.s	$f19,$f4
    b	.L0d974120
    neg.s	$f13,$f5
.L0d974104:
    mul.s	$f17,$f5,$f18
    mul.s	$f0,$f21,$f4
    c.lt.s $f17,$f0
    bc1f .L0d974120
    nop
    neg.s	$f23,$f4
    neg.s	$f25,$f5
.L0d974120:
    # Line 409
    add.s	$f4,$f31,$f4
    # Line 408
    add.s	$f5,$f29,$f5
    # Line 409
    mul.s	$f12,$f13,$f4
    c.lt.s	$f7,$f4
    mul.s	$f11,$f10,$f4
    # Line 407
    add.s	$f6,$f27,$f6
    # Line 409
    mul.s	$f8,$f5,$f19
    bc1f	.L0d974188
    mul.s	$f15,$f6,$f9
    c.lt.s $f15,$f11
    bc1f .L0d97415c
    nop
    # Line 410
    mov.s	$f10,$f6
    b	.L0d974170
    mov.s	$f9,$f4
.L0d97415c:
    mul.s	$f1,$f21,$f4
    mul.s	$f2,$f6,$f18
    c.lt.s $f1,$f2
    movt.s	$f21,$f6,$fcc2
    movt.s	$f18,$f4,$fcc2
.L0d974170:
    c.lt.s $f8,$f12
    bc1f .L0d974468
    nop
    mov.s	$f13,$f5
    b	.L0d9741d0
    mov.s	$f19,$f4
.L0d974188:
    c.lt.s $f11,$f15
    bc1f .L0d974480
    nop
    neg.s	$f9,$f4
    neg.s	$f10,$f6
.L0d97419c:
    c.lt.s $f12,$f8
    bc1f .L0d9741b4
    nop
    neg.s	$f19,$f4
    b	.L0d9741d0
    neg.s	$f13,$f5
.L0d9741b4:
    mul.s	$f3,$f5,$f18
    mul.s	$f8,$f21,$f4
    c.lt.s $f3,$f8
    bc1f .L0d9741d4
    # Line 414
    ldc1	$f11,120($sp)
    # Line 410
    neg.s	$f23,$f4
    neg.s	$f25,$f5
.L0d9741d0:
    # Line 414
    ldc1	$f11,120($sp)
.L0d9741d4:
    # Line 415
    sub.s	$f4,$f4,$f16
    # Line 413
    sub.s	$f6,$f6,$f14
    # Line 415
    mul.s	$f12,$f13,$f4
    c.lt.s $f7,$f4
    mul.s	$f15,$f6,$f9
    # Line 414
    sub.s	$f5,$f5,$f11
    # Line 415
    mul.s	$f11,$f10,$f4
    bc1f .L0d97423c
    mul.s	$f8,$f5,$f19
    c.lt.s	$f15,$f11
    bc1f	.L0d974210
    nop
    # Line 416
    mov.s	$f10,$f6
    b	.L0d974224
    mov.s	$f9,$f4
.L0d974210:
    mul.s	$f14,$f21,$f4
    mul.s	$f15,$f6,$f18
    c.lt.s $f14,$f15
    movt.s	$f21,$f6,$fcc1
    movt.s	$f18,$f4,$fcc1
.L0d974224:
    c.lt.s $f8,$f12
    bc1f .L0d9744a0
    nop
    mov.s	$f13,$f5
    b	.L0d974284
    mov.s	$f19,$f4
.L0d97423c:
    c.lt.s $f11,$f15
    bc1f .L0d9744b8
    nop
    neg.s	$f9,$f4
    neg.s	$f10,$f6
.L0d974250:
    c.lt.s $f12,$f8
    bc1f .L0d974268
    nop
    neg.s	$f19,$f4
    b	.L0d974284
    neg.s	$f13,$f5
.L0d974268:
    mul.s	$f16,$f5,$f18
    mul.s	$f17,$f21,$f4
    c.lt.s $f16,$f17
    bc1f .L0d974284
    nop
    neg.s	$f23,$f4
    neg.s	$f25,$f5
.L0d974284:
    div.s	$f27,$f21,$f18
    div.s	$f29,$f10,$f9
    lui	$t2,0x1
    ori	$t2,$t2,0x9d94
    addu	$t2,$t2,$a0
    lwc1	$f4,0($t2)
    lwc1	$f5,_lit_40000000
    mul.s	$f4,$f4,$f5
    sub.s	$f27,$f27,$f29
    c.lt.s $f4,$f27
    bc1t .L0d974354
    nop
    # Line 420
    div.s	$f7,$f13,$f19
    div.s	$f6,$f25,$f23
    sub.s	$f6,$f6,$f7
    # Line 426
    ld	$gp,200($sp)
    addiu	$sp,$sp,224
    # Line 420
    c.lt.s $f4,$f6
    # Line 424
    li	$v0,1
    # Line 426
    jr	$ra
    movf	$v0,$zero,$fcc7
.L0d9742d8:
    ldc1	$f31,96($sp)
    # Line 369
    bnez	$a6,.L0d973d0c
    ldc1	$f29,104($sp)
.L0d9742e4:
    # Line 370
    bnez	$a5,.L0d973d18
    ldc1	$f12,112($sp)
.L0d9742ec:
    # Line 371
    sdc1	$f27,136($sp)
    sdc1	$f12,72($sp)
    sdc1	$f16,64($sp)
    sdc1	$f15,56($sp)
    b	.L0d973d30
    sdc1	$f8,128($sp)
.L0d974304:
    # Line 285
    b	.L0d973798
    li	$v0,1
.L0d97430c:
    # Line 305
    mul.s	$f1,$f8,$f6
    mul.s	$f2,$f10,$f5
    c.lt.s	$f1,$f2
    bc1f	.L0d973a1c
    # Line 330
    sll	$t1,$a4,0x2
    lwc1	$f3,8($sp)
    # Line 328
    sdc1	$f27,32($sp)
    # Line 330
    c.lt.s $f7,$f3
    # Line 329
    ldc1	$f5,192($sp)
    # Line 330
    sdc1	$f18,40($sp)
    addiu	$a4,$sp,8
    bc1f .L0d973c28
    # Line 329
    sdc1	$f5,48($sp)
    # Line 330
    move	$a7,$zero
    move	$a5,$zero
    mov.s	$f4,$f3
    b	.L0d973a5c
    li	$a6,2
.L0d974354:
    # Line 420
    b	.L0d973798
    li	$v0,1
.L0d97435c:
    # Line 378
    mul.s	$f8,$f5,$f18
    c.lt.s $f27,$f8
    movt.s	$f25,$f5,$fcc2
    b	.L0d973e20
    movt.s	$f23,$f16,$fcc2
.L0d974370:
    c.lt.s $f12,$f15
    bc1f .L0d973dec
    nop
    neg.s	$f18,$f16
    b	.L0d973dec
    neg.s	$f21,$f6
.L0d974388:
    # Line 385
    mul.s	$f11,$f25,$f4
    mul.s	$f12,$f5,$f18
    c.lt.s $f11,$f12
    movt.s	$f25,$f5,$fcc4
    b	.L0d973ee8
    movt.s	$f23,$f4,$fcc4
.L0d9743a0:
    mul.s	$f14,$f6,$f18
    mul.s	$f15,$f21,$f4
    c.lt.s $f14,$f15
    bc1f .L0d973eb4
    nop
    neg.s	$f18,$f4
    b	.L0d973eb4
    neg.s	$f21,$f6
.L0d9743c0:
    # Line 392
    mul.s	$f17,$f25,$f4
    mul.s	$f0,$f5,$f18
    c.lt.s $f17,$f0
    movt.s	$f25,$f5,$fcc6
    b	.L0d973fb4
    movt.s	$f23,$f4,$fcc6
.L0d9743d8:
    mul.s	$f1,$f6,$f18
    mul.s	$f2,$f21,$f4
    c.lt.s $f1,$f2
    bc1f .L0d973f80
    nop
    neg.s	$f18,$f4
    b	.L0d973f80
    neg.s	$f21,$f6
.L0d9743f8:
    # Line 398
    mul.s	$f3,$f25,$f4
    mul.s	$f8,$f5,$f18
    c.lt.s	$f3,$f8
    movt.s	$f25,$f5,$fcc0
    b	.L0d974064
    movt.s	$f23,$f4,$fcc0
.L0d974410:
    mul.s	$f11,$f6,$f18
    mul.s	$f15,$f21,$f4
    c.lt.s $f11,$f15
    bc1f .L0d974030
    nop
    neg.s	$f18,$f4
    b	.L0d974030
    neg.s	$f21,$f6
.L0d974430:
    # Line 404
    mul.s	$f17,$f25,$f4
    mul.s	$f0,$f5,$f18
    c.lt.s $f17,$f0
    movt.s	$f25,$f5,$fcc2
    b	.L0d974120
    movt.s	$f23,$f4,$fcc2
.L0d974448:
    mul.s	$f1,$f6,$f18
    mul.s	$f2,$f21,$f4
    c.lt.s $f1,$f2
    bc1f .L0d9740ec
    nop
    neg.s	$f18,$f4
    b	.L0d9740ec
    neg.s	$f21,$f6
.L0d974468:
    # Line 410
    mul.s	$f3,$f25,$f4
    mul.s	$f8,$f5,$f18
    c.lt.s $f3,$f8
    movt.s	$f25,$f5,$fcc4
    b	.L0d9741d0
    movt.s	$f23,$f4,$fcc4
.L0d974480:
    mul.s	$f11,$f6,$f18
    mul.s	$f15,$f21,$f4
    c.lt.s $f11,$f15
    bc1f .L0d97419c
    nop
    neg.s	$f18,$f4
    b	.L0d97419c
    neg.s	$f21,$f6
.L0d9744a0:
    # Line 416
    mul.s	$f16,$f25,$f4
    mul.s	$f17,$f5,$f18
    c.lt.s $f16,$f17
    movt.s	$f25,$f5,$fcc6
    b	.L0d974284
    movt.s	$f23,$f4,$fcc6
.L0d9744b8:
    mul.s	$f27,$f6,$f18
    mul.s	$f29,$f21,$f4
    c.lt.s $f27,$f29
    bc1f .L0d974250
    nop
    neg.s	$f18,$f4
    b	.L0d974250
    neg.s	$f21,$f6
.L0d9744d8:
    # Line 290
    b	.L0d973798
    li	$v0,1
.L0d9744e0:
    # Line 305
    b	.L0d973798
    li	$v0,1
.L0d9744e8:
    # Line 295
    b	.L0d973798
    li	$v0,1
.L0d9744f0:
    # Line 300
    b	.L0d973798
    li	$v0,1
.end __glOdysseyIsBboxClippedRange

# Function: __glOdysseyIsBboxClippedRange2
# Declared: Line 432 (Source lines: 433-528)
# Address: 0x0d974500 - 0x0d974618 (Size: 280 bytes, Frame: 0)
.globl __glOdysseyIsBboxClippedRange2
.ent __glOdysseyIsBboxClippedRange2
__glOdysseyIsBboxClippedRange2:
    # Line 488
    lui	$a4,0x1
    lwc1	$f7,24($a1)
    addu	$a4,$a0,$a4
    lwc1	$f4,-27256($a4)
    mtc1	$zero,$f6
    mul.s	$f4,$f4,$f7
    c.lt.s	$f4,$f6
    # Line 433
    lui	$v0,0x18
    addiu	$v0,$v0,16528
    # Line 492
    lwc1	$f5,-27240($a4)
    # Line 488
    bc1f	.L0d974534
    # Line 433
    addu	$at,$t9,$v0
    # Line 490
    neg.s	$f4,$f4
.L0d974534:
    # Line 492
    mul.s	$f5,$f5,$f7
    c.lt.s $f5,$f6
    # Line 496
    lwc1	$f9,-27252($a4)
    # Line 492
    bc1f .L0d97454c
    # Line 496
    lwc1	$f7,28($a1)
    # Line 494
    neg.s	$f5,$f5
.L0d97454c:
    # Line 496
    mul.s	$f8,$f9,$f7
    c.lt.s $f6,$f8
    bc1f .L0d974564
    nop
    # Line 498
    b	.L0d974568
    madd.s	$f4,$f4,$f9,$f7
.L0d974564:
    # Line 500
    nmsub.s	$f4,$f4,$f9,$f7
.L0d974568:
    # Line 502
    lwc1	$f9,-27236($a4)
    mul.s	$f8,$f9,$f7
    c.lt.s $f6,$f8
    # Line 520
    lui	$a5,0x1
    # Line 523
    li	$v0,1
    # Line 502
    bc1f .L0d97458c
    # Line 520
    ori	$a5,$a5,0x9d94
    # Line 504
    b	.L0d974590
    madd.s	$f5,$f5,$f9,$f7
.L0d97458c:
    # Line 506
    nmsub.s	$f5,$f5,$f9,$f7
.L0d974590:
    # Line 508
    lwc1	$f7,32($a1)
    lwc1	$f9,-27248($a4)
    mul.s	$f8,$f9,$f7
    c.lt.s $f6,$f8
    bc1f .L0d9745b0
    # Line 520
    addu	$a5,$a5,$a0
    # Line 510
    b	.L0d9745b4
    madd.s	$f4,$f4,$f9,$f7
.L0d9745b0:
    # Line 512
    nmsub.s	$f4,$f4,$f9,$f7
.L0d9745b4:
    # Line 514
    lwc1	$f9,-27232($a4)
    mul.s	$f8,$f9,$f7
    c.lt.s $f6,$f8
    # Line 520
    lwc1	$f6,0($a5)
    ldc1	$f8,_lit8_4000000000000000
    # Line 514
    bc1f .L0d9745d8
    # Line 520
    cvt.d.s	$f6,$f6
    # Line 516
    b	.L0d9745dc
    madd.s	$f5,$f5,$f9,$f7
.L0d9745d8:
    # Line 518
    nmsub.s	$f5,$f5,$f9,$f7
.L0d9745dc:
    # Line 520
    lwc1	$f7,-27196($a4)
    abs.s	$f7,$f7
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f8
    mul.d	$f6,$f6,$f7
    cvt.s.d	$f6,$f6
    c.lt.s $f6,$f4
    bc1t .L0d974610
    nop
    # Line 523
    c.lt.s $f6,$f5
    # Line 526
    li	$v0,1
    # Line 528
    jr	$ra
    movf	$v0,$zero,$fcc7
.L0d974610:
    jr	$ra
    nop
.end __glOdysseyIsBboxClippedRange2

# Function: __glOdysseyDlistPush
# Declared: Line 542 (Source lines: 543-669)
# Address: 0x0d974620 - 0x0d9748e8 (Size: 712 bytes, Frame: 48)
.globl __glOdysseyDlistPush
.ent __glOdysseyDlistPush
__glOdysseyDlistPush:
    # Line 547
    lw	$v0,4112($zero)
    # Line 569
    lui	$a5,0x1
    # Line 543
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 569
    addu	$s0,$a5,$v0
    lw	$a1,27016($s0)
    li	$at,-17
    # Line 543
    lui	$v1,0x18
    # Line 569
    and	$at,$a1,$at
    # Line 543
    move	$a4,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,16240
    sd	$gp,24($sp)
    # Line 569
    bnez	$at,.L0d9746b8
    # Line 543
    addu	$gp,$t9,$v1
    # Line 569
    lbu	$a2,3220($v0)
    li	$a6,1
    lw	$v1,27120($s0)
    move	$a3,$a6
    li	$a0,2
    movz	$a0,$a3,$a2
    and	$v1,$v1,$a0
    bnez	$v1,.L0d9746bc
    nop	# was lw $t9, -32076($gp) # &__glOdysseyDlistInterpret
    lbu	$a7,27132($s0)
    beqz	$a7,.L0d974764
    nop
    lbu	$t0,27133($s0)
    beqz	$t0,.L0d974708
    # Line 647
    addiu	$v0,$a4,4
    # Line 575
    # lw $t9, -32072($gp) # &__glOdysseyDlistInterpretPreclip
    bal __glOdysseyDlistInterpretPreclip
    move	$a0,$a4
    ld	$ra,32($sp)
    # Line 669
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9746b8:
    # Line 569
    # lw $t9, -32076($gp) # &__glOdysseyDlistInterpret
.L0d9746bc:
    bal __glOdysseyDlistInterpret
    move	$a0,$a4
    ld	$ra,32($sp)
    move	$a0,$v0
.L0d9746cc:
    # Line 669
    move	$v0,$a0
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9746e0:
    # Line 622
    lw	$t1,27124($s0)
    andi	$t1,$t1,0x10
    beqz	$t1,.L0d974704
    lui	$t2,0x1
    ori	$t2,$t2,0x9dbc
    addu	$t2,$t2,$v0
    lw	$t2,0($t2)
    beq	$t2,$a6,.L0d974870
    nop
.L0d974704:
    # Line 647
    addiu	$v0,$a4,4
.L0d974708:
    andi	$t3,$v0,0x4
    lw	$s0,0($a4)
    beqz	$t3,.L0d974728
    move	$a0,$v0
    # Line 657
    lw	$t8,4($a4)
    # Line 658
    addiu	$s0,$s0,-1
    # Line 657
    addiu	$a0,$a4,8
    sw	$t8,0($a5)
.L0d974728:
    # Line 658
    beqz	$s0,.L0d97474c
    ld	$ra,32($sp)
    # Line 661
    # lw $t9, -18808($gp) # &__glOdysseyPushLoop
    sd	$a0,8($sp)
    move	$a0,$s0
    jal	__glOdysseyPushLoop
    ld	$a1,8($sp)
    ld	$a0,8($sp)
    ld	$ra,32($sp)
.L0d97474c:
    # Line 669
    ld	$gp,24($sp)
    sll	$v0,$s0,0x2
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addu	$v0,$a0,$v0
.L0d974764:
    # Line 578
    lw	$a0,27136($s0)
    lbu	$v1,64($a0)
    lwc1	$f1,48($a0)
    beqz	$v1,.L0d9747c8
    lwc1	$f3,52($a0)
    lwc1	$f0,-27208($s0)
    c.eq.s	$f0,$f1
    bc1f	.L0d9747c8
    lwc1	$f2,-27204($s0)
    c.eq.s $f2,$f3
    bc1f .L0d9747c8
    nop
    lwc1	$f4,-27200($s0)
    lwc1	$f5,56($a0)
    c.eq.s $f4,$f5
    bc1f .L0d9747c8
    nop
    lwc1	$f6,-27196($s0)
    lwc1	$f7,60($a0)
    c.eq.s $f6,$f7
    bc1f .L0d9747c8
    nop
    # Line 593
    sb	$zero,27133($s0)
    b	.L0d9747d0
    # Line 592
    sb	$a6,27132($s0)
.L0d9747c8:
    # Line 599
    sb	$zero,64($a0)
    lw	$a1,27016($s0)
.L0d9747d0:
    andi	$a0,$a1,0x10
    beqz	$a0,.L0d9746e0
    nop
    lw	$a1,27128($s0)
    lbu	$a2,36($a1)
    beqz	$a2,.L0d974858
    sd	$v0,0($sp)
    # Line 606
    # lw $t9, -32040($gp) # &__glOdysseyIsBboxClippedRange
    sd	$a4,40($sp)
    ld	$a0,0($sp)
    li	$a3,1
    bal __glOdysseyIsBboxClippedRange
    # Line 603
    sb	$a3,27132($s0)
    lui	$a5,0x1
    ld	$a4,40($sp)
    # Line 606
    ld	$a6,0($sp)
    beqz	$v0,.L0d974850
    li	$a1,1
    ori	$a5,$a5,0x9db8
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    li	$a6,4353
    beq	$a5,$a6,.L0d974848
.L0d97482c:
    # Line 613
    nop	# was lw $t9, -32072($gp) # &__glOdysseyDlistInterpretPreclip
    move	$a0,$a4
    bal __glOdysseyDlistInterpretPreclip
    # Line 612
    sb	$a1,27133($s0)
    ld	$ra,32($sp)
    # Line 613
    b	.L0d9746cc
    move	$a0,$v0
.L0d974848:
    # Line 608
    b	.L0d97482c
    sb	$a1,27135($s0)
.L0d974850:
    # Line 616
    b	.L0d974704
    sb	$zero,27133($s0)
.L0d974858:
    # Line 619
    # lw $t9, -32072($gp) # &__glOdysseyDlistInterpretPreclip
    bal __glOdysseyDlistInterpretPreclip
    move	$a0,$a4
    ld	$ra,32($sp)
    b	.L0d9746cc
    move	$a0,$v0
.L0d974870:
    # Line 622
    lw	$a1,27128($s0)
    lbu	$a6,36($a1)
    beqz	$a6,.L0d9748d0
    sd	$v0,0($sp)
    # Line 632
    # lw $t9, -32036($gp) # &__glOdysseyIsBboxClippedRange2
    sd	$a4,40($sp)
    ld	$a0,0($sp)
    li	$a7,1
    bal __glOdysseyIsBboxClippedRange2
    # Line 627
    sb	$a7,27132($s0)
    # Line 632
    beqz	$v0,.L0d9748c4
    ld	$a4,40($sp)
    # Line 636
    # lw $t9, -32072($gp) # &__glOdysseyDlistInterpretPreclip
    # Line 635
    li	$t0,1
    sb	$t0,27133($s0)
    # Line 636
    move	$a0,$a4
    bal __glOdysseyDlistInterpretPreclip
    # Line 633
    sb	$t0,27135($s0)
    ld	$ra,32($sp)
    # Line 636
    b	.L0d9746cc
    move	$a0,$v0
.L0d9748c4:
    lui	$a5,0x1
    # Line 639
    b	.L0d974704
    sb	$zero,27133($s0)
.L0d9748d0:
    # Line 642
    # lw $t9, -32072($gp) # &__glOdysseyDlistInterpretPreclip
    bal __glOdysseyDlistInterpretPreclip
    move	$a0,$a4
    ld	$ra,32($sp)
    b	.L0d9746cc
    move	$a0,$v0
.end __glOdysseyDlistPush

# Function: __glOdyle_Begin
# Declared: Line 677 (Source lines: 678-683)
# Address: 0x0d9748f0 - 0x0d974934 (Size: 68 bytes, Frame: 32)
.globl __glOdyle_Begin
.ent __glOdyle_Begin
__glOdyle_Begin:
    # Line 678
    addiu	$sp,$sp,-32
    lui	$at,0x18
    sd	$gp,16($sp)
    addiu	$at,$at,15520
    addu	$gp,$t9,$at
    # Line 682
    lw	$t9,4204($zero)
    # Line 678
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 682
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 683
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyle_Begin

# Function: __glOdyle_End
# Declared: Line 687 (Source lines: 688-690)
# Address: 0x0d974940 - 0x0d974980 (Size: 64 bytes, Frame: 32)
.globl __glOdyle_End
.ent __glOdyle_End
__glOdyle_End:
    # Line 688
    addiu	$sp,$sp,-32
    lui	$at,0x18
    sd	$gp,16($sp)
    addiu	$at,$at,15440
    addu	$gp,$t9,$at
    # Line 689
    lw	$t9,4220($zero)
    # Line 688
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 689
    jalr	$t9
    # Line 688
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 690
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyle_End

# Function: Bogus
# Declared: Line 699 (Source lines: 700-702)
# Address: 0x0d974980 - 0x0d974988 (Size: 8 bytes, Frame: 0)
.ent Bogus
Bogus:
    # Line 702
    jr	$ra
    # Line 700
    move	$v0,$a0
.end Bogus

# Function: __glOdysseyDlistInitState
# Declared: Line 1005 (Source lines: 1005-1091)
# Address: 0x0d974990 - 0x0d974c14 (Size: 644 bytes, Frame: 32)
.globl __glOdysseyDlistInitState
.ent __glOdysseyDlistInitState
__glOdysseyDlistInitState:
    # Line 1011
    sw	$zero,4148($zero)
    # Line 1010
    sw	$zero,4144($zero)
    # Line 1009
    sw	$zero,4136($zero)
    # Line 1008
    sw	$zero,4140($zero)
    # Line 1027
    sw	$zero,5084($a0)
    # Line 1026
    sw	$zero,5080($a0)
    # Line 1025
    sw	$zero,5076($a0)
    # Line 1024
    sw	$zero,5072($a0)
    # Line 1023
    sw	$zero,5068($a0)
    # Line 1005
    addiu	$sp,$sp,-32
    lui	$at,0x18
    sd	$s0,0($sp)
    addiu	$at,$at,15360
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1021
    la	$t8,__glOdysseyDlistPush
    # Line 1020
    # lw $t9, -32592($gp) # &sub_0daf0000
    # Line 1029
    lui	$s0,0x2
    # Line 1021
    sw	$t8,5048($a0)
    # Line 1029
    addu	$s0,$a0,$s0
    # Line 1020
    addiu	$t9,$t9,-15456
    sw	$t9,5044($a0)
    # Line 1029
    lbu	$at,-25164($s0)
    # Line 1056
    addiu	$a5,$a0,7456
    # Line 1032
    lwc1	$f1,_lit_7f7fffff
    addiu	$a6,$a0,7464
    # Line 1029
    beqz	$at,.L0d974b2c
    # Line 1052
    la	$a1,__glOdylc_Vertex2dBbox
    # Line 1029
    lw	$v0,-25148($s0)
    blez	$v0,.L0d974b2c
    # Line 1038
    mtc1	$zero,$f2
    # Line 1035
    lwc1	$f0,_lit_ff7fffff
    # Line 1032
    lui	$t9,0x1
    addu	$t9,$a0,$t9
    # Line 1035
    swc1	$f0,27068($t9)
    # Line 1036
    swc1	$f0,27076($t9)
    # Line 1037
    swc1	$f0,27084($t9)
    # Line 1038
    swc1	$f2,27088($t9)
    # Line 1039
    swc1	$f2,27092($t9)
    # Line 1040
    swc1	$f2,27096($t9)
    # Line 1050
    swc1	$f0,27024($t9)
    # Line 1051
    swc1	$f0,27032($t9)
    # Line 1052
    swc1	$f0,27040($t9)
    # Line 1032
    swc1	$f1,27064($t9)
    # Line 1033
    swc1	$f1,27072($t9)
    # Line 1034
    swc1	$f1,27080($t9)
    # Line 1042
    li	$a2,1
    sb	$a2,27100($t9)
    # Line 1043
    sw	$zero,27104($t9)
    # Line 1047
    swc1	$f1,27020($t9)
    # Line 1048
    swc1	$f1,27028($t9)
    # Line 1049
    swc1	$f1,27036($t9)
    li	$t1,0x10
    # Line 1052
    lw	$v1,7456($a0)
    addiu	$t3,$a0,7460
    # Line 1056
    li	$a3,24
    la	$a4,__glOdylc_vertexBboxDispatchTable
    addiu	$t2,$a0,7468
    move	$a2,$zero
    # Line 1052
    beq	$v1,$a1,.L0d974adc
    addiu	$t0,$a4,12
    addiu	$t8,$a4,4
    addiu	$a7,$a4,8
    nop
.L0d974a90:
    # Line 1056
    addu	$a0,$a2,$a4
    addu	$a1,$a2,$a5
    lw	$a0,0($a0)
    addu	$v1,$a2,$t8
    sw	$a0,0($a1)
    addu	$a0,$a2,$t3
    lw	$v1,0($v1)
    addu	$v0,$a2,$a7
    sw	$v1,0($a0)
    addu	$v1,$a2,$a6
    lw	$v0,0($v0)
    addiu	$a3,$a3,-4
    addu	$at,$a2,$t0
    sw	$v0,0($v1)
    addu	$v0,$a2,$t2
    lw	$at,0($at)
    addu	$a2,$a2,$t1
    bgtz	$a3,.L0d974a90
    sw	$at,0($v0)
.L0d974adc:
    # Line 1066
    lw	$a0,4136($zero)
.L0d974ae0:
    slti	$a3,$a0,1
    bnez	$a3,.L0d974bec
    nop
.L0d974aec:
    beqz	$a3,.L0d974bc4
    # Line 1091
    ld	$gp,8($sp)
    # Line 1066
    move	$a2,$zero
.L0d974af8:
    addiu	$a4,$a2,4
    sw	$a4,4144($zero)
    sw	$a0,4136($zero)
    sw	$zero,4148($zero)
    # Line 1074
    sb	$zero,27116($t9)
    # Line 1073
    li	$a3,1
    sw	$a3,27112($t9)
    # Line 1069
    sb	$zero,27108($t9)
    # Line 1074
    lbu	$a1,-25116($s0)
    beqz	$a1,.L0d974bd0
    ld	$s0,0($sp)
    # Line 1091
    jr	$ra
    addiu	$sp,$sp,32
.L0d974b2c:
    # Line 1063
    la	$t8,__glOdylc_vertexDispatchTable
    # Line 1059
    lui	$t9,0x1
    la	$a6,__glOdylc_Vertex2dBbox
    addu	$t9,$a0,$t9
    li	$t0,0x10
    sb	$zero,27100($t9)
    # Line 1063
    li	$a2,24
    move	$a3,$zero
    # Line 1059
    lw	$a5,7456($a0)
    addiu	$t1,$a0,7464
    # Line 1063
    addiu	$a4,$a0,7456
    addiu	$a7,$a0,7468
    addiu	$t2,$t8,8
    # Line 1059
    bne	$a5,$a6,.L0d974bbc
    addiu	$t3,$t8,12
    addiu	$a6,$a0,7460
    addiu	$a5,$t8,4
.L0d974b70:
    # Line 1063
    addu	$a0,$a3,$t8
    addu	$a1,$a3,$a4
    lw	$a0,0($a0)
    addu	$v1,$a3,$a5
    sw	$a0,0($a1)
    addu	$a0,$a3,$a6
    lw	$v1,0($v1)
    addu	$v0,$a3,$t2
    sw	$v1,0($a0)
    addu	$v1,$a3,$t1
    lw	$v0,0($v0)
    addiu	$a2,$a2,-4
    addu	$at,$a3,$t3
    sw	$v0,0($v1)
    addu	$v0,$a3,$a7
    lw	$at,0($at)
    addu	$a3,$a3,$t0
    bgtz	$a2,.L0d974b70
    sw	$at,0($v0)
.L0d974bbc:
    b	.L0d974ae0
    # Line 1066
    lw	$a0,4136($zero)
.L0d974bc4:
    addiu	$a0,$a0,-1
    b	.L0d974af8
    lw	$a2,4144($zero)
.L0d974bd0:
    # Line 1091
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 1077
    lui	$a1,0xff67
    ori	$a1,$a1,0x6980
    # Line 1091
    jr	$ra
    # Line 1077
    sw	$a1,27112($t9)
.L0d974bec:
    sd	$t9,16($sp)
    # Line 1066
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    li	$a0,1
    ld	$ra,24($sp)
    move	$a0,$v0
    ld	$t9,16($sp)
    b	.L0d974aec
    slti	$a3,$v0,1
.end __glOdysseyDlistInitState

# Function: callSetError
# Declared: Line 1098 (Source lines: 1099-1104)
# Address: 0x0d974c20 - 0x0d974c64 (Size: 68 bytes, Frame: 32)
.ent callSetError
callSetError:
    # Line 1099
    lui	$at,0x18
    addiu	$sp,$sp,-32
    addiu	$at,$at,14704
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1103
    # lw $t9, -26792($gp) # &__glSetError
    # Line 1099
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1103
    jal	__glSetError
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1104
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end callSetError

# Function: __glOdylc_Error
# Declared: Line 1108 (Source lines: 1109-1124)
# Address: 0x0d974c70 - 0x0d974ddc (Size: 364 bytes, Frame: 48)
.globl __glOdylc_Error
.ent __glOdylc_Error
__glOdylc_Error:
    # Line 1113
    lw	$a3,4144($zero)
    # Line 1111
    lw	$a5,4112($zero)
    # Line 1109
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1113
    lw	$a4,4148($zero)
    sd	$s0,8($sp)
    # Line 1109
    lui	$at,0x18
    sd	$ra,40($sp)
    addiu	$at,$at,14624
    sd	$gp,24($sp)
    # Line 1113
    beqz	$a4,.L0d974ce4
    # Line 1109
    addu	$gp,$t9,$at
    # Line 1113
    sll	$a6,$a4,0x1e
    subu	$a6,$a6,$a4
    sll	$a6,$a6,0x2
    addu	$a6,$a3,$a6
    sw	$a4,-4($a6)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a3,$a1
    lw	$a0,5048($a5)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    lw	$a4,4136($zero)
    b	.L0d974cfc
    sd	$s1,32($sp)
.L0d974ce4:
    addiu	$a5,$a3,-4
    sw	$a5,4144($zero)
    lw	$a4,4136($zero)
    sd	$s1,32($sp)
    addiu	$a4,$a4,1
    sw	$a4,4136($zero)
.L0d974cfc:
    # Line 1115
    slti	$s1,$a4,1
    bnez	$s1,.L0d974dc4
    sd	$a4,16($sp)
.L0d974d08:
    beqz	$s1,.L0d974da0
    move	$s0,$zero
.L0d974d10:
    # Line 1116
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    la	$a0,sub_0d970000
    move	$a1,$s0
    jal	__glsplc_AddIlist
    addiu	$a0,$a0,19488
    # Line 1118
    addiu	$a1,$s0,4
    sw	$a1,4144($zero)
    ld	$a4,16($sp)
    # Line 1120
    beqz	$s1,.L0d974d48
    # Line 1118
    sw	$a4,4136($zero)
    # Line 1120
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    move	$a4,$v0
.L0d974d48:
    blez	$a4,.L0d974db8
    ld	$s1,32($sp)
    addiu	$a4,$a4,-1
    lw	$a1,4144($zero)
.L0d974d58:
    addiu	$a2,$a1,4
    sw	$a2,4144($zero)
    sw	$a4,4136($zero)
    beqz	$s0,.L0d974d88
    sw	$zero,4148($zero)
    # Line 1124
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    # Line 1123
    ld	$a3,0($sp)
    sw	$a3,0($s0)
    # Line 1124
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d974d88:
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d974da0:
    # Line 1115
    ld	$s1,16($sp)
    lw	$s0,4144($zero)
    addiu	$s1,$s1,-1
    sd	$s1,16($sp)
    b	.L0d974d10
    slti	$s1,$s1,1
.L0d974db8:
    # Line 1120
    move	$a1,$zero
    b	.L0d974d58
    nop
.L0d974dc4:
    # Line 1115
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    sd	$v0,16($sp)
    b	.L0d974d08
    slti	$s1,$v0,1
.end __glOdylc_Error

# Function: __glSPDlalloc
# Declared: Line 1138 (Source lines: 1139-1164)
# Address: 0x0d974de0 - 0x0d974fcc (Size: 492 bytes, Frame: 192)
.globl __glSPDlalloc
.ent __glSPDlalloc
__glSPDlalloc:
    # Line 1145
    lw	$v0,4144($zero)
    # Line 1139
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 1141
    lw	$s1,4112($zero)
    # Line 1139
    sd	$s0,32($sp)
    # Line 1145
    lw	$a4,4148($zero)
    # Line 1139
    move	$s0,$a0
    sd	$s2,24($sp)
    lui	$at,0x18
    move	$s2,$a1
    sd	$ra,48($sp)
    addiu	$at,$at,14256
    sd	$gp,40($sp)
    # Line 1145
    beqz	$a4,.L0d974e5c
    # Line 1139
    addu	$gp,$t9,$at
    # Line 1145
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$v0,$a3
    sw	$a4,-4($a3)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$v0,$a1
    lw	$a0,5048($s1)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    b	.L0d974e70
    lw	$a0,4136($zero)
.L0d974e5c:
    addiu	$a1,$v0,-4
    lw	$a0,4136($zero)
    sw	$a1,4144($zero)
    addiu	$a0,$a0,1
    sw	$a0,4136($zero)
.L0d974e70:
    # Line 1147
    sra	$a1,$s0,0x2
    sd	$a1,8($sp)
    slt	$a1,$a0,$a1
    bnez	$a1,.L0d974f6c
    sd	$a0,0($sp)
.L0d974e84:
    beqz	$a1,.L0d974f98
    ld	$a4,8($sp)
    move	$s0,$zero
.L0d974e90:
    # Line 1148
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    lw	$a0,5044($s1)
    sll	$a1,$s2,0x2
    addu	$a0,$a0,$a1
    move	$a1,$s0
    jal	__glsplc_AddIlist
    lw	$a0,0($a0)
    # Line 1150
    ld	$a3,8($sp)
    ld	$a2,0($sp)
    sw	$a2,4136($zero)
    # Line 1152
    move	$a0,$a2
    # Line 1150
    sll	$a3,$a3,0x2
    addu	$a3,$s0,$a3
    # Line 1152
    blez	$a2,.L0d974fb8
    # Line 1150
    sw	$a3,4144($zero)
.L0d974ecc:
    # Line 1152
    li	$a2,22
    blez	$a0,.L0d974fac
    # Line 1164
    ld	$gp,40($sp)
    # Line 1152
    addiu	$a0,$a0,-1
    lw	$v0,4144($zero)
.L0d974ee0:
    addiu	$a3,$v0,4
    sw	$a3,4144($zero)
    sw	$a0,4136($zero)
    lui	$a1,0x1
    sw	$zero,4148($zero)
    beq	$s2,$a2,.L0d974f2c
    addu	$a1,$s1,$a1
    # Line 1158
    sb	$zero,27108($a1)
    ld	$ra,48($sp)
    # Line 1164
    move	$v0,$s0
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d974f1c:
    move	$v0,$s0
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d974f2c:
    ld	$ra,48($sp)
    # Line 1160
    lw	$a4,27112($a1)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    li	$a5,1
    addiu	$a4,$a4,1
    # Line 1164
    ld	$gp,40($sp)
    move	$v0,$s0
    # Line 1160
    beq	$a4,$a5,.L0d974f1c
    sw	$a4,27112($a1)
    # Line 1161
    sb	$zero,27108($a1)
    move	$ra,$ra
    # Line 1164
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d974f6c:
    # Line 1147
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    ld	$a6,8($sp)
    li	$a0,1
    slti	$a5,$a6,1024
    xori	$a5,$a5,0x1
    jal	__glSPDlistSpace
    movn	$a0,$a6,$a5
    ld	$a1,8($sp)
    sd	$v0,0($sp)
    b	.L0d974e84
    slt	$a1,$v0,$a1
.L0d974f98:
    ld	$a3,0($sp)
    lw	$s0,4144($zero)
    subu	$a3,$a3,$a4
    b	.L0d974e90
    sd	$a3,0($sp)
.L0d974fac:
    # Line 1152
    move	$v0,$zero
    b	.L0d974ee0
    nop
.L0d974fb8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    b	.L0d974ecc
    move	$a0,$v0
.end __glSPDlalloc

# Function: __glSPDlalloc2
# Declared: Line 1171 (Source lines: 1172-1206)
# Address: 0x0d974fd0 - 0x0d9751e8 (Size: 536 bytes, Frame: 208)
.globl __glSPDlalloc2
.ent __glSPDlalloc2
__glSPDlalloc2:
    # Line 1179
    lw	$a4,4144($zero)
    # Line 1172
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$s1,32($sp)
    # Line 1175
    lw	$s1,4112($zero)
    # Line 1179
    lw	$a5,4148($zero)
    # Line 1172
    move	$v0,$a0
    sd	$s2,24($sp)
    lui	$at,0x18
    move	$s2,$a1
    sd	$ra,56($sp)
    addiu	$at,$at,13760
    sd	$gp,48($sp)
    # Line 1179
    beqz	$a5,.L0d975058
    # Line 1172
    addu	$gp,$t9,$at
    # Line 1179
    sll	$a3,$a5,0x1e
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a4,$a3
    sw	$a5,-4($a3)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    sd	$a0,64($sp)
    addu	$a1,$a4,$a1
    lw	$a0,5048($s1)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    ld	$v0,64($sp)
    lw	$a0,4136($zero)
    b	.L0d97506c
    lw	$a5,4144($zero)
.L0d975058:
    lw	$a0,4136($zero)
    addiu	$a5,$a4,-4
    sw	$a5,4144($zero)
    addiu	$a0,$a0,1
    sw	$a0,4136($zero)
.L0d97506c:
    # Line 1181
    sra	$t8,$a5,0x2
    # Line 1183
    sra	$s0,$v0,0x2
    # Line 1181
    andi	$t8,$t8,0x1
    # Line 1183
    sd	$s0,8($sp)
    addu	$s0,$s0,$t8
    slt	$a4,$a0,$s0
    move	$a1,$a0
    beqz	$a4,.L0d9750b0
    # Line 1181
    sd	$t8,0($sp)
    # Line 1183
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    li	$a0,1
    slti	$ra,$s0,1024
    movz	$a0,$s0,$ra
    jal	__glSPDlistSpace
    nop
    move	$a1,$v0
    slt	$a4,$v0,$s0
.L0d9750b0:
    beqz	$a4,.L0d97519c
    sd	$s0,72($sp)
    move	$s0,$zero
    sd	$a1,16($sp)
.L0d9750c0:
    # Line 1190
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    lw	$a0,5044($s1)
    sll	$a1,$s2,0x2
    addu	$a0,$a0,$a1
    move	$a1,$s0
    jal	__glsplc_AddIlist
    lw	$a0,0($a0)
    # Line 1192
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    sw	$a2,4136($zero)
    # Line 1194
    move	$a0,$a2
    # Line 1192
    sll	$a3,$a3,0x2
    addu	$a3,$s0,$a3
    # Line 1194
    blez	$a2,.L0d9751d4
    # Line 1192
    sw	$a3,4144($zero)
.L0d9750fc:
    # Line 1194
    blez	$a0,.L0d9751c8
    li	$a2,22
    addiu	$a0,$a0,-1
    lw	$v0,4144($zero)
    lui	$a1,0x1
.L0d975110:
    addiu	$a3,$v0,4
    sw	$a3,4144($zero)
    sw	$a0,4136($zero)
    sw	$zero,4148($zero)
    beq	$s2,$a2,.L0d975160
    addu	$a1,$s1,$a1
    # Line 1200
    sb	$zero,27108($a1)
    # Line 1206
    ld	$gp,48($sp)
    ld	$ra,56($sp)
    move	$v0,$s0
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d97514c:
    ld	$gp,48($sp)
    move	$v0,$s0
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d975160:
    # Line 1202
    lw	$a4,27112($a1)
    ld	$s2,24($sp)
    ld	$ra,56($sp)
    li	$a5,1
    addiu	$a4,$a4,1
    ld	$s1,32($sp)
    # Line 1206
    move	$v0,$s0
    # Line 1202
    beq	$a4,$a5,.L0d97514c
    sw	$a4,27112($a1)
    # Line 1203
    sb	$zero,27108($a1)
    move	$ra,$ra
    # Line 1206
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d97519c:
    # Line 1183
    ld	$a6,72($sp)
    ld	$a5,0($sp)
    lw	$a4,4144($zero)
    subu	$a1,$a1,$a6
    sd	$a1,16($sp)
    beqz	$a5,.L0d9750c0
    move	$s0,$a4
    andi	$a7,$a4,0x4
    # Line 1188
    addiu	$t0,$a4,4
    b	.L0d9750c0
    movn	$s0,$t0,$a7
.L0d9751c8:
    # Line 1194
    move	$v0,$zero
    b	.L0d975110
    lui	$a1,0x1
.L0d9751d4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    b	.L0d9750fc
    move	$a0,$v0
.end __glSPDlalloc2

# Function: RemoveIlists
# Declared: Line 1215 (Source lines: 1215-1226)
# Address: 0x0d9751f0 - 0x0d975254 (Size: 100 bytes, Frame: 32)
.ent RemoveIlists
RemoveIlists:
    # Line 1215
    addiu	$sp,$sp,-32
    # Line 1218
    lw	$a5,4112($zero)
    sd	$a5,8($sp)
    # Line 1220
    lw	$a5,5084($a5)
    slt	$at,$a0,$a5
    bnez	$at,.L0d975214
    # Line 1215
    move	$a4,$a0
    # Line 1226
    jr	$ra
    addiu	$sp,$sp,32
.L0d975214:
    # Line 1223
    ld	$a1,8($sp)
    lw	$t9,8($a1)
    sd	$ra,16($sp)
    subu	$a2,$a5,$a4
    sd	$a2,0($sp)
    sll	$a2,$a2,0x3
    move	$a0,$a1
    jalr	$t9
    lw	$a1,5080($a1)
    # Line 1225
    ld	$a2,8($sp)
    ld	$ra,16($sp)
    ld	$a3,0($sp)
    sw	$a3,5084($a2)
    # Line 1226
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1224
    sw	$v0,5080($a2)
.end RemoveIlists

# Function: __glsplc_Begin
# Declared: Line 1232 (Source lines: 1233-1322)
# Address: 0x0d975260 - 0x0d9754f4 (Size: 660 bytes, Frame: 48)
.globl __glsplc_Begin
.ent __glsplc_Begin
__glsplc_Begin:
    # Line 1234
    lw	$v0,4112($zero)
    # Line 1233
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 1248
    lui	$s0,0x1
    sd	$ra,40($sp)
    addu	$s0,$v0,$s0
    lbu	$at,27108($s0)
    # Line 1233
    lui	$v1,0x18
    sd	$a0,8($sp)
    sd	$gp,24($sp)
    addiu	$v1,$v1,13104
    addu	$gp,$t9,$v1
    # Line 1248
    beqz	$at,.L0d975334
    ld	$t2,8($sp)
    lw	$t8,27112($s0)
    li	$a4,1
    bne	$t8,$a4,.L0d975338
    # Line 1297
    nop	# was lw $t9, -32012($gp) # &__glSPDlalloc
    # Line 1248
    lw	$a3,4148($zero)
    bnez	$a3,.L0d975338
    # Line 1297
    nop	# was lw $t9, -32012($gp) # &__glSPDlalloc
    # Line 1248
    lw	$a4,5084($v0)
    lw	$a5,5080($v0)
    sltiu	$t9,$a4,3
    sll	$a6,$a4,0x3
    bnez	$t9,.L0d975334
    addu	$a5,$a5,$a6
    lw	$at,5048($v0)
    lw	$ra,-16($a5)
    lw	$t0,5044($v0)
    bne	$ra,$at,.L0d975334
    lw	$a7,-8($a5)
    lw	$t0,88($t0)
    bne	$a7,$t0,.L0d975334
    li	$v0,2
    lbu	$t1,27116($s0)
    bnez	$t1,.L0d975338
    # Line 1297
    nop	# was lw $t9, -32012($gp) # &__glSPDlalloc
    # Line 1248
    beq	$v0,$t2,.L0d975338
    # Line 1297
    nop	# was lw $t9, -32012($gp) # &__glSPDlalloc
    # Line 1259
    lw	$t3,-12($a5)
    lw	$a4,0($t3)
    sll	$t8,$a4,0x2
    lw	$a6,4144($zero)
    addu	$t3,$t3,$t8
    addiu	$t3,$t3,8
    beq	$a6,$t3,.L0d9753d0
    # Line 1269
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,20976
    bal __glSPDlalloc2
    li	$a0,1
    b	.L0d9753fc
    nop
.L0d975334:
    # Line 1297
    # lw $t9, -32012($gp) # &__glSPDlalloc
.L0d975338:
    li	$a1,3
    bal __glSPDlalloc
    li	$a0,4
    # Line 1306
    li	$a0,1
    # Line 1297
    beqz	$v0,.L0d9753b8
    ld	$ra,40($sp)
    # Line 1299
    ld	$v1,8($sp)
    sw	$v1,0($v0)
    lw	$at,27112($s0)
    blez	$at,.L0d9753c8
    nop
    # Line 1307
    sw	$zero,27112($s0)
    # Line 1306
    sb	$a0,27108($s0)
.L0d97536c:
    # Line 1307
    li	$v0,2
.L0d975370:
    # Line 1311
    lbu	$a2,27100($s0)
    ld	$a1,8($sp)
    # Line 1318
    lwc1	$f1,_lit_ff7fffff
    # Line 1315
    lwc1	$f0,_lit_7f7fffff
    # Line 1311
    xor	$a1,$v0,$a1
    sltiu	$a1,$a1,1
    beqz	$a2,.L0d9753b8
    sb	$a1,27116($s0)
    # Line 1322
    ld	$gp,24($sp)
    # Line 1320
    swc1	$f1,27040($s0)
    # Line 1319
    swc1	$f1,27032($s0)
    # Line 1318
    swc1	$f1,27024($s0)
    # Line 1317
    swc1	$f0,27036($s0)
    # Line 1316
    swc1	$f0,27028($s0)
    # Line 1315
    swc1	$f0,27020($s0)
    # Line 1322
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9753b8:
    ld	$s0,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9753c8:
    # Line 1303
    b	.L0d97536c
    sb	$zero,27108($s0)
.L0d9753d0:
    # Line 1283
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1274
    addu	$a3,$a3,$a4
    sw	$a3,4148($zero)
    # Line 1279
    lw	$a2,4136($zero)
    # Line 1283
    addiu	$t9,$t9,20976
    move	$a0,$v0
    # Line 1278
    addiu	$ra,$a6,-4
    sw	$ra,4144($zero)
    # Line 1279
    addiu	$a2,$a2,1
    # Line 1283
    bal __glSPDlalloc2
    # Line 1279
    sw	$a2,4136($zero)
.L0d9753fc:
    # Line 1286
    lw	$at,4148($zero)
    lw	$a3,4136($zero)
    beqz	$at,.L0d9754a8
    lw	$a5,4144($zero)
    slti	$v0,$a3,3
    beqz	$v0,.L0d9754a0
    nop
    sd	$zero,0($sp)
    sd	$a5,32($sp)
.L0d975420:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a4,0($sp)
    ld	$a5,32($sp)
    beqz	$v0,.L0d9754cc
    move	$a3,$v0
    lw	$a5,4144($zero)
    li	$a0,1
    andi	$v1,$a5,0x4
    movn	$a4,$a0,$v1
.L0d97544c:
    ld	$ra,40($sp)
.L0d975450:
    sll	$a2,$a4,0x2
    # Line 1290
    ld	$a7,8($sp)
    # Line 1288
    lui	$t0,0x1
    # Line 1286
    addu	$a2,$a5,$a2
    # Line 1288
    ori	$t1,$t0,0x4001
    sw	$t1,0($a2)
    # Line 1289
    ori	$t0,$t0,0x4400
    sw	$t0,4($a2)
    # Line 1290
    sw	$a7,8($a2)
    # Line 1292
    addiu	$a2,$a2,12
    sw	$a2,4144($zero)
    # Line 1286
    subu	$a6,$a3,$a4
    # Line 1292
    lw	$a1,4148($zero)
    # Line 1286
    addiu	$a6,$a6,-3
    # Line 1292
    sw	$a6,4136($zero)
    addiu	$a1,$a1,3
    sw	$a1,4148($zero)
    li	$v0,2
    # Line 1294
    b	.L0d975370
    sw	$zero,27112($s0)
.L0d9754a0:
    b	.L0d97544c
    # Line 1286
    move	$a4,$zero
.L0d9754a8:
    andi	$a4,$a5,0x4
    sltu	$a4,$zero,$a4
    addiu	$a6,$a4,3
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d975450
    ld	$ra,40($sp)
    sd	$a5,32($sp)
    b	.L0d975420
    sd	$a4,0($sp)
.L0d9754cc:
    addiu	$a7,$a5,-4
    sw	$a7,4144($zero)
    # Line 1322
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    # Line 1286
    lw	$a6,4136($zero)
    # Line 1322
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    # Line 1286
    addiu	$a5,$a6,1
    # Line 1322
    jr	$ra
    # Line 1286
    sw	$a5,4136($zero)
.end __glsplc_Begin

# Function: __glOdysplc_End
# Declared: Line 1324 (Source lines: 1325-1360)
# Address: 0x0d975500 - 0x0d97561c (Size: 284 bytes, Frame: 16)
.globl __glOdysplc_End
.ent __glOdysplc_End
__glOdysplc_End:
    # Line 1326
    lw	$a1,4112($zero)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lbu	$at,27100($a1)
    # Line 1325
    addiu	$sp,$sp,-16
    lui	$v0,0x18
    sd	$ra,8($sp)
    addiu	$v0,$v0,12432
    sd	$gp,0($sp)
    # Line 1326
    beqz	$at,.L0d975600
    # Line 1325
    addu	$gp,$t9,$v0
    # Line 1326
    lwc1	$f0,27064($a1)
    lwc1	$f6,27020($a1)
    c.lt.s	$f6,$f0
    bc1f	.L0d975544
    nop
    # Line 1333
    swc1	$f6,27064($a1)
.L0d975544:
    lwc1	$f9,27024($a1)
    lwc1	$f1,27068($a1)
    c.lt.s $f1,$f9
    bc1f .L0d97555c
    nop
    # Line 1335
    swc1	$f9,27068($a1)
.L0d97555c:
    lwc1	$f2,27072($a1)
    lwc1	$f5,27028($a1)
    c.lt.s $f5,$f2
    bc1f .L0d975574
    nop
    # Line 1338
    swc1	$f5,27072($a1)
.L0d975574:
    lwc1	$f10,27032($a1)
    lwc1	$f3,27076($a1)
    c.lt.s $f3,$f10
    bc1f .L0d97558c
    nop
    # Line 1340
    swc1	$f10,27076($a1)
.L0d97558c:
    lwc1	$f4,27080($a1)
    lwc1	$f7,27036($a1)
    c.lt.s $f7,$f4
    bc1f .L0d9755a4
    nop
    # Line 1343
    swc1	$f7,27080($a1)
.L0d9755a4:
    lwc1	$f8,27040($a1)
    lwc1	$f11,27084($a1)
    c.lt.s $f11,$f8
    bc1f .L0d9755bc
    # Line 1348
    sub.s	$f4,$f9,$f6
    # Line 1345
    swc1	$f8,27084($a1)
.L0d9755bc:
    # Line 1348
    lwc1	$f12,27088($a1)
    c.lt.s $f12,$f4
    bc1f .L0d9755d0
    nop
    # Line 1350
    swc1	$f4,27088($a1)
.L0d9755d0:
    # Line 1351
    lwc1	$f13,27092($a1)
    sub.s	$f4,$f10,$f5
    c.lt.s $f13,$f4
    bc1f .L0d9755e8
    nop
    # Line 1353
    swc1	$f4,27092($a1)
.L0d9755e8:
    # Line 1354
    lwc1	$f14,27096($a1)
    sub.s	$f4,$f8,$f7
    c.lt.s	$f14,$f4
    bc1f	.L0d975604
    # Line 1359
    nop	# was lw $t9, -21548($gp) # &__glsplc_End
    # Line 1356
    swc1	$f4,27096($a1)
.L0d975600:
    # Line 1359
    # lw $t9, -21548($gp) # &__glsplc_End
.L0d975604:
    jal	__glsplc_End
    nop
    ld	$ra,8($sp)
    # Line 1360
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_End

# Function: __glOdysplc_CallList
# Declared: Line 1370 (Source lines: 1371-1374)
# Address: 0x0d975620 - 0x0d975664 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_CallList
.ent __glOdysplc_CallList
__glOdysplc_CallList:
    # Line 1371
    lui	$v1,0x18
    # Line 1372
    lw	$v0,4112($zero)
    # Line 1371
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,12144
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1372
    lui	$at,0x1
    # Line 1373
    # lw $t9, -28956($gp) # &__glsplc_CallList
    # Line 1372
    ori	$at,$at,0x69dc
    # Line 1371
    sd	$ra,0($sp)
    # Line 1372
    addu	$at,$at,$v0
    # Line 1373
    jal	__glsplc_CallList
    # Line 1372
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1374
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_CallList

# Function: __glOdysplc_CallLists
# Declared: Line 1376 (Source lines: 1377-1380)
# Address: 0x0d975670 - 0x0d9756b4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_CallLists
.ent __glOdysplc_CallLists
__glOdysplc_CallLists:
    # Line 1377
    lui	$v1,0x18
    # Line 1378
    lw	$v0,4112($zero)
    # Line 1377
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,12064
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1378
    lui	$at,0x1
    # Line 1379
    # lw $t9, -28952($gp) # &__glsplc_CallLists
    # Line 1378
    ori	$at,$at,0x69dc
    # Line 1377
    sd	$ra,0($sp)
    # Line 1378
    addu	$at,$at,$v0
    # Line 1379
    jal	__glsplc_CallLists
    # Line 1378
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1380
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_CallLists

# Function: __glOdysplc_PopAttrib
# Declared: Line 1383 (Source lines: 1384-1387)
# Address: 0x0d9756c0 - 0x0d975704 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_PopAttrib
.ent __glOdysplc_PopAttrib
__glOdysplc_PopAttrib:
    # Line 1384
    lui	$v1,0x18
    # Line 1385
    lw	$v0,4112($zero)
    # Line 1384
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11984
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1385
    lui	$at,0x1
    # Line 1386
    # lw $t9, -21184($gp) # &__glsplc_PopAttrib
    # Line 1385
    ori	$at,$at,0x69dc
    # Line 1384
    sd	$ra,0($sp)
    # Line 1385
    addu	$at,$at,$v0
    # Line 1386
    jal	__glsplc_PopAttrib
    # Line 1385
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1387
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_PopAttrib

# Function: __glOdysplc_EvalCoord1d
# Declared: Line 1389 (Source lines: 1390-1393)
# Address: 0x0d975710 - 0x0d975754 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord1d
.ent __glOdysplc_EvalCoord1d
__glOdysplc_EvalCoord1d:
    # Line 1390
    lui	$v1,0x18
    # Line 1391
    lw	$v0,4112($zero)
    # Line 1390
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11904
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1391
    lui	$at,0x1
    # Line 1392
    # lw $t9, -21160($gp) # &__glsplc_EvalCoord1d
    # Line 1391
    ori	$at,$at,0x69dc
    # Line 1390
    sd	$ra,0($sp)
    # Line 1391
    addu	$at,$at,$v0
    # Line 1392
    jal	__glsplc_EvalCoord1d
    # Line 1391
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1393
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord1d

# Function: __glOdysplc_EvalCoord1dv
# Declared: Line 1395 (Source lines: 1396-1399)
# Address: 0x0d975760 - 0x0d9757a4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord1dv
.ent __glOdysplc_EvalCoord1dv
__glOdysplc_EvalCoord1dv:
    # Line 1396
    lui	$v1,0x18
    # Line 1397
    lw	$v0,4112($zero)
    # Line 1396
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11824
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1397
    lui	$at,0x1
    # Line 1398
    # lw $t9, -21156($gp) # &__glsplc_EvalCoord1dv
    # Line 1397
    ori	$at,$at,0x69dc
    # Line 1396
    sd	$ra,0($sp)
    # Line 1397
    addu	$at,$at,$v0
    # Line 1398
    jal	__glsplc_EvalCoord1dv
    # Line 1397
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1399
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord1dv

# Function: __glOdysplc_EvalCoord1f
# Declared: Line 1401 (Source lines: 1402-1405)
# Address: 0x0d9757b0 - 0x0d9757f4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord1f
.ent __glOdysplc_EvalCoord1f
__glOdysplc_EvalCoord1f:
    # Line 1402
    lui	$v1,0x18
    # Line 1403
    lw	$v0,4112($zero)
    # Line 1402
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11744
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1403
    lui	$at,0x1
    # Line 1404
    # lw $t9, -21152($gp) # &__glsplc_EvalCoord1f
    # Line 1403
    ori	$at,$at,0x69dc
    # Line 1402
    sd	$ra,0($sp)
    # Line 1403
    addu	$at,$at,$v0
    # Line 1404
    jal	__glsplc_EvalCoord1f
    # Line 1403
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1405
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord1f

# Function: __glOdysplc_EvalCoord1fv
# Declared: Line 1407 (Source lines: 1408-1411)
# Address: 0x0d975800 - 0x0d975844 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord1fv
.ent __glOdysplc_EvalCoord1fv
__glOdysplc_EvalCoord1fv:
    # Line 1408
    lui	$v1,0x18
    # Line 1409
    lw	$v0,4112($zero)
    # Line 1408
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11664
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1409
    lui	$at,0x1
    # Line 1410
    # lw $t9, -21148($gp) # &__glsplc_EvalCoord1fv
    # Line 1409
    ori	$at,$at,0x69dc
    # Line 1408
    sd	$ra,0($sp)
    # Line 1409
    addu	$at,$at,$v0
    # Line 1410
    jal	__glsplc_EvalCoord1fv
    # Line 1409
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1411
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord1fv

# Function: __glOdysplc_EvalCoord2d
# Declared: Line 1413 (Source lines: 1414-1417)
# Address: 0x0d975850 - 0x0d975894 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord2d
.ent __glOdysplc_EvalCoord2d
__glOdysplc_EvalCoord2d:
    # Line 1414
    lui	$v1,0x18
    # Line 1415
    lw	$v0,4112($zero)
    # Line 1414
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11584
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1415
    lui	$at,0x1
    # Line 1416
    # lw $t9, -21144($gp) # &__glsplc_EvalCoord2d
    # Line 1415
    ori	$at,$at,0x69dc
    # Line 1414
    sd	$ra,0($sp)
    # Line 1415
    addu	$at,$at,$v0
    # Line 1416
    jal	__glsplc_EvalCoord2d
    # Line 1415
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1417
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord2d

# Function: __glOdysplc_EvalCoord2dv
# Declared: Line 1419 (Source lines: 1420-1423)
# Address: 0x0d9758a0 - 0x0d9758e4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord2dv
.ent __glOdysplc_EvalCoord2dv
__glOdysplc_EvalCoord2dv:
    # Line 1420
    lui	$v1,0x18
    # Line 1421
    lw	$v0,4112($zero)
    # Line 1420
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11504
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1421
    lui	$at,0x1
    # Line 1422
    # lw $t9, -21140($gp) # &__glsplc_EvalCoord2dv
    # Line 1421
    ori	$at,$at,0x69dc
    # Line 1420
    sd	$ra,0($sp)
    # Line 1421
    addu	$at,$at,$v0
    # Line 1422
    jal	__glsplc_EvalCoord2dv
    # Line 1421
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1423
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord2dv

# Function: __glOdysplc_EvalCoord2f
# Declared: Line 1425 (Source lines: 1426-1429)
# Address: 0x0d9758f0 - 0x0d975934 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord2f
.ent __glOdysplc_EvalCoord2f
__glOdysplc_EvalCoord2f:
    # Line 1426
    lui	$v1,0x18
    # Line 1427
    lw	$v0,4112($zero)
    # Line 1426
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11424
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1427
    lui	$at,0x1
    # Line 1428
    # lw $t9, -21136($gp) # &__glsplc_EvalCoord2f
    # Line 1427
    ori	$at,$at,0x69dc
    # Line 1426
    sd	$ra,0($sp)
    # Line 1427
    addu	$at,$at,$v0
    # Line 1428
    jal	__glsplc_EvalCoord2f
    # Line 1427
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1429
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord2f

# Function: __glOdysplc_EvalCoord2fv
# Declared: Line 1431 (Source lines: 1432-1435)
# Address: 0x0d975940 - 0x0d975984 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalCoord2fv
.ent __glOdysplc_EvalCoord2fv
__glOdysplc_EvalCoord2fv:
    # Line 1432
    lui	$v1,0x18
    # Line 1433
    lw	$v0,4112($zero)
    # Line 1432
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11344
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1433
    lui	$at,0x1
    # Line 1434
    # lw $t9, -21132($gp) # &__glsplc_EvalCoord2fv
    # Line 1433
    ori	$at,$at,0x69dc
    # Line 1432
    sd	$ra,0($sp)
    # Line 1433
    addu	$at,$at,$v0
    # Line 1434
    jal	__glsplc_EvalCoord2fv
    # Line 1433
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1435
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalCoord2fv

# Function: __glOdysplc_EvalMesh1
# Declared: Line 1437 (Source lines: 1438-1441)
# Address: 0x0d975990 - 0x0d9759d4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalMesh1
.ent __glOdysplc_EvalMesh1
__glOdysplc_EvalMesh1:
    # Line 1438
    lui	$v1,0x18
    # Line 1439
    lw	$v0,4112($zero)
    # Line 1438
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11264
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1439
    lui	$at,0x1
    # Line 1440
    # lw $t9, -21128($gp) # &__glsplc_EvalMesh1
    # Line 1439
    ori	$at,$at,0x69dc
    # Line 1438
    sd	$ra,0($sp)
    # Line 1439
    addu	$at,$at,$v0
    # Line 1440
    jal	__glsplc_EvalMesh1
    # Line 1439
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1441
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalMesh1

# Function: __glOdysplc_EvalMesh2
# Declared: Line 1443 (Source lines: 1444-1447)
# Address: 0x0d9759e0 - 0x0d975a24 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalMesh2
.ent __glOdysplc_EvalMesh2
__glOdysplc_EvalMesh2:
    # Line 1444
    lui	$v1,0x18
    # Line 1445
    lw	$v0,4112($zero)
    # Line 1444
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11184
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1445
    lui	$at,0x1
    # Line 1446
    # lw $t9, -21120($gp) # &__glsplc_EvalMesh2
    # Line 1445
    ori	$at,$at,0x69dc
    # Line 1444
    sd	$ra,0($sp)
    # Line 1445
    addu	$at,$at,$v0
    # Line 1446
    jal	__glsplc_EvalMesh2
    # Line 1445
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1447
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalMesh2

# Function: __glOdysplc_EvalPoint1
# Declared: Line 1449 (Source lines: 1450-1453)
# Address: 0x0d975a30 - 0x0d975a74 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalPoint1
.ent __glOdysplc_EvalPoint1
__glOdysplc_EvalPoint1:
    # Line 1450
    lui	$v1,0x18
    # Line 1451
    lw	$v0,4112($zero)
    # Line 1450
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11104
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1451
    lui	$at,0x1
    # Line 1452
    # lw $t9, -21124($gp) # &__glsplc_EvalPoint1
    # Line 1451
    ori	$at,$at,0x69dc
    # Line 1450
    sd	$ra,0($sp)
    # Line 1451
    addu	$at,$at,$v0
    # Line 1452
    jal	__glsplc_EvalPoint1
    # Line 1451
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1453
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalPoint1

# Function: __glOdysplc_EvalPoint2
# Declared: Line 1455 (Source lines: 1456-1459)
# Address: 0x0d975a80 - 0x0d975ac4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_EvalPoint2
.ent __glOdysplc_EvalPoint2
__glOdysplc_EvalPoint2:
    # Line 1456
    lui	$v1,0x18
    # Line 1457
    lw	$v0,4112($zero)
    # Line 1456
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,11024
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1457
    lui	$at,0x1
    # Line 1458
    # lw $t9, -21116($gp) # &__glsplc_EvalPoint2
    # Line 1457
    ori	$at,$at,0x69dc
    # Line 1456
    sd	$ra,0($sp)
    # Line 1457
    addu	$at,$at,$v0
    # Line 1458
    jal	__glsplc_EvalPoint2
    # Line 1457
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1459
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_EvalPoint2

# Function: __glOdysplc_Frustum
# Declared: Line 1461 (Source lines: 1462-1465)
# Address: 0x0d975ad0 - 0x0d975b14 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Frustum
.ent __glOdysplc_Frustum
__glOdysplc_Frustum:
    # Line 1462
    lui	$v1,0x18
    # Line 1463
    lw	$v0,4112($zero)
    # Line 1462
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10944
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1463
    lui	$at,0x1
    # Line 1464
    # lw $t9, -21052($gp) # &__glsplc_Frustum
    # Line 1463
    ori	$at,$at,0x69dc
    # Line 1462
    sd	$ra,0($sp)
    # Line 1463
    addu	$at,$at,$v0
    # Line 1464
    jal	__glsplc_Frustum
    # Line 1463
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1465
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Frustum

# Function: __glOdysplc_Ortho
# Declared: Line 1467 (Source lines: 1468-1471)
# Address: 0x0d975b20 - 0x0d975b64 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Ortho
.ent __glOdysplc_Ortho
__glOdysplc_Ortho:
    # Line 1468
    lui	$v1,0x18
    # Line 1469
    lw	$v0,4112($zero)
    # Line 1468
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10864
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1469
    lui	$at,0x1
    # Line 1470
    # lw $t9, -21024($gp) # &__glsplc_Ortho
    # Line 1469
    ori	$at,$at,0x69dc
    # Line 1468
    sd	$ra,0($sp)
    # Line 1469
    addu	$at,$at,$v0
    # Line 1470
    jal	__glsplc_Ortho
    # Line 1469
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1471
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Ortho

# Function: __glOdysplc_LoadIdentity
# Declared: Line 1473 (Source lines: 1474-1477)
# Address: 0x0d975b70 - 0x0d975bb4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_LoadIdentity
.ent __glOdysplc_LoadIdentity
__glOdysplc_LoadIdentity:
    # Line 1474
    lui	$v1,0x18
    # Line 1475
    lw	$v0,4112($zero)
    # Line 1474
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10784
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1475
    lui	$at,0x1
    # Line 1476
    # lw $t9, -21048($gp) # &__glsplc_LoadIdentity
    # Line 1475
    ori	$at,$at,0x69dc
    # Line 1474
    sd	$ra,0($sp)
    # Line 1475
    addu	$at,$at,$v0
    # Line 1476
    jal	__glsplc_LoadIdentity
    # Line 1475
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1477
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_LoadIdentity

# Function: __glOdysplc_LoadMatrixf
# Declared: Line 1479 (Source lines: 1480-1483)
# Address: 0x0d975bc0 - 0x0d975c04 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_LoadMatrixf
.ent __glOdysplc_LoadMatrixf
__glOdysplc_LoadMatrixf:
    # Line 1480
    lui	$v1,0x18
    # Line 1481
    lw	$v0,4112($zero)
    # Line 1480
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10704
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1481
    lui	$at,0x1
    # Line 1482
    # lw $t9, -21044($gp) # &__glsplc_LoadMatrixf
    # Line 1481
    ori	$at,$at,0x69dc
    # Line 1480
    sd	$ra,0($sp)
    # Line 1481
    addu	$at,$at,$v0
    # Line 1482
    jal	__glsplc_LoadMatrixf
    # Line 1481
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1483
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_LoadMatrixf

# Function: __glOdysplc_LoadMatrixd
# Declared: Line 1485 (Source lines: 1486-1489)
# Address: 0x0d975c10 - 0x0d975c54 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_LoadMatrixd
.ent __glOdysplc_LoadMatrixd
__glOdysplc_LoadMatrixd:
    # Line 1486
    lui	$v1,0x18
    # Line 1487
    lw	$v0,4112($zero)
    # Line 1486
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10624
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1487
    lui	$at,0x1
    # Line 1488
    # lw $t9, -21040($gp) # &__glsplc_LoadMatrixd
    # Line 1487
    ori	$at,$at,0x69dc
    # Line 1486
    sd	$ra,0($sp)
    # Line 1487
    addu	$at,$at,$v0
    # Line 1488
    jal	__glsplc_LoadMatrixd
    # Line 1487
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1489
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_LoadMatrixd

# Function: __glOdysplc_MultMatrixf
# Declared: Line 1491 (Source lines: 1492-1495)
# Address: 0x0d975c60 - 0x0d975ca4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_MultMatrixf
.ent __glOdysplc_MultMatrixf
__glOdysplc_MultMatrixf:
    # Line 1492
    lui	$v1,0x18
    # Line 1493
    lw	$v0,4112($zero)
    # Line 1492
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10544
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1493
    lui	$at,0x1
    # Line 1494
    # lw $t9, -21032($gp) # &__glsplc_MultMatrixf
    # Line 1493
    ori	$at,$at,0x69dc
    # Line 1492
    sd	$ra,0($sp)
    # Line 1493
    addu	$at,$at,$v0
    # Line 1494
    jal	__glsplc_MultMatrixf
    # Line 1493
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1495
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_MultMatrixf

# Function: __glOdysplc_MultMatrixd
# Declared: Line 1497 (Source lines: 1498-1501)
# Address: 0x0d975cb0 - 0x0d975cf4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_MultMatrixd
.ent __glOdysplc_MultMatrixd
__glOdysplc_MultMatrixd:
    # Line 1498
    lui	$v1,0x18
    # Line 1499
    lw	$v0,4112($zero)
    # Line 1498
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10464
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1499
    lui	$at,0x1
    # Line 1500
    # lw $t9, -21028($gp) # &__glsplc_MultMatrixd
    # Line 1499
    ori	$at,$at,0x69dc
    # Line 1498
    sd	$ra,0($sp)
    # Line 1499
    addu	$at,$at,$v0
    # Line 1500
    jal	__glsplc_MultMatrixd
    # Line 1499
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1501
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_MultMatrixd

# Function: __glOdysplc_PopMatrix
# Declared: Line 1503 (Source lines: 1504-1507)
# Address: 0x0d975d00 - 0x0d975d44 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_PopMatrix
.ent __glOdysplc_PopMatrix
__glOdysplc_PopMatrix:
    # Line 1504
    lui	$v1,0x18
    # Line 1505
    lw	$v0,4112($zero)
    # Line 1504
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10384
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1505
    lui	$at,0x1
    # Line 1506
    # lw $t9, -21020($gp) # &__glsplc_PopMatrix
    # Line 1505
    ori	$at,$at,0x69dc
    # Line 1504
    sd	$ra,0($sp)
    # Line 1505
    addu	$at,$at,$v0
    # Line 1506
    jal	__glsplc_PopMatrix
    # Line 1505
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1507
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_PopMatrix

# Function: __glOdysplc_Rotated
# Declared: Line 1509 (Source lines: 1510-1513)
# Address: 0x0d975d50 - 0x0d975d94 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Rotated
.ent __glOdysplc_Rotated
__glOdysplc_Rotated:
    # Line 1510
    lui	$v1,0x18
    # Line 1511
    lw	$v0,4112($zero)
    # Line 1510
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10304
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1511
    lui	$at,0x1
    # Line 1512
    # lw $t9, -21012($gp) # &__glsplc_Rotated
    # Line 1511
    ori	$at,$at,0x69dc
    # Line 1510
    sd	$ra,0($sp)
    # Line 1511
    addu	$at,$at,$v0
    # Line 1512
    jal	__glsplc_Rotated
    # Line 1511
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1513
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Rotated

# Function: __glOdysplc_Rotatef
# Declared: Line 1514 (Source lines: 1515-1518)
# Address: 0x0d975da0 - 0x0d975de4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Rotatef
.ent __glOdysplc_Rotatef
__glOdysplc_Rotatef:
    # Line 1515
    lui	$v1,0x18
    # Line 1516
    lw	$v0,4112($zero)
    # Line 1515
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10224
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1516
    lui	$at,0x1
    # Line 1517
    # lw $t9, -21008($gp) # &__glsplc_Rotatef
    # Line 1516
    ori	$at,$at,0x69dc
    # Line 1515
    sd	$ra,0($sp)
    # Line 1516
    addu	$at,$at,$v0
    # Line 1517
    jal	__glsplc_Rotatef
    # Line 1516
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1518
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Rotatef

# Function: __glOdysplc_Scaled
# Declared: Line 1520 (Source lines: 1521-1524)
# Address: 0x0d975df0 - 0x0d975e34 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Scaled
.ent __glOdysplc_Scaled
__glOdysplc_Scaled:
    # Line 1521
    lui	$v1,0x18
    # Line 1522
    lw	$v0,4112($zero)
    # Line 1521
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10144
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1522
    lui	$at,0x1
    # Line 1523
    # lw $t9, -21004($gp) # &__glsplc_Scaled
    # Line 1522
    ori	$at,$at,0x69dc
    # Line 1521
    sd	$ra,0($sp)
    # Line 1522
    addu	$at,$at,$v0
    # Line 1523
    jal	__glsplc_Scaled
    # Line 1522
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1524
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Scaled

# Function: __glOdysplc_Scalef
# Declared: Line 1525 (Source lines: 1526-1529)
# Address: 0x0d975e40 - 0x0d975e84 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Scalef
.ent __glOdysplc_Scalef
__glOdysplc_Scalef:
    # Line 1526
    lui	$v1,0x18
    # Line 1527
    lw	$v0,4112($zero)
    # Line 1526
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,10064
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1527
    lui	$at,0x1
    # Line 1528
    # lw $t9, -21000($gp) # &__glsplc_Scalef
    # Line 1527
    ori	$at,$at,0x69dc
    # Line 1526
    sd	$ra,0($sp)
    # Line 1527
    addu	$at,$at,$v0
    # Line 1528
    jal	__glsplc_Scalef
    # Line 1527
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1529
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Scalef

# Function: __glOdysplc_Translated
# Declared: Line 1531 (Source lines: 1532-1535)
# Address: 0x0d975e90 - 0x0d975ed4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Translated
.ent __glOdysplc_Translated
__glOdysplc_Translated:
    # Line 1532
    lui	$v1,0x18
    # Line 1533
    lw	$v0,4112($zero)
    # Line 1532
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,9984
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1533
    lui	$at,0x1
    # Line 1534
    # lw $t9, -20996($gp) # &__glsplc_Translated
    # Line 1533
    ori	$at,$at,0x69dc
    # Line 1532
    sd	$ra,0($sp)
    # Line 1533
    addu	$at,$at,$v0
    # Line 1534
    jal	__glsplc_Translated
    # Line 1533
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1535
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Translated

# Function: __glOdysplc_Translatef
# Declared: Line 1536 (Source lines: 1537-1540)
# Address: 0x0d975ee0 - 0x0d975f24 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Translatef
.ent __glOdysplc_Translatef
__glOdysplc_Translatef:
    # Line 1537
    lui	$v1,0x18
    # Line 1538
    lw	$v0,4112($zero)
    # Line 1537
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,9904
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1538
    lui	$at,0x1
    # Line 1539
    # lw $t9, -20992($gp) # &__glsplc_Translatef
    # Line 1538
    ori	$at,$at,0x69dc
    # Line 1537
    sd	$ra,0($sp)
    # Line 1538
    addu	$at,$at,$v0
    # Line 1539
    jal	__glsplc_Translatef
    # Line 1538
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1540
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Translatef

# Function: __glOdysplc_Viewport
# Declared: Line 1542 (Source lines: 1543-1546)
# Address: 0x0d975f30 - 0x0d975f74 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_Viewport
.ent __glOdysplc_Viewport
__glOdysplc_Viewport:
    # Line 1543
    lui	$v1,0x18
    # Line 1544
    lw	$v0,4112($zero)
    # Line 1543
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,9824
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1544
    lui	$at,0x1
    # Line 1545
    # lw $t9, -20988($gp) # &__glsplc_Viewport
    # Line 1544
    ori	$at,$at,0x69dc
    # Line 1543
    sd	$ra,0($sp)
    # Line 1544
    addu	$at,$at,$v0
    # Line 1545
    jal	__glsplc_Viewport
    # Line 1544
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1546
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_Viewport

# Function: __glOdysplc_DrawElements
# Declared: Line 1548 (Source lines: 1549-1552)
# Address: 0x0d975f80 - 0x0d975fc4 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_DrawElements
.ent __glOdysplc_DrawElements
__glOdysplc_DrawElements:
    # Line 1549
    lui	$v1,0x18
    # Line 1550
    lw	$v0,4112($zero)
    # Line 1549
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,9744
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1550
    lui	$at,0x1
    # Line 1551
    # lw $t9, -28864($gp) # &__glsplc_DrawElements
    # Line 1550
    ori	$at,$at,0x69dc
    # Line 1549
    sd	$ra,0($sp)
    # Line 1550
    addu	$at,$at,$v0
    # Line 1551
    jal	__glsplc_DrawElements
    # Line 1550
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1552
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_DrawElements

# Function: __glOdysplc_DrawArraysEXT
# Declared: Line 1554 (Source lines: 1555-1558)
# Address: 0x0d975fd0 - 0x0d976014 (Size: 68 bytes, Frame: 16)
.globl __glOdysplc_DrawArraysEXT
.ent __glOdysplc_DrawArraysEXT
__glOdysplc_DrawArraysEXT:
    # Line 1555
    lui	$v1,0x18
    # Line 1556
    lw	$v0,4112($zero)
    # Line 1555
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,9664
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1556
    lui	$at,0x1
    # Line 1557
    # lw $t9, -28868($gp) # &__glsplc_DrawArraysEXT
    # Line 1556
    ori	$at,$at,0x69dc
    # Line 1555
    sd	$ra,0($sp)
    # Line 1556
    addu	$at,$at,$v0
    # Line 1557
    jal	__glsplc_DrawArraysEXT
    # Line 1556
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1558
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysplc_DrawArraysEXT

# Function: __glOdyim_ArrayElementEXT
# Declared: Line 1560 (Source lines: 1561-1564)
# Address: 0x0d976020 - 0x0d976064 (Size: 68 bytes, Frame: 16)
.globl __glOdyim_ArrayElementEXT
.ent __glOdyim_ArrayElementEXT
__glOdyim_ArrayElementEXT:
    # Line 1561
    lui	$v1,0x18
    # Line 1562
    lw	$v0,4112($zero)
    # Line 1561
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,9584
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 1562
    lui	$at,0x1
    # Line 1563
    # lw $t9, -23908($gp) # &__glim_ArrayElementEXT
    # Line 1562
    ori	$at,$at,0x69dc
    # Line 1561
    sd	$ra,0($sp)
    # Line 1562
    addu	$at,$at,$v0
    # Line 1563
    jal	__glim_ArrayElementEXT
    # Line 1562
    sb	$zero,0($at)
    ld	$ra,0($sp)
    # Line 1564
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_ArrayElementEXT

# Function: __glsplc_AddSentinel
# Declared: Line 1571 (Source lines: 1572-1577)
# Address: 0x0d976070 - 0x0d97610c (Size: 156 bytes, Frame: 16)
.globl __glsplc_AddSentinel
.ent __glsplc_AddSentinel
__glsplc_AddSentinel:
    # Line 1575
    lw	$a3,4144($zero)
    lw	$a4,4148($zero)
    # Line 1573
    lw	$a5,4112($zero)
    # Line 1572
    addiu	$sp,$sp,-16
    lui	$at,0x18
    sd	$ra,8($sp)
    addiu	$at,$at,9504
    # Line 1575
    addiu	$t0,$a3,-4
    sd	$gp,0($sp)
    beqz	$a4,.L0d9760dc
    # Line 1572
    addu	$gp,$t9,$at
    # Line 1575
    sll	$a6,$a4,0x1e
    subu	$a6,$a6,$a4
    sll	$a6,$a6,0x2
    addu	$a6,$a3,$a6
    sw	$a4,-4($a6)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a3,$a1
    lw	$a0,5048($a5)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    b	.L0d9760f0
    # Line 1576
    nop	# was lw $t9, -28840($gp) # &__glsplc_AddIlist
.L0d9760dc:
    # Line 1575
    lw	$a7,4136($zero)
    sw	$t0,4144($zero)
    addiu	$a7,$a7,1
    sw	$a7,4136($zero)
    # Line 1576
    # lw $t9, -28840($gp) # &__glsplc_AddIlist
.L0d9760f0:
    move	$a1,$zero
    jal	__glsplc_AddIlist
    la	$a0,__glsple_Sentinel
    ld	$ra,8($sp)
    # Line 1577
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_AddSentinel

# Function: ExecuteDlist
# Declared: Line 1614 (Source lines: 1615-1652)
# Address: 0x0d976110 - 0x0d9761f8 (Size: 232 bytes, Frame: 32)
.ent ExecuteDlist
ExecuteDlist:
    # Line 1615
    addiu	$sp,$sp,-32
    # Line 1622
    lw	$v0,20($a1)
    sd	$v0,8($sp)
    # Line 1615
    sd	$s0,16($sp)
    # Line 1625
    lui	$s0,0x1
    lw	$a3,0($v0)
    # Line 1615
    sd	$ra,0($sp)
    # Line 1625
    addu	$s0,$a0,$s0
    andi	$a3,$a3,0x3
    sw	$a3,27120($s0)
    # Line 1626
    lw	$a0,0($v0)
    # Line 1634
    li	$at,-1
    sw	$at,27140($s0)
    # Line 1632
    sw	$v0,27136($s0)
    # Line 1631
    sb	$zero,27135($s0)
    # Line 1630
    sb	$zero,27134($s0)
    # Line 1615
    lui	$a2,0x18
    # Line 1628
    sb	$zero,27132($s0)
    # Line 1615
    addiu	$a2,$a2,9344
    sd	$gp,24($sp)
    addu	$gp,$t9,$a2
    # Line 1636
    # lw $t9, -18716($gp) # &__glSPInterpret
    # Line 1627
    addiu	$v1,$v0,4
    sw	$v1,27128($s0)
    # Line 1626
    andi	$a0,$a0,0x1c
    sw	$a0,27124($s0)
    # Line 1636
    jal	__glSPInterpret
    lw	$a0,16($a1)
    lbu	$t8,27135($s0)
    # Line 1652
    ld	$gp,24($sp)
    # Line 1651
    ld	$at,8($sp)
    # Line 1636
    beqz	$t8,.L0d9761b0
    ld	$ra,0($sp)
    lbu	$t9,27134($s0)
    beqz	$t9,.L0d9761c0
    # Line 1640
    ld	$v0,8($sp)
    # Line 1652
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1651
    sb	$zero,64($at)
.L0d9761b0:
    ld	$s0,16($sp)
    # Line 1652
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9761c0:
    # Line 1640
    li	$v1,1
    sb	$v1,64($v0)
    # Line 1641
    lwc1	$f3,-27208($s0)
    swc1	$f3,48($v0)
    # Line 1643
    lwc1	$f2,-27204($s0)
    swc1	$f2,52($v0)
    # Line 1645
    lwc1	$f1,-27200($s0)
    # Line 1652
    ld	$gp,24($sp)
    # Line 1645
    swc1	$f1,56($v0)
    # Line 1647
    lwc1	$f0,-27196($s0)
    # Line 1652
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1647
    swc1	$f0,60($v0)
.end ExecuteDlist

# Function: ExecuteDlistNomem
# Declared: Line 1659 (Source lines: 1660-1662)
# Address: 0x0d976200 - 0x0d976234 (Size: 52 bytes, Frame: 16)
.ent ExecuteDlistNomem
ExecuteDlistNomem:
    # Line 1660
    lui	$at,0x18
    addiu	$sp,$sp,-16
    addiu	$at,$at,9104
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1661
    # lw $t9, -26792($gp) # &__glSetError
    # Line 1660
    sd	$ra,0($sp)
    # Line 1661
    jal	__glSetError
    li	$a0,1285
    ld	$ra,0($sp)
    # Line 1662
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end ExecuteDlistNomem

# Function: makeDLState
# Declared: Line 1669 (Source lines: 1670-1734)
# Address: 0x0d976240 - 0x0d976410 (Size: 464 bytes, Frame: 32)
.ent makeDLState
makeDLState:
    # Line 1670
    move	$t9,$a0
    addiu	$sp,$sp,-32
    # Line 1675
    lw	$t9,5016($t9)
    # Line 1670
    sd	$a0,16($sp)
    sd	$s3,8($sp)
    move	$s3,$a1
    sd	$ra,0($sp)
    # Line 1675
    jalr	$t9
    li	$a1,68
    # Line 1678
    lui	$a4,0x1
    ld	$a3,16($sp)
    ld	$ra,0($sp)
    ori	$a0,$a4,0x9dc4
    sw	$v0,20($s3)
    beqz	$v0,.L0d9763fc
    addu	$a2,$a3,$a4
    lbu	$at,27100($a2)
    beqz	$at,.L0d976408
    lw	$v1,27104($a2)
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    sltu	$v1,$v1,$a0
    beqz	$v1,.L0d9762a8
    nop
    # Line 1690
    b	.L0d9763e0
    sb	$zero,40($v0)
.L0d9762a8:
    lwc1	$f0,27064($a2)
    lwc1	$f10,27020($a2)
    c.lt.s	$f10,$f0
    bc1f	.L0d9762c0
    nop
    # Line 1697
    swc1	$f10,27064($a2)
.L0d9762c0:
    lwc1	$f9,27024($a2)
    lwc1	$f1,27068($a2)
    c.lt.s $f1,$f9
    bc1f .L0d9762d8
    nop
    # Line 1699
    swc1	$f9,27068($a2)
.L0d9762d8:
    lwc1	$f2,27072($a2)
    lwc1	$f6,27028($a2)
    c.lt.s $f6,$f2
    bc1f .L0d9762f0
    nop
    # Line 1702
    swc1	$f6,27072($a2)
.L0d9762f0:
    lwc1	$f8,27032($a2)
    lwc1	$f3,27076($a2)
    c.lt.s $f3,$f8
    bc1f .L0d976308
    nop
    # Line 1704
    swc1	$f8,27076($a2)
.L0d976308:
    lwc1	$f4,27080($a2)
    lwc1	$f7,27036($a2)
    c.lt.s $f7,$f4
    # Line 1723
    addiu	$a4,$a2,27064
    addiu	$a3,$v0,4
    # Line 1704
    bc1f .L0d976328
    # Line 1712
    sub.s	$f4,$f9,$f10
    # Line 1707
    swc1	$f7,27080($a2)
.L0d976328:
    lwc1	$f5,27040($a2)
    lwc1	$f11,27084($a2)
    c.lt.s $f11,$f5
    bc1f .L0d976340
    nop
    # Line 1709
    swc1	$f5,27084($a2)
.L0d976340:
    # Line 1712
    lwc1	$f12,27088($a2)
    c.lt.s $f12,$f4
    bc1f .L0d976354
    nop
    # Line 1714
    swc1	$f4,27088($a2)
.L0d976354:
    # Line 1715
    lwc1	$f13,27092($a2)
    sub.s	$f4,$f8,$f6
    c.lt.s $f13,$f4
    bc1f .L0d97636c
    nop
    # Line 1717
    swc1	$f4,27092($a2)
.L0d97636c:
    # Line 1718
    lwc1	$f14,27096($a2)
    sub.s	$f4,$f5,$f7
    c.lt.s	$f14,$f4
    bc1f	.L0d976384
    nop
    # Line 1720
    swc1	$f4,27096($a2)
.L0d976384:
    # Line 1723
    lw	$a0,27064($a2)
    sw	$a0,4($v0)
    lw	$v1,27068($a2)
    sw	$v1,8($v0)
    lw	$at,27072($a2)
    sw	$at,12($v0)
    lw	$t9,27076($a2)
    sw	$t9,16($v0)
    lw	$t8,27080($a2)
    sw	$t8,20($v0)
    lw	$t3,27084($a2)
    sw	$t3,24($v0)
    lw	$t2,27088($a2)
    sw	$t2,28($v0)
    lw	$t1,27092($a2)
    sw	$t1,32($v0)
    lw	$t0,27096($a2)
    sw	$t0,36($v0)
    lw	$a7,27100($a2)
    sw	$a7,40($v0)
    lw	$a1,27104($a2)
    sw	$a1,44($v0)
    # Line 1725
    sb	$zero,64($v0)
.L0d9763e0:
    # Line 1731
    lw	$a1,32($s3)
    # Line 1734
    ld	$s3,8($sp)
    addiu	$sp,$sp,32
    # Line 1731
    srl	$a1,$a1,0x10
    andi	$a1,$a1,0x1f
    # Line 1734
    jr	$ra
    # Line 1731
    sw	$a1,0($v0)
.L0d9763fc:
    ld	$s3,8($sp)
    # Line 1734
    jr	$ra
    addiu	$sp,$sp,32
.L0d976408:
    b	.L0d9763e0
    # Line 1729
    sb	$zero,40($v0)
.end makeDLState

# Function: __glOdysseySPBalloc
# Declared: Line 1741 (Source lines: 1742-1745)
# Address: 0x0d976410 - 0x0d97645c (Size: 76 bytes, Frame: 16)
.globl __glOdysseySPBalloc
.ent __glOdysseySPBalloc
__glOdysseySPBalloc:
    # Line 1742
    lw	$a3,0($a1)
    addiu	$sp,$sp,-16
    lui	$v0,0x18
    sltiu	$at,$a3,1024
    sd	$ra,8($sp)
    addiu	$v0,$v0,8576
    sd	$gp,0($sp)
    beqz	$at,.L0d976440
    addu	$gp,$t9,$v0
    # Line 1744
    li	$v1,1024
    sw	$v1,0($a1)
    move	$a3,$v1
.L0d976440:
    # Line 1745
    lw	$t9,0($a0)
    jalr	$t9
    sll	$a1,$a3,0x2
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySPBalloc

# Function: __glOdysseySPBfree
# Declared: Line 1753 (Source lines: 1754-1756)
# Address: 0x0d976460 - 0x0d976494 (Size: 52 bytes, Frame: 16)
.globl __glOdysseySPBfree
.ent __glOdysseySPBfree
__glOdysseySPBfree:
    # Line 1754
    addiu	$sp,$sp,-16
    lui	$at,0x18
    sd	$gp,8($sp)
    addiu	$at,$at,8496
    addu	$gp,$t9,$at
    # Line 1755
    lw	$t9,12($a0)
    # Line 1754
    sd	$ra,0($sp)
    # Line 1755
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 1756
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySPBfree

# Function: __glOdysseySPCompMachdep
# Declared: Line 1765 (Source lines: 1766-1778)
# Address: 0x0d9764a0 - 0x0d976514 (Size: 116 bytes, Frame: 32)
.globl __glOdysseySPCompMachdep
.ent __glOdysseySPCompMachdep
__glOdysseySPCompMachdep:
    # Line 1766
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lui	$ra,0x18
    addiu	$ra,$ra,8432
    sd	$gp,0($sp)
    addu	$gp,$t9,$ra
    # Line 1771
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,25152
    # Line 1766
    sd	$s0,16($sp)
    # Line 1771
    bal __glsplc_AddSentinel
    # Line 1766
    move	$s0,$a1
    # Line 1771
    lw	$at,20($s0)
    # Line 1774
    la	$v0,sub_0d970000
    # Line 1778
    ld	$ra,8($sp)
    # Line 1776
    la	$v1,sub_0d970000
    # Line 1771
    beqz	$at,.L0d9764fc
    # Line 1774
    addiu	$v0,$v0,24848
    # Line 1778
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 1774
    sw	$v0,8($s0)
    # Line 1778
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9764fc:
    ld	$gp,0($sp)
    # Line 1776
    addiu	$v1,$v1,25088
    sw	$v1,8($s0)
    # Line 1778
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySPCompMachdep

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_7f7fffff:
    .word 0x7f7fffff
_lit_ff7fffff:
    .word 0xff7fffff

