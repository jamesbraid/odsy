# Source: ../ODYSSEY/ody_rasterpos.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_rasterpos.c
# Total Functions: 4

.text

# Function: __glOdysseyRasterPosGeneral
# Declared: Line 72 (Source lines: 74-209)
# Address: 0x0d9ca3b0 - 0x0d9ca95c (Size: 1452 bytes, Frame: 48)
.ent __glOdysseyRasterPosGeneral
__glOdysseyRasterPosGeneral:
    # Line 91
    lw	$a4,29716($a0)
    # Line 79
    lw	$at,29736($a0)
    # Line 74
    addiu	$sp,$sp,-48
    # Line 86
    lwc1	$f3,0($a1)
    # Line 74
    sd	$a0,32($sp)
    # Line 86
    swc1	$f3,256($a0)
    # Line 87
    lwc1	$f2,4($a1)
    # Line 79
    sd	$at,24($sp)
    # Line 87
    swc1	$f2,260($a0)
    # Line 88
    lwc1	$f1,8($a1)
    sd	$ra,40($sp)
    swc1	$f1,264($a0)
    # Line 94
    li	$a5,2
    # Line 89
    lwc1	$f0,12($a1)
    # Line 92
    sw	$zero,240($a0)
    # Line 94
    beq	$a5,$a2,.L0d9ca468
    # Line 89
    swc1	$f0,268($a0)
    # Line 94
    li	$v1,3
    beq	$a2,$v1,.L0d9ca504
    # Line 106
    ld	$a0,32($sp)
    # Line 94
    li	$a0,4
    beq	$a2,$a0,.L0d9ca418
    # Line 115
    ld	$a0,32($sp)
.L0d9ca40c:
    ld	$ra,40($sp)
.L0d9ca410:
    # Line 209
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ca418:
    # Line 115
    lw	$t9,256($a4)
    addiu	$a2,$a4,176
    addiu	$a1,$a0,256
    jalr	$t9
    addiu	$a0,$a0,352
    # Line 117
    ld	$a3,32($sp)
    # lw $t9, -23832($gp) # &__glClipCheckAll
    # Line 116
    la	$a2,__glValidateVertex4
    # Line 117
    addiu	$a1,$a3,240
    sd	$a1,16($sp)
    move	$a0,$a3
    jal	__glClipCheckAll
    # Line 116
    sw	$a2,252($a3)
    # Line 117
    beqz	$v0,.L0d9ca4c0
    # Line 130
    ld	$t0,32($sp)
    ld	$ra,40($sp)
    # Line 118
    ld	$a4,32($sp)
    # Line 209
    addiu	$sp,$sp,48
    jr	$ra
    # Line 118
    sb	$zero,452($a4)
.L0d9ca468:
    # Line 97
    ld	$a0,32($sp)
    lw	$t9,248($a4)
    addiu	$a2,$a4,176
    addiu	$a1,$a0,256
    jalr	$t9
    addiu	$a0,$a0,352
    # Line 99
    ld	$a3,32($sp)
    # lw $t9, -23832($gp) # &__glClipCheckAll
    # Line 98
    la	$a2,__glValidateVertex2
    # Line 99
    addiu	$a1,$a3,240
    sd	$a1,16($sp)
    move	$a0,$a3
    jal	__glClipCheckAll
    # Line 98
    sw	$a2,252($a3)
    # Line 99
    beqz	$v0,.L0d9ca4c0
    # Line 130
    ld	$t0,32($sp)
    ld	$ra,40($sp)
    # Line 100
    ld	$a4,32($sp)
    # Line 209
    addiu	$sp,$sp,48
    jr	$ra
    # Line 100
    sb	$zero,452($a4)
    # Line 130
    ld	$t0,32($sp)
.L0d9ca4c0:
    li	$a6,1
    sb	$a6,452($t0)
    # Line 142
    lw	$a0,4112($zero)
    lui	$a5,0x1
    addu	$a4,$a5,$a0
    lw	$a7,26980($a4)
    beqz	$a7,.L0d9ca788
    lw	$a2,4120($zero)
    beqz	$a2,.L0d9ca558
    li	$a5,1
    li	$t1,2
.L0d9ca4ec:
    beq	$a2,$t1,.L0d9ca554
    nop	# was lw $t9, -26792($gp) # &__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    jr	$t9
    addiu	$sp,$sp,48
.L0d9ca504:
    # Line 106
    lw	$t9,252($a4)
    addiu	$a2,$a4,176
    addiu	$a1,$a0,256
    jal	__glSetError
    addiu	$a0,$a0,352
    # Line 108
    ld	$a3,32($sp)
    # lw $t9, -23832($gp) # &__glClipCheckAll
    # Line 107
    la	$a2,__glValidateVertex3
    # Line 108
    addiu	$a1,$a3,240
    sd	$a1,16($sp)
    move	$a0,$a3
    jal	__glClipCheckAll
    # Line 107
    sw	$a2,252($a3)
    # Line 108
    beqz	$v0,.L0d9ca4c0
    # Line 130
    ld	$t0,32($sp)
    ld	$ra,40($sp)
    # Line 109
    ld	$a4,32($sp)
    # Line 209
    addiu	$sp,$sp,48
    jr	$ra
    # Line 109
    sb	$zero,452($a4)
.L0d9ca554:
    # Line 142
    li	$a5,1
.L0d9ca558:
    sb	$a5,26997($a4)
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    lui	$a5,0x1
    li	$a6,1
    sw	$zero,4120($zero)
    # Line 146
    li	$t1,15608
.L0d9ca578:
    sw	$t1,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    li	$t0,15609
    sw	$t0,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    li	$a7,15610
    sw	$a7,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    li	$a4,15611
    sw	$a4,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    # Line 148
    ld	$a2,32($sp)
    # Line 146
    sw	$zero,0($a5)
    sw	$zero,0($a5)
    # Line 148
    addu	$a3,$a5,$a2
    sb	$a6,-22724($a3)
    lw	$a2,3204($a2)
    li	$a7,7168
    beq	$a2,$a7,.L0d9ca798
    sd	$a3,8($sp)
    # Line 155
    ld	$t2,32($sp)
    lwc1	$f4,208($t2)
    lwc1	$f5,212($t2)
    lwc1	$f7,220($t2)
    lwc1	$f6,216($t2)
    swc1	$f7,284($t2)
    lbu	$t3,3220($t2)
    swc1	$f6,280($t2)
    swc1	$f5,276($t2)
    beqz	$t3,.L0d9ca94c
    swc1	$f4,272($t2)
    # Line 157
    ld	$t8,32($sp)
    lwc1	$f8,192($t8)
    lwc1	$f9,196($t8)
    lwc1	$f11,204($t8)
    lwc1	$f10,200($t8)
    swc1	$f11,396($t8)
    swc1	$f10,392($t8)
    swc1	$f9,388($t8)
    swc1	$f8,384($t8)
.L0d9ca700:
    # Line 161
    ld	$t9,32($sp)
    lwc1	$f12,224($t9)
    lwc1	$f13,228($t9)
    lwc1	$f15,236($t9)
    lwc1	$f14,232($t9)
    swc1	$f15,300($t9)
    swc1	$f14,296($t9)
    swc1	$f13,292($t9)
    swc1	$f12,288($t9)
    # Line 201
    ld	$at,32($sp)
.L0d9ca728:
    ld	$a1,16($sp)
    # Line 200
    lw	$ra,12068($at)
    # Line 199
    lw	$a3,12060($at)
    # Line 201
    lw	$t9,252($at)
    # Line 192
    lw	$a2,28132($at)
    # Line 201
    move	$a0,$at
    # Line 199
    sd	$a3,0($sp)
    # Line 200
    sw	$ra,12060($at)
    # Line 201
    jalr	$t9
    # Line 192
    ori	$a2,$a2,0x1d
    # Line 202
    ld	$a4,0($sp)
    ld	$a2,32($sp)
    # Line 203
    ld	$a3,8($sp)
    # Line 202
    sw	$a4,12060($a2)
    # Line 203
    sb	$zero,-22724($a3)
    lw	$a2,3204($a2)
    li	$a5,7170
.L0d9ca76c:
    bne	$a2,$a5,.L0d9ca40c
    # Line 207
    nop	# was lw $t9, -25108($gp) # &__glSelectPoint
    ld	$a0,32($sp)
    jal	__glSelectPoint
    ld	$a1,16($sp)
    b	.L0d9ca410
    ld	$ra,40($sp)
.L0d9ca788:
    # Line 142
    bnez	$a2,.L0d9ca4ec
    li	$t1,2
    b	.L0d9ca578
    # Line 146
    li	$t1,15608
