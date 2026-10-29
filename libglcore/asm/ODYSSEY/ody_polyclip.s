# Source: ../ODYSSEY/ody_polyclip.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_polyclip.c
# Total Functions: 5

.text

# Function: __glOdysseyClipToPlaneObj
# Declared: Line 23 (Source lines: 25-99)
# Address: 0x0d9ed690 - 0x0d9ed8c8 (Size: 568 bytes, Frame: 128)
.ent __glOdysseyClipToPlaneObj
__glOdysseyClipToPlaneObj:
    # Line 35
    lw	$v0,12152($a0)
    # Line 25
    addiu	$sp,$sp,-128
    sd	$s2,56($sp)
    sd	$s5,40($sp)
    sd	$s3,16($sp)
    # Line 38
    lwc1	$f5,4($a4)
    # Line 25
    sd	$s6,24($sp)
    # Line 37
    sll	$s6,$a2,0x2
    # Line 25
    sd	$s4,32($sp)
    # Line 37
    addu	$s6,$a1,$s6
    lw	$s4,-4($s6)
    # Line 38
    lwc1	$f4,0($a4)
    lwc1	$f8,16($s4)
    lwc1	$f6,20($s4)
    lwc1	$f7,8($a4)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,24($s4)
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f6,28($s4)
    lwc1	$f5,12($a4)
    # Line 25
    sd	$s7,48($sp)
    # Line 34
    lui	$s7,0x2
    # Line 38
    madd.s	$f4,$f4,$f7,$f8
    # Line 25
    move	$s3,$a3
    # Line 34
    addu	$s7,$a0,$s7
    sd	$s7,8($sp)
    # Line 25
    move	$s5,$a4
    # Line 34
    lw	$s7,-25208($s7)
    # Line 38
    blez	$a2,.L0d9ed890
    madd.s	$f4,$f4,$f5,$f6
    sdc1	$f20,80($sp)
    sd	$ra,96($sp)
    sd	$s1,104($sp)
    sdc1	$f22,88($sp)
    mtc1	$zero,$f22
    sd	$s0,120($sp)
    move	$s2,$zero
    move	$s0,$a1
    sd	$s8,112($sp)
    addiu	$s8,$s7,-408
    b	.L0d9ed8bc
    sd	$v0,0($sp)
    nop
    nop
.L0d9ed740:
    # Line 42
    beqz	$a0,.L0d9ed7fc
    # Line 54
    ld	$t9,0($sp)
    # Line 48
    addiu	$s3,$s3,4
    # Line 49
    addiu	$s2,$s2,1
    # Line 48
    sw	$s1,-4($s3)
.L0d9ed754:
    # Line 40
    addiu	$s0,$s0,4
    # Line 94
    move	$s4,$s1
    # Line 42
    li	$a0,1
    # Line 40
    beq	$s0,$s6,.L0d9ed84c
    # Line 95
    mov.s	$f4,$f20
    # Line 42
    lwc1	$f21,4($s5)
.L0d9ed76c:
    # Line 41
    lw	$s1,0($s0)
    # Line 42
    lwc1	$f20,0($s5)
    lwc1	$f27,16($s1)
    lwc1	$f23,20($s1)
    lwc1	$f25,8($s5)
    mul.s	$f20,$f20,$f27
    lwc1	$f27,24($s1)
    madd.s	$f20,$f20,$f21,$f23
    lwc1	$f23,28($s1)
    lwc1	$f21,12($s5)
    madd.s	$f20,$f20,$f25,$f27
    madd.s	$f20,$f20,$f21,$f23
    c.le.s $f22,$f20
    c.le.s	$f22,$f4
    bc1t .L0d9ed740
    movf	$a0,$zero,$fcc0
    # Line 60
    beqz	$a0,.L0d9ed754
    # Line 77
    ld	$t9,0($sp)
    move	$a2,$s4
    move	$a1,$s1
    sub.s	$f15,$f4,$f20
    # Line 76
    addiu	$s8,$s8,408
    sd	$s8,64($sp)
    addiu	$s7,$s7,408
    sd	$s7,72($sp)
    # Line 77
    move	$a0,$s8
    jalr	$t9
    div.s	$f15,$f4,$f15
    # Line 83
    ld	$t9,72($sp)
    # Line 88
    ld	$t8,64($sp)
    # Line 86
    sb	$zero,-7($t9)
    # Line 88
    addiu	$s3,$s3,4
    # Line 83
    sb	$zero,-224($t9)
    # Line 89
    addiu	$s2,$s2,1
    b	.L0d9ed754
    # Line 88
    sw	$t8,-4($s3)
