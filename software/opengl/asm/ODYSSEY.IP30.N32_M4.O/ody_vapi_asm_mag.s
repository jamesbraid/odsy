# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_vapi_asm_mag.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 24

.text

# Function: __glOdyim_Vertex2d_mag
# Declared: Line 67 (Source lines: 67-141)
# Address: 0x0dacfe40 - 0x0dacfef8 (Size: 184 bytes, Frame: 0)
.globl __glOdyim_Vertex2d_mag
.ent __glOdyim_Vertex2d_mag
__glOdyim_Vertex2d_mag:
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
    lwc1	$f9,4($v1)
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
    mul.s	$f8,$f8,$f9
    # Line 88
    abs.s	$f4,$f7
    # Line 89
    abs.s	$f8,$f8
    # Line 90
    c.ueq.s	$f4,$f7
    # Line 91
    lwc1	$f4,0($v0)
    # Line 92
    bc1f	.L0dacfee4
    # Line 93
    lwc1	$f9,12($v0)
    # Line 94
    lwc1	$f5,4($v0)
    # Line 101
    madd.s	$f9,$f9,$f12,$f4
    # Line 102
    madd.s	$f9,$f9,$f13,$f5
    # Line 104
    abs.s	$f9,$f9
    # Line 105
    c.ult.s	$f8,$f9
    # Line 106
    lwc1	$f4,16($v0)
    # Line 107
    bc1t	.L0dacfee4
    # Line 108
    lwc1	$f9,28($v0)
    # Line 109
    lwc1	$f5,20($v0)
    # Line 116
    madd.s	$f9,$f9,$f12,$f4
    # Line 117
    madd.s	$f9,$f9,$f13,$f5
    # Line 119
    abs.s	$f9,$f9
    # Line 120
    c.ult.s	$f8,$f9
    # Line 121
    lui	$t0,0x8080
    # Line 122
    bc1t	.L0dacfee4
    # Line 123
    ori	$t0,$t0,0xc801
    # Line 125
    lui	$v0,0x1
    # Line 127
    sw	$t0,0($v0)
    # Line 128
    swc1	$f12,0($v0)
    # Line 129
    jr	$ra
    # Line 130
    swc1	$f13,0($v0)
.L0dacfee4:
    # Line 132
    lw	$t9,32($v1)
    # Line 138
    mtc1	$zero,$f14
    # Line 139
    lui	$t0,0x3f80
    # Line 140
    jr	$t9
    # Line 141
    mtc1	$t0,$f15
.end __glOdyim_Vertex2d_mag

# Function: __glOdyim_Vertex2dv_mag
# Declared: Line 148 (Source lines: 148-224)
# Address: 0x0dacff00 - 0x0dacffc0 (Size: 192 bytes, Frame: 0)
.globl __glOdyim_Vertex2dv_mag
.ent __glOdyim_Vertex2dv_mag
__glOdyim_Vertex2dv_mag:
    # Line 148
    ldc1	$f12,0($a0)
    # Line 149
    cvt.s.d	$f12,$f12
    # Line 150
    ldc1	$f13,8($a0)
    # Line 151
    cvt.s.d	$f13,$f13
    # Line 152
    lw	$v0,4128($zero)
    # Line 153
    lw	$v1,4132($zero)
    # Line 154
    lwc1	$f4,48($v0)
    # Line 155
    lwc1	$f8,60($v0)
    # Line 156
    lwc1	$f5,52($v0)
    # Line 157
    lwc1	$f9,4($v1)
    # Line 158
    lwc1	$f7,8($v1)
    # Line 165
    madd.s	$f8,$f8,$f12,$f4
    # Line 166
    madd.s	$f8,$f8,$f13,$f5
    # Line 168
    mul.s	$f7,$f8,$f7
    # Line 169
    swc1	$f8,8($v1)
    # Line 170
    mul.s	$f8,$f8,$f9
    # Line 171
    abs.s	$f4,$f7
    # Line 172
    abs.s	$f8,$f8
    # Line 173
    c.ueq.s	$f4,$f7
    # Line 174
    lwc1	$f4,0($v0)
    # Line 175
    bc1f	.L0dacffac
    # Line 176
    lwc1	$f9,12($v0)
    # Line 177
    lwc1	$f5,4($v0)
    # Line 184
    madd.s	$f9,$f9,$f12,$f4
    # Line 185
    madd.s	$f9,$f9,$f13,$f5
    # Line 187
    abs.s	$f9,$f9
    # Line 188
    c.ult.s	$f8,$f9
    # Line 189
    lwc1	$f4,16($v0)
    # Line 190
    bc1t	.L0dacffac
    # Line 191
    lwc1	$f9,28($v0)
    # Line 192
    lwc1	$f5,20($v0)
    # Line 199
    madd.s	$f9,$f9,$f12,$f4
    # Line 200
    madd.s	$f9,$f9,$f13,$f5
    # Line 202
    abs.s	$f9,$f9
    # Line 203
    c.ult.s	$f8,$f9
    # Line 204
    lui	$t0,0x8080
    # Line 205
    bc1t	.L0dacffac
    # Line 206
    ori	$t0,$t0,0xc801
    # Line 208
    lui	$v0,0x1
    # Line 210
    sw	$t0,0($v0)
    # Line 211
    swc1	$f12,0($v0)
    # Line 212
    jr	$ra
    # Line 213
    swc1	$f13,0($v0)
.L0dacffac:
    # Line 215
    lw	$t9,32($v1)
    # Line 221
    mtc1	$zero,$f14
    # Line 222
    lui	$t0,0x3f80
    # Line 223
    jr	$t9
    # Line 224
    mtc1	$t0,$f15
.end __glOdyim_Vertex2dv_mag

# Function: __glOdyim_Vertex2f_mag
# Declared: Line 231 (Source lines: 231-303)
# Address: 0x0dacffc0 - 0x0dad0070 (Size: 176 bytes, Frame: 0)
.globl __glOdyim_Vertex2f_mag
.ent __glOdyim_Vertex2f_mag
__glOdyim_Vertex2f_mag:
    # Line 231
    lw	$v0,4128($zero)
    # Line 232
    lw	$v1,4132($zero)
    # Line 233
    lwc1	$f4,48($v0)
    # Line 234
    lwc1	$f8,60($v0)
    # Line 235
    lwc1	$f5,52($v0)
    # Line 236
    lwc1	$f9,4($v1)
    # Line 237
    lwc1	$f7,8($v1)
    # Line 244
    madd.s	$f8,$f8,$f12,$f4
    # Line 245
    madd.s	$f8,$f8,$f13,$f5
    # Line 247
    mul.s	$f7,$f8,$f7
    # Line 248
    swc1	$f8,8($v1)
    # Line 249
    mul.s	$f8,$f8,$f9
    # Line 250
    abs.s	$f4,$f7
    # Line 251
    abs.s	$f8,$f8
    # Line 252
    c.ueq.s	$f4,$f7
    # Line 253
    lwc1	$f4,0($v0)
    # Line 254
    bc1f	.L0dad005c
    # Line 255
    lwc1	$f9,12($v0)
    # Line 256
    lwc1	$f5,4($v0)
    # Line 263
    madd.s	$f9,$f9,$f12,$f4
    # Line 264
    madd.s	$f9,$f9,$f13,$f5
    # Line 266
    abs.s	$f9,$f9
    # Line 267
    c.ult.s	$f8,$f9
    # Line 268
    lwc1	$f4,16($v0)
    # Line 269
    bc1t	.L0dad005c
    # Line 270
    lwc1	$f9,28($v0)
    # Line 271
    lwc1	$f5,20($v0)
    # Line 278
    madd.s	$f9,$f9,$f12,$f4
    # Line 279
    madd.s	$f9,$f9,$f13,$f5
    # Line 281
    abs.s	$f9,$f9
    # Line 282
    c.ult.s	$f8,$f9
    # Line 283
    lui	$t0,0x8080
    # Line 284
    bc1t	.L0dad005c
    # Line 285
    ori	$t0,$t0,0xc801
    # Line 287
    lui	$v0,0x1
    # Line 289
    sw	$t0,0($v0)
    # Line 290
    swc1	$f12,0($v0)
    # Line 291
    jr	$ra
    # Line 292
    swc1	$f13,0($v0)
.L0dad005c:
    # Line 294
    lw	$t9,32($v1)
    # Line 300
    mtc1	$zero,$f14
    # Line 301
    lui	$t0,0x3f80
    # Line 302
    jr	$t9
    # Line 303
    mtc1	$t0,$f15
.end __glOdyim_Vertex2f_mag

# Function: __glOdyim_Vertex2fv_mag
# Declared: Line 310 (Source lines: 310-384)
# Address: 0x0dad0080 - 0x0dad0138 (Size: 184 bytes, Frame: 0)
.globl __glOdyim_Vertex2fv_mag
.ent __glOdyim_Vertex2fv_mag
__glOdyim_Vertex2fv_mag:
    # Line 310
    lwc1	$f12,0($a0)
    # Line 311
    lwc1	$f13,4($a0)
    # Line 312
    lw	$v0,4128($zero)
    # Line 313
    lw	$v1,4132($zero)
    # Line 314
    lwc1	$f4,48($v0)
    # Line 315
    lwc1	$f8,60($v0)
    # Line 316
    lwc1	$f5,52($v0)
    # Line 317
    lwc1	$f9,4($v1)
    # Line 318
    lwc1	$f7,8($v1)
    # Line 325
    madd.s	$f8,$f8,$f12,$f4
    # Line 326
    madd.s	$f8,$f8,$f13,$f5
    # Line 328
    mul.s	$f7,$f8,$f7
    # Line 329
    swc1	$f8,8($v1)
    # Line 330
    mul.s	$f8,$f8,$f9
    # Line 331
    abs.s	$f4,$f7
    # Line 332
    abs.s	$f8,$f8
    # Line 333
    c.ueq.s	$f4,$f7
    # Line 334
    lwc1	$f4,0($v0)
    # Line 335
    bc1f	.L0dad0124
    # Line 336
    lwc1	$f9,12($v0)
    # Line 337
    lwc1	$f5,4($v0)
    # Line 344
    madd.s	$f9,$f9,$f12,$f4
    # Line 345
    madd.s	$f9,$f9,$f13,$f5
    # Line 347
    abs.s	$f9,$f9
    # Line 348
    c.ult.s	$f8,$f9
    # Line 349
    lwc1	$f4,16($v0)
    # Line 350
    bc1t	.L0dad0124
    # Line 351
    lwc1	$f9,28($v0)
    # Line 352
    lwc1	$f5,20($v0)
    # Line 359
    madd.s	$f9,$f9,$f12,$f4
    # Line 360
    madd.s	$f9,$f9,$f13,$f5
    # Line 362
    abs.s	$f9,$f9
    # Line 363
    c.ult.s	$f8,$f9
    # Line 364
    lui	$t0,0x8080
    # Line 365
    bc1t	.L0dad0124
    # Line 366
    ori	$t0,$t0,0xc801
    # Line 368
    lui	$v0,0x1
    # Line 370
    sw	$t0,0($v0)
    # Line 371
    swc1	$f12,0($v0)
    # Line 372
    jr	$ra
    # Line 373
    swc1	$f13,0($v0)
