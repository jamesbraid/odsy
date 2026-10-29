# Source: ../ODYSSEY/ody_image_histogram.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_histogram.c
# Total Functions: 4

.text

# Function: __glOdyim_GetHistogramEXT
# Declared: Line 43 (Source lines: 45-58)
# Address: 0x0d9c17a0 - 0x0d9c1844 (Size: 164 bytes, Frame: 192)
.globl __glOdyim_GetHistogramEXT
.ent __glOdyim_GetHistogramEXT
__glOdyim_GetHistogramEXT:
    # Line 45
    addiu	$sp,$sp,-64
    sd	$a4,32($sp)
    sd	$a3,56($sp)
    sd	$s0,8($sp)
    # Line 46
    lw	$s0,4112($zero)
    # Line 45
    sd	$a2,48($sp)
    # Line 48
    lw	$at,1816($s0)
    # Line 45
    sd	$a1,40($sp)
    sd	$a0,24($sp)
    lui	$v0,0x13
    # Line 48
    andi	$at,$at,0x8
    sd	$ra,16($sp)
    # Line 45
    addiu	$v0,$v0,28144
    sd	$gp,0($sp)
    # Line 48
    beqz	$at,.L0d9c17f8
    # Line 45
    addu	$gp,$t9,$v0
    # Line 48
    # lw $t9, -32516($gp) # &__glOdysseyAsyncCheck
    move	$a0,$s0
    jal	__glOdysseyAsyncCheck
    li	$a1,8
    beqz	$v0,.L0d9c1834
    ld	$ra,16($sp)
.L0d9c17f8:
    # Line 51
    ld	$a0,24($sp)
    ld	$a1,40($sp)
    # lw $t9, -26240($gp) # &__glim_GetHistogramEXT
    ld	$a2,48($sp)
    ld	$a3,56($sp)
    jal	__glim_GetHistogramEXT
    ld	$a4,32($sp)
    lw	$v0,1816($s0)
    andi	$v0,$v0,0x8
    beqz	$v0,.L0d9c1830
    # Line 54
    nop	# was lw $t9, -32512($gp) # &__glOdysseyAsyncDropMarker
    move	$a0,$s0
    jal	__glOdysseyAsyncDropMarker
    li	$a1,8
.L0d9c1830:
    ld	$ra,16($sp)
.L0d9c1834:
    # Line 58
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdyim_GetHistogramEXT

# Function: __glOdyim_GetMinmaxEXT
# Declared: Line 60 (Source lines: 62-75)
# Address: 0x0d9c1850 - 0x0d9c18f4 (Size: 164 bytes, Frame: 192)
.globl __glOdyim_GetMinmaxEXT
.ent __glOdyim_GetMinmaxEXT
__glOdyim_GetMinmaxEXT:
    # Line 62
    addiu	$sp,$sp,-64
    sd	$a4,32($sp)
    sd	$a3,56($sp)
    sd	$s0,8($sp)
    # Line 63
    lw	$s0,4112($zero)
    # Line 62
    sd	$a2,48($sp)
    # Line 65
    lw	$at,1816($s0)
    # Line 62
    sd	$a1,40($sp)
    sd	$a0,24($sp)
    lui	$v0,0x13
    # Line 65
    andi	$at,$at,0x8
    sd	$ra,16($sp)
    # Line 62
    addiu	$v0,$v0,27968
    sd	$gp,0($sp)
    # Line 65
    beqz	$at,.L0d9c18a4
    # Line 62
    addu	$gp,$t9,$v0
    # Line 65
    # lw $t9, -32516($gp) # &__glOdysseyAsyncCheck
    move	$a0,$s0
    jal	__glOdysseyAsyncCheck
    li	$a1,8
    beqz	$v0,.L0d9c18e0
