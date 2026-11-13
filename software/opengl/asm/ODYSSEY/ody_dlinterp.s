# Source: ../ODYSSEY/ody_dlinterp.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_dlinterp.c
# Total Functions: 10

.text

# Function: __glOdysseyDlistInterpret
# Declared: Line 46 (Source lines: 46-127)
# Address: 0x0d972710 - 0x0d97295c (Size: 588 bytes, Frame: 224)
.globl __glOdysseyDlistInterpret
.ent __glOdysseyDlistInterpret
__glOdysseyDlistInterpret:
    # Line 46
    addiu	$sp,$sp,-96
    sd	$s1,8($sp)
    # Line 54
    li	$a6,3
    # Line 53
    lw	$s1,0($a0)
    # Line 46
    sd	$s0,16($sp)
    # Line 53
    addiu	$s0,$a0,4
    # Line 46
    lui	$at,0x18
    addiu	$at,$at,24192
    sd	$s8,32($sp)
    # Line 54
    sll	$s8,$s1,0x2
    sd	$gp,24($sp)
    # Line 46
    addu	$gp,$t9,$at
    # Line 54
    addu	$s8,$a0,$s8
    # Line 50
    lw	$a2,4112($zero)
    # Line 54
    beqz	$s1,.L0d972894
    addiu	$s8,$s8,4
    li	$a4,5
    sd	$ra,72($sp)
    sd	$s2,64($sp)
    sd	$s4,56($sp)
    sd	$s5,80($sp)
    li	$v0,1
    sd	$s7,88($sp)
    li	$s7,6
    li	$s5,16
    sd	$s6,40($sp)
    li	$s6,15
    li	$s4,4
    sd	$s3,48($sp)
    lui	$s3,0x80
    b	.L0d9727b8
    sd	$a2,0($sp)
.L0d972790:
    # Line 94
    andi	$s2,$s2,0xf
    xor	$v1,$s6,$s2
    sltiu	$v1,$v1,1
    movn	$s2,$s5,$v1
.L0d9727a0:
    # Line 122
    sll	$t8,$s2,0x2
    # Line 123
    subu	$s1,$s1,$s2
    addiu	$s1,$s1,-1
    # Line 122
    addu	$s0,$s0,$t8
.L0d9727b0:
    # Line 125
    beqz	$s1,.L0d972878
    nop
.L0d9727b8:
    # Line 58
    lw	$a5,0($s0)
    and	$t8,$s3,$a5
    addiu	$s0,$s0,4
    # Line 94
    srl	$s2,$a5,0xa
    # Line 58
    beqz	$t8,.L0d972840
    # Line 63
    andi	$a0,$a5,0x3ff
    # Line 94
    srl	$a0,$a5,0x1d
    beq	$s4,$a0,.L0d9728b0
    nop
    bne	$s7,$a0,.L0d972790
    # Line 101
    srl	$a0,$a5,0x18
    srl	$s2,$a5,0xa
    andi	$a0,$a0,0x1f
    andi	$s2,$s2,0xf
    xor	$t9,$s6,$s2
    sltiu	$t9,$t9,1
    beq	$a4,$a0,.L0d972910
    movn	$s2,$s5,$t9
    beq	$v0,$a0,.L0d972938
    # Line 107
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 101
    bne	$a6,$a0,.L0d9727a0
    # Line 110
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,13136
    move	$a0,$s2
    andi	$a1,$a5,0x3ff
    bal __glOdysseyDlistInterpretPreclip
    move	$a2,$s0
    li	$v0,1
    li	$a4,5
    b	.L0d9727a0
    li	$a6,3
    nop
    nop
    nop
