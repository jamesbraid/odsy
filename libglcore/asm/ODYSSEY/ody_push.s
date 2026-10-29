# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY/ody_push.s
# Category: ODYSSEY
# Compiler Options: 
# Total Functions: 19

.text

# Function: __glOdysseyPushLoop
# Declared: Line 98 (Source lines: 98-199)
# Address: 0x0dacc570 - 0x0dacc6a4 (Size: 308 bytes, Frame: 0)
.globl __glOdysseyPushLoop
.ent __glOdysseyPushLoop
__glOdysseyPushLoop:
    # Line 98
    ld	$t0,0($a1)
    # Line 102
    pref	0x0,128($a1)
    # Line 103
    pref	0x0,256($a1)
    # Line 107
    lui	$v0,0x1
    # Line 110
    srl	$a2,$a0,0x5
    # Line 111
    beq	$zero,$a2,.L0dacc61c
    # Line 112
    andi	$a0,$a0,0x1f
.L0dacc58c:
    # Line 116
    pref	0x0,384($a1)
    # Line 118
    ld	$t0,0($a1)
    # Line 119
    ld	$a4,32($a1)
    # Line 120
    ld	$t1,8($a1)
    # Line 121
    ld	$a5,40($a1)
    # Line 122
    ld	$t2,16($a1)
    # Line 123
    ld	$a6,48($a1)
    # Line 124
    ld	$t3,24($a1)
    # Line 125
    ld	$a7,56($a1)
    # Line 126
    sd	$t0,0($v0)
    # Line 127
    sd	$t1,0($v0)
    # Line 128
    sd	$t2,0($v0)
    # Line 129
    sd	$t3,0($v0)
    # Line 130
    sd	$a4,0($v0)
    # Line 131
    sd	$a5,0($v0)
    # Line 132
    sd	$a6,0($v0)
    # Line 133
    sd	$a7,0($v0)
    # Line 134
    addiu	$a2,$a2,-1
    # Line 136
    ld	$t0,64($a1)
    # Line 137
    ld	$a4,96($a1)
    # Line 138
    ld	$t1,72($a1)
    # Line 139
    ld	$a5,104($a1)
    # Line 140
    ld	$t2,80($a1)
    # Line 141
    ld	$a6,112($a1)
    # Line 142
    ld	$t3,88($a1)
    # Line 143
    ld	$a7,120($a1)
    # Line 144
    sd	$t0,0($v0)
    # Line 145
    sd	$t1,0($v0)
    # Line 146
    sd	$t2,0($v0)
    # Line 147
    sd	$t3,0($v0)
    # Line 148
    sd	$a4,0($v0)
    # Line 149
    sd	$a5,0($v0)
    # Line 150
    sd	$a6,0($v0)
    # Line 151
    sd	$a7,0($v0)
    # Line 152
    bne	$zero,$a2,.L0dacc58c
    # Line 153
    addiu	$a1,$a1,128
.L0dacc61c:
    # Line 156
    andi	$a2,$a0,0x10
    # Line 157
    beq	$zero,$a2,.L0dacc66c
    # Line 158
    andi	$a0,$a0,0xf
    # Line 160
    ld	$t0,0($a1)
    # Line 161
    ld	$a4,32($a1)
    # Line 162
    ld	$t1,8($a1)
    # Line 163
    ld	$a5,40($a1)
    # Line 164
    ld	$t2,16($a1)
    # Line 165
    ld	$a6,48($a1)
    # Line 166
    ld	$t3,24($a1)
    # Line 167
    ld	$a7,56($a1)
    # Line 168
    sd	$t0,0($v0)
    # Line 169
    sd	$t1,0($v0)
    # Line 170
    sd	$t2,0($v0)
    # Line 171
    sd	$t3,0($v0)
    # Line 172
    sd	$a4,0($v0)
    # Line 173
    sd	$a5,0($v0)
    # Line 174
    sd	$a6,0($v0)
    # Line 175
    sd	$a7,0($v0)
    # Line 176
    addiu	$a1,$a1,64
.L0dacc66c:
    # Line 179
    srl	$a2,$a0,0x1
    # Line 180
    beq	$zero,$a2,.L0dacc68c
    # Line 181
    andi	$a0,$a0,0x1
.L0dacc678:
    # Line 184
    ld	$t0,0($a1)
    # Line 185
    addiu	$a2,$a2,-1
    # Line 186
    sd	$t0,0($v0)
    # Line 187
    bne	$zero,$a2,.L0dacc678
    # Line 188
    addiu	$a1,$a1,8
.L0dacc68c:
    # Line 191
    beq	$zero,$a0,.L0dacc69c
    # Line 192
    nop
    # Line 194
    lw	$t0,0($a1)
    # Line 195
    sw	$t0,0($v0)
.L0dacc69c:
    # Line 198
    jr	$ra
    # Line 199
    nop
.end __glOdysseyPushLoop

# Function: __glOdysseyArraysInt_V3F
# Declared: Line 267 (Source lines: 267-293)
# Address: 0x0dacc6a4 - 0x0dacc6f0 (Size: 76 bytes, Frame: 0)
.globl __glOdysseyArraysInt_V3F
.ent __glOdysseyArraysInt_V3F
__glOdysseyArraysInt_V3F:
    # Line 267
    lui	$v0,0x1
    # Line 269
    li	$t0,0xc
    # Line 270
    mult	$a0,$t0
    # Line 271
    mflo	$t1
    # Line 272
    addu	$a2,$a2,$t1
    # Line 274
    lui	$t0,0x8080
    # Line 275
    ori	$t0,$t0,0xcc03
.L0dacc6c0:
    # Line 278
    addiu	$a1,$a1,-1
    # Line 280
    lw	$t1,0($a2)
    # Line 281
    lw	$t2,4($a2)
    # Line 282
    lw	$t3,8($a2)
    # Line 284
    sw	$t0,0($v0)
    # Line 285
    sw	$t1,0($v0)
    # Line 286
    sw	$t2,0($v0)
    # Line 287
    sw	$t3,0($v0)
    # Line 289
    bne	$zero,$a1,.L0dacc6c0
    # Line 290
    addiu	$a2,$a2,12
    # Line 292
    jr	$ra
    # Line 293
    nop
.end __glOdysseyArraysInt_V3F

# Function: __glOdysseyArraysInt_C3F_V3F
# Declared: Line 321 (Source lines: 321-356)
# Address: 0x0dacc6f0 - 0x0dacc760 (Size: 112 bytes, Frame: 0)
.globl __glOdysseyArraysInt_C3F_V3F
.ent __glOdysseyArraysInt_C3F_V3F
__glOdysseyArraysInt_C3F_V3F:
    # Line 321
    lui	$v0,0x1
    # Line 323
    li	$t0,0x18
    # Line 324
    mult	$a0,$t0
    # Line 325
    mflo	$t1
    # Line 326
    addu	$a2,$a2,$t1
    # Line 328
    lui	$t0,0xc580
    # Line 329
    ori	$t0,$t0,0xcc0e
    # Line 330
    lui	$a4,0x8080
    # Line 331
    ori	$a4,$a4,0xcc03
.L0dacc714:
    # Line 334
    addiu	$a1,$a1,-1
    # Line 336
    lw	$t1,0($a2)
    # Line 337
    lw	$t2,4($a2)
    # Line 338
    lw	$t3,8($a2)
    # Line 339
    lw	$a5,12($a2)
    # Line 340
    lw	$a6,16($a2)
    # Line 341
    lw	$a7,20($a2)
    # Line 343
    sw	$t0,0($v0)
    # Line 344
    sw	$t1,0($v0)
    # Line 345
    sw	$t2,0($v0)
    # Line 346
    sw	$t3,0($v0)
    # Line 347
    sw	$a4,0($v0)
    # Line 348
    sw	$a5,0($v0)
    # Line 349
    sw	$a6,0($v0)
    # Line 350
    sw	$a7,0($v0)
    # Line 352
    bne	$zero,$a1,.L0dacc714
    # Line 353
    addiu	$a2,$a2,24
    # Line 355
    jr	$ra
    # Line 356
    nop
.end __glOdysseyArraysInt_C3F_V3F

# Function: __glOdysseyArraysSep_C3F_V3F
# Declared: Line 387 (Source lines: 387-428)
# Address: 0x0dacc760 - 0x0dacc7e4 (Size: 132 bytes, Frame: 0)
.globl __glOdysseyArraysSep_C3F_V3F
.ent __glOdysseyArraysSep_C3F_V3F
__glOdysseyArraysSep_C3F_V3F:
    # Line 387
    lui	$v0,0x1
    # Line 389
    li	$t0,0xc
    # Line 390
    mult	$a0,$t0
    # Line 391
    mflo	$t1
    # Line 392
    addu	$a2,$a2,$t1
    # Line 393
    li	$t0,0xc
    # Line 394
    mult	$a0,$t0
    # Line 395
    mflo	$t1
    # Line 396
    addu	$a3,$a3,$t1
    # Line 398
    lui	$t0,0xc580
    # Line 399
    ori	$t0,$t0,0xcc0e
    # Line 400
    lui	$a4,0x8080
    # Line 401
    ori	$a4,$a4,0xcc03
.L0dacc794:
    # Line 404
    addiu	$a1,$a1,-1
    # Line 406
    lw	$t1,0($a2)
    # Line 407
    lw	$t2,4($a2)
    # Line 408
    lw	$t3,8($a2)
    # Line 409
    lw	$a5,0($a3)
    # Line 410
    lw	$a6,4($a3)
    # Line 411
    lw	$a7,8($a3)
    # Line 413
    addiu	$a2,$a2,12
    # Line 415
    sw	$t0,0($v0)
    # Line 416
    sw	$t1,0($v0)
    # Line 417
    sw	$t2,0($v0)
    # Line 418
    sw	$t3,0($v0)
    # Line 419
    sw	$a4,0($v0)
    # Line 420
    sw	$a5,0($v0)
    # Line 421
    sw	$a6,0($v0)
    # Line 422
    sw	$a7,0($v0)
    # Line 424
    bne	$zero,$a1,.L0dacc794
    # Line 425
    addiu	$a3,$a3,12
    # Line 427
    jr	$ra
    # Line 428
    nop
.end __glOdysseyArraysSep_C3F_V3F

# Function: __glOdysseyArraysInt_N3F_V3F
# Declared: Line 456 (Source lines: 456-491)
# Address: 0x0dacc7e4 - 0x0dacc854 (Size: 112 bytes, Frame: 0)
.globl __glOdysseyArraysInt_N3F_V3F
.ent __glOdysseyArraysInt_N3F_V3F
__glOdysseyArraysInt_N3F_V3F:
    # Line 456
    lui	$v0,0x1
    # Line 458
    li	$t0,0x18
    # Line 459
    mult	$a0,$t0
    # Line 460
    mflo	$t1
    # Line 461
    addu	$a2,$a2,$t1
    # Line 463
    lui	$t0,0xc180
    # Line 464
    ori	$t0,$t0,0xcc19
    # Line 465
    lui	$a4,0x8080
    # Line 466
    ori	$a4,$a4,0xcc03
