# Source: ../ODYSSEY/ody_accumop.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_accumop.c
# Total Functions: 25

.text

# Function: sendBlenderOpTokens
# Declared: Line 85 (Source lines: 87-92)
# Address: 0x0d950000 - 0x0d950068 (Size: 104 bytes, Frame: 0)
.ent sendBlenderOpTokens
sendBlenderOpTokens:
    # Line 87
    lw	$a3,4112($zero)
    # Line 91
    lui	$v1,0x1
    # Line 89
    sll	$a1,$a1,0x6
    # Line 88
    li	$a6,0xe000
    lw	$a5,31796($a3)
    sll	$a4,$a0,0xd
    nor	$a6,$a6,$zero
    andi	$a4,$a4,0xe000
    and	$a0,$a5,$a6
    or	$a0,$a0,$a4
    # Line 89
    li	$a4,-8129
    andi	$a1,$a1,0x1fc0
    and	$a0,$a0,$a4
    or	$a0,$a0,$a1
    # Line 90
    li	$a1,-64
    and	$a0,$a0,$a1
    andi	$a1,$a2,0x3f
    # Line 91
    addu	$v1,$a3,$v1
    # Line 90
    or	$a0,$a0,$a1
    sw	$a0,31796($a3)
    # Line 91
    lw	$v0,26976($v1)
    ori	$v0,$v0,0x1
    sw	$v0,26976($v1)
    li	$at,2
    # Line 92
    jr	$ra
    # Line 91
    sw	$at,4120($zero)
.end sendBlenderOpTokens

# Function: sendBlenderColorTokensAccum24
# Declared: Line 95 (Source lines: 97-103)
# Address: 0x0d950070 - 0x0d9500e4 (Size: 116 bytes, Frame: 0)
.ent sendBlenderColorTokensAccum24
sendBlenderColorTokensAccum24:
    # Line 97
    lw	$a1,4112($zero)
    # Line 98
    lui	$a6,0xff
    sll	$a3,$a0,0xc
    ori	$a6,$a6,0xf000
    # Line 99
    andi	$a0,$a0,0xfff
    # Line 98
    and	$a3,$a3,$a6
    # Line 100
    lw	$a6,31804($a1)
    # Line 102
    lui	$v1,0x1
    # Line 98
    lui	$a5,0xff00
    lw	$a4,31800($a1)
    # Line 99
    li	$a2,-4096
    # Line 98
    ori	$a5,$a5,0xfff
    and	$a4,$a5,$a4
    # Line 100
    and	$a5,$a5,$a6
    # Line 98
    or	$a4,$a3,$a4
    # Line 100
    or	$a3,$a3,$a5
    # Line 99
    and	$a4,$a2,$a4
    # Line 101
    and	$a2,$a2,$a3
    # Line 99
    or	$a4,$a0,$a4
    # Line 101
    or	$a0,$a0,$a2
    sw	$a0,31804($a1)
    # Line 102
    addu	$v1,$a1,$v1
    # Line 99
    sw	$a4,31800($a1)
    # Line 102
    lw	$v0,26976($v1)
    ori	$v0,$v0,0x1
    sw	$v0,26976($v1)
    li	$at,2
    # Line 103
    jr	$ra
    # Line 102
    sw	$at,4120($zero)
.end sendBlenderColorTokensAccum24

# Function: destroyScratchBufAccum
# Declared: Line 110 (Source lines: 111-144)
# Address: 0x0d9500f0 - 0x0d950188 (Size: 152 bytes, Frame: 32)
.ent destroyScratchBufAccum
destroyScratchBufAccum:
    # Line 111
    addiu	$sp,$sp,-32
    # Line 117
    lw	$a1,4112($zero)
    sd	$a1,0($sp)
    # Line 123
    # lw $t9, -30984($gp) # &__glOdysseyDestroyPMObj
    lui	$a2,0x1
    sd	$ra,16($sp)
    move	$a0,$a1
    move	$a3,$a2
    addu	$a2,$a1,$a2
    sd	$a2,8($sp)
    ori	$a3,$a3,0x2064
    lw	$a2,8296($a2)
    jal	__glOdysseyDestroyPMObj
    addu	$a1,$a1,$a3
    beqz	$v0,.L0d950160
    # Line 135
    ld	$a1,0($sp)
    # lw $t9, -30984($gp) # &__glOdysseyDestroyPMObj
    ld	$a2,8($sp)
    lui	$a3,0x1
    ori	$a3,$a3,0x20ac
    move	$a0,$a1
    lw	$a2,8368($a2)
    jal	__glOdysseyDestroyPMObj
    addu	$a1,$a1,$a3
    beqz	$v0,.L0d950174
    # Line 144
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d950160:
    # Line 129
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1285
    # Line 130
    ld	$ra,16($sp)
    jr	$t9
    addiu	$sp,$sp,32
.L0d950174:
    # Line 141
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1285
    # Line 142
    ld	$ra,16($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end destroyScratchBufAccum

# Function: __glOdysseyAccumClose
# Declared: Line 154 (Source lines: 160-190)
# Address: 0x0d950190 - 0x0d950204 (Size: 116 bytes, Frame: 0)
.globl __glOdysseyAccumClose
.ent __glOdysseyAccumClose
__glOdysseyAccumClose:
    # Line 160
    lw	$a2,4112($zero)
    lui	$a3,0x1
    addu	$a2,$a2,$a3
    lw	$at,7872($a2)
    li	$a3,-1
    beq	$a3,$at,.L0d9501b4
    # Line 190
    li	$v0,1
    # Line 172
    sw	$zero,7876($a2)
    # Line 171
    sw	$a3,7872($a2)
.L0d9501b4:
    # Line 172
    lw	$a4,7932($a2)
    beq	$a3,$a4,.L0d9501c8
    nop
    # Line 177
    sw	$zero,7936($a2)
    # Line 176
    sw	$a3,7932($a2)
.L0d9501c8:
    # Line 181
    lw	$a5,8292($a2)
    bne	$a3,$a5,.L0d9501e0
    nop
    lw	$a6,8364($a2)
    beq	$a3,$a6,.L0d9501f8
    nop
.L0d9501e0:
    # Line 189
    sb	$zero,8437($a2)
    # Line 186
    sw	$zero,8368($a2)
    # Line 185
    sw	$zero,8296($a2)
    # Line 184
    sw	$a3,8364($a2)
    # Line 190
    jr	$ra
    # Line 183
    sw	$a3,8292($a2)
.L0d9501f8:
    # Line 190
    li	$v0,1
    jr	$ra
    # Line 189
    sb	$zero,8437($a2)
.end __glOdysseyAccumClose

# Function: initScratchBufAccum
# Declared: Line 199 (Source lines: 200-330)
# Address: 0x0d950210 - 0x0d950518 (Size: 776 bytes, Frame: 192)
.ent initScratchBufAccum
initScratchBufAccum:
    # Line 200
    addiu	$sp,$sp,-64
    sd	$s1,48($sp)
    # Line 210
    lw	$s1,4112($zero)
    # Line 200
    sd	$s0,40($sp)
    # Line 220
    lui	$s0,0x1
    lw	$v0,3700($s1)
    addu	$s0,$s1,$s0
    lw	$at,8336($s0)
    mtc1	$v0,$f0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    cvt.s.w	$f0,$f0
    cvt.s.l	$f1,$f1
    lw	$t8,8340($s0)
    c.eq.s	$f0,$f1
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    lw	$t9,3704($s1)
    bc1f	.L0d950278
    dmtc1	$t8,$f2
    mtc1	$t9,$f1
    cvt.s.l	$f2,$f2
    cvt.s.w	$f1,$f1
    c.eq.s $f1,$f2
    bc1t .L0d950288
.L0d950278:
    # Line 221
    li	$a0,1
    li	$at,1
    b	.L0d95028c
    sb	$at,8436($s0)
.L0d950288:
    lbu	$a0,8436($s0)
.L0d95028c:
    # Line 225
    li	$a3,-1
    beqz	$a0,.L0d9504b4
    lw	$v0,8292($s0)
    # Line 232
    bne	$a3,$v0,.L0d9502b0
    # Line 234
    nop	# was lw $t9, -32744($gp) # &.text
.L0d9502a0:
    # Line 232
    lw	$v0,8364($s0)
    beq	$a3,$v0,.L0d9502c0
    sd	$ra,56($sp)
.L0d9502ac:
    # Line 234
    # lw $t9, -32744($gp) # &.text
.L0d9502b0:
    addiu	$t9,$t9,240
    sd	$ra,56($sp)
    bal __glOdysseyAccumClose-0xa0
    nop
.L0d9502c0:
    # Line 238
    lwc1	$f3,_lit_3f800000
    lwc1	$f4,7728($s0)
    add.s	$f4,$f4,$f3
    trunc.l.s	$f4,$f4
    # Line 256
    # lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
    # Line 238
    dmfc1	$t0,$f4
    sw	$t0,16($sp)
    # Line 239
    lwc1	$f2,7732($s0)
    # Line 247
    li	$a4,6
    sb	$a4,0($sp)
    # Line 246
    li	$a5,8
    sb	$a5,1($sp)
    # Line 245
    sw	$zero,32($sp)
    # Line 244
    sw	$zero,28($sp)
    # Line 239
    add.s	$f2,$f2,$f3
    # Line 243
    sw	$zero,12($sp)
    # Line 242
    sw	$zero,8($sp)
    # Line 239
    trunc.l.s	$f2,$f2
    # Line 241
    sw	$zero,4($sp)
    # Line 240
    li	$a6,1
    sw	$a6,24($sp)
    # Line 239
    dmfc1	$a7,$f2
    # Line 256
    move	$a3,$zero
    addiu	$a1,$sp,0
    # Line 239
    sw	$a7,20($sp)
    # Line 256
    move	$a0,$s1
    lui	$a2,0x1
    # Line 253
    sw	$zero,8300($s0)
    # Line 256
    li	$at,-1
    ori	$a2,$a2,0x2064
    # Line 252
    sw	$zero,8296($s0)
    # Line 256
    addu	$a2,$s1,$a2
    jal	__glOdysseyCreatePMObj
    # Line 251
    sw	$at,8292($s0)
    # Line 256
    beqz	$v0,.L0d9504f8
    # Line 269
    li	$t8,1
    # Line 272
    sb	$t8,8315($s0)
    # Line 271
    sb	$t8,8304($s0)
    # Line 270
    sw	$t8,8308($s0)
    # Line 269
    sw	$t8,8360($s0)
    # Line 273
    lw	$t3,3700($s1)
    sw	$t3,8336($s0)
    # Line 274
    lw	$t2,3704($s1)
    sw	$t2,8340($s0)
    # Line 275
    lw	$t1,3700($s1)
    mtc1	$t1,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f13,_lit_3d000000
    # lw $t9, -17036($gp) # &ceil
    mul.s	$f12,$f12,$f13
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 292
    sw	$zero,8372($s0)
    # Line 291
    sw	$zero,8368($s0)
    # Line 290
    li	$t1,-1
    sw	$t1,8364($s0)
    # Line 283
    li	$t0,2
    # Line 284
    sw	$t0,8348($s0)
    # Line 283
    sw	$t0,8344($s0)
    # Line 282
    li	$a7,12
    sw	$a7,8356($s0)
    # Line 281
    sw	$zero,8352($s0)
    # Line 275
    ldc1	$f13,_lit8_4000000000000000
    # Line 278
    lw	$a4,8292($s0)
    # Line 279
    lw	$a5,8296($s0)
    # Line 280
    lw	$a6,8300($s0)
    # Line 275
    mul.d	$f13,$f0,$f13
    # Line 280
    sw	$a6,8328($s0)
    # Line 295
    move	$a3,$zero
    # lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
    # Line 275
    trunc.l.d	$f13,$f13
    # Line 295
    addiu	$a1,$sp,0
    # Line 279
    sw	$a5,8324($s0)
    # Line 295
    lui	$a2,0x1
    move	$a0,$s1
    # Line 278
    sw	$a4,8320($s0)
    # Line 295
    ori	$a2,$a2,0x20ac
    # Line 275
    dmfc1	$at,$f13
    # Line 295
    addu	$a2,$s1,$a2
    jal	__glOdysseyCreatePMObj
    # Line 275
    sw	$at,8332($s0)
    # Line 295
    beqz	$v0,.L0d9504d4
    # Line 308
    li	$t9,1
    # Line 311
    sb	$t9,8387($s0)
    # Line 310
    sb	$t9,8376($s0)
    # Line 309
    sw	$t9,8380($s0)
    # Line 308
    sw	$t9,8432($s0)
    # Line 313
    lw	$t8,3700($s1)
    sw	$t8,8408($s0)
    # Line 314
    lw	$t3,3704($s1)
    sw	$t3,8412($s0)
    # Line 315
    lw	$t2,3700($s1)
    mtc1	$t2,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f13,_lit_3d000000
    # lw $t9, -17036($gp) # &ceil
    mul.s	$f12,$f12,$f13
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 330
    ld	$s1,48($sp)
    # Line 329
    sb	$zero,8436($s0)
    # Line 324
    li	$a2,2
    sw	$a2,8420($s0)
    # Line 323
    sw	$a2,8416($s0)
    # Line 322
    li	$a1,12
    sw	$a1,8428($s0)
    # Line 321
    sw	$zero,8424($s0)
    # Line 315
    ldc1	$f13,_lit8_4000000000000000
    # Line 318
    lw	$v0,8364($s0)
    # Line 319
    lw	$v1,8368($s0)
    # Line 320
    lw	$a0,8372($s0)
    # Line 315
    mul.d	$f13,$f0,$f13
    # Line 320
    sw	$a0,8400($s0)
    # Line 319
    sw	$v1,8396($s0)
    # Line 315
    trunc.l.d	$f13,$f13
    ld	$ra,56($sp)
    # Line 318
    sw	$v0,8392($s0)
    # Line 315
    dmfc1	$at,$f13
    # Line 330
    li	$v0,1
    # Line 315
    sw	$at,8404($s0)
    # Line 330
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9504ac:
    jr	$ra
    addiu	$sp,$sp,64
.L0d9504b4:
    # Line 225
    beq	$a3,$v0,.L0d9502a0
    nop
    lw	$a4,8364($s0)
    beq	$a3,$a4,.L0d9502ac
    # Line 228
    li	$v0,1
    ld	$s0,40($sp)
    b	.L0d9504ac
    ld	$s1,48($sp)
.L0d9504d4:
    # Line 302
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$ra,56($sp)
    # Line 303
    move	$v0,$zero
    # Line 330
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9504f8:
    # Line 263
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,56($sp)
    # Line 264
    b	.L0d9504ac
    move	$v0,$zero
.end initScratchBufAccum

# Function: initVisualNumComp
# Declared: Line 338 (Source lines: 339-374)
# Address: 0x0d950520 - 0x0d9505d0 (Size: 176 bytes, Frame: 32)
.ent initVisualNumComp
initVisualNumComp:
    # Line 339
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 349
    # lw $t9, -31556($gp) # &__glOdysseyImageCalcFieldFormat
    # Line 343
    lw	$a0,4112($zero)
    # Line 349
    lui	$a1,0x1
    # Line 343
    sd	$a0,8($sp)
    # Line 349
    addu	$a0,$a0,$a1
    sd	$a0,16($sp)
    jal	__glOdysseyImageCalcFieldFormat
    lw	$a0,7688($a0)
    la	$a2,sub_0daf0000
    sltiu	$a4,$v0,7
    sll	$a3,$v0,0x2
    addiu	$a2,$a2,-32768
    ld	$ra,0($sp)
    beqz	$a4,.L0d950584
    addu	$a2,$a2,$a3
    lw	$a3,0($a2)
    jr	$a3
    # Line 359
    ld	$a7,16($sp)
.L0d950570:
    # Line 362
    ld	$a5,16($sp)
    # Line 374
    addiu	$sp,$sp,32
    # Line 362
    li	$a4,2
    # Line 374
    jr	$ra
    # Line 362
    sw	$a4,8216($a5)
.L0d950584:
    # Line 374
    jr	$ra
    addiu	$sp,$sp,32
.L0d95058c:
    addiu	$sp,$sp,32
    # Line 359
    li	$a6,1
    # Line 374
    jr	$ra
    # Line 359
    sw	$a6,8216($a7)
.L0d95059c:
    # Line 366
    ld	$t0,8($sp)
    lw	$t0,3428($t0)
    # Line 369
    li	$t1,4
    # Line 366
    beqz	$t0,.L0d9505bc
    # Line 369
    ld	$t2,16($sp)
    # Line 374
    addiu	$sp,$sp,32
    jr	$ra
    # Line 369
    sw	$t1,8216($t2)
.L0d9505bc:
    # Line 367
    ld	$t8,16($sp)
    # Line 374
    addiu	$sp,$sp,32
    # Line 367
    li	$t3,3
    # Line 374
    jr	$ra
    # Line 367
    sw	$t3,8216($t8)
.end initVisualNumComp

# Function: initAccumGfxImages
# Declared: Line 379 (Source lines: 380-422)
# Address: 0x0d9505d0 - 0x0d9506c0 (Size: 240 bytes, Frame: 32)
.ent initAccumGfxImages
initAccumGfxImages:
    # Line 380
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$s3,8($sp)
    # Line 384
    lw	$s3,4112($zero)
    # Line 380
    sd	$s0,16($sp)
    # Line 391
    lui	$s0,0x1
    # Line 401
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 391
    addu	$s0,$s3,$s0
    # Line 401
    lw	$a0,28016($s0)
    # Line 400
    lw	$a1,28020($s0)
    # Line 391
    li	$a3,1
    # Line 395
    sb	$a3,7856($s0)
    # Line 394
    sb	$a3,7866($s0)
    # Line 393
    sb	$a3,7867($s0)
    # Line 392
    sw	$a3,7860($s0)
    # Line 391
    sw	$a3,7912($s0)
    # Line 396
    lw	$a2,3700($s3)
    sw	$a2,7888($s0)
    # Line 397
    lw	$at,3704($s3)
    # Line 400
    sw	$a1,7884($s0)
    # Line 399
    li	$v1,4
    sw	$v1,7876($s0)
    # Line 398
    li	$v0,-3
    sw	$v0,7872($s0)
    # Line 401
    jal	__glOdysseyImageLogBase2
    # Line 397
    sw	$at,7892($s0)
    # Line 418
    lw	$a0,28036($s0)
    # Line 417
    lw	$v1,28040($s0)
    # Line 408
    li	$a2,1
    # Line 412
    sb	$a2,7916($s0)
    # Line 411
    sb	$a2,7926($s0)
    # Line 410
    sb	$a2,7927($s0)
    # Line 409
    sw	$a2,7920($s0)
    # Line 408
    sw	$a2,7972($s0)
    # Line 403
    li	$a3,12
    sw	$a3,7908($s0)
    # Line 401
    addiu	$a4,$v0,-1
    # Line 402
    sw	$a4,7900($s0)
    # Line 401
    sw	$a4,7896($s0)
    # Line 413
    lw	$a1,3700($s3)
    sw	$a1,7948($s0)
    # Line 414
    lw	$t8,3704($s3)
    # Line 417
    sw	$v1,7944($s0)
    # Line 418
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 416
    li	$at,5
    sw	$at,7936($s0)
    # Line 415
    li	$ra,-3
    sw	$ra,7932($s0)
    # Line 418
    jal	__glOdysseyImageLogBase2
    # Line 414
    sw	$t8,7952($s0)
    ld	$s3,8($sp)
    # Line 420
    li	$a6,12
    sw	$a6,7968($s0)
    ld	$ra,0($sp)
    # Line 418
    addiu	$a5,$v0,-1
    # Line 419
    sw	$a5,7960($s0)
    # Line 418
    sw	$a5,7956($s0)
    # Line 422
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end initAccumGfxImages

# Function: initBuffersForAccum
# Declared: Line 428 (Source lines: 429-450)
# Address: 0x0d9506c0 - 0x0d950730 (Size: 112 bytes, Frame: 16)
.ent initBuffersForAccum
initBuffersForAccum:
    # Line 440
    # lw $t9, -32744($gp) # &.text
    # Line 429
    addiu	$sp,$sp,-16
    sd	$s0,8($sp)
    # Line 440
    addiu	$t9,$t9,1312
    sd	$ra,0($sp)
    bal __glOdysseyAccumClose
    # Line 433
    lw	$s0,4112($zero)
    # Line 443
    # lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    lui	$a0,0x1
    li	$a1,1
    ori	$a0,$a0,0x1e38
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
    # Line 446
    # lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x1e74
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
    ld	$ra,0($sp)
    # Line 449
    lui	$a2,0x1
    ori	$a2,$a2,0x20f5
    li	$a1,1
    addu	$a2,$a2,$s0
    # Line 450
    ld	$s0,8($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 449
    sb	$a1,0($a2)
.end initBuffersForAccum

# Function: initGeomForAccum
# Declared: Line 456 (Source lines: 461-490)
# Address: 0x0d950730 - 0x0d9507c0 (Size: 144 bytes, Frame: 0)
.ent initGeomForAccum
initGeomForAccum:
    # Line 461
    lw	$at,4112($zero)
    # Line 467
    lui	$v0,0x1
    # Line 472
    mtc1	$zero,$f3
    # Line 467
    addu	$at,$at,$v0
    # Line 478
    sw	$zero,8252($at)
    swc1	$f3,8276($at)
    swc1	$f3,8272($at)
    # Line 473
    swc1	$f3,8260($at)
    # Line 467
    lwc1	$f2,_lit_3f800000
    lwc1	$f0,7728($at)
    # Line 468
    lwc1	$f1,7732($at)
    # Line 472
    swc1	$f3,8256($at)
    # Line 475
    lwc1	$f3,7724($at)
    # Line 467
    add.s	$f0,$f0,$f2
    # Line 468
    sw	$zero,8288($at)
    add.s	$f1,$f1,$f2
    # Line 488
    swc1	$f3,8248($at)
    # Line 467
    trunc.w.s	$f0,$f0
    # Line 474
    lwc1	$f2,7720($at)
    # Line 468
    trunc.w.s	$f1,$f1
    # Line 485
    swc1	$f3,8232($at)
    # Line 474
    cvt.s.w	$f0,$f0
    # Line 488
    swc1	$f2,8236($at)
    # Line 482
    swc1	$f2,8220($at)
    # Line 475
    cvt.s.w	$f1,$f1
    # Line 488
    swc1	$f0,8244($at)
    # Line 484
    swc1	$f0,8228($at)
    # Line 488
    swc1	$f1,8240($at)
    # Line 483
    swc1	$f1,8224($at)
    # Line 475
    sub.s	$f1,$f1,$f3
    # Line 474
    sub.s	$f0,$f0,$f2
    # Line 478
    swc1	$f1,8284($at)
    swc1	$f0,8280($at)
    # Line 475
    swc1	$f1,8268($at)
    # Line 490
    jr	$ra
    # Line 474
    swc1	$f0,8264($at)
.end initGeomForAccum

# Function: softLoad
# Declared: Line 497 (Source lines: 498-697)
# Address: 0x0d9507c0 - 0x0d95125c (Size: 2716 bytes, Frame: 224)
.ent softLoad
softLoad:
    # Line 498
    addiu	$sp,$sp,-352
    sd	$s2,312($sp)
    # Line 524
    lw	$s2,4112($zero)
    # Line 498
    sd	$s7,288($sp)
    # Line 528
    lui	$s7,0x1
    sd	$s1,320($sp)
    addu	$s7,$s2,$s7
    lwc1	$f2,7720($s7)
    # Line 531
    lwc1	$f1,7724($s7)
    # Line 530
    lwc1	$f3,7728($s7)
    # Line 529
    lwc1	$f4,7732($s7)
    lw	$at,3704($s2)
    # Line 531
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    # Line 498
    lui	$v0,0x1a
    sdc1	$f20,216($sp)
    addiu	$v0,$v0,32208
    # Line 529
    mtc1	$at,$f0
    sd	$gp,256($sp)
    # Line 498
    addu	$gp,$t9,$v0
    # Line 529
    lwc1	$f20,_lit_3f800000
    # Line 531
    sd	$zero,40($sp)
    # Line 529
    cvt.s.w	$f0,$f0
    # Line 531
    sd	$zero,32($sp)
    # Line 528
    trunc.w.s	$f2,$f2
    # Line 531
    sd	$zero,24($sp)
    # Line 530
    add.s	$f3,$f3,$f20
    # Line 531
    sd	$zero,16($sp)
    # Line 529
    add.s	$f4,$f4,$f20
    # Line 531
    sd	$zero,8($sp)
    sub.s	$f1,$f0,$f1
    sd	$zero,0($sp)
    # Line 529
    sub.s	$f0,$f0,$f4
    # Line 541
    li	$a2,5123
    sw	$a2,12($sp)
    # Line 530
    trunc.w.s	$f3,$f3
    # Line 498
    sd	$ra,264($sp)
    # Line 528
    mfc1	$ra,$f2
    # Line 529
    trunc.w.s	$f0,$f0
    # Line 498
    sd	$s8,280($sp)
    # Line 530
    mfc1	$s8,$f3
    # Line 531
    trunc.w.s	$f1,$f1
    # Line 498
    sd	$s3,296($sp)
    # Line 529
    mfc1	$s3,$f0
    # Line 498
    sd	$s5,272($sp)
    # Line 531
    mfc1	$s5,$f1
    # Line 540
    li	$a3,6408
    sw	$a3,8($sp)
    # Line 498
    sd	$s6,304($sp)
    # Line 538
    subu	$s8,$s8,$ra
    # Line 539
    subu	$s6,$s5,$s3
    # Line 537
    sw	$zero,56($sp)
    # Line 542
    multu	$s8,$s6
    # Line 536
    sw	$zero,4($sp)
    # Line 538
    sw	$s8,16($sp)
    # Line 539
    sw	$s6,20($sp)
    # Line 542
    lw	$t9,0($s2)
    # Line 498
    sdc1	$f22,224($sp)
    sd	$a0,248($sp)
    # Line 542
    move	$a0,$s2
    # Line 498
    mov.s	$f22,$f13
    # Line 528
    sd	$ra,240($sp)
    # Line 542
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x3
    beqz	$v0,.L0d951228
    move	$s1,$v0
    # Line 550
    li	$a3,1
    sw	$a3,24($sp)
    # Line 549
    sw	$v0,44($sp)
    # Line 553
    lwc1	$f11,8220($s7)
    swc1	$f11,64($sp)
    lwc1	$f10,8224($s7)
    swc1	$f10,68($sp)
    lwc1	$f9,8228($s7)
    sd	$s2,232($sp)
    swc1	$f9,72($sp)
    lwc1	$f8,8232($s7)
    # Line 565
    lw	$a1,12($sp)
    # Line 553
    swc1	$f8,76($sp)
    # Line 554
    lwc1	$f7,8272($s7)
    # Line 565
    lw	$a0,8($sp)
    # Line 554
    swc1	$f7,80($sp)
    lwc1	$f6,8276($s7)
    sd	$s0,336($sp)
    swc1	$f6,84($sp)
    lwc1	$f5,8280($s7)
    # Line 565
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    # Line 554
    swc1	$f5,88($sp)
    lwc1	$f4,8284($s7)
    # Line 560
    addiu	$a3,$sp,192
    sd	$zero,192($sp)
    sw	$zero,16($a3)
    # Line 557
    lui	$a2,0x1
    # Line 560
    sd	$zero,8($a3)
    # Line 557
    ori	$a2,$a2,0x1e38
    # Line 558
    sw	$sp,176($sp)
    # Line 557
    addu	$a2,$s2,$a2
    sw	$a2,172($sp)
    # Line 560
    move	$s0,$s8
    # Line 565
    jal	__glOdysseyImageCalcXferReadParams
    # Line 554
    swc1	$f4,92($sp)
    # Line 565
    lbu	$a4,192($sp)
    beqz	$a4,.L0d951244
    sd	$s4,328($sp)
    # Line 573
    move	$s4,$s8
    # Line 574
    move	$s2,$s6
.L0d95096c:
    blez	$s8,.L0d950a88
    lwc1	$f6,64($sp)
    lwc1	$f5,68($sp)
    lwc1	$f7,80($sp)
    lwc1	$f4,84($sp)
    b	.L0d951250
    sd	$s1,344($sp)
    nop
    nop
.L0d950990:
    # Line 592
    cvt.s.w	$f12,$f12
    # Line 593
    add.s	$f13,$f12,$f4
    # Line 592
    sub.s	$f12,$f5,$f12
    # Line 593
    swc1	$f13,92($sp)
    # Line 592
    swc1	$f12,76($sp)
.L0d9509a4:
    # Line 595
    # lw $t9, -31404($gp) # &__glOdysseyRenderFunc_ReadbackColor
    addiu	$a1,$sp,64
    jal	__glOdysseyRenderFunc_ReadbackColor
    addiu	$a0,$sp,104
    # Line 597
    slt	$a5,$s2,$s1
    # Line 599
    lwc1	$f5,76($sp)
    # Line 598
    subu	$s1,$s1,$s2
    # Line 597
    beqz	$a5,.L0d9509d8
    # Line 600
    lwc1	$f4,92($sp)
    swc1	$f4,84($sp)
    # Line 589
    mtc1	$s2,$f17
    # Line 600
    bgtz	$s1,.L0d950a60
    # Line 599
    swc1	$f5,68($sp)
.L0d9509d8:
    # Line 603
    slt	$a6,$s4,$s0
    # Line 605
    lwc1	$f6,72($sp)
    # Line 604
    subu	$s0,$s0,$s4
    # Line 603
    beqz	$a6,.L0d950a84
    # Line 606
    lwc1	$f7,88($sp)
    swc1	$f7,80($sp)
    # Line 605
    swc1	$f6,64($sp)
    # Line 607
    lwc1	$f5,8224($s7)
    swc1	$f5,68($sp)
    # Line 608
    lwc1	$f14,8232($s7)
    swc1	$f14,76($sp)
    # Line 609
    lwc1	$f4,8276($s7)
    swc1	$f4,84($sp)
    # Line 610
    lwc1	$f13,8284($s7)
    # Line 579
    mtc1	$s4,$f15
    # Line 610
    blez	$s0,.L0d950a84
    swc1	$f13,92($sp)
    # Line 574
    slt	$a7,$s4,$s0
.L0d950a20:
    beqz	$a7,.L0d950a40
    # Line 582
    mtc1	$s0,$f16
    # Line 579
    cvt.s.w	$f15,$f15
    # Line 580
    add.s	$f16,$f15,$f7
    # Line 579
    add.s	$f15,$f15,$f6
    # Line 580
    swc1	$f16,88($sp)
    b	.L0d950a54
    # Line 579
    swc1	$f15,72($sp)
.L0d950a40:
    # Line 582
    cvt.s.w	$f16,$f16
    # Line 583
    add.s	$f17,$f16,$f7
    # Line 582
    add.s	$f16,$f16,$f6
    # Line 583
    swc1	$f17,88($sp)
    # Line 582
    swc1	$f16,72($sp)
.L0d950a54:
    # Line 586
    move	$s1,$s6
    blez	$s6,.L0d9509d8
    # Line 589
    mtc1	$s2,$f17
.L0d950a60:
    # Line 586
    slt	$t0,$s2,$s1
    beqz	$t0,.L0d950990
    # Line 592
    mtc1	$s1,$f12
    # Line 589
    cvt.s.w	$f17,$f17
    # Line 590
    add.s	$f18,$f17,$f4
    # Line 589
    sub.s	$f17,$f5,$f17
    # Line 590
    swc1	$f18,92($sp)
    b	.L0d9509a4
    # Line 589
    swc1	$f17,76($sp)
.L0d950a84:
    ld	$s1,344($sp)
.L0d950a88:
    # Line 619
    ld	$a4,248($sp)
    lw	$v0,28($a4)
    mult	$v0,$s3
    ld	$a6,240($sp)
    lw	$a5,24($a4)
    mflo	$a7
    nop
    addu	$a6,$a6,$a7
    multu	$a5,$a6
    # Line 624
    ldc1	$f5,_lit8_bff0000000000000
    cvt.d.s	$f4,$f22
    c.lt.d	$f4,$f5
    # Line 619
    lw	$a4,16($a4)
    mflo	$a5
    # Line 624
    bc1t	.L0d950ad4
    # Line 619
    addu	$a4,$a4,$a5
    # Line 624
    ldc1	$f18,_lit8_3ff0000000000000
    c.lt.d $f18,$f4
    bc1f .L0d95123c
.L0d950ad4:
    li	$a6,1
.L0d950ad8:
    # Line 651
    slt	$t0,$s3,$s5
    # Line 645
    move	$a5,$s1
    # Line 651
    subu	$a1,$v0,$s8
    beqz	$t0,.L0d9511dc
    # Line 696
    ld	$t9,232($sp)
    # Line 651
    li	$a7,-1
    lwc1	$f4,_lit_477fff00
    sll	$t2,$a1,0x4
    andi	$v0,$s8,0x3
    lwc1	$f7,_lit_bf800000
    addiu	$t1,$v0,-1
    sra	$t8,$s8,0x2
    ldc1	$f6,_lit8_3ff0000000000000
    addiu	$t0,$t8,-1
    b	.L0d950b28
    div.s	$f4,$f22,$f4
    nop
    nop
.L0d950b20:
    # Line 653
    beq	$s3,$s5,.L0d9511d8
    # Line 693
    addu	$a4,$t2,$a4
.L0d950b28:
    # Line 653
    addiu	$s3,$s3,1
    # Line 656
    bltz	$t0,.L0d951078
    move	$s0,$t0
    b	.L0d950c7c
    # Line 658
    lhu	$a1,0($a5)
    nop
.L0d950b40:
    # Line 659
    lhu	$t9,2($a5)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    mul.s	$f9,$f9,$f4
    swc1	$f9,4($a4)
    # Line 660
    lhu	$t3,4($a5)
    mtc1	$t3,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    swc1	$f8,8($a4)
.L0d950b68:
    # Line 661
    lhu	$ra,6($a5)
    mtc1	$ra,$f10
    cvt.s.w	$f10,$f10
    mul.s	$f10,$f10,$f4
    swc1	$f10,12($a4)
.L0d950b7c:
    # Line 663
    lhu	$at,8($a5)
    mtc1	$at,$f11
    cvt.s.w	$f11,$f11
    mul.s	$f11,$f11,$f4
    swc1	$f11,16($a4)
.L0d950b90:
    # Line 664
    lhu	$v1,10($a5)
    mtc1	$v1,$f12
    cvt.s.w	$f12,$f12
    mul.s	$f12,$f12,$f4
    swc1	$f12,20($a4)
.L0d950ba4:
    # Line 665
    lhu	$a0,12($a5)
    mtc1	$a0,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f4
    swc1	$f13,24($a4)
.L0d950bb8:
    # Line 666
    lhu	$a1,14($a5)
    mtc1	$a1,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f4
    swc1	$f14,28($a4)
.L0d950bcc:
    # Line 668
    lhu	$a2,16($a5)
    mtc1	$a2,$f15
    cvt.s.w	$f15,$f15
    mul.s	$f15,$f15,$f4
    swc1	$f15,32($a4)
.L0d950be0:
    # Line 669
    lhu	$a3,18($a5)
    mtc1	$a3,$f16
    cvt.s.w	$f16,$f16
    mul.s	$f16,$f16,$f4
    swc1	$f16,36($a4)
.L0d950bf4:
    # Line 670
    lhu	$t3,20($a5)
    mtc1	$t3,$f17
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f17,$f4
    swc1	$f17,40($a4)
.L0d950c08:
    # Line 671
    lhu	$t9,22($a5)
    mtc1	$t9,$f18
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f4
    swc1	$f18,44($a4)
.L0d950c1c:
    # Line 673
    lhu	$ra,24($a5)
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    mul.s	$f19,$f19,$f4
    swc1	$f19,48($a4)
.L0d950c30:
    # Line 674
    lhu	$at,26($a5)
    mtc1	$at,$f21
    cvt.s.w	$f21,$f21
    mul.s	$f21,$f21,$f4
    swc1	$f21,52($a4)
.L0d950c44:
    # Line 675
    lhu	$v1,28($a5)
    mtc1	$v1,$f23
    cvt.s.w	$f23,$f23
    mul.s	$f23,$f23,$f4
    swc1	$f23,56($a4)
.L0d950c58:
    # Line 676
    lhu	$a0,30($a5)
    mtc1	$a0,$f25
    cvt.s.w	$f25,$f25
    mul.s	$f25,$f25,$f4
    swc1	$f25,60($a4)
.L0d950c6c:
    # Line 679
    addiu	$a5,$a5,32
    # Line 656
    beq	$s0,$a7,.L0d951078
    # Line 678
    addiu	$a4,$a4,64
    # Line 658
    lhu	$a1,0($a5)
.L0d950c7c:
    mtc1	$a1,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    # Line 656
    addiu	$s0,$s0,-1
    # Line 658
    beqz	$a6,.L0d950b40
    swc1	$f8,0($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950cac
    nop
    b	.L0d950cbc
    swc1	$f7,0($a4)
.L0d950cac:
    c.lt.d $f6,$f9
    bc1f .L0d950cbc
    nop
    swc1	$f20,0($a4)
.L0d950cbc:
    # Line 659
    lhu	$a2,2($a5)
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    mul.s	$f9,$f9,$f4
    cvt.d.s	$f8,$f9
    c.lt.d $f8,$f5
    bc1f .L0d950ce4
    swc1	$f9,4($a4)
    b	.L0d950cf4
    swc1	$f7,4($a4)
.L0d950ce4:
    # Line 660
    c.lt.d $f6,$f8
    bc1f .L0d950cf4
    nop
    # Line 659
    swc1	$f20,4($a4)
.L0d950cf4:
    # Line 660
    lhu	$a3,4($a5)
    mtc1	$a3,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950b68
    swc1	$f8,8($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950d24
    nop
    b	.L0d950d34
    swc1	$f7,8($a4)
.L0d950d24:
    # Line 661
    c.lt.d $f6,$f9
    bc1f .L0d950d34
    nop
    # Line 660
    swc1	$f20,8($a4)
.L0d950d34:
    # Line 661
    lhu	$t3,6($a5)
    mtc1	$t3,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950b7c
    swc1	$f8,12($a4)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d950d64
    nop
    b	.L0d950d74
    swc1	$f7,12($a4)
.L0d950d64:
    # Line 663
    c.lt.d $f6,$f9
    bc1f .L0d950d74
    nop
    # Line 661
    swc1	$f20,12($a4)
.L0d950d74:
    # Line 663
    lhu	$t9,8($a5)
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950b90
    swc1	$f8,16($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950da4
    nop
    b	.L0d950db4
    swc1	$f7,16($a4)
.L0d950da4:
    # Line 664
    c.lt.d $f6,$f9
    bc1f .L0d950db4
    nop
    # Line 663
    swc1	$f20,16($a4)
.L0d950db4:
    # Line 664
    lhu	$ra,10($a5)
    mtc1	$ra,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950ba4
    swc1	$f8,20($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950de4
    nop
    b	.L0d950df4
    swc1	$f7,20($a4)
.L0d950de4:
    # Line 665
    c.lt.d $f6,$f9
    bc1f .L0d950df4
    nop
    # Line 664
    swc1	$f20,20($a4)
.L0d950df4:
    # Line 665
    lhu	$at,12($a5)
    mtc1	$at,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950bb8
    swc1	$f8,24($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950e24
    nop
    b	.L0d950e34
    swc1	$f7,24($a4)
.L0d950e24:
    # Line 666
    c.lt.d $f6,$f9
    bc1f .L0d950e34
    nop
    # Line 665
    swc1	$f20,24($a4)
.L0d950e34:
    # Line 666
    lhu	$v1,14($a5)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950bcc
    swc1	$f8,28($a4)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d950e64
    nop
    b	.L0d950e74
    swc1	$f7,28($a4)
.L0d950e64:
    # Line 668
    c.lt.d $f6,$f9
    bc1f .L0d950e74
    nop
    # Line 666
    swc1	$f20,28($a4)
.L0d950e74:
    # Line 668
    lhu	$a0,16($a5)
    mtc1	$a0,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950be0
    swc1	$f8,32($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950ea4
    nop
    b	.L0d950eb4
    swc1	$f7,32($a4)
.L0d950ea4:
    # Line 669
    c.lt.d $f6,$f9
    bc1f .L0d950eb4
    nop
    # Line 668
    swc1	$f20,32($a4)
.L0d950eb4:
    # Line 669
    lhu	$a1,18($a5)
    mtc1	$a1,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950bf4
    swc1	$f8,36($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950ee4
    nop
    b	.L0d950ef4
    swc1	$f7,36($a4)
.L0d950ee4:
    # Line 670
    c.lt.d $f6,$f9
    bc1f .L0d950ef4
    nop
    # Line 669
    swc1	$f20,36($a4)
.L0d950ef4:
    # Line 670
    lhu	$a2,20($a5)
    mtc1	$a2,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950c08
    swc1	$f8,40($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950f24
    nop
    b	.L0d950f34
    swc1	$f7,40($a4)
.L0d950f24:
    # Line 671
    c.lt.d $f6,$f9
    bc1f .L0d950f34
    nop
    # Line 670
    swc1	$f20,40($a4)
.L0d950f34:
    # Line 671
    lhu	$a3,22($a5)
    mtc1	$a3,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950c1c
    swc1	$f8,44($a4)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d950f64
    nop
    b	.L0d950f74
    swc1	$f7,44($a4)
.L0d950f64:
    # Line 673
    c.lt.d $f6,$f9
    bc1f .L0d950f74
    nop
    # Line 671
    swc1	$f20,44($a4)
.L0d950f74:
    # Line 673
    lhu	$t3,24($a5)
    mtc1	$t3,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950c30
    swc1	$f8,48($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950fa4
    nop
    b	.L0d950fb4
    swc1	$f7,48($a4)
.L0d950fa4:
    # Line 674
    c.lt.d $f6,$f9
    bc1f .L0d950fb4
    nop
    # Line 673
    swc1	$f20,48($a4)
.L0d950fb4:
    # Line 674
    lhu	$t9,26($a5)
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950c44
    swc1	$f8,52($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d950fe4
    nop
    b	.L0d950ff4
    swc1	$f7,52($a4)
.L0d950fe4:
    # Line 675
    c.lt.d $f6,$f9
    bc1f .L0d950ff4
    nop
    # Line 674
    swc1	$f20,52($a4)
.L0d950ff4:
    # Line 675
    lhu	$ra,28($a5)
    mtc1	$ra,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950c58
    swc1	$f8,56($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d951024
    nop
    b	.L0d951034
    swc1	$f7,56($a4)
.L0d951024:
    # Line 676
    c.lt.d $f6,$f9
    bc1f .L0d951034
    nop
    # Line 675
    swc1	$f20,56($a4)
.L0d951034:
    # Line 676
    lhu	$at,30($a5)
    mtc1	$at,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d950c6c
    swc1	$f8,60($a4)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d951064
    nop
    b	.L0d950c6c
    swc1	$f7,60($a4)
.L0d951064:
    c.lt.d $f6,$f9
    bc1f .L0d950c6c
    nop
    b	.L0d950c6c
    swc1	$f20,60($a4)
.L0d951078:
    # Line 683
    bltz	$t1,.L0d950b20
    move	$s0,$t1
    b	.L0d9510dc
    # Line 685
    lhu	$a0,0($a5)
    nop
    nop
.L0d951090:
    # Line 688
    c.lt.d $f6,$f9
    bc1f .L0d9510a0
    nop
    # Line 687
    swc1	$f20,8($a4)
.L0d9510a0:
    # Line 688
    lhu	$v1,6($a5)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d9510cc
    swc1	$f8,12($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d951184
    nop
    swc1	$f7,12($a4)
.L0d9510cc:
    # Line 691
    addiu	$a5,$a5,8
    # Line 683
    beq	$s0,$a7,.L0d950b20
    # Line 690
    addiu	$a4,$a4,16
    # Line 685
    lhu	$a0,0($a5)
.L0d9510dc:
    mtc1	$a0,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    # Line 683
    addiu	$s0,$s0,-1
    # Line 685
    beqz	$a6,.L0d951198
    swc1	$f8,0($a4)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d95110c
    nop
    b	.L0d95111c
    swc1	$f7,0($a4)
.L0d95110c:
    c.lt.d $f6,$f9
    bc1f .L0d95111c
    nop
    swc1	$f20,0($a4)
.L0d95111c:
    # Line 686
    lhu	$a1,2($a5)
    mtc1	$a1,$f9
    cvt.s.w	$f9,$f9
    mul.s	$f9,$f9,$f4
    cvt.d.s	$f8,$f9
    c.lt.d $f8,$f5
    bc1f .L0d951144
    swc1	$f9,4($a4)
    b	.L0d951154
    swc1	$f7,4($a4)
.L0d951144:
    # Line 687
    c.lt.d $f6,$f8
    bc1f .L0d951154
    nop
    # Line 686
    swc1	$f20,4($a4)
.L0d951154:
    # Line 687
    lhu	$a2,4($a5)
    mtc1	$a2,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    beqz	$a6,.L0d9511c0
    swc1	$f8,8($a4)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d951090
    nop
    b	.L0d9510a0
    swc1	$f7,8($a4)
.L0d951184:
    # Line 688
    c.lt.d $f6,$f9
    bc1f .L0d9510cc
    nop
    b	.L0d9510cc
    swc1	$f20,12($a4)
.L0d951198:
    # Line 686
    lhu	$t3,2($a5)
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    mul.s	$f10,$f10,$f4
    swc1	$f10,4($a4)
    # Line 687
    lhu	$a3,4($a5)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    mul.s	$f9,$f9,$f4
    swc1	$f9,8($a4)
.L0d9511c0:
    # Line 688
    lhu	$t9,6($a5)
    mtc1	$t9,$f11
    cvt.s.w	$f11,$f11
    mul.s	$f11,$f11,$f4
    b	.L0d9510cc
    swc1	$f11,12($a4)
.L0d9511d8:
    # Line 696
    ld	$t9,232($sp)
.L0d9511dc:
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$s0,336($sp)
    ld	$s4,328($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$s1,320($sp)
.L0d9511f8:
    # Line 697
    ld	$gp,256($sp)
    ld	$s2,312($sp)
    ld	$s3,296($sp)
    ld	$s5,272($sp)
    ld	$s6,304($sp)
    ld	$s7,288($sp)
    ld	$ra,264($sp)
    ld	$s8,280($sp)
    ldc1	$f20,216($sp)
    ldc1	$f22,224($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d951228:
    # Line 546
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9511f8
    ld	$s1,320($sp)
.L0d95123c:
    b	.L0d950ad8
    # Line 624
    move	$a6,$zero
.L0d951244:
    # Line 571
    lw	$s2,7704($s7)
    b	.L0d95096c
    # Line 570
    lw	$s4,7708($s7)
.L0d951250:
    # Line 579
    mtc1	$s4,$f15
    b	.L0d950a20
    # Line 574
    slt	$a7,$s4,$s0
.end softLoad

# Function: softAccumulate
# Declared: Line 700 (Source lines: 701-899)
# Address: 0x0d951260 - 0x0d951d70 (Size: 2832 bytes, Frame: 224)
.ent softAccumulate
softAccumulate:
    # Line 701
    addiu	$sp,$sp,-352
    sd	$s2,312($sp)
    # Line 727
    lw	$s2,4112($zero)
    # Line 701
    sd	$s7,288($sp)
    # Line 731
    lui	$s7,0x1
    # Line 701
    sdc1	$f13,216($sp)
    # Line 731
    addu	$s7,$s2,$s7
    lwc1	$f2,7720($s7)
    # Line 734
    lwc1	$f1,7724($s7)
    # Line 733
    lwc1	$f3,7728($s7)
    # Line 732
    lwc1	$f4,7732($s7)
    lw	$at,3704($s2)
    # Line 734
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    # Line 701
    lui	$v0,0x1a
    sdc1	$f20,224($sp)
    addiu	$v0,$v0,29488
    # Line 732
    mtc1	$at,$f0
    sd	$gp,256($sp)
    # Line 701
    addu	$gp,$t9,$v0
    # Line 732
    lwc1	$f20,_lit_3f800000
    # Line 734
    sd	$zero,40($sp)
    # Line 732
    cvt.s.w	$f0,$f0
    # Line 734
    sd	$zero,32($sp)
    # Line 731
    trunc.w.s	$f2,$f2
    # Line 734
    sd	$zero,24($sp)
    # Line 733
    add.s	$f3,$f3,$f20
    # Line 734
    sd	$zero,16($sp)
    # Line 732
    add.s	$f4,$f4,$f20
    # Line 734
    sd	$zero,8($sp)
    sub.s	$f1,$f0,$f1
    sd	$zero,0($sp)
    # Line 732
    sub.s	$f0,$f0,$f4
    # Line 743
    li	$a2,5123
    sw	$a2,12($sp)
    # Line 733
    trunc.w.s	$f3,$f3
    # Line 701
    sd	$ra,264($sp)
    # Line 731
    mfc1	$ra,$f2
    # Line 732
    trunc.w.s	$f0,$f0
    # Line 701
    sd	$s8,280($sp)
    # Line 733
    mfc1	$s8,$f3
    # Line 734
    trunc.w.s	$f1,$f1
    # Line 701
    sd	$s3,296($sp)
    # Line 732
    mfc1	$s3,$f0
    # Line 701
    sd	$s5,272($sp)
    # Line 734
    mfc1	$s5,$f1
    # Line 742
    li	$a3,6408
    sw	$a3,8($sp)
    # Line 701
    sd	$s6,304($sp)
    # Line 740
    subu	$s8,$s8,$ra
    # Line 741
    subu	$s6,$s5,$s3
    # Line 739
    sw	$zero,56($sp)
    # Line 744
    multu	$s8,$s6
    # Line 738
    sw	$zero,4($sp)
    # Line 740
    sw	$s8,16($sp)
    # Line 741
    sw	$s6,20($sp)
    # Line 744
    lw	$t9,0($s2)
    sd	$s1,320($sp)
    # Line 701
    sd	$a0,248($sp)
    # Line 744
    move	$a0,$s2
    # Line 731
    sd	$ra,240($sp)
    # Line 744
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x3
    beqz	$v0,.L0d951d44
    move	$s1,$v0
    # Line 752
    li	$a3,1
    sw	$a3,24($sp)
    # Line 751
    sw	$v0,44($sp)
    # Line 755
    lwc1	$f11,8220($s7)
    swc1	$f11,64($sp)
    lwc1	$f10,8224($s7)
    swc1	$f10,68($sp)
    lwc1	$f9,8228($s7)
    sd	$s2,232($sp)
    swc1	$f9,72($sp)
    lwc1	$f8,8232($s7)
    # Line 767
    lw	$a1,12($sp)
    # Line 755
    swc1	$f8,76($sp)
    # Line 756
    lwc1	$f7,8272($s7)
    # Line 767
    lw	$a0,8($sp)
    # Line 756
    swc1	$f7,80($sp)
    lwc1	$f6,8276($s7)
    sd	$s0,336($sp)
    swc1	$f6,84($sp)
    lwc1	$f5,8280($s7)
    # Line 767
    # lw $t9, -31176($gp) # &__glOdysseyImageCalcXferReadParams
    # Line 756
    swc1	$f5,88($sp)
    lwc1	$f4,8284($s7)
    # Line 762
    addiu	$a3,$sp,192
    sd	$zero,192($sp)
    sw	$zero,16($a3)
    # Line 759
    lui	$a2,0x1
    # Line 762
    sd	$zero,8($a3)
    # Line 759
    ori	$a2,$a2,0x1e38
    # Line 760
    sw	$sp,176($sp)
    # Line 759
    addu	$a2,$s2,$a2
    sw	$a2,172($sp)
    # Line 762
    move	$s0,$s8
    # Line 767
    jal	__glOdysseyImageCalcXferReadParams
    # Line 756
    swc1	$f4,92($sp)
    # Line 767
    lbu	$a4,192($sp)
    beqz	$a4,.L0d951d58
    sd	$s4,328($sp)
    # Line 775
    move	$s4,$s8
    # Line 776
    move	$s2,$s6
.L0d951408:
    blez	$s8,.L0d951528
    lwc1	$f7,64($sp)
    lwc1	$f5,68($sp)
    lwc1	$f6,80($sp)
    lwc1	$f4,84($sp)
    b	.L0d951d64
    sd	$s1,344($sp)
    nop
    nop
    nop
.L0d951430:
    # Line 794
    cvt.s.w	$f12,$f12
    # Line 795
    add.s	$f13,$f12,$f4
    # Line 794
    sub.s	$f12,$f5,$f12
    # Line 795
    swc1	$f13,92($sp)
    # Line 794
    swc1	$f12,76($sp)
.L0d951444:
    # Line 797
    # lw $t9, -31404($gp) # &__glOdysseyRenderFunc_ReadbackColor
    addiu	$a1,$sp,64
    jal	__glOdysseyRenderFunc_ReadbackColor
    addiu	$a0,$sp,104
    # Line 799
    slt	$a5,$s2,$s1
    # Line 801
    lwc1	$f5,76($sp)
    # Line 800
    subu	$s1,$s1,$s2
    # Line 799
    beqz	$a5,.L0d951478
    # Line 802
    lwc1	$f4,92($sp)
    swc1	$f4,84($sp)
    # Line 791
    mtc1	$s2,$f17
    # Line 802
    bgtz	$s1,.L0d951500
    # Line 801
    swc1	$f5,68($sp)
.L0d951478:
    # Line 805
    slt	$a6,$s4,$s0
    # Line 807
    lwc1	$f7,72($sp)
    # Line 806
    subu	$s0,$s0,$s4
    # Line 805
    beqz	$a6,.L0d951524
    # Line 808
    lwc1	$f6,88($sp)
    swc1	$f6,80($sp)
    # Line 807
    swc1	$f7,64($sp)
    # Line 809
    lwc1	$f5,8224($s7)
    swc1	$f5,68($sp)
    # Line 810
    lwc1	$f14,8232($s7)
    swc1	$f14,76($sp)
    # Line 811
    lwc1	$f4,8276($s7)
    swc1	$f4,84($sp)
    # Line 812
    lwc1	$f13,8284($s7)
    # Line 781
    mtc1	$s4,$f15
    # Line 812
    blez	$s0,.L0d951524
    swc1	$f13,92($sp)
    # Line 776
    slt	$a7,$s4,$s0
.L0d9514c0:
    beqz	$a7,.L0d9514e0
    # Line 784
    mtc1	$s0,$f16
    # Line 781
    cvt.s.w	$f15,$f15
    # Line 782
    add.s	$f16,$f15,$f6
    # Line 781
    add.s	$f15,$f15,$f7
    # Line 782
    swc1	$f16,88($sp)
    b	.L0d9514f4
    # Line 781
    swc1	$f15,72($sp)
.L0d9514e0:
    # Line 784
    cvt.s.w	$f16,$f16
    # Line 785
    add.s	$f17,$f16,$f6
    # Line 784
    add.s	$f16,$f16,$f7
    # Line 785
    swc1	$f17,88($sp)
    # Line 784
    swc1	$f16,72($sp)
.L0d9514f4:
    # Line 788
    move	$s1,$s6
    blez	$s6,.L0d951478
    # Line 791
    mtc1	$s2,$f17
.L0d951500:
    # Line 788
    slt	$t0,$s2,$s1
    beqz	$t0,.L0d951430
    # Line 794
    mtc1	$s1,$f12
    # Line 791
    cvt.s.w	$f17,$f17
    # Line 792
    add.s	$f18,$f17,$f4
    # Line 791
    sub.s	$f17,$f5,$f17
    # Line 792
    swc1	$f18,92($sp)
    b	.L0d951444
    # Line 791
    swc1	$f17,76($sp)
.L0d951524:
    ld	$s1,344($sp)
.L0d951528:
    # Line 821
    ld	$a4,248($sp)
    lw	$v0,28($a4)
    mult	$v0,$s3
    ld	$a0,240($sp)
    lw	$v1,24($a4)
    mflo	$a1
    nop
    addu	$a0,$a0,$a1
    multu	$v1,$a0
    # Line 847
    move	$a5,$s1
    # Line 853
    slt	$a7,$s3,$s5
    # Line 821
    lw	$a4,16($a4)
    # Line 853
    subu	$v0,$v0,$s8
    # Line 821
    mflo	$a6
    # Line 853
    beqz	$a7,.L0d951cf8
    # Line 821
    addu	$a4,$a4,$a6
    # Line 853
    ldc1	$f4,216($sp)
    dmtc1	$zero,$f10
    li	$a7,-1
    sll	$t2,$v0,0x4
    lwc1	$f8,_lit_477fff00
    cvt.d.s	$f9,$f4
    lwc1	$f7,_lit_bf800000
    li	$a6,1
    andi	$t3,$s8,0x3
    ldc1	$f6,_lit8_bff0000000000000
    sra	$t8,$s8,0x2
    addiu	$t0,$t3,-1
    c.lt.d	$f9,$f10
    ldc1	$f5,_lit8_3ff0000000000000
    addiu	$t1,$t8,-1
    div.s	$f4,$f4,$f8
    b	.L0d9515b8
    movf	$a6,$zero,$fcc0
.L0d9515b0:
    # Line 855
    beq	$s3,$s5,.L0d951cf8
    # Line 895
    addu	$a4,$t2,$a4
.L0d9515b8:
    # Line 855
    addiu	$s3,$s3,1
    # Line 858
    bltz	$t1,.L0d951b80
    move	$s0,$t1
    b	.L0d951884
    # Line 860
    lhu	$v1,0($a5)
    nop
.L0d9515d0:
    # Line 861
    c.lt.d $f5,$f8
    bc1f .L0d9515e0
    nop
    # Line 860
    swc1	$f20,0($a4)
.L0d9515e0:
    # Line 861
    lhu	$a2,2($a5)
    mtc1	$a2,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f11,4($a4)
    madd.s	$f11,$f11,$f12,$f4
    cvt.d.s	$f12,$f11
    c.lt.d $f5,$f12
    bc1f .L0d951608
    swc1	$f11,4($a4)
    swc1	$f20,4($a4)
.L0d951608:
    # Line 862
    lhu	$a3,4($a5)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,8($a4)
    madd.s	$f8,$f8,$f9,$f4
    bnez	$a6,.L0d9518f8
    swc1	$f8,8($a4)
.L0d951624:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951638
    nop
    swc1	$f20,8($a4)
.L0d951638:
    # Line 863
    lhu	$t9,6($a5)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,12($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,12($a4)
.L0d951650:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951664
    nop
    swc1	$f20,12($a4)
.L0d951664:
    # Line 865
    lhu	$ra,8($a5)
    mtc1	$ra,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,16($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,16($a4)
.L0d95167c:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951690
    nop
    swc1	$f20,16($a4)
.L0d951690:
    # Line 866
    lhu	$at,10($a5)
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,20($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,20($a4)
.L0d9516a8:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d9516bc
    nop
    swc1	$f20,20($a4)
.L0d9516bc:
    # Line 867
    lhu	$v0,12($a5)
    mtc1	$v0,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,24($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,24($a4)
.L0d9516d4:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d9516e8
    nop
    swc1	$f20,24($a4)
.L0d9516e8:
    # Line 868
    lhu	$v1,14($a5)
    mtc1	$v1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,28($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,28($a4)
.L0d951700:
    cvt.d.s	$f10,$f8
    c.lt.d	$f5,$f10
    bc1f	.L0d951714
    nop
    swc1	$f20,28($a4)
.L0d951714:
    # Line 870
    lhu	$a0,16($a5)
    mtc1	$a0,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,32($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,32($a4)
.L0d95172c:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951740
    nop
    swc1	$f20,32($a4)
.L0d951740:
    # Line 871
    lhu	$a1,18($a5)
    mtc1	$a1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,36($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,36($a4)
.L0d951758:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d95176c
    nop
    swc1	$f20,36($a4)
.L0d95176c:
    # Line 872
    lhu	$a2,20($a5)
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,40($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,40($a4)
.L0d951784:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951798
    nop
    swc1	$f20,40($a4)
.L0d951798:
    # Line 873
    lhu	$a3,22($a5)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,44($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,44($a4)
.L0d9517b0:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d9517c4
    nop
    swc1	$f20,44($a4)
.L0d9517c4:
    # Line 875
    lhu	$t9,24($a5)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,48($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,48($a4)
.L0d9517dc:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d9517f0
    nop
    swc1	$f20,48($a4)
.L0d9517f0:
    # Line 876
    lhu	$ra,26($a5)
    mtc1	$ra,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,52($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,52($a4)
.L0d951808:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d95181c
    nop
    swc1	$f20,52($a4)
.L0d95181c:
    # Line 877
    lhu	$at,28($a5)
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,56($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,56($a4)
.L0d951834:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951848
    nop
    swc1	$f20,56($a4)
.L0d951848:
    # Line 878
    lhu	$v0,30($a5)
    mtc1	$v0,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,60($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,60($a4)
.L0d951860:
    cvt.d.s	$f10,$f8
    c.lt.d	$f5,$f10
    bc1f	.L0d951874
    nop
    swc1	$f20,60($a4)
.L0d951874:
    # Line 881
    addiu	$a5,$a5,32
    # Line 858
    beq	$s0,$a7,.L0d951b80
    # Line 880
    addiu	$a4,$a4,64
    # Line 860
    lhu	$v1,0($a5)
.L0d951884:
    mtc1	$v1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,0($a4)
    madd.s	$f8,$f8,$f9,$f4
    # Line 858
    addiu	$s0,$s0,-1
    # Line 860
    swc1	$f8,0($a4)
    beqz	$a6,.L0d9515d0
    cvt.d.s	$f8,$f8
    c.lt.d $f8,$f6
    bc1f .L0d9518b4
    nop
    swc1	$f7,0($a4)
.L0d9518b4:
    # Line 861
    lhu	$a0,2($a5)
    mtc1	$a0,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f10,4($a4)
    madd.s	$f10,$f10,$f11,$f4
    cvt.d.s	$f11,$f10
    c.lt.d $f11,$f6
    bc1f .L0d9518dc
    swc1	$f10,4($a4)
    swc1	$f7,4($a4)
.L0d9518dc:
    # Line 862
    lhu	$a1,4($a5)
    mtc1	$a1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,8($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951624
    swc1	$f8,8($a4)
.L0d9518f8:
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d95190c
    nop
    swc1	$f7,8($a4)
.L0d95190c:
    # Line 863
    lhu	$a2,6($a5)
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,12($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951650
    swc1	$f8,12($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d95193c
    nop
    swc1	$f7,12($a4)
.L0d95193c:
    # Line 865
    lhu	$a3,8($a5)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,16($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d95167c
    swc1	$f8,16($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d95196c
    nop
    swc1	$f7,16($a4)
.L0d95196c:
    # Line 866
    lhu	$t9,10($a5)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,20($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d9516a8
    swc1	$f8,20($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d95199c
    nop
    swc1	$f7,20($a4)
.L0d95199c:
    # Line 867
    lhu	$ra,12($a5)
    mtc1	$ra,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,24($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d9516d4
    swc1	$f8,24($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d9519cc
    nop
    swc1	$f7,24($a4)
.L0d9519cc:
    # Line 868
    lhu	$at,14($a5)
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,28($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951700
    swc1	$f8,28($a4)
    cvt.d.s	$f10,$f8
    c.lt.d	$f10,$f6
    bc1f	.L0d9519fc
    nop
    swc1	$f7,28($a4)
.L0d9519fc:
    # Line 870
    lhu	$v0,16($a5)
    mtc1	$v0,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,32($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d95172c
    swc1	$f8,32($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951a2c
    nop
    swc1	$f7,32($a4)
.L0d951a2c:
    # Line 871
    lhu	$v1,18($a5)
    mtc1	$v1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,36($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951758
    swc1	$f8,36($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951a5c
    nop
    swc1	$f7,36($a4)
.L0d951a5c:
    # Line 872
    lhu	$a0,20($a5)
    mtc1	$a0,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,40($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951784
    swc1	$f8,40($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951a8c
    nop
    swc1	$f7,40($a4)
.L0d951a8c:
    # Line 873
    lhu	$a1,22($a5)
    mtc1	$a1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,44($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d9517b0
    swc1	$f8,44($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951abc
    nop
    swc1	$f7,44($a4)
.L0d951abc:
    # Line 875
    lhu	$a2,24($a5)
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,48($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d9517dc
    swc1	$f8,48($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951aec
    nop
    swc1	$f7,48($a4)
.L0d951aec:
    # Line 876
    lhu	$a3,26($a5)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,52($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951808
    swc1	$f8,52($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951b1c
    nop
    swc1	$f7,52($a4)
.L0d951b1c:
    # Line 877
    lhu	$t9,28($a5)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,56($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951834
    swc1	$f8,56($a4)
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951b4c
    nop
    swc1	$f7,56($a4)
.L0d951b4c:
    # Line 878
    lhu	$ra,30($a5)
    mtc1	$ra,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,60($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951860
    swc1	$f8,60($a4)
    cvt.d.s	$f10,$f8
    c.lt.d	$f10,$f6
    bc1f	.L0d951874
    nop
    b	.L0d951874
    swc1	$f7,60($a4)
.L0d951b80:
    # Line 885
    bltz	$t0,.L0d9515b0
    move	$s0,$t0
    b	.L0d951bb4
    # Line 887
    lhu	$at,0($a5)
.L0d951b90:
    # Line 890
    cvt.d.s	$f11,$f8
    c.lt.d $f11,$f6
    bc1f .L0d951ba4
    nop
    swc1	$f7,12($a4)
.L0d951ba4:
    # Line 893
    addiu	$a5,$a5,8
    # Line 885
    beq	$s0,$a7,.L0d9515b0
    # Line 892
    addiu	$a4,$a4,16
    # Line 887
    lhu	$at,0($a5)
.L0d951bb4:
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,0($a4)
    madd.s	$f8,$f8,$f9,$f4
    # Line 885
    addiu	$s0,$s0,-1
    # Line 887
    swc1	$f8,0($a4)
    beqz	$a6,.L0d951c60
    cvt.d.s	$f8,$f8
    c.lt.d $f8,$f6
    bc1f .L0d951be4
    nop
    swc1	$f7,0($a4)
.L0d951be4:
    # Line 888
    lhu	$v0,2($a5)
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f10,4($a4)
    madd.s	$f10,$f10,$f11,$f4
    cvt.d.s	$f11,$f10
    c.lt.d $f11,$f6
    bc1f .L0d951c0c
    swc1	$f10,4($a4)
    swc1	$f7,4($a4)
.L0d951c0c:
    # Line 889
    lhu	$v1,4($a5)
    mtc1	$v1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,8($a4)
    madd.s	$f8,$f8,$f9,$f4
    beqz	$a6,.L0d951cb4
    swc1	$f8,8($a4)
.L0d951c28:
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f6
    bc1f .L0d951c3c
    nop
    swc1	$f7,8($a4)
.L0d951c3c:
    # Line 890
    lhu	$a0,6($a5)
    mtc1	$a0,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,12($a4)
    madd.s	$f8,$f8,$f9,$f4
    bnez	$a6,.L0d951b90
    swc1	$f8,12($a4)
    b	.L0d951ce4
    cvt.d.s	$f10,$f8
.L0d951c60:
    # Line 888
    c.lt.d $f5,$f8
    bc1f .L0d951c70
    nop
    # Line 887
    swc1	$f20,0($a4)
.L0d951c70:
    # Line 888
    lhu	$a1,2($a5)
    mtc1	$a1,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f10,4($a4)
    madd.s	$f10,$f10,$f11,$f4
    cvt.d.s	$f11,$f10
    c.lt.d $f5,$f11
    bc1f .L0d951c98
    swc1	$f10,4($a4)
    swc1	$f20,4($a4)
.L0d951c98:
    # Line 889
    lhu	$a2,4($a5)
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,8($a4)
    madd.s	$f8,$f8,$f9,$f4
    bnez	$a6,.L0d951c28
    swc1	$f8,8($a4)
.L0d951cb4:
    cvt.d.s	$f10,$f8
    c.lt.d $f5,$f10
    bc1f .L0d951cc8
    nop
    swc1	$f20,8($a4)
.L0d951cc8:
    # Line 890
    lhu	$a3,6($a5)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,12($a4)
    madd.s	$f8,$f8,$f9,$f4
    swc1	$f8,12($a4)
    cvt.d.s	$f10,$f8
.L0d951ce4:
    c.lt.d	$f5,$f10
    bc1f	.L0d951ba4
    nop
    b	.L0d951ba4
    swc1	$f20,12($a4)
.L0d951cf8:
    # Line 898
    ld	$t9,232($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$s0,336($sp)
    ld	$s4,328($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$s1,320($sp)
.L0d951d18:
    # Line 899
    ld	$gp,256($sp)
    ld	$s2,312($sp)
    ld	$s3,296($sp)
    ld	$s5,272($sp)
    ld	$s6,304($sp)
    ld	$ra,264($sp)
    ld	$s7,288($sp)
    ld	$s8,280($sp)
    ldc1	$f20,224($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d951d44:
    # Line 748
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d951d18
    ld	$s1,320($sp)
.L0d951d58:
    # Line 773
    lw	$s2,7704($s7)
    b	.L0d951408
    # Line 772
    lw	$s4,7708($s7)
.L0d951d64:
    # Line 781
    mtc1	$s4,$f15
    b	.L0d9514c0
    # Line 776
    slt	$a7,$s4,$s0
.end softAccumulate

# Function: softMult
# Declared: Line 902 (Source lines: 903-1012)
# Address: 0x0d951d70 - 0x0d952454 (Size: 1764 bytes, Frame: 16)
.ent softMult
softMult:
    # Line 903
    lui	$v0,0x1a
    addiu	$v0,$v0,26656
    addu	$at,$t9,$v0
    # Line 915
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f13
    c.eq.d	$f6,$f5
    # Line 903
    addiu	$sp,$sp,-16
    # Line 915
    bc1t	.L0d951e94
    lw	$a4,4112($zero)
    # Line 922
    lw	$t8,3704($a4)
    # Line 921
    lui	$t3,0x1
    # Line 922
    mtc1	$t8,$f0
    # Line 921
    addu	$t3,$a4,$t3
    # Line 922
    lwc1	$f3,7732($t3)
    lwc1	$f9,_lit_3f800000
    cvt.s.w	$f0,$f0
    add.s	$f3,$f3,$f9
    sub.s	$f3,$f0,$f3
    trunc.w.s	$f3,$f3
    # Line 929
    lw	$t0,28($a0)
    # Line 922
    mfc1	$a6,$f3
    # Line 921
    lwc1	$f2,7720($t3)
    # Line 929
    mult	$t0,$a6
    # Line 921
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    # Line 929
    lw	$t8,24($a0)
    mflo	$t9
    # Line 931
    ldc1	$f4,_lit8_bff0000000000000
    # Line 929
    addu	$t9,$a5,$t9
    # Line 923
    lwc1	$f1,7728($t3)
    # Line 929
    multu	$t8,$t9
    # Line 924
    lwc1	$f2,7724($t3)
    # Line 931
    c.lt.d $f6,$f4
    # Line 923
    add.s	$f1,$f1,$f9
    # Line 924
    sub.s	$f0,$f0,$f2
    # Line 923
    trunc.w.s	$f1,$f1
    # Line 924
    trunc.w.s	$f0,$f0
    # Line 929
    lw	$a3,16($a0)
    # Line 923
    mfc1	$t1,$f1
    # Line 929
    mflo	$t2
    # Line 924
    mfc1	$a7,$f0
    # Line 931
    bc1t .L0d951e24
    # Line 929
    addu	$a3,$a3,$t2
    # Line 931
    c.lt.d $f5,$f6
    bc1f .L0d95244c
.L0d951e24:
    li	$a0,1
.L0d951e28:
    # Line 950
    mtc1	$zero,$f6
    c.eq.s $f13,$f6
    subu	$t3,$t1,$a5
    subu	$t8,$t0,$t3
    slt	$a4,$a6,$a7
    bc1f .L0d951e9c
    nop
    beqz	$a4,.L0d951e94
    li	$a5,-1
    addiu	$a4,$t3,-1
    sll	$t0,$t8,0x4
    nop
    nop
    nop
.L0d951e60:
    # Line 956
    addiu	$a6,$a6,1
    # Line 959
    bltz	$a4,.L0d951e8c
    move	$a0,$a4
    nop
.L0d951e70:
    # Line 966
    addiu	$a3,$a3,16
    # Line 964
    swc1	$f6,-4($a3)
    # Line 963
    swc1	$f6,-8($a3)
    # Line 959
    addiu	$a0,$a0,-1
    # Line 962
    swc1	$f6,-12($a3)
    # Line 959
    bne	$a0,$a5,.L0d951e70
    # Line 961
    swc1	$f6,-16($a3)
.L0d951e8c:
    # Line 956
    bne	$a6,$a7,.L0d951e60
    # Line 968
    addu	$a3,$t0,$a3
.L0d951e94:
    # Line 1012
    jr	$ra
    addiu	$sp,$sp,16
.L0d951e9c:
    # Line 956
    beqz	$a4,.L0d951e94
    li	$a5,-1
    sll	$t0,$t8,0x4
    lwc1	$f6,_lit_bf800000
    andi	$t2,$t3,0x3
    sd	$t2,0($sp)
    sra	$t1,$t3,0x2
    addiu	$t2,$t2,-1
    sd	$t1,8($sp)
    b	.L0d951ed8
    addiu	$t1,$t1,-1
    nop
    nop
.L0d951ed0:
    # Line 971
    beq	$a6,$a7,.L0d951e94
    # Line 1009
    addu	$a3,$t0,$a3
.L0d951ed8:
    # Line 971
    addiu	$a6,$a6,1
    # Line 974
    bltz	$t1,.L0d95232c
    move	$a4,$t1
    b	.L0d951fb0
    # Line 976
    lwc1	$f7,0($a3)
    nop
.L0d951ef0:
    # Line 978
    lwc1	$f2,8($a3)
    # Line 977
    lwc1	$f1,4($a3)
    # Line 978
    mul.s	$f2,$f2,$f13
    # Line 977
    mul.s	$f1,$f1,$f13
    # Line 978
    swc1	$f2,8($a3)
    # Line 977
    swc1	$f1,4($a3)
.L0d951f08:
    # Line 979
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f13
    swc1	$f3,12($a3)
.L0d951f14:
    # Line 981
    lwc1	$f7,16($a3)
    mul.s	$f7,$f7,$f13
    swc1	$f7,16($a3)
.L0d951f20:
    # Line 982
    lwc1	$f8,20($a3)
    mul.s	$f8,$f8,$f13
    swc1	$f8,20($a3)
.L0d951f2c:
    # Line 983
    lwc1	$f10,24($a3)
    mul.s	$f10,$f10,$f13
    swc1	$f10,24($a3)
.L0d951f38:
    # Line 984
    lwc1	$f11,28($a3)
    mul.s	$f11,$f11,$f13
    swc1	$f11,28($a3)
.L0d951f44:
    # Line 986
    lwc1	$f12,32($a3)
    mul.s	$f12,$f12,$f13
    swc1	$f12,32($a3)
.L0d951f50:
    # Line 987
    lwc1	$f14,36($a3)
    mul.s	$f14,$f14,$f13
    swc1	$f14,36($a3)
.L0d951f5c:
    # Line 988
    lwc1	$f15,40($a3)
    mul.s	$f15,$f15,$f13
    swc1	$f15,40($a3)
.L0d951f68:
    # Line 989
    lwc1	$f16,44($a3)
    mul.s	$f16,$f16,$f13
    swc1	$f16,44($a3)
.L0d951f74:
    # Line 991
    lwc1	$f17,48($a3)
    mul.s	$f17,$f17,$f13
    swc1	$f17,48($a3)
.L0d951f80:
    # Line 992
    lwc1	$f18,52($a3)
    mul.s	$f18,$f18,$f13
    swc1	$f18,52($a3)
.L0d951f8c:
    # Line 993
    lwc1	$f19,56($a3)
    mul.s	$f19,$f19,$f13
    swc1	$f19,56($a3)
.L0d951f98:
    # Line 994
    lwc1	$f21,60($a3)
    mul.s	$f21,$f21,$f13
    swc1	$f21,60($a3)
.L0d951fa4:
    # Line 974
    beq	$a4,$a5,.L0d95232c
    # Line 996
    addiu	$a3,$a3,64
    # Line 976
    lwc1	$f7,0($a3)
.L0d951fb0:
    mul.s	$f7,$f7,$f13
    # Line 974
    addiu	$a4,$a4,-1
    # Line 976
    beqz	$a0,.L0d951ef0
    swc1	$f7,0($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d951fd8
    nop
    b	.L0d951fe8
    swc1	$f6,0($a3)
.L0d951fd8:
    c.lt.d $f5,$f8
    bc1f .L0d951fe8
    nop
    swc1	$f9,0($a3)
.L0d951fe8:
    # Line 977
    lwc1	$f8,4($a3)
    mul.s	$f8,$f8,$f13
    cvt.d.s	$f7,$f8
    c.lt.d $f7,$f4
    bc1f .L0d952008
    swc1	$f8,4($a3)
    b	.L0d952018
    swc1	$f6,4($a3)
.L0d952008:
    # Line 978
    c.lt.d $f5,$f7
    bc1f .L0d952018
    nop
    # Line 977
    swc1	$f9,4($a3)
.L0d952018:
    # Line 978
    lwc1	$f7,8($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f08
    swc1	$f7,8($a3)
    cvt.d.s	$f8,$f7
    c.lt.d	$f8,$f4
    bc1f	.L0d952040
    nop
    b	.L0d952050
    swc1	$f6,8($a3)
.L0d952040:
    # Line 979
    c.lt.d $f5,$f8
    bc1f .L0d952050
    nop
    # Line 978
    swc1	$f9,8($a3)
.L0d952050:
    # Line 979
    lwc1	$f7,12($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f14
    swc1	$f7,12($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952078
    nop
    b	.L0d952088
    swc1	$f6,12($a3)
.L0d952078:
    # Line 981
    c.lt.d $f5,$f8
    bc1f .L0d952088
    nop
    # Line 979
    swc1	$f9,12($a3)
.L0d952088:
    # Line 981
    lwc1	$f7,16($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f20
    swc1	$f7,16($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d9520b0
    nop
    b	.L0d9520c0
    swc1	$f6,16($a3)
.L0d9520b0:
    # Line 982
    c.lt.d $f5,$f8
    bc1f .L0d9520c0
    nop
    # Line 981
    swc1	$f9,16($a3)
.L0d9520c0:
    # Line 982
    lwc1	$f7,20($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f2c
    swc1	$f7,20($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d9520e8
    nop
    b	.L0d9520f8
    swc1	$f6,20($a3)
.L0d9520e8:
    # Line 983
    c.lt.d $f5,$f8
    bc1f .L0d9520f8
    nop
    # Line 982
    swc1	$f9,20($a3)
.L0d9520f8:
    # Line 983
    lwc1	$f7,24($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f38
    swc1	$f7,24($a3)
    cvt.d.s	$f8,$f7
    c.lt.d	$f8,$f4
    bc1f	.L0d952120
    nop
    b	.L0d952130
    swc1	$f6,24($a3)
.L0d952120:
    # Line 984
    c.lt.d $f5,$f8
    bc1f .L0d952130
    nop
    # Line 983
    swc1	$f9,24($a3)
.L0d952130:
    # Line 984
    lwc1	$f7,28($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f44
    swc1	$f7,28($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952158
    nop
    b	.L0d952168
    swc1	$f6,28($a3)
.L0d952158:
    # Line 986
    c.lt.d $f5,$f8
    bc1f .L0d952168
    nop
    # Line 984
    swc1	$f9,28($a3)
.L0d952168:
    # Line 986
    lwc1	$f7,32($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f50
    swc1	$f7,32($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952190
    nop
    b	.L0d9521a0
    swc1	$f6,32($a3)
.L0d952190:
    # Line 987
    c.lt.d $f5,$f8
    bc1f .L0d9521a0
    nop
    # Line 986
    swc1	$f9,32($a3)
.L0d9521a0:
    # Line 987
    lwc1	$f7,36($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f5c
    swc1	$f7,36($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d9521c8
    nop
    b	.L0d9521d8
    swc1	$f6,36($a3)
.L0d9521c8:
    # Line 988
    c.lt.d $f5,$f8
    bc1f .L0d9521d8
    nop
    # Line 987
    swc1	$f9,36($a3)
.L0d9521d8:
    # Line 988
    lwc1	$f7,40($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f68
    swc1	$f7,40($a3)
    cvt.d.s	$f8,$f7
    c.lt.d	$f8,$f4
    bc1f	.L0d952200
    nop
    b	.L0d952210
    swc1	$f6,40($a3)
.L0d952200:
    # Line 989
    c.lt.d $f5,$f8
    bc1f .L0d952210
    nop
    # Line 988
    swc1	$f9,40($a3)
.L0d952210:
    # Line 989
    lwc1	$f7,44($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f74
    swc1	$f7,44($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952238
    nop
    b	.L0d952248
    swc1	$f6,44($a3)
.L0d952238:
    # Line 991
    c.lt.d $f5,$f8
    bc1f .L0d952248
    nop
    # Line 989
    swc1	$f9,44($a3)
.L0d952248:
    # Line 991
    lwc1	$f7,48($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f80
    swc1	$f7,48($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952270
    nop
    b	.L0d952280
    swc1	$f6,48($a3)
.L0d952270:
    # Line 992
    c.lt.d $f5,$f8
    bc1f .L0d952280
    nop
    # Line 991
    swc1	$f9,48($a3)
.L0d952280:
    # Line 992
    lwc1	$f7,52($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f8c
    swc1	$f7,52($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d9522a8
    nop
    b	.L0d9522b8
    swc1	$f6,52($a3)
.L0d9522a8:
    # Line 993
    c.lt.d $f5,$f8
    bc1f .L0d9522b8
    nop
    # Line 992
    swc1	$f9,52($a3)
.L0d9522b8:
    # Line 993
    lwc1	$f7,56($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951f98
    swc1	$f7,56($a3)
    cvt.d.s	$f8,$f7
    c.lt.d	$f8,$f4
    bc1f	.L0d9522e0
    nop
    b	.L0d9522f0
    swc1	$f6,56($a3)
.L0d9522e0:
    # Line 994
    c.lt.d $f5,$f8
    bc1f .L0d9522f0
    nop
    # Line 993
    swc1	$f9,56($a3)
.L0d9522f0:
    # Line 994
    lwc1	$f7,60($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d951fa4
    swc1	$f7,60($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952318
    nop
    b	.L0d951fa4
    swc1	$f6,60($a3)
.L0d952318:
    c.lt.d $f5,$f8
    bc1f .L0d951fa4
    nop
    b	.L0d951fa4
    swc1	$f9,60($a3)
.L0d95232c:
    # Line 1000
    bltz	$t2,.L0d951ed0
    move	$a4,$t2
    b	.L0d952380
    # Line 1002
    lwc1	$f7,0($a3)
    nop
.L0d952340:
    # Line 1005
    c.lt.d $f5,$f8
    bc1f .L0d952350
    nop
    # Line 1004
    swc1	$f9,8($a3)
.L0d952350:
    # Line 1005
    lwc1	$f7,12($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d952374
    swc1	$f7,12($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952410
    nop
    swc1	$f6,12($a3)
.L0d952374:
    # Line 1000
    beq	$a4,$a5,.L0d951ed0
    # Line 1007
    addiu	$a3,$a3,16
    # Line 1002
    lwc1	$f7,0($a3)
.L0d952380:
    mul.s	$f7,$f7,$f13
    # Line 1000
    addiu	$a4,$a4,-1
    # Line 1002
    beqz	$a0,.L0d952424
    swc1	$f7,0($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d9523a8
    nop
    b	.L0d9523b8
    swc1	$f6,0($a3)
.L0d9523a8:
    c.lt.d $f5,$f8
    bc1f .L0d9523b8
    nop
    swc1	$f9,0($a3)
.L0d9523b8:
    # Line 1003
    lwc1	$f8,4($a3)
    mul.s	$f8,$f8,$f13
    cvt.d.s	$f7,$f8
    c.lt.d	$f7,$f4
    bc1f	.L0d9523d8
    swc1	$f8,4($a3)
    b	.L0d9523e8
    swc1	$f6,4($a3)
.L0d9523d8:
    # Line 1004
    c.lt.d $f5,$f7
    bc1f .L0d9523e8
    nop
    # Line 1003
    swc1	$f9,4($a3)
.L0d9523e8:
    # Line 1004
    lwc1	$f7,8($a3)
    mul.s	$f7,$f7,$f13
    beqz	$a0,.L0d95243c
    swc1	$f7,8($a3)
    cvt.d.s	$f8,$f7
    c.lt.d $f8,$f4
    bc1f .L0d952340
    nop
    b	.L0d952350
    swc1	$f6,8($a3)
.L0d952410:
    # Line 1005
    c.lt.d $f5,$f8
    bc1f .L0d952374
    nop
    b	.L0d952374
    swc1	$f9,12($a3)
.L0d952424:
    # Line 1004
    lwc1	$f10,8($a3)
    # Line 1003
    lwc1	$f8,4($a3)
    # Line 1004
    mul.s	$f10,$f10,$f13
    # Line 1003
    mul.s	$f8,$f8,$f13
    # Line 1004
    swc1	$f10,8($a3)
    # Line 1003
    swc1	$f8,4($a3)
.L0d95243c:
    # Line 1005
    lwc1	$f11,12($a3)
    mul.s	$f11,$f11,$f13
    b	.L0d952374
    swc1	$f11,12($a3)
.L0d95244c:
    b	.L0d951e28
    # Line 931
    move	$a0,$zero
.end softMult

# Function: softAdd
# Declared: Line 1015 (Source lines: 1016-1119)
# Address: 0x0d952460 - 0x0d952ad8 (Size: 1656 bytes, Frame: 16)
.ent softAdd
softAdd:
    # Line 1030
    dmtc1	$zero,$f9
    cvt.d.s	$f8,$f13
    c.eq.d	$f8,$f9
    # Line 1016
    lui	$v0,0x1a
    addiu	$v0,$v0,24880
    addiu	$sp,$sp,-16
    # Line 1030
    lw	$a4,4112($zero)
    bc1t	.L0d952ad0
    # Line 1016
    addu	$at,$t9,$v0
    # Line 1037
    lw	$a2,3704($a4)
    # Line 1036
    lui	$a1,0x1
    # Line 1037
    mtc1	$a2,$f0
    # Line 1036
    addu	$a1,$a4,$a1
    # Line 1037
    lwc1	$f4,7732($a1)
    lwc1	$f6,_lit_3f800000
    cvt.s.w	$f0,$f0
    add.s	$f4,$f4,$f6
    sub.s	$f4,$f0,$f4
    trunc.w.s	$f4,$f4
    # Line 1044
    lw	$t8,28($a0)
    # Line 1037
    mfc1	$a6,$f4
    # Line 1036
    lwc1	$f3,7720($a1)
    # Line 1044
    mult	$t8,$a6
    # Line 1036
    trunc.w.s	$f3,$f3
    # Line 1038
    lwc1	$f1,7728($a1)
    # Line 1039
    lwc1	$f2,7724($a1)
    # Line 1036
    mfc1	$t9,$f3
    # Line 1044
    lw	$v0,24($a0)
    mflo	$v1
    # Line 1038
    add.s	$f1,$f1,$f6
    # Line 1044
    addu	$v1,$t9,$v1
    # Line 1039
    sub.s	$f0,$f0,$f2
    # Line 1044
    multu	$v0,$v1
    # Line 1038
    trunc.w.s	$f1,$f1
    # Line 1039
    trunc.w.s	$f0,$f0
    # Line 1038
    mfc1	$t3,$f1
    # Line 1039
    mfc1	$a7,$f0
    # Line 1077
    subu	$t3,$t3,$t9
    subu	$t8,$t8,$t3
    slt	$t0,$a6,$a7
    # Line 1044
    lw	$a3,16($a0)
    mflo	$a5
    # Line 1077
    beqz	$t0,.L0d952ad0
    # Line 1044
    addu	$a3,$a3,$a5
    # Line 1077
    lwc1	$f7,_lit_bf800000
    li	$a5,-1
    sll	$t1,$t8,0x4
    ldc1	$f5,_lit8_bff0000000000000
    ldc1	$f4,_lit8_3ff0000000000000
    li	$a0,1
    andi	$t0,$t3,0x3
    sd	$t0,0($sp)
    sra	$t2,$t3,0x2
    addiu	$t0,$t0,-1
    c.lt.d $f8,$f9
    sd	$t2,8($sp)
    addiu	$t2,$t2,-1
    b	.L0d952558
    movf	$a0,$zero,$fcc1
    nop
.L0d952550:
    # Line 1079
    beq	$a6,$a7,.L0d952ad0
    # Line 1117
    addu	$a3,$t1,$a3
.L0d952558:
    # Line 1079
    addiu	$a6,$a6,1
    # Line 1082
    bltz	$t2,.L0d9529a8
    move	$a4,$t2
    b	.L0d95276c
    # Line 1084
    lwc1	$f8,0($a3)
    nop
.L0d952570:
    # Line 1085
    c.lt.d $f4,$f8
    bc1f .L0d952580
    nop
    # Line 1084
    swc1	$f6,0($a3)
.L0d952580:
    # Line 1085
    lwc1	$f1,4($a3)
    add.s	$f1,$f1,$f13
    cvt.d.s	$f2,$f1
    c.lt.d $f4,$f2
    bc1f .L0d95259c
    swc1	$f1,4($a3)
    swc1	$f6,4($a3)
.L0d95259c:
    # Line 1086
    lwc1	$f8,8($a3)
    add.s	$f8,$f8,$f13
    bnez	$a0,.L0d9527bc
    swc1	$f8,8($a3)
.L0d9525ac:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d9525c0
    nop
    swc1	$f6,8($a3)
.L0d9525c0:
    # Line 1087
    lwc1	$f8,12($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,12($a3)
.L0d9525cc:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d9525e0
    nop
    swc1	$f6,12($a3)
.L0d9525e0:
    # Line 1089
    lwc1	$f8,16($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,16($a3)
.L0d9525ec:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952600
    nop
    swc1	$f6,16($a3)
.L0d952600:
    # Line 1090
    lwc1	$f8,20($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,20($a3)
.L0d95260c:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952620
    nop
    swc1	$f6,20($a3)
.L0d952620:
    # Line 1091
    lwc1	$f8,24($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,24($a3)
.L0d95262c:
    cvt.d.s	$f9,$f8
    c.lt.d	$f4,$f9
    bc1f	.L0d952640
    nop
    swc1	$f6,24($a3)
.L0d952640:
    # Line 1092
    lwc1	$f8,28($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,28($a3)
.L0d95264c:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952660
    nop
    swc1	$f6,28($a3)
.L0d952660:
    # Line 1094
    lwc1	$f8,32($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,32($a3)
.L0d95266c:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952680
    nop
    swc1	$f6,32($a3)
.L0d952680:
    # Line 1095
    lwc1	$f8,36($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,36($a3)
.L0d95268c:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d9526a0
    nop
    swc1	$f6,36($a3)
.L0d9526a0:
    # Line 1096
    lwc1	$f8,40($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,40($a3)
.L0d9526ac:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d9526c0
    nop
    swc1	$f6,40($a3)
.L0d9526c0:
    # Line 1097
    lwc1	$f8,44($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,44($a3)
.L0d9526cc:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d9526e0
    nop
    swc1	$f6,44($a3)
.L0d9526e0:
    # Line 1099
    lwc1	$f8,48($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,48($a3)
.L0d9526ec:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952700
    nop
    swc1	$f6,48($a3)
.L0d952700:
    # Line 1100
    lwc1	$f8,52($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,52($a3)
.L0d95270c:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952720
    nop
    swc1	$f6,52($a3)
.L0d952720:
    # Line 1101
    lwc1	$f8,56($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,56($a3)
.L0d95272c:
    cvt.d.s	$f9,$f8
    c.lt.d	$f4,$f9
    bc1f	.L0d952740
    nop
    swc1	$f6,56($a3)
.L0d952740:
    # Line 1102
    lwc1	$f8,60($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,60($a3)
.L0d95274c:
    cvt.d.s	$f9,$f8
    c.lt.d $f4,$f9
    bc1f .L0d952760
    nop
    swc1	$f6,60($a3)
.L0d952760:
    # Line 1082
    beq	$a4,$a5,.L0d9529a8
    # Line 1104
    addiu	$a3,$a3,64
    # Line 1084
    lwc1	$f8,0($a3)
.L0d95276c:
    add.s	$f8,$f8,$f13
    # Line 1082
    addiu	$a4,$a4,-1
    # Line 1084
    swc1	$f8,0($a3)
    beqz	$a0,.L0d952570
    cvt.d.s	$f8,$f8
    c.lt.d $f8,$f5
    bc1f .L0d952790
    nop
    swc1	$f7,0($a3)
.L0d952790:
    # Line 1085
    lwc1	$f9,4($a3)
    add.s	$f9,$f9,$f13
    cvt.d.s	$f10,$f9
    c.lt.d $f10,$f5
    bc1f .L0d9527ac
    swc1	$f9,4($a3)
    swc1	$f7,4($a3)
.L0d9527ac:
    # Line 1086
    lwc1	$f8,8($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d9525ac
    swc1	$f8,8($a3)
.L0d9527bc:
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d9527d0
    nop
    swc1	$f7,8($a3)
.L0d9527d0:
    # Line 1087
    lwc1	$f8,12($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d9525cc
    swc1	$f8,12($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d9527f4
    nop
    swc1	$f7,12($a3)
.L0d9527f4:
    # Line 1089
    lwc1	$f8,16($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d9525ec
    swc1	$f8,16($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d952818
    nop
    swc1	$f7,16($a3)
.L0d952818:
    # Line 1090
    lwc1	$f8,20($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95260c
    swc1	$f8,20($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d95283c
    nop
    swc1	$f7,20($a3)
.L0d95283c:
    # Line 1091
    lwc1	$f8,24($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95262c
    swc1	$f8,24($a3)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d952860
    nop
    swc1	$f7,24($a3)
.L0d952860:
    # Line 1092
    lwc1	$f8,28($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95264c
    swc1	$f8,28($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d952884
    nop
    swc1	$f7,28($a3)
.L0d952884:
    # Line 1094
    lwc1	$f8,32($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95266c
    swc1	$f8,32($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d9528a8
    nop
    swc1	$f7,32($a3)
.L0d9528a8:
    # Line 1095
    lwc1	$f8,36($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95268c
    swc1	$f8,36($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d9528cc
    nop
    swc1	$f7,36($a3)
.L0d9528cc:
    # Line 1096
    lwc1	$f8,40($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d9526ac
    swc1	$f8,40($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d9528f0
    nop
    swc1	$f7,40($a3)
.L0d9528f0:
    # Line 1097
    lwc1	$f8,44($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d9526cc
    swc1	$f8,44($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d952914
    nop
    swc1	$f7,44($a3)
.L0d952914:
    # Line 1099
    lwc1	$f8,48($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d9526ec
    swc1	$f8,48($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d952938
    nop
    swc1	$f7,48($a3)
.L0d952938:
    # Line 1100
    lwc1	$f8,52($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95270c
    swc1	$f8,52($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d95295c
    nop
    swc1	$f7,52($a3)
.L0d95295c:
    # Line 1101
    lwc1	$f8,56($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95272c
    swc1	$f8,56($a3)
    cvt.d.s	$f9,$f8
    c.lt.d	$f9,$f5
    bc1f	.L0d952980
    nop
    swc1	$f7,56($a3)
.L0d952980:
    # Line 1102
    lwc1	$f8,60($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d95274c
    swc1	$f8,60($a3)
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d952760
    nop
    b	.L0d952760
    swc1	$f7,60($a3)
.L0d9529a8:
    # Line 1108
    bltz	$t0,.L0d952550
    move	$a4,$t0
    b	.L0d9529e0
    # Line 1110
    lwc1	$f8,0($a3)
    nop
    nop
.L0d9529c0:
    # Line 1113
    cvt.d.s	$f10,$f8
    c.lt.d $f10,$f5
    bc1f .L0d9529d4
    nop
    swc1	$f7,12($a3)
.L0d9529d4:
    # Line 1108
    beq	$a4,$a5,.L0d952550
    # Line 1115
    addiu	$a3,$a3,16
    # Line 1110
    lwc1	$f8,0($a3)
.L0d9529e0:
    add.s	$f8,$f8,$f13
    # Line 1108
    addiu	$a4,$a4,-1
    # Line 1110
    swc1	$f8,0($a3)
    beqz	$a0,.L0d952a5c
    cvt.d.s	$f8,$f8
    c.lt.d $f8,$f5
    bc1f .L0d952a04
    nop
    swc1	$f7,0($a3)
.L0d952a04:
    # Line 1111
    lwc1	$f9,4($a3)
    add.s	$f9,$f9,$f13
    cvt.d.s	$f10,$f9
    c.lt.d $f10,$f5
    bc1f .L0d952a20
    swc1	$f9,4($a3)
    swc1	$f7,4($a3)
.L0d952a20:
    # Line 1112
    lwc1	$f8,8($a3)
    add.s	$f8,$f8,$f13
    beqz	$a0,.L0d952a98
    swc1	$f8,8($a3)
.L0d952a30:
    cvt.d.s	$f9,$f8
    c.lt.d $f9,$f5
    bc1f .L0d952a44
    nop
    swc1	$f7,8($a3)
.L0d952a44:
    # Line 1113
    lwc1	$f8,12($a3)
    add.s	$f8,$f8,$f13
    bnez	$a0,.L0d9529c0
    swc1	$f8,12($a3)
    b	.L0d952abc
    cvt.d.s	$f9,$f8
.L0d952a5c:
    # Line 1111
    c.lt.d $f4,$f8
    bc1f .L0d952a6c
    nop
    # Line 1110
    swc1	$f6,0($a3)
.L0d952a6c:
    # Line 1111
    lwc1	$f9,4($a3)
    add.s	$f9,$f9,$f13
    cvt.d.s	$f10,$f9
    c.lt.d $f4,$f10
    bc1f .L0d952a88
    swc1	$f9,4($a3)
    swc1	$f6,4($a3)
.L0d952a88:
    # Line 1112
    lwc1	$f8,8($a3)
    add.s	$f8,$f8,$f13
    bnez	$a0,.L0d952a30
    swc1	$f8,8($a3)
.L0d952a98:
    cvt.d.s	$f9,$f8
    c.lt.d	$f4,$f9
    bc1f	.L0d952aac
    nop
    swc1	$f6,8($a3)
.L0d952aac:
    # Line 1113
    lwc1	$f8,12($a3)
    add.s	$f8,$f8,$f13
    swc1	$f8,12($a3)
    cvt.d.s	$f9,$f8
.L0d952abc:
    c.lt.d $f4,$f9
    bc1f .L0d9529d4
    nop
    b	.L0d9529d4
    swc1	$f6,12($a3)
.L0d952ad0:
    # Line 1119
    jr	$ra
    addiu	$sp,$sp,16
.end softAdd

# Function: softReturn
# Declared: Line 1122 (Source lines: 1123-1337)
# Address: 0x0d952ae0 - 0x0d9536f0 (Size: 3088 bytes, Frame: 224)
.ent softReturn
softReturn:
    # Line 1123
    addiu	$sp,$sp,-352
    sd	$s1,304($sp)
    # Line 1147
    lw	$s1,4112($zero)
    lui	$a1,0x1
    # Line 1123
    sd	$s2,320($sp)
    # Line 1147
    addu	$s2,$a1,$s1
    lbu	$v1,26052($s2)
    # Line 1123
    lui	$at,0x1a
    move	$v0,$a0
    addiu	$at,$at,23216
    mov.s	$f4,$f13
    sd	$gp,312($sp)
    # Line 1147
    bnez	$v1,.L0d952ee4
    # Line 1123
    addu	$gp,$t9,$at
    # Line 1154
    lw	$a4,26044($s2)
    lw	$v1,31776($s1)
    sdc1	$f13,208($sp)
    bne	$v1,$a4,.L0d952b3c
    sd	$a0,296($sp)
    lw	$a0,26048($s2)
    lw	$a2,31780($s1)
    beq	$a0,$a2,.L0d952bc0
    nop
.L0d952b3c:
    sw	$a4,31776($s1)
    lw	$a5,26048($s2)
    sw	$a5,31780($s1)
    lw	$a3,-26576($s2)
    beqz	$a3,.L0d952b7c
    lui	$t8,0x1
    lui	$a6,0x1
    sw	$zero,-26576($s2)
    ori	$t0,$a6,0x443
    sw	$t0,0($a1)
    li	$a7,250
    sw	$a7,0($a1)
    ori	$a6,$a6,0x46
    sw	$a6,0($a1)
    sw	$a6,0($a1)
    lui	$t8,0x1
.L0d952b7c:
    ori	$t8,$t8,0x81d
    sw	$t8,0($a1)
    lw	$t3,31776($s1)
    sw	$t3,0($a1)
    lw	$t2,31780($s1)
    sw	$t2,0($a1)
    lw	$t1,31600($s1)
    dsll32	$t1,$t1,0xb
    bgez	$t1,.L0d953684
    nop
.L0d952ba4:
    sd	$s0,336($sp)
    lw	$at,26980($s2)
    sd	$ra,344($sp)
    ori	$at,$at,0x2000
    sw	$at,26980($s2)
    li	$t9,2
    sw	$t9,4120($zero)
.L0d952bc0:
    # Line 1159
    lwc1	$f3,7728($s2)
    # Line 1158
    lw	$a5,3704($s1)
    lwc1	$f5,_lit_3f800000
    mtc1	$a5,$f0
    # Line 1157
    lwc1	$f2,7720($s2)
    # Line 1159
    add.s	$f3,$f3,$f5
    # Line 1158
    lwc1	$f4,7732($s2)
    cvt.s.w	$f0,$f0
    # Line 1157
    trunc.w.s	$f2,$f2
    # Line 1160
    lwc1	$f1,7724($s2)
    # Line 1159
    trunc.w.s	$f3,$f3
    # Line 1158
    add.s	$f4,$f4,$f5
    # Line 1160
    sub.s	$f1,$f0,$f1
    # Line 1158
    sub.s	$f0,$f0,$f4
    # Line 1157
    mfc1	$a4,$f2
    # Line 1160
    trunc.w.s	$f1,$f1
    # Line 1159
    mfc1	$a2,$f3
    # Line 1158
    trunc.w.s	$f0,$f0
    sd	$s0,336($sp)
    # Line 1160
    mfc1	$s0,$f1
    # Line 1158
    mfc1	$a3,$f0
    # Line 1159
    sd	$a2,272($sp)
    # Line 1165
    subu	$a2,$a2,$a4
    # Line 1158
    sd	$a3,328($sp)
    # Line 1165
    subu	$a3,$s0,$a3
    mult	$a2,$a3
    sd	$ra,344($sp)
    lw	$t9,0($s1)
    # Line 1157
    sd	$a4,280($sp)
    # Line 1165
    mflo	$a1
    move	$a0,$s1
    sd	$a2,288($sp)
    sll	$a1,$a1,0x2
    sd	$a3,264($sp)
    jalr	$t9
    addu	$a1,$a1,$a1
    beqz	$v0,.L0d95366c
    ld	$a1,328($sp)
    # Line 1175
    ld	$a7,296($sp)
    lw	$a6,28($a7)
    mult	$a6,$a1
    ld	$t1,280($sp)
    lw	$t0,24($a7)
    mflo	$t2
    addu	$t1,$t1,$t2
    # Line 1193
    ldc1	$f4,208($sp)
    # Line 1175
    multu	$t0,$t1
    # Line 1193
    ldc1	$f5,_lit8_bff0000000000000
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f5
    # Line 1175
    lw	$a7,16($a7)
    mflo	$t0
    # Line 1193
    bc1t	.L0d952ca4
    # Line 1175
    addu	$a7,$a7,$t0
    # Line 1193
    ldc1	$f5,_lit8_3ff0000000000000
    c.lt.d $f5,$f4
    bc1f .L0d953664
.L0d952ca4:
    li	$a5,1
.L0d952ca8:
    # Line 1204
    ld	$a0,288($sp)
    # Line 1206
    slt	$t8,$a1,$s0
    # Line 1198
    move	$a4,$v0
    # Line 1206
    move	$t3,$a1
    # Line 1204
    nop
    # Line 1206
    beqz	$t8,.L0d952d00
    # Line 1204
    subu	$a0,$a6,$a0
    # Line 1206
    lwc1	$f4,_lit_477fff00
    li	$t2,-1
    ld	$ra,288($sp)
    li	$a6,0xffff
    dmtc1	$zero,$f5
    ldc1	$f10,208($sp)
    sll	$t9,$a0,0x4
    andi	$a1,$ra,0x3
    ldc1	$f11,_lit8_3fe0000000000000
    sra	$ra,$ra,0x2
    addiu	$t8,$a1,-1
    sd	$ra,216($sp)
    addiu	$ra,$ra,-1
    b	.L0d952f08
    mul.s	$f10,$f10,$f4
.L0d952d00:
    ld	$s0,336($sp)
    # Line 1274
    lw	$a6,7220($s2)
    # Line 1275
    lw	$a4,7228($s2)
    # Line 1276
    lw	$a2,7232($s2)
    # Line 1281
    lw	$a5,7432($s2)
    # Line 1283
    lw	$a3,7440($s2)
    # Line 1285
    lw	$a1,7444($s2)
    # Line 1287
    lw	$v1,7448($s2)
    # Line 1277
    lw	$a0,7236($s2)
    sd	$a0,256($sp)
    # Line 1287
    lw	$a0,7360($s2)
    sw	$v1,7236($s2)
    # Line 1285
    sw	$a1,7232($s2)
    # Line 1283
    sw	$a3,7228($s2)
    # Line 1281
    sw	$a5,7220($s2)
    # Line 1287
    lw	$at,31836($s1)
    # Line 1274
    sd	$a6,248($sp)
    # Line 1275
    sd	$a4,232($sp)
    # Line 1287
    beq	$at,$a0,.L0d952d68
    # Line 1276
    sd	$a2,240($sp)
    # Line 1292
    sw	$a0,31836($s1)
    # Line 1293
    lw	$t0,26976($s2)
    ori	$t0,$t0,0x80
    sw	$t0,26976($s2)
    li	$a7,2
    sw	$a7,4120($zero)
.L0d952d68:
    lw	$t1,1792($s1)
    andi	$t1,$t1,0x8
    beqz	$t1,.L0d952dac
    nop
    # Line 1297
    lw	$ra,31740($s1)
    sd	$v0,224($sp)
    lui	$t8,0x4
    or	$ra,$t8,$ra
    sw	$ra,31740($s1)
    # Line 1299
    lw	$t3,26976($s2)
    # Line 1298
    lw	$t9,7220($s2)
    # Line 1299
    ori	$t3,$t3,0x2
    sw	$t3,26976($s2)
    # Line 1298
    or	$t8,$t8,$t9
    sw	$t8,7220($s2)
    # Line 1299
    li	$t2,2
    sw	$t2,4120($zero)
.L0d952dac:
    sd	$zero,16($sp)
    # Line 1306
    ld	$a6,288($sp)
    # Line 1307
    ld	$a5,264($sp)
    # Line 1299
    addiu	$at,$sp,16
    sw	$zero,56($at)
    sd	$zero,48($at)
    sd	$zero,40($at)
    sd	$zero,32($at)
    sd	$zero,24($at)
    sd	$zero,16($at)
    sd	$zero,8($at)
    # Line 1311
    li	$a1,1
    sw	$a1,40($sp)
    # Line 1309
    li	$a3,5123
    sw	$a3,28($sp)
    # Line 1308
    li	$a4,6408
    sw	$a4,24($sp)
    # Line 1307
    sw	$a5,36($sp)
    # Line 1306
    sw	$a6,32($sp)
    # Line 1305
    sw	$zero,72($sp)
    sd	$v0,224($sp)
    # Line 1304
    sw	$zero,20($sp)
    # Line 1310
    ld	$a2,224($sp)
    sw	$a2,60($sp)
    # Line 1314
    lwc1	$f18,8256($s2)
    # Line 1315
    ld	$a0,280($sp)
    # Line 1314
    swc1	$f18,80($sp)
    lwc1	$f17,8260($s2)
    # Line 1316
    lwc1	$f12,_lit_3f800000
    # Line 1315
    mtc1	$a0,$f15
    # Line 1314
    swc1	$f17,84($sp)
    lwc1	$f16,8264($s2)
    # Line 1317
    ld	$v1,272($sp)
    # Line 1315
    cvt.s.w	$f15,$f15
    # Line 1314
    swc1	$f16,88($sp)
    # Line 1317
    mtc1	$v1,$f14
    # Line 1314
    lwc1	$f16,8268($s2)
    # Line 1315
    swc1	$f15,96($sp)
    # Line 1314
    swc1	$f16,92($sp)
    # Line 1317
    cvt.s.w	$f14,$f14
    # Line 1316
    lwc1	$f15,7732($s2)
    # Line 1328
    # lw $t9, -31408($gp) # &__glOdysseyRenderFunc_DownloadColor
    # Line 1317
    swc1	$f14,104($sp)
    # Line 1316
    add.s	$f15,$f15,$f12
    swc1	$f15,100($sp)
    # Line 1324
    mtc1	$zero,$f13
    # Line 1318
    lwc1	$f11,7724($s2)
    # Line 1326
    sw	$zero,128($sp)
    # Line 1324
    swc1	$f13,160($sp)
    swc1	$f13,164($sp)
    swc1	$f13,168($sp)
    swc1	$f13,172($sp)
    # Line 1323
    swc1	$f12,144($sp)
    swc1	$f12,148($sp)
    # Line 1322
    lui	$v0,0x1
    # Line 1323
    swc1	$f12,152($sp)
    # Line 1322
    ori	$v0,$v0,0x1e74
    # Line 1323
    swc1	$f12,156($sp)
    # Line 1322
    addu	$v0,$s1,$v0
    sw	$v0,192($sp)
    # Line 1328
    addiu	$a1,$sp,80
    # Line 1321
    sw	$at,188($sp)
    # Line 1328
    addiu	$a0,$sp,120
    jal	__glOdysseyRenderFunc_DownloadColor
    # Line 1318
    swc1	$f11,108($sp)
    # Line 1331
    ld	$t2,248($sp)
    # Line 1332
    ld	$t1,232($sp)
    # Line 1333
    ld	$t0,240($sp)
    # Line 1334
    ld	$a7,256($sp)
    sw	$a7,7236($s2)
    # Line 1333
    sw	$t0,7232($s2)
    # Line 1332
    sw	$t1,7228($s2)
    # Line 1331
    sw	$t2,7220($s2)
    # Line 1336
    lw	$t9,12($s1)
    ld	$a1,224($sp)
    jalr	$t9
    move	$a0,$s1
    ld	$ra,344($sp)
.L0d952ee4:
    # Line 1337
    ld	$gp,312($sp)
    ld	$s1,304($sp)
    ld	$s2,320($sp)
    jr	$ra
    addiu	$sp,$sp,352
    nop
    nop
.L0d952f00:
    # Line 1206
    beq	$s0,$t3,.L0d952d00
    # Line 1271
    addu	$a7,$t9,$a7
.L0d952f08:
    # Line 1206
    addiu	$t3,$t3,1
    # Line 1209
    bltz	$ra,.L0d9534f4
    move	$t0,$ra
    b	.L0d952f40
    # Line 1213
    lwc1	$f7,8($a7)
    nop
.L0d952f20:
    # Line 1249
    trunc.w.s	$f19,$f6
    mfc1	$t1,$f19
.L0d952f28:
    # Line 1209
    addiu	$t0,$t0,-1
    # Line 1252
    addiu	$a4,$a4,32
    # Line 1251
    addiu	$a7,$a7,64
    # Line 1209
    beq	$t0,$t2,.L0d9534f4
    # Line 1249
    sh	$t1,-2($a4)
    # Line 1213
    lwc1	$f7,8($a7)
.L0d952f40:
    # Line 1214
    lwc1	$f6,12($a7)
    # Line 1211
    lwc1	$f9,0($a7)
    # Line 1212
    lwc1	$f8,4($a7)
    # Line 1213
    mul.s	$f7,$f7,$f10
    # Line 1214
    mul.s	$f6,$f6,$f10
    # Line 1211
    mul.s	$f9,$f9,$f10
    # Line 1213
    cvt.d.s	$f7,$f7
    # Line 1212
    mul.s	$f8,$f8,$f10
    # Line 1214
    cvt.d.s	$f6,$f6
    # Line 1211
    cvt.d.s	$f9,$f9
    # Line 1212
    cvt.d.s	$f8,$f8
    # Line 1211
    add.d	$f9,$f9,$f11
    # Line 1212
    add.d	$f8,$f8,$f11
    # Line 1214
    add.d	$f6,$f6,$f11
    # Line 1213
    add.d	$f7,$f7,$f11
    # Line 1214
    cvt.s.d	$f6,$f6
    # Line 1213
    cvt.s.d	$f7,$f7
    # Line 1212
    cvt.s.d	$f8,$f8
    # Line 1216
    move	$t1,$zero
    beqz	$a5,.L0d952fc8
    # Line 1211
    cvt.s.d	$f9,$f9
    # Line 1216
    c.lt.s $f4,$f9
    bc1f .L0d952fc8
    nop
    sh	$a6,0($a4)
.L0d952fa4:
    # Line 1217
    c.lt.s $f4,$f8
    bc1t .L0d953008
    nop
    cvt.d.s	$f9,$f8
.L0d952fb4:
    c.lt.d $f9,$f5
    bc1f .L0d952ff0
    move	$t1,$zero
    b	.L0d952ff8
    nop
.L0d952fc8:
    # Line 1216
    cvt.d.s	$f12,$f9
    c.lt.d $f12,$f5
    bc1t .L0d952fe0
    nop
    trunc.w.s	$f13,$f9
    mfc1	$t1,$f13
.L0d952fe0:
    # Line 1217
    bnez	$a5,.L0d952fa4
    # Line 1216
    sh	$t1,0($a4)
    b	.L0d952fb4
    # Line 1217
    cvt.d.s	$f9,$f8
.L0d952ff0:
    trunc.w.s	$f14,$f8
    mfc1	$t1,$f14
.L0d952ff8:
    # Line 1218
    bnez	$a5,.L0d953010
    # Line 1217
    sh	$t1,2($a4)
    b	.L0d953020
    # Line 1218
    cvt.d.s	$f15,$f7
.L0d953008:
    beqz	$a5,.L0d9534ec
    # Line 1217
    sh	$a6,2($a4)
.L0d953010:
    # Line 1218
    c.lt.s $f4,$f7
    bc1t .L0d953044
    nop
    cvt.d.s	$f15,$f7
.L0d953020:
    c.lt.d $f15,$f5
    bc1t .L0d953034
    move	$t1,$zero
    trunc.w.s	$f16,$f7
    mfc1	$t1,$f16
.L0d953034:
    # Line 1219
    bnez	$a5,.L0d953048
    # Line 1218
    sh	$t1,4($a4)
    b	.L0d953058
    # Line 1219
    cvt.d.s	$f17,$f6
.L0d953044:
    # Line 1218
    sh	$a6,4($a4)
.L0d953048:
    # Line 1219
    c.lt.s	$f4,$f6
    bc1t	.L0d9530cc
    nop
    cvt.d.s	$f17,$f6
.L0d953058:
    c.lt.d $f17,$f5
    bc1t .L0d95306c
    move	$t1,$zero
    trunc.w.s	$f18,$f6
    mfc1	$t1,$f18
.L0d95306c:
    sh	$t1,6($a4)
    # Line 1223
    lwc1	$f7,24($a7)
    # Line 1224
    lwc1	$f6,28($a7)
    # Line 1221
    lwc1	$f9,16($a7)
    # Line 1222
    lwc1	$f8,20($a7)
    # Line 1223
    mul.s	$f7,$f7,$f10
    # Line 1224
    mul.s	$f6,$f6,$f10
    # Line 1221
    mul.s	$f9,$f9,$f10
    # Line 1223
    cvt.d.s	$f7,$f7
    # Line 1222
    mul.s	$f8,$f8,$f10
    # Line 1224
    cvt.d.s	$f6,$f6
    # Line 1221
    cvt.d.s	$f9,$f9
    # Line 1222
    cvt.d.s	$f8,$f8
    # Line 1221
    add.d	$f9,$f9,$f11
    # Line 1222
    add.d	$f8,$f8,$f11
    # Line 1224
    add.d	$f6,$f6,$f11
    # Line 1223
    add.d	$f7,$f7,$f11
    # Line 1224
    cvt.s.d	$f6,$f6
    # Line 1223
    cvt.s.d	$f7,$f7
    # Line 1222
    cvt.s.d	$f8,$f8
    # Line 1226
    bnez	$a5,.L0d953120
    # Line 1221
    cvt.s.d	$f9,$f9
    b	.L0d953130
    # Line 1226
    cvt.d.s	$f12,$f9
.L0d9530cc:
    # Line 1219
    sh	$a6,6($a4)
    # Line 1223
    lwc1	$f7,24($a7)
    # Line 1224
    lwc1	$f6,28($a7)
    # Line 1221
    lwc1	$f9,16($a7)
    # Line 1222
    lwc1	$f8,20($a7)
    # Line 1223
    mul.s	$f7,$f7,$f10
    # Line 1224
    mul.s	$f6,$f6,$f10
    # Line 1221
    mul.s	$f9,$f9,$f10
    # Line 1223
    cvt.d.s	$f7,$f7
    # Line 1222
    mul.s	$f8,$f8,$f10
    # Line 1224
    cvt.d.s	$f6,$f6
    # Line 1221
    cvt.d.s	$f9,$f9
    # Line 1222
    cvt.d.s	$f8,$f8
    # Line 1221
    add.d	$f9,$f9,$f11
    # Line 1222
    add.d	$f8,$f8,$f11
    # Line 1224
    add.d	$f6,$f6,$f11
    # Line 1223
    add.d	$f7,$f7,$f11
    # Line 1224
    cvt.s.d	$f6,$f6
    # Line 1223
    cvt.s.d	$f7,$f7
    # Line 1222
    cvt.s.d	$f8,$f8
    # Line 1221
    cvt.s.d	$f9,$f9
.L0d953120:
    # Line 1226
    c.lt.s $f4,$f9
    bc1t .L0d953154
    nop
    cvt.d.s	$f12,$f9
.L0d953130:
    c.lt.d $f12,$f5
    bc1t .L0d953144
    move	$t1,$zero
    trunc.w.s	$f13,$f9
    mfc1	$t1,$f13
.L0d953144:
    # Line 1227
    bnez	$a5,.L0d953158
    # Line 1226
    sh	$t1,8($a4)
    b	.L0d953168
    # Line 1227
    cvt.d.s	$f14,$f8
.L0d953154:
    # Line 1226
    sh	$a6,8($a4)
.L0d953158:
    # Line 1227
    c.lt.s $f4,$f8
    bc1t .L0d95318c
    nop
    cvt.d.s	$f14,$f8
.L0d953168:
    c.lt.d $f14,$f5
    bc1t .L0d95317c
    move	$t1,$zero
    trunc.w.s	$f15,$f8
    mfc1	$t1,$f15
.L0d95317c:
    # Line 1228
    bnez	$a5,.L0d953190
    # Line 1227
    sh	$t1,10($a4)
    b	.L0d9531a0
    # Line 1228
    cvt.d.s	$f16,$f7
.L0d95318c:
    # Line 1227
    sh	$a6,10($a4)
.L0d953190:
    # Line 1228
    c.lt.s $f4,$f7
    bc1t .L0d9531c4
    nop
    cvt.d.s	$f16,$f7
.L0d9531a0:
    c.lt.d $f16,$f5
    bc1t .L0d9531b4
    move	$t1,$zero
    trunc.w.s	$f17,$f7
    mfc1	$t1,$f17
.L0d9531b4:
    # Line 1229
    bnez	$a5,.L0d9531c8
    # Line 1228
    sh	$t1,12($a4)
    b	.L0d9531d8
    # Line 1229
    cvt.d.s	$f18,$f6
.L0d9531c4:
    # Line 1228
    sh	$a6,12($a4)
.L0d9531c8:
    # Line 1229
    c.lt.s	$f4,$f6
    bc1t	.L0d95324c
    nop
    cvt.d.s	$f18,$f6
.L0d9531d8:
    c.lt.d $f18,$f5
    bc1t .L0d9531ec
    move	$t1,$zero
    trunc.w.s	$f19,$f6
    mfc1	$t1,$f19
.L0d9531ec:
    sh	$t1,14($a4)
    # Line 1233
    lwc1	$f7,40($a7)
    # Line 1234
    lwc1	$f6,44($a7)
    # Line 1231
    lwc1	$f9,32($a7)
    # Line 1232
    lwc1	$f8,36($a7)
    # Line 1233
    mul.s	$f7,$f7,$f10
    # Line 1234
    mul.s	$f6,$f6,$f10
    # Line 1231
    mul.s	$f9,$f9,$f10
    # Line 1233
    cvt.d.s	$f7,$f7
    # Line 1232
    mul.s	$f8,$f8,$f10
    # Line 1234
    cvt.d.s	$f6,$f6
    # Line 1231
    cvt.d.s	$f9,$f9
    # Line 1232
    cvt.d.s	$f8,$f8
    # Line 1231
    add.d	$f9,$f9,$f11
    # Line 1232
    add.d	$f8,$f8,$f11
    # Line 1234
    add.d	$f6,$f6,$f11
    # Line 1233
    add.d	$f7,$f7,$f11
    # Line 1234
    cvt.s.d	$f6,$f6
    # Line 1233
    cvt.s.d	$f7,$f7
    # Line 1232
    cvt.s.d	$f8,$f8
    # Line 1236
    bnez	$a5,.L0d9532a0
    # Line 1231
    cvt.s.d	$f9,$f9
    b	.L0d9532b0
    # Line 1236
    cvt.d.s	$f12,$f9
.L0d95324c:
    # Line 1229
    sh	$a6,14($a4)
    # Line 1233
    lwc1	$f7,40($a7)
    # Line 1234
    lwc1	$f6,44($a7)
    # Line 1231
    lwc1	$f9,32($a7)
    # Line 1232
    lwc1	$f8,36($a7)
    # Line 1233
    mul.s	$f7,$f7,$f10
    # Line 1234
    mul.s	$f6,$f6,$f10
    # Line 1231
    mul.s	$f9,$f9,$f10
    # Line 1233
    cvt.d.s	$f7,$f7
    # Line 1232
    mul.s	$f8,$f8,$f10
    # Line 1234
    cvt.d.s	$f6,$f6
    # Line 1231
    cvt.d.s	$f9,$f9
    # Line 1232
    cvt.d.s	$f8,$f8
    # Line 1231
    add.d	$f9,$f9,$f11
    # Line 1232
    add.d	$f8,$f8,$f11
    # Line 1234
    add.d	$f6,$f6,$f11
    # Line 1233
    add.d	$f7,$f7,$f11
    # Line 1234
    cvt.s.d	$f6,$f6
    # Line 1233
    cvt.s.d	$f7,$f7
    # Line 1232
    cvt.s.d	$f8,$f8
    # Line 1231
    cvt.s.d	$f9,$f9
.L0d9532a0:
    # Line 1236
    c.lt.s $f4,$f9
    bc1t .L0d9532d4
    nop
    cvt.d.s	$f12,$f9
.L0d9532b0:
    c.lt.d $f12,$f5
    bc1t .L0d9532c4
    move	$t1,$zero
    trunc.w.s	$f13,$f9
    mfc1	$t1,$f13
.L0d9532c4:
    # Line 1237
    bnez	$a5,.L0d9532d8
    # Line 1236
    sh	$t1,16($a4)
    b	.L0d9532e4
    nop
.L0d9532d4:
    sh	$a6,16($a4)
.L0d9532d8:
    # Line 1237
    c.lt.s $f4,$f8
    bc1t .L0d95330c
    nop
.L0d9532e4:
    cvt.d.s	$f14,$f8
    c.lt.d $f14,$f5
    bc1t .L0d9532fc
    move	$t1,$zero
    trunc.w.s	$f15,$f8
    mfc1	$t1,$f15
.L0d9532fc:
    # Line 1238
    bnez	$a5,.L0d953310
    # Line 1237
    sh	$t1,18($a4)
    b	.L0d95331c
    nop
.L0d95330c:
    sh	$a6,18($a4)
.L0d953310:
    # Line 1238
    c.lt.s $f4,$f7
    bc1t .L0d953344
    nop
.L0d95331c:
    cvt.d.s	$f16,$f7
    c.lt.d $f16,$f5
    bc1t .L0d953334
    move	$t1,$zero
    trunc.w.s	$f17,$f7
    mfc1	$t1,$f17
.L0d953334:
    # Line 1239
    bnez	$a5,.L0d953348
    # Line 1238
    sh	$t1,20($a4)
    b	.L0d953354
    nop
.L0d953344:
    sh	$a6,20($a4)
.L0d953348:
    # Line 1239
    c.lt.s	$f4,$f6
    bc1t	.L0d9533cc
    nop
.L0d953354:
    cvt.d.s	$f18,$f6
    c.lt.d $f18,$f5
    bc1t .L0d95336c
    move	$t1,$zero
    trunc.w.s	$f19,$f6
    mfc1	$t1,$f19
.L0d95336c:
    sh	$t1,22($a4)
    # Line 1243
    lwc1	$f7,56($a7)
    # Line 1244
    lwc1	$f6,60($a7)
    # Line 1241
    lwc1	$f9,48($a7)
    # Line 1242
    lwc1	$f8,52($a7)
    # Line 1243
    mul.s	$f7,$f7,$f10
    # Line 1244
    mul.s	$f6,$f6,$f10
    # Line 1241
    mul.s	$f9,$f9,$f10
    # Line 1243
    cvt.d.s	$f7,$f7
    # Line 1242
    mul.s	$f8,$f8,$f10
    # Line 1244
    cvt.d.s	$f6,$f6
    # Line 1241
    cvt.d.s	$f9,$f9
    # Line 1242
    cvt.d.s	$f8,$f8
    # Line 1241
    add.d	$f9,$f9,$f11
    # Line 1242
    add.d	$f8,$f8,$f11
    # Line 1244
    add.d	$f6,$f6,$f11
    # Line 1243
    add.d	$f7,$f7,$f11
    # Line 1244
    cvt.s.d	$f6,$f6
    # Line 1243
    cvt.s.d	$f7,$f7
    # Line 1242
    cvt.s.d	$f8,$f8
    # Line 1246
    bnez	$a5,.L0d953420
    # Line 1241
    cvt.s.d	$f9,$f9
    b	.L0d95342c
    nop
.L0d9533cc:
    # Line 1239
    sh	$a6,22($a4)
    # Line 1243
    lwc1	$f7,56($a7)
    # Line 1244
    lwc1	$f6,60($a7)
    # Line 1241
    lwc1	$f9,48($a7)
    # Line 1242
    lwc1	$f8,52($a7)
    # Line 1243
    mul.s	$f7,$f7,$f10
    # Line 1244
    mul.s	$f6,$f6,$f10
    # Line 1241
    mul.s	$f9,$f9,$f10
    # Line 1243
    cvt.d.s	$f7,$f7
    # Line 1242
    mul.s	$f8,$f8,$f10
    # Line 1244
    cvt.d.s	$f6,$f6
    # Line 1241
    cvt.d.s	$f9,$f9
    # Line 1242
    cvt.d.s	$f8,$f8
    # Line 1241
    add.d	$f9,$f9,$f11
    # Line 1242
    add.d	$f8,$f8,$f11
    # Line 1244
    add.d	$f6,$f6,$f11
    # Line 1243
    add.d	$f7,$f7,$f11
    # Line 1244
    cvt.s.d	$f6,$f6
    # Line 1243
    cvt.s.d	$f7,$f7
    # Line 1242
    cvt.s.d	$f8,$f8
    # Line 1241
    cvt.s.d	$f9,$f9
.L0d953420:
    # Line 1246
    c.lt.s $f4,$f9
    bc1t .L0d953454
    nop
.L0d95342c:
    cvt.d.s	$f12,$f9
    c.lt.d $f12,$f5
    bc1t .L0d953444
    move	$t1,$zero
    trunc.w.s	$f13,$f9
    mfc1	$t1,$f13
.L0d953444:
    # Line 1247
    bnez	$a5,.L0d953458
    # Line 1246
    sh	$t1,24($a4)
    b	.L0d953464
    nop
.L0d953454:
    sh	$a6,24($a4)
.L0d953458:
    # Line 1247
    c.lt.s $f4,$f8
    bc1t .L0d95348c
    nop
.L0d953464:
    cvt.d.s	$f14,$f8
    c.lt.d $f14,$f5
    bc1t .L0d95347c
    move	$t1,$zero
    trunc.w.s	$f15,$f8
    mfc1	$t1,$f15
.L0d95347c:
    # Line 1248
    bnez	$a5,.L0d953490
    # Line 1247
    sh	$t1,26($a4)
    b	.L0d95349c
    nop
.L0d95348c:
    sh	$a6,26($a4)
.L0d953490:
    # Line 1248
    c.lt.s $f4,$f7
    bc1t .L0d9534d4
    nop
.L0d95349c:
    cvt.d.s	$f16,$f7
    c.lt.d $f16,$f5
    bc1t .L0d9534b4
    move	$t1,$zero
    trunc.w.s	$f17,$f7
    mfc1	$t1,$f17
.L0d9534b4:
    # Line 1249
    bnez	$a5,.L0d9534d8
    # Line 1248
    sh	$t1,28($a4)
.L0d9534bc:
    # Line 1249
    cvt.d.s	$f18,$f6
    c.lt.d	$f18,$f5
    bc1f	.L0d952f20
    move	$t1,$zero
    b	.L0d952f28
    nop
.L0d9534d4:
    # Line 1248
    sh	$a6,28($a4)
.L0d9534d8:
    # Line 1249
    c.lt.s $f4,$f6
    bc1f .L0d9534bc
    nop
    b	.L0d952f28
    li	$t1,0xffff
.L0d9534ec:
    # Line 1219
    b	.L0d953020
    # Line 1218
    cvt.d.s	$f15,$f7
.L0d9534f4:
    # Line 1256
    bltz	$t8,.L0d952f00
    move	$t0,$t8
    b	.L0d953528
    # Line 1260
    lwc1	$f7,8($a7)
    nop
    nop
    nop
.L0d953510:
    # Line 1266
    trunc.w.s	$f19,$f6
    mfc1	$t1,$f19
.L0d953518:
    # Line 1269
    addiu	$a4,$a4,8
    # Line 1256
    beq	$t0,$t2,.L0d952f00
    # Line 1266
    sh	$t1,-2($a4)
    # Line 1260
    lwc1	$f7,8($a7)
.L0d953528:
    # Line 1261
    lwc1	$f6,12($a7)
    # Line 1258
    lwc1	$f9,0($a7)
    # Line 1259
    lwc1	$f8,4($a7)
    # Line 1260
    mul.s	$f7,$f7,$f10
    # Line 1261
    mul.s	$f6,$f6,$f10
    # Line 1258
    mul.s	$f9,$f9,$f10
    # Line 1260
    cvt.d.s	$f7,$f7
    # Line 1259
    mul.s	$f8,$f8,$f10
    # Line 1261
    cvt.d.s	$f6,$f6
    # Line 1258
    cvt.d.s	$f9,$f9
    # Line 1259
    cvt.d.s	$f8,$f8
    # Line 1258
    add.d	$f9,$f9,$f11
    # Line 1259
    add.d	$f8,$f8,$f11
    # Line 1261
    add.d	$f6,$f6,$f11
    # Line 1260
    add.d	$f7,$f7,$f11
    # Line 1261
    cvt.s.d	$f6,$f6
    # Line 1260
    cvt.s.d	$f7,$f7
    # Line 1263
    move	$t1,$zero
    # Line 1256
    addiu	$t0,$t0,-1
    # Line 1259
    cvt.s.d	$f8,$f8
    # Line 1268
    addiu	$a7,$a7,16
    # Line 1263
    beqz	$a5,.L0d9535b8
    # Line 1258
    cvt.s.d	$f9,$f9
    # Line 1263
    c.lt.s $f4,$f9
    bc1f .L0d9535b8
    nop
    sh	$a6,0($a4)
.L0d953594:
    # Line 1264
    c.lt.s $f4,$f8
    bc1t .L0d9535f8
    nop
    cvt.d.s	$f9,$f8
.L0d9535a4:
    c.lt.d $f9,$f5
    bc1f .L0d9535e0
    move	$t1,$zero
    b	.L0d9535e8
    nop
.L0d9535b8:
    # Line 1263
    cvt.d.s	$f12,$f9
    c.lt.d $f12,$f5
    bc1t .L0d9535d0
    nop
    trunc.w.s	$f13,$f9
    mfc1	$t1,$f13
.L0d9535d0:
    # Line 1264
    bnez	$a5,.L0d953594
    # Line 1263
    sh	$t1,0($a4)
    b	.L0d9535a4
    # Line 1264
    cvt.d.s	$f9,$f8
.L0d9535e0:
    trunc.w.s	$f14,$f8
    mfc1	$t1,$f14
.L0d9535e8:
    # Line 1265
    bnez	$a5,.L0d953600
    # Line 1264
    sh	$t1,2($a4)
    b	.L0d953610
    # Line 1265
    cvt.d.s	$f15,$f7
.L0d9535f8:
    beqz	$a5,.L0d95365c
    # Line 1264
    sh	$a6,2($a4)
.L0d953600:
    # Line 1265
    c.lt.s $f4,$f7
    bc1t .L0d953644
    nop
    cvt.d.s	$f15,$f7
.L0d953610:
    c.lt.d $f15,$f5
    bc1t .L0d953624
    move	$t1,$zero
    trunc.w.s	$f16,$f7
    mfc1	$t1,$f16
.L0d953624:
    # Line 1266
    bnez	$a5,.L0d953648
    # Line 1265
    sh	$t1,4($a4)
.L0d95362c:
    # Line 1266
    cvt.d.s	$f17,$f6
    c.lt.d	$f17,$f5
    bc1f	.L0d953510
    move	$t1,$zero
    b	.L0d953518
    nop
.L0d953644:
    # Line 1265
    sh	$a6,4($a4)
.L0d953648:
    # Line 1266
    c.lt.s $f4,$f6
    bc1f .L0d95362c
    nop
    b	.L0d953518
    li	$t1,0xffff
.L0d95365c:
    b	.L0d953610
    # Line 1265
    cvt.d.s	$f15,$f7
.L0d953664:
    b	.L0d952ca8
    # Line 1193
    move	$a5,$zero
.L0d95366c:
    # Line 1169
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,336($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d952ee4
    ld	$ra,344($sp)
.L0d953684:
    # Line 1154
    sw	$zero,12($sp)
    sw	$zero,8($sp)
    sw	$zero,4($sp)
    sw	$zero,0($sp)
    lw	$a4,31776($s1)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,0($sp)
    lw	$a3,31776($s1)
    andi	$a3,$a3,0xfff
    sw	$a3,8($sp)
    lw	$a2,31780($s1)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,4($sp)
    move	$a0,$s1
    lui	$a1,0x6f64
    lw	$t3,31780($s1)
    sd	$ra,344($sp)
    ori	$a1,$a1,0xd
    addiu	$a2,$sp,0
    andi	$t3,$t3,0xfff
    jal	__glOdysseyIoctl
    sw	$t3,12($sp)
    b	.L0d952ba4
    ld	$ra,344($sp)
.end softReturn

# Function: __glSoftAllocAccum
# Declared: Line 1343 (Source lines: 1344-1347)
# Address: 0x0d9536f0 - 0x0d953730 (Size: 64 bytes, Frame: 16)
.globl __glSoftAllocAccum
.ent __glSoftAllocAccum
__glSoftAllocAccum:
    # Line 1344
    addiu	$sp,$sp,-16
    lui	$v0,0x1a
    sd	$gp,8($sp)
    addiu	$v0,$v0,20128
    addu	$gp,$t9,$v0
    # Line 1345
    lw	$t9,31472($a0)
    lw	$a2,3704($a0)
    # Line 1344
    move	$at,$a0
    sd	$ra,0($sp)
    move	$a0,$a1
    # Line 1345
    jalr	$t9
    lw	$a1,3700($at)
    ld	$ra,0($sp)
    # Line 1347
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSoftAllocAccum

# Function: softClear
# Declared: Line 1351 (Source lines: 1352-1471)
# Address: 0x0d953730 - 0x0d953a08 (Size: 728 bytes, Frame: 32)
.ent softClear
softClear:
    # Line 1352
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 1370
    lw	$a1,16($a0)
    # Line 1352
    sd	$s0,8($sp)
    lui	$at,0x1a
    move	$s0,$a0
    # Line 1370
    lw	$s1,4112($zero)
    # Line 1352
    addiu	$at,$at,20064
    sd	$gp,16($sp)
    # Line 1370
    beqz	$a1,.L0d9539e8
    # Line 1352
    addu	$gp,$t9,$at
.L0d95375c:
    # Line 1390
    lw	$t2,3704($s1)
    # Line 1389
    lui	$t1,0x1
    # Line 1390
    mtc1	$t2,$f0
    # Line 1389
    addu	$t1,$s1,$t1
    # Line 1390
    lwc1	$f5,7732($t1)
    lwc1	$f3,_lit_3f800000
    cvt.s.w	$f0,$f0
    add.s	$f5,$f5,$f3
    sub.s	$f5,$f0,$f5
    trunc.w.s	$f5,$f5
    # Line 1405
    lw	$a0,28($s0)
    # Line 1390
    mfc1	$a5,$f5
    # Line 1389
    lwc1	$f4,7720($t1)
    # Line 1405
    mult	$a0,$a5
    # Line 1389
    trunc.w.s	$f4,$f4
    # Line 1391
    lwc1	$f1,7728($t1)
    # Line 1392
    lwc1	$f2,7724($t1)
    # Line 1389
    mfc1	$a6,$f4
    # Line 1405
    lw	$a7,24($s0)
    mflo	$t0
    # Line 1391
    add.s	$f1,$f1,$f3
    # Line 1405
    addu	$t0,$a6,$t0
    # Line 1392
    sub.s	$f0,$f0,$f2
    # Line 1405
    multu	$a7,$t0
    # Line 1391
    trunc.w.s	$f1,$f1
    # Line 1392
    trunc.w.s	$f0,$f0
    # Line 1391
    mfc1	$a4,$f1
    # Line 1392
    mfc1	$a7,$f0
    # Line 1402
    lwc1	$f6,1660($s1)
    # Line 1429
    subu	$a4,$a4,$a6
    # Line 1401
    lwc1	$f7,1656($s1)
    # Line 1429
    subu	$a0,$a0,$a4
    slt	$a6,$a5,$a7
    # Line 1400
    lwc1	$f4,1652($s1)
    # Line 1405
    mflo	$a3
    # Line 1399
    lwc1	$f5,1648($s1)
    # Line 1429
    beqz	$a6,.L0d9539d4
    # Line 1405
    addu	$a3,$a1,$a3
    # Line 1429
    li	$a1,-1
    sll	$t1,$a0,0x4
    andi	$t8,$a4,0x3
    addiu	$t0,$t8,-1
    sra	$a6,$a4,0x2
    b	.L0d9539b4
    addiu	$t2,$a6,-1
.L0d953810:
    # Line 1456
    addiu	$a3,$a3,64
    # Line 1454
    swc1	$f6,-4($a3)
    # Line 1453
    swc1	$f7,-8($a3)
    # Line 1452
    swc1	$f4,-12($a3)
    # Line 1451
    swc1	$f5,-16($a3)
    # Line 1449
    swc1	$f6,-20($a3)
    # Line 1448
    swc1	$f7,-24($a3)
    # Line 1447
    swc1	$f4,-28($a3)
    # Line 1446
    swc1	$f5,-32($a3)
    # Line 1444
    swc1	$f6,-36($a3)
    # Line 1443
    swc1	$f7,-40($a3)
    # Line 1442
    swc1	$f4,-44($a3)
    # Line 1441
    swc1	$f5,-48($a3)
    # Line 1439
    swc1	$f6,-52($a3)
    # Line 1438
    swc1	$f7,-56($a3)
    addiu	$a4,$a4,-1
    # Line 1437
    swc1	$f4,-60($a3)
    # Line 1434
    addiu	$a0,$a0,-1
    bnez	$a4,.L0d953810
    # Line 1436
    swc1	$f5,-64($a3)
.L0d953860:
    beqz	$t3,.L0d95397c
    nop
    nop
    nop
.L0d953870:
    # Line 1456
    addiu	$a3,$a3,256
    # Line 1454
    swc1	$f6,-4($a3)
    # Line 1453
    swc1	$f7,-8($a3)
    # Line 1452
    swc1	$f4,-12($a3)
    # Line 1451
    swc1	$f5,-16($a3)
    # Line 1449
    swc1	$f6,-20($a3)
    # Line 1448
    swc1	$f7,-24($a3)
    # Line 1447
    swc1	$f4,-28($a3)
    # Line 1446
    swc1	$f5,-32($a3)
    # Line 1444
    swc1	$f6,-36($a3)
    # Line 1443
    swc1	$f7,-40($a3)
    # Line 1442
    swc1	$f4,-44($a3)
    # Line 1441
    swc1	$f5,-48($a3)
    # Line 1439
    swc1	$f6,-52($a3)
    # Line 1438
    swc1	$f7,-56($a3)
    # Line 1437
    swc1	$f4,-60($a3)
    # Line 1436
    swc1	$f5,-64($a3)
    # Line 1454
    swc1	$f6,-68($a3)
    # Line 1453
    swc1	$f7,-72($a3)
    # Line 1452
    swc1	$f4,-76($a3)
    # Line 1451
    swc1	$f5,-80($a3)
    # Line 1449
    swc1	$f6,-84($a3)
    # Line 1448
    swc1	$f7,-88($a3)
    # Line 1447
    swc1	$f4,-92($a3)
    # Line 1446
    swc1	$f5,-96($a3)
    # Line 1444
    swc1	$f6,-100($a3)
    # Line 1443
    swc1	$f7,-104($a3)
    # Line 1442
    swc1	$f4,-108($a3)
    # Line 1441
    swc1	$f5,-112($a3)
    # Line 1439
    swc1	$f6,-116($a3)
    # Line 1438
    swc1	$f7,-120($a3)
    # Line 1437
    swc1	$f4,-124($a3)
    # Line 1436
    swc1	$f5,-128($a3)
    # Line 1454
    swc1	$f6,-132($a3)
    # Line 1453
    swc1	$f7,-136($a3)
    # Line 1452
    swc1	$f4,-140($a3)
    # Line 1451
    swc1	$f5,-144($a3)
    # Line 1449
    swc1	$f6,-148($a3)
    # Line 1448
    swc1	$f7,-152($a3)
    # Line 1447
    swc1	$f4,-156($a3)
    # Line 1446
    swc1	$f5,-160($a3)
    # Line 1444
    swc1	$f6,-164($a3)
    # Line 1443
    swc1	$f7,-168($a3)
    # Line 1442
    swc1	$f4,-172($a3)
    # Line 1441
    swc1	$f5,-176($a3)
    # Line 1439
    swc1	$f6,-180($a3)
    # Line 1438
    swc1	$f7,-184($a3)
    # Line 1437
    swc1	$f4,-188($a3)
    # Line 1436
    swc1	$f5,-192($a3)
    # Line 1454
    swc1	$f6,-196($a3)
    # Line 1453
    swc1	$f7,-200($a3)
    # Line 1452
    swc1	$f4,-204($a3)
    # Line 1451
    swc1	$f5,-208($a3)
    # Line 1449
    swc1	$f6,-212($a3)
    # Line 1448
    swc1	$f7,-216($a3)
    # Line 1447
    swc1	$f4,-220($a3)
    # Line 1446
    swc1	$f5,-224($a3)
    # Line 1444
    swc1	$f6,-228($a3)
    # Line 1443
    swc1	$f7,-232($a3)
    # Line 1442
    swc1	$f4,-236($a3)
    # Line 1441
    swc1	$f5,-240($a3)
    # Line 1439
    swc1	$f6,-244($a3)
    # Line 1438
    swc1	$f7,-248($a3)
    # Line 1434
    addiu	$a0,$a0,-4
    # Line 1437
    swc1	$f4,-252($a3)
    # Line 1434
    bne	$a0,$a1,.L0d953870
    # Line 1436
    swc1	$f5,-256($a3)
.L0d95397c:
    # Line 1431
    addiu	$a5,$a5,1
    # Line 1460
    bltz	$t0,.L0d9539ac
    move	$a0,$t0
    nop
    nop
.L0d953990:
    # Line 1467
    addiu	$a3,$a3,16
    # Line 1465
    swc1	$f6,-4($a3)
    # Line 1464
    swc1	$f7,-8($a3)
    # Line 1460
    addiu	$a0,$a0,-1
    # Line 1463
    swc1	$f4,-12($a3)
    # Line 1460
    bne	$a0,$a1,.L0d953990
    # Line 1462
    swc1	$f5,-16($a3)
.L0d9539ac:
    # Line 1431
    beq	$a5,$a7,.L0d9539d4
    # Line 1469
    addu	$a3,$t1,$a3
.L0d9539b4:
    # Line 1434
    bltz	$t2,.L0d95397c
    move	$a0,$t2
    sra	$t3,$a6,0x2
    andi	$a4,$a6,0x3
    bnez	$a4,.L0d953810
    nop
    b	.L0d953860
    nop
.L0d9539d4:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 1471
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9539e8:
    # Line 1379
    lw	$t9,132($s0)
    move	$a0,$s1
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,24($sp)
    b	.L0d95375c
    lw	$a1,16($s0)
.end softClear

# Function: __glOdySoftAccum
# Declared: Line 1477 (Source lines: 1478-1523)
# Address: 0x0d953a10 - 0x0d953b00 (Size: 240 bytes, Frame: 48)
.globl __glOdySoftAccum
.ent __glOdySoftAccum
__glOdySoftAccum:
    # Line 1478
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    # Line 1482
    lw	$a3,4112($zero)
    # Line 1478
    sd	$s0,16($sp)
    # Line 1482
    lw	$at,31432($a3)
    # Line 1478
    move	$s0,$a0
    sdc1	$f30,8($sp)
    lui	$v0,0x1a
    sd	$s1,24($sp)
    addiu	$v0,$v0,19328
    # Line 1482
    addiu	$s1,$a3,31416
    # Line 1478
    mov.s	$f30,$f13
    sd	$gp,32($sp)
    # Line 1482
    beqz	$at,.L0d953acc
    # Line 1478
    addu	$gp,$t9,$v0
    # Line 1495
    li	$a2,259
.L0d953a50:
    li	$v1,256
    # Line 1500
    # lw $t9, -32744($gp) # &.text
    # Line 1495
    li	$a1,258
    li	$a3,260
    # Line 1509
    la	$a4,.text
    # Line 1495
    beq	$s0,$v1,.L0d953ac0
    xor	$a3,$s0,$a3
    # Line 1500
    addiu	$t9,$t9,1984
    # Line 1495
    li	$a0,257
    beq	$s0,$a0,.L0d953ae4
    # Line 1509
    addiu	$a4,$a4,9312
    # Line 1506
    # lw $t9, -32744($gp) # &.text
    # Line 1495
    beq	$s0,$a1,.L0d953aec
    # Line 1506
    addiu	$t9,$t9,7536
    # Line 1495
    beq	$s0,$a2,.L0d953af8
    nop
    lw	$t9,0($sp)
    movz	$t9,$a4,$a3
.L0d953a98:
    ld	$s0,16($sp)
.L0d953a9c:
    # Line 1522
    move	$a0,$s1
    jal	.text
    mov.s	$f13,$f30
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ldc1	$f30,8($sp)
    # Line 1523
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d953ac0:
    # Line 1497
    # lw $t9, -32744($gp) # &.text
    b	.L0d953a98
    addiu	$t9,$t9,4704
.L0d953acc:
    # Line 1489
    lw	$t9,31548($a3)
    move	$a0,$a3
    jal	.text
    move	$a1,$s1
    b	.L0d953a50
    # Line 1495
    li	$a2,259
.L0d953ae4:
    # Line 1501
    b	.L0d953a9c
    ld	$s0,16($sp)
.L0d953aec:
    # Line 1503
    # lw $t9, -32744($gp) # &.text
    # Line 1504
    b	.L0d953a98
    # Line 1503
    addiu	$t9,$t9,10976
.L0d953af8:
    # Line 1507
    b	.L0d953a9c
    ld	$s0,16($sp)
.end __glOdySoftAccum

# Function: hardLoadAccumulate24
# Declared: Line 1531 (Source lines: 1532-1720)
# Address: 0x0d953b00 - 0x0d954198 (Size: 1688 bytes, Frame: 176)
.ent hardLoadAccumulate24
hardLoadAccumulate24:
    # Line 1532
    addiu	$sp,$sp,-176
    sd	$s0,40($sp)
    # Line 1543
    lw	$s0,4112($zero)
    sdc1	$f28,48($sp)
    sdc1	$f26,56($sp)
    sdc1	$f20,64($sp)
    # Line 1546
    li	$at,257
    # Line 1532
    sdc1	$f24,16($sp)
    mov.s	$f4,$f13
    # Line 1546
    cvt.d.s	$f24,$f13
    beq	$a0,$at,.L0d9540a8
    sd	$ra,88($sp)
    li	$v0,256
    beq	$a0,$v0,.L0d9540f0
    sd	$s7,96($sp)
    lw	$v1,0($sp)
    sdc1	$f13,8($sp)
    sd	$s5,104($sp)
    sd	$s1,112($sp)
    sd	$s8,120($sp)
    ldc1	$f0,_lit8_bff0000000000000
    sd	$s4,128($sp)
    sd	$s3,136($sp)
    sd	$s6,144($sp)
    c.le.d	$f0,$f24
    sd	$s2,152($sp)
    li	$s7,1
    sd	$v1,24($sp)
    movf	$s7,$zero,$fcc0
.L0d953b74:
    # Line 1573
    lui	$s1,0x1
    addu	$s3,$s1,$s0
    lui	$t8,0xffef
    lw	$t9,-26972($s3)
    ori	$t8,$t8,0xffff
    # Line 1574
    lw	$s6,26976($s3)
    lui	$s8,0x20
    # Line 1573
    and	$t8,$t8,$t9
    sw	$t8,-26972($s3)
    # Line 1574
    or	$s6,$s8,$s6
    sw	$s6,26976($s3)
    li	$s6,2
    sw	$s6,4120($zero)
    # Line 1577
    lui	$s5,0x2
    lw	$s4,31740($s0)
    nor	$s5,$s5,$zero
    and	$s4,$s4,$s5
    sw	$s4,31740($s0)
    # Line 1578
    lw	$s2,26976($s3)
    # Line 1593
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 1578
    ori	$s2,$s2,0x2
    sw	$s2,26976($s3)
    sw	$s6,4120($zero)
    # Line 1590
    sw	$s6,-29464($s3)
    # Line 1588
    lw	$a2,-29432($s3)
    # Line 1591
    lw	$a0,26976($s3)
    # Line 1582
    lw	$t2,-29456($s3)
    # Line 1586
    lw	$a6,-29440($s3)
    # Line 1584
    lw	$t0,-29448($s3)
    # Line 1581
    lui	$s2,0xffff
    # Line 1586
    and	$a6,$s2,$a6
    sw	$a6,-29440($s3)
    # Line 1584
    and	$t0,$s2,$t0
    sw	$t0,-29448($s3)
    # Line 1582
    and	$t2,$s2,$t2
    sw	$t2,-29456($s3)
    # Line 1593
    move	$a4,$zero
    # Line 1591
    or	$a0,$s1,$a0
    sw	$a0,26976($s3)
    move	$a1,$s1
    # Line 1588
    and	$a2,$s2,$a2
    sw	$a2,-29432($s3)
    # Line 1593
    li	$a3,1
    ori	$a1,$a1,0x1e38
    # Line 1581
    lw	$t3,-29460($s3)
    # Line 1593
    addu	$a1,$s0,$a1
    ori	$s5,$s1,0x2070
    # Line 1587
    lw	$a5,-29436($s3)
    # Line 1593
    ori	$s4,$s1,0x201c
    addu	$s5,$s0,$s5
    # Line 1585
    lw	$a7,-29444($s3)
    # Line 1593
    addu	$s4,$s0,$s4
    # Line 1583
    lw	$t1,-29452($s3)
    # Line 1587
    and	$a5,$s2,$a5
    # Line 1585
    and	$a7,$s2,$a7
    # Line 1587
    ori	$a5,$a5,0x800
    sw	$a5,-29436($s3)
    # Line 1583
    and	$t1,$s2,$t1
    # Line 1585
    ori	$a7,$a7,0x800
    sw	$a7,-29444($s3)
    # Line 1581
    and	$t3,$s2,$t3
    # Line 1583
    ori	$t1,$t1,0x800
    sw	$t1,-29452($s3)
    # Line 1593
    move	$a2,$s4
    # Line 1581
    ori	$t3,$t3,0x800
    sw	$t3,-29460($s3)
    # Line 1593
    move	$a0,$s5
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1591
    sw	$s6,4120($zero)
    # Line 1597
    beqz	$s7,.L0d953eb0
    # Line 1599
    lwc1	$f4,_lit_45800000
    # Line 1597
    ldc1	$f26,_lit8_3ff0000000000000
    c.le.d $f24,$f26
    bc1f .L0d953eb4
    # Line 1616
    ldc1	$f20,8($sp)
    # Line 1597
    ldc1	$f5,8($sp)
    abs.s	$f5,$f5
    cvt.d.s	$f1,$f5
    c.le.d $f26,$f1
    bc1f .L0d953cc4
    nop
    # Line 1599
    lwc1	$f4,_lit_457ff000
    b	.L0d953cc8
    nop
.L0d953cc4:
    mul.s	$f4,$f5,$f4
.L0d953cc8:
    trunc.l.s	$f5,$f4
    dmfc1	$t9,$f5
    sll	$t9,$t9,0x0
    sd	$t9,32($sp)
.L0d953cd8:
    # Line 1670
    sw	$s6,-29464($s3)
    # Line 1662
    lw	$a6,-29456($s3)
    # Line 1664
    lw	$a4,-29448($s3)
    # Line 1666
    lw	$a2,-29440($s3)
    # Line 1671
    lw	$v1,26976($s3)
    # Line 1668
    lw	$a0,-29432($s3)
    # Line 1671
    or	$v1,$s1,$v1
    sw	$v1,26976($s3)
    # Line 1668
    and	$a0,$s2,$a0
    sw	$a0,-29432($s3)
    # Line 1666
    and	$a2,$s2,$a2
    sw	$a2,-29440($s3)
    # Line 1664
    and	$a4,$s2,$a4
    sw	$a4,-29448($s3)
    # Line 1662
    and	$a6,$s2,$a6
    sw	$a6,-29456($s3)
    # Line 1661
    lw	$a7,-29460($s3)
    # Line 1667
    lw	$a1,-29436($s3)
    # Line 1665
    lw	$a3,-29444($s3)
    # Line 1663
    lw	$a5,-29452($s3)
    # Line 1667
    and	$a1,$s2,$a1
    # Line 1665
    and	$a3,$s2,$a3
    # Line 1667
    ori	$a1,$a1,0x1000
    sw	$a1,-29436($s3)
    # Line 1663
    and	$a5,$s2,$a5
    # Line 1665
    ori	$a3,$a3,0x1000
    sw	$a3,-29444($s3)
    # Line 1661
    and	$a7,$s2,$a7
    # Line 1663
    ori	$a5,$a5,0x1000
    sw	$a5,-29452($s3)
    # Line 1661
    ori	$a7,$a7,0x1000
    sw	$a7,-29460($s3)
    # Line 1671
    sw	$s6,4120($zero)
    # Line 1675
    lw	$at,31740($s0)
    # Line 1690
    ld	$a2,24($sp)
    # Line 1675
    lui	$v0,0x2
    or	$at,$at,$v0
    sw	$at,31740($s0)
    # Line 1676
    lw	$ra,26976($s3)
    # Line 1690
    # lw $t9, -32744($gp) # &.text
    # Line 1676
    ori	$ra,$ra,0x2
    sw	$ra,26976($s3)
    sw	$s6,4120($zero)
    # Line 1678
    lui	$at,0xffef
    lw	$v0,-26972($s3)
    ori	$at,$at,0xffff
    # Line 1680
    lw	$ra,26976($s3)
    # Line 1690
    addiu	$t9,$t9,0
    # Line 1678
    and	$at,$at,$v0
    sw	$at,-26972($s3)
    # Line 1690
    move	$a0,$zero
    # Line 1680
    or	$ra,$s8,$ra
    sw	$ra,26976($s3)
    # Line 1690
    li	$a1,40
    bal __glOdysseyAccumClose-0x190
    # Line 1680
    sw	$s6,4120($zero)
    # Line 1694
    # lw $t9, -32744($gp) # &.text
    ld	$s2,152($sp)
    addiu	$t9,$t9,112
    ld	$s1,112($sp)
    bal __glOdysseyAccumClose-0x120
    ld	$a0,32($sp)
    # Line 1701
    move	$a4,$zero
    li	$a3,1
    move	$a2,$s4
    # Line 1697
    lui	$a7,0x6
    lw	$a6,-26972($s3)
    # Line 1701
    move	$a1,$s5
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 1697
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    lui	$a7,0x4
    # Line 1699
    lw	$a5,26976($s3)
    # Line 1701
    lui	$a0,0x1
    # Line 1697
    or	$a6,$a6,$a7
    sw	$a6,-26972($s3)
    # Line 1701
    ori	$a0,$a0,0x1eb0
    # Line 1699
    or	$a5,$s8,$a5
    sw	$a5,26976($s3)
    # Line 1701
    addu	$a0,$s0,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1699
    sw	$s6,4120($zero)
    # Line 1713
    move	$a4,$zero
    # Line 1708
    lw	$a6,-26972($s3)
    # Line 1713
    li	$a3,1
    move	$a2,$s4
    # Line 1710
    lw	$a5,26976($s3)
    # Line 1713
    move	$a1,$s5
    # Line 1708
    lui	$a7,0x6
    # Line 1713
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    lui	$a0,0x1
    # Line 1708
    or	$a6,$a6,$a7
    sw	$a6,-26972($s3)
    # Line 1713
    ori	$a0,$a0,0x1eec
    # Line 1710
    or	$a5,$s8,$a5
    sw	$a5,26976($s3)
    # Line 1713
    addu	$a0,$s0,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1710
    sw	$s6,4120($zero)
    ld	$s6,144($sp)
    ld	$s3,136($sp)
    ld	$s4,128($sp)
    ld	$s8,120($sp)
    # Line 1717
    beqz	$s7,.L0d953e8c
    ld	$s5,104($sp)
    dmtc1	$zero,$f6
    c.lt.d $f24,$f6
    bc1t .L0d954094
    # Line 1718
    nop	# was lw $t9, -32744($gp) # &.text
.L0d953e8c:
    ld	$s7,96($sp)
.L0d953e90:
    ldc1	$f28,48($sp)
    ldc1	$f26,56($sp)
    ld	$ra,88($sp)
    ldc1	$f20,64($sp)
    # Line 1720
    ld	$s0,40($sp)
    ldc1	$f24,16($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d953eb0:
    # Line 1616
    ldc1	$f20,8($sp)
.L0d953eb4:
    abs.s	$f26,$f20
    sqrt.s	$f12,$f26
    sdc1	$f22,80($sp)
    sd	$s7,160($sp)
    # Line 1604
    lw	$t1,-26972($s3)
    # Line 1605
    lw	$t0,26976($s3)
    # Line 1616
    # lw $t9, -17032($gp) # &ceilf
    # Line 1604
    lui	$t2,0x10
    # Line 1605
    or	$t0,$s8,$t0
    sw	$t0,26976($s3)
    # Line 1604
    or	$t1,$t1,$t2
    sw	$t1,-26972($s3)
    # Line 1605
    sw	$s6,4120($zero)
    # Line 1616
    jal	ceilf
    sqrt.s	$f12,$f12
    trunc.w.s	$f13,$f0
    mfc1	$s7,$f13
    # Line 1618
    dmtc1	$zero,$f28
    mov.d	$f4,$f24
    # Line 1617
    beqz	$s7,.L0d953f18
    ldc1	$f22,_lit8_4010000000000000
    cvt.d.s	$f14,$f26
    c.lt.d $f14,$f22
    bc1f .L0d953f28
    nop
.L0d953f18:
    sdc1	$f30,72($sp)
    li	$s7,1
    b	.L0d953f2c
    sd	$s0,168($sp)
.L0d953f28:
    # Line 1618
    blez	$s7,.L0d954080
.L0d953f2c:
    ldc1	$f26,_lit8_3ff0000000000000
    sdc1	$f30,72($sp)
    sd	$s0,168($sp)
    move	$s0,$zero
    b	.L0d95418c
    lwc1	$f30,_lit_40800000
    nop
    nop
    nop
.L0d953f50:
    # Line 1626
    c.lt.d $f4,$f16
    movt.s	$f20,$f15,$fcc5
.L0d953f58:
    # Line 1639
    sw	$s6,-29464($s3)
    # Line 1631
    lw	$a2,-29456($s3)
    # Line 1633
    lw	$a0,-29448($s3)
    # Line 1635
    lw	$v0,-29440($s3)
    # Line 1640
    lw	$t3,26976($s3)
    # Line 1637
    lw	$t8,-29432($s3)
    # Line 1640
    or	$t3,$s1,$t3
    sw	$t3,26976($s3)
    # Line 1630
    lwc1	$f17,_lit_45800000
    # Line 1637
    and	$t8,$s2,$t8
    sw	$t8,-29432($s3)
    # Line 1635
    and	$v0,$s2,$v0
    sw	$v0,-29440($s3)
    # Line 1633
    and	$a0,$s2,$a0
    sw	$a0,-29448($s3)
    # Line 1630
    mul.s	$f17,$f17,$f20
    lw	$a3,-29460($s3)
    # Line 1636
    lw	$at,-29436($s3)
    # Line 1630
    trunc.w.s	$f17,$f17
    # Line 1632
    lw	$a1,-29452($s3)
    # Line 1631
    and	$a2,$s2,$a2
    # Line 1634
    lw	$v1,-29444($s3)
    # Line 1636
    and	$at,$s2,$at
    # Line 1630
    mfc1	$ra,$f17
    # Line 1631
    sw	$a2,-29456($s3)
    # Line 1632
    and	$a1,$s2,$a1
    # Line 1630
    and	$a3,$s2,$a3
    # Line 1642
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 1634
    and	$v1,$s2,$v1
    # Line 1630
    andi	$ra,$ra,0xffff
    # Line 1634
    or	$v1,$ra,$v1
    sw	$v1,-29444($s3)
    # Line 1630
    or	$a3,$ra,$a3
    # Line 1632
    or	$a1,$ra,$a1
    # Line 1636
    or	$ra,$ra,$at
    sw	$ra,-29436($s3)
    # Line 1642
    move	$a4,$zero
    move	$a2,$s4
    # Line 1630
    sw	$a3,-29460($s3)
    # Line 1642
    move	$a0,$s5
    li	$a3,1
    # Line 1632
    sw	$a1,-29452($s3)
    # Line 1642
    move	$a1,$s5
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1640
    sw	$s6,4120($zero)
    # Line 1647
    mtc1	$s0,$f13
    # lw $t9, -17028($gp) # &powf
    mov.s	$f12,$f30
    jal	powf
    cvt.s.w	$f13,$f13
    cvt.d.s	$f5,$f0
    mul.d	$f5,$f5,$f22
    div.d	$f5,$f24,$f5
    cvt.s.d	$f5,$f5
    cvt.d.s	$f14,$f5
    c.lt.d $f14,$f28
    # Line 1621
    addiu	$s0,$s0,1
    # Line 1647
    bc1f .L0d954048
    mov.s	$f20,$f5
    # Line 1650
    neg.s	$f20,$f5
.L0d954048:
    # Line 1652
    cvt.d.s	$f4,$f20
    c.eq.d $f4,$f26
    bc1t .L0d954078
    nop
    # Line 1621
    beq	$s0,$s7,.L0d954078
    # Line 1626
    lwc1	$f15,_lit_c0800000
    # Line 1618
    c.lt.d	$f22,$f4
.L0d954064:
    # Line 1626
    ldc1	$f16,_lit8_c010000000000000
    # Line 1618
    bc1f	.L0d953f50
    nop
    b	.L0d953f58
    lwc1	$f20,_lit_40800000
.L0d954078:
    ld	$s0,168($sp)
    ldc1	$f30,72($sp)
.L0d954080:
    ld	$s7,160($sp)
    ldc1	$f22,80($sp)
    # Line 1656
    li	$a4,4095
    b	.L0d953cd8
    sd	$a4,32($sp)
.L0d954094:
    # Line 1718
    addiu	$t9,$t9,17952
    bal __glOdySoftAccum
    lwc1	$f12,_lit_bf800000
    b	.L0d953e90
    ld	$s7,96($sp)
.L0d9540a8:
    # Line 1548
    dmtc1	$zero,$f6
    c.eq.d $f24,$f6
    # Line 1552
    ldc1	$f7,_lit8_bff0000000000000
    # Line 1548
    bc1t .L0d95415c
    sd	$s7,96($sp)
    # Line 1552
    sd	$zero,24($sp)
    sdc1	$f13,8($sp)
    sd	$s5,104($sp)
    sd	$s1,112($sp)
    sd	$s8,120($sp)
    sd	$s4,128($sp)
    sd	$s3,136($sp)
    sd	$s6,144($sp)
    c.le.d $f7,$f24
    sd	$s2,152($sp)
    li	$s7,1
    b	.L0d953b74
    movf	$s7,$zero,$fcc2
.L0d9540f0:
    # Line 1555
    dmtc1	$zero,$f28
    c.eq.d $f24,$f28
    # Line 1558
    li	$s7,1
    # Line 1555
    bc1t .L0d953e8c
    # Line 1558
    ldc1	$f8,_lit8_bff0000000000000
    c.le.d $f8,$f24
    movf	$s7,$zero,$fcc4
    beqz	$s7,.L0d954120
    sdc1	$f13,8($sp)
    c.lt.d $f24,$f28
    bc1t .L0d954148
    # Line 1559
    nop	# was lw $t9, -32744($gp) # &.text
.L0d954120:
    # Line 1561
    li	$ra,8
.L0d954124:
    sd	$ra,24($sp)
    sd	$s5,104($sp)
    sd	$s1,112($sp)
    sd	$s8,120($sp)
    sd	$s4,128($sp)
    sd	$s3,136($sp)
    sd	$s6,144($sp)
    # Line 1562
    b	.L0d953b74
    sd	$s2,152($sp)
.L0d954148:
    # Line 1559
    addiu	$t9,$t9,17952
    bal __glOdySoftAccum
    lwc1	$f12,_lit_bf800000
    b	.L0d954124
    # Line 1561
    li	$ra,8
.L0d95415c:
    # Line 1549
    # lw $t9, -32744($gp) # &.text
    move	$s7,$s7
    mov.d	$f20,$f20
    addiu	$t9,$t9,17952
    move	$ra,$ra
    mov.d	$f26,$f26
    mtc1	$zero,$f12
    # Line 1550
    ld	$s0,40($sp)
    mov.d	$f28,$f28
    ldc1	$f24,16($sp)
    bgezl	$zero,__glOdySoftAccum
    addiu	$sp,$sp,176
.L0d95418c:
    # Line 1626
    lwc1	$f15,_lit_c0800000
    b	.L0d954064
    # Line 1618
    c.lt.d	$f22,$f4
.end hardLoadAccumulate24

# Function: hardAdd24
# Declared: Line 1723 (Source lines: 1724-1852)
# Address: 0x0d9541a0 - 0x0d95461c (Size: 1148 bytes, Frame: 144)
.ent hardAdd24
hardAdd24:
    # Line 1733
    dmtc1	$zero,$f4
    # Line 1724
    addiu	$sp,$sp,-144
    sdc1	$f24,0($sp)
    # Line 1733
    cvt.d.s	$f24,$f12
    c.eq.d	$f24,$f4
    # Line 1724
    sd	$s8,56($sp)
    # Line 1757
    li	$a3,4095
    # Line 1733
    bc1f	.L0d9541d4
    lw	$s8,4112($zero)
    # Line 1737
    ld	$s8,56($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9541d4:
    sd	$s7,40($sp)
    sd	$s0,48($sp)
    sd	$s1,128($sp)
    # Line 1742
    lui	$s1,0x1
    sd	$s3,24($sp)
    addu	$s3,$s1,$s8
    # Line 1744
    lw	$a0,26976($s3)
    lui	$s0,0x20
    # Line 1742
    lw	$a1,-26972($s3)
    lui	$a2,0x10
    # Line 1744
    or	$a0,$s0,$a0
    sw	$a0,26976($s3)
    # Line 1742
    or	$a1,$a1,$a2
    sw	$a1,-26972($s3)
    # Line 1744
    li	$s7,2
    sw	$s7,4120($zero)
    # Line 1746
    lui	$v1,0x2
    lw	$v0,31740($s8)
    # Line 1753
    lwc1	$f5,_lit_457ff000
    # Line 1746
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,31740($s8)
    # Line 1749
    c.lt.d $f4,$f24
    # Line 1747
    lw	$at,26976($s3)
    # Line 1749
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 1747
    ori	$at,$at,0x2
    sw	$at,26976($s3)
    # Line 1749
    bc1f .L0d95426c
    # Line 1747
    sw	$s7,4120($zero)
    # Line 1749
    c.le.d $f24,$f4
    bc1f .L0d95426c
    sdc1	$f20,64($sp)
    c.le.d $f4,$f24
    # Line 1753
    lwc1	$f4,_lit_3f000000
    # Line 1749
    bc1f .L0d9545e8
    mov.s	$f20,$f4
    b	.L0d9545f0
    nop
.L0d95426c:
    sdc1	$f20,64($sp)
    # Line 1755
    ldc1	$f20,_lit8_3fe0000000000000
    # Line 1757
    sd	$a3,16($sp)
    # Line 1755
    mul.d	$f20,$f24,$f20
    # Line 1756
    abs.s	$f4,$f12
    sdc1	$f22,80($sp)
    sd	$ra,120($sp)
    # Line 1755
    cvt.s.d	$f20,$f20
.L0d95428c:
    # Line 1759
    ldc1	$f22,_lit8_401ffef9db22d0e5
    cvt.d.s	$f12,$f4
    div.d	$f12,$f12,$f22
    # lw $t9, -17032($gp) # &ceilf
    jal	ceilf
    cvt.s.d	$f12,$f12
    sdc1	$f28,88($sp)
    sdc1	$f30,96($sp)
    lwc1	$f30,_lit_c0fff7cf
    trunc.w.s	$f13,$f0
    sd	$s5,32($sp)
    sdc1	$f26,72($sp)
    mfc1	$a1,$f13
    sd	$s2,104($sp)
    lui	$s2,0xffff
    lui	$a4,0x1
    sd	$s4,8($sp)
    ori	$a2,$a4,0x201c
    ori	$a4,$a4,0x2070
    sd	$s6,112($sp)
    blez	$a1,.L0d95460c
    addiu	$s6,$a1,1
    addu	$s4,$a4,$s8
    ldc1	$f26,_lit8_c01ffef9db22d0e5
    addu	$s5,$a2,$s8
    li	$s0,1
    b	.L0d9543e4
    lwc1	$f28,_lit_45800000
    nop
.L0d954300:
    # Line 1764
    c.lt.d $f4,$f26
    movt.s	$f20,$f30,$fcc4
.L0d954308:
    # Line 1777
    sw	$s7,-29464($s3)
    # Line 1770
    lw	$t8,-29452($s3)
    # Line 1768
    lw	$at,-29460($s3)
    # Line 1772
    lw	$t2,-29444($s3)
    # Line 1778
    lw	$a5,26976($s3)
    # Line 1774
    lw	$t0,-29436($s3)
    # Line 1778
    or	$a5,$s1,$a5
    sw	$a5,26976($s3)
    # Line 1774
    and	$t0,$s2,$t0
    sw	$t0,-29436($s3)
    # Line 1772
    and	$t2,$s2,$t2
    sw	$t2,-29444($s3)
    # Line 1769
    mul.s	$f14,$f28,$f20
    # Line 1771
    lw	$t3,-29448($s3)
    # Line 1775
    lw	$a7,-29432($s3)
    # Line 1769
    trunc.w.s	$f14,$f14
    # Line 1768
    and	$at,$s2,$at
    # Line 1773
    lw	$t1,-29440($s3)
    # Line 1770
    and	$t8,$s2,$t8
    # Line 1769
    lw	$ra,-29456($s3)
    # Line 1775
    and	$a7,$s2,$a7
    # Line 1769
    mfc1	$a6,$f14
    # Line 1770
    sw	$t8,-29452($s3)
    # Line 1773
    and	$t1,$s2,$t1
    # Line 1771
    and	$t3,$s2,$t3
    # Line 1768
    sw	$at,-29460($s3)
    # Line 1769
    and	$ra,$s2,$ra
    andi	$a6,$a6,0xffff
    # Line 1780
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 1769
    or	$ra,$a6,$ra
    # Line 1771
    or	$t3,$a6,$t3
    # Line 1773
    or	$t1,$a6,$t1
    # Line 1775
    or	$a6,$a6,$a7
    sw	$a6,-29432($s3)
    # Line 1773
    sw	$t1,-29440($s3)
    # Line 1780
    move	$a4,$zero
    li	$a3,1
    # Line 1771
    sw	$t3,-29448($s3)
    # Line 1780
    move	$a2,$s5
    move	$a1,$s4
    # Line 1769
    sw	$ra,-29456($s3)
    # Line 1780
    move	$a0,$s4
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1778
    sw	$s7,4120($zero)
    # Line 1780
    mtc1	$s0,$f4
    cvt.d.w	$f4,$f4
    mul.d	$f5,$f4,$f22
    c.lt.d $f5,$f24
    # Line 1761
    addiu	$s0,$s0,1
    # Line 1780
    bc1f .L0d9543fc
    # Line 1791
    mtc1	$zero,$f20
    # Line 1786
    nmsub.d	$f20,$f24,$f4,$f22
    cvt.s.d	$f20,$f20
.L0d9543dc:
    # Line 1761
    beq	$s0,$s6,.L0d954418
    nop
.L0d9543e4:
    # Line 1759
    cvt.d.s	$f4,$f20
    c.lt.d $f22,$f4
    bc1f .L0d954300
    nop
    b	.L0d954308
    lwc1	$f20,_lit_40fff7cf
.L0d9543fc:
    # Line 1786
    mul.d	$f21,$f4,$f26
    c.lt.d $f24,$f21
    bc1f .L0d9543dc
    nop
    # Line 1789
    madd.d	$f20,$f24,$f4,$f22
    b	.L0d9543dc
    cvt.s.d	$f20,$f20
.L0d954418:
    lui	$s0,0x20
.L0d95441c:
    ld	$s6,16($sp)
    ldc1	$f30,96($sp)
    ldc1	$f28,88($sp)
    ldc1	$f22,80($sp)
    ldc1	$f26,72($sp)
    # Line 1806
    sw	$s7,-29464($s3)
    # Line 1798
    lw	$t3,-29456($s3)
    # Line 1800
    lw	$t1,-29448($s3)
    # Line 1802
    lw	$a7,-29440($s3)
    # Line 1807
    lw	$a4,26976($s3)
    # Line 1804
    lw	$a5,-29432($s3)
    # Line 1807
    or	$a4,$s1,$a4
    sw	$a4,26976($s3)
    # Line 1804
    and	$a5,$s2,$a5
    sw	$a5,-29432($s3)
    # Line 1802
    and	$a7,$s2,$a7
    sw	$a7,-29440($s3)
    # Line 1800
    and	$t1,$s2,$t1
    sw	$t1,-29448($s3)
    # Line 1798
    and	$t3,$s2,$t3
    sw	$t3,-29456($s3)
    # Line 1797
    lw	$t8,-29460($s3)
    # Line 1803
    lw	$a6,-29436($s3)
    # Line 1801
    lw	$t0,-29444($s3)
    # Line 1799
    lw	$t2,-29452($s3)
    # Line 1803
    and	$a6,$s2,$a6
    # Line 1801
    and	$t0,$s2,$t0
    # Line 1803
    ori	$a6,$a6,0x1000
    sw	$a6,-29436($s3)
    # Line 1799
    and	$t2,$s2,$t2
    # Line 1801
    ori	$t0,$t0,0x1000
    sw	$t0,-29444($s3)
    # Line 1797
    and	$t8,$s2,$t8
    # Line 1799
    ori	$t2,$t2,0x1000
    sw	$t2,-29452($s3)
    # Line 1797
    ori	$t8,$t8,0x1000
    sw	$t8,-29460($s3)
    # Line 1807
    sw	$s7,4120($zero)
    # Line 1811
    lw	$a2,31740($s8)
    ldc1	$f20,64($sp)
    lui	$a3,0x2
    or	$a2,$a2,$a3
    sw	$a2,31740($s8)
    # Line 1812
    lw	$a1,26976($s3)
    # Line 1827
    # lw $t9, -32744($gp) # &.text
    # Line 1812
    ori	$a1,$a1,0x2
    sw	$a1,26976($s3)
    sw	$s7,4120($zero)
    # Line 1814
    lui	$a0,0x10
    # Line 1816
    lw	$v0,26976($s3)
    # Line 1814
    nor	$a0,$a0,$zero
    # Line 1827
    addiu	$t9,$t9,0
    # Line 1814
    lw	$v1,-26972($s3)
    # Line 1827
    li	$a2,8
    # Line 1816
    or	$v0,$s0,$v0
    sw	$v0,26976($s3)
    # Line 1827
    li	$a1,40
    # Line 1814
    and	$v1,$v1,$a0
    sw	$v1,-26972($s3)
    # Line 1827
    move	$a0,$zero
    bal __glOdysseyAccumClose-0x190
    # Line 1816
    sw	$s7,4120($zero)
    # Line 1831
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,112
    ld	$s1,128($sp)
    ld	$s2,104($sp)
    bal __glOdysseyAccumClose-0x120
    move	$a0,$s6
    ld	$s6,112($sp)
    # Line 1840
    move	$a4,$zero
    li	$a3,1
    move	$a2,$s5
    move	$a1,$s4
    # Line 1838
    lw	$a5,26976($s3)
    # Line 1840
    lui	$a0,0x1
    # Line 1836
    lw	$a6,-26972($s3)
    lui	$a7,0x6
    # Line 1838
    or	$a5,$s0,$a5
    # Line 1840
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 1836
    nor	$a7,$a7,$zero
    # Line 1838
    sw	$a5,26976($s3)
    # Line 1836
    and	$a6,$a6,$a7
    lui	$a7,0x4
    # Line 1840
    ori	$a0,$a0,0x1eb0
    # Line 1836
    or	$a6,$a6,$a7
    sw	$a6,-26972($s3)
    # Line 1840
    addu	$a0,$s8,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1838
    sw	$s7,4120($zero)
    ld	$ra,120($sp)
    # Line 1849
    move	$a2,$s5
    # Line 1852
    ld	$s5,32($sp)
    ldc1	$f24,0($sp)
    # Line 1847
    lw	$a1,26976($s3)
    # Line 1845
    lw	$a5,-26972($s3)
    lui	$a6,0x6
    # Line 1847
    or	$a1,$s0,$a1
    # Line 1852
    ld	$s0,48($sp)
    # Line 1845
    or	$a5,$a5,$a6
    sw	$a5,-26972($s3)
    # Line 1847
    sw	$a1,26976($s3)
    # Line 1852
    ld	$s3,24($sp)
    # Line 1849
    move	$a1,$s4
    # Line 1852
    ld	$s4,8($sp)
    # Line 1849
    lui	$a0,0x1
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a4,$zero
    ori	$a0,$a0,0x1eec
    # Line 1847
    sw	$s7,4120($zero)
    # Line 1849
    li	$a3,1
    # Line 1852
    ld	$s7,40($sp)
    # Line 1849
    addu	$a0,$s8,$a0
    # Line 1852
    ld	$s8,56($sp)
    jr	$t9
    addiu	$sp,$sp,144
.L0d9545e8:
    # Line 1753
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f12,$f5
.L0d9545f0:
    trunc.l.s	$f6,$f5
    dmfc1	$a7,$f6
    sdc1	$f22,80($sp)
    sd	$ra,120($sp)
    sll	$a7,$a7,0x0
    b	.L0d95428c
    sd	$a7,16($sp)
.L0d95460c:
    # Line 1761
    lui	$s2,0xffff
    addu	$s5,$a2,$s8
    b	.L0d95441c
    addu	$s4,$a4,$s8
.end hardAdd24

# Function: hardMult24
# Declared: Line 1855 (Source lines: 1856-1980)
# Address: 0x0d954620 - 0x0d9549fc (Size: 988 bytes, Frame: 160)
.ent hardMult24
hardMult24:
    # Line 1873
    ldc1	$f21,_lit8_40a0000000000000
    # Line 1856
    addiu	$sp,$sp,-160
    sd	$s3,24($sp)
    # Line 1864
    lw	$s3,4112($zero)
    sdc1	$f20,64($sp)
    sdc1	$f26,72($sp)
    sd	$ra,88($sp)
    sd	$s8,112($sp)
    sd	$s2,144($sp)
    sd	$s5,80($sp)
    sd	$s7,128($sp)
    sdc1	$f28,56($sp)
    # Line 1856
    sdc1	$f24,8($sp)
    # Line 1864
    ldc1	$f24,_lit8_3ff0000000000000
    sd	$s1,96($sp)
    cvt.d.s	$f0,$f12
    sd	$s0,104($sp)
    sdc1	$f30,48($sp)
    c.eq.d	$f0,$f24
    # Line 1869
    dmtc1	$zero,$f2
    # Line 1856
    sdc1	$f22,0($sp)
    mov.s	$f22,$f12
    # Line 1909
    mtc1	$zero,$f30
    sd	$s6,136($sp)
    lui	$s6,0x10
    sd	$s4,120($sp)
    # Line 1864
    bc1t	.L0d954800
    mov.d	$f4,$f0
    # Line 1909
    ldc1	$f5,_lit8_4000000000000000
    # Line 1869
    abs.s	$f1,$f12
    cvt.d.s	$f1,$f1
    # Line 1909
    lui	$s0,0x20
    move	$s1,$zero
    dmtc1	$zero,$f28
    # Line 1869
    c.le.d $f1,$f24
    # Line 1909
    lui	$s7,0x2
    li	$s5,2
    lui	$s4,0xfff9
    lui	$a1,0x1
    ldc1	$f6,_lit8_40a0000000000000
    ori	$a3,$a1,0x1eec
    # Line 1869
    bc1f .L0d954848
    # Line 1909
    ori	$s4,$s4,0xffff
    # Line 1869
    c.lt.d $f0,$f2
    bc1f .L0d9549e8
    # Line 1873
    ldc1	$f20,_lit8_4000000000000000
    add.d	$f20,$f0,$f20
    b	.L0d9546ec
    mul.d	$f20,$f20,$f21
.L0d9546e4:
    mul.s	$f4,$f12,$f4
.L0d9546e8:
    cvt.d.s	$f20,$f4
.L0d9546ec:
    # Line 1876
    lw	$at,31740($s3)
    lui	$v0,0x2
    # Line 1877
    lui	$s2,0x1
    addu	$s2,$s3,$s2
    # Line 1876
    or	$at,$at,$v0
    sw	$at,31740($s3)
    # Line 1877
    lw	$ra,26976($s2)
    # Line 1890
    # lw $t9, -32744($gp) # &.text
    # Line 1877
    ori	$ra,$ra,0x2
    sw	$ra,26976($s2)
    li	$s5,2
    sw	$s5,4120($zero)
    # Line 1890
    li	$a2,40
    # Line 1882
    lw	$at,26976($s2)
    # Line 1880
    lui	$v1,0x10
    # Line 1882
    lui	$s0,0x20
    # Line 1880
    lw	$v0,-26972($s2)
    # Line 1890
    addiu	$t9,$t9,0
    # Line 1882
    or	$at,$s0,$at
    sw	$at,26976($s2)
    # Line 1890
    move	$a1,$zero
    # Line 1880
    or	$v0,$v0,$v1
    sw	$v0,-26972($s2)
    # Line 1890
    move	$a0,$zero
    bal __glOdysseyAccumClose-0x190
    # Line 1882
    sw	$s5,4120($zero)
    # Line 1893
    trunc.w.d	$f5,$f20
    # lw $t9, -32744($gp) # &.text
    mfc1	$a0,$f5
    addiu	$t9,$t9,112
    dsll32	$a0,$a0,0x10
    bal __glOdysseyAccumClose-0x120
    dsra32	$a0,$a0,0x10
    # Line 1900
    move	$a4,$zero
    # Line 1896
    lw	$t8,-26972($s2)
    lui	$s4,0xfff9
    # Line 1900
    li	$a3,1
    # Line 1898
    lw	$ra,26976($s2)
    # Line 1896
    ori	$s4,$s4,0xffff
    and	$t8,$s4,$t8
    # Line 1900
    lui	$a0,0x1
    # Line 1898
    or	$ra,$s0,$ra
    # Line 1900
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    ori	$s1,$a0,0x201c
    # Line 1898
    sw	$ra,26976($s2)
    # Line 1900
    ori	$a0,$a0,0x1eb0
    addu	$s1,$s3,$s1
    # Line 1896
    sw	$t8,-26972($s2)
    # Line 1900
    addu	$a0,$s3,$a0
    move	$a2,$s1
    # Line 1898
    sw	$s5,4120($zero)
    # Line 1900
    jal	__glOdysseyImageMovePixelsCopy
    move	$a1,$a0
    # Line 1905
    lw	$a1,-26972($s2)
    # Line 1909
    move	$a4,$zero
    li	$a3,1
    # Line 1907
    lw	$t8,26976($s2)
    # Line 1909
    move	$a2,$s1
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    lui	$a0,0x1
    # Line 1907
    or	$t8,$s0,$t8
    sw	$t8,26976($s2)
    # Line 1909
    ori	$a0,$a0,0x1eec
    # Line 1905
    and	$a1,$s4,$a1
    sw	$a1,-26972($s2)
    # Line 1909
    addu	$a0,$s3,$a0
    # Line 1907
    sw	$s5,4120($zero)
    # Line 1909
    jal	__glOdysseyImageMovePixelsCopy
    move	$a1,$a0
.L0d954800:
    ld	$s2,144($sp)
.L0d954804:
    ld	$s3,24($sp)
    ld	$s6,136($sp)
    ld	$s7,128($sp)
    ld	$s4,120($sp)
    ld	$s8,112($sp)
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$s5,80($sp)
    ldc1	$f26,72($sp)
    ldc1	$f20,64($sp)
    ldc1	$f22,0($sp)
    ld	$ra,88($sp)
    ldc1	$f24,8($sp)
    ldc1	$f28,56($sp)
    ldc1	$f30,48($sp)
    # Line 1980
    jr	$ra
    addiu	$sp,$sp,160
.L0d954848:
    # Line 1909
    c.lt.s $f30,$f12
    bc1f .L0d954800
    lwc1	$f20,_lit_3f800000
    addu	$a3,$s3,$a3
    sd	$a3,16($sp)
    ori	$a2,$a1,0x201c
    addu	$s2,$s3,$a1
    ori	$a1,$a1,0x1eb0
    la	$s8,.text
    addu	$a2,$s3,$a2
    sd	$a2,40($sp)
    addu	$a1,$s3,$a1
    sd	$a1,32($sp)
    b	.L0d954990
    addiu	$s8,$s8,0
.L0d954884:
    # Line 1924
    add.d	$f26,$f4,$f5
    mul.d	$f26,$f6,$f26
.L0d95488c:
    # Line 1927
    sw	$at,31740($s3)
    # Line 1928
    lw	$ra,26976($s2)
    ori	$ra,$ra,0x2
    sw	$ra,26976($s2)
    sw	$s5,4120($zero)
    # Line 1931
    lw	$t9,-26972($s2)
    # Line 1933
    lw	$t8,26976($s2)
    # Line 1931
    or	$t9,$s6,$t9
    sw	$t9,-26972($s2)
    # Line 1933
    or	$t8,$s0,$t8
    sw	$t8,26976($s2)
    beqz	$s1,.L0d9549c4
    sw	$s5,4120($zero)
    # Line 1948
    move	$t9,$s8
    move	$a0,$zero
    li	$a2,8
    bal __glOdysseyAccumClose-0x190
    li	$a1,40
    # Line 1953
    trunc.w.d	$f27,$f26
.L0d9548d8:
    # lw $t9, -32744($gp) # &.text
    mfc1	$a0,$f27
    addiu	$t9,$t9,112
    dsll32	$a0,$a0,0x10
    bal __glOdysseyAccumClose-0x120
    dsra32	$a0,$a0,0x10
    # Line 1960
    ld	$a2,40($sp)
    ld	$a0,32($sp)
    # Line 1956
    lw	$a6,-26972($s2)
    # Line 1958
    lw	$a5,26976($s2)
    # Line 1960
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a4,$zero
    # Line 1958
    or	$a5,$s0,$a5
    sw	$a5,26976($s2)
    # Line 1960
    li	$a3,1
    # Line 1956
    and	$a6,$s4,$a6
    sw	$a6,-26972($s2)
    # Line 1960
    move	$a1,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1958
    sw	$s5,4120($zero)
    # Line 1969
    ld	$a2,40($sp)
    ld	$a0,16($sp)
    # Line 1965
    lw	$t0,-26972($s2)
    # Line 1967
    lw	$a7,26976($s2)
    # Line 1969
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a4,$zero
    # Line 1967
    or	$a7,$s0,$a7
    sw	$a7,26976($s2)
    # Line 1969
    li	$a3,1
    # Line 1965
    and	$t0,$s4,$t0
    sw	$t0,-26972($s2)
    # Line 1969
    move	$a1,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 1967
    sw	$s5,4120($zero)
    # Line 1973
    addiu	$s1,$s1,1
    mtc1	$s1,$f29
    cvt.s.w	$f29,$f29
    sub.s	$f29,$f22,$f29
    cvt.d.s	$f31,$f29
    ldc1	$f5,_lit8_4000000000000000
    # Line 1974
    c.lt.s $f30,$f29
    ldc1	$f6,_lit8_40a0000000000000
    # Line 1973
    c.lt.d $f31,$f24
    movt.s	$f20,$f29,$fcc4
    # Line 1974
    bc1f .L0d9549e0
    nop
.L0d954990:
    # Line 1909
    cvt.d.s	$f4,$f20
    c.lt.d $f4,$f28
    # Line 1927
    lw	$at,31740($s3)
    # Line 1909
    bc1t .L0d954884
    # Line 1927
    or	$at,$s7,$at
    # Line 1924
    c.le.d $f24,$f4
    bc1f .L0d9549b8
    lwc1	$f4,_lit_45000000
    b	.L0d9549bc
    lwc1	$f4,_lit_44ffe000
.L0d9549b8:
    mul.s	$f4,$f20,$f4
.L0d9549bc:
    b	.L0d95488c
    cvt.d.s	$f26,$f4
.L0d9549c4:
    # Line 1943
    move	$t9,$s8
    move	$a0,$zero
    li	$a1,40
    bal __glOdysseyAccumClose-0x190
    move	$a2,$zero
    b	.L0d9548d8
    # Line 1953
    trunc.w.d	$f27,$f26
.L0d9549e0:
    b	.L0d954804
    ld	$s2,144($sp)
.L0d9549e8:
    # Line 1873
    c.le.d	$f24,$f0
    bc1f	.L0d9546e4
    lwc1	$f4,_lit_45000000
    b	.L0d9546e8
    lwc1	$f4,_lit_44ffe000
.end hardMult24

# Function: hardReturn24
# Declared: Line 1984 (Source lines: 1985-2491)
# Address: 0x0d954a00 - 0x0d9557d8 (Size: 3544 bytes, Frame: 240)
.ent hardReturn24
hardReturn24:
    # Line 1985
    addiu	$sp,$sp,-240
    sd	$ra,72($sp)
    sdc1	$f22,24($sp)
    sd	$s0,80($sp)
    # Line 2014
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 1985
    sd	$s7,120($sp)
    sd	$s1,88($sp)
    sd	$s6,64($sp)
    sd	$s3,56($sp)
    sd	$s5,96($sp)
    # Line 1997
    lw	$s5,4112($zero)
    # Line 1985
    sd	$s2,48($sp)
    # Line 2003
    lui	$s2,0x1
    # Line 1985
    sd	$s4,144($sp)
    # Line 2003
    addu	$s4,$s2,$s5
    lw	$s6,7360($s4)
    # Line 2004
    lw	$s3,7572($s4)
    sw	$s3,7360($s4)
    # Line 2008
    lui	$s1,0xfffd
    lw	$s7,31740($s5)
    # Line 1985
    sd	$s8,104($sp)
    # Line 2008
    ori	$s1,$s1,0xffff
    and	$s7,$s1,$s7
    sw	$s7,31740($s5)
    # Line 2014
    move	$a4,$zero
    move	$a3,$zero
    # Line 2009
    lw	$t8,26976($s4)
    # Line 2011
    lui	$a5,0x800
    # Line 2012
    lui	$s0,0x20
    # Line 2003
    sd	$s6,40($sp)
    # Line 2014
    ori	$a0,$s2,0x2070
    # Line 2009
    ori	$t8,$t8,0x2
    sw	$t8,26976($s4)
    li	$s8,2
    # Line 2014
    ori	$s6,$s2,0x201c
    # Line 2009
    sw	$s8,4120($zero)
    # Line 2014
    addu	$a0,$s5,$a0
    addu	$s6,$s5,$s6
    # Line 2012
    lw	$at,26976($s4)
    # Line 2014
    move	$a2,$s6
    # Line 2010
    lui	$s3,0xffef
    lw	$a6,-26972($s4)
    # Line 2014
    sd	$a0,152($sp)
    # Line 2010
    ori	$s3,$s3,0xffff
    # Line 2014
    ori	$s7,$s2,0x1eb0
    # Line 2012
    or	$at,$s0,$at
    sw	$at,26976($s4)
    # Line 2010
    and	$a6,$s3,$a6
    # Line 2014
    addu	$s7,$s5,$s7
    # Line 2011
    or	$a5,$a5,$a6
    sw	$a5,-26972($s4)
    # Line 1985
    mov.s	$f22,$f12
    # Line 2014
    move	$a1,$s7
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2012
    sw	$s8,4120($zero)
    # Line 2026
    lui	$a0,0x1
    ori	$a1,$a0,0x1eec
    # Line 2020
    lw	$a3,31740($s5)
    # Line 2026
    addu	$a1,$s5,$a1
    sd	$a1,176($sp)
    # Line 2020
    and	$a3,$s1,$a3
    sw	$a3,31740($s5)
    # Line 2026
    ori	$a0,$a0,0x20b8
    # Line 2021
    lw	$a2,26976($s4)
    # Line 2026
    addu	$a0,$s5,$a0
    sd	$a0,160($sp)
    # Line 2021
    ori	$a2,$a2,0x2
    sw	$a2,26976($s4)
    sw	$s8,4120($zero)
    # Line 2024
    lw	$t8,26976($s4)
    # Line 2022
    lw	$a6,-26972($s4)
    # Line 2026
    move	$a4,$zero
    # Line 2023
    lui	$a5,0x800
    # Line 2026
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2024
    or	$t8,$s0,$t8
    sw	$t8,26976($s4)
    # Line 2022
    and	$a6,$s3,$a6
    # Line 2026
    move	$a3,$zero
    # Line 2023
    or	$a5,$a5,$a6
    sw	$a5,-26972($s4)
    # Line 2026
    move	$a2,$s6
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2024
    sw	$s8,4120($zero)
    # Line 2040
    lw	$a1,31740($s5)
    lui	$a0,0x2
    or	$a0,$a0,$a1
    sw	$a0,31740($s5)
    # Line 2041
    lw	$v1,26976($s4)
    # Line 2040
    # lw $t9, -32744($gp) # &.text
    # Line 2041
    ori	$v1,$v1,0x2
    sw	$v1,26976($s4)
    sw	$s8,4120($zero)
    # Line 2046
    li	$a2,40
    # Line 2043
    lui	$v0,0xfff9
    # Line 2042
    lw	$v1,-26972($s4)
    # Line 2043
    lui	$at,0x4
    ori	$v0,$v0,0xffff
    # Line 2045
    lw	$ra,26976($s4)
    # Line 2040
    addiu	$t9,$t9,0
    # Line 2042
    and	$v1,$s3,$v1
    # Line 2045
    or	$ra,$s0,$ra
    sw	$ra,26976($s4)
    # Line 2043
    and	$v0,$v0,$v1
    # Line 2046
    li	$a1,40
    # Line 2043
    or	$at,$at,$v0
    sw	$at,-26972($s4)
    # Line 2046
    li	$a0,6
    bal __glOdysseyAccumClose-0x190
    # Line 2045
    sw	$s8,4120($zero)
    # Line 2049
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,112
    bal __glOdysseyAccumClose-0x120
    li	$a0,1
    # Line 2050
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s7
    move	$a2,$s6
    move	$a4,$zero
    ld	$a1,176($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 2060
    lwc1	$f0,_lit_39800000
    # Line 2061
    ld	$a0,176($sp)
    # Line 2060
    swc1	$f0,0($sp)
    # Line 2061
    # lw $t9, -31412($gp) # &__glOdysseyClearScratchBuffer
    # Line 2060
    swc1	$f0,4($sp)
    swc1	$f0,8($sp)
    # Line 2061
    addiu	$a1,$sp,0
    jal	__glOdysseyClearScratchBuffer
    # Line 2060
    swc1	$f0,12($sp)
    # Line 2071
    lw	$a2,31740($s5)
    lui	$a1,0x2
    or	$a1,$a1,$a2
    sw	$a1,31740($s5)
    # Line 2072
    lw	$a0,26976($s4)
    # Line 2077
    # lw $t9, -32744($gp) # &.text
    # Line 2072
    ori	$a0,$a0,0x2
    sw	$a0,26976($s4)
    sw	$s8,4120($zero)
    # Line 2074
    lui	$at,0x4
    lui	$v0,0xfff9
    # Line 2073
    lw	$v1,-26972($s4)
    # Line 2077
    li	$a2,8
    # Line 2074
    ori	$v0,$v0,0xffff
    # Line 2076
    lw	$ra,26976($s4)
    # Line 2077
    addiu	$t9,$t9,0
    # Line 2073
    and	$v1,$s3,$v1
    # Line 2076
    or	$ra,$s0,$ra
    sw	$ra,26976($s4)
    # Line 2074
    and	$v0,$v0,$v1
    # Line 2077
    li	$a1,8
    # Line 2074
    or	$at,$at,$v0
    sw	$at,-26972($s4)
    # Line 2077
    li	$a0,6
    bal __glOdysseyAccumClose-0x190
    # Line 2076
    sw	$s8,4120($zero)
    # Line 2080
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a1,$s7
    move	$a2,$s6
    move	$a4,$zero
    ld	$a0,176($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 2094
    lw	$a1,31740($s5)
    lui	$a0,0x2
    or	$a0,$a0,$a1
    sw	$a0,31740($s5)
    # Line 2095
    lw	$v1,26976($s4)
    # Line 2100
    # lw $t9, -32744($gp) # &.text
    # Line 2095
    ori	$v1,$v1,0x2
    sw	$v1,26976($s4)
    sw	$s8,4120($zero)
    # Line 2099
    lw	$ra,26976($s4)
    # Line 2100
    li	$a2,8
    # Line 2097
    lui	$at,0xfff9
    # Line 2096
    lw	$v0,-26972($s4)
    # Line 2097
    ori	$at,$at,0xffff
    # Line 2100
    addiu	$t9,$t9,0
    # Line 2099
    or	$ra,$s0,$ra
    sw	$ra,26976($s4)
    # Line 2096
    and	$v0,$s3,$v0
    # Line 2100
    li	$a1,8
    # Line 2097
    and	$at,$at,$v0
    sw	$at,-26972($s4)
    # Line 2100
    li	$a0,2
    bal __glOdysseyAccumClose-0x190
    # Line 2099
    sw	$s8,4120($zero)
    # Line 2103
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s7
    move	$a2,$s6
    move	$a4,$zero
    ld	$a1,176($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 2122
    lw	$ra,26976($s4)
    # Line 2119
    lw	$v0,-26972($s4)
    # Line 2123
    li	$a2,8
    # Line 2120
    lui	$at,0xfff9
    # Line 2123
    # lw $t9, -32744($gp) # &.text
    # Line 2120
    ori	$at,$at,0xffff
    # Line 2122
    or	$ra,$s0,$ra
    sw	$ra,26976($s4)
    # Line 2119
    and	$v0,$s3,$v0
    # Line 2123
    addiu	$t9,$t9,0
    li	$a1,40
    # Line 2120
    and	$at,$at,$v0
    sw	$at,-26972($s4)
    # Line 2123
    move	$a0,$zero
    bal __glOdysseyAccumClose-0x190
    # Line 2122
    sw	$s8,4120($zero)
    # Line 2126
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,112
    bal __glOdysseyAccumClose-0x120
    li	$a0,1
    # Line 2127
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s7
    ld	$a1,152($sp)
    move	$a2,$s6
    move	$a4,$zero
    li	$a3,1
    jal	__glOdysseyImageMovePixelsCopy
    sdc1	$f28,200($sp)
    dmtc1	$zero,$f0
    cvt.d.s	$f28,$f22
    c.lt.d	$f28,$f0
    sdc1	$f20,192($sp)
    sdc1	$f24,208($sp)
    # Line 2209
    lui	$s3,0xffff
    # Line 2127
    bc1t	.L0d9553e0
    sdc1	$f30,216($sp)
    # Line 2209
    lwc1	$f30,_lit_45800000
.L0d954d98:
    # Line 2228
    lwc1	$f5,_lit_3f000000
    # Line 2218
    lw	$a5,26976($s4)
    # Line 2217
    lw	$a7,-26972($s4)
    lui	$a6,0xffef
    ori	$a6,$a6,0xffff
    # Line 2218
    or	$a5,$s0,$a5
    sw	$a5,26976($s4)
    # Line 2217
    and	$a6,$a6,$a7
    sw	$a6,-26972($s4)
    # Line 2218
    sw	$s8,4120($zero)
    # Line 2228
    swc1	$f5,0($sp)
    swc1	$f5,4($sp)
    swc1	$f5,8($sp)
    swc1	$f5,12($sp)
    # Line 2230
    lw	$a4,-29460($s4)
    and	$a4,$s3,$a4
    sw	$a4,-29460($s4)
    # Line 2231
    lwc1	$f4,0($sp)
    mul.s	$f4,$f30,$f4
    trunc.w.s	$f4,$f4
    # Line 2232
    lw	$a2,-29452($s4)
    # Line 2231
    lw	$a4,-29456($s4)
    mfc1	$a3,$f4
    # Line 2232
    and	$a2,$s3,$a2
    sw	$a2,-29452($s4)
    # Line 2231
    and	$a4,$s3,$a4
    andi	$a3,$a3,0xffff
    or	$a3,$a3,$a4
    sw	$a3,-29456($s4)
    # Line 2233
    lwc1	$f3,4($sp)
    mul.s	$f3,$f30,$f3
    trunc.w.s	$f3,$f3
    # Line 2234
    lw	$a0,-29444($s4)
    # Line 2233
    lw	$a2,-29448($s4)
    mfc1	$a1,$f3
    # Line 2234
    and	$a0,$s3,$a0
    # Line 2233
    and	$a2,$s3,$a2
    # Line 2234
    sw	$a0,-29444($s4)
    # Line 2233
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a2
    sw	$a1,-29448($s4)
    # Line 2235
    lwc1	$f2,8($sp)
    mul.s	$f2,$f30,$f2
    trunc.w.s	$f2,$f2
    # Line 2236
    lw	$v0,-29436($s4)
    # Line 2235
    lw	$a0,-29440($s4)
    mfc1	$v1,$f2
    # Line 2236
    and	$v0,$s3,$v0
    # Line 2235
    and	$a0,$s3,$a0
    # Line 2236
    sw	$v0,-29436($s4)
    # Line 2235
    andi	$v1,$v1,0xffff
    or	$v1,$v1,$a0
    sw	$v1,-29440($s4)
    # Line 2237
    lwc1	$f1,12($sp)
    # Line 2243
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2237
    mul.s	$f1,$f30,$f1
    # Line 2240
    lw	$ra,26976($s4)
    # Line 2243
    ld	$a1,160($sp)
    # Line 2237
    trunc.w.s	$f1,$f1
    lw	$v0,-29432($s4)
    # Line 2243
    ld	$a0,176($sp)
    # Line 2237
    mfc1	$at,$f1
    # Line 2240
    or	$ra,$s2,$ra
    # Line 2243
    move	$a4,$zero
    # Line 2239
    sw	$s8,-29464($s4)
    # Line 2237
    and	$v0,$s3,$v0
    # Line 2240
    sw	$ra,26976($s4)
    # Line 2237
    andi	$at,$at,0xffff
    # Line 2243
    li	$a3,1
    # Line 2237
    or	$at,$at,$v0
    sw	$at,-29432($s4)
    # Line 2243
    move	$a2,$s6
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2240
    sw	$s8,4120($zero)
    # Line 2257
    sw	$s8,-29464($s4)
    # Line 2249
    lw	$t1,-29456($s4)
    # Line 2251
    lw	$a7,-29448($s4)
    # Line 2253
    lw	$a5,-29440($s4)
    # Line 2258
    lw	$a2,26976($s4)
    # Line 2255
    lw	$a3,-29432($s4)
    # Line 2258
    or	$a2,$s2,$a2
    sw	$a2,26976($s4)
    # Line 2255
    and	$a3,$s3,$a3
    sw	$a3,-29432($s4)
    # Line 2253
    and	$a5,$s3,$a5
    sw	$a5,-29440($s4)
    # Line 2251
    and	$a7,$s3,$a7
    sw	$a7,-29448($s4)
    # Line 2249
    and	$t1,$s3,$t1
    sw	$t1,-29456($s4)
    # Line 2248
    lw	$t2,-29460($s4)
    # Line 2254
    lw	$a4,-29436($s4)
    # Line 2252
    lw	$a6,-29444($s4)
    # Line 2250
    lw	$t0,-29452($s4)
    # Line 2254
    and	$a4,$s3,$a4
    # Line 2252
    and	$a6,$s3,$a6
    # Line 2254
    ori	$a4,$a4,0x1000
    sw	$a4,-29436($s4)
    # Line 2250
    and	$t0,$s3,$t0
    # Line 2252
    ori	$a6,$a6,0x1000
    sw	$a6,-29444($s4)
    # Line 2248
    and	$t2,$s3,$t2
    # Line 2250
    ori	$t0,$t0,0x1000
    sw	$t0,-29452($s4)
    # Line 2248
    ori	$t2,$t2,0x1000
    sw	$t2,-29460($s4)
    # Line 2258
    sw	$s8,4120($zero)
    # Line 2261
    lw	$a1,31740($s5)
    lui	$a0,0x2
    or	$a0,$a0,$a1
    sw	$a0,31740($s5)
    # Line 2262
    lw	$v1,26976($s4)
    # Line 2276
    # lw $t9, -32744($gp) # &.text
    # Line 2262
    ori	$v1,$v1,0x2
    sw	$v1,26976($s4)
    sw	$s8,4120($zero)
    # Line 2273
    lui	$at,0x4
    # Line 2275
    lw	$ra,26976($s4)
    # Line 2276
    li	$a2,8
    # Line 2273
    lui	$v0,0xfff9
    lw	$v1,-26972($s4)
    ori	$v0,$v0,0xffff
    # Line 2276
    addiu	$t9,$t9,0
    # Line 2275
    or	$ra,$s0,$ra
    sw	$ra,26976($s4)
    # Line 2273
    and	$v0,$v0,$v1
    # Line 2276
    li	$a1,40
    # Line 2273
    or	$at,$at,$v0
    sw	$at,-26972($s4)
    # Line 2276
    move	$a0,$zero
    bal __glOdysseyAccumClose-0x190
    # Line 2275
    sw	$s8,4120($zero)
    # Line 2279
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,112
    bal __glOdysseyAccumClose-0x120
    li	$a0,1
    # Line 2280
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s7
    move	$a2,$s6
    move	$a4,$zero
    ld	$a1,176($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 2293
    lw	$v0,-26972($s4)
    lui	$at,0xfff9
    # Line 2296
    # lw $t9, -32744($gp) # &.text
    li	$a2,8
    # Line 2295
    lw	$ra,26976($s4)
    # Line 2293
    ori	$at,$at,0xffff
    and	$at,$at,$v0
    sw	$at,-26972($s4)
    # Line 2296
    addiu	$t9,$t9,0
    li	$a1,8
    # Line 2295
    or	$ra,$s0,$ra
    sw	$ra,26976($s4)
    # Line 2296
    li	$a0,7
    bal __glOdysseyAccumClose-0x190
    # Line 2295
    sw	$s8,4120($zero)
    # Line 2299
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a0,$s7
    move	$a2,$s6
    move	$a4,$zero
    ld	$a1,176($sp)
    jal	__glOdysseyImageMovePixelsCopy
    li	$a3,1
    # Line 2309
    lw	$t2,31740($s5)
    and	$t2,$s1,$t2
    sw	$t2,31740($s5)
    # Line 2310
    lw	$t1,26976($s4)
    # Line 2330
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2310
    ori	$t1,$t1,0x2
    sw	$t1,26976($s4)
    sw	$s8,4120($zero)
    # Line 2314
    lw	$a7,26976($s4)
    # Line 2313
    lui	$t0,0xffef
    lw	$t1,-26972($s4)
    ori	$t0,$t0,0xffff
    # Line 2314
    or	$a7,$s0,$a7
    sw	$a7,26976($s4)
    # Line 2313
    and	$t0,$t0,$t1
    sw	$t0,-26972($s4)
    # Line 2314
    sw	$s8,4120($zero)
    # Line 2326
    sw	$s8,-29464($s4)
    # Line 2320
    lw	$a3,-29448($s4)
    # Line 2322
    lw	$a1,-29440($s4)
    # Line 2318
    lw	$a5,-29456($s4)
    # Line 2327
    lw	$v0,26976($s4)
    # Line 2324
    lw	$v1,-29432($s4)
    # Line 2327
    or	$v0,$s2,$v0
    sw	$v0,26976($s4)
    # Line 2324
    and	$v1,$s3,$v1
    sw	$v1,-29432($s4)
    # Line 2318
    and	$a5,$s3,$a5
    sw	$a5,-29456($s4)
    # Line 2322
    and	$a1,$s3,$a1
    sw	$a1,-29440($s4)
    # Line 2320
    and	$a3,$s3,$a3
    sw	$a3,-29448($s4)
    # Line 2317
    lw	$a6,-29460($s4)
    dmtc1	$zero,$f20
    # Line 2323
    lw	$a0,-29436($s4)
    # Line 2330
    li	$a3,1
    move	$a1,$s7
    # Line 2319
    lw	$a4,-29452($s4)
    # Line 2321
    lw	$a2,-29444($s4)
    # Line 2323
    and	$a0,$s3,$a0
    # Line 2317
    and	$a6,$s3,$a6
    # Line 2319
    and	$a4,$s3,$a4
    # Line 2317
    ori	$a6,$a6,0x2000
    sw	$a6,-29460($s4)
    # Line 2321
    and	$a2,$s3,$a2
    # Line 2319
    ori	$a4,$a4,0x2000
    sw	$a4,-29452($s4)
    # Line 2330
    move	$a4,$zero
    # Line 2321
    ori	$a2,$a2,0x2000
    sw	$a2,-29444($s4)
    # Line 2330
    move	$a2,$s6
    # Line 2323
    ori	$a0,$a0,0x2000
    sw	$a0,-29436($s4)
    # Line 2330
    move	$a0,$s7
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2327
    sw	$s8,4120($zero)
    # Line 2342
    c.lt.d $f20,$f28
    bc1f .L0d955128
    ldc1	$f6,_lit8_3ff0000000000000
    c.eq.d $f28,$f6
    bc1f .L0d95563c
    nop
.L0d955128:
    ldc1	$f22,24($sp)
.L0d95512c:
    ldc1	$f28,200($sp)
    # Line 2410
    lw	$a5,26976($s4)
    # Line 2409
    sw	$s8,-29464($s4)
    # Line 2410
    or	$a5,$s2,$a5
    sw	$a5,26976($s4)
    # Line 2400
    lw	$t9,-29460($s4)
    # Line 2401
    lw	$t8,-29456($s4)
    # Line 2402
    lw	$t3,-29452($s4)
    # Line 2403
    lw	$t2,-29448($s4)
    # Line 2404
    lw	$t1,-29444($s4)
    # Line 2407
    lw	$a6,-29432($s4)
    # Line 2406
    lw	$a7,-29436($s4)
    # Line 2405
    lw	$t0,-29440($s4)
    # Line 2407
    and	$a6,$s3,$a6
    # Line 2406
    and	$a7,$s3,$a7
    # Line 2407
    ori	$a6,$a6,0x4
    sw	$a6,-29432($s4)
    # Line 2405
    and	$t0,$s3,$t0
    # Line 2406
    ori	$a7,$a7,0x1000
    sw	$a7,-29436($s4)
    # Line 2404
    and	$t1,$s3,$t1
    # Line 2405
    ori	$t0,$t0,0x4
    sw	$t0,-29440($s4)
    # Line 2403
    and	$t2,$s3,$t2
    # Line 2404
    ori	$t1,$t1,0x1000
    sw	$t1,-29444($s4)
    # Line 2402
    and	$t3,$s3,$t3
    # Line 2403
    ori	$t2,$t2,0x4
    sw	$t2,-29448($s4)
    # Line 2401
    and	$t8,$s3,$t8
    # Line 2402
    ori	$t3,$t3,0x1000
    sw	$t3,-29452($s4)
    # Line 2400
    and	$t9,$s3,$t9
    # Line 2401
    ori	$t8,$t8,0x4
    sw	$t8,-29456($s4)
    # Line 2400
    ori	$t9,$t9,0x1000
    sw	$t9,-29460($s4)
    # Line 2410
    sw	$s8,4120($zero)
    # Line 2413
    lw	$a4,31740($s5)
    ldc1	$f30,216($sp)
    and	$a4,$s1,$a4
    sw	$a4,31740($s5)
    # Line 2414
    lw	$a3,26976($s4)
    # Line 2436
    ld	$t8,40($sp)
    # Line 2414
    ori	$a3,$a3,0x2
    sw	$a3,26976($s4)
    sw	$s8,4120($zero)
    # Line 2416
    lw	$a2,7220($s4)
    sd	$a2,128($sp)
    # Line 2436
    sw	$t8,7360($s4)
    # Line 2417
    lw	$a0,7228($s4)
    # Line 2418
    lw	$v0,7232($s4)
    # Line 2419
    lw	$ra,7236($s4)
    # Line 2425
    lw	$a1,7432($s4)
    # Line 2427
    lw	$v1,7440($s4)
    # Line 2429
    lw	$at,7444($s4)
    # Line 2431
    lw	$t9,7448($s4)
    sw	$t9,7236($s4)
    # Line 2429
    sw	$at,7232($s4)
    # Line 2427
    sw	$v1,7228($s4)
    # Line 2425
    sw	$a1,7220($s4)
    # Line 2436
    lw	$t3,31836($s5)
    # Line 2417
    sd	$a0,112($sp)
    # Line 2418
    sd	$v0,136($sp)
    lui	$s0,0x20
    # Line 2436
    beq	$t3,$t8,.L0d955250
    # Line 2419
    sd	$ra,32($sp)
    # Line 2438
    ld	$at,40($sp)
    sw	$at,31836($s5)
    # Line 2439
    lw	$ra,26976($s4)
    ori	$ra,$ra,0x80
    sw	$ra,26976($s4)
    sw	$s8,4120($zero)
.L0d955250:
    lw	$v0,1792($s5)
    andi	$v0,$v0,0x8
    beqz	$v0,.L0d955290
    # Line 2448
    li	$a4,1
    # Line 2443
    lw	$a2,31740($s5)
    lui	$a0,0x4
    or	$a2,$a0,$a2
    sw	$a2,31740($s5)
    # Line 2445
    lw	$v1,26976($s4)
    # Line 2444
    lw	$a1,7220($s4)
    # Line 2445
    ori	$v1,$v1,0x2
    sw	$v1,26976($s4)
    # Line 2444
    or	$a0,$a0,$a1
    sw	$a0,7220($s4)
    # Line 2445
    sw	$s8,4120($zero)
    # Line 2448
    li	$a4,1
.L0d955290:
    li	$a3,1
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    move	$a2,$s6
    lui	$a0,0x1
    ldc1	$f20,192($sp)
    move	$a1,$s7
    ori	$a0,$a0,0x1e74
    ldc1	$f24,208($sp)
    jal	__glOdysseyImageMovePixelsCopy
    addu	$a0,$s5,$a0
    # Line 2453
    ld	$a1,128($sp)
    # Line 2454
    ld	$a0,112($sp)
    # Line 2455
    ld	$v1,136($sp)
    # Line 2456
    ld	$v0,32($sp)
    # Line 2459
    lw	$at,7572($s4)
    sw	$at,7360($s4)
    # Line 2456
    sw	$v0,7236($s4)
    # Line 2455
    sw	$v1,7232($s4)
    # Line 2454
    sw	$a0,7228($s4)
    # Line 2453
    sw	$a1,7220($s4)
    # Line 2461
    sw	$at,31836($s5)
    # Line 2462
    lw	$ra,26976($s4)
    ld	$s3,176($sp)
    ori	$ra,$ra,0x80
    sw	$ra,26976($s4)
    sw	$s8,4120($zero)
    # Line 2466
    lw	$t9,31740($s5)
    # Line 2472
    ld	$a1,152($sp)
    # Line 2466
    and	$t9,$s1,$t9
    sw	$t9,31740($s5)
    # Line 2467
    lw	$t8,26976($s4)
    # Line 2472
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2467
    ori	$t8,$t8,0x2
    sw	$t8,26976($s4)
    sw	$s8,4120($zero)
    # Line 2472
    move	$a4,$zero
    # Line 2470
    lw	$a5,26976($s4)
    # Line 2472
    move	$a3,$zero
    # Line 2468
    lui	$s2,0xffef
    lw	$a6,-26972($s4)
    ori	$s2,$s2,0xffff
    # Line 2470
    or	$a5,$s0,$a5
    sw	$a5,26976($s4)
    # Line 2472
    move	$a2,$s6
    # Line 2468
    and	$a6,$s2,$a6
    sw	$a6,-26972($s4)
    # Line 2472
    move	$a0,$s7
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2470
    sw	$s8,4120($zero)
    ld	$s7,40($sp)
    # Line 2478
    lw	$t0,31740($s5)
    # Line 2484
    ld	$a1,160($sp)
    # Line 2478
    and	$t0,$s1,$t0
    sw	$t0,31740($s5)
    # Line 2479
    lw	$a7,26976($s4)
    # Line 2484
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2479
    ori	$a7,$a7,0x2
    sw	$a7,26976($s4)
    sw	$s8,4120($zero)
    # Line 2482
    lw	$a5,26976($s4)
    # Line 2484
    move	$a4,$zero
    # Line 2480
    lw	$a6,-26972($s4)
    # Line 2484
    move	$a3,$zero
    # Line 2482
    or	$a5,$s0,$a5
    sw	$a5,26976($s4)
    # Line 2484
    move	$a2,$s6
    # Line 2480
    and	$a6,$s2,$a6
    sw	$a6,-26972($s4)
    # Line 2484
    move	$a0,$s3
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2482
    sw	$s8,4120($zero)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s5,96($sp)
    ld	$s8,104($sp)
    ld	$ra,72($sp)
    # Line 2489
    sw	$s7,7360($s4)
    # Line 2491
    ld	$s4,144($sp)
    ld	$s7,120($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d9553e0:
    # Line 2155
    abs.s	$f30,$f22
    sqrt.s	$f12,$f30
    # Line 2142
    lw	$t2,-26972($s4)
    # Line 2143
    lw	$t1,26976($s4)
    # Line 2155
    # lw $t9, -17032($gp) # &ceilf
    # Line 2142
    lui	$t3,0x10
    # Line 2143
    or	$t1,$s0,$t1
    sw	$t1,26976($s4)
    # Line 2153
    mov.s	$f20,$f22
    # Line 2142
    or	$t2,$t2,$t3
    sw	$t2,-26972($s4)
    # Line 2143
    sw	$s8,4120($zero)
    # Line 2155
    jal	ceilf
    sqrt.s	$f12,$f12
    # Line 2160
    trunc.w.s	$f13,$f0
    ldc1	$f24,_lit8_4010000000000000
    cvt.d.s	$f14,$f30
    mfc1	$ra,$f13
    li	$t8,1
    c.lt.d $f14,$f24
    sltiu	$at,$ra,1
    sdc1	$f26,224($sp)
    li	$t9,1
    movn	$ra,$t8,$at
    # Line 2163
    lwc1	$f30,_lit_45800000
    # Line 2160
    movf	$t9,$zero,$fcc3
    sdc1	$f22,232($sp)
    movz	$t8,$ra,$t9
    lwc1	$f22,_lit_40800000
    # Line 2163
    lui	$s3,0xffff
    # Line 2160
    move	$s0,$zero
    blez	$t8,.L0d9555a8
    sd	$t8,184($sp)
    lwc1	$f30,_lit_45800000
    lui	$s3,0xffff
    nop
.L0d955470:
    # Line 2182
    sw	$s8,-29464($s4)
    # Line 2178
    lw	$a2,-29440($s4)
    # Line 2173
    ldc1	$f17,_lit8_c010000000000000
    # Line 2176
    lw	$a4,-29448($s4)
    # Line 2173
    cvt.d.s	$f16,$f20
    lwc1	$f26,_lit_c0800000
    # Line 2174
    lw	$a6,-29456($s4)
    # Line 2173
    mov.s	$f15,$f20
    c.lt.d $f16,$f17
    # Line 2183
    lw	$v0,26976($s4)
    # Line 2180
    lw	$v1,-29432($s4)
    # Line 2173
    movt.s	$f15,$f26,$fcc4
    # Line 2183
    or	$v0,$s2,$v0
    sw	$v0,26976($s4)
    # Line 2180
    and	$v1,$s3,$v1
    sw	$v1,-29432($s4)
    # Line 2173
    mul.s	$f15,$f30,$f15
    # Line 2175
    lw	$a5,-29452($s4)
    # Line 2179
    lw	$a1,-29436($s4)
    # Line 2173
    trunc.w.s	$f15,$f15
    # Line 2174
    and	$a6,$s3,$a6
    # Line 2176
    and	$a4,$s3,$a4
    # Line 2177
    lw	$a3,-29444($s4)
    # Line 2178
    and	$a2,$s3,$a2
    # Line 2173
    lw	$a7,-29460($s4)
    # Line 2179
    and	$a1,$s3,$a1
    # Line 2173
    mfc1	$a0,$f15
    # Line 2178
    sw	$a2,-29440($s4)
    # Line 2177
    and	$a3,$s3,$a3
    # Line 2175
    and	$a5,$s3,$a5
    # Line 2176
    sw	$a4,-29448($s4)
    # Line 2173
    and	$a7,$s3,$a7
    andi	$a0,$a0,0xffff
    # Line 2174
    sw	$a6,-29456($s4)
    # Line 2173
    or	$a7,$a0,$a7
    # Line 2175
    or	$a5,$a0,$a5
    # Line 2177
    or	$a3,$a0,$a3
    # Line 2179
    or	$a0,$a0,$a1
    sw	$a0,-29436($s4)
    # Line 2177
    sw	$a3,-29444($s4)
    # Line 2175
    sw	$a5,-29452($s4)
    # Line 2173
    sw	$a7,-29460($s4)
    # Line 2183
    sw	$s8,4120($zero)
    # Line 2186
    lw	$at,31740($s5)
    # Line 2190
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2186
    and	$at,$s1,$at
    sw	$at,31740($s5)
    # Line 2190
    move	$a4,$zero
    # Line 2187
    lw	$ra,26976($s4)
    # Line 2190
    move	$a2,$s6
    li	$a3,1
    move	$a1,$s7
    # Line 2187
    ori	$ra,$ra,0x2
    sw	$ra,26976($s4)
    # Line 2190
    move	$a0,$s7
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2187
    sw	$s8,4120($zero)
    # Line 2194
    # lw $t9, -17024($gp) # &pow
    mtc1	$s0,$f13
    ldc1	$f20,_lit8_bff0000000000000
    mov.d	$f12,$f20
    jal	pow
    cvt.d.w	$f13,$f13
    mtc1	$s0,$f13
    # lw $t9, -17028($gp) # &powf
    mov.d	$f26,$f0
    mov.s	$f12,$f22
    jal	powf
    cvt.s.w	$f13,$f13
    cvt.d.s	$f20,$f0
    mul.d	$f20,$f20,$f24
    div.d	$f20,$f28,$f20
    # Line 2163
    ld	$t0,184($sp)
    addiu	$s0,$s0,1
    slt	$t0,$s0,$t0
    # Line 2194
    mul.d	$f20,$f26,$f20
    # Line 2163
    bnez	$t0,.L0d955470
    # Line 2194
    cvt.s.d	$f20,$f20
.L0d9555a8:
    ldc1	$f22,232($sp)
    ldc1	$f26,224($sp)
    # Line 2208
    sw	$s8,-29464($s4)
    # Line 2200
    lw	$v0,-29456($s4)
    # Line 2202
    lw	$ra,-29448($s4)
    # Line 2204
    lw	$t8,-29440($s4)
    # Line 2209
    lw	$t1,26976($s4)
    # Line 2206
    lw	$t2,-29432($s4)
    # Line 2209
    or	$t1,$s2,$t1
    sw	$t1,26976($s4)
    # Line 2206
    and	$t2,$s3,$t2
    sw	$t2,-29432($s4)
    # Line 2204
    and	$t8,$s3,$t8
    sw	$t8,-29440($s4)
    # Line 2202
    and	$ra,$s3,$ra
    sw	$ra,-29448($s4)
    # Line 2200
    and	$v0,$s3,$v0
    sw	$v0,-29456($s4)
    # Line 2199
    lw	$v1,-29460($s4)
    # Line 2205
    lw	$t3,-29436($s4)
    # Line 2203
    lw	$t9,-29444($s4)
    # Line 2201
    lw	$at,-29452($s4)
    # Line 2205
    and	$t3,$s3,$t3
    # Line 2203
    and	$t9,$s3,$t9
    # Line 2205
    ori	$t3,$t3,0x1000
    sw	$t3,-29436($s4)
    # Line 2201
    and	$at,$s3,$at
    # Line 2203
    ori	$t9,$t9,0x1000
    sw	$t9,-29444($s4)
    # Line 2199
    and	$v1,$s3,$v1
    # Line 2201
    ori	$at,$at,0x1000
    sw	$at,-29452($s4)
    # Line 2199
    ori	$v1,$v1,0x1000
    sw	$v1,-29460($s4)
    lui	$s0,0x20
    # Line 2209
    b	.L0d954d98
    sw	$s8,4120($zero)
.L0d95563c:
    # Line 2355
    abs.s	$f12,$f22
    sdc1	$f12,16($sp)
    sqrt.s	$f12,$f12
    # Line 2343
    lw	$a2,-26972($s4)
    # Line 2344
    lw	$a0,26976($s4)
    # Line 2343
    lui	$a1,0xffef
    # Line 2355
    # lw $t9, -17032($gp) # &ceilf
    # Line 2343
    ori	$a1,$a1,0xffff
    # Line 2344
    or	$a0,$s0,$a0
    sw	$a0,26976($s4)
    # Line 2353
    mov.s	$f20,$f22
    # Line 2343
    and	$a1,$a1,$a2
    sw	$a1,-26972($s4)
    # Line 2344
    sw	$s8,4120($zero)
    # Line 2355
    jal	ceilf
    sqrt.s	$f12,$f12
    # Line 2360
    ldc1	$f14,16($sp)
    trunc.w.s	$f13,$f0
    ldc1	$f24,_lit8_4010000000000000
    mfc1	$a4,$f13
    cvt.d.s	$f14,$f14
    li	$a2,1
    sltiu	$a5,$a4,1
    c.lt.d $f14,$f24
    li	$a3,1
    movn	$a4,$a2,$a5
    movf	$a3,$zero,$fcc5
    movz	$a2,$a4,$a3
    lwc1	$f22,_lit_40800000
    move	$s0,$zero
    blez	$a2,.L0d955128
    sd	$a2,168($sp)
    nop
.L0d9556c0:
    # Line 2380
    sw	$s8,-29464($s4)
    # Line 2376
    lw	$t3,-29440($s4)
    # Line 2371
    cvt.d.s	$f16,$f20
    # Line 2374
    lw	$t9,-29448($s4)
    # Line 2372
    lw	$at,-29456($s4)
    # Line 2371
    mov.s	$f15,$f20
    c.lt.d $f24,$f16
    # Line 2381
    lw	$a7,26976($s4)
    # Line 2378
    lw	$t0,-29432($s4)
    # Line 2371
    movt.s	$f15,$f22,$fcc6
    # Line 2381
    or	$a7,$s2,$a7
    sw	$a7,26976($s4)
    # Line 2378
    and	$t0,$s3,$t0
    sw	$t0,-29432($s4)
    # Line 2371
    mul.s	$f15,$f30,$f15
    # Line 2373
    lw	$ra,-29452($s4)
    # Line 2377
    lw	$t2,-29436($s4)
    # Line 2371
    trunc.w.s	$f15,$f15
    # Line 2372
    and	$at,$s3,$at
    # Line 2374
    and	$t9,$s3,$t9
    # Line 2375
    lw	$t8,-29444($s4)
    # Line 2376
    and	$t3,$s3,$t3
    # Line 2371
    lw	$v0,-29460($s4)
    # Line 2377
    and	$t2,$s3,$t2
    # Line 2371
    mfc1	$t1,$f15
    # Line 2376
    sw	$t3,-29440($s4)
    # Line 2375
    and	$t8,$s3,$t8
    # Line 2373
    and	$ra,$s3,$ra
    # Line 2374
    sw	$t9,-29448($s4)
    # Line 2371
    and	$v0,$s3,$v0
    andi	$t1,$t1,0xffff
    # Line 2372
    sw	$at,-29456($s4)
    # Line 2371
    or	$v0,$t1,$v0
    # Line 2373
    or	$ra,$t1,$ra
    # Line 2375
    or	$t8,$t1,$t8
    # Line 2377
    or	$t1,$t1,$t2
    sw	$t1,-29436($s4)
    # Line 2375
    sw	$t8,-29444($s4)
    # Line 2373
    sw	$ra,-29452($s4)
    # Line 2371
    sw	$v0,-29460($s4)
    # Line 2381
    sw	$s8,4120($zero)
    # Line 2384
    lw	$a6,31740($s5)
    # Line 2388
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2384
    and	$a6,$s1,$a6
    sw	$a6,31740($s5)
    # Line 2388
    move	$a4,$zero
    # Line 2385
    lw	$a5,26976($s4)
    # Line 2388
    li	$a3,1
    move	$a2,$s6
    move	$a1,$s7
    # Line 2385
    ori	$a5,$a5,0x2
    sw	$a5,26976($s4)
    # Line 2388
    move	$a0,$s7
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2385
    sw	$s8,4120($zero)
    # Line 2392
    mtc1	$s0,$f13
    # lw $t9, -17028($gp) # &powf
    mov.s	$f12,$f22
    jal	powf
    cvt.s.w	$f13,$f13
    cvt.d.s	$f20,$f0
    mul.d	$f20,$f20,$f24
    div.d	$f20,$f28,$f20
    # Line 2363
    ld	$v1,168($sp)
    addiu	$s0,$s0,1
    slt	$v1,$s0,$v1
    bnez	$v1,.L0d9556c0
    # Line 2392
    cvt.s.d	$f20,$f20
    b	.L0d95512c
    ldc1	$f22,24($sp)
.end hardReturn24

# Function: hardClear24
# Declared: Line 2495 (Source lines: 2496-2609)
# Address: 0x0d9557e0 - 0x0d955c10 (Size: 1072 bytes, Frame: 240)
.ent hardClear24
hardClear24:
    # Line 2496
    addiu	$sp,$sp,-112
    sd	$s0,64($sp)
    # Line 2507
    lw	$s0,4112($zero)
    sd	$s3,80($sp)
    lw	$at,4120($zero)
    sd	$ra,88($sp)
    li	$v0,1
    # Line 2496
    lui	$v1,0x1a
    sd	$s2,96($sp)
    addiu	$v1,$v1,11696
    sd	$gp,72($sp)
    # Line 2507
    beq	$at,$v0,.L0d955be8
    # Line 2496
    addu	$gp,$t9,$v1
    # Line 2513
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,528
    bal __glOdysseyAccumClose
    nop
    beqz	$v0,.L0d955bb4
    sd	$s1,104($sp)
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lbu	$ra,8437($s1)
    beqz	$ra,.L0d955bfc
    # Line 2520
    nop	# was lw $t9, -32744($gp) # &.text
    # Line 2524
    # lw $t9, -32744($gp) # &.text
.L0d955844:
    addiu	$t9,$t9,1488
    bal __glOdysseyAccumClose
    nop
    # Line 2528
    # lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    jal	__glOdysseyImageSaveUserBuzzRasterState
    nop
    # Line 2530
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    move	$a0,$zero
    # Line 2534
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,1840
    bal __glOdysseyAccumClose
    nop
    # Line 2542
    lwc1	$f0,_lit_3f800000
    swc1	$f0,0($sp)
    # Line 2543
    # lw $t9, -31412($gp) # &__glOdysseyClearScratchBuffer
    lui	$s3,0x1
    # Line 2542
    swc1	$f0,4($sp)
    # Line 2543
    ori	$s3,$s3,0x2070
    addiu	$a1,$sp,0
    # Line 2542
    swc1	$f0,8($sp)
    # Line 2543
    addu	$s3,$s0,$s3
    # Line 2542
    swc1	$f0,12($sp)
    # Line 2543
    jal	__glOdysseyClearScratchBuffer
    move	$a0,$s3
    lwc1	$f6,1648($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f5,$f6
    c.lt.d	$f5,$f4
    # Line 2550
    ldc1	$f2,_lit8_40a0000000000000
    # Line 2543
    bc1f	.L0d9558d4
    # Line 2550
    ldc1	$f1,_lit8_4000000000000000
    add.d	$f1,$f5,$f1
    mul.d	$f1,$f1,$f2
    b	.L0d9558f8
    sdc1	$f1,16($sp)
.L0d9558d4:
    ldc1	$f2,_lit8_3ff0000000000000
    c.le.d $f2,$f5
    bc1f .L0d9558ec
    lwc1	$f5,_lit_45000000
    b	.L0d9558f0
    lwc1	$f5,_lit_44ffe000
.L0d9558ec:
    mul.s	$f5,$f6,$f5
.L0d9558f0:
    cvt.d.s	$f6,$f5
    sdc1	$f6,16($sp)
.L0d9558f8:
    lwc1	$f6,1652($s0)
    cvt.d.s	$f5,$f6
    c.lt.d $f5,$f4
    # Line 2551
    ldc1	$f8,_lit8_40a0000000000000
    # Line 2550
    bc1f .L0d955920
    # Line 2551
    ldc1	$f7,_lit8_4000000000000000
    add.d	$f7,$f5,$f7
    mul.d	$f7,$f7,$f8
    b	.L0d955944
    sdc1	$f7,24($sp)
.L0d955920:
    ldc1	$f8,_lit8_3ff0000000000000
    c.le.d $f8,$f5
    bc1f .L0d955938
    lwc1	$f5,_lit_45000000
    b	.L0d95593c
    lwc1	$f5,_lit_44ffe000
.L0d955938:
    mul.s	$f5,$f6,$f5
.L0d95593c:
    cvt.d.s	$f6,$f5
    sdc1	$f6,24($sp)
.L0d955944:
    lwc1	$f6,1656($s0)
    cvt.d.s	$f5,$f6
    c.lt.d $f5,$f4
    # Line 2552
    ldc1	$f7,_lit8_4000000000000000
    # Line 2551
    bc1f .L0d955970
    # Line 2552
    ldc1	$f8,_lit8_3ff0000000000000
    ldc1	$f8,_lit8_40a0000000000000
    add.d	$f7,$f5,$f7
    mul.d	$f7,$f7,$f8
    b	.L0d95598c
    sdc1	$f7,32($sp)
.L0d955970:
    c.le.d $f8,$f5
    bc1t .L0d955984
    lwc1	$f5,_lit_44ffe000
    lwc1	$f5,_lit_45000000
    mul.s	$f5,$f6,$f5
.L0d955984:
    cvt.d.s	$f6,$f5
    sdc1	$f6,32($sp)
.L0d95598c:
    lwc1	$f6,1660($s0)
    cvt.d.s	$f5,$f6
    # Line 2553
    ldc1	$f8,_lit8_40a0000000000000
    # Line 2552
    c.lt.d $f5,$f4
    # Line 2553
    ldc1	$f10,_lit8_3ff0000000000000
    ldc1	$f7,_lit8_4000000000000000
    # Line 2552
    bc1f .L0d955bd4
    # Line 2553
    lwc1	$f4,_lit_44ffe000
    add.d	$f7,$f5,$f7
    mul.d	$f7,$f7,$f8
    b	.L0d9559cc
    sdc1	$f7,40($sp)
.L0d9559bc:
    lwc1	$f4,_lit_45000000
    mul.s	$f4,$f6,$f4
.L0d9559c4:
    cvt.d.s	$f5,$f4
    sdc1	$f5,40($sp)
.L0d9559cc:
    # Line 2556
    lw	$a2,26976($s1)
    lui	$s2,0x20
    or	$a2,$s2,$a2
    sw	$a2,26976($s1)
    li	$t8,2
    sw	$t8,4120($zero)
    # Line 2559
    lw	$a0,31740($s0)
    lui	$a1,0x2
    or	$a0,$a0,$a1
    sw	$a0,31740($s0)
    # Line 2560
    lw	$v1,26976($s1)
    # Line 2568
    # lw $t9, -32744($gp) # &.text
    # Line 2560
    ori	$v1,$v1,0x2
    sw	$v1,26976($s1)
    sw	$t8,4120($zero)
    # Line 2562
    lui	$v0,0x10
    lw	$at,-26972($s1)
    nor	$v0,$v0,$zero
    # Line 2568
    move	$a2,$zero
    # Line 2564
    lw	$ra,26976($s1)
    # Line 2568
    addiu	$t9,$t9,0
    # Line 2562
    and	$at,$at,$v0
    sw	$at,-26972($s1)
    # Line 2568
    li	$a1,40
    # Line 2564
    or	$ra,$s2,$ra
    sw	$ra,26976($s1)
    # Line 2568
    move	$a0,$zero
    bal __glOdysseyAccumClose-0x190
    # Line 2564
    sw	$t8,4120($zero)
    # Line 2574
    ldc1	$f8,32($sp)
    # Line 2589
    lui	$a0,0x1
    # Line 2574
    trunc.w.d	$f8,$f8
    # Line 2572
    ldc1	$f9,16($sp)
    # Line 2589
    ori	$a2,$a0,0x201c
    addu	$a2,$s0,$a2
    # Line 2575
    ldc1	$f6,40($sp)
    # Line 2574
    mfc1	$ra,$f8
    # Line 2573
    li	$t0,-4096
    # Line 2572
    lw	$t3,31800($s0)
    lui	$t2,0xff00
    trunc.w.d	$f9,$f9
    # Line 2574
    lw	$at,31804($s0)
    # Line 2572
    ori	$t2,$t2,0xfff
    # Line 2574
    dsll32	$ra,$ra,0x10
    # Line 2572
    and	$t3,$t2,$t3
    # Line 2575
    trunc.w.d	$f6,$f6
    # Line 2574
    dsra32	$ra,$ra,0x10
    # Line 2572
    mfc1	$t9,$f9
    # Line 2574
    and	$t2,$t2,$at
    # Line 2573
    ldc1	$f7,24($sp)
    # Line 2574
    sll	$ra,$ra,0xc
    # Line 2572
    lui	$t8,0xff
    # Line 2575
    mfc1	$t1,$f6
    # Line 2572
    dsll32	$t9,$t9,0x10
    ori	$t8,$t8,0xf000
    dsra32	$t9,$t9,0x10
    # Line 2573
    trunc.w.d	$f7,$f7
    # Line 2575
    andi	$t1,$t1,0xfff
    # Line 2572
    sll	$t9,$t9,0xc
    and	$t9,$t8,$t9
    # Line 2574
    and	$t8,$t8,$ra
    or	$t2,$t2,$t8
    # Line 2572
    or	$t3,$t3,$t9
    # Line 2573
    mfc1	$t9,$f7
    # Line 2589
    sd	$a2,48($sp)
    # Line 2573
    and	$t3,$t0,$t3
    # Line 2575
    and	$t0,$t0,$t2
    or	$t0,$t0,$t1
    sw	$t0,31804($s0)
    # Line 2573
    andi	$t9,$t9,0xfff
    or	$t3,$t3,$t9
    sw	$t3,31800($s0)
    # Line 2576
    lw	$a7,26976($s1)
    # Line 2589
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    # Line 2576
    ori	$a7,$a7,0x1
    sw	$a7,26976($s1)
    li	$a5,2
    sw	$a5,4120($zero)
    # Line 2581
    lw	$t1,7572($s1)
    # Line 2585
    lw	$a7,-26972($s1)
    # Line 2580
    lw	$a6,7360($s1)
    # Line 2589
    move	$a4,$zero
    # Line 2585
    lui	$t0,0x6
    # Line 2580
    sd	$a6,56($sp)
    # Line 2589
    li	$a3,1
    # Line 2585
    nor	$t0,$t0,$zero
    # Line 2587
    lw	$a6,26976($s1)
    # Line 2589
    move	$a1,$s3
    # Line 2581
    sw	$t1,7360($s1)
    # Line 2585
    and	$a7,$a7,$t0
    lui	$t0,0x4
    # Line 2587
    or	$a6,$s2,$a6
    sw	$a6,26976($s1)
    # Line 2589
    ori	$a0,$a0,0x1eb0
    # Line 2585
    or	$a7,$a7,$t0
    sw	$a7,-26972($s1)
    # Line 2589
    addu	$a0,$s0,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2587
    sw	$a5,4120($zero)
    # Line 2600
    ld	$a2,48($sp)
    move	$a4,$zero
    # Line 2596
    lw	$a6,-26972($s1)
    # Line 2600
    li	$a3,1
    move	$a1,$s3
    # Line 2598
    lw	$a5,26976($s1)
    # Line 2600
    li	$at,2
    # Line 2596
    lui	$a7,0x6
    # Line 2600
    # lw $t9, -31208($gp) # &__glOdysseyImageMovePixelsCopy
    lui	$a0,0x1
    # Line 2598
    or	$a5,$s2,$a5
    sw	$a5,26976($s1)
    # Line 2600
    ori	$a0,$a0,0x1eec
    # Line 2596
    or	$a6,$a6,$a7
    sw	$a6,-26972($s1)
    # Line 2600
    addu	$a0,$s0,$a0
    jal	__glOdysseyImageMovePixelsCopy
    # Line 2598
    sw	$at,4120($zero)
    # Line 2607
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    ld	$t0,56($sp)
    li	$a0,1
    jal	__glOdysseyImageLoadBuzzRasterState
    # Line 2604
    sw	$t0,7360($s1)
.L0d955bb4:
    ld	$s3,80($sp)
    ld	$s0,64($sp)
    ld	$ra,88($sp)
    ld	$s2,96($sp)
    ld	$s1,104($sp)
    # Line 2609
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d955bd4:
    # Line 2553
    c.le.d $f10,$f5
    bc1f .L0d9559bc
    nop
    b	.L0d9559c4
    nop
.L0d955be8:
    # Line 2507
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d955bb4
    sd	$s1,104($sp)
.L0d955bfc:
    # Line 2520
    addiu	$t9,$t9,1728
    bal __glOdysseyAccumClose
    nop
    b	.L0d955844
    # Line 2524
    nop	# was lw $t9, -32744($gp) # &.text
.end hardClear24

# Function: __glOdyHardAccum24
# Declared: Line 2616 (Source lines: 2617-2685)
# Address: 0x0d955c10 - 0x0d955ddc (Size: 460 bytes, Frame: 48)
.globl __glOdyHardAccum24
.ent __glOdyHardAccum24
__glOdyHardAccum24:
    # Line 2617
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    # Line 2623
    lw	$s1,4112($zero)
    lui	$t8,0x1
    sd	$ra,40($sp)
    addu	$s1,$s1,$t8
    lbu	$at,8437($s1)
    # Line 2617
    sd	$s0,16($sp)
    lui	$v0,0x1a
    move	$s0,$a0
    sdc1	$f20,8($sp)
    addiu	$v0,$v0,10624
    mov.s	$f20,$f13
    sd	$gp,32($sp)
    # Line 2623
    beqz	$at,.L0d955d84
    # Line 2617
    addu	$gp,$t9,$v0
    # Line 2637
    # lw $t9, -32744($gp) # &.text
.L0d955c54:
    addiu	$t9,$t9,1488
    bal __glOdysseyAccumClose
    nop
    # Line 2640
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,528
    bal __glOdysseyAccumClose
    nop
    beqz	$v0,.L0d955d4c
    # Line 2664
    li	$a7,260
    # Line 2645
    lui	$v0,0x20
    li	$a0,258
    lw	$at,26976($s1)
    # Line 2643
    lw	$v1,-26972($s1)
    lui	$a1,0x10
    # Line 2655
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f20
    # Line 2643
    nor	$a1,$a1,$zero
    # Line 2645
    or	$at,$at,$v0
    sw	$at,26976($s1)
    # Line 2643
    and	$v1,$v1,$a1
    sw	$v1,-26972($s1)
    # Line 2645
    li	$ra,2
    sw	$ra,4120($zero)
    beq	$a0,$s0,.L0d955cc8
    # Line 2655
    c.eq.d	$f0,$f1
    # Line 2649
    lw	$a2,7360($s1)
    # Line 2650
    lw	$a3,7572($s1)
    sw	$a3,7360($s1)
    # Line 2649
    sw	$a2,0($sp)
.L0d955cc8:
    # Line 2655
    bc1t	.L0d955cf4
    # Line 2664
    li	$a4,256
    # Line 2655
    mtc1	$zero,$f3
    lwc1	$f4,_lit_39800000
    abs.s	$f2,$f20
    c.lt.s $f2,$f4
    bc1f .L0d955cf4
    nop
    c.lt.s $f20,$f3
    lwc1	$f20,_lit_b9800000
    movf.s	$f20,$f4,$fcc2
.L0d955cf4:
    # Line 2664
    beq	$s0,$a4,.L0d955d6c
    # Line 2667
    nop	# was lw $t9, -32744($gp) # &.text
    # Line 2664
    li	$a5,257
    beq	$s0,$a5,.L0d955d6c
    # Line 2667
    nop	# was lw $t9, -32744($gp) # &.text
    # Line 2664
    beq	$a0,$s0,.L0d955dc4
    li	$a6,259
    beq	$s0,$a6,.L0d955d9c
    # Line 2673
    nop	# was lw $t9, -32744($gp) # &.text
    # Line 2664
    beq	$s0,$a7,.L0d955db0
    # Line 2676
    nop	# was lw $t9, -32744($gp) # &.text
.L0d955d20:
    # Line 2680
    beq	$a0,$s0,.L0d955d50
    ld	$s0,16($sp)
    # Line 2685
    ldc1	$f20,8($sp)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$ra,40($sp)
    # Line 2683
    lw	$t0,0($sp)
    sw	$t0,7360($s1)
    # Line 2685
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d955d4c:
    ld	$s0,16($sp)
.L0d955d50:
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ldc1	$f20,8($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 2667
    # lw $t9, -32744($gp) # &.text
.L0d955d6c:
    addiu	$t9,$t9,15104
    move	$a0,$s0
    bal __glOdySoftAccum
    mov.s	$f13,$f20
    b	.L0d955d20
    li	$a0,258
.L0d955d84:
    # Line 2633
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,1728
    bal __glOdysseyAccumClose
    nop
    b	.L0d955c54
    # Line 2637
    nop	# was lw $t9, -32744($gp) # &.text
.L0d955d9c:
    # Line 2673
    addiu	$t9,$t9,17952
    bal __glOdySoftAccum
    mov.s	$f12,$f20
    b	.L0d955d20
    li	$a0,258
.L0d955db0:
    # Line 2676
    addiu	$t9,$t9,16800
    bal __glOdySoftAccum
    mov.s	$f12,$f20
    b	.L0d955d20
    li	$a0,258
.L0d955dc4:
    # Line 2670
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,18944
    bal __glOdySoftAccum
    mov.s	$f12,$f20
    b	.L0d955d50
    ld	$s0,16($sp)
.end __glOdyHardAccum24

# Function: __glOdysseyInitAccum
# Declared: Line 2696 (Source lines: 2697-2760)
# Address: 0x0d955de0 - 0x0d955ec0 (Size: 224 bytes, Frame: 32)
.globl __glOdysseyInitAccum
.ent __glOdysseyInitAccum
__glOdysseyInitAccum:
    # Line 2697
    lui	$at,0x1a
    addiu	$sp,$sp,-32
    addiu	$at,$at,10160
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2701
    # lw $t9, -27064($gp) # &__glInitBuffer
    # Line 2697
    sd	$ra,16($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 2701
    jal	__glInitBuffer
    # Line 2697
    sd	$a0,0($sp)
    # Line 2705
    lw	$a1,3228($s0)
    li	$a2,16
    li	$v0,24
    beq	$a1,$a2,.L0d955e40
    # Line 2760
    ld	$ra,16($sp)
    # Line 2705
    beq	$a1,$v0,.L0d955e84
    # Line 2742
    la	$a7,.text
    # Line 2760
    ld	$ra,16($sp)
    # Line 2757
    move	$v0,$zero
    # Line 2760
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d955e40:
    # Line 2713
    la	$v1,__glSoftAllocAccum
    # Line 2708
    la	$a3,__glOdySoftAccum
    lui	$a4,0x1
    # Line 2734
    ld	$a0,0($sp)
    # Line 2708
    ori	$a4,$a4,0x1e24
    # Line 2734
    la	$a1,.text
    # Line 2708
    addu	$a4,$a4,$s0
    sw	$a3,0($a4)
    # Line 2734
    addiu	$a1,$a1,14128
    sw	$a1,108($a0)
    # Line 2714
    sw	$a2,24($a0)
    # Line 2713
    sw	$v1,132($a0)
.L0d955e70:
    # Line 2760
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d955e84:
    # Line 2740
    lui	$a6,0x1
    la	$t0,__glOdyHardAccum24
    addu	$a6,$s0,$a6
    sw	$t0,7716($a6)
    # Line 2742
    ld	$t0,0($sp)
    addiu	$a7,$a7,22496
    sw	$a7,108($t0)
    # Line 2751
    sw	$zero,8372($a6)
    # Line 2750
    sw	$zero,8368($a6)
    # Line 2745
    li	$a5,-1
    # Line 2749
    sw	$a5,8364($a6)
    # Line 2747
    sw	$zero,8300($a6)
    # Line 2746
    sw	$zero,8296($a6)
    # Line 2753
    b	.L0d955e70
    # Line 2745
    sw	$a5,8292($a6)
.end __glOdysseyInitAccum

# Function: __glOdyim_Accum
# Declared: Line 2767 (Source lines: 2768-2819)
# Address: 0x0d955ec0 - 0x0d95602c (Size: 364 bytes, Frame: 48)
.globl __glOdyim_Accum
.ent __glOdyim_Accum
__glOdyim_Accum:
    # Line 2768
    addiu	$sp,$sp,-48
    # Line 2782
    li	$a6,259
    li	$a5,258
    # Line 2768
    sd	$s0,24($sp)
    # Line 2782
    li	$t1,7168
    li	$a4,257
    # Line 2771
    lw	$s0,4112($zero)
    # Line 2782
    li	$a3,256
    li	$a7,260
    # Line 2771
    lw	$at,4120($zero)
    # Line 2768
    sd	$s1,32($sp)
    # Line 2771
    li	$v0,1
    # Line 2768
    lui	$v1,0x1a
    move	$s1,$a0
    sd	$ra,40($sp)
    addiu	$v1,$v1,9936
    mov.s	$f4,$f13
    sd	$gp,16($sp)
    # Line 2771
    beq	$at,$v0,.L0d956004
    # Line 2768
    addu	$gp,$t9,$v1
    # Line 2775
    lbu	$a0,3224($s0)
    beqz	$a0,.L0d955f8c
    lbu	$a1,3221($s0)
    bnez	$a1,.L0d955f90
    # Line 2778
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2775
    lbu	$a2,3536($s0)
    beqz	$a2,.L0d955f90
    # Line 2778
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2782
    beq	$s1,$a3,.L0d955f68
    nop
    beq	$s1,$a4,.L0d955f68
    nop
    beq	$s1,$a5,.L0d955f68
    nop
    beq	$s1,$a6,.L0d955f68
    nop
    beq	$s1,$a7,.L0d955f68
    # Line 2790
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d955f78
    ld	$ra,40($sp)
.L0d955f68:
    # Line 2782
    lw	$t0,3204($s0)
    beq	$t0,$t1,.L0d955fa0
    sdc1	$f4,0($sp)
    ld	$ra,40($sp)
.L0d955f78:
    # Line 2819
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d955f8c:
    # Line 2778
    # lw $t9, -26792($gp) # &__glSetError
.L0d955f90:
    jal	__glSetError
    li	$a0,1282
    b	.L0d955f78
    ld	$ra,40($sp)
.L0d955fa0:
    # Line 2798
    # lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    jal	__glOdysseyImageSaveUserBuzzRasterState
    nop
    # Line 2800
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    move	$a0,$zero
    lui	$t2,0x1
    addu	$t2,$s0,$t2
    sd	$t2,8($sp)
    lbu	$t2,8437($t2)
    beqz	$t2,.L0d956018
    # Line 2807
    nop	# was lw $t9, -32744($gp) # &.text
    # Line 2811
    # lw $t9, -32744($gp) # &.text
.L0d955fd4:
    addiu	$t9,$t9,1840
    bal __glOdysseyAccumClose
    ld	$s0,8($sp)
    # Line 2814
    lw	$t9,7716($s0)
    move	$a0,$s1
    jal	.text
    ldc1	$f13,0($sp)
    # Line 2818
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
    b	.L0d955f78
    ld	$ra,40($sp)
.L0d956004:
    # Line 2771
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d955f78
    ld	$ra,40($sp)
.L0d956018:
    # Line 2807
    addiu	$t9,$t9,1728
    bal __glOdysseyAccumClose
    nop
    b	.L0d955fd4
    # Line 2811
    nop	# was lw $t9, -32744($gp) # &.text
.end __glOdyim_Accum

.late_rodata
jtbl_0dae8000:
    .word .L0d95058c
    .word .L0d95058c
    .word .L0d95058c
    .word .L0d950570
    .word .L0d95058c
    .word .L0d95059c
    .word .L0d95059c

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_401ffef9db22d0e5:
    .word 0x401ffef9, 0xdb22d0e5
_lit8_40a0000000000000:
    .word 0x40a00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit8_c010000000000000:
    .word 0xc0100000, 0x00000000
_lit8_c01ffef9db22d0e5:
    .word 0xc01ffef9, 0xdb22d0e5
_lit_39800000:
    .word 0x39800000
_lit_3d000000:
    .word 0x3d000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40800000:
    .word 0x40800000
_lit_40fff7cf:
    .word 0x40fff7cf
_lit_44ffe000:
    .word 0x44ffe000
_lit_45000000:
    .word 0x45000000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_477fff00:
    .word 0x477fff00
_lit_b9800000:
    .word 0xb9800000
_lit_bf800000:
    .word 0xbf800000
_lit_c0800000:
    .word 0xc0800000
_lit_c0fff7cf:
    .word 0xc0fff7cf

