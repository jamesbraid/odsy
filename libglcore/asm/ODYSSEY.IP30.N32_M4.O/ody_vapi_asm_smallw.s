# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_vapi_asm_smallw.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 24

.text

# Function: __glOdyim_Vertex2d_smallw
# Declared: Line 67 (Source lines: 67-112)
# Address: 0x0daced80 - 0x0dacedfc (Size: 124 bytes, Frame: 0)
.globl __glOdyim_Vertex2d_smallw
.ent __glOdyim_Vertex2d_smallw
__glOdyim_Vertex2d_smallw:
    # Line 67
    cvt.s.d	$f12,$f12
    # Line 68
    cvt.s.d	$f13,$f13
    # Line 69
    lw	$v0,4128($zero)
    # Line 70
    lw	$v1,4132($zero)
    # Line 71
    lwc1	$f4,48($v0)
    # Line 72
    lwc1	$f8,60($v0)
    # Line 73
    lwc1	$f5,52($v0)
    # Line 74
    lwc1	$f9,0($v1)
    # Line 75
    lwc1	$f7,8($v1)
    # Line 82
    madd.s	$f8,$f8,$f12,$f4
    # Line 83
    madd.s	$f8,$f8,$f13,$f5
    # Line 85
    mul.s	$f7,$f8,$f7
    # Line 86
    swc1	$f8,8($v1)
    # Line 87
    abs.s	$f4,$f7
    # Line 88
    c.ueq.s	$f4,$f7
    # Line 89
    abs.s	$f8,$f8
    # Line 90
    bc1f	.L0dacede8
    # Line 91
    c.ult.s	$f8,$f9
    # Line 92
    lui	$t0,0x8080
    # Line 93
    bc1t	.L0dacede8
    # Line 94
    ori	$t0,$t0,0xc801
    # Line 96
    lui	$v0,0x1
    # Line 98
    sw	$t0,0($v0)
    # Line 99
    swc1	$f12,0($v0)
    # Line 100
    jr	$ra
    # Line 101
    swc1	$f13,0($v0)
.L0dacede8:
    # Line 103
    lw	$t9,32($v1)
    # Line 109
    mtc1	$zero,$f14
    # Line 110
    lui	$t0,0x3f80
    # Line 111
    jr	$t9
    # Line 112
    mtc1	$t0,$f15
.end __glOdyim_Vertex2d_smallw

# Function: __glOdyim_Vertex2dv_smallw
# Declared: Line 119 (Source lines: 119-166)
# Address: 0x0dacee00 - 0x0dacee84 (Size: 132 bytes, Frame: 0)
.globl __glOdyim_Vertex2dv_smallw
.ent __glOdyim_Vertex2dv_smallw
__glOdyim_Vertex2dv_smallw:
    # Line 119
    ldc1	$f12,0($a0)
    # Line 120
    cvt.s.d	$f12,$f12
    # Line 121
    ldc1	$f13,8($a0)
    # Line 122
    cvt.s.d	$f13,$f13
    # Line 123
    lw	$v0,4128($zero)
    # Line 124
    lw	$v1,4132($zero)
    # Line 125
    lwc1	$f4,48($v0)
    # Line 126
    lwc1	$f8,60($v0)
    # Line 127
    lwc1	$f5,52($v0)
    # Line 128
    lwc1	$f9,0($v1)
    # Line 129
    lwc1	$f7,8($v1)
    # Line 136
    madd.s	$f8,$f8,$f12,$f4
    # Line 137
    madd.s	$f8,$f8,$f13,$f5
    # Line 139
    mul.s	$f7,$f8,$f7
    # Line 140
    swc1	$f8,8($v1)
    # Line 141
    abs.s	$f4,$f7
    # Line 142
    c.ueq.s	$f4,$f7
    # Line 143
    abs.s	$f8,$f8
    # Line 144
    bc1f	.L0dacee70
    # Line 145
    c.ult.s	$f8,$f9
    # Line 146
    lui	$t0,0x8080
    # Line 147
    bc1t	.L0dacee70
    # Line 148
    ori	$t0,$t0,0xc801
    # Line 150
    lui	$v0,0x1
    # Line 152
    sw	$t0,0($v0)
    # Line 153
    swc1	$f12,0($v0)
    # Line 154
    jr	$ra
    # Line 155
    swc1	$f13,0($v0)
.L0dacee70:
    # Line 157
    lw	$t9,32($v1)
    # Line 163
    mtc1	$zero,$f14
    # Line 164
    lui	$t0,0x3f80
    # Line 165
    jr	$t9
    # Line 166
    mtc1	$t0,$f15
.end __glOdyim_Vertex2dv_smallw

# Function: __glOdyim_Vertex2f_smallw
# Declared: Line 173 (Source lines: 173-216)
# Address: 0x0daceec0 - 0x0dacef34 (Size: 116 bytes, Frame: 0)
.globl __glOdyim_Vertex2f_smallw
.ent __glOdyim_Vertex2f_smallw
__glOdyim_Vertex2f_smallw:
    # Line 173
    lw	$v0,4128($zero)
    # Line 174
    lw	$v1,4132($zero)
    # Line 175
    lwc1	$f4,48($v0)
    # Line 176
    lwc1	$f8,60($v0)
    # Line 177
    lwc1	$f5,52($v0)
    # Line 178
    lwc1	$f9,0($v1)
    # Line 179
    lwc1	$f7,8($v1)
    # Line 186
    madd.s	$f8,$f8,$f12,$f4
    # Line 187
    madd.s	$f8,$f8,$f13,$f5
    # Line 189
    mul.s	$f7,$f8,$f7
    # Line 190
    swc1	$f8,8($v1)
    # Line 191
    abs.s	$f4,$f7
    # Line 192
    c.ueq.s	$f4,$f7
    # Line 193
    abs.s	$f8,$f8
    # Line 194
    bc1f	.L0dacef20
    # Line 195
    c.ult.s	$f8,$f9
    # Line 196
    lui	$t0,0x8080
    # Line 197
    bc1t	.L0dacef20
    # Line 198
    ori	$t0,$t0,0xc801
    # Line 200
    lui	$v0,0x1
    # Line 202
    sw	$t0,0($v0)
    # Line 203
    swc1	$f12,0($v0)
    # Line 204
    jr	$ra
    # Line 205
    swc1	$f13,0($v0)
.L0dacef20:
    # Line 207
    lw	$t9,32($v1)
    # Line 213
    mtc1	$zero,$f14
    # Line 214
    lui	$t0,0x3f80
    # Line 215
    jr	$t9
    # Line 216
    mtc1	$t0,$f15
.end __glOdyim_Vertex2f_smallw

