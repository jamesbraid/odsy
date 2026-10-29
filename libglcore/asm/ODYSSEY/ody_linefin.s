# Source: ../ODYSSEY/ody_linefin.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_linefin.c
# Total Functions: 14

.text

# Function: SoftClipSecondLinesVertex
# Declared: Line 24 (Source lines: 25-35)
# Address: 0x0d9e6e90 - 0x0d9e6efc (Size: 108 bytes, Frame: 32)
.ent SoftClipSecondLinesVertex
SoftClipSecondLinesVertex:
    # Line 25
    lui	$v0,0x11
    # Line 29
    sw	$a1,28128($a0)
    # Line 25
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,5888
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 31
    lui	$at,0x1
    # lw $t9, -29772($gp) # &__glOdysseySoftClipProcessLine
    # Line 25
    move	$a2,$a1
    sd	$s8,8($sp)
    # Line 31
    ori	$at,$at,0x6db8
    # Line 25
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 31
    addu	$at,$a0,$at
    sd	$at,24($sp)
    bal __glOdysseySoftClipProcessLine
    move	$a1,$at
    # Line 34
    la	$v1,sub_0d9e0000
    # Line 35
    ld	$gp,16($sp)
    # Line 33
    ld	$a0,24($sp)
    ld	$ra,0($sp)
    sw	$a0,12744($s8)
    # Line 34
    addiu	$v1,$v1,28416
    sw	$v1,12004($s8)
    # Line 35
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipSecondLinesVertex

# Function: SoftClipFirstLinesVertex
# Declared: Line 39 (Source lines: 40-45)
# Address: 0x0d9e6f00 - 0x0d9e6f2c (Size: 44 bytes, Frame: 0)
.ent SoftClipFirstLinesVertex
SoftClipFirstLinesVertex:
    # Line 40
    lui	$a1,0x11
    addiu	$a1,$a1,5776
    # Line 43
    lui	$v1,0x1
    # Line 40
    addu	$at,$t9,$a1
    # Line 43
    ori	$v1,$v1,0x6f50
    # Line 44
    la	$v0,sub_0d9e0000
    # Line 43
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 44
    addiu	$v0,$v0,28304
    # Line 45
    jr	$ra
    # Line 44
    sw	$v0,12004($a0)
.end SoftClipFirstLinesVertex

# Function: __glOdysseySoftClipBeginLines
# Declared: Line 47 (Source lines: 48-54)
# Address: 0x0d9e6f30 - 0x0d9e6f64 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginLines
.ent __glOdysseySoftClipBeginLines
__glOdysseySoftClipBeginLines:
    # Line 51
    lui	$a2,0x1
    # Line 48
    lui	$a1,0x11
    # Line 51
    ori	$a2,$a2,0x6db8
    # Line 48
    addiu	$a1,$a1,5728
    # Line 51
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 48
    addu	$at,$t9,$a1
    # Line 53
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 52
    la	$v0,sub_0d9e0000
    # Line 53
    sw	$v1,12076($a0)
    # Line 52
    addiu	$v0,$v0,28416
    # Line 54
    jr	$ra
    # Line 52
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginLines

# Function: SoftClipLineStripVertex
# Declared: Line 59 (Source lines: 60-69)
# Address: 0x0d9e6f70 - 0x0d9e6fd0 (Size: 96 bytes, Frame: 32)
.ent SoftClipLineStripVertex
SoftClipLineStripVertex:
    # Line 63
    sw	$a1,28128($a0)
    # Line 60
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    sd	$s8,8($sp)
    addiu	$v0,$v0,5664
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 65
    # lw $t9, -29772($gp) # &__glOdysseySoftClipProcessLine
    # Line 61
    lw	$at,12748($a0)
    # Line 60
    move	$a2,$a1
    move	$s8,$a0
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 65
    bal __glOdysseySoftClipProcessLine
    move	$a1,$at
    # Line 69
    ld	$gp,16($sp)
    # Line 67
    lw	$v1,12748($s8)
    # Line 68
    ld	$a0,24($sp)
    ld	$ra,0($sp)
    sw	$a0,12748($s8)
    # Line 67
    sw	$v1,12744($s8)
    # Line 69
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipLineStripVertex

# Function: SoftClipFirstLineStripVertex
# Declared: Line 73 (Source lines: 74-81)
# Address: 0x0d9e6fd0 - 0x0d9e7010 (Size: 64 bytes, Frame: 0)
.ent SoftClipFirstLineStripVertex
SoftClipFirstLineStripVertex:
    # Line 77
    lui	$a2,0x1
    # Line 78
    ori	$a3,$a2,0x6f50
    # Line 77
    ori	$a2,$a2,0x6db8
    # Line 74
    lui	$a1,0x11
    # Line 78
    addu	$a3,$a0,$a3
    sw	$a3,12744($a0)
    # Line 74
    addiu	$a1,$a1,5568
    # Line 77
    addu	$a2,$a0,$a2
    sw	$a2,12748($a0)
    # Line 74
    addu	$at,$t9,$a1
    # Line 80
    la	$v1,__glOdysseySoftClipMatValidateV1
    # Line 79
    la	$v0,sub_0d9e0000
    # Line 80
    sw	$v1,12076($a0)
    # Line 79
    addiu	$v0,$v0,28528
    # Line 81
    jr	$ra
    # Line 79
    sw	$v0,12004($a0)
