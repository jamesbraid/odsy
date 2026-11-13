# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_tapi_asm.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 32

.text

# Function: __glOdyim_TexCoord1d
# Declared: Line 78 (Source lines: 78-86)
# Address: 0x0dad3640 - 0x0dad365c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord1d
.ent __glOdyim_TexCoord1d
__glOdyim_TexCoord1d:
    # Line 78
    cvt.s.d	$f12,$f12
    # Line 79
    lui	$a7,0xc380
    # Line 81
    lui	$v0,0x1
    # Line 83
    ori	$a7,$a7,0xc41f
    # Line 84
    sw	$a7,0($v0)
    # Line 85
    jr	$ra
    # Line 86
    swc1	$f12,0($v0)
.end __glOdyim_TexCoord1d

# Function: __glOdyim_TexCoord1dv
# Declared: Line 105 (Source lines: 105-114)
# Address: 0x0dad3680 - 0x0dad36a0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_TexCoord1dv
.ent __glOdyim_TexCoord1dv
__glOdyim_TexCoord1dv:
    # Line 105
    ldc1	$f4,0($a0)
    # Line 106
    lui	$a7,0xc380
    # Line 108
    lui	$v0,0x1
    # Line 110
    cvt.s.d	$f4,$f4
    # Line 111
    ori	$a7,$a7,0xc41f
    # Line 112
    sw	$a7,0($v0)
    # Line 113
    jr	$ra
    # Line 114
    swc1	$f4,0($v0)
.end __glOdyim_TexCoord1dv

# Function: __glOdyim_TexCoord1f
# Declared: Line 131 (Source lines: 131-138)
# Address: 0x0dad36c0 - 0x0dad36d8 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_TexCoord1f
.ent __glOdyim_TexCoord1f
__glOdyim_TexCoord1f:
    # Line 131
    lui	$a7,0xc380
    # Line 133
    lui	$v0,0x1
    # Line 135
    ori	$a7,$a7,0xc41f
    # Line 136
    sw	$a7,0($v0)
    # Line 137
    jr	$ra
    # Line 138
    swc1	$f12,0($v0)
.end __glOdyim_TexCoord1f

# Function: __glOdyim_TexCoord1fv
# Declared: Line 156 (Source lines: 156-164)
# Address: 0x0dad3700 - 0x0dad371c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord1fv
.ent __glOdyim_TexCoord1fv
__glOdyim_TexCoord1fv:
    # Line 156
    lw	$t0,0($a0)
    # Line 157
    lui	$a7,0xc380
    # Line 159
    lui	$v0,0x1
    # Line 161
    ori	$a7,$a7,0xc41f
    # Line 162
    sw	$a7,0($v0)
    # Line 163
    jr	$ra
    # Line 164
    sw	$t0,0($v0)
.end __glOdyim_TexCoord1fv

# Function: __glOdyim_TexCoord1i
# Declared: Line 182 (Source lines: 182-189)
# Address: 0x0dad3740 - 0x0dad3758 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_TexCoord1i
.ent __glOdyim_TexCoord1i
__glOdyim_TexCoord1i:
    # Line 182
    lui	$a7,0xc380
    # Line 184
    lui	$v0,0x1
    # Line 186
    ori	$a7,$a7,0xc41e
    # Line 187
    sw	$a7,0($v0)
    # Line 188
    jr	$ra
    # Line 189
    sw	$a0,0($v0)
.end __glOdyim_TexCoord1i

# Function: __glOdyim_TexCoord1iv
# Declared: Line 207 (Source lines: 207-215)
# Address: 0x0dad3780 - 0x0dad379c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord1iv
.ent __glOdyim_TexCoord1iv
__glOdyim_TexCoord1iv:
    # Line 207
    lw	$t0,0($a0)
    # Line 208
    lui	$a7,0xc380
    # Line 210
    lui	$v0,0x1
    # Line 212
    ori	$a7,$a7,0xc41e
    # Line 213
    sw	$a7,0($v0)
    # Line 214
    jr	$ra
    # Line 215
    sw	$t0,0($v0)
.end __glOdyim_TexCoord1iv

