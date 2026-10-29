# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_vapi_asm_mag_line0.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 24

.text

# Function: __glOdyim_Vertex2d_mag_line0
# Declared: Line 67 (Source lines: 67-195)
# Address: 0x0dad1540 - 0x0dad1664 (Size: 292 bytes, Frame: 0)
.globl __glOdyim_Vertex2d_mag_line0
.ent __glOdyim_Vertex2d_mag_line0
__glOdyim_Vertex2d_mag_line0:
    # Line 67
    cvt.s.d	$f12,$f12
    # Line 68
    cvt.s.d	$f13,$f13
    # Line 74
    lw	$v0,4128($zero)
    # Line 75
    lw	$v1,4132($zero)
    # Line 76
    lwc1	$f4,48($v0)
    # Line 77
    lwc1	$f8,60($v0)
    # Line 78
    lwc1	$f5,52($v0)
    # Line 79
    lwc1	$f9,4($v1)
    # Line 80
    lwc1	$f7,8($v1)
    # Line 87
    madd.s	$f8,$f8,$f12,$f4
    # Line 88
    madd.s	$f8,$f8,$f13,$f5
    # Line 90
    mov.s	$f10,$f8
    # Line 91
    mul.s	$f7,$f8,$f7
    # Line 92
    swc1	$f8,8($v1)
    # Line 93
    mul.s	$f8,$f8,$f9
    # Line 94
    abs.s	$f4,$f7
    # Line 95
    abs.s	$f8,$f8
    # Line 96
    c.ueq.s	$f4,$f7
    # Line 97
    lwc1	$f4,0($v0)
    # Line 98
    bc1f	.L0dad1650
    # Line 99
    lwc1	$f9,12($v0)
    # Line 100
    lwc1	$f5,4($v0)
    # Line 107
    madd.s	$f9,$f9,$f12,$f4
    # Line 108
    madd.s	$f9,$f9,$f13,$f5
    # Line 110
    mov.s	$f11,$f9
    # Line 111
    abs.s	$f9,$f9
    # Line 112
    c.ult.s	$f8,$f9
    # Line 113
    lwc1	$f4,12($v1)
    # Line 114
    bc1t	.L0dad1650
    # Line 115
    nop
    # Line 120
    madd.s	$f4,$f11,$f4,$f10
    # Line 122
    abs.s	$f5,$f4
    # Line 123
    c.ueq.s	$f5,$f4
    # Line 124
    lwc1	$f6,24($v1)
    # Line 125
    bc1f	.L0dad15e0
    # Line 126
    mul.s	$f6,$f6,$f10
    # Line 127
    c.ult.s	$f4,$f6
    # Line 128
    nop
    # Line 129
    bc1t	.L0dad1650
    # Line 130
    nop
.L0dad15e0:
    # Line 132
    lwc1	$f4,16($v0)
    # Line 133
    lwc1	$f9,28($v0)
    # Line 134
    lwc1	$f5,20($v0)
    # Line 141
    madd.s	$f9,$f9,$f12,$f4
    # Line 142
    madd.s	$f9,$f9,$f13,$f5
    # Line 144
    mov.s	$f11,$f9
    # Line 145
    abs.s	$f9,$f9
    # Line 146
    c.ult.s	$f8,$f9
    # Line 147
    nop
    # Line 148
    bc1t	.L0dad1650
    # Line 149
    lwc1	$f4,16($v1)
    # Line 154
    madd.s	$f4,$f11,$f4,$f10
    # Line 156
    abs.s	$f5,$f4
    # Line 157
    c.ueq.s	$f5,$f4
    # Line 158
    lwc1	$f6,24($v1)
    # Line 159
    bc1f	.L0dad1634
    # Line 160
    mul.s	$f6,$f6,$f10
    # Line 161
    c.ult.s	$f4,$f6
    # Line 162
    nop
    # Line 163
    bc1t	.L0dad1650
    # Line 164
    nop
.L0dad1634:
    # Line 171
    lui	$t0,0x8080
    # Line 172
    ori	$t0,$t0,0xc801
    # Line 174
    lui	$v0,0x1
    # Line 176
    sw	$t0,0($v0)
    # Line 177
    swc1	$f12,0($v0)
    # Line 178
    jr	$ra
    # Line 179
    swc1	$f13,0($v0)
.L0dad1650:
    # Line 186
    lw	$t9,32($v1)
    # Line 192
    mtc1	$zero,$f14
    # Line 193
    lui	$t0,0x3f80
    # Line 194
    jr	$t9
    # Line 195
    mtc1	$t0,$f15
.end __glOdyim_Vertex2d_mag_line0

# Function: __glOdyim_Vertex2dv_mag_line0
# Declared: Line 202 (Source lines: 202-332)
# Address: 0x0dad1680 - 0x0dad17ac (Size: 300 bytes, Frame: 0)
.globl __glOdyim_Vertex2dv_mag_line0
.ent __glOdyim_Vertex2dv_mag_line0
__glOdyim_Vertex2dv_mag_line0:
    # Line 202
    ldc1	$f12,0($a0)
    # Line 203
    cvt.s.d	$f12,$f12
    # Line 204
    ldc1	$f13,8($a0)
    # Line 205
    cvt.s.d	$f13,$f13
    # Line 211
    lw	$v0,4128($zero)
    # Line 212
    lw	$v1,4132($zero)
    # Line 213
    lwc1	$f4,48($v0)
    # Line 214
    lwc1	$f8,60($v0)
    # Line 215
    lwc1	$f5,52($v0)
    # Line 216
    lwc1	$f9,4($v1)
    # Line 217
    lwc1	$f7,8($v1)
    # Line 224
    madd.s	$f8,$f8,$f12,$f4
    # Line 225
    madd.s	$f8,$f8,$f13,$f5
    # Line 227
    mov.s	$f10,$f8
    # Line 228
    mul.s	$f7,$f8,$f7
    # Line 229
    swc1	$f8,8($v1)
    # Line 230
    mul.s	$f8,$f8,$f9
    # Line 231
    abs.s	$f4,$f7
    # Line 232
    abs.s	$f8,$f8
    # Line 233
    c.ueq.s	$f4,$f7
    # Line 234
    lwc1	$f4,0($v0)
    # Line 235
    bc1f	.L0dad1798
    # Line 236
    lwc1	$f9,12($v0)
    # Line 237
    lwc1	$f5,4($v0)
    # Line 244
    madd.s	$f9,$f9,$f12,$f4
    # Line 245
    madd.s	$f9,$f9,$f13,$f5
    # Line 247
    mov.s	$f11,$f9
    # Line 248
    abs.s	$f9,$f9
    # Line 249
    c.ult.s	$f8,$f9
    # Line 250
    lwc1	$f4,12($v1)
    # Line 251
    bc1t	.L0dad1798
    # Line 252
    nop
    # Line 257
    madd.s	$f4,$f11,$f4,$f10
    # Line 259
    abs.s	$f5,$f4
    # Line 260
    c.ueq.s	$f5,$f4
    # Line 261
    lwc1	$f6,24($v1)
    # Line 262
    bc1f	.L0dad1728
    # Line 263
    mul.s	$f6,$f6,$f10
    # Line 264
    c.ult.s	$f4,$f6
    # Line 265
    nop
    # Line 266
    bc1t	.L0dad1798
    # Line 267
    nop
.L0dad1728:
    # Line 269
    lwc1	$f4,16($v0)
    # Line 270
    lwc1	$f9,28($v0)
    # Line 271
    lwc1	$f5,20($v0)
    # Line 278
    madd.s	$f9,$f9,$f12,$f4
    # Line 279
    madd.s	$f9,$f9,$f13,$f5
    # Line 281
    mov.s	$f11,$f9
    # Line 282
    abs.s	$f9,$f9
    # Line 283
    c.ult.s	$f8,$f9
    # Line 284
    nop
    # Line 285
    bc1t	.L0dad1798
    # Line 286
    lwc1	$f4,16($v1)
    # Line 291
    madd.s	$f4,$f11,$f4,$f10
    # Line 293
    abs.s	$f5,$f4
    # Line 294
    c.ueq.s	$f5,$f4
    # Line 295
    lwc1	$f6,24($v1)
    # Line 296
    bc1f	.L0dad177c
    # Line 297
    mul.s	$f6,$f6,$f10
    # Line 298
    c.ult.s	$f4,$f6
    # Line 299
    nop
    # Line 300
    bc1t	.L0dad1798
    # Line 301
    nop
.L0dad177c:
    # Line 308
    lui	$t0,0x8080
    # Line 309
    ori	$t0,$t0,0xc801
    # Line 311
    lui	$v0,0x1
    # Line 313
    sw	$t0,0($v0)
    # Line 314
    swc1	$f12,0($v0)
    # Line 315
    jr	$ra
    # Line 316
    swc1	$f13,0($v0)
.L0dad1798:
    # Line 323
    lw	$t9,32($v1)
    # Line 329
    mtc1	$zero,$f14
    # Line 330
    lui	$t0,0x3f80
    # Line 331
    jr	$t9
    # Line 332
    mtc1	$t0,$f15
.end __glOdyim_Vertex2dv_mag_line0

# Function: __glOdyim_Vertex2f_mag_line0
# Declared: Line 344 (Source lines: 344-465)
# Address: 0x0dad17c0 - 0x0dad18dc (Size: 284 bytes, Frame: 0)
.globl __glOdyim_Vertex2f_mag_line0
.ent __glOdyim_Vertex2f_mag_line0
__glOdyim_Vertex2f_mag_line0:
    # Line 344
    lw	$v0,4128($zero)
    # Line 345
    lw	$v1,4132($zero)
    # Line 346
    lwc1	$f4,48($v0)
    # Line 347
    lwc1	$f8,60($v0)
    # Line 348
    lwc1	$f5,52($v0)
    # Line 349
    lwc1	$f9,4($v1)
    # Line 350
    lwc1	$f7,8($v1)
    # Line 357
    madd.s	$f8,$f8,$f12,$f4
    # Line 358
    madd.s	$f8,$f8,$f13,$f5
    # Line 360
    mov.s	$f10,$f8
    # Line 361
    mul.s	$f7,$f8,$f7
    # Line 362
    swc1	$f8,8($v1)
    # Line 363
    mul.s	$f8,$f8,$f9
    # Line 364
    abs.s	$f4,$f7
    # Line 365
    abs.s	$f8,$f8
    # Line 366
    c.ueq.s	$f4,$f7
    # Line 367
    lwc1	$f4,0($v0)
    # Line 368
    bc1f	.L0dad18c8
    # Line 369
    lwc1	$f9,12($v0)
    # Line 370
    lwc1	$f5,4($v0)
    # Line 377
    madd.s	$f9,$f9,$f12,$f4
    # Line 378
    madd.s	$f9,$f9,$f13,$f5
    # Line 380
    mov.s	$f11,$f9
    # Line 381
    abs.s	$f9,$f9
    # Line 382
    c.ult.s	$f8,$f9
    # Line 383
    lwc1	$f4,12($v1)
    # Line 384
    bc1t	.L0dad18c8
    # Line 385
    nop
    # Line 390
    madd.s	$f4,$f11,$f4,$f10
    # Line 392
    abs.s	$f5,$f4
    # Line 393
    c.ueq.s	$f5,$f4
    # Line 394
    lwc1	$f6,24($v1)
    # Line 395
    bc1f	.L0dad1858
    # Line 396
    mul.s	$f6,$f6,$f10
    # Line 397
    c.ult.s	$f4,$f6
    # Line 398
    nop
    # Line 399
    bc1t	.L0dad18c8
    # Line 400
    nop
.L0dad1858:
    # Line 402
    lwc1	$f4,16($v0)
    # Line 403
    lwc1	$f9,28($v0)
    # Line 404
    lwc1	$f5,20($v0)
    # Line 411
    madd.s	$f9,$f9,$f12,$f4
    # Line 412
    madd.s	$f9,$f9,$f13,$f5
    # Line 414
    mov.s	$f11,$f9
    # Line 415
    abs.s	$f9,$f9
    # Line 416
    c.ult.s	$f8,$f9
    # Line 417
    nop
    # Line 418
    bc1t	.L0dad18c8
    # Line 419
    lwc1	$f4,16($v1)
    # Line 424
    madd.s	$f4,$f11,$f4,$f10
    # Line 426
    abs.s	$f5,$f4
    # Line 427
    c.ueq.s	$f5,$f4
    # Line 428
    lwc1	$f6,24($v1)
    # Line 429
    bc1f	.L0dad18ac
    # Line 430
    mul.s	$f6,$f6,$f10
    # Line 431
    c.ult.s	$f4,$f6
    # Line 432
    nop
    # Line 433
    bc1t	.L0dad18c8
    # Line 434
    nop
.L0dad18ac:
    # Line 441
    lui	$t0,0x8080
    # Line 442
    ori	$t0,$t0,0xc801
    # Line 444
    lui	$v0,0x1
    # Line 446
    sw	$t0,0($v0)
    # Line 447
    swc1	$f12,0($v0)
    # Line 448
    jr	$ra
    # Line 449
    swc1	$f13,0($v0)
.L0dad18c8:
    # Line 456
    lw	$t9,32($v1)
    # Line 462
    mtc1	$zero,$f14
    # Line 463
    lui	$t0,0x3f80
    # Line 464
    jr	$t9
    # Line 465
    mtc1	$t0,$f15
.end __glOdyim_Vertex2f_mag_line0

# Function: __glOdyim_Vertex2fv_mag_line0
# Declared: Line 472 (Source lines: 472-600)
# Address: 0x0dad1900 - 0x0dad1a24 (Size: 292 bytes, Frame: 0)
.globl __glOdyim_Vertex2fv_mag_line0
.ent __glOdyim_Vertex2fv_mag_line0
__glOdyim_Vertex2fv_mag_line0:
    # Line 472
    lwc1	$f12,0($a0)
    # Line 473
    lwc1	$f13,4($a0)
    # Line 479
    lw	$v0,4128($zero)
    # Line 480
    lw	$v1,4132($zero)
    # Line 481
    lwc1	$f4,48($v0)
    # Line 482
    lwc1	$f8,60($v0)
    # Line 483
    lwc1	$f5,52($v0)
    # Line 484
    lwc1	$f9,4($v1)
    # Line 485
    lwc1	$f7,8($v1)
    # Line 492
    madd.s	$f8,$f8,$f12,$f4
    # Line 493
    madd.s	$f8,$f8,$f13,$f5
    # Line 495
    mov.s	$f10,$f8
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
    bc1f	.L0dad1a10
    # Line 504
    lwc1	$f9,12($v0)
    # Line 505
    lwc1	$f5,4($v0)
    # Line 512
    madd.s	$f9,$f9,$f12,$f4
    # Line 513
    madd.s	$f9,$f9,$f13,$f5
    # Line 515
    mov.s	$f11,$f9
    # Line 516
    abs.s	$f9,$f9
    # Line 517
    c.ult.s	$f8,$f9
    # Line 518
    lwc1	$f4,12($v1)
    # Line 519
    bc1t	.L0dad1a10
    # Line 520
    nop
    # Line 525
    madd.s	$f4,$f11,$f4,$f10
    # Line 527
    abs.s	$f5,$f4
    # Line 528
    c.ueq.s	$f5,$f4
    # Line 529
    lwc1	$f6,24($v1)
    # Line 530
    bc1f	.L0dad19a0
    # Line 531
    mul.s	$f6,$f6,$f10
    # Line 532
    c.ult.s	$f4,$f6
    # Line 533
    nop
    # Line 534
    bc1t	.L0dad1a10
    # Line 535
    nop
.L0dad19a0:
    # Line 537
    lwc1	$f4,16($v0)
    # Line 538
    lwc1	$f9,28($v0)
    # Line 539
    lwc1	$f5,20($v0)
    # Line 546
    madd.s	$f9,$f9,$f12,$f4
    # Line 547
    madd.s	$f9,$f9,$f13,$f5
    # Line 549
    mov.s	$f11,$f9
    # Line 550
    abs.s	$f9,$f9
    # Line 551
    c.ult.s	$f8,$f9
    # Line 552
    nop
    # Line 553
    bc1t	.L0dad1a10
    # Line 554
    lwc1	$f4,16($v1)
    # Line 559
    madd.s	$f4,$f11,$f4,$f10
    # Line 561
    abs.s	$f5,$f4
    # Line 562
    c.ueq.s	$f5,$f4
    # Line 563
    lwc1	$f6,24($v1)
    # Line 564
    bc1f	.L0dad19f4
    # Line 565
    mul.s	$f6,$f6,$f10
    # Line 566
    c.ult.s	$f4,$f6
    # Line 567
    nop
    # Line 568
    bc1t	.L0dad1a10
    # Line 569
    nop
.L0dad19f4:
    # Line 576
    lui	$t0,0x8080
    # Line 577
    ori	$t0,$t0,0xc801
    # Line 579
    lui	$v0,0x1
    # Line 581
    sw	$t0,0($v0)
    # Line 582
    swc1	$f12,0($v0)
    # Line 583
    jr	$ra
    # Line 584
    swc1	$f13,0($v0)
.L0dad1a10:
    # Line 591
    lw	$t9,32($v1)
    # Line 597
    mtc1	$zero,$f14
    # Line 598
    lui	$t0,0x3f80
    # Line 599
    jr	$t9
    # Line 600
    mtc1	$t0,$f15
.end __glOdyim_Vertex2fv_mag_line0

# Function: __glOdyim_Vertex2i_mag_line0
# Declared: Line 607 (Source lines: 607-737)
# Address: 0x0dad1a40 - 0x0dad1b6c (Size: 300 bytes, Frame: 0)
.globl __glOdyim_Vertex2i_mag_line0
.ent __glOdyim_Vertex2i_mag_line0
__glOdyim_Vertex2i_mag_line0:
    # Line 607
    mtc1	$a0,$f8
    # Line 608
    mtc1	$a1,$f9
    # Line 609
    cvt.s.w	$f12,$f8
    # Line 610
    cvt.s.w	$f13,$f9
    # Line 616
    lw	$v0,4128($zero)
    # Line 617
    lw	$v1,4132($zero)
    # Line 618
    lwc1	$f4,48($v0)
    # Line 619
    lwc1	$f8,60($v0)
    # Line 620
    lwc1	$f5,52($v0)
    # Line 621
    lwc1	$f9,4($v1)
    # Line 622
    lwc1	$f7,8($v1)
    # Line 629
    madd.s	$f8,$f8,$f12,$f4
    # Line 630
    madd.s	$f8,$f8,$f13,$f5
    # Line 632
    mov.s	$f10,$f8
    # Line 633
    mul.s	$f7,$f8,$f7
    # Line 634
    swc1	$f8,8($v1)
    # Line 635
    mul.s	$f8,$f8,$f9
    # Line 636
    abs.s	$f4,$f7
    # Line 637
    abs.s	$f8,$f8
    # Line 638
    c.ueq.s	$f4,$f7
    # Line 639
    lwc1	$f4,0($v0)
    # Line 640
    bc1f	.L0dad1b58
    # Line 641
    lwc1	$f9,12($v0)
    # Line 642
    lwc1	$f5,4($v0)
    # Line 649
    madd.s	$f9,$f9,$f12,$f4
    # Line 650
    madd.s	$f9,$f9,$f13,$f5
    # Line 652
    mov.s	$f11,$f9
    # Line 653
    abs.s	$f9,$f9
    # Line 654
    c.ult.s	$f8,$f9
    # Line 655
    lwc1	$f4,12($v1)
    # Line 656
    bc1t	.L0dad1b58
    # Line 657
    nop
    # Line 662
    madd.s	$f4,$f11,$f4,$f10
    # Line 664
    abs.s	$f5,$f4
    # Line 665
    c.ueq.s	$f5,$f4
    # Line 666
    lwc1	$f6,24($v1)
    # Line 667
    bc1f	.L0dad1ae8
    # Line 668
    mul.s	$f6,$f6,$f10
    # Line 669
    c.ult.s	$f4,$f6
    # Line 670
    nop
    # Line 671
    bc1t	.L0dad1b58
    # Line 672
    nop
.L0dad1ae8:
    # Line 674
    lwc1	$f4,16($v0)
    # Line 675
    lwc1	$f9,28($v0)
    # Line 676
    lwc1	$f5,20($v0)
    # Line 683
    madd.s	$f9,$f9,$f12,$f4
    # Line 684
    madd.s	$f9,$f9,$f13,$f5
    # Line 686
    mov.s	$f11,$f9
    # Line 687
    abs.s	$f9,$f9
    # Line 688
    c.ult.s	$f8,$f9
    # Line 689
    nop
    # Line 690
    bc1t	.L0dad1b58
    # Line 691
    lwc1	$f4,16($v1)
    # Line 696
    madd.s	$f4,$f11,$f4,$f10
    # Line 698
    abs.s	$f5,$f4
    # Line 699
    c.ueq.s	$f5,$f4
    # Line 700
    lwc1	$f6,24($v1)
    # Line 701
    bc1f	.L0dad1b3c
    # Line 702
    mul.s	$f6,$f6,$f10
    # Line 703
    c.ult.s	$f4,$f6
    # Line 704
    nop
    # Line 705
    bc1t	.L0dad1b58
    # Line 706
    nop
.L0dad1b3c:
    # Line 713
    lui	$t0,0x8080
    # Line 714
    ori	$t0,$t0,0xc800
    # Line 716
    lui	$v0,0x1
    # Line 718
    sw	$t0,0($v0)
    # Line 719
    sw	$a0,0($v0)
    # Line 720
    jr	$ra
    # Line 721
    sw	$a1,0($v0)
.L0dad1b58:
    # Line 728
    lw	$t9,32($v1)
    # Line 734
    mtc1	$zero,$f14
    # Line 735
    lui	$t0,0x3f80
    # Line 736
    jr	$t9
    # Line 737
    mtc1	$t0,$f15
.end __glOdyim_Vertex2i_mag_line0

# Function: __glOdyim_Vertex2iv_mag_line0
# Declared: Line 744 (Source lines: 744-876)
# Address: 0x0dad1b80 - 0x0dad1cb4 (Size: 308 bytes, Frame: 0)
.globl __glOdyim_Vertex2iv_mag_line0
.ent __glOdyim_Vertex2iv_mag_line0
__glOdyim_Vertex2iv_mag_line0:
    # Line 744
    lw	$a4,0($a0)
    # Line 745
    lw	$a5,4($a0)
    # Line 746
    mtc1	$a4,$f8
    # Line 747
    mtc1	$a5,$f9
    # Line 748
    cvt.s.w	$f12,$f8
    # Line 749
    cvt.s.w	$f13,$f9
    # Line 755
    lw	$v0,4128($zero)
    # Line 756
    lw	$v1,4132($zero)
    # Line 757
    lwc1	$f4,48($v0)
    # Line 758
    lwc1	$f8,60($v0)
    # Line 759
    lwc1	$f5,52($v0)
    # Line 760
    lwc1	$f9,4($v1)
    # Line 761
    lwc1	$f7,8($v1)
    # Line 768
    madd.s	$f8,$f8,$f12,$f4
    # Line 769
    madd.s	$f8,$f8,$f13,$f5
    # Line 771
    mov.s	$f10,$f8
    # Line 772
    mul.s	$f7,$f8,$f7
    # Line 773
    swc1	$f8,8($v1)
    # Line 774
    mul.s	$f8,$f8,$f9
    # Line 775
    abs.s	$f4,$f7
    # Line 776
    abs.s	$f8,$f8
    # Line 777
    c.ueq.s	$f4,$f7
    # Line 778
    lwc1	$f4,0($v0)
    # Line 779
    bc1f	.L0dad1ca0
    # Line 780
    lwc1	$f9,12($v0)
    # Line 781
    lwc1	$f5,4($v0)
    # Line 788
    madd.s	$f9,$f9,$f12,$f4
    # Line 789
    madd.s	$f9,$f9,$f13,$f5
    # Line 791
    mov.s	$f11,$f9
    # Line 792
    abs.s	$f9,$f9
    # Line 793
    c.ult.s	$f8,$f9
    # Line 794
    lwc1	$f4,12($v1)
    # Line 795
    bc1t	.L0dad1ca0
    # Line 796
    nop
    # Line 801
    madd.s	$f4,$f11,$f4,$f10
    # Line 803
    abs.s	$f5,$f4
    # Line 804
    c.ueq.s	$f5,$f4
    # Line 805
    lwc1	$f6,24($v1)
    # Line 806
    bc1f	.L0dad1c30
    # Line 807
    mul.s	$f6,$f6,$f10
    # Line 808
    c.ult.s	$f4,$f6
    # Line 809
    nop
    # Line 810
    bc1t	.L0dad1ca0
    # Line 811
    nop
.L0dad1c30:
    # Line 813
    lwc1	$f4,16($v0)
    # Line 814
    lwc1	$f9,28($v0)
    # Line 815
    lwc1	$f5,20($v0)
    # Line 822
    madd.s	$f9,$f9,$f12,$f4
    # Line 823
    madd.s	$f9,$f9,$f13,$f5
    # Line 825
    mov.s	$f11,$f9
    # Line 826
    abs.s	$f9,$f9
    # Line 827
    c.ult.s	$f8,$f9
    # Line 828
    nop
    # Line 829
    bc1t	.L0dad1ca0
    # Line 830
    lwc1	$f4,16($v1)
    # Line 835
    madd.s	$f4,$f11,$f4,$f10
    # Line 837
    abs.s	$f5,$f4
    # Line 838
    c.ueq.s	$f5,$f4
    # Line 839
    lwc1	$f6,24($v1)
    # Line 840
    bc1f	.L0dad1c84
    # Line 841
    mul.s	$f6,$f6,$f10
    # Line 842
    c.ult.s	$f4,$f6
    # Line 843
    nop
    # Line 844
    bc1t	.L0dad1ca0
    # Line 845
    nop
.L0dad1c84:
    # Line 852
    lui	$t0,0x8080
    # Line 853
    ori	$t0,$t0,0xc800
    # Line 855
    lui	$v0,0x1
    # Line 857
    sw	$t0,0($v0)
    # Line 858
    sw	$a4,0($v0)
    # Line 859
    jr	$ra
    # Line 860
    sw	$a5,0($v0)
.L0dad1ca0:
    # Line 867
    lw	$t9,32($v1)
    # Line 873
    mtc1	$zero,$f14
    # Line 874
    lui	$t0,0x3f80
    # Line 875
    jr	$t9
    # Line 876
    mtc1	$t0,$f15
.end __glOdyim_Vertex2iv_mag_line0

# Function: __glOdyim_Vertex2s_mag_line0
# Declared: Line 883 (Source lines: 883-1013)
# Address: 0x0dad1cc0 - 0x0dad1dec (Size: 300 bytes, Frame: 0)
.globl __glOdyim_Vertex2s_mag_line0
.ent __glOdyim_Vertex2s_mag_line0
__glOdyim_Vertex2s_mag_line0:
    # Line 883
    mtc1	$a0,$f8
    # Line 884
    mtc1	$a1,$f9
    # Line 885
    cvt.s.w	$f12,$f8
    # Line 886
    cvt.s.w	$f13,$f9
    # Line 892
    lw	$v0,4128($zero)
    # Line 893
    lw	$v1,4132($zero)
    # Line 894
    lwc1	$f4,48($v0)
    # Line 895
    lwc1	$f8,60($v0)
    # Line 896
    lwc1	$f5,52($v0)
    # Line 897
    lwc1	$f9,4($v1)
    # Line 898
    lwc1	$f7,8($v1)
    # Line 905
    madd.s	$f8,$f8,$f12,$f4
    # Line 906
    madd.s	$f8,$f8,$f13,$f5
    # Line 908
    mov.s	$f10,$f8
    # Line 909
    mul.s	$f7,$f8,$f7
    # Line 910
    swc1	$f8,8($v1)
    # Line 911
    mul.s	$f8,$f8,$f9
    # Line 912
    abs.s	$f4,$f7
    # Line 913
    abs.s	$f8,$f8
    # Line 914
    c.ueq.s	$f4,$f7
    # Line 915
    lwc1	$f4,0($v0)
    # Line 916
    bc1f	.L0dad1dd8
    # Line 917
    lwc1	$f9,12($v0)
    # Line 918
    lwc1	$f5,4($v0)
    # Line 925
    madd.s	$f9,$f9,$f12,$f4
    # Line 926
    madd.s	$f9,$f9,$f13,$f5
    # Line 928
    mov.s	$f11,$f9
    # Line 929
    abs.s	$f9,$f9
    # Line 930
    c.ult.s	$f8,$f9
    # Line 931
    lwc1	$f4,12($v1)
    # Line 932
    bc1t	.L0dad1dd8
    # Line 933
    nop
    # Line 938
    madd.s	$f4,$f11,$f4,$f10
    # Line 940
    abs.s	$f5,$f4
    # Line 941
    c.ueq.s	$f5,$f4
    # Line 942
    lwc1	$f6,24($v1)
    # Line 943
    bc1f	.L0dad1d68
    # Line 944
    mul.s	$f6,$f6,$f10
    # Line 945
    c.ult.s	$f4,$f6
    # Line 946
    nop
    # Line 947
    bc1t	.L0dad1dd8
    # Line 948
    nop
.L0dad1d68:
    # Line 950
    lwc1	$f4,16($v0)
    # Line 951
    lwc1	$f9,28($v0)
    # Line 952
    lwc1	$f5,20($v0)
    # Line 959
    madd.s	$f9,$f9,$f12,$f4
    # Line 960
    madd.s	$f9,$f9,$f13,$f5
    # Line 962
    mov.s	$f11,$f9
    # Line 963
    abs.s	$f9,$f9
    # Line 964
    c.ult.s	$f8,$f9
    # Line 965
    nop
    # Line 966
    bc1t	.L0dad1dd8
    # Line 967
    lwc1	$f4,16($v1)
    # Line 972
    madd.s	$f4,$f11,$f4,$f10
    # Line 974
    abs.s	$f5,$f4
    # Line 975
    c.ueq.s	$f5,$f4
    # Line 976
    lwc1	$f6,24($v1)
    # Line 977
    bc1f	.L0dad1dbc
    # Line 978
    mul.s	$f6,$f6,$f10
    # Line 979
    c.ult.s	$f4,$f6
    # Line 980
    nop
    # Line 981
    bc1t	.L0dad1dd8
    # Line 982
    nop
.L0dad1dbc:
    # Line 989
    lui	$t0,0x8080
    # Line 990
    ori	$t0,$t0,0xc800
    # Line 992
    lui	$v0,0x1
    # Line 994
    sw	$t0,0($v0)
    # Line 995
    sw	$a0,0($v0)
    # Line 996
    jr	$ra
    # Line 997
    sw	$a1,0($v0)
.L0dad1dd8:
    # Line 1004
    lw	$t9,32($v1)
    # Line 1010
    mtc1	$zero,$f14
    # Line 1011
    lui	$t0,0x3f80
    # Line 1012
    jr	$t9
    # Line 1013
    mtc1	$t0,$f15
.end __glOdyim_Vertex2s_mag_line0

# Function: __glOdyim_Vertex2sv_mag_line0
# Declared: Line 1020 (Source lines: 1020-1152)
# Address: 0x0dad1e00 - 0x0dad1f34 (Size: 308 bytes, Frame: 0)
.globl __glOdyim_Vertex2sv_mag_line0
.ent __glOdyim_Vertex2sv_mag_line0
__glOdyim_Vertex2sv_mag_line0:
    # Line 1020
    lh	$a4,0($a0)
    # Line 1021
    lh	$a5,2($a0)
    # Line 1022
    mtc1	$a4,$f8
    # Line 1023
    mtc1	$a5,$f9
    # Line 1024
    cvt.s.w	$f12,$f8
    # Line 1025
    cvt.s.w	$f13,$f9
    # Line 1031
    lw	$v0,4128($zero)
    # Line 1032
    lw	$v1,4132($zero)
    # Line 1033
    lwc1	$f4,48($v0)
    # Line 1034
    lwc1	$f8,60($v0)
    # Line 1035
    lwc1	$f5,52($v0)
    # Line 1036
    lwc1	$f9,4($v1)
    # Line 1037
    lwc1	$f7,8($v1)
    # Line 1044
    madd.s	$f8,$f8,$f12,$f4
    # Line 1045
    madd.s	$f8,$f8,$f13,$f5
    # Line 1047
    mov.s	$f10,$f8
    # Line 1048
    mul.s	$f7,$f8,$f7
    # Line 1049
    swc1	$f8,8($v1)
    # Line 1050
    mul.s	$f8,$f8,$f9
    # Line 1051
    abs.s	$f4,$f7
    # Line 1052
    abs.s	$f8,$f8
    # Line 1053
    c.ueq.s	$f4,$f7
    # Line 1054
    lwc1	$f4,0($v0)
    # Line 1055
    bc1f	.L0dad1f20
    # Line 1056
    lwc1	$f9,12($v0)
    # Line 1057
    lwc1	$f5,4($v0)
    # Line 1064
    madd.s	$f9,$f9,$f12,$f4
    # Line 1065
    madd.s	$f9,$f9,$f13,$f5
    # Line 1067
    mov.s	$f11,$f9
    # Line 1068
    abs.s	$f9,$f9
    # Line 1069
    c.ult.s	$f8,$f9
    # Line 1070
    lwc1	$f4,12($v1)
    # Line 1071
    bc1t	.L0dad1f20
    # Line 1072
    nop
    # Line 1077
    madd.s	$f4,$f11,$f4,$f10
    # Line 1079
    abs.s	$f5,$f4
    # Line 1080
    c.ueq.s	$f5,$f4
    # Line 1081
    lwc1	$f6,24($v1)
    # Line 1082
    bc1f	.L0dad1eb0
    # Line 1083
    mul.s	$f6,$f6,$f10
    # Line 1084
    c.ult.s	$f4,$f6
    # Line 1085
    nop
    # Line 1086
    bc1t	.L0dad1f20
    # Line 1087
    nop
.L0dad1eb0:
    # Line 1089
    lwc1	$f4,16($v0)
    # Line 1090
    lwc1	$f9,28($v0)
    # Line 1091
    lwc1	$f5,20($v0)
    # Line 1098
    madd.s	$f9,$f9,$f12,$f4
    # Line 1099
    madd.s	$f9,$f9,$f13,$f5
    # Line 1101
    mov.s	$f11,$f9
    # Line 1102
    abs.s	$f9,$f9
    # Line 1103
    c.ult.s	$f8,$f9
    # Line 1104
    nop
    # Line 1105
    bc1t	.L0dad1f20
    # Line 1106
    lwc1	$f4,16($v1)
    # Line 1111
    madd.s	$f4,$f11,$f4,$f10
    # Line 1113
    abs.s	$f5,$f4
    # Line 1114
    c.ueq.s	$f5,$f4
    # Line 1115
    lwc1	$f6,24($v1)
    # Line 1116
    bc1f	.L0dad1f04
    # Line 1117
    mul.s	$f6,$f6,$f10
    # Line 1118
    c.ult.s	$f4,$f6
    # Line 1119
    nop
    # Line 1120
    bc1t	.L0dad1f20
    # Line 1121
    nop
.L0dad1f04:
    # Line 1128
    lui	$t0,0x8080
    # Line 1129
    ori	$t0,$t0,0xc800
    # Line 1131
    lui	$v0,0x1
    # Line 1133
    sw	$t0,0($v0)
    # Line 1134
    sw	$a4,0($v0)
    # Line 1135
    jr	$ra
    # Line 1136
    sw	$a5,0($v0)
.L0dad1f20:
    # Line 1143
    lw	$t9,32($v1)
    # Line 1149
    mtc1	$zero,$f14
    # Line 1150
    lui	$t0,0x3f80
    # Line 1151
    jr	$t9
    # Line 1152
    mtc1	$t0,$f15
.end __glOdyim_Vertex2sv_mag_line0

# Function: __glOdyim_Vertex3d_mag_line0
# Declared: Line 1159 (Source lines: 1159-1303)
# Address: 0x0dad1f40 - 0x0dad2080 (Size: 320 bytes, Frame: 0)
.globl __glOdyim_Vertex3d_mag_line0
.ent __glOdyim_Vertex3d_mag_line0
__glOdyim_Vertex3d_mag_line0:
    # Line 1159
    cvt.s.d	$f12,$f12
    # Line 1160
    cvt.s.d	$f13,$f13
    # Line 1164
    cvt.s.d	$f14,$f14
    # Line 1170
    lw	$v0,4128($zero)
    # Line 1171
    lw	$v1,4132($zero)
    # Line 1172
    lwc1	$f4,48($v0)
    # Line 1173
    lwc1	$f8,60($v0)
    # Line 1174
    lwc1	$f5,52($v0)
    # Line 1175
    lwc1	$f6,56($v0)
    # Line 1176
    lwc1	$f9,4($v1)
    # Line 1177
    lwc1	$f7,8($v1)
    # Line 1186
    madd.s	$f8,$f8,$f12,$f4
    # Line 1187
    madd.s	$f8,$f8,$f13,$f5
    # Line 1188
    madd.s	$f8,$f8,$f14,$f6
    # Line 1190
    mov.s	$f10,$f8
    # Line 1191
    mul.s	$f7,$f8,$f7
    # Line 1192
    swc1	$f8,8($v1)
    # Line 1193
    mul.s	$f8,$f8,$f9
    # Line 1194
    abs.s	$f4,$f7
    # Line 1195
    abs.s	$f8,$f8
    # Line 1196
    c.ueq.s	$f4,$f7
    # Line 1197
    lwc1	$f4,0($v0)
    # Line 1198
    bc1f	.L0dad2070
    # Line 1199
    lwc1	$f9,12($v0)
    # Line 1200
    lwc1	$f5,4($v0)
    # Line 1201
    lwc1	$f6,8($v0)
    # Line 1210
    madd.s	$f9,$f9,$f12,$f4
    # Line 1211
    madd.s	$f9,$f9,$f13,$f5
    # Line 1212
    madd.s	$f9,$f9,$f14,$f6
    # Line 1214
    mov.s	$f11,$f9
    # Line 1215
    abs.s	$f9,$f9
    # Line 1216
    c.ult.s	$f8,$f9
    # Line 1217
    lwc1	$f4,12($v1)
    # Line 1218
    bc1t	.L0dad2070
    # Line 1219
    nop
    # Line 1224
    madd.s	$f4,$f11,$f4,$f10
    # Line 1226
    abs.s	$f5,$f4
    # Line 1227
    c.ueq.s	$f5,$f4
    # Line 1228
    lwc1	$f6,24($v1)
    # Line 1229
    bc1f	.L0dad1ff4
    # Line 1230
    mul.s	$f6,$f6,$f10
    # Line 1231
    c.ult.s	$f4,$f6
    # Line 1232
    nop
    # Line 1233
    bc1t	.L0dad2070
    # Line 1234
    nop
.L0dad1ff4:
    # Line 1236
    lwc1	$f4,16($v0)
    # Line 1237
    lwc1	$f9,28($v0)
    # Line 1238
    lwc1	$f5,20($v0)
    # Line 1239
    lwc1	$f6,24($v0)
    # Line 1248
    madd.s	$f9,$f9,$f12,$f4
    # Line 1249
    madd.s	$f9,$f9,$f13,$f5
    # Line 1250
    madd.s	$f9,$f9,$f14,$f6
    # Line 1252
    mov.s	$f11,$f9
    # Line 1253
    abs.s	$f9,$f9
    # Line 1254
    c.ult.s	$f8,$f9
    # Line 1255
    nop
    # Line 1256
    bc1t	.L0dad2070
    # Line 1257
    lwc1	$f4,16($v1)
    # Line 1262
    madd.s	$f4,$f11,$f4,$f10
    # Line 1264
    abs.s	$f5,$f4
    # Line 1265
    c.ueq.s	$f5,$f4
    # Line 1266
    lwc1	$f6,24($v1)
    # Line 1267
    bc1f	.L0dad2050
    # Line 1268
    mul.s	$f6,$f6,$f10
    # Line 1269
    c.ult.s	$f4,$f6
    # Line 1270
    nop
    # Line 1271
    bc1t	.L0dad2070
    # Line 1272
    nop
.L0dad2050:
    # Line 1279
    lui	$t0,0x8080
    # Line 1280
    ori	$t0,$t0,0xcc03
    # Line 1282
    lui	$v0,0x1
    # Line 1284
    sw	$t0,0($v0)
    # Line 1285
    swc1	$f12,0($v0)
    # Line 1286
    swc1	$f13,0($v0)
    # Line 1287
    jr	$ra
    # Line 1288
    swc1	$f14,0($v0)
.L0dad2070:
    # Line 1295
    lw	$t9,32($v1)
    # Line 1301
    lui	$t0,0x3f80
    # Line 1302
    jr	$t9
    # Line 1303
    mtc1	$t0,$f15
.end __glOdyim_Vertex3d_mag_line0

# Function: __glOdyim_Vertex3dv_mag_line0
# Declared: Line 1310 (Source lines: 1310-1454)
# Address: 0x0dad2080 - 0x0dad21cc (Size: 332 bytes, Frame: 0)
.globl __glOdyim_Vertex3dv_mag_line0
.ent __glOdyim_Vertex3dv_mag_line0
__glOdyim_Vertex3dv_mag_line0:
    # Line 1310
    ldc1	$f12,0($a0)
    # Line 1311
    cvt.s.d	$f12,$f12
    # Line 1312
    ldc1	$f13,8($a0)
    # Line 1313
    cvt.s.d	$f13,$f13
    # Line 1314
    ldc1	$f14,16($a0)
    # Line 1315
    cvt.s.d	$f14,$f14
    # Line 1321
    lw	$v0,4128($zero)
    # Line 1322
    lw	$v1,4132($zero)
    # Line 1323
    lwc1	$f4,48($v0)
    # Line 1324
    lwc1	$f8,60($v0)
    # Line 1325
    lwc1	$f5,52($v0)
    # Line 1326
    lwc1	$f6,56($v0)
    # Line 1327
    lwc1	$f9,4($v1)
    # Line 1328
    lwc1	$f7,8($v1)
    # Line 1337
    madd.s	$f8,$f8,$f12,$f4
    # Line 1338
    madd.s	$f8,$f8,$f13,$f5
    # Line 1339
    madd.s	$f8,$f8,$f14,$f6
    # Line 1341
    mov.s	$f10,$f8
    # Line 1342
    mul.s	$f7,$f8,$f7
    # Line 1343
    swc1	$f8,8($v1)
    # Line 1344
    mul.s	$f8,$f8,$f9
    # Line 1345
    abs.s	$f4,$f7
    # Line 1346
    abs.s	$f8,$f8
    # Line 1347
    c.ueq.s	$f4,$f7
    # Line 1348
    lwc1	$f4,0($v0)
    # Line 1349
    bc1f	.L0dad21bc
    # Line 1350
    lwc1	$f9,12($v0)
    # Line 1351
    lwc1	$f5,4($v0)
    # Line 1352
    lwc1	$f6,8($v0)
    # Line 1361
    madd.s	$f9,$f9,$f12,$f4
    # Line 1362
    madd.s	$f9,$f9,$f13,$f5
    # Line 1363
    madd.s	$f9,$f9,$f14,$f6
    # Line 1365
    mov.s	$f11,$f9
    # Line 1366
    abs.s	$f9,$f9
    # Line 1367
    c.ult.s	$f8,$f9
    # Line 1368
    lwc1	$f4,12($v1)
    # Line 1369
    bc1t	.L0dad21bc
    # Line 1370
    nop
    # Line 1375
    madd.s	$f4,$f11,$f4,$f10
    # Line 1377
    abs.s	$f5,$f4
    # Line 1378
    c.ueq.s	$f5,$f4
    # Line 1379
    lwc1	$f6,24($v1)
    # Line 1380
    bc1f	.L0dad2140
    # Line 1381
    mul.s	$f6,$f6,$f10
    # Line 1382
    c.ult.s	$f4,$f6
    # Line 1383
    nop
    # Line 1384
    bc1t	.L0dad21bc
    # Line 1385
    nop
.L0dad2140:
    # Line 1387
    lwc1	$f4,16($v0)
    # Line 1388
    lwc1	$f9,28($v0)
    # Line 1389
    lwc1	$f5,20($v0)
    # Line 1390
    lwc1	$f6,24($v0)
    # Line 1399
    madd.s	$f9,$f9,$f12,$f4
    # Line 1400
    madd.s	$f9,$f9,$f13,$f5
    # Line 1401
    madd.s	$f9,$f9,$f14,$f6
    # Line 1403
    mov.s	$f11,$f9
    # Line 1404
    abs.s	$f9,$f9
    # Line 1405
    c.ult.s	$f8,$f9
    # Line 1406
    nop
    # Line 1407
    bc1t	.L0dad21bc
    # Line 1408
    lwc1	$f4,16($v1)
    # Line 1413
    madd.s	$f4,$f11,$f4,$f10
    # Line 1415
    abs.s	$f5,$f4
    # Line 1416
    c.ueq.s	$f5,$f4
    # Line 1417
    lwc1	$f6,24($v1)
    # Line 1418
    bc1f	.L0dad219c
    # Line 1419
    mul.s	$f6,$f6,$f10
    # Line 1420
    c.ult.s	$f4,$f6
    # Line 1421
    nop
    # Line 1422
    bc1t	.L0dad21bc
    # Line 1423
    nop