# Function: __glOdyim_Vertex2fv_smallw
# Declared: Line 223 (Source lines: 223-268)
# Address: 0x0dacef40 - 0x0dacefbc (Size: 124 bytes, Frame: 0)
.globl __glOdyim_Vertex2fv_smallw
.ent __glOdyim_Vertex2fv_smallw
__glOdyim_Vertex2fv_smallw:
    # Line 223
    lwc1	$f12,0($a0)
    # Line 224
    lwc1	$f13,4($a0)
    # Line 225
    lw	$v0,4128($zero)
    # Line 226
    lw	$v1,4132($zero)
    # Line 227
    lwc1	$f4,48($v0)
    # Line 228
    lwc1	$f8,60($v0)
    # Line 229
    lwc1	$f5,52($v0)
    # Line 230
    lwc1	$f9,0($v1)
    # Line 231
    lwc1	$f7,8($v1)
    # Line 238
    madd.s	$f8,$f8,$f12,$f4
    # Line 239
    madd.s	$f8,$f8,$f13,$f5
    # Line 241
    mul.s	$f7,$f8,$f7
    # Line 242
    swc1	$f8,8($v1)
    # Line 243
    abs.s	$f4,$f7
    # Line 244
    c.ueq.s	$f4,$f7
    # Line 245
    abs.s	$f8,$f8
    # Line 246
    bc1f	.L0dacefa8
    # Line 247
    c.ult.s	$f8,$f9
    # Line 248
    lui	$t0,0x8080
    # Line 249
    bc1t	.L0dacefa8
    # Line 250
    ori	$t0,$t0,0xc801
    # Line 252
    lui	$v0,0x1
    # Line 254
    sw	$t0,0($v0)
    # Line 255
    swc1	$f12,0($v0)
    # Line 256
    jr	$ra
    # Line 257
    swc1	$f13,0($v0)
.L0dacefa8:
    # Line 259
    lw	$t9,32($v1)
    # Line 265
    mtc1	$zero,$f14
    # Line 266
    lui	$t0,0x3f80
    # Line 267
    jr	$t9
    # Line 268
    mtc1	$t0,$f15
.end __glOdyim_Vertex2fv_smallw

# Function: __glOdyim_Vertex2i_smallw
# Declared: Line 275 (Source lines: 275-322)
# Address: 0x0dacefc0 - 0x0dacf044 (Size: 132 bytes, Frame: 0)
.globl __glOdyim_Vertex2i_smallw
.ent __glOdyim_Vertex2i_smallw
__glOdyim_Vertex2i_smallw:
    # Line 275
    mtc1	$a0,$f8
    # Line 276
    mtc1	$a1,$f9
    # Line 277
    cvt.s.w	$f12,$f8
    # Line 278
    cvt.s.w	$f13,$f9
    # Line 279
    lw	$v0,4128($zero)
    # Line 280
    lw	$v1,4132($zero)
    # Line 281
    lwc1	$f4,48($v0)
    # Line 282
    lwc1	$f8,60($v0)
    # Line 283
    lwc1	$f5,52($v0)
    # Line 284
    lwc1	$f9,0($v1)
    # Line 285
    lwc1	$f7,8($v1)
    # Line 292
    madd.s	$f8,$f8,$f12,$f4
    # Line 293
    madd.s	$f8,$f8,$f13,$f5
    # Line 295
    mul.s	$f7,$f8,$f7
    # Line 296
    swc1	$f8,8($v1)
    # Line 297
    abs.s	$f4,$f7
    # Line 298
    c.ueq.s	$f4,$f7
    # Line 299
    abs.s	$f8,$f8
    # Line 300
    bc1f	.L0dacf030
    # Line 301
    c.ult.s	$f8,$f9
    # Line 302
    lui	$t0,0x8080
    # Line 303
    bc1t	.L0dacf030
    # Line 304
    ori	$t0,$t0,0xc800
    # Line 306
    lui	$v0,0x1
    # Line 308
    sw	$t0,0($v0)
    # Line 309
    sw	$a0,0($v0)
    # Line 310
    jr	$ra
    # Line 311
    sw	$a1,0($v0)
.L0dacf030:
    # Line 313
    lw	$t9,32($v1)
    # Line 319
    mtc1	$zero,$f14
    # Line 320
    lui	$t0,0x3f80
    # Line 321
    jr	$t9
    # Line 322
    mtc1	$t0,$f15
.end __glOdyim_Vertex2i_smallw

# Function: __glOdyim_Vertex2iv_smallw
# Declared: Line 329 (Source lines: 329-378)
# Address: 0x0dacf080 - 0x0dacf10c (Size: 140 bytes, Frame: 0)
.globl __glOdyim_Vertex2iv_smallw
.ent __glOdyim_Vertex2iv_smallw
__glOdyim_Vertex2iv_smallw:
    # Line 329
    lw	$a4,0($a0)
    # Line 330
    lw	$a5,4($a0)
    # Line 331
    mtc1	$a4,$f8
    # Line 332
    mtc1	$a5,$f9
    # Line 333
    cvt.s.w	$f12,$f8
    # Line 334
    cvt.s.w	$f13,$f9
    # Line 335
    lw	$v0,4128($zero)
    # Line 336
    lw	$v1,4132($zero)
    # Line 337
    lwc1	$f4,48($v0)
    # Line 338
    lwc1	$f8,60($v0)
    # Line 339
    lwc1	$f5,52($v0)
    # Line 340
    lwc1	$f9,0($v1)
    # Line 341
    lwc1	$f7,8($v1)
    # Line 348
    madd.s	$f8,$f8,$f12,$f4
    # Line 349
    madd.s	$f8,$f8,$f13,$f5
    # Line 351
    mul.s	$f7,$f8,$f7
    # Line 352
    swc1	$f8,8($v1)
    # Line 353
    abs.s	$f4,$f7
    # Line 354
    c.ueq.s	$f4,$f7
    # Line 355
    abs.s	$f8,$f8
    # Line 356
    bc1f	.L0dacf0f8
    # Line 357
    c.ult.s	$f8,$f9
    # Line 358
    lui	$t0,0x8080
    # Line 359
    bc1t	.L0dacf0f8
    # Line 360
    ori	$t0,$t0,0xc800
    # Line 362
    lui	$v0,0x1
    # Line 364
    sw	$t0,0($v0)
    # Line 365
    sw	$a4,0($v0)
    # Line 366
    jr	$ra
    # Line 367
    sw	$a5,0($v0)
.L0dacf0f8:
    # Line 369
    lw	$t9,32($v1)
    # Line 375
    mtc1	$zero,$f14
    # Line 376
    lui	$t0,0x3f80
    # Line 377
    jr	$t9
    # Line 378
    mtc1	$t0,$f15
.end __glOdyim_Vertex2iv_smallw

# Function: __glOdyim_Vertex2s_smallw
# Declared: Line 385 (Source lines: 385-432)
# Address: 0x0dacf140 - 0x0dacf1c4 (Size: 132 bytes, Frame: 0)
.globl __glOdyim_Vertex2s_smallw
.ent __glOdyim_Vertex2s_smallw
__glOdyim_Vertex2s_smallw:
    # Line 385
    mtc1	$a0,$f8
    # Line 386
    mtc1	$a1,$f9
    # Line 387
    cvt.s.w	$f12,$f8
    # Line 388
    cvt.s.w	$f13,$f9
    # Line 389
    lw	$v0,4128($zero)
    # Line 390
    lw	$v1,4132($zero)
    # Line 391
    lwc1	$f4,48($v0)
    # Line 392
    lwc1	$f8,60($v0)
    # Line 393
    lwc1	$f5,52($v0)
    # Line 394
    lwc1	$f9,0($v1)
    # Line 395
    lwc1	$f7,8($v1)
    # Line 402
    madd.s	$f8,$f8,$f12,$f4
    # Line 403
    madd.s	$f8,$f8,$f13,$f5
    # Line 405
    mul.s	$f7,$f8,$f7
    # Line 406
    swc1	$f8,8($v1)
    # Line 407
    abs.s	$f4,$f7
    # Line 408
    c.ueq.s	$f4,$f7
    # Line 409
    abs.s	$f8,$f8
    # Line 410
    bc1f	.L0dacf1b0
    # Line 411
    c.ult.s	$f8,$f9
    # Line 412
    lui	$t0,0x8080
    # Line 413
    bc1t	.L0dacf1b0
    # Line 414
    ori	$t0,$t0,0xc800
    # Line 416
    lui	$v0,0x1
    # Line 418
    sw	$t0,0($v0)
    # Line 419
    sw	$a0,0($v0)
    # Line 420
    jr	$ra
    # Line 421
    sw	$a1,0($v0)