.L0d9ed7fc:
    # Line 54
    move	$a2,$s1
    move	$a1,$s4
    sub.s	$f15,$f20,$f4
    # Line 53
    addiu	$s8,$s8,408
    sd	$s8,64($sp)
    addiu	$s7,$s7,408
    sd	$s7,72($sp)
    # Line 54
    move	$a0,$s8
    jalr	$t9
    div.s	$f15,$f20,$f15
    # Line 58
    ld	$ra,64($sp)
    # Line 55
    ld	$at,72($sp)
    lbu	$v0,184($s4)
    # Line 57
    sb	$zero,-7($at)
    # Line 59
    addiu	$s3,$s3,8
    # Line 55
    sb	$v0,-224($at)
    # Line 58
    sw	$ra,-8($s3)
    # Line 60
    addiu	$s2,$s2,2
    b	.L0d9ed754
    # Line 59
    sw	$s1,-4($s3)
.L0d9ed84c:
    ld	$a0,8($sp)
    ldc1	$f20,80($sp)
    ldc1	$f22,88($sp)
    ld	$s8,112($sp)
    ld	$s5,40($sp)
    ld	$s1,104($sp)
    ld	$s0,120($sp)
    ld	$s4,32($sp)
    ld	$s6,24($sp)
    ld	$s3,16($sp)
    ld	$ra,96($sp)
    # Line 99
    move	$v0,$s2
    ld	$s2,56($sp)
    # Line 98
    sw	$s7,-25208($a0)
    # Line 99
    ld	$s7,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9ed890:
    ld	$s3,16($sp)
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    # Line 98
    ld	$v1,8($sp)
    # Line 99
    ld	$s6,24($sp)
    # Line 40
    move	$v0,$zero
    move	$s2,$s2
    # Line 98
    sw	$s7,-25208($v1)
    # Line 99
    ld	$s7,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9ed8bc:
    # Line 42
    li	$a0,1
    b	.L0d9ed76c
    lwc1	$f21,4($s5)
.end __glOdysseyClipToPlaneObj

# Function: __glOdysseyDoTriangleClip
# Declared: Line 112 (Source lines: 114-199)
# Address: 0x0d9ed8d0 - 0x0d9edb68 (Size: 664 bytes, Frame: 176)
.globl __glOdysseyDoTriangleClip
.ent __glOdysseyDoTriangleClip
__glOdysseyDoTriangleClip:
    # Line 126
    lui	$v0,0x2
    # Line 114
    addiu	$sp,$sp,-944
    # Line 126
    addu	$v0,$a0,$v0
    sd	$v0,840($sp)
    sd	$ra,832($sp)
    sd	$gp,912($sp)
    # Line 114
    sd	$s0,872($sp)
    sd	$s5,856($sp)
    sd	$s7,880($sp)
    sd	$s6,896($sp)
    # Line 130
    addiu	$s6,$sp,0
    # Line 114
    sd	$s1,864($sp)
    move	$s1,$a3
    move	$s7,$a2
    sd	$s8,848($sp)
    move	$s5,$a0
    lui	$t8,0x11
    sd	$s2,920($sp)
    move	$s0,$a1
    addiu	$t8,$t8,-21312
    sd	$s3,904($sp)
    addu	$gp,$t9,$t8
    # Line 121
    lui	$s3,0x1
    # Line 114
    sd	$s4,888($sp)
    # Line 130
    ori	$s2,$s3,0x6748
    # Line 121
    addu	$s8,$s3,$a0
    # Line 120
    lw	$s4,1392($a0)
    # Line 121
    sd	$s8,928($sp)
    # Line 126
    ori	$at,$s3,0x7418
    # Line 130
    addu	$s2,$a0,$s2
    # Line 121
    lw	$s8,-22872($s8)
    # Line 126
    addu	$at,$a0,$at
    # Line 120
    xori	$s4,$s4,0x1d00
    # Line 126
    sw	$at,-25208($v0)
    b	.L0d9ed99c
    # Line 120
    sltiu	$s4,$s4,1