.L0dad219c:
    # Line 1430
    lui	$t0,0x8080
    # Line 1431
    ori	$t0,$t0,0xcc03
    # Line 1433
    lui	$v0,0x1
    # Line 1435
    sw	$t0,0($v0)
    # Line 1436
    swc1	$f12,0($v0)
    # Line 1437
    swc1	$f13,0($v0)
    # Line 1438
    jr	$ra
    # Line 1439
    swc1	$f14,0($v0)
.L0dad21bc:
    # Line 1446
    lw	$t9,32($v1)
    # Line 1452
    lui	$t0,0x3f80
    # Line 1453
    jr	$t9
    # Line 1454
    mtc1	$t0,$f15
.end __glOdyim_Vertex3dv_mag_line0

# Function: __glOdyim_Vertex3f_mag_line0
# Declared: Line 1469 (Source lines: 1469-1602)
# Address: 0x0dad2200 - 0x0dad2334 (Size: 308 bytes, Frame: 0)
.globl __glOdyim_Vertex3f_mag_line0
.ent __glOdyim_Vertex3f_mag_line0
__glOdyim_Vertex3f_mag_line0:
    # Line 1469
    lw	$v0,4128($zero)
    # Line 1470
    lw	$v1,4132($zero)
    # Line 1471
    lwc1	$f4,48($v0)
    # Line 1472
    lwc1	$f8,60($v0)
    # Line 1473
    lwc1	$f5,52($v0)
    # Line 1474
    lwc1	$f6,56($v0)
    # Line 1475
    lwc1	$f9,4($v1)
    # Line 1476
    lwc1	$f7,8($v1)
    # Line 1485
    madd.s	$f8,$f8,$f12,$f4
    # Line 1486
    madd.s	$f8,$f8,$f13,$f5
    # Line 1487
    madd.s	$f8,$f8,$f14,$f6
    # Line 1489
    mov.s	$f10,$f8
    # Line 1490
    mul.s	$f7,$f8,$f7
    # Line 1491
    swc1	$f8,8($v1)
    # Line 1492
    mul.s	$f8,$f8,$f9
    # Line 1493
    abs.s	$f4,$f7
    # Line 1494
    abs.s	$f8,$f8
    # Line 1495
    c.ueq.s	$f4,$f7
    # Line 1496
    lwc1	$f4,0($v0)
    # Line 1497
    bc1f	.L0dad2324
    # Line 1498
    lwc1	$f9,12($v0)
    # Line 1499
    lwc1	$f5,4($v0)
    # Line 1500
    lwc1	$f6,8($v0)
    # Line 1509
    madd.s	$f9,$f9,$f12,$f4
    # Line 1510
    madd.s	$f9,$f9,$f13,$f5
    # Line 1511
    madd.s	$f9,$f9,$f14,$f6
    # Line 1513
    mov.s	$f11,$f9
    # Line 1514
    abs.s	$f9,$f9
    # Line 1515
    c.ult.s	$f8,$f9
    # Line 1516
    lwc1	$f4,12($v1)
    # Line 1517
    bc1t	.L0dad2324
    # Line 1518
    nop
    # Line 1523
    madd.s	$f4,$f11,$f4,$f10
    # Line 1525
    abs.s	$f5,$f4
    # Line 1526
    c.ueq.s	$f5,$f4
    # Line 1527
    lwc1	$f6,24($v1)
    # Line 1528
    bc1f	.L0dad22a8
    # Line 1529
    mul.s	$f6,$f6,$f10
    # Line 1530
    c.ult.s	$f4,$f6
    # Line 1531
    nop
    # Line 1532
    bc1t	.L0dad2324
    # Line 1533
    nop
.L0dad22a8:
    # Line 1535
    lwc1	$f4,16($v0)
    # Line 1536
    lwc1	$f9,28($v0)
    # Line 1537
    lwc1	$f5,20($v0)
    # Line 1538
    lwc1	$f6,24($v0)
    # Line 1547
    madd.s	$f9,$f9,$f12,$f4
    # Line 1548
    madd.s	$f9,$f9,$f13,$f5
    # Line 1549
    madd.s	$f9,$f9,$f14,$f6
    # Line 1551
    mov.s	$f11,$f9
    # Line 1552
    abs.s	$f9,$f9
    # Line 1553
    c.ult.s	$f8,$f9
    # Line 1554
    nop
    # Line 1555
    bc1t	.L0dad2324
    # Line 1556
    lwc1	$f4,16($v1)
    # Line 1561
    madd.s	$f4,$f11,$f4,$f10
    # Line 1563
    abs.s	$f5,$f4
    # Line 1564
    c.ueq.s	$f5,$f4
    # Line 1565
    lwc1	$f6,24($v1)
    # Line 1566
    bc1f	.L0dad2304
    # Line 1567
    mul.s	$f6,$f6,$f10
    # Line 1568
    c.ult.s	$f4,$f6
    # Line 1569
    nop
    # Line 1570
    bc1t	.L0dad2324
    # Line 1571
    nop
.L0dad2304:
    # Line 1578
    lui	$t0,0x8080
    # Line 1579
    ori	$t0,$t0,0xcc03
    # Line 1581
    lui	$v0,0x1
    # Line 1583
    sw	$t0,0($v0)
    # Line 1584
    swc1	$f12,0($v0)
    # Line 1585
    swc1	$f13,0($v0)
    # Line 1586
    jr	$ra
    # Line 1587
    swc1	$f14,0($v0)
.L0dad2324:
    # Line 1594
    lw	$t9,32($v1)
    # Line 1600
    lui	$t0,0x3f80
    # Line 1601
    jr	$t9
    # Line 1602
    mtc1	$t0,$f15
.end __glOdyim_Vertex3f_mag_line0

# Function: __glOdyim_Vertex3fv_mag_line0
# Declared: Line 1609 (Source lines: 1609-1750)
# Address: 0x0dad2340 - 0x0dad2480 (Size: 320 bytes, Frame: 0)
.globl __glOdyim_Vertex3fv_mag_line0
.ent __glOdyim_Vertex3fv_mag_line0
__glOdyim_Vertex3fv_mag_line0:
    # Line 1609
    lwc1	$f12,0($a0)
    # Line 1610
    lwc1	$f13,4($a0)
    # Line 1611
    lwc1	$f14,8($a0)
    # Line 1617
    lw	$v0,4128($zero)
    # Line 1618
    lw	$v1,4132($zero)
    # Line 1619
    lwc1	$f4,48($v0)
    # Line 1620
    lwc1	$f8,60($v0)
    # Line 1621
    lwc1	$f5,52($v0)
    # Line 1622
    lwc1	$f6,56($v0)
    # Line 1623
    lwc1	$f9,4($v1)
    # Line 1624
    lwc1	$f7,8($v1)
    # Line 1633
    madd.s	$f8,$f8,$f12,$f4
    # Line 1634
    madd.s	$f8,$f8,$f13,$f5
    # Line 1635
    madd.s	$f8,$f8,$f14,$f6
    # Line 1637
    mov.s	$f10,$f8
    # Line 1638
    mul.s	$f7,$f8,$f7
    # Line 1639
    swc1	$f8,8($v1)
    # Line 1640
    mul.s	$f8,$f8,$f9
    # Line 1641
    abs.s	$f4,$f7
    # Line 1642
    abs.s	$f8,$f8
    # Line 1643
    c.ueq.s	$f4,$f7
    # Line 1644
    lwc1	$f4,0($v0)
    # Line 1645
    bc1f	.L0dad2470
    # Line 1646
    lwc1	$f9,12($v0)
    # Line 1647
    lwc1	$f5,4($v0)
    # Line 1648
    lwc1	$f6,8($v0)
    # Line 1657
    madd.s	$f9,$f9,$f12,$f4
    # Line 1658
    madd.s	$f9,$f9,$f13,$f5
    # Line 1659
    madd.s	$f9,$f9,$f14,$f6
    # Line 1661
    mov.s	$f11,$f9
    # Line 1662
    abs.s	$f9,$f9
    # Line 1663
    c.ult.s	$f8,$f9
    # Line 1664
    lwc1	$f4,12($v1)
    # Line 1665
    bc1t	.L0dad2470
    # Line 1666
    nop
    # Line 1671
    madd.s	$f4,$f11,$f4,$f10
    # Line 1673
    abs.s	$f5,$f4
    # Line 1674
    c.ueq.s	$f5,$f4
    # Line 1675
    lwc1	$f6,24($v1)
    # Line 1676
    bc1f	.L0dad23f4
    # Line 1677
    mul.s	$f6,$f6,$f10
    # Line 1678
    c.ult.s	$f4,$f6
    # Line 1679
    nop
    # Line 1680
    bc1t	.L0dad2470
    # Line 1681
    nop
.L0dad23f4:
    # Line 1683
    lwc1	$f4,16($v0)
    # Line 1684
    lwc1	$f9,28($v0)
    # Line 1685
    lwc1	$f5,20($v0)
    # Line 1686
    lwc1	$f6,24($v0)
    # Line 1695
    madd.s	$f9,$f9,$f12,$f4
    # Line 1696
    madd.s	$f9,$f9,$f13,$f5
    # Line 1697
    madd.s	$f9,$f9,$f14,$f6
    # Line 1699
    mov.s	$f11,$f9
    # Line 1700
    abs.s	$f9,$f9
    # Line 1701
    c.ult.s	$f8,$f9
    # Line 1702
    nop
    # Line 1703
    bc1t	.L0dad2470
    # Line 1704
    lwc1	$f4,16($v1)
    # Line 1709
    madd.s	$f4,$f11,$f4,$f10
    # Line 1711
    abs.s	$f5,$f4
    # Line 1712
    c.ueq.s	$f5,$f4
    # Line 1713
    lwc1	$f6,24($v1)
    # Line 1714
    bc1f	.L0dad2450
    # Line 1715
    mul.s	$f6,$f6,$f10
    # Line 1716
    c.ult.s	$f4,$f6
    # Line 1717
    nop
    # Line 1718
    bc1t	.L0dad2470
    # Line 1719
    nop
.L0dad2450:
    # Line 1726
    lui	$t0,0x8080
    # Line 1727
    ori	$t0,$t0,0xcc03
    # Line 1729
    lui	$v0,0x1
    # Line 1731
    sw	$t0,0($v0)
    # Line 1732
    swc1	$f12,0($v0)
    # Line 1733
    swc1	$f13,0($v0)
    # Line 1734
    jr	$ra
    # Line 1735
    swc1	$f14,0($v0)
.L0dad2470:
    # Line 1742
    lw	$t9,32($v1)
    # Line 1748
    lui	$t0,0x3f80
    # Line 1749
    jr	$t9
    # Line 1750
    mtc1	$t0,$f15
.end __glOdyim_Vertex3fv_mag_line0

# Function: __glOdyim_Vertex3i_mag_line0
# Declared: Line 1757 (Source lines: 1757-1901)
# Address: 0x0dad2480 - 0x0dad25cc (Size: 332 bytes, Frame: 0)
.globl __glOdyim_Vertex3i_mag_line0
.ent __glOdyim_Vertex3i_mag_line0
__glOdyim_Vertex3i_mag_line0:
    # Line 1757
    mtc1	$a0,$f8
    # Line 1758
    mtc1	$a1,$f9
    # Line 1759
    cvt.s.w	$f12,$f8
    # Line 1760
    mtc1	$a2,$f8
    # Line 1761
    cvt.s.w	$f13,$f9
    # Line 1762
    cvt.s.w	$f14,$f8
    # Line 1768
    lw	$v0,4128($zero)
    # Line 1769
    lw	$v1,4132($zero)
    # Line 1770
    lwc1	$f4,48($v0)
    # Line 1771
    lwc1	$f8,60($v0)
    # Line 1772
    lwc1	$f5,52($v0)
    # Line 1773
    lwc1	$f6,56($v0)
    # Line 1774
    lwc1	$f9,4($v1)
    # Line 1775
    lwc1	$f7,8($v1)
    # Line 1784
    madd.s	$f8,$f8,$f12,$f4
    # Line 1785
    madd.s	$f8,$f8,$f13,$f5
    # Line 1786
    madd.s	$f8,$f8,$f14,$f6
    # Line 1788
    mov.s	$f10,$f8
    # Line 1789
    mul.s	$f7,$f8,$f7
    # Line 1790
    swc1	$f8,8($v1)
    # Line 1791
    mul.s	$f8,$f8,$f9
    # Line 1792
    abs.s	$f4,$f7
    # Line 1793
    abs.s	$f8,$f8
    # Line 1794
    c.ueq.s	$f4,$f7
    # Line 1795
    lwc1	$f4,0($v0)
    # Line 1796
    bc1f	.L0dad25bc
    # Line 1797
    lwc1	$f9,12($v0)
    # Line 1798
    lwc1	$f5,4($v0)
    # Line 1799
    lwc1	$f6,8($v0)
    # Line 1808
    madd.s	$f9,$f9,$f12,$f4
    # Line 1809
    madd.s	$f9,$f9,$f13,$f5
    # Line 1810
    madd.s	$f9,$f9,$f14,$f6
    # Line 1812
    mov.s	$f11,$f9
    # Line 1813
    abs.s	$f9,$f9
    # Line 1814
    c.ult.s	$f8,$f9
    # Line 1815
    lwc1	$f4,12($v1)
    # Line 1816
    bc1t	.L0dad25bc
    # Line 1817
    nop
    # Line 1822
    madd.s	$f4,$f11,$f4,$f10
    # Line 1824
    abs.s	$f5,$f4
    # Line 1825
    c.ueq.s	$f5,$f4
    # Line 1826
    lwc1	$f6,24($v1)
    # Line 1827
    bc1f	.L0dad2540
    # Line 1828
    mul.s	$f6,$f6,$f10
    # Line 1829
    c.ult.s	$f4,$f6
    # Line 1830
    nop
    # Line 1831
    bc1t	.L0dad25bc
    # Line 1832
    nop
.L0dad2540:
    # Line 1834
    lwc1	$f4,16($v0)
    # Line 1835
    lwc1	$f9,28($v0)
    # Line 1836
    lwc1	$f5,20($v0)
    # Line 1837
    lwc1	$f6,24($v0)
    # Line 1846
    madd.s	$f9,$f9,$f12,$f4
    # Line 1847
    madd.s	$f9,$f9,$f13,$f5
    # Line 1848
    madd.s	$f9,$f9,$f14,$f6
    # Line 1850
    mov.s	$f11,$f9
    # Line 1851
    abs.s	$f9,$f9
    # Line 1852
    c.ult.s	$f8,$f9
    # Line 1853
    nop
    # Line 1854
    bc1t	.L0dad25bc
    # Line 1855
    lwc1	$f4,16($v1)
    # Line 1860
    madd.s	$f4,$f11,$f4,$f10
    # Line 1862
    abs.s	$f5,$f4
    # Line 1863
    c.ueq.s	$f5,$f4
    # Line 1864
    lwc1	$f6,24($v1)
    # Line 1865
    bc1f	.L0dad259c
    # Line 1866
    mul.s	$f6,$f6,$f10
    # Line 1867
    c.ult.s	$f4,$f6
    # Line 1868
    nop
    # Line 1869
    bc1t	.L0dad25bc
    # Line 1870
    nop
.L0dad259c:
    # Line 1877
    lui	$t0,0x8080
    # Line 1878
    ori	$t0,$t0,0xcc02
    # Line 1880
    lui	$v0,0x1
    # Line 1882
    sw	$t0,0($v0)
    # Line 1883
    sw	$a0,0($v0)
    # Line 1884
    sw	$a1,0($v0)
    # Line 1885
    jr	$ra
    # Line 1886
    sw	$a2,0($v0)
.L0dad25bc:
    # Line 1893
    lw	$t9,32($v1)
    # Line 1899
    lui	$t0,0x3f80
    # Line 1900
    jr	$t9
    # Line 1901
    mtc1	$t0,$f15
.end __glOdyim_Vertex3i_mag_line0

# Function: __glOdyim_Vertex3iv_mag_line0
# Declared: Line 1908 (Source lines: 1908-2055)
# Address: 0x0dad2600 - 0x0dad2758 (Size: 344 bytes, Frame: 0)
.globl __glOdyim_Vertex3iv_mag_line0
.ent __glOdyim_Vertex3iv_mag_line0
__glOdyim_Vertex3iv_mag_line0:
    # Line 1908
    lw	$a4,0($a0)
    # Line 1909
    lw	$a5,4($a0)
    # Line 1910
    lw	$a6,8($a0)
    # Line 1911
    mtc1	$a4,$f8
    # Line 1912
    mtc1	$a5,$f9
    # Line 1913
    cvt.s.w	$f12,$f8
    # Line 1914
    mtc1	$a6,$f8
    # Line 1915
    cvt.s.w	$f13,$f9
    # Line 1916
    cvt.s.w	$f14,$f8
    # Line 1922
    lw	$v0,4128($zero)
    # Line 1923
    lw	$v1,4132($zero)
    # Line 1924
    lwc1	$f4,48($v0)
    # Line 1925
    lwc1	$f8,60($v0)
    # Line 1926
    lwc1	$f5,52($v0)
    # Line 1927
    lwc1	$f6,56($v0)
    # Line 1928
    lwc1	$f9,4($v1)
    # Line 1929
    lwc1	$f7,8($v1)
    # Line 1938
    madd.s	$f8,$f8,$f12,$f4
    # Line 1939
    madd.s	$f8,$f8,$f13,$f5
    # Line 1940
    madd.s	$f8,$f8,$f14,$f6
    # Line 1942
    mov.s	$f10,$f8
    # Line 1943
    mul.s	$f7,$f8,$f7
    # Line 1944
    swc1	$f8,8($v1)
    # Line 1945
    mul.s	$f8,$f8,$f9
    # Line 1946
    abs.s	$f4,$f7
    # Line 1947
    abs.s	$f8,$f8
    # Line 1948
    c.ueq.s	$f4,$f7
    # Line 1949
    lwc1	$f4,0($v0)
    # Line 1950
    bc1f	.L0dad2748
    # Line 1951
    lwc1	$f9,12($v0)
    # Line 1952
    lwc1	$f5,4($v0)
    # Line 1953
    lwc1	$f6,8($v0)
    # Line 1962
    madd.s	$f9,$f9,$f12,$f4
    # Line 1963
    madd.s	$f9,$f9,$f13,$f5
    # Line 1964
    madd.s	$f9,$f9,$f14,$f6
    # Line 1966
    mov.s	$f11,$f9
    # Line 1967
    abs.s	$f9,$f9
    # Line 1968
    c.ult.s	$f8,$f9
    # Line 1969
    lwc1	$f4,12($v1)
    # Line 1970
    bc1t	.L0dad2748
    # Line 1971
    nop
    # Line 1976
    madd.s	$f4,$f11,$f4,$f10
    # Line 1978
    abs.s	$f5,$f4
    # Line 1979
    c.ueq.s	$f5,$f4
    # Line 1980
    lwc1	$f6,24($v1)
    # Line 1981
    bc1f	.L0dad26cc
    # Line 1982
    mul.s	$f6,$f6,$f10
    # Line 1983
    c.ult.s	$f4,$f6
    # Line 1984
    nop
    # Line 1985
    bc1t	.L0dad2748
    # Line 1986
    nop
.L0dad26cc:
    # Line 1988
    lwc1	$f4,16($v0)
    # Line 1989
    lwc1	$f9,28($v0)
    # Line 1990
    lwc1	$f5,20($v0)
    # Line 1991
    lwc1	$f6,24($v0)
    # Line 2000
    madd.s	$f9,$f9,$f12,$f4
    # Line 2001
    madd.s	$f9,$f9,$f13,$f5
    # Line 2002
    madd.s	$f9,$f9,$f14,$f6
    # Line 2004
    mov.s	$f11,$f9
    # Line 2005
    abs.s	$f9,$f9
    # Line 2006
    c.ult.s	$f8,$f9
    # Line 2007
    nop
    # Line 2008
    bc1t	.L0dad2748
    # Line 2009
    lwc1	$f4,16($v1)
    # Line 2014
    madd.s	$f4,$f11,$f4,$f10
    # Line 2016
    abs.s	$f5,$f4
    # Line 2017
    c.ueq.s	$f5,$f4
    # Line 2018
    lwc1	$f6,24($v1)
    # Line 2019
    bc1f	.L0dad2728
    # Line 2020
    mul.s	$f6,$f6,$f10
    # Line 2021
    c.ult.s	$f4,$f6
    # Line 2022
    nop
    # Line 2023
    bc1t	.L0dad2748
    # Line 2024
    nop
.L0dad2728:
    # Line 2031
    lui	$t0,0x8080
    # Line 2032
    ori	$t0,$t0,0xcc02
    # Line 2034
    lui	$v0,0x1
    # Line 2036
    sw	$t0,0($v0)
    # Line 2037
    sw	$a4,0($v0)
    # Line 2038
    sw	$a5,0($v0)
    # Line 2039
    jr	$ra
    # Line 2040
    sw	$a6,0($v0)
.L0dad2748:
    # Line 2047
    lw	$t9,32($v1)
    # Line 2053
    lui	$t0,0x3f80
    # Line 2054
    jr	$t9
    # Line 2055
    mtc1	$t0,$f15
.end __glOdyim_Vertex3iv_mag_line0

# Function: __glOdyim_Vertex3s_mag_line0
# Declared: Line 2062 (Source lines: 2062-2206)
# Address: 0x0dad2780 - 0x0dad28cc (Size: 332 bytes, Frame: 0)
.globl __glOdyim_Vertex3s_mag_line0
.ent __glOdyim_Vertex3s_mag_line0
__glOdyim_Vertex3s_mag_line0:
    # Line 2062
    mtc1	$a0,$f8
    # Line 2063
    mtc1	$a1,$f9
    # Line 2064
    cvt.s.w	$f12,$f8
    # Line 2065
    mtc1	$a2,$f8
    # Line 2066
    cvt.s.w	$f13,$f9
    # Line 2067
    cvt.s.w	$f14,$f8
    # Line 2073
    lw	$v0,4128($zero)
    # Line 2074
    lw	$v1,4132($zero)
    # Line 2075
    lwc1	$f4,48($v0)
    # Line 2076
    lwc1	$f8,60($v0)
    # Line 2077
    lwc1	$f5,52($v0)
    # Line 2078
    lwc1	$f6,56($v0)
    # Line 2079
    lwc1	$f9,4($v1)
    # Line 2080
    lwc1	$f7,8($v1)
    # Line 2089
    madd.s	$f8,$f8,$f12,$f4
    # Line 2090
    madd.s	$f8,$f8,$f13,$f5
    # Line 2091
    madd.s	$f8,$f8,$f14,$f6
    # Line 2093
    mov.s	$f10,$f8
    # Line 2094
    mul.s	$f7,$f8,$f7
    # Line 2095
    swc1	$f8,8($v1)
    # Line 2096
    mul.s	$f8,$f8,$f9
    # Line 2097
    abs.s	$f4,$f7
    # Line 2098
    abs.s	$f8,$f8
    # Line 2099
    c.ueq.s	$f4,$f7
    # Line 2100
    lwc1	$f4,0($v0)
    # Line 2101
    bc1f	.L0dad28bc
    # Line 2102
    lwc1	$f9,12($v0)
    # Line 2103
    lwc1	$f5,4($v0)
    # Line 2104
    lwc1	$f6,8($v0)
    # Line 2113
    madd.s	$f9,$f9,$f12,$f4
    # Line 2114
    madd.s	$f9,$f9,$f13,$f5
    # Line 2115
    madd.s	$f9,$f9,$f14,$f6
    # Line 2117
    mov.s	$f11,$f9
    # Line 2118
    abs.s	$f9,$f9
    # Line 2119
    c.ult.s	$f8,$f9
    # Line 2120
    lwc1	$f4,12($v1)
    # Line 2121
    bc1t	.L0dad28bc
    # Line 2122
    nop
    # Line 2127
    madd.s	$f4,$f11,$f4,$f10
    # Line 2129
    abs.s	$f5,$f4
    # Line 2130
    c.ueq.s	$f5,$f4
    # Line 2131
    lwc1	$f6,24($v1)
    # Line 2132
    bc1f	.L0dad2840
    # Line 2133
    mul.s	$f6,$f6,$f10
    # Line 2134
    c.ult.s	$f4,$f6
    # Line 2135
    nop
    # Line 2136
    bc1t	.L0dad28bc
    # Line 2137
    nop
.L0dad2840:
    # Line 2139
    lwc1	$f4,16($v0)
    # Line 2140
    lwc1	$f9,28($v0)
    # Line 2141
    lwc1	$f5,20($v0)
    # Line 2142
    lwc1	$f6,24($v0)
    # Line 2151
    madd.s	$f9,$f9,$f12,$f4
    # Line 2152
    madd.s	$f9,$f9,$f13,$f5
    # Line 2153
    madd.s	$f9,$f9,$f14,$f6
    # Line 2155
    mov.s	$f11,$f9
    # Line 2156
    abs.s	$f9,$f9
    # Line 2157
    c.ult.s	$f8,$f9
    # Line 2158
    nop
    # Line 2159
    bc1t	.L0dad28bc
    # Line 2160
    lwc1	$f4,16($v1)
    # Line 2165
    madd.s	$f4,$f11,$f4,$f10
    # Line 2167
    abs.s	$f5,$f4
    # Line 2168
    c.ueq.s	$f5,$f4
    # Line 2169
    lwc1	$f6,24($v1)
    # Line 2170
    bc1f	.L0dad289c
    # Line 2171
    mul.s	$f6,$f6,$f10
    # Line 2172
    c.ult.s	$f4,$f6
    # Line 2173
    nop
    # Line 2174
    bc1t	.L0dad28bc
    # Line 2175
    nop
.L0dad289c:
    # Line 2182
    lui	$t0,0x8080
    # Line 2183
    ori	$t0,$t0,0xcc02
    # Line 2185
    lui	$v0,0x1
    # Line 2187
    sw	$t0,0($v0)
    # Line 2188
    sw	$a0,0($v0)
    # Line 2189
    sw	$a1,0($v0)
    # Line 2190
    jr	$ra
    # Line 2191
    sw	$a2,0($v0)
.L0dad28bc:
    # Line 2198
    lw	$t9,32($v1)
    # Line 2204
    lui	$t0,0x3f80
    # Line 2205
    jr	$t9
    # Line 2206
    mtc1	$t0,$f15
.end __glOdyim_Vertex3s_mag_line0

# Function: __glOdyim_Vertex3sv_mag_line0
# Declared: Line 2213 (Source lines: 2213-2360)
# Address: 0x0dad2900 - 0x0dad2a58 (Size: 344 bytes, Frame: 0)
.globl __glOdyim_Vertex3sv_mag_line0
.ent __glOdyim_Vertex3sv_mag_line0
__glOdyim_Vertex3sv_mag_line0:
    # Line 2213
    lh	$a4,0($a0)
    # Line 2214
    lh	$a5,2($a0)
    # Line 2215
    lh	$a6,4($a0)
    # Line 2216
    mtc1	$a4,$f8
    # Line 2217
    mtc1	$a5,$f9
    # Line 2218
    cvt.s.w	$f12,$f8
    # Line 2219
    mtc1	$a6,$f8
    # Line 2220
    cvt.s.w	$f13,$f9
    # Line 2221
    cvt.s.w	$f14,$f8
    # Line 2227
    lw	$v0,4128($zero)
    # Line 2228
    lw	$v1,4132($zero)
    # Line 2229
    lwc1	$f4,48($v0)
    # Line 2230
    lwc1	$f8,60($v0)
    # Line 2231
    lwc1	$f5,52($v0)
    # Line 2232
    lwc1	$f6,56($v0)
    # Line 2233
    lwc1	$f9,4($v1)
    # Line 2234
    lwc1	$f7,8($v1)
    # Line 2243
    madd.s	$f8,$f8,$f12,$f4
    # Line 2244
    madd.s	$f8,$f8,$f13,$f5
    # Line 2245
    madd.s	$f8,$f8,$f14,$f6
    # Line 2247
    mov.s	$f10,$f8
    # Line 2248
    mul.s	$f7,$f8,$f7
    # Line 2249
    swc1	$f8,8($v1)
    # Line 2250
    mul.s	$f8,$f8,$f9
    # Line 2251
    abs.s	$f4,$f7
    # Line 2252
    abs.s	$f8,$f8
    # Line 2253
    c.ueq.s	$f4,$f7
    # Line 2254
    lwc1	$f4,0($v0)
    # Line 2255
    bc1f	.L0dad2a48
    # Line 2256
    lwc1	$f9,12($v0)
    # Line 2257
    lwc1	$f5,4($v0)
    # Line 2258
    lwc1	$f6,8($v0)
    # Line 2267
    madd.s	$f9,$f9,$f12,$f4
    # Line 2268
    madd.s	$f9,$f9,$f13,$f5
    # Line 2269
    madd.s	$f9,$f9,$f14,$f6
    # Line 2271
    mov.s	$f11,$f9
    # Line 2272
    abs.s	$f9,$f9
    # Line 2273
    c.ult.s	$f8,$f9
    # Line 2274
    lwc1	$f4,12($v1)
    # Line 2275
    bc1t	.L0dad2a48
    # Line 2276
    nop
    # Line 2281
    madd.s	$f4,$f11,$f4,$f10
    # Line 2283
    abs.s	$f5,$f4
    # Line 2284
    c.ueq.s	$f5,$f4
    # Line 2285
    lwc1	$f6,24($v1)
    # Line 2286
    bc1f	.L0dad29cc
    # Line 2287
    mul.s	$f6,$f6,$f10
    # Line 2288
    c.ult.s	$f4,$f6
    # Line 2289
    nop
    # Line 2290
    bc1t	.L0dad2a48
    # Line 2291
    nop
.L0dad29cc:
    # Line 2293
    lwc1	$f4,16($v0)
    # Line 2294
    lwc1	$f9,28($v0)
    # Line 2295
    lwc1	$f5,20($v0)
    # Line 2296
    lwc1	$f6,24($v0)
    # Line 2305
    madd.s	$f9,$f9,$f12,$f4
    # Line 2306
    madd.s	$f9,$f9,$f13,$f5
    # Line 2307
    madd.s	$f9,$f9,$f14,$f6
    # Line 2309
    mov.s	$f11,$f9
    # Line 2310
    abs.s	$f9,$f9
    # Line 2311
    c.ult.s	$f8,$f9
    # Line 2312
    nop
    # Line 2313
    bc1t	.L0dad2a48
    # Line 2314
    lwc1	$f4,16($v1)
    # Line 2319
    madd.s	$f4,$f11,$f4,$f10
    # Line 2321
    abs.s	$f5,$f4
    # Line 2322
    c.ueq.s	$f5,$f4
    # Line 2323
    lwc1	$f6,24($v1)
    # Line 2324
    bc1f	.L0dad2a28
    # Line 2325
    mul.s	$f6,$f6,$f10
    # Line 2326
    c.ult.s	$f4,$f6
    # Line 2327
    nop
    # Line 2328
    bc1t	.L0dad2a48
    # Line 2329
    nop
.L0dad2a28:
    # Line 2336
    lui	$t0,0x8080
    # Line 2337
    ori	$t0,$t0,0xcc02
    # Line 2339
    lui	$v0,0x1
    # Line 2341
    sw	$t0,0($v0)
    # Line 2342
    sw	$a4,0($v0)
    # Line 2343
    sw	$a5,0($v0)
    # Line 2344
    jr	$ra
    # Line 2345
    sw	$a6,0($v0)
.L0dad2a48:
    # Line 2352
    lw	$t9,32($v1)
    # Line 2358
    lui	$t0,0x3f80
    # Line 2359
    jr	$t9
    # Line 2360
    mtc1	$t0,$f15
.end __glOdyim_Vertex3sv_mag_line0

# Function: __glOdyim_Vertex4d_mag_line0
# Declared: Line 2367 (Source lines: 2367-2516)
# Address: 0x0dad2a80 - 0x0dad2bd0 (Size: 336 bytes, Frame: 0)
.globl __glOdyim_Vertex4d_mag_line0
.ent __glOdyim_Vertex4d_mag_line0
__glOdyim_Vertex4d_mag_line0:
    # Line 2367
    cvt.s.d	$f12,$f12
    # Line 2368
    cvt.s.d	$f13,$f13
    # Line 2373
    cvt.s.d	$f14,$f14
    # Line 2374
    cvt.s.d	$f15,$f15
    # Line 2380
    lw	$v0,4128($zero)
    # Line 2381
    lw	$v1,4132($zero)
    # Line 2382
    lwc1	$f4,48($v0)
    # Line 2383
    lwc1	$f7,60($v0)
    # Line 2384
    lwc1	$f5,52($v0)
    # Line 2385
    lwc1	$f6,56($v0)
    # Line 2386
    lwc1	$f9,4($v1)
    # Line 2387
    mul.s	$f8,$f12,$f4
    # Line 2396
    madd.s	$f8,$f8,$f13,$f5
    # Line 2397
    madd.s	$f8,$f8,$f14,$f6
    # Line 2398
    madd.s	$f8,$f8,$f15,$f7
    # Line 2400
    lwc1	$f7,8($v1)
    # Line 2401
    mov.s	$f10,$f8
    # Line 2402
    mul.s	$f7,$f8,$f7
    # Line 2403
    swc1	$f8,8($v1)
    # Line 2404
    mul.s	$f8,$f9,$f8
    # Line 2405
    abs.s	$f4,$f7
    # Line 2406
    abs.s	$f8,$f8
    # Line 2407
    c.ueq.s	$f4,$f7
    # Line 2408
    lwc1	$f4,0($v0)
    # Line 2409
    bc1f	.L0dad2bc4
    # Line 2410
    lwc1	$f7,12($v0)
    # Line 2411
    lwc1	$f5,4($v0)
    # Line 2412
    lwc1	$f6,8($v0)
    # Line 2413
    mul.s	$f9,$f12,$f4
    # Line 2422
    madd.s	$f9,$f9,$f13,$f5
    # Line 2423
    madd.s	$f9,$f9,$f14,$f6
    # Line 2424
    madd.s	$f9,$f9,$f15,$f7
    # Line 2426
    mov.s	$f11,$f9
    # Line 2427
    abs.s	$f9,$f9
    # Line 2428
    c.ult.s	$f8,$f9
    # Line 2429
    lwc1	$f4,12($v1)
    # Line 2430
    bc1t	.L0dad2bc4
    # Line 2431
    nop
    # Line 2436
    madd.s	$f4,$f11,$f4,$f10
    # Line 2438
    abs.s	$f5,$f4
    # Line 2439
    c.ueq.s	$f5,$f4
    # Line 2440
    lwc1	$f6,24($v1)
    # Line 2441
    bc1f	.L0dad2b40
    # Line 2442
    mul.s	$f6,$f6,$f10
    # Line 2443
    c.ult.s	$f4,$f6
    # Line 2444
    nop
    # Line 2445
    bc1t	.L0dad2bc4
    # Line 2446
    nop
.L0dad2b40:
    # Line 2448
    lwc1	$f4,16($v0)
    # Line 2449
    lwc1	$f7,28($v0)
    # Line 2450
    lwc1	$f5,20($v0)
    # Line 2451
    lwc1	$f6,24($v0)
    # Line 2452
    mul.s	$f9,$f12,$f4
    # Line 2461
    madd.s	$f9,$f9,$f13,$f5
    # Line 2462
    madd.s	$f9,$f9,$f14,$f6
    # Line 2463
    madd.s	$f9,$f9,$f15,$f7
    # Line 2465
    mov.s	$f11,$f9
    # Line 2466
    abs.s	$f9,$f9
    # Line 2467
    c.ult.s	$f8,$f9
    # Line 2468
    nop
    # Line 2469
    bc1t	.L0dad2bc4
    # Line 2470
    lwc1	$f4,16($v1)
    # Line 2475
    madd.s	$f4,$f11,$f4,$f10
    # Line 2477
    abs.s	$f5,$f4
    # Line 2478
    c.ueq.s	$f5,$f4
    # Line 2479
    lwc1	$f6,24($v1)
    # Line 2480
    bc1f	.L0dad2ba0
    # Line 2481
    mul.s	$f6,$f6,$f10
    # Line 2482
    c.ult.s	$f4,$f6
    # Line 2483
    nop
    # Line 2484
    bc1t	.L0dad2bc4
    # Line 2485
    nop
.L0dad2ba0:
    # Line 2492
    lui	$t0,0x8080
    # Line 2493
    ori	$t0,$t0,0xd005
    # Line 2495
    lui	$v0,0x1
    # Line 2497
    sw	$t0,0($v0)
    # Line 2498
    swc1	$f12,0($v0)
    # Line 2499
    swc1	$f13,0($v0)
    # Line 2500
    swc1	$f14,0($v0)
    # Line 2501
    jr	$ra
    # Line 2502
    swc1	$f15,0($v0)
.L0dad2bc4:
    # Line 2509
    lw	$t9,32($v1)
    # Line 2515
    jr	$t9
    # Line 2516
    nop
.end __glOdyim_Vertex4d_mag_line0

# Function: __glOdyim_Vertex4dv_mag_line0
# Declared: Line 2523 (Source lines: 2523-2672)
# Address: 0x0dad2c00 - 0x0dad2d60 (Size: 352 bytes, Frame: 0)
.globl __glOdyim_Vertex4dv_mag_line0
.ent __glOdyim_Vertex4dv_mag_line0
__glOdyim_Vertex4dv_mag_line0:
    # Line 2523
    ldc1	$f12,0($a0)
    # Line 2524
    cvt.s.d	$f12,$f12
    # Line 2525
    ldc1	$f13,8($a0)
    # Line 2526
    cvt.s.d	$f13,$f13
    # Line 2527
    ldc1	$f14,16($a0)
    # Line 2528
    cvt.s.d	$f14,$f14
    # Line 2529
    ldc1	$f15,24($a0)
    # Line 2530
    cvt.s.d	$f15,$f15
    # Line 2536
    lw	$v0,4128($zero)
    # Line 2537
    lw	$v1,4132($zero)
    # Line 2538
    lwc1	$f4,48($v0)
    # Line 2539
    lwc1	$f7,60($v0)
    # Line 2540
    lwc1	$f5,52($v0)
    # Line 2541
    lwc1	$f6,56($v0)
    # Line 2542
    lwc1	$f9,4($v1)
    # Line 2543
    mul.s	$f8,$f12,$f4
    # Line 2552
    madd.s	$f8,$f8,$f13,$f5
    # Line 2553
    madd.s	$f8,$f8,$f14,$f6
    # Line 2554
    madd.s	$f8,$f8,$f15,$f7
    # Line 2556
    lwc1	$f7,8($v1)
    # Line 2557
    mov.s	$f10,$f8
    # Line 2558
    mul.s	$f7,$f8,$f7
    # Line 2559
    swc1	$f8,8($v1)
    # Line 2560
    mul.s	$f8,$f9,$f8
    # Line 2561
    abs.s	$f4,$f7
    # Line 2562
    abs.s	$f8,$f8
    # Line 2563
    c.ueq.s	$f4,$f7
    # Line 2564
    lwc1	$f4,0($v0)
    # Line 2565
    bc1f	.L0dad2d54
    # Line 2566
    lwc1	$f7,12($v0)
    # Line 2567
    lwc1	$f5,4($v0)
    # Line 2568
    lwc1	$f6,8($v0)
    # Line 2569
    mul.s	$f9,$f12,$f4
    # Line 2578
    madd.s	$f9,$f9,$f13,$f5
    # Line 2579
    madd.s	$f9,$f9,$f14,$f6
    # Line 2580
    madd.s	$f9,$f9,$f15,$f7
    # Line 2582
    mov.s	$f11,$f9
    # Line 2583
    abs.s	$f9,$f9
    # Line 2584
    c.ult.s	$f8,$f9
    # Line 2585
    lwc1	$f4,12($v1)
    # Line 2586
    bc1t	.L0dad2d54
    # Line 2587
    nop
    # Line 2592
    madd.s	$f4,$f11,$f4,$f10
    # Line 2594
    abs.s	$f5,$f4
    # Line 2595
    c.ueq.s	$f5,$f4
    # Line 2596
    lwc1	$f6,24($v1)
    # Line 2597
    bc1f	.L0dad2cd0
    # Line 2598
    mul.s	$f6,$f6,$f10
    # Line 2599
    c.ult.s	$f4,$f6
    # Line 2600
    nop
    # Line 2601
    bc1t	.L0dad2d54
    # Line 2602
    nop
.L0dad2cd0:
    # Line 2604
    lwc1	$f4,16($v0)
    # Line 2605
    lwc1	$f7,28($v0)
    # Line 2606
    lwc1	$f5,20($v0)
    # Line 2607
    lwc1	$f6,24($v0)
    # Line 2608
    mul.s	$f9,$f12,$f4
    # Line 2617
    madd.s	$f9,$f9,$f13,$f5
    # Line 2618
    madd.s	$f9,$f9,$f14,$f6
    # Line 2619
    madd.s	$f9,$f9,$f15,$f7
    # Line 2621
    mov.s	$f11,$f9
    # Line 2622
    abs.s	$f9,$f9
    # Line 2623
    c.ult.s	$f8,$f9
    # Line 2624
    nop
    # Line 2625
    bc1t	.L0dad2d54
    # Line 2626
    lwc1	$f4,16($v1)
    # Line 2631
    madd.s	$f4,$f11,$f4,$f10
    # Line 2633
    abs.s	$f5,$f4
    # Line 2634
    c.ueq.s	$f5,$f4
    # Line 2635
    lwc1	$f6,24($v1)
    # Line 2636
    bc1f	.L0dad2d30
    # Line 2637
    mul.s	$f6,$f6,$f10
    # Line 2638
    c.ult.s	$f4,$f6
    # Line 2639
    nop
    # Line 2640
    bc1t	.L0dad2d54
    # Line 2641
    nop
.L0dad2d30:
    # Line 2648
    lui	$t0,0x8080
    # Line 2649
    ori	$t0,$t0,0xd005
    # Line 2651
    lui	$v0,0x1
    # Line 2653
    sw	$t0,0($v0)
    # Line 2654
    swc1	$f12,0($v0)
    # Line 2655
    swc1	$f13,0($v0)
    # Line 2656
    swc1	$f14,0($v0)
    # Line 2657
    jr	$ra
    # Line 2658
    swc1	$f15,0($v0)
.L0dad2d54:
    # Line 2665
    lw	$t9,32($v1)
    # Line 2671
    jr	$t9
    # Line 2672
    nop
.end __glOdyim_Vertex4dv_mag_line0

# Function: __glOdyim_Vertex4f_mag_line0
# Declared: Line 2688 (Source lines: 2688-2824)
# Address: 0x0dad2d80 - 0x0dad2ec0 (Size: 320 bytes, Frame: 0)
.globl __glOdyim_Vertex4f_mag_line0
.ent __glOdyim_Vertex4f_mag_line0
__glOdyim_Vertex4f_mag_line0:
    # Line 2688
    lw	$v0,4128($zero)
    # Line 2689
    lw	$v1,4132($zero)
    # Line 2690
    lwc1	$f4,48($v0)
    # Line 2691
    lwc1	$f7,60($v0)
    # Line 2692
    lwc1	$f5,52($v0)
    # Line 2693
    lwc1	$f6,56($v0)
    # Line 2694
    lwc1	$f9,4($v1)
    # Line 2695
    mul.s	$f8,$f12,$f4
    # Line 2704
    madd.s	$f8,$f8,$f13,$f5
    # Line 2705
    madd.s	$f8,$f8,$f14,$f6
    # Line 2706
    madd.s	$f8,$f8,$f15,$f7
    # Line 2708
    lwc1	$f7,8($v1)
    # Line 2709
    mov.s	$f10,$f8
    # Line 2710
    mul.s	$f7,$f8,$f7
    # Line 2711
    swc1	$f8,8($v1)
    # Line 2712
    mul.s	$f8,$f9,$f8
    # Line 2713
    abs.s	$f4,$f7
    # Line 2714
    abs.s	$f8,$f8
    # Line 2715
    c.ueq.s	$f4,$f7
    # Line 2716
    lwc1	$f4,0($v0)
    # Line 2717
    bc1f	.L0dad2eb4
    # Line 2718
    lwc1	$f7,12($v0)
    # Line 2719
    lwc1	$f5,4($v0)
    # Line 2720
    lwc1	$f6,8($v0)
    # Line 2721
    mul.s	$f9,$f12,$f4
    # Line 2730
    madd.s	$f9,$f9,$f13,$f5
    # Line 2731
    madd.s	$f9,$f9,$f14,$f6
    # Line 2732
    madd.s	$f9,$f9,$f15,$f7
    # Line 2734
    mov.s	$f11,$f9
    # Line 2735
    abs.s	$f9,$f9
    # Line 2736
    c.ult.s	$f8,$f9
    # Line 2737
    lwc1	$f4,12($v1)
    # Line 2738
    bc1t	.L0dad2eb4
    # Line 2739
    nop
    # Line 2744
    madd.s	$f4,$f11,$f4,$f10
    # Line 2746
    abs.s	$f5,$f4
    # Line 2747
    c.ueq.s	$f5,$f4
    # Line 2748
    lwc1	$f6,24($v1)
    # Line 2749
    bc1f	.L0dad2e30
    # Line 2750
    mul.s	$f6,$f6,$f10
    # Line 2751
    c.ult.s	$f4,$f6
    # Line 2752
    nop
    # Line 2753
    bc1t	.L0dad2eb4
    # Line 2754
    nop
.L0dad2e30:
    # Line 2756
    lwc1	$f4,16($v0)
    # Line 2757
    lwc1	$f7,28($v0)
    # Line 2758
    lwc1	$f5,20($v0)
    # Line 2759
    lwc1	$f6,24($v0)
    # Line 2760
    mul.s	$f9,$f12,$f4
    # Line 2769
    madd.s	$f9,$f9,$f13,$f5
    # Line 2770
    madd.s	$f9,$f9,$f14,$f6
    # Line 2771
    madd.s	$f9,$f9,$f15,$f7
    # Line 2773
    mov.s	$f11,$f9
    # Line 2774
    abs.s	$f9,$f9
    # Line 2775
    c.ult.s	$f8,$f9
    # Line 2776
    nop
    # Line 2777
    bc1t	.L0dad2eb4
    # Line 2778
    lwc1	$f4,16($v1)
    # Line 2783
    madd.s	$f4,$f11,$f4,$f10
    # Line 2785
    abs.s	$f5,$f4
    # Line 2786
    c.ueq.s	$f5,$f4
    # Line 2787
    lwc1	$f6,24($v1)
    # Line 2788
    bc1f	.L0dad2e90
    # Line 2789
    mul.s	$f6,$f6,$f10
    # Line 2790
    c.ult.s	$f4,$f6
    # Line 2791
    nop
    # Line 2792
    bc1t	.L0dad2eb4
    # Line 2793
    nop
.L0dad2e90:
    # Line 2800
    lui	$t0,0x8080
    # Line 2801
    ori	$t0,$t0,0xd005
    # Line 2803
    lui	$v0,0x1
    # Line 2805
    sw	$t0,0($v0)
    # Line 2806
    swc1	$f12,0($v0)
    # Line 2807
    swc1	$f13,0($v0)
    # Line 2808
    swc1	$f14,0($v0)
    # Line 2809
    jr	$ra
    # Line 2810
    swc1	$f15,0($v0)
.L0dad2eb4:
    # Line 2817
    lw	$t9,32($v1)
    # Line 2823
    jr	$t9
    # Line 2824
    nop
.end __glOdyim_Vertex4f_mag_line0

# Function: __glOdyim_Vertex4fv_mag_line0
# Declared: Line 2831 (Source lines: 2831-2976)
# Address: 0x0dad2ec0 - 0x0dad3010 (Size: 336 bytes, Frame: 0)
.globl __glOdyim_Vertex4fv_mag_line0
.ent __glOdyim_Vertex4fv_mag_line0
__glOdyim_Vertex4fv_mag_line0:
    # Line 2831
    lwc1	$f12,0($a0)
    # Line 2832
    lwc1	$f13,4($a0)
    # Line 2833
    lwc1	$f14,8($a0)
    # Line 2834
    lwc1	$f15,12($a0)
    # Line 2840
    lw	$v0,4128($zero)
    # Line 2841
    lw	$v1,4132($zero)
    # Line 2842
    lwc1	$f4,48($v0)
    # Line 2843
    lwc1	$f7,60($v0)
    # Line 2844
    lwc1	$f5,52($v0)
    # Line 2845
    lwc1	$f6,56($v0)
    # Line 2846
    lwc1	$f9,4($v1)
    # Line 2847
    mul.s	$f8,$f12,$f4
    # Line 2856
    madd.s	$f8,$f8,$f13,$f5
    # Line 2857
    madd.s	$f8,$f8,$f14,$f6
    # Line 2858
    madd.s	$f8,$f8,$f15,$f7
    # Line 2860
    lwc1	$f7,8($v1)
    # Line 2861
    mov.s	$f10,$f8
    # Line 2862
    mul.s	$f7,$f8,$f7
    # Line 2863
    swc1	$f8,8($v1)
    # Line 2864
    mul.s	$f8,$f9,$f8
    # Line 2865
    abs.s	$f4,$f7
    # Line 2866
    abs.s	$f8,$f8
    # Line 2867
    c.ueq.s	$f4,$f7
    # Line 2868
    lwc1	$f4,0($v0)
    # Line 2869
    bc1f	.L0dad3004
    # Line 2870
    lwc1	$f7,12($v0)
    # Line 2871
    lwc1	$f5,4($v0)
    # Line 2872
    lwc1	$f6,8($v0)
    # Line 2873
    mul.s	$f9,$f12,$f4
    # Line 2882
    madd.s	$f9,$f9,$f13,$f5
    # Line 2883
    madd.s	$f9,$f9,$f14,$f6
    # Line 2884
    madd.s	$f9,$f9,$f15,$f7
    # Line 2886
    mov.s	$f11,$f9
    # Line 2887
    abs.s	$f9,$f9
    # Line 2888
    c.ult.s	$f8,$f9
    # Line 2889
    lwc1	$f4,12($v1)
    # Line 2890
    bc1t	.L0dad3004
    # Line 2891
    nop
    # Line 2896
    madd.s	$f4,$f11,$f4,$f10
    # Line 2898
    abs.s	$f5,$f4
    # Line 2899
    c.ueq.s	$f5,$f4
    # Line 2900
    lwc1	$f6,24($v1)
    # Line 2901
    bc1f	.L0dad2f80
    # Line 2902
    mul.s	$f6,$f6,$f10
    # Line 2903
    c.ult.s	$f4,$f6
    # Line 2904
    nop
    # Line 2905
    bc1t	.L0dad3004
    # Line 2906
    nop
.L0dad2f80:
    # Line 2908
    lwc1	$f4,16($v0)
    # Line 2909
    lwc1	$f7,28($v0)
    # Line 2910
    lwc1	$f5,20($v0)
    # Line 2911
    lwc1	$f6,24($v0)
    # Line 2912
    mul.s	$f9,$f12,$f4
    # Line 2921
    madd.s	$f9,$f9,$f13,$f5
    # Line 2922
    madd.s	$f9,$f9,$f14,$f6
    # Line 2923
    madd.s	$f9,$f9,$f15,$f7
    # Line 2925
    mov.s	$f11,$f9
    # Line 2926
    abs.s	$f9,$f9
    # Line 2927
    c.ult.s	$f8,$f9
    # Line 2928
    nop
    # Line 2929
    bc1t	.L0dad3004
    # Line 2930
    lwc1	$f4,16($v1)
    # Line 2935
    madd.s	$f4,$f11,$f4,$f10
    # Line 2937
    abs.s	$f5,$f4
    # Line 2938
    c.ueq.s	$f5,$f4
    # Line 2939
    lwc1	$f6,24($v1)
    # Line 2940
    bc1f	.L0dad2fe0
    # Line 2941
    mul.s	$f6,$f6,$f10
    # Line 2942
    c.ult.s	$f4,$f6
    # Line 2943
    nop
    # Line 2944
    bc1t	.L0dad3004
    # Line 2945
    nop
.L0dad2fe0:
    # Line 2952
    lui	$t0,0x8080
    # Line 2953
    ori	$t0,$t0,0xd005
    # Line 2955
    lui	$v0,0x1
    # Line 2957
    sw	$t0,0($v0)
    # Line 2958
    swc1	$f12,0($v0)
    # Line 2959
    swc1	$f13,0($v0)
    # Line 2960
    swc1	$f14,0($v0)
    # Line 2961
    jr	$ra
    # Line 2962
    swc1	$f15,0($v0)
.L0dad3004:
    # Line 2969
    lw	$t9,32($v1)
    # Line 2975
    jr	$t9
    # Line 2976
    nop
.end __glOdyim_Vertex4fv_mag_line0

# Function: __glOdyim_Vertex4i_mag_line0
# Declared: Line 2983 (Source lines: 2983-3132)
# Address: 0x0dad3040 - 0x0dad31a0 (Size: 352 bytes, Frame: 0)
.globl __glOdyim_Vertex4i_mag_line0
.ent __glOdyim_Vertex4i_mag_line0
__glOdyim_Vertex4i_mag_line0:
    # Line 2983
    mtc1	$a0,$f8
    # Line 2984
    mtc1	$a1,$f9
    # Line 2985
    cvt.s.w	$f12,$f8
    # Line 2986
    cvt.s.w	$f13,$f9
    # Line 2987
    mtc1	$a2,$f8
    # Line 2988
    mtc1	$a3,$f9
    # Line 2989
    cvt.s.w	$f14,$f8
    # Line 2990
    cvt.s.w	$f15,$f9
    # Line 2996
    lw	$v0,4128($zero)
    # Line 2997
    lw	$v1,4132($zero)
    # Line 2998
    lwc1	$f4,48($v0)
    # Line 2999
    lwc1	$f7,60($v0)
    # Line 3000
    lwc1	$f5,52($v0)
    # Line 3001
    lwc1	$f6,56($v0)
    # Line 3002
    lwc1	$f9,4($v1)
    # Line 3003
    mul.s	$f8,$f12,$f4
    # Line 3012
    madd.s	$f8,$f8,$f13,$f5
    # Line 3013
    madd.s	$f8,$f8,$f14,$f6
    # Line 3014
    madd.s	$f8,$f8,$f15,$f7
    # Line 3016
    lwc1	$f7,8($v1)
    # Line 3017
    mov.s	$f10,$f8
    # Line 3018
    mul.s	$f7,$f8,$f7
    # Line 3019
    swc1	$f8,8($v1)
    # Line 3020
    mul.s	$f8,$f9,$f8
    # Line 3021
    abs.s	$f4,$f7
    # Line 3022
    abs.s	$f8,$f8
    # Line 3023
    c.ueq.s	$f4,$f7
    # Line 3024
    lwc1	$f4,0($v0)
    # Line 3025
    bc1f	.L0dad3194
    # Line 3026
    lwc1	$f7,12($v0)
    # Line 3027
    lwc1	$f5,4($v0)
    # Line 3028
    lwc1	$f6,8($v0)
    # Line 3029
    mul.s	$f9,$f12,$f4
    # Line 3038
    madd.s	$f9,$f9,$f13,$f5
    # Line 3039
    madd.s	$f9,$f9,$f14,$f6
    # Line 3040
    madd.s	$f9,$f9,$f15,$f7
    # Line 3042
    mov.s	$f11,$f9
    # Line 3043
    abs.s	$f9,$f9
    # Line 3044
    c.ult.s	$f8,$f9
    # Line 3045
    lwc1	$f4,12($v1)
    # Line 3046
    bc1t	.L0dad3194
    # Line 3047
    nop
    # Line 3052
    madd.s	$f4,$f11,$f4,$f10
    # Line 3054
    abs.s	$f5,$f4
    # Line 3055
    c.ueq.s	$f5,$f4
    # Line 3056
    lwc1	$f6,24($v1)
    # Line 3057
    bc1f	.L0dad3110
    # Line 3058
    mul.s	$f6,$f6,$f10
    # Line 3059
    c.ult.s	$f4,$f6
    # Line 3060
    nop
    # Line 3061
    bc1t	.L0dad3194
    # Line 3062
    nop
.L0dad3110:
    # Line 3064
    lwc1	$f4,16($v0)
    # Line 3065
    lwc1	$f7,28($v0)
    # Line 3066
    lwc1	$f5,20($v0)
    # Line 3067
    lwc1	$f6,24($v0)
    # Line 3068
    mul.s	$f9,$f12,$f4
    # Line 3077
    madd.s	$f9,$f9,$f13,$f5
    # Line 3078
    madd.s	$f9,$f9,$f14,$f6
    # Line 3079
    madd.s	$f9,$f9,$f15,$f7
    # Line 3081
    mov.s	$f11,$f9
    # Line 3082
    abs.s	$f9,$f9
    # Line 3083
    c.ult.s	$f8,$f9
    # Line 3084
    nop
    # Line 3085
    bc1t	.L0dad3194
    # Line 3086
    lwc1	$f4,16($v1)
    # Line 3091
    madd.s	$f4,$f11,$f4,$f10
    # Line 3093
    abs.s	$f5,$f4
    # Line 3094
    c.ueq.s	$f5,$f4
    # Line 3095
    lwc1	$f6,24($v1)
    # Line 3096
    bc1f	.L0dad3170
    # Line 3097
    mul.s	$f6,$f6,$f10
    # Line 3098
    c.ult.s	$f4,$f6
    # Line 3099
    nop
    # Line 3100
    bc1t	.L0dad3194
    # Line 3101
    nop
.L0dad3170:
    # Line 3108
    lui	$t0,0x8080
    # Line 3109
    ori	$t0,$t0,0xd004
    # Line 3111
    lui	$v0,0x1
    # Line 3113
    sw	$t0,0($v0)
    # Line 3114
    sw	$a0,0($v0)
    # Line 3115
    sw	$a1,0($v0)
    # Line 3116
    sw	$a2,0($v0)
    # Line 3117
    jr	$ra
    # Line 3118
    sw	$a3,0($v0)
.L0dad3194:
    # Line 3125
    lw	$t9,32($v1)
    # Line 3131
    jr	$t9
    # Line 3132
    nop
.end __glOdyim_Vertex4i_mag_line0