.L0d972840:
    # Line 63
    beq	$v0,$a0,.L0d9728ec
    # Line 66
    ld	$t9,0($sp)
    # Line 63
    bnez	$a0,.L0d9727b0
    # Line 72
    ld	$t9,0($sp)
    lw	$t9,6132($t9)
    lw	$t9,28($t9)
    jal	sub_0d970000
    lw	$a0,0($s0)
    li	$v0,1
    li	$a4,5
    li	$a6,3
    # Line 75
    addiu	$s1,$s1,-2
    # Line 76
    b	.L0d9727b0
    # Line 74
    addiu	$s0,$s0,4
.L0d972878:
    ld	$s6,40($sp)
    ld	$s3,48($sp)
    ld	$s4,56($sp)
    ld	$s2,64($sp)
    ld	$ra,72($sp)
    ld	$s5,80($sp)
    ld	$s7,88($sp)
.L0d972894:
    # Line 127
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    move	$v0,$s8
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9728b0:
    # Line 98
    srl	$s2,$a5,0xa
    # lw $t9, -32736($gp) # &sub_0d970000
    andi	$s2,$s2,0xf
    andi	$a1,$a5,0x3ff
    xor	$ra,$s6,$s2
    addiu	$t9,$t9,11856
    sltiu	$ra,$ra,1
    move	$a2,$s0
    movn	$s2,$s5,$ra
    bal __glOdysseyDlistInterpretPreclip
    move	$a0,$s2
    li	$v0,1
    li	$a4,5
    b	.L0d9727a0
    li	$a6,3
.L0d9728ec:
    # Line 66
    lw	$t9,6132($t9)
    lw	$t9,44($t9)
    jal	sub_0d970000
    nop
    li	$v0,1
    li	$a4,5
    li	$a6,3
    b	.L0d9727b0
    # Line 68
    addiu	$s1,$s1,-1
.L0d972910:
    # Line 104
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,12240
    move	$a0,$s2
    andi	$a1,$a5,0x3ff
    bal __glOdysseyDlistInterpretPreclip
    move	$a2,$s0
    li	$v0,1
    li	$a4,5
    b	.L0d9727a0
    li	$a6,3
.L0d972938:
    # Line 107
    addiu	$t9,$t9,12912
    move	$a0,$s2
    andi	$a1,$a5,0x3ff
    bal __glOdysseyDlistInterpretPreclip
    move	$a2,$s0
    li	$v0,1
    li	$a4,5
    b	.L0d9727a0
    li	$a6,3
.end __glOdysseyDlistInterpret

# Function: __glOdysseyDlistInterpretPreclip
# Declared: Line 134 (Source lines: 134-224)
# Address: 0x0d972960 - 0x0d972c8c (Size: 812 bytes, Frame: 240)
.globl __glOdysseyDlistInterpretPreclip
.ent __glOdysseyDlistInterpretPreclip
__glOdysseyDlistInterpretPreclip:
    # Line 134
    addiu	$sp,$sp,-112
    sd	$s7,56($sp)
    # Line 135
    lw	$s7,4112($zero)
    sd	$s5,48($sp)
    sd	$s1,40($sp)
    sd	$s0,32($sp)
    sd	$s8,24($sp)
    sd	$ra,16($sp)
    # Line 134
    sd	$s2,80($sp)
    sd	$s3,72($sp)
    # Line 141
    lw	$s3,0($a0)
    addiu	$s2,$a0,4
    sd	$s4,8($sp)
    # Line 134
    lui	$v0,0x18
    sd	$s6,0($sp)
    addiu	$v0,$v0,23600
    # Line 142
    sll	$at,$s3,0x2
    sd	$gp,64($sp)
    # Line 134
    addu	$gp,$t9,$v0
    # Line 142
    addu	$at,$a0,$at
    addiu	$at,$at,4
    beqz	$s3,.L0d972b90
    sd	$at,96($sp)
    li	$t0,1
    li	$t1,5
    li	$s1,-1
    li	$s8,16
    li	$a6,15
    li	$v0,4
    lui	$s5,0x80
    la	$a7,__glOdyim_SoftGetFloatv
    lui	$s0,0x1
    addu	$v1,$s0,$s7
    b	.L0d972a48
    sd	$v1,88($sp)
.L0d9729ec:
    # Line 216
    move	$s3,$s6
    andi	$a0,$a2,0x1
    # Line 217
    beq	$s1,$s4,.L0d972a40
    move	$a1,$s4
    beqz	$a0,.L0d972a14
    sra	$a4,$a2,0x1
    # Line 218
    lw	$a3,0($s2)
    # Line 217
    addiu	$a1,$s4,-1
    # Line 218
    addiu	$s2,$s2,4
    sw	$a3,0($s0)
.L0d972a14:
    beqz	$a4,.L0d972a40
    move	$a0,$s2
    nop
.L0d972a20:
    lw	$t2,0($a0)
    # Line 217
    addiu	$a1,$a1,-2
    # Line 218
    sw	$t2,0($s0)
    lw	$a5,4($a0)
    addiu	$a0,$a0,8
    # Line 217
    bne	$s1,$a1,.L0d972a20
    # Line 218
    sw	$a5,0($s0)
    move	$s2,$a0
.L0d972a40:
    # Line 222
    beqz	$s3,.L0d972b90
    nop
.L0d972a48:
    # Line 146
    lw	$a5,0($s2)
    # Line 196
    srl	$a0,$a5,0x18
    # Line 146
    and	$t3,$s5,$a5
    # Line 151
    andi	$a1,$a5,0x3ff
    # Line 189
    srl	$s4,$a5,0xa
    # Line 146
    beqz	$t3,.L0d972abc
    # Line 189
    andi	$s4,$s4,0xf
    # Line 172
    srl	$t8,$a5,0x1d
    beq	$v0,$t8,.L0d972b00
    # Line 196
    li	$a1,3
    # Line 189
    lw	$t8,6132($s7)
    xor	$t9,$a6,$s4
    sltiu	$t9,$t9,1
    lw	$t8,496($t8)
    # Line 196
    andi	$a0,$a0,0x1f
    # Line 189
    movn	$s4,$s8,$t9
    # Line 217
    addiu	$a2,$s4,1
    # Line 189
    subu	$s6,$s3,$s4
    bne	$t8,$a7,.L0d9729ec
    addiu	$s6,$s6,-1
    # Line 196
    beq	$t1,$a0,.L0d972bc8
    # Line 198
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 196
    beq	$t0,$a0,.L0d972bf8
    # Line 201
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 196
    beq	$a1,$a0,.L0d972c28
.L0d972aac:
    # Line 212
    move	$s3,$s6
    # Line 211
    sll	$a2,$s4,0x2
    # Line 212
    b	.L0d972a40
    # Line 211
    addu	$s2,$s2,$a2
.L0d972abc:
    # Line 151
    beq	$t0,$a1,.L0d972c5c
    nop
    bnez	$a1,.L0d972a40
    nop
    # Line 160
    lw	$t9,6132($s7)
    lw	$t9,28($t9)
    jal	sub_0d970000
    lw	$a0,4($s2)
    li	$v0,4
    li	$a6,15
    li	$t0,1
    li	$t1,5
    # Line 163
    addiu	$s3,$s3,-2
    la	$a7,__glOdyim_SoftGetFloatv
    # Line 164
    b	.L0d972a40
    # Line 162
    addiu	$s2,$s2,8
    nop
.L0d972b00:
    # Line 172
    ld	$ra,88($sp)
    srl	$s4,$a5,0xa
    lw	$ra,27140($ra)
    andi	$a1,$a5,0x3ff
    andi	$s4,$s4,0xf
    xor	$at,$a6,$s4
    sltiu	$at,$at,1
    bne	$ra,$a1,.L0d972b50
    movn	$s4,$s8,$at
    # Line 183
    ld	$t9,88($sp)
    lw	$t9,27144($t9)
    addiu	$s6,$s2,4
    jalr	$t9
    move	$a0,$s6
    li	$v0,4
    li	$a6,15
    li	$t0,1
    la	$a7,__glOdyim_SoftGetFloatv
    b	.L0d972b7c
    li	$t1,5
.L0d972b50:
    # Line 186
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11856
    move	$a0,$s4
    addiu	$s6,$s2,4
    bal __glOdysseyDlistInterpretPreclip
    move	$a2,$s6
    li	$v0,4
    li	$a6,15
    la	$a7,__glOdyim_SoftGetFloatv
    li	$t0,1
    li	$t1,5
.L0d972b7c:
    # Line 189
    subu	$s3,$s3,$s4
    # Line 188
    sll	$s2,$s4,0x2
    # Line 189
    addiu	$s3,$s3,-1
    b	.L0d972a40
    # Line 188
    addu	$s2,$s6,$s2
.L0d972b90:
    # Line 224
    ld	$v0,96($sp)
    ld	$gp,64($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s4,8($sp)
    ld	$s5,48($sp)
    ld	$ra,16($sp)
    ld	$s6,0($sp)
    ld	$s7,56($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d972bc8:
    # Line 198
    andi	$a1,$a5,0x3ff
    addiu	$t9,$t9,12240
    move	$a0,$s4
    addiu	$a2,$s2,4
    bal __glOdysseyDlistInterpretPreclip
    move	$s2,$a2
    li	$v0,4
    li	$a6,15
    li	$t0,1
    la	$a7,__glOdyim_SoftGetFloatv
    b	.L0d972aac
    li	$t1,5
.L0d972bf8:
    # Line 201
    andi	$a1,$a5,0x3ff
    addiu	$t9,$t9,12912
    move	$a0,$s4
    addiu	$a2,$s2,4
    bal __glOdysseyDlistInterpretPreclip
    move	$s2,$a2
    li	$v0,4
    li	$a6,15
    li	$t0,1
    la	$a7,__glOdyim_SoftGetFloatv
    b	.L0d972aac
    li	$t1,5
.L0d972c28:
    # Line 204
    # lw $t9, -32736($gp) # &sub_0d970000
    andi	$a1,$a5,0x3ff
    addiu	$t9,$t9,13136
    move	$a0,$s4
    addiu	$a2,$s2,4
    bal __glOdysseyDlistInterpretPreclip
    move	$s2,$a2
    li	$v0,4
    li	$a6,15
    li	$t0,1
    la	$a7,__glOdyim_SoftGetFloatv
    b	.L0d972aac
    li	$t1,5
.L0d972c5c:
    # Line 154
    lw	$t9,6132($s7)
    lw	$t9,44($t9)
    jal	sub_0d970000
    nop
    li	$v0,4
    li	$a6,15
    li	$t0,1
    li	$t1,5
    # Line 156
    addiu	$s3,$s3,-1
    la	$a7,__glOdyim_SoftGetFloatv
    b	.L0d972a40
    # Line 155
    addiu	$s2,$s2,4
.end __glOdysseyDlistInterpretPreclip

# Function: pack_ub
# Declared: Line 228 (Source lines: 229-233)
# Address: 0x0d972c90 - 0x0d972cf4 (Size: 100 bytes, Frame: 0)
.ent pack_ub
pack_ub:
    # Line 229
    move	$a6,$a0
    beqz	$a0,.L0d972cec
    move	$a5,$a1
    sll	$a4,$a6,0x2
    andi	$a7,$a6,0x1
    move	$a0,$a1
    move	$a1,$a2
    beqz	$a7,.L0d972cc4
    addu	$a4,$a4,$a5
    # Line 232
    lw	$t0,0($a5)
    # Line 231
    addiu	$a0,$a5,4
    addiu	$a1,$a2,1
    # Line 232
    sb	$t0,0($a2)
.L0d972cc4:
    sra	$t1,$a6,0x1
    beqz	$t1,.L0d972cec
    nop
.L0d972cd0:
    lw	$t3,0($a0)
    # Line 231
    addiu	$a0,$a0,8
    # Line 232
    sb	$t3,0($a1)
    # Line 231
    addiu	$a1,$a1,2
    # Line 232
    lw	$t2,-4($a0)
    # Line 231
    bne	$a0,$a4,.L0d972cd0
    # Line 232
    sb	$t2,-1($a1)
.L0d972cec:
    # Line 233
    jr	$ra
    nop
.end pack_ub

# Function: pack_us
# Declared: Line 236 (Source lines: 237-241)
# Address: 0x0d972d00 - 0x0d972d64 (Size: 100 bytes, Frame: 0)
.ent pack_us
pack_us:
    # Line 237
    move	$a6,$a0
    andi	$a7,$a0,0x1
    beqz	$a0,.L0d972d5c
    move	$a5,$a1
    sll	$a4,$a6,0x2
    move	$a1,$a2
    move	$a0,$a5
    beqz	$a7,.L0d972d34
    addu	$a4,$a4,$a5
    # Line 240
    lw	$t0,0($a5)
    # Line 239
    addiu	$a0,$a5,4
    addiu	$a1,$a2,2
    # Line 240
    sh	$t0,0($a2)
.L0d972d34:
    sra	$t1,$a6,0x1
    beqz	$t1,.L0d972d5c
    nop
.L0d972d40:
    lw	$t3,0($a0)
    # Line 239
    addiu	$a0,$a0,8
    # Line 240
    sh	$t3,0($a1)
    # Line 239
    addiu	$a1,$a1,4
    # Line 240
    lw	$t2,-4($a0)
    # Line 239
    bne	$a0,$a4,.L0d972d40
    # Line 240
    sh	$t2,-2($a1)
.L0d972d5c:
    # Line 241
    jr	$ra
    nop
.end pack_us

# Function: pack_b
# Declared: Line 244 (Source lines: 245-249)
# Address: 0x0d972d70 - 0x0d972dd4 (Size: 100 bytes, Frame: 0)
.ent pack_b
pack_b:
    # Line 245
    move	$a6,$a0
    beqz	$a0,.L0d972dcc
    move	$a5,$a1
    sll	$a4,$a6,0x2
    andi	$a7,$a6,0x1
    move	$a0,$a1
    move	$a1,$a2
    beqz	$a7,.L0d972da4
    addu	$a4,$a4,$a5
    # Line 248
    lw	$t0,0($a5)
    # Line 247
    addiu	$a0,$a5,4
    addiu	$a1,$a2,1
    # Line 248
    sb	$t0,0($a2)
.L0d972da4:
    sra	$t1,$a6,0x1
    beqz	$t1,.L0d972dcc
    nop
.L0d972db0:
    lw	$t3,0($a0)
    # Line 247
    addiu	$a0,$a0,8
    # Line 248
    sb	$t3,0($a1)
    # Line 247
    addiu	$a1,$a1,2
    # Line 248
    lw	$t2,-4($a0)
    # Line 247
    bne	$a0,$a4,.L0d972db0
    # Line 248
    sb	$t2,-1($a1)
.L0d972dcc:
    # Line 249
    jr	$ra
    nop
.end pack_b

# Function: pack_s
# Declared: Line 252 (Source lines: 253-257)
# Address: 0x0d972de0 - 0x0d972e44 (Size: 100 bytes, Frame: 0)
.ent pack_s
pack_s:
    # Line 253
    move	$a6,$a0
    andi	$a7,$a0,0x1
    beqz	$a0,.L0d972e3c
    move	$a5,$a1
    sll	$a4,$a6,0x2
    move	$a1,$a2
    move	$a0,$a5
    beqz	$a7,.L0d972e14
    addu	$a4,$a4,$a5
    # Line 256
    lw	$t0,0($a5)
    # Line 255
    addiu	$a0,$a5,4
    addiu	$a1,$a2,2
    # Line 256
    sh	$t0,0($a2)
.L0d972e14:
    sra	$t1,$a6,0x1
    beqz	$t1,.L0d972e3c
    nop
.L0d972e20:
    lw	$t3,0($a0)
    # Line 255
    addiu	$a0,$a0,8
    # Line 256
    sh	$t3,0($a1)
    # Line 255
    addiu	$a1,$a1,4
    # Line 256
    lw	$t2,-4($a0)
    # Line 255
    bne	$a0,$a4,.L0d972e20
    # Line 256
    sh	$t2,-2($a1)
.L0d972e3c:
    # Line 257
    jr	$ra
    nop
.end pack_s

# Function: InterpretVertex
# Declared: Line 261 (Source lines: 262-325)
# Address: 0x0d972e50 - 0x0d972fc8 (Size: 376 bytes, Frame: 32)
.ent InterpretVertex
InterpretVertex:
    # Line 262
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # Line 263
    lw	$at,4112($zero)
    # Line 265
    lui	$v0,0x1
    # Line 263
    sd	$at,8($sp)
    # Line 265
    addu	$at,$at,$v0
    sd	$at,0($sp)
    beqz	$a1,.L0d972ee8
    sw	$a1,27140($at)
    li	$v1,1
    beq	$a1,$v1,.L0d972f1c
    # Line 279
    ld	$t9,8($sp)
    # Line 265
    li	$a0,2
    beq	$a1,$a0,.L0d972f4c
    li	$a3,3
    beq	$a1,$a3,.L0d972f78
    # Line 297
    ld	$t9,8($sp)
    # Line 265
    li	$a4,4
    beq	$a1,$a4,.L0d972fa0
    # Line 306
    ld	$t9,8($sp)
    # Line 265
    li	$a5,5
    beq	$a1,$a5,.L0d972eb4
.L0d972ea8:
    ld	$ra,16($sp)
    # Line 325
    jr	$ra
    addiu	$sp,$sp,32
.L0d972eb4:
    # Line 315
    ld	$t9,8($sp)
    lw	$t9,6132($t9)
    lw	$t9,1396($t9)
    jalr	$t9
    move	$a0,$a2
    # Line 316
    ld	$at,8($sp)
    ld	$ra,16($sp)
    lw	$at,6132($at)
    ld	$v0,0($sp)
    lw	$at,1396($at)
    # Line 325
    addiu	$sp,$sp,32
    jr	$ra
    # Line 316
    sw	$at,27144($v0)
.L0d972ee8:
    # Line 270
    ld	$t9,8($sp)
    lw	$t9,6132($t9)
    lw	$t9,1340($t9)
    jalr	$t9
    move	$a0,$a2
    # Line 271
    ld	$at,8($sp)
    ld	$ra,16($sp)
    lw	$at,6132($at)
    ld	$v0,0($sp)
    lw	$at,1340($at)
    # Line 325
    addiu	$sp,$sp,32
    jr	$ra
    # Line 271
    sw	$at,27144($v0)
.L0d972f1c:
    # Line 279
    lw	$t9,6132($t9)
    lw	$t9,1332($t9)
    jalr	$t9
    move	$a0,$a2
    # Line 280
    ld	$at,8($sp)
    ld	$ra,16($sp)
    lw	$at,6132($at)
    ld	$v0,0($sp)
    lw	$at,1332($at)
    # Line 325
    addiu	$sp,$sp,32
    jr	$ra
    # Line 280
    sw	$at,27144($v0)
.L0d972f4c:
    # Line 288
    ld	$t9,8($sp)
    lw	$t9,6132($t9)
    lw	$t9,1372($t9)
    jalr	$t9
    move	$a0,$a2
    # Line 289
    ld	$ra,8($sp)
    lw	$ra,6132($ra)
    # Line 293
    ld	$at,0($sp)
    # Line 289
    lw	$ra,1372($ra)
    # Line 293
    b	.L0d972ea8
    # Line 289
    sw	$ra,27144($at)
.L0d972f78:
    # Line 297
    lw	$t9,6132($t9)
    lw	$t9,1364($t9)
    jalr	$t9
    move	$a0,$a2
    # Line 298
    ld	$ra,8($sp)
    lw	$ra,6132($ra)
    # Line 302
    ld	$at,0($sp)
    # Line 298
    lw	$ra,1364($ra)
    # Line 302
    b	.L0d972ea8
    # Line 298
    sw	$ra,27144($at)
.L0d972fa0:
    # Line 306
    lw	$t9,6132($t9)
    lw	$t9,1404($t9)
    jalr	$t9
    move	$a0,$a2
    # Line 307
    ld	$ra,8($sp)
    lw	$ra,6132($ra)
    # Line 311
    ld	$at,0($sp)
    # Line 307
    lw	$ra,1404($ra)
    # Line 311
    b	.L0d972ea8
    # Line 307
    sw	$ra,27144($at)
.end InterpretVertex

# Function: InterpretColorIndex
# Declared: Line 328 (Source lines: 329-476)
# Address: 0x0d972fd0 - 0x0d97326c (Size: 668 bytes, Frame: 32)
.ent InterpretColorIndex
InterpretColorIndex:
    # Line 329
    addiu	$sp,$sp,-32
    # Line 331
    la	$a4,sub_0daf0000
    addiu	$a7,$a1,-6
    # Line 329
    move	$a6,$a2
    # Line 331
    sltiu	$t0,$a7,16
    sll	$a7,$a7,0x2
    addiu	$a4,$a4,-29692
    lw	$a5,4112($zero)
    beqz	$t0,.L0d973034
    addu	$a4,$a4,$a7
    lw	$a7,0($a4)
    sd	$a5,16($sp)
    jr	$a7
    sd	$ra,24($sp)
.L0d973008:
    # Line 389
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11744
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 391
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1452($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    ld	$ra,24($sp)
.L0d973034:
    # Line 476
    jr	$ra
    addiu	$sp,$sp,32
.L0d97303c:
    # Line 338
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1564($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d973058:
    # Line 467
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1500($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d973074:
    # Line 459
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1508($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d973090:
    # Line 449
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11744
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 451
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1516($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d9730c0:
    # Line 440
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11632
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 442
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1484($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d9730f0:
    # Line 433
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1532($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d97310c:
    # Line 423
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11520
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 425
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1540($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d97313c:
    # Line 414
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11408
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 416
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1524($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d97316c:
    # Line 407
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1436($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d973188:
    # Line 399
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1444($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d9731a4:
    # Line 380
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11632
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 382
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1420($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d9731d4:
    # Line 373
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1468($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.L0d9731f0:
    # Line 363
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11520
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 365
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1476($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d973220:
    # Line 354
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11408
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 356
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1460($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d973034
    ld	$ra,24($sp)
.L0d973250:
    # Line 346
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1556($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973034
    ld	$ra,24($sp)
.end InterpretColorIndex

# Function: InterpretNormal
# Declared: Line 479 (Source lines: 480-524)
# Address: 0x0d973270 - 0x0d973348 (Size: 216 bytes, Frame: 32)
.ent InterpretNormal
InterpretNormal:
    # Line 480
    addiu	$sp,$sp,-32
    # Line 482
    lw	$v0,4112($zero)
    # Line 484
    li	$at,22
    # Line 480
    move	$a4,$a2
    sd	$v0,16($sp)
    # Line 484
    li	$v1,23
    beq	$a1,$at,.L0d9732d4
    sd	$ra,24($sp)
    beq	$a1,$v1,.L0d973304
    # Line 497
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 484
    li	$a0,24
    beq	$a1,$a0,.L0d973330
    # Line 507
    ld	$t9,16($sp)
    # Line 484
    li	$a2,25
    beq	$a1,$a2,.L0d9732b8
    ld	$ra,24($sp)
.L0d9732b0:
    # Line 524
    jr	$ra
    addiu	$sp,$sp,32
.L0d9732b8:
    # Line 515
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1604($t9)
    jal	sub_0d970000
    move	$a0,$a4
    b	.L0d9732b0
    ld	$ra,24($sp)
.L0d9732d4:
    # Line 488
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,11632
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 490
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1588($t9)
    jal	sub_0d970000
    addiu	$a0,$sp,0
    b	.L0d9732b0
    ld	$ra,24($sp)
.L0d973304:
    # Line 497
    addiu	$t9,$t9,11744
    move	$a1,$a2
    bal __glOdysseyDlistInterpretPreclip
    addiu	$a2,$sp,0
    # Line 499
    ld	$t9,16($sp)
    lw	$t9,6132($t9)
    lw	$t9,1620($t9)
    jalr	$t9
    addiu	$a0,$sp,0
    b	.L0d9732b0
    ld	$ra,24($sp)
.L0d973330:
    # Line 507
    lw	$t9,6132($t9)
    lw	$t9,1612($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d9732b0
    ld	$ra,24($sp)
.end InterpretNormal

# Function: InterpretTexCoord
# Declared: Line 528 (Source lines: 529-602)
# Address: 0x0d973350 - 0x0d973444 (Size: 244 bytes, Frame: 16)
.ent InterpretTexCoord
InterpretTexCoord:
    # Line 530
    la	$a5,sub_0daf0000
    addiu	$a6,$a1,-30
    # Line 529
    addiu	$sp,$sp,-16
    # Line 530
    sltiu	$a7,$a6,8
    sll	$a6,$a6,0x2
    addiu	$a5,$a5,-29628
    lw	$a4,4112($zero)
    beqz	$a7,.L0d973394
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    jr	$a6
    sd	$ra,0($sp)
.L0d973380:
    # Line 561
    lw	$t9,6132($a4)
    lw	$t9,1668($t9)
    jalr	$t9
    move	$a0,$a2
    ld	$ra,0($sp)
.L0d973394:
    # Line 602
    jr	$ra
    addiu	$sp,$sp,16
.L0d97339c:
    # Line 537
    lw	$t9,6132($a4)
    lw	$t9,1644($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.L0d9733b4:
    # Line 593
    lw	$t9,6132($a4)
    lw	$t9,1732($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.L0d9733cc:
    # Line 585
    lw	$t9,6132($a4)
    lw	$t9,1740($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.L0d9733e4:
    # Line 577
    lw	$t9,6132($a4)
    lw	$t9,1700($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.L0d9733fc:
    # Line 569
    lw	$t9,6132($a4)
    lw	$t9,1708($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.L0d973414:
    # Line 553
    lw	$t9,6132($a4)
    lw	$t9,1676($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.L0d97342c:
    # Line 545
    lw	$t9,6132($a4)
    lw	$t9,1636($t9)
    jalr	$t9
    move	$a0,$a2
    b	.L0d973394
    ld	$ra,0($sp)
.end InterpretTexCoord

.late_rodata
jtbl_0dae8c04:
    .word .L0d97303c
    .word .L0d973250
    .word .L0d973220
    .word .L0d9731f0
    .word .L0d9731d4
    .word .L0d9731a4
    .word .L0d973008
    .word .L0d973188
    .word .L0d97316c
    .word .L0d97313c
    .word .L0d97310c
    .word .L0d9730f0
    .word .L0d9730c0
    .word .L0d973090
    .word .L0d973074
    .word .L0d973058
jtbl_0dae8c44:
    .word .L0d97339c
    .word .L0d97342c
    .word .L0d973414
    .word .L0d973380
    .word .L0d9733fc
    .word .L0d9733e4
    .word .L0d9733cc
    .word .L0d9733b4

