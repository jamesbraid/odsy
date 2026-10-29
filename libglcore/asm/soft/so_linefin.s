# Source: ../soft/so_linefin.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linefin.c
# Total Functions: 9

.text

# Function: __glFirstLinesVertex
# Declared: Line 35 (Source lines: 37-39)
# Address: 0x0da4e050 - 0x0da4e064 (Size: 20 bytes, Frame: 0)
.globl __glFirstLinesVertex
.ent __glFirstLinesVertex
__glFirstLinesVertex:
    # Line 37
    addiu	$v0,$a1,192
    sw	$v0,12744($a0)
    # Line 38
    lw	$at,12020($a0)
    # Line 39
    jr	$ra
    # Line 38
    sw	$at,12004($a0)
.end __glFirstLinesVertex

# Function: __glBeginLines
# Declared: Line 41 (Source lines: 42-46)
# Address: 0x0da4e070 - 0x0da4e098 (Size: 40 bytes, Frame: 0)
.globl __glBeginLines
.ent __glBeginLines
__glBeginLines:
    # Line 43
    addiu	$a1,$a0,12768
    sw	$a1,12744($a0)
    # Line 42
    lui	$v1,0xb
    # Line 44
    lw	$a1,12016($a0)
    # Line 42
    addiu	$v1,$v1,-23264
    # Line 44
    sw	$a1,12004($a0)
    # Line 42
    addu	$at,$t9,$v1
    # Line 45
    la	$v0,__glMatValidateVbuf0N
    # Line 46
    jr	$ra
    # Line 45
    sw	$v0,12076($a0)
.end __glBeginLines

# Function: __glOtherLStripVertex
# Declared: Line 58 (Source lines: 59-87)
# Address: 0x0da4e0a0 - 0x0da4e14c (Size: 172 bytes, Frame: 48)
.globl __glOtherLStripVertex
.ent __glOtherLStripVertex
__glOtherLStripVertex:
    # Line 60
    lw	$a6,12748($a0)
    # Line 63
    sw	$a1,12748($a0)
    # Line 62
    sw	$a6,12744($a0)
    # Line 63
    lw	$a4,4($a1)
    lw	$a5,4($a6)
    # Line 59
    addiu	$sp,$sp,-48
    lui	$v0,0xb
    addiu	$v0,$v0,-23312
    # Line 63
    or	$at,$a4,$a5
    # Line 59
    move	$a2,$a1
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    sd	$ra,32($sp)
    # Line 63
    beqz	$at,.L0da4e104
    and	$v1,$a4,$a5
    beqz	$v1,.L0da4e0f4
    # Line 78
    nop	# was lw $t9, -26092($gp) # &__glClipLine
    ld	$ra,32($sp)
.L0da4e0e8:
    # Line 87
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4e0f4:
    # Line 78
    bal __glClipLine
    move	$a1,$a6
    b	.L0da4e0e8
    ld	$ra,32($sp)