.L0dacc808:
    # Line 469
    addiu	$a1,$a1,-1
    # Line 471
    lw	$t1,0($a2)
    # Line 472
    lw	$t2,4($a2)
    # Line 473
    lw	$t3,8($a2)
    # Line 474
    lw	$a5,12($a2)
    # Line 475
    lw	$a6,16($a2)
    # Line 476
    lw	$a7,20($a2)
    # Line 478
    sw	$t0,0($v0)
    # Line 479
    sw	$t1,0($v0)
    # Line 480
    sw	$t2,0($v0)
    # Line 481
    sw	$t3,0($v0)
    # Line 482
    sw	$a4,0($v0)
    # Line 483
    sw	$a5,0($v0)
    # Line 484
    sw	$a6,0($v0)
    # Line 485
    sw	$a7,0($v0)
    # Line 487
    bne	$zero,$a1,.L0dacc808
    # Line 488
    addiu	$a2,$a2,24
    # Line 490
    jr	$ra
    # Line 491
    nop
.end __glOdysseyArraysInt_N3F_V3F

# Function: __glOdysseyArraysInt_V3F_N3F
# Declared: Line 519 (Source lines: 519-554)
# Address: 0x0dacc854 - 0x0dacc8c4 (Size: 112 bytes, Frame: 0)
.globl __glOdysseyArraysInt_V3F_N3F
.ent __glOdysseyArraysInt_V3F_N3F
__glOdysseyArraysInt_V3F_N3F:
    # Line 519
    lui	$v0,0x1
    # Line 521
    li	$t0,0x18
    # Line 522
    mult	$a0,$t0
    # Line 523
    mflo	$t1
    # Line 524
    addu	$a2,$a2,$t1
    # Line 526
    lui	$t0,0xc180
    # Line 527
    ori	$t0,$t0,0xcc19
    # Line 528
    lui	$a4,0x8080
    # Line 529
    ori	$a4,$a4,0xcc03
.L0dacc878:
    # Line 532
    addiu	$a1,$a1,-1
    # Line 534
    lw	$a5,0($a2)
    # Line 535
    lw	$a6,4($a2)
    # Line 536
    lw	$a7,8($a2)
    # Line 537
    lw	$t1,12($a2)
    # Line 538
    lw	$t2,16($a2)
    # Line 539
    lw	$t3,20($a2)
    # Line 541
    sw	$t0,0($v0)
    # Line 542
    sw	$t1,0($v0)
    # Line 543
    sw	$t2,0($v0)
    # Line 544
    sw	$t3,0($v0)
    # Line 545
    sw	$a4,0($v0)
    # Line 546
    sw	$a5,0($v0)
    # Line 547
    sw	$a6,0($v0)
    # Line 548
    sw	$a7,0($v0)
    # Line 550
    bne	$zero,$a1,.L0dacc878
    # Line 551
    addiu	$a2,$a2,24
    # Line 553
    jr	$ra
    # Line 554
    nop
.end __glOdysseyArraysInt_V3F_N3F

# Function: __glOdysseyArraysSep_N3F_V3F
# Declared: Line 585 (Source lines: 585-626)
# Address: 0x0dacc8c4 - 0x0dacc948 (Size: 132 bytes, Frame: 0)
.globl __glOdysseyArraysSep_N3F_V3F
.ent __glOdysseyArraysSep_N3F_V3F
__glOdysseyArraysSep_N3F_V3F:
    # Line 585
    lui	$v0,0x1
    # Line 587
    li	$t0,0xc
    # Line 588
    mult	$a0,$t0
    # Line 589
    mflo	$t1
    # Line 590
    addu	$a2,$a2,$t1
    # Line 591
    li	$t0,0xc
    # Line 592
    mult	$a0,$t0
    # Line 593
    mflo	$t1
    # Line 594
    addu	$a3,$a3,$t1
    # Line 596
    lui	$t0,0xc180
    # Line 597
    ori	$t0,$t0,0xcc19
    # Line 598
    lui	$a4,0x8080
    # Line 599
    ori	$a4,$a4,0xcc03
.L0dacc8f8:
    # Line 602
    addiu	$a1,$a1,-1
    # Line 604
    lw	$t1,0($a2)
    # Line 605
    lw	$t2,4($a2)
    # Line 606
    lw	$t3,8($a2)
    # Line 607
    lw	$a5,0($a3)
    # Line 608
    lw	$a6,4($a3)
    # Line 609
    lw	$a7,8($a3)
    # Line 611
    addiu	$a2,$a2,12
    # Line 613
    sw	$t0,0($v0)
    # Line 614
    sw	$t1,0($v0)
    # Line 615
    sw	$t2,0($v0)
    # Line 616
    sw	$t3,0($v0)
    # Line 617
    sw	$a4,0($v0)
    # Line 618
    sw	$a5,0($v0)
    # Line 619
    sw	$a6,0($v0)
    # Line 620
    sw	$a7,0($v0)
    # Line 622
    bne	$zero,$a1,.L0dacc8f8
    # Line 623
    addiu	$a3,$a3,12
    # Line 625
    jr	$ra
    # Line 626
    nop
.end __glOdysseyArraysSep_N3F_V3F

# Function: __glOdysseyArraysSep_N3S_V3F
# Declared: Line 657 (Source lines: 657-698)
# Address: 0x0dacc948 - 0x0dacc9cc (Size: 132 bytes, Frame: 0)
.globl __glOdysseyArraysSep_N3S_V3F
.ent __glOdysseyArraysSep_N3S_V3F
__glOdysseyArraysSep_N3S_V3F:
    # Line 657
    lui	$v0,0x1
    # Line 659
    li	$t0,0x6
    # Line 660
    mult	$a0,$t0
    # Line 661
    mflo	$t1
    # Line 662
    addu	$a2,$a2,$t1
    # Line 663
    li	$t0,0xc
    # Line 664
    mult	$a0,$t0
    # Line 665
    mflo	$t1
    # Line 666
    addu	$a3,$a3,$t1
    # Line 668
    lui	$t0,0xc180
    # Line 669
    ori	$t0,$t0,0xcc17
    # Line 670
    lui	$a4,0x8080
    # Line 671
    ori	$a4,$a4,0xcc03