# Function: __glOdyim_Vertex4iv_mag_line0
# Declared: Line 3139 (Source lines: 3139-3292)
# Address: 0x0dad31c0 - 0x0dad3330 (Size: 368 bytes, Frame: 0)
.globl __glOdyim_Vertex4iv_mag_line0
.ent __glOdyim_Vertex4iv_mag_line0
__glOdyim_Vertex4iv_mag_line0:
    # Line 3139
    lw	$a4,0($a0)
    # Line 3140
    lw	$a5,4($a0)
    # Line 3141
    lw	$a6,8($a0)
    # Line 3142
    lw	$a7,12($a0)
    # Line 3143
    mtc1	$a4,$f8
    # Line 3144
    mtc1	$a5,$f9
    # Line 3145
    cvt.s.w	$f12,$f8
    # Line 3146
    cvt.s.w	$f13,$f9
    # Line 3147
    mtc1	$a6,$f8
    # Line 3148
    mtc1	$a7,$f9
    # Line 3149
    cvt.s.w	$f14,$f8
    # Line 3150
    cvt.s.w	$f15,$f9
    # Line 3156
    lw	$v0,4128($zero)
    # Line 3157
    lw	$v1,4132($zero)
    # Line 3158
    lwc1	$f4,48($v0)
    # Line 3159
    lwc1	$f7,60($v0)
    # Line 3160
    lwc1	$f5,52($v0)
    # Line 3161
    lwc1	$f6,56($v0)
    # Line 3162
    lwc1	$f9,4($v1)
    # Line 3163
    mul.s	$f8,$f12,$f4
    # Line 3172
    madd.s	$f8,$f8,$f13,$f5
    # Line 3173
    madd.s	$f8,$f8,$f14,$f6
    # Line 3174
    madd.s	$f8,$f8,$f15,$f7
    # Line 3176
    lwc1	$f7,8($v1)
    # Line 3177
    mov.s	$f10,$f8
    # Line 3178
    mul.s	$f7,$f8,$f7
    # Line 3179
    swc1	$f8,8($v1)
    # Line 3180
    mul.s	$f8,$f9,$f8
    # Line 3181
    abs.s	$f4,$f7
    # Line 3182
    abs.s	$f8,$f8
    # Line 3183
    c.ueq.s	$f4,$f7
    # Line 3184
    lwc1	$f4,0($v0)
    # Line 3185
    bc1f	.L0dad3324
    # Line 3186
    lwc1	$f7,12($v0)
    # Line 3187
    lwc1	$f5,4($v0)
    # Line 3188
    lwc1	$f6,8($v0)
    # Line 3189
    mul.s	$f9,$f12,$f4
    # Line 3198
    madd.s	$f9,$f9,$f13,$f5
    # Line 3199
    madd.s	$f9,$f9,$f14,$f6
    # Line 3200
    madd.s	$f9,$f9,$f15,$f7
    # Line 3202
    mov.s	$f11,$f9
    # Line 3203
    abs.s	$f9,$f9
    # Line 3204
    c.ult.s	$f8,$f9
    # Line 3205
    lwc1	$f4,12($v1)
    # Line 3206
    bc1t	.L0dad3324
    # Line 3207
    nop
    # Line 3212
    madd.s	$f4,$f11,$f4,$f10
    # Line 3214
    abs.s	$f5,$f4
    # Line 3215
    c.ueq.s	$f5,$f4
    # Line 3216
    lwc1	$f6,24($v1)
    # Line 3217
    bc1f	.L0dad32a0
    # Line 3218
    mul.s	$f6,$f6,$f10
    # Line 3219
    c.ult.s	$f4,$f6
    # Line 3220
    nop
    # Line 3221
    bc1t	.L0dad3324
    # Line 3222
    nop
.L0dad32a0:
    # Line 3224
    lwc1	$f4,16($v0)
    # Line 3225
    lwc1	$f7,28($v0)
    # Line 3226
    lwc1	$f5,20($v0)
    # Line 3227
    lwc1	$f6,24($v0)
    # Line 3228
    mul.s	$f9,$f12,$f4
    # Line 3237
    madd.s	$f9,$f9,$f13,$f5
    # Line 3238
    madd.s	$f9,$f9,$f14,$f6
    # Line 3239
    madd.s	$f9,$f9,$f15,$f7
    # Line 3241
    mov.s	$f11,$f9
    # Line 3242
    abs.s	$f9,$f9
    # Line 3243
    c.ult.s	$f8,$f9
    # Line 3244
    nop
    # Line 3245
    bc1t	.L0dad3324
    # Line 3246
    lwc1	$f4,16($v1)
    # Line 3251
    madd.s	$f4,$f11,$f4,$f10
    # Line 3253
    abs.s	$f5,$f4
    # Line 3254
    c.ueq.s	$f5,$f4
    # Line 3255
    lwc1	$f6,24($v1)
    # Line 3256
    bc1f	.L0dad3300
    # Line 3257
    mul.s	$f6,$f6,$f10
    # Line 3258
    c.ult.s	$f4,$f6
    # Line 3259
    nop
    # Line 3260
    bc1t	.L0dad3324
    # Line 3261
    nop
.L0dad3300:
    # Line 3268
    lui	$t0,0x8080
    # Line 3269
    ori	$t0,$t0,0xd004
    # Line 3271
    lui	$v0,0x1
    # Line 3273
    sw	$t0,0($v0)
    # Line 3274
    sw	$a4,0($v0)
    # Line 3275
    sw	$a5,0($v0)
    # Line 3276
    sw	$a6,0($v0)
    # Line 3277
    jr	$ra
    # Line 3278
    sw	$a7,0($v0)
.L0dad3324:
    # Line 3285
    lw	$t9,32($v1)
    # Line 3291
    jr	$t9
    # Line 3292
    nop
.end __glOdyim_Vertex4iv_mag_line0

# Function: __glOdyim_Vertex4s_mag_line0
# Declared: Line 3299 (Source lines: 3299-3448)
# Address: 0x0dad3340 - 0x0dad34a0 (Size: 352 bytes, Frame: 0)
.globl __glOdyim_Vertex4s_mag_line0
.ent __glOdyim_Vertex4s_mag_line0
__glOdyim_Vertex4s_mag_line0:
    # Line 3299
    mtc1	$a0,$f8
    # Line 3300
    mtc1	$a1,$f9
    # Line 3301
    cvt.s.w	$f12,$f8
    # Line 3302
    cvt.s.w	$f13,$f9
    # Line 3303
    mtc1	$a2,$f8
    # Line 3304
    mtc1	$a3,$f9
    # Line 3305
    cvt.s.w	$f14,$f8
    # Line 3306
    cvt.s.w	$f15,$f9
    # Line 3312
    lw	$v0,4128($zero)
    # Line 3313
    lw	$v1,4132($zero)
    # Line 3314
    lwc1	$f4,48($v0)
    # Line 3315
    lwc1	$f7,60($v0)
    # Line 3316
    lwc1	$f5,52($v0)
    # Line 3317
    lwc1	$f6,56($v0)
    # Line 3318
    lwc1	$f9,4($v1)
    # Line 3319
    mul.s	$f8,$f12,$f4
    # Line 3328
    madd.s	$f8,$f8,$f13,$f5
    # Line 3329
    madd.s	$f8,$f8,$f14,$f6
    # Line 3330
    madd.s	$f8,$f8,$f15,$f7
    # Line 3332
    lwc1	$f7,8($v1)
    # Line 3333
    mov.s	$f10,$f8
    # Line 3334
    mul.s	$f7,$f8,$f7
    # Line 3335
    swc1	$f8,8($v1)
    # Line 3336
    mul.s	$f8,$f9,$f8
    # Line 3337
    abs.s	$f4,$f7
    # Line 3338
    abs.s	$f8,$f8
    # Line 3339
    c.ueq.s	$f4,$f7
    # Line 3340
    lwc1	$f4,0($v0)
    # Line 3341
    bc1f	.L0dad3494
    # Line 3342
    lwc1	$f7,12($v0)
    # Line 3343
    lwc1	$f5,4($v0)
    # Line 3344
    lwc1	$f6,8($v0)
    # Line 3345
    mul.s	$f9,$f12,$f4
    # Line 3354
    madd.s	$f9,$f9,$f13,$f5
    # Line 3355
    madd.s	$f9,$f9,$f14,$f6
    # Line 3356
    madd.s	$f9,$f9,$f15,$f7
    # Line 3358
    mov.s	$f11,$f9
    # Line 3359
    abs.s	$f9,$f9
    # Line 3360
    c.ult.s	$f8,$f9
    # Line 3361
    lwc1	$f4,12($v1)
    # Line 3362
    bc1t	.L0dad3494
    # Line 3363
    nop
    # Line 3368
    madd.s	$f4,$f11,$f4,$f10
    # Line 3370
    abs.s	$f5,$f4
    # Line 3371
    c.ueq.s	$f5,$f4
    # Line 3372
    lwc1	$f6,24($v1)
    # Line 3373
    bc1f	.L0dad3410
    # Line 3374
    mul.s	$f6,$f6,$f10
    # Line 3375
    c.ult.s	$f4,$f6
    # Line 3376
    nop
    # Line 3377
    bc1t	.L0dad3494
    # Line 3378
    nop
.L0dad3410:
    # Line 3380
    lwc1	$f4,16($v0)
    # Line 3381
    lwc1	$f7,28($v0)
    # Line 3382
    lwc1	$f5,20($v0)
    # Line 3383
    lwc1	$f6,24($v0)
    # Line 3384
    mul.s	$f9,$f12,$f4
    # Line 3393
    madd.s	$f9,$f9,$f13,$f5
    # Line 3394
    madd.s	$f9,$f9,$f14,$f6
    # Line 3395
    madd.s	$f9,$f9,$f15,$f7
    # Line 3397
    mov.s	$f11,$f9
    # Line 3398
    abs.s	$f9,$f9
    # Line 3399
    c.ult.s	$f8,$f9
    # Line 3400
    nop
    # Line 3401
    bc1t	.L0dad3494
    # Line 3402
    lwc1	$f4,16($v1)
    # Line 3407
    madd.s	$f4,$f11,$f4,$f10
    # Line 3409
    abs.s	$f5,$f4
    # Line 3410
    c.ueq.s	$f5,$f4
    # Line 3411
    lwc1	$f6,24($v1)
    # Line 3412
    bc1f	.L0dad3470
    # Line 3413
    mul.s	$f6,$f6,$f10
    # Line 3414
    c.ult.s	$f4,$f6
    # Line 3415
    nop
    # Line 3416
    bc1t	.L0dad3494
    # Line 3417
    nop
.L0dad3470:
    # Line 3424
    lui	$t0,0x8080
    # Line 3425
    ori	$t0,$t0,0xd004
    # Line 3427
    lui	$v0,0x1
    # Line 3429
    sw	$t0,0($v0)
    # Line 3430
    sw	$a0,0($v0)
    # Line 3431
    sw	$a1,0($v0)
    # Line 3432
    sw	$a2,0($v0)
    # Line 3433
    jr	$ra
    # Line 3434
    sw	$a3,0($v0)
.L0dad3494:
    # Line 3441
    lw	$t9,32($v1)
    # Line 3447
    jr	$t9
    # Line 3448
    nop
.end __glOdyim_Vertex4s_mag_line0

# Function: __glOdyim_Vertex4sv_mag_line0
# Declared: Line 3455 (Source lines: 3455-3608)
# Address: 0x0dad34c0 - 0x0dad3630 (Size: 368 bytes, Frame: 0)
.globl __glOdyim_Vertex4sv_mag_line0
.ent __glOdyim_Vertex4sv_mag_line0
__glOdyim_Vertex4sv_mag_line0:
    # Line 3455
    lh	$a4,0($a0)
    # Line 3456
    lh	$a5,2($a0)
    # Line 3457
    lh	$a6,4($a0)
    # Line 3458
    lh	$a7,6($a0)
    # Line 3459
    mtc1	$a4,$f8
    # Line 3460
    mtc1	$a5,$f9
    # Line 3461
    cvt.s.w	$f12,$f8
    # Line 3462
    cvt.s.w	$f13,$f9
    # Line 3463
    mtc1	$a6,$f8
    # Line 3464
    mtc1	$a7,$f9
    # Line 3465
    cvt.s.w	$f14,$f8
    # Line 3466
    cvt.s.w	$f15,$f9
    # Line 3472
    lw	$v0,4128($zero)
    # Line 3473
    lw	$v1,4132($zero)
    # Line 3474
    lwc1	$f4,48($v0)
    # Line 3475
    lwc1	$f7,60($v0)
    # Line 3476
    lwc1	$f5,52($v0)
    # Line 3477
    lwc1	$f6,56($v0)
    # Line 3478
    lwc1	$f9,4($v1)
    # Line 3479
    mul.s	$f8,$f12,$f4
    # Line 3488
    madd.s	$f8,$f8,$f13,$f5
    # Line 3489
    madd.s	$f8,$f8,$f14,$f6
    # Line 3490
    madd.s	$f8,$f8,$f15,$f7
    # Line 3492
    lwc1	$f7,8($v1)
    # Line 3493
    mov.s	$f10,$f8
    # Line 3494
    mul.s	$f7,$f8,$f7
    # Line 3495
    swc1	$f8,8($v1)
    # Line 3496
    mul.s	$f8,$f9,$f8
    # Line 3497
    abs.s	$f4,$f7
    # Line 3498
    abs.s	$f8,$f8
    # Line 3499
    c.ueq.s	$f4,$f7
    # Line 3500
    lwc1	$f4,0($v0)
    # Line 3501
    bc1f	.L0dad3624
    # Line 3502
    lwc1	$f7,12($v0)
    # Line 3503
    lwc1	$f5,4($v0)
    # Line 3504
    lwc1	$f6,8($v0)
    # Line 3505
    mul.s	$f9,$f12,$f4
    # Line 3514
    madd.s	$f9,$f9,$f13,$f5
    # Line 3515
    madd.s	$f9,$f9,$f14,$f6
    # Line 3516
    madd.s	$f9,$f9,$f15,$f7
    # Line 3518
    mov.s	$f11,$f9
    # Line 3519
    abs.s	$f9,$f9
    # Line 3520
    c.ult.s	$f8,$f9
    # Line 3521
    lwc1	$f4,12($v1)
    # Line 3522
    bc1t	.L0dad3624
    # Line 3523
    nop
    # Line 3528
    madd.s	$f4,$f11,$f4,$f10
    # Line 3530
    abs.s	$f5,$f4
    # Line 3531
    c.ueq.s	$f5,$f4
    # Line 3532
    lwc1	$f6,24($v1)
    # Line 3533
    bc1f	.L0dad35a0
    # Line 3534
    mul.s	$f6,$f6,$f10
    # Line 3535
    c.ult.s	$f4,$f6
    # Line 3536
    nop
    # Line 3537
    bc1t	.L0dad3624
    # Line 3538
    nop
.L0dad35a0:
    # Line 3540
    lwc1	$f4,16($v0)
    # Line 3541
    lwc1	$f7,28($v0)
    # Line 3542
    lwc1	$f5,20($v0)
    # Line 3543
    lwc1	$f6,24($v0)
    # Line 3544
    mul.s	$f9,$f12,$f4
    # Line 3553
    madd.s	$f9,$f9,$f13,$f5
    # Line 3554
    madd.s	$f9,$f9,$f14,$f6
    # Line 3555
    madd.s	$f9,$f9,$f15,$f7
    # Line 3557
    mov.s	$f11,$f9
    # Line 3558
    abs.s	$f9,$f9
    # Line 3559
    c.ult.s	$f8,$f9
    # Line 3560
    nop
    # Line 3561
    bc1t	.L0dad3624
    # Line 3562
    lwc1	$f4,16($v1)
    # Line 3567
    madd.s	$f4,$f11,$f4,$f10
    # Line 3569
    abs.s	$f5,$f4
    # Line 3570
    c.ueq.s	$f5,$f4
    # Line 3571
    lwc1	$f6,24($v1)
    # Line 3572
    bc1f	.L0dad3600
    # Line 3573
    mul.s	$f6,$f6,$f10
    # Line 3574
    c.ult.s	$f4,$f6
    # Line 3575
    nop
    # Line 3576
    bc1t	.L0dad3624
    # Line 3577
    nop
.L0dad3600:
    # Line 3584
    lui	$t0,0x8080
    # Line 3585
    ori	$t0,$t0,0xd004
    # Line 3587
    lui	$v0,0x1
    # Line 3589
    sw	$t0,0($v0)
    # Line 3590
    sw	$a4,0($v0)
    # Line 3591
    sw	$a5,0($v0)
    # Line 3592
    sw	$a6,0($v0)
    # Line 3593
    jr	$ra
    # Line 3594
    sw	$a7,0($v0)
.L0dad3624:
    # Line 3601
    lw	$t9,32($v1)
    # Line 3607
    jr	$t9
    # Line 3608
    nop
.end __glOdyim_Vertex4sv_mag_line0