.L0d9c18a4:
    # Line 68
    ld	$a0,24($sp)
    ld	$a1,40($sp)
    # lw $t9, -26212($gp) # &__glim_GetMinmaxEXT
    ld	$a2,48($sp)
    ld	$a3,56($sp)
    jal	__glim_GetMinmaxEXT
    ld	$a4,32($sp)
    lw	$v0,1816($s0)
    andi	$v0,$v0,0x8
    beqz	$v0,.L0d9c18e4
    ld	$ra,16($sp)
    # Line 71
    # lw $t9, -32512($gp) # &__glOdysseyAsyncDropMarker
    move	$a0,$s0
    jal	__glOdysseyAsyncDropMarker
    li	$a1,8
.L0d9c18e0:
    ld	$ra,16($sp)
.L0d9c18e4:
    # Line 75
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdyim_GetMinmaxEXT

# Function: doOdysseyHistogramMinMax
# Declared: Line 78 (Source lines: 82-232)
# Address: 0x0d9c1900 - 0x0d9c1d9c (Size: 1180 bytes, Frame: 240)
.ent doOdysseyHistogramMinMax
doOdysseyHistogramMinMax:
    # Line 82
    addiu	$sp,$sp,-624
    sd	$a2,552($sp)
    # Line 91
    sw	$a1,184($sp)
    # Line 90
    sw	$a1,180($sp)
    # Line 89
    sw	$a1,168($sp)
    # Line 82
    sd	$s5,528($sp)
    # Line 94
    li	$t1,6408
    # Line 82
    move	$s5,$a0
    sd	$s0,536($sp)
    move	$s0,$a1
    # Line 94
    beq	$t1,$a3,.L0d9c1968
    sd	$s3,560($sp)
    li	$a0,1
    beq	$a0,$a3,.L0d9c1bac
    # Line 100
    li	$v1,2
    # Line 94
    li	$at,6410
    beq	$a3,$at,.L0d9c1ba8
    li	$v0,6403
    beq	$a3,$v0,.L0d9c1960
    li	$v1,6406
    beq	$a3,$v1,.L0d9c1960
    li	$a1,6409
    bne	$a3,$a1,.L0d9c1b98
    ld	$s3,560($sp)
.L0d9c1960:
    # Line 106
    b	.L0d9c1970
    # Line 105
    sw	$a0,28($sp)
.L0d9c1968:
    # Line 96
    li	$a2,4
    sw	$a2,28($sp)
.L0d9c1970:
    # Line 111
    li	$t0,5121
    beq	$a4,$t0,.L0d9c1bb4
    # Line 114
    lw	$a1,28($sp)
    # Line 111
    li	$t2,5123
    beq	$a4,$t2,.L0d9c1be4
    # Line 117
    la	$t2,__glSpanUnpackUshort
    # Line 111
    li	$t3,0x8033
    beq	$a4,$t3,.L0d9c1c4c
    # Line 122
    li	$a2,2
    # Line 111
    li	$t8,0x8034
    beq	$a4,$t8,.L0d9c1cac
    # Line 126
    li	$t9,2
    # Line 111
    li	$t9,0x8036
    beq	$a4,$t9,.L0d9c1d0c
    # Line 130
    li	$t2,4
    # Line 111
    move	$s3,$zero
.L0d9c19b0:
    # Line 135
    beq	$t1,$a3,.L0d9c19e0
    li	$at,6410
    beq	$a3,$at,.L0d9c1bfc
    li	$v0,1
    beq	$a3,$v0,.L0d9c1c60
    li	$v1,6409
    beq	$a3,$v1,.L0d9c1cc0
    li	$a0,6403
    beq	$a3,$a0,.L0d9c1d20
    li	$a1,6406
    beq	$a3,$a1,.L0d9c1d6c
    nop
.L0d9c19e0:
    # Line 155
    beqz	$a5,.L0d9c1a20
    addiu	$a1,$sp,0
    # Line 157
    lw	$a0,1276($s5)
    li	$a2,6406
    beq	$a0,$a2,.L0d9c1bc8
    # Line 159
    la	$a4,__glSpanHistogramSinkA
    # Line 157
    li	$a3,6409
    beq	$a0,$a3,.L0d9c1c2c
    li	$a4,6410
    beq	$a0,$a4,.L0d9c1c90
    # Line 167
    la	$t3,__glSpanHistogramSinkLA
    # Line 157
    li	$a5,6407
    beq	$a0,$a5,.L0d9c1cf0
    # Line 171
    la	$a4,__glSpanHistogramSinkRGB
    # Line 157
    beq	$t1,$a0,.L0d9c1d50
    # Line 175
    la	$a0,__glSpanHistogramSinkRGBA