.end SoftClipFirstLineStripVertex

# Function: __glOdysseySoftClipBeginLStrip
# Declared: Line 83 (Source lines: 84-90)
# Address: 0x0d9e7010 - 0x0d9e7044 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginLStrip
.ent __glOdysseySoftClipBeginLStrip
__glOdysseySoftClipBeginLStrip:
    # Line 87
    lui	$a2,0x1
    # Line 84
    lui	$a1,0x11
    # Line 87
    ori	$a2,$a2,0x6db8
    # Line 84
    addiu	$a1,$a1,5504
    # Line 87
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 84
    addu	$at,$t9,$a1
    # Line 89
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 88
    la	$v0,sub_0d9e0000
    # Line 89
    sw	$v1,12076($a0)
    # Line 88
    addiu	$v0,$v0,28624
    # Line 90
    jr	$ra
    # Line 88
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginLStrip

# Function: SoftClipEndLineLoop
# Declared: Line 94 (Source lines: 95-105)
# Address: 0x0d9e7050 - 0x0d9e70ac (Size: 92 bytes, Frame: 32)
.ent SoftClipEndLineLoop
SoftClipEndLineLoop:
    # Line 95
    lui	$a3,0x11
    # Line 97
    lw	$a1,12748($a0)
    # Line 95
    addiu	$sp,$sp,-32
    addiu	$a3,$a3,5440
    sd	$gp,16($sp)
    addu	$gp,$t9,$a3
    # Line 102
    # lw $t9, -29772($gp) # &__glOdysseySoftClipProcessLine
    # Line 95
    sd	$s8,8($sp)
    # Line 100
    lui	$a2,0x1
    # Line 95
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 100
    ori	$a2,$a2,0x6db8
    addu	$a2,$a0,$a2
    # Line 102
    bal __glOdysseySoftClipProcessLine
    # Line 100
    sw	$a2,28128($a0)
    # Line 104
    # lw $t9, -25292($gp) # &__glEndPrim
    jal	__glEndPrim
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 105
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipEndLineLoop

# Function: SoftClipLineLoopVertex
# Declared: Line 108 (Source lines: 109-118)
# Address: 0x0d9e70b0 - 0x0d9e7110 (Size: 96 bytes, Frame: 32)
.ent SoftClipLineLoopVertex
SoftClipLineLoopVertex:
    # Line 112
    sw	$a1,28128($a0)
    # Line 109
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    sd	$s8,8($sp)
    addiu	$v0,$v0,5344
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 114
    # lw $t9, -29772($gp) # &__glOdysseySoftClipProcessLine
    # Line 110
    lw	$at,12748($a0)
    # Line 109
    move	$a2,$a1
    move	$s8,$a0
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 114
    bal __glOdysseySoftClipProcessLine
    move	$a1,$at
    # Line 118
    ld	$gp,16($sp)
    # Line 116
    lw	$v1,12748($s8)
    # Line 117
    ld	$a0,24($sp)
    ld	$ra,0($sp)
    sw	$a0,12748($s8)
    # Line 116
    sw	$v1,12744($s8)
    # Line 118
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipLineLoopVertex

# Function: SoftClipSecondLineLoopVertex
# Declared: Line 121 (Source lines: 122-135)
# Address: 0x0d9e7110 - 0x0d9e719c (Size: 140 bytes, Frame: 32)
.ent SoftClipSecondLineLoopVertex
SoftClipSecondLineLoopVertex:
    # Line 122
    lui	$a4,0x11
    addiu	$sp,$sp,-32
    addiu	$a4,$a4,5248
    sd	$gp,16($sp)
    addu	$gp,$t9,$a4
    # Line 128
    # lw $t9, -29772($gp) # &__glOdysseySoftClipProcessLine
    # Line 122
    move	$a2,$a1
    # Line 126
    sw	$a1,28128($a0)
    # Line 128
    lui	$a3,0x1
    ori	$a1,$a3,0x6db8
    # Line 122
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 128
    bal __glOdysseySoftClipProcessLine
    addu	$a1,$s8,$a1
    # Line 134
    la	$t1,__glOdysseySoftClipMatValidateVbuf0V1
    # Line 133
    la	$t0,sub_0d9e0000
    # Line 132
    la	$a7,sub_0d9e0000
    # Line 135
    ld	$gp,16($sp)
    # Line 134
    sw	$t1,12076($s8)
    # Line 133
    addiu	$t0,$t0,28752
    sw	$t0,12124($s8)
    # Line 130
    lui	$a5,0x1
    # Line 132
    addiu	$a7,$a7,28848
    sw	$a7,12004($s8)
    # Line 131
    ori	$a6,$a5,0x70e8
    ld	$ra,0($sp)
    # Line 130
    ori	$a5,$a5,0x6f50
    # Line 131
    addu	$a6,$s8,$a6
    sw	$a6,12744($s8)
    # Line 130
    addu	$a5,$s8,$a5
    sw	$a5,12748($s8)
    # Line 135
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end SoftClipSecondLineLoopVertex

