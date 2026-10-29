# Source: ../ODYSSEY/ody_soft_attrib.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_soft_attrib.c
# Total Functions: 8

.text

# Function: __glOdyim_SoftClipEnable
# Declared: Line 22 (Source lines: 23-30)
# Address: 0x0d9eccd0 - 0x0d9ecd34 (Size: 100 bytes, Frame: 32)
.globl __glOdyim_SoftClipEnable
.ent __glOdyim_SoftClipEnable
__glOdyim_SoftClipEnable:
    # Line 24
    li	$v1,2903
    # Line 23
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 24
    li	$at,2896
    # Line 23
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-18240
    sd	$gp,8($sp)
    # Line 24
    beq	$a0,$at,.L0d9ecd20
    # Line 23
    addu	$gp,$t9,$v0
    # Line 24
    beq	$a0,$v1,.L0d9ecd20
    # Line 29
    nop	# was lw $t9, -32496($gp) # &__glOdyim_Enable
.L0d9ecd04:
    jal	__glOdyim_Enable
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 30
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ecd20:
    # Line 27
    # lw $t9, -27320($gp) # &__glim_Enable
    jal	__glim_Enable
    move	$a0,$s0
    b	.L0d9ecd04
    # Line 29
    nop	# was lw $t9, -32496($gp) # &__glOdyim_Enable
.end __glOdyim_SoftClipEnable

# Function: __glOdyim_SoftClipDisable
# Declared: Line 34 (Source lines: 35-42)
# Address: 0x0d9ecd40 - 0x0d9ecda8 (Size: 104 bytes, Frame: 32)
.globl __glOdyim_SoftClipDisable
.ent __glOdyim_SoftClipDisable
__glOdyim_SoftClipDisable:
    # Line 36
    li	$v1,2903
    # Line 35
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 36
    li	$at,2896
    # Line 35
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-18352
    sd	$gp,8($sp)
    # Line 36
    beq	$a0,$at,.L0d9ecd94
    # Line 35
    addu	$gp,$t9,$v0
    # Line 36
    beq	$a0,$v1,.L0d9ecd98
    # Line 39
    nop	# was lw $t9, -27316($gp) # &__glim_Disable
    # Line 41
    # lw $t9, -32368($gp) # &__glOdyim_Disable
.L0d9ecd78:
    jal	__glOdyim_Disable
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 42
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ecd94:
    # Line 39
    # lw $t9, -27316($gp) # &__glim_Disable
.L0d9ecd98:
    jal	__glim_Disable
    move	$a0,$s0
    b	.L0d9ecd78
    # Line 41
    nop	# was lw $t9, -32368($gp) # &__glOdyim_Disable
.end __glOdyim_SoftClipDisable

# Function: SoftClipApplyParameterF
# Declared: Line 46 (Source lines: 48-88)
# Address: 0x0d9ecdb0 - 0x0d9ecf10 (Size: 352 bytes, Frame: 0)
.ent SoftClipApplyParameterF
SoftClipApplyParameterF:
    # Line 48
    li	$a4,5635
    sltiu	$at,$a1,5632
    sltiu	$a5,$a1,4609
    sltiu	$a6,$a1,4610
    bnez	$at,.L0d9ece0c
    sltiu	$v1,$a1,5634
    li	$t1,5633
    sltiu	$v0,$a1,5633
    bnez	$v0,.L0d9ece70
    sltiu	$a3,$a1,5635
    bnez	$v1,.L0d9ece5c
    nop
    bnez	$a3,.L0d9eceb8
    nop
    bne	$a1,$a4,.L0d9ece54
    nop
    # Line 83
    lwc1	$f2,0($a2)
    swc1	$f2,68($a0)
    # Line 84
    lwc1	$f1,4($a2)
    swc1	$f1,76($a0)
    # Line 85
    lwc1	$f0,8($a2)
    # Line 88
    jr	$ra
    # Line 85
    swc1	$f0,72($a0)
.L0d9ece0c:
    # Line 48
    li	$a7,4610
    bnez	$a5,.L0d9ece4c
    li	$t0,4608
    bnez	$a6,.L0d9ece94
    nop
    bne	$a1,$a7,.L0d9ece54
    nop
    # Line 68
    lwc1	$f6,0($a2)
    swc1	$f6,32($a0)
    # Line 69
    lwc1	$f5,4($a2)
    swc1	$f5,36($a0)
    # Line 70
    lwc1	$f4,8($a2)
    swc1	$f4,40($a0)
    # Line 71
    lwc1	$f3,12($a2)
    # Line 88
    jr	$ra
    # Line 71
    swc1	$f3,44($a0)
