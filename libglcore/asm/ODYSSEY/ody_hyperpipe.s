# Source: ../ODYSSEY/ody_hyperpipe.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_hyperpipe.c
# Total Functions: 14

.text

# Function: __glOdysseyEnableHyperpipe
# Declared: Line 33 (Source lines: 36-36)
# Address: 0x0d9f4680 - 0x0d9f4688 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyEnableHyperpipe
.ent __glOdysseyEnableHyperpipe
__glOdysseyEnableHyperpipe:
    # Line 36
    jr	$ra
    nop
.end __glOdysseyEnableHyperpipe

# Function: __glOdysseyDisableHyperpipe
# Declared: Line 39 (Source lines: 42-42)
# Address: 0x0d9f4690 - 0x0d9f4698 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyDisableHyperpipe
.ent __glOdysseyDisableHyperpipe
__glOdysseyDisableHyperpipe:
    # Line 42
    jr	$ra
    nop
.end __glOdysseyDisableHyperpipe

# Function: __glOdysseyFinishHyperpipe
# Declared: Line 46 (Source lines: 49-49)
# Address: 0x0d9f46a0 - 0x0d9f46a8 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyFinishHyperpipe
.ent __glOdysseyFinishHyperpipe
__glOdysseyFinishHyperpipe:
    # Line 49
    jr	$ra
    nop
.end __glOdysseyFinishHyperpipe

# Function: __glOdysseyInitHyperpipeState
# Declared: Line 52 (Source lines: 55-56)
# Address: 0x0d9f46b0 - 0x0d9f46b8 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyInitHyperpipeState
.ent __glOdysseyInitHyperpipeState
__glOdysseyInitHyperpipeState:
    # Line 56
    jr	$ra
    # Line 55
    sw	$zero,0($a0)
.end __glOdysseyInitHyperpipeState

# Function: __glOdysseyQueryHyperpipeBestRect
# Declared: Line 60 (Source lines: 64-77)
# Address: 0x0d9f46c0 - 0x0d9f4744 (Size: 132 bytes, Frame: 48)
.globl __glOdysseyQueryHyperpipeBestRect
.ent __glOdysseyQueryHyperpipeBestRect
__glOdysseyQueryHyperpipeBestRect:
    # Line 68
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    # Line 64
    addiu	$sp,$sp,-48
    # Line 72
    dsll32	$a4,$a4,0x0
    # Line 64
    sd	$ra,32($sp)
    # Line 68
    addu	$at,$at,$a0
    # Line 73
    dsll32	$a6,$a3,0x0
    # Line 68
    lw	$at,0($at)
    # Line 73
    dsrl32	$a6,$a6,0x0
    sd	$a6,16($sp)
    # Line 72
    dsrl32	$a4,$a4,0x0
    sd	$a4,24($sp)
    # Line 64
    lui	$a5,0x10
    # Line 71
    li	$a3,1
    sw	$a3,8($sp)
    # Line 64
    addiu	$a5,$a5,16080
    sd	$gp,40($sp)
    addu	$gp,$t9,$a5
    # Line 74
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 70
    sw	$a2,12($sp)
    # Line 74
    addiu	$a2,$sp,0
    # Line 69
    sw	$a1,4($sp)
    # Line 74
    lui	$a1,0x6f64
    ori	$a1,$a1,0x16
    jal	__glOdysseyIoctl
    # Line 68
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 75
    li	$v1,1
    # Line 77
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyQueryHyperpipeBestRect

# Function: __glOdysseyQueryHyperpipeRect
# Declared: Line 82 (Source lines: 85-99)
# Address: 0x0d9f4750 - 0x0d9f47c8 (Size: 120 bytes, Frame: 48)
.globl __glOdysseyQueryHyperpipeRect
.ent __glOdysseyQueryHyperpipeRect
__glOdysseyQueryHyperpipeRect:
    # Line 89
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    # Line 85
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 89
    addu	$at,$at,$a0
    # Line 93
    dsll32	$a4,$a3,0x0
    # Line 89
    lw	$at,0($at)
    # Line 93
    dsrl32	$a4,$a4,0x0
    sd	$a4,24($sp)
    # Line 85
    lui	$a5,0x10
    # Line 92
    li	$a3,1
    sw	$a3,8($sp)
    # Line 85
    addiu	$a5,$a5,15936
    sd	$gp,40($sp)
    addu	$gp,$t9,$a5
    # Line 95
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 91
    sw	$a2,12($sp)
    # Line 95
    addiu	$a2,$sp,0
    # Line 90
    sw	$a1,4($sp)
    # Line 95
    lui	$a1,0x6f64
    ori	$a1,$a1,0x16
    jal	__glOdysseyIoctl
    # Line 89
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 96
    li	$v1,1
    # Line 99
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyQueryHyperpipeRect

# Function: __glOdysseyQueryHyperpipeLimit
# Declared: Line 103 (Source lines: 106-120)
# Address: 0x0d9f47d0 - 0x0d9f4848 (Size: 120 bytes, Frame: 48)
.globl __glOdysseyQueryHyperpipeLimit
.ent __glOdysseyQueryHyperpipeLimit
__glOdysseyQueryHyperpipeLimit:
    # Line 110
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    # Line 106
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 110
    addu	$at,$at,$a0
    # Line 114
    dsll32	$a4,$a3,0x0
    # Line 110
    lw	$at,0($at)
    # Line 114
    dsrl32	$a4,$a4,0x0
    sd	$a4,24($sp)
    # Line 106
    lui	$a5,0x10
    # Line 113
    li	$a3,2
    sw	$a3,8($sp)
    # Line 106
    addiu	$a5,$a5,15808
    sd	$gp,40($sp)
    addu	$gp,$t9,$a5
    # Line 116
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 112
    sw	$a2,12($sp)
    # Line 116
    addiu	$a2,$sp,0
    # Line 111
    sw	$a1,4($sp)
    # Line 116
    lui	$a1,0x6f64
    ori	$a1,$a1,0x18
    jal	__glOdysseyIoctl
    # Line 110
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 117
    li	$v1,1
    # Line 120
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyQueryHyperpipeLimit

# Function: __glOdysseyHyperpipeRect
# Declared: Line 124 (Source lines: 127-141)
# Address: 0x0d9f4850 - 0x0d9f48c8 (Size: 120 bytes, Frame: 48)
.globl __glOdysseyHyperpipeRect
.ent __glOdysseyHyperpipeRect
__glOdysseyHyperpipeRect:
    # Line 131
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    # Line 127
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 131
    addu	$at,$at,$a0
    # Line 135
    dsll32	$a4,$a3,0x0
    # Line 131
    lw	$at,0($at)
    # Line 135
    dsrl32	$a4,$a4,0x0
    sd	$a4,16($sp)
    # Line 127
    lui	$a5,0x10
    # Line 134
    li	$a3,1
    sw	$a3,8($sp)
    # Line 127
    addiu	$a5,$a5,15680
    sd	$gp,40($sp)
    addu	$gp,$t9,$a5
    # Line 137
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 133
    sw	$a2,12($sp)
    # Line 137
    addiu	$a2,$sp,0
    # Line 132
    sw	$a1,4($sp)
    # Line 137
    lui	$a1,0x6f64
    ori	$a1,$a1,0x18
    jal	__glOdysseyIoctl
    # Line 131
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 138
    li	$v1,1
    # Line 141
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyHyperpipeRect

# Function: __glOdysseyHyperpipeStereo
# Declared: Line 145 (Source lines: 148-163)
# Address: 0x0d9f48d0 - 0x0d9f494c (Size: 124 bytes, Frame: 48)
.globl __glOdysseyHyperpipeStereo
.ent __glOdysseyHyperpipeStereo
__glOdysseyHyperpipeStereo:
    # Line 152
    lui	$a5,0x2
    # Line 148
    addiu	$sp,$sp,-48
    # Line 152
    ori	$a5,$a5,0x1ef0
    # Line 148
    sd	$ra,32($sp)
    # Line 152
    addu	$a5,$a5,$a0
    lw	$a5,0($a5)
    sw	$a5,0($sp)
    # Line 156
    dsll32	$v1,$a3,0x0
    # Line 153
    lw	$at,0($a3)
    # Line 148
    lui	$a4,0x10
    # Line 156
    dsrl32	$v1,$v1,0x0
    sd	$v1,16($sp)
    # Line 148
    addiu	$a4,$a4,15552
    sd	$gp,40($sp)
    addu	$gp,$t9,$a4
    # Line 158
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 155
    li	$v0,3
    # Line 158
    lui	$a1,0x6f64
    # Line 155
    sw	$v0,8($sp)
    # Line 158
    ori	$a1,$a1,0x18
    # Line 154
    sw	$a2,12($sp)
    # Line 158
    addiu	$a2,$sp,0
    jal	__glOdysseyIoctl
    # Line 153
    sw	$at,4($sp)
    ld	$ra,32($sp)
    # Line 159
    li	$a6,1
    # Line 163
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$a6,$zero,$v0
    jr	$ra
    move	$v0,$a6
.end __glOdysseyHyperpipeStereo

# Function: __glOdysseyHyperpipePixelAverage
# Declared: Line 167 (Source lines: 170-186)
# Address: 0x0d9f4950 - 0x0d9f4a04 (Size: 180 bytes, Frame: 208)
.globl __glOdysseyHyperpipePixelAverage
.ent __glOdysseyHyperpipePixelAverage
__glOdysseyHyperpipePixelAverage:
    # Line 170
    addiu	$sp,$sp,-80
    sd	$a3,56($sp)
    lui	$a4,0x10
    sd	$a2,64($sp)
    addiu	$a4,$a4,15424
    sd	$gp,48($sp)
    addu	$gp,$t9,$a4
    # Line 175
    la	$a1,__glim_Color3f
    # lw $t9, -17012($gp) # &fprintf
    la	$at,__iob
    # Line 170
    sd	$s8,40($sp)
    move	$s8,$a0
    # Line 175
    addiu	$a1,$a1,20056
    # Line 170
    sd	$ra,32($sp)
    # Line 175
    jal	fprintf
    addiu	$a0,$at,32
    # Line 178
    ld	$a3,64($sp)
    # Line 176
    lui	$a6,0x2
    # Line 182
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 176
    ori	$a6,$a6,0x1ef0
    # Line 180
    ld	$a5,56($sp)
    # Line 176
    addu	$a6,$a6,$s8
    lw	$a6,0($a6)
    sw	$a6,0($sp)
    # Line 180
    dsll32	$a6,$a5,0x0
    # Line 177
    lw	$a5,0($a5)
    # Line 179
    li	$a4,4
    sw	$a4,8($sp)
    # Line 182
    addiu	$a2,$sp,0
    move	$a0,$s8
    # Line 178
    sw	$a3,12($sp)
    # Line 182
    lui	$a1,0x6f64
    # Line 180
    dsrl32	$a6,$a6,0x0
    sd	$a6,16($sp)
    # Line 182
    ori	$a1,$a1,0x18
    jal	__glOdysseyIoctl
    # Line 177
    sw	$a5,4($sp)
    ld	$ra,32($sp)
    ld	$s8,40($sp)
    # Line 183
    li	$a7,1
    # Line 186
    ld	$gp,48($sp)
    addiu	$sp,$sp,80
    movz	$a7,$zero,$v0
    jr	$ra
    move	$v0,$a7
.end __glOdysseyHyperpipePixelAverage

# Function: __glOdysseyQueryHyperpipeStereo
# Declared: Line 190 (Source lines: 193-209)
# Address: 0x0d9f4a10 - 0x0d9f4a88 (Size: 120 bytes, Frame: 48)
.globl __glOdysseyQueryHyperpipeStereo
.ent __glOdysseyQueryHyperpipeStereo
__glOdysseyQueryHyperpipeStereo:
    # Line 198
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    # Line 193
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 198
    addu	$at,$at,$a0
    # Line 202
    dsll32	$a4,$a3,0x0
    # Line 198
    lw	$at,0($at)
    # Line 202
    dsrl32	$a4,$a4,0x0
    sd	$a4,24($sp)
    # Line 193
    lui	$a5,0x10
    # Line 201
    li	$a3,3
    sw	$a3,8($sp)
    # Line 193
    addiu	$a5,$a5,15232
    sd	$gp,40($sp)
    addu	$gp,$t9,$a5
    # Line 204
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 200
    sw	$a2,12($sp)
    # Line 204
    addiu	$a2,$sp,0
    # Line 199
    sw	$a1,4($sp)
    # Line 204
    lui	$a1,0x6f64
    ori	$a1,$a1,0x16
    jal	__glOdysseyIoctl
    # Line 198
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 205
    li	$v1,1
    # Line 209
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyQueryHyperpipeStereo

# Function: __glOdysseyQueryHyperpipePixelAverage
# Declared: Line 213 (Source lines: 216-231)
# Address: 0x0d9f4a90 - 0x0d9f4b08 (Size: 120 bytes, Frame: 48)
.globl __glOdysseyQueryHyperpipePixelAverage
.ent __glOdysseyQueryHyperpipePixelAverage
__glOdysseyQueryHyperpipePixelAverage:
    # Line 221
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    # Line 216
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 221
    addu	$at,$at,$a0
    # Line 225
    dsll32	$a4,$a3,0x0
    # Line 221
    lw	$at,0($at)
    # Line 225
    dsrl32	$a4,$a4,0x0
    sd	$a4,24($sp)
    # Line 216
    lui	$a5,0x10
    # Line 224
    li	$a3,4
    sw	$a3,8($sp)
    # Line 216
    addiu	$a5,$a5,15104
    sd	$gp,40($sp)
    addu	$gp,$t9,$a5
    # Line 227
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 223
    sw	$a2,12($sp)
    # Line 227
    addiu	$a2,$sp,0
    # Line 222
    sw	$a1,4($sp)
    # Line 227
    lui	$a1,0x6f64
    ori	$a1,$a1,0x16
    jal	__glOdysseyIoctl
    # Line 221
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 228
    li	$v1,1
    # Line 231
    ld	$gp,40($sp)
    addiu	$sp,$sp,48
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyQueryHyperpipePixelAverage

# Function: __glOdysseyBindHyperpipe
# Declared: Line 237 (Source lines: 238-251)
# Address: 0x0d9f4b10 - 0x0d9f4b7c (Size: 108 bytes, Frame: 32)
.globl __glOdysseyBindHyperpipe
.ent __glOdysseyBindHyperpipe
__glOdysseyBindHyperpipe:
    # Line 239
    lw	$a0,4112($zero)
    lbu	$v0,3222($a0)
    # Line 238
    move	$a4,$a1
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,14976
    sd	$gp,8($sp)
    # Line 239
    beqz	$v0,.L0d9f4b6c
    # Line 238
    addu	$gp,$t9,$at
    # Line 248
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    addiu	$a2,$sp,0
    # Line 247
    sw	$a4,0($sp)
    # Line 248
    lui	$a1,0x6f64
    sd	$ra,16($sp)
    jal	__glOdysseyIoctl
    ori	$a1,$a1,0x14
    ld	$ra,16($sp)
    # Line 249
    li	$a2,1
    # Line 251
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    movz	$a2,$zero,$v0
    jr	$ra
    move	$v0,$a2
.L0d9f4b6c:
    # Line 244
    li	$v0,1
    # Line 251
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyBindHyperpipe

# Function: __glOdysseyUnbindHyperpipe
# Declared: Line 255 (Source lines: 256-264)
# Address: 0x0d9f4b80 - 0x0d9f4bd0 (Size: 80 bytes, Frame: 32)
.globl __glOdysseyUnbindHyperpipe
.ent __glOdysseyUnbindHyperpipe
__glOdysseyUnbindHyperpipe:
    # Line 256
    lui	$v0,0x10
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,14864
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 261
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 257
    lw	$a0,4112($zero)
    # Line 261
    lui	$at,0x6f64
    addiu	$a2,$sp,0
    # Line 260
    sw	$a1,0($sp)
    # Line 256
    sd	$ra,8($sp)
    # Line 261
    jal	__glOdysseyIoctl
    ori	$a1,$at,0x15
    ld	$ra,8($sp)
    # Line 262
    li	$v1,1
    # Line 264
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glOdysseyUnbindHyperpipe

