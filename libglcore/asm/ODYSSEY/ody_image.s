# Source: ../ODYSSEY/ody_image.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image.c
# Total Functions: 5

.text

# Function: __glOdysseyImageInit
# Declared: Line 82 (Source lines: 83-426)
# Address: 0x0d988ae0 - 0x0d989210 (Size: 1840 bytes, Frame: 144)
.globl __glOdysseyImageInit
.ent __glOdysseyImageInit
__glOdysseyImageInit:
    # Line 83
    addiu	$sp,$sp,-144
    sd	$s2,112($sp)
    # Line 97
    lw	$s2,4112($zero)
    # Line 114
    lui	$v0,0x1
    # Line 83
    sd	$s3,88($sp)
    # Line 114
    addu	$s3,$v0,$s2
    # Line 138
    lw	$t2,7548($s3)
    # Line 132
    li	$t1,2
    # Line 123
    lui	$a5,0xffff
    # Line 136
    lw	$a7,7532($s3)
    # Line 123
    ori	$t3,$a5,0x1fff
    # Line 141
    lui	$a4,0xf
    # Line 135
    lw	$t0,7524($s3)
    # Line 126
    li	$t8,-13
    # Line 141
    ori	$a4,$a4,0xf000
    # Line 137
    lw	$a6,7540($s3)
    # Line 135
    and	$t0,$a5,$t0
    # Line 136
    and	$a7,$a5,$a7
    # Line 83
    sd	$s1,96($sp)
    # Line 137
    and	$a6,$a5,$a6
    # Line 138
    and	$a5,$a5,$t2
    # Line 135
    ori	$t0,$t0,0x1000
    # Line 136
    ori	$a7,$a7,0x1000
    # Line 114
    lw	$at,7364($s3)
    # Line 137
    ori	$a6,$a6,0x1000
    # Line 126
    lw	$s1,7428($s3)
    # Line 114
    li	$v1,-8
    # Line 83
    sd	$s0,104($sp)
    # Line 138
    ori	$a5,$a5,0x1000
    # Line 114
    and	$at,$at,$v1
    # Line 129
    lw	$s0,7436($s3)
    # Line 114
    ori	$at,$at,0x1
    # Line 126
    and	$s1,$s1,$t8
    # Line 114
    sw	$at,7364($s3)
    # Line 127
    li	$at,-4
    # Line 126
    ori	$s1,$s1,0x8
    # Line 127
    and	$s1,$s1,$at
    # Line 129
    li	$t8,-3073
    # Line 160
    li	$at,512
    # Line 129
    and	$s0,$s0,$t8
    # Line 140
    lw	$a3,7572($s3)
    # Line 127
    ori	$s1,$s1,0x2
    # Line 129
    ori	$s0,$s0,0x400
    # Line 116
    lui	$a2,0x300
    # Line 140
    ori	$a3,$a3,0xfff
    # Line 141
    or	$a3,$a3,$a4
    # Line 142
    lui	$a4,0x10
    sd	$ra,40($sp)
    or	$a3,$a3,$a4
    # Line 143
    lui	$a4,0x20
    sd	$gp,120($sp)
    or	$a3,$a3,$a4
    # Line 144
    lui	$a4,0x40
    or	$a3,$a3,$a4
    # Line 116
    lui	$a1,0x380
    lw	$a0,7400($s3)
    # Line 134
    sw	$t1,7556($s3)
    # Line 145
    lui	$a4,0x80
    # Line 116
    nor	$a1,$a1,$zero
    # Line 132
    sw	$t1,7520($s3)
    # Line 116
    and	$a0,$a0,$a1
    # Line 117
    lui	$a1,0x70
    # Line 120
    lw	$v1,7420($s3)
    # Line 117
    nor	$a1,$a1,$zero
    # Line 116
    or	$a0,$a0,$a2
    # Line 138
    sw	$a5,7548($s3)
    # Line 117
    and	$a0,$a0,$a1
    # Line 120
    li	$a1,-113
    # Line 137
    sw	$a6,7540($s3)
    # Line 117
    lui	$a2,0x60
    # Line 120
    and	$v1,$v1,$a1
    # Line 136
    sw	$a7,7532($s3)
    # Line 118
    lui	$a1,0x4
    # Line 117
    or	$a0,$a0,$a2
    # Line 118
    or	$a0,$a0,$a1
    sw	$a0,7400($s3)
    # Line 83
    lui	$a0,0x17
    # Line 135
    sw	$t0,7524($s3)
    # Line 121
    li	$a2,-897
    # Line 120
    ori	$v1,$v1,0x50
    # Line 160
    sw	$at,7708($s3)
    # Line 83
    addiu	$a0,$a0,-1360
    # Line 121
    and	$v1,$v1,$a2
    # Line 127
    sw	$s1,7428($s3)
    # Line 122
    li	$a2,-7169
    # Line 121
    ori	$v1,$v1,0x100
    # Line 83
    addu	$gp,$t9,$a0
    # Line 122
    and	$v1,$v1,$a2
    # Line 148
    lw	$a2,7452($s3)
    # Line 145
    or	$a3,$a3,$a4
    # Line 146
    lui	$a4,0x100
    # Line 172
    lwc1	$f0,_lit_40fffe00
    # Line 124
    lui	$a1,0x800
    # Line 146
    or	$a3,$a3,$a4
    sw	$a3,7572($s3)
    # Line 172
    swc1	$f0,7712($s3)
    # Line 148
    ori	$a2,$a2,0x1
    # Line 122
    ori	$v1,$v1,0x800
    # Line 148
    sw	$a2,7452($s3)
    # Line 123
    and	$v1,$t3,$v1
    # Line 130
    and	$t3,$t3,$s0
    ori	$t3,$t3,0x2000
    sw	$t3,7436($s3)
    # Line 123
    ori	$v1,$v1,0x4000
    # Line 124
    or	$v1,$v1,$a1
    sw	$v1,7420($s3)
    # Line 161
    li	$v1,64
    sw	$v1,7704($s3)
    # Line 151
    li	$a1,0x8356
    # Line 152
    sw	$a1,7700($s3)
    # Line 151
    sw	$a1,7696($s3)
    # Line 195
    sw	$at,16($sp)
    # Line 196
    lw	$at,7704($s3)
    # Line 204
    li	$t8,6
    sb	$t8,0($sp)
    # Line 203
    sw	$zero,32($sp)
    # Line 202
    sw	$zero,28($sp)
    # Line 201
    sw	$zero,12($sp)
    # Line 200
    sw	$zero,8($sp)
    # Line 199
    sw	$zero,4($sp)
    # Line 198
    li	$a1,1
    sw	$a1,24($sp)
    # Line 197
    li	$a0,8
    sb	$a0,1($sp)
    # Line 204
    addiu	$v1,$s2,24
    li	$s1,0xa6f4
    addu	$v0,$v0,$v1
    sd	$v0,80($sp)
    addu	$s1,$s2,$s1
    move	$s0,$s3
    # Line 196
    sw	$at,20($sp)
