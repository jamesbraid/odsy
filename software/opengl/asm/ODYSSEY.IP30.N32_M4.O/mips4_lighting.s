# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/mips4_lighting.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glClampAndScaleColor
# Declared: Line 230 (Source lines: 230-263)
# Address: 0x0dae2a70 - 0x0dae2af8 (Size: 136 bytes, Frame: 0)
.globl __glClampAndScaleColor
.ent __glClampAndScaleColor
__glClampAndScaleColor:
    # Line 230
    lwc1	$f0,432($a0)
    # Line 231
    lwc1	$f1,30808($a0)
    # Line 232
    mtc1	$zero,$f2
    # Line 233
    lwc1	$f3,436($a0)
    # Line 234
    lwc1	$f4,30812($a0)
    # Line 235
    mul.s	$f5,$f0,$f1
    # Line 236
    lwc1	$f6,440($a0)
    # Line 237
    c.lt.s	$f0,$f2
    # Line 238
    lwc1	$f7,30816($a0)
    # Line 239
    mul.s	$f8,$f3,$f4
    # Line 240
    lwc1	$f9,444($a0)
    # Line 241
    c.lt.s $f3,$f2
    # Line 242
    lwc1	$f10,30848($a0)
    # Line 243
    mul.s	$f11,$f6,$f7
    # Line 244
    movt.s	$f5,$f2,$fcc0
    # Line 245
    c.lt.s $f6,$f2
    # Line 246
    movt.s	$f8,$f2,$fcc2
    # Line 247
    c.lt.s $f1,$f5
    # Line 248
    movt.s	$f5,$f1,$fcc1
    # Line 249
    mul.s	$f12,$f9,$f10
    # Line 250
    movt.s	$f11,$f2,$fcc4
    # Line 251
    c.lt.s $f4,$f8
    # Line 252
    movt.s	$f8,$f4,$fcc3
    # Line 253
    c.lt.s $f7,$f11
    # Line 254
    movt.s	$f11,$f4,$fcc5
    # Line 255
    c.lt.s $f9,$f2
    # Line 256
    movt.s	$f12,$f2,$fcc6
    # Line 257
    c.lt.s $f10,$f12
    # Line 258
    swc1	$f5,192($a0)
    # Line 259
    swc1	$f8,196($a0)
    # Line 260
    movt.s	$f12,$f4,$fcc7
    # Line 261
    swc1	$f11,200($a0)
    # Line 262
    jr	$ra
    # Line 263
    swc1	$f12,204($a0)
.end __glClampAndScaleColor

# Function: __glFastCalcRGBColor
# Declared: Line 283 (Source lines: 283-407)
# Address: 0x0dae2af8 - 0x0dae2c9c (Size: 420 bytes, Frame: 0)
.globl __glFastCalcRGBColor
.ent __glFastCalcRGBColor
__glFastCalcRGBColor:
    # Line 283
    lw	$v0,28236($a0)
    # Line 284
    lwc1	$f13,32($a2)
    # Line 285
    lwc1	$f14,36($a2)
    # Line 286
    bnez	$a1,.L0dae2c48
    # Line 287
    lwc1	$f15,40($a2)
    # Line 288
    li	$v1,0
    # Line 289
    addiu	$a1,$a2,144
    # Line 290
    addiu	$a2,$a0,28156
.L0dae2b18:
    # Line 294
    lwc1	$f16,0($a2)
    # Line 295
    lwc1	$f17,4($a2)
    # Line 296
    beqz	$v0,.L0dae2c7c
    # Line 297
    lwc1	$f18,8($a2)