.L0d9ece4c:
    # Line 48
    beq	$a1,$t0,.L0d9eceec
    nop
.L0d9ece54:
    # Line 88
    jr	$ra
    nop
.L0d9ece5c:
    # Line 48
    bne	$a1,$t1,.L0d9ece54
    nop
    # Line 80
    lwc1	$f7,0($a2)
    # Line 88
    jr	$ra
    # Line 80
    swc1	$f7,64($a0)
.L0d9ece70:
    # Line 74
    lwc1	$f11,0($a2)
    swc1	$f11,48($a0)
    # Line 75
    lwc1	$f10,4($a2)
    swc1	$f10,52($a0)
    # Line 76
    lwc1	$f9,8($a2)
    swc1	$f9,56($a0)
    # Line 77
    lwc1	$f8,12($a2)
    # Line 88
    jr	$ra
    # Line 77
    swc1	$f8,60($a0)
.L0d9ece94:
    # Line 56
    lwc1	$f15,0($a2)
    swc1	$f15,16($a0)
    # Line 57
    lwc1	$f14,4($a2)
    swc1	$f14,20($a0)
    # Line 58
    lwc1	$f13,8($a2)
    swc1	$f13,24($a0)
    # Line 59
    lwc1	$f12,12($a2)
    # Line 88
    jr	$ra
    # Line 59
    swc1	$f12,28($a0)
.L0d9eceb8:
    # Line 62
    lwc1	$f19,0($a2)
    swc1	$f19,0($a0)
    swc1	$f19,16($a0)
    # Line 63
    lwc1	$f18,4($a2)
    swc1	$f18,4($a0)
    swc1	$f18,20($a0)
    # Line 64
    lwc1	$f17,8($a2)
    swc1	$f17,8($a0)
    swc1	$f17,24($a0)
    # Line 65
    lwc1	$f16,12($a2)
    swc1	$f16,12($a0)
    # Line 88
    jr	$ra
    # Line 65
    swc1	$f16,28($a0)
.L0d9eceec:
    # Line 50
    lwc1	$f27,0($a2)
    swc1	$f27,0($a0)
    # Line 51
    lwc1	$f25,4($a2)
    swc1	$f25,4($a0)
    # Line 52
    lwc1	$f23,8($a2)
    swc1	$f23,8($a0)
    # Line 53
    lwc1	$f21,12($a2)
    # Line 88
    jr	$ra
    # Line 53
    swc1	$f21,12($a0)
.end SoftClipApplyParameterF

# Function: __glOdyim_SoftClipMaterialfv
# Declared: Line 96 (Source lines: 97-133)
# Address: 0x0d9ecf10 - 0x0d9ed0c4 (Size: 436 bytes, Frame: 48)
.globl __glOdyim_SoftClipMaterialfv
.ent __glOdyim_SoftClipMaterialfv
__glOdyim_SoftClipMaterialfv:
    # Line 101
    lwc1	$f14,0($a2)
    # Line 99
    lw	$at,4112($zero)
    # Line 97
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    lui	$v1,0x11
    sd	$a1,8($sp)
    addiu	$v1,$v1,-18816
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 101
    # lw $t9, -27380($gp) # &__glErrorCheckMaterial
    # Line 97
    sd	$ra,32($sp)
    move	$v0,$a2
    sd	$s0,24($sp)
    # Line 101
    nop
    # Line 97
    move	$s0,$a0
    # Line 101
    jal	__glErrorCheckMaterial
    # Line 99
    sd	$at,16($sp)
    # Line 101
    beqz	$v0,.L0d9ecf6c
    # Line 103
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9ecfb0
    ld	$ra,32($sp)
.L0d9ecf6c:
    # Line 104
    lw	$a0,4120($zero)
    li	$a5,1
    beq	$a0,$a5,.L0d9ecfc0
    # Line 112
    ld	$t9,16($sp)
.L0d9ecf7c:
    # Line 114
    ld	$a1,16($sp)
    lui	$v0,0x1
    # Line 117
    li	$a2,1028
    # Line 114
    addu	$a1,$a1,$v0
    sb	$a5,26821($a1)
    # Line 117
    li	$a3,1032
    beq	$s0,$a2,.L0d9ed048
    # Line 114
    sb	$a5,26820($a1)
    # Line 117
    li	$a2,1029
    beq	$s0,$a2,.L0d9ed090
    # Line 123
    nop	# was lw $t9, -32704($gp) # &sub_0d9f0000
    # Line 117
    beq	$s0,$a3,.L0d9ecfd8
.L0d9ecfac:
    ld	$ra,32($sp)
.L0d9ecfb0:
    ld	$s0,24($sp)
    # Line 133
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ecfc0:
    # Line 112
    move	$a0,$t9
    lw	$t9,12076($t9)
    jal	sub_0d9f0000
    nop
    b	.L0d9ecf7c
    li	$a5,1
.L0d9ecfd8:
    # Line 127
    # lw $t9, -32704($gp) # &sub_0d9f0000
    ld	$a0,16($sp)
    ori	$a1,$v0,0x681c
    ld	$s0,0($sp)
    addiu	$t9,$t9,-12880
    addu	$a0,$a0,$a1
    ld	$a1,8($sp)
    bal __glOdyim_SoftClipDisable
    move	$a2,$s0
    # Line 128
    # lw $t9, -32704($gp) # &sub_0d9f0000
    ld	$a0,16($sp)
    lui	$a1,0x1
    addiu	$t9,$t9,-12880
    move	$a2,$s0
    ori	$a1,$a1,0x686c
    addu	$a0,$a0,$a1
    bal __glOdyim_SoftClipDisable
    ld	$a1,8($sp)
    # Line 133
    ld	$gp,40($sp)
    # Line 129
    ld	$a2,16($sp)
    lui	$a3,0x2
    # Line 133
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    # Line 129
    addu	$a2,$a2,$a3
    # Line 130
    sb	$zero,-25203($a2)
    # Line 133
    addiu	$sp,$sp,48
    jr	$ra
    # Line 129
    sb	$zero,-25204($a2)
.L0d9ed048:
    # Line 119
    # lw $t9, -32704($gp) # &sub_0d9f0000
    ld	$a0,16($sp)
    addiu	$t9,$t9,-12880
    ld	$a2,0($sp)
    ori	$a3,$v0,0x681c
    ld	$a1,8($sp)
    bal __glOdyim_SoftClipDisable
    addu	$a0,$a0,$a3
    # Line 120
    ld	$at,16($sp)
    lui	$ra,0x1
    ori	$ra,$ra,0x9d8c
    addu	$ra,$ra,$at
    sb	$zero,0($ra)
    # Line 133
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ed090:
    # Line 123
    ld	$a0,16($sp)
    addiu	$t9,$t9,-12880
    ld	$a2,0($sp)
    ori	$a3,$v0,0x686c
    ld	$a1,8($sp)
    bal __glOdyim_SoftClipDisable
    addu	$a0,$a0,$a3
    # Line 124
    ld	$at,16($sp)
    lui	$ra,0x1
    ori	$ra,$ra,0x9d8d
    addu	$ra,$ra,$at
    # Line 125
    b	.L0d9ecfac
    # Line 124
    sb	$zero,0($ra)
.end __glOdyim_SoftClipMaterialfv

# Function: __glOdyim_SoftClipMaterialf
# Declared: Line 141 (Source lines: 142-155)
# Address: 0x0d9ed0d0 - 0x0d9ed124 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_SoftClipMaterialf
.ent __glOdyim_SoftClipMaterialf
__glOdyim_SoftClipMaterialf:
    # Line 142
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 146
    li	$at,5633
    # Line 142
    lui	$v0,0x11
    sd	$ra,8($sp)
    addiu	$v0,$v0,-19264
    sd	$gp,0($sp)
    # Line 146
    beq	$a1,$at,.L0d9ed110
    # Line 142
    addu	$gp,$t9,$v0
    # Line 152
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9ed104:
    # Line 155
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ed110:
    # Line 148
    # lw $t9, -29756($gp) # &__glOdyim_SoftClipMaterialfv
    bal __glOdyim_SoftClipMaterialfv
    addiu	$a2,$sp,32
    b	.L0d9ed104
    ld	$ra,8($sp)
.end __glOdyim_SoftClipMaterialf

# Function: SoftClipApplyParameterI
# Declared: Line 158 (Source lines: 160-202)
# Address: 0x0d9ed130 - 0x0d9ed470 (Size: 832 bytes, Frame: 0)
.ent SoftClipApplyParameterI
SoftClipApplyParameterI:
    # Line 162
    sltiu	$v1,$a1,5634
    sltiu	$at,$a1,5632
    sltiu	$t0,$a1,4609
    sltiu	$t1,$a1,4610
    li	$v0,4608
    bnez	$at,.L0d9ed1ac
    # Line 160
    lw	$a4,4112($zero)
    # Line 162
    sltiu	$a3,$a1,5635
    sltiu	$v0,$a1,5633
    bnez	$v0,.L0d9ed270
    nop
    bnez	$v1,.L0d9ed254
    li	$v1,5633
    bnez	$a3,.L0d9ed368
    nop
    li	$a4,5635
    bne	$a1,$a4,.L0d9ed24c
    nop
    # Line 197
    lw	$a7,0($a2)
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,68($a0)
    # Line 198
    lw	$a6,4($a2)
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,76($a0)
    # Line 199
    lw	$a5,8($a2)
    mtc1	$a5,$f0
    cvt.s.w	$f0,$f0
    # Line 202
    jr	$ra
    # Line 199
    swc1	$f0,72($a0)
.L0d9ed1ac:
    # Line 162
    li	$t2,4610
    bnez	$t0,.L0d9ed244
    nop
    bnez	$t1,.L0d9ed2ec
    nop
    bne	$a1,$t2,.L0d9ed24c
    nop
    # Line 182
    lw	$at,0($a2)
    mtc1	$at,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f12,$f4,$f12,$f6
    lwc1	$f11,3568($a4)
    mul.s	$f11,$f11,$f12
    swc1	$f11,32($a0)
    # Line 183
    lw	$t9,4($a2)
    mtc1	$t9,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f10,$f4,$f10,$f6
    lwc1	$f9,3568($a4)
    mul.s	$f9,$f9,$f10
    swc1	$f9,36($a0)
    # Line 184
    lw	$t8,8($a2)
    mtc1	$t8,$f8
    cvt.s.w	$f8,$f8
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a4)
    mul.s	$f7,$f7,$f8
    swc1	$f7,40($a0)
    # Line 185
    lw	$t3,12($a2)
    mtc1	$t3,$f5
    cvt.s.w	$f5,$f5
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f3,3568($a4)
    mul.s	$f3,$f3,$f4
    # Line 202
    jr	$ra
    # Line 185
    swc1	$f3,44($a0)
.L0d9ed244:
    # Line 162
    beq	$a1,$v0,.L0d9ed3f4
    nop
.L0d9ed24c:
    # Line 202
    jr	$ra
    nop
.L0d9ed254:
    # Line 162
    bne	$a1,$v1,.L0d9ed24c
    nop
    # Line 194
    lw	$a1,0($a2)
    mtc1	$a1,$f13
    cvt.s.w	$f13,$f13
    # Line 202
    jr	$ra
    # Line 194
    swc1	$f13,64($a0)
.L0d9ed270:
    # Line 188
    lw	$a6,0($a2)
    mtc1	$a6,$f27
    cvt.s.w	$f27,$f27
    lwc1	$f17,_lit_40000000
    lwc1	$f15,_lit_3f800000
    madd.s	$f27,$f15,$f27,$f17
    lwc1	$f25,3568($a4)
    mul.s	$f25,$f25,$f27
    swc1	$f25,48($a0)
    # Line 189
    lw	$a5,4($a2)
    mtc1	$a5,$f23
    cvt.s.w	$f23,$f23
    madd.s	$f23,$f15,$f23,$f17
    lwc1	$f21,3568($a4)
    mul.s	$f21,$f21,$f23
    swc1	$f21,52($a0)
    # Line 190
    lw	$a3,8($a2)
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    madd.s	$f19,$f15,$f19,$f17
    lwc1	$f18,3568($a4)
    mul.s	$f18,$f18,$f19
    swc1	$f18,56($a0)
    # Line 191
    lw	$a2,12($a2)
    mtc1	$a2,$f16
    cvt.s.w	$f16,$f16
    madd.s	$f15,$f15,$f16,$f17
    lwc1	$f14,3568($a4)
    mul.s	$f14,$f14,$f15
    # Line 202
    jr	$ra
    # Line 191
    swc1	$f14,60($a0)
.L0d9ed2ec:
    # Line 170
    lw	$t2,0($a2)
    mtc1	$t2,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f1,_lit_40000000
    lwc1	$f31,_lit_3f800000
    madd.s	$f7,$f31,$f7,$f1
    lwc1	$f6,3568($a4)
    mul.s	$f6,$f6,$f7
    swc1	$f6,16($a0)
    # Line 171
    lw	$t1,4($a2)
    mtc1	$t1,$f5
    cvt.s.w	$f5,$f5
    madd.s	$f5,$f31,$f5,$f1
    lwc1	$f4,3568($a4)
    mul.s	$f4,$f4,$f5
    swc1	$f4,20($a0)
    # Line 172
    lw	$t0,8($a2)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f3,$f31,$f3,$f1
    lwc1	$f2,3568($a4)
    mul.s	$f2,$f2,$f3
    swc1	$f2,24($a0)
    # Line 173
    lw	$a7,12($a2)
    mtc1	$a7,$f0
    cvt.s.w	$f0,$f0
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f29,3568($a4)
    mul.s	$f29,$f29,$f31
    # Line 202
    jr	$ra
    # Line 173
    swc1	$f29,28($a0)
.L0d9ed368:
    # Line 176
    lw	$at,0($a2)
    mtc1	$at,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f11,_lit_40000000
    lwc1	$f9,_lit_3f800000
    madd.s	$f17,$f9,$f17,$f11
    lwc1	$f16,3568($a4)
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($a0)
    swc1	$f16,16($a0)
    # Line 177
    lw	$t9,4($a2)
    mtc1	$t9,$f15
    cvt.s.w	$f15,$f15
    madd.s	$f15,$f9,$f15,$f11
    lwc1	$f14,3568($a4)
    mul.s	$f14,$f14,$f15
    swc1	$f14,4($a0)
    swc1	$f14,20($a0)
    # Line 178
    lw	$t8,8($a2)
    mtc1	$t8,$f13
    cvt.s.w	$f13,$f13
    madd.s	$f13,$f9,$f13,$f11
    lwc1	$f12,3568($a4)
    mul.s	$f12,$f12,$f13
    swc1	$f12,8($a0)
    swc1	$f12,24($a0)
    # Line 179
    lw	$t3,12($a2)
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f9,$f9,$f10,$f11
    lwc1	$f8,3568($a4)
    mul.s	$f8,$f8,$f9
    swc1	$f8,12($a0)
    # Line 202
    jr	$ra
    # Line 179
    swc1	$f8,28($a0)
.L0d9ed3f4:
    # Line 164
    lw	$a3,0($a2)
    mtc1	$a3,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f23,_lit_40000000
    lwc1	$f19,_lit_3f800000
    madd.s	$f1,$f19,$f1,$f23
    lwc1	$f0,3568($a4)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a0)
    # Line 165
    lw	$a1,4($a2)
    mtc1	$a1,$f31
    cvt.s.w	$f31,$f31
    madd.s	$f31,$f19,$f31,$f23
    lwc1	$f29,3568($a4)
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a0)
    # Line 166
    lw	$v1,8($a2)
    mtc1	$v1,$f27
    cvt.s.w	$f27,$f27
    madd.s	$f27,$f19,$f27,$f23
    lwc1	$f25,3568($a4)
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a0)
    # Line 167
    lw	$v0,12($a2)
    mtc1	$v0,$f21
    cvt.s.w	$f21,$f21
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f18,3568($a4)
    mul.s	$f18,$f18,$f19
    # Line 202
    jr	$ra
    # Line 167
    swc1	$f18,12($a0)
.end SoftClipApplyParameterI

# Function: __glOdyim_SoftClipMaterialiv
# Declared: Line 210 (Source lines: 211-247)
# Address: 0x0d9ed470 - 0x0d9ed624 (Size: 436 bytes, Frame: 48)
.globl __glOdyim_SoftClipMaterialiv
.ent __glOdyim_SoftClipMaterialiv
__glOdyim_SoftClipMaterialiv:
    # Line 213
    lw	$at,4112($zero)
    # Line 211
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    lui	$v1,0x11
    # Line 215
    lw	$v0,0($a2)
    # Line 211
    addiu	$v1,$v1,-20192
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 215
    mtc1	$v0,$f14
    # lw $t9, -27380($gp) # &__glErrorCheckMaterial
    # Line 213
    sd	$at,16($sp)
    # Line 211
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$ra,32($sp)
    # Line 215
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0d9ed4cc
    # Line 217
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9ed510
    ld	$ra,32($sp)
.L0d9ed4cc:
    # Line 218
    lw	$a0,4120($zero)
    li	$a5,1
    beq	$a0,$a5,.L0d9ed520
.L0d9ed4d8:
    # Line 228
    ld	$a1,16($sp)
    lui	$v0,0x1
    # Line 231
    li	$a2,1028
    # Line 228
    addu	$a1,$a1,$v0
    sb	$a5,26821($a1)
    # Line 231
    li	$a3,1032
    beq	$s0,$a2,.L0d9ed5a8
    # Line 228
    sb	$a5,26820($a1)
    # Line 231
    li	$a2,1029
    beq	$s0,$a2,.L0d9ed5f0
    # Line 237
    nop	# was lw $t9, -32704($gp) # &sub_0d9f0000
    # Line 231
    beq	$s0,$a3,.L0d9ed53c
    # Line 241
    nop	# was lw $t9, -32704($gp) # &sub_0d9f0000
.L0d9ed50c:
    ld	$ra,32($sp)
.L0d9ed510:
    ld	$s0,24($sp)
    # Line 247
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ed520:
    # Line 226
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,12076($t9)
    jal	sub_0d9f0000
    nop
    b	.L0d9ed4d8
    li	$a5,1
.L0d9ed53c:
    # Line 241
    ld	$a0,16($sp)
    ori	$a1,$v0,0x681c
    ld	$s0,0($sp)
    addiu	$t9,$t9,-11984
    addu	$a0,$a0,$a1
    ld	$a1,8($sp)
    bal __glOdyim_SoftClipMaterialf
    move	$a2,$s0
    # Line 242
    # lw $t9, -32704($gp) # &sub_0d9f0000
    ld	$a0,16($sp)
    lui	$a1,0x1
    addiu	$t9,$t9,-11984
    move	$a2,$s0
    ori	$a1,$a1,0x686c
    addu	$a0,$a0,$a1
    bal __glOdyim_SoftClipMaterialf
    ld	$a1,8($sp)
    # Line 247
    ld	$gp,40($sp)
    # Line 243
    ld	$a2,16($sp)
    lui	$a3,0x2
    # Line 247
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    # Line 243
    addu	$a2,$a2,$a3
    # Line 244
    sb	$zero,-25203($a2)
    # Line 247
    addiu	$sp,$sp,48
    jr	$ra
    # Line 243
    sb	$zero,-25204($a2)
.L0d9ed5a8:
    # Line 233
    # lw $t9, -32704($gp) # &sub_0d9f0000
    ld	$a0,16($sp)
    addiu	$t9,$t9,-11984
    ld	$a2,0($sp)
    ori	$a3,$v0,0x681c
    ld	$a1,8($sp)
    bal __glOdyim_SoftClipMaterialf
    addu	$a0,$a0,$a3
    # Line 234
    ld	$at,16($sp)
    lui	$ra,0x1
    ori	$ra,$ra,0x9d8c
    addu	$ra,$ra,$at
    sb	$zero,0($ra)
    # Line 247
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ed5f0:
    # Line 237
    ld	$a0,16($sp)
    addiu	$t9,$t9,-11984
    ld	$a2,0($sp)
    ori	$a3,$v0,0x686c
    ld	$a1,8($sp)
    bal __glOdyim_SoftClipMaterialf
    addu	$a0,$a0,$a3
    # Line 238
    ld	$at,16($sp)
    lui	$ra,0x1
    ori	$ra,$ra,0x9d8d
    addu	$ra,$ra,$at
    # Line 239
    b	.L0d9ed50c
    # Line 238
    sb	$zero,0($ra)
.end __glOdyim_SoftClipMaterialiv

# Function: __glOdyim_SoftClipMateriali
# Declared: Line 255 (Source lines: 256-269)
# Address: 0x0d9ed630 - 0x0d9ed684 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_SoftClipMateriali
.ent __glOdyim_SoftClipMateriali
__glOdyim_SoftClipMateriali:
    # Line 256
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 260
    li	$at,5633
    # Line 256
    lui	$v0,0x11
    sd	$ra,8($sp)
    addiu	$v0,$v0,-20640
    sd	$gp,0($sp)
    # Line 260
    beq	$a1,$at,.L0d9ed670
    # Line 256
    addu	$gp,$t9,$v0
    # Line 266
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9ed664:
    # Line 269
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ed670:
    # Line 262
    # lw $t9, -29748($gp) # &__glOdyim_SoftClipMaterialiv
    bal __glOdyim_SoftClipMaterialiv
    addiu	$a2,$sp,36
    b	.L0d9ed664
    ld	$ra,8($sp)
.end __glOdyim_SoftClipMateriali

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

