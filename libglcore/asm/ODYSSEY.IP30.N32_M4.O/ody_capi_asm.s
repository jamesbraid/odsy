# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_capi_asm.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 84

.text

# Function: __glOdyim_Color3b
# Declared: Line 81 (Source lines: 81-90)
# Address: 0x0dad4100 - 0x0dad4120 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3b
.ent __glOdyim_Color3b
__glOdyim_Color3b:
    # Line 81
    lui	$a7,0xc580
    # Line 83
    lui	$v0,0x1
    # Line 85
    ori	$a7,$a7,0xcc0b
    # Line 86
    sw	$a7,0($v0)
    # Line 87
    sw	$a0,0($v0)
    # Line 88
    sw	$a1,0($v0)
    # Line 89
    jr	$ra
    # Line 90
    sw	$a2,0($v0)
.end __glOdyim_Color3b

# Function: __glOdyim_ScratchColor3b
# Declared: Line 111 (Source lines: 111-120)
# Address: 0x0dad4140 - 0x0dad4160 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3b
.ent __glOdyim_ScratchColor3b
__glOdyim_ScratchColor3b:
    # Line 111
    lui	$a7,0xce80
    # Line 113
    lui	$v0,0x1
    # Line 115
    ori	$a7,$a7,0xcc0b
    # Line 116
    sw	$a7,0($v0)
    # Line 117
    sw	$a0,0($v0)
    # Line 118
    sw	$a1,0($v0)
    # Line 119
    jr	$ra
    # Line 120
    sw	$a2,0($v0)
.end __glOdyim_ScratchColor3b

# Function: __glOdyim_Color3bv
# Declared: Line 144 (Source lines: 144-156)
# Address: 0x0dad4180 - 0x0dad41ac (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color3bv
.ent __glOdyim_Color3bv
__glOdyim_Color3bv:
    # Line 144
    lb	$t0,0($a0)
    # Line 145
    lui	$a7,0xc580
    # Line 147
    lui	$v0,0x1
    # Line 149
    lb	$t1,1($a0)
    # Line 150
    ori	$a7,$a7,0xcc0b
    # Line 151
    lb	$t2,2($a0)
    # Line 152
    sw	$a7,0($v0)
    # Line 153
    sw	$t0,0($v0)
    # Line 154
    sw	$t1,0($v0)
    # Line 155
    jr	$ra
    # Line 156
    sw	$t2,0($v0)
.end __glOdyim_Color3bv

# Function: __glOdyim_ScratchColor3bv
# Declared: Line 180 (Source lines: 180-192)
# Address: 0x0dad41c0 - 0x0dad41ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3bv
.ent __glOdyim_ScratchColor3bv
__glOdyim_ScratchColor3bv:
    # Line 180
    lb	$t0,0($a0)
    # Line 181
    lui	$a7,0xce80
    # Line 183
    lui	$v0,0x1
    # Line 185
    lb	$t1,1($a0)
    # Line 186
    ori	$a7,$a7,0xcc0b
    # Line 187
    lb	$t2,2($a0)
    # Line 188
    sw	$a7,0($v0)
    # Line 189
    sw	$t0,0($v0)
    # Line 190
    sw	$t1,0($v0)
    # Line 191
    jr	$ra
    # Line 192
    sw	$t2,0($v0)
.end __glOdyim_ScratchColor3bv

# Function: __glOdyim_Color3d
# Declared: Line 215 (Source lines: 215-227)
# Address: 0x0dad4200 - 0x0dad422c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color3d
.ent __glOdyim_Color3d
__glOdyim_Color3d:
    # Line 215
    cvt.s.d	$f12,$f12
    # Line 216
    lui	$a7,0xc580
    # Line 217
    cvt.s.d	$f13,$f13
    # Line 219
    lui	$v0,0x1
    # Line 221
    ori	$a7,$a7,0xcc0e
    # Line 222
    cvt.s.d	$f14,$f14
    # Line 223
    sw	$a7,0($v0)
    # Line 224
    swc1	$f12,0($v0)
    # Line 225
    swc1	$f13,0($v0)
    # Line 226
    jr	$ra
    # Line 227
    swc1	$f14,0($v0)
.end __glOdyim_Color3d

# Function: __glOdyim_ScratchColor3d
# Declared: Line 250 (Source lines: 250-262)
# Address: 0x0dad4240 - 0x0dad426c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3d
.ent __glOdyim_ScratchColor3d
__glOdyim_ScratchColor3d:
    # Line 250
    cvt.s.d	$f12,$f12
    # Line 251
    lui	$a7,0xce80
    # Line 252
    cvt.s.d	$f13,$f13
    # Line 254
    lui	$v0,0x1
    # Line 256
    ori	$a7,$a7,0xcc0e
    # Line 257
    cvt.s.d	$f14,$f14
    # Line 258
    sw	$a7,0($v0)
    # Line 259
    swc1	$f12,0($v0)
    # Line 260
    swc1	$f13,0($v0)
    # Line 261
    jr	$ra
    # Line 262
    swc1	$f14,0($v0)
.end __glOdyim_ScratchColor3d

# Function: __glOdyim_Color3dv
# Declared: Line 269 (Source lines: 269-284)
# Address: 0x0dad4280 - 0x0dad42b8 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_Color3dv
.ent __glOdyim_Color3dv
__glOdyim_Color3dv:
    # Line 269
    ldc1	$f4,0($a0)
    # Line 270
    lui	$a7,0xc580
    # Line 272
    lui	$v0,0x1
    # Line 274
    ldc1	$f5,8($a0)
    # Line 275
    ori	$a7,$a7,0xcc0e
    # Line 276
    cvt.s.d	$f4,$f4
    # Line 277
    ldc1	$f6,16($a0)
    # Line 278
    cvt.s.d	$f5,$f5
    # Line 279
    sw	$a7,0($v0)
    # Line 280
    cvt.s.d	$f6,$f6
    # Line 281
    swc1	$f4,0($v0)
    # Line 282
    swc1	$f5,0($v0)
    # Line 283
    jr	$ra
    # Line 284
    swc1	$f6,0($v0)
.end __glOdyim_Color3dv

# Function: __glOdyim_ScratchColor3dv
# Declared: Line 290 (Source lines: 290-305)
# Address: 0x0dad42c0 - 0x0dad42f8 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3dv
.ent __glOdyim_ScratchColor3dv
__glOdyim_ScratchColor3dv:
    # Line 290
    ldc1	$f4,0($a0)
    # Line 291
    lui	$a7,0xce80
    # Line 293
    lui	$v0,0x1
    # Line 295
    ldc1	$f5,8($a0)
    # Line 296
    ori	$a7,$a7,0xcc0e
    # Line 297
    cvt.s.d	$f4,$f4
    # Line 298
    ldc1	$f6,16($a0)
    # Line 299
    cvt.s.d	$f5,$f5
    # Line 300
    sw	$a7,0($v0)
    # Line 301
    cvt.s.d	$f6,$f6
    # Line 302
    swc1	$f4,0($v0)
    # Line 303
    swc1	$f5,0($v0)
    # Line 304
    jr	$ra
    # Line 305
    swc1	$f6,0($v0)
.end __glOdyim_ScratchColor3dv

# Function: __glOdyim_Color3f
# Declared: Line 325 (Source lines: 325-334)
# Address: 0x0dad4300 - 0x0dad4320 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3f
.ent __glOdyim_Color3f
__glOdyim_Color3f:
    # Line 325
    lui	$a7,0xc580
    # Line 327
    lui	$v0,0x1
    # Line 329
    ori	$a7,$a7,0xcc0e
    # Line 330
    sw	$a7,0($v0)
    # Line 331
    swc1	$f12,0($v0)
    # Line 332
    swc1	$f13,0($v0)
    # Line 333
    jr	$ra
    # Line 334
    swc1	$f14,0($v0)
.end __glOdyim_Color3f

# Function: __glOdyim_ScratchColor3f
# Declared: Line 355 (Source lines: 355-364)
# Address: 0x0dad4340 - 0x0dad4360 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3f
.ent __glOdyim_ScratchColor3f
__glOdyim_ScratchColor3f:
    # Line 355
    lui	$a7,0xce80
    # Line 357
    lui	$v0,0x1
    # Line 359
    ori	$a7,$a7,0xcc0e
    # Line 360
    sw	$a7,0($v0)
    # Line 361
    swc1	$f12,0($v0)
    # Line 362
    swc1	$f13,0($v0)
    # Line 363
    jr	$ra
    # Line 364
    swc1	$f14,0($v0)