.L0dae2b28:
    # Line 300
    lwc1	$f19,160($v0)
    # Line 301
    lwc1	$f0,176($v0)
    # Line 302
    mul.s	$f1,$f19,$f13
    # Line 303
    addu	$a3,$v0,$v1
    # Line 304
    lwc1	$f2,164($v0)
    # Line 305
    mul.s	$f3,$f0,$f13
    # Line 306
    lwc1	$f4,180($v0)
    # Line 307
    lwc1	$f5,0($a3)
    # Line 308
    madd.s	$f1,$f1,$f2,$f14
    # Line 309
    lwc1	$f6,4($a3)
    # Line 310
    madd.s	$f3,$f3,$f4,$f14
    # Line 311
    lwc1	$f7,168($v0)
    # Line 312
    add.s	$f16,$f16,$f5
    # Line 313
    lwc1	$f8,184($v0)
    # Line 314
    add.s	$f17,$f17,$f6
    # Line 315
    lwc1	$f9,8($a3)
    # Line 316
    madd.s	$f1,$f1,$f7,$f15
    # Line 317
    lw	$v0,200($v0)
    # Line 318
    madd.s	$f3,$f3,$f8,$f15
    # Line 319
    lwc1	$f10,24($a2)
    # Line 320
    add.s	$f18,$f18,$f9
    # Line 321
    mtc1	$zero,$f11
    # Line 322
    lwc1	$f12,3540($a0)
    # Line 323
    sub.s	$f1,$f1,$f10
    # Line 324
    lwc1	$f19,28($a2)
    # Line 325
    c.le.s	$f3,$f11
    # Line 326
    bc1t	.L0dae2c78
    # Line 327
    lwc1	$f0,16($a3)
    # Line 328
    madd.s	$f2,$f12,$f1,$f19
    # Line 329
    lwc1	$f4,20($a3)
    # Line 330
    madd.s	$f16,$f16,$f0,$f3
    # Line 331
    lwc1	$f5,24($a3)
    # Line 332
    madd.s	$f17,$f17,$f4,$f3
    # Line 333
    lw	$t0,36($a2)
    # Line 334
    c.lt.s	$f1,$f11
    # Line 335
    lw	$t1,20($a2)
    # Line 336
    trunc.w.s	$f2,$f2
    # Line 337
    sw	$t0,12($a1)
    # Line 338
    madd.s	$f18,$f18,$f5,$f3
    # Line 339
    bc1t	.L0dae2c78
    # Line 340
    mfc1	$t3,$f2
    # Line 341
    lwc1	$f6,32($a3)
    # Line 342
    slti	$a4,$t3,256
    # Line 343
    beqz	$a4,.L0dae2c64
    # Line 344
    sll	$t3,$t3,0x2
    # Line 345
    addu	$t1,$t1,$t3
    # Line 346
    lwc1	$f7,0($t1)
    # Line 347
    lwc1	$f8,36($a3)
    # Line 348
    lwc1	$f9,40($a3)
    # Line 349
    madd.s	$f16,$f16,$f6,$f7
    # Line 350
    lwc1	$f10,30808($a0)
    # Line 351
    madd.s	$f17,$f17,$f8,$f7
    # Line 352
    lwc1	$f12,30812($a0)
    # Line 353
    madd.s	$f18,$f18,$f9,$f7
    # Line 354
    bnez	$v0,.L0dae2b28
    # Line 355
    lwc1	$f19,30816($a0)
    # Line 356
    c.lt.s	$f16,$f11
.L0dae2c0c:
    # Line 358
    c.lt.s $f10,$f16
    # Line 359
    c.lt.s $f17,$f11
    # Line 360
    movt.s	$f16,$f11,$fcc0
    # Line 361
    c.lt.s $f12,$f17
    # Line 362
    movt.s	$f16,$f10,$fcc1
    # Line 363
    c.lt.s $f18,$f11
    # Line 364
    movt.s	$f17,$f11,$fcc2
    # Line 365
    c.lt.s $f19,$f18
    # Line 366
    movt.s	$f17,$f12,$fcc3
    # Line 367
    swc1	$f16,0($a1)
    # Line 368
    movt.s	$f18,$f11,$fcc4
    # Line 369
    swc1	$f17,4($a1)
    # Line 370
    movt.s	$f18,$f19,$fcc5
    # Line 371
    jr	$ra
    # Line 372
    swc1	$f18,8($a1)
.L0dae2c48:
    # Line 378
    addiu	$a1,$a2,160
    # Line 379
    neg.s	$f13,$f13
    # Line 380
    addiu	$a2,$a0,28196
    # Line 381
    neg.s	$f14,$f14
    # Line 382
    li	$v1,48
    # Line 383
    b	.L0dae2b18
    # Line 384
    neg.s	$f15,$f15
.L0dae2c64:
    # Line 388
    lwc1	$f0,36($a3)
    # Line 389
    add.s	$f16,$f16,$f6
    # Line 390
    lwc1	$f1,40($a3)
    # Line 391
    add.s	$f17,$f17,$f0
    # Line 392
    add.s	$f18,$f18,$f1
.L0dae2c78:
    # Line 396
    bnez	$v0,.L0dae2b28
.L0dae2c7c:
    # Line 400
    lw	$a5,36($a2)
    # Line 401
    lwc1	$f10,30808($a0)
    # Line 402
    lwc1	$f12,30812($a0)
    # Line 403
    lwc1	$f19,30816($a0)
    # Line 404
    mtc1	$zero,$f11
    # Line 405
    sw	$a5,12($a1)
    # Line 406
    b	.L0dae2c0c
    # Line 407
    c.lt.s	$f16,$f11
.end __glFastCalcRGBColor