.L0d9ed960:
    # Line 133
    move	$a0,$s5
    move	$a1,$s0
    addiu	$t9,$t9,-10608
    move	$a2,$s7
    move	$a3,$s6
    bal __glOdyim_SoftClipMateriali
    move	$a4,$s2
    # Line 140
    srl	$s1,$s1,0x1
    # Line 133
    slti	$ra,$v0,3
    # Line 141
    addiu	$s2,$s2,16
    # Line 137
    move	$s0,$s6
    # Line 133
    bnez	$ra,.L0d9edb14
    move	$s7,$v0
    # Line 138
    addiu	$s6,$s6,64
    # Line 141
    beqz	$s1,.L0d9ed9b4
.L0d9ed99c:
    # Line 130
    andi	$at,$s1,0x1
    bnez	$at,.L0d9ed960
    # Line 133
    nop	# was lw $t9, -32704($gp) # &sub_0d9f0000
    # Line 140
    srl	$s1,$s1,0x1
    # Line 141
    bnez	$s1,.L0d9ed99c
    addiu	$s2,$s2,16
.L0d9ed9b4:
    ld	$s2,840($sp)
    # Line 150
    move	$s1,$zero
    lui	$v1,0x1
    move	$s6,$zero
    ori	$v1,$v1,0x4400
    sw	$v1,0($s3)
    li	$v0,9
    bgtz	$s7,.L0d9eda20
    sw	$v0,0($s3)
    b	.L0d9edb60
    nop
.L0d9ed9e0:
    # Line 165
    addu	$a0,$s5,$a0
    addu	$a0,$s3,$a0
    sw	$s8,-22888($a0)
    # Line 167
    lw	$t9,-24940($s2)
    jal	sub_0d9f0000
    lw	$a0,0($s0)
    # Line 158
    addiu	$s0,$s0,4
.L0d9ed9fc:
    li	$a2,1
    addiu	$s6,$s6,1
    # Line 186
    addiu	$s1,$s1,1
    li	$a1,3
    slt	$a1,$a1,$s1
    # Line 158
    beq	$s7,$s6,.L0d9eda88
    # Line 186
    movn	$s1,$a2,$a1
    nop
    nop
.L0d9eda20:
    # Line 141
    bnez	$s4,.L0d9edb48
    nop
    # Line 162
    lw	$a2,0($s0)
.L0d9eda2c:
    lbu	$a2,401($a2)
    beqz	$a2,.L0d9eda44
    # Line 174
    nop	# was lw $t9, -30932($gp) # &__glOdysseySetProgram
    # Line 162
    beqz	$s4,.L0d9ed9e0
    # Line 165
    sll	$a0,$s1,0x2
    # Line 174
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
.L0d9eda44:
    # Line 171
    sll	$a4,$s1,0x2
    # Line 174
    li	$a1,1
    # Line 171
    addu	$a4,$s5,$a4
    # Line 174
    move	$a0,$s5
    # Line 171
    addu	$a4,$s3,$a4
    # Line 174
    li	$a3,1
    jal	__glOdysseySetProgram
    # Line 171
    sw	$a3,-22888($a4)
    # Line 176
    lw	$t9,-24936($s2)
    jalr	$t9
    lw	$a0,0($s0)
    # Line 178
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a0,$s5
    jal	__glOdysseySetProgram
    move	$a1,$s8
    b	.L0d9ed9fc
    # Line 158
    addiu	$s0,$s0,4
