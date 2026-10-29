# Source: ../ODYSSEY/ody_get.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_get.c
# Total Functions: 25

.text

# Function: GetTexDim
# Declared: Line 53 (Source lines: 54-70)
# Address: 0x0d9852e0 - 0x0d985374 (Size: 148 bytes, Frame: 0)
.ent GetTexDim
GetTexDim:
    # Line 54
    li	$a2,0x8064
    sltiu	$a4,$a0,3554
    sltu	$at,$a0,$a2
    li	$a6,3552
    li	$a5,0x8063
    bnez	$at,.L0d985334
    sltiu	$a3,$a0,3553
    li	$a7,0x806f
    sltu	$v0,$a2,$a0
    li	$a2,0x8070
    sltu	$a1,$a2,$a0
    beqz	$v0,.L0d98532c
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0d985364
    li	$a2,0x8095
    beqz	$a1,.L0d98536c
    nop
    bne	$a0,$a2,.L0d98535c
    nop
.L0d98532c:
    # Line 70
    jr	$ra
    # Line 62
    li	$v0,2
.L0d985334:
    # Line 54
    bnez	$a3,.L0d985354
    nop
    bnez	$a4,.L0d98532c
    nop
    bne	$a0,$a5,.L0d98535c
    nop
.L0d98534c:
    # Line 70
    jr	$ra
    # Line 57
    li	$v0,1
.L0d985354:
    # Line 54
    beq	$a0,$a6,.L0d98534c
    nop
.L0d98535c:
    # Line 70
    jr	$ra
    move	$v0,$zero
.L0d985364:
    # Line 54
    bne	$a0,$a7,.L0d98535c
    nop
.L0d98536c:
    # Line 70
    jr	$ra
    # Line 66
    li	$v0,3
.end GetTexDim

# Function: __glOdyim_GetTexLevelParameterfv
# Declared: Line 75 (Source lines: 76-140)
# Address: 0x0d985380 - 0x0d9856d0 (Size: 848 bytes, Frame: 192)
.globl __glOdyim_GetTexLevelParameterfv
.ent __glOdyim_GetTexLevelParameterfv
__glOdyim_GetTexLevelParameterfv:
    # Line 76
    addiu	$sp,$sp,-64
    sd	$a3,0($sp)
    sd	$s2,24($sp)
    # Line 80
    lw	$s2,4112($zero)
    # Line 76
    sd	$s1,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    move	$s1,$a1
    # Line 80
    lw	$at,4120($zero)
    # Line 76
    sd	$s3,8($sp)
    # Line 80
    li	$v0,1
    # Line 76
    lui	$v1,0x17
    move	$s3,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,12816
    sd	$gp,40($sp)
    # Line 80
    beq	$at,$v0,.L0d9855f8
    # Line 76
    addu	$gp,$t9,$v1
    # Line 82
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s2
    jal	__glOdysseyGetCurrentTexture
    move	$a1,$s3
    beqz	$v0,.L0d98560c
    # Line 84
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 88
    bltz	$s1,.L0d9854f4
    # Line 89
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 88
    lw	$a0,3732($s2)
    slt	$a0,$s1,$a0
    beqz	$a0,.L0d9854f4
    # Line 89
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 94
    # lw $t9, -32732($gp) # &sub_0d980000
    # Line 92
    sll	$s2,$s1,0x4
    addu	$s2,$s2,$s1
    # Line 94
    addiu	$t9,$t9,21216
    # Line 92
    sll	$s2,$s2,0x2
    # Line 94
    move	$a0,$s3
    # Line 92
    addu	$s2,$v0,$s2
    # Line 94
    bal __glOdyim_LightEnviSGIX
    # Line 92
    addiu	$s2,$s2,1364
    # Line 96
    li	$a0,0x805d
    sltu	$t8,$s0,$a0
    bnez	$t8,.L0d98548c
    sltu	$t9,$a0,$s0
    beqz	$t9,.L0d9855c4
    li	$a0,0x8060
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d985558
    sltu	$at,$a0,$s0
    beqz	$at,.L0d9856a4
    li	$ra,0x8061
    li	$a0,0x8071
    sltu	$v1,$s0,$a0
    slti	$a2,$v0,3
    bnez	$v1,.L0d985654
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0d9855b4
    # Line 139
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 96
    beqz	$a2,.L0d9856bc
    lw	$a0,36($s2)
    # Line 109
    lw	$a4,40($s2)
    addu	$a4,$a4,$a4
    subu	$a4,$a0,$a4
    mtc1	$a4,$f0
    cvt.s.w	$f0,$f0
    ld	$a3,0($sp)
    b	.L0d9854fc
    swc1	$f0,0($a3)
.L0d98548c:
    # Line 96
    sltiu	$a5,$s0,4099
    bnez	$a5,.L0d98551c
    sltiu	$t3,$s0,4097
    sltiu	$a6,$s0,4100
    # Line 119
    ld	$t8,0($sp)
    # Line 96
    bnez	$a6,.L0d985674
    li	$t3,4101
    ld	$ra,48($sp)
    li	$v0,0x805c
    # Line 121
    ld	$t1,0($sp)
    # Line 96
    sltu	$a7,$s0,$v0
    # Line 140
    ld	$s3,8($sp)
    ld	$s1,32($sp)
    # Line 96
    bnez	$a7,.L0d985638
    sltu	$t0,$v0,$s0
    bnez	$t0,.L0d9855b0
    # Line 140
    ld	$s0,16($sp)
    # Line 121
    lw	$t2,44($s2)
    mtc1	$t2,$f1
    cvt.s.w	$f1,$f1
    # Line 140
    ld	$gp,40($sp)
    ld	$s2,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 121
    swc1	$f1,0($t1)
    # Line 89
    # lw $t9, -26792($gp) # &__glSetError
.L0d9854f4:
    jal	__glSetError
    li	$a0,1281
.L0d9854fc:
    ld	$s3,8($sp)
.L0d985500:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s1,32($sp)
    # Line 140
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98551c:
    # Line 96
    bnez	$t3,.L0d985590
    slti	$t9,$v0,2
    sltiu	$t8,$s0,4098
    # Line 102
    ld	$ra,0($sp)
    # Line 96
    beqz	$t8,.L0d9855b0
    ld	$a1,0($sp)
    # Line 102
    lw	$at,40($s2)
    # Line 96
    lw	$a0,32($s2)
    beqz	$t9,.L0d985694
    # Line 102
    addu	$at,$at,$at
    subu	$at,$a0,$at
    mtc1	$at,$f2
    cvt.s.w	$f2,$f2
    b	.L0d9854fc
    swc1	$f2,0($ra)
.L0d985558:
    # Line 96
    li	$v0,0x805f
    sltu	$v1,$s0,$v0
    li	$t0,0x805e
    # Line 131
    ld	$a1,0($sp)
    # Line 128
    ld	$t1,0($sp)
    # Line 96
    bnez	$v1,.L0d98561c
    sltu	$a0,$v0,$s0
    bnez	$a0,.L0d9855b4
    # Line 139
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 130
    lw	$a2,56($s2)
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    # Line 131
    b	.L0d9854fc
    # Line 130
    swc1	$f3,0($a1)
.L0d985590:
    # Line 96
    li	$a3,4096
    bne	$s0,$a3,.L0d9855b0
    ld	$a4,0($sp)
    # Line 98
    lw	$a5,28($s2)
    mtc1	$a5,$f4
    cvt.s.w	$f4,$f4
    b	.L0d9854fc
    swc1	$f4,0($a4)
.L0d9855b0:
    # Line 139
    # lw $t9, -26792($gp) # &__glSetError
.L0d9855b4:
    jal	__glSetError
    li	$a0,1281
    b	.L0d985500
    ld	$s3,8($sp)
.L0d9855c4:
    # Line 124
    lw	$a7,48($s2)
    # Line 140
    ld	$gp,40($sp)
    ld	$s0,16($sp)
    # Line 124
    mtc1	$a7,$f5
    # Line 140
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    ld	$ra,48($sp)
    # Line 124
    cvt.s.w	$f5,$f5
    ld	$a6,0($sp)
    # Line 140
    ld	$s3,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 124
    swc1	$f5,0($a6)
.L0d9855f8:
    # Line 80
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d985500
    ld	$s3,8($sp)
.L0d98560c:
    # Line 84
    jalr	$t9
    li	$a0,1280
    b	.L0d985500
    ld	$s3,8($sp)
.L0d98561c:
    # Line 96
    bne	$s0,$t0,.L0d9855b4
    # Line 139
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 127
    lw	$t2,52($s2)
    mtc1	$t2,$f6
    cvt.s.w	$f6,$f6
    # Line 128
    b	.L0d9854fc
    # Line 127
    swc1	$f6,0($t1)
.L0d985638:
    # Line 96
    bne	$s0,$t3,.L0d9855b4
    # Line 139
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 118
    lw	$t9,40($s2)
    mtc1	$t9,$f7
    cvt.s.w	$f7,$f7
    # Line 119
    b	.L0d9854fc
    # Line 118
    swc1	$f7,0($t8)
.L0d985654:
    # Line 96
    bne	$s0,$ra,.L0d9855b4
    # Line 139
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 136
    lw	$v0,64($s2)
    mtc1	$v0,$f8
    cvt.s.w	$f8,$f8
    # Line 137
    ld	$at,0($sp)
    b	.L0d9854fc
    # Line 136
    swc1	$f8,0($at)
.L0d985674:
    # Line 115
    lw	$a0,24($s2)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f9
    cvt.s.l	$f9,$f9
    # Line 116
    ld	$v1,0($sp)
    b	.L0d9854fc
    # Line 115
    swc1	$f9,0($v1)
.L0d985694:
    # Line 104
    mtc1	$a0,$f10
    cvt.s.w	$f10,$f10
    b	.L0d9854fc
    swc1	$f10,0($a1)
.L0d9856a4:
    # Line 133
    lw	$a3,60($s2)
    mtc1	$a3,$f11
    cvt.s.w	$f11,$f11
    # Line 134
    ld	$a2,0($sp)
    b	.L0d9854fc
    # Line 133
    swc1	$f11,0($a2)
.L0d9856bc:
    # Line 111
    mtc1	$a0,$f12
    cvt.s.w	$f12,$f12
    ld	$a4,0($sp)
    b	.L0d9854fc
    swc1	$f12,0($a4)
.end __glOdyim_GetTexLevelParameterfv

# Function: __glOdyim_GetTexLevelParameteriv
# Declared: Line 145 (Source lines: 146-210)
# Address: 0x0d9856d0 - 0x0d9859ac (Size: 732 bytes, Frame: 192)
.globl __glOdyim_GetTexLevelParameteriv
.ent __glOdyim_GetTexLevelParameteriv
__glOdyim_GetTexLevelParameteriv:
    # Line 146
    addiu	$sp,$sp,-64
    sd	$a3,0($sp)
    sd	$s2,24($sp)
    # Line 150
    lw	$s2,4112($zero)
    # Line 146
    sd	$s1,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    move	$s1,$a1
    # Line 150
    lw	$at,4120($zero)
    # Line 146
    sd	$s3,8($sp)
    # Line 150
    li	$v0,1
    # Line 146
    lui	$v1,0x17
    move	$s3,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,11968
    sd	$gp,40($sp)
    # Line 150
    beq	$at,$v0,.L0d985918
    # Line 146
    addu	$gp,$t9,$v1
    # Line 152
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s2
    jal	__glOdysseyGetCurrentTexture
    move	$a1,$s3
    beqz	$v0,.L0d98592c
    # Line 154
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 158
    bltz	$s1,.L0d985830
    # Line 159
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 158
    lw	$a0,3732($s2)
    slt	$a0,$s1,$a0
    beqz	$a0,.L0d985830
    # Line 159
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 164
    # lw $t9, -32732($gp) # &sub_0d980000
    # Line 162
    sll	$s2,$s1,0x4
    addu	$s2,$s2,$s1
    # Line 164
    addiu	$t9,$t9,21216
    # Line 162
    sll	$s2,$s2,0x2
    # Line 164
    move	$a0,$s3
    # Line 162
    addu	$s2,$v0,$s2
    # Line 164
    bal __glOdyim_LightEnviSGIX
    # Line 162
    addiu	$s2,$s2,1364
    # Line 166
    li	$a0,0x805d
    sltu	$t8,$s0,$a0
    bnez	$t8,.L0d9857d8
    sltiu	$a4,$s0,4099
    sltu	$t9,$a0,$s0
    beqz	$t9,.L0d9858ec
    li	$a0,0x8060
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d985890
    sltu	$at,$a0,$s0
    beqz	$at,.L0d985990
    li	$t3,0x8061
    li	$a0,0x8071
    sltu	$v1,$s0,$a0
    slti	$a2,$v0,3
    bnez	$v1,.L0d985964
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0d9858dc
    # Line 209
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 166
    beqz	$a2,.L0d9859a0
    lw	$a0,36($s2)
    # Line 179
    lw	$a3,40($s2)
    ld	$a4,0($sp)
    addu	$a3,$a3,$a3
    subu	$a3,$a0,$a3
    b	.L0d985838
    sw	$a3,0($a4)
.L0d9857d8:
    # Line 166
    bnez	$a4,.L0d985858
    sltiu	$a5,$s0,4100
    # Line 189
    ld	$t2,0($sp)
    # Line 166
    bnez	$a5,.L0d985978
    li	$t0,4101
    ld	$ra,48($sp)
    li	$v0,0x805c
    # Line 191
    ld	$t1,0($sp)
    # Line 166
    sltu	$a6,$s0,$v0
    # Line 210
    ld	$s3,8($sp)
    ld	$s1,32($sp)
    # Line 166
    bnez	$a6,.L0d985950
    sltu	$a7,$v0,$s0
    bnez	$a7,.L0d9858d8
    # Line 210
    ld	$s0,16($sp)
    ld	$gp,40($sp)
    # Line 191
    lw	$t0,44($s2)
    # Line 210
    ld	$s2,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 191
    sw	$t0,0($t1)
    # Line 159
    # lw $t9, -26792($gp) # &__glSetError
.L0d985830:
    jal	__glSetError
    li	$a0,1281
.L0d985838:
    ld	$s3,8($sp)
.L0d98583c:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s1,32($sp)
    # Line 210
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d985858:
    # Line 166
    sltiu	$t2,$s0,4097
    slti	$t8,$v0,2
    bnez	$t2,.L0d9858c0
    ld	$v0,0($sp)
    sltiu	$t3,$s0,4098
    beqz	$t3,.L0d9858d8
    # Line 172
    ld	$ra,0($sp)
    lw	$t9,40($s2)
    # Line 166
    lw	$a0,32($s2)
    beqz	$t8,.L0d985988
    # Line 172
    addu	$t9,$t9,$t9
    subu	$t9,$a0,$t9
    b	.L0d985838
    sw	$t9,0($ra)
.L0d985890:
    # Line 166
    li	$v0,0x805f
    sltu	$ra,$s0,$v0
    li	$a5,0x805e
    # Line 201
    ld	$v1,0($sp)
    # Line 198
    ld	$a7,0($sp)
    # Line 166
    bnez	$ra,.L0d98593c
    sltu	$at,$v0,$s0
    bnez	$at,.L0d9858dc
    # Line 209
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 200
    lw	$v0,56($s2)
    # Line 201
    b	.L0d985838
    # Line 200
    sw	$v0,0($v1)
.L0d9858c0:
    # Line 166
    li	$a0,4096
    bne	$s0,$a0,.L0d9858d8
    ld	$a2,0($sp)
    # Line 168
    lw	$a1,28($s2)
    b	.L0d985838
    sw	$a1,0($a2)
.L0d9858d8:
    # Line 209
    # lw $t9, -26792($gp) # &__glSetError
.L0d9858dc:
    jal	__glSetError
    li	$a0,1281
    b	.L0d98583c
    ld	$s3,8($sp)
.L0d9858ec:
    # Line 210
    ld	$gp,40($sp)
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    # Line 194
    lw	$a3,48($s2)
    # Line 210
    ld	$s2,24($sp)
    ld	$ra,48($sp)
    # Line 194
    ld	$a4,0($sp)
    # Line 210
    ld	$s3,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 194
    sw	$a3,0($a4)
.L0d985918:
    # Line 150
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98583c
    ld	$s3,8($sp)
.L0d98592c:
    # Line 154
    jalr	$t9
    li	$a0,1280
    b	.L0d98583c
    ld	$s3,8($sp)
.L0d98593c:
    # Line 166
    bne	$s0,$a5,.L0d9858dc
    # Line 209
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 197
    lw	$a6,52($s2)
    # Line 198
    b	.L0d985838
    # Line 197
    sw	$a6,0($a7)
.L0d985950:
    # Line 166
    bne	$s0,$t0,.L0d9858dc
    # Line 209
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 188
    lw	$t1,40($s2)
    # Line 189
    b	.L0d985838
    # Line 188
    sw	$t1,0($t2)
.L0d985964:
    # Line 166
    bne	$s0,$t3,.L0d9858d8
    # Line 207
    ld	$t9,0($sp)
    # Line 206
    lw	$t8,64($s2)
    # Line 207
    b	.L0d985838
    # Line 206
    sw	$t8,0($t9)
.L0d985978:
    # Line 186
    ld	$at,0($sp)
    # Line 185
    lw	$ra,24($s2)
    # Line 186
    b	.L0d985838
    # Line 185
    sw	$ra,0($at)
.L0d985988:
    b	.L0d985838
    # Line 174
    sw	$a0,0($v0)
.L0d985990:
    # Line 204
    ld	$a0,0($sp)
    # Line 203
    lw	$v1,60($s2)
    # Line 204
    b	.L0d985838
    # Line 203
    sw	$v1,0($a0)
.L0d9859a0:
    ld	$a1,0($sp)
    b	.L0d985838
    # Line 181
    sw	$a0,0($a1)
.end __glOdyim_GetTexLevelParameteriv

# Function: __glOdyim_GetClipPlane
# Declared: Line 215 (Source lines: 216-233)
# Address: 0x0d9859b0 - 0x0d985a98 (Size: 232 bytes, Frame: 16)
.globl __glOdyim_GetClipPlane
.ent __glOdyim_GetClipPlane
__glOdyim_GetClipPlane:
    # Line 229
    sll	$a5,$a0,0x4
    # Line 216
    addiu	$sp,$sp,-16
    # Line 218
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 216
    lui	$v1,0x17
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,11232
    sd	$gp,0($sp)
    # Line 218
    beq	$at,$v0,.L0d985a84
    # Line 216
    addu	$gp,$t9,$v1
    # Line 224
    addiu	$a4,$a0,-12288
    bltz	$a4,.L0d985a74
    # Line 225
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 224
    slti	$a2,$a0,12294
    beqz	$a2,.L0d985a70
    # Line 229
    lui	$a4,0xfffd
    lw	$t0,1748($a3)
    addu	$t0,$t0,$a5
    addu	$t0,$a4,$t0
    lwc1	$f3,0($t0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a1)
    # Line 230
    lw	$a7,1748($a3)
    addu	$a7,$a7,$a5
    addu	$a7,$a4,$a7
    lwc1	$f2,4($a7)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a1)
    # Line 231
    lw	$a6,1748($a3)
    addu	$a6,$a6,$a5
    addu	$a6,$a4,$a6
    lwc1	$f1,8($a6)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a1)
    # Line 232
    lw	$a3,1748($a3)
    addu	$a3,$a3,$a5
    addu	$a3,$a4,$a3
    lwc1	$f0,12($a3)
    # Line 233
    ld	$gp,0($sp)
    # Line 232
    cvt.d.s	$f0,$f0
    # Line 233
    addiu	$sp,$sp,16
    jr	$ra
    # Line 232
    sdc1	$f0,24($a1)
.L0d985a64:
    # Line 233
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d985a70:
    # Line 225
    # lw $t9, -26792($gp) # &__glSetError
.L0d985a74:
    jal	__glSetError
    li	$a0,1280
    b	.L0d985a64
    ld	$ra,8($sp)
.L0d985a84:
    # Line 218
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d985a64
    ld	$ra,8($sp)
.end __glOdyim_GetClipPlane

# Function: __glOdyGetFromHardware
# Declared: Line 246 (Source lines: 253-351)
# Address: 0x0d985aa0 - 0x0d985b90 (Size: 240 bytes, Frame: 0)
.globl __glOdyGetFromHardware
.ent __glOdyGetFromHardware
__glOdyGetFromHardware:
    # Line 253
    lui	$t1,0x1
    addu	$a7,$t1,$a0
    # Line 256
    lw	$a6,27800($a7)
    # Line 255
    lhu	$a3,-22860($a7)
    # Line 267
    li	$a2,1216
    # Line 277
    li	$t9,1219
    # Line 254
    lw	$t0,27964($a7)
    # Line 265
    li	$t3,2
    # Line 253
    lw	$a4,27940($a7)
    # Line 255
    addiu	$a3,$a3,1
    # Line 265
    li	$t8,3
    # Line 255
    andi	$a3,$a3,0xffff
    sh	$a3,-22860($a7)
    # Line 256
    addu	$t2,$t0,$t0
    # Line 253
    addiu	$a5,$a4,124
    # Line 262
    lw	$a4,124($a4)
    xor	$t8,$a1,$t8
    # Line 256
    addu	$a6,$a6,$t2
    # Line 265
    beqz	$a1,.L0d985b0c
    # Line 262
    addiu	$a4,$a4,1
    # Line 265
    li	$t2,1
    beq	$a1,$t2,.L0d985b80
    # Line 274
    li	$a2,1218
    # Line 265
    beq	$a1,$t3,.L0d985b88
    nop
    li	$a2,1216
    movz	$a2,$t9,$t8
.L0d985b0c:
    # Line 328
    lui	$v0,0x1
.L0d985b10:
    # Line 282
    sw	$a2,0($t1)
    # Line 283
    sw	$a4,0($t1)
    # Line 328
    ori	$v0,$v0,0xa5a
    sw	$v0,0($t1)
    sw	$t0,0($t1)
    sw	$a3,0($t1)
    lw	$at,27756($a7)
    lw	$at,16388($at)
    # Line 339
    lw	$t9,0($a5)
    beq	$t9,$a4,.L0d985b78
    # Line 351
    move	$v0,$zero
    # Line 339
    lhu	$v1,0($a6)
    beq	$v1,$a3,.L0d985b78
    nop
.L0d985b48:
    # Line 341
    lw	$a0,0($a5)
    beq	$a0,$a4,.L0d985b78
    nop
    lhu	$a1,0($a6)
    beq	$a1,$a3,.L0d985b78
    nop
    lw	$a2,0($a5)
    beq	$a2,$a4,.L0d985b78
    nop
    lhu	$a7,0($a6)
    bne	$a7,$a3,.L0d985b48
    nop
.L0d985b78:
    # Line 351
    jr	$ra
    nop
.L0d985b80:
    # Line 271
    b	.L0d985b0c
    li	$a2,1217
.L0d985b88:
    # Line 274
    b	.L0d985b10
    # Line 328
    lui	$v0,0x1
.end __glOdyGetFromHardware

# Function: __glOdyDecodeShadowFormat
# Declared: Line 369 (Source lines: 370-690)
# Address: 0x0d985b90 - 0x0d9862fc (Size: 1900 bytes, Frame: 192)
.globl __glOdyDecodeShadowFormat
.ent __glOdyDecodeShadowFormat
__glOdyDecodeShadowFormat:
    # Line 370
    lui	$a6,0x17
    # Line 381
    lw	$t2,0($a0)
    # Line 370
    addiu	$sp,$sp,-64
    addiu	$a6,$a6,10752
    # Line 381
    addiu	$a7,$a0,4
    sd	$gp,40($sp)
    # Line 370
    addu	$gp,$t9,$a6
    move	$a3,$a2
    # Line 381
    andi	$t1,$t2,0x3f
    la	$a5,sub_0daf0000
    # Line 370
    move	$a4,$a1
    # Line 381
    sltiu	$at,$t1,59
    # Line 378
    lw	$t0,4112($zero)
    # Line 381
    sll	$a6,$t1,0x2
    addiu	$a5,$a5,-29456
    sd	$ra,48($sp)
    beqz	$at,.L0d985be4
    addu	$a5,$a5,$a6
    lw	$t3,0($a5)
    jr	$t3
    # Line 462
    lwc1	$f13,_lit_3f800000
.L0d985be4:
    # Line 606
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d985c10
    ld	$ra,48($sp)
.L0d985bf8:
    # Line 683
    lw	$a5,32($sp)
.L0d985bfc:
    # Line 690
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a0,$t0
    jal	__glConvertResult
    move	$a2,$a7
    ld	$ra,48($sp)
.L0d985c10:
    # Line 607
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d985c1c:
    # Line 532
    lw	$ra,4($a0)
    sll	$ra,$ra,0x2
    addu	$ra,$t0,$ra
    lwc1	$f2,3824($ra)
    swc1	$f2,16($sp)
    # Line 533
    lw	$t9,8($a0)
    sll	$t9,$t9,0x2
    addu	$t9,$t0,$t9
    lwc1	$f1,3824($t9)
    swc1	$f1,20($sp)
    # Line 534
    lw	$t8,12($a0)
    sll	$t8,$t8,0x2
    addu	$t8,$t0,$t8
    lwc1	$f0,3824($t8)
    lwc1	$f4,_lit_3f800000
    swc1	$f0,24($sp)
.L0d985c5c:
    # Line 578
    swc1	$f4,28($sp)
.L0d985c60:
    # Line 579
    addiu	$a7,$sp,16
.L0d985c64:
    # Line 584
    li	$a1,5
.L0d985c68:
    # Line 608
    la	$a0,sub_0daf0000
    sltiu	$a5,$t1,59
    addiu	$a0,$a0,-29220
    sll	$a2,$t1,0x2
    beqz	$a5,.L0d985bf8
    addu	$a0,$a0,$a2
    lw	$a2,0($a0)
    jr	$a2
    nop
.L0d985c8c:
    # Line 619
    b	.L0d985bfc
    # Line 618
    li	$a5,1
.L0d985c94:
    # Line 633
    b	.L0d985bfc
    # Line 632
    li	$a5,3
.L0d985c9c:
    # Line 683
    b	.L0d985bfc
    li	$a5,4
.L0d985ca4:
    # Line 400
    b	.L0d985c68
    li	$a1,3
.L0d985cac:
    # Line 404
    srl	$a0,$t2,0x18
    li	$a5,15
    andi	$a0,$a0,0x1f
    # Line 417
    addiu	$a7,$sp,0
    # Line 404
    beq	$a0,$a5,.L0d9862e8
    li	$a1,16
    beq	$a0,$a1,.L0d9862f4
    nop
.L0d985ccc:
    # Line 417
    b	.L0d985c68
    li	$a1,3
.L0d985cd4:
    # Line 487
    b	.L0d985c68
    move	$a1,$zero
.L0d985cdc:
    # Line 449
    b	.L0d985c68
    li	$a1,3
.L0d985ce4:
    # Line 477
    lwc1	$f6,4($a0)
    swc1	$f6,16($sp)
    # Line 478
    lwc1	$f5,8($a0)
    # Line 480
    lwc1	$f4,_lit_3f800000
    # Line 478
    swc1	$f5,20($sp)
    # Line 479
    lwc1	$f3,12($a0)
    # Line 483
    move	$a1,$zero
    # Line 480
    swc1	$f4,28($sp)
    # Line 483
    addiu	$a7,$sp,16
    b	.L0d985c68
    # Line 479
    swc1	$f3,24($sp)
.L0d985d10:
    # Line 439
    lw	$t2,4($a0)
    sw	$t2,0($sp)
    # Line 440
    lw	$a6,8($a0)
    sw	$a6,4($sp)
    # Line 441
    lw	$a2,12($a0)
    # Line 445
    li	$a1,3
    # Line 442
    li	$a5,1
    sw	$a5,12($sp)
    # Line 445
    addiu	$a7,$sp,0
    b	.L0d985c68
    # Line 441
    sw	$a2,8($sp)
.L0d985d3c:
    # Line 468
    lwc1	$f10,4($a0)
    # Line 471
    lwc1	$f9,_lit_3f800000
    # Line 468
    swc1	$f10,16($sp)
    # Line 470
    mtc1	$zero,$f8
    # Line 469
    lwc1	$f7,8($a0)
    # Line 471
    swc1	$f9,28($sp)
    # Line 474
    move	$a1,$zero
    # Line 470
    swc1	$f8,24($sp)
    # Line 474
    addiu	$a7,$sp,16
    b	.L0d985c68
    # Line 469
    swc1	$f7,20($sp)
.L0d985d68:
    # Line 430
    lw	$t9,4($a0)
    sw	$t9,0($sp)
    # Line 431
    lw	$t3,8($a0)
    # Line 433
    li	$t8,1
    sw	$t8,12($sp)
    # Line 436
    li	$a1,3
    # Line 432
    sw	$zero,8($sp)
    # Line 436
    addiu	$a7,$sp,0
    b	.L0d985c68
    # Line 431
    sw	$t3,4($sp)
.L0d985d90:
    # Line 460
    mtc1	$zero,$f12
    # Line 459
    lwc1	$f11,4($a0)
    # Line 462
    swc1	$f13,28($sp)
    # Line 461
    swc1	$f12,24($sp)
    # Line 465
    addiu	$a7,$sp,16
    # Line 460
    swc1	$f12,20($sp)
    # Line 465
    move	$a1,$zero
    b	.L0d985c68
    # Line 459
    swc1	$f11,16($sp)
.L0d985db4:
    # Line 421
    lw	$ra,4($a0)
    # Line 424
    li	$at,1
    sw	$at,12($sp)
    # Line 423
    sw	$zero,8($sp)
    # Line 427
    addiu	$a7,$sp,0
    # Line 422
    sw	$zero,4($sp)
    # Line 427
    li	$a1,3
    b	.L0d985c68
    # Line 421
    sw	$ra,0($sp)
.L0d985dd8:
    # Line 603
    b	.L0d985c68
    li	$a1,5
.L0d985de0:
    # Line 525
    lw	$a1,4($a0)
    mtc1	$a1,$f27
    cvt.s.w	$f27,$f27
    lwc1	$f17,_lit_40000000
    lwc1	$f15,_lit_3f800000
    madd.s	$f27,$f15,$f27,$f17
    lwc1	$f25,3568($t0)
    mul.s	$f25,$f25,$f27
    swc1	$f25,16($sp)
    # Line 526
    lw	$a0,8($a0)
    mtc1	$a0,$f23
    cvt.s.w	$f23,$f23
    madd.s	$f23,$f15,$f23,$f17
    lwc1	$f21,3568($t0)
    mul.s	$f21,$f21,$f23
    swc1	$f21,20($sp)
    # Line 527
    lw	$v1,8($a7)
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    madd.s	$f19,$f15,$f19,$f17
    lwc1	$f18,3568($t0)
    mul.s	$f18,$f18,$f19
    swc1	$f18,24($sp)
    # Line 528
    lw	$v0,12($a7)
    mtc1	$v0,$f16
    cvt.s.w	$f16,$f16
    madd.s	$f15,$f15,$f16,$f17
    lwc1	$f14,3568($t0)
    mul.s	$f14,$f14,$f15
    # Line 529
    b	.L0d985c60
    # Line 528
    swc1	$f14,28($sp)
.L0d985e5c:
    # Line 518
    lw	$t2,4($a0)
    sll	$t2,$t2,0x1
    addiu	$t2,$t2,1
    mtc1	$t2,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3560($t0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,16($sp)
    # Line 519
    lw	$a6,8($a0)
    sll	$a6,$a6,0x1
    addiu	$a6,$a6,1
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3560($t0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,20($sp)
    # Line 520
    lw	$a5,12($a0)
    sll	$a5,$a5,0x1
    addiu	$a5,$a5,1
    mtc1	$a5,$f31
    cvt.s.w	$f31,$f31
    lwc1	$f0,3560($t0)
    mul.s	$f31,$f31,$f0
    swc1	$f31,24($sp)
    # Line 521
    lw	$a2,16($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f29
    cvt.s.w	$f29,$f29
    lwc1	$f31,3560($t0)
    mul.s	$f29,$f29,$f31
    # Line 522
    b	.L0d985c60
    # Line 521
    swc1	$f29,28($sp)
.L0d985ee0:
    # Line 511
    lw	$ra,4($a0)
    sll	$ra,$ra,0x1
    addiu	$ra,$ra,1
    mtc1	$ra,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3552($t0)
    mul.s	$f5,$f5,$f6
    swc1	$f5,16($sp)
    # Line 512
    lw	$t9,8($a0)
    sll	$t9,$t9,0x1
    addiu	$t9,$t9,1
    mtc1	$t9,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3552($t0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,20($sp)
    # Line 513
    lw	$t8,12($a0)
    sll	$t8,$t8,0x1
    addiu	$t8,$t8,1
    mtc1	$t8,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3552($t0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($sp)
    # Line 514
    lw	$t3,16($a0)
    sll	$t3,$t3,0x1
    addiu	$t3,$t3,1
    mtc1	$t3,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3552($t0)
    mul.s	$f2,$f2,$f3
    # Line 515
    b	.L0d985c60
    # Line 514
    swc1	$f2,28($sp)
.L0d985f64:
    # Line 504
    lw	$a0,4($a0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f9
    cvt.s.l	$f9,$f9
    lwc1	$f10,3568($t0)
    mul.s	$f9,$f9,$f10
    swc1	$f9,16($sp)
    # Line 505
    lw	$v1,4($a7)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f8
    cvt.s.l	$f8,$f8
    lwc1	$f9,3568($t0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,20($sp)
    # Line 506
    lw	$v0,8($a7)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f7
    cvt.s.l	$f7,$f7
    lwc1	$f8,3568($t0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,24($sp)
    # Line 507
    lw	$at,12($a7)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    cvt.s.l	$f6,$f6
    lwc1	$f7,3568($t0)
    mul.s	$f6,$f6,$f7
    # Line 508
    b	.L0d985c60
    # Line 507
    swc1	$f6,28($sp)
.L0d985fe8:
    # Line 497
    lw	$a6,4($a0)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f13
    cvt.s.l	$f13,$f13
    lwc1	$f14,3560($t0)
    mul.s	$f13,$f13,$f14
    swc1	$f13,16($sp)
    # Line 498
    lw	$a5,8($a0)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f12
    cvt.s.l	$f12,$f12
    lwc1	$f13,3560($t0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,20($sp)
    # Line 499
    lw	$a2,12($a0)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f11
    cvt.s.l	$f11,$f11
    lwc1	$f12,3560($t0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,24($sp)
    # Line 500
    lw	$a1,16($a0)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f10
    cvt.s.l	$f10,$f10
    lwc1	$f11,3560($t0)
    mul.s	$f10,$f10,$f11
    # Line 501
    b	.L0d985c60
    # Line 500
    swc1	$f10,28($sp)
.L0d98606c:
    # Line 490
    lw	$t9,4($a0)
    sll	$t9,$t9,0x2
    addu	$t9,$t0,$t9
    lwc1	$f17,3824($t9)
    swc1	$f17,16($sp)
    # Line 491
    lw	$t8,8($a0)
    sll	$t8,$t8,0x2
    addu	$t8,$t0,$t8
    lwc1	$f16,3824($t8)
    swc1	$f16,20($sp)
    # Line 492
    lw	$t3,12($a0)
    sll	$t3,$t3,0x2
    addu	$t3,$t0,$t3
    lwc1	$f15,3824($t3)
    swc1	$f15,24($sp)
    # Line 493
    lw	$t2,16($a0)
    sll	$t2,$t2,0x2
    addu	$t2,$t0,$t2
    lwc1	$f14,3824($t2)
    # Line 494
    b	.L0d985c60
    # Line 493
    swc1	$f14,28($sp)
.L0d9860c0:
    # Line 573
    lwc1	$f21,4($a0)
    swc1	$f21,16($sp)
    # Line 574
    lwc1	$f19,8($a0)
    swc1	$f19,20($sp)
    # Line 575
    lwc1	$f18,12($a0)
    lwc1	$f4,_lit_3f800000
    b	.L0d985c5c
    swc1	$f18,24($sp)
.L0d9860e0:
    # Line 566
    lw	$v0,4($a0)
    mtc1	$v0,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f27,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f1,$f4,$f1,$f27
    lwc1	$f0,3568($t0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,16($sp)
    # Line 567
    lw	$at,8($a0)
    mtc1	$at,$f31
    cvt.s.w	$f31,$f31
    madd.s	$f31,$f4,$f31,$f27
    lwc1	$f29,3568($t0)
    mul.s	$f29,$f29,$f31
    swc1	$f29,20($sp)
    # Line 568
    lw	$ra,12($a0)
    mtc1	$ra,$f25
    cvt.s.w	$f25,$f25
    madd.s	$f25,$f4,$f25,$f27
    lwc1	$f23,3568($t0)
    mul.s	$f23,$f23,$f25
    # Line 569
    b	.L0d985c5c
    # Line 568
    swc1	$f23,24($sp)
.L0d986140:
    # Line 558
    lw	$a1,4($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3560($t0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,16($sp)
    # Line 559
    lw	$a0,8($a0)
    sll	$a0,$a0,0x1
    addiu	$a0,$a0,1
    mtc1	$a0,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3560($t0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,20($sp)
    # Line 560
    lw	$v1,8($a7)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3560($t0)
    # Line 561
    lwc1	$f4,_lit_3f800000
    # Line 560
    mul.s	$f2,$f2,$f3
    # Line 561
    b	.L0d985c5c
    # Line 560
    swc1	$f2,24($sp)
.L0d9861a8:
    # Line 551
    lw	$a6,4($a0)
    sll	$a6,$a6,0x1
    addiu	$a6,$a6,1
    mtc1	$a6,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f8,3552($t0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,16($sp)
    # Line 552
    lw	$a5,8($a0)
    sll	$a5,$a5,0x1
    addiu	$a5,$a5,1
    mtc1	$a5,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f7,3552($t0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,20($sp)
    # Line 553
    lw	$a2,12($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3552($t0)
    # Line 554
    lwc1	$f4,_lit_3f800000
    # Line 553
    mul.s	$f5,$f5,$f6
    # Line 554
    b	.L0d985c5c
    # Line 553
    swc1	$f5,24($sp)
.L0d986210:
    # Line 544
    lw	$t8,4($a0)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f10
    cvt.s.l	$f10,$f10
    lwc1	$f11,3568($t0)
    mul.s	$f10,$f10,$f11
    swc1	$f10,16($sp)
    # Line 545
    lw	$t3,8($a0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f9
    cvt.s.l	$f9,$f9
    lwc1	$f10,3568($t0)
    mul.s	$f9,$f9,$f10
    swc1	$f9,20($sp)
    # Line 546
    lw	$t2,12($a0)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f8
    cvt.s.l	$f8,$f8
    lwc1	$f9,3568($t0)
    # Line 547
    lwc1	$f4,_lit_3f800000
    # Line 546
    mul.s	$f8,$f8,$f9
    # Line 547
    b	.L0d985c5c
    # Line 546
    swc1	$f8,24($sp)
.L0d986278:
    # Line 538
    lw	$at,4($a0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f13
    cvt.s.l	$f13,$f13
    lwc1	$f14,3560($t0)
    mul.s	$f13,$f13,$f14
    swc1	$f13,16($sp)
    # Line 539
    lw	$ra,8($a0)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f12
    cvt.s.l	$f12,$f12
    lwc1	$f13,3560($t0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,20($sp)
    # Line 540
    lw	$t9,12($a0)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f11
    cvt.s.l	$f11,$f11
    lwc1	$f12,3560($t0)
    # Line 541
    lwc1	$f4,_lit_3f800000
    # Line 540
    mul.s	$f11,$f11,$f12
    # Line 541
    b	.L0d985c5c
    # Line 540
    swc1	$f11,24($sp)
.L0d9862e0:
    b	.L0d985c68
    # Line 455
    move	$a1,$zero
.L0d9862e8:
    # Line 406
    li	$v0,1
    b	.L0d985ccc
    sw	$v0,0($sp)
.L0d9862f4:
    # Line 410
    b	.L0d985ccc
    # Line 409
    sw	$zero,0($sp)
.end __glOdyDecodeShadowFormat

# Function: __glOdyGetFromShadow
# Declared: Line 693 (Source lines: 694-699)
# Address: 0x0d986300 - 0x0d986380 (Size: 128 bytes, Frame: 48)
.globl __glOdyGetFromShadow
.ent __glOdyGetFromShadow
__glOdyGetFromShadow:
    # Line 694
    addiu	$sp,$sp,-48
    sd	$a4,16($sp)
    sd	$a3,8($sp)
    lui	$v0,0x17
    sd	$a2,0($sp)
    addiu	$v0,$v0,8848
    # Line 695
    lui	$at,0x1
    sd	$gp,40($sp)
    # Line 694
    addu	$gp,$t9,$v0
    # Line 695
    ori	$at,$at,0x6d24
    # Line 697
    # lw $t9, -31660($gp) # &__glOdyGetFromHardware
    # Line 694
    sd	$ra,32($sp)
    # Line 695
    addu	$at,$at,$a0
    lw	$at,0($at)
    # Line 694
    move	$v0,$a0
    # Line 697
    bal __glOdyGetFromHardware
    sd	$at,24($sp)
    bltz	$v0,.L0d986370
    # Line 698
    ld	$a4,0($sp)
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    sll	$a3,$a4,0x2
    ld	$a0,24($sp)
    addu	$a3,$a3,$a4
    ld	$a2,16($sp)
    sll	$a3,$a3,0x2
    ld	$a1,8($sp)
    bal __glOdyDecodeShadowFormat
    addu	$a0,$a0,$a3
.L0d986370:
    ld	$ra,32($sp)
    # Line 699
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyGetFromShadow

# Function: __glOdysseyDoGet
# Declared: Line 701 (Source lines: 702-865)
# Address: 0x0d986380 - 0x0d986bf4 (Size: 2164 bytes, Frame: 208)
.globl __glOdysseyDoGet
.ent __glOdysseyDoGet
__glOdysseyDoGet:
    # Line 709
    lw	$a7,4112($zero)
    # Line 702
    move	$a6,$a3
    addiu	$sp,$sp,-1360
    # Line 709
    lw	$at,4120($zero)
    # Line 702
    sd	$s0,1328($sp)
    # Line 709
    li	$v0,1
    # Line 702
    lui	$v1,0x17
    move	$s0,$a0
    sd	$ra,1344($sp)
    addiu	$v1,$v1,8720
    sd	$gp,1336($sp)
    # Line 709
    beq	$at,$v0,.L0d986950
    # Line 702
    addu	$gp,$t9,$v1
    # Line 711
    li	$a0,0x812b
    sltu	$a3,$s0,$a0
    bnez	$a3,.L0d986454
    sltu	$a4,$a0,$s0
    bnez	$a4,.L0d9864e4
    li	$a0,0x835e
    # Line 751
    lui	$a5,0x1
    sd	$a1,1320($sp)
    ori	$a5,$a5,0x6430
    # Line 752
    addiu	$t1,$sp,904
    sd	$a2,1312($sp)
    # Line 751
    addu	$a5,$a5,$a7
    # Line 752
    addiu	$t3,$sp,504
    # Line 751
    addiu	$t8,$sp,0
    lw	$a5,0($a5)
    # Line 752
    addiu	$t2,$sp,400
    # Line 751
    addiu	$t0,$sp,4
    sw	$a5,0($sp)
.L0d9863fc:
    # Line 852
    addiu	$s0,$sp,400
    addiu	$a0,$sp,504
    bne	$t0,$t8,.L0d98669c
    addiu	$a2,$sp,904
    # Line 856
    bne	$t1,$a2,.L0d9866c8
    # Line 859
    nop	# was lw $t9, -26304($gp) # &__glConvertResult
    bne	$t2,$s0,.L0d98676c
    # Line 862
    nop	# was lw $t9, -26304($gp) # &__glConvertResult
    beq	$t3,$a0,.L0d9864d4
    ld	$ra,1344($sp)
    # Line 865
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a0,$a7
    addiu	$a5,$sp,504
    ld	$a4,1320($sp)
    li	$a1,5
    move	$a2,$a5
    ld	$a3,1312($sp)
    subu	$a5,$t3,$a5
    jal	__glConvertResult
    sra	$a5,$a5,0x2
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986454:
    # Line 711
    sltiu	$t0,$s0,2928
    bnez	$t0,.L0d986524
    sltiu	$t1,$s0,2929
    sd	$a1,1320($sp)
    beqz	$t1,.L0d986610
    sd	$a2,1312($sp)
    lui	$a0,0x1
    addu	$a0,$a7,$a0
    ldc1	$f4,26088($a0)
    dmtc1	$zero,$f0
    c.lt.d	$f4,$f0
    bc1f	.L0d9865c8
    # Line 820
    mtc1	$zero,$f1
    b	.L0d9865d0
    swc1	$f1,504($sp)
.L0d986490:
    # Line 711
    bne	$s0,$a1,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 845
    li	$a2,0xa73c
.L0d98649c:
    addu	$a2,$a2,$a7
    lbu	$a2,0($a2)
    beqz	$a2,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 846
    # lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    bal __glOdysseyUpdateRasterPos
    move	$a0,$a7
.L0d9864b8:
    # Line 850
    # lw $t9, -26300($gp) # &__glDoGet
    ld	$a1,1320($sp)
    ld	$a2,1312($sp)
    move	$a0,$s0
    jal	__glDoGet
    ld	$a3,1304($sp)
    ld	$ra,1344($sp)
.L0d9864d4:
    ld	$s0,1328($sp)
    # Line 851
    ld	$gp,1336($sp)
    jr	$ra
    addiu	$sp,$sp,1360
.L0d9864e4:
    # Line 711
    sltu	$a3,$s0,$a0
    sd	$a1,1320($sp)
    bnez	$a3,.L0d986588
    sd	$a2,1312($sp)
    sltu	$a4,$a0,$s0
    bnez	$a4,.L0d9866ec
    # Line 789
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    # Line 788
    lw	$a5,1816($a7)
    # Line 789
    addiu	$t2,$sp,400
    # Line 788
    addiu	$t8,$sp,0
    addiu	$t0,$sp,4
    andi	$a5,$a5,0x4
    sltu	$a5,$zero,$a5
    # Line 789
    b	.L0d9863fc
    # Line 788
    sw	$a5,0($sp)
.L0d986524:
    # Line 711
    sltiu	$t0,$s0,2820
    sd	$a1,1320($sp)
    bnez	$t0,.L0d986658
    sd	$a2,1312($sp)
    sltiu	$t1,$s0,2821
    bnez	$t1,.L0d98649c
    # Line 845
    li	$a2,0xa73c
    # Line 711
    sltiu	$t2,$s0,2822
    bnez	$t2,.L0d986490
    li	$a1,2821
    sltiu	$t3,$s0,2823
    bnez	$t3,.L0d98649c
    # Line 845
    li	$a2,0xa73c
    # Line 711
    li	$t8,2883
    bne	$s0,$t8,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 728
    # lw $t9, -31652($gp) # &__glOdyGetFromShadow
    move	$a0,$a7
    move	$a1,$zero
    ld	$a4,1312($sp)
    ld	$a3,1320($sp)
    bal __glOdyGetFromShadow
    li	$a2,6
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986588:
    # Line 711
    li	$a0,0x832c
    sltu	$t9,$s0,$a0
    bnez	$t9,.L0d98672c
    sltu	$ra,$a0,$s0
    bnez	$ra,.L0d986834
    li	$a0,0x835c
    # Line 793
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    # Line 792
    lw	$at,1816($a7)
    # Line 793
    addiu	$t2,$sp,400
    # Line 792
    addiu	$t8,$sp,0
    addiu	$t0,$sp,4
    andi	$at,$at,0x8
    sltu	$at,$zero,$at
    # Line 793
    b	.L0d9863fc
    # Line 792
    sw	$at,0($sp)
.L0d9865c8:
    # Line 822
    cvt.s.d	$f2,$f4
    swc1	$f2,504($sp)
.L0d9865d0:
    ldc1	$f3,_lit8_3ff0000000000000
    ldc1	$f4,26096($a0)
    c.lt.d $f3,$f4
    addiu	$a6,$sp,504
    bc1f .L0d9865f4
    addiu	$t3,$a6,8
    # Line 824
    lwc1	$f4,_lit_3f800000
    b	.L0d9865fc
    swc1	$f4,4($a6)
.L0d9865f4:
    # Line 826
    cvt.s.d	$f5,$f4
    swc1	$f5,4($a6)
.L0d9865fc:
    # Line 827
    addiu	$t8,$sp,0
    addiu	$t1,$sp,904
    addiu	$t0,$sp,0
    b	.L0d9863fc
    addiu	$t2,$sp,400
.L0d986610:
    # Line 711
    li	$a0,0x8068
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0d986790
    sltu	$v1,$a0,$s0
    bnez	$v1,.L0d98686c
    li	$a0,0x806a
    # Line 830
    lui	$a0,0x1
    ori	$a0,$a0,0x6404
    addu	$a0,$a0,$a7
    lw	$a0,0($a0)
    # Line 831
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 830
    addiu	$t8,$sp,0
    lw	$a0,8($a0)
    addiu	$t0,$sp,4
    # Line 831
    b	.L0d9863fc
    # Line 830
    sw	$a0,0($sp)
.L0d986658:
    # Line 711
    sltiu	$a0,$s0,2818
    bnez	$a0,.L0d9867c8
    sltiu	$a3,$s0,2817
    sltiu	$a1,$s0,2819
    bnez	$a1,.L0d986b6c
    li	$a2,2819
    bne	$s0,$a2,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 725
    # lw $t9, -31652($gp) # &__glOdyGetFromShadow
    move	$a0,$a7
    move	$a1,$zero
    ld	$a4,1312($sp)
    ld	$a3,1320($sp)
    bal __glOdyGetFromShadow
    li	$a2,4
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d98669c:
    # Line 856
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a0,$a7
    ld	$a4,1320($sp)
    addiu	$a2,$sp,0
    li	$a1,3
    ld	$a3,1312($sp)
    subu	$a5,$t0,$t8
    jal	__glConvertResult
    sra	$a5,$a5,0x2
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d9866c8:
    # Line 859
    move	$a0,$a7
    move	$a1,$zero
    ld	$a3,1312($sp)
    ld	$a4,1320($sp)
    subu	$a5,$t1,$a2
    jalr	$t9
    sra	$a5,$a5,0x2
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d9866ec:
    # Line 711
    li	$a0,0x83ee
    sltu	$t0,$s0,$a0
    bnez	$t0,.L0d9867fc
    sltu	$t1,$a0,$s0
    bnez	$t1,.L0d986964
    # Line 800
    lui	$t9,0x1
    # Line 801
    addiu	$t1,$sp,904
    # Line 800
    ori	$t9,$t9,0x9db4
    # Line 801
    addiu	$t3,$sp,504
    # Line 800
    addu	$t9,$t9,$a7
    # Line 801
    addiu	$t2,$sp,400
    # Line 800
    addiu	$t8,$sp,0
    lbu	$t9,0($t9)
    addiu	$t0,$sp,4
    # Line 801
    b	.L0d9863fc
    # Line 800
    sw	$t9,0($sp)
.L0d98672c:
    # Line 711
    li	$a0,0x8199
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d9868b4
    sltu	$at,$a0,$s0
    beqz	$at,.L0d986bc4
    li	$v0,0x8329
    bne	$s0,$v0,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 777
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 776
    lw	$v1,6120($a7)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 777
    b	.L0d9863fc
    # Line 776
    addiu	$t0,$sp,4
.L0d98676c:
    # Line 862
    move	$a0,$a7
    subu	$a5,$t2,$s0
    ld	$a4,1320($sp)
    move	$a2,$s0
    ld	$a3,1312($sp)
    jalr	$t9
    li	$a1,4
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986790:
    # Line 711
    sltiu	$a0,$s0,3378
    bnez	$a0,.L0d9868f8
    li	$a3,3123
    sltiu	$a1,$s0,3379
    beqz	$a1,.L0d986a00
    li	$v0,0x803a
    # Line 736
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 735
    li	$a2,6
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 736
    b	.L0d9863fc
    # Line 735
    addiu	$t0,$sp,4
.L0d9867c8:
    # Line 711
    bnez	$a3,.L0d986924
    li	$ra,2816
    beqz	$a0,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 714
    # lw $t9, -31652($gp) # &__glOdyGetFromShadow
    move	$a0,$a7
    move	$a1,$zero
    ld	$a3,1320($sp)
    move	$a2,$zero
    bal __glOdyGetFromShadow
    ld	$a4,1312($sp)
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d9867fc:
    # Line 711
    li	$a0,0x8360
    sltu	$a4,$s0,$a0
    bnez	$a4,.L0d9869ac
    li	$t2,0x835f
    sltu	$a5,$a0,$s0
    bnez	$a5,.L0d986ac8
    # Line 761
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 760
    lw	$a6,3644($a7)
    addiu	$t8,$sp,0
    sw	$a6,0($sp)
    # Line 761
    b	.L0d9863fc
    # Line 760
    addiu	$t0,$sp,4
.L0d986834:
    # Line 711
    sltu	$t0,$s0,$a0
    bnez	$t0,.L0d9869d4
    sltu	$t1,$a0,$s0
    bnez	$t1,.L0d986af4
    # Line 781
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    # Line 780
    lw	$t9,1816($a7)
    # Line 781
    addiu	$t2,$sp,400
    # Line 780
    addiu	$t8,$sp,0
    addiu	$t0,$sp,4
    andi	$t9,$t9,0x1
    sltu	$t9,$zero,$t9
    # Line 781
    b	.L0d9863fc
    # Line 780
    sw	$t9,0($sp)
.L0d98686c:
    # Line 711
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d986a5c
    li	$a3,0x8069
    sltu	$at,$a0,$s0
    bnez	$at,.L0d986b28
    li	$v0,0x812a
    # Line 836
    lui	$v0,0x1
    ori	$v0,$v0,0x640c
    addu	$v0,$v0,$a7
    lw	$v0,0($v0)
    # Line 837
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 836
    addiu	$t8,$sp,0
    lw	$v0,8($v0)
    addiu	$t0,$sp,4
    # Line 837
    b	.L0d9863fc
    # Line 836
    sw	$v0,0($sp)
.L0d9868b4:
    # Line 711
    li	$a0,0x8198
    sltu	$v1,$s0,$a0
    bnez	$v1,.L0d986a34
    li	$a1,0x812c
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 740
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    # Line 739
    lw	$a2,1796($a7)
    # Line 740
    addiu	$t2,$sp,400
    # Line 739
    addiu	$t8,$sp,0
    addiu	$t0,$sp,4
    andi	$a2,$a2,0x10
    sltu	$a2,$zero,$a2
    # Line 740
    b	.L0d9863fc
    # Line 739
    sw	$a2,0($sp)
.L0d9868f8:
    # Line 711
    bne	$s0,$a3,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 839
    addiu	$t8,$sp,0
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t0,$sp,0
    lbu	$t9,3223($a7)
    addiu	$t2,$sp,400
    sb	$t9,400($sp)
    b	.L0d9863fc
    addiu	$t2,$t2,1
.L0d986924:
    # Line 711
    bne	$s0,$ra,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 718
    # lw $t9, -31652($gp) # &__glOdyGetFromShadow
    move	$a0,$a7
    move	$a1,$zero
    ld	$a4,1312($sp)
    ld	$a3,1320($sp)
    bal __glOdyGetFromShadow
    li	$a2,1
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986950:
    # Line 709
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986964:
    # Line 711
    li	$a0,0x846d
    sltu	$at,$s0,$a0
    bnez	$at,.L0d986a94
    li	$a5,0x83ef
    sltu	$v0,$a0,$s0
    bnez	$v0,.L0d986b90
    li	$t0,0x846e
    # Line 810
    addiu	$t8,$sp,0
    # Line 809
    lwc1	$f7,_lit_45800000
    # Line 810
    addiu	$t3,$sp,504
    addiu	$t0,$sp,0
    # Line 808
    lwc1	$f6,_lit_3f800000
    # Line 810
    addiu	$t2,$sp,400
    # Line 808
    addiu	$t1,$sp,904
    # Line 809
    swc1	$f7,908($sp)
    addiu	$t1,$t1,8
    # Line 810
    b	.L0d9863fc
    # Line 808
    swc1	$f6,904($sp)
.L0d9869ac:
    # Line 711
    bne	$s0,$t2,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 769
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 768
    lw	$t9,3652($a7)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 769
    b	.L0d9863fc
    # Line 768
    addiu	$t0,$sp,4
.L0d9869d4:
    # Line 711
    li	$ra,0x832d
    bne	$s0,$ra,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 773
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 772
    lw	$at,3656($a7)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 773
    b	.L0d9863fc
    # Line 772
    addiu	$t0,$sp,4
.L0d986a00:
    # Line 711
    bne	$s0,$v0,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 797
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 796
    lw	$v1,1796($a7)
    addiu	$t8,$sp,0
    lui	$a0,0x1
    addiu	$t0,$sp,4
    and	$v1,$v1,$a0
    sltu	$v1,$zero,$v1
    # Line 797
    b	.L0d9863fc
    # Line 796
    sw	$v1,0($sp)
.L0d986a34:
    # Line 711
    bne	$s0,$a1,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 748
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 747
    li	$a2,4
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 748
    b	.L0d9863fc
    # Line 747
    addiu	$t0,$sp,4
.L0d986a5c:
    # Line 711
    bne	$s0,$a3,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 833
    lui	$a4,0x1
    ori	$a4,$a4,0x6408
    addu	$a4,$a4,$a7
    lw	$a4,0($a4)
    # Line 834
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 833
    addiu	$t8,$sp,0
    lw	$a4,8($a4)
    addiu	$t0,$sp,4
    # Line 834
    b	.L0d9863fc
    # Line 833
    sw	$a4,0($sp)
.L0d986a94:
    # Line 711
    bne	$s0,$a5,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 804
    lui	$a6,0x1
    # Line 805
    addiu	$t1,$sp,904
    # Line 804
    ori	$a6,$a6,0x9db8
    # Line 805
    addiu	$t3,$sp,504
    # Line 804
    addu	$a6,$a6,$a7
    # Line 805
    addiu	$t2,$sp,400
    # Line 804
    addiu	$t8,$sp,0
    lw	$a6,0($a6)
    addiu	$t0,$sp,4
    # Line 805
    b	.L0d9863fc
    # Line 804
    sw	$a6,0($sp)
.L0d986ac8:
    # Line 711
    li	$t0,0x8361
    bne	$s0,$t0,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 765
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    addiu	$t2,$sp,400
    # Line 764
    lw	$t9,3648($a7)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 765
    b	.L0d9863fc
    # Line 764
    addiu	$t0,$sp,4
.L0d986af4:
    # Line 711
    li	$ra,0x835d
    bne	$s0,$ra,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 785
    addiu	$t1,$sp,904
    addiu	$t3,$sp,504
    # Line 784
    lw	$at,1816($a7)
    # Line 785
    addiu	$t2,$sp,400
    # Line 784
    addiu	$t8,$sp,0
    addiu	$t0,$sp,4
    andi	$at,$at,0x2
    sltu	$at,$zero,$at
    # Line 785
    b	.L0d9863fc
    # Line 784
    sw	$at,0($sp)
.L0d986b28:
    # Line 711
    bne	$s0,$v0,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 755
    lui	$a2,0x1
    ori	$a5,$a2,0x6430
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a5,$a5,$a7
    move	$a0,$a7
    ori	$a2,$a2,0x6434
    lw	$a5,0($a5)
    move	$a1,$zero
    ld	$a4,1320($sp)
    addu	$a2,$a7,$a2
    ld	$a3,1312($sp)
    jal	__glConvertResult
    addu	$a5,$a5,$a5
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986b6c:
    # Line 722
    # lw $t9, -31652($gp) # &__glOdyGetFromShadow
    move	$a0,$a7
    move	$a1,$zero
    ld	$a4,1312($sp)
    ld	$a3,1320($sp)
    bal __glOdyGetFromShadow
    li	$a2,2
    b	.L0d9864d4
    ld	$ra,1344($sp)
.L0d986b90:
    # Line 711
    bne	$s0,$t0,.L0d9864b8
    sd	$a6,1304($sp)
    # Line 815
    addiu	$t8,$sp,0
    # Line 814
    lwc1	$f9,_lit_45800000
    # Line 815
    addiu	$t3,$sp,504
    addiu	$t0,$sp,0
    # Line 813
    lwc1	$f8,_lit_3f800000
    # Line 815
    addiu	$t2,$sp,400
    # Line 813
    addiu	$t1,$sp,904
    # Line 814
    swc1	$f9,908($sp)
    addiu	$t1,$t1,8
    # Line 815
    b	.L0d9863fc
    # Line 813
    swc1	$f8,904($sp)
.L0d986bc4:
    # Line 743
    move	$a0,$a7
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a1,$zero
    lui	$a2,0x1
    li	$a5,4
    ld	$a4,1320($sp)
    ori	$a2,$a2,0x646c
    ld	$a3,1312($sp)
    jal	__glConvertResult
    addu	$a2,$a7,$a2
    b	.L0d9864d4
    ld	$ra,1344($sp)
.end __glOdysseyDoGet

# Function: __glOdyim_GetDoublev
# Declared: Line 872 (Source lines: 873-875)
# Address: 0x0d986c00 - 0x0d986c3c (Size: 60 bytes, Frame: 16)
.globl __glOdyim_GetDoublev
.ent __glOdyim_GetDoublev
__glOdyim_GetDoublev:
    # Line 873
    lui	$a4,0x17
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,6544
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 874
    # lw $t9, -31648($gp) # &__glOdysseyDoGet
    la	$a3,sub_0daf0000
    li	$a2,2
    # Line 873
    sd	$ra,0($sp)
    # Line 874
    bal __glOdysseyDoGet
    addiu	$a3,$a3,-28984
    ld	$ra,0($sp)
    # Line 875
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_GetDoublev

# Function: __glOdyim_GetFloatv
# Declared: Line 877 (Source lines: 878-880)
# Address: 0x0d986c40 - 0x0d986c7c (Size: 60 bytes, Frame: 16)
.globl __glOdyim_GetFloatv
.ent __glOdyim_GetFloatv
__glOdyim_GetFloatv:
    # Line 878
    lui	$a4,0x17
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,6480
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 879
    # lw $t9, -31648($gp) # &__glOdysseyDoGet
    la	$a3,sub_0daf0000
    li	$a2,1
    # Line 878
    sd	$ra,0($sp)
    # Line 879
    bal __glOdysseyDoGet
    addiu	$a3,$a3,-28968
    ld	$ra,0($sp)
    # Line 880
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_GetFloatv

# Function: __glOdyim_GetIntegerv
# Declared: Line 882 (Source lines: 883-885)
# Address: 0x0d986c80 - 0x0d986cbc (Size: 60 bytes, Frame: 16)
.globl __glOdyim_GetIntegerv
.ent __glOdyim_GetIntegerv
__glOdyim_GetIntegerv:
    # Line 883
    lui	$a4,0x17
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,6416
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 884
    # lw $t9, -31648($gp) # &__glOdysseyDoGet
    la	$a3,sub_0daf0000
    li	$a2,3
    # Line 883
    sd	$ra,0($sp)
    # Line 884
    bal __glOdysseyDoGet
    addiu	$a3,$a3,-28952
    ld	$ra,0($sp)
    # Line 885
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_GetIntegerv

# Function: __glOdyim_GetBooleanv
# Declared: Line 887 (Source lines: 888-890)
# Address: 0x0d986cc0 - 0x0d986cfc (Size: 60 bytes, Frame: 16)
.globl __glOdyim_GetBooleanv
.ent __glOdyim_GetBooleanv
__glOdyim_GetBooleanv:
    # Line 888
    lui	$a4,0x17
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,6352
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 889
    # lw $t9, -31648($gp) # &__glOdysseyDoGet
    la	$a3,sub_0daf0000
    li	$a2,4
    # Line 888
    sd	$ra,0($sp)
    # Line 889
    bal __glOdysseyDoGet
    addiu	$a3,$a3,-28936
    ld	$ra,0($sp)
    # Line 890
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_GetBooleanv

# Function: __glOdysseyUpdateRasterPos
# Declared: Line 905 (Source lines: 905-924)
# Address: 0x0d986d00 - 0x0d986dcc (Size: 204 bytes, Frame: 48)
.globl __glOdysseyUpdateRasterPos
.ent __glOdysseyUpdateRasterPos
__glOdysseyUpdateRasterPos:
    # Line 907
    lw	$v0,4112($zero)
    # Line 905
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$v1,0x17
    # Line 907
    sd	$v0,8($sp)
    # Line 905
    addiu	$v1,$v1,6288
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 906
    lui	$at,0x1
    # Line 910
    # lw $t9, -31660($gp) # &__glOdyGetFromHardware
    # Line 906
    addu	$at,$a0,$at
    sd	$at,0($sp)
    # Line 910
    li	$a1,3
    # Line 906
    lw	$at,27940($at)
    # Line 905
    move	$v0,$a0
    # Line 910
    bal __glOdyGetFromHardware
    sd	$at,16($sp)
    bltz	$v0,.L0d986da4
    ld	$ra,24($sp)
    ld	$a1,8($sp)
    lbu	$a2,3220($a1)
    beqz	$a2,.L0d986db0
    addiu	$a1,$a1,384
    # Line 914
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    ld	$a0,16($sp)
    li	$a2,1
    bal __glOdyDecodeShadowFormat
    addiu	$a0,$a0,60
    # Line 921
    ld	$a1,8($sp)
.L0d986d74:
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    ld	$a0,16($sp)
    li	$a2,1
    addiu	$a1,$a1,288
    bal __glOdyDecodeShadowFormat
    addiu	$a0,$a0,80
    ld	$a1,0($sp)
    # Line 924
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    # Line 923
    sb	$zero,-22724($a1)
    # Line 924
    jr	$ra
    addiu	$sp,$sp,48
.L0d986da4:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d986db0:
    # Line 918
    # lw $t9, -31656($gp) # &__glOdyDecodeShadowFormat
    ld	$a0,16($sp)
    li	$a2,1
    bal __glOdyDecodeShadowFormat
    addiu	$a0,$a0,40
    b	.L0d986d74
    # Line 921
    ld	$a1,8($sp)
.end __glOdysseyUpdateRasterPos

# Function: __glOdyim_GetTexParameterfv
# Declared: Line 927 (Source lines: 927-1056)
# Address: 0x0d986dd0 - 0x0d9872a8 (Size: 1240 bytes, Frame: 48)
.globl __glOdyim_GetTexParameterfv
.ent __glOdyim_GetTexParameterfv
__glOdyim_GetTexParameterfv:
    # Line 927
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    sd	$s0,16($sp)
    move	$v0,$a0
    # Line 929
    lw	$at,4120($zero)
    li	$v1,1
    # Line 927
    sd	$a2,0($sp)
    lui	$a2,0x17
    move	$s0,$a1
    # Line 929
    lw	$a1,4112($zero)
    # Line 927
    addiu	$a0,$a2,6080
    # Line 929
    sd	$a1,8($sp)
    beq	$at,$v1,.L0d98706c
    # Line 927
    addu	$gp,$t9,$a0
    # Line 931
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    ld	$a0,8($sp)
    jal	__glOdysseyGetCurrentTexture
    move	$a1,$v0
    beqz	$v0,.L0d987080
    # Line 933
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 937
    li	$a1,0x813b
    sltu	$a3,$s0,$a1
    bnez	$a3,.L0d986e8c
    sltu	$a4,$a1,$s0
    beqz	$a4,.L0d986fd0
    li	$a0,0x818f
    sltu	$a5,$s0,$a0
    bnez	$a5,.L0d986f50
    sltu	$a6,$a0,$s0
    beqz	$a6,.L0d98713c
    li	$a0,0x8369
    sltu	$a7,$s0,$a0
    bnez	$a7,.L0d986f18
    sltu	$t0,$a0,$s0
    beqz	$t0,.L0d987278
    li	$a1,0x836a
    li	$a0,0x836b
    sltu	$t1,$s0,$a0
    bnez	$t1,.L0d98721c
    sltu	$t2,$a0,$s0
    bnez	$t2,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1023
    ld	$t3,0($sp)
    # Line 1022
    lwc1	$f0,80($v0)
    # Line 1023
    b	.L0d986f3c
    # Line 1022
    swc1	$f0,0($t3)
.L0d986e8c:
    # Line 937
    li	$a1,0x8067
    sltu	$t8,$s0,$a1
    bnez	$t8,.L0d986ee0
    sltu	$t9,$a1,$s0
    beqz	$t9,.L0d987258
    # Line 1048
    nop	# was lw $t9, -30532($gp) # &__glOdysseyIsTextureResident
    # Line 937
    li	$a0,0x809b
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d986ff0
    sltu	$at,$a0,$s0
    beqz	$at,.L0d9871fc
    li	$a0,0x813a
    sltu	$v1,$s0,$a0
    bnez	$v1,.L0d98715c
    # Line 987
    ld	$a2,0($sp)
    # Line 937
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 986
    lwc1	$f1,84($v0)
    # Line 987
    b	.L0d986f3c
    # Line 986
    swc1	$f1,0($a2)
.L0d986ee0:
    # Line 937
    sltiu	$a3,$s0,10242
    bnez	$a3,.L0d986f90
    sltiu	$a4,$s0,10243
    bnez	$a4,.L0d9871cc
    li	$a0,0x8066
    sltu	$a5,$s0,$a0
    bnez	$a5,.L0d987110
    # Line 1045
    ld	$a7,0($sp)
    # Line 937
    sltu	$a6,$a0,$s0
    bnez	$a6,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1044
    lwc1	$f2,60($v0)
    # Line 1045
    b	.L0d986f3c
    # Line 1044
    swc1	$f2,0($a7)
.L0d986f18:
    # Line 937
    li	$a0,0x8191
    sltu	$t0,$s0,$a0
    bnez	$t0,.L0d987180
    li	$t2,0x8190
    sltu	$t1,$a0,$s0
    beqz	$t1,.L0d986f3c
.L0d986f30:
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d986f34:
    jal	__glSetError
    li	$a0,1280
.L0d986f3c:
    ld	$ra,32($sp)
.L0d986f40:
    ld	$s0,16($sp)
    # Line 1056
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d986f50:
    # Line 937
    li	$a0,0x8179
    sltu	$t2,$s0,$a0
    bnez	$t2,.L0d987030
    sltu	$t3,$a0,$s0
    beqz	$t3,.L0d987234
    # Line 939
    ld	$a3,0($sp)
    # Line 937
    li	$a0,0x818e
    sltu	$t8,$s0,$a0
    # Line 1003
    ld	$ra,0($sp)
    # Line 937
    bnez	$t8,.L0d987198
    sltu	$t9,$a0,$s0
    bnez	$t9,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1002
    lwc1	$f3,100($v0)
    # Line 1003
    b	.L0d986f3c
    # Line 1002
    swc1	$f3,0($ra)
.L0d986f90:
    # Line 937
    sltiu	$at,$s0,10240
    bnez	$at,.L0d987090
    li	$t8,4100
    sltiu	$v1,$s0,10241
    bnez	$v1,.L0d987288
    li	$a0,10241
    bne	$s0,$a0,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 965
    lw	$a2,20($v0)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f4
    cvt.s.l	$f4,$f4
    # Line 966
    ld	$a1,0($sp)
    b	.L0d986f3c
    # Line 965
    swc1	$f4,0($a1)
.L0d986fd0:
    # Line 1056
    ld	$gp,24($sp)
    # Line 990
    lwc1	$f5,88($v0)
    ld	$ra,32($sp)
    ld	$a3,0($sp)
    # Line 1056
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 990
    swc1	$f5,0($a3)
.L0d986ff0:
    # Line 937
    li	$a0,0x809a
    sltu	$a4,$s0,$a0
    bnez	$a4,.L0d9870c0
    sltu	$a5,$a0,$s0
    bnez	$a5,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1026
    lw	$a7,64($v0)
    mtc1	$a7,$f6
    # Line 1056
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 1026
    cvt.s.w	$f6,$f6
    ld	$a6,0($sp)
    # Line 1056
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1026
    swc1	$f6,0($a6)
.L0d987030:
    # Line 937
    li	$a0,0x813d
    sltu	$t0,$s0,$a0
    # Line 998
    ld	$t2,0($sp)
    # Line 937
    bnez	$t0,.L0d9870ec
    ld	$ra,32($sp)
    sltu	$t1,$a0,$s0
    bnez	$t1,.L0d986f30
    # Line 1056
    ld	$s0,16($sp)
    # Line 998
    lw	$t3,96($v0)
    mtc1	$t3,$f7
    cvt.s.w	$f7,$f7
    # Line 1056
    ld	$gp,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 998
    swc1	$f7,0($t2)
.L0d98706c:
    # Line 929
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d986f40
    ld	$ra,32($sp)
.L0d987080:
    # Line 933
    jalr	$t9
    li	$a0,1280
    b	.L0d986f40
    ld	$ra,32($sp)
.L0d987090:
    # Line 937
    bne	$s0,$t8,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 979
    ld	$t9,0($sp)
    lwc1	$f11,44($v0)
    swc1	$f11,0($t9)
    # Line 980
    lwc1	$f10,48($v0)
    swc1	$f10,4($t9)
    # Line 981
    lwc1	$f9,52($v0)
    swc1	$f9,8($t9)
    # Line 982
    lwc1	$f8,56($v0)
    b	.L0d986f3c
    swc1	$f8,12($t9)
.L0d9870c0:
    # Line 937
    li	$ra,0x8072
    bne	$s0,$ra,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 961
    lw	$v1,36($v0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f12
    cvt.s.l	$f12,$f12
    # Line 962
    ld	$at,0($sp)
    b	.L0d986f3c
    # Line 961
    swc1	$f12,0($at)
.L0d9870ec:
    # Line 937
    li	$a0,0x813c
    bne	$s0,$a0,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 994
    lw	$a2,92($v0)
    mtc1	$a2,$f13
    cvt.s.w	$f13,$f13
    # Line 995
    ld	$a1,0($sp)
    b	.L0d986f3c
    # Line 994
    swc1	$f13,0($a1)
.L0d987110:
    # Line 937
    li	$a3,10243
    bne	$s0,$a3,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 957
    lw	$a5,32($v0)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f14
    cvt.s.l	$f14,$f14
    # Line 958
    ld	$a4,0($sp)
    b	.L0d986f3c
    # Line 957
    swc1	$f14,0($a4)
.L0d98713c:
    # Line 1056
    ld	$gp,24($sp)
    # Line 1006
    lwc1	$f15,104($v0)
    ld	$ra,32($sp)
    ld	$a6,0($sp)
    # Line 1056
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1006
    swc1	$f15,0($a6)
.L0d98715c:
    # Line 937
    li	$a7,0x809c
    bne	$s0,$a7,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1034
    lw	$t1,1284($v0)
    mtc1	$t1,$f16
    cvt.s.w	$f16,$f16
    # Line 1035
    ld	$t0,0($sp)
    b	.L0d986f3c
    # Line 1034
    swc1	$f16,0($t0)
.L0d987180:
    # Line 937
    bne	$s0,$t2,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1011
    ld	$t3,0($sp)
    # Line 1010
    lwc1	$f17,108($v0)
    # Line 1011
    b	.L0d986f3c
    # Line 1010
    swc1	$f17,0($t3)
.L0d987198:
    # Line 937
    li	$t8,0x817a
    bne	$s0,$t8,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 946
    ld	$t9,0($sp)
    lwc1	$f23,128($v0)
    swc1	$f23,0($t9)
    # Line 947
    lwc1	$f21,132($v0)
    swc1	$f21,4($t9)
    # Line 948
    lwc1	$f19,136($v0)
    swc1	$f19,8($t9)
    # Line 949
    lwc1	$f18,140($v0)
    # Line 950
    b	.L0d986f3c
    # Line 949
    swc1	$f18,12($t9)
.L0d9871cc:
    # Line 953
    lw	$v0,28($v0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f25
    # Line 1056
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 953
    cvt.s.l	$f25,$f25
    ld	$at,0($sp)
    # Line 1056
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 953
    swc1	$f25,0($at)
.L0d9871fc:
    # Line 1030
    lw	$a0,68($v0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f27
    cvt.s.l	$f27,$f27
    # Line 1031
    ld	$v1,0($sp)
    b	.L0d986f3c
    # Line 1030
    swc1	$f27,0($v1)
.L0d98721c:
    # Line 937
    bne	$s0,$a1,.L0d986f34
    # Line 1055
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1019
    ld	$a2,0($sp)
    # Line 1018
    lwc1	$f29,76($v0)
    # Line 1019
    b	.L0d986f3c
    # Line 1018
    swc1	$f29,0($a2)
.L0d987234:
    # Line 939
    lwc1	$f2,112($v0)
    swc1	$f2,0($a3)
    # Line 940
    lwc1	$f1,116($v0)
    swc1	$f1,4($a3)
    # Line 941
    lwc1	$f0,120($v0)
    swc1	$f0,8($a3)
    # Line 942
    lwc1	$f31,124($v0)
    # Line 943
    b	.L0d986f3c
    # Line 942
    swc1	$f31,12($a3)
.L0d987258:
    # Line 1048
    ld	$a0,8($sp)
    jal	__glSetError
    move	$a1,$v0
    mtc1	$v0,$f3
    cvt.s.w	$f3,$f3
    # Line 1049
    ld	$a4,0($sp)
    b	.L0d986f3c
    # Line 1048
    swc1	$f3,0($a4)
.L0d987278:
    # Line 1015
    ld	$a5,0($sp)
    # Line 1014
    lwc1	$f4,72($v0)
    # Line 1015
    b	.L0d986f3c
    # Line 1014
    swc1	$f4,0($a5)
.L0d987288:
    # Line 969
    lw	$a7,24($v0)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f5
    cvt.s.l	$f5,$f5
    # Line 970
    ld	$a6,0($sp)
    b	.L0d986f3c
    # Line 969
    swc1	$f5,0($a6)
.end __glOdyim_GetTexParameterfv

# Function: __glOdyim_GetTexParameteriv
# Declared: Line 1061 (Source lines: 1061-1177)
# Address: 0x0d9872b0 - 0x0d987740 (Size: 1168 bytes, Frame: 48)
.globl __glOdyim_GetTexParameteriv
.ent __glOdyim_GetTexParameteriv
__glOdyim_GetTexParameteriv:
    # Line 1061
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$gp,24($sp)
    sd	$s0,16($sp)
    move	$v0,$a0
    # Line 1063
    lw	$at,4120($zero)
    li	$v1,1
    # Line 1061
    sd	$a2,0($sp)
    lui	$a2,0x17
    move	$s0,$a1
    # Line 1063
    lw	$a1,4112($zero)
    # Line 1061
    addiu	$a0,$a2,4832
    # Line 1063
    sd	$a1,8($sp)
    beq	$at,$v1,.L0d987508
    # Line 1061
    addu	$gp,$t9,$a0
    # Line 1065
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    ld	$a0,8($sp)
    jal	__glOdysseyGetCurrentTexture
    move	$a1,$v0
    beqz	$v0,.L0d98751c
    # Line 1068
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1072
    li	$a1,0x813a
    sltu	$a3,$s0,$a1
    bnez	$a3,.L0d987360
    sltu	$a4,$a1,$s0
    beqz	$a4,.L0d987494
    li	$a0,0x8190
    sltu	$a5,$s0,$a0
    bnez	$a5,.L0d9873ec
    sltu	$a6,$a0,$s0
    beqz	$a6,.L0d9875dc
    li	$a0,0x836a
    sltu	$a7,$s0,$a0
    bnez	$a7,.L0d98752c
    sltu	$t0,$a0,$s0
    beqz	$t0,.L0d987674
    li	$t1,0x836b
    bne	$s0,$t1,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1143
    lwc1	$f0,80($v0)
    # Line 1144
    ld	$t2,0($sp)
    # Line 1143
    trunc.w.s	$f0,$f0
    # Line 1144
    b	.L0d987450
    # Line 1143
    swc1	$f0,0($t2)
.L0d987360:
    # Line 1072
    li	$a1,0x8066
    sltu	$t3,$s0,$a1
    bnez	$t3,.L0d9873b4
    sltu	$t8,$a1,$s0
    beqz	$t8,.L0d987558
    li	$a1,0x809a
    sltu	$t9,$s0,$a1
    bnez	$t9,.L0d9874e0
    sltu	$ra,$a1,$s0
    beqz	$ra,.L0d987664
    li	$a6,0x809b
    li	$a0,0x809c
    sltu	$at,$s0,$a0
    bnez	$at,.L0d987630
    # Line 1156
    ld	$a1,0($sp)
    # Line 1072
    sltu	$v1,$a0,$s0
    bnez	$v1,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1155
    lw	$a0,1284($v0)
    # Line 1156
    b	.L0d987450
    # Line 1155
    sw	$a0,0($a1)
.L0d9873b4:
    # Line 1072
    sltiu	$a1,$s0,10241
    bnez	$a1,.L0d987464
    sltiu	$t9,$s0,10240
    sltiu	$a2,$s0,10242
    bnez	$a2,.L0d987644
    sltiu	$a3,$s0,10243
    bnez	$a3,.L0d9875c4
    # Line 1079
    ld	$a6,0($sp)
    # Line 1072
    sltiu	$a4,$s0,10244
    beqz	$a4,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1078
    lw	$a5,32($v0)
    # Line 1079
    b	.L0d987450
    # Line 1078
    sw	$a5,0($a6)
.L0d9873ec:
    # Line 1072
    li	$a0,0x813d
    sltu	$a7,$s0,$a0
    bnez	$a7,.L0d9874b8
    sltu	$t0,$a0,$s0
    beqz	$t0,.L0d987654
    li	$a4,0x818e
    li	$a0,0x818f
    sltu	$t1,$s0,$a0
    # Line 1127
    ld	$t3,0($sp)
    # Line 1072
    bnez	$t1,.L0d987614
    ld	$ra,40($sp)
    sltu	$t2,$a0,$s0
    bnez	$t2,.L0d987444
    # Line 1177
    ld	$s0,16($sp)
    # Line 1127
    lwc1	$f1,104($v0)
    # Line 1177
    ld	$gp,24($sp)
    # Line 1127
    trunc.w.s	$f1,$f1
    # Line 1177
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1127
    swc1	$f1,0($t3)
.L0d98743c:
    # Line 1072
    beq	$s0,$t8,.L0d987688
    sd	$v0,32($sp)
.L0d987444:
    # Line 1176
    # lw $t9, -26792($gp) # &__glSetError
.L0d987448:
    jal	__glSetError
    li	$a0,1280
.L0d987450:
    ld	$ra,40($sp)
.L0d987454:
    ld	$s0,16($sp)
    # Line 1177
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d987464:
    # Line 1072
    bnez	$t9,.L0d98743c
    li	$t8,4100
    beqz	$a1,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1177
    ld	$gp,24($sp)
    # Line 1090
    lw	$at,24($v0)
    ld	$ra,40($sp)
    ld	$v0,0($sp)
    # Line 1177
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1090
    sw	$at,0($v0)
.L0d987494:
    # Line 1177
    ld	$gp,24($sp)
    # Line 1107
    lwc1	$f2,84($v0)
    ld	$ra,40($sp)
    ld	$v1,0($sp)
    # Line 1177
    ld	$s0,16($sp)
    # Line 1107
    trunc.w.s	$f2,$f2
    # Line 1177
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1107
    swc1	$f2,0($v1)
.L0d9874b8:
    # Line 1072
    li	$a0,0x813c
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d98757c
    # Line 1116
    ld	$a4,0($sp)
    # Line 1072
    sltu	$a2,$a0,$s0
    bnez	$a2,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1115
    lw	$a3,92($v0)
    # Line 1116
    b	.L0d987450
    # Line 1115
    sw	$a3,0($a4)
.L0d9874e0:
    # Line 1072
    li	$a1,0x8072
    sltu	$a5,$s0,$a1
    bnez	$a5,.L0d98759c
    # Line 1083
    ld	$t0,0($sp)
    # Line 1072
    sltu	$a6,$a1,$s0
    bnez	$a6,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1082
    lw	$a7,36($v0)
    # Line 1083
    b	.L0d987450
    # Line 1082
    sw	$a7,0($t0)
.L0d987508:
    # Line 1063
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d987454
    ld	$ra,40($sp)
.L0d98751c:
    # Line 1068
    jalr	$t9
    li	$a0,1280
    b	.L0d987454
    ld	$ra,40($sp)
.L0d98752c:
    # Line 1072
    li	$a0,0x8369
    sltu	$t1,$s0,$a0
    bnez	$t1,.L0d987600
    # Line 1136
    ld	$t3,0($sp)
    # Line 1072
    sltu	$t2,$a0,$s0
    bnez	$t2,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1135
    lwc1	$f3,72($v0)
    trunc.w.s	$f3,$f3
    # Line 1136
    b	.L0d987450
    # Line 1135
    swc1	$f3,0($t3)
.L0d987558:
    # Line 1165
    lwc1	$f4,60($v0)
    ld	$s0,0($sp)
    ld	$ra,40($sp)
    # Line 1177
    ld	$gp,24($sp)
    # Line 1165
    trunc.w.s	$f4,$f4
    swc1	$f4,0($s0)
    # Line 1177
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98757c:
    # Line 1072
    li	$t8,0x813b
    bne	$s0,$t8,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1111
    lwc1	$f5,88($v0)
    # Line 1112
    ld	$t9,0($sp)
    # Line 1111
    trunc.w.s	$f5,$f5
    # Line 1112
    b	.L0d987450
    # Line 1111
    swc1	$f5,0($t9)
.L0d98759c:
    # Line 1072
    li	$ra,0x8067
    bne	$s0,$ra,.L0d987444
    sd	$v0,32($sp)
    # Line 1169
    # lw $t9, -30532($gp) # &__glOdysseyIsTextureResident
    ld	$a0,8($sp)
    jal	__glOdysseyIsTextureResident
    ld	$a1,32($sp)
    # Line 1170
    ld	$at,0($sp)
    b	.L0d987450
    # Line 1169
    sw	$v0,0($at)
.L0d9875c4:
    # Line 1072
    li	$v1,10242
    bne	$s0,$v1,.L0d987444
    # Line 1075
    ld	$a1,0($sp)
    # Line 1074
    lw	$a0,28($v0)
    # Line 1075
    b	.L0d987450
    # Line 1074
    sw	$a0,0($a1)
.L0d9875dc:
    # Line 1177
    ld	$gp,24($sp)
    # Line 1131
    lwc1	$f6,108($v0)
    ld	$ra,40($sp)
    ld	$a2,0($sp)
    # Line 1177
    ld	$s0,16($sp)
    # Line 1131
    trunc.w.s	$f6,$f6
    # Line 1177
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1131
    swc1	$f6,0($a2)
.L0d987600:
    # Line 1072
    li	$a3,0x8191
    bne	$s0,$a3,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d987454
    ld	$ra,40($sp)
.L0d987614:
    # Line 1072
    bne	$s0,$a4,.L0d987448
    # Line 1176
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1123
    lwc1	$f7,100($v0)
    # Line 1124
    ld	$a5,0($sp)
    # Line 1123
    trunc.w.s	$f7,$f7
    # Line 1124
    b	.L0d987450
    # Line 1123
    swc1	$f7,0($a5)
.L0d987630:
    # Line 1072
    bne	$s0,$a6,.L0d987444
    # Line 1152
    ld	$t0,0($sp)
    # Line 1151
    lw	$a7,68($v0)
    # Line 1152
    b	.L0d987450
    # Line 1151
    sw	$a7,0($t0)
.L0d987644:
    # Line 1087
    ld	$t2,0($sp)
    # Line 1086
    lw	$t1,20($v0)
    # Line 1087
    b	.L0d987450
    # Line 1086
    sw	$t1,0($t2)
.L0d987654:
    # Line 1120
    ld	$t8,0($sp)
    # Line 1119
    lw	$t3,96($v0)
    # Line 1120
    b	.L0d987450
    # Line 1119
    sw	$t3,0($t8)
.L0d987664:
    # Line 1148
    ld	$ra,0($sp)
    # Line 1147
    lw	$t9,64($v0)
    # Line 1148
    b	.L0d987450
    # Line 1147
    sw	$t9,0($ra)
.L0d987674:
    # Line 1139
    lwc1	$f8,76($v0)
    # Line 1140
    ld	$at,0($sp)
    # Line 1139
    trunc.w.s	$f8,$f8
    # Line 1140
    b	.L0d987450
    # Line 1139
    swc1	$f8,0($at)
.L0d987688:
    # Line 1100
    ld	$v0,8($sp)
    ld	$s0,32($sp)
    lwc1	$f14,3564($v0)
    lwc1	$f13,44($s0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($v0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a0,0($sp)
    trunc.w.s	$f15,$f0
    # Line 1101
    ld	$v1,8($sp)
    # Line 1100
    swc1	$f15,0($a0)
    # Line 1101
    lwc1	$f14,3564($v1)
    lwc1	$f13,48($s0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($v1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a2,0($sp)
    trunc.w.s	$f15,$f0
    # Line 1102
    ld	$a1,8($sp)
    # Line 1101
    swc1	$f15,4($a2)
    # Line 1102
    lwc1	$f14,3564($a1)
    lwc1	$f13,52($s0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($a1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a4,0($sp)
    trunc.w.s	$f15,$f0
    # Line 1103
    ld	$a3,8($sp)
    # Line 1102
    swc1	$f15,8($a4)
    # Line 1103
    lwc1	$f14,3564($a3)
    lwc1	$f13,56($s0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($a3)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a5,0($sp)
    trunc.w.s	$f16,$f0
    b	.L0d987450
    swc1	$f16,12($a5)
.end __glOdyim_GetTexParameteriv

# Function: __glOdyim_GetTexEnvfv
# Declared: Line 1183 (Source lines: 1185-1205)
# Address: 0x0d987740 - 0x0d987854 (Size: 276 bytes, Frame: 16)
.globl __glOdyim_GetTexEnvfv
.ent __glOdyim_GetTexEnvfv
__glOdyim_GetTexEnvfv:
    # Line 1185
    move	$a4,$a2
    addiu	$sp,$sp,-16
    # Line 1186
    lw	$at,4120($zero)
    lw	$t0,4112($zero)
    li	$v0,1
    # Line 1185
    lui	$v1,0x17
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,3664
    sd	$gp,0($sp)
    # Line 1186
    beq	$at,$v0,.L0d987840
    # Line 1185
    addu	$gp,$t9,$v1
    # Line 1186
    li	$a0,8960
    beq	$a7,$a0,.L0d987790
    # Line 1192
    li	$a2,8704
    # Line 1189
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9877b4
    ld	$ra,8($sp)
.L0d987790:
    # Line 1192
    beq	$a1,$a2,.L0d9877fc
    # Line 1194
    sll	$t8,$a7,0x3
    # Line 1192
    li	$a3,8705
    beq	$a1,$a3,.L0d9877c0
    # Line 1197
    move	$a0,$t0
    # Line 1202
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9877b4:
    # Line 1205
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9877c0:
    # Line 1197
    li	$a5,4
    li	$a3,1
    # lw $t9, -26304($gp) # &__glConvertResult
    sll	$t1,$a7,0x3
    li	$a1,5
    lw	$a2,2484($t0)
    addu	$a7,$t1,$a7
    lui	$a6,0xfffb
    sll	$a7,$a7,0x2
    ori	$a6,$a6,0x1404
    addu	$a2,$a2,$a7
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d9877b4
    ld	$ra,8($sp)
.L0d9877fc:
    # Line 1194
    lw	$t3,2484($t0)
    addu	$t8,$t8,$a7
    lui	$t2,0xfffb
    sll	$t8,$t8,0x2
    ori	$t2,$t2,0x1400
    addu	$t3,$t3,$t8
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f0
    cvt.s.l	$f0,$f0
    move	$ra,$ra
    # Line 1205
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1194
    swc1	$f0,0($a4)
.L0d987840:
    # Line 1186
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9877b4
    ld	$ra,8($sp)
.end __glOdyim_GetTexEnvfv

# Function: __glOdyim_GetTexEnviv
# Declared: Line 1207 (Source lines: 1209-1229)
# Address: 0x0d987860 - 0x0d987964 (Size: 260 bytes, Frame: 16)
.globl __glOdyim_GetTexEnviv
.ent __glOdyim_GetTexEnviv
__glOdyim_GetTexEnviv:
    # Line 1209
    move	$a4,$a2
    addiu	$sp,$sp,-16
    # Line 1210
    lw	$at,4120($zero)
    lw	$t0,4112($zero)
    li	$v0,1
    # Line 1209
    lui	$v1,0x17
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,3376
    sd	$gp,0($sp)
    # Line 1210
    beq	$at,$v0,.L0d987950
    # Line 1209
    addu	$gp,$t9,$v1
    # Line 1210
    li	$a0,8960
    beq	$a7,$a0,.L0d9878ac
    # Line 1213
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9878d0
    ld	$ra,8($sp)
.L0d9878ac:
    # Line 1216
    li	$a2,8704
    beq	$a1,$a2,.L0d98791c
    # Line 1218
    sll	$t8,$a7,0x3
    # Line 1216
    li	$a3,8705
    beq	$a1,$a3,.L0d9878dc
    # Line 1226
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9878d0:
    # Line 1229
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9878dc:
    # Line 1221
    move	$a0,$t0
    li	$a5,4
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    sll	$t1,$a7,0x3
    li	$a1,5
    lw	$a2,2484($t0)
    addu	$a7,$t1,$a7
    lui	$a6,0xfffb
    sll	$a7,$a7,0x2
    ori	$a6,$a6,0x1404
    addu	$a2,$a2,$a7
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d9878d0
    ld	$ra,8($sp)
.L0d98791c:
    # Line 1218
    lw	$t3,2484($t0)
    addu	$t8,$t8,$a7
    lui	$t2,0xfffb
    sll	$t8,$t8,0x2
    ori	$t2,$t2,0x1400
    addu	$t3,$t3,$t8
    # Line 1229
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 1218
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    # Line 1229
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1218
    sw	$t2,0($a4)
.L0d987950:
    # Line 1210
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9878d0
    ld	$ra,8($sp)
.end __glOdyim_GetTexEnviv

# Function: __glOdyim_GetDetailTexFuncSGIS
# Declared: Line 1234 (Source lines: 1235-1249)
# Address: 0x0d987970 - 0x0d987a08 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_GetDetailTexFuncSGIS
.ent __glOdyim_GetDetailTexFuncSGIS
__glOdyim_GetDetailTexFuncSGIS:
    # Line 1235
    move	$a3,$a0
    addiu	$sp,$sp,-32
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x17
    # Line 1238
    li	$a0,3553
    sd	$ra,16($sp)
    # Line 1235
    addiu	$v1,$v1,3104
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d9879f4
    addu	$gp,$t9,$v1
    # Line 1238
    beq	$a3,$a0,.L0d9879c0
    sd	$a1,0($sp)
    # Line 1241
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d9879b4:
    # Line 1249
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9879c0:
    # Line 1245
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a1,$a3
    jal	__glOdysseyGetCurrentTexture
    lw	$a0,4112($zero)
    # Line 1247
    # lw $t9, -17016($gp) # &memcpy
    lw	$a2,1284($v0)
    ld	$a0,0($sp)
    lw	$a1,1288($v0)
    addu	$a2,$a2,$a2
    jal	memcpy
    sll	$a2,$a2,0x2
    b	.L0d9879b4
    ld	$ra,16($sp)
.L0d9879f4:
    # Line 1238
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9879b4
    ld	$ra,16($sp)
.end __glOdyim_GetDetailTexFuncSGIS

# Function: __glOdyim_GetMaterialfv
# Declared: Line 1283 (Source lines: 1284-1304)
# Address: 0x0d987a10 - 0x0d987ac8 (Size: 184 bytes, Frame: 16)
.globl __glOdyim_GetMaterialfv
.ent __glOdyim_GetMaterialfv
__glOdyim_GetMaterialfv:
    # Line 1286
    lw	$a4,4112($zero)
    # Line 1289
    li	$t0,4609
    li	$a7,4608
    li	$v1,1028
    lw	$at,1792($a4)
    li	$a3,1029
    # Line 1284
    addiu	$sp,$sp,-16
    lui	$v0,0x17
    # Line 1289
    andi	$at,$at,0x80
    li	$a6,5634
    sd	$ra,8($sp)
    # Line 1284
    addiu	$v0,$v0,2944
    sd	$gp,0($sp)
    # Line 1289
    beqz	$at,.L0d987a90
    # Line 1284
    addu	$gp,$t9,$v0
    # Line 1289
    lw	$a5,1384($a4)
    beq	$a5,$a0,.L0d987a70
    li	$v0,1032
    bne	$a5,$v0,.L0d987a94
    # Line 1301
    nop	# was lw $t9, -26336($gp) # &__glim_GetMaterialfv
    # Line 1289
    beq	$a0,$v1,.L0d987a70
    nop
    bne	$a0,$a3,.L0d987a94
    # Line 1301
    nop	# was lw $t9, -26336($gp) # &__glim_GetMaterialfv
.L0d987a70:
    # Line 1289
    lw	$a5,1388($a4)
    beq	$a5,$a1,.L0d987aac
    nop
    bne	$a5,$a6,.L0d987a94
    # Line 1301
    nop	# was lw $t9, -26336($gp) # &__glim_GetMaterialfv
    # Line 1289
    beq	$a1,$a7,.L0d987aac
    nop
    beq	$a1,$t0,.L0d987aac
.L0d987a90:
    # Line 1301
    nop	# was lw $t9, -26336($gp) # &__glim_GetMaterialfv
.L0d987a94:
    jal	__glim_GetMaterialfv
    nop
    ld	$ra,8($sp)
.L0d987aa0:
    # Line 1304
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d987aac:
    # Line 1297
    lw	$t9,6132($a4)
    lw	$t9,496($t9)
    move	$a1,$a2
    jalr	$t9
    li	$a0,2816
    b	.L0d987aa0
    ld	$ra,8($sp)
.end __glOdyim_GetMaterialfv

# Function: __glOdyim_GetMaterialiv
# Declared: Line 1306 (Source lines: 1307-1327)
# Address: 0x0d987ad0 - 0x0d987b88 (Size: 184 bytes, Frame: 16)
.globl __glOdyim_GetMaterialiv
.ent __glOdyim_GetMaterialiv
__glOdyim_GetMaterialiv:
    # Line 1309
    lw	$a4,4112($zero)
    # Line 1312
    li	$t0,4609
    li	$a7,4608
    li	$v1,1028
    lw	$at,1792($a4)
    li	$a3,1029
    # Line 1307
    addiu	$sp,$sp,-16
    lui	$v0,0x17
    # Line 1312
    andi	$at,$at,0x80
    li	$a6,5634
    sd	$ra,8($sp)
    # Line 1307
    addiu	$v0,$v0,2752
    sd	$gp,0($sp)
    # Line 1312
    beqz	$at,.L0d987b50
    # Line 1307
    addu	$gp,$t9,$v0
    # Line 1312
    lw	$a5,1384($a4)
    beq	$a5,$a0,.L0d987b30
    li	$v0,1032
    bne	$a5,$v0,.L0d987b54
    # Line 1324
    nop	# was lw $t9, -26332($gp) # &__glim_GetMaterialiv
    # Line 1312
    beq	$a0,$v1,.L0d987b30
    nop
    bne	$a0,$a3,.L0d987b54
    # Line 1324
    nop	# was lw $t9, -26332($gp) # &__glim_GetMaterialiv
.L0d987b30:
    # Line 1312
    lw	$a5,1388($a4)
    beq	$a5,$a1,.L0d987b6c
    nop
    bne	$a5,$a6,.L0d987b54
    # Line 1324
    nop	# was lw $t9, -26332($gp) # &__glim_GetMaterialiv
    # Line 1312
    beq	$a1,$a7,.L0d987b6c
    nop
    beq	$a1,$t0,.L0d987b6c
.L0d987b50:
    # Line 1324
    nop	# was lw $t9, -26332($gp) # &__glim_GetMaterialiv
.L0d987b54:
    jal	__glim_GetMaterialiv
    nop
    ld	$ra,8($sp)
.L0d987b60:
    # Line 1327
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d987b6c:
    # Line 1320
    lw	$t9,6132($a4)
    lw	$t9,500($t9)
    move	$a1,$a2
    jalr	$t9
    li	$a0,2816
    b	.L0d987b60
    ld	$ra,8($sp)
.end __glOdyim_GetMaterialiv

# Function: __glOdyim_GetFogFuncSGIS
# Declared: Line 1448 (Source lines: 1448-1453)
# Address: 0x0d987b90 - 0x0d987c00 (Size: 112 bytes, Frame: 16)
.globl __glOdyim_GetFogFuncSGIS
.ent __glOdyim_GetFogFuncSGIS
__glOdyim_GetFogFuncSGIS:
    # Line 1448
    addiu	$sp,$sp,-16
    # Line 1450
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 1448
    lui	$v1,0x17
    sd	$ra,8($sp)
    addiu	$v1,$v1,2560
    sd	$gp,0($sp)
    # Line 1450
    beq	$at,$v0,.L0d987bec
    # Line 1448
    addu	$gp,$t9,$v1
    # Line 1452
    lui	$a1,0x1
    # lw $t9, -17016($gp) # &memcpy
    ori	$a2,$a1,0x6430
    addu	$a2,$a2,$a4
    ori	$a1,$a1,0x6434
    lw	$a2,0($a2)
    addu	$a1,$a4,$a1
    jal	memcpy
    sll	$a2,$a2,0x3
    ld	$ra,8($sp)
.L0d987be0:
    # Line 1453
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d987bec:
    # Line 1450
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d987be0
    ld	$ra,8($sp)
.end __glOdyim_GetFogFuncSGIS

# Function: __glOdyim_GetFragmentLightfvSGIX
# Declared: Line 1456 (Source lines: 1456-1505)
# Address: 0x0d987c00 - 0x0d987ef0 (Size: 752 bytes, Frame: 16)
.globl __glOdyim_GetFragmentLightfvSGIX
.ent __glOdyim_GetFragmentLightfvSGIX
__glOdyim_GetFragmentLightfvSGIX:
    # Line 1456
    move	$a6,$a2
    addiu	$sp,$sp,-16
    # Line 1459
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 1456
    lui	$v1,0x17
    move	$a4,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,2448
    sd	$gp,0($sp)
    # Line 1459
    beq	$at,$v0,.L0d987edc
    # Line 1456
    addu	$gp,$t9,$v1
    # Line 1459
    lui	$a0,0xffff
    ori	$a0,$a0,0x7bf4
    addu	$a0,$a4,$a0
    beqz	$a0,.L0d987c5c
    # Line 1462
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d987c4c:
    ld	$ra,8($sp)
.L0d987c50:
    # Line 1505
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d987c5c:
    # Line 1466
    addiu	$a2,$a1,-4608
    la	$a0,sub_0daf0000
    sltiu	$a3,$a2,10
    sll	$a2,$a2,0x2
    addiu	$a0,$a0,-28920
    beqz	$a3,.L0d987c84
    addu	$a0,$a0,$a2
    lw	$a1,0($a0)
    jr	$a1
    # Line 1472
    sll	$a2,$a4,0x3
.L0d987c84:
    # Line 1504
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d987c50
    ld	$ra,8($sp)
.L0d987c98:
    # Line 1469
    sll	$a2,$a4,0x3
    subu	$a2,$a2,$a4
    move	$a0,$a5
    sll	$a2,$a2,0x2
    move	$a1,$a6
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    addu	$a2,$a2,$a4
    lui	$a3,0xffc5
    sll	$a2,$a2,0x2
    ori	$a3,$a3,0x8f10
    addu	$a2,$a5,$a2
    jal	__glUnScaleColorf
    addu	$a2,$a2,$a3
    b	.L0d987c50
    ld	$ra,8($sp)
.L0d987cd4:
    # Line 1501
    sll	$a7,$a4,0x3
    subu	$a7,$a7,$a4
    sll	$a7,$a7,0x2
    addu	$a4,$a7,$a4
    lui	$a3,0xffc5
    sll	$a4,$a4,0x2
    ori	$a3,$a3,0x8f80
    addu	$a4,$a5,$a4
    addu	$a3,$a3,$a4
    move	$ra,$ra
    lwc1	$f0,0($a3)
    # Line 1505
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1501
    swc1	$f0,0($a6)
.L0d987d10:
    # Line 1498
    sll	$t1,$a4,0x3
    subu	$t1,$t1,$a4
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a4
    lui	$t0,0xffc5
    sll	$t1,$t1,0x2
    ori	$t0,$t0,0x8f7c
    addu	$t1,$a5,$t1
    addu	$t0,$t0,$t1
    move	$ra,$ra
    lwc1	$f1,0($t0)
    # Line 1505
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1498
    swc1	$f1,0($a6)
.L0d987d4c:
    # Line 1495
    sll	$t3,$a4,0x3
    subu	$t3,$t3,$a4
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$a4
    lui	$t2,0xffc5
    sll	$t3,$t3,0x2
    ori	$t2,$t2,0x8f78
    addu	$t3,$a5,$t3
    addu	$t2,$t2,$t3
    move	$ra,$ra
    lwc1	$f2,0($t2)
    # Line 1505
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1495
    swc1	$f2,0($a6)
.L0d987d88:
    # Line 1492
    sll	$t9,$a4,0x3
    subu	$t9,$t9,$a4
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$a4
    lui	$t8,0xffc5
    sll	$t9,$t9,0x2
    ori	$t8,$t8,0x8f74
    addu	$t9,$a5,$t9
    addu	$t8,$t8,$t9
    lwc1	$f3,0($t8)
    # Line 1493
    b	.L0d987c4c
    # Line 1492
    swc1	$f3,0($a6)
.L0d987db8:
    # Line 1489
    sll	$at,$a4,0x3
    subu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$at,$at,$a4
    lui	$ra,0xffc5
    sll	$at,$at,0x2
    ori	$ra,$ra,0x8f70
    addu	$at,$a5,$at
    addu	$ra,$ra,$at
    lwc1	$f4,0($ra)
    # Line 1490
    b	.L0d987c4c
    # Line 1489
    swc1	$f4,0($a6)
.L0d987de8:
    # Line 1484
    sll	$v0,$a4,0x3
    subu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    lui	$v1,0xffc6
    addu	$v0,$a5,$v0
    addu	$v0,$v0,$v1
    lwc1	$f7,-28832($v0)
    swc1	$f7,0($a6)
    # Line 1485
    lwc1	$f6,-28828($v0)
    swc1	$f6,4($a6)
    # Line 1486
    lwc1	$f5,-28824($v0)
    # Line 1487
    b	.L0d987c4c
    # Line 1486
    swc1	$f5,8($a6)
.L0d987e24:
    # Line 1478
    sll	$v1,$a4,0x3
    subu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    lui	$a0,0xffc6
    addu	$v1,$a5,$v1
    addu	$v1,$v1,$a0
    lwc1	$f11,-28848($v1)
    swc1	$f11,0($a6)
    # Line 1479
    lwc1	$f10,-28844($v1)
    swc1	$f10,4($a6)
    # Line 1480
    lwc1	$f9,-28840($v1)
    swc1	$f9,8($a6)
    # Line 1481
    lwc1	$f8,-28836($v1)
    # Line 1482
    b	.L0d987c4c
    # Line 1481
    swc1	$f8,12($a6)
.L0d987e68:
    # Line 1475
    sll	$a2,$a4,0x3
    subu	$a2,$a2,$a4
    move	$a0,$a5
    sll	$a2,$a2,0x2
    move	$a1,$a6
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    addu	$a2,$a2,$a4
    lui	$a3,0xffc5
    sll	$a2,$a2,0x2
    ori	$a3,$a3,0x8f30
    addu	$a2,$a5,$a2
    jal	__glUnScaleColorf
    addu	$a2,$a2,$a3
    b	.L0d987c50
    ld	$ra,8($sp)
.L0d987ea4:
    # Line 1472
    subu	$a2,$a2,$a4
    move	$a0,$a5
    sll	$a2,$a2,0x2
    move	$a1,$a6
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    addu	$a2,$a2,$a4
    lui	$a3,0xffc5
    sll	$a2,$a2,0x2
    ori	$a3,$a3,0x8f20
    addu	$a2,$a5,$a2
    jal	__glUnScaleColorf
    addu	$a2,$a2,$a3
    b	.L0d987c50
    ld	$ra,8($sp)
.L0d987edc:
    # Line 1459
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d987c50
    ld	$ra,8($sp)
.end __glOdyim_GetFragmentLightfvSGIX

# Function: __glOdyim_GetFragmentLightivSGIX
# Declared: Line 1510 (Source lines: 1510-1561)
# Address: 0x0d987ef0 - 0x0d988228 (Size: 824 bytes, Frame: 16)
.globl __glOdyim_GetFragmentLightivSGIX
.ent __glOdyim_GetFragmentLightivSGIX
__glOdyim_GetFragmentLightivSGIX:
    # Line 1510
    move	$a4,$a2
    addiu	$sp,$sp,-16
    # Line 1513
    lw	$at,4120($zero)
    lw	$t0,4112($zero)
    li	$v0,1
    # Line 1510
    lui	$v1,0x17
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,1696
    sd	$gp,0($sp)
    # Line 1513
    beq	$at,$v0,.L0d988214
    # Line 1510
    addu	$gp,$t9,$v1
    # Line 1513
    lui	$a0,0xffff
    ori	$a0,$a0,0x7bf4
    addu	$a0,$a7,$a0
    beqz	$a0,.L0d987f4c
    # Line 1516
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d987f40:
    # Line 1561
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d987f4c:
    # Line 1520
    la	$a0,sub_0daf0000
    addiu	$a2,$a1,-4608
    sltiu	$a3,$a2,10
    addiu	$a0,$a0,-28880
    sll	$a2,$a2,0x2
    beqz	$a3,.L0d987f74
    addu	$a0,$a0,$a2
    lw	$a1,0($a0)
    jr	$a1
    # Line 1552
    move	$a0,$t0
.L0d987f74:
    # Line 1560
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d987f88:
    # Line 1523
    sll	$a2,$a7,0x3
    subu	$a2,$a2,$a7
    move	$a0,$t0
    sll	$a2,$a2,0x2
    move	$a1,$a4
    # lw $t9, -26148($gp) # &__glUnScaleColori
    addu	$a2,$a2,$a7
    lui	$a3,0xffc5
    sll	$a2,$a2,0x2
    ori	$a3,$a3,0x8f10
    addu	$a2,$t0,$a2
    jal	__glUnScaleColori
    addu	$a2,$a2,$a3
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d987fc4:
    # Line 1556
    move	$a0,$t0
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,1
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f80
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d988008:
    # Line 1552
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,1
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f7c
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d988048:
    # Line 1548
    move	$a0,$t0
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,1
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f78
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d98808c:
    # Line 1544
    move	$a0,$t0
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,1
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f74
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d9880d0:
    # Line 1540
    move	$a0,$t0
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,1
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f70
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d988114:
    # Line 1536
    move	$a0,$t0
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,3
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f60
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d988158:
    # Line 1532
    move	$a0,$t0
    sll	$a2,$a7,0x3
    move	$a1,$zero
    subu	$a2,$a2,$a7
    li	$a5,4
    sll	$a2,$a2,0x2
    li	$a3,3
    # lw $t9, -26304($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xffc5
    sll	$a2,$a2,0x2
    ori	$a6,$a6,0x8f50
    addu	$a2,$t0,$a2
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d98819c:
    # Line 1529
    sll	$a2,$a7,0x3
    subu	$a2,$a2,$a7
    move	$a0,$t0
    sll	$a2,$a2,0x2
    move	$a1,$a4
    # lw $t9, -26148($gp) # &__glUnScaleColori
    addu	$a2,$a2,$a7
    lui	$a3,0xffc5
    sll	$a2,$a2,0x2
    ori	$a3,$a3,0x8f30
    addu	$a2,$t0,$a2
    jal	__glUnScaleColori
    addu	$a2,$a2,$a3
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d9881d8:
    # Line 1526
    sll	$a2,$a7,0x3
    subu	$a2,$a2,$a7
    move	$a0,$t0
    sll	$a2,$a2,0x2
    move	$a1,$a4
    # lw $t9, -26148($gp) # &__glUnScaleColori
    addu	$a2,$a2,$a7
    lui	$a3,0xffc5
    sll	$a2,$a2,0x2
    ori	$a3,$a3,0x8f20
    addu	$a2,$t0,$a2
    jal	__glUnScaleColori
    addu	$a2,$a2,$a3
    b	.L0d987f40
    ld	$ra,8($sp)
.L0d988214:
    # Line 1513
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d987f40
    ld	$ra,8($sp)
.end __glOdyim_GetFragmentLightivSGIX

# Function: __glOdyim_GetFragmentMaterialfvSGIX
# Declared: Line 1566 (Source lines: 1566-1616)
# Address: 0x0d988230 - 0x0d9883d0 (Size: 416 bytes, Frame: 16)
.globl __glOdyim_GetFragmentMaterialfvSGIX
.ent __glOdyim_GetFragmentMaterialfvSGIX
__glOdyim_GetFragmentMaterialfvSGIX:
    # Line 1575
    lui	$a6,0x1
    # Line 1566
    addiu	$sp,$sp,-16
    # Line 1568
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 1566
    lui	$v1,0x17
    move	$a5,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,864
    sd	$gp,0($sp)
    # Line 1568
    beq	$at,$v0,.L0d9883a0
    # Line 1566
    addu	$gp,$t9,$v1
    # Line 1570
    li	$a2,1028
    beq	$a0,$a2,.L0d988308
    li	$a3,1029
    beq	$a0,$a3,.L0d988288
    # Line 1575
    ori	$a6,$a6,0x6544
    # Line 1578
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9882d0
    ld	$ra,8($sp)
.L0d988288:
    # Line 1575
    addu	$a6,$a4,$a6
.L0d98828c:
    # Line 1582
    li	$a7,5635
    beq	$a1,$a7,.L0d988318
    li	$t0,5633
    beq	$a1,$t0,.L0d988340
    li	$t1,5632
    beq	$a1,$t1,.L0d9883b4
    li	$t2,4608
    beq	$a1,$t2,.L0d98834c
    li	$t3,4609
    beq	$a1,$t3,.L0d98837c
    li	$t8,4610
    ld	$ra,8($sp)
    beq	$a1,$t8,.L0d9882dc
    # Line 1613
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9882cc:
    ld	$ra,8($sp)
.L0d9882d0:
    # Line 1616
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9882dc:
    # Line 1607
    lwc1	$f3,32($a6)
    swc1	$f3,0($a5)
    # Line 1608
    lwc1	$f2,36($a6)
    swc1	$f2,4($a5)
    # Line 1609
    lwc1	$f1,40($a6)
    swc1	$f1,8($a5)
    # Line 1610
    lwc1	$f0,44($a6)
    # Line 1616
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1610
    swc1	$f0,12($a5)
.L0d988308:
    # Line 1572
    lui	$a6,0x1
    ori	$a6,$a6,0x64f4
    b	.L0d98828c
    addu	$a6,$a4,$a6
.L0d988318:
    # Line 1584
    lwc1	$f6,68($a6)
    swc1	$f6,0($a5)
    # Line 1585
    lwc1	$f5,76($a6)
    ld	$ra,8($sp)
    swc1	$f5,4($a5)
    # Line 1586
    lwc1	$f4,72($a6)
    # Line 1616
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1586
    swc1	$f4,8($a5)
.L0d988340:
    # Line 1589
    lwc1	$f7,64($a6)
    # Line 1590
    b	.L0d9882cc
    # Line 1589
    swc1	$f7,0($a5)
.L0d98834c:
    # Line 1595
    lwc1	$f11,0($a6)
    swc1	$f11,0($a5)
    # Line 1596
    lwc1	$f10,4($a6)
    swc1	$f10,4($a5)
    # Line 1597
    lwc1	$f9,8($a6)
    ld	$ra,8($sp)
    swc1	$f9,8($a5)
    # Line 1598
    lwc1	$f8,12($a6)
    # Line 1616
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1598
    swc1	$f8,12($a5)
.L0d98837c:
    # Line 1601
    lwc1	$f15,16($a6)
    swc1	$f15,0($a5)
    # Line 1602
    lwc1	$f14,20($a6)
    swc1	$f14,4($a5)
    # Line 1603
    lwc1	$f13,24($a6)
    swc1	$f13,8($a5)
    # Line 1604
    lwc1	$f12,28($a6)
    # Line 1605
    b	.L0d9882cc
    # Line 1604
    swc1	$f12,12($a5)
.L0d9883a0:
    # Line 1568
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9882d0
    ld	$ra,8($sp)
.L0d9883b4:
    # Line 1592
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    move	$a0,$a4
    move	$a1,$a5
    jal	__glUnScaleColorf
    addiu	$a2,$a6,48
    b	.L0d9882d0
    ld	$ra,8($sp)
.end __glOdyim_GetFragmentMaterialfvSGIX

# Function: __glOdyim_GetFragmentMaterialivSGIX
# Declared: Line 1619 (Source lines: 1619-1669)
# Address: 0x0d9883d0 - 0x0d988770 (Size: 928 bytes, Frame: 48)
.globl __glOdyim_GetFragmentMaterialivSGIX
.ent __glOdyim_GetFragmentMaterialivSGIX
__glOdyim_GetFragmentMaterialivSGIX:
    # Line 1619
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 1621
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 1619
    lui	$v1,0x17
    sd	$ra,32($sp)
    addiu	$v1,$v1,448
    sd	$gp,24($sp)
    # Line 1621
    beq	$at,$v0,.L0d988564
    # Line 1619
    addu	$gp,$t9,$v1
    # Line 1623
    li	$a3,1028
    beq	$a0,$a3,.L0d98848c
    sd	$a2,8($sp)
    li	$a4,1029
    beq	$a0,$a4,.L0d988424
    # Line 1631
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98847c
    ld	$ra,32($sp)
.L0d988424:
    # Line 1628
    lui	$a5,0x1
    ori	$a5,$a5,0x6544
    addu	$a5,$s0,$a5
    sd	$a5,0($sp)
.L0d988434:
    # Line 1635
    li	$a6,5635
    beq	$a1,$a6,.L0d988578
    # Line 1637
    nop	# was lw $t9, -26304($gp) # &__glConvertResult
    # Line 1635
    li	$a7,5633
    beq	$a1,$a7,.L0d9885a0
    li	$t0,5632
    beq	$a1,$t0,.L0d9885cc
    li	$t1,4608
    beq	$a1,$t1,.L0d9885ec
    # Line 1648
    ld	$a3,0($sp)
    # Line 1635
    li	$t2,4609
    beq	$a1,$t2,.L0d9886ac
    li	$t3,4610
    beq	$a1,$t3,.L0d9884a0
    # Line 1666
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d98847c:
    ld	$s0,16($sp)
    # Line 1669
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98848c:
    # Line 1625
    lui	$t8,0x1
    ori	$t8,$t8,0x64f4
    addu	$t8,$s0,$t8
    b	.L0d988434
    sd	$t8,0($sp)
.L0d9884a0:
    # Line 1660
    ld	$t9,0($sp)
    lwc1	$f14,3564($s0)
    lwc1	$f13,32($t9)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$at,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1661
    ld	$ra,0($sp)
    # Line 1660
    swc1	$f15,0($at)
    # Line 1661
    lwc1	$f14,3564($s0)
    lwc1	$f13,36($ra)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1662
    ld	$v0,0($sp)
    # Line 1661
    swc1	$f15,4($v1)
    # Line 1662
    lwc1	$f14,3564($s0)
    lwc1	$f13,40($v0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1663
    ld	$a0,0($sp)
    # Line 1662
    swc1	$f15,8($a1)
    # Line 1663
    lwc1	$f14,3564($s0)
    lwc1	$f13,44($a0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 1669
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 1663
    ld	$a2,8($sp)
    # Line 1669
    ld	$s0,16($sp)
    # Line 1663
    trunc.w.s	$f16,$f0
    # Line 1669
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1663
    swc1	$f16,12($a2)
.L0d988564:
    # Line 1621
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98847c
    ld	$ra,32($sp)
.L0d988578:
    # Line 1637
    move	$a0,$s0
    move	$a1,$zero
    ld	$a2,0($sp)
    li	$a5,3
    li	$a3,3
    ld	$a4,8($sp)
    jalr	$t9
    addiu	$a2,$a2,68
    b	.L0d98847c
    ld	$ra,32($sp)
.L0d9885a0:
    # Line 1641
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a0,$s0
    move	$a1,$zero
    ld	$a2,0($sp)
    li	$a5,1
    li	$a3,3
    ld	$a4,8($sp)
    jal	__glConvertResult
    addiu	$a2,$a2,64
    b	.L0d98847c
    ld	$ra,32($sp)
.L0d9885cc:
    # Line 1645
    # lw $t9, -26148($gp) # &__glUnScaleColori
    ld	$a2,0($sp)
    move	$a0,$s0
    ld	$a1,8($sp)
    jal	__glUnScaleColori
    addiu	$a2,$a2,48
    b	.L0d98847c
    ld	$ra,32($sp)
.L0d9885ec:
    # Line 1648
    lwc1	$f14,3564($s0)
    lwc1	$f13,0($a3)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a5,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1649
    ld	$a4,0($sp)
    # Line 1648
    swc1	$f15,0($a5)
    # Line 1649
    lwc1	$f14,3564($s0)
    lwc1	$f13,4($a4)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a7,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1650
    ld	$a6,0($sp)
    # Line 1649
    swc1	$f15,4($a7)
    # Line 1650
    lwc1	$f14,3564($s0)
    lwc1	$f13,8($a6)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$t1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1651
    ld	$t0,0($sp)
    # Line 1650
    swc1	$f15,8($t1)
    # Line 1651
    lwc1	$f14,3564($s0)
    lwc1	$f13,12($t0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 1669
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 1651
    ld	$t2,8($sp)
    # Line 1669
    ld	$s0,16($sp)
    # Line 1651
    trunc.w.s	$f16,$f0
    # Line 1669
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1651
    swc1	$f16,12($t2)
.L0d9886ac:
    # Line 1654
    ld	$t3,0($sp)
    lwc1	$f14,3564($s0)
    lwc1	$f13,16($t3)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$t9,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1655
    ld	$t8,0($sp)
    # Line 1654
    swc1	$f15,0($t9)
    # Line 1655
    lwc1	$f14,3564($s0)
    lwc1	$f13,20($t8)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$at,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1656
    ld	$ra,0($sp)
    # Line 1655
    swc1	$f15,4($at)
    # Line 1656
    lwc1	$f14,3564($s0)
    lwc1	$f13,24($ra)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1657
    ld	$v0,0($sp)
    # Line 1656
    swc1	$f15,8($v1)
    # Line 1657
    lwc1	$f14,3564($s0)
    lwc1	$f13,28($v0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 1669
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 1657
    ld	$a0,8($sp)
    # Line 1669
    ld	$s0,16($sp)
    # Line 1657
    trunc.w.s	$f16,$f0
    # Line 1669
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1657
    swc1	$f16,12($a0)
.end __glOdyim_GetFragmentMaterialivSGIX

.late_rodata
jtbl_0dae8cf0:
    .word .L0d985ca4
    .word .L0d9862e0
    .word .L0d985ca4
    .word .L0d9862e0
    .word .L0d985ca4
    .word .L0d9862e0
    .word .L0d985ca4
    .word .L0d9862e0
    .word .L0d985c1c
    .word .L0d986278
    .word .L0d986210
    .word .L0d9861a8
    .word .L0d986140
    .word .L0d9860e0
    .word .L0d9860c0
    .word .L0d98606c
    .word .L0d985fe8
    .word .L0d985f64
    .word .L0d985ee0
    .word .L0d985e5c
    .word .L0d985de0
    .word .L0d985c64
    .word .L0d9861a8
    .word .L0d986140
    .word .L0d9860e0
    .word .L0d985dd8
    .word .L0d985ca4
    .word .L0d985ca4
    .word .L0d985ca4
    .word .L0d985dd8
    .word .L0d985db4
    .word .L0d985d90
    .word .L0d985d68
    .word .L0d985d3c
    .word .L0d985d10
    .word .L0d985ce4
    .word .L0d985cdc
    .word .L0d985cd4
    .word .L0d985db4
    .word .L0d985d90
    .word .L0d985d68
    .word .L0d985d3c
    .word .L0d985d10
    .word .L0d985ce4
    .word .L0d985cdc
    .word .L0d985cd4
    .word .L0d985cac
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985dd8
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c8c
    .word .L0d985c8c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c94
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c8c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c8c
    .word .L0d985c94
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c9c
    .word .L0d985c8c
    .word .L0d985c94
jtbl_0dae8f08:
    .word .L0d987c98
    .word .L0d987ea4
    .word .L0d987e68
    .word .L0d987e24
    .word .L0d987de8
    .word .L0d987db8
    .word .L0d987d88
    .word .L0d987d4c
    .word .L0d987d10
    .word .L0d987cd4
jtbl_0dae8f30:
    .word .L0d987f88
    .word .L0d9881d8
    .word .L0d98819c
    .word .L0d988158
    .word .L0d988114
    .word .L0d9880d0
    .word .L0d98808c
    .word .L0d988048
    .word .L0d988008
    .word .L0d987fc4

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_45800000:
    .word 0x45800000

