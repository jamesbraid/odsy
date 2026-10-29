# Source: ../soft/so_context.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_context.c
# Total Functions: 18

.text

# Function: __glDispatchExec
# Declared: Line 39 (Source lines: 40-40)
# Address: 0x0da337e0 - 0x0da337e8 (Size: 8 bytes, Frame: 0)
.ent __glDispatchExec
__glDispatchExec:
    # Line 40
    jr	$ra
    addiu	$v0,$a0,8032
.end __glDispatchExec

# Function: __glBeginDispatchOverride
# Declared: Line 43 (Source lines: 43-48)
# Address: 0x0da337f0 - 0x0da33964 (Size: 372 bytes, Frame: 192)
.ent __glBeginDispatchOverride
__glBeginDispatchOverride:
    # Line 43
    addiu	$sp,$sp,-64
    sd	$s2,16($sp)
    sd	$s4,24($sp)
    sd	$s1,48($sp)
    sd	$s5,40($sp)
    li	$a6,4
    sd	$s3,0($sp)
    # Line 44
    li	$a3,236
    move	$a2,$zero
    sd	$ra,8($sp)
    li	$a4,4176
    addiu	$a5,$a0,8032
    sd	$s0,32($sp)
.L0da33824:
    addiu	$a6,$a6,-1
    addu	$at,$a2,$a4
    addiu	$a3,$a3,-1
    addu	$v0,$a2,$a5
    ld	$at,0($at)
    addiu	$a2,$a2,8
    bnez	$a6,.L0da33824
    sd	$at,0($v0)
    addiu	$s0,$a4,32
    addiu	$ra,$a5,32
    addiu	$t9,$a4,48
    addiu	$t8,$a5,48
    addiu	$t0,$a5,40
    addiu	$a7,$a4,40
    addiu	$t1,$a5,24
    addiu	$s3,$a4,24
    addiu	$s5,$a4,16
    addiu	$s1,$a5,16
    addiu	$t2,$a4,8
    li	$t3,0x40
    addiu	$s4,$a5,56
    addiu	$s2,$a4,56
    addiu	$a6,$a5,8
.L0da33880:
    addu	$at,$a2,$a4
    addu	$v0,$a2,$a5
    ld	$at,0($at)
    addu	$a1,$a2,$t2
    sd	$at,0($v0)
    addu	$at,$a2,$a6
    ld	$a1,0($a1)
    addu	$v1,$a2,$s5
    sd	$a1,0($at)
    addu	$a1,$a2,$s1
    ld	$v1,0($v1)
    addu	$v0,$a2,$s3
    sd	$v1,0($a1)
    addu	$v1,$a2,$t1
    ld	$v0,0($v0)
    addu	$at,$a2,$s0
    sd	$v0,0($v1)
    addu	$v0,$a2,$ra
    ld	$at,0($at)
    addu	$a1,$a2,$a7
    sd	$at,0($v0)
    addu	$at,$a2,$t0
    ld	$a1,0($a1)
    addu	$v1,$a2,$t9
    sd	$a1,0($at)
    addu	$a1,$a2,$t8
    ld	$v1,0($v1)
    addiu	$a3,$a3,-8
    addu	$v0,$a2,$s2
    sd	$v1,0($a1)
    addu	$v1,$a2,$s4
    ld	$v0,0($v0)
    addu	$a2,$a2,$t3
    bgtz	$a3,.L0da33880
    sd	$v0,0($v1)
    lw	$v0,4988($a0)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    beqz	$v0,.L0da33938
    ld	$s4,24($sp)
    ld	$ra,8($sp)
    ld	$s5,40($sp)
    ld	$s1,48($sp)
    ld	$s0,32($sp)
    # Line 48
    jr	$ra
    addiu	$sp,$sp,64
.L0da33938:
    # Line 46
    addiu	$v1,$a0,8032
    sw	$v1,6132($a0)
    ld	$s1,48($sp)
    ld	$s5,40($sp)
    ld	$s0,32($sp)
    ld	$ra,8($sp)
    ld	$s4,24($sp)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    # Line 48
    jr	$ra
    addiu	$sp,$sp,64
.end __glBeginDispatchOverride

# Function: __glEndDispatchOverride
# Declared: Line 50 (Source lines: 50-54)
# Address: 0x0da33970 - 0x0da3398c (Size: 28 bytes, Frame: 0)
.ent __glEndDispatchOverride
__glEndDispatchOverride:
    # Line 50
    lw	$at,4988($a0)
    beqz	$at,.L0da33984
    # Line 52
    li	$v0,4176
    # Line 54
    jr	$ra
    nop
.L0da33984:
    jr	$ra
    # Line 52
    sw	$v0,6132($a0)
.end __glEndDispatchOverride