.L0dad0124:
    # Line 375
    lw	$t9,32($v1)
    # Line 381
    mtc1	$zero,$f14
    # Line 382
    lui	$t0,0x3f80
    # Line 383
    jr	$t9
    # Line 384
    mtc1	$t0,$f15
.end __glOdyim_Vertex2fv_mag

# Function: __glOdyim_Vertex2i_mag
# Declared: Line 391 (Source lines: 391-467)
# Address: 0x0dad0140 - 0x0dad0200 (Size: 192 bytes, Frame: 0)
.globl __glOdyim_Vertex2i_mag
.ent __glOdyim_Vertex2i_mag
__glOdyim_Vertex2i_mag:
    # Line 391
    mtc1	$a0,$f8
    # Line 392
    mtc1	$a1,$f9
    # Line 393
    cvt.s.w	$f12,$f8
    # Line 394
    cvt.s.w	$f13,$f9
    # Line 395
    lw	$v0,4128($zero)
    # Line 396
    lw	$v1,4132($zero)
    # Line 397
    lwc1	$f4,48($v0)
    # Line 398
    lwc1	$f8,60($v0)
    # Line 399
    lwc1	$f5,52($v0)
    # Line 400
    lwc1	$f9,4($v1)
    # Line 401
    lwc1	$f7,8($v1)
    # Line 408
    madd.s	$f8,$f8,$f12,$f4
    # Line 409
    madd.s	$f8,$f8,$f13,$f5
    # Line 411
    mul.s	$f7,$f8,$f7
    # Line 412
    swc1	$f8,8($v1)
    # Line 413
    mul.s	$f8,$f8,$f9
    # Line 414
    abs.s	$f4,$f7
    # Line 415
    abs.s	$f8,$f8
    # Line 416
    c.ueq.s	$f4,$f7
    # Line 417
    lwc1	$f4,0($v0)
    # Line 418
    bc1f	.L0dad01ec
    # Line 419
    lwc1	$f9,12($v0)
    # Line 420
    lwc1	$f5,4($v0)
    # Line 427
    madd.s	$f9,$f9,$f12,$f4
    # Line 428
    madd.s	$f9,$f9,$f13,$f5
    # Line 430
    abs.s	$f9,$f9
    # Line 431
    c.ult.s	$f8,$f9
    # Line 432
    lwc1	$f4,16($v0)
    # Line 433
    bc1t	.L0dad01ec
    # Line 434
    lwc1	$f9,28($v0)
    # Line 435
    lwc1	$f5,20($v0)
    # Line 442
    madd.s	$f9,$f9,$f12,$f4
    # Line 443
    madd.s	$f9,$f9,$f13,$f5
    # Line 445
    abs.s	$f9,$f9
    # Line 446
    c.ult.s	$f8,$f9
    # Line 447
    lui	$t0,0x8080
    # Line 448
    bc1t	.L0dad01ec
    # Line 449
    ori	$t0,$t0,0xc800
    # Line 451
    lui	$v0,0x1
    # Line 453
    sw	$t0,0($v0)
    # Line 454
    sw	$a0,0($v0)
    # Line 455
    jr	$ra
    # Line 456
    sw	$a1,0($v0)
.L0dad01ec:
    # Line 458
    lw	$t9,32($v1)
    # Line 464
    mtc1	$zero,$f14
    # Line 465
    lui	$t0,0x3f80
    # Line 466
    jr	$t9
    # Line 467
    mtc1	$t0,$f15
.end __glOdyim_Vertex2i_mag

# Function: __glOdyim_Vertex2iv_mag
# Declared: Line 474 (Source lines: 474-552)
# Address: 0x0dad0200 - 0x0dad02c8 (Size: 200 bytes, Frame: 0)
.globl __glOdyim_Vertex2iv_mag
.ent __glOdyim_Vertex2iv_mag
__glOdyim_Vertex2iv_mag:
    # Line 474
    lw	$a4,0($a0)
    # Line 475
    lw	$a5,4($a0)
    # Line 476
    mtc1	$a4,$f8
    # Line 477
    mtc1	$a5,$f9
    # Line 478
    cvt.s.w	$f12,$f8
    # Line 479
    cvt.s.w	$f13,$f9
    # Line 480
    lw	$v0,4128($zero)
    # Line 481
    lw	$v1,4132($zero)
    # Line 482
    lwc1	$f4,48($v0)
    # Line 483
    lwc1	$f8,60($v0)
    # Line 484
    lwc1	$f5,52($v0)
    # Line 485
    lwc1	$f9,4($v1)
    # Line 486
    lwc1	$f7,8($v1)
    # Line 493
    madd.s	$f8,$f8,$f12,$f4
    # Line 494
    madd.s	$f8,$f8,$f13,$f5
    # Line 496
    mul.s	$f7,$f8,$f7
    # Line 497
    swc1	$f8,8($v1)
    # Line 498
    mul.s	$f8,$f8,$f9
    # Line 499
    abs.s	$f4,$f7
    # Line 500
    abs.s	$f8,$f8
    # Line 501
    c.ueq.s	$f4,$f7
    # Line 502
    lwc1	$f4,0($v0)
    # Line 503
    bc1f	.L0dad02b4
    # Line 504
    lwc1	$f9,12($v0)
    # Line 505
    lwc1	$f5,4($v0)
    # Line 512
    madd.s	$f9,$f9,$f12,$f4
    # Line 513
    madd.s	$f9,$f9,$f13,$f5
    # Line 515
    abs.s	$f9,$f9
    # Line 516
    c.ult.s	$f8,$f9
    # Line 517
    lwc1	$f4,16($v0)
    # Line 518
    bc1t	.L0dad02b4
    # Line 519
    lwc1	$f9,28($v0)
    # Line 520
    lwc1	$f5,20($v0)
    # Line 527
    madd.s	$f9,$f9,$f12,$f4
    # Line 528
    madd.s	$f9,$f9,$f13,$f5
    # Line 530
    abs.s	$f9,$f9
    # Line 531
    c.ult.s	$f8,$f9
    # Line 532
    lui	$t0,0x8080
    # Line 533
    bc1t	.L0dad02b4
    # Line 534
    ori	$t0,$t0,0xc800
    # Line 536
    lui	$v0,0x1
    # Line 538
    sw	$t0,0($v0)
    # Line 539
    sw	$a4,0($v0)
    # Line 540
    jr	$ra
    # Line 541
    sw	$a5,0($v0)
.L0dad02b4:
    # Line 543
    lw	$t9,32($v1)
    # Line 549
    mtc1	$zero,$f14
    # Line 550
    lui	$t0,0x3f80
    # Line 551
    jr	$t9
    # Line 552
    mtc1	$t0,$f15
.end __glOdyim_Vertex2iv_mag

# Function: __glOdyim_Vertex2s_mag
# Declared: Line 559 (Source lines: 559-635)
# Address: 0x0dad0300 - 0x0dad03c0 (Size: 192 bytes, Frame: 0)
.globl __glOdyim_Vertex2s_mag
.ent __glOdyim_Vertex2s_mag
__glOdyim_Vertex2s_mag:
    # Line 559
    mtc1	$a0,$f8
    # Line 560
    mtc1	$a1,$f9
    # Line 561
    cvt.s.w	$f12,$f8
    # Line 562
    cvt.s.w	$f13,$f9
    # Line 563
    lw	$v0,4128($zero)
    # Line 564
    lw	$v1,4132($zero)
    # Line 565
    lwc1	$f4,48($v0)
    # Line 566
    lwc1	$f8,60($v0)
    # Line 567
    lwc1	$f5,52($v0)
    # Line 568
    lwc1	$f9,4($v1)
    # Line 569
    lwc1	$f7,8($v1)
    # Line 576
    madd.s	$f8,$f8,$f12,$f4
    # Line 577
    madd.s	$f8,$f8,$f13,$f5
    # Line 579
    mul.s	$f7,$f8,$f7
    # Line 580
    swc1	$f8,8($v1)
    # Line 581
    mul.s	$f8,$f8,$f9
    # Line 582
    abs.s	$f4,$f7
    # Line 583
    abs.s	$f8,$f8
    # Line 584
    c.ueq.s	$f4,$f7
    # Line 585
    lwc1	$f4,0($v0)
    # Line 586
    bc1f	.L0dad03ac
    # Line 587
    lwc1	$f9,12($v0)
    # Line 588
    lwc1	$f5,4($v0)
    # Line 595
    madd.s	$f9,$f9,$f12,$f4
    # Line 596
    madd.s	$f9,$f9,$f13,$f5
    # Line 598
    abs.s	$f9,$f9
    # Line 599
    c.ult.s	$f8,$f9
    # Line 600
    lwc1	$f4,16($v0)
    # Line 601
    bc1t	.L0dad03ac
    # Line 602
    lwc1	$f9,28($v0)
    # Line 603
    lwc1	$f5,20($v0)
    # Line 610
    madd.s	$f9,$f9,$f12,$f4
    # Line 611
    madd.s	$f9,$f9,$f13,$f5
    # Line 613
    abs.s	$f9,$f9
    # Line 614
    c.ult.s	$f8,$f9
    # Line 615
    lui	$t0,0x8080
    # Line 616
    bc1t	.L0dad03ac
    # Line 617
    ori	$t0,$t0,0xc800
    # Line 619
    lui	$v0,0x1
    # Line 621
    sw	$t0,0($v0)
    # Line 622
    sw	$a0,0($v0)
    # Line 623
    jr	$ra
    # Line 624
    sw	$a1,0($v0)
.L0dad03ac:
    # Line 626
    lw	$t9,32($v1)
    # Line 632
    mtc1	$zero,$f14
    # Line 633
    lui	$t0,0x3f80
    # Line 634
    jr	$t9
    # Line 635
    mtc1	$t0,$f15
.end __glOdyim_Vertex2s_mag

