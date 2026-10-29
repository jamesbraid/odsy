# Source: ../ODYSSEY/ody_soft_get.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_soft_get.c
# Total Functions: 6

.text

# Function: __glOdyim_SoftGetDoublev
# Declared: Line 49 (Source lines: 50-64)
# Address: 0x0d9f3e70 - 0x0d9f3eec (Size: 124 bytes, Frame: 16)
.globl __glOdyim_SoftGetDoublev
.ent __glOdyim_SoftGetDoublev
__glOdyim_SoftGetDoublev:
    # Line 50
    addiu	$sp,$sp,-16
    # Line 51
    li	$at,2816
    # Line 50
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,18208
    sd	$gp,0($sp)
    # Line 51
    beq	$a0,$at,.L0d9f3ed8
    # Line 50
    addu	$gp,$t9,$v0
    # Line 51
    li	$v1,2817
    beq	$a0,$v1,.L0d9f3edc
    # Line 57
    nop	# was lw $t9, -26296($gp) # &__glim_GetDoublev
    # Line 51
    li	$a2,2818
    beq	$a0,$a2,.L0d9f3edc
    # Line 57
    nop	# was lw $t9, -26296($gp) # &__glim_GetDoublev
    # Line 51
    li	$a3,2819
    beq	$a0,$a3,.L0d9f3edc
    # Line 57
    nop	# was lw $t9, -26296($gp) # &__glim_GetDoublev
    # Line 51
    li	$a4,2883
    beq	$a0,$a4,.L0d9f3ed8
    # Line 61
    nop	# was lw $t9, -31644($gp) # &__glOdyim_GetDoublev
    jal	__glOdyim_GetDoublev
    nop
    ld	$ra,8($sp)
.L0d9f3ecc:
    # Line 64
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f3ed8:
    # Line 57
    # lw $t9, -26296($gp) # &__glim_GetDoublev
.L0d9f3edc:
    jal	__glim_GetDoublev
    nop
    b	.L0d9f3ecc
    ld	$ra,8($sp)
.end __glOdyim_SoftGetDoublev

# Function: __glOdyim_SoftGetFloatv
# Declared: Line 67 (Source lines: 68-82)
# Address: 0x0d9f3ef0 - 0x0d9f3f68 (Size: 120 bytes, Frame: 16)
.globl __glOdyim_SoftGetFloatv
.ent __glOdyim_SoftGetFloatv
__glOdyim_SoftGetFloatv:
    # Line 68
    addiu	$sp,$sp,-16
    # Line 69
    li	$at,2816
    # Line 68
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,18080
    sd	$gp,0($sp)
    # Line 69
    beq	$a0,$at,.L0d9f3f54
    # Line 68
    addu	$gp,$t9,$v0
    # Line 69
    li	$v1,2817
    beq	$a0,$v1,.L0d9f3f58
    # Line 75
    nop	# was lw $t9, -26292($gp) # &__glim_GetFloatv
    # Line 69
    li	$a2,2818
    beq	$a0,$a2,.L0d9f3f54
    li	$a3,2819
    beq	$a0,$a3,.L0d9f3f54
    li	$a4,2883
    beq	$a0,$a4,.L0d9f3f58
    # Line 75
    nop	# was lw $t9, -26292($gp) # &__glim_GetFloatv
    # Line 79
    # lw $t9, -31640($gp) # &__glOdyim_GetFloatv
    jal	__glOdyim_GetFloatv
    nop
    ld	$ra,8($sp)
.L0d9f3f48:
    # Line 82
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f3f54:
    # Line 75
    # lw $t9, -26292($gp) # &__glim_GetFloatv
.L0d9f3f58:
    jal	__glim_GetFloatv
    nop
    b	.L0d9f3f48
    ld	$ra,8($sp)
.end __glOdyim_SoftGetFloatv

# Function: __glOdyim_SoftGetIntegerv
# Declared: Line 85 (Source lines: 86-100)
# Address: 0x0d9f3f70 - 0x0d9f3fe4 (Size: 116 bytes, Frame: 16)
.globl __glOdyim_SoftGetIntegerv
.ent __glOdyim_SoftGetIntegerv
__glOdyim_SoftGetIntegerv:
    # Line 86
    addiu	$sp,$sp,-16
    # Line 87
    li	$at,2816
    # Line 86
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,17952
    sd	$gp,0($sp)
    # Line 87
    beq	$a0,$at,.L0d9f3fd0
    # Line 86
    addu	$gp,$t9,$v0
    # Line 87
    li	$v1,2817
    beq	$a0,$v1,.L0d9f3fd0
    li	$a2,2818
    beq	$a0,$a2,.L0d9f3fd4
    # Line 93
    nop	# was lw $t9, -26288($gp) # &__glim_GetIntegerv
    # Line 87
    li	$a3,2819
    beq	$a0,$a3,.L0d9f3fd0
    li	$a4,2883
    beq	$a0,$a4,.L0d9f3fd0
    # Line 97
    nop	# was lw $t9, -31636($gp) # &__glOdyim_GetIntegerv
    jal	__glOdyim_GetIntegerv
    nop
    ld	$ra,8($sp)
.L0d9f3fc4:
    # Line 100
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f3fd0:
    # Line 93
    # lw $t9, -26288($gp) # &__glim_GetIntegerv
.L0d9f3fd4:
    jal	__glim_GetIntegerv
    nop
    b	.L0d9f3fc4
    ld	$ra,8($sp)
.end __glOdyim_SoftGetIntegerv

# Function: __glOdyim_SoftGetBooleanv
# Declared: Line 103 (Source lines: 104-118)
# Address: 0x0d9f3ff0 - 0x0d9f4068 (Size: 120 bytes, Frame: 16)
.globl __glOdyim_SoftGetBooleanv
.ent __glOdyim_SoftGetBooleanv
__glOdyim_SoftGetBooleanv:
    # Line 104
    addiu	$sp,$sp,-16
    # Line 105
    li	$at,2816
    # Line 104
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,17824
    sd	$gp,0($sp)
    # Line 105
    beq	$a0,$at,.L0d9f4054
    # Line 104
    addu	$gp,$t9,$v0
    # Line 105
    li	$v1,2817
    beq	$a0,$v1,.L0d9f4054
    li	$a2,2818
    beq	$a0,$a2,.L0d9f4058
    # Line 111
    nop	# was lw $t9, -26284($gp) # &__glim_GetBooleanv
    # Line 105
    li	$a3,2819
    beq	$a0,$a3,.L0d9f4054
    li	$a4,2883
    beq	$a0,$a4,.L0d9f4058
    # Line 111
    nop	# was lw $t9, -26284($gp) # &__glim_GetBooleanv
    # Line 115
    # lw $t9, -31632($gp) # &__glOdyim_GetBooleanv
    jal	__glOdyim_GetBooleanv
    nop
    ld	$ra,8($sp)
.L0d9f4048:
    # Line 118
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f4054:
    # Line 111
    # lw $t9, -26284($gp) # &__glim_GetBooleanv
.L0d9f4058:
    jal	__glim_GetBooleanv
    nop
    b	.L0d9f4048
    ld	$ra,8($sp)
.end __glOdyim_SoftGetBooleanv

# Function: __glOdyim_SoftGetMaterialfv
# Declared: Line 121 (Source lines: 122-175)
# Address: 0x0d9f4070 - 0x0d9f4230 (Size: 448 bytes, Frame: 16)
.globl __glOdyim_SoftGetMaterialfv
.ent __glOdyim_SoftGetMaterialfv
__glOdyim_SoftGetMaterialfv:
    # Line 138
    li	$t0,4610
    # Line 122
    addiu	$sp,$sp,-16
    # Line 124
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 122
    lui	$v1,0x10
    # Line 138
    li	$a7,4609
    sd	$ra,8($sp)
    # Line 122
    addiu	$v1,$v1,17696
    sd	$gp,0($sp)
    # Line 124
    beq	$at,$v0,.L0d9f421c
    # Line 122
    addu	$gp,$t9,$v1
    # Line 126
    li	$a3,1028
    beq	$a0,$a3,.L0d9f414c
    li	$a5,1029
    beq	$a0,$a5,.L0d9f40c8
    # Line 131
    lui	$a0,0x1
    # Line 134
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9f4114
    ld	$ra,8($sp)
.L0d9f40c8:
    # Line 131
    ori	$a0,$a0,0x686c
    addu	$a0,$a4,$a0
.L0d9f40d0:
    # Line 138
    li	$a3,5635
    li	$a4,5633
    beq	$a1,$a3,.L0d9f415c
    li	$a5,5632
    beq	$a1,$a4,.L0d9f4184
    ld	$ra,8($sp)
    beq	$a1,$a5,.L0d9f4198
    li	$a6,4608
    beq	$a1,$a6,.L0d9f41c8
    nop
    beq	$a1,$a7,.L0d9f41f8
    ld	$ra,8($sp)
    beq	$a1,$t0,.L0d9f4120
    # Line 172
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9f4110:
    ld	$ra,8($sp)
.L0d9f4114:
    # Line 175
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f4120:
    # Line 166
    lwc1	$f3,32($a0)
    swc1	$f3,0($a2)
    # Line 167
    lwc1	$f2,36($a0)
    swc1	$f2,4($a2)
    # Line 168
    lwc1	$f1,40($a0)
    swc1	$f1,8($a2)
    # Line 169
    lwc1	$f0,44($a0)
    # Line 175
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 169
    swc1	$f0,12($a2)
.L0d9f414c:
    # Line 128
    lui	$a0,0x1
    ori	$a0,$a0,0x681c
    b	.L0d9f40d0
    addu	$a0,$a4,$a0
.L0d9f415c:
    # Line 140
    lwc1	$f6,68($a0)
    swc1	$f6,0($a2)
    # Line 141
    lwc1	$f5,76($a0)
    ld	$ra,8($sp)
    swc1	$f5,4($a2)
    # Line 142
    lwc1	$f4,72($a0)
    # Line 175
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 142
    swc1	$f4,8($a2)
.L0d9f4184:
    # Line 145
    lwc1	$f7,64($a0)
    # Line 175
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 145
    swc1	$f7,0($a2)
.L0d9f4198:
    # Line 148
    lwc1	$f11,48($a0)
    swc1	$f11,0($a2)
    # Line 149
    lwc1	$f10,52($a0)
    swc1	$f10,4($a2)
    # Line 150
    lwc1	$f9,56($a0)
    ld	$ra,8($sp)
    swc1	$f9,8($a2)
    # Line 151
    lwc1	$f8,60($a0)
    # Line 175
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 151
    swc1	$f8,12($a2)
.L0d9f41c8:
    # Line 154
    lwc1	$f15,0($a0)
    swc1	$f15,0($a2)
    # Line 155
    lwc1	$f14,4($a0)
    swc1	$f14,4($a2)
    # Line 156
    lwc1	$f13,8($a0)
    ld	$ra,8($sp)
    swc1	$f13,8($a2)
    # Line 157
    lwc1	$f12,12($a0)
    # Line 175
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 157
    swc1	$f12,12($a2)
.L0d9f41f8:
    # Line 160
    lwc1	$f19,16($a0)
    swc1	$f19,0($a2)
    # Line 161
    lwc1	$f18,20($a0)
    swc1	$f18,4($a2)
    # Line 162
    lwc1	$f17,24($a0)
    swc1	$f17,8($a2)
    # Line 163
    lwc1	$f16,28($a0)
    # Line 164
    b	.L0d9f4110
    # Line 163
    swc1	$f16,12($a2)
.L0d9f421c:
    # Line 124
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9f4114
    ld	$ra,8($sp)
.end __glOdyim_SoftGetMaterialfv

# Function: __glOdyim_SoftGetMaterialiv
# Declared: Line 178 (Source lines: 179-232)
# Address: 0x0d9f4230 - 0x0d9f4674 (Size: 1092 bytes, Frame: 48)
.globl __glOdyim_SoftGetMaterialiv
.ent __glOdyim_SoftGetMaterialiv
__glOdyim_SoftGetMaterialiv:
    # Line 179
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 181
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 179
    lui	$v1,0x10
    sd	$ra,32($sp)
    addiu	$v1,$v1,17248
    sd	$gp,24($sp)
    # Line 181
    beq	$at,$v0,.L0d9f43c0
    # Line 179
    addu	$gp,$t9,$v1
    # Line 183
    li	$a3,1028
    beq	$a0,$a3,.L0d9f42ec
    sd	$a2,8($sp)
    li	$a4,1029
    beq	$a0,$a4,.L0d9f4288
    # Line 188
    lui	$a5,0x1
    # Line 191
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9f42dc
    ld	$ra,32($sp)
.L0d9f4288:
    # Line 188
    ori	$a5,$a5,0x686c
    addu	$a5,$s0,$a5
    sd	$a5,0($sp)
.L0d9f4294:
    # Line 195
    li	$a6,5635
    beq	$a1,$a6,.L0d9f43d4
    li	$a7,5633
    beq	$a1,$a7,.L0d9f4400
    li	$t0,5632
    beq	$a1,$t0,.L0d9f442c
    li	$t1,4608
    beq	$a1,$t1,.L0d9f44f0
    # Line 211
    ld	$t3,0($sp)
    # Line 195
    li	$t2,4609
    beq	$a1,$t2,.L0d9f45b0
    li	$t3,4610
    beq	$a1,$t3,.L0d9f4300
    # Line 223
    ld	$t9,0($sp)
    # Line 229
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d9f42dc:
    ld	$s0,16($sp)
    # Line 232
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f42ec:
    # Line 185
    lui	$t8,0x1
    ori	$t8,$t8,0x681c
    addu	$t8,$s0,$t8
    b	.L0d9f4294
    sd	$t8,0($sp)
.L0d9f4300:
    # Line 223
    lwc1	$f14,3564($s0)
    lwc1	$f13,32($t9)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$at,8($sp)
    trunc.w.s	$f15,$f0
    # Line 224
    ld	$ra,0($sp)
    # Line 223
    swc1	$f15,0($at)
    # Line 224
    lwc1	$f14,3564($s0)
    lwc1	$f13,36($ra)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 225
    ld	$v0,0($sp)
    # Line 224
    swc1	$f15,4($v1)
    # Line 225
    lwc1	$f14,3564($s0)
    lwc1	$f13,40($v0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 226
    ld	$a0,0($sp)
    # Line 225
    swc1	$f15,8($a1)
    # Line 226
    lwc1	$f14,3564($s0)
    lwc1	$f13,44($a0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 232
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 226
    ld	$a2,8($sp)
    # Line 232
    ld	$s0,16($sp)
    # Line 226
    trunc.w.s	$f16,$f0
    # Line 232
    addiu	$sp,$sp,48
    jr	$ra
    # Line 226
    swc1	$f16,12($a2)
.L0d9f43c0:
    # Line 181
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9f42dc
    ld	$ra,32($sp)
.L0d9f43d4:
    # Line 197
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a0,$s0
    move	$a1,$zero
    ld	$a2,0($sp)
    li	$a5,3
    li	$a3,3
    ld	$a4,8($sp)
    jal	__glConvertResult
    addiu	$a2,$a2,68
    b	.L0d9f42dc
    ld	$ra,32($sp)
.L0d9f4400:
    # Line 201
    # lw $t9, -26304($gp) # &__glConvertResult
    move	$a0,$s0
    move	$a1,$zero
    ld	$a2,0($sp)
    li	$a5,1
    li	$a3,3
    ld	$a4,8($sp)
    jal	__glConvertResult
    addiu	$a2,$a2,64
    b	.L0d9f42dc
    ld	$ra,32($sp)
.L0d9f442c:
    # Line 205
    ld	$a3,0($sp)
    lwc1	$f14,3564($s0)
    lwc1	$f13,48($a3)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a5,8($sp)
    trunc.w.s	$f15,$f0
    # Line 206
    ld	$a4,0($sp)
    # Line 205
    swc1	$f15,0($a5)
    # Line 206
    lwc1	$f14,3564($s0)
    lwc1	$f13,52($a4)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a7,8($sp)
    trunc.w.s	$f15,$f0
    # Line 207
    ld	$a6,0($sp)
    # Line 206
    swc1	$f15,4($a7)
    # Line 207
    lwc1	$f14,3564($s0)
    lwc1	$f13,56($a6)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$t1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 208
    ld	$t0,0($sp)
    # Line 207
    swc1	$f15,8($t1)
    # Line 208
    lwc1	$f14,3564($s0)
    lwc1	$f13,60($t0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 232
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 208
    ld	$t2,8($sp)
    # Line 232
    ld	$s0,16($sp)
    # Line 208
    trunc.w.s	$f16,$f0
    # Line 232
    addiu	$sp,$sp,48
    jr	$ra
    # Line 208
    swc1	$f16,12($t2)
.L0d9f44f0:
    # Line 211
    lwc1	$f14,3564($s0)
    lwc1	$f13,0($t3)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$t9,8($sp)
    trunc.w.s	$f15,$f0
    # Line 212
    ld	$t8,0($sp)
    # Line 211
    swc1	$f15,0($t9)
    # Line 212
    lwc1	$f14,3564($s0)
    lwc1	$f13,4($t8)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$at,8($sp)
    trunc.w.s	$f15,$f0
    # Line 213
    ld	$ra,0($sp)
    # Line 212
    swc1	$f15,4($at)
    # Line 213
    lwc1	$f14,3564($s0)
    lwc1	$f13,8($ra)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 214
    ld	$v0,0($sp)
    # Line 213
    swc1	$f15,8($v1)
    # Line 214
    lwc1	$f14,3564($s0)
    lwc1	$f13,12($v0)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 232
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 214
    ld	$a0,8($sp)
    # Line 232
    ld	$s0,16($sp)
    # Line 214
    trunc.w.s	$f16,$f0
    # Line 232
    addiu	$sp,$sp,48
    jr	$ra
    # Line 214
    swc1	$f16,12($a0)
.L0d9f45b0:
    # Line 217
    ld	$a1,0($sp)
    lwc1	$f14,3564($s0)
    lwc1	$f13,16($a1)
    lwc1	$f12,3540($s0)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a3,8($sp)
    trunc.w.s	$f15,$f0
    # Line 218
    ld	$a2,0($sp)
    # Line 217
    swc1	$f15,0($a3)
    # Line 218
    lwc1	$f14,3564($s0)
    lwc1	$f13,20($a2)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a5,8($sp)
    trunc.w.s	$f15,$f0
    # Line 219
    ld	$a4,0($sp)
    # Line 218
    swc1	$f15,4($a5)
    # Line 219
    lwc1	$f14,3564($s0)
    lwc1	$f13,24($a4)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a7,8($sp)
    trunc.w.s	$f15,$f0
    # Line 220
    ld	$a6,0($sp)
    # Line 219
    swc1	$f15,8($a7)
    # Line 220
    lwc1	$f14,3564($s0)
    lwc1	$f13,28($a6)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 232
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 220
    ld	$t0,8($sp)
    # Line 232
    ld	$s0,16($sp)
    # Line 220
    trunc.w.s	$f16,$f0
    # Line 232
    addiu	$sp,$sp,48
    jr	$ra
    # Line 220
    swc1	$f16,12($t0)
.end __glOdyim_SoftGetMaterialiv