.L0d988cec:
    # Line 217
    # lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
    move	$a3,$zero
    # Line 216
    sw	$zero,-22788($s0)
    # Line 217
    move	$a2,$s1
    addiu	$a1,$sp,0
    # Line 215
    sw	$zero,-22792($s0)
    # Line 217
    move	$a0,$s2
    li	$a4,-1
    jal	__glOdysseyCreatePMObj
    # Line 214
    sw	$a4,-22796($s0)
    # Line 217
    bnez	$v0,.L0d988d44
    # Line 206
    ld	$a5,80($sp)
    # Line 222
    sb	$zero,-22800($s3)
    # Line 224
    move	$v0,$zero
.L0d988d24:
    ld	$s3,88($sp)
    ld	$s1,96($sp)
    ld	$ra,40($sp)
    ld	$s0,104($sp)
    ld	$s2,112($sp)
    # Line 426
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d988d44:
    # Line 206
    addiu	$s0,$s0,12
    addiu	$s1,$s1,12
    bne	$s0,$a5,.L0d988cec
    addiu	$t8,$s2,8
    lui	$s1,0x1
    move	$s0,$s3
    addu	$s1,$s1,$t8
.L0d988d60:
    # Line 234
    lw	$a3,7708($s3)
    lw	$a2,7704($s3)
    multu	$a2,$a3
    lw	$t9,0($s2)
    move	$a0,$s2
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    bnez	$v0,.L0d988dbc
    sw	$v0,-22772($s0)
    # Line 241
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1285
    jal	__glSetError
    # Line 240
    sb	$zero,-22800($s3)
    # Line 426
    ld	$gp,120($sp)
    ld	$s0,104($sp)
    ld	$ra,40($sp)
    ld	$s1,96($sp)
    # Line 242
    move	$v0,$zero
    # Line 426
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d988dbc:
    # Line 229
    addiu	$s0,$s0,4
    bne	$s0,$s1,.L0d988d60
    nop
    # Line 251
    lw	$at,7708($s3)
    sw	$at,16($sp)
    # Line 252
    lw	$a4,7704($s3)
    # Line 260
    li	$ra,6
    sb	$ra,0($sp)
    # Line 259
    sw	$zero,32($sp)
    # Line 258
    sw	$zero,28($sp)
    # Line 257
    sw	$zero,12($sp)
    # Line 256
    sw	$zero,8($sp)
    # Line 255
    sw	$zero,4($sp)
    # Line 253
    li	$t8,8
    # Line 254
    li	$t9,1
    sw	$t9,24($sp)
    # Line 260
    addiu	$a6,$s2,36
    lui	$a5,0x1
    # Line 253
    sb	$t8,1($sp)
    # Line 260
    li	$s1,0xa714
    addu	$a5,$a5,$a6
    sd	$a5,72($sp)
    move	$s0,$s3
    addu	$s1,$s2,$s1
    # Line 252
    sw	$a4,20($sp)
    # Line 273
    # lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
.L0d988e24:
    move	$a3,$zero
    # Line 272
    sw	$zero,-22756($s0)
    # Line 273
    move	$a2,$s1
    addiu	$a1,$sp,0
    # Line 271
    sw	$zero,-22760($s0)
    # Line 273
    move	$a0,$s2
    li	$v0,-1
    jal	__glOdysseyCreatePMObj
    # Line 270
    sw	$v0,-22764($s0)
    # Line 273
    bnez	$v0,.L0d988e78
    # Line 262
    ld	$v1,72($sp)
    # Line 426
    ld	$gp,120($sp)
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$ra,40($sp)
    ld	$s2,112($sp)
    # Line 280
    move	$v0,$zero
    # Line 278
    sb	$zero,-22800($s3)
    # Line 426
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d988e78:
    # Line 262
    addiu	$s0,$s0,12
    addiu	$s1,$s1,12
    bne	$s0,$v1,.L0d988e24
    # Line 273
    nop	# was lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
    # Line 290
    lw	$a3,7708($s3)
    lw	$a2,7704($s3)
    multu	$a2,$a3
    lw	$t9,0($s2)
    move	$a0,$s2
    mflo	$a1
    jal	__glOdysseyCreatePMObj
    sll	$a1,$a1,0x4
    beqz	$v0,.L0d9891f8
    sw	$v0,-22728($s3)
    # Line 311
    lw	$a4,7708($s3)
    # Line 313
    dsll32	$a7,$a4,0x0
    dsrl32	$a7,$a7,0x0
    # Line 310
    li	$a6,1
    sb	$a6,6639($s3)
    # Line 313
    dmtc1	$a7,$f12
    # Line 309
    sb	$a6,6628($s3)
    # Line 308
    sw	$zero,6632($s3)
    # Line 307
    sw	$a6,6684($s3)
    # Line 313
    cvt.s.l	$f12,$f12
    lwc1	$f13,_lit_3d800000
    sd	$v0,128($sp)
    # lw $t9, -17036($gp) # &ceil
    # Line 312
    lw	$a5,7704($s3)
    # Line 313
    mul.s	$f12,$f12,$f13
    # Line 312
    sw	$a5,6664($s3)
    # Line 311
    sw	$a4,6660($s3)
    # Line 313
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 315
    sw	$zero,6676($s3)
    lwc1	$f4,_lit_3d800000
    # Line 318
    li	$a6,2
    sw	$a6,6672($s3)
    # Line 317
    sw	$a6,6668($s3)
    # Line 316
    li	$a5,12
    sw	$a5,6680($s3)
    # Line 328
    lw	$a4,6628($s3)
    # Line 321
    lw	$a2,-22760($s3)
    lw	$a1,-22764($s3)
    lw	$a3,-22756($s3)
    sd	$a3,48($sp)
    sw	$a3,6652($s3)
    sd	$a1,64($sp)
    sw	$a1,6644($s3)
    addiu	$a7,$s3,6632
    sd	$a2,56($sp)
    # Line 313
    trunc.l.d	$f13,$f0
    addiu	$a5,$s3,6692
    li	$a6,0x8
    # Line 321
    sw	$a2,6648($s3)
    # Line 328
    addiu	$t0,$s3,6688
    li	$a0,4
    sw	$a4,6688($s3)
    # Line 313
    dmfc1	$t1,$f13
    # Line 328
    addiu	$a4,$s3,6628
    li	$a2,0xe
    # Line 313
    sw	$t1,6656($s3)
.L0d988f6c:
    # Line 328
    addu	$t2,$a0,$a4
    addu	$t3,$a0,$t0
    lw	$t2,0($t2)
    addiu	$a2,$a2,-2
    addu	$t1,$a0,$a7
    sw	$t2,0($t3)
    addu	$t2,$a0,$a5
    lw	$t1,0($t1)
    addu	$a0,$a0,$a6
    bgtz	$a2,.L0d988f6c
    sw	$t1,0($t2)
    # Line 331
    lw	$s2,-22752($s3)
    lw	$s0,-22748($s3)
    lw	$s1,-22744($s3)
    # Line 339
    lw	$a3,6628($s3)
    addiu	$a4,$s3,6632
    sw	$a3,6748($s3)
    addiu	$a5,$s3,6752
    li	$a6,0x8
    # Line 331
    sw	$s1,6712($s3)
    # Line 339
    addiu	$a7,$s3,6748
    addiu	$t0,$s3,6628
    # Line 331
    sw	$s0,6708($s3)
    # Line 339
    li	$a2,4
    li	$a0,0xe
    # Line 331
    sw	$s2,6704($s3)
.L0d988fd4:
    # Line 339
    addu	$t2,$a2,$t0
    addu	$t3,$a2,$a7
    lw	$t2,0($t2)
    addiu	$a0,$a0,-2
    addu	$t1,$a2,$a4
    sw	$t2,0($t3)
    addu	$t2,$a2,$a5
    lw	$t1,0($t1)
    addu	$a2,$a2,$a6
    bgtz	$a0,.L0d988fd4
    sw	$t1,0($t2)
    # Line 350
    li	$v1,1
    sb	$v1,6819($s3)
    # Line 351
    lw	$ra,7708($s3)
    # Line 349
    sb	$v1,6808($s3)
    # Line 348
    sw	$zero,6812($s3)
    # Line 353
    dsll32	$v0,$ra,0x0
    # Line 347
    sw	$v1,6864($s3)
    # Line 353
    dsrl32	$v0,$v0,0x0
    # Line 342
    lw	$t3,-22740($s3)
    # Line 353
    dmtc1	$v0,$f12
    # Line 342
    lw	$t8,-22736($s3)
    # Line 352
    lw	$at,7704($s3)
    sw	$at,6844($s3)
    # Line 353
    cvt.s.l	$f12,$f12
    # Line 342
    lw	$t9,-22732($s3)
    sw	$t9,6772($s3)
    # Line 353
    # lw $t9, -17036($gp) # &ceil
    # Line 342
    sw	$t8,6768($s3)
    # Line 353
    mul.s	$f12,$f12,$f4
    # Line 342
    sw	$t3,6764($s3)
    # Line 351
    sw	$ra,6840($s3)
    # Line 353
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 364
    li	$a3,2
    sw	$a3,6852($s3)
    # Line 363
    sw	$a3,6848($s3)
    # Line 359
    sw	$zero,6856($s3)
    ld	$v0,128($sp)
    # Line 360
    li	$a2,12
    sw	$a2,6860($s3)
    # Line 367
    ld	$a6,48($sp)
    ld	$a4,64($sp)
    ld	$a5,56($sp)
    sw	$a5,6828($s3)
    sw	$a4,6824($s3)
    addiu	$t0,$s3,6812
    sw	$a6,6832($s3)
    # Line 353
    trunc.l.d	$f13,$f0
    # Line 374
    addiu	$a7,$s3,6808
    li	$a0,4
    lw	$a1,6808($s3)
    li	$a2,0xe
    addiu	$a6,$s3,6872
    sw	$a1,6868($s3)
    # Line 353
    dmfc1	$a1,$f13
    li	$a4,0x8
    # Line 374
    addiu	$a5,$s3,6868
    # Line 353
    sw	$a1,6836($s3)
.L0d9890c0:
    # Line 374
    addu	$t2,$a0,$a7
    addu	$t3,$a0,$a5
    lw	$t2,0($t2)
    addiu	$a2,$a2,-2
    addu	$t1,$a0,$t0
    sw	$t2,0($t3)
    addu	$t2,$a0,$a6
    lw	$t1,0($t1)
    addu	$a0,$a0,$a4
    bgtz	$a2,.L0d9890c0
    sw	$t1,0($t2)
    # Line 377
    sw	$s1,6892($s3)
    addiu	$a4,$s3,6812
    sw	$s0,6888($s3)
    addiu	$a5,$s3,6932
    li	$a6,0x8
    sw	$s2,6884($s3)
    # Line 384
    addiu	$a7,$s3,6928
    addiu	$t0,$s3,6808
    lw	$t3,6808($s3)
    li	$a0,4
    li	$a2,0xe
    sw	$t3,6928($s3)
.L0d98911c:
    addu	$a3,$a0,$t0
    addu	$t1,$a0,$a7
    lw	$a3,0($a3)
    addiu	$a2,$a2,-2
    addu	$a1,$a0,$a4
    sw	$a3,0($t1)
    addu	$a3,$a0,$a5
    lw	$a1,0($a1)
    addu	$a0,$a0,$a6
    bgtz	$a2,.L0d98911c
    sw	$a1,0($a3)
    # Line 402
    sw	$v0,7032($s3)
    # Line 399
    li	$a6,1
    sw	$a6,7012($s3)
    # Line 398
    li	$t0,5123
    sw	$t0,7000($s3)
    # Line 397
    li	$a7,6408
    sw	$a7,6996($s3)
    # Line 394
    sb	$a6,6988($s3)
    # Line 393
    sw	$zero,6992($s3)
    # Line 392
    sw	$zero,7044($s3)
    # Line 387
    sw	$s1,6952($s3)
    sw	$s0,6948($s3)
    sw	$s2,6944($s3)
    # Line 395
    lw	$a4,7708($s3)
    # Line 407
    # lw $t9, -31096($gp) # &__glOdysseyInitLUTs
    # Line 396
    lw	$a5,7704($s3)
    sw	$a5,7008($s3)
    # Line 407
    jal	__glOdysseyInitLUTs
    # Line 395
    sw	$a4,7004($s3)
    # Line 413
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,9
    beqz	$v0,.L0d9891d0
    # Line 426
    ld	$gp,120($sp)
    ld	$s2,112($sp)
    ld	$s1,96($sp)
    ld	$s0,104($sp)
    ld	$ra,40($sp)
    ld	$gp,120($sp)
    # Line 420
    move	$v0,$zero
    # Line 419
    sb	$zero,-22800($s3)
    # Line 426
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9891d0:
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$ra,40($sp)
    ld	$s2,112($sp)
    li	$v0,1
    # Line 425
    li	$t1,1
    sb	$t1,-22800($s3)
    # Line 426
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9891f8:
    # Line 297
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1285
    jal	__glSetError
    # Line 296
    sb	$zero,-22800($s3)
    # Line 298
    b	.L0d988d24
    move	$v0,$zero
.end __glOdysseyImageInit

# Function: __glOdysseyImageClose
# Declared: Line 442 (Source lines: 443-501)
# Address: 0x0d989210 - 0x0d9892d0 (Size: 192 bytes, Frame: 32)
.globl __glOdysseyImageClose
.ent __glOdysseyImageClose
__glOdysseyImageClose:
    # Line 443
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 451
    li	$a0,-1
    # Line 443
    lui	$at,0x17
    # Line 451
    lw	$s1,4112($zero)
    lui	$a1,0x1
    # Line 443
    sd	$s0,8($sp)
    addiu	$at,$at,-3200
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 451
    addu	$s0,$a1,$s1
    # Line 465
    sw	$zero,-22780($s0)
    # Line 464
    sw	$a0,-22784($s0)
    # Line 465
    sw	$zero,-22792($s0)
    # Line 464
    sw	$a0,-22796($s0)
    # Line 457
    lw	$a1,-22772($s0)
    beqz	$a1,.L0d989264
    sd	$ra,24($sp)
    # Line 473
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
.L0d989264:
    # Line 457
    lw	$a1,-22768($s0)
    beqz	$a1,.L0d989280
    li	$a0,-1
    # Line 473
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    li	$a0,-1
.L0d989280:
    # Line 488
    sw	$zero,-22736($s0)
    # Line 487
    sw	$a0,-22740($s0)
    # Line 488
    sw	$zero,-22748($s0)
    # Line 487
    sw	$a0,-22752($s0)
    # Line 488
    sw	$zero,-22760($s0)
    # Line 487
    sw	$a0,-22764($s0)
    # Line 479
    lw	$a1,-22728($s0)
    beqz	$a1,.L0d9892b0
    nop
    # Line 496
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
.L0d9892b0:
    ld	$s1,0($sp)
    ld	$ra,24($sp)
    # Line 501
    ld	$gp,16($sp)
    li	$v0,1
    # Line 500
    sb	$zero,-22800($s0)
    # Line 501
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyImageClose

# Function: __glOdysseyImageXfer
# Declared: Line 514 (Source lines: 519-708)
# Address: 0x0d9892d0 - 0x0d98969c (Size: 972 bytes, Frame: 160)
.globl __glOdysseyImageXfer
.ent __glOdysseyImageXfer
__glOdysseyImageXfer:
    # Line 519
    addiu	$sp,$sp,-160
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    sd	$s3,120($sp)
    sd	$ra,128($sp)
    sd	$s4,136($sp)
    # Line 537
    lw	$v0,4112($zero)
    sd	$s5,144($sp)
    # Line 559
    li	$at,0xa73c
    # Line 519
    sd	$s0,64($sp)
    # Line 559
    addu	$at,$at,$v0
    # Line 519
    move	$s0,$a2
    # Line 559
    li	$v1,1
    lbu	$at,0($at)
    # Line 519
    sd	$s2,56($sp)
    move	$s2,$a1
    lui	$a1,0x17
    sd	$s1,72($sp)
    move	$s1,$a0
    addiu	$a0,$a1,-3392
    sd	$gp,80($sp)
    # Line 559
    beq	$at,$v1,.L0d9895ec
    # Line 519
    addu	$gp,$t9,$a0
    # Line 571
    # lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
.L0d989330:
    jal	__glOdysseyImageSaveUserBuzzRasterState
    nop
    # Line 572
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    ld	$s3,40($sp)
    jal	__glOdysseyImageLoadBuzzRasterState
    move	$a0,$zero
    # Line 579
    # lw $t9, -31420($gp) # &__glOdysseyImageChainCreate
    move	$a0,$s1
    move	$a1,$s2
    move	$a2,$s0
    bal __glOdysseyImageChainCreate
    move	$a3,$s3
    beqz	$v0,.L0d989654
    sd	$v0,88($sp)
    # Line 587
    # lw $t9, -31172($gp) # &__glOdysseyImageTilingCreate
    ld	$a1,88($sp)
    ld	$a2,48($sp)
    move	$a0,$s0
    jal	__glOdysseyImageTilingCreate
    sd	$s6,104($sp)
    beqz	$v0,.L0d989674
    move	$s6,$v0
    # Line 595
    lw	$a1,4($v0)
    lw	$a0,0($v0)
    multu	$a0,$a1
    sdc1	$f20,96($sp)
    mflo	$a2
    sd	$s8,112($sp)
    beqz	$a2,.L0d989558
    sd	$s7,152($sp)
    move	$s1,$zero
    li	$s8,8
    sll	$s7,$a2,0x3
    ldc1	$f20,_lit8_3fe0000000000000
    addu	$s7,$s7,$a2
    b	.L0d9893dc
    sll	$s7,$s7,0x3
    nop
    nop
    nop
.L0d9893d0:
    # Line 618
    addiu	$s1,$s1,72
    beq	$s1,$s7,.L0d98955c
    # Line 703
    nop	# was lw $t9, -31416($gp) # &__glOdysseyImageChainFree
.L0d9893dc:
    # Line 628
    lw	$s2,8($s6)
    addu	$s2,$s2,$s1
    # Line 629
    lbu	$t8,68($s2)
    bnez	$t8,.L0d9893d0
    # Line 637
    ld	$s0,88($sp)
    lw	$s0,4($s0)
    addiu	$s4,$s2,36
    move	$s3,$zero
    beqz	$s0,.L0d9893d0
    addiu	$s5,$s2,20
    b	.L0d989494
    lw	$a0,68($s0)
    nop
.L0d989410:
    # Line 654
    move	$a2,$s4
    lwc1	$f3,0($a2)
.L0d989418:
    swc1	$f3,16($sp)
    lwc1	$f2,4($a2)
    swc1	$f2,20($sp)
    lwc1	$f1,8($a2)
    swc1	$f1,24($sp)
    lwc1	$f0,12($a2)
    swc1	$f0,28($sp)
.L0d989434:
    # Line 664
    lbu	$at,0($s2)
    sb	$at,32($sp)
    lbu	$ra,1($s2)
    sb	$ra,33($sp)
    lbu	$t9,2($s2)
    sb	$t9,34($sp)
    lbu	$t8,3($s2)
    sb	$t8,35($sp)
    # Line 669
    lw	$t9,4($s0)
    addiu	$a1,$sp,0
    jal	__glOdysseyImageChainFree
    move	$a0,$s0
    andi	$v0,$v0,0xff
    beqz	$v0,.L0d9895b4
    # Line 684
    li	$v1,14
    lw	$a2,0($s0)
    beq	$a2,$s8,.L0d9894f0
    nop
    beq	$a2,$v1,.L0d989540
    nop
.L0d989484:
    # Line 698
    lw	$s0,76($s0)
    beqz	$s0,.L0d9893d0
    nop
    # Line 637
    lw	$a0,68($s0)
.L0d989494:
    lbu	$a0,0($a0)
    # Line 644
    move	$a1,$s4
    # Line 637
    beqz	$a0,.L0d9894f8
    movz	$a1,$s5,$s3
    # Line 644
    lwc1	$f7,0($a1)
    swc1	$f7,0($sp)
    lwc1	$f6,4($a1)
    swc1	$f6,4($sp)
    lwc1	$f5,8($a1)
    swc1	$f5,8($sp)
    lwc1	$f4,12($a1)
    swc1	$f4,12($sp)
.L0d9894c4:
    # Line 650
    lw	$a2,72($s0)
    lbu	$a2,0($a2)
    beqz	$a2,.L0d98951c
    nop
    # Line 654
    bnez	$s3,.L0d989410
    move	$a2,$s5
    lw	$a3,0($s0)
    beq	$a3,$s8,.L0d989410
    nop
    b	.L0d989418
    lwc1	$f3,0($a2)
.L0d9894f0:
    b	.L0d989484
    # Line 688
    li	$s3,1
.L0d9894f8:
    # Line 650
    lwc1	$f11,4($s2)
    swc1	$f11,0($sp)
    lwc1	$f10,8($s2)
    swc1	$f10,4($sp)
    lwc1	$f9,12($s2)
    swc1	$f9,8($sp)
    lwc1	$f8,16($s2)
    b	.L0d9894c4
    swc1	$f8,12($sp)
.L0d98951c:
    # Line 660
    lwc1	$f15,52($s2)
    swc1	$f15,16($sp)
    lwc1	$f14,56($s2)
    swc1	$f14,20($sp)
    lwc1	$f13,60($s2)
    swc1	$f13,24($sp)
    lwc1	$f12,64($s2)
    b	.L0d989434
    swc1	$f12,28($sp)
.L0d989540:
    # Line 691
    lwc1	$f16,32($s2)
    cvt.d.s	$f16,$f16
    mul.d	$f16,$f16,$f20
    cvt.s.d	$f16,$f16
    # Line 692
    b	.L0d989484
    # Line 691
    swc1	$f16,32($s2)
.L0d989558:
    # Line 703
    # lw $t9, -31416($gp) # &__glOdysseyImageChainFree
.L0d98955c:
    bal __glOdysseyImageChainFree
    ld	$a0,88($sp)
    # Line 704
    # lw $t9, -31168($gp) # &__glOdysseyImageTilingFree
    jal	__glOdysseyImageTilingFree
    move	$a0,$s6
    # Line 707
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
.L0d98957c:
    ld	$s6,104($sp)
.L0d989580:
    ld	$s2,56($sp)
    ld	$s8,112($sp)
    ld	$s3,120($sp)
    ld	$s4,136($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s5,144($sp)
    ld	$ra,128($sp)
    ld	$s7,152($sp)
    ldc1	$f20,96($sp)
    # Line 708
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9895b4:
    # Line 671
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 676
    # lw $t9, -31416($gp) # &__glOdysseyImageChainFree
    bal __glOdysseyImageChainFree
    ld	$a0,88($sp)
    # Line 677
    # lw $t9, -31168($gp) # &__glOdysseyImageTilingFree
    jal	__glOdysseyImageTilingFree
    move	$a0,$s6
    # Line 680
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
    b	.L0d989580
    ld	$s6,104($sp)
.L0d9895ec:
    # Line 559
    lw	$a4,56($s1)
    beqz	$a4,.L0d989330
    # Line 571
    nop	# was lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    # Line 559
    lbu	$a5,10($s1)
    bnez	$a5,.L0d989330
    # Line 571
    nop	# was lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    # Line 559
    lw	$a6,1792($v0)
    lui	$a7,0x4003
    and	$a6,$a6,$a7
    bnez	$a6,.L0d989644
    # Line 567
    nop	# was lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    # Line 559
    lw	$t0,8($s2)
    li	$t1,6402
    bne	$t0,$t1,.L0d989330
    # Line 571
    nop	# was lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    # Line 559
    lw	$t2,1888($v0)
    beqz	$t2,.L0d989330
    # Line 571
    nop	# was lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    # Line 559
    lw	$t3,1884($v0)
    beqz	$t3,.L0d989330
    # Line 571
    nop	# was lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    # Line 567
    # lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
.L0d989644:
    bal __glOdysseyUpdateRasterPos
    move	$a0,$v0
    b	.L0d989330
    # Line 571
    nop	# was lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
.L0d989654:
    # Line 582
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
    sdc1	$f20,96($sp)
    sd	$s6,104($sp)
    sd	$s8,112($sp)
    b	.L0d98957c
    sd	$s7,152($sp)
.L0d989674:
    # Line 590
    # lw $t9, -31416($gp) # &__glOdysseyImageChainFree
    bal __glOdysseyImageChainFree
    ld	$a0,88($sp)
    # Line 591
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
    sdc1	$f20,96($sp)
    sd	$s8,112($sp)
    b	.L0d98957c
    sd	$s7,152($sp)
.end __glOdysseyImageXfer

# Function: __glOdysseyImageCalcFieldFormat
# Declared: Line 711 (Source lines: 712-759)
# Address: 0x0d9896a0 - 0x0d989704 (Size: 100 bytes, Frame: 0)
.globl __glOdysseyImageCalcFieldFormat
.ent __glOdysseyImageCalcFieldFormat
__glOdysseyImageCalcFieldFormat:
    # Line 712
    lui	$a4,0x17
    addiu	$a4,$a4,-4368
    addu	$at,$t9,$a4
    la	$a3,sub_0daf0000
    sltiu	$a5,$a0,18
    sll	$a4,$a0,0x2
    addiu	$a3,$a3,-28840
    beqz	$a5,.L0d9896d4
    addu	$a3,$a3,$a4
    # Line 740
    li	$v0,5
    # Line 712
    lw	$a5,0($a3)
    jr	$a5
    nop
.L0d9896d4:
    # Line 759
    jr	$ra
    li	$v0,-1
.L0d9896dc:
    jr	$ra
    # Line 730
    li	$v0,2
.L0d9896e4:
    # Line 759
    jr	$ra
    # Line 748
    move	$v0,$zero
.L0d9896ec:
    # Line 759
    jr	$ra
    # Line 744
    li	$v0,6
.L0d9896f4:
    # Line 759
    jr	$ra
    nop
.L0d9896fc:
    jr	$ra
    # Line 734
    li	$v0,3
.end __glOdysseyImageCalcFieldFormat

# Function: __glOdysseyImageDescribeWindow
# Declared: Line 764 (Source lines: 766-998)
# Address: 0x0d989710 - 0x0d989b34 (Size: 1060 bytes, Frame: 32)
.globl __glOdysseyImageDescribeWindow
.ent __glOdysseyImageDescribeWindow
__glOdysseyImageDescribeWindow:
    # Line 766
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 773
    lw	$s1,4112($zero)
    # Line 781
    li	$a4,1
    # Line 782
    sw	$a4,56($a0)
    # Line 781
    sw	$a4,4($a0)
    # Line 773
    sw	$zero,52($a0)
    sw	$zero,48($a0)
    sw	$zero,44($a0)
    sw	$zero,40($a0)
    sw	$zero,36($a0)
    sw	$zero,32($a0)
    sw	$zero,28($a0)
    sw	$zero,24($a0)
    sw	$zero,20($a0)
    sw	$zero,16($a0)
    sw	$zero,12($a0)
    sw	$zero,8($a0)
    sw	$zero,0($a0)
    # Line 766
    lui	$at,0x17
    # Line 782
    lui	$a3,0x1
    # Line 766
    sd	$s0,16($sp)
    addiu	$at,$at,-4480
    move	$s0,$a0
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 782
    beqz	$a1,.L0d9899f8
    addu	$a3,$s1,$a3
    # Line 805
    sw	$zero,24($a0)
    # Line 804
    sw	$zero,20($a0)
    # Line 803
    li	$a6,-4
    sw	$a6,16($a0)
    # Line 802
    sb	$a4,9($a0)
    # Line 805
    lbu	$a5,3536($s1)
    beqz	$a5,.L0d9898c4
    nop
    # Line 808
    lw	$t0,3700($s1)
    sw	$t0,32($a0)
    # Line 809
    lw	$a7,3704($s1)
    sw	$a7,36($a0)
.L0d9897b4:
    # Line 816
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 815
    lw	$t1,28000($a3)
    sw	$t1,28($s0)
    # Line 816
    jal	__glOdysseyImageLogBase2
    lw	$a0,27996($a3)
    # Line 819
    addiu	$a0,$s1,3376
    # Line 816
    addiu	$t2,$v0,-1
    sw	$t2,40($s0)
.L0d9897d4:
    # Line 819
    lbu	$t3,4($a0)
    beqz	$t3,.L0d989884
    nop
    # Line 832
    lbu	$a2,43($a0)
    # Line 835
    lbu	$a7,55($a0)
    # Line 837
    li	$a4,12
    # Line 834
    lbu	$a6,51($a0)
    # Line 837
    beq	$a4,$a2,.L0d9898d8
    # Line 833
    lbu	$a3,47($a0)
    # Line 841
    li	$a5,10
.L0d9897fc:
    beq	$a5,$a2,.L0d9898f8
    nop
.L0d989804:
    # Line 845
    li	$a5,5
.L0d989808:
    beq	$a5,$a2,.L0d98991c
    nop
.L0d989810:
    # Line 849
    li	$a5,4
.L0d989814:
    beq	$a5,$a2,.L0d989940
    nop
.L0d98981c:
    # Line 853
    li	$a5,8
.L0d989820:
    beq	$a5,$a2,.L0d989960
    nop
.L0d989828:
    # Line 857
    beq	$a4,$a2,.L0d989980
    nop
.L0d989830:
    # Line 861
    beq	$a5,$a2,.L0d9899a0
    nop
.L0d989838:
    # Line 865
    beq	$a4,$a2,.L0d9899c0
    nop
.L0d989840:
    # Line 869
    bne	$a5,$a2,.L0d98986c
    ld	$ra,24($sp)
    bnez	$a3,.L0d98986c
    ld	$ra,24($sp)
    bnez	$a6,.L0d98986c
    ld	$ra,24($sp)
    bnez	$a7,.L0d98986c
    ld	$ra,24($sp)
    b	.L0d9898a0
    # Line 871
    li	$a4,2
    ld	$ra,24($sp)
.L0d98986c:
    # Line 903
    ld	$gp,0($sp)
    # Line 881
    move	$v0,$zero
    # Line 903
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d989884:
    # Line 888
    lbu	$a2,39($a0)
    li	$t8,8
    beq	$a2,$t8,.L0d989a60
    li	$t9,12
    bne	$a2,$t9,.L0d9899e0
    ld	$ra,24($sp)
    # Line 894
    li	$a4,17
.L0d9898a0:
    la	$a2,sub_0daf0000
.L0d9898a4:
    sltiu	$a5,$a4,18
    addiu	$a2,$a2,-28768
    sll	$a3,$a4,0x2
    beqz	$a5,.L0d989a44
    addu	$a2,$a2,$a3
    lw	$a3,0($a2)
    jr	$a3
    nop
.L0d9898c4:
    # Line 812
    lw	$a5,3708($s1)
    sw	$a5,32($a0)
    # Line 813
    lw	$a4,3712($s1)
    b	.L0d9897b4
    sw	$a4,36($a0)
.L0d9898d8:
    # Line 837
    bne	$a4,$a3,.L0d9897fc
    # Line 841
    li	$a5,10
    # Line 837
    bne	$a4,$a6,.L0d9897fc
    # Line 841
    li	$a5,10
    # Line 837
    bne	$a4,$a7,.L0d9897fc
    # Line 841
    li	$a5,10
    # Line 839
    b	.L0d9898a4
    # Line 894
    la	$a2,sub_0daf0000
.L0d9898f8:
    # Line 841
    bne	$a5,$a3,.L0d989804
    nop
    bne	$a5,$a6,.L0d989808
    # Line 845
    li	$a5,5
    # Line 841
    li	$t0,2
    bne	$a7,$t0,.L0d989808
    # Line 845
    li	$a5,5
    # Line 843
    b	.L0d9898a0
    li	$a4,11
.L0d98991c:
    # Line 845
    bne	$a5,$a3,.L0d989810
    nop
    bne	$a5,$a6,.L0d989814
    # Line 849
    li	$a5,4
    # Line 845
    li	$t1,1
    bne	$t1,$a7,.L0d989814
    # Line 849
    li	$a5,4
    # Line 847
    b	.L0d9898a0
    li	$a4,8
.L0d989940:
    # Line 849
    bne	$a5,$a3,.L0d98981c
    nop
    bne	$a5,$a6,.L0d98981c
    nop
    bne	$a5,$a7,.L0d989820
    # Line 853
    li	$a5,8
    # Line 851
    b	.L0d9898a0
    li	$a4,7
.L0d989960:
    # Line 853
    bne	$a5,$a3,.L0d989828
    nop
    bne	$a5,$a6,.L0d989828
    nop
    bne	$a5,$a7,.L0d989828
    nop
    # Line 855
    b	.L0d9898a0
    li	$a4,10
.L0d989980:
    # Line 857
    bnez	$a3,.L0d989830
    nop
    bnez	$a6,.L0d989830
    nop
    bne	$a4,$a7,.L0d989830
    nop
    # Line 859
    b	.L0d9898a0
    li	$a4,9
.L0d9899a0:
    # Line 861
    bnez	$a3,.L0d989838
    nop
    bnez	$a6,.L0d989838
    nop
    bne	$a5,$a7,.L0d989838
    nop
    # Line 863
    b	.L0d9898a0
    li	$a4,6
.L0d9899c0:
    # Line 865
    bnez	$a3,.L0d989840
    nop
    bnez	$a6,.L0d989840
    nop
    bnez	$a7,.L0d989840
    nop
    # Line 867
    b	.L0d9898a0
    li	$a4,5
.L0d9899e0:
    # Line 903
    ld	$gp,0($sp)
    move	$v0,$zero
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9899f8:
    # Line 794
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 789
    sw	$zero,24($a0)
    # Line 788
    sw	$zero,20($a0)
    # Line 787
    li	$ra,-3
    sw	$ra,16($a0)
    move	$at,$a4
    # Line 786
    sb	$at,8($a0)
    # Line 791
    lw	$t8,3700($s1)
    sw	$t8,32($a0)
    # Line 792
    lw	$t3,3704($s1)
    sw	$t3,36($a0)
    # Line 793
    lw	$t2,27980($a3)
    sw	$t2,28($a0)
    # Line 794
    jal	__glOdysseyImageLogBase2
    lw	$a0,27976($a3)
    # Line 797
    addiu	$a0,$s1,3216
    # Line 794
    addiu	$v0,$v0,-1
    # Line 797
    b	.L0d9897d4
    # Line 794
    sw	$v0,40($s0)
.L0d989a44:
    ld	$ra,24($sp)
    # Line 903
    ld	$gp,0($sp)
    # Line 991
    move	$v0,$zero
    # Line 903
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d989a60:
    # Line 888
    b	.L0d9898a0
    li	$a4,16
.L0d989a68:
    # Line 914
    lw	$v1,84($a0)
    # Line 921
    li	$a1,1
    li	$a2,1
    # Line 914
    li	$a5,4
    xor	$v1,$v1,$a2
    movz	$a5,$a1,$v1
    li	$a3,2
    b	.L0d989aa4
    movz	$a3,$zero,$v1
.L0d989a8c:
    # Line 975
    lbu	$a6,6($a0)
    # Line 982
    li	$a5,1
    movz	$a5,$zero,$a6
    # Line 975
    li	$a7,2
    # Line 982
    li	$a3,3
    movz	$a3,$a7,$a6
.L0d989aa4:
    # Line 903
    ld	$gp,0($sp)
    # Line 996
    sw	$a4,52($s0)
    # Line 995
    sw	$a5,48($s0)
    ld	$ra,24($sp)
    # Line 994
    sw	$a3,44($s0)
    # Line 998
    li	$v0,1
    # Line 903
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d989acc:
    # Line 954
    lbu	$t0,6($a0)
    beqz	$t0,.L0d989b24
    li	$a3,2
    lbu	$t1,9($a0)
    # Line 968
    li	$t3,1
    # Line 954
    li	$a5,2
    movz	$a5,$t3,$t1
    # Line 968
    li	$t2,2
    # Line 954
    li	$a3,3
    b	.L0d989aa4
    movz	$a3,$t2,$t1
.L0d989af8:
    # Line 931
    lbu	$t8,7($a0)
    beqz	$t8,.L0d989b2c
    li	$a3,2
    lbu	$t9,9($a0)
    # Line 945
    li	$at,5
    # Line 931
    li	$a5,4
    movz	$a5,$at,$t9
    # Line 945
    li	$ra,2
    # Line 931
    li	$a3,3
    b	.L0d989aa4
    movz	$a3,$ra,$t9
.L0d989b24:
    # Line 954
    b	.L0d989aa4
    li	$a5,2
.L0d989b2c:
    # Line 931
    b	.L0d989aa4
    li	$a5,3
.end __glOdysseyImageDescribeWindow

.late_rodata
jtbl_0dae8f58:
    .word .L0d9896dc
    .word .L0d9896dc
    .word .L0d9896dc
    .word .L0d9896dc
    .word .L0d9896dc
    .word .L0d9896dc
    .word .L0d9896fc
    .word .L0d9896f4
    .word .L0d9896ec
    .word .L0d9896fc
    .word .L0d9896f4
    .word .L0d9896ec
    .word .L0d9896f4
    .word .L0d9896f4
    .word .L0d9896d4
    .word .L0d9896d4
    .word .L0d9896e4
    .word .L0d9896e4
jtbl_0dae8fa0:
    .word .L0d989a44
    .word .L0d989a44
    .word .L0d989a68
    .word .L0d989a44
    .word .L0d989a44
    .word .L0d989af8
    .word .L0d989af8
    .word .L0d989af8
    .word .L0d989af8
    .word .L0d989acc
    .word .L0d989acc
    .word .L0d989acc
    .word .L0d989a8c
    .word .L0d989a44
    .word .L0d989a44
    .word .L0d989a44
    .word .L0d989a68
    .word .L0d989af8

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_40fffe00:
    .word 0x40fffe00