# Function: __glOdyim_Vertex2sv_mag
# Declared: Line 642 (Source lines: 642-720)
# Address: 0x0dad03c0 - 0x0dad0488 (Size: 200 bytes, Frame: 0)
.globl __glOdyim_Vertex2sv_mag
.ent __glOdyim_Vertex2sv_mag
__glOdyim_Vertex2sv_mag:
    # Line 642
    lh	$a4,0($a0)
    # Line 643
    lh	$a5,2($a0)
    # Line 644
    mtc1	$a4,$f8
    # Line 645
    mtc1	$a5,$f9
    # Line 646
    cvt.s.w	$f12,$f8
    # Line 647
    cvt.s.w	$f13,$f9
    # Line 648
    lw	$v0,4128($zero)
    # Line 649
    lw	$v1,4132($zero)
    # Line 650
    lwc1	$f4,48($v0)
    # Line 651
    lwc1	$f8,60($v0)
    # Line 652
    lwc1	$f5,52($v0)
    # Line 653
    lwc1	$f9,4($v1)
    # Line 654
    lwc1	$f7,8($v1)
    # Line 661
    madd.s	$f8,$f8,$f12,$f4
    # Line 662
    madd.s	$f8,$f8,$f13,$f5
    # Line 664
    mul.s	$f7,$f8,$f7
    # Line 665
    swc1	$f8,8($v1)
    # Line 666
    mul.s	$f8,$f8,$f9
    # Line 667
    abs.s	$f4,$f7
    # Line 668
    abs.s	$f8,$f8
    # Line 669
    c.ueq.s	$f4,$f7
    # Line 670
    lwc1	$f4,0($v0)
    # Line 671
    bc1f	.L0dad0474
    # Line 672
    lwc1	$f9,12($v0)
    # Line 673
    lwc1	$f5,4($v0)
    # Line 680
    madd.s	$f9,$f9,$f12,$f4
    # Line 681
    madd.s	$f9,$f9,$f13,$f5
    # Line 683
    abs.s	$f9,$f9
    # Line 684
    c.ult.s	$f8,$f9
    # Line 685
    lwc1	$f4,16($v0)
    # Line 686
    bc1t	.L0dad0474
    # Line 687
    lwc1	$f9,28($v0)
    # Line 688
    lwc1	$f5,20($v0)
    # Line 695
    madd.s	$f9,$f9,$f12,$f4
    # Line 696
    madd.s	$f9,$f9,$f13,$f5
    # Line 698
    abs.s	$f9,$f9
    # Line 699
    c.ult.s	$f8,$f9
    # Line 700
    lui	$t0,0x8080
    # Line 701
    bc1t	.L0dad0474
    # Line 702
    ori	$t0,$t0,0xc800
    # Line 704
    lui	$v0,0x1
    # Line 706
    sw	$t0,0($v0)
    # Line 707
    sw	$a4,0($v0)
    # Line 708
    jr	$ra
    # Line 709
    sw	$a5,0($v0)
.L0dad0474:
    # Line 711
    lw	$t9,32($v1)
    # Line 717
    mtc1	$zero,$f14
    # Line 718
    lui	$t0,0x3f80
    # Line 719
    jr	$t9
    # Line 720
    mtc1	$t0,$f15
.end __glOdyim_Vertex2sv_mag

# Function: __glOdyim_Vertex3d_mag
# Declared: Line 727 (Source lines: 727-817)
# Address: 0x0dad04c0 - 0x0dad0594 (Size: 212 bytes, Frame: 0)
.globl __glOdyim_Vertex3d_mag
.ent __glOdyim_Vertex3d_mag
__glOdyim_Vertex3d_mag:
    # Line 727
    cvt.s.d	$f12,$f12
    # Line 728
    cvt.s.d	$f13,$f13
    # Line 732
    cvt.s.d	$f14,$f14
    # Line 733
    lw	$v0,4128($zero)
    # Line 734
    lw	$v1,4132($zero)
    # Line 735
    lwc1	$f4,48($v0)
    # Line 736
    lwc1	$f8,60($v0)
    # Line 737
    lwc1	$f5,52($v0)
    # Line 738
    lwc1	$f6,56($v0)
    # Line 739
    lwc1	$f9,4($v1)
    # Line 740
    lwc1	$f7,8($v1)
    # Line 749
    madd.s	$f8,$f8,$f12,$f4
    # Line 750
    madd.s	$f8,$f8,$f13,$f5
    # Line 751
    madd.s	$f8,$f8,$f14,$f6
    # Line 753
    mul.s	$f7,$f8,$f7
    # Line 754
    swc1	$f8,8($v1)
    # Line 755
    mul.s	$f8,$f8,$f9
    # Line 756
    abs.s	$f4,$f7
    # Line 757
    abs.s	$f8,$f8
    # Line 758
    c.ueq.s	$f4,$f7
    # Line 759
    lwc1	$f4,0($v0)
    # Line 760
    bc1f	.L0dad0584
    # Line 761
    lwc1	$f9,12($v0)
    # Line 762
    lwc1	$f5,4($v0)
    # Line 763
    lwc1	$f6,8($v0)
    # Line 772
    madd.s	$f9,$f9,$f12,$f4
    # Line 773
    madd.s	$f9,$f9,$f13,$f5
    # Line 774
    madd.s	$f9,$f9,$f14,$f6
    # Line 776
    abs.s	$f9,$f9
    # Line 777
    c.ult.s	$f8,$f9
    # Line 778
    lwc1	$f4,16($v0)
    # Line 779
    bc1t	.L0dad0584
    # Line 780
    lwc1	$f9,28($v0)
    # Line 781
    lwc1	$f5,20($v0)
    # Line 782
    lwc1	$f6,24($v0)
    # Line 791
    madd.s	$f9,$f9,$f12,$f4
    # Line 792
    madd.s	$f9,$f9,$f13,$f5
    # Line 793
    madd.s	$f9,$f9,$f14,$f6
    # Line 795
    abs.s	$f9,$f9
    # Line 796
    c.ult.s	$f8,$f9
    # Line 797
    lui	$t0,0x8080
    # Line 798
    bc1t	.L0dad0584
    # Line 799
    ori	$t0,$t0,0xcc03
    # Line 801
    lui	$v0,0x1
    # Line 803
    sw	$t0,0($v0)
    # Line 804
    swc1	$f12,0($v0)
    # Line 805
    swc1	$f13,0($v0)
    # Line 806
    jr	$ra
    # Line 807
    swc1	$f14,0($v0)
.L0dad0584:
    # Line 809
    lw	$t9,32($v1)
    # Line 815
    lui	$t0,0x3f80
    # Line 816
    jr	$t9
    # Line 817
    mtc1	$t0,$f15
.end __glOdyim_Vertex3d_mag

# Function: __glOdyim_Vertex3dv_mag
# Declared: Line 824 (Source lines: 824-914)
# Address: 0x0dad05c0 - 0x0dad06a0 (Size: 224 bytes, Frame: 0)
.globl __glOdyim_Vertex3dv_mag
.ent __glOdyim_Vertex3dv_mag
__glOdyim_Vertex3dv_mag:
    # Line 824
    ldc1	$f12,0($a0)
    # Line 825
    cvt.s.d	$f12,$f12
    # Line 826
    ldc1	$f13,8($a0)
    # Line 827
    cvt.s.d	$f13,$f13
    # Line 828
    ldc1	$f14,16($a0)
    # Line 829
    cvt.s.d	$f14,$f14
    # Line 830
    lw	$v0,4128($zero)
    # Line 831
    lw	$v1,4132($zero)
    # Line 832
    lwc1	$f4,48($v0)
    # Line 833
    lwc1	$f8,60($v0)
    # Line 834
    lwc1	$f5,52($v0)
    # Line 835
    lwc1	$f6,56($v0)
    # Line 836
    lwc1	$f9,4($v1)
    # Line 837
    lwc1	$f7,8($v1)
    # Line 846
    madd.s	$f8,$f8,$f12,$f4
    # Line 847
    madd.s	$f8,$f8,$f13,$f5
    # Line 848
    madd.s	$f8,$f8,$f14,$f6
    # Line 850
    mul.s	$f7,$f8,$f7
    # Line 851
    swc1	$f8,8($v1)
    # Line 852
    mul.s	$f8,$f8,$f9
    # Line 853
    abs.s	$f4,$f7
    # Line 854
    abs.s	$f8,$f8
    # Line 855
    c.ueq.s	$f4,$f7
    # Line 856
    lwc1	$f4,0($v0)
    # Line 857
    bc1f	.L0dad0690
    # Line 858
    lwc1	$f9,12($v0)
    # Line 859
    lwc1	$f5,4($v0)
    # Line 860
    lwc1	$f6,8($v0)
    # Line 869
    madd.s	$f9,$f9,$f12,$f4
    # Line 870
    madd.s	$f9,$f9,$f13,$f5
    # Line 871
    madd.s	$f9,$f9,$f14,$f6
    # Line 873
    abs.s	$f9,$f9
    # Line 874
    c.ult.s	$f8,$f9
    # Line 875
    lwc1	$f4,16($v0)
    # Line 876
    bc1t	.L0dad0690
    # Line 877
    lwc1	$f9,28($v0)
    # Line 878
    lwc1	$f5,20($v0)
    # Line 879
    lwc1	$f6,24($v0)
    # Line 888
    madd.s	$f9,$f9,$f12,$f4
    # Line 889
    madd.s	$f9,$f9,$f13,$f5
    # Line 890
    madd.s	$f9,$f9,$f14,$f6
    # Line 892
    abs.s	$f9,$f9
    # Line 893
    c.ult.s	$f8,$f9
    # Line 894
    lui	$t0,0x8080
    # Line 895
    bc1t	.L0dad0690
    # Line 896
    ori	$t0,$t0,0xcc03
    # Line 898
    lui	$v0,0x1
    # Line 900
    sw	$t0,0($v0)
    # Line 901
    swc1	$f12,0($v0)
    # Line 902
    swc1	$f13,0($v0)
    # Line 903
    jr	$ra
    # Line 904
    swc1	$f14,0($v0)
.L0dad0690:
    # Line 906
    lw	$t9,32($v1)
    # Line 912
    lui	$t0,0x3f80
    # Line 913
    jr	$t9
    # Line 914
    mtc1	$t0,$f15
.end __glOdyim_Vertex3dv_mag

# Function: __glOdyim_Vertex3f_mag
# Declared: Line 924 (Source lines: 924-1008)
# Address: 0x0dad06c0 - 0x0dad0788 (Size: 200 bytes, Frame: 0)
.globl __glOdyim_Vertex3f_mag
.ent __glOdyim_Vertex3f_mag
__glOdyim_Vertex3f_mag:
    # Line 924
    lw	$v0,4128($zero)
    # Line 925
    lw	$v1,4132($zero)
    # Line 926
    lwc1	$f4,48($v0)
    # Line 927
    lwc1	$f8,60($v0)
    # Line 928
    lwc1	$f5,52($v0)
    # Line 929
    lwc1	$f6,56($v0)
    # Line 930
    lwc1	$f9,4($v1)
    # Line 931
    lwc1	$f7,8($v1)
    # Line 940
    madd.s	$f8,$f8,$f12,$f4
    # Line 941
    madd.s	$f8,$f8,$f13,$f5
    # Line 942
    madd.s	$f8,$f8,$f14,$f6
    # Line 944
    mul.s	$f7,$f8,$f7
    # Line 945
    swc1	$f8,8($v1)
    # Line 946
    mul.s	$f8,$f8,$f9
    # Line 947
    abs.s	$f4,$f7
    # Line 948
    abs.s	$f8,$f8
    # Line 949
    c.ueq.s	$f4,$f7
    # Line 950
    lwc1	$f4,0($v0)
    # Line 951
    bc1f	.L0dad0778
    # Line 952
    lwc1	$f9,12($v0)
    # Line 953
    lwc1	$f5,4($v0)
    # Line 954
    lwc1	$f6,8($v0)
    # Line 963
    madd.s	$f9,$f9,$f12,$f4
    # Line 964
    madd.s	$f9,$f9,$f13,$f5
    # Line 965
    madd.s	$f9,$f9,$f14,$f6
    # Line 967
    abs.s	$f9,$f9
    # Line 968
    c.ult.s	$f8,$f9
    # Line 969
    lwc1	$f4,16($v0)
    # Line 970
    bc1t	.L0dad0778
    # Line 971
    lwc1	$f9,28($v0)
    # Line 972
    lwc1	$f5,20($v0)
    # Line 973
    lwc1	$f6,24($v0)
    # Line 982
    madd.s	$f9,$f9,$f12,$f4
    # Line 983
    madd.s	$f9,$f9,$f13,$f5
    # Line 984
    madd.s	$f9,$f9,$f14,$f6
    # Line 986
    abs.s	$f9,$f9
    # Line 987
    c.ult.s	$f8,$f9
    # Line 988
    lui	$t0,0x8080
    # Line 989
    bc1t	.L0dad0778
    # Line 990
    ori	$t0,$t0,0xcc03
    # Line 992
    lui	$v0,0x1
    # Line 994
    sw	$t0,0($v0)
    # Line 995
    swc1	$f12,0($v0)
    # Line 996
    swc1	$f13,0($v0)
    # Line 997
    jr	$ra
    # Line 998
    swc1	$f14,0($v0)
.L0dad0778:
    # Line 1000
    lw	$t9,32($v1)
    # Line 1006
    lui	$t0,0x3f80
    # Line 1007
    jr	$t9
    # Line 1008
    mtc1	$t0,$f15
.end __glOdyim_Vertex3f_mag

# Function: __glOdyim_Vertex3fv_mag
# Declared: Line 1015 (Source lines: 1015-1102)
# Address: 0x0dad07c0 - 0x0dad0894 (Size: 212 bytes, Frame: 0)
.globl __glOdyim_Vertex3fv_mag
.ent __glOdyim_Vertex3fv_mag
__glOdyim_Vertex3fv_mag:
    # Line 1015
    lwc1	$f12,0($a0)
    # Line 1016
    lwc1	$f13,4($a0)
    # Line 1017
    lwc1	$f14,8($a0)
    # Line 1018
    lw	$v0,4128($zero)
    # Line 1019
    lw	$v1,4132($zero)
    # Line 1020
    lwc1	$f4,48($v0)
    # Line 1021
    lwc1	$f8,60($v0)
    # Line 1022
    lwc1	$f5,52($v0)
    # Line 1023
    lwc1	$f6,56($v0)
    # Line 1024
    lwc1	$f9,4($v1)
    # Line 1025
    lwc1	$f7,8($v1)
    # Line 1034
    madd.s	$f8,$f8,$f12,$f4
    # Line 1035
    madd.s	$f8,$f8,$f13,$f5
    # Line 1036
    madd.s	$f8,$f8,$f14,$f6
    # Line 1038
    mul.s	$f7,$f8,$f7
    # Line 1039
    swc1	$f8,8($v1)
    # Line 1040
    mul.s	$f8,$f8,$f9
    # Line 1041
    abs.s	$f4,$f7
    # Line 1042
    abs.s	$f8,$f8
    # Line 1043
    c.ueq.s	$f4,$f7
    # Line 1044
    lwc1	$f4,0($v0)
    # Line 1045
    bc1f	.L0dad0884
    # Line 1046
    lwc1	$f9,12($v0)
    # Line 1047
    lwc1	$f5,4($v0)
    # Line 1048
    lwc1	$f6,8($v0)
    # Line 1057
    madd.s	$f9,$f9,$f12,$f4
    # Line 1058
    madd.s	$f9,$f9,$f13,$f5
    # Line 1059
    madd.s	$f9,$f9,$f14,$f6
    # Line 1061
    abs.s	$f9,$f9
    # Line 1062
    c.ult.s	$f8,$f9
    # Line 1063
    lwc1	$f4,16($v0)
    # Line 1064
    bc1t	.L0dad0884
    # Line 1065
    lwc1	$f9,28($v0)
    # Line 1066
    lwc1	$f5,20($v0)
    # Line 1067
    lwc1	$f6,24($v0)
    # Line 1076
    madd.s	$f9,$f9,$f12,$f4
    # Line 1077
    madd.s	$f9,$f9,$f13,$f5
    # Line 1078
    madd.s	$f9,$f9,$f14,$f6
    # Line 1080
    abs.s	$f9,$f9
    # Line 1081
    c.ult.s	$f8,$f9
    # Line 1082
    lui	$t0,0x8080
    # Line 1083
    bc1t	.L0dad0884
    # Line 1084
    ori	$t0,$t0,0xcc03
    # Line 1086
    lui	$v0,0x1
    # Line 1088
    sw	$t0,0($v0)
    # Line 1089
    swc1	$f12,0($v0)
    # Line 1090
    swc1	$f13,0($v0)
    # Line 1091
    jr	$ra
    # Line 1092
    swc1	$f14,0($v0)
.L0dad0884:
    # Line 1094
    lw	$t9,32($v1)
    # Line 1100
    lui	$t0,0x3f80
    # Line 1101
    jr	$t9
    # Line 1102
    mtc1	$t0,$f15
.end __glOdyim_Vertex3fv_mag

# Function: __glOdyim_Vertex3i_mag
# Declared: Line 1109 (Source lines: 1109-1199)
# Address: 0x0dad08c0 - 0x0dad09a0 (Size: 224 bytes, Frame: 0)
.globl __glOdyim_Vertex3i_mag
.ent __glOdyim_Vertex3i_mag
__glOdyim_Vertex3i_mag:
    # Line 1109
    mtc1	$a0,$f8
    # Line 1110
    mtc1	$a1,$f9
    # Line 1111
    cvt.s.w	$f12,$f8
    # Line 1112
    mtc1	$a2,$f8
    # Line 1113
    cvt.s.w	$f13,$f9
    # Line 1114
    cvt.s.w	$f14,$f8
    # Line 1115
    lw	$v0,4128($zero)
    # Line 1116
    lw	$v1,4132($zero)
    # Line 1117
    lwc1	$f4,48($v0)
    # Line 1118
    lwc1	$f8,60($v0)
    # Line 1119
    lwc1	$f5,52($v0)
    # Line 1120
    lwc1	$f6,56($v0)
    # Line 1121
    lwc1	$f9,4($v1)
    # Line 1122
    lwc1	$f7,8($v1)
    # Line 1131
    madd.s	$f8,$f8,$f12,$f4
    # Line 1132
    madd.s	$f8,$f8,$f13,$f5
    # Line 1133
    madd.s	$f8,$f8,$f14,$f6
    # Line 1135
    mul.s	$f7,$f8,$f7
    # Line 1136
    swc1	$f8,8($v1)
    # Line 1137
    mul.s	$f8,$f8,$f9
    # Line 1138
    abs.s	$f4,$f7
    # Line 1139
    abs.s	$f8,$f8
    # Line 1140
    c.ueq.s	$f4,$f7
    # Line 1141
    lwc1	$f4,0($v0)
    # Line 1142
    bc1f	.L0dad0990
    # Line 1143
    lwc1	$f9,12($v0)
    # Line 1144
    lwc1	$f5,4($v0)
    # Line 1145
    lwc1	$f6,8($v0)
    # Line 1154
    madd.s	$f9,$f9,$f12,$f4
    # Line 1155
    madd.s	$f9,$f9,$f13,$f5
    # Line 1156
    madd.s	$f9,$f9,$f14,$f6
    # Line 1158
    abs.s	$f9,$f9
    # Line 1159
    c.ult.s	$f8,$f9
    # Line 1160
    lwc1	$f4,16($v0)
    # Line 1161
    bc1t	.L0dad0990
    # Line 1162
    lwc1	$f9,28($v0)
    # Line 1163
    lwc1	$f5,20($v0)
    # Line 1164
    lwc1	$f6,24($v0)
    # Line 1173
    madd.s	$f9,$f9,$f12,$f4
    # Line 1174
    madd.s	$f9,$f9,$f13,$f5
    # Line 1175
    madd.s	$f9,$f9,$f14,$f6
    # Line 1177
    abs.s	$f9,$f9
    # Line 1178
    c.ult.s	$f8,$f9
    # Line 1179
    lui	$t0,0x8080
    # Line 1180
    bc1t	.L0dad0990
    # Line 1181
    ori	$t0,$t0,0xcc02
    # Line 1183
    lui	$v0,0x1
    # Line 1185
    sw	$t0,0($v0)
    # Line 1186
    sw	$a0,0($v0)
    # Line 1187
    sw	$a1,0($v0)
    # Line 1188
    jr	$ra
    # Line 1189
    sw	$a2,0($v0)
.L0dad0990:
    # Line 1191
    lw	$t9,32($v1)
    # Line 1197
    lui	$t0,0x3f80
    # Line 1198
    jr	$t9
    # Line 1199
    mtc1	$t0,$f15
.end __glOdyim_Vertex3i_mag

# Function: __glOdyim_Vertex3iv_mag
# Declared: Line 1206 (Source lines: 1206-1299)
# Address: 0x0dad09c0 - 0x0dad0aac (Size: 236 bytes, Frame: 0)
.globl __glOdyim_Vertex3iv_mag
.ent __glOdyim_Vertex3iv_mag
__glOdyim_Vertex3iv_mag:
    # Line 1206
    lw	$a4,0($a0)
    # Line 1207
    lw	$a5,4($a0)
    # Line 1208
    lw	$a6,8($a0)
    # Line 1209
    mtc1	$a4,$f8
    # Line 1210
    mtc1	$a5,$f9
    # Line 1211
    cvt.s.w	$f12,$f8
    # Line 1212
    mtc1	$a6,$f8
    # Line 1213
    cvt.s.w	$f13,$f9
    # Line 1214
    cvt.s.w	$f14,$f8
    # Line 1215
    lw	$v0,4128($zero)
    # Line 1216
    lw	$v1,4132($zero)
    # Line 1217
    lwc1	$f4,48($v0)
    # Line 1218
    lwc1	$f8,60($v0)
    # Line 1219
    lwc1	$f5,52($v0)
    # Line 1220
    lwc1	$f6,56($v0)
    # Line 1221
    lwc1	$f9,4($v1)
    # Line 1222
    lwc1	$f7,8($v1)
    # Line 1231
    madd.s	$f8,$f8,$f12,$f4
    # Line 1232
    madd.s	$f8,$f8,$f13,$f5
    # Line 1233
    madd.s	$f8,$f8,$f14,$f6
    # Line 1235
    mul.s	$f7,$f8,$f7
    # Line 1236
    swc1	$f8,8($v1)
    # Line 1237
    mul.s	$f8,$f8,$f9
    # Line 1238
    abs.s	$f4,$f7
    # Line 1239
    abs.s	$f8,$f8
    # Line 1240
    c.ueq.s	$f4,$f7
    # Line 1241
    lwc1	$f4,0($v0)
    # Line 1242
    bc1f	.L0dad0a9c
    # Line 1243
    lwc1	$f9,12($v0)
    # Line 1244
    lwc1	$f5,4($v0)
    # Line 1245
    lwc1	$f6,8($v0)
    # Line 1254
    madd.s	$f9,$f9,$f12,$f4
    # Line 1255
    madd.s	$f9,$f9,$f13,$f5
    # Line 1256
    madd.s	$f9,$f9,$f14,$f6
    # Line 1258
    abs.s	$f9,$f9
    # Line 1259
    c.ult.s	$f8,$f9
    # Line 1260
    lwc1	$f4,16($v0)
    # Line 1261
    bc1t	.L0dad0a9c
    # Line 1262
    lwc1	$f9,28($v0)
    # Line 1263
    lwc1	$f5,20($v0)
    # Line 1264
    lwc1	$f6,24($v0)
    # Line 1273
    madd.s	$f9,$f9,$f12,$f4
    # Line 1274
    madd.s	$f9,$f9,$f13,$f5
    # Line 1275
    madd.s	$f9,$f9,$f14,$f6
    # Line 1277
    abs.s	$f9,$f9
    # Line 1278
    c.ult.s	$f8,$f9
    # Line 1279
    lui	$t0,0x8080
    # Line 1280
    bc1t	.L0dad0a9c
    # Line 1281
    ori	$t0,$t0,0xcc02
    # Line 1283
    lui	$v0,0x1
    # Line 1285
    sw	$t0,0($v0)
    # Line 1286
    sw	$a4,0($v0)
    # Line 1287
    sw	$a5,0($v0)
    # Line 1288
    jr	$ra
    # Line 1289
    sw	$a6,0($v0)
.L0dad0a9c:
    # Line 1291
    lw	$t9,32($v1)
    # Line 1297
    lui	$t0,0x3f80
    # Line 1298
    jr	$t9
    # Line 1299
    mtc1	$t0,$f15
.end __glOdyim_Vertex3iv_mag

# Function: __glOdyim_Vertex3s_mag
# Declared: Line 1306 (Source lines: 1306-1396)
# Address: 0x0dad0ac0 - 0x0dad0ba0 (Size: 224 bytes, Frame: 0)
.globl __glOdyim_Vertex3s_mag
.ent __glOdyim_Vertex3s_mag
__glOdyim_Vertex3s_mag:
    # Line 1306
    mtc1	$a0,$f8
    # Line 1307
    mtc1	$a1,$f9
    # Line 1308
    cvt.s.w	$f12,$f8
    # Line 1309
    mtc1	$a2,$f8
    # Line 1310
    cvt.s.w	$f13,$f9
    # Line 1311
    cvt.s.w	$f14,$f8
    # Line 1312
    lw	$v0,4128($zero)
    # Line 1313
    lw	$v1,4132($zero)
    # Line 1314
    lwc1	$f4,48($v0)
    # Line 1315
    lwc1	$f8,60($v0)
    # Line 1316
    lwc1	$f5,52($v0)
    # Line 1317
    lwc1	$f6,56($v0)
    # Line 1318
    lwc1	$f9,4($v1)
    # Line 1319
    lwc1	$f7,8($v1)
    # Line 1328
    madd.s	$f8,$f8,$f12,$f4
    # Line 1329
    madd.s	$f8,$f8,$f13,$f5
    # Line 1330
    madd.s	$f8,$f8,$f14,$f6
    # Line 1332
    mul.s	$f7,$f8,$f7
    # Line 1333
    swc1	$f8,8($v1)
    # Line 1334
    mul.s	$f8,$f8,$f9
    # Line 1335
    abs.s	$f4,$f7
    # Line 1336
    abs.s	$f8,$f8
    # Line 1337
    c.ueq.s	$f4,$f7
    # Line 1338
    lwc1	$f4,0($v0)
    # Line 1339
    bc1f	.L0dad0b90
    # Line 1340
    lwc1	$f9,12($v0)
    # Line 1341
    lwc1	$f5,4($v0)
    # Line 1342
    lwc1	$f6,8($v0)
    # Line 1351
    madd.s	$f9,$f9,$f12,$f4
    # Line 1352
    madd.s	$f9,$f9,$f13,$f5
    # Line 1353
    madd.s	$f9,$f9,$f14,$f6
    # Line 1355
    abs.s	$f9,$f9
    # Line 1356
    c.ult.s	$f8,$f9
    # Line 1357
    lwc1	$f4,16($v0)
    # Line 1358
    bc1t	.L0dad0b90
    # Line 1359
    lwc1	$f9,28($v0)
    # Line 1360
    lwc1	$f5,20($v0)
    # Line 1361
    lwc1	$f6,24($v0)
    # Line 1370
    madd.s	$f9,$f9,$f12,$f4
    # Line 1371
    madd.s	$f9,$f9,$f13,$f5
    # Line 1372
    madd.s	$f9,$f9,$f14,$f6
    # Line 1374
    abs.s	$f9,$f9
    # Line 1375
    c.ult.s	$f8,$f9
    # Line 1376
    lui	$t0,0x8080
    # Line 1377
    bc1t	.L0dad0b90
    # Line 1378
    ori	$t0,$t0,0xcc02
    # Line 1380
    lui	$v0,0x1
    # Line 1382
    sw	$t0,0($v0)
    # Line 1383
    sw	$a0,0($v0)
    # Line 1384
    sw	$a1,0($v0)
    # Line 1385
    jr	$ra
    # Line 1386
    sw	$a2,0($v0)
.L0dad0b90:
    # Line 1388
    lw	$t9,32($v1)
    # Line 1394
    lui	$t0,0x3f80
    # Line 1395
    jr	$t9
    # Line 1396
    mtc1	$t0,$f15
.end __glOdyim_Vertex3s_mag

# Function: __glOdyim_Vertex3sv_mag
# Declared: Line 1403 (Source lines: 1403-1496)
# Address: 0x0dad0bc0 - 0x0dad0cac (Size: 236 bytes, Frame: 0)
.globl __glOdyim_Vertex3sv_mag
.ent __glOdyim_Vertex3sv_mag
__glOdyim_Vertex3sv_mag:
    # Line 1403
    lh	$a4,0($a0)
    # Line 1404
    lh	$a5,2($a0)
    # Line 1405
    lh	$a6,4($a0)
    # Line 1406
    mtc1	$a4,$f8
    # Line 1407
    mtc1	$a5,$f9
    # Line 1408
    cvt.s.w	$f12,$f8
    # Line 1409
    mtc1	$a6,$f8
    # Line 1410
    cvt.s.w	$f13,$f9
    # Line 1411
    cvt.s.w	$f14,$f8
    # Line 1412
    lw	$v0,4128($zero)
    # Line 1413
    lw	$v1,4132($zero)
    # Line 1414
    lwc1	$f4,48($v0)
    # Line 1415
    lwc1	$f8,60($v0)
    # Line 1416
    lwc1	$f5,52($v0)
    # Line 1417
    lwc1	$f6,56($v0)
    # Line 1418
    lwc1	$f9,4($v1)
    # Line 1419
    lwc1	$f7,8($v1)
    # Line 1428
    madd.s	$f8,$f8,$f12,$f4
    # Line 1429
    madd.s	$f8,$f8,$f13,$f5
    # Line 1430
    madd.s	$f8,$f8,$f14,$f6
    # Line 1432
    mul.s	$f7,$f8,$f7
    # Line 1433
    swc1	$f8,8($v1)
    # Line 1434
    mul.s	$f8,$f8,$f9
    # Line 1435
    abs.s	$f4,$f7
    # Line 1436
    abs.s	$f8,$f8
    # Line 1437
    c.ueq.s	$f4,$f7
    # Line 1438
    lwc1	$f4,0($v0)
    # Line 1439
    bc1f	.L0dad0c9c
    # Line 1440
    lwc1	$f9,12($v0)
    # Line 1441
    lwc1	$f5,4($v0)
    # Line 1442
    lwc1	$f6,8($v0)
    # Line 1451
    madd.s	$f9,$f9,$f12,$f4
    # Line 1452
    madd.s	$f9,$f9,$f13,$f5
    # Line 1453
    madd.s	$f9,$f9,$f14,$f6
    # Line 1455
    abs.s	$f9,$f9
    # Line 1456
    c.ult.s	$f8,$f9
    # Line 1457
    lwc1	$f4,16($v0)
    # Line 1458
    bc1t	.L0dad0c9c
    # Line 1459
    lwc1	$f9,28($v0)
    # Line 1460
    lwc1	$f5,20($v0)
    # Line 1461
    lwc1	$f6,24($v0)
    # Line 1470
    madd.s	$f9,$f9,$f12,$f4
    # Line 1471
    madd.s	$f9,$f9,$f13,$f5
    # Line 1472
    madd.s	$f9,$f9,$f14,$f6
    # Line 1474
    abs.s	$f9,$f9
    # Line 1475
    c.ult.s	$f8,$f9
    # Line 1476
    lui	$t0,0x8080
    # Line 1477
    bc1t	.L0dad0c9c
    # Line 1478
    ori	$t0,$t0,0xcc02
    # Line 1480
    lui	$v0,0x1
    # Line 1482
    sw	$t0,0($v0)
    # Line 1483
    sw	$a4,0($v0)
    # Line 1484
    sw	$a5,0($v0)
    # Line 1485
    jr	$ra
    # Line 1486
    sw	$a6,0($v0)
.L0dad0c9c:
    # Line 1488
    lw	$t9,32($v1)
    # Line 1494
    lui	$t0,0x3f80
    # Line 1495
    jr	$t9
    # Line 1496
    mtc1	$t0,$f15
.end __glOdyim_Vertex3sv_mag

# Function: __glOdyim_Vertex4d_mag
# Declared: Line 1503 (Source lines: 1503-1598)
# Address: 0x0dad0cc0 - 0x0dad0da4 (Size: 228 bytes, Frame: 0)
.globl __glOdyim_Vertex4d_mag
.ent __glOdyim_Vertex4d_mag
__glOdyim_Vertex4d_mag:
    # Line 1503
    cvt.s.d	$f12,$f12
    # Line 1504
    cvt.s.d	$f13,$f13
    # Line 1509
    cvt.s.d	$f14,$f14
    # Line 1510
    cvt.s.d	$f15,$f15
    # Line 1511
    lw	$v0,4128($zero)
    # Line 1512
    lw	$v1,4132($zero)
    # Line 1513
    lwc1	$f4,48($v0)
    # Line 1514
    lwc1	$f7,60($v0)
    # Line 1515
    lwc1	$f5,52($v0)
    # Line 1516
    lwc1	$f6,56($v0)
    # Line 1517
    lwc1	$f9,4($v1)
    # Line 1518
    mul.s	$f8,$f12,$f4
    # Line 1527
    madd.s	$f8,$f8,$f13,$f5
    # Line 1528
    madd.s	$f8,$f8,$f14,$f6
    # Line 1529
    madd.s	$f8,$f8,$f15,$f7
    # Line 1531
    lwc1	$f7,8($v1)
    # Line 1532
    mul.s	$f7,$f8,$f7
    # Line 1533
    swc1	$f8,8($v1)
    # Line 1534
    mul.s	$f8,$f9,$f8
    # Line 1535
    abs.s	$f4,$f7
    # Line 1536
    abs.s	$f8,$f8
    # Line 1537
    c.ueq.s	$f4,$f7
    # Line 1538
    lwc1	$f4,0($v0)
    # Line 1539
    bc1f	.L0dad0d98
    # Line 1540
    lwc1	$f7,12($v0)
    # Line 1541
    lwc1	$f5,4($v0)
    # Line 1542
    lwc1	$f6,8($v0)
    # Line 1543
    mul.s	$f9,$f12,$f4
    # Line 1552
    madd.s	$f9,$f9,$f13,$f5
    # Line 1553
    madd.s	$f9,$f9,$f14,$f6
    # Line 1554
    madd.s	$f9,$f9,$f15,$f7
    # Line 1556
    abs.s	$f9,$f9
    # Line 1557
    c.ult.s	$f8,$f9
    # Line 1558
    lwc1	$f4,16($v0)
    # Line 1559
    bc1t	.L0dad0d98
    # Line 1560
    lwc1	$f7,28($v0)
    # Line 1561
    lwc1	$f5,20($v0)
    # Line 1562
    lwc1	$f6,24($v0)
    # Line 1563
    mul.s	$f9,$f12,$f4
    # Line 1572
    madd.s	$f9,$f9,$f13,$f5
    # Line 1573
    madd.s	$f9,$f9,$f14,$f6
    # Line 1574
    madd.s	$f9,$f9,$f15,$f7
    # Line 1576
    abs.s	$f9,$f9
    # Line 1577
    c.ult.s	$f8,$f9
    # Line 1578
    lui	$t0,0x8080
    # Line 1579
    bc1t	.L0dad0d98
    # Line 1580
    ori	$t0,$t0,0xd005
    # Line 1582
    lui	$v0,0x1
    # Line 1584
    sw	$t0,0($v0)
    # Line 1585
    swc1	$f12,0($v0)
    # Line 1586
    swc1	$f13,0($v0)
    # Line 1587
    swc1	$f14,0($v0)
    # Line 1588
    jr	$ra
    # Line 1589
    swc1	$f15,0($v0)
.L0dad0d98:
    # Line 1591
    lw	$t9,32($v1)
    # Line 1597
    jr	$t9
    # Line 1598
    nop
.end __glOdyim_Vertex4d_mag

# Function: __glOdyim_Vertex4dv_mag
# Declared: Line 1605 (Source lines: 1605-1700)
# Address: 0x0dad0dc0 - 0x0dad0eb4 (Size: 244 bytes, Frame: 0)
.globl __glOdyim_Vertex4dv_mag
.ent __glOdyim_Vertex4dv_mag
__glOdyim_Vertex4dv_mag:
    # Line 1605
    ldc1	$f12,0($a0)
    # Line 1606
    cvt.s.d	$f12,$f12
    # Line 1607
    ldc1	$f13,8($a0)
    # Line 1608
    cvt.s.d	$f13,$f13
    # Line 1609
    ldc1	$f14,16($a0)
    # Line 1610
    cvt.s.d	$f14,$f14
    # Line 1611
    ldc1	$f15,24($a0)
    # Line 1612
    cvt.s.d	$f15,$f15
    # Line 1613
    lw	$v0,4128($zero)
    # Line 1614
    lw	$v1,4132($zero)
    # Line 1615
    lwc1	$f4,48($v0)
    # Line 1616
    lwc1	$f7,60($v0)
    # Line 1617
    lwc1	$f5,52($v0)
    # Line 1618
    lwc1	$f6,56($v0)
    # Line 1619
    lwc1	$f9,4($v1)
    # Line 1620
    mul.s	$f8,$f12,$f4
    # Line 1629
    madd.s	$f8,$f8,$f13,$f5
    # Line 1630
    madd.s	$f8,$f8,$f14,$f6
    # Line 1631
    madd.s	$f8,$f8,$f15,$f7
    # Line 1633
    lwc1	$f7,8($v1)
    # Line 1634
    mul.s	$f7,$f8,$f7
    # Line 1635
    swc1	$f8,8($v1)
    # Line 1636
    mul.s	$f8,$f9,$f8
    # Line 1637
    abs.s	$f4,$f7
    # Line 1638
    abs.s	$f8,$f8
    # Line 1639
    c.ueq.s	$f4,$f7
    # Line 1640
    lwc1	$f4,0($v0)
    # Line 1641
    bc1f	.L0dad0ea8
    # Line 1642
    lwc1	$f7,12($v0)
    # Line 1643
    lwc1	$f5,4($v0)
    # Line 1644
    lwc1	$f6,8($v0)
    # Line 1645
    mul.s	$f9,$f12,$f4
    # Line 1654
    madd.s	$f9,$f9,$f13,$f5
    # Line 1655
    madd.s	$f9,$f9,$f14,$f6
    # Line 1656
    madd.s	$f9,$f9,$f15,$f7
    # Line 1658
    abs.s	$f9,$f9
    # Line 1659
    c.ult.s	$f8,$f9
    # Line 1660
    lwc1	$f4,16($v0)
    # Line 1661
    bc1t	.L0dad0ea8
    # Line 1662
    lwc1	$f7,28($v0)
    # Line 1663
    lwc1	$f5,20($v0)
    # Line 1664
    lwc1	$f6,24($v0)
    # Line 1665
    mul.s	$f9,$f12,$f4
    # Line 1674
    madd.s	$f9,$f9,$f13,$f5
    # Line 1675
    madd.s	$f9,$f9,$f14,$f6
    # Line 1676
    madd.s	$f9,$f9,$f15,$f7
    # Line 1678
    abs.s	$f9,$f9
    # Line 1679
    c.ult.s	$f8,$f9
    # Line 1680
    lui	$t0,0x8080
    # Line 1681
    bc1t	.L0dad0ea8
    # Line 1682
    ori	$t0,$t0,0xd005
    # Line 1684
    lui	$v0,0x1
    # Line 1686
    sw	$t0,0($v0)
    # Line 1687
    swc1	$f12,0($v0)
    # Line 1688
    swc1	$f13,0($v0)
    # Line 1689
    swc1	$f14,0($v0)
    # Line 1690
    jr	$ra
    # Line 1691
    swc1	$f15,0($v0)
.L0dad0ea8:
    # Line 1693
    lw	$t9,32($v1)
    # Line 1699
    jr	$t9
    # Line 1700
    nop
.end __glOdyim_Vertex4dv_mag

# Function: __glOdyim_Vertex4f_mag
# Declared: Line 1711 (Source lines: 1711-1798)
# Address: 0x0dad0ec0 - 0x0dad0f94 (Size: 212 bytes, Frame: 0)
.globl __glOdyim_Vertex4f_mag
.ent __glOdyim_Vertex4f_mag
__glOdyim_Vertex4f_mag:
    # Line 1711
    lw	$v0,4128($zero)
    # Line 1712
    lw	$v1,4132($zero)
    # Line 1713
    lwc1	$f4,48($v0)
    # Line 1714
    lwc1	$f7,60($v0)
    # Line 1715
    lwc1	$f5,52($v0)
    # Line 1716
    lwc1	$f6,56($v0)
    # Line 1717
    lwc1	$f9,4($v1)
    # Line 1718
    mul.s	$f8,$f12,$f4
    # Line 1727
    madd.s	$f8,$f8,$f13,$f5
    # Line 1728
    madd.s	$f8,$f8,$f14,$f6
    # Line 1729
    madd.s	$f8,$f8,$f15,$f7
    # Line 1731
    lwc1	$f7,8($v1)
    # Line 1732
    mul.s	$f7,$f8,$f7
    # Line 1733
    swc1	$f8,8($v1)
    # Line 1734
    mul.s	$f8,$f9,$f8
    # Line 1735
    abs.s	$f4,$f7
    # Line 1736
    abs.s	$f8,$f8
    # Line 1737
    c.ueq.s	$f4,$f7
    # Line 1738
    lwc1	$f4,0($v0)
    # Line 1739
    bc1f	.L0dad0f88
    # Line 1740
    lwc1	$f7,12($v0)
    # Line 1741
    lwc1	$f5,4($v0)
    # Line 1742
    lwc1	$f6,8($v0)
    # Line 1743
    mul.s	$f9,$f12,$f4
    # Line 1752
    madd.s	$f9,$f9,$f13,$f5
    # Line 1753
    madd.s	$f9,$f9,$f14,$f6
    # Line 1754
    madd.s	$f9,$f9,$f15,$f7
    # Line 1756
    abs.s	$f9,$f9
    # Line 1757
    c.ult.s	$f8,$f9
    # Line 1758
    lwc1	$f4,16($v0)
    # Line 1759
    bc1t	.L0dad0f88
    # Line 1760
    lwc1	$f7,28($v0)
    # Line 1761
    lwc1	$f5,20($v0)
    # Line 1762
    lwc1	$f6,24($v0)
    # Line 1763
    mul.s	$f9,$f12,$f4
    # Line 1772
    madd.s	$f9,$f9,$f13,$f5
    # Line 1773
    madd.s	$f9,$f9,$f14,$f6
    # Line 1774
    madd.s	$f9,$f9,$f15,$f7
    # Line 1776
    abs.s	$f9,$f9
    # Line 1777
    c.ult.s	$f8,$f9
    # Line 1778
    lui	$t0,0x8080
    # Line 1779
    bc1t	.L0dad0f88
    # Line 1780
    ori	$t0,$t0,0xd005
    # Line 1782
    lui	$v0,0x1
    # Line 1784
    sw	$t0,0($v0)
    # Line 1785
    swc1	$f12,0($v0)
    # Line 1786
    swc1	$f13,0($v0)
    # Line 1787
    swc1	$f14,0($v0)
    # Line 1788
    jr	$ra
    # Line 1789
    swc1	$f15,0($v0)
.L0dad0f88:
    # Line 1791
    lw	$t9,32($v1)
    # Line 1797
    jr	$t9
    # Line 1798
    nop
.end __glOdyim_Vertex4f_mag

# Function: __glOdyim_Vertex4fv_mag
# Declared: Line 1805 (Source lines: 1805-1896)
# Address: 0x0dad0fc0 - 0x0dad10a4 (Size: 228 bytes, Frame: 0)
.globl __glOdyim_Vertex4fv_mag
.ent __glOdyim_Vertex4fv_mag
__glOdyim_Vertex4fv_mag:
    # Line 1805
    lwc1	$f12,0($a0)
    # Line 1806
    lwc1	$f13,4($a0)
    # Line 1807
    lwc1	$f14,8($a0)
    # Line 1808
    lwc1	$f15,12($a0)
    # Line 1809
    lw	$v0,4128($zero)
    # Line 1810
    lw	$v1,4132($zero)
    # Line 1811
    lwc1	$f4,48($v0)
    # Line 1812
    lwc1	$f7,60($v0)
    # Line 1813
    lwc1	$f5,52($v0)
    # Line 1814
    lwc1	$f6,56($v0)
    # Line 1815
    lwc1	$f9,4($v1)
    # Line 1816
    mul.s	$f8,$f12,$f4
    # Line 1825
    madd.s	$f8,$f8,$f13,$f5
    # Line 1826
    madd.s	$f8,$f8,$f14,$f6
    # Line 1827
    madd.s	$f8,$f8,$f15,$f7
    # Line 1829
    lwc1	$f7,8($v1)
    # Line 1830
    mul.s	$f7,$f8,$f7
    # Line 1831
    swc1	$f8,8($v1)
    # Line 1832
    mul.s	$f8,$f9,$f8
    # Line 1833
    abs.s	$f4,$f7
    # Line 1834
    abs.s	$f8,$f8
    # Line 1835
    c.ueq.s	$f4,$f7
    # Line 1836
    lwc1	$f4,0($v0)
    # Line 1837
    bc1f	.L0dad1098
    # Line 1838
    lwc1	$f7,12($v0)
    # Line 1839
    lwc1	$f5,4($v0)
    # Line 1840
    lwc1	$f6,8($v0)
    # Line 1841
    mul.s	$f9,$f12,$f4
    # Line 1850
    madd.s	$f9,$f9,$f13,$f5
    # Line 1851
    madd.s	$f9,$f9,$f14,$f6
    # Line 1852
    madd.s	$f9,$f9,$f15,$f7
    # Line 1854
    abs.s	$f9,$f9
    # Line 1855
    c.ult.s	$f8,$f9
    # Line 1856
    lwc1	$f4,16($v0)
    # Line 1857
    bc1t	.L0dad1098
    # Line 1858
    lwc1	$f7,28($v0)
    # Line 1859
    lwc1	$f5,20($v0)
    # Line 1860
    lwc1	$f6,24($v0)
    # Line 1861
    mul.s	$f9,$f12,$f4
    # Line 1870
    madd.s	$f9,$f9,$f13,$f5
    # Line 1871
    madd.s	$f9,$f9,$f14,$f6
    # Line 1872
    madd.s	$f9,$f9,$f15,$f7
    # Line 1874
    abs.s	$f9,$f9
    # Line 1875
    c.ult.s	$f8,$f9
    # Line 1876
    lui	$t0,0x8080
    # Line 1877
    bc1t	.L0dad1098
    # Line 1878
    ori	$t0,$t0,0xd005
    # Line 1880
    lui	$v0,0x1
    # Line 1882
    sw	$t0,0($v0)
    # Line 1883
    swc1	$f12,0($v0)
    # Line 1884
    swc1	$f13,0($v0)
    # Line 1885
    swc1	$f14,0($v0)
    # Line 1886
    jr	$ra
    # Line 1887
    swc1	$f15,0($v0)
.L0dad1098:
    # Line 1889
    lw	$t9,32($v1)
    # Line 1895
    jr	$t9
    # Line 1896
    nop
.end __glOdyim_Vertex4fv_mag

# Function: __glOdyim_Vertex4i_mag
# Declared: Line 1903 (Source lines: 1903-1998)
# Address: 0x0dad10c0 - 0x0dad11b4 (Size: 244 bytes, Frame: 0)
.globl __glOdyim_Vertex4i_mag
.ent __glOdyim_Vertex4i_mag
__glOdyim_Vertex4i_mag:
    # Line 1903
    mtc1	$a0,$f8
    # Line 1904
    mtc1	$a1,$f9
    # Line 1905
    cvt.s.w	$f12,$f8
    # Line 1906
    cvt.s.w	$f13,$f9
    # Line 1907
    mtc1	$a2,$f8
    # Line 1908
    mtc1	$a3,$f9
    # Line 1909
    cvt.s.w	$f14,$f8
    # Line 1910
    cvt.s.w	$f15,$f9
    # Line 1911
    lw	$v0,4128($zero)
    # Line 1912
    lw	$v1,4132($zero)
    # Line 1913
    lwc1	$f4,48($v0)
    # Line 1914
    lwc1	$f7,60($v0)
    # Line 1915
    lwc1	$f5,52($v0)
    # Line 1916
    lwc1	$f6,56($v0)
    # Line 1917
    lwc1	$f9,4($v1)
    # Line 1918
    mul.s	$f8,$f12,$f4
    # Line 1927
    madd.s	$f8,$f8,$f13,$f5
    # Line 1928
    madd.s	$f8,$f8,$f14,$f6
    # Line 1929
    madd.s	$f8,$f8,$f15,$f7
    # Line 1931
    lwc1	$f7,8($v1)
    # Line 1932
    mul.s	$f7,$f8,$f7
    # Line 1933
    swc1	$f8,8($v1)
    # Line 1934
    mul.s	$f8,$f9,$f8
    # Line 1935
    abs.s	$f4,$f7
    # Line 1936
    abs.s	$f8,$f8
    # Line 1937
    c.ueq.s	$f4,$f7
    # Line 1938
    lwc1	$f4,0($v0)
    # Line 1939
    bc1f	.L0dad11a8
    # Line 1940
    lwc1	$f7,12($v0)
    # Line 1941
    lwc1	$f5,4($v0)
    # Line 1942
    lwc1	$f6,8($v0)
    # Line 1943
    mul.s	$f9,$f12,$f4
    # Line 1952
    madd.s	$f9,$f9,$f13,$f5
    # Line 1953
    madd.s	$f9,$f9,$f14,$f6
    # Line 1954
    madd.s	$f9,$f9,$f15,$f7
    # Line 1956
    abs.s	$f9,$f9
    # Line 1957
    c.ult.s	$f8,$f9
    # Line 1958
    lwc1	$f4,16($v0)
    # Line 1959
    bc1t	.L0dad11a8
    # Line 1960
    lwc1	$f7,28($v0)
    # Line 1961
    lwc1	$f5,20($v0)
    # Line 1962
    lwc1	$f6,24($v0)
    # Line 1963
    mul.s	$f9,$f12,$f4
    # Line 1972
    madd.s	$f9,$f9,$f13,$f5
    # Line 1973
    madd.s	$f9,$f9,$f14,$f6
    # Line 1974
    madd.s	$f9,$f9,$f15,$f7
    # Line 1976
    abs.s	$f9,$f9
    # Line 1977
    c.ult.s	$f8,$f9
    # Line 1978
    lui	$t0,0x8080
    # Line 1979
    bc1t	.L0dad11a8
    # Line 1980
    ori	$t0,$t0,0xd004
    # Line 1982
    lui	$v0,0x1
    # Line 1984
    sw	$t0,0($v0)
    # Line 1985
    sw	$a0,0($v0)
    # Line 1986
    sw	$a1,0($v0)
    # Line 1987
    sw	$a2,0($v0)
    # Line 1988
    jr	$ra
    # Line 1989
    sw	$a3,0($v0)
.L0dad11a8:
    # Line 1991
    lw	$t9,32($v1)
    # Line 1997
    jr	$t9
    # Line 1998
    nop
.end __glOdyim_Vertex4i_mag

# Function: __glOdyim_Vertex4iv_mag
# Declared: Line 2005 (Source lines: 2005-2104)
# Address: 0x0dad11c0 - 0x0dad12c4 (Size: 260 bytes, Frame: 0)
.globl __glOdyim_Vertex4iv_mag
.ent __glOdyim_Vertex4iv_mag
__glOdyim_Vertex4iv_mag:
    # Line 2005
    lw	$a4,0($a0)
    # Line 2006
    lw	$a5,4($a0)
    # Line 2007
    lw	$a6,8($a0)
    # Line 2008
    lw	$a7,12($a0)
    # Line 2009
    mtc1	$a4,$f8
    # Line 2010
    mtc1	$a5,$f9
    # Line 2011
    cvt.s.w	$f12,$f8
    # Line 2012
    cvt.s.w	$f13,$f9
    # Line 2013
    mtc1	$a6,$f8
    # Line 2014
    mtc1	$a7,$f9
    # Line 2015
    cvt.s.w	$f14,$f8
    # Line 2016
    cvt.s.w	$f15,$f9
    # Line 2017
    lw	$v0,4128($zero)
    # Line 2018
    lw	$v1,4132($zero)
    # Line 2019
    lwc1	$f4,48($v0)
    # Line 2020
    lwc1	$f7,60($v0)
    # Line 2021
    lwc1	$f5,52($v0)
    # Line 2022
    lwc1	$f6,56($v0)
    # Line 2023
    lwc1	$f9,4($v1)
    # Line 2024
    mul.s	$f8,$f12,$f4
    # Line 2033
    madd.s	$f8,$f8,$f13,$f5
    # Line 2034
    madd.s	$f8,$f8,$f14,$f6
    # Line 2035
    madd.s	$f8,$f8,$f15,$f7
    # Line 2037
    lwc1	$f7,8($v1)
    # Line 2038
    mul.s	$f7,$f8,$f7
    # Line 2039
    swc1	$f8,8($v1)
    # Line 2040
    mul.s	$f8,$f9,$f8
    # Line 2041
    abs.s	$f4,$f7
    # Line 2042
    abs.s	$f8,$f8
    # Line 2043
    c.ueq.s	$f4,$f7
    # Line 2044
    lwc1	$f4,0($v0)
    # Line 2045
    bc1f	.L0dad12b8
    # Line 2046
    lwc1	$f7,12($v0)
    # Line 2047
    lwc1	$f5,4($v0)
    # Line 2048
    lwc1	$f6,8($v0)
    # Line 2049
    mul.s	$f9,$f12,$f4
    # Line 2058
    madd.s	$f9,$f9,$f13,$f5
    # Line 2059
    madd.s	$f9,$f9,$f14,$f6
    # Line 2060
    madd.s	$f9,$f9,$f15,$f7
    # Line 2062
    abs.s	$f9,$f9
    # Line 2063
    c.ult.s	$f8,$f9
    # Line 2064
    lwc1	$f4,16($v0)
    # Line 2065
    bc1t	.L0dad12b8
    # Line 2066
    lwc1	$f7,28($v0)
    # Line 2067
    lwc1	$f5,20($v0)
    # Line 2068
    lwc1	$f6,24($v0)
    # Line 2069
    mul.s	$f9,$f12,$f4
    # Line 2078
    madd.s	$f9,$f9,$f13,$f5
    # Line 2079
    madd.s	$f9,$f9,$f14,$f6
    # Line 2080
    madd.s	$f9,$f9,$f15,$f7
    # Line 2082
    abs.s	$f9,$f9
    # Line 2083
    c.ult.s	$f8,$f9
    # Line 2084
    lui	$t0,0x8080
    # Line 2085
    bc1t	.L0dad12b8
    # Line 2086
    ori	$t0,$t0,0xd004
    # Line 2088
    lui	$v0,0x1
    # Line 2090
    sw	$t0,0($v0)
    # Line 2091
    sw	$a4,0($v0)
    # Line 2092
    sw	$a5,0($v0)
    # Line 2093
    sw	$a6,0($v0)
    # Line 2094
    jr	$ra
    # Line 2095
    sw	$a7,0($v0)
.L0dad12b8:
    # Line 2097
    lw	$t9,32($v1)
    # Line 2103
    jr	$t9
    # Line 2104
    nop
.end __glOdyim_Vertex4iv_mag

# Function: __glOdyim_Vertex4s_mag
# Declared: Line 2111 (Source lines: 2111-2206)
# Address: 0x0dad1300 - 0x0dad13f4 (Size: 244 bytes, Frame: 0)
.globl __glOdyim_Vertex4s_mag
.ent __glOdyim_Vertex4s_mag
__glOdyim_Vertex4s_mag:
    # Line 2111
    mtc1	$a0,$f8
    # Line 2112
    mtc1	$a1,$f9
    # Line 2113
    cvt.s.w	$f12,$f8
    # Line 2114
    cvt.s.w	$f13,$f9
    # Line 2115
    mtc1	$a2,$f8
    # Line 2116
    mtc1	$a3,$f9
    # Line 2117
    cvt.s.w	$f14,$f8
    # Line 2118
    cvt.s.w	$f15,$f9
    # Line 2119
    lw	$v0,4128($zero)
    # Line 2120
    lw	$v1,4132($zero)
    # Line 2121
    lwc1	$f4,48($v0)
    # Line 2122
    lwc1	$f7,60($v0)
    # Line 2123
    lwc1	$f5,52($v0)
    # Line 2124
    lwc1	$f6,56($v0)
    # Line 2125
    lwc1	$f9,4($v1)
    # Line 2126
    mul.s	$f8,$f12,$f4
    # Line 2135
    madd.s	$f8,$f8,$f13,$f5
    # Line 2136
    madd.s	$f8,$f8,$f14,$f6
    # Line 2137
    madd.s	$f8,$f8,$f15,$f7
    # Line 2139
    lwc1	$f7,8($v1)
    # Line 2140
    mul.s	$f7,$f8,$f7
    # Line 2141
    swc1	$f8,8($v1)
    # Line 2142
    mul.s	$f8,$f9,$f8
    # Line 2143
    abs.s	$f4,$f7
    # Line 2144
    abs.s	$f8,$f8
    # Line 2145
    c.ueq.s	$f4,$f7
    # Line 2146
    lwc1	$f4,0($v0)
    # Line 2147
    bc1f	.L0dad13e8
    # Line 2148
    lwc1	$f7,12($v0)
    # Line 2149
    lwc1	$f5,4($v0)
    # Line 2150
    lwc1	$f6,8($v0)
    # Line 2151
    mul.s	$f9,$f12,$f4
    # Line 2160
    madd.s	$f9,$f9,$f13,$f5
    # Line 2161
    madd.s	$f9,$f9,$f14,$f6
    # Line 2162
    madd.s	$f9,$f9,$f15,$f7
    # Line 2164
    abs.s	$f9,$f9
    # Line 2165
    c.ult.s	$f8,$f9
    # Line 2166
    lwc1	$f4,16($v0)
    # Line 2167
    bc1t	.L0dad13e8
    # Line 2168
    lwc1	$f7,28($v0)
    # Line 2169
    lwc1	$f5,20($v0)
    # Line 2170
    lwc1	$f6,24($v0)
    # Line 2171
    mul.s	$f9,$f12,$f4
    # Line 2180
    madd.s	$f9,$f9,$f13,$f5
    # Line 2181
    madd.s	$f9,$f9,$f14,$f6
    # Line 2182
    madd.s	$f9,$f9,$f15,$f7
    # Line 2184
    abs.s	$f9,$f9
    # Line 2185
    c.ult.s	$f8,$f9
    # Line 2186
    lui	$t0,0x8080
    # Line 2187
    bc1t	.L0dad13e8
    # Line 2188
    ori	$t0,$t0,0xd004
    # Line 2190
    lui	$v0,0x1
    # Line 2192
    sw	$t0,0($v0)
    # Line 2193
    sw	$a0,0($v0)
    # Line 2194
    sw	$a1,0($v0)
    # Line 2195
    sw	$a2,0($v0)
    # Line 2196
    jr	$ra
    # Line 2197
    sw	$a3,0($v0)
.L0dad13e8:
    # Line 2199
    lw	$t9,32($v1)
    # Line 2205
    jr	$t9
    # Line 2206
    nop
.end __glOdyim_Vertex4s_mag

# Function: __glOdyim_Vertex4sv_mag
# Declared: Line 2213 (Source lines: 2213-2312)
# Address: 0x0dad1400 - 0x0dad1504 (Size: 260 bytes, Frame: 0)
.globl __glOdyim_Vertex4sv_mag
.ent __glOdyim_Vertex4sv_mag
__glOdyim_Vertex4sv_mag:
    # Line 2213
    lh	$a4,0($a0)
    # Line 2214
    lh	$a5,2($a0)
    # Line 2215
    lh	$a6,4($a0)
    # Line 2216
    lh	$a7,6($a0)
    # Line 2217
    mtc1	$a4,$f8
    # Line 2218
    mtc1	$a5,$f9
    # Line 2219
    cvt.s.w	$f12,$f8
    # Line 2220
    cvt.s.w	$f13,$f9
    # Line 2221
    mtc1	$a6,$f8
    # Line 2222
    mtc1	$a7,$f9
    # Line 2223
    cvt.s.w	$f14,$f8
    # Line 2224
    cvt.s.w	$f15,$f9
    # Line 2225
    lw	$v0,4128($zero)
    # Line 2226
    lw	$v1,4132($zero)
    # Line 2227
    lwc1	$f4,48($v0)
    # Line 2228
    lwc1	$f7,60($v0)
    # Line 2229
    lwc1	$f5,52($v0)
    # Line 2230
    lwc1	$f6,56($v0)
    # Line 2231
    lwc1	$f9,4($v1)
    # Line 2232
    mul.s	$f8,$f12,$f4
    # Line 2241
    madd.s	$f8,$f8,$f13,$f5
    # Line 2242
    madd.s	$f8,$f8,$f14,$f6
    # Line 2243
    madd.s	$f8,$f8,$f15,$f7
    # Line 2245
    lwc1	$f7,8($v1)
    # Line 2246
    mul.s	$f7,$f8,$f7
    # Line 2247
    swc1	$f8,8($v1)
    # Line 2248
    mul.s	$f8,$f9,$f8
    # Line 2249
    abs.s	$f4,$f7
    # Line 2250
    abs.s	$f8,$f8
    # Line 2251
    c.ueq.s	$f4,$f7
    # Line 2252
    lwc1	$f4,0($v0)
    # Line 2253
    bc1f	.L0dad14f8
    # Line 2254
    lwc1	$f7,12($v0)
    # Line 2255
    lwc1	$f5,4($v0)
    # Line 2256
    lwc1	$f6,8($v0)
    # Line 2257
    mul.s	$f9,$f12,$f4
    # Line 2266
    madd.s	$f9,$f9,$f13,$f5
    # Line 2267
    madd.s	$f9,$f9,$f14,$f6
    # Line 2268
    madd.s	$f9,$f9,$f15,$f7
    # Line 2270
    abs.s	$f9,$f9
    # Line 2271
    c.ult.s	$f8,$f9
    # Line 2272
    lwc1	$f4,16($v0)
    # Line 2273
    bc1t	.L0dad14f8
    # Line 2274
    lwc1	$f7,28($v0)
    # Line 2275
    lwc1	$f5,20($v0)
    # Line 2276
    lwc1	$f6,24($v0)
    # Line 2277
    mul.s	$f9,$f12,$f4
    # Line 2286
    madd.s	$f9,$f9,$f13,$f5
    # Line 2287
    madd.s	$f9,$f9,$f14,$f6
    # Line 2288
    madd.s	$f9,$f9,$f15,$f7
    # Line 2290
    abs.s	$f9,$f9
    # Line 2291
    c.ult.s	$f8,$f9
    # Line 2292
    lui	$t0,0x8080
    # Line 2293
    bc1t	.L0dad14f8
    # Line 2294
    ori	$t0,$t0,0xd004
    # Line 2296
    lui	$v0,0x1
    # Line 2298
    sw	$t0,0($v0)
    # Line 2299
    sw	$a4,0($v0)
    # Line 2300
    sw	$a5,0($v0)
    # Line 2301
    sw	$a6,0($v0)
    # Line 2302
    jr	$ra
    # Line 2303
    sw	$a7,0($v0)
.L0dad14f8:
    # Line 2305
    lw	$t9,32($v1)
    # Line 2311
    jr	$t9
    # Line 2312
    nop
.end __glOdyim_Vertex4sv_mag