# Function: __glEarlyInitContext
# Declared: Line 62 (Source lines: 63-126)
# Address: 0x0da33990 - 0x0da33b14 (Size: 388 bytes, Frame: 32)
.globl __glEarlyInitContext
.ent __glEarlyInitContext
__glEarlyInitContext:
    # Line 63
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    sd	$s8,16($sp)
    lui	$a4,0xc
    # Line 88
    lw	$s8,3588($a0)
    # Line 63
    addiu	$a4,$a4,19456
    sd	$gp,24($sp)
    addu	$gp,$t9,$a4
    # Line 79
    la	$a2,__glDestroyContext
    # Line 63
    la	$at,__glNop
    # Line 78
    la	$a3,__glCopyContext
    sw	$a3,120($a0)
    # Line 83
    sw	$at,11848($a0)
    # Line 84
    sw	$at,12056($a0)
    # Line 85
    sw	$at,11916($a0)
    # Line 79
    sw	$a2,88($a0)
    # Line 89
    lw	$t9,4($a0)
    # Line 80
    la	$a1,sub_0da30000
    # Line 82
    la	$v0,sub_0da30000
    # Line 81
    la	$v1,sub_0da30000
    # Line 68
    lwc1	$f0,_lit_3f800000
    # Line 69
    lwc1	$f1,_lit_3f000000
    # Line 68
    swc1	$f0,3544($a0)
    # Line 69
    swc1	$f1,3540($a0)
    # Line 73
    swc1	$f0,3684($a0)
    # Line 66
    lw	$a6,3660($a0)
    # Line 67
    lw	$a5,3664($a0)
    # Line 74
    swc1	$f0,3692($a0)
    # Line 66
    mtc1	$a6,$f3
    # Line 75
    swc1	$f0,3688($a0)
    # Line 67
    mtc1	$a5,$f2
    # Line 76
    swc1	$f0,3696($a0)
    # Line 81
    addiu	$v1,$v1,14320
    sw	$v1,144($a0)
    # Line 66
    cvt.s.w	$f3,$f3
    # Line 82
    addiu	$v0,$v0,14704
    sw	$v0,148($a0)
    # Line 67
    cvt.s.w	$f2,$f2
    # Line 80
    addiu	$a1,$a1,14304
    sw	$a1,140($a0)
    # Line 63
    move	$s0,$a0
    # Line 89
    li	$a2,116
    # Line 66
    swc1	$f3,3668($a0)
    # Line 89
    nop
    move	$a1,$s8
    jalr	$t9
    # Line 67
    swc1	$f2,3672($a0)
    # Line 93
    lw	$t9,4($s0)
    li	$a2,224
    move	$a1,$s8
    # Line 92
    sw	$zero,28248($s0)
    # Line 93
    move	$a0,$s0
    jalr	$t9
    # Line 89
    sw	$v0,1584($s0)
    # Line 97
    lw	$t9,4($s0)
    ld	$s8,16($sp)
    li	$a2,4
    lw	$a1,3776($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 93
    sw	$v0,28152($s0)
    # Line 100
    lw	$t9,4($s0)
    li	$a2,4
    lw	$a1,3780($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 97
    sw	$v0,12728($s0)
    # Line 102
    lw	$t9,4($s0)
    li	$a2,4
    lw	$a1,3784($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 100
    sw	$v0,12736($s0)
    # Line 106
    # lw $t9, -24784($gp) # &__glEarlyInitTextureState
    move	$a0,$s0
    jal	__glEarlyInitTextureState
    # Line 102
    sw	$v0,4892($s0)
    # Line 107
    # lw $t9, -23812($gp) # &__glEarlyInitTransformState
    jal	__glEarlyInitTransformState
    move	$a0,$s0
    # Line 120
    la	$a7,__glNewArena
    # Line 121
    la	$t0,__glDeleteArena
    # Line 122
    la	$t1,__glArenaAlloc
    # Line 123
    la	$t2,__glArenaFreeAll
    sw	$t2,12696($s0)
    # Line 125
    # lw $t9, -29192($gp) # &__glInitDlistState
    # Line 122
    sw	$t1,12692($s0)
    # Line 121
    sw	$t0,12688($s0)
    # Line 125
    move	$a0,$s0
    jal	__glInitDlistState
    # Line 120
    sw	$a7,12684($s0)
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 126
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glEarlyInitContext

# Function: __glContextSetColorScales
# Declared: Line 128 (Source lines: 129-276)
# Address: 0x0da33b20 - 0x0da33eac (Size: 908 bytes, Frame: 224)
.globl __glContextSetColorScales
.ent __glContextSetColorScales
__glContextSetColorScales:
    # Line 138
    lwc1	$f4,3692($a0)
    # Line 130
    lwc1	$f7,3544($a0)
    # Line 138
    lwc1	$f8,3684($a0)
    # Line 129
    addiu	$sp,$sp,-96
    sdc1	$f26,8($sp)
    # Line 138
    lwc1	$f26,30808($a0)
    # Line 129
    sdc1	$f20,0($sp)
    # Line 138
    lwc1	$f20,30812($a0)
    sdc1	$f22,32($sp)
    c.eq.s	$f8,$f26
    sdc1	$f24,40($sp)
    # Line 129
    lui	$at,0xc
    sd	$s0,16($sp)
    addiu	$at,$at,19056
    move	$s0,$a0
    sd	$gp,24($sp)
    # Line 138
    bc1f	.L0da33bb0
    # Line 129
    addu	$gp,$t9,$at
    # Line 138
    lwc1	$f5,3688($a0)
    lwc1	$f22,30816($a0)
    sd	$s2,48($sp)
    c.eq.s $f4,$f20
    sd	$s3,56($sp)
    sd	$ra,64($sp)
    bc1f .L0da33e9c
    sd	$s1,80($sp)
    c.eq.s $f5,$f22
    lwc1	$f6,3696($a0)
    lwc1	$f24,30848($a0)
    bc1f .L0da33bd4
    sd	$s4,72($sp)
    c.eq.s $f6,$f24
    bc1f .L0da33bd4
    nop
    b	.L0da33e6c
    ld	$s2,48($sp)
.L0da33bb0:
    # Line 142
    lwc1	$f6,3696($a0)
    lwc1	$f5,3688($a0)
    lwc1	$f24,30848($a0)
    lwc1	$f22,30816($a0)
    sd	$s2,48($sp)
    sd	$s3,56($sp)
    sd	$ra,64($sp)
    sd	$s4,72($sp)
    sd	$s1,80($sp)
.L0da33bd4:
    # Line 177
    div.s	$f12,$f24,$f6
    # Line 176
    div.s	$f11,$f22,$f5
    # Line 175
    div.s	$f10,$f20,$f4
    # Line 174
    div.s	$f9,$f26,$f8
    # Line 169
    div.s	$f3,$f7,$f24
    # Line 168
    div.s	$f2,$f7,$f22
    # Line 167
    div.s	$f1,$f7,$f20
    # Line 166
    div.s	$f0,$f7,$f26
    # Line 184
    lw	$s4,12728($s0)
    lw	$v0,12732($s0)
    # Line 177
    swc1	$f12,30848($s0)
    # Line 176
    swc1	$f11,30816($s0)
    # Line 175
    swc1	$f10,30812($s0)
    # Line 174
    swc1	$f9,30808($s0)
    # Line 169
    swc1	$f3,30868($s0)
    # Line 184
    sltu	$v0,$s4,$v0
    # Line 168
    swc1	$f2,30864($s0)
    # Line 167
    swc1	$f1,30860($s0)
    # Line 184
    beqz	$v0,.L0da33d48
    # Line 166
    swc1	$f0,30856($s0)
    b	.L0da33cd4
    # Line 186
    lw	$s2,0($s4)
    nop
.L0da33c30:
    # Line 204
    # lw $t9, -26176($gp) # &__glScaleColorf
    lw	$a1,1408($s2)
    move	$a0,$s0
    addu	$a1,$s1,$a1
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 207
    lw	$a1,1408($s2)
    # lw $t9, -26176($gp) # &__glScaleColorf
    addu	$a1,$s1,$a1
    move	$a0,$s0
    addiu	$a1,$a1,16
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 210
    lw	$a1,1408($s2)
    # lw $t9, -26176($gp) # &__glScaleColorf
    addu	$a1,$s1,$a1
    move	$a0,$s0
    addiu	$a1,$a1,32
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 203
    lw	$a2,3588($s0)
    addiu	$s3,$s3,1
    slt	$a2,$s3,$a2
    bnez	$a2,.L0da33c30
    addiu	$s1,$s1,116
.L0da33c94:
    # Line 214
    # lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,1296
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 217
    # lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,1376
    jal	__glScaleColorf
    move	$a2,$a1
.L0da33cbc:
    # Line 185
    lw	$a3,12732($s0)
    addiu	$s4,$s4,4
    sltu	$a3,$s4,$a3
    beqz	$a3,.L0da33d48
    nop
    # Line 186
    lw	$s2,0($s4)
.L0da33cd4:
    # Line 187
    lw	$s1,0($s2)
    andi	$a4,$s1,0x1
    beqz	$a4,.L0da33d18
    # Line 194
    andi	$a6,$s1,0x40
    # Line 187
    lbu	$a5,3220($s0)
    beqz	$a5,.L0da33d14
    # Line 191
    nop	# was lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,208
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 194
    # lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,16
    jal	__glScaleColorf
    move	$a2,$a1
.L0da33d14:
    andi	$a6,$s1,0x40
.L0da33d18:
    beqz	$a6,.L0da33cbc
    # Line 200
    nop	# was lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,1220
    jal	__glScaleColorf
    move	$a2,$a1
    lw	$a7,3588($s0)
    move	$s3,$zero
    bgtz	$a7,.L0da33c30
    move	$s1,$zero
    b	.L0da33c94
    nop
.L0da33d48:
    # Line 185
    lbu	$t0,3220($s0)
    beqz	$t0,.L0da33d80
    # Line 232
    nop	# was lw $t9, -26176($gp) # &__glScaleColorf
    # Line 224
    # lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,384
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 227
    # lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,192
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 232
    # lw $t9, -26176($gp) # &__glScaleColorf
.L0da33d80:
    move	$a0,$s0
    addiu	$a1,$s0,1396
    jal	__glScaleColorf
    move	$a2,$a1
    lw	$t1,3588($s0)
    blez	$t1,.L0da33e18
    # Line 246
    nop	# was lw $t9, -26176($gp) # &__glScaleColorf
    # Line 232
    move	$s1,$zero
    move	$s3,$zero
    nop
    nop
    nop
.L0da33db0:
    # Line 236
    # lw $t9, -26176($gp) # &__glScaleColorf
    lw	$a1,1584($s0)
    move	$a0,$s0
    addu	$a1,$a1,$s1
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 239
    lw	$a1,1584($s0)
    # lw $t9, -26176($gp) # &__glScaleColorf
    addu	$a1,$a1,$s1
    move	$a0,$s0
    addiu	$a1,$a1,16
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 242
    lw	$a1,1584($s0)
    # lw $t9, -26176($gp) # &__glScaleColorf
    addu	$a1,$a1,$s1
    move	$a0,$s0
    addiu	$a1,$a1,32
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 235
    lw	$a2,3588($s0)
    addiu	$s3,$s3,1
    slt	$a2,$s3,$a2
    bnez	$a2,.L0da33db0
    addiu	$s1,$s1,116
    # Line 246
    # lw $t9, -26176($gp) # &__glScaleColorf
.L0da33e18:
    move	$a0,$s0
    addiu	$a1,$s0,1472
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 249
    # lw $t9, -26176($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,1552
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 267
    swc1	$f24,3696($s0)
    # Line 266
    swc1	$f22,3688($s0)
    # Line 265
    swc1	$f20,3692($s0)
    # Line 264
    swc1	$f26,3684($s0)
    # Line 259
    swc1	$f24,30848($s0)
    # Line 274
    # lw $t9, -28832($gp) # &__glPixelSetColorScales
    # Line 258
    swc1	$f22,30816($s0)
    # Line 257
    swc1	$f20,30812($s0)
    # Line 274
    move	$a0,$s0
    jal	__glPixelSetColorScales
    # Line 256
    swc1	$f26,30808($s0)
    ld	$s2,48($sp)
.L0da33e6c:
    ld	$s3,56($sp)
    ld	$s4,72($sp)
    ld	$s0,16($sp)
    ld	$s1,80($sp)
    ldc1	$f20,0($sp)
    ldc1	$f26,8($sp)
    ld	$ra,64($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    # Line 276
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da33e9c:
    # Line 142
    lwc1	$f6,3696($a0)
    lwc1	$f24,30848($a0)
    b	.L0da33bd4
    sd	$s4,72($sp)
.end __glContextSetColorScales

# Function: __glSoftResetContext
# Declared: Line 286 (Source lines: 287-749)
# Address: 0x0da33eb0 - 0x0da34a54 (Size: 2980 bytes, Frame: 192)
.globl __glSoftResetContext
.ent __glSoftResetContext
__glSoftResetContext:
    # Line 287
    addiu	$sp,$sp,-64
    sdc1	$f20,0($sp)
    lui	$a7,0xc
    # Line 292
    lwc1	$f20,3544($a0)
    # Line 287
    addiu	$a7,$a7,18144
    sd	$gp,16($sp)
    addu	$gp,$t9,$a7
    # Line 314
    la	$a6,__rld_obj_head
    sd	$s1,48($sp)
    lw	$a6,0($a6)
    sd	$ra,40($sp)
    lw	$at,0($a6)
    # Line 287
    sd	$s2,24($sp)
    # Line 314
    li	$s2,-1
    # Line 287
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 314
    beq	$s2,$at,.L0da34840
    sd	$a6,8($sp)
    # Line 388
    move	$a3,$zero
    li	$a5,47
.L0da33f00:
    # Line 390
    lw	$a7,0($a6)
    # Line 391
    lw	$a0,260($a7)
    addiu	$a4,$a0,1
    beqz	$a0,.L0da33f88
    move	$v0,$a0
    lbu	$a3,0($a0)
    beqz	$a3,.L0da33f4c
    nop
.L0da33f20:
    xor	$t0,$a5,$a3
    # Line 396
    lbu	$a3,1($a0)
    movz	$v0,$a4,$t0
    addiu	$a4,$a4,1
    beqz	$a3,.L0da33f4c
    xor	$t1,$a5,$a3
    lbu	$a3,2($a0)
    addiu	$a0,$a0,2
    movz	$v0,$a4,$t1
    bnez	$a3,.L0da33f20
    addiu	$a4,$a4,1
.L0da33f4c:
    # Line 401
    la	$a4,__glim_Color3f
    lbu	$t2,20136($a4)
    li	$a3,1
    beqz	$t2,.L0da33fa4
    addiu	$a0,$a4,20136
.L0da33f60:
    # Line 402
    lbu	$t8,1($a0)
    lbu	$t9,0($a0)
    lbu	$t3,0($v0)
    addiu	$v0,$v0,1
    addiu	$a0,$a0,1
    xor	$t3,$t3,$t9
    beqz	$t8,.L0da33f88
    movn	$a3,$zero,$t3
    bnez	$a3,.L0da33f60
    nop
.L0da33f88:
    # Line 405
    lw	$v0,4($a6)
    # Line 389
    bnez	$a3,.L0da33fa4
    # Line 405
    move	$a6,$v0
    # Line 389
    bnez	$v0,.L0da33f00
    nop
    beqz	$a3,.L0da33fc0
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0da33fa4:
    # Line 412
    lw	$a1,272($a7)
    # lw $t9, -16908($gp) # &syssgi
    lw	$a2,276($a7)
    li	$a0,140
    jal	syssgi
    addu	$a2,$a2,$a1
.L0da33fbc:
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0da33fc0:
    # Line 469
    div.s	$f2,$f20,$f5
    # Line 465
    lwc1	$f4,_lit_477fff00
    # Line 468
    div.s	$f1,$f20,$f4
    # Line 464
    lwc1	$f3,_lit_437f0000
    # Line 429
    addiu	$a6,$gp,-13624
    sw	$a6,3576($s0)
    # Line 428
    addiu	$a5,$gp,-13632
    sw	$a5,3572($s0)
    # Line 467
    div.s	$f0,$f20,$f3
    # Line 466
    swc1	$f5,3564($s0)
    # Line 465
    swc1	$f4,3556($s0)
    # Line 464
    swc1	$f3,3548($s0)
    # Line 435
    la	$a4,__glim_Color3f
    # Line 430
    la	$a3,__glim_Color3f
    # Line 435
    addiu	$a4,$a4,20168
    sw	$a4,3584($s0)
    # Line 430
    addiu	$a3,$a3,20152
    sw	$a3,3580($s0)
    # Line 469
    lw	$a4,3716($s0)
    swc1	$f2,3568($s0)
    # Line 468
    swc1	$f1,3560($s0)
    # Line 469
    li	$a3,256
    beqz	$a4,.L0da34834
    # Line 467
    swc1	$f0,3552($s0)
.L0da34020:
    # Line 477
    lwc1	$f7,30808($s0)
    div.s	$f7,$f20,$f7
    # Line 478
    lwc1	$f8,30812($s0)
    div.s	$f8,$f20,$f8
    # Line 479
    lwc1	$f9,30816($s0)
    div.s	$f9,$f20,$f9
    # Line 474
    lwc1	$f11,30848($s0)
    # Line 480
    div.s	$f10,$f20,$f11
    # Line 474
    addiu	$a7,$a4,-1
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f11
    # Line 480
    swc1	$f10,30868($s0)
    # Line 479
    swc1	$f9,30864($s0)
    # Line 478
    swc1	$f8,30860($s0)
    # Line 477
    swc1	$f7,30856($s0)
    # Line 480
    move	$a0,$zero
    move	$v0,$s0
    # Line 474
    swc1	$f6,3720($s0)
    nop
.L0da34070:
    # Line 484
    mtc1	$a0,$f16
    cvt.s.w	$f16,$f16
    # Line 483
    addiu	$t2,$a0,1
    # Line 484
    lwc1	$f17,3552($s0)
    mtc1	$t2,$f14
    mul.s	$f16,$f16,$f17
    cvt.s.w	$f14,$f14
    swc1	$f16,3824($v0)
    # Line 483
    addiu	$t1,$a0,2
    # Line 484
    lwc1	$f15,3552($s0)
    mtc1	$t1,$f12
    mul.s	$f14,$f14,$f15
    cvt.s.w	$f12,$f12
    swc1	$f14,3828($v0)
    # Line 483
    addiu	$t0,$a0,3
    # Line 484
    lwc1	$f13,3552($s0)
    mtc1	$t0,$f10
    mul.s	$f12,$f12,$f13
    cvt.s.w	$f10,$f10
    swc1	$f12,3832($v0)
    lwc1	$f11,3552($s0)
    # Line 483
    addiu	$a0,$a0,4
    addiu	$v0,$v0,16
    # Line 484
    mul.s	$f10,$f10,$f11
    # Line 483
    bne	$a0,$a3,.L0da34070
    # Line 484
    swc1	$f10,3820($v0)
    # Line 495
    lwc1	$f7,_lit_3f000000
    mov.s	$f5,$f20
    # Line 494
    mov.s	$f4,$f20
    b	.L0da340f4
    # Line 493
    lwc1	$f6,3668($s0)
.L0da340ec:
    # Line 499
    mov.s	$f5,$f4
    # Line 502
    mul.s	$f4,$f4,$f7
.L0da340f4:
    # Line 495
    add.s	$f17,$f6,$f4
    c.eq.s	$f6,$f17
    bc1t	.L0da3411c
    nop
    # Line 499
    mov.s	$f5,$f4
    # Line 502
    mul.s	$f4,$f4,$f7
    # Line 495
    add.s	$f18,$f6,$f4
    c.eq.s $f6,$f18
    bc1f .L0da340ec
    nop
.L0da3411c:
    # Line 506
    lwc1	$f19,3540($s0)
    # Line 510
    lw	$a4,3588($s0)
    # Line 505
    swc1	$f5,3676($s0)
    # Line 506
    sub.s	$f19,$f19,$f5
    swc1	$f19,3680($s0)
    # Line 513
    li	$t9,2
    sw	$t9,4120($zero)
    # Line 518
    addiu	$a0,$s0,12768
    sw	$a0,12744($s0)
    # Line 515
    sw	$s2,11808($s0)
    # Line 514
    li	$s1,255
    sw	$s1,11812($s0)
    # Line 516
    lw	$t3,12728($s0)
    # Line 517
    lw	$t8,12736($s0)
    # Line 520
    li	$a5,80
    # Line 517
    sw	$t8,12740($s0)
    # Line 520
    move	$v0,$zero
    addiu	$a3,$s0,12912
    # Line 516
    sw	$t3,12732($s0)
    nop
    nop
.L0da34170:
    # Line 522
    sw	$a3,8($a0)
    # Line 521
    addiu	$a0,$a0,1536
    addiu	$a7,$a3,1344
    # Line 522
    sw	$a7,-184($a0)
    # Line 521
    addiu	$a6,$a3,1152
    # Line 522
    sw	$a6,-376($a0)
    # Line 521
    addiu	$a2,$a3,960
    # Line 522
    sw	$a2,-568($a0)
    # Line 521
    addiu	$a1,$a3,768
    # Line 522
    sw	$a1,-760($a0)
    # Line 521
    addiu	$v1,$a3,576
    # Line 522
    sw	$v1,-952($a0)
    # Line 521
    addiu	$v0,$v0,8
    addiu	$at,$a3,384
    # Line 522
    sw	$at,-1144($a0)
    # Line 521
    addiu	$ra,$a3,192
    addiu	$a3,$a3,1536
    bne	$v0,$a5,.L0da34170
    # Line 522
    sw	$ra,-1336($a0)
    # Line 547
    lwc1	$f20,_lit_3f800000
    # Line 548
    swc1	$f20,1500($s0)
    # Line 526
    la	$a5,sub_0daf0000
    # Line 547
    swc1	$f20,1496($s0)
    # Line 546
    mtc1	$zero,$f14
    # Line 526
    lwc1	$f1,-12240($a5)
    # Line 546
    swc1	$f14,1492($s0)
    # Line 530
    swc1	$f1,1424($s0)
    # Line 526
    swc1	$f1,1396($s0)
    addiu	$a5,$a5,-12240
    # Line 541
    lwc1	$f11,44($a5)
    # Line 540
    lwc1	$f9,40($a5)
    # Line 545
    swc1	$f11,1484($s0)
    # Line 544
    swc1	$f9,1480($s0)
    # Line 539
    lwc1	$f8,36($a5)
    # Line 538
    lwc1	$f10,32($a5)
    # Line 543
    swc1	$f8,1476($s0)
    # Line 542
    swc1	$f10,1472($s0)
    # Line 541
    swc1	$f11,1468($s0)
    # Line 540
    swc1	$f9,1464($s0)
    # Line 539
    swc1	$f8,1460($s0)
    # Line 537
    lwc1	$f0,28($a5)
    # Line 538
    swc1	$f10,1456($s0)
    # Line 537
    swc1	$f0,1452($s0)
    # Line 536
    lwc1	$f31,24($a5)
    # Line 535
    lwc1	$f29,20($a5)
    # Line 536
    swc1	$f31,1448($s0)
    # Line 535
    swc1	$f29,1444($s0)
    # Line 534
    lwc1	$f27,16($a5)
    # Line 529
    lwc1	$f25,12($a5)
    # Line 534
    swc1	$f27,1440($s0)
    # Line 533
    swc1	$f25,1436($s0)
    # Line 528
    lwc1	$f23,8($a5)
    # Line 527
    lwc1	$f21,4($a5)
    # Line 532
    swc1	$f23,1432($s0)
    # Line 531
    swc1	$f21,1428($s0)
    # Line 529
    swc1	$f25,1408($s0)
    # Line 528
    swc1	$f23,1404($s0)
    # Line 549
    addiu	$v0,$s0,1504
    addiu	$a0,$s0,1424
    # Line 527
    swc1	$f21,1400($s0)
    # Line 549
    ld	$v1,1424($s0)
    sd	$v1,1504($s0)
    ld	$at,1432($s0)
    sd	$at,1512($s0)
    ld	$ra,1440($s0)
    sd	$ra,1520($s0)
    ld	$t9,1448($s0)
    sd	$t9,1528($s0)
    ld	$t8,1456($s0)
    sd	$t8,1536($s0)
    ld	$t3,1464($s0)
    sd	$t3,1544($s0)
    ld	$t2,1472($s0)
    sd	$t2,1552($s0)
    ld	$t1,1480($s0)
    sd	$t1,1560($s0)
    ld	$t0,1488($s0)
    sd	$t0,1568($s0)
    ld	$a7,1496($s0)
    sd	$a7,1576($s0)
    # Line 560
    lw	$a0,28152($s0)
    # Line 559
    lw	$v0,1584($s0)
    # Line 556
    sw	$zero,28228($s0)
    # Line 555
    sw	$zero,28216($s0)
    # Line 553
    sw	$zero,28188($s0)
    # Line 551
    lwc1	$f13,_lit_bf800000
    # Line 552
    sw	$zero,28176($s0)
    # Line 554
    swc1	$f13,28212($s0)
    # Line 560
    blez	$a4,.L0da34378
    # Line 551
    swc1	$f13,28172($s0)
    andi	$a1,$a4,0x1
    # Line 560
    move	$a3,$zero
    beqz	$a1,.L0da3436c
    lwc1	$f12,_lit_43340000
    # Line 562
    swc1	$f10,0($v0)
    # Line 563
    swc1	$f8,4($v0)
    # Line 564
    swc1	$f9,8($v0)
    # Line 565
    swc1	$f11,12($v0)
    # Line 567
    lwc1	$f16,48($a5)
    # Line 568
    lwc1	$f15,52($a5)
    # Line 567
    swc1	$f16,16($v0)
    # Line 568
    swc1	$f15,20($v0)
    # Line 569
    lwc1	$f7,56($a5)
    # Line 570
    lwc1	$f6,60($a5)
    # Line 569
    swc1	$f7,24($v0)
    # Line 570
    swc1	$f6,28($v0)
    # Line 577
    swc1	$f16,32($v0)
    swc1	$f15,36($v0)
    swc1	$f7,40($v0)
    swc1	$f6,44($v0)
    # Line 578
    lwc1	$f5,3544($s0)
    swc1	$f5,56($v0)
    # Line 579
    lwc1	$f4,3544($s0)
    swc1	$f4,72($v0)
    # Line 580
    lwc1	$f3,3544($s0)
    swc1	$f3,124($a0)
    # Line 581
    swc1	$f13,88($v0)
    # Line 582
    swc1	$f13,140($a0)
    # Line 583
    swc1	$f12,100($v0)
    # Line 584
    lwc1	$f2,3544($s0)
    # Line 561
    addiu	$a0,$a0,224
    # Line 584
    swc1	$f2,104($v0)
    # Line 587
    sw	$zero,-8($a0)
    # Line 586
    swc1	$f13,-112($a0)
    # Line 561
    addiu	$v0,$v0,116
    li	$a3,1
    # Line 585
    sw	$zero,-20($a0)
.L0da3436c:
    sra	$a2,$a4,0x1
    bnez	$a2,.L0da34a40
    # Line 572
    mov.s	$f6,$f10
.L0da34378:
    # Line 612
    addiu	$t2,$s0,384
    sw	$t2,248($s0)
    # Line 595
    li	$t1,4352
    # Line 601
    sw	$t1,1928($s0)
    # Line 600
    sw	$t1,1924($s0)
    # Line 599
    sw	$t1,1912($s0)
    # Line 598
    sw	$t1,1908($s0)
    # Line 597
    sw	$t1,1904($s0)
    # Line 596
    sw	$t1,1900($s0)
    # Line 595
    sw	$t1,1896($s0)
    # Line 592
    li	$t0,0x81f9
    sw	$t0,1416($s0)
    # Line 591
    li	$a7,7425
    sw	$a7,1392($s0)
    # Line 590
    li	$a6,5634
    sw	$a6,1388($s0)
    # Line 610
    lwc1	$f4,3544($s0)
    # Line 589
    li	$a4,1032
    sw	$a4,1384($s0)
    # Line 611
    swc1	$f4,300($s0)
    # Line 610
    swc1	$f4,364($s0)
    # Line 609
    lwc1	$f18,3672($s0)
    # Line 612
    lbu	$a3,3220($s0)
    # Line 604
    lwc1	$f17,3668($s0)
    # Line 609
    swc1	$f18,372($s0)
    # Line 612
    beqz	$a3,.L0da347e4
    # Line 604
    swc1	$f17,368($s0)
    # Line 615
    lwc1	$f19,48($a5)
    # Line 616
    lwc1	$f21,52($a5)
    # Line 618
    lwc1	$f25,60($a5)
    # Line 617
    lwc1	$f23,56($a5)
    # Line 618
    swc1	$f25,396($s0)
    # Line 617
    swc1	$f23,392($s0)
    # Line 616
    swc1	$f21,388($s0)
    # Line 615
    swc1	$f19,384($s0)
.L0da34404:
    # Line 653
    ldc1	$f12,_lit8_4000000000000000
    # Line 646
    li	$a0,2305
    sw	$a0,496($s0)
    # Line 645
    li	$v1,1029
    sw	$v1,492($s0)
    # Line 643
    li	$v0,6914
    # Line 644
    sw	$v0,488($s0)
    # Line 643
    sw	$v0,484($s0)
    # Line 640
    li	$t3,1
    sh	$t3,482($s0)
    # Line 639
    li	$at,0xffff
    sh	$at,480($s0)
    # Line 638
    sw	$t3,476($s0)
    # Line 637
    swc1	$f20,472($s0)
    # Line 636
    swc1	$f20,468($s0)
    # Line 633
    sw	$t3,464($s0)
    # Line 632
    swc1	$f20,460($s0)
    # Line 631
    swc1	$f20,456($s0)
    # Line 628
    swc1	$f20,1616($s0)
    # Line 627
    swc1	$f4,1608($s0)
    # Line 626
    li	$t8,2048
    sw	$t8,1588($s0)
    # Line 653
    lw	$ra,3244($s0)
    # Line 623
    sb	$t3,453($s0)
    # Line 648
    mtc1	$zero,$f14
    # Line 653
    # lw $t9, -17024($gp) # &pow
    mtc1	$ra,$f13
    # Line 622
    sb	$t3,452($s0)
    # Line 648
    swc1	$f14,504($s0)
    # Line 647
    swc1	$f14,500($s0)
    # Line 653
    jal	pow
    cvt.d.w	$f13,$f13
    ldc1	$f15,_lit8_3ff0000000000000
    div.d	$f15,$f15,$f0
    ldc1	$f16,_lit8_408f400000000000
    # Line 659
    # lw $t9, -17004($gp) # &getenv
    # Line 653
    mul.d	$f15,$f15,$f16
    # Line 659
    la	$a0,__glim_Color3f
    # Line 653
    cvt.s.d	$f15,$f15
    # Line 659
    addiu	$a0,$a0,20600
    jal	getenv
    # Line 653
    swc1	$f15,508($s0)
    # Line 660
    # lw $t9, -17000($gp) # &atoi
    jal	atoi
    # Line 659
    move	$a0,$v0
    # Line 660
    beqz	$v0,.L0da347ec
    lw	$a0,1792($s0)
    # Line 661
    ori	$a1,$a0,0x800
    # Line 662
    ori	$a1,$a1,0x400
    # Line 663
    ori	$a1,$a1,0x200
    sw	$a1,1792($s0)
.L0da344d0:
    # Line 667
    addiu	$a0,$s0,128
    move	$v0,$s0
    nop
    nop
.L0da344e0:
    # Line 673
    sb	$s1,515($v0)
    sb	$s1,514($v0)
    # Line 672
    addiu	$v0,$v0,4
    # Line 673
    sb	$s1,509($v0)
    # Line 672
    bne	$v0,$a0,.L0da344e0
    # Line 673
    sb	$s1,508($v0)
    li	$a3,1
    mtc1	$zero,$f4
    move	$v0,$s0
    nop
    nop
    nop
.L0da34510:
    # Line 676
    sw	$s2,30076($v0)
    sw	$s2,30072($v0)
    # Line 675
    addiu	$v0,$v0,16
    # Line 676
    sw	$s2,30052($v0)
    # Line 675
    bne	$v0,$a0,.L0da34510
    # Line 676
    sw	$s2,30048($v0)
    # Line 708
    sb	$a3,1887($s0)
    # Line 707
    sb	$a3,1886($s0)
    # Line 706
    sb	$a3,1885($s0)
    # Line 705
    sb	$a3,1884($s0)
    # Line 704
    li	$t2,5379
    sw	$t2,1856($s0)
    # Line 703
    swc1	$f4,1852($s0)
    # Line 702
    swc1	$f4,1848($s0)
    # Line 701
    swc1	$f4,1844($s0)
    # Line 700
    swc1	$f4,1840($s0)
    # Line 699
    li	$t1,0x8006
    sw	$t1,1836($s0)
    # Line 698
    sw	$zero,1832($s0)
    # Line 697
    sw	$a3,1828($s0)
    # Line 682
    li	$a5,519
    # Line 696
    sw	$a5,1820($s0)
    # Line 695
    li	$t0,7168
    sw	$t0,3204($s0)
    # Line 691
    li	$a7,513
    sw	$a7,1632($s0)
    # Line 690
    sb	$a3,1636($s0)
    # Line 684
    li	$a6,7680
    # Line 686
    sw	$a6,1684($s0)
    # Line 685
    sw	$a6,1680($s0)
    # Line 684
    sw	$a6,1676($s0)
    # Line 682
    sw	$a5,1664($s0)
    # Line 683
    lw	$a4,3248($s0)
    # Line 692
    lwc1	$f16,3544($s0)
    # Line 708
    lbu	$a2,3222($s0)
    # Line 683
    sllv	$a4,$a3,$a4
    addiu	$a4,$a4,-1
    # Line 687
    sh	$a4,1674($s0)
    # Line 683
    sh	$a4,1672($s0)
    # Line 692
    cvt.d.s	$f16,$f16
    # Line 708
    beqz	$a2,.L0da3480c
    # Line 692
    sdc1	$f16,1640($s0)
    # Line 710
    li	$t3,1029
    sw	$t3,1888($s0)
    move	$a0,$t3
.L0da345c4:
    # Line 719
    lw	$v0,30792($s0)
    swc1	$f20,448($s0)
    # Line 718
    swc1	$f20,444($s0)
    # Line 717
    swc1	$f20,440($s0)
    # Line 719
    lbu	$t8,3221($s0)
    # Line 716
    swc1	$f20,436($s0)
    # Line 715
    swc1	$f20,432($s0)
    # Line 719
    beqz	$t8,.L0da3481c
    # Line 714
    sw	$a0,1892($s0)
    # Line 722
    swc1	$f20,192($s0)
    # Line 721
    sw	$v0,1880($s0)
.L0da345f0:
    ld	$s1,48($sp)
    # Line 735
    sb	$zero,4888($s0)
    # Line 734
    li	$v1,1536
    sw	$v1,4884($s0)
    # Line 736
    lw	$v0,4892($s0)
    # Line 741
    # lw $t9, -26828($gp) # &__glInitColorTables
    # Line 732
    lw	$at,1792($s0)
    # Line 741
    move	$a0,$s0
    # Line 736
    sw	$v0,4896($s0)
    # Line 732
    ori	$at,$at,0x8
    # Line 741
    bal __glInitColorTables
    # Line 732
    sw	$at,1792($s0)
    # Line 742
    # lw $t9, -26624($gp) # &__glInitEvaluatorState
    bal __glInitEvaluatorState
    move	$a0,$s0
    # Line 743
    # lw $t9, -24780($gp) # &__glInitTextureState
    jal	__glInitTextureState
    move	$a0,$s0
    # Line 744
    # lw $t9, -23808($gp) # &__glInitTransformState
    jal	__glInitTransformState
    move	$a0,$s0
    # Line 745
    # lw $t9, -28824($gp) # &__glInitPixelState
    jal	__glInitPixelState
    move	$a0,$s0
    # Line 746
    # lw $t9, -25004($gp) # &__glInitLUTCache
    jal	__glInitLUTCache
    move	$a0,$s0
    # Line 747
    # lw $t9, -23912($gp) # &__glInitVertexArrayState
    jal	__glInitVertexArrayState
    move	$a0,$s0
    # Line 748
    # lw $t9, -27548($gp) # &__glInitAsyncState
    jal	__glInitAsyncState
    move	$a0,$s0
    # Line 749
    ld	$gp,16($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s2,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da34690:
    # Line 575
    swc1	$f11,28($v0)
    # Line 574
    swc1	$f9,24($v0)
    # Line 573
    swc1	$f8,20($v0)
    # Line 572
    swc1	$f10,16($v0)
.L0da346a0:
    # Line 577
    swc1	$f6,32($v0)
    swc1	$f4,36($v0)
    swc1	$f7,40($v0)
    swc1	$f5,44($v0)
    # Line 578
    lwc1	$f21,3544($s0)
    swc1	$f21,56($v0)
    # Line 579
    lwc1	$f19,3544($s0)
    swc1	$f19,72($v0)
    # Line 580
    lwc1	$f18,3544($s0)
    swc1	$f18,124($a0)
    # Line 581
    swc1	$f13,88($v0)
    # Line 582
    swc1	$f13,140($a0)
    # Line 583
    swc1	$f12,100($v0)
    # Line 584
    lwc1	$f17,3544($s0)
    swc1	$f17,104($v0)
    # Line 585
    sw	$zero,204($a0)
    # Line 586
    swc1	$f13,112($a0)
    # Line 587
    sw	$zero,216($a0)
    # Line 572
    mov.s	$f6,$f10
    # Line 565
    swc1	$f11,128($v0)
    # Line 575
    mov.s	$f5,$f11
    # Line 561
    addiu	$a3,$a3,1
    # Line 564
    swc1	$f9,124($v0)
    # Line 574
    mov.s	$f7,$f9
    # Line 563
    swc1	$f8,120($v0)
    # Line 573
    mov.s	$f4,$f8
    # Line 565
    beqz	$a3,.L0da347c0
    # Line 562
    swc1	$f10,116($v0)
    # Line 575
    swc1	$f11,144($v0)
    # Line 574
    swc1	$f9,140($v0)
    # Line 573
    swc1	$f8,136($v0)
    # Line 572
    swc1	$f10,132($v0)
.L0da34720:
    # Line 577
    swc1	$f6,148($v0)
    swc1	$f4,152($v0)
    swc1	$f7,156($v0)
    swc1	$f5,160($v0)
    # Line 578
    lwc1	$f29,3544($s0)
    swc1	$f29,172($v0)
    # Line 579
    lwc1	$f27,3544($s0)
    swc1	$f27,188($v0)
    # Line 580
    lwc1	$f25,3544($s0)
    swc1	$f25,348($a0)
    # Line 581
    swc1	$f13,204($v0)
    # Line 582
    swc1	$f13,364($a0)
    # Line 583
    swc1	$f12,216($v0)
    # Line 584
    lwc1	$f23,3544($s0)
    # Line 561
    addiu	$a0,$a0,448
    # Line 572
    mov.s	$f6,$f10
    # Line 584
    swc1	$f23,220($v0)
    # Line 575
    mov.s	$f5,$f11
    # Line 561
    addiu	$a3,$a3,1
    # Line 587
    sw	$zero,-8($a0)
    # Line 574
    mov.s	$f7,$f9
    # Line 586
    swc1	$f13,-112($a0)
    # Line 561
    addiu	$v0,$v0,232
    # Line 573
    mov.s	$f4,$f8
    # Line 561
    beq	$a4,$a3,.L0da34378
    # Line 585
    sw	$zero,-20($a0)
    # Line 565
    swc1	$f11,12($v0)
.L0da3478c:
    # Line 564
    swc1	$f9,8($v0)
    # Line 563
    swc1	$f8,4($v0)
    # Line 565
    bnez	$a3,.L0da34690
    # Line 562
    swc1	$f10,0($v0)
    # Line 567
    lwc1	$f6,48($a5)
    # Line 568
    lwc1	$f4,52($a5)
    # Line 570
    lwc1	$f5,60($a5)
    # Line 569
    lwc1	$f7,56($a5)
    # Line 570
    swc1	$f5,28($v0)
    # Line 569
    swc1	$f7,24($v0)
    # Line 568
    swc1	$f4,20($v0)
    # Line 570
    b	.L0da346a0
    # Line 567
    swc1	$f6,16($v0)
.L0da347c0:
    lwc1	$f6,48($a5)
    # Line 568
    lwc1	$f4,52($a5)
    # Line 570
    lwc1	$f5,60($a5)
    # Line 569
    lwc1	$f7,56($a5)
    # Line 570
    swc1	$f5,144($v0)
    # Line 569
    swc1	$f7,140($v0)
    # Line 568
    swc1	$f4,136($v0)
    # Line 570
    b	.L0da34720
    # Line 567
    swc1	$f6,132($v0)
.L0da347e4:
    b	.L0da34404
    # Line 620
    swc1	$f4,384($s0)
.L0da347ec:
    # Line 665
    li	$a1,-2049
    and	$a1,$a0,$a1
    # Line 666
    li	$a2,-1025
    and	$a1,$a1,$a2
    # Line 667
    li	$a2,-513
    and	$a1,$a1,$a2
    b	.L0da344d0
    sw	$a1,1792($s0)
.L0da3480c:
    # Line 712
    li	$a2,1028
    sw	$a2,1888($s0)
    b	.L0da345c4
    li	$a0,1028
.L0da3481c:
    # Line 730
    swc1	$f20,204($s0)
    swc1	$f20,200($s0)
    swc1	$f20,196($s0)
    swc1	$f20,192($s0)
    b	.L0da345f0
    # Line 729
    sw	$v0,1880($s0)
.L0da34834:
    move	$a4,$a3
    # Line 472
    b	.L0da34020
    sw	$a3,3716($s0)
.L0da34840:
    # Line 318
    # lw $t9, -16904($gp) # &_rld_new_interface
    la	$a1,__glim_Color3f
    li	$a0,5
    # Line 316
    lui	$s1,0x20
    lw	$s1,3728($s1)
    # Line 318
    jal	_rld_new_interface
    addiu	$a1,$a1,20120
    # Line 323
    bnez	$s1,.L0da348ac
    nop
    bnez	$v0,.L0da34a08
    move	$a3,$zero
    li	$a5,47
    li	$s1,1
    # Line 326
    ld	$a0,8($sp)
.L0da34878:
    lw	$a4,28($a0)
    # Line 325
    lw	$a0,24($a0)
    # Line 326
    addu	$a4,$a4,$a0
    beqz	$a0,.L0da3492c
    addiu	$v0,$a4,-1
    # Line 329
    sltu	$a1,$v0,$a0
    bnez	$a1,.L0da348ec
    nop
    lbu	$a2,-1($a4)
    beq	$a5,$a2,.L0da348f0
    # Line 335
    la	$a4,__glim_Color3f
    b	.L0da348c4
    # Line 330
    addiu	$v0,$v0,-1
.L0da348ac:
    b	.L0da33fc0
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0da348b4:
    # Line 330
    lbu	$a3,0($v0)
    beq	$a5,$a3,.L0da348ec
    nop
    addiu	$v0,$v0,-1
.L0da348c4:
    sltu	$a4,$v0,$a0
    bnez	$a4,.L0da348ec
    nop
    lbu	$a6,0($v0)
    beq	$a5,$a6,.L0da348ec
    nop
    addiu	$v0,$v0,-1
    sltu	$a7,$v0,$a0
    beqz	$a7,.L0da348b4
    nop
.L0da348ec:
    # Line 335
    la	$a4,__glim_Color3f
.L0da348f0:
    lbu	$t0,20136($a4)
    beqz	$t0,.L0da34a24
    # Line 331
    addiu	$v0,$v0,1
    # Line 335
    li	$a3,1
    addiu	$a0,$a4,20136
.L0da34904:
    # Line 336
    lbu	$t2,1($a0)
    lbu	$t3,0($a0)
    lbu	$t1,0($v0)
    addiu	$v0,$v0,1
    addiu	$a0,$a0,1
    xor	$t1,$t1,$t3
    beqz	$t2,.L0da3492c
    movn	$a3,$zero,$t1
    bnez	$a3,.L0da34904
    nop
.L0da3492c:
    beqz	$a3,.L0da349e0
    # Line 324
    ld	$a4,8($sp)
.L0da34934:
    # Line 357
    ld	$t0,8($sp)
.L0da34938:
    lw	$t0,16($t0)
    # Line 358
    lhu	$a0,44($t0)
    lw	$a7,28($t0)
    blez	$a0,.L0da33fbc
    addu	$a7,$a7,$t0
    li	$t1,5
    move	$a5,$zero
    sll	$a4,$a0,0x5
    move	$v0,$a7
    addu	$a4,$a4,$a7
.L0da34960:
    # Line 360
    lw	$a6,0($v0)
    beq	$s1,$a6,.L0da34a10
    move	$a3,$zero
.L0da3496c:
    bnez	$a3,.L0da349a0
    # Line 359
    addiu	$v0,$v0,32
    sltu	$t2,$v0,$a4
    beqz	$t2,.L0da349a0
    addiu	$a5,$a5,1
    # Line 360
    lw	$t3,0($v0)
    beq	$s1,$t3,.L0da34a2c
    move	$a3,$zero
.L0da3498c:
    bnez	$a3,.L0da349a0
    # Line 359
    addiu	$v0,$v0,32
    sltu	$t8,$v0,$a4
    bnez	$t8,.L0da34960
    addiu	$a5,$a5,1
.L0da349a0:
    # Line 365
    slt	$t9,$a5,$a0
    beqz	$t9,.L0da33fbc
    # Line 366
    ld	$a3,8($sp)
    # Line 371
    # lw $t9, -16908($gp) # &syssgi
    # Line 366
    sll	$a2,$a5,0x5
    addu	$a2,$a7,$a2
    lw	$a3,20($a3)
    lw	$a1,8($a2)
    # Line 371
    lw	$a2,20($a2)
    # Line 366
    subu	$a3,$t0,$a3
    # Line 371
    li	$a0,140
    # Line 366
    addu	$a1,$a1,$a3
    # Line 371
    jal	syssgi
    addu	$a2,$a2,$a1
    b	.L0da33fc0
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0da349e0:
    # Line 340
    lw	$a4,8($a4)
    # Line 324
    bnez	$a3,.L0da349f8
    sd	$a4,8($sp)
    ld	$a6,8($sp)
    bnez	$a6,.L0da34878
    # Line 326
    ld	$a0,8($sp)
.L0da349f8:
    # Line 324
    bnez	$a3,.L0da34938
    # Line 357
    ld	$t0,8($sp)
    b	.L0da33fc0
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0da34a08:
    # Line 324
    b	.L0da33fc0
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0da34a10:
    # Line 360
    lw	$t2,24($v0)
    bne	$t1,$t2,.L0da3496c
    move	$a3,$zero
    b	.L0da3496c
    li	$a3,1
.L0da34a24:
    # Line 336
    b	.L0da34934
    li	$a3,1
.L0da34a2c:
    # Line 360
    lw	$t3,24($v0)
    bne	$t1,$t3,.L0da3498c
    move	$a3,$zero
    b	.L0da3498c
    li	$a3,1
.L0da34a40:
    # Line 575
    mov.s	$f5,$f11
    # Line 574
    mov.s	$f7,$f9
    # Line 573
    mov.s	$f4,$f8
    b	.L0da3478c
    # Line 565
    swc1	$f11,12($v0)
.end __glSoftResetContext

# Function: __glDestroyContext
# Declared: Line 757 (Source lines: 758-772)
# Address: 0x0da34a60 - 0x0da34ad0 (Size: 112 bytes, Frame: 32)
.globl __glDestroyContext
.ent __glDestroyContext
__glDestroyContext:
    # Line 758
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$s8,8($sp)
    addiu	$at,$at,15152
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 763
    # lw $t9, -26800($gp) # &__glDestroySoftContext
    # Line 758
    sd	$ra,0($sp)
    sd	$s0,24($sp)
    # Line 763
    nop
    # Line 758
    move	$s0,$a0
    # Line 763
    bal __glDestroySoftContext
    # Line 761
    lw	$s8,4112($zero)
    # Line 766
    sw	$s0,4112($zero)
    # Line 768
    lw	$t9,12($s0)
    move	$a1,$s0
    jal	__glDestroySoftContext
    move	$a0,$s0
    # Line 772
    ld	$gp,16($sp)
    # Line 771
    xor	$v0,$s0,$s8
    ld	$ra,0($sp)
    # Line 772
    ld	$s0,24($sp)
    # Line 771
    sltiu	$v0,$v0,1
    movn	$s8,$zero,$v0
    sw	$s8,4112($zero)
    # Line 772
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDestroyContext

# Function: __glDestroySoftContext
# Declared: Line 790 (Source lines: 791-862)
# Address: 0x0da34ad0 - 0x0da34ce8 (Size: 536 bytes, Frame: 32)
.globl __glDestroySoftContext
.ent __glDestroySoftContext
__glDestroySoftContext:
    # Line 791
    addiu	$sp,$sp,-32
    # Line 794
    lw	$v0,4112($zero)
    sd	$v0,0($sp)
    # Line 797
    sw	$a0,4112($zero)
    lw	$a1,30804($a0)
    # Line 791
    sd	$s0,16($sp)
    lui	$at,0xc
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,15040
    sd	$gp,8($sp)
    # Line 797
    beqz	$a1,.L0da34b10
    # Line 791
    addu	$gp,$t9,$at
    # Line 802
    lw	$t9,12($s0)
    jalr	$t9
    nop
.L0da34b10:
    # Line 808
    # lw $t9, -26824($gp) # &__glFreeColorTables
    bal __glFreeColorTables
    move	$a0,$s0
    # Line 809
    # lw $t9, -26620($gp) # &__glFreeEvaluatorState
    bal __glFreeEvaluatorState
    move	$a0,$s0
    # Line 810
    # lw $t9, -28828($gp) # &__glFreePixelState
    jal	__glFreePixelState
    move	$a0,$s0
    lw	$v1,6128($s0)
    bnez	$v1,.L0da34c98
    # Line 811
    nop	# was lw $t9, -27544($gp) # &__glFreeAsyncState
    lw	$a0,4924($s0)
.L0da34b44:
    bnez	$a0,.L0da34ca8
    # Line 812
    nop	# was lw $t9, -29188($gp) # &__glFreeDlistState
    lw	$a1,12728($s0)
.L0da34b50:
    bnez	$a1,.L0da34cb8
    # Line 813
    nop	# was lw $t9, -27296($gp) # &__glFreeAttributeState
    lw	$a2,28252($s0)
.L0da34b5c:
    bnez	$a2,.L0da34cc8
    # Line 814
    nop	# was lw $t9, -24776($gp) # &__glFreeTextureState
    lw	$a1,28188($s0)
.L0da34b68:
    beqz	$a1,.L0da34b78
    # Line 820
    nop	# was lw $t9, -24992($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
.L0da34b78:
    lw	$a1,28228($s0)
    beqz	$a1,.L0da34b8c
    # Line 821
    nop	# was lw $t9, -24992($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
.L0da34b8c:
    lw	$a3,28248($s0)
    bnez	$a3,.L0da34cd8
    # Line 822
    nop	# was lw $t9, -25000($gp) # &__glFreeLUTCache
    lw	$a1,1584($s0)
.L0da34b9c:
    beqz	$a1,.L0da34bb0
    nop
    # Line 838
    lw	$t9,12($s0)
    jal	__glFreeLUTCache
    move	$a0,$s0
.L0da34bb0:
    lw	$a1,28152($s0)
    beqz	$a1,.L0da34bc8
    nop
    # Line 839
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34bc8:
    lw	$a1,4892($s0)
    beqz	$a1,.L0da34be0
    nop
    # Line 840
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34be0:
    lw	$a1,1748($s0)
    beqz	$a1,.L0da34bf8
    nop
    # Line 842
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34bf8:
    lw	$a1,29712($s0)
    beqz	$a1,.L0da34c10
    nop
    # Line 843
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34c10:
    lw	$a1,29720($s0)
    beqz	$a1,.L0da34c28
    nop
    # Line 844
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34c28:
    lw	$a1,29732($s0)
    beqz	$a1,.L0da34c40
    nop
    # Line 845
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34c40:
    lw	$a1,29740($s0)
    beqz	$a1,.L0da34c58
    nop
    # Line 846
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0da34c58:
    lw	$a1,29748($s0)
    beqz	$a1,.L0da34c74
    # Line 861
    ld	$a4,0($sp)
    # Line 847
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 861
    ld	$a4,0($sp)
.L0da34c74:
    ld	$ra,24($sp)
    xor	$a5,$s0,$a4
    # Line 862
    ld	$gp,8($sp)
    # Line 861
    sltiu	$a5,$a5,1
    # Line 862
    ld	$s0,16($sp)
    # Line 861
    movn	$a4,$zero,$a5
    # Line 862
    addiu	$sp,$sp,32
    jr	$ra
    # Line 861
    sw	$a4,4112($zero)
.L0da34c98:
    # Line 811
    jalr	$t9
    move	$a0,$s0
    b	.L0da34b44
    lw	$a0,4924($s0)
.L0da34ca8:
    # Line 812
    jalr	$t9
    move	$a0,$s0
    b	.L0da34b50
    lw	$a1,12728($s0)
.L0da34cb8:
    # Line 813
    jalr	$t9
    move	$a0,$s0
    b	.L0da34b5c
    lw	$a2,28252($s0)
.L0da34cc8:
    # Line 814
    jalr	$t9
    move	$a0,$s0
    b	.L0da34b68
    lw	$a1,28188($s0)
.L0da34cd8:
    # Line 822
    jalr	$t9
    move	$a0,$s0
    b	.L0da34b9c
    lw	$a1,1584($s0)
.end __glDestroySoftContext

# Function: __glFreePrivate
# Declared: Line 868 (Source lines: 869-911)
# Address: 0x0da34cf0 - 0x0da34dc0 (Size: 208 bytes, Frame: 32)
.globl __glFreePrivate
.ent __glFreePrivate
__glFreePrivate:
    # Line 869
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 872
    lw	$s0,28($a0)
    # Line 869
    lui	$at,0xc
    sd	$s1,8($sp)
    move	$s1,$a0
    addiu	$at,$at,14496
    sd	$gp,16($sp)
    # Line 872
    beqz	$s0,.L0da34dac
    # Line 869
    addu	$gp,$t9,$at
    # Line 872
    lw	$t9,24($s0)
    beqz	$t9,.L0da34d30
    sd	$ra,24($sp)
    # Line 876
    addiu	$a0,$s0,8
    jalr	$t9
    move	$a1,$s1
.L0da34d30:
    lw	$t9,44($s0)
    beqz	$t9,.L0da34d44
    # Line 879
    addiu	$a0,$s0,28
    jalr	$t9
    move	$a1,$s1
.L0da34d44:
    lw	$t9,136($s0)
    beqz	$t9,.L0da34d58
    # Line 884
    addiu	$a0,$s0,120
    jalr	$t9
    move	$a1,$s1
.L0da34d58:
    lw	$t9,88($s0)
    beqz	$t9,.L0da34d6c
    # Line 887
    addiu	$a0,$s0,72
    jalr	$t9
    move	$a1,$s1
.L0da34d6c:
    lw	$t9,68($s0)
    beqz	$t9,.L0da34d80
    # Line 890
    addiu	$a0,$s0,52
    jalr	$t9
    move	$a1,$s1
.L0da34d80:
    # Line 907
    lw	$t9,20($s1)
    jalr	$t9
    move	$a0,$s0
    # Line 911
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$ra,24($sp)
    # Line 909
    sw	$zero,24($s1)
    # Line 908
    sw	$zero,28($s1)
    # Line 911
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34dac:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFreePrivate

# Function: __glSetError
# Declared: Line 913 (Source lines: 914-931)
# Address: 0x0da34dc0 - 0x0da34e78 (Size: 184 bytes, Frame: 32)
.globl __glSetError
.ent __glSetError
__glSetError:
    # Line 914
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$v0,0xc
    # Line 915
    lw	$s0,4112($zero)
    # Line 914
    addiu	$v0,$v0,14288
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 920
    # lw $t9, -17004($gp) # &getenv
    la	$at,__glim_Color3f
    # Line 914
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    # Line 920
    jal	getenv
    addiu	$a0,$at,20616
    bnez	$v0,.L0da34e48
    # Line 921
    la	$a1,__glim_Color3f
    # Line 922
    lw	$v1,3208($s0)
.L0da34e04:
    beqz	$v1,.L0da34e70
    nop
.L0da34e0c:
    # Line 927
    lw	$t9,11832($s0)
    beqz	$t9,.L0da34e20
    # Line 929
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
.L0da34e20:
    # Line 930
    lw	$t9,24($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 931
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34e48:
    # Line 921
    # lw $t9, -17012($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,20632
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 922
    # lw $t9, -16900($gp) # &abort
    jal	abort
    nop
    b	.L0da34e04
    lw	$v1,3208($s0)
.L0da34e70:
    # Line 927
    b	.L0da34e0c
    sw	$s1,3208($s0)
.end __glSetError

# Function: __glim_RenderMode
# Declared: Line 933 (Source lines: 934-987)
# Address: 0x0da34e80 - 0x0da35024 (Size: 420 bytes, Frame: 32)
.globl __glim_RenderMode
.ent __glim_RenderMode
__glim_RenderMode:
    # Line 949
    li	$a2,7170
    # Line 934
    addiu	$sp,$sp,-32
    # Line 936
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 934
    lui	$v1,0xc
    # Line 965
    li	$t0,7170
    sd	$ra,24($sp)
    # Line 934
    addiu	$v1,$v1,14096
    sd	$gp,16($sp)
    # Line 936
    beq	$at,$v0,.L0da34fb8
    # Line 934
    addu	$gp,$t9,$v1
    # Line 938
    li	$a5,7168
    beq	$a5,$a0,.L0da34ee8
    li	$a4,7169
    beq	$a4,$a0,.L0da34ee8
    li	$a1,7170
    beq	$a0,$a1,.L0da34ee8
    # Line 944
    nop	# was lw $t9, -26792($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,24($sp)
    # Line 945
    move	$v0,$zero
    # Line 987
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34ee8:
    # Line 949
    lw	$v0,3204($a3)
    beq	$a5,$v0,.L0da34f70
    nop
    beq	$a4,$v0,.L0da34f90
    nop
    beq	$v0,$a2,.L0da34fa4
    lw	$a5,0($sp)
.L0da34f04:
    # Line 963
    sw	$a0,3204($a3)
    # Line 964
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11812($a3)
    ori	$a6,$a6,0x1
    # Line 965
    beq	$a4,$a0,.L0da34f78
    # Line 964
    sw	$a6,11812($a3)
    # Line 965
    bne	$a0,$t0,.L0da34f54
    ld	$ra,24($sp)
    # Line 975
    lw	$v0,4904($a3)
    beqz	$v0,.L0da34ff4
    # Line 976
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 984
    sw	$zero,4920($a3)
    # Line 983
    sw	$zero,4916($a3)
    # Line 982
    sb	$zero,4888($a3)
    # Line 980
    sb	$zero,4900($a3)
    # Line 979
    sw	$v0,4908($a3)
    # Line 981
    lw	$t1,4892($a3)
    sw	$t1,4896($a3)
.L0da34f50:
    ld	$ra,24($sp)
.L0da34f54:
    # Line 987
    move	$v0,$a5
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34f64:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34f70:
    b	.L0da34f04
    # Line 951
    move	$a5,$zero
.L0da34f78:
    # Line 967
    lw	$v0,4872($a3)
    beqz	$v0,.L0da3500c
    # Line 968
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 972
    sb	$zero,4868($a3)
    b	.L0da34f50
    # Line 971
    sw	$v0,4876($a3)
.L0da34f90:
    # Line 954
    lbu	$t2,4868($a3)
    beqz	$t2,.L0da34fd8
    li	$v0,-1
.L0da34f9c:
    # Line 956
    b	.L0da34f04
    # Line 954
    move	$a5,$v0
.L0da34fa4:
    # Line 958
    lbu	$t3,4900($a3)
    beqz	$t3,.L0da34fec
    li	$v0,-1
.L0da34fb0:
    # Line 959
    b	.L0da34f04
    # Line 958
    move	$a5,$v0
.L0da34fb8:
    # Line 936
    # lw $t9, -26792($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    move	$v0,$zero
    # Line 987
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34fd8:
    # Line 954
    lw	$v0,4876($a3)
    lw	$v1,4872($a3)
    subu	$v0,$v0,$v1
    b	.L0da34f9c
    sra	$v0,$v0,0x2
.L0da34fec:
    b	.L0da34fb0
    # Line 958
    lw	$v0,4916($a3)
.L0da34ff4:
    sd	$a5,8($sp)
    # Line 976
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 977
    b	.L0da34f64
    ld	$v0,8($sp)
.L0da3500c:
    sd	$a5,8($sp)
    # Line 968
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 969
    b	.L0da34f64
    ld	$v0,8($sp)
.end __glim_RenderMode

# Function: __glChangeWindowSize
# Declared: Line 994 (Source lines: 995-1040)
# Address: 0x0da35030 - 0x0da35134 (Size: 260 bytes, Frame: 48)
.globl __glChangeWindowSize
.ent __glChangeWindowSize
__glChangeWindowSize:
    # Line 995
    addiu	$sp,$sp,-48
    sd	$s2,0($sp)
    # Line 998
    sw	$a2,3704($a0)
    # Line 997
    sw	$a1,3700($a0)
    # Line 1001
    lw	$at,30712($a0)
    # Line 995
    lui	$v0,0xc
    sd	$gp,32($sp)
    addiu	$v0,$v0,13664
    addu	$gp,$t9,$v0
    # Line 1001
    lw	$t9,56($at)
    # Line 995
    move	$s2,$a2
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$ra,24($sp)
    # Line 1001
    jalr	$t9
    move	$a0,$at
    lbu	$v1,3222($s0)
    beqz	$v1,.L0da35098
    nop
    # Line 1003
    lw	$a0,30716($s0)
    lw	$t9,56($a0)
    move	$a2,$s2
    jalr	$t9
    move	$a1,$s1
.L0da35098:
    # Line 1016
    lbu	$a0,3224($s0)
    beqz	$a0,.L0da350b0
    nop
    lw	$a1,31432($s0)
    bnez	$a1,.L0da35118
    nop
.L0da350b0:
    # Line 1018
    lbu	$a2,3225($s0)
.L0da350b4:
    beqz	$a2,.L0da350d0
    nop
    # Line 1022
    lw	$t9,31340($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31284
.L0da350d0:
    lbu	$a3,3226($s0)
    beqz	$a3,.L0da350f0
    nop
    # Line 1025
    lw	$t9,31220($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31164
.L0da350f0:
    # Line 1039
    lw	$t9,11972($s0)
    ld	$s2,0($sp)
    ld	$s1,8($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    # Line 1040
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da35118:
    # Line 1018
    lw	$t9,31472($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31416
    b	.L0da350b4
    lbu	$a2,3225($s0)
.end __glChangeWindowSize

# Function: __glChangeReadWindowSize
# Declared: Line 1042 (Source lines: 1044-1046)
# Address: 0x0da35140 - 0x0da3514c (Size: 12 bytes, Frame: 0)
.globl __glChangeReadWindowSize
.ent __glChangeReadWindowSize
__glChangeReadWindowSize:
    # Line 1045
    sw	$a2,3712($a0)
    # Line 1046
    jr	$ra
    # Line 1044
    sw	$a1,3708($a0)
.end __glChangeReadWindowSize

# Function: __glFindWindowSize
# Declared: Line 1056 (Source lines: 1057-1079)
# Address: 0x0da35150 - 0x0da35224 (Size: 212 bytes, Frame: 48)
.globl __glFindWindowSize
.ent __glFindWindowSize
__glFindWindowSize:
    # Line 1057
    addiu	$sp,$sp,-48
    lui	$at,0xc
    sd	$gp,40($sp)
    addiu	$at,$at,13376
    addu	$gp,$t9,$at
    # Line 1061
    lw	$t9,28($a0)
    # Line 1057
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 1061
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    nop
    # Line 1057
    sd	$ra,32($sp)
    # Line 1061
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 1063
    lw	$a1,8($sp)
    lw	$v0,3700($s0)
    lw	$v1,3704($s0)
    bne	$v0,$a1,.L0da351a4
    lw	$a2,12($sp)
    beq	$v1,$a2,.L0da351b0
.L0da351a4:
    # Line 1064
    nop	# was lw $t9, -26784($gp) # &__glChangeWindowSize
    bal __glChangeWindowSize
    move	$a0,$s0
.L0da351b0:
    lbu	$a0,3536($s0)
    beqz	$a0,.L0da35204
    # Line 1069
    lw	$a1,8($sp)
    # Line 1070
    lw	$a2,12($sp)
    # Line 1069
    sw	$a1,16($sp)
    # Line 1070
    sw	$a2,20($sp)
.L0da351c8:
    # Line 1075
    lw	$a3,3708($s0)
    bne	$a3,$a1,.L0da351f0
    lw	$a4,3712($s0)
    bne	$a4,$a2,.L0da351f4
    # Line 1077
    nop	# was lw $t9, -26780($gp) # &__glChangeReadWindowSize
    ld	$ra,32($sp)
.L0da351e0:
    ld	$s0,24($sp)
    # Line 1079
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da351f0:
    # Line 1077
    # lw $t9, -26780($gp) # &__glChangeReadWindowSize
.L0da351f4:
    bal __glChangeReadWindowSize
    move	$a0,$s0
    b	.L0da351e0
    ld	$ra,32($sp)
.L0da35204:
    # Line 1072
    lw	$t9,72($s0)
    move	$a0,$s0
    addiu	$a2,$sp,20
    jal	__glChangeReadWindowSize
    addiu	$a1,$sp,16
    lw	$a1,16($sp)
    b	.L0da351c8
    lw	$a2,20($sp)
.end __glFindWindowSize

# Function: FillBufferInfo
# Declared: Line 1085 (Source lines: 1086-1121)
# Address: 0x0da35230 - 0x0da35280 (Size: 80 bytes, Frame: 16)
.ent FillBufferInfo
FillBufferInfo:
    # Line 1091
    lw	$t9,12($a1)
    # Line 1086
    addiu	$sp,$sp,-16
    # Line 1091
    li	$a0,1
    # Line 1086
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 1091
    jalr	$t9
    li	$a1,140
    # Line 1119
    la	$v1,__glFreePrivate
    # Line 1091
    la	$a0,__glFreeBuffer
    # Line 1107
    sw	$a0,68($v0)
    # Line 1106
    sw	$a0,88($v0)
    # Line 1105
    sw	$a0,136($v0)
    # Line 1104
    sw	$a0,44($v0)
    ld	$ra,0($sp)
    # Line 1103
    sw	$a0,24($v0)
    # Line 1119
    sw	$v1,24($s8)
    # Line 1121
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end FillBufferInfo

# Function: __glMakeCurrentBuffers
# Declared: Line 1129 (Source lines: 1130-1191)
# Address: 0x0da35280 - 0x0da353cc (Size: 332 bytes, Frame: 192)
.globl __glMakeCurrentBuffers
.ent __glMakeCurrentBuffers
__glMakeCurrentBuffers:
    # Line 1130
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    lui	$at,0xc
    sd	$gp,32($sp)
    addiu	$at,$at,13072
    addu	$gp,$t9,$at
    # Line 1137
    lw	$t9,60($a0)
    # Line 1130
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s7,0($sp)
    move	$s7,$a1
    # Line 1137
    jalr	$t9
    sd	$s2,40($sp)
    sw	$v0,31556($s0)
    move	$s2,$v0
    lw	$v0,28($v0)
    beqz	$v0,.L0da353a0
    # Line 1141
    nop	# was lw $t9, -32688($gp) # &sub_0da30000
    sd	$zero,24($sp)
    sd	$s1,48($sp)
.L0da352d0:
    # Line 1149
    lw	$s1,28($s2)
    # Line 1154
    lw	$a1,48($s1)
    sw	$a1,0($s7)
    # Line 1156
    lw	$a0,0($s1)
    # Line 1159
    lw	$t9,30764($s0)
    # Line 1156
    sw	$a0,3700($s0)
    # Line 1159
    move	$a2,$s0
    addiu	$a1,$s1,8
    # Line 1157
    lw	$v1,4($s1)
    # Line 1159
    addiu	$a0,$s0,30720
    jal	sub_0da30000
    # Line 1157
    sw	$v1,3704($s0)
    # Line 1159
    lbu	$a2,3222($s0)
    beqz	$a2,.L0da35320
    nop
    # Line 1162
    lw	$t9,30984($s0)
    move	$a2,$s0
    addiu	$a1,$s1,28
    jalr	$t9
    addiu	$a0,$s0,30940
.L0da35320:
    lbu	$a3,3224($s0)
    ld	$s7,0($sp)
    beqz	$a3,.L0da35344
    ld	$s2,40($sp)
    # Line 1168
    lw	$t9,31460($s0)
    move	$a2,$s0
    addiu	$a1,$s1,120
    jalr	$t9
    addiu	$a0,$s0,31416
.L0da35344:
    lbu	$a4,3225($s0)
    beqz	$a4,.L0da35364
    nop
    # Line 1172
    lw	$t9,31328($s0)
    move	$a2,$s0
    addiu	$a1,$s1,72
    jalr	$t9
    addiu	$a0,$s0,31284
.L0da35364:
    lbu	$a5,3226($s0)
    beqz	$a5,.L0da35384
    nop
    # Line 1176
    lw	$t9,31208($s0)
    move	$a2,$s0
    addiu	$a1,$s1,52
    jalr	$t9
    addiu	$a0,$s0,31164
.L0da35384:
    ld	$s0,8($sp)
    ld	$ra,16($sp)
    ld	$s1,48($sp)
    # Line 1191
    ld	$v0,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da353a0:
    # Line 1141
    addiu	$t9,$t9,21040
    move	$a0,$s0
    bal __glFindWindowSize
    move	$a1,$s2
    sw	$v0,28($s2)
    # Line 1145
    sw	$zero,3704($s0)
    li	$ra,1
    sd	$ra,24($sp)
    # Line 1144
    sw	$zero,3700($s0)
    # Line 1145
    b	.L0da352d0
    sd	$s1,48($sp)
.end __glMakeCurrentBuffers

# Function: __glLoseCurrentBuffers
# Declared: Line 1198 (Source lines: 1199-1237)
# Address: 0x0da353d0 - 0x0da354a4 (Size: 212 bytes, Frame: 32)
.globl __glLoseCurrentBuffers
.ent __glLoseCurrentBuffers
__glLoseCurrentBuffers:
    # Line 1203
    lw	$v1,31556($a0)
    # Line 1199
    addiu	$sp,$sp,-32
    # Line 1203
    lw	$v1,28($v1)
    sd	$gp,16($sp)
    # Line 1207
    sw	$a1,48($v1)
    # Line 1209
    lw	$v0,3700($a0)
    sw	$v0,0($v1)
    # Line 1199
    lui	$at,0xc
    # Line 1210
    lw	$v0,3704($a0)
    # Line 1199
    addiu	$at,$at,12736
    # Line 1210
    sw	$v0,4($v1)
    # Line 1199
    addu	$gp,$t9,$at
    # Line 1212
    lw	$t9,30768($a0)
    # Line 1199
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 1212
    addiu	$a0,$a0,30720
    # Line 1199
    sd	$ra,8($sp)
    # Line 1212
    jalr	$t9
    move	$a1,$s0
    lbu	$a0,3222($s0)
    beqz	$a0,.L0da35438
    nop
    # Line 1214
    lw	$t9,30988($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,30940
.L0da35438:
    lbu	$a1,3224($s0)
    beqz	$a1,.L0da35454
    nop
    # Line 1217
    lw	$t9,31464($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31416
.L0da35454:
    lbu	$a2,3225($s0)
    beqz	$a2,.L0da35470
    nop
    # Line 1220
    lw	$t9,31332($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31284
.L0da35470:
    lbu	$a3,3226($s0)
    beqz	$a3,.L0da35490
    ld	$ra,8($sp)
    # Line 1223
    lw	$t9,31212($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31164
    ld	$ra,8($sp)
.L0da35490:
    # Line 1237
    li	$v0,1
    ld	$s0,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLoseCurrentBuffers

# Function: __glFreeBufData
# Declared: Line 1245 (Source lines: 1246-1273)
# Address: 0x0da354b0 - 0x0da3555c (Size: 172 bytes, Frame: 32)
.globl __glFreeBufData
.ent __glFreeBufData
__glFreeBufData:
    # Line 1246
    addiu	$sp,$sp,-32
    lw	$a3,30784($a0)
    sd	$s0,0($sp)
    lui	$at,0xc
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,12512
    sd	$gp,8($sp)
    beqz	$a3,.L0da354e8
    addu	$gp,$t9,$at
    # Line 1252
    move	$t9,$a3
    addiu	$a0,$a0,30720
    jalr	$t9
    move	$a1,$s0
.L0da354e8:
    lw	$v0,31004($s0)
    bnez	$v0,.L0da35544
    nop
    # Line 1255
    lw	$t9,31228($s0)
.L0da354f8:
    beqz	$t9,.L0da35508
    # Line 1258
    addiu	$a0,$s0,31164
    jalr	$t9
    move	$a1,$s0
.L0da35508:
    lw	$t9,31348($s0)
    beqz	$t9,.L0da3551c
    # Line 1261
    addiu	$a0,$s0,31284
    jalr	$t9
    move	$a1,$s0
.L0da3551c:
    lw	$t9,31480($s0)
    beqz	$t9,.L0da35530
    # Line 1264
    addiu	$a0,$s0,31416
    jalr	$t9
    move	$a1,$s0
.L0da35530:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 1273
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da35544:
    # Line 1255
    lw	$t9,30784($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,30940
    b	.L0da354f8
    lw	$t9,31228($s0)
.end __glFreeBufData

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_408f400000000000:
    .word 0x408f4000, 0x00000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_43340000:
    .word 0x43340000
_lit_437f0000:
    .word 0x437f0000
_lit_477fff00:
    .word 0x477fff00
_lit_4f7ffff7:
    .word 0x4f7ffff7
_lit_bf800000:
    .word 0xbf800000