# Function: SoftClipFirstLineLoopVertex
# Declared: Line 139 (Source lines: 140-145)
# Address: 0x0d9e71a0 - 0x0d9e71cc (Size: 44 bytes, Frame: 0)
.ent SoftClipFirstLineLoopVertex
SoftClipFirstLineLoopVertex:
    # Line 140
    lui	$a1,0x11
    addiu	$a1,$a1,5104
    # Line 143
    lui	$v1,0x1
    # Line 140
    addu	$at,$t9,$a1
    # Line 143
    ori	$v1,$v1,0x6f50
    # Line 144
    la	$v0,sub_0d9e0000
    # Line 143
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 144
    addiu	$v0,$v0,28944
    # Line 145
    jr	$ra
    # Line 144
    sw	$v0,12004($a0)
.end SoftClipFirstLineLoopVertex

# Function: __glOdysseySoftClipBeginLLoop
# Declared: Line 147 (Source lines: 148-154)
# Address: 0x0d9e71d0 - 0x0d9e7204 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginLLoop
.ent __glOdysseySoftClipBeginLLoop
__glOdysseySoftClipBeginLLoop:
    # Line 151
    lui	$a2,0x1
    # Line 148
    lui	$a1,0x11
    # Line 151
    ori	$a2,$a2,0x6db8
    # Line 148
    addiu	$a1,$a1,5056
    # Line 151
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 148
    addu	$at,$t9,$a1
    # Line 153
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 152
    la	$v0,sub_0d9e0000
    # Line 153
    sw	$v1,12076($a0)
    # Line 152
    addiu	$v0,$v0,29088
    # Line 154
    jr	$ra
    # Line 152
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginLLoop

# Function: SoftClipSecondLineLoopVertexPartial
# Declared: Line 160 (Source lines: 161-169)
# Address: 0x0d9e7210 - 0x0d9e725c (Size: 76 bytes, Frame: 0)
.ent SoftClipSecondLineLoopVertexPartial
SoftClipSecondLineLoopVertexPartial:
    # Line 164
    lui	$a3,0x1
    # Line 165
    ori	$a4,$a3,0x70e8
    # Line 164
    ori	$a3,$a3,0x6f50
    # Line 161
    lui	$a2,0x11
    # Line 165
    addu	$a4,$a0,$a4
    sw	$a4,12744($a0)
    # Line 161
    addiu	$a2,$a2,4992
    # Line 164
    addu	$a3,$a0,$a3
    sw	$a3,12748($a0)
    # Line 161
    addu	$at,$t9,$a2
    # Line 168
    la	$a1,__glOdysseySoftClipMatValidateVbuf0V1
    sw	$a1,12076($a0)
    # Line 167
    la	$v1,sub_0d9e0000
    # Line 166
    la	$v0,sub_0d9e0000
    # Line 167
    addiu	$v1,$v1,28752
    sw	$v1,12124($a0)
    # Line 166
    addiu	$v0,$v0,28848
    # Line 169
    jr	$ra
    # Line 166
    sw	$v0,12004($a0)
.end SoftClipSecondLineLoopVertexPartial

# Function: SoftClipFirstLineLoopVertexPartial
# Declared: Line 173 (Source lines: 174-179)
# Address: 0x0d9e7260 - 0x0d9e728c (Size: 44 bytes, Frame: 0)
.ent SoftClipFirstLineLoopVertexPartial
SoftClipFirstLineLoopVertexPartial:
    # Line 174
    lui	$a1,0x11
    addiu	$a1,$a1,4912
    # Line 177
    lui	$v1,0x1
    # Line 174
    addu	$at,$t9,$a1
    # Line 177
    ori	$v1,$v1,0x6f50
    # Line 178
    la	$v0,sub_0d9e0000
    # Line 177
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 178
    addiu	$v0,$v0,29200
    # Line 179
    jr	$ra
    # Line 178
    sw	$v0,12004($a0)
.end SoftClipFirstLineLoopVertexPartial

# Function: __glOdysseySoftClipBeginLLoopPartial
# Declared: Line 185 (Source lines: 186-192)
# Address: 0x0d9e7290 - 0x0d9e72c4 (Size: 52 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginLLoopPartial
.ent __glOdysseySoftClipBeginLLoopPartial
__glOdysseySoftClipBeginLLoopPartial:
    # Line 189
    lui	$a2,0x1
    # Line 186
    lui	$a1,0x11
    # Line 189
    ori	$a2,$a2,0x6db8
    # Line 186
    addiu	$a1,$a1,4864
    # Line 189
    addu	$a2,$a0,$a2
    sw	$a2,12744($a0)
    # Line 186
    addu	$at,$t9,$a1
    # Line 191
    la	$v1,__glOdysseySoftClipMatValidateVbuf0N
    # Line 190
    la	$v0,sub_0d9e0000
    # Line 191
    sw	$v1,12076($a0)
    # Line 190
    addiu	$v0,$v0,29280
    # Line 192
    jr	$ra
    # Line 190
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginLLoopPartial

