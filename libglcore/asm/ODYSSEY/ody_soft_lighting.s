# Source: ../ODYSSEY/ody_soft_lighting.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_soft_lighting.c
# Total Functions: 16

.text

# Function: __glOdysseySoftClipCopyMaterialOneSided
# Declared: Line 25 (Source lines: 27-34)
# Address: 0x0d9f05e0 - 0x0d9f0674 (Size: 148 bytes, Frame: 0)
.globl __glOdysseySoftClipCopyMaterialOneSided
.ent __glOdysseySoftClipCopyMaterialOneSided
__glOdysseySoftClipCopyMaterialOneSided:
    # Line 27
    addiu	$t8,$a1,220
    li	$t3,0x10
    addiu	$a7,$a1,212
    # Line 28
    li	$a3,20
    lui	$t0,0x1
    move	$a4,$zero
    ori	$t0,$t0,0x681c
    addiu	$t2,$a1,208
    addu	$t0,$a0,$t0
    addiu	$t1,$a1,216
    addiu	$a5,$t0,12
    addiu	$t9,$t0,8
    addiu	$a6,$t0,4
    nop
    nop
    nop
.L0d9f0620:
    addu	$a0,$a4,$t0
    addu	$a2,$a4,$t2
    lw	$a0,0($a0)
    addu	$v1,$a4,$a6
    sw	$a0,0($a2)
    addu	$a0,$a4,$a7
    lw	$v1,0($v1)
    addu	$v0,$a4,$t9
    sw	$v1,0($a0)
    addu	$v1,$a4,$t1
    lw	$v0,0($v0)
    addiu	$a3,$a3,-4
    addu	$at,$a4,$a5
    sw	$v0,0($v1)
    addu	$v0,$a4,$t8
    lw	$at,0($at)
    addu	$a4,$a4,$t3
    bgtz	$a3,.L0d9f0620
    sw	$at,0($v0)
    # Line 34
    jr	$ra
    # Line 33
    sb	$zero,400($a1)
.end __glOdysseySoftClipCopyMaterialOneSided

# Function: __glOdysseySoftClipCopyMaterialTwoSided
# Declared: Line 40 (Source lines: 42-50)
# Address: 0x0d9f0680 - 0x0d9f0798 (Size: 280 bytes, Frame: 16)
.globl __glOdysseySoftClipCopyMaterialTwoSided
.ent __glOdysseySoftClipCopyMaterialTwoSided
__glOdysseySoftClipCopyMaterialTwoSided:
    # Line 42
    addiu	$t8,$a1,220
    li	$t9,0x10
    addiu	$t2,$a1,212
    # Line 43
    li	$a4,20
    move	$a3,$zero
    addiu	$t3,$a1,208
    addiu	$a7,$a1,216
    lui	$t0,0x1
    # Line 42
    addiu	$sp,$sp,-16
    # Line 43
    addu	$t0,$a0,$t0
    addiu	$a5,$t0,26664
    addiu	$t1,$t0,26656
    sd	$t0,0($sp)
    addiu	$a6,$t0,26660
    addiu	$t0,$t0,26652
    nop
.L0d9f06c0:
    addu	$a0,$a3,$t0
    addu	$a2,$a3,$t3
    lw	$a0,0($a0)
    addu	$v1,$a3,$t1
    sw	$a0,0($a2)
    addu	$a0,$a3,$t2
    lw	$v1,0($v1)
    addu	$v0,$a3,$a6
    sw	$v1,0($a0)
    addu	$v1,$a3,$a7
    lw	$v0,0($v0)
    addiu	$a4,$a4,-4
    addu	$at,$a3,$a5
    sw	$v0,0($v1)
    addu	$v0,$a3,$t8
    lw	$at,0($at)
    addu	$a3,$a3,$t9
    bgtz	$a4,.L0d9f06c0
    sw	$at,0($v0)
    addiu	$t8,$a1,300
    li	$t3,0x10
    addiu	$t1,$a1,292
    # Line 44
    li	$a2,20
    move	$a3,$zero
    ld	$a6,0($sp)
    addiu	$t0,$a1,288
    addiu	$t2,$a1,296
    addiu	$a5,$a6,26744
    addiu	$a4,$a6,26736
    addiu	$a7,$a6,26732
    addiu	$a6,$a6,26740
    nop
.L0d9f0740:
    addu	$v1,$a3,$a7
    addu	$a0,$a3,$t0
    lw	$v1,0($v1)
    addu	$v0,$a3,$a4
    sw	$v1,0($a0)
    addu	$v1,$a3,$t1
    lw	$v0,0($v0)
    addu	$at,$a3,$a6
    sw	$v0,0($v1)
    addu	$v0,$a3,$t2
    lw	$at,0($at)
    addiu	$a2,$a2,-4
    addu	$t9,$a3,$a5
    sw	$at,0($v0)
    addu	$at,$a3,$t8
    lw	$t9,0($t9)
    addu	$a3,$a3,$t3
    bgtz	$a2,.L0d9f0740
    sw	$t9,0($at)
    # Line 49
    sb	$zero,400($a1)
    # Line 50
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySoftClipCopyMaterialTwoSided

# Function: __glOdysseyChangeMaterialEmission
# Declared: Line 53 (Source lines: 55-59)
# Address: 0x0d9f07a0 - 0x0d9f07c4 (Size: 36 bytes, Frame: 0)
.globl __glOdysseyChangeMaterialEmission
.ent __glOdysseyChangeMaterialEmission
__glOdysseyChangeMaterialEmission:
    # Line 55
    lwc1	$f3,432($a0)
    swc1	$f3,48($a1)
    # Line 56
    lwc1	$f2,436($a0)
    swc1	$f2,52($a1)
    # Line 57
    lwc1	$f1,440($a0)
    swc1	$f1,56($a1)
    # Line 58
    lwc1	$f0,444($a0)
    # Line 59
    jr	$ra
    # Line 58
    swc1	$f0,60($a1)
.end __glOdysseyChangeMaterialEmission

# Function: __glOdysseyChangeMaterialSpecular
# Declared: Line 61 (Source lines: 63-67)
# Address: 0x0d9f07d0 - 0x0d9f07f4 (Size: 36 bytes, Frame: 0)
.globl __glOdysseyChangeMaterialSpecular
.ent __glOdysseyChangeMaterialSpecular
__glOdysseyChangeMaterialSpecular:
    # Line 63
    lwc1	$f3,432($a0)
    swc1	$f3,32($a1)
    # Line 64
    lwc1	$f2,436($a0)
    swc1	$f2,36($a1)
    # Line 65
    lwc1	$f1,440($a0)
    swc1	$f1,40($a1)
    # Line 66
    lwc1	$f0,444($a0)
    # Line 67
    jr	$ra
    # Line 66
    swc1	$f0,44($a1)
.end __glOdysseyChangeMaterialSpecular

# Function: __glOdysseyChangeMaterialAmbient
# Declared: Line 69 (Source lines: 71-75)
# Address: 0x0d9f0800 - 0x0d9f0824 (Size: 36 bytes, Frame: 0)
.globl __glOdysseyChangeMaterialAmbient
.ent __glOdysseyChangeMaterialAmbient
__glOdysseyChangeMaterialAmbient:
    # Line 71
    lwc1	$f3,432($a0)
    swc1	$f3,0($a1)
    # Line 72
    lwc1	$f2,436($a0)
    swc1	$f2,4($a1)
    # Line 73
    lwc1	$f1,440($a0)
    swc1	$f1,8($a1)
    # Line 74
    lwc1	$f0,444($a0)
    # Line 75
    jr	$ra
    # Line 74
    swc1	$f0,12($a1)
.end __glOdysseyChangeMaterialAmbient

# Function: __glOdysseyChangeMaterialDiffuse
# Declared: Line 77 (Source lines: 79-83)
# Address: 0x0d9f0830 - 0x0d9f0854 (Size: 36 bytes, Frame: 0)
.globl __glOdysseyChangeMaterialDiffuse
.ent __glOdysseyChangeMaterialDiffuse
__glOdysseyChangeMaterialDiffuse:
    # Line 79
    lwc1	$f3,432($a0)
    swc1	$f3,16($a1)
    # Line 80
    lwc1	$f2,436($a0)
    swc1	$f2,20($a1)
    # Line 81
    lwc1	$f1,440($a0)
    swc1	$f1,24($a1)
    # Line 82
    lwc1	$f0,444($a0)
    # Line 83
    jr	$ra
    # Line 82
    swc1	$f0,28($a1)
.end __glOdysseyChangeMaterialDiffuse

# Function: __glOdysseyChangeMaterialAmbientAndDiffuse
# Declared: Line 85 (Source lines: 87-91)
# Address: 0x0d9f0860 - 0x0d9f0894 (Size: 52 bytes, Frame: 0)
.globl __glOdysseyChangeMaterialAmbientAndDiffuse
.ent __glOdysseyChangeMaterialAmbientAndDiffuse
__glOdysseyChangeMaterialAmbientAndDiffuse:
    # Line 87
    lwc1	$f3,432($a0)
    swc1	$f3,0($a1)
    swc1	$f3,16($a1)
    # Line 88
    lwc1	$f2,436($a0)
    swc1	$f2,4($a1)
    swc1	$f2,20($a1)
    # Line 89
    lwc1	$f1,440($a0)
    swc1	$f1,8($a1)
    swc1	$f1,24($a1)
    # Line 90
    lwc1	$f0,444($a0)
    swc1	$f0,12($a1)
    # Line 91
    jr	$ra
    # Line 90
    swc1	$f0,28($a1)
.end __glOdysseyChangeMaterialAmbientAndDiffuse

# Function: __glOdysseyChangeFrontMaterialColor
# Declared: Line 93 (Source lines: 94-109)
# Address: 0x0d9f08a0 - 0x0d9f092c (Size: 140 bytes, Frame: 32)
.globl __glOdysseyChangeFrontMaterialColor
.ent __glOdysseyChangeFrontMaterialColor
__glOdysseyChangeFrontMaterialColor:
    # Line 94
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lw	$at,4120($zero)
    sd	$s0,0($sp)
    li	$v0,1
    lui	$v1,0x10
    move	$s0,$a0
    sd	$s8,24($sp)
    addiu	$v1,$v1,31984
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d9f0918
    addu	$gp,$t9,$v1
    # Line 104
    lui	$s8,0x2
.L0d9f08d4:
    addu	$s8,$s0,$s8
    lw	$t9,-24944($s8)
    lui	$a1,0x1
    move	$a0,$s0
    ori	$a1,$a1,0x681c
    jalr	$t9
    addu	$a1,$s0,$a1
    # Line 108
    # lw $t9, -17360($gp) # &__glClampAndScaleColor
    move	$a0,$s0
    jal	__glClampAndScaleColor
    # Line 106
    sb	$zero,-25204($s8)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,24($sp)
    # Line 109
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f0918:
    # Line 102
    lw	$t9,12076($s0)
    jalr	$t9
    nop
    b	.L0d9f08d4
    # Line 104
    lui	$s8,0x2
.end __glOdysseyChangeFrontMaterialColor

# Function: __glOdysseyChangeBackMaterialColor
# Declared: Line 111 (Source lines: 112-127)
# Address: 0x0d9f0930 - 0x0d9f09bc (Size: 140 bytes, Frame: 32)
.globl __glOdysseyChangeBackMaterialColor
.ent __glOdysseyChangeBackMaterialColor
__glOdysseyChangeBackMaterialColor:
    # Line 112
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lw	$at,4120($zero)
    sd	$s0,0($sp)
    li	$v0,1
    lui	$v1,0x10
    move	$s0,$a0
    sd	$s8,24($sp)
    addiu	$v1,$v1,31840
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d9f09a8
    addu	$gp,$t9,$v1
    # Line 122
    lui	$s8,0x2
.L0d9f0964:
    addu	$s8,$s0,$s8
    lw	$t9,-24944($s8)
    lui	$a1,0x1
    move	$a0,$s0
    ori	$a1,$a1,0x686c
    jalr	$t9
    addu	$a1,$s0,$a1
    # Line 126
    # lw $t9, -17360($gp) # &__glClampAndScaleColor
    move	$a0,$s0
    jal	__glClampAndScaleColor
    # Line 124
    sb	$zero,-25203($s8)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,24($sp)
    # Line 127
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f09a8:
    # Line 120
    lw	$t9,12076($s0)
    jalr	$t9
    nop
    b	.L0d9f0964
    # Line 122
    lui	$s8,0x2
.end __glOdysseyChangeBackMaterialColor

# Function: __glOdysseyChangeBothMaterialColors
# Declared: Line 129 (Source lines: 130-147)
# Address: 0x0d9f09c0 - 0x0d9f0a68 (Size: 168 bytes, Frame: 32)
.globl __glOdysseyChangeBothMaterialColors
.ent __glOdysseyChangeBothMaterialColors
__glOdysseyChangeBothMaterialColors:
    # Line 130
    addiu	$sp,$sp,-32
    sd	$s1,16($sp)
    lw	$at,4120($zero)
    sd	$s0,0($sp)
    li	$v0,1
    lui	$v1,0x10
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,31696
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d9f0a54
    addu	$gp,$t9,$v1
    # Line 140
    lui	$s1,0x2
.L0d9f09f4:
    addu	$s1,$s0,$s1
    lw	$t9,-24944($s1)
    lui	$a1,0x1
    move	$a0,$s0
    ori	$a1,$a1,0x681c
    jalr	$t9
    addu	$a1,$s0,$a1
    # Line 141
    lw	$t9,-24944($s1)
    lui	$a1,0x1
    move	$a0,$s0
    ori	$a1,$a1,0x686c
    jalr	$t9
    addu	$a1,$s0,$a1
    # Line 146
    # lw $t9, -17360($gp) # &__glClampAndScaleColor
    # Line 144
    sb	$zero,-25203($s1)
    # Line 146
    move	$a0,$s0
    jal	__glClampAndScaleColor
    # Line 143
    sb	$zero,-25204($s1)
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 147
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f0a54:
    # Line 138
    lw	$t9,12076($s0)
    jalr	$t9
    nop
    b	.L0d9f09f4
    # Line 140
    lui	$s1,0x2
.end __glOdysseyChangeBothMaterialColors

# Function: __glOdysseyPickColorMaterialProcs
# Declared: Line 149 (Source lines: 150-199)
# Address: 0x0d9f0a70 - 0x0d9f0bb4 (Size: 324 bytes, Frame: 0)
.globl __glOdysseyPickColorMaterialProcs
.ent __glOdysseyPickColorMaterialProcs
__glOdysseyPickColorMaterialProcs:
    # Line 155
    li	$a4,1029
    # Line 150
    lbu	$v1,3220($a0)
    # Line 166
    li	$t1,5634
    # Line 150
    lui	$v0,0x10
    # Line 166
    li	$t0,4609
    # Line 150
    addiu	$v0,$v0,31520
    beqz	$v1,.L0d9f0b4c
    addu	$at,$t9,$v0
    lw	$a3,1792($a0)
    # Line 189
    la	$t3,__glClampAndScaleColor
    # Line 150
    andi	$v1,$a3,0x80
    # Line 160
    # lw $t9, -29660($gp) # &__glOdysseyChangeFrontMaterialColor
    # Line 157
    la	$t8,__glOdysseyChangeBothMaterialColors
    # Line 150
    beqz	$v1,.L0d9f0b0c
    # Line 182
    andi	$t2,$a3,0x40
    # Line 155
    lw	$a3,1384($a0)
    li	$a1,1032
    beq	$a3,$a1,.L0d9f0b20
    # Line 166
    li	$a5,5632
    # Line 155
    li	$a2,1028
    beq	$a3,$a2,.L0d9f0b28
    # Line 163
    la	$a1,__glOdysseyChangeBackMaterialColor
    # Line 155
    beq	$a3,$a4,.L0d9f0b44
    nop
.L0d9f0ad0:
    # Line 166
    lw	$a3,1388($a0)
    beq	$a3,$a5,.L0d9f0b58
    # Line 168
    lui	$a4,0x1
    # Line 166
    li	$a6,4610
    beq	$a3,$a6,.L0d9f0b6c
    # Line 171
    lui	$a6,0x1
    # Line 166
    li	$a7,4608
    beq	$a3,$a7,.L0d9f0b80
    nop
    beq	$a3,$t0,.L0d9f0b98
    # Line 177
    lui	$t2,0x1
    # Line 166
    beq	$a3,$t1,.L0d9f0b30
    # Line 180
    lui	$v1,0x1
    # Line 199
    jr	$ra
    nop
.L0d9f0b0c:
    # Line 182
    beqz	$t2,.L0d9f0bac
    nop
    # Line 187
    la	$t3,__glClampAndScaleColor
    # Line 199
    jr	$ra
    # Line 187
    sw	$t3,12056($a0)
.L0d9f0b20:
    b	.L0d9f0ad0
    # Line 157
    sw	$t8,12056($a0)
.L0d9f0b28:
    # Line 161
    b	.L0d9f0ad0
    # Line 160
    sw	$t9,12056($a0)
.L0d9f0b30:
    # Line 180
    ori	$v1,$v1,0x9e90
    la	$v0,__glOdysseyChangeMaterialAmbientAndDiffuse
    addu	$v1,$v1,$a0
    # Line 199
    jr	$ra
    # Line 180
    sw	$v0,0($v1)
.L0d9f0b44:
    # Line 164
    b	.L0d9f0ad0
    # Line 163
    sw	$a1,12056($a0)
.L0d9f0b4c:
    # Line 197
    la	$a2,__glNop
    # Line 199
    jr	$ra
    # Line 197
    sw	$a2,12056($a0)
.L0d9f0b58:
    # Line 168
    ori	$a4,$a4,0x9e90
    la	$a3,__glOdysseyChangeMaterialEmission
    addu	$a4,$a4,$a0
    # Line 199
    jr	$ra
    # Line 168
    sw	$a3,0($a4)
.L0d9f0b6c:
    # Line 171
    ori	$a6,$a6,0x9e90
    la	$a5,__glOdysseyChangeMaterialSpecular
    addu	$a6,$a6,$a0
    # Line 199
    jr	$ra
    # Line 171
    sw	$a5,0($a6)
.L0d9f0b80:
    # Line 174
    lui	$t0,0x1
    ori	$t0,$t0,0x9e90
    la	$a7,__glOdysseyChangeMaterialAmbient
    addu	$t0,$t0,$a0
    # Line 199
    jr	$ra
    # Line 174
    sw	$a7,0($t0)
.L0d9f0b98:
    # Line 177
    ori	$t2,$t2,0x9e90
    la	$t1,__glOdysseyChangeMaterialDiffuse
    addu	$t2,$t2,$a0
    # Line 199
    jr	$ra
    # Line 177
    sw	$t1,0($t2)
.L0d9f0bac:
    # Line 199
    jr	$ra
    # Line 189
    sw	$t3,12056($a0)
.end __glOdysseyPickColorMaterialProcs

# Function: __glOdysseyComputeLightState
# Declared: Line 206 (Source lines: 207-296)
# Address: 0x0d9f0bc0 - 0x0d9f0ebc (Size: 764 bytes, Frame: 160)
.globl __glOdysseyComputeLightState
.ent __glOdysseyComputeLightState
__glOdysseyComputeLightState:
    # Line 207
    addiu	$sp,$sp,-160
    sd	$s3,24($sp)
    # Line 220
    lw	$s3,1800($a0)
    # Line 207
    sd	$s0,32($sp)
    # Line 218
    lw	$s0,28152($a0)
    # Line 207
    sd	$s1,40($sp)
    sd	$s8,48($sp)
    # Line 220
    lw	$a1,3588($a0)
    # Line 219
    addiu	$s8,$a0,28236
    # Line 207
    sd	$s2,16($sp)
    lui	$at,0x10
    move	$s2,$a0
    # Line 217
    lw	$s1,1584($a0)
    # Line 207
    addiu	$at,$at,31184
    sd	$gp,56($sp)
    # Line 220
    blez	$a1,.L0d9f0e8c
    # Line 207
    addu	$gp,$t9,$at
    # Line 220
    li	$a0,1
    sdc1	$f20,112($sp)
    sd	$ra,80($sp)
    sdc1	$f30,152($sp)
    lwc1	$f30,_lit_3de147ae
    sdc1	$f28,144($sp)
    lwc1	$f28,_lit_3f170a3d
    sdc1	$f26,120($sp)
    lwc1	$f26,_lit_3e99999a
    sdc1	$f24,136($sp)
    sd	$s6,72($sp)
    sd	$s7,104($sp)
    sdc1	$f22,128($sp)
    mtc1	$zero,$f22
    move	$s7,$zero
    sd	$s5,96($sp)
    addiu	$s5,$s0,160
    addiu	$s6,$s0,116
    lwc1	$f24,_lit_43340000
    sd	$s4,88($sp)
    b	.L0d9f0eb0
    addiu	$s4,$s0,200
.L0d9f0c5c:
    # Line 249
    beqz	$a1,.L0d9f0c70
    swc1	$f20,112($s0)
.L0d9f0c64:
    # Line 252
    # lw $t9, -24992($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s2
.L0d9f0c70:
    # Line 254
    # lw $t9, -24996($gp) # &__glCreateSpecLUT
.L0d9f0c74:
    move	$a0,$s2
    jal	__glCreateSpecLUT
    mov.s	$f13,$f20
    sw	$v0,216($s0)
    # Line 255
    lwc1	$f1,4($v0)
    swc1	$f1,208($s0)
    # Line 256
    lwc1	$f0,8($v0)
    # Line 257
    addiu	$v0,$v0,16
    sw	$v0,204($s0)
    li	$a0,1
    # Line 256
    swc1	$f0,212($s0)
.L0d9f0ca0:
    # Line 260
    lwc1	$f2,104($s1)
    c.eq.s	$f2,$f22
    bc1t	.L0d9f0cc0
    swc1	$f2,100($s0)
    # Line 262
    lwc1	$f4,104($s1)
    lwc1	$f3,3544($s2)
    div.s	$f3,$f3,$f4
    swc1	$f3,152($s0)
.L0d9f0cc0:
    # Line 264
    lwc1	$f6,108($s1)
    swc1	$f6,104($s0)
    # Line 265
    lwc1	$f5,112($s1)
    swc1	$f5,108($s0)
    lbu	$v1,3221($s2)
    beqz	$v1,.L0d9f0d14
    nop
    # Line 272
    lwc1	$f8,36($s1)
    lwc1	$f10,32($s1)
    lwc1	$f9,40($s1)
    mul.s	$f8,$f8,$f28
    madd.s	$f8,$f8,$f10,$f26
    madd.s	$f8,$f8,$f9,$f30
    swc1	$f8,192($s0)
    # Line 275
    lwc1	$f7,20($s1)
    lwc1	$f9,16($s1)
    lwc1	$f8,24($s1)
    mul.s	$f7,$f7,$f28
    madd.s	$f7,$f7,$f9,$f26
    madd.s	$f7,$f7,$f8,$f30
    swc1	$f7,196($s0)
.L0d9f0d14:
    # Line 279
    lbu	$a1,1412($s2)
    beqz	$a1,.L0d9f0df0
    nop
.L0d9f0d20:
    # Line 292
    sb	$a0,220($s0)
.L0d9f0d24:
    lw	$a1,3588($s2)
.L0d9f0d28:
    # Line 222
    addiu	$s4,$s4,224
    addiu	$s6,$s6,224
    addiu	$s5,$s5,224
    addiu	$s7,$s7,1
    addiu	$s0,$s0,224
    slt	$a2,$s7,$a1
    addiu	$s1,$s1,116
    srl	$s3,$s3,0x1
    beqz	$a2,.L0d9f0e60
    # Line 223
    andi	$a3,$s3,0x1
.L0d9f0d50:
    beqz	$a3,.L0d9f0d28
    # Line 235
    li	$a4,1
    # Line 226
    sw	$s0,0($s8)
    # Line 227
    sw	$s1,96($s0)
    # Line 234
    lwc1	$f13,64($s1)
    swc1	$f13,116($s0)
    lwc1	$f12,68($s1)
    swc1	$f12,120($s0)
    lwc1	$f11,72($s1)
    swc1	$f11,124($s0)
    lwc1	$f10,76($s1)
    swc1	$f10,128($s0)
    # Line 235
    lwc1	$f9,100($s1)
    c.eq.s $f9,$f24
    movt	$a4,$zero,$fcc1
    sd	$a4,64($sp)
    # Line 228
    move	$s8,$s4
    # Line 235
    beqz	$a4,.L0d9f0ca0
    sb	$a4,156($s0)
    # Line 237
    lwc1	$f13,_lit_3c8efa35
    lwc1	$f12,100($s1)
    # lw $t9, -16924($gp) # &cosf
    jal	cosf
    mul.s	$f12,$f12,$f13
    # Line 241
    ld	$a5,64($sp)
    li	$a0,1
    beqz	$a5,.L0d9f0ca0
    # Line 237
    swc1	$f0,148($s0)
    # Line 241
    lw	$a1,216($s0)
    beqz	$a1,.L0d9f0c5c
    lwc1	$f20,96($s1)
    lwc1	$f14,112($s0)
    c.eq.s $f14,$f20
    bc1t .L0d9f0ca0
    nop
    # Line 249
    bnez	$a1,.L0d9f0c64
    swc1	$f20,112($s0)
    b	.L0d9f0c74
    # Line 254
    nop	# was lw $t9, -24996($gp) # &__glCreateSpecLUT
    nop
.L0d9f0df0:
    # Line 279
    lbu	$a6,156($s0)
    bnez	$a6,.L0d9f0d20
    nop
    lwc1	$f15,128($s0)
    c.eq.s $f15,$f22
    bc1f .L0d9f0d20
    nop
    # Line 284
    lw	$t9,11960($s2)
    move	$a1,$s6
    jal	__glCreateSpecLUT
    addiu	$a0,$sp,0
    # Line 285
    lwc1	$f21,0($sp)
    swc1	$f21,176($s0)
    # Line 286
    lwc1	$f19,4($sp)
    swc1	$f19,180($s0)
    # Line 287
    lwc1	$f18,8($sp)
    swc1	$f18,184($s0)
    # Line 288
    lwc1	$f17,8($sp)
    lwc1	$f16,3544($s2)
    add.s	$f16,$f16,$f17
    swc1	$f16,8($sp)
    # Line 289
    lw	$t9,11960($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s5
    li	$a0,1
    # Line 290
    b	.L0d9f0d24
    sb	$zero,220($s0)
.L0d9f0e60:
    ld	$s6,72($sp)
    ld	$ra,80($sp)
    ld	$s4,88($sp)
    ld	$s5,96($sp)
    ld	$s7,104($sp)
    ldc1	$f20,112($sp)
    ldc1	$f26,120($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,136($sp)
    ldc1	$f28,144($sp)
    ldc1	$f30,152($sp)
.L0d9f0e8c:
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 296
    ld	$gp,56($sp)
    # Line 295
    sw	$zero,0($s8)
    # Line 296
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9f0eb0:
    # Line 223
    andi	$a3,$s3,0x1
    b	.L0d9f0d50
    nop
.end __glOdysseyComputeLightState

# Function: vvec
# Declared: Line 302 (Source lines: 306-366)
# Address: 0x0d9f0ec0 - 0x0d9f0f9c (Size: 220 bytes, Frame: 0)
.ent vvec
vvec:
    # Line 306
    lw	$a5,12($a1)
    sll	$a5,$a5,0x1
    lw	$a4,12($a2)
    beqz	$a5,.L0d9f0f30
    sll	$a4,$a4,0x1
    lwc1	$f4,0($a2)
    beqz	$a4,.L0d9f0f5c
    nop
    # Line 317
    lwc1	$f3,12($a1)
    # Line 319
    lwc1	$f1,4($a2)
    # Line 320
    lwc1	$f2,8($a2)
    # Line 321
    mul.s	$f0,$f4,$f3
    # Line 322
    mul.s	$f1,$f1,$f3
    # Line 321
    swc1	$f0,0($a0)
    # Line 323
    mul.s	$f2,$f2,$f3
    # Line 322
    swc1	$f1,4($a0)
    # Line 323
    swc1	$f2,8($a0)
    # Line 327
    lwc1	$f6,8($a1)
    # Line 324
    lwc1	$f4,12($a2)
    # Line 326
    lwc1	$f5,4($a1)
    # Line 328
    lwc1	$f3,0($a1)
    # Line 330
    nmsub.s	$f2,$f2,$f4,$f6
    # Line 329
    nmsub.s	$f1,$f1,$f4,$f5
    # Line 328
    nmsub.s	$f0,$f0,$f3,$f4
    # Line 330
    swc1	$f2,8($a0)
    # Line 329
    swc1	$f1,4($a0)
    # Line 366
    jr	$ra
    # Line 328
    swc1	$f0,0($a0)
.L0d9f0f30:
    # Line 340
    lwc1	$f5,0($a1)
    lwc1	$f4,8($a1)
    beqz	$a4,.L0d9f0f74
    lwc1	$f6,4($a1)
    # Line 351
    neg.s	$f4,$f4
    # Line 350
    neg.s	$f3,$f6
    # Line 351
    swc1	$f4,8($a0)
    # Line 349
    neg.s	$f2,$f5
    # Line 350
    swc1	$f3,4($a0)
    # Line 366
    jr	$ra
    # Line 349
    swc1	$f2,0($a0)
.L0d9f0f5c:
    # Line 338
    swc1	$f4,0($a0)
    # Line 339
    lwc1	$f6,4($a2)
    swc1	$f6,4($a0)
    # Line 340
    lwc1	$f5,8($a2)
    # Line 366
    jr	$ra
    # Line 340
    swc1	$f5,8($a0)
.L0d9f0f74:
    # Line 361
    lwc1	$f9,8($a2)
    # Line 360
    lwc1	$f8,4($a2)
    # Line 362
    lwc1	$f7,0($a2)
    # Line 361
    sub.s	$f9,$f9,$f4
    # Line 360
    sub.s	$f8,$f8,$f6
    # Line 364
    swc1	$f9,8($a0)
    # Line 362
    sub.s	$f7,$f7,$f5
    # Line 363
    swc1	$f8,4($a0)
    # Line 366
    jr	$ra
    # Line 362
    swc1	$f7,0($a0)
.end vvec

# Function: __glOdysseySoftClipCalcRGBColor
# Declared: Line 369 (Source lines: 371-642)
# Address: 0x0d9f0fa0 - 0x0d9f184c (Size: 2220 bytes, Frame: 192)
.globl __glOdysseySoftClipCalcRGBColor
.ent __glOdysseySoftClipCalcRGBColor
__glOdysseySoftClipCalcRGBColor:
    # Line 371
    addiu	$sp,$sp,-320
    sdc1	$f24,232($sp)
    sdc1	$f22,240($sp)
    sdc1	$f26,248($sp)
    sdc1	$f20,96($sp)
    sd	$s4,312($sp)
    sd	$ra,288($sp)
    sd	$s8,280($sp)
    sd	$s3,272($sp)
    sd	$s2,264($sp)
    sd	$s7,192($sp)
    move	$s7,$a2
    # Line 388
    lw	$at,1416($a0)
    # Line 371
    sd	$s1,200($sp)
    # Line 388
    li	$v0,0x81fa
    # Line 371
    lui	$v1,0x10
    move	$s1,$a0
    sd	$s6,256($sp)
    addiu	$v1,$v1,30192
    sd	$gp,208($sp)
    # Line 388
    beq	$at,$v0,.L0d9f17fc
    # Line 371
    addu	$gp,$t9,$v1
.L0d9f0ff8:
    sd	$zero,168($sp)
.L0d9f0ffc:
    # Line 388
    lbu	$a0,400($s7)
    lwc1	$f4,40($s7)
    lwc1	$f5,36($s7)
    lwc1	$f6,32($s7)
    sd	$s5,304($sp)
    beqz	$a1,.L0d9f166c
    sd	$s0,296($sp)
    # Line 408
    addiu	$s5,$s1,28196
    # Line 407
    addiu	$t9,$s7,384
    sd	$t9,184($sp)
    # Line 406
    addiu	$t8,$s7,160
    sd	$t8,176($sp)
    # Line 411
    neg.s	$f2,$f4
    # Line 412
    lui	$s2,0x1
    addiu	$a2,$s7,288
    # Line 410
    neg.s	$f1,$f5
    # Line 411
    sdc1	$f2,128($sp)
    # Line 414
    ori	$s0,$s2,0x9d8d
    # Line 409
    neg.s	$f0,$f6
    # Line 410
    sdc1	$f1,120($sp)
    # Line 414
    addu	$s0,$s1,$s0
    # Line 412
    ori	$s2,$s2,0x686c
    # Line 409
    sdc1	$f0,136($sp)
    # Line 412
    addu	$s2,$s1,$s2
    # Line 424
    beqz	$a0,.L0d9f16ac
    movz	$s2,$a2,$a0
.L0d9f1064:
    lbu	$ra,0($s0)
    beqz	$ra,.L0d9f16ac
    nop
.L0d9f1070:
    # Line 484
    lbu	$s4,1412($s1)
    # Line 481
    lwc1	$f24,8($s5)
    # Line 480
    lwc1	$f26,4($s5)
    # Line 479
    lwc1	$f22,0($s5)
    # Line 482
    mtc1	$zero,$f20
    # Line 483
    lwc1	$f4,108($s7)
    sdc1	$f30,104($sp)
    # Line 478
    lwc1	$f3,3544($s1)
    # Line 485
    lw	$s0,28236($s1)
    # Line 483
    c.eq.s	$f4,$f20
    sdc1	$f28,224($sp)
    li	$at,1
    # Line 478
    sdc1	$f3,112($sp)
    # Line 483
    movf	$at,$zero,$fcc0
    # Line 485
    beqz	$s0,.L0d9f17e8
    sd	$at,216($sp)
    mtc1	$zero,$f30
    mtc1	$zero,$f28
    ld	$t8,168($sp)
    mtc1	$zero,$f5
    la	$s6,sub_0daf0000
    sll	$s8,$a1,0x2
    addiu	$s3,$s7,96
    la	$s2,sub_0d9f0000
    subu	$s8,$s8,$a1
    sdc1	$f5,144($sp)
    addiu	$s6,$s6,-12416
    andi	$t8,$t8,0xff
    sd	$t8,160($sp)
    addiu	$s2,$s2,3776
    b	.L0d9f1128
    sll	$s8,$s8,0x4
.L0d9f10f0:
    # Line 582
    mtc1	$zero,$f10
    mtc1	$zero,$f9
    mtc1	$zero,$f11
.L0d9f10fc:
    # Line 590
    ldc1	$f8,144($sp)
    madd.s	$f8,$f8,$f9,$f4
    # Line 591
    madd.s	$f30,$f30,$f10,$f4
    # Line 589
    madd.s	$f28,$f28,$f11,$f4
    # Line 587
    madd.s	$f24,$f24,$f6,$f4
    # Line 586
    madd.s	$f26,$f26,$f7,$f4
    # Line 585
    madd.s	$f22,$f22,$f5,$f4
    # Line 590
    sdc1	$f8,144($sp)
.L0d9f111c:
    # Line 629
    lw	$s0,200($s0)
    beqz	$s0,.L0d9f14a8
    nop
.L0d9f1128:
    # Line 488
    lbu	$t9,220($s0)
    # Line 601
    ldc1	$f6,120($sp)
    # Line 616
    ldc1	$f16,144($sp)
    # Line 596
    addu	$a0,$s8,$s0
    # Line 488
    bnez	$t9,.L0d9f1148
    ld	$ra,216($sp)
    # Line 601
    ldc1	$f8,136($sp)
    # Line 488
    beqz	$ra,.L0d9f13cc
.L0d9f1148:
    # Line 494
    move	$t9,$s2
    addiu	$a2,$s0,116
    move	$a1,$s3
    bal __glOdysseyComputeLightState
    addiu	$a0,$sp,16
    # Line 495
    lw	$t9,11960($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,32
    beqz	$s4,.L0d9f11cc
    # Line 504
    lwc1	$f17,36($sp)
    # Line 497
    move	$t9,$s2
    addiu	$a0,$sp,48
    move	$a1,$s3
    bal __glOdysseyComputeLightState
    move	$a2,$s6
    # Line 498
    lw	$t9,11960($s1)
    addiu	$a0,$sp,48
    jalr	$t9
    move	$a1,$a0
    # Line 499
    lwc1	$f10,48($sp)
    # Line 500
    lwc1	$f12,52($sp)
    # Line 501
    lwc1	$f14,56($sp)
    lwc1	$f13,40($sp)
    # Line 500
    lwc1	$f11,36($sp)
    # Line 499
    lwc1	$f9,32($sp)
    # Line 501
    add.s	$f13,$f13,$f14
    # Line 500
    add.s	$f11,$f11,$f12
    # Line 501
    swc1	$f13,72($sp)
    # Line 499
    add.s	$f9,$f9,$f10
    # Line 500
    swc1	$f11,68($sp)
    # Line 501
    b	.L0d9f11e8
    # Line 499
    swc1	$f9,64($sp)
.L0d9f11cc:
    # Line 505
    lwc1	$f16,40($sp)
    # Line 503
    lwc1	$f18,32($sp)
    # Line 504
    swc1	$f17,68($sp)
    # Line 503
    swc1	$f18,64($sp)
    # Line 505
    lwc1	$f15,3544($s1)
    add.s	$f15,$f15,$f16
    swc1	$f15,72($sp)
.L0d9f11e8:
    # Line 507
    lw	$t9,11960($s1)
    addiu	$a1,$sp,64
    jalr	$t9
    addiu	$a0,$sp,80
    lwc1	$f19,128($s0)
    # Line 522
    lwc1	$f11,20($sp)
    lwc1	$f10,24($sp)
    # Line 530
    lbu	$at,156($s0)
    # Line 507
    c.eq.s $f19,$f20
    # Line 556
    ldc1	$f15,120($sp)
    # Line 507
    li	$a0,1
    # Line 556
    ldc1	$f13,136($sp)
    # Line 507
    movt	$a0,$zero,$fcc1
    # Line 556
    lwc1	$f14,36($sp)
    # Line 507
    beqz	$a0,.L0d9f14a0
    # Line 522
    lwc1	$f9,16($sp)
    # Line 514
    lwc1	$f6,104($s0)
    # Line 516
    c.eq.s $f6,$f20
    # Line 522
    lwc1	$f7,100($s0)
    # Line 516
    bc1f .L0d9f1250
    # Line 515
    lwc1	$f4,108($s0)
    # Line 516
    c.eq.s $f4,$f20
    bc1f .L0d9f1250
    nop
    # Line 518
    b	.L0d9f1274
    lwc1	$f5,152($s0)
.L0d9f1250:
    # Line 522
    mul.s	$f9,$f9,$f9
    madd.s	$f9,$f9,$f11,$f11
    madd.s	$f9,$f9,$f10,$f10
    sqrt.s	$f9,$f9
    mul.s	$f8,$f9,$f4
    madd.s	$f7,$f7,$f6,$f9
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f5,3544($s1)
    div.s	$f5,$f5,$f7
.L0d9f1274:
    # Line 530
    beqz	$at,.L0d9f1304
    # Line 529
    mov.s	$f4,$f5
    # Line 530
    beqz	$a0,.L0d9f1304
    # Line 536
    lwc1	$f10,32($sp)
    lwc1	$f8,36($sp)
    lwc1	$f6,136($s0)
    lwc1	$f9,132($s0)
    lwc1	$f7,140($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,40($sp)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 538
    lwc1	$f7,208($s0)
    # Line 536
    neg.s	$f6,$f6
    # Line 538
    c.le.s $f7,$f6
    bc1f .L0d9f1300
    lwc1	$f9,148($s0)
    c.le.s $f9,$f6
    bc1f .L0d9f1300
    nop
    # Line 539
    lwc1	$f11,212($s0)
    sub.s	$f12,$f6,$f7
    lwc1	$f10,3540($s1)
    madd.s	$f10,$f10,$f11,$f12
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    slti	$v0,$a0,256
    # Line 542
    lw	$v1,204($s0)
    # Line 539
    beqz	$v0,.L0d9f1304
    # Line 542
    sll	$a1,$a0,0x2
    addu	$v1,$v1,$a1
    lwc1	$f4,0($v1)
    b	.L0d9f1304
    mul.s	$f4,$f4,$f5
    nop
.L0d9f1300:
    # Line 545
    mtc1	$zero,$f4
.L0d9f1304:
    # Line 562
    ldc1	$f9,120($sp)
    # Line 538
    c.eq.s $f4,$f20
    # Line 562
    lwc1	$f8,84($sp)
    lwc1	$f10,80($sp)
    # Line 554
    addu	$a0,$s8,$s0
    # Line 538
    bc1t .L0d9f111c
    # Line 556
    lwc1	$f12,32($sp)
    mul.s	$f12,$f12,$f13
    madd.s	$f12,$f12,$f14,$f15
    ldc1	$f14,128($sp)
    lwc1	$f13,40($sp)
    madd.s	$f12,$f12,$f13,$f14
    # Line 562
    lwc1	$f11,88($sp)
    # Line 556
    c.lt.s $f20,$f12
    lwc1	$f6,8($a0)
    # Line 555
    lwc1	$f7,4($a0)
    # Line 556
    bc1f .L0d9f10f0
    # Line 554
    lwc1	$f5,0($a0)
    # Line 562
    mul.s	$f8,$f8,$f9
    ldc1	$f9,136($sp)
    madd.s	$f8,$f8,$f9,$f10
    ldc1	$f9,128($sp)
    lwc1	$f10,16($s5)
    madd.s	$f8,$f8,$f9,$f11
    lwc1	$f9,24($s5)
    c.eq.s	$f10,$f20
    # Line 567
    lw	$a3,20($s5)
    # Line 565
    lwc1	$f11,28($s5)
    # Line 577
    mtc1	$zero,$f10
    # Line 562
    bc1f	.L0d9f1384
    sub.s	$f8,$f8,$f9
    # Line 563
    lwc1	$f8,3544($s1)
.L0d9f1384:
    c.le.s $f20,$f8
    bc1f .L0d9f1624
    # Line 577
    mtc1	$zero,$f9
    # Line 565
    lwc1	$f10,3540($s1)
    madd.s	$f10,$f10,$f11,$f8
    trunc.w.s	$f10,$f10
    # Line 568
    lwc1	$f17,32($a0)
    # Line 565
    mfc1	$a1,$f10
    # Line 568
    lwc1	$f16,40($a0)
    lwc1	$f18,36($a0)
    # Line 565
    slti	$a2,$a1,256
    # Line 568
    ld	$t1,160($sp)
    lwc1	$f8,3544($s1)
    # Line 565
    beqz	$a2,.L0d9f1600
    # Line 567
    sll	$a4,$a1,0x2
    addu	$a3,$a3,$a4
    b	.L0d9f1600
    lwc1	$f8,0($a3)
.L0d9f13cc:
    # Line 601
    lwc1	$f5,180($s0)
    lwc1	$f7,176($s0)
    mul.s	$f5,$f5,$f6
    madd.s	$f5,$f5,$f7,$f8
    ldc1	$f7,128($sp)
    lwc1	$f6,184($s0)
    madd.s	$f5,$f5,$f6,$f7
    # Line 612
    ld	$t2,160($sp)
    # Line 606
    lwc1	$f4,164($s0)
    # Line 598
    lwc1	$f14,8($a0)
    # Line 597
    lwc1	$f13,4($a0)
    # Line 596
    lwc1	$f12,0($a0)
    # Line 601
    c.lt.s $f20,$f5
    # Line 606
    ldc1	$f8,136($sp)
    # Line 598
    add.s	$f24,$f14,$f24
    # Line 597
    add.s	$f26,$f13,$f26
    # Line 606
    lwc1	$f7,160($s0)
    # Line 596
    add.s	$f22,$f12,$f22
    # Line 601
    bc1f .L0d9f111c
    # Line 606
    ldc1	$f6,120($sp)
    mul.s	$f4,$f4,$f6
    madd.s	$f4,$f4,$f7,$f8
    ldc1	$f8,128($sp)
    lwc1	$f6,168($s0)
    lwc1	$f7,16($s5)
    madd.s	$f4,$f4,$f6,$f8
    # Line 611
    lw	$a6,20($s5)
    # Line 626
    lwc1	$f19,24($a0)
    # Line 606
    lwc1	$f6,24($s5)
    c.eq.s $f7,$f20
    # Line 625
    lwc1	$f18,20($a0)
    # Line 624
    lwc1	$f17,16($a0)
    # Line 609
    lwc1	$f8,28($s5)
    # Line 606
    bc1f .L0d9f145c
    sub.s	$f4,$f4,$f6
    # Line 607
    lwc1	$f4,3544($s1)
.L0d9f145c:
    c.le.s $f20,$f4
    bc1f .L0d9f165c
    nop
    # Line 609
    lwc1	$f7,3540($s1)
    madd.s	$f7,$f7,$f8,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a1,$f7
    # Line 612
    lwc1	$f6,32($a0)
    lwc1	$f4,3544($s1)
    # Line 609
    slti	$a5,$a1,256
    # Line 612
    lwc1	$f8,40($a0)
    # Line 611
    sll	$a7,$a1,0x2
    # Line 612
    lwc1	$f7,36($a0)
    # Line 609
    beqz	$a5,.L0d9f1644
    # Line 611
    addu	$a6,$a6,$a7
    b	.L0d9f1644
    lwc1	$f4,0($a6)
.L0d9f14a0:
    b	.L0d9f1274
    # Line 525
    lwc1	$f5,3544($s1)
.L0d9f14a8:
    ld	$s4,312($sp)
    ld	$s0,296($sp)
    ld	$ra,288($sp)
    ld	$s8,280($sp)
    # Line 629
    c.lt.s $f20,$f22
    ld	$s3,272($sp)
    ld	$s2,264($sp)
    # Line 633
    mov.s	$f4,$f20
    # Line 629
    bc1f .L0d9f14dc
    ld	$s6,256($sp)
    # Line 633
    ldc1	$f4,112($sp)
    c.lt.s $f22,$f4
    movt.s	$f4,$f22,$fcc6
.L0d9f14dc:
    c.lt.s $f20,$f26
    ld	$a0,176($sp)
    bc1f .L0d9f14fc
    swc1	$f4,0($a0)
    # Line 634
    ldc1	$f4,112($sp)
    c.lt.s	$f26,$f4
    b	.L0d9f1500
    movt.s	$f4,$f26,$fcc0
.L0d9f14fc:
    mov.s	$f4,$f20
.L0d9f1500:
    c.lt.s $f20,$f24
    bc1f .L0d9f151c
    swc1	$f4,4($a0)
    # Line 635
    ldc1	$f4,112($sp)
    c.lt.s $f24,$f4
    b	.L0d9f1520
    movt.s	$f4,$f24,$fcc2
.L0d9f151c:
    mov.s	$f4,$f20
.L0d9f1520:
    swc1	$f4,8($a0)
    # Line 636
    c.lt.s $f20,$f28
    lwc1	$f9,36($s5)
    ld	$a1,184($sp)
    # Line 638
    mov.s	$f4,$f20
    # Line 636
    bc1f .L0d9f1550
    swc1	$f9,12($a0)
    ld	$s5,304($sp)
    # Line 638
    ldc1	$f4,112($sp)
    c.lt.s $f28,$f4
    b	.L0d9f1554
    movt.s	$f4,$f28,$fcc4
.L0d9f1550:
    ld	$s5,304($sp)
.L0d9f1554:
    ldc1	$f10,144($sp)
    c.lt.s $f20,$f10
    ldc1	$f28,224($sp)
    bc1f .L0d9f157c
    swc1	$f4,0($a1)
    # Line 639
    ldc1	$f11,144($sp)
    ldc1	$f4,112($sp)
    c.lt.s $f11,$f4
    b	.L0d9f1580
    movt.s	$f4,$f11,$fcc6
.L0d9f157c:
    mov.s	$f4,$f20
.L0d9f1580:
    c.lt.s $f20,$f30
    bc1f .L0d9f15cc
    swc1	$f4,4($a1)
    # Line 642
    ld	$s7,192($sp)
    ld	$s1,200($sp)
    ld	$gp,208($sp)
    ldc1	$f26,248($sp)
    ldc1	$f22,240($sp)
    # Line 640
    ldc1	$f12,112($sp)
    ldc1	$f24,232($sp)
    ldc1	$f28,224($sp)
    # Line 641
    swc1	$f20,12($a1)
    # Line 640
    c.lt.s	$f30,$f12
    # Line 642
    ldc1	$f20,96($sp)
    # Line 640
    movt.s	$f12,$f30,$fcc0
    # Line 642
    ldc1	$f30,104($sp)
    addiu	$sp,$sp,320
    jr	$ra
    # Line 640
    swc1	$f12,8($a1)
.L0d9f15cc:
    # Line 642
    ld	$s7,192($sp)
    ld	$s1,200($sp)
    ld	$gp,208($sp)
    ldc1	$f24,232($sp)
    ldc1	$f22,240($sp)
    ldc1	$f26,248($sp)
    # Line 641
    ld	$t0,184($sp)
    # Line 642
    ldc1	$f30,104($sp)
    # Line 641
    swc1	$f20,12($t0)
    # Line 640
    swc1	$f20,8($t0)
    # Line 642
    ldc1	$f20,96($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9f1600:
    # Line 568
    mul.s	$f13,$f17,$f8
    mul.s	$f15,$f16,$f8
    mul.s	$f14,$f18,$f8
    # Line 573
    mov.s	$f10,$f15
    # Line 568
    beqz	$t1,.L0d9f1818
    # Line 572
    mov.s	$f9,$f14
    # Line 571
    mov.s	$f11,$f13
    # Line 573
    b	.L0d9f162c
    # Line 582
    lwc1	$f15,24($a0)
.L0d9f1624:
    # Line 577
    mtc1	$zero,$f11
.L0d9f1628:
    # Line 582
    lwc1	$f15,24($a0)
.L0d9f162c:
    # Line 581
    lwc1	$f14,20($a0)
    # Line 580
    lwc1	$f13,16($a0)
    # Line 582
    madd.s	$f6,$f6,$f15,$f12
    # Line 581
    madd.s	$f7,$f7,$f14,$f12
    # Line 582
    b	.L0d9f10fc
    # Line 580
    madd.s	$f5,$f5,$f13,$f12
.L0d9f1644:
    # Line 612
    beqz	$t2,.L0d9f1834
    nop
    # Line 616
    madd.s	$f16,$f16,$f7,$f4
    # Line 617
    madd.s	$f30,$f30,$f8,$f4
    # Line 615
    madd.s	$f28,$f28,$f6,$f4
    # Line 616
    sdc1	$f16,144($sp)
.L0d9f165c:
    # Line 626
    madd.s	$f24,$f24,$f19,$f5
    # Line 625
    madd.s	$f26,$f26,$f18,$f5
    b	.L0d9f111c
    # Line 624
    madd.s	$f22,$f22,$f17,$f5
.L0d9f166c:
    # Line 398
    addiu	$s5,$s1,28156
    # Line 397
    addiu	$t9,$s7,368
    sd	$t9,184($sp)
    # Line 396
    addiu	$t8,$s7,144
    sd	$t8,176($sp)
    # Line 402
    lui	$s2,0x1
    # Line 401
    sdc1	$f4,128($sp)
    # Line 402
    addiu	$t3,$s7,208
    # Line 404
    ori	$s0,$s2,0x9d8c
    # Line 400
    sdc1	$f5,120($sp)
    # Line 404
    addu	$s0,$s1,$s0
    # Line 402
    ori	$s2,$s2,0x681c
    # Line 399
    sdc1	$f6,136($sp)
    # Line 402
    addu	$s2,$s1,$s2
    # Line 424
    bnez	$a0,.L0d9f1064
    movz	$s2,$t3,$a0
.L0d9f16ac:
    # Line 436
    lw	$s4,1792($s1)
    # Line 437
    li	$at,-129
    and	$at,$s4,$at
    sw	$at,1792($s1)
    # Line 439
    lwc1	$f0,0($s2)
    # Line 443
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 439
    swc1	$f0,0($sp)
    # Line 440
    lwc1	$f31,4($s2)
    sd	$a1,152($sp)
    swc1	$f31,4($sp)
    # Line 441
    lwc1	$f29,8($s2)
    # Line 443
    addiu	$a2,$sp,0
    ld	$ra,152($sp)
    li	$a1,4608
    li	$s3,1028
    # Line 441
    swc1	$f29,8($sp)
    # Line 443
    li	$at,1029
    sltiu	$ra,$ra,1
    # Line 442
    lwc1	$f27,12($s2)
    # Line 436
    andi	$s4,$s4,0x80
    # Line 443
    movz	$s3,$at,$ra
    move	$a0,$s3
    jal	__glim_Materialfv
    # Line 442
    swc1	$f27,12($sp)
    # Line 444
    lwc1	$f4,16($s2)
    swc1	$f4,0($sp)
    # Line 445
    lwc1	$f3,20($s2)
    swc1	$f3,4($sp)
    # Line 446
    lwc1	$f2,24($s2)
    # Line 448
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 446
    swc1	$f2,8($sp)
    # Line 447
    lwc1	$f1,28($s2)
    # Line 448
    addiu	$a2,$sp,0
    li	$a1,4609
    move	$a0,$s3
    jal	__glim_Materialfv
    # Line 447
    swc1	$f1,12($sp)
    # Line 449
    lwc1	$f8,32($s2)
    swc1	$f8,0($sp)
    # Line 450
    lwc1	$f7,36($s2)
    swc1	$f7,4($sp)
    # Line 451
    lwc1	$f6,40($s2)
    # Line 453
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 451
    swc1	$f6,8($sp)
    # Line 452
    lwc1	$f5,44($s2)
    # Line 453
    addiu	$a2,$sp,0
    li	$a1,4610
    move	$a0,$s3
    jal	__glim_Materialfv
    # Line 452
    swc1	$f5,12($sp)
    # Line 454
    lwc1	$f12,48($s2)
    swc1	$f12,0($sp)
    # Line 455
    lwc1	$f11,52($s2)
    swc1	$f11,4($sp)
    # Line 456
    lwc1	$f10,56($s2)
    # Line 458
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 456
    swc1	$f10,8($sp)
    # Line 457
    lwc1	$f9,60($s2)
    # Line 458
    addiu	$a2,$sp,0
    li	$a1,5632
    move	$a0,$s3
    jal	__glim_Materialfv
    # Line 457
    swc1	$f9,12($sp)
    # Line 460
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 459
    lwc1	$f13,64($s2)
    # Line 460
    addiu	$a2,$sp,0
    li	$a1,5633
    move	$a0,$s3
    jal	__glim_Materialfv
    # Line 459
    swc1	$f13,0($sp)
    # Line 462
    lw	$v1,1792($s1)
    or	$v1,$v1,$s4
    sw	$v1,1792($s1)
    lbu	$v0,400($s7)
    # Line 469
    li	$a0,1
    # Line 462
    beqz	$v0,.L0d9f1844
    ld	$a1,152($sp)
    # Line 469
    b	.L0d9f1070
    sb	$a0,0($s0)
.L0d9f17e8:
    # Line 629
    mtc1	$zero,$f30
    mtc1	$zero,$f14
    mtc1	$zero,$f28
    b	.L0d9f14a8
    sdc1	$f14,144($sp)
.L0d9f17fc:
    # Line 388
    lw	$a2,1792($a0)
    lui	$a3,0x4003
    and	$a2,$a2,$a3
    beqz	$a2,.L0d9f0ff8
    li	$a4,1
    b	.L0d9f0ffc
    sd	$a4,168($sp)
.L0d9f1818:
    # Line 577
    mtc1	$zero,$f10
    mtc1	$zero,$f9
    madd.s	$f6,$f6,$f16,$f8
    mtc1	$zero,$f11
    # Line 576
    madd.s	$f7,$f7,$f18,$f8
    b	.L0d9f1628
    # Line 575
    madd.s	$f5,$f5,$f17,$f8
.L0d9f1834:
    # Line 621
    madd.s	$f24,$f24,$f8,$f4
    # Line 620
    madd.s	$f26,$f26,$f7,$f4
    b	.L0d9f165c
    # Line 619
    madd.s	$f22,$f22,$f6,$f4
.L0d9f1844:
    b	.L0d9f1070
    # Line 471
    sb	$zero,0($s0)
.end __glOdysseySoftClipCalcRGBColor

# Function: __glOdysseySoftClipCalcCIColor
# Declared: Line 645 (Source lines: 647-841)
# Address: 0x0d9f1850 - 0x0d9f1e6c (Size: 1564 bytes, Frame: 128)
.globl __glOdysseySoftClipCalcCIColor
.ent __glOdysseySoftClipCalcCIColor
__glOdysseySoftClipCalcCIColor:
    # Line 647
    lbu	$a4,400($a2)
    lwc1	$f4,40($a2)
    lwc1	$f6,36($a2)
    lwc1	$f5,32($a2)
    addiu	$sp,$sp,-256
    sdc1	$f24,152($sp)
    sdc1	$f22,160($sp)
    sdc1	$f26,168($sp)
    sdc1	$f20,176($sp)
    sd	$s8,208($sp)
    sd	$s0,216($sp)
    sd	$s4,184($sp)
    sd	$ra,192($sp)
    move	$a5,$a1
    sd	$s7,128($sp)
    move	$s7,$a2
    sd	$s1,136($sp)
    lui	$at,0x10
    move	$s1,$a0
    sd	$s6,200($sp)
    addiu	$at,$at,27968
    sd	$gp,144($sp)
    beqz	$a1,.L0d9f1cdc
    addu	$gp,$t9,$at
    # Line 673
    addiu	$s6,$a0,28196
    # Line 672
    addiu	$v1,$a2,160
    # Line 677
    lui	$v0,0x1
    # Line 679
    ori	$s0,$v0,0x9d8d
    # Line 677
    ori	$v0,$v0,0x686c
    # Line 676
    neg.s	$f24,$f4
    # Line 672
    sd	$v1,120($sp)
    # Line 677
    addiu	$v1,$a2,288
    addu	$v0,$a0,$v0
    # Line 675
    neg.s	$f26,$f6
    movz	$v0,$v1,$a4
    # Line 674
    neg.s	$f22,$f5
    # Line 679
    addu	$s0,$a0,$s0
    # Line 689
    beqz	$a4,.L0d9f1d18
    sd	$v0,112($sp)
.L0d9f18ec:
    lbu	$a0,0($s0)
    beqz	$a0,.L0d9f1d18
.L0d9f18f4:
    # Line 725
    mtc1	$zero,$f20
    # Line 728
    lwc1	$f0,108($s7)
    # Line 727
    lw	$s0,28236($s1)
    # Line 728
    c.eq.s	$f0,$f20
    # Line 729
    lbu	$s4,1412($s1)
    # Line 728
    li	$s8,1
    # Line 729
    beqz	$s0,.L0d9f1ddc
    # Line 728
    movf	$s8,$zero,$fcc0
    sdc1	$f28,96($sp)
    sdc1	$f30,104($sp)
    sd	$s5,240($sp)
    # Line 729
    la	$s5,sub_0daf0000
    mtc1	$zero,$f30
    sd	$s2,224($sp)
    mtc1	$zero,$f28
    la	$s2,sub_0d9f0000
    sd	$s3,232($sp)
    addiu	$s3,$s7,96
    addiu	$s5,$s5,-12416
    b	.L0d9f1964
    addiu	$s2,$s2,3776
.L0d9f1948:
    # Line 803
    mul.s	$f2,$f6,$f4
    madd.s	$f30,$f30,$f1,$f2
.L0d9f1950:
    # Line 805
    mul.s	$f6,$f5,$f4
    madd.s	$f28,$f28,$f3,$f6
.L0d9f1958:
    # Line 828
    lw	$s0,200($s0)
.L0d9f195c:
    beqz	$s0,.L0d9f1c40
    ld	$a1,120($sp)
.L0d9f1964:
    # Line 731
    lbu	$t8,220($s0)
    bnez	$t8,.L0d9f1978
    # Line 737
    move	$t9,$s2
    # Line 731
    beqz	$s8,.L0d9f1ba8
    # Line 737
    move	$t9,$s2
.L0d9f1978:
    addiu	$a2,$s0,116
    move	$a1,$s3
    bal __glOdysseyComputeLightState
    addiu	$a0,$sp,16
    # Line 738
    lw	$t9,11960($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,32
    beqz	$s4,.L0d9f19f4
    # Line 740
    move	$t9,$s2
    addiu	$a2,$s5,16
    move	$a1,$s3
    bal __glOdysseyComputeLightState
    addiu	$a0,$sp,48
    # Line 741
    lw	$t9,11960($s1)
    addiu	$a0,$sp,48
    jalr	$t9
    move	$a1,$a0
    # Line 742
    lwc1	$f8,48($sp)
    # Line 743
    lwc1	$f10,52($sp)
    # Line 744
    lwc1	$f12,56($sp)
    lwc1	$f11,40($sp)
    # Line 743
    lwc1	$f9,36($sp)
    # Line 742
    lwc1	$f7,32($sp)
    # Line 744
    add.s	$f11,$f11,$f12
    # Line 743
    add.s	$f9,$f9,$f10
    # Line 744
    swc1	$f11,72($sp)
    # Line 742
    add.s	$f7,$f7,$f8
    # Line 743
    swc1	$f9,68($sp)
    # Line 744
    b	.L0d9f1a14
    # Line 742
    swc1	$f7,64($sp)
.L0d9f19f4:
    # Line 747
    lwc1	$f15,36($sp)
    # Line 748
    lwc1	$f14,40($sp)
    # Line 746
    lwc1	$f16,32($sp)
    # Line 747
    swc1	$f15,68($sp)
    # Line 746
    swc1	$f16,64($sp)
    # Line 748
    lwc1	$f13,3544($s1)
    add.s	$f13,$f13,$f14
    swc1	$f13,72($sp)
.L0d9f1a14:
    # Line 750
    lw	$t9,11960($s1)
    addiu	$a1,$sp,64
    jalr	$t9
    addiu	$a0,$sp,80
    lwc1	$f17,128($s0)
    # Line 765
    lwc1	$f11,20($sp)
    # Line 750
    c.eq.s $f17,$f20
    # Line 765
    lwc1	$f10,24($sp)
    # Line 772
    lbu	$t9,156($s0)
    # Line 750
    bc1t .L0d9f1a68
    # Line 765
    lwc1	$f9,16($sp)
    # Line 757
    lwc1	$f6,104($s0)
    # Line 759
    c.eq.s $f6,$f20
    # Line 765
    lwc1	$f7,100($s0)
    # Line 759
    bc1f .L0d9f1b80
    # Line 758
    lwc1	$f4,108($s0)
    # Line 759
    c.eq.s $f4,$f20
    bc1f .L0d9f1b80
    nop
    # Line 761
    b	.L0d9f1a6c
    lwc1	$f5,152($s0)
.L0d9f1a68:
    # Line 768
    lwc1	$f5,3544($s1)
.L0d9f1a6c:
    # Line 779
    lwc1	$f10,32($sp)
    # Line 772
    beqz	$t9,.L0d9f1af4
    mov.s	$f4,$f5
    # Line 779
    lwc1	$f8,36($sp)
    lwc1	$f6,136($s0)
    lwc1	$f9,132($s0)
    lwc1	$f7,140($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,40($sp)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 781
    lwc1	$f7,208($s0)
    # Line 779
    neg.s	$f6,$f6
    # Line 781
    c.le.s $f7,$f6
    bc1f .L0d9f1af0
    lwc1	$f9,148($s0)
    c.le.s $f9,$f6
    bc1f .L0d9f1af0
    nop
    # Line 782
    lwc1	$f11,212($s0)
    sub.s	$f12,$f6,$f7
    lwc1	$f10,3540($s1)
    madd.s	$f10,$f10,$f11,$f12
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    slti	$ra,$a0,256
    # Line 785
    lw	$at,204($s0)
    # Line 782
    beqz	$ra,.L0d9f1af4
    # Line 785
    sll	$v0,$a0,0x2
    addu	$at,$at,$v0
    lwc1	$f4,0($at)
    b	.L0d9f1af4
    mul.s	$f4,$f4,$f5
.L0d9f1af0:
    # Line 788
    mtc1	$zero,$f4
.L0d9f1af4:
    lwc1	$f7,36($sp)
    c.eq.s $f4,$f20
    lwc1	$f6,40($sp)
    # Line 797
    lwc1	$f8,80($sp)
    # Line 788
    bc1t .L0d9f1958
    lwc1	$f5,32($sp)
    mul.s	$f5,$f5,$f22
    madd.s	$f5,$f5,$f7,$f26
    madd.s	$f5,$f5,$f6,$f24
    c.lt.s $f20,$f5
    # Line 797
    lwc1	$f7,88($sp)
    # Line 788
    bc1f .L0d9f1958
    # Line 797
    lwc1	$f6,84($sp)
    mul.s	$f6,$f6,$f26
    madd.s	$f6,$f6,$f22,$f8
    madd.s	$f6,$f6,$f24,$f7
    lwc1	$f7,24($s6)
    sub.s	$f6,$f6,$f7
    c.le.s	$f20,$f6
    # Line 801
    lw	$a1,20($s6)
    # Line 805
    lwc1	$f3,196($s0)
    # Line 797
    bc1f	.L0d9f1950
    # Line 799
    lwc1	$f8,28($s6)
    lwc1	$f7,3540($s1)
    madd.s	$f7,$f7,$f8,$f6
    trunc.w.s	$f7,$f7
    mfc1	$a0,$f7
    slti	$v1,$a0,256
    # Line 803
    lwc1	$f1,192($s0)
    # Line 801
    sll	$a2,$a0,0x2
    # Line 802
    lwc1	$f6,3544($s1)
    # Line 799
    beqz	$v1,.L0d9f1948
    # Line 801
    addu	$a1,$a1,$a2
    b	.L0d9f1948
    lwc1	$f6,0($a1)
.L0d9f1b80:
    # Line 765
    mul.s	$f9,$f9,$f9
    madd.s	$f9,$f9,$f11,$f11
    madd.s	$f9,$f9,$f10,$f10
    sqrt.s	$f9,$f9
    mul.s	$f8,$f9,$f4
    madd.s	$f7,$f7,$f6,$f9
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f5,3544($s1)
    b	.L0d9f1a6c
    div.s	$f5,$f5,$f7
.L0d9f1ba8:
    # Line 812
    lwc1	$f5,180($s0)
    lwc1	$f7,176($s0)
    lwc1	$f6,184($s0)
    mul.s	$f5,$f5,$f26
    madd.s	$f5,$f5,$f7,$f22
    madd.s	$f5,$f5,$f6,$f24
    c.lt.s $f20,$f5
    # Line 816
    lwc1	$f4,164($s0)
    lwc1	$f7,160($s0)
    # Line 812
    bc1f .L0d9f1958
    # Line 816
    lwc1	$f6,168($s0)
    mul.s	$f4,$f4,$f26
    madd.s	$f4,$f4,$f7,$f22
    lwc1	$f7,16($s6)
    madd.s	$f4,$f4,$f6,$f24
    lwc1	$f6,24($s6)
    c.eq.s $f7,$f20
    # Line 821
    lw	$a4,20($s6)
    # Line 819
    lwc1	$f7,28($s6)
    # Line 816
    bc1f .L0d9f1c00
    sub.s	$f4,$f4,$f6
    # Line 817
    lwc1	$f4,3544($s1)
.L0d9f1c00:
    # Line 825
    lwc1	$f11,196($s0)
    # Line 817
    c.le.s $f20,$f4
    bc1f .L0d9f1cd4
    # Line 825
    madd.s	$f28,$f28,$f11,$f5
    # Line 819
    lwc1	$f6,3540($s1)
    madd.s	$f6,$f6,$f7,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a0,$f6
    slti	$a3,$a0,256
    # Line 823
    lwc1	$f10,192($s0)
    # Line 821
    sll	$a5,$a0,0x2
    # Line 822
    lwc1	$f4,3544($s1)
    # Line 819
    beqz	$a3,.L0d9f1cd0
    # Line 821
    addu	$a4,$a4,$a5
    b	.L0d9f1cd0
    lwc1	$f4,0($a4)
.L0d9f1c40:
    ld	$s5,240($sp)
    # Line 828
    lwc1	$f9,3544($s1)
    ld	$s6,200($sp)
    ld	$a0,112($sp)
    ld	$s3,232($sp)
    # Line 833
    mov.s	$f10,$f9
    # Line 828
    c.lt.s $f9,$f30
    # Line 835
    lwc1	$f11,68($a0)
    lwc1	$f12,76($a0)
    movf.s	$f10,$f30,$fcc5
    # Line 841
    ldc1	$f30,104($sp)
    # Line 835
    sub.s	$f9,$f9,$f10
    lwc1	$f8,72($a0)
    # Line 841
    ld	$s7,128($sp)
    # Line 835
    sub.s	$f12,$f12,$f11
    mul.s	$f9,$f28,$f9
    # Line 841
    ld	$s1,136($sp)
    ld	$gp,144($sp)
    # Line 835
    madd.s	$f9,$f11,$f9,$f12
    sub.s	$f11,$f8,$f11
    ldc1	$f20,176($sp)
    ldc1	$f26,168($sp)
    madd.s	$f9,$f9,$f10,$f11
    ldc1	$f22,160($sp)
    ldc1	$f24,152($sp)
    ld	$s0,216($sp)
    ld	$s8,208($sp)
    ld	$s2,224($sp)
    ld	$ra,192($sp)
    c.lt.s $f8,$f9
    ld	$s4,184($sp)
    # Line 841
    ldc1	$f28,96($sp)
    movf.s	$f8,$f9,$fcc4
    addiu	$sp,$sp,256
    jr	$ra
    # Line 840
    swc1	$f8,0($a1)
.L0d9f1cd0:
    # Line 823
    madd.s	$f30,$f30,$f10,$f4
.L0d9f1cd4:
    b	.L0d9f195c
    # Line 828
    lw	$s0,200($s0)
.L0d9f1cdc:
    # Line 663
    addiu	$a7,$a2,144
    # Line 668
    lui	$a6,0x1
    # Line 670
    ori	$s0,$a6,0x9d8c
    # Line 668
    ori	$a6,$a6,0x681c
    # Line 667
    mov.s	$f24,$f4
    # Line 663
    sd	$a7,120($sp)
    # Line 668
    addiu	$a7,$a2,208
    addu	$a6,$a0,$a6
    # Line 664
    addiu	$s6,$a0,28156
    # Line 666
    mov.s	$f26,$f6
    movz	$a6,$a7,$a4
    # Line 665
    mov.s	$f22,$f5
    # Line 670
    addu	$s0,$a0,$s0
    # Line 689
    bnez	$a4,.L0d9f18ec
    sd	$a6,112($sp)
.L0d9f1d18:
    # Line 697
    ld	$t2,112($sp)
    lwc1	$f15,16($t2)
    swc1	$f15,0($sp)
    # Line 698
    lwc1	$f14,20($t2)
    swc1	$f14,4($sp)
    # Line 699
    lwc1	$f13,24($t2)
    # Line 701
    # lw $t9, -27376($gp) # &__glim_Materialfv
    addiu	$a2,$sp,0
    li	$t1,1029
    # Line 699
    swc1	$f13,8($sp)
    # Line 701
    li	$s4,1028
    sltiu	$t0,$a5,1
    # Line 700
    lwc1	$f12,28($t2)
    # Line 701
    li	$a1,4609
    movz	$s4,$t1,$t0
    move	$a0,$s4
    jal	__glim_Materialfv
    # Line 700
    swc1	$f12,12($sp)
    # Line 702
    ld	$t2,112($sp)
    lwc1	$f19,32($t2)
    swc1	$f19,0($sp)
    # Line 703
    lwc1	$f18,36($t2)
    swc1	$f18,4($sp)
    # Line 704
    lwc1	$f17,40($t2)
    # Line 706
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 704
    swc1	$f17,8($sp)
    # Line 705
    lwc1	$f16,44($t2)
    # Line 706
    addiu	$a2,$sp,0
    li	$a1,4610
    move	$a0,$s4
    jal	__glim_Materialfv
    # Line 705
    swc1	$f16,12($sp)
    # Line 707
    ld	$t3,112($sp)
    lwc1	$f25,68($t3)
    swc1	$f25,0($sp)
    # Line 708
    lwc1	$f23,76($t3)
    # Line 710
    # lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 708
    swc1	$f23,4($sp)
    # Line 709
    lwc1	$f21,72($t3)
    # Line 710
    addiu	$a2,$sp,0
    li	$a1,5635
    move	$a0,$s4
    jal	__glim_Materialfv
    # Line 709
    swc1	$f21,8($sp)
    # Line 710
    lbu	$t8,400($s7)
    beqz	$t8,.L0d9f1e64
    # Line 717
    li	$t9,1
    b	.L0d9f18f4
    sb	$t9,0($s0)
.L0d9f1ddc:
    # Line 828
    mtc1	$zero,$f3
    lwc1	$f2,3544($s1)
    # Line 835
    ld	$v0,112($sp)
    # Line 833
    mov.s	$f31,$f2
    # Line 828
    c.lt.s $f2,$f3
    # Line 835
    lwc1	$f0,68($v0)
    movf.s	$f31,$f3,$fcc7
    # Line 828
    mtc1	$zero,$f29
    # Line 835
    lwc1	$f1,76($v0)
    sub.s	$f2,$f2,$f31
    lwc1	$f27,72($v0)
    ld	$s0,216($sp)
    sub.s	$f1,$f1,$f0
    mul.s	$f29,$f29,$f2
    ld	$s8,208($sp)
    ld	$s6,200($sp)
    madd.s	$f29,$f0,$f29,$f1
    sub.s	$f0,$f27,$f0
    ld	$s4,184($sp)
    ldc1	$f20,176($sp)
    madd.s	$f29,$f29,$f31,$f0
    ldc1	$f26,168($sp)
    ldc1	$f22,160($sp)
    ldc1	$f24,152($sp)
    # Line 841
    ld	$gp,144($sp)
    ld	$s1,136($sp)
    ld	$ra,192($sp)
    # Line 835
    c.lt.s $f27,$f29
    # Line 840
    ld	$at,120($sp)
    # Line 841
    ld	$s7,128($sp)
    movf.s	$f27,$f29,$fcc6
    addiu	$sp,$sp,256
    jr	$ra
    # Line 840
    swc1	$f27,0($at)
.L0d9f1e64:
    b	.L0d9f18f4
    # Line 719
    sb	$zero,0($s0)
.end __glOdysseySoftClipCalcCIColor

# Function: __glOdysseySoftClipFlatShade
# Declared: Line 844 (Source lines: 846-852)
# Address: 0x0d9f1e70 - 0x0d9f1ef8 (Size: 136 bytes, Frame: 0)
.globl __glOdysseySoftClipFlatShade
.ent __glOdysseySoftClipFlatShade
__glOdysseySoftClipFlatShade:
    # Line 846
    lw	$at,28128($a0)
    # Line 848
    lwc1	$f15,144($at)
    swc1	$f15,144($a1)
    lwc1	$f14,148($at)
    swc1	$f14,148($a1)
    lwc1	$f13,152($at)
    swc1	$f13,152($a1)
    lwc1	$f12,156($at)
    swc1	$f12,156($a1)
    # Line 849
    lwc1	$f11,160($at)
    swc1	$f11,160($a1)
    lwc1	$f10,164($at)
    swc1	$f10,164($a1)
    lwc1	$f9,168($at)
    swc1	$f9,168($a1)
    lwc1	$f8,172($at)
    swc1	$f8,172($a1)
    # Line 850
    lwc1	$f7,368($at)
    swc1	$f7,368($a1)
    lwc1	$f6,372($at)
    swc1	$f6,372($a1)
    lwc1	$f5,376($at)
    swc1	$f5,376($a1)
    lwc1	$f4,380($at)
    swc1	$f4,380($a1)
    # Line 851
    lwc1	$f3,384($at)
    swc1	$f3,384($a1)
    lwc1	$f2,388($at)
    swc1	$f2,388($a1)
    lwc1	$f1,392($at)
    swc1	$f1,392($a1)
    lwc1	$f0,396($at)
    # Line 852
    jr	$ra
    # Line 851
    swc1	$f0,396($a1)
.end __glOdysseySoftClipFlatShade

.rdata
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3de147ae:
    .word 0x3de147ae
_lit_3e99999a:
    .word 0x3e99999a
_lit_3f170a3d:
    .word 0x3f170a3d
_lit_43340000:
    .word 0x43340000