# Function: __glOdyim_TexCoord1s
# Declared: Line 233 (Source lines: 233-240)
# Address: 0x0dad37c0 - 0x0dad37d8 (Size: 24 bytes, Frame: 0)
.globl __glOdyim_TexCoord1s
.ent __glOdyim_TexCoord1s
__glOdyim_TexCoord1s:
    # Line 233
    lui	$a7,0xc380
    # Line 235
    lui	$v0,0x1
    # Line 237
    ori	$a7,$a7,0xc41e
    # Line 238
    sw	$a7,0($v0)
    # Line 239
    jr	$ra
    # Line 240
    sw	$a0,0($v0)
.end __glOdyim_TexCoord1s

# Function: __glOdyim_TexCoord1sv
# Declared: Line 259 (Source lines: 259-267)
# Address: 0x0dad3800 - 0x0dad381c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord1sv
.ent __glOdyim_TexCoord1sv
__glOdyim_TexCoord1sv:
    # Line 259
    lh	$t0,0($a0)
    # Line 260
    lui	$a7,0xc380
    # Line 262
    lui	$v0,0x1
    # Line 264
    ori	$a7,$a7,0xc41e
    # Line 265
    sw	$a7,0($v0)
    # Line 266
    jr	$ra
    # Line 267
    sw	$t0,0($v0)
.end __glOdyim_TexCoord1sv

# Function: __glOdyim_TexCoord2d
# Declared: Line 288 (Source lines: 288-298)
# Address: 0x0dad3840 - 0x0dad3864 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_TexCoord2d
.ent __glOdyim_TexCoord2d
__glOdyim_TexCoord2d:
    # Line 288
    cvt.s.d	$f12,$f12
    # Line 289
    lui	$a7,0xc380
    # Line 290
    cvt.s.d	$f13,$f13
    # Line 292
    lui	$v0,0x1
    # Line 294
    ori	$a7,$a7,0xc821
    # Line 295
    sw	$a7,0($v0)
    # Line 296
    swc1	$f12,0($v0)
    # Line 297
    jr	$ra
    # Line 298
    swc1	$f13,0($v0)
.end __glOdyim_TexCoord2d

# Function: __glOdyim_TexCoord2dv
# Declared: Line 321 (Source lines: 321-333)
# Address: 0x0dad3880 - 0x0dad38ac (Size: 44 bytes, Frame: 0)
.globl __glOdyim_TexCoord2dv
.ent __glOdyim_TexCoord2dv
__glOdyim_TexCoord2dv:
    # Line 321
    ldc1	$f4,0($a0)
    # Line 322
    lui	$a7,0xc380
    # Line 324
    lui	$v0,0x1
    # Line 326
    ldc1	$f5,8($a0)
    # Line 327
    cvt.s.d	$f4,$f4
    # Line 328
    ori	$a7,$a7,0xc821
    # Line 329
    sw	$a7,0($v0)
    # Line 330
    cvt.s.d	$f5,$f5
    # Line 331
    swc1	$f4,0($v0)
    # Line 332
    jr	$ra
    # Line 333
    swc1	$f5,0($v0)
.end __glOdyim_TexCoord2dv

# Function: __glOdyim_TexCoord2f
# Declared: Line 352 (Source lines: 352-360)
# Address: 0x0dad38c0 - 0x0dad38dc (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord2f
.ent __glOdyim_TexCoord2f
__glOdyim_TexCoord2f:
    # Line 352
    lui	$a7,0xc380
    # Line 354
    lui	$v0,0x1
    # Line 356
    ori	$a7,$a7,0xc821
    # Line 357
    sw	$a7,0($v0)
    # Line 358
    swc1	$f12,0($v0)
    # Line 359
    jr	$ra
    # Line 360
    swc1	$f13,0($v0)
.end __glOdyim_TexCoord2f

# Function: __glOdyim_TexCoord2fv
# Declared: Line 381 (Source lines: 381-390)
# Address: 0x0dad3900 - 0x0dad3920 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_TexCoord2fv
.ent __glOdyim_TexCoord2fv
__glOdyim_TexCoord2fv:
    # Line 381
    ldl	$t0,0($a0)
    # Line 382
    lui	$a7,0xc380
    # Line 384
    lui	$v0,0x1
    # Line 386
    ldr	$t0,7($a0)
    # Line 387
    ori	$a7,$a7,0xc821
    # Line 388
    sw	$a7,0($v0)
    # Line 389
    jr	$ra
    # Line 390
    sd	$t0,0($v0)