.L0d9eda88:
    # Line 197
    ld	$t2,928($sp)
.L0d9eda8c:
    # Line 199
    ld	$gp,912($sp)
    ld	$s1,864($sp)
    ld	$s2,920($sp)
    ld	$s4,888($sp)
    ld	$s5,856($sp)
    ld	$s6,896($sp)
    # Line 190
    ld	$a5,928($sp)
    # Line 199
    ld	$s7,880($sp)
    # Line 193
    sw	$s8,-22876($a5)
    # Line 192
    sw	$s8,-22880($a5)
    # Line 191
    sw	$s8,-22884($a5)
    # Line 197
    lui	$a0,0x1
    # Line 190
    sw	$s8,-22888($a5)
    # Line 197
    ori	$a6,$a0,0x4001
    sw	$a6,0($s3)
    lw	$a5,-26892($a5)
    ld	$s0,928($sp)
    li	$t0,250
    # Line 199
    ld	$ra,832($sp)
    # Line 197
    li	$t3,1
    ori	$a7,$a0,0x46
    ori	$t1,$a0,0x443
    beqz	$a5,.L0d9edb00
    # Line 199
    ld	$s8,848($sp)
    # Line 197
    sw	$zero,-26576($t2)
    sw	$t1,0($s3)
    sw	$t0,0($s3)
    sw	$a7,0($s3)
    sw	$a7,0($s3)
.L0d9edb00:
    # Line 199
    ld	$s3,904($sp)
    # Line 197
    sw	$t3,-26576($s0)
    # Line 199
    ld	$s0,872($sp)
    jr	$ra
    addiu	$sp,$sp,944
.L0d9edb14:
    ld	$gp,912($sp)
    ld	$s0,872($sp)
    ld	$s1,864($sp)
    ld	$s2,920($sp)
    ld	$s3,904($sp)
    ld	$s4,888($sp)
    ld	$s5,856($sp)
    ld	$ra,832($sp)
    ld	$s6,896($sp)
    ld	$s7,880($sp)
    ld	$s8,848($sp)
    jr	$ra
    addiu	$sp,$sp,944
.L0d9edb48:
    # Line 160
    lw	$t9,-24932($s2)
    move	$a0,$s5
    jalr	$t9
    lw	$a1,0($s0)
    b	.L0d9eda2c
    # Line 162
    lw	$a2,0($s0)
.L0d9edb60:
    b	.L0d9eda8c
    # Line 197
    ld	$t2,928($sp)
.end __glOdysseyDoTriangleClip

# Function: __glOdysseySoftClipClipTriangle
# Declared: Line 204 (Source lines: 206-214)
# Address: 0x0d9edb70 - 0x0d9edbb8 (Size: 72 bytes, Frame: 32)
.globl __glOdysseySoftClipClipTriangle
.ent __glOdysseySoftClipClipTriangle
__glOdysseySoftClipClipTriangle:
    # Line 206
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    # Line 210
    sw	$a1,0($sp)
    # Line 206
    addiu	$v0,$v0,-21984
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 213
    # lw $t9, -29740($gp) # &__glOdysseyDoTriangleClip
    # Line 211
    sw	$a2,4($sp)
    # Line 213
    li	$a2,3
    addiu	$a1,$sp,0
    # Line 212
    sw	$a3,8($sp)
    # Line 206
    sd	$ra,16($sp)
    # Line 213
    bal __glOdysseyDoTriangleClip
    move	$a3,$a4
    ld	$ra,16($sp)
    # Line 214
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipClipTriangle

# Function: __glOdysseyDoTriangleClipFast
# Declared: Line 216 (Source lines: 218-296)
# Address: 0x0d9edbc0 - 0x0d9ede58 (Size: 664 bytes, Frame: 176)
.globl __glOdysseyDoTriangleClipFast
.ent __glOdysseyDoTriangleClipFast
__glOdysseyDoTriangleClipFast:
    # Line 218
    addiu	$sp,$sp,-944
    sd	$ra,832($sp)
    sd	$s1,872($sp)
    sd	$s3,904($sp)
    sd	$s7,856($sp)
    sd	$s0,880($sp)
    sd	$s5,864($sp)
    # Line 234
    addiu	$s5,$sp,0
    # Line 218
    sd	$s2,920($sp)
    move	$s0,$a3
    move	$s7,$a2
    sd	$s8,848($sp)
    move	$s3,$a0
    sd	$gp,912($sp)
    lui	$t8,0x11
    sd	$s4,888($sp)
    # Line 225
    lui	$s4,0x1
    # Line 218
    addiu	$t8,$t8,-22064
    addu	$gp,$t9,$t8
    # Line 225
    addu	$t8,$s4,$a0
    sd	$t8,928($sp)
    # Line 218
    move	$s1,$a1
    # Line 230
    lui	$s8,0x2
    # Line 218
    sd	$s6,896($sp)
    # Line 230
    addu	$s8,$a0,$s8
    # Line 234
    ori	$s2,$s4,0x6748
    # Line 224
    lw	$s6,1392($a0)
    # Line 230
    ori	$at,$s4,0x7418
    # Line 234
    addu	$s2,$a0,$s2
    # Line 225
    lw	$t8,-22872($t8)
    # Line 230
    addu	$at,$a0,$at
    sw	$at,-25208($s8)
    # Line 224
    xori	$s6,$s6,0x1d00
    # Line 225
    sd	$t8,840($sp)
    b	.L0d9edc8c
    # Line 224
    sltiu	$s6,$s6,1
.L0d9edc50:
    # Line 237
    move	$a0,$s3
    move	$a1,$s1
    addiu	$t9,$t9,-10608
    move	$a2,$s7
    move	$a3,$s5
    bal __glOdyim_SoftClipMateriali
    move	$a4,$s2
    # Line 244
    srl	$s0,$s0,0x1
    # Line 237
    slti	$ra,$v0,3
    # Line 245
    addiu	$s2,$s2,16
    # Line 241
    move	$s1,$s5
    # Line 237
    bnez	$ra,.L0d9ede0c
    move	$s7,$v0
    # Line 242
    addiu	$s5,$s5,64
    # Line 245
    beqz	$s0,.L0d9edca4
.L0d9edc8c:
    # Line 234
    andi	$at,$s0,0x1
    bnez	$at,.L0d9edc50
    # Line 237
    nop	# was lw $t9, -32704($gp) # &sub_0d9f0000
    # Line 244
    srl	$s0,$s0,0x1
    # Line 245
    bnez	$s0,.L0d9edc8c
    addiu	$s2,$s2,16
.L0d9edca4:
    ld	$s2,840($sp)
    # Line 254
    move	$s0,$zero
    lui	$v1,0x1
    move	$s5,$zero
    ori	$v1,$v1,0x4400
    sw	$v1,0($s4)
    li	$v0,9
    bgtz	$s7,.L0d9edcfc
    sw	$v0,0($s4)
    b	.L0d9edd90
    nop
.L0d9edcd0:
    # Line 273
    lw	$t9,-24940($s8)
    jal	sub_0d9f0000
    nop
    # Line 263
    addiu	$s1,$s1,4
.L0d9edce0:
    li	$a1,1
    addiu	$s5,$s5,1
    # Line 288
    addiu	$s0,$s0,1
    li	$a0,3
    slt	$a0,$a0,$s0
    # Line 263
    beq	$s7,$s5,.L0d9edd90
    # Line 288
    movn	$s0,$a1,$a0
.L0d9edcfc:
    # Line 245
    bnez	$s6,.L0d9ede40
    nop
    # Line 265
    lw	$a0,0($s1)
.L0d9edd08:
    lbu	$a1,401($a0)
    sll	$a2,$s0,0x2
    addu	$a2,$s3,$a2
    beqz	$a1,.L0d9edd48
    addu	$a2,$s4,$a2
    bnez	$s6,.L0d9edd48
    nop
    lw	$a3,-22888($a2)
    beq	$a3,$s2,.L0d9edcd0
    # Line 270
    nop	# was lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a1,$s2
    move	$a0,$s3
    jal	__glOdysseySetProgram
    # Line 269
    sw	$s2,-22888($a2)
    b	.L0d9edcd0
    # Line 270
    lw	$a0,0($s1)
