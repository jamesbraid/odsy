# Source: ../ODYSSEY/ody_image_convolve.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_convolve.c
# Total Functions: 29

.text

# Function: __glOdysseyInitLerpTree
# Declared: Line 28 (Source lines: 29-40)
# Address: 0x0d9ac740 - 0x0d9ac7cc (Size: 140 bytes, Frame: 32)
.globl __glOdysseyInitLerpTree
.ent __glOdysseyInitLerpTree
__glOdysseyInitLerpTree:
    # Line 29
    lui	$at,0x15
    addiu	$sp,$sp,-32
    addiu	$at,$at,-16816
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 32
    # lw $t9, -16944($gp) # &memset
    li	$a2,720
    move	$a1,$zero
    # Line 29
    sd	$s0,0($sp)
    # Line 32
    nop
    # Line 29
    sd	$ra,8($sp)
    # Line 32
    jal	memset
    # Line 29
    move	$s0,$a0
    ld	$ra,8($sp)
    # Line 32
    lwc1	$f4,_lit_3f800000
    # Line 40
    ld	$gp,16($sp)
    # Line 38
    swc1	$f4,588($s0)
    # Line 37
    swc1	$f4,584($s0)
    # Line 36
    swc1	$f4,444($s0)
    # Line 35
    swc1	$f4,480($s0)
    # Line 38
    swc1	$f4,440($s0)
    # Line 37
    swc1	$f4,436($s0)
    # Line 36
    swc1	$f4,296($s0)
    # Line 35
    swc1	$f4,332($s0)
    # Line 38
    swc1	$f4,292($s0)
    # Line 37
    swc1	$f4,288($s0)
    # Line 36
    swc1	$f4,148($s0)
    # Line 35
    swc1	$f4,184($s0)
    # Line 38
    swc1	$f4,144($s0)
    # Line 37
    swc1	$f4,140($s0)
    # Line 36
    swc1	$f4,0($s0)
    # Line 35
    swc1	$f4,36($s0)
    ld	$s0,0($sp)
    # Line 40
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyInitLerpTree

# Function: __glOdysseyGetFilter
# Declared: Line 44 (Source lines: 47-64)
# Address: 0x0d9ac7d0 - 0x0d9ac80c (Size: 60 bytes, Frame: 0)
.globl __glOdysseyGetFilter
.ent __glOdysseyGetFilter
__glOdysseyGetFilter:
    # Line 49
    li	$at,0x8010
    li	$v1,0x8012
    beq	$a0,$at,.L0d9ac7fc
    # Line 47
    lw	$a3,4112($zero)
    # Line 49
    li	$v0,0x8011
    beq	$a0,$v0,.L0d9ac804
    xor	$v1,$a0,$v1
    # Line 57
    addiu	$a0,$a3,936
    # Line 60
    move	$v0,$zero
    # Line 64
    jr	$ra
    movz	$v0,$a0,$v1
.L0d9ac7fc:
    jr	$ra
    # Line 51
    addiu	$v0,$a3,768
.L0d9ac804:
    # Line 64
    jr	$ra
    # Line 54
    addiu	$v0,$a3,852
.end __glOdysseyGetFilter

# Function: __glOdysseySetCurrentFilter
# Declared: Line 69 (Source lines: 69-100)
# Address: 0x0d9ac810 - 0x0d9ac8ec (Size: 220 bytes, Frame: 0)
.globl __glOdysseySetCurrentFilter
.ent __glOdysseySetCurrentFilter
__glOdysseySetCurrentFilter:
    # Line 77
    li	$v1,1
    # Line 69
    lui	$v0,0x15
    # Line 88
    lui	$a6,0x1
    # Line 69
    addiu	$v0,$v0,-17024
    # Line 77
    beq	$a1,$v1,.L0d9ac888
    # Line 69
    addu	$at,$t9,$v0
    # Line 77
    li	$v1,2
    beq	$a1,$v1,.L0d9ac85c
    # Line 87
    addiu	$v0,$a0,852
    # Line 77
    li	$a2,3
    beq	$a1,$a2,.L0d9ac85c
    move	$a1,$zero
    la	$v0,__glDummyFilter
.L0d9ac844:
    # Line 98
    lui	$a3,0x1
    ori	$a3,$a3,0x1bec
    # Line 97
    sw	$v0,764($a0)
    # Line 98
    addu	$a3,$a3,$a0
    # Line 100
    jr	$ra
    # Line 98
    sw	$a1,0($a3)
.L0d9ac85c:
    # Line 86
    lw	$a5,1792($a0)
    dsll32	$a4,$a5,0x5
    bgez	$a4,.L0d9ac8c4
    nop
    # Line 88
    ori	$a5,$a6,0x31c
    # Line 98
    ori	$a6,$a6,0x1bec
    # Line 97
    sw	$v0,764($a0)
    # Line 98
    addu	$a6,$a6,$a0
    # Line 88
    addu	$a5,$a0,$a5
    # Line 100
    jr	$ra
    # Line 98
    sw	$a5,0($a6)
.L0d9ac888:
    # Line 80
    addiu	$v0,$a0,768
    # Line 81
    li	$a7,0xf7bc
    # Line 79
    lw	$t1,1792($a0)
    # Line 81
    la	$t2,__glDummyFilter
    # Line 79
    lui	$t3,0x200
    # Line 81
    addu	$a7,$a0,$a7
    # Line 98
    lui	$t0,0x1
    # Line 79
    and	$t1,$t1,$t3
    # Line 98
    ori	$t0,$t0,0x1bec
    movz	$v0,$t2,$t1
    addu	$t0,$t0,$a0
    # Line 97
    sw	$v0,764($a0)
    movz	$a7,$zero,$t1
    # Line 100
    jr	$ra
    # Line 98
    sw	$a7,0($t0)
.L0d9ac8c4:
    # Line 91
    addiu	$v0,$a0,936
    # Line 92
    la	$a2,__glDummyFilter
    # Line 88
    lui	$t0,0x800
    and	$t0,$a5,$t0
    # Line 92
    lui	$a1,0x1
    movz	$v0,$a2,$t0
    ori	$a1,$a1,0xe7c
    addu	$a1,$a0,$a1
    b	.L0d9ac844
    movz	$a1,$zero,$t0
.end __glOdysseySetCurrentFilter

# Function: __glOdysseyCvtToFloat
# Declared: Line 126 (Source lines: 129-257)
# Address: 0x0d9ac8f0 - 0x0d9adde0 (Size: 5360 bytes, Frame: 48)
.globl __glOdysseyCvtToFloat
.ent __glOdysseyCvtToFloat
__glOdysseyCvtToFloat:
    # Line 129
    move	$t0,$a0
    # Line 137
    move	$t1,$a0
    # Line 136
    move	$a7,$a0
    # Line 135
    move	$a5,$a0
    # Line 129
    addiu	$sp,$sp,-48
    # Line 133
    move	$a6,$a0
    # Line 129
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$s2,0($sp)
    # Line 134
    move	$s2,$a0
    # Line 139
    li	$t2,0x8034
    # Line 129
    lui	$at,0x15
    # Line 139
    sltu	$v0,$a3,$t2
    # Line 129
    sd	$s1,16($sp)
    # Line 132
    move	$s1,$a0
    # Line 129
    addiu	$at,$at,-17248
    sd	$gp,24($sp)
    # Line 139
    bnez	$v0,.L0d9acb48
    # Line 129
    addu	$gp,$t9,$at
    # Line 139
    sltu	$v0,$t2,$a3
    beqz	$v0,.L0d9ad12c
    # Line 187
    addiu	$a6,$a2,3
    # Line 139
    li	$a1,0x8364
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0d9acd58
    nop
    sltu	$a0,$a1,$a3
    beqz	$a0,.L0d9acd78
    # Line 206
    srl	$at,$a2,0x1f
    # Line 139
    li	$a1,0x8367
    sltu	$a4,$a3,$a1
    bnez	$a4,.L0d9ad4ac
    sltu	$a5,$a1,$a3
    beqz	$a5,.L0d9ad680
    li	$a6,0x8368
    bne	$a3,$a6,.L0d9acc40
    sd	$a7,32($sp)
    # Line 238
    addiu	$a7,$a2,3
    slt	$t0,$a2,$zero
    movz	$a7,$a2,$t0
    sra	$a7,$a7,0x2
    # lw $t9, -17036($gp) # &ceil
    mtc1	$a7,$f12
    ld	$s1,32($sp)
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$t1,$a5,0x1
    lwc1	$f5,_lit_447fc000
    move	$a3,$zero
    beqz	$t1,.L0d9aca4c
    lwc1	$f4,_lit_40400000
    # Line 240
    lw	$t9,0($s1)
    srl	$t9,$t9,0x16
    andi	$t9,$t9,0x3
    dmtc1	$t9,$f17
    cvt.s.l	$f17,$f17
    div.s	$f17,$f17,$f4
    swc1	$f17,0($s0)
    # Line 241
    lw	$t8,0($s1)
    srl	$t8,$t8,0xc
    andi	$t8,$t8,0x3ff
    dmtc1	$t8,$f16
    cvt.s.l	$f16,$f16
    div.s	$f16,$f16,$f5
    swc1	$f16,4($s0)
    # Line 242
    lw	$t3,0($s1)
    srl	$t3,$t3,0x2
    andi	$t3,$t3,0x3ff
    dmtc1	$t3,$f15
    cvt.s.l	$f15,$f15
    div.s	$f15,$f15,$f5
    swc1	$f15,8($s0)
    # Line 243
    lw	$t2,0($s1)
    andi	$t2,$t2,0x3ff
    dmtc1	$t2,$f14
    cvt.s.l	$f14,$f14
    div.s	$f14,$f14,$f5
    addiu	$s0,$s0,16
    # Line 239
    li	$a3,1
    # Line 243
    addiu	$s1,$s1,4
    swc1	$f14,-4($s0)
.L0d9aca4c:
    sra	$at,$a5,0x1
    beqz	$at,.L0d9acb40
    nop
.L0d9aca58:
    # Line 240
    lw	$a7,0($s1)
    srl	$a7,$a7,0x16
    andi	$a7,$a7,0x3
    dmtc1	$a7,$f31
    cvt.s.l	$f31,$f31
    div.s	$f31,$f31,$f4
    swc1	$f31,0($s0)
    # Line 241
    lw	$a6,0($s1)
    srl	$a6,$a6,0xc
    andi	$a6,$a6,0x3ff
    dmtc1	$a6,$f29
    cvt.s.l	$f29,$f29
    div.s	$f29,$f29,$f5
    swc1	$f29,4($s0)
    # Line 242
    lw	$a5,0($s1)
    srl	$a5,$a5,0x2
    andi	$a5,$a5,0x3ff
    dmtc1	$a5,$f27
    cvt.s.l	$f27,$f27
    div.s	$f27,$f27,$f5
    swc1	$f27,8($s0)
    # Line 243
    lw	$a4,0($s1)
    andi	$a4,$a4,0x3ff
    dmtc1	$a4,$f25
    cvt.s.l	$f25,$f25
    div.s	$f25,$f25,$f5
    swc1	$f25,12($s0)
    # Line 240
    lw	$a1,4($s1)
    srl	$a1,$a1,0x16
    andi	$a1,$a1,0x3
    dmtc1	$a1,$f23
    cvt.s.l	$f23,$f23
    div.s	$f23,$f23,$f4
    swc1	$f23,16($s0)
    # Line 241
    lw	$a0,4($s1)
    srl	$a0,$a0,0xc
    andi	$a0,$a0,0x3ff
    dmtc1	$a0,$f21
    cvt.s.l	$f21,$f21
    div.s	$f21,$f21,$f5
    swc1	$f21,20($s0)
    # Line 242
    lw	$v1,4($s1)
    srl	$v1,$v1,0x2
    andi	$v1,$v1,0x3ff
    dmtc1	$v1,$f19
    cvt.s.l	$f19,$f19
    div.s	$f19,$f19,$f5
    swc1	$f19,24($s0)
    # Line 243
    lw	$v0,4($s1)
    andi	$v0,$v0,0x3ff
    dmtc1	$v0,$f18
    cvt.s.l	$f18,$f18
    div.s	$f18,$f18,$f5
    # Line 239
    addiu	$a3,$a3,2
    # Line 243
    addiu	$s0,$s0,32
    addiu	$s1,$s1,8
    # Line 239
    bne	$a2,$a3,.L0d9aca58
    # Line 243
    swc1	$f18,-4($s0)
.L0d9acb40:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9acb48:
    # Line 139
    sltiu	$t2,$a3,5124
    bnez	$t2,.L0d9acc58
    sltiu	$a1,$a3,5122
    sltiu	$t3,$a3,5125
    beqz	$t3,.L0d9acf08
    li	$a1,0x8032
    blez	$a2,.L0d9acc44
    ld	$s2,0($sp)
    ldc1	$f6,_lit8_41f0000000000000
    andi	$a1,$a2,0x3
    ldc1	$f4,_lit8_3ff0000000000000
    move	$a3,$zero
    beqz	$a1,.L0d9acbb0
    ldc1	$f5,_lit8_4000000000000000
.L0d9acb80:
    # Line 152
    lw	$t8,0($a5)
    mtc1	$t8,$f0
    cvt.d.w	$f0,$f0
    madd.d	$f0,$f4,$f0,$f5
    div.d	$f0,$f0,$f6
    addiu	$a1,$a1,-1
    # Line 151
    addiu	$a3,$a3,1
    # Line 152
    addiu	$s0,$s0,4
    cvt.s.d	$f0,$f0
    addiu	$a5,$a5,4
    bnez	$a1,.L0d9acb80
    swc1	$f0,-4($s0)
.L0d9acbb0:
    sra	$t9,$a2,0x2
    beqz	$t9,.L0d9acc40
    move	$a4,$a5
    nop
.L0d9acbc0:
    lw	$a0,0($a4)
    mtc1	$a0,$f7
    cvt.d.w	$f7,$f7
    madd.d	$f7,$f4,$f7,$f5
    div.d	$f7,$f7,$f6
    cvt.s.d	$f7,$f7
    swc1	$f7,0($s0)
    lw	$v1,4($a4)
    mtc1	$v1,$f3
    cvt.d.w	$f3,$f3
    madd.d	$f3,$f4,$f3,$f5
    div.d	$f3,$f3,$f6
    cvt.s.d	$f3,$f3
    swc1	$f3,4($s0)
    lw	$v0,8($a4)
    mtc1	$v0,$f2
    cvt.d.w	$f2,$f2
    madd.d	$f2,$f4,$f2,$f5
    div.d	$f2,$f2,$f6
    cvt.s.d	$f2,$f2
    swc1	$f2,8($s0)
    lw	$at,12($a4)
    mtc1	$at,$f1
    cvt.d.w	$f1,$f1
    madd.d	$f1,$f4,$f1,$f5
    div.d	$f1,$f1,$f6
    # Line 151
    addiu	$a3,$a3,4
    # Line 152
    addiu	$s0,$s0,16
    cvt.s.d	$f1,$f1
    addiu	$a4,$a4,16
    # Line 151
    bne	$a2,$a3,.L0d9acbc0
    # Line 152
    swc1	$f1,-4($s0)
.L0d9acc40:
    ld	$s2,0($sp)
.L0d9acc44:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 257
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9acc58:
    # Line 139
    bnez	$a1,.L0d9ad0e0
    sltiu	$a4,$a3,5121
    sltiu	$a1,$a3,5123
    beqz	$a1,.L0d9ad8a8
    li	$a0,5123
    blez	$a2,.L0d9acc44
    ld	$s2,0($sp)
    ldc1	$f6,_lit8_40efffe000000000
    andi	$a1,$a2,0x3
    ldc1	$f4,_lit8_3ff0000000000000
    move	$a3,$zero
    beqz	$a1,.L0d9accbc
    ldc1	$f5,_lit8_4000000000000000
.L0d9acc8c:
    # Line 147
    lh	$a4,0($a6)
    mtc1	$a4,$f8
    cvt.d.w	$f8,$f8
    madd.d	$f8,$f4,$f8,$f5
    div.d	$f8,$f8,$f6
    addiu	$a1,$a1,-1
    # Line 146
    addiu	$a3,$a3,1
    # Line 147
    addiu	$s0,$s0,4
    cvt.s.d	$f8,$f8
    addiu	$a6,$a6,2
    bnez	$a1,.L0d9acc8c
    swc1	$f8,-4($s0)
.L0d9accbc:
    sra	$a5,$a2,0x2
    beqz	$a5,.L0d9acd50
    move	$a4,$a6
    nop
    nop
.L0d9accd0:
    lh	$t1,0($a4)
    mtc1	$t1,$f12
    cvt.d.w	$f12,$f12
    madd.d	$f12,$f4,$f12,$f5
    div.d	$f12,$f12,$f6
    cvt.s.d	$f12,$f12
    swc1	$f12,0($s0)
    lh	$t0,2($a4)
    mtc1	$t0,$f11
    cvt.d.w	$f11,$f11
    madd.d	$f11,$f4,$f11,$f5
    div.d	$f11,$f11,$f6
    cvt.s.d	$f11,$f11
    swc1	$f11,4($s0)
    lh	$a7,4($a4)
    mtc1	$a7,$f10
    cvt.d.w	$f10,$f10
    madd.d	$f10,$f4,$f10,$f5
    div.d	$f10,$f10,$f6
    cvt.s.d	$f10,$f10
    swc1	$f10,8($s0)
    lh	$a6,6($a4)
    mtc1	$a6,$f9
    cvt.d.w	$f9,$f9
    madd.d	$f9,$f4,$f9,$f5
    div.d	$f9,$f9,$f6
    # Line 146
    addiu	$a3,$a3,4
    # Line 147
    addiu	$s0,$s0,16
    cvt.s.d	$f9,$f9
    addiu	$a4,$a4,8
    # Line 146
    bne	$a2,$a3,.L0d9accd0
    # Line 147
    swc1	$f9,-4($s0)
.L0d9acd50:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9acd58:
    # Line 139
    li	$a1,0x8362
    sltu	$t2,$a3,$a1
    bnez	$t2,.L0d9ad2d8
    sltu	$t3,$a1,$a3
    beqz	$t3,.L0d9adac8
    li	$t8,0x8363
    bne	$a3,$t8,.L0d9acc40
    # Line 206
    srl	$at,$a2,0x1f
.L0d9acd78:
    li	$a0,0xaaaa
    negu	$v1,$a2
    dsll	$a0,$a0,0x10
    movz	$v1,$a2,$at
    ori	$a0,$a0,0xaaab
    multu	$v1,$a0
    mfhi	$v0
    sra	$v0,$v0,0x1
    sd	$ra,40($sp)
    negu	$ra,$v0
    movz	$ra,$v0,$at
    # lw $t9, -17036($gp) # &ceil
    mtc1	$ra,$f12
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$a1,$a5,0x1
    lwc1	$f5,_lit_427c0000
    move	$a3,$zero
    beqz	$a1,.L0d9ace38
    lwc1	$f4,_lit_41f80000
    # Line 208
    lhu	$a6,0($s2)
    sra	$a6,$a6,0xb
    andi	$a6,$a6,0x1f
    mtc1	$a6,$f16
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,0($s0)
    # Line 209
    lhu	$a4,0($s2)
    sra	$a4,$a4,0x5
    andi	$a4,$a4,0x3f
    mtc1	$a4,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f5
    swc1	$f15,4($s0)
    # Line 210
    lhu	$a3,0($s2)
    andi	$a3,$a3,0x1f
    mtc1	$a3,$f14
    cvt.s.w	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$s0,$s0,12
    # Line 207
    li	$a3,1
    # Line 210
    addiu	$s2,$s2,2
    swc1	$f14,-4($s0)
.L0d9ace38:
    sra	$a7,$a5,0x1
    beqz	$a7,.L0d9acf00
    nop
    nop
    nop
    nop
.L0d9ace50:
    # Line 208
    lhu	$t9,0($s2)
    sra	$t9,$t9,0xb
    andi	$t9,$t9,0x1f
    mtc1	$t9,$f25
    cvt.s.w	$f25,$f25
    div.s	$f25,$f25,$f4
    swc1	$f25,0($s0)
    # Line 209
    lhu	$t8,0($s2)
    sra	$t8,$t8,0x5
    andi	$t8,$t8,0x3f
    mtc1	$t8,$f23
    cvt.s.w	$f23,$f23
    div.s	$f23,$f23,$f5
    swc1	$f23,4($s0)
    # Line 210
    lhu	$t3,0($s2)
    andi	$t3,$t3,0x1f
    mtc1	$t3,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f4
    swc1	$f21,8($s0)
    # Line 208
    lhu	$t2,2($s2)
    sra	$t2,$t2,0xb
    andi	$t2,$t2,0x1f
    mtc1	$t2,$f19
    cvt.s.w	$f19,$f19
    div.s	$f19,$f19,$f4
    swc1	$f19,12($s0)
    # Line 209
    lhu	$t1,2($s2)
    sra	$t1,$t1,0x5
    andi	$t1,$t1,0x3f
    mtc1	$t1,$f18
    cvt.s.w	$f18,$f18
    div.s	$f18,$f18,$f5
    swc1	$f18,16($s0)
    # Line 210
    lhu	$t0,2($s2)
    andi	$t0,$t0,0x1f
    mtc1	$t0,$f17
    cvt.s.w	$f17,$f17
    div.s	$f17,$f17,$f4
    # Line 207
    addiu	$a3,$a3,2
    # Line 210
    addiu	$s0,$s0,24
    addiu	$s2,$s2,4
    # Line 207
    bne	$a2,$a3,.L0d9ace50
    # Line 210
    swc1	$f17,-4($s0)
.L0d9acf00:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9acf08:
    # Line 139
    sltu	$at,$a3,$a1
    bnez	$at,.L0d9ad838
    sltiu	$t9,$a3,5126
    sltu	$v0,$a1,$a3
    beqz	$v0,.L0d9adc58
    li	$v1,0x8033
    bne	$a3,$v1,.L0d9acc40
.L0d9acf24:
    # Line 178
    addiu	$a0,$a2,3
    slt	$a1,$a2,$zero
    movz	$a0,$a2,$a1
    sra	$a0,$a0,0x2
    # lw $t9, -17036($gp) # &ceil
    mtc1	$a0,$f12
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$a4,$a5,0x1
    move	$a3,$zero
    beqz	$a4,.L0d9acfe4
    lwc1	$f4,_lit_41700000
    # Line 180
    lhu	$t1,0($s2)
    sra	$t1,$t1,0xc
    andi	$t1,$t1,0xf
    mtc1	$t1,$f17
    cvt.s.w	$f17,$f17
    div.s	$f17,$f17,$f4
    swc1	$f17,0($s0)
    # Line 181
    lhu	$t0,0($s2)
    sra	$t0,$t0,0x8
    andi	$t0,$t0,0xf
    mtc1	$t0,$f16
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,4($s0)
    # Line 182
    lhu	$a7,0($s2)
    sra	$a7,$a7,0x4
    andi	$a7,$a7,0xf
    mtc1	$a7,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f4
    swc1	$f15,8($s0)
    # Line 183
    lhu	$a6,0($s2)
    andi	$a6,$a6,0xf
    mtc1	$a6,$f14
    cvt.s.w	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$s0,$s0,16
    # Line 179
    li	$a3,1
    # Line 183
    addiu	$s2,$s2,2
    swc1	$f14,-4($s0)
.L0d9acfe4:
    sra	$t2,$a5,0x1
    beqz	$t2,.L0d9ad0d8
    nop
.L0d9acff0:
    # Line 180
    lhu	$a1,0($s2)
    sra	$a1,$a1,0xc
    andi	$a1,$a1,0xf
    mtc1	$a1,$f31
    cvt.s.w	$f31,$f31
    div.s	$f31,$f31,$f4
    swc1	$f31,0($s0)
    # Line 181
    lhu	$a0,0($s2)
    sra	$a0,$a0,0x8
    andi	$a0,$a0,0xf
    mtc1	$a0,$f29
    cvt.s.w	$f29,$f29
    div.s	$f29,$f29,$f4
    swc1	$f29,4($s0)
    # Line 182
    lhu	$v1,0($s2)
    sra	$v1,$v1,0x4
    andi	$v1,$v1,0xf
    mtc1	$v1,$f27
    cvt.s.w	$f27,$f27
    div.s	$f27,$f27,$f4
    swc1	$f27,8($s0)
    # Line 183
    lhu	$v0,0($s2)
    andi	$v0,$v0,0xf
    mtc1	$v0,$f25
    cvt.s.w	$f25,$f25
    div.s	$f25,$f25,$f4
    swc1	$f25,12($s0)
    # Line 180
    lhu	$at,2($s2)
    sra	$at,$at,0xc
    andi	$at,$at,0xf
    mtc1	$at,$f23
    cvt.s.w	$f23,$f23
    div.s	$f23,$f23,$f4
    swc1	$f23,16($s0)
    # Line 181
    lhu	$t9,2($s2)
    sra	$t9,$t9,0x8
    andi	$t9,$t9,0xf
    mtc1	$t9,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f4
    swc1	$f21,20($s0)
    # Line 182
    lhu	$t8,2($s2)
    sra	$t8,$t8,0x4
    andi	$t8,$t8,0xf
    mtc1	$t8,$f19
    cvt.s.w	$f19,$f19
    div.s	$f19,$f19,$f4
    swc1	$f19,24($s0)
    # Line 183
    lhu	$t3,2($s2)
    andi	$t3,$t3,0xf
    mtc1	$t3,$f18
    cvt.s.w	$f18,$f18
    div.s	$f18,$f18,$f4
    # Line 179
    addiu	$a3,$a3,2
    # Line 183
    addiu	$s0,$s0,32
    addiu	$s2,$s2,4
    # Line 179
    bne	$a2,$a3,.L0d9acff0
    # Line 183
    swc1	$f18,-4($s0)
.L0d9ad0d8:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad0e0:
    # Line 139
    bnez	$a4,.L0d9ad8ec
    li	$a4,5120
    beqz	$a1,.L0d9acc44
    ld	$s2,0($sp)
    blez	$a2,.L0d9acc40
    move	$a3,$zero
    lwc1	$f4,_lit_437f0000
    nop
.L0d9ad100:
    # Line 173
    lbu	$a5,0($s1)
    mtc1	$a5,$f0
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f4
    # Line 172
    addiu	$a3,$a3,1
    # Line 173
    addiu	$s0,$s0,4
    addiu	$s1,$s1,1
    # Line 172
    bne	$a2,$a3,.L0d9ad100
    # Line 173
    swc1	$f0,-4($s0)
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad12c:
    # Line 187
    slt	$a7,$a2,$zero
    movz	$a6,$a2,$a7
    sra	$a6,$a6,0x2
    # lw $t9, -17036($gp) # &ceil
    mtc1	$a6,$f12
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$t0,$a5,0x1
    move	$a3,$zero
    beqz	$t0,.L0d9ad1e4
    lwc1	$f4,_lit_41f80000
    # Line 189
    lhu	$t8,0($s2)
    sra	$t8,$t8,0xb
    andi	$t8,$t8,0x1f
    mtc1	$t8,$f17
    cvt.s.w	$f17,$f17
    div.s	$f17,$f17,$f4
    swc1	$f17,0($s0)
    # Line 190
    lhu	$t3,0($s2)
    sra	$t3,$t3,0x6
    andi	$t3,$t3,0x1f
    mtc1	$t3,$f16
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,4($s0)
    # Line 191
    lhu	$t2,0($s2)
    sra	$t2,$t2,0x1
    andi	$t2,$t2,0x1f
    mtc1	$t2,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f4
    swc1	$f15,8($s0)
    # Line 192
    lhu	$t1,0($s2)
    andi	$t1,$t1,0x1
    mtc1	$t1,$f14
    cvt.s.w	$f14,$f14
    addiu	$s0,$s0,16
    # Line 188
    li	$a3,1
    # Line 192
    addiu	$s2,$s2,2
    swc1	$f14,-4($s0)
.L0d9ad1e4:
    sra	$t9,$a5,0x1
    beqz	$t9,.L0d9ad2d0
    move	$a4,$s2
.L0d9ad1f0:
    # Line 189
    lhu	$a7,0($a4)
    sra	$a7,$a7,0xb
    andi	$a7,$a7,0x1f
    mtc1	$a7,$f31
    cvt.s.w	$f31,$f31
    div.s	$f31,$f31,$f4
    swc1	$f31,0($s0)
    # Line 190
    lhu	$a6,0($a4)
    sra	$a6,$a6,0x6
    andi	$a6,$a6,0x1f
    mtc1	$a6,$f29
    cvt.s.w	$f29,$f29
    div.s	$f29,$f29,$f4
    swc1	$f29,4($s0)
    # Line 191
    lhu	$a5,0($a4)
    sra	$a5,$a5,0x1
    andi	$a5,$a5,0x1f
    mtc1	$a5,$f27
    cvt.s.w	$f27,$f27
    div.s	$f27,$f27,$f4
    swc1	$f27,8($s0)
    # Line 192
    lhu	$a1,0($a4)
    andi	$a1,$a1,0x1
    mtc1	$a1,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,12($s0)
    # Line 189
    lhu	$a0,2($a4)
    sra	$a0,$a0,0xb
    andi	$a0,$a0,0x1f
    mtc1	$a0,$f23
    cvt.s.w	$f23,$f23
    div.s	$f23,$f23,$f4
    swc1	$f23,16($s0)
    # Line 190
    lhu	$v1,2($a4)
    sra	$v1,$v1,0x6
    andi	$v1,$v1,0x1f
    mtc1	$v1,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f4
    swc1	$f21,20($s0)
    # Line 191
    lhu	$v0,2($a4)
    sra	$v0,$v0,0x1
    andi	$v0,$v0,0x1f
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    div.s	$f19,$f19,$f4
    swc1	$f19,24($s0)
    # Line 192
    lhu	$at,2($a4)
    andi	$at,$at,0x1
    mtc1	$at,$f18
    cvt.s.w	$f18,$f18
    # Line 188
    addiu	$a3,$a3,2
    # Line 192
    addiu	$s0,$s0,32
    addiu	$a4,$a4,4
    # Line 188
    bne	$a2,$a3,.L0d9ad1f0
    # Line 192
    swc1	$f18,-4($s0)
.L0d9ad2d0:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad2d8:
    # Line 139
    li	$a1,0x8036
    sltu	$t0,$a3,$a1
    bnez	$t0,.L0d9ad678
    li	$t9,0x8035
    sltu	$t1,$a1,$a3
    bnez	$t1,.L0d9acc40
    sd	$a0,32($sp)
    # Line 229
    addiu	$t2,$a2,3
    slt	$t3,$a2,$zero
    movz	$t2,$a2,$t3
    sra	$t2,$t2,0x2
    # lw $t9, -17036($gp) # &ceil
    mtc1	$t2,$f12
    ld	$s1,32($sp)
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$t8,$a5,0x1
    lwc1	$f5,_lit_447fc000
    move	$a3,$zero
    beqz	$t8,.L0d9ad3b8
    lwc1	$f4,_lit_40400000
    # Line 231
    lw	$v1,0($s1)
    srl	$v1,$v1,0x16
    dmtc1	$v1,$f17
    cvt.s.l	$f17,$f17
    div.s	$f17,$f17,$f5
    swc1	$f17,0($s0)
    # Line 232
    lw	$v0,0($s1)
    srl	$v0,$v0,0xc
    andi	$v0,$v0,0x3ff
    dmtc1	$v0,$f16
    cvt.s.l	$f16,$f16
    div.s	$f16,$f16,$f5
    swc1	$f16,4($s0)
    # Line 233
    lw	$at,0($s1)
    srl	$at,$at,0x2
    andi	$at,$at,0x3ff
    dmtc1	$at,$f15
    cvt.s.l	$f15,$f15
    div.s	$f15,$f15,$f5
    swc1	$f15,8($s0)
    # Line 234
    lw	$t9,0($s1)
    andi	$t9,$t9,0x3
    dmtc1	$t9,$f14
    cvt.s.l	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$s0,$s0,16
    # Line 230
    li	$a3,1
    # Line 234
    addiu	$s1,$s1,4
    swc1	$f14,-4($s0)
.L0d9ad3b8:
    sra	$a0,$a5,0x1
    beqz	$a0,.L0d9ad4a4
    move	$a4,$s1
.L0d9ad3c4:
    # Line 231
    lw	$t3,0($a4)
    srl	$t3,$t3,0x16
    dmtc1	$t3,$f31
    cvt.s.l	$f31,$f31
    div.s	$f31,$f31,$f5
    swc1	$f31,0($s0)
    # Line 232
    lw	$t2,0($a4)
    srl	$t2,$t2,0xc
    andi	$t2,$t2,0x3ff
    dmtc1	$t2,$f29
    cvt.s.l	$f29,$f29
    div.s	$f29,$f29,$f5
    swc1	$f29,4($s0)
    # Line 233
    lw	$t1,0($a4)
    srl	$t1,$t1,0x2
    andi	$t1,$t1,0x3ff
    dmtc1	$t1,$f27
    cvt.s.l	$f27,$f27
    div.s	$f27,$f27,$f5
    swc1	$f27,8($s0)
    # Line 234
    lw	$t0,0($a4)
    andi	$t0,$t0,0x3
    dmtc1	$t0,$f25
    cvt.s.l	$f25,$f25
    div.s	$f25,$f25,$f4
    swc1	$f25,12($s0)
    # Line 231
    lw	$a7,4($a4)
    srl	$a7,$a7,0x16
    dmtc1	$a7,$f23
    cvt.s.l	$f23,$f23
    div.s	$f23,$f23,$f5
    swc1	$f23,16($s0)
    # Line 232
    lw	$a6,4($a4)
    srl	$a6,$a6,0xc
    andi	$a6,$a6,0x3ff
    dmtc1	$a6,$f21
    cvt.s.l	$f21,$f21
    div.s	$f21,$f21,$f5
    swc1	$f21,20($s0)
    # Line 233
    lw	$a5,4($a4)
    srl	$a5,$a5,0x2
    andi	$a5,$a5,0x3ff
    dmtc1	$a5,$f19
    cvt.s.l	$f19,$f19
    div.s	$f19,$f19,$f5
    swc1	$f19,24($s0)
    # Line 234
    lw	$a1,4($a4)
    andi	$a1,$a1,0x3
    dmtc1	$a1,$f18
    cvt.s.l	$f18,$f18
    div.s	$f18,$f18,$f4
    # Line 230
    addiu	$a3,$a3,2
    # Line 234
    addiu	$s0,$s0,32
    addiu	$a4,$a4,8
    # Line 230
    bne	$a2,$a3,.L0d9ad3c4
    # Line 234
    swc1	$f18,-4($s0)
.L0d9ad4a4:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad4ac:
    # Line 139
    li	$a1,0x8366
    sltu	$t8,$a3,$a1
    bnez	$t8,.L0d9ad9d4
    li	$t8,0x8365
    sltu	$t9,$a1,$a3
    bnez	$t9,.L0d9acc40
    nop
    sd	$ra,40($sp)
    # Line 196
    addiu	$ra,$a2,3
    slt	$at,$a2,$zero
    movz	$ra,$a2,$at
    sra	$ra,$ra,0x2
    # lw $t9, -17036($gp) # &ceil
    mtc1	$ra,$f12
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$v0,$a5,0x1
    move	$a3,$zero
    beqz	$v0,.L0d9ad584
    lwc1	$f4,_lit_41f80000
    # Line 198
    lhu	$a3,0($s2)
    sra	$a3,$a3,0xb
    andi	$a3,$a3,0x1
    mtc1	$a3,$f17
    cvt.s.w	$f17,$f17
    swc1	$f17,0($s0)
    # Line 199
    lhu	$a1,0($s2)
    sra	$a1,$a1,0x6
    andi	$a1,$a1,0x1f
    mtc1	$a1,$f16
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,4($s0)
    # Line 200
    lhu	$a0,0($s2)
    sra	$a0,$a0,0x1
    andi	$a0,$a0,0x1f
    mtc1	$a0,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f4
    swc1	$f15,8($s0)
    # Line 201
    lhu	$v1,0($s2)
    andi	$v1,$v1,0x1f
    mtc1	$v1,$f14
    cvt.s.w	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$s0,$s0,16
    # Line 197
    li	$a3,1
    # Line 201
    addiu	$s2,$s2,2
    swc1	$f14,-4($s0)
.L0d9ad584:
    sra	$a4,$a5,0x1
    beqz	$a4,.L0d9ad670
    nop
.L0d9ad590:
    # Line 198
    lhu	$t8,0($s2)
    sra	$t8,$t8,0xb
    andi	$t8,$t8,0x1
    mtc1	$t8,$f31
    cvt.s.w	$f31,$f31
    swc1	$f31,0($s0)
    # Line 199
    lhu	$t3,0($s2)
    sra	$t3,$t3,0x6
    andi	$t3,$t3,0x1f
    mtc1	$t3,$f29
    cvt.s.w	$f29,$f29
    div.s	$f29,$f29,$f4
    swc1	$f29,4($s0)
    # Line 200
    lhu	$t2,0($s2)
    sra	$t2,$t2,0x1
    andi	$t2,$t2,0x1f
    mtc1	$t2,$f27
    cvt.s.w	$f27,$f27
    div.s	$f27,$f27,$f4
    swc1	$f27,8($s0)
    # Line 201
    lhu	$t1,0($s2)
    andi	$t1,$t1,0x1f
    mtc1	$t1,$f25
    cvt.s.w	$f25,$f25
    div.s	$f25,$f25,$f4
    swc1	$f25,12($s0)
    # Line 198
    lhu	$t0,2($s2)
    sra	$t0,$t0,0xb
    andi	$t0,$t0,0x1
    mtc1	$t0,$f23
    cvt.s.w	$f23,$f23
    swc1	$f23,16($s0)
    # Line 199
    lhu	$a7,2($s2)
    sra	$a7,$a7,0x6
    andi	$a7,$a7,0x1f
    mtc1	$a7,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f4
    swc1	$f21,20($s0)
    # Line 200
    lhu	$a6,2($s2)
    sra	$a6,$a6,0x1
    andi	$a6,$a6,0x1f
    mtc1	$a6,$f19
    cvt.s.w	$f19,$f19
    div.s	$f19,$f19,$f4
    swc1	$f19,24($s0)
    # Line 201
    lhu	$a5,2($s2)
    andi	$a5,$a5,0x1f
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    div.s	$f18,$f18,$f4
    # Line 197
    addiu	$a3,$a3,2
    # Line 201
    addiu	$s0,$s0,32
    addiu	$s2,$s2,4
    # Line 197
    bne	$a2,$a3,.L0d9ad590
    # Line 201
    swc1	$f18,-4($s0)
.L0d9ad670:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad678:
    # Line 139
    bne	$a3,$t9,.L0d9acc40
    sd	$a0,32($sp)
.L0d9ad680:
    sd	$ra,40($sp)
    # Line 220
    addiu	$ra,$a2,3
    slt	$at,$a2,$zero
    movz	$ra,$a2,$at
    sra	$ra,$ra,0x2
    # lw $t9, -17036($gp) # &ceil
    mtc1	$ra,$f12
    sd	$a7,32($sp)
    ld	$s1,32($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$v0,$a5,0x1
    move	$a3,$zero
    beqz	$v0,.L0d9ad744
    lwc1	$f4,_lit_437f0000
    # Line 222
    lw	$a3,0($s1)
    srl	$a3,$a3,0x18
    dmtc1	$a3,$f17
    cvt.s.l	$f17,$f17
    div.s	$f17,$f17,$f4
    swc1	$f17,0($s0)
    # Line 223
    lw	$a1,0($s1)
    srl	$a1,$a1,0x10
    andi	$a1,$a1,0xff
    dmtc1	$a1,$f16
    cvt.s.l	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,4($s0)
    # Line 224
    lw	$a0,0($s1)
    srl	$a0,$a0,0x8
    andi	$a0,$a0,0xff
    dmtc1	$a0,$f15
    cvt.s.l	$f15,$f15
    div.s	$f15,$f15,$f4
    swc1	$f15,8($s0)
    # Line 225
    lw	$v1,0($s1)
    andi	$v1,$v1,0xff
    dmtc1	$v1,$f14
    cvt.s.l	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$s0,$s0,16
    # Line 221
    li	$a3,1
    # Line 225
    addiu	$s1,$s1,4
    swc1	$f14,-4($s0)
.L0d9ad744:
    sra	$a4,$a5,0x1
    beqz	$a4,.L0d9ad830
    move	$a4,$s1
.L0d9ad750:
    # Line 222
    lw	$t8,0($a4)
    srl	$t8,$t8,0x18
    dmtc1	$t8,$f31
    cvt.s.l	$f31,$f31
    div.s	$f31,$f31,$f4
    swc1	$f31,0($s0)
    # Line 223
    lw	$t3,0($a4)
    srl	$t3,$t3,0x10
    andi	$t3,$t3,0xff
    dmtc1	$t3,$f29
    cvt.s.l	$f29,$f29
    div.s	$f29,$f29,$f4
    swc1	$f29,4($s0)
    # Line 224
    lw	$t2,0($a4)
    srl	$t2,$t2,0x8
    andi	$t2,$t2,0xff
    dmtc1	$t2,$f27
    cvt.s.l	$f27,$f27
    div.s	$f27,$f27,$f4
    swc1	$f27,8($s0)
    # Line 225
    lw	$t1,0($a4)
    andi	$t1,$t1,0xff
    dmtc1	$t1,$f25
    cvt.s.l	$f25,$f25
    div.s	$f25,$f25,$f4
    swc1	$f25,12($s0)
    # Line 222
    lw	$t0,4($a4)
    srl	$t0,$t0,0x18
    dmtc1	$t0,$f23
    cvt.s.l	$f23,$f23
    div.s	$f23,$f23,$f4
    swc1	$f23,16($s0)
    # Line 223
    lw	$a7,4($a4)
    srl	$a7,$a7,0x10
    andi	$a7,$a7,0xff
    dmtc1	$a7,$f21
    cvt.s.l	$f21,$f21
    div.s	$f21,$f21,$f4
    swc1	$f21,20($s0)
    # Line 224
    lw	$a6,4($a4)
    srl	$a6,$a6,0x8
    andi	$a6,$a6,0xff
    dmtc1	$a6,$f19
    cvt.s.l	$f19,$f19
    div.s	$f19,$f19,$f4
    swc1	$f19,24($s0)
    # Line 225
    lw	$a5,4($a4)
    andi	$a5,$a5,0xff
    dmtc1	$a5,$f18
    cvt.s.l	$f18,$f18
    div.s	$f18,$f18,$f4
    # Line 221
    addiu	$a3,$a3,2
    # Line 225
    addiu	$s0,$s0,32
    addiu	$a4,$a4,8
    # Line 221
    bne	$a2,$a3,.L0d9ad750
    # Line 225
    swc1	$f18,-4($s0)
.L0d9ad830:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad838:
    # Line 139
    bnez	$t9,.L0d9ad9e4
    li	$t9,5125
    sltiu	$at,$a3,5127
    beqz	$at,.L0d9acc44
    ld	$s2,0($sp)
    blez	$a2,.L0d9acc44
    ld	$s2,0($sp)
    andi	$v0,$a2,0x1
    beqz	$v0,.L0d9ad874
    move	$a3,$zero
    # Line 253
    lwc1	$f0,0($a0)
    addiu	$s0,$s0,4
    # Line 252
    li	$a3,1
    # Line 253
    addiu	$t1,$a0,4
    swc1	$f0,-4($s0)
.L0d9ad874:
    sra	$v1,$a2,0x1
    beqz	$v1,.L0d9ad8a0
    move	$a4,$t1
.L0d9ad880:
    lwc1	$f2,0($a4)
    swc1	$f2,0($s0)
    # Line 252
    addiu	$a3,$a3,2
    # Line 253
    lwc1	$f1,4($a4)
    addiu	$s0,$s0,8
    addiu	$a4,$a4,8
    # Line 252
    bne	$a2,$a3,.L0d9ad880
    # Line 253
    swc1	$f1,-4($s0)
.L0d9ad8a0:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad8a8:
    # Line 139
    bne	$a3,$a0,.L0d9acc40
    nop
    blez	$a2,.L0d9acc40
    move	$a3,$zero
    lwc1	$f4,_lit_477fff00
    nop
.L0d9ad8c0:
    # Line 215
    lhu	$a1,0($s2)
    mtc1	$a1,$f3
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f4
    # Line 214
    addiu	$a3,$a3,1
    # Line 215
    addiu	$s0,$s0,4
    addiu	$s2,$s2,2
    # Line 214
    bne	$a2,$a3,.L0d9ad8c0
    # Line 215
    swc1	$f3,-4($s0)
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad8ec:
    # Line 139
    bne	$a3,$a4,.L0d9acc44
    ld	$s2,0($sp)
    blez	$a2,.L0d9acc40
    ldc1	$f6,_lit8_406fe00000000000
    andi	$a1,$a2,0x3
    ldc1	$f4,_lit8_3ff0000000000000
    move	$a3,$zero
    beqz	$a1,.L0d9ad940
    ldc1	$f5,_lit8_4000000000000000
.L0d9ad910:
    # Line 142
    lb	$a5,0($t0)
    mtc1	$a5,$f7
    cvt.d.w	$f7,$f7
    madd.d	$f7,$f4,$f7,$f5
    div.d	$f7,$f7,$f6
    addiu	$a1,$a1,-1
    # Line 141
    addiu	$a3,$a3,1
    # Line 142
    addiu	$s0,$s0,4
    cvt.s.d	$f7,$f7
    addiu	$t0,$t0,1
    bnez	$a1,.L0d9ad910
    swc1	$f7,-4($s0)
.L0d9ad940:
    sra	$a6,$a2,0x2
    beqz	$a6,.L0d9ad9cc
    nop
.L0d9ad94c:
    lb	$t3,0($t0)
    mtc1	$t3,$f11
    cvt.d.w	$f11,$f11
    madd.d	$f11,$f4,$f11,$f5
    div.d	$f11,$f11,$f6
    cvt.s.d	$f11,$f11
    swc1	$f11,0($s0)
    lb	$t2,1($t0)
    mtc1	$t2,$f10
    cvt.d.w	$f10,$f10
    madd.d	$f10,$f4,$f10,$f5
    div.d	$f10,$f10,$f6
    cvt.s.d	$f10,$f10
    swc1	$f10,4($s0)
    lb	$t1,2($t0)
    mtc1	$t1,$f9
    cvt.d.w	$f9,$f9
    madd.d	$f9,$f4,$f9,$f5
    div.d	$f9,$f9,$f6
    cvt.s.d	$f9,$f9
    swc1	$f9,8($s0)
    lb	$a7,3($t0)
    mtc1	$a7,$f8
    cvt.d.w	$f8,$f8
    madd.d	$f8,$f4,$f8,$f5
    div.d	$f8,$f8,$f6
    # Line 141
    addiu	$a3,$a3,4
    # Line 142
    addiu	$s0,$s0,16
    cvt.s.d	$f8,$f8
    addiu	$t0,$t0,4
    # Line 141
    bne	$a2,$a3,.L0d9ad94c
    # Line 142
    swc1	$f8,-4($s0)
.L0d9ad9cc:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9ad9d4:
    # Line 139
    bne	$a3,$t8,.L0d9acc40
    nop
    b	.L0d9acf24
    sd	$ra,40($sp)
.L0d9ad9e4:
    bne	$a3,$t9,.L0d9acc44
    ld	$s2,0($sp)
    blez	$a2,.L0d9acc44
    ld	$s2,0($sp)
    andi	$a1,$a2,0x3
    move	$a3,$zero
    beqz	$a1,.L0d9ada34
    lwc1	$f4,_lit_4f800000
.L0d9ada04:
    # Line 248
    lw	$at,0($a7)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f12
    cvt.s.l	$f12,$f12
    div.s	$f12,$f12,$f4
    addiu	$a1,$a1,-1
    # Line 247
    addiu	$a3,$a3,1
    # Line 248
    addiu	$s0,$s0,4
    addiu	$a7,$a7,4
    bnez	$a1,.L0d9ada04
    swc1	$f12,-4($s0)
.L0d9ada34:
    sra	$v0,$a2,0x2
    beqz	$v0,.L0d9adac0
    move	$s1,$a7
.L0d9ada40:
    lw	$a4,0($s1)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f16
    cvt.s.l	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,0($s0)
    lw	$a1,4($s1)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f15
    cvt.s.l	$f15,$f15
    div.s	$f15,$f15,$f4
    swc1	$f15,4($s0)
    lw	$a0,8($s1)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f14
    cvt.s.l	$f14,$f14
    div.s	$f14,$f14,$f4
    swc1	$f14,8($s0)
    lw	$v1,12($s1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f13
    cvt.s.l	$f13,$f13
    div.s	$f13,$f13,$f4
    # Line 247
    addiu	$a3,$a3,4
    # Line 248
    addiu	$s0,$s0,16
    addiu	$s1,$s1,16
    # Line 247
    bne	$a2,$a3,.L0d9ada40
    # Line 248
    swc1	$f13,-4($s0)
.L0d9adac0:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9adac8:
    # Line 164
    srl	$a6,$a2,0x1f
    li	$t1,0xaaaa
    negu	$t0,$a2
    dsll	$t1,$t1,0x10
    movz	$t0,$a2,$a6
    ori	$t1,$t1,0xaaab
    multu	$t0,$t1
    mfhi	$a7
    sra	$a7,$a7,0x1
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    # lw $t9, -17036($gp) # &ceil
    mtc1	$a5,$f12
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$t2,$a5,0x1
    lwc1	$f4,_lit_40400000
    move	$a3,$zero
    beqz	$t2,.L0d9adb8c
    lwc1	$f5,_lit_40e00000
    # Line 166
    lbu	$t9,0($s1)
    sra	$t9,$t9,0x5
    andi	$t9,$t9,0x3
    mtc1	$t9,$f16
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,0($s0)
    # Line 167
    lbu	$t8,0($s1)
    sra	$t8,$t8,0x2
    andi	$t8,$t8,0x7
    mtc1	$t8,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f5
    swc1	$f15,4($s0)
    # Line 168
    lbu	$t3,0($s1)
    andi	$t3,$t3,0x7
    mtc1	$t3,$f14
    cvt.s.w	$f14,$f14
    div.s	$f14,$f14,$f5
    addiu	$s0,$s0,12
    # Line 165
    li	$a3,1
    # Line 168
    addiu	$s1,$s1,1
    swc1	$f14,-4($s0)
.L0d9adb8c:
    sra	$at,$a5,0x1
    beqz	$at,.L0d9adc50
    move	$a4,$s1
    nop
    nop
.L0d9adba0:
    # Line 166
    lbu	$a6,0($a4)
    sra	$a6,$a6,0x5
    andi	$a6,$a6,0x3
    mtc1	$a6,$f25
    cvt.s.w	$f25,$f25
    div.s	$f25,$f25,$f4
    swc1	$f25,0($s0)
    # Line 167
    lbu	$a5,0($a4)
    sra	$a5,$a5,0x2
    andi	$a5,$a5,0x7
    mtc1	$a5,$f23
    cvt.s.w	$f23,$f23
    div.s	$f23,$f23,$f5
    swc1	$f23,4($s0)
    # Line 168
    lbu	$a1,0($a4)
    andi	$a1,$a1,0x7
    mtc1	$a1,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f5
    swc1	$f21,8($s0)
    # Line 166
    lbu	$a0,1($a4)
    sra	$a0,$a0,0x5
    andi	$a0,$a0,0x3
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    div.s	$f19,$f19,$f4
    swc1	$f19,12($s0)
    # Line 167
    lbu	$v1,1($a4)
    sra	$v1,$v1,0x2
    andi	$v1,$v1,0x7
    mtc1	$v1,$f18
    cvt.s.w	$f18,$f18
    div.s	$f18,$f18,$f5
    swc1	$f18,16($s0)
    # Line 168
    lbu	$v0,1($a4)
    andi	$v0,$v0,0x7
    mtc1	$v0,$f17
    cvt.s.w	$f17,$f17
    div.s	$f17,$f17,$f5
    # Line 165
    addiu	$a3,$a3,2
    # Line 168
    addiu	$s0,$s0,24
    addiu	$a4,$a4,2
    # Line 165
    bne	$a2,$a3,.L0d9adba0
    # Line 168
    swc1	$f17,-4($s0)
.L0d9adc50:
    b	.L0d9acc44
    ld	$s2,0($sp)
.L0d9adc58:
    # Line 156
    srl	$t0,$a2,0x1f
    li	$t3,0xaaaa
    negu	$t2,$a2
    dsll	$t3,$t3,0x10
    movz	$t2,$a2,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    # lw $t9, -17036($gp) # &ceil
    mtc1	$a7,$f12
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.w	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    blez	$a2,.L0d9acc40
    ld	$ra,40($sp)
    move	$a5,$a2
    andi	$t8,$a5,0x1
    lwc1	$f4,_lit_40400000
    move	$a3,$zero
    beqz	$t8,.L0d9add1c
    lwc1	$f5,_lit_40e00000
    # Line 158
    lbu	$v0,0($s1)
    sra	$v0,$v0,0x5
    andi	$v0,$v0,0x7
    mtc1	$v0,$f16
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f5
    swc1	$f16,0($s0)
    # Line 159
    lbu	$at,0($s1)
    sra	$at,$at,0x2
    andi	$at,$at,0x7
    mtc1	$at,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f5
    swc1	$f15,4($s0)
    # Line 160
    lbu	$t9,0($s1)
    andi	$t9,$t9,0x3
    mtc1	$t9,$f14
    cvt.s.w	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$s0,$s0,12
    # Line 157
    li	$a3,1
    # Line 160
    addiu	$s1,$s1,1
    swc1	$f14,-4($s0)
.L0d9add1c:
    sra	$v1,$a5,0x1
    beqz	$v1,.L0d9addd8
    move	$a4,$s1
.L0d9add28:
    # Line 158
    lbu	$t0,0($a4)
    sra	$t0,$t0,0x5
    andi	$t0,$t0,0x7
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    div.s	$f25,$f25,$f5
    swc1	$f25,0($s0)
    # Line 159
    lbu	$a7,0($a4)
    sra	$a7,$a7,0x2
    andi	$a7,$a7,0x7
    mtc1	$a7,$f23
    cvt.s.w	$f23,$f23
    div.s	$f23,$f23,$f5
    swc1	$f23,4($s0)
    # Line 160
    lbu	$a6,0($a4)
    andi	$a6,$a6,0x3
    mtc1	$a6,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f4
    swc1	$f21,8($s0)
    # Line 158
    lbu	$a5,1($a4)
    sra	$a5,$a5,0x5
    andi	$a5,$a5,0x7
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    div.s	$f19,$f19,$f5
    swc1	$f19,12($s0)
    # Line 159
    lbu	$a1,1($a4)
    sra	$a1,$a1,0x2
    andi	$a1,$a1,0x7
    mtc1	$a1,$f18
    cvt.s.w	$f18,$f18
    div.s	$f18,$f18,$f5
    swc1	$f18,16($s0)
    # Line 160
    lbu	$a0,1($a4)
    andi	$a0,$a0,0x3
    mtc1	$a0,$f17
    cvt.s.w	$f17,$f17
    div.s	$f17,$f17,$f4
    # Line 157
    addiu	$a3,$a3,2
    # Line 160
    addiu	$s0,$s0,24
    addiu	$a4,$a4,2
    # Line 157
    bne	$a2,$a3,.L0d9add28
    # Line 160
    swc1	$f17,-4($s0)
.L0d9addd8:
    b	.L0d9acc44
    ld	$s2,0($sp)
.end __glOdysseyCvtToFloat

# Function: __glOdysseyScaleBiasFilter
# Declared: Line 280 (Source lines: 282-323)
# Address: 0x0d9adde0 - 0x0d9adf34 (Size: 340 bytes, Frame: 0)
.globl __glOdysseyScaleBiasFilter
.ent __glOdysseyScaleBiasFilter
__glOdysseyScaleBiasFilter:
    # Line 298
    lwc1	$f10,44($a0)
    # Line 297
    lwc1	$f15,40($a0)
    # Line 296
    lwc1	$f8,36($a0)
    # Line 295
    lwc1	$f11,32($a0)
    # Line 294
    lwc1	$f14,28($a0)
    # Line 293
    lwc1	$f12,24($a0)
    # Line 292
    lwc1	$f13,20($a0)
    # Line 282
    move	$a4,$a2
    andi	$a2,$a1,0x3
    # Line 299
    move	$a3,$zero
    blez	$a1,.L0d9adf2c
    # Line 291
    lwc1	$f9,16($a0)
    beqz	$a2,.L0d9ade58
    sra	$at,$a1,0x2
.L0d9ade18:
    # Line 315
    lwc1	$f3,12($a4)
    # Line 314
    lwc1	$f2,8($a4)
    # Line 313
    lwc1	$f1,4($a4)
    # Line 315
    madd.s	$f3,$f10,$f3,$f14
    # Line 316
    lwc1	$f0,0($a4)
    # Line 314
    madd.s	$f2,$f15,$f2,$f12
    # Line 313
    madd.s	$f1,$f8,$f1,$f13
    # Line 316
    madd.s	$f0,$f11,$f0,$f9
    # Line 320
    addiu	$a4,$a4,16
    # Line 319
    swc1	$f3,-4($a4)
    addiu	$a2,$a2,-1
    # Line 318
    swc1	$f2,-8($a4)
    # Line 317
    swc1	$f1,-12($a4)
    # Line 303
    addiu	$a3,$a3,1
    bnez	$a2,.L0d9ade18
    # Line 316
    swc1	$f0,-16($a4)
.L0d9ade58:
    beqz	$at,.L0d9adf2c
    move	$a2,$a4
.L0d9ade60:
    # Line 320
    addiu	$a2,$a2,64
    # Line 315
    lwc1	$f1,-4($a2)
    # Line 314
    lwc1	$f0,-8($a2)
    # Line 313
    lwc1	$f31,-12($a2)
    # Line 315
    madd.s	$f1,$f10,$f1,$f14
    # Line 316
    lwc1	$f29,-16($a2)
    # Line 314
    madd.s	$f0,$f15,$f0,$f12
    # Line 315
    lwc1	$f27,-20($a2)
    # Line 313
    madd.s	$f31,$f8,$f31,$f13
    # Line 314
    lwc1	$f25,-24($a2)
    # Line 316
    madd.s	$f29,$f11,$f29,$f9
    # Line 313
    lwc1	$f23,-28($a2)
    # Line 315
    madd.s	$f27,$f10,$f27,$f14
    # Line 316
    lwc1	$f21,-32($a2)
    # Line 319
    swc1	$f1,-4($a2)
    # Line 314
    madd.s	$f25,$f15,$f25,$f12
    # Line 318
    swc1	$f0,-8($a2)
    # Line 313
    madd.s	$f23,$f8,$f23,$f13
    # Line 317
    swc1	$f31,-12($a2)
    # Line 316
    madd.s	$f21,$f11,$f21,$f9
    swc1	$f29,-16($a2)
    # Line 319
    swc1	$f27,-20($a2)
    # Line 318
    swc1	$f25,-24($a2)
    # Line 317
    swc1	$f23,-28($a2)
    # Line 316
    swc1	$f21,-32($a2)
    # Line 315
    lwc1	$f19,-36($a2)
    # Line 314
    lwc1	$f18,-40($a2)
    # Line 313
    lwc1	$f17,-44($a2)
    # Line 315
    madd.s	$f19,$f10,$f19,$f14
    # Line 316
    lwc1	$f16,-48($a2)
    # Line 314
    madd.s	$f18,$f15,$f18,$f12
    # Line 315
    lwc1	$f7,-52($a2)
    # Line 313
    madd.s	$f17,$f8,$f17,$f13
    # Line 314
    lwc1	$f6,-56($a2)
    # Line 316
    madd.s	$f16,$f11,$f16,$f9
    # Line 313
    lwc1	$f5,-60($a2)
    # Line 315
    madd.s	$f7,$f10,$f7,$f14
    # Line 316
    lwc1	$f4,-64($a2)
    # Line 319
    swc1	$f19,-36($a2)
    # Line 314
    madd.s	$f6,$f15,$f6,$f12
    # Line 318
    swc1	$f18,-40($a2)
    # Line 313
    madd.s	$f5,$f8,$f5,$f13
    # Line 317
    swc1	$f17,-44($a2)
    # Line 316
    madd.s	$f4,$f11,$f4,$f9
    swc1	$f16,-48($a2)
    # Line 319
    swc1	$f7,-52($a2)
    # Line 303
    addiu	$a3,$a3,4
    # Line 318
    swc1	$f6,-56($a2)
    # Line 317
    swc1	$f5,-60($a2)
    # Line 303
    bne	$a1,$a3,.L0d9ade60
    # Line 316
    swc1	$f4,-64($a2)
.L0d9adf2c:
    # Line 323
    jr	$ra
    nop
.end __glOdysseyScaleBiasFilter

# Function: __glOdysseyCvtScaleBias
# Declared: Line 330 (Source lines: 331-455)
# Address: 0x0d9adf40 - 0x0d9ae484 (Size: 1348 bytes, Frame: 0)
.globl __glOdysseyCvtScaleBias
.ent __glOdysseyCvtScaleBias
__glOdysseyCvtScaleBias:
    # Line 338
    sltiu	$v1,$a2,5126
    # Line 331
    lui	$v0,0x15
    addiu	$v0,$v0,-22960
    # Line 338
    bnez	$v1,.L0d9adfdc
    # Line 331
    addu	$at,$t9,$v0
    # Line 338
    sltiu	$v1,$a2,5127
    bnez	$v1,.L0d9ae054
    li	$a5,0x8035
    sltu	$a3,$a2,$a5
    bnez	$a3,.L0d9ae0dc
    sltu	$a4,$a5,$a2
    bnez	$a4,.L0d9ae23c
    li	$a5,0x8363
    # Line 432
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a0,-4
    nop
.L0d9adf90:
    # Line 433
    lwc1	$f0,0($a2)
    # Line 432
    addiu	$a2,$a2,-4
    # Line 433
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($a2)
    # Line 432
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 433
    lwc1	$f1,0($a2)
    # Line 432
    addiu	$a2,$a2,-4
    # Line 433
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a2)
    # Line 432
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 433
    lwc1	$f2,0($a2)
    # Line 432
    addiu	$a2,$a2,-4
    # Line 433
    mul.s	$f2,$f2,$f4
    # Line 432
    bne	$a1,$a2,.L0d9adf90
    # Line 433
    swc1	$f2,4($a2)
    b	.L0d9ae054
    nop
.L0d9adfdc:
    # Line 338
    sltiu	$a3,$a2,5123
    bnez	$a3,.L0d9ae05c
    sltiu	$a4,$a2,5124
    beqz	$a4,.L0d9ae15c
    sltiu	$a3,$a2,5125
    # Line 375
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_37800080
    addiu	$a1,$a0,-4
    nop
    nop
.L0d9ae010:
    # Line 376
    lwc1	$f3,0($a2)
    # Line 375
    addiu	$a2,$a2,-4
    # Line 376
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    # Line 375
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 376
    lwc1	$f5,0($a2)
    # Line 375
    addiu	$a2,$a2,-4
    # Line 376
    mul.s	$f5,$f5,$f4
    swc1	$f5,4($a2)
    # Line 375
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 376
    lwc1	$f6,0($a2)
    # Line 375
    addiu	$a2,$a2,-4
    # Line 376
    mul.s	$f6,$f6,$f4
    # Line 375
    bne	$a1,$a2,.L0d9ae010
    # Line 376
    swc1	$f6,4($a2)
.L0d9ae054:
    # Line 455
    jr	$ra
    nop
.L0d9ae05c:
    # Line 338
    sltiu	$a3,$a2,5121
    bnez	$a3,.L0d9ae1cc
    sltiu	$a4,$a2,5122
    beqz	$a4,.L0d9ae364
    li	$a3,5122
    # Line 349
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a0,-4
    nop
    nop
.L0d9ae090:
    # Line 350
    lwc1	$f7,0($a2)
    # Line 349
    addiu	$a2,$a2,-4
    # Line 350
    mul.s	$f7,$f7,$f4
    swc1	$f7,4($a2)
    # Line 349
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 350
    lwc1	$f8,0($a2)
    # Line 349
    addiu	$a2,$a2,-4
    # Line 350
    mul.s	$f8,$f8,$f4
    swc1	$f8,4($a2)
    # Line 349
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 350
    lwc1	$f9,0($a2)
    # Line 349
    addiu	$a2,$a2,-4
    # Line 350
    mul.s	$f9,$f9,$f4
    # Line 349
    bne	$a1,$a2,.L0d9ae090
    # Line 350
    swc1	$f9,4($a2)
    b	.L0d9ae054
    nop
.L0d9ae0dc:
    # Line 338
    li	$a5,0x8033
    sltu	$a3,$a2,$a5
    bnez	$a3,.L0d9ae2a4
    sltu	$a4,$a5,$a2
    bnez	$a4,.L0d9ae430
    # Line 382
    lwc1	$f4,_lit_3d888889
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    addiu	$a1,$a0,-4
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    nop
    nop
.L0d9ae110:
    # Line 383
    lwc1	$f10,0($a2)
    # Line 382
    addiu	$a2,$a2,-4
    # Line 383
    mul.s	$f10,$f10,$f4
    swc1	$f10,4($a2)
    # Line 382
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 383
    lwc1	$f11,0($a2)
    # Line 382
    addiu	$a2,$a2,-4
    # Line 383
    mul.s	$f11,$f11,$f4
    swc1	$f11,4($a2)
    # Line 382
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 383
    lwc1	$f12,0($a2)
    # Line 382
    addiu	$a2,$a2,-4
    # Line 383
    mul.s	$f12,$f12,$f4
    # Line 382
    bne	$a1,$a2,.L0d9ae110
    # Line 383
    swc1	$f12,4($a2)
    b	.L0d9ae054
    nop
.L0d9ae15c:
    # Line 338
    bnez	$a3,.L0d9ae2f8
    li	$a3,5124
    beqz	$v1,.L0d9ae054
    # Line 425
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    addiu	$a1,$a0,-4
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_30000001
.L0d9ae180:
    # Line 426
    lwc1	$f13,0($a2)
    # Line 425
    addiu	$a2,$a2,-4
    # Line 426
    mul.s	$f13,$f13,$f4
    swc1	$f13,4($a2)
    # Line 425
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 426
    lwc1	$f14,0($a2)
    # Line 425
    addiu	$a2,$a2,-4
    # Line 426
    mul.s	$f14,$f14,$f4
    swc1	$f14,4($a2)
    # Line 425
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 426
    lwc1	$f15,0($a2)
    # Line 425
    addiu	$a2,$a2,-4
    # Line 426
    mul.s	$f15,$f15,$f4
    # Line 425
    bne	$a1,$a2,.L0d9ae180
    # Line 426
    swc1	$f15,4($a2)
    b	.L0d9ae054
    nop
.L0d9ae1cc:
    # Line 338
    li	$a3,5120
    bne	$a2,$a3,.L0d9ae054
    # Line 342
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a0,-4
    lwc1	$f5,_lit_3c008081
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
.L0d9ae1f0:
    # Line 343
    lwc1	$f16,0($a2)
    madd.s	$f16,$f4,$f16,$f5
    # Line 342
    addiu	$a2,$a2,-4
    # Line 343
    swc1	$f16,4($a2)
    # Line 342
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 343
    lwc1	$f17,0($a2)
    madd.s	$f17,$f4,$f17,$f5
    # Line 342
    addiu	$a2,$a2,-4
    # Line 343
    swc1	$f17,4($a2)
    # Line 342
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 343
    lwc1	$f18,0($a2)
    madd.s	$f18,$f4,$f18,$f5
    # Line 342
    addiu	$a2,$a2,-4
    bne	$a1,$a2,.L0d9ae1f0
    # Line 343
    swc1	$f18,4($a2)
    b	.L0d9ae054
    nop
.L0d9ae23c:
    # Line 338
    sltu	$a3,$a2,$a5
    bnez	$a3,.L0d9ae3d0
    li	$a3,0x8036
    sltu	$a4,$a5,$a2
    # Line 404
    lwc1	$f4,_lit_3d042108
    sll	$a2,$a1,0x2
    addiu	$a1,$a0,-4
    lwc1	$f5,_lit_3c820821
    # Line 338
    bnez	$a4,.L0d9ae054
    # Line 404
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    nop
.L0d9ae270:
    # Line 412
    lwc1	$f23,-8($a2)
    # Line 409
    lwc1	$f21,-4($a2)
    # Line 406
    lwc1	$f19,0($a2)
    # Line 404
    addiu	$a2,$a2,-12
    # Line 412
    mul.s	$f23,$f23,$f4
    swc1	$f23,4($a2)
    # Line 409
    mul.s	$f21,$f21,$f5
    swc1	$f21,8($a2)
    # Line 406
    mul.s	$f19,$f19,$f4
    # Line 404
    bne	$a1,$a2,.L0d9ae270
    # Line 406
    swc1	$f19,12($a2)
    b	.L0d9ae054
    nop
.L0d9ae2a4:
    # Line 338
    li	$a3,0x8032
    bne	$a2,$a3,.L0d9ae054
    # Line 355
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    addiu	$a1,$a0,-4
    lwc1	$f4,_lit_3e124925
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    nop
    nop
    nop
.L0d9ae2d0:
    # Line 360
    lwc1	$f27,-4($a2)
    # Line 357
    lwc1	$f25,0($a2)
    # Line 355
    addiu	$a2,$a2,-12
    # Line 360
    mul.s	$f27,$f27,$f4
    swc1	$f27,8($a2)
    # Line 357
    mul.s	$f25,$f25,$f4
    # Line 355
    bne	$a1,$a2,.L0d9ae2d0
    # Line 357
    swc1	$f25,12($a2)
    b	.L0d9ae054
    nop
.L0d9ae2f8:
    # Line 338
    bne	$a2,$a3,.L0d9ae054
    # Line 418
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f5,_lit_2f800001
    lwc1	$f4,_lit_30000001
    addiu	$a1,$a0,-4
.L0d9ae318:
    # Line 419
    lwc1	$f29,0($a2)
    madd.s	$f29,$f5,$f29,$f4
    # Line 418
    addiu	$a2,$a2,-4
    # Line 419
    swc1	$f29,4($a2)
    # Line 418
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 419
    lwc1	$f31,0($a2)
    madd.s	$f31,$f5,$f31,$f4
    # Line 418
    addiu	$a2,$a2,-4
    # Line 419
    swc1	$f31,4($a2)
    # Line 418
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 419
    lwc1	$f0,0($a2)
    madd.s	$f0,$f5,$f0,$f4
    # Line 418
    addiu	$a2,$a2,-4
    bne	$a1,$a2,.L0d9ae318
    # Line 419
    swc1	$f0,4($a2)
    b	.L0d9ae054
    nop
.L0d9ae364:
    # Line 338
    bne	$a2,$a3,.L0d9ae054
    # Line 368
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_37800080
    lwc1	$f5,_lit_38000080
    addiu	$a1,$a0,-4
.L0d9ae384:
    # Line 369
    lwc1	$f1,0($a2)
    madd.s	$f1,$f4,$f1,$f5
    # Line 368
    addiu	$a2,$a2,-4
    # Line 369
    swc1	$f1,4($a2)
    # Line 368
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 369
    lwc1	$f2,0($a2)
    madd.s	$f2,$f4,$f2,$f5
    # Line 368
    addiu	$a2,$a2,-4
    # Line 369
    swc1	$f2,4($a2)
    # Line 368
    beq	$a1,$a2,.L0d9ae054
    nop
    # Line 369
    lwc1	$f3,0($a2)
    madd.s	$f3,$f4,$f3,$f5
    # Line 368
    addiu	$a2,$a2,-4
    bne	$a1,$a2,.L0d9ae384
    # Line 369
    swc1	$f3,4($a2)
    b	.L0d9ae054
    nop
.L0d9ae3d0:
    # Line 338
    bne	$a2,$a3,.L0d9ae054
    # Line 438
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_3eaaaaab
    lwc1	$f5,_lit_3a802008
    addiu	$a1,$a0,-4
.L0d9ae3f0:
    addiu	$a2,$a2,-16
    # Line 449
    lwc1	$f9,4($a2)
    # Line 446
    lwc1	$f8,8($a2)
    # Line 443
    lwc1	$f7,12($a2)
    # Line 449
    mul.s	$f9,$f9,$f4
    # Line 440
    lwc1	$f6,16($a2)
    # Line 449
    swc1	$f9,4($a2)
    # Line 446
    mul.s	$f8,$f8,$f5
    swc1	$f8,8($a2)
    # Line 443
    mul.s	$f7,$f7,$f5
    swc1	$f7,12($a2)
    # Line 440
    mul.s	$f6,$f6,$f5
    # Line 438
    bne	$a1,$a2,.L0d9ae3f0
    # Line 440
    swc1	$f6,16($a2)
    b	.L0d9ae054
    nop
.L0d9ae430:
    # Line 338
    li	$a3,0x8034
    bne	$a2,$a3,.L0d9ae054
    # Line 388
    sll	$a2,$a1,0x2
    addu	$a2,$a0,$a2
    beq	$a2,$a0,.L0d9ae054
    addiu	$a2,$a2,-4
    lwc1	$f4,_lit_3d042108
    addiu	$a1,$a0,-4
.L0d9ae450:
    # Line 396
    lwc1	$f12,-8($a2)
    # Line 393
    lwc1	$f11,-4($a2)
    # Line 390
    lwc1	$f10,0($a2)
    # Line 388
    addiu	$a2,$a2,-16
    # Line 396
    mul.s	$f12,$f12,$f4
    swc1	$f12,8($a2)
    # Line 393
    mul.s	$f11,$f11,$f4
    swc1	$f11,12($a2)
    # Line 390
    mul.s	$f10,$f10,$f4
    # Line 388
    bne	$a1,$a2,.L0d9ae450
    # Line 390
    swc1	$f10,16($a2)
    b	.L0d9ae054
    nop
.end __glOdysseyCvtScaleBias

# Function: __glOdysseyInitConvolutionState
# Declared: Line 458 (Source lines: 459-482)
# Address: 0x0d9ae490 - 0x0d9ae544 (Size: 180 bytes, Frame: 16)
.globl __glOdysseyInitConvolutionState
.ent __glOdysseyInitConvolutionState
__glOdysseyInitConvolutionState:
    # Line 460
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 459
    lui	$at,0x15
    # Line 460
    lw	$a2,4112($zero)
    # Line 459
    addiu	$sp,$sp,-16
    addiu	$at,$at,-24320
    sd	$gp,0($sp)
    # Line 460
    beq	$v0,$v1,.L0d9ae52c
    # Line 459
    addu	$gp,$t9,$at
    # Line 463
    lui	$a3,0x1
    addu	$a3,$a2,$a3
    # Line 465
    sb	$zero,7147($a3)
    # Line 466
    li	$v1,0x8010
    # Line 464
    sb	$zero,7120($a3)
    # Line 463
    li	$v0,4353
    # Line 466
    beq	$a0,$v1,.L0d9ae504
    # Line 463
    sw	$v0,6624($a3)
    # Line 466
    li	$a4,0x8011
    beq	$a0,$a4,.L0d9ae518
    li	$a5,0x8012
    beq	$a0,$a5,.L0d9ae4f0
.L0d9ae4e4:
    # Line 482
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ae4f0:
    # Line 477
    sb	$zero,7123($a3)
    # Line 476
    sb	$zero,7146($a3)
    # Line 482
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ae504:
    # Line 469
    sb	$zero,7121($a3)
    # Line 468
    sb	$zero,7144($a3)
    # Line 482
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ae518:
    # Line 473
    sb	$zero,7145($a3)
    # Line 472
    sb	$zero,7122($a3)
    # Line 482
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ae52c:
    # Line 460
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ae4e4
    ld	$ra,8($sp)
.end __glOdysseyInitConvolutionState

# Function: __glOdysseyCvtToRGBA
# Declared: Line 488 (Source lines: 490-598)
# Address: 0x0d9ae550 - 0x0d9ae96c (Size: 1052 bytes, Frame: 0)
.globl __glOdysseyCvtToRGBA
.ent __glOdysseyCvtToRGBA
__glOdysseyCvtToRGBA:
    # Line 495
    sltiu	$v1,$a3,6407
    # Line 490
    lui	$v0,0x15
    addiu	$v0,$v0,-24512
    # Line 495
    bnez	$v1,.L0d9ae648
    # Line 490
    addu	$at,$t9,$v0
    # Line 495
    sltiu	$v1,$a3,6408
    beqz	$v1,.L0d9ae69c
    li	$a6,0x8000
    blez	$a2,.L0d9ae640
    andi	$a6,$a2,0x3
    move	$a3,$zero
    beqz	$a6,.L0d9ae5b4
    lwc1	$f4,_lit_3f800000
.L0d9ae584:
    # Line 572
    lwc1	$f2,-12($a0)
    # Line 573
    lwc1	$f1,-8($a0)
    # Line 574
    lwc1	$f0,-4($a0)
    # Line 575
    swc1	$f4,-4($a1)
    # Line 570
    addiu	$a1,$a1,-16
    addiu	$a6,$a6,-1
    # Line 578
    swc1	$f2,0($a1)
    # Line 569
    addiu	$a3,$a3,1
    # Line 577
    swc1	$f1,4($a1)
    # Line 571
    addiu	$a0,$a0,-12
    bnez	$a6,.L0d9ae584
    # Line 576
    swc1	$f0,8($a1)
.L0d9ae5b4:
    sra	$a4,$a2,0x2
    beqz	$a4,.L0d9ae640
    nop
.L0d9ae5c0:
    # Line 572
    lwc1	$f13,-12($a0)
    # Line 573
    lwc1	$f14,-8($a0)
    # Line 574
    lwc1	$f15,-4($a0)
    # Line 575
    swc1	$f4,-4($a1)
    # Line 576
    swc1	$f15,-8($a1)
    # Line 577
    swc1	$f14,-12($a1)
    # Line 578
    swc1	$f13,-16($a1)
    # Line 572
    lwc1	$f10,-24($a0)
    # Line 573
    lwc1	$f11,-20($a0)
    # Line 574
    lwc1	$f12,-16($a0)
    # Line 575
    swc1	$f4,-20($a1)
    # Line 576
    swc1	$f12,-24($a1)
    # Line 577
    swc1	$f11,-28($a1)
    # Line 578
    swc1	$f10,-32($a1)
    # Line 572
    lwc1	$f7,-36($a0)
    # Line 573
    lwc1	$f8,-32($a0)
    # Line 574
    lwc1	$f9,-28($a0)
    # Line 575
    swc1	$f4,-36($a1)
    # Line 576
    swc1	$f9,-40($a1)
    # Line 577
    swc1	$f8,-44($a1)
    # Line 578
    swc1	$f7,-48($a1)
    # Line 572
    lwc1	$f6,-48($a0)
    # Line 573
    lwc1	$f5,-44($a0)
    # Line 570
    addiu	$a1,$a1,-64
    # Line 574
    lwc1	$f3,-40($a0)
    # Line 575
    swc1	$f4,12($a1)
    # Line 569
    addiu	$a3,$a3,4
    # Line 578
    swc1	$f6,0($a1)
    # Line 577
    swc1	$f5,4($a1)
    # Line 571
    addiu	$a0,$a0,-48
    # Line 569
    bne	$a2,$a3,.L0d9ae5c0
    # Line 576
    swc1	$f3,8($a1)
.L0d9ae640:
    # Line 598
    jr	$ra
    nop
.L0d9ae648:
    # Line 495
    sltiu	$a6,$a3,6405
    bnez	$a6,.L0d9ae7a8
    sltiu	$a5,$a3,6406
    beqz	$a5,.L0d9ae850
    li	$t9,6406
    blez	$a2,.L0d9ae640
    move	$a3,$zero
    mtc1	$zero,$f5
    lwc1	$f4,_lit_3f800000
    nop
.L0d9ae670:
    # Line 551
    lwc1	$f16,-4($a0)
    # Line 555
    swc1	$f5,-16($a1)
    # Line 554
    swc1	$f5,-12($a1)
    # Line 549
    addiu	$a3,$a3,1
    # Line 552
    swc1	$f4,-4($a1)
    # Line 550
    addiu	$a1,$a1,-16
    # Line 551
    addiu	$a0,$a0,-4
    # Line 549
    bne	$a2,$a3,.L0d9ae670
    # Line 553
    swc1	$f16,8($a1)
    b	.L0d9ae640
    nop
.L0d9ae69c:
    # Line 495
    sltu	$a7,$a3,$a6
    bnez	$a7,.L0d9ae7fc
    sltu	$t0,$a6,$a3
    sra	$t1,$a2,0x2
    li	$v1,0x8049
    bnez	$t0,.L0d9ae8ec
    andi	$a6,$a2,0x3
    blez	$a2,.L0d9ae640
    move	$a3,$zero
    beqz	$a6,.L0d9ae6fc
    nop
.L0d9ae6c8:
    # Line 586
    lwc1	$f18,-12($a0)
    # Line 587
    lwc1	$f19,-8($a0)
    # Line 588
    lwc1	$f21,-4($a0)
    # Line 583
    addiu	$a1,$a1,-16
    # Line 589
    lwc1	$f17,-16($a0)
    # Line 592
    swc1	$f21,0($a1)
    addiu	$a6,$a6,-1
    # Line 591
    swc1	$f19,4($a1)
    # Line 582
    addiu	$a3,$a3,1
    # Line 590
    swc1	$f18,8($a1)
    # Line 584
    addiu	$a0,$a0,-16
    bnez	$a6,.L0d9ae6c8
    # Line 589
    swc1	$f17,12($a1)
.L0d9ae6fc:
    beqz	$t1,.L0d9ae640
    nop
    nop
    nop
    nop
.L0d9ae710:
    # Line 586
    lwc1	$f9,-12($a0)
    # Line 587
    lwc1	$f8,-8($a0)
    # Line 589
    lwc1	$f10,-16($a0)
    # Line 588
    lwc1	$f7,-4($a0)
    # Line 589
    swc1	$f10,-4($a1)
    # Line 590
    swc1	$f9,-8($a1)
    # Line 591
    swc1	$f8,-12($a1)
    # Line 592
    swc1	$f7,-16($a1)
    # Line 586
    lwc1	$f5,-28($a0)
    # Line 587
    lwc1	$f4,-24($a0)
    # Line 589
    lwc1	$f6,-32($a0)
    # Line 588
    lwc1	$f3,-20($a0)
    # Line 589
    swc1	$f6,-20($a1)
    # Line 590
    swc1	$f5,-24($a1)
    # Line 591
    swc1	$f4,-28($a1)
    # Line 592
    swc1	$f3,-32($a1)
    # Line 586
    lwc1	$f1,-44($a0)
    # Line 587
    lwc1	$f0,-40($a0)
    # Line 589
    lwc1	$f2,-48($a0)
    # Line 588
    lwc1	$f31,-36($a0)
    # Line 589
    swc1	$f2,-36($a1)
    # Line 590
    swc1	$f1,-40($a1)
    # Line 591
    swc1	$f0,-44($a1)
    # Line 592
    swc1	$f31,-48($a1)
    # Line 586
    lwc1	$f25,-60($a0)
    # Line 587
    lwc1	$f27,-56($a0)
    # Line 588
    lwc1	$f29,-52($a0)
    # Line 583
    addiu	$a1,$a1,-64
    # Line 589
    lwc1	$f23,-64($a0)
    # Line 592
    swc1	$f29,0($a1)
    # Line 582
    addiu	$a3,$a3,4
    # Line 591
    swc1	$f27,4($a1)
    # Line 590
    swc1	$f25,8($a1)
    # Line 584
    addiu	$a0,$a0,-64
    # Line 582
    bne	$a2,$a3,.L0d9ae710
    # Line 589
    swc1	$f23,12($a1)
    b	.L0d9ae640
    nop
.L0d9ae7a8:
    # Line 495
    sltiu	$t2,$a3,6404
    bnez	$t2,.L0d9ae89c
    li	$v0,6403
    beqz	$a6,.L0d9ae640
    nop
    blez	$a2,.L0d9ae640
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    move	$a3,$zero
    nop
.L0d9ae7d0:
    # Line 541
    lwc1	$f11,-4($a0)
    # Line 545
    swc1	$f5,-16($a1)
    # Line 543
    swc1	$f5,-8($a1)
    # Line 539
    addiu	$a3,$a3,1
    # Line 542
    swc1	$f4,-4($a1)
    # Line 540
    addiu	$a1,$a1,-16
    # Line 541
    addiu	$a0,$a0,-4
    # Line 539
    bne	$a2,$a3,.L0d9ae7d0
    # Line 544
    swc1	$f11,4($a1)
    b	.L0d9ae640
    nop
.L0d9ae7fc:
    # Line 495
    sltiu	$t3,$a3,6410
    li	$a4,6409
    bnez	$t3,.L0d9ae92c
    sltiu	$t8,$a3,6411
    beqz	$t8,.L0d9ae640
    move	$a3,$zero
    blez	$a2,.L0d9ae640
    nop
    nop
.L0d9ae820:
    # Line 520
    lwc1	$f13,-8($a0)
    # Line 521
    addiu	$a1,$a1,-16
    # Line 519
    lwc1	$f12,-4($a0)
    # Line 525
    swc1	$f13,0($a1)
    # Line 518
    addiu	$a3,$a3,1
    # Line 524
    swc1	$f13,4($a1)
    # Line 523
    swc1	$f13,8($a1)
    # Line 520
    addiu	$a0,$a0,-8
    # Line 518
    bne	$a2,$a3,.L0d9ae820
    # Line 522
    swc1	$f12,12($a1)
    b	.L0d9ae640
    nop
.L0d9ae850:
    # Line 495
    bne	$a3,$t9,.L0d9ae640
    nop
    blez	$a2,.L0d9ae640
    mtc1	$zero,$f5
    move	$a3,$zero
    nop
    nop
    nop
.L0d9ae870:
    # Line 562
    lwc1	$f14,-4($a0)
    # Line 565
    swc1	$f5,-16($a1)
    # Line 564
    swc1	$f5,-12($a1)
    # Line 559
    addiu	$a3,$a3,1
    # Line 563
    swc1	$f5,-8($a1)
    # Line 560
    addiu	$a1,$a1,-16
    # Line 561
    addiu	$a0,$a0,-4
    # Line 559
    bne	$a2,$a3,.L0d9ae870
    # Line 562
    swc1	$f14,12($a1)
    b	.L0d9ae640
    nop
.L0d9ae89c:
    # Line 495
    bne	$a3,$v0,.L0d9ae640
    nop
    blez	$a2,.L0d9ae640
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    move	$a3,$zero
    nop
    nop
    nop
.L0d9ae8c0:
    # Line 531
    lwc1	$f15,-4($a0)
    # Line 534
    swc1	$f5,-12($a1)
    # Line 533
    swc1	$f5,-8($a1)
    # Line 529
    addiu	$a3,$a3,1
    # Line 532
    swc1	$f4,-4($a1)
    # Line 530
    addiu	$a1,$a1,-16
    # Line 531
    addiu	$a0,$a0,-4
    # Line 529
    bne	$a2,$a3,.L0d9ae8c0
    # Line 535
    swc1	$f15,0($a1)
    b	.L0d9ae640
    nop
.L0d9ae8ec:
    # Line 495
    bne	$a3,$v1,.L0d9ae640
    nop
    blez	$a2,.L0d9ae640
    move	$a3,$zero
    nop
.L0d9ae900:
    # Line 498
    lwc1	$f16,-4($a0)
    # Line 499
    addiu	$a1,$a1,-16
    # Line 503
    swc1	$f16,0($a1)
    # Line 497
    addiu	$a3,$a3,1
    # Line 502
    swc1	$f16,4($a1)
    # Line 501
    swc1	$f16,8($a1)
    # Line 498
    addiu	$a0,$a0,-4
    # Line 497
    bne	$a2,$a3,.L0d9ae900
    # Line 500
    swc1	$f16,12($a1)
    b	.L0d9ae640
    nop
.L0d9ae92c:
    # Line 495
    bne	$a3,$a4,.L0d9ae640
    nop
    blez	$a2,.L0d9ae640
    move	$a3,$zero
    lwc1	$f4,_lit_3f800000
.L0d9ae940:
    # Line 509
    lwc1	$f17,-4($a0)
    # Line 511
    swc1	$f4,-4($a1)
    # Line 510
    addiu	$a1,$a1,-16
    # Line 508
    addiu	$a3,$a3,1
    # Line 514
    swc1	$f17,0($a1)
    # Line 513
    swc1	$f17,4($a1)
    # Line 509
    addiu	$a0,$a0,-4
    # Line 508
    bne	$a2,$a3,.L0d9ae940
    # Line 512
    swc1	$f17,8($a1)
    b	.L0d9ae640
    nop
.end __glOdysseyCvtToRGBA

# Function: __glOdysseyCvtToResidue
# Declared: Line 606 (Source lines: 609-715)
# Address: 0x0d9ae970 - 0x0d9b0634 (Size: 7364 bytes, Frame: 48)
.globl __glOdysseyCvtToResidue
.ent __glOdysseyCvtToResidue
__glOdysseyCvtToResidue:
    # Line 609
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    sd	$ra,24($sp)
    sd	$s1,16($sp)
    # Line 615
    li	$v0,6409
    # Line 609
    lui	$v1,0x15
    sd	$s3,8($sp)
    addiu	$v1,$v1,-25568
    sd	$s2,0($sp)
    # Line 615
    beq	$a3,$v0,.L0d9aef80
    # Line 609
    addu	$at,$t9,$v1
    # Line 615
    li	$a5,6410
    beq	$a3,$a5,.L0d9af108
    li	$a6,6407
    beq	$a3,$a6,.L0d9af6f8
    li	$a7,6408
    bne	$a3,$a7,.L0d9ae9f0
    ld	$s0,32($sp)
    # Line 678
    blez	$a2,.L0d9ae9f0
    ld	$s0,32($sp)
    li	$s1,127
    li	$ra,511
    li	$t9,1023
    li	$s0,2047
    li	$t0,1
    li	$t8,2
    li	$s2,3
    li	$s3,4
    ldc1	$f4,_lit8_3f30000000000000
    b	.L0d9b0628
    move	$a3,$zero
.L0d9ae9ec:
    ld	$s0,32($sp)
.L0d9ae9f0:
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s3,8($sp)
    ld	$s2,0($sp)
    # Line 715
    jr	$ra
    addiu	$sp,$sp,48
.L0d9aea08:
    # Line 687
    srl	$a6,$t1,0x1f
    li	$t2,0x8102
    negu	$a7,$t1
    dsll	$t2,$t2,0x10
    movz	$a7,$t1,$a6
    ori	$t2,$t2,0x409
    multu	$a7,$t2
    mfhi	$a5
    sra	$a5,$a5,0x6
    negu	$v1,$a5
    movz	$v1,$a5,$a6
    mult	$v1,$s1
    # Line 688
    li	$v0,0x8040
    negu	$t3,$t1
    dsll	$v0,$v0,0x10
    movz	$t3,$t1,$a6
    ori	$v0,$v0,0x2011
    # Line 687
    mflo	$v1
    nop
    nop
    # Line 688
    multu	$t3,$v0
    mfhi	$t2
    sra	$t2,$t2,0x8
    negu	$a7,$t2
    movz	$a7,$t2,$a6
    mult	$a7,$ra
    # Line 689
    li	$a5,0x8020
    dsll	$a5,$a5,0x10
    negu	$t3,$t1
    ori	$a5,$a5,0x803
    movz	$t3,$t1,$a6
    # Line 688
    mflo	$v0
    nop
    nop
    # Line 689
    multu	$t3,$a5
    mfhi	$t2
    sra	$t2,$t2,0x9
    negu	$a7,$t2
    movz	$a7,$t2,$a6
    mult	$a7,$t9
    # Line 690
    li	$a5,0x8010
    dsll	$a5,$a5,0x10
    negu	$t2,$t1
    ori	$a5,$a5,0x201
    movz	$t2,$t1,$a6
    # Line 689
    mflo	$t3
    nop
    nop
    # Line 690
    multu	$t2,$a5
    mfhi	$a7
    sra	$a7,$a7,0xa
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    mult	$a5,$s0
    # Line 687
    subu	$v1,$t1,$v1
    mtc1	$v1,$f3
    # Line 688
    subu	$v0,$t1,$v0
    mtc1	$v0,$f2
    # Line 689
    subu	$t3,$t1,$t3
    # Line 690
    mflo	$t2
    # Line 689
    mtc1	$t3,$f1
    # Line 690
    subu	$t2,$t1,$t2
    # Line 687
    cvt.s.w	$f3,$f3
    # Line 690
    mtc1	$t2,$f0
    # Line 688
    cvt.s.w	$f2,$f2
    # Line 689
    cvt.s.w	$f1,$f1
    # Line 690
    cvt.s.w	$f0,$f0
    # Line 687
    cvt.d.s	$f3,$f3
    # Line 688
    cvt.d.s	$f2,$f2
    # Line 687
    mul.d	$f3,$f3,$f4
    # Line 689
    cvt.d.s	$f1,$f1
    # Line 688
    mul.d	$f2,$f2,$f4
    # Line 690
    cvt.d.s	$f0,$f0
    # Line 687
    cvt.s.d	$f3,$f3
    # Line 689
    mul.d	$f1,$f1,$f4
    # Line 687
    swc1	$f3,12($a1)
    # Line 688
    cvt.s.d	$f2,$f2
    # Line 690
    mul.d	$f0,$f0,$f4
    # Line 688
    swc1	$f2,8($a1)
    # Line 689
    cvt.s.d	$f1,$f1
    swc1	$f1,4($a1)
    # Line 690
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    nop
    nop
    nop
.L0d9aeb60:
    # Line 678
    beq	$a2,$a3,.L0d9ae9ec
    # Line 679
    addiu	$a1,$a1,-16
    # Line 683
    lh	$t1,-8($a0)
.L0d9aeb6c:
    addiu	$a0,$a0,-8
    # Line 682
    lh	$t2,2($a0)
    # Line 681
    lh	$t3,4($a0)
    # Line 678
    addiu	$a3,$a3,1
    # Line 685
    beq	$a4,$t0,.L0d9aea08
    # Line 680
    lh	$a7,6($a0)
    # Line 685
    beq	$a4,$t8,.L0d9aece8
    # Line 694
    srl	$t1,$t2,0x1f
    # Line 685
    beq	$a4,$s2,.L0d9aee34
    # Line 700
    srl	$t2,$t3,0x1f
    # Line 685
    bne	$a4,$s3,.L0d9aeb60
    # Line 706
    srl	$t1,$a7,0x1f
    li	$t3,0x8102
    negu	$t2,$a7
    dsll	$t3,$t3,0x10
    movz	$t2,$a7,$t1
    ori	$t3,$t3,0x409
    multu	$t2,$t3
    mfhi	$a6
    sra	$a6,$a6,0x6
    negu	$a5,$a6
    movz	$a5,$a6,$t1
    mult	$a5,$s1
    # Line 707
    li	$v1,0x8040
    negu	$v0,$a7
    dsll	$v1,$v1,0x10
    movz	$v0,$a7,$t1
    ori	$v1,$v1,0x2011
    # Line 706
    mflo	$a5
    nop
    nop
    # Line 707
    multu	$v0,$v1
    mfhi	$t3
    sra	$t3,$t3,0x8
    negu	$t2,$t3
    movz	$t2,$t3,$t1
    mult	$t2,$ra
    # Line 708
    li	$a6,0x8020
    dsll	$a6,$a6,0x10
    negu	$v0,$a7
    ori	$a6,$a6,0x803
    movz	$v0,$a7,$t1
    # Line 707
    mflo	$v1
    nop
    nop
    # Line 708
    multu	$v0,$a6
    mfhi	$t3
    sra	$t3,$t3,0x9
    negu	$t2,$t3
    movz	$t2,$t3,$t1
    mult	$t2,$t9
    # Line 709
    li	$a6,0x8010
    dsll	$a6,$a6,0x10
    negu	$t3,$a7
    ori	$a6,$a6,0x201
    movz	$t3,$a7,$t1
    # Line 708
    mflo	$v0
    nop
    nop
    # Line 709
    multu	$t3,$a6
    mfhi	$t2
    sra	$t2,$t2,0xa
    negu	$a6,$t2
    movz	$a6,$t2,$t1
    mult	$a6,$s0
    # Line 706
    subu	$a5,$a7,$a5
    mtc1	$a5,$f8
    # Line 707
    subu	$v1,$a7,$v1
    mtc1	$v1,$f7
    # Line 708
    subu	$v0,$a7,$v0
    # Line 709
    mflo	$t3
    # Line 708
    mtc1	$v0,$f6
    # Line 709
    subu	$t3,$a7,$t3
    # Line 706
    cvt.s.w	$f8,$f8
    # Line 709
    mtc1	$t3,$f5
    # Line 707
    cvt.s.w	$f7,$f7
    # Line 708
    cvt.s.w	$f6,$f6
    # Line 709
    cvt.s.w	$f5,$f5
    # Line 706
    cvt.d.s	$f8,$f8
    # Line 707
    cvt.d.s	$f7,$f7
    # Line 706
    mul.d	$f8,$f8,$f4
    # Line 708
    cvt.d.s	$f6,$f6
    # Line 707
    mul.d	$f7,$f7,$f4
    # Line 709
    cvt.d.s	$f5,$f5
    # Line 706
    cvt.s.d	$f8,$f8
    # Line 708
    mul.d	$f6,$f6,$f4
    # Line 706
    swc1	$f8,12($a1)
    # Line 707
    cvt.s.d	$f7,$f7
    # Line 709
    mul.d	$f5,$f5,$f4
    # Line 707
    swc1	$f7,8($a1)
    # Line 708
    cvt.s.d	$f6,$f6
    swc1	$f6,4($a1)
    # Line 709
    cvt.s.d	$f5,$f5
    # Line 710
    b	.L0d9aeb60
    # Line 709
    swc1	$f5,0($a1)
.L0d9aece8:
    # Line 694
    li	$v0,0x8102
    negu	$t3,$t2
    dsll	$v0,$v0,0x10
    movz	$t3,$t2,$t1
    ori	$v0,$v0,0x409
    multu	$t3,$v0
    mfhi	$a7
    sra	$a7,$a7,0x6
    negu	$a6,$a7
    movz	$a6,$a7,$t1
    mult	$a6,$s1
    # Line 695
    li	$a5,0x8040
    negu	$v1,$t2
    dsll	$a5,$a5,0x10
    movz	$v1,$t2,$t1
    ori	$a5,$a5,0x2011
    # Line 694
    mflo	$a6
    nop
    nop
    # Line 695
    multu	$v1,$a5
    mfhi	$v0
    sra	$v0,$v0,0x8
    negu	$t3,$v0
    movz	$t3,$v0,$t1
    mult	$t3,$ra
    # Line 696
    li	$a7,0x8020
    dsll	$a7,$a7,0x10
    negu	$v1,$t2
    ori	$a7,$a7,0x803
    movz	$v1,$t2,$t1
    # Line 695
    mflo	$a5
    nop
    nop
    # Line 696
    multu	$v1,$a7
    mfhi	$v0
    sra	$v0,$v0,0x9
    negu	$t3,$v0
    movz	$t3,$v0,$t1
    mult	$t3,$t9
    # Line 697
    li	$a7,0x8010
    dsll	$a7,$a7,0x10
    negu	$v0,$t2
    ori	$a7,$a7,0x201
    movz	$v0,$t2,$t1
    # Line 696
    mflo	$v1
    nop
    nop
    # Line 697
    multu	$v0,$a7
    mfhi	$t3
    sra	$t3,$t3,0xa
    negu	$a7,$t3
    movz	$a7,$t3,$t1
    mult	$a7,$s0
    # Line 694
    subu	$a6,$t2,$a6
    mtc1	$a6,$f12
    # Line 695
    subu	$a5,$t2,$a5
    mtc1	$a5,$f11
    # Line 696
    subu	$v1,$t2,$v1
    # Line 697
    mflo	$v0
    # Line 696
    mtc1	$v1,$f10
    # Line 697
    subu	$v0,$t2,$v0
    # Line 694
    cvt.s.w	$f12,$f12
    # Line 697
    mtc1	$v0,$f9
    # Line 695
    cvt.s.w	$f11,$f11
    # Line 696
    cvt.s.w	$f10,$f10
    # Line 697
    cvt.s.w	$f9,$f9
    # Line 694
    cvt.d.s	$f12,$f12
    # Line 695
    cvt.d.s	$f11,$f11
    # Line 694
    mul.d	$f12,$f12,$f4
    # Line 696
    cvt.d.s	$f10,$f10
    # Line 695
    mul.d	$f11,$f11,$f4
    # Line 697
    cvt.d.s	$f9,$f9
    # Line 694
    cvt.s.d	$f12,$f12
    # Line 696
    mul.d	$f10,$f10,$f4
    # Line 694
    swc1	$f12,12($a1)
    # Line 695
    cvt.s.d	$f11,$f11
    # Line 697
    mul.d	$f9,$f9,$f4
    # Line 695
    swc1	$f11,8($a1)
    # Line 696
    cvt.s.d	$f10,$f10
    swc1	$f10,4($a1)
    # Line 697
    cvt.s.d	$f9,$f9
    # Line 698
    b	.L0d9aeb60
    # Line 697
    swc1	$f9,0($a1)
.L0d9aee34:
    # Line 700
    li	$v1,0x8102
    negu	$v0,$t3
    dsll	$v1,$v1,0x10
    movz	$v0,$t3,$t2
    ori	$v1,$v1,0x409
    multu	$v0,$v1
    mfhi	$t1
    sra	$t1,$t1,0x6
    negu	$a7,$t1
    movz	$a7,$t1,$t2
    mult	$a7,$s1
    # Line 701
    li	$a6,0x8040
    negu	$a5,$t3
    dsll	$a6,$a6,0x10
    movz	$a5,$t3,$t2
    ori	$a6,$a6,0x2011
    # Line 700
    mflo	$a7
    nop
    nop
    # Line 701
    multu	$a5,$a6
    mfhi	$v1
    sra	$v1,$v1,0x8
    negu	$v0,$v1
    movz	$v0,$v1,$t2
    mult	$v0,$ra
    # Line 702
    li	$t1,0x8020
    dsll	$t1,$t1,0x10
    negu	$a5,$t3
    ori	$t1,$t1,0x803
    movz	$a5,$t3,$t2
    # Line 701
    mflo	$a6
    nop
    nop
    # Line 702
    multu	$a5,$t1
    mfhi	$v1
    sra	$v1,$v1,0x9
    negu	$v0,$v1
    movz	$v0,$v1,$t2
    mult	$v0,$t9
    # Line 703
    li	$t1,0x8010
    dsll	$t1,$t1,0x10
    negu	$v1,$t3
    ori	$t1,$t1,0x201
    movz	$v1,$t3,$t2
    # Line 702
    mflo	$a5
    nop
    nop
    # Line 703
    multu	$v1,$t1
    mfhi	$v0
    sra	$v0,$v0,0xa
    negu	$t1,$v0
    movz	$t1,$v0,$t2
    mult	$t1,$s0
    # Line 700
    subu	$a7,$t3,$a7
    mtc1	$a7,$f16
    # Line 701
    subu	$a6,$t3,$a6
    mtc1	$a6,$f15
    # Line 702
    subu	$a5,$t3,$a5
    # Line 703
    mflo	$v1
    # Line 702
    mtc1	$a5,$f14
    # Line 703
    subu	$v1,$t3,$v1
    # Line 700
    cvt.s.w	$f16,$f16
    # Line 703
    mtc1	$v1,$f13
    # Line 701
    cvt.s.w	$f15,$f15
    # Line 702
    cvt.s.w	$f14,$f14
    # Line 703
    cvt.s.w	$f13,$f13
    # Line 700
    cvt.d.s	$f16,$f16
    # Line 701
    cvt.d.s	$f15,$f15
    # Line 700
    mul.d	$f16,$f16,$f4
    # Line 702
    cvt.d.s	$f14,$f14
    # Line 701
    mul.d	$f15,$f15,$f4
    # Line 703
    cvt.d.s	$f13,$f13
    # Line 700
    cvt.s.d	$f16,$f16
    # Line 702
    mul.d	$f14,$f14,$f4
    # Line 700
    swc1	$f16,12($a1)
    # Line 701
    cvt.s.d	$f15,$f15
    # Line 703
    mul.d	$f13,$f13,$f4
    # Line 701
    swc1	$f15,8($a1)
    # Line 702
    cvt.s.d	$f14,$f14
    swc1	$f14,4($a1)
    # Line 703
    cvt.s.d	$f13,$f13
    # Line 704
    b	.L0d9aeb60
    # Line 703
    swc1	$f13,0($a1)
.L0d9aef80:
    # Line 617
    blez	$a2,.L0d9ae9f0
    ld	$s0,32($sp)
    li	$s1,127
    li	$ra,511
    li	$t9,1023
    ldc1	$f4,_lit8_3f30000000000000
    li	$s0,2047
    move	$a3,$zero
.L0d9aefa0:
    # Line 620
    li	$t0,0x8102
    # Line 618
    lh	$a4,-2($a0)
    # Line 620
    dsll	$t0,$t0,0x10
    negu	$a7,$a4
    srl	$t2,$a4,0x1f
    ori	$t0,$t0,0x409
    movz	$a7,$a4,$t2
    multu	$a7,$t0
    mfhi	$a6
    sra	$a6,$a6,0x6
    negu	$a5,$a6
    movz	$a5,$a6,$t2
    mult	$a5,$s1
    # Line 621
    li	$v1,0x8040
    dsll	$v1,$v1,0x10
    negu	$v0,$a4
    ori	$v1,$v1,0x2011
    movz	$v0,$a4,$t2
    # Line 620
    mflo	$t0
    nop
    nop
    # Line 621
    multu	$v0,$v1
    mfhi	$t8
    sra	$t8,$t8,0x8
    negu	$t3,$t8
    movz	$t3,$t8,$t2
    mult	$t3,$ra
    # Line 622
    li	$t1,0x8020
    dsll	$t1,$t1,0x10
    negu	$a6,$a4
    ori	$t1,$t1,0x803
    movz	$a6,$a4,$t2
    # Line 621
    mflo	$a7
    nop
    nop
    # Line 622
    multu	$a6,$t1
    mfhi	$a5
    sra	$a5,$a5,0x9
    negu	$v1,$a5
    movz	$v1,$a5,$t2
    mult	$v1,$t9
    # Line 623
    li	$v0,0x8010
    dsll	$v0,$v0,0x10
    negu	$t8,$a4
    ori	$v0,$v0,0x201
    movz	$t8,$a4,$t2
    # Line 622
    mflo	$a6
    nop
    nop
    # Line 623
    multu	$t8,$v0
    mfhi	$t3
    sra	$t3,$t3,0xa
    negu	$t1,$t3
    movz	$t1,$t3,$t2
    mult	$t1,$s0
    # Line 620
    subu	$t0,$a4,$t0
    mtc1	$t0,$f21
    # Line 621
    subu	$a7,$a4,$a7
    mtc1	$a7,$f19
    # Line 622
    subu	$a6,$a4,$a6
    # Line 623
    mflo	$a5
    # Line 622
    mtc1	$a6,$f18
    # Line 623
    subu	$a4,$a4,$a5
    # Line 620
    cvt.s.w	$f21,$f21
    # Line 623
    mtc1	$a4,$f17
    # Line 621
    cvt.s.w	$f19,$f19
    # Line 622
    cvt.s.w	$f18,$f18
    # Line 623
    cvt.s.w	$f17,$f17
    # Line 620
    cvt.d.s	$f21,$f21
    # Line 621
    cvt.d.s	$f19,$f19
    # Line 620
    mul.d	$f21,$f21,$f4
    # Line 622
    cvt.d.s	$f18,$f18
    # Line 621
    mul.d	$f19,$f19,$f4
    # Line 623
    cvt.d.s	$f17,$f17
    # Line 619
    addiu	$a1,$a1,-16
    # Line 620
    cvt.s.d	$f21,$f21
    # Line 622
    mul.d	$f18,$f18,$f4
    # Line 620
    swc1	$f21,12($a1)
    # Line 621
    cvt.s.d	$f19,$f19
    # Line 623
    mul.d	$f17,$f17,$f4
    # Line 617
    addiu	$a3,$a3,1
    # Line 621
    swc1	$f19,8($a1)
    # Line 622
    cvt.s.d	$f18,$f18
    swc1	$f18,4($a1)
    # Line 623
    cvt.s.d	$f17,$f17
    # Line 618
    addiu	$a0,$a0,-2
    # Line 617
    bne	$a2,$a3,.L0d9aefa0
    # Line 623
    swc1	$f17,0($a1)
    b	.L0d9ae9f0
    ld	$s0,32($sp)
.L0d9af108:
    # Line 627
    blez	$a2,.L0d9ae9f0
    ld	$s0,32($sp)
    li	$s1,127
    li	$ra,511
    li	$t9,1023
    li	$s0,2047
    andi	$t1,$a2,0x1
    li	$t0,1
    li	$t8,2
    ldc1	$f4,_lit8_3f30000000000000
    beqz	$t1,.L0d9af154
    move	$a3,$zero
    # Line 629
    lh	$t1,-4($a0)
    addiu	$a0,$a0,-4
    # Line 627
    addiu	$a3,$a3,1
    # Line 630
    beq	$a4,$t0,.L0d9aff94
    # Line 628
    lh	$a7,2($a0)
    # Line 630
    beq	$a4,$t8,.L0d9b00ec
    # Line 640
    srl	$v0,$a7,0x1f
.L0d9af154:
    sra	$t2,$a2,0x1
    bnezl	$t2,.L0d9af2e8
    # Line 629
    lh	$t1,-4($a0)
.L0d9af160:
    b	.L0d9ae9f0
    ld	$s0,32($sp)
.L0d9af168:
    # Line 633
    srl	$t2,$t1,0x1f
    li	$v0,0x8102
    negu	$t3,$t1
    dsll	$v0,$v0,0x10
    movz	$t3,$t1,$t2
    ori	$v0,$v0,0x409
    multu	$t3,$v0
    mfhi	$a7
    sra	$a7,$a7,0x6
    negu	$a6,$a7
    movz	$a6,$a7,$t2
    mult	$a6,$s1
    # Line 634
    li	$a5,0x8040
    negu	$v1,$t1
    dsll	$a5,$a5,0x10
    movz	$v1,$t1,$t2
    ori	$a5,$a5,0x2011
    # Line 633
    mflo	$a6
    nop
    nop
    # Line 634
    multu	$v1,$a5
    mfhi	$v0
    sra	$v0,$v0,0x8
    negu	$t3,$v0
    movz	$t3,$v0,$t2
    mult	$t3,$ra
    # Line 635
    li	$a7,0x8020
    dsll	$a7,$a7,0x10
    negu	$v1,$t1
    ori	$a7,$a7,0x803
    movz	$v1,$t1,$t2
    # Line 634
    mflo	$a5
    nop
    nop
    # Line 635
    multu	$v1,$a7
    mfhi	$v0
    sra	$v0,$v0,0x9
    negu	$t3,$v0
    movz	$t3,$v0,$t2
    mult	$t3,$t9
    # Line 636
    li	$a7,0x8010
    dsll	$a7,$a7,0x10
    negu	$v0,$t1
    ori	$a7,$a7,0x201
    movz	$v0,$t1,$t2
    # Line 635
    mflo	$v1
    nop
    nop
    # Line 636
    multu	$v0,$a7
    mfhi	$t3
    sra	$t3,$t3,0xa
    negu	$a7,$t3
    movz	$a7,$t3,$t2
    mult	$a7,$s0
    # Line 633
    subu	$a6,$t1,$a6
    mtc1	$a6,$f29
    # Line 634
    subu	$a5,$t1,$a5
    mtc1	$a5,$f27
    # Line 635
    subu	$v1,$t1,$v1
    # Line 636
    mflo	$v0
    # Line 635
    mtc1	$v1,$f25
    # Line 636
    subu	$v0,$t1,$v0
    # Line 633
    cvt.s.w	$f29,$f29
    # Line 636
    mtc1	$v0,$f23
    # Line 634
    cvt.s.w	$f27,$f27
    # Line 635
    cvt.s.w	$f25,$f25
    # Line 636
    cvt.s.w	$f23,$f23
    # Line 633
    cvt.d.s	$f29,$f29
    # Line 634
    cvt.d.s	$f27,$f27
    # Line 633
    mul.d	$f29,$f29,$f4
    # Line 635
    cvt.d.s	$f25,$f25
    # Line 634
    mul.d	$f27,$f27,$f4
    # Line 636
    cvt.d.s	$f23,$f23
    # Line 633
    cvt.s.d	$f29,$f29
    # Line 635
    mul.d	$f25,$f25,$f4
    # Line 633
    swc1	$f29,-4($a1)
    # Line 634
    cvt.s.d	$f27,$f27
    # Line 636
    mul.d	$f23,$f23,$f4
    # Line 634
    swc1	$f27,-8($a1)
    # Line 635
    cvt.s.d	$f25,$f25
    # Line 632
    addiu	$t3,$a1,-16
    # Line 635
    swc1	$f25,-12($a1)
    # Line 636
    cvt.s.d	$f23,$f23
    # Line 632
    move	$a1,$t3
    # Line 636
    swc1	$f23,0($t3)
    nop
.L0d9af2c0:
    # Line 629
    lh	$t1,-8($a0)
    addiu	$a0,$a0,-8
    # Line 630
    beq	$a4,$t0,.L0d9af44c
    # Line 628
    lh	$a7,2($a0)
    # Line 630
    beq	$a4,$t8,.L0d9af5a4
    # Line 640
    srl	$a6,$a7,0x1f
.L0d9af2d8:
    # Line 627
    addiu	$a3,$a3,2
    beq	$a2,$a3,.L0d9af160
    nop
    # Line 629
    lh	$t1,-4($a0)
.L0d9af2e8:
    # Line 630
    beq	$a4,$t0,.L0d9af168
    # Line 628
    lh	$a7,-2($a0)
    # Line 630
    bne	$a4,$t8,.L0d9af2c0
    # Line 640
    srl	$v0,$a7,0x1f
    li	$a5,0x8102
    negu	$v1,$a7
    dsll	$a5,$a5,0x10
    movz	$v1,$a7,$v0
    ori	$a5,$a5,0x409
    multu	$v1,$a5
    mfhi	$t3
    sra	$t3,$t3,0x6
    negu	$t2,$t3
    movz	$t2,$t3,$v0
    mult	$t2,$s1
    # Line 641
    li	$t1,0x8040
    negu	$a6,$a7
    dsll	$t1,$t1,0x10
    movz	$a6,$a7,$v0
    ori	$t1,$t1,0x2011
    # Line 640
    mflo	$t2
    nop
    nop
    # Line 641
    multu	$a6,$t1
    mfhi	$a5
    sra	$a5,$a5,0x8
    negu	$v1,$a5
    movz	$v1,$a5,$v0
    mult	$v1,$ra
    # Line 642
    li	$t3,0x8020
    dsll	$t3,$t3,0x10
    negu	$a6,$a7
    ori	$t3,$t3,0x803
    movz	$a6,$a7,$v0
    # Line 641
    mflo	$t1
    nop
    nop
    # Line 642
    multu	$a6,$t3
    mfhi	$a5
    sra	$a5,$a5,0x9
    negu	$v1,$a5
    movz	$v1,$a5,$v0
    mult	$v1,$t9
    # Line 643
    li	$t3,0x8010
    dsll	$t3,$t3,0x10
    negu	$a5,$a7
    ori	$t3,$t3,0x201
    movz	$a5,$a7,$v0
    # Line 642
    mflo	$a6
    nop
    nop
    # Line 643
    multu	$a5,$t3
    mfhi	$v1
    sra	$v1,$v1,0xa
    negu	$t3,$v1
    movz	$t3,$v1,$v0
    mult	$t3,$s0
    # Line 640
    subu	$t2,$a7,$t2
    mtc1	$t2,$f2
    # Line 641
    subu	$t1,$a7,$t1
    mtc1	$t1,$f1
    # Line 642
    subu	$a6,$a7,$a6
    # Line 643
    mflo	$a5
    # Line 642
    mtc1	$a6,$f0
    # Line 643
    subu	$a5,$a7,$a5
    # Line 640
    cvt.s.w	$f2,$f2
    # Line 643
    mtc1	$a5,$f31
    # Line 641
    cvt.s.w	$f1,$f1
    # Line 642
    cvt.s.w	$f0,$f0
    # Line 643
    cvt.s.w	$f31,$f31
    # Line 640
    cvt.d.s	$f2,$f2
    # Line 641
    cvt.d.s	$f1,$f1
    # Line 640
    mul.d	$f2,$f2,$f4
    # Line 642
    cvt.d.s	$f0,$f0
    # Line 641
    mul.d	$f1,$f1,$f4
    # Line 643
    cvt.d.s	$f31,$f31
    # Line 640
    cvt.s.d	$f2,$f2
    # Line 642
    mul.d	$f0,$f0,$f4
    # Line 640
    swc1	$f2,-4($a1)
    # Line 641
    cvt.s.d	$f1,$f1
    # Line 643
    mul.d	$f31,$f31,$f4
    # Line 641
    swc1	$f1,-8($a1)
    # Line 642
    cvt.s.d	$f0,$f0
    # Line 639
    addiu	$v1,$a1,-16
    # Line 642
    swc1	$f0,-12($a1)
    # Line 643
    cvt.s.d	$f31,$f31
    # Line 639
    move	$a1,$v1
    # Line 644
    b	.L0d9af2c0
    # Line 643
    swc1	$f31,0($v1)
.L0d9af44c:
    # Line 633
    srl	$a5,$t1,0x1f
    li	$a7,0x8102
    negu	$a6,$t1
    dsll	$a7,$a7,0x10
    movz	$a6,$t1,$a5
    ori	$a7,$a7,0x409
    multu	$a6,$a7
    mfhi	$v1
    sra	$v1,$v1,0x6
    negu	$v0,$v1
    movz	$v0,$v1,$a5
    mult	$v0,$s1
    # Line 634
    li	$t3,0x8040
    negu	$t2,$t1
    dsll	$t3,$t3,0x10
    movz	$t2,$t1,$a5
    ori	$t3,$t3,0x2011
    # Line 633
    mflo	$v0
    nop
    nop
    # Line 634
    multu	$t2,$t3
    mfhi	$a7
    sra	$a7,$a7,0x8
    negu	$a6,$a7
    movz	$a6,$a7,$a5
    mult	$a6,$ra
    # Line 635
    li	$v1,0x8020
    dsll	$v1,$v1,0x10
    negu	$t2,$t1
    ori	$v1,$v1,0x803
    movz	$t2,$t1,$a5
    # Line 634
    mflo	$t3
    nop
    nop
    # Line 635
    multu	$t2,$v1
    mfhi	$a7
    sra	$a7,$a7,0x9
    negu	$a6,$a7
    movz	$a6,$a7,$a5
    mult	$a6,$t9
    # Line 636
    li	$v1,0x8010
    dsll	$v1,$v1,0x10
    negu	$a7,$t1
    ori	$v1,$v1,0x201
    movz	$a7,$t1,$a5
    # Line 635
    mflo	$t2
    nop
    nop
    # Line 636
    multu	$a7,$v1
    mfhi	$a6
    sra	$a6,$a6,0xa
    negu	$v1,$a6
    movz	$v1,$a6,$a5
    mult	$v1,$s0
    # Line 633
    subu	$v0,$t1,$v0
    mtc1	$v0,$f7
    # Line 634
    subu	$t3,$t1,$t3
    mtc1	$t3,$f6
    # Line 635
    subu	$t2,$t1,$t2
    # Line 636
    mflo	$a7
    # Line 635
    mtc1	$t2,$f5
    # Line 636
    subu	$a7,$t1,$a7
    # Line 633
    cvt.s.w	$f7,$f7
    # Line 636
    mtc1	$a7,$f3
    # Line 634
    cvt.s.w	$f6,$f6
    # Line 635
    cvt.s.w	$f5,$f5
    # Line 636
    cvt.s.w	$f3,$f3
    # Line 633
    cvt.d.s	$f7,$f7
    # Line 634
    cvt.d.s	$f6,$f6
    # Line 633
    mul.d	$f7,$f7,$f4
    # Line 635
    cvt.d.s	$f5,$f5
    # Line 634
    mul.d	$f6,$f6,$f4
    # Line 636
    cvt.d.s	$f3,$f3
    # Line 633
    cvt.s.d	$f7,$f7
    # Line 635
    mul.d	$f5,$f5,$f4
    # Line 633
    swc1	$f7,-4($a1)
    # Line 634
    cvt.s.d	$f6,$f6
    # Line 636
    mul.d	$f3,$f3,$f4
    # Line 634
    swc1	$f6,-8($a1)
    # Line 635
    cvt.s.d	$f5,$f5
    # Line 632
    addiu	$a6,$a1,-16
    # Line 635
    swc1	$f5,-12($a1)
    # Line 636
    cvt.s.d	$f3,$f3
    # Line 632
    move	$a1,$a6
    b	.L0d9af2d8
    # Line 636
    swc1	$f3,0($a6)
.L0d9af5a4:
    # Line 640
    li	$t2,0x8102
    negu	$t1,$a7
    dsll	$t2,$t2,0x10
    movz	$t1,$a7,$a6
    ori	$t2,$t2,0x409
    multu	$t1,$t2
    mfhi	$a5
    sra	$a5,$a5,0x6
    negu	$v1,$a5
    movz	$v1,$a5,$a6
    mult	$v1,$s1
    # Line 641
    li	$v0,0x8040
    negu	$t3,$a7
    dsll	$v0,$v0,0x10
    movz	$t3,$a7,$a6
    ori	$v0,$v0,0x2011
    # Line 640
    mflo	$v1
    nop
    nop
    # Line 641
    multu	$t3,$v0
    mfhi	$t2
    sra	$t2,$t2,0x8
    negu	$t1,$t2
    movz	$t1,$t2,$a6
    mult	$t1,$ra
    # Line 642
    li	$a5,0x8020
    dsll	$a5,$a5,0x10
    negu	$t3,$a7
    ori	$a5,$a5,0x803
    movz	$t3,$a7,$a6
    # Line 641
    mflo	$v0
    nop
    nop
    # Line 642
    multu	$t3,$a5
    mfhi	$t2
    sra	$t2,$t2,0x9
    negu	$t1,$t2
    movz	$t1,$t2,$a6
    mult	$t1,$t9
    # Line 643
    li	$a5,0x8010
    dsll	$a5,$a5,0x10
    negu	$t2,$a7
    ori	$a5,$a5,0x201
    movz	$t2,$a7,$a6
    # Line 642
    mflo	$t3
    nop
    nop
    # Line 643
    multu	$t2,$a5
    mfhi	$t1
    sra	$t1,$t1,0xa
    negu	$a5,$t1
    movz	$a5,$t1,$a6
    mult	$a5,$s0
    # Line 640
    subu	$v1,$a7,$v1
    mtc1	$v1,$f11
    # Line 641
    subu	$v0,$a7,$v0
    mtc1	$v0,$f10
    # Line 642
    subu	$t3,$a7,$t3
    # Line 643
    mflo	$t2
    # Line 642
    mtc1	$t3,$f9
    # Line 643
    subu	$t2,$a7,$t2
    # Line 640
    cvt.s.w	$f11,$f11
    # Line 643
    mtc1	$t2,$f8
    # Line 641
    cvt.s.w	$f10,$f10
    # Line 642
    cvt.s.w	$f9,$f9
    # Line 643
    cvt.s.w	$f8,$f8
    # Line 640
    cvt.d.s	$f11,$f11
    # Line 641
    cvt.d.s	$f10,$f10
    # Line 640
    mul.d	$f11,$f11,$f4
    # Line 642
    cvt.d.s	$f9,$f9
    # Line 641
    mul.d	$f10,$f10,$f4
    # Line 643
    cvt.d.s	$f8,$f8
    # Line 640
    cvt.s.d	$f11,$f11
    # Line 642
    mul.d	$f9,$f9,$f4
    # Line 640
    swc1	$f11,-4($a1)
    # Line 641
    cvt.s.d	$f10,$f10
    # Line 643
    mul.d	$f8,$f8,$f4
    # Line 641
    swc1	$f10,-8($a1)
    # Line 642
    cvt.s.d	$f9,$f9
    # Line 639
    addiu	$t1,$a1,-16
    # Line 642
    swc1	$f9,-12($a1)
    # Line 643
    cvt.s.d	$f8,$f8
    # Line 639
    move	$a1,$t1
    # Line 644
    b	.L0d9af2d8
    # Line 643
    swc1	$f8,0($t1)
.L0d9af6f8:
    # Line 649
    blez	$a2,.L0d9ae9f0
    ld	$s0,32($sp)
    li	$s1,127
    li	$ra,511
    li	$t9,1023
    li	$s0,2047
    li	$t0,1
    andi	$t3,$a2,0x1
    li	$t8,2
    li	$s2,3
    ldc1	$f4,_lit8_3f30000000000000
    move	$a3,$zero
    beqz	$t3,.L0d9af760
    sra	$v0,$a2,0x1
    # Line 653
    lh	$t1,-6($a0)
    addiu	$a0,$a0,-6
    # Line 652
    lh	$t2,2($a0)
    # Line 649
    addiu	$a3,$a3,1
    # Line 651
    lh	$t3,4($a0)
    # Line 655
    beq	$a4,$t0,.L0d9b0240
    # Line 650
    addiu	$a1,$a1,-16
    # Line 655
    beq	$a4,$t8,.L0d9b0390
    # Line 663
    srl	$a5,$t2,0x1f
    # Line 655
    beq	$a4,$s2,.L0d9b04dc
    # Line 669
    srl	$a6,$t3,0x1f
.L0d9af75c:
    sra	$v0,$a2,0x1
.L0d9af760:
    bnezl	$v0,.L0d9af8f4
    # Line 653
    lh	$t1,-6($a0)
.L0d9af768:
    b	.L0d9ae9f0
    ld	$s0,32($sp)
.L0d9af770:
    # Line 657
    srl	$t3,$t1,0x1f
    li	$v1,0x8102
    negu	$v0,$t1
    dsll	$v1,$v1,0x10
    movz	$v0,$t1,$t3
    ori	$v1,$v1,0x409
    multu	$v0,$v1
    mfhi	$t2
    sra	$t2,$t2,0x6
    negu	$a7,$t2
    movz	$a7,$t2,$t3
    mult	$a7,$s1
    # Line 658
    li	$a6,0x8040
    negu	$a5,$t1
    dsll	$a6,$a6,0x10
    movz	$a5,$t1,$t3
    ori	$a6,$a6,0x2011
    # Line 657
    mflo	$a7
    nop
    nop
    # Line 658
    multu	$a5,$a6
    mfhi	$v1
    sra	$v1,$v1,0x8
    negu	$v0,$v1
    movz	$v0,$v1,$t3
    mult	$v0,$ra
    # Line 659
    li	$t2,0x8020
    dsll	$t2,$t2,0x10
    negu	$a5,$t1
    ori	$t2,$t2,0x803
    movz	$a5,$t1,$t3
    # Line 658
    mflo	$a6
    nop
    nop
    # Line 659
    multu	$a5,$t2
    mfhi	$v1
    sra	$v1,$v1,0x9
    negu	$v0,$v1
    movz	$v0,$v1,$t3
    mult	$v0,$t9
    # Line 660
    li	$t2,0x8010
    dsll	$t2,$t2,0x10
    negu	$v1,$t1
    ori	$t2,$t2,0x201
    movz	$v1,$t1,$t3
    # Line 659
    mflo	$a5
    nop
    nop
    # Line 660
    multu	$v1,$t2
    mfhi	$v0
    sra	$v0,$v0,0xa
    negu	$t2,$v0
    movz	$t2,$v0,$t3
    mult	$t2,$s0
    # Line 657
    subu	$a7,$t1,$a7
    mtc1	$a7,$f15
    # Line 658
    subu	$a6,$t1,$a6
    mtc1	$a6,$f14
    # Line 659
    subu	$a5,$t1,$a5
    # Line 660
    mflo	$v1
    # Line 659
    mtc1	$a5,$f13
    # Line 660
    subu	$v1,$t1,$v1
    # Line 657
    cvt.s.w	$f15,$f15
    # Line 660
    mtc1	$v1,$f12
    # Line 658
    cvt.s.w	$f14,$f14
    # Line 659
    cvt.s.w	$f13,$f13
    # Line 660
    cvt.s.w	$f12,$f12
    # Line 657
    cvt.d.s	$f15,$f15
    # Line 658
    cvt.d.s	$f14,$f14
    # Line 657
    mul.d	$f15,$f15,$f4
    # Line 659
    cvt.d.s	$f13,$f13
    # Line 658
    mul.d	$f14,$f14,$f4
    # Line 660
    cvt.d.s	$f12,$f12
    # Line 657
    cvt.s.d	$f15,$f15
    # Line 659
    mul.d	$f13,$f13,$f4
    # Line 657
    swc1	$f15,-4($a1)
    # Line 658
    cvt.s.d	$f14,$f14
    # Line 660
    mul.d	$f12,$f12,$f4
    # Line 658
    swc1	$f14,-8($a1)
    # Line 659
    cvt.s.d	$f13,$f13
    swc1	$f13,-12($a1)
    # Line 660
    cvt.s.d	$f12,$f12
    swc1	$f12,-16($a1)
    nop
.L0d9af8c0:
    # Line 653
    lh	$t1,-12($a0)
    addiu	$a0,$a0,-12
    # Line 652
    lh	$t2,2($a0)
    # Line 651
    lh	$t3,4($a0)
    # Line 655
    beq	$a4,$t0,.L0d9afa60
    # Line 650
    addiu	$a1,$a1,-32
    # Line 655
    beq	$a4,$t8,.L0d9afbb0
    # Line 663
    srl	$a5,$t2,0x1f
    # Line 655
    beq	$a4,$s2,.L0d9afe48
    # Line 669
    srl	$a7,$t3,0x1f
.L0d9af8e8:
    # Line 649
    beq	$a2,$a3,.L0d9af768
    nop
    # Line 653
    lh	$t1,-6($a0)
.L0d9af8f4:
    # Line 652
    lh	$t2,-4($a0)
    # Line 649
    addiu	$a3,$a3,2
    # Line 655
    beq	$a4,$t0,.L0d9af770
    # Line 651
    lh	$t3,-2($a0)
    # Line 655
    beq	$a4,$t8,.L0d9afcfc
    # Line 663
    srl	$a6,$t2,0x1f
    # Line 655
    bne	$a4,$s2,.L0d9af8c0
    # Line 669
    srl	$v0,$t3,0x1f
    li	$a5,0x8102
    negu	$v1,$t3
    dsll	$a5,$a5,0x10
    movz	$v1,$t3,$v0
    ori	$a5,$a5,0x409
    multu	$v1,$a5
    mfhi	$t2
    sra	$t2,$t2,0x6
    negu	$t1,$t2
    movz	$t1,$t2,$v0
    mult	$t1,$s1
    # Line 670
    li	$a7,0x8040
    negu	$a6,$t3
    dsll	$a7,$a7,0x10
    movz	$a6,$t3,$v0
    ori	$a7,$a7,0x2011
    # Line 669
    mflo	$t1
    nop
    nop
    # Line 670
    multu	$a6,$a7
    mfhi	$a5
    sra	$a5,$a5,0x8
    negu	$v1,$a5
    movz	$v1,$a5,$v0
    mult	$v1,$ra
    # Line 671
    li	$t2,0x8020
    dsll	$t2,$t2,0x10
    negu	$a6,$t3
    ori	$t2,$t2,0x803
    movz	$a6,$t3,$v0
    # Line 670
    mflo	$a7
    nop
    nop
    # Line 671
    multu	$a6,$t2
    mfhi	$a5
    sra	$a5,$a5,0x9
    negu	$v1,$a5
    movz	$v1,$a5,$v0
    mult	$v1,$t9
    # Line 672
    li	$t2,0x8010
    dsll	$t2,$t2,0x10
    negu	$a5,$t3
    ori	$t2,$t2,0x201
    movz	$a5,$t3,$v0
    # Line 671
    mflo	$a6
    nop
    nop
    # Line 672
    multu	$a5,$t2
    mfhi	$v1
    sra	$v1,$v1,0xa
    negu	$t2,$v1
    movz	$t2,$v1,$v0
    mult	$t2,$s0
    # Line 669
    subu	$t1,$t3,$t1
    mtc1	$t1,$f19
    # Line 670
    subu	$a7,$t3,$a7
    mtc1	$a7,$f18
    # Line 671
    subu	$a6,$t3,$a6
    # Line 672
    mflo	$a5
    # Line 671
    mtc1	$a6,$f17
    # Line 672
    subu	$a5,$t3,$a5
    # Line 669
    cvt.s.w	$f19,$f19
    # Line 672
    mtc1	$a5,$f16
    # Line 670
    cvt.s.w	$f18,$f18
    # Line 671
    cvt.s.w	$f17,$f17
    # Line 672
    cvt.s.w	$f16,$f16
    # Line 669
    cvt.d.s	$f19,$f19
    # Line 670
    cvt.d.s	$f18,$f18
    # Line 669
    mul.d	$f19,$f19,$f4
    # Line 671
    cvt.d.s	$f17,$f17
    # Line 670
    mul.d	$f18,$f18,$f4
    # Line 672
    cvt.d.s	$f16,$f16
    # Line 669
    cvt.s.d	$f19,$f19
    # Line 671
    mul.d	$f17,$f17,$f4
    # Line 669
    swc1	$f19,-4($a1)
    # Line 670
    cvt.s.d	$f18,$f18
    # Line 672
    mul.d	$f16,$f16,$f4
    # Line 670
    swc1	$f18,-8($a1)
    # Line 671
    cvt.s.d	$f17,$f17
    swc1	$f17,-12($a1)
    # Line 672
    cvt.s.d	$f16,$f16
    # Line 673
    b	.L0d9af8c0
    # Line 672
    swc1	$f16,-16($a1)
.L0d9afa60:
    # Line 657
    srl	$v1,$t1,0x1f
    li	$a6,0x8102
    negu	$a5,$t1
    dsll	$a6,$a6,0x10
    movz	$a5,$t1,$v1
    ori	$a6,$a6,0x409
    multu	$a5,$a6
    mfhi	$v0
    sra	$v0,$v0,0x6
    negu	$t3,$v0
    movz	$t3,$v0,$v1
    mult	$t3,$s1
    # Line 658
    li	$t2,0x8040
    negu	$a7,$t1
    dsll	$t2,$t2,0x10
    movz	$a7,$t1,$v1
    ori	$t2,$t2,0x2011
    # Line 657
    mflo	$t3
    nop
    nop
    # Line 658
    multu	$a7,$t2
    mfhi	$a6
    sra	$a6,$a6,0x8
    negu	$a5,$a6
    movz	$a5,$a6,$v1
    mult	$a5,$ra
    # Line 659
    li	$v0,0x8020
    dsll	$v0,$v0,0x10
    negu	$a7,$t1
    ori	$v0,$v0,0x803
    movz	$a7,$t1,$v1
    # Line 658
    mflo	$t2
    nop
    nop
    # Line 659
    multu	$a7,$v0
    mfhi	$a6
    sra	$a6,$a6,0x9
    negu	$a5,$a6
    movz	$a5,$a6,$v1
    mult	$a5,$t9
    # Line 660
    li	$v0,0x8010
    dsll	$v0,$v0,0x10
    negu	$a6,$t1
    ori	$v0,$v0,0x201
    movz	$a6,$t1,$v1
    # Line 659
    mflo	$a7
    nop
    nop
    # Line 660
    multu	$a6,$v0
    mfhi	$a5
    sra	$a5,$a5,0xa
    negu	$v0,$a5
    movz	$v0,$a5,$v1
    mult	$v0,$s0
    # Line 657
    subu	$t3,$t1,$t3
    mtc1	$t3,$f27
    # Line 658
    subu	$t2,$t1,$t2
    mtc1	$t2,$f25
    # Line 659
    subu	$a7,$t1,$a7
    # Line 660
    mflo	$a6
    # Line 659
    mtc1	$a7,$f23
    # Line 660
    subu	$a6,$t1,$a6
    # Line 657
    cvt.s.w	$f27,$f27
    # Line 660
    mtc1	$a6,$f21
    # Line 658
    cvt.s.w	$f25,$f25
    # Line 659
    cvt.s.w	$f23,$f23
    # Line 660
    cvt.s.w	$f21,$f21
    # Line 657
    cvt.d.s	$f27,$f27
    # Line 658
    cvt.d.s	$f25,$f25
    # Line 657
    mul.d	$f27,$f27,$f4
    # Line 659
    cvt.d.s	$f23,$f23
    # Line 658
    mul.d	$f25,$f25,$f4
    # Line 660
    cvt.d.s	$f21,$f21
    # Line 657
    cvt.s.d	$f27,$f27
    # Line 659
    mul.d	$f23,$f23,$f4
    # Line 657
    swc1	$f27,12($a1)
    # Line 658
    cvt.s.d	$f25,$f25
    # Line 660
    mul.d	$f21,$f21,$f4
    # Line 658
    swc1	$f25,8($a1)
    # Line 659
    cvt.s.d	$f23,$f23
    swc1	$f23,4($a1)
    # Line 660
    cvt.s.d	$f21,$f21
    b	.L0d9af8e8
    swc1	$f21,0($a1)
.L0d9afbb0:
    # Line 663
    li	$a7,0x8102
    negu	$a6,$t2
    dsll	$a7,$a7,0x10
    movz	$a6,$t2,$a5
    ori	$a7,$a7,0x409
    multu	$a6,$a7
    mfhi	$v1
    sra	$v1,$v1,0x6
    negu	$v0,$v1
    movz	$v0,$v1,$a5
    mult	$v0,$s1
    # Line 664
    li	$t3,0x8040
    negu	$t1,$t2
    dsll	$t3,$t3,0x10
    movz	$t1,$t2,$a5
    ori	$t3,$t3,0x2011
    # Line 663
    mflo	$v0
    nop
    nop
    # Line 664
    multu	$t1,$t3
    mfhi	$a7
    sra	$a7,$a7,0x8
    negu	$a6,$a7
    movz	$a6,$a7,$a5
    mult	$a6,$ra
    # Line 665
    li	$v1,0x8020
    dsll	$v1,$v1,0x10
    negu	$t1,$t2
    ori	$v1,$v1,0x803
    movz	$t1,$t2,$a5
    # Line 664
    mflo	$t3
    nop
    nop
    # Line 665
    multu	$t1,$v1
    mfhi	$a7
    sra	$a7,$a7,0x9
    negu	$a6,$a7
    movz	$a6,$a7,$a5
    mult	$a6,$t9
    # Line 666
    li	$v1,0x8010
    dsll	$v1,$v1,0x10
    negu	$a7,$t2
    ori	$v1,$v1,0x201
    movz	$a7,$t2,$a5
    # Line 665
    mflo	$t1
    nop
    nop
    # Line 666
    multu	$a7,$v1
    mfhi	$a6
    sra	$a6,$a6,0xa
    negu	$v1,$a6
    movz	$v1,$a6,$a5
    mult	$v1,$s0
    # Line 663
    subu	$v0,$t2,$v0
    mtc1	$v0,$f1
    # Line 664
    subu	$t3,$t2,$t3
    mtc1	$t3,$f0
    # Line 665
    subu	$t1,$t2,$t1
    # Line 666
    mflo	$a7
    # Line 665
    mtc1	$t1,$f31
    # Line 666
    subu	$a7,$t2,$a7
    # Line 663
    cvt.s.w	$f1,$f1
    # Line 666
    mtc1	$a7,$f29
    # Line 664
    cvt.s.w	$f0,$f0
    # Line 665
    cvt.s.w	$f31,$f31
    # Line 666
    cvt.s.w	$f29,$f29
    # Line 663
    cvt.d.s	$f1,$f1
    # Line 664
    cvt.d.s	$f0,$f0
    # Line 663
    mul.d	$f1,$f1,$f4
    # Line 665
    cvt.d.s	$f31,$f31
    # Line 664
    mul.d	$f0,$f0,$f4
    # Line 666
    cvt.d.s	$f29,$f29
    # Line 663
    cvt.s.d	$f1,$f1
    # Line 665
    mul.d	$f31,$f31,$f4
    # Line 663
    swc1	$f1,12($a1)
    # Line 664
    cvt.s.d	$f0,$f0
    # Line 666
    mul.d	$f29,$f29,$f4
    # Line 664
    swc1	$f0,8($a1)
    # Line 665
    cvt.s.d	$f31,$f31
    swc1	$f31,4($a1)
    # Line 666
    cvt.s.d	$f29,$f29
    # Line 667
    b	.L0d9af8e8
    # Line 666
    swc1	$f29,0($a1)
.L0d9afcfc:
    # Line 663
    li	$t1,0x8102
    negu	$a7,$t2
    dsll	$t1,$t1,0x10
    movz	$a7,$t2,$a6
    ori	$t1,$t1,0x409
    multu	$a7,$t1
    mfhi	$a5
    sra	$a5,$a5,0x6
    negu	$v1,$a5
    movz	$v1,$a5,$a6
    mult	$v1,$s1
    # Line 664
    li	$v0,0x8040
    negu	$t3,$t2
    dsll	$v0,$v0,0x10
    movz	$t3,$t2,$a6
    ori	$v0,$v0,0x2011
    # Line 663
    mflo	$v1
    nop
    nop
    # Line 664
    multu	$t3,$v0
    mfhi	$t1
    sra	$t1,$t1,0x8
    negu	$a7,$t1
    movz	$a7,$t1,$a6
    mult	$a7,$ra
    # Line 665
    li	$a5,0x8020
    dsll	$a5,$a5,0x10
    negu	$t3,$t2
    ori	$a5,$a5,0x803
    movz	$t3,$t2,$a6
    # Line 664
    mflo	$v0
    nop
    nop
    # Line 665
    multu	$t3,$a5
    mfhi	$t1
    sra	$t1,$t1,0x9
    negu	$a7,$t1
    movz	$a7,$t1,$a6
    mult	$a7,$t9
    # Line 666
    li	$a5,0x8010
    dsll	$a5,$a5,0x10
    negu	$t1,$t2
    ori	$a5,$a5,0x201
    movz	$t1,$t2,$a6
    # Line 665
    mflo	$t3
    nop
    nop
    # Line 666
    multu	$t1,$a5
    mfhi	$a7
    sra	$a7,$a7,0xa
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    mult	$a5,$s0
    # Line 663
    subu	$v1,$t2,$v1
    mtc1	$v1,$f6
    # Line 664
    subu	$v0,$t2,$v0
    mtc1	$v0,$f5
    # Line 665
    subu	$t3,$t2,$t3
    # Line 666
    mflo	$t1
    # Line 665
    mtc1	$t3,$f3
    # Line 666
    subu	$t1,$t2,$t1
    # Line 663
    cvt.s.w	$f6,$f6
    # Line 666
    mtc1	$t1,$f2
    # Line 664
    cvt.s.w	$f5,$f5
    # Line 665
    cvt.s.w	$f3,$f3
    # Line 666
    cvt.s.w	$f2,$f2
    # Line 663
    cvt.d.s	$f6,$f6
    # Line 664
    cvt.d.s	$f5,$f5
    # Line 663
    mul.d	$f6,$f6,$f4
    # Line 665
    cvt.d.s	$f3,$f3
    # Line 664
    mul.d	$f5,$f5,$f4
    # Line 666
    cvt.d.s	$f2,$f2
    # Line 663
    cvt.s.d	$f6,$f6
    # Line 665
    mul.d	$f3,$f3,$f4
    # Line 663
    swc1	$f6,-4($a1)
    # Line 664
    cvt.s.d	$f5,$f5
    # Line 666
    mul.d	$f2,$f2,$f4
    # Line 664
    swc1	$f5,-8($a1)
    # Line 665
    cvt.s.d	$f3,$f3
    swc1	$f3,-12($a1)
    # Line 666
    cvt.s.d	$f2,$f2
    # Line 667
    b	.L0d9af8c0
    # Line 666
    swc1	$f2,-16($a1)
.L0d9afe48:
    # Line 669
    li	$t2,0x8102
    negu	$t1,$t3
    dsll	$t2,$t2,0x10
    movz	$t1,$t3,$a7
    ori	$t2,$t2,0x409
    multu	$t1,$t2
    mfhi	$a6
    sra	$a6,$a6,0x6
    negu	$a5,$a6
    movz	$a5,$a6,$a7
    mult	$a5,$s1
    # Line 670
    li	$v1,0x8040
    negu	$v0,$t3
    dsll	$v1,$v1,0x10
    movz	$v0,$t3,$a7
    ori	$v1,$v1,0x2011
    # Line 669
    mflo	$a5
    nop
    nop
    # Line 670
    multu	$v0,$v1
    mfhi	$t2
    sra	$t2,$t2,0x8
    negu	$t1,$t2
    movz	$t1,$t2,$a7
    mult	$t1,$ra
    # Line 671
    li	$a6,0x8020
    dsll	$a6,$a6,0x10
    negu	$v0,$t3
    ori	$a6,$a6,0x803
    movz	$v0,$t3,$a7
    # Line 670
    mflo	$v1
    nop
    nop
    # Line 671
    multu	$v0,$a6
    mfhi	$t2
    sra	$t2,$t2,0x9
    negu	$t1,$t2
    movz	$t1,$t2,$a7
    mult	$t1,$t9
    # Line 672
    li	$a6,0x8010
    dsll	$a6,$a6,0x10
    negu	$t2,$t3
    ori	$a6,$a6,0x201
    movz	$t2,$t3,$a7
    # Line 671
    mflo	$v0
    nop
    nop
    # Line 672
    multu	$t2,$a6
    mfhi	$t1
    sra	$t1,$t1,0xa
    negu	$a6,$t1
    movz	$a6,$t1,$a7
    mult	$a6,$s0
    # Line 669
    subu	$a5,$t3,$a5
    mtc1	$a5,$f10
    # Line 670
    subu	$v1,$t3,$v1
    mtc1	$v1,$f9
    # Line 671
    subu	$v0,$t3,$v0
    # Line 672
    mflo	$t2
    # Line 671
    mtc1	$v0,$f8
    # Line 672
    subu	$t2,$t3,$t2
    # Line 669
    cvt.s.w	$f10,$f10
    # Line 672
    mtc1	$t2,$f7
    # Line 670
    cvt.s.w	$f9,$f9
    # Line 671
    cvt.s.w	$f8,$f8
    # Line 672
    cvt.s.w	$f7,$f7
    # Line 669
    cvt.d.s	$f10,$f10
    # Line 670
    cvt.d.s	$f9,$f9
    # Line 669
    mul.d	$f10,$f10,$f4
    # Line 671
    cvt.d.s	$f8,$f8
    # Line 670
    mul.d	$f9,$f9,$f4
    # Line 672
    cvt.d.s	$f7,$f7
    # Line 669
    cvt.s.d	$f10,$f10
    # Line 671
    mul.d	$f8,$f8,$f4
    # Line 669
    swc1	$f10,12($a1)
    # Line 670
    cvt.s.d	$f9,$f9
    # Line 672
    mul.d	$f7,$f7,$f4
    # Line 670
    swc1	$f9,8($a1)
    # Line 671
    cvt.s.d	$f8,$f8
    swc1	$f8,4($a1)
    # Line 672
    cvt.s.d	$f7,$f7
    # Line 673
    b	.L0d9af8e8
    # Line 672
    swc1	$f7,0($a1)
.L0d9aff94:
    # Line 633
    srl	$t2,$t1,0x1f
    li	$v0,0x8102
    negu	$t3,$t1
    dsll	$v0,$v0,0x10
    movz	$t3,$t1,$t2
    ori	$v0,$v0,0x409
    multu	$t3,$v0
    mfhi	$a7
    sra	$a7,$a7,0x6
    negu	$a6,$a7
    movz	$a6,$a7,$t2
    mult	$a6,$s1
    # Line 634
    li	$a5,0x8040
    negu	$v1,$t1
    dsll	$a5,$a5,0x10
    movz	$v1,$t1,$t2
    ori	$a5,$a5,0x2011
    # Line 633
    mflo	$a6
    nop
    nop
    # Line 634
    multu	$v1,$a5
    mfhi	$v0
    sra	$v0,$v0,0x8
    negu	$t3,$v0
    movz	$t3,$v0,$t2
    mult	$t3,$ra
    # Line 635
    li	$a7,0x8020
    negu	$v1,$t1
    dsll	$a7,$a7,0x10
    movz	$v1,$t1,$t2
    ori	$a7,$a7,0x803
    # Line 634
    mflo	$a5
    nop
    nop
    # Line 635
    multu	$v1,$a7
    mfhi	$v0
    sra	$v0,$v0,0x9
    negu	$t3,$v0
    movz	$t3,$v0,$t2
    mult	$t3,$t9
    # Line 636
    li	$a7,0x8010
    negu	$v0,$t1
    dsll	$a7,$a7,0x10
    movz	$v0,$t1,$t2
    ori	$a7,$a7,0x201
    # Line 635
    mflo	$v1
    nop
    nop
    # Line 636
    multu	$v0,$a7
    mfhi	$t3
    sra	$t3,$t3,0xa
    negu	$a7,$t3
    movz	$a7,$t3,$t2
    mult	$a7,$s0
    # Line 633
    subu	$a6,$t1,$a6
    mtc1	$a6,$f14
    # Line 634
    subu	$a5,$t1,$a5
    mtc1	$a5,$f13
    # Line 635
    subu	$v1,$t1,$v1
    # Line 636
    mflo	$v0
    # Line 635
    mtc1	$v1,$f12
    # Line 636
    subu	$v0,$t1,$v0
    # Line 633
    cvt.s.w	$f14,$f14
    # Line 636
    mtc1	$v0,$f11
    # Line 634
    cvt.s.w	$f13,$f13
    # Line 635
    cvt.s.w	$f12,$f12
    # Line 636
    cvt.s.w	$f11,$f11
    # Line 633
    cvt.d.s	$f14,$f14
    # Line 634
    cvt.d.s	$f13,$f13
    # Line 633
    mul.d	$f14,$f14,$f4
    # Line 635
    cvt.d.s	$f12,$f12
    # Line 634
    mul.d	$f13,$f13,$f4
    # Line 636
    cvt.d.s	$f11,$f11
    # Line 633
    cvt.s.d	$f14,$f14
    # Line 635
    mul.d	$f12,$f12,$f4
    # Line 632
    addiu	$t3,$a1,-16
    # Line 633
    swc1	$f14,-4($a1)
    # Line 634
    cvt.s.d	$f13,$f13
    # Line 636
    mul.d	$f11,$f11,$f4
    # Line 634
    swc1	$f13,-8($a1)
    # Line 635
    cvt.s.d	$f12,$f12
    swc1	$f12,-12($a1)
    # Line 636
    cvt.s.d	$f11,$f11
    # Line 632
    move	$a1,$t3
    b	.L0d9af154
    # Line 636
    swc1	$f11,0($t3)
.L0d9b00ec:
    # Line 640
    li	$a5,0x8102
    negu	$v1,$a7
    dsll	$a5,$a5,0x10
    movz	$v1,$a7,$v0
    ori	$a5,$a5,0x409
    multu	$v1,$a5
    mfhi	$t3
    sra	$t3,$t3,0x6
    negu	$t2,$t3
    movz	$t2,$t3,$v0
    mult	$t2,$s1
    # Line 641
    li	$t1,0x8040
    negu	$a6,$a7
    dsll	$t1,$t1,0x10
    movz	$a6,$a7,$v0
    ori	$t1,$t1,0x2011
    # Line 640
    mflo	$t2
    nop
    nop
    # Line 641
    multu	$a6,$t1
    mfhi	$a5
    sra	$a5,$a5,0x8
    negu	$v1,$a5
    movz	$v1,$a5,$v0
    mult	$v1,$ra
    # Line 642
    li	$t3,0x8020
    negu	$a6,$a7
    dsll	$t3,$t3,0x10
    movz	$a6,$a7,$v0
    ori	$t3,$t3,0x803
    # Line 641
    mflo	$t1
    nop
    nop
    # Line 642
    multu	$a6,$t3
    mfhi	$a5
    sra	$a5,$a5,0x9
    negu	$v1,$a5
    movz	$v1,$a5,$v0
    mult	$v1,$t9
    # Line 643
    li	$t3,0x8010
    negu	$a5,$a7
    dsll	$t3,$t3,0x10
    movz	$a5,$a7,$v0
    ori	$t3,$t3,0x201
    # Line 642
    mflo	$a6
    nop
    nop
    # Line 643
    multu	$a5,$t3
    mfhi	$v1
    sra	$v1,$v1,0xa
    negu	$t3,$v1
    movz	$t3,$v1,$v0
    mult	$t3,$s0
    # Line 640
    subu	$t2,$a7,$t2
    mtc1	$t2,$f18
    # Line 641
    subu	$t1,$a7,$t1
    mtc1	$t1,$f17
    # Line 642
    subu	$a6,$a7,$a6
    # Line 643
    mflo	$a5
    # Line 642
    mtc1	$a6,$f16
    # Line 643
    subu	$a5,$a7,$a5
    # Line 640
    cvt.s.w	$f18,$f18
    # Line 643
    mtc1	$a5,$f15
    # Line 641
    cvt.s.w	$f17,$f17
    # Line 642
    cvt.s.w	$f16,$f16
    # Line 643
    cvt.s.w	$f15,$f15
    # Line 640
    cvt.d.s	$f18,$f18
    # Line 641
    cvt.d.s	$f17,$f17
    # Line 640
    mul.d	$f18,$f18,$f4
    # Line 642
    cvt.d.s	$f16,$f16
    # Line 641
    mul.d	$f17,$f17,$f4
    # Line 643
    cvt.d.s	$f15,$f15
    # Line 640
    cvt.s.d	$f18,$f18
    # Line 642
    mul.d	$f16,$f16,$f4
    # Line 639
    addiu	$v1,$a1,-16
    # Line 640
    swc1	$f18,-4($a1)
    # Line 641
    cvt.s.d	$f17,$f17
    # Line 643
    mul.d	$f15,$f15,$f4
    # Line 641
    swc1	$f17,-8($a1)
    # Line 642
    cvt.s.d	$f16,$f16
    swc1	$f16,-12($a1)
    # Line 643
    cvt.s.d	$f15,$f15
    # Line 639
    move	$a1,$v1
    # Line 644
    b	.L0d9af154
    # Line 643
    swc1	$f15,0($v1)
.L0d9b0240:
    # Line 657
    srl	$v1,$t1,0x1f
    li	$a6,0x8102
    negu	$a5,$t1
    dsll	$a6,$a6,0x10
    movz	$a5,$t1,$v1
    ori	$a6,$a6,0x409
    multu	$a5,$a6
    mfhi	$v0
    sra	$v0,$v0,0x6
    negu	$t3,$v0
    movz	$t3,$v0,$v1
    mult	$t3,$s1
    # Line 658
    li	$t2,0x8040
    negu	$a7,$t1
    dsll	$t2,$t2,0x10
    movz	$a7,$t1,$v1
    ori	$t2,$t2,0x2011
    # Line 657
    mflo	$t3
    nop
    nop
    # Line 658
    multu	$a7,$t2
    mfhi	$a6
    sra	$a6,$a6,0x8
    negu	$a5,$a6
    movz	$a5,$a6,$v1
    mult	$a5,$ra
    # Line 659
    li	$v0,0x8020
    negu	$a7,$t1
    dsll	$v0,$v0,0x10
    movz	$a7,$t1,$v1
    ori	$v0,$v0,0x803
    # Line 658
    mflo	$t2
    nop
    nop
    # Line 659
    multu	$a7,$v0
    mfhi	$a6
    sra	$a6,$a6,0x9
    negu	$a5,$a6
    movz	$a5,$a6,$v1
    mult	$a5,$t9
    # Line 660
    li	$v0,0x8010
    negu	$a6,$t1
    dsll	$v0,$v0,0x10
    movz	$a6,$t1,$v1
    ori	$v0,$v0,0x201
    # Line 659
    mflo	$a7
    nop
    nop
    # Line 660
    multu	$a6,$v0
    mfhi	$a5
    sra	$a5,$a5,0xa
    negu	$v0,$a5
    movz	$v0,$a5,$v1
    mult	$v0,$s0
    # Line 657
    subu	$t3,$t1,$t3
    mtc1	$t3,$f25
    # Line 658
    subu	$t2,$t1,$t2
    mtc1	$t2,$f23
    # Line 659
    subu	$a7,$t1,$a7
    # Line 660
    mflo	$a6
    # Line 659
    mtc1	$a7,$f21
    # Line 660
    subu	$a6,$t1,$a6
    # Line 657
    cvt.s.w	$f25,$f25
    # Line 660
    mtc1	$a6,$f19
    # Line 658
    cvt.s.w	$f23,$f23
    # Line 659
    cvt.s.w	$f21,$f21
    # Line 660
    cvt.s.w	$f19,$f19
    # Line 657
    cvt.d.s	$f25,$f25
    # Line 658
    cvt.d.s	$f23,$f23
    # Line 657
    mul.d	$f25,$f25,$f4
    # Line 659
    cvt.d.s	$f21,$f21
    # Line 658
    mul.d	$f23,$f23,$f4
    # Line 660
    cvt.d.s	$f19,$f19
    # Line 657
    cvt.s.d	$f25,$f25
    # Line 659
    mul.d	$f21,$f21,$f4
    # Line 657
    swc1	$f25,12($a1)
    # Line 658
    cvt.s.d	$f23,$f23
    # Line 660
    mul.d	$f19,$f19,$f4
    # Line 658
    swc1	$f23,8($a1)
    # Line 659
    cvt.s.d	$f21,$f21
    swc1	$f21,4($a1)
    # Line 660
    cvt.s.d	$f19,$f19
    b	.L0d9af75c
    swc1	$f19,0($a1)
.L0d9b0390:
    # Line 663
    li	$a7,0x8102
    negu	$a6,$t2
    dsll	$a7,$a7,0x10
    movz	$a6,$t2,$a5
    ori	$a7,$a7,0x409
    multu	$a6,$a7
    mfhi	$v1
    sra	$v1,$v1,0x6
    negu	$v0,$v1
    movz	$v0,$v1,$a5
    mult	$v0,$s1
    # Line 664
    li	$t3,0x8040
    negu	$t1,$t2
    dsll	$t3,$t3,0x10
    movz	$t1,$t2,$a5
    ori	$t3,$t3,0x2011
    # Line 663
    mflo	$v0
    nop
    nop
    # Line 664
    multu	$t1,$t3
    mfhi	$a7
    sra	$a7,$a7,0x8
    negu	$a6,$a7
    movz	$a6,$a7,$a5
    mult	$a6,$ra
    # Line 665
    li	$v1,0x8020
    negu	$t1,$t2
    dsll	$v1,$v1,0x10
    movz	$t1,$t2,$a5
    ori	$v1,$v1,0x803
    # Line 664
    mflo	$t3
    nop
    nop
    # Line 665
    multu	$t1,$v1
    mfhi	$a7
    sra	$a7,$a7,0x9
    negu	$a6,$a7
    movz	$a6,$a7,$a5
    mult	$a6,$t9
    # Line 666
    li	$v1,0x8010
    negu	$a7,$t2
    dsll	$v1,$v1,0x10
    movz	$a7,$t2,$a5
    ori	$v1,$v1,0x201
    # Line 665
    mflo	$t1
    nop
    nop
    # Line 666
    multu	$a7,$v1
    mfhi	$a6
    sra	$a6,$a6,0xa
    negu	$v1,$a6
    movz	$v1,$a6,$a5
    mult	$v1,$s0
    # Line 663
    subu	$v0,$t2,$v0
    mtc1	$v0,$f0
    # Line 664
    subu	$t3,$t2,$t3
    mtc1	$t3,$f31
    # Line 665
    subu	$t1,$t2,$t1
    # Line 666
    mflo	$a7
    # Line 665
    mtc1	$t1,$f29
    # Line 666
    subu	$a7,$t2,$a7
    # Line 663
    cvt.s.w	$f0,$f0
    # Line 666
    mtc1	$a7,$f27
    # Line 664
    cvt.s.w	$f31,$f31
    # Line 665
    cvt.s.w	$f29,$f29
    # Line 666
    cvt.s.w	$f27,$f27
    # Line 663
    cvt.d.s	$f0,$f0
    # Line 664
    cvt.d.s	$f31,$f31
    # Line 663
    mul.d	$f0,$f0,$f4
    # Line 665
    cvt.d.s	$f29,$f29
    # Line 664
    mul.d	$f31,$f31,$f4
    # Line 666
    cvt.d.s	$f27,$f27
    # Line 663
    cvt.s.d	$f0,$f0
    # Line 665
    mul.d	$f29,$f29,$f4
    # Line 663
    swc1	$f0,12($a1)
    # Line 664
    cvt.s.d	$f31,$f31
    # Line 666
    mul.d	$f27,$f27,$f4
    # Line 664
    swc1	$f31,8($a1)
    # Line 665
    cvt.s.d	$f29,$f29
    swc1	$f29,4($a1)
    # Line 666
    cvt.s.d	$f27,$f27
    # Line 667
    b	.L0d9af75c
    # Line 666
    swc1	$f27,0($a1)
.L0d9b04dc:
    # Line 669
    li	$t1,0x8102
    negu	$a7,$t3
    dsll	$t1,$t1,0x10
    movz	$a7,$t3,$a6
    ori	$t1,$t1,0x409
    multu	$a7,$t1
    mfhi	$a5
    sra	$a5,$a5,0x6
    negu	$v1,$a5
    movz	$v1,$a5,$a6
    mult	$v1,$s1
    # Line 670
    li	$v0,0x8040
    negu	$t2,$t3
    dsll	$v0,$v0,0x10
    movz	$t2,$t3,$a6
    ori	$v0,$v0,0x2011
    # Line 669
    mflo	$v1
    nop
    nop
    # Line 670
    multu	$t2,$v0
    mfhi	$t1
    sra	$t1,$t1,0x8
    negu	$a7,$t1
    movz	$a7,$t1,$a6
    mult	$a7,$ra
    # Line 671
    li	$a5,0x8020
    negu	$t2,$t3
    dsll	$a5,$a5,0x10
    movz	$t2,$t3,$a6
    ori	$a5,$a5,0x803
    # Line 670
    mflo	$v0
    nop
    nop
    # Line 671
    multu	$t2,$a5
    mfhi	$t1
    sra	$t1,$t1,0x9
    negu	$a7,$t1
    movz	$a7,$t1,$a6
    mult	$a7,$t9
    # Line 672
    li	$a5,0x8010
    negu	$t1,$t3
    dsll	$a5,$a5,0x10
    movz	$t1,$t3,$a6
    ori	$a5,$a5,0x201
    # Line 671
    mflo	$t2
    nop
    nop
    # Line 672
    multu	$t1,$a5
    mfhi	$a7
    sra	$a7,$a7,0xa
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    mult	$a5,$s0
    # Line 669
    subu	$v1,$t3,$v1
    mtc1	$v1,$f5
    # Line 670
    subu	$v0,$t3,$v0
    mtc1	$v0,$f3
    # Line 671
    subu	$t2,$t3,$t2
    # Line 672
    mflo	$t1
    # Line 671
    mtc1	$t2,$f2
    # Line 672
    subu	$t1,$t3,$t1
    # Line 669
    cvt.s.w	$f5,$f5
    # Line 672
    mtc1	$t1,$f1
    # Line 670
    cvt.s.w	$f3,$f3
    # Line 671
    cvt.s.w	$f2,$f2
    # Line 672
    cvt.s.w	$f1,$f1
    # Line 669
    cvt.d.s	$f5,$f5
    # Line 670
    cvt.d.s	$f3,$f3
    # Line 669
    mul.d	$f5,$f5,$f4
    # Line 671
    cvt.d.s	$f2,$f2
    # Line 670
    mul.d	$f3,$f3,$f4
    # Line 672
    cvt.d.s	$f1,$f1
    # Line 669
    cvt.s.d	$f5,$f5
    # Line 671
    mul.d	$f2,$f2,$f4
    # Line 669
    swc1	$f5,12($a1)
    # Line 670
    cvt.s.d	$f3,$f3
    # Line 672
    mul.d	$f1,$f1,$f4
    # Line 670
    swc1	$f3,8($a1)
    # Line 671
    cvt.s.d	$f2,$f2
    swc1	$f2,4($a1)
    # Line 672
    cvt.s.d	$f1,$f1
    # Line 673
    b	.L0d9af75c
    # Line 672
    swc1	$f1,0($a1)
.L0d9b0628:
    # Line 679
    addiu	$a1,$a1,-16
    b	.L0d9aeb6c
    # Line 683
    lh	$t1,-8($a0)
.end __glOdysseyCvtToResidue

# Function: __glOdysseyReconstructFromResidue
# Declared: Line 734 (Source lines: 737-832)
# Address: 0x0d9b0640 - 0x0d9b08f4 (Size: 692 bytes, Frame: 224)
.globl __glOdysseyReconstructFromResidue
.ent __glOdysseyReconstructFromResidue
__glOdysseyReconstructFromResidue:
    # Line 751
    lw	$a7,4112($zero)
    # Line 737
    addiu	$sp,$sp,-96
    sd	$s7,80($sp)
    sd	$s1,72($sp)
    sd	$s0,64($sp)
    sd	$s4,56($sp)
    sd	$ra,48($sp)
    sd	$s6,40($sp)
    sd	$s3,32($sp)
    # Line 751
    lw	$at,4120($zero)
    # Line 737
    lui	$v0,0x14
    sd	$s5,8($sp)
    # Line 751
    li	$s5,1
    sd	$s2,24($sp)
    # Line 737
    addiu	$v0,$v0,32592
    sd	$gp,16($sp)
    # Line 751
    beq	$at,$s5,.L0d9b08e0
    # Line 737
    addu	$gp,$t9,$v0
    # Line 753
    lui	$s3,0x1
    addu	$s3,$a7,$s3
    lw	$v1,7148($s3)
    sll	$a6,$a5,0x2
    addu	$v1,$v1,$a6
    # Line 754
    beqz	$a5,.L0d9b08c0
    # Line 753
    lwc1	$f4,592($v1)
    # Line 754
    beq	$a5,$s5,.L0d9b08c8
    li	$t8,2
    beq	$a5,$t8,.L0d9b08d0
    li	$t9,3
    beq	$a5,$t9,.L0d9b08d8
    mtc1	$zero,$f5
.L0d9b06bc:
    # Line 770
    blez	$a3,.L0d9b0894
    ld	$s7,80($sp)
    ld	$t0,-13928($gp)
    ld	$t9,-13936($gp)
    ld	$ra,-13944($gp)
    li	$s7,3
    li	$s6,2
    ld	$t1,-13952($gp)
    li	$s4,0xffff
    move	$s2,$zero
    ld	$t8,-13960($gp)
    addiu	$at,$a2,3
    sd	$at,0($sp)
    lui	$t3,0x3f48
    ld	$t2,-13968($gp)
    ori	$t3,$t3,0x7de3
    b	.L0d9b071c
    dsll	$t3,$t3,0x6
    nop
    nop
    nop
.L0d9b0710:
    # Line 782
    addiu	$s2,$s2,1
    beq	$a3,$s2,.L0d9b0890
    nop
.L0d9b071c:
    # Line 770
    blez	$a2,.L0d9b0710
    move	$a7,$zero
    b	.L0d9b0754
    # Line 784
    lw	$at,7708($s3)
    nop
.L0d9b0730:
    # Line 815
    addu	$v1,$s1,$a1
    move	$v0,$s0
    slt	$a6,$s4,$s0
    movn	$v0,$s4,$a6
    sh	$v0,0($v1)
.L0d9b0744:
    # Line 783
    slt	$at,$a7,$a2
.L0d9b0748:
    beqz	$at,.L0d9b0710
    nop
    # Line 784
    lw	$at,7708($s3)
.L0d9b0754:
    multu	$s2,$at
    mflo	$s1
    sll	$s1,$s1,0x2
    addu	$s1,$a7,$s1
    # Line 785
    addu	$s1,$s1,$s1
    addu	$a6,$s1,$a0
    lhu	$v1,0($a6)
    sra	$v1,$v1,0x4
    dmultu	$t2,$v1
    lhu	$v0,2($a6)
    sra	$v0,$v0,0x4
    mflo	$s0
    nop
    nop
    dmultu	$t8,$v0
    lhu	$at,4($a6)
    sra	$at,$at,0x4
    mflo	$v1
    nop
    nop
    dmultu	$t1,$at
    lhu	$a6,6($a6)
    sra	$a6,$a6,0x4
    mflo	$at
    nop
    nop
    dmultu	$ra,$a6
    mflo	$v0
    daddu	$s0,$s0,$v1
    ld	$a6,-13920($gp)
    daddu	$at,$at,$v0
    daddu	$s0,$s0,$at
    dmultu	$s0,$a6
    mfhi	$v0
    dsubu	$v1,$s0,$v0
    dsrl	$v1,$v1,0x1
    daddu	$v0,$v0,$v1
    dsrl32	$v0,$v0,0x4
    dmult	$v0,$t9
    mflo	$at
    dsubu	$s0,$s0,$at
    # Line 791
    daddu	$v1,$s0,$t0
    # Line 785
    sltu	$a6,$t3,$s0
    movz	$v1,$s0,$a6
    # Line 795
    ddiv	$zero,$v1,$a4
    mflo	$v0
    # Line 808
    slti	$v1,$v0,0
    movn	$v0,$zero,$v1
    dsll	$v0,$v0,0x4
    dmtc1	$v0,$f0
    cvt.s.l	$f0,$f0
    madd.s	$f0,$f5,$f0,$f4
    trunc.l.s	$f0,$f0
    # Line 795
    teq	$a4,$zero,0x7
    # Line 783
    addiu	$a7,$a7,4
    # Line 813
    beqz	$a5,.L0d9b0730
    # Line 808
    dmfc1	$s0,$f0
    # Line 813
    beq	$a5,$s5,.L0d9b0868
    # Line 818
    move	$at,$s0
    # Line 813
    beq	$a5,$s6,.L0d9b087c
    # Line 821
    move	$a6,$s0
    # Line 813
    bne	$a5,$s7,.L0d9b0748
    # Line 783
    slt	$at,$a7,$a2
    # Line 824
    move	$v0,$s0
    slt	$a6,$s4,$s0
    addu	$v1,$s1,$a1
    movn	$v0,$s4,$a6
    # Line 825
    b	.L0d9b0744
    # Line 824
    sh	$v0,6($v1)
.L0d9b0868:
    # Line 818
    slt	$v1,$s4,$s0
    addu	$v0,$s1,$a1
    movn	$at,$s4,$v1
    # Line 819
    b	.L0d9b0744
    # Line 818
    sh	$at,2($v0)
.L0d9b087c:
    # Line 821
    slt	$v0,$s4,$s0
    addu	$at,$s1,$a1
    movn	$a6,$s4,$v0
    # Line 822
    b	.L0d9b0744
    # Line 821
    sh	$a6,4($at)
.L0d9b0890:
    ld	$s7,80($sp)
.L0d9b0894:
    ld	$s1,72($sp)
    ld	$s0,64($sp)
    ld	$s4,56($sp)
    ld	$s6,40($sp)
    ld	$s3,32($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    # Line 832
    ld	$gp,16($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9b08c0:
    b	.L0d9b06bc
    # Line 756
    lwc1	$f5,696($a7)
.L0d9b08c8:
    # Line 761
    b	.L0d9b06bc
    # Line 760
    lwc1	$f5,700($a7)
.L0d9b08d0:
    # Line 765
    b	.L0d9b06bc
    # Line 764
    lwc1	$f5,704($a7)
.L0d9b08d8:
    # Line 769
    b	.L0d9b06bc
    # Line 768
    lwc1	$f5,708($a7)
.L0d9b08e0:
    # Line 751
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9b0894
    ld	$s7,80($sp)
.end __glOdysseyReconstructFromResidue

# Function: multiplicative_inverse
# Declared: Line 869 (Source lines: 870-888)
# Address: 0x0d9b0900 - 0x0d9b09c4 (Size: 196 bytes, Frame: 16)
.ent multiplicative_inverse
multiplicative_inverse:
    # Line 870
    addiu	$sp,$sp,-16
    # Line 877
    sw	$a1,12($sp)
    # Line 876
    sw	$zero,8($sp)
    # Line 877
    move	$a5,$a1
    # Line 875
    sw	$a0,4($sp)
    # Line 874
    li	$v0,1
    # Line 877
    beqz	$a1,.L0d9b09bc
    # Line 874
    sw	$v0,0($sp)
    nop
    nop
    nop
    # Line 879
    lw	$at,4($sp)
.L0d9b0930:
    mtc1	$a5,$f1
    mtc1	$at,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    addiu	$a3,$sp,8
    addiu	$a4,$sp,0
    teq	$a5,$zero,0x7
    mfc1	$v0,$f0
    # Line 881
    lw	$a6,8($sp)
    mult	$a6,$v0
    lw	$a7,4($a3)
    mflo	$a5
    nop
    nop
    mult	$a7,$v0
    lw	$v1,4($sp)
    # Line 882
    sw	$a7,4($sp)
    # Line 881
    lw	$a2,0($sp)
    # Line 882
    sw	$a6,0($sp)
    # Line 881
    subu	$a2,$a2,$a5
    # Line 883
    sw	$a2,8($sp)
    # Line 881
    mflo	$a0
    subu	$v1,$v1,$a0
    # Line 883
    sw	$v1,4($a3)
    # Line 880
    lw	$a5,12($sp)
    bnez	$a5,.L0d9b0930
    # Line 879
    lw	$at,4($sp)
    # Line 880
    lw	$t1,0($sp)
    # Line 888
    addiu	$sp,$sp,16
    # Line 887
    addu	$v0,$t1,$a1
    slti	$t0,$t1,0
    # Line 888
    jr	$ra
    movz	$v0,$t1,$t0
.L0d9b09bc:
    jr	$ra
    addiu	$sp,$sp,16
.end multiplicative_inverse

# Function: get_prime_sums
# Declared: Line 897 (Source lines: 898-1027)
# Address: 0x0d9b09d0 - 0x0d9b0f00 (Size: 1328 bytes, Frame: 176)
.ent get_prime_sums
get_prime_sums:
    # Line 908
    la	$at,sub_0daf0000
    ld	$v0,-28536($at)
    addiu	$at,$at,-28536
    lw	$a5,32($at)
    # Line 898
    addiu	$sp,$sp,-176
    # Line 908
    ld	$v1,24($at)
    sd	$v0,0($sp)
    ld	$v0,16($at)
    ld	$at,8($at)
    sw	$a5,32($sp)
    # Line 911
    mtc1	$zero,$f7
    # Line 908
    sd	$v1,24($sp)
    # Line 898
    move	$a6,$a0
    # Line 911
    dmtc1	$zero,$f4
    # Line 908
    sd	$v0,16($sp)
    # Line 911
    addiu	$t0,$a0,32
    dmtc1	$zero,$f8
    # Line 908
    sd	$at,8($sp)
    # Line 911
    lwc1	$f6,0($a0)
    c.lt.s	$f6,$f7
    bc1f	.L0d9b0a30
    sd	$a3,72($sp)
    # Line 913
    b	.L0d9b0a34
    neg.s	$f5,$f6
.L0d9b0a30:
    mov.s	$f5,$f6
.L0d9b0a34:
    # Line 911
    lwc1	$f6,4($a6)
    c.lt.s $f6,$f7
    # Line 913
    cvt.d.s	$f0,$f5
    # Line 911
    bc1f .L0d9b0a50
    # Line 913
    add.d	$f4,$f0,$f4
    b	.L0d9b0a54
    neg.s	$f5,$f6
.L0d9b0a50:
    mov.s	$f5,$f6
.L0d9b0a54:
    # Line 911
    lwc1	$f6,8($a6)
    c.lt.s $f6,$f7
    # Line 913
    cvt.d.s	$f1,$f5
    # Line 911
    bc1f .L0d9b0a70
    # Line 913
    add.d	$f4,$f1,$f4
    b	.L0d9b0a74
    neg.s	$f5,$f6
.L0d9b0a70:
    mov.s	$f5,$f6
.L0d9b0a74:
    # Line 911
    lwc1	$f6,12($a6)
    c.lt.s $f6,$f7
    # Line 913
    cvt.d.s	$f2,$f5
    # Line 911
    bc1f .L0d9b0a90
    # Line 913
    add.d	$f4,$f2,$f4
    b	.L0d9b0a94
    neg.s	$f5,$f6
.L0d9b0a90:
    mov.s	$f5,$f6
.L0d9b0a94:
    # Line 911
    lwc1	$f6,16($a6)
    c.lt.s $f6,$f7
    # Line 913
    cvt.d.s	$f3,$f5
    # Line 911
    bc1f .L0d9b0ab0
    # Line 913
    add.d	$f4,$f3,$f4
    b	.L0d9b0ab4
    neg.s	$f5,$f6
.L0d9b0ab0:
    mov.s	$f5,$f6
.L0d9b0ab4:
    # Line 911
    lwc1	$f6,20($a6)
    c.lt.s $f6,$f7
    # Line 913
    cvt.d.s	$f9,$f5
    # Line 911
    bc1f .L0d9b0ad0
    # Line 913
    add.d	$f4,$f9,$f4
    b	.L0d9b0ad4
    neg.s	$f5,$f6
.L0d9b0ad0:
    mov.s	$f5,$f6
.L0d9b0ad4:
    # Line 911
    lwc1	$f6,24($a6)
    c.lt.s $f6,$f7
    # Line 913
    cvt.d.s	$f10,$f5
    # Line 911
    bc1f .L0d9b0af0
    # Line 913
    add.d	$f4,$f10,$f4
    b	.L0d9b0af4
    neg.s	$f5,$f6
.L0d9b0af0:
    mov.s	$f5,$f6
.L0d9b0af4:
    sd	$s5,144($sp)
    sd	$s1,136($sp)
    sd	$s7,128($sp)
    sd	$s0,120($sp)
    # Line 911
    lwc1	$f6,28($a6)
    sd	$s4,112($sp)
    sd	$ra,104($sp)
    sd	$s3,96($sp)
    c.lt.s $f6,$f7
    sd	$s2,168($sp)
    # Line 913
    cvt.d.s	$f11,$f5
    sd	$s8,160($sp)
    sd	$s6,152($sp)
    # Line 911
    bc1f .L0d9b0b38
    # Line 913
    add.d	$f4,$f11,$f4
    b	.L0d9b0b3c
    neg.s	$f5,$f6
.L0d9b0b38:
    mov.s	$f5,$f6
.L0d9b0b3c:
    cvt.d.s	$f12,$f5
    add.d	$f4,$f12,$f4
    # Line 928
    ldc1	$f6,_lit8_3ff0000000000000
    dmtc1	$a4,$f5
    c.lt.d	$f4,$f6
    ldc1	$f7,_lit8_bfe0000000000000
    li	$v1,1
    ldc1	$f9,_lit8_3fe0000000000000
    movf	$v1,$zero,$fcc0
    move	$a7,$a1
    sd	$zero,0($a2)
    cvt.d.l	$f5,$f5
    movz.d	$f6,$f4,$v1
.L0d9b0b70:
    # Line 933
    lwc1	$f11,0($a6)
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f6
    mul.d	$f12,$f5,$f11
    c.lt.d $f8,$f12
    mov.d	$f10,$f7
    movt.d	$f10,$f9,$fcc1
    madd.d	$f10,$f10,$f5,$f11
    trunc.w.d	$f10,$f10
    mfc1	$a3,$f10
    sd	$a3,0($a7)
    # Line 929
    addiu	$a6,$a6,4
    # Line 934
    ld	$a0,0($a2)
    # Line 929
    addiu	$a7,$a7,8
    # Line 934
    daddu	$a0,$a0,$a3
    # Line 929
    bne	$a6,$t0,.L0d9b0b70
    # Line 934
    sd	$a0,0($a2)
    # Line 929
    move	$a7,$a1
    ld	$a4,-13936($gp)
    ld	$a0,0($a1)
    bltz	$a0,.L0d9b0eb0
    # Line 959
    daddu	$a3,$a0,$a4
.L0d9b0bc8:
    # Line 929
    ld	$a0,8($a7)
    bltz	$a0,.L0d9b0eb8
    # Line 959
    daddu	$a5,$a0,$a4
.L0d9b0bd4:
    # Line 929
    ld	$a0,16($a7)
    bltz	$a0,.L0d9b0ec0
    # Line 959
    daddu	$a6,$a0,$a4
.L0d9b0be0:
    # Line 929
    ld	$a0,24($a7)
    bltz	$a0,.L0d9b0ec8
    # Line 959
    daddu	$t0,$a0,$a4
.L0d9b0bec:
    # Line 929
    ld	$a0,32($a7)
    bltz	$a0,.L0d9b0ed0
    # Line 959
    daddu	$t1,$a0,$a4
.L0d9b0bf8:
    # Line 929
    ld	$a0,40($a7)
    bltz	$a0,.L0d9b0ed8
    # Line 959
    daddu	$t2,$a0,$a4
.L0d9b0c04:
    # Line 929
    ld	$a0,48($a7)
    bltz	$a0,.L0d9b0ee0
    # Line 959
    daddu	$t3,$a0,$a4
.L0d9b0c10:
    # Line 929
    ld	$a0,56($a7)
    bltz	$a0,.L0d9b0ee8
    # Line 959
    daddu	$t8,$a0,$a4
.L0d9b0c1c:
    # Line 961
    ld	$a5,8($a1)
    ld	$a4,0($a1)
    daddu	$a4,$a4,$a5
    sd	$a4,80($sp)
    sd	$a4,24($a2)
    # Line 962
    ld	$t8,24($a1)
    ld	$s7,16($a1)
    # Line 967
    sd	$a4,40($sp)
    # Line 962
    daddu	$s7,$s7,$t8
    sd	$s7,88($sp)
    sd	$s7,32($a2)
    # Line 963
    ld	$a5,40($a1)
    ld	$a3,32($a1)
    # Line 967
    sd	$s7,48($sp)
    # Line 963
    daddu	$a3,$a3,$a5
    sd	$a3,40($a2)
    # Line 964
    ld	$s6,56($a1)
    # Line 967
    li	$s0,9
    # Line 964
    ld	$s3,48($a1)
    # Line 967
    move	$s5,$zero
    # Line 965
    daddu	$a4,$a4,$s7
    sd	$a4,8($a2)
    # Line 967
    addiu	$s1,$sp,36
    # Line 964
    daddu	$s3,$s3,$s6
    sd	$s3,48($a2)
    # Line 967
    move	$s6,$a3
    # Line 966
    daddu	$a5,$a3,$s3
    sd	$a5,16($a2)
    # Line 967
    move	$s7,$s3
    daddu	$a4,$a4,$a5
    sd	$a4,0($a2)
.L0d9b0c98:
    blez	$s5,.L0d9b0de0
    ld	$a1,80($sp)
    sd	$zero,64($sp)
.L0d9b0ca4:
    # Line 973
    move	$t3,$a1
    ld	$a0,88($sp)
    move	$s8,$zero
.L0d9b0cb0:
    # Line 976
    move	$t8,$a0
    move	$a1,$a3
    daddu	$t9,$a0,$t3
    daddu	$s4,$t9,$s6
    daddu	$s2,$a3,$t9
    daddu	$a2,$s7,$s2
    daddu	$s2,$s3,$s2
    daddu	$s4,$s3,$s4
    sd	$s4,56($sp)
    move	$s4,$zero
.L0d9b0cd8:
    # Line 979
    move	$t0,$a1
    move	$a6,$s3
    move	$a0,$s2
    move	$ra,$a2
    b	.L0d9b0ef0
    move	$t1,$zero
.L0d9b0cf0:
    # Line 1006
    beq	$a2,$s0,.L0d9b0e40
    # Line 980
    daddiu	$a6,$a4,1
    daddiu	$a0,$a7,1
    addiu	$t1,$t1,1
    # Line 982
    daddu	$t2,$t0,$a6
    # Line 980
    beq	$a0,$ra,.L0d9b0da0
    # Line 982
    move	$a4,$a6
    move	$a2,$zero
.L0d9b0d10:
    addiu	$a1,$sp,0
    move	$a7,$a0
.L0d9b0d18:
    # Line 984
    lw	$a0,0($a1)
    ddiv	$zero,$t3,$a0
    mfhi	$at
    # Line 983
    addiu	$a1,$a1,4
    # Line 984
    beqz	$at,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 987
    ddiv	$zero,$t8,$a0
    mfhi	$v0
    beqz	$v0,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 990
    ddiv	$zero,$t0,$a0
    mfhi	$v1
    beqz	$v1,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 993
    ddiv	$zero,$a4,$a0
    mfhi	$a5
    beqz	$a5,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 996
    ddiv	$zero,$t9,$a0
    mfhi	$a6
    beqz	$a6,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 999
    ddiv	$zero,$t2,$a0
    mfhi	$at
    beqz	$at,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 1002
    ddiv	$zero,$a7,$a0
    mfhi	$v0
    beqz	$v0,.L0d9b0cf0
    teq	$a0,$zero,0x7
    # Line 983
    bne	$a1,$s1,.L0d9b0d18
    addiu	$a2,$a2,1
    b	.L0d9b0cf0
    nop
.L0d9b0da0:
    # Line 977
    ld	$v1,56($sp)
    daddiu	$s2,$s2,1
    daddiu	$a2,$ra,1
    daddiu	$a1,$t0,1
    bne	$s2,$v1,.L0d9b0cd8
    addiu	$s4,$s4,1
    # Line 974
    ld	$a1,48($sp)
    daddiu	$a0,$t8,1
    bne	$a0,$a1,.L0d9b0cb0
    addiu	$s8,$s8,1
    # Line 971
    ld	$a2,40($sp)
    daddiu	$a1,$t3,1
    ld	$a4,64($sp)
    addiu	$a4,$a4,1
    bne	$a1,$a2,.L0d9b0ca4
    sd	$a4,64($sp)
.L0d9b0de0:
    # Line 970
    daddiu	$s6,$s6,1
    ld	$a7,40($sp)
    li	$a5,256
    addiu	$s5,$s5,1
    ld	$a6,48($sp)
    daddiu	$s7,$s7,1
    daddiu	$a7,$a7,1
    sd	$a7,40($sp)
    daddiu	$a6,$a6,1
    bne	$s5,$a5,.L0d9b0c98
    sd	$a6,48($sp)
    # Line 1027
    ld	$s0,120($sp)
    ld	$s1,136($sp)
    ld	$s2,168($sp)
    ld	$s3,96($sp)
    ld	$s4,112($sp)
    ld	$s5,144($sp)
    ld	$ra,104($sp)
    ld	$s6,152($sp)
    move	$v0,$zero
    ld	$s7,128($sp)
    ld	$s8,160($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9b0e40:
    ld	$s0,120($sp)
    ld	$s1,136($sp)
    ld	$s2,168($sp)
    ld	$s3,96($sp)
    ld	$s5,144($sp)
    ld	$s6,152($sp)
    # Line 1013
    ld	$a0,72($sp)
    # Line 1027
    ld	$s7,128($sp)
    # Line 1013
    sd	$a4,48($a0)
    # Line 1011
    sd	$t8,32($a0)
    # Line 1010
    sd	$t3,24($a0)
    # Line 1009
    sd	$t2,16($a0)
    # Line 1013
    ld	$v0,64($sp)
    # Line 1008
    sd	$t9,8($a0)
    # Line 1013
    slt	$a1,$t1,$s4
    # Line 1027
    ld	$ra,104($sp)
    # Line 1013
    movz	$s4,$t1,$a1
    slt	$v1,$s8,$v0
    # Line 1012
    sd	$t0,40($a0)
    # Line 1013
    movz	$v0,$s8,$v1
    # Line 1027
    ld	$t0,112($sp)
    # Line 1013
    slt	$v1,$s4,$v0
    # Line 1027
    ld	$s8,160($sp)
    addiu	$sp,$sp,176
    movz	$v0,$s4,$v1
    # Line 1007
    sd	$a7,0($a0)
    # Line 1027
    jr	$ra
    move	$s4,$t0
.L0d9b0eb0:
    # Line 959
    b	.L0d9b0bc8
    sd	$a3,0($a1)
.L0d9b0eb8:
    b	.L0d9b0bd4
    sd	$a5,8($a7)
.L0d9b0ec0:
    b	.L0d9b0be0
    sd	$a6,16($a7)
.L0d9b0ec8:
    b	.L0d9b0bec
    sd	$t0,24($a7)
.L0d9b0ed0:
    b	.L0d9b0bf8
    sd	$t1,32($a7)
.L0d9b0ed8:
    b	.L0d9b0c04
    sd	$t2,40($a7)
.L0d9b0ee0:
    b	.L0d9b0c10
    sd	$t3,48($a7)
.L0d9b0ee8:
    b	.L0d9b0c1c
    sd	$t8,56($a7)
.L0d9b0ef0:
    # Line 982
    move	$a4,$a6
    daddu	$t2,$t0,$a6
    b	.L0d9b0d10
    move	$a2,$zero
.end get_prime_sums

# Function: __glOdyssey_ks_to_alphas
# Declared: Line 1033 (Source lines: 1035-1117)
# Address: 0x0d9b0f00 - 0x0d9b1360 (Size: 1120 bytes, Frame: 176)
.globl __glOdyssey_ks_to_alphas
.ent __glOdyssey_ks_to_alphas
__glOdyssey_ks_to_alphas:
    # Line 1035
    addiu	$sp,$sp,-176
    sd	$s2,160($sp)
    sd	$ra,120($sp)
    lui	$ra,0x14
    sd	$s8,144($sp)
    addiu	$ra,$ra,30352
    sd	$gp,152($sp)
    addu	$gp,$t9,$ra
    move	$s8,$a3
    # Line 1049
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$a3,$sp,56
    # Line 1035
    sd	$s1,136($sp)
    move	$s1,$a2
    # Line 1049
    addiu	$a2,$sp,0
    # Line 1035
    sd	$s3,112($sp)
    # Line 1049
    addiu	$t9,$t9,2512
    # Line 1035
    move	$s3,$a1
    sd	$s5,128($sp)
    move	$s5,$a4
    sd	$s0,168($sp)
    # Line 1049
    bal __glOdysseyReconstructFromResidue
    move	$a4,$s8
    la	$s0,sub_0d9b0000
    # Line 1057
    la	$s2,sub_0daf0000
    sll	$t8,$s5,0x3
    # Line 1049
    addiu	$s0,$s0,2304
    # Line 1057
    addiu	$s2,$s2,-14352
    move	$t9,$s0
    # Line 1049
    move	$s8,$v0
    # Line 1057
    addu	$s2,$s2,$t8
    li	$a0,4096
    bal __glOdysseyReconstructFromResidue
    lw	$a1,4($s2)
    # Line 1064
    dmult	$v0,$v0
    ld	$a2,0($s2)
    mflo	$t8
    nop
    nop
    ddiv	$zero,$t8,$a2
    ld	$t3,56($sp)
    mfhi	$t0
    nop
    nop
    dmult	$v0,$t3
    mflo	$t2
    nop
    nop
    ddiv	$zero,$t2,$a2
    mfhi	$t1
    nop
    nop
    dmult	$t0,$t1
    mflo	$a7
    nop
    nop
    ddiv	$zero,$a7,$a2
    mfhi	$a6
    li	$a5,4096
    sll	$a6,$a6,0x0
    subu	$a5,$a5,$a6
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,28($s1)
    # Line 1067
    ld	$a3,56($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    # Line 1064
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1067
    move	$t9,$s0
    # Line 1064
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1067
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1069
    ld	$a7,72($sp)
    dmult	$v0,$a7
    ld	$a2,0($s2)
    mflo	$a6
    nop
    nop
    ddiv	$zero,$a6,$a2
    mfhi	$a5
    nop
    dsll	$a5,$a5,0xc
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,24($s1)
    # Line 1073
    ld	$a3,72($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    move	$t9,$s0
    # Line 1069
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1073
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1075
    ld	$a7,104($sp)
    dmult	$v0,$a7
    ld	$a2,0($s2)
    mflo	$a6
    nop
    nop
    ddiv	$zero,$a6,$a2
    mfhi	$a5
    nop
    dsll	$a5,$a5,0xc
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,20($s1)
    # Line 1079
    ld	$a3,64($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    move	$t9,$s0
    # Line 1075
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1079
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1081
    ld	$a7,88($sp)
    dmult	$v0,$a7
    ld	$a2,0($s2)
    mflo	$a6
    nop
    nop
    ddiv	$zero,$a6,$a2
    mfhi	$a5
    nop
    dsll	$a5,$a5,0xc
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,16($s1)
    # Line 1085
    ld	$a3,104($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    move	$t9,$s0
    # Line 1081
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1085
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1087
    ld	$a7,56($s3)
    dmult	$v0,$a7
    ld	$a2,0($s2)
    mflo	$a6
    nop
    nop
    ddiv	$zero,$a6,$a2
    mfhi	$a5
    nop
    dsll	$a5,$a5,0xc
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,12($s1)
    # Line 1091
    ld	$a3,96($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    move	$t9,$s0
    # Line 1087
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1091
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1093
    ld	$a7,40($s3)
    dmult	$v0,$a7
    ld	$a2,0($s2)
    mflo	$a6
    nop
    nop
    ddiv	$zero,$a6,$a2
    mfhi	$a5
    nop
    dsll	$a5,$a5,0xc
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,8($s1)
    # Line 1097
    ld	$a3,88($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    move	$t9,$s0
    # Line 1093
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1097
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1099
    ld	$a7,24($s3)
    dmult	$v0,$a7
    ld	$a2,0($s2)
    mflo	$a6
    nop
    nop
    ddiv	$zero,$a6,$a2
    mfhi	$a5
    nop
    dsll	$a5,$a5,0xc
    ddiv	$zero,$a5,$a2
    mfhi	$a4
    sw	$a4,4($s1)
    # Line 1103
    ld	$a3,80($sp)
    ddiv	$zero,$a3,$a2
    sll	$a1,$a2,0x0
    teq	$a2,$zero,0x7
    move	$t9,$s0
    # Line 1099
    teq	$a2,$zero,0x7
    teq	$a2,$zero,0x7
    # Line 1103
    mfhi	$a0
    bal __glOdysseyReconstructFromResidue
    sll	$a0,$a0,0x0
    # Line 1105
    ld	$t3,8($s3)
    dmult	$v0,$t3
    ld	$a3,0($s2)
    mflo	$t2
    nop
    nop
    ddiv	$zero,$t2,$a3
    mfhi	$t1
    nop
    dsll	$t1,$t1,0xc
    ddiv	$zero,$t1,$a3
    ld	$s3,112($sp)
    ld	$s2,160($sp)
    ld	$s0,168($sp)
    ld	$s5,128($sp)
    # Line 1117
    ld	$gp,152($sp)
    # Line 1105
    teq	$a3,$zero,0x7
    teq	$a3,$zero,0x7
    mfhi	$t0
    nop
    sw	$t0,0($s1)
    lw	$a2,0($s1)
    bltz	$a2,.L0d9b1320
    # Line 1114
    daddu	$t8,$a2,$a3
.L0d9b12b4:
    # Line 1105
    lw	$a2,4($s1)
    bltz	$a2,.L0d9b1328
    # Line 1114
    daddu	$t9,$a2,$a3
.L0d9b12c0:
    # Line 1105
    lw	$a2,8($s1)
    bltz	$a2,.L0d9b1330
    # Line 1114
    daddu	$ra,$a2,$a3
.L0d9b12cc:
    # Line 1105
    lw	$a2,12($s1)
    bltz	$a2,.L0d9b1338
    # Line 1114
    daddu	$at,$a2,$a3
.L0d9b12d8:
    # Line 1105
    lw	$a2,16($s1)
    bltz	$a2,.L0d9b1340
    # Line 1114
    daddu	$v0,$a2,$a3
.L0d9b12e4:
    # Line 1105
    lw	$a2,20($s1)
    bltz	$a2,.L0d9b1348
    # Line 1114
    daddu	$v1,$a2,$a3
.L0d9b12f0:
    # Line 1105
    lw	$a2,24($s1)
    bltz	$a2,.L0d9b1350
    # Line 1114
    daddu	$a0,$a2,$a3
.L0d9b12fc:
    # Line 1105
    lw	$a2,28($s1)
    bltz	$a2,.L0d9b1358
    # Line 1114
    daddu	$a1,$a2,$a3
.L0d9b1308:
    ld	$ra,120($sp)
    ld	$s1,136($sp)
    # Line 1117
    move	$v0,$s8
    ld	$s8,144($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9b1320:
    # Line 1114
    b	.L0d9b12b4
    sw	$t8,0($s1)
.L0d9b1328:
    b	.L0d9b12c0
    sw	$t9,4($s1)
.L0d9b1330:
    b	.L0d9b12cc
    sw	$ra,8($s1)
.L0d9b1338:
    b	.L0d9b12d8
    sw	$at,12($s1)
.L0d9b1340:
    b	.L0d9b12e4
    sw	$v0,16($s1)
.L0d9b1348:
    b	.L0d9b12f0
    sw	$v1,20($s1)
.L0d9b1350:
    b	.L0d9b12fc
    sw	$a0,24($s1)
.L0d9b1358:
    b	.L0d9b1308
    sw	$a1,28($s1)
.end __glOdyssey_ks_to_alphas

# Function: __glOdysseyCvtToInternalFmt
# Declared: Line 1124 (Source lines: 1125-1189)
# Address: 0x0d9b1360 - 0x0d9b1654 (Size: 756 bytes, Frame: 0)
.globl __glOdysseyCvtToInternalFmt
.ent __glOdysseyCvtToInternalFmt
__glOdysseyCvtToInternalFmt:
    # Line 1129
    li	$v1,6408
    # Line 1125
    lui	$v0,0x14
    move	$a5,$a0
    addiu	$v0,$v0,29232
    # Line 1129
    beq	$a2,$v1,.L0d9b13fc
    # Line 1125
    addu	$at,$t9,$v0
    # Line 1135
    li	$v1,6406
    beq	$a2,$v1,.L0d9b1404
    nop
    li	$a0,6409
    beq	$a2,$a0,.L0d9b146c
    li	$a3,0x8049
    beq	$a2,$a3,.L0d9b1514
    li	$a4,6410
    beq	$a2,$a4,.L0d9b15c4
    li	$a6,6407
    bne	$a2,$a6,.L0d9b13fc
    nop
    # Line 1178
    blez	$a1,.L0d9b13fc
    lwc1	$f4,_lit_3f800000
    andi	$a2,$a1,0x3
    move	$a4,$zero
    beqz	$a2,.L0d9b13d4
    sra	$a7,$a1,0x2
.L0d9b13c0:
    addiu	$a2,$a2,-1
    # Line 1183
    addiu	$a5,$a5,16
    # Line 1178
    addiu	$a4,$a4,1
    bnez	$a2,.L0d9b13c0
    # Line 1182
    swc1	$f4,-4($a5)
.L0d9b13d4:
    beqz	$a7,.L0d9b13fc
    move	$a2,$a5
    nop
.L0d9b13e0:
    # Line 1183
    addiu	$a2,$a2,64
    # Line 1182
    swc1	$f4,-4($a2)
    swc1	$f4,-20($a2)
    # Line 1178
    addiu	$a4,$a4,4
    # Line 1182
    swc1	$f4,-36($a2)
    # Line 1178
    bne	$a1,$a4,.L0d9b13e0
    # Line 1182
    swc1	$f4,-52($a2)
.L0d9b13fc:
    # Line 1189
    jr	$ra
    nop
.L0d9b1404:
    # Line 1137
    blez	$a1,.L0d9b13fc
    mtc1	$zero,$f4
    andi	$t0,$a1,0x1
    sra	$t1,$a1,0x1
    beqz	$t0,.L0d9b1430
    move	$a4,$zero
    # Line 1140
    swc1	$f4,8($a0)
    # Line 1139
    swc1	$f4,4($a0)
    # Line 1142
    addiu	$a5,$a0,16
    # Line 1137
    li	$a4,1
    # Line 1138
    swc1	$f4,0($a0)
.L0d9b1430:
    beqz	$t1,.L0d9b13fc
    move	$a2,$a5
    nop
    nop
.L0d9b1440:
    # Line 1142
    addiu	$a2,$a2,32
    # Line 1140
    swc1	$f4,-8($a2)
    # Line 1139
    swc1	$f4,-12($a2)
    # Line 1138
    swc1	$f4,-16($a2)
    # Line 1140
    swc1	$f4,-24($a2)
    # Line 1137
    addiu	$a4,$a4,2
    # Line 1139
    swc1	$f4,-28($a2)
    # Line 1137
    bne	$a1,$a4,.L0d9b1440
    # Line 1138
    swc1	$f4,-32($a2)
    b	.L0d9b13fc
    nop
.L0d9b146c:
    # Line 1147
    blez	$a1,.L0d9b13fc
    lwc1	$f4,_lit_3f800000
    andi	$a2,$a1,0x3
    move	$a4,$zero
    beqz	$a2,.L0d9b14a8
    sra	$t2,$a1,0x2
.L0d9b1484:
    # Line 1152
    addiu	$a5,$a5,16
    # Line 1148
    lwc1	$f0,-16($a5)
    # Line 1151
    swc1	$f4,-4($a5)
    addiu	$a2,$a2,-1
    # Line 1150
    swc1	$f0,-8($a5)
    # Line 1149
    swc1	$f0,-12($a5)
    # Line 1147
    addiu	$a4,$a4,1
    bnez	$a2,.L0d9b1484
    # Line 1148
    swc1	$f0,-16($a5)
.L0d9b14a8:
    beqz	$t2,.L0d9b13fc
    move	$a2,$a5
.L0d9b14b0:
    # Line 1152
    addiu	$a2,$a2,64
    # Line 1151
    swc1	$f4,-4($a2)
    swc1	$f4,-20($a2)
    swc1	$f4,-36($a2)
    # Line 1148
    lwc1	$f5,-16($a2)
    # Line 1151
    swc1	$f4,-52($a2)
    # Line 1150
    swc1	$f5,-8($a2)
    # Line 1149
    swc1	$f5,-12($a2)
    # Line 1148
    lwc1	$f3,-32($a2)
    swc1	$f5,-16($a2)
    # Line 1150
    swc1	$f3,-24($a2)
    # Line 1149
    swc1	$f3,-28($a2)
    # Line 1148
    lwc1	$f2,-48($a2)
    swc1	$f3,-32($a2)
    # Line 1150
    swc1	$f2,-40($a2)
    # Line 1149
    swc1	$f2,-44($a2)
    # Line 1148
    lwc1	$f1,-64($a2)
    swc1	$f2,-48($a2)
    # Line 1147
    addiu	$a4,$a4,4
    # Line 1150
    swc1	$f1,-56($a2)
    # Line 1149
    swc1	$f1,-60($a2)
    # Line 1147
    bne	$a1,$a4,.L0d9b14b0
    # Line 1148
    swc1	$f1,-64($a2)
    b	.L0d9b13fc
    nop
.L0d9b1514:
    # Line 1158
    blez	$a1,.L0d9b13fc
    andi	$a2,$a1,0x3
    sra	$t3,$a1,0x2
    beqz	$a2,.L0d9b154c
    move	$a4,$zero
.L0d9b1528:
    # Line 1159
    lwc1	$f6,0($a5)
    # Line 1163
    addiu	$a5,$a5,16
    # Line 1162
    swc1	$f6,-4($a5)
    addiu	$a2,$a2,-1
    # Line 1161
    swc1	$f6,-8($a5)
    # Line 1160
    swc1	$f6,-12($a5)
    # Line 1158
    addiu	$a4,$a4,1
    bnez	$a2,.L0d9b1528
    # Line 1159
    swc1	$f6,-16($a5)
.L0d9b154c:
    beqz	$t3,.L0d9b13fc
    move	$a2,$a5
    nop
    nop
    nop
.L0d9b1560:
    lwc1	$f10,48($a2)
    # Line 1163
    addiu	$a2,$a2,64
    # Line 1162
    swc1	$f10,-4($a2)
    # Line 1161
    swc1	$f10,-8($a2)
    # Line 1160
    swc1	$f10,-12($a2)
    # Line 1159
    lwc1	$f9,-32($a2)
    swc1	$f10,-16($a2)
    # Line 1162
    swc1	$f9,-20($a2)
    # Line 1161
    swc1	$f9,-24($a2)
    # Line 1160
    swc1	$f9,-28($a2)
    # Line 1159
    lwc1	$f8,-48($a2)
    swc1	$f9,-32($a2)
    # Line 1162
    swc1	$f8,-36($a2)
    # Line 1161
    swc1	$f8,-40($a2)
    # Line 1160
    swc1	$f8,-44($a2)
    # Line 1159
    lwc1	$f7,-64($a2)
    swc1	$f8,-48($a2)
    # Line 1162
    swc1	$f7,-52($a2)
    # Line 1158
    addiu	$a4,$a4,4
    # Line 1161
    swc1	$f7,-56($a2)
    # Line 1160
    swc1	$f7,-60($a2)
    # Line 1158
    bne	$a1,$a4,.L0d9b1560
    # Line 1159
    swc1	$f7,-64($a2)
    b	.L0d9b13fc
    nop
.L0d9b15c4:
    # Line 1168
    blez	$a1,.L0d9b13fc
    andi	$a2,$a1,0x3
    sra	$t8,$a1,0x2
    beqz	$a2,.L0d9b15f8
    move	$a4,$zero
.L0d9b15d8:
    # Line 1169
    lwc1	$f11,0($a5)
    # Line 1173
    addiu	$a5,$a5,16
    addiu	$a2,$a2,-1
    # Line 1171
    swc1	$f11,-8($a5)
    # Line 1170
    swc1	$f11,-12($a5)
    # Line 1168
    addiu	$a4,$a4,1
    bnez	$a2,.L0d9b15d8
    # Line 1169
    swc1	$f11,-16($a5)
.L0d9b15f8:
    beqz	$t8,.L0d9b13fc
    move	$a2,$a5
.L0d9b1600:
    lwc1	$f15,48($a2)
    # Line 1173
    addiu	$a2,$a2,64
    # Line 1171
    swc1	$f15,-8($a2)
    # Line 1170
    swc1	$f15,-12($a2)
    # Line 1169
    lwc1	$f14,-32($a2)
    swc1	$f15,-16($a2)
    # Line 1171
    swc1	$f14,-24($a2)
    # Line 1170
    swc1	$f14,-28($a2)
    # Line 1169
    lwc1	$f13,-48($a2)
    swc1	$f14,-32($a2)
    # Line 1171
    swc1	$f13,-40($a2)
    # Line 1170
    swc1	$f13,-44($a2)
    # Line 1169
    lwc1	$f12,-64($a2)
    swc1	$f13,-48($a2)
    # Line 1168
    addiu	$a4,$a4,4
    # Line 1171
    swc1	$f12,-56($a2)
    # Line 1170
    swc1	$f12,-60($a2)
    # Line 1168
    bne	$a1,$a4,.L0d9b1600
    # Line 1169
    swc1	$f12,-64($a2)
    b	.L0d9b13fc
    nop
.end __glOdysseyCvtToInternalFmt

# Function: __glOdysseyMap2DFilterToAlphas
# Declared: Line 1192 (Source lines: 1196-1699)
# Address: 0x0d9b1660 - 0x0d9b2fbc (Size: 6492 bytes, Frame: 224)
.globl __glOdysseyMap2DFilterToAlphas
.ent __glOdysseyMap2DFilterToAlphas
__glOdysseyMap2DFilterToAlphas:
    # Line 1196
    addiu	$sp,$sp,-96
    sdc1	$f20,40($sp)
    sd	$s3,48($sp)
    sd	$s4,56($sp)
    sd	$s8,64($sp)
    sd	$s2,0($sp)
    sd	$s6,8($sp)
    sd	$s5,24($sp)
    lui	$a6,0x14
    sd	$s7,16($sp)
    addiu	$a6,$a6,28464
    move	$s7,$a3
    sd	$gp,32($sp)
    addu	$gp,$t9,$a6
    move	$s5,$a2
    move	$s6,$a1
    la	$a5,sub_0daf0000
    move	$s2,$a0
    sd	$s0,72($sp)
    sltiu	$at,$a2,14
    sd	$s1,80($sp)
    sll	$a6,$a2,0x2
    addiu	$a5,$a5,-28496
    sd	$ra,88($sp)
    bnez	$at,.L0d9b17f0
    addu	$a5,$a5,$a6
.L0d9b16c8:
    # Line 1210
    sll	$a7,$s5,0x2
    subu	$a7,$a7,$s5
    sll	$a7,$a7,0x3
    mtc1	$zero,$f20
    subu	$a7,$a7,$s5
    addiu	$s3,$s6,16
    sll	$a7,$a7,0x2
    move	$a6,$s6
    subu	$a7,$a7,$s5
    move	$a5,$zero
    sll	$a7,$a7,0x5
.L0d9b16f4:
    # Line 1211
    lw	$at,20($s2)
    addu	$at,$at,$a7
    lwc1	$f5,0($a6)
    addu	$at,$a5,$at
    swc1	$f5,-2912($at)
    # Line 1212
    lw	$ra,20($s2)
    addu	$ra,$ra,$a7
    lwc1	$f4,16($a6)
    addu	$ra,$a5,$ra
    swc1	$f4,-2908($ra)
    # Line 1213
    lw	$t9,20($s2)
    addu	$t9,$t9,$a7
    lwc1	$f3,48($a6)
    addu	$t9,$a5,$t9
    swc1	$f3,-2904($t9)
    # Line 1214
    lw	$t8,20($s2)
    addu	$t8,$t8,$a7
    lwc1	$f2,64($a6)
    addu	$t8,$a5,$t8
    swc1	$f2,-2900($t8)
    # Line 1215
    lw	$t3,20($s2)
    addu	$t3,$t3,$a7
    lwc1	$f1,32($a6)
    addu	$t3,$a5,$t3
    swc1	$f1,-2896($t3)
    # Line 1216
    lw	$t2,20($s2)
    addu	$t2,$t2,$a7
    addu	$t2,$a5,$t2
    swc1	$f20,-2892($t2)
    # Line 1217
    lw	$t1,20($s2)
    addu	$t1,$t1,$a7
    lwc1	$f0,80($a6)
    addu	$t1,$a5,$t1
    swc1	$f0,-2888($t1)
    # Line 1218
    lw	$t0,20($s2)
    # Line 1210
    addiu	$a6,$a6,4
    # Line 1218
    addu	$t0,$t0,$a7
    addu	$t0,$a5,$t0
    # Line 1210
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b16f4
    # Line 1218
    swc1	$f20,-2884($t0)
    # Line 1222
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    lw	$a0,20($s2)
    move	$a3,$s7
    addiu	$a2,$s5,-1
    move	$a1,$s2
    addu	$a0,$a0,$a7
    bal __glOdysseyProgramConvolutionFilter
    addiu	$a0,$a0,-2912
.L0d9b17b8:
    ld	$s2,0($sp)
.L0d9b17bc:
    ld	$s3,48($sp)
    ld	$s6,8($sp)
    ld	$s7,16($sp)
    ld	$s4,56($sp)
    ld	$s8,64($sp)
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$ra,88($sp)
    ld	$s5,24($sp)
    ldc1	$f20,40($sp)
    # Line 1699
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9b17f0:
    # Line 1196
    lw	$a1,0($a5)
    jr	$a1
    nop
.L0d9b17fc:
    # Line 1227
    blez	$a2,.L0d9b17b8
    move	$s0,$zero
    li	$s4,1
    mtc1	$zero,$f20
    move	$s1,$zero
    b	.L0d9b1940
    addiu	$s3,$s6,16
.L0d9b1818:
    # Line 1483
    blez	$a2,.L0d9b17b8
    move	$s0,$zero
    mtc1	$zero,$f20
    move	$s1,$zero
    addiu	$s3,$s6,16
    b	.L0d9b1aec
    li	$s4,1
.L0d9b1834:
    # Line 1350
    blez	$a2,.L0d9b17b8
    move	$s0,$zero
    mtc1	$zero,$f20
    move	$s1,$zero
    addiu	$s3,$s6,16
    b	.L0d9b25b0
    li	$s4,1
.L0d9b1850:
    # Line 1267
    blez	$a2,.L0d9b17b8
    move	$s0,$zero
    li	$s8,2
    li	$s4,1
    mtc1	$zero,$f20
    move	$s1,$zero
    b	.L0d9b2c58
    addiu	$s3,$s6,16
.L0d9b1870:
    # Line 1259
    move	$a6,$s6
.L0d9b1874:
    # Line 1231
    lw	$t3,20($s2)
    addu	$t3,$t3,$s0
    lwc1	$f11,0($a6)
    addu	$t3,$a5,$t3
    swc1	$f11,0($t3)
    # Line 1232
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f10,16($a6)
    addu	$t2,$a5,$t2
    swc1	$f10,4($t2)
    # Line 1233
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f9,48($a6)
    addu	$t1,$a5,$t1
    swc1	$f9,8($t1)
    # Line 1234
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f8,64($a6)
    addu	$t0,$a5,$t0
    swc1	$f8,12($t0)
    # Line 1235
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f7,32($a6)
    addu	$a7,$a5,$a7
    swc1	$f7,16($a7)
    # Line 1236
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    addu	$a4,$a5,$a4
    swc1	$f20,20($a4)
    # Line 1237
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f6,80($a6)
    addu	$a3,$a5,$a3
    swc1	$f6,24($a3)
    # Line 1238
    lw	$a2,20($s2)
    # Line 1230
    addiu	$a6,$a6,4
    # Line 1238
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    # Line 1230
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1874
    # Line 1238
    swc1	$f20,28($a2)
    # Line 1241
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b1934:
    # Line 1227
    addiu	$s1,$s1,1
.L0d9b1938:
    beq	$s5,$s1,.L0d9b2f9c
    addiu	$s0,$s0,2912
.L0d9b1940:
    # Line 1228
    beqz	$s1,.L0d9b1870
    # Line 1259
    move	$a5,$zero
    # Line 1228
    bne	$s1,$s4,.L0d9b1934
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1954:
    # Line 1247
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f14,96($a6)
    addu	$t2,$a5,$t2
    swc1	$f14,0($t2)
    # Line 1248
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f13,112($a6)
    addu	$t1,$a5,$t1
    swc1	$f13,4($t1)
    # Line 1249
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,8($t0)
    # Line 1250
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1251
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f12,128($a6)
    addu	$a4,$a5,$a4
    swc1	$f12,16($a4)
    # Line 1252
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1253
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    swc1	$f20,24($a2)
    # Line 1254
    lw	$a1,20($s2)
    # Line 1246
    addiu	$a6,$a6,4
    # Line 1254
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1246
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1954
    # Line 1254
    swc1	$f20,28($a1)
    # Line 1257
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1938
    # Line 1227
    addiu	$s1,$s1,1
.L0d9b1a10:
    # Line 1486
    move	$a6,$s6
.L0d9b1a14:
    # Line 1487
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f25,0($a6)
    addu	$t2,$a5,$t2
    swc1	$f25,0($t2)
    # Line 1488
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f23,16($a6)
    addu	$t1,$a5,$t1
    swc1	$f23,4($t1)
    # Line 1489
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f21,144($a6)
    addu	$t0,$a5,$t0
    swc1	$f21,8($t0)
    # Line 1490
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f19,160($a6)
    addu	$a7,$a5,$a7
    swc1	$f19,12($a7)
    # Line 1491
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f18,32($a6)
    addu	$a4,$a5,$a4
    swc1	$f18,16($a4)
    # Line 1492
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f17,48($a6)
    addu	$a3,$a5,$a3
    swc1	$f17,20($a3)
    # Line 1493
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f16,176($a6)
    addu	$a2,$a5,$a2
    swc1	$f16,24($a2)
    # Line 1494
    lw	$a1,20($s2)
    # Line 1486
    addiu	$a6,$a6,4
    # Line 1494
    addu	$a1,$a1,$s0
    lwc1	$f15,188($a6)
    addu	$a1,$a5,$a1
    # Line 1486
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1a14
    # Line 1494
    swc1	$f15,28($a1)
    # Line 1497
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b1adc:
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1ae0:
    addiu	$s0,$s0,2912
    beq	$s5,$s1,.L0d9b2fa4
    addiu	$s4,$s4,1
.L0d9b1aec:
    la	$a0,sub_0daf0000
    sltiu	$a2,$s4,14
    sll	$a1,$s4,0x2
    addiu	$a0,$a0,-28440
    beqz	$a2,.L0d9b1adc
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    # Line 1486
    move	$a5,$zero
.L0d9b1b10:
    # Line 1678
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1b18:
    # Line 1679
    lw	$t3,20($s2)
    addu	$t3,$t3,$s0
    lwc1	$f27,1280($a6)
    addu	$t3,$a5,$t3
    swc1	$f27,0($t3)
    # Line 1680
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    addu	$t2,$a5,$t2
    swc1	$f20,4($t2)
    # Line 1681
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    addu	$t1,$a5,$t1
    swc1	$f20,8($t1)
    # Line 1682
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,12($t0)
    # Line 1683
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,16($a7)
    # Line 1684
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    addu	$a4,$a5,$a4
    swc1	$f20,20($a4)
    # Line 1685
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,24($a3)
    # Line 1686
    lw	$a2,20($s2)
    # Line 1678
    addiu	$a6,$a6,4
    # Line 1686
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    # Line 1678
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1b18
    # Line 1686
    swc1	$f20,28($a2)
    # Line 1689
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1bcc:
    # Line 1662
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1bd4:
    # Line 1663
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f1,1216($a6)
    addu	$t2,$a5,$t2
    swc1	$f1,0($t2)
    # Line 1664
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f0,1232($a6)
    addu	$t1,$a5,$t1
    swc1	$f0,4($t1)
    # Line 1665
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,8($t0)
    # Line 1666
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1667
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f31,1248($a6)
    addu	$a4,$a5,$a4
    swc1	$f31,16($a4)
    # Line 1668
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f29,1264($a6)
    addu	$a3,$a5,$a3
    swc1	$f29,20($a3)
    # Line 1669
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    swc1	$f20,24($a2)
    # Line 1670
    lw	$a1,20($s2)
    # Line 1662
    addiu	$a6,$a6,4
    # Line 1670
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1662
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1bd4
    # Line 1670
    swc1	$f20,28($a1)
    # Line 1673
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1c94:
    # Line 1646
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1c9c:
    # Line 1647
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f5,1152($a6)
    addu	$t2,$a5,$t2
    swc1	$f5,0($t2)
    # Line 1648
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f4,1168($a6)
    addu	$t1,$a5,$t1
    swc1	$f4,4($t1)
    # Line 1649
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,8($t0)
    # Line 1650
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1651
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f3,1184($a6)
    addu	$a4,$a5,$a4
    swc1	$f3,16($a4)
    # Line 1652
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f2,1200($a6)
    addu	$a3,$a5,$a3
    swc1	$f2,20($a3)
    # Line 1653
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    swc1	$f20,24($a2)
    # Line 1654
    lw	$a1,20($s2)
    # Line 1646
    addiu	$a6,$a6,4
    # Line 1654
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1646
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1c9c
    # Line 1654
    swc1	$f20,28($a1)
    # Line 1657
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1d5c:
    # Line 1630
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1d64:
    # Line 1631
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f9,704($a6)
    addu	$t2,$a5,$t2
    swc1	$f9,0($t2)
    # Line 1632
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    addu	$t1,$a5,$t1
    swc1	$f20,4($t1)
    # Line 1633
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f8,848($a6)
    addu	$t0,$a5,$t0
    swc1	$f8,8($t0)
    # Line 1634
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1635
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f7,992($a6)
    addu	$a4,$a5,$a4
    swc1	$f7,16($a4)
    # Line 1636
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1637
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f6,1136($a6)
    addu	$a2,$a5,$a2
    swc1	$f6,24($a2)
    # Line 1638
    lw	$a1,20($s2)
    # Line 1630
    addiu	$a6,$a6,4
    # Line 1638
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1630
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1d64
    # Line 1638
    swc1	$f20,28($a1)
    # Line 1641
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1e24:
    # Line 1614
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1e2c:
    # Line 1615
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f17,928($a6)
    addu	$t2,$a5,$t2
    swc1	$f17,0($t2)
    # Line 1616
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f16,944($a6)
    addu	$t1,$a5,$t1
    swc1	$f16,4($t1)
    # Line 1617
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f15,1072($a6)
    addu	$t0,$a5,$t0
    swc1	$f15,8($t0)
    # Line 1618
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f14,1088($a6)
    addu	$a7,$a5,$a7
    swc1	$f14,12($a7)
    # Line 1619
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f13,960($a6)
    addu	$a4,$a5,$a4
    swc1	$f13,16($a4)
    # Line 1620
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f12,976($a6)
    addu	$a3,$a5,$a3
    swc1	$f12,20($a3)
    # Line 1621
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f11,1104($a6)
    addu	$a2,$a5,$a2
    swc1	$f11,24($a2)
    # Line 1622
    lw	$a1,20($s2)
    # Line 1614
    addiu	$a6,$a6,4
    # Line 1622
    addu	$a1,$a1,$s0
    lwc1	$f10,1116($a6)
    addu	$a1,$a5,$a1
    # Line 1614
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1e2c
    # Line 1622
    swc1	$f10,28($a1)
    # Line 1625
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1efc:
    # Line 1598
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1f04:
    # Line 1599
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f31,864($a6)
    addu	$t2,$a5,$t2
    swc1	$f31,0($t2)
    # Line 1600
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f29,880($a6)
    addu	$t1,$a5,$t1
    swc1	$f29,4($t1)
    # Line 1601
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f27,1008($a6)
    addu	$t0,$a5,$t0
    swc1	$f27,8($t0)
    # Line 1602
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f25,1024($a6)
    addu	$a7,$a5,$a7
    swc1	$f25,12($a7)
    # Line 1603
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f23,896($a6)
    addu	$a4,$a5,$a4
    swc1	$f23,16($a4)
    # Line 1604
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f21,912($a6)
    addu	$a3,$a5,$a3
    swc1	$f21,20($a3)
    # Line 1605
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f19,1040($a6)
    addu	$a2,$a5,$a2
    swc1	$f19,24($a2)
    # Line 1606
    lw	$a1,20($s2)
    # Line 1598
    addiu	$a6,$a6,4
    # Line 1606
    addu	$a1,$a1,$s0
    lwc1	$f18,1052($a6)
    addu	$a1,$a5,$a1
    # Line 1598
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1f04
    # Line 1606
    swc1	$f18,28($a1)
    # Line 1609
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b1fd4:
    # Line 1582
    move	$a5,$zero
    move	$a6,$s6
.L0d9b1fdc:
    # Line 1583
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f7,640($a6)
    addu	$t2,$a5,$t2
    swc1	$f7,0($t2)
    # Line 1584
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f6,656($a6)
    addu	$t1,$a5,$t1
    swc1	$f6,4($t1)
    # Line 1585
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f5,784($a6)
    addu	$t0,$a5,$t0
    swc1	$f5,8($t0)
    # Line 1586
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f4,800($a6)
    addu	$a7,$a5,$a7
    swc1	$f4,12($a7)
    # Line 1587
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f3,672($a6)
    addu	$a4,$a5,$a4
    swc1	$f3,16($a4)
    # Line 1588
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f2,688($a6)
    addu	$a3,$a5,$a3
    swc1	$f2,20($a3)
    # Line 1589
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f1,816($a6)
    addu	$a2,$a5,$a2
    swc1	$f1,24($a2)
    # Line 1590
    lw	$a1,20($s2)
    # Line 1582
    addiu	$a6,$a6,4
    # Line 1590
    addu	$a1,$a1,$s0
    lwc1	$f0,828($a6)
    addu	$a1,$a5,$a1
    # Line 1582
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b1fdc
    # Line 1590
    swc1	$f0,28($a1)
    # Line 1593
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b20ac:
    # Line 1566
    move	$a5,$zero
    move	$a6,$s6
.L0d9b20b4:
    # Line 1567
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f15,576($a6)
    addu	$t2,$a5,$t2
    swc1	$f15,0($t2)
    # Line 1568
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f14,592($a6)
    addu	$t1,$a5,$t1
    swc1	$f14,4($t1)
    # Line 1569
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f13,720($a6)
    addu	$t0,$a5,$t0
    swc1	$f13,8($t0)
    # Line 1570
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f12,736($a6)
    addu	$a7,$a5,$a7
    swc1	$f12,12($a7)
    # Line 1571
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f11,608($a6)
    addu	$a4,$a5,$a4
    swc1	$f11,16($a4)
    # Line 1572
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f10,624($a6)
    addu	$a3,$a5,$a3
    swc1	$f10,20($a3)
    # Line 1573
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f9,752($a6)
    addu	$a2,$a5,$a2
    swc1	$f9,24($a2)
    # Line 1574
    lw	$a1,20($s2)
    # Line 1566
    addiu	$a6,$a6,4
    # Line 1574
    addu	$a1,$a1,$s0
    lwc1	$f8,764($a6)
    addu	$a1,$a5,$a1
    # Line 1566
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b20b4
    # Line 1574
    swc1	$f8,28($a1)
    # Line 1577
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b2184:
    # Line 1550
    move	$a5,$zero
    move	$a6,$s6
.L0d9b218c:
    # Line 1551
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f19,128($a6)
    addu	$t2,$a5,$t2
    swc1	$f19,0($t2)
    # Line 1552
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    addu	$t1,$a5,$t1
    swc1	$f20,4($t1)
    # Line 1553
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f18,272($a6)
    addu	$t0,$a5,$t0
    swc1	$f18,8($t0)
    # Line 1554
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1555
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f17,416($a6)
    addu	$a4,$a5,$a4
    swc1	$f17,16($a4)
    # Line 1556
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1557
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f16,560($a6)
    addu	$a2,$a5,$a2
    swc1	$f16,24($a2)
    # Line 1558
    lw	$a1,20($s2)
    # Line 1550
    addiu	$a6,$a6,4
    # Line 1558
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1550
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b218c
    # Line 1558
    swc1	$f20,28($a1)
    # Line 1561
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b224c:
    # Line 1534
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2254:
    # Line 1535
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f1,352($a6)
    addu	$t2,$a5,$t2
    swc1	$f1,0($t2)
    # Line 1536
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f0,368($a6)
    addu	$t1,$a5,$t1
    swc1	$f0,4($t1)
    # Line 1537
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f31,496($a6)
    addu	$t0,$a5,$t0
    swc1	$f31,8($t0)
    # Line 1538
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f29,512($a6)
    addu	$a7,$a5,$a7
    swc1	$f29,12($a7)
    # Line 1539
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f27,384($a6)
    addu	$a4,$a5,$a4
    swc1	$f27,16($a4)
    # Line 1540
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f25,400($a6)
    addu	$a3,$a5,$a3
    swc1	$f25,20($a3)
    # Line 1541
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f23,528($a6)
    addu	$a2,$a5,$a2
    swc1	$f23,24($a2)
    # Line 1542
    lw	$a1,20($s2)
    # Line 1534
    addiu	$a6,$a6,4
    # Line 1542
    addu	$a1,$a1,$s0
    lwc1	$f21,540($a6)
    addu	$a1,$a5,$a1
    # Line 1534
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2254
    # Line 1542
    swc1	$f21,28($a1)
    # Line 1545
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b2324:
    # Line 1518
    move	$a5,$zero
    move	$a6,$s6
.L0d9b232c:
    # Line 1519
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f9,288($a6)
    addu	$t2,$a5,$t2
    swc1	$f9,0($t2)
    # Line 1520
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f8,304($a6)
    addu	$t1,$a5,$t1
    swc1	$f8,4($t1)
    # Line 1521
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f7,432($a6)
    addu	$t0,$a5,$t0
    swc1	$f7,8($t0)
    # Line 1522
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f6,448($a6)
    addu	$a7,$a5,$a7
    swc1	$f6,12($a7)
    # Line 1523
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f5,320($a6)
    addu	$a4,$a5,$a4
    swc1	$f5,16($a4)
    # Line 1524
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f4,336($a6)
    addu	$a3,$a5,$a3
    swc1	$f4,20($a3)
    # Line 1525
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f3,464($a6)
    addu	$a2,$a5,$a2
    swc1	$f3,24($a2)
    # Line 1526
    lw	$a1,20($s2)
    # Line 1518
    addiu	$a6,$a6,4
    # Line 1526
    addu	$a1,$a1,$s0
    lwc1	$f2,476($a6)
    addu	$a1,$a5,$a1
    # Line 1518
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b232c
    # Line 1526
    swc1	$f2,28($a1)
    # Line 1529
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b23fc:
    # Line 1502
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2404:
    # Line 1503
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f17,64($a6)
    addu	$t2,$a5,$t2
    swc1	$f17,0($t2)
    # Line 1504
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f16,80($a6)
    addu	$t1,$a5,$t1
    swc1	$f16,4($t1)
    # Line 1505
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f15,208($a6)
    addu	$t0,$a5,$t0
    swc1	$f15,8($t0)
    # Line 1506
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f14,224($a6)
    addu	$a7,$a5,$a7
    swc1	$f14,12($a7)
    # Line 1507
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f13,96($a6)
    addu	$a4,$a5,$a4
    swc1	$f13,16($a4)
    # Line 1508
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f12,112($a6)
    addu	$a3,$a5,$a3
    swc1	$f12,20($a3)
    # Line 1509
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f11,240($a6)
    addu	$a2,$a5,$a2
    swc1	$f11,24($a2)
    # Line 1510
    lw	$a1,20($s2)
    # Line 1502
    addiu	$a6,$a6,4
    # Line 1510
    addu	$a1,$a1,$s0
    lwc1	$f10,252($a6)
    addu	$a1,$a5,$a1
    # Line 1502
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2404
    # Line 1510
    swc1	$f10,28($a1)
    # Line 1513
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b1ae0
    # Line 1483
    addiu	$s1,$s1,1
.L0d9b24d4:
    # Line 1353
    move	$a6,$s6
.L0d9b24d8:
    # Line 1354
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f31,0($a6)
    addu	$t2,$a5,$t2
    swc1	$f31,0($t2)
    # Line 1355
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f29,16($a6)
    addu	$t1,$a5,$t1
    swc1	$f29,4($t1)
    # Line 1356
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f27,112($a6)
    addu	$t0,$a5,$t0
    swc1	$f27,8($t0)
    # Line 1357
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f25,128($a6)
    addu	$a7,$a5,$a7
    swc1	$f25,12($a7)
    # Line 1358
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f23,32($a6)
    addu	$a4,$a5,$a4
    swc1	$f23,16($a4)
    # Line 1359
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f21,48($a6)
    addu	$a3,$a5,$a3
    swc1	$f21,20($a3)
    # Line 1360
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f19,144($a6)
    addu	$a2,$a5,$a2
    swc1	$f19,24($a2)
    # Line 1361
    lw	$a1,20($s2)
    # Line 1353
    addiu	$a6,$a6,4
    # Line 1361
    addu	$a1,$a1,$s0
    lwc1	$f18,156($a6)
    addu	$a1,$a5,$a1
    # Line 1353
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b24d8
    # Line 1361
    swc1	$f18,28($a1)
    # Line 1364
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b25a0:
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b25a4:
    addiu	$s0,$s0,2912
    beq	$s5,$s1,.L0d9b2fac
    addiu	$s4,$s4,1
.L0d9b25b0:
    la	$a0,sub_0daf0000
    sltiu	$a2,$s4,9
    sll	$a1,$s4,0x2
    addiu	$a0,$a0,-28384
    beqz	$a2,.L0d9b25a0
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    # Line 1353
    move	$a5,$zero
.L0d9b25d4:
    # Line 1461
    move	$a5,$zero
    move	$a6,$s6
.L0d9b25dc:
    # Line 1462
    lw	$t3,20($s2)
    addu	$t3,$t3,$s0
    lwc1	$f2,736($a6)
    addu	$t3,$a5,$t3
    swc1	$f2,0($t3)
    # Line 1463
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f1,752($a6)
    addu	$t2,$a5,$t2
    swc1	$f1,4($t2)
    # Line 1464
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    addu	$t1,$a5,$t1
    swc1	$f20,8($t1)
    # Line 1465
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,12($t0)
    # Line 1466
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f0,768($a6)
    addu	$a7,$a5,$a7
    swc1	$f0,16($a7)
    # Line 1467
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    addu	$a4,$a5,$a4
    swc1	$f20,20($a4)
    # Line 1468
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,24($a3)
    # Line 1469
    lw	$a2,20($s2)
    # Line 1461
    addiu	$a6,$a6,4
    # Line 1469
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    # Line 1461
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b25dc
    # Line 1469
    swc1	$f20,28($a2)
    # Line 1472
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b2698:
    # Line 1445
    move	$a5,$zero
    move	$a6,$s6
.L0d9b26a0:
    # Line 1446
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f6,672($a6)
    addu	$t2,$a5,$t2
    swc1	$f6,0($t2)
    # Line 1447
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f5,688($a6)
    addu	$t1,$a5,$t1
    swc1	$f5,4($t1)
    # Line 1448
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,8($t0)
    # Line 1449
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1450
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f4,704($a6)
    addu	$a4,$a5,$a4
    swc1	$f4,16($a4)
    # Line 1451
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f3,720($a6)
    addu	$a3,$a5,$a3
    swc1	$f3,20($a3)
    # Line 1452
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    swc1	$f20,24($a2)
    # Line 1453
    lw	$a1,20($s2)
    # Line 1445
    addiu	$a6,$a6,4
    # Line 1453
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1445
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b26a0
    # Line 1453
    swc1	$f20,28($a1)
    # Line 1457
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b2760:
    # Line 1430
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2768:
    # Line 1431
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f12,512($a6)
    addu	$t2,$a5,$t2
    swc1	$f12,0($t2)
    # Line 1432
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f11,528($a6)
    addu	$t1,$a5,$t1
    swc1	$f11,4($t1)
    # Line 1433
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f10,624($a6)
    addu	$t0,$a5,$t0
    swc1	$f10,8($t0)
    # Line 1434
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f9,640($a6)
    addu	$a7,$a5,$a7
    swc1	$f9,12($a7)
    # Line 1435
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f8,544($a6)
    addu	$a4,$a5,$a4
    swc1	$f8,16($a4)
    # Line 1436
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1437
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f7,656($a6)
    addu	$a2,$a5,$a2
    swc1	$f7,24($a2)
    # Line 1438
    lw	$a1,20($s2)
    # Line 1430
    addiu	$a6,$a6,4
    # Line 1438
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1430
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2768
    # Line 1438
    swc1	$f20,28($a1)
    # Line 1441
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b2830:
    # Line 1415
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2838:
    # Line 1416
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f21,448($a6)
    addu	$t2,$a5,$t2
    swc1	$f21,0($t2)
    # Line 1417
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f19,464($a6)
    addu	$t1,$a5,$t1
    swc1	$f19,4($t1)
    # Line 1418
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f18,560($a6)
    addu	$t0,$a5,$t0
    swc1	$f18,8($t0)
    # Line 1419
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f17,576($a6)
    addu	$a7,$a5,$a7
    swc1	$f17,12($a7)
    # Line 1420
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f16,480($a6)
    addu	$a4,$a5,$a4
    swc1	$f16,16($a4)
    # Line 1421
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f15,496($a6)
    addu	$a3,$a5,$a3
    swc1	$f15,20($a3)
    # Line 1422
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f14,592($a6)
    addu	$a2,$a5,$a2
    swc1	$f14,24($a2)
    # Line 1423
    lw	$a1,20($s2)
    # Line 1415
    addiu	$a6,$a6,4
    # Line 1423
    addu	$a1,$a1,$s0
    lwc1	$f13,604($a6)
    addu	$a1,$a5,$a1
    # Line 1415
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2838
    # Line 1423
    swc1	$f13,28($a1)
    # Line 1426
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b2908:
    # Line 1399
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2910:
    # Line 1400
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f0,288($a6)
    addu	$t2,$a5,$t2
    swc1	$f0,0($t2)
    # Line 1401
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f31,304($a6)
    addu	$t1,$a5,$t1
    swc1	$f31,4($t1)
    # Line 1402
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f29,400($a6)
    addu	$t0,$a5,$t0
    swc1	$f29,8($t0)
    # Line 1403
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f27,416($a6)
    addu	$a7,$a5,$a7
    swc1	$f27,12($a7)
    # Line 1404
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f25,320($a6)
    addu	$a4,$a5,$a4
    swc1	$f25,16($a4)
    # Line 1405
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1406
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f23,432($a6)
    addu	$a2,$a5,$a2
    swc1	$f23,24($a2)
    # Line 1407
    lw	$a1,20($s2)
    # Line 1399
    addiu	$a6,$a6,4
    # Line 1407
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1399
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2910
    # Line 1407
    swc1	$f20,28($a1)
    # Line 1411
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b29d8:
    # Line 1383
    move	$a5,$zero
    move	$a6,$s6
.L0d9b29e0:
    # Line 1384
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f8,224($a6)
    addu	$t2,$a5,$t2
    swc1	$f8,0($t2)
    # Line 1385
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f7,240($a6)
    addu	$t1,$a5,$t1
    swc1	$f7,4($t1)
    # Line 1386
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f6,336($a6)
    addu	$t0,$a5,$t0
    swc1	$f6,8($t0)
    # Line 1387
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f5,352($a6)
    addu	$a7,$a5,$a7
    swc1	$f5,12($a7)
    # Line 1388
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f4,256($a6)
    addu	$a4,$a5,$a4
    swc1	$f4,16($a4)
    # Line 1389
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f3,272($a6)
    addu	$a3,$a5,$a3
    swc1	$f3,20($a3)
    # Line 1390
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f2,368($a6)
    addu	$a2,$a5,$a2
    swc1	$f2,24($a2)
    # Line 1391
    lw	$a1,20($s2)
    # Line 1383
    addiu	$a6,$a6,4
    # Line 1391
    addu	$a1,$a1,$s0
    lwc1	$f1,380($a6)
    addu	$a1,$a5,$a1
    # Line 1383
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b29e0
    # Line 1391
    swc1	$f1,28($a1)
    # Line 1395
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b2ab0:
    # Line 1368
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2ab8:
    # Line 1369
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f14,64($a6)
    addu	$t2,$a5,$t2
    swc1	$f14,0($t2)
    # Line 1370
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f13,80($a6)
    addu	$t1,$a5,$t1
    swc1	$f13,4($t1)
    # Line 1371
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f12,176($a6)
    addu	$t0,$a5,$t0
    swc1	$f12,8($t0)
    # Line 1372
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f11,192($a6)
    addu	$a7,$a5,$a7
    swc1	$f11,12($a7)
    # Line 1373
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f10,96($a6)
    addu	$a4,$a5,$a4
    swc1	$f10,16($a4)
    # Line 1374
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1375
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f9,208($a6)
    addu	$a2,$a5,$a2
    swc1	$f9,24($a2)
    # Line 1376
    lw	$a1,20($s2)
    # Line 1368
    addiu	$a6,$a6,4
    # Line 1376
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1368
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2ab8
    # Line 1376
    swc1	$f20,28($a1)
    # Line 1379
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b25a4
    # Line 1350
    addiu	$s1,$s1,1
.L0d9b2b80:
    # Line 1298
    move	$a6,$s6
.L0d9b2b84:
    # Line 1271
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f25,0($a6)
    addu	$t2,$a5,$t2
    swc1	$f25,0($t2)
    # Line 1272
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f23,16($a6)
    addu	$t1,$a5,$t1
    swc1	$f23,4($t1)
    # Line 1273
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f21,80($a6)
    addu	$t0,$a5,$t0
    swc1	$f21,8($t0)
    # Line 1274
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f19,96($a6)
    addu	$a7,$a5,$a7
    swc1	$f19,12($a7)
    # Line 1275
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f18,32($a6)
    addu	$a4,$a5,$a4
    swc1	$f18,16($a4)
    # Line 1276
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f17,48($a6)
    addu	$a3,$a5,$a3
    swc1	$f17,20($a3)
    # Line 1277
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f16,112($a6)
    addu	$a2,$a5,$a2
    swc1	$f16,24($a2)
    # Line 1278
    lw	$a1,20($s2)
    # Line 1270
    addiu	$a6,$a6,4
    # Line 1278
    addu	$a1,$a1,$s0
    lwc1	$f15,124($a6)
    addu	$a1,$a5,$a1
    # Line 1270
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2b84
    # Line 1278
    swc1	$f15,28($a1)
    # Line 1281
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b2c4c:
    # Line 1267
    addiu	$s1,$s1,1
.L0d9b2c50:
    beq	$s5,$s1,.L0d9b2fb4
    addiu	$s0,$s0,2912
.L0d9b2c58:
    # Line 1268
    beqz	$s1,.L0d9b2b80
    # Line 1298
    move	$a5,$zero
    # Line 1268
    beq	$s1,$s4,.L0d9b2d38
    # Line 1313
    move	$a5,$zero
    # Line 1268
    beq	$s1,$s8,.L0d9b2e0c
    li	$a1,3
    beq	$s1,$a1,.L0d9b2ed4
    li	$a2,4
    bne	$s1,$a2,.L0d9b2c4c
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2c84:
    # Line 1331
    lw	$t8,20($s2)
    addu	$t8,$t8,$s0
    lwc1	$f27,384($a6)
    addu	$t8,$a5,$t8
    swc1	$f27,0($t8)
    # Line 1332
    lw	$t3,20($s2)
    addu	$t3,$t3,$s0
    addu	$t3,$a5,$t3
    swc1	$f20,4($t3)
    # Line 1333
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    addu	$t2,$a5,$t2
    swc1	$f20,8($t2)
    # Line 1334
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    addu	$t1,$a5,$t1
    swc1	$f20,12($t1)
    # Line 1335
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,16($t0)
    # Line 1336
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,20($a7)
    # Line 1337
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    addu	$a4,$a5,$a4
    swc1	$f20,24($a4)
    # Line 1338
    lw	$a3,20($s2)
    # Line 1330
    addiu	$a6,$a6,4
    # Line 1338
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    # Line 1330
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2c84
    # Line 1338
    swc1	$f20,28($a3)
    # Line 1341
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b2c50
    # Line 1267
    addiu	$s1,$s1,1
.L0d9b2d38:
    # Line 1313
    move	$a6,$s6
.L0d9b2d3c:
    # Line 1286
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f5,160($a6)
    addu	$t2,$a5,$t2
    swc1	$f5,0($t2)
    # Line 1287
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f4,176($a6)
    addu	$t1,$a5,$t1
    swc1	$f4,4($t1)
    # Line 1288
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f3,240($a6)
    addu	$t0,$a5,$t0
    swc1	$f3,8($t0)
    # Line 1289
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    lwc1	$f2,256($a6)
    addu	$a7,$a5,$a7
    swc1	$f2,12($a7)
    # Line 1290
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f1,192($a6)
    addu	$a4,$a5,$a4
    swc1	$f1,16($a4)
    # Line 1291
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f0,208($a6)
    addu	$a3,$a5,$a3
    swc1	$f0,20($a3)
    # Line 1292
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f31,272($a6)
    addu	$a2,$a5,$a2
    swc1	$f31,24($a2)
    # Line 1293
    lw	$a1,20($s2)
    # Line 1285
    addiu	$a6,$a6,4
    # Line 1293
    addu	$a1,$a1,$s0
    lwc1	$f29,284($a6)
    addu	$a1,$a5,$a1
    # Line 1285
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2d3c
    # Line 1293
    swc1	$f29,28($a1)
    # Line 1296
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b2c50
    # Line 1267
    addiu	$s1,$s1,1
.L0d9b2e0c:
    # Line 1328
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2e14:
    # Line 1301
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f9,64($a6)
    addu	$t2,$a5,$t2
    swc1	$f9,0($t2)
    # Line 1302
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    addu	$t1,$a5,$t1
    swc1	$f20,4($t1)
    # Line 1303
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    lwc1	$f8,144($a6)
    addu	$t0,$a5,$t0
    swc1	$f8,8($t0)
    # Line 1304
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1305
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f7,224($a6)
    addu	$a4,$a5,$a4
    swc1	$f7,16($a4)
    # Line 1306
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a5,$a3
    swc1	$f20,20($a3)
    # Line 1307
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    lwc1	$f6,304($a6)
    addu	$a2,$a5,$a2
    swc1	$f6,24($a2)
    # Line 1308
    lw	$a1,20($s2)
    # Line 1300
    addiu	$a6,$a6,4
    # Line 1308
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1300
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2e14
    # Line 1308
    swc1	$f20,28($a1)
    # Line 1311
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b2c50
    # Line 1267
    addiu	$s1,$s1,1
.L0d9b2ed4:
    # Line 1343
    move	$a5,$zero
    move	$a6,$s6
.L0d9b2edc:
    # Line 1316
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f13,320($a6)
    addu	$t2,$a5,$t2
    swc1	$f13,0($t2)
    # Line 1317
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f12,336($a6)
    addu	$t1,$a5,$t1
    swc1	$f12,4($t1)
    # Line 1318
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a5,$t0
    swc1	$f20,8($t0)
    # Line 1319
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a5,$a7
    swc1	$f20,12($a7)
    # Line 1320
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f11,352($a6)
    addu	$a4,$a5,$a4
    swc1	$f11,16($a4)
    # Line 1321
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f10,368($a6)
    addu	$a3,$a5,$a3
    swc1	$f10,20($a3)
    # Line 1322
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a5,$a2
    swc1	$f20,24($a2)
    # Line 1323
    lw	$a1,20($s2)
    # Line 1315
    addiu	$a6,$a6,4
    # Line 1323
    addu	$a1,$a1,$s0
    addu	$a1,$a5,$a1
    # Line 1315
    addiu	$a5,$a5,148
    bne	$a6,$s3,.L0d9b2edc
    # Line 1323
    swc1	$f20,28($a1)
    # Line 1326
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s7
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b2c50
    # Line 1267
    addiu	$s1,$s1,1
.L0d9b2f9c:
    b	.L0d9b17bc
    ld	$s2,0($sp)
.L0d9b2fa4:
    b	.L0d9b17bc
    ld	$s2,0($sp)
.L0d9b2fac:
    b	.L0d9b17bc
    ld	$s2,0($sp)
.L0d9b2fb4:
    b	.L0d9b17bc
    ld	$s2,0($sp)
.end __glOdysseyMap2DFilterToAlphas

# Function: __glOdysseyMap1DFilterToAlphas
# Declared: Line 1702 (Source lines: 1706-1875)
# Address: 0x0d9b2fc0 - 0x0d9b3888 (Size: 2248 bytes, Frame: 224)
.globl __glOdysseyMap1DFilterToAlphas
.ent __glOdysseyMap1DFilterToAlphas
__glOdysseyMap1DFilterToAlphas:
    # Line 1706
    addiu	$sp,$sp,-96
    sdc1	$f20,48($sp)
    sd	$s3,56($sp)
    sd	$ra,64($sp)
    sd	$s0,72($sp)
    sd	$s1,80($sp)
    sd	$s2,0($sp)
    sd	$s5,24($sp)
    sd	$s6,8($sp)
    move	$s6,$a3
    sd	$s4,16($sp)
    move	$s4,$a2
    move	$s5,$a1
    lw	$at,4120($zero)
    lui	$v0,0x14
    sd	$s7,32($sp)
    li	$s7,1
    move	$s2,$a0
    sd	$s8,88($sp)
    addiu	$v0,$v0,21968
    sd	$gp,40($sp)
    beq	$at,$s7,.L0d9b3874
    addu	$gp,$t9,$v0
    # Line 1720
    lw	$a0,4112($zero)
    # Line 1723
    li	$s8,2
    # Line 1720
    lw	$a0,764($a0)
    # Line 1723
    beq	$a2,$s8,.L0d9b325c
    # Line 1720
    lw	$a0,64($a0)
    # Line 1723
    li	$a1,3
    beq	$a2,$a1,.L0d9b3504
    nop
    # Line 1726
    beq	$a0,$s7,.L0d9b314c
    # Line 1755
    sll	$a7,$a2,0x2
    # Line 1726
    beq	$a0,$s8,.L0d9b3420
    # Line 1769
    sll	$a7,$a2,0x2
    # Line 1726
    beq	$a0,$a1,.L0d9b378c
    # Line 1783
    sll	$a7,$a2,0x2
    # Line 1726
    li	$a1,4
    bne	$a0,$a1,.L0d9b3224
    sll	$a7,$a2,0x2
    subu	$a7,$a7,$a2
    sll	$a7,$a7,0x3
    mtc1	$zero,$f20
    subu	$a7,$a7,$a2
    move	$a6,$zero
    sll	$a7,$a7,0x2
    addiu	$s3,$s5,16
    subu	$a7,$a7,$a2
    move	$a5,$s5
    sll	$a7,$a7,0x5
.L0d9b3088:
    # Line 1772
    lw	$at,20($s2)
    addu	$at,$at,$a7
    lwc1	$f3,0($a5)
    addu	$at,$a6,$at
    swc1	$f3,-2912($at)
    # Line 1773
    lw	$ra,20($s2)
    addu	$ra,$ra,$a7
    lwc1	$f2,16($a5)
    addu	$ra,$a6,$ra
    swc1	$f2,-2908($ra)
    # Line 1774
    lw	$t9,20($s2)
    addu	$t9,$t9,$a7
    addu	$t9,$a6,$t9
    swc1	$f20,-2904($t9)
    # Line 1775
    lw	$t8,20($s2)
    addu	$t8,$t8,$a7
    addu	$t8,$a6,$t8
    swc1	$f20,-2900($t8)
    # Line 1776
    lw	$t3,20($s2)
    addu	$t3,$t3,$a7
    lwc1	$f1,32($a5)
    addu	$t3,$a6,$t3
    swc1	$f1,-2896($t3)
    # Line 1777
    lw	$t2,20($s2)
    addu	$t2,$t2,$a7
    lwc1	$f0,48($a5)
    addu	$t2,$a6,$t2
    swc1	$f0,-2892($t2)
    # Line 1778
    lw	$t1,20($s2)
    addu	$t1,$t1,$a7
    addu	$t1,$a6,$t1
    swc1	$f20,-2888($t1)
    # Line 1779
    lw	$t0,20($s2)
    # Line 1771
    addiu	$a5,$a5,4
    # Line 1779
    addu	$t0,$t0,$a7
    addu	$t0,$a6,$t0
    # Line 1771
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b3088
    # Line 1779
    swc1	$f20,-2884($t0)
    # Line 1782
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    lw	$a0,20($s2)
    move	$a3,$s6
    addiu	$a2,$s4,-1
    move	$a1,$s2
    addu	$a0,$a0,$a7
    bal __glOdysseyProgramConvolutionFilter
    addiu	$a0,$a0,-2912
    b	.L0d9b3228
    ld	$s2,0($sp)
.L0d9b314c:
    # Line 1755
    subu	$a7,$a7,$a2
    sll	$a7,$a7,0x3
    mtc1	$zero,$f20
    subu	$a7,$a7,$a2
    move	$a6,$zero
    sll	$a7,$a7,0x2
    addiu	$s3,$s5,16
    subu	$a7,$a7,$a2
    move	$a5,$s5
    sll	$a7,$a7,0x5
.L0d9b3174:
    # Line 1729
    lw	$at,20($s2)
    addu	$at,$at,$a7
    lwc1	$f4,0($a5)
    addu	$at,$a6,$at
    swc1	$f4,-2912($at)
    # Line 1730
    lw	$ra,20($s2)
    addu	$ra,$ra,$a7
    addu	$ra,$a6,$ra
    swc1	$f20,-2908($ra)
    # Line 1731
    lw	$t9,20($s2)
    addu	$t9,$t9,$a7
    addu	$t9,$a6,$t9
    swc1	$f20,-2904($t9)
    # Line 1732
    lw	$t8,20($s2)
    addu	$t8,$t8,$a7
    addu	$t8,$a6,$t8
    swc1	$f20,-2900($t8)
    # Line 1733
    lw	$t3,20($s2)
    addu	$t3,$t3,$a7
    addu	$t3,$a6,$t3
    swc1	$f20,-2896($t3)
    # Line 1734
    lw	$t2,20($s2)
    addu	$t2,$t2,$a7
    addu	$t2,$a6,$t2
    swc1	$f20,-2892($t2)
    # Line 1735
    lw	$t1,20($s2)
    addu	$t1,$t1,$a7
    addu	$t1,$a6,$t1
    swc1	$f20,-2888($t1)
    # Line 1736
    lw	$t0,20($s2)
    # Line 1728
    addiu	$a5,$a5,4
    # Line 1736
    addu	$t0,$t0,$a7
    addu	$t0,$a6,$t0
    # Line 1728
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b3174
    # Line 1736
    swc1	$f20,-2884($t0)
    # Line 1738
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    lw	$a0,20($s2)
    move	$a3,$s6
    addiu	$a2,$s4,-1
    move	$a1,$s2
    addu	$a0,$a0,$a7
    bal __glOdysseyProgramConvolutionFilter
    addiu	$a0,$a0,-2912
.L0d9b3224:
    ld	$s2,0($sp)
.L0d9b3228:
    ld	$s3,56($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s5,24($sp)
    ld	$s7,32($sp)
    ld	$ra,64($sp)
    ld	$s8,88($sp)
    ldc1	$f20,48($sp)
    # Line 1875
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9b325c:
    # Line 1789
    blez	$a2,.L0d9b3224
    move	$s0,$zero
    mtc1	$zero,$f20
    move	$s1,$zero
    b	.L0d9b3348
    addiu	$s3,$a1,16
    nop
    nop
    nop
.L0d9b3280:
    # Line 1818
    move	$a5,$s5
.L0d9b3284:
    # Line 1793
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f8,0($a5)
    addu	$t2,$a6,$t2
    swc1	$f8,0($t2)
    # Line 1794
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f7,16($a5)
    addu	$t1,$a6,$t1
    swc1	$f7,4($t1)
    # Line 1795
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a6,$t0
    swc1	$f20,8($t0)
    # Line 1796
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a6,$a7
    swc1	$f20,12($a7)
    # Line 1797
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f6,32($a5)
    addu	$a4,$a6,$a4
    swc1	$f6,16($a4)
    # Line 1798
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f5,48($a5)
    addu	$a3,$a6,$a3
    swc1	$f5,20($a3)
    # Line 1799
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    swc1	$f20,24($a2)
    # Line 1800
    lw	$a1,20($s2)
    # Line 1792
    addiu	$a5,$a5,4
    # Line 1800
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1792
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b3284
    # Line 1800
    swc1	$f20,28($a1)
    # Line 1803
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b333c:
    # Line 1789
    addiu	$s1,$s1,1
.L0d9b3340:
    beq	$s4,$s1,.L0d9b3418
    addiu	$s0,$s0,2912
.L0d9b3348:
    # Line 1790
    beqz	$s1,.L0d9b3280
    # Line 1818
    move	$a6,$zero
    # Line 1790
    bne	$s1,$s7,.L0d9b333c
    move	$a6,$zero
    move	$a5,$s5
.L0d9b335c:
    # Line 1807
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f11,64($a5)
    addu	$t2,$a6,$t2
    swc1	$f11,0($t2)
    # Line 1808
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f10,80($a5)
    addu	$t1,$a6,$t1
    swc1	$f10,4($t1)
    # Line 1809
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a6,$t0
    swc1	$f20,8($t0)
    # Line 1810
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a6,$a7
    swc1	$f20,12($a7)
    # Line 1811
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f9,96($a5)
    addu	$a4,$a6,$a4
    swc1	$f9,16($a4)
    # Line 1812
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a6,$a3
    swc1	$f20,20($a3)
    # Line 1813
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    swc1	$f20,24($a2)
    # Line 1814
    lw	$a1,20($s2)
    # Line 1806
    addiu	$a5,$a5,4
    # Line 1814
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1806
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b335c
    # Line 1814
    swc1	$f20,28($a1)
    # Line 1817
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b3340
    # Line 1789
    addiu	$s1,$s1,1
.L0d9b3418:
    b	.L0d9b3228
    ld	$s2,0($sp)
.L0d9b3420:
    # Line 1769
    subu	$a7,$a7,$a2
    sll	$a7,$a7,0x3
    mtc1	$zero,$f20
    subu	$a7,$a7,$a2
    move	$a6,$zero
    sll	$a7,$a7,0x2
    addiu	$s3,$s5,16
    subu	$a7,$a7,$a2
    move	$a5,$s5
    sll	$a7,$a7,0x5
.L0d9b3448:
    # Line 1743
    lw	$at,20($s2)
    addu	$at,$at,$a7
    lwc1	$f13,0($a5)
    addu	$at,$a6,$at
    swc1	$f13,-2912($at)
    # Line 1744
    lw	$ra,20($s2)
    addu	$ra,$ra,$a7
    lwc1	$f12,16($a5)
    addu	$ra,$a6,$ra
    swc1	$f12,-2908($ra)
    # Line 1745
    lw	$t9,20($s2)
    addu	$t9,$t9,$a7
    addu	$t9,$a6,$t9
    swc1	$f20,-2904($t9)
    # Line 1746
    lw	$t8,20($s2)
    addu	$t8,$t8,$a7
    addu	$t8,$a6,$t8
    swc1	$f20,-2900($t8)
    # Line 1747
    lw	$t3,20($s2)
    addu	$t3,$t3,$a7
    addu	$t3,$a6,$t3
    swc1	$f20,-2896($t3)
    # Line 1748
    lw	$t2,20($s2)
    addu	$t2,$t2,$a7
    addu	$t2,$a6,$t2
    swc1	$f20,-2892($t2)
    # Line 1749
    lw	$t1,20($s2)
    addu	$t1,$t1,$a7
    addu	$t1,$a6,$t1
    swc1	$f20,-2888($t1)
    # Line 1750
    lw	$t0,20($s2)
    # Line 1742
    addiu	$a5,$a5,4
    # Line 1750
    addu	$t0,$t0,$a7
    addu	$t0,$a6,$t0
    # Line 1742
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b3448
    # Line 1750
    swc1	$f20,-2884($t0)
    # Line 1753
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    lw	$a0,20($s2)
    move	$a3,$s6
    addiu	$a2,$s4,-1
    move	$a1,$s2
    addu	$a0,$a0,$a7
    bal __glOdysseyProgramConvolutionFilter
    addiu	$a0,$a0,-2912
    b	.L0d9b3228
    ld	$s2,0($sp)
.L0d9b3504:
    # Line 1824
    blez	$a2,.L0d9b3224
    move	$s0,$zero
    mtc1	$zero,$f20
    move	$s1,$zero
    b	.L0d9b35e8
    addiu	$s3,$s5,16
    nop
.L0d9b3520:
    # Line 1853
    move	$a5,$s5
.L0d9b3524:
    # Line 1828
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f17,0($a5)
    addu	$t2,$a6,$t2
    swc1	$f17,0($t2)
    # Line 1829
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f16,16($a5)
    addu	$t1,$a6,$t1
    swc1	$f16,4($t1)
    # Line 1830
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a6,$t0
    swc1	$f20,8($t0)
    # Line 1831
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a6,$a7
    swc1	$f20,12($a7)
    # Line 1832
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f15,32($a5)
    addu	$a4,$a6,$a4
    swc1	$f15,16($a4)
    # Line 1833
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f14,48($a5)
    addu	$a3,$a6,$a3
    swc1	$f14,20($a3)
    # Line 1834
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    swc1	$f20,24($a2)
    # Line 1835
    lw	$a1,20($s2)
    # Line 1827
    addiu	$a5,$a5,4
    # Line 1835
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1827
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b3524
    # Line 1835
    swc1	$f20,28($a1)
    # Line 1838
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b35dc:
    # Line 1824
    addiu	$s1,$s1,1
.L0d9b35e0:
    beq	$s4,$s1,.L0d9b3784
    addiu	$s0,$s0,2912
.L0d9b35e8:
    # Line 1825
    beqz	$s1,.L0d9b3520
    # Line 1853
    move	$a6,$zero
    # Line 1825
    beq	$s1,$s7,.L0d9b36c0
    # Line 1868
    move	$a6,$zero
    # Line 1825
    bne	$s1,$s8,.L0d9b35dc
    move	$a6,$zero
    move	$a5,$s5
.L0d9b3604:
    # Line 1857
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f21,128($a5)
    addu	$t2,$a6,$t2
    swc1	$f21,0($t2)
    # Line 1858
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f19,144($a5)
    addu	$t1,$a6,$t1
    swc1	$f19,4($t1)
    # Line 1859
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a6,$t0
    swc1	$f20,8($t0)
    # Line 1860
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a6,$a7
    swc1	$f20,12($a7)
    # Line 1861
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f18,160($a5)
    addu	$a4,$a6,$a4
    swc1	$f18,16($a4)
    # Line 1862
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    addu	$a3,$a6,$a3
    swc1	$f20,20($a3)
    # Line 1863
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    swc1	$f20,24($a2)
    # Line 1864
    lw	$a1,20($s2)
    # Line 1856
    addiu	$a5,$a5,4
    # Line 1864
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1856
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b3604
    # Line 1864
    swc1	$f20,28($a1)
    # Line 1867
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b35e0
    # Line 1824
    addiu	$s1,$s1,1
.L0d9b36c0:
    # Line 1868
    move	$a5,$s5
.L0d9b36c4:
    # Line 1842
    lw	$t2,20($s2)
    addu	$t2,$t2,$s0
    lwc1	$f29,64($a5)
    addu	$t2,$a6,$t2
    swc1	$f29,0($t2)
    # Line 1843
    lw	$t1,20($s2)
    addu	$t1,$t1,$s0
    lwc1	$f27,80($a5)
    addu	$t1,$a6,$t1
    swc1	$f27,4($t1)
    # Line 1844
    lw	$t0,20($s2)
    addu	$t0,$t0,$s0
    addu	$t0,$a6,$t0
    swc1	$f20,8($t0)
    # Line 1845
    lw	$a7,20($s2)
    addu	$a7,$a7,$s0
    addu	$a7,$a6,$a7
    swc1	$f20,12($a7)
    # Line 1846
    lw	$a4,20($s2)
    addu	$a4,$a4,$s0
    lwc1	$f25,96($a5)
    addu	$a4,$a6,$a4
    swc1	$f25,16($a4)
    # Line 1847
    lw	$a3,20($s2)
    addu	$a3,$a3,$s0
    lwc1	$f23,112($a5)
    addu	$a3,$a6,$a3
    swc1	$f23,20($a3)
    # Line 1848
    lw	$a2,20($s2)
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    swc1	$f20,24($a2)
    # Line 1849
    lw	$a1,20($s2)
    # Line 1841
    addiu	$a5,$a5,4
    # Line 1849
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1841
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b36c4
    # Line 1849
    swc1	$f20,28($a1)
    # Line 1852
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s2)
    move	$a2,$s1
    move	$a1,$s2
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b35e0
    # Line 1824
    addiu	$s1,$s1,1
.L0d9b3784:
    b	.L0d9b3228
    ld	$s2,0($sp)
.L0d9b378c:
    # Line 1783
    subu	$a7,$a7,$a2
    sll	$a7,$a7,0x3
    mtc1	$zero,$f20
    subu	$a7,$a7,$a2
    move	$a6,$zero
    sll	$a7,$a7,0x2
    addiu	$s3,$s5,16
    subu	$a7,$a7,$a2
    move	$a5,$s5
    sll	$a7,$a7,0x5
.L0d9b37b4:
    # Line 1758
    lw	$at,20($s2)
    addu	$at,$at,$a7
    lwc1	$f1,0($a5)
    addu	$at,$a6,$at
    swc1	$f1,-2912($at)
    # Line 1759
    lw	$ra,20($s2)
    addu	$ra,$ra,$a7
    lwc1	$f0,16($a5)
    addu	$ra,$a6,$ra
    swc1	$f0,-2908($ra)
    # Line 1760
    lw	$t9,20($s2)
    addu	$t9,$t9,$a7
    addu	$t9,$a6,$t9
    swc1	$f20,-2904($t9)
    # Line 1761
    lw	$t8,20($s2)
    addu	$t8,$t8,$a7
    addu	$t8,$a6,$t8
    swc1	$f20,-2900($t8)
    # Line 1762
    lw	$t3,20($s2)
    addu	$t3,$t3,$a7
    lwc1	$f31,32($a5)
    addu	$t3,$a6,$t3
    swc1	$f31,-2896($t3)
    # Line 1763
    lw	$t2,20($s2)
    addu	$t2,$t2,$a7
    addu	$t2,$a6,$t2
    swc1	$f20,-2892($t2)
    # Line 1764
    lw	$t1,20($s2)
    addu	$t1,$t1,$a7
    addu	$t1,$a6,$t1
    swc1	$f20,-2888($t1)
    # Line 1765
    lw	$t0,20($s2)
    # Line 1757
    addiu	$a5,$a5,4
    # Line 1765
    addu	$t0,$t0,$a7
    addu	$t0,$a6,$t0
    # Line 1757
    addiu	$a6,$a6,148
    bne	$a5,$s3,.L0d9b37b4
    # Line 1765
    swc1	$f20,-2884($t0)
    # Line 1768
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    lw	$a0,20($s2)
    move	$a3,$s6
    addiu	$a2,$s4,-1
    move	$a1,$s2
    addu	$a0,$a0,$a7
    bal __glOdysseyProgramConvolutionFilter
    addiu	$a0,$a0,-2912
    b	.L0d9b3228
    ld	$s2,0($sp)
.L0d9b3874:
    # Line 1716
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9b3228
    ld	$s2,0($sp)
.end __glOdysseyMap1DFilterToAlphas

# Function: __glOdysseyMapSepFilterToAlphas
# Declared: Line 1878 (Source lines: 1883-2007)
# Address: 0x0d9b3890 - 0x0d9b3ed0 (Size: 1600 bytes, Frame: 240)
.globl __glOdysseyMapSepFilterToAlphas
.ent __glOdysseyMapSepFilterToAlphas
__glOdysseyMapSepFilterToAlphas:
    # Line 1883
    addiu	$sp,$sp,-112
    sd	$s3,64($sp)
    sd	$s5,40($sp)
    sd	$s6,8($sp)
    move	$s6,$a4
    sd	$s7,24($sp)
    move	$s7,$a2
    move	$s5,$a1
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s8,72($sp)
    # Line 1895
    li	$at,2
    # Line 1883
    lui	$v0,0x14
    sd	$s4,16($sp)
    # Line 1895
    addu	$s4,$a2,$a3
    sd	$ra,80($sp)
    # Line 1883
    addiu	$v0,$v0,19712
    # Line 1895
    slt	$a6,$a2,$s4
    sd	$gp,48($sp)
    beq	$a3,$at,.L0d9b3a30
    # Line 1883
    addu	$gp,$t9,$v0
    # Line 1895
    li	$v1,3
    beq	$a3,$v1,.L0d9b3c10
    nop
    sdc1	$f20,56($sp)
    sd	$s0,88($sp)
    # Line 1898
    move	$s3,$a2
    beqz	$a6,.L0d9b39f8
    sd	$s2,96($sp)
    sll	$s0,$a2,0x2
    subu	$s0,$s0,$a2
    sll	$s0,$s0,0x3
    subu	$s0,$s0,$a2
    sll	$s0,$s0,0x2
    mtc1	$zero,$f20
    subu	$s0,$s0,$a2
    addiu	$s2,$a1,16
    sll	$s0,$s0,0x5
    move	$a6,$zero
    move	$a7,$s5
.L0d9b3930:
    # Line 1900
    lw	$a1,20($s1)
    addu	$a1,$a1,$s0
    lwc1	$f2,0($a7)
    addu	$a1,$a6,$a1
    swc1	$f2,0($a1)
    # Line 1901
    lw	$a0,20($s1)
    addu	$a0,$a0,$s0
    addu	$a0,$a6,$a0
    swc1	$f20,4($a0)
    # Line 1902
    lw	$v1,20($s1)
    addu	$v1,$v1,$s0
    lwc1	$f1,16($a7)
    addu	$v1,$a6,$v1
    swc1	$f1,8($v1)
    # Line 1903
    lw	$v0,20($s1)
    addu	$v0,$v0,$s0
    addu	$v0,$a6,$v0
    swc1	$f20,12($v0)
    # Line 1904
    lw	$at,20($s1)
    addu	$at,$at,$s0
    lwc1	$f0,32($a7)
    addu	$at,$a6,$at
    swc1	$f0,16($at)
    # Line 1905
    lw	$ra,20($s1)
    addu	$ra,$ra,$s0
    addu	$ra,$a6,$ra
    swc1	$f20,20($ra)
    # Line 1906
    lw	$t9,20($s1)
    addu	$t9,$t9,$s0
    addu	$t9,$a6,$t9
    swc1	$f20,24($t9)
    # Line 1907
    lw	$t8,20($s1)
    # Line 1899
    addiu	$a7,$a7,4
    # Line 1907
    addu	$t8,$t8,$s0
    addu	$t8,$a6,$t8
    # Line 1899
    addiu	$a6,$a6,148
    bne	$a7,$s2,.L0d9b3930
    # Line 1907
    swc1	$f20,28($t8)
    # Line 1910
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s1)
    move	$a2,$s4
    move	$a1,$s1
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    # Line 1898
    addiu	$s3,$s3,1
    move	$a6,$zero
    move	$a7,$s5
    bne	$s4,$s3,.L0d9b3930
    addiu	$s0,$s0,2912
.L0d9b39f8:
    ld	$s2,96($sp)
.L0d9b39fc:
    ld	$s3,64($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s7,24($sp)
    ld	$s8,72($sp)
    ld	$s0,88($sp)
    ld	$s1,32($sp)
    ld	$ra,80($sp)
    ld	$s5,40($sp)
    ldc1	$f20,56($sp)
    # Line 2007
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9b3a30:
    sdc1	$f20,56($sp)
    sd	$s0,88($sp)
    # Line 1916
    move	$s3,$a2
    beqz	$a6,.L0d9b39f8
    sd	$s2,96($sp)
    sll	$s0,$a2,0x2
    mtc1	$zero,$f20
    subu	$s0,$s0,$a2
    sll	$s0,$s0,0x3
    addiu	$s2,$a1,16
    subu	$s0,$s0,$a2
    addiu	$s8,$a2,1
    sll	$s0,$s0,0x2
    subu	$s0,$s0,$a2
    b	.L0d9b3b38
    sll	$s0,$s0,0x5
.L0d9b3a70:
    # Line 1947
    move	$a6,$zero
.L0d9b3a74:
    # Line 1920
    lw	$a1,20($s1)
    addu	$a1,$a1,$s0
    lwc1	$f6,0($a7)
    addu	$a1,$a6,$a1
    swc1	$f6,0($a1)
    # Line 1921
    lw	$a0,20($s1)
    addu	$a0,$a0,$s0
    addu	$a0,$a6,$a0
    swc1	$f20,4($a0)
    # Line 1922
    lw	$v1,20($s1)
    addu	$v1,$v1,$s0
    lwc1	$f5,16($a7)
    addu	$v1,$a6,$v1
    swc1	$f5,8($v1)
    # Line 1923
    lw	$v0,20($s1)
    addu	$v0,$v0,$s0
    addu	$v0,$a6,$v0
    swc1	$f20,12($v0)
    # Line 1924
    lw	$at,20($s1)
    addu	$at,$at,$s0
    lwc1	$f4,32($a7)
    addu	$at,$a6,$at
    swc1	$f4,16($at)
    # Line 1925
    lw	$ra,20($s1)
    addu	$ra,$ra,$s0
    addu	$ra,$a6,$ra
    swc1	$f20,20($ra)
    # Line 1926
    lw	$t9,20($s1)
    addu	$t9,$t9,$s0
    lwc1	$f3,48($a7)
    addu	$t9,$a6,$t9
    swc1	$f3,24($t9)
    # Line 1927
    lw	$t8,20($s1)
    # Line 1919
    addiu	$a7,$a7,4
    # Line 1927
    addu	$t8,$t8,$s0
    addu	$t8,$a6,$t8
    # Line 1919
    addiu	$a6,$a6,148
    bne	$a7,$s2,.L0d9b3a74
    # Line 1927
    swc1	$f20,28($t8)
    # Line 1930
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s1)
    move	$a2,$s3
    move	$a1,$s1
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b3b2c:
    # Line 1916
    addiu	$s3,$s3,1
.L0d9b3b30:
    beq	$s4,$s3,.L0d9b3c08
    addiu	$s0,$s0,2912
.L0d9b3b38:
    # Line 1917
    beq	$s7,$s3,.L0d9b3a70
    # Line 1947
    move	$a7,$s5
    # Line 1917
    bne	$s8,$s3,.L0d9b3b2c
    move	$a7,$s5
    move	$a6,$zero
.L0d9b3b4c:
    # Line 1935
    lw	$t2,20($s1)
    addu	$t2,$t2,$s0
    lwc1	$f9,64($a7)
    addu	$t2,$a6,$t2
    swc1	$f9,0($t2)
    # Line 1936
    lw	$t1,20($s1)
    addu	$t1,$t1,$s0
    addu	$t1,$a6,$t1
    swc1	$f20,4($t1)
    # Line 1937
    lw	$t0,20($s1)
    addu	$t0,$t0,$s0
    lwc1	$f8,80($a7)
    addu	$t0,$a6,$t0
    swc1	$f8,8($t0)
    # Line 1938
    lw	$a5,20($s1)
    addu	$a5,$a5,$s0
    addu	$a5,$a6,$a5
    swc1	$f20,12($a5)
    # Line 1939
    lw	$a4,20($s1)
    addu	$a4,$a4,$s0
    lwc1	$f7,96($a7)
    addu	$a4,$a6,$a4
    swc1	$f7,16($a4)
    # Line 1940
    lw	$a3,20($s1)
    addu	$a3,$a3,$s0
    addu	$a3,$a6,$a3
    swc1	$f20,20($a3)
    # Line 1941
    lw	$a2,20($s1)
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    swc1	$f20,24($a2)
    # Line 1942
    lw	$a1,20($s1)
    # Line 1934
    addiu	$a7,$a7,4
    # Line 1942
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1934
    addiu	$a6,$a6,148
    bne	$a7,$s2,.L0d9b3b4c
    # Line 1942
    swc1	$f20,28($a1)
    # Line 1945
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s1)
    move	$a2,$s3
    move	$a1,$s1
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b3b30
    # Line 1916
    addiu	$s3,$s3,1
.L0d9b3c08:
    b	.L0d9b39fc
    ld	$s2,96($sp)
.L0d9b3c10:
    sdc1	$f20,56($sp)
    sd	$s0,88($sp)
    # Line 1953
    move	$s3,$a2
    beqz	$a6,.L0d9b39f8
    sd	$s2,96($sp)
    sll	$s0,$a2,0x2
    mtc1	$zero,$f20
    subu	$s0,$s0,$a2
    addiu	$s2,$a1,16
    sll	$s0,$s0,0x3
    addiu	$s8,$a2,1
    subu	$s0,$s0,$a2
    addiu	$t8,$a2,2
    sll	$s0,$s0,0x2
    sd	$t8,0($sp)
    subu	$s0,$s0,$a2
    b	.L0d9b3d28
    sll	$s0,$s0,0x5
    nop
    nop
.L0d9b3c60:
    # Line 1984
    move	$a6,$zero
.L0d9b3c64:
    # Line 1957
    lw	$a1,20($s1)
    addu	$a1,$a1,$s0
    lwc1	$f13,0($a7)
    addu	$a1,$a6,$a1
    swc1	$f13,0($a1)
    # Line 1958
    lw	$a0,20($s1)
    addu	$a0,$a0,$s0
    addu	$a0,$a6,$a0
    swc1	$f20,4($a0)
    # Line 1959
    lw	$v1,20($s1)
    addu	$v1,$v1,$s0
    lwc1	$f12,16($a7)
    addu	$v1,$a6,$v1
    swc1	$f12,8($v1)
    # Line 1960
    lw	$v0,20($s1)
    addu	$v0,$v0,$s0
    addu	$v0,$a6,$v0
    swc1	$f20,12($v0)
    # Line 1961
    lw	$at,20($s1)
    addu	$at,$at,$s0
    lwc1	$f11,32($a7)
    addu	$at,$a6,$at
    swc1	$f11,16($at)
    # Line 1962
    lw	$ra,20($s1)
    addu	$ra,$ra,$s0
    addu	$ra,$a6,$ra
    swc1	$f20,20($ra)
    # Line 1963
    lw	$t9,20($s1)
    addu	$t9,$t9,$s0
    lwc1	$f10,48($a7)
    addu	$t9,$a6,$t9
    swc1	$f10,24($t9)
    # Line 1964
    lw	$t8,20($s1)
    # Line 1956
    addiu	$a7,$a7,4
    # Line 1964
    addu	$t8,$t8,$s0
    addu	$t8,$a6,$t8
    # Line 1956
    addiu	$a6,$a6,148
    bne	$a7,$s2,.L0d9b3c64
    # Line 1964
    swc1	$f20,28($t8)
    # Line 1967
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s1)
    move	$a2,$s3
    move	$a1,$s1
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
.L0d9b3d1c:
    # Line 1953
    addiu	$s3,$s3,1
.L0d9b3d20:
    beq	$s4,$s3,.L0d9b3ec8
    addiu	$s0,$s0,2912
.L0d9b3d28:
    # Line 1954
    beq	$s7,$s3,.L0d9b3c60
    # Line 1984
    move	$a7,$s5
    # Line 1954
    bne	$s8,$s3,.L0d9b3e00
    ld	$a1,0($sp)
    # Line 2000
    move	$a6,$zero
    move	$a7,$s5
.L0d9b3d40:
    # Line 1972
    lw	$t2,20($s1)
    addu	$t2,$t2,$s0
    lwc1	$f17,64($a7)
    addu	$t2,$a6,$t2
    swc1	$f17,0($t2)
    # Line 1973
    lw	$t1,20($s1)
    addu	$t1,$t1,$s0
    addu	$t1,$a6,$t1
    swc1	$f20,4($t1)
    # Line 1974
    lw	$t0,20($s1)
    addu	$t0,$t0,$s0
    lwc1	$f16,80($a7)
    addu	$t0,$a6,$t0
    swc1	$f16,8($t0)
    # Line 1975
    lw	$a5,20($s1)
    addu	$a5,$a5,$s0
    addu	$a5,$a6,$a5
    swc1	$f20,12($a5)
    # Line 1976
    lw	$a4,20($s1)
    addu	$a4,$a4,$s0
    lwc1	$f15,96($a7)
    addu	$a4,$a6,$a4
    swc1	$f15,16($a4)
    # Line 1977
    lw	$a3,20($s1)
    addu	$a3,$a3,$s0
    addu	$a3,$a6,$a3
    swc1	$f20,20($a3)
    # Line 1978
    lw	$a2,20($s1)
    addu	$a2,$a2,$s0
    lwc1	$f14,112($a7)
    addu	$a2,$a6,$a2
    swc1	$f14,24($a2)
    # Line 1979
    lw	$a1,20($s1)
    # Line 1971
    addiu	$a7,$a7,4
    # Line 1979
    addu	$a1,$a1,$s0
    addu	$a1,$a6,$a1
    # Line 1971
    addiu	$a6,$a6,148
    bne	$a7,$s2,.L0d9b3d40
    # Line 1979
    swc1	$f20,28($a1)
    # Line 1982
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s1)
    move	$a2,$s3
    move	$a1,$s1
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b3d20
    # Line 1953
    addiu	$s3,$s3,1
.L0d9b3e00:
    # Line 1954
    move	$a7,$s5
    bne	$a1,$s3,.L0d9b3d1c
    move	$a6,$zero
.L0d9b3e0c:
    # Line 1988
    lw	$t3,20($s1)
    addu	$t3,$t3,$s0
    lwc1	$f21,128($a7)
    addu	$t3,$a6,$t3
    swc1	$f21,0($t3)
    # Line 1989
    lw	$t2,20($s1)
    addu	$t2,$t2,$s0
    addu	$t2,$a6,$t2
    swc1	$f20,4($t2)
    # Line 1990
    lw	$t1,20($s1)
    addu	$t1,$t1,$s0
    lwc1	$f19,144($a7)
    addu	$t1,$a6,$t1
    swc1	$f19,8($t1)
    # Line 1991
    lw	$t0,20($s1)
    addu	$t0,$t0,$s0
    addu	$t0,$a6,$t0
    swc1	$f20,12($t0)
    # Line 1992
    lw	$a5,20($s1)
    addu	$a5,$a5,$s0
    lwc1	$f18,160($a7)
    addu	$a5,$a6,$a5
    swc1	$f18,16($a5)
    # Line 1993
    lw	$a4,20($s1)
    addu	$a4,$a4,$s0
    addu	$a4,$a6,$a4
    swc1	$f20,20($a4)
    # Line 1994
    lw	$a3,20($s1)
    addu	$a3,$a3,$s0
    addu	$a3,$a6,$a3
    swc1	$f20,24($a3)
    # Line 1995
    lw	$a2,20($s1)
    # Line 1987
    addiu	$a7,$a7,4
    # Line 1995
    addu	$a2,$a2,$s0
    addu	$a2,$a6,$a2
    # Line 1987
    addiu	$a6,$a6,148
    bne	$a7,$s2,.L0d9b3e0c
    # Line 1995
    swc1	$f20,28($a2)
    # Line 1998
    # lw $t9, -31216($gp) # &__glOdysseyProgramConvolutionFilter
    move	$a3,$s6
    lw	$a0,20($s1)
    move	$a2,$s3
    move	$a1,$s1
    bal __glOdysseyProgramConvolutionFilter
    addu	$a0,$a0,$s0
    b	.L0d9b3d20
    # Line 1953
    addiu	$s3,$s3,1
.L0d9b3ec8:
    b	.L0d9b39fc
    ld	$s2,96($sp)
.end __glOdysseyMapSepFilterToAlphas

# Function: __glOdysseyProgram1DOffsets
# Declared: Line 2011 (Source lines: 2015-2102)
# Address: 0x0d9b3ed0 - 0x0d9b4138 (Size: 616 bytes, Frame: 48)
.globl __glOdysseyProgram1DOffsets
.ent __glOdysseyProgram1DOffsets
__glOdysseyProgram1DOffsets:
    # Line 2015
    addiu	$sp,$sp,-48
    lui	$at,0x14
    sd	$a2,24($sp)
    addiu	$at,$at,18112
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2019
    ldc1	$f13,_lit8_3fe0000000000000
    # Line 2015
    sdc1	$f15,0($sp)
    # Line 2019
    cvt.d.s	$f12,$f15
    # lw $t9, -16948($gp) # &floorf
    # Line 2015
    sd	$a0,8($sp)
    # Line 2019
    mul.d	$f12,$f12,$f13
    # Line 2015
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$ra,16($sp)
    # Line 2019
    jal	floorf
    cvt.s.d	$f12,$f12
    ld	$ra,16($sp)
    # Line 2021
    beqz	$s0,.L0d9b3f98
    li	$a1,1
    beq	$s0,$a1,.L0d9b3f98
    # Line 2056
    ld	$t0,24($sp)
    # Line 2021
    li	$a4,2
    beq	$s0,$a4,.L0d9b3fd8
    # Line 2056
    ld	$t1,24($sp)
    # Line 2075
    ld	$v1,24($sp)
    # Line 2021
    li	$v0,3
    bne	$s0,$v0,.L0d9b3fc8
    # Line 2075
    ld	$a0,24($sp)
    beqz	$v1,.L0d9b40b4
    nop
    beq	$a0,$a1,.L0d9b40e0
    ld	$a1,24($sp)
    bne	$a1,$a4,.L0d9b3fcc
    # Line 2102
    ld	$gp,40($sp)
    ld	$gp,40($sp)
    # Line 2091
    neg.s	$f14,$f0
    # Line 2095
    ld	$a3,8($sp)
    # Line 2102
    ld	$s0,32($sp)
    # Line 2091
    trunc.w.s	$f14,$f14
    # Line 2095
    sw	$zero,2896($a3)
    # Line 2094
    sw	$zero,2892($a3)
    # Line 2091
    mfc1	$a2,$f14
    # Line 2092
    sw	$zero,2888($a3)
    # Line 2102
    addiu	$sp,$sp,48
    # Line 2093
    addiu	$a4,$a2,10
    sw	$a4,2884($a3)
    # Line 2091
    addiu	$a2,$a2,8
    # Line 2102
    jr	$ra
    # Line 2091
    sw	$a2,2880($a3)
.L0d9b3f98:
    # Line 2024
    ldc1	$f15,0($sp)
    trunc.w.s	$f15,$f15
    mfc1	$a2,$f15
    li	$a6,3
    li	$a5,2
    beq	$a2,$a1,.L0d9b4050
    li	$a7,4
    beq	$a2,$a5,.L0d9b406c
    # Line 2037
    ld	$v0,8($sp)
    # Line 2024
    beq	$a2,$a6,.L0d9b408c
    # Line 2044
    ld	$a0,8($sp)
    # Line 2024
    beq	$a2,$a7,.L0d9b4018
.L0d9b3fc8:
    # Line 2102
    ld	$gp,40($sp)
.L0d9b3fcc:
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9b3fd8:
    # Line 2056
    beqz	$t0,.L0d9b4110
    # Line 2062
    ld	$a5,8($sp)
    # Line 2056
    bne	$t1,$a1,.L0d9b3fcc
    # Line 2102
    ld	$gp,40($sp)
    # Line 2065
    neg.s	$f16,$f0
    # Line 2069
    ld	$t3,8($sp)
    # Line 2065
    trunc.w.s	$f16,$f16
    # Line 2069
    sw	$zero,2896($t3)
    # Line 2068
    sw	$zero,2892($t3)
    # Line 2065
    mfc1	$t2,$f16
    # Line 2066
    sw	$zero,2888($t3)
    # Line 2067
    addiu	$t8,$t2,6
    sw	$t8,2884($t3)
    # Line 2065
    addiu	$t2,$t2,4
    # Line 2070
    b	.L0d9b3fc8
    # Line 2065
    sw	$t2,2880($t3)
.L0d9b4018:
    # Line 2102
    ld	$gp,40($sp)
    # Line 2051
    ld	$at,8($sp)
    # Line 2047
    neg.s	$f17,$f0
    # Line 2102
    ld	$s0,32($sp)
    # Line 2051
    sw	$zero,2896($at)
    # Line 2047
    trunc.w.s	$f17,$f17
    # Line 2050
    sw	$zero,2892($at)
    # Line 2048
    sw	$zero,2888($at)
    # Line 2047
    mfc1	$t9,$f17
    # Line 2102
    addiu	$sp,$sp,48
    # Line 2047
    swc1	$f17,2880($at)
    # Line 2049
    addiu	$t9,$t9,2
    # Line 2102
    jr	$ra
    # Line 2049
    sw	$t9,2884($at)
.L0d9b4050:
    # Line 2030
    ld	$at,8($sp)
    sw	$zero,2896($at)
    # Line 2029
    sw	$zero,2892($at)
    # Line 2028
    sw	$zero,2884($at)
    # Line 2027
    sw	$zero,2888($at)
    b	.L0d9b3fc8
    # Line 2026
    sw	$zero,2880($at)
.L0d9b406c:
    # Line 2037
    sw	$zero,2896($v0)
    # Line 2036
    sw	$zero,2892($v0)
    # Line 2033
    neg.s	$f18,$f0
    # Line 2035
    sw	$zero,2884($v0)
    # Line 2034
    sw	$zero,2888($v0)
    # Line 2033
    trunc.w.s	$f18,$f18
    # Line 2038
    b	.L0d9b3fc8
    # Line 2033
    swc1	$f18,2880($v0)
.L0d9b408c:
    # Line 2040
    neg.s	$f19,$f0
    # Line 2044
    sw	$zero,2896($a0)
    # Line 2040
    trunc.w.s	$f19,$f19
    # Line 2043
    sw	$zero,2892($a0)
    # Line 2041
    sw	$zero,2888($a0)
    # Line 2040
    mfc1	$v1,$f19
    swc1	$f19,2880($a0)
    # Line 2042
    addiu	$v1,$v1,2
    # Line 2045
    b	.L0d9b3fc8
    # Line 2042
    sw	$v1,2884($a0)
.L0d9b40b4:
    # Line 2081
    ld	$a1,8($sp)
    # Line 2077
    neg.s	$f21,$f0
    # Line 2081
    sw	$zero,2896($a1)
    # Line 2077
    trunc.w.s	$f21,$f21
    # Line 2080
    sw	$zero,2892($a1)
    # Line 2078
    sw	$zero,2888($a1)
    # Line 2077
    mfc1	$a0,$f21
    swc1	$f21,2880($a1)
    # Line 2079
    addiu	$a0,$a0,2
    b	.L0d9b3fc8
    sw	$a0,2884($a1)
.L0d9b40e0:
    # Line 2084
    neg.s	$f23,$f0
    # Line 2088
    ld	$a2,8($sp)
    # Line 2084
    trunc.w.s	$f23,$f23
    # Line 2088
    sw	$zero,2896($a2)
    # Line 2087
    sw	$zero,2892($a2)
    # Line 2084
    mfc1	$a1,$f23
    # Line 2085
    sw	$zero,2888($a2)
    # Line 2086
    addiu	$a3,$a1,6
    sw	$a3,2884($a2)
    # Line 2084
    addiu	$a1,$a1,4
    # Line 2089
    b	.L0d9b3fc8
    # Line 2084
    sw	$a1,2880($a2)
.L0d9b4110:
    # Line 2058
    neg.s	$f25,$f0
    # Line 2062
    sw	$zero,2896($a5)
    # Line 2058
    trunc.w.s	$f25,$f25
    # Line 2061
    sw	$zero,2892($a5)
    # Line 2059
    sw	$zero,2888($a5)
    # Line 2058
    mfc1	$a4,$f25
    swc1	$f25,2880($a5)
    # Line 2060
    addiu	$a4,$a4,2
    b	.L0d9b3fc8
    sw	$a4,2884($a5)
.end __glOdysseyProgram1DOffsets

# Function: __glOdysseyProgram2DOffsets
# Declared: Line 2106 (Source lines: 2109-2347)
# Address: 0x0d9b4140 - 0x0d9b4588 (Size: 1096 bytes, Frame: 0)
.globl __glOdysseyProgram2DOffsets
.ent __glOdysseyProgram2DOffsets
__glOdysseyProgram2DOffsets:
    # Line 2109
    lui	$a6,0x14
    addiu	$a6,$a6,17488
    addu	$at,$t9,$a6
    la	$a5,sub_0daf0000
    sltiu	$a7,$a1,14
    sll	$a6,$a1,0x2
    addiu	$a5,$a5,-28348
    beqz	$a7,.L0d9b4170
    addu	$a5,$a5,$a6
    lw	$a7,0($a5)
    jr	$a7
    # Line 2186
    la	$a4,sub_0daf0000
.L0d9b4170:
    # Line 2121
    sw	$zero,2896($a0)
    # Line 2117
    li	$t0,-1
    # Line 2120
    sw	$t0,2892($a0)
    # Line 2119
    li	$t1,1
    sw	$t1,2884($a0)
    # Line 2118
    sw	$t0,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2117
    sw	$t0,2880($a0)
.L0d9b4190:
    # Line 2347
    jr	$ra
    nop
.L0d9b4198:
    # Line 2125
    beqz	$a2,.L0d9b4358
    li	$a4,1
    bne	$a2,$a4,.L0d9b4190
    nop
    # Line 2138
    sw	$zero,2896($a0)
    # Line 2137
    sw	$a4,2892($a0)
    # Line 2136
    sw	$a4,2884($a0)
    # Line 2135
    sw	$a4,2888($a0)
    # Line 2134
    li	$t2,-1
    # Line 2347
    jr	$ra
    # Line 2134
    sw	$t2,2880($a0)
.L0d9b41c4:
    # Line 2251
    la	$a4,sub_0daf0000
    sltiu	$a6,$a2,13
    addiu	$a4,$a4,-28292
    sll	$a5,$a2,0x2
    beqz	$a6,.L0d9b4190
    addu	$a4,$a4,$a5
    lw	$a5,0($a4)
    jr	$a5
    nop
.L0d9b41e8:
    # Line 2186
    sltiu	$a6,$a2,8
    addiu	$a4,$a4,-28240
    sll	$a5,$a2,0x2
    beqz	$a6,.L0d9b4190
    addu	$a4,$a4,$a5
    lw	$a5,0($a4)
    jr	$a5
    nop
.L0d9b4208:
    # Line 2145
    beqz	$a2,.L0d9b4374
    li	$a6,1
    beq	$a2,$a6,.L0d9b4534
    li	$a4,2
    beq	$a2,$a4,.L0d9b4550
    li	$a7,3
    beq	$a2,$a7,.L0d9b456c
    li	$a5,4
    bne	$a2,$a5,.L0d9b4190
    nop
    # Line 2179
    sw	$zero,2896($a0)
    # Line 2178
    sw	$a4,2892($a0)
    # Line 2177
    sw	$a5,2884($a0)
    # Line 2176
    sw	$a4,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2175
    sw	$a4,2880($a0)
.L0d9b4248:
    # Line 2192
    sw	$zero,2896($a0)
    # Line 2188
    li	$t0,-3
    # Line 2191
    sw	$t0,2892($a0)
    # Line 2190
    li	$t1,-1
    sw	$t1,2884($a0)
    # Line 2189
    sw	$t0,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2188
    sw	$t0,2880($a0)
.L0d9b4268:
    # Line 2241
    sw	$zero,2896($a0)
    # Line 2238
    li	$t3,3
    # Line 2240
    sw	$t3,2892($a0)
    # Line 2239
    sw	$t3,2884($a0)
    # Line 2238
    sw	$t3,2888($a0)
    # Line 2237
    li	$t2,1
    # Line 2347
    jr	$ra
    # Line 2237
    sw	$t2,2880($a0)
.L0d9b4288:
    # Line 2234
    sw	$zero,2896($a0)
    # Line 2231
    li	$t9,3
    # Line 2233
    sw	$t9,2892($a0)
    # Line 2232
    li	$v0,-1
    sw	$v0,2884($a0)
    # Line 2231
    sw	$t9,2888($a0)
    # Line 2230
    li	$t8,-3
    # Line 2347
    jr	$ra
    # Line 2230
    sw	$t8,2880($a0)
.L0d9b42ac:
    # Line 2227
    sw	$zero,2896($a0)
    # Line 2223
    li	$v1,1
    # Line 2226
    sw	$v1,2892($a0)
    # Line 2225
    li	$a1,3
    sw	$a1,2884($a0)
    # Line 2224
    sw	$v1,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2223
    sw	$v1,2880($a0)
.L0d9b42cc:
    # Line 2220
    sw	$zero,2896($a0)
    # Line 2217
    li	$a3,1
    # Line 2219
    sw	$a3,2892($a0)
    # Line 2218
    li	$a4,-1
    sw	$a4,2884($a0)
    # Line 2217
    sw	$a3,2888($a0)
    # Line 2216
    li	$a2,-3
    # Line 2347
    jr	$ra
    # Line 2216
    sw	$a2,2880($a0)
.L0d9b42f0:
    # Line 2213
    sw	$zero,2896($a0)
    # Line 2210
    li	$a6,-1
    # Line 2212
    sw	$a6,2892($a0)
    # Line 2211
    li	$a7,3
    sw	$a7,2884($a0)
    # Line 2210
    sw	$a6,2888($a0)
    # Line 2209
    li	$a5,1
    # Line 2347
    jr	$ra
    # Line 2209
    sw	$a5,2880($a0)
.L0d9b4314:
    # Line 2206
    sw	$zero,2896($a0)
    # Line 2203
    li	$t1,-1
    # Line 2205
    sw	$t1,2892($a0)
    # Line 2204
    sw	$t1,2884($a0)
    # Line 2203
    sw	$t1,2888($a0)
    # Line 2202
    li	$t0,-3
    # Line 2347
    jr	$ra
    # Line 2202
    sw	$t0,2880($a0)
.L0d9b4334:
    # Line 2199
    sw	$zero,2896($a0)
    # Line 2196
    li	$t3,-3
    # Line 2198
    sw	$t3,2892($a0)
    # Line 2197
    li	$t8,3
    sw	$t8,2884($a0)
    # Line 2196
    sw	$t3,2888($a0)
    # Line 2195
    li	$t2,1
    # Line 2347
    jr	$ra
    # Line 2195
    sw	$t2,2880($a0)
.L0d9b4358:
    # Line 2131
    sw	$zero,2896($a0)
    # Line 2127
    li	$t9,-1
    # Line 2130
    sw	$t9,2892($a0)
    # Line 2129
    sw	$a4,2884($a0)
    # Line 2128
    sw	$t9,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2127
    sw	$t9,2880($a0)
.L0d9b4374:
    # Line 2151
    sw	$zero,2896($a0)
    # Line 2147
    li	$v0,-2
    # Line 2150
    sw	$v0,2892($a0)
    # Line 2149
    sw	$zero,2884($a0)
    # Line 2148
    sw	$v0,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2147
    sw	$v0,2880($a0)
.L0d9b4390:
    # Line 2257
    sw	$zero,2896($a0)
    # Line 2253
    li	$v1,-4
    # Line 2256
    sw	$v1,2892($a0)
    # Line 2255
    li	$a1,-2
    sw	$a1,2884($a0)
    # Line 2254
    sw	$v1,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2253
    sw	$v1,2880($a0)
.L0d9b43b0:
    # Line 2341
    sw	$zero,2896($a0)
    # Line 2337
    li	$a2,4
    # Line 2340
    sw	$a2,2892($a0)
    # Line 2339
    li	$a3,6
    sw	$a3,2884($a0)
    # Line 2338
    sw	$a2,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2337
    sw	$a2,2880($a0)
.L0d9b43d0:
    # Line 2334
    sw	$zero,2896($a0)
    # Line 2331
    li	$a4,4
    # Line 2333
    sw	$a4,2892($a0)
    # Line 2332
    li	$a5,2
    sw	$a5,2884($a0)
    # Line 2331
    sw	$a4,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2330
    sw	$zero,2880($a0)
.L0d9b43f0:
    # Line 2327
    sw	$zero,2896($a0)
    # Line 2324
    li	$a7,4
    # Line 2326
    sw	$a7,2892($a0)
    # Line 2325
    li	$t0,-2
    sw	$t0,2884($a0)
    # Line 2324
    sw	$a7,2888($a0)
    # Line 2323
    li	$a6,-4
    # Line 2347
    jr	$ra
    # Line 2323
    sw	$a6,2880($a0)
.L0d9b4414:
    # Line 2320
    sw	$zero,2896($a0)
    # Line 2319
    li	$t2,2
    sw	$t2,2892($a0)
    # Line 2316
    li	$t1,4
    # Line 2318
    sw	$t1,2884($a0)
    # Line 2317
    sw	$zero,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2316
    sw	$t1,2880($a0)
.L0d9b4434:
    # Line 2313
    sw	$zero,2896($a0)
    # Line 2310
    li	$t3,2
    # Line 2312
    sw	$t3,2892($a0)
    # Line 2311
    sw	$t3,2884($a0)
    # Line 2310
    sw	$t3,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2309
    sw	$zero,2880($a0)
.L0d9b4450:
    # Line 2306
    sw	$zero,2896($a0)
    # Line 2303
    li	$t9,2
    # Line 2305
    sw	$t9,2892($a0)
    # Line 2304
    li	$v0,-2
    sw	$v0,2884($a0)
    # Line 2303
    sw	$t9,2888($a0)
    # Line 2302
    li	$t8,-4
    # Line 2347
    jr	$ra
    # Line 2302
    sw	$t8,2880($a0)
.L0d9b4474:
    # Line 2299
    sw	$zero,2896($a0)
    # Line 2298
    sw	$zero,2892($a0)
    # Line 2297
    li	$v1,2
    sw	$v1,2884($a0)
    # Line 2296
    sw	$zero,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2295
    sw	$zero,2880($a0)
.L0d9b4490:
    # Line 2292
    sw	$zero,2896($a0)
    # Line 2291
    sw	$zero,2892($a0)
    # Line 2290
    li	$a2,-2
    sw	$a2,2884($a0)
    # Line 2289
    sw	$zero,2888($a0)
    # Line 2288
    li	$a1,-4
    # Line 2347
    jr	$ra
    # Line 2288
    sw	$a1,2880($a0)
.L0d9b44b0:
    # Line 2285
    sw	$zero,2896($a0)
    # Line 2284
    li	$a5,-2
    sw	$a5,2892($a0)
    # Line 2281
    li	$a3,4
    # Line 2283
    sw	$a3,2884($a0)
    # Line 2282
    li	$a4,-4
    sw	$a4,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2281
    sw	$a3,2880($a0)
.L0d9b44d4:
    # Line 2278
    sw	$zero,2896($a0)
    # Line 2275
    li	$a6,-2
    # Line 2277
    sw	$a6,2892($a0)
    # Line 2276
    li	$a7,2
    sw	$a7,2884($a0)
    # Line 2275
    sw	$a6,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2274
    sw	$zero,2880($a0)
.L0d9b44f4:
    # Line 2271
    sw	$zero,2896($a0)
    # Line 2268
    li	$t1,-2
    # Line 2270
    sw	$t1,2892($a0)
    # Line 2269
    sw	$t1,2884($a0)
    # Line 2268
    sw	$t1,2888($a0)
    # Line 2267
    li	$t0,-4
    # Line 2347
    jr	$ra
    # Line 2267
    sw	$t0,2880($a0)
.L0d9b4514:
    # Line 2264
    sw	$zero,2896($a0)
    # Line 2261
    li	$t2,-4
    # Line 2263
    sw	$t2,2892($a0)
    # Line 2262
    li	$t3,2
    sw	$t3,2884($a0)
    # Line 2261
    sw	$t2,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2260
    sw	$zero,2880($a0)
.L0d9b4534:
    # Line 2158
    sw	$zero,2896($a0)
    # Line 2157
    sw	$zero,2892($a0)
    # Line 2156
    sw	$zero,2884($a0)
    # Line 2155
    sw	$zero,2888($a0)
    # Line 2154
    li	$t8,-2
    # Line 2347
    jr	$ra
    # Line 2154
    sw	$t8,2880($a0)
.L0d9b4550:
    # Line 2165
    sw	$zero,2896($a0)
    # Line 2164
    sw	$zero,2892($a0)
    # Line 2163
    sw	$a4,2884($a0)
    # Line 2162
    li	$t9,-2
    sw	$t9,2888($a0)
    # Line 2347
    jr	$ra
    # Line 2161
    sw	$a4,2880($a0)
.L0d9b456c:
    # Line 2172
    sw	$zero,2896($a0)
    # Line 2171
    sw	$a4,2892($a0)
    # Line 2170
    sw	$zero,2884($a0)
    # Line 2169
    sw	$a4,2888($a0)
    # Line 2168
    li	$v0,-2
    # Line 2347
    jr	$ra
    # Line 2168
    sw	$v0,2880($a0)
.end __glOdysseyProgram2DOffsets

# Function: __glOdysseyProgramSepOffsets
# Declared: Line 2351 (Source lines: 2355-2418)
# Address: 0x0d9b4590 - 0x0d9b4764 (Size: 468 bytes, Frame: 48)
.globl __glOdysseyProgramSepOffsets
.ent __glOdysseyProgramSepOffsets
__glOdysseyProgramSepOffsets:
    # Line 2355
    lui	$at,0x14
    addiu	$sp,$sp,-48
    addiu	$at,$at,16384
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2359
    ldc1	$f13,_lit8_3fe0000000000000
    # Line 2355
    sd	$a2,16($sp)
    # Line 2359
    cvt.d.s	$f12,$f15
    # lw $t9, -16948($gp) # &floorf
    # Line 2355
    sd	$a0,8($sp)
    # Line 2359
    mul.d	$f12,$f12,$f13
    # Line 2355
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$ra,0($sp)
    # Line 2359
    jal	floorf
    cvt.s.d	$f12,$f12
    # Line 2362
    li	$v0,3
    beqz	$s0,.L0d9b4670
    ld	$ra,0($sp)
    li	$a1,1
    beq	$s0,$a1,.L0d9b4670
    li	$a4,2
    # Line 2373
    ld	$a2,16($sp)
    ld	$a3,16($sp)
    # Line 2362
    beq	$s0,$a4,.L0d9b4624
    # Line 2392
    ld	$v1,16($sp)
    # Line 2362
    bne	$s0,$v0,.L0d9b4614
    # Line 2392
    ld	$a0,16($sp)
    beqz	$v1,.L0d9b46e4
    # Line 2398
    ld	$t8,8($sp)
    # Line 2392
    beq	$a0,$a1,.L0d9b470c
    ld	$a1,16($sp)
    beq	$a1,$a4,.L0d9b46a8
.L0d9b4614:
    # Line 2418
    ld	$gp,32($sp)
.L0d9b4618:
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9b4624:
    # Line 2373
    beqz	$a2,.L0d9b473c
    # Line 2379
    ld	$v1,8($sp)
    # Line 2373
    bne	$a3,$a1,.L0d9b4618
    # Line 2418
    ld	$gp,32($sp)
    ld	$gp,32($sp)
    # Line 2383
    neg.s	$f14,$f0
    # Line 2386
    ld	$a5,8($sp)
    # Line 2418
    ld	$s0,24($sp)
    # Line 2383
    trunc.w.s	$f14,$f14
    # Line 2386
    sw	$zero,2896($a5)
    # Line 2384
    sw	$zero,2884($a5)
    # Line 2383
    mfc1	$a4,$f14
    # Line 2382
    sw	$zero,2880($a5)
    # Line 2418
    addiu	$sp,$sp,48
    # Line 2385
    addiu	$a6,$a4,6
    sw	$a6,2892($a5)
    # Line 2383
    addiu	$a4,$a4,4
    # Line 2418
    jr	$ra
    # Line 2383
    sw	$a4,2888($a5)
.L0d9b4670:
    # Line 2418
    ld	$gp,32($sp)
    # Line 2369
    ld	$t0,8($sp)
    # Line 2366
    neg.s	$f15,$f0
    # Line 2418
    ld	$s0,24($sp)
    # Line 2369
    sw	$zero,2896($t0)
    # Line 2366
    trunc.w.s	$f15,$f15
    # Line 2367
    sw	$zero,2884($t0)
    # Line 2365
    sw	$zero,2880($t0)
    # Line 2366
    mfc1	$a7,$f15
    # Line 2418
    addiu	$sp,$sp,48
    # Line 2366
    swc1	$f15,2888($t0)
    # Line 2368
    addiu	$a7,$a7,2
    # Line 2418
    jr	$ra
    # Line 2368
    sw	$a7,2892($t0)
.L0d9b46a8:
    # Line 2418
    ld	$gp,32($sp)
    # Line 2409
    neg.s	$f16,$f0
    # Line 2412
    ld	$t1,8($sp)
    # Line 2418
    ld	$s0,24($sp)
    # Line 2409
    trunc.w.s	$f16,$f16
    # Line 2412
    sw	$zero,2896($t1)
    # Line 2410
    sw	$zero,2884($t1)
    # Line 2409
    mfc1	$t0,$f16
    # Line 2408
    sw	$zero,2880($t1)
    # Line 2418
    addiu	$sp,$sp,48
    # Line 2411
    addiu	$t2,$t0,10
    sw	$t2,2892($t1)
    # Line 2409
    addiu	$t0,$t0,8
    # Line 2418
    jr	$ra
    # Line 2409
    sw	$t0,2888($t1)
.L0d9b46e4:
    # Line 2395
    neg.s	$f17,$f0
    # Line 2398
    sw	$zero,2896($t8)
    # Line 2395
    trunc.w.s	$f17,$f17
    # Line 2396
    sw	$zero,2884($t8)
    # Line 2394
    sw	$zero,2880($t8)
    # Line 2395
    mfc1	$t3,$f17
    swc1	$f17,2888($t8)
    # Line 2397
    addiu	$t3,$t3,2
    b	.L0d9b4614
    sw	$t3,2892($t8)
.L0d9b470c:
    # Line 2402
    neg.s	$f18,$f0
    # Line 2405
    ld	$t9,8($sp)
    # Line 2402
    trunc.w.s	$f18,$f18
    # Line 2405
    sw	$zero,2896($t9)
    # Line 2403
    sw	$zero,2884($t9)
    # Line 2402
    mfc1	$t8,$f18
    # Line 2401
    sw	$zero,2880($t9)
    # Line 2404
    addiu	$at,$t8,6
    sw	$at,2892($t9)
    # Line 2402
    addiu	$t8,$t8,4
    # Line 2406
    b	.L0d9b4614
    # Line 2402
    sw	$t8,2888($t9)
.L0d9b473c:
    # Line 2376
    neg.s	$f19,$f0
    # Line 2379
    sw	$zero,2896($v1)
    # Line 2376
    trunc.w.s	$f19,$f19
    # Line 2377
    sw	$zero,2884($v1)
    # Line 2375
    sw	$zero,2880($v1)
    # Line 2376
    mfc1	$v0,$f19
    swc1	$f19,2888($v1)
    # Line 2378
    addiu	$v0,$v0,2
    b	.L0d9b4614
    sw	$v0,2892($v1)
.end __glOdysseyProgramSepOffsets

# Function: __glOdysseyGenericConvolution
# Declared: Line 2426 (Source lines: 2432-2667)
# Address: 0x0d9b4770 - 0x0d9b5360 (Size: 3056 bytes, Frame: 224)
.globl __glOdysseyGenericConvolution
.ent __glOdysseyGenericConvolution
__glOdysseyGenericConvolution:
    # Line 2432
    addiu	$sp,$sp,-224
    sd	$a5,16($sp)
    sd	$a2,88($sp)
    lui	$at,0x14
    sd	$a1,112($sp)
    addiu	$at,$at,15904
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2438
    ldc1	$f13,_lit8_3fe0000000000000
    # Line 2432
    sdc1	$f15,0($sp)
    # Line 2438
    cvt.d.s	$f12,$f15
    # lw $t9, -16948($gp) # &floorf
    # Line 2432
    sdc1	$f20,8($sp)
    # Line 2438
    mul.d	$f12,$f12,$f13
    # Line 2432
    mov.s	$f20,$f16
    sd	$s2,24($sp)
    move	$s2,$a0
    sd	$ra,32($sp)
    # Line 2438
    jal	floorf
    cvt.s.d	$f12,$f12
    # Line 2439
    ldc1	$f14,_lit8_3fe0000000000000
    cvt.d.s	$f12,$f20
    # lw $t9, -16948($gp) # &floorf
    # Line 2438
    trunc.w.s	$f13,$f0
    # Line 2439
    mul.d	$f12,$f12,$f14
    sd	$s4,136($sp)
    # Line 2438
    mfc1	$v0,$f13
    sd	$v0,104($sp)
    # Line 2439
    jal	floorf
    cvt.s.d	$f12,$f12
    # Line 2449
    ldc1	$f16,0($sp)
    trunc.w.s	$f15,$f20
    trunc.w.s	$f16,$f16
    mfc1	$a0,$f15
    mfc1	$s4,$f16
    beq	$s4,$a0,.L0d9b52e8
    sd	$s6,128($sp)
    # Line 2450
    addu	$a5,$s4,$s4
.L0d9b4808:
    sd	$a5,72($sp)
    sd	$s5,144($sp)
    sd	$s1,152($sp)
    sd	$s0,160($sp)
    sd	$s7,168($sp)
    sd	$s8,176($sp)
    sd	$s3,184($sp)
    mult	$s4,$a0
    sll	$a3,$s4,0x2
    sd	$a3,56($sp)
    ld	$a4,88($sp)
    trunc.w.s	$f17,$f0
    subu	$a3,$a3,$s4
    sd	$a3,64($sp)
    mtc1	$zero,$f20
    slt	$a4,$zero,$a4
    sd	$a4,48($sp)
    mfc1	$v1,$f17
    move	$s6,$zero
    move	$a2,$zero
    sd	$v1,96($sp)
    mflo	$a1
    b	.L0d9b4878
    sd	$a1,80($sp)
.L0d9b4868:
    # Line 2453
    li	$a6,4
    addiu	$s6,$s6,1
    beq	$s6,$a6,.L0d9b50ec
    addiu	$a2,$a2,148
.L0d9b4878:
    # Line 2454
    ld	$a7,48($sp)
    ld	$a1,56($sp)
    move	$s1,$zero
    move	$s5,$s4
    ld	$s8,72($sp)
    ld	$s7,64($sp)
    move	$a5,$zero
    move	$s3,$zero
.L0d9b4898:
    # Line 2455
    beqz	$a7,.L0d9b4868
    move	$s0,$zero
    b	.L0d9b5340
    # Line 2458
    mtc1	$s3,$f0
.L0d9b48a8:
    # Line 2461
    addu	$t1,$a3,$s0
    sll	$t1,$t1,0x2
    addu	$t1,$s6,$t1
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lwc1	$f23,0($t0)
    addu	$t3,$a2,$a0
    swc1	$f23,0($t3)
    # Line 2463
    lw	$t2,20($s2)
    lwc1	$f21,16($t0)
    addu	$t2,$t2,$s1
    addu	$t2,$a2,$t2
    swc1	$f21,4($t2)
    # Line 2465
    lw	$t1,20($s2)
    lwc1	$f19,32($t0)
    addu	$t1,$t1,$s1
    addu	$t1,$a2,$t1
    swc1	$f19,16($t1)
    # Line 2467
    lw	$a7,20($s2)
    lwc1	$f18,48($t0)
    addu	$a7,$a7,$s1
    ld	$a4,80($sp)
    addu	$a7,$a2,$a7
    swc1	$f18,20($a7)
    slt	$a4,$s5,$a4
    lw	$a0,20($s2)
    addiu	$t0,$a6,2
    move	$a7,$s5
    # Line 2475
    ld	$t3,112($sp)
    # Line 2467
    beqz	$a4,.L0d9b4dc0
    addu	$a0,$a0,$s1
    # Line 2471
    sw	$t0,2884($a0)
    # Line 2472
    lw	$t9,20($s2)
    # Line 2474
    addu	$s3,$s4,$a3
    # Line 2475
    addu	$s3,$s3,$s0
    # Line 2472
    addu	$t9,$t9,$s1
    # Line 2475
    sll	$s3,$s3,0x2
    # Line 2472
    lw	$t8,2888($t9)
    # Line 2475
    addu	$s3,$s6,$s3
    # Line 2472
    sw	$t8,2892($t9)
    # Line 2475
    lw	$t9,20($s2)
    sll	$s3,$s3,0x2
    addu	$t3,$t3,$s3
    lwc1	$f31,0($t3)
    addu	$t9,$t9,$s1
    addu	$t9,$a2,$t9
    swc1	$f31,8($t9)
    # Line 2477
    lw	$t8,20($s2)
    lwc1	$f29,16($t3)
    addu	$t8,$t8,$s1
    addu	$t8,$a2,$t8
    swc1	$f29,12($t8)
    # Line 2479
    lw	$s3,20($s2)
    lwc1	$f27,32($t3)
    addu	$s3,$s3,$s1
    addu	$s3,$a2,$s3
    swc1	$f27,24($s3)
    # Line 2481
    lw	$t2,20($s2)
    lwc1	$f25,48($t3)
    addu	$t2,$t2,$s1
    addu	$t2,$a2,$t2
    # Line 2483
    move	$s3,$a3
    # Line 2481
    swc1	$f25,28($t2)
.L0d9b49a4:
    # Line 2498
    addiu	$a5,$a5,1
    # Line 2496
    ld	$t8,72($sp)
    # Line 2490
    addiu	$s0,$s0,4
    # Line 2498
    addiu	$a6,$s1,2912
    # Line 2490
    slt	$v1,$s0,$s4
    # Line 2496
    addu	$v0,$a7,$t8
    movz	$s0,$zero,$v1
    addu	$ra,$s8,$t8
    movz	$s5,$v0,$s0
    # Line 2498
    sd	$a5,120($sp)
    # Line 2496
    addu	$t9,$s7,$t8
    movz	$s8,$ra,$s0
    # Line 2498
    sd	$a5,192($sp)
    # Line 2496
    addu	$at,$a1,$t8
    movz	$s7,$t9,$s0
    sd	$a2,200($sp)
    addu	$t8,$a3,$t8
    movz	$a1,$at,$s0
    # Line 2498
    move	$s1,$a6
    sd	$a1,208($sp)
    movz	$s3,$t8,$s0
.L0d9b49f8:
    # Line 2659
    # lw $t9, -31212($gp) # &__glOdysseyProgramGenericConvolutionFilter
    lw	$a0,20($s2)
    move	$a2,$s6
    move	$a1,$s2
    addu	$a0,$a0,$a6
    bal __glOdysseyProgramGenericConvolutionFilter
    addiu	$a0,$a0,-2912
    ld	$t0,88($sp)
    # Line 2458
    mtc1	$s4,$f1
    # Line 2659
    ld	$a7,120($sp)
    # Line 2458
    mtc1	$s3,$f0
    # Line 2605
    addu	$v0,$s3,$s0
    ld	$a1,208($sp)
    # Line 2528
    addiu	$at,$s0,1
    # Line 2659
    slt	$a7,$a7,$t0
    ld	$a2,200($sp)
    # Line 2458
    addiu	$a4,$s0,3
    # Line 2528
    slt	$at,$at,$s4
    ld	$a5,192($sp)
    # Line 2659
    beqz	$a7,.L0d9b4868
    # Line 2458
    slt	$a4,$a4,$s4
    cvt.d.w	$f1,$f1
.L0d9b4a50:
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    # Line 2457
    lw	$t2,20($s2)
    ld	$a6,104($sp)
    # Line 2503
    ld	$t8,112($sp)
    # Line 2457
    addu	$t2,$t2,$s1
    subu	$a6,$s0,$a6
    sw	$a6,2880($t2)
    # Line 2458
    trunc.w.d	$f0,$f0
    lw	$t1,20($s2)
    ld	$t2,96($sp)
    mfc1	$t0,$f0
    # Line 2570
    ld	$ra,80($sp)
    # Line 2458
    addu	$t1,$t1,$s1
    subu	$t0,$t0,$t2
    sw	$t0,2888($t1)
    lw	$a0,20($s2)
    teq	$s4,$zero,0x7
    move	$a3,$s3
    # Line 2509
    ld	$t1,80($sp)
    # Line 2461
    ld	$t0,112($sp)
    # Line 2458
    bnez	$a4,.L0d9b48a8
    addu	$a0,$a0,$s1
    # Line 2509
    slt	$t1,$s5,$t1
    # Line 2498
    addiu	$t3,$s0,2
    slt	$t3,$t3,$s4
    beqz	$t3,.L0d9b4bd8
    # Line 2655
    ld	$a4,72($sp)
    # Line 2500
    addiu	$v0,$a6,2
    sw	$v0,2884($a0)
    # Line 2501
    lw	$at,20($s2)
    # Line 2503
    addu	$t9,$s3,$s0
    # Line 2501
    addu	$at,$at,$s1
    # Line 2503
    sll	$t9,$t9,0x2
    # Line 2501
    lw	$ra,2888($at)
    # Line 2503
    addu	$t9,$s6,$t9
    # Line 2501
    sw	$ra,2892($at)
    # Line 2503
    sll	$t9,$t9,0x2
    lw	$ra,20($s2)
    addu	$t8,$t8,$t9
    lwc1	$f3,0($t8)
    addu	$ra,$ra,$s1
    addu	$ra,$a2,$ra
    swc1	$f3,0($ra)
    # Line 2505
    lw	$t9,20($s2)
    lwc1	$f2,16($t8)
    addu	$t9,$t9,$s1
    addu	$t9,$a2,$t9
    swc1	$f2,4($t9)
    # Line 2507
    lw	$t3,20($s2)
    lwc1	$f1,32($t8)
    addu	$t3,$t3,$s1
    addu	$t3,$a2,$t3
    swc1	$f1,16($t3)
    # Line 2509
    lw	$t2,20($s2)
    addu	$t2,$t2,$s1
    addu	$t2,$a2,$t2
    swc1	$f20,20($t2)
    lw	$t0,20($s2)
    # Line 2528
    addiu	$a5,$a5,1
    addiu	$a6,$s1,2912
    # Line 2509
    addu	$t0,$t0,$s1
    # Line 2513
    ld	$t9,112($sp)
    # Line 2509
    beqz	$t1,.L0d9b4d74
    addu	$t0,$a2,$t0
    # Line 2512
    addu	$s3,$s4,$s3
    # Line 2513
    addu	$ra,$s3,$s0
    sll	$ra,$ra,0x2
    addu	$ra,$s6,$ra
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lwc1	$f6,0($t9)
    swc1	$f6,8($t0)
    # Line 2515
    lw	$ra,20($s2)
    lwc1	$f5,16($t9)
    addu	$ra,$ra,$s1
    addu	$ra,$a2,$ra
    swc1	$f5,12($ra)
    # Line 2517
    lw	$t8,20($s2)
    lwc1	$f4,32($t9)
    addu	$t8,$t8,$s1
    # Line 2512
    addu	$s7,$s4,$s7
    # Line 2517
    addu	$t8,$a2,$t8
    # Line 2512
    addu	$s8,$s4,$s8
    addu	$s5,$s4,$s5
    # Line 2517
    swc1	$f4,24($t8)
    # Line 2512
    addu	$a1,$s4,$a1
    # Line 2520
    addu	$s5,$s4,$s5
    # Line 2519
    lw	$v1,20($s2)
    # Line 2520
    addu	$a1,$s4,$a1
    addu	$s8,$s4,$s8
    addu	$s7,$s4,$s7
    # Line 2519
    addu	$v1,$v1,$s1
    # Line 2520
    addu	$s3,$s4,$s3
    # Line 2519
    addu	$v1,$a2,$v1
    # Line 2520
    move	$s0,$zero
    b	.L0d9b4da8
    # Line 2519
    swc1	$f20,28($v1)
.L0d9b4bd8:
    # Line 2600
    sra	$t9,$s3,0x1f
    # Line 2542
    ld	$t3,112($sp)
    # Line 2528
    beqz	$at,.L0d9b4e18
    # Line 2656
    addiu	$a6,$s1,2912
    # Line 2530
    lw	$t2,2880($a0)
    sw	$t2,2884($a0)
    # Line 2532
    lw	$t1,20($s2)
    addu	$t1,$t1,$s1
    # Line 2534
    addu	$a6,$s3,$s0
    # Line 2532
    lw	$t0,2888($t1)
    # Line 2534
    ld	$a4,112($sp)
    sll	$a6,$a6,0x2
    addu	$a6,$s6,$a6
    # Line 2532
    addiu	$t0,$t0,2
    sw	$t0,2892($t1)
    # Line 2534
    sll	$a6,$a6,0x2
    lw	$t0,20($s2)
    addu	$a4,$a4,$a6
    # Line 2536
    sra	$a6,$s3,0x1f
    # Line 2534
    lwc1	$f8,0($a4)
    addu	$t0,$t0,$s1
    # Line 2536
    xor	$v1,$s3,$a6
    # Line 2534
    addu	$t0,$a2,$t0
    # Line 2536
    subu	$v1,$v1,$a6
    # Line 2534
    swc1	$f8,0($t0)
    # Line 2536
    andi	$v1,$v1,0x7
    lw	$v0,20($s2)
    ld	$t1,80($sp)
    xor	$v1,$v1,$a6
    subu	$v1,$v1,$a6
    lwc1	$f7,16($a4)
    addu	$v0,$v0,$s1
    addu	$v0,$a2,$v0
    slt	$t1,$s7,$t1
    bnez	$v1,.L0d9b4fe8
    swc1	$f7,4($v0)
    lw	$t0,20($s2)
    # Line 2590
    addiu	$a5,$a5,1
    # Line 2536
    addu	$t0,$t0,$s1
    # Line 2556
    ld	$a7,80($sp)
    # Line 2536
    beqz	$t1,.L0d9b5020
    addu	$t0,$a2,$t0
    # Line 2541
    addu	$s3,$s4,$s3
    # Line 2542
    addu	$v1,$s3,$s0
    sll	$v1,$v1,0x2
    addu	$v1,$s6,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$t3,$v1
    lwc1	$f14,0($v1)
    swc1	$f14,8($t0)
    # Line 2544
    lw	$v0,20($s2)
    # Line 2546
    addu	$s3,$s4,$s3
    # Line 2547
    addu	$at,$s3,$s0
    # Line 2544
    lwc1	$f13,16($v1)
    addu	$v0,$v0,$s1
    # Line 2547
    sll	$at,$at,0x2
    # Line 2544
    addu	$v0,$a2,$v0
    # Line 2547
    addu	$at,$s6,$at
    # Line 2544
    swc1	$f13,12($v0)
    # Line 2547
    sll	$at,$at,0x2
    lw	$ra,20($s2)
    addu	$at,$t3,$at
    lwc1	$f12,0($at)
    addu	$ra,$ra,$s1
    addu	$ra,$a2,$ra
    swc1	$f12,16($ra)
    # Line 2549
    lw	$ra,20($s2)
    # Line 2552
    addu	$t9,$s4,$s3
    addu	$t9,$s0,$t9
    # Line 2549
    lwc1	$f11,16($at)
    addu	$ra,$ra,$s1
    # Line 2552
    sll	$t9,$t9,0x2
    # Line 2549
    addu	$ra,$a2,$ra
    # Line 2552
    addu	$t9,$s6,$t9
    # Line 2549
    swc1	$f11,20($ra)
    # Line 2552
    sll	$t9,$t9,0x2
    lw	$t8,20($s2)
    addu	$t3,$t3,$t9
    lwc1	$f10,0($t3)
    addu	$t8,$t8,$s1
    addu	$t8,$a2,$t8
    swc1	$f10,24($t8)
    # Line 2541
    addu	$s7,$s4,$s7
    addu	$s8,$s4,$s8
    # Line 2554
    lw	$t2,20($s2)
    # Line 2541
    addu	$a1,$s4,$a1
    addu	$s5,$s4,$s5
    # Line 2546
    addu	$s5,$s4,$s5
    # Line 2554
    lwc1	$f9,16($t3)
    addu	$t2,$t2,$s1
    # Line 2546
    addu	$a1,$s4,$a1
    # Line 2554
    addu	$t2,$a2,$t2
    # Line 2546
    addu	$s8,$s4,$s8
    addu	$s7,$s4,$s7
    # Line 2554
    swc1	$f9,28($t2)
.L0d9b4d54:
    # Line 2590
    sd	$a5,120($sp)
    sd	$a5,192($sp)
    # Line 2589
    move	$s0,$zero
    sd	$a2,200($sp)
    # Line 2590
    addiu	$a6,$s1,2912
    sd	$a1,208($sp)
    # Line 2589
    b	.L0d9b49f8
    # Line 2590
    move	$s1,$a6
.L0d9b4d74:
    # Line 2523
    swc1	$f20,28($t0)
    lw	$a4,20($s2)
    addu	$a4,$a4,$s1
    addu	$a4,$a2,$a4
    swc1	$f20,24($a4)
    lw	$a3,20($s2)
    addu	$a3,$a3,$s1
    addu	$a3,$a2,$a3
    swc1	$f20,12($a3)
    lw	$a0,20($s2)
    addu	$a0,$a0,$s1
    addu	$a0,$a2,$a0
    swc1	$f20,8($a0)
.L0d9b4da8:
    # Line 2528
    sd	$a5,120($sp)
    sd	$a5,192($sp)
    sd	$a2,200($sp)
    sd	$a1,208($sp)
    b	.L0d9b49f8
    move	$s1,$a6
.L0d9b4dc0:
    # Line 2485
    addu	$ra,$a2,$a0
    swc1	$f20,28($ra)
    lw	$t9,20($s2)
    addu	$t9,$t9,$s1
    addu	$t9,$a2,$t9
    swc1	$f20,24($t9)
    lw	$t8,20($s2)
    addu	$t8,$t8,$s1
    addu	$t8,$a2,$t8
    swc1	$f20,12($t8)
    lw	$t3,20($s2)
    addu	$t3,$t3,$s1
    addu	$t3,$a2,$t3
    swc1	$f20,8($t3)
    # Line 2489
    lw	$t2,20($s2)
    addu	$t2,$t2,$s1
    sw	$t0,2884($t2)
    # Line 2490
    lw	$t1,20($s2)
    addu	$t1,$t1,$s1
    lw	$a6,2888($t1)
    b	.L0d9b49a4
    sw	$a6,2892($t1)
.L0d9b4e18:
    # Line 2595
    lw	$t0,2888($a0)
    slt	$t1,$s0,$s4
    # Line 2605
    ld	$at,112($sp)
    # Line 2595
    beqz	$t1,.L0d9b4fa0
    addiu	$t0,$t0,2
    # Line 2605
    sll	$v0,$v0,0x2
    # Line 2598
    sw	$t0,2892($a0)
    # Line 2600
    lw	$t3,20($s2)
    xor	$t8,$s3,$t9
    subu	$t8,$t8,$t9
    # Line 2626
    ld	$t1,80($sp)
    # Line 2600
    addu	$t3,$t3,$s1
    andi	$t8,$t8,0x3
    # Line 2605
    addu	$v0,$s6,$v0
    # Line 2600
    lw	$t2,2880($t3)
    xor	$t8,$t8,$t9
    # Line 2605
    sll	$v0,$v0,0x2
    # Line 2600
    subu	$t8,$t8,$t9
    # Line 2605
    ld	$t9,80($sp)
    # Line 2626
    slt	$t1,$s8,$t1
    # Line 2605
    addu	$at,$at,$v0
    # Line 2600
    sw	$t2,2884($t3)
    # Line 2608
    ld	$t3,112($sp)
    # Line 2600
    bnez	$t8,.L0d9b5004
    # Line 2605
    slt	$t9,$t9,$a1
    # Line 2610
    ld	$a4,72($sp)
    # Line 2605
    lw	$ra,20($s2)
    lwc1	$f15,0($at)
    # Line 2608
    addu	$at,$s4,$s0
    # Line 2623
    addu	$a7,$s4,$s0
    # Line 2605
    addu	$ra,$ra,$s1
    # Line 2623
    sll	$a7,$a7,0x2
    # Line 2605
    addu	$ra,$a2,$ra
    # Line 2608
    sll	$at,$at,0x2
    # Line 2623
    addu	$a7,$s6,$a7
    # Line 2605
    swc1	$f15,0($ra)
    # Line 2608
    addu	$at,$s6,$at
    # Line 2605
    bnez	$t9,.L0d9b51b4
    lw	$a0,20($s2)
    # Line 2608
    sll	$at,$at,0x2
    addu	$at,$t3,$at
    addu	$ra,$s1,$a0
    lwc1	$f18,0($at)
    # Line 2610
    addu	$t9,$a4,$s0
    # Line 2608
    addu	$ra,$a2,$ra
    # Line 2610
    sll	$t9,$t9,0x2
    # Line 2608
    swc1	$f18,8($ra)
    # Line 2610
    addu	$t9,$s6,$t9
    lw	$t8,20($s2)
    sll	$t9,$t9,0x2
    # Line 2612
    ld	$ra,64($sp)
    # Line 2610
    addu	$t9,$t3,$t9
    lwc1	$f17,0($t9)
    addu	$t8,$t8,$s1
    # Line 2612
    addu	$s0,$ra,$s0
    # Line 2610
    addu	$t8,$a2,$t8
    # Line 2612
    sll	$s0,$s0,0x2
    # Line 2610
    swc1	$f17,16($t8)
    # Line 2612
    addu	$s0,$s6,$s0
    lw	$t2,20($s2)
    sll	$s0,$s0,0x2
    addu	$t3,$t3,$s0
    addu	$t2,$t2,$s1
    lwc1	$f16,0($t3)
    addu	$t2,$a2,$t2
    swc1	$f16,24($t2)
    # Line 2614
    lw	$t1,20($s2)
    addu	$t1,$t1,$s1
    addu	$t1,$a2,$t1
    swc1	$f20,4($t1)
    # Line 2615
    lw	$t0,20($s2)
    addu	$t0,$t0,$s1
    addu	$t0,$a2,$t0
    swc1	$f20,12($t0)
    # Line 2616
    lw	$a6,20($s2)
    addu	$a6,$a6,$s1
    sd	$a2,200($sp)
    addu	$a6,$a2,$a6
    # Line 2619
    addu	$s5,$s5,$a4
    addu	$s8,$s8,$a4
    # Line 2616
    swc1	$f20,20($a6)
    # Line 2619
    addu	$s7,$s7,$a4
    # Line 2620
    addiu	$a5,$a5,1
    # Line 2617
    lw	$v1,20($s2)
    # Line 2620
    sd	$a5,120($sp)
    # Line 2619
    addu	$s3,$s3,$a4
    addu	$a1,$a1,$a4
    # Line 2620
    sd	$a5,192($sp)
    move	$s0,$zero
    # Line 2617
    addu	$v1,$v1,$s1
    # Line 2619
    sd	$a1,208($sp)
    # Line 2620
    addiu	$a6,$s1,2912
    # Line 2617
    addu	$v1,$a2,$v1
    # Line 2620
    move	$s1,$a6
    b	.L0d9b49f8
    # Line 2617
    swc1	$f20,28($v1)
    nop
    nop
.L0d9b4fa0:
    # Line 2656
    addiu	$a5,$a5,1
    sd	$a5,120($sp)
    sd	$a5,192($sp)
    # Line 2649
    sw	$t0,2892($a0)
    # Line 2656
    move	$s0,$zero
    # Line 2651
    lw	$v1,20($s2)
    # Line 2655
    addu	$s5,$s5,$a4
    sd	$a2,200($sp)
    addu	$s8,$s8,$a4
    addu	$a1,$a1,$a4
    sd	$a1,208($sp)
    # Line 2651
    addu	$v1,$v1,$s1
    # Line 2655
    addu	$s7,$s7,$a4
    addu	$s3,$s3,$a4
    # Line 2651
    lw	$v0,2880($v1)
    # Line 2656
    move	$s1,$a6
    b	.L0d9b49f8
    # Line 2651
    sw	$v0,2884($v1)
.L0d9b4fe8:
    # Line 2593
    ld	$a0,72($sp)
    addu	$s5,$s5,$a0
    addu	$a1,$a1,$a0
    addu	$s8,$s8,$a0
    addu	$s7,$s7,$a0
    # Line 2595
    b	.L0d9b4898
    # Line 2593
    addu	$s3,$s3,$a0
.L0d9b5004:
    # Line 2643
    ld	$a4,72($sp)
    addu	$s5,$s5,$a4
    addu	$a1,$a1,$a4
    addu	$s8,$s8,$a4
    addu	$s7,$s7,$a4
    # Line 2645
    b	.L0d9b4898
    # Line 2643
    addu	$s3,$s3,$a4
.L0d9b5020:
    # Line 2570
    slt	$ra,$s5,$ra
    # Line 2556
    slt	$a7,$s8,$a7
    # Line 2573
    ld	$t2,112($sp)
    # Line 2556
    beqz	$a7,.L0d9b5124
    # Line 2560
    ld	$t1,112($sp)
    # Line 2559
    addu	$s3,$s4,$s3
    # Line 2560
    addu	$t9,$s3,$s0
    sll	$t9,$t9,0x2
    addu	$t9,$s6,$t9
    sll	$t9,$t9,0x2
    addu	$t9,$t1,$t9
    lwc1	$f25,0($t9)
    swc1	$f25,8($t0)
    # Line 2562
    lw	$t8,20($s2)
    # Line 2564
    addu	$s3,$s4,$s3
    # Line 2565
    addu	$t3,$s3,$s0
    # Line 2562
    lwc1	$f23,16($t9)
    addu	$t8,$t8,$s1
    # Line 2565
    sll	$t3,$t3,0x2
    # Line 2562
    addu	$t8,$a2,$t8
    # Line 2565
    addu	$t3,$s6,$t3
    # Line 2562
    swc1	$f23,12($t8)
    # Line 2565
    sll	$t3,$t3,0x2
    lw	$t2,20($s2)
    addu	$t1,$t1,$t3
    lwc1	$f21,0($t1)
    addu	$t2,$t2,$s1
    addu	$t2,$a2,$t2
    swc1	$f21,16($t2)
    # Line 2567
    lw	$a7,20($s2)
    lwc1	$f19,16($t1)
    addu	$a7,$a7,$s1
    addu	$a7,$a2,$a7
    swc1	$f19,20($a7)
    # Line 2569
    lw	$a4,20($s2)
    addu	$a4,$a4,$s1
    addu	$a4,$a2,$a4
    # Line 2559
    addu	$s7,$s4,$s7
    # Line 2569
    swc1	$f20,24($a4)
    # Line 2559
    addu	$s8,$s4,$s8
    addu	$s5,$s4,$s5
    # Line 2570
    lw	$t1,20($s2)
    # Line 2559
    addu	$a1,$s4,$a1
    # Line 2564
    addu	$s5,$s4,$s5
    addu	$a1,$s4,$a1
    # Line 2570
    addu	$t1,$t1,$s1
    # Line 2564
    addu	$s8,$s4,$s8
    # Line 2570
    addu	$t1,$a2,$t1
    # Line 2564
    addu	$s7,$s4,$s7
    # Line 2570
    b	.L0d9b4d54
    swc1	$f20,28($t1)
.L0d9b50ec:
    ld	$s3,184($sp)
    ld	$s8,176($sp)
    ld	$s7,168($sp)
    ld	$s0,160($sp)
    ld	$s1,152($sp)
    ld	$s5,144($sp)
    ld	$s2,24($sp)
.L0d9b5108:
    ld	$s6,128($sp)
    ld	$ra,32($sp)
    ld	$s4,136($sp)
    ldc1	$f20,8($sp)
    # Line 2667
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9b5124:
    # Line 2570
    beqz	$ra,.L0d9b5290
    nop
    # Line 2572
    addu	$s3,$s4,$s3
    # Line 2573
    addu	$t3,$s3,$s0
    sll	$t3,$t3,0x2
    addu	$t3,$s6,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lwc1	$f29,0($t2)
    swc1	$f29,8($t0)
    # Line 2575
    lw	$t1,20($s2)
    lwc1	$f27,16($t2)
    addu	$t1,$t1,$s1
    addu	$t1,$a2,$t1
    swc1	$f27,12($t1)
    # Line 2577
    lw	$a4,20($s2)
    addu	$a4,$a4,$s1
    addu	$a4,$a2,$a4
    swc1	$f20,28($a4)
    lw	$v1,20($s2)
    addu	$v1,$v1,$s1
    addu	$v1,$a2,$v1
    swc1	$f20,24($v1)
    lw	$v0,20($s2)
    addu	$v0,$v0,$s1
    addu	$v0,$a2,$v0
    swc1	$f20,20($v0)
    lw	$at,20($s2)
    # Line 2572
    addu	$s5,$s4,$s5
    addu	$a1,$s4,$a1
    # Line 2577
    addu	$at,$at,$s1
    # Line 2572
    addu	$s8,$s4,$s8
    # Line 2577
    addu	$at,$a2,$at
    # Line 2572
    addu	$s7,$s4,$s7
    # Line 2577
    b	.L0d9b4d54
    swc1	$f20,16($at)
.L0d9b51b4:
    # Line 2623
    ld	$a6,112($sp)
    # Line 2620
    ld	$a4,80($sp)
    # Line 2623
    sll	$a7,$a7,0x2
    # Line 2620
    slt	$a4,$s5,$a4
    # Line 2639
    addiu	$a5,$a5,1
    # Line 2620
    addu	$a3,$s1,$a0
    beqz	$a4,.L0d9b51e4
    addu	$a3,$a2,$a3
    # Line 2623
    addu	$a6,$a6,$a7
    lwc1	$f31,0($a6)
    b	.L0d9b51e8
    swc1	$f31,8($a3)
.L0d9b51e4:
    # Line 2626
    swc1	$f20,8($a3)
.L0d9b51e8:
    lw	$t0,20($s2)
    # Line 2639
    addiu	$a6,$s1,2912
    # Line 2626
    addu	$t0,$t0,$s1
    beqz	$t1,.L0d9b5224
    addu	$t0,$a2,$t0
    # Line 2629
    ld	$t2,112($sp)
    ld	$t3,72($sp)
    addu	$t3,$t3,$s0
    sll	$t3,$t3,0x2
    addu	$t3,$s6,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lwc1	$f0,0($t2)
    b	.L0d9b5228
    swc1	$f0,16($t0)
.L0d9b5224:
    # Line 2632
    swc1	$f20,16($t0)
.L0d9b5228:
    # Line 2634
    lw	$v0,20($s2)
    addu	$v0,$v0,$s1
    addu	$v0,$a2,$v0
    swc1	$f20,4($v0)
    # Line 2635
    lw	$at,20($s2)
    addu	$at,$at,$s1
    addu	$at,$a2,$at
    swc1	$f20,12($at)
    # Line 2636
    lw	$ra,20($s2)
    addu	$ra,$ra,$s1
    addu	$ra,$a2,$ra
    swc1	$f20,20($ra)
    # Line 2637
    lw	$t9,20($s2)
    addu	$t9,$t9,$s1
    sd	$a2,200($sp)
    addu	$t9,$a2,$t9
    swc1	$f20,24($t9)
    # Line 2638
    lw	$t8,20($s2)
    # Line 2639
    sd	$a5,120($sp)
    sd	$a5,192($sp)
    # Line 2638
    addu	$t8,$t8,$s1
    sd	$a1,208($sp)
    addu	$t8,$a2,$t8
    # Line 2639
    move	$s1,$a6
    b	.L0d9b49f8
    # Line 2638
    swc1	$f20,28($t8)
.L0d9b5290:
    # Line 2582
    swc1	$f20,28($t0)
    lw	$a6,20($s2)
    addu	$a6,$a6,$s1
    addu	$a6,$a2,$a6
    swc1	$f20,24($a6)
    lw	$a4,20($s2)
    addu	$a4,$a4,$s1
    addu	$a4,$a2,$a4
    swc1	$f20,20($a4)
    lw	$a3,20($s2)
    addu	$a3,$a3,$s1
    addu	$a3,$a2,$a3
    swc1	$f20,16($a3)
    lw	$a0,20($s2)
    addu	$a0,$a0,$s1
    addu	$a0,$a2,$a0
    swc1	$f20,12($a0)
    lw	$v1,20($s2)
    addu	$v1,$v1,$s1
    addu	$v1,$a2,$v1
    b	.L0d9b4d54
    swc1	$f20,8($v1)
.L0d9b52e8:
    # Line 2449
    sra	$t0,$s4,0x1f
    xor	$a7,$s4,$t0
    subu	$a7,$a7,$t0
    andi	$a7,$a7,0x1
    xor	$a7,$a7,$t0
    subu	$a7,$a7,$t0
    beqz	$a7,.L0d9b4808
    # Line 2450
    addu	$a5,$s4,$s4
    # Line 2449
    slti	$t0,$s4,11
    beqz	$t0,.L0d9b4808
    # Line 2450
    addu	$a5,$s4,$s4
    # Line 2449
    slti	$t1,$s4,2
    bnez	$t1,.L0d9b4808
    # Line 2450
    addu	$a5,$s4,$s4
    # lw $t9, -31240($gp) # &__glOdysseyMap2DFilterToAlphas
    ld	$a1,112($sp)
    ld	$a2,88($sp)
    move	$a0,$s2
    bal __glOdysseyMap2DFilterToAlphas
    ld	$a3,16($sp)
    b	.L0d9b5108
    ld	$s2,24($sp)
.L0d9b5340:
    # Line 2458
    mtc1	$s4,$f1
    # Line 2605
    addu	$v0,$s3,$s0
    # Line 2528
    addiu	$at,$s0,1
    # Line 2458
    addiu	$a4,$s0,3
    slt	$a4,$a4,$s4
    # Line 2528
    slt	$at,$at,$s4
    b	.L0d9b4a50
    # Line 2458
    cvt.d.w	$f1,$f1
.end __glOdysseyGenericConvolution

# Function: ConvertToLerps
# Declared: Line 2682 (Source lines: 2683-2840)
# Address: 0x0d9b5360 - 0x0d9b5ab0 (Size: 1872 bytes, Frame: 16)
.ent ConvertToLerps
ConvertToLerps:
    # Line 2692
    lwc1	$f13,0($a0)
    dmtc1	$zero,$f9
    cvt.d.s	$f0,$f13
    c.lt.d	$f0,$f9
    # Line 2683
    addiu	$sp,$sp,-16
    # Line 2692
    bc1f	.L0d9b5404
    lwc1	$f5,4($a0)
    cvt.d.s	$f1,$f5
    c.lt.d $f1,$f9
    bc1f .L0d9b5800
    lwc1	$f10,8($a0)
    cvt.d.s	$f2,$f10
    c.lt.d $f2,$f9
    bc1f .L0d9b59bc
    lwc1	$f6,12($a0)
    cvt.d.s	$f3,$f6
    c.lt.d $f3,$f9
    bc1f .L0d9b59d8
    lwc1	$f11,16($a0)
    cvt.d.s	$f4,$f11
    c.lt.d $f4,$f9
    lwc1	$f8,28($a0)
    lwc1	$f12,24($a0)
    li	$a3,1
    move	$a2,$zero
    bc1f .L0d9b5a10
    lwc1	$f7,20($a0)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f9
    bc1f .L0d9b5a60
    lwc1	$f12,24($a0)
    cvt.d.s	$f14,$f12
    c.lt.d $f14,$f9
    bc1f .L0d9b5a70
    lwc1	$f8,28($a0)
    cvt.d.s	$f15,$f8
    c.lt.d $f15,$f9
    li	$a3,1
    move	$a2,$a3
    b	.L0d9b5424
    movf	$a2,$zero,$fcc7
.L0d9b5404:
    lwc1	$f8,28($a0)
    lwc1	$f12,24($a0)
    lwc1	$f7,20($a0)
    lwc1	$f11,16($a0)
    lwc1	$f6,12($a0)
    li	$a3,1
    move	$a2,$zero
    lwc1	$f10,8($a0)
.L0d9b5424:
    # Line 2701
    abs.s	$f16,$f5
.L0d9b5428:
    abs.s	$f14,$f13
    mtc1	$zero,$f4
    add.s	$f14,$f16,$f14
    c.eq.s	$f14,$f4
    bc1t	.L0d9b544c
    abs.s	$f14,$f14
    # Line 2702
    div.s	$f15,$f16,$f14
    b	.L0d9b5450
    cvt.d.s	$f15,$f15
.L0d9b544c:
    mov.d	$f15,$f9
.L0d9b5450:
    # Line 2703
    c.lt.s $f13,$f4
    li	$a6,1
    movf	$a6,$zero,$fcc1
    # Line 2702
    cvt.s.d	$f16,$f15
    # Line 2703
    beqz	$a6,.L0d9b547c
    # Line 2702
    swc1	$f16,44($a0)
    # Line 2703
    c.le.s $f4,$f5
    bc1f .L0d9b5480
    move	$a4,$zero
    b	.L0d9b5480
    li	$a4,1
.L0d9b547c:
    move	$a4,$zero
.L0d9b5480:
    # Line 2704
    c.lt.s $f5,$f4
    li	$a7,1
    movf	$a7,$zero,$fcc3
    # Line 2703
    move	$t3,$a4
    # Line 2704
    beqz	$a7,.L0d9b54a4
    # Line 2703
    sw	$a4,108($a0)
    # Line 2704
    c.le.s $f4,$f13
    bc1t .L0d9b54b8
    nop
.L0d9b54a4:
    c.le.s $f4,$f5
    bc1f .L0d9b54bc
    move	$a5,$zero
    beqz	$a6,.L0d9b54bc
    move	$a5,$zero
.L0d9b54b8:
    li	$a5,1
.L0d9b54bc:
    beqz	$a2,.L0d9b5838
    sw	$a5,76($a0)
    # Line 2706
    lw	$t1,0($sp)
    # Line 2708
    abs.s	$f15,$f6
.L0d9b54cc:
    abs.s	$f5,$f10
    add.s	$f5,$f15,$f5
    c.eq.s $f5,$f4
    bc1t .L0d9b54ec
    abs.s	$f5,$f5
    # Line 2709
    div.s	$f13,$f15,$f5
    b	.L0d9b54f0
    cvt.d.s	$f13,$f13
.L0d9b54ec:
    mov.d	$f13,$f9
.L0d9b54f0:
    # Line 2710
    c.lt.s $f10,$f4
    li	$a7,1
    movf	$a7,$zero,$fcc7
    # Line 2709
    cvt.s.d	$f15,$f13
    # Line 2710
    beqz	$a7,.L0d9b551c
    # Line 2709
    swc1	$f15,48($a0)
    # Line 2710
    c.le.s	$f4,$f6
    bc1f	.L0d9b5520
    move	$a5,$zero
    b	.L0d9b5520
    li	$a5,1
.L0d9b551c:
    move	$a5,$zero
.L0d9b5520:
    # Line 2711
    c.lt.s $f6,$f4
    li	$a4,1
    movf	$a4,$zero,$fcc1
    # Line 2710
    move	$t8,$a5
    # Line 2711
    beqz	$a4,.L0d9b5544
    # Line 2710
    sw	$a5,112($a0)
    # Line 2711
    c.le.s $f4,$f10
    bc1t .L0d9b5558
    nop
.L0d9b5544:
    c.le.s $f4,$f6
    bc1f .L0d9b555c
    move	$a6,$zero
    beqz	$a7,.L0d9b555c
    move	$a6,$zero
.L0d9b5558:
    li	$a6,1
.L0d9b555c:
    beqz	$a2,.L0d9b5850
    sw	$a6,80($a0)
    # Line 2713
    lw	$t0,4($sp)
    # Line 2715
    abs.s	$f13,$f7
.L0d9b556c:
    abs.s	$f10,$f11
    add.s	$f10,$f13,$f10
    c.eq.s $f10,$f4
    bc1t .L0d9b558c
    abs.s	$f10,$f10
    # Line 2716
    div.s	$f6,$f13,$f10
    b	.L0d9b5590
    cvt.d.s	$f6,$f6
.L0d9b558c:
    mov.d	$f6,$f9
.L0d9b5590:
    # Line 2717
    c.lt.s $f11,$f4
    li	$t2,1
    movf	$t2,$zero,$fcc5
    # Line 2716
    cvt.s.d	$f13,$f6
    # Line 2717
    beqz	$t2,.L0d9b55bc
    # Line 2716
    swc1	$f13,52($a0)
    # Line 2717
    c.le.s $f4,$f7
    bc1f .L0d9b55c0
    move	$a6,$zero
    b	.L0d9b55c0
    li	$a6,1
.L0d9b55bc:
    move	$a6,$zero
.L0d9b55c0:
    # Line 2718
    c.lt.s $f7,$f4
    li	$a4,1
    movf	$a4,$zero,$fcc7
    # Line 2717
    move	$t9,$a6
    # Line 2718
    beqz	$a4,.L0d9b55e4
    # Line 2717
    sw	$a6,116($a0)
    # Line 2718
    c.le.s	$f4,$f11
    bc1t	.L0d9b55f8
    nop
.L0d9b55e4:
    c.le.s $f4,$f7
    bc1f .L0d9b55fc
    move	$a7,$zero
    beqz	$t2,.L0d9b55fc
    move	$a7,$zero
.L0d9b55f8:
    li	$a7,1
.L0d9b55fc:
    beqz	$a2,.L0d9b5868
    sw	$a7,84($a0)
    # Line 2720
    lw	$t2,8($sp)
    # Line 2722
    abs.s	$f11,$f8
.L0d9b560c:
    abs.s	$f7,$f12
    add.s	$f7,$f11,$f7
    c.eq.s $f7,$f4
    bc1t .L0d9b562c
    abs.s	$f7,$f7
    # Line 2723
    div.s	$f6,$f11,$f7
    b	.L0d9b5630
    cvt.d.s	$f6,$f6
.L0d9b562c:
    mov.d	$f6,$f9
.L0d9b5630:
    # Line 2724
    c.lt.s $f12,$f4
    li	$a7,1
    movf	$a7,$zero,$fcc3
    # Line 2723
    cvt.s.d	$f11,$f6
    # Line 2724
    beqz	$a7,.L0d9b565c
    # Line 2723
    swc1	$f11,56($a0)
    # Line 2724
    c.le.s $f4,$f8
    bc1f .L0d9b5660
    move	$a5,$zero
    b	.L0d9b5660
    li	$a5,1
.L0d9b565c:
    move	$a5,$zero
.L0d9b5660:
    # Line 2725
    c.lt.s $f8,$f4
    li	$a4,1
    movf	$a4,$zero,$fcc5
    beqz	$a4,.L0d9b5680
    # Line 2724
    sw	$a5,120($a0)
    # Line 2725
    c.le.s $f4,$f12
    bc1t .L0d9b5694
    nop
.L0d9b5680:
    c.le.s $f4,$f8
    bc1f .L0d9b5698
    move	$a6,$zero
    beqz	$a7,.L0d9b5698
    move	$a6,$zero
.L0d9b5694:
    li	$a6,1
.L0d9b5698:
    beqz	$a2,.L0d9b5880
    sw	$a6,88($a0)
    # Line 2727
    lw	$a6,12($sp)
    add.s	$f8,$f14,$f5
.L0d9b56a8:
    c.eq.s	$f8,$f4
    bc1t	.L0d9b56c0
    abs.s	$f8,$f8
    # Line 2730
    div.s	$f6,$f5,$f8
    b	.L0d9b56c4
    cvt.d.s	$f6,$f6
.L0d9b56c0:
    mov.d	$f6,$f9
.L0d9b56c4:
    cvt.s.d	$f12,$f6
    beq	$t1,$a3,.L0d9b5898
    swc1	$f12,60($a0)
    # Line 2740
    beq	$t0,$a3,.L0d9b5918
    nop
    # Line 2749
    sw	$zero,92($a0)
    # Line 2748
    move	$t1,$zero
    sw	$zero,124($a0)
.L0d9b56e4:
    # Line 2749
    move	$a7,$zero
.L0d9b56e8:
    add.s	$f6,$f10,$f7
    c.eq.s $f6,$f4
    bc1t .L0d9b5704
    abs.s	$f6,$f6
    # Line 2756
    div.s	$f10,$f7,$f6
    b	.L0d9b5708
    cvt.d.s	$f10,$f10
.L0d9b5704:
    mov.d	$f10,$f9
.L0d9b5708:
    add.s	$f5,$f8,$f6
    cvt.s.d	$f7,$f10
    c.eq.s $f5,$f4
    li	$a4,1
    swc1	$f7,64($a0)
    beq	$t2,$a3,.L0d9b57ac
    movt	$a4,$zero,$fcc2
    # Line 2781
    beq	$a6,$a3,.L0d9b5820
    nop
    # Line 2774
    sw	$zero,96($a0)
    # Line 2773
    move	$t0,$zero
    # Line 2774
    beqz	$a4,.L0d9b5830
    # Line 2773
    sw	$zero,128($a0)
.L0d9b573c:
    # Line 2781
    abs.s	$f9,$f5
    div.s	$f9,$f6,$f9
    cvt.d.s	$f9,$f9
    cvt.s.d	$f6,$f9
.L0d9b574c:
    beq	$a7,$a3,.L0d9b57dc
    swc1	$f6,68($a0)
.L0d9b5754:
    # Line 2799
    sw	$zero,100($a0)
    # Line 2798
    move	$a4,$zero
    sw	$zero,132($a0)
.L0d9b5760:
    # Line 2805
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f5
    sub.d	$f4,$f8,$f4
    cvt.s.d	$f4,$f4
    swc1	$f4,72($a0)
.L0d9b5774:
    # Line 2812
    sw	$zero,104($a0)
    # Line 2811
    move	$a6,$zero
    # Line 2812
    move	$a7,$zero
    # Line 2811
    sw	$zero,136($a0)
.L0d9b5784:
    # Line 2812
    beqz	$a2,.L0d9b58b4
    nop
.L0d9b578c:
    # Line 2828
    lwc1	$f7,_lit_3f800000
.L0d9b5790:
    lwc1	$f6,_lit_bf800000
    # Line 2827
    swc1	$f5,144($a0)
    # Line 2828
    movz.s	$f6,$f7,$a7
    beq	$a3,$a2,.L0d9b5908
    swc1	$f6,140($a0)
    # Line 2840
    jr	$ra
    addiu	$sp,$sp,16
.L0d9b57ac:
    # Line 2756
    beq	$a6,$a3,.L0d9b5a28
    nop
    # Line 2764
    sw	$a3,96($a0)
    # Line 2763
    sw	$a3,128($a0)
    # Line 2764
    beqz	$a4,.L0d9b57d0
    # Line 2763
    li	$t0,1
    # Line 2781
    abs.s	$f9,$f5
    div.s	$f9,$f6,$f9
    cvt.d.s	$f9,$f9
.L0d9b57d0:
    cvt.s.d	$f6,$f9
    bne	$a7,$a3,.L0d9b5754
    swc1	$f6,68($a0)
.L0d9b57dc:
    # Line 2805
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f5
    sub.d	$f4,$f8,$f4
    # Line 2789
    sw	$a3,100($a0)
    # Line 2788
    sw	$a3,132($a0)
    # Line 2805
    cvt.s.d	$f4,$f4
    # Line 2788
    li	$a4,1
    b	.L0d9b5774
    # Line 2805
    swc1	$f4,72($a0)
.L0d9b5800:
    # Line 2692
    lwc1	$f8,28($a0)
    lwc1	$f12,24($a0)
    lwc1	$f7,20($a0)
    li	$a3,1
    lwc1	$f11,16($a0)
    move	$a2,$zero
    b	.L0d9b5424
    lwc1	$f6,12($a0)
.L0d9b5820:
    # Line 2770
    sw	$a3,96($a0)
    # Line 2769
    move	$t0,$zero
    # Line 2774
    bnez	$a4,.L0d9b573c
    # Line 2769
    sw	$zero,128($a0)
.L0d9b5830:
    b	.L0d9b574c
    # Line 2781
    cvt.s.d	$f6,$f9
.L0d9b5838:
    # Line 2706
    beqz	$a7,.L0d9b59f0
    nop
    beqz	$a6,.L0d9b59f0
    li	$t1,1
.L0d9b5848:
    b	.L0d9b54cc
    # Line 2708
    abs.s	$f15,$f6
.L0d9b5850:
    # Line 2713
    beqz	$a4,.L0d9b59f8
    nop
    beqz	$a7,.L0d9b59f8
    li	$t0,1
.L0d9b5860:
    b	.L0d9b556c
    # Line 2715
    abs.s	$f13,$f7
.L0d9b5868:
    # Line 2720
    beqz	$a4,.L0d9b5a00
    nop
    beqz	$t2,.L0d9b5a00
    li	$t2,1
.L0d9b5878:
    b	.L0d9b560c
    # Line 2722
    abs.s	$f11,$f8
.L0d9b5880:
    # Line 2727
    beqz	$a4,.L0d9b5a08
    nop
    beqz	$a7,.L0d9b5a08
    li	$a6,1
.L0d9b5890:
    b	.L0d9b56a8
    add.s	$f8,$f14,$f5
.L0d9b5898:
    # Line 2730
    beq	$t0,$a3,.L0d9b5a18
    # Line 2734
    move	$t1,$zero
    # Line 2739
    sw	$a3,92($a0)
    # Line 2738
    li	$t1,1
    sw	$a3,124($a0)
    b	.L0d9b56e8
    # Line 2740
    move	$a7,$zero
.L0d9b58b4:
    # Line 2812
    beq	$a3,$t3,.L0d9b5928
    nop
    # Line 2816
    beq	$a3,$t8,.L0d9b593c
    nop
.L0d9b58c4:
    # Line 2817
    beq	$a3,$t9,.L0d9b5950
    nop
.L0d9b58cc:
    # Line 2818
    beq	$a3,$a5,.L0d9b5964
    nop
.L0d9b58d4:
    # Line 2819
    beq	$a3,$t1,.L0d9b5978
    nop
.L0d9b58dc:
    # Line 2820
    beq	$a3,$t0,.L0d9b598c
    nop
.L0d9b58e4:
    # Line 2821
    beq	$a3,$a4,.L0d9b59a0
    nop
.L0d9b58ec:
    # Line 2822
    bne	$a3,$a6,.L0d9b5790
    # Line 2828
    lwc1	$f7,_lit_3f800000
.L0d9b58f4:
    # Line 2823
    cvt.d.s	$f6,$f4
    sub.d	$f6,$f8,$f6
    cvt.s.d	$f6,$f6
    b	.L0d9b578c
    swc1	$f6,72($a0)
.L0d9b5908:
    # Line 2829
    lwc1	$f7,_lit_bf800000
    # Line 2840
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2829
    swc1	$f7,140($a0)
.L0d9b5918:
    # Line 2745
    sw	$a3,92($a0)
    # Line 2744
    move	$t1,$zero
    # Line 2745
    b	.L0d9b56e4
    # Line 2744
    sw	$zero,124($a0)
.L0d9b5928:
    # Line 2816
    cvt.d.s	$f9,$f16
    sub.d	$f9,$f8,$f9
    cvt.s.d	$f9,$f9
    bne	$a3,$t8,.L0d9b58c4
    swc1	$f9,44($a0)
.L0d9b593c:
    # Line 2817
    cvt.d.s	$f10,$f15
    sub.d	$f10,$f8,$f10
    cvt.s.d	$f10,$f10
    bne	$a3,$t9,.L0d9b58cc
    swc1	$f10,48($a0)
.L0d9b5950:
    # Line 2818
    cvt.d.s	$f14,$f13
    sub.d	$f14,$f8,$f14
    cvt.s.d	$f14,$f14
    bne	$a3,$a5,.L0d9b58d4
    swc1	$f14,52($a0)
.L0d9b5964:
    # Line 2819
    cvt.d.s	$f15,$f11
    sub.d	$f15,$f8,$f15
    cvt.s.d	$f15,$f15
    bne	$a3,$t1,.L0d9b58dc
    swc1	$f15,56($a0)
.L0d9b5978:
    # Line 2820
    cvt.d.s	$f16,$f12
    sub.d	$f16,$f8,$f16
    cvt.s.d	$f16,$f16
    bne	$a3,$t0,.L0d9b58e4
    swc1	$f16,60($a0)
.L0d9b598c:
    # Line 2821
    cvt.d.s	$f17,$f7
    sub.d	$f17,$f8,$f17
    cvt.s.d	$f17,$f17
    bne	$a3,$a4,.L0d9b58ec
    swc1	$f17,64($a0)
.L0d9b59a0:
    # Line 2822
    cvt.d.s	$f18,$f6
    sub.d	$f18,$f8,$f18
    cvt.s.d	$f18,$f18
    bne	$a3,$a6,.L0d9b578c
    swc1	$f18,68($a0)
    b	.L0d9b58f4
    nop
.L0d9b59bc:
    # Line 2692
    lwc1	$f8,28($a0)
    lwc1	$f12,24($a0)
    li	$a3,1
    lwc1	$f7,20($a0)
    move	$a2,$zero
    b	.L0d9b5424
    lwc1	$f11,16($a0)
.L0d9b59d8:
    lwc1	$f8,28($a0)
    li	$a3,1
    lwc1	$f12,24($a0)
    move	$a2,$zero
    b	.L0d9b5424
    lwc1	$f7,20($a0)
.L0d9b59f0:
    b	.L0d9b5848
    # Line 2706
    move	$t1,$zero
.L0d9b59f8:
    b	.L0d9b5860
    # Line 2713
    move	$t0,$zero
.L0d9b5a00:
    b	.L0d9b5878
    # Line 2720
    move	$t2,$zero
.L0d9b5a08:
    b	.L0d9b5890
    # Line 2727
    move	$a6,$zero
.L0d9b5a10:
    # Line 2692
    b	.L0d9b5428
    # Line 2701
    abs.s	$f16,$f5
.L0d9b5a18:
    # Line 2735
    sw	$zero,92($a0)
    li	$a7,1
    b	.L0d9b56e8
    # Line 2734
    sw	$zero,124($a0)
.L0d9b5a28:
    # Line 2760
    sw	$zero,96($a0)
    # Line 2759
    move	$t0,$zero
    # Line 2760
    beqz	$a4,.L0d9b5a44
    # Line 2759
    sw	$zero,128($a0)
    # Line 2781
    abs.s	$f9,$f5
    div.s	$f9,$f6,$f9
    cvt.d.s	$f9,$f9
.L0d9b5a44:
    cvt.s.d	$f6,$f9
    # Line 2794
    move	$a4,$zero
    # Line 2781
    beq	$a7,$a3,.L0d9b5a7c
    swc1	$f6,68($a0)
    # Line 2795
    sw	$a3,100($a0)
    b	.L0d9b5760
    # Line 2794
    sw	$zero,132($a0)
.L0d9b5a60:
    # Line 2692
    li	$a3,1
    move	$a2,$zero
    b	.L0d9b5424
    lwc1	$f8,28($a0)
.L0d9b5a70:
    move	$a2,$zero
    b	.L0d9b5424
    li	$a3,1
.L0d9b5a7c:
    # Line 2805
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f5
    # Line 2809
    sw	$a3,104($a0)
    # Line 2808
    sw	$a3,136($a0)
    # Line 2805
    sub.d	$f4,$f8,$f4
    # Line 2785
    sw	$zero,100($a0)
    # Line 2784
    move	$a4,$zero
    # Line 2809
    li	$a7,1
    # Line 2784
    sw	$zero,132($a0)
    # Line 2805
    cvt.s.d	$f4,$f4
    # Line 2808
    li	$a6,1
    # Line 2809
    b	.L0d9b5784
    # Line 2805
    swc1	$f4,72($a0)
.end ConvertToLerps

# Function: PackAlpha
# Declared: Line 2849 (Source lines: 2854-2870)
# Address: 0x0d9b5ab0 - 0x0d9b5cc4 (Size: 532 bytes, Frame: 192)
.ent PackAlpha
PackAlpha:
    # Line 2854
    addiu	$sp,$sp,-64
    # Line 2857
    lui	$a2,0xfbff
    # Line 2856
    lw	$t0,100($sp)
    # Line 2857
    lui	$t1,0x400
    ori	$a2,$a2,0xffff
    # Line 2856
    sll	$v0,$a0,0x1b
    lui	$t8,0xf7ff
    lw	$at,0($t0)
    lui	$t2,0x800
    ori	$t8,$t8,0xffff
    and	$v0,$t2,$v0
    and	$at,$t8,$at
    or	$at,$at,$v0
    # Line 2857
    sll	$v0,$a3,0x1a
    # Line 2858
    lw	$a5,108($sp)
    # Line 2857
    and	$v0,$t1,$v0
    and	$at,$a2,$at
    or	$at,$at,$v0
    sw	$at,0($t0)
    # Line 2861
    lui	$a0,0xfdff
    # Line 2858
    lw	$t9,0($a5)
    # Line 2861
    ori	$a0,$a0,0xffff
    # Line 2858
    sll	$t3,$a6,0x1b
    # Line 2859
    lw	$a3,76($sp)
    # Line 2858
    and	$t2,$t2,$t3
    and	$a6,$t8,$t9
    # Line 2859
    sll	$a3,$a3,0x1a
    # Line 2858
    or	$a6,$a6,$t2
    # Line 2859
    and	$a3,$t1,$a3
    and	$a2,$a2,$a6
    # Line 2862
    lui	$at,0xfeff
    # Line 2859
    or	$a2,$a2,$a3
    sw	$a2,0($a5)
    # Line 2862
    lui	$v0,0x100
    ori	$at,$at,0xffff
    # Line 2861
    lw	$t1,0($t0)
    sll	$t2,$a1,0x19
    lui	$a2,0x200
    and	$t2,$a2,$t2
    and	$t1,$a0,$t1
    # Line 2862
    sll	$a6,$a4,0x18
    # Line 2861
    or	$t1,$t1,$t2
    # Line 2864
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 2862
    and	$a6,$v0,$a6
    and	$a4,$at,$t1
    or	$a4,$a4,$a6
    sw	$a4,0($t0)
    # Line 2864
    cvt.d.s	$f0,$f14
    # Line 2863
    lw	$a3,0($a5)
    # Line 2864
    lw	$v1,84($sp)
    # Line 2863
    sll	$a1,$a7,0x19
    # Line 2864
    c.le.d	$f4,$f0
    # Line 2863
    and	$a1,$a2,$a1
    and	$a0,$a0,$a3
    # Line 2864
    sll	$v1,$v1,0x18
    # Line 2863
    or	$a0,$a0,$a1
    # Line 2866
    lwc1	$f5,_lit_457ff000
    # Line 2854
    mov.s	$f6,$f14
    # Line 2864
    and	$v0,$v0,$v1
    and	$at,$at,$a0
    # Line 2866
    cvt.d.s	$f6,$f17
    # Line 2864
    or	$at,$at,$v0
    bc1t	.L0d9b5bb8
    sw	$at,0($a5)
    # Line 2866
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f14,$f5
.L0d9b5bb8:
    trunc.l.s	$f7,$f5
    c.le.d $f4,$f6
    # Line 2867
    lwc1	$f6,64($sp)
    lwc1	$f5,_lit_45800000
    # Line 2866
    lui	$a3,0xff
    dmfc1	$a4,$f7
    lw	$a1,0($t0)
    lui	$a2,0xff00
    ori	$a3,$a3,0xf000
    # Line 2869
    lwc1	$f10,_lit_45800000
    # Line 2866
    ori	$a2,$a2,0xfff
    # Line 2867
    cvt.d.s	$f7,$f6
    # Line 2866
    sll	$a4,$a4,0xc
    # Line 2869
    lwc1	$f9,_lit_457ff000
    # Line 2866
    and	$a1,$a2,$a1
    and	$a4,$a3,$a4
    # Line 2867
    c.le.d $f4,$f7
    # Line 2866
    or	$a1,$a1,$a4
    bc1f .L0d9b5c10
    sw	$a1,0($t0)
    # Line 2867
    b	.L0d9b5c14
    lwc1	$f5,_lit_457ff000
.L0d9b5c10:
    mul.s	$f5,$f17,$f5
.L0d9b5c14:
    trunc.l.s	$f8,$f5
    dmfc1	$a7,$f8
    li	$a4,-4096
    sll	$a7,$a7,0x0
    # Line 2868
    lwc1	$f5,_lit_45800000
    # Line 2867
    and	$a6,$a4,$a1
    andi	$a7,$a7,0xfff
    or	$a6,$a6,$a7
    bc1f .L0d9b5c44
    sw	$a6,0($t0)
    # Line 2868
    b	.L0d9b5c48
    lwc1	$f5,_lit_457ff000
.L0d9b5c44:
    mul.s	$f5,$f6,$f5
.L0d9b5c48:
    lwc1	$f6,88($sp)
    trunc.l.s	$f8,$f5
    dmfc1	$a6,$f8
    cvt.d.s	$f7,$f6
    lw	$a1,0($a5)
    sll	$a6,$a6,0xc
    c.le.d $f4,$f7
    and	$a1,$a2,$a1
    and	$a6,$a3,$a6
    or	$a1,$a1,$a6
    sw	$a1,0($a5)
    # Line 2869
    and	$a7,$a4,$a1
    # Line 2868
    bc1f .L0d9b5ca0
    # Line 2869
    and	$t1,$a4,$a1
    trunc.l.s	$f9,$f9
    dmfc1	$t0,$f9
    sll	$t0,$t0,0x0
    # Line 2870
    addiu	$sp,$sp,64
    # Line 2869
    andi	$t0,$t0,0xfff
    or	$a7,$a7,$t0
    # Line 2870
    jr	$ra
    # Line 2869
    sw	$a7,0($a5)
.L0d9b5ca0:
    mul.s	$f10,$f6,$f10
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x0
    # Line 2870
    addiu	$sp,$sp,64
    # Line 2869
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    # Line 2870
    jr	$ra
    # Line 2869
    sw	$t1,0($a5)
.end PackAlpha

# Function: PackAlphaResidue
# Declared: Line 2873 (Source lines: 2878-2895)
# Address: 0x0d9b5cd0 - 0x0d9b5e20 (Size: 336 bytes, Frame: 192)
.ent PackAlphaResidue
PackAlphaResidue:
    # Line 2878
    addiu	$sp,$sp,-64
    # Line 2881
    lui	$t1,0xfbff
    # Line 2880
    lw	$t0,100($sp)
    # Line 2881
    sll	$a3,$a3,0x1a
    ori	$t1,$t1,0xffff
    # Line 2880
    sll	$t2,$a0,0x1b
    lui	$t8,0xf7ff
    lw	$t3,0($t0)
    lui	$t9,0x800
    ori	$t8,$t8,0xffff
    and	$t2,$t9,$t2
    and	$a0,$t8,$t3
    or	$a0,$a0,$t2
    # Line 2881
    lui	$t2,0x400
    # Line 2882
    lw	$v0,108($sp)
    # Line 2881
    and	$a3,$t2,$a3
    and	$a0,$t1,$a0
    or	$a0,$a0,$a3
    sw	$a0,0($t0)
    # Line 2882
    sll	$at,$a6,0x1b
    # Line 2885
    lui	$a6,0xfdff
    # Line 2882
    lw	$v1,0($v0)
    # Line 2885
    ori	$a6,$a6,0xffff
    # Line 2883
    lw	$t3,76($sp)
    # Line 2882
    and	$t9,$t9,$at
    and	$t8,$t8,$v1
    # Line 2883
    sll	$t3,$t3,0x1a
    # Line 2882
    or	$t8,$t8,$t9
    # Line 2883
    and	$t2,$t2,$t3
    and	$t1,$t1,$t8
    # Line 2886
    lui	$a3,0x100
    # Line 2883
    or	$t1,$t1,$t2
    sw	$t1,0($v0)
    # Line 2886
    lui	$t9,0xfeff
    # Line 2885
    sll	$t8,$a1,0x19
    lw	$t3,0($t0)
    # Line 2886
    ori	$a1,$t9,0xffff
    # Line 2885
    lui	$t1,0x200
    and	$t8,$t1,$t8
    and	$t3,$a6,$t3
    or	$t3,$t3,$t8
    # Line 2886
    sll	$t8,$a4,0x18
    and	$t8,$a3,$t8
    and	$t3,$a1,$t3
    or	$t3,$t3,$t8
    sw	$t3,0($t0)
    # Line 2887
    lw	$t2,0($v0)
    sll	$a7,$a7,0x19
    # Line 2888
    lw	$a4,84($sp)
    # Line 2887
    and	$a7,$t1,$a7
    and	$a6,$a6,$t2
    # Line 2888
    sll	$a4,$a4,0x18
    # Line 2887
    or	$a6,$a6,$a7
    # Line 2888
    and	$a3,$a3,$a4
    and	$a1,$a1,$a6
    # Line 2890
    lui	$a0,0xff00
    # Line 2888
    or	$a1,$a1,$a3
    sw	$a1,0($v0)
    # Line 2890
    ori	$a0,$a0,0xfff
    lw	$a3,0($t0)
    lui	$a1,0xff
    sll	$a4,$a2,0xc
    ori	$a1,$a1,0xf000
    and	$a4,$a1,$a4
    and	$a3,$a0,$a3
    # Line 2891
    li	$at,-4096
    # Line 2890
    or	$a3,$a3,$a4
    # Line 2892
    lw	$a2,68($sp)
    # Line 2891
    andi	$a4,$a5,0xfff
    and	$a3,$at,$a3
    or	$a3,$a3,$a4
    sw	$a3,0($t0)
    # Line 2892
    lw	$a3,0($v0)
    # Line 2893
    lw	$v1,92($sp)
    # Line 2892
    sll	$a2,$a2,0xc
    and	$a1,$a1,$a2
    and	$a0,$a0,$a3
    # Line 2893
    andi	$v1,$v1,0xfff
    # Line 2892
    or	$a0,$a0,$a1
    # Line 2895
    addiu	$sp,$sp,64
    # Line 2893
    and	$at,$at,$a0
    or	$at,$at,$v1
    # Line 2895
    jr	$ra
    # Line 2893
    sw	$at,0($v0)
.end PackAlphaResidue

# Function: PackLerpTree
# Declared: Line 2899 (Source lines: 2900-2978)
# Address: 0x0d9b5e20 - 0x0d9b6278 (Size: 1112 bytes, Frame: 208)
.ent PackLerpTree
PackLerpTree:
    # Line 2900
    addiu	$sp,$sp,-80
    sd	$ra,56($sp)
    sd	$s1,64($sp)
    move	$s1,$a0
    # Line 2910
    lw	$a0,76($a0)
    # Line 2900
    sd	$s0,48($sp)
    la	$s0,sub_0d9b0000
    # Line 2910
    lw	$a7,404($s1)
    lw	$a6,372($s1)
    lwc1	$f17,192($s1)
    lw	$a4,256($s1)
    lw	$a3,224($s1)
    lwc1	$f14,44($s1)
    lwc1	$f1,340($s1)
    lw	$a1,108($s1)
    swc1	$f1,0($sp)
    lw	$at,520($s1)
    sw	$at,12($sp)
    lw	$ra,552($s1)
    sw	$ra,20($sp)
    # Line 2900
    addiu	$s0,$s0,23216
    # Line 2910
    lwc1	$f0,488($s1)
    addiu	$t9,$s1,628
    sw	$t9,44($sp)
    move	$t9,$s0
    addiu	$t8,$s1,624
    sw	$t8,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f0,24($sp)
    # Line 2916
    lw	$a7,408($s1)
    lw	$a6,376($s1)
    lwc1	$f17,196($s1)
    lw	$a4,260($s1)
    lw	$a3,228($s1)
    lwc1	$f14,48($s1)
    lw	$a1,112($s1)
    lwc1	$f3,344($s1)
    lw	$a0,80($s1)
    swc1	$f3,0($sp)
    lw	$a5,524($s1)
    sw	$a5,12($sp)
    lw	$a2,556($s1)
    sw	$a2,20($sp)
    lwc1	$f2,492($s1)
    addiu	$v1,$s1,636
    move	$t9,$s0
    sw	$v1,44($sp)
    addiu	$v0,$s1,632
    sw	$v0,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f2,24($sp)
    # Line 2922
    lw	$a7,412($s1)
    lw	$a6,380($s1)
    lwc1	$f17,200($s1)
    lw	$a4,264($s1)
    lw	$a3,232($s1)
    lwc1	$f14,52($s1)
    lw	$a1,116($s1)
    lwc1	$f5,348($s1)
    lw	$a0,84($s1)
    swc1	$f5,0($sp)
    lw	$t3,528($s1)
    sw	$t3,12($sp)
    lw	$t2,560($s1)
    sw	$t2,20($sp)
    lwc1	$f4,496($s1)
    addiu	$t1,$s1,644
    move	$t9,$s0
    sw	$t1,44($sp)
    addiu	$t0,$s1,640
    sw	$t0,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f4,24($sp)
    # Line 2928
    lw	$a7,416($s1)
    lw	$a6,384($s1)
    lwc1	$f17,204($s1)
    lw	$a4,268($s1)
    lw	$a3,236($s1)
    lwc1	$f14,56($s1)
    lw	$a1,120($s1)
    lwc1	$f7,352($s1)
    lw	$a0,88($s1)
    swc1	$f7,0($sp)
    lw	$at,532($s1)
    sw	$at,12($sp)
    lw	$ra,564($s1)
    sw	$ra,20($sp)
    lwc1	$f6,500($s1)
    addiu	$t9,$s1,652
    sw	$t9,44($sp)
    move	$t9,$s0
    addiu	$t8,$s1,648
    sw	$t8,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f6,24($sp)
    # Line 2934
    lw	$a7,420($s1)
    lw	$a6,388($s1)
    lwc1	$f17,208($s1)
    lw	$a4,272($s1)
    lw	$a3,240($s1)
    lwc1	$f14,60($s1)
    lw	$a1,124($s1)
    lwc1	$f9,356($s1)
    lw	$a0,92($s1)
    swc1	$f9,0($sp)
    lw	$a5,536($s1)
    sw	$a5,12($sp)
    lw	$a2,568($s1)
    sw	$a2,20($sp)
    lwc1	$f8,504($s1)
    addiu	$v1,$s1,660
    move	$t9,$s0
    sw	$v1,44($sp)
    addiu	$v0,$s1,656
    sw	$v0,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f8,24($sp)
    # Line 2940
    lw	$a7,424($s1)
    lw	$a6,392($s1)
    lwc1	$f17,212($s1)
    lw	$a4,276($s1)
    lw	$a3,244($s1)
    lwc1	$f14,64($s1)
    lw	$a1,128($s1)
    lwc1	$f11,360($s1)
    lw	$a0,96($s1)
    swc1	$f11,0($sp)
    lw	$t3,540($s1)
    sw	$t3,12($sp)
    lw	$t2,572($s1)
    sw	$t2,20($sp)
    lwc1	$f10,508($s1)
    addiu	$t1,$s1,668
    move	$t9,$s0
    sw	$t1,44($sp)
    addiu	$t0,$s1,664
    sw	$t0,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f10,24($sp)
    # Line 2946
    lw	$a7,428($s1)
    lw	$a6,396($s1)
    lwc1	$f17,216($s1)
    lw	$a4,280($s1)
    lw	$a3,248($s1)
    lwc1	$f14,68($s1)
    lw	$a1,132($s1)
    lwc1	$f13,364($s1)
    lw	$a0,100($s1)
    swc1	$f13,0($sp)
    lw	$at,544($s1)
    sw	$at,12($sp)
    lw	$ra,576($s1)
    sw	$ra,20($sp)
    lwc1	$f12,512($s1)
    addiu	$t9,$s1,676
    sw	$t9,44($sp)
    move	$t9,$s0
    addiu	$t8,$s1,672
    sw	$t8,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f12,24($sp)
    # Line 2952
    lw	$a7,432($s1)
    lw	$a6,400($s1)
    lwc1	$f17,220($s1)
    lw	$a4,284($s1)
    lw	$a3,252($s1)
    lwc1	$f14,72($s1)
    lw	$a1,136($s1)
    lwc1	$f16,368($s1)
    lw	$a0,104($s1)
    swc1	$f16,0($sp)
    lw	$a5,548($s1)
    sw	$a5,12($sp)
    lw	$a2,580($s1)
    sw	$a2,20($sp)
    lwc1	$f15,516($s1)
    addiu	$v1,$s1,684
    move	$t9,$s0
    sw	$v1,44($sp)
    addiu	$v0,$s1,680
    sw	$v0,36($sp)
    bal __glOdysseyGenericConvolution
    swc1	$f15,24($sp)
    ld	$s0,48($sp)
    # Line 2959
    lwc1	$f17,_lit_45800000
    # Line 2969
    lwc1	$f2,336($s1)
    # Line 2965
    lw	$t1,696($s1)
    # Line 2975
    lw	$t9,712($s1)
    # Line 2961
    lw	$v0,692($s1)
    # Line 2969
    mul.s	$f2,$f2,$f17
    # Line 2966
    lw	$a0,700($s1)
    # Line 2971
    lw	$a1,708($s1)
    # Line 2969
    trunc.w.s	$f2,$f2
    # Line 2959
    lwc1	$f31,40($s1)
    # Line 2974
    lwc1	$f3,484($s1)
    # Line 2969
    mfc1	$a2,$f2
    # Line 2960
    lui	$a6,0xffff
    # Line 2964
    lwc1	$f1,188($s1)
    # Line 2971
    and	$a1,$a6,$a1
    # Line 2959
    mul.s	$f31,$f31,$f17
    # Line 2975
    lwc1	$f23,588($s1)
    # Line 2969
    andi	$a2,$a2,0xffff
    # Line 2974
    mul.s	$f3,$f3,$f17
    # Line 2971
    or	$a1,$a1,$a2
    sw	$a1,708($s1)
    # Line 2964
    mul.s	$f1,$f1,$f17
    # Line 2959
    trunc.w.s	$f31,$f31
    # Line 2975
    lwc1	$f0,584($s1)
    # Line 2974
    trunc.w.s	$f3,$f3
    # Line 2975
    lwc1	$f29,480($s1)
    # Line 2964
    trunc.w.s	$f1,$f1
    # Line 2959
    mfc1	$v1,$f31
    # Line 2970
    lwc1	$f27,436($s1)
    # Line 2974
    mfc1	$a4,$f3
    # Line 2970
    lwc1	$f25,332($s1)
    # Line 2964
    mfc1	$a1,$f1
    # Line 2965
    lwc1	$f21,184($s1)
    # Line 2975
    mul.s	$f29,$f29,$f0
    # Line 2970
    lwc1	$f19,440($s1)
    mul.s	$f25,$f25,$f27
    # Line 2965
    lwc1	$f27,288($s1)
    # Line 2975
    mul.s	$f23,$f23,$f29
    # Line 2965
    lwc1	$f18,292($s1)
    # Line 2970
    mul.s	$f19,$f19,$f25
    # Line 2960
    lwc1	$f25,36($s1)
    # Line 2965
    mul.s	$f21,$f21,$f27
    # Line 2960
    lwc1	$f27,140($s1)
    # Line 2976
    lw	$a3,716($s1)
    # Line 2970
    mul.s	$f19,$f17,$f19
    # Line 2965
    mul.s	$f18,$f18,$f21
    # Line 2960
    lwc1	$f21,144($s1)
    # Line 2970
    lw	$t3,704($s1)
    # Line 2976
    and	$a3,$a6,$a3
    # Line 2966
    and	$a0,$a6,$a0
    # Line 2960
    mul.s	$f25,$f25,$f27
    lw	$t0,688($s1)
    # Line 2961
    and	$v0,$a6,$v0
    # Line 2975
    and	$t9,$a6,$t9
    mul.s	$f23,$f17,$f23
    ld	$ra,56($sp)
    # Line 2970
    and	$t3,$a6,$t3
    # Line 2965
    and	$t1,$a6,$t1
    # Line 2960
    mul.s	$f21,$f21,$f25
    and	$a6,$a6,$t0
    # Line 2974
    andi	$a4,$a4,0xffff
    # Line 2975
    trunc.w.s	$f23,$f23
    # Line 2965
    mul.s	$f18,$f17,$f18
    # Line 2959
    andi	$v1,$v1,0xffff
    # Line 2976
    or	$a3,$a3,$a4
    # Line 2970
    trunc.w.s	$f19,$f19
    # Line 2960
    mul.s	$f17,$f17,$f21
    # Line 2976
    sw	$a3,716($s1)
    # Line 2961
    or	$v0,$v0,$v1
    # Line 2975
    mfc1	$at,$f23
    # Line 2965
    trunc.w.s	$f18,$f18
    # Line 2961
    sw	$v0,692($s1)
    # Line 2964
    andi	$a1,$a1,0xffff
    # Line 2970
    mfc1	$t8,$f19
    # Line 2960
    trunc.w.s	$f17,$f17
    # Line 2966
    or	$a0,$a0,$a1
    sw	$a0,700($s1)
    # Line 2975
    andi	$at,$at,0xffff
    # Line 2965
    mfc1	$t2,$f18
    # Line 2970
    andi	$t8,$t8,0xffff
    # Line 2975
    or	$t9,$t9,$at
    sw	$t9,712($s1)
    # Line 2960
    mfc1	$a7,$f17
    # Line 2970
    or	$t3,$t3,$t8
    sw	$t3,704($s1)
    # Line 2965
    andi	$t2,$t2,0xffff
    or	$t1,$t1,$t2
    sw	$t1,696($s1)
    # Line 2960
    andi	$a7,$a7,0xffff
    or	$a6,$a6,$a7
    sw	$a6,688($s1)
    # Line 2978
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end PackLerpTree

# Function: PackLerpTreeResidue
# Declared: Line 2981 (Source lines: 2982-3071)
# Address: 0x0d9b6280 - 0x0d9b6818 (Size: 1432 bytes, Frame: 208)
.ent PackLerpTreeResidue
PackLerpTreeResidue:
    # Line 2982
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    sd	$s1,64($sp)
    move	$s1,$a0
    # Line 2992
    lw	$a0,76($a0)
    lw	$a7,404($s1)
    lw	$a6,372($s1)
    lwc1	$f3,340($s1)
    lwc1	$f2,192($s1)
    lw	$a4,256($s1)
    lw	$a3,224($s1)
    trunc.l.s	$f3,$f3
    lwc1	$f1,44($s1)
    lw	$a1,108($s1)
    dmfc1	$t3,$f3
    sw	$t3,4($sp)
    lw	$t2,520($s1)
    sw	$t2,12($sp)
    lw	$t1,552($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f2,$f2
    lwc1	$f0,488($s1)
    # Line 2982
    la	$s0,sub_0d9b0000
    # Line 2992
    trunc.l.s	$f1,$f1
    sd	$ra,56($sp)
    dmfc1	$a5,$f2
    addiu	$t0,$s1,628
    # Line 2982
    addiu	$s0,$s0,23760
    # Line 2992
    dmfc1	$a2,$f1
    trunc.l.s	$f0,$f0
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    addiu	$t8,$s1,624
    sll	$a2,$a2,0x0
    sw	$t8,36($sp)
    dmfc1	$at,$f0
    bal __glOdysseyGenericConvolution
    sw	$at,28($sp)
    # Line 2998
    lw	$a7,408($s1)
    lw	$a6,376($s1)
    lwc1	$f6,196($s1)
    lwc1	$f7,344($s1)
    lw	$a4,260($s1)
    lw	$a3,228($s1)
    lwc1	$f5,48($s1)
    trunc.l.s	$f7,$f7
    lw	$a1,112($s1)
    lw	$a0,80($s1)
    dmfc1	$t3,$f7
    sw	$t3,4($sp)
    lw	$t2,524($s1)
    sw	$t2,12($sp)
    lw	$t1,556($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f6,$f6
    lwc1	$f4,492($s1)
    trunc.l.s	$f5,$f5
    dmfc1	$a5,$f6
    addiu	$t0,$s1,636
    dmfc1	$a2,$f5
    trunc.l.s	$f4,$f4
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,632
    sw	$t0,36($sp)
    dmfc1	$t8,$f4
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3004
    lw	$a7,412($s1)
    lw	$a6,380($s1)
    lwc1	$f10,200($s1)
    lwc1	$f11,348($s1)
    lw	$a4,264($s1)
    lw	$a3,232($s1)
    lwc1	$f9,52($s1)
    trunc.l.s	$f11,$f11
    lw	$a1,116($s1)
    lw	$a0,84($s1)
    dmfc1	$t3,$f11
    sw	$t3,4($sp)
    lw	$t2,528($s1)
    sw	$t2,12($sp)
    lw	$t1,560($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f10,$f10
    lwc1	$f8,496($s1)
    trunc.l.s	$f9,$f9
    dmfc1	$a5,$f10
    addiu	$t0,$s1,644
    dmfc1	$a2,$f9
    trunc.l.s	$f8,$f8
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,640
    sw	$t0,36($sp)
    dmfc1	$t8,$f8
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3010
    lw	$a7,416($s1)
    lw	$a6,384($s1)
    lwc1	$f14,204($s1)
    lwc1	$f15,352($s1)
    lw	$a4,268($s1)
    lw	$a3,236($s1)
    lwc1	$f13,56($s1)
    trunc.l.s	$f15,$f15
    lw	$a1,120($s1)
    lw	$a0,88($s1)
    dmfc1	$t3,$f15
    sw	$t3,4($sp)
    lw	$t2,532($s1)
    sw	$t2,12($sp)
    lw	$t1,564($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f14,$f14
    lwc1	$f12,500($s1)
    trunc.l.s	$f13,$f13
    dmfc1	$a5,$f14
    addiu	$t0,$s1,652
    dmfc1	$a2,$f13
    trunc.l.s	$f12,$f12
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,648
    sw	$t0,36($sp)
    dmfc1	$t8,$f12
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3016
    lw	$a7,420($s1)
    lw	$a6,388($s1)
    lwc1	$f18,208($s1)
    lwc1	$f19,356($s1)
    lw	$a4,272($s1)
    lw	$a3,240($s1)
    lwc1	$f17,60($s1)
    trunc.l.s	$f19,$f19
    lw	$a1,124($s1)
    lw	$a0,92($s1)
    dmfc1	$t3,$f19
    sw	$t3,4($sp)
    lw	$t2,536($s1)
    sw	$t2,12($sp)
    lw	$t1,568($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f18,$f18
    lwc1	$f16,504($s1)
    trunc.l.s	$f17,$f17
    dmfc1	$a5,$f18
    addiu	$t0,$s1,660
    dmfc1	$a2,$f17
    trunc.l.s	$f16,$f16
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,656
    sw	$t0,36($sp)
    dmfc1	$t8,$f16
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3022
    lw	$a7,424($s1)
    lw	$a6,392($s1)
    lwc1	$f25,212($s1)
    lwc1	$f27,360($s1)
    lw	$a4,276($s1)
    lw	$a3,244($s1)
    lwc1	$f23,64($s1)
    trunc.l.s	$f27,$f27
    lw	$a1,128($s1)
    lw	$a0,96($s1)
    dmfc1	$t3,$f27
    sw	$t3,4($sp)
    lw	$t2,540($s1)
    sw	$t2,12($sp)
    lw	$t1,572($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f25,$f25
    lwc1	$f21,508($s1)
    trunc.l.s	$f23,$f23
    dmfc1	$a5,$f25
    addiu	$t0,$s1,668
    dmfc1	$a2,$f23
    trunc.l.s	$f21,$f21
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,664
    sw	$t0,36($sp)
    dmfc1	$t8,$f21
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3028
    lw	$a7,428($s1)
    lw	$a6,396($s1)
    lwc1	$f0,216($s1)
    lwc1	$f1,364($s1)
    lw	$a4,280($s1)
    lw	$a3,248($s1)
    lwc1	$f31,68($s1)
    trunc.l.s	$f1,$f1
    lw	$a1,132($s1)
    lw	$a0,100($s1)
    dmfc1	$t3,$f1
    sw	$t3,4($sp)
    lw	$t2,544($s1)
    sw	$t2,12($sp)
    lw	$t1,576($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f0,$f0
    lwc1	$f29,512($s1)
    trunc.l.s	$f31,$f31
    dmfc1	$a5,$f0
    addiu	$t0,$s1,676
    dmfc1	$a2,$f31
    trunc.l.s	$f29,$f29
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,672
    sw	$t0,36($sp)
    dmfc1	$t8,$f29
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3034
    lw	$a7,432($s1)
    lw	$a6,400($s1)
    lwc1	$f4,220($s1)
    lwc1	$f5,368($s1)
    lw	$a4,284($s1)
    lw	$a3,252($s1)
    lwc1	$f3,72($s1)
    trunc.l.s	$f5,$f5
    lw	$a1,136($s1)
    lw	$a0,104($s1)
    dmfc1	$t3,$f5
    sw	$t3,4($sp)
    lw	$t2,548($s1)
    sw	$t2,12($sp)
    lw	$t1,580($s1)
    sw	$t1,20($sp)
    trunc.l.s	$f4,$f4
    lwc1	$f2,516($s1)
    trunc.l.s	$f3,$f3
    dmfc1	$a5,$f4
    addiu	$t0,$s1,684
    dmfc1	$a2,$f3
    trunc.l.s	$f2,$f2
    move	$t9,$s0
    sll	$a5,$a5,0x0
    sw	$t0,44($sp)
    sll	$a2,$a2,0x0
    addiu	$t0,$s1,680
    sw	$t0,36($sp)
    dmfc1	$t8,$f2
    bal __glOdysseyGenericConvolution
    sw	$t8,28($sp)
    # Line 3044
    lw	$at,688($s1)
    # Line 3052
    lw	$v0,696($s1)
    # Line 3060
    lw	$a0,704($s1)
    # Line 3068
    lw	$a2,712($s1)
    # Line 3045
    lw	$a4,692($s1)
    # Line 3053
    lw	$a6,700($s1)
    # Line 3069
    lw	$t1,716($s1)
    # Line 3067
    lwc1	$f19,484($s1)
    # Line 3051
    lwc1	$f16,188($s1)
    # Line 3043
    lwc1	$f18,_lit_45800000
    # Line 3060
    lwc1	$f13,436($s1)
    # Line 3059
    lwc1	$f17,336($s1)
    # Line 3051
    mul.s	$f16,$f16,$f18
    # Line 3060
    lwc1	$f10,332($s1)
    # Line 3043
    lwc1	$f14,40($s1)
    # Line 3067
    mul.s	$f19,$f19,$f18
    # Line 3060
    lwc1	$f9,440($s1)
    # Line 3059
    mul.s	$f17,$f17,$f18
    # Line 3061
    lw	$a7,708($s1)
    # Line 3060
    mul.s	$f10,$f10,$f13
    # Line 3043
    mul.s	$f14,$f14,$f18
    # Line 3052
    lwc1	$f7,292($s1)
    # Line 3059
    trunc.w.s	$f17,$f17
    # Line 3067
    trunc.w.s	$f19,$f19
    # Line 3068
    lwc1	$f15,480($s1)
    # Line 3060
    mul.s	$f9,$f9,$f10
    # Line 3043
    trunc.w.s	$f14,$f14
    # Line 3052
    lwc1	$f11,184($s1)
    # Line 3059
    mfc1	$t0,$f17
    # Line 3044
    lui	$t8,0xffff
    # Line 3067
    mfc1	$t2,$f19
    # Line 3060
    trunc.l.s	$f9,$f9
    # Line 3052
    lwc1	$f13,288($s1)
    # Line 3061
    and	$a7,$t8,$a7
    # Line 3043
    mfc1	$a5,$f14
    # Line 3044
    lwc1	$f8,36($s1)
    # Line 3059
    andi	$t0,$t0,0xffff
    # Line 3051
    trunc.w.s	$f16,$f16
    # Line 3060
    dmfc1	$a1,$f9
    # Line 3061
    or	$a7,$a7,$t0
    sw	$a7,708($s1)
    # Line 3052
    mul.s	$f11,$f11,$f13
    # Line 3044
    lwc1	$f10,140($s1)
    # Line 3051
    mfc1	$a7,$f16
    # Line 3068
    lwc1	$f17,584($s1)
    # Line 3069
    and	$t1,$t8,$t1
    # Line 3053
    and	$a6,$t8,$a6
    # Line 3044
    lwc1	$f6,144($s1)
    # Line 3052
    mul.s	$f7,$f7,$f11
    # Line 3045
    and	$a4,$t8,$a4
    # Line 3068
    and	$a2,$t8,$a2
    lwc1	$f12,588($s1)
    # Line 3044
    mul.s	$f8,$f8,$f10
    ld	$s0,48($sp)
    # Line 3060
    and	$a0,$t8,$a0
    # Line 3052
    and	$v0,$t8,$v0
    # Line 3068
    mul.s	$f15,$f15,$f17
    # Line 3044
    and	$t8,$t8,$at
    # Line 3043
    andi	$a5,$a5,0xffff
    # Line 3052
    trunc.l.s	$f7,$f7
    # Line 3044
    mul.s	$f6,$f6,$f8
    ld	$ra,56($sp)
    # Line 3067
    andi	$t2,$t2,0xffff
    # Line 3045
    or	$a4,$a4,$a5
    # Line 3068
    mul.s	$f12,$f12,$f15
    # Line 3069
    or	$t1,$t1,$t2
    # Line 3060
    sll	$a1,$a1,0x0
    # Line 3052
    dmfc1	$v1,$f7
    # Line 3044
    trunc.l.s	$f6,$f6
    # Line 3069
    sw	$t1,716($s1)
    # Line 3060
    andi	$a1,$a1,0xffff
    # Line 3051
    andi	$a7,$a7,0xffff
    # Line 3068
    trunc.l.s	$f12,$f12
    # Line 3045
    sw	$a4,692($s1)
    # Line 3053
    or	$a6,$a6,$a7
    # Line 3052
    sll	$v1,$v1,0x0
    # Line 3044
    dmfc1	$t9,$f6
    # Line 3053
    sw	$a6,700($s1)
    # Line 3060
    or	$a0,$a0,$a1
    # Line 3052
    andi	$v1,$v1,0xffff
    # Line 3068
    dmfc1	$a3,$f12
    # Line 3060
    sw	$a0,704($s1)
    # Line 3052
    or	$v0,$v0,$v1
    # Line 3044
    sll	$t9,$t9,0x0
    # Line 3052
    sw	$v0,696($s1)
    # Line 3044
    andi	$t9,$t9,0xffff
    # Line 3068
    sll	$a3,$a3,0x0
    # Line 3044
    or	$t8,$t8,$t9
    sw	$t8,688($s1)
    # Line 3068
    andi	$a3,$a3,0xffff
    or	$a2,$a2,$a3
    sw	$a2,712($s1)
    # Line 3071
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end PackLerpTreeResidue

# Function: __glOdysseyProgramTexFilter
# Declared: Line 3079 (Source lines: 3080-3119)
# Address: 0x0d9b6820 - 0x0d9b6a4c (Size: 556 bytes, Frame: 192)
.globl __glOdysseyProgramTexFilter
.ent __glOdysseyProgramTexFilter
__glOdysseyProgramTexFilter:
    # Line 3080
    addiu	$sp,$sp,-64
    sd	$ra,56($sp)
    sd	$gp,40($sp)
    # Line 3081
    lw	$at,4120($zero)
    li	$v0,1
    # Line 3080
    lui	$v1,0x14
    sd	$s0,32($sp)
    addiu	$v1,$v1,7536
    move	$s0,$a0
    # Line 3081
    lw	$a0,4112($zero)
    sd	$a0,24($sp)
    beq	$at,$v0,.L0d9b6964
    # Line 3080
    addu	$gp,$t9,$v1
    sd	$s1,48($sp)
    # Line 3085
    la	$s1,sub_0d9b0000
    addiu	$s1,$s1,21344
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    move	$a0,$s0
    # Line 3086
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,148
    # Line 3087
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,296
    # Line 3088
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,444
    # Line 3090
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,24096
    bal __glOdysseyGenericConvolution
    move	$a0,$s0
    ld	$at,24($sp)
    lui	$ra,0x1
    ori	$ra,$ra,0x19e0
    addu	$ra,$ra,$at
    lw	$ra,0($ra)
    li	$at,4354
    beq	$ra,$at,.L0d9b697c
    # Line 3093
    move	$t9,$s1
    ld	$s1,48($sp)
.L0d9b68c4:
    # Line 3118
    lw	$a6,2896($s0)
    # Line 3115
    lw	$v1,2884($s0)
    lui	$v0,0xfff
    lui	$at,0xf000
    # Line 3118
    lw	$a3,2908($s0)
    # Line 3115
    ori	$at,$at,0xffff
    # Line 3114
    li	$a0,-4096
    # Line 3116
    lw	$a1,2904($s0)
    # Line 3118
    andi	$a6,$a6,0xfff
    and	$a3,$a0,$a3
    # Line 3116
    lw	$a2,2888($s0)
    # Line 3118
    or	$a3,$a3,$a6
    # Line 3117
    lw	$a5,2892($s0)
    # Line 3115
    sll	$v1,$v1,0x10
    # Line 3114
    lw	$a4,2900($s0)
    # Line 3116
    andi	$a2,$a2,0xfff
    and	$a1,$a0,$a1
    # Line 3117
    sll	$a5,$a5,0x10
    # Line 3116
    or	$a1,$a1,$a2
    # Line 3114
    lw	$a2,2880($s0)
    # Line 3119
    ld	$gp,40($sp)
    # Line 3117
    and	$a5,$v0,$a5
    # Line 3115
    and	$v0,$v0,$v1
    ld	$ra,56($sp)
    # Line 3114
    and	$a0,$a0,$a4
    andi	$a2,$a2,0xfff
    # Line 3118
    sw	$a3,2908($s0)
    # Line 3117
    and	$a1,$at,$a1
    # Line 3114
    or	$a0,$a0,$a2
    # Line 3117
    or	$a1,$a1,$a5
    sw	$a1,2904($s0)
    # Line 3115
    and	$at,$at,$a0
    or	$at,$at,$v0
    sw	$at,2900($s0)
    # Line 3119
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9b6958:
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9b6964:
    # Line 3081
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9b6958
    ld	$ra,56($sp)
.L0d9b697c:
    # Line 3093
    addiu	$a0,$s0,720
    bal __glOdysseyGenericConvolution
    sd	$a0,0($sp)
    # Line 3094
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,868
    # Line 3095
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,1016
    # Line 3096
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,1164
    # Line 3097
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,24096
    bal __glOdysseyGenericConvolution
    ld	$a0,0($sp)
    # Line 3099
    move	$t9,$s1
    addiu	$a0,$s0,1440
    bal __glOdysseyGenericConvolution
    sd	$a0,8($sp)
    # Line 3100
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,1588
    # Line 3101
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,1736
    # Line 3102
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,1884
    # Line 3103
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,24096
    bal __glOdysseyGenericConvolution
    ld	$a0,8($sp)
    # Line 3105
    move	$t9,$s1
    addiu	$a0,$s0,2160
    bal __glOdysseyGenericConvolution
    sd	$a0,16($sp)
    # Line 3106
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,2308
    # Line 3107
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,2456
    # Line 3108
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,2604
    # Line 3109
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,24096
    bal __glOdysseyGenericConvolution
    ld	$a0,16($sp)
    b	.L0d9b68c4
    ld	$s1,48($sp)
.end __glOdysseyProgramTexFilter

# Function: __glOdysseyProgramConvolutionFilter
# Declared: Line 3128 (Source lines: 3132-3228)
# Address: 0x0d9b6a50 - 0x0d9b6f54 (Size: 1284 bytes, Frame: 224)
.globl __glOdysseyProgramConvolutionFilter
.ent __glOdysseyProgramConvolutionFilter
__glOdysseyProgramConvolutionFilter:
    # Line 3132
    addiu	$sp,$sp,-224
    sd	$s0,160($sp)
    # Line 3149
    lw	$a4,16($a1)
    # Line 3132
    move	$s0,$a0
    # Line 3154
    lw	$at,4120($zero)
    lw	$a6,4112($zero)
    li	$v0,1
    # Line 3132
    lui	$v1,0x14
    sd	$ra,216($sp)
    addiu	$v1,$v1,6976
    # Line 3149
    addiu	$a4,$a4,-1
    sd	$gp,168($sp)
    # Line 3154
    beq	$at,$v0,.L0d9b6f2c
    # Line 3132
    addu	$gp,$t9,$v1
    sd	$a2,144($sp)
    # Line 3160
    lw	$t0,764($a6)
    sd	$a3,208($sp)
    lw	$t0,64($t0)
    sd	$a4,136($sp)
    sd	$s1,200($sp)
    mtc1	$t0,$f0
    sd	$s3,192($sp)
    lui	$a5,0x1
    addu	$a5,$a6,$a5
    sd	$a5,128($sp)
    lw	$a5,6624($a5)
    cvt.s.w	$f0,$f0
    sd	$s2,184($sp)
    li	$a7,4354
    sd	$s4,176($sp)
    beq	$a5,$a7,.L0d9b6bec
    sdc1	$f0,96($sp)
    # Line 3166
    la	$s1,sub_0d9b0000
    addiu	$s1,$s1,21344
    # Line 3202
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    nop
    # Line 3203
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,148
    # Line 3204
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,296
    # Line 3205
    move	$t9,$s1
    bal __glOdysseyGenericConvolution
    addiu	$a0,$s0,444
    # Line 3206
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,24096
    bal __glOdysseyGenericConvolution
    move	$a0,$s0
.L0d9b6b18:
    # Line 3209
    ld	$a0,208($sp)
    beqz	$a0,.L0d9b6f0c
    li	$ra,0x8010
    beq	$a0,$ra,.L0d9b6f0c
    # Line 3217
    nop	# was lw $t9, -31228($gp) # &__glOdysseyProgram2DOffsets
    ld	$a1,136($sp)
    move	$a0,$s0
    bal __glOdysseyProgram2DOffsets
    ld	$a2,144($sp)
    ld	$s1,200($sp)
.L0d9b6b40:
    ld	$s3,192($sp)
    ld	$s2,184($sp)
    ld	$s4,176($sp)
    # Line 3226
    lw	$a6,2896($s0)
    # Line 3223
    lw	$v1,2884($s0)
    lui	$v0,0xfff
    lui	$at,0xf000
    # Line 3226
    lw	$a3,2908($s0)
    # Line 3223
    ori	$at,$at,0xffff
    # Line 3222
    li	$a0,-4096
    # Line 3224
    lw	$a1,2904($s0)
    # Line 3226
    andi	$a6,$a6,0xfff
    and	$a3,$a0,$a3
    # Line 3224
    lw	$a2,2888($s0)
    # Line 3226
    or	$a3,$a3,$a6
    # Line 3225
    lw	$a5,2892($s0)
    # Line 3223
    sll	$v1,$v1,0x10
    # Line 3222
    lw	$a4,2900($s0)
    # Line 3224
    andi	$a2,$a2,0xfff
    and	$a1,$a0,$a1
    # Line 3225
    sll	$a5,$a5,0x10
    # Line 3224
    or	$a1,$a1,$a2
    # Line 3222
    lw	$a2,2880($s0)
    # Line 3228
    ld	$gp,168($sp)
    # Line 3225
    and	$a5,$v0,$a5
    # Line 3223
    and	$v0,$v0,$v1
    ld	$ra,216($sp)
    # Line 3222
    and	$a0,$a0,$a4
    andi	$a2,$a2,0xfff
    # Line 3226
    sw	$a3,2908($s0)
    # Line 3225
    and	$a1,$at,$a1
    # Line 3222
    or	$a0,$a0,$a2
    # Line 3225
    or	$a1,$a1,$a5
    sw	$a1,2904($s0)
    # Line 3223
    and	$at,$at,$a0
    or	$at,$at,$v0
    sw	$at,2900($s0)
    # Line 3228
    ld	$s0,160($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9b6be0:
    ld	$gp,168($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9b6bec:
    # Line 3164
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    ld	$a0,136($sp)
    jal	__glOdysseyImageLogBase2
    sll	$a0,$a0,0x3
    # Line 3165
    addiu	$a4,$s0,2160
    sd	$a4,104($sp)
    addiu	$a3,$s0,1440
    sd	$a3,112($sp)
    addiu	$a3,$s0,720
    li	$a2,23
    sd	$a3,120($sp)
    li	$a1,1
    subu	$a2,$a2,$v0
    sllv	$a1,$a1,$a2
    ld	$a2,128($sp)
    move	$s2,$zero
    sd	$a1,152($sp)
    move	$s4,$s0
    b	.L0d9b6f44
    sw	$a1,7116($a2)
.L0d9b6c3c:
    # Line 3166
    li	$a5,4
    addiu	$s2,$s2,1
    # Line 3165
    move	$s1,$s0
    move	$s3,$zero
    # Line 3166
    beq	$s2,$a5,.L0d9b6b18
    addiu	$s4,$s4,148
.L0d9b6c54:
    b	.L0d9b6d04
    # Line 3168
    nop	# was lw $t9, -31248($gp) # &__glOdyssey_ks_to_alphas
.L0d9b6c5c:
    # Line 3182
    addiu	$a4,$sp,0
    # Line 3173
    lw	$t9,0($sp)
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,44($s1)
    lw	$t8,4($sp)
    mtc1	$t8,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,48($s1)
    lw	$t3,8($sp)
    mtc1	$t3,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,52($s1)
    lw	$t2,12($sp)
    mtc1	$t2,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,56($s1)
    lw	$t1,16($sp)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,60($s1)
    lw	$t0,20($sp)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,64($s1)
    lw	$a7,24($sp)
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,68($s1)
    lw	$a6,28($sp)
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,72($s1)
    # Line 3175
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    move	$a0,$s0
.L0d9b6cf0:
    # Line 3167
    li	$ra,4
.L0d9b6cf4:
    addiu	$s3,$s3,1
    beq	$s3,$ra,.L0d9b6c3c
    addiu	$s1,$s1,148
    # Line 3168
    # lw $t9, -31248($gp) # &__glOdyssey_ks_to_alphas
.L0d9b6d04:
    move	$a0,$s4
    move	$a4,$s3
    addiu	$a2,$sp,0
    ld	$a3,152($sp)
    bal __glOdyssey_ks_to_alphas
    addiu	$a1,$sp,32
    # Line 3170
    beqz	$s2,.L0d9b6c5c
    li	$at,1
    li	$v1,3
    beq	$s2,$at,.L0d9b6ddc
    # Line 3188
    addiu	$a4,$sp,0
    # Line 3170
    li	$v0,2
    beq	$s2,$v0,.L0d9b6e74
    # Line 3194
    addiu	$a4,$sp,0
    # Line 3170
    bne	$s2,$v1,.L0d9b6cf0
    addiu	$a4,$sp,0
    # Line 3191
    lw	$t0,0($sp)
    mtc1	$t0,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,2204($s1)
    lw	$a7,4($sp)
    mtc1	$a7,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,2208($s1)
    lw	$a6,8($sp)
    mtc1	$a6,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,2212($s1)
    lw	$a5,12($sp)
    mtc1	$a5,$f13
    cvt.s.w	$f13,$f13
    swc1	$f13,2216($s1)
    lw	$a3,16($sp)
    mtc1	$a3,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,2220($s1)
    lw	$a2,20($sp)
    mtc1	$a2,$f11
    cvt.s.w	$f11,$f11
    swc1	$f11,2224($s1)
    lw	$a1,24($sp)
    mtc1	$a1,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,2228($s1)
    lw	$a0,28($sp)
    mtc1	$a0,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,2232($s1)
    # Line 3193
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    ld	$a0,104($sp)
    b	.L0d9b6cf4
    # Line 3167
    li	$ra,4
.L0d9b6ddc:
    # Line 3179
    lw	$a3,0($sp)
    mtc1	$a3,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,764($s1)
    lw	$a2,4($sp)
    mtc1	$a2,$f27
    cvt.s.w	$f27,$f27
    swc1	$f27,768($s1)
    lw	$a1,8($sp)
    mtc1	$a1,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,772($s1)
    lw	$a0,12($sp)
    mtc1	$a0,$f23
    cvt.s.w	$f23,$f23
    swc1	$f23,776($s1)
    lw	$v1,16($sp)
    mtc1	$v1,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,780($s1)
    lw	$v0,20($sp)
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    swc1	$f19,784($s1)
    lw	$at,24($sp)
    mtc1	$at,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,788($s1)
    lw	$ra,28($sp)
    mtc1	$ra,$f17
    cvt.s.w	$f17,$f17
    swc1	$f17,792($s1)
    # Line 3181
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    ld	$a0,120($sp)
    b	.L0d9b6cf4
    # Line 3167
    li	$ra,4
.L0d9b6e74:
    # Line 3185
    lw	$a3,0($sp)
    mtc1	$a3,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,1484($s1)
    lw	$a2,4($sp)
    mtc1	$a2,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,1488($s1)
    lw	$a1,8($sp)
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,1492($s1)
    lw	$a0,12($sp)
    mtc1	$a0,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,1496($s1)
    lw	$v1,16($sp)
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,1500($s1)
    lw	$v0,20($sp)
    mtc1	$v0,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,1504($s1)
    lw	$at,24($sp)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,1508($s1)
    lw	$ra,28($sp)
    mtc1	$ra,$f31
    cvt.s.w	$f31,$f31
    swc1	$f31,1512($s1)
    # Line 3187
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    ld	$a0,112($sp)
    b	.L0d9b6cf4
    # Line 3167
    li	$ra,4
.L0d9b6f0c:
    # Line 3212
    # lw $t9, -31232($gp) # &__glOdysseyProgram1DOffsets
    ld	$a1,136($sp)
    ld	$a2,144($sp)
    move	$a0,$s0
    bal __glOdysseyProgram1DOffsets
    ldc1	$f15,96($sp)
    b	.L0d9b6b40
    ld	$s1,200($sp)
.L0d9b6f2c:
    # Line 3154
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,160($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9b6be0
    ld	$ra,216($sp)
.L0d9b6f44:
    # Line 3165
    move	$s1,$s0
    move	$s3,$zero
    b	.L0d9b6c54
    nop
.end __glOdysseyProgramConvolutionFilter

# Function: __glOdysseyProgramGenericConvolutionFilter
# Declared: Line 3238 (Source lines: 3241-3306)
# Address: 0x0d9b6f60 - 0x0d9b73c0 (Size: 1120 bytes, Frame: 192)
.globl __glOdysseyProgramGenericConvolutionFilter
.ent __glOdysseyProgramGenericConvolutionFilter
__glOdysseyProgramGenericConvolutionFilter:
    # Line 3251
    lw	$a3,4112($zero)
    # Line 3241
    addiu	$sp,$sp,-192
    sd	$s0,168($sp)
    # Line 3254
    lui	$v1,0x1
    # Line 3241
    move	$s0,$a2
    # Line 3251
    lw	$at,4120($zero)
    # Line 3241
    sd	$s1,176($sp)
    # Line 3251
    li	$a4,1
    # Line 3241
    lui	$v0,0x14
    move	$s1,$a0
    sd	$ra,152($sp)
    addiu	$v0,$v0,5680
    sd	$gp,184($sp)
    # Line 3251
    beq	$at,$a4,.L0d9b73a4
    # Line 3241
    addu	$gp,$t9,$v0
    # Line 3254
    sll	$a0,$a2,0x3
    addu	$v1,$a3,$v1
    sd	$v1,128($sp)
    addu	$a0,$a0,$a2
    lw	$v1,6624($v1)
    sll	$a0,$a0,0x2
    li	$a2,4354
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    sd	$s2,120($sp)
    beq	$v1,$a2,.L0d9b7094
    addu	$a0,$s1,$a0
    # Line 3296
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,21344
    bal __glOdysseyGenericConvolution
    nop
    # Line 3297
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,24096
    bal __glOdysseyGenericConvolution
    move	$a0,$s1
.L0d9b6fec:
    # Line 3304
    lw	$a4,2892($s1)
    # Line 3302
    lw	$v0,2884($s1)
    lui	$ra,0xf000
    # Line 3303
    lw	$a0,2904($s1)
    # Line 3302
    lui	$at,0xfff
    ori	$ra,$ra,0xffff
    # Line 3303
    lw	$a1,2888($s1)
    # Line 3302
    sll	$v0,$v0,0x10
    # Line 3301
    lw	$a3,2900($s1)
    li	$v1,-4096
    # Line 3305
    lw	$a2,2908($s1)
    # Line 3303
    andi	$a1,$a1,0xfff
    and	$a0,$v1,$a0
    # Line 3304
    sll	$a4,$a4,0x10
    # Line 3303
    or	$a0,$a0,$a1
    # Line 3301
    lw	$a1,2880($s1)
    # Line 3306
    ld	$gp,184($sp)
    # Line 3304
    and	$a4,$at,$a4
    # Line 3305
    and	$a2,$v1,$a2
    # Line 3306
    ld	$s0,168($sp)
    # Line 3301
    and	$v1,$v1,$a3
    andi	$a1,$a1,0xfff
    # Line 3306
    ld	$s2,120($sp)
    # Line 3302
    and	$at,$at,$v0
    # Line 3301
    or	$v1,$v1,$a1
    # Line 3305
    lw	$a5,2896($s1)
    # Line 3304
    and	$a0,$ra,$a0
    # Line 3302
    and	$ra,$ra,$v1
    or	$ra,$ra,$at
    sw	$ra,2900($s1)
    # Line 3305
    andi	$a5,$a5,0xfff
    # Line 3306
    ld	$ra,152($sp)
    # Line 3305
    or	$a2,$a2,$a5
    sw	$a2,2908($s1)
    # Line 3304
    or	$a0,$a0,$a4
    sw	$a0,2904($s1)
    # Line 3306
    ld	$s1,176($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9b7088:
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9b7094:
    # Line 3260
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    sd	$a0,144($sp)
    lw	$a0,16($a1)
    sll	$a0,$a0,0x3
    jal	__glOdysseyImageLogBase2
    addiu	$a0,$a0,-8
    # Line 3261
    sd	$zero,160($sp)
    addiu	$a4,$s1,2160
    sd	$a4,96($sp)
    addiu	$a3,$s1,1440
    sd	$a3,104($sp)
    addiu	$a3,$s1,720
    li	$a2,23
    sd	$a3,112($sp)
    li	$a1,1
    subu	$a2,$a2,$v0
    sllv	$a1,$a1,$a2
    ld	$a2,128($sp)
    sd	$a1,136($sp)
    move	$s2,$s1
    b	.L0d9b7198
    sw	$a1,7116($a2)
.L0d9b70ec:
    # Line 3279
    addiu	$a1,$sp,0
    # Line 3270
    lw	$t8,0($sp)
    mtc1	$t8,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,44($s2)
    lw	$t3,4($sp)
    mtc1	$t3,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,48($s2)
    lw	$t2,8($sp)
    mtc1	$t2,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,52($s2)
    lw	$t1,12($sp)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,56($s2)
    lw	$t0,16($sp)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,60($s2)
    lw	$a7,20($sp)
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,64($s2)
    lw	$a6,24($sp)
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,68($s2)
    lw	$a5,28($sp)
    mtc1	$a5,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,72($s2)
    # Line 3272
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    move	$a0,$s1
.L0d9b7180:
    # Line 3263
    ld	$ra,160($sp)
.L0d9b7184:
    li	$at,4
    addiu	$ra,$ra,1
    addiu	$s2,$s2,148
    beq	$ra,$at,.L0d9b6fec
    sd	$ra,160($sp)
.L0d9b7198:
    # Line 3264
    # lw $t9, -31248($gp) # &__glOdyssey_ks_to_alphas
    ld	$a0,144($sp)
    ld	$a4,160($sp)
    addiu	$a2,$sp,0
    ld	$a3,136($sp)
    bal __glOdyssey_ks_to_alphas
    addiu	$a1,$sp,32
    # Line 3267
    beqz	$s0,.L0d9b70ec
    li	$v0,1
    li	$a0,3
    beq	$s0,$v0,.L0d9b7274
    # Line 3285
    addiu	$a1,$sp,0
    # Line 3267
    li	$v1,2
    beq	$s0,$v1,.L0d9b730c
    # Line 3291
    addiu	$a1,$sp,0
    # Line 3267
    bne	$s0,$a0,.L0d9b7180
    addiu	$a1,$sp,0
    # Line 3288
    lw	$t1,0($sp)
    mtc1	$t1,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,2204($s2)
    lw	$t0,4($sp)
    mtc1	$t0,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,2208($s2)
    lw	$a7,8($sp)
    mtc1	$a7,$f13
    cvt.s.w	$f13,$f13
    swc1	$f13,2212($s2)
    lw	$a6,12($sp)
    mtc1	$a6,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,2216($s2)
    lw	$a5,16($sp)
    mtc1	$a5,$f11
    cvt.s.w	$f11,$f11
    swc1	$f11,2220($s2)
    lw	$a4,20($sp)
    mtc1	$a4,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,2224($s2)
    lw	$a3,24($sp)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,2228($s2)
    lw	$a2,28($sp)
    mtc1	$a2,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,2232($s2)
    # Line 3290
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    ld	$a0,96($sp)
    b	.L0d9b7184
    # Line 3263
    ld	$ra,160($sp)
.L0d9b7274:
    # Line 3276
    lw	$a4,0($sp)
    mtc1	$a4,$f27
    cvt.s.w	$f27,$f27
    swc1	$f27,764($s2)
    lw	$a3,4($sp)
    mtc1	$a3,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,768($s2)
    lw	$a2,8($sp)
    mtc1	$a2,$f23
    cvt.s.w	$f23,$f23
    swc1	$f23,772($s2)
    lw	$a0,12($sp)
    mtc1	$a0,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,776($s2)
    lw	$v1,16($sp)
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    swc1	$f19,780($s2)
    lw	$v0,20($sp)
    mtc1	$v0,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,784($s2)
    lw	$at,24($sp)
    mtc1	$at,$f17
    cvt.s.w	$f17,$f17
    swc1	$f17,788($s2)
    lw	$ra,28($sp)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,792($s2)
    # Line 3278
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    ld	$a0,112($sp)
    b	.L0d9b7184
    # Line 3263
    ld	$ra,160($sp)
.L0d9b730c:
    # Line 3282
    lw	$a4,0($sp)
    mtc1	$a4,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,1484($s2)
    lw	$a3,4($sp)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,1488($s2)
    lw	$a2,8($sp)
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,1492($s2)
    lw	$a0,12($sp)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,1496($s2)
    lw	$v1,16($sp)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,1500($s2)
    lw	$v0,20($sp)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,1504($s2)
    lw	$at,24($sp)
    mtc1	$at,$f31
    cvt.s.w	$f31,$f31
    swc1	$f31,1508($s2)
    lw	$ra,28($sp)
    mtc1	$ra,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,1512($s2)
    # Line 3284
    # lw $t9, -32720($gp) # &sub_0d9b0000
    addiu	$t9,$t9,25216
    bal __glOdysseyGenericConvolution
    ld	$a0,104($sp)
    b	.L0d9b7184
    # Line 3263
    ld	$ra,160($sp)
.L0d9b73a4:
    # Line 3251
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,168($sp)
    ld	$s1,176($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9b7088
    ld	$ra,152($sp)
.end __glOdysseyProgramGenericConvolutionFilter

.late_rodata
jtbl_0dae90b0:
    .word .L0d9b16c8
    .word .L0d9b16c8
    .word .L0d9b17fc
    .word .L0d9b1850
    .word .L0d9b1850
    .word .L0d9b1850
    .word .L0d9b1834
    .word .L0d9b1834
    .word .L0d9b1834
    .word .L0d9b1818
    .word .L0d9b1818
    .word .L0d9b1818
    .word .L0d9b1818
    .word .L0d9b1818
    .word .L0d9b1adc
    .word .L0d9b1a10
    .word .L0d9b23fc
    .word .L0d9b2324
    .word .L0d9b224c
    .word .L0d9b2184
    .word .L0d9b20ac
    .word .L0d9b1fd4
    .word .L0d9b1efc
    .word .L0d9b1e24
    .word .L0d9b1d5c
    .word .L0d9b1c94
    .word .L0d9b1bcc
    .word .L0d9b1b10
    .word .L0d9b25a0
    .word .L0d9b24d4
    .word .L0d9b2ab0
    .word .L0d9b29d8
    .word .L0d9b2908
    .word .L0d9b2830
    .word .L0d9b2760
    .word .L0d9b2698
    .word .L0d9b25d4
jtbl_0dae9144:
    .word .L0d9b4170
    .word .L0d9b4170
    .word .L0d9b4198
    .word .L0d9b4208
    .word .L0d9b4208
    .word .L0d9b4208
    .word .L0d9b41e8
    .word .L0d9b41e8
    .word .L0d9b41e8
    .word .L0d9b41c4
    .word .L0d9b41c4
    .word .L0d9b41c4
    .word .L0d9b41c4
    .word .L0d9b41c4
    .word .L0d9b4390
    .word .L0d9b4514
    .word .L0d9b44f4
    .word .L0d9b44d4
    .word .L0d9b44b0
    .word .L0d9b4490
    .word .L0d9b4474
    .word .L0d9b4450
    .word .L0d9b4434
    .word .L0d9b4414
    .word .L0d9b43f0
    .word .L0d9b43d0
    .word .L0d9b43b0
    .word .L0d9b4248
    .word .L0d9b4334
    .word .L0d9b4314
    .word .L0d9b42f0
    .word .L0d9b42cc
    .word .L0d9b42ac
    .word .L0d9b4288
    .word .L0d9b4268

.rdata
_lit8_3f30000000000000:
    .word 0x3f300000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_40efffe000000000:
    .word 0x40efffe0, 0x00000000
_lit8_41f0000000000000:
    .word 0x41f00000, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_2f800001:
    .word 0x2f800001
_lit_30000001:
    .word 0x30000001
_lit_37800080:
    .word 0x37800080
_lit_38000080:
    .word 0x38000080
_lit_3a802008:
    .word 0x3a802008
_lit_3b808081:
    .word 0x3b808081
_lit_3c008081:
    .word 0x3c008081
_lit_3c820821:
    .word 0x3c820821
_lit_3d042108:
    .word 0x3d042108
_lit_3d888889:
    .word 0x3d888889
_lit_3e124925:
    .word 0x3e124925
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f800000:
    .word 0x3f800000
_lit_40400000:
    .word 0x40400000
_lit_40e00000:
    .word 0x40e00000
_lit_41700000:
    .word 0x41700000
_lit_41f80000:
    .word 0x41f80000
_lit_427c0000:
    .word 0x427c0000
_lit_437f0000:
    .word 0x437f0000
_lit_447fc000:
    .word 0x447fc000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_477fff00:
    .word 0x477fff00
_lit_4f800000:
    .word 0x4f800000
_lit_bf800000:
    .word 0xbf800000

