# Source: ../pixel/px_modify.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_modify.c
# Total Functions: 19

.text

# Function: __glBuildRGBAModifyTables
# Declared: Line 35 (Source lines: 36-132)
# Address: 0x0d9fed00 - 0x0d9ff054 (Size: 852 bytes, Frame: 224)
.globl __glBuildRGBAModifyTables
.ent __glBuildRGBAModifyTables
__glBuildRGBAModifyTables:
    # Line 59
    lw	$a5,80($a1)
    # Line 36
    addiu	$sp,$sp,-96
    sd	$s3,88($sp)
    sd	$s4,64($sp)
    sd	$ra,72($sp)
    sd	$s1,40($sp)
    # Line 47
    lbu	$s1,760($a0)
    # Line 36
    sd	$s2,80($sp)
    sd	$s5,32($sp)
    # Line 48
    li	$v0,1
    # Line 50
    lw	$s5,68($a1)
    # Line 36
    move	$s2,$a1
    sd	$s0,56($sp)
    lui	$at,0x10
    move	$s0,$a0
    # Line 48
    sb	$v0,64($a1)
    # Line 36
    addiu	$at,$at,-26480
    sd	$gp,48($sp)
    # Line 50
    beqz	$s5,.L0d9fefe0
    # Line 36
    addu	$gp,$t9,$at
.L0d9fed50:
    # Line 73
    lwc1	$f17,652($s0)
    # Line 72
    lwc1	$f12,648($s0)
    # Line 71
    lwc1	$f13,644($s0)
    # Line 70
    lwc1	$f15,640($s0)
    # Line 69
    lwc1	$f16,672($s0)
    # Line 68
    lwc1	$f14,668($s0)
    # Line 84
    addiu	$s3,$s0,1132
    # Line 67
    lwc1	$f18,664($s0)
    # Line 81
    addiu	$t3,$s0,1120
    # Line 78
    addiu	$t9,$s0,1108
    # Line 66
    lwc1	$f19,660($s0)
    # Line 75
    addiu	$ra,$s0,1096
    # Line 63
    lw	$a3,76($s2)
    # Line 86
    mtc1	$zero,$f23
    move	$a1,$zero
    move	$a4,$s5
    ld	$s5,32($sp)
    li	$s4,256
    # Line 73
    beqz	$s1,.L0d9fefbc
    # Line 62
    lw	$a0,72($s2)
    # Line 77
    lw	$t1,1096($s0)
    # Line 83
    lw	$s2,1120($s0)
    # Line 86
    lw	$t2,1132($s0)
    # Line 80
    lw	$t8,1108($s0)
    # Line 86
    addiu	$t2,$t2,-1
    # Line 83
    addiu	$s2,$s2,-1
    # Line 80
    addiu	$t8,$t8,-1
    # Line 77
    addiu	$t1,$t1,-1
.L0d9fedc0:
    # Line 86
    ldc1	$f21,_lit8_406fe00000000000
    b	.L0d9ff038
    # Line 132
    ld	$gp,48($sp)
    nop
.L0d9fedd0:
    # Line 112
    mtc1	$t2,$f8
    cvt.s.w	$f8,$f8
    # Line 102
    cvt.s.w	$f1,$f1
    # Line 107
    cvt.s.w	$f2,$f2
    # Line 97
    lwc1	$f0,3540($s0)
    # Line 112
    madd.s	$f8,$f0,$f8,$f5
    # Line 102
    madd.s	$f1,$f0,$f1,$f4
    # Line 107
    madd.s	$f2,$f0,$f2,$f7
    # Line 97
    cvt.s.w	$f3,$f3
    # Line 112
    trunc.w.s	$f8,$f8
    # Line 107
    trunc.w.s	$f2,$f2
    # Line 112
    mfc1	$a7,$f8
    # Line 97
    madd.s	$f0,$f0,$f3,$f6
    # Line 102
    trunc.w.s	$f1,$f1
    # Line 107
    mfc1	$a6,$f2
    # Line 114
    slt	$t0,$t2,$a7
    slti	$a2,$a7,0
    movn	$a7,$t2,$t0
    # Line 102
    mfc1	$v0,$f1
    movz	$v1,$a7,$a2
    # Line 109
    slt	$a7,$s2,$a6
    slti	$a2,$a6,0
    movn	$a6,$s2,$a7
    slti	$a7,$v0,0
    # Line 115
    sll	$v1,$v1,0x2
    movz	$at,$a6,$a2
    # Line 104
    slt	$a2,$t8,$v0
    # Line 115
    lw	$a6,8($s3)
    # Line 97
    trunc.w.s	$f0,$f0
    # Line 104
    movn	$v0,$t8,$a2
    # Line 102
    move	$a2,$zero
    # Line 115
    addu	$a6,$a6,$v1
    # Line 105
    lw	$v1,8($t9)
    movz	$a2,$v0,$a7
    # Line 97
    mfc1	$t0,$f0
    # Line 105
    sll	$a2,$a2,0x2
    # Line 110
    sll	$at,$at,0x2
    # Line 105
    addu	$v1,$v1,$a2
    # Line 115
    lwc1	$f9,0($a6)
    slti	$a7,$t0,0
    # Line 99
    slt	$v0,$t1,$t0
    # Line 110
    lw	$a6,8($t3)
    # Line 99
    movn	$t0,$t1,$v0
    # Line 97
    move	$v0,$zero
    movz	$v0,$t0,$a7
    # Line 110
    addu	$a6,$a6,$at
    # Line 100
    lw	$at,8($ra)
    # Line 105
    lwc1	$f8,0($v1)
    # Line 100
    sll	$v0,$v0,0x2
    # Line 110
    lwc1	$f11,0($a6)
    # Line 100
    addu	$at,$at,$v0
    lwc1	$f10,0($at)
.L0d9feea0:
    # Line 127
    mul.s	$f31,$f31,$f10
.L0d9feea4:
    swc1	$f31,0($a4)
    # Line 128
    lwc1	$f29,30812($s0)
    mul.s	$f29,$f29,$f8
    swc1	$f29,0($a0)
    # Line 129
    lwc1	$f27,30816($s0)
    mul.s	$f27,$f27,$f11
    swc1	$f27,0($a3)
    # Line 102
    mtc1	$t8,$f1
    # Line 130
    lwc1	$f25,30848($s0)
    # Line 89
    addiu	$a4,$a4,4
    # Line 107
    mtc1	$s2,$f2
    # Line 89
    addiu	$a0,$a0,4
    # Line 97
    mtc1	$t1,$f3
    # Line 89
    addiu	$a3,$a3,4
    # Line 107
    move	$at,$zero
    # Line 130
    mul.s	$f25,$f25,$f9
    # Line 112
    move	$v1,$zero
    # Line 89
    beq	$a1,$s4,.L0d9fef9c
    # Line 130
    swc1	$f25,-4($a5)
    # Line 86
    mtc1	$a1,$f6
.L0d9feef4:
    cvt.d.w	$f6,$f6
    div.d	$f6,$f6,$f21
    cvt.s.d	$f6,$f6
    madd.s	$f5,$f16,$f6,$f17
    madd.s	$f7,$f14,$f6,$f12
    # Line 89
    addiu	$a1,$a1,1
    # Line 86
    madd.s	$f4,$f18,$f6,$f13
    # Line 127
    lwc1	$f31,30808($s0)
    # Line 89
    addiu	$a5,$a5,4
    # Line 86
    bnez	$s1,.L0d9fedd0
    madd.s	$f6,$f19,$f6,$f15
    # Line 115
    lwc1	$f9,3544($s0)
    c.lt.s	$f9,$f6
    # Line 118
    mov.s	$f10,$f6
    # Line 122
    c.lt.s $f9,$f5
    # Line 120
    c.lt.s $f9,$f7
    # Line 121
    mov.s	$f11,$f9
    # Line 119
    mov.s	$f8,$f9
    # Line 115
    bc1f	.L0d9fef4c
    # Line 118
    c.lt.s $f9,$f4
    # Line 117
    b	.L0d9fef54
    mov.s	$f10,$f9
.L0d9fef4c:
    # Line 118
    c.lt.s $f6,$f23
    movt.s	$f10,$f23,$fcc1
.L0d9fef54:
    bc1t .L0d9fef68
    nop
    # Line 120
    mov.s	$f8,$f4
    c.lt.s $f4,$f23
    movt.s	$f8,$f23,$fcc3
.L0d9fef68:
    bc1t .L0d9fef7c
    nop
    # Line 122
    mov.s	$f11,$f7
    c.lt.s $f7,$f23
    movt.s	$f11,$f23,$fcc5
.L0d9fef7c:
    bc1f .L0d9fef8c
    nop
    # Line 123
    b	.L0d9feea4
    # Line 127
    mul.s	$f31,$f31,$f10
.L0d9fef8c:
    # Line 124
    mov.s	$f9,$f5
    c.lt.s $f5,$f23
    b	.L0d9feea0
    movt.s	$f9,$f23,$fcc7
.L0d9fef9c:
    # Line 132
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$ra,72($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9fefbc:
    # Line 86
    lw	$t1,28($sp)
    lw	$ra,24($sp)
    lw	$t8,20($sp)
    lw	$t9,16($sp)
    lw	$s2,12($sp)
    lw	$t3,8($sp)
    lw	$t2,4($sp)
    b	.L0d9fedc0
    lw	$s3,0($sp)
.L0d9fefe0:
    # Line 53
    lw	$t9,0($s0)
    jalr	$t9
    li	$a1,1024
    sw	$v0,68($s2)
    # Line 55
    lw	$t9,0($s0)
    # Line 53
    move	$s5,$v0
    # Line 55
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,72($s2)
    # Line 57
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,76($s2)
    # Line 59
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    move	$a5,$v0
    b	.L0d9fed50
    sw	$v0,80($s2)
.L0d9ff038:
    # Line 102
    mtc1	$t8,$f1
    # Line 107
    mtc1	$s2,$f2
    # Line 97
    mtc1	$t1,$f3
    # Line 107
    move	$at,$zero
    # Line 112
    move	$v1,$zero
    b	.L0d9feef4
    # Line 86
    mtc1	$a1,$f6
.end __glBuildRGBAModifyTables

# Function: __glBuildItoIModifyTables
# Declared: Line 138 (Source lines: 139-187)
# Address: 0x0d9ff060 - 0x0d9ff244 (Size: 484 bytes, Frame: 192)
.globl __glBuildItoIModifyTables
.ent __glBuildItoIModifyTables
__glBuildItoIModifyTables:
    # Line 139
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$s1,16($sp)
    # Line 152
    lw	$s1,30792($a0)
    # Line 139
    sd	$s0,24($sp)
    # Line 151
    lbu	$s0,760($a0)
    # Line 155
    lw	$a4,88($a1)
    # Line 153
    li	$a5,1
    # Line 139
    sd	$s2,32($sp)
    lui	$at,0x10
    move	$s2,$a0
    # Line 153
    sb	$a5,84($a1)
    # Line 139
    addiu	$at,$at,-27344
    sd	$gp,40($sp)
    # Line 155
    beqz	$a4,.L0d9ff21c
    # Line 139
    addu	$gp,$t9,$at
.L0d9ff0a0:
    # Line 162
    lw	$a0,752($s2)
    # Line 161
    lw	$a3,756($s2)
    # Line 187
    ld	$gp,40($sp)
    # Line 162
    bltz	$a0,.L0d9ff1ec
    # Line 164
    sllv	$v1,$a5,$a0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    # Line 166
    beqz	$s0,.L0d9ff210
    # Line 164
    cvt.s.l	$f6,$f6
.L0d9ff0c8:
    # Line 172
    lw	$a0,1024($s2)
    # Line 170
    addiu	$a5,$s2,1024
    # Line 172
    addiu	$a0,$a0,-1
.L0d9ff0d4:
    mtc1	$a3,$f7
    move	$a1,$zero
    mtc1	$zero,$f8
    li	$a6,256
    b	.L0d9ff134
    cvt.s.w	$f7,$f7
    nop
.L0d9ff0f0:
    # Line 181
    add.s	$f9,$f5,$f4
    trunc.w.s	$f9,$f9
    mfc1	$a3,$f9
.L0d9ff0fc:
    # Line 183
    and	$a7,$a3,$a0
    sll	$a7,$a7,0x2
    addu	$a2,$a2,$a7
    lw	$a2,0($a2)
    mtc1	$a2,$f4
    cvt.s.w	$f4,$f4
.L0d9ff114:
    # Line 185
    trunc.w.s	$f9,$f4
    mfc1	$t0,$f9
    and	$t0,$s1,$t0
    mtc1	$t0,$f5
    cvt.s.w	$f5,$f5
    # Line 175
    addiu	$a4,$a4,8
    beq	$a1,$a6,.L0d9ff1d8
    # Line 185
    swc1	$f5,-4($a4)
.L0d9ff134:
    # Line 176
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    # Line 175
    addiu	$a1,$a1,1
    # Line 176
    beqz	$s0,.L0d9ff18c
    madd.s	$f4,$f7,$f4,$f6
    c.lt.s	$f4,$f8
    # Line 183
    lw	$t1,8($a5)
    # Line 176
    bc1f	.L0d9ff168
    lwc1	$f5,3540($s2)
    # Line 179
    sub.s	$f9,$f4,$f5
    trunc.w.s	$f9,$f9
    b	.L0d9ff174
    mfc1	$a3,$f9
.L0d9ff168:
    # Line 181
    add.s	$f10,$f5,$f4
    trunc.w.s	$f10,$f10
    mfc1	$a3,$f10
.L0d9ff174:
    # Line 183
    and	$t2,$a3,$a0
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
.L0d9ff18c:
    # Line 185
    trunc.w.s	$f5,$f4
    mfc1	$t3,$f5
    # Line 176
    mtc1	$a1,$f4
    # Line 185
    and	$t3,$s1,$t3
    mtc1	$t3,$f5
    # Line 176
    cvt.s.w	$f4,$f4
    # Line 185
    cvt.s.w	$f5,$f5
    # Line 175
    addiu	$a1,$a1,1
    # Line 176
    madd.s	$f4,$f7,$f4,$f6
    beqz	$s0,.L0d9ff114
    # Line 185
    swc1	$f5,0($a4)
    # Line 176
    c.lt.s $f4,$f8
    # Line 183
    lw	$a2,8($a5)
    # Line 176
    bc1f .L0d9ff0f0
    lwc1	$f5,3540($s2)
    # Line 179
    sub.s	$f9,$f4,$f5
    trunc.w.s	$f9,$f9
    b	.L0d9ff0fc
    mfc1	$a3,$f9
.L0d9ff1d8:
    # Line 187
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ff1ec:
    # Line 166
    negu	$t8,$a0
    sllv	$t8,$a5,$t8
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f7
    cvt.s.l	$f7,$f7
    lwc1	$f6,3544($s2)
    bnez	$s0,.L0d9ff0c8
    div.s	$f6,$f6,$f7
.L0d9ff210:
    # Line 172
    lw	$a5,4($sp)
    b	.L0d9ff0d4
    lw	$a0,0($sp)
.L0d9ff21c:
    # Line 157
    lw	$t9,0($s2)
    sd	$ra,48($sp)
    jalr	$t9
    li	$a1,1024
    ld	$t9,8($sp)
    ld	$ra,48($sp)
    li	$a5,1
    move	$a4,$v0
    b	.L0d9ff0a0
    sw	$v0,88($t9)
.end __glBuildItoIModifyTables

# Function: __glBuildItoRGBAModifyTables
# Declared: Line 193 (Source lines: 194-259)
# Address: 0x0d9ff250 - 0x0d9ff464 (Size: 532 bytes, Frame: 48)
.globl __glBuildItoRGBAModifyTables
.ent __glBuildItoRGBAModifyTables
__glBuildItoRGBAModifyTables:
    # Line 204
    li	$a4,1
    sb	$a4,92($a1)
    # Line 194
    addiu	$sp,$sp,-48
    sd	$s2,8($sp)
    # Line 206
    lw	$s2,96($a1)
    # Line 194
    sd	$s1,0($sp)
    move	$s1,$a1
    lui	$at,0x10
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$at,$at,-27840
    sd	$gp,16($sp)
    # Line 206
    beqz	$s2,.L0d9ff400
    # Line 194
    addu	$gp,$t9,$at
    # Line 215
    lw	$a0,108($a1)
.L0d9ff28c:
    # Line 222
    lw	$a6,756($s0)
    # Line 219
    lw	$a5,104($s1)
    # Line 235
    lw	$t2,1060($s0)
    # Line 223
    lw	$a1,752($s0)
    # Line 241
    mtc1	$zero,$f8
    # Line 238
    lw	$a7,1072($s0)
    # Line 241
    li	$t3,256
    # Line 218
    lw	$a3,100($s1)
    # Line 235
    addiu	$t2,$t2,-1
    # Line 259
    ld	$gp,16($sp)
    # Line 238
    addiu	$a7,$a7,-1
    # Line 223
    bltz	$a1,.L0d9ff3d8
    # Line 225
    sllv	$v0,$a4,$a1
    ld	$s1,0($sp)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f6
    cvt.s.l	$f6,$f6
.L0d9ff2d4:
    # Line 232
    lw	$t1,1048($s0)
    # Line 241
    mtc1	$a6,$f7
    move	$a1,$zero
    lw	$t0,1084($s0)
    move	$a4,$s2
    # Line 232
    addiu	$t1,$t1,-1
    ld	$s2,8($sp)
    # Line 241
    addiu	$t0,$t0,-1
    b	.L0d9ff394
    cvt.s.w	$f7,$f7
    nop
.L0d9ff300:
    # Line 246
    sub.s	$f9,$f4,$f5
    trunc.w.s	$f9,$f9
    mfc1	$a6,$f9
.L0d9ff30c:
    # Line 250
    and	$t9,$t1,$a6
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f16,0($t8)
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($a4)
    # Line 252
    and	$a2,$t2,$a6
    lw	$v1,1068($s0)
    sll	$a2,$a2,0x2
    lwc1	$f15,30812($s0)
    addu	$v1,$v1,$a2
    lwc1	$f14,0($v1)
    mul.s	$f14,$f14,$f15
    swc1	$f14,0($a3)
    # Line 254
    and	$v0,$a7,$a6
    lw	$at,1080($s0)
    sll	$v0,$v0,0x2
    lwc1	$f13,30816($s0)
    addu	$at,$at,$v0
    lwc1	$f12,0($at)
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($a5)
    # Line 256
    and	$t9,$t0,$a6
    lw	$t8,1092($s0)
    sll	$t9,$t9,0x2
    lwc1	$f11,30848($s0)
    addu	$t8,$t8,$t9
    lwc1	$f10,0($t8)
    # Line 243
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
    # Line 256
    mul.s	$f10,$f10,$f11
    # Line 243
    addiu	$a5,$a5,4
    beq	$a1,$t3,.L0d9ff3cc
    # Line 256
    swc1	$f10,-4($a0)
.L0d9ff394:
    # Line 241
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    madd.s	$f4,$f7,$f6,$f4
    c.lt.s	$f4,$f8
    # Line 250
    lw	$t8,1056($s0)
    lwc1	$f17,30808($s0)
    # Line 243
    addiu	$a1,$a1,1
    addiu	$a0,$a0,4
    # Line 241
    bc1t	.L0d9ff300
    lwc1	$f5,3540($s0)
    # Line 248
    add.s	$f9,$f5,$f4
    trunc.w.s	$f9,$f9
    b	.L0d9ff30c
    mfc1	$a6,$f9
.L0d9ff3cc:
    # Line 259
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ff3d8:
    # Line 227
    negu	$at,$a1
    sllv	$at,$a4,$at
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f7
    cvt.s.l	$f7,$f7
    lwc1	$f6,3544($s0)
    ld	$s1,0($sp)
    b	.L0d9ff2d4
    div.s	$f6,$f6,$f7
.L0d9ff400:
    # Line 209
    lw	$t9,0($s0)
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,1024
    sw	$v0,96($s1)
    # Line 211
    lw	$t9,0($s0)
    # Line 209
    move	$s2,$v0
    # Line 211
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,100($s1)
    # Line 213
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,104($s1)
    # Line 215
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    li	$a4,1
    move	$a0,$v0
    b	.L0d9ff28c
    sw	$v0,108($s1)
.end __glBuildItoRGBAModifyTables

# Function: __glSpanModifyRGBA
# Declared: Line 265 (Source lines: 267-358)
# Address: 0x0d9ff470 - 0x0d9ff718 (Size: 680 bytes, Frame: 48)
.globl __glSpanModifyRGBA
.ent __glSpanModifyRGBA
__glSpanModifyRGBA:
    # Line 280
    lwc1	$f19,672($a0)
    lwc1	$f16,640($a0)
    lwc1	$f5,644($a0)
    lwc1	$f4,648($a0)
    lwc1	$f18,652($a0)
    lbu	$a7,760($a0)
    lwc1	$f6,668($a0)
    lwc1	$f7,664($a0)
    # Line 267
    addiu	$sp,$sp,-48
    # Line 301
    addiu	$t1,$a0,1132
    # Line 280
    beqz	$a7,.L0d9ff6d4
    lwc1	$f17,660($a0)
    # Line 290
    mov.s	$f13,$f18
    # Line 301
    sw	$t1,24($sp)
    # Line 298
    addiu	$t0,$a0,1120
    sw	$t0,16($sp)
    # Line 295
    addiu	$a6,$a0,1108
    sw	$a6,8($sp)
    # Line 292
    addiu	$a5,$a0,1096
    sw	$a5,0($sp)
    # Line 294
    lw	$at,1096($a0)
    # Line 289
    mov.s	$f9,$f4
    # Line 297
    lw	$v0,1108($a0)
    # Line 288
    mov.s	$f10,$f5
    # Line 303
    lw	$a4,1132($a0)
    # Line 287
    mov.s	$f15,$f16
    # Line 300
    lw	$v1,1120($a0)
    # Line 286
    mov.s	$f8,$f19
    # Line 303
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
    # Line 285
    mov.s	$f11,$f6
    # Line 300
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 284
    mov.s	$f14,$f7
    # Line 297
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 283
    mov.s	$f12,$f17
    # Line 294
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0d9ff50c:
    # Line 325
    lw	$a6,180($a1)
    lw	$t8,0($sp)
    lw	$t0,12($sp)
    move	$a1,$zero
    blez	$a6,.L0d9ff6cc
    lw	$t2,4($sp)
    lw	$t9,24($sp)
    lw	$t3,20($sp)
    lw	$t1,8($sp)
    sd	$s0,32($sp)
    lw	$s0,16($sp)
    sd	$ra,40($sp)
    b	.L0d9ff708
    lw	$ra,28($sp)
    nop
    nop
    nop
.L0d9ff550:
    # Line 332
    cvt.s.w	$f23,$f23
    lwc1	$f21,3540($a0)
    madd.s	$f21,$f21,$f23,$f4
    trunc.w.s	$f21,$f21
    mfc1	$v0,$f21
    # Line 334
    slt	$v1,$t2,$v0
    slti	$at,$v0,0
    movn	$v0,$t2,$v1
    # Line 335
    lw	$a4,8($t8)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f23,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f21,0($a4)
    # Line 337
    cvt.s.w	$f19,$f19
    # Line 335
    mul.s	$f21,$f21,$f23
    swc1	$f21,0($a3)
    # Line 337
    lwc1	$f18,3540($a0)
    madd.s	$f18,$f18,$f19,$f7
    trunc.w.s	$f18,$f18
    mfc1	$v1,$f18
    move	$at,$zero
    # Line 339
    slt	$a4,$t0,$v1
    slti	$v0,$v1,0
    movn	$v1,$t0,$a4
    # Line 340
    lw	$a5,8($t1)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f19,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f18,0($a5)
    # Line 342
    cvt.s.w	$f17,$f17
    # Line 340
    mul.s	$f18,$f18,$f19
    swc1	$f18,4($a3)
    # Line 342
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f6
    trunc.w.s	$f16,$f16
    mfc1	$a4,$f16
    move	$v0,$zero
    # Line 344
    slt	$a5,$t3,$a4
    slti	$v1,$a4,0
    movn	$a4,$t3,$a5
    # Line 345
    lw	$at,8($s0)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f17,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f16,0($at)
    # Line 347
    cvt.s.w	$f3,$f3
    # Line 345
    mul.s	$f16,$f16,$f17
    swc1	$f16,8($a3)
    # Line 347
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f5
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    move	$v1,$zero
    # Line 349
    slt	$at,$ra,$a5
    slti	$a4,$a5,0
    movn	$a5,$ra,$at
    # Line 350
    lw	$v0,8($t9)
    movz	$v1,$a5,$a4
    sll	$v1,$v1,0x2
    lwc1	$f1,30848($a0)
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    addiu	$at,$a3,16
    mul.s	$f0,$f0,$f1
    move	$a3,$at
    swc1	$f0,-4($at)
.L0d9ff664:
    # Line 337
    mtc1	$t0,$f19
    # Line 326
    beq	$a6,$a1,.L0d9ff6c4
    # Line 332
    mtc1	$t2,$f23
    # Line 330
    lwc1	$f5,12($a2)
.L0d9ff674:
    # Line 329
    lwc1	$f6,8($a2)
    # Line 328
    lwc1	$f7,4($a2)
    # Line 327
    lwc1	$f4,0($a2)
    # Line 330
    madd.s	$f5,$f8,$f5,$f13
    # Line 347
    mtc1	$ra,$f3
    # Line 332
    move	$a5,$zero
    # Line 329
    madd.s	$f6,$f11,$f6,$f9
    # Line 342
    mtc1	$t3,$f17
    # Line 330
    addiu	$a2,$a2,16
    # Line 328
    madd.s	$f7,$f14,$f7,$f10
    # Line 326
    addiu	$a1,$a1,1
    # Line 330
    bnez	$a7,.L0d9ff550
    # Line 327
    madd.s	$f4,$f12,$f4,$f15
    # Line 354
    swc1	$f6,8($a3)
    # Line 353
    swc1	$f7,4($a3)
    # Line 352
    swc1	$f4,0($a3)
    # Line 355
    addiu	$v1,$a3,16
    swc1	$f5,12($a3)
    b	.L0d9ff664
    move	$a3,$v1
.L0d9ff6c4:
    ld	$s0,32($sp)
    ld	$ra,40($sp)
.L0d9ff6cc:
    # Line 358
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ff6d4:
    # Line 311
    lwc1	$f8,30848($a0)
    # Line 309
    lwc1	$f11,30816($a0)
    # Line 319
    mul.s	$f13,$f8,$f18
    # Line 307
    lwc1	$f14,30812($a0)
    # Line 311
    mul.s	$f8,$f19,$f8
    # Line 317
    mul.s	$f9,$f11,$f4
    # Line 305
    lwc1	$f12,30808($a0)
    # Line 309
    mul.s	$f11,$f6,$f11
    # Line 315
    mul.s	$f10,$f14,$f5
    # Line 307
    mul.s	$f14,$f7,$f14
    # Line 313
    mul.s	$f15,$f12,$f16
    b	.L0d9ff50c
    # Line 305
    mul.s	$f12,$f17,$f12
.L0d9ff708:
    # Line 332
    mtc1	$t2,$f23
    # Line 337
    mtc1	$t0,$f19
    b	.L0d9ff674
    # Line 330
    lwc1	$f5,12($a2)
.end __glSpanModifyRGBA

# Function: __glSpanModifyABGR
# Declared: Line 365 (Source lines: 367-458)
# Address: 0x0d9ff720 - 0x0d9ff9c8 (Size: 680 bytes, Frame: 48)
.globl __glSpanModifyABGR
.ent __glSpanModifyABGR
__glSpanModifyABGR:
    # Line 380
    lwc1	$f19,672($a0)
    lwc1	$f16,640($a0)
    lwc1	$f5,644($a0)
    lwc1	$f4,648($a0)
    lwc1	$f18,652($a0)
    lbu	$a7,760($a0)
    lwc1	$f6,668($a0)
    lwc1	$f7,664($a0)
    # Line 367
    addiu	$sp,$sp,-48
    # Line 401
    addiu	$t1,$a0,1132
    # Line 380
    beqz	$a7,.L0d9ff984
    lwc1	$f17,660($a0)
    # Line 390
    mov.s	$f13,$f18
    # Line 401
    sw	$t1,24($sp)
    # Line 398
    addiu	$t0,$a0,1120
    sw	$t0,16($sp)
    # Line 395
    addiu	$a6,$a0,1108
    sw	$a6,8($sp)
    # Line 392
    addiu	$a5,$a0,1096
    sw	$a5,0($sp)
    # Line 394
    lw	$at,1096($a0)
    # Line 389
    mov.s	$f9,$f4
    # Line 397
    lw	$v0,1108($a0)
    # Line 388
    mov.s	$f10,$f5
    # Line 403
    lw	$a4,1132($a0)
    # Line 387
    mov.s	$f15,$f16
    # Line 400
    lw	$v1,1120($a0)
    # Line 386
    mov.s	$f8,$f19
    # Line 403
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
    # Line 385
    mov.s	$f11,$f6
    # Line 400
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 384
    mov.s	$f14,$f7
    # Line 397
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 383
    mov.s	$f12,$f17
    # Line 394
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0d9ff7bc:
    # Line 425
    lw	$a6,180($a1)
    lw	$t8,0($sp)
    lw	$t0,12($sp)
    move	$a1,$zero
    blez	$a6,.L0d9ff97c
    lw	$t2,4($sp)
    lw	$t9,24($sp)
    lw	$t3,20($sp)
    lw	$t1,8($sp)
    sd	$s0,32($sp)
    lw	$s0,16($sp)
    sd	$ra,40($sp)
    b	.L0d9ff9b8
    lw	$ra,28($sp)
    nop
    nop
    nop
.L0d9ff800:
    # Line 432
    cvt.s.w	$f23,$f23
    lwc1	$f21,3540($a0)
    madd.s	$f21,$f21,$f23,$f4
    trunc.w.s	$f21,$f21
    mfc1	$v0,$f21
    # Line 434
    slt	$v1,$t2,$v0
    slti	$at,$v0,0
    movn	$v0,$t2,$v1
    # Line 435
    lw	$a4,8($t8)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f23,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f21,0($a4)
    # Line 437
    cvt.s.w	$f19,$f19
    # Line 435
    mul.s	$f21,$f21,$f23
    swc1	$f21,0($a3)
    # Line 437
    lwc1	$f18,3540($a0)
    madd.s	$f18,$f18,$f19,$f7
    trunc.w.s	$f18,$f18
    mfc1	$v1,$f18
    move	$at,$zero
    # Line 439
    slt	$a4,$t0,$v1
    slti	$v0,$v1,0
    movn	$v1,$t0,$a4
    # Line 440
    lw	$a5,8($t1)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f19,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f18,0($a5)
    # Line 442
    cvt.s.w	$f17,$f17
    # Line 440
    mul.s	$f18,$f18,$f19
    swc1	$f18,4($a3)
    # Line 442
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f6
    trunc.w.s	$f16,$f16
    mfc1	$a4,$f16
    move	$v0,$zero
    # Line 444
    slt	$a5,$t3,$a4
    slti	$v1,$a4,0
    movn	$a4,$t3,$a5
    # Line 445
    lw	$at,8($s0)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f17,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f16,0($at)
    # Line 447
    cvt.s.w	$f3,$f3
    # Line 445
    mul.s	$f16,$f16,$f17
    swc1	$f16,8($a3)
    # Line 447
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f5
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    move	$v1,$zero
    # Line 449
    slt	$at,$ra,$a5
    slti	$a4,$a5,0
    movn	$a5,$ra,$at
    # Line 450
    lw	$v0,8($t9)
    movz	$v1,$a5,$a4
    sll	$v1,$v1,0x2
    lwc1	$f1,30848($a0)
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    addiu	$at,$a3,16
    mul.s	$f0,$f0,$f1
    move	$a3,$at
    swc1	$f0,-4($at)
.L0d9ff914:
    # Line 437
    mtc1	$t0,$f19
    # Line 426
    beq	$a6,$a1,.L0d9ff974
    # Line 432
    mtc1	$t2,$f23
    # Line 430
    lwc1	$f4,12($a2)
.L0d9ff924:
    # Line 429
    lwc1	$f7,8($a2)
    # Line 428
    lwc1	$f6,4($a2)
    # Line 427
    lwc1	$f5,0($a2)
    # Line 430
    madd.s	$f4,$f12,$f4,$f15
    # Line 447
    mtc1	$ra,$f3
    # Line 432
    move	$a5,$zero
    # Line 429
    madd.s	$f7,$f14,$f7,$f10
    # Line 442
    mtc1	$t3,$f17
    # Line 430
    addiu	$a2,$a2,16
    # Line 428
    madd.s	$f6,$f11,$f6,$f9
    # Line 426
    addiu	$a1,$a1,1
    # Line 430
    bnez	$a7,.L0d9ff800
    # Line 427
    madd.s	$f5,$f8,$f5,$f13
    # Line 454
    swc1	$f6,8($a3)
    # Line 453
    swc1	$f7,4($a3)
    # Line 452
    swc1	$f4,0($a3)
    # Line 455
    addiu	$v1,$a3,16
    swc1	$f5,12($a3)
    b	.L0d9ff914
    move	$a3,$v1
.L0d9ff974:
    ld	$s0,32($sp)
    ld	$ra,40($sp)
.L0d9ff97c:
    # Line 458
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ff984:
    # Line 411
    lwc1	$f8,30848($a0)
    # Line 409
    lwc1	$f11,30816($a0)
    # Line 419
    mul.s	$f13,$f8,$f18
    # Line 407
    lwc1	$f14,30812($a0)
    # Line 411
    mul.s	$f8,$f19,$f8
    # Line 417
    mul.s	$f9,$f11,$f4
    # Line 405
    lwc1	$f12,30808($a0)
    # Line 409
    mul.s	$f11,$f6,$f11
    # Line 415
    mul.s	$f10,$f14,$f5
    # Line 407
    mul.s	$f14,$f7,$f14
    # Line 413
    mul.s	$f15,$f12,$f16
    b	.L0d9ff7bc
    # Line 405
    mul.s	$f12,$f17,$f12
.L0d9ff9b8:
    # Line 432
    mtc1	$t2,$f23
    # Line 437
    mtc1	$t0,$f19
    b	.L0d9ff924
    # Line 430
    lwc1	$f4,12($a2)
.end __glSpanModifyABGR

# Function: __glSpanModifyBGRA
# Declared: Line 467 (Source lines: 469-560)
# Address: 0x0d9ff9d0 - 0x0d9ffc78 (Size: 680 bytes, Frame: 48)
.globl __glSpanModifyBGRA
.ent __glSpanModifyBGRA
__glSpanModifyBGRA:
    # Line 482
    lwc1	$f19,672($a0)
    lwc1	$f16,640($a0)
    lwc1	$f5,644($a0)
    lwc1	$f4,648($a0)
    lwc1	$f18,652($a0)
    lbu	$a7,760($a0)
    lwc1	$f6,668($a0)
    lwc1	$f7,664($a0)
    # Line 469
    addiu	$sp,$sp,-48
    # Line 503
    addiu	$t1,$a0,1132
    # Line 482
    beqz	$a7,.L0d9ffc34
    lwc1	$f17,660($a0)
    # Line 492
    mov.s	$f13,$f18
    # Line 503
    sw	$t1,24($sp)
    # Line 500
    addiu	$t0,$a0,1120
    sw	$t0,16($sp)
    # Line 497
    addiu	$a6,$a0,1108
    sw	$a6,8($sp)
    # Line 494
    addiu	$a5,$a0,1096
    sw	$a5,0($sp)
    # Line 496
    lw	$at,1096($a0)
    # Line 491
    mov.s	$f9,$f4
    # Line 499
    lw	$v0,1108($a0)
    # Line 490
    mov.s	$f10,$f5
    # Line 505
    lw	$a4,1132($a0)
    # Line 489
    mov.s	$f15,$f16
    # Line 502
    lw	$v1,1120($a0)
    # Line 488
    mov.s	$f8,$f19
    # Line 505
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
    # Line 487
    mov.s	$f11,$f6
    # Line 502
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 486
    mov.s	$f14,$f7
    # Line 499
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 485
    mov.s	$f12,$f17
    # Line 496
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0d9ffa6c:
    # Line 527
    lw	$a6,180($a1)
    lw	$t8,0($sp)
    lw	$t0,12($sp)
    move	$a1,$zero
    blez	$a6,.L0d9ffc2c
    lw	$t2,4($sp)
    lw	$t9,24($sp)
    lw	$t3,20($sp)
    lw	$t1,8($sp)
    sd	$s0,32($sp)
    lw	$s0,16($sp)
    sd	$ra,40($sp)
    b	.L0d9ffc68
    lw	$ra,28($sp)
    nop
    nop
    nop
.L0d9ffab0:
    # Line 534
    cvt.s.w	$f23,$f23
    lwc1	$f21,3540($a0)
    madd.s	$f21,$f21,$f23,$f4
    trunc.w.s	$f21,$f21
    mfc1	$v0,$f21
    # Line 536
    slt	$v1,$t2,$v0
    slti	$at,$v0,0
    movn	$v0,$t2,$v1
    # Line 537
    lw	$a4,8($t8)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f23,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f21,0($a4)
    # Line 539
    cvt.s.w	$f19,$f19
    # Line 537
    mul.s	$f21,$f21,$f23
    swc1	$f21,0($a3)
    # Line 539
    lwc1	$f18,3540($a0)
    madd.s	$f18,$f18,$f19,$f7
    trunc.w.s	$f18,$f18
    mfc1	$v1,$f18
    move	$at,$zero
    # Line 541
    slt	$a4,$t0,$v1
    slti	$v0,$v1,0
    movn	$v1,$t0,$a4
    # Line 542
    lw	$a5,8($t1)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f19,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f18,0($a5)
    # Line 544
    cvt.s.w	$f17,$f17
    # Line 542
    mul.s	$f18,$f18,$f19
    swc1	$f18,4($a3)
    # Line 544
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f6
    trunc.w.s	$f16,$f16
    mfc1	$a4,$f16
    move	$v0,$zero
    # Line 546
    slt	$a5,$t3,$a4
    slti	$v1,$a4,0
    movn	$a4,$t3,$a5
    # Line 547
    lw	$at,8($s0)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f17,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f16,0($at)
    # Line 549
    cvt.s.w	$f3,$f3
    # Line 547
    mul.s	$f16,$f16,$f17
    swc1	$f16,8($a3)
    # Line 549
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f5
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    move	$v1,$zero
    # Line 551
    slt	$at,$ra,$a5
    slti	$a4,$a5,0
    movn	$a5,$ra,$at
    # Line 552
    lw	$v0,8($t9)
    movz	$v1,$a5,$a4
    sll	$v1,$v1,0x2
    lwc1	$f1,30848($a0)
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    addiu	$at,$a3,16
    mul.s	$f0,$f0,$f1
    move	$a3,$at
    swc1	$f0,-4($at)
.L0d9ffbc4:
    # Line 539
    mtc1	$t0,$f19
    # Line 528
    beq	$a6,$a1,.L0d9ffc24
    # Line 534
    mtc1	$t2,$f23
    # Line 532
    lwc1	$f5,12($a2)
.L0d9ffbd4:
    # Line 531
    lwc1	$f4,8($a2)
    # Line 530
    lwc1	$f7,4($a2)
    # Line 529
    lwc1	$f6,0($a2)
    # Line 532
    madd.s	$f5,$f8,$f5,$f13
    # Line 549
    mtc1	$ra,$f3
    # Line 534
    move	$a5,$zero
    # Line 531
    madd.s	$f4,$f12,$f4,$f15
    # Line 544
    mtc1	$t3,$f17
    # Line 532
    addiu	$a2,$a2,16
    # Line 530
    madd.s	$f7,$f14,$f7,$f10
    # Line 528
    addiu	$a1,$a1,1
    # Line 532
    bnez	$a7,.L0d9ffab0
    # Line 529
    madd.s	$f6,$f11,$f6,$f9
    # Line 556
    swc1	$f6,8($a3)
    # Line 555
    swc1	$f7,4($a3)
    # Line 554
    swc1	$f4,0($a3)
    # Line 557
    addiu	$v1,$a3,16
    swc1	$f5,12($a3)
    b	.L0d9ffbc4
    move	$a3,$v1
.L0d9ffc24:
    ld	$s0,32($sp)
    ld	$ra,40($sp)
.L0d9ffc2c:
    # Line 560
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ffc34:
    # Line 513
    lwc1	$f8,30848($a0)
    # Line 511
    lwc1	$f11,30816($a0)
    # Line 521
    mul.s	$f13,$f8,$f18
    # Line 509
    lwc1	$f14,30812($a0)
    # Line 513
    mul.s	$f8,$f19,$f8
    # Line 519
    mul.s	$f9,$f11,$f4
    # Line 507
    lwc1	$f12,30808($a0)
    # Line 511
    mul.s	$f11,$f6,$f11
    # Line 517
    mul.s	$f10,$f14,$f5
    # Line 509
    mul.s	$f14,$f7,$f14
    # Line 515
    mul.s	$f15,$f12,$f16
    b	.L0d9ffa6c
    # Line 507
    mul.s	$f12,$f17,$f12
.L0d9ffc68:
    # Line 534
    mtc1	$t2,$f23
    # Line 539
    mtc1	$t0,$f19
    b	.L0d9ffbd4
    # Line 532
    lwc1	$f5,12($a2)
.end __glSpanModifyBGRA

# Function: __glSpanModifyRed
# Declared: Line 567 (Source lines: 569-621)
# Address: 0x0d9ffc80 - 0x0d9ffe88 (Size: 520 bytes, Frame: 16)
.globl __glSpanModifyRed
.ent __glSpanModifyRed
__glSpanModifyRed:
    # Line 588
    lwc1	$f10,660($a0)
    lwc1	$f4,640($a0)
    # Line 583
    lbu	$a7,760($a0)
    # Line 588
    lwc1	$f6,30600($a0)
    # Line 587
    lwc1	$f7,30596($a0)
    # Line 569
    addiu	$sp,$sp,-16
    # Line 588
    beqz	$a7,.L0d9ffe60
    # Line 586
    lwc1	$f5,30592($a0)
    # Line 591
    mov.s	$f8,$f4
    # Line 594
    lw	$at,1096($a0)
    # Line 592
    addiu	$v0,$a0,1096
    sw	$v0,0($sp)
    # Line 590
    mov.s	$f9,$f10
    # Line 594
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0d9ffcbc:
    # Line 604
    lw	$t2,180($a1)
    # Line 602
    move	$a5,$a2
    # Line 614
    addiu	$a1,$a3,4
    # Line 604
    lw	$t1,4($sp)
    blez	$t2,.L0d9ffd5c
    andi	$v1,$t2,0x1
    lw	$t0,0($sp)
    beqz	$v1,.L0d9ffd50
    move	$a6,$zero
    # Line 606
    lwc1	$f4,0($a2)
    addiu	$a5,$a2,4
    # Line 608
    move	$a2,$zero
    # Line 605
    addiu	$a6,$a6,1
    # Line 606
    beqz	$a7,.L0d9ffe70
    madd.s	$f4,$f9,$f4,$f8
    # Line 608
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t3,$f12
    # Line 610
    slt	$t8,$t1,$t3
    slti	$a4,$t3,0
    movn	$t3,$t1,$t8
    # Line 612
    lw	$a1,8($t0)
    movz	$a2,$t3,$a4
    sll	$a2,$a2,0x2
    lwc1	$f11,30808($a0)
    addu	$a1,$a1,$a2
    lwc1	$f10,0($a1)
    mul.s	$f10,$f10,$f11
    addiu	$a1,$a3,4
    swc1	$f10,0($a3)
.L0d9ffd40:
    # Line 619
    swc1	$f6,8($a1)
    # Line 618
    swc1	$f7,4($a1)
    # Line 619
    addiu	$a3,$a1,12
    # Line 617
    swc1	$f5,0($a1)
.L0d9ffd50:
    sra	$t8,$t2,0x1
    bnez	$t8,.L0d9ffe78
    # Line 608
    mtc1	$t1,$f17
.L0d9ffd5c:
    # Line 621
    jr	$ra
    addiu	$sp,$sp,16
    nop
    nop
    nop
.L0d9ffd70:
    # Line 608
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f4
    trunc.w.s	$f16,$f16
    mfc1	$v1,$f16
    # Line 610
    slt	$a1,$t1,$v1
    slti	$v0,$v1,0
    movn	$v1,$t1,$a1
    # Line 612
    lw	$t9,8($t0)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f15,30808($a0)
    addu	$t9,$t9,$at
    lwc1	$f14,0($t9)
    mul.s	$f14,$f14,$f15
    addiu	$a1,$a3,4
    swc1	$f14,0($a3)
.L0d9ffdb4:
    # Line 619
    swc1	$f6,8($a1)
    # Line 618
    swc1	$f7,4($a1)
    # Line 617
    swc1	$f5,0($a1)
    # Line 606
    lwc1	$f4,4($a5)
    addiu	$a5,$a5,8
    beqz	$a7,.L0d9ffe54
    madd.s	$f4,$f9,$f4,$f8
    # Line 608
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t8,$f12
    # Line 610
    slt	$t9,$t1,$t8
    slti	$t3,$t8,0
    movn	$t8,$t1,$t9
    # Line 612
    lw	$a2,8($t0)
    movz	$a4,$t8,$t3
    sll	$a4,$a4,0x2
    lwc1	$f11,30808($a0)
    addu	$a2,$a2,$a4
    lwc1	$f10,0($a2)
    addiu	$a1,$a1,16
    mul.s	$f10,$f10,$f11
    swc1	$f10,-4($a1)
.L0d9ffe14:
    # Line 608
    mtc1	$t1,$f17
    # Line 619
    swc1	$f6,8($a1)
    # Line 608
    mtc1	$t1,$f13
    # Line 618
    swc1	$f7,4($a1)
    # Line 619
    addiu	$a3,$a1,12
    # Line 608
    move	$at,$zero
    # Line 605
    beq	$t2,$a6,.L0d9ffd5c
    # Line 617
    swc1	$f5,0($a1)
    # Line 608
    move	$a4,$zero
.L0d9ffe38:
    # Line 606
    lwc1	$f4,0($a5)
    # Line 614
    addiu	$a1,$a3,4
    # Line 605
    addiu	$a6,$a6,2
    # Line 606
    bnez	$a7,.L0d9ffd70
    madd.s	$f4,$f9,$f4,$f8
    b	.L0d9ffdb4
    # Line 614
    swc1	$f4,0($a3)
.L0d9ffe54:
    swc1	$f4,12($a1)
    b	.L0d9ffe14
    addiu	$a1,$a1,16
.L0d9ffe60:
    # Line 596
    lwc1	$f9,30808($a0)
    # Line 598
    mul.s	$f8,$f9,$f4
    b	.L0d9ffcbc
    # Line 596
    mul.s	$f9,$f10,$f9
.L0d9ffe70:
    b	.L0d9ffd40
    # Line 614
    swc1	$f4,0($a3)
.L0d9ffe78:
    # Line 608
    mtc1	$t1,$f13
    move	$at,$zero
    b	.L0d9ffe38
    move	$a4,$zero
.end __glSpanModifyRed

# Function: __glSpanModifyGreen
# Declared: Line 628 (Source lines: 630-681)
# Address: 0x0d9ffe90 - 0x0da00094 (Size: 516 bytes, Frame: 16)
.globl __glSpanModifyGreen
.ent __glSpanModifyGreen
__glSpanModifyGreen:
    # Line 649
    lwc1	$f10,664($a0)
    lwc1	$f4,644($a0)
    # Line 644
    lbu	$a7,760($a0)
    # Line 649
    lwc1	$f5,30600($a0)
    # Line 648
    lwc1	$f6,30596($a0)
    # Line 630
    addiu	$sp,$sp,-16
    # Line 649
    beqz	$a7,.L0da00070
    # Line 647
    lwc1	$f9,30588($a0)
    # Line 652
    mov.s	$f8,$f4
    # Line 655
    lw	$at,1108($a0)
    # Line 653
    addiu	$v0,$a0,1108
    sw	$v0,0($sp)
    # Line 651
    mov.s	$f7,$f10
    # Line 655
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0d9ffecc:
    # Line 665
    lw	$t2,180($a1)
    # Line 663
    move	$a5,$a2
    # Line 675
    addiu	$a1,$a3,8
    # Line 665
    lw	$t1,4($sp)
    blez	$t2,.L0d9fff6c
    andi	$v1,$t2,0x1
    lw	$t0,0($sp)
    beqz	$v1,.L0d9fff60
    move	$a6,$zero
    # Line 667
    lwc1	$f4,0($a2)
    addiu	$a5,$a2,4
    # Line 670
    move	$a2,$zero
    # Line 668
    swc1	$f9,0($a3)
    # Line 666
    addiu	$a6,$a6,1
    # Line 668
    beqz	$a7,.L0da00080
    # Line 667
    madd.s	$f4,$f7,$f4,$f8
    # Line 670
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t3,$f12
    # Line 672
    slt	$t8,$t1,$t3
    slti	$a4,$t3,0
    movn	$t3,$t1,$t8
    # Line 673
    lw	$a1,8($t0)
    movz	$a2,$t3,$a4
    sll	$a2,$a2,0x2
    lwc1	$f11,30812($a0)
    addu	$a1,$a1,$a2
    lwc1	$f10,0($a1)
    mul.s	$f10,$f10,$f11
    addiu	$a1,$a3,8
    swc1	$f10,4($a3)
.L0d9fff54:
    # Line 679
    swc1	$f5,4($a1)
    addiu	$a3,$a1,8
    # Line 678
    swc1	$f6,0($a1)
.L0d9fff60:
    sra	$t8,$t2,0x1
    bnez	$t8,.L0da00088
    # Line 670
    mtc1	$t1,$f17
.L0d9fff6c:
    # Line 681
    jr	$ra
    addiu	$sp,$sp,16
    nop
    nop
    nop
.L0d9fff80:
    # Line 670
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f4
    trunc.w.s	$f16,$f16
    mfc1	$v1,$f16
    # Line 672
    slt	$a1,$t1,$v1
    slti	$v0,$v1,0
    movn	$v1,$t1,$a1
    # Line 673
    lw	$t9,8($t0)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f15,30812($a0)
    addu	$t9,$t9,$at
    lwc1	$f14,0($t9)
    mul.s	$f14,$f14,$f15
    addiu	$a1,$a3,8
    swc1	$f14,4($a3)
.L0d9fffc4:
    # Line 679
    swc1	$f5,4($a1)
    # Line 678
    swc1	$f6,0($a1)
    # Line 667
    lwc1	$f4,4($a5)
    addiu	$a5,$a5,8
    # Line 668
    swc1	$f9,8($a1)
    beqz	$a7,.L0da00064
    # Line 667
    madd.s	$f4,$f7,$f4,$f8
    # Line 670
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t8,$f12
    # Line 672
    slt	$t9,$t1,$t8
    slti	$t3,$t8,0
    movn	$t8,$t1,$t9
    # Line 673
    lw	$a2,8($t0)
    movz	$a4,$t8,$t3
    sll	$a4,$a4,0x2
    lwc1	$f11,30812($a0)
    addu	$a2,$a2,$a4
    lwc1	$f10,0($a2)
    addiu	$a1,$a1,16
    mul.s	$f10,$f10,$f11
    swc1	$f10,-4($a1)
.L0da00024:
    # Line 670
    mtc1	$t1,$f17
    # Line 679
    swc1	$f5,4($a1)
    addiu	$a3,$a1,8
    # Line 670
    move	$at,$zero
    # Line 666
    beq	$t2,$a6,.L0d9fff6c
    # Line 678
    swc1	$f6,0($a1)
    # Line 670
    move	$a4,$zero
.L0da00040:
    # Line 667
    lwc1	$f4,0($a5)
    # Line 670
    mtc1	$t1,$f13
    # Line 675
    addiu	$a1,$a3,8
    # Line 668
    swc1	$f9,0($a3)
    # Line 666
    addiu	$a6,$a6,2
    # Line 668
    bnez	$a7,.L0d9fff80
    # Line 667
    madd.s	$f4,$f7,$f4,$f8
    b	.L0d9fffc4
    # Line 675
    swc1	$f4,4($a3)
.L0da00064:
    swc1	$f4,12($a1)
    b	.L0da00024
    addiu	$a1,$a1,16
.L0da00070:
    # Line 657
    lwc1	$f7,30812($a0)
    # Line 659
    mul.s	$f8,$f7,$f4
    b	.L0d9ffecc
    # Line 657
    mul.s	$f7,$f10,$f7
.L0da00080:
    b	.L0d9fff54
    # Line 675
    swc1	$f4,4($a3)
.L0da00088:
    # Line 670
    move	$at,$zero
    b	.L0da00040
    move	$a4,$zero
.end __glSpanModifyGreen

# Function: __glSpanModifyBlue
# Declared: Line 688 (Source lines: 690-741)
# Address: 0x0da000a0 - 0x0da00298 (Size: 504 bytes, Frame: 16)
.globl __glSpanModifyBlue
.ent __glSpanModifyBlue
__glSpanModifyBlue:
    # Line 709
    lwc1	$f10,668($a0)
    lwc1	$f4,648($a0)
    # Line 704
    lbu	$a7,760($a0)
    # Line 709
    lwc1	$f6,30600($a0)
    # Line 708
    lwc1	$f5,30592($a0)
    # Line 690
    addiu	$sp,$sp,-16
    # Line 709
    beqz	$a7,.L0da00280
    # Line 707
    lwc1	$f9,30588($a0)
    # Line 712
    mov.s	$f7,$f4
    # Line 715
    lw	$at,1120($a0)
    # Line 713
    addiu	$v0,$a0,1120
    sw	$v0,0($sp)
    # Line 711
    mov.s	$f8,$f10
    # Line 715
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da000dc:
    # Line 725
    lw	$t2,180($a1)
    # Line 723
    move	$a5,$a2
    # Line 736
    addiu	$a1,$a3,12
    # Line 725
    lw	$t1,4($sp)
    blez	$t2,.L0da0017c
    andi	$v1,$t2,0x1
    lw	$t0,0($sp)
    beqz	$v1,.L0da00170
    move	$a6,$zero
    # Line 727
    lwc1	$f4,0($a2)
    # Line 729
    swc1	$f5,4($a3)
    # Line 727
    addiu	$a5,$a2,4
    # Line 731
    move	$a2,$zero
    # Line 728
    swc1	$f9,0($a3)
    # Line 726
    addiu	$a6,$a6,1
    # Line 729
    beqz	$a7,.L0da00290
    # Line 727
    madd.s	$f4,$f8,$f4,$f7
    # Line 731
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t3,$f12
    # Line 733
    slt	$t8,$t1,$t3
    slti	$a4,$t3,0
    movn	$t3,$t1,$t8
    # Line 734
    lw	$a1,8($t0)
    movz	$a2,$t3,$a4
    sll	$a2,$a2,0x2
    lwc1	$f11,30816($a0)
    addu	$a1,$a1,$a2
    lwc1	$f10,0($a1)
    mul.s	$f10,$f10,$f11
    addiu	$a1,$a3,12
    swc1	$f10,8($a3)
.L0da00168:
    # Line 739
    swc1	$f6,0($a1)
    addiu	$a3,$a1,4
.L0da00170:
    sra	$t8,$t2,0x1
    bnez	$t8,.L0da00244
    # Line 731
    move	$a4,$zero
.L0da0017c:
    # Line 741
    jr	$ra
    addiu	$sp,$sp,16
    nop
    nop
    nop
.L0da00190:
    # Line 731
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f4
    trunc.w.s	$f16,$f16
    mfc1	$v1,$f16
    # Line 733
    slt	$a1,$t1,$v1
    slti	$v0,$v1,0
    movn	$v1,$t1,$a1
    # Line 734
    lw	$t9,8($t0)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f15,30816($a0)
    addu	$t9,$t9,$at
    lwc1	$f14,0($t9)
    mul.s	$f14,$f14,$f15
    addiu	$a1,$a3,12
    swc1	$f14,8($a3)
.L0da001d4:
    # Line 739
    swc1	$f6,0($a1)
    # Line 727
    lwc1	$f4,4($a5)
    # Line 729
    swc1	$f5,8($a1)
    # Line 727
    addiu	$a5,$a5,8
    # Line 728
    swc1	$f9,4($a1)
    # Line 729
    beqz	$a7,.L0da00274
    # Line 727
    madd.s	$f4,$f8,$f4,$f7
    # Line 731
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t8,$f12
    # Line 733
    slt	$t9,$t1,$t8
    slti	$t3,$t8,0
    movn	$t8,$t1,$t9
    # Line 734
    lw	$a2,8($t0)
    movz	$a4,$t8,$t3
    sll	$a4,$a4,0x2
    lwc1	$f11,30816($a0)
    addu	$a2,$a2,$a4
    lwc1	$f10,0($a2)
    addiu	$a1,$a1,16
    mul.s	$f10,$f10,$f11
    swc1	$f10,-4($a1)
.L0da00234:
    # Line 739
    swc1	$f6,0($a1)
    # Line 726
    beq	$t2,$a6,.L0da0017c
    # Line 739
    addiu	$a3,$a1,4
    # Line 731
    move	$a4,$zero
.L0da00244:
    # Line 727
    lwc1	$f4,0($a5)
    # Line 731
    move	$at,$zero
    mtc1	$t1,$f13
    mtc1	$t1,$f17
    # Line 736
    addiu	$a1,$a3,12
    # Line 729
    swc1	$f5,4($a3)
    # Line 728
    swc1	$f9,0($a3)
    # Line 726
    addiu	$a6,$a6,2
    # Line 729
    bnez	$a7,.L0da00190
    # Line 727
    madd.s	$f4,$f8,$f4,$f7
    b	.L0da001d4
    # Line 736
    swc1	$f4,8($a3)
.L0da00274:
    swc1	$f4,12($a1)
    b	.L0da00234
    addiu	$a1,$a1,16
.L0da00280:
    # Line 717
    lwc1	$f8,30816($a0)
    # Line 719
    mul.s	$f7,$f8,$f4
    b	.L0da000dc
    # Line 717
    mul.s	$f8,$f10,$f8
.L0da00290:
    b	.L0da00168
    # Line 736
    swc1	$f4,8($a3)
.end __glSpanModifyBlue

# Function: __glSpanModifyAlpha
# Declared: Line 748 (Source lines: 750-800)
# Address: 0x0da002a0 - 0x0da004a8 (Size: 520 bytes, Frame: 16)
.globl __glSpanModifyAlpha
.ent __glSpanModifyAlpha
__glSpanModifyAlpha:
    # Line 769
    lwc1	$f10,672($a0)
    lwc1	$f4,652($a0)
    # Line 764
    lbu	$a7,760($a0)
    # Line 769
    lwc1	$f8,30596($a0)
    # Line 768
    lwc1	$f5,30592($a0)
    # Line 750
    addiu	$sp,$sp,-16
    # Line 769
    beqz	$a7,.L0da00484
    # Line 767
    lwc1	$f9,30588($a0)
    # Line 772
    mov.s	$f6,$f4
    # Line 775
    lw	$at,1132($a0)
    # Line 773
    addiu	$v0,$a0,1132
    sw	$v0,0($sp)
    # Line 771
    mov.s	$f7,$f10
    # Line 775
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da002dc:
    # Line 785
    lw	$t2,180($a1)
    # Line 784
    move	$a5,$a3
    # Line 792
    move	$a4,$zero
    # Line 783
    move	$a6,$a2
    # Line 785
    lw	$t1,4($sp)
    blez	$t2,.L0da0037c
    andi	$v1,$t2,0x1
    lw	$t0,0($sp)
    beqz	$v1,.L0da00370
    move	$a1,$zero
    # Line 787
    lwc1	$f4,0($a2)
    # Line 790
    swc1	$f8,8($a3)
    # Line 789
    swc1	$f5,4($a3)
    # Line 787
    addiu	$a6,$a2,4
    # Line 797
    addiu	$a5,$a3,16
    # Line 788
    swc1	$f9,0($a3)
    # Line 786
    addiu	$a1,$a1,1
    # Line 790
    beqz	$a7,.L0da00494
    # Line 787
    madd.s	$f4,$f7,$f4,$f6
    # Line 792
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t3,$f12
    # Line 794
    slt	$t8,$t1,$t3
    slti	$a5,$t3,0
    movn	$t3,$t1,$t8
    # Line 795
    lw	$a2,8($t0)
    movz	$a4,$t3,$a5
    sll	$a4,$a4,0x2
    lwc1	$f11,30848($a0)
    addu	$a2,$a2,$a4
    lwc1	$f10,0($a2)
    mul.s	$f10,$f10,$f11
    addiu	$a5,$a3,16
    swc1	$f10,12($a3)
.L0da00370:
    sra	$t8,$t2,0x1
    bnez	$t8,.L0da0049c
    # Line 792
    mtc1	$t1,$f13
.L0da0037c:
    # Line 800
    jr	$ra
    addiu	$sp,$sp,16
    nop
    nop
    nop
.L0da00390:
    # Line 792
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f4
    trunc.w.s	$f16,$f16
    mfc1	$a2,$f16
    # Line 794
    slt	$a3,$t1,$a2
    slti	$v1,$a2,0
    movn	$a2,$t1,$a3
    # Line 795
    lw	$at,8($t0)
    movz	$v0,$a2,$v1
    sll	$v0,$v0,0x2
    lwc1	$f15,30848($a0)
    addu	$at,$at,$v0
    lwc1	$f14,0($at)
    mul.s	$f14,$f14,$f15
    move	$a5,$t9
    swc1	$f14,-4($t9)
.L0da003d4:
    # Line 792
    move	$t3,$zero
    # Line 786
    beq	$t2,$a1,.L0da0037c
    # Line 792
    mtc1	$t1,$f13
    move	$v0,$zero
.L0da003e4:
    # Line 787
    lwc1	$f4,0($a6)
    # Line 790
    swc1	$f8,8($a5)
    # Line 795
    addiu	$a3,$a5,16
    # Line 792
    mtc1	$t1,$f17
    # Line 789
    swc1	$f5,4($a5)
    # Line 788
    swc1	$f9,0($a5)
    # Line 786
    addiu	$a1,$a1,2
    # Line 790
    beqz	$a7,.L0da00478
    # Line 787
    madd.s	$f4,$f7,$f4,$f6
    # Line 792
    cvt.s.w	$f13,$f13
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f4
    trunc.w.s	$f12,$f12
    mfc1	$t9,$f12
    # Line 794
    slt	$at,$t1,$t9
    slti	$t8,$t9,0
    movn	$t9,$t1,$at
    # Line 795
    lw	$a4,8($t0)
    movz	$t3,$t9,$t8
    sll	$t3,$t3,0x2
    lwc1	$f11,30848($a0)
    addu	$a4,$a4,$t3
    lwc1	$f10,0($a4)
    mul.s	$f10,$f10,$f11
    move	$a5,$a3
    swc1	$f10,-4($a3)
.L0da0044c:
    # Line 787
    lwc1	$f4,4($a6)
    # Line 790
    swc1	$f8,8($a5)
    # Line 789
    swc1	$f5,4($a5)
    # Line 787
    addiu	$a6,$a6,8
    # Line 788
    swc1	$f9,0($a5)
    # Line 795
    addiu	$t9,$a5,16
    # Line 790
    bnez	$a7,.L0da00390
    # Line 787
    madd.s	$f4,$f7,$f4,$f6
    # Line 797
    addiu	$a5,$a5,16
    b	.L0da003d4
    swc1	$f4,-4($a5)
.L0da00478:
    addiu	$a5,$a5,16
    b	.L0da0044c
    swc1	$f4,-4($a5)
.L0da00484:
    # Line 777
    lwc1	$f7,30848($a0)
    # Line 779
    mul.s	$f6,$f7,$f4
    b	.L0da002dc
    # Line 777
    mul.s	$f7,$f10,$f7
.L0da00494:
    b	.L0da00370
    # Line 797
    swc1	$f4,12($a3)
.L0da0049c:
    # Line 792
    move	$t3,$zero
    b	.L0da003e4
    move	$v0,$zero
.end __glSpanModifyAlpha

# Function: __glSpanModifyRGB
# Declared: Line 807 (Source lines: 809-890)
# Address: 0x0da004b0 - 0x0da006c0 (Size: 528 bytes, Frame: 32)
.globl __glSpanModifyRGB
.ent __glSpanModifyRGB
__glSpanModifyRGB:
    # Line 826
    lwc1	$f5,668($a0)
    lwc1	$f15,640($a0)
    lwc1	$f6,644($a0)
    lwc1	$f4,648($a0)
    # Line 824
    lbu	$a6,760($a0)
    # Line 826
    lwc1	$f14,664($a0)
    lwc1	$f16,660($a0)
    # Line 809
    addiu	$sp,$sp,-32
    # Line 842
    addiu	$a7,$a0,1120
    # Line 839
    addiu	$a5,$a0,1108
    # Line 826
    beqz	$a6,.L0da00688
    lwc1	$f10,30600($a0)
    # Line 834
    mov.s	$f7,$f4
    # Line 842
    sw	$a7,16($sp)
    # Line 839
    sw	$a5,8($sp)
    # Line 836
    addiu	$a4,$a0,1096
    sw	$a4,0($sp)
    # Line 838
    lw	$at,1096($a0)
    # Line 833
    mov.s	$f13,$f6
    # Line 844
    lw	$v1,1120($a0)
    # Line 832
    mov.s	$f8,$f15
    # Line 841
    lw	$v0,1108($a0)
    # Line 831
    mov.s	$f9,$f5
    # Line 844
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 830
    mov.s	$f11,$f14
    # Line 841
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 829
    mov.s	$f12,$f16
    # Line 838
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da0052c:
    # Line 862
    lw	$a7,180($a1)
    lw	$t3,0($sp)
    lw	$t8,12($sp)
    move	$a1,$zero
    blez	$a7,.L0da00680
    lw	$t0,4($sp)
    lw	$t9,16($sp)
    lw	$t1,20($sp)
    b	.L0da006b0
    lw	$t2,8($sp)
    nop
    nop
    nop
.L0da00560:
    # Line 868
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f5
    trunc.w.s	$f16,$f16
    mfc1	$v0,$f16
    # Line 870
    slt	$v1,$t0,$v0
    slti	$at,$v0,0
    movn	$v0,$t0,$v1
    # Line 871
    lw	$a4,8($t3)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f17,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f16,0($a4)
    # Line 873
    cvt.s.w	$f15,$f15
    # Line 871
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($a3)
    # Line 873
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f4
    trunc.w.s	$f14,$f14
    mfc1	$v1,$f14
    move	$at,$zero
    # Line 875
    slt	$a4,$t8,$v1
    slti	$v0,$v1,0
    movn	$v1,$t8,$a4
    # Line 876
    lw	$a5,8($t2)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f15,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f14,0($a5)
    # Line 878
    cvt.s.w	$f3,$f3
    # Line 876
    mul.s	$f14,$f14,$f15
    swc1	$f14,4($a3)
    # Line 878
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f6
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    move	$v0,$zero
    # Line 880
    slt	$a5,$t1,$a4
    slti	$v1,$a4,0
    movn	$a4,$t1,$a5
    # Line 881
    lw	$at,8($t9)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f1,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    addiu	$a5,$a3,12
    swc1	$f0,8($a3)
.L0da0062c:
    # Line 868
    mtc1	$t0,$f17
    # Line 873
    mtc1	$t8,$f15
    # Line 888
    swc1	$f10,0($a5)
    # Line 863
    beq	$a7,$a1,.L0da00680
    # Line 888
    addiu	$a3,$a5,4
    # Line 866
    lwc1	$f6,8($a2)
.L0da00644:
    # Line 865
    lwc1	$f4,4($a2)
    # Line 864
    lwc1	$f5,0($a2)
    # Line 878
    mtc1	$t1,$f3
    # Line 866
    madd.s	$f6,$f9,$f6,$f7
    addiu	$a2,$a2,12
    # Line 868
    move	$a5,$zero
    # Line 865
    madd.s	$f4,$f11,$f4,$f13
    # Line 863
    addiu	$a1,$a1,1
    # Line 866
    bnez	$a6,.L0da00560
    # Line 864
    madd.s	$f5,$f12,$f5,$f8
    # Line 885
    swc1	$f6,8($a3)
    # Line 884
    swc1	$f4,4($a3)
    # Line 885
    addiu	$a5,$a3,12
    b	.L0da0062c
    # Line 883
    swc1	$f5,0($a3)
.L0da00680:
    # Line 890
    jr	$ra
    addiu	$sp,$sp,32
.L0da00688:
    # Line 850
    lwc1	$f9,30816($a0)
    # Line 848
    lwc1	$f11,30812($a0)
    # Line 856
    mul.s	$f7,$f9,$f4
    # Line 846
    lwc1	$f12,30808($a0)
    # Line 850
    mul.s	$f9,$f5,$f9
    # Line 854
    mul.s	$f13,$f11,$f6
    # Line 848
    mul.s	$f11,$f14,$f11
    # Line 852
    mul.s	$f8,$f12,$f15
    b	.L0da0052c
    # Line 846
    mul.s	$f12,$f16,$f12
.L0da006b0:
    # Line 868
    mtc1	$t0,$f17
    # Line 873
    mtc1	$t8,$f15
    b	.L0da00644
    # Line 866
    lwc1	$f6,8($a2)
.end __glSpanModifyRGB

# Function: __glSpanModifyBGR
# Declared: Line 899 (Source lines: 901-982)
# Address: 0x0da006c0 - 0x0da008d0 (Size: 528 bytes, Frame: 32)
.globl __glSpanModifyBGR
.ent __glSpanModifyBGR
__glSpanModifyBGR:
    # Line 918
    lwc1	$f5,668($a0)
    lwc1	$f15,640($a0)
    lwc1	$f6,644($a0)
    lwc1	$f4,648($a0)
    # Line 916
    lbu	$a6,760($a0)
    # Line 918
    lwc1	$f14,664($a0)
    lwc1	$f16,660($a0)
    # Line 901
    addiu	$sp,$sp,-32
    # Line 934
    addiu	$a7,$a0,1120
    # Line 931
    addiu	$a5,$a0,1108
    # Line 918
    beqz	$a6,.L0da00898
    lwc1	$f10,30600($a0)
    # Line 926
    mov.s	$f7,$f4
    # Line 934
    sw	$a7,16($sp)
    # Line 931
    sw	$a5,8($sp)
    # Line 928
    addiu	$a4,$a0,1096
    sw	$a4,0($sp)
    # Line 930
    lw	$at,1096($a0)
    # Line 925
    mov.s	$f13,$f6
    # Line 936
    lw	$v1,1120($a0)
    # Line 924
    mov.s	$f8,$f15
    # Line 933
    lw	$v0,1108($a0)
    # Line 923
    mov.s	$f9,$f5
    # Line 936
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 922
    mov.s	$f11,$f14
    # Line 933
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 921
    mov.s	$f12,$f16
    # Line 930
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da0073c:
    # Line 954
    lw	$a7,180($a1)
    lw	$t3,0($sp)
    lw	$t8,12($sp)
    move	$a1,$zero
    blez	$a7,.L0da00890
    lw	$t0,4($sp)
    lw	$t9,16($sp)
    lw	$t1,20($sp)
    b	.L0da008c0
    lw	$t2,8($sp)
    nop
    nop
    nop
.L0da00770:
    # Line 960
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f5
    trunc.w.s	$f16,$f16
    mfc1	$v0,$f16
    # Line 962
    slt	$v1,$t0,$v0
    slti	$at,$v0,0
    movn	$v0,$t0,$v1
    # Line 963
    lw	$a4,8($t3)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f17,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f16,0($a4)
    # Line 965
    cvt.s.w	$f15,$f15
    # Line 963
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($a3)
    # Line 965
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f4
    trunc.w.s	$f14,$f14
    mfc1	$v1,$f14
    move	$at,$zero
    # Line 967
    slt	$a4,$t8,$v1
    slti	$v0,$v1,0
    movn	$v1,$t8,$a4
    # Line 968
    lw	$a5,8($t2)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f15,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f14,0($a5)
    # Line 970
    cvt.s.w	$f3,$f3
    # Line 968
    mul.s	$f14,$f14,$f15
    swc1	$f14,4($a3)
    # Line 970
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f6
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    move	$v0,$zero
    # Line 972
    slt	$a5,$t1,$a4
    slti	$v1,$a4,0
    movn	$a4,$t1,$a5
    # Line 973
    lw	$at,8($t9)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f1,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    addiu	$a5,$a3,12
    swc1	$f0,8($a3)
.L0da0083c:
    # Line 960
    mtc1	$t0,$f17
    # Line 965
    mtc1	$t8,$f15
    # Line 980
    swc1	$f10,0($a5)
    # Line 955
    beq	$a7,$a1,.L0da00890
    # Line 980
    addiu	$a3,$a5,4
    # Line 958
    lwc1	$f5,8($a2)
.L0da00854:
    # Line 957
    lwc1	$f4,4($a2)
    # Line 956
    lwc1	$f6,0($a2)
    # Line 970
    mtc1	$t1,$f3
    # Line 958
    madd.s	$f5,$f12,$f5,$f8
    addiu	$a2,$a2,12
    # Line 960
    move	$a5,$zero
    # Line 957
    madd.s	$f4,$f11,$f4,$f13
    # Line 955
    addiu	$a1,$a1,1
    # Line 958
    bnez	$a6,.L0da00770
    # Line 956
    madd.s	$f6,$f9,$f6,$f7
    # Line 977
    swc1	$f6,8($a3)
    # Line 976
    swc1	$f4,4($a3)
    # Line 977
    addiu	$a5,$a3,12
    b	.L0da0083c
    # Line 975
    swc1	$f5,0($a3)
.L0da00890:
    # Line 982
    jr	$ra
    addiu	$sp,$sp,32
.L0da00898:
    # Line 942
    lwc1	$f9,30816($a0)
    # Line 940
    lwc1	$f11,30812($a0)
    # Line 948
    mul.s	$f7,$f9,$f4
    # Line 938
    lwc1	$f12,30808($a0)
    # Line 942
    mul.s	$f9,$f5,$f9
    # Line 946
    mul.s	$f13,$f11,$f6
    # Line 940
    mul.s	$f11,$f14,$f11
    # Line 944
    mul.s	$f8,$f12,$f15
    b	.L0da0073c
    # Line 938
    mul.s	$f12,$f16,$f12
.L0da008c0:
    # Line 960
    mtc1	$t0,$f17
    # Line 965
    mtc1	$t8,$f15
    b	.L0da00854
    # Line 958
    lwc1	$f5,8($a2)
.end __glSpanModifyBGR

# Function: __glSpanModifyLuminance
# Declared: Line 989 (Source lines: 991-1072)
# Address: 0x0da008d0 - 0x0da00ad8 (Size: 520 bytes, Frame: 32)
.globl __glSpanModifyLuminance
.ent __glSpanModifyLuminance
__glSpanModifyLuminance:
    # Line 1008
    lwc1	$f5,668($a0)
    lwc1	$f15,640($a0)
    lwc1	$f6,644($a0)
    lwc1	$f4,648($a0)
    # Line 1006
    lbu	$a6,760($a0)
    # Line 1008
    lwc1	$f14,664($a0)
    lwc1	$f16,660($a0)
    # Line 991
    addiu	$sp,$sp,-32
    # Line 1024
    addiu	$a7,$a0,1120
    # Line 1021
    addiu	$a5,$a0,1108
    # Line 1008
    beqz	$a6,.L0da00aa0
    lwc1	$f10,30600($a0)
    # Line 1016
    mov.s	$f7,$f4
    # Line 1024
    sw	$a7,16($sp)
    # Line 1021
    sw	$a5,8($sp)
    # Line 1018
    addiu	$a4,$a0,1096
    sw	$a4,0($sp)
    # Line 1020
    lw	$at,1096($a0)
    # Line 1015
    mov.s	$f13,$f6
    # Line 1026
    lw	$v1,1120($a0)
    # Line 1014
    mov.s	$f8,$f15
    # Line 1023
    lw	$v0,1108($a0)
    # Line 1013
    mov.s	$f9,$f5
    # Line 1026
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 1012
    mov.s	$f11,$f14
    # Line 1023
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 1011
    mov.s	$f12,$f16
    # Line 1020
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da0094c:
    # Line 1044
    lw	$a7,180($a1)
    lw	$t3,0($sp)
    lw	$t8,12($sp)
    move	$a1,$zero
    blez	$a7,.L0da00a98
    lw	$t0,4($sp)
    lw	$t9,16($sp)
    lw	$t1,20($sp)
    b	.L0da00ac8
    lw	$t2,8($sp)
    nop
    nop
    nop
.L0da00980:
    # Line 1050
    cvt.s.w	$f17,$f17
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f5
    trunc.w.s	$f16,$f16
    mfc1	$v0,$f16
    # Line 1052
    slt	$v1,$t0,$v0
    slti	$at,$v0,0
    movn	$v0,$t0,$v1
    # Line 1053
    lw	$a4,8($t3)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f17,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f16,0($a4)
    # Line 1055
    cvt.s.w	$f15,$f15
    # Line 1053
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($a3)
    # Line 1055
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f4
    trunc.w.s	$f14,$f14
    mfc1	$v1,$f14
    move	$at,$zero
    # Line 1057
    slt	$a4,$t8,$v1
    slti	$v0,$v1,0
    movn	$v1,$t8,$a4
    # Line 1058
    lw	$a5,8($t2)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f15,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f14,0($a5)
    # Line 1060
    cvt.s.w	$f3,$f3
    # Line 1058
    mul.s	$f14,$f14,$f15
    swc1	$f14,4($a3)
    # Line 1060
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f6
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    move	$v0,$zero
    # Line 1062
    slt	$a5,$t1,$a4
    slti	$v1,$a4,0
    movn	$a4,$t1,$a5
    # Line 1063
    lw	$at,8($t9)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f1,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    addiu	$a5,$a3,12
    swc1	$f0,8($a3)
.L0da00a4c:
    # Line 1050
    mtc1	$t0,$f17
    # Line 1055
    mtc1	$t8,$f15
    # Line 1070
    swc1	$f10,0($a5)
    # Line 1045
    beq	$a7,$a1,.L0da00a98
    # Line 1070
    addiu	$a3,$a5,4
    # Line 1046
    lwc1	$f5,0($a2)
.L0da00a64:
    # Line 1060
    mtc1	$t1,$f3
    # Line 1048
    madd.s	$f6,$f9,$f7,$f5
    addiu	$a2,$a2,4
    # Line 1050
    move	$a5,$zero
    # Line 1047
    madd.s	$f4,$f11,$f13,$f5
    # Line 1045
    addiu	$a1,$a1,1
    # Line 1048
    bnez	$a6,.L0da00980
    # Line 1046
    madd.s	$f5,$f12,$f8,$f5
    # Line 1067
    swc1	$f6,8($a3)
    # Line 1066
    swc1	$f4,4($a3)
    # Line 1067
    addiu	$a5,$a3,12
    b	.L0da00a4c
    # Line 1065
    swc1	$f5,0($a3)
.L0da00a98:
    # Line 1072
    jr	$ra
    addiu	$sp,$sp,32
.L0da00aa0:
    # Line 1032
    lwc1	$f9,30816($a0)
    # Line 1030
    lwc1	$f11,30812($a0)
    # Line 1038
    mul.s	$f7,$f9,$f4
    # Line 1028
    lwc1	$f12,30808($a0)
    # Line 1032
    mul.s	$f9,$f5,$f9
    # Line 1036
    mul.s	$f13,$f11,$f6
    # Line 1030
    mul.s	$f11,$f14,$f11
    # Line 1034
    mul.s	$f8,$f12,$f15
    b	.L0da0094c
    # Line 1028
    mul.s	$f12,$f16,$f12
.L0da00ac8:
    # Line 1050
    mtc1	$t0,$f17
    # Line 1055
    mtc1	$t8,$f15
    b	.L0da00a64
    # Line 1046
    lwc1	$f5,0($a2)
.end __glSpanModifyLuminance

# Function: __glSpanModifyLuminanceAlpha
# Declared: Line 1079 (Source lines: 1081-1172)
# Address: 0x0da00ae0 - 0x0da00d80 (Size: 672 bytes, Frame: 48)
.globl __glSpanModifyLuminanceAlpha
.ent __glSpanModifyLuminanceAlpha
__glSpanModifyLuminanceAlpha:
    # Line 1094
    lwc1	$f19,672($a0)
    lwc1	$f16,640($a0)
    lwc1	$f5,644($a0)
    lwc1	$f4,648($a0)
    lwc1	$f18,652($a0)
    lbu	$a7,760($a0)
    lwc1	$f6,668($a0)
    lwc1	$f7,664($a0)
    # Line 1081
    addiu	$sp,$sp,-48
    # Line 1115
    addiu	$t1,$a0,1132
    # Line 1094
    beqz	$a7,.L0da00d3c
    lwc1	$f17,660($a0)
    # Line 1104
    mov.s	$f13,$f18
    # Line 1115
    sw	$t1,24($sp)
    # Line 1112
    addiu	$t0,$a0,1120
    sw	$t0,16($sp)
    # Line 1109
    addiu	$a6,$a0,1108
    sw	$a6,8($sp)
    # Line 1106
    addiu	$a5,$a0,1096
    sw	$a5,0($sp)
    # Line 1108
    lw	$at,1096($a0)
    # Line 1103
    mov.s	$f9,$f4
    # Line 1111
    lw	$v0,1108($a0)
    # Line 1102
    mov.s	$f10,$f5
    # Line 1117
    lw	$a4,1132($a0)
    # Line 1101
    mov.s	$f15,$f16
    # Line 1114
    lw	$v1,1120($a0)
    # Line 1100
    mov.s	$f8,$f19
    # Line 1117
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
    # Line 1099
    mov.s	$f11,$f6
    # Line 1114
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 1098
    mov.s	$f14,$f7
    # Line 1111
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 1097
    mov.s	$f12,$f17
    # Line 1108
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da00b7c:
    # Line 1139
    lw	$a6,180($a1)
    lw	$t8,0($sp)
    lw	$t0,12($sp)
    move	$a1,$zero
    blez	$a6,.L0da00d34
    lw	$t2,4($sp)
    lw	$t9,24($sp)
    lw	$t3,20($sp)
    lw	$t1,8($sp)
    sd	$s0,32($sp)
    lw	$s0,16($sp)
    sd	$ra,40($sp)
    b	.L0da00d70
    lw	$ra,28($sp)
    nop
    nop
    nop
.L0da00bc0:
    # Line 1146
    cvt.s.w	$f23,$f23
    lwc1	$f21,3540($a0)
    madd.s	$f21,$f21,$f23,$f4
    trunc.w.s	$f21,$f21
    mfc1	$v0,$f21
    # Line 1148
    slt	$v1,$t2,$v0
    slti	$at,$v0,0
    movn	$v0,$t2,$v1
    # Line 1149
    lw	$a4,8($t8)
    movz	$a5,$v0,$at
    sll	$a5,$a5,0x2
    lwc1	$f23,30808($a0)
    addu	$a4,$a4,$a5
    lwc1	$f21,0($a4)
    # Line 1151
    cvt.s.w	$f19,$f19
    # Line 1149
    mul.s	$f21,$f21,$f23
    swc1	$f21,0($a3)
    # Line 1151
    lwc1	$f18,3540($a0)
    madd.s	$f18,$f18,$f19,$f7
    trunc.w.s	$f18,$f18
    mfc1	$v1,$f18
    move	$at,$zero
    # Line 1153
    slt	$a4,$t0,$v1
    slti	$v0,$v1,0
    movn	$v1,$t0,$a4
    # Line 1154
    lw	$a5,8($t1)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f19,30812($a0)
    addu	$a5,$a5,$at
    lwc1	$f18,0($a5)
    # Line 1156
    cvt.s.w	$f17,$f17
    # Line 1154
    mul.s	$f18,$f18,$f19
    swc1	$f18,4($a3)
    # Line 1156
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f6
    trunc.w.s	$f16,$f16
    mfc1	$a4,$f16
    move	$v0,$zero
    # Line 1158
    slt	$a5,$t3,$a4
    slti	$v1,$a4,0
    movn	$a4,$t3,$a5
    # Line 1159
    lw	$at,8($s0)
    movz	$v0,$a4,$v1
    sll	$v0,$v0,0x2
    lwc1	$f17,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f16,0($at)
    # Line 1161
    cvt.s.w	$f3,$f3
    # Line 1159
    mul.s	$f16,$f16,$f17
    swc1	$f16,8($a3)
    # Line 1161
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f5
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    move	$v1,$zero
    # Line 1163
    slt	$at,$ra,$a5
    slti	$a4,$a5,0
    movn	$a5,$ra,$at
    # Line 1164
    lw	$v0,8($t9)
    movz	$v1,$a5,$a4
    sll	$v1,$v1,0x2
    lwc1	$f1,30848($a0)
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    addiu	$at,$a3,16
    mul.s	$f0,$f0,$f1
    move	$a3,$at
    swc1	$f0,-4($at)
.L0da00cd4:
    # Line 1151
    mtc1	$t0,$f19
    # Line 1140
    beq	$a6,$a1,.L0da00d2c
    # Line 1146
    mtc1	$t2,$f23
    # Line 1144
    lwc1	$f5,4($a2)
.L0da00ce4:
    # Line 1141
    lwc1	$f4,0($a2)
    # Line 1144
    madd.s	$f5,$f8,$f5,$f13
    # Line 1161
    mtc1	$ra,$f3
    # Line 1146
    move	$a5,$zero
    # Line 1143
    madd.s	$f6,$f11,$f9,$f4
    # Line 1156
    mtc1	$t3,$f17
    # Line 1144
    addiu	$a2,$a2,8
    # Line 1142
    madd.s	$f7,$f14,$f10,$f4
    # Line 1140
    addiu	$a1,$a1,1
    # Line 1144
    bnez	$a7,.L0da00bc0
    # Line 1141
    madd.s	$f4,$f12,$f15,$f4
    # Line 1168
    swc1	$f6,8($a3)
    # Line 1167
    swc1	$f7,4($a3)
    # Line 1166
    swc1	$f4,0($a3)
    # Line 1169
    addiu	$v1,$a3,16
    swc1	$f5,12($a3)
    b	.L0da00cd4
    move	$a3,$v1
.L0da00d2c:
    ld	$s0,32($sp)
    ld	$ra,40($sp)
.L0da00d34:
    # Line 1172
    jr	$ra
    addiu	$sp,$sp,48
.L0da00d3c:
    # Line 1125
    lwc1	$f8,30848($a0)
    # Line 1123
    lwc1	$f11,30816($a0)
    # Line 1133
    mul.s	$f13,$f8,$f18
    # Line 1121
    lwc1	$f14,30812($a0)
    # Line 1125
    mul.s	$f8,$f19,$f8
    # Line 1131
    mul.s	$f9,$f11,$f4
    # Line 1119
    lwc1	$f12,30808($a0)
    # Line 1123
    mul.s	$f11,$f6,$f11
    # Line 1129
    mul.s	$f10,$f14,$f5
    # Line 1121
    mul.s	$f14,$f7,$f14
    # Line 1127
    mul.s	$f15,$f12,$f16
    b	.L0da00b7c
    # Line 1119
    mul.s	$f12,$f17,$f12
.L0da00d70:
    # Line 1146
    mtc1	$t2,$f23
    # Line 1151
    mtc1	$t0,$f19
    b	.L0da00ce4
    # Line 1144
    lwc1	$f5,4($a2)
.end __glSpanModifyLuminanceAlpha

# Function: __glSpanModifyRedAlpha
# Declared: Line 1183 (Source lines: 1185-1254)
# Address: 0x0da00d80 - 0x0da00f0c (Size: 396 bytes, Frame: 16)
.globl __glSpanModifyRedAlpha
.ent __glSpanModifyRedAlpha
__glSpanModifyRedAlpha:
    # Line 1204
    lwc1	$f5,672($a0)
    lwc1	$f13,640($a0)
    lwc1	$f12,652($a0)
    # Line 1199
    lbu	$a6,760($a0)
    # Line 1204
    lwc1	$f4,660($a0)
    lwc1	$f7,30596($a0)
    # Line 1185
    addiu	$sp,$sp,-16
    # Line 1204
    beqz	$a6,.L0da00ee0
    # Line 1203
    lwc1	$f6,30592($a0)
    # Line 1209
    mov.s	$f10,$f12
    # Line 1214
    addiu	$a4,$a0,1132
    sw	$a4,8($sp)
    # Line 1211
    addiu	$v1,$a0,1096
    sw	$v1,0($sp)
    # Line 1216
    lw	$v0,1132($a0)
    # Line 1208
    mov.s	$f11,$f13
    # Line 1213
    lw	$at,1096($a0)
    # Line 1207
    mov.s	$f8,$f5
    # Line 1216
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 1206
    mov.s	$f9,$f4
    # Line 1213
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da00ddc:
    # Line 1230
    lw	$a7,180($a1)
    lw	$t2,0($sp)
    lw	$t3,12($sp)
    move	$a1,$zero
    blez	$a7,.L0da00ed8
    lw	$t0,4($sp)
    b	.L0da00efc
    lw	$t1,8($sp)
    nop
.L0da00e00:
    # Line 1235
    cvt.s.w	$f15,$f15
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f5
    trunc.w.s	$f14,$f14
    mfc1	$t8,$f14
    # Line 1237
    slt	$t9,$t0,$t8
    slti	$a5,$t8,0
    movn	$t8,$t0,$t9
    # Line 1238
    lw	$v1,8($t2)
    movz	$a4,$t8,$a5
    sll	$a4,$a4,0x2
    lwc1	$f13,30808($a0)
    addu	$v1,$v1,$a4
    lwc1	$f12,0($v1)
    # Line 1243
    cvt.s.w	$f3,$f3
    # Line 1241
    swc1	$f7,8($a3)
    # Line 1240
    swc1	$f6,4($a3)
    # Line 1238
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($a3)
    # Line 1243
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f4
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    move	$t9,$zero
    # Line 1245
    slt	$v1,$t3,$v0
    slti	$at,$v0,0
    movn	$v0,$t3,$v1
    # Line 1246
    lw	$t8,8($t1)
    movz	$t9,$v0,$at
    sll	$t9,$t9,0x2
    lwc1	$f1,30848($a0)
    addu	$t8,$t8,$t9
    lwc1	$f0,0($t8)
    addiu	$a5,$a3,16
    mul.s	$f0,$f0,$f1
    move	$a3,$a5
    swc1	$f0,-4($a5)
.L0da00e94:
    # Line 1243
    mtc1	$t3,$f3
    # Line 1231
    beq	$a7,$a1,.L0da00ed8
    # Line 1235
    mtc1	$t0,$f15
    # Line 1232
    lwc1	$f5,0($a2)
.L0da00ea4:
    # Line 1235
    move	$a4,$zero
    # Line 1233
    addiu	$a2,$a2,4
    madd.s	$f4,$f8,$f10,$f5
    # Line 1231
    addiu	$a1,$a1,1
    # Line 1233
    bnez	$a6,.L0da00e00
    # Line 1232
    madd.s	$f5,$f9,$f11,$f5
    # Line 1250
    swc1	$f7,8($a3)
    # Line 1249
    swc1	$f6,4($a3)
    # Line 1248
    swc1	$f5,0($a3)
    # Line 1251
    addiu	$t9,$a3,16
    swc1	$f4,12($a3)
    b	.L0da00e94
    move	$a3,$t9
.L0da00ed8:
    # Line 1254
    jr	$ra
    addiu	$sp,$sp,16
.L0da00ee0:
    # Line 1220
    lwc1	$f8,30848($a0)
    # Line 1218
    lwc1	$f9,30808($a0)
    # Line 1224
    mul.s	$f10,$f8,$f12
    # Line 1220
    mul.s	$f8,$f5,$f8
    # Line 1222
    mul.s	$f11,$f9,$f13
    b	.L0da00ddc
    # Line 1218
    mul.s	$f9,$f4,$f9
.L0da00efc:
    # Line 1235
    mtc1	$t0,$f15
    # Line 1243
    mtc1	$t3,$f3
    b	.L0da00ea4
    # Line 1232
    lwc1	$f5,0($a2)
.end __glSpanModifyRedAlpha

# Function: __glSpanModifyDepth
# Declared: Line 1260 (Source lines: 1262-1286)
# Address: 0x0da00f10 - 0x0da00fd8 (Size: 200 bytes, Frame: 0)
.globl __glSpanModifyDepth
.ent __glSpanModifyDepth
__glSpanModifyDepth:
    # Line 1279
    lw	$a7,180($a1)
    # Line 1274
    lwc1	$f8,3544($a0)
    # Line 1262
    move	$a6,$a2
    # Line 1273
    lwc1	$f6,656($a0)
    # Line 1262
    move	$a5,$a3
    # Line 1272
    lwc1	$f5,676($a0)
    # Line 1279
    blez	$a7,.L0da00f78
    andi	$at,$a7,0x1
    mtc1	$zero,$f7
    move	$a1,$zero
    beqz	$at,.L0da00f70
    sra	$v0,$a7,0x1
    # Line 1281
    lwc1	$f4,0($a2)
    madd.s	$f4,$f5,$f4,$f6
    c.lt.s	$f4,$f7
    # Line 1280
    addiu	$a1,$a1,1
    # Line 1281
    bc1f	.L0da00f60
    addiu	$a6,$a2,4
    b	.L0da00f68
    mtc1	$zero,$f4
.L0da00f60:
    # Line 1283
    c.lt.s $f8,$f4
    movt.s	$f4,$f8,$fcc1
.L0da00f68:
    # Line 1284
    swc1	$f4,0($a5)
    addiu	$a5,$a5,4
.L0da00f70:
    bnezl	$v0,.L0da00f98
    # Line 1281
    lwc1	$f4,0($a6)
.L0da00f78:
    # Line 1286
    jr	$ra
    nop
.L0da00f80:
    # Line 1283
    c.lt.s $f8,$f4
    movt.s	$f4,$f8,$fcc2
.L0da00f88:
    # Line 1284
    swc1	$f4,4($a5)
    # Line 1280
    beq	$a7,$a1,.L0da00f78
    # Line 1284
    addiu	$a5,$a5,8
    # Line 1281
    lwc1	$f4,0($a6)
.L0da00f98:
    madd.s	$f4,$f5,$f4,$f6
    c.lt.s $f4,$f7
    bc1f .L0da00fb0
    # Line 1280
    addiu	$a1,$a1,2
    # Line 1281
    b	.L0da00fb8
    mtc1	$zero,$f4
.L0da00fb0:
    # Line 1283
    c.lt.s $f8,$f4
    movt.s	$f4,$f8,$fcc4
.L0da00fb8:
    # Line 1284
    swc1	$f4,0($a5)
    # Line 1281
    lwc1	$f4,4($a6)
    madd.s	$f4,$f5,$f4,$f6
    c.lt.s $f4,$f7
    bc1f .L0da00f80
    addiu	$a6,$a6,8
    b	.L0da00f88
    mtc1	$zero,$f4
.end __glSpanModifyDepth

# Function: __glSpanModifyStencil
# Declared: Line 1292 (Source lines: 1294-1351)
# Address: 0x0da00fe0 - 0x0da014c4 (Size: 1252 bytes, Frame: 16)
.globl __glSpanModifyStencil
.ent __glSpanModifyStencil
__glSpanModifyStencil:
    # Line 1307
    lbu	$t0,761($a0)
    # Line 1306
    lw	$a7,752($a0)
    # Line 1294
    addiu	$sp,$sp,-16
    # Line 1307
    beqz	$t0,.L0da01008
    # Line 1305
    lw	$a6,756($a0)
    # Line 1309
    addiu	$v0,$a0,1036
    # Line 1310
    lw	$at,1036($a0)
    # Line 1309
    sw	$v0,0($sp)
    # Line 1310
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da01008:
    lw	$a5,3248($a0)
    slt	$v1,$a5,$a7
    # Line 1318
    andi	$a4,$a7,0x1f
    # Line 1310
    beqz	$v1,.L0da01024
    # Line 1318
    slt	$a0,$a5,$a4
    # Line 1320
    move	$a7,$a5
    movz	$a7,$a4,$a0
.L0da01024:
    # Line 1325
    move	$a0,$zero
    bltz	$a7,.L0da01188
    lw	$a5,180($a1)
    beqz	$t0,.L0da012e8
    nop
    blez	$a5,.L0da01180
    lw	$t0,0($sp)
    andi	$t1,$a5,0x3
    lw	$a1,4($sp)
    beqz	$t1,.L0da01098
    sra	$t8,$a5,0x2
.L0da01050:
    # Line 1332
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$t3,$f1
    sllv	$t3,$t3,$a7
    addu	$t3,$a6,$t3
    lw	$t2,8($t0)
    and	$t3,$a1,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    mtc1	$t2,$f0
    cvt.s.w	$f0,$f0
    addiu	$t1,$t1,-1
    # Line 1330
    addiu	$a0,$a0,1
    # Line 1332
    addiu	$a3,$a3,4
    # Line 1331
    addiu	$a2,$a2,4
    bnez	$t1,.L0da01050
    # Line 1332
    swc1	$f0,-4($a3)
.L0da01098:
    beqz	$t8,.L0da01180
    nop
.L0da010a0:
    lwc1	$f9,0($a2)
    trunc.w.s	$f9,$f9
    mfc1	$t3,$f9
    sllv	$t3,$t3,$a7
    addu	$t3,$a6,$t3
    lw	$t2,8($t0)
    and	$t3,$a1,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    mtc1	$t2,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,0($a3)
    lwc1	$f7,4($a2)
    trunc.w.s	$f7,$f7
    mfc1	$t1,$f7
    sllv	$t1,$t1,$a7
    addu	$t1,$a6,$t1
    lw	$a4,8($t0)
    and	$t1,$a1,$t1
    sll	$t1,$t1,0x2
    addu	$a4,$a4,$t1
    lw	$a4,0($a4)
    mtc1	$a4,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,4($a3)
    lwc1	$f5,8($a2)
    trunc.w.s	$f5,$f5
    mfc1	$v1,$f5
    sllv	$v1,$v1,$a7
    addu	$v1,$a6,$v1
    lw	$v0,8($t0)
    and	$v1,$a1,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,8($a3)
    lwc1	$f3,12($a2)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    sllv	$at,$at,$a7
    addu	$at,$a6,$at
    lw	$t9,8($t0)
    and	$at,$a1,$at
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    lw	$t9,0($t9)
    mtc1	$t9,$f2
    cvt.s.w	$f2,$f2
    # Line 1330
    addiu	$a0,$a0,4
    # Line 1332
    addiu	$a3,$a3,16
    # Line 1331
    addiu	$a2,$a2,16
    # Line 1330
    bne	$a5,$a0,.L0da010a0
    # Line 1332
    swc1	$f2,-4($a3)
.L0da01180:
    # Line 1351
    jr	$ra
    addiu	$sp,$sp,16
.L0da01188:
    # Line 1335
    beqz	$t0,.L0da013d8
    nop
    blez	$a5,.L0da01180
    lw	$t0,0($sp)
    andi	$t2,$a5,0x3
    negu	$t1,$a7
    sra	$at,$a5,0x2
    lw	$a1,4($sp)
    beqz	$t2,.L0da011f8
    move	$a0,$zero
.L0da011b0:
    # Line 1343
    lwc1	$f11,0($a2)
    trunc.w.s	$f11,$f11
    mfc1	$t9,$f11
    srav	$t9,$t9,$t1
    addu	$t9,$a6,$t9
    lw	$t8,8($t0)
    and	$t9,$a1,$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,0($t8)
    mtc1	$t8,$f10
    cvt.s.w	$f10,$f10
    addiu	$t2,$t2,-1
    # Line 1341
    addiu	$a0,$a0,1
    # Line 1343
    addiu	$a3,$a3,4
    # Line 1342
    addiu	$a2,$a2,4
    bnez	$t2,.L0da011b0
    # Line 1343
    swc1	$f10,-4($a3)
.L0da011f8:
    beqz	$at,.L0da01180
    nop
.L0da01200:
    lwc1	$f19,0($a2)
    trunc.w.s	$f19,$f19
    mfc1	$t9,$f19
    srav	$t9,$t9,$t1
    addu	$t9,$a6,$t9
    lw	$t8,8($t0)
    and	$t9,$a1,$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,0($t8)
    mtc1	$t8,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,0($a3)
    lwc1	$f17,4($a2)
    trunc.w.s	$f17,$f17
    mfc1	$t3,$f17
    srav	$t3,$t3,$t1
    addu	$t3,$a6,$t3
    lw	$t2,8($t0)
    and	$t3,$a1,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    mtc1	$t2,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,4($a3)
    lwc1	$f15,8($a2)
    trunc.w.s	$f15,$f15
    mfc1	$a7,$f15
    srav	$a7,$a7,$t1
    addu	$a7,$a6,$a7
    lw	$a4,8($t0)
    and	$a7,$a1,$a7
    sll	$a7,$a7,0x2
    addu	$a4,$a4,$a7
    lw	$a4,0($a4)
    mtc1	$a4,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,8($a3)
    lwc1	$f13,12($a2)
    trunc.w.s	$f13,$f13
    mfc1	$v1,$f13
    srav	$v1,$v1,$t1
    addu	$v1,$a6,$v1
    lw	$v0,8($t0)
    and	$v1,$a1,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    # Line 1341
    addiu	$a0,$a0,4
    # Line 1343
    addiu	$a3,$a3,16
    # Line 1342
    addiu	$a2,$a2,16
    # Line 1341
    bne	$a5,$a0,.L0da01200
    # Line 1343
    swc1	$f12,-4($a3)
    b	.L0da01180
    nop
.L0da012e8:
    # Line 1330
    blez	$a5,.L0da01180
    andi	$a1,$a5,0x3
    sra	$v0,$a5,0x2
    beqz	$a1,.L0da01330
    move	$a0,$zero
.L0da012fc:
    # Line 1336
    lwc1	$f23,0($a2)
    trunc.w.s	$f23,$f23
    mfc1	$at,$f23
    sllv	$at,$at,$a7
    addu	$at,$a6,$at
    mtc1	$at,$f21
    cvt.s.w	$f21,$f21
    addiu	$a1,$a1,-1
    # Line 1335
    addiu	$a0,$a0,1
    # Line 1336
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    bnez	$a1,.L0da012fc
    swc1	$f21,-4($a3)
.L0da01330:
    beqz	$v0,.L0da01180
    nop
    nop
    nop
.L0da01340:
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$t0,$f3
    sllv	$t0,$t0,$a7
    addu	$t0,$a6,$t0
    mtc1	$t0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a3)
    lwc1	$f1,4($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    sllv	$a4,$a4,$a7
    addu	$a4,$a6,$a4
    mtc1	$a4,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a3)
    lwc1	$f31,8($a2)
    trunc.w.s	$f31,$f31
    mfc1	$a1,$f31
    sllv	$a1,$a1,$a7
    addu	$a1,$a6,$a1
    mtc1	$a1,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,8($a3)
    lwc1	$f27,12($a2)
    trunc.w.s	$f27,$f27
    mfc1	$v1,$f27
    sllv	$v1,$v1,$a7
    addu	$v1,$a6,$v1
    mtc1	$v1,$f25
    cvt.s.w	$f25,$f25
    # Line 1335
    addiu	$a0,$a0,4
    # Line 1336
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    # Line 1335
    bne	$a5,$a0,.L0da01340
    # Line 1336
    swc1	$f25,-4($a3)
    b	.L0da01180
    nop
.L0da013d8:
    # Line 1341
    blez	$a5,.L0da01180
    negu	$t1,$a7
    andi	$a1,$a5,0x3
    sra	$t3,$a5,0x2
    beqz	$a1,.L0da01424
    move	$a0,$zero
.L0da013f0:
    # Line 1347
    lwc1	$f5,0($a2)
    trunc.w.s	$f5,$f5
    mfc1	$t2,$f5
    srav	$t2,$t2,$t1
    addu	$t2,$a6,$t2
    mtc1	$t2,$f4
    cvt.s.w	$f4,$f4
    addiu	$a1,$a1,-1
    # Line 1346
    addiu	$a0,$a0,1
    # Line 1347
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    bnez	$a1,.L0da013f0
    swc1	$f4,-4($a3)
.L0da01424:
    beqz	$t3,.L0da01180
    nop
.L0da0142c:
    lwc1	$f13,0($a2)
    trunc.w.s	$f13,$f13
    mfc1	$v0,$f13
    srav	$v0,$v0,$t1
    addu	$v0,$a6,$v0
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,0($a3)
    lwc1	$f11,4($a2)
    trunc.w.s	$f11,$f11
    mfc1	$at,$f11
    srav	$at,$at,$t1
    addu	$at,$a6,$at
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,4($a3)
    lwc1	$f9,8($a2)
    trunc.w.s	$f9,$f9
    mfc1	$t9,$f9
    srav	$t9,$t9,$t1
    addu	$t9,$a6,$t9
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,8($a3)
    lwc1	$f7,12($a2)
    trunc.w.s	$f7,$f7
    mfc1	$t8,$f7
    srav	$t8,$t8,$t1
    addu	$t8,$a6,$t8
    mtc1	$t8,$f6
    cvt.s.w	$f6,$f6
    # Line 1346
    addiu	$a0,$a0,4
    # Line 1347
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    # Line 1346
    bne	$a5,$a0,.L0da0142c
    # Line 1347
    swc1	$f6,-4($a3)
    b	.L0da01180
    nop