.end __glOdyim_TexCoord2fv

# Function: __glOdyim_TexCoord2i
# Declared: Line 410 (Source lines: 410-418)
# Address: 0x0dad3940 - 0x0dad395c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord2i
.ent __glOdyim_TexCoord2i
__glOdyim_TexCoord2i:
    # Line 410
    lui	$a7,0xc380
    # Line 412
    lui	$v0,0x1
    # Line 414
    ori	$a7,$a7,0xc820
    # Line 415
    sw	$a7,0($v0)
    # Line 416
    sw	$a0,0($v0)
    # Line 417
    jr	$ra
    # Line 418
    sw	$a1,0($v0)
.end __glOdyim_TexCoord2i

# Function: __glOdyim_TexCoord2iv
# Declared: Line 439 (Source lines: 439-448)
# Address: 0x0dad3980 - 0x0dad39a0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_TexCoord2iv
.ent __glOdyim_TexCoord2iv
__glOdyim_TexCoord2iv:
    # Line 439
    ldl	$t0,0($a0)
    # Line 440
    lui	$a7,0xc380
    # Line 442
    lui	$v0,0x1
    # Line 444
    ldr	$t0,7($a0)
    # Line 445
    ori	$a7,$a7,0xc820
    # Line 446
    sw	$a7,0($v0)
    # Line 447
    jr	$ra
    # Line 448
    sd	$t0,0($v0)
.end __glOdyim_TexCoord2iv

# Function: __glOdyim_TexCoord2s
# Declared: Line 468 (Source lines: 468-476)
# Address: 0x0dad39c0 - 0x0dad39dc (Size: 28 bytes, Frame: 0)
.globl __glOdyim_TexCoord2s
.ent __glOdyim_TexCoord2s
__glOdyim_TexCoord2s:
    # Line 468
    lui	$a7,0xc380
    # Line 470
    lui	$v0,0x1
    # Line 472
    ori	$a7,$a7,0xc820
    # Line 473
    sw	$a7,0($v0)
    # Line 474
    sw	$a0,0($v0)
    # Line 475
    jr	$ra
    # Line 476
    sw	$a1,0($v0)
.end __glOdyim_TexCoord2s

# Function: __glOdyim_TexCoord2sv
# Declared: Line 498 (Source lines: 498-508)
# Address: 0x0dad3a00 - 0x0dad3a24 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_TexCoord2sv
.ent __glOdyim_TexCoord2sv
__glOdyim_TexCoord2sv:
    # Line 498
    lh	$t0,0($a0)
    # Line 499
    lui	$a7,0xc380
    # Line 501
    lui	$v0,0x1
    # Line 503
    lh	$t1,2($a0)
    # Line 504
    ori	$a7,$a7,0xc820
    # Line 505
    sw	$a7,0($v0)
    # Line 506
    sw	$t0,0($v0)
    # Line 507
    jr	$ra
    # Line 508
    sw	$t1,0($v0)
.end __glOdyim_TexCoord2sv

# Function: __glOdyim_TexCoord3d
# Declared: Line 531 (Source lines: 531-543)
# Address: 0x0dad3a40 - 0x0dad3a6c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_TexCoord3d
.ent __glOdyim_TexCoord3d
__glOdyim_TexCoord3d:
    # Line 531
    cvt.s.d	$f12,$f12
    # Line 532
    lui	$a7,0xc380
    # Line 533
    cvt.s.d	$f13,$f13
    # Line 535
    lui	$v0,0x1
    # Line 537
    ori	$a7,$a7,0xcc23
    # Line 538
    cvt.s.d	$f14,$f14
    # Line 539
    sw	$a7,0($v0)
    # Line 540
    swc1	$f12,0($v0)
    # Line 541
    swc1	$f13,0($v0)
    # Line 542
    jr	$ra
    # Line 543
    swc1	$f14,0($v0)
.end __glOdyim_TexCoord3d