.end __glOdyim_ScratchColor3f

# Function: __glOdyim_Color3fv
# Declared: Line 387 (Source lines: 387-398)
# Address: 0x0dad4380 - 0x0dad43a8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_Color3fv
.ent __glOdyim_Color3fv
__glOdyim_Color3fv:
    # Line 387
    ldl	$t1,4($a0)
    # Line 388
    lui	$a7,0xc580
    # Line 390
    lui	$v0,0x1
    # Line 392
    lwu	$t0,0($a0)
    # Line 393
    ori	$a7,$a7,0xcc0e
    # Line 394
    ldr	$t1,11($a0)
    # Line 395
    sw	$a7,0($v0)
    # Line 396
    sw	$t0,0($v0)
    # Line 397
    jr	$ra
    # Line 398
    sd	$t1,0($v0)
.end __glOdyim_Color3fv

# Function: __glOdyim_ScratchColor3fv
# Declared: Line 421 (Source lines: 421-432)
# Address: 0x0dad43c0 - 0x0dad43e8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3fv
.ent __glOdyim_ScratchColor3fv
__glOdyim_ScratchColor3fv:
    # Line 421
    ldl	$t1,4($a0)
    # Line 422
    lui	$a7,0xce80
    # Line 424
    lui	$v0,0x1
    # Line 426
    lwu	$t0,0($a0)
    # Line 427
    ori	$a7,$a7,0xcc0e
    # Line 428
    ldr	$t1,11($a0)
    # Line 429
    sw	$a7,0($v0)
    # Line 430
    sw	$t0,0($v0)
    # Line 431
    jr	$ra
    # Line 432
    sd	$t1,0($v0)
.end __glOdyim_ScratchColor3fv

# Function: __glOdyim_Color3i
# Declared: Line 453 (Source lines: 453-462)
# Address: 0x0dad4400 - 0x0dad4420 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3i
.ent __glOdyim_Color3i
__glOdyim_Color3i:
    # Line 453
    lui	$a7,0xc580
    # Line 455
    lui	$v0,0x1
    # Line 457
    ori	$a7,$a7,0xcc0d
    # Line 458
    sw	$a7,0($v0)
    # Line 459
    sw	$a0,0($v0)
    # Line 460
    sw	$a1,0($v0)
    # Line 461
    jr	$ra
    # Line 462
    sw	$a2,0($v0)
.end __glOdyim_Color3i

# Function: __glOdyim_ScratchColor3i
# Declared: Line 483 (Source lines: 483-492)
# Address: 0x0dad4440 - 0x0dad4460 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3i
.ent __glOdyim_ScratchColor3i
__glOdyim_ScratchColor3i:
    # Line 483
    lui	$a7,0xce80
    # Line 485
    lui	$v0,0x1
    # Line 487
    ori	$a7,$a7,0xcc0d
    # Line 488
    sw	$a7,0($v0)
    # Line 489
    sw	$a0,0($v0)
    # Line 490
    sw	$a1,0($v0)
    # Line 491
    jr	$ra
    # Line 492
    sw	$a2,0($v0)
.end __glOdyim_ScratchColor3i

# Function: __glOdyim_Color3iv
# Declared: Line 515 (Source lines: 515-526)
# Address: 0x0dad4480 - 0x0dad44a8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_Color3iv
.ent __glOdyim_Color3iv
__glOdyim_Color3iv:
    # Line 515
    ldl	$t1,4($a0)
    # Line 516
    lui	$a7,0xc580
    # Line 518
    lui	$v0,0x1
    # Line 520
    lwu	$t0,0($a0)
    # Line 521
    ori	$a7,$a7,0xcc0d
    # Line 522
    ldr	$t1,11($a0)
    # Line 523
    sw	$a7,0($v0)
    # Line 524
    sw	$t0,0($v0)
    # Line 525
    jr	$ra
    # Line 526
    sd	$t1,0($v0)
.end __glOdyim_Color3iv

# Function: __glOdyim_ScratchColor3iv
# Declared: Line 549 (Source lines: 549-560)
# Address: 0x0dad44c0 - 0x0dad44e8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3iv
.ent __glOdyim_ScratchColor3iv
__glOdyim_ScratchColor3iv:
    # Line 549
    ldl	$t1,4($a0)
    # Line 550
    lui	$a7,0xce80
    # Line 552
    lui	$v0,0x1
    # Line 554
    lwu	$t0,0($a0)
    # Line 555
    ori	$a7,$a7,0xcc0d
    # Line 556
    ldr	$t1,11($a0)
    # Line 557
    sw	$a7,0($v0)
    # Line 558
    sw	$t0,0($v0)
    # Line 559
    jr	$ra
    # Line 560
    sd	$t1,0($v0)
.end __glOdyim_ScratchColor3iv

# Function: __glOdyim_Color3s
# Declared: Line 581 (Source lines: 581-590)
# Address: 0x0dad4500 - 0x0dad4520 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3s
.ent __glOdyim_Color3s
__glOdyim_Color3s:
    # Line 581
    lui	$a7,0xc580
    # Line 583
    lui	$v0,0x1
    # Line 585
    ori	$a7,$a7,0xcc0c
    # Line 586
    sw	$a7,0($v0)
    # Line 587
    sw	$a0,0($v0)
    # Line 588
    sw	$a1,0($v0)
    # Line 589
    jr	$ra
    # Line 590
    sw	$a2,0($v0)
.end __glOdyim_Color3s

# Function: __glOdyim_ScratchColor3s
# Declared: Line 611 (Source lines: 611-620)
# Address: 0x0dad4540 - 0x0dad4560 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3s
.ent __glOdyim_ScratchColor3s
__glOdyim_ScratchColor3s:
    # Line 611
    lui	$a7,0xce80
    # Line 613
    lui	$v0,0x1
    # Line 615
    ori	$a7,$a7,0xcc0c
    # Line 616
    sw	$a7,0($v0)
    # Line 617
    sw	$a0,0($v0)
    # Line 618
    sw	$a1,0($v0)
    # Line 619
    jr	$ra
    # Line 620
    sw	$a2,0($v0)
.end __glOdyim_ScratchColor3s

# Function: __glOdyim_Color3sv
# Declared: Line 644 (Source lines: 644-656)
# Address: 0x0dad4580 - 0x0dad45ac (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color3sv
.ent __glOdyim_Color3sv
__glOdyim_Color3sv:
    # Line 644
    lh	$t0,0($a0)
    # Line 645
    lui	$a7,0xc580
    # Line 647
    lui	$v0,0x1
    # Line 649
    lh	$t1,2($a0)
    # Line 650
    ori	$a7,$a7,0xcc0c
    # Line 651
    lh	$t2,4($a0)
    # Line 652
    sw	$a7,0($v0)
    # Line 653
    sw	$t0,0($v0)
    # Line 654
    sw	$t1,0($v0)
    # Line 655
    jr	$ra
    # Line 656
    sw	$t2,0($v0)
.end __glOdyim_Color3sv

# Function: __glOdyim_ScratchColor3sv
# Declared: Line 680 (Source lines: 680-692)
# Address: 0x0dad45c0 - 0x0dad45ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3sv
.ent __glOdyim_ScratchColor3sv
__glOdyim_ScratchColor3sv:
    # Line 680
    lh	$t0,0($a0)
    # Line 681
    lui	$a7,0xce80
    # Line 683
    lui	$v0,0x1
    # Line 685
    lh	$t1,2($a0)
    # Line 686
    ori	$a7,$a7,0xcc0c
    # Line 687
    lh	$t2,4($a0)
    # Line 688
    sw	$a7,0($v0)
    # Line 689
    sw	$t0,0($v0)
    # Line 690
    sw	$t1,0($v0)
    # Line 691
    jr	$ra
    # Line 692
    sw	$t2,0($v0)
.end __glOdyim_ScratchColor3sv

# Function: __glOdyim_Color3ub
# Declared: Line 713 (Source lines: 713-722)
# Address: 0x0dad4600 - 0x0dad4620 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3ub
.ent __glOdyim_Color3ub
__glOdyim_Color3ub:
    # Line 713
    lui	$a7,0xc580
    # Line 715
    lui	$v0,0x1
    # Line 717
    ori	$a7,$a7,0xcc08
    # Line 718
    sw	$a7,0($v0)
    # Line 719
    sw	$a0,0($v0)
    # Line 720
    sw	$a1,0($v0)
    # Line 721
    jr	$ra
    # Line 722
    sw	$a2,0($v0)
.end __glOdyim_Color3ub