.end __glSpanModifyStencil

# Function: __glSpanModifyCI
# Declared: Line 1357 (Source lines: 1359-1429)
# Address: 0x0da014d0 - 0x0da01954 (Size: 1156 bytes, Frame: 128)
.globl __glSpanModifyCI
.ent __glSpanModifyCI
__glSpanModifyCI:
    # Line 1374
    lw	$a6,752($a0)
    # Line 1373
    lw	$t0,756($a0)
    # Line 1359
    addiu	$sp,$sp,-128
    # Line 1374
    lw	$at,80($a1)
    # Line 1359
    sd	$s4,56($sp)
    # Line 1374
    li	$t1,6400
    # Line 1371
    lbu	$s4,760($a0)
    # Line 1374
    beq	$t1,$at,.L0da018d4
    sd	$s3,64($sp)
    # Line 1376
    addiu	$a7,$a0,1048
    # Line 1385
    addiu	$t8,$a0,1084
    sw	$t8,24($sp)
    # Line 1382
    addiu	$t3,$a0,1072
    sw	$t3,16($sp)
    # Line 1379
    addiu	$t2,$a0,1060
    sw	$t2,8($sp)
    # Line 1376
    sw	$a7,0($sp)
    # Line 1378
    lw	$v0,1048($a0)
    # Line 1381
    lw	$v1,1060($a0)
    # Line 1384
    lw	$a4,1072($a0)
    # Line 1387
    lw	$a5,1084($a0)
    # Line 1388
    lwc1	$f0,30808($a0)
    # Line 1389
    lwc1	$f1,30812($a0)
    # Line 1391
    lwc1	$f3,30848($a0)
    # Line 1390
    lwc1	$f2,30816($a0)
    # Line 1391
    swc1	$f3,44($sp)
    # Line 1390
    swc1	$f2,40($sp)
    # Line 1389
    swc1	$f1,36($sp)
    # Line 1388
    swc1	$f0,32($sp)
    # Line 1387
    addiu	$a5,$a5,-1
    sw	$a5,28($sp)
    # Line 1384
    addiu	$a4,$a4,-1
    sw	$a4,20($sp)
    # Line 1381
    addiu	$v1,$v1,-1
    sw	$v1,12($sp)
    # Line 1378
    addiu	$v0,$v0,-1
    sw	$v0,4($sp)