.L0d9c1a20:
    # Line 180
    beqz	$a6,.L0d9c1a58
    nop
    # Line 183
    lw	$a0,1372($s5)
    li	$a6,6406
    beq	$a0,$a6,.L0d9c1c14
    li	$t0,6409
    beq	$a0,$t0,.L0d9c1c78
    li	$t2,6410
    beq	$a0,$t2,.L0d9c1cd8
    li	$t3,6407
    beq	$a0,$t3,.L0d9c1d38
    nop
    beq	$t1,$a0,.L0d9c1d84
    nop
.L0d9c1a58:
    # Line 201
    lw	$t9,0($s5)
    slti	$t8,$s3,3
    sll	$a1,$s0,0x4
    sd	$a7,512($sp)
    bnez	$t8,.L0d9c1ab8
    sd	$ra,584($sp)
    sd	$a1,520($sp)
    # Line 206
    ld	$a1,520($sp)
    move	$a0,$s5
    sd	$s4,592($sp)
    sd	$s6,600($sp)
    jalr	$t9
    addu	$a1,$a1,$a1
    # Line 210
    ld	$s6,520($sp)
    # Line 206
    move	$s4,$v0
    # Line 210
    bnez	$v0,.L0d9c1ad4
    # Line 207
    addu	$s6,$v0,$s6