.L0dacf1b0:
    # Line 423
    lw	$t9,32($v1)
    # Line 429
    mtc1	$zero,$f14
    # Line 430
    lui	$t0,0x3f80
    # Line 431
    jr	$t9
    # Line 432
    mtc1	$t0,$f15
.end __glOdyim_Vertex2s_smallw

# Function: __glOdyim_Vertex2sv_smallw
# Declared: Line 439 (Source lines: 439-488)
# Address: 0x0dacf200 - 0x0dacf28c (Size: 140 bytes, Frame: 0)
.globl __glOdyim_Vertex2sv_smallw
.ent __glOdyim_Vertex2sv_smallw
__glOdyim_Vertex2sv_smallw:
    # Line 439
    lh	$a4,0($a0)
    # Line 440
    lh	$a5,2($a0)
    # Line 441
    mtc1	$a4,$f8
    # Line 442
    mtc1	$a5,$f9
    # Line 443
    cvt.s.w	$f12,$f8
    # Line 444
    cvt.s.w	$f13,$f9
    # Line 445
    lw	$v0,4128($zero)
    # Line 446
    lw	$v1,4132($zero)
    # Line 447
    lwc1	$f4,48($v0)
    # Line 448
    lwc1	$f8,60($v0)
    # Line 449
    lwc1	$f5,52($v0)
    # Line 450
    lwc1	$f9,0($v1)
    # Line 451
    lwc1	$f7,8($v1)
    # Line 458
    madd.s	$f8,$f8,$f12,$f4
    # Line 459
    madd.s	$f8,$f8,$f13,$f5
    # Line 461
    mul.s	$f7,$f8,$f7
    # Line 462
    swc1	$f8,8($v1)
    # Line 463
    abs.s	$f4,$f7
    # Line 464
    c.ueq.s	$f4,$f7
    # Line 465
    abs.s	$f8,$f8
    # Line 466
    bc1f	.L0dacf278
    # Line 467
    c.ult.s	$f8,$f9
    # Line 468
    lui	$t0,0x8080
    # Line 469
    bc1t	.L0dacf278
    # Line 470
    ori	$t0,$t0,0xc800
    # Line 472
    lui	$v0,0x1
    # Line 474
    sw	$t0,0($v0)
    # Line 475
    sw	$a4,0($v0)
    # Line 476
    jr	$ra
    # Line 477
    sw	$a5,0($v0)
.L0dacf278:
    # Line 479
    lw	$t9,32($v1)
    # Line 485
    mtc1	$zero,$f14
    # Line 486
    lui	$t0,0x3f80
    # Line 487
    jr	$t9
    # Line 488
    mtc1	$t0,$f15
.end __glOdyim_Vertex2sv_smallw

# Function: __glOdyim_Vertex3d_smallw
# Declared: Line 495 (Source lines: 495-548)
# Address: 0x0dacf2c0 - 0x0dacf348 (Size: 136 bytes, Frame: 0)
.globl __glOdyim_Vertex3d_smallw
.ent __glOdyim_Vertex3d_smallw
__glOdyim_Vertex3d_smallw:
    # Line 495
    cvt.s.d	$f12,$f12
    # Line 496
    cvt.s.d	$f13,$f13
    # Line 500
    cvt.s.d	$f14,$f14
    # Line 501
    lw	$v0,4128($zero)
    # Line 502
    lw	$v1,4132($zero)
    # Line 503
    lwc1	$f4,48($v0)
    # Line 504
    lwc1	$f8,60($v0)
    # Line 505
    lwc1	$f5,52($v0)
    # Line 506
    lwc1	$f6,56($v0)
    # Line 507
    lwc1	$f9,0($v1)
    # Line 508
    lwc1	$f7,8($v1)
    # Line 517
    madd.s	$f8,$f8,$f12,$f4
    # Line 518
    madd.s	$f8,$f8,$f13,$f5
    # Line 519
    madd.s	$f8,$f8,$f14,$f6
    # Line 521
    mul.s	$f7,$f8,$f7
    # Line 522
    swc1	$f8,8($v1)
    # Line 523
    abs.s	$f4,$f7
    # Line 524
    c.ueq.s	$f4,$f7
    # Line 525
    abs.s	$f8,$f8
    # Line 526
    bc1f	.L0dacf338
    # Line 527
    c.ult.s	$f8,$f9
    # Line 528
    lui	$t0,0x8080
    # Line 529
    bc1t	.L0dacf338
    # Line 530
    ori	$t0,$t0,0xcc03
    # Line 532
    lui	$v0,0x1
    # Line 534
    sw	$t0,0($v0)
    # Line 535
    swc1	$f12,0($v0)
    # Line 536
    swc1	$f13,0($v0)
    # Line 537
    jr	$ra
    # Line 538
    swc1	$f14,0($v0)
.L0dacf338:
    # Line 540
    lw	$t9,32($v1)
    # Line 546
    lui	$t0,0x3f80
    # Line 547
    jr	$t9
    # Line 548
    mtc1	$t0,$f15
.end __glOdyim_Vertex3d_smallw

# Function: __glOdyim_Vertex3dv_smallw
# Declared: Line 555 (Source lines: 555-608)
# Address: 0x0dacf380 - 0x0dacf414 (Size: 148 bytes, Frame: 0)
.globl __glOdyim_Vertex3dv_smallw
.ent __glOdyim_Vertex3dv_smallw
__glOdyim_Vertex3dv_smallw:
    # Line 555
    ldc1	$f12,0($a0)
    # Line 556
    cvt.s.d	$f12,$f12
    # Line 557
    ldc1	$f13,8($a0)
    # Line 558
    cvt.s.d	$f13,$f13
    # Line 559
    ldc1	$f14,16($a0)
    # Line 560
    cvt.s.d	$f14,$f14
    # Line 561
    lw	$v0,4128($zero)
    # Line 562
    lw	$v1,4132($zero)
    # Line 563
    lwc1	$f4,48($v0)
    # Line 564
    lwc1	$f8,60($v0)
    # Line 565
    lwc1	$f5,52($v0)
    # Line 566
    lwc1	$f6,56($v0)
    # Line 567
    lwc1	$f9,0($v1)
    # Line 568
    lwc1	$f7,8($v1)
    # Line 577
    madd.s	$f8,$f8,$f12,$f4
    # Line 578
    madd.s	$f8,$f8,$f13,$f5
    # Line 579
    madd.s	$f8,$f8,$f14,$f6
    # Line 581
    mul.s	$f7,$f8,$f7
    # Line 582
    swc1	$f8,8($v1)
    # Line 583
    abs.s	$f4,$f7
    # Line 584
    c.ueq.s	$f4,$f7
    # Line 585
    abs.s	$f8,$f8
    # Line 586
    bc1f	.L0dacf404
    # Line 587
    c.ult.s	$f8,$f9
    # Line 588
    lui	$t0,0x8080
    # Line 589
    bc1t	.L0dacf404
    # Line 590
    ori	$t0,$t0,0xcc03
    # Line 592
    lui	$v0,0x1
    # Line 594
    sw	$t0,0($v0)
    # Line 595
    swc1	$f12,0($v0)
    # Line 596
    swc1	$f13,0($v0)
    # Line 597
    jr	$ra
    # Line 598
    swc1	$f14,0($v0)