# Function: __glOdyim_TexCoord3dv
# Declared: Line 550 (Source lines: 550-565)
# Address: 0x0dad3a80 - 0x0dad3ab8 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_TexCoord3dv
.ent __glOdyim_TexCoord3dv
__glOdyim_TexCoord3dv:
    # Line 550
    ldc1	$f4,0($a0)
    # Line 551
    lui	$a7,0xc380
    # Line 553
    lui	$v0,0x1
    # Line 555
    ldc1	$f5,8($a0)
    # Line 556
    ori	$a7,$a7,0xcc23
    # Line 557
    cvt.s.d	$f4,$f4
    # Line 558
    ldc1	$f6,16($a0)
    # Line 559
    cvt.s.d	$f5,$f5
    # Line 560
    sw	$a7,0($v0)
    # Line 561
    cvt.s.d	$f6,$f6
    # Line 562
    swc1	$f4,0($v0)
    # Line 563
    swc1	$f5,0($v0)
    # Line 564
    jr	$ra
    # Line 565
    swc1	$f6,0($v0)
.end __glOdyim_TexCoord3dv

# Function: __glOdyim_TexCoord3f
# Declared: Line 585 (Source lines: 585-594)
# Address: 0x0dad3ac0 - 0x0dad3ae0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_TexCoord3f
.ent __glOdyim_TexCoord3f
__glOdyim_TexCoord3f:
    # Line 585
    lui	$a7,0xc380
    # Line 587
    lui	$v0,0x1
    # Line 589
    ori	$a7,$a7,0xcc23
    # Line 590
    sw	$a7,0($v0)
    # Line 591
    swc1	$f12,0($v0)
    # Line 592
    swc1	$f13,0($v0)
    # Line 593
    jr	$ra
    # Line 594
    swc1	$f14,0($v0)
.end __glOdyim_TexCoord3f

# Function: __glOdyim_TexCoord3fv
# Declared: Line 617 (Source lines: 617-628)
# Address: 0x0dad3b00 - 0x0dad3b28 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_TexCoord3fv
.ent __glOdyim_TexCoord3fv
__glOdyim_TexCoord3fv:
    # Line 617
    ldl	$t1,4($a0)
    # Line 618
    lui	$a7,0xc380
    # Line 620
    lui	$v0,0x1
    # Line 622
    lwu	$t0,0($a0)
    # Line 623
    ori	$a7,$a7,0xcc23
    # Line 624
    ldr	$t1,11($a0)
    # Line 625
    sw	$a7,0($v0)
    # Line 626
    sw	$t0,0($v0)
    # Line 627
    jr	$ra
    # Line 628
    sd	$t1,0($v0)
.end __glOdyim_TexCoord3fv

# Function: __glOdyim_TexCoord3i
# Declared: Line 649 (Source lines: 649-658)
# Address: 0x0dad3b40 - 0x0dad3b60 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_TexCoord3i
.ent __glOdyim_TexCoord3i
__glOdyim_TexCoord3i:
    # Line 649
    lui	$a7,0xc380
    # Line 651
    lui	$v0,0x1
    # Line 653
    ori	$a7,$a7,0xcc22
    # Line 654
    sw	$a7,0($v0)
    # Line 655
    sw	$a0,0($v0)
    # Line 656
    sw	$a1,0($v0)
    # Line 657
    jr	$ra
    # Line 658
    sw	$a2,0($v0)
.end __glOdyim_TexCoord3i

# Function: __glOdyim_TexCoord3iv
# Declared: Line 681 (Source lines: 681-692)
# Address: 0x0dad3b80 - 0x0dad3ba8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_TexCoord3iv
.ent __glOdyim_TexCoord3iv
__glOdyim_TexCoord3iv:
    # Line 681
    ldl	$t1,4($a0)
    # Line 682
    lui	$a7,0xc380
    # Line 684
    lui	$v0,0x1
    # Line 686
    lwu	$t0,0($a0)
    # Line 687
    ori	$a7,$a7,0xcc22
    # Line 688
    ldr	$t1,11($a0)
    # Line 689
    sw	$a7,0($v0)
    # Line 690
    sw	$t0,0($v0)
    # Line 691
    jr	$ra
    # Line 692
    sd	$t1,0($v0)
.end __glOdyim_TexCoord3iv

# Function: __glOdyim_TexCoord3s
# Declared: Line 713 (Source lines: 713-722)
# Address: 0x0dad3bc0 - 0x0dad3be0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_TexCoord3s
.ent __glOdyim_TexCoord3s
__glOdyim_TexCoord3s:
    # Line 713
    lui	$a7,0xc380
    # Line 715
    lui	$v0,0x1
    # Line 717
    ori	$a7,$a7,0xcc22
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
.end __glOdyim_TexCoord3s

# Function: __glOdyim_TexCoord3sv
# Declared: Line 746 (Source lines: 746-758)
# Address: 0x0dad3c00 - 0x0dad3c2c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_TexCoord3sv
.ent __glOdyim_TexCoord3sv
__glOdyim_TexCoord3sv:
    # Line 746
    lh	$t0,0($a0)
    # Line 747
    lui	$a7,0xc380
    # Line 749
    lui	$v0,0x1
    # Line 751
    lh	$t1,2($a0)
    # Line 752
    ori	$a7,$a7,0xcc22
    # Line 753
    lh	$t2,4($a0)
    # Line 754
    sw	$a7,0($v0)
    # Line 755
    sw	$t0,0($v0)
    # Line 756
    sw	$t1,0($v0)
    # Line 757
    jr	$ra
    # Line 758
    sw	$t2,0($v0)
.end __glOdyim_TexCoord3sv

# Function: __glOdyim_TexCoord4d
# Declared: Line 784 (Source lines: 784-798)
# Address: 0x0dad3c40 - 0x0dad3c74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_TexCoord4d
.ent __glOdyim_TexCoord4d
__glOdyim_TexCoord4d:
    # Line 784
    cvt.s.d	$f12,$f12
    # Line 785
    lui	$a7,0xc380
    # Line 786
    cvt.s.d	$f13,$f13
    # Line 788
    lui	$v0,0x1
    # Line 790
    cvt.s.d	$f14,$f14
    # Line 791
    ori	$a7,$a7,0xd025
    # Line 792
    cvt.s.d	$f15,$f15
    # Line 793
    sw	$a7,0($v0)
    # Line 794
    swc1	$f12,0($v0)
    # Line 795
    swc1	$f13,0($v0)
    # Line 796
    swc1	$f14,0($v0)
    # Line 797
    jr	$ra
    # Line 798
    swc1	$f15,0($v0)
.end __glOdyim_TexCoord4d

# Function: __glOdyim_TexCoord4dv
# Declared: Line 805 (Source lines: 805-823)
# Address: 0x0dad3c80 - 0x0dad3cc4 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_TexCoord4dv
.ent __glOdyim_TexCoord4dv
__glOdyim_TexCoord4dv:
    # Line 805
    ldc1	$f4,0($a0)
    # Line 806
    lui	$a7,0xc380
    # Line 808
    lui	$v0,0x1
    # Line 810
    ldc1	$f5,8($a0)
    # Line 811
    ori	$a7,$a7,0xd025
    # Line 812
    ldc1	$f6,16($a0)
    # Line 813
    cvt.s.d	$f4,$f4
    # Line 814
    ldc1	$f7,24($a0)
    # Line 815
    cvt.s.d	$f5,$f5
    # Line 816
    sw	$a7,0($v0)
    # Line 817
    cvt.s.d	$f6,$f6
    # Line 818
    swc1	$f4,0($v0)
    # Line 819
    cvt.s.d	$f7,$f7
    # Line 820
    swc1	$f5,0($v0)
    # Line 821
    swc1	$f6,0($v0)
    # Line 822
    jr	$ra
    # Line 823
    swc1	$f7,0($v0)
.end __glOdyim_TexCoord4dv

# Function: __glOdyim_TexCoord4f
# Declared: Line 829 (Source lines: 829-844)
# Address: 0x0dad3d00 - 0x0dad3d24 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_TexCoord4f
.ent __glOdyim_TexCoord4f
__glOdyim_TexCoord4f:
    # Line 829
    lui	$a7,0xc380
    # Line 831
    lui	$v0,0x1
    # Line 833
    ori	$a7,$a7,0xd025
    # Line 834
    sw	$a7,0($v0)
    # Line 835
    swc1	$f12,0($v0)
    # Line 836
    swc1	$f13,0($v0)
    # Line 842
    swc1	$f14,0($v0)
    # Line 843
    jr	$ra
    # Line 844
    swc1	$f15,0($v0)
.end __glOdyim_TexCoord4f

# Function: __glOdyim_TexCoord4fv
# Declared: Line 867 (Source lines: 867-879)
# Address: 0x0dad3d40 - 0x0dad3d6c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_TexCoord4fv
.ent __glOdyim_TexCoord4fv
__glOdyim_TexCoord4fv:
    # Line 867
    ldl	$t0,0($a0)
    # Line 868
    lui	$a7,0xc380
    # Line 870
    lui	$v0,0x1
    # Line 872
    ldl	$t1,8($a0)
    # Line 873
    ori	$a7,$a7,0xd025
    # Line 874
    ldr	$t0,7($a0)
    # Line 875
    ldr	$t1,15($a0)
    # Line 876
    sw	$a7,0($v0)
    # Line 877
    sd	$t0,0($v0)
    # Line 878
    jr	$ra
    # Line 879
    sd	$t1,0($v0)
.end __glOdyim_TexCoord4fv

# Function: __glOdyim_TexCoord4i
# Declared: Line 901 (Source lines: 901-911)
# Address: 0x0dad3d80 - 0x0dad3da4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_TexCoord4i
.ent __glOdyim_TexCoord4i
__glOdyim_TexCoord4i:
    # Line 901
    lui	$a7,0xc380
    # Line 903
    lui	$v0,0x1
    # Line 905
    ori	$a7,$a7,0xd024
    # Line 906
    sw	$a7,0($v0)
    # Line 907
    sw	$a0,0($v0)
    # Line 908
    sw	$a1,0($v0)
    # Line 909
    sw	$a2,0($v0)
    # Line 910
    jr	$ra
    # Line 911
    sw	$a3,0($v0)
.end __glOdyim_TexCoord4i

# Function: __glOdyim_TexCoord4iv
# Declared: Line 934 (Source lines: 934-946)
# Address: 0x0dad3dc0 - 0x0dad3dec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_TexCoord4iv
.ent __glOdyim_TexCoord4iv
__glOdyim_TexCoord4iv:
    # Line 934
    ldl	$t0,0($a0)
    # Line 935
    lui	$a7,0xc380
    # Line 937
    lui	$v0,0x1
    # Line 939
    ldl	$t1,8($a0)
    # Line 940
    ori	$a7,$a7,0xd024
    # Line 941
    ldr	$t0,7($a0)
    # Line 942
    ldr	$t1,15($a0)
    # Line 943
    sw	$a7,0($v0)
    # Line 944
    sd	$t0,0($v0)
    # Line 945
    jr	$ra
    # Line 946
    sd	$t1,0($v0)
.end __glOdyim_TexCoord4iv

# Function: __glOdyim_TexCoord4s
# Declared: Line 968 (Source lines: 968-978)
# Address: 0x0dad3e00 - 0x0dad3e24 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_TexCoord4s
.ent __glOdyim_TexCoord4s
__glOdyim_TexCoord4s:
    # Line 968
    lui	$a7,0xc380
    # Line 970
    lui	$v0,0x1
    # Line 972
    ori	$a7,$a7,0xd024
    # Line 973
    sw	$a7,0($v0)
    # Line 974
    sw	$a0,0($v0)
    # Line 975
    sw	$a1,0($v0)
    # Line 976
    sw	$a2,0($v0)
    # Line 977
    jr	$ra
    # Line 978
    sw	$a3,0($v0)
.end __glOdyim_TexCoord4s

# Function: __glOdyim_TexCoord4sv
# Declared: Line 1005 (Source lines: 1005-1019)
# Address: 0x0dad3e40 - 0x0dad3e74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_TexCoord4sv
.ent __glOdyim_TexCoord4sv
__glOdyim_TexCoord4sv:
    # Line 1005
    lh	$t0,0($a0)
    # Line 1006
    lui	$a7,0xc380
    # Line 1008
    lui	$v0,0x1
    # Line 1010
    lh	$t1,2($a0)
    # Line 1011
    ori	$a7,$a7,0xd024
    # Line 1012
    lh	$t2,4($a0)
    # Line 1013
    lh	$t3,6($a0)
    # Line 1014
    sw	$a7,0($v0)
    # Line 1015
    sw	$t0,0($v0)
    # Line 1016
    sw	$t1,0($v0)
    # Line 1017
    sw	$t2,0($v0)
    # Line 1018
    jr	$ra
    # Line 1019
    sw	$t3,0($v0)
.end __glOdyim_TexCoord4sv

