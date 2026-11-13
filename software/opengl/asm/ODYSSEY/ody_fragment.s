# Source: ../ODYSSEY/ody_fragment.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_fragment.c
# Total Functions: 24

.text

# Function: ValidateFragmentColorMaterial
# Declared: Line 27 (Source lines: 32-88)
# Address: 0x0d981fc0 - 0x0d982194 (Size: 468 bytes, Frame: 0)
.ent ValidateFragmentColorMaterial
ValidateFragmentColorMaterial:
    # Line 32
    lui	$a4,0x1
    addu	$a4,$a0,$a4
    # Line 39
    lw	$t2,-27260($a4)
    # Line 38
    li	$a6,-193
    # Line 37
    li	$a7,-49
    # Line 35
    lw	$a5,-27264($a4)
    # Line 36
    li	$t0,-13
    # Line 35
    li	$t1,-4
    and	$a5,$t1,$a5
    # Line 39
    and	$t1,$t1,$t2
    ori	$t1,$t1,0x2
    # Line 35
    ori	$a5,$a5,0x2
    # Line 36
    and	$a5,$t0,$a5
    # Line 40
    and	$t0,$t0,$t1
    ori	$t0,$t0,0x8
    # Line 36
    ori	$a5,$a5,0x8
    # Line 37
    and	$a5,$a7,$a5
    # Line 41
    and	$a7,$a7,$t0
    ori	$a7,$a7,0x20
    # Line 37
    ori	$a5,$a5,0x20
    # Line 38
    and	$a5,$a6,$a5
    # Line 42
    and	$a6,$a6,$a7
    ori	$a6,$a6,0x80
    sw	$a6,-27260($a4)
    # Line 38
    ori	$a5,$a5,0x80
    sw	$a5,-27264($a4)
    # Line 42
    lw	$at,1796($a0)
    andi	$at,$at,0x2000
    # Line 33
    lw	$a3,26028($a4)
    # Line 66
    li	$a1,5634
    # Line 42
    beqz	$at,.L0d98207c
    # Line 32
    lw	$a2,26024($a4)
    # Line 66
    li	$a0,4609
    # Line 45
    li	$a7,1028
    beq	$a2,$a7,.L0d9820d0
    # Line 46
    li	$t3,5634
    # Line 45
    li	$t0,1032
    beq	$a2,$t0,.L0d9820cc
.L0d982058:
    # Line 74
    ori	$t0,$a6,0x3
    # Line 65
    li	$t1,1029
    # Line 66
    li	$v0,4610
    li	$at,5632
    # Line 65
    beq	$a2,$t1,.L0d982098
    # Line 66
    li	$v1,4608
    # Line 65
    li	$t2,1032
    beq	$a2,$t2,.L0d982098
    nop
.L0d98207c:
    # Line 87
    lw	$t8,26976($a4)
    lui	$t9,0x80
    or	$t8,$t8,$t9
    sw	$t8,26976($a4)
    li	$t3,2
    # Line 88
    jr	$ra
    # Line 87
    sw	$t3,4120($zero)
.L0d982098:
    # Line 66
    beq	$a3,$at,.L0d98213c
    nop
    beq	$a3,$v0,.L0d982160
    nop
    beq	$a3,$v1,.L0d982184
    nop
    beq	$a3,$a0,.L0d98218c
    # Line 77
    ori	$t1,$a6,0xc
    # Line 66
    bne	$a3,$a1,.L0d98207c
    # Line 80
    ori	$a2,$a6,0x3
    # Line 81
    ori	$a2,$a2,0xc
    # Line 82
    b	.L0d98207c
    # Line 81
    sw	$a2,-27260($a4)
.L0d9820cc:
    # Line 46
    li	$t3,5634
.L0d9820d0:
    li	$a7,5632
    li	$t2,4609
    # Line 57
    ori	$v1,$a5,0xc
    # Line 46
    beq	$a3,$a7,.L0d98211c
    # Line 48
    ori	$t9,$a5,0xc0
    # Line 51
    ori	$at,$a5,0x30
    # Line 46
    li	$t0,4610
    beq	$a3,$t0,.L0d982124
    # Line 54
    ori	$v0,$a5,0x3
    # Line 46
    li	$t1,4608
    beq	$a3,$t1,.L0d98212c
    nop
    beq	$a3,$t2,.L0d982134
    nop
    bne	$a3,$t3,.L0d982058
    # Line 60
    ori	$t8,$a5,0x3
    # Line 61
    ori	$t8,$t8,0xc
    # Line 62
    b	.L0d982058
    # Line 61
    sw	$t8,-27264($a4)
.L0d98211c:
    b	.L0d982058
    # Line 48
    sw	$t9,-27264($a4)
.L0d982124:
    # Line 52
    b	.L0d982058
    # Line 51
    sw	$at,-27264($a4)
.L0d98212c:
    # Line 55
    b	.L0d982058
    # Line 54
    sw	$v0,-27264($a4)
.L0d982134:
    # Line 58
    b	.L0d982058
    # Line 57
    sw	$v1,-27264($a4)
.L0d98213c:
    # Line 87
    lw	$a1,26976($a4)
    # Line 68
    ori	$a3,$a6,0xc0
    sw	$a3,-27260($a4)
    # Line 87
    lui	$a2,0x80
    or	$a1,$a1,$a2
    sw	$a1,26976($a4)
    li	$a0,2
    # Line 88
    jr	$ra
    # Line 87
    sw	$a0,4120($zero)
.L0d982160:
    lw	$a5,26976($a4)
    # Line 71
    ori	$a7,$a6,0x30
    sw	$a7,-27260($a4)
    # Line 87
    lui	$a6,0x80
    or	$a5,$a5,$a6
    sw	$a5,26976($a4)
    li	$a4,2
    # Line 88
    jr	$ra
    # Line 87
    sw	$a4,4120($zero)
.L0d982184:
    # Line 75
    b	.L0d98207c
    # Line 74
    sw	$t0,-27260($a4)
.L0d98218c:
    # Line 78
    b	.L0d98207c
    # Line 77
    sw	$t1,-27260($a4)
.end ValidateFragmentColorMaterial

# Function: __glOdysseyValidateFragment
# Declared: Line 91 (Source lines: 91-194)
# Address: 0x0d9821a0 - 0x0d982498 (Size: 760 bytes, Frame: 32)
.globl __glOdysseyValidateFragment
.ent __glOdysseyValidateFragment
__glOdysseyValidateFragment:
    # Line 115
    lui	$a3,0x1
    lw	$v0,1416($a0)
    li	$v1,0x81fa
    # Line 91
    lui	$at,0x17
    # Line 104
    lw	$a2,1792($a0)
    # Line 91
    addiu	$sp,$sp,-32
    addiu	$at,$at,25584
    sd	$gp,8($sp)
    # Line 115
    beq	$v0,$v1,.L0d9823e4
    # Line 91
    addu	$gp,$t9,$at
    # Line 115
    lui	$a3,0x1
.L0d9821cc:
    move	$a5,$zero
.L0d9821d0:
    # Line 124
    addu	$a2,$a3,$a0
    lw	$a4,31744($a0)
    lui	$a7,0x8
    sll	$a6,$a5,0x13
    nor	$t0,$a7,$zero
    and	$a6,$a6,$a7
    and	$a4,$a4,$t0
    or	$a4,$a4,$a6
    beqz	$a5,.L0d98230c
    sw	$a4,31744($a0)
    # Line 145
    lw	$a6,-26780($a2)
    lui	$t9,0xff
    # Line 134
    li	$at,-4096
    # Line 139
    lw	$a1,-26788($a2)
    # Line 145
    ori	$t9,$t9,0xf000
    # Line 133
    lw	$a4,-26796($a2)
    lui	$t8,0xff00
    # Line 145
    or	$a6,$t9,$a6
    # Line 146
    ori	$a6,$a6,0xfff
    # Line 135
    lw	$v1,-26792($a2)
    # Line 133
    ori	$t8,$t8,0xfff
    # Line 147
    lw	$v0,-26776($a2)
    # Line 133
    and	$a4,$t8,$a4
    # Line 139
    and	$a1,$t8,$a1
    # Line 140
    and	$a1,$at,$a1
    # Line 134
    and	$at,$at,$a4
    # Line 141
    lw	$t3,-26784($a2)
    # Line 150
    lw	$t2,-26576($a2)
    # Line 137
    li	$t1,-3073
    # Line 147
    or	$t9,$t9,$v0
    # Line 134
    sw	$at,-26796($a2)
    # Line 141
    and	$t3,$t8,$t3
    # Line 135
    and	$t8,$t8,$v1
    # Line 146
    sw	$a6,-26780($a2)
    # Line 137
    and	$t8,$t1,$t8
    # Line 143
    and	$t3,$t1,$t3
    # Line 140
    sw	$a1,-26788($a2)
    # Line 149
    and	$t1,$t1,$t9
    # Line 143
    ori	$t3,$t3,0x800
    sw	$t3,-26784($a2)
    # Line 150
    li	$t3,-769
    # Line 149
    ori	$t1,$t1,0x800
    # Line 137
    ori	$t8,$t8,0x800
    sw	$t8,-26792($a2)
    # Line 150
    and	$t1,$t1,$t3
    ori	$t1,$t1,0x200
    beqz	$t2,.L0d9822b4
    sw	$t1,-26776($a2)
    # Line 153
    li	$v0,250
    sw	$zero,-26576($a2)
    lui	$at,0x1
    ori	$v1,$at,0x443
    sw	$v1,0($a3)
    sw	$v0,0($a3)
    ori	$at,$at,0x46
    sw	$at,0($a3)
    sw	$at,0($a3)
.L0d9822b4:
    lui	$t3,0x1
    ori	$t8,$t3,0x407
    sw	$t8,0($a3)
    sw	$zero,0($a3)
    ori	$t3,$t3,0x1a50
    sw	$t3,0($a3)
    lw	$t2,-26796($a2)
    sw	$t2,0($a3)
    lw	$t1,-26792($a2)
    sw	$t1,0($a3)
    lw	$t0,-26788($a2)
    sw	$t0,0($a3)
    lw	$a7,-26784($a2)
    sw	$a7,0($a3)
    lw	$a6,-26780($a2)
    sw	$a6,0($a3)
    lw	$a4,-26776($a2)
    sw	$a4,0($a3)
    # Line 156
    lw	$a1,26992($a2)
    ori	$a1,$a1,0x1
    sw	$a1,26992($a2)
    lw	$a4,31744($a0)
.L0d98230c:
    # Line 162
    lw	$a6,1796($a0)
    andi	$a6,$a6,0x1000
    beqz	$a6,.L0d9823d4
    li	$a3,2
.L0d98231c:
    lbu	$a7,3220($a0)
    beqz	$a7,.L0d9823dc
    nop
.L0d982328:
    sll	$t0,$a3,0xd
    li	$t1,0xe000
    andi	$t0,$t0,0xe000
    nor	$t1,$t1,$zero
    and	$t1,$a4,$t1
    # Line 185
    li	$a4,3
    # Line 162
    or	$t0,$t0,$t1
    beqz	$a6,.L0d982414
    sw	$t0,31744($a0)
    # Line 173
    lw	$a3,26032($a2)
    li	$t2,260
    beq	$a3,$t2,.L0d98241c
    # Line 178
    li	$a4,1
    # Line 173
    li	$t3,7681
    beq	$a3,$t3,.L0d982428
    # Line 181
    li	$t9,2
    # Line 173
    lw	$a4,0($sp)
    li	$t8,8448
    xor	$t8,$a3,$t8
    sd	$ra,16($sp)
    movz	$a4,$t9,$t8
.L0d98237c:
    # Line 190
    lw	$v0,26976($a2)
    lui	$v1,0x80
    # Line 188
    sll	$a3,$a4,0x18
    lw	$a1,-27264($a2)
    lui	$a5,0x700
    and	$a3,$a3,$a5
    # Line 190
    ori	$v1,$v1,0x4
    # Line 193
    # lw $t9, -32732($gp) # &sub_0d980000
    # Line 190
    or	$v0,$v0,$v1
    # Line 188
    nor	$a6,$a5,$zero
    # Line 190
    sw	$v0,26976($a2)
    # Line 188
    and	$a1,$a1,$a6
    # Line 193
    addiu	$t9,$t9,8128
    # Line 188
    or	$a1,$a1,$a3
    sw	$a1,-27264($a2)
    # Line 190
    li	$at,2
    # Line 193
    bal __glOdyim_FogFuncSGIS
    # Line 190
    sw	$at,4120($zero)
    ld	$ra,16($sp)
    # Line 194
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9823d4:
    # Line 162
    bnez	$a5,.L0d98231c
    nop
.L0d9823dc:
    b	.L0d982328
    li	$a3,1
.L0d9823e4:
    # Line 115
    andi	$a7,$a2,0x40
    beqz	$a7,.L0d982430
    nop
    lbu	$t0,3220($a0)
    beqz	$t0,.L0d982438
    nop
    lw	$t1,1796($a0)
    andi	$t1,$t1,0x1000
    beqz	$t1,.L0d982440
    lui	$a3,0x1
    b	.L0d9821d0
    move	$a5,$zero
.L0d982414:
    b	.L0d98237c
    sd	$ra,16($sp)
.L0d98241c:
    # Line 175
    li	$a4,3
    b	.L0d98237c
    sd	$ra,16($sp)
.L0d982428:
    # Line 179
    b	.L0d98237c
    sd	$ra,16($sp)
.L0d982430:
    # Line 115
    b	.L0d9821cc
    lui	$a3,0x1
.L0d982438:
    b	.L0d9821d0
    move	$a5,$zero
.L0d982440:
    lw	$t8,3588($a0)
    li	$t3,1
    lw	$t2,1800($a0)
    sllv	$t3,$t3,$t8
    addiu	$t3,$t3,-1
    and	$t2,$t2,$t3
    beqz	$t2,.L0d982474
    dsll32	$t9,$a2,0x1
    bgez	$t9,.L0d98247c
    dsll32	$at,$a2,0xe
    lui	$a3,0x1
.L0d98246c:
    b	.L0d9821d0
    li	$a5,1
.L0d982474:
    b	.L0d9821cc
    lui	$a3,0x1
.L0d98247c:
    bltz	$at,.L0d98246c
    lui	$a3,0x1
    dsll32	$v0,$a2,0xf
    bltz	$v0,.L0d98246c
    nop
    b	.L0d9821d0
    move	$a5,$zero
.end __glOdysseyValidateFragment

# Function: __glOdyim_FragmentLightfvSGIX
# Declared: Line 196 (Source lines: 197-294)
# Address: 0x0d9824a0 - 0x0d9829e8 (Size: 1352 bytes, Frame: 192)
.globl __glOdyim_FragmentLightfvSGIX
.ent __glOdyim_FragmentLightfvSGIX
__glOdyim_FragmentLightfvSGIX:
    # Line 197
    move	$a6,$a2
    addiu	$sp,$sp,-64
    # Line 204
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$a7,1
    # Line 197
    lui	$v0,0x17
    move	$a4,$a0
    sd	$ra,56($sp)
    addiu	$v0,$v0,24816
    sd	$gp,40($sp)
    # Line 204
    beq	$at,$a7,.L0d9829d4
    # Line 197
    addu	$gp,$t9,$v0
    # Line 204
    lui	$a2,0xffff
    ori	$a2,$a2,0x7bf4
    addu	$a2,$a0,$a2
    beqz	$a2,.L0d9824f8
    # Line 211
    la	$a0,sub_0daf0000
    # Line 207
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9825a4
    ld	$ra,56($sp)
.L0d9824f8:
    # Line 211
    addiu	$a3,$a1,-4608
    sltiu	$t0,$a3,10
    addiu	$a0,$a0,-29540
    sll	$a3,$a3,0x2
    beqz	$t0,.L0d9825b0
    addu	$a0,$a0,$a3
    lw	$a1,0($a0)
    jr	$a1
    # Line 255
    mtc1	$zero,$f7
.L0d98251c:
    sd	$a5,32($sp)
    # Line 217
    sll	$a5,$a4,0x3
    sd	$a2,48($sp)
    subu	$a5,$a5,$a4
    move	$a2,$a6
    # lw $t9, -26176($gp) # &__glScaleColorf
    sll	$a5,$a5,0x2
    lui	$a3,0xffc5
    ld	$a1,32($sp)
    addu	$a4,$a5,$a4
    ori	$a3,$a3,0x8f20
    sll	$a4,$a4,0x2
    move	$a0,$a1
    addu	$a1,$a1,$a4
    jal	__glScaleColorf
    addu	$a1,$a1,$a3
    ld	$a1,32($sp)
    li	$a7,1
    lui	$a3,0x1
    ld	$a2,48($sp)
    li	$a6,2
    addu	$a1,$a1,$a3
.L0d982574:
    # Line 293
    lw	$t0,26980($a1)
    ld	$ra,56($sp)
    ori	$t0,$t0,0x40
    sw	$t0,26980($a1)
    sw	$a6,4120($zero)
    # Line 294
    lw	$a4,26992($a1)
    # Line 291
    ld	$gp,40($sp)
    # Line 294
    sllv	$a5,$a7,$a2
    # Line 291
    addiu	$sp,$sp,64
    # Line 294
    or	$a4,$a4,$a5
    # Line 291
    jr	$ra
    # Line 294
    sw	$a4,26992($a1)
.L0d9825a4:
    # Line 291
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9825b0:
    # Line 290
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9825a4
    ld	$ra,56($sp)
.L0d9825c4:
    sd	$a5,32($sp)
    # Line 214
    sll	$a5,$a4,0x3
    sd	$a2,48($sp)
    subu	$a5,$a5,$a4
    move	$a2,$a6
    # lw $t9, -26176($gp) # &__glScaleColorf
    sll	$a5,$a5,0x2
    lui	$a3,0xffc5
    ld	$a1,32($sp)
    addu	$a4,$a5,$a4
    ori	$a3,$a3,0x8f10
    sll	$a4,$a4,0x2
    move	$a0,$a1
    addu	$a1,$a1,$a4
    jal	__glScaleColorf
    addu	$a1,$a1,$a3
    li	$a7,1
    # Line 215
    ld	$a1,32($sp)
    li	$a6,2
    lui	$a3,0x1
    ld	$a2,48($sp)
    b	.L0d982574
    addu	$a1,$a1,$a3
.L0d982620:
    # Line 283
    mtc1	$zero,$f0
    lwc1	$f4,0($a6)
    # Line 287
    lui	$a1,0x1
    # Line 286
    sll	$t1,$a4,0x3
    # Line 283
    c.lt.s	$f4,$f0
    # Line 286
    lui	$t0,0xffc5
    subu	$t1,$t1,$a4
    ori	$t0,$t0,0x8f80
    sll	$t1,$t1,0x2
    # Line 287
    addu	$a1,$a5,$a1
    # Line 283
    bc1t	.L0d9829c0
    # Line 286
    addu	$t1,$t1,$a4
    sll	$t1,$t1,0x2
    addu	$t1,$a5,$t1
    addu	$t0,$t0,$t1
    swc1	$f4,0($t0)
    # Line 287
    lw	$a6,26980($a1)
    ori	$a6,$a6,0x100
    sw	$a6,26980($a1)
    li	$a6,2
    # Line 288
    b	.L0d982574
    # Line 287
    sw	$a6,4120($zero)
.L0d982678:
    # Line 276
    mtc1	$zero,$f1
    lwc1	$f4,0($a6)
    # Line 280
    li	$a6,2
    lui	$a1,0x1
    # Line 279
    sll	$t8,$a4,0x3
    # Line 276
    c.lt.s $f4,$f1
    # Line 279
    lui	$t3,0xffc5
    subu	$t8,$t8,$a4
    ori	$t3,$t3,0x8f7c
    sll	$t8,$t8,0x2
    # Line 280
    addu	$a1,$a5,$a1
    # Line 276
    bc1t .L0d9829c0
    # Line 279
    addu	$t8,$t8,$a4
    sll	$t8,$t8,0x2
    addu	$t8,$a5,$t8
    addu	$t3,$t3,$t8
    swc1	$f4,0($t3)
    # Line 280
    lw	$t2,26980($a1)
    ori	$t2,$t2,0x100
    sw	$t2,26980($a1)
    # Line 281
    b	.L0d982574
    # Line 280
    sw	$a6,4120($zero)
.L0d9826d0:
    # Line 269
    mtc1	$zero,$f2
    lwc1	$f4,0($a6)
    # Line 273
    li	$a6,2
    lui	$a1,0x1
    # Line 272
    sll	$at,$a4,0x3
    # Line 269
    c.lt.s $f4,$f2
    # Line 272
    lui	$ra,0xffc5
    subu	$at,$at,$a4
    ori	$ra,$ra,0x8f78
    sll	$at,$at,0x2
    # Line 273
    addu	$a1,$a5,$a1
    # Line 269
    bc1t .L0d9829c0
    # Line 272
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$at,$a5,$at
    addu	$ra,$ra,$at
    swc1	$f4,0($ra)
    # Line 273
    lw	$t9,26980($a1)
    ori	$t9,$t9,0x100
    sw	$t9,26980($a1)
    # Line 274
    b	.L0d982574
    # Line 273
    sw	$a6,4120($zero)
.L0d982728:
    # Line 263
    lwc1	$f3,_lit_43340000
    lwc1	$f4,0($a6)
    mtc1	$zero,$f5
    # Line 267
    li	$a6,2
    lui	$a1,0x1
    # Line 263
    c.eq.s $f4,$f3
    # Line 266
    lui	$v0,0xffc5
    sll	$v1,$a4,0x3
    ori	$v0,$v0,0x8f74
    subu	$v1,$v1,$a4
    # Line 263
    lwc1	$f6,_lit_42b40000
    # Line 267
    addu	$a1,$a5,$a1
    # Line 263
    bc1t .L0d982778
    # Line 266
    sll	$v1,$v1,0x2
    # Line 263
    c.lt.s $f4,$f5
    bc1t .L0d9829c4
    # Line 257
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 263
    c.lt.s $f6,$f4
    bc1t .L0d9829c4
    # Line 257
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d982778:
    # Line 266
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v1,$a5,$v1
    addu	$v0,$v0,$v1
    # Line 267
    b	.L0d982574
    # Line 266
    swc1	$f4,0($v0)
.L0d982790:
    # Line 255
    lwc1	$f4,0($a6)
    # Line 261
    li	$a6,2
    lui	$a1,0x1
    # Line 255
    c.lt.s $f4,$f7
    # Line 260
    lui	$a0,0xffc5
    sll	$a3,$a4,0x3
    ori	$a0,$a0,0x8f70
    subu	$a3,$a3,$a4
    # Line 255
    lwc1	$f8,_lit_43000000
    # Line 261
    addu	$a1,$a5,$a1
    # Line 255
    bc1t .L0d9829c0
    # Line 260
    sll	$a3,$a3,0x2
    # Line 255
    c.lt.s $f8,$f4
    # Line 260
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a5,$a3
    # Line 255
    bc1t .L0d9829c0
    # Line 260
    addu	$a0,$a0,$a3
    # Line 261
    b	.L0d982574
    # Line 260
    swc1	$f4,0($a0)
.L0d9827e0:
    # Line 235
    lwc1	$f4,0($a6)
    swc1	$f4,0($sp)
    # Line 237
    sll	$a1,$a4,0x3
    # Line 236
    lwc1	$f7,4($a6)
    # Line 237
    subu	$a1,$a1,$a4
    sll	$a1,$a1,0x2
    # Line 236
    swc1	$f7,4($sp)
    # Line 237
    addu	$a1,$a1,$a4
    lwc1	$f5,8($a6)
    sll	$a1,$a1,0x2
    lui	$a0,0xffc6
    addu	$a1,$a5,$a1
    swc1	$f5,8($sp)
    addu	$a0,$a1,$a0
    lwc1	$f6,-28852($a0)
    dmtc1	$zero,$f10
    cvt.d.s	$f9,$f6
    c.eq.d	$f9,$f10
    # Line 239
    lwc1	$f13,-28864($a0)
    # Line 242
    mtc1	$zero,$f12
    # Line 237
    bc1t	.L0d982858
    # Line 239
    lwc1	$f11,-28860($a0)
    mul.s	$f11,$f11,$f7
    lwc1	$f12,-28856($a0)
    madd.s	$f11,$f11,$f13,$f4
    madd.s	$f11,$f11,$f12,$f5
    neg.s	$f11,$f11
    div.s	$f11,$f11,$f6
    b	.L0d98285c
    swc1	$f11,12($sp)
.L0d982858:
    # Line 242
    swc1	$f12,12($sp)
.L0d98285c:
    # Line 247
    lw	$a4,29716($a5)
    lbu	$a3,268($a4)
    sd	$a5,32($sp)
    sd	$a1,16($sp)
    beqz	$a3,.L0d982890
    sd	$a2,48($sp)
    # Line 249
    ld	$t9,32($sp)
    move	$a0,$t9
    lw	$t9,11956($t9)
    sd	$a4,24($sp)
    jal	__glSetError
    ld	$a1,24($sp)
    ld	$a4,24($sp)
.L0d982890:
    # Line 251
    lw	$t9,168($a4)
    addiu	$a2,$a4,88
    ld	$a0,16($sp)
    lui	$a3,0xffc5
    addiu	$a1,$sp,0
    ori	$a3,$a3,0x8f60
    jalr	$t9
    addu	$a0,$a0,$a3
    li	$a7,1
    ld	$a2,48($sp)
    # Line 252
    li	$a6,2
    lui	$a3,0x1
    ld	$a1,32($sp)
    b	.L0d982574
    addu	$a1,$a1,$a3
.L0d9828cc:
    # Line 223
    sll	$a0,$a4,0x3
    sd	$a5,32($sp)
    subu	$a0,$a0,$a4
    sd	$a2,48($sp)
    sll	$a0,$a0,0x2
    ld	$a2,32($sp)
    addu	$a0,$a0,$a4
    sll	$a0,$a0,0x2
    lwc1	$f16,0($a6)
    lui	$a3,0xffc6
    addu	$a0,$a2,$a0
    addu	$a3,$a0,$a3
    swc1	$f16,-28864($a3)
    # Line 224
    lwc1	$f15,4($a6)
    swc1	$f15,-28860($a3)
    # Line 225
    lwc1	$f14,8($a6)
    swc1	$f14,-28856($a3)
    # Line 226
    lwc1	$f13,12($a6)
    swc1	$f13,-28852($a3)
    # Line 230
    lw	$a2,29716($a2)
    # Line 231
    lui	$a3,0xffc5
    lw	$t9,80($a2)
    ori	$a1,$a3,0x8f40
    ori	$a3,$a3,0x8f50
    addu	$a1,$a0,$a1
    jalr	$t9
    addu	$a0,$a0,$a3
    # Line 232
    ld	$a1,32($sp)
    lui	$a3,0x1
    addu	$a1,$a1,$a3
    lw	$a3,26980($a1)
    ld	$a2,48($sp)
    li	$a7,1
    ori	$a3,$a3,0x100
    sw	$a3,26980($a1)
    li	$a6,2
    # Line 233
    b	.L0d982574
    # Line 232
    sw	$a6,4120($zero)
.L0d982964:
    sd	$a5,32($sp)
    # Line 220
    sll	$a5,$a4,0x3
    sd	$a2,48($sp)
    subu	$a5,$a5,$a4
    move	$a2,$a6
    # lw $t9, -26176($gp) # &__glScaleColorf
    sll	$a5,$a5,0x2
    lui	$a3,0xffc5
    ld	$a1,32($sp)
    addu	$a4,$a5,$a4
    ori	$a3,$a3,0x8f30
    sll	$a4,$a4,0x2
    move	$a0,$a1
    addu	$a1,$a1,$a4
    jal	__glScaleColorf
    addu	$a1,$a1,$a3
    li	$a7,1
    # Line 221
    ld	$a1,32($sp)
    li	$a6,2
    lui	$a3,0x1
    ld	$a2,48($sp)
    b	.L0d982574
    addu	$a1,$a1,$a3
.L0d9829c0:
    # Line 257
    # lw $t9, -26792($gp) # &__glSetError
.L0d9829c4:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9825a4
    ld	$ra,56($sp)
.L0d9829d4:
    # Line 204
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9825a4
    ld	$ra,56($sp)
.end __glOdyim_FragmentLightfvSGIX

# Function: __glOdyim_FragmentLightfSGIX
# Declared: Line 297 (Source lines: 298-312)
# Address: 0x0d9829f0 - 0x0d982a74 (Size: 132 bytes, Frame: 48)
.globl __glOdyim_FragmentLightfSGIX
.ent __glOdyim_FragmentLightfSGIX
__glOdyim_FragmentLightfSGIX:
    # Line 298
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 300
    li	$at,4613
    # Line 298
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,23456
    sd	$gp,0($sp)
    # Line 300
    beq	$a1,$at,.L0d982a60
    # Line 298
    addu	$gp,$t9,$v0
    # Line 300
    li	$v1,4614
    beq	$a1,$v1,.L0d982a64
    # Line 306
    nop	# was lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    # Line 300
    li	$a2,4615
    beq	$a1,$a2,.L0d982a64
    # Line 306
    nop	# was lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    # Line 300
    li	$a3,4616
    beq	$a1,$a3,.L0d982a64
    # Line 306
    nop	# was lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    # Line 300
    li	$a4,4617
    beq	$a1,$a4,.L0d982a64
    # Line 306
    nop	# was lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    # Line 309
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d982a54:
    # Line 312
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d982a60:
    # Line 306
    # lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
.L0d982a64:
    bal __glOdyim_FragmentLightfvSGIX
    addiu	$a2,$sp,32
    b	.L0d982a54
    ld	$ra,8($sp)
.end __glOdyim_FragmentLightfSGIX

# Function: __glOdyim_FragmentLightivSGIX
# Declared: Line 314 (Source lines: 315-412)
# Address: 0x0d982a80 - 0x0d98300c (Size: 1420 bytes, Frame: 192)
.globl __glOdyim_FragmentLightivSGIX
.ent __glOdyim_FragmentLightivSGIX
__glOdyim_FragmentLightivSGIX:
    # Line 315
    move	$a6,$a2
    addiu	$sp,$sp,-64
    # Line 322
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$a7,1
    # Line 315
    lui	$v0,0x17
    move	$a4,$a0
    sd	$ra,56($sp)
    addiu	$v0,$v0,23312
    sd	$gp,40($sp)
    # Line 322
    beq	$at,$a7,.L0d982ff8
    # Line 315
    addu	$gp,$t9,$v0
    # Line 322
    lui	$a2,0xffff
    ori	$a2,$a2,0x7bf4
    addu	$a2,$a0,$a2
    beqz	$a2,.L0d982ad4
    # Line 325
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d982b84
    ld	$ra,56($sp)
.L0d982ad4:
    # Line 329
    la	$a0,sub_0daf0000
    addiu	$a3,$a1,-4608
    sltiu	$t0,$a3,10
    addiu	$a0,$a0,-29500
    sll	$a3,$a3,0x2
    beqz	$t0,.L0d982b90
    addu	$a0,$a0,$a3
    lw	$a1,0($a0)
    jr	$a1
    nop
.L0d982afc:
    sd	$a5,32($sp)
    # Line 335
    sll	$a5,$a4,0x3
    sd	$a2,48($sp)
    subu	$a5,$a5,$a4
    move	$a2,$a6
    # lw $t9, -26164($gp) # &__glScaleColori
    sll	$a5,$a5,0x2
    lui	$a3,0xffc5
    ld	$a1,32($sp)
    addu	$a4,$a5,$a4
    ori	$a3,$a3,0x8f20
    sll	$a4,$a4,0x2
    move	$a0,$a1
    addu	$a1,$a1,$a4
    jal	__glScaleColori
    addu	$a1,$a1,$a3
    ld	$a1,32($sp)
    li	$a7,1
    lui	$a3,0x1
    ld	$a2,48($sp)
    li	$a6,2
    addu	$a1,$a1,$a3
.L0d982b54:
    # Line 411
    lw	$t0,26980($a1)
    ld	$ra,56($sp)
    ori	$t0,$t0,0x40
    sw	$t0,26980($a1)
    sw	$a6,4120($zero)
    # Line 412
    lw	$a4,26992($a1)
    # Line 408
    ld	$gp,40($sp)
    # Line 412
    sllv	$a5,$a7,$a2
    # Line 408
    addiu	$sp,$sp,64
    # Line 412
    or	$a4,$a4,$a5
    # Line 408
    jr	$ra
    # Line 412
    sw	$a4,26992($a1)
.L0d982b84:
    # Line 408
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d982b90:
    # Line 407
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d982b84
    ld	$ra,56($sp)
.L0d982ba4:
    sd	$a5,32($sp)
    # Line 332
    sll	$a5,$a4,0x3
    sd	$a2,48($sp)
    subu	$a5,$a5,$a4
    move	$a2,$a6
    # lw $t9, -26164($gp) # &__glScaleColori
    sll	$a5,$a5,0x2
    lui	$a3,0xffc5
    ld	$a1,32($sp)
    addu	$a4,$a5,$a4
    ori	$a3,$a3,0x8f10
    sll	$a4,$a4,0x2
    move	$a0,$a1
    addu	$a1,$a1,$a4
    jal	__glScaleColori
    addu	$a1,$a1,$a3
    li	$a7,1
    # Line 333
    ld	$a1,32($sp)
    li	$a6,2
    lui	$a3,0x1
    ld	$a2,48($sp)
    b	.L0d982b54
    addu	$a1,$a1,$a3
.L0d982c00:
    # Line 400
    lw	$t0,0($a6)
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    mtc1	$zero,$f0
    # Line 404
    li	$a6,2
    lui	$a1,0x1
    # Line 403
    sll	$t3,$a4,0x3
    # Line 400
    c.lt.s	$f4,$f0
    # Line 403
    lui	$t2,0xffc5
    subu	$t3,$t3,$a4
    ori	$t2,$t2,0x8f80
    sll	$t3,$t3,0x2
    # Line 404
    addu	$a1,$a5,$a1
    # Line 400
    bc1t	.L0d982fe4
    # Line 403
    addu	$t3,$t3,$a4
    sll	$t3,$t3,0x2
    addu	$t3,$a5,$t3
    addu	$t2,$t2,$t3
    swc1	$f4,0($t2)
    # Line 404
    lw	$t1,26980($a1)
    ori	$t1,$t1,0x100
    sw	$t1,26980($a1)
    # Line 405
    b	.L0d982b54
    # Line 404
    sw	$a6,4120($zero)
.L0d982c60:
    # Line 393
    lw	$t8,0($a6)
    mtc1	$t8,$f4
    cvt.s.w	$f4,$f4
    mtc1	$zero,$f5
    # Line 397
    li	$a6,2
    lui	$a1,0x1
    # Line 396
    sll	$at,$a4,0x3
    # Line 393
    c.lt.s $f4,$f5
    # Line 396
    lui	$ra,0xffc5
    subu	$at,$at,$a4
    ori	$ra,$ra,0x8f7c
    sll	$at,$at,0x2
    # Line 397
    addu	$a1,$a5,$a1
    # Line 393
    bc1t .L0d982fe4
    # Line 396
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$at,$a5,$at
    addu	$ra,$ra,$at
    swc1	$f4,0($ra)
    # Line 397
    lw	$t9,26980($a1)
    ori	$t9,$t9,0x100
    sw	$t9,26980($a1)
    # Line 398
    b	.L0d982b54
    # Line 397
    sw	$a6,4120($zero)
.L0d982cc0:
    # Line 386
    lw	$v0,0($a6)
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    mtc1	$zero,$f5
    # Line 390
    li	$a6,2
    lui	$a1,0x1
    # Line 389
    sll	$a3,$a4,0x3
    # Line 386
    c.lt.s $f4,$f5
    # Line 389
    lui	$a0,0xffc5
    subu	$a3,$a3,$a4
    ori	$a0,$a0,0x8f78
    sll	$a3,$a3,0x2
    # Line 390
    addu	$a1,$a5,$a1
    # Line 386
    bc1t .L0d982fe4
    # Line 389
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a5,$a3
    addu	$a0,$a0,$a3
    swc1	$f4,0($a0)
    # Line 390
    lw	$v1,26980($a1)
    ori	$v1,$v1,0x100
    sw	$v1,26980($a1)
    # Line 391
    b	.L0d982b54
    # Line 390
    sw	$a6,4120($zero)
.L0d982d20:
    # Line 380
    lw	$a0,0($a6)
    # Line 384
    li	$a6,2
    # Line 383
    lui	$t2,0xffc5
    sll	$t3,$a4,0x3
    # Line 380
    li	$t0,180
    # Line 383
    subu	$t3,$t3,$a4
    mtc1	$a0,$f5
    # Line 380
    beq	$a0,$t0,.L0d982d50
    slti	$t1,$a0,91
    bltz	$a0,.L0d982fe8
    # Line 374
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 380
    beqz	$t1,.L0d982fe4
.L0d982d50:
    # Line 384
    lui	$a1,0x1
    # Line 383
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$a4
    cvt.s.w	$f5,$f5
    sll	$t3,$t3,0x2
    ori	$t2,$t2,0x8f74
    addu	$t3,$a5,$t3
    addu	$t2,$t2,$t3
    # Line 384
    addu	$a1,$a5,$a1
    b	.L0d982b54
    # Line 383
    swc1	$f5,0($t2)
.L0d982d7c:
    # Line 372
    lw	$a0,0($a6)
    # Line 377
    sll	$ra,$a4,0x3
    # Line 378
    li	$a6,2
    # Line 372
    slti	$t8,$a0,129
    bltz	$a0,.L0d982fe4
    # Line 377
    mtc1	$a0,$f6
    # Line 372
    beqz	$t8,.L0d982fe4
    # Line 378
    lui	$a1,0x1
    # Line 377
    subu	$ra,$ra,$a4
    sll	$ra,$ra,0x2
    addu	$ra,$ra,$a4
    cvt.s.w	$f6,$f6
    lui	$t9,0xffc5
    sll	$ra,$ra,0x2
    ori	$t9,$t9,0x8f70
    addu	$ra,$a5,$ra
    addu	$t9,$t9,$ra
    # Line 378
    addu	$a1,$a5,$a1
    b	.L0d982b54
    # Line 377
    swc1	$f6,0($t9)
.L0d982dcc:
    # Line 353
    lw	$t1,0($a6)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($sp)
    # Line 354
    lw	$t0,4($a6)
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,4($sp)
    # Line 355
    lw	$a3,8($a6)
    sll	$a1,$a4,0x3
    mtc1	$a3,$f5
    subu	$a1,$a1,$a4
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a4
    cvt.s.w	$f5,$f5
    sll	$a1,$a1,0x2
    lui	$a0,0xffc6
    addu	$a1,$a5,$a1
    addu	$a0,$a1,$a0
    swc1	$f5,8($sp)
    lwc1	$f6,-28852($a0)
    dmtc1	$zero,$f9
    cvt.d.s	$f8,$f6
    c.eq.d $f8,$f9
    sd	$a2,48($sp)
    # Line 357
    lwc1	$f8,-28860($a0)
    # Line 355
    bc1t .L0d982e60
    # Line 360
    mtc1	$zero,$f9
    # Line 357
    lwc1	$f10,-28864($a0)
    mul.s	$f8,$f8,$f7
    lwc1	$f9,-28856($a0)
    madd.s	$f8,$f8,$f10,$f4
    madd.s	$f8,$f8,$f9,$f5
    neg.s	$f8,$f8
    div.s	$f8,$f8,$f6
    b	.L0d982e64
    swc1	$f8,12($sp)
.L0d982e60:
    # Line 360
    swc1	$f9,12($sp)
.L0d982e64:
    # Line 365
    lw	$a4,29716($a5)
    lbu	$t2,268($a4)
    sd	$a5,32($sp)
    beqz	$t2,.L0d982e94
    sd	$a1,16($sp)
    # Line 367
    ld	$t9,32($sp)
    move	$a0,$t9
    lw	$t9,11956($t9)
    sd	$a4,24($sp)
    jal	__glSetError
    ld	$a1,24($sp)
    ld	$a4,24($sp)
.L0d982e94:
    # Line 369
    lw	$t9,168($a4)
    addiu	$a2,$a4,88
    ld	$a0,16($sp)
    lui	$a3,0xffc5
    addiu	$a1,$sp,0
    ori	$a3,$a3,0x8f60
    jalr	$t9
    addu	$a0,$a0,$a3
    li	$a7,1
    # Line 370
    ld	$a1,32($sp)
    li	$a6,2
    lui	$a3,0x1
    ld	$a2,48($sp)
    b	.L0d982b54
    addu	$a1,$a1,$a3
.L0d982ed0:
    # Line 341
    lw	$a1,0($a6)
    sll	$a0,$a4,0x3
    sd	$a5,32($sp)
    subu	$a0,$a0,$a4
    mtc1	$a1,$f13
    sd	$a2,48($sp)
    sll	$a0,$a0,0x2
    ld	$a2,32($sp)
    addu	$a0,$a0,$a4
    sll	$a0,$a0,0x2
    cvt.s.w	$f13,$f13
    lui	$a3,0xffc6
    addu	$a0,$a2,$a0
    addu	$a3,$a0,$a3
    swc1	$f13,-28864($a3)
    # Line 342
    lw	$a7,4($a6)
    mtc1	$a7,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,-28860($a3)
    # Line 343
    lw	$a5,8($a6)
    mtc1	$a5,$f11
    cvt.s.w	$f11,$f11
    swc1	$f11,-28856($a3)
    # Line 344
    lw	$a4,12($a6)
    mtc1	$a4,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,-28852($a3)
    # Line 348
    lw	$a2,29716($a2)
    # Line 349
    lui	$a3,0xffc5
    lw	$t9,80($a2)
    ori	$a1,$a3,0x8f40
    ori	$a3,$a3,0x8f50
    addu	$a1,$a0,$a1
    jalr	$t9
    addu	$a0,$a0,$a3
    # Line 350
    ld	$a1,32($sp)
    lui	$a3,0x1
    addu	$a1,$a1,$a3
    lw	$a3,26980($a1)
    ld	$a2,48($sp)
    li	$a7,1
    ori	$a3,$a3,0x100
    sw	$a3,26980($a1)
    li	$a6,2
    # Line 351
    b	.L0d982b54
    # Line 350
    sw	$a6,4120($zero)
.L0d982f88:
    sd	$a5,32($sp)
    # Line 338
    sll	$a5,$a4,0x3
    sd	$a2,48($sp)
    subu	$a5,$a5,$a4
    move	$a2,$a6
    # lw $t9, -26164($gp) # &__glScaleColori
    sll	$a5,$a5,0x2
    lui	$a3,0xffc5
    ld	$a1,32($sp)
    addu	$a4,$a5,$a4
    ori	$a3,$a3,0x8f30
    sll	$a4,$a4,0x2
    move	$a0,$a1
    addu	$a1,$a1,$a4
    jal	__glScaleColori
    addu	$a1,$a1,$a3
    li	$a7,1
    # Line 339
    ld	$a1,32($sp)
    li	$a6,2
    lui	$a3,0x1
    ld	$a2,48($sp)
    b	.L0d982b54
    addu	$a1,$a1,$a3
.L0d982fe4:
    # Line 374
    # lw $t9, -26792($gp) # &__glSetError
.L0d982fe8:
    jal	__glSetError
    li	$a0,1281
    b	.L0d982b84
    ld	$ra,56($sp)
.L0d982ff8:
    # Line 322
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d982b84
    ld	$ra,56($sp)
.end __glOdyim_FragmentLightivSGIX

# Function: __glOdyim_FragmentLightiSGIX
# Declared: Line 415 (Source lines: 416-430)
# Address: 0x0d983010 - 0x0d983088 (Size: 120 bytes, Frame: 48)
.globl __glOdyim_FragmentLightiSGIX
.ent __glOdyim_FragmentLightiSGIX
__glOdyim_FragmentLightiSGIX:
    # Line 416
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # Line 418
    li	$at,4613
    # Line 416
    lui	$v0,0x17
    sw	$a2,36($sp)
    addiu	$v0,$v0,21888
    sd	$gp,0($sp)
    # Line 418
    beq	$a1,$at,.L0d983074
    # Line 416
    addu	$gp,$t9,$v0
    # Line 418
    li	$v1,4614
    beq	$a1,$v1,.L0d983074
    li	$a2,4615
    beq	$a1,$a2,.L0d983074
    li	$a3,4616
    beq	$a1,$a3,.L0d983078
    # Line 424
    nop	# was lw $t9, -31736($gp) # &__glOdyim_FragmentLightivSGIX
    # Line 418
    li	$a4,4617
    beq	$a1,$a4,.L0d983074
    # Line 427
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d983068:
    # Line 430
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d983074:
    # Line 424
    # lw $t9, -31736($gp) # &__glOdyim_FragmentLightivSGIX
.L0d983078:
    bal __glOdyim_FragmentLightivSGIX
    addiu	$a2,$sp,36
    b	.L0d983068
    ld	$ra,8($sp)
.end __glOdyim_FragmentLightiSGIX

# Function: __glOdyim_FragmentLightModelfvSGIX
# Declared: Line 433 (Source lines: 434-471)
# Address: 0x0d983090 - 0x0d983358 (Size: 712 bytes, Frame: 32)
.globl __glOdyim_FragmentLightModelfvSGIX
.ent __glOdyim_FragmentLightModelfvSGIX
__glOdyim_FragmentLightModelfvSGIX:
    # Line 462
    li	$t2,1
    # Line 434
    addiu	$sp,$sp,-32
    # Line 436
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 434
    lui	$v1,0x17
    # Line 439
    li	$a6,0x840b
    sd	$ra,24($sp)
    # Line 434
    addiu	$v1,$v1,21760
    sd	$gp,16($sp)
    # Line 436
    beq	$at,$v0,.L0d983344
    # Line 434
    addu	$gp,$t9,$v1
    # Line 439
    li	$a3,0x840a
    # Line 462
    lwc1	$f1,_lit_45e80000
    # Line 439
    beq	$a0,$a3,.L0d983214
    # Line 463
    lui	$t9,0x800
    # Line 439
    li	$a4,0x8408
    beq	$a0,$a4,.L0d983160
    li	$a5,0x8409
    beq	$a0,$a5,.L0d9831a4
    # Line 455
    mtc1	$zero,$f5
    # Line 462
    lui	$t1,0x1
    # Line 439
    beq	$a0,$a6,.L0d98310c
    # Line 462
    addu	$t1,$a2,$t1
    # Line 468
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d983100:
    # Line 471
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98310c:
    # Line 462
    lwc1	$f0,0($a1)
    c.eq.s	$f0,$f1
    movt	$t2,$zero,$fcc0
    sb	$t2,26022($t1)
    # Line 463
    lw	$t3,31740($a2)
    sltiu	$t2,$t2,1
    nor	$t8,$t9,$zero
    sll	$t2,$t2,0x1b
    and	$t3,$t3,$t8
    and	$t2,$t2,$t9
    or	$t2,$t2,$t3
    sw	$t2,31740($a2)
    # Line 465
    lw	$t0,26976($t1)
    # Line 471
    ld	$gp,16($sp)
    move	$ra,$ra
    # Line 465
    li	$a7,2
    ori	$t0,$t0,0x2
    sw	$t0,26976($t1)
    # Line 471
    addiu	$sp,$sp,32
    jr	$ra
    # Line 465
    sw	$a7,4120($zero)
.L0d983160:
    # Line 451
    lui	$t9,0x1
    mtc1	$zero,$f3
    lwc1	$f2,0($a1)
    addu	$t9,$a2,$t9
    # Line 452
    lw	$t8,26980($t9)
    # Line 471
    ld	$gp,16($sp)
    # Line 451
    li	$at,1
    c.eq.s $f2,$f3
    move	$ra,$ra
    # Line 452
    ori	$t8,$t8,0x100
    sw	$t8,26980($t9)
    li	$t3,2
    # Line 451
    movt	$at,$zero,$fcc1
    sb	$at,26020($t9)
    # Line 471
    addiu	$sp,$sp,32
    jr	$ra
    # Line 452
    sw	$t3,4120($zero)
.L0d9831a4:
    # Line 455
    lwc1	$f4,0($a1)
    lui	$v1,0x1
    c.eq.s $f4,$f5
    li	$a1,1
    addu	$v1,$a2,$v1
    movt	$a1,$zero,$fcc2
    sb	$a1,26021($v1)
    # Line 456
    lui	$a5,0x20
    lw	$a3,31740($a2)
    nor	$a4,$a5,$zero
    sll	$a1,$a1,0x15
    and	$a3,$a3,$a4
    and	$a1,$a1,$a5
    or	$a1,$a1,$a3
    sw	$a1,31740($a2)
    # Line 458
    lw	$a0,26976($v1)
    ori	$a0,$a0,0x2
    sw	$a0,26976($v1)
    li	$at,2
    sw	$at,4120($zero)
    # Line 459
    lw	$v0,26980($v1)
    # Line 471
    ld	$gp,16($sp)
    move	$ra,$ra
    # Line 459
    ori	$v0,$v0,0x100
    sw	$v0,26980($v1)
    # Line 471
    addiu	$sp,$sp,32
    jr	$ra
    # Line 459
    sw	$at,4120($zero)
.L0d983214:
    sd	$a1,8($sp)
    sd	$a2,0($sp)
    # Line 441
    # lw $t9, -26176($gp) # &__glScaleColorf
    ld	$a1,0($sp)
    lui	$a3,0x1
    ori	$a3,$a3,0x6594
    move	$a0,$a1
    ld	$a2,8($sp)
    jal	__glScaleColorf
    addu	$a1,$a1,$a3
    ld	$a1,8($sp)
    lwc1	$f6,0($a1)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f6
    ld	$a0,0($sp)
    c.le.d $f5,$f7
    ld	$ra,24($sp)
    # Line 442
    lui	$a5,0xff
    lui	$a2,0x1
    lwc1	$f4,_lit_45800000
    lui	$a6,0xff00
    addu	$a2,$a0,$a2
    ori	$a6,$a6,0xfff
    ori	$a5,$a5,0xf000
    # Line 441
    bc1f .L0d983284
    # Line 442
    lw	$a4,-27268($a2)
    b	.L0d983288
    lwc1	$f4,_lit_457ff000
.L0d983284:
    mul.s	$f4,$f6,$f4
.L0d983288:
    trunc.l.s	$f8,$f4
    dmfc1	$a7,$f8
    sll	$a7,$a7,0xc
    and	$a4,$a6,$a4
    and	$a7,$a5,$a7
    or	$a4,$a4,$a7
    sw	$a4,-27268($a2)
    lwc1	$f6,4($a1)
    cvt.d.s	$f7,$f6
    c.le.d $f5,$f7
    # Line 444
    li	$a7,-4096
    lwc1	$f4,_lit_45800000
    # Line 442
    bc1f .L0d9832c8
    # Line 444
    and	$a7,$a4,$a7
    b	.L0d9832cc
    lwc1	$f4,_lit_457ff000
.L0d9832c8:
    mul.s	$f4,$f6,$f4
.L0d9832cc:
    trunc.l.s	$f8,$f4
    dmfc1	$a3,$f8
    sll	$a3,$a3,0x0
    andi	$a3,$a3,0xfff
    or	$a3,$a3,$a7
    sw	$a3,-27268($a2)
    lwc1	$f6,8($a1)
    cvt.d.s	$f7,$f6
    c.le.d $f5,$f7
    # Line 446
    lw	$a7,-27264($a2)
    # Line 448
    li	$a4,2
    # Line 446
    lwc1	$f4,_lit_457ff000
    and	$a7,$a6,$a7
    # Line 444
    bc1t .L0d983310
    # Line 448
    lui	$a6,0x80
    # Line 446
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f6,$f4
.L0d983310:
    trunc.l.s	$f5,$f4
    dmfc1	$t0,$f5
    # Line 471
    ld	$gp,16($sp)
    # Line 446
    sll	$t0,$t0,0xc
    and	$t0,$a5,$t0
    # Line 448
    lw	$a5,26976($a2)
    # Line 446
    or	$a7,$a7,$t0
    sw	$a7,-27264($a2)
    # Line 448
    or	$a5,$a5,$a6
    sw	$a5,26976($a2)
    # Line 471
    addiu	$sp,$sp,32
    jr	$ra
    # Line 448
    sw	$a4,4120($zero)
.L0d983344:
    # Line 436
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d983100
    ld	$ra,24($sp)
.end __glOdyim_FragmentLightModelfvSGIX

# Function: __glOdyim_FragmentLightModelfSGIX
# Declared: Line 473 (Source lines: 474-486)
# Address: 0x0d983360 - 0x0d9833cc (Size: 108 bytes, Frame: 32)
.globl __glOdyim_FragmentLightModelfSGIX
.ent __glOdyim_FragmentLightModelfSGIX
__glOdyim_FragmentLightModelfSGIX:
    # Line 474
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # Line 476
    li	$at,0x8408
    # Line 474
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,21040
    sd	$gp,0($sp)
    # Line 476
    beq	$a0,$at,.L0d9833b8
    # Line 474
    addu	$gp,$t9,$v0
    # Line 476
    li	$v1,0x8409
    beq	$a0,$v1,.L0d9833bc
    # Line 480
    nop	# was lw $t9, -31728($gp) # &__glOdyim_FragmentLightModelfvSGIX
    # Line 476
    li	$a1,0x840b
    beq	$a0,$a1,.L0d9833bc
    # Line 480
    nop	# was lw $t9, -31728($gp) # &__glOdyim_FragmentLightModelfvSGIX
    # Line 483
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9833ac:
    # Line 486
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9833b8:
    # Line 480
    # lw $t9, -31728($gp) # &__glOdyim_FragmentLightModelfvSGIX
.L0d9833bc:
    bal __glOdyim_FragmentLightModelfvSGIX
    addiu	$a1,$sp,24
    b	.L0d9833ac
    ld	$ra,8($sp)
.end __glOdyim_FragmentLightModelfSGIX

# Function: __glOdyim_FragmentLightModelivSGIX
# Declared: Line 488 (Source lines: 489-526)
# Address: 0x0d9833d0 - 0x0d983610 (Size: 576 bytes, Frame: 32)
.globl __glOdyim_FragmentLightModelivSGIX
.ent __glOdyim_FragmentLightModelivSGIX
__glOdyim_FragmentLightModelivSGIX:
    # Line 494
    li	$a6,0x840b
    # Line 489
    addiu	$sp,$sp,-32
    # Line 491
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 489
    lui	$v1,0x17
    # Line 517
    lui	$t1,0x1
    sd	$ra,24($sp)
    # Line 489
    addiu	$v1,$v1,20928
    sd	$gp,16($sp)
    # Line 491
    beq	$at,$v0,.L0d983534
    # Line 489
    addu	$gp,$t9,$v1
    # Line 494
    li	$a2,0x840a
    beq	$a0,$a2,.L0d983548
    li	$a3,0x8408
    beq	$a0,$a3,.L0d983494
    li	$a5,0x8409
    beq	$a0,$a5,.L0d9834cc
    # Line 517
    addu	$t1,$a4,$t1
    # Line 518
    lui	$t9,0x800
    # Line 494
    beq	$a0,$a6,.L0d983444
    # Line 518
    nor	$t8,$t9,$zero
    # Line 523
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d983434:
    ld	$ra,24($sp)
.L0d983438:
    # Line 526
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d983444:
    # Line 517
    lw	$t2,0($a1)
    xori	$t2,$t2,0x1d00
    sltu	$t2,$zero,$t2
    sb	$t2,26022($t1)
    # Line 518
    lw	$t3,31740($a4)
    sltiu	$t2,$t2,1
    sll	$t2,$t2,0x1b
    and	$t3,$t3,$t8
    and	$t2,$t2,$t9
    or	$t2,$t2,$t3
    sw	$t2,31740($a4)
    # Line 520
    lw	$t0,26976($t1)
    # Line 526
    ld	$gp,16($sp)
    move	$ra,$ra
    # Line 520
    li	$a7,2
    ori	$t0,$t0,0x2
    sw	$t0,26976($t1)
    # Line 526
    addiu	$sp,$sp,32
    jr	$ra
    # Line 520
    sw	$a7,4120($zero)
.L0d983494:
    # Line 526
    ld	$gp,16($sp)
    # Line 506
    lui	$t9,0x1
    lw	$at,0($a1)
    addu	$t9,$a4,$t9
    # Line 507
    lw	$t8,26980($t9)
    move	$ra,$ra
    # Line 506
    sltu	$at,$zero,$at
    sb	$at,26020($t9)
    # Line 507
    li	$t3,2
    ori	$t8,$t8,0x100
    sw	$t8,26980($t9)
    # Line 526
    addiu	$sp,$sp,32
    jr	$ra
    # Line 507
    sw	$t3,4120($zero)
.L0d9834cc:
    # Line 510
    lw	$a1,0($a1)
    lui	$v1,0x1
    addu	$v1,$a4,$v1
    sltu	$a1,$zero,$a1
    sb	$a1,26021($v1)
    # Line 511
    lui	$a5,0x20
    lw	$a2,31740($a4)
    nor	$a3,$a5,$zero
    sll	$a1,$a1,0x15
    and	$a2,$a2,$a3
    and	$a1,$a1,$a5
    or	$a1,$a1,$a2
    sw	$a1,31740($a4)
    # Line 513
    lw	$a0,26976($v1)
    ori	$a0,$a0,0x2
    sw	$a0,26976($v1)
    li	$at,2
    sw	$at,4120($zero)
    # Line 514
    lw	$v0,26980($v1)
    # Line 526
    ld	$gp,16($sp)
    move	$ra,$ra
    # Line 514
    ori	$v0,$v0,0x100
    sw	$v0,26980($v1)
    # Line 526
    addiu	$sp,$sp,32
    jr	$ra
    # Line 514
    sw	$at,4120($zero)
.L0d983534:
    # Line 491
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d983438
    ld	$ra,24($sp)
.L0d983548:
    sd	$a1,0($sp)
    sd	$a4,8($sp)
    # Line 496
    # lw $t9, -26164($gp) # &__glScaleColori
    ld	$a1,8($sp)
    lui	$a3,0x1
    ori	$a3,$a3,0x6594
    move	$a0,$a1
    ld	$a2,0($sp)
    jal	__glScaleColori
    addu	$a1,$a1,$a3
    # Line 497
    ld	$t3,0($sp)
    ld	$a6,8($sp)
    lui	$t1,0xff00
    lw	$t9,0($t3)
    lui	$t0,0xff
    lui	$a7,0x1
    addu	$a6,$a6,$a7
    sra	$t9,$t9,0x14
    ori	$t0,$t0,0xf000
    lw	$ra,-27268($a6)
    andi	$t9,$t9,0xfff
    ori	$t1,$t1,0xfff
    sll	$t9,$t9,0xc
    and	$ra,$t1,$ra
    and	$t9,$t0,$t9
    or	$t9,$t9,$ra
    sw	$t9,-27268($a6)
    # Line 499
    lw	$t8,4($t3)
    li	$ra,-4096
    sra	$t8,$t8,0x14
    and	$t9,$t9,$ra
    andi	$t8,$t8,0xfff
    or	$t8,$t8,$t9
    sw	$t8,-27268($a6)
    # Line 501
    lw	$t3,8($t3)
    # Line 503
    lw	$a5,26976($a6)
    # Line 501
    sra	$t3,$t3,0x14
    # Line 503
    lui	$a7,0x80
    # Line 501
    lw	$t2,-27264($a6)
    andi	$t3,$t3,0xfff
    # Line 503
    or	$a5,$a5,$a7
    # Line 501
    sll	$t3,$t3,0xc
    and	$t1,$t1,$t2
    # Line 503
    sw	$a5,26976($a6)
    # Line 501
    and	$t0,$t0,$t3
    or	$t0,$t0,$t1
    sw	$t0,-27264($a6)
    # Line 503
    li	$a4,2
    b	.L0d983434
    sw	$a4,4120($zero)
.end __glOdyim_FragmentLightModelivSGIX

# Function: __glOdyim_FragmentLightModeliSGIX
# Declared: Line 528 (Source lines: 529-541)
# Address: 0x0d983610 - 0x0d983678 (Size: 104 bytes, Frame: 32)
.globl __glOdyim_FragmentLightModeliSGIX
.ent __glOdyim_FragmentLightModeliSGIX
__glOdyim_FragmentLightModeliSGIX:
    # Line 529
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 531
    li	$at,0x8408
    # Line 529
    lui	$v0,0x17
    sw	$a1,28($sp)
    addiu	$v0,$v0,20352
    sd	$gp,0($sp)
    # Line 531
    beq	$a0,$at,.L0d983664
    # Line 529
    addu	$gp,$t9,$v0
    # Line 531
    li	$v1,0x8409
    beq	$a0,$v1,.L0d983664
    li	$a1,0x840b
    beq	$a0,$a1,.L0d983668
    # Line 535
    nop	# was lw $t9, -31720($gp) # &__glOdyim_FragmentLightModelivSGIX
    # Line 538
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d983658:
    # Line 541
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d983664:
    # Line 535
    # lw $t9, -31720($gp) # &__glOdyim_FragmentLightModelivSGIX
.L0d983668:
    bal __glOdyim_FragmentLightModelivSGIX
    addiu	$a1,$sp,28
    b	.L0d983658
    ld	$ra,8($sp)
.end __glOdyim_FragmentLightModeliSGIX

# Function: ApplyMaterialF
# Declared: Line 544 (Source lines: 546-594)
# Address: 0x0d983680 - 0x0d983de4 (Size: 1892 bytes, Frame: 0)
.ent ApplyMaterialF
ApplyMaterialF:
    # Line 548
    sltiu	$at,$a1,5632
    bnez	$at,.L0d9836b8
    # Line 546
    lw	$a4,4112($zero)
    # Line 548
    sltiu	$v0,$a1,5633
    beqz	$v0,.L0d9838f0
    sltiu	$a3,$a1,5634
    lwc1	$f5,0($a2)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f5
    c.le.d	$f4,$f0
    bc1f	.L0d9836f0
    # Line 576
    lwc1	$f6,_lit_45800000
    b	.L0d9836f4
    lwc1	$f6,_lit_457ff000
.L0d9836b8:
    # Line 548
    sltiu	$v1,$a1,4609
    bnez	$v1,.L0d983924
    li	$a6,4608
    sltiu	$a3,$a1,4610
    beqz	$a3,.L0d983a6c
    li	$t2,4610
    lwc1	$f5,0($a2)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f5
    c.le.d $f4,$f1
    bc1f .L0d983978
    # Line 556
    lwc1	$f6,_lit_45800000
    b	.L0d98397c
    lwc1	$f6,_lit_457ff000