.L0dacc97c:
    # Line 674
    addiu	$a1,$a1,-1
    # Line 676
    lh	$t1,0($a2)
    # Line 677
    lh	$t2,2($a2)
    # Line 678
    lh	$t3,4($a2)
    # Line 679
    lw	$a5,0($a3)
    # Line 680
    lw	$a6,4($a3)
    # Line 681
    lw	$a7,8($a3)
    # Line 683
    addiu	$a2,$a2,6
    # Line 685
    sw	$t0,0($v0)
    # Line 686
    sw	$t1,0($v0)
    # Line 687
    sw	$t2,0($v0)
    # Line 688
    sw	$t3,0($v0)
    # Line 689
    sw	$a4,0($v0)
    # Line 690
    sw	$a5,0($v0)
    # Line 691
    sw	$a6,0($v0)
    # Line 692
    sw	$a7,0($v0)
    # Line 694
    bne	$zero,$a1,.L0dacc97c
    # Line 695
    addiu	$a3,$a3,12
    # Line 697
    jr	$ra
    # Line 698
    nop
.end __glOdysseyArraysSep_N3S_V3F

# Function: __glOdysseyArraysInt_T2F_V3F
# Declared: Line 726 (Source lines: 726-759)
# Address: 0x0dacc9cc - 0x0dacca34 (Size: 104 bytes, Frame: 0)
.globl __glOdysseyArraysInt_T2F_V3F
.ent __glOdysseyArraysInt_T2F_V3F
__glOdysseyArraysInt_T2F_V3F:
    # Line 726
    lui	$v0,0x1
    # Line 728
    li	$t0,0x14
    # Line 729
    mult	$a0,$t0
    # Line 730
    mflo	$t1
    # Line 731
    addu	$a2,$a2,$t1
    # Line 733
    lui	$t0,0xc380
    # Line 734
    ori	$t0,$t0,0xc821
    # Line 735
    lui	$a4,0x8080
    # Line 736
    ori	$a4,$a4,0xcc03
.L0dacc9f0:
    # Line 739
    addiu	$a1,$a1,-1
    # Line 741
    lw	$t1,0($a2)
    # Line 742
    lw	$t2,4($a2)
    # Line 743
    lw	$a5,8($a2)
    # Line 744
    lw	$a6,12($a2)
    # Line 745
    lw	$a7,16($a2)
    # Line 747
    sw	$t0,0($v0)
    # Line 748
    sw	$t1,0($v0)
    # Line 749
    sw	$t2,0($v0)
    # Line 750
    sw	$a4,0($v0)
    # Line 751
    sw	$a5,0($v0)
    # Line 752
    sw	$a6,0($v0)
    # Line 753
    sw	$a7,0($v0)
    # Line 755
    bne	$zero,$a1,.L0dacc9f0
    # Line 756
    addiu	$a2,$a2,20
    # Line 758
    jr	$ra
    # Line 759
    nop
.end __glOdysseyArraysInt_T2F_V3F

# Function: __glOdysseyArraysSep_T2F_V3F
# Declared: Line 790 (Source lines: 790-829)
# Address: 0x0dacca34 - 0x0daccab0 (Size: 124 bytes, Frame: 0)
.globl __glOdysseyArraysSep_T2F_V3F
.ent __glOdysseyArraysSep_T2F_V3F
__glOdysseyArraysSep_T2F_V3F:
    # Line 790
    lui	$v0,0x1
    # Line 792
    li	$t0,0x8
    # Line 793
    mult	$a0,$t0
    # Line 794
    mflo	$t1
    # Line 795
    addu	$a2,$a2,$t1
    # Line 796
    li	$t0,0xc
    # Line 797
    mult	$a0,$t0
    # Line 798
    mflo	$t1
    # Line 799
    addu	$a3,$a3,$t1
    # Line 801
    lui	$t0,0xc380
    # Line 802
    ori	$t0,$t0,0xc821
    # Line 803
    lui	$a4,0x8080
    # Line 804
    ori	$a4,$a4,0xcc03
.L0dacca68:
    # Line 807
    addiu	$a1,$a1,-1
    # Line 809
    lw	$t1,0($a2)
    # Line 810
    lw	$t2,4($a2)
    # Line 811
    lw	$a5,0($a3)
    # Line 812
    lw	$a6,4($a3)
    # Line 813
    lw	$a7,8($a3)
    # Line 815
    addiu	$a2,$a2,8
    # Line 817
    sw	$t0,0($v0)
    # Line 818
    sw	$t1,0($v0)
    # Line 819
    sw	$t2,0($v0)
    # Line 820
    sw	$a4,0($v0)
    # Line 821
    sw	$a5,0($v0)
    # Line 822
    sw	$a6,0($v0)
    # Line 823
    sw	$a7,0($v0)
    # Line 825
    bne	$zero,$a1,.L0dacca68
    # Line 826
    addiu	$a3,$a3,12
    # Line 828
    jr	$ra
    # Line 829
    nop
.end __glOdysseyArraysSep_T2F_V3F

# Function: __glOdysseyElementsInt_V3F
# Declared: Line 854 (Source lines: 854-898)
# Address: 0x0daccab0 - 0x0daccb24 (Size: 116 bytes, Frame: 48)
.globl __glOdysseyElementsInt_V3F
.ent __glOdysseyElementsInt_V3F
__glOdysseyElementsInt_V3F:
    # Line 854
    addiu	$sp,$sp,-48
    # Line 858
    sd	$s3,40($sp)
    # Line 859
    sd	$s2,32($sp)
    # Line 860
    sd	$s1,24($sp)
    # Line 861
    sd	$s0,16($sp)
    # Line 864
    lui	$v0,0x1
    # Line 866
    lui	$t0,0x8080
    # Line 867
    ori	$t0,$t0,0xcc03
    # Line 869
    li	$s0,0xc
.L0daccad4:
    # Line 872
    addiu	$a0,$a0,-1
    # Line 874
    lw	$s2,0($a1)
    # Line 875
    mult	$s2,$s0
    # Line 876
    mflo	$s2
    # Line 877
    addu	$s2,$a2,$s2
    # Line 879
    lw	$t1,0($s2)
    # Line 880
    lw	$t2,4($s2)
    # Line 881
    lw	$t3,8($s2)
    # Line 883
    sw	$t0,0($v0)
    # Line 884
    sw	$t1,0($v0)
    # Line 885
    sw	$t2,0($v0)
    # Line 886
    sw	$t3,0($v0)
    # Line 888
    bne	$zero,$a0,.L0daccad4
    # Line 889
    addiu	$a1,$a1,4
    # Line 892
    ld	$s0,16($sp)
    # Line 893
    ld	$s1,24($sp)
    # Line 894
    ld	$s2,32($sp)
    # Line 895
    ld	$s3,40($sp)
    # Line 897
    jr	$ra
    # Line 898
    addiu	$sp,$sp,48
.end __glOdysseyElementsInt_V3F

# Function: __glOdysseyElementsInt_C3F_V3F
# Declared: Line 924 (Source lines: 924-976)
# Address: 0x0daccb24 - 0x0daccbbc (Size: 152 bytes, Frame: 48)
.globl __glOdysseyElementsInt_C3F_V3F
.ent __glOdysseyElementsInt_C3F_V3F
__glOdysseyElementsInt_C3F_V3F:
    # Line 924
    addiu	$sp,$sp,-48
    # Line 928
    sd	$s3,40($sp)
    # Line 929
    sd	$s2,32($sp)
    # Line 930
    sd	$s1,24($sp)
    # Line 931
    sd	$s0,16($sp)
    # Line 934
    lui	$v0,0x1
    # Line 936
    lui	$t0,0xc580
    # Line 937
    ori	$t0,$t0,0xcc0e
    # Line 938
    lui	$a4,0x8080
    # Line 939
    ori	$a4,$a4,0xcc03
    # Line 941
    li	$s0,0x18
.L0daccb50:
    # Line 944
    addiu	$a0,$a0,-1
    # Line 946
    lw	$s2,0($a1)
    # Line 947
    mult	$s2,$s0
    # Line 948
    mflo	$s2
    # Line 949
    addu	$s2,$a2,$s2
    # Line 951
    lw	$t1,0($s2)
    # Line 952
    lw	$t2,4($s2)
    # Line 953
    lw	$t3,8($s2)
    # Line 954
    lw	$a5,12($s2)
    # Line 955
    lw	$a6,16($s2)
    # Line 956
    lw	$a7,20($s2)
    # Line 958
    sw	$t0,0($v0)
    # Line 959
    sw	$t1,0($v0)
    # Line 960
    sw	$t2,0($v0)
    # Line 961
    sw	$t3,0($v0)
    # Line 962
    sw	$a4,0($v0)
    # Line 963
    sw	$a5,0($v0)
    # Line 964
    sw	$a6,0($v0)
    # Line 965
    sw	$a7,0($v0)
    # Line 967
    bne	$zero,$a0,.L0daccb50
    # Line 968
    addiu	$a1,$a1,4
    # Line 970
    ld	$s0,16($sp)
    # Line 971
    ld	$s1,24($sp)
    # Line 972
    ld	$s2,32($sp)
    # Line 973
    ld	$s3,40($sp)
    # Line 975
    jr	$ra
    # Line 976
    addiu	$sp,$sp,48
.end __glOdysseyElementsInt_C3F_V3F

# Function: __glOdysseyElementsSep_C3F_V3F
# Declared: Line 1005 (Source lines: 1005-1063)
# Address: 0x0daccbbc - 0x0daccc6c (Size: 176 bytes, Frame: 48)
.globl __glOdysseyElementsSep_C3F_V3F
.ent __glOdysseyElementsSep_C3F_V3F
__glOdysseyElementsSep_C3F_V3F:
    # Line 1005
    addiu	$sp,$sp,-48
    # Line 1009
    sd	$s3,40($sp)
    # Line 1010
    sd	$s2,32($sp)
    # Line 1011
    sd	$s1,24($sp)
    # Line 1012
    sd	$s0,16($sp)
    # Line 1015
    lui	$v0,0x1
    # Line 1017
    lui	$t0,0xc580
    # Line 1018
    ori	$t0,$t0,0xcc0e
    # Line 1019
    lui	$a4,0x8080
    # Line 1020
    ori	$a4,$a4,0xcc03
    # Line 1022
    li	$s0,0xc
    # Line 1023
    li	$s1,0xc