.L0d9c1a9c:
    # Line 213
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s6,600($sp)
    ld	$s4,592($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d9c1b94
    ld	$ra,584($sp)
.L0d9c1ab8:
    sd	$s4,592($sp)
    # Line 209
    move	$a0,$s5
    jalr	$t9
    sd	$s6,600($sp)
    move	$s4,$v0
    # Line 210
    beqz	$v0,.L0d9c1a9c
    move	$s6,$zero
.L0d9c1ad4:
    # Line 218
    ld	$t8,552($sp)
    sd	$s7,576($sp)
    blez	$t8,.L0d9c1b74
    ld	$s7,512($sp)
    sd	$s8,616($sp)
    lw	$s8,504($sp)
    mult	$s8,$s0
    sd	$s1,568($sp)
    sd	$s2,608($sp)
    move	$s8,$zero
    mflo	$t9
    nop
    sd	$t9,544($sp)
    # Line 222
    move	$s0,$s4
    nop
.L0d9c1b10:
    # Line 221
    move	$a2,$s7
    # Line 222
    blez	$s3,.L0d9c1b50
    addiu	$s1,$sp,0
    move	$s2,$zero
.L0d9c1b20:
    # Line 224
    lw	$t9,360($s1)
    move	$a0,$s5
    move	$a3,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 226
    andi	$ra,$s2,0x1
    # Line 223
    addiu	$s2,$s2,1
    addiu	$s1,$s1,4
    # Line 225
    move	$a2,$s0
    # Line 226
    move	$s0,$s6
    # Line 223
    bne	$s2,$s3,.L0d9c1b20
    # Line 226
    movn	$s0,$s4,$ra
.L0d9c1b50:
    # Line 220
    ld	$v0,552($sp)
    ld	$at,544($sp)
    addiu	$s8,$s8,1
    # Line 222
    move	$s0,$s4
    # Line 220
    bne	$v0,$s8,.L0d9c1b10
    # Line 228
    addu	$s7,$at,$s7
    ld	$s2,608($sp)
    ld	$s8,616($sp)
    ld	$s1,568($sp)
.L0d9c1b74:
    # Line 231
    lw	$t9,12($s5)
    ld	$s6,600($sp)
    move	$a0,$s5
    ld	$s7,576($sp)
    jalr	$t9
    move	$a1,$s4
    ld	$s4,592($sp)
    ld	$ra,584($sp)
.L0d9c1b94:
    ld	$s3,560($sp)
.L0d9c1b98:
    # Line 232
    ld	$s0,536($sp)
    ld	$s5,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d9c1ba8:
    # Line 100
    li	$v1,2
.L0d9c1bac:
    # Line 101
    b	.L0d9c1970
    # Line 100
    sw	$v1,28($sp)
.L0d9c1bb4:
    # Line 114
    sw	$a1,504($sp)
    # Line 113
    la	$a0,__glSpanUnpackUbyte
    # Line 114
    li	$s3,1
    b	.L0d9c19b0
    # Line 113
    sw	$a0,360($sp)
.L0d9c1bc8:
    # Line 159
    la	$a2,__glSpanHistogramA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    movz	$a2,$a4,$a6
    addu	$a3,$sp,$a3
    b	.L0d9c1a20
    sw	$a2,356($a3)
.L0d9c1be4:
    # Line 118
    lw	$t0,28($sp)
    # Line 119
    li	$s3,1
    # Line 117
    sw	$t2,360($sp)
    # Line 118
    addu	$t0,$t0,$t0
    # Line 119
    b	.L0d9c19b0
    # Line 118
    sw	$t0,504($sp)
.L0d9c1bfc:
    # Line 139
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanExpandLuminanceAlphaNS
    addu	$t8,$sp,$t8
    b	.L0d9c19e0
    sw	$t3,356($t8)
.L0d9c1c14:
    # Line 185
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    # lw $t9, -27640($gp) # &__glSpanMinmaxSinkA
    addu	$at,$a1,$at
    b	.L0d9c1a58
    sw	$t9,356($at)
.L0d9c1c2c:
    # Line 163
    la	$a0,__glSpanHistogramSinkL
    la	$v0,__glSpanHistogramL
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    movz	$v0,$a0,$a6
    addu	$v1,$sp,$v1
    # Line 165
    b	.L0d9c1a20
    # Line 163
    sw	$v0,356($v1)
.L0d9c1c4c:
    # Line 122
    sw	$a2,504($sp)
    # Line 121
    la	$a1,__glSpanUnpack4444Ushort
    # Line 123
    li	$s3,1
    b	.L0d9c19b0
    # Line 121
    sw	$a1,360($sp)
.L0d9c1c60:
    # Line 142
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanExpandRedAlphaNS
    addu	$a4,$sp,$a4
    # Line 143
    b	.L0d9c19e0
    # Line 142
    sw	$a3,356($a4)
.L0d9c1c78:
    # Line 188
    addiu	$s3,$s3,1
    sll	$a6,$s3,0x2
    la	$a5,__glSpanMinmaxSinkL
    addu	$a6,$a1,$a6
    # Line 189
    b	.L0d9c1a58
    # Line 188
    sw	$a5,356($a6)
.L0d9c1c90:
    # Line 167
    la	$t0,__glSpanHistogramLA
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    movz	$t0,$t3,$a6
    addu	$t2,$sp,$t2
    # Line 169
    b	.L0d9c1a20
    # Line 167
    sw	$t0,356($t2)
.L0d9c1cac:
    # Line 126
    sw	$t9,504($sp)
    # Line 125
    la	$t8,__glSpanUnpack5551Ushort
    # Line 127
    li	$s3,1
    b	.L0d9c19b0
    # Line 125
    sw	$t8,360($sp)
.L0d9c1cc0:
    # Line 145
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    la	$at,__glSpanExpandLuminanceNS
    addu	$v0,$sp,$v0
    # Line 146
    b	.L0d9c19e0
    # Line 145
    sw	$at,356($v0)
.L0d9c1cd8:
    # Line 191
    addiu	$s3,$s3,1
    sll	$a0,$s3,0x2
    la	$v1,__glSpanMinmaxSinkLA
    addu	$a0,$a1,$a0
    # Line 192
    b	.L0d9c1a58
    # Line 191
    sw	$v1,356($a0)
.L0d9c1cf0:
    # Line 171
    la	$a2,__glSpanHistogramRGB
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    movz	$a2,$a4,$a6
    addu	$a3,$sp,$a3
    # Line 173
    b	.L0d9c1a20
    # Line 171
    sw	$a2,356($a3)
.L0d9c1d0c:
    # Line 130
    sw	$t2,504($sp)
    # Line 129
    la	$t0,__glSpanUnpack_10_10_10_2_Uint
    # Line 131
    li	$s3,1
    b	.L0d9c19b0
    # Line 129
    sw	$t0,360($sp)
.L0d9c1d20:
    # Line 148
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanExpandRedNS
    addu	$t8,$sp,$t8
    # Line 149
    b	.L0d9c19e0
    # Line 148
    sw	$t3,356($t8)
.L0d9c1d38:
    # Line 194
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    # lw $t9, -27628($gp) # &__glSpanMinmaxSinkRGB
    addu	$at,$a1,$at
    # Line 195
    b	.L0d9c1a58
    # Line 194
    sw	$t9,356($at)
.L0d9c1d50:
    # Line 175
    la	$v0,__glSpanHistogramRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    movz	$v0,$a0,$a6
    addu	$v1,$sp,$v1
    # Line 177
    b	.L0d9c1a20
    # Line 175
    sw	$v0,356($v1)
.L0d9c1d6c:
    # Line 151
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    la	$a1,__glSpanExpandAlphaNS
    addu	$a2,$sp,$a2
    # Line 152
    b	.L0d9c19e0
    # Line 151
    sw	$a1,356($a2)
.L0d9c1d84:
    # Line 197
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanMinmaxSinkRGBA
    addu	$a4,$a1,$a4
    # Line 198
    b	.L0d9c1a58
    # Line 197
    sw	$a3,356($a4)
.end doOdysseyHistogramMinMax

# Function: __glOdysseyHistogramMinMax
# Declared: Line 234 (Source lines: 237-264)
# Address: 0x0d9c1da0 - 0x0d9c1e40 (Size: 160 bytes, Frame: 16)
.globl __glOdysseyHistogramMinMax
.ent __glOdysseyHistogramMinMax
__glOdysseyHistogramMinMax:
    # Line 237
    move	$a7,$a5
    addiu	$sp,$sp,-16
    # Line 244
    lw	$a6,1792($a0)
    lui	$t1,0x1000
    # Line 237
    lui	$t2,0x13
    addiu	$t2,$t2,26608
    # Line 245
    dsll32	$t0,$a6,0x2
    sd	$gp,0($sp)
    # Line 237
    addu	$gp,$t9,$t2
    # Line 244
    and	$a6,$a6,$t1
    # Line 245
    bgez	$t0,.L0d9c1de0
    # Line 244
    sltu	$a6,$zero,$a6
    # Line 245
    beqz	$a6,.L0d9c1e20
    nop
    lbu	$t3,1280($a0)
    beqz	$t3,.L0d9c1e20
.L0d9c1de0:
    move	$t1,$zero
    # Line 247
    beqz	$a6,.L0d9c1e2c
    # Line 248
    andi	$a6,$t1,0xff
.L0d9c1dec:
    # Line 247
    lw	$t8,1248($a0)
    blez	$t8,.L0d9c1e28
    andi	$a6,$t1,0xff
    li	$t2,1
    sd	$ra,8($sp)
.L0d9c1e00:
    # Line 261
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,6400
    bal __glOdyim_GetMinmaxEXT
    andi	$a5,$t2,0xff
    ld	$ra,8($sp)
.L0d9c1e14:
    # Line 264
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c1e20:
    # Line 247
    bnez	$a6,.L0d9c1dec
    # Line 245
    li	$t1,1
.L0d9c1e28:
    # Line 248
    andi	$a6,$t1,0xff
.L0d9c1e2c:
    # Line 247
    move	$t2,$zero
    # Line 248
    bnez	$a6,.L0d9c1e00
    sd	$ra,8($sp)
    b	.L0d9c1e14
    ld	$ra,8($sp)
.end __glOdysseyHistogramMinMax