.L0dacf404:
    # Line 600
    lw	$t9,32($v1)
    # Line 606
    lui	$t0,0x3f80
    # Line 607
    jr	$t9
    # Line 608
    mtc1	$t0,$f15
.end __glOdyim_Vertex3dv_smallw

# Function: __glOdyim_Vertex3f_smallw
# Declared: Line 618 (Source lines: 618-665)
# Address: 0x0dacf440 - 0x0dacf4bc (Size: 124 bytes, Frame: 0)
.globl __glOdyim_Vertex3f_smallw
.ent __glOdyim_Vertex3f_smallw
__glOdyim_Vertex3f_smallw:
    # Line 618
    lw	$v0,4128($zero)
    # Line 619
    lw	$v1,4132($zero)
    # Line 620
    lwc1	$f4,48($v0)
    # Line 621
    lwc1	$f8,60($v0)
    # Line 622
    lwc1	$f5,52($v0)
    # Line 623
    lwc1	$f6,56($v0)
    # Line 624
    lwc1	$f9,0($v1)
    # Line 625
    lwc1	$f7,8($v1)
    # Line 634
    madd.s	$f8,$f8,$f12,$f4
    # Line 635
    madd.s	$f8,$f8,$f13,$f5
    # Line 636
    madd.s	$f8,$f8,$f14,$f6
    # Line 638
    mul.s	$f7,$f8,$f7
    # Line 639
    swc1	$f8,8($v1)
    # Line 640
    abs.s	$f4,$f7
    # Line 641
    c.ueq.s	$f4,$f7
    # Line 642
    abs.s	$f8,$f8
    # Line 643
    bc1f	.L0dacf4ac
    # Line 644
    c.ult.s	$f8,$f9
    # Line 645
    lui	$t0,0x8080
    # Line 646
    bc1t	.L0dacf4ac
    # Line 647
    ori	$t0,$t0,0xcc03
    # Line 649
    lui	$v0,0x1
    # Line 651
    sw	$t0,0($v0)
    # Line 652
    swc1	$f12,0($v0)
    # Line 653
    swc1	$f13,0($v0)
    # Line 654
    jr	$ra
    # Line 655
    swc1	$f14,0($v0)
.L0dacf4ac:
    # Line 657
    lw	$t9,32($v1)
    # Line 663
    lui	$t0,0x3f80
    # Line 664
    jr	$t9
    # Line 665
    mtc1	$t0,$f15
.end __glOdyim_Vertex3f_smallw

# Function: __glOdyim_Vertex3fv_smallw
# Declared: Line 672 (Source lines: 672-722)
# Address: 0x0dacf4c0 - 0x0dacf548 (Size: 136 bytes, Frame: 0)
.globl __glOdyim_Vertex3fv_smallw
.ent __glOdyim_Vertex3fv_smallw
__glOdyim_Vertex3fv_smallw:
    # Line 672
    lwc1	$f12,0($a0)
    # Line 673
    lwc1	$f13,4($a0)
    # Line 674
    lwc1	$f14,8($a0)
    # Line 675
    lw	$v0,4128($zero)
    # Line 676
    lw	$v1,4132($zero)
    # Line 677
    lwc1	$f4,48($v0)
    # Line 678
    lwc1	$f8,60($v0)
    # Line 679
    lwc1	$f5,52($v0)
    # Line 680
    lwc1	$f6,56($v0)
    # Line 681
    lwc1	$f9,0($v1)
    # Line 682
    lwc1	$f7,8($v1)
    # Line 691
    madd.s	$f8,$f8,$f12,$f4
    # Line 692
    madd.s	$f8,$f8,$f13,$f5
    # Line 693
    madd.s	$f8,$f8,$f14,$f6
    # Line 695
    mul.s	$f7,$f8,$f7
    # Line 696
    swc1	$f8,8($v1)
    # Line 697
    abs.s	$f4,$f7
    # Line 698
    c.ueq.s	$f4,$f7
    # Line 699
    abs.s	$f8,$f8
    # Line 700
    bc1f	.L0dacf538
    # Line 701
    c.ult.s	$f8,$f9
    # Line 702
    lui	$t0,0x8080
    # Line 703
    bc1t	.L0dacf538
    # Line 704
    ori	$t0,$t0,0xcc03
    # Line 706
    lui	$v0,0x1
    # Line 708
    sw	$t0,0($v0)
    # Line 709
    swc1	$f12,0($v0)
    # Line 710
    swc1	$f13,0($v0)
    # Line 711
    jr	$ra
    # Line 712
    swc1	$f14,0($v0)
.L0dacf538:
    # Line 714
    lw	$t9,32($v1)
    # Line 720
    lui	$t0,0x3f80
    # Line 721
    jr	$t9
    # Line 722
    mtc1	$t0,$f15
.end __glOdyim_Vertex3fv_smallw

# Function: __glOdyim_Vertex3i_smallw
# Declared: Line 729 (Source lines: 729-782)
# Address: 0x0dacf580 - 0x0dacf614 (Size: 148 bytes, Frame: 0)
.globl __glOdyim_Vertex3i_smallw
.ent __glOdyim_Vertex3i_smallw
__glOdyim_Vertex3i_smallw:
    # Line 729
    mtc1	$a0,$f8
    # Line 730
    mtc1	$a1,$f9
    # Line 731
    cvt.s.w	$f12,$f8
    # Line 732
    mtc1	$a2,$f8
    # Line 733
    cvt.s.w	$f13,$f9
    # Line 734
    cvt.s.w	$f14,$f8
    # Line 735
    lw	$v0,4128($zero)
    # Line 736
    lw	$v1,4132($zero)
    # Line 737
    lwc1	$f4,48($v0)
    # Line 738
    lwc1	$f8,60($v0)
    # Line 739
    lwc1	$f5,52($v0)
    # Line 740
    lwc1	$f6,56($v0)
    # Line 741
    lwc1	$f9,0($v1)
    # Line 742
    lwc1	$f7,8($v1)
    # Line 751
    madd.s	$f8,$f8,$f12,$f4
    # Line 752
    madd.s	$f8,$f8,$f13,$f5
    # Line 753
    madd.s	$f8,$f8,$f14,$f6
    # Line 755
    mul.s	$f7,$f8,$f7
    # Line 756
    swc1	$f8,8($v1)
    # Line 757
    abs.s	$f4,$f7
    # Line 758
    c.ueq.s	$f4,$f7
    # Line 759
    abs.s	$f8,$f8
    # Line 760
    bc1f	.L0dacf604
    # Line 761
    c.ult.s	$f8,$f9
    # Line 762
    lui	$t0,0x8080
    # Line 763
    bc1t	.L0dacf604
    # Line 764
    ori	$t0,$t0,0xcc02
    # Line 766
    lui	$v0,0x1
    # Line 768
    sw	$t0,0($v0)
    # Line 769
    sw	$a0,0($v0)
    # Line 770
    sw	$a1,0($v0)
    # Line 771
    jr	$ra
    # Line 772
    sw	$a2,0($v0)
.L0dacf604:
    # Line 774
    lw	$t9,32($v1)
    # Line 780
    lui	$t0,0x3f80
    # Line 781
    jr	$t9
    # Line 782
    mtc1	$t0,$f15
.end __glOdyim_Vertex3i_smallw

# Function: __glOdyim_Vertex3iv_smallw
# Declared: Line 789 (Source lines: 789-845)
# Address: 0x0dacf640 - 0x0dacf6e0 (Size: 160 bytes, Frame: 0)
.globl __glOdyim_Vertex3iv_smallw
.ent __glOdyim_Vertex3iv_smallw
__glOdyim_Vertex3iv_smallw:
    # Line 789
    lw	$a4,0($a0)
    # Line 790
    lw	$a5,4($a0)
    # Line 791
    lw	$a6,8($a0)
    # Line 792
    mtc1	$a4,$f8
    # Line 793
    mtc1	$a5,$f9
    # Line 794
    cvt.s.w	$f12,$f8
    # Line 795
    mtc1	$a6,$f8
    # Line 796
    cvt.s.w	$f13,$f9
    # Line 797
    cvt.s.w	$f14,$f8
    # Line 798
    lw	$v0,4128($zero)
    # Line 799
    lw	$v1,4132($zero)
    # Line 800
    lwc1	$f4,48($v0)
    # Line 801
    lwc1	$f8,60($v0)
    # Line 802
    lwc1	$f5,52($v0)
    # Line 803
    lwc1	$f6,56($v0)
    # Line 804
    lwc1	$f9,0($v1)
    # Line 805
    lwc1	$f7,8($v1)
    # Line 814
    madd.s	$f8,$f8,$f12,$f4
    # Line 815
    madd.s	$f8,$f8,$f13,$f5
    # Line 816
    madd.s	$f8,$f8,$f14,$f6
    # Line 818
    mul.s	$f7,$f8,$f7
    # Line 819
    swc1	$f8,8($v1)
    # Line 820
    abs.s	$f4,$f7
    # Line 821
    c.ueq.s	$f4,$f7
    # Line 822
    abs.s	$f8,$f8
    # Line 823
    bc1f	.L0dacf6d0
    # Line 824
    c.ult.s	$f8,$f9
    # Line 825
    lui	$t0,0x8080
    # Line 826
    bc1t	.L0dacf6d0
    # Line 827
    ori	$t0,$t0,0xcc02
    # Line 829
    lui	$v0,0x1
    # Line 831
    sw	$t0,0($v0)
    # Line 832
    sw	$a4,0($v0)
    # Line 833
    sw	$a5,0($v0)
    # Line 834
    jr	$ra
    # Line 835
    sw	$a6,0($v0)
.L0dacf6d0:
    # Line 837
    lw	$t9,32($v1)
    # Line 843
    lui	$t0,0x3f80
    # Line 844
    jr	$t9
    # Line 845
    mtc1	$t0,$f15
.end __glOdyim_Vertex3iv_smallw

# Function: __glOdyim_Vertex3s_smallw
# Declared: Line 852 (Source lines: 852-905)
# Address: 0x0dacf700 - 0x0dacf794 (Size: 148 bytes, Frame: 0)
.globl __glOdyim_Vertex3s_smallw
.ent __glOdyim_Vertex3s_smallw
__glOdyim_Vertex3s_smallw:
    # Line 852
    mtc1	$a0,$f8
    # Line 853
    mtc1	$a1,$f9
    # Line 854
    cvt.s.w	$f12,$f8
    # Line 855
    mtc1	$a2,$f8
    # Line 856
    cvt.s.w	$f13,$f9
    # Line 857
    cvt.s.w	$f14,$f8
    # Line 858
    lw	$v0,4128($zero)
    # Line 859
    lw	$v1,4132($zero)
    # Line 860
    lwc1	$f4,48($v0)
    # Line 861
    lwc1	$f8,60($v0)
    # Line 862
    lwc1	$f5,52($v0)
    # Line 863
    lwc1	$f6,56($v0)
    # Line 864
    lwc1	$f9,0($v1)
    # Line 865
    lwc1	$f7,8($v1)
    # Line 874
    madd.s	$f8,$f8,$f12,$f4
    # Line 875
    madd.s	$f8,$f8,$f13,$f5
    # Line 876
    madd.s	$f8,$f8,$f14,$f6
    # Line 878
    mul.s	$f7,$f8,$f7
    # Line 879
    swc1	$f8,8($v1)
    # Line 880
    abs.s	$f4,$f7
    # Line 881
    c.ueq.s	$f4,$f7
    # Line 882
    abs.s	$f8,$f8
    # Line 883
    bc1f	.L0dacf784
    # Line 884
    c.ult.s	$f8,$f9
    # Line 885
    lui	$t0,0x8080
    # Line 886
    bc1t	.L0dacf784
    # Line 887
    ori	$t0,$t0,0xcc02
    # Line 889
    lui	$v0,0x1
    # Line 891
    sw	$t0,0($v0)
    # Line 892
    sw	$a0,0($v0)
    # Line 893
    sw	$a1,0($v0)
    # Line 894
    jr	$ra
    # Line 895
    sw	$a2,0($v0)
.L0dacf784:
    # Line 897
    lw	$t9,32($v1)
    # Line 903
    lui	$t0,0x3f80
    # Line 904
    jr	$t9
    # Line 905
    mtc1	$t0,$f15
.end __glOdyim_Vertex3s_smallw

# Function: __glOdyim_Vertex3sv_smallw
# Declared: Line 912 (Source lines: 912-968)
# Address: 0x0dacf7c0 - 0x0dacf860 (Size: 160 bytes, Frame: 0)
.globl __glOdyim_Vertex3sv_smallw
.ent __glOdyim_Vertex3sv_smallw
__glOdyim_Vertex3sv_smallw:
    # Line 912
    lh	$a4,0($a0)
    # Line 913
    lh	$a5,2($a0)
    # Line 914
    lh	$a6,4($a0)
    # Line 915
    mtc1	$a4,$f8
    # Line 916
    mtc1	$a5,$f9
    # Line 917
    cvt.s.w	$f12,$f8
    # Line 918
    mtc1	$a6,$f8
    # Line 919
    cvt.s.w	$f13,$f9
    # Line 920
    cvt.s.w	$f14,$f8
    # Line 921
    lw	$v0,4128($zero)
    # Line 922
    lw	$v1,4132($zero)
    # Line 923
    lwc1	$f4,48($v0)
    # Line 924
    lwc1	$f8,60($v0)
    # Line 925
    lwc1	$f5,52($v0)
    # Line 926
    lwc1	$f6,56($v0)
    # Line 927
    lwc1	$f9,0($v1)
    # Line 928
    lwc1	$f7,8($v1)
    # Line 937
    madd.s	$f8,$f8,$f12,$f4
    # Line 938
    madd.s	$f8,$f8,$f13,$f5
    # Line 939
    madd.s	$f8,$f8,$f14,$f6
    # Line 941
    mul.s	$f7,$f8,$f7
    # Line 942
    swc1	$f8,8($v1)
    # Line 943
    abs.s	$f4,$f7
    # Line 944
    c.ueq.s	$f4,$f7
    # Line 945
    abs.s	$f8,$f8
    # Line 946
    bc1f	.L0dacf850
    # Line 947
    c.ult.s	$f8,$f9
    # Line 948
    lui	$t0,0x8080
    # Line 949
    bc1t	.L0dacf850
    # Line 950
    ori	$t0,$t0,0xcc02
    # Line 952
    lui	$v0,0x1
    # Line 954
    sw	$t0,0($v0)
    # Line 955
    sw	$a4,0($v0)
    # Line 956
    sw	$a5,0($v0)
    # Line 957
    jr	$ra
    # Line 958
    sw	$a6,0($v0)
