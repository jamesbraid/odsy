# Source: ../ODYSSEY/ody_eval.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_eval.c
# Total Functions: 31

.text

# Function: __glOdyim_EvalCoord1d
# Declared: Line 69 (Source lines: 69-72)
# Address: 0x0d976520 - 0x0d976558 (Size: 56 bytes, Frame: 16)
.globl __glOdyim_EvalCoord1d
.ent __glOdyim_EvalCoord1d
__glOdyim_EvalCoord1d:
    # Line 69
    lui	$at,0x18
    addiu	$sp,$sp,-16
    addiu	$at,$at,8304
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 71
    # lw $t9, -31800($gp) # &__glOdysseyDoEvalCoord1
    # Line 69
    sd	$ra,0($sp)
    # Line 71
    cvt.s.d	$f13,$f12
    bal __glOdysseyDoEvalCoord1
    lw	$a0,4112($zero)
    ld	$ra,0($sp)
    # Line 72
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord1d

# Function: __glOdyim_EvalCoord1dv
# Declared: Line 75 (Source lines: 75-78)
# Address: 0x0d976560 - 0x0d97659c (Size: 60 bytes, Frame: 16)
.globl __glOdyim_EvalCoord1dv
.ent __glOdyim_EvalCoord1dv
__glOdyim_EvalCoord1dv:
    # Line 75
    lui	$at,0x18
    # Line 77
    ldc1	$f13,0($a0)
    # Line 75
    addiu	$sp,$sp,-16
    addiu	$at,$at,8240
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 77
    # lw $t9, -31800($gp) # &__glOdysseyDoEvalCoord1
    lw	$a0,4112($zero)
    # Line 75
    sd	$ra,0($sp)
    # Line 77
    bal __glOdysseyDoEvalCoord1
    cvt.s.d	$f13,$f13
    ld	$ra,0($sp)
    # Line 78
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord1dv

# Function: __glOdyim_EvalCoord1f
# Declared: Line 81 (Source lines: 81-84)
# Address: 0x0d9765a0 - 0x0d9765d8 (Size: 56 bytes, Frame: 16)
.globl __glOdyim_EvalCoord1f
.ent __glOdyim_EvalCoord1f
__glOdyim_EvalCoord1f:
    # Line 81
    lui	$at,0x18
    addiu	$sp,$sp,-16
    addiu	$at,$at,8176
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 83
    # lw $t9, -31800($gp) # &__glOdysseyDoEvalCoord1
    # Line 81
    sd	$ra,0($sp)
    mov.s	$f13,$f12
    # Line 83
    bal __glOdysseyDoEvalCoord1
    lw	$a0,4112($zero)
    ld	$ra,0($sp)
    # Line 84
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord1f

# Function: __glOdyim_EvalCoord1fv
# Declared: Line 87 (Source lines: 87-90)
# Address: 0x0d9765e0 - 0x0d97661c (Size: 60 bytes, Frame: 16)
.globl __glOdyim_EvalCoord1fv
.ent __glOdyim_EvalCoord1fv
__glOdyim_EvalCoord1fv:
    # Line 87
    lui	$v0,0x18
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,8112
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 89
    # lw $t9, -31800($gp) # &__glOdysseyDoEvalCoord1
    # Line 87
    move	$at,$a0
    # Line 89
    lw	$a0,4112($zero)
    # Line 87
    sd	$ra,0($sp)
    # Line 89
    bal __glOdysseyDoEvalCoord1
    lwc1	$f13,0($at)
    ld	$ra,0($sp)
    # Line 90
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord1fv

# Function: __glOdyim_EvalCoord2d
# Declared: Line 94 (Source lines: 94-97)
# Address: 0x0d976620 - 0x0d976660 (Size: 64 bytes, Frame: 16)
.globl __glOdyim_EvalCoord2d
.ent __glOdyim_EvalCoord2d
__glOdyim_EvalCoord2d:
    # Line 94
    lui	$at,0x18
    addiu	$sp,$sp,-16
    addiu	$at,$at,8048
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 96
    # lw $t9, -31796($gp) # &__glOdysseyDoEvalCoord2
    # Line 94
    mov.d	$f14,$f13
    # Line 96
    cvt.s.d	$f13,$f12
    lw	$a0,4112($zero)
    # Line 94
    sd	$ra,0($sp)
    # Line 96
    bal __glOdysseyDoEvalCoord2
    cvt.s.d	$f14,$f14
    ld	$ra,0($sp)
    # Line 97
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord2d

# Function: __glOdyim_EvalCoord2dv
# Declared: Line 100 (Source lines: 100-103)
# Address: 0x0d976660 - 0x0d9766a4 (Size: 68 bytes, Frame: 16)
.globl __glOdyim_EvalCoord2dv
.ent __glOdyim_EvalCoord2dv
__glOdyim_EvalCoord2dv:
    # Line 102
    ldc1	$f14,8($a0)
    # Line 100
    lui	$at,0x18
    # Line 102
    ldc1	$f13,0($a0)
    # Line 100
    addiu	$sp,$sp,-16
    addiu	$at,$at,7984
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 102
    # lw $t9, -31796($gp) # &__glOdysseyDoEvalCoord2
    lw	$a0,4112($zero)
    cvt.s.d	$f14,$f14
    # Line 100
    sd	$ra,0($sp)
    # Line 102
    bal __glOdysseyDoEvalCoord2
    cvt.s.d	$f13,$f13
    ld	$ra,0($sp)
    # Line 103
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord2dv

# Function: __glOdyim_EvalCoord2f
# Declared: Line 106 (Source lines: 106-109)
# Address: 0x0d9766b0 - 0x0d9766ec (Size: 60 bytes, Frame: 16)
.globl __glOdyim_EvalCoord2f
.ent __glOdyim_EvalCoord2f
__glOdyim_EvalCoord2f:
    # Line 106
    lui	$at,0x18
    addiu	$sp,$sp,-16
    addiu	$at,$at,7904
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 108
    # lw $t9, -31796($gp) # &__glOdysseyDoEvalCoord2
    # Line 106
    mov.s	$f14,$f13
    sd	$ra,0($sp)
    mov.s	$f13,$f12
    # Line 108
    bal __glOdysseyDoEvalCoord2
    lw	$a0,4112($zero)
    ld	$ra,0($sp)
    # Line 109
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord2f

# Function: __glOdyim_EvalCoord2fv
# Declared: Line 112 (Source lines: 112-115)
# Address: 0x0d9766f0 - 0x0d976730 (Size: 64 bytes, Frame: 16)
.globl __glOdyim_EvalCoord2fv
.ent __glOdyim_EvalCoord2fv
__glOdyim_EvalCoord2fv:
    # Line 112
    move	$at,$a0
    lui	$v0,0x18
    # Line 114
    lw	$a0,4112($zero)
    # Line 112
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,7840
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 114
    # lw $t9, -31796($gp) # &__glOdysseyDoEvalCoord2
    lwc1	$f14,4($at)
    # Line 112
    sd	$ra,0($sp)
    # Line 114
    bal __glOdysseyDoEvalCoord2
    lwc1	$f13,0($at)
    ld	$ra,0($sp)
    # Line 115
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalCoord2fv

# Function: __glOdyim_EvalMesh1
# Declared: Line 119 (Source lines: 119-133)
# Address: 0x0d976730 - 0x0d976800 (Size: 208 bytes, Frame: 48)
.globl __glOdyim_EvalMesh1
.ent __glOdyim_EvalMesh1
__glOdyim_EvalMesh1:
    # Line 120
    lw	$v0,4112($zero)
    # Line 119
    addiu	$sp,$sp,-48
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    # Line 120
    lw	$a4,4120($zero)
    sd	$ra,40($sp)
    # Line 119
    lui	$at,0x18
    # Line 120
    sd	$v0,16($sp)
    # Line 119
    addiu	$at,$at,7776
    sd	$gp,24($sp)
    # Line 120
    beqz	$a4,.L0d9767a4
    # Line 119
    addu	$gp,$t9,$at
    # Line 120
    li	$v0,2
    beq	$a4,$v0,.L0d976788
    sd	$a0,32($sp)
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0d97677c:
    # Line 133
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d976788:
    # Line 120
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,32($sp)
    sw	$zero,4120($zero)
.L0d9767a4:
    # Line 122
    li	$ra,6913
    beq	$a0,$ra,.L0d9767e4
    li	$at,6912
    beq	$a0,$at,.L0d9767cc
    # Line 127
    nop	# was lw $t9, -31788($gp) # &__glOdysseyEvalMesh1Point
    # Line 130
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d97677c
    ld	$ra,40($sp)
.L0d9767cc:
    # Line 127
    ld	$a0,16($sp)
    ld	$a1,0($sp)
    bal __glOdysseyEvalMesh1Point
    ld	$a2,8($sp)
    b	.L0d97677c
    ld	$ra,40($sp)
.L0d9767e4:
    # Line 124
    # lw $t9, -31792($gp) # &__glOdysseyEvalMesh1Line
    ld	$a0,16($sp)
    ld	$a1,0($sp)
    bal __glOdysseyEvalMesh1Line
    ld	$a2,8($sp)
    b	.L0d97677c
    ld	$ra,40($sp)
.end __glOdyim_EvalMesh1

# Function: __glOdyim_EvalPoint1
# Declared: Line 136 (Source lines: 136-144)
# Address: 0x0d976800 - 0x0d976870 (Size: 112 bytes, Frame: 16)
.globl __glOdyim_EvalPoint1
.ent __glOdyim_EvalPoint1
__glOdyim_EvalPoint1:
    # Line 139
    lw	$a2,4112($zero)
    # Line 136
    addiu	$sp,$sp,-16
    # Line 139
    lw	$a3,1944($a2)
    sd	$gp,0($sp)
    # Line 136
    lui	$at,0x18
    addiu	$at,$at,7568
    # Line 139
    lwc1	$f4,1936($a2)
    # Line 143
    lwc1	$f13,1932($a2)
    # Line 136
    addu	$gp,$t9,$at
    # Line 139
    bne	$a3,$a0,.L0d976838
    # Line 143
    mtc1	$a3,$f16
    mov.s	$f13,$f4
    b	.L0d976854
    sd	$ra,8($sp)
.L0d976838:
    mtc1	$a0,$f14
    cvt.s.w	$f16,$f16
    sub.s	$f15,$f4,$f13
    div.s	$f15,$f15,$f16
    cvt.s.w	$f14,$f14
    sd	$ra,8($sp)
    madd.s	$f13,$f13,$f14,$f15
.L0d976854:
    # lw $t9, -31800($gp) # &__glOdysseyDoEvalCoord1
    bal __glOdysseyDoEvalCoord1
    move	$a0,$a2
    ld	$ra,8($sp)
    # Line 144
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalPoint1

# Function: __glOdyim_EvalMesh2
# Declared: Line 148 (Source lines: 150-167)
# Address: 0x0d976870 - 0x0d976988 (Size: 280 bytes, Frame: 192)
.globl __glOdyim_EvalMesh2
.ent __glOdyim_EvalMesh2
__glOdyim_EvalMesh2:
    # Line 151
    lw	$v0,4112($zero)
    # Line 150
    addiu	$sp,$sp,-64
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    sd	$a1,0($sp)
    # Line 151
    sd	$v0,32($sp)
    lw	$a6,4120($zero)
    # Line 150
    sd	$s0,48($sp)
    lui	$at,0x18
    move	$s0,$a0
    sd	$ra,56($sp)
    addiu	$at,$at,7456
    sd	$gp,40($sp)
    # Line 151
    beqz	$a6,.L0d9768f0
    # Line 150
    addu	$gp,$t9,$at
    # Line 151
    li	$v0,2
    beq	$a6,$v0,.L0d9768d8
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0d9768c8:
    # Line 167
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9768d8:
    # Line 151
    ld	$t9,32($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d9768f0:
    # Line 153
    li	$ra,6914
    li	$at,6913
    beq	$s0,$ra,.L0d976944
    li	$v0,6912
    beq	$s0,$at,.L0d976968
    # Line 158
    ld	$a0,32($sp)
    # Line 153
    beq	$s0,$v0,.L0d976920
    # Line 164
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9768c8
    ld	$ra,56($sp)
.L0d976920:
    # Line 161
    ld	$a0,32($sp)
    ld	$a1,0($sp)
    # lw $t9, -31780($gp) # &__glOdysseyEvalMesh2Point
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glOdysseyEvalMesh2Point
    ld	$a4,8($sp)
    b	.L0d9768c8
    ld	$ra,56($sp)
.L0d976944:
    # Line 155
    ld	$a0,32($sp)
    ld	$a1,0($sp)
    # lw $t9, -31784($gp) # &__glOdysseyEvalMesh2Fill
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glOdysseyEvalMesh2Fill
    ld	$a4,8($sp)
    b	.L0d9768c8
    ld	$ra,56($sp)
.L0d976968:
    # Line 158
    ld	$a1,0($sp)
    # lw $t9, -31776($gp) # &__glOdysseyEvalMesh2Line
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glOdysseyEvalMesh2Line
    ld	$a4,8($sp)
    b	.L0d9768c8
    ld	$ra,56($sp)
.end __glOdyim_EvalMesh2

# Function: __glOdyim_EvalPoint2
# Declared: Line 171 (Source lines: 171-184)
# Address: 0x0d976990 - 0x0d976a34 (Size: 164 bytes, Frame: 16)
.globl __glOdyim_EvalPoint2
.ent __glOdyim_EvalPoint2
__glOdyim_EvalPoint2:
    # Line 176
    lw	$a3,4112($zero)
    # Line 171
    addiu	$sp,$sp,-16
    # Line 176
    lw	$a4,1960($a3)
    sd	$gp,0($sp)
    # Line 171
    lui	$at,0x18
    addiu	$at,$at,7168
    # Line 176
    lwc1	$f4,1952($a3)
    # Line 182
    lwc1	$f13,1948($a3)
    # Line 171
    addu	$gp,$t9,$at
    # Line 176
    bne	$a4,$a0,.L0d9769c4
    # Line 182
    mtc1	$a4,$f16
    b	.L0d9769dc
    mov.s	$f13,$f4
.L0d9769c4:
    mtc1	$a0,$f14
    cvt.s.w	$f16,$f16
    sub.s	$f15,$f4,$f13
    div.s	$f15,$f15,$f16
    cvt.s.w	$f14,$f14
    madd.s	$f13,$f13,$f14,$f15
.L0d9769dc:
    lw	$a0,1976($a3)
    lwc1	$f14,1964($a3)
    lwc1	$f4,1968($a3)
    bne	$a0,$a1,.L0d9769fc
    mtc1	$a0,$f17
    mov.s	$f14,$f4
    b	.L0d976a18
    sd	$ra,8($sp)
.L0d9769fc:
    mtc1	$a1,$f15
    cvt.s.w	$f17,$f17
    sub.s	$f16,$f4,$f14
    div.s	$f16,$f16,$f17
    cvt.s.w	$f15,$f15
    sd	$ra,8($sp)
    madd.s	$f14,$f14,$f15,$f16
.L0d976a18:
    # lw $t9, -31796($gp) # &__glOdysseyDoEvalCoord2
    bal __glOdysseyDoEvalCoord2
    move	$a0,$a3
    ld	$ra,8($sp)
    # Line 184
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EvalPoint2

# Function: PreEvaluate
# Declared: Line 202 (Source lines: 211-265)
# Address: 0x0d976a40 - 0x0d976bd4 (Size: 404 bytes, Frame: 0)
.ent PreEvaluate
PreEvaluate:
    # Line 211
    li	$at,4
    beq	$a0,$at,.L0d976b60
    lwc1	$f4,_lit_3f800000
    li	$v0,3
    beq	$a0,$v0,.L0d976b9c
    li	$v1,2
    beq	$a0,$v1,.L0d976bc4
    li	$a1,1
    beq	$a0,$a1,.L0d976b50
    # Line 250
    slti	$a3,$a0,3
    swc1	$f13,4($a2)
    # Line 249
    sub.s	$f7,$f4,$f13
    # Line 250
    bnez	$a3,.L0d976b58
    # Line 249
    swc1	$f7,0($a2)
    # Line 250
    li	$a5,2
    addiu	$a4,$a2,8
    addiu	$t0,$a2,4
    b	.L0d976b28
    li	$a7,1
    nop
.L0d976a90:
    beqz	$a6,.L0d976ab4
    # Line 254
    move	$a3,$t0
.L0d976a98:
    # Line 257
    lwc1	$f1,0($a3)
    # Line 258
    madd.s	$f0,$f4,$f1,$f7
    addiu	$a6,$a6,-1
    # Line 255
    addiu	$a3,$a3,4
    # Line 257
    mul.s	$f4,$f1,$f13
    bnez	$a6,.L0d976a98
    # Line 258
    swc1	$f0,-4($a3)
.L0d976ab4:
    sra	$a6,$a7,0x2
    beqz	$a6,.L0d976b08
    nop
.L0d976ac0:
    # Line 257
    lwc1	$f10,8($a3)
    lwc1	$f3,12($a3)
    lwc1	$f9,4($a3)
    mul.s	$f8,$f10,$f13
    # Line 258
    madd.s	$f8,$f8,$f3,$f7
    # Line 257
    lwc1	$f2,0($a3)
    mul.s	$f6,$f9,$f13
    # Line 258
    madd.s	$f6,$f6,$f10,$f7
    # Line 257
    mul.s	$f5,$f2,$f13
    # Line 258
    madd.s	$f5,$f5,$f9,$f7
    madd.s	$f2,$f4,$f2,$f7
    # Line 255
    addiu	$a3,$a3,16
    # Line 258
    swc1	$f8,-4($a3)
    swc1	$f6,-8($a3)
    swc1	$f5,-12($a3)
    # Line 257
    mul.s	$f4,$f3,$f13
    # Line 255
    bne	$a3,$a4,.L0d976ac0
    # Line 258
    swc1	$f2,-16($a3)
.L0d976b08:
    # Line 255
    move	$a3,$a5
.L0d976b0c:
    # Line 252
    addiu	$a5,$a5,1
    # Line 260
    sll	$t1,$a3,0x2
    # Line 252
    addiu	$a4,$a4,4
    # Line 260
    addu	$t1,$a2,$t1
    # Line 252
    addiu	$a7,$a7,1
    beq	$a0,$a5,.L0d976b58
    # Line 260
    swc1	$f4,0($t1)
.L0d976b28:
    andi	$a6,$a7,0x3
    # Line 253
    lwc1	$f4,0($a2)
    # Line 254
    slti	$t2,$a5,2
    mul.s	$f9,$f4,$f7
    # Line 255
    li	$a3,1
    # Line 253
    mul.s	$f4,$f4,$f13
    # Line 254
    beqz	$t2,.L0d976a90
    swc1	$f9,0($a2)
    b	.L0d976b0c
    nop
.L0d976b50:
    # Line 265
    jr	$ra
    # Line 244
    swc1	$f4,0($a2)
.L0d976b58:
    # Line 265
    jr	$ra
    nop
.L0d976b60:
    # Line 223
    sub.s	$f6,$f4,$f13
    # Line 224
    mul.s	$f5,$f6,$f13
    madd.s	$f5,$f5,$f6,$f13
    madd.s	$f5,$f5,$f6,$f13
    # Line 226
    mul.s	$f9,$f13,$f13
    # Line 223
    mul.s	$f8,$f6,$f6
    # Line 226
    mul.s	$f9,$f13,$f9
    swc1	$f9,12($a2)
    # Line 223
    mul.s	$f8,$f6,$f8
    swc1	$f8,0($a2)
    # Line 225
    mul.s	$f7,$f5,$f13
    # Line 224
    mul.s	$f5,$f5,$f6
    # Line 225
    swc1	$f7,8($a2)
    # Line 265
    jr	$ra
    # Line 224
    swc1	$f5,4($a2)
.L0d976b9c:
    # Line 232
    lwc1	$f7,_lit_40000000
    # Line 233
    mul.s	$f9,$f13,$f13
    # Line 231
    sub.s	$f6,$f4,$f13
    # Line 232
    mul.s	$f7,$f13,$f7
    # Line 233
    swc1	$f9,8($a2)
    # Line 231
    mul.s	$f8,$f6,$f6
    swc1	$f8,0($a2)
    # Line 232
    mul.s	$f6,$f6,$f7
    # Line 265
    jr	$ra
    # Line 232
    swc1	$f6,4($a2)
.L0d976bc4:
    # Line 239
    swc1	$f13,4($a2)
    # Line 238
    sub.s	$f8,$f4,$f13
    # Line 265
    jr	$ra
    # Line 238
    swc1	$f8,0($a2)
.end PreEvaluate

# Function: PreEvaluateWithDeriv
# Declared: Line 270 (Source lines: 280-372)
# Address: 0x0d976be0 - 0x0d976f40 (Size: 864 bytes, Frame: 0)
.ent PreEvaluateWithDeriv
PreEvaluateWithDeriv:
    # Line 280
    li	$at,4
    beq	$a0,$at,.L0d976e8c
    lwc1	$f5,_lit_3f800000
    li	$v0,3
    beq	$a0,$v0,.L0d976ee4
    li	$v1,2
    beq	$a0,$v1,.L0d976f24
    li	$a1,1
    beq	$a0,$a1,.L0d976e7c
    # Line 340
    slti	$a4,$a0,4
    # Line 339
    sub.s	$f7,$f5,$f13
    # Line 340
    swc1	$f13,4($a2)
    addiu	$t1,$a0,-1
    # Line 339
    swc1	$f7,0($a2)
    # Line 340
    bnez	$a4,.L0d976e74
    # Line 339
    mov.s	$f4,$f7
    # Line 340
    li	$a6,2
    addiu	$a5,$a2,8
    addiu	$t2,$a2,4
    b	.L0d976cd8
    li	$t0,1
    nop
    nop
    nop
.L0d976c40:
    beqz	$a7,.L0d976c64
    # Line 343
    move	$a4,$t2
.L0d976c48:
    # Line 346
    lwc1	$f1,0($a4)
    # Line 347
    madd.s	$f0,$f4,$f1,$f7
    addiu	$a7,$a7,-1
    # Line 344
    addiu	$a4,$a4,4
    # Line 346
    mul.s	$f4,$f1,$f13
    bnez	$a7,.L0d976c48
    # Line 347
    swc1	$f0,-4($a4)
.L0d976c64:
    sra	$a7,$t0,0x2
    beqz	$a7,.L0d976cb8
    nop
.L0d976c70:
    # Line 346
    lwc1	$f10,8($a4)
    lwc1	$f3,12($a4)
    lwc1	$f9,4($a4)
    mul.s	$f8,$f10,$f13
    # Line 347
    madd.s	$f8,$f8,$f3,$f7
    # Line 346
    lwc1	$f2,0($a4)
    mul.s	$f6,$f9,$f13
    # Line 347
    madd.s	$f6,$f6,$f10,$f7
    # Line 346
    mul.s	$f5,$f2,$f13
    # Line 347
    madd.s	$f5,$f5,$f9,$f7
    madd.s	$f2,$f4,$f2,$f7
    # Line 344
    addiu	$a4,$a4,16
    # Line 347
    swc1	$f8,-4($a4)
    swc1	$f6,-8($a4)
    swc1	$f5,-12($a4)
    # Line 346
    mul.s	$f4,$f3,$f13
    # Line 344
    bne	$a4,$a5,.L0d976c70
    # Line 347
    swc1	$f2,-16($a4)
.L0d976cb8:
    # Line 344
    move	$a4,$a6
.L0d976cbc:
    # Line 341
    addiu	$a6,$a6,1
    # Line 349
    sll	$t3,$a4,0x2
    # Line 341
    addiu	$a5,$a5,4
    # Line 349
    addu	$t3,$a2,$t3
    # Line 341
    addiu	$t0,$t0,1
    beq	$t1,$a6,.L0d976d00
    # Line 349
    swc1	$f4,0($t3)
.L0d976cd8:
    andi	$a7,$t0,0x3
    # Line 342
    lwc1	$f4,0($a2)
    # Line 343
    slti	$t8,$a6,2
    mul.s	$f9,$f4,$f7
    # Line 344
    li	$a4,1
    # Line 342
    mul.s	$f4,$f4,$f13
    # Line 343
    beqz	$t8,.L0d976c40
    swc1	$f9,0($a2)
    b	.L0d976cbc
    nop
.L0d976d00:
    # Line 341
    move	$a6,$t1
    lwc1	$f4,0($a2)
.L0d976d08:
    # Line 351
    addiu	$t3,$a0,-2
    li	$t0,1
    slti	$t2,$a0,3
    addiu	$a7,$a3,4
    movz	$t0,$t3,$t2
    sll	$a5,$t1,0x2
    andi	$t9,$t0,0x1
    neg.s	$f5,$f4
    addu	$a5,$a5,$a2
    addiu	$t2,$a2,4
    swc1	$f5,0($a3)
    beqz	$t9,.L0d976d54
    move	$a4,$t2
    # Line 355
    lwc1	$f6,0($a2)
    lwc1	$f8,4($a2)
    sub.s	$f6,$f6,$f8
    # Line 356
    addiu	$a4,$a2,8
    addiu	$a7,$a3,8
    # Line 355
    swc1	$f6,4($a3)
.L0d976d54:
    sra	$t8,$t0,0x1
    beqz	$t8,.L0d976da4
    # Line 358
    sll	$v0,$t0,0x2
    move	$a0,$a7
    nop
    nop
    nop
.L0d976d70:
    # Line 355
    lwc1	$f11,-4($a4)
    lwc1	$f12,0($a4)
    sub.s	$f11,$f11,$f12
    swc1	$f11,0($a0)
    lwc1	$f9,0($a4)
    lwc1	$f10,4($a4)
    # Line 356
    addiu	$a4,$a4,8
    sltu	$t9,$a4,$a5
    addiu	$a0,$a0,8
    # Line 355
    sub.s	$f9,$f9,$f10
    # Line 356
    bnez	$t9,.L0d976d70
    # Line 355
    swc1	$f9,-4($a0)
    # Line 358
    sll	$v0,$t0,0x2
.L0d976da4:
    addu	$v1,$v0,$a2
    lwc1	$f5,0($v1)
    addu	$v0,$v0,$a3
    swc1	$f5,4($v0)
    # Line 360
    lwc1	$f4,0($a2)
    # Line 361
    slti	$at,$a6,2
    mul.s	$f14,$f4,$f7
    # Line 360
    mul.s	$f4,$f4,$f13
    # Line 361
    bnez	$at,.L0d976e6c
    swc1	$f14,0($a2)
    addiu	$a3,$a6,-1
    andi	$a0,$a3,0x3
    move	$a4,$t2
    sll	$a5,$a6,0x2
    beqz	$a0,.L0d976e00
    addu	$a5,$a5,$a2
.L0d976de4:
    # Line 364
    lwc1	$f8,0($a4)
    # Line 365
    madd.s	$f6,$f4,$f8,$f7
    addiu	$a0,$a0,-1
    # Line 362
    addiu	$a4,$a4,4
    # Line 364
    mul.s	$f4,$f8,$f13
    bnez	$a0,.L0d976de4
    # Line 365
    swc1	$f6,-4($a4)
.L0d976e00:
    sra	$a7,$a3,0x2
    beqz	$a7,.L0d976e58
    nop
    nop
.L0d976e10:
    # Line 364
    lwc1	$f16,8($a4)
    lwc1	$f10,12($a4)
    lwc1	$f15,4($a4)
    mul.s	$f14,$f16,$f13
    # Line 365
    madd.s	$f14,$f14,$f10,$f7
    # Line 364
    lwc1	$f9,0($a4)
    mul.s	$f12,$f15,$f13
    # Line 365
    madd.s	$f12,$f12,$f16,$f7
    # Line 364
    mul.s	$f11,$f9,$f13
    # Line 365
    madd.s	$f11,$f11,$f15,$f7
    madd.s	$f9,$f4,$f9,$f7
    # Line 362
    addiu	$a4,$a4,16
    # Line 365
    swc1	$f14,-4($a4)
    swc1	$f12,-8($a4)
    swc1	$f11,-12($a4)
    # Line 364
    mul.s	$f4,$f10,$f13
    # Line 362
    bne	$a4,$a5,.L0d976e10
    # Line 365
    swc1	$f9,-16($a4)
.L0d976e58:
    # Line 362
    move	$a4,$a6
.L0d976e5c:
    # Line 367
    sll	$t0,$a4,0x2
    addu	$t0,$a2,$t0
    # Line 372
    jr	$ra
    # Line 367
    swc1	$f4,0($t0)
.L0d976e6c:
    b	.L0d976e5c
    # Line 362
    li	$a4,1
.L0d976e74:
    b	.L0d976d08
    # Line 341
    li	$a6,2
.L0d976e7c:
    # Line 333
    mtc1	$zero,$f15
    # Line 332
    swc1	$f5,0($a2)
    # Line 372
    jr	$ra
    # Line 333
    swc1	$f15,0($a3)
.L0d976e8c:
    # Line 298
    sub.s	$f25,$f5,$f13
    # Line 299
    mul.s	$f17,$f25,$f13
    madd.s	$f17,$f17,$f25,$f13
    # Line 301
    mul.s	$f19,$f13,$f13
    # Line 299
    madd.s	$f23,$f17,$f25,$f13
    # Line 298
    mul.s	$f16,$f25,$f25
    # Line 301
    mul.s	$f21,$f19,$f13
    # Line 298
    mul.s	$f27,$f16,$f25
    # Line 305
    nmsub.s	$f18,$f17,$f13,$f13
    # Line 304
    msub.s	$f17,$f17,$f25,$f25
    # Line 301
    swc1	$f21,12($a2)
    # Line 299
    mul.s	$f25,$f23,$f25
    # Line 298
    swc1	$f27,0($a2)
    # Line 300
    mul.s	$f23,$f23,$f13
    swc1	$f23,8($a2)
    # Line 299
    swc1	$f25,4($a2)
    # Line 306
    swc1	$f19,12($a3)
    # Line 305
    swc1	$f18,8($a3)
    # Line 303
    neg.s	$f16,$f16
    # Line 304
    swc1	$f17,4($a3)
    # Line 372
    jr	$ra
    # Line 303
    swc1	$f16,0($a3)
.L0d976ee4:
    # Line 311
    sub.s	$f19,$f5,$f13
    # Line 312
    lwc1	$f23,_lit_40000000
    # Line 313
    mul.s	$f21,$f13,$f13
    # Line 311
    mul.s	$f25,$f19,$f19
    # Line 313
    swc1	$f21,8($a2)
    # Line 312
    mul.s	$f23,$f13,$f23
    # Line 311
    swc1	$f25,0($a2)
    # Line 315
    lwc1	$f18,_lit_bf800000
    # Line 312
    mul.s	$f23,$f19,$f23
    swc1	$f23,4($a2)
    # Line 316
    sub.s	$f19,$f19,$f13
    # Line 317
    swc1	$f13,8($a3)
    # Line 315
    add.s	$f18,$f13,$f18
    # Line 316
    swc1	$f19,4($a3)
    # Line 372
    jr	$ra
    # Line 315
    swc1	$f18,0($a3)
.L0d976f24:
    # Line 323
    swc1	$f13,4($a2)
    # Line 322
    sub.s	$f27,$f5,$f13
    swc1	$f27,0($a2)
    # Line 325
    lwc1	$f25,_lit_bf800000
    # Line 326
    swc1	$f5,4($a3)
    # Line 372
    jr	$ra
    # Line 325
    swc1	$f25,0($a3)
.end PreEvaluateWithDeriv

# Function: DoDomain1
# Declared: Line 379 (Source lines: 381-446)
# Address: 0x0d976f40 - 0x0d9774e4 (Size: 1444 bytes, Frame: 48)
.ent DoDomain1
DoDomain1:
    # Line 381
    lwc1	$f4,12($a2)
    lwc1	$f5,8($a2)
    c.eq.s	$f5,$f4
    addiu	$sp,$sp,-48
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s0,24($sp)
    bc1t	.L0d977098
    move	$s0,$a2
    # Line 389
    sub.s	$f2,$f4,$f5
    sub.s	$f1,$f13,$f5
    div.s	$f1,$f1,$f2
    # Line 392
    lwc1	$f0,756($a0)
    lw	$a0,4($a2)
    c.eq.s $f0,$f1
    sd	$a3,16($sp)
    sd	$a4,8($sp)
    bc1f .L0d976f94
    # Line 389
    sdc1	$f1,0($sp)
    # Line 392
    lw	$at,1404($s1)
    beq	$at,$a0,.L0d976fcc
.L0d976f94:
    # Line 394
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,27200
    ldc1	$f13,0($sp)
    sd	$ra,40($sp)
    bal __glOdyim_EvalPoint2
    addiu	$a2,$s1,764
    ld	$ra,40($sp)
    # Line 395
    li	$v0,2
    sw	$v0,1412($s1)
    # Line 396
    lw	$at,4($s0)
    # Line 397
    ldc1	$f3,0($sp)
    # Line 396
    sw	$at,1404($s1)
    # Line 397
    swc1	$f3,756($s1)
    lw	$a0,4($s0)
.L0d976fcc:
    # Line 402
    li	$v1,4
    beq	$a0,$v1,.L0d9770a8
    # Line 400
    lw	$a5,0($s0)
    # Line 402
    li	$a1,3
    beq	$a0,$a1,.L0d977230
    li	$a2,2
    beq	$a0,$a2,.L0d97736c
    li	$a3,1
    beq	$a0,$a3,.L0d977458
    nop
    blez	$a5,.L0d977098
    mtc1	$zero,$f5
    mtc1	$zero,$f6
    ld	$a0,8($sp)
    sll	$a2,$a5,0x2
    ld	$a6,16($sp)
    move	$a7,$a0
    addu	$a0,$a2,$a0
    # Line 437
    mov.s	$f4,$f6
    nop
    nop
.L0d977020:
    swc1	$f5,0($a6)
    lw	$a1,4($s0)
    blez	$a1,.L0d977088
    # Line 436
    move	$a3,$a7
    # Line 437
    move	$a4,$zero
    move	$a5,$s1
.L0d977038:
    # Line 439
    lwc1	$f8,764($a5)
    lwc1	$f7,0($a3)
    madd.s	$f4,$f4,$f7,$f8
    swc1	$f4,0($a6)
    # Line 438
    lw	$t0,4($s0)
    addiu	$a4,$a4,1
    slt	$t0,$a4,$t0
    # Line 440
    addu	$a3,$a2,$a3
    # Line 438
    beqz	$t0,.L0d977088
    nop
    # Line 439
    lwc1	$f10,768($a5)
    lwc1	$f9,0($a3)
    madd.s	$f4,$f4,$f9,$f10
    swc1	$f4,0($a6)
    # Line 438
    lw	$t1,4($s0)
    addiu	$a4,$a4,1
    slt	$t1,$a4,$t1
    addiu	$a5,$a5,8
    bnez	$t1,.L0d977038
    # Line 440
    addu	$a3,$a2,$a3
.L0d977088:
    # Line 435
    addiu	$a7,$a7,4
    # Line 437
    mov.s	$f4,$f6
    # Line 435
    bne	$a7,$a0,.L0d977020
    addiu	$a6,$a6,4
.L0d977098:
    # Line 446
    ld	$s0,24($sp)
.L0d97709c:
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9770a8:
    # Line 405
    blez	$a5,.L0d977098
    addu	$a2,$a5,$a5
    sll	$a2,$a2,0x2
    ld	$t1,8($sp)
    andi	$t0,$a5,0x3
    sll	$a3,$a5,0x2
    move	$a7,$t1
    addu	$a4,$a3,$t1
    addu	$a0,$a4,$a3
    subu	$a3,$a3,$a5
    addu	$a2,$a2,$t1
    sll	$a3,$a3,0x2
    ld	$a6,16($sp)
    beqz	$t0,.L0d977134
    addu	$a3,$a3,$t1
.L0d9770e4:
    # Line 407
    lwc1	$f12,0($a7)
    lwc1	$f11,768($s1)
    lwc1	$f15,0($a4)
    lwc1	$f13,764($s1)
    lwc1	$f14,772($s1)
    mul.s	$f11,$f11,$f15
    lwc1	$f15,0($a2)
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f12,776($s1)
    lwc1	$f13,0($a3)
    madd.s	$f11,$f11,$f14,$f15
    madd.s	$f11,$f11,$f12,$f13
    # Line 405
    addiu	$a4,$a4,4
    addiu	$a2,$a2,4
    addiu	$t0,$t0,-1
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    addiu	$a7,$a7,4
    bnez	$t0,.L0d9770e4
    # Line 407
    swc1	$f11,-4($a6)
.L0d977134:
    sra	$t0,$a5,0x2
    beqz	$t0,.L0d977228
    nop
.L0d977140:
    lwc1	$f6,0($a7)
    lwc1	$f5,768($s1)
    lwc1	$f9,0($a4)
    lwc1	$f7,764($s1)
    lwc1	$f8,772($s1)
    mul.s	$f5,$f5,$f9
    lwc1	$f9,0($a2)
    madd.s	$f5,$f5,$f6,$f7
    lwc1	$f6,776($s1)
    lwc1	$f7,0($a3)
    madd.s	$f5,$f5,$f8,$f9
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,0($a6)
    lwc1	$f1,4($a7)
    lwc1	$f0,768($s1)
    lwc1	$f4,4($a4)
    lwc1	$f2,764($s1)
    lwc1	$f3,772($s1)
    mul.s	$f0,$f0,$f4
    lwc1	$f4,4($a2)
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f1,776($s1)
    lwc1	$f2,4($a3)
    madd.s	$f0,$f0,$f3,$f4
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,4($a6)
    lwc1	$f25,8($a7)
    lwc1	$f23,768($s1)
    lwc1	$f31,8($a4)
    lwc1	$f27,764($s1)
    lwc1	$f29,772($s1)
    mul.s	$f23,$f23,$f31
    lwc1	$f31,8($a2)
    madd.s	$f23,$f23,$f25,$f27
    lwc1	$f25,776($s1)
    lwc1	$f27,8($a3)
    madd.s	$f23,$f23,$f29,$f31
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,8($a6)
    lwc1	$f17,12($a7)
    lwc1	$f16,768($s1)
    lwc1	$f21,12($a4)
    lwc1	$f18,764($s1)
    lwc1	$f19,772($s1)
    mul.s	$f16,$f16,$f21
    lwc1	$f21,12($a2)
    madd.s	$f16,$f16,$f17,$f18
    lwc1	$f17,776($s1)
    lwc1	$f18,12($a3)
    madd.s	$f16,$f16,$f19,$f21
    madd.s	$f16,$f16,$f17,$f18
    # Line 405
    addiu	$a2,$a2,16
    addiu	$a4,$a4,16
    addiu	$a3,$a3,16
    addiu	$a6,$a6,16
    addiu	$a7,$a7,16
    bne	$a4,$a0,.L0d977140
    # Line 407
    swc1	$f16,-4($a6)
.L0d977228:
    b	.L0d97709c
    # Line 446
    ld	$s0,24($sp)
.L0d977230:
    # Line 413
    blez	$a5,.L0d97709c
    # Line 446
    ld	$s0,24($sp)
    andi	$t0,$a5,0x3
    # Line 413
    ld	$a3,8($sp)
    sll	$a0,$a5,0x2
    addu	$a2,$a5,$a5
    sll	$a2,$a2,0x2
    move	$a7,$a3
    addu	$a2,$a2,$a3
    addu	$a4,$a0,$a3
    ld	$a6,16($sp)
    beqz	$t0,.L0d9772a4
    addu	$a0,$a4,$a0
.L0d977264:
    # Line 415
    lwc1	$f13,0($a7)
    lwc1	$f10,768($s1)
    lwc1	$f12,0($a4)
    lwc1	$f14,764($s1)
    lwc1	$f11,772($s1)
    mul.s	$f10,$f10,$f12
    lwc1	$f12,0($a2)
    madd.s	$f10,$f10,$f13,$f14
    madd.s	$f10,$f10,$f11,$f12
    # Line 413
    addiu	$a4,$a4,4
    addiu	$t0,$t0,-1
    addiu	$a2,$a2,4
    addiu	$a6,$a6,4
    addiu	$a7,$a7,4
    bnez	$t0,.L0d977264
    # Line 415
    swc1	$f10,-4($a6)
.L0d9772a4:
    sra	$a3,$a5,0x2
    beqz	$a3,.L0d977364
    nop
.L0d9772b0:
    lwc1	$f31,0($a7)
    lwc1	$f25,768($s1)
    lwc1	$f29,0($a4)
    lwc1	$f0,764($s1)
    lwc1	$f27,772($s1)
    mul.s	$f25,$f25,$f29
    lwc1	$f29,0($a2)
    madd.s	$f25,$f25,$f31,$f0
    madd.s	$f25,$f25,$f27,$f29
    swc1	$f25,0($a6)
    lwc1	$f25,4($a7)
    lwc1	$f19,768($s1)
    lwc1	$f23,4($a4)
    lwc1	$f27,764($s1)
    lwc1	$f21,772($s1)
    mul.s	$f19,$f19,$f23
    lwc1	$f23,4($a2)
    madd.s	$f19,$f19,$f25,$f27
    madd.s	$f19,$f19,$f21,$f23
    swc1	$f19,4($a6)
    lwc1	$f19,8($a7)
    lwc1	$f16,768($s1)
    lwc1	$f18,8($a4)
    lwc1	$f21,764($s1)
    lwc1	$f17,772($s1)
    mul.s	$f16,$f16,$f18
    lwc1	$f18,8($a2)
    madd.s	$f16,$f16,$f19,$f21
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,8($a6)
    lwc1	$f16,12($a7)
    lwc1	$f13,768($s1)
    lwc1	$f15,12($a4)
    lwc1	$f17,764($s1)
    lwc1	$f14,772($s1)
    mul.s	$f13,$f13,$f15
    lwc1	$f15,12($a2)
    madd.s	$f13,$f13,$f16,$f17
    madd.s	$f13,$f13,$f14,$f15
    # Line 413
    addiu	$a4,$a4,16
    addiu	$a2,$a2,16
    addiu	$a6,$a6,16
    addiu	$a7,$a7,16
    bne	$a4,$a0,.L0d9772b0
    # Line 415
    swc1	$f13,-4($a6)
.L0d977364:
    b	.L0d97709c
    # Line 446
    ld	$s0,24($sp)
.L0d97736c:
    # Line 421
    blez	$a5,.L0d977098
    ld	$a7,8($sp)
    andi	$a2,$a5,0x3
    sll	$a0,$a5,0x2
    addu	$a4,$a0,$a7
    ld	$a6,16($sp)
    beqz	$a2,.L0d9773bc
    addu	$a0,$a4,$a0
.L0d97738c:
    # Line 423
    lwc1	$f0,0($a7)
    lwc1	$f31,768($s1)
    lwc1	$f2,0($a4)
    lwc1	$f1,764($s1)
    mul.s	$f31,$f31,$f2
    madd.s	$f31,$f31,$f0,$f1
    addiu	$a2,$a2,-1
    # Line 421
    addiu	$a4,$a4,4
    addiu	$a6,$a6,4
    addiu	$a7,$a7,4
    bnez	$a2,.L0d97738c
    # Line 423
    swc1	$f31,-4($a6)
.L0d9773bc:
    sra	$a1,$a5,0x2
    beqz	$a1,.L0d977450
    nop
    nop
    nop
.L0d9773d0:
    lwc1	$f16,0($a7)
    lwc1	$f15,768($s1)
    lwc1	$f18,0($a4)
    lwc1	$f17,764($s1)
    mul.s	$f15,$f15,$f18
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($a6)
    lwc1	$f12,4($a7)
    lwc1	$f11,768($s1)
    lwc1	$f14,4($a4)
    lwc1	$f13,764($s1)
    mul.s	$f11,$f11,$f14
    madd.s	$f11,$f11,$f12,$f13
    swc1	$f11,4($a6)
    lwc1	$f8,8($a7)
    lwc1	$f7,768($s1)
    lwc1	$f10,8($a4)
    lwc1	$f9,764($s1)
    mul.s	$f7,$f7,$f10
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a6)
    lwc1	$f4,12($a7)
    lwc1	$f3,768($s1)
    lwc1	$f6,12($a4)
    lwc1	$f5,764($s1)
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f4,$f5
    # Line 421
    addiu	$a4,$a4,16
    addiu	$a6,$a6,16
    addiu	$a7,$a7,16
    bne	$a4,$a0,.L0d9773d0
    # Line 423
    swc1	$f3,-4($a6)