.L0da4e104:
    sd	$a1,0($sp)
    # Line 83
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a2,8($sp)
    sd	$a6,16($sp)
    move	$a0,$a2
    jal	__glClipLine
    lw	$a2,28136($a2)
    # Line 86
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12528($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    b	.L0da4e0e8
    ld	$ra,32($sp)
.end __glOtherLStripVertex

# Function: __glSecondLStripVertex
# Declared: Line 108 (Source lines: 109-139)
# Address: 0x0da4e150 - 0x0da4e20c (Size: 188 bytes, Frame: 48)
.globl __glSecondLStripVertex
.ent __glSecondLStripVertex
__glSecondLStripVertex:
    # Line 110
    lw	$a6,12748($a0)
    # Line 113
    sw	$a1,12748($a0)
    # Line 114
    lw	$a2,12012($a0)
    sw	$a2,12004($a0)
    # Line 109
    lui	$v1,0xb
    # Line 112
    sw	$a6,12744($a0)
    # Line 109
    addiu	$sp,$sp,-48
    addiu	$v1,$v1,-23488
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 115
    la	$v0,__glNop
    sw	$v0,12076($a0)
    lw	$a5,4($a6)
    lw	$a4,4($a1)
    or	$at,$a4,$a5
    # Line 109
    move	$a2,$a1
    # Line 115
    beqz	$at,.L0da4e1c4
    sd	$ra,32($sp)
    and	$a1,$a4,$a5
    beqz	$a1,.L0da4e1b0
    ld	$ra,32($sp)
.L0da4e1a4:
    # Line 139
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4e1b0:
    # Line 130
    # lw $t9, -26092($gp) # &__glClipLine
    bal __glClipLine
    move	$a1,$a6
    b	.L0da4e1a4
    ld	$ra,32($sp)
.L0da4e1c4:
    sd	$a1,0($sp)
    # Line 135
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a2,8($sp)
    sd	$a6,16($sp)
    move	$a0,$a2
    jal	__glClipLine
    lw	$a2,28136($a2)
    # Line 138
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12528($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    b	.L0da4e1a4
    ld	$ra,32($sp)
.end __glSecondLStripVertex

# Function: __glFirstLStripVertex
# Declared: Line 142 (Source lines: 143-155)
# Address: 0x0da4e210 - 0x0da4e280 (Size: 112 bytes, Frame: 16)
.globl __glFirstLStripVertex
.ent __glFirstLStripVertex
__glFirstLStripVertex:
    # Line 145
    lw	$v0,1792($a0)
    # Line 144
    addiu	$v1,$a1,192
    # Line 145
    sw	$a1,12748($a0)
    # Line 143
    lui	$at,0xb
    # Line 145
    andi	$v0,$v0,0x80
    # Line 144
    sw	$v1,12744($a0)
    # Line 143
    addiu	$sp,$sp,-16
    addiu	$at,$at,-23680
    sd	$gp,0($sp)
    # Line 145
    beqz	$v0,.L0da4e274
    # Line 143
    addu	$gp,$t9,$at
    # Line 147
    la	$v1,__glSecondLStripVertex
    sw	$v1,12004($a0)
.L0da4e244:
    # Line 150
    lw	$a2,28136($a0)
    sd	$ra,8($sp)
    la	$a3,__glMatValidateV1
    beqz	$a2,.L0da4e264
    sw	$a3,12076($a0)
    # Line 154
    lw	$t9,12($a1)
    jalr	$t9
    nop
.L0da4e264:
    ld	$ra,8($sp)
    # Line 155
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da4e274:
    # Line 149
    lw	$a4,12012($a0)
    b	.L0da4e244
    sw	$a4,12004($a0)
.end __glFirstLStripVertex

# Function: __glBeginLStrip
# Declared: Line 157 (Source lines: 158-164)
# Address: 0x0da4e280 - 0x0da4e2ac (Size: 44 bytes, Frame: 0)
.globl __glBeginLStrip
.ent __glBeginLStrip
__glBeginLStrip:
    # Line 158
    lui	$a1,0xb
    # Line 161
    addiu	$a2,$a0,12768
    sw	$a2,12744($a0)
    # Line 158
    addiu	$a1,$a1,-23792
    # Line 159
    sb	$zero,29904($a0)
    # Line 158
    addu	$at,$t9,$a1
    # Line 162
    la	$v0,__glFirstLStripVertex
    # Line 163
    la	$v1,__glMatValidateVbuf0N
    sw	$v1,12076($a0)
    # Line 164
    jr	$ra
    # Line 162
    sw	$v0,12004($a0)
.end __glBeginLStrip

# Function: FirstLLoopVertex
# Declared: Line 204 (Source lines: 205-208)
# Address: 0x0da4e2b0 - 0x0da4e2d0 (Size: 32 bytes, Frame: 0)
.ent FirstLLoopVertex
FirstLLoopVertex:
    # Line 205
    lui	$v1,0xb
    addiu	$v1,$v1,-23840
    # Line 206
    addiu	$a1,$a1,192
    sw	$a1,12744($a0)
    # Line 205
    addu	$at,$t9,$v1
    # Line 207
    la	$v0,__glSecondLLoopVertex
    # Line 208
    jr	$ra
    # Line 207
    sw	$v0,12004($a0)
.end FirstLLoopVertex

# Function: __glEndLLoop
# Declared: Line 210 (Source lines: 211-226)
# Address: 0x0da4e2d0 - 0x0da4e340 (Size: 112 bytes, Frame: 32)
.globl __glEndLLoop
.ent __glEndLLoop
__glEndLLoop:
    # Line 211
    lui	$v0,0xb
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-23872
    sd	$gp,0($sp)
    addu	$gp,$t9,$v0
    # Line 216
    la	$at,sub_0da50000
    lw	$a2,12004($a0)
    addiu	$at,$at,-7504
    # Line 211
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 216
    beq	$a2,$at,.L0da4e304
    la	$v1,__glSecondLLoopVertex
    bne	$a2,$v1,.L0da4e324
.L0da4e304:
    # Line 225
    la	$a1,__glEndPrim
    # Line 224
    la	$a0,__glNop
    # Line 226
    ld	$gp,0($sp)
    # Line 225
    sw	$a1,12124($s0)
    # Line 224
    sw	$a0,12004($s0)
    # Line 226
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4e324:
    # Line 222
    lw	$t9,12540($s0)
    sd	$ra,16($sp)
    addiu	$a2,$s0,12768
    jalr	$t9
    lw	$a1,12748($s0)
    b	.L0da4e304
    ld	$ra,16($sp)
.end __glEndLLoop

# Function: __glBeginLLoop
# Declared: Line 228 (Source lines: 229-236)
# Address: 0x0da4e340 - 0x0da4e378 (Size: 56 bytes, Frame: 0)
.globl __glBeginLLoop
.ent __glBeginLLoop
__glBeginLLoop:
    # Line 229
    lui	$a2,0xb
    # Line 232
    addiu	$a3,$a0,12768
    sw	$a3,12744($a0)
    # Line 229
    addiu	$a2,$a2,-23984
    # Line 230
    sb	$zero,29904($a0)
    # Line 229
    addu	$at,$t9,$a2
    # Line 234
    la	$v1,__glEndLLoop
    # Line 235
    la	$a1,__glMatValidateVbuf0N
    sw	$a1,12076($a0)
    # Line 233
    la	$v0,sub_0da50000
    # Line 234
    sw	$v1,12124($a0)
    # Line 233
    addiu	$v0,$v0,-7504
    # Line 236
    jr	$ra
    # Line 233
    sw	$v0,12004($a0)
.end __glBeginLLoop