.L0dacf850:
    # Line 960
    lw	$t9,32($v1)
    # Line 966
    lui	$t0,0x3f80
    # Line 967
    jr	$t9
    # Line 968
    mtc1	$t0,$f15
.end __glOdyim_Vertex3sv_smallw

# Function: __glOdyim_Vertex4d_smallw
# Declared: Line 975 (Source lines: 975-1031)
# Address: 0x0dacf880 - 0x0dacf910 (Size: 144 bytes, Frame: 0)
.globl __glOdyim_Vertex4d_smallw
.ent __glOdyim_Vertex4d_smallw
__glOdyim_Vertex4d_smallw:
    # Line 975
    cvt.s.d	$f12,$f12
    # Line 976
    cvt.s.d	$f13,$f13
    # Line 981
    cvt.s.d	$f14,$f14
    # Line 982
    cvt.s.d	$f15,$f15
    # Line 983
    lw	$v0,4128($zero)
    # Line 984
    lw	$v1,4132($zero)
    # Line 985
    lwc1	$f4,48($v0)
    # Line 986
    lwc1	$f7,60($v0)
    # Line 987
    lwc1	$f5,52($v0)
    # Line 988
    lwc1	$f6,56($v0)
    # Line 989
    lwc1	$f9,0($v1)
    # Line 990
    mul.s	$f8,$f12,$f4
    # Line 999
    madd.s	$f8,$f8,$f13,$f5
    # Line 1000
    madd.s	$f8,$f8,$f14,$f6
    # Line 1001
    madd.s	$f8,$f8,$f15,$f7
    # Line 1003
    lwc1	$f7,8($v1)
    # Line 1004
    mul.s	$f7,$f8,$f7
    # Line 1005
    swc1	$f8,8($v1)
    # Line 1006
    abs.s	$f4,$f7
    # Line 1007
    c.ueq.s	$f4,$f7
    # Line 1008
    abs.s	$f8,$f8
    # Line 1009
    bc1f	.L0dacf904
    # Line 1010
    c.ult.s	$f8,$f9
    # Line 1011
    lui	$t0,0x8080
    # Line 1012
    bc1t	.L0dacf904
    # Line 1013
    ori	$t0,$t0,0xd005
    # Line 1015
    lui	$v0,0x1
    # Line 1017
    sw	$t0,0($v0)
    # Line 1018
    swc1	$f12,0($v0)
    # Line 1019
    swc1	$f13,0($v0)
    # Line 1020
    swc1	$f14,0($v0)
    # Line 1021
    jr	$ra
    # Line 1022
    swc1	$f15,0($v0)
.L0dacf904:
    # Line 1024
    lw	$t9,32($v1)
    # Line 1030
    jr	$t9
    # Line 1031
    nop
.end __glOdyim_Vertex4d_smallw

# Function: __glOdyim_Vertex4dv_smallw
# Declared: Line 1038 (Source lines: 1038-1094)
# Address: 0x0dacf940 - 0x0dacf9e0 (Size: 160 bytes, Frame: 0)
.globl __glOdyim_Vertex4dv_smallw
.ent __glOdyim_Vertex4dv_smallw
__glOdyim_Vertex4dv_smallw:
    # Line 1038
    ldc1	$f12,0($a0)
    # Line 1039
    cvt.s.d	$f12,$f12
    # Line 1040
    ldc1	$f13,8($a0)
    # Line 1041
    cvt.s.d	$f13,$f13
    # Line 1042
    ldc1	$f14,16($a0)
    # Line 1043
    cvt.s.d	$f14,$f14
    # Line 1044
    ldc1	$f15,24($a0)
    # Line 1045
    cvt.s.d	$f15,$f15
    # Line 1046
    lw	$v0,4128($zero)
    # Line 1047
    lw	$v1,4132($zero)
    # Line 1048
    lwc1	$f4,48($v0)
    # Line 1049
    lwc1	$f7,60($v0)
    # Line 1050
    lwc1	$f5,52($v0)
    # Line 1051
    lwc1	$f6,56($v0)
    # Line 1052
    lwc1	$f9,0($v1)
    # Line 1053
    mul.s	$f8,$f12,$f4
    # Line 1062
    madd.s	$f8,$f8,$f13,$f5
    # Line 1063
    madd.s	$f8,$f8,$f14,$f6
    # Line 1064
    madd.s	$f8,$f8,$f15,$f7
    # Line 1066
    lwc1	$f7,8($v1)
    # Line 1067
    mul.s	$f7,$f8,$f7
    # Line 1068
    swc1	$f8,8($v1)
    # Line 1069
    abs.s	$f4,$f7
    # Line 1070
    c.ueq.s	$f4,$f7
    # Line 1071
    abs.s	$f8,$f8
    # Line 1072
    bc1f	.L0dacf9d4
    # Line 1073
    c.ult.s	$f8,$f9
    # Line 1074
    lui	$t0,0x8080
    # Line 1075
    bc1t	.L0dacf9d4
    # Line 1076
    ori	$t0,$t0,0xd005
    # Line 1078
    lui	$v0,0x1
    # Line 1080
    sw	$t0,0($v0)
    # Line 1081
    swc1	$f12,0($v0)
    # Line 1082
    swc1	$f13,0($v0)
    # Line 1083
    swc1	$f14,0($v0)
    # Line 1084
    jr	$ra
    # Line 1085
    swc1	$f15,0($v0)
.L0dacf9d4:
    # Line 1087
    lw	$t9,32($v1)
    # Line 1093
    jr	$t9
    # Line 1094
    nop
.end __glOdyim_Vertex4dv_smallw

# Function: __glOdyim_Vertex4f_smallw
# Declared: Line 1105 (Source lines: 1105-1153)
# Address: 0x0dacfa00 - 0x0dacfa80 (Size: 128 bytes, Frame: 0)
.globl __glOdyim_Vertex4f_smallw
.ent __glOdyim_Vertex4f_smallw
__glOdyim_Vertex4f_smallw:
    # Line 1105
    lw	$v0,4128($zero)
    # Line 1106
    lw	$v1,4132($zero)
    # Line 1107
    lwc1	$f4,48($v0)
    # Line 1108
    lwc1	$f7,60($v0)
    # Line 1109
    lwc1	$f5,52($v0)
    # Line 1110
    lwc1	$f6,56($v0)
    # Line 1111
    lwc1	$f9,0($v1)
    # Line 1112
    mul.s	$f8,$f12,$f4
    # Line 1121
    madd.s	$f8,$f8,$f13,$f5
    # Line 1122
    madd.s	$f8,$f8,$f14,$f6
    # Line 1123
    madd.s	$f8,$f8,$f15,$f7
    # Line 1125
    lwc1	$f7,8($v1)
    # Line 1126
    mul.s	$f7,$f8,$f7
    # Line 1127
    swc1	$f8,8($v1)
    # Line 1128
    abs.s	$f4,$f7
    # Line 1129
    c.ueq.s	$f4,$f7
    # Line 1130
    abs.s	$f8,$f8
    # Line 1131
    bc1f	.L0dacfa74
    # Line 1132
    c.ult.s	$f8,$f9
    # Line 1133
    lui	$t0,0x8080
    # Line 1134
    bc1t	.L0dacfa74
    # Line 1135
    ori	$t0,$t0,0xd005
    # Line 1137
    lui	$v0,0x1
    # Line 1139
    sw	$t0,0($v0)
    # Line 1140
    swc1	$f12,0($v0)
    # Line 1141
    swc1	$f13,0($v0)
    # Line 1142
    swc1	$f14,0($v0)
    # Line 1143
    jr	$ra
    # Line 1144
    swc1	$f15,0($v0)
