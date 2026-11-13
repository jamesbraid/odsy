# Source: ../ODYSSEY/ody_image_convert.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_convert.c
# Total Functions: 32

.text

# Function: __glOdyUpdateDepthSpanInfo
# Declared: Line 144 (Source lines: 144-197)
# Address: 0x0d9a6360 - 0x0d9a6530 (Size: 464 bytes, Frame: 48)
.globl __glOdyUpdateDepthSpanInfo
.ent __glOdyUpdateDepthSpanInfo
__glOdyUpdateDepthSpanInfo:
    # Line 144
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    lui	$s0,0x1
    sd	$s1,24($sp)
    addu	$s0,$a0,$s0
    lbu	$at,26432($s0)
    move	$s1,$a1
    sd	$s5,16($sp)
    lui	$v0,0x15
    move	$s5,$a0
    sd	$ra,40($sp)
    addiu	$v0,$v0,8752
    sd	$gp,8($sp)
    beqz	$at,.L0d9a63a8
    addu	$gp,$t9,$v0
    # Line 154
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    jal	__glOdysseyUpdateTransform
    nop
.L0d9a63a8:
    # Line 157
    lui	$ra,0x1
    ori	$ra,$ra,0x65c8
    addu	$ra,$s5,$ra
    sw	$ra,500($s1)
    # Line 160
    ldc1	$f9,26128($s0)
    ldc1	$f10,26112($s0)
    neg.d	$f9,$f9
    div.d	$f9,$f9,$f10
    sdc1	$f9,504($s1)
    # Line 161
    ldc1	$f8,26064($s0)
    ldc1	$f7,26056($s0)
    ldc1	$f10,_lit8_41fffff800000000
    sub.d	$f7,$f7,$f8
    div.d	$f7,$f10,$f7
    sdc1	$f7,512($s1)
    # Line 166
    dmtc1	$zero,$f4
    ldc1	$f9,26112($s0)
    # Line 163
    ldc1	$f6,26056($s0)
    # Line 166
    c.eq.d	$f9,$f4
    li	$t9,1
    # Line 164
    ldc1	$f8,26064($s0)
    # Line 166
    movf	$t9,$zero,$fcc0
    sb	$t9,529($s1)
    # Line 168
    lbu	$t8,529($s1)
    # Line 164
    neg.d	$f8,$f8
    # Line 167
    sb	$zero,528($s1)
    # Line 163
    neg.d	$f6,$f6
    # Line 168
    ldc1	$f11,26104($s0)
    beqz	$t8,.L0d9a6444
    # Line 175
    mov.d	$f5,$f8
    # Line 168
    c.eq.d $f11,$f4
    # Line 170
    li	$a0,1
    # Line 168
    bc1f .L0d9a6444
    ld	$ra,40($sp)
    # Line 170
    ldc1	$f5,0($sp)
    sb	$a0,528($s1)
    # Line 169
    cvt.s.d	$f12,$f6
    # Line 170
    b	.L0d9a6470
    # Line 169
    swc1	$f12,520($s1)
.L0d9a6444:
    # Line 170
    ldc1	$f13,26112($s0)
    c.lt.d $f4,$f13
    # Line 175
    li	$a0,1
    # Line 170
    bc1f .L0d9a6468
    ld	$ra,40($sp)
    # Line 173
    mov.d	$f5,$f8
    c.lt.d $f8,$f6
    b	.L0d9a6470
    movt.d	$f5,$f6,$fcc3
.L0d9a6468:
    # Line 175
    c.lt.d $f6,$f8
    movt.d	$f5,$f6,$fcc4
.L0d9a6470:
    # Line 178
    ldc1	$f9,26056($s0)
    add.d	$f5,$f9,$f5
    mul.d	$f5,$f7,$f5
    c.lt.d $f5,$f4
    # Line 197
    ld	$s5,16($sp)
    ld	$gp,8($sp)
    # Line 178
    bc1t .L0d9a649c
    # Line 179
    mov.d	$f9,$f4
    mov.d	$f9,$f5
    c.lt.d $f10,$f5
    movt.d	$f9,$f10,$fcc6
.L0d9a649c:
    # Line 184
    sb	$zero,531($s1)
    # Line 183
    sb	$zero,530($s1)
    # Line 181
    cvt.s.d	$f12,$f9
    swc1	$f12,520($s1)
    # Line 184
    ldc1	$f11,26112($s0)
    c.lt.d $f4,$f11
    bc1f .L0d9a64d0
    # Line 190
    mov.d	$f5,$f8
    # Line 187
    mov.d	$f5,$f8
    c.lt.d	$f8,$f6
    # Line 186
    sb	$a0,530($s1)
    # Line 187
    b	.L0d9a64dc
    movt.d	$f5,$f6,$fcc0
.L0d9a64d0:
    # Line 190
    c.lt.d $f6,$f8
    # Line 189
    sb	$a0,531($s1)
    # Line 190
    movt.d	$f5,$f6,$fcc1
.L0d9a64dc:
    # Line 193
    ldc1	$f6,26056($s0)
    add.d	$f5,$f6,$f5
    mul.d	$f5,$f7,$f5
    c.lt.d $f5,$f4
    bc1f .L0d9a6508
    # Line 197
    ld	$s0,32($sp)
    # Line 196
    cvt.s.d	$f7,$f4
    swc1	$f7,524($s1)
    # Line 197
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9a6508:
    # Line 194
    c.lt.d $f10,$f5
    # Line 197
    ld	$gp,8($sp)
    # Line 194
    movt.d	$f5,$f10,$fcc3
    # Line 197
    ld	$s0,32($sp)
    ld	$s5,16($sp)
    # Line 196
    cvt.s.d	$f8,$f5
    swc1	$f8,524($s1)
    # Line 197
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyUpdateDepthSpanInfo

# Function: __glOdySpanEyeZ24ToWindowZ
# Declared: Line 200 (Source lines: 202-238)
# Address: 0x0d9a6530 - 0x0d9a668c (Size: 348 bytes, Frame: 16)
.globl __glOdySpanEyeZ24ToWindowZ
.ent __glOdySpanEyeZ24ToWindowZ
__glOdySpanEyeZ24ToWindowZ:
    # Line 213
    ldc1	$f7,512($a1)
    # Line 211
    lw	$v0,500($a1)
    # Line 202
    lui	$v1,0x15
    # Line 203
    lw	$t8,168($a1)
    # Line 202
    addiu	$v1,$v1,8288
    # Line 217
    ldc1	$f13,64($v0)
    # Line 202
    addu	$at,$t9,$v1
    # Line 216
    ldc1	$f15,_lit8_3fe0000000000000
    ldc1	$f12,48($v0)
    # Line 213
    ldc1	$f17,_lit8_3ff0000000000000
    # Line 218
    ldc1	$f8,0($v0)
    # Line 217
    mul.d	$f13,$f13,$f15
    # Line 202
    addiu	$sp,$sp,-16
    move	$a6,$a3
    # Line 215
    ldc1	$f9,72($v0)
    # Line 216
    mul.d	$f12,$f12,$f15
    # Line 202
    move	$a5,$a2
    # Line 214
    ldc1	$f10,56($v0)
    # Line 218
    blez	$t8,.L0d9a6678
    # Line 213
    div.d	$f7,$f17,$f7
    # Line 218
    lw	$a3,0($sp)
    move	$a2,$zero
    dmtc1	$zero,$f6
    lui	$a7,0xff80
    mtc1	$zero,$f14
    lui	$t0,0x7fff
    lui	$a4,0x807f
    lui	$t1,0x7f
    lui	$t2,0x3
    ori	$t1,$t1,0xffff
    ori	$t2,$t2,0xffff
    ori	$a4,$a4,0xffff
    lwc1	$f16,_lit_3f800000
    b	.L0d9a6680
    ori	$t0,$t0,0xffff
    nop
.L0d9a65c0:
    # Line 235
    addiu	$a6,$a6,4
    swc1	$f16,-4($a6)
.L0d9a65c8:
    # Line 220
    beq	$t8,$a2,.L0d9a6678
    # Line 221
    and	$a3,$t0,$a3
    # Line 222
    and	$a3,$a4,$a3
.L0d9a65d4:
    lw	$t9,0($a5)
    srl	$v0,$t9,0x12
    # Line 223
    srl	$t3,$t9,0xd
    # Line 222
    andi	$v0,$v0,0x3f
    # Line 223
    and	$t9,$t2,$t9
    # Line 222
    addiu	$v0,$v0,96
    # Line 223
    sll	$t9,$t9,0x5
    # Line 222
    andi	$v0,$v0,0xff
    # Line 223
    andi	$t3,$t3,0x1f
    # Line 222
    sll	$v0,$v0,0x17
    # Line 223
    or	$t3,$t3,$t9
    # Line 222
    or	$a3,$a3,$v0
    # Line 223
    and	$t3,$t1,$t3
    and	$a3,$a7,$a3
    or	$a3,$a3,$t3
    sw	$a3,0($sp)
    lwc1	$f4,0($sp)
    cvt.d.s	$f4,$f4
    msub.d	$f4,$f8,$f4,$f7
    madd.d	$f5,$f9,$f4,$f10
    c.eq.d	$f5,$f6
    # Line 220
    addiu	$a2,$a2,1
    addiu	$a5,$a5,4
    # Line 223
    bc1t	.L0d9a65c0
    # Line 233
    addiu	$t3,$a6,4
    madd.d	$f11,$f13,$f4,$f12
    div.d	$f11,$f11,$f5
    add.d	$f11,$f15,$f11
    cvt.s.d	$f11,$f11
    c.lt.s $f11,$f14
    mov.d	$f4,$f17
    bc1f .L0d9a6660
    move	$a6,$t3
    b	.L0d9a666c
    mov.d	$f4,$f6
.L0d9a6660:
    cvt.d.s	$f18,$f11
    c.lt.d $f17,$f18
    movf.d	$f4,$f18,$fcc2
.L0d9a666c:
    cvt.s.d	$f19,$f4
    b	.L0d9a65c8
    swc1	$f19,-4($t3)
.L0d9a6678:
    # Line 238
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a6680:
    # Line 221
    and	$a3,$t0,$a3
    b	.L0d9a65d4
    # Line 222
    and	$a3,$a4,$a3
.end __glOdySpanEyeZ24ToWindowZ

# Function: __glOdySpanEyeZ16ToWindowZ
# Declared: Line 241 (Source lines: 243-280)
# Address: 0x0d9a6690 - 0x0d9a67f0 (Size: 352 bytes, Frame: 16)
.globl __glOdySpanEyeZ16ToWindowZ
.ent __glOdySpanEyeZ16ToWindowZ
__glOdySpanEyeZ16ToWindowZ:
    # Line 254
    ldc1	$f7,512($a1)
    # Line 252
    lw	$v0,500($a1)
    # Line 243
    lui	$v1,0x15
    # Line 244
    lw	$t3,168($a1)
    # Line 243
    addiu	$v1,$v1,7936
    # Line 258
    ldc1	$f13,64($v0)
    # Line 243
    addu	$at,$t9,$v1
    # Line 257
    ldc1	$f15,_lit8_3fe0000000000000
    ldc1	$f12,48($v0)
    # Line 254
    ldc1	$f17,_lit8_3ff0000000000000
    # Line 259
    ldc1	$f8,0($v0)
    # Line 258
    mul.d	$f13,$f13,$f15
    # Line 243
    addiu	$sp,$sp,-16
    move	$a6,$a3
    # Line 256
    ldc1	$f9,72($v0)
    # Line 257
    mul.d	$f12,$f12,$f15
    # Line 243
    move	$a5,$a2
    # Line 255
    ldc1	$f10,56($v0)
    # Line 259
    blez	$t3,.L0d9a67dc
    # Line 254
    div.d	$f7,$f17,$f7
    # Line 259
    lw	$a3,0($sp)
    move	$a2,$zero
    dmtc1	$zero,$f6
    lui	$a7,0xff80
    mtc1	$zero,$f14
    lui	$t0,0x7fff
    lui	$t1,0x7f
    lui	$a4,0x807f
    ori	$a4,$a4,0xffff
    ori	$t1,$t1,0xffff
    lwc1	$f16,_lit_3f800000
    b	.L0d9a67e4
    ori	$t0,$t0,0xffff
    nop
    nop
    nop
.L0d9a6720:
    # Line 277
    addiu	$a6,$a6,4
    swc1	$f16,-4($a6)
.L0d9a6728:
    # Line 261
    beq	$t3,$a2,.L0d9a67dc
    # Line 262
    and	$a3,$t0,$a3
    # Line 263
    and	$a3,$a4,$a3
.L0d9a6734:
    lhu	$v0,0($a5)
    # Line 264
    srl	$t2,$v0,0x7
    andi	$t2,$t2,0x7
    # Line 263
    srl	$t9,$v0,0xa
    # Line 264
    andi	$v0,$v0,0x3ff
    sll	$t8,$v0,0x3
    # Line 263
    addiu	$t9,$t9,96
    # Line 264
    sll	$v0,$v0,0xd
    # Line 263
    andi	$t9,$t9,0xff
    # Line 264
    or	$t8,$t8,$v0
    # Line 263
    sll	$t9,$t9,0x17
    # Line 264
    or	$t2,$t2,$t8
    # Line 263
    or	$a3,$a3,$t9
    # Line 264
    and	$t2,$t1,$t2
    and	$a3,$a7,$a3
    or	$a3,$a3,$t2
    sw	$a3,0($sp)
    lwc1	$f4,0($sp)
    cvt.d.s	$f4,$f4
    msub.d	$f4,$f8,$f4,$f7
    madd.d	$f5,$f9,$f4,$f10
    c.eq.d	$f5,$f6
    # Line 261
    addiu	$a2,$a2,1
    addiu	$a5,$a5,2
    # Line 264
    bc1t	.L0d9a6720
    # Line 275
    addiu	$t2,$a6,4
    madd.d	$f11,$f13,$f4,$f12
    div.d	$f11,$f11,$f5
    add.d	$f11,$f15,$f11
    cvt.s.d	$f11,$f11
    c.lt.s $f11,$f14
    mov.d	$f4,$f17
    bc1f .L0d9a67c4
    move	$a6,$t2
    b	.L0d9a67d0
    mov.d	$f4,$f6
.L0d9a67c4:
    cvt.d.s	$f18,$f11
    c.lt.d $f17,$f18
    movf.d	$f4,$f18,$fcc2
.L0d9a67d0:
    cvt.s.d	$f19,$f4
    b	.L0d9a6728
    swc1	$f19,-4($t2)
.L0d9a67dc:
    # Line 280
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a67e4:
    # Line 262
    and	$a3,$t0,$a3
    b	.L0d9a6734
    # Line 263
    and	$a3,$a4,$a3
.end __glOdySpanEyeZ16ToWindowZ

# Function: __glOdySpanEyeZ16ToEyeZ24
# Declared: Line 283 (Source lines: 285-296)
# Address: 0x0d9a67f0 - 0x0d9a6958 (Size: 360 bytes, Frame: 0)
.globl __glOdySpanEyeZ16ToEyeZ24
.ent __glOdySpanEyeZ16ToEyeZ24
__glOdySpanEyeZ16ToEyeZ24:
    # Line 286
    lw	$t0,168($a1)
    # Line 285
    move	$t1,$a2
    # Line 288
    blez	$t0,.L0d9a6950
    # Line 285
    move	$t2,$a3
    # Line 288
    lui	$a7,0xff03
    lui	$a6,0xfffc
    move	$a1,$zero
    ori	$a7,$a7,0xffff
    lui	$a4,0x3
    andi	$t3,$t0,0x1
    lui	$a5,0xff
    ori	$a4,$a4,0xffff
    beqz	$t3,.L0d9a6884
    ori	$a5,$a5,0xffff
    # Line 291
    lw	$t3,0($a3)
    and	$t3,$a5,$t3
    sw	$t3,0($a3)
    # Line 292
    lhu	$t8,0($a2)
    srl	$t8,$t8,0xa
    andi	$t8,$t8,0x3f
    and	$t3,$a7,$t3
    sll	$t8,$t8,0x12
    or	$t3,$t3,$t8
    sw	$t3,0($a3)
    # Line 293
    lhu	$t9,0($a2)
    # Line 290
    addiu	$t2,$a3,4
    # Line 293
    srl	$t8,$t9,0x2
    andi	$t9,$t9,0x3ff
    sll	$t9,$t9,0x8
    andi	$t8,$t8,0xff
    # Line 290
    addiu	$t1,$a2,2
    # Line 293
    or	$t8,$t8,$t9
    and	$t3,$a6,$t3
    and	$t8,$a4,$t8
    # Line 290
    li	$a1,1
    # Line 293
    or	$t3,$t3,$t8
    sw	$t3,0($a3)
.L0d9a6884:
    sra	$t8,$t0,0x1
    move	$a2,$t2
    beqz	$t8,.L0d9a6950
    move	$a3,$t1
    nop
    nop
    nop
.L0d9a68a0:
    # Line 291
    lw	$at,0($a2)
    and	$at,$a5,$at
    sw	$at,0($a2)
    # Line 292
    lhu	$v0,0($a3)
    srl	$v0,$v0,0xa
    andi	$v0,$v0,0x3f
    and	$at,$a7,$at
    sll	$v0,$v0,0x12
    or	$at,$at,$v0
    sw	$at,0($a2)
    # Line 293
    lhu	$v1,0($a3)
    # Line 291
    lw	$t9,4($a2)
    # Line 293
    srl	$v0,$v1,0x2
    andi	$v1,$v1,0x3ff
    sll	$v1,$v1,0x8
    andi	$v0,$v0,0xff
    # Line 291
    and	$t9,$a5,$t9
    # Line 293
    or	$v0,$v0,$v1
    # Line 291
    sw	$t9,4($a2)
    # Line 293
    and	$at,$a6,$at
    and	$v0,$a4,$v0
    or	$at,$at,$v0
    sw	$at,0($a2)
    # Line 292
    lhu	$at,2($a3)
    srl	$at,$at,0xa
    andi	$at,$at,0x3f
    and	$t9,$a7,$t9
    sll	$at,$at,0x12
    or	$t9,$t9,$at
    sw	$t9,4($a2)
    # Line 293
    lhu	$v0,2($a3)
    # Line 290
    addiu	$a2,$a2,8
    addiu	$a3,$a3,4
    # Line 293
    srl	$at,$v0,0x2
    andi	$v0,$v0,0x3ff
    sll	$v0,$v0,0x8
    andi	$at,$at,0xff
    # Line 290
    addiu	$a1,$a1,2
    # Line 293
    or	$at,$at,$v0
    and	$t9,$a6,$t9
    and	$at,$a4,$at
    or	$t9,$t9,$at
    # Line 290
    bne	$t0,$a1,.L0d9a68a0
    # Line 293
    sw	$t9,-4($a2)
.L0d9a6950:
    # Line 296
    jr	$ra
    nop
.end __glOdySpanEyeZ16ToEyeZ24

# Function: __glOdySpanEyeZ24ToFloat
# Declared: Line 299 (Source lines: 301-315)
# Address: 0x0d9a6960 - 0x0d9a6b9c (Size: 572 bytes, Frame: 16)
.globl __glOdySpanEyeZ24ToFloat
.ent __glOdySpanEyeZ24ToFloat
__glOdySpanEyeZ24ToFloat:
    # Line 301
    addiu	$sp,$sp,-16
    # Line 302
    lw	$t2,168($a1)
    # Line 301
    move	$a5,$a2
    lui	$v0,0x15
    move	$t0,$a3
    addiu	$v0,$v0,7216
    # Line 304
    blez	$t2,.L0d9a6a60
    # Line 301
    addu	$at,$t9,$v0
    andi	$t3,$t2,0x1
    # Line 304
    lui	$a2,0xff80
    mtc1	$zero,$f6
    move	$t1,$zero
    dmtc1	$zero,$f9
    lui	$a3,0x7fff
    lui	$a4,0x807f
    lui	$a6,0x7f
    ldc1	$f8,_lit8_3ff0000000000000
    lui	$a7,0x3
    ori	$a6,$a6,0xffff
    ori	$a7,$a7,0xffff
    ori	$a4,$a4,0xffff
    ldc1	$f7,_lit8_3de0000400010000
    ori	$a3,$a3,0xffff
    beqz	$t3,.L0d9a6a54
    # Line 313
    mov.d	$f4,$f8
    # Line 309
    lw	$t9,0($a5)
    # Line 308
    lw	$t3,0($sp)
    # Line 310
    srl	$t8,$t9,0xd
    # Line 309
    srl	$v0,$t9,0x12
    # Line 310
    and	$t9,$a7,$t9
    # Line 308
    and	$t3,$a3,$t3
    # Line 309
    andi	$v0,$v0,0x3f
    and	$t3,$a4,$t3
    addiu	$v0,$v0,96
    # Line 310
    sll	$t9,$t9,0x5
    # Line 309
    andi	$v0,$v0,0xff
    # Line 310
    andi	$t8,$t8,0x1f
    # Line 309
    sll	$v0,$v0,0x17
    # Line 310
    or	$t8,$t8,$t9
    # Line 309
    or	$t3,$t3,$v0
    # Line 310
    and	$t8,$a6,$t8
    and	$t3,$a2,$t3
    or	$t3,$t3,$t8
    sw	$t3,0($sp)
    # Line 312
    lwc1	$f5,0($sp)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f7
    cvt.s.d	$f5,$f5
    c.lt.s	$f5,$f6
    # Line 307
    addiu	$t0,$t0,4
    addiu	$a5,$a5,4
    addiu	$t1,$t1,1
    # Line 312
    bc1f	.L0d9a6a40
    swc1	$f5,0($sp)
    # Line 313
    b	.L0d9a6a4c
    mov.d	$f4,$f9
.L0d9a6a40:
    cvt.d.s	$f10,$f5
    c.lt.d $f8,$f10
    movf.d	$f4,$f10,$fcc1
.L0d9a6a4c:
    cvt.s.d	$f11,$f4
    swc1	$f11,-4($t0)
.L0d9a6a54:
    sra	$v1,$t2,0x1
    bnez	$v1,.L0d9a6b94
    mov.d	$f4,$f8
.L0d9a6a60:
    # Line 315
    jr	$ra
    addiu	$sp,$sp,16
    nop
    nop
.L0d9a6a70:
    # Line 313
    cvt.d.s	$f12,$f5
    mov.d	$f4,$f8
    c.lt.d $f8,$f12
    movf.d	$f4,$f12,$fcc2
.L0d9a6a80:
    cvt.s.d	$f13,$f4
    mov.d	$f4,$f8
    # Line 307
    beq	$t2,$t1,.L0d9a6a60
    # Line 313
    swc1	$f13,-4($t0)
    # Line 309
    lw	$t3,0($a5)
.L0d9a6a94:
    # Line 308
    lw	$a0,0($sp)
    # Line 310
    srl	$a1,$t3,0xd
    # Line 309
    srl	$t8,$t3,0x12
    # Line 310
    and	$t3,$a7,$t3
    # Line 308
    and	$a0,$a3,$a0
    # Line 309
    andi	$t8,$t8,0x3f
    and	$a0,$a4,$a0
    addiu	$t8,$t8,96
    # Line 310
    sll	$t3,$t3,0x5
    # Line 309
    andi	$t8,$t8,0xff
    # Line 310
    andi	$a1,$a1,0x1f
    # Line 309
    sll	$t8,$t8,0x17
    # Line 310
    or	$a1,$a1,$t3
    # Line 309
    or	$a0,$a0,$t8
    # Line 310
    and	$a1,$a6,$a1
    and	$a0,$a2,$a0
    or	$a0,$a0,$a1
    sw	$a0,0($sp)
    # Line 312
    lwc1	$f5,0($sp)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f7
    cvt.s.d	$f5,$f5
    c.lt.s $f5,$f6
    # Line 307
    addiu	$t1,$t1,2
    # Line 312
    bc1f .L0d9a6b04
    swc1	$f5,0($sp)
    # Line 313
    b	.L0d9a6b10
    mov.d	$f4,$f9
.L0d9a6b04:
    cvt.d.s	$f10,$f5
    c.lt.d $f8,$f10
    movf.d	$f4,$f10,$fcc4
.L0d9a6b10:
    # Line 308
    lw	$t9,0($sp)
    # Line 313
    cvt.s.d	$f10,$f4
    swc1	$f10,0($t0)
    # Line 309
    lw	$v1,4($a5)
    # Line 308
    and	$t9,$a3,$t9
    # Line 309
    and	$t9,$a4,$t9
    srl	$a0,$v1,0x12
    # Line 310
    srl	$v0,$v1,0xd
    # Line 309
    andi	$a0,$a0,0x3f
    # Line 310
    and	$v1,$a7,$v1
    # Line 309
    addiu	$a0,$a0,96
    # Line 310
    sll	$v1,$v1,0x5
    # Line 309
    andi	$a0,$a0,0xff
    # Line 310
    andi	$v0,$v0,0x1f
    # Line 309
    sll	$a0,$a0,0x17
    # Line 310
    or	$v0,$v0,$v1
    # Line 309
    or	$t9,$t9,$a0
    # Line 310
    and	$v0,$a6,$v0
    and	$t9,$a2,$t9
    or	$t9,$t9,$v0
    sw	$t9,0($sp)
    # Line 312
    lwc1	$f5,0($sp)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f7
    cvt.s.d	$f5,$f5
    c.lt.s $f5,$f6
    # Line 313
    mov.d	$f4,$f9
    # Line 307
    addiu	$t0,$t0,8
    addiu	$a5,$a5,8
    # Line 312
    bc1f .L0d9a6a70
    swc1	$f5,0($sp)
    b	.L0d9a6a80
    nop
.L0d9a6b94:
    b	.L0d9a6a94
    # Line 309
    lw	$t3,0($a5)
.end __glOdySpanEyeZ24ToFloat

# Function: __glOdySpanEyeZ24ToFloat2
# Declared: Line 318 (Source lines: 320-333)
# Address: 0x0d9a6ba0 - 0x0d9a6d74 (Size: 468 bytes, Frame: 16)
.globl __glOdySpanEyeZ24ToFloat2
.ent __glOdySpanEyeZ24ToFloat2
__glOdySpanEyeZ24ToFloat2:
    # Line 320
    addiu	$sp,$sp,-16
    # Line 321
    lw	$t1,168($a1)
    # Line 320
    move	$a5,$a2
    lui	$v0,0x15
    move	$a7,$a3
    addiu	$v0,$v0,6640
    # Line 323
    blez	$t1,.L0d9a6c74
    # Line 320
    addu	$at,$t9,$v0
    # Line 323
    lui	$a6,0x3
    lui	$a3,0xfc
    lui	$a4,0x3000
    mtc1	$zero,$f6
    ldc1	$f8,_lit8_3ff0000000000000
    lui	$a2,0x7f80
    andi	$t2,$t1,0x1
    dmtc1	$zero,$f9
    move	$t0,$zero
    ldc1	$f7,_lit8_3de0000400010000
    ori	$a6,$a6,0xffff
    beqz	$t2,.L0d9a6c68
    # Line 331
    mov.d	$f4,$f8
    # Line 327
    lw	$t9,0($a5)
    srl	$t3,$t9,0xd
    and	$t8,$a3,$t9
    sll	$t8,$t8,0x5
    and	$t9,$a6,$t9
    addu	$t8,$a4,$t8
    sll	$t9,$t9,0x5
    and	$t8,$a2,$t8
    andi	$t3,$t3,0x1f
    or	$t8,$t8,$t9
    or	$t3,$t3,$t8
    sw	$t3,0($sp)
    # Line 330
    lwc1	$f5,0($sp)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f7
    cvt.s.d	$f5,$f5
    c.lt.s	$f5,$f6
    # Line 326
    addiu	$a7,$a7,4
    addiu	$a5,$a5,4
    addiu	$t0,$t0,1
    # Line 330
    bc1f	.L0d9a6c54
    swc1	$f5,0($sp)
    # Line 331
    b	.L0d9a6c60
    mov.d	$f4,$f9
.L0d9a6c54:
    cvt.d.s	$f10,$f5
    c.lt.d $f8,$f10
    movf.d	$f4,$f10,$fcc1
.L0d9a6c60:
    cvt.s.d	$f11,$f4
    swc1	$f11,-4($a7)
.L0d9a6c68:
    sra	$t9,$t1,0x1
    bnez	$t9,.L0d9a6d6c
    mov.d	$f4,$f8
.L0d9a6c74:
    # Line 333
    jr	$ra
    addiu	$sp,$sp,16
    nop
.L0d9a6c80:
    # Line 331
    cvt.d.s	$f12,$f5
    mov.d	$f4,$f8
    c.lt.d $f8,$f12
    movf.d	$f4,$f12,$fcc2
.L0d9a6c90:
    cvt.s.d	$f13,$f4
    mov.d	$f4,$f8
    # Line 326
    beq	$t1,$t0,.L0d9a6c74
    # Line 331
    swc1	$f13,-4($a7)
    # Line 327
    lw	$a0,0($a5)
.L0d9a6ca4:
    srl	$v0,$a0,0xd
    and	$v1,$a3,$a0
    sll	$v1,$v1,0x5
    and	$a0,$a6,$a0
    addu	$v1,$a4,$v1
    sll	$a0,$a0,0x5
    and	$v1,$a2,$v1
    andi	$v0,$v0,0x1f
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    sw	$v0,0($sp)
    # Line 330
    lwc1	$f5,0($sp)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f7
    cvt.s.d	$f5,$f5
    c.lt.s $f5,$f6
    # Line 326
    addiu	$t0,$t0,2
    # Line 330
    bc1f .L0d9a6cf8
    swc1	$f5,0($sp)
    # Line 331
    b	.L0d9a6d04
    mov.d	$f4,$f9
.L0d9a6cf8:
    cvt.d.s	$f10,$f5
    c.lt.d $f8,$f10
    movf.d	$f4,$f10,$fcc4
.L0d9a6d04:
    cvt.s.d	$f10,$f4
    swc1	$f10,0($a7)
    # Line 327
    lw	$t2,4($a5)
    srl	$a0,$t2,0xd
    and	$a1,$a3,$t2
    sll	$a1,$a1,0x5
    and	$t2,$a6,$t2
    addu	$a1,$a4,$a1
    sll	$t2,$t2,0x5
    and	$a1,$a2,$a1
    andi	$a0,$a0,0x1f
    or	$a1,$a1,$t2
    or	$a0,$a0,$a1
    sw	$a0,0($sp)
    # Line 330
    lwc1	$f5,0($sp)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f7
    cvt.s.d	$f5,$f5
    c.lt.s $f5,$f6
    # Line 331
    mov.d	$f4,$f9
    # Line 326
    addiu	$a7,$a7,8
    addiu	$a5,$a5,8
    # Line 330
    bc1f .L0d9a6c80
    swc1	$f5,0($sp)
    b	.L0d9a6c90
    nop
.L0d9a6d6c:
    b	.L0d9a6ca4
    # Line 327
    lw	$a0,0($a5)
.end __glOdySpanEyeZ24ToFloat2

# Function: __glOdySpanFloatToEyeZ24
# Declared: Line 336 (Source lines: 338-352)
# Address: 0x0d9a6d80 - 0x0d9a6ee0 (Size: 352 bytes, Frame: 16)
.globl __glOdySpanFloatToEyeZ24
.ent __glOdySpanFloatToEyeZ24
__glOdySpanFloatToEyeZ24:
    # Line 338
    addiu	$sp,$sp,-16
    # Line 339
    lw	$t3,168($a1)
    # Line 338
    move	$a6,$a3
    lui	$v0,0x15
    move	$a5,$a2
    addiu	$v0,$v0,6160
    # Line 341
    blez	$t3,.L0d9a6e24
    # Line 338
    addu	$at,$t9,$v0
    # Line 341
    lui	$a7,0x3
    move	$t1,$zero
    andi	$t2,$t3,0x1
    ori	$a7,$a7,0xffff
    lui	$t0,0xfff
    ldc1	$f4,_lit8_41fffff800000000
    beqz	$t2,.L0d9a6e18
    ori	$t0,$t0,0xffff
    # Line 345
    lwc1	$f0,0($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    cvt.s.d	$f0,$f0
    swc1	$f0,0($sp)
    lw	$a4,0($sp)
    srl	$t2,$a4,0x17
    # Line 347
    move	$a2,$zero
    # Line 345
    andi	$t2,$t2,0xff
    # Line 347
    srl	$t9,$a4,0x5
    # Line 345
    addiu	$a3,$t2,-96
    # Line 344
    addiu	$a6,$a6,4
    # Line 347
    and	$t9,$a7,$t9
    # Line 345
    bltz	$a3,.L0d9a6e0c
    # Line 347
    slti	$t8,$t2,160
    andi	$a2,$a3,0x3f
    sll	$a2,$a2,0x12
    or	$a2,$a2,$t9
    movz	$a2,$t0,$t8
.L0d9a6e0c:
    # Line 344
    addiu	$t1,$t1,1
    addiu	$a5,$a5,4
    # Line 347
    sw	$a2,-4($a6)
.L0d9a6e18:
    sra	$a3,$t3,0x1
    bnezl	$a3,.L0d9a6e50
    # Line 345
    lwc1	$f1,0($a5)
.L0d9a6e24:
    # Line 352
    jr	$ra
    addiu	$sp,$sp,16
    nop
.L0d9a6e30:
    # Line 347
    andi	$a2,$a3,0x3f
    sll	$a2,$a2,0x12
    or	$a2,$a2,$t8
    movz	$a2,$t0,$t2
.L0d9a6e40:
    # Line 344
    addiu	$a5,$a5,8
    beq	$t3,$t1,.L0d9a6e24
    # Line 347
    sw	$a2,-4($a6)
    # Line 345
    lwc1	$f1,0($a5)
.L0d9a6e50:
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    cvt.s.d	$f1,$f1
    swc1	$f1,0($sp)
    lw	$a4,0($sp)
    srl	$t2,$a4,0x17
    # Line 347
    move	$a2,$zero
    # Line 345
    andi	$t2,$t2,0xff
    # Line 347
    srl	$t9,$a4,0x5
    # Line 345
    addiu	$a3,$t2,-96
    # Line 344
    addiu	$t1,$t1,2
    # Line 347
    and	$t9,$a7,$t9
    # Line 345
    bltz	$a3,.L0d9a6e98
    # Line 347
    slti	$t8,$t2,160
    andi	$a2,$a3,0x3f
    sll	$a2,$a2,0x12
    or	$a2,$a2,$t9
    movz	$a2,$t0,$t8
.L0d9a6e98:
    sw	$a2,0($a6)
    # Line 345
    lwc1	$f2,4($a5)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    cvt.s.d	$f2,$f2
    swc1	$f2,0($sp)
    lw	$a4,0($sp)
    srl	$a3,$a4,0x17
    # Line 347
    move	$a2,$zero
    # Line 345
    andi	$a3,$a3,0xff
    # Line 347
    srl	$t8,$a4,0x5
    # Line 345
    addiu	$a3,$a3,-96
    # Line 344
    addiu	$a6,$a6,8
    # Line 347
    and	$t8,$a7,$t8
    # Line 345
    bgez	$a3,.L0d9a6e30
    # Line 347
    slti	$t2,$a3,64
    b	.L0d9a6e40
    nop
.end __glOdySpanFloatToEyeZ24

# Function: __glOdySpanOrthoZToEyeZ24
# Declared: Line 355 (Source lines: 356-405)
# Address: 0x0d9a6ee0 - 0x0d9a7118 (Size: 568 bytes, Frame: 16)
.globl __glOdySpanOrthoZToEyeZ24
.ent __glOdySpanOrthoZToEyeZ24
__glOdySpanOrthoZToEyeZ24:
    # Line 363
    lw	$v0,500($a1)
    # Line 369
    ldc1	$f7,72($v0)
    # Line 370
    ldc1	$f8,64($v0)
    # Line 369
    ldc1	$f11,48($v0)
    # Line 370
    add.d	$f8,$f8,$f7
    div.d	$f8,$f8,$f11
    # Line 356
    lui	$v1,0x15
    addiu	$v1,$v1,5808
    # Line 371
    lbu	$t3,528($a1)
    # Line 356
    addu	$at,$t9,$v1
    addiu	$sp,$sp,-16
    # Line 369
    ldc1	$f9,_lit8_4000000000000000
    sd	$ra,8($sp)
    # Line 357
    lw	$ra,168($a1)
    # Line 378
    lwc1	$f12,520($a1)
    # Line 356
    move	$a6,$a3
    # Line 369
    mul.d	$f7,$f7,$f9
    # Line 356
    move	$t1,$a2
    # Line 371
    dmtc1	$zero,$f5
    # Line 366
    ldc1	$f10,0($v0)
    # Line 371
    move	$t2,$zero
    # Line 367
    ldc1	$f9,512($a1)
    # Line 371
    blez	$ra,.L0d9a6fb8
    # Line 369
    div.d	$f7,$f7,$f11
    # Line 371
    lui	$t0,0x3
    andi	$t8,$ra,0x1
    ori	$t0,$t0,0xffff
    lui	$a7,0xfff
    ldc1	$f11,_lit8_41fffff800000000
    beqz	$t8,.L0d9a6fac
    ori	$a7,$a7,0xffff
    beqz	$t3,.L0d9a70dc
    nop
    # Line 378
    swc1	$f12,0($sp)
.L0d9a6f68:
    # Line 374
    addiu	$a6,$a6,4
    # Line 392
    lw	$a4,0($sp)
    srl	$t8,$a4,0x17
    andi	$t8,$t8,0xff
    # Line 400
    srl	$v0,$a4,0x5
    # Line 392
    addiu	$a5,$t8,-96
    # Line 400
    move	$a3,$zero
    and	$v0,$t0,$v0
    # Line 392
    bltz	$a5,.L0d9a6fa0
    # Line 400
    slti	$t9,$t8,160
    andi	$a3,$a5,0x3f
    sll	$a3,$a3,0x12
    or	$a3,$a3,$v0
    movz	$a3,$a7,$t9
.L0d9a6fa0:
    # Line 374
    addiu	$t2,$t2,1
    addiu	$t1,$t1,4
    # Line 400
    sw	$a3,-4($a6)
.L0d9a6fac:
    sra	$a4,$ra,0x1
    bnez	$a4,.L0d9a7060
    nop
.L0d9a6fb8:
    ld	$ra,8($sp)
    # Line 405
    jr	$ra
    addiu	$sp,$sp,16
    nop
    nop
    nop
.L0d9a6fd0:
    # Line 378
    lwc1	$f13,520($a1)
    swc1	$f13,0($sp)
.L0d9a6fd8:
    # Line 400
    move	$a3,$zero
    # Line 392
    lw	$a4,0($sp)
    srl	$t8,$a4,0x17
    andi	$t8,$t8,0xff
    # Line 400
    srl	$v0,$a4,0x5
    # Line 392
    addiu	$a5,$t8,-96
    # Line 400
    and	$v0,$t0,$v0
    # Line 392
    bltz	$a5,.L0d9a700c
    # Line 400
    slti	$t9,$t8,160
    andi	$a3,$a5,0x3f
    sll	$a3,$a3,0x12
    or	$a3,$a3,$v0
    movz	$a3,$a7,$t9
.L0d9a700c:
    # Line 371
    beqz	$t3,.L0d9a70a4
    # Line 400
    sw	$a3,0($a6)
    # Line 378
    lwc1	$f14,520($a1)
    swc1	$f14,0($sp)
.L0d9a701c:
    # Line 392
    lw	$a4,0($sp)
    srl	$t8,$a4,0x17
    # Line 400
    move	$a3,$zero
    # Line 392
    andi	$t8,$t8,0xff
    # Line 400
    srl	$v0,$a4,0x5
    # Line 392
    addiu	$a5,$t8,-96
    # Line 374
    addiu	$a6,$a6,8
    # Line 400
    and	$v0,$t0,$v0
    # Line 392
    bltz	$a5,.L0d9a7054
    # Line 400
    slti	$t9,$t8,160
    andi	$a3,$a5,0x3f
    sll	$a3,$a3,0x12
    or	$a3,$a3,$v0
    movz	$a3,$a7,$t9
.L0d9a7054:
    # Line 374
    addiu	$t1,$t1,8
    beq	$ra,$t2,.L0d9a6fb8
    # Line 400
    sw	$a3,-4($a6)
.L0d9a7060:
    # Line 371
    bnez	$t3,.L0d9a6fd0
    # Line 374
    addiu	$t2,$t2,2
    # Line 391
    lwc1	$f6,0($t1)
    cvt.d.s	$f6,$f6
    msub.d	$f6,$f8,$f6,$f7
    add.d	$f6,$f10,$f6
    mul.d	$f6,$f9,$f6
    c.lt.d	$f6,$f5
    bc1f	.L0d9a7090
    # Line 392
    mov.d	$f4,$f6
    b	.L0d9a7098
    mov.d	$f4,$f5
.L0d9a7090:
    c.lt.d $f11,$f6
    movt.d	$f4,$f11,$fcc1
.L0d9a7098:
    cvt.s.d	$f12,$f4
    b	.L0d9a6fd8
    swc1	$f12,0($sp)
.L0d9a70a4:
    # Line 391
    lwc1	$f6,4($t1)
    cvt.d.s	$f6,$f6
    msub.d	$f6,$f8,$f6,$f7
    add.d	$f6,$f10,$f6
    mul.d	$f6,$f9,$f6
    c.lt.d $f6,$f5
    bc1t .L0d9a70d0
    # Line 392
    mov.d	$f4,$f5
    mov.d	$f4,$f6
    c.lt.d $f11,$f6
    movt.d	$f4,$f11,$fcc3
.L0d9a70d0:
    cvt.s.d	$f12,$f4
    b	.L0d9a701c
    swc1	$f12,0($sp)
.L0d9a70dc:
    # Line 391
    lwc1	$f6,0($a2)
    cvt.d.s	$f6,$f6
    msub.d	$f6,$f8,$f6,$f7
    add.d	$f6,$f10,$f6
    mul.d	$f6,$f9,$f6
    c.lt.d $f6,$f5
    bc1f .L0d9a7104
    # Line 392
    mov.d	$f4,$f6
    b	.L0d9a710c
    mov.d	$f4,$f5
.L0d9a7104:
    c.lt.d $f11,$f6
    movt.d	$f4,$f11,$fcc5
.L0d9a710c:
    cvt.s.d	$f12,$f4
    b	.L0d9a6f68
    swc1	$f12,0($sp)
.end __glOdySpanOrthoZToEyeZ24

# Function: __glOdySpanWindowZToEyeZ24
# Declared: Line 410 (Source lines: 411-471)
# Address: 0x0d9a7120 - 0x0d9a727c (Size: 348 bytes, Frame: 16)
.globl __glOdySpanWindowZToEyeZ24
.ent __glOdySpanWindowZToEyeZ24
__glOdySpanWindowZToEyeZ24:
    # Line 423
    ldc1	$f14,512($a1)
    # Line 418
    lw	$v0,500($a1)
    # Line 412
    lw	$t8,168($a1)
    # Line 426
    ldc1	$f11,72($v0)
    # Line 411
    lui	$v1,0x15
    # Line 425
    ldc1	$f16,56($v0)
    # Line 411
    addiu	$v1,$v1,5232
    # Line 425
    ldc1	$f8,48($v0)
    # Line 411
    addu	$at,$t9,$v1
    # Line 427
    ldc1	$f15,_lit8_4000000000000000
    # Line 426
    ldc1	$f12,64($v0)
    # Line 411
    addiu	$sp,$sp,-16
    # Line 422
    ldc1	$f10,504($a1)
    # Line 411
    move	$a5,$a2
    move	$a6,$a3
    # Line 425
    add.d	$f8,$f8,$f16
    # Line 428
    mul.d	$f9,$f16,$f15
    # Line 421
    ldc1	$f13,0($v0)
    # Line 426
    add.d	$f12,$f12,$f11
    # Line 428
    blez	$t8,.L0d9a7274
    # Line 427
    mul.d	$f11,$f11,$f15
    # Line 428
    lui	$t2,0x3
    dmtc1	$zero,$f7
    move	$a3,$zero
    ori	$t2,$t2,0xffff
    lui	$t3,0xfff
    ldc1	$f15,_lit8_41fffff800000000
    b	.L0d9a71e0
    ori	$t3,$t3,0xffff
    nop
    nop
    nop
.L0d9a71a0:
    # Line 449
    lwc1	$f16,520($a1)
    swc1	$f16,0($sp)
.L0d9a71a8:
    # Line 457
    lw	$t1,0($sp)
    srl	$a7,$t1,0x17
    andi	$a7,$a7,0xff
    # Line 466
    srl	$v0,$t1,0x5
    # Line 457
    addiu	$t0,$a7,-96
    # Line 466
    and	$v0,$t2,$v0
    # Line 457
    bltz	$t0,.L0d9a71d8
    # Line 466
    slti	$t9,$a7,160
    andi	$a4,$t0,0x3f
    sll	$a4,$a4,0x12
    or	$a4,$a4,$v0
    movz	$a4,$t3,$t9
.L0d9a71d8:
    # Line 430
    beq	$t8,$a3,.L0d9a7274
    # Line 466
    sw	$a4,-4($a6)
.L0d9a71e0:
    # Line 447
    lwc1	$f5,0($a5)
    cvt.d.s	$f5,$f5
    nmsub.d	$f6,$f8,$f5,$f9
    c.eq.d	$f6,$f7
    # Line 430
    addiu	$a3,$a3,1
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    # Line 447
    bc1t	.L0d9a71a0
    # Line 466
    move	$a4,$zero
    # Line 451
    msub.d	$f4,$f12,$f5,$f11
    # Line 452
    lbu	$a7,530($a1)
    # Line 457
    mov.d	$f5,$f7
    # Line 452
    beqz	$a7,.L0d9a7224
    # Line 451
    div.d	$f4,$f4,$f6
    # Line 452
    c.le.d $f4,$f10
    bc1t .L0d9a723c
    nop
.L0d9a7224:
    lbu	$t0,531($a1)
    beqz	$t0,.L0d9a7248
    nop
    c.le.d $f10,$f4
    bc1f .L0d9a7248
    nop
.L0d9a723c:
    # Line 454
    lwc1	$f5,524($a1)
    b	.L0d9a71a8
    swc1	$f5,0($sp)
.L0d9a7248:
    # Line 456
    add.d	$f4,$f13,$f4
    mul.d	$f4,$f14,$f4
    c.lt.d $f4,$f7
    bc1t .L0d9a7268
    nop
    # Line 457
    mov.d	$f5,$f4
    c.lt.d $f15,$f4
    movt.d	$f5,$f15,$fcc4
.L0d9a7268:
    cvt.s.d	$f6,$f5
    b	.L0d9a71a8
    swc1	$f6,0($sp)
.L0d9a7274:
    # Line 471
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdySpanWindowZToEyeZ24

# Function: __glOdySpanSwapBytes2
# Declared: Line 499 (Source lines: 501-506)
# Address: 0x0d9a7280 - 0x0d9a7520 (Size: 672 bytes, Frame: 0)
.globl __glOdySpanSwapBytes2
.ent __glOdySpanSwapBytes2
__glOdySpanSwapBytes2:
    # Line 501
    lw	$at,40($a1)
    # Line 503
    lw	$v0,168($a1)
    # Line 501
    beqz	$at,.L0d9a7518
    # Line 503
    lw	$a4,32($a1)
.L0d9a7290:
    mult	$v0,$a4
    # Line 505
    li	$a7,-1
    move	$a6,$a3
    move	$t0,$zero
    # Line 503
    mflo	$t2
    # Line 505
    move	$a4,$a2
    sra	$t1,$t2,0x2
    andi	$v1,$t1,0x1
    sra	$t9,$t1,0x1
    blez	$t1,.L0d9a73e8
    addiu	$a5,$t1,-1
    beqz	$v1,.L0d9a7324
    move	$t0,$zero
    lhu	$t8,0($a2)
    sra	$t3,$t8,0x8
    sll	$t8,$t8,0x8
    or	$t3,$t3,$t8
    sh	$t3,0($a3)
    lhu	$t0,2($a2)
    sra	$a6,$t0,0x8
    sll	$t0,$t0,0x8
    or	$a6,$a6,$t0
    sh	$a6,2($a3)
    lhu	$a5,4($a2)
    sra	$a4,$a5,0x8
    sll	$a5,$a5,0x8
    or	$a4,$a4,$a5
    sh	$a4,4($a3)
    lhu	$a1,6($a2)
    addiu	$a6,$a3,8
    li	$t0,4
    sra	$a0,$a1,0x8
    addiu	$a5,$t1,-2
    sll	$a1,$a1,0x8
    addiu	$a4,$a2,8
    or	$a0,$a0,$a1
    sh	$a0,6($a3)
.L0d9a7324:
    beqz	$t9,.L0d9a73e8
    move	$a1,$t0
    nop
.L0d9a7330:
    lhu	$t3,0($a4)
    sra	$t1,$t3,0x8
    sll	$t3,$t3,0x8
    or	$t1,$t1,$t3
    sh	$t1,0($a6)
    lhu	$t0,2($a4)
    sra	$a0,$t0,0x8
    sll	$t0,$t0,0x8
    or	$a0,$a0,$t0
    sh	$a0,2($a6)
    lhu	$v1,4($a4)
    sra	$v0,$v1,0x8
    sll	$v1,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,4($a6)
    lhu	$at,6($a4)
    sra	$t9,$at,0x8
    sll	$at,$at,0x8
    or	$t9,$t9,$at
    sh	$t9,6($a6)
    lhu	$t8,8($a4)
    sra	$t3,$t8,0x8
    sll	$t8,$t8,0x8
    or	$t3,$t3,$t8
    sh	$t3,8($a6)
    lhu	$t1,10($a4)
    sra	$t0,$t1,0x8
    sll	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,10($a6)
    lhu	$a0,12($a4)
    sra	$v1,$a0,0x8
    sll	$a0,$a0,0x8
    or	$v1,$v1,$a0
    sh	$v1,12($a6)
    lhu	$v0,14($a4)
    addiu	$a4,$a4,16
    addiu	$a6,$a6,16
    addiu	$a5,$a5,-2
    sra	$at,$v0,0x8
    addiu	$a1,$a1,8
    sll	$v0,$v0,0x8
    or	$at,$at,$v0
    bne	$a5,$a7,.L0d9a7330
    sh	$at,-2($a6)
    move	$t0,$a1
.L0d9a73e8:
    sra	$t3,$t2,0x1f
    xor	$t1,$t2,$t3
    subu	$t1,$t1,$t3
    li	$a7,-1
    andi	$t1,$t1,0x3
    addu	$a4,$t0,$t0
    xor	$t1,$t1,$t3
    addu	$a6,$a4,$a3
    subu	$t1,$t1,$t3
    addu	$a4,$a4,$a2
    andi	$a5,$t1,0x7
    blez	$t1,.L0d9a7510
    addiu	$a1,$t1,-1
    beqz	$a5,.L0d9a7450
    sra	$t3,$t1,0x3
.L0d9a7424:
    lhu	$t2,0($a4)
    addiu	$a1,$a1,-1
    addiu	$a4,$a4,2
    addiu	$a5,$a5,-1
    sra	$t0,$t2,0x8
    addiu	$a6,$a6,2
    sll	$t2,$t2,0x8
    or	$t0,$t0,$t2
    bnez	$a5,.L0d9a7424
    sh	$t0,-2($a6)
    sra	$t3,$t1,0x3
.L0d9a7450:
    beqz	$t3,.L0d9a7510
    nop
    nop
    nop
.L0d9a7460:
    lhu	$at,0($a4)
    sra	$t9,$at,0x8
    sll	$at,$at,0x8
    or	$t9,$t9,$at
    sh	$t9,0($a6)
    lhu	$t8,2($a4)
    sra	$t3,$t8,0x8
    sll	$t8,$t8,0x8
    or	$t3,$t3,$t8
    sh	$t3,2($a6)
    lhu	$t2,4($a4)
    sra	$t1,$t2,0x8
    sll	$t2,$t2,0x8
    or	$t1,$t1,$t2
    sh	$t1,4($a6)
    lhu	$t0,6($a4)
    sra	$a5,$t0,0x8
    sll	$t0,$t0,0x8
    or	$a5,$a5,$t0
    sh	$a5,6($a6)
    lhu	$a3,8($a4)
    sra	$a2,$a3,0x8
    sll	$a3,$a3,0x8
    or	$a2,$a2,$a3
    sh	$a2,8($a6)
    lhu	$a0,10($a4)
    sra	$v1,$a0,0x8
    sll	$a0,$a0,0x8
    or	$v1,$v1,$a0
    sh	$v1,10($a6)
    lhu	$v0,12($a4)
    sra	$at,$v0,0x8
    sll	$v0,$v0,0x8
    or	$at,$at,$v0
    sh	$at,12($a6)
    lhu	$t9,14($a4)
    addiu	$a4,$a4,16
    addiu	$a1,$a1,-8
    sra	$t8,$t9,0x8
    addiu	$a6,$a6,16
    sll	$t9,$t9,0x8
    or	$t8,$t8,$t9
    bne	$a1,$a7,.L0d9a7460
    sh	$t8,-2($a6)
.L0d9a7510:
    # Line 506
    jr	$ra
    nop
.L0d9a7518:
    b	.L0d9a7290
    # Line 503
    lw	$a4,112($a1)
.end __glOdySpanSwapBytes2

# Function: __glOdySpanSwapBytes4
# Declared: Line 509 (Source lines: 511-517)
# Address: 0x0d9a7520 - 0x0d9a7780 (Size: 608 bytes, Frame: 0)
.globl __glOdySpanSwapBytes4
.ent __glOdySpanSwapBytes4
__glOdySpanSwapBytes4:
    # Line 511
    lw	$at,40($a1)
    # Line 514
    lw	$v0,168($a1)
    # Line 511
    beqz	$at,.L0d9a7778
    move	$t1,$a2
    # Line 514
    lw	$a2,32($a1)
.L0d9a7534:
    mult	$v0,$a2
    # Line 516
    lui	$a5,0xff
    li	$t0,-1
    # Line 514
    mflo	$t2
    # Line 516
    move	$a6,$zero
    sra	$t3,$t2,0x2
    move	$a4,$t1
    move	$a1,$a3
    blez	$t3,.L0d9a7624
    addiu	$a7,$t3,-1
    move	$a6,$zero
.L0d9a7560:
    lw	$t9,0($a4)
    sll	$t3,$t9,0x8
    srl	$at,$t9,0x8
    and	$t3,$a5,$t3
    srl	$t8,$t9,0x18
    andi	$at,$at,0xff00
    sll	$t9,$t9,0x18
    or	$t3,$t3,$at
    or	$t8,$t8,$t9
    or	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t8,4($a4)
    sll	$a2,$t8,0x8
    srl	$t9,$t8,0x8
    and	$a2,$a5,$a2
    srl	$t3,$t8,0x18
    andi	$t9,$t9,0xff00
    sll	$t8,$t8,0x18
    or	$a2,$a2,$t9
    or	$t3,$t3,$t8
    or	$a2,$a2,$t3
    sw	$a2,4($a1)
    lw	$t3,8($a4)
    sll	$a0,$t3,0x8
    srl	$t8,$t3,0x8
    and	$a0,$a5,$a0
    srl	$a2,$t3,0x18
    andi	$t8,$t8,0xff00
    sll	$t3,$t3,0x18
    or	$a0,$a0,$t8
    or	$a2,$a2,$t3
    or	$a0,$a0,$a2
    sw	$a0,8($a1)
    lw	$a2,12($a4)
    addiu	$a4,$a4,16
    addiu	$a1,$a1,16
    addiu	$a6,$a6,4
    sll	$v1,$a2,0x8
    addiu	$a7,$a7,-1
    srl	$t3,$a2,0x8
    and	$v1,$a5,$v1
    srl	$a0,$a2,0x18
    andi	$t3,$t3,0xff00
    sll	$a2,$a2,0x18
    or	$v1,$v1,$t3
    or	$a0,$a0,$a2
    or	$v1,$v1,$a0
    bne	$a7,$t0,.L0d9a7560
    sw	$v1,-4($a1)
.L0d9a7624:
    sra	$t8,$t2,0x1f
    xor	$t3,$t2,$t8
    li	$t0,-1
    subu	$t3,$t3,$t8
    lui	$a5,0xff
    andi	$t3,$t3,0x3
    sll	$a4,$a6,0x2
    xor	$t3,$t3,$t8
    addu	$a1,$a4,$a3
    subu	$t3,$t3,$t8
    addu	$a4,$a4,$t1
    andi	$a7,$t3,0x3
    blez	$t3,.L0d9a7770
    addiu	$a2,$t3,-1
    beqz	$a7,.L0d9a76a4
    nop
.L0d9a7664:
    lw	$t2,0($a4)
    addiu	$a2,$a2,-1
    addiu	$a4,$a4,4
    addiu	$a1,$a1,4
    sll	$a6,$t2,0x8
    addiu	$a7,$a7,-1
    srl	$t8,$t2,0x8
    and	$a6,$a5,$a6
    srl	$t1,$t2,0x18
    andi	$t8,$t8,0xff00
    sll	$t2,$t2,0x18
    or	$a6,$a6,$t8
    or	$t1,$t1,$t2
    or	$a6,$a6,$t1
    bnez	$a7,.L0d9a7664
    sw	$a6,-4($a1)
.L0d9a76a4:
    sra	$a7,$t3,0x2
    beqz	$a7,.L0d9a7770
    nop
.L0d9a76b0:
    lw	$at,0($a4)
    sll	$t8,$at,0x8
    srl	$v0,$at,0x8
    and	$t8,$a5,$t8
    srl	$t9,$at,0x18
    andi	$v0,$v0,0xff00
    sll	$at,$at,0x18
    or	$t8,$t8,$v0
    or	$t9,$t9,$at
    or	$t8,$t8,$t9
    sw	$t8,0($a1)
    lw	$t9,4($a4)
    sll	$t3,$t9,0x8
    srl	$at,$t9,0x8
    and	$t3,$a5,$t3
    srl	$t8,$t9,0x18
    andi	$at,$at,0xff00
    sll	$t9,$t9,0x18
    or	$t3,$t3,$at
    or	$t8,$t8,$t9
    or	$t3,$t3,$t8
    sw	$t3,4($a1)
    lw	$t8,8($a4)
    sll	$t2,$t8,0x8
    srl	$t9,$t8,0x8
    and	$t2,$a5,$t2
    srl	$t3,$t8,0x18
    andi	$t9,$t9,0xff00
    sll	$t8,$t8,0x18
    or	$t2,$t2,$t9
    or	$t3,$t3,$t8
    or	$t2,$t2,$t3
    sw	$t2,8($a1)
    lw	$t3,12($a4)
    addiu	$a4,$a4,16
    addiu	$a1,$a1,16
    sll	$t1,$t3,0x8
    addiu	$a2,$a2,-4
    srl	$t8,$t3,0x8
    and	$t1,$a5,$t1
    srl	$t2,$t3,0x18
    andi	$t8,$t8,0xff00
    sll	$t3,$t3,0x18
    or	$t1,$t1,$t8
    or	$t2,$t2,$t3
    or	$t1,$t1,$t2
    bne	$a2,$t0,.L0d9a76b0
    sw	$t1,-4($a1)
.L0d9a7770:
    # Line 517
    jr	$ra
    nop
.L0d9a7778:
    b	.L0d9a7534
    # Line 514
    lw	$a2,112($a1)
.end __glOdySpanSwapBytes4

# Function: __glOdySpanUnpackUbyte
# Declared: Line 520 (Source lines: 522-525)
# Address: 0x0d9a7780 - 0x0d9a795c (Size: 476 bytes, Frame: 0)
.globl __glOdySpanUnpackUbyte
.ent __glOdySpanUnpackUbyte
__glOdySpanUnpackUbyte:
    # Line 523
    lw	$a0,168($a1)
    lw	$v1,32($a1)
    mult	$v1,$a0
    # Line 524
    move	$t1,$zero
    # Line 522
    lui	$v0,0x15
    # Line 523
    mflo	$t2
    # Line 522
    addiu	$v0,$v0,3600
    # Line 524
    sra	$a6,$t2,0x2
    move	$a5,$a2
    # Line 522
    addu	$at,$t9,$v0
    # Line 524
    blez	$a6,.L0d9a78f8
    addiu	$t0,$a6,-1
    lwc1	$f4,_lit_437f0000
    li	$a7,-1
    andi	$a1,$a6,0x1
    sra	$t3,$a6,0x1
    move	$a4,$a3
    beqz	$a1,.L0d9a782c
    move	$t1,$zero
    lbu	$t1,0($a2)
    mtc1	$t1,$f3
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f4
    swc1	$f3,0($a3)
    lbu	$t0,1($a2)
    mtc1	$t0,$f2
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f4
    swc1	$f2,4($a3)
    lbu	$a5,2($a2)
    mtc1	$a5,$f1
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f4
    swc1	$f1,8($a3)
    lbu	$a4,3($a2)
    mtc1	$a4,$f0
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f4
    li	$t1,4
    addiu	$t0,$a6,-2
    addiu	$a5,$a2,4
    addiu	$a4,$a3,16
    swc1	$f0,12($a3)
.L0d9a782c:
    beqz	$t3,.L0d9a78f8
    move	$a6,$t1
    nop
    nop
    nop
.L0d9a7840:
    lbu	$t3,0($a5)
    mtc1	$t3,$f12
    cvt.s.w	$f12,$f12
    div.s	$f12,$f12,$f4
    swc1	$f12,0($a4)
    lbu	$t1,1($a5)
    mtc1	$t1,$f11
    cvt.s.w	$f11,$f11
    div.s	$f11,$f11,$f4
    swc1	$f11,4($a4)
    lbu	$a1,2($a5)
    mtc1	$a1,$f10
    cvt.s.w	$f10,$f10
    div.s	$f10,$f10,$f4
    swc1	$f10,8($a4)
    lbu	$a0,3($a5)
    mtc1	$a0,$f9
    cvt.s.w	$f9,$f9
    div.s	$f9,$f9,$f4
    swc1	$f9,12($a4)
    lbu	$v1,4($a5)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    div.s	$f8,$f8,$f4
    swc1	$f8,16($a4)
    lbu	$v0,5($a5)
    mtc1	$v0,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f4
    swc1	$f7,20($a4)
    lbu	$t9,6($a5)
    mtc1	$t9,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f4
    swc1	$f6,24($a4)
    lbu	$t8,7($a5)
    mtc1	$t8,$f5
    cvt.s.w	$f5,$f5
    div.s	$f5,$f5,$f4
    addiu	$t0,$t0,-2
    addiu	$a5,$a5,8
    addiu	$a4,$a4,32
    addiu	$a6,$a6,8
    bne	$t0,$a7,.L0d9a7840
    swc1	$f5,-4($a4)
    move	$t1,$a6
.L0d9a78f8:
    sra	$t3,$t2,0x1f
    xor	$t0,$t2,$t3
    subu	$t0,$t0,$t3
    andi	$t0,$t0,0x3
    li	$a7,-1
    xor	$t0,$t0,$t3
    sll	$a4,$t1,0x2
    subu	$t0,$t0,$t3
    addu	$a5,$t1,$a2
    addu	$a4,$a3,$a4
    lwc1	$f4,_lit_437f0000
    blez	$t0,.L0d9a7954
    addiu	$a6,$t0,-1
    nop
.L0d9a7930:
    lbu	$t0,0($a5)
    mtc1	$t0,$f13
    cvt.s.w	$f13,$f13
    div.s	$f13,$f13,$f4
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,4
    addiu	$a5,$a5,1
    bne	$a6,$a7,.L0d9a7930
    swc1	$f13,-4($a4)
.L0d9a7954:
    # Line 525
    jr	$ra
    nop
.end __glOdySpanUnpackUbyte

# Function: __glOdySpanUnpackUshort
# Declared: Line 528 (Source lines: 530-533)
# Address: 0x0d9a7960 - 0x0d9a7b3c (Size: 476 bytes, Frame: 0)
.globl __glOdySpanUnpackUshort
.ent __glOdySpanUnpackUshort
__glOdySpanUnpackUshort:
    # Line 531
    lw	$a0,168($a1)
    lw	$v1,32($a1)
    mult	$v1,$a0
    # Line 532
    move	$t1,$zero
    # Line 530
    lui	$v0,0x15
    # Line 531
    mflo	$t2
    # Line 530
    addiu	$v0,$v0,3120
    # Line 532
    sra	$a6,$t2,0x2
    move	$a5,$a2
    # Line 530
    addu	$at,$t9,$v0
    # Line 532
    blez	$a6,.L0d9a7ad8
    addiu	$t0,$a6,-1
    lwc1	$f4,_lit_477fff00
    li	$a7,-1
    andi	$a1,$a6,0x1
    sra	$t3,$a6,0x1
    move	$a4,$a3
    beqz	$a1,.L0d9a7a0c
    move	$t1,$zero
    lhu	$t1,0($a2)
    mtc1	$t1,$f3
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f4
    swc1	$f3,0($a3)
    lhu	$t0,2($a2)
    mtc1	$t0,$f2
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f4
    swc1	$f2,4($a3)
    lhu	$a5,4($a2)
    mtc1	$a5,$f1
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f4
    swc1	$f1,8($a3)
    lhu	$a4,6($a2)
    mtc1	$a4,$f0
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f4
    li	$t1,4
    addiu	$t0,$a6,-2
    addiu	$a5,$a2,8
    addiu	$a4,$a3,16
    swc1	$f0,12($a3)
.L0d9a7a0c:
    beqz	$t3,.L0d9a7ad8
    move	$a6,$t1
    nop
    nop
    nop
.L0d9a7a20:
    lhu	$t3,0($a5)
    mtc1	$t3,$f12
    cvt.s.w	$f12,$f12
    div.s	$f12,$f12,$f4
    swc1	$f12,0($a4)
    lhu	$t1,2($a5)
    mtc1	$t1,$f11
    cvt.s.w	$f11,$f11
    div.s	$f11,$f11,$f4
    swc1	$f11,4($a4)
    lhu	$a1,4($a5)
    mtc1	$a1,$f10
    cvt.s.w	$f10,$f10
    div.s	$f10,$f10,$f4
    swc1	$f10,8($a4)
    lhu	$a0,6($a5)
    mtc1	$a0,$f9
    cvt.s.w	$f9,$f9
    div.s	$f9,$f9,$f4
    swc1	$f9,12($a4)
    lhu	$v1,8($a5)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    div.s	$f8,$f8,$f4
    swc1	$f8,16($a4)
    lhu	$v0,10($a5)
    mtc1	$v0,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f4
    swc1	$f7,20($a4)
    lhu	$t9,12($a5)
    mtc1	$t9,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f4
    swc1	$f6,24($a4)
    lhu	$t8,14($a5)
    mtc1	$t8,$f5
    cvt.s.w	$f5,$f5
    div.s	$f5,$f5,$f4
    addiu	$t0,$t0,-2
    addiu	$a5,$a5,16
    addiu	$a4,$a4,32
    addiu	$a6,$a6,8
    bne	$t0,$a7,.L0d9a7a20
    swc1	$f5,-4($a4)
    move	$t1,$a6
.L0d9a7ad8:
    sra	$t3,$t2,0x1f
    xor	$t0,$t2,$t3
    subu	$t0,$t0,$t3
    li	$a7,-1
    andi	$t0,$t0,0x3
    sll	$a4,$t1,0x2
    xor	$t0,$t0,$t3
    addu	$a5,$t1,$t1
    subu	$t0,$t0,$t3
    addu	$a5,$a5,$a2
    addu	$a4,$a4,$a3
    lwc1	$f4,_lit_477fff00
    blez	$t0,.L0d9a7b34
    addiu	$a6,$t0,-1
.L0d9a7b10:
    lhu	$t0,0($a5)
    mtc1	$t0,$f13
    cvt.s.w	$f13,$f13
    div.s	$f13,$f13,$f4
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,4
    addiu	$a5,$a5,2
    bne	$a6,$a7,.L0d9a7b10
    swc1	$f13,-4($a4)
.L0d9a7b34:
    # Line 533
    jr	$ra
    nop
.end __glOdySpanUnpackUshort

# Function: __glOdySpanUnpackUint
# Declared: Line 536 (Source lines: 538-541)
# Address: 0x0d9a7b40 - 0x0d9a7e18 (Size: 728 bytes, Frame: 0)
.globl __glOdySpanUnpackUint
.ent __glOdySpanUnpackUint
__glOdySpanUnpackUint:
    # Line 539
    lw	$a0,168($a1)
    lw	$v1,32($a1)
    mult	$v1,$a0
    # Line 538
    move	$t1,$a2
    lui	$v0,0x15
    # Line 539
    mflo	$t3
    # Line 538
    addiu	$v0,$v0,2640
    # Line 540
    sra	$t2,$t3,0x2
    move	$a4,$zero
    # Line 538
    addu	$at,$t9,$v0
    # Line 540
    blez	$t2,.L0d9a7d14
    addiu	$a6,$t2,-1
    li	$t0,-1
    andi	$a1,$t2,0x1
    move	$a7,$a3
    move	$a5,$a2
    lwc1	$f4,_lit_4f800000
    beqz	$a1,.L0d9a7c0c
    move	$a4,$zero
    lw	$a6,0($a2)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f3
    cvt.s.l	$f3,$f3
    div.s	$f3,$f3,$f4
    swc1	$f3,0($a3)
    lw	$a5,4($a2)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f2
    cvt.s.l	$f2,$f2
    div.s	$f2,$f2,$f4
    swc1	$f2,4($a3)
    lw	$a4,8($a2)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f1
    cvt.s.l	$f1,$f1
    div.s	$f1,$f1,$f4
    swc1	$f1,8($a3)
    lw	$a2,12($a2)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f0
    cvt.s.l	$f0,$f0
    div.s	$f0,$f0,$f4
    addiu	$a7,$a3,16
    addiu	$a6,$t2,-2
    addiu	$a5,$t1,16
    li	$a4,4
    swc1	$f0,12($a3)
.L0d9a7c0c:
    sra	$t8,$t2,0x1
    beqz	$t8,.L0d9a7d14
    nop
    nop
    nop
.L0d9a7c20:
    lw	$t8,0($a5)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f12
    cvt.s.l	$f12,$f12
    div.s	$f12,$f12,$f4
    swc1	$f12,0($a7)
    lw	$t2,4($a5)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f11
    cvt.s.l	$f11,$f11
    div.s	$f11,$f11,$f4
    swc1	$f11,4($a7)
    lw	$a2,8($a5)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f10
    cvt.s.l	$f10,$f10
    div.s	$f10,$f10,$f4
    swc1	$f10,8($a7)
    lw	$a1,12($a5)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f9
    cvt.s.l	$f9,$f9
    div.s	$f9,$f9,$f4
    swc1	$f9,12($a7)
    lw	$a0,16($a5)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f8
    cvt.s.l	$f8,$f8
    div.s	$f8,$f8,$f4
    swc1	$f8,16($a7)
    lw	$v1,20($a5)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    cvt.s.l	$f7,$f7
    div.s	$f7,$f7,$f4
    swc1	$f7,20($a7)
    lw	$v0,24($a5)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f6
    cvt.s.l	$f6,$f6
    div.s	$f6,$f6,$f4
    swc1	$f6,24($a7)
    lw	$t9,28($a5)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f5
    cvt.s.l	$f5,$f5
    div.s	$f5,$f5,$f4
    addiu	$a6,$a6,-2
    addiu	$a5,$a5,32
    addiu	$a7,$a7,32
    addiu	$a4,$a4,8
    bne	$a6,$t0,.L0d9a7c20
    swc1	$f5,-4($a7)
.L0d9a7d14:
    sra	$t8,$t3,0x1f
    xor	$t2,$t3,$t8
    subu	$t2,$t2,$t8
    li	$t0,-1
    andi	$t2,$t2,0x3
    sll	$a5,$a4,0x2
    xor	$t2,$t2,$t8
    addu	$a7,$a5,$a3
    subu	$t2,$t2,$t8
    addu	$a5,$a5,$t1
    andi	$a6,$t2,0x3
    lwc1	$f4,_lit_4f800000
    blez	$t2,.L0d9a7e10
    addiu	$a2,$t2,-1
    beqz	$a6,.L0d9a7d88
    sra	$t3,$t2,0x2
.L0d9a7d54:
    lw	$t1,0($a5)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f13
    cvt.s.l	$f13,$f13
    div.s	$f13,$f13,$f4
    addiu	$a6,$a6,-1
    addiu	$a2,$a2,-1
    addiu	$a7,$a7,4
    addiu	$a5,$a5,4
    bnez	$a6,.L0d9a7d54
    swc1	$f13,-4($a7)
    sra	$t3,$t2,0x2
.L0d9a7d88:
    beqz	$t3,.L0d9a7e10
    nop
.L0d9a7d90:
    lw	$v1,0($a5)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f17
    cvt.s.l	$f17,$f17
    div.s	$f17,$f17,$f4
    swc1	$f17,0($a7)
    lw	$v0,4($a5)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f16
    cvt.s.l	$f16,$f16
    div.s	$f16,$f16,$f4
    swc1	$f16,4($a7)
    lw	$t9,8($a5)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f15
    cvt.s.l	$f15,$f15
    div.s	$f15,$f15,$f4
    swc1	$f15,8($a7)
    lw	$t8,12($a5)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f14
    cvt.s.l	$f14,$f14
    div.s	$f14,$f14,$f4
    addiu	$a2,$a2,-4
    addiu	$a7,$a7,16
    addiu	$a5,$a5,16
    bne	$a2,$t0,.L0d9a7d90
    swc1	$f14,-4($a7)
.L0d9a7e10:
    # Line 541
    jr	$ra
    nop
.end __glOdySpanUnpackUint

# Function: __glOdySpanUnpackUbyteI
# Declared: Line 544 (Source lines: 546-550)
# Address: 0x0d9a7e20 - 0x0d9a7f18 (Size: 248 bytes, Frame: 0)
.globl __glOdySpanUnpackUbyteI
.ent __glOdySpanUnpackUbyteI
__glOdySpanUnpackUbyteI:
    # Line 548
    lw	$v0,168($a1)
    lw	$at,32($a1)
    mult	$at,$v0
    mflo	$t1
    # Line 549
    sra	$t2,$t1,0x2
    # Line 546
    move	$t0,$a2
    # Line 549
    move	$a5,$zero
    blez	$t2,.L0d9a7e94
    addiu	$a6,$t2,-1
    li	$a7,-1
    move	$a1,$a3
    move	$a4,$a2
    move	$a5,$zero
    nop
    nop
    nop
.L0d9a7e60:
    lbu	$t2,0($a4)
    sw	$t2,0($a1)
    lbu	$a2,1($a4)
    sw	$a2,4($a1)
    lbu	$a0,2($a4)
    addiu	$a4,$a4,4
    addiu	$a6,$a6,-1
    sw	$a0,8($a1)
    addiu	$a1,$a1,16
    lbu	$v1,-1($a4)
    addiu	$a5,$a5,4
    bne	$a6,$a7,.L0d9a7e60
    sw	$v1,-4($a1)
.L0d9a7e94:
    sra	$a7,$t1,0x1f
    xor	$a6,$t1,$a7
    subu	$a6,$a6,$a7
    addu	$a4,$a5,$t0
    andi	$a6,$a6,0x3
    sll	$a1,$a5,0x2
    xor	$a6,$a6,$a7
    addu	$a1,$a3,$a1
    subu	$a6,$a6,$a7
    li	$a7,-1
    andi	$t1,$a6,0x1
    blez	$a6,.L0d9a7f10
    addiu	$a2,$a6,-1
    beqz	$t1,.L0d9a7ee8
    sra	$t3,$a6,0x1
    addiu	$a1,$a1,4
    lbu	$t2,0($a4)
    addiu	$a2,$a6,-2
    addiu	$a4,$a4,1
    sw	$t2,-4($a1)
    sra	$t3,$a6,0x1
.L0d9a7ee8:
    beqz	$t3,.L0d9a7f10
    nop
.L0d9a7ef0:
    lbu	$t9,0($a4)
    addiu	$a2,$a2,-2
    sw	$t9,0($a1)
    addiu	$a1,$a1,8
    lbu	$t8,1($a4)
    addiu	$a4,$a4,2
    bne	$a2,$a7,.L0d9a7ef0
    sw	$t8,-4($a1)
.L0d9a7f10:
    # Line 550
    jr	$ra
    nop
.end __glOdySpanUnpackUbyteI

# Function: __glOdySpanUnpackUshortI
# Declared: Line 553 (Source lines: 555-559)
# Address: 0x0d9a7f20 - 0x0d9a8028 (Size: 264 bytes, Frame: 0)
.globl __glOdySpanUnpackUshortI
.ent __glOdySpanUnpackUshortI
__glOdySpanUnpackUshortI:
    # Line 557
    lw	$v0,168($a1)
    lw	$at,32($a1)
    mult	$at,$v0
    mflo	$t1
    # Line 558
    sra	$t2,$t1,0x2
    # Line 555
    move	$t0,$a2
    # Line 558
    move	$a5,$zero
    blez	$t2,.L0d9a7f94
    addiu	$a6,$t2,-1
    li	$a7,-1
    move	$a1,$a3
    move	$a4,$a2
    move	$a5,$zero
    nop
    nop
    nop
.L0d9a7f60:
    lhu	$t2,0($a4)
    sw	$t2,0($a1)
    lhu	$a2,2($a4)
    sw	$a2,4($a1)
    lhu	$a0,4($a4)
    addiu	$a4,$a4,8
    addiu	$a6,$a6,-1
    sw	$a0,8($a1)
    addiu	$a1,$a1,16
    lhu	$v1,-2($a4)
    addiu	$a5,$a5,4
    bne	$a6,$a7,.L0d9a7f60
    sw	$v1,-4($a1)
.L0d9a7f94:
    sra	$a7,$t1,0x1f
    addu	$a4,$a5,$a5
    xor	$a6,$t1,$a7
    sll	$a1,$a5,0x2
    subu	$a6,$a6,$a7
    addu	$a1,$a1,$a3
    andi	$a6,$a6,0x3
    addu	$a4,$a4,$t0
    xor	$a6,$a6,$a7
    subu	$a6,$a6,$a7
    li	$a7,-1
    andi	$t1,$a6,0x1
    sra	$a5,$a6,0x1
    blez	$a6,.L0d9a8020
    addiu	$a2,$a6,-1
    beqz	$t1,.L0d9a7fec
    nop
    addiu	$a1,$a1,4
    lhu	$a3,0($a4)
    addiu	$a2,$a6,-2
    addiu	$a4,$a4,2
    sw	$a3,-4($a1)
.L0d9a7fec:
    beqz	$a5,.L0d9a8020
    nop
    nop
    nop
    nop
.L0d9a8000:
    lhu	$t0,0($a4)
    addiu	$a2,$a2,-2
    sw	$t0,0($a1)
    addiu	$a1,$a1,8
    lhu	$a6,2($a4)
    addiu	$a4,$a4,4
    bne	$a2,$a7,.L0d9a8000
    sw	$a6,-4($a1)
.L0d9a8020:
    # Line 559
    jr	$ra
    nop
.end __glOdySpanUnpackUshortI

# Function: __glOdySpanUnpackFloatI
# Declared: Line 562 (Source lines: 564-568)
# Address: 0x0d9a8030 - 0x0d9a8248 (Size: 536 bytes, Frame: 0)
.globl __glOdySpanUnpackFloatI
.ent __glOdySpanUnpackFloatI
__glOdySpanUnpackFloatI:
    # Line 566
    lw	$v0,168($a1)
    lw	$at,32($a1)
    mult	$at,$v0
    # Line 564
    move	$t0,$a2
    move	$t1,$a3
    # Line 566
    mflo	$t2
    # Line 567
    move	$a4,$zero
    sra	$t3,$t2,0x2
    move	$a1,$a2
    andi	$a7,$t3,0x3
    blez	$t3,.L0d9a8194
    addiu	$a5,$t3,-1
    li	$a6,-1
    sra	$v1,$t3,0x2
    beqz	$a7,.L0d9a80b8
    move	$a4,$zero
.L0d9a8070:
    lwc1	$f3,0($a1)
    trunc.w.s	$f3,$f3
    swc1	$f3,0($a3)
    lwc1	$f2,4($a1)
    trunc.w.s	$f2,$f2
    swc1	$f2,4($a3)
    lwc1	$f1,8($a1)
    trunc.w.s	$f1,$f1
    swc1	$f1,8($a3)
    lwc1	$f0,12($a1)
    addiu	$a5,$a5,-1
    addiu	$a7,$a7,-1
    addiu	$a1,$a1,16
    addiu	$a3,$a3,16
    trunc.w.s	$f0,$f0
    addiu	$a4,$a4,4
    bnez	$a7,.L0d9a8070
    swc1	$f0,-4($a3)
.L0d9a80b8:
    beqz	$v1,.L0d9a8194
    nop
.L0d9a80c0:
    lwc1	$f19,0($a1)
    trunc.w.s	$f19,$f19
    swc1	$f19,0($a3)
    lwc1	$f18,4($a1)
    trunc.w.s	$f18,$f18
    swc1	$f18,4($a3)
    lwc1	$f17,8($a1)
    trunc.w.s	$f17,$f17
    swc1	$f17,8($a3)
    lwc1	$f16,12($a1)
    trunc.w.s	$f16,$f16
    swc1	$f16,12($a3)
    lwc1	$f15,16($a1)
    trunc.w.s	$f15,$f15
    swc1	$f15,16($a3)
    lwc1	$f14,20($a1)
    trunc.w.s	$f14,$f14
    swc1	$f14,20($a3)
    lwc1	$f13,24($a1)
    trunc.w.s	$f13,$f13
    swc1	$f13,24($a3)
    lwc1	$f12,28($a1)
    trunc.w.s	$f12,$f12
    swc1	$f12,28($a3)
    lwc1	$f11,32($a1)
    trunc.w.s	$f11,$f11
    swc1	$f11,32($a3)
    lwc1	$f10,36($a1)
    trunc.w.s	$f10,$f10
    swc1	$f10,36($a3)
    lwc1	$f9,40($a1)
    trunc.w.s	$f9,$f9
    swc1	$f9,40($a3)
    lwc1	$f8,44($a1)
    trunc.w.s	$f8,$f8
    swc1	$f8,44($a3)
    lwc1	$f7,48($a1)
    trunc.w.s	$f7,$f7
    swc1	$f7,48($a3)
    lwc1	$f6,52($a1)
    trunc.w.s	$f6,$f6
    swc1	$f6,52($a3)
    lwc1	$f5,56($a1)
    trunc.w.s	$f5,$f5
    swc1	$f5,56($a3)
    lwc1	$f4,60($a1)
    addiu	$a5,$a5,-4
    addiu	$a1,$a1,64
    addiu	$a3,$a3,64
    trunc.w.s	$f4,$f4
    addiu	$a4,$a4,16
    bne	$a5,$a6,.L0d9a80c0
    swc1	$f4,-4($a3)
.L0d9a8194:
    sra	$t3,$t2,0x1f
    xor	$a7,$t2,$t3
    subu	$a7,$a7,$t3
    li	$a6,-1
    andi	$a7,$a7,0x3
    sll	$a1,$a4,0x2
    xor	$a7,$a7,$t3
    addu	$a3,$a1,$t1
    subu	$a7,$a7,$t3
    addu	$a1,$a1,$t0
    andi	$a5,$a7,0x3
    blez	$a7,.L0d9a8240
    addiu	$a2,$a7,-1
    beqz	$a5,.L0d9a81f4
    sra	$a4,$a7,0x2
.L0d9a81d0:
    lwc1	$f21,0($a1)
    addiu	$a5,$a5,-1
    addiu	$a2,$a2,-1
    addiu	$a3,$a3,4
    trunc.w.s	$f21,$f21
    addiu	$a1,$a1,4
    bnez	$a5,.L0d9a81d0
    swc1	$f21,-4($a3)
    sra	$a4,$a7,0x2
.L0d9a81f4:
    beqz	$a4,.L0d9a8240
    nop
    nop
.L0d9a8200:
    lwc1	$f29,0($a1)
    trunc.w.s	$f29,$f29
    swc1	$f29,0($a3)
    lwc1	$f27,4($a1)
    trunc.w.s	$f27,$f27
    swc1	$f27,4($a3)
    lwc1	$f25,8($a1)
    trunc.w.s	$f25,$f25
    swc1	$f25,8($a3)
    lwc1	$f23,12($a1)
    addiu	$a2,$a2,-4
    addiu	$a3,$a3,16
    trunc.w.s	$f23,$f23
    addiu	$a1,$a1,16
    bne	$a2,$a6,.L0d9a8200
    swc1	$f23,-4($a3)
.L0d9a8240:
    # Line 568
    jr	$ra
    nop
.end __glOdySpanUnpackFloatI

# Function: __glOdySpanShiftOffsetIndex
# Declared: Line 571 (Source lines: 573-584)
# Address: 0x0d9a8250 - 0x0d9a8758 (Size: 1288 bytes, Frame: 16)
.globl __glOdySpanShiftOffsetIndex
.ent __glOdySpanShiftOffsetIndex
__glOdySpanShiftOffsetIndex:
    # Line 577
    lwc1	$f1,316($a1)
    # Line 576
    lw	$t3,168($a1)
    # Line 573
    addiu	$sp,$sp,-16
    # Line 577
    sra	$at,$t3,0x1f
    # Line 573
    move	$t8,$a2
    # Line 577
    lwc1	$f0,332($a1)
    trunc.w.s	$f1,$f1
    xor	$t2,$t3,$at
    # Line 573
    move	$t9,$a3
    # Line 577
    subu	$t2,$t2,$at
    sra	$t3,$t3,0x2
    mfc1	$a5,$f1
    andi	$t2,$t2,0x3
    addiu	$a7,$t3,-1
    trunc.w.s	$f0,$f0
    xor	$t2,$t2,$at
    andi	$a1,$t3,0x3
    subu	$t2,$t2,$at
    mfc1	$a4,$f0
    bltz	$a5,.L0d9a84f8
    addiu	$a6,$t2,-1
    # Line 582
    move	$a3,$a2
    blez	$t3,.L0d9a8748
    sd	$a6,0($sp)
    andi	$t1,$t3,0x3
    move	$a2,$t9
    li	$t0,-1
    beqz	$t1,.L0d9a831c
    move	$a6,$zero
.L0d9a82c4:
    lw	$a0,0($a3)
    sllv	$a0,$a0,$a5
    addu	$a0,$a4,$a0
    sw	$a0,0($a2)
    lw	$v1,4($a3)
    sllv	$v1,$v1,$a5
    addu	$v1,$a4,$v1
    sw	$v1,4($a2)
    lw	$v0,8($a3)
    sllv	$v0,$v0,$a5
    addiu	$a3,$a3,16
    addu	$v0,$a4,$v0
    sw	$v0,8($a2)
    addiu	$a7,$a7,-1
    lw	$at,-4($a3)
    addiu	$a2,$a2,16
    addiu	$t1,$t1,-1
    addiu	$a6,$a6,4
    sllv	$at,$at,$a5
    addu	$at,$a4,$at
    bnez	$t1,.L0d9a82c4
    sw	$at,-4($a2)
.L0d9a831c:
    sra	$a1,$t3,0x2
    beqz	$a1,.L0d9a8444
    nop
    nop
    nop
.L0d9a8330:
    lw	$t3,0($a3)
    sllv	$t3,$t3,$a5
    addu	$t3,$a4,$t3
    sw	$t3,0($a2)
    lw	$t1,4($a3)
    sllv	$t1,$t1,$a5
    addu	$t1,$a4,$t1
    sw	$t1,4($a2)
    lw	$a1,8($a3)
    sllv	$a1,$a1,$a5
    addu	$a1,$a4,$a1
    sw	$a1,8($a2)
    lw	$a0,12($a3)
    sllv	$a0,$a0,$a5
    addu	$a0,$a4,$a0
    sw	$a0,12($a2)
    lw	$v1,16($a3)
    sllv	$v1,$v1,$a5
    addu	$v1,$a4,$v1
    sw	$v1,16($a2)
    lw	$v0,20($a3)
    sllv	$v0,$v0,$a5
    addu	$v0,$a4,$v0
    sw	$v0,20($a2)
    lw	$at,24($a3)
    sllv	$at,$at,$a5
    addu	$at,$a4,$at
    sw	$at,24($a2)
    lw	$t3,28($a3)
    sllv	$t3,$t3,$a5
    addu	$t3,$a4,$t3
    sw	$t3,28($a2)
    lw	$t1,32($a3)
    sllv	$t1,$t1,$a5
    addu	$t1,$a4,$t1
    sw	$t1,32($a2)
    lw	$a1,36($a3)
    sllv	$a1,$a1,$a5
    addu	$a1,$a4,$a1
    sw	$a1,36($a2)
    lw	$a0,40($a3)
    sllv	$a0,$a0,$a5
    addu	$a0,$a4,$a0
    sw	$a0,40($a2)
    lw	$v1,44($a3)
    sllv	$v1,$v1,$a5
    addu	$v1,$a4,$v1
    sw	$v1,44($a2)
    lw	$v0,48($a3)
    sllv	$v0,$v0,$a5
    addu	$v0,$a4,$v0
    sw	$v0,48($a2)
    lw	$at,52($a3)
    sllv	$at,$at,$a5
    addu	$at,$a4,$at
    sw	$at,52($a2)
    lw	$t3,56($a3)
    sllv	$t3,$t3,$a5
    addiu	$a3,$a3,64
    addu	$t3,$a4,$t3
    sw	$t3,56($a2)
    lw	$t1,-4($a3)
    addiu	$a2,$a2,64
    addiu	$a7,$a7,-4
    addiu	$a6,$a6,16
    sllv	$t1,$t1,$a5
    addu	$t1,$a4,$t1
    bne	$a7,$t0,.L0d9a8330
    sw	$t1,-4($a2)
.L0d9a8444:
    andi	$a7,$t2,0x3
    blez	$t2,.L0d9a84f0
    ld	$a1,0($sp)
    sll	$a3,$a6,0x2
    li	$t0,-1
    addu	$a2,$a3,$t9
    beqz	$a7,.L0d9a8488
    addu	$a3,$a3,$t8
.L0d9a8464:
    addiu	$a1,$a1,-1
    lw	$a6,0($a3)
    addiu	$a3,$a3,4
    addiu	$a7,$a7,-1
    addiu	$a2,$a2,4
    sllv	$a6,$a6,$a5
    addu	$a6,$a4,$a6
    bnez	$a7,.L0d9a8464
    sw	$a6,-4($a2)
.L0d9a8488:
    sra	$a7,$t2,0x2
    beqz	$a7,.L0d9a84f0
    nop
    nop
    nop
    nop
.L0d9a84a0:
    lw	$t8,0($a3)
    sllv	$t8,$t8,$a5
    addu	$t8,$a4,$t8
    sw	$t8,0($a2)
    lw	$t3,4($a3)
    sllv	$t3,$t3,$a5
    addu	$t3,$a4,$t3
    sw	$t3,4($a2)
    lw	$t2,8($a3)
    sllv	$t2,$t2,$a5
    addu	$t2,$a4,$t2
    sw	$t2,8($a2)
    lw	$t1,12($a3)
    addiu	$a3,$a3,16
    addiu	$a1,$a1,-4
    addiu	$a2,$a2,16
    sllv	$t1,$t1,$a5
    addu	$t1,$a4,$t1
    bne	$a1,$t0,.L0d9a84a0
    sw	$t1,-4($a2)
.L0d9a84f0:
    # Line 584
    jr	$ra
    addiu	$sp,$sp,16
.L0d9a84f8:
    # Line 580
    blez	$t3,.L0d9a8750
    sd	$a6,0($sp)
    move	$t1,$zero
    li	$t0,-1
    beqz	$a1,.L0d9a8568
    negu	$a6,$a5
.L0d9a8510:
    lw	$a0,0($a2)
    srlv	$a0,$a0,$a6
    addu	$a0,$a4,$a0
    sw	$a0,0($a3)
    lw	$v1,4($a2)
    srlv	$v1,$v1,$a6
    addu	$v1,$a4,$v1
    sw	$v1,4($a3)
    lw	$v0,8($a2)
    srlv	$v0,$v0,$a6
    addiu	$a2,$a2,16
    addu	$v0,$a4,$v0
    sw	$v0,8($a3)
    addiu	$a7,$a7,-1
    lw	$at,-4($a2)
    addiu	$a3,$a3,16
    addiu	$a1,$a1,-1
    addiu	$t1,$t1,4
    srlv	$at,$at,$a6
    addu	$at,$a4,$at
    bnez	$a1,.L0d9a8510
    sw	$at,-4($a3)
.L0d9a8568:
    sra	$a1,$t3,0x2
    beqz	$a1,.L0d9a8694
    nop
    nop
    nop
    nop
.L0d9a8580:
    lw	$v1,0($a2)
    srlv	$v1,$v1,$a6
    addu	$v1,$a4,$v1
    sw	$v1,0($a3)
    lw	$v0,4($a2)
    srlv	$v0,$v0,$a6
    addu	$v0,$a4,$v0
    sw	$v0,4($a3)
    lw	$at,8($a2)
    srlv	$at,$at,$a6
    addu	$at,$a4,$at
    sw	$at,8($a3)
    lw	$t3,12($a2)
    srlv	$t3,$t3,$a6
    addu	$t3,$a4,$t3
    sw	$t3,12($a3)
    lw	$a1,16($a2)
    srlv	$a1,$a1,$a6
    addu	$a1,$a4,$a1
    sw	$a1,16($a3)
    lw	$a0,20($a2)
    srlv	$a0,$a0,$a6
    addu	$a0,$a4,$a0
    sw	$a0,20($a3)
    lw	$v1,24($a2)
    srlv	$v1,$v1,$a6
    addu	$v1,$a4,$v1
    sw	$v1,24($a3)
    lw	$v0,28($a2)
    srlv	$v0,$v0,$a6
    addu	$v0,$a4,$v0
    sw	$v0,28($a3)
    lw	$at,32($a2)
    srlv	$at,$at,$a6
    addu	$at,$a4,$at
    sw	$at,32($a3)
    lw	$t3,36($a2)
    srlv	$t3,$t3,$a6
    addu	$t3,$a4,$t3
    sw	$t3,36($a3)
    lw	$a1,40($a2)
    srlv	$a1,$a1,$a6
    addu	$a1,$a4,$a1
    sw	$a1,40($a3)
    lw	$a0,44($a2)
    srlv	$a0,$a0,$a6
    addu	$a0,$a4,$a0
    sw	$a0,44($a3)
    lw	$v1,48($a2)
    srlv	$v1,$v1,$a6
    addu	$v1,$a4,$v1
    sw	$v1,48($a3)
    lw	$v0,52($a2)
    srlv	$v0,$v0,$a6
    addu	$v0,$a4,$v0
    sw	$v0,52($a3)
    lw	$at,56($a2)
    srlv	$at,$at,$a6
    addiu	$a2,$a2,64
    addu	$at,$a4,$at
    sw	$at,56($a3)
    lw	$t3,-4($a2)
    addiu	$a3,$a3,64
    addiu	$a7,$a7,-4
    addiu	$t1,$t1,16
    srlv	$t3,$t3,$a6
    addu	$t3,$a4,$t3
    bne	$a7,$t0,.L0d9a8580
    sw	$t3,-4($a3)
.L0d9a8694:
    li	$t0,-1
    blez	$t2,.L0d9a84f0
    ld	$a1,0($sp)
    negu	$a6,$a5
    sll	$a2,$t1,0x2
    andi	$a7,$t2,0x3
    addu	$a3,$a2,$t9
    beqz	$a7,.L0d9a86dc
    addu	$a2,$a2,$t8
.L0d9a86b8:
    addiu	$a1,$a1,-1
    lw	$a5,0($a2)
    addiu	$a2,$a2,4
    addiu	$a7,$a7,-1
    addiu	$a3,$a3,4
    srlv	$a5,$a5,$a6
    addu	$a5,$a4,$a5
    bnez	$a7,.L0d9a86b8
    sw	$a5,-4($a3)
.L0d9a86dc:
    sra	$a7,$t2,0x2
    beqz	$a7,.L0d9a84f0
    nop
    nop
    nop
.L0d9a86f0:
    lw	$t8,0($a2)
    srlv	$t8,$t8,$a6
    addu	$t8,$a4,$t8
    sw	$t8,0($a3)
    lw	$t3,4($a2)
    srlv	$t3,$t3,$a6
    addu	$t3,$a4,$t3
    sw	$t3,4($a3)
    lw	$t2,8($a2)
    srlv	$t2,$t2,$a6
    addu	$t2,$a4,$t2
    sw	$t2,8($a3)
    lw	$t1,12($a2)
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    addiu	$a3,$a3,16
    srlv	$t1,$t1,$a6
    addu	$t1,$a4,$t1
    bne	$a1,$t0,.L0d9a86f0
    sw	$t1,-4($a3)
    b	.L0d9a84f0
    nop
.L0d9a8748:
    b	.L0d9a8444
    # Line 582
    move	$a6,$zero
.L0d9a8750:
    b	.L0d9a8694
    # Line 580
    move	$t1,$zero
.end __glOdySpanShiftOffsetIndex

# Function: __glOdySpanScaleBiasComponent
# Declared: Line 587 (Source lines: 591-594)
# Address: 0x0d9a8760 - 0x0d9a88e4 (Size: 388 bytes, Frame: 0)
.globl __glOdySpanScaleBiasComponent
.ent __glOdySpanScaleBiasComponent
__glOdySpanScaleBiasComponent:
    # Line 591
    lbu	$v1,429($a1)
    lw	$at,168($a1)
    li	$a0,4
    li	$v0,1
    movz	$v0,$a0,$v1
    mult	$at,$v0
    mflo	$a5
    blez	$a5,.L0d9a88dc
    andi	$a6,$a5,0x3
    move	$a4,$zero
    beqz	$a6,.L0d9a87dc
    sra	$t0,$a5,0x2
.L0d9a8790:
    # Line 593
    sra	$t0,$a4,0x1f
    xor	$a7,$a4,$t0
    subu	$a7,$a7,$t0
    andi	$a7,$a7,0x3
    xor	$a7,$a7,$t0
    subu	$a7,$a7,$t0
    sll	$a7,$a7,0x2
    lwc1	$f2,0($a2)
    addu	$a7,$a1,$a7
    lwc1	$f1,316($a7)
    lwc1	$f0,332($a7)
    madd.s	$f0,$f0,$f1,$f2
    addiu	$a6,$a6,-1
    addiu	$a2,$a2,4
    addiu	$a3,$a3,4
    addiu	$a4,$a4,1
    bnez	$a6,.L0d9a8790
    swc1	$f0,-4($a3)
    sra	$t0,$a5,0x2
.L0d9a87dc:
    beqz	$t0,.L0d9a88dc
    nop
    nop
    nop
    nop
.L0d9a87f0:
    sra	$v1,$a4,0x1f
    xor	$v0,$a4,$v1
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x3
    xor	$v0,$v0,$v1
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    lwc1	$f14,0($a2)
    addu	$v0,$a1,$v0
    lwc1	$f13,316($v0)
    addiu	$t9,$a4,1
    sra	$at,$t9,0x1f
    lwc1	$f12,332($v0)
    xor	$t9,$t9,$at
    madd.s	$f12,$f12,$f13,$f14
    subu	$t9,$t9,$at
    andi	$t9,$t9,0x3
    xor	$t9,$t9,$at
    subu	$t9,$t9,$at
    sll	$t9,$t9,0x2
    swc1	$f12,0($a3)
    addu	$t9,$a1,$t9
    lwc1	$f11,4($a2)
    lwc1	$f10,316($t9)
    addiu	$t3,$a4,2
    sra	$t8,$t3,0x1f
    lwc1	$f9,332($t9)
    xor	$t3,$t3,$t8
    madd.s	$f9,$f9,$f10,$f11
    subu	$t3,$t3,$t8
    andi	$t3,$t3,0x3
    xor	$t3,$t3,$t8
    subu	$t3,$t3,$t8
    sll	$t3,$t3,0x2
    swc1	$f9,4($a3)
    addu	$t3,$a1,$t3
    lwc1	$f8,8($a2)
    lwc1	$f7,316($t3)
    addiu	$t1,$a4,3
    sra	$t2,$t1,0x1f
    lwc1	$f6,332($t3)
    xor	$t1,$t1,$t2
    madd.s	$f6,$f6,$f7,$f8
    subu	$t1,$t1,$t2
    andi	$t1,$t1,0x3
    xor	$t1,$t1,$t2
    subu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    swc1	$f6,8($a3)
    addu	$t1,$a1,$t1
    lwc1	$f5,12($a2)
    lwc1	$f4,316($t1)
    lwc1	$f3,332($t1)
    madd.s	$f3,$f3,$f4,$f5
    addiu	$a4,$a4,4
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    bne	$a5,$a4,.L0d9a87f0
    swc1	$f3,-4($a3)
.L0d9a88dc:
    # Line 594
    jr	$ra
    nop
.end __glOdySpanScaleBiasComponent

# Function: __glOdySpanMapStencil
# Declared: Line 597 (Source lines: 599-605)
# Address: 0x0d9a88f0 - 0x0d9a8b38 (Size: 584 bytes, Frame: 0)
.globl __glOdySpanMapStencil
.ent __glOdySpanMapStencil
__glOdySpanMapStencil:
    # Line 601
    lw	$t8,168($a1)
    # Line 602
    lw	$a5,308($a1)
    # Line 599
    move	$t2,$a2
    move	$t1,$a3
    # Line 604
    move	$a6,$zero
    # Line 603
    lw	$a4,0($a5)
    # Line 604
    sra	$t3,$t8,0x2
    move	$a1,$a3
    addiu	$a7,$t3,-1
    # Line 602
    lw	$a5,8($a5)
    # Line 604
    blez	$t3,.L0d9a8a84
    # Line 603
    addiu	$a4,$a4,-1
    sra	$a0,$t3,0x1
    andi	$t0,$t3,0x1
    # Line 604
    move	$a6,$zero
    beqz	$t0,.L0d9a89a4
    li	$t0,-1
    lw	$v1,0($t2)
    and	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v1,$a5,$v1
    lw	$v1,0($v1)
    sw	$v1,0($a3)
    lw	$v0,4($t2)
    and	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$v0,$a5,$v0
    lw	$v0,0($v0)
    sw	$v0,4($a3)
    lw	$at,8($t2)
    and	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$at,$a5,$at
    lw	$at,0($at)
    sw	$at,8($a3)
    lw	$t9,12($t2)
    and	$t9,$t9,$a4
    sll	$t9,$t9,0x2
    addu	$t9,$a5,$t9
    addiu	$a7,$t3,-2
    addiu	$a2,$t2,16
    lw	$t9,0($t9)
    addiu	$a1,$a3,16
    li	$a6,4
    sw	$t9,12($a3)
.L0d9a89a4:
    beqz	$a0,.L0d9a8a84
    nop
    nop
.L0d9a89b0:
    lw	$a3,0($a2)
    and	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a5,$a3
    lw	$a3,0($a3)
    sw	$a3,0($a1)
    lw	$a0,4($a2)
    and	$a0,$a0,$a4
    sll	$a0,$a0,0x2
    addu	$a0,$a5,$a0
    lw	$a0,0($a0)
    sw	$a0,4($a1)
    lw	$v1,8($a2)
    and	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v1,$a5,$v1
    lw	$v1,0($v1)
    sw	$v1,8($a1)
    lw	$v0,12($a2)
    and	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$v0,$a5,$v0
    lw	$v0,0($v0)
    sw	$v0,12($a1)
    lw	$at,16($a2)
    and	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$at,$a5,$at
    lw	$at,0($at)
    sw	$at,16($a1)
    lw	$t9,20($a2)
    and	$t9,$t9,$a4
    sll	$t9,$t9,0x2
    addu	$t9,$a5,$t9
    lw	$t9,0($t9)
    sw	$t9,20($a1)
    lw	$t3,24($a2)
    and	$t3,$t3,$a4
    sll	$t3,$t3,0x2
    addu	$t3,$a5,$t3
    lw	$t3,0($t3)
    sw	$t3,24($a1)
    lw	$a3,28($a2)
    and	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addiu	$a7,$a7,-2
    addu	$a3,$a5,$a3
    addiu	$a2,$a2,32
    addiu	$a1,$a1,32
    lw	$a3,0($a3)
    addiu	$a6,$a6,8
    bne	$a7,$t0,.L0d9a89b0
    sw	$a3,-4($a1)
.L0d9a8a84:
    sra	$t0,$t8,0x1f
    xor	$a7,$t8,$t0
    subu	$a7,$a7,$t0
    sll	$a2,$a6,0x2
    andi	$a7,$a7,0x3
    addu	$a1,$a2,$t1
    xor	$a7,$a7,$t0
    addu	$a2,$a2,$t2
    subu	$a7,$a7,$t0
    li	$t0,-1
    andi	$t3,$a7,0x1
    blez	$a7,.L0d9a8b30
    addiu	$a3,$a7,-1
    beqz	$t3,.L0d9a8ae8
    sra	$t9,$a7,0x1
    lw	$t8,0($a2)
    and	$t8,$t8,$a4
    sll	$t8,$t8,0x2
    addu	$t8,$a5,$t8
    addiu	$a1,$a1,4
    lw	$t8,0($t8)
    addiu	$a3,$a7,-2
    addiu	$a2,$a2,4
    sw	$t8,-4($a1)
    sra	$t9,$a7,0x1
.L0d9a8ae8:
    beqz	$t9,.L0d9a8b30
    nop
.L0d9a8af0:
    lw	$v0,0($a2)
    and	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$v0,$a5,$v0
    lw	$v0,0($v0)
    sw	$v0,0($a1)
    lw	$at,4($a2)
    and	$at,$at,$a4
    sll	$at,$at,0x2
    addiu	$a3,$a3,-2
    addu	$at,$a5,$at
    addiu	$a1,$a1,8
    lw	$at,0($at)
    addiu	$a2,$a2,8
    bne	$a3,$t0,.L0d9a8af0
    sw	$at,-4($a1)
.L0d9a8b30:
    # Line 605
    jr	$ra
    nop
.end __glOdySpanMapStencil

# Function: __glOdySpanClampComponent
# Declared: Line 608 (Source lines: 610-613)
# Address: 0x0d9a8b40 - 0x0d9a8d88 (Size: 584 bytes, Frame: 0)
.globl __glOdySpanClampComponent
.ent __glOdySpanClampComponent
__glOdySpanClampComponent:
    # Line 611
    lbu	$a4,429($a1)
    lw	$v1,168($a1)
    li	$a5,4
    li	$a0,1
    movz	$a0,$a5,$a4
    mult	$v1,$a0
    # Line 612
    move	$a6,$zero
    # Line 610
    lui	$v0,0x15
    addiu	$v0,$v0,-1456
    # Line 611
    mflo	$t1
    # Line 612
    move	$a4,$a2
    sra	$t2,$t1,0x2
    move	$a5,$a3
    # Line 610
    addu	$at,$t9,$v0
    # Line 612
    blez	$t2,.L0d9a8d6c
    addiu	$a7,$t2,-1
    mtc1	$zero,$f4
    li	$t0,-1
    dmtc1	$zero,$f5
    ldc1	$f6,_lit8_3ff0000000000000
    b	.L0d9a8d74
    move	$a6,$zero
    nop
    nop
.L0d9a8ba0:
    cvt.d.s	$f0,$f8
    mov.d	$f7,$f6
    c.lt.d	$f6,$f0
    movf.d	$f7,$f0,$fcc0
.L0d9a8bb0:
    cvt.s.d	$f1,$f7
    mov.d	$f8,$f6
    beq	$a7,$t0,.L0d9a8c64
    swc1	$f1,-4($a5)
    lwc1	$f7,0($a4)
.L0d9a8bc4:
    c.lt.s $f7,$f4
    addiu	$a7,$a7,-1
    bc1f .L0d9a8bdc
    addiu	$a6,$a6,4
    b	.L0d9a8be8
    mov.d	$f8,$f5
.L0d9a8bdc:
    cvt.d.s	$f2,$f7
    c.lt.d $f6,$f2
    movf.d	$f8,$f2,$fcc2
.L0d9a8be8:
    cvt.s.d	$f3,$f8
    swc1	$f3,0($a5)
    lwc1	$f9,4($a4)
    c.lt.s $f9,$f4
    bc1f .L0d9a8c08
    mov.d	$f7,$f6
    b	.L0d9a8c14
    mov.d	$f7,$f5
.L0d9a8c08:
    cvt.d.s	$f8,$f9
    c.lt.d $f6,$f8
    movf.d	$f7,$f8,$fcc4
.L0d9a8c14:
    cvt.s.d	$f9,$f7
    swc1	$f9,4($a5)
    lwc1	$f8,8($a4)
    c.lt.s $f8,$f4
    bc1t .L0d9a8c3c
    mov.d	$f7,$f5
    cvt.d.s	$f10,$f8
    mov.d	$f7,$f6
    c.lt.d $f6,$f10
    movf.d	$f7,$f10,$fcc6
.L0d9a8c3c:
    cvt.s.d	$f11,$f7
    swc1	$f11,8($a5)
    lwc1	$f8,12($a4)
    c.lt.s $f8,$f4
    addiu	$a5,$a5,16
    addiu	$a4,$a4,16
    bc1f .L0d9a8ba0
    mov.d	$f7,$f5
    b	.L0d9a8bb0
    nop
.L0d9a8c64:
    sra	$t3,$t1,0x1f
.L0d9a8c68:
    dmtc1	$zero,$f5
    xor	$t2,$t1,$t3
    li	$t0,-1
    subu	$t2,$t2,$t3
    mtc1	$zero,$f4
    andi	$t2,$t2,0x3
    sll	$a4,$a6,0x2
    ldc1	$f6,_lit8_3ff0000000000000
    xor	$t2,$t2,$t3
    addu	$a5,$a4,$a3
    subu	$t2,$t2,$t3
    addu	$a4,$a4,$a2
    andi	$t1,$t2,0x1
    mov.d	$f8,$f6
    blez	$t2,.L0d9a8cf0
    addiu	$a7,$t2,-1
    beqz	$t1,.L0d9a8ce8
    sra	$t3,$t2,0x1
    lwc1	$f7,0($a4)
    c.lt.s	$f7,$f4
    addiu	$a5,$a5,4
    addiu	$a7,$a7,-1
    bc1f	.L0d9a8cd0
    addiu	$a4,$a4,4
    b	.L0d9a8cdc
    mov.d	$f8,$f5
.L0d9a8cd0:
    cvt.d.s	$f12,$f7
    c.lt.d $f6,$f12
    movf.d	$f8,$f12,$fcc1
.L0d9a8cdc:
    cvt.s.d	$f13,$f8
    swc1	$f13,-4($a5)
    sra	$t3,$t2,0x1
.L0d9a8ce8:
    bnez	$t3,.L0d9a8d80
    mov.d	$f8,$f6
.L0d9a8cf0:
    # Line 613
    jr	$ra
    nop
    nop
    nop
.L0d9a8d00:
    # Line 612
    cvt.d.s	$f14,$f7
    mov.d	$f8,$f6
    c.lt.d $f6,$f14
    movf.d	$f8,$f14,$fcc2
.L0d9a8d10:
    cvt.s.d	$f15,$f8
    mov.d	$f8,$f6
    beq	$a7,$t0,.L0d9a8cf0
    swc1	$f15,-4($a5)
    lwc1	$f7,0($a4)
.L0d9a8d24:
    c.lt.s $f7,$f4
    bc1f .L0d9a8d38
    addiu	$a7,$a7,-2
    b	.L0d9a8d44
    mov.d	$f8,$f5
.L0d9a8d38:
    cvt.d.s	$f16,$f7
    c.lt.d $f6,$f16
    movf.d	$f8,$f16,$fcc4
.L0d9a8d44:
    cvt.s.d	$f17,$f8
    swc1	$f17,0($a5)
    lwc1	$f7,4($a4)
    c.lt.s $f7,$f4
    addiu	$a5,$a5,8
    addiu	$a4,$a4,8
    bc1f .L0d9a8d00
    mov.d	$f8,$f5
    b	.L0d9a8d10
    nop
.L0d9a8d6c:
    b	.L0d9a8c68
    sra	$t3,$t1,0x1f
.L0d9a8d74:
    mov.d	$f8,$f6
    b	.L0d9a8bc4
    lwc1	$f7,0($a4)
.L0d9a8d80:
    b	.L0d9a8d24
    lwc1	$f7,0($a4)
.end __glOdySpanClampComponent

# Function: __glOdySpanPackPioStencil
# Declared: Line 616 (Source lines: 618-623)
# Address: 0x0d9a8d90 - 0x0d9a8e00 (Size: 112 bytes, Frame: 48)
.globl __glOdySpanPackPioStencil
.ent __glOdySpanPackPioStencil
__glOdySpanPackPioStencil:
    # Line 618
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    # Line 619
    lwc1	$f2,332($a1)
    # Line 618
    sd	$s8,24($sp)
    # Line 619
    sdc1	$f2,8($sp)
    # Line 618
    sdc1	$f30,0($sp)
    lui	$at,0x15
    # Line 619
    lwc1	$f30,316($a1)
    # Line 618
    addiu	$at,$at,-2048
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 620
    mtc1	$zero,$f1
    # Line 621
    # lw $t9, -31336($gp) # &__glOdySpanShiftOffsetIndex
    # Line 620
    lwc1	$f0,_lit_41800000
    swc1	$f1,332($a1)
    # Line 621
    nop
    # Line 618
    move	$s8,$a1
    # Line 621
    bal __glOdySpanShiftOffsetIndex
    # Line 620
    swc1	$f0,316($a1)
    # Line 623
    ld	$gp,32($sp)
    # Line 622
    swc1	$f30,316($s8)
    ldc1	$f3,8($sp)
    ld	$ra,16($sp)
    # Line 623
    ldc1	$f30,0($sp)
    # Line 622
    swc1	$f3,332($s8)
    # Line 623
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdySpanPackPioStencil

# Function: __glOdySpanPackUbyte
# Declared: Line 626 (Source lines: 628-631)
# Address: 0x0d9a8e00 - 0x0d9a90e8 (Size: 744 bytes, Frame: 0)
.globl __glOdySpanPackUbyte
.ent __glOdySpanPackUbyte
__glOdySpanPackUbyte:
    # Line 629
    lw	$a0,168($a1)
    lw	$v1,112($a1)
    mult	$v1,$a0
    # Line 628
    move	$t1,$a2
    lui	$v0,0x15
    # Line 629
    mflo	$t3
    # Line 628
    addiu	$v0,$v0,-2160
    # Line 630
    sra	$t2,$t3,0x2
    move	$a4,$zero
    # Line 628
    addu	$at,$t9,$v0
    # Line 630
    blez	$t2,.L0d9a8fd4
    addiu	$a6,$t2,-1
    li	$t0,-1
    andi	$a1,$t2,0x1
    move	$a5,$a2
    lwc1	$f4,_lit_437f0000
    move	$a7,$a3
    ldc1	$f5,_lit8_3fe0000000000000
    beqz	$a1,.L0d9a8ed0
    move	$a4,$zero
    lwc1	$f3,0($a2)
    mul.s	$f3,$f4,$f3
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f5
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    sb	$a6,0($a3)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f4,$f2
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f5
    trunc.w.d	$f2,$f2
    mfc1	$a5,$f2
    sb	$a5,1($a3)
    lwc1	$f1,8($a2)
    mul.s	$f1,$f4,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f5
    trunc.w.d	$f1,$f1
    mfc1	$a4,$f1
    sb	$a4,2($a3)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f4,$f0
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f5
    trunc.w.d	$f0,$f0
    addiu	$a7,$a3,4
    addiu	$a5,$a2,16
    mfc1	$a2,$f0
    addiu	$a6,$t2,-2
    li	$a4,4
    sb	$a2,3($a3)
.L0d9a8ed0:
    sra	$t8,$t2,0x1
    beqz	$t8,.L0d9a8fd4
    nop
    nop
.L0d9a8ee0:
    lwc1	$f13,0($a5)
    mul.s	$f13,$f4,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f5
    trunc.w.d	$f13,$f13
    mfc1	$t8,$f13
    sb	$t8,0($a7)
    lwc1	$f12,4($a5)
    mul.s	$f12,$f4,$f12
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f5
    trunc.w.d	$f12,$f12
    mfc1	$t2,$f12
    sb	$t2,1($a7)
    lwc1	$f11,8($a5)
    mul.s	$f11,$f4,$f11
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f5
    trunc.w.d	$f11,$f11
    mfc1	$a2,$f11
    sb	$a2,2($a7)
    lwc1	$f10,12($a5)
    mul.s	$f10,$f4,$f10
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f5
    trunc.w.d	$f10,$f10
    mfc1	$a1,$f10
    sb	$a1,3($a7)
    lwc1	$f9,16($a5)
    mul.s	$f9,$f4,$f9
    cvt.d.s	$f9,$f9
    add.d	$f9,$f9,$f5
    trunc.w.d	$f9,$f9
    mfc1	$a0,$f9
    sb	$a0,4($a7)
    lwc1	$f8,20($a5)
    mul.s	$f8,$f4,$f8
    cvt.d.s	$f8,$f8
    add.d	$f8,$f8,$f5
    trunc.w.d	$f8,$f8
    mfc1	$v1,$f8
    sb	$v1,5($a7)
    lwc1	$f7,24($a5)
    mul.s	$f7,$f4,$f7
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f5
    trunc.w.d	$f7,$f7
    mfc1	$v0,$f7
    sb	$v0,6($a7)
    lwc1	$f6,28($a5)
    mul.s	$f6,$f4,$f6
    cvt.d.s	$f6,$f6
    add.d	$f6,$f6,$f5
    trunc.w.d	$f6,$f6
    addiu	$a6,$a6,-2
    addiu	$a5,$a5,32
    addiu	$a7,$a7,8
    mfc1	$t9,$f6
    addiu	$a4,$a4,8
    bne	$a6,$t0,.L0d9a8ee0
    sb	$t9,-1($a7)
.L0d9a8fd4:
    sra	$t8,$t3,0x1f
    xor	$t2,$t3,$t8
    subu	$t2,$t2,$t8
    li	$t0,-1
    andi	$t2,$t2,0x3
    addu	$a7,$a4,$a3
    xor	$t2,$t2,$t8
    sll	$a5,$a4,0x2
    subu	$t2,$t2,$t8
    ldc1	$f5,_lit8_3fe0000000000000
    addu	$a5,$a5,$t1
    andi	$a6,$t2,0x3
    lwc1	$f4,_lit_437f0000
    blez	$t2,.L0d9a90e0
    addiu	$a2,$t2,-1
    beqz	$a6,.L0d9a904c
    sra	$t3,$t2,0x2
.L0d9a9018:
    lwc1	$f14,0($a5)
    mul.s	$f14,$f4,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f5
    trunc.w.d	$f14,$f14
    addiu	$a6,$a6,-1
    addiu	$a2,$a2,-1
    addiu	$a7,$a7,1
    mfc1	$t1,$f14
    addiu	$a5,$a5,4
    bnez	$a6,.L0d9a9018
    sb	$t1,-1($a7)
    sra	$t3,$t2,0x2
.L0d9a904c:
    beqz	$t3,.L0d9a90e0
    nop
    nop
    nop
    nop
.L0d9a9060:
    lwc1	$f18,0($a5)
    mul.s	$f18,$f4,$f18
    cvt.d.s	$f18,$f18
    add.d	$f18,$f18,$f5
    trunc.w.d	$f18,$f18
    mfc1	$v1,$f18
    sb	$v1,0($a7)
    lwc1	$f17,4($a5)
    mul.s	$f17,$f4,$f17
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f5
    trunc.w.d	$f17,$f17
    mfc1	$v0,$f17
    sb	$v0,1($a7)
    lwc1	$f16,8($a5)
    mul.s	$f16,$f4,$f16
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f5
    trunc.w.d	$f16,$f16
    mfc1	$t9,$f16
    sb	$t9,2($a7)
    lwc1	$f15,12($a5)
    mul.s	$f15,$f4,$f15
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f5
    trunc.w.d	$f15,$f15
    addiu	$a2,$a2,-4
    addiu	$a7,$a7,4
    mfc1	$t8,$f15
    addiu	$a5,$a5,16
    bne	$a2,$t0,.L0d9a9060
    sb	$t8,-1($a7)
.L0d9a90e0:
    # Line 631
    jr	$ra
    nop
.end __glOdySpanPackUbyte

# Function: __glOdySpanPackUbyteI
# Declared: Line 634 (Source lines: 636-641)
# Address: 0x0d9a90f0 - 0x0d9a9318 (Size: 552 bytes, Frame: 0)
.globl __glOdySpanPackUbyteI
.ent __glOdySpanPackUbyteI
__glOdySpanPackUbyteI:
    # Line 636
    move	$t0,$a2
    move	$t1,$a3
    # Line 638
    lw	$t2,168($a1)
    # Line 639
    lw	$at,84($a1)
    # Line 640
    move	$a1,$zero
    # Line 639
    li	$v0,255
    li	$a4,127
    # Line 640
    sra	$t3,$t2,0x2
    addiu	$a5,$t3,-1
    # Line 639
    xori	$at,$at,0x1400
    sltiu	$at,$at,1
    # Line 640
    blez	$t3,.L0d9a9264
    # Line 639
    movz	$a4,$v0,$at
    andi	$a7,$t3,0x3
    # Line 640
    li	$a6,-1
    sra	$t9,$t3,0x2
    beqz	$a7,.L0d9a9180
    move	$a1,$zero
.L0d9a9138:
    lw	$t8,0($a2)
    and	$t8,$t8,$a4
    sb	$t8,0($a3)
    lw	$a0,4($a2)
    and	$a0,$a0,$a4
    sb	$a0,1($a3)
    lw	$v1,8($a2)
    addiu	$a2,$a2,16
    and	$v1,$v1,$a4
    sb	$v1,2($a3)
    addiu	$a5,$a5,-1
    addiu	$a7,$a7,-1
    lw	$v0,-4($a2)
    addiu	$a3,$a3,4
    addiu	$a1,$a1,4
    and	$v0,$v0,$a4
    bnez	$a7,.L0d9a9138
    sb	$v0,-1($a3)
.L0d9a9180:
    beqz	$t9,.L0d9a9264
    nop
    nop
    nop
.L0d9a9190:
    lw	$t9,0($a2)
    and	$t9,$t9,$a4
    sb	$t9,0($a3)
    lw	$t8,4($a2)
    and	$t8,$t8,$a4
    sb	$t8,1($a3)
    lw	$t3,8($a2)
    and	$t3,$t3,$a4
    sb	$t3,2($a3)
    lw	$a7,12($a2)
    and	$a7,$a7,$a4
    sb	$a7,3($a3)
    lw	$a0,16($a2)
    and	$a0,$a0,$a4
    sb	$a0,4($a3)
    lw	$v1,20($a2)
    and	$v1,$v1,$a4
    sb	$v1,5($a3)
    lw	$v0,24($a2)
    and	$v0,$v0,$a4
    sb	$v0,6($a3)
    lw	$at,28($a2)
    and	$at,$at,$a4
    sb	$at,7($a3)
    lw	$t9,32($a2)
    and	$t9,$t9,$a4
    sb	$t9,8($a3)
    lw	$t8,36($a2)
    and	$t8,$t8,$a4
    sb	$t8,9($a3)
    lw	$t3,40($a2)
    and	$t3,$t3,$a4
    sb	$t3,10($a3)
    lw	$a7,44($a2)
    and	$a7,$a7,$a4
    sb	$a7,11($a3)
    lw	$a0,48($a2)
    and	$a0,$a0,$a4
    sb	$a0,12($a3)
    lw	$v1,52($a2)
    and	$v1,$v1,$a4
    sb	$v1,13($a3)
    lw	$v0,56($a2)
    addiu	$a2,$a2,64
    and	$v0,$v0,$a4
    sb	$v0,14($a3)
    addiu	$a5,$a5,-4
    lw	$at,-4($a2)
    addiu	$a3,$a3,16
    addiu	$a1,$a1,16
    and	$at,$at,$a4
    bne	$a5,$a6,.L0d9a9190
    sb	$at,-1($a3)
.L0d9a9264:
    sra	$t8,$t2,0x1f
    xor	$t3,$t2,$t8
    subu	$t3,$t3,$t8
    li	$a6,-1
    andi	$t3,$t3,0x3
    addu	$a3,$a1,$t1
    xor	$t3,$t3,$t8
    sll	$a2,$a1,0x2
    subu	$t3,$t3,$t8
    addu	$a2,$a2,$t0
    andi	$a7,$t3,0x3
    blez	$t3,.L0d9a9310
    addiu	$a5,$t3,-1
    beqz	$a7,.L0d9a92c0
    sra	$t1,$t3,0x2
.L0d9a92a0:
    addiu	$a5,$a5,-1
    addiu	$a7,$a7,-1
    lw	$t0,0($a2)
    addiu	$a2,$a2,4
    addiu	$a3,$a3,1
    and	$t0,$t0,$a4
    bnez	$a7,.L0d9a92a0
    sb	$t0,-1($a3)
.L0d9a92c0:
    beqz	$t1,.L0d9a9310
    move	$a1,$a5
    nop
    nop
.L0d9a92d0:
    lw	$t9,0($a2)
    and	$t9,$t9,$a4
    sb	$t9,0($a3)
    lw	$t8,4($a2)
    and	$t8,$t8,$a4
    sb	$t8,1($a3)
    lw	$t3,8($a2)
    and	$t3,$t3,$a4
    sb	$t3,2($a3)
    addiu	$a1,$a1,-4
    lw	$t2,12($a2)
    addiu	$a2,$a2,16
    addiu	$a3,$a3,4
    and	$t2,$t2,$a4
    bne	$a1,$a6,.L0d9a92d0
    sb	$t2,-1($a3)
.L0d9a9310:
    # Line 641
    jr	$ra
    nop
.end __glOdySpanPackUbyteI

# Function: __glOdySpanPackByte
# Declared: Line 644 (Source lines: 646-649)
# Address: 0x0d9a9320 - 0x0d9a9648 (Size: 808 bytes, Frame: 0)
.globl __glOdySpanPackByte
.ent __glOdySpanPackByte
__glOdySpanPackByte:
    # Line 647
    lw	$a0,168($a1)
    lw	$v1,112($a1)
    mult	$v1,$a0
    # Line 646
    move	$t1,$a2
    lui	$v0,0x15
    # Line 647
    mflo	$t2
    # Line 646
    addiu	$v0,$v0,-3472
    # Line 648
    sra	$t3,$t2,0x2
    move	$a4,$zero
    # Line 646
    addu	$at,$t9,$v0
    # Line 648
    blez	$t3,.L0d9a9524
    addiu	$a7,$t3,-1
    li	$t0,-1
    lwc1	$f4,_lit_437f0000
    andi	$a1,$t3,0x1
    move	$a6,$a2
    ldc1	$f5,_lit8_bff0000000000000
    move	$a5,$a3
    ldc1	$f6,_lit8_3fe0000000000000
    beqz	$a1,.L0d9a9404
    move	$a4,$zero
    lwc1	$f3,0($a2)
    mul.s	$f3,$f4,$f3
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f5
    madd.d	$f3,$f6,$f6,$f3
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    sb	$a6,0($a3)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f4,$f2
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f5
    madd.d	$f2,$f6,$f6,$f2
    trunc.w.d	$f2,$f2
    mfc1	$a5,$f2
    sb	$a5,1($a3)
    lwc1	$f1,8($a2)
    mul.s	$f1,$f4,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f5
    madd.d	$f1,$f6,$f6,$f1
    trunc.w.d	$f1,$f1
    mfc1	$a4,$f1
    sb	$a4,2($a3)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f4,$f0
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f5
    madd.d	$f0,$f6,$f6,$f0
    trunc.w.d	$f0,$f0
    addiu	$a7,$t3,-2
    addiu	$a6,$a2,16
    mfc1	$a2,$f0
    addiu	$a5,$a3,4
    li	$a4,4
    sb	$a2,3($a3)
.L0d9a9404:
    sra	$t8,$t3,0x1
    beqz	$t8,.L0d9a9524
    nop
.L0d9a9410:
    lwc1	$f14,0($a6)
    mul.s	$f14,$f4,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f5
    madd.d	$f14,$f6,$f6,$f14
    trunc.w.d	$f14,$f14
    mfc1	$t8,$f14
    sb	$t8,0($a5)
    lwc1	$f13,4($a6)
    mul.s	$f13,$f4,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f5
    madd.d	$f13,$f6,$f6,$f13
    trunc.w.d	$f13,$f13
    mfc1	$t3,$f13
    sb	$t3,1($a5)
    lwc1	$f12,8($a6)
    mul.s	$f12,$f4,$f12
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f5
    madd.d	$f12,$f6,$f6,$f12
    trunc.w.d	$f12,$f12
    mfc1	$a2,$f12
    sb	$a2,2($a5)
    lwc1	$f11,12($a6)
    mul.s	$f11,$f4,$f11
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f5
    madd.d	$f11,$f6,$f6,$f11
    trunc.w.d	$f11,$f11
    mfc1	$a1,$f11
    sb	$a1,3($a5)
    lwc1	$f10,16($a6)
    mul.s	$f10,$f4,$f10
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f5
    madd.d	$f10,$f6,$f6,$f10
    trunc.w.d	$f10,$f10
    mfc1	$a0,$f10
    sb	$a0,4($a5)
    lwc1	$f9,20($a6)
    mul.s	$f9,$f4,$f9
    cvt.d.s	$f9,$f9
    add.d	$f9,$f9,$f5
    madd.d	$f9,$f6,$f6,$f9
    trunc.w.d	$f9,$f9
    mfc1	$v1,$f9
    sb	$v1,5($a5)
    lwc1	$f8,24($a6)
    mul.s	$f8,$f4,$f8
    cvt.d.s	$f8,$f8
    add.d	$f8,$f8,$f5
    madd.d	$f8,$f6,$f6,$f8
    trunc.w.d	$f8,$f8
    mfc1	$v0,$f8
    sb	$v0,6($a5)
    lwc1	$f7,28($a6)
    mul.s	$f7,$f4,$f7
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f5
    madd.d	$f7,$f6,$f6,$f7
    trunc.w.d	$f7,$f7
    addiu	$a7,$a7,-2
    addiu	$a6,$a6,32
    addiu	$a5,$a5,8
    mfc1	$t9,$f7
    addiu	$a4,$a4,8
    bne	$a7,$t0,.L0d9a9410
    sb	$t9,-1($a5)
.L0d9a9524:
    sra	$t8,$t2,0x1f
    xor	$t3,$t2,$t8
    subu	$t3,$t3,$t8
    li	$t0,-1
    andi	$t3,$t3,0x3
    addu	$a5,$a4,$a3
    xor	$t3,$t3,$t8
    ldc1	$f6,_lit8_3fe0000000000000
    sll	$a6,$a4,0x2
    subu	$t3,$t3,$t8
    ldc1	$f5,_lit8_bff0000000000000
    addu	$a6,$a6,$t1
    andi	$a7,$t3,0x3
    lwc1	$f4,_lit_437f0000
    blez	$t3,.L0d9a9640
    addiu	$a2,$t3,-1
    beqz	$a7,.L0d9a95a4
    sra	$t2,$t3,0x2
.L0d9a956c:
    lwc1	$f15,0($a6)
    mul.s	$f15,$f4,$f15
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f5
    madd.d	$f15,$f6,$f6,$f15
    trunc.w.d	$f15,$f15
    addiu	$a7,$a7,-1
    addiu	$a2,$a2,-1
    addiu	$a5,$a5,1
    mfc1	$t1,$f15
    addiu	$a6,$a6,4
    bnez	$a7,.L0d9a956c
    sb	$t1,-1($a5)
    sra	$t2,$t3,0x2
.L0d9a95a4:
    beqz	$t2,.L0d9a9640
    nop
    nop
.L0d9a95b0:
    lwc1	$f19,0($a6)
    mul.s	$f19,$f4,$f19
    cvt.d.s	$f19,$f19
    add.d	$f19,$f19,$f5
    madd.d	$f19,$f6,$f6,$f19
    trunc.w.d	$f19,$f19
    mfc1	$v0,$f19
    sb	$v0,0($a5)
    lwc1	$f18,4($a6)
    mul.s	$f18,$f4,$f18
    cvt.d.s	$f18,$f18
    add.d	$f18,$f18,$f5
    madd.d	$f18,$f6,$f6,$f18
    trunc.w.d	$f18,$f18
    mfc1	$t9,$f18
    sb	$t9,1($a5)
    lwc1	$f17,8($a6)
    mul.s	$f17,$f4,$f17
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f5
    madd.d	$f17,$f6,$f6,$f17
    trunc.w.d	$f17,$f17
    mfc1	$t8,$f17
    sb	$t8,2($a5)
    lwc1	$f16,12($a6)
    mul.s	$f16,$f4,$f16
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f5
    madd.d	$f16,$f6,$f6,$f16
    trunc.w.d	$f16,$f16
    addiu	$a2,$a2,-4
    addiu	$a5,$a5,4
    mfc1	$t3,$f16
    addiu	$a6,$a6,16
    bne	$a2,$t0,.L0d9a95b0
    sb	$t3,-1($a5)
.L0d9a9640:
    # Line 649
    jr	$ra
    nop
.end __glOdySpanPackByte

# Function: __glOdySpanPackUshort
# Declared: Line 652 (Source lines: 654-657)
# Address: 0x0d9a9650 - 0x0d9a9938 (Size: 744 bytes, Frame: 0)
.globl __glOdySpanPackUshort
.ent __glOdySpanPackUshort
__glOdySpanPackUshort:
    # Line 655
    lw	$a0,168($a1)
    lw	$v1,112($a1)
    mult	$v1,$a0
    # Line 654
    move	$t1,$a2
    lui	$v0,0x15
    # Line 655
    mflo	$t3
    # Line 654
    addiu	$v0,$v0,-4288
    # Line 656
    sra	$t2,$t3,0x2
    move	$a4,$zero
    # Line 654
    addu	$at,$t9,$v0
    # Line 656
    blez	$t2,.L0d9a9824
    addiu	$a6,$t2,-1
    li	$t0,-1
    andi	$a1,$t2,0x1
    move	$a7,$a3
    lwc1	$f4,_lit_477fff00
    move	$a5,$a2
    ldc1	$f5,_lit8_3fe0000000000000
    beqz	$a1,.L0d9a9720
    move	$a4,$zero
    lwc1	$f3,0($a2)
    mul.s	$f3,$f4,$f3
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f5
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    sh	$a6,0($a3)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f4,$f2
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f5
    trunc.w.d	$f2,$f2
    mfc1	$a5,$f2
    sh	$a5,2($a3)
    lwc1	$f1,8($a2)
    mul.s	$f1,$f4,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f5
    trunc.w.d	$f1,$f1
    mfc1	$a4,$f1
    sh	$a4,4($a3)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f4,$f0
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f5
    trunc.w.d	$f0,$f0
    addiu	$a7,$a3,8
    addiu	$a5,$a2,16
    mfc1	$a2,$f0
    addiu	$a6,$t2,-2
    li	$a4,4
    sh	$a2,6($a3)
.L0d9a9720:
    sra	$t8,$t2,0x1
    beqz	$t8,.L0d9a9824
    nop
    nop
.L0d9a9730:
    lwc1	$f13,0($a5)
    mul.s	$f13,$f4,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f5
    trunc.w.d	$f13,$f13
    mfc1	$t8,$f13
    sh	$t8,0($a7)
    lwc1	$f12,4($a5)
    mul.s	$f12,$f4,$f12
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f5
    trunc.w.d	$f12,$f12
    mfc1	$t2,$f12
    sh	$t2,2($a7)
    lwc1	$f11,8($a5)
    mul.s	$f11,$f4,$f11
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f5
    trunc.w.d	$f11,$f11
    mfc1	$a2,$f11
    sh	$a2,4($a7)
    lwc1	$f10,12($a5)
    mul.s	$f10,$f4,$f10
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f5
    trunc.w.d	$f10,$f10
    mfc1	$a1,$f10
    sh	$a1,6($a7)
    lwc1	$f9,16($a5)
    mul.s	$f9,$f4,$f9
    cvt.d.s	$f9,$f9
    add.d	$f9,$f9,$f5
    trunc.w.d	$f9,$f9
    mfc1	$a0,$f9
    sh	$a0,8($a7)
    lwc1	$f8,20($a5)
    mul.s	$f8,$f4,$f8
    cvt.d.s	$f8,$f8
    add.d	$f8,$f8,$f5
    trunc.w.d	$f8,$f8
    mfc1	$v1,$f8
    sh	$v1,10($a7)
    lwc1	$f7,24($a5)
    mul.s	$f7,$f4,$f7
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f5
    trunc.w.d	$f7,$f7
    mfc1	$v0,$f7
    sh	$v0,12($a7)
    lwc1	$f6,28($a5)
    mul.s	$f6,$f4,$f6
    cvt.d.s	$f6,$f6
    add.d	$f6,$f6,$f5
    trunc.w.d	$f6,$f6
    addiu	$a6,$a6,-2
    addiu	$a5,$a5,32
    addiu	$a7,$a7,16
    mfc1	$t9,$f6
    addiu	$a4,$a4,8
    bne	$a6,$t0,.L0d9a9730
    sh	$t9,-2($a7)
.L0d9a9824:
    sra	$t8,$t3,0x1f
    xor	$t2,$t3,$t8
    li	$t0,-1
    subu	$t2,$t2,$t8
    sll	$a5,$a4,0x2
    andi	$t2,$t2,0x3
    addu	$a7,$a4,$a4
    xor	$t2,$t2,$t8
    addu	$a7,$a7,$a3
    subu	$t2,$t2,$t8
    ldc1	$f5,_lit8_3fe0000000000000
    addu	$a5,$a5,$t1
    andi	$a6,$t2,0x3
    lwc1	$f4,_lit_477fff00
    blez	$t2,.L0d9a9930
    addiu	$a2,$t2,-1
    beqz	$a6,.L0d9a98a0
    sra	$t3,$t2,0x2
.L0d9a986c:
    lwc1	$f14,0($a5)
    mul.s	$f14,$f4,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f5
    trunc.w.d	$f14,$f14
    addiu	$a6,$a6,-1
    addiu	$a2,$a2,-1
    addiu	$a7,$a7,2
    mfc1	$t1,$f14
    addiu	$a5,$a5,4
    bnez	$a6,.L0d9a986c
    sh	$t1,-2($a7)
    sra	$t3,$t2,0x2
.L0d9a98a0:
    beqz	$t3,.L0d9a9930
    nop
    nop
    nop
.L0d9a98b0:
    lwc1	$f18,0($a5)
    mul.s	$f18,$f4,$f18
    cvt.d.s	$f18,$f18
    add.d	$f18,$f18,$f5
    trunc.w.d	$f18,$f18
    mfc1	$v1,$f18
    sh	$v1,0($a7)
    lwc1	$f17,4($a5)
    mul.s	$f17,$f4,$f17
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f5
    trunc.w.d	$f17,$f17
    mfc1	$v0,$f17
    sh	$v0,2($a7)
    lwc1	$f16,8($a5)
    mul.s	$f16,$f4,$f16
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f5
    trunc.w.d	$f16,$f16
    mfc1	$t9,$f16
    sh	$t9,4($a7)
    lwc1	$f15,12($a5)
    mul.s	$f15,$f4,$f15
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f5
    trunc.w.d	$f15,$f15
    addiu	$a2,$a2,-4
    addiu	$a7,$a7,8
    mfc1	$t8,$f15
    addiu	$a5,$a5,16
    bne	$a2,$t0,.L0d9a98b0
    sh	$t8,-2($a7)
.L0d9a9930:
    # Line 657
    jr	$ra
    nop
.end __glOdySpanPackUshort

# Function: __glOdySpanPackUshortI
# Declared: Line 660 (Source lines: 662-667)
# Address: 0x0d9a9940 - 0x0d9a9b68 (Size: 552 bytes, Frame: 0)
.globl __glOdySpanPackUshortI
.ent __glOdySpanPackUshortI
__glOdySpanPackUshortI:
    # Line 662
    move	$t0,$a2
    move	$t1,$a3
    # Line 664
    lw	$t2,168($a1)
    # Line 665
    lw	$at,84($a1)
    # Line 666
    move	$a1,$zero
    # Line 665
    li	$v0,0xffff
    li	$a4,32767
    # Line 666
    sra	$t3,$t2,0x2
    addiu	$a5,$t3,-1
    # Line 665
    xori	$at,$at,0x1400
    sltiu	$at,$at,1
    # Line 666
    blez	$t3,.L0d9a9ab4
    # Line 665
    movz	$a4,$v0,$at
    andi	$a7,$t3,0x3
    # Line 666
    li	$a6,-1
    sra	$t9,$t3,0x2
    beqz	$a7,.L0d9a99d0
    move	$a1,$zero
.L0d9a9988:
    lw	$t8,0($a2)
    and	$t8,$t8,$a4
    sh	$t8,0($a3)
    lw	$a0,4($a2)
    and	$a0,$a0,$a4
    sh	$a0,2($a3)
    lw	$v1,8($a2)
    addiu	$a2,$a2,16
    and	$v1,$v1,$a4
    sh	$v1,4($a3)
    addiu	$a5,$a5,-1
    addiu	$a7,$a7,-1
    lw	$v0,-4($a2)
    addiu	$a3,$a3,8
    addiu	$a1,$a1,4
    and	$v0,$v0,$a4
    bnez	$a7,.L0d9a9988
    sh	$v0,-2($a3)
.L0d9a99d0:
    beqz	$t9,.L0d9a9ab4
    nop
    nop
    nop
.L0d9a99e0:
    lw	$t9,0($a2)
    and	$t9,$t9,$a4
    sh	$t9,0($a3)
    lw	$t8,4($a2)
    and	$t8,$t8,$a4
    sh	$t8,2($a3)
    lw	$t3,8($a2)
    and	$t3,$t3,$a4
    sh	$t3,4($a3)
    lw	$a7,12($a2)
    and	$a7,$a7,$a4
    sh	$a7,6($a3)
    lw	$a0,16($a2)
    and	$a0,$a0,$a4
    sh	$a0,8($a3)
    lw	$v1,20($a2)
    and	$v1,$v1,$a4
    sh	$v1,10($a3)
    lw	$v0,24($a2)
    and	$v0,$v0,$a4
    sh	$v0,12($a3)
    lw	$at,28($a2)
    and	$at,$at,$a4
    sh	$at,14($a3)
    lw	$t9,32($a2)
    and	$t9,$t9,$a4
    sh	$t9,16($a3)
    lw	$t8,36($a2)
    and	$t8,$t8,$a4
    sh	$t8,18($a3)
    lw	$t3,40($a2)
    and	$t3,$t3,$a4
    sh	$t3,20($a3)
    lw	$a7,44($a2)
    and	$a7,$a7,$a4
    sh	$a7,22($a3)
    lw	$a0,48($a2)
    and	$a0,$a0,$a4
    sh	$a0,24($a3)
    lw	$v1,52($a2)
    and	$v1,$v1,$a4
    sh	$v1,26($a3)
    lw	$v0,56($a2)
    addiu	$a2,$a2,64
    and	$v0,$v0,$a4
    sh	$v0,28($a3)
    addiu	$a5,$a5,-4
    lw	$at,-4($a2)
    addiu	$a3,$a3,32
    addiu	$a1,$a1,16
    and	$at,$at,$a4
    bne	$a5,$a6,.L0d9a99e0
    sh	$at,-2($a3)
.L0d9a9ab4:
    sra	$t8,$t2,0x1f
    xor	$t3,$t2,$t8
    li	$a6,-1
    subu	$t3,$t3,$t8
    sll	$a2,$a1,0x2
    andi	$t3,$t3,0x3
    addu	$a3,$a1,$a1
    xor	$t3,$t3,$t8
    addu	$a3,$a3,$t1
    subu	$t3,$t3,$t8
    addu	$a2,$a2,$t0
    andi	$a7,$t3,0x3
    blez	$t3,.L0d9a9b60
    addiu	$a5,$t3,-1
    beqz	$a7,.L0d9a9b14
    sra	$t1,$t3,0x2
.L0d9a9af4:
    addiu	$a5,$a5,-1
    addiu	$a7,$a7,-1
    lw	$t0,0($a2)
    addiu	$a2,$a2,4
    addiu	$a3,$a3,2
    and	$t0,$t0,$a4
    bnez	$a7,.L0d9a9af4
    sh	$t0,-2($a3)
.L0d9a9b14:
    beqz	$t1,.L0d9a9b60
    move	$a1,$a5
    nop
.L0d9a9b20:
    lw	$t9,0($a2)
    and	$t9,$t9,$a4
    sh	$t9,0($a3)
    lw	$t8,4($a2)
    and	$t8,$t8,$a4
    sh	$t8,2($a3)
    lw	$t3,8($a2)
    and	$t3,$t3,$a4
    sh	$t3,4($a3)
    addiu	$a1,$a1,-4
    lw	$t2,12($a2)
    addiu	$a2,$a2,16
    addiu	$a3,$a3,8
    and	$t2,$t2,$a4
    bne	$a1,$a6,.L0d9a9b20
    sh	$t2,-2($a3)
.L0d9a9b60:
    # Line 667
    jr	$ra
    nop
.end __glOdySpanPackUshortI

# Function: __glOdySpanPackUint
# Declared: Line 670 (Source lines: 672-675)
# Address: 0x0d9a9b70 - 0x0d9a9e08 (Size: 664 bytes, Frame: 0)
.globl __glOdySpanPackUint
.ent __glOdySpanPackUint
__glOdySpanPackUint:
    # Line 673
    lw	$a0,168($a1)
    lw	$v1,112($a1)
    mult	$v1,$a0
    # Line 672
    move	$t1,$a2
    lui	$v0,0x15
    # Line 673
    mflo	$t3
    # Line 672
    addiu	$v0,$v0,-5600
    # Line 674
    sra	$t2,$t3,0x2
    move	$a4,$zero
    # Line 672
    addu	$at,$t9,$v0
    # Line 674
    blez	$t2,.L0d9a9d14
    addiu	$a6,$t2,-1
    li	$t0,-1
    andi	$a1,$t2,0x1
    move	$a7,$a3
    ldc1	$f4,_lit8_41efffffffe00000
    move	$a5,$a2
    ldc1	$f5,_lit8_3fe0000000000000
    beqz	$a1,.L0d9a9c30
    move	$a4,$zero
    lwc1	$f3,0($a2)
    cvt.d.s	$f3,$f3
    madd.d	$f3,$f5,$f4,$f3
    trunc.l.d	$f3,$f3
    dmfc1	$a6,$f3
    sw	$a6,0($a3)
    lwc1	$f2,4($a2)
    cvt.d.s	$f2,$f2
    madd.d	$f2,$f5,$f4,$f2
    trunc.l.d	$f2,$f2
    dmfc1	$a5,$f2
    sw	$a5,4($a3)
    lwc1	$f1,8($a2)
    cvt.d.s	$f1,$f1
    madd.d	$f1,$f5,$f4,$f1
    trunc.l.d	$f1,$f1
    dmfc1	$a4,$f1
    sw	$a4,8($a3)
    lwc1	$f0,12($a2)
    cvt.d.s	$f0,$f0
    madd.d	$f0,$f5,$f4,$f0
    trunc.l.d	$f0,$f0
    addiu	$a7,$a3,16
    addiu	$a5,$a2,16
    dmfc1	$a2,$f0
    addiu	$a6,$t2,-2
    li	$a4,4
    sw	$a2,12($a3)
.L0d9a9c30:
    sra	$t8,$t2,0x1
    beqz	$t8,.L0d9a9d14
    nop
    nop
.L0d9a9c40:
    lwc1	$f13,0($a5)
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f5,$f4,$f13
    trunc.l.d	$f13,$f13
    dmfc1	$t8,$f13
    sw	$t8,0($a7)
    lwc1	$f12,4($a5)
    cvt.d.s	$f12,$f12
    madd.d	$f12,$f5,$f4,$f12
    trunc.l.d	$f12,$f12
    dmfc1	$t2,$f12
    sw	$t2,4($a7)
    lwc1	$f11,8($a5)
    cvt.d.s	$f11,$f11
    madd.d	$f11,$f5,$f4,$f11
    trunc.l.d	$f11,$f11
    dmfc1	$a2,$f11
    sw	$a2,8($a7)
    lwc1	$f10,12($a5)
    cvt.d.s	$f10,$f10
    madd.d	$f10,$f5,$f4,$f10
    trunc.l.d	$f10,$f10
    dmfc1	$a1,$f10
    sw	$a1,12($a7)
    lwc1	$f9,16($a5)
    cvt.d.s	$f9,$f9
    madd.d	$f9,$f5,$f4,$f9
    trunc.l.d	$f9,$f9
    dmfc1	$a0,$f9
    sw	$a0,16($a7)
    lwc1	$f8,20($a5)
    cvt.d.s	$f8,$f8
    madd.d	$f8,$f5,$f4,$f8
    trunc.l.d	$f8,$f8
    dmfc1	$v1,$f8
    sw	$v1,20($a7)
    lwc1	$f7,24($a5)
    cvt.d.s	$f7,$f7
    madd.d	$f7,$f5,$f4,$f7
    trunc.l.d	$f7,$f7
    dmfc1	$v0,$f7
    sw	$v0,24($a7)
    lwc1	$f6,28($a5)
    cvt.d.s	$f6,$f6
    madd.d	$f6,$f5,$f4,$f6
    trunc.l.d	$f6,$f6
    addiu	$a6,$a6,-2
    addiu	$a5,$a5,32
    addiu	$a7,$a7,32
    dmfc1	$t9,$f6
    addiu	$a4,$a4,8
    bne	$a6,$t0,.L0d9a9c40
    sw	$t9,-4($a7)
.L0d9a9d14:
    sra	$t8,$t3,0x1f
    xor	$t2,$t3,$t8
    subu	$t2,$t2,$t8
    li	$t0,-1
    andi	$t2,$t2,0x3
    sll	$a5,$a4,0x2
    xor	$t2,$t2,$t8
    addu	$a7,$a5,$a3
    subu	$t2,$t2,$t8
    ldc1	$f5,_lit8_3fe0000000000000
    addu	$a5,$a5,$t1
    andi	$a6,$t2,0x3
    ldc1	$f4,_lit8_41efffffffe00000
    blez	$t2,.L0d9a9e00
    addiu	$a2,$t2,-1
    beqz	$a6,.L0d9a9d88
    sra	$t3,$t2,0x2
.L0d9a9d58:
    lwc1	$f14,0($a5)
    cvt.d.s	$f14,$f14
    madd.d	$f14,$f5,$f4,$f14
    trunc.l.d	$f14,$f14
    addiu	$a6,$a6,-1
    addiu	$a2,$a2,-1
    addiu	$a7,$a7,4
    dmfc1	$t1,$f14
    addiu	$a5,$a5,4
    bnez	$a6,.L0d9a9d58
    sw	$t1,-4($a7)
    sra	$t3,$t2,0x2
.L0d9a9d88:
    beqz	$t3,.L0d9a9e00
    nop
.L0d9a9d90:
    lwc1	$f18,0($a5)
    cvt.d.s	$f18,$f18
    madd.d	$f18,$f5,$f4,$f18
    trunc.l.d	$f18,$f18
    dmfc1	$v1,$f18
    sw	$v1,0($a7)
    lwc1	$f17,4($a5)
    cvt.d.s	$f17,$f17
    madd.d	$f17,$f5,$f4,$f17
    trunc.l.d	$f17,$f17
    dmfc1	$v0,$f17
    sw	$v0,4($a7)
    lwc1	$f16,8($a5)
    cvt.d.s	$f16,$f16
    madd.d	$f16,$f5,$f4,$f16
    trunc.l.d	$f16,$f16
    dmfc1	$t9,$f16
    sw	$t9,8($a7)
    lwc1	$f15,12($a5)
    cvt.d.s	$f15,$f15
    madd.d	$f15,$f5,$f4,$f15
    trunc.l.d	$f15,$f15
    addiu	$a2,$a2,-4
    addiu	$a7,$a7,16
    dmfc1	$t8,$f15
    addiu	$a5,$a5,16
    bne	$a2,$t0,.L0d9a9d90
    sw	$t8,-4($a7)
.L0d9a9e00:
    # Line 675
    jr	$ra
    nop
.end __glOdySpanPackUint

# Function: __glOdysseyImageConvertHostImage
# Declared: Line 681 (Source lines: 685-3634)
# Address: 0x0d9a9e10 - 0x0d9ac0c4 (Size: 8884 bytes, Frame: 224)
.globl __glOdysseyImageConvertHostImage
.ent __glOdysseyImageConvertHostImage
__glOdysseyImageConvertHostImage:
    # Line 685
    addiu	$sp,$sp,-864
    sd	$a1,632($sp)
    # Line 757
    lw	$a1,12($a2)
    # Line 685
    sd	$s1,680($sp)
    move	$s1,$a0
    # Line 757
    lw	$a0,8($a2)
    # Line 685
    sd	$a6,624($sp)
    sd	$a3,752($sp)
    sd	$s7,776($sp)
    sd	$ra,672($sp)
    sd	$s4,664($sp)
    sd	$s0,696($sp)
    sd	$s3,704($sp)
    # Line 732
    lw	$s3,4112($zero)
    # Line 685
    sd	$s6,712($sp)
    lui	$v1,0x15
    # Line 734
    lbu	$at,1189($s3)
    # Line 685
    addiu	$v1,$v1,-6272
    sd	$gp,720($sp)
    addu	$gp,$t9,$v1
    # Line 757
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    # Line 735
    lbu	$v0,1145($s3)
    # Line 685
    move	$s6,$a5
    move	$s0,$a4
    # Line 735
    sd	$v0,608($sp)
    # Line 685
    move	$s4,$a2
    # Line 757
    jal	__glSpecElementsPerGroup
    sd	$at,616($sp)
    # Line 758
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    lw	$a0,12($s4)
    sd	$s8,784($sp)
    # Line 757
    move	$s7,$v0
    # Line 758
    jal	__glSpecBytesPerElement
    sd	$s0,808($sp)
    # Line 759
    multu	$v0,$s7
    # Line 761
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    # Line 758
    move	$s8,$v0
    # Line 761
    lw	$a1,12($s1)
    # Line 759
    mflo	$s0
    # Line 761
    jal	__glSpecElementsPerGroup
    lw	$a0,8($s1)
    sd	$v0,656($sp)
    sd	$v0,640($sp)
    # Line 762
    lw	$a0,12($s1)
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    sdc1	$f24,768($sp)
    sd	$s5,800($sp)
    jal	__glSpecBytesPerElement
    sd	$s2,792($sp)
    # Line 763
    ld	$a7,656($sp)
    multu	$v0,$a7
    # Line 779
    lw	$a6,16($s4)
    # Line 763
    mflo	$s2
    nop
    nop
    # Line 779
    multu	$a6,$s0
    # Line 763
    lw	$t0,24($s4)
    sltu	$a7,$t0,$s0
    # Line 767
    move	$a6,$s0
    movz	$a6,$t0,$a7
    # Line 779
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f24
    mflo	$a5
    lwc1	$f13,_lit_3f800000
    dsll32	$a5,$a5,0x0
    lw	$s5,12($s4)
    dsrl32	$a5,$a5,0x0
    lwc1	$f14,_lit_41000000
    li	$a4,6656
    dmtc1	$a5,$f12
    xor	$a4,$a4,$s5
    cvt.s.l	$f24,$f24
    sltiu	$a4,$a4,1
    # Line 769
    lw	$a3,24($s1)
    # Line 779
    movn.s	$f13,$f14,$a4
    cvt.s.l	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 762
    sd	$v0,728($sp)
    # Line 772
    move	$a1,$s2
    # Line 769
    sltu	$a2,$a3,$s2
    # Line 779
    mul.s	$f13,$f24,$f13
    sdc1	$f14,552($sp)
    movz	$a1,$a3,$a2
    sd	$a1,688($sp)
    jal	ceilf
    div.s	$f12,$f12,$f13
    # Line 785
    lw	$t9,16($s1)
    multu	$t9,$s2
    ld	$t9,688($sp)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f13
    mflo	$t8
    lwc1	$f16,_lit_3f800000
    dsll32	$t8,$t8,0x0
    lw	$t3,12($s1)
    dsrl32	$t8,$t8,0x0
    # Line 779
    mul.s	$f15,$f0,$f24
    # Line 785
    ldc1	$f14,552($sp)
    li	$t2,6656
    dmtc1	$t8,$f12
    xor	$t2,$t2,$t3
    cvt.s.l	$f13,$f13
    # Line 779
    trunc.l.s	$f15,$f15
    # Line 785
    sltiu	$t2,$t2,1
    movz.s	$f14,$f16,$t2
    cvt.s.l	$f12,$f12
    # Line 779
    dmfc1	$t1,$f15
    # Line 785
    # lw $t9, -17032($gp) # &ceilf
    sdc1	$f13,544($sp)
    mul.s	$f13,$f13,$f14
    sd	$t3,600($sp)
    # Line 779
    sll	$t1,$t1,0x0
    sd	$t1,760($sp)
    # Line 785
    jal	ceilf
    div.s	$f12,$f12,$f13
    # Line 797
    lw	$a0,8($s1)
    ld	$t8,808($sp)
    sltiu	$ra,$a0,6406
    sd	$s2,592($sp)
    # Line 785
    mov.s	$f24,$f0
    # Line 797
    bnez	$ra,.L0d9aa01c
    sd	$s0,584($sp)
    sltiu	$at,$a0,6407
    beqz	$at,.L0d9aa650
    sltiu	$a7,$a0,6410
    # Line 826
    li	$t9,1
    move	$a1,$zero
    b	.L0d9aa048
    li	$a2,8
.L0d9aa01c:
    # Line 797
    sltiu	$v0,$a0,6402
    bnez	$v0,.L0d9aa690
    sltiu	$v1,$a0,6403
    beqz	$v1,.L0d9aa950
    # Line 815
    move	$a1,$zero
    # Line 817
    li	$t9,1
    # Line 815
    b	.L0d9aa048
    move	$a2,$t9
.L0d9aa03c:
    # Line 797
    beq	$t9,$a0,.L0d9ab4d8
.L0d9aa040:
    # Line 829
    move	$a2,$zero
    move	$a1,$zero
.L0d9aa048:
    # Line 836
    lwc1	$f14,0($s6)
    dmtc1	$zero,$f5
    cvt.d.s	$f14,$f14
    c.eq.d	$f14,$f5
    li	$t3,1
    movt	$t3,$zero,$fcc0
    beqz	$t3,.L0d9aa8b8
    li	$s0,1
.L0d9aa068:
    # Line 838
    lwc1	$f15,4($s6)
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f5
    li	$t1,1
    movt	$t1,$zero,$fcc1
    beqz	$t1,.L0d9aa798
    nop
    ori	$s0,$s0,0x2
.L0d9aa088:
    # Line 839
    lwc1	$f16,8($s6)
    cvt.d.s	$f16,$f16
    c.eq.d $f16,$f5
    li	$t2,1
    movt	$t2,$zero,$fcc2
    beqz	$t2,.L0d9aa7b8
    nop
    ori	$s0,$s0,0x4
.L0d9aa0a8:
    # Line 840
    lwc1	$f17,12($s6)
    cvt.d.s	$f17,$f17
    c.eq.d $f17,$f5
    li	$a5,1
    movt	$a5,$zero,$fcc3
    beqz	$a5,.L0d9aa7d8
    nop
    ori	$s0,$s0,0x8
.L0d9aa0c8:
    # Line 841
    beqz	$a1,.L0d9aa7f8
    and	$s0,$s0,$a2
    # Line 868
    move	$v0,$zero
.L0d9aa0d4:
    # Line 871
    lbu	$a2,1188($s3)
    beqz	$a2,.L0d9aa0ec
    move	$a2,$zero
    lbu	$a3,0($s4)
    beqz	$a3,.L0d9aa924
    move	$a2,$zero
.L0d9aa0ec:
    # Line 873
    lbu	$a4,1144($s3)
    beqz	$a4,.L0d9aa104
    move	$a4,$zero
    lbu	$a5,0($s1)
    beqz	$a5,.L0d9aa938
    move	$a4,$zero
.L0d9aa104:
    # Line 876
    beqz	$s0,.L0d9aa850
.L0d9aa108:
    andi	$a5,$a2,0xff
.L0d9aa10c:
    beqz	$a5,.L0d9aa130
    # Line 901
    move	$s2,$zero
    li	$a6,2
    beq	$s8,$a6,.L0d9aaa08
    # Line 903
    la	$t1,__glOdySpanSwapBytes2
    # Line 901
    li	$a7,4
    beq	$s8,$a7,.L0d9aab18
    # Line 906
    la	$s2,__glOdySpanSwapBytes4
    # Line 901
    move	$s2,$zero
.L0d9aa130:
    # Line 913
    li	$a0,0x8034
    sltu	$t0,$s5,$a0
    bnez	$t0,.L0d9aa450
    sltu	$t3,$a0,$s5
    bnez	$t3,.L0d9aa608
    li	$a0,0x8364
    # Line 956
    addiu	$s2,$s2,1
    sll	$v1,$s2,0x2
    la	$at,__glSpanUnpack5551Ushort
    addu	$v1,$sp,$v1
    sw	$at,356($v1)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$ra,$s5,6406
    # Line 956
    li	$a1,1
    # Line 991
    bnez	$ra,.L0d9aaa18
    move	$a0,$a1
    move	$a2,$a1
    move	$t1,$zero
.L0d9aa178:
    sltiu	$a1,$s5,6407
    beqz	$a1,.L0d9aa708
    sltiu	$a6,$s5,6410
    # Line 1025
    addiu	$s2,$s2,1
    sll	$a7,$s2,0x2
    la	$a3,__glSpanExpandAlphaNS
    addu	$a6,$sp,$a7
    sw	$a3,356($a6)
.L0d9aa198:
    # Line 1083
    beqz	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1086
    lw	$a1,8($s4)
    li	$t0,6400
    beq	$a1,$t0,.L0d9aad04
    li	$t2,6401
    beq	$a1,$t2,.L0d9aad38
    # Line 1110
    xori	$a6,$a1,0x1902
    sltiu	$a6,$a6,1
    beqz	$s0,.L0d9aa21c
    sb	$a6,429($sp)
    bnez	$a6,.L0d9ab0e8
    lwc1	$f0,0($t8)
    # Line 1118
    swc1	$f0,316($sp)
    lwc1	$f29,0($s6)
    swc1	$f29,332($sp)
    # Line 1119
    lwc1	$f27,4($t8)
    swc1	$f27,320($sp)
    lwc1	$f25,4($s6)
    swc1	$f25,336($sp)
    # Line 1120
    lwc1	$f23,8($t8)
    swc1	$f23,324($sp)
    lwc1	$f21,8($s6)
    swc1	$f21,340($sp)
    # Line 1121
    lwc1	$f19,12($t8)
    swc1	$f19,328($sp)
    lwc1	$f18,12($s6)
    swc1	$f18,344($sp)
.L0d9aa208:
    # Line 1123
    addiu	$s2,$s2,1
    sll	$t2,$s2,0x2
    la	$a7,__glOdySpanScaleBiasComponent
    addu	$t0,$sp,$t2
    sw	$a7,356($t0)
.L0d9aa21c:
    beqz	$v0,.L0d9aa23c
    # Line 1125
    la	$a1,__glOdySpanShiftOffsetIndex
    # Line 1126
    addiu	$s2,$s2,1
    sll	$ra,$s2,0x2
    la	$t3,__glOdySpanClampComponent
    addu	$t8,$sp,$ra
    sw	$t3,356($t8)
    # Line 1125
    la	$a1,__glOdySpanShiftOffsetIndex
.L0d9aa23c:
    # Line 1128
    beqz	$a0,.L0d9aa2b4
    nop
    # Line 1131
    lw	$s5,8($s1)
    sltiu	$at,$s5,6406
    bnez	$at,.L0d9aa750
    sltiu	$at,$s5,6402
    sltiu	$v0,$s5,6407
    beqz	$v0,.L0d9aaadc
    sltiu	$a6,$s5,6410
    # Line 1166
    addiu	$s2,$s2,1
    sll	$a3,$s2,0x2
    la	$v1,__glSpanReduceAlphaNS
    addu	$a1,$sp,$a3
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1166
    sw	$v1,356($a1)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    lw	$a1,12($s1)
.L0d9aa284:
    # Line 1218
    li	$a0,0x8034
.L0d9aa288:
    sltu	$a6,$a1,$a0
    bnez	$a6,.L0d9aac50
    move	$s5,$a1
.L0d9aa294:
    sltu	$a7,$a0,$s5
.L0d9aa298:
    bnez	$a7,.L0d9aafb4
    li	$a0,0x8364
    # Line 1265
    addiu	$s2,$s2,1
    sll	$t2,$s2,0x2
    la	$t0,__glSpanPack5551Ushort
    addu	$t1,$sp,$t2
    sw	$t0,356($t1)
.L0d9aa2b4:
    # Line 1299
    andi	$a1,$a4,0xff
.L0d9aa2b8:
    beqz	$a1,.L0d9aa2d8
    # Line 1302
    ld	$t3,728($sp)
    li	$t8,2
    beq	$t3,$t8,.L0d9ab0d0
    ld	$t9,728($sp)
    li	$ra,4
    beq	$t9,$ra,.L0d9aabd8
    # Line 1307
    addiu	$at,$s2,1
.L0d9aa2d8:
    # Line 1311
    beqz	$s2,.L0d9aabf0
.L0d9aa2dc:
    # Line 1324
    ld	$t2,752($sp)
    # Line 1326
    ld	$a7,760($sp)
    # Line 1324
    lw	$a6,4($t2)
    # Line 1326
    multu	$a6,$a7
    sd	$s7,840($sp)
    lw	$a2,44($s4)
    ld	$a4,632($sp)
    # Line 1323
    lw	$t2,0($t2)
    # Line 1326
    lw	$at,12($s4)
    li	$a0,6656
    # Line 1324
    sd	$a6,648($sp)
    # Line 1326
    lw	$a6,4($a4)
    mflo	$a3
    # Line 1325
    lw	$a4,0($a4)
    # Line 1326
    beq	$a0,$at,.L0d9aaf30
    addu	$a2,$a2,$a3
    # Line 1328
    ld	$t8,584($sp)
    multu	$t2,$t8
    mflo	$s7
    ld	$t1,840($sp)
    addu	$s7,$a2,$s7
.L0d9aa330:
    # Line 1335
    ldc1	$f31,544($sp)
    mul.s	$f31,$f24,$f31
    trunc.l.s	$f31,$f31
    dmfc1	$a7,$f31
    sll	$a7,$a7,0x0
    multu	$a6,$a7
    lw	$t9,12($s1)
    lw	$a2,44($s1)
    sd	$s8,848($sp)
    mflo	$a3
    sd	$a7,744($sp)
    beq	$a0,$t9,.L0d9aaf64
    addu	$a2,$a2,$a3
    # Line 1338
    ld	$ra,592($sp)
    multu	$a4,$ra
    mflo	$s8
    ld	$v0,848($sp)
    addu	$s8,$a2,$s8
.L0d9aa378:
    # Line 1360
    ld	$a3,760($sp)
    # Line 1348
    ld	$t8,752($sp)
    # Line 1355
    ld	$t9,640($sp)
    # Line 1348
    lw	$s0,8($t8)
    lw	$t8,0($t8)
    # Line 1358
    sw	$a1,120($sp)
    # Line 1356
    sw	$t9,108($sp)
    # Line 1355
    sw	$t9,112($sp)
    # Line 1354
    sw	$a5,40($sp)
    # Line 1353
    sw	$v0,36($sp)
    # Line 1352
    sw	$t1,28($sp)
    # Line 1351
    sw	$t1,32($sp)
    # Line 1348
    subu	$s0,$s0,$t8
    # Line 1350
    sw	$s0,184($sp)
    # Line 1349
    sw	$s0,180($sp)
    # Line 1348
    sw	$s0,168($sp)
    # Line 1357
    ld	$t8,728($sp)
    sw	$t8,116($sp)
    # Line 1363
    li	$a2,1
    # Line 1360
    li	$v1,2
    # Line 1358
    lbu	$a0,28($s1)
    # Line 1360
    addu	$a4,$a3,$a3
    # Line 1366
    sll	$s0,$s0,0x4
    slti	$at,$s2,3
    lw	$t9,0($s3)
    movn	$a3,$a4,$a0
    sd	$a3,760($sp)
    movz	$v1,$a2,$a0
    bnez	$at,.L0d9aa490
    sd	$v1,736($sp)
    # Line 1368
    move	$a0,$s3
    jalr	$t9
    addu	$a1,$s0,$s0
    move	$s5,$v0
    # Line 1372
    bnez	$v0,.L0d9aa4a8
    # Line 1369
    addu	$s6,$s0,$v0
.L0d9aa408:
    ld	$s5,800($sp)
    ld	$s2,792($sp)
    # Line 1375
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s8,784($sp)
    ld	$s7,776($sp)
    ldc1	$f24,768($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 3634
    ld	$gp,720($sp)
    ld	$s0,696($sp)
    ld	$s1,680($sp)
    ld	$ra,672($sp)
    ld	$s3,704($sp)
    # Line 1376
    move	$v0,$zero
    # Line 3634
    ld	$s4,664($sp)
    ld	$s6,712($sp)
    jr	$ra
    addiu	$sp,$sp,864
.L0d9aa450:
    # Line 913
    sltiu	$a0,$s5,5125
    bnez	$a0,.L0d9aa6b8
    sltiu	$a2,$s5,5122
    sltiu	$ra,$s5,5126
    beqz	$ra,.L0d9aa974
    li	$a0,0x8032
    beqz	$a1,.L0d9ab584
    nop
.L0d9aa470:
    # Line 991
    lw	$s5,8($s4)
    sltiu	$at,$s5,6406
    # Line 968
    li	$a1,1
    # Line 991
    bnez	$at,.L0d9aadc8
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aa490:
    # Line 1371
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    move	$s5,$v0
    # Line 1372
    beqz	$v0,.L0d9aa408
    move	$s6,$zero
.L0d9aa4a8:
    # Line 1376
    ld	$v1,752($sp)
    ld	$v0,648($sp)
    lw	$v1,12($v1)
    slt	$v1,$v0,$v1
    beqz	$v1,.L0d9aa574
    nop
    b	.L0d9aa55c
    addiu	$s4,$s2,-1
    nop
    nop
.L0d9aa4d0:
    # Line 1381
    addiu	$s1,$sp,0
    move	$s2,$zero
    sd	$v0,648($sp)
    nop
.L0d9aa4e0:
    # Line 1383
    lw	$t9,360($s1)
    move	$a0,$s3
    move	$a3,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 1385
    andi	$a0,$s2,0x1
    # Line 1382
    addiu	$s2,$s2,1
    addiu	$s1,$s1,4
    # Line 1384
    move	$a2,$s0
    # Line 1385
    move	$s0,$s6
    # Line 1382
    bne	$s4,$s2,.L0d9aa4e0
    # Line 1385
    movn	$s0,$s5,$a0
    # Line 1382
    move	$s2,$s4
.L0d9aa514:
    # Line 1388
    sll	$t9,$s2,0x2
    addu	$t9,$sp,$t9
    lw	$t9,360($t9)
    move	$a0,$s3
    move	$a3,$s8
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 1392
    ld	$v1,736($sp)
    ld	$at,752($sp)
    ld	$v0,648($sp)
    lw	$at,12($at)
    ld	$ra,760($sp)
    addu	$v0,$v0,$v1
    # Line 1391
    ld	$v1,744($sp)
    # Line 1392
    slt	$at,$v0,$at
    # Line 1390
    addu	$s7,$ra,$s7
    # Line 1392
    beqz	$at,.L0d9aa574
    # Line 1391
    addu	$s8,$v1,$s8
.L0d9aa55c:
    # Line 1380
    move	$a2,$s7
    # Line 1382
    move	$s2,$zero
    # Line 1381
    bgtz	$s4,.L0d9aa4d0
    move	$s0,$s5
    b	.L0d9aa514
    sd	$v0,648($sp)
.L0d9aa574:
    ld	$s2,792($sp)
    # Line 1395
    lw	$t9,12($s3)
    ld	$s8,784($sp)
    ld	$s7,776($sp)
    move	$a0,$s3
    ldc1	$f24,768($sp)
    jalr	$t9
    move	$a1,$s5
    ld	$s5,800($sp)
    # Line 3634
    ld	$gp,720($sp)
    ld	$s0,696($sp)
    ld	$s1,680($sp)
    ld	$ra,672($sp)
    ld	$s3,704($sp)
    # Line 1397
    li	$v0,1
    # Line 3634
    ld	$s4,664($sp)
    ld	$s6,712($sp)
    jr	$ra
    addiu	$sp,$sp,864
.L0d9aa5c0:
    # Line 1032
    move	$t1,$zero
.L0d9aa5c4:
    # Line 991
    beq	$t9,$s5,.L0d9ab380
    # Line 1010
    addiu	$s2,$s2,1
.L0d9aa5cc:
    ld	$s7,776($sp)
.L0d9aa5d0:
    ld	$s8,784($sp)
    ld	$s5,800($sp)
    ld	$s2,792($sp)
    ldc1	$f24,768($sp)
    # Line 3634
    ld	$gp,720($sp)
    ld	$s0,696($sp)
    ld	$s1,680($sp)
    ld	$ra,672($sp)
    ld	$s3,704($sp)
    move	$v0,$zero
    ld	$s4,664($sp)
    ld	$s6,712($sp)
    jr	$ra
    addiu	$sp,$sp,864
.L0d9aa608:
    # Line 913
    sltu	$v1,$s5,$a0
    bnez	$v1,.L0d9aa8d8
    sltu	$a1,$a0,$s5
    bnez	$a1,.L0d9aac08
    li	$a0,0x8367
    # Line 947
    addiu	$s2,$s2,1
    sll	$a6,$s2,0x2
    la	$a3,__glSpanUnpack565RevUshort
    addu	$a6,$sp,$a6
    sw	$a3,356($a6)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a2,$s5,6406
    # Line 947
    li	$a1,1
    # Line 991
    bnez	$a2,.L0d9ab2f8
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aa650:
    # Line 797
    bnez	$a7,.L0d9aa734
    sltiu	$t9,$a0,6408
    sltiu	$t0,$a0,6411
    bnez	$t0,.L0d9aa744
    # Line 802
    li	$t9,1
    # Line 797
    li	$a1,0x80e0
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9ab254
    li	$t9,0x8000
    sltu	$t2,$a1,$a0
    beqz	$t2,.L0d9ab310
    li	$t3,0x80e1
    beq	$a0,$t3,.L0d9aa744
    # Line 802
    li	$t9,1
    # Line 810
    b	.L0d9aa040
    li	$t9,1
.L0d9aa690:
    # Line 797
    sltiu	$t9,$a0,6400
    bnez	$t9,.L0d9aa03c
    li	$t9,1
    sltiu	$ra,$a0,6401
    bnez	$ra,.L0d9aac88
    li	$at,6401
    beq	$a0,$at,.L0d9aac88
    nop
    b	.L0d9aa040
    # Line 810
    li	$t9,1
.L0d9aa6b8:
    # Line 913
    bnez	$a2,.L0d9aa9c0
    sltiu	$a3,$s5,5121
    sltiu	$v1,$s5,5123
    beqz	$v1,.L0d9aae2c
    sltiu	$ra,$s5,5124
    # Line 935
    la	$a3,__glSpanUnpackShort
    addiu	$s2,$s2,1
    la	$a0,__glSpanUnpackShortI
    sll	$a2,$s2,0x2
    addu	$a2,$sp,$a2
    movz	$a0,$a3,$a1
    sw	$a0,356($a2)
.L0d9aa6e8:
    # Line 991
    lw	$s5,8($s4)
.L0d9aa6ec:
    sltiu	$a3,$s5,6406
    # Line 988
    li	$t2,1
    # Line 991
    bnez	$a3,.L0d9aae80
    move	$a0,$t2
    move	$a2,$t2
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aa708:
    bnez	$a6,.L0d9aaaac
    sltiu	$t3,$s5,6408
    sltiu	$a7,$s5,6411
    beqz	$a7,.L0d9aae98
    li	$a1,0x80e0
    # Line 1007
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t0,__glSpanExpandLuminanceAlphaNS
    addu	$t2,$sp,$t3
    # Line 1008
    b	.L0d9aa198
    # Line 1007
    sw	$t0,356($t2)
.L0d9aa734:
    # Line 797
    bnez	$t9,.L0d9aad9c
    sltiu	$ra,$a0,6409
    beqz	$ra,.L0d9ab264
    # Line 802
    li	$t9,1
.L0d9aa744:
    move	$a1,$zero
    b	.L0d9aa048
    li	$a2,15
.L0d9aa750:
    # Line 1131
    bnez	$at,.L0d9aab54
    sltiu	$a6,$s5,6400
    sltiu	$v0,$s5,6403
    beqz	$v0,.L0d9aafe0
    sltiu	$t8,$s5,6404
    lbu	$v1,537($sp)
    beqz	$v1,.L0d9ab96c
    nop
    # Line 1170
    lw	$a1,12($s1)
    li	$ra,5125
    beq	$ra,$a1,.L0d9aba08
    # Line 1172
    lbu	$t8,536($sp)
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    nop
    bnez	$a2,.L0d9aa288
    # Line 1218
    li	$a0,0x8034
    b	.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
.L0d9aa798:
    # Line 838
    lwc1	$f0,4($t8)
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d $f0,$f1
    bc1t .L0d9aa088
    nop
    b	.L0d9aa088
    ori	$s0,$s0,0x2
.L0d9aa7b8:
    # Line 839
    lwc1	$f1,8($t8)
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f2
    bc1t .L0d9aa0a8
    nop
    b	.L0d9aa0a8
    ori	$s0,$s0,0x4
.L0d9aa7d8:
    # Line 840
    lwc1	$f2,12($t8)
    ldc1	$f3,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f3
    bc1t .L0d9aa0c8
    nop
    b	.L0d9aa0c8
    ori	$s0,$s0,0x8
.L0d9aa7f8:
    # Line 854
    li	$a3,5120
    beq	$s5,$a3,.L0d9aabd0
    li	$a4,5122
    beq	$s5,$a4,.L0d9aabd0
    li	$a6,5124
    beq	$s5,$a6,.L0d9aabd0
    li	$a7,5126
    beq	$s5,$a7,.L0d9aabd0
    nop
    # Line 863
    beqz	$t3,.L0d9ab654
.L0d9aa820:
    li	$v0,1
.L0d9aa824:
    # Line 864
    beqz	$t1,.L0d9ab67c
    nop
.L0d9aa82c:
    ori	$v0,$v0,0x2
.L0d9aa830:
    # Line 865
    beqz	$t2,.L0d9ab6a4
    nop
.L0d9aa838:
    ori	$v0,$v0,0x4
.L0d9aa83c:
    # Line 866
    beqz	$a5,.L0d9ab6cc
    nop
.L0d9aa844:
    ori	$v0,$v0,0x8
.L0d9aa848:
    # Line 867
    b	.L0d9aa0d4
    and	$v0,$v0,$a2
.L0d9aa850:
    # Line 876
    bnez	$v0,.L0d9aa108
    ld	$t0,624($sp)
    bnez	$t0,.L0d9aa10c
    andi	$a5,$a2,0xff
    lw	$a5,8($s4)
    bne	$a5,$a0,.L0d9aa108
    ld	$t1,600($sp)
    bne	$t1,$s5,.L0d9aa108
    li	$t2,6402
    beq	$a5,$t2,.L0d9ac03c
    li	$t3,6401
.L0d9aa87c:
    beq	$t3,$a5,.L0d9ac054
    andi	$a5,$a2,0xff
.L0d9aa884:
    beqz	$a5,.L0d9ac06c
    # Line 901
    li	$ra,2
    beq	$s8,$ra,.L0d9ac084
    # Line 903
    la	$at,__glOdySpanSwapBytes2
    # Line 901
    li	$at,4
    beq	$s8,$at,.L0d9ac090
    # Line 906
    la	$v1,__glOdySpanSwapBytes4
    # Line 901
    move	$s2,$zero
.L0d9aa8a4:
    # Line 913
    sd	$zero,576($sp)
    # Line 1082
    sd	$zero,568($sp)
    li	$v1,1
    b	.L0d9aa2b4
    sd	$v1,560($sp)
.L0d9aa8b8:
    # Line 836
    lwc1	$f3,0($t8)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f4
    bc1f .L0d9aa068
    li	$s0,1
    b	.L0d9aa068
    move	$s0,$zero
.L0d9aa8d8:
    # Line 913
    li	$a0,0x8362
    sltu	$a1,$s5,$a0
    bnez	$a1,.L0d9aacb8
    sltu	$a2,$a0,$s5
    bnez	$a2,.L0d9ab174
    li	$t2,0x8363
    # Line 932
    addiu	$s2,$s2,1
    sll	$a7,$s2,0x2
    la	$a6,__glSpanUnpack233RevUbyte
    addu	$a7,$sp,$a7
    sw	$a6,356($a7)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a3,$s5,6406
    # Line 932
    li	$a1,1
    # Line 991
    bnez	$a3,.L0d9ab5e0
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aa924:
    # Line 871
    sltiu	$t0,$s8,2
    bnez	$t0,.L0d9aa0ec
    move	$a2,$zero
    b	.L0d9aa0ec
    li	$a2,1
.L0d9aa938:
    # Line 873
    ld	$t1,728($sp)
    sltiu	$t1,$t1,2
    bnez	$t1,.L0d9aa104
    move	$a4,$zero
    b	.L0d9aa104
    li	$a4,1
.L0d9aa950:
    # Line 797
    sltiu	$t2,$a0,6404
    bnez	$t2,.L0d9aadb0
    sltiu	$t3,$a0,6405
    beqz	$t3,.L0d9ab278
    li	$at,6405
    # Line 820
    li	$t9,1
    move	$a1,$zero
    b	.L0d9aa048
    li	$a2,2
.L0d9aa974:
    # Line 913
    sltu	$ra,$s5,$a0
    bnez	$ra,.L0d9aade0
    sltiu	$t3,$s5,6656
    sltu	$at,$a0,$s5
    bnez	$at,.L0d9ab21c
    li	$t0,0x8033
    # Line 929
    addiu	$s2,$s2,1
    sll	$a1,$s2,0x2
    la	$a0,__glSpanUnpack332Ubyte
    addu	$a1,$sp,$a1
    sw	$a0,356($a1)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$v1,$s5,6406
    # Line 929
    li	$a1,1
    # Line 991
    bnez	$v1,.L0d9ab610
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aa9c0:
    # Line 913
    bnez	$a3,.L0d9aae58
    nop
    beqz	$a2,.L0d9aa5cc
    # Line 925
    la	$t1,__glOdySpanUnpackUbyte
    addiu	$s2,$s2,1
    la	$a7,__glOdySpanUnpackUbyteI
    sll	$t0,$s2,0x2
    addu	$t0,$sp,$t0
    movz	$a7,$t1,$a1
    sw	$a7,356($t0)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a6,$s5,6406
    # Line 925
    li	$t2,1
    # Line 991
    bnez	$a6,.L0d9ab45c
    move	$a0,$t2
    move	$a2,$t2
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aaa08:
    # Line 903
    sw	$t1,360($sp)
    # Line 904
    li	$s2,1
    b	.L0d9aa130
    lw	$s5,12($s4)
.L0d9aaa18:
    # Line 991
    sltiu	$t2,$s5,6402
    bnez	$t2,.L0d9aaec8
    sltiu	$a2,$s5,6400
    move	$a2,$a1
    move	$t1,$zero
.L0d9aaa2c:
    sltiu	$t3,$s5,6403
    beqz	$t3,.L0d9aab28
    sltiu	$ra,$s5,6404
    # Line 1034
    lw	$t2,32($s4)
    # Line 1035
    lw	$a1,32($s1)
    # Line 1034
    xor	$t2,$t2,$t9
    sltiu	$t2,$t2,1
    # Line 1035
    xor	$a1,$a1,$t9
    # Line 1037
    bnez	$t2,.L0d9ab550
    # Line 1035
    sltiu	$a1,$a1,1
    # Line 1057
    sb	$a1,537($sp)
    # Line 1075
    beqz	$a1,.L0d9aa198
    # Line 1057
    sb	$t2,536($sp)
.L0d9aaa60:
    sd	$t1,568($sp)
    sd	$a2,560($sp)
    sd	$a5,816($sp)
    # Line 1078
    # lw $t9, -31400($gp) # &__glOdyUpdateDepthSpanInfo
    sd	$a4,824($sp)
    sd	$a0,576($sp)
    move	$a0,$s3
    sd	$v0,832($sp)
    bal __glOdyUpdateDepthSpanInfo
    addiu	$a1,$sp,0
    ld	$v0,832($sp)
    ld	$a0,576($sp)
    ld	$a4,824($sp)
    ld	$a5,816($sp)
    ld	$t8,808($sp)
    ld	$a2,560($sp)
    ld	$t1,568($sp)
    b	.L0d9aa198
    li	$t9,1
.L0d9aaaac:
    # Line 991
    bnez	$t3,.L0d9aaee8
    li	$a6,6407
    sltiu	$ra,$s5,6409
    bnez	$ra,.L0d9aa198
    li	$at,6409
    bne	$s5,$at,.L0d9aa5cc
    # Line 1013
    addiu	$s2,$s2,1
    sll	$a3,$s2,0x2
    la	$v1,__glSpanExpandLuminanceNS
    addu	$a1,$sp,$a3
    # Line 1014
    b	.L0d9aa198
    # Line 1013
    sw	$v1,356($a1)
.L0d9aaadc:
    # Line 1131
    bnez	$a6,.L0d9aaf04
    sltiu	$t3,$s5,6408
    sltiu	$a7,$s5,6411
    beqz	$a7,.L0d9ab394
    li	$a1,0x80e0
    # Line 1148
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t0,__glSpanReduceLuminanceAlpha
    addu	$t2,$sp,$t3
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1148
    sw	$t0,356($t2)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9aab18:
    # Line 906
    sw	$s2,360($sp)
    li	$s2,1
    b	.L0d9aa130
    lw	$s5,12($s4)
.L0d9aab28:
    # Line 991
    bnez	$ra,.L0d9aaf98
    li	$v1,6403
    sltiu	$at,$s5,6405
    beqz	$at,.L0d9ab3dc
    li	$v1,6405
    # Line 1019
    addiu	$s2,$s2,1
    sll	$a3,$s2,0x2
    la	$v1,__glSpanExpandGreenNS
    addu	$a1,$sp,$a3
    # Line 1020
    b	.L0d9aa198
    # Line 1019
    sw	$v1,356($a1)
.L0d9aab54:
    # Line 1131
    bnez	$a6,.L0d9ab01c
    sltiu	$a7,$s5,6401
    beqz	$a7,.L0d9ab048
    li	$a6,6401
    # Line 1217
    beqz	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1218
    lw	$s5,12($s1)
    li	$a0,0x8034
    sltu	$t0,$s5,$a0
    beqz	$t0,.L0d9aa298
    sltu	$a7,$a0,$s5
    sltiu	$a0,$s5,5125
    bnez	$a0,.L0d9abb9c
    sltiu	$a1,$s5,5122
    sltiu	$t1,$s5,5126
    bnez	$t1,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1218
    li	$a0,0x8032
    sltu	$t2,$s5,$a0
    beqz	$t2,.L0d9ab0a8
    sltu	$t8,$a0,$s5
    sltiu	$t3,$s5,6656
    beqz	$t3,.L0d9ab864
    sltiu	$a1,$s5,6657
    li	$t8,5126
    bne	$s5,$t8,.L0d9aa5cc
    nop
    b	.L0d9abb10
    # Line 1294
    addiu	$s2,$s2,1
.L0d9aabd0:
    b	.L0d9aa0d4
    # Line 860
    move	$v0,$a2
.L0d9aabd8:
    # Line 1307
    sll	$v0,$at,0x2
    # Line 1311
    # lw $t9, -31364($gp) # &__glOdySpanSwapBytes4
    # Line 1307
    addu	$ra,$sp,$v0
    move	$s2,$at
    # Line 1311
    bnez	$at,.L0d9aa2dc
    # Line 1307
    sw	$t9,356($ra)
.L0d9aabf0:
    # Line 1320
    addiu	$s2,$s2,1
    sll	$a2,$s2,0x2
    la	$v1,__glSpanCopy
    addu	$a0,$sp,$a2
    b	.L0d9aa2dc
    sw	$v1,356($a0)
.L0d9aac08:
    # Line 913
    sltu	$a3,$s5,$a0
    bnez	$a3,.L0d9ab128
    sltu	$a6,$a0,$s5
    bnez	$a6,.L0d9ab4a0
    li	$t1,0x8368
    # Line 975
    addiu	$s2,$s2,1
    sll	$t1,$s2,0x2
    la	$t0,__glSpanUnpack8888RevUint
    addu	$t1,$sp,$t1
    sw	$t0,356($t1)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a7,$s5,6406
    # Line 975
    li	$a1,1
    # Line 991
    bnez	$a7,.L0d9ab8f0
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aac50:
    # Line 1218
    sltiu	$t2,$a1,5125
    bnez	$t2,.L0d9ab1ac
    sltiu	$a0,$a1,5122
    sltiu	$t3,$a1,5126
    beqz	$t3,.L0d9ab09c
    li	$a0,0x8032
    bnez	$t1,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1277
    addiu	$s2,$s2,1
    sll	$ra,$s2,0x2
    la	$t8,__glOdySpanPackUint
    addu	$t9,$sp,$ra
    b	.L0d9aa2b4
    sw	$t8,356($t9)
.L0d9aac88:
    # Line 834
    lwc1	$f4,0($s6)
    dmtc1	$zero,$f5
    cvt.d.s	$f4,$f4
    c.eq.d	$f4,$f5
    li	$t3,1
    movt	$t3,$zero,$fcc0
    # Line 815
    li	$a1,1
    # Line 814
    li	$t9,1
    # Line 834
    beqz	$t3,.L0d9ab790
    move	$a2,$t9
.L0d9aacb0:
    b	.L0d9aa068
    li	$s0,1
.L0d9aacb8:
    # Line 913
    li	$a0,0x8036
    sltu	$at,$s5,$a0
    bnez	$at,.L0d9ab1e4
    li	$a2,0x8035
    sltu	$v1,$a0,$s5
    bnez	$v1,.L0d9aa5cc
    # Line 978
    addiu	$s2,$s2,1
    sll	$a6,$s2,0x2
    la	$a3,__glSpanUnpack_10_10_10_2_Uint
    addu	$a6,$sp,$a6
    sw	$a3,356($a6)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a2,$s5,6406
    # Line 978
    li	$a1,1
    # Line 991
    bnez	$a2,.L0d9ab778
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aad04:
    # Line 1088
    beqz	$s0,.L0d9aad30
    nop
    # Line 1089
    lwc1	$f6,0($t8)
    swc1	$f6,316($sp)
    # Line 1090
    addiu	$s2,$s2,1
    # Line 1089
    lwc1	$f5,0($s6)
    la	$a7,__glOdySpanShiftOffsetIndex
    # Line 1090
    sll	$t2,$s2,0x2
    addu	$t0,$sp,$t2
    # Line 1089
    swc1	$f5,332($sp)
    # Line 1090
    sw	$a7,356($t0)
.L0d9aad30:
    b	.L0d9aa23c
    la	$a1,__glOdySpanShiftOffsetIndex
.L0d9aad38:
    # Line 1094
    lw	$t3,36($s4)
    beq	$t3,$t9,.L0d9ab7fc
    nop
    # Line 1098
    beqz	$s0,.L0d9aad74
    # Line 1102
    ld	$v1,624($sp)
    # Line 1101
    lwc1	$f8,0($t8)
    swc1	$f8,316($sp)
    # Line 1102
    addiu	$s2,$s2,1
    # Line 1101
    lwc1	$f7,0($s6)
    la	$ra,__glOdySpanShiftOffsetIndex
    # Line 1102
    sll	$v0,$s2,0x2
    addu	$at,$sp,$v0
    # Line 1101
    swc1	$f7,332($sp)
    # Line 1102
    sw	$ra,356($at)
    ld	$v1,624($sp)
.L0d9aad74:
    beqz	$v1,.L0d9aa23c
    la	$a1,__glOdySpanShiftOffsetIndex
.L0d9aad7c:
    # Line 1106
    addiu	$s2,$s2,1
    la	$a3,__glOdySpanMapStencil
    sll	$a7,$s2,0x2
    addu	$a6,$sp,$a7
    # Line 1105
    addiu	$a7,$s3,1036
    sw	$a7,308($sp)
    b	.L0d9aa23c
    # Line 1106
    sw	$a3,356($a6)
.L0d9aad9c:
    # Line 797
    li	$t0,6407
    beq	$a0,$t0,.L0d9ab314
    # Line 807
    li	$t9,1
    # Line 810
    b	.L0d9aa040
    li	$t9,1
.L0d9aadb0:
    # Line 797
    li	$t1,6403
    bne	$a0,$t1,.L0d9aa040
    li	$t9,1
    move	$a2,$t9
    # Line 815
    b	.L0d9aa048
    move	$a1,$zero
.L0d9aadc8:
    # Line 991
    sltiu	$t2,$s5,6402
    bnez	$t2,.L0d9ab288
    sltiu	$v1,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9aade0:
    # Line 913
    bnez	$t3,.L0d9ab2a8
    li	$a3,5126
    sltiu	$ra,$s5,6657
    beqz	$ra,.L0d9aa5cc
    # Line 916
    la	$v1,__glSpanUnpackBitmap2
    addiu	$s2,$s2,1
    # Line 915
    ld	$a0,616($sp)
    # Line 916
    sll	$t3,$s2,0x2
    # Line 915
    sw	$a0,44($sp)
    # Line 916
    addu	$t3,$sp,$t3
    sw	$v1,356($t3)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$at,$s5,6406
    # Line 916
    li	$a1,1
    # Line 991
    bnez	$at,.L0d9ab83c
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9aae2c:
    # Line 913
    bnez	$ra,.L0d9ab2b8
    li	$a6,5123
    beqz	$a0,.L0d9aa5cc
    # Line 962
    la	$a0,__glSpanUnpackInt
    la	$at,__glSpanUnpackIntI
    addiu	$s2,$s2,1
    sll	$v1,$s2,0x2
    movz	$at,$a0,$a1
    addu	$v1,$sp,$v1
    # Line 965
    b	.L0d9aa6e8
    # Line 962
    sw	$at,356($v1)
.L0d9aae58:
    # Line 913
    li	$a2,5120
    bne	$s5,$a2,.L0d9aa5cc
    # Line 920
    la	$a7,__glSpanUnpackByte
    la	$a3,__glSpanUnpackByteI
    addiu	$s2,$s2,1
    sll	$a6,$s2,0x2
    movz	$a3,$a7,$a1
    addu	$a6,$sp,$a6
    b	.L0d9aa6e8
    sw	$a3,356($a6)
.L0d9aae80:
    # Line 991
    sltiu	$t0,$s5,6402
    bnez	$t0,.L0d9ab320
    sltiu	$t3,$s5,6400
    move	$a2,$t2
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9aae98:
    sltu	$t2,$s5,$a1
    bnez	$t2,.L0d9ab364
    li	$v1,0x8000
    sltu	$t3,$a1,$s5
    bnez	$t3,.L0d9ab59c
    li	$a1,0x80e1
    # Line 1004
    addiu	$s2,$s2,1
    sll	$v1,$s2,0x2
    la	$ra,__glSpanExpandBGRNS
    addu	$at,$sp,$v1
    # Line 1005
    b	.L0d9aa198
    # Line 1004
    sw	$ra,356($at)
.L0d9aaec8:
    # Line 991
    bnez	$a2,.L0d9aa5c0
    move	$a2,$a1
    sltiu	$a3,$s5,6401
    beqz	$a3,.L0d9ab600
    li	$t3,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9aaee8:
    bne	$s5,$a6,.L0d9aa5cc
    # Line 1001
    addiu	$s2,$s2,1
    sll	$t2,$s2,0x2
    la	$a7,__glSpanExpandRGBNS
    addu	$t0,$sp,$t2
    # Line 1002
    b	.L0d9aa198
    # Line 1001
    sw	$a7,356($t0)
.L0d9aaf04:
    # Line 1131
    bnez	$t3,.L0d9ab3f8
    li	$a7,6407
    sltiu	$t8,$s5,6409
    beqz	$t8,.L0d9ab720
    li	$t2,6409
    # Line 1217
    beqz	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    b	.L0d9aa284
    # Line 1217
    lw	$a1,12($s1)
.L0d9aaf30:
    # Line 1332
    addiu	$t8,$t2,7
    slt	$t9,$t2,$zero
    movz	$t8,$t2,$t9
    ld	$t9,584($sp)
    sra	$t8,$t8,0x3
    multu	$t9,$t8
    sll	$t8,$t8,0x3
    ld	$t1,840($sp)
    subu	$t8,$t2,$t8
    mflo	$s7
    # Line 1335
    sw	$t8,76($sp)
    b	.L0d9aa330
    # Line 1332
    addu	$s7,$a2,$s7
.L0d9aaf64:
    # Line 1342
    addiu	$ra,$a4,7
    slt	$at,$a4,$zero
    movz	$ra,$a4,$at
    ld	$at,592($sp)
    sra	$ra,$ra,0x3
    multu	$at,$ra
    sll	$ra,$ra,0x3
    ld	$v0,848($sp)
    subu	$ra,$a4,$ra
    mflo	$s8
    # Line 1345
    sw	$ra,156($sp)
    b	.L0d9aa378
    # Line 1342
    addu	$s8,$a2,$s8
.L0d9aaf98:
    # Line 991
    bne	$s5,$v1,.L0d9aa5cc
    # Line 1016
    addiu	$s2,$s2,1
    sll	$a6,$s2,0x2
    la	$a1,__glSpanExpandRedNS
    addu	$a3,$sp,$a6
    # Line 1017
    b	.L0d9aa198
    # Line 1016
    sw	$a1,356($a3)
.L0d9aafb4:
    # Line 1218
    sltu	$a7,$s5,$a0
    bnez	$a7,.L0d9ab424
    sltu	$t0,$a0,$s5
    bnez	$t0,.L0d9ab6f4
    li	$a0,0x8367
    # Line 1256
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t1,__glSpanPack565RevUshort
    addu	$t2,$sp,$t3
    # Line 1257
    b	.L0d9aa2b4
    # Line 1256
    sw	$t1,356($t2)
.L0d9aafe0:
    # Line 1131
    bnez	$t8,.L0d9ab474
    li	$a3,6403
    sltiu	$t9,$s5,6405
    beqz	$t9,.L0d9ab74c
    li	$ra,6405
    # Line 1160
    addiu	$s2,$s2,1
    sll	$v0,$s2,0x2
    la	$ra,__glSpanReduceGreenNS
    addu	$at,$sp,$v0
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1160
    sw	$ra,356($at)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab01c:
    # Line 1131
    bne	$t9,$s5,.L0d9aa5cc
    # Line 1151
    addiu	$s2,$s2,1
    sll	$a3,$s2,0x2
    la	$v1,__glSpanReduceRedAlphaNS
    addu	$a1,$sp,$a3
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1151
    sw	$v1,356($a1)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab048:
    # Line 1131
    bne	$s5,$a6,.L0d9aa5cc
    nop
    lw	$a7,36($s1)
    beq	$a7,$t9,.L0d9abe7c
    nop
    # Line 1217
    beqz	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1218
    lw	$s5,12($s1)
    li	$a0,0x8034
    sltu	$t0,$s5,$a0
    beqz	$t0,.L0d9aa294
    sltiu	$t1,$s5,5125
    bnez	$t1,.L0d9abe9c
    sltiu	$a0,$s5,5122
    sltiu	$t2,$s5,5126
    bnez	$t2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1279
    li	$t1,1
    # Line 1218
    li	$a0,0x8032
.L0d9ab09c:
    sltu	$t3,$s5,$a0
    bnez	$t3,.L0d9ab854
    sltu	$t8,$a0,$s5
.L0d9ab0a8:
    bnez	$t8,.L0d9aba7c
    li	$t1,0x8033
    # Line 1236
    addiu	$s2,$s2,1
    # Line 1237
    li	$v0,3
    sd	$v0,640($sp)
    # Line 1236
    sll	$at,$s2,0x2
    # lw $t9, -28576($gp) # &__glSpanPack332Ubyte
    addu	$ra,$sp,$at
    # Line 1237
    b	.L0d9aa2b4
    # Line 1236
    sw	$t9,356($ra)
.L0d9ab0d0:
    # Line 1304
    addiu	$s2,$s2,1
    sll	$a2,$s2,0x2
    la	$v1,__glOdySpanSwapBytes2
    addu	$a0,$sp,$a2
    b	.L0d9aa2d8
    sw	$v1,356($a0)
.L0d9ab0e8:
    # Line 1113
    swc1	$f0,316($sp)
    lwc1	$f15,0($s6)
    swc1	$f15,332($sp)
    # Line 1114
    lwc1	$f14,0($t8)
    swc1	$f14,320($sp)
    lwc1	$f13,0($s6)
    swc1	$f13,336($sp)
    # Line 1115
    lwc1	$f12,0($t8)
    swc1	$f12,324($sp)
    lwc1	$f11,0($s6)
    swc1	$f11,340($sp)
    # Line 1116
    lwc1	$f10,0($t8)
    swc1	$f10,328($sp)
    lwc1	$f9,0($s6)
    b	.L0d9aa208
    swc1	$f9,344($sp)
.L0d9ab128:
    # Line 913
    li	$a0,0x8366
    sltu	$a3,$s5,$a0
    bnez	$a3,.L0d9ab4e4
    li	$ra,0x8365
    sltu	$a6,$a0,$s5
    bnez	$a6,.L0d9aa5cc
    # Line 959
    addiu	$s2,$s2,1
    sll	$t1,$s2,0x2
    la	$t0,__glSpanUnpack1555RevUshort
    addu	$t1,$sp,$t1
    sw	$t0,356($t1)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a7,$s5,6406
    # Line 959
    li	$a1,1
    # Line 991
    bnez	$a7,.L0d9ab9a4
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab174:
    # Line 913
    bne	$s5,$t2,.L0d9aa5cc
    # Line 944
    addiu	$s2,$s2,1
    sll	$ra,$s2,0x2
    la	$s5,__glSpanUnpack565Ushort
    addu	$ra,$sp,$ra
    sw	$s5,356($ra)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$t3,$s5,6406
    # Line 944
    li	$a1,1
    # Line 991
    bnez	$t3,.L0d9abaa0
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab1ac:
    # Line 1218
    bnez	$a0,.L0d9ab51c
    sltiu	$a2,$a1,5121
    sltiu	$at,$a1,5123
    beqz	$at,.L0d9ab894
    sltiu	$t0,$s5,5124
    # Line 1243
    beqz	$t1,.L0d9abe14
    addiu	$s2,$s2,1
.L0d9ab1c8:
    la	$a0,__glOdySpanPackUshortI
.L0d9ab1cc:
    sll	$a1,$s2,0x2
    addu	$v1,$sp,$a1
    sw	$a0,356($v1)
    # Line 1245
    li	$v0,5122
    # Line 1246
    b	.L0d9aa2b4
    # Line 1245
    sw	$v0,84($sp)
.L0d9ab1e4:
    # Line 913
    bne	$s5,$a2,.L0d9aa5cc
    # Line 972
    addiu	$s2,$s2,1
    sll	$a7,$s2,0x2
    la	$a6,__glSpanUnpack8888Uint
    addu	$a7,$sp,$a7
    sw	$a6,356($a7)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a3,$s5,6406
    # Line 972
    li	$a1,1
    # Line 991
    bnez	$a3,.L0d9abb24
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab21c:
    # Line 913
    bne	$s5,$t0,.L0d9aa5cc
    # Line 950
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t2,__glSpanUnpack4444Ushort
    addu	$t3,$sp,$t3
    sw	$t2,356($t3)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$t1,$s5,6406
    # Line 950
    li	$a1,1
    # Line 991
    bnez	$t1,.L0d9abb3c
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab254:
    # Line 797
    beq	$a0,$t9,.L0d9aa744
    # Line 802
    li	$t9,1
    # Line 810
    b	.L0d9aa040
    li	$t9,1
.L0d9ab264:
    # Line 797
    li	$ra,6409
    beq	$a0,$ra,.L0d9ab314
    # Line 807
    li	$t9,1
    # Line 810
    b	.L0d9aa040
    li	$t9,1
.L0d9ab278:
    # Line 797
    beq	$a0,$at,.L0d9abaf0
    # Line 823
    li	$t9,1
    # Line 810
    b	.L0d9aa040
    li	$t9,1
.L0d9ab288:
    # Line 991
    bnez	$v1,.L0d9ab5b8
    move	$a2,$a1
    sltiu	$a2,$s5,6401
    beqz	$a2,.L0d9ab908
    li	$a2,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab2a8:
    # Line 913
    bne	$s5,$a3,.L0d9aa5cc
    nop
    b	.L0d9aa6ec
    # Line 991
    lw	$s5,8($s4)
.L0d9ab2b8:
    # Line 913
    bne	$s5,$a6,.L0d9aa5cc
    # Line 940
    la	$t2,__glOdySpanUnpackUshort
    addiu	$s2,$s2,1
    la	$t0,__glOdySpanUnpackUshortI
    sll	$t1,$s2,0x2
    addu	$t1,$sp,$t1
    movz	$t0,$t2,$a1
    sw	$t0,356($t1)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$a7,$s5,6406
    # Line 940
    li	$t2,1
    # Line 991
    bnez	$a7,.L0d9abad8
    move	$a0,$t2
    move	$a2,$t2
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab2f8:
    sltiu	$t2,$s5,6402
    bnez	$t2,.L0d9ab5c0
    sltiu	$t0,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab310:
    # Line 807
    li	$t9,1
.L0d9ab314:
    move	$a1,$zero
    b	.L0d9aa048
    li	$a2,7
.L0d9ab320:
    # Line 991
    bnez	$t3,.L0d9ab5f8
    move	$a2,$t2
    sltiu	$ra,$s5,6401
    bnez	$ra,.L0d9ab33c
    li	$at,6401
    bne	$s5,$at,.L0d9aa5cc
    nop
.L0d9ab33c:
    # Line 1029
    beqz	$a1,.L0d9abdcc
    # Line 1030
    li	$a2,1
    # Line 1029
    li	$a2,1
    sll	$ra,$s2,0x2
    move	$t1,$zero
    addu	$t3,$sp,$ra
.L0d9ab354:
    # Line 1030
    la	$at,__glOdySpanUnpackFloatI
    addiu	$s2,$s2,1
    b	.L0d9aa198
    sw	$at,360($t3)
.L0d9ab364:
    # Line 991
    bne	$s5,$v1,.L0d9aa5cc
    # Line 998
    addiu	$s2,$s2,1
    sll	$a6,$s2,0x2
    la	$a1,__glSpanPreReorderABGR
    addu	$a3,$sp,$a6
    # Line 999
    b	.L0d9aa198
    # Line 998
    sw	$a1,356($a3)
.L0d9ab380:
    # Line 1010
    sll	$t2,$s2,0x2
    la	$a7,__glSpanExpandRedAlphaNS
    addu	$t0,$sp,$t2
    b	.L0d9aa198
    sw	$a7,356($t0)
.L0d9ab394:
    # Line 1131
    sltu	$t3,$s5,$a1
    bnez	$t3,.L0d9ab628
    li	$at,0x8000
    sltu	$t8,$a1,$s5
    bnez	$t8,.L0d9ab940
    li	$a7,0x80e1
    # Line 1144
    # lw $t9, -28608($gp) # &__glSpanReorderBGRANS
    sll	$v0,$s2,0x2
    # Line 1145
    la	$at,__glSpanReduceBGRNS
    # Line 1144
    addu	$ra,$sp,$v0
    # Line 1145
    sw	$at,364($ra)
    addiu	$s2,$s2,2
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1144
    sw	$t9,360($ra)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab3dc:
    # Line 991
    bne	$s5,$v1,.L0d9aa5cc
    # Line 1022
    addiu	$s2,$s2,1
    sll	$a6,$s2,0x2
    la	$a1,__glSpanExpandBlueNS
    addu	$a3,$sp,$a6
    # Line 1023
    b	.L0d9aa198
    # Line 1022
    sw	$a1,356($a3)
.L0d9ab3f8:
    # Line 1131
    bne	$s5,$a7,.L0d9aa5cc
    # Line 1141
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t0,__glSpanReduceRGBNS
    addu	$t2,$sp,$t3
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1141
    sw	$t0,356($t2)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab424:
    # Line 1218
    li	$a0,0x8362
    sltu	$t8,$s5,$a0
    bnez	$t8,.L0d9ab7ac
    sltu	$t9,$a0,$s5
    bnez	$t9,.L0d9ab9ec
    li	$t0,0x8363
    # Line 1240
    addiu	$s2,$s2,1
    # Line 1241
    li	$v1,3
    sd	$v1,640($sp)
    # Line 1240
    sll	$v0,$s2,0x2
    la	$ra,__glSpanPack233RevUbyte
    addu	$at,$sp,$v0
    # Line 1241
    b	.L0d9aa2b4
    # Line 1240
    sw	$ra,356($at)
.L0d9ab45c:
    # Line 991
    sltiu	$a1,$s5,6402
    bnez	$a1,.L0d9ab7dc
    sltiu	$t3,$s5,6400
    move	$a2,$t2
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab474:
    # Line 1131
    bne	$s5,$a3,.L0d9aa5cc
    # Line 1157
    addiu	$s2,$s2,1
    sll	$t0,$s2,0x2
    la	$a6,__glSpanReduceRedNS
    addu	$a7,$sp,$t0
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1157
    sw	$a6,356($a7)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab4a0:
    # Line 913
    bne	$s5,$t1,.L0d9aa5cc
    # Line 981
    addiu	$s2,$s2,1
    sll	$s5,$s2,0x2
    la	$t3,__glSpanUnpack_2_10_10_10_RevUint
    addu	$s5,$sp,$s5
    sw	$t3,356($s5)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$t2,$s5,6406
    # Line 981
    li	$a1,1
    # Line 991
    bnez	$t2,.L0d9abc64
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab4d8:
    # Line 810
    li	$a2,9
    b	.L0d9aa048
    move	$a1,$zero
.L0d9ab4e4:
    # Line 913
    bne	$s5,$ra,.L0d9aa5cc
    # Line 953
    addiu	$s2,$s2,1
    sll	$a0,$s2,0x2
    la	$v1,__glSpanUnpack4444RevUshort
    addu	$a0,$sp,$a0
    sw	$v1,356($a0)
    # Line 991
    lw	$s5,8($s4)
    sltiu	$at,$s5,6406
    # Line 953
    li	$a1,1
    # Line 991
    bnez	$at,.L0d9abc94
    move	$a0,$a1
    move	$a2,$a1
    b	.L0d9aa178
    move	$t1,$zero
.L0d9ab51c:
    # Line 1218
    bnez	$a2,.L0d9ab8c8
    li	$a2,5120
    beqz	$a0,.L0d9aa5cc
    nop
    # Line 1230
    beqz	$t1,.L0d9abeb8
    addiu	$s2,$s2,1
.L0d9ab534:
    la	$a0,__glOdySpanPackUbyteI
.L0d9ab538:
    sll	$a7,$s2,0x2
    addu	$a6,$sp,$a7
    sw	$a0,356($a6)
    # Line 1232
    li	$a3,5121
    # Line 1233
    b	.L0d9aa2b4
    # Line 1232
    sw	$a3,84($sp)
.L0d9ab550:
    # Line 1037
    li	$ra,5125
    bnez	$a1,.L0d9abd34
    lw	$t3,12($s4)
    # Line 1062
    beq	$ra,$t3,.L0d9abbb8
    li	$t0,5123
    bne	$t3,$t0,.L0d9aa5cc
    nop
    # Line 1067
    sb	$a1,537($sp)
    sll	$ra,$s2,0x2
    la	$t2,__glOdySpanEyeZ16ToWindowZ
    addu	$t3,$sp,$ra
    # Line 1068
    b	.L0d9abbcc
    # Line 1067
    sw	$t2,356($t3)
.L0d9ab584:
    # Line 968
    addiu	$s2,$s2,1
    sll	$v1,$s2,0x2
    la	$at,__glOdySpanUnpackUint
    addu	$v1,$sp,$v1
    b	.L0d9aa470
    sw	$at,356($v1)
.L0d9ab59c:
    # Line 991
    bne	$s5,$a1,.L0d9aa5cc
    # Line 995
    addiu	$s2,$s2,1
    sll	$a7,$s2,0x2
    la	$a3,__glSpanPreReorderBGRA
    addu	$a6,$sp,$a7
    # Line 996
    b	.L0d9aa198
    # Line 995
    sw	$a3,356($a6)
.L0d9ab5b8:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9ab5c0:
    # Line 991
    bnez	$t0,.L0d9ab938
    move	$a2,$a1
    sltiu	$t1,$s5,6401
    beqz	$t1,.L0d9abbec
    li	$a7,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab5e0:
    sltiu	$t2,$s5,6402
    bnez	$t2,.L0d9ab918
    sltiu	$a3,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab5f8:
    b	.L0d9aa5c4
    # Line 1032
    move	$t1,$zero
.L0d9ab600:
    # Line 991
    bne	$s5,$t3,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab610:
    sltiu	$ra,$s5,6402
    bnez	$ra,.L0d9ab984
    sltiu	$ra,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab628:
    # Line 1131
    bne	$s5,$at,.L0d9aa5cc
    # Line 1138
    addiu	$s2,$s2,1
    sll	$a1,$s2,0x2
    la	$v0,__glSpanReorderABGRNS
    addu	$v1,$sp,$a1
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1138
    sw	$v0,356($v1)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab654:
    # Line 863
    lwc1	$f0,0($t8)
    cvt.d.s	$f0,$f0
    c.lt.d $f0,$f5
    bc1t .L0d9aa820
    ldc1	$f1,_lit8_3ff0000000000000
    c.lt.d $f1,$f0
    bc1t .L0d9aa824
    li	$v0,1
    b	.L0d9aa824
    move	$v0,$zero
.L0d9ab67c:
    # Line 864
    lwc1	$f0,4($t8)
    cvt.d.s	$f0,$f0
    c.lt.d $f0,$f5
    bc1t .L0d9aa82c
    ldc1	$f1,_lit8_3ff0000000000000
    c.lt.d $f1,$f0
    bc1f .L0d9aa830
    nop
    b	.L0d9aa830
    ori	$v0,$v0,0x2
.L0d9ab6a4:
    # Line 865
    lwc1	$f0,8($t8)
    cvt.d.s	$f0,$f0
    c.lt.d $f0,$f5
    bc1t .L0d9aa838
    ldc1	$f1,_lit8_3ff0000000000000
    c.lt.d $f1,$f0
    bc1f .L0d9aa83c
    nop
    b	.L0d9aa83c
    ori	$v0,$v0,0x4
.L0d9ab6cc:
    # Line 866
    lwc1	$f0,12($t8)
    cvt.d.s	$f0,$f0
    c.lt.d $f0,$f5
    bc1t .L0d9aa844
    ldc1	$f1,_lit8_3ff0000000000000
    c.lt.d	$f1,$f0
    bc1f	.L0d9aa848
    nop
    b	.L0d9aa848
    ori	$v0,$v0,0x8
.L0d9ab6f4:
    # Line 1218
    sltu	$a2,$s5,$a0
    bnez	$a2,.L0d9ab9bc
    sltu	$a3,$a0,$s5
    bnez	$a3,.L0d9abc0c
    li	$t0,0x8368
    # Line 1284
    addiu	$s2,$s2,1
    sll	$t0,$s2,0x2
    la	$a6,__glSpanPack8888RevUint
    addu	$a7,$sp,$t0
    # Line 1285
    b	.L0d9aa2b4
    # Line 1284
    sw	$a6,356($a7)
.L0d9ab720:
    # Line 1131
    bne	$s5,$t2,.L0d9aa5cc
    # Line 1154
    addiu	$s2,$s2,1
    sll	$t9,$s2,0x2
    la	$t3,__glSpanReduceLuminance
    addu	$t8,$sp,$t9
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1154
    sw	$t3,356($t8)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab74c:
    # Line 1131
    bne	$s5,$ra,.L0d9aa5cc
    # Line 1163
    addiu	$s2,$s2,1
    sll	$v1,$s2,0x2
    la	$at,__glSpanReduceBlueNS
    addu	$v0,$sp,$v1
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1163
    sw	$at,356($v0)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab778:
    # Line 991
    sltiu	$a2,$s5,6402
    bnez	$a2,.L0d9aba40
    sltiu	$v1,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab790:
    # Line 834
    lwc1	$f2,0($t8)
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d9aacb0
    nop
    b	.L0d9aa068
    # Line 836
    move	$s0,$zero
.L0d9ab7ac:
    # Line 1218
    li	$a0,0x8036
    sltu	$a3,$s5,$a0
    bnez	$a3,.L0d9aba60
    li	$a3,0x8035
    sltu	$a6,$a0,$s5
    bnez	$a6,.L0d9aa5cc
    # Line 1287
    addiu	$s2,$s2,1
    sll	$t1,$s2,0x2
    la	$a7,__glSpanPack_10_10_10_2_Uint
    addu	$t0,$sp,$t1
    # Line 1288
    b	.L0d9aa2b4
    # Line 1287
    sw	$a7,356($t0)
.L0d9ab7dc:
    # Line 991
    bnez	$t3,.L0d9aba98
    move	$a2,$t2
    sltiu	$ra,$s5,6401
    beqz	$ra,.L0d9abc84
    li	$a3,6401
    move	$a2,$t2
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab7fc:
    # Line 1094
    beqz	$s0,.L0d9abdb8
    lwc1	$f5,_lit_c1800000
    # Line 1096
    lwc1	$f3,0($t8)
    add.s	$f3,$f3,$f5
    swc1	$f3,316($sp)
    # Line 1097
    lwc1	$f0,0($s6)
.L0d9ab814:
    # Line 1098
    addiu	$s2,$s2,1
    sll	$v0,$s2,0x2
    addu	$at,$sp,$v0
    # Line 1102
    ld	$v0,624($sp)
    # Line 1097
    swc1	$f0,332($sp)
    la	$a1,__glOdySpanShiftOffsetIndex
    # Line 1102
    bnez	$v0,.L0d9aad7c
    # Line 1098
    sw	$a1,356($at)
    b	.L0d9aa23c
    nop
.L0d9ab83c:
    # Line 991
    sltiu	$v1,$s5,6402
    bnez	$v1,.L0d9abab8
    sltiu	$at,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab854:
    # Line 1218
    sltiu	$a0,$s5,6656
    bnez	$a0,.L0d9abafc
    li	$a2,5126
    sltiu	$a1,$s5,6657
.L0d9ab864:
    beqz	$a1,.L0d9aa5cc
    # Line 1221
    la	$a2,__glSpanUnpackUintI
    # Line 1222
    la	$a6,__glSpanPackBitmap
    # Line 1221
    sll	$a7,$s2,0x2
    addu	$a3,$sp,$a7
    # Line 1220
    ld	$a7,608($sp)
    sw	$a7,124($sp)
    # Line 1222
    sw	$a6,364($a3)
    addiu	$s2,$s2,2
    # Line 1223
    b	.L0d9aa2b4
    # Line 1221
    sw	$a2,360($a3)
.L0d9ab890:
    # Line 1218
    sltiu	$t0,$s5,5124
.L0d9ab894:
    bnez	$t0,.L0d9abb54
    li	$a1,5123
    sltiu	$t2,$s5,5125
    beqz	$t2,.L0d9aa5cc
    nop
    bnez	$t1,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1272
    addiu	$s2,$s2,1
    sll	$t9,$s2,0x2
    la	$t3,__glSpanPackInt
    addu	$t8,$sp,$t9
    b	.L0d9aa2b4
    sw	$t3,356($t8)
.L0d9ab8c8:
    # Line 1218
    bne	$a2,$a1,.L0d9aa5cc
    nop
    # Line 1225
    beqz	$t1,.L0d9abfa0
    addiu	$s2,$s2,1
.L0d9ab8d8:
    la	$a0,__glOdySpanPackUbyteI
.L0d9ab8dc:
    sll	$at,$s2,0x2
    addu	$ra,$sp,$at
    sw	$a0,356($ra)
    b	.L0d9aa2b4
    # Line 1227
    sw	$a2,84($sp)
.L0d9ab8f0:
    # Line 991
    sltiu	$v1,$s5,6402
    bnez	$v1,.L0d9abb7c
    sltiu	$ra,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab908:
    bne	$s5,$a2,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab918:
    bnez	$a3,.L0d9abbfc
    move	$a2,$a1
    sltiu	$a6,$s5,6401
    beqz	$a6,.L0d9abd98
    li	$t0,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab938:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9ab940:
    # Line 1131
    bne	$s5,$a7,.L0d9aa5cc
    # Line 1135
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t0,__glSpanReorderBGRANS
    addu	$t2,$sp,$t3
    # Line 1217
    beqz	$a0,.L0d9aa2b4
    # Line 1135
    sw	$t0,356($t2)
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab96c:
    beqz	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    beqz	$a2,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1217
    b	.L0d9aa284
    lw	$a1,12($s1)
.L0d9ab984:
    # Line 991
    bnez	$ra,.L0d9abc04
    move	$a2,$a1
    sltiu	$at,$s5,6401
    beqz	$at,.L0d9abda8
    li	$t1,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9ab9a4:
    sltiu	$v1,$s5,6402
    bnez	$v1,.L0d9abc28
    sltiu	$ra,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9ab9bc:
    # Line 1218
    li	$a0,0x8366
    sltu	$a1,$s5,$a0
    bnez	$a1,.L0d9abc48
    li	$v0,0x8365
    sltu	$a2,$a0,$s5
    bnez	$a2,.L0d9aa5cc
    # Line 1268
    addiu	$s2,$s2,1
    sll	$a7,$s2,0x2
    la	$a3,__glSpanPack1555RevUshort
    addu	$a6,$sp,$a7
    # Line 1269
    b	.L0d9aa2b4
    # Line 1268
    sw	$a3,356($a6)
.L0d9ab9ec:
    # Line 1218
    bne	$s5,$t0,.L0d9aa5cc
    # Line 1253
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t1,__glSpanPack565Ushort
    addu	$t2,$sp,$t3
    # Line 1254
    b	.L0d9aa2b4
    # Line 1253
    sw	$t1,356($t2)
.L0d9aba08:
    # Line 1172
    beqz	$t8,.L0d9abef8
    # Line 1173
    lbu	$t8,529($sp)
    # Line 1180
    lw	$s5,12($s4)
    li	$t9,5123
    beq	$s5,$t9,.L0d9abdd4
    nop
    beq	$ra,$s5,.L0d9abde4
    nop
.L0d9aba28:
    # Line 1187
    addiu	$s2,$s2,1
    sll	$v0,$s2,0x2
    la	$ra,__glOdySpanFloatToEyeZ24
    addu	$at,$sp,$v0
    b	.L0d9aa2b4
    sw	$ra,356($at)
.L0d9aba40:
    # Line 991
    bnez	$v1,.L0d9abc7c
    move	$a2,$a1
    sltiu	$a2,$s5,6401
    beqz	$a2,.L0d9abe1c
    li	$at,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9aba60:
    # Line 1218
    bne	$s5,$a3,.L0d9aa5cc
    # Line 1281
    addiu	$s2,$s2,1
    sll	$t0,$s2,0x2
    la	$a6,__glSpanPack8888Uint
    addu	$a7,$sp,$t0
    # Line 1282
    b	.L0d9aa2b4
    # Line 1281
    sw	$a6,356($a7)
.L0d9aba7c:
    # Line 1218
    bne	$s5,$t1,.L0d9aa5cc
    # Line 1259
    addiu	$s2,$s2,1
    sll	$t8,$s2,0x2
    la	$t2,__glSpanPack4444Ushort
    addu	$t3,$sp,$t8
    # Line 1260
    b	.L0d9aa2b4
    # Line 1259
    sw	$t2,356($t3)
.L0d9aba98:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abaa0:
    # Line 991
    sltiu	$ra,$s5,6402
    bnez	$ra,.L0d9abcac
    sltiu	$a7,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9abab8:
    bnez	$at,.L0d9abccc
    move	$a2,$a1
    sltiu	$v1,$s5,6401
    beqz	$v1,.L0d9abe54
    li	$a3,6401
    move	$a2,$a1
    b	.L0d9ab354
    move	$t1,$zero
.L0d9abad8:
    sltiu	$a1,$s5,6402
    bnez	$a1,.L0d9abcd4
    sltiu	$t1,$s5,6400
    move	$a2,$t2
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9abaf0:
    # Line 823
    move	$a1,$zero
    b	.L0d9aa048
    li	$a2,4
.L0d9abafc:
    # Line 1218
    bne	$s5,$a2,.L0d9aa5cc
    nop
    beqz	$t1,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    # Line 1294
    addiu	$s2,$s2,1
.L0d9abb10:
    sll	$a7,$s2,0x2
    la	$a3,__glSpanUnpackUintI
    addu	$a6,$sp,$a7
    b	.L0d9aa2b4
    sw	$a3,356($a6)
.L0d9abb24:
    # Line 991
    sltiu	$t0,$s5,6402
    bnez	$t0,.L0d9abcf4
    sltiu	$ra,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9abb3c:
    sltiu	$t1,$s5,6402
    bnez	$t1,.L0d9abd14
    sltiu	$v1,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9abb54:
    # Line 1218
    bne	$a1,$s5,.L0d9aa5cc
    nop
    # Line 1248
    beqz	$t1,.L0d9abff4
    addiu	$s2,$s2,1
.L0d9abb64:
    la	$a0,__glOdySpanPackUshortI
.L0d9abb68:
    sll	$t3,$s2,0x2
    addu	$t2,$sp,$t3
    sw	$a0,356($t2)
    # Line 1251
    b	.L0d9aa2b4
    # Line 1250
    sw	$a1,84($sp)
.L0d9abb7c:
    # Line 991
    bnez	$ra,.L0d9abd78
    move	$a2,$a1
    sltiu	$at,$s5,6401
    beqz	$at,.L0d9abec0
    li	$t2,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abb9c:
    # Line 1218
    bnez	$a1,.L0d9abd80
    sltiu	$a7,$s5,5121
    sltiu	$v0,$s5,5123
    beqz	$v0,.L0d9abee0
    sltiu	$t3,$s5,5124
    # Line 1243
    b	.L0d9ab1c8
    addiu	$s2,$s2,1
.L0d9abbb8:
    # Line 1064
    sb	$a1,537($sp)
    sll	$a6,$s2,0x2
    la	$v1,__glOdySpanEyeZ24ToWindowZ
    addu	$a3,$sp,$a6
    sw	$v1,356($a3)
.L0d9abbcc:
    # Line 1073
    sb	$zero,536($sp)
    sd	$t1,568($sp)
    sd	$a2,560($sp)
    sd	$a5,816($sp)
    sd	$a4,824($sp)
    sd	$a0,576($sp)
    # Line 1071
    b	.L0d9aaa60
    sd	$v0,832($sp)
.L0d9abbec:
    # Line 991
    bne	$s5,$a7,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abbfc:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abc04:
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abc0c:
    # Line 1218
    bne	$s5,$t0,.L0d9aa5cc
    # Line 1290
    addiu	$s2,$s2,1
    sll	$t3,$s2,0x2
    la	$t1,__glSpanPack_2_10_10_10_RevUint
    addu	$t2,$sp,$t3
    # Line 1291
    b	.L0d9aa2b4
    # Line 1290
    sw	$t1,356($t2)
.L0d9abc28:
    # Line 991
    bnez	$ra,.L0d9abdc4
    move	$a2,$a1
    sltiu	$at,$s5,6401
    beqz	$at,.L0d9abf18
    li	$v1,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abc48:
    # Line 1218
    bne	$s5,$v0,.L0d9aa5cc
    # Line 1262
    addiu	$s2,$s2,1
    sll	$a1,$s2,0x2
    la	$v1,__glSpanPack4444RevUshort
    addu	$a0,$sp,$a1
    # Line 1263
    b	.L0d9aa2b4
    # Line 1262
    sw	$v1,356($a0)
.L0d9abc64:
    # Line 991
    sltiu	$a2,$s5,6402
    bnez	$a2,.L0d9abdf4
    sltiu	$t3,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9abc7c:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abc84:
    # Line 991
    bne	$s5,$a3,.L0d9aa5cc
    move	$a2,$t2
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abc94:
    sltiu	$a6,$s5,6402
    bnez	$a6,.L0d9abe2c
    sltiu	$v1,$s5,6400
    move	$a2,$a1
    b	.L0d9aaa2c
    move	$t1,$zero
.L0d9abcac:
    bnez	$a7,.L0d9abe4c
    move	$a2,$a1
    sltiu	$t0,$s5,6401
    beqz	$t0,.L0d9abf30
    li	$a2,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abccc:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abcd4:
    # Line 991
    bnez	$t1,.L0d9abe64
    move	$a2,$t2
    sltiu	$t3,$s5,6401
    beqz	$t3,.L0d9abf48
    li	$a3,6401
    move	$a2,$t2
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abcf4:
    bnez	$ra,.L0d9abe6c
    move	$a2,$a1
    sltiu	$at,$s5,6401
    beqz	$at,.L0d9abf58
    li	$a6,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abd14:
    bnez	$v1,.L0d9abe74
    move	$a2,$a1
    sltiu	$a2,$s5,6401
    beqz	$a2,.L0d9abf68
    li	$a7,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abd34:
    # Line 1038
    sb	$a1,537($sp)
    beq	$ra,$t3,.L0d9abfa8
    sb	$t2,536($sp)
    li	$a3,5123
    bne	$t3,$a3,.L0d9aa198
    nop
    # Line 1046
    lbu	$a6,0($s4)
    beqz	$a6,.L0d9aa198
    # Line 1048
    sll	$a3,$s2,0x2
    la	$a7,__glOdySpanEyeZ16ToEyeZ24
    addu	$a1,$sp,$a3
    # Line 1049
    beqz	$s0,.L0d9ac0b0
    # Line 1048
    sw	$a7,356($a1)
    # Line 1050
    la	$a6,__glOdySpanEyeZ24ToFloat2
.L0d9abd6c:
    addiu	$s2,$s2,1
    b	.L0d9aa198
    sw	$a6,360($a1)
.L0d9abd78:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abd80:
    # Line 1218
    bnez	$a7,.L0d9abed0
    li	$a2,5120
    beqz	$a1,.L0d9aa5cc
    nop
    # Line 1230
    b	.L0d9ab534
    addiu	$s2,$s2,1
.L0d9abd98:
    # Line 991
    bne	$s5,$t0,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abda8:
    bne	$s5,$t1,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abdb8:
    # Line 1097
    mtc1	$zero,$f0
    b	.L0d9ab814
    # Line 1096
    swc1	$f5,316($sp)
.L0d9abdc4:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abdcc:
    b	.L0d9aa198
    # Line 1030
    move	$t1,$zero
.L0d9abdd4:
    # Line 1182
    beqz	$s0,.L0d9ac074
    lbu	$a0,0($s4)
    # Line 1183
    sltiu	$t2,$a0,1
.L0d9abde0:
    or	$s0,$s0,$t2
.L0d9abde4:
    # Line 1185
    bnez	$s0,.L0d9aba28
    nop
    b	.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
.L0d9abdf4:
    # Line 991
    bnez	$t3,.L0d9abf28
    move	$a2,$a1
    sltiu	$ra,$s5,6401
    beqz	$ra,.L0d9abfc4
    li	$at,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abe14:
    b	.L0d9ab1cc
    # Line 1243
    la	$a0,__glSpanPackShort
.L0d9abe1c:
    # Line 991
    bne	$s5,$at,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abe2c:
    bnez	$v1,.L0d9abf40
    move	$a2,$a1
    sltiu	$a2,$s5,6401
    beqz	$a2,.L0d9abfd4
    li	$v1,6401
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abe4c:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abe54:
    # Line 991
    bne	$s5,$a3,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9ab354
    move	$t1,$zero
.L0d9abe64:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abe6c:
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abe74:
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abe7c:
    # Line 1131
    beqz	$s0,.L0d9abffc
    # Line 1200
    mtc1	$zero,$f4
    # Line 1203
    addiu	$s2,$s2,1
    sll	$t0,$s2,0x2
    la	$a6,__glOdySpanPackPioStencil
    addu	$a7,$sp,$t0
    b	.L0d9aa2b4
    sw	$a6,356($a7)
.L0d9abe9c:
    # Line 1218
    bnez	$a0,.L0d9abf78
    sltiu	$t0,$s5,5121
    sltiu	$t1,$s5,5123
    beqz	$t1,.L0d9ab890
    # Line 1246
    li	$t1,1
    # Line 1243
    b	.L0d9ab1c8
    addiu	$s2,$s2,1
.L0d9abeb8:
    b	.L0d9ab538
    # Line 1230
    la	$a0,__glOdySpanPackUbyte
.L0d9abec0:
    # Line 991
    bne	$s5,$t2,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abed0:
    # Line 1218
    bne	$a2,$s5,.L0d9aa5cc
    nop
    # Line 1225
    b	.L0d9ab8d8
    addiu	$s2,$s2,1
.L0d9abee0:
    # Line 1218
    bnez	$t3,.L0d9abf90
    li	$a1,5123
    bnez	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    b	.L0d9aa5d0
    ld	$s7,776($sp)
.L0d9abef8:
    # Line 1173
    beqz	$t8,.L0d9ac01c
    lbu	$a3,528($sp)
.L0d9abf00:
    # Line 1175
    addiu	$s2,$s2,1
    sll	$at,$s2,0x2
    # lw $t9, -31376($gp) # &__glOdySpanOrthoZToEyeZ24
    addu	$ra,$sp,$at
    b	.L0d9aa2b4
    sw	$t9,356($ra)
.L0d9abf18:
    # Line 991
    bne	$s5,$v1,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abf28:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abf30:
    # Line 991
    bne	$s5,$a2,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abf40:
    # Line 1032
    b	.L0d9aa5c4
    move	$t1,$zero
.L0d9abf48:
    # Line 991
    bne	$s5,$a3,.L0d9aa5cc
    move	$a2,$t2
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abf58:
    bne	$s5,$a6,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abf68:
    bne	$s5,$a7,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abf78:
    # Line 1218
    bnez	$t0,.L0d9abfe4
    li	$a2,5120
    beqz	$a0,.L0d9aa5cc
    nop
    # Line 1230
    b	.L0d9ab534
    addiu	$s2,$s2,1
.L0d9abf90:
    # Line 1218
    bne	$a1,$s5,.L0d9aa5cc
    nop
    # Line 1248
    b	.L0d9abb64
    addiu	$s2,$s2,1
.L0d9abfa0:
    b	.L0d9ab8dc
    # Line 1225
    la	$a0,__glSpanPackByte
.L0d9abfa8:
    # Line 1040
    beqz	$s0,.L0d9ac09c
    nop
    # Line 1042
    sll	$ra,$s2,0x2
.L0d9abfb4:
    la	$t2,__glOdySpanEyeZ24ToFloat2
    addu	$t3,$sp,$ra
    b	.L0d9aa198
    sw	$t2,356($t3)
.L0d9abfc4:
    # Line 991
    bne	$s5,$at,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abfd4:
    bne	$s5,$v1,.L0d9aa5cc
    move	$a2,$a1
    b	.L0d9aa198
    move	$t1,$zero
.L0d9abfe4:
    # Line 1218
    bne	$a2,$s5,.L0d9aa5cc
    nop
    # Line 1225
    b	.L0d9ab8d8
    addiu	$s2,$s2,1
.L0d9abff4:
    b	.L0d9abb68
    # Line 1248
    la	$a0,__glOdySpanPackUshort
.L0d9abffc:
    # Line 1200
    lwc1	$f5,_lit_41800000
    # Line 1201
    addiu	$s2,$s2,1
    # Line 1200
    swc1	$f4,332($sp)
    # Line 1201
    sll	$a2,$s2,0x2
    # Line 1200
    swc1	$f5,316($sp)
    # Line 1201
    addu	$a0,$sp,$a2
    b	.L0d9aa2b4
    sw	$a1,356($a0)
.L0d9ac01c:
    # Line 1173
    bnez	$a3,.L0d9abf00
    nop
    # Line 1177
    addiu	$s2,$s2,1
    sll	$t0,$s2,0x2
    la	$a6,__glOdySpanWindowZToEyeZ24
    addu	$a7,$sp,$t0
    b	.L0d9aa2b4
    sw	$a6,356($a7)
.L0d9ac03c:
    # Line 876
    lw	$t1,32($s1)
    lw	$t2,32($s4)
    bne	$t1,$t2,.L0d9aa108
    nop
    b	.L0d9aa87c
    li	$t3,6401
.L0d9ac054:
    lw	$t3,36($s1)
    lw	$ra,36($s4)
    bne	$t3,$ra,.L0d9aa10c
    andi	$a5,$a2,0xff
    b	.L0d9aa884
    andi	$a5,$a2,0xff
.L0d9ac06c:
    # Line 901
    b	.L0d9aa8a4
    move	$s2,$zero
.L0d9ac074:
    # Line 1182
    bnez	$a0,.L0d9aa2b8
    # Line 1299
    andi	$a1,$a4,0xff
    b	.L0d9abde0
    # Line 1183
    sltiu	$t2,$a0,1
.L0d9ac084:
    # Line 904
    li	$s2,1
    b	.L0d9aa8a4
    # Line 903
    sw	$at,360($sp)
.L0d9ac090:
    # Line 906
    li	$s2,1
    b	.L0d9aa8a4
    sw	$v1,360($sp)
.L0d9ac09c:
    # Line 1040
    lw	$a1,12($s1)
    bne	$ra,$a1,.L0d9abfb4
    # Line 1042
    sll	$ra,$s2,0x2
    b	.L0d9aa198
    nop
.L0d9ac0b0:
    # Line 1049
    lw	$a3,12($s1)
    bne	$ra,$a3,.L0d9abd6c
    # Line 1050
    la	$a6,__glOdySpanEyeZ24ToFloat2
    b	.L0d9aa198
    nop
.end __glOdysseyImageConvertHostImage

# Function: __glOdysseyImageCalcSuitableGfxFormatForReadback
# Declared: Line 3638 (Source lines: 3642-3702)
# Address: 0x0d9ac0d0 - 0x0d9ac1e4 (Size: 276 bytes, Frame: 0)
.globl __glOdysseyImageCalcSuitableGfxFormatForReadback
.ent __glOdysseyImageCalcSuitableGfxFormatForReadback
__glOdysseyImageCalcSuitableGfxFormatForReadback:
    # Line 3642
    li	$at,6408
    # Line 3694
    li	$a5,-1
    # Line 3642
    beq	$a0,$at,.L0d9ac11c
    # Line 3700
    li	$v1,-1
    # Line 3681
    li	$a4,5123
    # Line 3642
    li	$v0,6400
    beq	$a0,$v0,.L0d9ac100
    # Line 3681
    li	$a0,5121
    # Line 3700
    sw	$v1,0($a2)
    # Line 3701
    sw	$v1,0($a3)
    # Line 3651
    jr	$ra
    # Line 3702
    move	$v0,$zero
.L0d9ac100:
    # Line 3681
    beq	$a1,$a0,.L0d9ac184
    # Line 3696
    move	$v0,$zero
    # Line 3681
    beq	$a1,$a4,.L0d9ac164
    # Line 3689
    li	$t8,17
    # Line 3694
    sw	$a5,0($a2)
    # Line 3651
    jr	$ra
    # Line 3695
    sw	$a5,0($a3)
.L0d9ac11c:
    # Line 3676
    move	$v0,$zero
    # Line 3646
    li	$a6,5121
    li	$t2,0x8036
    li	$t1,0x8034
    beq	$a1,$a6,.L0d9ac198
    # Line 3674
    li	$t3,-1
    # Line 3646
    li	$a7,5123
    beq	$a1,$a7,.L0d9ac1ac
    li	$t0,0x8033
    beq	$a1,$t0,.L0d9ac1c4
    # Line 3659
    li	$a4,7
    # Line 3646
    beq	$a1,$t1,.L0d9ac1d4
    # Line 3664
    li	$a5,8
    # Line 3646
    beq	$a1,$t2,.L0d9ac174
    # Line 3669
    li	$v1,11
    # Line 3674
    sw	$t3,0($a2)
    # Line 3651
    jr	$ra
    # Line 3675
    sw	$t3,0($a3)
.L0d9ac164:
    # Line 3689
    sw	$t8,0($a2)
    # Line 3691
    li	$v0,1
    # Line 3651
    jr	$ra
    # Line 3690
    sw	$zero,0($a3)
.L0d9ac174:
    # Line 3669
    sw	$v1,0($a2)
    # Line 3670
    li	$v0,1
    # Line 3651
    jr	$ra
    # Line 3670
    sw	$v0,0($a3)
.L0d9ac184:
    # Line 3684
    li	$a0,16
    sw	$a0,0($a2)
    # Line 3686
    li	$v0,1
    # Line 3651
    jr	$ra
    # Line 3685
    sw	$zero,0($a3)
.L0d9ac198:
    # Line 3649
    li	$v1,10
    sw	$v1,0($a2)
    # Line 3650
    li	$v0,1
    # Line 3651
    jr	$ra
    # Line 3650
    sw	$v0,0($a3)
.L0d9ac1ac:
    # Line 3656
    li	$v0,1
    # Line 3654
    li	$a1,12
    sw	$a1,0($a2)
    # Line 3655
    li	$a0,2
    # Line 3651
    jr	$ra
    # Line 3655
    sw	$a0,0($a3)
.L0d9ac1c4:
    # Line 3659
    sw	$a4,0($a2)
    # Line 3661
    li	$v0,1
    # Line 3651
    jr	$ra
    # Line 3660
    sw	$zero,0($a3)
.L0d9ac1d4:
    # Line 3664
    sw	$a5,0($a2)
    # Line 3666
    li	$v0,1
    # Line 3651
    jr	$ra
    # Line 3665
    sw	$zero,0($a3)
.end __glOdysseyImageCalcSuitableGfxFormatForReadback

# Function: __glOdysseyImageCalcSuitableHostFormatForDownload
# Declared: Line 3708 (Source lines: 3712-3748)
# Address: 0x0d9ac1f0 - 0x0d9ac280 (Size: 144 bytes, Frame: 0)
.globl __glOdysseyImageCalcSuitableHostFormatForDownload
.ent __glOdysseyImageCalcSuitableHostFormatForDownload
__glOdysseyImageCalcSuitableHostFormatForDownload:
    # Line 3712
    beqz	$a2,.L0d9ac240
    # Line 3748
    li	$v0,1
    # Line 3712
    li	$at,3
    beq	$a2,$at,.L0d9ac254
    # Line 3748
    li	$v0,1
    # Line 3712
    li	$v0,16
    beq	$a2,$v0,.L0d9ac268
    li	$a5,5123
    li	$v1,17
    beq	$a2,$v1,.L0d9ac22c
    # Line 3748
    li	$v0,1
    # Line 3743
    li	$a0,6408
    sw	$a0,0($a3)
    # Line 3748
    jr	$ra
    # Line 3744
    sw	$a5,0($a4)
.L0d9ac22c:
    # Line 3737
    li	$a1,6400
    sw	$a1,0($a3)
    # Line 3748
    li	$v0,1
    jr	$ra
    # Line 3738
    sw	$a5,0($a4)
.L0d9ac240:
    # Line 3722
    li	$a5,6406
    sw	$a5,0($a3)
    # Line 3723
    li	$a2,5121
    # Line 3748
    jr	$ra
    # Line 3723
    sw	$a2,0($a4)
.L0d9ac254:
    # Line 3727
    li	$a7,6406
    sw	$a7,0($a3)
    # Line 3728
    li	$a6,5123
    # Line 3748
    jr	$ra
    # Line 3728
    sw	$a6,0($a4)
.L0d9ac268:
    # Line 3748
    li	$v0,1
    # Line 3732
    li	$t1,6400
    sw	$t1,0($a3)
    # Line 3733
    li	$t0,5121
    # Line 3748
    jr	$ra
    # Line 3733
    sw	$t0,0($a4)
.end __glOdysseyImageCalcSuitableHostFormatForDownload

# Function: __glOdysseyImageZoomHostImage
# Declared: Line 3752 (Source lines: 3755-3872)
# Address: 0x0d9ac280 - 0x0d9ac73c (Size: 1212 bytes, Frame: 160)
.globl __glOdysseyImageZoomHostImage
.ent __glOdysseyImageZoomHostImage
__glOdysseyImageZoomHostImage:
    # Line 3755
    addiu	$sp,$sp,-160
    sd	$s0,64($sp)
    sd	$s2,104($sp)
    sd	$s5,40($sp)
    sd	$s6,120($sp)
    sd	$s7,56($sp)
    sd	$s8,112($sp)
    sd	$s4,72($sp)
    move	$s4,$a1
    # Line 3783
    lw	$a1,12($a2)
    # Line 3755
    sd	$s1,48($sp)
    lui	$at,0x15
    move	$s1,$a0
    # Line 3783
    lw	$a0,8($a2)
    # Line 3755
    addiu	$at,$at,-15600
    sd	$gp,96($sp)
    addu	$gp,$t9,$at
    # Line 3783
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    # Line 3755
    sd	$ra,80($sp)
    sd	$s3,88($sp)
    move	$s3,$a3
    # Line 3783
    jal	__glSpecElementsPerGroup
    sd	$a2,136($sp)
    # Line 3784
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    ld	$a0,136($sp)
    # Line 3783
    move	$s0,$v0
    # Line 3784
    jal	__glSpecBytesPerElement
    lw	$a0,12($a0)
    # Line 3785
    multu	$v0,$s0
    # Line 3787
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    lw	$a1,12($s1)
    # Line 3785
    mflo	$s2
    # Line 3787
    jal	__glSpecElementsPerGroup
    lw	$a0,8($s1)
    # Line 3788
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    lw	$a0,12($s1)
    # Line 3787
    move	$s5,$v0
    # Line 3788
    jal	__glSpecBytesPerElement
    sdc1	$f24,144($sp)
    # Line 3795
    multu	$v0,$s5
    # Line 3804
    ld	$a5,136($sp)
    lw	$a7,16($a5)
    # Line 3795
    mflo	$s0
    nop
    nop
    # Line 3804
    multu	$a7,$s2
    # Line 3788
    lw	$a5,24($a5)
    # Line 3793
    move	$a3,$s2
    # Line 3788
    sltu	$a4,$a5,$s2
    movz	$a3,$a5,$a4
    # Line 3804
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f24
    mflo	$a6
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f12
    cvt.s.l	$f24,$f24
    # Line 3795
    lw	$a2,24($s1)
    # Line 3804
    cvt.s.l	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 3798
    move	$s6,$s0
    # Line 3795
    sltu	$a1,$a2,$s0
    movz	$s6,$a2,$a1
    # Line 3804
    jal	ceilf
    div.s	$f12,$f12,$f24
    # Line 3808
    lw	$t3,16($s1)
    multu	$t3,$s0
    dsll32	$t1,$s6,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f13
    mflo	$t2
    dsll32	$t2,$t2,0x0
    # Line 3804
    mul.s	$f14,$f0,$f24
    # Line 3808
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f12
    # Line 3804
    trunc.l.s	$f14,$f14
    # Line 3808
    cvt.s.l	$f13,$f13
    cvt.s.l	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    # Line 3804
    dmfc1	$t0,$f14
    sll	$t0,$t0,0x0
    sd	$t0,128($sp)
    # Line 3808
    sdc1	$f13,0($sp)
    jal	ceilf
    div.s	$f12,$f12,$f13
    lw	$t3,0($s4)
    lw	$a3,8($s4)
    slt	$t8,$a3,$t3
    beqz	$t8,.L0d9ac6d8
    ldc1	$f24,144($sp)
    sd	$t3,8($sp)
.L0d9ac3f0:
    # Line 3817
    move	$t2,$a3
.L0d9ac3f4:
    lw	$a4,8($s3)
    lw	$t1,0($s3)
    slt	$ra,$a4,$t1
    beqz	$ra,.L0d9ac6ec
    slt	$t9,$t1,$a4
    move	$t0,$t1
.L0d9ac40c:
    sd	$a4,16($sp)
.L0d9ac410:
    lw	$a6,12($s4)
    lw	$a5,4($s4)
    slt	$v0,$a6,$a5
    beqz	$v0,.L0d9ac6fc
    # Line 3818
    slt	$at,$a5,$a6
    sd	$a5,24($sp)
.L0d9ac428:
    sd	$a6,32($sp)
.L0d9ac42c:
    lw	$s7,4($s3)
    lw	$v0,12($s3)
    slt	$a1,$v0,$s7
    beqz	$a1,.L0d9ac70c
    move	$s8,$s7
.L0d9ac440:
    move	$t9,$v0
.L0d9ac444:
    # Line 3820
    mult	$a3,$a6
    mflo	$at
    nop
    nop
    multu	$s2,$at
    lw	$a7,44($s1)
    # Line 3828
    slt	$t8,$s7,$v0
    # Line 3820
    mflo	$ra
    # Line 3828
    move	$s6,$s7
    # Line 3820
    addu	$a7,$a7,$ra
    # Line 3828
    beqz	$t8,.L0d9ac6a0
    # Line 3820
    subu	$a7,$a7,$s2
    # Line 3828
    ld	$a0,16($sp)
    ld	$a1,8($sp)
    subu	$a0,$t0,$a0
    subu	$a1,$a1,$t2
    mtc1	$a0,$f6
    mtc1	$a1,$f5
    cvt.s.w	$f6,$f6
    cvt.s.w	$f5,$f5
    div.s	$f5,$f5,$f6
    ldc1	$f10,0($sp)
    ld	$v1,32($sp)
    subu	$t8,$s8,$t9
    ld	$at,24($sp)
    mtc1	$t8,$f9
    ld	$ra,128($sp)
    subu	$at,$at,$v1
    multu	$s7,$ra
    mul.s	$f10,$f0,$f10
    mtc1	$at,$f8
    cvt.s.w	$f9,$f9
    trunc.l.s	$f10,$f10
    cvt.s.w	$f8,$f8
    dmfc1	$s5,$f10
    li	$t8,1
    li	$ra,2
    sll	$s5,$s5,0x0
    mflo	$a2
    b	.L0d9ac508
    div.s	$f8,$f8,$f9
    nop
    nop
.L0d9ac4f0:
    # Line 3831
    lw	$v0,12($s3)
.L0d9ac4f4:
    # Line 3828
    addiu	$s6,$s6,1
    ld	$a3,128($sp)
    slt	$a6,$s6,$v0
    beqz	$a6,.L0d9ac6a0
    addu	$a2,$a2,$a3
.L0d9ac508:
    # Line 3831
    slt	$t0,$t1,$a4
    beqz	$t0,.L0d9ac4f4
    move	$a3,$t1
    subu	$v0,$s6,$s7
    addiu	$t2,$v0,1
    multu	$t1,$s2
    mtc1	$t2,$f7
    mtc1	$a5,$f9
    cvt.s.w	$f7,$f7
    cvt.s.w	$f9,$f9
    mflo	$s8
    b	.L0d9ac554
    madd.s	$f7,$f9,$f8,$f7
    nop
.L0d9ac540:
    # Line 3840
    lw	$a4,8($s3)
.L0d9ac544:
    # Line 3831
    addiu	$a3,$a3,1
    slt	$t9,$a3,$a4
    beqz	$t9,.L0d9ac4f0
    addu	$s8,$s8,$s2
.L0d9ac554:
    # Line 3839
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f10,$f9,$f10,$f8
    trunc.w.s	$f10,$f10
    cvt.s.w	$f11,$f10
    # Line 3834
    ld	$t2,136($sp)
    lw	$t2,44($t2)
    # Line 3839
    c.lt.s	$f11,$f7
    # Line 3834
    addu	$t2,$t2,$a2
    addu	$t2,$s8,$t2
    # Line 3839
    bc1f	.L0d9ac544
    mfc1	$t9,$f10
    subu	$t0,$a3,$t1
    addiu	$at,$t0,1
    multu	$t9,$s5
    mtc1	$at,$f0
    mtc1	$t3,$f6
    cvt.s.w	$f0,$f0
    cvt.s.w	$f6,$f6
    mflo	$a6
    b	.L0d9ac728
    madd.s	$f0,$f6,$f5,$f0
    nop
.L0d9ac5b0:
    # Line 3842
    lw	$s7,4($s3)
    subu	$v0,$s6,$s7
    addiu	$v1,$v0,1
    lw	$a5,4($s4)
    mtc1	$v1,$f7
    mtc1	$a5,$f9
    cvt.s.w	$f7,$f7
    cvt.s.w	$f9,$f9
    madd.s	$f7,$f9,$f8,$f7
.L0d9ac5d4:
    # Line 3840
    c.lt.s $f10,$f7
    # Line 3841
    mtc1	$t0,$f11
    # Line 3840
    addiu	$t9,$t9,1
    addu	$a6,$s5,$a6
    bc1f .L0d9ac540
    mtc1	$t9,$f10
    # Line 3841
    cvt.s.w	$f11,$f11
.L0d9ac5f0:
    madd.s	$f11,$f6,$f11,$f5
    trunc.w.s	$f11,$f11
    cvt.s.w	$f12,$f11
    c.lt.s $f12,$f0
    # Line 3840
    cvt.s.w	$f10,$f10
    # Line 3841
    bc1f .L0d9ac5d4
    mfc1	$a4,$f11
    multu	$a4,$s0
    # Line 3842
    addiu	$a4,$a4,1
    # Line 3841
    mflo	$v0
    b	.L0d9ac720
    # Line 3842
    mtc1	$a4,$f1
.L0d9ac620:
    # Line 3863
    lw	$a0,0($t2)
    sw	$a0,0($a5)
.L0d9ac628:
    lw	$t1,0($s3)
    subu	$t0,$a3,$t1
    addiu	$a1,$t0,1
    lw	$t3,0($s4)
    mtc1	$a1,$f0
    mtc1	$t3,$f6
    cvt.s.w	$f0,$f0
    cvt.s.w	$f6,$f6
    madd.s	$f0,$f6,$f5,$f0
.L0d9ac64c:
    # Line 3842
    c.lt.s $f1,$f0
    addiu	$a4,$a4,1
    bc1f .L0d9ac5b0
    mtc1	$a4,$f1
    # Line 3844
    lw	$a5,44($s1)
.L0d9ac660:
    addu	$a5,$a5,$a6
    addu	$a5,$v0,$a5
    # Line 3848
    sltu	$at,$a7,$a5
    # Line 3842
    cvt.s.w	$f1,$f1
    # Line 3848
    bnez	$at,.L0d9ac64c
    # Line 3842
    addu	$v0,$s0,$v0
    # Line 3848
    beq	$t8,$s2,.L0d9ac694
    nop
    # Line 3858
    bne	$ra,$s2,.L0d9ac620
    nop
    # Line 3860
    lhu	$t0,0($t2)
    b	.L0d9ac628
    sh	$t0,0($a5)
.L0d9ac694:
    # Line 3858
    lbu	$t1,0($t2)
    b	.L0d9ac628
    sb	$t1,0($a5)
.L0d9ac6a0:
    # Line 3872
    ld	$gp,96($sp)
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s4,72($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s6,120($sp)
    li	$v0,1
    ld	$s7,56($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9ac6d8:
    # Line 3817
    slt	$t2,$t3,$a3
    beqz	$t2,.L0d9ac3f0
    sd	$a3,8($sp)
    b	.L0d9ac3f4
    move	$t2,$t3
.L0d9ac6ec:
    beqz	$t9,.L0d9ac40c
    move	$t0,$a4
    b	.L0d9ac410
    sd	$t1,16($sp)
.L0d9ac6fc:
    # Line 3818
    beqz	$at,.L0d9ac428
    sd	$a6,24($sp)
    b	.L0d9ac42c
    sd	$a5,32($sp)
.L0d9ac70c:
    slt	$a0,$s7,$v0
    beqz	$a0,.L0d9ac440
    move	$s8,$v0
    b	.L0d9ac444
    move	$t9,$s7
.L0d9ac720:
    b	.L0d9ac660
    # Line 3844
    lw	$a5,44($s1)
.L0d9ac728:
    # Line 3841
    mtc1	$t0,$f11
    # Line 3840
    addiu	$t9,$t9,1
    mtc1	$t9,$f10
    b	.L0d9ac5f0
    # Line 3841
    cvt.s.w	$f11,$f11
.end __glOdysseyImageZoomHostImage

.rdata
_lit8_3de0000400010000:
    .word 0x3de00004, 0x00010000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_41efffffffe00000:
    .word 0x41efffff, 0xffe00000
_lit8_41fffff800000000:
    .word 0x41fffff8, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_41000000:
    .word 0x41000000
_lit_41800000:
    .word 0x41800000
_lit_437f0000:
    .word 0x437f0000
_lit_477fff00:
    .word 0x477fff00
_lit_4f800000:
    .word 0x4f800000
_lit_c1800000:
    .word 0xc1800000