.L0daccbec:
    # Line 1026
    addiu	$a0,$a0,-1
    # Line 1028
    lw	$s2,0($a1)
    # Line 1029
    or	$s3,$zero,$s2
    # Line 1030
    mult	$s2,$s0
    # Line 1031
    mflo	$s2
    # Line 1032
    addu	$s2,$a2,$s2
    # Line 1033
    nop
    # Line 1034
    mult	$s3,$s1
    # Line 1035
    mflo	$s3
    # Line 1036
    addu	$s3,$a3,$s3
    # Line 1038
    lw	$t1,0($s2)
    # Line 1039
    lw	$t2,4($s2)
    # Line 1040
    lw	$t3,8($s2)
    # Line 1041
    lw	$a5,0($s3)
    # Line 1042
    lw	$a6,4($s3)
    # Line 1043
    lw	$a7,8($s3)
    # Line 1045
    sw	$t0,0($v0)
    # Line 1046
    sw	$t1,0($v0)
    # Line 1047
    sw	$t2,0($v0)
    # Line 1048
    sw	$t3,0($v0)
    # Line 1049
    sw	$a4,0($v0)
    # Line 1050
    sw	$a5,0($v0)
    # Line 1051
    sw	$a6,0($v0)
    # Line 1052
    sw	$a7,0($v0)
    # Line 1054
    bne	$zero,$a0,.L0daccbec
    # Line 1055
    addiu	$a1,$a1,4
    # Line 1057
    ld	$s0,16($sp)
    # Line 1058
    ld	$s1,24($sp)
    # Line 1059
    ld	$s2,32($sp)
    # Line 1060
    ld	$s3,40($sp)
    # Line 1062
    jr	$ra
    # Line 1063
    addiu	$sp,$sp,48
.end __glOdysseyElementsSep_C3F_V3F

# Function: __glOdysseyElementsInt_N3F_V3F
# Declared: Line 1089 (Source lines: 1089-1141)
# Address: 0x0daccc6c - 0x0daccd04 (Size: 152 bytes, Frame: 48)
.globl __glOdysseyElementsInt_N3F_V3F
.ent __glOdysseyElementsInt_N3F_V3F
__glOdysseyElementsInt_N3F_V3F:
    # Line 1089
    addiu	$sp,$sp,-48
    # Line 1093
    sd	$s3,40($sp)
    # Line 1094
    sd	$s2,32($sp)
    # Line 1095
    sd	$s1,24($sp)
    # Line 1096
    sd	$s0,16($sp)
    # Line 1099
    lui	$v0,0x1
    # Line 1101
    lui	$t0,0xc180
    # Line 1102
    ori	$t0,$t0,0xcc19
    # Line 1103
    lui	$a4,0x8080
    # Line 1104
    ori	$a4,$a4,0xcc03
    # Line 1106
    li	$s0,0x18
.L0daccc98:
    # Line 1109
    addiu	$a0,$a0,-1
    # Line 1111
    lw	$s2,0($a1)
    # Line 1112
    mult	$s2,$s0
    # Line 1113
    mflo	$s2
    # Line 1114
    addu	$s2,$a2,$s2
    # Line 1116
    lw	$t1,0($s2)
    # Line 1117
    lw	$t2,4($s2)
    # Line 1118
    lw	$t3,8($s2)
    # Line 1119
    lw	$a5,12($s2)
    # Line 1120
    lw	$a6,16($s2)
    # Line 1121
    lw	$a7,20($s2)
    # Line 1123
    sw	$t0,0($v0)
    # Line 1124
    sw	$t1,0($v0)
    # Line 1125
    sw	$t2,0($v0)
    # Line 1126
    sw	$t3,0($v0)
    # Line 1127
    sw	$a4,0($v0)
    # Line 1128
    sw	$a5,0($v0)
    # Line 1129
    sw	$a6,0($v0)
    # Line 1130
    sw	$a7,0($v0)
    # Line 1132
    bne	$zero,$a0,.L0daccc98
    # Line 1133
    addiu	$a1,$a1,4
    # Line 1135
    ld	$s0,16($sp)
    # Line 1136
    ld	$s1,24($sp)
    # Line 1137
    ld	$s2,32($sp)
    # Line 1138
    ld	$s3,40($sp)
    # Line 1140
    jr	$ra
    # Line 1141
    addiu	$sp,$sp,48
.end __glOdysseyElementsInt_N3F_V3F

# Function: __glOdysseyElementsInt_V3F_N3F
# Declared: Line 1167 (Source lines: 1167-1219)
# Address: 0x0daccd04 - 0x0daccd9c (Size: 152 bytes, Frame: 48)
.globl __glOdysseyElementsInt_V3F_N3F
.ent __glOdysseyElementsInt_V3F_N3F
__glOdysseyElementsInt_V3F_N3F:
    # Line 1167
    addiu	$sp,$sp,-48
    # Line 1171
    sd	$s3,40($sp)
    # Line 1172
    sd	$s2,32($sp)
    # Line 1173
    sd	$s1,24($sp)
    # Line 1174
    sd	$s0,16($sp)
    # Line 1177
    lui	$v0,0x1
    # Line 1179
    lui	$t0,0xc180
    # Line 1180
    ori	$t0,$t0,0xcc19
    # Line 1181
    lui	$a4,0x8080
    # Line 1182
    ori	$a4,$a4,0xcc03
    # Line 1184
    li	$s0,0x18
.L0daccd30:
    # Line 1187
    addiu	$a0,$a0,-1
    # Line 1189
    lw	$s2,0($a1)
    # Line 1190
    mult	$s2,$s0
    # Line 1191
    mflo	$s2
    # Line 1192
    addu	$s2,$a2,$s2
    # Line 1194
    lw	$a5,0($s2)
    # Line 1195
    lw	$a6,4($s2)
    # Line 1196
    lw	$a7,8($s2)
    # Line 1197
    lw	$t1,12($s2)
    # Line 1198
    lw	$t2,16($s2)
    # Line 1199
    lw	$t3,20($s2)
    # Line 1201
    sw	$t0,0($v0)
    # Line 1202
    sw	$t1,0($v0)
    # Line 1203
    sw	$t2,0($v0)
    # Line 1204
    sw	$t3,0($v0)
    # Line 1205
    sw	$a4,0($v0)
    # Line 1206
    sw	$a5,0($v0)
    # Line 1207
    sw	$a6,0($v0)
    # Line 1208
    sw	$a7,0($v0)
    # Line 1210
    bne	$zero,$a0,.L0daccd30
    # Line 1211
    addiu	$a1,$a1,4
    # Line 1213
    ld	$s0,16($sp)
    # Line 1214
    ld	$s1,24($sp)
    # Line 1215
    ld	$s2,32($sp)
    # Line 1216
    ld	$s3,40($sp)
    # Line 1218
    jr	$ra
    # Line 1219
    addiu	$sp,$sp,48