.L0d9ca798:
    # Line 164
    ld	$a6,32($sp)
    lui	$a7,0x3c
    lw	$a6,1792($a6)
    ori	$a7,$a7,0x40
    and	$a6,$a6,$a7
    bnez	$a6,.L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$a7,24($sp)
    lwc1	$f16,0($a7)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f16,$f16
    c.eq.d	$f16,$f5
    bc1f	.L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$t0,24($sp)
    lwc1	$f17,4($t0)
    dmtc1	$zero,$f4
    cvt.d.s	$f17,$f17
    c.eq.d $f17,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$t1,24($sp)
    lwc1	$f18,8($t1)
    cvt.d.s	$f18,$f18
    c.eq.d $f18,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$t2,24($sp)
    lwc1	$f19,12($t2)
    cvt.d.s	$f19,$f19
    c.eq.d $f19,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$t3,24($sp)
    lwc1	$f21,16($t3)
    cvt.d.s	$f21,$f21
    c.eq.d $f21,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$t8,24($sp)
    lwc1	$f23,20($t8)
    cvt.d.s	$f23,$f23
    c.eq.d $f23,$f5
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$t9,24($sp)
    lwc1	$f25,24($t9)
    cvt.d.s	$f25,$f25
    c.eq.d $f25,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$ra,24($sp)
    lwc1	$f27,28($ra)
    cvt.d.s	$f27,$f27
    c.eq.d $f27,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$at,24($sp)
    lwc1	$f29,32($at)
    cvt.d.s	$f29,$f29
    c.eq.d	$f29,$f4
    bc1f	.L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$v0,24($sp)
    lwc1	$f31,36($v0)
    cvt.d.s	$f31,$f31
    c.eq.d $f31,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$v1,24($sp)
    lwc1	$f0,40($v1)
    cvt.d.s	$f0,$f0
    c.eq.d $f0,$f5
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$a0,24($sp)
    lwc1	$f1,44($a0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$a1,24($sp)
    lwc1	$f2,48($a1)
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$a3,24($sp)
    lwc1	$f3,52($a3)
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f4
    bc1f .L0d9ca93c
    # Line 184
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 164
    ld	$a4,24($sp)
    lwc1	$f6,56($a4)
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f4
    bc1f .L0d9ca938
    ld	$a5,24($sp)
    lwc1	$f7,60($a5)
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1t .L0d9ca76c
    # Line 203
    li	$a5,7170
.L0d9ca938:
    # Line 184
    # lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
.L0d9ca93c:
    jal	__glOdysseyUpdateRasterPos
    ld	$a0,32($sp)
    b	.L0d9ca728
    # Line 201
    ld	$at,32($sp)
.L0d9ca94c:
    # Line 159
    ld	$a6,32($sp)
    lwc1	$f8,448($a6)
    b	.L0d9ca700
    swc1	$f8,384($a6)
.end __glOdysseyRasterPosGeneral

# Function: __glOdysseyRasterPos2
# Declared: Line 211 (Source lines: 212-221)
# Address: 0x0d9ca960 - 0x0d9ca9bc (Size: 92 bytes, Frame: 32)
.globl __glOdysseyRasterPos2
.ent __glOdysseyRasterPos2
__glOdysseyRasterPos2:
    # Line 215
    lwc1	$f3,0($a1)
    # Line 212
    addiu	$sp,$sp,-32
    # Line 215
    swc1	$f3,0($sp)
    # Line 217
    mtc1	$zero,$f1
    # Line 216
    lwc1	$f2,4($a1)
    # Line 212
    sd	$ra,16($sp)
    lui	$ra,0x13
    # Line 217
    swc1	$f1,8($sp)
    # Line 212
    addiu	$ra,$ra,-9168
    sd	$gp,24($sp)
    addu	$gp,$t9,$ra
    # Line 220
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 216
    swc1	$f2,4($sp)
    # Line 218
    lwc1	$f0,3544($a0)
    # Line 220
    addiu	$t9,$t9,-23632
    li	$a2,2
    addiu	$a1,$sp,0
    bal __glOdysseySetProgram
    # Line 218
    swc1	$f0,12($sp)
    ld	$ra,16($sp)
    # Line 221
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyRasterPos2

# Function: __glOdysseyRasterPos3
# Declared: Line 224 (Source lines: 225-234)
# Address: 0x0d9ca9c0 - 0x0d9caa1c (Size: 92 bytes, Frame: 32)
.globl __glOdysseyRasterPos3
.ent __glOdysseyRasterPos3
__glOdysseyRasterPos3:
    # Line 228
    lwc1	$f3,0($a1)
    # Line 225
    addiu	$sp,$sp,-32
    sd	$gp,24($sp)
    # Line 228
    swc1	$f3,0($sp)
    # Line 229
    lwc1	$f2,4($a1)
    # Line 225
    sd	$ra,16($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,-9264
    # Line 229
    swc1	$f2,4($sp)
    # Line 225
    addu	$gp,$t9,$ra
    # Line 230
    lwc1	$f1,8($a1)
    # Line 233
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 230
    swc1	$f1,8($sp)
    # Line 231
    lwc1	$f0,3544($a0)
    # Line 233
    addiu	$t9,$t9,-23632
    li	$a2,3
    addiu	$a1,$sp,0
    bal __glOdysseySetProgram
    # Line 231
    swc1	$f0,12($sp)
    ld	$ra,16($sp)
    # Line 234
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyRasterPos3

# Function: __glOdysseyRasterPos4
# Declared: Line 236 (Source lines: 237-246)
# Address: 0x0d9caa20 - 0x0d9caa7c (Size: 92 bytes, Frame: 32)
.globl __glOdysseyRasterPos4
.ent __glOdysseyRasterPos4
__glOdysseyRasterPos4:
    # Line 240
    lwc1	$f3,0($a1)
    # Line 237
    addiu	$sp,$sp,-32
    sd	$gp,24($sp)
    # Line 240
    swc1	$f3,0($sp)
    # Line 241
    lwc1	$f2,4($a1)
    # Line 237
    sd	$ra,16($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,-9360
    # Line 241
    swc1	$f2,4($sp)
    # Line 237
    addu	$gp,$t9,$ra
    # Line 242
    lwc1	$f1,8($a1)
    # Line 245
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 242
    swc1	$f1,8($sp)
    # Line 245
    addiu	$t9,$t9,-23632
    # Line 243
    lwc1	$f0,12($a1)
    # Line 245
    li	$a2,4
    addiu	$a1,$sp,0
    bal __glOdysseySetProgram
    # Line 243
    swc1	$f0,12($sp)
    ld	$ra,16($sp)
    # Line 246
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyRasterPos4

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

