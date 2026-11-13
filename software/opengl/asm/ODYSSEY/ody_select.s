# Source: ../ODYSSEY/ody_select.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_select.c
# Total Functions: 30

.text

# Function: VbufCopy
# Declared: Line 35 (Source lines: 37-41)
# Address: 0x0d9cadf0 - 0x0d9cae4c (Size: 92 bytes, Frame: 0)
.ent VbufCopy
VbufCopy:
    # Line 37
    lw	$a5,4($a0)
    sll	$v1,$a2,0x4
    addu	$a6,$a5,$v1
    sll	$v0,$a1,0x4
    lwc1	$f3,0($a6)
    addu	$a5,$a5,$v0
    swc1	$f3,0($a5)
    # Line 38
    lw	$a3,4($a0)
    addu	$a4,$a3,$v1
    lwc1	$f2,4($a4)
    addu	$a3,$a3,$v0
    swc1	$f2,4($a3)
    # Line 39
    lw	$a1,4($a0)
    addu	$a2,$a1,$v1
    lwc1	$f1,8($a2)
    addu	$a1,$a1,$v0
    swc1	$f1,8($a1)
    # Line 40
    lw	$at,4($a0)
    addu	$v1,$at,$v1
    lwc1	$f0,12($v1)
    addu	$at,$at,$v0
    # Line 41
    jr	$ra
    # Line 40
    swc1	$f0,12($at)
.end VbufCopy

# Function: ProcessOverflow
# Declared: Line 51 (Source lines: 52-90)
# Address: 0x0d9cae50 - 0x0d9caf70 (Size: 288 bytes, Frame: 32)
.ent ProcessOverflow
ProcessOverflow:
    # Line 52
    addiu	$sp,$sp,-32
    sd	$s0,24($sp)
    # Line 54
    lw	$s0,4112($zero)
    # Line 60
    # lw $t9, -30908($gp) # &__glTRim_End
    # Line 59
    lui	$t8,0x1
    # Line 54
    sd	$s0,8($sp)
    # Line 59
    addu	$s0,$s0,$t8
    lw	$at,26860($s0)
    sd	$ra,16($sp)
    ori	$at,$at,0x1
    # Line 60
    bal __glTRim_End
    # Line 59
    sw	$at,26860($s0)
    # Line 60
    lw	$a1,26864($s0)
    la	$a0,sub_0daf0000
    sltiu	$a2,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,-27852
    beqz	$a2,.L0d9caecc
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    # Line 71
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9caea8:
    # Line 89
    lw	$a2,26860($s0)
    # Line 90
    ld	$ra,16($sp)
    # Line 66
    sw	$zero,26852($s0)
    # Line 89
    li	$a3,-2
    and	$a2,$a2,$a3
    sw	$a2,26860($s0)
    # Line 90
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9caecc:
    ld	$ra,16($sp)
    # Line 85
    sw	$zero,26852($s0)
.L0d9caed4:
    # Line 89
    lw	$a4,26860($s0)
    li	$a5,-2
    and	$a4,$a4,$a5
    sw	$a4,26860($s0)
    # Line 90
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9caef0:
    # Line 71
    li	$a2,119
    ld	$a0,8($sp)
    lui	$a3,0x1
    addiu	$t9,$t9,-21008
    li	$a1,1
    ori	$a3,$a3,0x68d8
    bal __glOdysseyInitRGB
    addu	$a0,$a0,$a3
    ld	$ra,16($sp)
    # Line 72
    li	$at,2
    # Line 73
    b	.L0d9caed4
    # Line 72
    sw	$at,26852($s0)
.L0d9caf20:
    # Line 80
    # lw $t9, -32712($gp) # &sub_0d9d0000
    li	$a2,118
    ld	$a0,8($sp)
    lui	$a3,0x1
    addiu	$t9,$t9,-21008
    move	$a1,$zero
    ori	$a3,$a3,0x68d8
    addu	$a0,$a0,$a3
    bal __glOdysseyInitRGB
    sd	$a0,0($sp)
    # Line 81
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-21008
    li	$a2,119
    ld	$a0,0($sp)
    bal __glOdysseyInitRGB
    li	$a1,1
    ld	$ra,16($sp)
    # Line 82
    li	$at,2
    # Line 83
    b	.L0d9caed4
    # Line 82
    sw	$at,26852($s0)
.end ProcessOverflow

# Function: Pass
# Declared: Line 100 (Source lines: 101-147)
# Address: 0x0d9caf70 - 0x0d9cb05c (Size: 236 bytes, Frame: 32)
.ent Pass
Pass:
    # Line 101
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 104
    lw	$s1,4112($zero)
    # Line 101
    sd	$s2,0($sp)
    # Line 114
    lui	$s2,0x1
    addu	$s1,$s1,$s2
    lw	$at,26852($s1)
    lw	$s2,26856($s1)
    sltu	$at,$s2,$at
    beqz	$at,.L0d9cafd8
    sd	$ra,16($sp)
    sd	$s0,24($sp)
    sll	$s0,$s2,0x4
    nop
    nop
    nop
.L0d9cafb0:
    # Line 116
    lw	$t9,26952($s1)
    lw	$a0,26844($s1)
    jalr	$t9
    addu	$a0,$a0,$s0
    # Line 114
    lw	$a1,26852($s1)
    addiu	$s2,$s2,1
    sltu	$a1,$s2,$a1
    bnez	$a1,.L0d9cafb0
    addiu	$s0,$s0,16
    ld	$s0,24($sp)
.L0d9cafd8:
    lw	$a1,26860($s1)
    lw	$a3,26864($s1)
    andi	$a2,$a1,0x1
    ld	$s2,0($sp)
    sltiu	$a4,$a3,10
    sll	$a3,$a3,0x2
    ld	$ra,16($sp)
    beqz	$a2,.L0d9cb03c
    # Line 139
    ori	$a5,$a1,0x2
    # Line 114
    la	$a2,sub_0daf0000
    addiu	$a2,$a2,-27812
    beqz	$a4,.L0d9cb01c
    addu	$a2,$a2,$a3
    lw	$a3,0($a2)
    jr	$a3
    # Line 133
    li	$a4,2
.L0d9cb018:
    sw	$a4,26856($s1)
.L0d9cb01c:
    # Line 139
    sw	$a5,26860($s1)
    # Line 147
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cb02c:
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cb034:
    # Line 125
    b	.L0d9cb01c
    # Line 124
    sw	$zero,26856($s1)
.L0d9cb03c:
    # Line 145
    lw	$t9,26872($s1)
    # Line 144
    sw	$zero,26860($s1)
    # Line 143
    sw	$zero,26856($s1)
    # Line 145
    jalr	$t9
    # Line 142
    sw	$zero,26852($s1)
    ld	$ra,16($sp)
    b	.L0d9cb02c
    ld	$s1,8($sp)