.end __glOdysseyElementsInt_V3F_N3F

# Function: __glOdysseyElementsSep_N3F_V3F
# Declared: Line 1248 (Source lines: 1248-1306)
# Address: 0x0daccd9c - 0x0dacce4c (Size: 176 bytes, Frame: 48)
.globl __glOdysseyElementsSep_N3F_V3F
.ent __glOdysseyElementsSep_N3F_V3F
__glOdysseyElementsSep_N3F_V3F:
    # Line 1248
    addiu	$sp,$sp,-48
    # Line 1252
    sd	$s3,40($sp)
    # Line 1253
    sd	$s2,32($sp)
    # Line 1254
    sd	$s1,24($sp)
    # Line 1255
    sd	$s0,16($sp)
    # Line 1258
    lui	$v0,0x1
    # Line 1260
    lui	$t0,0xc180
    # Line 1261
    ori	$t0,$t0,0xcc19
    # Line 1262
    lui	$a4,0x8080
    # Line 1263
    ori	$a4,$a4,0xcc03
    # Line 1265
    li	$s0,0xc
    # Line 1266
    li	$s1,0xc
.L0daccdcc:
    # Line 1269
    addiu	$a0,$a0,-1
    # Line 1271
    lw	$s2,0($a1)
    # Line 1272
    or	$s3,$zero,$s2
    # Line 1273
    mult	$s2,$s0
    # Line 1274
    mflo	$s2
    # Line 1275
    addu	$s2,$a2,$s2
    # Line 1276
    nop
    # Line 1277
    mult	$s3,$s1
    # Line 1278
    mflo	$s3
    # Line 1279
    addu	$s3,$a3,$s3
    # Line 1281
    lw	$t1,0($s2)
    # Line 1282
    lw	$t2,4($s2)
    # Line 1283
    lw	$t3,8($s2)
    # Line 1284
    lw	$a5,0($s3)
    # Line 1285
    lw	$a6,4($s3)
    # Line 1286
    lw	$a7,8($s3)
    # Line 1288
    sw	$t0,0($v0)
    # Line 1289
    sw	$t1,0($v0)
    # Line 1290
    sw	$t2,0($v0)
    # Line 1291
    sw	$t3,0($v0)
    # Line 1292
    sw	$a4,0($v0)
    # Line 1293
    sw	$a5,0($v0)
    # Line 1294
    sw	$a6,0($v0)
    # Line 1295
    sw	$a7,0($v0)
    # Line 1297
    bne	$zero,$a0,.L0daccdcc
    # Line 1298
    addiu	$a1,$a1,4
    # Line 1300
    ld	$s0,16($sp)
    # Line 1301
    ld	$s1,24($sp)
    # Line 1302
    ld	$s2,32($sp)
    # Line 1303
    ld	$s3,40($sp)
    # Line 1305
    jr	$ra
    # Line 1306
    addiu	$sp,$sp,48
.end __glOdysseyElementsSep_N3F_V3F

# Function: __glOdysseyElementsSep_N3S_V3F
# Declared: Line 1337 (Source lines: 1337-1395)
# Address: 0x0dacce4c - 0x0daccefc (Size: 176 bytes, Frame: 48)
.globl __glOdysseyElementsSep_N3S_V3F
.ent __glOdysseyElementsSep_N3S_V3F
__glOdysseyElementsSep_N3S_V3F:
    # Line 1337
    addiu	$sp,$sp,-48
    # Line 1341
    sd	$s3,40($sp)
    # Line 1342
    sd	$s2,32($sp)
    # Line 1343
    sd	$s1,24($sp)
    # Line 1344
    sd	$s0,16($sp)
    # Line 1347
    lui	$v0,0x1
    # Line 1349
    lui	$t0,0xc180
    # Line 1350
    ori	$t0,$t0,0xcc17
    # Line 1351
    lui	$a4,0x8080
    # Line 1352
    ori	$a4,$a4,0xcc03
    # Line 1354
    li	$s0,0x6
    # Line 1355
    li	$s1,0xc
.L0dacce7c:
    # Line 1358
    addiu	$a0,$a0,-1
    # Line 1360
    lw	$s2,0($a1)
    # Line 1361
    or	$s3,$zero,$s2
    # Line 1362
    mult	$s2,$s0
    # Line 1363
    mflo	$s2
    # Line 1364
    addu	$s2,$a2,$s2
    # Line 1365
    nop
    # Line 1366
    mult	$s3,$s1
    # Line 1367
    mflo	$s3
    # Line 1368
    addu	$s3,$a3,$s3
    # Line 1370
    lh	$t1,0($s2)
    # Line 1371
    lh	$t2,2($s2)
    # Line 1372
    lh	$t3,4($s2)
    # Line 1373
    lw	$a5,0($s3)
    # Line 1374
    lw	$a6,4($s3)
    # Line 1375
    lw	$a7,8($s3)
    # Line 1377
    sw	$t0,0($v0)
    # Line 1378
    sw	$t1,0($v0)
    # Line 1379
    sw	$t2,0($v0)
    # Line 1380
    sw	$t3,0($v0)
    # Line 1381
    sw	$a4,0($v0)
    # Line 1382
    sw	$a5,0($v0)
    # Line 1383
    sw	$a6,0($v0)
    # Line 1384
    sw	$a7,0($v0)
    # Line 1386
    bne	$zero,$a0,.L0dacce7c
    # Line 1387
    addiu	$a1,$a1,4
    # Line 1389
    ld	$s0,16($sp)
    # Line 1390
    ld	$s1,24($sp)
    # Line 1391
    ld	$s2,32($sp)
    # Line 1392
    ld	$s3,40($sp)
    # Line 1394
    jr	$ra
    # Line 1395
    addiu	$sp,$sp,48