.L0d9836f0:
    # Line 576
    mul.s	$f6,$f5,$f6
.L0d9836f4:
    trunc.l.s	$f8,$f6
    dmfc1	$a6,$f8
    lw	$a5,24($a0)
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,24($a0)
    lwc1	$f5,4($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d98373c
    # Line 577
    lwc1	$f6,_lit_45800000
    b	.L0d983740
    lwc1	$f6,_lit_457ff000
.L0d98373c:
    mul.s	$f6,$f5,$f6
.L0d983740:
    trunc.l.s	$f8,$f6
    dmfc1	$a7,$f8
    li	$t0,-4096
    sll	$a7,$a7,0x0
    and	$t0,$a5,$t0
    andi	$a7,$a7,0xfff
    or	$a7,$a7,$t0
    sw	$a7,24($a0)
    lwc1	$f5,8($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d98377c
    # Line 578
    lwc1	$f4,_lit_45800000
    b	.L0d983780
    lwc1	$f4,_lit_457ff000
.L0d98377c:
    mul.s	$f4,$f5,$f4
.L0d983780:
    trunc.l.s	$f5,$f4
    dmfc1	$t1,$f5
    sll	$t1,$t1,0x0
    lw	$t0,28($a0)
    andi	$t1,$t1,0xfff
    and	$t0,$a1,$t0
    sll	$t1,$t1,0xc
    or	$t0,$t0,$t1
    sw	$t0,28($a0)
.L0d9837a4:
    # Line 590
    lui	$a0,0x1
    addu	$a1,$a0,$a4
    lw	$t2,-26576($a1)
    beqz	$t2,.L0d983864
    nop
    # Line 592
    sw	$zero,-26576($a1)
    ori	$v0,$a0,0x443
    sw	$v0,0($a0)
    li	$at,250
    sw	$at,0($a0)
    ori	$t9,$a0,0x46
    sw	$t9,0($a0)
    sw	$t9,0($a0)
    ori	$t8,$a0,0x3c4d
    sw	$t8,0($a0)
    lw	$t3,31856($a4)
    sw	$t3,0($a0)
    lw	$t2,31860($a4)
    sw	$t2,0($a0)
    lw	$t1,31864($a4)
    sw	$t1,0($a0)
    lw	$t0,31868($a4)
    sw	$t0,0($a0)
    lw	$a7,31872($a4)
    sw	$a7,0($a0)
    lw	$a6,31876($a4)
    sw	$a6,0($a0)
    lw	$a5,31880($a4)
    sw	$a5,0($a0)
    lw	$a3,31884($a4)
    sw	$a3,0($a0)
    lw	$a2,31888($a4)
    sw	$a2,0($a0)
    lw	$a1,31892($a4)
    sw	$a1,0($a0)
    lw	$v1,31896($a4)
    sw	$v1,0($a0)
    lw	$v0,31900($a4)
    sw	$v0,0($a0)
    lw	$at,31904($a4)
    sw	$at,0($a0)
    lw	$t9,31908($a4)
    sw	$t9,0($a0)
    lw	$t8,31912($a4)
    sw	$t8,0($a0)
    lw	$t3,31916($a4)
    # Line 594
    jr	$ra
    # Line 592
    sw	$t3,0($a0)
.L0d983864:
    ori	$a1,$a0,0x3c4d
    sw	$a1,0($a0)
    lw	$v1,31856($a4)
    sw	$v1,0($a0)
    lw	$v0,31860($a4)
    sw	$v0,0($a0)
    lw	$at,31864($a4)
    sw	$at,0($a0)
    lw	$t9,31868($a4)
    sw	$t9,0($a0)
    lw	$t8,31872($a4)
    sw	$t8,0($a0)
    lw	$t3,31876($a4)
    sw	$t3,0($a0)
    lw	$t2,31880($a4)
    sw	$t2,0($a0)
    lw	$t1,31884($a4)
    sw	$t1,0($a0)
    lw	$t0,31888($a4)
    sw	$t0,0($a0)
    lw	$a7,31892($a4)
    sw	$a7,0($a0)
    lw	$a6,31896($a4)
    sw	$a6,0($a0)
    lw	$a5,31900($a4)
    sw	$a5,0($a0)
    lw	$a3,31904($a4)
    sw	$a3,0($a0)
    lw	$a2,31908($a4)
    sw	$a2,0($a0)
    lw	$a1,31912($a4)
    sw	$a1,0($a0)
    lw	$v1,31916($a4)
    # Line 594
    jr	$ra
    # Line 592
    sw	$v1,0($a0)
.L0d9838f0:
    # Line 548
    bnez	$a3,.L0d98394c
    li	$a7,5633
    sltiu	$a5,$a1,5635
    beqz	$a5,.L0d9837a4
    nop
    lwc1	$f5,0($a2)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f5
    c.le.d $f4,$f6
    bc1f .L0d983a94
    # Line 563
    lwc1	$f6,_lit_457ff000
    b	.L0d983a9c
    nop
.L0d983924:
    # Line 548
    bne	$a1,$a6,.L0d9837a4
    nop
    lwc1	$f5,0($a2)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983c48
    # Line 550
    lwc1	$f6,_lit_45800000
    b	.L0d983c4c
    lwc1	$f6,_lit_457ff000
.L0d98394c:
    # Line 548
    bne	$a1,$a7,.L0d9837a4
    nop
    lwc1	$f4,0($a2)
    ldc1	$f8,_lit8_405ffe0068db8bac
    cvt.d.s	$f4,$f4
    c.lt.d $f8,$f4
    bc1f .L0d983db8
    lw	$a1,28($a0)
    # Line 583
    ori	$t0,$a1,0xfff
    b	.L0d9837a4
    sw	$t0,28($a0)
.L0d983978:
    # Line 556
    mul.s	$f6,$f5,$f6
.L0d98397c:
    trunc.l.s	$f8,$f6
    dmfc1	$a6,$f8
    lw	$a5,8($a0)
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,8($a0)
    lwc1	$f5,4($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d9839c4
    # Line 557
    lwc1	$f6,_lit_45800000
    b	.L0d9839c8
    lwc1	$f6,_lit_457ff000
.L0d9839c4:
    mul.s	$f6,$f5,$f6
.L0d9839c8:
    trunc.l.s	$f8,$f6
    dmfc1	$t1,$f8
    li	$a7,-4096
    sll	$t1,$t1,0x0
    and	$t0,$a7,$a5
    andi	$t1,$t1,0xfff
    or	$t0,$t0,$t1
    sw	$t0,8($a0)
    lwc1	$f5,8($a2)
    cvt.d.s	$f7,$f5
    c.le.d	$f4,$f7
    bc1f	.L0d983a04
    # Line 558
    lwc1	$f6,_lit_45800000
    b	.L0d983a08
    lwc1	$f6,_lit_457ff000
.L0d983a04:
    mul.s	$f6,$f5,$f6
.L0d983a08:
    trunc.l.s	$f8,$f6
    dmfc1	$a6,$f8
    lw	$a5,12($a0)
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,12($a0)
    lwc1	$f5,12($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983a48
    # Line 559
    lwc1	$f4,_lit_45800000
    b	.L0d983a4c
    lwc1	$f4,_lit_457ff000
.L0d983a48:
    mul.s	$f4,$f5,$f4
.L0d983a4c:
    trunc.l.s	$f5,$f4
    dmfc1	$t1,$f5
    sll	$t1,$t1,0x0
    and	$t0,$a7,$a5
    andi	$t1,$t1,0xfff
    or	$t0,$t0,$t1
    # Line 560
    b	.L0d9837a4
    # Line 559
    sw	$t0,12($a0)
.L0d983a6c:
    # Line 548
    bne	$a1,$t2,.L0d9837a4
    nop
    lwc1	$f5,0($a2)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f5
    c.le.d $f4,$f6
    bc1f .L0d983d00
    # Line 570
    lwc1	$f6,_lit_45800000
    b	.L0d983d04
    lwc1	$f6,_lit_457ff000
.L0d983a94:
    # Line 563
    lwc1	$f6,_lit_45800000
    mul.s	$f6,$f5,$f6
.L0d983a9c:
    trunc.l.s	$f8,$f6
    dmfc1	$a6,$f8
    lw	$a5,8($a0)
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,8($a0)
    lwc1	$f5,0($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1t .L0d983ae4
    lwc1	$f6,_lit_457ff000
    lwc1	$f6,_lit_45800000
    mul.s	$f6,$f5,$f6
.L0d983ae4:
    trunc.l.s	$f8,$f6
    dmfc1	$a7,$f8
    lw	$a6,0($a0)
    sll	$a7,$a7,0x0
    andi	$a7,$a7,0xfff
    and	$a6,$a1,$a6
    sll	$a7,$a7,0xc
    or	$a6,$a6,$a7
    sw	$a6,0($a0)
    lwc1	$f5,4($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983b24
    # Line 564
    lwc1	$f6,_lit_45800000
    b	.L0d983b28
    lwc1	$f6,_lit_457ff000
.L0d983b24:
    mul.s	$f6,$f5,$f6
.L0d983b28:
    trunc.l.s	$f8,$f6
    dmfc1	$t1,$f8
    li	$a7,-4096
    sll	$t1,$t1,0x0
    and	$t0,$a7,$a5
    andi	$t1,$t1,0xfff
    or	$t0,$t0,$t1
    sw	$t0,8($a0)
    lwc1	$f5,4($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983b64
    lwc1	$f6,_lit_45800000
    b	.L0d983b68
    lwc1	$f6,_lit_457ff000
.L0d983b64:
    mul.s	$f6,$f5,$f6
.L0d983b68:
    trunc.l.s	$f8,$f6
    dmfc1	$t3,$f8
    sll	$t3,$t3,0x0
    and	$t2,$a7,$a6
    andi	$t3,$t3,0xfff
    or	$t2,$t2,$t3
    sw	$t2,0($a0)
    lwc1	$f5,8($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983ba0
    # Line 565
    lwc1	$f6,_lit_45800000
    b	.L0d983ba4
    lwc1	$f6,_lit_457ff000
.L0d983ba0:
    mul.s	$f6,$f5,$f6
.L0d983ba4:
    trunc.l.s	$f8,$f6
    dmfc1	$a6,$f8
    lw	$a5,12($a0)
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,12($a0)
    lwc1	$f5,8($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1t .L0d983be4
    lwc1	$f6,_lit_457ff000
    lwc1	$f6,_lit_45800000
    mul.s	$f6,$f5,$f6
.L0d983be4:
    trunc.l.s	$f8,$f6
    dmfc1	$t1,$f8
    lw	$t0,4($a0)
    sll	$t1,$t1,0x0
    andi	$t1,$t1,0xfff
    and	$t0,$a1,$t0
    sll	$t1,$t1,0xc
    or	$t0,$t0,$t1
    sw	$t0,4($a0)
    lwc1	$f5,12($a2)
    cvt.d.s	$f7,$f5
    c.le.d	$f4,$f7
    bc1f	.L0d983c24
    # Line 566
    lwc1	$f4,_lit_45800000
    b	.L0d983c28
    lwc1	$f4,_lit_457ff000
.L0d983c24:
    mul.s	$f4,$f5,$f4
.L0d983c28:
    trunc.l.s	$f5,$f4
    dmfc1	$t3,$f5
    sll	$t3,$t3,0x0
    and	$t2,$a7,$a5
    andi	$t3,$t3,0xfff
    or	$t2,$t2,$t3
    # Line 567
    b	.L0d9837a4
    # Line 566
    sw	$t2,12($a0)
.L0d983c48:
    # Line 550
    mul.s	$f6,$f5,$f6
.L0d983c4c:
    trunc.l.s	$f8,$f6
    dmfc1	$a7,$f8
    lw	$a6,0($a0)
    lui	$a1,0xff00
    sll	$a7,$a7,0x0
    ori	$a1,$a1,0xfff
    andi	$a7,$a7,0xfff
    and	$a6,$a1,$a6
    sll	$a7,$a7,0xc
    or	$a6,$a6,$a7
    sw	$a6,0($a0)
    lwc1	$f5,4($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983c94
    # Line 551
    lwc1	$f6,_lit_45800000
    b	.L0d983c98
    lwc1	$f6,_lit_457ff000
.L0d983c94:
    mul.s	$f6,$f5,$f6
.L0d983c98:
    trunc.l.s	$f8,$f6
    dmfc1	$t0,$f8
    li	$t1,-4096
    sll	$t0,$t0,0x0
    and	$t1,$a6,$t1
    andi	$t0,$t0,0xfff
    or	$t0,$t0,$t1
    sw	$t0,0($a0)
    lwc1	$f5,8($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983cd4
    # Line 552
    lwc1	$f4,_lit_45800000
    b	.L0d983cd8
    lwc1	$f4,_lit_457ff000
.L0d983cd4:
    mul.s	$f4,$f5,$f4
.L0d983cd8:
    trunc.l.s	$f5,$f4
    dmfc1	$t2,$f5
    sll	$t2,$t2,0x0
    lw	$t1,4($a0)
    andi	$t2,$t2,0xfff
    and	$t1,$a1,$t1
    sll	$t2,$t2,0xc
    or	$t1,$t1,$t2
    b	.L0d9837a4
    sw	$t1,4($a0)
.L0d983d00:
    # Line 570
    mul.s	$f6,$f5,$f6
.L0d983d04:
    trunc.l.s	$f8,$f6
    dmfc1	$a6,$f8
    lw	$a5,16($a0)
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,16($a0)
    lwc1	$f5,4($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983d4c
    # Line 571
    lwc1	$f6,_lit_45800000
    b	.L0d983d50
    lwc1	$f6,_lit_457ff000
.L0d983d4c:
    mul.s	$f6,$f5,$f6
.L0d983d50:
    trunc.l.s	$f8,$f6
    dmfc1	$a7,$f8
    li	$t0,-4096
    sll	$a7,$a7,0x0
    and	$t0,$a5,$t0
    andi	$a7,$a7,0xfff
    or	$a7,$a7,$t0
    sw	$a7,16($a0)
    lwc1	$f5,8($a2)
    cvt.d.s	$f7,$f5
    c.le.d $f4,$f7
    bc1f .L0d983d8c
    # Line 572
    lwc1	$f4,_lit_45800000
    b	.L0d983d90
    lwc1	$f4,_lit_457ff000
.L0d983d8c:
    mul.s	$f4,$f5,$f4
.L0d983d90:
    trunc.l.s	$f5,$f4
    dmfc1	$t1,$f5
    sll	$t1,$t1,0x0
    lw	$t0,20($a0)
    andi	$t1,$t1,0xfff
    and	$t0,$a1,$t0
    sll	$t1,$t1,0xc
    or	$t0,$t0,$t1
    # Line 573
    b	.L0d9837a4
    # Line 572
    sw	$t0,20($a0)
.L0d983db8:
    # Line 585
    ldc1	$f6,_lit8_4040000000000000
    mul.d	$f6,$f4,$f6
    trunc.l.d	$f6,$f6
    dmfc1	$t2,$f6
    sll	$t2,$t2,0x0
    li	$t3,-4096
    andi	$t2,$t2,0xfff
    and	$t3,$a1,$t3
    or	$t2,$t2,$t3
    b	.L0d9837a4
    sw	$t2,28($a0)
.end ApplyMaterialF

# Function: ApplyMaterialI
# Declared: Line 597 (Source lines: 599-647)
# Address: 0x0d983df0 - 0x0d98470c (Size: 2332 bytes, Frame: 0)
.ent ApplyMaterialI
ApplyMaterialI:
    # Line 601
    sltiu	$at,$a1,5632
    bnez	$at,.L0d983e44
    # Line 599
    lw	$a4,4112($zero)
    # Line 601
    sltiu	$v0,$a1,5633
    beqz	$v0,.L0d9840b8
    sltiu	$a3,$a1,5634
    lw	$v1,0($a2)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f8
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f7
    c.le.d	$f5,$f0
    bc1f	.L0d983e94
    # Line 629
    lwc1	$f8,_lit_45800000
    b	.L0d983e98
    lwc1	$f8,_lit_457ff000
.L0d983e44:
    # Line 601
    sltiu	$a3,$a1,4609
    bnez	$a3,.L0d984104
    sltiu	$a5,$a1,4610
    beqz	$a5,.L0d9842b0
    li	$t2,4610
    lw	$a6,0($a2)
    mtc1	$a6,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f8
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d984180
    # Line 609
    lwc1	$f8,_lit_45800000
    b	.L0d984184
    lwc1	$f8,_lit_457ff000
.L0d983e94:
    # Line 629
    mul.s	$f8,$f7,$f8
.L0d983e98:
    trunc.l.s	$f10,$f8
    dmfc1	$a6,$f10
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    lw	$a5,24($a0)
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,24($a0)
    lw	$a7,4($a2)
    mtc1	$a7,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d983ef4
    # Line 630
    lwc1	$f8,_lit_45800000
    b	.L0d983ef8
    lwc1	$f8,_lit_457ff000
.L0d983ef4:
    mul.s	$f8,$f7,$f8
.L0d983ef8:
    trunc.l.s	$f10,$f8
    dmfc1	$t0,$f10
    sll	$t0,$t0,0x0
    li	$t1,-4096
    andi	$t0,$t0,0xfff
    and	$t1,$a5,$t1
    or	$t0,$t0,$t1
    sw	$t0,24($a0)
    lw	$a7,8($a2)
    mtc1	$a7,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d983f48
    # Line 631
    lwc1	$f4,_lit_45800000
    b	.L0d983f4c
    lwc1	$f4,_lit_457ff000
.L0d983f48:
    mul.s	$f4,$f7,$f4
.L0d983f4c:
    trunc.l.s	$f5,$f4
    dmfc1	$t2,$f5
    sll	$t2,$t2,0x0
    lw	$t1,28($a0)
    andi	$t2,$t2,0xfff
    and	$t1,$a1,$t1
    sll	$t2,$t2,0xc
    or	$t1,$t1,$t2
    sw	$t1,28($a0)
.L0d983f70:
    # Line 643
    lui	$a0,0x1
    addu	$a1,$a0,$a4
    lw	$t3,-26576($a1)
    beqz	$t3,.L0d984030
    # Line 645
    ori	$a2,$a0,0x3c4d
    sw	$zero,-26576($a1)
    ori	$v1,$a0,0x443
    sw	$v1,0($a0)
    li	$v0,250
    sw	$v0,0($a0)
    ori	$at,$a0,0x46
    sw	$at,0($a0)
    sw	$at,0($a0)
    ori	$t9,$a0,0x3c4d
    sw	$t9,0($a0)
    lw	$t8,31856($a4)
    sw	$t8,0($a0)
    lw	$t3,31860($a4)
    sw	$t3,0($a0)
    lw	$t2,31864($a4)
    sw	$t2,0($a0)
    lw	$t1,31868($a4)
    sw	$t1,0($a0)
    lw	$t0,31872($a4)
    sw	$t0,0($a0)
    lw	$a7,31876($a4)
    sw	$a7,0($a0)
    lw	$a6,31880($a4)
    sw	$a6,0($a0)
    lw	$a5,31884($a4)
    sw	$a5,0($a0)
    lw	$a3,31888($a4)
    sw	$a3,0($a0)
    lw	$a2,31892($a4)
    sw	$a2,0($a0)
    lw	$a1,31896($a4)
    sw	$a1,0($a0)
    lw	$v1,31900($a4)
    sw	$v1,0($a0)
    lw	$v0,31904($a4)
    sw	$v0,0($a0)
    lw	$at,31908($a4)
    sw	$at,0($a0)
    lw	$t9,31912($a4)
    sw	$t9,0($a0)
    lw	$t8,31916($a4)
    # Line 647
    jr	$ra
    # Line 645
    sw	$t8,0($a0)
.L0d984030:
    sw	$a2,0($a0)
    lw	$a1,31856($a4)
    sw	$a1,0($a0)
    lw	$v1,31860($a4)
    sw	$v1,0($a0)
    lw	$v0,31864($a4)
    sw	$v0,0($a0)
    lw	$at,31868($a4)
    sw	$at,0($a0)
    lw	$t9,31872($a4)
    sw	$t9,0($a0)
    lw	$t8,31876($a4)
    sw	$t8,0($a0)
    lw	$t3,31880($a4)
    sw	$t3,0($a0)
    lw	$t2,31884($a4)
    sw	$t2,0($a0)
    lw	$t1,31888($a4)
    sw	$t1,0($a0)
    lw	$t0,31892($a4)
    sw	$t0,0($a0)
    lw	$a7,31896($a4)
    sw	$a7,0($a0)
    lw	$a6,31900($a4)
    sw	$a6,0($a0)
    lw	$a5,31904($a4)
    sw	$a5,0($a0)
    lw	$a3,31908($a4)
    sw	$a3,0($a0)
    lw	$a2,31912($a4)
    sw	$a2,0($a0)
    lw	$a1,31916($a4)
    # Line 647
    jr	$ra
    # Line 645
    sw	$a1,0($a0)
.L0d9840b8:
    # Line 601
    bnez	$a3,.L0d98414c
    sltiu	$a5,$a1,5635
    beqz	$a5,.L0d983f70
    nop
    lw	$a6,0($a2)
    mtc1	$a6,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f8
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f7
    c.le.d $f5,$f8
    bc1f .L0d9842f4
    # Line 616
    lwc1	$f8,_lit_457ff000
    b	.L0d9842fc
    nop
.L0d984104:
    # Line 601
    li	$a7,4608
    bne	$a1,$a7,.L0d983f70
    nop
    lw	$t0,0($a2)
    mtc1	$t0,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f8
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d984520
    # Line 603
    lwc1	$f8,_lit_45800000
    b	.L0d984524
    lwc1	$f8,_lit_457ff000
.L0d98414c:
    # Line 601
    li	$t1,5633
    bne	$a1,$t1,.L0d983f70
    nop
    lw	$t2,0($a2)
    mtc1	$t2,$f4
    ldc1	$f9,_lit8_405ffe0068db8bac
    cvt.d.w	$f4,$f4
    c.lt.d $f9,$f4
    bc1f .L0d9846e0
    lw	$a1,28($a0)
    # Line 636
    ori	$t3,$a1,0xfff
    b	.L0d983f70
    sw	$t3,28($a0)
.L0d984180:
    # Line 609
    mul.s	$f8,$f7,$f8
.L0d984184:
    trunc.l.s	$f10,$f8
    dmfc1	$a6,$f10
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    lw	$a5,8($a0)
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,8($a0)
    lw	$t8,4($a2)
    mtc1	$t8,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d9841e0
    # Line 610
    lwc1	$f8,_lit_45800000
    b	.L0d9841e4
    lwc1	$f8,_lit_457ff000
.L0d9841e0:
    mul.s	$f8,$f7,$f8
.L0d9841e4:
    trunc.l.s	$f10,$f8
    dmfc1	$t2,$f10
    li	$a7,-4096
    sll	$t2,$t2,0x0
    and	$t1,$a7,$a5
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    sw	$t1,8($a0)
    lw	$t0,8($a2)
    mtc1	$t0,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d	$f5,$f9
    bc1f	.L0d984234
    # Line 611
    lwc1	$f8,_lit_45800000
    b	.L0d984238
    lwc1	$f8,_lit_457ff000
.L0d984234:
    mul.s	$f8,$f7,$f8
.L0d984238:
    trunc.l.s	$f10,$f8
    dmfc1	$a6,$f10
    sll	$a6,$a6,0x0
    lw	$a5,12($a0)
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,12($a0)
    lw	$t3,12($a2)
    mtc1	$t3,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d98428c
    # Line 612
    lwc1	$f4,_lit_45800000
    b	.L0d984290
    lwc1	$f4,_lit_457ff000
.L0d98428c:
    mul.s	$f4,$f7,$f4
.L0d984290:
    trunc.l.s	$f5,$f4
    dmfc1	$t1,$f5
    sll	$t1,$t1,0x0
    and	$t0,$a7,$a5
    andi	$t1,$t1,0xfff
    or	$t0,$t0,$t1
    # Line 613
    b	.L0d983f70
    # Line 612
    sw	$t0,12($a0)
.L0d9842b0:
    # Line 601
    bne	$a1,$t2,.L0d983f70
    nop
    lw	$t3,0($a2)
    mtc1	$t3,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f8
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f7
    c.le.d $f5,$f8
    bc1f .L0d984600
    # Line 623
    lwc1	$f8,_lit_45800000
    b	.L0d984604
    lwc1	$f8,_lit_457ff000
.L0d9842f4:
    # Line 616
    lwc1	$f8,_lit_45800000
    mul.s	$f8,$f7,$f8
.L0d9842fc:
    trunc.l.s	$f10,$f8
    dmfc1	$a6,$f10
    lw	$a5,8($a0)
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,8($a0)
    lw	$t8,0($a2)
    mtc1	$t8,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1t .L0d984358
    lwc1	$f8,_lit_457ff000
    lwc1	$f8,_lit_45800000
    mul.s	$f8,$f7,$f8
.L0d984358:
    trunc.l.s	$f10,$f8
    dmfc1	$a7,$f10
    lw	$a6,0($a0)
    sll	$a7,$a7,0x0
    andi	$a7,$a7,0xfff
    and	$a6,$a1,$a6
    sll	$a7,$a7,0xc
    or	$a6,$a6,$a7
    sw	$a6,0($a0)
    lw	$a7,4($a2)
    mtc1	$a7,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d9843ac
    # Line 617
    lwc1	$f8,_lit_45800000
    b	.L0d9843b0
    lwc1	$f8,_lit_457ff000
.L0d9843ac:
    mul.s	$f8,$f7,$f8
.L0d9843b0:
    trunc.l.s	$f10,$f8
    dmfc1	$t2,$f10
    li	$a7,-4096
    sll	$t2,$t2,0x0
    and	$t1,$a7,$a5
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    sw	$t1,8($a0)
    lw	$t0,4($a2)
    mtc1	$t0,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d984400
    lwc1	$f8,_lit_45800000
    b	.L0d984404
    lwc1	$f8,_lit_457ff000
.L0d984400:
    mul.s	$f8,$f7,$f8
.L0d984404:
    trunc.l.s	$f10,$f8
    dmfc1	$t9,$f10
    sll	$t9,$t9,0x0
    and	$t8,$a7,$a6
    andi	$t9,$t9,0xfff
    or	$t8,$t8,$t9
    sw	$t8,0($a0)
    lw	$t3,8($a2)
    mtc1	$t3,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d984450
    # Line 618
    lwc1	$f8,_lit_45800000
    b	.L0d984454
    lwc1	$f8,_lit_457ff000
.L0d984450:
    mul.s	$f8,$f7,$f8
.L0d984454:
    trunc.l.s	$f10,$f8
    dmfc1	$a6,$f10
    lw	$a5,12($a0)
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,12($a0)
    lw	$at,8($a2)
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1t .L0d9844a8
    lwc1	$f8,_lit_457ff000
    lwc1	$f8,_lit_45800000
    mul.s	$f8,$f7,$f8
.L0d9844a8:
    trunc.l.s	$f10,$f8
    dmfc1	$t2,$f10
    lw	$t1,4($a0)
    sll	$t2,$t2,0x0
    andi	$t2,$t2,0xfff
    and	$t1,$a1,$t1
    sll	$t2,$t2,0xc
    or	$t1,$t1,$t2
    sw	$t1,4($a0)
    lw	$t0,12($a2)
    mtc1	$t0,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d	$f5,$f9
    bc1f	.L0d9844fc
    # Line 619
    lwc1	$f4,_lit_45800000
    b	.L0d984500
    lwc1	$f4,_lit_457ff000
.L0d9844fc:
    mul.s	$f4,$f7,$f4
.L0d984500:
    trunc.l.s	$f5,$f4
    dmfc1	$t8,$f5
    sll	$t8,$t8,0x0
    and	$t3,$a7,$a5
    andi	$t8,$t8,0xfff
    or	$t3,$t3,$t8
    # Line 620
    b	.L0d983f70
    # Line 619
    sw	$t3,12($a0)
.L0d984520:
    # Line 603
    mul.s	$f8,$f7,$f8
.L0d984524:
    trunc.l.s	$f10,$f8
    dmfc1	$a7,$f10
    lui	$a1,0xff00
    sll	$a7,$a7,0x0
    lw	$a6,0($a0)
    ori	$a1,$a1,0xfff
    andi	$a7,$a7,0xfff
    and	$a6,$a1,$a6
    sll	$a7,$a7,0xc
    or	$a6,$a6,$a7
    sw	$a6,0($a0)
    lw	$t9,4($a2)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d984580
    # Line 604
    lwc1	$f8,_lit_45800000
    b	.L0d984584
    lwc1	$f8,_lit_457ff000
.L0d984580:
    mul.s	$f8,$f7,$f8
.L0d984584:
    trunc.l.s	$f10,$f8
    dmfc1	$t1,$f10
    sll	$t1,$t1,0x0
    li	$t2,-4096
    andi	$t1,$t1,0xfff
    and	$t2,$a6,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a0)
    lw	$t0,8($a2)
    mtc1	$t0,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d9845d4
    # Line 605
    lwc1	$f4,_lit_45800000
    b	.L0d9845d8
    lwc1	$f4,_lit_457ff000
.L0d9845d4:
    mul.s	$f4,$f7,$f4
.L0d9845d8:
    trunc.l.s	$f5,$f4
    dmfc1	$t3,$f5
    sll	$t3,$t3,0x0
    lw	$t2,4($a0)
    andi	$t3,$t3,0xfff
    and	$t2,$a1,$t2
    sll	$t3,$t3,0xc
    or	$t2,$t2,$t3
    b	.L0d983f70
    sw	$t2,4($a0)
.L0d984600:
    # Line 623
    mul.s	$f8,$f7,$f8
.L0d984604:
    trunc.l.s	$f10,$f8
    dmfc1	$a6,$f10
    lui	$a1,0xff00
    sll	$a6,$a6,0x0
    lw	$a5,16($a0)
    ori	$a1,$a1,0xfff
    andi	$a6,$a6,0xfff
    and	$a5,$a1,$a5
    sll	$a6,$a6,0xc
    or	$a5,$a5,$a6
    sw	$a5,16($a0)
    lw	$t8,4($a2)
    mtc1	$t8,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d984660
    # Line 624
    lwc1	$f8,_lit_45800000
    b	.L0d984664
    lwc1	$f8,_lit_457ff000
.L0d984660:
    mul.s	$f8,$f7,$f8
.L0d984664:
    trunc.l.s	$f10,$f8
    dmfc1	$t0,$f10
    sll	$t0,$t0,0x0
    li	$t1,-4096
    andi	$t0,$t0,0xfff
    and	$t1,$a5,$t1
    or	$t0,$t0,$t1
    sw	$t0,16($a0)
    lw	$a7,8($a2)
    mtc1	$a7,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f9,$f7
    c.le.d $f5,$f9
    bc1f .L0d9846b4
    # Line 625
    lwc1	$f4,_lit_45800000
    b	.L0d9846b8
    lwc1	$f4,_lit_457ff000
.L0d9846b4:
    mul.s	$f4,$f7,$f4
.L0d9846b8:
    trunc.l.s	$f5,$f4
    dmfc1	$t2,$f5
    sll	$t2,$t2,0x0
    lw	$t1,20($a0)
    andi	$t2,$t2,0xfff
    and	$t1,$a1,$t1
    sll	$t2,$t2,0xc
    or	$t1,$t1,$t2
    # Line 626
    b	.L0d983f70
    # Line 625
    sw	$t1,20($a0)
.L0d9846e0:
    # Line 638
    ldc1	$f6,_lit8_4040000000000000
    mul.d	$f6,$f4,$f6
    trunc.l.d	$f6,$f6
    dmfc1	$t3,$f6
    sll	$t3,$t3,0x0
    li	$t8,-4096
    andi	$t3,$t3,0xfff
    and	$t8,$a1,$t8
    or	$t3,$t3,$t8
    b	.L0d983f70
    sw	$t3,28($a0)
.end ApplyMaterialI

# Function: ApplyParameterF
# Declared: Line 653 (Source lines: 654-696)
# Address: 0x0d984710 - 0x0d984878 (Size: 360 bytes, Frame: 16)
.ent ApplyParameterF
ApplyParameterF:
    # Line 654
    addiu	$sp,$sp,-16
    # Line 655
    sltiu	$at,$a2,5632
    sltiu	$v1,$a2,5634
    sltiu	$v0,$a2,5633
    bnez	$at,.L0d98476c
    # Line 654
    move	$a5,$a1
    # Line 655
    li	$t1,5633
    bnez	$v0,.L0d984838
    # Line 662
    nop	# was lw $t9, -26176($gp) # &__glScaleColorf
    # Line 655
    bnez	$v1,.L0d9847c4
    sltiu	$a0,$a2,5635
    bnez	$a0,.L0d984800
    nop
    li	$a1,5635
    bne	$a2,$a1,.L0d9847bc
    nop
    # Line 657
    lwc1	$f2,0($a3)
    swc1	$f2,68($a5)
    # Line 658
    lwc1	$f1,4($a3)
    swc1	$f1,76($a5)
    # Line 659
    lwc1	$f0,8($a3)
    # Line 660
    b	.L0d9847bc
    # Line 659
    swc1	$f0,72($a5)
.L0d98476c:
    # Line 655
    li	$a7,4610
    sltiu	$a4,$a2,4609
    sltiu	$a6,$a2,4610
    bnez	$a4,.L0d9847b4
    li	$t0,4608
    bnez	$a6,.L0d9847d8
    nop
    bne	$a2,$a7,.L0d9847bc
    nop
    # Line 665
    lwc1	$f6,0($a3)
    swc1	$f6,32($a1)
    # Line 666
    lwc1	$f5,4($a3)
    swc1	$f5,36($a1)
    # Line 667
    lwc1	$f4,8($a3)
    swc1	$f4,40($a1)
    # Line 668
    lwc1	$f3,12($a3)
    # Line 669
    b	.L0d9847bc
    # Line 668
    swc1	$f3,44($a1)
.L0d9847b4:
    # Line 655
    beq	$a2,$t0,.L0d984850
    nop
.L0d9847bc:
    # Line 696
    jr	$ra
    addiu	$sp,$sp,16
.L0d9847c4:
    # Line 655
    bne	$a2,$t1,.L0d9847bc
    nop
    # Line 671
    lwc1	$f7,0($a3)
    # Line 672
    b	.L0d9847bc
    # Line 671
    swc1	$f7,64($a1)
.L0d9847d8:
    # Line 680
    lwc1	$f11,0($a3)
    swc1	$f11,16($a1)
    # Line 681
    lwc1	$f10,4($a3)
    swc1	$f10,20($a1)
    # Line 682
    lwc1	$f9,8($a3)
    swc1	$f9,24($a1)
    # Line 683
    lwc1	$f8,12($a3)
    # Line 696
    addiu	$sp,$sp,16
    jr	$ra
    # Line 683
    swc1	$f8,28($a1)
.L0d984800:
    # Line 686
    lwc1	$f13,0($a3)
    swc1	$f13,0($a1)
    # Line 687
    lwc1	$f14,4($a3)
    swc1	$f14,4($a1)
    # Line 688
    lwc1	$f15,8($a3)
    swc1	$f15,8($a1)
    # Line 689
    lwc1	$f12,12($a3)
    # Line 690
    swc1	$f15,24($a1)
    swc1	$f14,20($a1)
    swc1	$f13,16($a1)
    swc1	$f12,28($a1)
    # Line 696
    addiu	$sp,$sp,16
    jr	$ra
    # Line 689
    swc1	$f12,12($a1)
.L0d984838:
    # Line 662
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColorf
    addiu	$a1,$a1,48
    b	.L0d9847bc
    ld	$ra,0($sp)
.L0d984850:
    # Line 674
    lwc1	$f19,0($a3)
    swc1	$f19,0($a1)
    # Line 675
    lwc1	$f18,4($a3)
    swc1	$f18,4($a1)
    # Line 676
    lwc1	$f17,8($a3)
    swc1	$f17,8($a1)
    # Line 677
    lwc1	$f16,12($a3)
    # Line 696
    addiu	$sp,$sp,16
    jr	$ra
    # Line 677
    swc1	$f16,12($a1)
.end ApplyParameterF

# Function: __glim_FragmentMaterialfvSGIX
# Declared: Line 699 (Source lines: 699-721)
# Address: 0x0d984880 - 0x0d9849bc (Size: 316 bytes, Frame: 48)
.globl __glim_FragmentMaterialfvSGIX
.ent __glim_FragmentMaterialfvSGIX
__glim_FragmentMaterialfvSGIX:
    # Line 703
    lwc1	$f14,0($a2)
    # Line 701
    lw	$at,4112($zero)
    # Line 699
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v1,0x17
    sd	$a1,8($sp)
    addiu	$v1,$v1,15632
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 703
    # lw $t9, -27380($gp) # &__glErrorCheckMaterial
    # Line 699
    sd	$ra,32($sp)
    move	$v0,$a2
    sd	$s0,24($sp)
    # Line 703
    nop
    # Line 699
    move	$s0,$a0
    # Line 703
    jal	__glErrorCheckMaterial
    # Line 701
    sd	$at,0($sp)
    # Line 703
    beqz	$v0,.L0d9848e0
    # Line 709
    li	$a1,1029
    # Line 705
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9848fc
    ld	$ra,32($sp)
.L0d9848e0:
    # Line 709
    li	$a0,1028
    beq	$s0,$a0,.L0d984960
    # Line 711
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 709
    beq	$s0,$a1,.L0d98498c
    li	$a2,1032
    beq	$s0,$a2,.L0d98490c
    ld	$ra,32($sp)
.L0d9848fc:
    ld	$s0,24($sp)
    # Line 721
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98490c:
    # Line 717
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$s0,0($sp)
    lui	$a1,0x1
    addiu	$t9,$t9,18192
    ld	$a2,8($sp)
    ori	$a1,$a1,0x6544
    move	$a0,$s0
    ld	$a3,16($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addu	$a1,$s0,$a1
    # Line 718
    # lw $t9, -32732($gp) # &sub_0d980000
    lui	$a1,0x1
    addiu	$t9,$t9,18192
    move	$a0,$s0
    ld	$a2,8($sp)
    ori	$a1,$a1,0x64f4
    ld	$a3,16($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addu	$a1,$s0,$a1
    b	.L0d9848fc
    ld	$ra,32($sp)
.L0d984960:
    # Line 711
    ld	$a1,0($sp)
    lui	$a4,0x1
    addiu	$t9,$t9,18192
    ld	$a3,16($sp)
    ori	$a4,$a4,0x64f4
    move	$a0,$a1
    ld	$a2,8($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addu	$a1,$a1,$a4
    b	.L0d9848fc
    ld	$ra,32($sp)
.L0d98498c:
    # Line 714
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a1,0($sp)
    lui	$a4,0x1
    addiu	$t9,$t9,18192
    ld	$a3,16($sp)
    ori	$a4,$a4,0x6544
    move	$a0,$a1
    ld	$a2,8($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addu	$a1,$a1,$a4
    b	.L0d9848fc
    ld	$ra,32($sp)
.end __glim_FragmentMaterialfvSGIX

# Function: __glOdyim_FragmentMaterialfvSGIX
# Declared: Line 723 (Source lines: 724-743)
# Address: 0x0d9849c0 - 0x0d984aac (Size: 236 bytes, Frame: 48)
.globl __glOdyim_FragmentMaterialfvSGIX
.ent __glOdyim_FragmentMaterialfvSGIX
__glOdyim_FragmentMaterialfvSGIX:
    # Line 725
    lw	$at,4112($zero)
    # Line 724
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x17
    sd	$a1,8($sp)
    addiu	$v0,$v0,15312
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 727
    # lw $t9, -31712($gp) # &__glim_FragmentMaterialfvSGIX
    # Line 724
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    # Line 727
    nop
    # Line 724
    move	$s0,$a0
    # Line 727
    bal __glim_FragmentMaterialfvSGIX
    # Line 725
    sd	$at,0($sp)
    # Line 729
    li	$v1,1028
    li	$a0,1029
    beq	$s0,$v1,.L0d984a68
    li	$a1,1032
    beq	$s0,$a0,.L0d984a8c
    # Line 735
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 729
    beq	$s0,$a1,.L0d984a2c
    ld	$ra,32($sp)
.L0d984a1c:
    ld	$s0,24($sp)
    # Line 743
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d984a2c:
    # Line 739
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$s0,0($sp)
    addiu	$t9,$t9,13952
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addiu	$a0,$s0,31856
    # Line 740
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,13952
    ld	$a1,8($sp)
    addiu	$a0,$s0,31888
    bal __glOdyim_FragmentLightModeliSGIX
    ld	$a2,16($sp)
    b	.L0d984a1c
    ld	$ra,32($sp)
.L0d984a68:
    # Line 731
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a0,0($sp)
    addiu	$t9,$t9,13952
    ld	$a2,16($sp)
    ld	$a1,8($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addiu	$a0,$a0,31856
    b	.L0d984a1c
    ld	$ra,32($sp)
.L0d984a8c:
    # Line 735
    ld	$a0,0($sp)
    addiu	$t9,$t9,13952
    ld	$a2,16($sp)
    ld	$a1,8($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addiu	$a0,$a0,31888
    b	.L0d984a1c
    ld	$ra,32($sp)
.end __glOdyim_FragmentMaterialfvSGIX

# Function: __glOdyim_FragmentMaterialfSGIX
# Declared: Line 745 (Source lines: 746-756)
# Address: 0x0d984ab0 - 0x0d984b04 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_FragmentMaterialfSGIX
.ent __glOdyim_FragmentMaterialfSGIX
__glOdyim_FragmentMaterialfSGIX:
    # Line 746
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 748
    li	$at,5633
    # Line 746
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,15072
    sd	$gp,0($sp)
    # Line 748
    beq	$a1,$at,.L0d984af0
    # Line 746
    addu	$gp,$t9,$v0
    # Line 753
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d984ae4:
    # Line 756
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d984af0:
    # Line 750
    # lw $t9, -31708($gp) # &__glOdyim_FragmentMaterialfvSGIX
    bal __glOdyim_FragmentMaterialfvSGIX
    addiu	$a2,$sp,32
    b	.L0d984ae4
    ld	$ra,8($sp)
.end __glOdyim_FragmentMaterialfSGIX

# Function: ApplyParameterI
# Declared: Line 758 (Source lines: 759-800)
# Address: 0x0d984b10 - 0x0d984e00 (Size: 752 bytes, Frame: 16)
.ent ApplyParameterI
ApplyParameterI:
    # Line 759
    addiu	$sp,$sp,-16
    # Line 760
    sltiu	$at,$a2,5632
    li	$a4,5635
    sltiu	$v0,$a2,5633
    bnez	$at,.L0d984b7c
    # Line 759
    move	$a5,$a1
    # Line 760
    bnez	$v0,.L0d984d64
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0d984c30
    sltiu	$a1,$a2,5635
    bnez	$a1,.L0d984cd4
    nop
    bne	$a2,$a4,.L0d984c28
    nop
    # Line 762
    lw	$t0,0($a3)
    mtc1	$t0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,68($a5)
    # Line 763
    lw	$a7,4($a3)
    mtc1	$a7,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,76($a5)
    # Line 764
    lw	$a6,8($a3)
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    # Line 765
    b	.L0d984c28
    # Line 764
    swc1	$f0,72($a5)
.L0d984b7c:
    # Line 760
    li	$t3,4610
    sltiu	$t1,$a2,4609
    sltiu	$t2,$a2,4610
    bnez	$t1,.L0d984c20
    li	$v1,4608
    bnez	$t2,.L0d984c54
    nop
    bne	$a2,$t3,.L0d984c28
    nop
    # Line 770
    lw	$v0,0($a3)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f12,$f4,$f12,$f6
    lwc1	$f11,3568($a0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,32($a1)
    # Line 771
    lw	$at,4($a3)
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f10,$f4,$f10,$f6
    lwc1	$f9,3568($a0)
    mul.s	$f9,$f9,$f10
    swc1	$f9,36($a1)
    # Line 772
    lw	$t9,8($a3)
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,40($a1)
    # Line 773
    lw	$t8,12($a3)
    mtc1	$t8,$f5
    cvt.s.w	$f5,$f5
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f3,3568($a0)
    mul.s	$f3,$f3,$f4
    # Line 800
    addiu	$sp,$sp,16
    jr	$ra
    # Line 773
    swc1	$f3,44($a1)
.L0d984c20:
    # Line 760
    beq	$a2,$v1,.L0d984d80
    nop
.L0d984c28:
    # Line 800
    jr	$ra
    addiu	$sp,$sp,16
.L0d984c30:
    # Line 760
    li	$a0,5633
    bne	$a2,$a0,.L0d984c28
    nop
    # Line 776
    lw	$a1,0($a3)
    mtc1	$a1,$f13
    cvt.s.w	$f13,$f13
    # Line 800
    addiu	$sp,$sp,16
    jr	$ra
    # Line 776
    swc1	$f13,64($a5)
.L0d984c54:
    # Line 785
    lw	$a7,0($a3)
    mtc1	$a7,$f27
    cvt.s.w	$f27,$f27
    lwc1	$f17,_lit_40000000
    lwc1	$f15,_lit_3f800000
    madd.s	$f27,$f15,$f27,$f17
    lwc1	$f25,3568($a0)
    mul.s	$f25,$f25,$f27
    swc1	$f25,16($a1)
    # Line 786
    lw	$a6,4($a3)
    mtc1	$a6,$f23
    cvt.s.w	$f23,$f23
    madd.s	$f23,$f15,$f23,$f17
    lwc1	$f21,3568($a0)
    mul.s	$f21,$f21,$f23
    swc1	$f21,20($a1)
    # Line 787
    lw	$a4,8($a3)
    mtc1	$a4,$f19
    cvt.s.w	$f19,$f19
    madd.s	$f19,$f15,$f19,$f17
    lwc1	$f18,3568($a0)
    mul.s	$f18,$f18,$f19
    swc1	$f18,24($a1)
    # Line 788
    lw	$a2,12($a3)
    mtc1	$a2,$f16
    cvt.s.w	$f16,$f16
    madd.s	$f15,$f15,$f16,$f17
    lwc1	$f14,3568($a0)
    mul.s	$f14,$f14,$f15
    # Line 800
    addiu	$sp,$sp,16
    jr	$ra
    # Line 788
    swc1	$f14,28($a1)
.L0d984cd4:
    # Line 791
    lw	$t3,0($a3)
    mtc1	$t3,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f4,_lit_40000000
    lwc1	$f31,_lit_3f800000
    madd.s	$f1,$f31,$f1,$f4
    lwc1	$f0,3568($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a5)
    # Line 792
    lw	$t2,4($a3)
    mtc1	$t2,$f2
    cvt.s.w	$f2,$f2
    madd.s	$f2,$f31,$f2,$f4
    lwc1	$f1,3568($a0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a5)
    # Line 793
    lw	$t1,8($a3)
    mtc1	$t1,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f3,$f31,$f3,$f4
    lwc1	$f2,3568($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a5)
    # Line 794
    lw	$t0,12($a3)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f31,$f31,$f3,$f4
    lwc1	$f29,3568($a0)
    # Line 795
    swc1	$f2,24($a5)
    swc1	$f1,20($a5)
    swc1	$f0,16($a5)
    # Line 794
    mul.s	$f29,$f29,$f31
    # Line 795
    swc1	$f29,28($a5)
    # Line 800
    addiu	$sp,$sp,16
    jr	$ra
    # Line 794
    swc1	$f29,12($a5)
.L0d984d64:
    # Line 767
    # lw $t9, -26164($gp) # &__glScaleColori
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColori
    addiu	$a1,$a1,48
    b	.L0d984c28
    ld	$ra,0($sp)
.L0d984d80:
    # Line 779
    lw	$v0,0($a3)
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f5,_lit_40000000
    lwc1	$f3,_lit_3f800000
    madd.s	$f11,$f3,$f11,$f5
    lwc1	$f10,3568($a0)
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($a1)
    # Line 780
    lw	$at,4($a3)
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f3,$f9,$f5
    lwc1	$f8,3568($a0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,4($a1)
    # Line 781
    lw	$t9,8($a3)
    mtc1	$t9,$f7
    cvt.s.w	$f7,$f7
    madd.s	$f7,$f3,$f7,$f5
    lwc1	$f6,3568($a0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,8($a1)
    # Line 782
    lw	$t8,12($a3)
    mtc1	$t8,$f4
    cvt.s.w	$f4,$f4
    madd.s	$f3,$f3,$f4,$f5
    lwc1	$f2,3568($a0)
    mul.s	$f2,$f2,$f3
    # Line 800
    addiu	$sp,$sp,16
    jr	$ra
    # Line 782
    swc1	$f2,12($a1)
.end ApplyParameterI

# Function: __glim_FragmentMaterialivSGIX
# Declared: Line 803 (Source lines: 803-825)
# Address: 0x0d984e00 - 0x0d984f74 (Size: 372 bytes, Frame: 48)
.globl __glim_FragmentMaterialivSGIX
.ent __glim_FragmentMaterialivSGIX
__glim_FragmentMaterialivSGIX:
    # Line 803
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    sd	$s1,16($sp)
    sd	$s2,24($sp)
    move	$s2,$a2
    move	$s1,$a1
    # Line 805
    lw	$at,4120($zero)
    li	$v0,1
    # Line 803
    lui	$v1,0x17
    sd	$s0,8($sp)
    addiu	$v1,$v1,14224
    move	$s0,$a0
    # Line 805
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d984eb0
    # Line 803
    addu	$gp,$t9,$v1
    # Line 807
    lw	$a2,0($a2)
    # lw $t9, -27380($gp) # &__glErrorCheckMaterial
    mtc1	$a2,$f14
    move	$a0,$s0
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0d984e78
    # Line 813
    li	$a4,1029
    # Line 809
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d984e98
    ld	$s0,8($sp)
.L0d984e78:
    # Line 813
    li	$a3,1028
    beq	$s0,$a3,.L0d984f18
    # Line 815
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 813
    beq	$s0,$a4,.L0d984f44
    li	$a5,1032
    beq	$s0,$a5,.L0d984ec4
    # Line 821
    la	$s0,sub_0d980000
    ld	$s0,8($sp)
.L0d984e98:
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 825
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d984eb0:
    # Line 805
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d984e98
    ld	$s0,8($sp)
.L0d984ec4:
    # Line 821
    move	$a3,$s2
    ld	$a1,0($sp)
    lui	$a2,0x1
    addiu	$s0,$s0,19216
    ori	$a2,$a2,0x6544
    move	$t9,$s0
    move	$a0,$a1
    addu	$a1,$a1,$a2
    bal __glOdyim_FragmentMaterialfSGIX
    move	$a2,$s1
    # Line 822
    move	$a3,$s2
    ld	$a1,0($sp)
    lui	$a2,0x1
    move	$t9,$s0
    ori	$a2,$a2,0x64f4
    move	$a0,$a1
    addu	$a1,$a1,$a2
    bal __glOdyim_FragmentMaterialfSGIX
    move	$a2,$s1
    b	.L0d984e98
    ld	$s0,8($sp)
.L0d984f18:
    # Line 815
    move	$a3,$s2
    move	$a2,$s1
    ld	$a1,0($sp)
    lui	$a4,0x1
    addiu	$t9,$t9,19216
    ori	$a4,$a4,0x64f4
    move	$a0,$a1
    bal __glOdyim_FragmentMaterialfSGIX
    addu	$a1,$a1,$a4
    b	.L0d984e98
    ld	$s0,8($sp)
.L0d984f44:
    # Line 818
    # lw $t9, -32732($gp) # &sub_0d980000
    move	$a3,$s2
    move	$a2,$s1
    ld	$a1,0($sp)
    lui	$a4,0x1
    addiu	$t9,$t9,19216
    ori	$a4,$a4,0x6544
    move	$a0,$a1
    bal __glOdyim_FragmentMaterialfSGIX
    addu	$a1,$a1,$a4
    b	.L0d984e98
    ld	$s0,8($sp)
.end __glim_FragmentMaterialivSGIX

# Function: __glOdyim_FragmentMaterialivSGIX
# Declared: Line 827 (Source lines: 828-847)
# Address: 0x0d984f80 - 0x0d98506c (Size: 236 bytes, Frame: 48)
.globl __glOdyim_FragmentMaterialivSGIX
.ent __glOdyim_FragmentMaterialivSGIX
__glOdyim_FragmentMaterialivSGIX:
    # Line 829
    lw	$at,4112($zero)
    # Line 828
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x17
    sd	$a1,8($sp)
    addiu	$v0,$v0,13840
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 831
    # lw $t9, -31700($gp) # &__glim_FragmentMaterialivSGIX
    # Line 828
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    # Line 831
    nop
    # Line 828
    move	$s0,$a0
    # Line 831
    bal __glim_FragmentMaterialivSGIX
    # Line 829
    sd	$at,0($sp)
    # Line 833
    li	$v1,1028
    li	$a0,1029
    beq	$s0,$v1,.L0d985028
    li	$a1,1032
    beq	$s0,$a0,.L0d98504c
    # Line 839
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 833
    beq	$s0,$a1,.L0d984fec
    ld	$ra,32($sp)
.L0d984fdc:
    ld	$s0,24($sp)
    # Line 847
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d984fec:
    # Line 843
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$s0,0($sp)
    addiu	$t9,$t9,15856
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addiu	$a0,$s0,31856
    # Line 844
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,15856
    ld	$a1,8($sp)
    addiu	$a0,$s0,31888
    bal __glOdyim_FragmentLightModeliSGIX
    ld	$a2,16($sp)
    b	.L0d984fdc
    ld	$ra,32($sp)
.L0d985028:
    # Line 835
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a0,0($sp)
    addiu	$t9,$t9,15856
    ld	$a2,16($sp)
    ld	$a1,8($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addiu	$a0,$a0,31856
    b	.L0d984fdc
    ld	$ra,32($sp)
.L0d98504c:
    # Line 839
    ld	$a0,0($sp)
    addiu	$t9,$t9,15856
    ld	$a2,16($sp)
    ld	$a1,8($sp)
    bal __glOdyim_FragmentLightModeliSGIX
    addiu	$a0,$a0,31888
    b	.L0d984fdc
    ld	$ra,32($sp)
.end __glOdyim_FragmentMaterialivSGIX

# Function: __glOdyim_FragmentMaterialiSGIX
# Declared: Line 849 (Source lines: 850-860)
# Address: 0x0d985070 - 0x0d9850c4 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_FragmentMaterialiSGIX
.ent __glOdyim_FragmentMaterialiSGIX
__glOdyim_FragmentMaterialiSGIX:
    # Line 850
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 852
    li	$at,5633
    # Line 850
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,13600
    sd	$gp,0($sp)
    # Line 852
    beq	$a1,$at,.L0d9850b0
    # Line 850
    addu	$gp,$t9,$v0
    # Line 857
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9850a4:
    # Line 860
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9850b0:
    # Line 854
    # lw $t9, -31696($gp) # &__glOdyim_FragmentMaterialivSGIX
    bal __glOdyim_FragmentMaterialivSGIX
    addiu	$a2,$sp,36
    b	.L0d9850a4
    ld	$ra,8($sp)
.end __glOdyim_FragmentMaterialiSGIX

# Function: __glOdyim_FragmentColorMaterialSGIX
# Declared: Line 863 (Source lines: 863-892)
# Address: 0x0d9850d0 - 0x0d9851c0 (Size: 240 bytes, Frame: 16)
.globl __glOdyim_FragmentColorMaterialSGIX
.ent __glOdyim_FragmentColorMaterialSGIX
__glOdyim_FragmentColorMaterialSGIX:
    # Line 891
    li	$t3,2
    # Line 863
    addiu	$sp,$sp,-16
    # Line 864
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 863
    lui	$v1,0x17
    # Line 877
    li	$t2,5634
    sd	$ra,8($sp)
    # Line 863
    addiu	$v1,$v1,13504
    sd	$gp,0($sp)
    # Line 864
    beq	$at,$v0,.L0d9851ac
    # Line 863
    addu	$gp,$t9,$v1
    # Line 866
    li	$a2,1028
    # Line 889
    lui	$t9,0x1
    # Line 866
    beq	$a0,$a2,.L0d98513c
    # Line 889
    addu	$t9,$a3,$t9
    # Line 866
    li	$a4,1029
    beq	$a0,$a4,.L0d985140
    # Line 877
    li	$a6,4608
    # Line 866
    li	$a5,1032
    beq	$a0,$a5,.L0d985140
    # Line 877
    li	$a6,4608
    # Line 873
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d985178
    ld	$ra,8($sp)
.L0d98513c:
    # Line 877
    li	$a6,4608
.L0d985140:
    beq	$a1,$a6,.L0d985184
    li	$a7,4609
    beq	$a1,$a7,.L0d985184
    li	$t0,4610
    beq	$a1,$t0,.L0d985184
    li	$t1,5632
    beq	$a1,$t1,.L0d985184
    nop
    beq	$a1,$t2,.L0d985184
    nop
    # Line 886
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d985178:
    # Line 892
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d985184:
    # Line 889
    sw	$a0,26024($t9)
    # Line 890
    sw	$a1,26028($t9)
    # Line 891
    lw	$t8,26980($t9)
    ld	$ra,8($sp)
    # Line 892
    ld	$gp,0($sp)
    # Line 891
    ori	$t8,$t8,0x80
    sw	$t8,26980($t9)
    # Line 892
    addiu	$sp,$sp,16
    jr	$ra
    # Line 891
    sw	$t3,4120($zero)
.L0d9851ac:
    # Line 864
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d985178
    ld	$ra,8($sp)
.end __glOdyim_FragmentColorMaterialSGIX

# Function: __glOdysseyInitFragmentLighting
# Declared: Line 895 (Source lines: 896-912)
# Address: 0x0d9851c0 - 0x0d985210 (Size: 80 bytes, Frame: 0)
.globl __glOdysseyInitFragmentLighting
.ent __glOdysseyInitFragmentLighting
__glOdysseyInitFragmentLighting:
    # Line 899
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    # Line 911
    li	$a3,5634
    sw	$a3,26028($v0)
    # Line 896
    lui	$a2,0x17
    # Line 910
    li	$a1,1032
    sw	$a1,26024($v0)
    # Line 896
    addiu	$a0,$a2,13264
    # Line 899
    li	$v1,1
    sw	$v1,26992($v0)
    # Line 896
    addu	$at,$t9,$a0
    # Line 906
    lwc1	$f1,_lit_bf800000
    # Line 904
    lwc1	$f0,_lit_3f800000
    # Line 907
    lwc1	$f2,_lit_43340000
    # Line 908
    swc1	$f0,25832($v0)
    # Line 907
    swc1	$f2,25828($v0)
    # Line 906
    swc1	$f1,25816($v0)
    # Line 905
    swc1	$f0,25800($v0)
    # Line 912
    jr	$ra
    # Line 904
    swc1	$f0,25784($v0)
.end __glOdysseyInitFragmentLighting

# Function: __glOdysseyInitFragmentMaterial
# Declared: Line 915 (Source lines: 917-917)
# Address: 0x0d985210 - 0x0d985218 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyInitFragmentMaterial
.ent __glOdysseyInitFragmentMaterial
__glOdysseyInitFragmentMaterial:
    # Line 917
    jr	$ra
    nop
.end __glOdysseyInitFragmentMaterial

# Function: __glOdyim_LightEnviSGIX
# Declared: Line 919 (Source lines: 920-940)
# Address: 0x0d985220 - 0x0d9852e0 (Size: 192 bytes, Frame: 16)
.globl __glOdyim_LightEnviSGIX
.ent __glOdyim_LightEnviSGIX
__glOdyim_LightEnviSGIX:
    # Line 924
    li	$a6,8448
    # Line 920
    addiu	$sp,$sp,-16
    # Line 921
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 920
    lui	$v1,0x17
    # Line 924
    li	$a5,7681
    sd	$ra,8($sp)
    # Line 920
    addiu	$v1,$v1,13168
    sd	$gp,0($sp)
    # Line 921
    beq	$at,$v0,.L0d9852cc
    # Line 920
    addu	$gp,$t9,$v1
    # Line 922
    li	$a2,0x8407
    beq	$a0,$a2,.L0d985274
    # Line 937
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d985268:
    # Line 940
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d985274:
    # Line 933
    lui	$t1,0x1
    # Line 924
    li	$a4,260
    ld	$ra,8($sp)
    beq	$a1,$a4,.L0d9852a8
    # Line 934
    li	$a7,2
    # Line 924
    beq	$a1,$a5,.L0d9852a8
    nop
    beq	$a1,$a6,.L0d9852a8
    # Line 930
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d985268
    ld	$ra,8($sp)
.L0d9852a8:
    # Line 940
    ld	$gp,0($sp)
    # Line 933
    addu	$t1,$a3,$t1
    # Line 934
    lw	$t0,26976($t1)
    # Line 933
    sw	$a1,26032($t1)
    # Line 934
    ori	$t0,$t0,0x80
    sw	$t0,26976($t1)
    # Line 940
    addiu	$sp,$sp,16
    jr	$ra
    # Line 934
    sw	$a7,4120($zero)
.L0d9852cc:
    # Line 921
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d985268
    ld	$ra,8($sp)
.end __glOdyim_LightEnviSGIX

.late_rodata
jtbl_0dae8c9c:
    .word .L0d9825c4
    .word .L0d98251c
    .word .L0d982964
    .word .L0d9828cc
    .word .L0d9827e0
    .word .L0d982790
    .word .L0d982728
    .word .L0d9826d0
    .word .L0d982678
    .word .L0d982620
jtbl_0dae8cc4:
    .word .L0d982ba4
    .word .L0d982afc
    .word .L0d982f88
    .word .L0d982ed0
    .word .L0d982dcc
    .word .L0d982d7c
    .word .L0d982d20
    .word .L0d982cc0
    .word .L0d982c60
    .word .L0d982c00

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4040000000000000:
    .word 0x40400000, 0x00000000
_lit8_405ffe0068db8bac:
    .word 0x405ffe00, 0x68db8bac
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_42b40000:
    .word 0x42b40000
_lit_43000000:
    .word 0x43000000
_lit_43340000:
    .word 0x43340000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_45e80000:
    .word 0x45e80000
_lit_bf800000:
    .word 0xbf800000