.L0dacfa74:
    # Line 1146
    lw	$t9,32($v1)
    # Line 1152
    jr	$t9
    # Line 1153
    nop
.end __glOdyim_Vertex4f_smallw

# Function: __glOdyim_Vertex4fv_smallw
# Declared: Line 1160 (Source lines: 1160-1212)
# Address: 0x0dacfa80 - 0x0dacfb10 (Size: 144 bytes, Frame: 0)
.globl __glOdyim_Vertex4fv_smallw
.ent __glOdyim_Vertex4fv_smallw
__glOdyim_Vertex4fv_smallw:
    # Line 1160
    lwc1	$f12,0($a0)
    # Line 1161
    lwc1	$f13,4($a0)
    # Line 1162
    lwc1	$f14,8($a0)
    # Line 1163
    lwc1	$f15,12($a0)
    # Line 1164
    lw	$v0,4128($zero)
    # Line 1165
    lw	$v1,4132($zero)
    # Line 1166
    lwc1	$f4,48($v0)
    # Line 1167
    lwc1	$f7,60($v0)
    # Line 1168
    lwc1	$f5,52($v0)
    # Line 1169
    lwc1	$f6,56($v0)
    # Line 1170
    lwc1	$f9,0($v1)
    # Line 1171
    mul.s	$f8,$f12,$f4
    # Line 1180
    madd.s	$f8,$f8,$f13,$f5
    # Line 1181
    madd.s	$f8,$f8,$f14,$f6
    # Line 1182
    madd.s	$f8,$f8,$f15,$f7
    # Line 1184
    lwc1	$f7,8($v1)
    # Line 1185
    mul.s	$f7,$f8,$f7
    # Line 1186
    swc1	$f8,8($v1)
    # Line 1187
    abs.s	$f4,$f7
    # Line 1188
    c.ueq.s	$f4,$f7
    # Line 1189
    abs.s	$f8,$f8
    # Line 1190
    bc1f	.L0dacfb04
    # Line 1191
    c.ult.s	$f8,$f9
    # Line 1192
    lui	$t0,0x8080
    # Line 1193
    bc1t	.L0dacfb04
    # Line 1194
    ori	$t0,$t0,0xd005
    # Line 1196
    lui	$v0,0x1
    # Line 1198
    sw	$t0,0($v0)
    # Line 1199
    swc1	$f12,0($v0)
    # Line 1200
    swc1	$f13,0($v0)
    # Line 1201
    swc1	$f14,0($v0)
    # Line 1202
    jr	$ra
    # Line 1203
    swc1	$f15,0($v0)
.L0dacfb04:
    # Line 1205
    lw	$t9,32($v1)
    # Line 1211
    jr	$t9
    # Line 1212
    nop
.end __glOdyim_Vertex4fv_smallw

# Function: __glOdyim_Vertex4i_smallw
# Declared: Line 1219 (Source lines: 1219-1275)
# Address: 0x0dacfb40 - 0x0dacfbe0 (Size: 160 bytes, Frame: 0)
.globl __glOdyim_Vertex4i_smallw
.ent __glOdyim_Vertex4i_smallw
__glOdyim_Vertex4i_smallw:
    # Line 1219
    mtc1	$a0,$f8
    # Line 1220
    mtc1	$a1,$f9
    # Line 1221
    cvt.s.w	$f12,$f8
    # Line 1222
    cvt.s.w	$f13,$f9
    # Line 1223
    mtc1	$a2,$f8
    # Line 1224
    mtc1	$a3,$f9
    # Line 1225
    cvt.s.w	$f14,$f8
    # Line 1226
    cvt.s.w	$f15,$f9
    # Line 1227
    lw	$v0,4128($zero)
    # Line 1228
    lw	$v1,4132($zero)
    # Line 1229
    lwc1	$f4,48($v0)
    # Line 1230
    lwc1	$f7,60($v0)
    # Line 1231
    lwc1	$f5,52($v0)
    # Line 1232
    lwc1	$f6,56($v0)
    # Line 1233
    lwc1	$f9,0($v1)
    # Line 1234
    mul.s	$f8,$f12,$f4
    # Line 1243
    madd.s	$f8,$f8,$f13,$f5
    # Line 1244
    madd.s	$f8,$f8,$f14,$f6
    # Line 1245
    madd.s	$f8,$f8,$f15,$f7
    # Line 1247
    lwc1	$f7,8($v1)
    # Line 1248
    mul.s	$f7,$f8,$f7
    # Line 1249
    swc1	$f8,8($v1)
    # Line 1250
    abs.s	$f4,$f7
    # Line 1251
    c.ueq.s	$f4,$f7
    # Line 1252
    abs.s	$f8,$f8
    # Line 1253
    bc1f	.L0dacfbd4
    # Line 1254
    c.ult.s	$f8,$f9
    # Line 1255
    lui	$t0,0x8080
    # Line 1256
    bc1t	.L0dacfbd4
    # Line 1257
    ori	$t0,$t0,0xd004
    # Line 1259
    lui	$v0,0x1
    # Line 1261
    sw	$t0,0($v0)
    # Line 1262
    sw	$a0,0($v0)
    # Line 1263
    sw	$a1,0($v0)
    # Line 1264
    sw	$a2,0($v0)
    # Line 1265
    jr	$ra
    # Line 1266
    sw	$a3,0($v0)
.L0dacfbd4:
    # Line 1268
    lw	$t9,32($v1)
    # Line 1274
    jr	$t9
    # Line 1275
    nop
.end __glOdyim_Vertex4i_smallw