.L0d9edd48:
    # Line 273
    sll	$a2,$s0,0x2
    addu	$a2,$s3,$a2
    addu	$a2,$s4,$a2
    lw	$a3,-22888($a2)
    li	$a4,1
    beq	$a3,$a4,.L0d9edd7c
    # Line 279
    nop	# was lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a1,$a4
    move	$a0,$s3
    li	$a3,1
    jal	__glOdysseySetProgram
    # Line 278
    sw	$a3,-22888($a2)
    # Line 279
    lw	$a0,0($s1)
.L0d9edd7c:
    # Line 281
    lw	$t9,-24936($s8)
    jalr	$t9
    nop
    b	.L0d9edce0
    # Line 263
    addiu	$s1,$s1,4
.L0d9edd90:
    # Line 294
    ld	$t1,928($sp)
    # Line 296
    ld	$gp,912($sp)
    ld	$s0,880($sp)
    ld	$s1,872($sp)
    ld	$s2,920($sp)
    ld	$s3,904($sp)
    ld	$s5,864($sp)
    ld	$s6,896($sp)
    ld	$s7,856($sp)
    # Line 294
    lui	$a0,0x1
    ld	$a4,928($sp)
    ori	$a5,$a0,0x4001
    sw	$a5,0($s4)
    lw	$a4,-26892($a4)
    # Line 296
    ld	$ra,832($sp)
    # Line 294
    li	$a7,250
    ld	$t3,928($sp)
    li	$t2,1
    ori	$a6,$a0,0x46
    # Line 296
    ld	$s8,848($sp)
    # Line 294
    beqz	$a4,.L0d9eddfc
    ori	$t0,$a0,0x443
    sw	$zero,-26576($t1)
    sw	$t0,0($s4)
    sw	$a7,0($s4)
    sw	$a6,0($s4)
    sw	$a6,0($s4)
.L0d9eddfc:
    # Line 296
    ld	$s4,888($sp)
    addiu	$sp,$sp,944
    jr	$ra
    # Line 294
    sw	$t2,-26576($t3)
.L0d9ede0c:
    # Line 296
    ld	$gp,912($sp)
    ld	$s0,880($sp)
    ld	$s1,872($sp)
    ld	$s2,920($sp)
    ld	$s3,904($sp)
    ld	$s4,888($sp)
    ld	$s5,864($sp)
    ld	$ra,832($sp)
    ld	$s6,896($sp)
    ld	$s7,856($sp)
    ld	$s8,848($sp)
    jr	$ra
    addiu	$sp,$sp,944
.L0d9ede40:
    # Line 264
    lw	$t9,-24932($s8)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,0($s1)
    b	.L0d9edd08
    # Line 265
    lw	$a0,0($s1)
.end __glOdysseyDoTriangleClipFast

# Function: __glOdysseySoftClipClipTriangleFast
# Declared: Line 301 (Source lines: 303-311)
# Address: 0x0d9ede60 - 0x0d9edea8 (Size: 72 bytes, Frame: 32)
.globl __glOdysseySoftClipClipTriangleFast
.ent __glOdysseySoftClipClipTriangleFast
__glOdysseySoftClipClipTriangleFast:
    # Line 303
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    # Line 307
    sw	$a1,0($sp)
    # Line 303
    addiu	$v0,$v0,-22736
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 310
    # lw $t9, -29732($gp) # &__glOdysseyDoTriangleClipFast
    # Line 308
    sw	$a2,4($sp)
    # Line 310
    li	$a2,3
    addiu	$a1,$sp,0
    # Line 309
    sw	$a3,8($sp)
    # Line 303
    sd	$ra,16($sp)
    # Line 310
    bal __glOdysseyDoTriangleClipFast
    move	$a3,$a4
    ld	$ra,16($sp)
    # Line 311
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipClipTriangleFast

