# Source: ../ODYSSEY/ody_linedraw.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_linedraw.c
# Total Functions: 2

.text

# Function: __glOdysseySoftClipRenderLine
# Declared: Line 23 (Source lines: 25-183)
# Address: 0x0d9ec690 - 0x0d9ecae4 (Size: 1108 bytes, Frame: 208)
.globl __glOdysseySoftClipRenderLine
.ent __glOdysseySoftClipRenderLine
__glOdysseySoftClipRenderLine:
    # Line 32
    lbu	$a5,401($a2)
    # Line 31
    lbu	$a4,401($a1)
    # Line 29
    lw	$a7,28128($a0)
    # Line 25
    addiu	$sp,$sp,-80
    sd	$a2,16($sp)
    sd	$s2,64($sp)
    sd	$gp,48($sp)
    sd	$s3,24($sp)
    move	$s3,$a0
    # Line 32
    li	$v0,7424
    lw	$at,1392($a0)
    # Line 25
    lui	$v1,0x11
    sd	$s1,40($sp)
    # Line 30
    lui	$s1,0x1
    # Line 25
    addiu	$v1,$v1,-16640
    sd	$s0,32($sp)
    # Line 30
    addu	$s0,$s1,$a0
    # Line 25
    addu	$gp,$t9,$v1
    # Line 32
    beq	$at,$v0,.L0d9eca3c
    # Line 30
    lw	$a6,-22872($s0)
.L0d9ec6e0:
    # Line 51
    lw	$t8,31600($s3)
    dsll32	$t8,$t8,0x9
    lui	$s2,0x2
    bgez	$t8,.L0d9ec874
    addu	$s2,$s3,$s2
.L0d9ec6f4:
    # Line 136
    lui	$t9,0x1
.L0d9ec6f8:
    ori	$t9,$t9,0x4400
    sw	$t9,0($s1)
    li	$a7,1
    # Line 140
    beqz	$a4,.L0d9ec814
    # Line 136
    sw	$a7,0($s1)
    # Line 140
    beqz	$a5,.L0d9ec7b0
    nop
    # Line 143
    sw	$a6,-22884($s0)
    # Line 142
    sw	$a6,-22888($s0)
    # Line 144
    lw	$t9,-24940($s2)
    sd	$ra,56($sp)
    jalr	$t9
    move	$a0,$a1
    # Line 145
    lw	$t9,-24940($s2)
    jalr	$t9
    ld	$a0,16($sp)
    # Line 181
    lui	$a0,0x1
.L0d9ec73c:
    ori	$v0,$a0,0x4001
    sw	$v0,0($s1)
    lw	$at,-26892($s0)
    ld	$s2,64($sp)
    li	$a1,1
    beqz	$at,.L0d9ec778
    ld	$ra,56($sp)
    sw	$zero,-26576($s0)
    ori	$a3,$a0,0x443
    sw	$a3,0($s1)
    li	$a2,250
    sw	$a2,0($s1)
    ori	$v1,$a0,0x46
    sw	$v1,0($s1)
    sw	$v1,0($s1)
.L0d9ec778:
    # Line 183
    ld	$gp,48($sp)
    # Line 181
    sw	$a1,-26576($s0)
    # Line 183
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9ec794:
    ld	$s3,24($sp)
.L0d9ec798:
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9ec7b0:
    # Line 147
    beqz	$a4,.L0d9ec814
    nop
    sd	$a6,8($sp)
    # Line 156
    beqz	$a5,.L0d9eca94
    sd	$ra,56($sp)
.L0d9ec7c4:
    # Line 169
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    sd	$a1,0($sp)
    li	$a1,1
    # Line 168
    li	$a4,1
    sw	$a4,-22884($s0)
    # Line 169
    move	$a0,$s3
    jal	__glOdysseySetProgram
    # Line 167
    sw	$a4,-22888($s0)
    # Line 170
    lw	$t9,-24936($s2)
    jalr	$t9
    ld	$a0,0($sp)
    # Line 171
    lw	$t9,-24936($s2)
    jalr	$t9
    ld	$a0,16($sp)
    # Line 172
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a0,$s3
    jal	__glOdysseySetProgram
    ld	$a1,8($sp)
    b	.L0d9ec73c
    # Line 181
    lui	$a0,0x1
.L0d9ec814:
    sd	$a6,8($sp)
    sd	$a1,0($sp)
    # Line 147
    beqz	$a5,.L0d9ec7c4
    sd	$ra,56($sp)
    # Line 150
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    li	$a1,1
    move	$a0,$s3
    li	$a5,1
    jal	__glOdysseySetProgram
    # Line 149
    sw	$a5,-22888($s0)
    # Line 151
    lw	$t9,-24936($s2)
    jalr	$t9
    ld	$a0,0($sp)
    # Line 152
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a0,$s3
    jal	__glOdysseySetProgram
    ld	$a1,8($sp)
    # Line 153
    ld	$a6,8($sp)
    sw	$a6,-22884($s0)
    # Line 154
    lw	$t9,-24940($s2)
    jalr	$t9
    ld	$a0,16($sp)
    b	.L0d9ec73c
    # Line 181
    lui	$a0,0x1
.L0d9ec874:
    # Line 73
    lwc1	$f9,-27208($s0)
    lwc1	$f11,-27204($s0)
    lwc1	$f17,20($a1)
    lwc1	$f19,16($a1)
    lwc1	$f10,-27200($s0)
    lwc1	$f18,24($a1)
    mul.s	$f6,$f17,$f11
    lwc1	$f8,-27196($s0)
    madd.s	$f6,$f6,$f19,$f9
    lwc1	$f16,28($a1)
    madd.s	$f6,$f6,$f18,$f10
    madd.s	$f6,$f6,$f16,$f8
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f6
    div.d	$f6,$f5,$f6
    # Line 77
    ld	$a7,16($sp)
    lwc1	$f7,20($a7)
    lwc1	$f12,16($a7)
    mul.s	$f7,$f7,$f11
    lwc1	$f11,24($a7)
    # Line 82
    lwc1	$f14,-27252($s0)
    # Line 77
    madd.s	$f7,$f7,$f9,$f12
    lwc1	$f9,28($a7)
    # Line 82
    lwc1	$f15,-27256($s0)
    # Line 77
    madd.s	$f7,$f7,$f10,$f11
    # Line 82
    mul.s	$f14,$f14,$f17
    lwc1	$f17,-27248($s0)
    # Line 77
    madd.s	$f7,$f7,$f8,$f9
    # Line 82
    madd.s	$f14,$f14,$f15,$f19
    lwc1	$f15,-27244($s0)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    # Line 77
    cvt.d.s	$f7,$f7
    div.d	$f5,$f5,$f7
    # Line 73
    cvt.s.d	$f6,$f6
    # Line 82
    mul.s	$f14,$f6,$f14
    swc1	$f14,128($a1)
    # Line 87
    lwc1	$f11,16($a7)
    lwc1	$f13,20($a7)
    lwc1	$f9,-27252($s0)
    lwc1	$f10,-27256($s0)
    lwc1	$f12,-27248($s0)
    mul.s	$f9,$f9,$f13
    lwc1	$f13,24($a7)
    madd.s	$f9,$f9,$f10,$f11
    lwc1	$f11,28($a7)
    lwc1	$f10,-27244($s0)
    madd.s	$f9,$f9,$f12,$f13
    madd.s	$f9,$f9,$f10,$f11
    # Line 77
    cvt.s.d	$f5,$f5
    # Line 87
    mul.s	$f10,$f5,$f9
    swc1	$f10,128($a7)
    # Line 100
    lwc1	$f4,-25188($s2)
    madd.s	$f4,$f4,$f5,$f9
    # Line 101
    dmtc1	$zero,$f11
    cvt.d.s	$f0,$f4
    # Line 111
    ld	$t0,16($sp)
    # Line 101
    lwc1	$f12,-25180($s2)
    c.le.d	$f11,$f0
    # Line 106
    lwc1	$f13,-27236($s0)
    lwc1	$f14,-27240($s0)
    # Line 101
    bc1f	.L0d9ec990
    lwc1	$f7,-25176($s2)
    c.lt.s $f4,$f7
    bc1f .L0d9ec990
    nop
    madd.s	$f12,$f12,$f5,$f9
    lwc1	$f8,128($a1)
    c.le.s $f8,$f12
    bc1t .L0d9ec794
    nop
.L0d9ec990:
    # Line 106
    lwc1	$f16,20($a1)
    lwc1	$f15,16($a1)
    lwc1	$f17,24($a1)
    mul.s	$f13,$f13,$f16
    lwc1	$f16,-27232($s0)
    madd.s	$f13,$f13,$f14,$f15
    lwc1	$f15,28($a1)
    lwc1	$f14,-27228($s0)
    madd.s	$f13,$f13,$f16,$f17
    madd.s	$f13,$f13,$f14,$f15
    mul.s	$f13,$f6,$f13
    swc1	$f13,132($a1)
    # Line 111
    lwc1	$f9,16($t0)
    lwc1	$f12,20($t0)
    lwc1	$f7,-27236($s0)
    lwc1	$f8,-27240($s0)
    lwc1	$f10,-27232($s0)
    mul.s	$f7,$f7,$f12
    lwc1	$f12,24($t0)
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f9,28($t0)
    lwc1	$f8,-27228($s0)
    madd.s	$f7,$f7,$f10,$f12
    madd.s	$f7,$f7,$f8,$f9
    mul.s	$f8,$f5,$f7
    swc1	$f8,132($t0)
    # Line 124
    lwc1	$f4,-25184($s2)
    madd.s	$f4,$f4,$f5,$f7
    # Line 125
    cvt.d.s	$f13,$f4
    c.le.d $f11,$f13
    lwc1	$f19,-25180($s2)
    bc1f .L0d9ec6f4
    lwc1	$f17,-25176($s2)
    c.lt.s $f4,$f17
    bc1f .L0d9ec6f8
    # Line 136
    lui	$t9,0x1
    # Line 125
    madd.s	$f19,$f19,$f5,$f7
    lwc1	$f18,132($a1)
    c.le.s $f18,$f19
    bc1f .L0d9ec6f8
    # Line 136
    lui	$t9,0x1
    b	.L0d9ec798
    ld	$s3,24($sp)
.L0d9eca3c:
    # Line 45
    lw	$s2,12076($a0)
    # Line 46
    la	$t2,__glNop
    sw	$t2,12076($a0)
    lw	$t1,0($a7)
    # Line 42
    lw	$a2,28132($a0)
    # Line 46
    nor	$t1,$t1,$zero
    and	$t1,$a2,$t1
    beqz	$t1,.L0d9eca88
    # Line 51
    move	$a5,$zero
    # Line 49
    lw	$t9,12($a7)
    sd	$a6,8($sp)
    sd	$a1,0($sp)
    sd	$ra,56($sp)
    jalr	$t9
    move	$a1,$a7
    ld	$ra,56($sp)
    ld	$a1,0($sp)
    ld	$a6,8($sp)
    # Line 51
    move	$a5,$zero
.L0d9eca88:
    sw	$s2,12076($s3)
    b	.L0d9ec6e0
    move	$a4,$zero
.L0d9eca94:
    # Line 158
    ld	$t3,8($sp)
    sw	$t3,-22888($s0)
    # Line 159
    lw	$t9,-24940($s2)
    jalr	$t9
    move	$a0,$a1
    # Line 161
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    li	$a1,1
    move	$a0,$s3
    li	$t8,1
    jal	__glOdysseySetProgram
    # Line 160
    sw	$t8,-22884($s0)
    # Line 162
    lw	$t9,-24936($s2)
    jalr	$t9
    ld	$a0,16($sp)
    # Line 163
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a0,$s3
    jal	__glOdysseySetProgram
    ld	$a1,8($sp)
    b	.L0d9ec73c
    # Line 181
    lui	$a0,0x1
.end __glOdysseySoftClipRenderLine

# Function: __glOdysseySoftClipProcessLine
# Declared: Line 189 (Source lines: 191-223)
# Address: 0x0d9ecaf0 - 0x0d9ecc18 (Size: 296 bytes, Frame: 192)
.globl __glOdysseySoftClipProcessLine
.ent __glOdysseySoftClipProcessLine
__glOdysseySoftClipProcessLine:
    # Line 191
    lw	$a4,4($a2)
    lw	$a5,4($a1)
    lui	$at,0x11
    or	$v0,$a5,$a4
    addiu	$sp,$sp,-64
    addiu	$at,$at,-17760
    sd	$gp,40($sp)
    beqz	$v0,.L0d9ecc00
    addu	$gp,$t9,$at
    and	$v0,$a5,$a4
    beqz	$v0,.L0d9ecb2c
    nop
.L0d9ecb20:
    # Line 223
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ecb2c:
    # Line 211
    lw	$a5,12076($a0)
    # Line 212
    la	$a4,__glNop
    sw	$a4,12076($a0)
    lw	$a3,0($a1)
    # Line 204
    lw	$v1,28132($a0)
    # Line 212
    nor	$a3,$a3,$zero
    # Line 204
    sd	$v1,32($sp)
    # Line 212
    and	$v1,$v1,$a3
    beqz	$v1,.L0d9ecb8c
    # Line 211
    sd	$a5,24($sp)
    sd	$a1,0($sp)
    sd	$a2,8($sp)
    # Line 214
    ld	$t9,0($sp)
    ld	$a2,32($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jalr	$t9
    ld	$a0,16($sp)
    ld	$ra,48($sp)
    ld	$a0,16($sp)
    ld	$a1,0($sp)
    ld	$a2,8($sp)
.L0d9ecb8c:
    lw	$v0,0($a2)
    ld	$at,32($sp)
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sd	$a0,16($sp)
    beqz	$at,.L0d9ecbd0
    sd	$ra,48($sp)
    sd	$a2,8($sp)
    # Line 215
    ld	$t9,8($sp)
    sd	$a1,0($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a2,32($sp)
    ld	$a1,0($sp)
    ld	$a2,8($sp)
.L0d9ecbd0:
    # Line 216
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,12540($t9)
    jalr	$t9
    nop
    # Line 223
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    # Line 218
    ld	$v0,16($sp)
    ld	$at,24($sp)
    # Line 223
    addiu	$sp,$sp,64
    jr	$ra
    # Line 218
    sw	$at,12076($v0)
.L0d9ecc00:
    # Line 221
    lw	$t9,12528($a0)
    sd	$ra,48($sp)
    jalr	$t9
    nop
    b	.L0d9ecb20
    ld	$ra,48($sp)
.end __glOdysseySoftClipProcessLine

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

