# Source: ../ODYSSEY/ody_clip.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_clip.c
# Total Functions: 10

.text

# Function: OdysseyClipAll
# Declared: Line 97 (Source lines: 104-111)
# Address: 0x0d9ee050 - 0x0d9ee248 (Size: 504 bytes, Frame: 0)
.ent OdysseyClipAll
OdysseyClipAll:
    # Line 104
    lwc1	$f29,16($a2)
    lwc1	$f31,16($a1)
    sub.s	$f31,$f31,$f29
    madd.s	$f29,$f29,$f15,$f31
    swc1	$f29,16($a0)
    lwc1	$f25,20($a2)
    lwc1	$f27,20($a1)
    sub.s	$f27,$f27,$f25
    madd.s	$f25,$f25,$f15,$f27
    swc1	$f25,20($a0)
    lwc1	$f21,24($a2)
    lwc1	$f23,24($a1)
    sub.s	$f23,$f23,$f21
    madd.s	$f21,$f21,$f15,$f23
    swc1	$f21,24($a0)
    lwc1	$f18,28($a2)
    lwc1	$f19,28($a1)
    sub.s	$f19,$f19,$f18
    madd.s	$f18,$f18,$f15,$f19
    swc1	$f18,28($a0)
    # Line 105
    lwc1	$f16,144($a2)
    lwc1	$f17,144($a1)
    sub.s	$f17,$f17,$f16
    madd.s	$f16,$f16,$f15,$f17
    swc1	$f16,144($a0)
    lwc1	$f13,148($a2)
    lwc1	$f14,148($a1)
    sub.s	$f14,$f14,$f13
    madd.s	$f13,$f13,$f15,$f14
    swc1	$f13,148($a0)
    lwc1	$f11,152($a2)
    lwc1	$f12,152($a1)
    sub.s	$f12,$f12,$f11
    madd.s	$f11,$f11,$f15,$f12
    swc1	$f11,152($a0)
    lwc1	$f9,156($a2)
    lwc1	$f10,156($a1)
    sub.s	$f10,$f10,$f9
    madd.s	$f9,$f9,$f15,$f10
    swc1	$f9,156($a0)
    # Line 106
    lwc1	$f7,160($a2)
    lwc1	$f8,160($a1)
    sub.s	$f8,$f8,$f7
    madd.s	$f7,$f7,$f15,$f8
    swc1	$f7,160($a0)
    lwc1	$f5,164($a2)
    lwc1	$f6,164($a1)
    sub.s	$f6,$f6,$f5
    madd.s	$f5,$f5,$f15,$f6
    swc1	$f5,164($a0)
    lwc1	$f3,168($a2)
    lwc1	$f4,168($a1)
    sub.s	$f4,$f4,$f3
    madd.s	$f3,$f3,$f15,$f4
    swc1	$f3,168($a0)
    lwc1	$f1,172($a2)
    lwc1	$f2,172($a1)
    sub.s	$f2,$f2,$f1
    madd.s	$f1,$f1,$f15,$f2
    swc1	$f1,172($a0)
    # Line 107
    lwc1	$f31,48($a2)
    lwc1	$f0,48($a1)
    sub.s	$f0,$f0,$f31
    madd.s	$f31,$f31,$f15,$f0
    swc1	$f31,48($a0)
    lwc1	$f27,52($a2)
    lwc1	$f29,52($a1)
    sub.s	$f29,$f29,$f27
    madd.s	$f27,$f27,$f15,$f29
    swc1	$f27,52($a0)
    lwc1	$f23,56($a2)
    lwc1	$f25,56($a1)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f15,$f25
    swc1	$f23,56($a0)
    lwc1	$f19,60($a2)
    lwc1	$f21,60($a1)
    sub.s	$f21,$f21,$f19
    madd.s	$f19,$f19,$f15,$f21
    swc1	$f19,60($a0)
    # Line 108
    lwc1	$f17,192($a2)
    lwc1	$f18,192($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,192($a0)
    lwc1	$f14,196($a2)
    lwc1	$f16,196($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,196($a0)
    lwc1	$f12,200($a2)
    lwc1	$f13,200($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,200($a0)
    # Line 109
    lwc1	$f10,368($a2)
    lwc1	$f11,368($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,368($a0)
    lwc1	$f8,372($a2)
    lwc1	$f9,372($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,372($a0)
    lwc1	$f6,376($a2)
    lwc1	$f7,376($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,376($a0)
    # Line 110
    lwc1	$f4,384($a2)
    lwc1	$f5,384($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,384($a0)
    lwc1	$f2,388($a2)
    lwc1	$f3,388($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,388($a0)
    lwc1	$f0,392($a2)
    lwc1	$f1,392($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 111
    jr	$ra
    # Line 110
    swc1	$f0,392($a0)
.end OdysseyClipAll

# Function: __glOdysseyGetNumHWClipPlanes
# Declared: Line 118 (Source lines: 128-169)
# Address: 0x0d9ee250 - 0x0d9ee2e8 (Size: 152 bytes, Frame: 0)
.globl __glOdysseyGetNumHWClipPlanes
.ent __glOdysseyGetNumHWClipPlanes
__glOdysseyGetNumHWClipPlanes:
    # Line 132
    lw	$a4,1804($a0)
    # Line 133
    move	$a3,$zero
    # Line 128
    lw	$a5,1792($a0)
    # Line 132
    beqz	$a4,.L0d9ee280
    move	$a2,$a4
    move	$a3,$zero
    nop
    nop
.L0d9ee270:
    # Line 134
    addiu	$at,$a2,-1
    and	$a2,$a2,$at
    # Line 133
    bnez	$a2,.L0d9ee270
    addiu	$a3,$a3,1
.L0d9ee280:
    # Line 138
    li	$a6,3
    # Line 133
    lw	$v0,31600($a0)
    dsll32	$v0,$v0,0xf
    # Line 138
    dsll32	$a0,$a5,0x1
    # Line 133
    bgez	$v0,.L0d9ee2a8
    lui	$a2,0x1
    # Line 169
    move	$v0,$a3
    andi	$v1,$a4,0x100
    jr	$ra
    movn	$v0,$zero,$v1
.L0d9ee2a8:
    # Line 138
    bgez	$a0,.L0d9ee2cc
    li	$a0,2
    move	$a0,$a6
.L0d9ee2b4:
    # Line 151
    subu	$v0,$a6,$a0
    slt	$a2,$a3,$v0
    movn	$v0,$a3,$a2
    # Line 169
    andi	$a1,$a4,0x100
    jr	$ra
    movn	$v0,$zero,$a1
.L0d9ee2cc:
    # Line 144
    and	$a7,$a2,$a5
    move	$a1,$a0
    # Line 138
    lui	$v1,0x2
    # Line 144
    movz	$a1,$zero,$a7
    # Line 138
    and	$v1,$a5,$v1
    b	.L0d9ee2b4
    movz	$a0,$a1,$v1
.end __glOdysseyGetNumHWClipPlanes

# Function: __glOdysseyGetNumSWClipPlanes
# Declared: Line 176 (Source lines: 177-193)
# Address: 0x0d9ee2f0 - 0x0d9ee360 (Size: 112 bytes, Frame: 32)
.globl __glOdysseyGetNumSWClipPlanes
.ent __glOdysseyGetNumSWClipPlanes
__glOdysseyGetNumSWClipPlanes:
    # Line 183
    lw	$a2,1804($a0)
    # Line 177
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s0,8($sp)
    # Line 184
    move	$s0,$zero
    # Line 177
    addiu	$at,$at,-23904
    sd	$gp,0($sp)
    # Line 183
    beqz	$a2,.L0d9ee358
    # Line 177
    addu	$gp,$t9,$at
    # Line 183
    move	$s0,$zero
    nop
    nop
.L0d9ee320:
    # Line 185
    addiu	$v0,$a2,-1
    and	$a2,$a2,$v0
    # Line 184
    bnez	$a2,.L0d9ee320
    addiu	$s0,$s0,1
    sd	$ra,16($sp)
.L0d9ee334:
    # Line 188
    # lw $t9, -29720($gp) # &__glOdysseyGetNumHWClipPlanes
    bal __glOdysseyGetNumHWClipPlanes
    nop
    ld	$ra,16($sp)
    # Line 193
    ld	$gp,0($sp)
    subu	$v0,$s0,$v0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ee358:
    b	.L0d9ee334
    sd	$ra,16($sp)
.end __glOdysseyGetNumSWClipPlanes

# Function: __glOdysseyValidateSoftClipPlanes
# Declared: Line 198 (Source lines: 199-399)
# Address: 0x0d9ee360 - 0x0d9eea1c (Size: 1724 bytes, Frame: 192)
.globl __glOdysseyValidateSoftClipPlanes
.ent __glOdysseyValidateSoftClipPlanes
__glOdysseyValidateSoftClipPlanes:
    # Line 199
    addiu	$sp,$sp,-192
    sd	$s8,152($sp)
    sd	$s5,144($sp)
    sd	$s1,104($sp)
    sd	$s0,136($sp)
    sd	$s7,160($sp)
    sd	$s4,168($sp)
    lui	$at,0x11
    sd	$s3,176($sp)
    addiu	$at,$at,-24016
    sd	$gp,120($sp)
    addu	$gp,$t9,$at
    # Line 209
    # lw $t9, -29720($gp) # &__glOdysseyGetNumHWClipPlanes
    # Line 199
    sd	$ra,112($sp)
    sd	$s6,128($sp)
    move	$s6,$a0
    # Line 209
    bal __glOdysseyGetNumHWClipPlanes
    sd	$s2,184($sp)
    # Line 216
    lw	$a5,29716($s6)
    # Line 217
    lwc1	$f15,0($a5)
    swc1	$f15,0($sp)
    # Line 218
    lwc1	$f14,16($a5)
    swc1	$f14,4($sp)
    # Line 219
    lwc1	$f13,32($a5)
    swc1	$f13,8($sp)
    # Line 220
    lwc1	$f12,48($a5)
    swc1	$f12,12($sp)
    # Line 221
    lwc1	$f11,4($a5)
    swc1	$f11,16($sp)
    # Line 222
    lwc1	$f10,20($a5)
    swc1	$f10,20($sp)
    # Line 223
    lwc1	$f9,36($a5)
    swc1	$f9,24($sp)
    # Line 224
    lwc1	$f8,52($a5)
    swc1	$f8,28($sp)
    # Line 225
    lwc1	$f7,8($a5)
    swc1	$f7,32($sp)
    # Line 226
    lwc1	$f6,24($a5)
    swc1	$f6,36($sp)
    # Line 227
    lwc1	$f5,40($a5)
    swc1	$f5,40($sp)
    # Line 228
    lwc1	$f4,56($a5)
    swc1	$f4,44($sp)
    # Line 229
    lwc1	$f3,12($a5)
    swc1	$f3,48($sp)
    # Line 230
    lwc1	$f2,28($a5)
    swc1	$f2,52($sp)
    # Line 231
    lwc1	$f1,44($a5)
    swc1	$f1,56($sp)
    # Line 232
    lwc1	$f0,60($a5)
    # Line 240
    lui	$a4,0x1
    addu	$s8,$s6,$a4
    # Line 232
    swc1	$f0,60($sp)
    # Line 240
    li	$s7,13
    sw	$zero,26648($s8)
    move	$s4,$zero
    move	$s5,$zero
    lw	$a0,1804($s6)
    move	$s3,$zero
    li	$s0,1
    # Line 209
    move	$s1,$v0
    # Line 240
    and	$v0,$s0,$a0
    move	$a3,$zero
    ori	$a4,$a4,0x6748
    beqz	$v0,.L0d9ee478
    addu	$s2,$a4,$s6
    beqz	$s1,.L0d9ee9b0
    nop
    # Line 248
    li	$s4,1
    # Line 247
    addiu	$s1,$s1,-1
.L0d9ee478:
    # Line 241
    sll	$s0,$s0,0x1
    addiu	$s2,$s2,16
    addiu	$s3,$s3,16
    b	.L0d9eea10
    addiu	$s5,$s5,1
.L0d9ee48c:
    # Line 247
    addiu	$s1,$s1,-1
.L0d9ee490:
    # Line 241
    addiu	$s2,$s2,16
    addiu	$s5,$s5,2
    addiu	$s3,$s3,16
    sll	$s0,$s0,0x1
    beq	$s5,$s7,.L0d9ee54c
    # Line 240
    and	$a6,$s0,$a0
.L0d9ee4a8:
    beqz	$a6,.L0d9ee4c0
    nop
    beqz	$s1,.L0d9ee6ac
    nop
    # Line 248
    addiu	$s4,$s4,1
    # Line 247
    addiu	$s1,$s1,-1
.L0d9ee4c0:
    # Line 241
    sll	$s0,$s0,0x1
    # Line 240
    and	$a7,$s0,$a0
    # Line 241
    addiu	$s2,$s2,16
    # Line 240
    beqz	$a7,.L0d9ee490
    # Line 241
    addiu	$s3,$s3,16
    # Line 240
    bnezl	$s1,.L0d9ee48c
    # Line 248
    addiu	$s4,$s4,1
    # Line 252
    lw	$t3,1748($s6)
    addu	$t3,$t3,$s3
    lwc1	$f19,0($t3)
    swc1	$f19,88($sp)
    # Line 253
    lw	$t2,1748($s6)
    addu	$t2,$t2,$s3
    lwc1	$f18,4($t2)
    swc1	$f18,92($sp)
    # Line 254
    lw	$t1,1748($s6)
    addu	$t1,$t1,$s3
    lwc1	$f17,8($t1)
    swc1	$f17,96($sp)
    # Line 255
    lw	$t0,1748($s6)
    # Line 262
    # lw $t9, -17252($gp) # &__glMipsXForm4
    # Line 255
    addu	$t0,$t0,$s3
    lwc1	$f16,12($t0)
    # Line 262
    addiu	$a2,$sp,0
    addiu	$a1,$sp,88
    move	$a0,$s2
    jal	__glMipsXForm4
    # Line 255
    swc1	$f16,100($sp)
    # Line 267
    lw	$a3,26648($s8)
    lui	$a4,0x1
    or	$a3,$s0,$a3
    sw	$a3,26648($s8)
    ori	$a4,$a4,0x6748
    b	.L0d9ee490
    lw	$a0,1804($s6)
.L0d9ee54c:
    # Line 281
    andi	$a2,$a0,0x3f
    # Line 302
    mtc1	$zero,$f21
    # Line 308
    lwc1	$f25,_lit_3f800000
    # Line 307
    lwc1	$f23,_lit_bf800000
    # Line 281
    beqz	$a2,.L0d9ee580
    # Line 284
    move	$a0,$zero
    # Line 281
    move	$a0,$zero
    nop
    nop
.L0d9ee570:
    # Line 285
    addiu	$a5,$a2,-1
    and	$a2,$a2,$a5
    # Line 284
    bnez	$a2,.L0d9ee570
    addiu	$a0,$a0,1
.L0d9ee580:
    # Line 290
    lui	$a2,0x2
    beqz	$s4,.L0d9ee93c
    # Line 287
    subu	$a0,$a0,$s1
    # Line 290
    addu	$s1,$a2,$s6
    beqz	$a0,.L0d9ee978
    ld	$s4,168($sp)
    beqz	$a3,.L0d9ee678
    nop
    lw	$a6,-25156($s1)
    beqz	$a6,.L0d9ee678
    nop
    # Line 301
    lw	$a0,1748($s6)
    # Line 302
    swc1	$f21,128($a0)
    # Line 303
    swc1	$f21,132($a0)
    lbu	$a7,-25139($s1)
    # Line 368
    li	$s5,8
    # Line 303
    beqz	$a7,.L0d9ee71c
    # Line 301
    nop
    # Line 308
    swc1	$f25,140($a0)
    # Line 307
    swc1	$f23,136($a0)
.L0d9ee5d0:
    # Line 319
    lw	$t2,26648($s8)
    ori	$t2,$t2,0x100
    sw	$t2,26648($s8)
    lw	$t0,-25156($s1)
    # Line 368
    li	$s0,256
    # Line 319
    li	$t1,3
    # Line 368
    li	$s3,128
    addu	$s2,$a4,$s6
    # Line 319
    beq	$t0,$t1,.L0d9ee754
    # Line 368
    addiu	$s2,$s2,128
    nop
    nop
.L0d9ee600:
    lw	$t8,26648($s8)
    and	$t8,$s0,$t8
    beqz	$t8,.L0d9ee664
    nop
    # Line 381
    lw	$v1,1748($s6)
    addu	$v1,$v1,$s3
    lwc1	$f0,0($v1)
    swc1	$f0,88($sp)
    # Line 382
    lw	$v0,1748($s6)
    addu	$v0,$v0,$s3
    lwc1	$f31,4($v0)
    swc1	$f31,92($sp)
    # Line 383
    lw	$at,1748($s6)
    addu	$at,$at,$s3
    lwc1	$f29,8($at)
    swc1	$f29,96($sp)
    # Line 384
    lw	$ra,1748($s6)
    # Line 387
    # lw $t9, -17252($gp) # &__glMipsXForm4
    # Line 384
    addu	$ra,$ra,$s3
    lwc1	$f27,12($ra)
    # Line 387
    addiu	$a2,$sp,0
    addiu	$a1,$sp,88
    move	$a0,$s2
    jal	__glMipsXForm4
    # Line 384
    swc1	$f27,100($sp)
.L0d9ee664:
    # Line 378
    addiu	$s5,$s5,1
    sll	$s0,$s0,0x1
    addiu	$s2,$s2,16
    bne	$s5,$s7,.L0d9ee600
    addiu	$s3,$s3,16
.L0d9ee678:
    ld	$s8,152($sp)
    ld	$s5,144($sp)
    ld	$s0,136($sp)
    ld	$s7,160($sp)
    ld	$s3,176($sp)
    ld	$s2,184($sp)
    # Line 399
    ld	$gp,120($sp)
    ld	$ra,112($sp)
    # Line 396
    sb	$zero,-25144($s1)
    # Line 399
    ld	$s1,104($sp)
    ld	$s6,128($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9ee6ac:
    # Line 252
    lw	$a3,1748($s6)
    addu	$a3,$a3,$s3
    lwc1	$f4,0($a3)
    swc1	$f4,88($sp)
    # Line 253
    lw	$a2,1748($s6)
    addu	$a2,$a2,$s3
    lwc1	$f3,4($a2)
    swc1	$f3,92($sp)
    # Line 254
    lw	$a1,1748($s6)
    addu	$a1,$a1,$s3
    lwc1	$f2,8($a1)
    swc1	$f2,96($sp)
    # Line 255
    lw	$a0,1748($s6)
    # Line 262
    # lw $t9, -17252($gp) # &__glMipsXForm4
    # Line 255
    addu	$a0,$a0,$s3
    lwc1	$f1,12($a0)
    # Line 262
    addiu	$a2,$sp,0
    addiu	$a1,$sp,88
    move	$a0,$s2
    jal	__glMipsXForm4
    # Line 255
    swc1	$f1,100($sp)
    # Line 267
    lw	$a3,26648($s8)
    lui	$a4,0x1
    or	$a3,$s0,$a3
    sw	$a3,26648($s8)
    ori	$a4,$a4,0x6748
    b	.L0d9ee4c0
    lw	$a0,1804($s6)
.L0d9ee71c:
    # Line 311
    ldc1	$f8,26064($s8)
    ldc1	$f7,26056($s8)
    ldc1	$f6,_lit8_3ff0000000000000
    ldc1	$f5,_lit8_bff0000000000000
    c.lt.d	$f7,$f8
    movf.d	$f5,$f6,$fcc0
    cvt.s.d	$f5,$f5
    swc1	$f5,136($a0)
    # Line 312
    ldc1	$f6,26056($s8)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f6
    cvt.s.d	$f5,$f5
    b	.L0d9ee5d0
    swc1	$f5,140($a0)
.L0d9ee754:
    # Line 323
    lw	$a7,29724($s6)
    # Line 329
    lwc1	$f16,0($a7)
    ldc1	$f11,_lit8_3feccccccccccccd
    lwc1	$f15,12($a7)
    cvt.d.s	$f16,$f16
    cvt.d.s	$f15,$f15
    madd.d	$f15,$f15,$f16,$f11
    # Line 328
    lw	$t2,1748($s6)
    # Line 329
    cvt.s.d	$f15,$f15
    swc1	$f15,144($t2)
    # Line 330
    lwc1	$f14,16($a7)
    lwc1	$f13,28($a7)
    cvt.d.s	$f14,$f14
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f13,$f14,$f11
    cvt.s.d	$f13,$f13
    swc1	$f13,148($t2)
    # Line 331
    lwc1	$f12,32($a7)
    lwc1	$f10,44($a7)
    cvt.d.s	$f12,$f12
    cvt.d.s	$f10,$f10
    madd.d	$f10,$f10,$f12,$f11
    cvt.s.d	$f10,$f10
    swc1	$f10,152($t2)
    # Line 332
    lwc1	$f9,48($a7)
    lwc1	$f8,60($a7)
    cvt.d.s	$f9,$f9
    cvt.d.s	$f8,$f8
    madd.d	$f8,$f8,$f9,$f11
    cvt.s.d	$f8,$f8
    swc1	$f8,156($t2)
    # Line 339
    lwc1	$f7,0($a7)
    lwc1	$f6,12($a7)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f6,$f6
    nmsub.d	$f6,$f6,$f7,$f11
    # Line 338
    lw	$t1,1748($s6)
    # Line 339
    cvt.s.d	$f6,$f6
    swc1	$f6,160($t1)
    # Line 340
    lwc1	$f5,16($a7)
    lwc1	$f4,28($a7)
    cvt.d.s	$f5,$f5
    cvt.d.s	$f4,$f4
    nmsub.d	$f4,$f4,$f5,$f11
    cvt.s.d	$f4,$f4
    swc1	$f4,164($t1)
    # Line 341
    lwc1	$f3,32($a7)
    lwc1	$f2,44($a7)
    cvt.d.s	$f3,$f3
    cvt.d.s	$f2,$f2
    nmsub.d	$f2,$f2,$f3,$f11
    cvt.s.d	$f2,$f2
    swc1	$f2,168($t1)
    # Line 342
    lwc1	$f1,48($a7)
    lwc1	$f0,60($a7)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f0,$f0
    nmsub.d	$f0,$f0,$f1,$f11
    cvt.s.d	$f0,$f0
    swc1	$f0,172($t1)
    # Line 349
    lwc1	$f31,4($a7)
    lwc1	$f29,12($a7)
    cvt.d.s	$f31,$f31
    cvt.d.s	$f29,$f29
    madd.d	$f29,$f29,$f31,$f11
    # Line 348
    lw	$t0,1748($s6)
    # Line 349
    cvt.s.d	$f29,$f29
    swc1	$f29,176($t0)
    # Line 350
    lwc1	$f27,20($a7)
    lwc1	$f25,28($a7)
    cvt.d.s	$f27,$f27
    cvt.d.s	$f25,$f25
    madd.d	$f25,$f25,$f27,$f11
    cvt.s.d	$f25,$f25
    swc1	$f25,180($t0)
    # Line 351
    lwc1	$f23,36($a7)
    lwc1	$f21,44($a7)
    cvt.d.s	$f23,$f23
    cvt.d.s	$f21,$f21
    madd.d	$f21,$f21,$f23,$f11
    cvt.s.d	$f21,$f21
    swc1	$f21,184($t0)
    # Line 352
    lwc1	$f19,52($a7)
    lwc1	$f18,60($a7)
    cvt.d.s	$f19,$f19
    cvt.d.s	$f18,$f18
    madd.d	$f18,$f18,$f19,$f11
    cvt.s.d	$f18,$f18
    swc1	$f18,188($t0)
    # Line 359
    lwc1	$f17,4($a7)
    lwc1	$f16,12($a7)
    cvt.d.s	$f17,$f17
    cvt.d.s	$f16,$f16
    nmsub.d	$f16,$f16,$f17,$f11
    # Line 358
    lw	$a6,1748($s6)
    # Line 359
    cvt.s.d	$f16,$f16
    swc1	$f16,192($a6)
    # Line 360
    lwc1	$f15,20($a7)
    lwc1	$f14,28($a7)
    cvt.d.s	$f15,$f15
    cvt.d.s	$f14,$f14
    nmsub.d	$f14,$f14,$f15,$f11
    cvt.s.d	$f14,$f14
    swc1	$f14,196($a6)
    # Line 361
    lwc1	$f13,36($a7)
    lwc1	$f12,44($a7)
    cvt.d.s	$f13,$f13
    cvt.d.s	$f12,$f12
    nmsub.d	$f12,$f12,$f13,$f11
    cvt.s.d	$f12,$f12
    swc1	$f12,200($a6)
    # Line 362
    lwc1	$f10,52($a7)
    lwc1	$f9,60($a7)
    cvt.d.s	$f10,$f10
    cvt.d.s	$f9,$f9
    nmsub.d	$f9,$f9,$f10,$f11
    cvt.s.d	$f9,$f9
    swc1	$f9,204($a6)
    # Line 368
    lw	$a5,26648($s8)
    ori	$a5,$a5,0x1e00
    b	.L0d9ee600
    sw	$a5,26648($s8)
.L0d9ee93c:
    ld	$s2,184($sp)
    ld	$s3,176($sp)
    ld	$s7,160($sp)
    ld	$s4,168($sp)
    ld	$s0,136($sp)
    ld	$s5,144($sp)
    ld	$s8,152($sp)
    # Line 399
    ld	$gp,120($sp)
    ld	$ra,112($sp)
    ld	$s1,104($sp)
    # Line 378
    addu	$t3,$a2,$s6
    # Line 399
    ld	$s6,128($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 396
    sb	$zero,-25144($t3)
.L0d9ee978:
    ld	$s2,184($sp)
    ld	$s3,176($sp)
    ld	$s7,160($sp)
    ld	$s8,152($sp)
    ld	$s5,144($sp)
    ld	$s0,136($sp)
    # Line 399
    ld	$gp,120($sp)
    ld	$ra,112($sp)
    # Line 378
    addu	$s1,$a2,$s6
    # Line 399
    ld	$s6,128($sp)
    # Line 396
    sb	$zero,-25144($s1)
    # Line 399
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9ee9b0:
    # Line 252
    lw	$at,1748($s6)
    lwc1	$f21,0($at)
    swc1	$f21,88($sp)
    # Line 253
    lw	$ra,1748($s6)
    lwc1	$f19,4($ra)
    swc1	$f19,92($sp)
    # Line 254
    lw	$t9,1748($s6)
    lwc1	$f18,8($t9)
    swc1	$f18,96($sp)
    # Line 255
    lw	$t8,1748($s6)
    # Line 262
    # lw $t9, -17252($gp) # &__glMipsXForm4
    # Line 255
    lwc1	$f17,12($t8)
    # Line 262
    addiu	$a2,$sp,0
    addiu	$a1,$sp,88
    move	$a0,$s2
    jal	__glMipsXForm4
    # Line 255
    swc1	$f17,100($sp)
    # Line 267
    lw	$a3,26648($s8)
    lui	$a4,0x1
    or	$a3,$s0,$a3
    sw	$a3,26648($s8)
    ori	$a4,$a4,0x6748
    b	.L0d9ee478
    lw	$a0,1804($s6)
.L0d9eea10:
    # Line 240
    and	$a6,$s0,$a0
    b	.L0d9ee4a8
    nop
.end __glOdysseyValidateSoftClipPlanes

# Function: __glOdysseySoftClipPickParameterClipProcs
# Declared: Line 402 (Source lines: 403-406)
# Address: 0x0d9eea20 - 0x0d9eea40 (Size: 32 bytes, Frame: 0)
.globl __glOdysseySoftClipPickParameterClipProcs
.ent __glOdysseySoftClipPickParameterClipProcs
__glOdysseySoftClipPickParameterClipProcs:
    # Line 403
    lui	$v1,0x11
    addiu	$v1,$v1,-25744
    addu	$at,$t9,$v1
    la	$v0,sub_0d9f0000
    addiu	$v0,$v0,-8112
    # Line 405
    sw	$v0,12152($a0)
    # Line 406
    jr	$ra
    # Line 404
    sw	$v0,12544($a0)
.end __glOdysseySoftClipPickParameterClipProcs

# Function: __glOdysseySendShadowAttributes
# Declared: Line 415 (Source lines: 416-763)
# Address: 0x0d9eea40 - 0x0d9ef1b0 (Size: 1904 bytes, Frame: 48)
.globl __glOdysseySendShadowAttributes
.ent __glOdysseySendShadowAttributes
__glOdysseySendShadowAttributes:
    # Line 416
    addiu	$sp,$sp,-48
    # Line 445
    addiu	$a6,$a1,132
    # Line 416
    sd	$s2,8($sp)
    # Line 447
    sll	$s2,$a2,0x3
    # Line 416
    li	$a5,-1
    # Line 447
    addu	$s2,$a1,$s2
    xor	$a5,$a2,$a5
    addiu	$s2,$s2,140
    # Line 416
    sd	$s0,16($sp)
    movz	$s2,$a6,$a5
    move	$s0,$a0
    # Line 454
    lw	$a2,0($s2)
    li	$a0,1028
    # Line 416
    lui	$a4,0x11
    # Line 454
    lw	$a3,6132($s0)
    sd	$gp,40($sp)
    # Line 416
    addiu	$a4,$a4,-25776
    # Line 454
    srl	$a2,$a2,0x10
    # Line 416
    addu	$gp,$t9,$a4
    # Line 454
    lw	$t9,128($a3)
    andi	$a2,$a2,0x3
    # Line 416
    sd	$s1,32($sp)
    move	$s1,$a1
    # Line 454
    sll	$a2,$a2,0x4
    li	$a1,4608
    addu	$a2,$s1,$a2
    # Line 416
    sd	$ra,24($sp)
    # Line 454
    jalr	$t9
    addiu	$a2,$a2,1280
    # Line 458
    lw	$a2,0($s2)
    lw	$t9,6132($s0)
    srl	$a2,$a2,0xe
    lw	$t9,128($t9)
    andi	$a2,$a2,0x3
    li	$a1,4609
    sll	$a2,$a2,0x4
    li	$a0,1028
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1344
    # Line 462
    lw	$a2,0($s2)
    lw	$t9,6132($s0)
    srl	$a2,$a2,0xc
    lw	$t9,128($t9)
    andi	$a2,$a2,0x3
    li	$a1,4610
    sll	$a2,$a2,0x4
    li	$a0,1028
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1408
    # Line 466
    lw	$a2,0($s2)
    lw	$t9,6132($s0)
    srl	$a2,$a2,0xa
    lw	$t9,128($t9)
    andi	$a2,$a2,0x3
    li	$a1,5632
    sll	$a2,$a2,0x4
    li	$a0,1028
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1472
    # Line 471
    lw	$ra,0($s2)
    srl	$ra,$ra,0x8
    andi	$ra,$ra,0x3
    sll	$ra,$ra,0x4
    addu	$ra,$s1,$ra
    lwc1	$f0,1536($ra)
    # Line 472
    mul.s	$f0,$f0,$f0
    swc1	$f0,0($sp)
    # Line 473
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,5633
    jalr	$t9
    li	$a0,1028
    # Line 477
    lw	$a2,0($s2)
    lw	$t9,6132($s0)
    srl	$a2,$a2,0x4
    lw	$t9,128($t9)
    andi	$a2,$a2,0x3
    li	$a1,4608
    sll	$a2,$a2,0x4
    li	$a0,1029
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1664
    # Line 481
    lw	$a2,0($s2)
    lw	$t9,6132($s0)
    srl	$a2,$a2,0x2
    lw	$t9,128($t9)
    andi	$a2,$a2,0x3
    li	$a1,4609
    sll	$a2,$a2,0x4
    li	$a0,1029
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1728
    # Line 485
    lw	$t9,6132($s0)
    lw	$a2,0($s2)
    lw	$t9,128($t9)
    andi	$a2,$a2,0x3
    li	$a1,4610
    sll	$a2,$a2,0x4
    li	$a0,1029
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1792
    # Line 489
    lw	$t9,6132($s0)
    lw	$a2,4($s2)
    lw	$t9,128($t9)
    srl	$a2,$a2,0x1e
    li	$a1,5632
    sll	$a2,$a2,0x4
    li	$a0,1029
    addu	$a2,$s1,$a2
    jalr	$t9
    addiu	$a2,$a2,1856
    # Line 494
    lw	$ra,4($s2)
    srl	$ra,$ra,0x1c
    andi	$ra,$ra,0x3
    sll	$ra,$ra,0x4
    addu	$ra,$s1,$ra
    lwc1	$f1,1920($ra)
    # Line 495
    mul.s	$f1,$f1,$f1
    swc1	$f1,0($sp)
    # Line 496
    lw	$t9,6132($s0)
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,5633
    jalr	$t9
    li	$a0,1029
    lbu	$at,3220($s0)
    beqz	$at,.L0d9eedc0
    lw	$a2,0($s2)
    # Line 503
    srl	$a6,$a2,0x1c
    andi	$a6,$a6,0x3
    sll	$a1,$a6,0x2
    addu	$a1,$s1,$a1
    lw	$a1,288($a1)
    # Line 504
    sll	$a6,$a6,0x4
    # Line 503
    andi	$a1,$a1,0x3ff
    # Line 504
    addu	$a6,$s1,$a6
    la	$a3,sub_0daf0000
    addiu	$a4,$a1,-8
    sltiu	$a7,$a4,14
    addiu	$a3,$a3,-27112
    sll	$a4,$a4,0x2
    beqz	$a7,.L0d9eeca4
    addu	$a3,$a3,$a4
    lw	$a7,0($a3)
    jr	$a7
    nop
.L0d9eeca4:
    # Line 613
    # lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    jal	printf
    addiu	$a0,$a0,-27056
    # Line 638
    lw	$a6,0($s2)
.L0d9eecb8:
    srl	$a6,$a6,0x16
    andi	$a6,$a6,0x3
    sll	$a1,$a6,0x2
    addu	$a1,$s1,$a1
    lw	$a1,336($a1)
    # Line 639
    sll	$a6,$a6,0x4
    # Line 638
    andi	$a1,$a1,0x3ff
    # Line 639
    addu	$a6,$s1,$a6
    la	$a2,sub_0daf0000
    addiu	$a3,$a1,-30
    sltiu	$a4,$a3,8
    addiu	$a2,$a2,-26992
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d9eed00
    addu	$a2,$a2,$a3
    lw	$a7,0($a2)
    jr	$a7
    nop
.L0d9eed00:
    # Line 695
    # lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    jal	printf
    addiu	$a0,$a0,-26960
    # Line 703
    lw	$a4,0($s2)
.L0d9eed14:
    srl	$a4,$a4,0x1a
    andi	$a4,$a4,0x3
    sll	$a1,$a4,0x2
    addu	$a1,$s1,$a1
    lw	$a1,304($a1)
    # Line 704
    sll	$a4,$a4,0x4
    # Line 703
    andi	$a1,$a1,0x3ff
    # Line 706
    li	$a2,22
    # Line 704
    addu	$a4,$s1,$a4
    # Line 706
    beq	$a1,$a2,.L0d9eef2c
    li	$a6,23
    beq	$a1,$a6,.L0d9eef4c
    li	$a7,24
    beq	$a1,$a7,.L0d9ef148
    li	$t0,25
    beq	$a1,$t0,.L0d9eee1c
    # Line 736
    nop	# was lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    jal	printf
    addiu	$a0,$a0,-26920
    # Line 747
    lw	$a1,0($s2)
.L0d9eed68:
    srl	$a1,$a1,0x12
    andi	$a1,$a1,0x3
    sll	$a1,$a1,0x2
    addu	$a1,$s1,$a1
    lw	$a1,368($a1)
    srl	$a1,$a1,0x18
    andi	$a1,$a1,0x1f
    li	$a2,15
    beq	$a1,$a2,.L0d9ef180
    # Line 753
    li	$a2,16
    beq	$a1,$a2,.L0d9eee04
    # Line 760
    nop	# was lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    jal	printf
    addiu	$a0,$a0,-26888
    ld	$s2,8($sp)
.L0d9eeda8:
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    # Line 763
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9eedc0:
    # Line 618
    srl	$a3,$a2,0x1e
    sll	$a1,$a3,0x2
    addu	$a1,$s1,$a1
    lw	$a1,272($a1)
    # Line 619
    sll	$a3,$a3,0x4
    # Line 618
    andi	$a1,$a1,0x3ff
    # Line 621
    li	$a4,6
    # Line 619
    addu	$a3,$s1,$a3
    # Line 621
    beq	$a1,$a4,.L0d9ef198
    li	$a2,7
    beq	$a1,$a2,.L0d9ef168
    # Line 629
    nop	# was lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    jal	printf
    addiu	$a0,$a0,-27024
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9eee04:
    # Line 757
    lw	$t9,6132($s0)
    lw	$t9,36($t9)
    jalr	$t9
    move	$a0,$zero
    b	.L0d9eeda8
    ld	$s2,8($sp)
.L0d9eee1c:
    # Line 729
    lw	$t9,6132($s0)
    lw	$t9,1600($t9)
    lwc1	$f14,968($a4)
    lwc1	$f13,964($a4)
    jalr	$t9
    lwc1	$f12,960($a4)
    b	.L0d9eed68
    # Line 747
    lw	$a1,0($s2)
.L0d9eee3c:
    # Line 643
    lw	$t9,6132($s0)
    lw	$t9,1640($t9)
    jalr	$t9
    lw	$a0,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eee54:
    # Line 687
    lw	$t9,6132($s0)
    lwc1	$f15,1100($a6)
    lw	$t9,1728($t9)
    lwc1	$f14,1096($a6)
    lwc1	$f13,1092($a6)
    jalr	$t9
    lwc1	$f12,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eee78:
    # Line 679
    lw	$t9,6132($s0)
    lw	$a3,1100($a6)
    lw	$t9,1736($t9)
    lw	$a2,1096($a6)
    lw	$a1,1092($a6)
    jalr	$t9
    lw	$a0,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eee9c:
    # Line 672
    lw	$t9,6132($s0)
    lw	$t9,1696($t9)
    lwc1	$f14,1096($a6)
    lwc1	$f13,1092($a6)
    jalr	$t9
    lwc1	$f12,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eeebc:
    # Line 665
    lw	$t9,6132($s0)
    lw	$t9,1704($t9)
    lw	$a2,1096($a6)
    lw	$a1,1092($a6)
    jalr	$t9
    lw	$a0,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eeedc:
    # Line 659
    lw	$t9,6132($s0)
    lw	$t9,1664($t9)
    lwc1	$f13,1092($a6)
    jalr	$t9
    lwc1	$f12,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eeef8:
    # Line 653
    lw	$t9,6132($s0)
    lw	$t9,1672($t9)
    lw	$a1,1092($a6)
    jalr	$t9
    lw	$a0,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eef14:
    # Line 648
    lw	$t9,6132($s0)
    lw	$t9,1632($t9)
    jalr	$t9
    lwc1	$f12,1088($a6)
    b	.L0d9eed14
    # Line 703
    lw	$a4,0($s2)
.L0d9eef2c:
    # Line 708
    lw	$t9,6132($s0)
    lw	$t9,1584($t9)
    lb	$a2,971($a4)
    lb	$a1,967($a4)
    jalr	$t9
    lb	$a0,963($a4)
    b	.L0d9eed68
    # Line 747
    lw	$a1,0($s2)
.L0d9eef4c:
    # Line 715
    lw	$t9,6132($s0)
    lw	$t9,1616($t9)
    lh	$a2,970($a4)
    lh	$a1,966($a4)
    jalr	$t9
    lh	$a0,962($a4)
    b	.L0d9eed68
    # Line 747
    lw	$a1,0($s2)
.L0d9eef6c:
    # Line 508
    lw	$t9,6132($s0)
    lw	$t9,1456($t9)
    lbu	$a2,907($a6)
    lbu	$a1,903($a6)
    jalr	$t9
    lbu	$a0,899($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9eef8c:
    # Line 605
    lw	$t9,6132($s0)
    lwc1	$f15,908($a6)
    lw	$t9,1496($t9)
    lwc1	$f14,904($a6)
    lwc1	$f13,900($a6)
    jalr	$t9
    lwc1	$f12,896($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9eefb0:
    # Line 597
    lw	$t9,6132($s0)
    lw	$a3,908($a6)
    lw	$t9,1504($t9)
    lw	$a2,904($a6)
    lw	$a1,900($a6)
    jalr	$t9
    lw	$a0,896($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9eefd4:
    # Line 589
    lw	$t9,6132($s0)
    lh	$a3,910($a6)
    lw	$t9,1512($t9)
    lh	$a2,906($a6)
    lh	$a1,902($a6)
    jalr	$t9
    lh	$a0,898($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9eeff8:
    # Line 581
    lw	$t9,6132($s0)
    lb	$a3,911($a6)
    lw	$t9,1480($t9)
    lb	$a2,907($a6)
    lb	$a1,903($a6)
    jalr	$t9
    lb	$a0,899($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef01c:
    # Line 573
    lw	$t9,6132($s0)
    lw	$a3,908($a6)
    lw	$t9,1528($t9)
    lw	$a2,904($a6)
    lw	$a1,900($a6)
    jalr	$t9
    lw	$a0,896($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef040:
    # Line 565
    lw	$t9,6132($s0)
    lhu	$a3,910($a6)
    lw	$t9,1536($t9)
    lhu	$a2,906($a6)
    lhu	$a1,902($a6)
    jalr	$t9
    lhu	$a0,898($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef064:
    # Line 557
    lw	$t9,6132($s0)
    lbu	$a3,911($a6)
    lw	$t9,1520($t9)
    lbu	$a2,907($a6)
    lbu	$a1,903($a6)
    jalr	$t9
    lbu	$a0,899($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef088:
    # Line 550
    lw	$t9,6132($s0)
    lw	$t9,1432($t9)
    lwc1	$f14,904($a6)
    lwc1	$f13,900($a6)
    jalr	$t9
    lwc1	$f12,896($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef0a8:
    # Line 543
    lw	$t9,6132($s0)
    lw	$t9,1440($t9)
    lw	$a2,904($a6)
    lw	$a1,900($a6)
    jalr	$t9
    lw	$a0,896($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef0c8:
    # Line 536
    lw	$t9,6132($s0)
    lw	$t9,1448($t9)
    lh	$a2,906($a6)
    lh	$a1,902($a6)
    jalr	$t9
    lh	$a0,898($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef0e8:
    # Line 529
    lw	$t9,6132($s0)
    lw	$t9,1416($t9)
    lb	$a2,907($a6)
    lb	$a1,903($a6)
    jalr	$t9
    lb	$a0,899($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef108:
    # Line 522
    lw	$t9,6132($s0)
    lw	$t9,1464($t9)
    lw	$a2,904($a6)
    lw	$a1,900($a6)
    jalr	$t9
    lw	$a0,896($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef128:
    # Line 515
    lw	$t9,6132($s0)
    lw	$t9,1472($t9)
    lhu	$a2,906($a6)
    lhu	$a1,902($a6)
    jalr	$t9
    lhu	$a0,898($a6)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef148:
    # Line 722
    lw	$t9,6132($s0)
    lw	$t9,1608($t9)
    lw	$a2,968($a4)
    lw	$a1,964($a4)
    jalr	$t9
    lw	$a0,960($a4)
    b	.L0d9eed68
    # Line 747
    lw	$a1,0($s2)
.L0d9ef168:
    # Line 626
    lw	$t9,6132($s0)
    lw	$t9,1552($t9)
    jalr	$t9
    lwc1	$f12,832($a3)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.L0d9ef180:
    # Line 753
    lw	$t9,6132($s0)
    lw	$t9,36($t9)
    jalr	$t9
    li	$a0,1
    b	.L0d9eeda8
    ld	$s2,8($sp)
.L0d9ef198:
    # Line 623
    lw	$t9,6132($s0)
    lw	$t9,1560($t9)
    jalr	$t9
    lw	$a0,832($a3)
    b	.L0d9eecb8
    # Line 638
    lw	$a6,0($s2)
.end __glOdysseySendShadowAttributes

# Function: __glOdysseySendShadowVertex
# Declared: Line 771 (Source lines: 772-827)
# Address: 0x0d9ef1b0 - 0x0d9ef32c (Size: 380 bytes, Frame: 16)
.globl __glOdysseySendShadowVertex
.ent __glOdysseySendShadowVertex
__glOdysseySendShadowVertex:
    # Line 776
    sll	$a4,$a2,0x2
    # Line 772
    move	$a6,$a2
    # Line 776
    addu	$a4,$a1,$a4
    # Line 772
    move	$a5,$a1
    move	$a7,$a0
    # Line 776
    lw	$a4,256($a4)
    # Line 779
    li	$t8,5
    # Line 772
    addiu	$sp,$sp,-16
    lui	$at,0x11
    # Line 776
    andi	$a4,$a4,0x3ff
    # Line 779
    li	$t3,4
    sd	$ra,8($sp)
    # Line 772
    addiu	$at,$at,-27680
    sd	$gp,0($sp)
    # Line 779
    beqz	$a4,.L0d9ef268
    # Line 772
    addu	$gp,$t9,$at
    # Line 779
    li	$t0,1
    beq	$a4,$t0,.L0d9ef28c
    li	$t1,2
    beq	$a4,$t1,.L0d9ef2b0
    li	$t2,3
    beq	$a4,$t2,.L0d9ef2d8
    nop
    beq	$a4,$t3,.L0d9ef300
    nop
    beq	$a4,$t8,.L0d9ef240
    # Line 815
    sll	$a1,$a2,0x4
    # Line 823
    # lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    move	$a1,$a4
    jal	printf
    addiu	$a0,$a0,-26848
    ld	$ra,8($sp)
.L0d9ef234:
    # Line 827
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ef240:
    # Line 815
    addu	$a1,$a5,$a1
    lw	$t9,6132($a0)
    lwc1	$f15,780($a1)
    lw	$t9,1392($t9)
    lwc1	$f14,776($a1)
    lwc1	$f13,772($a1)
    jalr	$t9
    lwc1	$f12,768($a1)
    b	.L0d9ef234
    ld	$ra,8($sp)
.L0d9ef268:
    # Line 781
    lw	$t9,6132($a0)
    sll	$a0,$a2,0x4
    lw	$t9,1336($t9)
    addu	$a0,$a1,$a0
    lw	$a1,772($a0)
    jalr	$t9
    lw	$a0,768($a0)
    b	.L0d9ef234
    ld	$ra,8($sp)
.L0d9ef28c:
    # Line 787
    lw	$t9,6132($a0)
    sll	$at,$a2,0x4
    lw	$t9,1328($t9)
    addu	$at,$a1,$at
    lwc1	$f13,772($at)
    jalr	$t9
    lwc1	$f12,768($at)
    b	.L0d9ef234
    ld	$ra,8($sp)
.L0d9ef2b0:
    # Line 793
    lw	$t9,6132($a0)
    sll	$a0,$a2,0x4
    addu	$a0,$a1,$a0
    lw	$t9,1368($t9)
    lw	$a2,776($a0)
    lw	$a1,772($a0)
    jalr	$t9
    lw	$a0,768($a0)
    b	.L0d9ef234
    ld	$ra,8($sp)
.L0d9ef2d8:
    # Line 800
    lw	$t9,6132($a0)
    sll	$a1,$a2,0x4
    addu	$a1,$a5,$a1
    lw	$t9,1360($t9)
    lwc1	$f14,776($a1)
    lwc1	$f13,772($a1)
    jalr	$t9
    lwc1	$f12,768($a1)
    b	.L0d9ef234
    ld	$ra,8($sp)
.L0d9ef300:
    # Line 807
    sll	$a0,$a2,0x4
    addu	$a0,$a1,$a0
    lw	$t9,6132($a7)
    lw	$a3,780($a0)
    lw	$t9,1400($t9)
    lw	$a2,776($a0)
    lw	$a1,772($a0)
    jalr	$t9
    lw	$a0,768($a0)
    b	.L0d9ef234
    ld	$ra,8($sp)
.end __glOdysseySendShadowVertex

# Function: __glOdysseyVertexWARClip
# Declared: Line 833 (Source lines: 834-1336)
# Address: 0x0d9ef330 - 0x0d9f0494 (Size: 4452 bytes, Frame: 144)
.globl __glOdysseyVertexWARClip
.ent __glOdysseyVertexWARClip
__glOdysseyVertexWARClip:
    # Line 834
    addiu	$sp,$sp,-2448
    sdc1	$f15,2328($sp)
    sdc1	$f14,2320($sp)
    sdc1	$f13,2312($sp)
    lui	$at,0x11
    sd	$s1,2416($sp)
    addiu	$at,$at,-28064
    sd	$gp,2424($sp)
    addu	$gp,$t9,$at
    # Line 855
    # lw $t9, -30512($gp) # &__glOdysseyGetHardwareShadow
    # Line 835
    lw	$s1,4112($zero)
    # Line 855
    move	$a1,$zero
    # Line 834
    sdc1	$f12,2304($sp)
    sd	$ra,2408($sp)
    # Line 855
    jal	__glOdysseyGetHardwareShadow
    move	$a0,$s1
    # Line 857
    # lw $t9, -16968($gp) # &bcopy
    lui	$a0,0x1
    li	$a2,2304
    addu	$a0,$a0,$s1
    sd	$a0,2400($sp)
    addiu	$a1,$sp,0
    jal	bcopy
    lw	$a0,27944($a0)
    lw	$a1,128($sp)
    andi	$a1,$a1,0xf
    sltiu	$a1,$a1,10
    beqz	$a1,.L0d9ef4a4
    # Line 897
    ld	$a4,2400($sp)
    li	$a0,1
    sb	$a0,27134($a4)
    lw	$a3,128($sp)
    li	$a2,2
    andi	$a3,$a3,0xf
    beq	$a2,$a3,.L0d9ef4f0
    # Line 906
    ld	$a4,2400($sp)
.L0d9ef3c0:
    # Line 910
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    sd	$s2,2392($sp)
    # Line 919
    lw	$a2,1748($s1)
    # Line 920
    mtc1	$zero,$f0
    # Line 921
    lui	$s2,0x2
    swc1	$f0,132($a2)
    addu	$s2,$s1,$s2
    # Line 920
    swc1	$f0,128($a2)
    # Line 921
    lbu	$ra,-25139($s2)
    li	$a3,1
    ld	$a0,2400($sp)
    li	$a4,2
    beqz	$ra,.L0d9ef4b8
    # Line 926
    lwc1	$f2,_lit_3f800000
    # Line 925
    lwc1	$f1,_lit_bf800000
    # Line 926
    swc1	$f2,140($a2)
    # Line 925
    swc1	$f1,136($a2)
.L0d9ef40c:
    # Line 937
    lw	$t9,1804($s1)
    ori	$t9,$t9,0x100
    sw	$t9,1804($s1)
    lw	$t8,-25156($s2)
    li	$a5,3
    beq	$t8,$a5,.L0d9ef50c
    nop
.L0d9ef428:
    # Line 994
    lw	$a7,26980($a0)
    ori	$a7,$a7,0x510
    sw	$a7,26980($a0)
    sw	$a4,4120($zero)
    # Line 999
    sb	$a3,-25202($s2)
    # Line 1001
    sb	$a3,-25144($s2)
    # Line 1003
    lw	$a6,128($sp)
    la	$a2,sub_0daf0000
    andi	$a6,$a6,0xf
    sltiu	$a7,$a6,10
    addiu	$a2,$a2,-26816
    sll	$a6,$a6,0x2
    beqz	$a7,.L0d9ef46c
    addu	$a2,$a2,$a6
    lw	$t0,0($a2)
    jr	$t0
    nop
.L0d9ef46c:
    # Line 1329
    lw	$a1,128($sp)
    # lw $t9, -16960($gp) # &printf
    la	$a0,sub_0daf0000
    andi	$a1,$a1,0xf
    jal	printf
    addiu	$a0,$a0,-26776
    # Line 1336
    ld	$gp,2424($sp)
.L0d9ef488:
    ld	$s1,2416($sp)
    ld	$ra,2408($sp)
    # Line 1335
    sb	$zero,-25202($s2)
    # Line 1333
    sb	$zero,-25144($s2)
    # Line 1336
    ld	$s2,2392($sp)
    jr	$ra
    addiu	$sp,$sp,2448
.L0d9ef4a4:
    ld	$ra,2408($sp)
    ld	$s1,2416($sp)
    ld	$gp,2424($sp)
    jr	$ra
    addiu	$sp,$sp,2448
.L0d9ef4b8:
    # Line 929
    ldc1	$f5,26056($a0)
    ldc1	$f6,26064($a0)
    ldc1	$f4,_lit8_3ff0000000000000
    ldc1	$f3,_lit8_bff0000000000000
    c.lt.d	$f5,$f6
    movf.d	$f3,$f4,$fcc0
    cvt.s.d	$f3,$f3
    swc1	$f3,136($a2)
    # Line 930
    ldc1	$f4,26056($a0)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    b	.L0d9ef40c
    swc1	$f3,140($a2)
.L0d9ef4f0:
    # Line 906
    lui	$a2,0x1
    lui	$a3,0x1
    sw	$a0,-26576($a4)
    ori	$a3,$a3,0x444
    sw	$a3,0($a2)
    b	.L0d9ef3c0
    sw	$zero,0($a2)
.L0d9ef50c:
    # Line 941
    lw	$t0,29724($s1)
    # Line 947
    lwc1	$f14,0($t0)
    ldc1	$f9,_lit8_3feccccccccccccd
    lwc1	$f13,12($t0)
    cvt.d.s	$f14,$f14
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f13,$f14,$f9
    # Line 946
    lw	$t3,1748($s1)
    # Line 947
    cvt.s.d	$f13,$f13
    swc1	$f13,144($t3)
    # Line 948
    lwc1	$f12,16($t0)
    lwc1	$f11,28($t0)
    cvt.d.s	$f12,$f12
    cvt.d.s	$f11,$f11
    madd.d	$f11,$f11,$f12,$f9
    cvt.s.d	$f11,$f11
    swc1	$f11,148($t3)
    # Line 949
    lwc1	$f10,32($t0)
    lwc1	$f8,44($t0)
    cvt.d.s	$f10,$f10
    cvt.d.s	$f8,$f8
    madd.d	$f8,$f8,$f10,$f9
    cvt.s.d	$f8,$f8
    swc1	$f8,152($t3)
    # Line 950
    lwc1	$f7,48($t0)
    lwc1	$f6,60($t0)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f6,$f6
    madd.d	$f6,$f6,$f7,$f9
    cvt.s.d	$f6,$f6
    swc1	$f6,156($t3)
    # Line 957
    lwc1	$f5,0($t0)
    lwc1	$f4,12($t0)
    cvt.d.s	$f5,$f5
    cvt.d.s	$f4,$f4
    nmsub.d	$f4,$f4,$f5,$f9
    # Line 956
    lw	$t2,1748($s1)
    # Line 957
    cvt.s.d	$f4,$f4
    swc1	$f4,160($t2)
    # Line 958
    lwc1	$f3,16($t0)
    lwc1	$f2,28($t0)
    cvt.d.s	$f3,$f3
    cvt.d.s	$f2,$f2
    nmsub.d	$f2,$f2,$f3,$f9
    cvt.s.d	$f2,$f2
    swc1	$f2,164($t2)
    # Line 959
    lwc1	$f1,32($t0)
    lwc1	$f0,44($t0)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f0,$f0
    nmsub.d	$f0,$f0,$f1,$f9
    cvt.s.d	$f0,$f0
    swc1	$f0,168($t2)
    # Line 960
    lwc1	$f31,48($t0)
    lwc1	$f29,60($t0)
    cvt.d.s	$f31,$f31
    cvt.d.s	$f29,$f29
    nmsub.d	$f29,$f29,$f31,$f9
    cvt.s.d	$f29,$f29
    swc1	$f29,172($t2)
    # Line 967
    lwc1	$f27,4($t0)
    lwc1	$f25,12($t0)
    cvt.d.s	$f27,$f27
    cvt.d.s	$f25,$f25
    madd.d	$f25,$f25,$f27,$f9
    # Line 966
    lw	$t1,1748($s1)
    # Line 967
    cvt.s.d	$f25,$f25
    swc1	$f25,176($t1)
    # Line 968
    lwc1	$f23,20($t0)
    lwc1	$f21,28($t0)
    cvt.d.s	$f23,$f23
    cvt.d.s	$f21,$f21
    madd.d	$f21,$f21,$f23,$f9
    cvt.s.d	$f21,$f21
    swc1	$f21,180($t1)
    # Line 969
    lwc1	$f19,36($t0)
    lwc1	$f18,44($t0)
    cvt.d.s	$f19,$f19
    cvt.d.s	$f18,$f18
    madd.d	$f18,$f18,$f19,$f9
    cvt.s.d	$f18,$f18
    swc1	$f18,184($t1)
    # Line 970
    lwc1	$f17,52($t0)
    lwc1	$f16,60($t0)
    cvt.d.s	$f17,$f17
    cvt.d.s	$f16,$f16
    madd.d	$f16,$f16,$f17,$f9
    cvt.s.d	$f16,$f16
    swc1	$f16,188($t1)
    # Line 977
    lwc1	$f15,4($t0)
    lwc1	$f14,12($t0)
    cvt.d.s	$f15,$f15
    cvt.d.s	$f14,$f14
    nmsub.d	$f14,$f14,$f15,$f9
    # Line 976
    lw	$a7,1748($s1)
    # Line 977
    cvt.s.d	$f14,$f14
    swc1	$f14,192($a7)
    # Line 978
    lwc1	$f13,20($t0)
    lwc1	$f12,28($t0)
    cvt.d.s	$f13,$f13
    cvt.d.s	$f12,$f12
    nmsub.d	$f12,$f12,$f13,$f9
    cvt.s.d	$f12,$f12
    swc1	$f12,196($a7)
    # Line 979
    lwc1	$f11,36($t0)
    lwc1	$f10,44($t0)
    cvt.d.s	$f11,$f11
    cvt.d.s	$f10,$f10
    nmsub.d	$f10,$f10,$f11,$f9
    cvt.s.d	$f10,$f10
    swc1	$f10,200($a7)
    # Line 980
    lwc1	$f8,52($t0)
    lwc1	$f7,60($t0)
    cvt.d.s	$f8,$f8
    cvt.d.s	$f7,$f7
    nmsub.d	$f7,$f7,$f8,$f9
    cvt.s.d	$f7,$f7
    swc1	$f7,204($a7)
    # Line 986
    lw	$a6,1804($s1)
    ori	$a6,$a6,0x1e00
    b	.L0d9ef428
    sw	$a6,1804($s1)
.L0d9ef6f4:
    # Line 1007
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 1012
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1013
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9ef73c:
    # Line 1295
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,9
    # Line 1303
    lw	$at,128($sp)
    lw	$ra,128($sp)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    sltiu	$ra,$ra,2
    srl	$at,$at,0x6
    andi	$at,$at,0x3
    beqz	$ra,.L0d9efebc
    sd	$at,2384($sp)
    lw	$at,128($sp)
    srl	$at,$at,0x4
    andi	$at,$at,0x3
    beqz	$at,.L0d9ef7d8
    # Line 1311
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    sd	$s0,2432($sp)
    # Line 1303
    move	$s0,$zero
    # Line 1308
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef790:
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1309
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1306
    lw	$v0,128($sp)
    srl	$v0,$v0,0x4
    addiu	$s0,$s0,1
    andi	$v0,$v0,0x3
    sltu	$v0,$s0,$v0
    bnez	$v0,.L0d9ef790
    # Line 1308
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    ld	$s0,2432($sp)
    # Line 1311
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef7d8:
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1312
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9ef80c:
    # Line 1246
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1254
    lw	$at,128($sp)
    lw	$ra,128($sp)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    sltiu	$ra,$ra,3
    srl	$at,$at,0x6
    andi	$at,$at,0x3
    beqz	$ra,.L0d9efde4
    sd	$at,2384($sp)
    lw	$at,128($sp)
    srl	$at,$at,0x4
    andi	$at,$at,0x3
    beqz	$at,.L0d9ef8a8
    # Line 1262
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    sd	$s0,2432($sp)
    # Line 1254
    move	$s0,$zero
    # Line 1259
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef860:
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1260
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1257
    lw	$v0,128($sp)
    srl	$v0,$v0,0x4
    addiu	$s0,$s0,1
    andi	$v0,$v0,0x3
    sltu	$v0,$s0,$v0
    bnez	$v0,.L0d9ef860
    # Line 1259
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    ld	$s0,2432($sp)
    # Line 1262
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef8a8:
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1263
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9ef8dc:
    # Line 1224
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,7
    lw	$ra,128($sp)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    beqz	$ra,.L0d9ef958
    # Line 1239
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    sd	$s0,2432($sp)
    # Line 1224
    move	$s0,$zero
    nop
    # Line 1232
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef910:
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1233
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1230
    lw	$at,128($sp)
    srl	$at,$at,0x4
    addiu	$s0,$s0,1
    andi	$at,$at,0x3
    sltu	$at,$s0,$at
    bnez	$at,.L0d9ef910
    # Line 1232
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    ld	$s0,2432($sp)
    # Line 1239
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef958:
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1240
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9ef98c:
    # Line 1189
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,6
    # Line 1197
    lw	$at,128($sp)
    lw	$ra,128($sp)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    sltiu	$ra,$ra,2
    srl	$at,$at,0x6
    andi	$at,$at,0x3
    beqz	$ra,.L0d9eff8c
    sd	$at,2384($sp)
    lw	$at,128($sp)
    srl	$at,$at,0x4
    andi	$at,$at,0x3
    beqz	$at,.L0d9efa28
    # Line 1205
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    sd	$s0,2432($sp)
    # Line 1197
    move	$s0,$zero
    # Line 1202
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9ef9e0:
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1203
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$s0
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1200
    lw	$v0,128($sp)
    srl	$v0,$v0,0x4
    addiu	$s0,$s0,1
    andi	$v0,$v0,0x3
    sltu	$v0,$s0,$v0
    bnez	$v0,.L0d9ef9e0
    # Line 1202
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    ld	$s0,2432($sp)
    # Line 1205
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9efa28:
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1206
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efa5c:
    # Line 1130
    lw	$at,128($sp)
    lw	$ra,128($sp)
    lw	$t9,6132($s1)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    lw	$t9,28($t9)
    srl	$at,$at,0x6
    andi	$at,$at,0x3
    beqz	$ra,.L0d9f0240
    sd	$at,2384($sp)
    # Line 1137
    lw	$at,128($sp)
    srl	$at,$at,0x4
    andi	$at,$at,0x3
    beq	$a3,$at,.L0d9f02fc
    nop
    # Line 1147
    lw	$v0,128($sp)
    ld	$v1,2384($sp)
    sll	$v0,$v0,0x14
    addiu	$a1,$v1,2
    addiu	$v1,$v1,3
    sra	$a2,$a1,0x1f
    sra	$a0,$v1,0x1f
    xor	$a1,$a1,$a2
    xor	$v1,$v1,$a0
    subu	$a1,$a1,$a2
    subu	$v1,$v1,$a0
    andi	$a1,$a1,0x3
    andi	$v1,$v1,0x3
    xor	$a1,$a1,$a2
    xor	$v1,$v1,$a0
    subu	$a1,$a1,$a2
    sd	$a1,2368($sp)
    subu	$v1,$v1,$a0
    bltz	$v0,.L0d9f005c
    sd	$v1,2376($sp)
    # Line 1151
    jalr	$t9
    li	$a0,5
    # Line 1153
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1154
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1156
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1157
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1159
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1160
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efb78:
    # Line 1103
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,4
    # Line 1105
    lw	$v0,128($sp)
    lw	$at,128($sp)
    srl	$at,$at,0x4
    li	$ra,1
    andi	$at,$at,0x3
    srl	$v0,$v0,0x6
    andi	$v0,$v0,0x3
    beq	$ra,$at,.L0d9f0280
    sd	$v0,2384($sp)
    # Line 1110
    lw	$v1,128($sp)
    srl	$v1,$v1,0x4
    li	$v0,2
    andi	$v1,$v1,0x3
    beq	$v0,$v1,.L0d9f0364
    # Line 1123
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9efbc4:
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1124
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efbf8:
    # Line 1041
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1047
    lw	$at,128($sp)
    lw	$ra,128($sp)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    srl	$at,$at,0x6
    andi	$at,$at,0x3
    beqz	$ra,.L0d9efc70
    sd	$at,2384($sp)
    # Line 1049
    ld	$a2,2384($sp)
    addiu	$a2,$a2,3
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    andi	$a2,$a2,0x3
    move	$a0,$s1
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    bal __glOdysseySendShadowAttributes
    sd	$a2,2376($sp)
    # Line 1050
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
.L0d9efc70:
    # Line 1056
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1057
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efca8:
    # Line 1069
    lw	$ra,128($sp)
    srl	$ra,$ra,0x4
    andi	$ra,$ra,0x3
    lw	$at,-24928($s2)
    beq	$a4,$ra,.L0d9f0164
    sd	$at,2360($sp)
.L0d9efcc0:
    # Line 1075
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,2
    # Line 1077
    ld	$v0,2360($sp)
    sw	$v0,-24928($s2)
    lw	$at,128($sp)
    srl	$at,$at,0x4
    li	$ra,1
    andi	$at,$at,0x3
    beq	$ra,$at,.L0d9f02d0
    # Line 1081
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    # Line 1082
    lw	$a0,128($sp)
    srl	$a0,$a0,0x4
    li	$v1,2
    andi	$a0,$a0,0x3
    beq	$v1,$a0,.L0d9f03fc
    # Line 1096
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9efd08:
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1097
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efd3c:
    # Line 1019
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,1
    # Line 1025
    lw	$a4,128($sp)
    lw	$a5,128($sp)
    srl	$a5,$a5,0x4
    andi	$a5,$a5,0x3
    srl	$a4,$a4,0x6
    beqz	$a5,.L0d9efdac
    andi	$a4,$a4,0x3
    # Line 1027
    addiu	$a2,$a4,3
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    andi	$a2,$a2,0x3
    move	$a0,$s1
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    bal __glOdysseySendShadowAttributes
    sd	$a2,2376($sp)
    # Line 1028
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
.L0d9efdac:
    # Line 1034
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1035
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efde4:
    # Line 1263
    lw	$ra,128($sp)
    ld	$at,2384($sp)
    sll	$ra,$ra,0x14
    addiu	$v1,$at,2
    addiu	$at,$at,3
    sra	$a0,$v1,0x1f
    sra	$v0,$at,0x1f
    xor	$v1,$v1,$a0
    xor	$at,$at,$v0
    subu	$v1,$v1,$a0
    subu	$at,$at,$v0
    andi	$v1,$v1,0x3
    andi	$at,$at,0x3
    xor	$v1,$v1,$a0
    xor	$at,$at,$v0
    subu	$v1,$v1,$a0
    sd	$v1,2368($sp)
    subu	$at,$at,$v0
    bltz	$ra,.L0d9f0170
    sd	$at,2376($sp)
    # Line 1267
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1268
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1270
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1271
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1273
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1274
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9efebc:
    # Line 1316
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1317
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1320
    ld	$a2,2384($sp)
    li	$t1,0xaaaa
    dsll	$t1,$t1,0x10
    addiu	$a2,$a2,1
    negu	$t0,$a2
    srl	$a6,$a2,0x1f
    ori	$t1,$t1,0xaaab
    movz	$t0,$a2,$a6
    multu	$t0,$t1
    mfhi	$a7
    sra	$a7,$a7,0x1
    negu	$a4,$a7
    li	$a5,3
    movz	$a4,$a7,$a6
    mult	$a4,$a5
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    mflo	$a3
    move	$a0,$s1
    subu	$a2,$a2,$a3
    addiu	$a2,$a2,1
    bal __glOdysseySendShadowAttributes
    sd	$a2,2352($sp)
    # Line 1321
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2352($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1323
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1324
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9eff8c:
    # Line 1210
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1211
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1214
    ld	$a2,2384($sp)
    li	$t1,0xaaaa
    dsll	$t1,$t1,0x10
    addiu	$a2,$a2,1
    negu	$t0,$a2
    srl	$a6,$a2,0x1f
    ori	$t1,$t1,0xaaab
    movz	$t0,$a2,$a6
    multu	$t0,$t1
    mfhi	$a7
    sra	$a7,$a7,0x1
    negu	$a4,$a7
    li	$a5,3
    movz	$a4,$a7,$a6
    mult	$a4,$a5
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    mflo	$a3
    move	$a0,$s1
    subu	$a2,$a2,$a3
    addiu	$a2,$a2,1
    bal __glOdysseySendShadowAttributes
    sd	$a2,2352($sp)
    # Line 1215
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2352($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1217
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1218
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9f005c:
    # Line 1164
    jalr	$t9
    li	$a0,4
    # Line 1166
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1167
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1169
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1170
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1172
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1173
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    # Line 1175
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1177
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,5
    # Line 1179
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1180
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1182
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1183
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9f0164:
    # Line 1072
    la	$ra,__glOdysseySoftClipBeginLLoopPartial
    b	.L0d9efcc0
    sw	$ra,-24928($s2)
.L0d9f0170:
    # Line 1278
    ld	$a2,2384($sp)
    addiu	$a2,$a2,1
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    andi	$a2,$a2,0x3
    move	$a0,$s1
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    bal __glOdysseySendShadowAttributes
    sd	$a2,2336($sp)
    # Line 1279
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2336($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1281
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1282
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1284
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1285
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2376($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1287
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1288
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9f0240:
    # Line 1134
    jalr	$t9
    li	$a0,5
    # Line 1136
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1137
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9f0280:
    # Line 1109
    ld	$a2,2384($sp)
    addiu	$a2,$a2,3
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    andi	$a2,$a2,0x3
    move	$a0,$s1
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    bal __glOdysseySendShadowAttributes
    sd	$a2,2344($sp)
    # Line 1110
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2344($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    b	.L0d9efbc4
    # Line 1123
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9f02d0:
    # Line 1081
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1082
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    b	.L0d9efd08
    # Line 1096
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9f02fc:
    # Line 1141
    jal	__glOdysseySendShadowAttributes
    li	$a0,5
    # Line 1143
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1144
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1146
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    li	$a2,-1
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1147
    lw	$t9,6132($s1)
    ldc1	$f12,2304($sp)
    lw	$t9,1392($t9)
    ldc1	$f13,2312($sp)
    ldc1	$f14,2320($sp)
    jal	__glOdysseySendShadowAttributes
    ldc1	$f15,2328($sp)
    b	.L0d9ef488
    # Line 1336
    ld	$gp,2424($sp)
.L0d9f0364:
    # Line 1114
    ld	$a2,2384($sp)
    addiu	$a2,$a2,2
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    andi	$a2,$a2,0x3
    move	$a0,$s1
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    bal __glOdysseySendShadowAttributes
    sd	$a2,2368($sp)
    # Line 1115
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2368($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1116
    ld	$a2,2384($sp)
    addiu	$a2,$a2,3
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    andi	$a2,$a2,0x3
    move	$a0,$s1
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    bal __glOdysseySendShadowAttributes
    sd	$a2,2344($sp)
    # Line 1117
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2344($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    b	.L0d9efbc4
    # Line 1123
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.L0d9f03fc:
    # Line 1086
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1087
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    move	$a2,$zero
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    # Line 1088
    lw	$a2,128($sp)
    li	$a5,3
    srl	$a2,$a2,0x6
    ld	$a7,-13912($gp)
    and	$a2,$a5,$a2
    addiu	$a2,$a2,1
    multu	$a2,$a7
    mfhi	$a4
    subu	$a6,$a2,$a4
    srl	$a6,$a6,0x1
    addu	$a4,$a4,$a6
    srl	$a4,$a4,0x1
    mult	$a4,$a5
    # Line 1089
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    # Line 1088
    mflo	$a3
    # Line 1089
    move	$a0,$s1
    # Line 1088
    subu	$a2,$a2,$a3
    addiu	$a2,$a2,1
    # Line 1089
    bal __glOdysseySendShadowAttributes
    # Line 1088
    sd	$a2,2384($sp)
    # Line 1090
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    move	$a0,$s1
    ld	$a2,2384($sp)
    bal __glOdysseySendShadowVertex
    addiu	$a1,$sp,0
    b	.L0d9efd08
    # Line 1096
    nop	# was lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
.end __glOdysseyVertexWARClip

# Function: __glOdysseyVertexWARClipNOP
# Declared: Line 1342 (Source lines: 1343-1351)
# Address: 0x0d9f04a0 - 0x0d9f0504 (Size: 100 bytes, Frame: 32)
.globl __glOdysseyVertexWARClipNOP
.ent __glOdysseyVertexWARClipNOP
__glOdysseyVertexWARClipNOP:
    # Line 1345
    lw	$at,4112($zero)
    # Line 1343
    addiu	$sp,$sp,-32
    sd	$s8,16($sp)
    # Line 1347
    lui	$s8,0x2
    # Line 1343
    sdc1	$f30,0($sp)
    # Line 1347
    addu	$s8,$at,$s8
    # Line 1348
    mtc1	$zero,$f0
    # Line 1347
    lwc1	$f30,-25200($s8)
    # Line 1348
    swc1	$f0,-25200($s8)
    # Line 1343
    lui	$v0,0x11
    # Line 1349
    lw	$at,6132($at)
    sd	$gp,24($sp)
    # Line 1343
    addiu	$v0,$v0,-32528
    addu	$gp,$t9,$v0
    # Line 1349
    lw	$t9,1392($at)
    # Line 1343
    sd	$ra,8($sp)
    # Line 1349
    jalr	$t9
    nop
    # Line 1351
    ld	$gp,24($sp)
    ld	$ra,8($sp)
    # Line 1350
    swc1	$f30,-25200($s8)
    # Line 1351
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyVertexWARClipNOP

# Function: __glOdyim_SoftClipEnd
# Declared: Line 1355 (Source lines: 1356-1391)
# Address: 0x0d9f0510 - 0x0d9f05dc (Size: 204 bytes, Frame: 32)
.globl __glOdyim_SoftClipEnd
.ent __glOdyim_SoftClipEnd
__glOdyim_SoftClipEnd:
    # Line 1356
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,-32640
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1359
    # lw $t9, -25300($gp) # &__glim_End
    # Line 1356
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    # Line 1359
    jal	__glim_End
    # Line 1357
    lw	$s0,4112($zero)
    # Line 1361
    lui	$a2,0x2
    addu	$a2,$s0,$a2
    lbu	$a1,-25144($a2)
    bnez	$a1,.L0d9f05cc
    ld	$ra,8($sp)
    lw	$a3,1804($s0)
    # Line 1371
    li	$a5,2
    # Line 1361
    andi	$a4,$a3,0x100
    # Line 1364
    li	$t0,-7937
    # Line 1371
    lui	$a7,0x1
    # Line 1361
    beqz	$a4,.L0d9f0584
    # Line 1371
    addu	$a7,$s0,$a7
    # Line 1364
    and	$t0,$a3,$t0
    sw	$t0,1804($s0)
    # Line 1371
    lw	$a6,26980($a7)
    ori	$a6,$a6,0x510
    sw	$a6,26980($a7)
    sw	$a5,4120($zero)
    lbu	$a1,-25144($a2)
.L0d9f0584:
    # Line 1377
    bnez	$a1,.L0d9f05cc
    lui	$a1,0x1
    addu	$a1,$s0,$a1
    lw	$a2,26648($a1)
    andi	$t0,$a2,0x100
    # Line 1391
    ld	$gp,16($sp)
    # Line 1380
    li	$a4,-7937
    # Line 1377
    beqz	$t0,.L0d9f05cc
    # Line 1391
    ld	$s0,0($sp)
    # Line 1386
    lw	$a3,26980($a1)
    # Line 1380
    and	$a4,$a2,$a4
    sw	$a4,26648($a1)
    # Line 1391
    addiu	$sp,$sp,32
    # Line 1386
    ori	$a3,$a3,0x510
    sw	$a3,26980($a1)
    li	$a2,2
    # Line 1391
    jr	$ra
    # Line 1386
    sw	$a2,4120($zero)
.L0d9f05cc:
    ld	$s0,0($sp)
    # Line 1391
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftClipEnd

.late_rodata
jtbl_0dae9618:
    .word .L0d9eef6c
    .word .L0d9ef128
    .word .L0d9ef108
    .word .L0d9ef0e8
    .word .L0d9ef0c8
    .word .L0d9ef0a8
    .word .L0d9ef088
    .word .L0d9ef064
    .word .L0d9ef040
    .word .L0d9ef01c
    .word .L0d9eeff8
    .word .L0d9eefd4
    .word .L0d9eefb0
    .word .L0d9eef8c
jtbl_0dae9690:
    .word .L0d9eee3c
    .word .L0d9eef14
    .word .L0d9eeef8
    .word .L0d9eeedc
    .word .L0d9eeebc
    .word .L0d9eee9c
    .word .L0d9eee78
    .word .L0d9eee54
jtbl_0dae9740:
    .word .L0d9ef6f4
    .word .L0d9efd3c
    .word .L0d9efca8
    .word .L0d9efbf8
    .word .L0d9efb78
    .word .L0d9efa5c
    .word .L0d9ef98c
    .word .L0d9ef8dc
    .word .L0d9ef80c
    .word .L0d9ef73c

.rdata
_lit8_3feccccccccccccd:
    .word 0x3feccccc, 0xcccccccd
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

