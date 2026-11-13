# Source: ../ODYSSEY/ody_fog.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_fog.c
# Total Functions: 14

.text

# Function: CubicBezierFitConstant
# Declared: Line 28 (Source lines: 31-35)
# Address: 0x0d980160 - 0x0d98017c (Size: 28 bytes, Frame: 0)
.ent CubicBezierFitConstant
CubicBezierFitConstant:
    # Line 32
    mtc1	$zero,$f1
    # Line 31
    lwc1	$f0,4($a0)
    # Line 34
    swc1	$f1,12($a1)
    # Line 33
    swc1	$f1,8($a1)
    # Line 32
    swc1	$f1,4($a1)
    # Line 35
    jr	$ra
    # Line 31
    swc1	$f0,0($a1)
.end CubicBezierFitConstant

# Function: CubicBezierFitLinear
# Declared: Line 41 (Source lines: 42-49)
# Address: 0x0d980180 - 0x0d9801a4 (Size: 36 bytes, Frame: 0)
.ent CubicBezierFitLinear
CubicBezierFitLinear:
    # Line 47
    mtc1	$zero,$f2
    # Line 43
    lwc1	$f0,12($a0)
    # Line 42
    lwc1	$f1,4($a0)
    # Line 48
    swc1	$f2,12($a1)
    # Line 47
    swc1	$f2,8($a1)
    # Line 45
    swc1	$f1,0($a1)
    # Line 46
    sub.s	$f0,$f0,$f1
    # Line 49
    jr	$ra
    # Line 46
    swc1	$f0,4($a1)
.end CubicBezierFitLinear

# Function: Phi
# Declared: Line 62 (Source lines: 63-73)
# Address: 0x0d9801b0 - 0x0d98023c (Size: 140 bytes, Frame: 0)
.ent Phi
Phi:
    # Line 63
    beqz	$a0,.L0d980208
    li	$at,1
    beq	$a0,$at,.L0d980210
    # Line 67
    ldc1	$f1,_lit8_bfe0000000000000
    # Line 63
    li	$v0,2
    beq	$a0,$v0,.L0d980220
    # Line 69
    ldc1	$f0,_lit8_bfd5555555555555
    # Line 63
    li	$v1,3
    beq	$a0,$v1,.L0d9801e0
    # Line 71
    ldc1	$f0,_lit8_bfe0000000000000
    # Line 65
    jr	$ra
    # Line 73
    mtc1	$zero,$f0
.L0d9801e0:
    # Line 71
    cvt.d.s	$f1,$f13
    ldc1	$f3,_lit8_bfd0000000000000
    ldc1	$f2,_lit8_bfe8000000000000
    add.d	$f0,$f1,$f0
    add.d	$f3,$f1,$f3
    add.d	$f1,$f1,$f2
    mul.d	$f0,$f0,$f3
    mul.d	$f0,$f0,$f1
    # Line 65
    jr	$ra
    # Line 71
    cvt.s.d	$f0,$f0
.L0d980208:
    # Line 65
    jr	$ra
    lwc1	$f0,_lit_3f800000
.L0d980210:
    # Line 67
    cvt.d.s	$f0,$f13
    add.d	$f0,$f0,$f1
    # Line 65
    jr	$ra
    # Line 67
    cvt.s.d	$f0,$f0
.L0d980220:
    # Line 69
    cvt.d.s	$f1,$f13
    ldc1	$f2,_lit8_bfe5555555555555
    add.d	$f0,$f1,$f0
    add.d	$f1,$f1,$f2
    mul.d	$f0,$f0,$f1
    # Line 65
    jr	$ra
    # Line 69
    cvt.s.d	$f0,$f0
.end Phi

# Function: Det3
# Declared: Line 79 (Source lines: 81-82)
# Address: 0x0d980240 - 0x0d980274 (Size: 52 bytes, Frame: 192)
.ent Det3
Det3:
    # Line 81
    addiu	$sp,$sp,-64
    # Line 82
    lwc1	$f3,64($sp)
    mul.s	$f0,$f17,$f18
    msub.s	$f0,$f0,$f15,$f3
    mul.s	$f2,$f17,$f19
    msub.s	$f2,$f2,$f16,$f3
    mul.s	$f1,$f16,$f18
    msub.s	$f1,$f1,$f15,$f19
    mul.s	$f0,$f13,$f0
    msub.s	$f0,$f0,$f12,$f2
    addiu	$sp,$sp,64
    jr	$ra
    madd.s	$f0,$f0,$f14,$f1
.end Det3

# Function: CubicBezierFitQuadratic
# Declared: Line 91 (Source lines: 91-142)
# Address: 0x0d980280 - 0x0d98058c (Size: 780 bytes, Frame: 128)
.ent CubicBezierFitQuadratic
CubicBezierFitQuadratic:
    # Line 91
    addiu	$sp,$sp,-256
    sdc1	$f20,120($sp)
    sd	$s8,144($sp)
    move	$s8,$a0
    sd	$s1,152($sp)
    move	$s1,$a1
    sdc1	$f22,104($sp)
    mtc1	$zero,$f22
    addiu	$a4,$sp,44
    sd	$s4,128($sp)
    addiu	$s4,$sp,32
    addiu	$a5,$sp,28
    sd	$s5,136($sp)
    addiu	$s5,$sp,16
.L0d9802b8:
    # Line 101
    swc1	$f22,0($s5)
    # Line 100
    addiu	$a4,$a4,16
    # Line 103
    swc1	$f22,8($s4)
    swc1	$f22,4($s4)
    # Line 100
    addiu	$s5,$s5,4
    # Line 103
    swc1	$f22,0($s4)
    # Line 100
    addiu	$s4,$s4,16
    bne	$s5,$a5,.L0d9802b8
    nop
    sdc1	$f24,168($sp)
    sdc1	$f28,176($sp)
    sdc1	$f30,184($sp)
    sd	$s2,192($sp)
    sd	$s3,200($sp)
    sd	$s6,208($sp)
    sd	$a2,216($sp)
    sd	$ra,224($sp)
    sd	$s0,232($sp)
    blez	$s8,.L0d98040c
    sd	$s7,240($sp)
    la	$s0,sub_0d980000
    move	$s7,$zero
    li	$s6,3
    addiu	$s0,$s0,432
    move	$s3,$zero
    nop
.L0d980320:
    addiu	$s4,$sp,32
    addiu	$s5,$sp,16
.L0d980328:
    # Line 108
    move	$t9,$s0
    move	$a0,$s3
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    lwc1	$f2,4($s1)
    lwc1	$f1,0($s5)
    madd.s	$f0,$f1,$f2,$f0
    move	$s2,$zero
    swc1	$f0,0($s5)
    # Line 110
    move	$t9,$s0
    move	$a0,$s3
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s2
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    lwc1	$f3,0($s4)
    madd.s	$f3,$f3,$f20,$f0
    # Line 109
    addiu	$s2,$s2,1
    beq	$s2,$s6,.L0d9803ec
    # Line 110
    swc1	$f3,0($s4)
    move	$t9,$s0
    move	$a0,$s3
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s2
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    lwc1	$f4,4($s4)
    madd.s	$f4,$f4,$f20,$f0
    # Line 109
    addiu	$s2,$s2,1
    beq	$s2,$s6,.L0d9803ec
    # Line 110
    swc1	$f4,4($s4)
    move	$t9,$s0
    move	$a0,$s3
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s2
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s1)
    lwc1	$f5,8($s4)
    madd.s	$f5,$f5,$f20,$f0
    swc1	$f5,8($s4)
.L0d9803ec:
    # Line 107
    addiu	$s3,$s3,1
    addiu	$s5,$s5,4
    bne	$s3,$s6,.L0d980328
    addiu	$s4,$s4,16
    # Line 106
    addiu	$s7,$s7,1
    # Line 100
    move	$s3,$zero
    # Line 106
    bne	$s8,$s7,.L0d980320
    addiu	$s1,$s1,8
.L0d98040c:
    sdc1	$f26,160($sp)
    # Line 118
    lwc1	$f14,40($sp)
    lwc1	$f15,48($sp)
    lwc1	$f17,56($sp)
    lwc1	$f18,64($sp)
    lwc1	$f28,52($sp)
    # Line 106
    la	$s0,sub_0d980000
    # Line 118
    lwc1	$f30,36($sp)
    lwc1	$f24,32($sp)
    # Line 106
    addiu	$s0,$s0,576
    # Line 118
    lwc1	$f6,72($sp)
    mov.s	$f16,$f28
    move	$t9,$s0
    lwc1	$f19,68($sp)
    mov.s	$f13,$f30
    swc1	$f6,0($sp)
    bal __glOdysseyProgramFFTFilter
    mov.s	$f12,$f24
    ld	$s2,192($sp)
    ld	$s3,200($sp)
    ld	$s6,208($sp)
    ld	$s4,128($sp)
    ld	$s5,136($sp)
    ld	$s7,240($sp)
    ld	$s8,144($sp)
    # Line 125
    lwc1	$f12,16($sp)
    lwc1	$f18,24($sp)
    lwc1	$f14,40($sp)
    lwc1	$f17,56($sp)
    # Line 118
    mov.s	$f20,$f0
    # Line 125
    lwc1	$f26,20($sp)
    mov.s	$f16,$f28
    move	$t9,$s0
    lwc1	$f7,72($sp)
    mov.s	$f13,$f30
    lwc1	$f19,68($sp)
    swc1	$f7,0($sp)
    bal __glOdysseyProgramFFTFilter
    mov.s	$f15,$f26
    div.s	$f8,$f0,$f20
    # Line 128
    lwc1	$f13,16($sp)
    lwc1	$f14,40($sp)
    lwc1	$f15,48($sp)
    lwc1	$f17,56($sp)
    lwc1	$f18,64($sp)
    lwc1	$f9,72($sp)
    lwc1	$f19,24($sp)
    move	$t9,$s0
    mov.s	$f16,$f26
    swc1	$f9,0($sp)
    mov.s	$f12,$f24
    bal __glOdysseyProgramFFTFilter
    # Line 125
    sdc1	$f8,112($sp)
    # Line 128
    div.s	$f10,$f0,$f20
    ld	$s1,216($sp)
    # Line 131
    lwc1	$f14,16($sp)
    lwc1	$f15,48($sp)
    lwc1	$f18,64($sp)
    mov.s	$f17,$f26
    lwc1	$f11,24($sp)
    mov.s	$f16,$f28
    lwc1	$f19,68($sp)
    move	$t9,$s0
    mov.s	$f13,$f30
    swc1	$f11,0($sp)
    mov.s	$f12,$f24
    bal __glOdysseyProgramFFTFilter
    # Line 128
    sdc1	$f10,96($sp)
    # Line 138
    div.s	$f14,$f0,$f20
    ld	$s0,232($sp)
    ldc1	$f13,96($sp)
    ldc1	$f12,112($sp)
    ldc1	$f15,_lit8_3fe0000000000000
    ldc1	$f26,160($sp)
    cvt.d.s	$f13,$f13
    ldc1	$f16,_lit8_3fcc71c71c71c71c
    cvt.d.s	$f12,$f12
    ldc1	$f24,168($sp)
    nmsub.d	$f12,$f12,$f13,$f15
    cvt.d.s	$f15,$f14
    ldc1	$f28,176($sp)
    ldc1	$f30,184($sp)
    madd.d	$f12,$f12,$f15,$f16
    # Line 142
    ldc1	$f20,120($sp)
    # Line 141
    swc1	$f22,12($s1)
    # Line 142
    ldc1	$f22,104($sp)
    # Line 139
    sub.d	$f13,$f13,$f15
    ld	$ra,224($sp)
    # Line 140
    swc1	$f14,8($s1)
    # Line 139
    cvt.s.d	$f13,$f13
    swc1	$f13,4($s1)
    # Line 138
    cvt.s.d	$f12,$f12
    swc1	$f12,0($s1)
    # Line 142
    ld	$s1,152($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end CubicBezierFitQuadratic

# Function: Det4
# Declared: Line 148 (Source lines: 151-152)
# Address: 0x0d980590 - 0x0d98062c (Size: 156 bytes, Frame: 192)
.ent Det4
Det4:
    # Line 151
    addiu	$sp,$sp,-64
    # Line 152
    lwc1	$f10,80($sp)
    lwc1	$f5,112($sp)
    lwc1	$f9,64($sp)
    lwc1	$f6,120($sp)
    lwc1	$f21,88($sp)
    mul.s	$f1,$f5,$f9
    lwc1	$f8,72($sp)
    lwc1	$f3,104($sp)
    mul.s	$f11,$f10,$f6
    nmsub.s	$f11,$f11,$f5,$f21
    mul.s	$f5,$f5,$f8
    lwc1	$f7,96($sp)
    nmsub.s	$f5,$f5,$f10,$f3
    mul.s	$f2,$f6,$f9
    nmsub.s	$f2,$f2,$f21,$f7
    mul.s	$f6,$f6,$f8
    nmsub.s	$f6,$f6,$f21,$f3
    mul.s	$f3,$f3,$f9
    nmsub.s	$f3,$f3,$f7,$f8
    nmsub.s	$f1,$f1,$f10,$f7
    mul.s	$f0,$f2,$f18
    mul.s	$f2,$f2,$f17
    msub.s	$f0,$f0,$f16,$f11
    msub.s	$f2,$f2,$f16,$f6
    madd.s	$f0,$f0,$f19,$f1
    mul.s	$f1,$f1,$f17
    mul.s	$f4,$f6,$f18
    msub.s	$f4,$f4,$f17,$f11
    msub.s	$f1,$f1,$f16,$f5
    madd.s	$f4,$f4,$f19,$f5
    madd.s	$f2,$f2,$f19,$f3
    madd.s	$f1,$f1,$f18,$f3
    mul.s	$f0,$f13,$f0
    msub.s	$f0,$f0,$f12,$f4
    madd.s	$f0,$f0,$f14,$f2
    addiu	$sp,$sp,64
    jr	$ra
    nmsub.s	$f0,$f0,$f15,$f1
.end Det4

# Function: CubicBezierFitCubic
# Declared: Line 167 (Source lines: 167-226)
# Address: 0x0d980630 - 0x0d980ad0 (Size: 1184 bytes, Frame: 160)
.ent CubicBezierFitCubic
CubicBezierFitCubic:
    # Line 167
    addiu	$sp,$sp,-288
    sd	$s1,176($sp)
    sdc1	$f20,144($sp)
    mtc1	$zero,$f0
    sd	$s8,168($sp)
    move	$s8,$a0
    addiu	$a4,$sp,96
    sd	$s4,152($sp)
    addiu	$s4,$sp,80
    addiu	$a5,$sp,80
    sd	$s5,160($sp)
    addiu	$s5,$sp,64
.L0d980660:
    # Line 176
    swc1	$f0,0($s5)
    # Line 175
    addiu	$a4,$a4,16
    # Line 178
    swc1	$f0,12($s4)
    swc1	$f0,8($s4)
    swc1	$f0,4($s4)
    # Line 177
    addiu	$a0,$s4,16
    # Line 175
    addiu	$s5,$s5,4
    # Line 178
    swc1	$f0,0($s4)
    move	$s4,$a0
    # Line 175
    bne	$s5,$a5,.L0d980660
    nop
    sdc1	$f26,184($sp)
    sdc1	$f22,192($sp)
    sdc1	$f24,200($sp)
    sdc1	$f28,208($sp)
    sdc1	$f30,216($sp)
    sd	$a2,224($sp)
    sd	$s2,232($sp)
    sd	$s3,240($sp)
    sd	$s6,248($sp)
    sd	$ra,256($sp)
    sd	$s0,264($sp)
    blez	$s8,.L0d9807fc
    sd	$s7,272($sp)
    la	$s0,sub_0d980000
    move	$s2,$a1
    move	$s7,$zero
    li	$s6,4
    addiu	$s0,$s0,432
    move	$s3,$zero
    nop
    nop
.L0d9806e0:
    addiu	$s4,$sp,80
    addiu	$s5,$sp,64
    # Line 183
    move	$t9,$s0
.L0d9806ec:
    move	$a0,$s3
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s2)
    lwc1	$f2,4($s2)
    lwc1	$f1,0($s5)
    madd.s	$f0,$f1,$f2,$f0
    move	$s1,$zero
    swc1	$f0,0($s5)
    # Line 185
    move	$t9,$s0
    move	$a0,$s3
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s2)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s1
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s2)
    lwc1	$f3,0($s4)
    madd.s	$f3,$f3,$f20,$f0
    move	$t9,$s0
    lwc1	$f13,0($s2)
    move	$a0,$s3
    # Line 184
    addiu	$s1,$s1,1
    # Line 185
    bal __glOdysseyProgramFFTFilter
    swc1	$f3,0($s4)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s1
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s2)
    lwc1	$f4,4($s4)
    madd.s	$f4,$f4,$f20,$f0
    move	$t9,$s0
    lwc1	$f13,0($s2)
    move	$a0,$s3
    # Line 184
    addiu	$s1,$s1,1
    # Line 185
    bal __glOdysseyProgramFFTFilter
    swc1	$f4,4($s4)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s1
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s2)
    lwc1	$f5,8($s4)
    madd.s	$f5,$f5,$f20,$f0
    move	$t9,$s0
    lwc1	$f13,0($s2)
    move	$a0,$s3
    # Line 184
    addiu	$s1,$s1,1
    # Line 185
    bal __glOdysseyProgramFFTFilter
    swc1	$f5,8($s4)
    move	$t9,$s0
    mov.s	$f20,$f0
    move	$a0,$s1
    bal __glOdysseyProgramFFTFilter
    lwc1	$f13,0($s2)
    lwc1	$f6,12($s4)
    madd.s	$f6,$f6,$f20,$f0
    # Line 182
    addiu	$s3,$s3,1
    addiu	$s5,$s5,4
    # Line 185
    swc1	$f6,12($s4)
    # Line 182
    addiu	$s4,$s4,16
    bne	$s3,$s6,.L0d9806ec
    # Line 183
    move	$t9,$s0
    # Line 181
    addiu	$s7,$s7,1
    # Line 175
    move	$s3,$zero
    # Line 181
    bne	$s8,$s7,.L0d9806e0
    addiu	$s2,$s2,8
.L0d9807fc:
    # Line 193
    lwc1	$f18,104($sp)
    lwc1	$f12,80($sp)
    lwc1	$f15,92($sp)
    lwc1	$f14,88($sp)
    lwc1	$f13,84($sp)
    lwc1	$f16,96($sp)
    lwc1	$f19,140($sp)
    lwc1	$f17,136($sp)
    lwc1	$f9,124($sp)
    lwc1	$f8,116($sp)
    lwc1	$f10,128($sp)
    lwc1	$f7,112($sp)
    lwc1	$f28,120($sp)
    lwc1	$f11,132($sp)
    lwc1	$f24,100($sp)
    lwc1	$f30,108($sp)
    swc1	$f11,40($sp)
    swc1	$f10,32($sp)
    swc1	$f9,24($sp)
    # Line 181
    la	$s0,sub_0d980000
    # Line 193
    swc1	$f28,16($sp)
    swc1	$f8,8($sp)
    # Line 181
    addiu	$s0,$s0,1424
    # Line 193
    swc1	$f7,0($sp)
    move	$t9,$s0
    swc1	$f19,56($sp)
    mov.s	$f19,$f30
    swc1	$f17,48($sp)
    bal __glOdysseyProgramFFTFilter
    mov.s	$f17,$f24
    ld	$s2,232($sp)
    ld	$s3,240($sp)
    ld	$s6,248($sp)
    ld	$s4,152($sp)
    ld	$s5,160($sp)
    ld	$s7,272($sp)
    ld	$s8,168($sp)
    # Line 201
    lwc1	$f12,64($sp)
    lwc1	$f18,104($sp)
    lwc1	$f15,92($sp)
    lwc1	$f14,88($sp)
    lwc1	$f13,84($sp)
    lwc1	$f31,140($sp)
    lwc1	$f29,136($sp)
    lwc1	$f27,132($sp)
    lwc1	$f25,124($sp)
    lwc1	$f21,72($sp)
    lwc1	$f23,116($sp)
    lwc1	$f22,76($sp)
    lwc1	$f26,68($sp)
    swc1	$f28,16($sp)
    swc1	$f31,56($sp)
    swc1	$f29,48($sp)
    swc1	$f27,40($sp)
    # Line 193
    mov.s	$f20,$f0
    # Line 201
    swc1	$f25,24($sp)
    mov.s	$f19,$f30
    move	$t9,$s0
    swc1	$f23,8($sp)
    mov.s	$f17,$f24
    swc1	$f22,32($sp)
    swc1	$f21,0($sp)
    bal __glOdysseyProgramFFTFilter
    mov.s	$f16,$f26
    div.s	$f6,$f0,$f20
    ld	$s1,224($sp)
    swc1	$f6,0($s1)
    # Line 205
    lwc1	$f13,64($sp)
    lwc1	$f18,104($sp)
    lwc1	$f12,80($sp)
    lwc1	$f15,92($sp)
    lwc1	$f14,88($sp)
    lwc1	$f16,96($sp)
    lwc1	$f5,140($sp)
    lwc1	$f4,136($sp)
    lwc1	$f2,124($sp)
    lwc1	$f1,72($sp)
    lwc1	$f3,128($sp)
    lwc1	$f0,112($sp)
    swc1	$f22,40($sp)
    swc1	$f28,16($sp)
    swc1	$f5,56($sp)
    swc1	$f4,48($sp)
    swc1	$f3,32($sp)
    move	$t9,$s0
    swc1	$f2,24($sp)
    mov.s	$f19,$f30
    swc1	$f1,8($sp)
    mov.s	$f17,$f26
    bal __glOdysseyProgramFFTFilter
    swc1	$f0,0($sp)
    div.s	$f25,$f0,$f20
    swc1	$f25,4($s1)
    # Line 209
    lwc1	$f14,64($sp)
    lwc1	$f12,80($sp)
    lwc1	$f15,92($sp)
    lwc1	$f13,84($sp)
    lwc1	$f16,96($sp)
    lwc1	$f23,140($sp)
    lwc1	$f21,132($sp)
    lwc1	$f10,124($sp)
    lwc1	$f9,72($sp)
    lwc1	$f8,116($sp)
    lwc1	$f11,128($sp)
    lwc1	$f7,112($sp)
    swc1	$f22,48($sp)
    swc1	$f23,56($sp)
    swc1	$f21,40($sp)
    swc1	$f11,32($sp)
    swc1	$f10,24($sp)
    mov.s	$f19,$f30
    move	$t9,$s0
    swc1	$f9,16($sp)
    mov.s	$f18,$f26
    swc1	$f8,8($sp)
    mov.s	$f17,$f24
    bal __glOdysseyProgramFFTFilter
    swc1	$f7,0($sp)
    div.s	$f3,$f0,$f20
    ldc1	$f30,216($sp)
    swc1	$f3,8($s1)
    # Line 213
    lwc1	$f15,64($sp)
    lwc1	$f18,104($sp)
    lwc1	$f12,80($sp)
    lwc1	$f14,88($sp)
    lwc1	$f13,84($sp)
    lwc1	$f16,96($sp)
    lwc1	$f2,136($sp)
    lwc1	$f1,132($sp)
    lwc1	$f31,72($sp)
    lwc1	$f29,116($sp)
    lwc1	$f0,128($sp)
    lwc1	$f27,112($sp)
    swc1	$f22,56($sp)
    swc1	$f28,16($sp)
    swc1	$f2,48($sp)
    swc1	$f1,40($sp)
    swc1	$f0,32($sp)
    move	$t9,$s0
    swc1	$f31,24($sp)
    mov.s	$f19,$f26
    swc1	$f29,8($sp)
    mov.s	$f17,$f24
    bal __glOdysseyProgramFFTFilter
    swc1	$f27,0($sp)
    div.s	$f7,$f0,$f20
    # Line 221
    lwc1	$f5,4($s1)
    ldc1	$f9,_lit8_3fe0000000000000
    lwc1	$f4,0($s1)
    lwc1	$f11,8($s1)
    cvt.d.s	$f5,$f5
    ldc1	$f12,_lit8_3fcc71c71c71c71c
    cvt.d.s	$f4,$f4
    nmsub.d	$f4,$f4,$f5,$f9
    ld	$s0,264($sp)
    cvt.d.s	$f11,$f11
    # Line 224
    ldc1	$f6,_lit8_3ff8000000000000
    # Line 222
    ldc1	$f10,_lit8_3fe6000000000000
    # Line 221
    madd.d	$f4,$f4,$f11,$f12
    cvt.d.s	$f8,$f7
    ldc1	$f9,_lit8_3fb8000000000000
    ldc1	$f26,184($sp)
    # Line 224
    nmsub.d	$f6,$f11,$f8,$f6
    ldc1	$f22,192($sp)
    # Line 222
    sub.d	$f5,$f5,$f11
    madd.d	$f5,$f5,$f8,$f10
    ldc1	$f24,200($sp)
    # Line 221
    nmsub.d	$f4,$f4,$f8,$f9
    ldc1	$f28,208($sp)
    # Line 226
    ldc1	$f20,144($sp)
    ld	$ra,256($sp)
    # Line 225
    swc1	$f7,12($s1)
    # Line 224
    cvt.s.d	$f6,$f6
    # Line 222
    cvt.s.d	$f5,$f5
    # Line 224
    swc1	$f6,8($s1)
    # Line 221
    cvt.s.d	$f4,$f4
    # Line 222
    swc1	$f5,4($s1)
    # Line 221
    swc1	$f4,0($s1)
    # Line 226
    ld	$s1,176($sp)
    jr	$ra
    addiu	$sp,$sp,288
.end CubicBezierFitCubic

# Function: FogFitCurve
# Declared: Line 229 (Source lines: 229-275)
# Address: 0x0d980ad0 - 0x0d980cc8 (Size: 504 bytes, Frame: 48)
.ent FogFitCurve
FogFitCurve:
    # Line 239
    lwc1	$f4,_lit_3f800000
    # Line 229
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    # Line 238
    sll	$s0,$a0,0x3
    lwc1	$f2,0($a1)
    addu	$s0,$s0,$a1
    lwc1	$f1,-8($s0)
    # Line 230
    lw	$at,4112($zero)
    sd	$ra,40($sp)
    # Line 238
    lui	$v0,0x1
    # Line 229
    sd	$s1,24($sp)
    # Line 238
    addu	$at,$at,$v0
    sub.s	$f1,$f1,$f2
    swc1	$f1,25704($at)
    # Line 239
    lwc1	$f0,0($a1)
    li	$a5,1
    # Line 238
    sd	$at,16($sp)
    # Line 239
    swc1	$f0,25700($at)
    # Line 229
    move	$s1,$a1
    # Line 239
    beq	$a0,$a5,.L0d980b3c
    lwc1	$f6,0($a1)
    # Line 244
    lwc1	$f5,-8($s0)
    sub.s	$f5,$f5,$f6
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f5,$f5
    div.d	$f4,$f4,$f5
    cvt.s.d	$f4,$f4
.L0d980b3c:
    andi	$a4,$a0,0x3
    # Line 246
    blez	$a0,.L0d980bc8
    neg.s	$f5,$f6
    move	$a3,$s1
    beqz	$a4,.L0d980b74
    sra	$t8,$a0,0x2
.L0d980b54:
    # Line 252
    lwc1	$f6,0($a3)
    add.s	$f6,$f6,$f5
    addiu	$a4,$a4,-1
    # Line 251
    addiu	$a3,$a3,8
    # Line 252
    mul.s	$f6,$f4,$f6
    bnez	$a4,.L0d980b54
    swc1	$f6,-8($a3)
    sra	$t8,$a0,0x2
.L0d980b74:
    beqz	$t8,.L0d980bc8
    nop
    nop
.L0d980b80:
    lwc1	$f10,24($a3)
    lwc1	$f9,16($a3)
    lwc1	$f8,8($a3)
    add.s	$f10,$f10,$f5
    lwc1	$f7,0($a3)
    add.s	$f9,$f9,$f5
    # Line 251
    addiu	$a3,$a3,32
    # Line 252
    mul.s	$f10,$f4,$f10
    add.s	$f8,$f8,$f5
    swc1	$f10,-8($a3)
    mul.s	$f9,$f4,$f9
    add.s	$f7,$f7,$f5
    swc1	$f9,-16($a3)
    mul.s	$f8,$f4,$f8
    swc1	$f8,-24($a3)
    mul.s	$f7,$f4,$f7
    # Line 251
    bne	$a3,$s0,.L0d980b80
    # Line 252
    swc1	$f7,-32($a3)
.L0d980bc8:
    # Line 255
    beq	$a0,$a5,.L0d980c94
    li	$t9,2
    beq	$a0,$t9,.L0d980cb0
    # Line 260
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 255
    li	$ra,3
    beq	$a0,$ra,.L0d980c7c
    # Line 263
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 266
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,1584
    move	$a1,$s1
    bal __glOdysseyProgramFFTFilter
    addiu	$a2,$sp,0
    # Line 270
    ld	$at,16($sp)
.L0d980bfc:
    lwc1	$f18,4($s1)
    swc1	$f18,25684($at)
    # Line 271
    lwc1	$f17,4($sp)
    ldc1	$f15,_lit8_4008000000000000
    cvt.d.s	$f17,$f17
    div.d	$f17,$f17,$f15
    lwc1	$f16,0($sp)
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f17
    cvt.s.d	$f16,$f16
    swc1	$f16,25688($at)
    # Line 272
    lwc1	$f14,4($sp)
    ldc1	$f16,_lit8_4000000000000000
    cvt.d.s	$f14,$f14
    mul.d	$f14,$f14,$f16
    div.d	$f14,$f14,$f15
    lwc1	$f13,8($sp)
    cvt.d.s	$f13,$f13
    div.d	$f13,$f13,$f15
    lwc1	$f12,0($sp)
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f14
    add.d	$f12,$f12,$f13
    # Line 275
    ld	$s1,24($sp)
    ld	$ra,40($sp)
    # Line 272
    cvt.s.d	$f12,$f12
    swc1	$f12,25692($at)
    # Line 274
    lwc1	$f11,-4($s0)
    # Line 275
    ld	$s0,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 274
    swc1	$f11,25696($at)
.L0d980c7c:
    # Line 263
    addiu	$t9,$t9,640
    move	$a1,$s1
    bal __glOdysseyProgramFFTFilter
    addiu	$a2,$sp,0
    b	.L0d980bfc
    # Line 270
    ld	$at,16($sp)
.L0d980c94:
    # Line 257
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,352
    move	$a0,$s1
    bal __glOdysseyProgramFFTFilter
    addiu	$a1,$sp,0
    b	.L0d980bfc
    # Line 270
    ld	$at,16($sp)
.L0d980cb0:
    # Line 260
    addiu	$t9,$t9,384
    move	$a0,$s1
    bal __glOdysseyProgramFFTFilter
    addiu	$a1,$sp,0
    b	.L0d980bfc
    # Line 270
    ld	$at,16($sp)
.end FogFitCurve

# Function: __glOdysseyValidateFog
# Declared: Line 283 (Source lines: 283-534)
# Address: 0x0d980cd0 - 0x0d9813d8 (Size: 1800 bytes, Frame: 160)
.globl __glOdysseyValidateFog
.ent __glOdysseyValidateFog
__glOdysseyValidateFog:
    # Line 283
    addiu	$sp,$sp,-160
    sdc1	$f20,88($sp)
    sdc1	$f22,80($sp)
    sdc1	$f26,64($sp)
    sdc1	$f28,72($sp)
    sd	$s1,104($sp)
    lui	$s1,0x1
    sdc1	$f24,120($sp)
    addu	$s1,$a0,$s1
    lbu	$at,26432($s1)
    sd	$s0,112($sp)
    lui	$v0,0x17
    move	$s0,$a0
    sd	$ra,144($sp)
    addiu	$v0,$v0,30912
    sd	$gp,96($sp)
    beqz	$at,.L0d980d24
    addu	$gp,$t9,$v0
    # Line 296
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    jal	__glOdysseyUpdateTransform
    nop
.L0d980d24:
    # Line 312
    lw	$a0,1588($s0)
    # Line 299
    ldc1	$f25,26064($s1)
    # Line 298
    ldc1	$f24,26056($s1)
    # Line 312
    li	$t8,2048
    # Line 299
    cvt.s.d	$f25,$f25
    # Line 298
    cvt.s.d	$f24,$f24
    # Line 312
    beq	$a0,$t8,.L0d980f98
    # Line 299
    sdc1	$f25,56($sp)
    # Line 312
    li	$t9,2049
    beq	$a0,$t9,.L0d9810bc
    li	$ra,9729
    beq	$a0,$ra,.L0d981268
    li	$at,0x812a
    beq	$a0,$at,.L0d9812c0
    lwc1	$f5,20($sp)
    ldc1	$f7,56($sp)
    lwc1	$f28,16($sp)
    lwc1	$f6,12($sp)
    lwc1	$f26,8($sp)
    sub.s	$f7,$f7,$f24
    lwc1	$f22,4($sp)
    mtc1	$zero,$f8
    lwc1	$f20,0($sp)
    cvt.d.s	$f7,$f7
.L0d980d84:
    # Line 458
    lw	$v0,1796($s0)
    andi	$v0,$v0,0x10
    beqz	$v0,.L0d980d9c
    nop
    # Line 467
    lwc1	$f9,25720($s1)
    sub.s	$f20,$f20,$f9
.L0d980d9c:
    # Line 471
    ldc1	$f10,1712($s0)
    ldc1	$f27,1704($s0)
    sub.d	$f10,$f10,$f27
    div.d	$f10,$f7,$f10
    cvt.s.d	$f10,$f10
    # Line 475
    cvt.d.s	$f25,$f10
    cvt.d.s	$f23,$f24
    nmsub.d	$f23,$f23,$f25,$f27
    cvt.d.s	$f21,$f20
    cvt.d.s	$f20,$f22
    add.d	$f21,$f21,$f23
    mul.d	$f20,$f20,$f21
    cvt.s.d	$f20,$f20
    # Line 478
    ldc1	$f9,_lit8_c020000000000000
    cvt.d.s	$f4,$f20
    c.lt.d	$f4,$f9
    mul.s	$f22,$f10,$f22
    bc1f	.L0d980f50
    swc1	$f22,4($sp)
    ldc1	$f11,_lit8_c090000000000000
    c.lt.d $f4,$f11
    bc1f .L0d9811fc
    ldc1	$f24,120($sp)
    # Line 491
    div.d	$f23,$f9,$f4
    cvt.d.s	$f22,$f22
    mul.d	$f22,$f22,$f23
    # Line 492
    lwc1	$f20,_lit_c1000000
    # Line 491
    cvt.s.d	$f22,$f22
    # Line 492
    li	$a0,7
    # Line 491
    swc1	$f22,4($sp)
.L0d980e14:
    # Line 528
    lwc1	$f25,_lit_43800000
    # Line 530
    mul.s	$f27,$f25,$f6
    # Line 526
    lw	$t2,31760($s0)
    lui	$a5,0xff00
    # Line 529
    mul.s	$f29,$f25,$f26
    # Line 526
    and	$t2,$t2,$a5
    # Line 529
    ori	$a5,$a5,0xfff
    # Line 531
    mul.s	$f26,$f25,$f28
    # Line 526
    lw	$t8,4($sp)
    # Line 528
    li	$a2,-4096
    # Line 526
    lui	$t9,0xd000
    # Line 528
    mul.s	$f31,$f25,$f20
    # Line 532
    mul.s	$f25,$f25,$f5
    # Line 526
    lui	$a3,0xff
    # Line 519
    c.eq.s $f8,$f22
    # Line 526
    addu	$t8,$t8,$t9
    move	$t3,$zero
    srl	$t8,$t8,0x5
    # Line 532
    trunc.w.s	$f25,$f25
    movf	$t3,$t8,$fcc2
    # Line 526
    ori	$t8,$a3,0xffff
    # Line 527
    sll	$t0,$a0,0xc
    lw	$t1,31764($s0)
    # Line 528
    trunc.w.s	$f31,$f31
    # Line 526
    and	$t3,$t3,$t8
    # Line 532
    mfc1	$a1,$f25
    # Line 529
    trunc.w.s	$f29,$f29
    # Line 526
    or	$t2,$t2,$t3
    # Line 527
    li	$t3,-28673
    # Line 534
    ld	$gp,96($sp)
    # Line 527
    andi	$t0,$t0,0x7000
    # Line 528
    mfc1	$a7,$f31
    # Line 527
    and	$t1,$t1,$t3
    # Line 534
    ldc1	$f22,80($sp)
    # Line 532
    andi	$a1,$a1,0xfff
    # Line 529
    mfc1	$a6,$f29
    # Line 527
    or	$t0,$t0,$t1
    ld	$ra,144($sp)
    # Line 531
    trunc.w.s	$f26,$f26
    # Line 528
    and	$t0,$a2,$t0
    andi	$a7,$a7,0xfff
    # Line 530
    trunc.w.s	$f27,$f27
    # Line 529
    andi	$a6,$a6,0xfff
    # Line 528
    or	$a7,$a7,$t0
    # Line 529
    lw	$t0,31768($s0)
    # Line 534
    ldc1	$f20,88($sp)
    # Line 529
    ori	$a3,$a3,0xf000
    # Line 531
    mfc1	$t1,$f26
    # Line 529
    sll	$a6,$a6,0xc
    # Line 534
    ldc1	$f28,72($sp)
    # Line 530
    mfc1	$a4,$f27
    # Line 529
    and	$a6,$a3,$a6
    and	$t0,$a5,$t0
    # Line 531
    andi	$t1,$t1,0xfff
    # Line 529
    or	$a6,$a6,$t0
    # Line 531
    lw	$t0,31772($s0)
    # Line 526
    sw	$t2,31760($s0)
    # Line 530
    andi	$a4,$a4,0xfff
    # Line 531
    sll	$t1,$t1,0xc
    # Line 534
    ldc1	$f26,64($sp)
    # Line 531
    and	$a3,$a3,$t1
    and	$a5,$a5,$t0
    # Line 528
    sw	$a7,31764($s0)
    # Line 530
    and	$a6,$a2,$a6
    # Line 531
    or	$a3,$a3,$a5
    # Line 530
    or	$a4,$a4,$a6
    sw	$a4,31768($s0)
    # Line 532
    and	$a2,$a2,$a3
    or	$a1,$a1,$a2
    sw	$a1,31772($s0)
    # Line 533
    lw	$a0,26976($s1)
    # Line 534
    ld	$s0,112($sp)
    # Line 533
    ori	$a0,$a0,0x8
    sw	$a0,26976($s1)
    li	$v1,2
    sw	$v1,4120($zero)
    # Line 534
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d980f50:
    # Line 501
    ldc1	$f7,_lit8_401ffc0000000000
    c.lt.d $f7,$f4
    ldc1	$f0,_lit8_408ffc0000000000
    # Line 507
    li	$a0,7
    # Line 501
    bc1f .L0d980f90
    ldc1	$f24,120($sp)
    c.lt.d $f0,$f4
    bc1f .L0d98131c
    nop
    # Line 506
    div.d	$f23,$f7,$f4
    cvt.d.s	$f22,$f22
    mul.d	$f22,$f22,$f23
    # Line 507
    lwc1	$f20,_lit_40ffe000
    # Line 506
    cvt.s.d	$f22,$f22
    # Line 507
    b	.L0d980e14
    # Line 506
    swc1	$f22,4($sp)
.L0d980f90:
    b	.L0d980e14
    # Line 519
    move	$a0,$zero
.L0d980f98:
    # Line 335
    lwc1	$f22,1608($s0)
    lwc1	$f20,_lit_407a5e96
    div.s	$f20,$f20,$f22
    # Line 319
    ldc1	$f13,56($sp)
    abs.s	$f16,$f24
    abs.s	$f17,$f13
    cvt.d.s	$f19,$f16
    cvt.d.s	$f18,$f17
    c.lt.d $f18,$f19
    movf.s	$f16,$f17,$fcc6
    # Line 338
    c.lt.s $f20,$f16
    # Line 346
    ldc1	$f15,_lit8_c000000000000000
    cvt.d.s	$f14,$f22
    # Line 338
    movf.s	$f20,$f16,$fcc5
    # Line 346
    mul.d	$f14,$f14,$f15
    cvt.d.s	$f12,$f20
    ldc1	$f28,_lit8_4008000000000000
    mul.d	$f12,$f12,$f14
    div.d	$f12,$f12,$f28
    # Line 341
    div.s	$f13,$f13,$f20
    # Line 346
    # lw $t9, -16956($gp) # &expf
    # Line 342
    div.s	$f24,$f24,$f20
    # Line 341
    sdc1	$f13,56($sp)
    # Line 346
    jal	expf
    cvt.s.d	$f12,$f12
    # Line 347
    mul.s	$f26,$f22,$f20
    neg.s	$f26,$f26
    cvt.d.s	$f12,$f26
    div.d	$f12,$f12,$f28
    # lw $t9, -16956($gp) # &expf
    # Line 346
    sdc1	$f0,40($sp)
    # Line 347
    jal	expf
    cvt.s.d	$f12,$f12
    # lw $t9, -16956($gp) # &expf
    sdc1	$f0,48($sp)
    jal	expf
    mov.s	$f12,$f26
    # Line 349
    lwc1	$f7,_lit_41100000
    # Line 348
    ldc1	$f3,_lit8_4014000000000000
    ldc1	$f31,_lit8_4000000000000000
    # Line 347
    mov.s	$f5,$f0
    # Line 348
    cvt.d.s	$f0,$f0
    ldc1	$f1,48($sp)
    # Line 349
    ldc1	$f6,_lit8_c014000000000000
    # Line 348
    ldc1	$f2,_lit8_4022000000000000
    # Line 349
    madd.d	$f6,$f6,$f0,$f31
    ldc1	$f28,40($sp)
    # Line 348
    cvt.d.s	$f1,$f1
    nmsub.d	$f31,$f31,$f0,$f3
    lwc1	$f0,_lit_41900000
    nmsub.d	$f31,$f31,$f1,$f2
    # Line 349
    mul.s	$f7,$f28,$f7
    # Line 348
    mul.s	$f28,$f28,$f0
    cvt.d.s	$f28,$f28
    ldc1	$f29,_lit8_4018000000000000
    add.d	$f28,$f28,$f31
    div.d	$f28,$f28,$f29
    # Line 349
    ldc1	$f8,_lit8_4032000000000000
    madd.d	$f6,$f6,$f1,$f8
    cvt.d.s	$f7,$f7
    sub.d	$f6,$f6,$f7
    div.d	$f6,$f6,$f29
    # Line 353
    ldc1	$f7,56($sp)
    # Line 350
    lwc1	$f26,_lit_3f800000
    # Line 353
    sub.s	$f7,$f7,$f24
    mtc1	$zero,$f8
    cvt.d.s	$f7,$f7
    # Line 352
    mov.s	$f22,$f26
    # Line 349
    cvt.s.d	$f6,$f6
    # Line 352
    swc1	$f26,4($sp)
    # Line 353
    mov.s	$f20,$f8
    b	.L0d980d84
    # Line 348
    cvt.s.d	$f28,$f28
.L0d9810bc:
    # Line 377
    lwc1	$f22,1608($s0)
    # Line 388
    ldc1	$f14,_lit8_c010000000000000
    cvt.d.s	$f12,$f22
    mul.d	$f14,$f12,$f14
    ldc1	$f13,_lit8_4022000000000000
    mul.d	$f12,$f12,$f14
    div.d	$f12,$f12,$f13
    # Line 377
    lwc1	$f20,_lit_3fea5cd5
    div.s	$f20,$f20,$f22
    # Line 361
    ldc1	$f13,56($sp)
    abs.s	$f14,$f24
    abs.s	$f15,$f13
    cvt.d.s	$f17,$f14
    cvt.d.s	$f16,$f15
    c.lt.d	$f16,$f17
    movf.s	$f14,$f15,$fcc0
    # Line 380
    c.lt.s $f20,$f14
    movf.s	$f20,$f14,$fcc7
    # Line 383
    div.s	$f13,$f13,$f20
    # Line 388
    cvt.d.s	$f28,$f20
    mul.d	$f12,$f28,$f12
    # lw $t9, -16956($gp) # &expf
    mul.d	$f12,$f28,$f12
    # Line 384
    div.s	$f24,$f24,$f20
    # Line 388
    cvt.s.d	$f12,$f12
    jal	expf
    # Line 383
    sdc1	$f13,56($sp)
    # Line 389
    mul.s	$f26,$f22,$f22
    neg.s	$f12,$f26
    ldc1	$f13,_lit8_4022000000000000
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f13
    mul.d	$f12,$f28,$f12
    # lw $t9, -16956($gp) # &expf
    mul.d	$f12,$f28,$f12
    # Line 388
    sdc1	$f0,32($sp)
    # Line 389
    jal	expf
    cvt.s.d	$f12,$f12
    # Line 390
    mul.s	$f12,$f26,$f20
    # lw $t9, -16956($gp) # &expf
    mul.s	$f12,$f20,$f12
    # Line 389
    sdc1	$f0,24($sp)
    # Line 390
    jal	expf
    neg.s	$f12,$f12
    # Line 391
    ldc1	$f1,24($sp)
    ldc1	$f31,_lit8_4000000000000000
    # Line 392
    ldc1	$f8,_lit8_4032000000000000
    # Line 390
    mov.s	$f5,$f0
    # Line 391
    cvt.d.s	$f0,$f0
    # Line 392
    ldc1	$f6,_lit8_c014000000000000
    lwc1	$f7,_lit_41100000
    # Line 391
    cvt.d.s	$f1,$f1
    # Line 392
    madd.d	$f6,$f6,$f0,$f31
    ldc1	$f28,32($sp)
    madd.d	$f6,$f6,$f1,$f8
    mul.s	$f7,$f28,$f7
    cvt.d.s	$f7,$f7
    # Line 391
    ldc1	$f29,_lit8_4018000000000000
    # Line 392
    sub.d	$f6,$f6,$f7
    div.d	$f6,$f6,$f29
    # Line 391
    ldc1	$f2,_lit8_4014000000000000
    nmsub.d	$f31,$f31,$f0,$f2
    ldc1	$f2,_lit8_4022000000000000
    lwc1	$f0,_lit_41900000
    nmsub.d	$f31,$f31,$f1,$f2
    mul.s	$f28,$f28,$f0
    cvt.d.s	$f28,$f28
    add.d	$f28,$f28,$f31
    div.d	$f28,$f28,$f29
    # Line 397
    ldc1	$f7,56($sp)
    # Line 393
    lwc1	$f26,_lit_3f800000
    # Line 397
    sub.s	$f7,$f7,$f24
    # Line 396
    mtc1	$zero,$f8
    # Line 397
    cvt.d.s	$f7,$f7
    # Line 395
    mov.s	$f22,$f26
    # Line 392
    cvt.s.d	$f6,$f6
    # Line 395
    swc1	$f26,4($sp)
    # Line 396
    mov.s	$f20,$f8
    # Line 397
    b	.L0d980d84
    # Line 391
    cvt.s.d	$f28,$f28
.L0d9811fc:
    # Line 497
    # lw $t9, -16952($gp) # &logf
    sdc1	$f6,128($sp)
    sdc1	$f5,136($sp)
    jal	logf
    neg.s	$f12,$f20
    ldc1	$f13,_lit8_3fe62e42fefa39ef
    cvt.d.s	$f12,$f0
    div.d	$f12,$f12,$f13
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f15,$f0
    mfc1	$a0,$f15
    addiu	$a0,$a0,-3
    # Line 500
    li	$ra,1
    # Line 497
    andi	$a0,$a0,0xff
    # Line 500
    sllv	$ra,$ra,$a0
    andi	$ra,$ra,0xff
    mtc1	$ra,$f14
    cvt.s.w	$f14,$f14
    # Line 501
    div.s	$f22,$f22,$f14
    ldc1	$f5,136($sp)
    ldc1	$f6,128($sp)
    mtc1	$zero,$f8
    # Line 500
    div.s	$f20,$f20,$f14
    b	.L0d980e14
    # Line 501
    swc1	$f22,4($sp)
.L0d981268:
    # Line 400
    lwc1	$f4,1620($s0)
    mtc1	$zero,$f8
    lwc1	$f9,_lit_3f800000
    # Line 428
    lwc1	$f6,_lit_c0ffe000
    # Line 400
    c.lt.s $f8,$f4
    # Line 411
    ldc1	$f7,56($sp)
    # Line 427
    mov.s	$f26,$f9
    # Line 411
    lwc1	$f20,1612($s0)
    # Line 429
    mov.s	$f28,$f6
    # Line 433
    ldc1	$f22,_lit8_4090000000000000
    # Line 400
    bc1f .L0d981388
    # Line 430
    mov.s	$f5,$f6
    # Line 402
    mov.s	$f26,$f9
    # Line 408
    swc1	$f4,4($sp)
    # Line 411
    sub.s	$f7,$f7,$f24
    # Line 408
    mov.s	$f22,$f4
    # Line 404
    lwc1	$f28,_lit_3eaaaaab
    # Line 411
    neg.s	$f20,$f20
    # Line 405
    mov.s	$f5,$f8
    # Line 403
    lwc1	$f6,_lit_3f2aaaab
    # Line 411
    b	.L0d980d84
    cvt.d.s	$f7,$f7
.L0d9812c0:
    # Line 447
    lwc1	$f4,25704($s1)
    lwc1	$f5,25696($s1)
    dmtc1	$zero,$f8
    # Line 446
    lwc1	$f28,25692($s1)
    # Line 447
    cvt.d.s	$f4,$f4
    # Line 457
    ldc1	$f7,56($sp)
    # Line 456
    lwc1	$f20,25700($s1)
    # Line 447
    c.eq.d $f4,$f8
    # Line 445
    lwc1	$f6,25688($s1)
    # Line 453
    lwc1	$f22,_lit_3f800000
    # Line 447
    bc1t .L0d981304
    # Line 444
    lwc1	$f26,25684($s1)
    # Line 451
    ldc1	$f22,_lit8_3ff0000000000000
    div.d	$f22,$f22,$f4
    cvt.s.d	$f22,$f22
    b	.L0d981308
    swc1	$f22,4($sp)
.L0d981304:
    # Line 453
    swc1	$f22,4($sp)
.L0d981308:
    # Line 456
    neg.s	$f20,$f20
    # Line 457
    sub.s	$f7,$f7,$f24
    mtc1	$zero,$f8
    b	.L0d980d84
    cvt.d.s	$f7,$f7
.L0d98131c:
    # Line 512
    div.d	$f12,$f4,$f7
    # lw $t9, -16952($gp) # &logf
    sdc1	$f6,128($sp)
    sdc1	$f5,136($sp)
    jal	logf
    cvt.s.d	$f12,$f12
    ldc1	$f13,_lit8_3fe62e42fefa39ef
    cvt.d.s	$f12,$f0
    div.d	$f12,$f12,$f13
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f15,$f0
    mfc1	$a0,$f15
    # Line 515
    li	$a1,1
    # Line 512
    andi	$a0,$a0,0xff
    # Line 515
    sllv	$a1,$a1,$a0
    andi	$a1,$a1,0xff
    mtc1	$a1,$f14
    cvt.s.w	$f14,$f14
    # Line 516
    div.s	$f22,$f22,$f14
    ldc1	$f5,136($sp)
    ldc1	$f6,128($sp)
    mtc1	$zero,$f8
    # Line 515
    div.s	$f20,$f20,$f14
    b	.L0d980e14
    # Line 516
    swc1	$f22,4($sp)
.L0d981388:
    # Line 411
    ldc1	$f7,56($sp)
    c.lt.s $f4,$f8
    sub.s	$f7,$f7,$f24
    bc1f .L0d9813c0
    cvt.d.s	$f7,$f7
    # Line 423
    lwc1	$f20,1616($s0)
    # Line 416
    lwc1	$f28,_lit_3f2aaaab
    # Line 414
    mov.s	$f26,$f8
    # Line 415
    lwc1	$f6,_lit_3eaaaaab
    # Line 420
    neg.s	$f22,$f4
    # Line 417
    mov.s	$f5,$f9
    # Line 420
    swc1	$f22,4($sp)
    # Line 423
    b	.L0d980d84
    neg.s	$f20,$f20
.L0d9813c0:
    # Line 433
    div.d	$f22,$f22,$f7
    # Line 436
    lwc1	$f20,1612($s0)
    # Line 433
    cvt.s.d	$f22,$f22
    # Line 436
    neg.s	$f20,$f20
    b	.L0d980d84
    # Line 433
    swc1	$f22,4($sp)
.end __glOdysseyValidateFog

# Function: __glOdyim_Fogfv
# Declared: Line 537 (Source lines: 537-628)
# Address: 0x0d9813e0 - 0x0d981810 (Size: 1072 bytes, Frame: 32)
.globl __glOdyim_Fogfv
.ent __glOdyim_Fogfv
__glOdyim_Fogfv:
    # Line 537
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 538
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a4,1
    # Line 537
    lui	$v0,0x17
    move	$a2,$a1
    sd	$ra,16($sp)
    addiu	$v0,$v0,29104
    sd	$gp,0($sp)
    # Line 538
    beq	$at,$a4,.L0d9817ec
    # Line 537
    addu	$gp,$t9,$v0
    # Line 540
    sltiu	$v1,$a0,2916
    bnez	$v1,.L0d9814c4
    sltiu	$a5,$a0,2914
    sltiu	$a1,$a0,2917
    beqz	$a1,.L0d981510
    sltiu	$a1,$a0,2918
    # Line 565
    lwc1	$f0,0($a2)
    # Line 566
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    # Line 565
    swc1	$f0,1616($s0)
    # Line 566
    lw	$a3,26980($a0)
    ori	$a3,$a3,0x1000
    sw	$a3,26980($a0)
    # Line 567
    li	$a1,9729
    # Line 566
    li	$a4,2
    sw	$a4,4120($zero)
.L0d981450:
    # Line 615
    lw	$a3,26976($a0)
    ori	$a3,$a3,0x8
    sw	$a3,26976($a0)
    sw	$a4,4120($zero)
    lw	$a2,1588($s0)
    bne	$a1,$a2,.L0d9814b4
    ld	$ra,16($sp)
    lwc1	$f4,1612($s0)
    lwc1	$f5,1616($s0)
    c.eq.s	$f4,$f5
    bc1t	.L0d981670
    # Line 628
    mtc1	$zero,$f9
    # Line 622
    lwc1	$f1,3544($s0)
    sub.s	$f2,$f5,$f4
    div.s	$f1,$f1,$f2
    ld	$ra,16($sp)
    # Line 612
    ld	$gp,0($sp)
    # Line 622
    swc1	$f1,1620($s0)
    # Line 612
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9814a4:
    # Line 611
    # lw $t9, -26792($gp) # &__glSetError
.L0d9814a8:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d9814b4:
    # Line 612
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9814c4:
    # Line 540
    bnez	$a5,.L0d98156c
    sltiu	$a6,$a0,2915
    beqz	$a6,.L0d98163c
    li	$t0,2915
    lwc1	$f4,0($a1)
    mtc1	$zero,$f3
    c.lt.s $f4,$f3
    bc1t .L0d981800
    # Line 557
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 561
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    # Line 560
    swc1	$f4,1608($s0)
    # Line 561
    lw	$a7,26980($a0)
    # Line 562
    li	$a1,9729
    # Line 561
    ori	$a7,$a7,0x1000
    sw	$a7,26980($a0)
    li	$a4,2
    # Line 562
    b	.L0d981450
    # Line 561
    sw	$a4,4120($zero)
.L0d981510:
    # Line 540
    bnez	$a1,.L0d9815ec
    sltiu	$a3,$a0,2919
    bnez	$a3,.L0d9816b0
    # Line 608
    li	$a1,9729
    # Line 540
    li	$a4,0x8199
    bne	$a0,$a4,.L0d9814a8
    # Line 611
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 603
    lwc1	$f7,0($a2)
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    swc1	$f7,25708($a0)
    # Line 604
    lwc1	$f6,4($a2)
    swc1	$f6,25712($a0)
    # Line 605
    lwc1	$f5,8($a2)
    # Line 607
    lw	$a5,26980($a0)
    # Line 605
    swc1	$f5,25716($a0)
    # Line 606
    lwc1	$f4,12($a2)
    # Line 607
    ori	$a5,$a5,0x1000
    sw	$a5,26980($a0)
    # Line 606
    swc1	$f4,25720($a0)
    # Line 607
    li	$a4,2
    # Line 608
    b	.L0d981450
    # Line 607
    sw	$a4,4120($zero)
.L0d98156c:
    # Line 540
    li	$a1,2913
    bne	$a0,$a1,.L0d9814a8
    # Line 611
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 575
    lwc1	$f5,0($a2)
    trunc.w.s	$f5,$f5
    lw	$a6,3252($s0)
    mfc1	$a5,$f5
    sllv	$a6,$a4,$a6
    addiu	$a6,$a6,-1
    and	$a5,$a5,$a6
    mtc1	$a5,$f4
    lbu	$a3,3221($s0)
    cvt.s.w	$f4,$f4
    beqz	$a3,.L0d9815d8
    swc1	$f4,1624($s0)
    # Line 578
    trunc.w.s	$f6,$f4
    mfc1	$a7,$f6
    lui	$t2,0xff
    andi	$a7,$a7,0xffff
    ori	$t2,$t2,0xf000
    lw	$t0,31752($s0)
    sll	$a7,$a7,0xc
    nor	$t1,$t2,$zero
    and	$a7,$a7,$t2
    and	$t0,$t0,$t1
    or	$a7,$a7,$t0
    sw	$a7,31752($s0)
.L0d9815d8:
    li	$a1,9729
    li	$a4,2
    lui	$a0,0x1
    b	.L0d981450
    addu	$a0,$s0,$a0
.L0d9815ec:
    # Line 540
    li	$a1,2917
    bne	$a0,$a1,.L0d9814a4
    # Line 584
    li	$a7,0x812a
    lwc1	$f7,0($a2)
    trunc.l.s	$f7,$f7
    dmfc1	$a5,$f7
    li	$a3,2048
    sll	$a5,$a5,0x0
    beq	$a5,$a3,.L0d981688
    li	$a6,2049
    beq	$a5,$a6,.L0d98168c
    li	$a1,9729
    beq	$a1,$a5,.L0d981690
    # Line 596
    lui	$a0,0x1
    # Line 584
    beq	$a5,$a7,.L0d98168c
    # Line 593
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9814b4
    ld	$ra,16($sp)
.L0d98163c:
    # Line 540
    bne	$a0,$t0,.L0d9814a8
    # Line 611
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 570
    lwc1	$f8,0($a1)
    # Line 571
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    # Line 570
    swc1	$f8,1612($s0)
    # Line 571
    lw	$t1,26980($a0)
    # Line 572
    li	$a1,9729
    # Line 571
    ori	$t1,$t1,0x1000
    sw	$t1,26980($a0)
    li	$a4,2
    # Line 572
    b	.L0d981450
    # Line 571
    sw	$a4,4120($zero)
.L0d981670:
    ld	$ra,16($sp)
    # Line 612
    ld	$gp,0($sp)
    # Line 628
    swc1	$f9,1620($s0)
    # Line 612
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d981688:
    # Line 594
    li	$a1,9729
.L0d98168c:
    # Line 596
    lui	$a0,0x1
.L0d981690:
    addu	$a0,$s0,$a0
    # Line 589
    sw	$a5,1588($s0)
    # Line 596
    lw	$a2,26980($a0)
    ori	$a2,$a2,0x1000
    sw	$a2,26980($a0)
    li	$a4,2
    # Line 597
    b	.L0d981450
    # Line 596
    sw	$a4,4120($zero)
.L0d9816b0:
    # Line 542
    # lw $t9, -26168($gp) # &__glClampColorf
    move	$a0,$s0
    jal	__glClampColorf
    addiu	$a1,$s0,1592
    lbu	$a1,3220($s0)
    # Line 546
    li	$a4,-4096
    # Line 544
    lui	$a2,0xff00
    # Line 542
    ldc1	$f4,_lit8_3ff0000000000000
    beqz	$a1,.L0d9817d8
    # Line 544
    ori	$a2,$a2,0xfff
    # Line 542
    lwc1	$f6,1592($s0)
    cvt.d.s	$f10,$f6
    c.le.d $f4,$f10
    # Line 544
    lw	$a3,31752($s0)
    lui	$a1,0xff
    ori	$a1,$a1,0xf000
    # Line 542
    bc1f .L0d981700
    # Line 544
    and	$a3,$a2,$a3
    b	.L0d981708
    lwc1	$f5,_lit_457ff000
.L0d981700:
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f6,$f5
.L0d981708:
    lwc1	$f6,1596($s0)
    trunc.l.s	$f8,$f5
    dmfc1	$a0,$f8
    cvt.d.s	$f7,$f6
    sll	$a0,$a0,0xc
    c.le.d $f4,$f7
    and	$a0,$a1,$a0
    or	$a0,$a0,$a3
    sw	$a0,31752($s0)
    bc1f .L0d98173c
    # Line 546
    and	$a3,$a4,$a0
    b	.L0d981744
    lwc1	$f5,_lit_457ff000
.L0d98173c:
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f6,$f5
.L0d981744:
    lwc1	$f6,1600($s0)
    trunc.l.s	$f8,$f5
    cvt.d.s	$f7,$f6
    dmfc1	$a5,$f8
    c.le.d $f4,$f7
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xfff
    or	$a3,$a3,$a5
    bc1f .L0d981774
    sw	$a3,31752($s0)
    # Line 548
    b	.L0d98177c
    lwc1	$f5,_lit_457ff000
.L0d981774:
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f6,$f5
.L0d98177c:
    lwc1	$f6,1604($s0)
    trunc.l.s	$f8,$f5
    dmfc1	$a0,$f8
    cvt.d.s	$f7,$f6
    lw	$a3,31756($s0)
    sll	$a0,$a0,0xc
    c.le.d $f4,$f7
    and	$a3,$a2,$a3
    and	$a0,$a1,$a0
    or	$a0,$a0,$a3
    sw	$a0,31756($s0)
    bc1f .L0d9817b8
    # Line 550
    and	$a1,$a4,$a0
    b	.L0d9817c0
    lwc1	$f4,_lit_457ff000
.L0d9817b8:
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f6,$f4
.L0d9817c0:
    trunc.l.s	$f5,$f4
    dmfc1	$a2,$f5
    sll	$a2,$a2,0x0
    andi	$a2,$a2,0xfff
    or	$a1,$a1,$a2
    sw	$a1,31756($s0)
.L0d9817d8:
    # Line 553
    li	$a1,9729
    li	$a4,2
    lui	$a0,0x1
    b	.L0d981450
    addu	$a0,$s0,$a0
.L0d9817ec:
    # Line 538
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9814b4
    ld	$ra,16($sp)
.L0d981800:
    # Line 557
    jalr	$t9
    li	$a0,1281
    b	.L0d9814b4
    ld	$ra,16($sp)
.end __glOdyim_Fogfv

# Function: __glOdyim_Fogf
# Declared: Line 634 (Source lines: 634-651)
# Address: 0x0d981810 - 0x0d981890 (Size: 128 bytes, Frame: 32)
.globl __glOdyim_Fogf
.ent __glOdyim_Fogf
__glOdyim_Fogf:
    # Line 634
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # Line 638
    li	$at,2913
    # Line 634
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,28032
    sd	$gp,0($sp)
    # Line 638
    beq	$a0,$at,.L0d98187c
    # Line 634
    addu	$gp,$t9,$v0
    # Line 638
    li	$v1,2914
    beq	$a0,$v1,.L0d981880
    # Line 644
    nop	# was lw $t9, -31768($gp) # &__glOdyim_Fogfv
    # Line 638
    li	$a1,2915
    beq	$a0,$a1,.L0d981880
    # Line 644
    nop	# was lw $t9, -31768($gp) # &__glOdyim_Fogfv
    # Line 638
    li	$a2,2916
    beq	$a0,$a2,.L0d981880
    # Line 644
    nop	# was lw $t9, -31768($gp) # &__glOdyim_Fogfv
    # Line 638
    li	$a3,2917
    beq	$a0,$a3,.L0d98187c
    # Line 648
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d981870:
    # Line 651
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98187c:
    # Line 644
    # lw $t9, -31768($gp) # &__glOdyim_Fogfv
.L0d981880:
    bal __glOdyim_Fogfv
    addiu	$a1,$sp,24
    b	.L0d981870
    ld	$ra,8($sp)
.end __glOdyim_Fogf

# Function: __glOdyim_Fogiv
# Declared: Line 654 (Source lines: 654-745)
# Address: 0x0d981890 - 0x0d981ce0 (Size: 1104 bytes, Frame: 32)
.globl __glOdyim_Fogiv
.ent __glOdyim_Fogiv
__glOdyim_Fogiv:
    # Line 654
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 655
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a4,1
    # Line 654
    lui	$v0,0x17
    move	$a2,$a1
    sd	$ra,16($sp)
    addiu	$v0,$v0,27904
    sd	$gp,0($sp)
    # Line 655
    beq	$at,$a4,.L0d981cb8
    # Line 654
    addu	$gp,$t9,$v0
    # Line 657
    sltiu	$v1,$a0,2916
    bnez	$v1,.L0d98197c
    sltiu	$a5,$a0,2914
    sltiu	$a1,$a0,2917
    beqz	$a1,.L0d9819c4
    sltiu	$a1,$a0,2918
    # Line 682
    lw	$a1,0($a2)
    mtc1	$a1,$f0
    cvt.s.w	$f0,$f0
    # Line 683
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    # Line 682
    swc1	$f0,1616($s0)
    # Line 683
    lw	$a3,26980($a0)
    ori	$a3,$a3,0x1000
    sw	$a3,26980($a0)
    # Line 684
    li	$a1,9729
    # Line 683
    li	$a5,2
    sw	$a5,4120($zero)
.L0d981908:
    # Line 732
    lw	$a3,26976($a0)
    ori	$a3,$a3,0x8
    sw	$a3,26976($a0)
    sw	$a5,4120($zero)
    lw	$a2,1588($s0)
    bne	$a1,$a2,.L0d98196c
    ld	$ra,16($sp)
    lwc1	$f4,1612($s0)
    lwc1	$f5,1616($s0)
    c.eq.s	$f4,$f5
    bc1t	.L0d981b40
    # Line 745
    mtc1	$zero,$f7
    # Line 739
    lwc1	$f1,3544($s0)
    sub.s	$f2,$f5,$f4
    div.s	$f1,$f1,$f2
    ld	$ra,16($sp)
    # Line 729
    ld	$gp,0($sp)
    # Line 739
    swc1	$f1,1620($s0)
    # Line 729
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98195c:
    # Line 728
    # lw $t9, -26792($gp) # &__glSetError
.L0d981960:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d98196c:
    # Line 729
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98197c:
    # Line 657
    bnez	$a5,.L0d981a44
    sltiu	$a6,$a0,2915
    beqz	$a6,.L0d981b04
    li	$a7,2915
    lw	$a4,0($a1)
    bltz	$a4,.L0d981ccc
    # Line 677
    mtc1	$a4,$f3
    cvt.s.w	$f3,$f3
    # Line 678
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    # Line 677
    swc1	$f3,1608($s0)
    # Line 678
    lw	$a7,26980($a0)
    # Line 679
    li	$a1,9729
    # Line 678
    ori	$a7,$a7,0x1000
    sw	$a7,26980($a0)
    li	$a5,2
    # Line 679
    b	.L0d981908
    # Line 678
    sw	$a5,4120($zero)
.L0d9819c4:
    # Line 657
    bnez	$a1,.L0d981abc
    sltiu	$a3,$a0,2919
    bnez	$a3,.L0d981b80
    # Line 659
    nop	# was lw $t9, -26156($gp) # &__glClampColori
    # Line 657
    li	$a4,0x8199
    bne	$a0,$a4,.L0d981960
    # Line 728
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 720
    lw	$a1,0($a2)
    mtc1	$a1,$f7
    cvt.s.w	$f7,$f7
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    swc1	$f7,25708($a0)
    # Line 721
    lw	$t0,4($a2)
    mtc1	$t0,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,25712($a0)
    # Line 722
    lw	$a7,8($a2)
    mtc1	$a7,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,25716($a0)
    # Line 723
    lw	$a6,12($a2)
    mtc1	$a6,$f4
    # Line 724
    lw	$a5,26980($a0)
    # Line 723
    cvt.s.w	$f4,$f4
    # Line 724
    ori	$a5,$a5,0x1000
    sw	$a5,26980($a0)
    # Line 725
    li	$a1,9729
    # Line 723
    swc1	$f4,25720($a0)
    # Line 724
    li	$a5,2
    # Line 725
    b	.L0d981908
    # Line 724
    sw	$a5,4120($zero)
.L0d981a44:
    # Line 657
    li	$a3,2913
    bne	$a0,$a3,.L0d981960
    # Line 728
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 692
    lw	$a7,3252($s0)
    sllv	$a7,$a4,$a7
    lw	$a6,0($a1)
    addiu	$a7,$a7,-1
    and	$a6,$a6,$a7
    mtc1	$a6,$f4
    lbu	$a5,3221($s0)
    cvt.s.w	$f4,$f4
    beqz	$a5,.L0d981aa8
    swc1	$f4,1624($s0)
    # Line 695
    trunc.w.s	$f5,$f4
    mfc1	$t0,$f5
    lui	$t3,0xff
    andi	$t0,$t0,0xffff
    ori	$t3,$t3,0xf000
    lw	$t1,31752($s0)
    sll	$t0,$t0,0xc
    nor	$t2,$t3,$zero
    and	$t0,$t0,$t3
    and	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sw	$t0,31752($s0)
.L0d981aa8:
    li	$a1,9729
    li	$a5,2
    lui	$a0,0x1
    b	.L0d981908
    addu	$a0,$s0,$a0
.L0d981abc:
    # Line 657
    li	$a1,2917
    bne	$a0,$a1,.L0d98195c
    # Line 701
    li	$a6,0x812a
    lw	$a4,0($a2)
    li	$a3,2048
    beq	$a4,$a3,.L0d981b58
    li	$a5,2049
    beq	$a4,$a5,.L0d981b5c
    li	$a1,9729
    beq	$a4,$a1,.L0d981b60
    # Line 713
    lui	$a0,0x1
    # Line 701
    beq	$a4,$a6,.L0d981b60
    # Line 713
    lui	$a0,0x1
    # Line 710
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98196c
    ld	$ra,16($sp)
.L0d981b04:
    # Line 657
    bne	$a0,$a7,.L0d981960
    # Line 728
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 687
    lw	$a1,0($a1)
    mtc1	$a1,$f6
    cvt.s.w	$f6,$f6
    # Line 688
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    # Line 687
    swc1	$f6,1612($s0)
    # Line 688
    lw	$t0,26980($a0)
    # Line 689
    li	$a1,9729
    # Line 688
    ori	$t0,$t0,0x1000
    sw	$t0,26980($a0)
    li	$a5,2
    # Line 689
    b	.L0d981908
    # Line 688
    sw	$a5,4120($zero)
.L0d981b40:
    ld	$ra,16($sp)
    # Line 729
    ld	$gp,0($sp)
    # Line 745
    swc1	$f7,1620($s0)
    # Line 729
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d981b58:
    # Line 711
    li	$a1,9729
.L0d981b5c:
    # Line 713
    lui	$a0,0x1
.L0d981b60:
    addu	$a0,$s0,$a0
    # Line 706
    sw	$a4,1588($s0)
    # Line 713
    lw	$a2,26980($a0)
    ori	$a2,$a2,0x1000
    sw	$a2,26980($a0)
    li	$a5,2
    # Line 714
    b	.L0d981908
    # Line 713
    sw	$a5,4120($zero)
.L0d981b80:
    # Line 659
    move	$a0,$s0
    jal	__glSetError
    addiu	$a1,$s0,1592
    lbu	$a1,3220($s0)
    # Line 663
    li	$a4,-4096
    # Line 661
    lui	$a2,0xff00
    # Line 659
    ldc1	$f4,_lit8_3ff0000000000000
    beqz	$a1,.L0d981ca4
    # Line 661
    ori	$a2,$a2,0xfff
    # Line 659
    lwc1	$f6,1592($s0)
    cvt.d.s	$f8,$f6
    c.le.d $f4,$f8
    # Line 661
    lw	$a3,31752($s0)
    lui	$a1,0xff
    ori	$a1,$a1,0xf000
    # Line 659
    bc1f .L0d981bcc
    # Line 661
    and	$a3,$a2,$a3
    b	.L0d981bd4
    lwc1	$f5,_lit_457ff000
.L0d981bcc:
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f6,$f5
.L0d981bd4:
    lwc1	$f6,1596($s0)
    trunc.l.s	$f8,$f5
    dmfc1	$a0,$f8
    cvt.d.s	$f7,$f6
    sll	$a0,$a0,0xc
    c.le.d $f4,$f7
    and	$a0,$a1,$a0
    or	$a0,$a0,$a3
    sw	$a0,31752($s0)
    bc1f .L0d981c08
    # Line 663
    and	$a3,$a4,$a0
    b	.L0d981c10
    lwc1	$f5,_lit_457ff000
.L0d981c08:
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f6,$f5
.L0d981c10:
    lwc1	$f6,1600($s0)
    trunc.l.s	$f8,$f5
    cvt.d.s	$f7,$f6
    dmfc1	$a5,$f8
    c.le.d $f4,$f7
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xfff
    or	$a3,$a3,$a5
    bc1f .L0d981c40
    sw	$a3,31752($s0)
    # Line 665
    b	.L0d981c48
    lwc1	$f5,_lit_457ff000
.L0d981c40:
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f6,$f5
.L0d981c48:
    lwc1	$f6,1604($s0)
    trunc.l.s	$f8,$f5
    dmfc1	$a0,$f8
    cvt.d.s	$f7,$f6
    lw	$a3,31756($s0)
    sll	$a0,$a0,0xc
    c.le.d $f4,$f7
    and	$a3,$a2,$a3
    and	$a0,$a1,$a0
    or	$a0,$a0,$a3
    sw	$a0,31756($s0)
    bc1f .L0d981c84
    # Line 667
    and	$a1,$a4,$a0
    b	.L0d981c8c
    lwc1	$f4,_lit_457ff000
.L0d981c84:
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f6,$f4
.L0d981c8c:
    trunc.l.s	$f5,$f4
    dmfc1	$a2,$f5
    sll	$a2,$a2,0x0
    andi	$a2,$a2,0xfff
    or	$a1,$a1,$a2
    sw	$a1,31756($s0)
.L0d981ca4:
    # Line 670
    li	$a1,9729
    li	$a5,2
    lui	$a0,0x1
    b	.L0d981908
    addu	$a0,$s0,$a0
.L0d981cb8:
    # Line 655
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98196c
    ld	$ra,16($sp)
.L0d981ccc:
    # Line 674
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d98196c
    ld	$ra,16($sp)
.end __glOdyim_Fogiv

# Function: __glOdyim_Fogi
# Declared: Line 751 (Source lines: 751-768)
# Address: 0x0d981ce0 - 0x0d981d60 (Size: 128 bytes, Frame: 32)
.globl __glOdyim_Fogi
.ent __glOdyim_Fogi
__glOdyim_Fogi:
    # Line 751
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 755
    li	$at,2913
    # Line 751
    lui	$v0,0x17
    sw	$a1,28($sp)
    addiu	$v0,$v0,26800
    sd	$gp,0($sp)
    # Line 755
    beq	$a0,$at,.L0d981d4c
    # Line 751
    addu	$gp,$t9,$v0
    # Line 755
    li	$v1,2914
    beq	$a0,$v1,.L0d981d50
    # Line 761
    nop	# was lw $t9, -31760($gp) # &__glOdyim_Fogiv
    # Line 755
    li	$a1,2915
    beq	$a0,$a1,.L0d981d4c
    li	$a2,2916
    beq	$a0,$a2,.L0d981d50
    # Line 761
    nop	# was lw $t9, -31760($gp) # &__glOdyim_Fogiv
    # Line 755
    li	$a3,2917
    beq	$a0,$a3,.L0d981d50
    # Line 761
    nop	# was lw $t9, -31760($gp) # &__glOdyim_Fogiv
    # Line 765
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d981d40:
    # Line 768
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d981d4c:
    # Line 761
    # lw $t9, -31760($gp) # &__glOdyim_Fogiv
.L0d981d50:
    bal __glOdyim_Fogiv
    addiu	$a1,$sp,28
    b	.L0d981d40
    ld	$ra,8($sp)
.end __glOdyim_Fogi

# Function: __glOdyim_FogFuncSGIS
# Declared: Line 771 (Source lines: 771-871)
# Address: 0x0d981d60 - 0x0d981fb8 (Size: 600 bytes, Frame: 192)
.globl __glOdyim_FogFuncSGIS
.ent __glOdyim_FogFuncSGIS
__glOdyim_FogFuncSGIS:
    # Line 771
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 775
    lw	$s0,4112($zero)
    li	$v1,1
    lw	$at,4120($zero)
    # Line 771
    sd	$s2,32($sp)
    move	$s2,$a1
    lui	$a1,0x17
    move	$v0,$a0
    sd	$ra,48($sp)
    addiu	$a0,$a1,26672
    sd	$gp,40($sp)
    # Line 775
    beq	$at,$v1,.L0d981fa0
    # Line 771
    addu	$gp,$t9,$a0
    # Line 775
    blez	$v0,.L0d981f70
    # Line 781
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 791
    li	$a1,4
    li	$a3,4
    lui	$a2,0x1
    sd	$s1,56($sp)
    addu	$a2,$a2,$s0
    slt	$a3,$a3,$v0
    movz	$a1,$v0,$a3
    sw	$a1,25648($a2)
    # Line 793
    lw	$t9,0($s0)
    # Line 791
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    # Line 793
    sll	$a1,$a1,0x3
    move	$a0,$s0
    jal	__glSetError
    sd	$a1,0($sp)
    # Line 818
    ld	$a0,8($sp)
    # Line 793
    beqz	$v0,.L0d981f84
    move	$s1,$v0
    # Line 808
    lwc1	$f4,0($s2)
    dmtc1	$zero,$f8
    cvt.d.s	$f0,$f4
    c.lt.d	$f0,$f8
    ld	$v0,0($sp)
    # Line 819
    move	$a7,$s1
    # Line 808
    lwc1	$f5,4($s2)
    bc1t	.L0d981e38
    # Line 818
    addu	$t0,$v0,$s2
    # Line 808
    cvt.d.s	$f5,$f5
    c.lt.d $f5,$f8
    # Line 818
    slti	$a4,$a0,2
    # Line 808
    ldc1	$f6,_lit8_3ff0000000000000
    # Line 819
    move	$a6,$zero
    lui	$a1,0x1
    # Line 808
    bc1t .L0d981e38
    # Line 817
    ld	$a5,16($sp)
    # Line 808
    c.lt.d $f6,$f5
    bc1f .L0d981e70
    nop
.L0d981e38:
    # Line 869
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 871
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    ld	$s1,56($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,48($sp)
.L0d981e60:
    ld	$s2,32($sp)
    # Line 865
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d981e70:
    # Line 817
    swc1	$f4,25652($a5)
    # Line 818
    lwc1	$f5,4($s2)
    bnez	$a4,.L0d981f34
    swc1	$f5,25656($a5)
    move	$a7,$s1
    addiu	$a4,$s2,8
    move	$a6,$zero
    addu	$a5,$a1,$s0
    b	.L0d981ec4
    addiu	$a5,$a5,8
    nop
    nop
.L0d981ea0:
    # Line 848
    swc1	$f4,0($a7)
.L0d981ea4:
    # Line 849
    swc1	$f5,4($a7)
    # Line 851
    lwc1	$f5,4($a4)
    # Line 852
    addiu	$a7,$a7,8
    addiu	$a6,$a6,1
    # Line 850
    lwc1	$f4,0($a4)
.L0d981eb8:
    # Line 819
    addiu	$a4,$a4,8
    beq	$a4,$t0,.L0d981f38
    # Line 861
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
.L0d981ec4:
    # Line 823
    lwc1	$f9,0($a4)
    swc1	$f9,25652($a5)
    # Line 824
    lwc1	$f7,4($a4)
    swc1	$f7,25656($a5)
    # Line 829
    lwc1	$f7,0($a4)
    c.lt.s $f7,$f4
    bc1t .L0d981e38
    lwc1	$f6,4($a4)
    cvt.d.s	$f10,$f6
    c.lt.d $f10,$f8
    bc1t .L0d981e38
    nop
    c.lt.s $f5,$f6
    bc1t .L0d981e38
    nop
    # Line 846
    c.eq.s $f7,$f4
    bc1f .L0d981f18
    # Line 819
    addiu	$a5,$a5,8
    # Line 846
    c.eq.s $f6,$f5
    bc1t .L0d981eb8
    nop
.L0d981f18:
    bgtz	$a6,.L0d981ea0
    nop
    c.lt.s	$f6,$f5
    bc1f	.L0d981eb8
    nop
    b	.L0d981ea4
    # Line 848
    swc1	$f4,0($a7)
.L0d981f34:
    # Line 861
    # lw $t9, -32732($gp) # &sub_0d980000
.L0d981f38:
    addiu	$t9,$t9,2768
    move	$a1,$s1
    # Line 858
    swc1	$f5,4($a7)
    # Line 861
    addiu	$a0,$a6,1
    bal __glOdysseyProgramFFTFilter
    # Line 857
    swc1	$f4,0($a7)
    # Line 863
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	sub_0d980000
    move	$a1,$s1
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    b	.L0d981e60
    ld	$s1,56($sp)
.L0d981f70:
    ld	$s0,24($sp)
    # Line 781
    jalr	$t9
    li	$a0,1281
    b	.L0d981e60
    ld	$ra,48($sp)
.L0d981f84:
    # Line 795
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    ld	$s1,56($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d981e60
    ld	$ra,48($sp)
.L0d981fa0:
    # Line 775
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d981e60
    ld	$ra,48($sp)
.end __glOdyim_FogFuncSGIS

.rdata
_lit8_3fb8000000000000:
    .word 0x3fb80000, 0x00000000
_lit8_3fcc71c71c71c71c:
    .word 0x3fcc71c7, 0x1c71c71c
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3fe6000000000000:
    .word 0x3fe60000, 0x00000000
_lit8_3fe62e42fefa39ef:
    .word 0x3fe62e42, 0xfefa39ef
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_3ff8000000000000:
    .word 0x3ff80000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4014000000000000:
    .word 0x40140000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit8_401ffc0000000000:
    .word 0x401ffc00, 0x00000000
_lit8_4022000000000000:
    .word 0x40220000, 0x00000000
_lit8_4032000000000000:
    .word 0x40320000, 0x00000000
_lit8_408ffc0000000000:
    .word 0x408ffc00, 0x00000000
_lit8_4090000000000000:
    .word 0x40900000, 0x00000000
_lit8_bfd0000000000000:
    .word 0xbfd00000, 0x00000000
_lit8_bfd5555555555555:
    .word 0xbfd55555, 0x55555555
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit8_bfe5555555555555:
    .word 0xbfe55555, 0x55555555
_lit8_bfe8000000000000:
    .word 0xbfe80000, 0x00000000
_lit8_c000000000000000:
    .word 0xc0000000, 0x00000000
_lit8_c010000000000000:
    .word 0xc0100000, 0x00000000
_lit8_c014000000000000:
    .word 0xc0140000, 0x00000000
_lit8_c020000000000000:
    .word 0xc0200000, 0x00000000
_lit8_c090000000000000:
    .word 0xc0900000, 0x00000000
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f2aaaab:
    .word 0x3f2aaaab
_lit_3f800000:
    .word 0x3f800000
_lit_3fea5cd5:
    .word 0x3fea5cd5
_lit_407a5e96:
    .word 0x407a5e96
_lit_40ffe000:
    .word 0x40ffe000
_lit_41100000:
    .word 0x41100000
_lit_41900000:
    .word 0x41900000
_lit_43800000:
    .word 0x43800000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_c0ffe000:
    .word 0xc0ffe000
_lit_c1000000:
    .word 0xc1000000