.end __glOdysseyElementsSep_N3S_V3F

# Function: __glOdysseyElementsInt_T2F_V3F
# Declared: Line 1421 (Source lines: 1421-1471)
# Address: 0x0daccefc - 0x0daccf8c (Size: 144 bytes, Frame: 48)
.globl __glOdysseyElementsInt_T2F_V3F
.ent __glOdysseyElementsInt_T2F_V3F
__glOdysseyElementsInt_T2F_V3F:
    # Line 1421
    addiu	$sp,$sp,-48
    # Line 1425
    sd	$s3,40($sp)
    # Line 1426
    sd	$s2,32($sp)
    # Line 1427
    sd	$s1,24($sp)
    # Line 1428
    sd	$s0,16($sp)
    # Line 1431
    lui	$v0,0x1
    # Line 1433
    lui	$t0,0xc380
    # Line 1434
    ori	$t0,$t0,0xc821
    # Line 1435
    lui	$a4,0x8080
    # Line 1436
    ori	$a4,$a4,0xcc03
    # Line 1438
    li	$s0,0x14
.L0daccf28:
    # Line 1441
    addiu	$a0,$a0,-1
    # Line 1443
    lw	$s2,0($a1)
    # Line 1444
    mult	$s2,$s0
    # Line 1445
    mflo	$s2
    # Line 1446
    addu	$s2,$a2,$s2
    # Line 1448
    lw	$t1,0($s2)
    # Line 1449
    lw	$t2,4($s2)
    # Line 1450
    lw	$a5,12($s2)
    # Line 1451
    lw	$a6,16($s2)
    # Line 1452
    lw	$a7,20($s2)
    # Line 1454
    sw	$t0,0($v0)
    # Line 1455
    sw	$t1,0($v0)
    # Line 1456
    sw	$t2,0($v0)
    # Line 1457
    sw	$a4,0($v0)
    # Line 1458
    sw	$a5,0($v0)
    # Line 1459
    sw	$a6,0($v0)
    # Line 1460
    sw	$a7,0($v0)
    # Line 1462
    bne	$zero,$a0,.L0daccf28
    # Line 1463
    addiu	$a1,$a1,4
    # Line 1465
    ld	$s0,16($sp)
    # Line 1466
    ld	$s1,24($sp)
    # Line 1467
    ld	$s2,32($sp)
    # Line 1468
    ld	$s3,40($sp)
    # Line 1470
    jr	$ra
    # Line 1471
    addiu	$sp,$sp,48
.end __glOdysseyElementsInt_T2F_V3F

# Function: __glOdysseyElementsSep_T2F_V3F
# Declared: Line 1500 (Source lines: 1500-1556)
# Address: 0x0daccf8c - 0x0dacd034 (Size: 168 bytes, Frame: 48)
.globl __glOdysseyElementsSep_T2F_V3F
.ent __glOdysseyElementsSep_T2F_V3F
__glOdysseyElementsSep_T2F_V3F:
    # Line 1500
    addiu	$sp,$sp,-48
    # Line 1504
    sd	$s3,40($sp)
    # Line 1505
    sd	$s2,32($sp)
    # Line 1506
    sd	$s1,24($sp)
    # Line 1507
    sd	$s0,16($sp)
    # Line 1510
    lui	$v0,0x1
    # Line 1512
    lui	$t0,0xc380
    # Line 1513
    ori	$t0,$t0,0xc821
    # Line 1514
    lui	$a4,0x8080
    # Line 1515
    ori	$a4,$a4,0xcc03
    # Line 1517
    li	$s0,0x8
    # Line 1518
    li	$s1,0xc
.L0daccfbc:
    # Line 1521
    addiu	$a0,$a0,-1
    # Line 1523
    lw	$s2,0($a1)
    # Line 1524
    or	$s3,$zero,$s2
    # Line 1525
    mult	$s2,$s0
    # Line 1526
    mflo	$s2
    # Line 1527
    addu	$s2,$a2,$s2
    # Line 1528
    nop
    # Line 1529
    mult	$s3,$s1
    # Line 1530
    mflo	$s3
    # Line 1531
    addu	$s3,$a3,$s3
    # Line 1533
    lw	$t1,0($s2)
    # Line 1534
    lw	$t2,4($s2)
    # Line 1535
    lw	$a5,0($s3)
    # Line 1536
    lw	$a6,4($s3)
    # Line 1537
    lw	$a7,8($s3)
    # Line 1539
    sw	$t0,0($v0)
    # Line 1540
    sw	$t1,0($v0)
    # Line 1541
    sw	$t2,0($v0)
    # Line 1542
    sw	$a4,0($v0)
    # Line 1543
    sw	$a5,0($v0)
    # Line 1544
    sw	$a6,0($v0)
    # Line 1545
    sw	$a7,0($v0)
    # Line 1547
    bne	$zero,$a0,.L0daccfbc
    # Line 1548
    addiu	$a1,$a1,4
    # Line 1550
    ld	$s0,16($sp)
    # Line 1551
    ld	$s1,24($sp)
    # Line 1552
    ld	$s2,32($sp)
    # Line 1553
    ld	$s3,40($sp)
    # Line 1555
    jr	$ra
    # Line 1556
    addiu	$sp,$sp,48
.end __glOdysseyElementsSep_T2F_V3F