# Function: __glOdyim_Vertex4iv_smallw
# Declared: Line 1282 (Source lines: 1282-1342)
# Address: 0x0dacfc00 - 0x0dacfcb0 (Size: 176 bytes, Frame: 0)
.globl __glOdyim_Vertex4iv_smallw
.ent __glOdyim_Vertex4iv_smallw
__glOdyim_Vertex4iv_smallw:
    # Line 1282
    lw	$a4,0($a0)
    # Line 1283
    lw	$a5,4($a0)
    # Line 1284
    lw	$a6,8($a0)
    # Line 1285
    lw	$a7,12($a0)
    # Line 1286
    mtc1	$a4,$f8
    # Line 1287
    mtc1	$a5,$f9
    # Line 1288
    cvt.s.w	$f12,$f8
    # Line 1289
    cvt.s.w	$f13,$f9
    # Line 1290
    mtc1	$a6,$f8
    # Line 1291
    mtc1	$a7,$f9
    # Line 1292
    cvt.s.w	$f14,$f8
    # Line 1293
    cvt.s.w	$f15,$f9
    # Line 1294
    lw	$v0,4128($zero)
    # Line 1295
    lw	$v1,4132($zero)
    # Line 1296
    lwc1	$f4,48($v0)
    # Line 1297
    lwc1	$f7,60($v0)
    # Line 1298
    lwc1	$f5,52($v0)
    # Line 1299
    lwc1	$f6,56($v0)
    # Line 1300
    lwc1	$f9,0($v1)
    # Line 1301
    mul.s	$f8,$f12,$f4
    # Line 1310
    madd.s	$f8,$f8,$f13,$f5
    # Line 1311
    madd.s	$f8,$f8,$f14,$f6
    # Line 1312
    madd.s	$f8,$f8,$f15,$f7
    # Line 1314
    lwc1	$f7,8($v1)
    # Line 1315
    mul.s	$f7,$f8,$f7
    # Line 1316
    swc1	$f8,8($v1)
    # Line 1317
    abs.s	$f4,$f7
    # Line 1318
    c.ueq.s	$f4,$f7
    # Line 1319
    abs.s	$f8,$f8
    # Line 1320
    bc1f	.L0dacfca4
    # Line 1321
    c.ult.s	$f8,$f9
    # Line 1322
    lui	$t0,0x8080
    # Line 1323
    bc1t	.L0dacfca4
    # Line 1324
    ori	$t0,$t0,0xd004
    # Line 1326
    lui	$v0,0x1
    # Line 1328
    sw	$t0,0($v0)
    # Line 1329
    sw	$a4,0($v0)
    # Line 1330
    sw	$a5,0($v0)
    # Line 1331
    sw	$a6,0($v0)
    # Line 1332
    jr	$ra
    # Line 1333
    sw	$a7,0($v0)
.L0dacfca4:
    # Line 1335
    lw	$t9,32($v1)
    # Line 1341
    jr	$t9
    # Line 1342
    nop
.end __glOdyim_Vertex4iv_smallw

# Function: __glOdyim_Vertex4s_smallw
# Declared: Line 1349 (Source lines: 1349-1405)
# Address: 0x0dacfcc0 - 0x0dacfd60 (Size: 160 bytes, Frame: 0)
.globl __glOdyim_Vertex4s_smallw
.ent __glOdyim_Vertex4s_smallw
__glOdyim_Vertex4s_smallw:
    # Line 1349
    mtc1	$a0,$f8
    # Line 1350
    mtc1	$a1,$f9
    # Line 1351
    cvt.s.w	$f12,$f8
    # Line 1352
    cvt.s.w	$f13,$f9
    # Line 1353
    mtc1	$a2,$f8
    # Line 1354
    mtc1	$a3,$f9
    # Line 1355
    cvt.s.w	$f14,$f8
    # Line 1356
    cvt.s.w	$f15,$f9
    # Line 1357
    lw	$v0,4128($zero)
    # Line 1358
    lw	$v1,4132($zero)
    # Line 1359
    lwc1	$f4,48($v0)
    # Line 1360
    lwc1	$f7,60($v0)
    # Line 1361
    lwc1	$f5,52($v0)
    # Line 1362
    lwc1	$f6,56($v0)
    # Line 1363
    lwc1	$f9,0($v1)
    # Line 1364
    mul.s	$f8,$f12,$f4
    # Line 1373
    madd.s	$f8,$f8,$f13,$f5
    # Line 1374
    madd.s	$f8,$f8,$f14,$f6
    # Line 1375
    madd.s	$f8,$f8,$f15,$f7
    # Line 1377
    lwc1	$f7,8($v1)
    # Line 1378
    mul.s	$f7,$f8,$f7
    # Line 1379
    swc1	$f8,8($v1)
    # Line 1380
    abs.s	$f4,$f7
    # Line 1381
    c.ueq.s	$f4,$f7
    # Line 1382
    abs.s	$f8,$f8
    # Line 1383
    bc1f	.L0dacfd54
    # Line 1384
    c.ult.s	$f8,$f9
    # Line 1385
    lui	$t0,0x8080
    # Line 1386
    bc1t	.L0dacfd54
    # Line 1387
    ori	$t0,$t0,0xd004
    # Line 1389
    lui	$v0,0x1
    # Line 1391
    sw	$t0,0($v0)
    # Line 1392
    sw	$a0,0($v0)
    # Line 1393
    sw	$a1,0($v0)
    # Line 1394
    sw	$a2,0($v0)
    # Line 1395
    jr	$ra
    # Line 1396
    sw	$a3,0($v0)
.L0dacfd54:
    # Line 1398
    lw	$t9,32($v1)
    # Line 1404
    jr	$t9
    # Line 1405
    nop
.end __glOdyim_Vertex4s_smallw

# Function: __glOdyim_Vertex4sv_smallw
# Declared: Line 1412 (Source lines: 1412-1472)
# Address: 0x0dacfd80 - 0x0dacfe30 (Size: 176 bytes, Frame: 0)
.globl __glOdyim_Vertex4sv_smallw
.ent __glOdyim_Vertex4sv_smallw
__glOdyim_Vertex4sv_smallw:
    # Line 1412
    lh	$a4,0($a0)
    # Line 1413
    lh	$a5,2($a0)
    # Line 1414
    lh	$a6,4($a0)
    # Line 1415
    lh	$a7,6($a0)
    # Line 1416
    mtc1	$a4,$f8
    # Line 1417
    mtc1	$a5,$f9
    # Line 1418
    cvt.s.w	$f12,$f8
    # Line 1419
    cvt.s.w	$f13,$f9
    # Line 1420
    mtc1	$a6,$f8
    # Line 1421
    mtc1	$a7,$f9
    # Line 1422
    cvt.s.w	$f14,$f8
    # Line 1423
    cvt.s.w	$f15,$f9
    # Line 1424
    lw	$v0,4128($zero)
    # Line 1425
    lw	$v1,4132($zero)
    # Line 1426
    lwc1	$f4,48($v0)
    # Line 1427
    lwc1	$f7,60($v0)
    # Line 1428
    lwc1	$f5,52($v0)
    # Line 1429
    lwc1	$f6,56($v0)
    # Line 1430
    lwc1	$f9,0($v1)
    # Line 1431
    mul.s	$f8,$f12,$f4
    # Line 1440
    madd.s	$f8,$f8,$f13,$f5
    # Line 1441
    madd.s	$f8,$f8,$f14,$f6
    # Line 1442
    madd.s	$f8,$f8,$f15,$f7
    # Line 1444
    lwc1	$f7,8($v1)
    # Line 1445
    mul.s	$f7,$f8,$f7
    # Line 1446
    swc1	$f8,8($v1)
    # Line 1447
    abs.s	$f4,$f7
    # Line 1448
    c.ueq.s	$f4,$f7
    # Line 1449
    abs.s	$f8,$f8
    # Line 1450
    bc1f	.L0dacfe24
    # Line 1451
    c.ult.s	$f8,$f9
    # Line 1452
    lui	$t0,0x8080
    # Line 1453
    bc1t	.L0dacfe24
    # Line 1454
    ori	$t0,$t0,0xd004
    # Line 1456
    lui	$v0,0x1
    # Line 1458
    sw	$t0,0($v0)
    # Line 1459
    sw	$a4,0($v0)
    # Line 1460
    sw	$a5,0($v0)
    # Line 1461
    sw	$a6,0($v0)
    # Line 1462
    jr	$ra
    # Line 1463
    sw	$a7,0($v0)
.L0dacfe24:
    # Line 1465
    lw	$t9,32($v1)
    # Line 1471
    jr	$t9
    # Line 1472
    nop
.end __glOdyim_Vertex4sv_smallw

