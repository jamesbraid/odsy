# Source: ../ODYSSEY/ody_polyfin.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_polyfin.c
# Total Functions: 38

.text

# Function: __glOdysseySoftClipMatValidateVbuf0N
# Declared: Line 23 (Source lines: 24-33)
# Address: 0x0d9e5ee0 - 0x0d9e5f88 (Size: 168 bytes, Frame: 48)
.globl __glOdysseySoftClipMatValidateVbuf0N
.ent __glOdysseySoftClipMatValidateVbuf0N
__glOdysseySoftClipMatValidateVbuf0N:
    # Line 24
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    # Line 28
    lui	$s0,0x1
    lw	$a1,12744($a0)
    ori	$s0,$s0,0x6db8
    # Line 24
    sd	$ra,16($sp)
    # Line 28
    addu	$s0,$a0,$s0
    # Line 24
    sd	$s1,8($sp)
    lui	$v0,0x11
    # Line 28
    sltu	$at,$s0,$a1
    # Line 24
    move	$s1,$a0
    sd	$s2,32($sp)
    addiu	$v0,$v0,9904
    sd	$gp,0($sp)
    # Line 28
    beqz	$at,.L0d9e5f6c
    # Line 24
    addu	$gp,$t9,$v0
    # Line 28
    lui	$s2,0x2
    b	.L0d9e5f50
    addu	$s2,$a0,$s2
.L0d9e5f2c:
    # Line 30
    lw	$t9,-24948($s2)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    # Line 28
    lw	$a1,12744($s1)
    addiu	$s0,$s0,408
    sltu	$t8,$s0,$a1
    beqz	$t8,.L0d9e5f6c
    nop
.L0d9e5f50:
    lbu	$t9,400($s0)
    bnez	$t9,.L0d9e5f2c
    nop
    addiu	$s0,$s0,408
    sltu	$ra,$s0,$a1
    bnez	$ra,.L0d9e5f50
    nop
.L0d9e5f6c:
    # Line 33
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseySoftClipMatValidateVbuf0N

# Function: __glOdysseySoftClipMatValidateV1
# Declared: Line 38 (Source lines: 39-45)
# Address: 0x0d9e5f90 - 0x0d9e5fdc (Size: 76 bytes, Frame: 16)
.globl __glOdysseySoftClipMatValidateV1
.ent __glOdysseySoftClipMatValidateV1
__glOdysseySoftClipMatValidateV1:
    # Line 43
    lw	$a1,12748($a0)
    lbu	$at,400($a1)
    # Line 39
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    sd	$ra,8($sp)
    addiu	$v0,$v0,9728
    sd	$gp,0($sp)
    # Line 43
    beqz	$at,.L0d9e5fcc
    # Line 39
    addu	$gp,$t9,$v0
    # Line 44
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$a0
    lw	$t9,0($t9)
    jalr	$t9
    nop
.L0d9e5fcc:
    ld	$ra,8($sp)
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySoftClipMatValidateV1