.end Pass

# Function: Reject
# Declared: Line 158 (Source lines: 159-180)
# Address: 0x0d9cb060 - 0x0d9cb100 (Size: 160 bytes, Frame: 16)
.ent Reject
Reject:
    # Line 161
    lw	$a1,4112($zero)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lw	$a2,26860($a1)
    # Line 168
    li	$a0,6
    # Line 161
    andi	$at,$a2,0x2
    # Line 168
    li	$v1,2
    li	$v0,9
    # Line 161
    beqz	$at,.L0d9cb0a4
    # Line 159
    addiu	$sp,$sp,-16
    # Line 166
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20624
    sd	$ra,0($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb0d8
    ld	$ra,0($sp)
.L0d9cb0a4:
    andi	$at,$a2,0x1
    beqz	$at,.L0d9cb0e0
    nop
    # Line 168
    lw	$a2,26864($a1)
    beq	$a2,$v0,.L0d9cb0d8
    nop
    beq	$a2,$v1,.L0d9cb0d8
    nop
    beq	$a2,$a0,.L0d9cb0d8
    nop
    # Line 173
    sw	$zero,26856($a1)
    # Line 180
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb0d8:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb0e0:
    # Line 177
    sw	$zero,26860($a1)
    # Line 178
    lw	$t9,26872($a1)
    # Line 176
    sw	$zero,26856($a1)
    sd	$ra,0($sp)
    # Line 178
    jal	sub_0d9d0000
    # Line 175
    sw	$zero,26852($a1)
    b	.L0d9cb0d8
    ld	$ra,0($sp)
.end Reject

# Function: __glTRim_Begin
# Declared: Line 190 (Source lines: 191-232)
# Address: 0x0d9cb100 - 0x0d9cb210 (Size: 272 bytes, Frame: 48)
.globl __glTRim_Begin
.ent __glTRim_Begin
__glTRim_Begin:
    # Line 192
    lw	$a3,4112($zero)
    # Line 195
    lw	$a2,4120($zero)
    lui	$a4,0x1
    addu	$a4,$a3,$a4
    # Line 203
    li	$v1,2
    sltiu	$a1,$a2,1
    # Line 195
    lw	$v0,26980($a4)
    # Line 203
    li	$a5,2
    movz	$v1,$a2,$a1
    # Line 191
    lui	$at,0x13
    movn	$a2,$v1,$v0
    addiu	$sp,$sp,-48
    addiu	$at,$at,-11120
    sd	$gp,24($sp)
    # Line 203
    beqz	$a2,.L0d9cb170
    # Line 191
    addu	$gp,$t9,$at
    sd	$a4,0($sp)
    sd	$a3,16($sp)
    sd	$a0,8($sp)
    # Line 203
    beq	$a2,$a5,.L0d9cb198
    sd	$ra,32($sp)
    # Line 215
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
.L0d9cb164:
    # Line 232
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cb170:
    sd	$a0,8($sp)
    # Line 216
    sltiu	$a6,$a0,10
    sd	$a4,0($sp)
    bnez	$a6,.L0d9cb1d4
    sd	$ra,32($sp)
    # Line 221
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9cb164
    ld	$ra,32($sp)
.L0d9cb198:
    # Line 209
    ld	$t0,0($sp)
    # Line 210
    ld	$a0,16($sp)
    # Line 209
    li	$a7,1
    sb	$a7,26996($t0)
    # Line 210
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    # Line 212
    ld	$t9,16($sp)
    # Line 211
    sw	$zero,4120($zero)
    # Line 212
    lw	$t9,6132($t9)
    lw	$t9,28($t9)
    jalr	$t9
    ld	$a0,8($sp)
    b	.L0d9cb164
    ld	$ra,32($sp)
.L0d9cb1d4:
    # Line 226
    ld	$t9,8($sp)
    sll	$t9,$t9,0x2
    # Line 224
    li	$ra,1
    sw	$ra,4120($zero)
    # Line 226
    addu	$t9,$a3,$t9
    lw	$t9,12084($t9)
    jalr	$t9
    move	$a0,$a3
    # Line 232
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 231
    ld	$v0,0($sp)
    ld	$at,8($sp)
    # Line 232
    addiu	$sp,$sp,48
    jr	$ra
    # Line 231
    sw	$at,26864($v0)
.end __glTRim_Begin

# Function: __glTRim_End
# Declared: Line 245 (Source lines: 246-329)
# Address: 0x0d9cb210 - 0x0d9cb4bc (Size: 684 bytes, Frame: 192)
.globl __glTRim_End
.ent __glTRim_End
__glTRim_End:
    # Line 246
    addiu	$sp,$sp,-64
    sd	$s2,8($sp)
    sd	$s3,16($sp)
    sd	$ra,24($sp)
    # Line 251
    lw	$a2,4112($zero)
    sd	$s4,32($sp)
    lui	$a4,0x1
    sd	$s0,40($sp)
    addu	$a4,$a2,$a4
    lw	$a1,26852($a4)
    sd	$s1,48($sp)
    # Line 246
    lui	$at,0x13
    sd	$s5,56($sp)
    addiu	$at,$at,-11392
    sd	$gp,0($sp)
    # Line 251
    beqz	$a1,.L0d9cb4a4
    # Line 246
    addu	$gp,$t9,$at
    # Line 265
    lw	$s0,26848($a4)
    sll	$s2,$a1,0x4
    addu	$s2,$s0,$s2
    # Line 264
    lw	$s3,29716($a2)
    # Line 265
    addiu	$s2,$s2,-16
    # Line 268
    sltu	$a5,$s2,$s0
    addiu	$s4,$s3,176
    lw	$s1,26844($a4)
    bnez	$a5,.L0d9cb2a4
    # Line 267
    addiu	$s5,$s0,12
    nop
.L0d9cb280:
    # Line 273
    lw	$t9,256($s3)
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s4
    # Line 274
    addiu	$s0,$s0,16
    # Line 275
    sltu	$t8,$s2,$s0
    beqz	$t8,.L0d9cb280
    addiu	$s1,$s1,16
.L0d9cb2a4:
    # Line 291
    lwc1	$f6,-12($s5)
    lwc1	$f4,0($s5)
    c.lt.s	$f4,$f6
    bc1f	.L0d9cb2e0
    move	$s0,$s5
    nop
    nop
.L0d9cb2c0:
    sltu	$t9,$s0,$s2
    beqz	$t9,.L0d9cb42c
    # Line 293
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 291
    lwc1	$f1,4($s0)
    lwc1	$f0,16($s0)
    c.lt.s $f0,$f1
    bc1t .L0d9cb2c0
    addiu	$s0,$s0,16
.L0d9cb2e0:
    # Line 297
    neg.s	$f5,$f4
    c.lt.s $f6,$f5
    bc1f .L0d9cb314
    move	$s0,$s5
.L0d9cb2f0:
    sltu	$ra,$s0,$s2
    beqz	$ra,.L0d9cb440
    # Line 299
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 297
    lwc1	$f3,16($s0)
    lwc1	$f2,4($s0)
    neg.s	$f3,$f3
    c.lt.s $f2,$f3
    bc1t .L0d9cb2f0
    addiu	$s0,$s0,16
.L0d9cb314:
    # Line 303
    lwc1	$f6,-8($s5)
    c.lt.s $f4,$f6
    bc1f .L0d9cb350
    move	$s0,$s5
    nop
    nop
    nop
.L0d9cb330:
    sltu	$at,$s0,$s2
    beqz	$at,.L0d9cb454
    # Line 305
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 303
    lwc1	$f8,8($s0)
    lwc1	$f7,16($s0)
    c.lt.s $f7,$f8
    bc1t .L0d9cb330
    addiu	$s0,$s0,16
.L0d9cb350:
    # Line 309
    c.lt.s $f6,$f5
    bc1f .L0d9cb384
    move	$s0,$s5
    nop
.L0d9cb360:
    sltu	$v0,$s0,$s2
    beqz	$v0,.L0d9cb468
    # Line 311
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 309
    lwc1	$f10,16($s0)
    lwc1	$f9,8($s0)
    neg.s	$f10,$f10
    c.lt.s $f9,$f10
    bc1t .L0d9cb360
    addiu	$s0,$s0,16
.L0d9cb384:
    # Line 315
    lwc1	$f6,-4($s5)
    c.lt.s	$f4,$f6
    bc1f	.L0d9cb3c0
    move	$s0,$s5
    nop
    nop
    nop
.L0d9cb3a0:
    sltu	$v1,$s0,$s2
    beqz	$v1,.L0d9cb490
    # Line 317
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 315
    lwc1	$f12,12($s0)
    lwc1	$f11,16($s0)
    c.lt.s $f11,$f12
    bc1t .L0d9cb3a0
    addiu	$s0,$s0,16
.L0d9cb3c0:
    # Line 321
    c.lt.s $f6,$f5
    bc1f .L0d9cb3f4
    move	$s0,$s5
    nop
.L0d9cb3d0:
    sltu	$a0,$s0,$s2
    beqz	$a0,.L0d9cb47c
    # Line 323
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 321
    lwc1	$f14,16($s0)
    lwc1	$f13,12($s0)
    neg.s	$f14,$f14
    c.lt.s $f13,$f14
    bc1t .L0d9cb3d0
    addiu	$s0,$s0,16
.L0d9cb3f4:
    # Line 328
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20624
    bal __glOdysseyInitRGB
    nop
    ld	$s2,8($sp)
.L0d9cb408:
    ld	$s3,16($sp)
    ld	$s4,32($sp)
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    ld	$s1,48($sp)
    ld	$s5,56($sp)
    # Line 329
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9cb42c:
    # Line 293
    addiu	$t9,$t9,-20384
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.L0d9cb440:
    # Line 299
    addiu	$t9,$t9,-20384
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.L0d9cb454:
    # Line 305
    addiu	$t9,$t9,-20384
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.L0d9cb468:
    # Line 311
    addiu	$t9,$t9,-20384
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.L0d9cb47c:
    # Line 323
    addiu	$t9,$t9,-20384
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.L0d9cb490:
    # Line 317
    addiu	$t9,$t9,-20384
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.L0d9cb4a4:
    # Line 260
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20624
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb408
    ld	$s2,8($sp)
.end __glTRim_End

# Function: __glTRim_Vertex2fv
# Declared: Line 333 (Source lines: 334-349)
# Address: 0x0d9cb4c0 - 0x0d9cb54c (Size: 140 bytes, Frame: 16)
.globl __glTRim_Vertex2fv
.ent __glTRim_Vertex2fv
__glTRim_Vertex2fv:
    # Line 337
    lw	$a1,4112($zero)
    # Line 340
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 342
    lwc1	$f3,0($a0)
    # Line 340
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 344
    mtc1	$zero,$f1
    # Line 342
    swc1	$f3,-16($v1)
    # Line 343
    lwc1	$f2,4($a0)
    # Line 344
    swc1	$f1,-8($v1)
    # Line 343
    swc1	$f2,-12($v1)
    # Line 345
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 334
    lui	$at,0x13
    # Line 345
    sltiu	$v0,$v0,120
    # Line 334
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12080
    sd	$gp,0($sp)
    # Line 345
    beqz	$v0,.L0d9cb530
    # Line 334
    addu	$gp,$t9,$at
.L0d9cb524:
    # Line 349
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb530:
    # Line 348
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb524
    ld	$ra,8($sp)
.end __glTRim_Vertex2fv

# Function: __glTRim_Vertex3fv
# Declared: Line 353 (Source lines: 354-369)
# Address: 0x0d9cb550 - 0x0d9cb5dc (Size: 140 bytes, Frame: 16)
.globl __glTRim_Vertex3fv
.ent __glTRim_Vertex3fv
__glTRim_Vertex3fv:
    # Line 357
    lw	$a1,4112($zero)
    # Line 360
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 362
    lwc1	$f3,0($a0)
    # Line 360
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 362
    swc1	$f3,-16($v1)
    # Line 363
    lwc1	$f2,4($a0)
    swc1	$f2,-12($v1)
    # Line 364
    lwc1	$f1,8($a0)
    swc1	$f1,-8($v1)
    # Line 365
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 354
    lui	$at,0x13
    # Line 365
    sltiu	$v0,$v0,120
    # Line 354
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12224
    sd	$gp,0($sp)
    # Line 365
    beqz	$v0,.L0d9cb5c0
    # Line 354
    addu	$gp,$t9,$at
.L0d9cb5b4:
    # Line 369
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb5c0:
    # Line 368
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb5b4
    ld	$ra,8($sp)
.end __glTRim_Vertex3fv

# Function: __glTRim_Vertex4fv
# Declared: Line 373 (Source lines: 374-389)
# Address: 0x0d9cb5e0 - 0x0d9cb66c (Size: 140 bytes, Frame: 16)
.globl __glTRim_Vertex4fv
.ent __glTRim_Vertex4fv
__glTRim_Vertex4fv:
    # Line 377
    lw	$v0,4112($zero)
    # Line 380
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    lw	$a1,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a1,$a1,1
    sw	$a1,26852($v0)
    # Line 382
    lwc1	$f3,0($a0)
    # Line 380
    sll	$a1,$a1,0x4
    addu	$v1,$v1,$a1
    # Line 382
    swc1	$f3,-16($v1)
    # Line 383
    lwc1	$f2,4($a0)
    swc1	$f2,-12($v1)
    # Line 384
    lwc1	$f1,8($a0)
    swc1	$f1,-8($v1)
    # Line 385
    lwc1	$f0,12($a0)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 374
    lui	$at,0x13
    # Line 385
    sltiu	$v0,$v0,120
    # Line 374
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12368
    sd	$gp,0($sp)
    # Line 385
    beqz	$v0,.L0d9cb650
    # Line 374
    addu	$gp,$t9,$at
.L0d9cb644:
    # Line 389
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb650:
    # Line 388
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb644
    ld	$ra,8($sp)
.end __glTRim_Vertex4fv

# Function: __glTRim_Vertex2f
# Declared: Line 393 (Source lines: 394-410)
# Address: 0x0d9cb670 - 0x0d9cb6f4 (Size: 132 bytes, Frame: 16)
.globl __glTRim_Vertex2f
.ent __glTRim_Vertex2f
__glTRim_Vertex2f:
    # Line 397
    lw	$a0,4112($zero)
    # Line 400
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    lw	$a1,26852($v0)
    # Line 404
    mtc1	$zero,$f1
    # Line 400
    lw	$v1,26844($v0)
    addiu	$a1,$a1,1
    sll	$a2,$a1,0x4
    sw	$a1,26852($v0)
    addu	$v1,$v1,$a2
    # Line 404
    swc1	$f1,-8($v1)
    # Line 403
    swc1	$f13,-12($v1)
    # Line 402
    swc1	$f12,-16($v1)
    # Line 405
    lwc1	$f0,3544($a0)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 394
    lui	$at,0x13
    # Line 405
    sltiu	$v0,$v0,120
    # Line 394
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12512
    sd	$gp,0($sp)
    # Line 405
    beqz	$v0,.L0d9cb6d8
    # Line 394
    addu	$gp,$t9,$at
.L0d9cb6cc:
    # Line 410
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb6d8:
    # Line 409
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb6cc
    ld	$ra,8($sp)
.end __glTRim_Vertex2f

# Function: __glTRim_Vertex2d
# Declared: Line 414 (Source lines: 415-430)
# Address: 0x0d9cb700 - 0x0d9cb78c (Size: 140 bytes, Frame: 16)
.globl __glTRim_Vertex2d
.ent __glTRim_Vertex2d
__glTRim_Vertex2d:
    # Line 418
    lw	$a0,4112($zero)
    # Line 421
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    lw	$a1,26852($v0)
    # Line 425
    mtc1	$zero,$f1
    # Line 421
    lw	$v1,26844($v0)
    addiu	$a1,$a1,1
    sll	$a2,$a1,0x4
    sw	$a1,26852($v0)
    addu	$v1,$v1,$a2
    # Line 424
    cvt.s.d	$f2,$f13
    # Line 425
    swc1	$f1,-8($v1)
    # Line 423
    cvt.s.d	$f3,$f12
    # Line 424
    swc1	$f2,-12($v1)
    # Line 423
    swc1	$f3,-16($v1)
    # Line 426
    lwc1	$f0,3544($a0)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 415
    lui	$at,0x13
    # Line 426
    sltiu	$v0,$v0,120
    # Line 415
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12656
    sd	$gp,0($sp)
    # Line 426
    beqz	$v0,.L0d9cb770
    # Line 415
    addu	$gp,$t9,$at
.L0d9cb764:
    # Line 430
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb770:
    # Line 429
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb764
    ld	$ra,8($sp)
.end __glTRim_Vertex2d

# Function: __glTRim_Vertex2dv
# Declared: Line 434 (Source lines: 435-450)
# Address: 0x0d9cb790 - 0x0d9cb824 (Size: 148 bytes, Frame: 16)
.globl __glTRim_Vertex2dv
.ent __glTRim_Vertex2dv
__glTRim_Vertex2dv:
    # Line 438
    lw	$a1,4112($zero)
    # Line 441
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 443
    ldc1	$f3,0($a0)
    # Line 441
    lw	$v1,26844($v0)
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 443
    cvt.s.d	$f3,$f3
    swc1	$f3,-16($v1)
    # Line 444
    ldc1	$f2,8($a0)
    # Line 445
    mtc1	$zero,$f1
    swc1	$f1,-8($v1)
    # Line 444
    cvt.s.d	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 446
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 435
    lui	$at,0x13
    # Line 446
    sltiu	$v0,$v0,120
    # Line 435
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12800
    sd	$gp,0($sp)
    # Line 446
    beqz	$v0,.L0d9cb808
    # Line 435
    addu	$gp,$t9,$at
.L0d9cb7fc:
    # Line 450
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb808:
    # Line 449
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb7fc
    ld	$ra,8($sp)
.end __glTRim_Vertex2dv

# Function: __glTRim_Vertex2i
# Declared: Line 454 (Source lines: 455-470)
# Address: 0x0d9cb830 - 0x0d9cb8c4 (Size: 148 bytes, Frame: 16)
.globl __glTRim_Vertex2i
.ent __glTRim_Vertex2i
__glTRim_Vertex2i:
    # Line 458
    lw	$a2,4112($zero)
    # Line 461
    lui	$v0,0x1
    addu	$v0,$a2,$v0
    # Line 464
    mtc1	$a1,$f2
    # Line 461
    lw	$a3,26852($v0)
    # Line 463
    mtc1	$a0,$f3
    # Line 465
    mtc1	$zero,$f1
    # Line 461
    lw	$v1,26844($v0)
    addiu	$a3,$a3,1
    # Line 464
    cvt.s.w	$f2,$f2
    # Line 461
    sll	$a0,$a3,0x4
    sw	$a3,26852($v0)
    # Line 463
    cvt.s.w	$f3,$f3
    # Line 461
    addu	$v1,$v1,$a0
    # Line 465
    swc1	$f1,-8($v1)
    # Line 464
    swc1	$f2,-12($v1)
    # Line 463
    swc1	$f3,-16($v1)
    # Line 466
    lwc1	$f0,3544($a2)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 455
    lui	$at,0x13
    # Line 466
    sltiu	$v0,$v0,120
    # Line 455
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12960
    sd	$gp,0($sp)
    # Line 466
    beqz	$v0,.L0d9cb8a8
    # Line 455
    addu	$gp,$t9,$at
.L0d9cb89c:
    # Line 470
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb8a8:
    # Line 469
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb89c
    ld	$ra,8($sp)
.end __glTRim_Vertex2i

# Function: __glTRim_Vertex2iv
# Declared: Line 474 (Source lines: 475-490)
# Address: 0x0d9cb8d0 - 0x0d9cb96c (Size: 156 bytes, Frame: 16)
.globl __glTRim_Vertex2iv
.ent __glTRim_Vertex2iv
__glTRim_Vertex2iv:
    # Line 478
    lw	$a1,4112($zero)
    # Line 481
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 483
    lw	$a3,0($a0)
    mtc1	$a3,$f3
    # Line 481
    lw	$v1,26844($v0)
    # Line 483
    cvt.s.w	$f3,$f3
    # Line 481
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 483
    swc1	$f3,-16($v1)
    # Line 484
    lw	$a2,4($a0)
    mtc1	$a2,$f2
    # Line 485
    mtc1	$zero,$f1
    # Line 484
    cvt.s.w	$f2,$f2
    # Line 485
    swc1	$f1,-8($v1)
    # Line 484
    swc1	$f2,-12($v1)
    # Line 486
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 475
    lui	$at,0x13
    # Line 486
    sltiu	$v0,$v0,120
    # Line 475
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13120
    sd	$gp,0($sp)
    # Line 486
    beqz	$v0,.L0d9cb950
    # Line 475
    addu	$gp,$t9,$at
.L0d9cb944:
    # Line 490
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb950:
    # Line 489
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb944
    ld	$ra,8($sp)
.end __glTRim_Vertex2iv

# Function: __glTRim_Vertex2s
# Declared: Line 494 (Source lines: 495-510)
# Address: 0x0d9cb970 - 0x0d9cba04 (Size: 148 bytes, Frame: 16)
.globl __glTRim_Vertex2s
.ent __glTRim_Vertex2s
__glTRim_Vertex2s:
    # Line 498
    lw	$a2,4112($zero)
    # Line 501
    lui	$v0,0x1
    addu	$v0,$a2,$v0
    # Line 504
    mtc1	$a1,$f2
    # Line 501
    lw	$a3,26852($v0)
    # Line 503
    mtc1	$a0,$f3
    # Line 505
    mtc1	$zero,$f1
    # Line 501
    lw	$v1,26844($v0)
    addiu	$a3,$a3,1
    # Line 504
    cvt.s.w	$f2,$f2
    # Line 501
    sll	$a0,$a3,0x4
    sw	$a3,26852($v0)
    # Line 503
    cvt.s.w	$f3,$f3
    # Line 501
    addu	$v1,$v1,$a0
    # Line 505
    swc1	$f1,-8($v1)
    # Line 504
    swc1	$f2,-12($v1)
    # Line 503
    swc1	$f3,-16($v1)
    # Line 506
    lwc1	$f0,3544($a2)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 495
    lui	$at,0x13
    # Line 506
    sltiu	$v0,$v0,120
    # Line 495
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13280
    sd	$gp,0($sp)
    # Line 506
    beqz	$v0,.L0d9cb9e8
    # Line 495
    addu	$gp,$t9,$at
.L0d9cb9dc:
    # Line 510
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cb9e8:
    # Line 509
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cb9dc
    ld	$ra,8($sp)
.end __glTRim_Vertex2s

# Function: __glTRim_Vertex2sv
# Declared: Line 514 (Source lines: 515-530)
# Address: 0x0d9cba10 - 0x0d9cbaac (Size: 156 bytes, Frame: 16)
.globl __glTRim_Vertex2sv
.ent __glTRim_Vertex2sv
__glTRim_Vertex2sv:
    # Line 518
    lw	$a1,4112($zero)
    # Line 521
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 523
    lh	$a3,0($a0)
    mtc1	$a3,$f3
    # Line 521
    lw	$v1,26844($v0)
    # Line 523
    cvt.s.w	$f3,$f3
    # Line 521
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 523
    swc1	$f3,-16($v1)
    # Line 524
    lh	$a2,2($a0)
    mtc1	$a2,$f2
    # Line 525
    mtc1	$zero,$f1
    # Line 524
    cvt.s.w	$f2,$f2
    # Line 525
    swc1	$f1,-8($v1)
    # Line 524
    swc1	$f2,-12($v1)
    # Line 526
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 515
    lui	$at,0x13
    # Line 526
    sltiu	$v0,$v0,120
    # Line 515
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13440
    sd	$gp,0($sp)
    # Line 526
    beqz	$v0,.L0d9cba90
    # Line 515
    addu	$gp,$t9,$at
.L0d9cba84:
    # Line 530
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cba90:
    # Line 529
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cba84
    ld	$ra,8($sp)
.end __glTRim_Vertex2sv

# Function: __glTRim_Vertex3f
# Declared: Line 534 (Source lines: 535-550)
# Address: 0x0d9cbab0 - 0x0d9cbb30 (Size: 128 bytes, Frame: 16)
.globl __glTRim_Vertex3f
.ent __glTRim_Vertex3f
__glTRim_Vertex3f:
    # Line 538
    lw	$a0,4112($zero)
    # Line 541
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    lw	$a1,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a1,$a1,1
    sll	$a2,$a1,0x4
    sw	$a1,26852($v0)
    addu	$v1,$v1,$a2
    # Line 545
    swc1	$f14,-8($v1)
    # Line 544
    swc1	$f13,-12($v1)
    # Line 543
    swc1	$f12,-16($v1)
    # Line 546
    lwc1	$f0,3544($a0)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 535
    lui	$at,0x13
    # Line 546
    sltiu	$v0,$v0,120
    # Line 535
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13600
    sd	$gp,0($sp)
    # Line 546
    beqz	$v0,.L0d9cbb14
    # Line 535
    addu	$gp,$t9,$at
.L0d9cbb08:
    # Line 550
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbb14:
    # Line 549
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbb08
    ld	$ra,8($sp)
.end __glTRim_Vertex3f

# Function: __glTRim_Vertex3d
# Declared: Line 554 (Source lines: 555-570)
# Address: 0x0d9cbb30 - 0x0d9cbbbc (Size: 140 bytes, Frame: 16)
.globl __glTRim_Vertex3d
.ent __glTRim_Vertex3d
__glTRim_Vertex3d:
    # Line 558
    lw	$a0,4112($zero)
    # Line 561
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    lw	$a1,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a1,$a1,1
    sll	$a2,$a1,0x4
    # Line 565
    cvt.s.d	$f1,$f14
    # Line 561
    sw	$a1,26852($v0)
    addu	$v1,$v1,$a2
    # Line 564
    cvt.s.d	$f2,$f13
    # Line 565
    swc1	$f1,-8($v1)
    # Line 563
    cvt.s.d	$f3,$f12
    # Line 564
    swc1	$f2,-12($v1)
    # Line 563
    swc1	$f3,-16($v1)
    # Line 566
    lwc1	$f0,3544($a0)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 555
    lui	$at,0x13
    # Line 566
    sltiu	$v0,$v0,120
    # Line 555
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13728
    sd	$gp,0($sp)
    # Line 566
    beqz	$v0,.L0d9cbba0
    # Line 555
    addu	$gp,$t9,$at
.L0d9cbb94:
    # Line 570
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbba0:
    # Line 569
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbb94
    ld	$ra,8($sp)
.end __glTRim_Vertex3d

# Function: __glTRim_Vertex3dv
# Declared: Line 574 (Source lines: 575-590)
# Address: 0x0d9cbbc0 - 0x0d9cbc58 (Size: 152 bytes, Frame: 16)
.globl __glTRim_Vertex3dv
.ent __glTRim_Vertex3dv
__glTRim_Vertex3dv:
    # Line 578
    lw	$a1,4112($zero)
    # Line 581
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 583
    ldc1	$f3,0($a0)
    # Line 581
    lw	$v1,26844($v0)
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 583
    cvt.s.d	$f3,$f3
    swc1	$f3,-16($v1)
    # Line 584
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 585
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,-8($v1)
    # Line 586
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 575
    lui	$at,0x13
    # Line 586
    sltiu	$v0,$v0,120
    # Line 575
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13872
    sd	$gp,0($sp)
    # Line 586
    beqz	$v0,.L0d9cbc3c
    # Line 575
    addu	$gp,$t9,$at
.L0d9cbc30:
    # Line 590
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbc3c:
    # Line 589
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbc30
    ld	$ra,8($sp)
.end __glTRim_Vertex3dv

# Function: __glTRim_Vertex3i
# Declared: Line 594 (Source lines: 595-610)
# Address: 0x0d9cbc60 - 0x0d9cbcf8 (Size: 152 bytes, Frame: 16)
.globl __glTRim_Vertex3i
.ent __glTRim_Vertex3i
__glTRim_Vertex3i:
    # Line 598
    lw	$a3,4112($zero)
    # Line 601
    lui	$v0,0x1
    # Line 605
    mtc1	$a2,$f1
    # Line 601
    addu	$v0,$a3,$v0
    # Line 604
    mtc1	$a1,$f2
    # Line 601
    lw	$a4,26852($v0)
    # Line 603
    mtc1	$a0,$f3
    # Line 605
    cvt.s.w	$f1,$f1
    # Line 601
    lw	$v1,26844($v0)
    addiu	$a4,$a4,1
    # Line 604
    cvt.s.w	$f2,$f2
    # Line 601
    sll	$a0,$a4,0x4
    sw	$a4,26852($v0)
    # Line 603
    cvt.s.w	$f3,$f3
    # Line 601
    addu	$v1,$v1,$a0
    # Line 605
    swc1	$f1,-8($v1)
    # Line 604
    swc1	$f2,-12($v1)
    # Line 603
    swc1	$f3,-16($v1)
    # Line 606
    lwc1	$f0,3544($a3)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 595
    lui	$at,0x13
    # Line 606
    sltiu	$v0,$v0,120
    # Line 595
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14032
    sd	$gp,0($sp)
    # Line 606
    beqz	$v0,.L0d9cbcdc
    # Line 595
    addu	$gp,$t9,$at
.L0d9cbcd0:
    # Line 610
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbcdc:
    # Line 609
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbcd0
    ld	$ra,8($sp)
.end __glTRim_Vertex3i

# Function: __glTRim_Vertex3iv
# Declared: Line 614 (Source lines: 615-630)
# Address: 0x0d9cbd00 - 0x0d9cbda4 (Size: 164 bytes, Frame: 16)
.globl __glTRim_Vertex3iv
.ent __glTRim_Vertex3iv
__glTRim_Vertex3iv:
    # Line 618
    lw	$a1,4112($zero)
    # Line 621
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 623
    lw	$a3,0($a0)
    mtc1	$a3,$f3
    # Line 621
    lw	$v1,26844($v0)
    # Line 623
    cvt.s.w	$f3,$f3
    # Line 621
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 623
    swc1	$f3,-16($v1)
    # Line 624
    lw	$a3,4($a0)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 625
    lw	$a2,8($a0)
    mtc1	$a2,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,-8($v1)
    # Line 626
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 615
    lui	$at,0x13
    # Line 626
    sltiu	$v0,$v0,120
    # Line 615
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14192
    sd	$gp,0($sp)
    # Line 626
    beqz	$v0,.L0d9cbd88
    # Line 615
    addu	$gp,$t9,$at
.L0d9cbd7c:
    # Line 630
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbd88:
    # Line 629
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbd7c
    ld	$ra,8($sp)
.end __glTRim_Vertex3iv

# Function: __glTRim_Vertex3s
# Declared: Line 634 (Source lines: 635-650)
# Address: 0x0d9cbdb0 - 0x0d9cbe48 (Size: 152 bytes, Frame: 16)
.globl __glTRim_Vertex3s
.ent __glTRim_Vertex3s
__glTRim_Vertex3s:
    # Line 638
    lw	$a3,4112($zero)
    # Line 641
    lui	$v0,0x1
    # Line 645
    mtc1	$a2,$f1
    # Line 641
    addu	$v0,$a3,$v0
    # Line 644
    mtc1	$a1,$f2
    # Line 641
    lw	$a4,26852($v0)
    # Line 643
    mtc1	$a0,$f3
    # Line 645
    cvt.s.w	$f1,$f1
    # Line 641
    lw	$v1,26844($v0)
    addiu	$a4,$a4,1
    # Line 644
    cvt.s.w	$f2,$f2
    # Line 641
    sll	$a0,$a4,0x4
    sw	$a4,26852($v0)
    # Line 643
    cvt.s.w	$f3,$f3
    # Line 641
    addu	$v1,$v1,$a0
    # Line 645
    swc1	$f1,-8($v1)
    # Line 644
    swc1	$f2,-12($v1)
    # Line 643
    swc1	$f3,-16($v1)
    # Line 646
    lwc1	$f0,3544($a3)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 635
    lui	$at,0x13
    # Line 646
    sltiu	$v0,$v0,120
    # Line 635
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14368
    sd	$gp,0($sp)
    # Line 646
    beqz	$v0,.L0d9cbe2c
    # Line 635
    addu	$gp,$t9,$at
.L0d9cbe20:
    # Line 650
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbe2c:
    # Line 649
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbe20
    ld	$ra,8($sp)
.end __glTRim_Vertex3s

# Function: __glTRim_Vertex3sv
# Declared: Line 654 (Source lines: 655-670)
# Address: 0x0d9cbe50 - 0x0d9cbef4 (Size: 164 bytes, Frame: 16)
.globl __glTRim_Vertex3sv
.ent __glTRim_Vertex3sv
__glTRim_Vertex3sv:
    # Line 658
    lw	$a1,4112($zero)
    # Line 661
    lui	$v0,0x1
    addu	$v0,$a1,$v0
    lw	$a2,26852($v0)
    addiu	$a2,$a2,1
    sw	$a2,26852($v0)
    # Line 663
    lh	$a3,0($a0)
    mtc1	$a3,$f3
    # Line 661
    lw	$v1,26844($v0)
    # Line 663
    cvt.s.w	$f3,$f3
    # Line 661
    sll	$a2,$a2,0x4
    addu	$v1,$v1,$a2
    # Line 663
    swc1	$f3,-16($v1)
    # Line 664
    lh	$a3,2($a0)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 665
    lh	$a2,4($a0)
    mtc1	$a2,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,-8($v1)
    # Line 666
    lwc1	$f0,3544($a1)
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 655
    lui	$at,0x13
    # Line 666
    sltiu	$v0,$v0,120
    # Line 655
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14528
    sd	$gp,0($sp)
    # Line 666
    beqz	$v0,.L0d9cbed8
    # Line 655
    addu	$gp,$t9,$at
.L0d9cbecc:
    # Line 670
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbed8:
    # Line 669
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbecc
    ld	$ra,8($sp)
.end __glTRim_Vertex3sv

# Function: __glTRim_Vertex4f
# Declared: Line 674 (Source lines: 675-690)
# Address: 0x0d9cbf00 - 0x0d9cbf7c (Size: 124 bytes, Frame: 16)
.globl __glTRim_Vertex4f
.ent __glTRim_Vertex4f
__glTRim_Vertex4f:
    # Line 678
    lw	$v0,4112($zero)
    # Line 681
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    lw	$a0,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a0,$a0,1
    sll	$a1,$a0,0x4
    sw	$a0,26852($v0)
    addu	$v1,$v1,$a1
    # Line 686
    swc1	$f15,-4($v1)
    # Line 685
    swc1	$f14,-8($v1)
    # Line 684
    swc1	$f13,-12($v1)
    # Line 683
    swc1	$f12,-16($v1)
    # Line 686
    lw	$v0,26852($v0)
    # Line 675
    lui	$at,0x13
    # Line 686
    sltiu	$v0,$v0,120
    # Line 675
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14704
    sd	$gp,0($sp)
    # Line 686
    beqz	$v0,.L0d9cbf60
    # Line 675
    addu	$gp,$t9,$at
.L0d9cbf54:
    # Line 690
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbf60:
    # Line 689
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbf54
    ld	$ra,8($sp)
.end __glTRim_Vertex4f

# Function: __glTRim_Vertex4d
# Declared: Line 694 (Source lines: 695-710)
# Address: 0x0d9cbf80 - 0x0d9cc00c (Size: 140 bytes, Frame: 16)
.globl __glTRim_Vertex4d
.ent __glTRim_Vertex4d
__glTRim_Vertex4d:
    # Line 698
    lw	$v0,4112($zero)
    # Line 701
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    lw	$a0,26852($v0)
    lw	$v1,26844($v0)
    addiu	$a0,$a0,1
    sll	$a1,$a0,0x4
    # Line 706
    cvt.s.d	$f0,$f15
    # Line 701
    sw	$a0,26852($v0)
    addu	$v1,$v1,$a1
    # Line 705
    cvt.s.d	$f1,$f14
    # Line 706
    swc1	$f0,-4($v1)
    # Line 704
    cvt.s.d	$f2,$f13
    # Line 705
    swc1	$f1,-8($v1)
    # Line 703
    cvt.s.d	$f3,$f12
    # Line 704
    swc1	$f2,-12($v1)
    # Line 703
    swc1	$f3,-16($v1)
    # Line 706
    lw	$v0,26852($v0)
    # Line 695
    lui	$at,0x13
    # Line 706
    sltiu	$v0,$v0,120
    # Line 695
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14832
    sd	$gp,0($sp)
    # Line 706
    beqz	$v0,.L0d9cbff0
    # Line 695
    addu	$gp,$t9,$at
.L0d9cbfe4:
    # Line 710
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cbff0:
    # Line 709
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cbfe4
    ld	$ra,8($sp)
.end __glTRim_Vertex4d

# Function: __glTRim_Vertex4dv
# Declared: Line 714 (Source lines: 715-730)
# Address: 0x0d9cc010 - 0x0d9cc0ac (Size: 156 bytes, Frame: 16)
.globl __glTRim_Vertex4dv
.ent __glTRim_Vertex4dv
__glTRim_Vertex4dv:
    # Line 718
    lw	$v0,4112($zero)
    # Line 721
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    lw	$a1,26852($v0)
    addiu	$a1,$a1,1
    sw	$a1,26852($v0)
    # Line 723
    ldc1	$f3,0($a0)
    # Line 721
    lw	$v1,26844($v0)
    sll	$a1,$a1,0x4
    addu	$v1,$v1,$a1
    # Line 723
    cvt.s.d	$f3,$f3
    swc1	$f3,-16($v1)
    # Line 724
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 725
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,-8($v1)
    # Line 726
    ldc1	$f0,24($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 715
    lui	$at,0x13
    # Line 726
    sltiu	$v0,$v0,120
    # Line 715
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14976
    sd	$gp,0($sp)
    # Line 726
    beqz	$v0,.L0d9cc090
    # Line 715
    addu	$gp,$t9,$at
.L0d9cc084:
    # Line 730
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc090:
    # Line 729
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cc084
    ld	$ra,8($sp)
.end __glTRim_Vertex4dv

# Function: __glTRim_Vertex4i
# Declared: Line 734 (Source lines: 735-750)
# Address: 0x0d9cc0b0 - 0x0d9cc14c (Size: 156 bytes, Frame: 16)
.globl __glTRim_Vertex4i
.ent __glTRim_Vertex4i
__glTRim_Vertex4i:
    # Line 738
    lw	$v0,4112($zero)
    # Line 745
    mtc1	$a2,$f1
    # Line 741
    lui	$v1,0x1
    # Line 746
    mtc1	$a3,$f0
    # Line 741
    addu	$v0,$v0,$v1
    # Line 743
    mtc1	$a0,$f3
    # Line 741
    lw	$a0,26852($v0)
    # Line 744
    mtc1	$a1,$f2
    # Line 746
    cvt.s.w	$f0,$f0
    # Line 741
    lw	$v1,26844($v0)
    addiu	$a0,$a0,1
    # Line 745
    cvt.s.w	$f1,$f1
    # Line 741
    sll	$a1,$a0,0x4
    sw	$a0,26852($v0)
    # Line 744
    cvt.s.w	$f2,$f2
    # Line 741
    addu	$v1,$v1,$a1
    # Line 743
    cvt.s.w	$f3,$f3
    # Line 746
    swc1	$f0,-4($v1)
    # Line 745
    swc1	$f1,-8($v1)
    # Line 744
    swc1	$f2,-12($v1)
    # Line 743
    swc1	$f3,-16($v1)
    # Line 746
    lw	$v0,26852($v0)
    # Line 735
    lui	$at,0x13
    # Line 746
    sltiu	$v0,$v0,120
    # Line 735
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15136
    sd	$gp,0($sp)
    # Line 746
    beqz	$v0,.L0d9cc130
    # Line 735
    addu	$gp,$t9,$at
.L0d9cc124:
    # Line 750
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc130:
    # Line 749
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cc124
    ld	$ra,8($sp)
.end __glTRim_Vertex4i

# Function: __glTRim_Vertex4iv
# Declared: Line 754 (Source lines: 755-770)
# Address: 0x0d9cc150 - 0x0d9cc1fc (Size: 172 bytes, Frame: 16)
.globl __glTRim_Vertex4iv
.ent __glTRim_Vertex4iv
__glTRim_Vertex4iv:
    # Line 758
    lw	$v0,4112($zero)
    # Line 761
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    lw	$a1,26852($v0)
    addiu	$a1,$a1,1
    sw	$a1,26852($v0)
    # Line 763
    lw	$a2,0($a0)
    mtc1	$a2,$f3
    # Line 761
    lw	$v1,26844($v0)
    # Line 763
    cvt.s.w	$f3,$f3
    # Line 761
    sll	$a1,$a1,0x4
    addu	$v1,$v1,$a1
    # Line 763
    swc1	$f3,-16($v1)
    # Line 764
    lw	$a2,4($a0)
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 765
    lw	$a1,8($a0)
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,-8($v1)
    # Line 766
    lw	$a0,12($a0)
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 755
    lui	$at,0x13
    # Line 766
    sltiu	$v0,$v0,120
    # Line 755
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15296
    sd	$gp,0($sp)
    # Line 766
    beqz	$v0,.L0d9cc1e0
    # Line 755
    addu	$gp,$t9,$at
.L0d9cc1d4:
    # Line 770
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc1e0:
    # Line 769
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cc1d4
    ld	$ra,8($sp)
.end __glTRim_Vertex4iv

# Function: __glTRim_Vertex4s
# Declared: Line 774 (Source lines: 775-790)
# Address: 0x0d9cc200 - 0x0d9cc29c (Size: 156 bytes, Frame: 16)
.globl __glTRim_Vertex4s
.ent __glTRim_Vertex4s
__glTRim_Vertex4s:
    # Line 778
    lw	$v0,4112($zero)
    # Line 785
    mtc1	$a2,$f1
    # Line 781
    lui	$v1,0x1
    # Line 786
    mtc1	$a3,$f0
    # Line 781
    addu	$v0,$v0,$v1
    # Line 783
    mtc1	$a0,$f3
    # Line 781
    lw	$a0,26852($v0)
    # Line 784
    mtc1	$a1,$f2
    # Line 786
    cvt.s.w	$f0,$f0
    # Line 781
    lw	$v1,26844($v0)
    addiu	$a0,$a0,1
    # Line 785
    cvt.s.w	$f1,$f1
    # Line 781
    sll	$a1,$a0,0x4
    sw	$a0,26852($v0)
    # Line 784
    cvt.s.w	$f2,$f2
    # Line 781
    addu	$v1,$v1,$a1
    # Line 783
    cvt.s.w	$f3,$f3
    # Line 786
    swc1	$f0,-4($v1)
    # Line 785
    swc1	$f1,-8($v1)
    # Line 784
    swc1	$f2,-12($v1)
    # Line 783
    swc1	$f3,-16($v1)
    # Line 786
    lw	$v0,26852($v0)
    # Line 775
    lui	$at,0x13
    # Line 786
    sltiu	$v0,$v0,120
    # Line 775
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15472
    sd	$gp,0($sp)
    # Line 786
    beqz	$v0,.L0d9cc280
    # Line 775
    addu	$gp,$t9,$at
.L0d9cc274:
    # Line 790
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc280:
    # Line 789
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cc274
    ld	$ra,8($sp)
.end __glTRim_Vertex4s

# Function: __glTRim_Vertex4sv
# Declared: Line 794 (Source lines: 795-810)
# Address: 0x0d9cc2a0 - 0x0d9cc34c (Size: 172 bytes, Frame: 16)
.globl __glTRim_Vertex4sv
.ent __glTRim_Vertex4sv
__glTRim_Vertex4sv:
    # Line 798
    lw	$v0,4112($zero)
    # Line 801
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    lw	$a1,26852($v0)
    addiu	$a1,$a1,1
    sw	$a1,26852($v0)
    # Line 803
    lh	$a2,0($a0)
    mtc1	$a2,$f3
    # Line 801
    lw	$v1,26844($v0)
    # Line 803
    cvt.s.w	$f3,$f3
    # Line 801
    sll	$a1,$a1,0x4
    addu	$v1,$v1,$a1
    # Line 803
    swc1	$f3,-16($v1)
    # Line 804
    lh	$a2,2($a0)
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,-12($v1)
    # Line 805
    lh	$a1,4($a0)
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,-8($v1)
    # Line 806
    lh	$a0,6($a0)
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,-4($v1)
    lw	$v0,26852($v0)
    # Line 795
    lui	$at,0x13
    # Line 806
    sltiu	$v0,$v0,120
    # Line 795
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15632
    sd	$gp,0($sp)
    # Line 806
    beqz	$v0,.L0d9cc330
    # Line 795
    addu	$gp,$t9,$at
.L0d9cc324:
    # Line 810
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc330:
    # Line 809
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-20912
    sd	$ra,8($sp)
    bal __glOdysseyInitRGB
    nop
    b	.L0d9cc324
    ld	$ra,8($sp)
.end __glTRim_Vertex4sv

.late_rodata
jtbl_0dae9334:
    .word .L0d9caea8
    .word .L0d9caf20
    .word .L0d9caef0
    .word .L0d9caf20
    .word .L0d9caea8
    .word .L0d9caf20
    .word .L0d9caef0
    .word .L0d9caea8
    .word .L0d9caf20
    .word .L0d9caef0
jtbl_0dae935c:
    .word .L0d9cb034
    .word .L0d9cb018
    .word .L0d9cb018
    .word .L0d9cb018
    .word .L0d9cb034
    .word .L0d9cb018
    .word .L0d9cb018
    .word .L0d9cb034
    .word .L0d9cb018
    .word .L0d9cb018