# Function: __glOdyim_ScratchColor3ub
# Declared: Line 743 (Source lines: 743-752)
# Address: 0x0dad4640 - 0x0dad4660 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3ub
.ent __glOdyim_ScratchColor3ub
__glOdyim_ScratchColor3ub:
    # Line 743
    lui	$a7,0xce80
    # Line 745
    lui	$v0,0x1
    # Line 747
    ori	$a7,$a7,0xcc08
    # Line 748
    sw	$a7,0($v0)
    # Line 749
    sw	$a0,0($v0)
    # Line 750
    sw	$a1,0($v0)
    # Line 751
    jr	$ra
    # Line 752
    sw	$a2,0($v0)
.end __glOdyim_ScratchColor3ub

# Function: __glOdyim_Color3ubv
# Declared: Line 776 (Source lines: 776-788)
# Address: 0x0dad4680 - 0x0dad46ac (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color3ubv
.ent __glOdyim_Color3ubv
__glOdyim_Color3ubv:
    # Line 776
    lbu	$t0,0($a0)
    # Line 777
    lui	$a7,0xc580
    # Line 779
    lui	$v0,0x1
    # Line 781
    lbu	$t1,1($a0)
    # Line 782
    ori	$a7,$a7,0xcc08
    # Line 783
    lbu	$t2,2($a0)
    # Line 784
    sw	$a7,0($v0)
    # Line 785
    sw	$t0,0($v0)
    # Line 786
    sw	$t1,0($v0)
    # Line 787
    jr	$ra
    # Line 788
    sw	$t2,0($v0)
.end __glOdyim_Color3ubv

# Function: __glOdyim_ScratchColor3ubv
# Declared: Line 812 (Source lines: 812-824)
# Address: 0x0dad46c0 - 0x0dad46ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3ubv
.ent __glOdyim_ScratchColor3ubv
__glOdyim_ScratchColor3ubv:
    # Line 812
    lbu	$t0,0($a0)
    # Line 813
    lui	$a7,0xce80
    # Line 815
    lui	$v0,0x1
    # Line 817
    lbu	$t1,1($a0)
    # Line 818
    ori	$a7,$a7,0xcc08
    # Line 819
    lbu	$t2,2($a0)
    # Line 820
    sw	$a7,0($v0)
    # Line 821
    sw	$t0,0($v0)
    # Line 822
    sw	$t1,0($v0)
    # Line 823
    jr	$ra
    # Line 824
    sw	$t2,0($v0)
.end __glOdyim_ScratchColor3ubv

# Function: __glOdyim_Color3ui
# Declared: Line 845 (Source lines: 845-854)
# Address: 0x0dad4700 - 0x0dad4720 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3ui
.ent __glOdyim_Color3ui
__glOdyim_Color3ui:
    # Line 845
    lui	$a7,0xc580
    # Line 847
    lui	$v0,0x1
    # Line 849
    ori	$a7,$a7,0xcc0a
    # Line 850
    sw	$a7,0($v0)
    # Line 851
    sw	$a0,0($v0)
    # Line 852
    sw	$a1,0($v0)
    # Line 853
    jr	$ra
    # Line 854
    sw	$a2,0($v0)
.end __glOdyim_Color3ui

# Function: __glOdyim_ScratchColor3ui
# Declared: Line 875 (Source lines: 875-884)
# Address: 0x0dad4740 - 0x0dad4760 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3ui
.ent __glOdyim_ScratchColor3ui
__glOdyim_ScratchColor3ui:
    # Line 875
    lui	$a7,0xce80
    # Line 877
    lui	$v0,0x1
    # Line 879
    ori	$a7,$a7,0xcc0a
    # Line 880
    sw	$a7,0($v0)
    # Line 881
    sw	$a0,0($v0)
    # Line 882
    sw	$a1,0($v0)
    # Line 883
    jr	$ra
    # Line 884
    sw	$a2,0($v0)
.end __glOdyim_ScratchColor3ui

# Function: __glOdyim_Color3uiv
# Declared: Line 907 (Source lines: 907-918)
# Address: 0x0dad4780 - 0x0dad47a8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_Color3uiv
.ent __glOdyim_Color3uiv
__glOdyim_Color3uiv:
    # Line 907
    ldl	$t1,4($a0)
    # Line 908
    lui	$a7,0xc580
    # Line 910
    lui	$v0,0x1
    # Line 912
    lwu	$t0,0($a0)
    # Line 913
    ori	$a7,$a7,0xcc0a
    # Line 914
    ldr	$t1,11($a0)
    # Line 915
    sw	$a7,0($v0)
    # Line 916
    sw	$t0,0($v0)
    # Line 917
    jr	$ra
    # Line 918
    sd	$t1,0($v0)
.end __glOdyim_Color3uiv

# Function: __glOdyim_ScratchColor3uiv
# Declared: Line 941 (Source lines: 941-952)
# Address: 0x0dad47c0 - 0x0dad47e8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3uiv
.ent __glOdyim_ScratchColor3uiv
__glOdyim_ScratchColor3uiv:
    # Line 941
    ldl	$t1,4($a0)
    # Line 942
    lui	$a7,0xce80
    # Line 944
    lui	$v0,0x1
    # Line 946
    lwu	$t0,0($a0)
    # Line 947
    ori	$a7,$a7,0xcc0a
    # Line 948
    ldr	$t1,11($a0)
    # Line 949
    sw	$a7,0($v0)
    # Line 950
    sw	$t0,0($v0)
    # Line 951
    jr	$ra
    # Line 952
    sd	$t1,0($v0)
.end __glOdyim_ScratchColor3uiv

# Function: __glOdyim_Color3us
# Declared: Line 973 (Source lines: 973-982)
# Address: 0x0dad4800 - 0x0dad4820 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Color3us
.ent __glOdyim_Color3us
__glOdyim_Color3us:
    # Line 973
    lui	$a7,0xc580
    # Line 975
    lui	$v0,0x1
    # Line 977
    ori	$a7,$a7,0xcc09
    # Line 978
    sw	$a7,0($v0)
    # Line 979
    sw	$a0,0($v0)
    # Line 980
    sw	$a1,0($v0)
    # Line 981
    jr	$ra
    # Line 982
    sw	$a2,0($v0)
.end __glOdyim_Color3us

# Function: __glOdyim_ScratchColor3us
# Declared: Line 1003 (Source lines: 1003-1012)
# Address: 0x0dad4840 - 0x0dad4860 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3us
.ent __glOdyim_ScratchColor3us
__glOdyim_ScratchColor3us:
    # Line 1003
    lui	$a7,0xce80
    # Line 1005
    lui	$v0,0x1
    # Line 1007
    ori	$a7,$a7,0xcc09
    # Line 1008
    sw	$a7,0($v0)
    # Line 1009
    sw	$a0,0($v0)
    # Line 1010
    sw	$a1,0($v0)
    # Line 1011
    jr	$ra
    # Line 1012
    sw	$a2,0($v0)
.end __glOdyim_ScratchColor3us

# Function: __glOdyim_Color3usv
# Declared: Line 1036 (Source lines: 1036-1048)
# Address: 0x0dad4880 - 0x0dad48ac (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color3usv
.ent __glOdyim_Color3usv
__glOdyim_Color3usv:
    # Line 1036
    lhu	$t0,0($a0)
    # Line 1037
    lui	$a7,0xc580
    # Line 1039
    lui	$v0,0x1
    # Line 1041
    lhu	$t1,2($a0)
    # Line 1042
    ori	$a7,$a7,0xcc09
    # Line 1043
    lhu	$t2,4($a0)
    # Line 1044
    sw	$a7,0($v0)
    # Line 1045
    sw	$t0,0($v0)
    # Line 1046
    sw	$t1,0($v0)
    # Line 1047
    jr	$ra
    # Line 1048
    sw	$t2,0($v0)
.end __glOdyim_Color3usv

# Function: __glOdyim_ScratchColor3usv
# Declared: Line 1072 (Source lines: 1072-1084)
# Address: 0x0dad48c0 - 0x0dad48ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor3usv
.ent __glOdyim_ScratchColor3usv
__glOdyim_ScratchColor3usv:
    # Line 1072
    lhu	$t0,0($a0)
    # Line 1073
    lui	$a7,0xce80
    # Line 1075
    lui	$v0,0x1
    # Line 1077
    lhu	$t1,2($a0)
    # Line 1078
    ori	$a7,$a7,0xcc09
    # Line 1079
    lhu	$t2,4($a0)
    # Line 1080
    sw	$a7,0($v0)
    # Line 1081
    sw	$t0,0($v0)
    # Line 1082
    sw	$t1,0($v0)
    # Line 1083
    jr	$ra
    # Line 1084
    sw	$t2,0($v0)
.end __glOdyim_ScratchColor3usv

# Function: __glOdyim_Color4b
# Declared: Line 1106 (Source lines: 1106-1116)
# Address: 0x0dad4900 - 0x0dad4924 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4b
.ent __glOdyim_Color4b
__glOdyim_Color4b:
    # Line 1106
    lui	$a7,0xc580
    # Line 1108
    lui	$v0,0x1
    # Line 1110
    ori	$a7,$a7,0xd012
    # Line 1111
    sw	$a7,0($v0)
    # Line 1112
    sw	$a0,0($v0)
    # Line 1113
    sw	$a1,0($v0)
    # Line 1114
    sw	$a2,0($v0)
    # Line 1115
    jr	$ra
    # Line 1116
    sw	$a3,0($v0)
.end __glOdyim_Color4b

# Function: __glOdyim_ScratchColor4b
# Declared: Line 1138 (Source lines: 1138-1148)
# Address: 0x0dad4940 - 0x0dad4964 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4b
.ent __glOdyim_ScratchColor4b
__glOdyim_ScratchColor4b:
    # Line 1138
    lui	$a7,0xce80
    # Line 1140
    lui	$v0,0x1
    # Line 1142
    ori	$a7,$a7,0xd012
    # Line 1143
    sw	$a7,0($v0)
    # Line 1144
    sw	$a0,0($v0)
    # Line 1145
    sw	$a1,0($v0)
    # Line 1146
    sw	$a2,0($v0)
    # Line 1147
    jr	$ra
    # Line 1148
    sw	$a3,0($v0)
.end __glOdyim_ScratchColor4b

# Function: __glOdyim_Color4bv
# Declared: Line 1175 (Source lines: 1175-1189)
# Address: 0x0dad4980 - 0x0dad49b4 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Color4bv
.ent __glOdyim_Color4bv
__glOdyim_Color4bv:
    # Line 1175
    lb	$t0,0($a0)
    # Line 1176
    lui	$a7,0xc580
    # Line 1178
    lui	$v0,0x1
    # Line 1180
    lb	$t1,1($a0)
    # Line 1181
    ori	$a7,$a7,0xd012
    # Line 1182
    lb	$t2,2($a0)
    # Line 1183
    lb	$t3,3($a0)
    # Line 1184
    sw	$a7,0($v0)
    # Line 1185
    sw	$t0,0($v0)
    # Line 1186
    sw	$t1,0($v0)
    # Line 1187
    sw	$t2,0($v0)
    # Line 1188
    jr	$ra
    # Line 1189
    sw	$t3,0($v0)
.end __glOdyim_Color4bv

# Function: __glOdyim_ScratchColor4bv
# Declared: Line 1216 (Source lines: 1216-1230)
# Address: 0x0dad49c0 - 0x0dad49f4 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4bv
.ent __glOdyim_ScratchColor4bv
__glOdyim_ScratchColor4bv:
    # Line 1216
    lb	$t0,0($a0)
    # Line 1217
    lui	$a7,0xce80
    # Line 1219
    lui	$v0,0x1
    # Line 1221
    lb	$t1,1($a0)
    # Line 1222
    ori	$a7,$a7,0xd012
    # Line 1223
    lb	$t2,2($a0)
    # Line 1224
    lb	$t3,3($a0)
    # Line 1225
    sw	$a7,0($v0)
    # Line 1226
    sw	$t0,0($v0)
    # Line 1227
    sw	$t1,0($v0)
    # Line 1228
    sw	$t2,0($v0)
    # Line 1229
    jr	$ra
    # Line 1230
    sw	$t3,0($v0)
.end __glOdyim_ScratchColor4bv

# Function: __glOdyim_Color4d
# Declared: Line 1256 (Source lines: 1256-1270)
# Address: 0x0dad4a00 - 0x0dad4a34 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Color4d
.ent __glOdyim_Color4d
__glOdyim_Color4d:
    # Line 1256
    cvt.s.d	$f12,$f12
    # Line 1257
    lui	$a7,0xc580
    # Line 1258
    cvt.s.d	$f13,$f13
    # Line 1260
    lui	$v0,0x1
    # Line 1262
    cvt.s.d	$f14,$f14
    # Line 1263
    ori	$a7,$a7,0xd015
    # Line 1264
    cvt.s.d	$f15,$f15
    # Line 1265
    sw	$a7,0($v0)
    # Line 1266
    swc1	$f12,0($v0)
    # Line 1267
    swc1	$f13,0($v0)
    # Line 1268
    swc1	$f14,0($v0)
    # Line 1269
    jr	$ra
    # Line 1270
    swc1	$f15,0($v0)
.end __glOdyim_Color4d

# Function: __glOdyim_ScratchColor4d
# Declared: Line 1296 (Source lines: 1296-1310)
# Address: 0x0dad4a40 - 0x0dad4a74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4d
.ent __glOdyim_ScratchColor4d
__glOdyim_ScratchColor4d:
    # Line 1296
    cvt.s.d	$f12,$f12
    # Line 1297
    lui	$a7,0xce80
    # Line 1298
    cvt.s.d	$f13,$f13
    # Line 1300
    lui	$v0,0x1
    # Line 1302
    cvt.s.d	$f14,$f14
    # Line 1303
    ori	$a7,$a7,0xd015
    # Line 1304
    cvt.s.d	$f15,$f15
    # Line 1305
    sw	$a7,0($v0)
    # Line 1306
    swc1	$f12,0($v0)
    # Line 1307
    swc1	$f13,0($v0)
    # Line 1308
    swc1	$f14,0($v0)
    # Line 1309
    jr	$ra
    # Line 1310
    swc1	$f15,0($v0)
.end __glOdyim_ScratchColor4d

# Function: __glOdyim_Color4dv
# Declared: Line 1317 (Source lines: 1317-1335)
# Address: 0x0dad4a80 - 0x0dad4ac4 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_Color4dv
.ent __glOdyim_Color4dv
__glOdyim_Color4dv:
    # Line 1317
    ldc1	$f4,0($a0)
    # Line 1318
    lui	$a7,0xc580
    # Line 1320
    lui	$v0,0x1
    # Line 1322
    ldc1	$f5,8($a0)
    # Line 1323
    ori	$a7,$a7,0xd015
    # Line 1324
    ldc1	$f6,16($a0)
    # Line 1325
    cvt.s.d	$f4,$f4
    # Line 1326
    ldc1	$f7,24($a0)
    # Line 1327
    cvt.s.d	$f5,$f5
    # Line 1328
    sw	$a7,0($v0)
    # Line 1329
    cvt.s.d	$f6,$f6
    # Line 1330
    swc1	$f4,0($v0)
    # Line 1331
    cvt.s.d	$f7,$f7
    # Line 1332
    swc1	$f5,0($v0)
    # Line 1333
    swc1	$f6,0($v0)
    # Line 1334
    jr	$ra
    # Line 1335
    swc1	$f7,0($v0)
.end __glOdyim_Color4dv

# Function: __glOdyim_ScratchColor4dv
# Declared: Line 1341 (Source lines: 1341-1359)
# Address: 0x0dad4b00 - 0x0dad4b44 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4dv
.ent __glOdyim_ScratchColor4dv
__glOdyim_ScratchColor4dv:
    # Line 1341
    ldc1	$f4,0($a0)
    # Line 1342
    lui	$a7,0xce80
    # Line 1344
    lui	$v0,0x1
    # Line 1346
    ldc1	$f5,8($a0)
    # Line 1347
    ori	$a7,$a7,0xd015
    # Line 1348
    ldc1	$f6,16($a0)
    # Line 1349
    cvt.s.d	$f4,$f4
    # Line 1350
    ldc1	$f7,24($a0)
    # Line 1351
    cvt.s.d	$f5,$f5
    # Line 1352
    sw	$a7,0($v0)
    # Line 1353
    cvt.s.d	$f6,$f6
    # Line 1354
    swc1	$f4,0($v0)
    # Line 1355
    cvt.s.d	$f7,$f7
    # Line 1356
    swc1	$f5,0($v0)
    # Line 1357
    swc1	$f6,0($v0)
    # Line 1358
    jr	$ra
    # Line 1359
    swc1	$f7,0($v0)
.end __glOdyim_ScratchColor4dv

# Function: __glOdyim_Color4f
# Declared: Line 1365 (Source lines: 1365-1380)
# Address: 0x0dad4b80 - 0x0dad4ba4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4f
.ent __glOdyim_Color4f
__glOdyim_Color4f:
    # Line 1365
    lui	$a7,0xc580
    # Line 1367
    lui	$v0,0x1
    # Line 1369
    ori	$a7,$a7,0xd015
    # Line 1370
    sw	$a7,0($v0)
    # Line 1371
    swc1	$f12,0($v0)
    # Line 1372
    swc1	$f13,0($v0)
    # Line 1378
    swc1	$f14,0($v0)
    # Line 1379
    jr	$ra
    # Line 1380
    swc1	$f15,0($v0)
.end __glOdyim_Color4f

# Function: __glOdyim_ScratchColor4f
# Declared: Line 1387 (Source lines: 1387-1402)
# Address: 0x0dad4bc0 - 0x0dad4be4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4f
.ent __glOdyim_ScratchColor4f
__glOdyim_ScratchColor4f:
    # Line 1387
    lui	$a7,0xce80
    # Line 1389
    lui	$v0,0x1
    # Line 1391
    ori	$a7,$a7,0xd015
    # Line 1392
    sw	$a7,0($v0)
    # Line 1393
    swc1	$f12,0($v0)
    # Line 1394
    swc1	$f13,0($v0)
    # Line 1400
    swc1	$f14,0($v0)
    # Line 1401
    jr	$ra
    # Line 1402
    swc1	$f15,0($v0)
.end __glOdyim_ScratchColor4f

# Function: __glOdyim_Color4fv
# Declared: Line 1425 (Source lines: 1425-1437)
# Address: 0x0dad4c00 - 0x0dad4c2c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color4fv
.ent __glOdyim_Color4fv
__glOdyim_Color4fv:
    # Line 1425
    ldl	$t0,0($a0)
    # Line 1426
    lui	$a7,0xc580
    # Line 1428
    lui	$v0,0x1
    # Line 1430
    ldl	$t1,8($a0)
    # Line 1431
    ori	$a7,$a7,0xd015
    # Line 1432
    ldr	$t0,7($a0)
    # Line 1433
    ldr	$t1,15($a0)
    # Line 1434
    sw	$a7,0($v0)
    # Line 1435
    sd	$t0,0($v0)
    # Line 1436
    jr	$ra
    # Line 1437
    sd	$t1,0($v0)
.end __glOdyim_Color4fv

# Function: __glOdyim_ScratchColor4fv
# Declared: Line 1460 (Source lines: 1460-1472)
# Address: 0x0dad4c40 - 0x0dad4c6c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4fv
.ent __glOdyim_ScratchColor4fv
__glOdyim_ScratchColor4fv:
    # Line 1460
    ldl	$t0,0($a0)
    # Line 1461
    lui	$a7,0xce80
    # Line 1463
    lui	$v0,0x1
    # Line 1465
    ldl	$t1,8($a0)
    # Line 1466
    ori	$a7,$a7,0xd015
    # Line 1467
    ldr	$t0,7($a0)
    # Line 1468
    ldr	$t1,15($a0)
    # Line 1469
    sw	$a7,0($v0)
    # Line 1470
    sd	$t0,0($v0)
    # Line 1471
    jr	$ra
    # Line 1472
    sd	$t1,0($v0)
.end __glOdyim_ScratchColor4fv

# Function: __glOdyim_Color4i
# Declared: Line 1494 (Source lines: 1494-1504)
# Address: 0x0dad4c80 - 0x0dad4ca4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4i
.ent __glOdyim_Color4i
__glOdyim_Color4i:
    # Line 1494
    lui	$a7,0xc580
    # Line 1496
    lui	$v0,0x1
    # Line 1498
    ori	$a7,$a7,0xd014
    # Line 1499
    sw	$a7,0($v0)
    # Line 1500
    sw	$a0,0($v0)
    # Line 1501
    sw	$a1,0($v0)
    # Line 1502
    sw	$a2,0($v0)
    # Line 1503
    jr	$ra
    # Line 1504
    sw	$a3,0($v0)
.end __glOdyim_Color4i

# Function: __glOdyim_ScratchColor4i
# Declared: Line 1526 (Source lines: 1526-1536)
# Address: 0x0dad4cc0 - 0x0dad4ce4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4i
.ent __glOdyim_ScratchColor4i
__glOdyim_ScratchColor4i:
    # Line 1526
    lui	$a7,0xce80
    # Line 1528
    lui	$v0,0x1
    # Line 1530
    ori	$a7,$a7,0xd014
    # Line 1531
    sw	$a7,0($v0)
    # Line 1532
    sw	$a0,0($v0)
    # Line 1533
    sw	$a1,0($v0)
    # Line 1534
    sw	$a2,0($v0)
    # Line 1535
    jr	$ra
    # Line 1536
    sw	$a3,0($v0)
.end __glOdyim_ScratchColor4i

# Function: __glOdyim_Color4iv
# Declared: Line 1559 (Source lines: 1559-1571)
# Address: 0x0dad4d00 - 0x0dad4d2c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color4iv
.ent __glOdyim_Color4iv
__glOdyim_Color4iv:
    # Line 1559
    ldl	$t0,0($a0)
    # Line 1560
    lui	$a7,0xc580
    # Line 1562
    lui	$v0,0x1
    # Line 1564
    ldl	$t1,8($a0)
    # Line 1565
    ori	$a7,$a7,0xd014
    # Line 1566
    ldr	$t0,7($a0)
    # Line 1567
    ldr	$t1,15($a0)
    # Line 1568
    sw	$a7,0($v0)
    # Line 1569
    sd	$t0,0($v0)
    # Line 1570
    jr	$ra
    # Line 1571
    sd	$t1,0($v0)
.end __glOdyim_Color4iv

# Function: __glOdyim_ScratchColor4iv
# Declared: Line 1594 (Source lines: 1594-1606)
# Address: 0x0dad4d40 - 0x0dad4d6c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4iv
.ent __glOdyim_ScratchColor4iv
__glOdyim_ScratchColor4iv:
    # Line 1594
    ldl	$t0,0($a0)
    # Line 1595
    lui	$a7,0xce80
    # Line 1597
    lui	$v0,0x1
    # Line 1599
    ldl	$t1,8($a0)
    # Line 1600
    ori	$a7,$a7,0xd014
    # Line 1601
    ldr	$t0,7($a0)
    # Line 1602
    ldr	$t1,15($a0)
    # Line 1603
    sw	$a7,0($v0)
    # Line 1604
    sd	$t0,0($v0)
    # Line 1605
    jr	$ra
    # Line 1606
    sd	$t1,0($v0)
.end __glOdyim_ScratchColor4iv

# Function: __glOdyim_Color4s
# Declared: Line 1628 (Source lines: 1628-1638)
# Address: 0x0dad4d80 - 0x0dad4da4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4s
.ent __glOdyim_Color4s
__glOdyim_Color4s:
    # Line 1628
    lui	$a7,0xc580
    # Line 1630
    lui	$v0,0x1
    # Line 1632
    ori	$a7,$a7,0xd013
    # Line 1633
    sw	$a7,0($v0)
    # Line 1634
    sw	$a0,0($v0)
    # Line 1635
    sw	$a1,0($v0)
    # Line 1636
    sw	$a2,0($v0)
    # Line 1637
    jr	$ra
    # Line 1638
    sw	$a3,0($v0)
.end __glOdyim_Color4s

# Function: __glOdyim_ScratchColor4s
# Declared: Line 1660 (Source lines: 1660-1670)
# Address: 0x0dad4dc0 - 0x0dad4de4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4s
.ent __glOdyim_ScratchColor4s
__glOdyim_ScratchColor4s:
    # Line 1660
    lui	$a7,0xce80
    # Line 1662
    lui	$v0,0x1
    # Line 1664
    ori	$a7,$a7,0xd013
    # Line 1665
    sw	$a7,0($v0)
    # Line 1666
    sw	$a0,0($v0)
    # Line 1667
    sw	$a1,0($v0)
    # Line 1668
    sw	$a2,0($v0)
    # Line 1669
    jr	$ra
    # Line 1670
    sw	$a3,0($v0)
.end __glOdyim_ScratchColor4s

# Function: __glOdyim_Color4sv
# Declared: Line 1697 (Source lines: 1697-1711)
# Address: 0x0dad4e00 - 0x0dad4e34 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Color4sv
.ent __glOdyim_Color4sv
__glOdyim_Color4sv:
    # Line 1697
    lh	$t0,0($a0)
    # Line 1698
    lui	$a7,0xc580
    # Line 1700
    lui	$v0,0x1
    # Line 1702
    lh	$t1,2($a0)
    # Line 1703
    ori	$a7,$a7,0xd013
    # Line 1704
    lh	$t2,4($a0)
    # Line 1705
    lh	$t3,6($a0)
    # Line 1706
    sw	$a7,0($v0)
    # Line 1707
    sw	$t0,0($v0)
    # Line 1708
    sw	$t1,0($v0)
    # Line 1709
    sw	$t2,0($v0)
    # Line 1710
    jr	$ra
    # Line 1711
    sw	$t3,0($v0)
.end __glOdyim_Color4sv

# Function: __glOdyim_ScratchColor4sv
# Declared: Line 1738 (Source lines: 1738-1752)
# Address: 0x0dad4e40 - 0x0dad4e74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4sv
.ent __glOdyim_ScratchColor4sv
__glOdyim_ScratchColor4sv:
    # Line 1738
    lh	$t0,0($a0)
    # Line 1739
    lui	$a7,0xce80
    # Line 1741
    lui	$v0,0x1
    # Line 1743
    lh	$t1,2($a0)
    # Line 1744
    ori	$a7,$a7,0xd013
    # Line 1745
    lh	$t2,4($a0)
    # Line 1746
    lh	$t3,6($a0)
    # Line 1747
    sw	$a7,0($v0)
    # Line 1748
    sw	$t0,0($v0)
    # Line 1749
    sw	$t1,0($v0)
    # Line 1750
    sw	$t2,0($v0)
    # Line 1751
    jr	$ra
    # Line 1752
    sw	$t3,0($v0)
.end __glOdyim_ScratchColor4sv

# Function: __glOdyim_Color4ub
# Declared: Line 1774 (Source lines: 1774-1784)
# Address: 0x0dad4e80 - 0x0dad4ea4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4ub
.ent __glOdyim_Color4ub
__glOdyim_Color4ub:
    # Line 1774
    lui	$a7,0xc580
    # Line 1776
    lui	$v0,0x1
    # Line 1778
    ori	$a7,$a7,0xd00f
    # Line 1779
    sw	$a7,0($v0)
    # Line 1780
    sw	$a0,0($v0)
    # Line 1781
    sw	$a1,0($v0)
    # Line 1782
    sw	$a2,0($v0)
    # Line 1783
    jr	$ra
    # Line 1784
    sw	$a3,0($v0)
.end __glOdyim_Color4ub

# Function: __glOdyim_ScratchColor4ub
# Declared: Line 1806 (Source lines: 1806-1816)
# Address: 0x0dad4ec0 - 0x0dad4ee4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4ub
.ent __glOdyim_ScratchColor4ub
__glOdyim_ScratchColor4ub:
    # Line 1806
    lui	$a7,0xce80
    # Line 1808
    lui	$v0,0x1
    # Line 1810
    ori	$a7,$a7,0xd00f
    # Line 1811
    sw	$a7,0($v0)
    # Line 1812
    sw	$a0,0($v0)
    # Line 1813
    sw	$a1,0($v0)
    # Line 1814
    sw	$a2,0($v0)
    # Line 1815
    jr	$ra
    # Line 1816
    sw	$a3,0($v0)
.end __glOdyim_ScratchColor4ub

# Function: __glOdyim_Color4ubv
# Declared: Line 1843 (Source lines: 1843-1857)
# Address: 0x0dad4f00 - 0x0dad4f34 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Color4ubv
.ent __glOdyim_Color4ubv
__glOdyim_Color4ubv:
    # Line 1843
    lbu	$t0,0($a0)
    # Line 1844
    lui	$a7,0xc580
    # Line 1846
    lui	$v0,0x1
    # Line 1848
    lbu	$t1,1($a0)
    # Line 1849
    ori	$a7,$a7,0xd00f
    # Line 1850
    lbu	$t2,2($a0)
    # Line 1851
    lbu	$t3,3($a0)
    # Line 1852
    sw	$a7,0($v0)
    # Line 1853
    sw	$t0,0($v0)
    # Line 1854
    sw	$t1,0($v0)
    # Line 1855
    sw	$t2,0($v0)
    # Line 1856
    jr	$ra
    # Line 1857
    sw	$t3,0($v0)
.end __glOdyim_Color4ubv

# Function: __glOdyim_ScratchColor4ubv
# Declared: Line 1884 (Source lines: 1884-1898)
# Address: 0x0dad4f40 - 0x0dad4f74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4ubv
.ent __glOdyim_ScratchColor4ubv
__glOdyim_ScratchColor4ubv:
    # Line 1884
    lbu	$t0,0($a0)
    # Line 1885
    lui	$a7,0xce80
    # Line 1887
    lui	$v0,0x1
    # Line 1889
    lbu	$t1,1($a0)
    # Line 1890
    ori	$a7,$a7,0xd00f
    # Line 1891
    lbu	$t2,2($a0)
    # Line 1892
    lbu	$t3,3($a0)
    # Line 1893
    sw	$a7,0($v0)
    # Line 1894
    sw	$t0,0($v0)
    # Line 1895
    sw	$t1,0($v0)
    # Line 1896
    sw	$t2,0($v0)
    # Line 1897
    jr	$ra
    # Line 1898
    sw	$t3,0($v0)
.end __glOdyim_ScratchColor4ubv

# Function: __glOdyim_Color4ui
# Declared: Line 1920 (Source lines: 1920-1930)
# Address: 0x0dad4f80 - 0x0dad4fa4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4ui
.ent __glOdyim_Color4ui
__glOdyim_Color4ui:
    # Line 1920
    lui	$a7,0xc580
    # Line 1922
    lui	$v0,0x1
    # Line 1924
    ori	$a7,$a7,0xd011
    # Line 1925
    sw	$a7,0($v0)
    # Line 1926
    sw	$a0,0($v0)
    # Line 1927
    sw	$a1,0($v0)
    # Line 1928
    sw	$a2,0($v0)
    # Line 1929
    jr	$ra
    # Line 1930
    sw	$a3,0($v0)
.end __glOdyim_Color4ui

# Function: __glOdyim_ScratchColor4ui
# Declared: Line 1952 (Source lines: 1952-1962)
# Address: 0x0dad4fc0 - 0x0dad4fe4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4ui
.ent __glOdyim_ScratchColor4ui
__glOdyim_ScratchColor4ui:
    # Line 1952
    lui	$a7,0xce80
    # Line 1954
    lui	$v0,0x1
    # Line 1956
    ori	$a7,$a7,0xd011
    # Line 1957
    sw	$a7,0($v0)
    # Line 1958
    sw	$a0,0($v0)
    # Line 1959
    sw	$a1,0($v0)
    # Line 1960
    sw	$a2,0($v0)
    # Line 1961
    jr	$ra
    # Line 1962
    sw	$a3,0($v0)
.end __glOdyim_ScratchColor4ui

# Function: __glOdyim_Color4uiv
# Declared: Line 1985 (Source lines: 1985-1997)
# Address: 0x0dad5000 - 0x0dad502c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Color4uiv
.ent __glOdyim_Color4uiv
__glOdyim_Color4uiv:
    # Line 1985
    ldl	$t0,0($a0)
    # Line 1986
    lui	$a7,0xc580
    # Line 1988
    lui	$v0,0x1
    # Line 1990
    ldl	$t1,8($a0)
    # Line 1991
    ori	$a7,$a7,0xd011
    # Line 1992
    ldr	$t0,7($a0)
    # Line 1993
    ldr	$t1,15($a0)
    # Line 1994
    sw	$a7,0($v0)
    # Line 1995
    sd	$t0,0($v0)
    # Line 1996
    jr	$ra
    # Line 1997
    sd	$t1,0($v0)
.end __glOdyim_Color4uiv

# Function: __glOdyim_ScratchColor4uiv
# Declared: Line 2020 (Source lines: 2020-2032)
# Address: 0x0dad5040 - 0x0dad506c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4uiv
.ent __glOdyim_ScratchColor4uiv
__glOdyim_ScratchColor4uiv:
    # Line 2020
    ldl	$t0,0($a0)
    # Line 2021
    lui	$a7,0xce80
    # Line 2023
    lui	$v0,0x1
    # Line 2025
    ldl	$t1,8($a0)
    # Line 2026
    ori	$a7,$a7,0xd011
    # Line 2027
    ldr	$t0,7($a0)
    # Line 2028
    ldr	$t1,15($a0)
    # Line 2029
    sw	$a7,0($v0)
    # Line 2030
    sd	$t0,0($v0)
    # Line 2031
    jr	$ra
    # Line 2032
    sd	$t1,0($v0)
.end __glOdyim_ScratchColor4uiv

# Function: __glOdyim_Color4us
# Declared: Line 2054 (Source lines: 2054-2064)
# Address: 0x0dad5080 - 0x0dad50a4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Color4us
.ent __glOdyim_Color4us
__glOdyim_Color4us:
    # Line 2054
    lui	$a7,0xc580
    # Line 2056
    lui	$v0,0x1
    # Line 2058
    ori	$a7,$a7,0xd010
    # Line 2059
    sw	$a7,0($v0)
    # Line 2060
    sw	$a0,0($v0)
    # Line 2061
    sw	$a1,0($v0)
    # Line 2062
    sw	$a2,0($v0)
    # Line 2063
    jr	$ra
    # Line 2064
    sw	$a3,0($v0)
.end __glOdyim_Color4us

# Function: __glOdyim_ScratchColor4us
# Declared: Line 2086 (Source lines: 2086-2096)
# Address: 0x0dad50c0 - 0x0dad50e4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4us
.ent __glOdyim_ScratchColor4us
__glOdyim_ScratchColor4us:
    # Line 2086
    lui	$a7,0xce80
    # Line 2088
    lui	$v0,0x1
    # Line 2090
    ori	$a7,$a7,0xd010
    # Line 2091
    sw	$a7,0($v0)
    # Line 2092
    sw	$a0,0($v0)
    # Line 2093
    sw	$a1,0($v0)
    # Line 2094
    sw	$a2,0($v0)
    # Line 2095
    jr	$ra
    # Line 2096
    sw	$a3,0($v0)
.end __glOdyim_ScratchColor4us

# Function: __glOdyim_Color4usv
# Declared: Line 2123 (Source lines: 2123-2137)
# Address: 0x0dad5100 - 0x0dad5134 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Color4usv
.ent __glOdyim_Color4usv
__glOdyim_Color4usv:
    # Line 2123
    lhu	$t0,0($a0)
    # Line 2124
    lui	$a7,0xc580
    # Line 2126
    lui	$v0,0x1
    # Line 2128
    lhu	$t1,2($a0)
    # Line 2129
    ori	$a7,$a7,0xd010
    # Line 2130
    lhu	$t2,4($a0)
    # Line 2131
    lhu	$t3,6($a0)
    # Line 2132
    sw	$a7,0($v0)
    # Line 2133
    sw	$t0,0($v0)
    # Line 2134
    sw	$t1,0($v0)
    # Line 2135
    sw	$t2,0($v0)
    # Line 2136
    jr	$ra
    # Line 2137
    sw	$t3,0($v0)
.end __glOdyim_Color4usv

# Function: __glOdyim_ScratchColor4usv
# Declared: Line 2164 (Source lines: 2164-2178)
# Address: 0x0dad5140 - 0x0dad5174 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_ScratchColor4usv
.ent __glOdyim_ScratchColor4usv
__glOdyim_ScratchColor4usv:
    # Line 2164
    lhu	$t0,0($a0)
    # Line 2165
    lui	$a7,0xce80
    # Line 2167
    lui	$v0,0x1
    # Line 2169
    lhu	$t1,2($a0)
    # Line 2170
    ori	$a7,$a7,0xd010
    # Line 2171
    lhu	$t2,4($a0)
    # Line 2172
    lhu	$t3,6($a0)
    # Line 2173
    sw	$a7,0($v0)
    # Line 2174
    sw	$t0,0($v0)
    # Line 2175
    sw	$t1,0($v0)
    # Line 2176
    sw	$t2,0($v0)
    # Line 2177
    jr	$ra
    # Line 2178
    sw	$t3,0($v0)
.end __glOdyim_ScratchColor4usv

# Function: __glOdyim_Indexd
# Declared: Line 2196 (Source lines: 2196-2204)
# Address: 0x0dad5180 - 0x0dad519c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_Indexd
.ent __glOdyim_Indexd
__glOdyim_Indexd:
    # Line 2196
    cvt.s.d	$f12,$f12
    # Line 2197
    lui	$a7,0xc580
    # Line 2199
    lui	$v0,0x1
    # Line 2201
    ori	$a7,$a7,0xc407
    # Line 2202
    sw	$a7,0($v0)
    # Line 2203
    jr	$ra
    # Line 2204
    swc1	$f12,0($v0)
.end __glOdyim_Indexd

# Function: __glOdyim_ScratchIndexd
# Declared: Line 2222 (Source lines: 2222-2230)
# Address: 0x0dad51c0 - 0x0dad51dc (Size: 28 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexd
.ent __glOdyim_ScratchIndexd
__glOdyim_ScratchIndexd:
    # Line 2222
    cvt.s.d	$f12,$f12
    # Line 2223
    lui	$a7,0xce80
    # Line 2225
    lui	$v0,0x1
    # Line 2227
    ori	$a7,$a7,0xc407
    # Line 2228
    sw	$a7,0($v0)
    # Line 2229
    jr	$ra
    # Line 2230
    swc1	$f12,0($v0)
.end __glOdyim_ScratchIndexd

# Function: __glOdyim_Indexdv
# Declared: Line 2249 (Source lines: 2249-2258)
# Address: 0x0dad5200 - 0x0dad5220 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Indexdv
.ent __glOdyim_Indexdv
__glOdyim_Indexdv:
    # Line 2249
    ldc1	$f4,0($a0)
    # Line 2250
    lui	$a7,0xc580
    # Line 2252
    lui	$v0,0x1
    # Line 2254
    cvt.s.d	$f4,$f4
    # Line 2255
    ori	$a7,$a7,0xc407
    # Line 2256
    sw	$a7,0($v0)
    # Line 2257
    jr	$ra
    # Line 2258
    swc1	$f4,0($v0)
.end __glOdyim_Indexdv

# Function: __glOdyim_ScratchIndexdv
# Declared: Line 2277 (Source lines: 2277-2286)
# Address: 0x0dad5240 - 0x0dad5260 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexdv
.ent __glOdyim_ScratchIndexdv
__glOdyim_ScratchIndexdv:
    # Line 2277
    ldc1	$f4,0($a0)
    # Line 2278
    lui	$a7,0xce80
    # Line 2280
    lui	$v0,0x1
    # Line 2282
    cvt.s.d	$f4,$f4
    # Line 2283
    ori	$a7,$a7,0xc407
    # Line 2284
    sw	$a7,0($v0)
    # Line 2285
    jr	$ra
    # Line 2286
    swc1	$f4,0($v0)
.end __glOdyim_ScratchIndexdv

# Function: __glOdyim_Indexf
# Declared: Line 2303 (Source lines: 2303-2310)
# Address: 0x0dad5280 - 0x0dad5298 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_Indexf
.ent __glOdyim_Indexf
__glOdyim_Indexf:
    # Line 2303
    lui	$a7,0xc580
    # Line 2305
    lui	$v0,0x1
    # Line 2307
    ori	$a7,$a7,0xc407
    # Line 2308
    sw	$a7,0($v0)
    # Line 2309
    jr	$ra
    # Line 2310
    swc1	$f12,0($v0)
.end __glOdyim_Indexf

# Function: __glOdyim_ScratchIndexf
# Declared: Line 2327 (Source lines: 2327-2334)
# Address: 0x0dad52c0 - 0x0dad52d8 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexf
.ent __glOdyim_ScratchIndexf
__glOdyim_ScratchIndexf:
    # Line 2327
    lui	$a7,0xce80
    # Line 2329
    lui	$v0,0x1
    # Line 2331
    ori	$a7,$a7,0xc407
    # Line 2332
    sw	$a7,0($v0)
    # Line 2333
    jr	$ra
    # Line 2334
    swc1	$f12,0($v0)
.end __glOdyim_ScratchIndexf

# Function: __glOdyim_Indexfv
# Declared: Line 2352 (Source lines: 2352-2360)
# Address: 0x0dad5300 - 0x0dad531c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_Indexfv
.ent __glOdyim_Indexfv
__glOdyim_Indexfv:
    # Line 2352
    lw	$t0,0($a0)
    # Line 2353
    lui	$a7,0xc580
    # Line 2355
    lui	$v0,0x1
    # Line 2357
    ori	$a7,$a7,0xc407
    # Line 2358
    sw	$a7,0($v0)
    # Line 2359
    jr	$ra
    # Line 2360
    sw	$t0,0($v0)
.end __glOdyim_Indexfv

# Function: __glOdyim_ScratchIndexfv
# Declared: Line 2378 (Source lines: 2378-2386)
# Address: 0x0dad5340 - 0x0dad535c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexfv
.ent __glOdyim_ScratchIndexfv
__glOdyim_ScratchIndexfv:
    # Line 2378
    lw	$t0,0($a0)
    # Line 2379
    lui	$a7,0xce80
    # Line 2381
    lui	$v0,0x1
    # Line 2383
    ori	$a7,$a7,0xc407
    # Line 2384
    sw	$a7,0($v0)
    # Line 2385
    jr	$ra
    # Line 2386
    sw	$t0,0($v0)
.end __glOdyim_ScratchIndexfv

# Function: __glOdyim_Indexi
# Declared: Line 2404 (Source lines: 2404-2411)
# Address: 0x0dad5380 - 0x0dad5398 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_Indexi
.ent __glOdyim_Indexi
__glOdyim_Indexi:
    # Line 2404
    lui	$a7,0xc580
    # Line 2406
    lui	$v0,0x1
    # Line 2408
    ori	$a7,$a7,0xc406
    # Line 2409
    sw	$a7,0($v0)
    # Line 2410
    jr	$ra
    # Line 2411
    sw	$a0,0($v0)
.end __glOdyim_Indexi

# Function: __glOdyim_ScratchIndexi
# Declared: Line 2429 (Source lines: 2429-2436)
# Address: 0x0dad53c0 - 0x0dad53d8 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexi
.ent __glOdyim_ScratchIndexi
__glOdyim_ScratchIndexi:
    # Line 2429
    lui	$a7,0xce80
    # Line 2431
    lui	$v0,0x1
    # Line 2433
    ori	$a7,$a7,0xc406
    # Line 2434
    sw	$a7,0($v0)
    # Line 2435
    jr	$ra
    # Line 2436
    sw	$a0,0($v0)
.end __glOdyim_ScratchIndexi

# Function: __glOdyim_Indexiv
# Declared: Line 2454 (Source lines: 2454-2462)
# Address: 0x0dad5400 - 0x0dad541c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_Indexiv
.ent __glOdyim_Indexiv
__glOdyim_Indexiv:
    # Line 2454
    lw	$t0,0($a0)
    # Line 2455
    lui	$a7,0xc580
    # Line 2457
    lui	$v0,0x1
    # Line 2459
    ori	$a7,$a7,0xc406
    # Line 2460
    sw	$a7,0($v0)
    # Line 2461
    jr	$ra
    # Line 2462
    sw	$t0,0($v0)
.end __glOdyim_Indexiv

# Function: __glOdyim_ScratchIndexiv
# Declared: Line 2480 (Source lines: 2480-2488)
# Address: 0x0dad5440 - 0x0dad545c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexiv
.ent __glOdyim_ScratchIndexiv
__glOdyim_ScratchIndexiv:
    # Line 2480
    lw	$t0,0($a0)
    # Line 2481
    lui	$a7,0xce80
    # Line 2483
    lui	$v0,0x1
    # Line 2485
    ori	$a7,$a7,0xc406
    # Line 2486
    sw	$a7,0($v0)
    # Line 2487
    jr	$ra
    # Line 2488
    sw	$t0,0($v0)
.end __glOdyim_ScratchIndexiv

# Function: __glOdyim_Indexs
# Declared: Line 2506 (Source lines: 2506-2513)
# Address: 0x0dad5480 - 0x0dad5498 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_Indexs
.ent __glOdyim_Indexs
__glOdyim_Indexs:
    # Line 2506
    lui	$a7,0xc580
    # Line 2508
    lui	$v0,0x1
    # Line 2510
    ori	$a7,$a7,0xc406
    # Line 2511
    sw	$a7,0($v0)
    # Line 2512
    jr	$ra
    # Line 2513
    sw	$a0,0($v0)
.end __glOdyim_Indexs

# Function: __glOdyim_ScratchIndexs
# Declared: Line 2531 (Source lines: 2531-2538)
# Address: 0x0dad54c0 - 0x0dad54d8 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexs
.ent __glOdyim_ScratchIndexs
__glOdyim_ScratchIndexs:
    # Line 2531
    lui	$a7,0xce80
    # Line 2533
    lui	$v0,0x1
    # Line 2535
    ori	$a7,$a7,0xc406
    # Line 2536
    sw	$a7,0($v0)
    # Line 2537
    jr	$ra
    # Line 2538
    sw	$a0,0($v0)
.end __glOdyim_ScratchIndexs

# Function: __glOdyim_Indexsv
# Declared: Line 2557 (Source lines: 2557-2565)
# Address: 0x0dad5500 - 0x0dad551c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_Indexsv
.ent __glOdyim_Indexsv
__glOdyim_Indexsv:
    # Line 2557
    lh	$t0,0($a0)
    # Line 2558
    lui	$a7,0xc580
    # Line 2560
    lui	$v0,0x1
    # Line 2562
    ori	$a7,$a7,0xc406
    # Line 2563
    sw	$a7,0($v0)
    # Line 2564
    jr	$ra
    # Line 2565
    sw	$t0,0($v0)
.end __glOdyim_Indexsv

# Function: __glOdyim_ScratchIndexsv
# Declared: Line 2584 (Source lines: 2584-2592)
# Address: 0x0dad5540 - 0x0dad555c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexsv
.ent __glOdyim_ScratchIndexsv
__glOdyim_ScratchIndexsv:
    # Line 2584
    lh	$t0,0($a0)
    # Line 2585
    lui	$a7,0xce80
    # Line 2587
    lui	$v0,0x1
    # Line 2589
    ori	$a7,$a7,0xc406
    # Line 2590
    sw	$a7,0($v0)
    # Line 2591
    jr	$ra
    # Line 2592
    sw	$t0,0($v0)
.end __glOdyim_ScratchIndexsv

# Function: __glOdyim_Indexub
# Declared: Line 2610 (Source lines: 2610-2617)
# Address: 0x0dad5580 - 0x0dad5598 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_Indexub
.ent __glOdyim_Indexub
__glOdyim_Indexub:
    # Line 2610
    lui	$a7,0xc580
    # Line 2612
    lui	$v0,0x1
    # Line 2614
    ori	$a7,$a7,0xc406
    # Line 2615
    sw	$a7,0($v0)
    # Line 2616
    jr	$ra
    # Line 2617
    sw	$a0,0($v0)
.end __glOdyim_Indexub

# Function: __glOdyim_ScratchIndexub
# Declared: Line 2635 (Source lines: 2635-2642)
# Address: 0x0dad55c0 - 0x0dad55d8 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexub
.ent __glOdyim_ScratchIndexub
__glOdyim_ScratchIndexub:
    # Line 2635
    lui	$a7,0xce80
    # Line 2637
    lui	$v0,0x1
    # Line 2639
    ori	$a7,$a7,0xc406
    # Line 2640
    sw	$a7,0($v0)
    # Line 2641
    jr	$ra
    # Line 2642
    sw	$a0,0($v0)
.end __glOdyim_ScratchIndexub

# Function: __glOdyim_Indexubv
# Declared: Line 2661 (Source lines: 2661-2669)
# Address: 0x0dad5600 - 0x0dad561c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_Indexubv
.ent __glOdyim_Indexubv
__glOdyim_Indexubv:
    # Line 2661
    lbu	$t0,0($a0)
    # Line 2662
    lui	$a7,0xc580
    # Line 2664
    lui	$v0,0x1
    # Line 2666
    ori	$a7,$a7,0xc406
    # Line 2667
    sw	$a7,0($v0)
    # Line 2668
    jr	$ra
    # Line 2669
    sw	$t0,0($v0)
.end __glOdyim_Indexubv

# Function: __glOdyim_ScratchIndexubv
# Declared: Line 2688 (Source lines: 2688-2696)
# Address: 0x0dad5640 - 0x0dad565c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_ScratchIndexubv
.ent __glOdyim_ScratchIndexubv
__glOdyim_ScratchIndexubv:
    # Line 2688
    lbu	$t0,0($a0)
    # Line 2689
    lui	$a7,0xce80
    # Line 2691
    lui	$v0,0x1
    # Line 2693
    ori	$a7,$a7,0xc406
    # Line 2694
    sw	$a7,0($v0)
    # Line 2695
    jr	$ra
    # Line 2696
    sw	$t0,0($v0)
.end __glOdyim_ScratchIndexubv