.L0da01564:
    # Line 1411
    lw	$t8,0($sp)
    # Line 1396
    lw	$a5,3252($a0)
    # Line 1411
    move	$a7,$zero
    lw	$s3,180($a1)
    lw	$t2,4($sp)
    # Line 1409
    move	$a0,$a2
    # Line 1396
    slt	$t9,$a5,$a6
    # Line 1411
    lwc1	$f6,32($sp)
    # Line 1405
    andi	$v0,$a6,0x1f
    andi	$v1,$s3,0x1
    # Line 1411
    lwc1	$f7,36($sp)
    # Line 1396
    beqz	$t9,.L0da015a0
    # Line 1405
    slt	$at,$a5,$v0
    # Line 1406
    move	$a6,$a5
    movz	$a6,$v0,$at
.L0da015a0:
    # Line 1411
    blez	$s3,.L0da016b4
    lw	$t9,24($sp)
    lwc1	$f5,44($sp)
    lw	$t3,28($sp)
    lwc1	$f4,40($sp)
    sd	$s7,120($sp)
    lw	$s7,48($sp)
    sd	$s6,80($sp)
    lw	$s6,52($sp)
    sd	$s0,96($sp)
    lw	$s0,8($sp)
    sd	$s2,72($sp)
    lw	$s2,12($sp)
    sd	$s1,104($sp)
    lw	$s1,16($sp)
    sd	$ra,88($sp)
    lw	$ra,20($sp)
    sd	$s5,112($sp)
    beqz	$v1,.L0da0168c
    negu	$s5,$a6
    # Line 1416
    lw	$at,80($a1)
    # Line 1411
    bltz	$a6,.L0da01924
    # Line 1412
    addiu	$a7,$a7,1
    # Line 1414
    addiu	$a0,$a2,4
    lwc1	$f8,0($a2)
    trunc.w.s	$f8,$f8
    mfc1	$a5,$f8
    sllv	$a5,$a5,$a6
    addu	$a5,$t0,$a5
.L0da01614:
    # Line 1420
    and	$v0,$a5,$s2
    # Line 1419
    and	$a2,$a5,$t2
    # Line 1416
    beq	$t1,$at,.L0da018f0
    # Line 1419
    sll	$a2,$a2,0x2
    # Line 1421
    and	$a4,$a5,$ra
    # Line 1419
    lw	$v1,8($t8)
    addu	$v1,$v1,$a2
    lwc1	$f12,0($v1)
    mul.s	$f12,$f12,$f6
    swc1	$f12,0($a3)
    # Line 1420
    lw	$at,8($s0)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f11,0($at)
    mul.s	$f11,$f11,$f7
    swc1	$f11,4($a3)
    # Line 1421
    lw	$a2,8($s1)
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a4
    lwc1	$f10,0($a2)
    mul.s	$f10,$f10,$f4
    swc1	$f10,8($a3)
    # Line 1422
    and	$v1,$a5,$t3
    lw	$v0,8($t9)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f9,0($v0)
    addiu	$a3,$a3,16
    mul.s	$f9,$f9,$f5
    swc1	$f9,-4($a3)
.L0da0168c:
    sra	$a4,$s3,0x1
    bnez	$a4,.L0da017a4
    # Line 1412
    addiu	$a7,$a7,2
.L0da01698:
    ld	$s2,72($sp)
    ld	$s6,80($sp)
    ld	$ra,88($sp)
    ld	$s0,96($sp)
    ld	$s1,104($sp)
    ld	$s5,112($sp)
    ld	$s7,120($sp)
.L0da016b4:
    ld	$s3,64($sp)
    # Line 1429
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
    nop
    nop
    nop
.L0da016d0:
    # Line 1422
    beqz	$s4,.L0da018ac
    # Line 1426
    mtc1	$a5,$f1
    # Line 1424
    addiu	$at,$a3,4
    lw	$v0,8($s7)
    and	$v1,$a5,$s6
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f13
    cvt.s.w	$f13,$f13
    move	$a3,$at
    swc1	$f13,-4($at)
.L0da01700:
    # Line 1411
    bltz	$a6,.L0da01840
    nop
.L0da01708:
    # Line 1414
    addiu	$a0,$a0,4
    lwc1	$f14,-4($a0)
    trunc.w.s	$f14,$f14
    mfc1	$a5,$f14
    sllv	$a5,$a5,$a6
    addu	$a5,$t0,$a5
.L0da01720:
    # Line 1416
    lw	$at,80($a1)
    # Line 1420
    and	$v0,$a5,$s2
    # Line 1419
    and	$a2,$a5,$t2
    # Line 1416
    beq	$t1,$at,.L0da0185c
    # Line 1419
    sll	$a2,$a2,0x2
    # Line 1421
    and	$a4,$a5,$ra
    # Line 1419
    lw	$v1,8($t8)
    addu	$v1,$v1,$a2
    lwc1	$f18,0($v1)
    mul.s	$f18,$f18,$f6
    swc1	$f18,0($a3)
    # Line 1420
    lw	$at,8($s0)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    mul.s	$f17,$f17,$f7
    swc1	$f17,4($a3)
    # Line 1421
    lw	$a2,8($s1)
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a4
    lwc1	$f16,0($a2)
    mul.s	$f16,$f16,$f4
    swc1	$f16,8($a3)
    # Line 1422
    and	$v1,$a5,$t3
    lw	$v0,8($t9)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f15,0($v0)
    addiu	$a3,$a3,16
    mul.s	$f15,$f15,$f5
    swc1	$f15,-4($a3)
.L0da0179c:
    # Line 1412
    beq	$s3,$a7,.L0da01698
    addiu	$a7,$a7,2
.L0da017a4:
    # Line 1411
    bltz	$a6,.L0da01890
    # Line 1416
    lw	$at,80($a1)
    # Line 1414
    addiu	$a0,$a0,4
    lwc1	$f19,-4($a0)
    trunc.w.s	$f19,$f19
    mfc1	$a5,$f19
    sllv	$a5,$a5,$a6
    addu	$a5,$t0,$a5
.L0da017c4:
    # Line 1420
    and	$v0,$a5,$s2
    # Line 1419
    and	$a2,$a5,$t2
    # Line 1416
    beq	$t1,$at,.L0da016d0
    # Line 1419
    sll	$a2,$a2,0x2
    # Line 1421
    and	$a4,$a5,$ra
    # Line 1419
    lw	$v1,8($t8)
    addu	$v1,$v1,$a2
    lwc1	$f27,0($v1)
    mul.s	$f27,$f27,$f6
    swc1	$f27,0($a3)
    # Line 1420
    lw	$at,8($s0)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f25,0($at)
    mul.s	$f25,$f25,$f7
    swc1	$f25,4($a3)
    # Line 1421
    lw	$a2,8($s1)
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a4
    lwc1	$f23,0($a2)
    mul.s	$f23,$f23,$f4
    swc1	$f23,8($a3)
    # Line 1422
    and	$v1,$a5,$t3
    lw	$v0,8($t9)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f21,0($v0)
    addiu	$a3,$a3,16
    mul.s	$f21,$f21,$f5
    # Line 1411
    bgez	$a6,.L0da01708
    # Line 1422
    swc1	$f21,-4($a3)
.L0da01840:
    # Line 1416
    addiu	$a0,$a0,4
    lwc1	$f29,-4($a0)
    trunc.w.s	$f29,$f29
    mfc1	$a5,$f29
    srav	$a5,$a5,$s5
    b	.L0da01720
    addu	$a5,$t0,$a5
.L0da0185c:
    # Line 1422
    beqz	$s4,.L0da018c0
    # Line 1426
    mtc1	$a5,$f2
    # Line 1424
    addiu	$at,$a3,4
    lw	$v0,8($s7)
    and	$v1,$a5,$s6
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f31
    cvt.s.w	$f31,$f31
    move	$a3,$at
    b	.L0da0179c
    swc1	$f31,-4($at)
.L0da01890:
    # Line 1416
    addiu	$a0,$a0,4
    lwc1	$f0,-4($a0)
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f0
    srav	$a5,$a5,$s5
    b	.L0da017c4
    addu	$a5,$t0,$a5
.L0da018ac:
    # Line 1426
    cvt.s.w	$f1,$f1
    addiu	$at,$a3,4
    move	$a3,$at
    b	.L0da01700
    swc1	$f1,-4($at)
.L0da018c0:
    cvt.s.w	$f2,$f2
    addiu	$v0,$a3,4
    move	$a3,$v0
    b	.L0da0179c
    swc1	$f2,-4($v0)
.L0da018d4:
    # Line 1391
    beqz	$s4,.L0da01564
    # Line 1394
    addiu	$a4,$a0,1024
    # Line 1396
    lw	$v1,1024($a0)
    # Line 1394
    sw	$a4,48($sp)
    # Line 1396
    addiu	$v1,$v1,-1
    b	.L0da01564
    sw	$v1,52($sp)
.L0da018f0:
    # Line 1422
    beqz	$s4,.L0da01940
    # Line 1426
    mtc1	$a5,$f9
    # Line 1424
    addiu	$at,$a3,4
    lw	$v0,8($s7)
    and	$v1,$a5,$s6
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    cvt.s.w	$f3,$f3
    move	$a3,$at
    b	.L0da0168c
    swc1	$f3,-4($at)
.L0da01924:
    # Line 1416
    lwc1	$f8,0($a2)
    trunc.w.s	$f8,$f8
    mfc1	$a5,$f8
    addiu	$a0,$a2,4
    srav	$a5,$a5,$s5
    b	.L0da01614
    addu	$a5,$t0,$a5
.L0da01940:
    # Line 1426
    cvt.s.w	$f9,$f9
    addiu	$at,$a3,4
    move	$a3,$at
    b	.L0da0168c
    swc1	$f9,-4($at)
.end __glSpanModifyCI

# Function: __glSpanApplyRGBAColorTable
# Declared: Line 1434 (Source lines: 1436-1639)
# Address: 0x0da01960 - 0x0da02024 (Size: 1732 bytes, Frame: 16)
.globl __glSpanApplyRGBAColorTable
.ent __glSpanApplyRGBAColorTable
__glSpanApplyRGBAColorTable:
    # Line 1436
    lw	$a5,30704($a0)
    andi	$at,$a5,0x1
    addiu	$sp,$sp,-16
    beqz	$at,.L0da01fe0
    sd	$ra,0($sp)
    # Line 1449
    li	$v0,-2
    and	$v0,$a5,$v0
    sw	$v0,30704($a0)
    # Line 1465
    addiu	$a6,$a0,5432
    # Line 1466
    lw	$a7,180($a1)
.L0da01988:
    # Line 1480
    lw	$t3,12($a6)
    move	$a5,$zero
    li	$ra,6408
    blez	$a7,.L0da01fd4
    addiu	$t3,$t3,-1
    li	$t1,6406
    li	$t2,6409
    li	$t8,6410
    li	$t0,0x8049
    b	.L0da02018
    li	$t9,6407
    nop
    nop
    nop
.L0da019c0:
    # Line 1518
    cvt.s.w	$f8,$f8
    lwc1	$f17,30856($a0)
    mul.s	$f18,$f8,$f5
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f18
    trunc.w.s	$f16,$f16
    mfc1	$v0,$f16
    move	$a4,$zero
    # Line 1521
    slt	$v1,$t3,$v0
    slti	$at,$v0,0
    movn	$v0,$t3,$v1
    # Line 1522
    lw	$a1,4($a6)
    movz	$a4,$v0,$at
    sll	$a4,$a4,0x2
    lwc1	$f15,30808($a0)
    addu	$a1,$a1,$a4
    lwc1	$f14,0($a1)
    mul.s	$f14,$f14,$f15
    swc1	$f14,-16($a3)
    # Line 1524
    lwc1	$f12,30860($a0)
    mul.s	$f13,$f8,$f4
    lwc1	$f11,3540($a0)
    madd.s	$f11,$f11,$f12,$f13
    trunc.w.s	$f11,$f11
    mfc1	$v1,$f11
    move	$at,$zero
    # Line 1527
    slt	$a1,$t3,$v1
    slti	$v0,$v1,0
    movn	$v1,$t3,$a1
    # Line 1528
    lw	$a4,4($a6)
    movz	$at,$v1,$v0
    sll	$at,$at,0x2
    lwc1	$f10,30812($a0)
    addu	$a4,$a4,$at
    lwc1	$f9,0($a4)
    mul.s	$f9,$f9,$f10
    swc1	$f9,-12($a3)
    # Line 1530
    lwc1	$f3,30864($a0)
    mul.s	$f8,$f8,$f6
    lwc1	$f2,3540($a0)
    madd.s	$f2,$f2,$f3,$f8
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    move	$v0,$zero
    # Line 1533
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    # Line 1534
    lw	$at,4($a6)
    movz	$v0,$a1,$v1
    sll	$v0,$v0,0x2
    lwc1	$f1,30816($a0)
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    # Line 1536
    swc1	$f7,-4($a3)
    # Line 1534
    mul.s	$f0,$f0,$f1
    swc1	$f0,-8($a3)
.L0da01aa0:
    # Line 1482
    beq	$a5,$a7,.L0da01fd4
    # Line 1490
    addiu	$a3,$a3,16
    # Line 1486
    lwc1	$f7,12($a2)
.L0da01aac:
    addiu	$a2,$a2,16
    # Line 1505
    lw	$a1,72($a6)
    # Line 1485
    lwc1	$f6,-8($a2)
    # Line 1484
    lwc1	$f4,-12($a2)
    # Line 1482
    addiu	$a5,$a5,1
    # Line 1505
    beq	$t1,$a1,.L0da01c18
    # Line 1483
    lwc1	$f5,-16($a2)
    # Line 1505
    beq	$t2,$a1,.L0da019c0
    # Line 1518
    mtc1	$t3,$f8
    # Line 1505
    beq	$t8,$a1,.L0da01c78
    # Line 1539
    mtc1	$t3,$f27
    # Line 1505
    beq	$t0,$a1,.L0da01db0
    # Line 1564
    mtc1	$t3,$f2
    # Line 1505
    beq	$t9,$a1,.L0da01ed8
    # Line 1589
    mtc1	$t3,$f11
    # Line 1505
    bne	$ra,$a1,.L0da01aa0
    # Line 1610
    mtc1	$t3,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f1,30856($a0)
    mul.s	$f2,$f13,$f5
    lwc1	$f0,3540($a0)
    madd.s	$f0,$f0,$f1,$f2
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    move	$at,$zero
    # Line 1613
    slt	$a1,$t3,$v1
    slti	$v0,$v1,0
    movn	$v1,$t3,$a1
    # Line 1614
    lw	$a4,4($a6)
    movz	$at,$v1,$v0
    sll	$at,$at,0x4
    lwc1	$f31,30808($a0)
    addu	$a4,$a4,$at
    lwc1	$f29,0($a4)
    mul.s	$f29,$f29,$f31
    swc1	$f29,-16($a3)
    # Line 1616
    lwc1	$f25,30860($a0)
    mul.s	$f27,$f13,$f4
    lwc1	$f23,3540($a0)
    madd.s	$f23,$f23,$f25,$f27
    trunc.w.s	$f23,$f23
    mfc1	$a1,$f23
    move	$v0,$zero
    # Line 1619
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    # Line 1620
    lw	$at,4($a6)
    movz	$v0,$a1,$v1
    sll	$v0,$v0,0x4
    lwc1	$f21,30812($a0)
    addu	$at,$at,$v0
    lwc1	$f19,4($at)
    mul.s	$f19,$f19,$f21
    swc1	$f19,-12($a3)
    # Line 1622
    lwc1	$f17,30864($a0)
    mul.s	$f18,$f13,$f6
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f18
    trunc.w.s	$f16,$f16
    mfc1	$a4,$f16
    move	$v1,$zero
    # Line 1625
    slt	$at,$t3,$a4
    slti	$a1,$a4,0
    movn	$a4,$t3,$at
    # Line 1626
    lw	$v0,4($a6)
    movz	$v1,$a4,$a1
    sll	$v1,$v1,0x4
    lwc1	$f15,30816($a0)
    addu	$v0,$v0,$v1
    lwc1	$f14,8($v0)
    mul.s	$f14,$f14,$f15
    swc1	$f14,-8($a3)
    # Line 1628
    lwc1	$f12,30868($a0)
    mul.s	$f13,$f13,$f7
    lwc1	$f11,3540($a0)
    madd.s	$f11,$f11,$f12,$f13
    trunc.w.s	$f11,$f11
    mfc1	$at,$f11
    move	$a1,$zero
    # Line 1631
    slt	$v0,$t3,$at
    slti	$a4,$at,0
    movn	$at,$t3,$v0
    # Line 1632
    lw	$v1,4($a6)
    movz	$a1,$at,$a4
    sll	$a1,$a1,0x4
    lwc1	$f10,30848($a0)
    addu	$v1,$v1,$a1
    lwc1	$f9,12($v1)
    mul.s	$f9,$f9,$f10
    # Line 1633
    b	.L0da01aa0
    # Line 1632
    swc1	$f9,-4($a3)
.L0da01c18:
    # Line 1511
    mtc1	$t3,$f18
    # Line 1509
    swc1	$f6,-8($a3)
    # Line 1511
    cvt.s.w	$f18,$f18
    # Line 1508
    swc1	$f4,-12($a3)
    # Line 1507
    swc1	$f5,-16($a3)
    # Line 1511
    lwc1	$f17,30868($a0)
    mul.s	$f18,$f18,$f7
    lwc1	$f16,3540($a0)
    madd.s	$f16,$f16,$f17,$f18
    trunc.w.s	$f16,$f16
    mfc1	$v0,$f16
    move	$a4,$zero
    # Line 1514
    slt	$v1,$t3,$v0
    slti	$at,$v0,0
    movn	$v0,$t3,$v1
    # Line 1515
    lw	$a1,4($a6)
    movz	$a4,$v0,$at
    sll	$a4,$a4,0x2
    lwc1	$f15,30848($a0)
    addu	$a1,$a1,$a4
    lwc1	$f14,0($a1)
    mul.s	$f14,$f14,$f15
    b	.L0da01aa0
    swc1	$f14,-4($a3)
.L0da01c78:
    # Line 1539
    cvt.s.w	$f27,$f27
    lwc1	$f15,30856($a0)
    mul.s	$f16,$f27,$f5
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f16
    trunc.w.s	$f14,$f14
    mfc1	$v1,$f14
    move	$at,$zero
    # Line 1542
    slt	$a1,$t3,$v1
    slti	$v0,$v1,0
    movn	$v1,$t3,$a1
    movz	$at,$v1,$v0
    # Line 1543
    lw	$a4,4($a6)
    addu	$at,$at,$at
    sll	$at,$at,0x2
    lwc1	$f13,30808($a0)
    addu	$a4,$a4,$at
    lwc1	$f12,0($a4)
    mul.s	$f12,$f12,$f13
    swc1	$f12,-16($a3)
    # Line 1545
    lwc1	$f10,30860($a0)
    mul.s	$f11,$f27,$f4
    lwc1	$f9,3540($a0)
    madd.s	$f9,$f9,$f10,$f11
    trunc.w.s	$f9,$f9
    mfc1	$a1,$f9
    move	$v0,$zero
    # Line 1548
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    movz	$v0,$a1,$v1
    # Line 1549
    lw	$at,4($a6)
    addu	$v0,$v0,$v0
    sll	$v0,$v0,0x2
    lwc1	$f8,30812($a0)
    addu	$at,$at,$v0
    lwc1	$f3,0($at)
    mul.s	$f3,$f3,$f8
    swc1	$f3,-12($a3)
    # Line 1551
    lwc1	$f1,30864($a0)
    mul.s	$f2,$f27,$f6
    lwc1	$f0,3540($a0)
    madd.s	$f0,$f0,$f1,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    move	$v1,$zero
    # Line 1554
    slt	$at,$t3,$a4
    slti	$a1,$a4,0
    movn	$a4,$t3,$at
    movz	$v1,$a4,$a1
    # Line 1555
    lw	$v0,4($a6)
    addu	$v1,$v1,$v1
    sll	$v1,$v1,0x2
    lwc1	$f31,30816($a0)
    addu	$v0,$v0,$v1
    lwc1	$f29,0($v0)
    mul.s	$f29,$f29,$f31
    swc1	$f29,-8($a3)
    # Line 1557
    lwc1	$f25,30868($a0)
    mul.s	$f27,$f27,$f7
    lwc1	$f23,3540($a0)
    madd.s	$f23,$f23,$f25,$f27
    trunc.w.s	$f23,$f23
    mfc1	$at,$f23
    move	$a1,$zero
    # Line 1560
    slt	$v0,$t3,$at
    slti	$a4,$at,0
    movn	$at,$t3,$v0
    movz	$a1,$at,$a4
    # Line 1561
    lw	$v1,4($a6)
    addu	$a1,$a1,$a1
    sll	$a1,$a1,0x2
    lwc1	$f21,30848($a0)
    addu	$v1,$v1,$a1
    lwc1	$f19,4($v1)
    mul.s	$f19,$f19,$f21
    # Line 1562
    b	.L0da01aa0
    # Line 1561
    swc1	$f19,-4($a3)
.L0da01db0:
    # Line 1564
    cvt.s.w	$f2,$f2
    lwc1	$f21,30856($a0)
    mul.s	$f23,$f2,$f5
    lwc1	$f19,3540($a0)
    madd.s	$f19,$f19,$f21,$f23
    trunc.w.s	$f19,$f19
    mfc1	$a1,$f19
    move	$v0,$zero
    # Line 1567
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    # Line 1568
    lw	$at,4($a6)
    movz	$v0,$a1,$v1
    sll	$v0,$v0,0x2
    lwc1	$f18,30808($a0)
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    mul.s	$f17,$f17,$f18
    swc1	$f17,-16($a3)
    # Line 1570
    lwc1	$f15,30860($a0)
    mul.s	$f16,$f2,$f4
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f16
    trunc.w.s	$f14,$f14
    mfc1	$a4,$f14
    move	$v1,$zero
    # Line 1573
    slt	$at,$t3,$a4
    slti	$a1,$a4,0
    movn	$a4,$t3,$at
    # Line 1574
    lw	$v0,4($a6)
    movz	$v1,$a4,$a1
    sll	$v1,$v1,0x2
    lwc1	$f13,30812($a0)
    addu	$v0,$v0,$v1
    lwc1	$f12,0($v0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,-12($a3)
    # Line 1576
    lwc1	$f10,30864($a0)
    mul.s	$f11,$f2,$f6
    lwc1	$f9,3540($a0)
    madd.s	$f9,$f9,$f10,$f11
    trunc.w.s	$f9,$f9
    mfc1	$at,$f9
    move	$a1,$zero
    # Line 1579
    slt	$v0,$t3,$at
    slti	$a4,$at,0
    movn	$at,$t3,$v0
    # Line 1580
    lw	$v1,4($a6)
    movz	$a1,$at,$a4
    sll	$a1,$a1,0x2
    lwc1	$f8,30816($a0)
    addu	$v1,$v1,$a1
    lwc1	$f3,0($v1)
    mul.s	$f3,$f3,$f8
    swc1	$f3,-8($a3)
    # Line 1582
    lwc1	$f1,30868($a0)
    mul.s	$f2,$f2,$f7
    lwc1	$f0,3540($a0)
    madd.s	$f0,$f0,$f1,$f2
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    move	$a4,$zero
    # Line 1585
    slt	$v1,$t3,$v0
    slti	$at,$v0,0
    movn	$v0,$t3,$v1
    # Line 1586
    lw	$a1,4($a6)
    movz	$a4,$v0,$at
    sll	$a4,$a4,0x2
    lwc1	$f31,30848($a0)
    addu	$a1,$a1,$a4
    lwc1	$f29,0($a1)
    mul.s	$f29,$f29,$f31
    # Line 1587
    b	.L0da01aa0
    # Line 1586
    swc1	$f29,-4($a3)
.L0da01ed8:
    # Line 1589
    cvt.s.w	$f11,$f11
    lwc1	$f21,30856($a0)
    mul.s	$f23,$f11,$f5
    lwc1	$f19,3540($a0)
    madd.s	$f19,$f19,$f21,$f23
    trunc.w.s	$f19,$f19
    mfc1	$a1,$f19
    move	$v0,$zero
    # Line 1592
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    movz	$v0,$a1,$v1
    # Line 1593
    sll	$at,$v0,0x2
    lw	$a4,4($a6)
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    lwc1	$f18,30808($a0)
    addu	$a4,$a4,$at
    lwc1	$f17,0($a4)
    mul.s	$f17,$f17,$f18
    swc1	$f17,-16($a3)
    # Line 1595
    lwc1	$f15,30860($a0)
    mul.s	$f16,$f11,$f4
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f16
    trunc.w.s	$f14,$f14
    mfc1	$a1,$f14
    move	$v0,$zero
    # Line 1598
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    movz	$v0,$a1,$v1
    # Line 1599
    sll	$at,$v0,0x2
    lw	$a4,4($a6)
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    lwc1	$f13,30812($a0)
    addu	$a4,$a4,$at
    lwc1	$f12,4($a4)
    mul.s	$f12,$f12,$f13
    swc1	$f12,-12($a3)
    # Line 1601
    lwc1	$f10,30864($a0)
    mul.s	$f11,$f11,$f6
    lwc1	$f9,3540($a0)
    madd.s	$f9,$f9,$f10,$f11
    trunc.w.s	$f9,$f9
    mfc1	$a1,$f9
    move	$v0,$zero
    # Line 1604
    slt	$a4,$t3,$a1
    slti	$v1,$a1,0
    movn	$a1,$t3,$a4
    movz	$v0,$a1,$v1
    # Line 1605
    sll	$at,$v0,0x2
    lw	$a4,4($a6)
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    lwc1	$f8,30816($a0)
    addu	$a4,$a4,$at
    lwc1	$f3,8($a4)
    # Line 1607
    swc1	$f7,-4($a3)
    # Line 1605
    mul.s	$f3,$f3,$f8
    # Line 1608
    b	.L0da01aa0
    # Line 1605
    swc1	$f3,-8($a3)
.L0da01fd4:
    ld	$ra,0($sp)
    # Line 1639
    jr	$ra
    addiu	$sp,$sp,16
.L0da01fe0:
    # Line 1448
    andi	$a4,$a5,0x2
    # Line 1453
    li	$a6,-3
    # Line 1448
    beqz	$a4,.L0da02000
    # Line 1453
    and	$a6,$a5,$a6
    sw	$a6,30704($a0)
    # Line 1469
    addiu	$a6,$a0,5592
    # Line 1471
    b	.L0da01988
    # Line 1470
    lw	$a7,184($a1)
.L0da02000:
    # Line 1459
    li	$a7,-5
    and	$a7,$a5,$a7
    sw	$a7,30704($a0)
    # Line 1473
    addiu	$a6,$a0,5752
    b	.L0da01988
    # Line 1474
    lw	$a7,184($a1)
.L0da02018:
    # Line 1490
    addiu	$a3,$a3,16
    b	.L0da01aac
    # Line 1486
    lwc1	$f7,12($a2)
.end __glSpanApplyRGBAColorTable

.rdata
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000