.L0d977450:
    b	.L0d97709c
    # Line 446
    ld	$s0,24($sp)
.L0d977458:
    # Line 428
    blez	$a5,.L0d977098
    ld	$a1,8($sp)
    andi	$a2,$a5,0x1
    sll	$a0,$a5,0x2
    move	$a7,$a1
    ld	$a6,16($sp)
    beqz	$a2,.L0d977498
    addu	$a0,$a0,$a1
    # Line 430
    ld	$a7,8($sp)
    lwc1	$f21,764($s1)
    lwc1	$f19,0($a7)
    # Line 428
    ld	$a3,16($sp)
    # Line 430
    mul.s	$f19,$f19,$f21
    # Line 428
    addiu	$a7,$a7,4
    addiu	$a6,$a3,4
    # Line 430
    swc1	$f19,0($a3)
.L0d977498:
    sra	$t0,$a5,0x1
    beqz	$t0,.L0d9774dc
    nop
    nop
    nop
    nop
.L0d9774b0:
    lwc1	$f27,0($a7)
    lwc1	$f29,764($s1)
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($a6)
    lwc1	$f23,4($a7)
    lwc1	$f25,764($s1)
    # Line 428
    addiu	$a7,$a7,8
    addiu	$a6,$a6,8
    # Line 430
    mul.s	$f23,$f23,$f25
    # Line 428
    bne	$a7,$a0,.L0d9774b0
    # Line 430
    swc1	$f23,-4($a6)
.L0d9774dc:
    b	.L0d97709c
    # Line 446
    ld	$s0,24($sp)
.end DoDomain1

# Function: GetCurrentState
# Declared: Line 449 (Source lines: 450-548)
# Address: 0x0d9774f0 - 0x0d977780 (Size: 656 bytes, Frame: 32)
.ent GetCurrentState
GetCurrentState:
    # Line 453
    sw	$zero,0($a2)
    lbu	$a5,3221($a0)
    # Line 450
    addiu	$sp,$sp,-32
    # Line 453
    li	$a6,1
    move	$a4,$zero
    # Line 450
    sd	$s0,8($sp)
    move	$s0,$a2
    # Line 453
    beq	$a1,$a6,.L0d9776b4
    sd	$ra,16($sp)
    # Line 478
    beqz	$a5,.L0d977694
    # Line 454
    lw	$a2,1812($a0)
    # Line 478
    andi	$at,$a2,0x2
    beqz	$at,.L0d977694
    # Line 480
    li	$v0,2
    sw	$v0,0($s0)
    move	$a4,$v0
.L0d977530:
    # Line 482
    andi	$v1,$a2,0x78
.L0d977534:
    beqz	$v1,.L0d977548
    # Line 490
    andi	$a1,$a2,0x4
    ori	$a4,$a4,0x8
    sw	$a4,0($s0)
    andi	$a1,$a2,0x4
.L0d977548:
    beqz	$a1,.L0d977558
    nop
    # Line 493
    ori	$a4,$a4,0x4
    sw	$a4,0($s0)
.L0d977558:
    # Line 474
    beqz	$a4,.L0d9775ec
    ld	$ra,16($sp)
    # Line 497
    lw	$a2,6132($a0)
    lw	$a2,496($a2)
    la	$a3,__glOdyim_SoftGetFloatv
    bne	$a2,$a3,.L0d9775f8
    # Line 525
    lui	$a7,0x1
    # Line 497
    andi	$a3,$a4,0x2
    beqz	$a3,.L0d9776fc
    # Line 504
    andi	$t1,$a4,0x1
    lwc1	$f0,448($a0)
    swc1	$f0,4($s0)
.L0d977588:
    # Line 510
    andi	$a5,$a4,0x8
.L0d97758c:
    beqz	$a5,.L0d9775b8
    # Line 516
    andi	$a6,$a4,0x4
    # Line 513
    lwc1	$f4,224($a0)
    swc1	$f4,36($s0)
    # Line 514
    lwc1	$f3,228($a0)
    swc1	$f3,40($s0)
    # Line 515
    lwc1	$f2,232($a0)
    swc1	$f2,44($s0)
    # Line 516
    lwc1	$f1,236($a0)
    swc1	$f1,48($s0)
    andi	$a6,$a4,0x4
.L0d9775b8:
    beqz	$a6,.L0d9775ec
    ld	$ra,16($sp)
    # Line 519
    lwc1	$f7,208($a0)
    swc1	$f7,20($s0)
    # Line 520
    lwc1	$f6,212($a0)
    ld	$ra,16($sp)
    swc1	$f6,24($s0)
    # Line 521
    lwc1	$f5,216($a0)
    swc1	$f5,28($s0)
    # Line 548
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
    ld	$ra,16($sp)
.L0d9775ec:
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9775f8:
    # Line 531
    # lw $t9, -31660($gp) # &__glOdyGetFromHardware
    # Line 525
    ori	$a7,$a7,0x6d24
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    # Line 531
    move	$a1,$zero
    jal	__glOdyGetFromHardware
    sd	$a7,0($sp)
    bltz	$v0,.L0d977770
    ld	$ra,16($sp)
    # Line 533
    lw	$a4,0($s0)
    andi	$t0,$a4,0x2
    beqz	$t0,.L0d977728
    # Line 536
    andi	$t2,$a4,0x1
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    li	$a2,1
    ld	$a0,0($sp)
    jal	__glOdyDecodeShadowFormat
    addiu	$a1,$s0,4
    lw	$a4,0($s0)
.L0d977644:
    # Line 539
    andi	$t1,$a4,0x4
.L0d977648:
    beqz	$t1,.L0d977668
    # Line 542
    nop	# was lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    ld	$a0,0($sp)
    li	$a2,1
    addiu	$a1,$s0,20
    jal	__glOdyDecodeShadowFormat
    addiu	$a0,$a0,40
    lw	$a4,0($s0)
.L0d977668:
    andi	$a1,$a4,0x8
    beqz	$a1,.L0d9775ec
    ld	$ra,16($sp)
    # Line 545
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    ld	$a0,0($sp)
    li	$a2,1
    addiu	$a1,$s0,36
    jal	__glOdyDecodeShadowFormat
    addiu	$a0,$a0,80
    b	.L0d9775ec
    ld	$ra,16($sp)
.L0d977694:
    # Line 482
    lbu	$a1,3220($a0)
    beqz	$a1,.L0d977530
    andi	$a3,$a2,0x1
    beqz	$a3,.L0d977534
    andi	$v1,$a2,0x78
    # Line 484
    sw	$a6,0($s0)
    b	.L0d977530
    li	$a4,1
.L0d9776b4:
    # Line 459
    beqz	$a5,.L0d977750
    # Line 454
    lw	$a2,1808($a0)
    # Line 459
    andi	$a5,$a2,0x2
    beqz	$a5,.L0d977750
    nop
    # Line 461
    li	$a6,2
    sw	$a6,0($s0)
    move	$a4,$a6
.L0d9776d4:
    # Line 463
    andi	$a7,$a2,0x78
.L0d9776d8:
    beqz	$a7,.L0d9776e8
    # Line 471
    andi	$t0,$a2,0x4
    ori	$a4,$a4,0x8
    sw	$a4,0($s0)
.L0d9776e8:
    beqz	$t0,.L0d977558
    nop
    # Line 474
    ori	$a4,$a4,0x4
    b	.L0d977558
    sw	$a4,0($s0)
.L0d9776fc:
    # Line 504
    beqz	$t1,.L0d97758c
    # Line 510
    andi	$a5,$a4,0x8
    # Line 507
    lwc1	$f11,432($a0)
    swc1	$f11,4($s0)
    # Line 508
    lwc1	$f10,436($a0)
    swc1	$f10,8($s0)
    # Line 509
    lwc1	$f9,440($a0)
    swc1	$f9,12($s0)
    # Line 510
    lwc1	$f8,444($a0)
    b	.L0d977588
    swc1	$f8,16($s0)
.L0d977728:
    # Line 536
    beqz	$t2,.L0d977648
    # Line 539
    andi	$t1,$a4,0x4
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    ld	$a0,0($sp)
    li	$a2,1
    addiu	$a1,$s0,4
    jal	__glOdyDecodeShadowFormat
    addiu	$a0,$a0,20
    b	.L0d977644
    lw	$a4,0($s0)
.L0d977750:
    # Line 463
    lbu	$a1,3220($a0)
    beqz	$a1,.L0d9776d4
    andi	$a3,$a2,0x1
    beqz	$a3,.L0d9776d8
    andi	$a7,$a2,0x78
    # Line 465
    sw	$a6,0($s0)
    b	.L0d9776d4
    li	$a4,1
.L0d977770:
    # Line 532
    sw	$zero,0($s0)
    # Line 548
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end GetCurrentState

# Function: RestoreCurrentState
# Declared: Line 551 (Source lines: 552-581)
# Address: 0x0d977780 - 0x0d97782c (Size: 172 bytes, Frame: 32)
.ent RestoreCurrentState
RestoreCurrentState:
    # Line 552
    lw	$a3,0($a1)
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    andi	$at,$a3,0x2
    move	$s1,$a0
    sd	$s0,0($sp)
    move	$s0,$a1
    beqz	$at,.L0d977808
    sd	$ra,16($sp)
    # Line 555
    lw	$t9,6132($a0)
    lw	$t9,1556($t9)
    jalr	$t9
    addiu	$a0,$a1,4
    lw	$a3,0($s0)
.L0d9777b8:
    # Line 562
    andi	$ra,$a3,0x8
.L0d9777bc:
    beqz	$ra,.L0d9777dc
    # Line 569
    andi	$ra,$a3,0x4
    lw	$t9,6132($s1)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$s0,36
    lw	$a3,0($s0)
    andi	$ra,$a3,0x4
.L0d9777dc:
    beqz	$ra,.L0d9777f8
    ld	$ra,16($sp)
    # Line 576
    lw	$t9,6132($s1)
    lw	$t9,1604($t9)
    jalr	$t9
    addiu	$a0,$s0,20
    ld	$ra,16($sp)
.L0d9777f8:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 581
    jr	$ra
    addiu	$sp,$sp,32
.L0d977808:
    # Line 555
    andi	$ra,$a3,0x1
    beqz	$ra,.L0d9777bc
    # Line 562
    andi	$ra,$a3,0x8
    lw	$t9,6132($a0)
    lw	$t9,1500($t9)
    jalr	$t9
    addiu	$a0,$a1,4
    b	.L0d9777b8
    lw	$a3,0($s0)
.end RestoreCurrentState

# Function: DoEvalCoord1
# Declared: Line 583 (Source lines: 584-671)
# Address: 0x0d977830 - 0x0d977be4 (Size: 948 bytes, Frame: 160)
.ent DoEvalCoord1
DoEvalCoord1:
    # Line 584
    addiu	$sp,$sp,-1568
    sd	$ra,1504($sp)
    sd	$s3,1512($sp)
    sd	$s2,1520($sp)
    sd	$s4,1528($sp)
    sd	$s0,1536($sp)
    sd	$s1,1544($sp)
    li	$a6,3
    # Line 587
    li	$a3,355
    # Line 584
    sdc1	$f20,1488($sp)
    # Line 587
    move	$a2,$zero
    addiu	$a4,$a0,28292
    # Line 584
    sd	$s6,1496($sp)
    move	$s6,$a0
    mov.s	$f20,$f13
    # Line 587
    addiu	$a5,$sp,0
    sd	$s5,1552($sp)
.L0d977874:
    addiu	$a6,$a6,-1
    addu	$at,$a2,$a4
    addiu	$a3,$a3,-1
    addu	$v0,$a2,$a5
    lw	$at,0($at)
    addiu	$a2,$a2,4
    bnez	$a6,.L0d977874
    sw	$at,0($v0)
    addiu	$s2,$a4,28
    addiu	$t2,$a5,28
    li	$t3,0x20
    addiu	$s4,$a4,4
    addiu	$a6,$a5,4
    addiu	$s1,$a5,8
    addiu	$s5,$a4,8
    addiu	$s3,$a4,12
    addiu	$t1,$a5,12
    addiu	$a7,$a4,20
    addiu	$t0,$a5,20
    addiu	$t8,$a5,24
    addiu	$t9,$a4,24
    addiu	$ra,$a5,16
    addiu	$s0,$a4,16
.L0d9778d0:
    addu	$a0,$a2,$a4
    addu	$a1,$a2,$a5
    lw	$a0,0($a0)
    addu	$v1,$a2,$s4
    sw	$a0,0($a1)
    addu	$a0,$a2,$a6
    lw	$v1,0($v1)
    addu	$v0,$a2,$s5
    sw	$v1,0($a0)
    addu	$v1,$a2,$s1
    lw	$v0,0($v0)
    addu	$at,$a2,$s3
    sw	$v0,0($v1)
    addu	$v0,$a2,$t1
    lw	$at,0($at)
    addu	$a1,$a2,$s0
    sw	$at,0($v0)
    addu	$at,$a2,$ra
    lw	$a1,0($a1)
    addu	$a0,$a2,$a7
    sw	$a1,0($at)
    addu	$a1,$a2,$t0
    lw	$a0,0($a0)
    addu	$v1,$a2,$t9
    sw	$a0,0($a1)
    addu	$a0,$a2,$t8
    lw	$v1,0($v1)
    addiu	$a3,$a3,-8
    addu	$v0,$a2,$s2
    sw	$v1,0($a0)
    addu	$v1,$a2,$t2
    lw	$v0,0($v0)
    addu	$a2,$a2,$t3
    bgtz	$a3,.L0d9778d0
    sw	$v0,0($v1)
    lbu	$a1,3221($s6)
    beqz	$a1,.L0d977b4c
    lw	$a0,1808($s6)
    andi	$a2,$a0,0x2
    beqz	$a2,.L0d9779a4
    # Line 593
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,28480
    addiu	$a3,$sp,1424
    addiu	$a2,$s6,28316
    lw	$a4,28872($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 595
    lw	$t9,6132($s6)
    lw	$t9,1556($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,1424
    lw	$a0,1808($s6)
.L0d9779a4:
    la	$s0,sub_0d970000
    addiu	$s0,$s0,28480
.L0d9779ac:
    # Line 604
    andi	$t8,$a0,0x40
    beqz	$t8,.L0d977abc
    # Line 614
    andi	$ra,$a0,0x20
    # Line 612
    move	$t9,$s0
    addiu	$a3,$sp,1440
    addiu	$a2,$s6,28436
    lw	$a4,28892($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 614
    lw	$t9,6132($s6)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$sp,1440
    lw	$a0,1808($s6)
.L0d9779e8:
    # Line 641
    andi	$ra,$a0,0x4
    beqz	$ra,.L0d977a20
    # Line 648
    move	$t9,$s0
    addiu	$a3,$sp,1456
    addiu	$a2,$s6,28340
    lw	$a4,28876($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 650
    lw	$t9,6132($s6)
    lw	$t9,1604($t9)
    jalr	$t9
    addiu	$a0,$sp,1456
    lw	$a0,1808($s6)
.L0d977a20:
    andi	$ra,$a0,0x100
    beqz	$ra,.L0d977a5c
    # Line 657
    move	$t9,$s0
    addiu	$a3,$sp,1472
    addiu	$a2,$s6,28484
    lw	$a4,28900($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 659
    lw	$t9,6132($s6)
    lw	$t9,1396($t9)
    jalr	$t9
    addiu	$a0,$sp,1472
    b	.L0d977a94
    ld	$s6,1496($sp)
.L0d977a5c:
    andi	$ra,$a0,0x80
    beqz	$ra,.L0d977a90
    # Line 664
    move	$t9,$s0
    addiu	$a3,$sp,1472
    addiu	$a2,$s6,28460
    lw	$a4,28896($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 666
    lw	$t9,6132($s6)
    lw	$t9,1364($t9)
    jalr	$t9
    addiu	$a0,$sp,1472
.L0d977a90:
    ld	$s6,1496($sp)
.L0d977a94:
    ld	$s3,1512($sp)
    ld	$s2,1520($sp)
    ld	$s4,1528($sp)
    ld	$s0,1536($sp)
    ld	$ra,1504($sp)
    ld	$s1,1544($sp)
    ld	$s5,1552($sp)
    ldc1	$f20,1488($sp)
    # Line 671
    jr	$ra
    addiu	$sp,$sp,1568
.L0d977abc:
    # Line 614
    beqz	$ra,.L0d977b00
    # Line 631
    andi	$t8,$a0,0x8
    # Line 619
    move	$t9,$s0
    addiu	$a3,$sp,1440
    addiu	$a2,$s6,28412
    lw	$a4,28888($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 620
    lwc1	$f0,3544($s6)
    swc1	$f0,1452($sp)
    # Line 622
    lw	$t9,6132($s6)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$sp,1440
    b	.L0d9779e8
    lw	$a0,1808($s6)
.L0d977b00:
    andi	$ra,$a0,0x10
    beqz	$ra,.L0d977b98
    # Line 627
    move	$t9,$s0
    addiu	$a3,$sp,1440
    addiu	$a2,$s6,28388
    lw	$a4,28884($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 628
    mtc1	$zero,$f2
    swc1	$f2,1448($sp)
    # Line 629
    lwc1	$f1,3544($s6)
    swc1	$f1,1452($sp)
    # Line 631
    lw	$t9,6132($s6)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$sp,1440
    b	.L0d9779e8
    lw	$a0,1808($s6)
.L0d977b4c:
    # Line 595
    andi	$ra,$a0,0x1
    beqz	$ra,.L0d977b90
    # Line 604
    la	$s0,sub_0d970000
    # Line 602
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,28480
    addiu	$a3,$sp,1424
    addiu	$a2,$s6,28292
    lw	$a4,28868($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 604
    lw	$t9,6132($s6)
    lw	$t9,1500($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,1424
    lw	$a0,1808($s6)
    la	$s0,sub_0d970000
.L0d977b90:
    b	.L0d9779ac
    addiu	$s0,$s0,28480
.L0d977b98:
    # Line 631
    beqz	$t8,.L0d9779e8
    # Line 636
    move	$t9,$s0
    addiu	$a3,$sp,1440
    addiu	$a2,$s6,28364
    lw	$a4,28880($s6)
    mov.s	$f13,$f20
    bal __glOdyim_EvalPoint2
    addiu	$a0,$sp,0
    # Line 637
    mtc1	$zero,$f4
    # Line 638
    swc1	$f4,1448($sp)
    # Line 637
    swc1	$f4,1444($sp)
    # Line 639
    lwc1	$f3,3544($s6)
    swc1	$f3,1452($sp)
    # Line 641
    lw	$t9,6132($s6)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$sp,1440
    b	.L0d9779e8
    lw	$a0,1808($s6)
.end DoEvalCoord1

# Function: __glOdysseyDoEvalCoord1
# Declared: Line 674 (Source lines: 675-681)
# Address: 0x0d977bf0 - 0x0d977c70 (Size: 128 bytes, Frame: 240)
.globl __glOdysseyDoEvalCoord1
.ent __glOdysseyDoEvalCoord1
__glOdysseyDoEvalCoord1:
    # Line 675
    addiu	$sp,$sp,-112
    sd	$ra,88($sp)
    lui	$ra,0x18
    addiu	$ra,$ra,2464
    sd	$gp,96($sp)
    addu	$gp,$t9,$ra
    # Line 678
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,29936
    li	$a1,1
    nop
    addiu	$a2,$sp,0
    # Line 675
    sd	$s0,80($sp)
    move	$s0,$a0
    sdc1	$f30,72($sp)
    # Line 678
    bal __glOdyim_EvalPoint2
    # Line 675
    mov.s	$f30,$f13
    # Line 679
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30768
    move	$a0,$s0
    bal __glOdyim_EvalPoint2
    mov.s	$f13,$f30
    # Line 680
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30592
    move	$a0,$s0
    ldc1	$f30,72($sp)
    bal __glOdyim_EvalPoint2
    addiu	$a1,$sp,0
    ld	$ra,88($sp)
    ld	$s0,80($sp)
    # Line 681
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glOdysseyDoEvalCoord1

# Function: ComputeFirstPartials
# Declared: Line 684 (Source lines: 686-693)
# Address: 0x0d977c70 - 0x0d977d0c (Size: 156 bytes, Frame: 0)
.ent ComputeFirstPartials
ComputeFirstPartials:
    # Line 686
    lwc1	$f13,12($a0)
    lwc1	$f9,12($a1)
    lwc1	$f11,0($a0)
    lwc1	$f12,0($a1)
    mul.s	$f11,$f11,$f9
    msub.s	$f11,$f11,$f12,$f13
    # Line 687
    lwc1	$f12,4($a1)
    # Line 686
    swc1	$f11,0($a1)
    # Line 687
    lwc1	$f10,4($a0)
    lwc1	$f11,12($a0)
    mul.s	$f10,$f10,$f9
    msub.s	$f10,$f10,$f11,$f12
    # Line 688
    lwc1	$f8,8($a1)
    # Line 687
    swc1	$f10,4($a1)
    # Line 688
    lwc1	$f6,8($a0)
    lwc1	$f7,12($a0)
    mul.s	$f6,$f6,$f9
    msub.s	$f6,$f6,$f7,$f8
    swc1	$f6,8($a1)
    # Line 690
    lwc1	$f7,12($a0)
    lwc1	$f3,12($a2)
    lwc1	$f5,0($a0)
    lwc1	$f6,0($a2)
    mul.s	$f5,$f5,$f3
    msub.s	$f5,$f5,$f6,$f7
    # Line 691
    lwc1	$f6,4($a2)
    # Line 690
    swc1	$f5,0($a2)
    # Line 691
    lwc1	$f4,4($a0)
    lwc1	$f5,12($a0)
    mul.s	$f4,$f4,$f3
    msub.s	$f4,$f4,$f5,$f6
    # Line 692
    lwc1	$f2,8($a2)
    # Line 691
    swc1	$f4,4($a2)
    # Line 692
    lwc1	$f0,8($a0)
    lwc1	$f1,12($a0)
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    # Line 693
    jr	$ra
    # Line 692
    swc1	$f0,8($a2)
.end ComputeFirstPartials

# Function: ComputeNormal2
# Declared: Line 695 (Source lines: 697-701)
# Address: 0x0d977d10 - 0x0d977d74 (Size: 100 bytes, Frame: 0)
.ent ComputeNormal2
ComputeNormal2:
    # Line 698
    lwc1	$f10,8($a3)
    lwc1	$f11,8($a2)
    lwc1	$f8,4($a3)
    lwc1	$f9,4($a2)
    mul.s	$f8,$f8,$f11
    msub.s	$f8,$f8,$f9,$f10
    swc1	$f8,0($a1)
    # Line 699
    lwc1	$f6,8($a2)
    lwc1	$f7,8($a3)
    lwc1	$f4,0($a2)
    lwc1	$f5,0($a3)
    mul.s	$f4,$f4,$f7
    msub.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($a1)
    # Line 700
    lwc1	$f2,4($a3)
    lwc1	$f3,4($a2)
    lwc1	$f0,0($a3)
    lwc1	$f1,0($a2)
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    # Line 697
    move	$t9,$a0
    # Line 700
    swc1	$f0,8($a1)
    # Line 701
    lw	$t9,11960($t9)
    jr	$t9
    move	$a0,$a1
.end ComputeNormal2

# Function: DoDomain2
# Declared: Line 704 (Source lines: 706-1180)
# Address: 0x0d977d80 - 0x0d979d68 (Size: 8168 bytes, Frame: 224)
.ent DoDomain2
DoDomain2:
    # Line 706
    addiu	$sp,$sp,-96
    sd	$s5,48($sp)
    sd	$ra,56($sp)
    # Line 714
    lwc1	$f5,16($a3)
    lwc1	$f4,12($a3)
    sd	$s2,64($sp)
    sd	$s3,72($sp)
    sd	$s4,80($sp)
    c.eq.s	$f4,$f5
    # Line 706
    sd	$s0,40($sp)
    move	$a2,$a5
    sd	$s1,32($sp)
    move	$s1,$a0
    move	$s0,$a3
    # Line 714
    bc1t	.L0d977fd8
    sd	$s6,88($sp)
    lwc1	$f7,20($a3)
    lwc1	$f6,24($a3)
    c.eq.s $f7,$f6
    bc1t .L0d977fdc
    ld	$s6,88($sp)
    # Line 716
    sub.s	$f8,$f5,$f4
    sub.s	$f3,$f13,$f4
    div.s	$f3,$f3,$f8
    # Line 717
    sub.s	$f1,$f6,$f7
    sub.s	$f0,$f14,$f7
    div.s	$f0,$f0,$f1
    # Line 722
    lwc1	$f2,756($a0)
    lw	$a0,4($a3)
    sd	$a4,24($sp)
    c.eq.s $f2,$f3
    sd	$a5,16($sp)
    # Line 716
    sdc1	$f3,0($sp)
    # Line 722
    bc1f .L0d977e14
    sdc1	$f0,8($sp)
    lw	$at,1404($s1)
    beq	$at,$a0,.L0d977e40
.L0d977e14:
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,27200
    # Line 723
    addiu	$a2,$s1,764
    bal __glOdyim_EvalPoint2
    ldc1	$f13,0($sp)
    # Line 724
    li	$at,2
    sw	$at,1412($s1)
    # Line 725
    lw	$ra,4($s0)
    # Line 726
    ldc1	$f9,0($sp)
    # Line 725
    sw	$ra,1404($s1)
    # Line 726
    swc1	$f9,756($s1)
.L0d977e40:
    # Line 728
    ldc1	$f11,8($sp)
    lwc1	$f10,760($s1)
    c.eq.s $f10,$f11
    # Line 726
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 728
    lw	$a0,8($s0)
    bc1f .L0d977e64
    # Line 726
    addiu	$t9,$t9,27200
    # Line 728
    lw	$ra,1408($s1)
    beq	$ra,$a0,.L0d977e88
.L0d977e64:
    # Line 729
    ldc1	$f13,8($sp)
    bal __glOdyim_EvalPoint2
    addiu	$a2,$s1,924
    # Line 730
    li	$v0,2
    sw	$v0,1416($s1)
    # Line 731
    lw	$at,8($s0)
    # Line 732
    ldc1	$f12,8($sp)
    # Line 731
    sw	$at,1408($s1)
    # Line 732
    swc1	$f12,760($s1)
.L0d977e88:
    # Line 737
    lw	$a0,4($s0)
    li	$a2,4
    beq	$a0,$a2,.L0d978000
    # Line 735
    lw	$a4,0($s0)
    # Line 737
    li	$a3,3
    beq	$a0,$a3,.L0d978040
    li	$a6,2
    beq	$a0,$a6,.L0d978080
    li	$a7,1
    beq	$a0,$a7,.L0d9780c0
    nop
    blez	$a4,.L0d977fd8
    mtc1	$zero,$f8
    mtc1	$zero,$f7
    ld	$t8,16($sp)
    sll	$a6,$a4,0x2
    ld	$t3,24($sp)
    move	$a0,$t8
    addu	$t8,$a6,$t8
    nop
    nop
    nop
.L0d977ee0:
    # Line 1165
    swc1	$f8,0($t3)
    lw	$t9,4($s0)
    # Line 1163
    move	$a2,$a0
    # Line 1165
    blez	$t9,.L0d977fcc
    mov.s	$f6,$f7
    move	$t0,$s1
    move	$a3,$zero
    nop
.L0d977f00:
    lw	$t1,8($s0)
    li	$t2,1
    blez	$t1,.L0d977fac
    # Line 1169
    mtc1	$zero,$f4
    # Line 1165
    sll	$a5,$t1,0x2
    slt	$a7,$t1,$t2
    movz	$t2,$t1,$a7
    andi	$a7,$t2,0x3
    move	$a4,$s1
    mtc1	$zero,$f4
    addu	$a5,$a5,$s1
    beqz	$a7,.L0d977f50
    sra	$t1,$t2,0x2
.L0d977f34:
    # Line 1171
    lwc1	$f13,0($a2)
    lwc1	$f14,924($a4)
    addiu	$a7,$a7,-1
    # Line 1169
    addiu	$a4,$a4,4
    # Line 1172
    addu	$a2,$a6,$a2
    bnez	$a7,.L0d977f34
    # Line 1171
    madd.s	$f4,$f4,$f13,$f14
.L0d977f50:
    beqz	$t1,.L0d977fac
    nop
    nop
    nop
.L0d977f60:
    lwc1	$f11,0($a2)
    # Line 1172
    addu	$a2,$a6,$a2
    # Line 1171
    lwc1	$f12,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f9,928($a4)
    # Line 1172
    addu	$a2,$a6,$a2
    # Line 1171
    lwc1	$f10,0($a2)
    madd.s	$f4,$f4,$f11,$f12
    lwc1	$f11,932($a4)
    # Line 1172
    addu	$a2,$a6,$a2
    # Line 1169
    addiu	$a4,$a4,16
    # Line 1171
    madd.s	$f4,$f4,$f5,$f9
    lwc1	$f5,0($a2)
    lwc1	$f9,920($a4)
    # Line 1169
    sltu	$t2,$a4,$a5
    # Line 1171
    madd.s	$f4,$f4,$f10,$f11
    # Line 1172
    addu	$a2,$a6,$a2
    # Line 1169
    bnez	$t2,.L0d977f60
    # Line 1171
    madd.s	$f4,$f4,$f5,$f9
.L0d977fac:
    # Line 1174
    lwc1	$f13,764($t0)
    madd.s	$f6,$f6,$f13,$f4
    swc1	$f6,0($t3)
    # Line 1166
    lw	$a4,4($s0)
    addiu	$a3,$a3,1
    slt	$a4,$a3,$a4
    bnez	$a4,.L0d977f00
    addiu	$t0,$t0,4
.L0d977fcc:
    # Line 1161
    addiu	$a0,$a0,4
    bne	$a0,$t8,.L0d977ee0
    addiu	$t3,$t3,4
.L0d977fd8:
    ld	$s6,88($sp)
.L0d977fdc:
    ld	$s4,80($sp)
    ld	$s3,72($sp)
    ld	$s2,64($sp)
    ld	$ra,56($sp)
    ld	$s5,48($sp)
    # Line 1180
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d978000:
    # Line 740
    lw	$a0,8($s0)
    beq	$a0,$a2,.L0d978888
    li	$a5,3
    beq	$a0,$a5,.L0d978b94
    li	$a6,2
    beq	$a0,$a6,.L0d978dfc
    li	$a7,1
    beq	$a0,$a7,.L0d9794d4
    nop
    blez	$a4,.L0d977fd8
    ld	$t8,16($sp)
    sll	$a6,$a4,0x2
    move	$a0,$t8
    ld	$t3,24($sp)
    b	.L0d978314
    addu	$t8,$a6,$t8
.L0d978040:
    # Line 885
    lw	$a0,8($s0)
    beq	$a0,$a2,.L0d978a40
    nop
    beq	$a0,$a3,.L0d978cf0
    li	$t9,2
    beq	$a0,$t9,.L0d9792f0
    li	$ra,1
    beq	$a0,$ra,.L0d979674
    nop
    blez	$a4,.L0d977fd8
    ld	$t8,16($sp)
    sll	$a6,$a4,0x2
    move	$a0,$t8
    ld	$t3,24($sp)
    b	.L0d978564
    addu	$t8,$a6,$t8
.L0d978080:
    # Line 1004
    lw	$a0,8($s0)
    beq	$a0,$a2,.L0d978efc
    nop
    beq	$a0,$a3,.L0d97912c
    nop
    beq	$a0,$a6,.L0d97991c
    li	$t9,1
    beq	$a0,$t9,.L0d979b84
    nop
    blez	$a4,.L0d977fd8
    ld	$t8,16($sp)
    sll	$a6,$a4,0x2
    move	$a0,$t8
    ld	$t3,24($sp)
    b	.L0d9787a4
    addu	$t8,$a6,$t8
.L0d9780c0:
    # Line 1097
    lw	$a0,8($s0)
    beq	$a0,$a2,.L0d978ff0
    nop
    beq	$a0,$a3,.L0d9797bc
    nop
    beq	$a0,$a6,.L0d979a78
    nop
    beq	$a0,$a7,.L0d979ccc
    nop
    blez	$a4,.L0d977fd8
    ld	$t8,16($sp)
    sll	$a6,$a4,0x2
    move	$a0,$t8
    ld	$t3,24($sp)
    b	.L0d978874
    addu	$t8,$a6,$t8
.L0d978100:
    # Line 854
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d97813c
    addu	$a5,$a5,$s1
.L0d978120:
    # Line 859
    lwc1	$f14,0($a2)
    lwc1	$f15,924($a4)
    addiu	$a3,$a3,-1
    # Line 857
    addiu	$a4,$a4,4
    # Line 860
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978120
    # Line 859
    madd.s	$f4,$f4,$f14,$f15
.L0d97813c:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97819c
    nop
    nop
    nop
.L0d978150:
    lwc1	$f9,0($a2)
    # Line 860
    addu	$a2,$a6,$a2
    # Line 859
    lwc1	$f10,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f7,928($a4)
    # Line 860
    addu	$a2,$a6,$a2
    # Line 859
    lwc1	$f8,0($a2)
    madd.s	$f4,$f4,$f9,$f10
    lwc1	$f9,932($a4)
    # Line 860
    addu	$a2,$a6,$a2
    # Line 857
    addiu	$a4,$a4,16
    # Line 859
    madd.s	$f4,$f4,$f5,$f7
    lwc1	$f5,0($a2)
    lwc1	$f7,920($a4)
    # Line 857
    sltu	$t9,$a4,$a5
    # Line 859
    madd.s	$f4,$f4,$f8,$f9
    # Line 860
    addu	$a2,$a6,$a2
    # Line 857
    bnez	$t9,.L0d978150
    # Line 859
    madd.s	$f4,$f4,$f5,$f7
.L0d97819c:
    # Line 862
    lwc1	$f11,768($s1)
    madd.s	$f6,$f6,$f11,$f4
    swc1	$f6,0($t3)
    lw	$a7,8($s0)
    blez	$a7,.L0d9783e4
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d9781f0
    addu	$a5,$a5,$s1
.L0d9781d4:
    # Line 867
    lwc1	$f12,0($a2)
    lwc1	$f13,924($a4)
    addiu	$a3,$a3,-1
    # Line 865
    addiu	$a4,$a4,4
    # Line 868
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d9781d4
    # Line 867
    madd.s	$f4,$f4,$f12,$f13
.L0d9781f0:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97824c
    nop
    nop
.L0d978200:
    lwc1	$f9,0($a2)
    # Line 868
    addu	$a2,$a6,$a2
    # Line 867
    lwc1	$f10,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f7,928($a4)
    # Line 868
    addu	$a2,$a6,$a2
    # Line 867
    lwc1	$f8,0($a2)
    madd.s	$f4,$f4,$f9,$f10
    lwc1	$f9,932($a4)
    # Line 868
    addu	$a2,$a6,$a2
    # Line 865
    addiu	$a4,$a4,16
    # Line 867
    madd.s	$f4,$f4,$f5,$f7
    lwc1	$f5,0($a2)
    lwc1	$f7,920($a4)
    # Line 865
    sltu	$t9,$a4,$a5
    # Line 867
    madd.s	$f4,$f4,$f8,$f9
    # Line 868
    addu	$a2,$a6,$a2
    # Line 865
    bnez	$t9,.L0d978200
    # Line 867
    madd.s	$f4,$f4,$f5,$f7
.L0d97824c:
    # Line 870
    lwc1	$f11,772($s1)
    madd.s	$f6,$f6,$f11,$f4
    swc1	$f6,0($t3)
    lw	$a7,8($s0)
    blez	$a7,.L0d9783ec
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d9782a0
    addu	$a5,$a5,$s1
.L0d978284:
    # Line 875
    lwc1	$f12,0($a2)
    lwc1	$f13,924($a4)
    addiu	$a3,$a3,-1
    # Line 873
    addiu	$a4,$a4,4
    # Line 876
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978284
    # Line 875
    madd.s	$f4,$f4,$f12,$f13
.L0d9782a0:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d9782fc
    nop
    nop
.L0d9782b0:
    lwc1	$f9,0($a2)
    # Line 876
    addu	$a2,$a6,$a2
    # Line 875
    lwc1	$f10,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f7,928($a4)
    # Line 876
    addu	$a2,$a6,$a2
    # Line 875
    lwc1	$f8,0($a2)
    madd.s	$f4,$f4,$f9,$f10
    lwc1	$f9,932($a4)
    # Line 876
    addu	$a2,$a6,$a2
    # Line 873
    addiu	$a4,$a4,16
    # Line 875
    madd.s	$f4,$f4,$f5,$f7
    lwc1	$f5,0($a2)
    lwc1	$f7,920($a4)
    # Line 873
    sltu	$t9,$a4,$a5
    # Line 875
    madd.s	$f4,$f4,$f8,$f9
    # Line 876
    addu	$a2,$a6,$a2
    # Line 873
    bnez	$t9,.L0d9782b0
    # Line 875
    madd.s	$f4,$f4,$f5,$f7
.L0d9782fc:
    # Line 878
    lwc1	$f11,776($s1)
    madd.s	$f11,$f6,$f11,$f4
    # Line 844
    addiu	$a0,$a0,4
    addiu	$t3,$t3,4
    beq	$a0,$t8,.L0d977fd8
    # Line 878
    swc1	$f11,-4($t3)
.L0d978314:
    # Line 846
    lw	$a7,8($s0)
    blez	$a7,.L0d9783dc
    move	$a2,$a0
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d978360
    addu	$a5,$a5,$s1
.L0d978344:
    # Line 851
    lwc1	$f12,0($a2)
    lwc1	$f13,924($a4)
    addiu	$a3,$a3,-1
    # Line 849
    addiu	$a4,$a4,4
    # Line 852
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978344
    # Line 851
    madd.s	$f4,$f4,$f12,$f13
.L0d978360:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d9783bc
    nop
    nop
.L0d978370:
    lwc1	$f8,0($a2)
    # Line 852
    addu	$a2,$a6,$a2
    # Line 851
    lwc1	$f9,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f6,928($a4)
    # Line 852
    addu	$a2,$a6,$a2
    # Line 851
    lwc1	$f7,0($a2)
    madd.s	$f4,$f4,$f8,$f9
    lwc1	$f8,932($a4)
    # Line 852
    addu	$a2,$a6,$a2
    # Line 849
    addiu	$a4,$a4,16
    # Line 851
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f5,0($a2)
    lwc1	$f6,920($a4)
    # Line 849
    sltu	$t9,$a4,$a5
    # Line 851
    madd.s	$f4,$f4,$f7,$f8
    # Line 852
    addu	$a2,$a6,$a2
    # Line 849
    bnez	$t9,.L0d978370
    # Line 851
    madd.s	$f4,$f4,$f5,$f6
.L0d9783bc:
    # Line 854
    lwc1	$f6,764($s1)
    mul.s	$f6,$f6,$f4
    swc1	$f6,0($t3)
    lw	$a7,8($s0)
    bgtz	$a7,.L0d978100
    li	$t0,1
    b	.L0d97819c
    # Line 857
    mtc1	$zero,$f4
.L0d9783dc:
    b	.L0d9783bc
    # Line 849
    mtc1	$zero,$f4
.L0d9783e4:
    b	.L0d97824c
    # Line 865
    mtc1	$zero,$f4
.L0d9783ec:
    b	.L0d9782fc
    # Line 873
    mtc1	$zero,$f4
    nop
    nop
    nop
.L0d978400:
    # Line 981
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d97843c
    addu	$a5,$a5,$s1
.L0d978420:
    # Line 986
    lwc1	$f7,0($a2)
    lwc1	$f8,924($a4)
    addiu	$a3,$a3,-1
    # Line 984
    addiu	$a4,$a4,4
    # Line 987
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978420
    # Line 986
    madd.s	$f4,$f4,$f7,$f8
.L0d97843c:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97849c
    nop
    nop
    nop
.L0d978450:
    lwc1	$f9,0($a2)
    # Line 987
    addu	$a2,$a6,$a2
    # Line 986
    lwc1	$f10,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f7,928($a4)
    # Line 987
    addu	$a2,$a6,$a2
    # Line 986
    lwc1	$f8,0($a2)
    madd.s	$f4,$f4,$f9,$f10
    lwc1	$f9,932($a4)
    # Line 987
    addu	$a2,$a6,$a2
    # Line 984
    addiu	$a4,$a4,16
    # Line 986
    madd.s	$f4,$f4,$f5,$f7
    lwc1	$f5,0($a2)
    lwc1	$f7,920($a4)
    # Line 984
    sltu	$t9,$a4,$a5
    # Line 986
    madd.s	$f4,$f4,$f8,$f9
    # Line 987
    addu	$a2,$a6,$a2
    # Line 984
    bnez	$t9,.L0d978450
    # Line 986
    madd.s	$f4,$f4,$f5,$f7
.L0d97849c:
    # Line 989
    lwc1	$f11,768($s1)
    madd.s	$f6,$f6,$f11,$f4
    swc1	$f6,0($t3)
    lw	$a7,8($s0)
    blez	$a7,.L0d978634
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d9784f0
    addu	$a5,$a5,$s1
.L0d9784d4:
    # Line 994
    lwc1	$f12,0($a2)
    lwc1	$f13,924($a4)
    addiu	$a3,$a3,-1
    # Line 992
    addiu	$a4,$a4,4
    # Line 995
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d9784d4
    # Line 994
    madd.s	$f4,$f4,$f12,$f13
.L0d9784f0:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97854c
    nop
    nop
.L0d978500:
    lwc1	$f9,0($a2)
    # Line 995
    addu	$a2,$a6,$a2
    # Line 994
    lwc1	$f10,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f7,928($a4)
    # Line 995
    addu	$a2,$a6,$a2
    # Line 994
    lwc1	$f8,0($a2)
    madd.s	$f4,$f4,$f9,$f10
    lwc1	$f9,932($a4)
    # Line 995
    addu	$a2,$a6,$a2
    # Line 992
    addiu	$a4,$a4,16
    # Line 994
    madd.s	$f4,$f4,$f5,$f7
    lwc1	$f5,0($a2)
    lwc1	$f7,920($a4)
    # Line 992
    sltu	$t9,$a4,$a5
    # Line 994
    madd.s	$f4,$f4,$f8,$f9
    # Line 995
    addu	$a2,$a6,$a2
    # Line 992
    bnez	$t9,.L0d978500
    # Line 994
    madd.s	$f4,$f4,$f5,$f7
.L0d97854c:
    # Line 997
    lwc1	$f11,772($s1)
    madd.s	$f11,$f6,$f11,$f4
    # Line 971
    addiu	$a0,$a0,4
    addiu	$t3,$t3,4
    beq	$a0,$t8,.L0d977fd8
    # Line 997
    swc1	$f11,-4($t3)
.L0d978564:
    # Line 973
    lw	$a7,8($s0)
    blez	$a7,.L0d97862c
    move	$a2,$a0
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d9785b0
    addu	$a5,$a5,$s1
.L0d978594:
    # Line 978
    lwc1	$f12,0($a2)
    lwc1	$f13,924($a4)
    addiu	$a3,$a3,-1
    # Line 976
    addiu	$a4,$a4,4
    # Line 979
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978594
    # Line 978
    madd.s	$f4,$f4,$f12,$f13
.L0d9785b0:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97860c
    nop
    nop
.L0d9785c0:
    lwc1	$f8,0($a2)
    # Line 979
    addu	$a2,$a6,$a2
    # Line 978
    lwc1	$f9,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f6,928($a4)
    # Line 979
    addu	$a2,$a6,$a2
    # Line 978
    lwc1	$f7,0($a2)
    madd.s	$f4,$f4,$f8,$f9
    lwc1	$f8,932($a4)
    # Line 979
    addu	$a2,$a6,$a2
    # Line 976
    addiu	$a4,$a4,16
    # Line 978
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f5,0($a2)
    lwc1	$f6,920($a4)
    # Line 976
    sltu	$t9,$a4,$a5
    # Line 978
    madd.s	$f4,$f4,$f7,$f8
    # Line 979
    addu	$a2,$a6,$a2
    # Line 976
    bnez	$t9,.L0d9785c0
    # Line 978
    madd.s	$f4,$f4,$f5,$f6
.L0d97860c:
    # Line 981
    lwc1	$f6,764($s1)
    mul.s	$f6,$f6,$f4
    swc1	$f6,0($t3)
    lw	$a7,8($s0)
    bgtz	$a7,.L0d978400
    li	$t0,1
    b	.L0d97849c
    # Line 984
    mtc1	$zero,$f4
.L0d97862c:
    b	.L0d97860c
    # Line 976
    mtc1	$zero,$f4
.L0d978634:
    b	.L0d97854c
    # Line 992
    mtc1	$zero,$f4
    nop
.L0d978640:
    # Line 1074
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d978680
    addu	$a5,$a5,$s1
.L0d978664:
    # Line 1079
    lwc1	$f7,0($a2)
    lwc1	$f8,924($a4)
    addiu	$a3,$a3,-1
    # Line 1077
    addiu	$a4,$a4,4
    # Line 1080
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978664
    # Line 1079
    madd.s	$f4,$f4,$f7,$f8
.L0d978680:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d9786dc
    nop
    nop
.L0d978690:
    lwc1	$f8,0($a2)
    # Line 1080
    addu	$a2,$a6,$a2
    # Line 1079
    lwc1	$f9,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f6,928($a4)
    # Line 1080
    addu	$a2,$a6,$a2
    # Line 1079
    lwc1	$f7,0($a2)
    madd.s	$f4,$f4,$f8,$f9
    lwc1	$f8,932($a4)
    # Line 1080
    addu	$a2,$a6,$a2
    # Line 1077
    addiu	$a4,$a4,16
    # Line 1079
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f5,0($a2)
    lwc1	$f6,920($a4)
    # Line 1077
    sltu	$t9,$a4,$a5
    # Line 1079
    madd.s	$f4,$f4,$f7,$f8
    # Line 1080
    addu	$a2,$a6,$a2
    # Line 1077
    bnez	$t9,.L0d978690
    # Line 1079
    madd.s	$f4,$f4,$f5,$f6
.L0d9786dc:
    # Line 1082
    lwc1	$f6,764($s1)
    mul.s	$f6,$f6,$f4
    swc1	$f6,0($t3)
    lw	$a7,8($s0)
    blez	$a7,.L0d9787b8
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d978730
    addu	$a5,$a5,$s1
.L0d978714:
    # Line 1087
    lwc1	$f7,0($a2)
    lwc1	$f8,924($a4)
    addiu	$a3,$a3,-1
    # Line 1085
    addiu	$a4,$a4,4
    # Line 1088
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d978714
    # Line 1087
    madd.s	$f4,$f4,$f7,$f8
.L0d978730:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97878c
    nop
    nop
.L0d978740:
    lwc1	$f9,0($a2)
    # Line 1088
    addu	$a2,$a6,$a2
    # Line 1087
    lwc1	$f10,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f7,928($a4)
    # Line 1088
    addu	$a2,$a6,$a2
    # Line 1087
    lwc1	$f8,0($a2)
    madd.s	$f4,$f4,$f9,$f10
    lwc1	$f9,932($a4)
    # Line 1088
    addu	$a2,$a6,$a2
    # Line 1085
    addiu	$a4,$a4,16
    # Line 1087
    madd.s	$f4,$f4,$f5,$f7
    lwc1	$f5,0($a2)
    lwc1	$f7,920($a4)
    # Line 1085
    sltu	$t9,$a4,$a5
    # Line 1087
    madd.s	$f4,$f4,$f8,$f9
    # Line 1088
    addu	$a2,$a6,$a2
    # Line 1085
    bnez	$t9,.L0d978740
    # Line 1087
    madd.s	$f4,$f4,$f5,$f7
.L0d97878c:
    # Line 1090
    lwc1	$f11,768($s1)
    madd.s	$f11,$f6,$f11,$f4
    # Line 1072
    addiu	$a0,$a0,4
    addiu	$t3,$t3,4
    beq	$a0,$t8,.L0d977fd8
    # Line 1090
    swc1	$f11,-4($t3)
.L0d9787a4:
    # Line 1074
    lw	$a7,8($s0)
    bgtz	$a7,.L0d978640
    move	$a2,$a0
    b	.L0d9786dc
    # Line 1077
    mtc1	$zero,$f4
.L0d9787b8:
    b	.L0d97878c
    # Line 1085
    mtc1	$zero,$f4
.L0d9787c0:
    # Line 1145
    li	$t0,1
    slt	$t1,$a7,$t0
    movz	$t0,$a7,$t1
    mtc1	$zero,$f4
    andi	$a3,$t0,0x3
    move	$a4,$s1
    sll	$a5,$a7,0x2
    beqz	$a3,.L0d978800
    addu	$a5,$a5,$s1
.L0d9787e4:
    # Line 1150
    lwc1	$f12,0($a2)
    lwc1	$f13,924($a4)
    addiu	$a3,$a3,-1
    # Line 1148
    addiu	$a4,$a4,4
    # Line 1151
    addu	$a2,$a6,$a2
    bnez	$a3,.L0d9787e4
    # Line 1150
    madd.s	$f4,$f4,$f12,$f13
.L0d978800:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0d97885c
    nop
    nop
.L0d978810:
    lwc1	$f8,0($a2)
    # Line 1151
    addu	$a2,$a6,$a2
    # Line 1150
    lwc1	$f9,924($a4)
    lwc1	$f5,0($a2)
    lwc1	$f6,928($a4)
    # Line 1151
    addu	$a2,$a6,$a2
    # Line 1150
    lwc1	$f7,0($a2)
    madd.s	$f4,$f4,$f8,$f9
    lwc1	$f8,932($a4)
    # Line 1151
    addu	$a2,$a6,$a2
    # Line 1148
    addiu	$a4,$a4,16
    # Line 1150
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f5,0($a2)
    lwc1	$f6,920($a4)
    # Line 1148
    sltu	$t9,$a4,$a5
    # Line 1150
    madd.s	$f4,$f4,$f7,$f8
    # Line 1151
    addu	$a2,$a6,$a2
    # Line 1148
    bnez	$t9,.L0d978810
    # Line 1150
    madd.s	$f4,$f4,$f5,$f6
.L0d97885c:
    # Line 1153
    lwc1	$f10,764($s1)
    # Line 1143
    addiu	$a0,$a0,4
    addiu	$t3,$t3,4
    # Line 1153
    mul.s	$f10,$f10,$f4
    # Line 1143
    beq	$a0,$t8,.L0d977fd8
    # Line 1153
    swc1	$f10,-4($t3)
.L0d978874:
    # Line 1145
    lw	$a7,8($s0)
    bgtz	$a7,.L0d9787c0
    move	$a2,$a0
    b	.L0d97885c
    # Line 1148
    mtc1	$zero,$f4
.L0d978888:
    # Line 743
    blez	$a4,.L0d977fd8
    ld	$a6,16($sp)
    addu	$s6,$a4,$a4
    move	$a0,$a6
    sll	$s5,$s6,0x2
    addu	$a3,$s5,$a6
    addu	$s6,$s6,$a4
    sll	$s3,$a4,0x2
    addu	$s4,$s6,$a4
    addu	$a2,$s3,$a6
    sll	$s4,$s4,0x2
    sll	$s6,$s6,0x2
    addu	$s2,$s4,$a6
    addu	$a7,$a2,$s3
    addu	$t2,$s2,$s6
    addu	$t1,$s2,$s5
    addu	$t8,$s2,$s3
    move	$t0,$s2
    addu	$s2,$s2,$s4
    addu	$a6,$s6,$a6
    addu	$t9,$s2,$s3
    addu	$ra,$s2,$s5
    addu	$s4,$s2,$s4
    addu	$s0,$s2,$s6
    addu	$s6,$s4,$s6
    ld	$t3,24($sp)
    addu	$s5,$s4,$s5
    addu	$s3,$s4,$s3
    nop
    nop
.L0d978900:
    # Line 752
    lwc1	$f13,0($a0)
    lwc1	$f12,928($s1)
    lwc1	$f16,0($a2)
    lwc1	$f14,924($s1)
    lwc1	$f15,932($s1)
    mul.s	$f12,$f12,$f16
    lwc1	$f16,0($a3)
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f13,936($s1)
    lwc1	$f14,0($a6)
    madd.s	$f12,$f12,$f15,$f16
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f11,764($s1)
    mul.s	$f11,$f11,$f12
    swc1	$f11,0($t3)
    # Line 757
    lwc1	$f13,0($t0)
    lwc1	$f17,924($s1)
    lwc1	$f14,928($s1)
    lwc1	$f15,0($t8)
    lwc1	$f16,932($s1)
    mul.s	$f13,$f13,$f17
    lwc1	$f17,0($t1)
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f14,936($s1)
    lwc1	$f15,0($t2)
    madd.s	$f13,$f13,$f16,$f17
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f12,768($s1)
    madd.s	$f11,$f11,$f12,$f13
    swc1	$f11,0($t3)
    # Line 760
    lwc1	$f13,0($s2)
    lwc1	$f17,924($s1)
    lwc1	$f14,928($s1)
    lwc1	$f15,0($t9)
    lwc1	$f16,932($s1)
    mul.s	$f13,$f13,$f17
    lwc1	$f17,0($ra)
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f14,936($s1)
    lwc1	$f15,0($s0)
    madd.s	$f13,$f13,$f16,$f17
    madd.s	$f13,$f13,$f14,$f15
    # Line 762
    lwc1	$f12,772($s1)
    madd.s	$f11,$f11,$f12,$f13
    swc1	$f11,0($t3)
    # Line 765
    lwc1	$f13,0($s4)
    lwc1	$f17,924($s1)
    lwc1	$f14,928($s1)
    lwc1	$f15,0($s3)
    lwc1	$f16,932($s1)
    mul.s	$f13,$f13,$f17
    lwc1	$f17,0($s5)
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f14,936($s1)
    lwc1	$f15,0($s6)
    madd.s	$f13,$f13,$f16,$f17
    madd.s	$f13,$f13,$f14,$f15
    # Line 747
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    # Line 767
    lwc1	$f12,776($s1)
    # Line 747
    addiu	$t8,$t8,4
    addiu	$t1,$t1,4
    addiu	$t2,$t2,4
    addiu	$t9,$t9,4
    addiu	$ra,$ra,4
    addiu	$s0,$s0,4
    # Line 767
    madd.s	$f11,$f11,$f12,$f13
    # Line 747
    addiu	$s3,$s3,4
    addiu	$s5,$s5,4
    addiu	$s6,$s6,4
    addiu	$s4,$s4,4
    addiu	$s2,$s2,4
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bne	$a2,$a7,.L0d978900
    # Line 767
    swc1	$f11,-4($t3)
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d978a40:
    # Line 888
    blez	$a4,.L0d977fd8
    ld	$a6,16($sp)
    sll	$t9,$a4,0x2
    move	$a0,$a6
    addu	$s0,$a4,$a4
    sll	$ra,$s0,0x2
    addu	$s0,$s0,$a4
    addu	$a3,$ra,$a6
    addu	$at,$s0,$a4
    addu	$a2,$t9,$a6
    sll	$at,$at,0x2
    sll	$s0,$s0,0x2
    addu	$s2,$at,$a6
    addu	$a7,$a2,$t9
    addu	$t2,$s2,$s0
    addu	$t1,$s2,$ra
    addu	$t8,$s2,$t9
    move	$t0,$s2
    addu	$s2,$s2,$at
    addu	$a6,$s0,$a6
    addu	$s0,$s2,$s0
    ld	$t3,24($sp)
    addu	$ra,$s2,$ra
    addu	$t9,$s2,$t9
.L0d978aa0:
    # Line 897
    lwc1	$f19,0($a0)
    lwc1	$f18,928($s1)
    lwc1	$f25,0($a2)
    lwc1	$f21,924($s1)
    lwc1	$f23,932($s1)
    mul.s	$f18,$f18,$f25
    lwc1	$f25,0($a3)
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f19,936($s1)
    lwc1	$f21,0($a6)
    madd.s	$f18,$f18,$f23,$f25
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f17,764($s1)
    mul.s	$f17,$f17,$f18
    swc1	$f17,0($t3)
    # Line 902
    lwc1	$f19,0($t0)
    lwc1	$f27,924($s1)
    lwc1	$f21,928($s1)
    lwc1	$f23,0($t8)
    lwc1	$f25,932($s1)
    mul.s	$f19,$f19,$f27
    lwc1	$f27,0($t1)
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f21,936($s1)
    lwc1	$f23,0($t2)
    madd.s	$f19,$f19,$f25,$f27
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f18,768($s1)
    madd.s	$f17,$f17,$f18,$f19
    swc1	$f17,0($t3)
    # Line 905
    lwc1	$f19,0($s2)
    lwc1	$f27,924($s1)
    lwc1	$f21,928($s1)
    lwc1	$f23,0($t9)
    lwc1	$f25,932($s1)
    mul.s	$f19,$f19,$f27
    lwc1	$f27,0($ra)
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f21,936($s1)
    lwc1	$f23,0($s0)
    madd.s	$f19,$f19,$f25,$f27
    madd.s	$f19,$f19,$f21,$f23
    # Line 907
    lwc1	$f18,772($s1)
    # Line 892
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    addiu	$t8,$t8,4
    addiu	$t1,$t1,4
    # Line 907
    madd.s	$f17,$f17,$f18,$f19
    # Line 892
    addiu	$t2,$t2,4
    addiu	$t9,$t9,4
    addiu	$ra,$ra,4
    addiu	$s0,$s0,4
    addiu	$s2,$s2,4
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bne	$a2,$a7,.L0d978aa0
    # Line 907
    swc1	$f17,-4($t3)
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d978b94:
    # Line 772
    blez	$a4,.L0d977fd8
    ld	$ra,16($sp)
    sll	$s0,$a4,0x2
    addu	$a2,$s0,$ra
    addu	$a7,$a2,$s0
    addu	$at,$a4,$a4
    sll	$s2,$at,0x2
    addu	$at,$at,$a4
    move	$a0,$ra
    sll	$at,$at,0x2
    addu	$a3,$s2,$ra
    addu	$ra,$at,$ra
    addu	$t0,$ra,$s2
    addu	$t1,$ra,$s0
    move	$a6,$ra
    addu	$ra,$ra,$at
    addu	$t9,$ra,$s2
    addu	$t8,$ra,$s0
    move	$t2,$ra
    addu	$ra,$ra,$at
    ld	$t3,24($sp)
    addu	$s2,$ra,$s2
    addu	$s0,$ra,$s0
.L0d978bf0:
    # Line 780
    lwc1	$f1,0($a0)
    lwc1	$f29,928($s1)
    lwc1	$f0,0($a2)
    lwc1	$f2,924($s1)
    lwc1	$f31,932($s1)
    mul.s	$f29,$f29,$f0
    lwc1	$f0,0($a3)
    madd.s	$f29,$f29,$f1,$f2
    madd.s	$f29,$f29,$f31,$f0
    lwc1	$f27,764($s1)
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($t3)
    # Line 785
    lwc1	$f31,0($a6)
    lwc1	$f1,924($s1)
    lwc1	$f2,928($s1)
    lwc1	$f3,0($t1)
    lwc1	$f0,932($s1)
    mul.s	$f31,$f31,$f1
    lwc1	$f1,0($t0)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,768($s1)
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,0($t3)
    # Line 790
    lwc1	$f31,0($t2)
    lwc1	$f1,924($s1)
    lwc1	$f2,928($s1)
    lwc1	$f3,0($t8)
    lwc1	$f0,932($s1)
    mul.s	$f31,$f31,$f1
    lwc1	$f1,0($t9)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,772($s1)
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,0($t3)
    # Line 795
    lwc1	$f31,0($ra)
    lwc1	$f1,924($s1)
    lwc1	$f2,928($s1)
    lwc1	$f3,0($s0)
    lwc1	$f0,932($s1)
    mul.s	$f31,$f31,$f1
    lwc1	$f1,0($s2)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,776($s1)
    # Line 775
    addiu	$a3,$a3,4
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$t8,$t8,4
    # Line 795
    madd.s	$f27,$f27,$f29,$f31
    # Line 775
    addiu	$t9,$t9,4
    addiu	$s0,$s0,4
    addiu	$s2,$s2,4
    addiu	$ra,$ra,4
    addiu	$t2,$t2,4
    addiu	$a2,$a2,4
    addiu	$a6,$a6,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bne	$a2,$a7,.L0d978bf0
    # Line 795
    swc1	$f27,-4($t3)
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d978cf0:
    # Line 912
    blez	$a4,.L0d977fd8
    ld	$a6,16($sp)
    sll	$t8,$a4,0x2
    move	$a0,$a6
    addu	$t2,$a4,$a4
    sll	$t9,$t2,0x2
    addu	$t2,$t2,$a4
    addu	$a3,$t9,$a6
    sll	$t2,$t2,0x2
    addu	$a2,$t8,$a6
    addu	$a6,$t2,$a6
    addu	$a7,$a2,$t8
    addu	$t1,$a6,$t8
    addu	$t0,$a6,$t9
    addu	$t2,$a6,$t2
    ld	$t3,24($sp)
    addu	$t9,$t2,$t9
    addu	$t8,$t2,$t8
.L0d978d38:
    # Line 920
    lwc1	$f5,0($a0)
    lwc1	$f2,928($s1)
    lwc1	$f4,0($a2)
    lwc1	$f6,924($s1)
    lwc1	$f3,932($s1)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,0($a3)
    madd.s	$f2,$f2,$f5,$f6
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,764($s1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($t3)
    # Line 925
    lwc1	$f3,0($a6)
    lwc1	$f5,924($s1)
    lwc1	$f6,928($s1)
    lwc1	$f7,0($t1)
    lwc1	$f4,932($s1)
    mul.s	$f3,$f3,$f5
    lwc1	$f5,0($t0)
    madd.s	$f3,$f3,$f6,$f7
    madd.s	$f3,$f3,$f4,$f5
    lwc1	$f2,768($s1)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,0($t3)
    # Line 930
    lwc1	$f3,0($t2)
    lwc1	$f5,924($s1)
    lwc1	$f6,928($s1)
    lwc1	$f7,0($t8)
    lwc1	$f4,932($s1)
    mul.s	$f3,$f3,$f5
    lwc1	$f5,0($t9)
    madd.s	$f3,$f3,$f6,$f7
    madd.s	$f3,$f3,$f4,$f5
    lwc1	$f2,772($s1)
    # Line 915
    addiu	$a3,$a3,4
    # Line 930
    madd.s	$f1,$f1,$f2,$f3
    # Line 915
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$t8,$t8,4
    addiu	$t9,$t9,4
    addiu	$t2,$t2,4
    addiu	$a2,$a2,4
    addiu	$a6,$a6,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bne	$a2,$a7,.L0d978d38
    # Line 930
    swc1	$f1,-4($t3)
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d978dfc:
    # Line 800
    blez	$a4,.L0d977fd8
    ld	$t1,16($sp)
    sll	$t2,$a4,0x2
    addu	$t8,$a4,$a4
    sll	$t8,$t8,0x2
    move	$a0,$t1
    addu	$a2,$t2,$t1
    addu	$t1,$t8,$t1
    addu	$a6,$t1,$t2
    move	$a3,$t1
    addu	$t1,$t1,$t8
    addu	$a7,$a2,$t2
    addu	$t8,$t1,$t8
    ld	$t3,24($sp)
    addu	$t0,$t1,$t2
    addu	$t2,$t8,$t2
.L0d978e3c:
    # Line 806
    lwc1	$f7,0($a0)
    lwc1	$f6,928($s1)
    lwc1	$f9,0($a2)
    lwc1	$f8,924($s1)
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f5,764($s1)
    mul.s	$f5,$f5,$f6
    swc1	$f5,0($t3)
    # Line 810
    lwc1	$f8,0($a3)
    lwc1	$f7,928($s1)
    lwc1	$f10,0($a6)
    lwc1	$f9,924($s1)
    mul.s	$f7,$f7,$f10
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f6,768($s1)
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,0($t3)
    # Line 814
    lwc1	$f8,0($t1)
    lwc1	$f7,928($s1)
    lwc1	$f10,0($t0)
    lwc1	$f9,924($s1)
    mul.s	$f7,$f7,$f10
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f6,772($s1)
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,0($t3)
    # Line 818
    lwc1	$f8,0($t8)
    lwc1	$f7,928($s1)
    lwc1	$f10,0($t2)
    lwc1	$f9,924($s1)
    mul.s	$f7,$f7,$f10
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f6,776($s1)
    madd.s	$f5,$f5,$f6,$f7
    # Line 802
    addiu	$a6,$a6,4
    addiu	$t0,$t0,4
    addiu	$t2,$t2,4
    addiu	$t8,$t8,4
    addiu	$t1,$t1,4
    addiu	$a2,$a2,4
    addiu	$a3,$a3,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bne	$a2,$a7,.L0d978e3c
    # Line 818
    swc1	$f5,-4($t3)
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d978efc:
    # Line 1007
    blez	$a4,.L0d977fd8
    ld	$t0,16($sp)
    sll	$t8,$a4,0x2
    addu	$t9,$a4,$a4
    move	$a0,$t0
    sll	$t1,$t9,0x2
    addu	$a3,$t1,$t0
    addu	$t9,$t9,$a4
    sll	$t2,$t9,0x2
    addu	$t9,$t9,$a4
    addu	$a2,$t8,$t0
    sll	$t9,$t9,0x2
    addu	$a6,$t2,$t0
    addu	$t0,$t0,$t9
    addu	$a7,$a2,$t8
    addu	$t2,$t0,$t2
    ld	$t3,24($sp)
    addu	$t1,$t0,$t1
    addu	$t8,$t0,$t8
.L0d978f48:
    # Line 1016
    lwc1	$f12,0($a0)
    lwc1	$f11,928($s1)
    lwc1	$f15,0($a2)
    lwc1	$f13,924($s1)
    lwc1	$f14,932($s1)
    mul.s	$f11,$f11,$f15
    lwc1	$f15,0($a3)
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f12,936($s1)
    lwc1	$f13,0($a6)
    madd.s	$f11,$f11,$f14,$f15
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f10,764($s1)
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($t3)
    # Line 1021
    lwc1	$f12,0($t0)
    lwc1	$f16,924($s1)
    lwc1	$f13,928($s1)
    lwc1	$f14,0($t8)
    lwc1	$f15,932($s1)
    mul.s	$f12,$f12,$f16
    lwc1	$f16,0($t1)
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f13,936($s1)
    lwc1	$f14,0($t2)
    madd.s	$f12,$f12,$f15,$f16
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f11,768($s1)
    madd.s	$f10,$f10,$f11,$f12
    # Line 1011
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    addiu	$t8,$t8,4
    addiu	$t1,$t1,4
    addiu	$t2,$t2,4
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bne	$a2,$a7,.L0d978f48
    # Line 1021
    swc1	$f10,-4($t3)
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d978ff0:
    # Line 1100
    blez	$a4,.L0d977fd8
    andi	$t2,$a4,0x1
    ld	$a6,16($sp)
    sll	$a7,$a4,0x2
    addu	$t1,$a4,$a4
    move	$a0,$a6
    sll	$a3,$t1,0x2
    addu	$a3,$a3,$a6
    addu	$t1,$t1,$a4
    sll	$t1,$t1,0x2
    addu	$t0,$a7,$a6
    addu	$a7,$t0,$a7
    move	$a2,$t0
    ld	$t3,24($sp)
    beqz	$t2,.L0d979088
    addu	$a6,$a6,$t1
    # Line 1108
    lwc1	$f19,924($s1)
    lwc1	$f23,0($t0)
    ld	$a0,16($sp)
    lwc1	$f17,928($s1)
    lwc1	$f18,0($a0)
    lwc1	$f21,932($s1)
    mul.s	$f17,$f17,$f23
    lwc1	$f23,0($a3)
    madd.s	$f17,$f17,$f18,$f19
    lwc1	$f19,0($a6)
    lwc1	$f18,936($s1)
    madd.s	$f17,$f17,$f21,$f23
    madd.s	$f17,$f17,$f18,$f19
    lwc1	$f16,764($s1)
    # Line 1103
    addiu	$a2,$t0,4
    ld	$a5,24($sp)
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    # Line 1108
    mul.s	$f16,$f16,$f17
    # Line 1103
    addiu	$a0,$a0,4
    addiu	$t3,$a5,4
    # Line 1108
    swc1	$f16,0($a5)
.L0d979088:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d979124
    nop
.L0d979094:
    lwc1	$f4,0($a0)
    lwc1	$f3,928($s1)
    lwc1	$f7,0($a2)
    lwc1	$f5,924($s1)
    lwc1	$f6,932($s1)
    mul.s	$f3,$f3,$f7
    lwc1	$f7,0($a3)
    madd.s	$f3,$f3,$f4,$f5
    lwc1	$f4,936($s1)
    lwc1	$f5,0($a6)
    madd.s	$f3,$f3,$f6,$f7
    madd.s	$f3,$f3,$f4,$f5
    lwc1	$f2,764($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($t3)
    lwc1	$f29,4($a0)
    lwc1	$f27,928($s1)
    lwc1	$f1,4($a2)
    lwc1	$f31,924($s1)
    lwc1	$f0,932($s1)
    mul.s	$f27,$f27,$f1
    lwc1	$f1,4($a3)
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f29,936($s1)
    lwc1	$f31,4($a6)
    madd.s	$f27,$f27,$f0,$f1
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f25,764($s1)
    # Line 1103
    addiu	$a3,$a3,8
    addiu	$a2,$a2,8
    addiu	$a6,$a6,8
    addiu	$t3,$t3,8
    # Line 1108
    mul.s	$f25,$f25,$f27
    # Line 1103
    addiu	$a0,$a0,8
    bne	$a2,$a7,.L0d979094
    # Line 1108
    swc1	$f25,-4($t3)
.L0d979124:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d97912c:
    # Line 1026
    blez	$a4,.L0d977fd8
    sll	$t1,$a4,0x2
    ld	$t8,16($sp)
    addu	$t9,$a4,$a4
    andi	$a5,$a4,0x1
    sll	$t0,$t9,0x2
    move	$a0,$t8
    addu	$a3,$t0,$t8
    addu	$t2,$t1,$t8
    addu	$t9,$t9,$a4
    move	$a2,$t2
    sll	$t9,$t9,0x2
    addu	$a7,$t2,$t1
    addu	$t8,$t8,$t9
    addu	$t0,$t8,$t0
    addu	$t1,$t8,$t1
    ld	$t3,24($sp)
    beqz	$a5,.L0d9791fc
    move	$a6,$t8
    # Line 1034
    lwc1	$f13,924($s1)
    lwc1	$f11,0($t2)
    ld	$a0,16($sp)
    lwc1	$f9,928($s1)
    lwc1	$f12,0($a0)
    lwc1	$f10,932($s1)
    mul.s	$f9,$f9,$f11
    lwc1	$f11,0($a3)
    madd.s	$f9,$f9,$f12,$f13
    madd.s	$f9,$f9,$f10,$f11
    lwc1	$f8,764($s1)
    ld	$ra,24($sp)
    mul.s	$f8,$f8,$f9
    swc1	$f8,0($ra)
    # Line 1039
    lwc1	$f14,0($t1)
    lwc1	$f12,924($s1)
    lwc1	$f10,0($t8)
    lwc1	$f13,928($s1)
    lwc1	$f11,932($s1)
    mul.s	$f10,$f10,$f12
    lwc1	$f12,0($t0)
    madd.s	$f10,$f10,$f13,$f14
    madd.s	$f10,$f10,$f11,$f12
    lwc1	$f9,768($s1)
    madd.s	$f8,$f8,$f9,$f10
    # Line 1029
    addiu	$a2,$t2,4
    addiu	$a3,$a3,4
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a6,$t8,4
    addiu	$a0,$a0,4
    addiu	$t3,$ra,4
    # Line 1039
    swc1	$f8,0($ra)
.L0d9791fc:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d9792e8
    nop
.L0d979208:
    # Line 1034
    lwc1	$f21,0($a0)
    lwc1	$f17,928($s1)
    lwc1	$f19,0($a2)
    lwc1	$f23,924($s1)
    lwc1	$f18,932($s1)
    mul.s	$f17,$f17,$f19
    lwc1	$f19,0($a3)
    madd.s	$f17,$f17,$f21,$f23
    madd.s	$f17,$f17,$f18,$f19
    lwc1	$f16,764($s1)
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($t3)
    # Line 1039
    lwc1	$f23,0($a6)
    lwc1	$f18,928($s1)
    lwc1	$f21,0($t1)
    lwc1	$f25,924($s1)
    lwc1	$f19,932($s1)
    mul.s	$f18,$f18,$f21
    lwc1	$f21,0($t0)
    madd.s	$f18,$f18,$f23,$f25
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f17,768($s1)
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($t3)
    # Line 1034
    lwc1	$f16,4($a0)
    lwc1	$f13,928($s1)
    lwc1	$f15,4($a2)
    lwc1	$f17,924($s1)
    lwc1	$f14,932($s1)
    mul.s	$f13,$f13,$f15
    lwc1	$f15,4($a3)
    madd.s	$f13,$f13,$f16,$f17
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f12,764($s1)
    mul.s	$f12,$f12,$f13
    swc1	$f12,4($t3)
    # Line 1039
    lwc1	$f14,4($a6)
    lwc1	$f16,924($s1)
    lwc1	$f17,928($s1)
    lwc1	$f18,4($t1)
    lwc1	$f15,932($s1)
    mul.s	$f14,$f14,$f16
    lwc1	$f16,4($t0)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    lwc1	$f13,768($s1)
    madd.s	$f12,$f12,$f13,$f14
    # Line 1029
    addiu	$a3,$a3,8
    addiu	$t1,$t1,8
    addiu	$t0,$t0,8
    addiu	$a2,$a2,8
    addiu	$a6,$a6,8
    addiu	$t3,$t3,8
    addiu	$a0,$a0,8
    bne	$a2,$a7,.L0d979208
    # Line 1039
    swc1	$f12,-4($t3)
.L0d9792e8:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d9792f0:
    # Line 935
    blez	$a4,.L0d977fd8
    andi	$a5,$a4,0x1
    ld	$t2,16($sp)
    sll	$t0,$a4,0x2
    addu	$t9,$a4,$a4
    sll	$t9,$t9,0x2
    move	$a0,$t2
    addu	$t8,$t0,$t2
    addu	$t2,$t9,$t2
    move	$a2,$t8
    move	$a3,$t2
    addu	$a7,$t8,$t0
    addu	$t9,$t2,$t9
    addu	$a6,$t2,$t0
    addu	$t0,$t9,$t0
    ld	$t3,24($sp)
    beqz	$a5,.L0d9793c8
    move	$t1,$t9
    # Line 941
    lwc1	$f27,924($s1)
    lwc1	$f29,0($t8)
    ld	$a0,16($sp)
    lwc1	$f23,928($s1)
    lwc1	$f25,0($a0)
    mul.s	$f23,$f23,$f29
    madd.s	$f23,$f23,$f25,$f27
    lwc1	$f21,764($s1)
    ld	$ra,24($sp)
    mul.s	$f21,$f21,$f23
    swc1	$f21,0($ra)
    # Line 945
    lwc1	$f29,924($s1)
    lwc1	$f31,0($a6)
    lwc1	$f25,928($s1)
    lwc1	$f27,0($t2)
    mul.s	$f25,$f25,$f31
    madd.s	$f25,$f25,$f27,$f29
    lwc1	$f23,768($s1)
    madd.s	$f21,$f21,$f23,$f25
    swc1	$f21,0($ra)
    # Line 949
    lwc1	$f29,924($s1)
    lwc1	$f31,0($t0)
    lwc1	$f25,928($s1)
    lwc1	$f27,0($t9)
    mul.s	$f25,$f25,$f31
    madd.s	$f25,$f25,$f27,$f29
    lwc1	$f23,772($s1)
    madd.s	$f21,$f21,$f23,$f25
    # Line 937
    addiu	$a2,$t8,4
    addiu	$a6,$a6,4
    addiu	$t0,$t0,4
    addiu	$t1,$t9,4
    addiu	$a3,$t2,4
    addiu	$a0,$a0,4
    addiu	$t3,$ra,4
    # Line 949
    swc1	$f21,0($ra)
.L0d9793c8:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d9794cc
    nop
.L0d9793d4:
    # Line 941
    lwc1	$f6,0($a0)
    lwc1	$f5,928($s1)
    lwc1	$f8,0($a2)
    lwc1	$f7,924($s1)
    mul.s	$f5,$f5,$f8
    madd.s	$f5,$f5,$f6,$f7
    lwc1	$f4,764($s1)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($t3)
    # Line 945
    lwc1	$f7,0($a3)
    lwc1	$f6,928($s1)
    lwc1	$f9,0($a6)
    lwc1	$f8,924($s1)
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f5,768($s1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,0($t3)
    # Line 949
    lwc1	$f7,0($t1)
    lwc1	$f6,928($s1)
    lwc1	$f9,0($t0)
    lwc1	$f8,924($s1)
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f5,772($s1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,0($t3)
    # Line 941
    lwc1	$f1,4($a0)
    lwc1	$f0,928($s1)
    lwc1	$f3,4($a2)
    lwc1	$f2,924($s1)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f31,764($s1)
    mul.s	$f31,$f31,$f0
    swc1	$f31,4($t3)
    # Line 945
    lwc1	$f2,4($a3)
    lwc1	$f1,928($s1)
    lwc1	$f4,4($a6)
    lwc1	$f3,924($s1)
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    lwc1	$f0,768($s1)
    madd.s	$f31,$f31,$f0,$f1
    swc1	$f31,4($t3)
    # Line 949
    lwc1	$f2,4($t1)
    lwc1	$f1,928($s1)
    lwc1	$f4,4($t0)
    lwc1	$f3,924($s1)
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    lwc1	$f0,772($s1)
    madd.s	$f31,$f31,$f0,$f1
    # Line 937
    addiu	$a6,$a6,8
    addiu	$t0,$t0,8
    addiu	$t1,$t1,8
    addiu	$a2,$a2,8
    addiu	$a3,$a3,8
    addiu	$t3,$t3,8
    addiu	$a0,$a0,8
    bne	$a2,$a7,.L0d9793d4
    # Line 949
    swc1	$f31,-4($t3)
.L0d9794cc:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d9794d4:
    # Line 823
    blez	$a4,.L0d977fd8
    ld	$t0,16($sp)
    sll	$a6,$a4,0x2
    move	$a0,$t0
    addu	$t0,$a6,$t0
    andi	$a5,$a4,0x1
    addu	$t1,$t0,$a6
    move	$a2,$t0
    addu	$t2,$t1,$a6
    move	$a3,$t1
    addu	$a6,$t2,$a6
    ld	$t3,24($sp)
    beqz	$a5,.L0d979588
    move	$a7,$t2
    # Line 827
    ld	$a0,16($sp)
    lwc1	$f11,924($s1)
    lwc1	$f10,0($a0)
    lwc1	$f9,764($s1)
    mul.s	$f10,$f10,$f11
    ld	$t8,24($sp)
    mul.s	$f9,$f9,$f10
    swc1	$f9,0($t8)
    # Line 831
    lwc1	$f12,924($s1)
    lwc1	$f11,0($t0)
    lwc1	$f10,768($s1)
    mul.s	$f11,$f11,$f12
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($t8)
    # Line 835
    lwc1	$f12,924($s1)
    lwc1	$f11,0($t1)
    lwc1	$f10,772($s1)
    mul.s	$f11,$f11,$f12
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($t8)
    # Line 839
    lwc1	$f12,924($s1)
    lwc1	$f11,0($t2)
    lwc1	$f10,776($s1)
    mul.s	$f11,$f11,$f12
    madd.s	$f9,$f9,$f10,$f11
    # Line 823
    addiu	$a7,$t2,4
    addiu	$a3,$t1,4
    addiu	$a2,$t0,4
    addiu	$a0,$a0,4
    addiu	$t3,$t8,4
    # Line 839
    swc1	$f9,0($t8)
.L0d979588:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d97966c
    move	$a4,$a7
.L0d979594:
    # Line 827
    lwc1	$f16,0($a0)
    lwc1	$f17,924($s1)
    lwc1	$f15,764($s1)
    mul.s	$f16,$f16,$f17
    mul.s	$f15,$f15,$f16
    swc1	$f15,0($t3)
    # Line 831
    lwc1	$f17,0($a2)
    lwc1	$f18,924($s1)
    lwc1	$f16,768($s1)
    mul.s	$f17,$f17,$f18
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($t3)
    # Line 835
    lwc1	$f17,0($a3)
    lwc1	$f18,924($s1)
    lwc1	$f16,772($s1)
    mul.s	$f17,$f17,$f18
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($t3)
    # Line 839
    lwc1	$f17,0($a4)
    lwc1	$f18,924($s1)
    lwc1	$f16,776($s1)
    mul.s	$f17,$f17,$f18
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($t3)
    # Line 827
    lwc1	$f13,4($a0)
    lwc1	$f14,924($s1)
    lwc1	$f12,764($s1)
    mul.s	$f13,$f13,$f14
    mul.s	$f12,$f12,$f13
    swc1	$f12,4($t3)
    # Line 831
    lwc1	$f14,4($a2)
    lwc1	$f15,924($s1)
    lwc1	$f13,768($s1)
    mul.s	$f14,$f14,$f15
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,4($t3)
    # Line 835
    lwc1	$f14,4($a3)
    lwc1	$f15,924($s1)
    lwc1	$f13,772($s1)
    mul.s	$f14,$f14,$f15
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,4($t3)
    # Line 839
    lwc1	$f14,4($a4)
    lwc1	$f15,924($s1)
    lwc1	$f13,776($s1)
    mul.s	$f14,$f14,$f15
    madd.s	$f12,$f12,$f13,$f14
    # Line 823
    addiu	$a3,$a3,8
    addiu	$a4,$a4,8
    addiu	$a2,$a2,8
    addiu	$t3,$t3,8
    addiu	$a0,$a0,8
    bne	$a4,$a6,.L0d979594
    # Line 839
    swc1	$f12,-4($t3)
.L0d97966c:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d979674:
    # Line 954
    blez	$a4,.L0d977fd8
    ld	$t0,16($sp)
    sll	$a6,$a4,0x2
    move	$a0,$t0
    addu	$t0,$a6,$t0
    andi	$a3,$a4,0x1
    addu	$a7,$t0,$a6
    move	$a2,$t0
    addu	$a6,$a7,$a6
    ld	$t3,24($sp)
    beqz	$a3,.L0d979704
    move	$a3,$a7
    # Line 958
    ld	$a0,16($sp)
    lwc1	$f21,924($s1)
    lwc1	$f19,0($a0)
    lwc1	$f18,764($s1)
    mul.s	$f19,$f19,$f21
    ld	$t1,24($sp)
    mul.s	$f18,$f18,$f19
    swc1	$f18,0($t1)
    # Line 962
    lwc1	$f23,924($s1)
    lwc1	$f21,0($t0)
    lwc1	$f19,768($s1)
    mul.s	$f21,$f21,$f23
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,0($t1)
    # Line 966
    lwc1	$f23,924($s1)
    lwc1	$f21,0($a7)
    lwc1	$f19,772($s1)
    mul.s	$f21,$f21,$f23
    madd.s	$f18,$f18,$f19,$f21
    # Line 954
    addiu	$a3,$a7,4
    addiu	$a2,$t0,4
    addiu	$a0,$a0,4
    addiu	$t3,$t1,4
    # Line 966
    swc1	$f18,0($t1)
.L0d979704:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d9797b4
    nop
.L0d979710:
    # Line 958
    lwc1	$f31,0($a0)
    lwc1	$f0,924($s1)
    lwc1	$f29,764($s1)
    mul.s	$f31,$f31,$f0
    mul.s	$f29,$f29,$f31
    swc1	$f29,0($t3)
    # Line 962
    lwc1	$f0,0($a2)
    lwc1	$f1,924($s1)
    lwc1	$f31,768($s1)
    mul.s	$f0,$f0,$f1
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,0($t3)
    # Line 966
    lwc1	$f0,0($a3)
    lwc1	$f1,924($s1)
    lwc1	$f31,772($s1)
    mul.s	$f0,$f0,$f1
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,0($t3)
    # Line 958
    lwc1	$f25,4($a0)
    lwc1	$f27,924($s1)
    lwc1	$f23,764($s1)
    mul.s	$f25,$f25,$f27
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($t3)
    # Line 962
    lwc1	$f27,4($a2)
    lwc1	$f29,924($s1)
    lwc1	$f25,768($s1)
    mul.s	$f27,$f27,$f29
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,4($t3)
    # Line 966
    lwc1	$f27,4($a3)
    lwc1	$f29,924($s1)
    lwc1	$f25,772($s1)
    mul.s	$f27,$f27,$f29
    madd.s	$f23,$f23,$f25,$f27
    # Line 954
    addiu	$a3,$a3,8
    addiu	$a2,$a2,8
    addiu	$t3,$t3,8
    addiu	$a0,$a0,8
    bne	$a3,$a6,.L0d979710
    # Line 966
    swc1	$f23,-4($t3)
.L0d9797b4:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d9797bc:
    # Line 1113
    blez	$a4,.L0d977fd8
    andi	$a6,$a4,0x3
    ld	$a5,16($sp)
    sll	$a7,$a4,0x2
    addu	$a3,$a4,$a4
    sll	$a3,$a3,0x2
    move	$a0,$a5
    addu	$a3,$a3,$a5
    addu	$a2,$a7,$a5
    ld	$t3,24($sp)
    beqz	$a6,.L0d979834
    addu	$a7,$a2,$a7
.L0d9797ec:
    # Line 1120
    lwc1	$f5,0($a0)
    lwc1	$f2,928($s1)
    lwc1	$f4,0($a2)
    lwc1	$f6,924($s1)
    lwc1	$f3,932($s1)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,0($a3)
    madd.s	$f2,$f2,$f5,$f6
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,764($s1)
    # Line 1115
    addiu	$a2,$a2,4
    addiu	$a6,$a6,-1
    addiu	$a3,$a3,4
    addiu	$t3,$t3,4
    # Line 1120
    mul.s	$f1,$f1,$f2
    # Line 1115
    addiu	$a0,$a0,4
    bnez	$a6,.L0d9797ec
    # Line 1120
    swc1	$f1,-4($t3)
.L0d979834:
    sra	$a5,$a4,0x2
    beqz	$a5,.L0d979914
    nop
.L0d979840:
    lwc1	$f23,0($a0)
    lwc1	$f18,928($s1)
    lwc1	$f21,0($a2)
    lwc1	$f25,924($s1)
    lwc1	$f19,932($s1)
    mul.s	$f18,$f18,$f21
    lwc1	$f21,0($a3)
    madd.s	$f18,$f18,$f23,$f25
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f17,764($s1)
    mul.s	$f17,$f17,$f18
    swc1	$f17,0($t3)
    lwc1	$f17,4($a0)
    lwc1	$f14,928($s1)
    lwc1	$f16,4($a2)
    lwc1	$f18,924($s1)
    lwc1	$f15,932($s1)
    mul.s	$f14,$f14,$f16
    lwc1	$f16,4($a3)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    lwc1	$f13,764($s1)
    mul.s	$f13,$f13,$f14
    swc1	$f13,4($t3)
    lwc1	$f13,8($a0)
    lwc1	$f10,928($s1)
    lwc1	$f12,8($a2)
    lwc1	$f14,924($s1)
    lwc1	$f11,932($s1)
    mul.s	$f10,$f10,$f12
    lwc1	$f12,8($a3)
    madd.s	$f10,$f10,$f13,$f14
    madd.s	$f10,$f10,$f11,$f12
    lwc1	$f9,764($s1)
    mul.s	$f9,$f9,$f10
    swc1	$f9,8($t3)
    lwc1	$f9,12($a0)
    lwc1	$f6,928($s1)
    lwc1	$f8,12($a2)
    lwc1	$f10,924($s1)
    lwc1	$f7,932($s1)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,12($a3)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f5,764($s1)
    # Line 1115
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    addiu	$t3,$t3,16
    # Line 1120
    mul.s	$f5,$f5,$f6
    # Line 1115
    addiu	$a0,$a0,16
    bne	$a2,$a7,.L0d979840
    # Line 1120
    swc1	$f5,-4($t3)
.L0d979914:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d97991c:
    # Line 1044
    blez	$a4,.L0d977fd8
    ld	$t8,16($sp)
    andi	$t2,$a4,0x1
    sll	$a6,$a4,0x2
    move	$a0,$t8
    addu	$t0,$a4,$a4
    sll	$t0,$t0,0x2
    addu	$t1,$a6,$t8
    addu	$t0,$t0,$t8
    move	$a2,$t1
    addu	$a7,$t1,$a6
    addu	$a6,$t0,$a6
    ld	$t3,24($sp)
    beqz	$t2,.L0d9799bc
    move	$a3,$t0
    # Line 1050
    lwc1	$f29,924($s1)
    lwc1	$f31,0($t1)
    ld	$a0,16($sp)
    lwc1	$f25,928($s1)
    lwc1	$f27,0($a0)
    mul.s	$f25,$f25,$f31
    madd.s	$f25,$f25,$f27,$f29
    lwc1	$f23,764($s1)
    ld	$t2,24($sp)
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($t2)
    # Line 1054
    lwc1	$f31,924($s1)
    lwc1	$f0,0($a6)
    lwc1	$f27,928($s1)
    lwc1	$f29,0($t0)
    mul.s	$f27,$f27,$f0
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f25,768($s1)
    madd.s	$f23,$f23,$f25,$f27
    # Line 1046
    addiu	$a2,$t1,4
    addiu	$a6,$a6,4
    addiu	$a3,$t0,4
    addiu	$a0,$a0,4
    addiu	$t3,$t2,4
    # Line 1054
    swc1	$f23,0($t2)
.L0d9799bc:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d979a70
    nop
.L0d9799c8:
    # Line 1050
    lwc1	$f7,0($a0)
    lwc1	$f6,928($s1)
    lwc1	$f9,0($a2)
    lwc1	$f8,924($s1)
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f5,764($s1)
    mul.s	$f5,$f5,$f6
    swc1	$f5,0($t3)
    # Line 1054
    lwc1	$f8,0($a3)
    lwc1	$f7,928($s1)
    lwc1	$f10,0($a6)
    lwc1	$f9,924($s1)
    mul.s	$f7,$f7,$f10
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f6,768($s1)
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,0($t3)
    # Line 1050
    lwc1	$f2,4($a0)
    lwc1	$f1,928($s1)
    lwc1	$f4,4($a2)
    lwc1	$f3,924($s1)
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    lwc1	$f0,764($s1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($t3)
    # Line 1054
    lwc1	$f3,4($a3)
    lwc1	$f2,928($s1)
    lwc1	$f5,4($a6)
    lwc1	$f4,924($s1)
    mul.s	$f2,$f2,$f5
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,768($s1)
    madd.s	$f0,$f0,$f1,$f2
    # Line 1046
    addiu	$a6,$a6,8
    addiu	$a2,$a2,8
    addiu	$a3,$a3,8
    addiu	$t3,$t3,8
    addiu	$a0,$a0,8
    bne	$a2,$a7,.L0d9799c8
    # Line 1054
    swc1	$f0,-4($t3)
.L0d979a70:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d979a78:
    # Line 1125
    blez	$a4,.L0d977fd8
    ld	$a0,16($sp)
    andi	$a3,$a4,0x3
    sll	$a7,$a4,0x2
    addu	$a2,$a7,$a0
    ld	$t3,24($sp)
    beqz	$a3,.L0d979ad0
    addu	$a7,$a2,$a7
.L0d979a98:
    # Line 1129
    lwc1	$f12,0($a0)
    lwc1	$f11,928($s1)
    lwc1	$f14,0($a2)
    lwc1	$f13,924($s1)
    mul.s	$f11,$f11,$f14
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f10,764($s1)
    addiu	$a3,$a3,-1
    # Line 1125
    addiu	$a2,$a2,4
    addiu	$t3,$t3,4
    # Line 1129
    mul.s	$f10,$f10,$f11
    # Line 1125
    addiu	$a0,$a0,4
    bnez	$a3,.L0d979a98
    # Line 1129
    swc1	$f10,-4($t3)
.L0d979ad0:
    sra	$t0,$a4,0x2
    beqz	$t0,.L0d979b7c
    nop
.L0d979adc:
    lwc1	$f6,0($a0)
    lwc1	$f5,928($s1)
    lwc1	$f8,0($a2)
    lwc1	$f7,924($s1)
    mul.s	$f5,$f5,$f8
    madd.s	$f5,$f5,$f6,$f7
    lwc1	$f4,764($s1)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($t3)
    lwc1	$f1,4($a0)
    lwc1	$f0,928($s1)
    lwc1	$f3,4($a2)
    lwc1	$f2,924($s1)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f31,764($s1)
    mul.s	$f31,$f31,$f0
    swc1	$f31,4($t3)
    lwc1	$f25,8($a0)
    lwc1	$f23,928($s1)
    lwc1	$f29,8($a2)
    lwc1	$f27,924($s1)
    mul.s	$f23,$f23,$f29
    madd.s	$f23,$f23,$f25,$f27
    lwc1	$f21,764($s1)
    mul.s	$f21,$f21,$f23
    swc1	$f21,8($t3)
    lwc1	$f17,12($a0)
    lwc1	$f16,928($s1)
    lwc1	$f19,12($a2)
    lwc1	$f18,924($s1)
    mul.s	$f16,$f16,$f19
    madd.s	$f16,$f16,$f17,$f18
    lwc1	$f15,764($s1)
    # Line 1125
    addiu	$a2,$a2,16
    addiu	$t3,$t3,16
    # Line 1129
    mul.s	$f15,$f15,$f16
    # Line 1125
    addiu	$a0,$a0,16
    bne	$a2,$a7,.L0d979adc
    # Line 1129
    swc1	$f15,-4($t3)
.L0d979b7c:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d979b84:
    # Line 1059
    blez	$a4,.L0d977fd8
    ld	$a0,16($sp)
    andi	$a3,$a4,0x3
    sll	$a7,$a4,0x2
    addu	$a2,$a7,$a0
    ld	$t3,24($sp)
    beqz	$a3,.L0d979be8
    addu	$a7,$a2,$a7
.L0d979ba4:
    # Line 1063
    lwc1	$f10,0($a0)
    lwc1	$f11,924($s1)
    lwc1	$f9,764($s1)
    mul.s	$f10,$f10,$f11
    mul.s	$f9,$f9,$f10
    swc1	$f9,0($t3)
    # Line 1067
    lwc1	$f11,0($a2)
    lwc1	$f12,924($s1)
    lwc1	$f10,768($s1)
    mul.s	$f11,$f11,$f12
    madd.s	$f9,$f9,$f10,$f11
    addiu	$a3,$a3,-1
    # Line 1059
    addiu	$a2,$a2,4
    addiu	$t3,$t3,4
    addiu	$a0,$a0,4
    bnez	$a3,.L0d979ba4
    # Line 1067
    swc1	$f9,-4($t3)
.L0d979be8:
    sra	$t0,$a4,0x2
    beqz	$t0,.L0d979cc4
    nop
.L0d979bf4:
    # Line 1063
    lwc1	$f25,0($a0)
    lwc1	$f27,924($s1)
    lwc1	$f23,764($s1)
    mul.s	$f25,$f25,$f27
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($t3)
    # Line 1067
    lwc1	$f27,0($a2)
    lwc1	$f29,924($s1)
    lwc1	$f25,768($s1)
    mul.s	$f27,$f27,$f29
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,0($t3)
    # Line 1063
    lwc1	$f19,4($a0)
    lwc1	$f21,924($s1)
    lwc1	$f18,764($s1)
    mul.s	$f19,$f19,$f21
    mul.s	$f18,$f18,$f19
    swc1	$f18,4($t3)
    # Line 1067
    lwc1	$f21,4($a2)
    lwc1	$f23,924($s1)
    lwc1	$f19,768($s1)
    mul.s	$f21,$f21,$f23
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,4($t3)
    # Line 1063
    lwc1	$f16,8($a0)
    lwc1	$f17,924($s1)
    lwc1	$f15,764($s1)
    mul.s	$f16,$f16,$f17
    mul.s	$f15,$f15,$f16
    swc1	$f15,8($t3)
    # Line 1067
    lwc1	$f17,8($a2)
    lwc1	$f18,924($s1)
    lwc1	$f16,768($s1)
    mul.s	$f17,$f17,$f18
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,8($t3)
    # Line 1063
    lwc1	$f13,12($a0)
    lwc1	$f14,924($s1)
    lwc1	$f12,764($s1)
    mul.s	$f13,$f13,$f14
    mul.s	$f12,$f12,$f13
    swc1	$f12,12($t3)
    # Line 1067
    lwc1	$f14,12($a2)
    lwc1	$f15,924($s1)
    lwc1	$f13,768($s1)
    mul.s	$f14,$f14,$f15
    madd.s	$f12,$f12,$f13,$f14
    # Line 1059
    addiu	$a2,$a2,16
    addiu	$t3,$t3,16
    addiu	$a0,$a0,16
    bne	$a2,$a7,.L0d979bf4
    # Line 1067
    swc1	$f12,-4($t3)
.L0d979cc4:
    b	.L0d977fdc
    ld	$s6,88($sp)
.L0d979ccc:
    # Line 1134
    blez	$a4,.L0d977fdc
    ld	$s6,88($sp)
    ld	$t9,16($sp)
    andi	$ra,$a4,0x1
    sll	$t8,$a4,0x2
    move	$a0,$t9
    ld	$t3,24($sp)
    beqz	$ra,.L0d979d18
    addu	$t8,$t8,$t9
    # Line 1138
    ld	$a0,16($sp)
    lwc1	$f0,924($s1)
    lwc1	$f31,0($a0)
    lwc1	$f29,764($s1)
    mul.s	$f31,$f31,$f0
    # Line 1134
    ld	$at,24($sp)
    # Line 1138
    mul.s	$f29,$f29,$f31
    # Line 1134
    addiu	$a0,$a0,4
    addiu	$t3,$at,4
    # Line 1138
    swc1	$f29,0($at)
.L0d979d18:
    sra	$a1,$a4,0x1
    beqz	$a1,.L0d979d60
    nop
.L0d979d24:
    lwc1	$f5,0($a0)
    lwc1	$f6,924($s1)
    lwc1	$f4,764($s1)
    mul.s	$f5,$f5,$f6
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($t3)
    lwc1	$f2,4($a0)
    lwc1	$f3,924($s1)
    lwc1	$f1,764($s1)
    mul.s	$f2,$f2,$f3
    # Line 1134
    addiu	$a0,$a0,8
    addiu	$t3,$t3,8
    # Line 1138
    mul.s	$f1,$f1,$f2
    # Line 1134
    bne	$a0,$t8,.L0d979d24
    # Line 1138
    swc1	$f1,-4($t3)
.L0d979d60:
    b	.L0d977fdc
    ld	$s6,88($sp)
.end DoDomain2

# Function: DoDomain2WithDerivs
# Declared: Line 1184 (Source lines: 1187-1843)
# Address: 0x0d979d70 - 0x0d97c60c (Size: 10396 bytes, Frame: 128)
.ent DoDomain2WithDerivs
DoDomain2WithDerivs:
    # Line 1187
    addiu	$sp,$sp,-128
    sd	$s7,72($sp)
    sd	$s4,64($sp)
    sd	$ra,56($sp)
    sd	$s8,48($sp)
    # Line 1196
    lwc1	$f5,16($a3)
    lwc1	$f4,12($a3)
    sd	$s2,40($sp)
    sd	$s5,32($sp)
    sd	$s3,24($sp)
    c.eq.s	$f4,$f5
    # Line 1187
    sd	$s1,120($sp)
    move	$a2,$a6
    sd	$s0,112($sp)
    move	$s0,$a0
    move	$s1,$a3
    # Line 1196
    bc1t	.L0d97a214
    sd	$s6,16($sp)
    lwc1	$f8,20($a3)
    lwc1	$f7,24($a3)
    c.eq.s $f8,$f7
    bc1t .L0d97a214
    nop
    # Line 1198
    sub.s	$f9,$f5,$f4
    sub.s	$f6,$f13,$f4
    div.s	$f6,$f6,$f9
    # Line 1199
    sub.s	$f1,$f7,$f8
    sub.s	$f0,$f14,$f8
    div.s	$f0,$f0,$f1
    # Line 1204
    lwc1	$f2,756($a0)
    sd	$a4,104($sp)
    sd	$a5,96($sp)
    c.eq.s $f2,$f6
    sd	$a7,88($sp)
    sd	$a6,80($sp)
    li	$s2,1
    bc1f .L0d979e2c
    sdc1	$f0,8($sp)
    lw	$at,1412($a0)
    lw	$a0,4($a3)
    bne	$at,$s2,.L0d979e34
    sdc1	$f6,0($sp)
    lw	$v0,1404($s0)
    beq	$v0,$a0,.L0d979e64
    # Line 1211
    ldc1	$f12,8($sp)
    b	.L0d979e38
    # Line 1204
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d979e2c:
    lw	$a0,4($a3)
    sdc1	$f6,0($sp)
.L0d979e34:
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d979e38:
    addiu	$t9,$t9,27616
    # Line 1206
    addiu	$a3,$s0,1084
    addiu	$a2,$s0,764
    bal __glOdyim_EvalPoint2
    ldc1	$f13,0($sp)
    # Line 1207
    sw	$s2,1412($s0)
    # Line 1208
    lw	$ra,4($s1)
    # Line 1209
    ldc1	$f10,0($sp)
    # Line 1208
    sw	$ra,1404($s0)
    # Line 1209
    swc1	$f10,756($s0)
    # Line 1211
    ldc1	$f12,8($sp)
.L0d979e64:
    lwc1	$f11,760($s0)
    c.eq.s $f11,$f12
    # Line 1209
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1211
    bc1f .L0d979e98
    # Line 1209
    addiu	$t9,$t9,27616
    # Line 1211
    lw	$ra,1416($s0)
    bne	$ra,$s2,.L0d979e9c
    lw	$a0,8($s1)
    lw	$at,1408($s0)
    beq	$at,$a0,.L0d979ec0
    nop
    b	.L0d979ea0
    # Line 1213
    addiu	$a3,$s0,1244
.L0d979e98:
    # Line 1211
    lw	$a0,8($s1)
.L0d979e9c:
    # Line 1213
    addiu	$a3,$s0,1244
.L0d979ea0:
    ldc1	$f13,8($sp)
    bal __glOdyim_EvalPoint2
    addiu	$a2,$s0,924
    # Line 1214
    sw	$s2,1416($s0)
    # Line 1215
    lw	$v0,8($s1)
    # Line 1216
    ldc1	$f13,8($sp)
    # Line 1215
    sw	$v0,1408($s0)
    # Line 1216
    swc1	$f13,760($s0)
.L0d979ec0:
    # Line 1220
    lw	$a0,4($s1)
    li	$a2,4
    beq	$a0,$a2,.L0d97a38c
    # Line 1219
    lw	$a6,0($s1)
    # Line 1220
    li	$a3,3
    beq	$a0,$a3,.L0d97a3d4
    li	$t0,2
    beq	$a0,$t0,.L0d97a41c
    nop
    beq	$a0,$s2,.L0d97a464
    nop
    blez	$a6,.L0d97a214
    ld	$s2,88($sp)
    mtc1	$zero,$f7
    addiu	$t9,$s0,4
    ld	$t1,80($sp)
    ld	$t3,96($sp)
    sll	$t0,$a6,0x2
    move	$ra,$s2
    ld	$t2,104($sp)
    b	.L0d97a264
    addu	$s2,$t0,$s2
.L0d979f18:
    # Line 1226
    blez	$a6,.L0d97a214
    ld	$t0,88($sp)
    addu	$a5,$a6,$a6
    move	$ra,$t0
    sll	$a4,$a5,0x2
    addu	$a2,$a4,$t0
    addu	$a5,$a5,$a6
    sll	$s7,$a6,0x2
    addu	$s8,$a5,$a6
    addu	$a0,$s7,$t0
    sll	$s8,$s8,0x2
    sll	$a5,$a5,0x2
    addu	$s6,$s8,$t0
    addu	$a3,$a0,$s7
    addu	$s2,$s6,$a5
    addu	$s1,$s6,$a4
    addu	$t9,$s6,$s7
    move	$t8,$s6
    addu	$s6,$s6,$s8
    addu	$t0,$a5,$t0
    addu	$s3,$s6,$s7
    ld	$t1,80($sp)
    addu	$s4,$s6,$a4
    addu	$s8,$s6,$s8
    ld	$t3,96($sp)
    addu	$s5,$s6,$a5
    addu	$a5,$s8,$a5
    ld	$t2,104($sp)
    addu	$a4,$s8,$a4
    addu	$s7,$s8,$s7
.L0d979f90:
    # Line 1233
    lwc1	$f12,0($ra)
    lwc1	$f11,928($s0)
    lwc1	$f15,0($a0)
    lwc1	$f13,924($s0)
    lwc1	$f14,932($s0)
    mul.s	$f11,$f11,$f15
    lwc1	$f15,0($a2)
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f12,936($s0)
    lwc1	$f13,0($t0)
    madd.s	$f11,$f11,$f14,$f15
    madd.s	$f11,$f11,$f12,$f13
    # Line 1235
    lwc1	$f12,764($s0)
    mul.s	$f12,$f12,$f11
    swc1	$f12,0($t2)
    # Line 1236
    lwc1	$f10,1084($s0)
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($t3)
    # Line 1239
    lwc1	$f5,0($ra)
    lwc1	$f9,1244($s0)
    lwc1	$f6,1248($s0)
    lwc1	$f7,0($a0)
    lwc1	$f8,1252($s0)
    mul.s	$f5,$f5,$f9
    lwc1	$f9,0($a2)
    madd.s	$f5,$f5,$f6,$f7
    lwc1	$f6,1256($s0)
    lwc1	$f7,0($t0)
    madd.s	$f5,$f5,$f8,$f9
    madd.s	$f5,$f5,$f6,$f7
    lwc1	$f4,764($s0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($t1)
    # Line 1242
    lwc1	$f31,0($t8)
    lwc1	$f3,924($s0)
    lwc1	$f0,928($s0)
    lwc1	$f1,0($t9)
    lwc1	$f2,932($s0)
    mul.s	$f31,$f31,$f3
    lwc1	$f3,0($s1)
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f0,936($s0)
    lwc1	$f1,0($s2)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    # Line 1244
    lwc1	$f1,768($s0)
    lwc1	$f0,0($t2)
    madd.s	$f0,$f0,$f1,$f31
    swc1	$f0,0($t2)
    # Line 1245
    lwc1	$f29,1088($s0)
    lwc1	$f27,0($t3)
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,0($t3)
    # Line 1248
    lwc1	$f18,0($t8)
    lwc1	$f25,1244($s0)
    lwc1	$f19,1248($s0)
    lwc1	$f21,0($t9)
    lwc1	$f23,1252($s0)
    mul.s	$f18,$f18,$f25
    lwc1	$f25,0($s1)
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f19,1256($s0)
    lwc1	$f21,0($s2)
    madd.s	$f18,$f18,$f23,$f25
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f17,768($s0)
    lwc1	$f16,0($t1)
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($t1)
    # Line 1251
    lwc1	$f11,0($s6)
    lwc1	$f15,924($s0)
    lwc1	$f12,928($s0)
    lwc1	$f13,0($s3)
    lwc1	$f14,932($s0)
    mul.s	$f11,$f11,$f15
    lwc1	$f15,0($s4)
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f12,936($s0)
    lwc1	$f13,0($s5)
    madd.s	$f11,$f11,$f14,$f15
    madd.s	$f11,$f11,$f12,$f13
    # Line 1253
    lwc1	$f13,772($s0)
    lwc1	$f12,0($t2)
    madd.s	$f12,$f12,$f13,$f11
    swc1	$f12,0($t2)
    # Line 1254
    lwc1	$f10,1092($s0)
    lwc1	$f9,0($t3)
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($t3)
    # Line 1255
    lwc1	$f4,0($s6)
    lwc1	$f8,1244($s0)
    lwc1	$f5,1248($s0)
    lwc1	$f6,0($s3)
    lwc1	$f7,1252($s0)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,0($s4)
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f5,1256($s0)
    lwc1	$f6,0($s5)
    madd.s	$f4,$f4,$f7,$f8
    madd.s	$f4,$f4,$f5,$f6
    # Line 1257
    lwc1	$f3,772($s0)
    lwc1	$f2,0($t1)
    madd.s	$f2,$f2,$f3,$f4
    swc1	$f2,0($t1)
    # Line 1260
    lwc1	$f27,0($s8)
    lwc1	$f1,924($s0)
    lwc1	$f29,928($s0)
    lwc1	$f31,0($s7)
    lwc1	$f0,932($s0)
    mul.s	$f27,$f27,$f1
    lwc1	$f1,0($a4)
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f29,936($s0)
    lwc1	$f31,0($a5)
    madd.s	$f27,$f27,$f0,$f1
    madd.s	$f27,$f27,$f29,$f31
    # Line 1262
    lwc1	$f31,776($s0)
    lwc1	$f29,0($t2)
    madd.s	$f29,$f29,$f31,$f27
    swc1	$f29,0($t2)
    # Line 1263
    lwc1	$f25,1096($s0)
    lwc1	$f23,0($t3)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,0($t3)
    # Line 1264
    lwc1	$f16,0($s8)
    lwc1	$f21,1244($s0)
    lwc1	$f17,1248($s0)
    lwc1	$f18,0($s7)
    lwc1	$f19,1252($s0)
    mul.s	$f16,$f16,$f21
    lwc1	$f21,0($a4)
    madd.s	$f16,$f16,$f17,$f18
    lwc1	$f17,1256($s0)
    lwc1	$f18,0($a5)
    madd.s	$f16,$f16,$f19,$f21
    # Line 1230
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    # Line 1264
    madd.s	$f16,$f16,$f17,$f18
    # Line 1230
    addiu	$t9,$t9,4
    addiu	$s1,$s1,4
    # Line 1266
    lwc1	$f15,776($s0)
    # Line 1230
    addiu	$s2,$s2,4
    addiu	$s3,$s3,4
    addiu	$s4,$s4,4
    addiu	$s5,$s5,4
    # Line 1266
    lwc1	$f14,0($t1)
    # Line 1230
    addiu	$s7,$s7,4
    addiu	$a4,$a4,4
    # Line 1266
    madd.s	$f14,$f14,$f15,$f16
    # Line 1230
    addiu	$a5,$a5,4
    addiu	$s8,$s8,4
    addiu	$s6,$s6,4
    addiu	$t8,$t8,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d979f90
    # Line 1266
    swc1	$f14,-4($t1)
.L0d97a214:
    # Line 1843
    ld	$s0,112($sp)
.L0d97a218:
    ld	$s1,120($sp)
    ld	$s2,40($sp)
    ld	$s3,24($sp)
    ld	$s4,64($sp)
    ld	$s5,32($sp)
    ld	$ra,56($sp)
    ld	$s6,16($sp)
    ld	$s7,72($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
    nop
    nop
    nop
.L0d97a250:
    # Line 1824
    addiu	$ra,$ra,4
    addiu	$t2,$t2,4
    addiu	$t3,$t3,4
    beq	$ra,$s2,.L0d97a214
    addiu	$t1,$t1,4
.L0d97a264:
    # Line 1826
    swc1	$f7,0($t1)
    swc1	$f7,0($t3)
    swc1	$f7,0($t2)
    lw	$a6,4($s1)
    blez	$a6,.L0d97a250
    # Line 1825
    move	$a2,$ra
    # Line 1826
    move	$a0,$s0
    b	.L0d97c600
    move	$a3,$zero
    nop
    nop
.L0d97a290:
    beqz	$a7,.L0d97a2dc
    nop
    nop
    nop
.L0d97a2a0:
    # Line 1833
    lwc1	$f9,1248($a4)
    lwc1	$f12,1244($a4)
    # Line 1832
    lwc1	$f10,0($a2)
    # Line 1834
    addu	$a2,$t0,$a2
    # Line 1832
    lwc1	$f11,924($a4)
    # Line 1831
    addiu	$a4,$a4,8
    # Line 1832
    lwc1	$f6,0($a2)
    # Line 1833
    madd.s	$f4,$f4,$f10,$f12
    # Line 1832
    lwc1	$f8,920($a4)
    # Line 1831
    sltu	$t8,$a4,$a5
    # Line 1832
    madd.s	$f5,$f5,$f10,$f11
    # Line 1833
    madd.s	$f4,$f4,$f6,$f9
    # Line 1834
    addu	$a2,$t0,$a2
    # Line 1831
    bnez	$t8,.L0d97a2a0
    # Line 1832
    madd.s	$f5,$f5,$f6,$f8
.L0d97a2dc:
    # Line 1836
    madd.s	$f17,$f17,$f18,$f5
    swc1	$f17,0($t2)
    # Line 1837
    lwc1	$f16,1084($a0)
    lwc1	$f15,0($t3)
    madd.s	$f15,$f15,$f16,$f5
    swc1	$f15,0($t3)
    # Line 1838
    lwc1	$f14,764($a0)
    lwc1	$f13,0($t1)
    madd.s	$f13,$f13,$f14,$f4
    swc1	$f13,0($t1)
    # Line 1827
    lw	$a4,4($s1)
    slt	$a4,$a3,$a4
    addiu	$a0,$a0,4
    beqz	$a4,.L0d97a250
    addiu	$a3,$a3,1
    # Line 1829
    lwc1	$f4,1244($s0)
.L0d97a31c:
    # Line 1828
    lwc1	$f6,0($a2)
    # Line 1830
    lw	$a6,8($s1)
    # Line 1828
    lwc1	$f5,924($s0)
    # Line 1830
    slti	$a7,$a6,2
    addu	$a2,$t0,$a2
    # Line 1836
    lwc1	$f18,764($a0)
    # Line 1829
    mul.s	$f4,$f4,$f6
    # Line 1836
    lwc1	$f17,0($t2)
    # Line 1830
    addiu	$v0,$a6,-1
    bnez	$a7,.L0d97a2dc
    # Line 1828
    mul.s	$f5,$f5,$f6
    # Line 1830
    sll	$a5,$a6,0x2
    li	$t8,1
    move	$at,$a7
    movz	$t8,$v0,$at
    andi	$at,$t8,0x1
    move	$a4,$t9
    addu	$a5,$a5,$s0
    beqz	$at,.L0d97a290
    sra	$a7,$t8,0x1
    # Line 1833
    lwc1	$f9,1244($t9)
    # Line 1832
    lwc1	$f6,0($a2)
    lwc1	$f8,924($t9)
    # Line 1831
    addiu	$a4,$t9,4
    # Line 1833
    madd.s	$f4,$f4,$f6,$f9
    # Line 1834
    addu	$a2,$t0,$a2
    b	.L0d97a290
    # Line 1832
    madd.s	$f5,$f5,$f6,$f8
.L0d97a38c:
    # Line 1223
    lw	$a0,8($s1)
    beq	$a0,$a2,.L0d979f18
    li	$v1,3
    beq	$a0,$v1,.L0d97afbc
    li	$a1,2
    beq	$a0,$a1,.L0d97b424
    nop
    beq	$a0,$s2,.L0d97bb7c
    nop
    blez	$a6,.L0d97a214
    ld	$ra,88($sp)
    ld	$t1,80($sp)
    sll	$t0,$a6,0x2
    ld	$t3,96($sp)
    addu	$a0,$t0,$ra
    ld	$t2,104($sp)
    b	.L0d97a7a8
    addu	$a3,$a0,$t0
.L0d97a3d4:
    # Line 1440
    lw	$a0,8($s1)
    beq	$a0,$a2,.L0d97ad60
    nop
    beq	$a0,$a3,.L0d97b23c
    li	$a2,2
    beq	$a0,$a2,.L0d97b9f8
    nop
    beq	$a0,$s2,.L0d97bcec
    nop
    blez	$a6,.L0d97a214
    ld	$ra,88($sp)
    ld	$t1,80($sp)
    sll	$t0,$a6,0x2
    ld	$t3,96($sp)
    addu	$a0,$t0,$ra
    ld	$t2,104($sp)
    b	.L0d97a898
    addu	$a3,$a0,$t0
.L0d97a41c:
    # Line 1612
    lw	$a0,8($s1)
    beq	$a0,$a2,.L0d97b618
    nop
    beq	$a0,$a3,.L0d97b8a0
    nop
    beq	$a0,$t0,.L0d97bfe0
    nop
    beq	$a0,$s2,.L0d97c268
    nop
    blez	$a6,.L0d97a214
    ld	$ra,88($sp)
    ld	$t1,80($sp)
    sll	$t0,$a6,0x2
    ld	$t3,96($sp)
    addu	$a0,$t0,$ra
    ld	$t2,104($sp)
    b	.L0d97ac08
    addu	$a3,$a0,$t0
.L0d97a464:
    # Line 1739
    lw	$a0,8($s1)
    beq	$a0,$a2,.L0d97b7b8
    nop
    beq	$a0,$a3,.L0d97be08
    nop
    beq	$a0,$t0,.L0d97c0f0
    nop
    beq	$a0,$s2,.L0d97c464
    nop
    blez	$a6,.L0d97a214
    ld	$ra,88($sp)
    ld	$t1,80($sp)
    sll	$t0,$a6,0x2
    addiu	$t9,$s0,4
    ld	$t3,96($sp)
    addu	$a0,$t0,$ra
    ld	$t2,104($sp)
    b	.L0d97acf8
    addu	$a3,$a0,$t0
.L0d97a4b0:
    sra	$a6,$t8,0x1
    beqz	$a6,.L0d97a4fc
    nop
    nop
.L0d97a4c0:
    # Line 1392
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1391
    lwc1	$f9,0($a2)
    # Line 1393
    addu	$a2,$t0,$a2
    # Line 1391
    lwc1	$f10,924($a4)
    # Line 1389
    addiu	$a4,$a4,8
    # Line 1391
    lwc1	$f6,0($a2)
    # Line 1392
    madd.s	$f4,$f4,$f9,$f11
    # Line 1391
    lwc1	$f7,920($a4)
    # Line 1389
    sltu	$a7,$a4,$a5
    # Line 1391
    madd.s	$f5,$f5,$f9,$f10
    # Line 1392
    madd.s	$f4,$f4,$f6,$f8
    # Line 1393
    addu	$a2,$t0,$a2
    # Line 1389
    bnez	$a7,.L0d97a4c0
    # Line 1391
    madd.s	$f5,$f5,$f6,$f7
.L0d97a4fc:
    # Line 1395
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,0($t2)
    # Line 1396
    lwc1	$f6,1084($s0)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($t3)
    # Line 1397
    lwc1	$f5,764($s0)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($t1)
    # Line 1400
    lwc1	$f4,1244($s0)
    # Line 1399
    lwc1	$f6,0($a2)
    # Line 1401
    lw	$a6,8($s1)
    # Line 1399
    lwc1	$f5,924($s0)
    # Line 1401
    slti	$a7,$a6,2
    # Line 1400
    mul.s	$f4,$f4,$f6
    # Line 1401
    addu	$a2,$t0,$a2
    bnez	$a7,.L0d97a5cc
    # Line 1399
    mul.s	$f5,$f5,$f6
    # Line 1401
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97a584
    addu	$a5,$a5,$s0
    # Line 1404
    lwc1	$f10,1248($s0)
    # Line 1403
    lwc1	$f8,0($a2)
    lwc1	$f9,928($s0)
    # Line 1404
    madd.s	$f4,$f4,$f8,$f10
    # Line 1402
    addiu	$a4,$s0,8
    # Line 1405
    addu	$a2,$t0,$a2
    # Line 1403
    madd.s	$f5,$f5,$f8,$f9
.L0d97a584:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97a5cc
    nop
.L0d97a590:
    # Line 1404
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1403
    lwc1	$f9,0($a2)
    # Line 1405
    addu	$a2,$t0,$a2
    # Line 1403
    lwc1	$f10,924($a4)
    # Line 1402
    addiu	$a4,$a4,8
    # Line 1403
    lwc1	$f6,0($a2)
    # Line 1404
    madd.s	$f4,$f4,$f9,$f11
    # Line 1403
    lwc1	$f7,920($a4)
    # Line 1402
    sltu	$v1,$a4,$a5
    # Line 1403
    madd.s	$f5,$f5,$f9,$f10
    # Line 1404
    madd.s	$f4,$f4,$f6,$f8
    # Line 1405
    addu	$a2,$t0,$a2
    # Line 1402
    bnez	$v1,.L0d97a590
    # Line 1403
    madd.s	$f5,$f5,$f6,$f7
.L0d97a5cc:
    # Line 1407
    lwc1	$f7,768($s0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,0($t2)
    # Line 1408
    lwc1	$f6,1088($s0)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($t3)
    # Line 1409
    lwc1	$f5,768($s0)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($t1)
    # Line 1412
    lwc1	$f4,1244($s0)
    # Line 1411
    lwc1	$f6,0($a2)
    # Line 1413
    lw	$a6,8($s1)
    # Line 1411
    lwc1	$f5,924($s0)
    # Line 1413
    slti	$a7,$a6,2
    # Line 1412
    mul.s	$f4,$f4,$f6
    # Line 1413
    addu	$a2,$t0,$a2
    bnez	$a7,.L0d97a69c
    # Line 1411
    mul.s	$f5,$f5,$f6
    # Line 1413
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97a654
    addu	$a5,$a5,$s0
    # Line 1416
    lwc1	$f10,1248($s0)
    # Line 1415
    lwc1	$f8,0($a2)
    lwc1	$f9,928($s0)
    # Line 1416
    madd.s	$f4,$f4,$f8,$f10
    # Line 1414
    addiu	$a4,$s0,8
    # Line 1417
    addu	$a2,$t0,$a2
    # Line 1415
    madd.s	$f5,$f5,$f8,$f9
.L0d97a654:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97a69c
    nop
.L0d97a660:
    # Line 1416
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1415
    lwc1	$f9,0($a2)
    # Line 1417
    addu	$a2,$t0,$a2
    # Line 1415
    lwc1	$f10,924($a4)
    # Line 1414
    addiu	$a4,$a4,8
    # Line 1415
    lwc1	$f6,0($a2)
    # Line 1416
    madd.s	$f4,$f4,$f9,$f11
    # Line 1415
    lwc1	$f7,920($a4)
    # Line 1414
    sltu	$v1,$a4,$a5
    # Line 1415
    madd.s	$f5,$f5,$f9,$f10
    # Line 1416
    madd.s	$f4,$f4,$f6,$f8
    # Line 1417
    addu	$a2,$t0,$a2
    # Line 1414
    bnez	$v1,.L0d97a660
    # Line 1415
    madd.s	$f5,$f5,$f6,$f7
.L0d97a69c:
    # Line 1419
    lwc1	$f7,772($s0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,0($t2)
    # Line 1420
    lwc1	$f6,1092($s0)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($t3)
    # Line 1421
    lwc1	$f5,772($s0)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($t1)
    # Line 1424
    lwc1	$f4,1244($s0)
    # Line 1423
    lwc1	$f6,0($a2)
    # Line 1425
    lw	$a6,8($s1)
    # Line 1423
    lwc1	$f5,924($s0)
    # Line 1425
    slti	$a7,$a6,2
    # Line 1424
    mul.s	$f4,$f4,$f6
    # Line 1425
    addu	$a2,$t0,$a2
    bnez	$a7,.L0d97a76c
    # Line 1423
    mul.s	$f5,$f5,$f6
    # Line 1425
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97a724
    addu	$a5,$a5,$s0
    # Line 1428
    lwc1	$f10,1248($s0)
    # Line 1427
    lwc1	$f8,0($a2)
    lwc1	$f9,928($s0)
    # Line 1428
    madd.s	$f4,$f4,$f8,$f10
    # Line 1426
    addiu	$a4,$s0,8
    # Line 1429
    addu	$a2,$t0,$a2
    # Line 1427
    madd.s	$f5,$f5,$f8,$f9
.L0d97a724:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97a76c
    nop
.L0d97a730:
    # Line 1428
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1427
    lwc1	$f9,0($a2)
    # Line 1429
    addu	$a2,$t0,$a2
    # Line 1427
    lwc1	$f10,924($a4)
    # Line 1426
    addiu	$a4,$a4,8
    # Line 1427
    lwc1	$f6,0($a2)
    # Line 1428
    madd.s	$f4,$f4,$f9,$f11
    # Line 1427
    lwc1	$f7,920($a4)
    # Line 1426
    sltu	$v1,$a4,$a5
    # Line 1427
    madd.s	$f5,$f5,$f9,$f10
    # Line 1428
    madd.s	$f4,$f4,$f6,$f8
    # Line 1429
    addu	$a2,$t0,$a2
    # Line 1426
    bnez	$v1,.L0d97a730
    # Line 1427
    madd.s	$f5,$f5,$f6,$f7
.L0d97a76c:
    # Line 1431
    lwc1	$f14,776($s0)
    mul.s	$f14,$f14,$f5
    swc1	$f14,0($t2)
    # Line 1432
    lwc1	$f13,1096($s0)
    mul.s	$f13,$f13,$f5
    swc1	$f13,0($t3)
    # Line 1433
    lwc1	$f12,776($s0)
    # Line 1383
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    # Line 1433
    mul.s	$f12,$f12,$f4
    # Line 1383
    addiu	$t3,$t3,4
    beq	$a0,$a3,.L0d97a214
    # Line 1433
    swc1	$f12,-4($t1)
.L0d97a7a8:
    # Line 1387
    lwc1	$f4,1244($s0)
    # Line 1386
    lwc1	$f6,0($ra)
    # Line 1388
    lw	$a6,8($s1)
    # Line 1386
    lwc1	$f5,924($s0)
    # Line 1388
    slti	$a7,$a6,2
    # Line 1387
    mul.s	$f4,$f4,$f6
    # Line 1388
    move	$a2,$a0
    bnez	$a7,.L0d97a4fc
    # Line 1386
    mul.s	$f5,$f5,$f6
    # Line 1388
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97a4b0
    addu	$a5,$a5,$s0
    # Line 1392
    lwc1	$f8,1248($s0)
    # Line 1391
    lwc1	$f6,0($a0)
    lwc1	$f7,928($s0)
    # Line 1389
    addiu	$a4,$s0,8
    # Line 1392
    madd.s	$f4,$f4,$f6,$f8
    # Line 1393
    addu	$a2,$t0,$a0
    b	.L0d97a4b0
    # Line 1391
    madd.s	$f5,$f5,$f6,$f7
.L0d97a810:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97a85c
    nop
    nop
.L0d97a820:
    # Line 1600
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1599
    lwc1	$f9,0($a2)
    # Line 1601
    addu	$a2,$t0,$a2
    # Line 1599
    lwc1	$f10,924($a4)
    # Line 1598
    addiu	$a4,$a4,8
    # Line 1599
    lwc1	$f6,0($a2)
    # Line 1600
    madd.s	$f4,$f4,$f9,$f11
    # Line 1599
    lwc1	$f7,920($a4)
    # Line 1598
    sltu	$v1,$a4,$a5
    # Line 1599
    madd.s	$f5,$f5,$f9,$f10
    # Line 1600
    madd.s	$f4,$f4,$f6,$f8
    # Line 1601
    addu	$a2,$t0,$a2
    # Line 1598
    bnez	$v1,.L0d97a820
    # Line 1599
    madd.s	$f5,$f5,$f6,$f7
.L0d97a85c:
    # Line 1603
    lwc1	$f14,772($s0)
    mul.s	$f14,$f14,$f5
    swc1	$f14,0($t2)
    # Line 1604
    lwc1	$f13,1092($s0)
    mul.s	$f13,$f13,$f5
    swc1	$f13,0($t3)
    # Line 1605
    lwc1	$f12,772($s0)
    # Line 1568
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    # Line 1605
    mul.s	$f12,$f12,$f4
    # Line 1568
    addiu	$t3,$t3,4
    beq	$a0,$a3,.L0d97a214
    # Line 1605
    swc1	$f12,-4($t1)
.L0d97a898:
    # Line 1572
    lwc1	$f4,1244($s0)
    # Line 1571
    lwc1	$f6,0($ra)
    # Line 1573
    lw	$a6,8($s1)
    # Line 1571
    lwc1	$f5,924($s0)
    # Line 1573
    slti	$a7,$a6,2
    # Line 1572
    mul.s	$f4,$f4,$f6
    # Line 1573
    move	$a2,$a0
    bnez	$a7,.L0d97a94c
    # Line 1571
    mul.s	$f5,$f5,$f6
    # Line 1573
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97a8fc
    addu	$a5,$a5,$s0
    # Line 1576
    lwc1	$f8,1248($s0)
    # Line 1575
    lwc1	$f6,0($a0)
    lwc1	$f7,928($s0)
    # Line 1576
    madd.s	$f4,$f4,$f6,$f8
    # Line 1574
    addiu	$a4,$s0,8
    # Line 1577
    addu	$a2,$t0,$a0
    # Line 1575
    madd.s	$f5,$f5,$f6,$f7
.L0d97a8fc:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97a94c
    nop
    nop
    nop
.L0d97a910:
    # Line 1576
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1575
    lwc1	$f9,0($a2)
    # Line 1577
    addu	$a2,$t0,$a2
    # Line 1575
    lwc1	$f10,924($a4)
    # Line 1574
    addiu	$a4,$a4,8
    # Line 1575
    lwc1	$f6,0($a2)
    # Line 1576
    madd.s	$f4,$f4,$f9,$f11
    # Line 1575
    lwc1	$f7,920($a4)
    # Line 1574
    sltu	$v1,$a4,$a5
    # Line 1575
    madd.s	$f5,$f5,$f9,$f10
    # Line 1576
    madd.s	$f4,$f4,$f6,$f8
    # Line 1577
    addu	$a2,$t0,$a2
    # Line 1574
    bnez	$v1,.L0d97a910
    # Line 1575
    madd.s	$f5,$f5,$f6,$f7
.L0d97a94c:
    # Line 1579
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,0($t2)
    # Line 1580
    lwc1	$f6,1084($s0)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($t3)
    # Line 1581
    lwc1	$f5,764($s0)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($t1)
    # Line 1584
    lwc1	$f4,1244($s0)
    # Line 1583
    lwc1	$f6,0($a2)
    # Line 1585
    lw	$a7,8($s1)
    # Line 1583
    lwc1	$f5,924($s0)
    # Line 1585
    slti	$a6,$a7,2
    # Line 1584
    mul.s	$f4,$f4,$f6
    # Line 1585
    addu	$a2,$t0,$a2
    bnez	$a6,.L0d97aa1c
    # Line 1583
    mul.s	$f5,$f5,$f6
    # Line 1585
    addiu	$at,$a7,-1
    li	$t8,1
    move	$t9,$a6
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a7,0x2
    beqz	$t9,.L0d97a9d4
    addu	$a5,$a5,$s0
    # Line 1588
    lwc1	$f10,1248($s0)
    # Line 1587
    lwc1	$f8,0($a2)
    lwc1	$f9,928($s0)
    # Line 1588
    madd.s	$f4,$f4,$f8,$f10
    # Line 1586
    addiu	$a4,$s0,8
    # Line 1589
    addu	$a2,$t0,$a2
    # Line 1587
    madd.s	$f5,$f5,$f8,$f9
.L0d97a9d4:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97aa1c
    nop
.L0d97a9e0:
    # Line 1588
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1587
    lwc1	$f9,0($a2)
    # Line 1589
    addu	$a2,$t0,$a2
    # Line 1587
    lwc1	$f10,924($a4)
    # Line 1586
    addiu	$a4,$a4,8
    # Line 1587
    lwc1	$f6,0($a2)
    # Line 1588
    madd.s	$f4,$f4,$f9,$f11
    # Line 1587
    lwc1	$f7,920($a4)
    # Line 1586
    sltu	$v1,$a4,$a5
    # Line 1587
    madd.s	$f5,$f5,$f9,$f10
    # Line 1588
    madd.s	$f4,$f4,$f6,$f8
    # Line 1589
    addu	$a2,$t0,$a2
    # Line 1586
    bnez	$v1,.L0d97a9e0
    # Line 1587
    madd.s	$f5,$f5,$f6,$f7
.L0d97aa1c:
    # Line 1591
    lwc1	$f7,768($s0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,0($t2)
    # Line 1592
    lwc1	$f6,1088($s0)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($t3)
    # Line 1593
    lwc1	$f5,768($s0)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($t1)
    # Line 1596
    lwc1	$f4,1244($s0)
    # Line 1595
    lwc1	$f6,0($a2)
    # Line 1597
    lw	$a7,8($s1)
    # Line 1595
    lwc1	$f5,924($s0)
    # Line 1597
    slti	$a6,$a7,2
    # Line 1596
    mul.s	$f4,$f4,$f6
    # Line 1597
    addu	$a2,$t0,$a2
    bnez	$a6,.L0d97a85c
    # Line 1595
    mul.s	$f5,$f5,$f6
    # Line 1597
    addiu	$at,$a7,-1
    li	$t8,1
    move	$t9,$a6
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a7,0x2
    beqz	$t9,.L0d97a810
    addu	$a5,$a5,$s0
    # Line 1600
    lwc1	$f10,1248($s0)
    # Line 1599
    lwc1	$f8,0($a2)
    lwc1	$f9,928($s0)
    # Line 1598
    addiu	$a4,$s0,8
    # Line 1600
    madd.s	$f4,$f4,$f8,$f10
    # Line 1601
    addu	$a2,$t0,$a2
    b	.L0d97a810
    # Line 1599
    madd.s	$f5,$f5,$f8,$f9
.L0d97aaa8:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97aafc
    nop
    nop
    nop
    nop
.L0d97aac0:
    # Line 1715
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1714
    lwc1	$f9,0($a2)
    # Line 1716
    addu	$a2,$t0,$a2
    # Line 1714
    lwc1	$f10,924($a4)
    # Line 1713
    addiu	$a4,$a4,8
    # Line 1714
    lwc1	$f6,0($a2)
    # Line 1715
    madd.s	$f4,$f4,$f9,$f11
    # Line 1714
    lwc1	$f7,920($a4)
    # Line 1713
    sltu	$v1,$a4,$a5
    # Line 1714
    madd.s	$f5,$f5,$f9,$f10
    # Line 1715
    madd.s	$f4,$f4,$f6,$f8
    # Line 1716
    addu	$a2,$t0,$a2
    # Line 1713
    bnez	$v1,.L0d97aac0
    # Line 1714
    madd.s	$f5,$f5,$f6,$f7
.L0d97aafc:
    # Line 1718
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,0($t2)
    # Line 1719
    lwc1	$f6,1084($s0)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($t3)
    # Line 1720
    lwc1	$f5,764($s0)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($t1)
    # Line 1723
    lwc1	$f4,1244($s0)
    # Line 1722
    lwc1	$f6,0($a2)
    # Line 1724
    lw	$a6,8($s1)
    # Line 1722
    lwc1	$f5,924($s0)
    # Line 1724
    slti	$a7,$a6,2
    # Line 1723
    mul.s	$f4,$f4,$f6
    # Line 1724
    addu	$a2,$t0,$a2
    bnez	$a7,.L0d97abcc
    # Line 1722
    mul.s	$f5,$f5,$f6
    # Line 1724
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97ab84
    addu	$a5,$a5,$s0
    # Line 1727
    lwc1	$f10,1248($s0)
    # Line 1726
    lwc1	$f8,0($a2)
    lwc1	$f9,928($s0)
    # Line 1727
    madd.s	$f4,$f4,$f8,$f10
    # Line 1725
    addiu	$a4,$s0,8
    # Line 1728
    addu	$a2,$t0,$a2
    # Line 1726
    madd.s	$f5,$f5,$f8,$f9
.L0d97ab84:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97abcc
    nop
.L0d97ab90:
    # Line 1727
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1726
    lwc1	$f9,0($a2)
    # Line 1728
    addu	$a2,$t0,$a2
    # Line 1726
    lwc1	$f10,924($a4)
    # Line 1725
    addiu	$a4,$a4,8
    # Line 1726
    lwc1	$f6,0($a2)
    # Line 1727
    madd.s	$f4,$f4,$f9,$f11
    # Line 1726
    lwc1	$f7,920($a4)
    # Line 1725
    sltu	$v1,$a4,$a5
    # Line 1726
    madd.s	$f5,$f5,$f9,$f10
    # Line 1727
    madd.s	$f4,$f4,$f6,$f8
    # Line 1728
    addu	$a2,$t0,$a2
    # Line 1725
    bnez	$v1,.L0d97ab90
    # Line 1726
    madd.s	$f5,$f5,$f6,$f7
.L0d97abcc:
    # Line 1730
    lwc1	$f14,768($s0)
    mul.s	$f14,$f14,$f5
    swc1	$f14,0($t2)
    # Line 1731
    lwc1	$f13,1088($s0)
    mul.s	$f13,$f13,$f5
    swc1	$f13,0($t3)
    # Line 1732
    lwc1	$f12,768($s0)
    # Line 1707
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    # Line 1732
    mul.s	$f12,$f12,$f4
    # Line 1707
    addiu	$t3,$t3,4
    beq	$a0,$a3,.L0d97a214
    # Line 1732
    swc1	$f12,-4($t1)
.L0d97ac08:
    # Line 1711
    lwc1	$f4,1244($s0)
    # Line 1710
    lwc1	$f6,0($ra)
    # Line 1712
    lw	$a6,8($s1)
    # Line 1710
    lwc1	$f5,924($s0)
    # Line 1712
    slti	$a7,$a6,2
    # Line 1711
    mul.s	$f4,$f4,$f6
    # Line 1712
    move	$a2,$a0
    bnez	$a7,.L0d97aafc
    # Line 1710
    mul.s	$f5,$f5,$f6
    # Line 1712
    addiu	$at,$a6,-1
    li	$t8,1
    move	$t9,$a7
    movz	$t8,$at,$t9
    andi	$t9,$t8,0x1
    addiu	$a4,$s0,4
    sll	$a5,$a6,0x2
    beqz	$t9,.L0d97aaa8
    addu	$a5,$a5,$s0
    # Line 1715
    lwc1	$f8,1248($s0)
    # Line 1714
    lwc1	$f6,0($a0)
    lwc1	$f7,928($s0)
    # Line 1713
    addiu	$a4,$s0,8
    # Line 1715
    madd.s	$f4,$f4,$f6,$f8
    # Line 1716
    addu	$a2,$t0,$a0
    b	.L0d97aaa8
    # Line 1714
    madd.s	$f5,$f5,$f6,$f7
.L0d97ac70:
    sra	$v0,$t8,0x1
    beqz	$v0,.L0d97acbc
    nop
    nop
.L0d97ac80:
    # Line 1811
    lwc1	$f8,1248($a4)
    lwc1	$f11,1244($a4)
    # Line 1810
    lwc1	$f9,0($a2)
    # Line 1812
    addu	$a2,$t0,$a2
    # Line 1810
    lwc1	$f10,924($a4)
    # Line 1809
    addiu	$a4,$a4,8
    # Line 1810
    lwc1	$f6,0($a2)
    # Line 1811
    madd.s	$f4,$f4,$f9,$f11
    # Line 1810
    lwc1	$f7,920($a4)
    # Line 1809
    sltu	$v1,$a4,$a5
    # Line 1810
    madd.s	$f5,$f5,$f9,$f10
    # Line 1811
    madd.s	$f4,$f4,$f6,$f8
    # Line 1812
    addu	$a2,$t0,$a2
    # Line 1809
    bnez	$v1,.L0d97ac80
    # Line 1810
    madd.s	$f5,$f5,$f6,$f7
.L0d97acbc:
    # Line 1814
    lwc1	$f14,764($s0)
    mul.s	$f14,$f14,$f5
    swc1	$f14,0($t2)
    # Line 1815
    lwc1	$f13,1084($s0)
    mul.s	$f13,$f13,$f5
    swc1	$f13,0($t3)
    # Line 1816
    lwc1	$f12,764($s0)
    # Line 1803
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    # Line 1816
    mul.s	$f12,$f12,$f4
    # Line 1803
    addiu	$t3,$t3,4
    beq	$a0,$a3,.L0d97a214
    # Line 1816
    swc1	$f12,-4($t1)
.L0d97acf8:
    # Line 1807
    lwc1	$f4,1244($s0)
    # Line 1806
    lwc1	$f6,0($ra)
    # Line 1808
    lw	$a6,8($s1)
    # Line 1806
    lwc1	$f5,924($s0)
    # Line 1808
    slti	$a7,$a6,2
    # Line 1807
    mul.s	$f4,$f4,$f6
    # Line 1808
    move	$a2,$a0
    bnez	$a7,.L0d97acbc
    # Line 1806
    mul.s	$f5,$f5,$f6
    # Line 1808
    addiu	$v0,$a6,-1
    li	$t8,1
    move	$at,$a7
    movz	$t8,$v0,$at
    andi	$at,$t8,0x1
    move	$a4,$t9
    sll	$a5,$a6,0x2
    beqz	$at,.L0d97ac70
    addu	$a5,$a5,$s0
    # Line 1811
    lwc1	$f8,1244($t9)
    # Line 1810
    lwc1	$f6,0($a0)
    lwc1	$f7,924($t9)
    # Line 1809
    addiu	$a4,$t9,4
    # Line 1811
    madd.s	$f4,$f4,$f6,$f8
    # Line 1812
    addu	$a2,$t0,$a0
    b	.L0d97ac70
    # Line 1810
    madd.s	$f5,$f5,$f6,$f7
.L0d97ad60:
    # Line 1443
    blez	$a6,.L0d97a214
    ld	$t0,88($sp)
    sll	$s3,$a6,0x2
    move	$ra,$t0
    addu	$s5,$a6,$a6
    sll	$s4,$s5,0x2
    addu	$s5,$s5,$a6
    addu	$a2,$s4,$t0
    addu	$at,$s5,$a6
    addu	$a0,$s3,$t0
    sll	$at,$at,0x2
    sll	$s5,$s5,0x2
    addu	$s6,$at,$t0
    addu	$a3,$a0,$s3
    addu	$s2,$s6,$s5
    addu	$s1,$s6,$s4
    addu	$t9,$s6,$s3
    ld	$t1,80($sp)
    move	$t8,$s6
    addu	$s6,$s6,$at
    ld	$t3,96($sp)
    addu	$t0,$s5,$t0
    addu	$s5,$s6,$s5
    ld	$t2,104($sp)
    addu	$s4,$s6,$s4
    addu	$s3,$s6,$s3
    nop
    nop
.L0d97add0:
    # Line 1450
    lwc1	$f19,0($ra)
    lwc1	$f18,928($s0)
    lwc1	$f25,0($a0)
    lwc1	$f21,924($s0)
    lwc1	$f23,932($s0)
    mul.s	$f18,$f18,$f25
    lwc1	$f25,0($a2)
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f19,936($s0)
    lwc1	$f21,0($t0)
    madd.s	$f18,$f18,$f23,$f25
    madd.s	$f18,$f18,$f19,$f21
    # Line 1452
    lwc1	$f19,764($s0)
    mul.s	$f19,$f19,$f18
    swc1	$f19,0($t2)
    # Line 1453
    lwc1	$f17,1084($s0)
    mul.s	$f17,$f17,$f18
    swc1	$f17,0($t3)
    # Line 1456
    lwc1	$f12,0($ra)
    lwc1	$f16,1244($s0)
    lwc1	$f13,1248($s0)
    lwc1	$f14,0($a0)
    lwc1	$f15,1252($s0)
    mul.s	$f12,$f12,$f16
    lwc1	$f16,0($a2)
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f13,1256($s0)
    lwc1	$f14,0($t0)
    madd.s	$f12,$f12,$f15,$f16
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f11,764($s0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,0($t1)
    # Line 1459
    lwc1	$f6,0($t8)
    lwc1	$f10,924($s0)
    lwc1	$f7,928($s0)
    lwc1	$f8,0($t9)
    lwc1	$f9,932($s0)
    mul.s	$f6,$f6,$f10
    lwc1	$f10,0($s1)
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f7,936($s0)
    lwc1	$f8,0($s2)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 1461
    lwc1	$f8,768($s0)
    lwc1	$f7,0($t2)
    madd.s	$f7,$f7,$f8,$f6
    swc1	$f7,0($t2)
    # Line 1462
    lwc1	$f5,1088($s0)
    lwc1	$f4,0($t3)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,0($t3)
    # Line 1465
    lwc1	$f31,0($t8)
    lwc1	$f3,1244($s0)
    lwc1	$f0,1248($s0)
    lwc1	$f1,0($t9)
    lwc1	$f2,1252($s0)
    mul.s	$f31,$f31,$f3
    lwc1	$f3,0($s1)
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f0,1256($s0)
    lwc1	$f1,0($s2)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,768($s0)
    lwc1	$f27,0($t1)
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,0($t1)
    # Line 1468
    lwc1	$f18,0($s6)
    lwc1	$f25,924($s0)
    lwc1	$f19,928($s0)
    lwc1	$f21,0($s3)
    lwc1	$f23,932($s0)
    mul.s	$f18,$f18,$f25
    lwc1	$f25,0($s4)
    madd.s	$f18,$f18,$f19,$f21
    lwc1	$f19,936($s0)
    lwc1	$f21,0($s5)
    madd.s	$f18,$f18,$f23,$f25
    madd.s	$f18,$f18,$f19,$f21
    # Line 1470
    lwc1	$f21,772($s0)
    lwc1	$f19,0($t2)
    madd.s	$f19,$f19,$f21,$f18
    swc1	$f19,0($t2)
    # Line 1471
    lwc1	$f17,1092($s0)
    lwc1	$f16,0($t3)
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($t3)
    # Line 1472
    lwc1	$f11,0($s6)
    lwc1	$f15,1244($s0)
    lwc1	$f12,1248($s0)
    lwc1	$f13,0($s3)
    lwc1	$f14,1252($s0)
    mul.s	$f11,$f11,$f15
    lwc1	$f15,0($s4)
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f12,1256($s0)
    lwc1	$f13,0($s5)
    madd.s	$f11,$f11,$f14,$f15
    madd.s	$f11,$f11,$f12,$f13
    # Line 1474
    lwc1	$f10,772($s0)
    # Line 1447
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    addiu	$t9,$t9,4
    addiu	$s1,$s1,4
    # Line 1474
    lwc1	$f9,0($t1)
    # Line 1447
    addiu	$s2,$s2,4
    addiu	$s3,$s3,4
    # Line 1474
    madd.s	$f9,$f9,$f10,$f11
    # Line 1447
    addiu	$s4,$s4,4
    addiu	$s5,$s5,4
    addiu	$s6,$s6,4
    addiu	$t8,$t8,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97add0
    # Line 1474
    swc1	$f9,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97afbc:
    # Line 1271
    blez	$a6,.L0d97a214
    ld	$s4,88($sp)
    sll	$s5,$a6,0x2
    addu	$a0,$s5,$s4
    addu	$a3,$a0,$s5
    addu	$at,$a6,$a6
    sll	$s6,$at,0x2
    addu	$at,$at,$a6
    move	$ra,$s4
    sll	$at,$at,0x2
    addu	$a2,$s6,$s4
    addu	$s4,$at,$s4
    addu	$t8,$s4,$s6
    addu	$t9,$s4,$s5
    move	$t0,$s4
    addu	$s4,$s4,$at
    ld	$t1,80($sp)
    addu	$s3,$s4,$s6
    addu	$s2,$s4,$s5
    ld	$t3,96($sp)
    move	$s1,$s4
    addu	$s4,$s4,$at
    ld	$t2,104($sp)
    addu	$s6,$s4,$s6
    addu	$s5,$s4,$s5
.L0d97b020:
    # Line 1277
    lwc1	$f9,0($ra)
    lwc1	$f6,928($s0)
    lwc1	$f8,0($a0)
    lwc1	$f10,924($s0)
    lwc1	$f7,932($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,0($a2)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 1279
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f6
    swc1	$f7,0($t2)
    # Line 1280
    lwc1	$f5,1084($s0)
    mul.s	$f5,$f5,$f6
    swc1	$f5,0($t3)
    # Line 1283
    lwc1	$f2,0($ra)
    lwc1	$f4,1244($s0)
    lwc1	$f5,1248($s0)
    lwc1	$f6,0($a0)
    lwc1	$f3,1252($s0)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,0($a2)
    madd.s	$f2,$f2,$f5,$f6
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,764($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($t1)
    # Line 1286
    lwc1	$f29,0($t0)
    lwc1	$f0,924($s0)
    lwc1	$f1,928($s0)
    lwc1	$f2,0($t9)
    lwc1	$f31,932($s0)
    mul.s	$f29,$f29,$f0
    lwc1	$f0,0($t8)
    madd.s	$f29,$f29,$f1,$f2
    madd.s	$f29,$f29,$f31,$f0
    # Line 1288
    lwc1	$f0,768($s0)
    lwc1	$f31,0($t2)
    madd.s	$f31,$f31,$f0,$f29
    swc1	$f31,0($t2)
    # Line 1289
    lwc1	$f27,1088($s0)
    lwc1	$f25,0($t3)
    madd.s	$f25,$f25,$f27,$f29
    swc1	$f25,0($t3)
    # Line 1292
    lwc1	$f19,0($t0)
    lwc1	$f23,1244($s0)
    lwc1	$f25,1248($s0)
    lwc1	$f27,0($t9)
    lwc1	$f21,1252($s0)
    mul.s	$f19,$f19,$f23
    lwc1	$f23,0($t8)
    madd.s	$f19,$f19,$f25,$f27
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f18,768($s0)
    lwc1	$f17,0($t1)
    madd.s	$f17,$f17,$f18,$f19
    swc1	$f17,0($t1)
    # Line 1295
    lwc1	$f14,0($s1)
    lwc1	$f16,924($s0)
    lwc1	$f17,928($s0)
    lwc1	$f18,0($s2)
    lwc1	$f15,932($s0)
    mul.s	$f14,$f14,$f16
    lwc1	$f16,0($s3)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    # Line 1297
    lwc1	$f16,772($s0)
    lwc1	$f15,0($t2)
    madd.s	$f15,$f15,$f16,$f14
    swc1	$f15,0($t2)
    # Line 1298
    lwc1	$f13,1092($s0)
    lwc1	$f12,0($t3)
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,0($t3)
    # Line 1301
    lwc1	$f9,0($s1)
    lwc1	$f11,1244($s0)
    lwc1	$f12,1248($s0)
    lwc1	$f13,0($s2)
    lwc1	$f10,1252($s0)
    mul.s	$f9,$f9,$f11
    lwc1	$f11,0($s3)
    madd.s	$f9,$f9,$f12,$f13
    madd.s	$f9,$f9,$f10,$f11
    lwc1	$f8,772($s0)
    lwc1	$f7,0($t1)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,0($t1)
    # Line 1304
    lwc1	$f4,0($s4)
    lwc1	$f6,924($s0)
    lwc1	$f7,928($s0)
    lwc1	$f8,0($s5)
    lwc1	$f5,932($s0)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,0($s6)
    madd.s	$f4,$f4,$f7,$f8
    madd.s	$f4,$f4,$f5,$f6
    # Line 1306
    lwc1	$f6,776($s0)
    lwc1	$f5,0($t2)
    madd.s	$f5,$f5,$f6,$f4
    swc1	$f5,0($t2)
    # Line 1307
    lwc1	$f3,1096($s0)
    lwc1	$f2,0($t3)
    madd.s	$f2,$f2,$f3,$f4
    swc1	$f2,0($t3)
    # Line 1310
    lwc1	$f31,0($s4)
    lwc1	$f1,1244($s0)
    lwc1	$f2,1248($s0)
    lwc1	$f3,0($s5)
    lwc1	$f0,1252($s0)
    mul.s	$f31,$f31,$f1
    lwc1	$f1,0($s6)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,776($s0)
    # Line 1274
    addiu	$a2,$a2,4
    addiu	$t9,$t9,4
    addiu	$t8,$t8,4
    addiu	$s2,$s2,4
    # Line 1310
    lwc1	$f27,0($t1)
    # Line 1274
    addiu	$s3,$s3,4
    addiu	$s5,$s5,4
    # Line 1310
    madd.s	$f27,$f27,$f29,$f31
    # Line 1274
    addiu	$s6,$s6,4
    addiu	$s4,$s4,4
    addiu	$s1,$s1,4
    addiu	$t0,$t0,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97b020
    # Line 1310
    swc1	$f27,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97b23c:
    # Line 1479
    blez	$a6,.L0d97a214
    ld	$t0,88($sp)
    sll	$s2,$a6,0x2
    move	$ra,$t0
    addu	$s1,$a6,$a6
    sll	$s3,$s1,0x2
    addu	$s1,$s1,$a6
    addu	$a2,$s3,$t0
    sll	$s1,$s1,0x2
    addu	$a0,$s2,$t0
    addu	$t0,$s1,$t0
    ld	$t1,80($sp)
    addu	$a3,$a0,$s2
    addu	$t9,$t0,$s2
    ld	$t3,96($sp)
    addu	$t8,$t0,$s3
    addu	$s1,$t0,$s1
    ld	$t2,104($sp)
    addu	$s3,$s1,$s3
    addu	$s2,$s1,$s2
.L0d97b28c:
    # Line 1485
    lwc1	$f11,0($ra)
    lwc1	$f8,928($s0)
    lwc1	$f10,0($a0)
    lwc1	$f12,924($s0)
    lwc1	$f9,932($s0)
    mul.s	$f8,$f8,$f10
    lwc1	$f10,0($a2)
    madd.s	$f8,$f8,$f11,$f12
    madd.s	$f8,$f8,$f9,$f10
    # Line 1487
    lwc1	$f9,764($s0)
    mul.s	$f9,$f9,$f8
    swc1	$f9,0($t2)
    # Line 1488
    lwc1	$f7,1084($s0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,0($t3)
    # Line 1491
    lwc1	$f4,0($ra)
    lwc1	$f6,1244($s0)
    lwc1	$f7,1248($s0)
    lwc1	$f8,0($a0)
    lwc1	$f5,1252($s0)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,0($a2)
    madd.s	$f4,$f4,$f7,$f8
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f3,764($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($t1)
    # Line 1494
    lwc1	$f0,0($t0)
    lwc1	$f2,924($s0)
    lwc1	$f3,928($s0)
    lwc1	$f4,0($t9)
    lwc1	$f1,932($s0)
    mul.s	$f0,$f0,$f2
    lwc1	$f2,0($t8)
    madd.s	$f0,$f0,$f3,$f4
    madd.s	$f0,$f0,$f1,$f2
    # Line 1496
    lwc1	$f2,768($s0)
    lwc1	$f1,0($t2)
    madd.s	$f1,$f1,$f2,$f0
    swc1	$f1,0($t2)
    # Line 1497
    lwc1	$f31,1088($s0)
    lwc1	$f29,0($t3)
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,0($t3)
    # Line 1500
    lwc1	$f23,0($t0)
    lwc1	$f27,1244($s0)
    lwc1	$f29,1248($s0)
    lwc1	$f31,0($t9)
    lwc1	$f25,1252($s0)
    mul.s	$f23,$f23,$f27
    lwc1	$f27,0($t8)
    madd.s	$f23,$f23,$f29,$f31
    madd.s	$f23,$f23,$f25,$f27
    lwc1	$f21,768($s0)
    lwc1	$f19,0($t1)
    madd.s	$f19,$f19,$f21,$f23
    swc1	$f19,0($t1)
    # Line 1503
    lwc1	$f16,0($s1)
    lwc1	$f18,924($s0)
    lwc1	$f19,928($s0)
    lwc1	$f21,0($s2)
    lwc1	$f17,932($s0)
    mul.s	$f16,$f16,$f18
    lwc1	$f18,0($s3)
    madd.s	$f16,$f16,$f19,$f21
    madd.s	$f16,$f16,$f17,$f18
    # Line 1505
    lwc1	$f18,772($s0)
    lwc1	$f17,0($t2)
    madd.s	$f17,$f17,$f18,$f16
    swc1	$f17,0($t2)
    # Line 1506
    lwc1	$f15,1092($s0)
    lwc1	$f14,0($t3)
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,0($t3)
    # Line 1509
    lwc1	$f11,0($s1)
    lwc1	$f13,1244($s0)
    lwc1	$f14,1248($s0)
    lwc1	$f15,0($s2)
    lwc1	$f12,1252($s0)
    mul.s	$f11,$f11,$f13
    lwc1	$f13,0($s3)
    madd.s	$f11,$f11,$f14,$f15
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f10,772($s0)
    # Line 1482
    addiu	$a2,$a2,4
    # Line 1509
    lwc1	$f9,0($t1)
    # Line 1482
    addiu	$t9,$t9,4
    addiu	$t8,$t8,4
    # Line 1509
    madd.s	$f9,$f9,$f10,$f11
    # Line 1482
    addiu	$s2,$s2,4
    addiu	$s3,$s3,4
    addiu	$s1,$s1,4
    addiu	$t0,$t0,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97b28c
    # Line 1509
    swc1	$f9,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97b424:
    # Line 1315
    blez	$a6,.L0d97a214
    ld	$t9,88($sp)
    sll	$s2,$a6,0x2
    addu	$s1,$a6,$a6
    sll	$s1,$s1,0x2
    move	$ra,$t9
    addu	$a0,$s2,$t9
    addu	$t9,$s1,$t9
    addu	$t0,$t9,$s2
    ld	$t1,80($sp)
    move	$a2,$t9
    addu	$t9,$t9,$s1
    ld	$t3,96($sp)
    addu	$a3,$a0,$s2
    addu	$s1,$t9,$s1
    ld	$t2,104($sp)
    addu	$t8,$t9,$s2
    addu	$s2,$s1,$s2
.L0d97b46c:
    # Line 1320
    lwc1	$f2,0($ra)
    lwc1	$f1,928($s0)
    lwc1	$f4,0($a0)
    lwc1	$f3,924($s0)
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    # Line 1321
    lwc1	$f2,764($s0)
    mul.s	$f2,$f2,$f1
    swc1	$f2,0($t2)
    # Line 1322
    lwc1	$f0,1084($s0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($t3)
    # Line 1324
    lwc1	$f27,0($ra)
    lwc1	$f25,1248($s0)
    lwc1	$f31,0($a0)
    lwc1	$f29,1244($s0)
    mul.s	$f25,$f25,$f31
    madd.s	$f25,$f25,$f27,$f29
    lwc1	$f23,764($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($t1)
    # Line 1327
    lwc1	$f18,0($a2)
    lwc1	$f17,928($s0)
    lwc1	$f21,0($t0)
    lwc1	$f19,924($s0)
    mul.s	$f17,$f17,$f21
    madd.s	$f17,$f17,$f18,$f19
    # Line 1328
    lwc1	$f19,768($s0)
    lwc1	$f18,0($t2)
    madd.s	$f18,$f18,$f19,$f17
    swc1	$f18,0($t2)
    # Line 1329
    lwc1	$f16,1088($s0)
    lwc1	$f15,0($t3)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($t3)
    # Line 1331
    lwc1	$f12,0($a2)
    lwc1	$f11,1248($s0)
    lwc1	$f14,0($t0)
    lwc1	$f13,1244($s0)
    mul.s	$f11,$f11,$f14
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f10,768($s0)
    lwc1	$f9,0($t1)
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($t1)
    # Line 1334
    lwc1	$f6,0($t9)
    lwc1	$f5,928($s0)
    lwc1	$f8,0($t8)
    lwc1	$f7,924($s0)
    mul.s	$f5,$f5,$f8
    madd.s	$f5,$f5,$f6,$f7
    # Line 1335
    lwc1	$f7,772($s0)
    lwc1	$f6,0($t2)
    madd.s	$f6,$f6,$f7,$f5
    swc1	$f6,0($t2)
    # Line 1336
    lwc1	$f4,1092($s0)
    lwc1	$f3,0($t3)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,0($t3)
    # Line 1338
    lwc1	$f0,0($t9)
    lwc1	$f31,1248($s0)
    lwc1	$f2,0($t8)
    lwc1	$f1,1244($s0)
    mul.s	$f31,$f31,$f2
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,772($s0)
    lwc1	$f27,0($t1)
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,0($t1)
    # Line 1341
    lwc1	$f21,0($s1)
    lwc1	$f19,928($s0)
    lwc1	$f25,0($s2)
    lwc1	$f23,924($s0)
    mul.s	$f19,$f19,$f25
    madd.s	$f19,$f19,$f21,$f23
    # Line 1342
    lwc1	$f23,776($s0)
    lwc1	$f21,0($t2)
    madd.s	$f21,$f21,$f23,$f19
    swc1	$f21,0($t2)
    # Line 1343
    lwc1	$f18,1096($s0)
    lwc1	$f17,0($t3)
    madd.s	$f17,$f17,$f18,$f19
    swc1	$f17,0($t3)
    # Line 1345
    lwc1	$f14,0($s1)
    lwc1	$f13,1248($s0)
    lwc1	$f16,0($s2)
    lwc1	$f15,1244($s0)
    mul.s	$f13,$f13,$f16
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f12,776($s0)
    lwc1	$f11,0($t1)
    # Line 1317
    addiu	$t0,$t0,4
    addiu	$t8,$t8,4
    # Line 1345
    madd.s	$f11,$f11,$f12,$f13
    # Line 1317
    addiu	$s2,$s2,4
    addiu	$s1,$s1,4
    addiu	$t9,$t9,4
    addiu	$a2,$a2,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97b46c
    # Line 1345
    swc1	$f11,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97b618:
    # Line 1615
    blez	$a6,.L0d97a214
    ld	$t8,88($sp)
    sll	$t9,$a6,0x2
    addu	$at,$a6,$a6
    move	$ra,$t8
    sll	$s1,$at,0x2
    addu	$a2,$s1,$t8
    addu	$at,$at,$a6
    sll	$s2,$at,0x2
    addu	$at,$at,$a6
    addu	$a0,$t9,$t8
    sll	$at,$at,0x2
    ld	$t1,80($sp)
    addu	$t0,$s2,$t8
    addu	$t8,$t8,$at
    ld	$t3,96($sp)
    addu	$a3,$a0,$t9
    addu	$s2,$t8,$s2
    ld	$t2,104($sp)
    addu	$s1,$t8,$s1
    addu	$t9,$t8,$t9
.L0d97b66c:
    # Line 1622
    lwc1	$f1,0($ra)
    lwc1	$f0,928($s0)
    lwc1	$f4,0($a0)
    lwc1	$f2,924($s0)
    lwc1	$f3,932($s0)
    mul.s	$f0,$f0,$f4
    lwc1	$f4,0($a2)
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f1,936($s0)
    lwc1	$f2,0($t0)
    madd.s	$f0,$f0,$f3,$f4
    madd.s	$f0,$f0,$f1,$f2
    # Line 1624
    lwc1	$f1,764($s0)
    mul.s	$f1,$f1,$f0
    swc1	$f1,0($t2)
    # Line 1625
    lwc1	$f31,1084($s0)
    mul.s	$f31,$f31,$f0
    swc1	$f31,0($t3)
    # Line 1628
    lwc1	$f21,0($ra)
    lwc1	$f29,1244($s0)
    lwc1	$f23,1248($s0)
    lwc1	$f25,0($a0)
    lwc1	$f27,1252($s0)
    mul.s	$f21,$f21,$f29
    lwc1	$f29,0($a2)
    madd.s	$f21,$f21,$f23,$f25
    lwc1	$f23,1256($s0)
    lwc1	$f25,0($t0)
    madd.s	$f21,$f21,$f27,$f29
    madd.s	$f21,$f21,$f23,$f25
    lwc1	$f19,764($s0)
    mul.s	$f19,$f19,$f21
    swc1	$f19,0($t1)
    # Line 1631
    lwc1	$f14,0($t8)
    lwc1	$f18,924($s0)
    lwc1	$f15,928($s0)
    lwc1	$f16,0($t9)
    lwc1	$f17,932($s0)
    mul.s	$f14,$f14,$f18
    lwc1	$f18,0($s1)
    madd.s	$f14,$f14,$f15,$f16
    lwc1	$f15,936($s0)
    lwc1	$f16,0($s2)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    # Line 1633
    lwc1	$f16,768($s0)
    lwc1	$f15,0($t2)
    madd.s	$f15,$f15,$f16,$f14
    swc1	$f15,0($t2)
    # Line 1634
    lwc1	$f13,1088($s0)
    lwc1	$f12,0($t3)
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,0($t3)
    # Line 1637
    lwc1	$f7,0($t8)
    lwc1	$f11,1244($s0)
    lwc1	$f8,1248($s0)
    lwc1	$f9,0($t9)
    lwc1	$f10,1252($s0)
    mul.s	$f7,$f7,$f11
    lwc1	$f11,0($s1)
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f8,1256($s0)
    lwc1	$f9,0($s2)
    madd.s	$f7,$f7,$f10,$f11
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f6,768($s0)
    lwc1	$f5,0($t1)
    # Line 1619
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    # Line 1637
    madd.s	$f5,$f5,$f6,$f7
    # Line 1619
    addiu	$t9,$t9,4
    addiu	$s1,$s1,4
    addiu	$s2,$s2,4
    addiu	$t8,$t8,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97b66c
    # Line 1637
    swc1	$f5,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97b7b8:
    # Line 1742
    blez	$a6,.L0d97a214
    ld	$t0,88($sp)
    sll	$a3,$a6,0x2
    addu	$t8,$a6,$a6
    move	$ra,$t0
    sll	$a2,$t8,0x2
    ld	$t1,80($sp)
    addu	$a2,$a2,$t0
    addu	$t8,$t8,$a6
    ld	$t3,96($sp)
    sll	$t8,$t8,0x2
    addu	$a0,$a3,$t0
    ld	$t2,104($sp)
    addu	$a3,$a0,$a3
    addu	$t0,$t0,$t8
.L0d97b7f4:
    # Line 1749
    lwc1	$f13,0($ra)
    lwc1	$f12,928($s0)
    lwc1	$f16,0($a0)
    lwc1	$f14,924($s0)
    lwc1	$f15,932($s0)
    mul.s	$f12,$f12,$f16
    lwc1	$f16,0($a2)
    madd.s	$f12,$f12,$f13,$f14
    lwc1	$f13,936($s0)
    lwc1	$f14,0($t0)
    madd.s	$f12,$f12,$f15,$f16
    madd.s	$f12,$f12,$f13,$f14
    # Line 1751
    lwc1	$f13,764($s0)
    mul.s	$f13,$f13,$f12
    swc1	$f13,0($t2)
    # Line 1752
    lwc1	$f11,1084($s0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,0($t3)
    # Line 1755
    lwc1	$f6,0($ra)
    lwc1	$f10,1244($s0)
    lwc1	$f7,1248($s0)
    lwc1	$f8,0($a0)
    lwc1	$f9,1252($s0)
    mul.s	$f6,$f6,$f10
    lwc1	$f10,0($a2)
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f7,1256($s0)
    lwc1	$f8,0($t0)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    lwc1	$f5,764($s0)
    # Line 1746
    addiu	$a2,$a2,4
    addiu	$t0,$t0,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    # Line 1755
    mul.s	$f5,$f5,$f6
    # Line 1746
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97b7f4
    # Line 1755
    swc1	$f5,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97b8a0:
    # Line 1642
    blez	$a6,.L0d97a214
    ld	$t0,88($sp)
    sll	$t9,$a6,0x2
    addu	$at,$a6,$a6
    move	$ra,$t0
    sll	$t8,$at,0x2
    addu	$a2,$t8,$t0
    addu	$at,$at,$a6
    ld	$t1,80($sp)
    addu	$a0,$t9,$t0
    sll	$at,$at,0x2
    ld	$t3,96($sp)
    addu	$a3,$a0,$t9
    addu	$t0,$t0,$at
    ld	$t2,104($sp)
    addu	$t8,$t0,$t8
    addu	$t9,$t0,$t9
.L0d97b8e4:
    # Line 1648
    lwc1	$f9,0($ra)
    lwc1	$f6,928($s0)
    lwc1	$f8,0($a0)
    lwc1	$f10,924($s0)
    lwc1	$f7,932($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,0($a2)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 1650
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f6
    swc1	$f7,0($t2)
    # Line 1651
    lwc1	$f5,1084($s0)
    mul.s	$f5,$f5,$f6
    swc1	$f5,0($t3)
    # Line 1654
    lwc1	$f2,0($ra)
    lwc1	$f4,1244($s0)
    lwc1	$f5,1248($s0)
    lwc1	$f6,0($a0)
    lwc1	$f3,1252($s0)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,0($a2)
    madd.s	$f2,$f2,$f5,$f6
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,764($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($t1)
    # Line 1657
    lwc1	$f29,0($t0)
    lwc1	$f0,924($s0)
    lwc1	$f1,928($s0)
    lwc1	$f2,0($t9)
    lwc1	$f31,932($s0)
    mul.s	$f29,$f29,$f0
    lwc1	$f0,0($t8)
    madd.s	$f29,$f29,$f1,$f2
    madd.s	$f29,$f29,$f31,$f0
    # Line 1659
    lwc1	$f0,768($s0)
    lwc1	$f31,0($t2)
    madd.s	$f31,$f31,$f0,$f29
    swc1	$f31,0($t2)
    # Line 1660
    lwc1	$f27,1088($s0)
    lwc1	$f25,0($t3)
    madd.s	$f25,$f25,$f27,$f29
    swc1	$f25,0($t3)
    # Line 1663
    lwc1	$f19,0($t0)
    lwc1	$f23,1244($s0)
    lwc1	$f25,1248($s0)
    lwc1	$f27,0($t9)
    lwc1	$f21,1252($s0)
    mul.s	$f19,$f19,$f23
    lwc1	$f23,0($t8)
    madd.s	$f19,$f19,$f25,$f27
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f18,768($s0)
    lwc1	$f17,0($t1)
    madd.s	$f17,$f17,$f18,$f19
    # Line 1645
    addiu	$a2,$a2,4
    addiu	$t9,$t9,4
    addiu	$t8,$t8,4
    addiu	$t0,$t0,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97b8e4
    # Line 1663
    swc1	$f17,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97b9f8:
    # Line 1514
    blez	$a6,.L0d97a214
    ld	$t9,88($sp)
    sll	$t8,$a6,0x2
    addu	$at,$a6,$a6
    sll	$at,$at,0x2
    move	$ra,$t9
    addu	$a0,$t8,$t9
    addu	$t9,$at,$t9
    ld	$t1,80($sp)
    addu	$t0,$t9,$t8
    ld	$t3,96($sp)
    move	$a2,$t9
    addu	$t9,$t9,$at
    ld	$t2,104($sp)
    addu	$a3,$a0,$t8
    addu	$t8,$t9,$t8
.L0d97ba38:
    # Line 1519
    lwc1	$f14,0($ra)
    lwc1	$f13,928($s0)
    lwc1	$f16,0($a0)
    lwc1	$f15,924($s0)
    mul.s	$f13,$f13,$f16
    madd.s	$f13,$f13,$f14,$f15
    # Line 1520
    lwc1	$f14,764($s0)
    mul.s	$f14,$f14,$f13
    swc1	$f14,0($t2)
    # Line 1521
    lwc1	$f12,1084($s0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($t3)
    # Line 1523
    lwc1	$f9,0($ra)
    lwc1	$f8,1248($s0)
    lwc1	$f11,0($a0)
    lwc1	$f10,1244($s0)
    mul.s	$f8,$f8,$f11
    madd.s	$f8,$f8,$f9,$f10
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,0($t1)
    # Line 1526
    lwc1	$f4,0($a2)
    lwc1	$f3,928($s0)
    lwc1	$f6,0($t0)
    lwc1	$f5,924($s0)
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f4,$f5
    # Line 1527
    lwc1	$f5,768($s0)
    lwc1	$f4,0($t2)
    madd.s	$f4,$f4,$f5,$f3
    swc1	$f4,0($t2)
    # Line 1528
    lwc1	$f2,1088($s0)
    lwc1	$f1,0($t3)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,0($t3)
    # Line 1530
    lwc1	$f29,0($a2)
    lwc1	$f27,1248($s0)
    lwc1	$f0,0($t0)
    lwc1	$f31,1244($s0)
    mul.s	$f27,$f27,$f0
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f25,768($s0)
    lwc1	$f23,0($t1)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,0($t1)
    # Line 1533
    lwc1	$f18,0($t9)
    lwc1	$f17,928($s0)
    lwc1	$f21,0($t8)
    lwc1	$f19,924($s0)
    mul.s	$f17,$f17,$f21
    madd.s	$f17,$f17,$f18,$f19
    # Line 1534
    lwc1	$f19,772($s0)
    lwc1	$f18,0($t2)
    madd.s	$f18,$f18,$f19,$f17
    swc1	$f18,0($t2)
    # Line 1535
    lwc1	$f16,1092($s0)
    lwc1	$f15,0($t3)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($t3)
    # Line 1537
    lwc1	$f12,0($t9)
    lwc1	$f11,1248($s0)
    lwc1	$f14,0($t8)
    lwc1	$f13,1244($s0)
    mul.s	$f11,$f11,$f14
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f10,772($s0)
    lwc1	$f9,0($t1)
    madd.s	$f9,$f9,$f10,$f11
    # Line 1516
    addiu	$t0,$t0,4
    addiu	$t8,$t8,4
    addiu	$t9,$t9,4
    addiu	$a2,$a2,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97ba38
    # Line 1537
    swc1	$f9,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97bb7c:
    # Line 1350
    blez	$a6,.L0d97a214
    ld	$a3,88($sp)
    sll	$t0,$a6,0x2
    move	$ra,$a3
    addu	$a3,$t0,$a3
    ld	$t1,80($sp)
    move	$a0,$a3
    addu	$a3,$a3,$t0
    ld	$t3,96($sp)
    move	$a2,$a3
    addu	$a3,$a3,$t0
    ld	$t2,104($sp)
    addu	$t0,$a3,$t0
.L0d97bbb0:
    # Line 1353
    lwc1	$f19,0($ra)
    lwc1	$f23,924($s0)
    # Line 1354
    lwc1	$f21,764($s0)
    # Line 1353
    mul.s	$f19,$f19,$f23
    # Line 1354
    mul.s	$f21,$f21,$f19
    swc1	$f21,0($t2)
    # Line 1355
    lwc1	$f18,1084($s0)
    mul.s	$f18,$f18,$f19
    swc1	$f18,0($t3)
    # Line 1357
    lwc1	$f16,0($ra)
    lwc1	$f17,1244($s0)
    lwc1	$f15,764($s0)
    mul.s	$f16,$f16,$f17
    mul.s	$f15,$f15,$f16
    swc1	$f15,0($t1)
    # Line 1360
    lwc1	$f13,0($a0)
    lwc1	$f14,924($s0)
    # Line 1361
    lwc1	$f15,768($s0)
    # Line 1360
    mul.s	$f13,$f13,$f14
    # Line 1361
    lwc1	$f14,0($t2)
    madd.s	$f14,$f14,$f15,$f13
    swc1	$f14,0($t2)
    # Line 1362
    lwc1	$f12,1088($s0)
    lwc1	$f11,0($t3)
    madd.s	$f11,$f11,$f12,$f13
    swc1	$f11,0($t3)
    # Line 1364
    lwc1	$f9,0($a0)
    lwc1	$f10,1244($s0)
    lwc1	$f8,768($s0)
    mul.s	$f9,$f9,$f10
    lwc1	$f7,0($t1)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,0($t1)
    # Line 1367
    lwc1	$f5,0($a2)
    lwc1	$f6,924($s0)
    # Line 1368
    lwc1	$f7,772($s0)
    # Line 1367
    mul.s	$f5,$f5,$f6
    # Line 1368
    lwc1	$f6,0($t2)
    madd.s	$f6,$f6,$f7,$f5
    swc1	$f6,0($t2)
    # Line 1369
    lwc1	$f4,1092($s0)
    lwc1	$f3,0($t3)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,0($t3)
    # Line 1371
    lwc1	$f1,0($a2)
    lwc1	$f2,1244($s0)
    lwc1	$f0,772($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f31,0($t1)
    madd.s	$f31,$f31,$f0,$f1
    swc1	$f31,0($t1)
    # Line 1374
    lwc1	$f27,0($a3)
    lwc1	$f29,924($s0)
    # Line 1375
    lwc1	$f31,776($s0)
    # Line 1374
    mul.s	$f27,$f27,$f29
    # Line 1375
    lwc1	$f29,0($t2)
    madd.s	$f29,$f29,$f31,$f27
    swc1	$f29,0($t2)
    # Line 1376
    lwc1	$f25,1096($s0)
    lwc1	$f23,0($t3)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,0($t3)
    # Line 1378
    lwc1	$f19,0($a3)
    lwc1	$f21,1244($s0)
    lwc1	$f18,776($s0)
    mul.s	$f19,$f19,$f21
    lwc1	$f17,0($t1)
    madd.s	$f17,$f17,$f18,$f19
    # Line 1350
    addiu	$a2,$a2,4
    addiu	$a0,$a0,4
    addiu	$ra,$ra,4
    addiu	$a3,$a3,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a3,$t0,.L0d97bbb0
    # Line 1378
    swc1	$f17,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97bcec:
    # Line 1542
    blez	$a6,.L0d97a214
    ld	$a2,88($sp)
    sll	$a3,$a6,0x2
    ld	$t1,80($sp)
    move	$ra,$a2
    addu	$a2,$a3,$a2
    ld	$t3,96($sp)
    move	$a0,$a2
    addu	$a2,$a2,$a3
    ld	$t2,104($sp)
    addu	$a3,$a2,$a3
.L0d97bd18:
    # Line 1545
    lwc1	$f16,0($ra)
    lwc1	$f18,924($s0)
    # Line 1546
    lwc1	$f17,764($s0)
    # Line 1545
    mul.s	$f16,$f16,$f18
    # Line 1546
    mul.s	$f17,$f17,$f16
    swc1	$f17,0($t2)
    # Line 1547
    lwc1	$f15,1084($s0)
    mul.s	$f15,$f15,$f16
    swc1	$f15,0($t3)
    # Line 1549
    lwc1	$f13,0($ra)
    lwc1	$f14,1244($s0)
    lwc1	$f12,764($s0)
    mul.s	$f13,$f13,$f14
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($t1)
    # Line 1552
    lwc1	$f10,0($a0)
    lwc1	$f11,924($s0)
    # Line 1553
    lwc1	$f12,768($s0)
    # Line 1552
    mul.s	$f10,$f10,$f11
    # Line 1553
    lwc1	$f11,0($t2)
    madd.s	$f11,$f11,$f12,$f10
    swc1	$f11,0($t2)
    # Line 1554
    lwc1	$f9,1088($s0)
    lwc1	$f8,0($t3)
    madd.s	$f8,$f8,$f9,$f10
    swc1	$f8,0($t3)
    # Line 1556
    lwc1	$f6,0($a0)
    lwc1	$f7,1244($s0)
    lwc1	$f5,768($s0)
    mul.s	$f6,$f6,$f7
    lwc1	$f4,0($t1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,0($t1)
    # Line 1559
    lwc1	$f2,0($a2)
    lwc1	$f3,924($s0)
    # Line 1560
    lwc1	$f4,772($s0)
    # Line 1559
    mul.s	$f2,$f2,$f3
    # Line 1560
    lwc1	$f3,0($t2)
    madd.s	$f3,$f3,$f4,$f2
    swc1	$f3,0($t2)
    # Line 1561
    lwc1	$f1,1092($s0)
    lwc1	$f0,0($t3)
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,0($t3)
    # Line 1563
    lwc1	$f29,0($a2)
    lwc1	$f31,1244($s0)
    lwc1	$f27,772($s0)
    mul.s	$f29,$f29,$f31
    lwc1	$f25,0($t1)
    madd.s	$f25,$f25,$f27,$f29
    # Line 1542
    addiu	$a0,$a0,4
    addiu	$ra,$ra,4
    addiu	$a2,$a2,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a2,$a3,.L0d97bd18
    # Line 1563
    swc1	$f25,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97be08:
    # Line 1760
    blez	$a6,.L0d97a214
    sll	$a3,$a6,0x2
    addu	$a2,$a6,$a6
    ld	$a5,88($sp)
    andi	$a4,$a6,0x1
    sll	$a2,$a2,0x2
    ld	$t1,80($sp)
    move	$ra,$a5
    addu	$t0,$a3,$a5
    ld	$t3,96($sp)
    addu	$a2,$a2,$a5
    addu	$a3,$t0,$a3
    ld	$t2,104($sp)
    beqz	$a4,.L0d97bed8
    move	$a0,$t0
    # Line 1766
    lwc1	$f2,924($s0)
    lwc1	$f0,0($t0)
    ld	$ra,88($sp)
    lwc1	$f29,928($s0)
    lwc1	$f1,0($ra)
    lwc1	$f31,932($s0)
    mul.s	$f29,$f29,$f0
    lwc1	$f0,0($a2)
    madd.s	$f29,$f29,$f1,$f2
    madd.s	$f29,$f29,$f31,$f0
    # Line 1768
    lwc1	$f31,764($s0)
    ld	$t2,104($sp)
    mul.s	$f31,$f31,$f29
    swc1	$f31,0($t2)
    # Line 1769
    lwc1	$f27,1084($s0)
    ld	$t3,96($sp)
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($t3)
    # Line 1772
    lwc1	$f29,0($t0)
    lwc1	$f25,1244($s0)
    lwc1	$f21,0($ra)
    lwc1	$f27,1248($s0)
    lwc1	$f23,1252($s0)
    mul.s	$f21,$f21,$f25
    lwc1	$f25,0($a2)
    madd.s	$f21,$f21,$f27,$f29
    madd.s	$f21,$f21,$f23,$f25
    lwc1	$f19,764($s0)
    # Line 1763
    ld	$a4,80($sp)
    addiu	$a0,$t0,4
    addiu	$a2,$a2,4
    addiu	$t1,$a4,4
    addiu	$t2,$t2,4
    # Line 1772
    mul.s	$f19,$f19,$f21
    # Line 1763
    addiu	$ra,$ra,4
    addiu	$t3,$t3,4
    # Line 1772
    swc1	$f19,0($a4)
.L0d97bed8:
    sra	$at,$a6,0x1
    beqz	$at,.L0d97bfd8
    nop
.L0d97bee4:
    # Line 1766
    lwc1	$f17,0($ra)
    lwc1	$f14,928($s0)
    lwc1	$f16,0($a0)
    lwc1	$f18,924($s0)
    lwc1	$f15,932($s0)
    mul.s	$f14,$f14,$f16
    lwc1	$f16,0($a2)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    # Line 1768
    lwc1	$f15,764($s0)
    mul.s	$f15,$f15,$f14
    swc1	$f15,0($t2)
    # Line 1769
    lwc1	$f13,1084($s0)
    mul.s	$f13,$f13,$f14
    swc1	$f13,0($t3)
    # Line 1772
    lwc1	$f13,0($ra)
    lwc1	$f10,1248($s0)
    lwc1	$f12,0($a0)
    lwc1	$f14,1244($s0)
    lwc1	$f11,1252($s0)
    mul.s	$f10,$f10,$f12
    lwc1	$f12,0($a2)
    madd.s	$f10,$f10,$f13,$f14
    madd.s	$f10,$f10,$f11,$f12
    lwc1	$f9,764($s0)
    mul.s	$f9,$f9,$f10
    swc1	$f9,0($t1)
    # Line 1766
    lwc1	$f9,4($ra)
    lwc1	$f6,928($s0)
    lwc1	$f8,4($a0)
    lwc1	$f10,924($s0)
    lwc1	$f7,932($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,4($a2)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 1768
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f6
    swc1	$f7,4($t2)
    # Line 1769
    lwc1	$f5,1084($s0)
    mul.s	$f5,$f5,$f6
    swc1	$f5,4($t3)
    # Line 1772
    lwc1	$f2,4($ra)
    lwc1	$f4,1244($s0)
    lwc1	$f5,1248($s0)
    lwc1	$f6,4($a0)
    lwc1	$f3,1252($s0)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,4($a2)
    madd.s	$f2,$f2,$f5,$f6
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,764($s0)
    # Line 1763
    addiu	$a2,$a2,8
    addiu	$ra,$ra,8
    addiu	$a0,$a0,8
    addiu	$t2,$t2,8
    addiu	$t1,$t1,8
    # Line 1772
    mul.s	$f1,$f1,$f2
    # Line 1763
    addiu	$t3,$t3,8
    bne	$a0,$a3,.L0d97bee4
    # Line 1772
    swc1	$f1,-4($t1)
.L0d97bfd8:
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97bfe0:
    # Line 1668
    blez	$a6,.L0d97a214
    ld	$a4,88($sp)
    sll	$t0,$a6,0x2
    addu	$a2,$a6,$a6
    ld	$t1,80($sp)
    move	$ra,$a4
    sll	$a2,$a2,0x2
    ld	$t3,96($sp)
    addu	$a2,$a2,$a4
    addu	$a0,$t0,$a4
    ld	$t2,104($sp)
    addu	$a3,$a0,$t0
    addu	$t0,$a2,$t0
.L0d97c014:
    # Line 1673
    lwc1	$f10,0($ra)
    lwc1	$f9,928($s0)
    lwc1	$f12,0($a0)
    lwc1	$f11,924($s0)
    mul.s	$f9,$f9,$f12
    madd.s	$f9,$f9,$f10,$f11
    # Line 1674
    lwc1	$f10,764($s0)
    mul.s	$f10,$f10,$f9
    swc1	$f10,0($t2)
    # Line 1675
    lwc1	$f8,1084($s0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,0($t3)
    # Line 1677
    lwc1	$f5,0($ra)
    lwc1	$f4,1248($s0)
    lwc1	$f7,0($a0)
    lwc1	$f6,1244($s0)
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f3,764($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($t1)
    # Line 1680
    lwc1	$f0,0($a2)
    lwc1	$f31,928($s0)
    lwc1	$f2,0($t0)
    lwc1	$f1,924($s0)
    mul.s	$f31,$f31,$f2
    madd.s	$f31,$f31,$f0,$f1
    # Line 1681
    lwc1	$f1,768($s0)
    lwc1	$f0,0($t2)
    madd.s	$f0,$f0,$f1,$f31
    swc1	$f0,0($t2)
    # Line 1682
    lwc1	$f29,1088($s0)
    lwc1	$f27,0($t3)
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,0($t3)
    # Line 1684
    lwc1	$f21,0($a2)
    lwc1	$f19,1248($s0)
    lwc1	$f25,0($t0)
    lwc1	$f23,1244($s0)
    mul.s	$f19,$f19,$f25
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f18,768($s0)
    lwc1	$f17,0($t1)
    madd.s	$f17,$f17,$f18,$f19
    # Line 1670
    addiu	$t0,$t0,4
    addiu	$a2,$a2,4
    addiu	$ra,$ra,4
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    addiu	$t3,$t3,4
    bne	$a0,$a3,.L0d97c014
    # Line 1684
    swc1	$f17,-4($t1)
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97c0f0:
    # Line 1777
    blez	$a6,.L0d97a214
    ld	$ra,88($sp)
    sll	$a3,$a6,0x2
    ld	$t1,80($sp)
    andi	$a4,$a6,0x1
    addu	$a2,$a3,$ra
    ld	$t3,96($sp)
    addu	$a3,$a2,$a3
    ld	$t2,104($sp)
    beqz	$a4,.L0d97c194
    move	$a0,$a2
    # Line 1782
    lwc1	$f23,924($s0)
    lwc1	$f25,0($a2)
    ld	$ra,88($sp)
    lwc1	$f19,928($s0)
    lwc1	$f21,0($ra)
    mul.s	$f19,$f19,$f25
    madd.s	$f19,$f19,$f21,$f23
    # Line 1783
    lwc1	$f21,764($s0)
    ld	$t2,104($sp)
    mul.s	$f21,$f21,$f19
    swc1	$f21,0($t2)
    # Line 1784
    lwc1	$f18,1084($s0)
    ld	$t3,96($sp)
    mul.s	$f18,$f18,$f19
    swc1	$f18,0($t3)
    # Line 1786
    lwc1	$f16,1244($s0)
    lwc1	$f17,0($a2)
    lwc1	$f14,1248($s0)
    lwc1	$f15,0($ra)
    mul.s	$f14,$f14,$f17
    madd.s	$f14,$f14,$f15,$f16
    lwc1	$f13,764($s0)
    # Line 1779
    ld	$a4,80($sp)
    addiu	$a0,$a2,4
    addiu	$t1,$a4,4
    addiu	$t2,$t2,4
    # Line 1786
    mul.s	$f13,$f13,$f14
    # Line 1779
    addiu	$ra,$ra,4
    addiu	$t3,$t3,4
    # Line 1786
    swc1	$f13,0($a4)
.L0d97c194:
    sra	$at,$a6,0x1
    beqz	$at,.L0d97c260
    nop
.L0d97c1a0:
    # Line 1782
    lwc1	$f14,0($ra)
    lwc1	$f13,928($s0)
    lwc1	$f16,0($a0)
    lwc1	$f15,924($s0)
    mul.s	$f13,$f13,$f16
    madd.s	$f13,$f13,$f14,$f15
    # Line 1783
    lwc1	$f14,764($s0)
    mul.s	$f14,$f14,$f13
    swc1	$f14,0($t2)
    # Line 1784
    lwc1	$f12,1084($s0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($t3)
    # Line 1786
    lwc1	$f9,0($ra)
    lwc1	$f8,1248($s0)
    lwc1	$f11,0($a0)
    lwc1	$f10,1244($s0)
    mul.s	$f8,$f8,$f11
    madd.s	$f8,$f8,$f9,$f10
    lwc1	$f7,764($s0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,0($t1)
    # Line 1782
    lwc1	$f4,4($ra)
    lwc1	$f3,928($s0)
    lwc1	$f6,4($a0)
    lwc1	$f5,924($s0)
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f4,$f5
    # Line 1783
    lwc1	$f4,764($s0)
    mul.s	$f4,$f4,$f3
    swc1	$f4,4($t2)
    # Line 1784
    lwc1	$f2,1084($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($t3)
    # Line 1786
    lwc1	$f31,4($ra)
    lwc1	$f29,1248($s0)
    lwc1	$f1,4($a0)
    lwc1	$f0,1244($s0)
    mul.s	$f29,$f29,$f1
    madd.s	$f29,$f29,$f31,$f0
    lwc1	$f27,764($s0)
    # Line 1779
    addiu	$ra,$ra,8
    addiu	$a0,$a0,8
    addiu	$t2,$t2,8
    addiu	$t1,$t1,8
    # Line 1786
    mul.s	$f27,$f27,$f29
    # Line 1779
    addiu	$t3,$t3,8
    bne	$a0,$a3,.L0d97c1a0
    # Line 1786
    swc1	$f27,-4($t1)
.L0d97c260:
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97c268:
    # Line 1689
    blez	$a6,.L0d97a214
    ld	$t8,88($sp)
    ld	$t1,80($sp)
    andi	$t9,$a6,0x1
    ld	$t3,96($sp)
    sll	$s2,$a6,0x2
    move	$ra,$t8
    ld	$t2,104($sp)
    beqz	$t9,.L0d97c334
    addu	$s2,$s2,$t8
    # Line 1692
    ld	$ra,88($sp)
    lwc1	$f5,924($s0)
    lwc1	$f3,0($ra)
    # Line 1693
    lwc1	$f4,764($s0)
    # Line 1692
    mul.s	$f3,$f3,$f5
    # Line 1693
    ld	$t2,104($sp)
    mul.s	$f4,$f4,$f3
    swc1	$f4,0($t2)
    # Line 1694
    lwc1	$f2,1084($s0)
    ld	$t3,96($sp)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($t3)
    # Line 1696
    lwc1	$f1,1244($s0)
    lwc1	$f0,0($ra)
    lwc1	$f31,764($s0)
    mul.s	$f0,$f0,$f1
    ld	$at,80($sp)
    mul.s	$f31,$f31,$f0
    swc1	$f31,0($at)
    # Line 1698
    lwc1	$f29,924($s0)
    lwc1	$f27,0($ra)
    # Line 1699
    lwc1	$f31,764($s0)
    # Line 1698
    mul.s	$f27,$f27,$f29
    # Line 1699
    lwc1	$f29,0($t2)
    madd.s	$f29,$f29,$f31,$f27
    swc1	$f29,0($t2)
    # Line 1700
    lwc1	$f25,1084($s0)
    lwc1	$f23,0($t3)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,0($t3)
    # Line 1702
    lwc1	$f21,1244($s0)
    lwc1	$f19,0($ra)
    lwc1	$f18,764($s0)
    mul.s	$f19,$f19,$f21
    lwc1	$f17,0($at)
    madd.s	$f17,$f17,$f18,$f19
    # Line 1689
    addiu	$t1,$at,4
    addiu	$t2,$t2,4
    addiu	$ra,$ra,4
    addiu	$t3,$t3,4
    # Line 1702
    swc1	$f17,0($at)
.L0d97c334:
    sra	$at,$a6,0x1
    beqz	$at,.L0d97c45c
    nop
.L0d97c340:
    # Line 1692
    lwc1	$f7,0($ra)
    lwc1	$f9,924($s0)
    # Line 1693
    lwc1	$f8,764($s0)
    # Line 1692
    mul.s	$f7,$f7,$f9
    # Line 1693
    mul.s	$f8,$f8,$f7
    swc1	$f8,0($t2)
    # Line 1694
    lwc1	$f6,1084($s0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($t3)
    # Line 1696
    lwc1	$f4,0($ra)
    lwc1	$f5,1244($s0)
    lwc1	$f3,764($s0)
    mul.s	$f4,$f4,$f5
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($t1)
    # Line 1698
    lwc1	$f1,0($ra)
    lwc1	$f2,924($s0)
    # Line 1699
    lwc1	$f3,764($s0)
    # Line 1698
    mul.s	$f1,$f1,$f2
    # Line 1699
    lwc1	$f2,0($t2)
    madd.s	$f2,$f2,$f3,$f1
    swc1	$f2,0($t2)
    # Line 1700
    lwc1	$f0,1084($s0)
    lwc1	$f31,0($t3)
    madd.s	$f31,$f31,$f0,$f1
    swc1	$f31,0($t3)
    # Line 1702
    lwc1	$f27,0($ra)
    lwc1	$f29,1244($s0)
    lwc1	$f25,764($s0)
    mul.s	$f27,$f27,$f29
    lwc1	$f23,0($t1)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,0($t1)
    # Line 1692
    lwc1	$f18,4($ra)
    lwc1	$f21,924($s0)
    # Line 1693
    lwc1	$f19,764($s0)
    # Line 1692
    mul.s	$f18,$f18,$f21
    # Line 1693
    mul.s	$f19,$f19,$f18
    swc1	$f19,4($t2)
    # Line 1694
    lwc1	$f17,1084($s0)
    mul.s	$f17,$f17,$f18
    swc1	$f17,4($t3)
    # Line 1696
    lwc1	$f15,4($ra)
    lwc1	$f16,1244($s0)
    lwc1	$f14,764($s0)
    mul.s	$f15,$f15,$f16
    mul.s	$f14,$f14,$f15
    swc1	$f14,4($t1)
    # Line 1698
    lwc1	$f12,4($ra)
    lwc1	$f13,924($s0)
    # Line 1699
    lwc1	$f14,764($s0)
    # Line 1698
    mul.s	$f12,$f12,$f13
    # Line 1699
    lwc1	$f13,4($t2)
    madd.s	$f13,$f13,$f14,$f12
    swc1	$f13,4($t2)
    # Line 1700
    lwc1	$f11,1084($s0)
    lwc1	$f10,4($t3)
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,4($t3)
    # Line 1702
    lwc1	$f8,4($ra)
    lwc1	$f9,1244($s0)
    lwc1	$f7,764($s0)
    mul.s	$f8,$f8,$f9
    lwc1	$f6,4($t1)
    madd.s	$f6,$f6,$f7,$f8
    # Line 1689
    addiu	$ra,$ra,8
    addiu	$t2,$t2,8
    addiu	$t1,$t1,8
    addiu	$t3,$t3,8
    bne	$ra,$s2,.L0d97c340
    # Line 1702
    swc1	$f6,-4($t1)
.L0d97c45c:
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
.L0d97c464:
    # Line 1791
    blez	$a6,.L0d97a214
    ld	$t8,88($sp)
    ld	$t1,80($sp)
    andi	$a0,$a6,0x3
    ld	$t3,96($sp)
    sll	$s2,$a6,0x2
    move	$ra,$t8
    ld	$t2,104($sp)
    beqz	$a0,.L0d97c4e0
    addu	$s2,$s2,$t8
.L0d97c48c:
    # Line 1794
    lwc1	$f14,0($ra)
    lwc1	$f16,924($s0)
    # Line 1795
    lwc1	$f15,764($s0)
    # Line 1794
    mul.s	$f14,$f14,$f16
    # Line 1795
    mul.s	$f15,$f15,$f14
    swc1	$f15,0($t2)
    # Line 1796
    lwc1	$f13,1084($s0)
    mul.s	$f13,$f13,$f14
    swc1	$f13,0($t3)
    # Line 1798
    lwc1	$f11,0($ra)
    lwc1	$f12,1244($s0)
    lwc1	$f10,764($s0)
    mul.s	$f11,$f11,$f12
    # Line 1791
    addiu	$ra,$ra,4
    addiu	$a0,$a0,-1
    addiu	$t2,$t2,4
    addiu	$t1,$t1,4
    # Line 1798
    mul.s	$f10,$f10,$f11
    # Line 1791
    addiu	$t3,$t3,4
    bnez	$a0,.L0d97c48c
    # Line 1798
    swc1	$f10,-4($t1)
.L0d97c4e0:
    sra	$t9,$a6,0x2
    beqz	$t9,.L0d97c5f0
    nop
.L0d97c4ec:
    # Line 1794
    lwc1	$f16,0($ra)
    lwc1	$f18,924($s0)
    # Line 1795
    lwc1	$f17,764($s0)
    # Line 1794
    mul.s	$f16,$f16,$f18
    # Line 1795
    mul.s	$f17,$f17,$f16
    swc1	$f17,0($t2)
    # Line 1796
    lwc1	$f15,1084($s0)
    mul.s	$f15,$f15,$f16
    swc1	$f15,0($t3)
    # Line 1798
    lwc1	$f13,0($ra)
    lwc1	$f14,1244($s0)
    lwc1	$f12,764($s0)
    mul.s	$f13,$f13,$f14
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($t1)
    # Line 1794
    lwc1	$f9,4($ra)
    lwc1	$f11,924($s0)
    # Line 1795
    lwc1	$f10,764($s0)
    # Line 1794
    mul.s	$f9,$f9,$f11
    # Line 1795
    mul.s	$f10,$f10,$f9
    swc1	$f10,4($t2)
    # Line 1796
    lwc1	$f8,1084($s0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,4($t3)
    # Line 1798
    lwc1	$f6,4($ra)
    lwc1	$f7,1244($s0)
    lwc1	$f5,764($s0)
    mul.s	$f6,$f6,$f7
    mul.s	$f5,$f5,$f6
    swc1	$f5,4($t1)
    # Line 1794
    lwc1	$f2,8($ra)
    lwc1	$f4,924($s0)
    # Line 1795
    lwc1	$f3,764($s0)
    # Line 1794
    mul.s	$f2,$f2,$f4
    # Line 1795
    mul.s	$f3,$f3,$f2
    swc1	$f3,8($t2)
    # Line 1796
    lwc1	$f1,1084($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($t3)
    # Line 1798
    lwc1	$f31,8($ra)
    lwc1	$f0,1244($s0)
    lwc1	$f29,764($s0)
    mul.s	$f31,$f31,$f0
    mul.s	$f29,$f29,$f31
    swc1	$f29,8($t1)
    # Line 1794
    lwc1	$f23,12($ra)
    lwc1	$f27,924($s0)
    # Line 1795
    lwc1	$f25,764($s0)
    # Line 1794
    mul.s	$f23,$f23,$f27
    # Line 1795
    mul.s	$f25,$f25,$f23
    swc1	$f25,12($t2)
    # Line 1796
    lwc1	$f21,1084($s0)
    mul.s	$f21,$f21,$f23
    swc1	$f21,12($t3)
    # Line 1798
    lwc1	$f18,12($ra)
    lwc1	$f19,1244($s0)
    lwc1	$f17,764($s0)
    mul.s	$f18,$f18,$f19
    # Line 1791
    addiu	$ra,$ra,16
    addiu	$t2,$t2,16
    addiu	$t1,$t1,16
    # Line 1798
    mul.s	$f17,$f17,$f18
    # Line 1791
    addiu	$t3,$t3,16
    bne	$ra,$s2,.L0d97c4ec
    # Line 1798
    swc1	$f17,-4($t1)
.L0d97c5f0:
    b	.L0d97a218
    # Line 1843
    ld	$s0,112($sp)
    nop
    nop
.L0d97c600:
    # Line 1827
    addiu	$a3,$a3,1
    b	.L0d97a31c
    # Line 1829
    lwc1	$f4,1244($s0)
.end DoDomain2WithDerivs

# Function: DoEvalCoord2
# Declared: Line 1851 (Source lines: 1853-1993)
# Address: 0x0d97c610 - 0x0d97cbdc (Size: 1484 bytes, Frame: 176)
.ent DoEvalCoord2
DoEvalCoord2:
    # Line 1853
    addiu	$sp,$sp,-1584
    sd	$s3,1520($sp)
    sd	$s2,1528($sp)
    sd	$s6,1536($sp)
    sd	$ra,1544($sp)
    sd	$s4,1552($sp)
    sd	$s0,1560($sp)
    sd	$s1,1568($sp)
    sd	$s7,1512($sp)
    li	$a7,3
    sdc1	$f20,1496($sp)
    # Line 1857
    li	$a4,355
    move	$a2,$zero
    # Line 1853
    sd	$s8,1504($sp)
    # Line 1857
    addiu	$a6,$a0,28292
    # Line 1853
    move	$s8,$a0
    mov.s	$f20,$f13
    sdc1	$f22,1488($sp)
    mov.s	$f22,$f14
    move	$s7,$a3
    # Line 1857
    addiu	$a5,$sp,0
    sd	$s5,1576($sp)
.L0d97c668:
    addiu	$a7,$a7,-1
    addu	$at,$a2,$a6
    addiu	$a4,$a4,-1
    addu	$v0,$a2,$a5
    lw	$at,0($at)
    addiu	$a2,$a2,4
    bnez	$a7,.L0d97c668
    sw	$at,0($v0)
    addiu	$s4,$a6,28
    addiu	$t3,$a5,28
    li	$t8,0x20
    addiu	$s6,$a6,4
    addiu	$a7,$a5,4
    addiu	$s2,$a5,8
    addiu	$s3,$a6,8
    addiu	$s5,$a6,12
    addiu	$t2,$a5,12
    addiu	$t0,$a6,20
    addiu	$t1,$a5,20
    addiu	$t9,$a5,24
    addiu	$ra,$a6,24
    addiu	$s0,$a5,16
    addiu	$s1,$a6,16
    nop
    nop
    nop
.L0d97c6d0:
    addu	$v1,$a2,$a6
    addu	$a0,$a2,$a5
    lw	$v1,0($v1)
    addu	$v0,$a2,$s6
    sw	$v1,0($a0)
    addu	$v1,$a2,$a7
    lw	$v0,0($v0)
    addu	$at,$a2,$s3
    sw	$v0,0($v1)
    addu	$v0,$a2,$s2
    lw	$at,0($at)
    addu	$a3,$a2,$s5
    sw	$at,0($v0)
    addu	$at,$a2,$t2
    lw	$a3,0($a3)
    addu	$a1,$a2,$s1
    sw	$a3,0($at)
    addu	$a3,$a2,$s0
    lw	$a1,0($a1)
    addu	$a0,$a2,$t0
    sw	$a1,0($a3)
    addu	$a1,$a2,$t1
    lw	$a0,0($a0)
    addu	$v1,$a2,$ra
    sw	$a0,0($a1)
    addu	$a0,$a2,$t9
    lw	$v1,0($v1)
    addiu	$a4,$a4,-8
    addu	$v0,$a2,$s4
    sw	$v1,0($a0)
    addu	$v1,$a2,$t3
    lw	$v0,0($v0)
    addu	$a2,$a2,$t8
    bgtz	$a4,.L0d97c6d0
    sw	$v0,0($v1)
    # Line 1859
    sw	$zero,0($s7)
    lw	$a1,1792($s8)
    dsll32	$a1,$a1,0x8
    move	$a0,$zero
    bgez	$a1,.L0d97ca34
    lw	$a2,1812($s8)
    ld	$s3,1520($sp)
    ld	$s2,1528($sp)
    ld	$s6,1536($sp)
    andi	$a3,$a2,0x100
    ld	$s4,1552($sp)
    beqz	$a3,.L0d97c980
    ld	$s5,1576($sp)
    # Line 1869
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$a6,$sp,1440
    addiu	$a5,$sp,1424
    addiu	$a3,$s8,28828
    addiu	$t9,$t9,-25232
    mov.s	$f14,$f22
    addiu	$a0,$sp,0
    addiu	$s0,$s7,52
    lw	$a7,28936($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a4,$s0
    # Line 1871
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,31856
    move	$a0,$s0
    addiu	$a2,$sp,1440
    bal __glOdysseyDoEvalCoord1
    addiu	$a1,$sp,1424
    # Line 1872
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s8
    addiu	$t9,$t9,32016
    addiu	$a3,$sp,1440
    addiu	$a2,$sp,1424
    bal __glOdysseyDoEvalCoord1
    addiu	$a1,$s7,20
    # Line 1873
    lw	$a0,0($s7)
    ori	$a0,$a0,0x24
    sw	$a0,0($s7)
    li	$s1,4
    lw	$a2,1812($s8)
.L0d97c808:
    # Line 1881
    la	$s0,sub_0d970000
.L0d97c80c:
    addiu	$s0,$s0,32128
.L0d97c810:
    # Line 1898
    lbu	$t8,3221($s8)
.L0d97c814:
    beqz	$t8,.L0d97cad4
    # Line 1912
    andi	$a1,$a2,0x1
    # Line 1898
    andi	$t9,$a2,0x2
    beqz	$t9,.L0d97c85c
    # Line 1919
    andi	$a1,$a2,0x40
    # Line 1910
    move	$t9,$s0
    addiu	$a4,$s7,4
    mov.s	$f14,$f22
    addiu	$a3,$s8,28548
    lw	$a5,28908($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1912
    lw	$a0,0($s7)
    ori	$a0,$a0,0x2
    sw	$a0,0($s7)
    lw	$a2,1812($s8)
.L0d97c858:
    # Line 1919
    andi	$a1,$a2,0x40
.L0d97c85c:
    beqz	$a1,.L0d97c940
    # Line 1927
    move	$t9,$s0
    addiu	$a4,$s7,36
    mov.s	$f14,$f22
    addiu	$a3,$s8,28748
    lw	$a5,28928($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1929
    lw	$a0,0($s7)
    ori	$a0,$a0,0x8
    sw	$a0,0($s7)
.L0d97c88c:
    # Line 1947
    andi	$a1,$a0,0x1
.L0d97c890:
    beqz	$a1,.L0d97c8b0
    # Line 1952
    andi	$ra,$a0,0x2
    lw	$t9,6132($s8)
    lw	$t9,1500($t9)
    jal	sub_0d970000
    addiu	$a0,$s7,4
    lw	$a0,0($s7)
    andi	$ra,$a0,0x2
.L0d97c8b0:
    beqz	$ra,.L0d97c8d0
    # Line 1959
    andi	$ra,$a0,0x4
    lw	$t9,6132($s8)
    lw	$t9,1556($t9)
    jalr	$t9
    addiu	$a0,$s7,4
    lw	$a0,0($s7)
    andi	$ra,$a0,0x4
.L0d97c8d0:
    beqz	$ra,.L0d97c8f0
    # Line 1966
    andi	$ra,$a0,0x8
    lw	$t9,6132($s8)
    lw	$t9,1604($t9)
    jalr	$t9
    addiu	$a0,$s7,20
    lw	$a0,0($s7)
    andi	$ra,$a0,0x8
.L0d97c8f0:
    beqz	$ra,.L0d97c90c
    # Line 1973
    li	$ra,3
    lw	$t9,6132($s8)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$s7,36
    li	$ra,3
.L0d97c90c:
    beq	$s1,$ra,.L0d97cbc4
    # Line 1981
    li	$at,4
    beq	$s1,$at,.L0d97cba4
    nop
    ld	$s8,1504($sp)
.L0d97c920:
    ld	$s0,1560($sp)
    ld	$s1,1568($sp)
    ld	$ra,1544($sp)
    ld	$s7,1512($sp)
    ldc1	$f22,1488($sp)
    ldc1	$f20,1496($sp)
    # Line 1993
    jr	$ra
    addiu	$sp,$sp,1584
.L0d97c940:
    # Line 1929
    andi	$v0,$a2,0x20
    beqz	$v0,.L0d97c9ec
    # Line 1931
    move	$t9,$s0
    addiu	$a4,$s7,36
    mov.s	$f14,$f22
    addiu	$a3,$s8,28708
    lw	$a5,28924($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1934
    lw	$a0,0($s7)
    # Line 1933
    lwc1	$f0,3544($s8)
    # Line 1934
    ori	$a0,$a0,0x8
    sw	$a0,0($s7)
    b	.L0d97c88c
    # Line 1933
    swc1	$f0,48($s7)
.L0d97c980:
    # Line 1873
    andi	$a1,$a2,0x80
    beqz	$a1,.L0d97cb10
    # Line 1881
    li	$s1,-1
    # Line 1878
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$a6,$sp,1472
    addiu	$a5,$sp,1456
    addiu	$t9,$t9,-25232
    addiu	$a4,$s7,52
    addiu	$a3,$s8,28788
    mov.s	$f14,$f22
    lw	$a7,28932($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1880
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s8
    addiu	$t9,$t9,32016
    addiu	$a3,$sp,1472
    addiu	$a2,$sp,1456
    bal __glOdysseyDoEvalCoord1
    addiu	$a1,$s7,20
    # Line 1881
    lw	$a0,0($s7)
    ori	$a0,$a0,0x14
    sw	$a0,0($s7)
    li	$s1,3
    b	.L0d97c808
    lw	$a2,1812($s8)
.L0d97c9ec:
    # Line 1934
    andi	$a1,$a2,0x10
    beqz	$a1,.L0d97cb18
    # Line 1936
    move	$t9,$s0
    addiu	$a4,$s7,36
    mov.s	$f14,$f22
    addiu	$a3,$s8,28668
    lw	$a5,28920($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1938
    mtc1	$zero,$f2
    # Line 1940
    lw	$a0,0($s7)
    # Line 1938
    swc1	$f2,44($s7)
    # Line 1939
    lwc1	$f1,3544($s8)
    # Line 1940
    ori	$a0,$a0,0x8
    sw	$a0,0($s7)
    b	.L0d97c88c
    # Line 1939
    swc1	$f1,48($s7)
.L0d97ca34:
    ld	$s3,1520($sp)
    ld	$s2,1528($sp)
    ld	$s6,1536($sp)
    # Line 1881
    andi	$a1,$a2,0x4
    ld	$s4,1552($sp)
    beqz	$a1,.L0d97ca84
    ld	$s5,1576($sp)
    # Line 1886
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,32128
    addiu	$a4,$s7,20
    addiu	$a3,$s8,28588
    mov.s	$f14,$f22
    lw	$a5,28912($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1888
    lw	$a0,0($s7)
    ori	$a0,$a0,0x4
    sw	$a0,0($s7)
    lw	$a2,1812($s8)
.L0d97ca84:
    la	$s0,sub_0d970000
    andi	$t8,$a2,0x100
    # Line 1893
    andi	$a1,$a2,0x80
    # Line 1898
    li	$s1,-1
    # Line 1888
    beqz	$t8,.L0d97cb68
    addiu	$s0,$s0,32128
    # Line 1891
    move	$t9,$s0
    addiu	$a4,$s7,52
    mov.s	$f14,$f22
    addiu	$a3,$s8,28828
    lw	$a5,28936($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1893
    lw	$a0,0($s7)
    ori	$a0,$a0,0x20
    sw	$a0,0($s7)
    li	$s1,4
    b	.L0d97c810
    lw	$a2,1812($s8)
.L0d97cad4:
    # Line 1912
    beqz	$a1,.L0d97c85c
    # Line 1919
    andi	$a1,$a2,0x40
    # Line 1917
    move	$t9,$s0
    addiu	$a4,$s7,4
    mov.s	$f14,$f22
    addiu	$a3,$s8,28508
    lw	$a5,28904($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1919
    lw	$a0,0($s7)
    ori	$a0,$a0,0x1
    sw	$a0,0($s7)
    b	.L0d97c858
    lw	$a2,1812($s8)
.L0d97cb10:
    b	.L0d97c80c
    # Line 1881
    la	$s0,sub_0d970000
.L0d97cb18:
    # Line 1940
    andi	$a1,$a2,0x8
    beqz	$a1,.L0d97c890
    # Line 1947
    andi	$a1,$a0,0x1
    # Line 1942
    move	$t9,$s0
    addiu	$a4,$s7,36
    mov.s	$f14,$f22
    addiu	$a3,$s8,28628
    lw	$a5,28916($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1944
    mtc1	$zero,$f4
    # Line 1947
    lw	$a0,0($s7)
    # Line 1945
    swc1	$f4,44($s7)
    # Line 1944
    swc1	$f4,40($s7)
    # Line 1946
    lwc1	$f3,3544($s8)
    # Line 1947
    ori	$a0,$a0,0x8
    sw	$a0,0($s7)
    b	.L0d97c88c
    # Line 1946
    swc1	$f3,48($s7)
.L0d97cb68:
    # Line 1893
    beqz	$a1,.L0d97cbbc
    # Line 1896
    move	$t9,$s0
    addiu	$a4,$s7,52
    mov.s	$f14,$f22
    addiu	$a3,$s8,28788
    lw	$a5,28932($s8)
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1898
    lw	$a0,0($s7)
    ori	$a0,$a0,0x10
    sw	$a0,0($s7)
    li	$s1,3
    b	.L0d97c810
    lw	$a2,1812($s8)
.L0d97cba4:
    # Line 1987
    lw	$t9,6132($s8)
    lw	$t9,1396($t9)
    jal	sub_0d970000
    addiu	$a0,$s7,52
    b	.L0d97c920
    ld	$s8,1504($sp)
.L0d97cbbc:
    b	.L0d97c814
    # Line 1898
    lbu	$t8,3221($s8)
.L0d97cbc4:
    # Line 1981
    lw	$t9,6132($s8)
    lw	$t9,1364($t9)
    jalr	$t9
    addiu	$a0,$s7,52
    b	.L0d97c920
    ld	$s8,1504($sp)
.end DoEvalCoord2

# Function: __glOdysseyDoEvalCoord2
# Declared: Line 1996 (Source lines: 1997-2003)
# Address: 0x0d97cbe0 - 0x0d97cc6c (Size: 140 bytes, Frame: 192)
.globl __glOdysseyDoEvalCoord2
.ent __glOdysseyDoEvalCoord2
__glOdysseyDoEvalCoord2:
    # Line 1997
    addiu	$sp,$sp,-192
    sd	$ra,168($sp)
    lui	$ra,0x18
    addiu	$ra,$ra,-18000
    sd	$gp,176($sp)
    addu	$gp,$t9,$ra
    # Line 2000
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1997
    sdc1	$f14,152($sp)
    # Line 2000
    addiu	$t9,$t9,29936
    li	$a1,2
    nop
    addiu	$a2,$sp,0
    # Line 1997
    sd	$s0,160($sp)
    move	$s0,$a0
    sdc1	$f30,144($sp)
    # Line 2000
    bal __glOdyim_EvalPoint2
    # Line 1997
    mov.s	$f30,$f13
    # Line 2001
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-14832
    move	$a0,$s0
    mov.s	$f13,$f30
    ldc1	$f14,152($sp)
    bal __glOdysseyDoEvalCoord1
    addiu	$a3,$sp,72
    # Line 2002
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30592
    move	$a0,$s0
    ldc1	$f30,144($sp)
    bal __glOdyim_EvalPoint2
    addiu	$a1,$sp,0
    ld	$ra,168($sp)
    ld	$s0,160($sp)
    # Line 2003
    ld	$gp,176($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glOdysseyDoEvalCoord2

# Function: __glOdysseyEvalMesh1Line
# Declared: Line 2006 (Source lines: 2007-2028)
# Address: 0x0d97cc70 - 0x0d97cd94 (Size: 292 bytes, Frame: 144)
.globl __glOdysseyEvalMesh1Line
.ent __glOdysseyEvalMesh1Line
__glOdysseyEvalMesh1Line:
    # Line 2007
    addiu	$sp,$sp,-144
    sd	$a1,72($sp)
    sdc1	$f20,104($sp)
    sd	$s0,112($sp)
    sd	$s3,120($sp)
    sd	$ra,128($sp)
    sd	$s4,80($sp)
    lw	$a4,1944($a0)
    move	$s4,$a2
    sd	$s1,88($sp)
    lui	$at,0x18
    move	$s1,$a0
    sd	$s2,136($sp)
    addiu	$at,$at,-18144
    sd	$gp,96($sp)
    beqz	$a4,.L0d97cd6c
    addu	$gp,$t9,$at
    # Line 2015
    mtc1	$a4,$f21
    lwc1	$f23,1932($a0)
    lwc1	$f20,1936($a0)
    # Line 2021
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2015
    cvt.s.w	$f21,$f21
    # Line 2021
    addiu	$t9,$t9,29936
    # Line 2015
    sub.s	$f20,$f20,$f23
    # Line 2021
    addiu	$a2,$sp,0
    li	$a1,1
    bal __glOdyim_EvalPoint2
    # Line 2015
    div.s	$f20,$f20,$f21
    # Line 2022
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jal	sub_0d970000
    li	$a0,3
    # Line 2023
    ld	$ra,72($sp)
    move	$s0,$ra
    slt	$ra,$s4,$ra
    addiu	$s3,$s4,1
    bnez	$ra,.L0d97cd48
    la	$s2,sub_0d970000
    b	.L0d97cd28
    addiu	$s2,$s2,30768
.L0d97cd10:
    # Line 2024
    move	$t9,$s2
    bal __glOdyim_EvalPoint2
    move	$a0,$s1
    # Line 2023
    addiu	$s0,$s0,1
    beq	$s3,$s0,.L0d97cd48
    nop
.L0d97cd28:
    lw	$t8,1944($s1)
    # Line 2024
    mtc1	$s0,$f14
    # Line 2023
    beq	$t8,$s0,.L0d97cd10
    # Line 2024
    lwc1	$f13,1936($s1)
    cvt.s.w	$f14,$f14
    lwc1	$f13,1932($s1)
    b	.L0d97cd10
    madd.s	$f13,$f13,$f14,$f20
.L0d97cd48:
    # Line 2026
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 2027
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30592
    move	$a0,$s1
    bal __glOdyim_EvalPoint2
    addiu	$a1,$sp,0
.L0d97cd6c:
    ld	$s2,136($sp)
    ld	$s4,80($sp)
    ld	$s3,120($sp)
    ld	$s0,112($sp)
    ld	$ra,128($sp)
    ld	$s1,88($sp)
    ldc1	$f20,104($sp)
    # Line 2028
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glOdysseyEvalMesh1Line

# Function: __glOdysseyEvalMesh1Point
# Declared: Line 2031 (Source lines: 2032-2053)
# Address: 0x0d97cda0 - 0x0d97cec4 (Size: 292 bytes, Frame: 144)
.globl __glOdysseyEvalMesh1Point
.ent __glOdysseyEvalMesh1Point
__glOdysseyEvalMesh1Point:
    # Line 2032
    addiu	$sp,$sp,-144
    sd	$a1,72($sp)
    sdc1	$f20,104($sp)
    sd	$s0,112($sp)
    sd	$s3,120($sp)
    sd	$ra,128($sp)
    sd	$s4,80($sp)
    lw	$a4,1944($a0)
    move	$s4,$a2
    sd	$s1,88($sp)
    lui	$at,0x18
    move	$s1,$a0
    sd	$s2,136($sp)
    addiu	$at,$at,-18448
    sd	$gp,96($sp)
    beqz	$a4,.L0d97ce9c
    addu	$gp,$t9,$at
    # Line 2040
    mtc1	$a4,$f21
    lwc1	$f23,1932($a0)
    lwc1	$f20,1936($a0)
    # Line 2046
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2040
    cvt.s.w	$f21,$f21
    # Line 2046
    addiu	$t9,$t9,29936
    # Line 2040
    sub.s	$f20,$f20,$f23
    # Line 2046
    addiu	$a2,$sp,0
    li	$a1,1
    bal __glOdyim_EvalPoint2
    # Line 2040
    div.s	$f20,$f20,$f21
    # Line 2047
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jal	sub_0d970000
    move	$a0,$zero
    # Line 2048
    ld	$ra,72($sp)
    move	$s0,$ra
    slt	$ra,$s4,$ra
    addiu	$s3,$s4,1
    bnez	$ra,.L0d97ce78
    la	$s2,sub_0d970000
    b	.L0d97ce58
    addiu	$s2,$s2,30768
.L0d97ce40:
    # Line 2049
    move	$t9,$s2
    bal __glOdyim_EvalPoint2
    move	$a0,$s1
    # Line 2048
    addiu	$s0,$s0,1
    beq	$s3,$s0,.L0d97ce78
    nop
.L0d97ce58:
    lw	$t8,1944($s1)
    # Line 2049
    mtc1	$s0,$f14
    # Line 2048
    beq	$t8,$s0,.L0d97ce40
    # Line 2049
    lwc1	$f13,1936($s1)
    cvt.s.w	$f14,$f14
    lwc1	$f13,1932($s1)
    b	.L0d97ce40
    madd.s	$f13,$f13,$f14,$f20
.L0d97ce78:
    # Line 2051
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 2052
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30592
    move	$a0,$s1
    bal __glOdyim_EvalPoint2
    addiu	$a1,$sp,0
.L0d97ce9c:
    ld	$s2,136($sp)
    ld	$s4,80($sp)
    ld	$s3,120($sp)
    ld	$s0,112($sp)
    ld	$ra,128($sp)
    ld	$s1,88($sp)
    ldc1	$f20,104($sp)
    # Line 2053
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glOdysseyEvalMesh1Point

# Function: sendChange
# Declared: Line 2056 (Source lines: 2057-2105)
# Address: 0x0d97ced0 - 0x0d97d000 (Size: 304 bytes, Frame: 48)
.ent sendChange
sendChange:
    # Line 2058
    ld	$v0,432($a0)
    # Line 2057
    addiu	$sp,$sp,-48
    # Line 2058
    ld	$v1,440($a0)
    sd	$v1,8($sp)
    lw	$a3,0($a1)
    sd	$v0,0($sp)
    # Line 2057
    sd	$s1,24($sp)
    # Line 2058
    andi	$at,$a3,0x1
    # Line 2057
    move	$s1,$a0
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 2058
    beqz	$at,.L0d97cf18
    sd	$ra,32($sp)
    # Line 2062
    lw	$t9,6132($a0)
    lw	$t9,1500($t9)
    jalr	$t9
    addiu	$a0,$a1,4
    lw	$a3,0($s0)
.L0d97cf18:
    andi	$ra,$a3,0x8
    beqz	$ra,.L0d97cf3c
    # Line 2069
    andi	$ra,$a3,0x4
    lw	$t9,6132($s1)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$s0,36
    lw	$a3,0($s0)
    andi	$ra,$a3,0x4
.L0d97cf3c:
    beqz	$ra,.L0d97cf5c
    # Line 2076
    andi	$ra,$a3,0x10
    lw	$t9,6132($s1)
    lw	$t9,1604($t9)
    jalr	$t9
    addiu	$a0,$s0,20
    lw	$a3,0($s0)
    andi	$ra,$a3,0x10
.L0d97cf5c:
    beqz	$ra,.L0d97cfe0
    # Line 2083
    andi	$v0,$a3,0x20
    lw	$t9,6132($s1)
    lw	$t9,1364($t9)
    jalr	$t9
    addiu	$a0,$s0,52
    lw	$a3,0($s0)
.L0d97cf78:
    # Line 2089
    andi	$ra,$a3,0x1
.L0d97cf7c:
    beqz	$ra,.L0d97cfd0
    ld	$ra,32($sp)
    lw	$at,1792($s1)
    andi	$at,$at,0x80
    beqz	$at,.L0d97cfd0
    ld	$ra,32($sp)
    # Line 2098
    lw	$t9,12056($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 2101
    lwc1	$f0,0($sp)
    lwc1	$f1,4($sp)
    lwc1	$f3,12($sp)
    lwc1	$f2,8($sp)
    swc1	$f3,444($s1)
    # Line 2102
    lw	$t9,12056($s1)
    # Line 2101
    swc1	$f2,440($s1)
    swc1	$f1,436($s1)
    # Line 2102
    move	$a0,$s1
    jalr	$t9
    # Line 2101
    swc1	$f0,432($s1)
    ld	$ra,32($sp)
.L0d97cfd0:
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 2105
    jr	$ra
    addiu	$sp,$sp,48
.L0d97cfe0:
    # Line 2083
    beqz	$v0,.L0d97cf7c
    # Line 2089
    andi	$ra,$a3,0x1
    lw	$t9,6132($s1)
    lw	$t9,1396($t9)
    jalr	$t9
    addiu	$a0,$s0,52
    b	.L0d97cf78
    lw	$a3,0($s0)
.end sendChange

# Function: __glOdysseyEvalMesh2Fill
# Declared: Line 2114 (Source lines: 2116-2157)
# Address: 0x0d97d000 - 0x0d97d2e8 (Size: 744 bytes, Frame: 0)
.globl __glOdysseyEvalMesh2Fill
.ent __glOdysseyEvalMesh2Fill
__glOdysseyEvalMesh2Fill:
    # Line 2116
    lui	$at,0x1
    ori	$at,$at,0x1180
    # Line 2124
    lw	$a6,1960($a0)
    # Line 2116
    subu	$sp,$sp,$at
    move	$v0,$s8
    sd	$v0,24($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sdc1	$f24,96($sp)
    sdc1	$f22,104($sp)
    sdc1	$f20,120($sp)
    sd	$ra,136($sp)
    sd	$s3,144($sp)
    sd	$s7,40($sp)
    move	$s7,$a1
    sd	$s2,152($sp)
    sd	$s0,32($sp)
    addu	$s8,$sp,$at
    lui	$at,0x18
    move	$s0,$a0
    sd	$s1,160($sp)
    addiu	$at,$at,-19056
    sd	$gp,48($sp)
    # Line 2124
    beqz	$a6,.L0d97d2b0
    # Line 2116
    addu	$gp,$t9,$at
    # Line 2124
    lw	$a7,1976($a0)
    beqz	$a7,.L0d97d2b0
    sd	$a2,16($sp)
    sdc1	$f28,88($sp)
    # Line 2127
    mtc1	$a7,$f27
    lwc1	$f28,1964($a0)
    sdc1	$f26,112($sp)
    lwc1	$f26,1968($a0)
    cvt.s.w	$f27,$f27
    sub.s	$f26,$f26,$f28
    div.s	$f26,$f26,$f27
    # Line 2126
    mtc1	$a6,$f29
    lwc1	$f31,1948($a0)
    lwc1	$f28,1952($a0)
    # Line 2129
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2126
    cvt.s.w	$f29,$f29
    # Line 2129
    addiu	$t9,$t9,29936
    # Line 2126
    sub.s	$f28,$f28,$f31
    # Line 2129
    li	$a1,2
    # Line 2125
    addiu	$s1,$s8,-120
    sd	$s6,128($sp)
    # Line 2129
    move	$a2,$s1
    bal __glOdyim_EvalPoint2
    # Line 2126
    div.s	$f28,$f28,$f29
    # Line 2130
    ld	$ra,72($sp)
    slt	$ra,$s7,$ra
    beqz	$ra,.L0d97d290
    move	$s6,$s7
    ld	$t8,16($sp)
    sd	$s5,176($sp)
    ld	$s5,64($sp)
    addiu	$a0,$s7,1
    sd	$s4,184($sp)
    subu	$t9,$s5,$t8
    slt	$s5,$s5,$t8
    lui	$s4,0xffff
    xori	$s5,$s5,0x1
    sd	$s5,56($sp)
    addu	$s4,$s4,$s8
    addiu	$ra,$t8,-1
    la	$s5,sub_0d980000
    sd	$ra,80($sp)
    addiu	$s4,$s4,-4288
    addiu	$t9,$t9,1
    sd	$t9,8($sp)
    b	.L0d97d144
    addiu	$s5,$s5,-14832
.L0d97d120:
    # Line 2154
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jal	sub_0d970000
    nop
    # Line 2130
    ld	$ra,72($sp)
    ld	$a0,168($sp)
    addiu	$s6,$s6,1
    beq	$ra,$s6,.L0d97d284
    addiu	$a0,$a0,1
.L0d97d144:
    lw	$a6,1960($s0)
    # Line 2131
    mtc1	$s6,$f25
    lwc1	$f24,1948($s0)
    # Line 2132
    mtc1	$a0,$f23
    # Line 2130
    bne	$a6,$s6,.L0d97d270
    # Line 2132
    lwc1	$f22,1952($s0)
    # Line 2131
    beq	$a6,$a0,.L0d97d27c
    lwc1	$f24,1952($s0)
.L0d97d164:
    # Line 2132
    cvt.s.w	$f23,$f23
    lwc1	$f22,1948($s0)
    sd	$a0,168($sp)
    madd.s	$f22,$f22,$f23,$f28
.L0d97d174:
    # Line 2133
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 2135
    ld	$ra,56($sp)
    lui	$s3,0xffff
    move	$s2,$zero
    addu	$s3,$s3,$s8
    ld	$s1,64($sp)
    beqz	$ra,.L0d97d120
    addiu	$s3,$s3,-4216
    b	.L0d97d1f8
    lw	$t9,1976($s0)
    nop
    nop
.L0d97d1b0:
    # Line 2143
    move	$t9,$s5
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s4
.L0d97d1c8:
    # Line 2146
    move	$t9,$s5
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s3
    # Line 2135
    ld	$t8,80($sp)
.L0d97d1e4:
    addiu	$s1,$s1,-1
    # Line 2152
    addiu	$s3,$s3,68
    # Line 2135
    beq	$t8,$s1,.L0d97d120
    # Line 2152
    addiu	$s2,$s2,1
    # Line 2135
    lw	$t9,1976($s0)
.L0d97d1f8:
    # Line 2136
    mtc1	$s1,$f21
    slti	$ra,$s2,1024
    # Line 2135
    beq	$t9,$s1,.L0d97d214
    # Line 2136
    lwc1	$f20,1968($s0)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1964($s0)
    madd.s	$f20,$f20,$f21,$f26
.L0d97d214:
    beqz	$ra,.L0d97d23c
    # Line 2149
    move	$t9,$s5
    # Line 2136
    beq	$s7,$s6,.L0d97d1b0
    # Line 2141
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-12592
    move	$a0,$s0
    bal __glOdysseyEvalMesh1Point
    move	$a1,$s3
    b	.L0d97d1c8
    nop
.L0d97d23c:
    # Line 2149
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s4
    # Line 2150
    move	$t9,$s5
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s4
    b	.L0d97d1e4
    # Line 2135
    ld	$t8,80($sp)
.L0d97d270:
    # Line 2131
    cvt.s.w	$f25,$f25
    bne	$a6,$a0,.L0d97d164
    madd.s	$f24,$f24,$f25,$f28
.L0d97d27c:
    # Line 2132
    b	.L0d97d174
    sd	$a0,168($sp)
.L0d97d284:
    ld	$s5,176($sp)
    ld	$s4,184($sp)
    addiu	$s1,$s8,-120
.L0d97d290:
    # Line 2156
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$s6,128($sp)
    addiu	$t9,$t9,30592
    ldc1	$f26,112($sp)
    move	$a0,$s0
    ldc1	$f28,88($sp)
    bal __glOdyim_EvalPoint2
    move	$a1,$s1
.L0d97d2b0:
    ld	$s1,160($sp)
    ld	$s2,152($sp)
    ld	$s3,144($sp)
    ldc1	$f20,120($sp)
    ldc1	$f22,104($sp)
    ldc1	$f24,96($sp)
    # Line 2157
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$ra,136($sp)
    ld	$at,24($sp)
    ld	$s7,40($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.end __glOdysseyEvalMesh2Fill

# Function: __glOdysseyEvalMesh2Point
# Declared: Line 2160 (Source lines: 2162-2186)
# Address: 0x0d97d2f0 - 0x0d97d4cc (Size: 476 bytes, Frame: 144)
.globl __glOdysseyEvalMesh2Point
.ent __glOdysseyEvalMesh2Point
__glOdysseyEvalMesh2Point:
    # Line 2162
    addiu	$sp,$sp,-272
    sdc1	$f20,208($sp)
    sd	$s5,168($sp)
    sd	$s0,176($sp)
    move	$s0,$a3
    # Line 2169
    lw	$a6,1960($a0)
    # Line 2162
    move	$s5,$a2
    sd	$s1,160($sp)
    lui	$at,0x18
    move	$s1,$a0
    sd	$ra,232($sp)
    addiu	$at,$at,-19808
    sd	$gp,184($sp)
    # Line 2169
    beqz	$a6,.L0d97d4ac
    # Line 2162
    addu	$gp,$t9,$at
    # Line 2169
    lw	$a3,1976($a0)
    sd	$a4,152($sp)
    beqz	$a3,.L0d97d4ac
    sd	$a1,216($sp)
    sdc1	$f24,192($sp)
    # Line 2172
    mtc1	$a3,$f23
    lwc1	$f24,1964($a0)
    sdc1	$f22,200($sp)
    lwc1	$f22,1968($a0)
    cvt.s.w	$f23,$f23
    sub.s	$f22,$f22,$f24
    div.s	$f22,$f22,$f23
    # Line 2171
    mtc1	$a6,$f25
    lwc1	$f27,1948($a0)
    lwc1	$f24,1952($a0)
    # Line 2174
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2171
    cvt.s.w	$f25,$f25
    # Line 2174
    addiu	$t9,$t9,29936
    # Line 2171
    sub.s	$f24,$f24,$f27
    # Line 2174
    addiu	$a2,$sp,0
    li	$a1,2
    bal __glOdyim_EvalPoint2
    # Line 2171
    div.s	$f24,$f24,$f25
    # Line 2175
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    move	$a0,$zero
    jal	sub_0d970000
    sd	$s4,224($sp)
    # Line 2176
    ld	$a0,216($sp)
    slt	$ra,$s0,$a0
    bnez	$ra,.L0d97d480
    move	$s4,$a0
    sd	$s2,256($sp)
    la	$s2,sub_0d980000
    sd	$s6,248($sp)
    ld	$s6,152($sp)
    sd	$s7,264($sp)
    addiu	$s7,$s0,1
    addiu	$s2,$s2,-14832
    sd	$s3,240($sp)
    addiu	$s3,$s6,1
    subu	$t8,$s6,$s5
    slt	$s6,$s6,$s5
    addiu	$t8,$t8,1
    sd	$t8,144($sp)
    b	.L0d97d3fc
    xori	$s6,$s6,0x1
    nop
    nop
.L0d97d3f0:
    addiu	$s4,$s4,1
    beq	$s7,$s4,.L0d97d470
    nop
.L0d97d3fc:
    lw	$t8,1960($s1)
    # Line 2177
    mtc1	$s4,$f21
    # Line 2178
    move	$s0,$s5
    # Line 2176
    beq	$t8,$s4,.L0d97d41c
    # Line 2177
    lwc1	$f20,1952($s1)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1948($s1)
    madd.s	$f20,$f20,$f21,$f24
.L0d97d41c:
    # Line 2178
    beqz	$s6,.L0d97d3f0
    nop
    b	.L0d97d454
    lw	$t9,1976($s1)
    nop
.L0d97d430:
    # Line 2181
    move	$t9,$s2
    move	$a0,$s1
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    addiu	$a3,$sp,72
    # Line 2178
    addiu	$s0,$s0,1
    beq	$s3,$s0,.L0d97d3f0
    nop
    lw	$t9,1976($s1)
.L0d97d454:
    # Line 2179
    mtc1	$s0,$f15
    # Line 2178
    beq	$t9,$s0,.L0d97d430
    # Line 2179
    lwc1	$f14,1968($s1)
    cvt.s.w	$f15,$f15
    lwc1	$f14,1964($s1)
    b	.L0d97d430
    madd.s	$f14,$f14,$f15,$f22
.L0d97d470:
    ld	$s3,240($sp)
    ld	$s6,248($sp)
    ld	$s2,256($sp)
    ld	$s7,264($sp)
.L0d97d480:
    # Line 2184
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    ld	$s4,224($sp)
    ldc1	$f22,200($sp)
    jalr	$t9
    ldc1	$f24,192($sp)
    # Line 2185
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30592
    move	$a0,$s1
    bal __glOdyim_EvalPoint2
    addiu	$a1,$sp,0
.L0d97d4ac:
    ldc1	$f20,208($sp)
    # Line 2186
    ld	$gp,184($sp)
    ld	$ra,232($sp)
    ld	$s0,176($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glOdysseyEvalMesh2Point

# Function: __glOdysseyEvalMesh2Line
# Declared: Line 2188 (Source lines: 2190-2261)
# Address: 0x0d97d4d0 - 0x0d97da08 (Size: 1336 bytes, Frame: 0)
.globl __glOdysseyEvalMesh2Line
.ent __glOdysseyEvalMesh2Line
__glOdysseyEvalMesh2Line:
    # Line 2190
    lui	$at,0x1
    ori	$at,$at,0x11b0
    # Line 2199
    lw	$a7,1960($a0)
    # Line 2190
    subu	$sp,$sp,$at
    move	$v0,$s8
    sd	$v0,24($sp)
    sd	$a4,104($sp)
    sd	$a3,72($sp)
    sd	$a2,96($sp)
    sd	$a1,120($sp)
    sd	$s6,184($sp)
    sd	$s4,192($sp)
    sd	$ra,200($sp)
    sd	$s0,16($sp)
    addu	$s8,$sp,$at
    lui	$at,0x18
    move	$s0,$a0
    sd	$s5,216($sp)
    addiu	$at,$at,-20288
    sd	$gp,32($sp)
    # Line 2199
    beqz	$a7,.L0d97d998
    # Line 2190
    addu	$gp,$t9,$at
    # Line 2199
    lw	$a6,1976($a0)
    beqz	$a6,.L0d97d99c
    ld	$s5,216($sp)
    # Line 2202
    lwc1	$f29,1964($a0)
    mtc1	$a6,$f27
    sdc1	$f26,160($sp)
    lwc1	$f26,1968($a0)
    cvt.s.w	$f27,$f27
    sub.s	$f26,$f26,$f29
    div.s	$f26,$f26,$f27
    # Line 2201
    lwc1	$f0,1948($a0)
    mtc1	$a7,$f31
    sdc1	$f30,128($sp)
    lwc1	$f30,1952($a0)
    # Line 2204
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2201
    cvt.s.w	$f31,$f31
    # Line 2204
    addiu	$t9,$t9,29936
    # Line 2201
    sub.s	$f30,$f30,$f0
    # Line 2204
    li	$a1,2
    # Line 2200
    addiu	$s4,$s8,-120
    sd	$s7,176($sp)
    # Line 2204
    move	$a2,$s4
    bal __glOdyim_EvalPoint2
    # Line 2201
    div.s	$f30,$f30,$f31
    # Line 2205
    ld	$at,72($sp)
    ld	$ra,120($sp)
    lw	$a7,1960($s0)
    move	$s7,$ra
    slt	$ra,$ra,$at
    sd	$s3,208($sp)
    beqz	$ra,.L0d97d9c0
    sd	$s2,224($sp)
    sdc1	$f28,136($sp)
    sdc1	$f24,144($sp)
    sdc1	$f22,152($sp)
    sdc1	$f20,168($sp)
    sd	$s1,232($sp)
    ld	$s3,104($sp)
    lui	$s2,0xffff
    ld	$t8,96($sp)
    ld	$ra,120($sp)
    addu	$s2,$s2,$s8
    addiu	$at,$t8,1
    sd	$at,40($sp)
    addiu	$v0,$s3,1
    sd	$v0,88($sp)
    subu	$t9,$s3,$t8
    slt	$s3,$s3,$t8
    addiu	$s2,$s2,-4288
    xori	$s3,$s3,0x1
    sd	$s3,64($sp)
    addiu	$ra,$ra,1
    lui	$v0,0xffff
    la	$s3,sub_0d980000
    sd	$ra,80($sp)
    addiu	$t9,$t9,1
    addu	$v0,$v0,$s8
    sd	$t9,48($sp)
    addiu	$v0,$v0,-4216
    addiu	$s3,$s3,-14832
    addiu	$v0,$v0,68
    b	.L0d97d9f8
    sd	$v0,56($sp)
    nop
    nop
    nop
.L0d97d630:
    # Line 2210
    ld	$s5,48($sp)
    lw	$a7,1960($s0)
.L0d97d638:
    # Line 2205
    ld	$v1,72($sp)
    # Line 2210
    lui	$s6,0xffff
    # Line 2205
    addiu	$s7,$s7,1
    ld	$a0,80($sp)
    # Line 2210
    addu	$s6,$s6,$s8
    # Line 2205
    addiu	$a0,$a0,1
    beq	$v1,$s7,.L0d97d85c
    sd	$a0,80($sp)
    # Line 2210
    ld	$s4,40($sp)
.L0d97d65c:
    # Line 2205
    ld	$a1,80($sp)
    # Line 2210
    ld	$a3,56($sp)
    # Line 2207
    mtc1	$s7,$f25
    # Line 2206
    ld	$ra,80($sp)
    # Line 2209
    move	$s5,$zero
    # Line 2205
    bne	$a7,$a1,.L0d97d840
    # Line 2210
    ld	$a2,64($sp)
    # Line 2206
    beq	$a7,$s7,.L0d97d854
    lwc1	$f28,1952($s0)
.L0d97d680:
    # Line 2207
    cvt.s.w	$f25,$f25
    lwc1	$f24,1948($s0)
    madd.s	$f24,$f24,$f25,$f30
.L0d97d68c:
    # Line 2210
    ld	$s1,96($sp)
    beqz	$a2,.L0d97d638
    addiu	$s6,$s6,-4216
    b	.L0d97d710
    sd	$a3,112($sp)
    nop
    nop
    nop
    # Line 2230
    move	$t9,$s3
.L0d97d6b0:
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s2
.L0d97d6c4:
    # Line 2232
    move	$t9,$s3
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s6
    # Line 2237
    lw	$t9,6132($s0)
.L0d97d6e0:
    lw	$t9,44($t9)
    jal	sub_0d970000
    nop
    # Line 2210
    ld	$ra,88($sp)
    # Line 2238
    addiu	$s6,$s6,68
    # Line 2210
    addiu	$s1,$s1,1
    # Line 2238
    ld	$at,112($sp)
    # Line 2210
    addiu	$s4,$s4,1
    # Line 2238
    addiu	$s5,$s5,1
    addiu	$at,$at,68
    # Line 2210
    beq	$ra,$s1,.L0d97d630
    # Line 2238
    sd	$at,112($sp)
.L0d97d710:
    # Line 2210
    lw	$a6,1976($s0)
    # Line 2212
    mtc1	$s4,$f23
    # Line 2211
    lwc1	$f20,1964($s0)
    # Line 2210
    bne	$a6,$s1,.L0d97d7b4
    # Line 2211
    mtc1	$s1,$f21
    beq	$a6,$s4,.L0d97d7c0
    lwc1	$f20,1968($s0)
.L0d97d72c:
    # Line 2212
    cvt.s.w	$f23,$f23
    lwc1	$f22,1964($s0)
    madd.s	$f22,$f22,$f23,$f26
    # Line 2214
    lw	$t9,6132($s0)
.L0d97d73c:
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    ld	$ra,104($sp)
    slti	$at,$s5,1023
    beq	$ra,$s1,.L0d97d778
    ld	$v0,120($sp)
    beqz	$at,.L0d97d824
    # Line 2223
    move	$t9,$s3
    # Line 2214
    beq	$v0,$s7,.L0d97d804
    # Line 2218
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-12592
    move	$a0,$s0
    bal __glOdysseyEvalMesh1Point
    ld	$a1,112($sp)
.L0d97d778:
    # Line 2223
    slti	$ra,$s5,1024
.L0d97d77c:
    # Line 2227
    ld	$at,120($sp)
    # Line 2223
    beqz	$ra,.L0d97d7cc
    # Line 2227
    ld	$v0,96($sp)
    beq	$at,$s7,.L0d97d6b0
    # Line 2230
    move	$t9,$s3
    # Line 2227
    beq	$v0,$s1,.L0d97d6b0
    # Line 2230
    move	$t9,$s3
    # Line 2228
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-12592
    move	$a0,$s0
    bal __glOdysseyEvalMesh1Point
    move	$a1,$s6
    b	.L0d97d6c4
    nop
.L0d97d7b4:
    # Line 2211
    cvt.s.w	$f21,$f21
    bne	$a6,$s4,.L0d97d72c
    madd.s	$f20,$f20,$f21,$f26
.L0d97d7c0:
    # Line 2212
    lwc1	$f22,1968($s0)
    b	.L0d97d73c
    # Line 2214
    lw	$t9,6132($s0)
.L0d97d7cc:
    # Line 2234
    move	$t9,$s3
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s2
    # Line 2235
    move	$t9,$s3
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s2
    b	.L0d97d6e0
    # Line 2237
    lw	$t9,6132($s0)
.L0d97d804:
    # Line 2220
    move	$t9,$s3
    mov.s	$f13,$f24
    move	$a0,$s0
    mov.s	$f14,$f22
    bal __glOdysseyDoEvalCoord1
    ld	$a3,112($sp)
    b	.L0d97d77c
    # Line 2223
    slti	$ra,$s5,1024
.L0d97d824:
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f22
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s2
    b	.L0d97d77c
    slti	$ra,$s5,1024
.L0d97d840:
    # Line 2206
    mtc1	$ra,$f29
    cvt.s.w	$f29,$f29
    lwc1	$f28,1948($s0)
    bne	$a7,$s7,.L0d97d680
    madd.s	$f28,$f28,$f29,$f30
.L0d97d854:
    # Line 2207
    b	.L0d97d68c
    lwc1	$f24,1952($s0)
.L0d97d85c:
    # Line 2205
    ld	$s7,72($sp)
    ldc1	$f22,152($sp)
    ldc1	$f24,144($sp)
    ldc1	$f28,136($sp)
.L0d97d86c:
    # Line 2245
    bne	$a7,$s7,.L0d97d87c
    addiu	$s5,$s5,-1
    # Line 2246
    b	.L0d97d88c
    lwc1	$f20,1952($s0)
.L0d97d87c:
    mtc1	$s7,$f21
    cvt.s.w	$f21,$f21
    lwc1	$f20,1948($s0)
    madd.s	$f20,$f20,$f21,$f30
.L0d97d88c:
    # Line 2247
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jal	sub_0d980000
    li	$a0,3
    # Line 2248
    ld	$ra,64($sp)
    beqz	$ra,.L0d97d95c
    ld	$s1,104($sp)
    ld	$s7,96($sp)
    la	$s4,sub_0d980000
    addiu	$s4,$s4,-12592
    addiu	$s7,$s7,-1
    sll	$t8,$s5,0x4
    lui	$s6,0xffff
    addu	$s6,$s6,$s8
    addu	$t8,$t8,$s5
    sll	$t8,$t8,0x2
    addiu	$s6,$s6,-4216
    b	.L0d97d904
    addu	$s6,$s6,$t8
    nop
    nop
.L0d97d8e0:
    # Line 2254
    move	$t9,$s3
.L0d97d8e4:
    move	$a0,$s0
    mov.s	$f13,$f20
    bal __glOdysseyDoEvalCoord1
    move	$a3,$s2
.L0d97d8f4:
    # Line 2248
    addiu	$s1,$s1,-1
    # Line 2257
    addiu	$s6,$s6,-68
    # Line 2248
    beq	$s7,$s1,.L0d97d95c
    # Line 2257
    addiu	$s5,$s5,-1
.L0d97d904:
    # Line 2248
    lw	$t8,1976($s0)
    # Line 2249
    lwc1	$f14,1964($s0)
    # Line 2248
    bne	$t8,$s1,.L0d97d930
    # Line 2249
    mtc1	$s1,$f15
    # Line 2251
    bgez	$s5,.L0d97d93c
    # Line 2249
    lwc1	$f14,1968($s0)
    b	.L0d97d8e4
    # Line 2254
    move	$t9,$s3
    nop
    nop
    nop
.L0d97d930:
    # Line 2249
    cvt.s.w	$f15,$f15
    # Line 2251
    bltz	$s5,.L0d97d8e0
    # Line 2249
    madd.s	$f14,$f14,$f15,$f26
.L0d97d93c:
    # Line 2251
    slti	$t9,$s5,1024
    beqz	$t9,.L0d97d8e0
    # Line 2252
    move	$t9,$s4
    move	$a0,$s0
    bal __glOdysseyEvalMesh1Point
    move	$a1,$s6
    b	.L0d97d8f4
    nop
.L0d97d95c:
    ld	$s1,232($sp)
    ld	$s2,224($sp)
    ld	$s3,208($sp)
    # Line 2259
    lw	$t9,6132($s0)
    ld	$s7,176($sp)
    lw	$t9,44($t9)
    ldc1	$f20,168($sp)
    ldc1	$f26,160($sp)
    jalr	$t9
    ldc1	$f30,128($sp)
    # Line 2260
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,30592
    move	$a0,$s0
    bal __glOdyim_EvalPoint2
    addiu	$a1,$s8,-120
.L0d97d998:
    ld	$s5,216($sp)
.L0d97d99c:
    ld	$s4,192($sp)
    ld	$s6,184($sp)
    # Line 2261
    ld	$gp,32($sp)
    ld	$ra,200($sp)
    ld	$at,24($sp)
    ld	$s0,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d97d9c0:
    # Line 2205
    ld	$s5,96($sp)
    ld	$s3,104($sp)
    sdc1	$f20,168($sp)
    slt	$s3,$s3,$s5
    lui	$s2,0xffff
    xori	$s3,$s3,0x1
    sd	$s3,64($sp)
    addu	$s2,$s2,$s8
    la	$s3,sub_0d980000
    sd	$s1,232($sp)
    addiu	$s2,$s2,-4288
    lw	$s5,8($sp)
    b	.L0d97d86c
    addiu	$s3,$s3,-14832
.L0d97d9f8:
    # Line 2210
    lui	$s6,0xffff
    addu	$s6,$s6,$s8
    b	.L0d97d65c
    ld	$s4,40($sp)
.end __glOdysseyEvalMesh2Line

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_bf800000:
    .word 0xbf800000