# Function: __glOdysseySoftClipMatValidateV1V2
# Declared: Line 50 (Source lines: 51-60)
# Address: 0x0d9e5fe0 - 0x0d9e6060 (Size: 128 bytes, Frame: 32)
.globl __glOdysseySoftClipMatValidateV1V2
.ent __glOdysseySoftClipMatValidateV1V2
__glOdysseySoftClipMatValidateV1V2:
    # Line 55
    lw	$a1,12748($a0)
    # Line 51
    addiu	$sp,$sp,-32
    # Line 55
    lbu	$at,400($a1)
    # Line 51
    sd	$s0,0($sp)
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,9648
    sd	$gp,8($sp)
    # Line 55
    beqz	$at,.L0d9e6024
    # Line 51
    addu	$gp,$t9,$v0
    # Line 56
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    nop
.L0d9e6024:
    # Line 58
    lw	$a1,12752($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e6050
    ld	$ra,16($sp)
    # Line 59
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9e6050:
    ld	$s0,0($sp)
    # Line 60
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipMatValidateV1V2

# Function: __glOdysseySoftClipMatValidateVbuf0V1
# Declared: Line 65 (Source lines: 66-75)
# Address: 0x0d9e6060 - 0x0d9e60ec (Size: 140 bytes, Frame: 32)
.globl __glOdysseySoftClipMatValidateVbuf0V1
.ent __glOdysseySoftClipMatValidateVbuf0V1
__glOdysseySoftClipMatValidateVbuf0V1:
    # Line 66
    lui	$a3,0x1
    ori	$at,$a3,0x6f48
    addu	$at,$at,$a0
    addiu	$sp,$sp,-32
    lbu	$at,0($at)
    sd	$s0,0($sp)
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,9520
    sd	$gp,8($sp)
    beqz	$at,.L0d9e60b0
    addu	$gp,$t9,$v0
    # Line 71
    ori	$t9,$a3,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    move	$a1,$a3
    ori	$a1,$a1,0x6db8
    jalr	$t9
    addu	$a1,$s0,$a1
.L0d9e60b0:
    # Line 73
    lw	$a1,12748($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e60dc
    ld	$ra,16($sp)
    # Line 74
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9e60dc:
    ld	$s0,0($sp)
    # Line 75
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipMatValidateVbuf0V1

# Function: __glOdysseySoftClipMatValidateV1V2V3
# Declared: Line 80 (Source lines: 81-93)
# Address: 0x0d9e60f0 - 0x0d9e6190 (Size: 160 bytes, Frame: 32)
.globl __glOdysseySoftClipMatValidateV1V2V3
.ent __glOdysseySoftClipMatValidateV1V2V3
__glOdysseySoftClipMatValidateV1V2V3:
    # Line 85
    lw	$a1,12748($a0)
    # Line 81
    addiu	$sp,$sp,-32
    # Line 85
    lbu	$at,400($a1)
    # Line 81
    sd	$s0,0($sp)
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,9376
    sd	$gp,8($sp)
    # Line 85
    beqz	$at,.L0d9e6134
    # Line 81
    addu	$gp,$t9,$v0
    # Line 86
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    nop
.L0d9e6134:
    # Line 88
    lw	$a1,12752($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e6158
    # Line 89
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
.L0d9e6158:
    # Line 91
    lw	$a1,12756($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e617c
    # Line 92
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
.L0d9e617c:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 93
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipMatValidateV1V2V3

# Function: __glOdysseySoftClipMatValidateV2V3
# Declared: Line 98 (Source lines: 99-108)
# Address: 0x0d9e6190 - 0x0d9e6210 (Size: 128 bytes, Frame: 32)
.globl __glOdysseySoftClipMatValidateV2V3
.ent __glOdysseySoftClipMatValidateV2V3
__glOdysseySoftClipMatValidateV2V3:
    # Line 103
    lw	$a1,12752($a0)
    # Line 99
    addiu	$sp,$sp,-32
    # Line 103
    lbu	$at,400($a1)
    # Line 99
    sd	$s0,0($sp)
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,9216
    sd	$gp,8($sp)
    # Line 103
    beqz	$at,.L0d9e61d4
    # Line 99
    addu	$gp,$t9,$v0
    # Line 104
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    nop
.L0d9e61d4:
    # Line 106
    lw	$a1,12756($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e6200
    ld	$ra,16($sp)
    # Line 107
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9e6200:
    ld	$s0,0($sp)
    # Line 108
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipMatValidateV2V3

# Function: __glOdysseySoftClipMatValidateVbuf0V1V2
# Declared: Line 113 (Source lines: 114-126)
# Address: 0x0d9e6210 - 0x0d9e62c0 (Size: 176 bytes, Frame: 32)
.globl __glOdysseySoftClipMatValidateVbuf0V1V2
.ent __glOdysseySoftClipMatValidateVbuf0V1V2
__glOdysseySoftClipMatValidateVbuf0V1V2:
    # Line 114
    lui	$a3,0x1
    ori	$at,$a3,0x6f48
    addu	$at,$at,$a0
    addiu	$sp,$sp,-32
    lbu	$at,0($at)
    sd	$s0,0($sp)
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,9088
    sd	$gp,8($sp)
    beqz	$at,.L0d9e6260
    addu	$gp,$t9,$v0
    # Line 119
    ori	$t9,$a3,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    move	$a1,$a3
    ori	$a1,$a1,0x6db8
    jalr	$t9
    addu	$a1,$s0,$a1
.L0d9e6260:
    # Line 121
    lw	$a1,12748($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e6284
    # Line 122
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
.L0d9e6284:
    # Line 124
    lw	$a1,12752($s0)
    lbu	$ra,400($a1)
    beqz	$ra,.L0d9e62b0
    ld	$ra,16($sp)
    # Line 125
    lui	$t9,0x1
    ori	$t9,$t9,0x9e8c
    addu	$t9,$t9,$s0
    lw	$t9,0($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9e62b0:
    ld	$s0,0($sp)
    # Line 126
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipMatValidateVbuf0V1V2

# Function: SoftClipThirdTrianglesVertex
# Declared: Line 134 (Source lines: 135-154)
# Address: 0x0d9e62c0 - 0x0d9e6340 (Size: 128 bytes, Frame: 32)
.ent SoftClipThirdTrianglesVertex
SoftClipThirdTrianglesVertex:
    # Line 142
    lbu	$a4,453($a0)
    sb	$a4,184($a1)
    # Line 135
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    move	$a3,$a1
    sd	$s8,8($sp)
    addiu	$v0,$v0,8912
    # Line 150
    lui	$at,0x1
    sd	$gp,16($sp)
    # Line 135
    addu	$gp,$t9,$v0
    move	$s8,$a0
    move	$a2,$at
    # Line 150
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 148
    sw	$a1,28128($a0)
    # Line 150
    ori	$at,$at,0x6db8
    ori	$a2,$a2,0x6f50
    # Line 135
    sd	$ra,0($sp)
    # Line 150
    addu	$at,$a0,$at
    addu	$a2,$s8,$a2
    sd	$at,24($sp)
    bal __glOdysseySoftClipProcessTriangle
    move	$a1,$at
    # Line 153
    la	$v1,sub_0d9e0000
    # Line 154
    ld	$gp,16($sp)
    # Line 152
    ld	$a0,24($sp)
    ld	$ra,0($sp)
    sw	$a0,12744($s8)
    # Line 153
    addiu	$v1,$v1,25472
    sw	$v1,12004($s8)
    # Line 154
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipThirdTrianglesVertex

# Function: SoftClipSecondTrianglesVertex
# Declared: Line 157 (Source lines: 158-168)
# Address: 0x0d9e6340 - 0x0d9e6374 (Size: 52 bytes, Frame: 0)
.ent SoftClipSecondTrianglesVertex
SoftClipSecondTrianglesVertex:
    # Line 158
    lui	$a2,0x11
    addiu	$a2,$a2,8784
    addu	$at,$t9,$a2
    # Line 164
    lbu	$a2,453($a0)
    # Line 166
    lui	$v1,0x1
    # Line 164
    sb	$a2,184($a1)
    # Line 166
    ori	$v1,$v1,0x70e8
    # Line 167
    la	$v0,sub_0d9e0000
    # Line 166
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 167
    addiu	$v0,$v0,25280
    # Line 168
    jr	$ra
    # Line 167
    sw	$v0,12004($a0)
.end SoftClipSecondTrianglesVertex

# Function: SoftClipFirstTrianglesVertex
# Declared: Line 171 (Source lines: 172-182)
# Address: 0x0d9e6380 - 0x0d9e63b4 (Size: 52 bytes, Frame: 0)
.ent SoftClipFirstTrianglesVertex
SoftClipFirstTrianglesVertex:
    # Line 172
    lui	$a2,0x11
    addiu	$a2,$a2,8720
    addu	$at,$t9,$a2
    # Line 178
    lbu	$a2,453($a0)
    # Line 180
    lui	$v1,0x1
    # Line 178
    sb	$a2,184($a1)
    # Line 180
    ori	$v1,$v1,0x6f50
    # Line 181
    la	$v0,sub_0d9e0000
    # Line 180
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 181
    addiu	$v0,$v0,25408
    # Line 182
    jr	$ra
    # Line 181
    sw	$v0,12004($a0)
.end SoftClipFirstTrianglesVertex

# Function: __glOdysseySoftClipBeginTriangles
# Declared: Line 184 (Source lines: 185-191)
# Address: 0x0d9e63c0 - 0x0d9e63f4 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginTriangles
.ent __glOdysseySoftClipBeginTriangles
__glOdysseySoftClipBeginTriangles:
    # Line 188
    lui	$a2,0x1
    # Line 185
    lui	$a1,0x11
    # Line 188
    ori	$a2,$a2,0x6db8
    # Line 185
    addiu	$a1,$a1,8656
    # Line 188
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 185
    addu	$at,$t9,$a1
    # Line 190
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 189
    la	$v0,sub_0d9e0000
    # Line 190
    sw	$v1,12076($a0)
    # Line 189
    addiu	$v0,$v0,25472
    # Line 191
    jr	$ra
    # Line 189
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginTriangles

# Function: __glOdysseySoftClipEvenTriangleStripVertex
# Declared: Line 196 (Source lines: 197-212)
# Address: 0x0d9e6400 - 0x0d9e6484 (Size: 132 bytes, Frame: 48)
.globl __glOdysseySoftClipEvenTriangleStripVertex
.ent __glOdysseySoftClipEvenTriangleStripVertex
__glOdysseySoftClipEvenTriangleStripVertex:
    # Line 200
    li	$v1,1
    sb	$v1,184($a1)
    # Line 204
    sw	$a1,28128($a0)
    # Line 202
    lw	$a3,12748($a0)
    # Line 197
    addiu	$sp,$sp,-48
    # Line 202
    sd	$a3,24($sp)
    # Line 201
    lw	$at,12752($a0)
    # Line 197
    lui	$v0,0x11
    # Line 201
    sd	$at,32($sp)
    # Line 197
    addiu	$v0,$v0,8592
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 206
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 197
    sd	$s8,8($sp)
    move	$a2,$a1
    move	$s8,$a0
    sd	$a1,40($sp)
    sd	$ra,0($sp)
    # Line 206
    bal __glOdysseySoftClipProcessTriangle
    move	$a1,$at
    # Line 211
    la	$a0,__glOdysseySoftClipOddTriangleStripVertex
    # Line 212
    ld	$gp,16($sp)
    # Line 208
    ld	$a1,24($sp)
    # Line 209
    ld	$a2,40($sp)
    # Line 210
    ld	$a3,32($sp)
    sw	$a3,12744($s8)
    # Line 209
    sw	$a2,12748($s8)
    ld	$ra,0($sp)
    # Line 208
    sw	$a1,12752($s8)
    # Line 211
    sw	$a0,12004($s8)
    # Line 212
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseySoftClipEvenTriangleStripVertex

# Function: __glOdysseySoftClipOddTriangleStripVertex
# Declared: Line 215 (Source lines: 216-231)
# Address: 0x0d9e6490 - 0x0d9e6514 (Size: 132 bytes, Frame: 48)
.globl __glOdysseySoftClipOddTriangleStripVertex
.ent __glOdysseySoftClipOddTriangleStripVertex
__glOdysseySoftClipOddTriangleStripVertex:
    # Line 219
    li	$v1,1
    sb	$v1,184($a1)
    # Line 223
    sw	$a1,28128($a0)
    # Line 221
    lw	$a2,12748($a0)
    # Line 216
    addiu	$sp,$sp,-48
    # Line 221
    sd	$a2,24($sp)
    # Line 220
    lw	$at,12752($a0)
    # Line 216
    lui	$v0,0x11
    # Line 220
    sd	$at,32($sp)
    # Line 216
    addiu	$v0,$v0,8448
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 225
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 216
    sd	$s8,8($sp)
    move	$a3,$a1
    move	$s8,$a0
    sd	$a1,40($sp)
    sd	$ra,0($sp)
    # Line 225
    bal __glOdysseySoftClipProcessTriangle
    move	$a1,$at
    # Line 230
    la	$a0,__glOdysseySoftClipEvenTriangleStripVertex
    # Line 231
    ld	$gp,16($sp)
    # Line 227
    ld	$a1,24($sp)
    # Line 228
    ld	$a2,40($sp)
    # Line 229
    ld	$a3,32($sp)
    sw	$a3,12744($s8)
    # Line 228
    sw	$a2,12748($s8)
    ld	$ra,0($sp)
    # Line 227
    sw	$a1,12752($s8)
    # Line 230
    sw	$a0,12004($s8)
    # Line 231
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseySoftClipOddTriangleStripVertex

# Function: SoftClipSecondTriangleStripVertex
# Declared: Line 234 (Source lines: 235-244)
# Address: 0x0d9e6520 - 0x0d9e6570 (Size: 80 bytes, Frame: 0)
.ent SoftClipSecondTriangleStripVertex
SoftClipSecondTriangleStripVertex:
    # Line 239
    lui	$a2,0x1
    # Line 241
    ori	$a4,$a2,0x70e8
    # Line 240
    ori	$a3,$a2,0x6f50
    # Line 239
    ori	$a2,$a2,0x6db8
    # Line 238
    li	$a5,1
    sb	$a5,184($a1)
    # Line 241
    addu	$a4,$a0,$a4
    sw	$a4,12744($a0)
    # Line 235
    lui	$a1,0x11
    # Line 240
    addu	$a3,$a0,$a3
    sw	$a3,12748($a0)
    # Line 235
    addiu	$a1,$a1,8304
    # Line 239
    addu	$a2,$a0,$a2
    sw	$a2,12752($a0)
    # Line 235
    addu	$at,$t9,$a1
    # Line 242
    la	$v0,__glOdysseySoftClipOddTriangleStripVertex
    # Line 243
    la	$v1,__glOdysseySoftClipMatValidateV1V2
    sw	$v1,12076($a0)
    # Line 244
    jr	$ra
    # Line 242
    sw	$v0,12004($a0)
.end SoftClipSecondTriangleStripVertex

# Function: SoftClipFirstTriangleStripVertex
# Declared: Line 247 (Source lines: 248-254)
# Address: 0x0d9e6570 - 0x0d9e65a4 (Size: 52 bytes, Frame: 0)
.ent SoftClipFirstTriangleStripVertex
SoftClipFirstTriangleStripVertex:
    # Line 248
    lui	$a2,0x11
    # Line 252
    lui	$v1,0x1
    # Line 248
    addiu	$a2,$a2,8224
    addu	$at,$t9,$a2
    # Line 251
    li	$a2,1
    sb	$a2,184($a1)
    # Line 252
    ori	$v1,$v1,0x6f50
    # Line 253
    la	$v0,sub_0d9e0000
    # Line 252
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 253
    addiu	$v0,$v0,25888
    # Line 254
    jr	$ra
    # Line 253
    sw	$v0,12004($a0)
.end SoftClipFirstTriangleStripVertex

# Function: __glOdysseySoftClipBeginTStrip
# Declared: Line 256 (Source lines: 257-263)
# Address: 0x0d9e65b0 - 0x0d9e65e4 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginTStrip
.ent __glOdysseySoftClipBeginTStrip
__glOdysseySoftClipBeginTStrip:
    # Line 260
    lui	$a2,0x1
    # Line 257
    lui	$a1,0x11
    # Line 260
    ori	$a2,$a2,0x6db8
    # Line 257
    addiu	$a1,$a1,8160
    # Line 260
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 257
    addu	$at,$t9,$a1
    # Line 262
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 261
    la	$v0,sub_0d9e0000
    # Line 262
    sw	$v1,12076($a0)
    # Line 261
    addiu	$v0,$v0,25968
    # Line 263
    jr	$ra
    # Line 261
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginTStrip

# Function: SoftClipTriangleFanVertex
# Declared: Line 268 (Source lines: 269-282)
# Address: 0x0d9e65f0 - 0x0d9e665c (Size: 108 bytes, Frame: 32)
.ent SoftClipTriangleFanVertex
SoftClipTriangleFanVertex:
    # Line 272
    li	$v1,1
    sb	$v1,184($a1)
    # Line 274
    lw	$a2,12748($a0)
    # Line 276
    sw	$a1,28128($a0)
    # Line 269
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    sd	$s8,8($sp)
    addiu	$v0,$v0,8096
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 278
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 273
    lw	$at,12752($a0)
    # Line 269
    move	$a3,$a1
    move	$s8,$a0
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 278
    bal __glOdysseySoftClipProcessTriangle
    move	$a1,$at
    # Line 282
    ld	$gp,16($sp)
    # Line 280
    lw	$a0,12748($s8)
    # Line 281
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    sw	$a1,12748($s8)
    # Line 280
    sw	$a0,12744($s8)
    # Line 282
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipTriangleFanVertex

# Function: SoftClipSecondTriangleFanVertex
# Declared: Line 285 (Source lines: 286-295)
# Address: 0x0d9e6660 - 0x0d9e66b4 (Size: 84 bytes, Frame: 0)
.ent SoftClipSecondTriangleFanVertex
SoftClipSecondTriangleFanVertex:
    # Line 290
    lui	$a2,0x1
    # Line 292
    ori	$a4,$a2,0x70e8
    # Line 291
    ori	$a3,$a2,0x6f50
    # Line 290
    ori	$a2,$a2,0x6db8
    # Line 289
    li	$a5,1
    sb	$a5,184($a1)
    # Line 292
    addu	$a4,$a0,$a4
    sw	$a4,12744($a0)
    # Line 286
    lui	$a1,0x11
    # Line 291
    addu	$a3,$a0,$a3
    sw	$a3,12748($a0)
    # Line 286
    addiu	$a1,$a1,7984
    # Line 290
    addu	$a2,$a0,$a2
    sw	$a2,12752($a0)
    # Line 286
    addu	$at,$t9,$a1
    # Line 294
    la	$v1,__glOdysseySoftClipMatValidateVbuf0V1
    # Line 293
    la	$v0,sub_0d9e0000
    # Line 294
    sw	$v1,12076($a0)
    # Line 293
    addiu	$v0,$v0,26096
    # Line 295
    jr	$ra
    # Line 293
    sw	$v0,12004($a0)
.end SoftClipSecondTriangleFanVertex

# Function: SoftClipFirstTriangleFanVertex
# Declared: Line 298 (Source lines: 299-305)
# Address: 0x0d9e66c0 - 0x0d9e66f4 (Size: 52 bytes, Frame: 0)
.ent SoftClipFirstTriangleFanVertex
SoftClipFirstTriangleFanVertex:
    # Line 299
    lui	$a2,0x11
    # Line 303
    lui	$v1,0x1
    # Line 299
    addiu	$a2,$a2,7888
    addu	$at,$t9,$a2
    # Line 302
    li	$a2,1
    sb	$a2,184($a1)
    # Line 303
    ori	$v1,$v1,0x6f50
    # Line 304
    la	$v0,sub_0d9e0000
    # Line 303
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 304
    addiu	$v0,$v0,26208
    # Line 305
    jr	$ra
    # Line 304
    sw	$v0,12004($a0)
.end SoftClipFirstTriangleFanVertex

# Function: __glOdysseySoftClipBeginTFan
# Declared: Line 307 (Source lines: 308-314)
# Address: 0x0d9e6700 - 0x0d9e6734 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginTFan
.ent __glOdysseySoftClipBeginTFan
__glOdysseySoftClipBeginTFan:
    # Line 311
    lui	$a2,0x1
    # Line 308
    lui	$a1,0x11
    # Line 311
    ori	$a2,$a2,0x6db8
    # Line 308
    addiu	$a1,$a1,7824
    # Line 311
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 308
    addu	$at,$t9,$a1
    # Line 313
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 312
    la	$v0,sub_0d9e0000
    # Line 313
    sw	$v1,12076($a0)
    # Line 312
    addiu	$v0,$v0,26304
    # Line 314
    jr	$ra
    # Line 312
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginTFan

# Function: SoftClipForthQuadsVertex
# Declared: Line 322 (Source lines: 323-352)
# Address: 0x0d9e6740 - 0x0d9e681c (Size: 220 bytes, Frame: 192)
.ent SoftClipForthQuadsVertex
SoftClipForthQuadsVertex:
    # Line 331
    lbu	$a4,453($a0)
    # Line 323
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # Line 331
    sb	$a4,184($a1)
    # Line 338
    sw	$a1,28128($a0)
    # Line 323
    sd	$s5,8($sp)
    sd	$s2,48($sp)
    move	$s5,$a1
    sd	$s1,32($sp)
    # Line 340
    lui	$a2,0x1
    addu	$s1,$a0,$a2
    # Line 323
    sd	$s8,16($sp)
    lui	$a3,0x11
    # Line 342
    ori	$s8,$a2,0x70e8
    # Line 323
    sd	$s3,56($sp)
    addiu	$a3,$a3,7760
    # Line 342
    ori	$s3,$a2,0x6db8
    sd	$gp,24($sp)
    # Line 323
    addu	$gp,$t9,$a3
    # Line 342
    ori	$a2,$a2,0x6f50
    # Line 323
    move	$s2,$a0
    # Line 342
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 323
    sd	$s0,40($sp)
    # Line 342
    addu	$a2,$s2,$a2
    addu	$s8,$a0,$s8
    # Line 340
    lbu	$s0,29088($s1)
    # Line 342
    addu	$s3,$a0,$s3
    move	$a3,$s8
    # Line 341
    sb	$zero,29088($s1)
    # Line 342
    bal __glOdysseySoftClipProcessTriangle
    move	$a1,$s3
    # Line 347
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    move	$a3,$s5
    # Line 343
    sb	$s0,29088($s1)
    # Line 347
    move	$a2,$s8
    move	$a1,$s3
    # Line 345
    lbu	$s0,28272($s1)
    # Line 347
    move	$a0,$s2
    bal __glOdysseySoftClipProcessTriangle
    # Line 346
    sb	$zero,28272($s1)
    ld	$s5,8($sp)
    ld	$s8,16($sp)
    # Line 351
    la	$at,sub_0d9e0000
    # Line 352
    ld	$gp,24($sp)
    # Line 348
    sb	$s0,28272($s1)
    # Line 352
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    # Line 350
    sw	$s3,12744($s2)
    ld	$ra,0($sp)
    # Line 352
    ld	$s3,56($sp)
    # Line 351
    addiu	$at,$at,26784
    sw	$at,12004($s2)
    # Line 352
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end SoftClipForthQuadsVertex

# Function: SoftClipThirdQuadsVertex
# Declared: Line 355 (Source lines: 356-366)
# Address: 0x0d9e6820 - 0x0d9e6854 (Size: 52 bytes, Frame: 0)
.ent SoftClipThirdQuadsVertex
SoftClipThirdQuadsVertex:
    # Line 356
    lui	$a2,0x11
    addiu	$a2,$a2,7536
    addu	$at,$t9,$a2
    # Line 362
    lbu	$a2,453($a0)
    # Line 364
    lui	$v1,0x1
    # Line 362
    sb	$a2,184($a1)
    # Line 364
    ori	$v1,$v1,0x7280
    # Line 365
    la	$v0,sub_0d9e0000
    # Line 364
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 365
    addiu	$v0,$v0,26432
    # Line 366
    jr	$ra
    # Line 365
    sw	$v0,12004($a0)
.end SoftClipThirdQuadsVertex

# Function: SoftClipSecondQuadsVertex
# Declared: Line 369 (Source lines: 370-380)
# Address: 0x0d9e6860 - 0x0d9e6894 (Size: 52 bytes, Frame: 0)
.ent SoftClipSecondQuadsVertex
SoftClipSecondQuadsVertex:
    # Line 370
    lui	$a2,0x11
    addiu	$a2,$a2,7472
    addu	$at,$t9,$a2
    # Line 376
    lbu	$a2,453($a0)
    # Line 378
    lui	$v1,0x1
    # Line 376
    sb	$a2,184($a1)
    # Line 378
    ori	$v1,$v1,0x70e8
    # Line 379
    la	$v0,sub_0d9e0000
    # Line 378
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 379
    addiu	$v0,$v0,26656
    # Line 380
    jr	$ra
    # Line 379
    sw	$v0,12004($a0)
.end SoftClipSecondQuadsVertex

# Function: SoftClipFirstQuadsVertex
# Declared: Line 383 (Source lines: 384-394)
# Address: 0x0d9e68a0 - 0x0d9e68d4 (Size: 52 bytes, Frame: 0)
.ent SoftClipFirstQuadsVertex
SoftClipFirstQuadsVertex:
    # Line 384
    lui	$a2,0x11
    addiu	$a2,$a2,7408
    addu	$at,$t9,$a2
    # Line 390
    lbu	$a2,453($a0)
    # Line 392
    lui	$v1,0x1
    # Line 390
    sb	$a2,184($a1)
    # Line 392
    ori	$v1,$v1,0x6f50
    # Line 393
    la	$v0,sub_0d9e0000
    # Line 392
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 393
    addiu	$v0,$v0,26720
    # Line 394
    jr	$ra
    # Line 393
    sw	$v0,12004($a0)
.end SoftClipFirstQuadsVertex

# Function: __glOdysseySoftClipBeginQuads
# Declared: Line 396 (Source lines: 397-403)
# Address: 0x0d9e68e0 - 0x0d9e6914 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginQuads
.ent __glOdysseySoftClipBeginQuads
__glOdysseySoftClipBeginQuads:
    # Line 400
    lui	$a2,0x1
    # Line 397
    lui	$a1,0x11
    # Line 400
    ori	$a2,$a2,0x6db8
    # Line 397
    addiu	$a1,$a1,7344
    # Line 400
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 397
    addu	$at,$t9,$a1
    # Line 402
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 401
    la	$v0,sub_0d9e0000
    # Line 402
    sw	$v1,12076($a0)
    # Line 401
    addiu	$v0,$v0,26784
    # Line 403
    jr	$ra
    # Line 401
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginQuads

# Function: SoftClipEvenQuadStripVertex
# Declared: Line 411 (Source lines: 412-440)
# Address: 0x0d9e6920 - 0x0d9e6a00 (Size: 224 bytes, Frame: 192)
.ent SoftClipEvenQuadStripVertex
SoftClipEvenQuadStripVertex:
    # Line 416
    li	$v0,1
    sb	$v0,184($a1)
    # Line 422
    sw	$a1,28128($a0)
    # Line 412
    addiu	$sp,$sp,-64
    sd	$s2,56($sp)
    # Line 421
    lw	$s2,12744($a0)
    # Line 412
    sd	$ra,0($sp)
    sd	$s0,32($sp)
    sd	$s3,48($sp)
    sd	$s8,8($sp)
    # Line 418
    lw	$s8,12756($a0)
    # Line 412
    sd	$s4,40($sp)
    # Line 419
    lw	$s4,12752($a0)
    # Line 412
    lui	$at,0x11
    sd	$s1,24($sp)
    addiu	$at,$at,7280
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 426
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 412
    move	$s3,$a0
    # Line 420
    lw	$s1,12748($a0)
    # Line 426
    move	$a3,$s4
    move	$a2,$s8
    # Line 424
    lbu	$s0,184($s4)
    # Line 426
    move	$a1,$s1
    bal __glOdysseySoftClipProcessTriangle
    # Line 425
    sb	$zero,184($s4)
    # Line 431
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    move	$a3,$s2
    # Line 427
    sb	$s0,184($s4)
    # Line 431
    move	$a2,$s4
    move	$a1,$s1
    # Line 429
    lbu	$s0,184($s1)
    # Line 431
    move	$a0,$s3
    bal __glOdysseySoftClipProcessTriangle
    # Line 430
    sb	$zero,184($s1)
    # Line 439
    la	$a0,__glOdysseySoftClipMatValidateV2V3
    # Line 438
    la	$v1,sub_0d9e0000
    # Line 440
    ld	$gp,16($sp)
    # Line 432
    sb	$s0,184($s1)
    # Line 440
    ld	$s0,32($sp)
    # Line 434
    sw	$s1,12756($s3)
    # Line 440
    ld	$s1,24($sp)
    # Line 435
    sw	$s2,12752($s3)
    # Line 440
    ld	$s2,56($sp)
    # Line 436
    sw	$s4,12748($s3)
    # Line 440
    ld	$s4,40($sp)
    # Line 437
    sw	$s8,12744($s3)
    # Line 440
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 439
    sw	$a0,12076($s3)
    # Line 438
    addiu	$v1,$v1,27136
    sw	$v1,12004($s3)
    # Line 440
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end SoftClipEvenQuadStripVertex

# Function: SoftClipOddQuadStripVertex
# Declared: Line 443 (Source lines: 444-450)
# Address: 0x0d9e6a00 - 0x0d9e6a38 (Size: 56 bytes, Frame: 0)
.ent SoftClipOddQuadStripVertex
SoftClipOddQuadStripVertex:
    # Line 445
    li	$a4,1
    sb	$a4,184($a1)
    # Line 446
    lw	$a2,12748($a0)
    # Line 444
    lui	$a3,0x11
    # Line 447
    sw	$a1,12748($a0)
    # Line 444
    addiu	$a1,$a3,7056
    # Line 446
    sw	$a2,12744($a0)
    # Line 444
    addu	$at,$t9,$a1
    # Line 449
    la	$v1,__glOdysseySoftClipMatValidateV1V2V3
    # Line 448
    la	$v0,sub_0d9e0000
    # Line 449
    sw	$v1,12076($a0)
    # Line 448
    addiu	$v0,$v0,26912
    # Line 450
    jr	$ra
    # Line 448
    sw	$v0,12004($a0)
.end SoftClipOddQuadStripVertex

# Function: SoftClipSecondQuadStripVertex
# Declared: Line 453 (Source lines: 454-463)
# Address: 0x0d9e6a40 - 0x0d9e6a98 (Size: 88 bytes, Frame: 0)
.ent SoftClipSecondQuadStripVertex
SoftClipSecondQuadStripVertex:
    # Line 458
    lui	$v1,0x1
    # Line 461
    ori	$a3,$v1,0x70e8
    addu	$a3,$a0,$a3
    # Line 460
    ori	$a2,$v1,0x7280
    # Line 457
    li	$a4,1
    sb	$a4,184($a1)
    # Line 461
    sw	$a3,12744($a0)
    # Line 460
    addu	$a2,$a0,$a2
    # Line 454
    lui	$a1,0x11
    # Line 460
    sw	$a2,12748($a0)
    # Line 459
    ori	$a2,$v1,0x6f50
    # Line 454
    addiu	$a1,$a1,6992
    # Line 459
    addu	$a2,$a0,$a2
    sw	$a2,12752($a0)
    # Line 454
    addu	$at,$t9,$a1
    # Line 458
    ori	$v1,$v1,0x6db8
    # Line 462
    la	$v0,sub_0d9e0000
    # Line 458
    addu	$v1,$a0,$v1
    sw	$v1,12756($a0)
    # Line 462
    addiu	$v0,$v0,27136
    # Line 463
    jr	$ra
    # Line 462
    sw	$v0,12004($a0)
.end SoftClipSecondQuadStripVertex

# Function: SoftClipFirstQuadStripVertex
# Declared: Line 466 (Source lines: 467-473)
# Address: 0x0d9e6aa0 - 0x0d9e6ad4 (Size: 52 bytes, Frame: 0)
.ent SoftClipFirstQuadStripVertex
SoftClipFirstQuadStripVertex:
    # Line 467
    lui	$a2,0x11
    # Line 471
    lui	$v1,0x1
    # Line 467
    addiu	$a2,$a2,6896
    addu	$at,$t9,$a2
    # Line 470
    li	$a2,1
    sb	$a2,184($a1)
    # Line 471
    ori	$v1,$v1,0x6f50
    # Line 472
    la	$v0,sub_0d9e0000
    # Line 471
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 472
    addiu	$v0,$v0,27200
    # Line 473
    jr	$ra
    # Line 472
    sw	$v0,12004($a0)
.end SoftClipFirstQuadStripVertex

# Function: __glOdysseySoftClipBeginQStrip
# Declared: Line 475 (Source lines: 476-482)
# Address: 0x0d9e6ae0 - 0x0d9e6b14 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginQStrip
.ent __glOdysseySoftClipBeginQStrip
__glOdysseySoftClipBeginQStrip:
    # Line 479
    lui	$a2,0x1
    # Line 476
    lui	$a1,0x11
    # Line 479
    ori	$a2,$a2,0x6db8
    # Line 476
    addiu	$a1,$a1,6832
    # Line 479
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 476
    addu	$at,$t9,$a1
    # Line 481
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 480
    la	$v0,sub_0d9e0000
    # Line 481
    sw	$v1,12076($a0)
    # Line 480
    addiu	$v0,$v0,27296
    # Line 482
    jr	$ra
    # Line 480
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginQStrip

# Function: SoftClipEndPolygon3Verts
# Declared: Line 486 (Source lines: 487-498)
# Address: 0x0d9e6b20 - 0x0d9e6b7c (Size: 92 bytes, Frame: 32)
.ent SoftClipEndPolygon3Verts
SoftClipEndPolygon3Verts:
    # Line 487
    lui	$a2,0x11
    # Line 495
    lw	$a3,12748($a0)
    # Line 487
    addiu	$sp,$sp,-32
    addiu	$a2,$a2,6768
    sd	$gp,16($sp)
    addu	$gp,$t9,$a2
    # Line 495
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 487
    sd	$ra,0($sp)
    # Line 495
    lui	$a1,0x1
    ori	$a1,$a1,0x6db8
    # Line 487
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 495
    lw	$a2,12752($s8)
    bal __glOdysseySoftClipProcessTriangle
    addu	$a1,$s8,$a1
    # Line 497
    # lw $t9, -25292($gp) # &__glEndPrim
    jal	__glEndPrim
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 498
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipEndPolygon3Verts

# Function: SoftClipEndPolygon
# Declared: Line 500 (Source lines: 501-513)
# Address: 0x0d9e6b80 - 0x0d9e6be8 (Size: 104 bytes, Frame: 32)
.ent SoftClipEndPolygon
SoftClipEndPolygon:
    # Line 506
    lw	$a2,12752($a0)
    # Line 501
    lui	$a4,0x11
    # Line 507
    lw	$a3,12748($a0)
    # Line 501
    addiu	$sp,$sp,-32
    addiu	$a4,$a4,6672
    sd	$gp,16($sp)
    addu	$gp,$t9,$a4
    # Line 509
    lui	$a1,0x1
    # Line 510
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    # Line 501
    sd	$ra,0($sp)
    # Line 509
    ori	$at,$a1,0x6e70
    # Line 510
    ori	$a1,$a1,0x6db8
    # Line 501
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 509
    addu	$at,$at,$a0
    # Line 510
    addu	$a1,$s8,$a1
    bal __glOdysseySoftClipProcessTriangle
    # Line 509
    sb	$zero,0($at)
    # Line 512
    # lw $t9, -25292($gp) # &__glEndPrim
    jal	__glEndPrim
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 513
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipEndPolygon

# Function: SoftClipPolygonVertex
# Declared: Line 516 (Source lines: 517-543)
# Address: 0x0d9e6bf0 - 0x0d9e6ca4 (Size: 180 bytes, Frame: 192)
.ent SoftClipPolygonVertex
SoftClipPolygonVertex:
    # Line 532
    lui	$v0,0x1
    # Line 517
    addiu	$sp,$sp,-64
    # Line 532
    addu	$v1,$a0,$v0
    sd	$v1,40($sp)
    # Line 517
    sd	$ra,0($sp)
    sd	$a1,56($sp)
    # Line 525
    lbu	$a4,453($a0)
    sb	$a4,184($a1)
    # Line 529
    lw	$a2,12752($a0)
    # Line 517
    sd	$s8,8($sp)
    # Line 530
    lw	$at,12748($a0)
    sd	$at,48($sp)
    # Line 532
    lbu	$a4,28272($v1)
    sd	$a4,32($sp)
    # Line 517
    lui	$a3,0x11
    # Line 533
    lbu	$a4,184($at)
    # Line 517
    addiu	$a3,$a3,6560
    sd	$gp,16($sp)
    addu	$gp,$t9,$a3
    # Line 536
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    ori	$v0,$v0,0x6db8
    # Line 517
    move	$s8,$a0
    # Line 534
    sb	$zero,28272($v1)
    # Line 536
    addu	$a1,$s8,$v0
    # Line 535
    sb	$zero,184($at)
    # Line 536
    move	$a3,$at
    bal __glOdysseySoftClipProcessTriangle
    # Line 533
    sd	$a4,24($sp)
    # Line 543
    ld	$gp,16($sp)
    # Line 542
    ld	$a7,56($sp)
    # Line 538
    ld	$t0,24($sp)
    # Line 537
    ld	$t2,32($sp)
    ld	$t3,40($sp)
    # Line 538
    ld	$t1,48($sp)
    # Line 537
    sb	$t2,28272($t3)
    # Line 538
    sb	$t0,184($t1)
    # Line 541
    lw	$a6,12748($s8)
    # Line 542
    sw	$a7,12748($s8)
    ld	$ra,0($sp)
    # Line 540
    lw	$a5,12752($s8)
    # Line 541
    sw	$a6,12752($s8)
    # Line 540
    sw	$a5,12744($s8)
    # Line 543
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end SoftClipPolygonVertex

# Function: SoftClipForthPolygonVertex
# Declared: Line 546 (Source lines: 547-573)
# Address: 0x0d9e6cb0 - 0x0d9e6d64 (Size: 180 bytes, Frame: 48)
.ent SoftClipForthPolygonVertex
SoftClipForthPolygonVertex:
    # Line 547
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 555
    lbu	$a4,453($a0)
    sb	$a4,184($a1)
    # Line 559
    lw	$a2,12752($a0)
    # Line 547
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 560
    lw	$at,12748($a0)
    # Line 547
    lui	$a3,0x11
    # Line 560
    sd	$at,32($sp)
    # Line 547
    addiu	$a3,$a3,6368
    sd	$gp,16($sp)
    addu	$gp,$t9,$a3
    # Line 564
    lui	$v1,0x1
    # lw $t9, -29780($gp) # &__glOdysseySoftClipProcessTriangle
    ori	$v1,$v1,0x6db8
    # Line 547
    move	$s8,$a0
    # Line 562
    lbu	$v0,184($at)
    # Line 564
    addu	$a1,$s8,$v1
    # Line 563
    sb	$zero,184($at)
    # Line 564
    move	$a3,$at
    bal __glOdysseySoftClipProcessTriangle
    # Line 562
    sd	$v0,24($sp)
    # Line 572
    la	$t1,__glOdysseySoftClipMatValidateVbuf0V1V2
    # Line 571
    la	$a6,sub_0d9e0000
    # Line 570
    la	$a5,sub_0d9e0000
    # Line 573
    ld	$gp,16($sp)
    # Line 569
    ld	$t2,40($sp)
    # Line 565
    ld	$t8,32($sp)
    ld	$t3,24($sp)
    sb	$t3,184($t8)
    # Line 568
    lw	$t0,12748($s8)
    # Line 569
    sw	$t2,12748($s8)
    # Line 572
    sw	$t1,12076($s8)
    # Line 571
    addiu	$a6,$a6,27520
    sw	$a6,12124($s8)
    # Line 570
    addiu	$a5,$a5,27632
    sw	$a5,12004($s8)
    ld	$ra,0($sp)
    # Line 567
    lw	$a7,12752($s8)
    # Line 568
    sw	$t0,12752($s8)
    # Line 567
    sw	$a7,12744($s8)
    # Line 573
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SoftClipForthPolygonVertex

# Function: SoftClipThirdPolygonVertex
# Declared: Line 576 (Source lines: 577-590)
# Address: 0x0d9e6d70 - 0x0d9e6dc8 (Size: 88 bytes, Frame: 0)
.ent SoftClipThirdPolygonVertex
SoftClipThirdPolygonVertex:
    # Line 585
    lui	$a2,0x1
    # Line 587
    ori	$a4,$a2,0x7280
    # Line 583
    lbu	$a5,453($a0)
    # Line 586
    ori	$a3,$a2,0x70e8
    # Line 585
    ori	$a2,$a2,0x6f50
    # Line 583
    sb	$a5,184($a1)
    # Line 587
    addu	$a4,$a0,$a4
    sw	$a4,12744($a0)
    # Line 577
    lui	$a1,0x11
    # Line 586
    addu	$a3,$a0,$a3
    sw	$a3,12748($a0)
    # Line 577
    addiu	$a1,$a1,6176
    # Line 585
    addu	$a2,$a0,$a2
    sw	$a2,12752($a0)
    # Line 577
    addu	$at,$t9,$a1
    # Line 589
    la	$v1,sub_0d9e0000
    # Line 588
    la	$v0,sub_0d9e0000
    # Line 589
    addiu	$v1,$v1,27424
    sw	$v1,12124($a0)
    # Line 588
    addiu	$v0,$v0,27824
    # Line 590
    jr	$ra
    # Line 588
    sw	$v0,12004($a0)
.end SoftClipThirdPolygonVertex

# Function: SoftClipSecondPolygonVertex
# Declared: Line 593 (Source lines: 594-604)
# Address: 0x0d9e6dd0 - 0x0d9e6e04 (Size: 52 bytes, Frame: 0)
.ent SoftClipSecondPolygonVertex
SoftClipSecondPolygonVertex:
    # Line 594
    lui	$a2,0x11
    addiu	$a2,$a2,6080
    addu	$at,$t9,$a2
    # Line 600
    lbu	$a2,453($a0)
    # Line 602
    lui	$v1,0x1
    # Line 600
    sb	$a2,184($a1)
    # Line 602
    ori	$v1,$v1,0x70e8
    # Line 603
    la	$v0,sub_0d9e0000
    # Line 602
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 603
    addiu	$v0,$v0,28016
    # Line 604
    jr	$ra
    # Line 603
    sw	$v0,12004($a0)
.end SoftClipSecondPolygonVertex

# Function: SoftClipFirstPolygonVertex
# Declared: Line 607 (Source lines: 608-619)
# Address: 0x0d9e6e10 - 0x0d9e6e48 (Size: 56 bytes, Frame: 0)
.ent SoftClipFirstPolygonVertex
SoftClipFirstPolygonVertex:
    # Line 614
    lbu	$a3,453($a0)
    # Line 608
    lui	$a2,0x11
    # Line 614
    sb	$a3,184($a1)
    # Line 608
    addiu	$a2,$a2,6016
    # Line 618
    sw	$a1,28128($a0)
    # Line 616
    lui	$v1,0x1
    # Line 608
    addu	$at,$t9,$a2
    # Line 616
    ori	$v1,$v1,0x6f50
    # Line 617
    la	$v0,sub_0d9e0000
    # Line 616
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 617
    addiu	$v0,$v0,28112
    # Line 619
    jr	$ra
    # Line 617
    sw	$v0,12004($a0)
.end SoftClipFirstPolygonVertex

# Function: __glOdysseySoftClipBeginPolygon
# Declared: Line 621 (Source lines: 622-628)
# Address: 0x0d9e6e50 - 0x0d9e6e84 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginPolygon
.ent __glOdysseySoftClipBeginPolygon
__glOdysseySoftClipBeginPolygon:
    # Line 625
    lui	$a2,0x1
    # Line 622
    lui	$a1,0x11
    # Line 625
    ori	$a2,$a2,0x6db8
    # Line 622
    addiu	$a1,$a1,5952
    # Line 625
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 622
    addu	$at,$t9,$a1
    # Line 627
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 626
    la	$v0,sub_0d9e0000
    # Line 627
    sw	$v1,12076($a0)
    # Line 626
    addiu	$v0,$v0,28176
    # Line 628
    jr	$ra
    # Line 626
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginPolygon

