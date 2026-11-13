# Source: ../soft/so_vertarray.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertarray.c
# Total Functions: 35

.text

# Function: __glInitVertexArrayState
# Declared: Line 31 (Source lines: 32-62)
# Address: 0x0da9a0b0 - 0x0da9a138 (Size: 136 bytes, Frame: 0)
.globl __glInitVertexArrayState
.ent __glInitVertexArrayState
__glInitVertexArrayState:
    # Line 58
    li	$a4,1
    sw	$a4,5420($a0)
    # Line 57
    sw	$zero,5412($a0)
    # Line 56
    sw	$zero,5408($a0)
    # Line 55
    sw	$zero,5404($a0)
    # Line 38
    li	$a3,5126
    # Line 53
    sw	$a3,5380($a0)
    # Line 51
    sw	$a3,5356($a0)
    # Line 48
    sw	$a3,5200($a0)
    # Line 37
    li	$a2,4
    # Line 47
    sw	$a2,5196($a0)
    # Line 45
    sw	$a3,5172($a0)
    # Line 43
    sw	$a3,5148($a0)
    # Line 42
    sw	$a2,5144($a0)
    # Line 40
    sw	$a3,5120($a0)
    # Line 38
    sw	$a3,5096($a0)
    # Line 37
    sw	$a2,5092($a0)
    # Line 60
    lui	$a1,0x7fff
    # Line 32
    lui	$v1,0x6
    # Line 60
    ori	$a1,$a1,0xffff
    # Line 61
    sw	$a1,5428($a0)
    # Line 32
    addiu	$v1,$v1,-6944
    # Line 60
    sw	$a1,5424($a0)
    # Line 32
    addu	$at,$t9,$v1
    la	$v0,__glNop
    # Line 52
    sw	$v0,5396($a0)
    # Line 50
    sw	$v0,5372($a0)
    # Line 49
    sw	$v0,5236($a0)
    # Line 46
    sw	$v0,5216($a0)
    # Line 44
    sw	$v0,5188($a0)
    # Line 41
    sw	$v0,5164($a0)
    # Line 39
    sw	$v0,5136($a0)
    # Line 62
    jr	$ra
    # Line 36
    sw	$v0,5112($a0)
.end __glInitVertexArrayState

# Function: __glim_ArrayElementEXT
# Declared: Line 64 (Source lines: 65-112)
# Address: 0x0da9a140 - 0x0da9a3a4 (Size: 612 bytes, Frame: 192)
.globl __glim_ArrayElementEXT
.ent __glim_ArrayElementEXT
__glim_ArrayElementEXT:
    # Line 65
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    sd	$s1,24($sp)
    sd	$s0,16($sp)
    # Line 66
    lw	$s0,4112($zero)
    # Line 65
    sd	$s2,32($sp)
    # Line 67
    lw	$s2,5416($s0)
    # Line 65
    sd	$s3,0($sp)
    lui	$v0,0x6
    # Line 68
    lw	$s3,5408($s0)
    # Line 69
    andi	$at,$s2,0x1
    # Line 65
    move	$s1,$a0
    addiu	$v0,$v0,-7088
    # Line 69
    lw	$v1,5412($s0)
    # Line 65
    addu	$gp,$t9,$v0
    # Line 69
    beqz	$at,.L0da9a1a4
    sd	$v1,8($sp)
    # Line 72
    lw	$a2,5124($s0)
    mult	$a2,$a0
    lw	$t9,5136($s0)
    lw	$a0,5116($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da9a1a4:
    andi	$a3,$s2,0x2
    beqz	$a3,.L0da9a1cc
    nop
    # Line 75
    lw	$a2,5152($s0)
    mult	$a2,$s1
    lw	$t9,5164($s0)
    lw	$a0,5140($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da9a1cc:
    lw	$a3,3612($s0)
    li	$a4,1
    beq	$a3,$a4,.L0da9a374
    # Line 80
    andi	$a5,$s3,0x1
    beqz	$a5,.L0da9a208
    # Line 85
    andi	$a4,$s3,0x2
    lw	$a3,5252($s0)
    mult	$a3,$s1
    lw	$t9,5264($s0)
    lw	$a1,5240($s0)
    li	$a0,0x83c7
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x2
.L0da9a208:
    beqz	$a4,.L0da9a234
    # Line 88
    andi	$a4,$s3,0x4
    lw	$a3,5280($s0)
    mult	$a3,$s1
    lw	$t9,5292($s0)
    lw	$a1,5268($s0)
    li	$a0,0x83c8
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x4
.L0da9a234:
    beqz	$a4,.L0da9a260
    # Line 91
    andi	$a4,$s3,0x8
    lw	$a3,5308($s0)
    mult	$a3,$s1
    lw	$t9,5320($s0)
    lw	$a1,5296($s0)
    li	$a0,0x83c9
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x8
.L0da9a260:
    beqz	$a4,.L0da9a28c
    # Line 94
    andi	$a4,$s2,0x8
    lw	$a3,5336($s0)
    mult	$a3,$s1
    lw	$t9,5348($s0)
    lw	$a1,5324($s0)
    li	$a0,0x83ca
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s2,0x8
.L0da9a28c:
    beqz	$a4,.L0da9a2b4
    # Line 98
    andi	$a3,$s2,0x10
    lw	$a2,5176($s0)
    mult	$a2,$s1
    lw	$t9,5188($s0)
    lw	$a0,5168($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    andi	$a3,$s2,0x10
.L0da9a2b4:
    beqz	$a3,.L0da9a2d8
    ld	$s3,0($sp)
    # Line 101
    lw	$a2,5224($s0)
    mult	$a2,$s1
    lw	$t9,5236($s0)
    lw	$a0,5220($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da9a2d8:
    ld	$a3,8($sp)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da9a308
    # Line 104
    ld	$a3,8($sp)
    lw	$a2,5360($s0)
    mult	$a2,$s1
    lw	$t9,5372($s0)
    lw	$a0,5352($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$a3,8($sp)
.L0da9a308:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0da9a334
    # Line 107
    andi	$a3,$s2,0x20
    lw	$a2,5384($s0)
    mult	$a2,$s1
    lw	$t9,5396($s0)
    lw	$a0,5376($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    andi	$a3,$s2,0x20
.L0da9a334:
    beqz	$a3,.L0da9a358
    nop
    # Line 110
    lw	$a2,5100($s0)
    mult	$a2,$s1
    lw	$t9,5112($s0)
    lw	$a0,5088($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da9a358:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 112
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9a374:
    # Line 75
    andi	$a3,$s2,0x4
    beqz	$a3,.L0da9a28c
    # Line 94
    andi	$a4,$s2,0x8
    # Line 80
    lw	$a2,5204($s0)
    mult	$a2,$s1
    lw	$t9,5216($s0)
    lw	$a0,5192($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    b	.L0da9a28c
    # Line 94
    andi	$a4,$s2,0x8
.end __glim_ArrayElementEXT

# Function: __glim_DrawArraysEXT
# Declared: Line 114 (Source lines: 117-142)
# Address: 0x0da9a3b0 - 0x0da9a4f8 (Size: 328 bytes, Frame: 48)
.globl __glim_DrawArraysEXT
.ent __glim_DrawArraysEXT
__glim_DrawArraysEXT:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 119
    lw	$s1,4112($zero)
    # Line 117
    sd	$s3,0($sp)
    # Line 124
    sltiu	$v1,$a0,10
    # Line 117
    move	$s3,$a2
    # Line 119
    lw	$at,4120($zero)
    # Line 117
    sd	$s0,8($sp)
    # Line 119
    li	$a4,1
    # Line 117
    lui	$v0,0x6
    move	$s0,$a1
    sd	$ra,40($sp)
    addiu	$v0,$v0,-7712
    sd	$gp,24($sp)
    # Line 119
    beq	$at,$a4,.L0da9a4e4
    # Line 117
    addu	$gp,$t9,$v0
    # Line 122
    bltz	$a1,.L0da9a4ac
    # Line 123
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 122
    bltz	$a2,.L0da9a4ac
    # Line 123
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 124
    beqz	$v1,.L0da9a498
    # Line 128
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 132
    lw	$a1,3612($s1)
    bne	$a1,$a4,.L0da9a420
    nop
    lw	$a2,5412($s1)
    beqz	$a2,.L0da9a4bc
    nop
.L0da9a420:
    # Line 137
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jal	__glSetError
    sd	$s2,32($sp)
    # Line 138
    addu	$s2,$s0,$s3
    slt	$ra,$s0,$s2
    beqz	$ra,.L0da9a468
    nop
    nop
    nop
    nop
    # Line 139
    lw	$t9,6132($s1)
.L0da9a450:
    lw	$t9,792($t9)
    jalr	$t9
    move	$a0,$s0
    # Line 138
    addiu	$s0,$s0,1
    bnel	$s2,$s0,.L0da9a450
    # Line 139
    lw	$t9,6132($s1)
.L0da9a468:
    # Line 140
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
.L0da9a478:
    ld	$s3,0($sp)
    ld	$s2,32($sp)
    ld	$ra,40($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 142
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9a498:
    # Line 128
    jalr	$t9
    li	$a0,1280
    b	.L0da9a478
    sd	$s2,32($sp)
    # Line 123
    # lw $t9, -26792($gp) # &__glSetError
.L0da9a4ac:
    jal	__glSetError
    li	$a0,1281
    b	.L0da9a478
    sd	$s2,32($sp)
.L0da9a4bc:
    # Line 134
    lw	$ra,5416($s1)
    lw	$t9,12716($s1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s3
    b	.L0da9a478
    sd	$s2,32($sp)
.L0da9a4e4:
    # Line 119
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9a478
    sd	$s2,32($sp)
.end __glim_DrawArraysEXT

# Function: glMultiTexCoord1svSGIS
# Declared: Line 281 (Source lines: 281-283)
# Address: 0x0da9a500 - 0x0da9a534 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1svSGIS
glMultiTexCoord1svSGIS:
    # Line 281
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8048
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 282
    # lw $t9, -15208($gp) # &glTexCoord1sv
    # Line 281
    sd	$ra,0($sp)
    # Line 282
    jal	glTexCoord1sv
    # Line 281
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 283
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1svSGIS

# Function: glMultiTexCoord2svSGIS
# Declared: Line 285 (Source lines: 285-287)
# Address: 0x0da9a540 - 0x0da9a574 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2svSGIS
glMultiTexCoord2svSGIS:
    # Line 285
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8112
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 286
    # lw $t9, -15176($gp) # &glTexCoord2sv
    # Line 285
    sd	$ra,0($sp)
    # Line 286
    jal	glTexCoord2sv
    # Line 285
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 287
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2svSGIS

# Function: glMultiTexCoord3svSGIS
# Declared: Line 289 (Source lines: 289-291)
# Address: 0x0da9a580 - 0x0da9a5b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3svSGIS
glMultiTexCoord3svSGIS:
    # Line 289
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8176
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 290
    # lw $t9, -15144($gp) # &glTexCoord3sv
    # Line 289
    sd	$ra,0($sp)
    # Line 290
    jal	glTexCoord3sv
    # Line 289
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 291
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3svSGIS

# Function: glMultiTexCoord4svSGIS
# Declared: Line 293 (Source lines: 293-295)
# Address: 0x0da9a5c0 - 0x0da9a5f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4svSGIS
glMultiTexCoord4svSGIS:
    # Line 293
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8240
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 294
    # lw $t9, -15112($gp) # &glTexCoord4sv
    # Line 293
    sd	$ra,0($sp)
    # Line 294
    jal	glTexCoord4sv
    # Line 293
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 295
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4svSGIS

# Function: glMultiTexCoord1ivSGIS
# Declared: Line 297 (Source lines: 297-299)
# Address: 0x0da9a600 - 0x0da9a634 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1ivSGIS
glMultiTexCoord1ivSGIS:
    # Line 297
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8304
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 298
    # lw $t9, -15216($gp) # &glTexCoord1iv
    # Line 297
    sd	$ra,0($sp)
    # Line 298
    jal	glTexCoord1iv
    # Line 297
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 299
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1ivSGIS

# Function: glMultiTexCoord2ivSGIS
# Declared: Line 301 (Source lines: 301-303)
# Address: 0x0da9a640 - 0x0da9a674 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2ivSGIS
glMultiTexCoord2ivSGIS:
    # Line 301
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8368
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 302
    # lw $t9, -15184($gp) # &glTexCoord2iv
    # Line 301
    sd	$ra,0($sp)
    # Line 302
    jal	glTexCoord2iv
    # Line 301
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 303
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2ivSGIS

# Function: glMultiTexCoord3ivSGIS
# Declared: Line 305 (Source lines: 305-307)
# Address: 0x0da9a680 - 0x0da9a6b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3ivSGIS
glMultiTexCoord3ivSGIS:
    # Line 305
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8432
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 306
    # lw $t9, -15152($gp) # &glTexCoord3iv
    # Line 305
    sd	$ra,0($sp)
    # Line 306
    jal	glTexCoord3iv
    # Line 305
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 307
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3ivSGIS

# Function: glMultiTexCoord4ivSGIS
# Declared: Line 309 (Source lines: 309-311)
# Address: 0x0da9a6c0 - 0x0da9a6f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4ivSGIS
glMultiTexCoord4ivSGIS:
    # Line 309
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8496
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 310
    # lw $t9, -15120($gp) # &glTexCoord4iv
    # Line 309
    sd	$ra,0($sp)
    # Line 310
    jal	glTexCoord4iv
    # Line 309
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 311
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4ivSGIS

# Function: glMultiTexCoord1fvSGIS
# Declared: Line 313 (Source lines: 313-315)
# Address: 0x0da9a700 - 0x0da9a734 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1fvSGIS
glMultiTexCoord1fvSGIS:
    # Line 313
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8560
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 314
    # lw $t9, -15224($gp) # &glTexCoord1fv
    # Line 313
    sd	$ra,0($sp)
    # Line 314
    jal	glTexCoord1fv
    # Line 313
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 315
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1fvSGIS

# Function: glMultiTexCoord2fvSGIS
# Declared: Line 317 (Source lines: 317-319)
# Address: 0x0da9a740 - 0x0da9a774 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2fvSGIS
glMultiTexCoord2fvSGIS:
    # Line 317
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8624
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 318
    # lw $t9, -15192($gp) # &glTexCoord2fv
    # Line 317
    sd	$ra,0($sp)
    # Line 318
    jal	glTexCoord2fv
    # Line 317
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 319
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2fvSGIS

# Function: glMultiTexCoord3fvSGIS
# Declared: Line 321 (Source lines: 321-323)
# Address: 0x0da9a780 - 0x0da9a7b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3fvSGIS
glMultiTexCoord3fvSGIS:
    # Line 321
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8688
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 322
    # lw $t9, -15160($gp) # &glTexCoord3fv
    # Line 321
    sd	$ra,0($sp)
    # Line 322
    jal	glTexCoord3fv
    # Line 321
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 323
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3fvSGIS

# Function: glMultiTexCoord4fvSGIS
# Declared: Line 325 (Source lines: 325-327)
# Address: 0x0da9a7c0 - 0x0da9a7f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4fvSGIS
glMultiTexCoord4fvSGIS:
    # Line 325
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8752
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 326
    # lw $t9, -15128($gp) # &glTexCoord4fv
    # Line 325
    sd	$ra,0($sp)
    # Line 326
    jal	glTexCoord4fv
    # Line 325
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 327
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4fvSGIS

# Function: glMultiTexCoord1dvSGIS
# Declared: Line 329 (Source lines: 329-331)
# Address: 0x0da9a800 - 0x0da9a834 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1dvSGIS
glMultiTexCoord1dvSGIS:
    # Line 329
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8816
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 330
    # lw $t9, -15232($gp) # &glTexCoord1dv
    # Line 329
    sd	$ra,0($sp)
    # Line 330
    jal	glTexCoord1dv
    # Line 329
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 331
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1dvSGIS

# Function: glMultiTexCoord2dvSGIS
# Declared: Line 333 (Source lines: 333-335)
# Address: 0x0da9a840 - 0x0da9a874 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2dvSGIS
glMultiTexCoord2dvSGIS:
    # Line 333
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8880
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 334
    # lw $t9, -15200($gp) # &glTexCoord2dv
    # Line 333
    sd	$ra,0($sp)
    # Line 334
    jal	glTexCoord2dv
    # Line 333
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 335
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2dvSGIS

# Function: glMultiTexCoord3dvSGIS
# Declared: Line 337 (Source lines: 337-339)
# Address: 0x0da9a880 - 0x0da9a8b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3dvSGIS
glMultiTexCoord3dvSGIS:
    # Line 337
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8944
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 338
    # lw $t9, -15168($gp) # &glTexCoord3dv
    # Line 337
    sd	$ra,0($sp)
    # Line 338
    jal	glTexCoord3dv
    # Line 337
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 339
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3dvSGIS

# Function: glMultiTexCoord4dvSGIS
# Declared: Line 341 (Source lines: 341-343)
# Address: 0x0da9a8c0 - 0x0da9a8f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4dvSGIS
glMultiTexCoord4dvSGIS:
    # Line 341
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9008
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 342
    # lw $t9, -15136($gp) # &glTexCoord4dv
    # Line 341
    sd	$ra,0($sp)
    # Line 342
    jal	glTexCoord4dv
    # Line 341
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 343
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4dvSGIS

# Function: __glim_VertexPointerEXT
# Declared: Line 431 (Source lines: 436-469)
# Address: 0x0da9a900 - 0x0da9aa58 (Size: 344 bytes, Frame: 16)
.globl __glim_VertexPointerEXT
.ent __glim_VertexPointerEXT
__glim_VertexPointerEXT:
    # Line 437
    lw	$a6,4112($zero)
    # Line 436
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-9072
    sd	$gp,0($sp)
    # Line 439
    bltz	$a2,.L0da9a9e4
    # Line 436
    addu	$gp,$t9,$at
    # Line 439
    bltz	$a3,.L0da9a9e4
    slti	$v0,$a0,2
    bnez	$v0,.L0da9a9e4
    slti	$v1,$a0,5
    beqz	$v1,.L0da9a9e4
    # Line 444
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0da9aa04
    # Line 446
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 444
    sltiu	$a7,$a1,5131
    beqz	$a7,.L0da9aa00
    # Line 450
    lw	$t3,-13556($gp)
    sll	$t0,$a1,0x2
    sll	$t2,$a0,0x2
    addu	$t0,$t0,$a1
    lui	$t1,0xfffe
    sll	$t8,$t0,0x2
    addu	$t2,$t1,$t2
    addu	$t3,$t3,$t8
    # Line 461
    la	$a7,sub_0daf0000
    # Line 450
    addu	$t2,$t2,$t3
    lw	$t2,28672($t2)
    # Line 461
    addiu	$a7,$a7,-9728
    # Line 465
    li	$t3,-256
    # Line 450
    beqz	$t2,.L0da9aa3c
    sw	$t2,5112($a6)
    ld	$ra,8($sp)
    # Line 460
    sw	$a1,5096($a6)
    # Line 459
    sw	$a0,5092($a6)
    # Line 460
    beqz	$a2,.L0da9aa1c
    # Line 458
    sw	$a4,5088($a6)
    # Line 461
    move	$a4,$a2
.L0da9a99c:
    # Line 464
    sw	$a3,5108($a6)
    # Line 463
    sw	$a2,5104($a6)
    # Line 465
    sll	$t1,$a1,0x2
    lw	$t2,5400($a6)
    addu	$t1,$a7,$t1
    lw	$t1,-18912($t1)
    # Line 461
    sw	$a4,5100($a6)
    # Line 465
    sll	$t0,$a0,0x4
    and	$t2,$t2,$t3
    # Line 469
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 465
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 469
    jr	$ra
    # Line 465
    sw	$t0,5400($a6)
.L0da9a9d8:
    # Line 469
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9a9e4:
    # Line 441
    # lw $t9, -26792($gp) # &__glSetError
    # Line 440
    la	$t2,__glNop
    # Line 441
    li	$a0,1281
    jal	__glSetError
    # Line 440
    sw	$t2,5112($a6)
    b	.L0da9a9d8
    ld	$ra,8($sp)
.L0da9aa00:
    # Line 446
    # lw $t9, -26792($gp) # &__glSetError
.L0da9aa04:
    # Line 445
    la	$t3,__glNop
    # Line 446
    li	$a0,1280
    jal	__glSetError
    # Line 445
    sw	$t3,5112($a6)
    b	.L0da9a9d8
    ld	$ra,8($sp)
.L0da9aa1c:
    # Line 461
    la	$a7,sub_0daf0000
    addu	$a4,$a0,$t0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,-9728
    addu	$a4,$a7,$a4
    addu	$a4,$t1,$a4
    b	.L0da9a99c
    lw	$a4,28672($a4)
.L0da9aa3c:
    # Line 453
    # lw $t9, -26792($gp) # &__glSetError
    # Line 452
    la	$t0,__glNop
    # Line 453
    li	$a0,1280
    jal	__glSetError
    # Line 452
    sw	$t0,5112($a6)
    b	.L0da9a9d8
    ld	$ra,8($sp)
.end __glim_VertexPointerEXT

# Function: __glim_NormalPointerEXT
# Declared: Line 471 (Source lines: 475-507)
# Address: 0x0da9aa60 - 0x0da9ab8c (Size: 300 bytes, Frame: 16)
.globl __glim_NormalPointerEXT
.ent __glim_NormalPointerEXT
__glim_NormalPointerEXT:
    # Line 476
    lw	$a5,4112($zero)
    # Line 475
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-9424
    sd	$gp,0($sp)
    # Line 478
    bltz	$a1,.L0da9ab54
    # Line 475
    addu	$gp,$t9,$at
    # Line 478
    bltz	$a2,.L0da9ab54
    # Line 489
    lw	$a4,-13552($gp)
    # Line 483
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0da9ab20
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0da9ab20
    # Line 489
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a4,$a4,$a7
    addu	$a4,$t0,$a4
    lw	$a4,28684($a4)
    beqz	$a4,.L0da9ab70
    sw	$a4,5136($a5)
    # Line 503
    li	$t1,-3841
    ld	$ra,8($sp)
    # Line 498
    sw	$a0,5120($a5)
    beqz	$a1,.L0da9ab3c
    # Line 497
    sw	$a3,5116($a5)
    # Line 499
    la	$a6,sub_0daf0000
    move	$a3,$a1
    addiu	$a6,$a6,-9728
.L0da9aadc:
    # Line 502
    sw	$a2,5132($a5)
    # Line 501
    sw	$a1,5128($a5)
    # Line 503
    sll	$a7,$a0,0x2
    lw	$t0,5400($a5)
    addu	$a7,$a6,$a7
    lw	$a7,-18912($a7)
    # Line 507
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 499
    sw	$a3,5124($a5)
    # Line 503
    and	$t0,$t0,$t1
    sll	$a7,$a7,0x8
    or	$a7,$a7,$t0
    # Line 507
    jr	$ra
    # Line 503
    sw	$a7,5400($a5)
.L0da9ab14:
    # Line 507
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9ab20:
    # Line 485
    # lw $t9, -26792($gp) # &__glSetError
    # Line 484
    la	$t0,__glNop
    # Line 485
    li	$a0,1280
    jal	__glSetError
    # Line 484
    sw	$t0,5136($a5)
    b	.L0da9ab14
    ld	$ra,8($sp)
.L0da9ab3c:
    # Line 499
    la	$a6,sub_0daf0000
    addiu	$a6,$a6,-9728
    addu	$a3,$a7,$a6
    addu	$a3,$t0,$a3
    b	.L0da9aadc
    lw	$a3,28684($a3)
.L0da9ab54:
    # Line 480
    # lw $t9, -26792($gp) # &__glSetError
    # Line 479
    la	$a7,__glNop
    # Line 480
    li	$a0,1281
    jal	__glSetError
    # Line 479
    sw	$a7,5136($a5)
    b	.L0da9ab14
    ld	$ra,8($sp)
.L0da9ab70:
    # Line 492
    # lw $t9, -26792($gp) # &__glSetError
    # Line 491
    la	$t0,__glNop
    # Line 492
    li	$a0,1280
    jal	__glSetError
    # Line 491
    sw	$t0,5136($a5)
    b	.L0da9ab14
    ld	$ra,8($sp)
.end __glim_NormalPointerEXT

# Function: __glim_ColorPointerEXT
# Declared: Line 509 (Source lines: 514-547)
# Address: 0x0da9ab90 - 0x0da9ad00 (Size: 368 bytes, Frame: 16)
.globl __glim_ColorPointerEXT
.ent __glim_ColorPointerEXT
__glim_ColorPointerEXT:
    # Line 515
    lw	$a6,4112($zero)
    # Line 514
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-9728
    sd	$gp,0($sp)
    # Line 517
    bltz	$a2,.L0da9ac8c
    # Line 514
    addu	$gp,$t9,$at
    # Line 517
    bltz	$a3,.L0da9ac90
    # Line 519
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 517
    slti	$v0,$a0,3
    bnez	$v0,.L0da9ac90
    # Line 519
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 517
    slti	$v1,$a0,5
    beqz	$v1,.L0da9ac90
    # Line 519
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 522
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0da9acac
    # Line 524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 522
    sltiu	$a7,$a1,5131
    beqz	$a7,.L0da9aca8
    # Line 528
    lw	$t3,-13548($gp)
    sll	$t0,$a1,0x2
    sll	$t2,$a0,0x2
    addu	$t0,$t0,$a1
    lui	$t1,0xfffe
    sll	$t8,$t0,0x2
    addu	$t2,$t1,$t2
    addu	$t3,$t3,$t8
    # Line 539
    la	$a7,sub_0daf0000
    # Line 528
    addu	$t2,$t2,$t3
    lw	$t2,28672($t2)
    # Line 539
    addiu	$a7,$a7,-9728
    # Line 543
    lui	$t3,0xf
    ori	$t3,$t3,0xf000
    # Line 528
    beqz	$t2,.L0da9ace4
    sw	$t2,5164($a6)
    ld	$ra,8($sp)
    # Line 538
    sw	$a1,5148($a6)
    # Line 537
    sw	$a0,5144($a6)
    # Line 538
    beqz	$a2,.L0da9acc4
    # Line 536
    sw	$a4,5140($a6)
    # Line 539
    move	$a4,$a2
.L0da9ac3c:
    # Line 542
    sw	$a3,5160($a6)
    # Line 543
    sll	$t1,$a1,0x2
    lw	$t2,5400($a6)
    addu	$t1,$a7,$t1
    lw	$t1,-18912($t1)
    # Line 541
    sw	$a2,5156($a6)
    # Line 543
    sll	$t0,$a0,0x10
    nor	$t3,$t3,$zero
    # Line 539
    sw	$a4,5152($a6)
    # Line 543
    and	$t2,$t2,$t3
    sll	$t1,$t1,0xc
    # Line 547
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 543
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 547
    jr	$ra
    # Line 543
    sw	$t0,5400($a6)
.L0da9ac80:
    # Line 547
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9ac8c:
    # Line 519
    # lw $t9, -26792($gp) # &__glSetError
.L0da9ac90:
    # Line 518
    la	$t2,__glNop
    # Line 519
    li	$a0,1281
    jal	__glSetError
    # Line 518
    sw	$t2,5164($a6)
    b	.L0da9ac80
    ld	$ra,8($sp)
.L0da9aca8:
    # Line 524
    # lw $t9, -26792($gp) # &__glSetError
.L0da9acac:
    # Line 523
    la	$t3,__glNop
    # Line 524
    li	$a0,1280
    jal	__glSetError
    # Line 523
    sw	$t3,5164($a6)
    b	.L0da9ac80
    ld	$ra,8($sp)
.L0da9acc4:
    # Line 539
    la	$a7,sub_0daf0000
    addu	$a4,$a0,$t0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,-9728
    addu	$a4,$a7,$a4
    addu	$a4,$t1,$a4
    b	.L0da9ac3c
    lw	$a4,28672($a4)
.L0da9ace4:
    # Line 531
    # lw $t9, -26792($gp) # &__glSetError
    # Line 530
    la	$t0,__glNop
    # Line 531
    li	$a0,1280
    jal	__glSetError
    # Line 530
    sw	$t0,5164($a6)
    b	.L0da9ac80
    ld	$ra,8($sp)
.end __glim_ColorPointerEXT

# Function: __glim_TexCoordPointerEXT
# Declared: Line 549 (Source lines: 554-600)
# Address: 0x0da9ad00 - 0x0da9aef4 (Size: 500 bytes, Frame: 16)
.globl __glim_TexCoordPointerEXT
.ent __glim_TexCoordPointerEXT
__glim_TexCoordPointerEXT:
    # Line 557
    lw	$a6,4112($zero)
    # Line 554
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-10096
    sd	$gp,0($sp)
    # Line 559
    bltz	$a2,.L0da9ae7c
    # Line 554
    addu	$gp,$t9,$at
    # Line 559
    bltz	$a3,.L0da9ae80
    # Line 561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 559
    blez	$a0,.L0da9ae80
    # Line 561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 559
    slti	$v0,$a0,5
    beqz	$v0,.L0da9ae80
    # Line 561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 564
    sltiu	$v1,$a1,5120
    bnez	$v1,.L0da9ae64
    # Line 566
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 564
    sltiu	$a5,$a1,5131
    beqz	$a5,.L0da9ae64
    # Line 566
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 570
    lw	$t0,-13540($gp)
    sll	$t9,$a1,0x2
    sll	$t8,$a0,0x2
    addu	$t9,$t9,$a1
    lui	$ra,0xfffe
    sll	$t3,$t9,0x2
    addu	$a7,$ra,$t8
    addu	$t0,$t0,$t3
    addu	$a7,$a7,$t0
    lw	$a7,28672($a7)
    beqz	$a7,.L0da9aeb8
    nop
    # Line 576
    lw	$t1,28268($a6)
    lui	$t2,0xffff
    ori	$t2,$t2,0x7c39
    addu	$t1,$t1,$t2
    # Line 577
    sll	$t0,$t1,0x3
    subu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$t0,$a6,$t0
    # Line 579
    sw	$a1,5248($t0)
    # Line 578
    sw	$a0,5244($t0)
    # Line 580
    move	$t2,$a2
    # Line 579
    beqz	$a2,.L0da9ae98
    # Line 577
    sw	$a4,5240($t0)
.L0da9adb8:
    # Line 584
    sw	$a7,5264($t0)
    # Line 583
    sw	$a3,5260($t0)
    # Line 582
    sw	$a2,5256($t0)
    # Line 584
    beqz	$t1,.L0da9addc
    # Line 580
    sw	$t2,5252($t0)
    ld	$ra,8($sp)
.L0da9add0:
    # Line 600
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9addc:
    # Line 589
    sw	$a1,5200($a6)
    # Line 594
    lui	$at,0xfffe
    # Line 595
    lui	$v0,0x7f0
    la	$v1,sub_0daf0000
    # Line 588
    sw	$a0,5196($a6)
    # Line 595
    nor	$v0,$v0,$zero
    # Line 594
    addu	$at,$at,$t8
    # Line 587
    sw	$a4,5192($a6)
    # Line 589
    beqz	$a2,.L0da9aecc
    # Line 595
    addiu	$v1,$v1,-9728
    # Line 590
    move	$a4,$a2
.L0da9ae08:
    sw	$a4,5204($a6)
    # Line 592
    sw	$a2,5208($a6)
    # Line 593
    sw	$a3,5212($a6)
    # Line 595
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    # Line 594
    lw	$a1,-13544($gp)
    # Line 600
    ld	$gp,0($sp)
    # Line 595
    lw	$t9,5400($a6)
    lw	$v1,-18912($v1)
    # Line 594
    addu	$a1,$a1,$t3
    ld	$ra,8($sp)
    # Line 595
    sll	$t3,$a0,0x18
    # Line 594
    addu	$at,$at,$a1
    # Line 595
    and	$t9,$t9,$v0
    sll	$t8,$v1,0x14
    # Line 594
    lw	$at,28672($at)
    # Line 600
    addiu	$sp,$sp,16
    # Line 595
    or	$t8,$t8,$t9
    # Line 594
    sw	$at,5216($a6)
    # Line 595
    or	$t3,$t3,$t8
    # Line 600
    jr	$ra
    # Line 595
    sw	$t3,5400($a6)
    # Line 566
    # lw $t9, -26792($gp) # &__glSetError
.L0da9ae64:
    # Line 565
    la	$a1,__glNop
    # Line 566
    li	$a0,1280
    jal	__glSetError
    # Line 565
    sw	$a1,5216($a6)
    b	.L0da9add0
    ld	$ra,8($sp)
.L0da9ae7c:
    # Line 561
    # lw $t9, -26792($gp) # &__glSetError
.L0da9ae80:
    # Line 560
    la	$a2,__glNop
    # Line 561
    li	$a0,1281
    jal	__glSetError
    # Line 560
    sw	$a2,5216($a6)
    b	.L0da9add0
    ld	$ra,8($sp)
.L0da9ae98:
    # Line 580
    la	$t2,sub_0daf0000
    addu	$at,$a0,$t9
    sll	$at,$at,0x2
    addiu	$t2,$t2,-9728
    addu	$t2,$t2,$at
    addu	$t2,$ra,$t2
    b	.L0da9adb8
    lw	$t2,28672($t2)
.L0da9aeb8:
    # Line 572
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da9add0
    ld	$ra,8($sp)
.L0da9aecc:
    # Line 590
    sll	$a5,$a1,0x2
    la	$a4,sub_0daf0000
    addu	$a5,$a5,$a1
    addu	$a5,$a0,$a5
    addiu	$a4,$a4,-9728
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    addu	$a4,$ra,$a4
    b	.L0da9ae08
    lw	$a4,28672($a4)
.end __glim_TexCoordPointerEXT

# Function: __glim_EdgeFlagPointerEXT
# Declared: Line 603 (Source lines: 606-623)
# Address: 0x0da9af00 - 0x0da9af90 (Size: 144 bytes, Frame: 16)
.globl __glim_EdgeFlagPointerEXT
.ent __glim_EdgeFlagPointerEXT
__glim_EdgeFlagPointerEXT:
    # Line 607
    lw	$a4,4112($zero)
    # Line 606
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-10608
    sd	$gp,0($sp)
    # Line 609
    bltz	$a0,.L0da9af74
    # Line 606
    addu	$gp,$t9,$at
    # Line 609
    bltz	$a1,.L0da9af78
    # Line 611
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 617
    sw	$a0,5228($a4)
    # Line 615
    sw	$a2,5220($a4)
    # Line 622
    la	$a2,glEdgeFlagv
    # Line 623
    ld	$gp,0($sp)
    # Line 618
    sw	$a1,5232($a4)
    # Line 616
    li	$v0,1
    movn	$v0,$a0,$a0
    sw	$v0,5224($a4)
    move	$ra,$ra
    # Line 619
    lw	$v1,5400($a4)
    # Line 623
    addiu	$sp,$sp,16
    # Line 619
    lui	$a1,0x800
    # Line 622
    sw	$a2,5236($a4)
    # Line 619
    or	$v1,$v1,$a1
    # Line 623
    jr	$ra
    # Line 619
    sw	$v1,5400($a4)
.L0da9af68:
    # Line 623
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9af74:
    # Line 611
    # lw $t9, -26792($gp) # &__glSetError
.L0da9af78:
    # Line 610
    la	$a3,__glNop
    # Line 611
    li	$a0,1281
    jal	__glSetError
    # Line 610
    sw	$a3,5236($a4)
    b	.L0da9af68
    ld	$ra,8($sp)
.end __glim_EdgeFlagPointerEXT

# Function: __glim_IndexPointerEXT
# Declared: Line 625 (Source lines: 629-660)
# Address: 0x0da9af90 - 0x0da9b0c8 (Size: 312 bytes, Frame: 16)
.globl __glim_IndexPointerEXT
.ent __glim_IndexPointerEXT
__glim_IndexPointerEXT:
    # Line 630
    lw	$a5,4112($zero)
    # Line 629
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-10752
    sd	$gp,0($sp)
    # Line 632
    bltz	$a1,.L0da9b090
    # Line 629
    addu	$gp,$t9,$at
    # Line 632
    bltz	$a2,.L0da9b090
    # Line 643
    lw	$a4,-13536($gp)
    # Line 637
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0da9b060
    # Line 639
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 637
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0da9b060
    # Line 639
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 643
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a4,$a4,$a7
    addu	$a4,$t0,$a4
    lw	$a4,28676($a4)
    beqz	$a4,.L0da9b0ac
    sw	$a4,5188($a5)
    # Line 657
    lui	$t1,0xfff
    ld	$ra,8($sp)
    # Line 652
    sw	$a0,5172($a5)
    # Line 651
    sw	$a3,5168($a5)
    # Line 652
    beqz	$a1,.L0da9b078
    # Line 657
    ori	$t1,$t1,0xffff
    # Line 653
    la	$a6,sub_0daf0000
    move	$a3,$a1
    addiu	$a6,$a6,-9728
.L0da9b018:
    # Line 656
    sw	$a2,5184($a5)
    # Line 655
    sw	$a1,5180($a5)
    # Line 657
    sll	$a7,$a0,0x2
    lw	$t0,5400($a5)
    addu	$a7,$a6,$a7
    lw	$a7,-18912($a7)
    # Line 660
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 653
    sw	$a3,5176($a5)
    # Line 657
    and	$t0,$t0,$t1
    sll	$a7,$a7,0x1c
    or	$a7,$a7,$t0
    # Line 660
    jr	$ra
    # Line 657
    sw	$a7,5400($a5)
.L0da9b050:
    # Line 660
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 639
    # lw $t9, -26792($gp) # &__glSetError
.L0da9b060:
    # Line 638
    la	$t0,__glNop
    # Line 639
    li	$a0,1280
    jal	__glSetError
    # Line 638
    sw	$t0,5188($a5)
    b	.L0da9b050
    ld	$ra,8($sp)
.L0da9b078:
    # Line 653
    la	$a6,sub_0daf0000
    addiu	$a6,$a6,-9728
    addu	$a3,$a7,$a6
    addu	$a3,$t0,$a3
    b	.L0da9b018
    lw	$a3,28676($a3)
.L0da9b090:
    # Line 634
    # lw $t9, -26792($gp) # &__glSetError
    # Line 633
    la	$a7,__glNop
    # Line 634
    li	$a0,1281
    jal	__glSetError
    # Line 633
    sw	$a7,5188($a5)
    b	.L0da9b050
    ld	$ra,8($sp)
.L0da9b0ac:
    # Line 646
    # lw $t9, -26792($gp) # &__glSetError
    # Line 645
    la	$t0,__glNop
    # Line 646
    li	$a0,1280
    jal	__glSetError
    # Line 645
    sw	$t0,5188($a5)
    b	.L0da9b050
    ld	$ra,8($sp)
.end __glim_IndexPointerEXT

# Function: __glim_ColorPointer
# Declared: Line 733 (Source lines: 733-739)
# Address: 0x0da9b0d0 - 0x0da9b128 (Size: 88 bytes, Frame: 16)
.globl __glim_ColorPointer
.ent __glim_ColorPointer
__glim_ColorPointer:
    # Line 733
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-11072
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da9b114
    addu	$gp,$t9,$v1
    # Line 738
    # lw $t9, -23892($gp) # &__glim_ColorPointerEXT
    bal __glim_ColorPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da9b108:
    # Line 739
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b114:
    # Line 735
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b108
    ld	$ra,8($sp)
.end __glim_ColorPointer

# Function: __glim_DrawElements
# Declared: Line 742 (Source lines: 742-773)
# Address: 0x0da9b130 - 0x0da9b2d0 (Size: 416 bytes, Frame: 48)
.globl __glim_DrawElements
.ent __glim_DrawElements
__glim_DrawElements:
    # Line 742
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a2
    lw	$at,4120($zero)
    sd	$s2,8($sp)
    li	$v0,1
    lui	$v1,0x6
    move	$s2,$a1
    sd	$ra,32($sp)
    addiu	$v1,$v1,-11168
    sd	$gp,24($sp)
    beq	$at,$v0,.L0da9b2ac
    addu	$gp,$t9,$v1
    # Line 743
    bltz	$a1,.L0da9b2c0
    # Line 747
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 750
    sltiu	$a1,$a0,10
    beqz	$a1,.L0da9b190
    li	$a1,5121
    beq	$a1,$a2,.L0da9b1b4
    sd	$a3,0($sp)
    li	$a2,5123
    beq	$s1,$a2,.L0da9b1b4
    li	$a3,5125
    beq	$s1,$a3,.L0da9b1b4
.L0da9b190:
    # Line 753
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0da9b1a0:
    ld	$s2,8($sp)
    ld	$s1,16($sp)
    # Line 773
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9b1b4:
    # Line 756
    lw	$t9,4204($zero)
    jalr	$t9
    nop
    # Line 757
    li	$a4,5121
    li	$a5,5123
    beq	$a4,$s1,.L0da9b22c
    li	$a6,5125
    beq	$s1,$a5,.L0da9b26c
    nop
    bne	$s1,$a6,.L0da9b218
    nop
    # Line 768
    blez	$s2,.L0da9b218
    sll	$s1,$s2,0x2
    ld	$t8,0($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    # Line 769
    lw	$t9,4968($zero)
.L0da9b200:
    jalr	$t9
    lw	$a0,0($s0)
    # Line 768
    addiu	$s0,$s0,4
    bnel	$s0,$s1,.L0da9b200
    # Line 769
    lw	$t9,4968($zero)
    ld	$s0,40($sp)
.L0da9b218:
    # Line 772
    lw	$t9,4220($zero)
    jalr	$t9
    nop
    b	.L0da9b1a0
    ld	$ra,32($sp)
.L0da9b22c:
    # Line 760
    blez	$s2,.L0da9b218
    ld	$s1,0($sp)
    sd	$s0,40($sp)
    move	$s0,$s1
    addu	$s1,$s2,$s1
    nop
    nop
    nop
    # Line 761
    lw	$t9,4968($zero)
.L0da9b250:
    jalr	$t9
    lbu	$a0,0($s0)
    # Line 760
    addiu	$s0,$s0,1
    bnel	$s0,$s1,.L0da9b250
    # Line 761
    lw	$t9,4968($zero)
    b	.L0da9b218
    ld	$s0,40($sp)
.L0da9b26c:
    # Line 764
    blez	$s2,.L0da9b218
    addu	$s1,$s2,$s2
    ld	$t8,0($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    nop
    # Line 765
    lw	$t9,4968($zero)
.L0da9b290:
    jalr	$t9
    lhu	$a0,0($s0)
    # Line 764
    addiu	$s0,$s0,2
    bnel	$s0,$s1,.L0da9b290
    # Line 765
    lw	$t9,4968($zero)
    b	.L0da9b218
    ld	$s0,40($sp)
.L0da9b2ac:
    # Line 743
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b1a0
    ld	$ra,32($sp)
.L0da9b2c0:
    # Line 747
    jalr	$t9
    li	$a0,1281
    b	.L0da9b1a0
    ld	$ra,32($sp)
.end __glim_DrawElements

# Function: __glim_DrawRangeElements
# Declared: Line 776 (Source lines: 777-785)
# Address: 0x0da9b2d0 - 0x0da9b32c (Size: 92 bytes, Frame: 16)
.globl __glim_DrawRangeElements
.ent __glim_DrawRangeElements
__glim_DrawRangeElements:
    # Line 777
    addiu	$sp,$sp,-16
    sltu	$at,$a2,$a1
    lui	$v0,0x6
    move	$a7,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,-11584
    sd	$gp,0($sp)
    beqz	$at,.L0da9b308
    addu	$gp,$t9,$v0
    # Line 780
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0da9b31c
    nop
.L0da9b308:
    # Line 784
    # lw $t9, -23872($gp) # &__glim_DrawElements
    move	$a2,$a4
    move	$a1,$a3
    bal __glim_DrawElements
    move	$a3,$a5
.L0da9b31c:
    ld	$ra,8($sp)
    # Line 785
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_DrawRangeElements

# Function: __glim_EdgeFlagPointer
# Declared: Line 788 (Source lines: 788-794)
# Address: 0x0da9b330 - 0x0da9b388 (Size: 88 bytes, Frame: 16)
.globl __glim_EdgeFlagPointer
.ent __glim_EdgeFlagPointer
__glim_EdgeFlagPointer:
    # Line 788
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a2,$a1
    sd	$ra,8($sp)
    addiu	$v1,$v1,-11680
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da9b374
    addu	$gp,$t9,$v1
    # Line 793
    # lw $t9, -23884($gp) # &__glim_EdgeFlagPointerEXT
    bal __glim_EdgeFlagPointerEXT
    move	$a1,$zero
    ld	$ra,8($sp)
.L0da9b368:
    # Line 794
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b374:
    # Line 790
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b368
    ld	$ra,8($sp)
.end __glim_EdgeFlagPointer

# Function: __glim_IndexPointer
# Declared: Line 797 (Source lines: 797-803)
# Address: 0x0da9b390 - 0x0da9b3e8 (Size: 88 bytes, Frame: 16)
.globl __glim_IndexPointer
.ent __glim_IndexPointer
__glim_IndexPointer:
    # Line 797
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,-11776
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da9b3d4
    addu	$gp,$t9,$v1
    # Line 802
    # lw $t9, -23880($gp) # &__glim_IndexPointerEXT
    bal __glim_IndexPointerEXT
    move	$a2,$zero
    ld	$ra,8($sp)
.L0da9b3c8:
    # Line 803
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b3d4:
    # Line 799
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b3c8
    ld	$ra,8($sp)
.end __glim_IndexPointer

# Function: __glim_InterleavedArrays
# Declared: Line 806 (Source lines: 806-913)
# Address: 0x0da9b3f0 - 0x0da9b6b0 (Size: 704 bytes, Frame: 208)
.globl __glim_InterleavedArrays
.ent __glim_InterleavedArrays
__glim_InterleavedArrays:
    # Line 806
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    # Line 844
    lw	$s1,4112($zero)
    sd	$s5,64($sp)
    sd	$s0,56($sp)
    sd	$ra,48($sp)
    # Line 806
    sd	$s4,24($sp)
    move	$s4,$a2
    # Line 844
    lw	$at,4120($zero)
    # Line 806
    sd	$s3,32($sp)
    # Line 844
    li	$v0,1
    # Line 806
    lui	$v1,0x6
    move	$s3,$a1
    sd	$s2,40($sp)
    addiu	$v1,$v1,-11872
    sd	$gp,8($sp)
    # Line 844
    beq	$at,$v0,.L0da9b68c
    # Line 806
    addu	$gp,$t9,$v1
    # Line 844
    bltz	$a1,.L0da9b6a0
    # Line 847
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 850
    sltiu	$a1,$a0,10784
    bnez	$a1,.L0da9b614
    # Line 851
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 850
    sltiu	$a2,$a0,10798
    beqz	$a2,.L0da9b614
    # Line 851
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 852
    la	$s2,sub_0daf0000
    sll	$t8,$a0,0x3
    addu	$t8,$t8,$a0
    sll	$t8,$t8,0x2
    addiu	$s2,$s2,-8112
    addu	$s2,$s2,$t8
    lui	$t8,0x6
    beqz	$s3,.L0da9b624
    subu	$s2,$s2,$t8
.L0da9b47c:
    # Line 859
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jal	__glSetError
    li	$a0,0x8079
    # Line 860
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8077
    lbu	$ra,4992($s2)
    beqz	$ra,.L0da9b62c
    # Line 873
    move	$s0,$zero
    # Line 863
    lw	$s5,5420($s1)
    # Line 864
    lw	$v0,5012($s2)
    addiu	$v1,$s5,-1
    mult	$v0,$v1
    move	$s0,$zero
    mflo	$at
    blez	$s5,.L0da9b510
    sd	$at,0($sp)
    nop
    # Line 869
    lw	$t9,6132($s1)
.L0da9b4d0:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 870
    lw	$ra,5012($s2)
    mult	$ra,$s0
    lw	$t9,6132($s1)
    lw	$t9,904($t9)
    move	$a2,$s3
    li	$a1,5126
    mflo	$a3
    lw	$a0,4996($s2)
    jalr	$t9
    addu	$a3,$s4,$a3
    # Line 865
    addiu	$s0,$s0,1
    bnel	$s5,$s0,.L0da9b4d0
    # Line 869
    lw	$t9,6132($s1)
.L0da9b510:
    # Line 873
    lw	$at,3612($s1)
    slt	$at,$s5,$at
    beqz	$at,.L0da9b544
    move	$s0,$s5
.L0da9b520:
    # Line 877
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 873
    lw	$ra,3612($s1)
    addiu	$s0,$s0,1
    slt	$ra,$s0,$ra
    bnez	$ra,.L0da9b520
    nop
.L0da9b544:
    # Line 881
    lbu	$at,4993($s2)
    ld	$s0,0($sp)
    lw	$a1,6132($s1)
    beqz	$at,.L0da9b664
    addu	$s0,$s0,$s4
    # Line 893
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8076
    # Line 894
    lw	$t9,6132($s1)
    lw	$t9,872($t9)
    lw	$a3,5012($s2)
    move	$a2,$s3
    lw	$a1,5008($s2)
    lw	$a0,5000($s2)
    jalr	$t9
    addu	$a3,$a3,$s0
    # Line 897
    lbu	$ra,4994($s2)
.L0da9b588:
    beqz	$ra,.L0da9b678
    lw	$a1,6132($s1)
    # Line 900
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8075
    # Line 901
    lw	$t9,6132($s1)
    lw	$t9,900($t9)
    lw	$a2,5016($s2)
    move	$a1,$s3
    li	$a0,5126
    jalr	$t9
    addu	$a2,$a2,$s0
    # Line 910
    lw	$t9,6132($s1)
.L0da9b5bc:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8074
    # Line 911
    lw	$t9,6132($s1)
    lw	$t9,908($t9)
    lw	$a3,5020($s2)
    move	$a2,$s3
    li	$a1,5126
    lw	$a0,5004($s2)
    jalr	$t9
    addu	$a3,$a3,$s0
    ld	$s5,64($sp)
.L0da9b5ec:
    ld	$s0,56($sp)
    ld	$s2,40($sp)
    # Line 913
    ld	$gp,8($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
    # Line 851
    # lw $t9, -26792($gp) # &__glSetError
.L0da9b614:
    jal	__glSetError
    li	$a0,1280
    b	.L0da9b5ec
    ld	$s5,64($sp)
.L0da9b624:
    # Line 855
    b	.L0da9b47c
    lw	$s3,5024($s2)
.L0da9b62c:
    # Line 873
    lw	$ra,3612($s1)
    blez	$ra,.L0da9b65c
    nop
.L0da9b638:
    # Line 885
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 881
    lw	$ra,3612($s1)
    addiu	$s0,$s0,1
    slt	$ra,$s0,$ra
    bnez	$ra,.L0da9b638
    nop
.L0da9b65c:
    b	.L0da9b544
    sd	$zero,0($sp)
.L0da9b664:
    # Line 897
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8076
    b	.L0da9b588
    lbu	$ra,4994($s2)
.L0da9b678:
    # Line 904
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8075
    b	.L0da9b5bc
    # Line 910
    lw	$t9,6132($s1)
.L0da9b68c:
    # Line 844
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b5ec
    ld	$s5,64($sp)
.L0da9b6a0:
    # Line 847
    jalr	$t9
    li	$a0,1281
    b	.L0da9b5ec
    ld	$s5,64($sp)
.end __glim_InterleavedArrays

# Function: __glim_NormalPointer
# Declared: Line 916 (Source lines: 916-922)
# Address: 0x0da9b6b0 - 0x0da9b708 (Size: 88 bytes, Frame: 16)
.globl __glim_NormalPointer
.ent __glim_NormalPointer
__glim_NormalPointer:
    # Line 916
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,-12576
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da9b6f4
    addu	$gp,$t9,$v1
    # Line 921
    # lw $t9, -23896($gp) # &__glim_NormalPointerEXT
    bal __glim_NormalPointerEXT
    move	$a2,$zero
    ld	$ra,8($sp)
.L0da9b6e8:
    # Line 922
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b6f4:
    # Line 918
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b6e8
    ld	$ra,8($sp)
.end __glim_NormalPointer

# Function: __glim_TexCoordPointer
# Declared: Line 925 (Source lines: 925-931)
# Address: 0x0da9b710 - 0x0da9b768 (Size: 88 bytes, Frame: 16)
.globl __glim_TexCoordPointer
.ent __glim_TexCoordPointer
__glim_TexCoordPointer:
    # Line 925
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-12672
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da9b754
    addu	$gp,$t9,$v1
    # Line 930
    # lw $t9, -23888($gp) # &__glim_TexCoordPointerEXT
    bal __glim_TexCoordPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da9b748:
    # Line 931
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b754:
    # Line 927
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b748
    ld	$ra,8($sp)
.end __glim_TexCoordPointer

# Function: __glim_VertexPointer
# Declared: Line 934 (Source lines: 934-940)
# Address: 0x0da9b770 - 0x0da9b7c8 (Size: 88 bytes, Frame: 16)
.globl __glim_VertexPointer
.ent __glim_VertexPointer
__glim_VertexPointer:
    # Line 934
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-12768
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da9b7b4
    addu	$gp,$t9,$v1
    # Line 939
    # lw $t9, -23900($gp) # &__glim_VertexPointerEXT
    bal __glim_VertexPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da9b7a8:
    # Line 940
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b7b4:
    # Line 936
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b7a8
    ld	$ra,8($sp)
.end __glim_VertexPointer

# Function: __glim_InterleavedTextureCoordSetsSGIS
# Declared: Line 947 (Source lines: 948-957)
# Address: 0x0da9b7d0 - 0x0da9b858 (Size: 136 bytes, Frame: 16)
.globl __glim_InterleavedTextureCoordSetsSGIS
.ent __glim_InterleavedTextureCoordSetsSGIS
__glim_InterleavedTextureCoordSetsSGIS:
    # Line 948
    addiu	$sp,$sp,-16
    # Line 949
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 948
    lui	$v1,0x6
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-12864
    sd	$gp,0($sp)
    # Line 949
    beq	$at,$v0,.L0da9b844
    # Line 948
    addu	$gp,$t9,$v1
    # Line 951
    blez	$a0,.L0da9b834
    # Line 952
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 951
    lw	$a1,3612($a2)
    slt	$a1,$a1,$a0
    bnez	$a1,.L0da9b834
    # Line 952
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 956
    sw	$a0,5420($a2)
    # Line 957
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da9b824:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 952
    # lw $t9, -26792($gp) # &__glSetError
.L0da9b834:
    jal	__glSetError
    li	$a0,1281
    b	.L0da9b824
    ld	$ra,8($sp)
.L0da9b844:
    # Line 949
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da9b824
    ld	$ra,8($sp)
.end __glim_InterleavedTextureCoordSetsSGIS

