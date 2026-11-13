# Source: ../ODYSSEY/ody_texgen.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_texgen.c
# Total Functions: 8

.text

# Function: __glOdyim_TexGenfv
# Declared: Line 28 (Source lines: 29-86)
# Address: 0x0d9ce9d0 - 0x0d9cec1c (Size: 588 bytes, Frame: 192)
.globl __glOdyim_TexGenfv
.ent __glOdyim_TexGenfv
__glOdyim_TexGenfv:
    # Line 29
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 33
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 29
    lui	$v1,0x13
    sd	$ra,48($sp)
    addiu	$v1,$v1,-25664
    sd	$gp,32($sp)
    # Line 33
    beq	$at,$v0,.L0d9cebec
    # Line 29
    addu	$gp,$t9,$v1
    # Line 35
    li	$a3,8192
    beq	$a0,$a3,.L0d9ceb20
    # Line 36
    addiu	$a4,$s0,1984
    # Line 35
    li	$a4,8193
    beq	$a0,$a4,.L0d9ceb28
    li	$a5,8194
    beq	$a0,$a5,.L0d9ceb78
    # Line 38
    addiu	$a4,$s0,2232
    # Line 35
    li	$a6,8195
    beq	$a0,$a6,.L0d9cea40
    # Line 39
    addiu	$a4,$s0,2356
    # Line 41
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9ceb14
    ld	$ra,48($sp)
.L0d9cea40:
    # Line 44
    li	$a7,9472
.L0d9cea44:
    beq	$a1,$a7,.L0d9ceb30
    li	$t0,9473
    beq	$a1,$t0,.L0d9ceb80
    li	$t1,9474
    beq	$a1,$t1,.L0d9cea70
    # Line 80
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9ceb14
    ld	$ra,48($sp)
.L0d9cea70:
    # Line 71
    lwc1	$f3,0($a2)
    swc1	$f3,0($sp)
    lwc1	$f2,4($a2)
    swc1	$f2,4($sp)
    lwc1	$f1,8($a2)
    swc1	$f1,8($sp)
    lwc1	$f0,12($a2)
    swc1	$f0,12($sp)
    # Line 72
    lw	$a5,29716($s0)
    lbu	$t2,268($a5)
    beqz	$t2,.L0d9ceac0
    nop
    # Line 74
    lw	$t9,11956($s0)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a4,40($sp)
    ld	$a5,16($sp)
.L0d9ceac0:
    # Line 76
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
    # Line 78
    lui	$a0,0x1
    li	$a1,2
    addu	$a0,$s0,$a0
.L0d9ceae0:
    # Line 86
    ld	$gp,32($sp)
    # Line 83
    sw	$a1,4120($zero)
    lw	$a3,11812($s0)
    ld	$ra,48($sp)
    ori	$a3,$a3,0x1
    sw	$a3,11812($s0)
    # Line 85
    lw	$a2,26980($a0)
    # Line 86
    ld	$s0,24($sp)
    # Line 85
    ori	$a2,$a2,0x20
    sw	$a2,26980($a0)
    # Line 86
    addiu	$sp,$sp,64
    jr	$ra
    # Line 85
    sw	$a1,4120($zero)
.L0d9ceb14:
    # Line 86
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ceb20:
    b	.L0d9cea44
    # Line 44
    li	$a7,9472
.L0d9ceb28:
    # Line 37
    b	.L0d9cea40
    addiu	$a4,$s0,2108
.L0d9ceb30:
    # Line 46
    lwc1	$f4,0($a2)
    trunc.l.s	$f4,$f4
    dmfc1	$a1,$f4
    li	$a5,9216
    sll	$a1,$a1,0x0
    li	$a2,9217
    beq	$a1,$a5,.L0d9cebc8
    li	$a3,9218
    beq	$a1,$a2,.L0d9cebc8
    nop
    beq	$a1,$a3,.L0d9cebb0
    # Line 52
    li	$a2,8194
    # Line 59
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9ceb14
    ld	$ra,48($sp)
.L0d9ceb78:
    # Line 38
    b	.L0d9cea44
    # Line 44
    li	$a7,9472
.L0d9ceb80:
    # Line 65
    lwc1	$f8,0($a2)
    swc1	$f8,20($a4)
    # Line 66
    lwc1	$f7,4($a2)
    swc1	$f7,24($a4)
    # Line 67
    lwc1	$f6,8($a2)
    swc1	$f6,28($a4)
    # Line 68
    lwc1	$f5,12($a2)
    # Line 69
    li	$a1,2
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    b	.L0d9ceae0
    # Line 68
    swc1	$f5,32($a4)
.L0d9cebb0:
    # Line 52
    beq	$a0,$a2,.L0d9cec04
    li	$a3,8195
    beq	$a0,$a3,.L0d9cec08
    # Line 53
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 57
    b	.L0d9cebcc
    # Line 56
    sw	$a1,0($a4)
.L0d9cebc8:
    # Line 49
    sw	$a1,0($a4)
.L0d9cebcc:
    # Line 62
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    lw	$a4,26980($a0)
    ori	$a4,$a4,0x100
    sw	$a4,26980($a0)
    li	$a1,2
    b	.L0d9ceae0
    sw	$a1,4120($zero)
.L0d9cebec:
    # Line 33
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ceb14
    ld	$ra,48($sp)
.L0d9cec04:
    # Line 53
    # lw $t9, -26792($gp) # &__glSetError
.L0d9cec08:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9ceb14
    ld	$ra,48($sp)
.end __glOdyim_TexGenfv

# Function: __glOdyim_TexGenf
# Declared: Line 88 (Source lines: 89-99)
# Address: 0x0d9cec20 - 0x0d9cec74 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_TexGenf
.ent __glOdyim_TexGenf
__glOdyim_TexGenf:
    # Line 89
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 91
    li	$at,9472
    # Line 89
    lui	$v0,0x13
    sd	$ra,8($sp)
    addiu	$v0,$v0,-26256
    sd	$gp,0($sp)
    # Line 91
    beq	$a1,$at,.L0d9cec60
    # Line 89
    addu	$gp,$t9,$v0
    # Line 96
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9cec54:
    # Line 99
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cec60:
    # Line 93
    # lw $t9, -30680($gp) # &__glOdyim_TexGenfv
    bal __glOdyim_TexGenfv
    addiu	$a2,$sp,32
    b	.L0d9cec54
    ld	$ra,8($sp)
.end __glOdyim_TexGenf

# Function: __glOdyim_TexGendv
# Declared: Line 101 (Source lines: 102-159)
# Address: 0x0d9cec80 - 0x0d9ceeec (Size: 620 bytes, Frame: 192)
.globl __glOdyim_TexGendv
.ent __glOdyim_TexGendv
__glOdyim_TexGendv:
    # Line 102
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 106
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 102
    lui	$v1,0x13
    sd	$ra,48($sp)
    addiu	$v1,$v1,-26352
    sd	$gp,32($sp)
    # Line 106
    beq	$at,$v0,.L0d9ceebc
    # Line 102
    addu	$gp,$t9,$v1
    # Line 108
    li	$a3,8192
    beq	$a0,$a3,.L0d9cede0
    # Line 109
    addiu	$a4,$s0,1984
    # Line 108
    li	$a4,8193
    beq	$a0,$a4,.L0d9cede8
    li	$a5,8194
    beq	$a0,$a5,.L0d9cee38
    # Line 111
    addiu	$a4,$s0,2232
    # Line 108
    li	$a6,8195
    beq	$a0,$a6,.L0d9cecec
    # Line 114
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cedd4
    ld	$ra,48($sp)
.L0d9cecec:
    # Line 112
    addiu	$a4,$s0,2356
.L0d9cecf0:
    # Line 117
    li	$a7,9472
.L0d9cecf4:
    beq	$a1,$a7,.L0d9cedf0
    li	$t0,9473
    beq	$a1,$t0,.L0d9cee40
    li	$t1,9474
    beq	$a1,$t1,.L0d9ced20
    # Line 153
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cedd4
    ld	$ra,48($sp)
.L0d9ced20:
    # Line 144
    ldc1	$f3,0($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    ldc1	$f2,8($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,16($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,24($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 145
    lw	$a5,29716($s0)
    lbu	$t2,268($a5)
    beqz	$t2,.L0d9ced80
    nop
    # Line 147
    lw	$t9,11956($s0)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a4,40($sp)
    ld	$a5,16($sp)
.L0d9ced80:
    # Line 149
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
    # Line 151
    lui	$a0,0x1
    li	$a1,2
    addu	$a0,$s0,$a0
.L0d9ceda0:
    # Line 159
    ld	$gp,32($sp)
    # Line 156
    sw	$a1,4120($zero)
    lw	$a3,11812($s0)
    ld	$ra,48($sp)
    ori	$a3,$a3,0x1
    sw	$a3,11812($s0)
    # Line 158
    lw	$a2,26980($a0)
    # Line 159
    ld	$s0,24($sp)
    # Line 158
    ori	$a2,$a2,0x20
    sw	$a2,26980($a0)
    # Line 159
    addiu	$sp,$sp,64
    jr	$ra
    # Line 158
    sw	$a1,4120($zero)
.L0d9cedd4:
    # Line 159
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9cede0:
    b	.L0d9cecf4
    # Line 117
    li	$a7,9472
.L0d9cede8:
    # Line 110
    b	.L0d9cecf0
    addiu	$a4,$s0,2108
.L0d9cedf0:
    # Line 119
    ldc1	$f4,0($a2)
    trunc.l.d	$f4,$f4
    dmfc1	$a1,$f4
    li	$a5,9216
    sll	$a1,$a1,0x0
    li	$a2,9217
    beq	$a1,$a5,.L0d9cee98
    li	$a3,9218
    beq	$a1,$a2,.L0d9cee98
    nop
    beq	$a1,$a3,.L0d9cee80
    # Line 125
    li	$a2,8194
    # Line 132
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cedd4
    ld	$ra,48($sp)
.L0d9cee38:
    # Line 111
    b	.L0d9cecf4
    # Line 117
    li	$a7,9472
.L0d9cee40:
    # Line 138
    ldc1	$f8,0($a2)
    cvt.s.d	$f8,$f8
    swc1	$f8,20($a4)
    # Line 139
    ldc1	$f7,8($a2)
    cvt.s.d	$f7,$f7
    swc1	$f7,24($a4)
    # Line 140
    ldc1	$f6,16($a2)
    cvt.s.d	$f6,$f6
    swc1	$f6,28($a4)
    # Line 141
    ldc1	$f5,24($a2)
    # Line 142
    li	$a1,2
    lui	$a0,0x1
    # Line 141
    cvt.s.d	$f5,$f5
    # Line 142
    addu	$a0,$s0,$a0
    b	.L0d9ceda0
    # Line 141
    swc1	$f5,32($a4)
.L0d9cee80:
    # Line 125
    beq	$a0,$a2,.L0d9ceed4
    li	$a3,8195
    beq	$a0,$a3,.L0d9ceed8
    # Line 126
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 130
    b	.L0d9cee9c
    # Line 129
    sw	$a1,0($a4)
.L0d9cee98:
    # Line 122
    sw	$a1,0($a4)
.L0d9cee9c:
    # Line 135
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    lw	$a4,26980($a0)
    ori	$a4,$a4,0x100
    sw	$a4,26980($a0)
    li	$a1,2
    b	.L0d9ceda0
    sw	$a1,4120($zero)
.L0d9ceebc:
    # Line 106
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9cedd4
    ld	$ra,48($sp)
.L0d9ceed4:
    # Line 126
    # lw $t9, -26792($gp) # &__glSetError
.L0d9ceed8:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cedd4
    ld	$ra,48($sp)
.end __glOdyim_TexGendv

# Function: __glOdyim_TexGend
# Declared: Line 161 (Source lines: 162-172)
# Address: 0x0d9ceef0 - 0x0d9cef44 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_TexGend
.ent __glOdyim_TexGend
__glOdyim_TexGend:
    # Line 162
    addiu	$sp,$sp,-48
    sdc1	$f14,32($sp)
    # Line 164
    li	$at,9472
    # Line 162
    lui	$v0,0x13
    sd	$ra,8($sp)
    addiu	$v0,$v0,-26976
    sd	$gp,0($sp)
    # Line 164
    beq	$a1,$at,.L0d9cef30
    # Line 162
    addu	$gp,$t9,$v0
    # Line 169
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9cef24:
    # Line 172
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cef30:
    # Line 166
    # lw $t9, -30672($gp) # &__glOdyim_TexGendv
    bal __glOdyim_TexGendv
    addiu	$a2,$sp,32
    b	.L0d9cef24
    ld	$ra,8($sp)
.end __glOdyim_TexGend

# Function: __glOdyim_TexGeniv
# Declared: Line 174 (Source lines: 175-232)
# Address: 0x0d9cef50 - 0x0d9cf1d4 (Size: 644 bytes, Frame: 192)
.globl __glOdyim_TexGeniv
.ent __glOdyim_TexGeniv
__glOdyim_TexGeniv:
    # Line 175
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 179
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 175
    lui	$v1,0x13
    sd	$ra,48($sp)
    addiu	$v1,$v1,-27072
    sd	$gp,32($sp)
    # Line 179
    beq	$at,$v0,.L0d9cf1a4
    # Line 175
    addu	$gp,$t9,$v1
    # Line 181
    li	$a3,8192
    beq	$a0,$a3,.L0d9cf0c0
    # Line 182
    addiu	$a4,$s0,1984
    # Line 181
    li	$a4,8193
    beq	$a0,$a4,.L0d9cf0c8
    li	$a5,8194
    beq	$a0,$a5,.L0d9cf10c
    # Line 184
    addiu	$a4,$s0,2232
    # Line 181
    li	$a6,8195
    beq	$a0,$a6,.L0d9cefbc
    # Line 187
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cf0b4
    ld	$ra,48($sp)
.L0d9cefbc:
    # Line 185
    addiu	$a4,$s0,2356
.L0d9cefc0:
    # Line 190
    li	$a7,9472
.L0d9cefc4:
    beq	$a1,$a7,.L0d9cf0d0
    li	$t0,9473
    beq	$a1,$t0,.L0d9cf114
    li	$t1,9474
    beq	$a1,$t1,.L0d9ceff0
    # Line 226
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cf0b4
    ld	$ra,48($sp)
.L0d9ceff0:
    # Line 217
    lw	$ra,0($a2)
    mtc1	$ra,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lw	$t9,4($a2)
    mtc1	$t9,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lw	$t8,8($a2)
    mtc1	$t8,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lw	$t3,12($a2)
    mtc1	$t3,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 218
    lw	$a5,29716($s0)
    lbu	$t2,268($a5)
    beqz	$t2,.L0d9cf060
    nop
    # Line 220
    lw	$t9,11956($s0)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a4,40($sp)
    ld	$a5,16($sp)
.L0d9cf060:
    # Line 222
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
    # Line 224
    lui	$a0,0x1
    li	$a1,2
    addu	$a0,$s0,$a0
.L0d9cf080:
    # Line 232
    ld	$gp,32($sp)
    # Line 229
    sw	$a1,4120($zero)
    lw	$a3,11812($s0)
    ld	$ra,48($sp)
    ori	$a3,$a3,0x1
    sw	$a3,11812($s0)
    # Line 231
    lw	$a2,26980($a0)
    # Line 232
    ld	$s0,24($sp)
    # Line 231
    ori	$a2,$a2,0x20
    sw	$a2,26980($a0)
    # Line 232
    addiu	$sp,$sp,64
    jr	$ra
    # Line 231
    sw	$a1,4120($zero)
.L0d9cf0b4:
    # Line 232
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9cf0c0:
    b	.L0d9cefc4
    # Line 190
    li	$a7,9472
.L0d9cf0c8:
    # Line 183
    b	.L0d9cefc0
    addiu	$a4,$s0,2108
.L0d9cf0d0:
    # Line 192
    lw	$a1,0($a2)
    li	$a5,9216
    li	$a7,9218
    li	$a6,9217
    beq	$a1,$a5,.L0d9cf180
    # Line 198
    li	$t0,8195
    # Line 192
    beq	$a1,$a6,.L0d9cf180
    nop
    beq	$a1,$a7,.L0d9cf164
    # Line 205
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cf0b4
    ld	$ra,48($sp)
.L0d9cf10c:
    # Line 184
    b	.L0d9cefc4
    # Line 190
    li	$a7,9472
.L0d9cf114:
    # Line 211
    lw	$a6,0($a2)
    mtc1	$a6,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,20($a4)
    # Line 212
    lw	$a5,4($a2)
    mtc1	$a5,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,24($a4)
    # Line 213
    lw	$a3,8($a2)
    mtc1	$a3,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,28($a4)
    # Line 214
    lw	$a1,12($a2)
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    # Line 215
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    li	$a1,2
    b	.L0d9cf080
    # Line 214
    swc1	$f4,32($a4)
.L0d9cf164:
    # Line 198
    li	$a7,8194
    beq	$a0,$a7,.L0d9cf1c0
    # Line 199
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 198
    beq	$a0,$t0,.L0d9cf1c0
    # Line 199
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 203
    b	.L0d9cf184
    # Line 202
    sw	$a1,0($a4)
.L0d9cf180:
    # Line 195
    sw	$a1,0($a4)
.L0d9cf184:
    # Line 208
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    lw	$t1,26980($a0)
    ori	$t1,$t1,0x100
    sw	$t1,26980($a0)
    li	$a1,2
    b	.L0d9cf080
    sw	$a1,4120($zero)
.L0d9cf1a4:
    # Line 179
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9cf0b4
    ld	$ra,48($sp)
    # Line 199
    # lw $t9, -26792($gp) # &__glSetError
.L0d9cf1c0:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cf0b4
    ld	$ra,48($sp)
.end __glOdyim_TexGeniv

# Function: __glOdyim_TexGeni
# Declared: Line 234 (Source lines: 235-245)
# Address: 0x0d9cf1e0 - 0x0d9cf234 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_TexGeni
.ent __glOdyim_TexGeni
__glOdyim_TexGeni:
    # Line 235
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 237
    li	$at,9472
    # Line 235
    lui	$v0,0x13
    sd	$ra,8($sp)
    addiu	$v0,$v0,-27728
    sd	$gp,0($sp)
    # Line 237
    beq	$a1,$at,.L0d9cf220
    # Line 235
    addu	$gp,$t9,$v0
    # Line 242
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9cf214:
    # Line 245
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cf220:
    # Line 239
    # lw $t9, -30664($gp) # &__glOdyim_TexGeniv
    bal __glOdyim_TexGeniv
    addiu	$a2,$sp,36
    b	.L0d9cf214
    ld	$ra,8($sp)
.end __glOdyim_TexGeni

# Function: updateTexGenCoord
# Declared: Line 249 (Source lines: 251-313)
# Address: 0x0d9cf240 - 0x0d9cf3d8 (Size: 408 bytes, Frame: 16)
.ent updateTexGenCoord
updateTexGenCoord:
    # Line 251
    addiu	$sp,$sp,-16
    # Line 257
    lw	$a4,0($a1)
    # Line 305
    lui	$a6,0x3100
    # Line 257
    li	$at,9216
    li	$v0,9217
    # Line 288
    sll	$a3,$a2,0x2
    # Line 257
    beq	$a4,$at,.L0d9cf270
    # Line 288
    addu	$a3,$a0,$a3
    # Line 257
    bne	$a4,$v0,.L0d9cf3d0
    nop
    # Line 282
    b	.L0d9cf348
    # Line 281
    addiu	$a4,$a1,20
.L0d9cf270:
    # Line 266
    lwc1	$f16,4($a1)
    # Line 260
    lw	$v1,29716($a0)
    # Line 266
    lwc1	$f19,8($a1)
    lwc1	$f15,4($v1)
    lwc1	$f17,0($v1)
    lwc1	$f18,8($v1)
    mul.s	$f15,$f15,$f19
    lwc1	$f19,12($a1)
    madd.s	$f15,$f15,$f16,$f17
    lwc1	$f17,16($a1)
    lwc1	$f16,12($v1)
    madd.s	$f15,$f15,$f18,$f19
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($sp)
    # Line 268
    lwc1	$f12,16($v1)
    lwc1	$f14,20($v1)
    lwc1	$f10,8($a1)
    lwc1	$f11,4($a1)
    lwc1	$f13,24($v1)
    mul.s	$f10,$f10,$f14
    lwc1	$f14,12($a1)
    madd.s	$f10,$f10,$f11,$f12
    lwc1	$f12,16($a1)
    lwc1	$f11,28($v1)
    madd.s	$f10,$f10,$f13,$f14
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,4($sp)
    # Line 270
    lwc1	$f7,32($v1)
    lwc1	$f9,36($v1)
    lwc1	$f5,8($a1)
    lwc1	$f6,4($a1)
    lwc1	$f8,40($v1)
    mul.s	$f5,$f5,$f9
    lwc1	$f9,12($a1)
    madd.s	$f5,$f5,$f6,$f7
    lwc1	$f7,16($a1)
    lwc1	$f6,44($v1)
    madd.s	$f5,$f5,$f8,$f9
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,8($sp)
    # Line 272
    lwc1	$f2,48($v1)
    lwc1	$f4,52($v1)
    lwc1	$f0,8($a1)
    lwc1	$f1,4($a1)
    lwc1	$f3,56($v1)
    mul.s	$f0,$f0,$f4
    lwc1	$f4,12($a1)
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f2,16($a1)
    lwc1	$f1,60($v1)
    madd.s	$f0,$f0,$f3,$f4
    madd.s	$f0,$f0,$f1,$f2
    # Line 274
    addiu	$a4,$sp,0
    # Line 272
    swc1	$f0,12($sp)
.L0d9cf348:
    # Line 288
    lwc1	$f1,0($a4)
    lui	$a1,0x1
    addu	$a3,$a1,$a3
    swc1	$f1,-26572($a3)
    # Line 289
    lwc1	$f0,4($a4)
    swc1	$f0,-26568($a3)
    # Line 290
    lwc1	$f31,8($a4)
    swc1	$f31,-26564($a3)
    # Line 291
    lwc1	$f29,12($a4)
    # Line 297
    addu	$a7,$a1,$a0
    # Line 291
    swc1	$f29,-26560($a3)
    # Line 297
    sw	$a2,-24040($a7)
    # Line 305
    lw	$a5,-24040($a7)
    lw	$a7,-24040($a7)
    srl	$a7,$a7,0xa
    andi	$a5,$a5,0x3ff
    sll	$a7,$a7,0x17
    ori	$a6,$a6,0x8000
    or	$a5,$a5,$a7
    # Line 307
    lui	$a4,0x9080
    # Line 305
    or	$a5,$a5,$a6
    sw	$a5,0($a1)
    # Line 307
    ori	$a4,$a4,0x91bb
    sw	$a4,0($a1)
    # Line 308
    lwc1	$f27,-26572($a3)
    swc1	$f27,0($a1)
    # Line 309
    lwc1	$f25,-26568($a3)
    swc1	$f25,0($a1)
    # Line 310
    lwc1	$f23,-26564($a3)
    swc1	$f23,0($a1)
    # Line 311
    lwc1	$f21,-26560($a3)
    # Line 313
    addiu	$sp,$sp,16
    jr	$ra
    # Line 311
    swc1	$f21,0($a1)
.L0d9cf3d0:
    # Line 313
    jr	$ra
    addiu	$sp,$sp,16
.end updateTexGenCoord

# Function: __glOdysseyValidateTexGen
# Declared: Line 316 (Source lines: 317-353)
# Address: 0x0d9cf3e0 - 0x0d9cf524 (Size: 324 bytes, Frame: 192)
.globl __glOdysseyValidateTexGen
.ent __glOdysseyValidateTexGen
__glOdysseyValidateTexGen:
    # Line 317
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    sd	$ra,48($sp)
    sd	$gp,32($sp)
    sd	$s0,0($sp)
    # Line 320
    lui	$a4,0x1
    # Line 324
    lw	$at,1792($a0)
    # Line 320
    addu	$v1,$a4,$a0
    sd	$v1,8($sp)
    # Line 317
    lui	$v0,0x13
    # Line 324
    sd	$at,24($sp)
    dsll32	$at,$at,0xd
    # Line 317
    move	$s0,$a0
    addiu	$v0,$v0,-28240
    # Line 320
    lw	$v1,-24040($v1)
    # Line 317
    addu	$gp,$t9,$v0
    # Line 324
    bgez	$at,.L0d9cf43c
    # Line 320
    sd	$v1,16($sp)
    # Line 328
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-3520
    li	$a2,256
    bal __glOdyim_TexGeni
    addiu	$a1,$a0,1984
.L0d9cf43c:
    ld	$t8,24($sp)
    la	$s1,sub_0d9d0000
    dsll32	$t8,$t8,0xc
    bgez	$t8,.L0d9cf464
    addiu	$s1,$s1,-3520
    # Line 330
    move	$t9,$s1
    move	$a0,$s0
    li	$a2,260
    bal __glOdyim_TexGeni
    addiu	$a1,$s0,2108
.L0d9cf464:
    ld	$t9,24($sp)
    dsll32	$t9,$t9,0xb
    bgez	$t9,.L0d9cf48c
    # Line 332
    ld	$ra,24($sp)
    move	$t9,$s1
    move	$a0,$s0
    li	$a2,264
    bal __glOdyim_TexGeni
    addiu	$a1,$s0,2232
    ld	$ra,24($sp)
.L0d9cf48c:
    dsll32	$ra,$ra,0xa
    bgez	$ra,.L0d9cf4b0
    # Line 334
    ld	$at,8($sp)
    move	$t9,$s1
    move	$a0,$s0
    li	$a2,268
    bal __glOdyim_TexGeni
    addiu	$a1,$s0,2356
    ld	$at,8($sp)
.L0d9cf4b0:
    ld	$v0,16($sp)
    lw	$at,-24040($at)
    ld	$s1,40($sp)
    ld	$s0,0($sp)
    # Line 349
    lui	$v1,0x3100
    ld	$ra,48($sp)
    # Line 334
    beq	$at,$v0,.L0d9cf518
    # Line 349
    ori	$v1,$v1,0x8000
    # Line 340
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    sw	$a1,-24040($a0)
    # Line 349
    lw	$v0,-24040($a0)
    lw	$a0,-24040($a0)
    move	$s1,$s1
    move	$s0,$s0
    srl	$a0,$a0,0xa
    andi	$v0,$v0,0x3ff
    sll	$a0,$a0,0x17
    move	$ra,$ra
    or	$v0,$v0,$a0
    # Line 353
    ld	$gp,32($sp)
    # Line 349
    or	$v0,$v0,$v1
    lui	$v1,0x1
    # Line 353
    addiu	$sp,$sp,64
    jr	$ra
    # Line 349
    sw	$v0,0($v1)
.L0d9cf518:
    # Line 353
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdysseyValidateTexGen

