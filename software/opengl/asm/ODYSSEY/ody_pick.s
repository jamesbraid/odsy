# Source: ../ODYSSEY/ody_pick.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_pick.c
# Total Functions: 13

.text

# Function: __glOdysseyPickDepthProcs
# Declared: Line 25 (Source lines: 27-27)
# Address: 0x0d9c59e0 - 0x0d9c59e8 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyPickDepthProcs
.ent __glOdysseyPickDepthProcs
__glOdysseyPickDepthProcs:
    # Line 27
    jr	$ra
    nop
.end __glOdysseyPickDepthProcs

# Function: __glOdysseyPickPixelProcs
# Declared: Line 30 (Source lines: 30-41)
# Address: 0x0d9c59f0 - 0x0d9c5a50 (Size: 96 bytes, Frame: 16)
.globl __glOdysseyPickPixelProcs
.ent __glOdysseyPickPixelProcs
__glOdysseyPickPixelProcs:
    # Line 30
    addiu	$sp,$sp,-16
    lui	$a4,0x13
    sd	$ra,0($sp)
    addiu	$a4,$a4,11168
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 32
    la	$v0,__glOdysseyDrawPixels
    # Line 35
    la	$a1,__glOdysseySeparableFilter
    # Line 34
    la	$v1,__glOdysseyConvolutionFilter
    # Line 37
    la	$a2,__glSlowPickGetConvolutionFilter
    # Line 38
    la	$a3,__glOdysseyGetSeparableFilter
    sw	$a3,12652($a0)
    # Line 37
    sw	$a2,12648($a0)
    # Line 40
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    # Line 34
    sw	$v1,12640($a0)
    # Line 35
    sw	$a1,12644($a0)
    # Line 40
    nop
    li	$a1,2
    jal	__glOdysseySetCurrentFilter
    # Line 32
    sw	$v0,12616($a0)
    ld	$ra,0($sp)
    # Line 41
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseyPickPixelProcs

# Function: __glOdysseyPickRenderBitmapProcs
# Declared: Line 43 (Source lines: 44-57)
# Address: 0x0d9c5a50 - 0x0d9c5aa4 (Size: 84 bytes, Frame: 0)
.globl __glOdysseyPickRenderBitmapProcs
.ent __glOdysseyPickRenderBitmapProcs
__glOdysseyPickRenderBitmapProcs:
    # Line 49
    lbu	$a4,1189($a0)
    # Line 44
    lui	$a1,0x13
    # Line 49
    lw	$v1,1192($a0)
    # Line 44
    addiu	$a1,$a1,11072
    # Line 49
    lw	$a2,1196($a0)
    # Line 44
    addu	$at,$t9,$a1
    # Line 45
    la	$v0,__glOdysseyRenderBitmap
    # Line 49
    bnez	$v1,.L0d9c5a90
    # Line 45
    sw	$v0,12568($a0)
    # Line 49
    lw	$a3,1200($a0)
    bnez	$a2,.L0d9c5a94
    # Line 56
    la	$a5,__glDrawBitmap
    # Line 49
    bnez	$a3,.L0d9c5a94
    # Line 56
    la	$a5,__glDrawBitmap
    # Line 49
    beqz	$a4,.L0d9c5a9c
    # Line 53
    la	$a6,__glFastDrawBitmap
.L0d9c5a90:
    # Line 56
    la	$a5,__glDrawBitmap
.L0d9c5a94:
    # Line 57
    jr	$ra
    # Line 56
    sw	$a5,12564($a0)
.L0d9c5a9c:
    # Line 57
    jr	$ra
    # Line 53
    sw	$a6,12564($a0)
.end __glOdysseyPickRenderBitmapProcs

# Function: __glOdysseyPickTextureProcs
# Declared: Line 59 (Source lines: 59-90)
# Address: 0x0d9c5ab0 - 0x0d9c5b74 (Size: 196 bytes, Frame: 0)
.globl __glOdysseyPickTextureProcs
.ent __glOdysseyPickTextureProcs
__glOdysseyPickTextureProcs:
    # Line 62
    lw	$a3,1792($a0)
    # Line 59
    lui	$v0,0x13
    # Line 62
    lui	$v1,0xc
    dsll32	$a6,$a3,0xb
    and	$a1,$v1,$a3
    # Line 59
    addiu	$v0,$v0,10976
    # Line 62
    dsll32	$a7,$a3,0xa
    beq	$v1,$a1,.L0d9c5b10
    # Line 59
    addu	$at,$t9,$v0
    # Line 80
    dsll32	$v1,$a3,0xd
.L0d9c5ad8:
    dsll32	$a4,$a3,0xa
    bltz	$v1,.L0d9c5afc
    dsll32	$a1,$a3,0xc
    bltz	$a1,.L0d9c5afc
    dsll32	$a2,$a3,0xb
    bltz	$a2,.L0d9c5b00
    # Line 87
    la	$a5,__glCalcMixedTexture
    # Line 80
    bgez	$a4,.L0d9c5b58
    # Line 85
    nop	# was lw $t9, -24168($gp) # &__glCalcTexture
.L0d9c5afc:
    # Line 87
    la	$a5,__glCalcMixedTexture
.L0d9c5b00:
    # Line 90
    jr	$ra
    # Line 87
    sw	$a5,12052($a0)
.L0d9c5b08:
    # Line 90
    jr	$ra
    nop
.L0d9c5b10:
    # Line 62
    bltz	$a6,.L0d9c5ad8
    # Line 80
    dsll32	$v1,$a3,0xd
    # Line 62
    bltz	$a7,.L0d9c5ad8
    # Line 80
    dsll32	$v1,$a3,0xd
    # Line 62
    lw	$a4,1984($a0)
    lw	$t0,2108($a0)
    bne	$t0,$a4,.L0d9c5ad8
    # Line 80
    dsll32	$v1,$a3,0xd
    # Line 68
    li	$t1,9216
    beq	$a4,$t1,.L0d9c5b60
    # Line 70
    la	$v0,__glCalcEyeLinear
    # Line 68
    li	$t2,9217
    beq	$a4,$t2,.L0d9c5b68
    li	$t3,9218
    bne	$a4,$t3,.L0d9c5b08
    # Line 76
    la	$t8,__glCalcSphereMap
    # Line 90
    jr	$ra
    # Line 76
    sw	$t8,12052($a0)
.L0d9c5b58:
    # Line 90
    jr	$ra
    # Line 85
    sw	$t9,12052($a0)
.L0d9c5b60:
    # Line 90
    jr	$ra
    # Line 70
    sw	$v0,12052($a0)
.L0d9c5b68:
    # Line 73
    la	$v1,__glCalcObjectLinear
    # Line 90
    jr	$ra
    # Line 73
    sw	$v1,12052($a0)
.end __glOdysseyPickTextureProcs

# Function: __glOdysseyPickAllProcs
# Declared: Line 92 (Source lines: 93-258)
# Address: 0x0d9c5b80 - 0x0d9c5f6c (Size: 1004 bytes, Frame: 32)
.globl __glOdysseyPickAllProcs
.ent __glOdysseyPickAllProcs
__glOdysseyPickAllProcs:
    # Line 93
    addiu	$sp,$sp,-32
    lui	$at,0x13
    sd	$s1,16($sp)
    addiu	$at,$at,10768
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 105
    # lw $t9, -25584($gp) # &__glGenericModeFlags
    # Line 93
    sd	$ra,8($sp)
    sd	$s0,24($sp)
    # Line 105
    nop
    # Line 93
    move	$s0,$a0
    # Line 105
    jal	__glGenericModeFlags
    # Line 95
    lw	$s1,1792($a0)
    # Line 105
    lw	$a0,11812($s0)
    andi	$v1,$a0,0x21
    beqz	$v1,.L0d9c5d8c
    sw	$v0,30492($s0)
    # Line 113
    lbu	$a0,3220($s0)
    beqz	$a0,.L0d9c5bec
    lui	$a1,0x1
    ori	$a1,$a1,0x6418
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    beqz	$a1,.L0d9c5bf0
    move	$a2,$zero
    b	.L0d9c5bf0
    li	$a2,1
.L0d9c5bec:
    move	$a2,$zero
.L0d9c5bf0:
    # Line 114
    lw	$t9,11852($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 113
    sb	$a2,28272($s0)
    # Line 120
    lw	$a2,3204($s0)
    li	$a3,7169
    beq	$a2,$a3,.L0d9c5c24
    # Line 131
    dsll32	$a5,$s1,0xd
    # Line 120
    lw	$a4,1792($s0)
    dsll32	$a4,$a4,0x1
    bgez	$a4,.L0d9c5e50
    # Line 139
    li	$t0,28
    # Line 131
    dsll32	$a5,$s1,0xd
.L0d9c5c24:
    bgez	$a5,.L0d9c5e00
    nop
    # Line 134
    lw	$a2,1984($s0)
    li	$a6,9216
    beq	$a2,$a6,.L0d9c5ed4
    # Line 137
    li	$a3,20
    # Line 134
    li	$a7,9218
    xor	$a7,$a2,$a7
    # Line 139
    li	$t0,28
    # Line 134
    li	$a3,4
    movz	$a3,$t0,$a7
.L0d9c5c50:
    # Line 143
    dsll32	$t0,$s1,0xc
.L0d9c5c54:
    bgez	$t0,.L0d9c5e08
    li	$a0,3
    # Line 146
    lw	$a2,2108($s0)
.L0d9c5c60:
    li	$t1,9216
    beq	$a2,$t1,.L0d9c5e98
    # Line 145
    ori	$a3,$a3,0x4
    # Line 146
    li	$t2,9218
    xor	$t2,$a2,$t2
    # Line 151
    ori	$t3,$a3,0x18
    movz	$a3,$t3,$t2
.L0d9c5c7c:
    # Line 155
    dsll32	$t3,$s1,0xb
.L0d9c5c80:
    bgez	$t3,.L0d9c5cb0
    # Line 164
    dsll32	$at,$s1,0xa
    # Line 155
    sltiu	$t8,$a0,3
    bnez	$t8,.L0d9c5cb0
    # Line 164
    dsll32	$at,$s1,0xa
    # Line 158
    lw	$t9,2232($s0)
    li	$ra,9216
    # Line 157
    ori	$a3,$a3,0x4
    xor	$t9,$t9,$ra
    # Line 160
    ori	$ra,$a3,0x10
    movz	$a3,$ra,$t9
    # Line 164
    dsll32	$at,$s1,0xa
.L0d9c5cb0:
    bgez	$at,.L0d9c5cd8
    nop
    beqz	$a0,.L0d9c5cdc
    # Line 171
    andi	$a0,$s1,0x40
    # Line 167
    lw	$v0,2356($s0)
    li	$v1,9216
    # Line 166
    ori	$a3,$a3,0x4
    xor	$v0,$v0,$v1
    # Line 169
    ori	$v1,$a3,0x10
    movz	$a3,$v1,$v0
.L0d9c5cd8:
    # Line 171
    andi	$a0,$s1,0x40
.L0d9c5cdc:
    beqz	$a0,.L0d9c5e3c
    nop
    lbu	$a1,1412($s0)
    beqz	$a1,.L0d9c5e10
    li	$a0,24
.L0d9c5cf0:
    # Line 197
    lbu	$a5,1413($s0)
    # Line 194
    or	$a2,$a3,$a0
    # Line 195
    sw	$a2,28140($s0)
    # Line 193
    sw	$a3,28132($s0)
    # Line 197
    ori	$a4,$a2,0x1
    beqz	$a5,.L0d9c5e30
    sw	$a4,28136($s0)
    # Line 199
    ori	$a3,$a2,0x2
    sw	$a3,28140($s0)
.L0d9c5d14:
    # Line 201
    lw	$a6,1392($s0)
    li	$a7,7425
    beq	$a6,$a7,.L0d9c5df8
    # Line 206
    or	$t2,$a4,$a3
    # Line 211
    sw	$zero,28144($s0)
.L0d9c5d28:
    # Line 214
    lw	$t9,11860($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 216
    # lw $t9, -26100($gp) # &__glValidateLighting
    jal	__glValidateLighting
    move	$a0,$s0
    # Line 218
    lw	$t9,11868($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 219
    lw	$t9,11864($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 225
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 227
    lw	$t9,11888($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 228
    lw	$t9,11884($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 230
    lw	$t9,11972($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
.L0d9c5d8c:
    andi	$t0,$a0,0x25
    beqz	$t0,.L0d9c5db8
    # Line 245
    andi	$t1,$a0,0x31
    # Line 240
    lw	$t9,11904($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 245
    lw	$t9,11872($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$t1,$a0,0x31
.L0d9c5db8:
    beqz	$t1,.L0d9c5dd8
    nop
    # Line 251
    lw	$t9,11876($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 253
    lw	$t9,11880($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9c5dd8:
    # Line 258
    ld	$gp,0($sp)
    # Line 257
    sw	$zero,11812($s0)
    # Line 258
    ld	$ra,8($sp)
    # Line 256
    sw	$zero,11808($s0)
    # Line 258
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c5df8:
    # Line 206
    b	.L0d9c5d28
    sw	$t2,28144($s0)
.L0d9c5e00:
    b	.L0d9c5c50
    # Line 141
    move	$a3,$zero
.L0d9c5e08:
    b	.L0d9c5c7c
    # Line 153
    li	$a0,3
.L0d9c5e10:
    # Line 180
    lw	$a5,3588($s0)
    mtc1	$zero,$f4
    li	$a6,1
    move	$a0,$zero
    blez	$a5,.L0d9c5edc
    lw	$a2,1584($s0)
    b	.L0d9c5ea8
    lw	$a4,1800($s0)
.L0d9c5e30:
    # Line 201
    move	$a3,$a4
    b	.L0d9c5d14
    sw	$a4,28140($s0)
.L0d9c5e3c:
    # Line 195
    sw	$a3,28140($s0)
    # Line 194
    sw	$a3,28136($s0)
    move	$a4,$a3
    # Line 195
    b	.L0d9c5d14
    # Line 193
    sw	$a3,28132($s0)
.L0d9c5e50:
    # Line 122
    dsll32	$a3,$s1,0xe
    # Line 134
    li	$a7,9218
    # Line 122
    lui	$a4,0x8
    nop
    bgez	$a3,.L0d9c5ee4
    and	$a4,$s1,$a4
    # Line 131
    dsll32	$a5,$s1,0xd
    bgez	$a5,.L0d9c5f3c
    # Line 134
    li	$a3,4
    li	$a6,9216
    lw	$a2,1984($s0)
    beq	$a2,$a6,.L0d9c5f4c
    xor	$a7,$a2,$a7
    movz	$a3,$t0,$a7
.L0d9c5e88:
    # Line 143
    beqz	$a4,.L0d9c5f44
    li	$a0,2
    b	.L0d9c5c60
    # Line 146
    lw	$a2,2108($s0)
.L0d9c5e98:
    b	.L0d9c5c7c
    # Line 148
    ori	$a3,$a3,0x10
.L0d9c5ea0:
    # Line 182
    beqz	$t0,.L0d9c5edc
    addiu	$a2,$a2,116
.L0d9c5ea8:
    # Line 183
    sllv	$t1,$a6,$a0
    and	$t1,$a4,$t1
    # Line 182
    addiu	$a0,$a0,1
    # Line 183
    beqz	$t1,.L0d9c5ea0
    # Line 182
    slt	$t0,$a0,$a5
    # Line 183
    lwc1	$f0,76($a2)
    c.eq.s	$f0,$f4
    bc1t	.L0d9c5ea0
    nop
    # Line 188
    b	.L0d9c5cf0
    li	$a0,24
.L0d9c5ed4:
    # Line 137
    b	.L0d9c5c54
    # Line 143
    dsll32	$t0,$s1,0xc
.L0d9c5edc:
    b	.L0d9c5cf0
    # Line 182
    li	$a0,8
.L0d9c5ee4:
    # Line 131
    dsll32	$a1,$s1,0xd
    # Line 125
    lui	$a0,0x1
    and	$a0,$s1,$a0
    # Line 131
    bgez	$a1,.L0d9c5f54
    # Line 125
    sltu	$a0,$zero,$a0
    # Line 131
    beqz	$a0,.L0d9c5f5c
    nop
    # Line 134
    lw	$a2,1984($s0)
    li	$a1,9216
    beq	$a2,$a1,.L0d9c5f64
    li	$a5,9218
    xor	$a5,$a2,$a5
    # Line 140
    li	$a6,28
    # Line 134
    li	$a3,4
    movz	$a3,$a6,$a5
.L0d9c5f20:
    # Line 143
    beqz	$a4,.L0d9c5c80
    # Line 155
    dsll32	$t3,$s1,0xb
    # Line 143
    sltiu	$a6,$a0,2
    bnez	$a6,.L0d9c5c80
    # Line 155
    dsll32	$t3,$s1,0xb
    b	.L0d9c5c60
    # Line 146
    lw	$a2,2108($s0)
.L0d9c5f3c:
    b	.L0d9c5e88
    # Line 141
    move	$a3,$zero
.L0d9c5f44:
    # Line 153
    b	.L0d9c5c7c
    li	$a0,2
.L0d9c5f4c:
    # Line 137
    b	.L0d9c5e88
    li	$a3,20
.L0d9c5f54:
    # Line 141
    b	.L0d9c5f20
    move	$a3,$zero
.L0d9c5f5c:
    b	.L0d9c5f20
    move	$a3,$zero
.L0d9c5f64:
    b	.L0d9c5f20
    # Line 136
    li	$a3,20
.end __glOdysseyPickAllProcs

# Function: __glOdysseySoftClipPickAllProcs
# Declared: Line 262 (Source lines: 263-373)
# Address: 0x0d9c5f70 - 0x0d9c61f4 (Size: 644 bytes, Frame: 192)
.globl __glOdysseySoftClipPickAllProcs
.ent __glOdysseySoftClipPickAllProcs
__glOdysseySoftClipPickAllProcs:
    # Line 263
    addiu	$sp,$sp,-64
    # Line 266
    lw	$a1,1796($a0)
    sd	$a1,0($sp)
    # Line 263
    sd	$s1,32($sp)
    # Line 265
    lw	$s1,1792($a0)
    # Line 263
    sd	$s0,40($sp)
    # Line 284
    li	$t0,9218
    # Line 272
    lbu	$at,3220($a0)
    # Line 263
    move	$s0,$a0
    sd	$ra,56($sp)
    lui	$v0,0x13
    sd	$gp,48($sp)
    addiu	$v0,$v0,9760
    # Line 272
    sltiu	$v1,$at,1
    sd	$v1,24($sp)
    # Line 279
    beqz	$at,.L0d9c614c
    # Line 263
    addu	$gp,$t9,$v0
    # Line 279
    dsll32	$t3,$s1,0xe
    dsll32	$a2,$s1,0xf
    bgez	$a2,.L0d9c616c
    dsll32	$t8,$s1,0x1
    # Line 284
    dsll32	$a3,$s1,0xd
.L0d9c5fc8:
    bgez	$a3,.L0d9c5fd8
    li	$a5,9218
    lw	$a4,1984($s0)
    beq	$a4,$a5,.L0d9c6140
.L0d9c5fd8:
    dsll32	$a6,$s1,0xc
    bgez	$a6,.L0d9c5ff0
    nop
    lw	$a7,2108($s0)
    beq	$a7,$t0,.L0d9c6144
    li	$t0,1
.L0d9c5ff0:
    sd	$zero,8($sp)
.L0d9c5ff4:
    # Line 293
    # lw $t9, -31036($gp) # &__glOdysseyPickAllProcs
    bal __glOdysseyPickAllProcs
    move	$a0,$s0
    andi	$t1,$s1,0x40
    ld	$v1,24($sp)
    # Line 320
    move	$a5,$zero
    # Line 293
    li	$t3,9
    beqz	$t1,.L0d9c6154
    sd	$t1,16($sp)
    lbu	$t8,1412($s0)
    lbu	$t2,1413($s0)
    li	$a5,11
    beqz	$t8,.L0d9c6184
    movz	$a5,$t3,$t2
    # Line 307
    ori	$a5,$a5,0x10
.L0d9c6030:
    # Line 322
    ld	$t9,0($sp)
.L0d9c6034:
    andi	$t9,$t9,0x1000
    # Line 323
    ori	$at,$a5,0x8
    # Line 322
    beqz	$t9,.L0d9c6048
    ld	$ra,24($sp)
    movz	$a5,$at,$ra
.L0d9c6048:
    # Line 325
    ld	$v0,8($sp)
    andi	$v0,$v0,0xff
    beqz	$v0,.L0d9c605c
    # Line 326
    ori	$a0,$a5,0x1c
    movz	$a5,$a0,$v1
.L0d9c605c:
    # Line 332
    sw	$zero,28144($s0)
    # Line 335
    lw	$t9,11884($s0)
    # Line 331
    sw	$zero,28140($s0)
    # Line 330
    sw	$zero,28136($s0)
    # Line 335
    move	$a0,$s0
    jal	__glOdysseyPickAllProcs
    # Line 329
    sw	$a5,28132($s0)
    # Line 336
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 337
    lw	$t9,11868($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 338
    lw	$t9,11888($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 339
    lw	$t9,11864($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 340
    lw	$t9,11852($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 341
    lw	$t9,11872($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 342
    lw	$t9,11904($s0)
    lui	$s1,0x2
    jalr	$t9
    move	$a0,$s0
    ld	$a1,16($sp)
    ld	$ra,56($sp)
    beqz	$a1,.L0d9c61e4
    addu	$a0,$s1,$s0
    lbu	$a2,3220($s0)
    # Line 358
    la	$t2,__glOdysseySoftClipCopyMaterialOneSided
    # Line 342
    beqz	$a2,.L0d9c615c
    # Line 352
    la	$t1,__glOdysseySoftClipCalcCIColor
    # Line 350
    la	$a3,__glOdysseySoftClipCalcRGBColor
    sw	$a3,12060($s0)
.L0d9c60f8:
    # Line 352
    lbu	$a4,1413($s0)
    beqz	$a4,.L0d9c6164
    # Line 372
    la	$a6,__glOdysseySoftClipFlatShade
    # Line 355
    la	$a5,__glOdysseySoftClipCopyMaterialTwoSided
    # Line 373
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    # Line 372
    sw	$a6,-24932($a0)
    # Line 373
    addiu	$sp,$sp,64
    jr	$ra
    # Line 355
    sw	$a5,-24948($a0)
.L0d9c6124:
    # Line 372
    la	$a7,__glOdysseySoftClipFlatShade
    # Line 373
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 372
    sw	$a7,-24932($a0)
.L0d9c6140:
    # Line 284
    li	$t0,1
.L0d9c6144:
    b	.L0d9c5ff4
    sd	$t0,8($sp)
.L0d9c614c:
    b	.L0d9c5ff4
    sd	$zero,8($sp)
.L0d9c6154:
    b	.L0d9c6034
    # Line 322
    ld	$t9,0($sp)
.L0d9c615c:
    b	.L0d9c60f8
    # Line 352
    sw	$t1,12060($s0)
.L0d9c6164:
    b	.L0d9c6124
    # Line 358
    sw	$t2,-24948($a0)
.L0d9c616c:
    # Line 279
    bltz	$t3,.L0d9c5fc8
    # Line 284
    dsll32	$a3,$s1,0xd
    # Line 279
    bltz	$t8,.L0d9c5fc8
    # Line 284
    dsll32	$a3,$s1,0xd
    b	.L0d9c5ff4
    sd	$zero,8($sp)
.L0d9c6184:
    # Line 310
    lw	$a4,3588($s0)
    mtc1	$zero,$f4
    li	$a6,1
    move	$a2,$zero
    beqz	$a4,.L0d9c6030
    lw	$a3,1584($s0)
    b	.L0d9c61b8
    lw	$a0,1800($s0)
    nop
    nop
    nop
.L0d9c61b0:
    # Line 312
    beqz	$t9,.L0d9c6030
    addiu	$a3,$a3,116
.L0d9c61b8:
    # Line 313
    sllv	$ra,$a6,$a2
    and	$ra,$a0,$ra
    # Line 312
    addiu	$a2,$a2,1
    # Line 313
    beqz	$ra,.L0d9c61b0
    # Line 312
    sltu	$t9,$a2,$a4
    # Line 313
    lwc1	$f0,76($a3)
    c.eq.s	$f0,$f4
    bc1t	.L0d9c61b0
    nop
    # Line 317
    b	.L0d9c6030
    # Line 316
    ori	$a5,$a5,0x10
.L0d9c61e4:
    # Line 358
    la	$at,__glNop
    # Line 362
    sw	$at,12060($s0)
    b	.L0d9c6124
    # Line 368
    sw	$at,-24948($a0)
.end __glOdysseySoftClipPickAllProcs

# Function: __glOdysseySoftClipPickClipProcs
# Declared: Line 375 (Source lines: 376-379)
# Address: 0x0d9c6200 - 0x0d9c6220 (Size: 32 bytes, Frame: 0)
.globl __glOdysseySoftClipPickClipProcs
.ent __glOdysseySoftClipPickClipProcs
__glOdysseySoftClipPickClipProcs:
    # Line 376
    lui	$a1,0x13
    addiu	$a1,$a1,9104
    addu	$at,$t9,$a1
    # Line 377
    la	$v0,__glOdysseySoftClipClipLine
    # Line 378
    la	$v1,__glOdysseySoftClipClipTriangle
    sw	$v1,12144($a0)
    # Line 379
    jr	$ra
    # Line 377
    sw	$v0,12540($a0)
.end __glOdysseySoftClipPickClipProcs

# Function: __glOdysseySoftClipPickClipProcsFast
# Declared: Line 381 (Source lines: 382-385)
# Address: 0x0d9c6220 - 0x0d9c6240 (Size: 32 bytes, Frame: 0)
.globl __glOdysseySoftClipPickClipProcsFast
.ent __glOdysseySoftClipPickClipProcsFast
__glOdysseySoftClipPickClipProcsFast:
    # Line 382
    lui	$a1,0x13
    addiu	$a1,$a1,9072
    addu	$at,$t9,$a1
    # Line 383
    la	$v0,__glOdysseySoftClipClipLine
    # Line 384
    la	$v1,__glOdysseySoftClipClipTriangleFast
    sw	$v1,12144($a0)
    # Line 385
    jr	$ra
    # Line 383
    sw	$v0,12540($a0)
.end __glOdysseySoftClipPickClipProcsFast

# Function: __glOdysseySoftClipPickLineProcs
# Declared: Line 387 (Source lines: 388-390)
# Address: 0x0d9c6240 - 0x0d9c6258 (Size: 24 bytes, Frame: 0)
.globl __glOdysseySoftClipPickLineProcs
.ent __glOdysseySoftClipPickLineProcs
__glOdysseySoftClipPickLineProcs:
    # Line 388
    lui	$v1,0x13
    addiu	$v1,$v1,9040
    addu	$at,$t9,$v1
    # Line 389
    la	$v0,__glOdysseySoftClipRenderLine
    # Line 390
    jr	$ra
    # Line 389
    sw	$v0,12528($a0)
.end __glOdysseySoftClipPickLineProcs

# Function: __glOdysseySoftClipPickPointProcs
# Declared: Line 392 (Source lines: 393-395)
# Address: 0x0d9c6260 - 0x0d9c6278 (Size: 24 bytes, Frame: 0)
.globl __glOdysseySoftClipPickPointProcs
.ent __glOdysseySoftClipPickPointProcs
__glOdysseySoftClipPickPointProcs:
    # Line 393
    lui	$v1,0x13
    addiu	$v1,$v1,9008
    addu	$at,$t9,$v1
    # Line 394
    la	$v0,__glOdysseySoftClipRenderPoint
    # Line 395
    jr	$ra
    # Line 394
    sw	$v0,12552($a0)
.end __glOdysseySoftClipPickPointProcs

# Function: __glOdysseySoftClipPickTriangleProcs
# Declared: Line 397 (Source lines: 398-400)
# Address: 0x0d9c6280 - 0x0d9c6298 (Size: 24 bytes, Frame: 0)
.globl __glOdysseySoftClipPickTriangleProcs
.ent __glOdysseySoftClipPickTriangleProcs
__glOdysseySoftClipPickTriangleProcs:
    # Line 398
    lui	$v1,0x13
    addiu	$v1,$v1,8976
    addu	$at,$t9,$v1
    # Line 399
    la	$v0,__glOdysseySoftClipRenderTriangle
    # Line 400
    jr	$ra
    # Line 399
    sw	$v0,12128($a0)
.end __glOdysseySoftClipPickTriangleProcs

# Function: __glOdysseySoftClipPickTriangleProcsFast
# Declared: Line 402 (Source lines: 403-405)
# Address: 0x0d9c62a0 - 0x0d9c62b8 (Size: 24 bytes, Frame: 0)
.globl __glOdysseySoftClipPickTriangleProcsFast
.ent __glOdysseySoftClipPickTriangleProcsFast
__glOdysseySoftClipPickTriangleProcsFast:
    # Line 403
    lui	$v1,0x13
    addiu	$v1,$v1,8944
    addu	$at,$t9,$v1
    # Line 404
    la	$v0,__glOdysseySoftClipRenderTriangleFast
    # Line 405
    jr	$ra
    # Line 404
    sw	$v0,12128($a0)
.end __glOdysseySoftClipPickTriangleProcsFast

# Function: __glOdysseySoftClipPickTextureProcs
# Declared: Line 408 (Source lines: 409-442)
# Address: 0x0d9c62c0 - 0x0d9c63b4 (Size: 244 bytes, Frame: 0)
.globl __glOdysseySoftClipPickTextureProcs
.ent __glOdysseySoftClipPickTextureProcs
__glOdysseySoftClipPickTextureProcs:
    # Line 413
    lbu	$v1,3220($a0)
    # Line 422
    li	$t0,9218
    # Line 409
    lui	$v0,0x13
    # Line 418
    li	$a5,9218
    # Line 409
    addiu	$v0,$v0,8912
    # Line 410
    lw	$a3,1792($a0)
    # Line 413
    beqz	$v1,.L0d9c635c
    # Line 409
    addu	$at,$t9,$v0
    # Line 413
    dsll32	$t3,$a3,0xe
    dsll32	$v1,$a3,0xf
    bgez	$v1,.L0d9c634c
    dsll32	$t8,$a3,0x1
    li	$a4,1
.L0d9c62f4:
    # Line 418
    dsll32	$a1,$a3,0xd
    bgez	$a1,.L0d9c630c
    nop
    lw	$a2,1984($a0)
    beq	$a5,$a2,.L0d9c636c
    # Line 422
    dsll32	$v0,$a3,0xc
.L0d9c630c:
    andi	$a5,$a4,0xff
    # Line 435
    # lw $t9, -25296($gp) # &__glNop
    # Line 422
    beqz	$a5,.L0d9c6334
    # Line 433
    la	$t2,__glOdysseySoftClipCalcSphereMapT
    # Line 422
    dsll32	$a6,$a3,0xc
    bgez	$a6,.L0d9c6334
    li	$a3,1
    lw	$a7,2108($a0)
    beq	$a7,$t0,.L0d9c639c
    nop
.L0d9c6334:
    move	$a3,$zero
    # Line 428
    andi	$t1,$a3,0xff
.L0d9c633c:
    beqz	$t1,.L0d9c6364
    nop
    # Line 442
    jr	$ra
    # Line 433
    sw	$t2,12052($a0)
.L0d9c634c:
    # Line 413
    bltz	$t3,.L0d9c62f4
    li	$a4,1
    bltz	$t8,.L0d9c62f4
    li	$a4,1
.L0d9c635c:
    b	.L0d9c630c
    move	$a4,$zero
.L0d9c6364:
    # Line 442
    jr	$ra
    # Line 435
    sw	$t9,12052($a0)
.L0d9c636c:
    # Line 422
    move	$a3,$zero
    # Line 428
    la	$a2,__glOdysseySoftClipCalcSphereMapST
    # Line 422
    bgez	$v0,.L0d9c6388
    li	$a4,1
    lw	$v1,2108($a0)
    beq	$a5,$v1,.L0d9c63a4
    nop
.L0d9c6388:
    andi	$a1,$a3,0xff
    beqz	$a1,.L0d9c63ac
    # Line 430
    la	$a3,__glOdysseySoftClipCalcSphereMapS
    # Line 442
    jr	$ra
    # Line 428
    sw	$a2,12052($a0)
.L0d9c639c:
    # Line 422
    b	.L0d9c633c
    # Line 428
    andi	$t1,$a3,0xff
.L0d9c63a4:
    # Line 422
    b	.L0d9c6388
    move	$a3,$a4
.L0d9c63ac:
    # Line 442
    jr	$ra
    # Line 430
    sw	$a3,12052($a0)
.end __glOdysseySoftClipPickTextureProcs

