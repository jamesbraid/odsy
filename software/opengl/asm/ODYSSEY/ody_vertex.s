# Source: ../ODYSSEY/ody_vertex.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_vertex.c
# Total Functions: 41

.text

# Function: __glOdysseyClipCheck
# Declared: Line 24 (Source lines: 36-52)
# Address: 0x0d9e7350 - 0x0d9e73e8 (Size: 152 bytes, Frame: 0)
.globl __glOdysseyClipCheck
.ent __glOdysseyClipCheck
__glOdysseyClipCheck:
    # Line 36
    lui	$a5,0x1
    ori	$a4,$a5,0x6818
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    # Line 49
    move	$v0,$zero
    # Line 37
    ori	$a5,$a5,0x6748
    beqz	$a4,.L0d9e73e0
    addu	$a5,$a0,$a5
    lwc1	$f7,28($a1)
    lwc1	$f6,24($a1)
    li	$a3,1
    lwc1	$f4,20($a1)
    dmtc1	$zero,$f8
    move	$v0,$zero
    lwc1	$f5,16($a1)
    nop
.L0d9e7390:
    andi	$a6,$a4,0x1
    # Line 47
    srl	$a4,$a4,0x1
    # Line 37
    beqz	$a6,.L0d9e73cc
    # Line 44
    or	$a7,$v0,$a3
    # Line 37
    lwc1	$f0,4($a5)
    lwc1	$f1,0($a5)
    lwc1	$f2,8($a5)
    mul.s	$f0,$f0,$f4
    madd.s	$f0,$f0,$f1,$f5
    lwc1	$f1,12($a5)
    madd.s	$f0,$f0,$f2,$f6
    madd.s	$f0,$f0,$f1,$f7
    cvt.d.s	$f0,$f0
    c.lt.d	$f0,$f8
    movt	$v0,$a7,$fcc0
.L0d9e73cc:
    # Line 49
    addiu	$a5,$a5,16
    bnez	$a4,.L0d9e7390
    # Line 48
    sll	$a3,$a3,0x1
    # Line 52
    jr	$ra
    nop
.L0d9e73e0:
    jr	$ra
    nop
.end __glOdysseyClipCheck

# Function: __glOdysseySaveN
# Declared: Line 55 (Source lines: 56-69)
# Address: 0x0d9e73f0 - 0x0d9e743c (Size: 76 bytes, Frame: 16)
.ent __glOdysseySaveN
__glOdysseySaveN:
    # Line 56
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 65
    lwc1	$f0,208($a0)
    # Line 63
    lwc1	$f1,212($a0)
    # Line 64
    lwc1	$f2,216($a0)
    # Line 56
    lui	$v1,0x11
    # Line 61
    lw	$at,12004($a0)
    # Line 67
    swc1	$f2,200($a1)
    # Line 56
    addiu	$v1,$v1,4512
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 68
    move	$t9,$at
    # Line 66
    swc1	$f1,196($a1)
    # Line 68
    jalr	$t9
    # Line 65
    swc1	$f0,192($a1)
    ld	$ra,0($sp)
    # Line 69
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySaveN

# Function: __glOdysseySaveCN
# Declared: Line 71 (Source lines: 72-94)
# Address: 0x0d9e7440 - 0x0d9e74ac (Size: 108 bytes, Frame: 16)
.ent __glOdysseySaveCN
__glOdysseySaveCN:
    # Line 72
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    # Line 82
    lwc1	$f6,208($a0)
    # Line 80
    lwc1	$f5,212($a0)
    # Line 81
    lwc1	$f4,216($a0)
    # Line 78
    lw	$at,12004($a0)
    # Line 84
    swc1	$f4,200($a1)
    # Line 83
    swc1	$f5,196($a1)
    # Line 82
    swc1	$f6,192($a1)
    # Line 89
    lwc1	$f0,192($a0)
    # Line 87
    lwc1	$f2,200($a0)
    # Line 88
    lwc1	$f3,204($a0)
    # Line 72
    lui	$v1,0x11
    # Line 86
    lwc1	$f1,196($a0)
    # Line 72
    addiu	$v1,$v1,4432
    # Line 92
    swc1	$f3,156($a1)
    # Line 72
    addu	$gp,$t9,$v1
    # Line 93
    move	$t9,$at
    # Line 91
    swc1	$f2,152($a1)
    # Line 90
    swc1	$f1,148($a1)
    # Line 93
    jalr	$t9
    # Line 89
    swc1	$f0,144($a1)
    ld	$ra,0($sp)
    # Line 94
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySaveCN

# Function: __glOdysseySaveTN
# Declared: Line 96 (Source lines: 97-118)
# Address: 0x0d9e74b0 - 0x0d9e751c (Size: 108 bytes, Frame: 16)
.ent __glOdysseySaveTN
__glOdysseySaveTN:
    # Line 97
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    # Line 106
    lwc1	$f6,208($a0)
    # Line 104
    lwc1	$f5,212($a0)
    # Line 105
    lwc1	$f4,216($a0)
    # Line 102
    lw	$at,12004($a0)
    # Line 108
    swc1	$f4,200($a1)
    # Line 107
    swc1	$f5,196($a1)
    # Line 106
    swc1	$f6,192($a1)
    # Line 113
    lwc1	$f0,224($a0)
    # Line 111
    lwc1	$f2,232($a0)
    # Line 112
    lwc1	$f3,236($a0)
    # Line 97
    lui	$v1,0x11
    # Line 110
    lwc1	$f1,228($a0)
    # Line 97
    addiu	$v1,$v1,4320
    # Line 116
    swc1	$f3,60($a1)
    # Line 97
    addu	$gp,$t9,$v1
    # Line 117
    move	$t9,$at
    # Line 115
    swc1	$f2,56($a1)
    # Line 114
    swc1	$f1,52($a1)
    # Line 117
    jalr	$t9
    # Line 113
    swc1	$f0,48($a1)
    ld	$ra,0($sp)
    # Line 118
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySaveTN

# Function: __glOdysseySaveCTN
# Declared: Line 120 (Source lines: 121-151)
# Address: 0x0d9e7520 - 0x0d9e75ac (Size: 140 bytes, Frame: 16)
.ent __glOdysseySaveCTN
__glOdysseySaveCTN:
    # Line 121
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    # Line 127
    lw	$at,12004($a0)
    # Line 131
    lwc1	$f10,208($a0)
    # Line 130
    lwc1	$f8,216($a0)
    # Line 129
    lwc1	$f9,212($a0)
    # Line 133
    swc1	$f8,200($a1)
    # Line 132
    swc1	$f9,196($a1)
    # Line 131
    swc1	$f10,192($a1)
    # Line 138
    lwc1	$f7,224($a0)
    # Line 136
    lwc1	$f5,232($a0)
    # Line 137
    lwc1	$f4,236($a0)
    # Line 135
    lwc1	$f6,228($a0)
    # Line 141
    swc1	$f4,60($a1)
    # Line 140
    swc1	$f5,56($a1)
    # Line 139
    swc1	$f6,52($a1)
    # Line 138
    swc1	$f7,48($a1)
    # Line 146
    lwc1	$f0,192($a0)
    # Line 144
    lwc1	$f2,200($a0)
    # Line 145
    lwc1	$f3,204($a0)
    # Line 121
    lui	$v1,0x11
    # Line 143
    lwc1	$f1,196($a0)
    # Line 121
    addiu	$v1,$v1,4208
    # Line 149
    swc1	$f3,156($a1)
    # Line 121
    addu	$gp,$t9,$v1
    # Line 150
    move	$t9,$at
    # Line 148
    swc1	$f2,152($a1)
    # Line 147
    swc1	$f1,148($a1)
    # Line 150
    jalr	$t9
    # Line 146
    swc1	$f0,144($a1)
    ld	$ra,0($sp)
    # Line 151
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySaveCTN

# Function: RGBSendFc
# Declared: Line 420 (Source lines: 428-432)
# Address: 0x0d9e75b0 - 0x0d9e762c (Size: 124 bytes, Frame: 0)
.ent RGBSendFc
RGBSendFc:
    # Line 428
    lui	$at,0x1
    lbu	$a2,184($a0)
    lui	$a1,0x2f00
    lui	$a3,0x3000
    ori	$a3,$a3,0xc02e
    ori	$a1,$a1,0xc02e
    # Line 429
    lui	$v1,0xc580
    # Line 428
    movz	$a1,$a3,$a2
    sw	$a1,0($at)
    # Line 429
    ori	$v1,$v1,0xd015
    sw	$v1,0($at)
    lwc1	$f7,144($a0)
    swc1	$f7,0($at)
    lwc1	$f6,148($a0)
    swc1	$f6,0($at)
    lwc1	$f5,152($a0)
    swc1	$f5,0($at)
    lwc1	$f4,156($a0)
    # Line 430
    lui	$v0,0x8080
    # Line 429
    swc1	$f4,0($at)
    # Line 430
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 432
    jr	$ra
    # Line 430
    swc1	$f0,0($at)
.end RGBSendFc

# Function: RGBSendFcN
# Declared: Line 434 (Source lines: 442-447)
# Address: 0x0d9e7630 - 0x0d9e76d0 (Size: 160 bytes, Frame: 0)
.ent RGBSendFcN
RGBSendFcN:
    # Line 442
    lui	$at,0x1
    lbu	$a3,184($a0)
    lui	$a2,0x2f00
    lui	$a4,0x3000
    ori	$a4,$a4,0xc02e
    ori	$a2,$a2,0xc02e
    # Line 443
    lui	$a1,0xc180
    # Line 442
    movz	$a2,$a4,$a3
    sw	$a2,0($at)
    # Line 443
    ori	$a1,$a1,0xcc19
    sw	$a1,0($at)
    lwc1	$f10,192($a0)
    swc1	$f10,0($at)
    lwc1	$f9,196($a0)
    swc1	$f9,0($at)
    lwc1	$f8,200($a0)
    # Line 444
    lui	$v1,0xc580
    # Line 443
    swc1	$f8,0($at)
    # Line 444
    ori	$v1,$v1,0xd015
    sw	$v1,0($at)
    lwc1	$f7,144($a0)
    swc1	$f7,0($at)
    lwc1	$f6,148($a0)
    swc1	$f6,0($at)
    lwc1	$f5,152($a0)
    swc1	$f5,0($at)
    lwc1	$f4,156($a0)
    # Line 445
    lui	$v0,0x8080
    # Line 444
    swc1	$f4,0($at)
    # Line 445
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 447
    jr	$ra
    # Line 445
    swc1	$f0,0($at)
.end RGBSendFcN

# Function: RGBSendFcT
# Declared: Line 449 (Source lines: 457-462)
# Address: 0x0d9e76d0 - 0x0d9e7778 (Size: 168 bytes, Frame: 0)
.ent RGBSendFcT
RGBSendFcT:
    # Line 457
    lui	$at,0x1
    lbu	$a3,184($a0)
    lui	$a2,0x2f00
    lui	$a4,0x3000
    ori	$a4,$a4,0xc02e
    ori	$a2,$a2,0xc02e
    # Line 458
    lui	$a1,0xc580
    # Line 457
    movz	$a2,$a4,$a3
    sw	$a2,0($at)
    # Line 458
    ori	$a1,$a1,0xd015
    sw	$a1,0($at)
    lwc1	$f11,144($a0)
    swc1	$f11,0($at)
    lwc1	$f10,148($a0)
    swc1	$f10,0($at)
    lwc1	$f9,152($a0)
    swc1	$f9,0($at)
    lwc1	$f8,156($a0)
    # Line 459
    lui	$v1,0xc380
    # Line 458
    swc1	$f8,0($at)
    # Line 459
    ori	$v1,$v1,0xd025
    sw	$v1,0($at)
    lwc1	$f7,48($a0)
    swc1	$f7,0($at)
    lwc1	$f6,52($a0)
    swc1	$f6,0($at)
    lwc1	$f5,56($a0)
    swc1	$f5,0($at)
    lwc1	$f4,60($a0)
    # Line 460
    lui	$v0,0x8080
    # Line 459
    swc1	$f4,0($at)
    # Line 460
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 462
    jr	$ra
    # Line 460
    swc1	$f0,0($at)
.end RGBSendFcT

# Function: RGBSendFcTN
# Declared: Line 464 (Source lines: 472-478)
# Address: 0x0d9e7780 - 0x0d9e784c (Size: 204 bytes, Frame: 0)
.ent RGBSendFcTN
RGBSendFcTN:
    # Line 472
    lui	$at,0x1
    lbu	$a4,184($a0)
    lui	$a3,0x2f00
    lui	$a5,0x3000
    ori	$a5,$a5,0xc02e
    ori	$a3,$a3,0xc02e
    # Line 473
    lui	$a2,0xc180
    # Line 472
    movz	$a3,$a5,$a4
    sw	$a3,0($at)
    # Line 473
    ori	$a2,$a2,0xcc19
    sw	$a2,0($at)
    lwc1	$f14,192($a0)
    swc1	$f14,0($at)
    lwc1	$f13,196($a0)
    swc1	$f13,0($at)
    lwc1	$f12,200($a0)
    # Line 474
    lui	$a1,0xc580
    # Line 473
    swc1	$f12,0($at)
    # Line 474
    ori	$a1,$a1,0xd015
    sw	$a1,0($at)
    lwc1	$f11,144($a0)
    swc1	$f11,0($at)
    lwc1	$f10,148($a0)
    swc1	$f10,0($at)
    lwc1	$f9,152($a0)
    swc1	$f9,0($at)
    lwc1	$f8,156($a0)
    # Line 475
    lui	$v1,0xc380
    # Line 474
    swc1	$f8,0($at)
    # Line 475
    ori	$v1,$v1,0xd025
    sw	$v1,0($at)
    lwc1	$f7,48($a0)
    swc1	$f7,0($at)
    lwc1	$f6,52($a0)
    swc1	$f6,0($at)
    lwc1	$f5,56($a0)
    swc1	$f5,0($at)
    lwc1	$f4,60($a0)
    # Line 476
    lui	$v0,0x8080
    # Line 475
    swc1	$f4,0($at)
    # Line 476
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 478
    jr	$ra
    # Line 476
    swc1	$f0,0($at)
.end RGBSendFcTN

# Function: RGBSendUnclippedFmN
# Declared: Line 480 (Source lines: 481-499)
# Address: 0x0d9e7850 - 0x0d9e79e8 (Size: 408 bytes, Frame: 48)
.ent RGBSendUnclippedFmN
RGBSendUnclippedFmN:
    # Line 490
    addiu	$a4,$a0,208
    # Line 488
    lui	$a5,0x1
    # Line 481
    lbu	$v0,400($a0)
    addiu	$sp,$sp,-48
    lui	$at,0x11
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$at,$at,3392
    sd	$gp,16($sp)
    beqz	$v0,.L0d9e79e0
    addu	$gp,$t9,$at
    # Line 488
    ori	$a5,$a5,0x681c
    lw	$a4,4112($zero)
    sd	$ra,32($sp)
    addu	$a4,$a4,$a5
.L0d9e788c:
    # Line 492
    lui	$a6,0x1
    lui	$t2,0xc680
    ori	$t2,$t2,0xd02f
    sw	$t2,0($a6)
    lwc1	$f16,0($a4)
    swc1	$f16,0($a6)
    lwc1	$f15,4($a4)
    swc1	$f15,0($a6)
    lwc1	$f14,8($a4)
    swc1	$f14,0($a6)
    lwc1	$f13,12($a4)
    lui	$t1,0xc880
    swc1	$f13,0($a6)
    ori	$t1,$t1,0xd031
    sw	$t1,0($a6)
    lwc1	$f12,32($a4)
    swc1	$f12,0($a6)
    lwc1	$f11,36($a4)
    swc1	$f11,0($a6)
    lwc1	$f10,40($a4)
    swc1	$f10,0($a6)
    lwc1	$f9,44($a4)
    lui	$t0,0xc780
    swc1	$f9,0($a6)
    ori	$t0,$t0,0xd030
    sw	$t0,0($a6)
    lwc1	$f8,16($a4)
    swc1	$f8,0($a6)
    lwc1	$f7,20($a4)
    swc1	$f7,0($a6)
    lwc1	$f6,24($a4)
    swc1	$f6,0($a6)
    lwc1	$f5,28($a4)
    lui	$a7,0xc980
    swc1	$f5,0($a6)
    ori	$a7,$a7,0xd032
    sw	$a7,0($a6)
    lwc1	$f4,48($a4)
    swc1	$f4,0($a6)
    lwc1	$f3,52($a4)
    swc1	$f3,0($a6)
    lwc1	$f2,56($a4)
    swc1	$f2,0($a6)
    lwc1	$f1,60($a4)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($a6)
    lwc1	$f0,64($a4)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    # Line 495
    lui	$t3,0x1
    lbu	$v0,184($s0)
    lui	$at,0x2f00
    lui	$v1,0x3000
    ori	$v1,$v1,0xc02e
    ori	$at,$at,0xc02e
    # Line 496
    lui	$t9,0xc180
    # Line 495
    movz	$at,$v1,$v0
    sw	$at,0($t3)
    # Line 496
    ori	$t9,$t9,0xcc19
    sw	$t9,0($t3)
    lwc1	$f27,192($s0)
    swc1	$f27,0($t3)
    lwc1	$f25,196($s0)
    swc1	$f25,0($t3)
    lwc1	$f23,200($s0)
    # Line 497
    lui	$t8,0x8080
    # Line 496
    swc1	$f23,0($t3)
    # Line 497
    ori	$t8,$t8,0xd005
    sw	$t8,0($t3)
    lwc1	$f21,16($s0)
    swc1	$f21,0($t3)
    lwc1	$f19,20($s0)
    # Line 499
    ld	$gp,16($sp)
    # Line 497
    swc1	$f19,0($t3)
    lwc1	$f18,24($s0)
    ld	$ra,32($sp)
    swc1	$f18,0($t3)
    lwc1	$f17,28($s0)
    # Line 499
    ld	$s0,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 497
    swc1	$f17,0($t3)
.L0d9e79e0:
    b	.L0d9e788c
    sd	$ra,32($sp)
.end RGBSendUnclippedFmN

# Function: RGBSendUnclippedFmTN
# Declared: Line 501 (Source lines: 502-521)
# Address: 0x0d9e79f0 - 0x0d9e7bb4 (Size: 452 bytes, Frame: 48)
.ent RGBSendUnclippedFmTN
RGBSendUnclippedFmTN:
    # Line 511
    addiu	$a4,$a0,208
    # Line 509
    lui	$a5,0x1
    # Line 502
    lbu	$v0,400($a0)
    addiu	$sp,$sp,-48
    lui	$at,0x11
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$at,$at,2976
    sd	$gp,16($sp)
    beqz	$v0,.L0d9e7bac
    addu	$gp,$t9,$at
    # Line 509
    ori	$a5,$a5,0x681c
    lw	$a4,4112($zero)
    sd	$ra,32($sp)
    addu	$a4,$a4,$a5
.L0d9e7a2c:
    # Line 513
    lui	$a6,0x1
    lui	$t2,0xc680
    ori	$t2,$t2,0xd02f
    sw	$t2,0($a6)
    lwc1	$f16,0($a4)
    swc1	$f16,0($a6)
    lwc1	$f15,4($a4)
    swc1	$f15,0($a6)
    lwc1	$f14,8($a4)
    swc1	$f14,0($a6)
    lwc1	$f13,12($a4)
    lui	$t1,0xc880
    swc1	$f13,0($a6)
    ori	$t1,$t1,0xd031
    sw	$t1,0($a6)
    lwc1	$f12,32($a4)
    swc1	$f12,0($a6)
    lwc1	$f11,36($a4)
    swc1	$f11,0($a6)
    lwc1	$f10,40($a4)
    swc1	$f10,0($a6)
    lwc1	$f9,44($a4)
    lui	$t0,0xc780
    swc1	$f9,0($a6)
    ori	$t0,$t0,0xd030
    sw	$t0,0($a6)
    lwc1	$f8,16($a4)
    swc1	$f8,0($a6)
    lwc1	$f7,20($a4)
    swc1	$f7,0($a6)
    lwc1	$f6,24($a4)
    swc1	$f6,0($a6)
    lwc1	$f5,28($a4)
    lui	$a7,0xc980
    swc1	$f5,0($a6)
    ori	$a7,$a7,0xd032
    sw	$a7,0($a6)
    lwc1	$f4,48($a4)
    swc1	$f4,0($a6)
    lwc1	$f3,52($a4)
    swc1	$f3,0($a6)
    lwc1	$f2,56($a4)
    swc1	$f2,0($a6)
    lwc1	$f1,60($a4)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($a6)
    lwc1	$f0,64($a4)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    # Line 516
    lui	$t3,0x1
    lbu	$v1,184($s0)
    lui	$v0,0x2f00
    lui	$a0,0x3000
    ori	$a0,$a0,0xc02e
    ori	$v0,$v0,0xc02e
    # Line 517
    lui	$at,0xc180
    # Line 516
    movz	$v0,$a0,$v1
    sw	$v0,0($t3)
    # Line 517
    ori	$at,$at,0xcc19
    sw	$at,0($t3)
    lwc1	$f1,192($s0)
    swc1	$f1,0($t3)
    lwc1	$f0,196($s0)
    swc1	$f0,0($t3)
    lwc1	$f31,200($s0)
    # Line 518
    lui	$t9,0xc380
    # Line 517
    swc1	$f31,0($t3)
    # Line 518
    ori	$t9,$t9,0xd025
    sw	$t9,0($t3)
    lwc1	$f29,48($s0)
    swc1	$f29,0($t3)
    lwc1	$f27,52($s0)
    swc1	$f27,0($t3)
    lwc1	$f25,56($s0)
    swc1	$f25,0($t3)
    lwc1	$f23,60($s0)
    # Line 519
    lui	$t8,0x8080
    # Line 518
    swc1	$f23,0($t3)
    # Line 519
    ori	$t8,$t8,0xd005
    sw	$t8,0($t3)
    lwc1	$f21,16($s0)
    swc1	$f21,0($t3)
    lwc1	$f19,20($s0)
    # Line 521
    ld	$gp,16($sp)
    # Line 519
    swc1	$f19,0($t3)
    lwc1	$f18,24($s0)
    ld	$ra,32($sp)
    swc1	$f18,0($t3)
    lwc1	$f17,28($s0)
    # Line 521
    ld	$s0,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 519
    swc1	$f17,0($t3)
.L0d9e7bac:
    b	.L0d9e7a2c
    sd	$ra,32($sp)
.end RGBSendUnclippedFmTN

# Function: RGBSendUnclippedBmFmN
# Declared: Line 523 (Source lines: 524-545)
# Address: 0x0d9e7bc0 - 0x0d9e7e34 (Size: 628 bytes, Frame: 192)
.ent RGBSendUnclippedBmFmN
RGBSendUnclippedBmFmN:
    # Line 524
    addiu	$sp,$sp,-64
    sd	$s8,24($sp)
    # Line 528
    lw	$s8,4112($zero)
    # Line 524
    sd	$s0,48($sp)
    # Line 531
    lui	$s0,0x1
    # Line 537
    lui	$a4,0xc680
    # Line 528
    lbu	$at,400($a0)
    # Line 531
    ori	$v1,$s0,0x681c
    # Line 534
    addiu	$a5,$a0,208
    # Line 531
    addu	$v1,$s8,$v1
    # Line 537
    ori	$a4,$a4,0xd02f
    sw	$a4,0($s0)
    movz	$v1,$a5,$at
    lwc1	$f16,0($v1)
    swc1	$f16,0($s0)
    lwc1	$f15,4($v1)
    swc1	$f15,0($s0)
    lwc1	$f14,8($v1)
    swc1	$f14,0($s0)
    lwc1	$f13,12($v1)
    lui	$a3,0xc880
    swc1	$f13,0($s0)
    ori	$a3,$a3,0xd031
    sw	$a3,0($s0)
    lwc1	$f12,32($v1)
    swc1	$f12,0($s0)
    lwc1	$f11,36($v1)
    swc1	$f11,0($s0)
    lwc1	$f10,40($v1)
    swc1	$f10,0($s0)
    lwc1	$f9,44($v1)
    lui	$a2,0xc780
    swc1	$f9,0($s0)
    ori	$a2,$a2,0xd030
    sw	$a2,0($s0)
    lwc1	$f8,16($v1)
    swc1	$f8,0($s0)
    lwc1	$f7,20($v1)
    swc1	$f7,0($s0)
    lwc1	$f6,24($v1)
    swc1	$f6,0($s0)
    lwc1	$f5,28($v1)
    lui	$a1,0xc980
    swc1	$f5,0($s0)
    ori	$a1,$a1,0xd032
    sw	$a1,0($s0)
    lwc1	$f4,48($v1)
    # Line 524
    sd	$s7,40($sp)
    # Line 537
    swc1	$f4,0($s0)
    lwc1	$f3,52($v1)
    # Line 524
    sd	$ra,16($sp)
    # Line 537
    swc1	$f3,0($s0)
    lwc1	$f2,56($v1)
    sd	$gp,32($sp)
    # Line 524
    lui	$v0,0x11
    addiu	$v0,$v0,2512
    # Line 537
    swc1	$f2,0($s0)
    # Line 524
    addu	$gp,$t9,$v0
    # Line 537
    lwc1	$f1,60($v1)
    # Line 524
    move	$s7,$a0
    # Line 537
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    # Line 535
    addiu	$v0,$a0,288
    # Line 532
    ori	$ra,$s0,0x686c
    # Line 537
    swc1	$f1,0($s0)
    li	$a0,1028
    # Line 532
    addu	$s8,$s8,$ra
    # Line 537
    lwc1	$f0,64($v1)
    movz	$s8,$v0,$at
    addiu	$a2,$sp,0
    li	$a1,5633
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    # Line 538
    lui	$a3,0xca80
    ori	$a3,$a3,0xd035
    sw	$a3,0($s0)
    lwc1	$f7,0($s8)
    swc1	$f7,0($s0)
    lwc1	$f6,4($s8)
    swc1	$f6,0($s0)
    lwc1	$f5,8($s8)
    swc1	$f5,0($s0)
    lwc1	$f4,12($s8)
    lui	$a2,0xcc80
    swc1	$f4,0($s0)
    ori	$a2,$a2,0xd037
    sw	$a2,0($s0)
    lwc1	$f3,32($s8)
    swc1	$f3,0($s0)
    lwc1	$f2,36($s8)
    swc1	$f2,0($s0)
    lwc1	$f1,40($s8)
    swc1	$f1,0($s0)
    lwc1	$f0,44($s8)
    lui	$a1,0xcb80
    swc1	$f0,0($s0)
    ori	$a1,$a1,0xd036
    sw	$a1,0($s0)
    lwc1	$f31,16($s8)
    swc1	$f31,0($s0)
    lwc1	$f29,20($s8)
    swc1	$f29,0($s0)
    lwc1	$f27,24($s8)
    swc1	$f27,0($s0)
    lwc1	$f25,28($s8)
    lui	$a0,0xcd80
    swc1	$f25,0($s0)
    ori	$a0,$a0,0xd038
    sw	$a0,0($s0)
    lwc1	$f23,48($s8)
    swc1	$f23,0($s0)
    lwc1	$f21,52($s8)
    swc1	$f21,0($s0)
    lwc1	$f19,56($s8)
    swc1	$f19,0($s0)
    lwc1	$f18,60($s8)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f18,0($s0)
    lwc1	$f17,64($s8)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f17,0($sp)
    # Line 541
    lbu	$a7,184($s7)
    lui	$a6,0x2f00
    lui	$t0,0x3000
    ori	$t0,$t0,0xc02e
    ori	$a6,$a6,0xc02e
    # Line 542
    lui	$a5,0xc180
    # Line 541
    movz	$a6,$t0,$a7
    sw	$a6,0($s0)
    # Line 542
    ori	$a5,$a5,0xcc19
    sw	$a5,0($s0)
    lwc1	$f14,192($s7)
    swc1	$f14,0($s0)
    lwc1	$f13,196($s7)
    swc1	$f13,0($s0)
    lwc1	$f12,200($s7)
    # Line 543
    lui	$a4,0x8080
    # Line 542
    swc1	$f12,0($s0)
    # Line 543
    ori	$a4,$a4,0xd005
    sw	$a4,0($s0)
    lwc1	$f11,16($s7)
    ld	$s8,24($sp)
    swc1	$f11,0($s0)
    lwc1	$f10,20($s7)
    # Line 545
    ld	$gp,32($sp)
    # Line 543
    swc1	$f10,0($s0)
    lwc1	$f9,24($s7)
    ld	$ra,16($sp)
    swc1	$f9,0($s0)
    lwc1	$f8,28($s7)
    # Line 545
    ld	$s7,40($sp)
    # Line 543
    swc1	$f8,0($s0)
    # Line 545
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end RGBSendUnclippedBmFmN

# Function: RGBSendUnclippedBmFmTN
# Declared: Line 547 (Source lines: 548-570)
# Address: 0x0d9e7e40 - 0x0d9e80e0 (Size: 672 bytes, Frame: 192)
.ent RGBSendUnclippedBmFmTN
RGBSendUnclippedBmFmTN:
    # Line 548
    addiu	$sp,$sp,-64
    sd	$s8,24($sp)
    # Line 552
    lw	$s8,4112($zero)
    # Line 548
    sd	$s0,48($sp)
    # Line 555
    lui	$s0,0x1
    # Line 561
    lui	$a4,0xca80
    # Line 552
    lbu	$at,400($a0)
    # Line 556
    ori	$v1,$s0,0x686c
    # Line 559
    addiu	$a5,$a0,288
    # Line 556
    addu	$v1,$s8,$v1
    # Line 561
    ori	$a4,$a4,0xd035
    sw	$a4,0($s0)
    movz	$v1,$a5,$at
    lwc1	$f16,0($v1)
    swc1	$f16,0($s0)
    lwc1	$f15,4($v1)
    swc1	$f15,0($s0)
    lwc1	$f14,8($v1)
    swc1	$f14,0($s0)
    lwc1	$f13,12($v1)
    lui	$a3,0xcc80
    swc1	$f13,0($s0)
    ori	$a3,$a3,0xd037
    sw	$a3,0($s0)
    lwc1	$f12,32($v1)
    swc1	$f12,0($s0)
    lwc1	$f11,36($v1)
    swc1	$f11,0($s0)
    lwc1	$f10,40($v1)
    swc1	$f10,0($s0)
    lwc1	$f9,44($v1)
    lui	$a2,0xcb80
    swc1	$f9,0($s0)
    ori	$a2,$a2,0xd036
    sw	$a2,0($s0)
    lwc1	$f8,16($v1)
    swc1	$f8,0($s0)
    lwc1	$f7,20($v1)
    swc1	$f7,0($s0)
    lwc1	$f6,24($v1)
    swc1	$f6,0($s0)
    lwc1	$f5,28($v1)
    lui	$a1,0xcd80
    swc1	$f5,0($s0)
    ori	$a1,$a1,0xd038
    sw	$a1,0($s0)
    lwc1	$f4,48($v1)
    # Line 548
    sd	$s7,40($sp)
    # Line 561
    swc1	$f4,0($s0)
    lwc1	$f3,52($v1)
    # Line 548
    sd	$ra,16($sp)
    # Line 561
    swc1	$f3,0($s0)
    lwc1	$f2,56($v1)
    sd	$gp,32($sp)
    # Line 548
    lui	$v0,0x11
    addiu	$v0,$v0,1872
    # Line 561
    swc1	$f2,0($s0)
    # Line 548
    addu	$gp,$t9,$v0
    # Line 561
    lwc1	$f1,60($v1)
    # Line 548
    move	$s7,$a0
    # Line 561
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    # Line 558
    addiu	$v0,$a0,208
    # Line 555
    ori	$ra,$s0,0x681c
    # Line 561
    swc1	$f1,0($s0)
    li	$a0,1029
    # Line 555
    addu	$s8,$s8,$ra
    # Line 561
    lwc1	$f0,64($v1)
    movz	$s8,$v0,$at
    addiu	$a2,$sp,0
    li	$a1,5633
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    # Line 562
    lui	$a3,0xc680
    ori	$a3,$a3,0xd02f
    sw	$a3,0($s0)
    lwc1	$f7,0($s8)
    swc1	$f7,0($s0)
    lwc1	$f6,4($s8)
    swc1	$f6,0($s0)
    lwc1	$f5,8($s8)
    swc1	$f5,0($s0)
    lwc1	$f4,12($s8)
    lui	$a2,0xc880
    swc1	$f4,0($s0)
    ori	$a2,$a2,0xd031
    sw	$a2,0($s0)
    lwc1	$f3,32($s8)
    swc1	$f3,0($s0)
    lwc1	$f2,36($s8)
    swc1	$f2,0($s0)
    lwc1	$f1,40($s8)
    swc1	$f1,0($s0)
    lwc1	$f0,44($s8)
    lui	$a1,0xc780
    swc1	$f0,0($s0)
    ori	$a1,$a1,0xd030
    sw	$a1,0($s0)
    lwc1	$f31,16($s8)
    swc1	$f31,0($s0)
    lwc1	$f29,20($s8)
    swc1	$f29,0($s0)
    lwc1	$f27,24($s8)
    swc1	$f27,0($s0)
    lwc1	$f25,28($s8)
    lui	$a0,0xc980
    swc1	$f25,0($s0)
    ori	$a0,$a0,0xd032
    sw	$a0,0($s0)
    lwc1	$f23,48($s8)
    swc1	$f23,0($s0)
    lwc1	$f21,52($s8)
    swc1	$f21,0($s0)
    lwc1	$f19,56($s8)
    swc1	$f19,0($s0)
    lwc1	$f18,60($s8)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f18,0($s0)
    lwc1	$f17,64($s8)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f17,0($sp)
    # Line 565
    lbu	$t0,184($s7)
    lui	$a7,0x2f00
    lui	$t1,0x3000
    ori	$t1,$t1,0xc02e
    ori	$a7,$a7,0xc02e
    # Line 566
    lui	$a6,0xc180
    # Line 565
    movz	$a7,$t1,$t0
    sw	$a7,0($s0)
    # Line 566
    ori	$a6,$a6,0xcc19
    sw	$a6,0($s0)
    lwc1	$f18,192($s7)
    swc1	$f18,0($s0)
    lwc1	$f17,196($s7)
    swc1	$f17,0($s0)
    lwc1	$f16,200($s7)
    # Line 567
    lui	$a5,0xc380
    # Line 566
    swc1	$f16,0($s0)
    # Line 567
    ori	$a5,$a5,0xd025
    sw	$a5,0($s0)
    lwc1	$f15,48($s7)
    swc1	$f15,0($s0)
    lwc1	$f14,52($s7)
    swc1	$f14,0($s0)
    lwc1	$f13,56($s7)
    swc1	$f13,0($s0)
    lwc1	$f12,60($s7)
    # Line 568
    lui	$a4,0x8080
    # Line 567
    swc1	$f12,0($s0)
    # Line 568
    ori	$a4,$a4,0xd005
    sw	$a4,0($s0)
    lwc1	$f11,16($s7)
    ld	$s8,24($sp)
    swc1	$f11,0($s0)
    lwc1	$f10,20($s7)
    # Line 570
    ld	$gp,32($sp)
    # Line 568
    swc1	$f10,0($s0)
    lwc1	$f9,24($s7)
    ld	$ra,16($sp)
    swc1	$f9,0($s0)
    lwc1	$f8,28($s7)
    # Line 570
    ld	$s7,40($sp)
    # Line 568
    swc1	$f8,0($s0)
    # Line 570
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end RGBSendUnclippedBmFmTN

# Function: RGBSendClippedFmN
# Declared: Line 572 (Source lines: 578-591)
# Address: 0x0d9e80e0 - 0x0d9e8258 (Size: 376 bytes, Frame: 0)
.ent RGBSendClippedFmN
RGBSendClippedFmN:
    # Line 582
    mtc1	$zero,$f4
    lui	$a4,0xc780
    lui	$a2,0x1
    lbu	$a6,184($a0)
    lui	$a5,0x2f00
    lui	$t0,0x3000
    # Line 578
    lw	$a7,4112($zero)
    # Line 582
    ori	$t0,$t0,0xc02e
    ori	$a5,$a5,0xc02e
    lui	$a3,0xc980
    movz	$a5,$t0,$a6
    sw	$a5,0($a2)
    ori	$a3,$a3,0xd032
    ori	$a4,$a4,0xd030
    lw	$a7,1416($a7)
    lui	$a5,0xc880
    li	$t0,0x81fa
    lui	$a6,0xc680
    ori	$a5,$a5,0xd031
    beq	$a7,$t0,.L0d9e81e8
    ori	$a6,$a6,0xd02f
    # Line 586
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,156($a0)
    swc1	$f3,0($a2)
    sw	$a3,0($a2)
    lwc1	$f2,144($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,148($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,152($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e8194:
    # Line 588
    lui	$t2,0xc180
    ori	$t2,$t2,0xcc19
    sw	$t2,0($a2)
    lwc1	$f10,192($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,196($a0)
    swc1	$f9,0($a2)
    lwc1	$f8,200($a0)
    # Line 589
    lui	$t1,0x8080
    # Line 588
    swc1	$f8,0($a2)
    # Line 589
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f7,16($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,20($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,24($a0)
    swc1	$f5,0($a2)
    lwc1	$f4,28($a0)
    # Line 591
    jr	$ra
    # Line 589
    swc1	$f4,0($a2)
.L0d9e81e8:
    # Line 584
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    lwc1	$f17,368($a0)
    swc1	$f17,0($a2)
    lwc1	$f16,372($a0)
    swc1	$f16,0($a2)
    lwc1	$f15,376($a0)
    swc1	$f15,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f14,156($a0)
    swc1	$f14,0($a2)
    sw	$a3,0($a2)
    lwc1	$f13,144($a0)
    swc1	$f13,0($a2)
    lwc1	$f12,148($a0)
    swc1	$f12,0($a2)
    lwc1	$f11,152($a0)
    swc1	$f11,0($a2)
    b	.L0d9e8194
    swc1	$f4,0($a2)
.end RGBSendClippedFmN

# Function: RGBSendClippedFmTN
# Declared: Line 593 (Source lines: 599-612)
# Address: 0x0d9e8260 - 0x0d9e8404 (Size: 420 bytes, Frame: 0)
.ent RGBSendClippedFmTN
RGBSendClippedFmTN:
    # Line 602
    mtc1	$zero,$f4
    lui	$a4,0xc780
    lui	$a2,0x1
    lbu	$a6,184($a0)
    lui	$a5,0x2f00
    lui	$t0,0x3000
    # Line 599
    lw	$a7,4112($zero)
    # Line 602
    ori	$t0,$t0,0xc02e
    ori	$a5,$a5,0xc02e
    lui	$a3,0xc980
    movz	$a5,$t0,$a6
    sw	$a5,0($a2)
    ori	$a3,$a3,0xd032
    ori	$a4,$a4,0xd030
    lw	$a7,1416($a7)
    lui	$a5,0xc880
    li	$t0,0x81fa
    lui	$a6,0xc680
    ori	$a5,$a5,0xd031
    beq	$a7,$t0,.L0d9e8394
    ori	$a6,$a6,0xd02f
    # Line 606
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,156($a0)
    swc1	$f3,0($a2)
    sw	$a3,0($a2)
    lwc1	$f2,144($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,148($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,152($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e8314:
    # Line 608
    lui	$t3,0xc180
    ori	$t3,$t3,0xcc19
    sw	$t3,0($a2)
    lwc1	$f14,192($a0)
    swc1	$f14,0($a2)
    lwc1	$f13,196($a0)
    swc1	$f13,0($a2)
    lwc1	$f12,200($a0)
    # Line 609
    lui	$t2,0xc380
    # Line 608
    swc1	$f12,0($a2)
    # Line 609
    ori	$t2,$t2,0xd025
    sw	$t2,0($a2)
    lwc1	$f11,48($a0)
    swc1	$f11,0($a2)
    lwc1	$f10,52($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,56($a0)
    swc1	$f9,0($a2)
    lwc1	$f8,60($a0)
    # Line 610
    lui	$t1,0x8080
    # Line 609
    swc1	$f8,0($a2)
    # Line 610
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f7,16($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,20($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,24($a0)
    swc1	$f5,0($a2)
    lwc1	$f4,28($a0)
    # Line 612
    jr	$ra
    # Line 610
    swc1	$f4,0($a2)
.L0d9e8394:
    # Line 604
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    lwc1	$f23,368($a0)
    swc1	$f23,0($a2)
    lwc1	$f21,372($a0)
    swc1	$f21,0($a2)
    lwc1	$f19,376($a0)
    swc1	$f19,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f18,156($a0)
    swc1	$f18,0($a2)
    sw	$a3,0($a2)
    lwc1	$f17,144($a0)
    swc1	$f17,0($a2)
    lwc1	$f16,148($a0)
    swc1	$f16,0($a2)
    lwc1	$f15,152($a0)
    swc1	$f15,0($a2)
    b	.L0d9e8314
    swc1	$f4,0($a2)
.end RGBSendClippedFmTN

# Function: RGBSendClippedBmFmN
# Declared: Line 614 (Source lines: 620-635)
# Address: 0x0d9e8410 - 0x0d9e8674 (Size: 612 bytes, Frame: 0)
.ent RGBSendClippedBmFmN
RGBSendClippedBmFmN:
    # Line 624
    mtc1	$zero,$f4
    lui	$a4,0xc780
    lui	$a3,0xc980
    lui	$a5,0xca80
    lui	$a7,0xcc80
    lui	$a6,0xcb80
    lui	$t0,0xcd80
    ori	$t0,$t0,0xd038
    ori	$a6,$a6,0xd036
    ori	$a7,$a7,0xd037
    lui	$a2,0x1
    lbu	$t2,184($a0)
    lui	$t1,0x2f00
    lui	$t8,0x3000
    # Line 620
    lw	$t3,4112($zero)
    # Line 624
    ori	$t8,$t8,0xc02e
    ori	$t1,$t1,0xc02e
    ori	$a5,$a5,0xd035
    movz	$t1,$t8,$t2
    sw	$t1,0($a2)
    ori	$a3,$a3,0xd032
    ori	$a4,$a4,0xd030
    lw	$t3,1416($t3)
    lui	$t1,0xc880
    li	$t8,0x81fa
    lui	$t2,0xc680
    ori	$t1,$t1,0xd031
    beq	$t3,$t8,.L0d9e8598
    ori	$t2,$t2,0xd02f
    # Line 629
    sw	$t2,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f8,156($a0)
    swc1	$f8,0($a2)
    sw	$a3,0($a2)
    lwc1	$f7,144($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,148($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,152($a0)
    swc1	$f5,0($a2)
    swc1	$f4,0($a2)
    # Line 630
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,172($a0)
    swc1	$f3,0($a2)
    sw	$t0,0($a2)
    lwc1	$f2,160($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,164($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,168($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e8544:
    # Line 632
    lui	$t2,0xc180
    ori	$t2,$t2,0xcc19
    sw	$t2,0($a2)
    lwc1	$f15,192($a0)
    swc1	$f15,0($a2)
    lwc1	$f14,196($a0)
    swc1	$f14,0($a2)
    lwc1	$f13,200($a0)
    # Line 633
    lui	$t1,0x8080
    # Line 632
    swc1	$f13,0($a2)
    # Line 633
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f12,16($a0)
    swc1	$f12,0($a2)
    lwc1	$f11,20($a0)
    swc1	$f11,0($a2)
    lwc1	$f10,24($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,28($a0)
    # Line 635
    jr	$ra
    # Line 633
    swc1	$f9,0($a2)
.L0d9e8598:
    # Line 626
    sw	$t2,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    lwc1	$f3,368($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,372($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,376($a0)
    swc1	$f1,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f0,156($a0)
    swc1	$f0,0($a2)
    sw	$a3,0($a2)
    lwc1	$f31,144($a0)
    swc1	$f31,0($a2)
    lwc1	$f29,148($a0)
    swc1	$f29,0($a2)
    lwc1	$f27,152($a0)
    swc1	$f27,0($a2)
    swc1	$f4,0($a2)
    # Line 627
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    lwc1	$f25,384($a0)
    swc1	$f25,0($a2)
    lwc1	$f23,388($a0)
    swc1	$f23,0($a2)
    lwc1	$f21,392($a0)
    swc1	$f21,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f19,172($a0)
    swc1	$f19,0($a2)
    sw	$t0,0($a2)
    lwc1	$f18,160($a0)
    swc1	$f18,0($a2)
    lwc1	$f17,164($a0)
    swc1	$f17,0($a2)
    lwc1	$f16,168($a0)
    swc1	$f16,0($a2)
    b	.L0d9e8544
    swc1	$f4,0($a2)
.end RGBSendClippedBmFmN

# Function: RGBSendClippedBmFmTN
# Declared: Line 637 (Source lines: 643-659)
# Address: 0x0d9e8680 - 0x0d9e8910 (Size: 656 bytes, Frame: 0)
.ent RGBSendClippedBmFmTN
RGBSendClippedBmFmTN:
    # Line 647
    mtc1	$zero,$f4
    lui	$a4,0xc780
    lui	$a3,0xc980
    lui	$a5,0xca80
    lui	$a7,0xcc80
    lui	$a6,0xcb80
    lui	$t0,0xcd80
    ori	$t0,$t0,0xd038
    ori	$a6,$a6,0xd036
    ori	$a7,$a7,0xd037
    lui	$a2,0x1
    lbu	$t2,184($a0)
    lui	$t1,0x2f00
    lui	$t8,0x3000
    # Line 643
    lw	$t3,4112($zero)
    # Line 647
    ori	$t8,$t8,0xc02e
    ori	$t1,$t1,0xc02e
    ori	$a5,$a5,0xd035
    movz	$t1,$t8,$t2
    sw	$t1,0($a2)
    ori	$a3,$a3,0xd032
    ori	$a4,$a4,0xd030
    lw	$t3,1416($t3)
    lui	$t1,0xc880
    li	$t8,0x81fa
    lui	$t2,0xc680
    ori	$t1,$t1,0xd031
    beq	$t3,$t8,.L0d9e8834
    ori	$t2,$t2,0xd02f
    # Line 652
    sw	$t2,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f8,156($a0)
    swc1	$f8,0($a2)
    sw	$a3,0($a2)
    lwc1	$f7,144($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,148($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,152($a0)
    swc1	$f5,0($a2)
    swc1	$f4,0($a2)
    # Line 653
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,172($a0)
    swc1	$f3,0($a2)
    sw	$t0,0($a2)
    lwc1	$f2,160($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,164($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,168($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e87b4:
    # Line 655
    lui	$t3,0xc180
    ori	$t3,$t3,0xcc19
    sw	$t3,0($a2)
    lwc1	$f19,192($a0)
    swc1	$f19,0($a2)
    lwc1	$f18,196($a0)
    swc1	$f18,0($a2)
    lwc1	$f17,200($a0)
    # Line 656
    lui	$t2,0xc380
    # Line 655
    swc1	$f17,0($a2)
    # Line 656
    ori	$t2,$t2,0xd025
    sw	$t2,0($a2)
    lwc1	$f16,48($a0)
    swc1	$f16,0($a2)
    lwc1	$f15,52($a0)
    swc1	$f15,0($a2)
    lwc1	$f14,56($a0)
    swc1	$f14,0($a2)
    lwc1	$f13,60($a0)
    # Line 657
    lui	$t1,0x8080
    # Line 656
    swc1	$f13,0($a2)
    # Line 657
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f12,16($a0)
    swc1	$f12,0($a2)
    lwc1	$f11,20($a0)
    swc1	$f11,0($a2)
    lwc1	$f10,24($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,28($a0)
    # Line 659
    jr	$ra
    # Line 657
    swc1	$f9,0($a2)
.L0d9e8834:
    # Line 649
    sw	$t2,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    lwc1	$f8,368($a0)
    swc1	$f8,0($a2)
    lwc1	$f7,372($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,376($a0)
    swc1	$f6,0($a2)
    swc1	$f4,0($a2)
    sw	$a4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f5,156($a0)
    swc1	$f5,0($a2)
    sw	$a3,0($a2)
    lwc1	$f3,144($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,148($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,152($a0)
    swc1	$f1,0($a2)
    swc1	$f4,0($a2)
    # Line 650
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    lwc1	$f0,384($a0)
    swc1	$f0,0($a2)
    lwc1	$f31,388($a0)
    swc1	$f31,0($a2)
    lwc1	$f29,392($a0)
    swc1	$f29,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f27,172($a0)
    swc1	$f27,0($a2)
    sw	$t0,0($a2)
    lwc1	$f25,160($a0)
    swc1	$f25,0($a2)
    lwc1	$f23,164($a0)
    swc1	$f23,0($a2)
    lwc1	$f21,168($a0)
    swc1	$f21,0($a2)
    b	.L0d9e87b4
    swc1	$f4,0($a2)
.end RGBSendClippedBmFmTN

# Function: RGBSendUnclippedFmNFast
# Declared: Line 728 (Source lines: 729-742)
# Address: 0x0d9e8910 - 0x0d9e8b84 (Size: 628 bytes, Frame: 192)
.ent RGBSendUnclippedFmNFast
RGBSendUnclippedFmNFast:
    # Line 729
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    sd	$s2,40($sp)
    # Line 733
    lbu	$at,400($a0)
    # Line 729
    lui	$v0,0x11
    sd	$s0,16($sp)
    move	$s2,$a0
    addiu	$v0,$v0,-896
    # Line 733
    lw	$s0,4112($zero)
    # Line 729
    sd	$s1,32($sp)
    # Line 733
    lui	$s1,0x1
    # Line 729
    addu	$gp,$t9,$v0
    sd	$ra,48($sp)
    # Line 733
    beqz	$at,.L0d9e8aac
    addu	$s0,$s1,$s0
    lbu	$t8,26820($s0)
    beqz	$t8,.L0d9e8a24
    # Line 735
    lui	$v0,0xc680
    ori	$v0,$v0,0xd02f
    sw	$v0,0($s1)
    lwc1	$f16,26652($s0)
    swc1	$f16,0($s1)
    lwc1	$f15,26656($s0)
    swc1	$f15,0($s1)
    lwc1	$f14,26660($s0)
    swc1	$f14,0($s1)
    lwc1	$f13,26664($s0)
    lui	$at,0xc880
    swc1	$f13,0($s1)
    ori	$at,$at,0xd031
    sw	$at,0($s1)
    lwc1	$f12,26684($s0)
    swc1	$f12,0($s1)
    lwc1	$f11,26688($s0)
    swc1	$f11,0($s1)
    lwc1	$f10,26692($s0)
    swc1	$f10,0($s1)
    lwc1	$f9,26696($s0)
    lui	$ra,0xc780
    swc1	$f9,0($s1)
    ori	$ra,$ra,0xd030
    sw	$ra,0($s1)
    lwc1	$f8,26668($s0)
    swc1	$f8,0($s1)
    lwc1	$f7,26672($s0)
    swc1	$f7,0($s1)
    lwc1	$f6,26676($s0)
    swc1	$f6,0($s1)
    lwc1	$f5,26680($s0)
    lui	$t9,0xc980
    swc1	$f5,0($s1)
    ori	$t9,$t9,0xd032
    sw	$t9,0($s1)
    lwc1	$f4,26700($s0)
    swc1	$f4,0($s1)
    lwc1	$f3,26704($s0)
    swc1	$f3,0($s1)
    lwc1	$f2,26708($s0)
    swc1	$f2,0($s1)
    lwc1	$f1,26712($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($s1)
    lwc1	$f0,26716($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    sb	$zero,26820($s0)
.L0d9e8a24:
    # Line 738
    lbu	$a2,184($s2)
    lui	$a1,0x2f00
    lui	$a3,0x3000
    ori	$a3,$a3,0xc02e
    ori	$a1,$a1,0xc02e
    # Line 739
    lui	$a0,0xc180
    # Line 738
    movz	$a1,$a3,$a2
    sw	$a1,0($s1)
    # Line 739
    ori	$a0,$a0,0xcc19
    sw	$a0,0($s1)
    lwc1	$f27,192($s2)
    swc1	$f27,0($s1)
    lwc1	$f25,196($s2)
    swc1	$f25,0($s1)
    lwc1	$f23,200($s2)
    # Line 740
    lui	$v1,0x8080
    # Line 739
    swc1	$f23,0($s1)
    # Line 740
    ori	$v1,$v1,0xd005
    sw	$v1,0($s1)
    lwc1	$f21,16($s2)
    ld	$s0,16($sp)
    swc1	$f21,0($s1)
    lwc1	$f19,20($s2)
    # Line 742
    ld	$gp,24($sp)
    # Line 740
    swc1	$f19,0($s1)
    lwc1	$f18,24($s2)
    ld	$ra,48($sp)
    swc1	$f18,0($s1)
    lwc1	$f17,28($s2)
    # Line 742
    ld	$s2,40($sp)
    # Line 740
    swc1	$f17,0($s1)
    # Line 742
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e8aac:
    # Line 735
    lui	$a7,0xc680
    ori	$a7,$a7,0xd02f
    sw	$a7,0($s1)
    lwc1	$f14,208($a0)
    swc1	$f14,0($s1)
    lwc1	$f13,212($a0)
    swc1	$f13,0($s1)
    lwc1	$f12,216($a0)
    swc1	$f12,0($s1)
    lwc1	$f11,220($a0)
    lui	$a6,0xc880
    swc1	$f11,0($s1)
    ori	$a6,$a6,0xd031
    sw	$a6,0($s1)
    lwc1	$f10,240($a0)
    swc1	$f10,0($s1)
    lwc1	$f9,244($a0)
    swc1	$f9,0($s1)
    lwc1	$f8,248($a0)
    swc1	$f8,0($s1)
    lwc1	$f7,252($a0)
    lui	$a5,0xc780
    swc1	$f7,0($s1)
    ori	$a5,$a5,0xd030
    sw	$a5,0($s1)
    lwc1	$f6,224($a0)
    swc1	$f6,0($s1)
    lwc1	$f5,228($a0)
    swc1	$f5,0($s1)
    lwc1	$f4,232($a0)
    swc1	$f4,0($s1)
    lwc1	$f3,236($a0)
    lui	$a4,0xc980
    swc1	$f3,0($s1)
    ori	$a4,$a4,0xd032
    sw	$a4,0($s1)
    lwc1	$f2,256($a0)
    swc1	$f2,0($s1)
    lwc1	$f1,260($a0)
    swc1	$f1,0($s1)
    lwc1	$f0,264($a0)
    swc1	$f0,0($s1)
    lwc1	$f31,268($a0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f31,0($s1)
    lwc1	$f29,272($a0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f29,0($sp)
    li	$t0,1
    b	.L0d9e8a24
    sb	$t0,26820($s0)
.end RGBSendUnclippedFmNFast

# Function: RGBSendUnclippedFmTNFast
# Declared: Line 744 (Source lines: 745-759)
# Address: 0x0d9e8b90 - 0x0d9e8e30 (Size: 672 bytes, Frame: 192)
.ent RGBSendUnclippedFmTNFast
RGBSendUnclippedFmTNFast:
    # Line 745
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    sd	$s2,40($sp)
    # Line 749
    lbu	$at,400($a0)
    # Line 745
    lui	$v0,0x11
    sd	$s0,16($sp)
    move	$s2,$a0
    addiu	$v0,$v0,-1536
    # Line 749
    lw	$s0,4112($zero)
    # Line 745
    sd	$s1,32($sp)
    # Line 749
    lui	$s1,0x1
    # Line 745
    addu	$gp,$t9,$v0
    sd	$ra,48($sp)
    # Line 749
    beqz	$at,.L0d9e8d58
    addu	$s0,$s1,$s0
    lbu	$t8,26820($s0)
    beqz	$t8,.L0d9e8ca4
    # Line 751
    lui	$v0,0xc680
    ori	$v0,$v0,0xd02f
    sw	$v0,0($s1)
    lwc1	$f16,26652($s0)
    swc1	$f16,0($s1)
    lwc1	$f15,26656($s0)
    swc1	$f15,0($s1)
    lwc1	$f14,26660($s0)
    swc1	$f14,0($s1)
    lwc1	$f13,26664($s0)
    lui	$at,0xc880
    swc1	$f13,0($s1)
    ori	$at,$at,0xd031
    sw	$at,0($s1)
    lwc1	$f12,26684($s0)
    swc1	$f12,0($s1)
    lwc1	$f11,26688($s0)
    swc1	$f11,0($s1)
    lwc1	$f10,26692($s0)
    swc1	$f10,0($s1)
    lwc1	$f9,26696($s0)
    lui	$ra,0xc780
    swc1	$f9,0($s1)
    ori	$ra,$ra,0xd030
    sw	$ra,0($s1)
    lwc1	$f8,26668($s0)
    swc1	$f8,0($s1)
    lwc1	$f7,26672($s0)
    swc1	$f7,0($s1)
    lwc1	$f6,26676($s0)
    swc1	$f6,0($s1)
    lwc1	$f5,26680($s0)
    lui	$t9,0xc980
    swc1	$f5,0($s1)
    ori	$t9,$t9,0xd032
    sw	$t9,0($s1)
    lwc1	$f4,26700($s0)
    swc1	$f4,0($s1)
    lwc1	$f3,26704($s0)
    swc1	$f3,0($s1)
    lwc1	$f2,26708($s0)
    swc1	$f2,0($s1)
    lwc1	$f1,26712($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($s1)
    lwc1	$f0,26716($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    sb	$zero,26820($s0)
.L0d9e8ca4:
    # Line 754
    lbu	$a3,184($s2)
    lui	$a2,0x2f00
    lui	$a4,0x3000
    ori	$a4,$a4,0xc02e
    ori	$a2,$a2,0xc02e
    # Line 755
    lui	$a1,0xc180
    # Line 754
    movz	$a2,$a4,$a3
    sw	$a2,0($s1)
    # Line 755
    ori	$a1,$a1,0xcc19
    sw	$a1,0($s1)
    lwc1	$f1,192($s2)
    swc1	$f1,0($s1)
    lwc1	$f0,196($s2)
    swc1	$f0,0($s1)
    lwc1	$f31,200($s2)
    # Line 756
    lui	$a0,0xc380
    # Line 755
    swc1	$f31,0($s1)
    # Line 756
    ori	$a0,$a0,0xd025
    sw	$a0,0($s1)
    lwc1	$f29,48($s2)
    swc1	$f29,0($s1)
    lwc1	$f27,52($s2)
    swc1	$f27,0($s1)
    lwc1	$f25,56($s2)
    swc1	$f25,0($s1)
    lwc1	$f23,60($s2)
    # Line 757
    lui	$v1,0x8080
    # Line 756
    swc1	$f23,0($s1)
    # Line 757
    ori	$v1,$v1,0xd005
    sw	$v1,0($s1)
    lwc1	$f21,16($s2)
    ld	$s0,16($sp)
    swc1	$f21,0($s1)
    lwc1	$f19,20($s2)
    # Line 759
    ld	$gp,24($sp)
    # Line 757
    swc1	$f19,0($s1)
    lwc1	$f18,24($s2)
    ld	$ra,48($sp)
    swc1	$f18,0($s1)
    lwc1	$f17,28($s2)
    # Line 759
    ld	$s2,40($sp)
    # Line 757
    swc1	$f17,0($s1)
    # Line 759
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e8d58:
    # Line 751
    lui	$t0,0xc680
    ori	$t0,$t0,0xd02f
    sw	$t0,0($s1)
    lwc1	$f18,208($a0)
    swc1	$f18,0($s1)
    lwc1	$f17,212($a0)
    swc1	$f17,0($s1)
    lwc1	$f16,216($a0)
    swc1	$f16,0($s1)
    lwc1	$f15,220($a0)
    lui	$a7,0xc880
    swc1	$f15,0($s1)
    ori	$a7,$a7,0xd031
    sw	$a7,0($s1)
    lwc1	$f14,240($a0)
    swc1	$f14,0($s1)
    lwc1	$f13,244($a0)
    swc1	$f13,0($s1)
    lwc1	$f12,248($a0)
    swc1	$f12,0($s1)
    lwc1	$f11,252($a0)
    lui	$a6,0xc780
    swc1	$f11,0($s1)
    ori	$a6,$a6,0xd030
    sw	$a6,0($s1)
    lwc1	$f10,224($a0)
    swc1	$f10,0($s1)
    lwc1	$f9,228($a0)
    swc1	$f9,0($s1)
    lwc1	$f8,232($a0)
    swc1	$f8,0($s1)
    lwc1	$f7,236($a0)
    lui	$a5,0xc980
    swc1	$f7,0($s1)
    ori	$a5,$a5,0xd032
    sw	$a5,0($s1)
    lwc1	$f6,256($a0)
    swc1	$f6,0($s1)
    lwc1	$f5,260($a0)
    swc1	$f5,0($s1)
    lwc1	$f4,264($a0)
    swc1	$f4,0($s1)
    lwc1	$f3,268($a0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f3,0($s1)
    lwc1	$f2,272($a0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f2,0($sp)
    li	$t1,1
    b	.L0d9e8ca4
    sb	$t1,26820($s0)
.end RGBSendUnclippedFmTNFast

# Function: RGBSendUnclippedBmFmNFast
# Declared: Line 761 (Source lines: 762-777)
# Address: 0x0d9e8e30 - 0x0d9e9264 (Size: 1076 bytes, Frame: 192)
.ent RGBSendUnclippedBmFmNFast
RGBSendUnclippedBmFmNFast:
    # Line 762
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    sd	$s2,40($sp)
    # Line 766
    lbu	$a2,400($a0)
    # Line 762
    lui	$at,0x11
    sd	$s0,16($sp)
    move	$s2,$a0
    addiu	$at,$at,-2208
    # Line 766
    lw	$s0,4112($zero)
    # Line 762
    sd	$s1,32($sp)
    # Line 766
    lui	$s1,0x1
    # Line 762
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    # Line 766
    beqz	$a2,.L0d9e9024
    addu	$s0,$s1,$s0
    lbu	$t8,26821($s0)
    beqz	$t8,.L0d9e90fc
    # Line 768
    lui	$v0,0xca80
    ori	$v0,$v0,0xd035
    sw	$v0,0($s1)
    lwc1	$f16,26732($s0)
    swc1	$f16,0($s1)
    lwc1	$f15,26736($s0)
    swc1	$f15,0($s1)
    lwc1	$f14,26740($s0)
    swc1	$f14,0($s1)
    lwc1	$f13,26744($s0)
    lui	$at,0xcc80
    swc1	$f13,0($s1)
    ori	$at,$at,0xd037
    sw	$at,0($s1)
    lwc1	$f12,26764($s0)
    swc1	$f12,0($s1)
    lwc1	$f11,26768($s0)
    swc1	$f11,0($s1)
    lwc1	$f10,26772($s0)
    swc1	$f10,0($s1)
    lwc1	$f9,26776($s0)
    lui	$ra,0xcb80
    swc1	$f9,0($s1)
    ori	$ra,$ra,0xd036
    sw	$ra,0($s1)
    lwc1	$f8,26748($s0)
    swc1	$f8,0($s1)
    lwc1	$f7,26752($s0)
    swc1	$f7,0($s1)
    lwc1	$f6,26756($s0)
    swc1	$f6,0($s1)
    lwc1	$f5,26760($s0)
    lui	$t9,0xcd80
    swc1	$f5,0($s1)
    ori	$t9,$t9,0xd038
    sw	$t9,0($s1)
    lwc1	$f4,26780($s0)
    swc1	$f4,0($s1)
    lwc1	$f3,26784($s0)
    swc1	$f3,0($s1)
    lwc1	$f2,26788($s0)
    swc1	$f2,0($s1)
    lwc1	$f1,26792($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($s1)
    lwc1	$f0,26796($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    sb	$zero,26821($s0)
    lbu	$a2,400($s2)
    bnez	$a2,.L0d9e9104
    # Line 769
    lui	$a2,0xc680
.L0d9e8f50:
    ori	$a2,$a2,0xd02f
    sw	$a2,0($s1)
    lwc1	$f7,208($s2)
    swc1	$f7,0($s1)
    lwc1	$f6,212($s2)
    swc1	$f6,0($s1)
    lwc1	$f5,216($s2)
    swc1	$f5,0($s1)
    lwc1	$f4,220($s2)
    lui	$a1,0xc880
    swc1	$f4,0($s1)
    ori	$a1,$a1,0xd031
    sw	$a1,0($s1)
    lwc1	$f3,240($s2)
    swc1	$f3,0($s1)
    lwc1	$f2,244($s2)
    swc1	$f2,0($s1)
    lwc1	$f1,248($s2)
    swc1	$f1,0($s1)
    lwc1	$f0,252($s2)
    lui	$a0,0xc780
    swc1	$f0,0($s1)
    ori	$a0,$a0,0xd030
    sw	$a0,0($s1)
    lwc1	$f31,224($s2)
    swc1	$f31,0($s1)
    lwc1	$f29,228($s2)
    swc1	$f29,0($s1)
    lwc1	$f27,232($s2)
    swc1	$f27,0($s1)
    lwc1	$f25,236($s2)
    lui	$v1,0xc980
    swc1	$f25,0($s1)
    ori	$v1,$v1,0xd032
    sw	$v1,0($s1)
    lwc1	$f23,256($s2)
    swc1	$f23,0($s1)
    lwc1	$f21,260($s2)
    swc1	$f21,0($s1)
    lwc1	$f19,264($s2)
    swc1	$f19,0($s1)
    lwc1	$f18,268($s2)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f18,0($s1)
    lwc1	$f17,272($s2)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f17,0($sp)
    li	$a3,1
    b	.L0d9e91dc
    sb	$a3,26820($s0)
.L0d9e9024:
    # Line 768
    lui	$a7,0xca80
    ori	$a7,$a7,0xd035
    sw	$a7,0($s1)
    lwc1	$f29,288($a0)
    swc1	$f29,0($s1)
    lwc1	$f27,292($a0)
    swc1	$f27,0($s1)
    lwc1	$f25,296($a0)
    swc1	$f25,0($s1)
    lwc1	$f23,300($a0)
    lui	$a6,0xcc80
    swc1	$f23,0($s1)
    ori	$a6,$a6,0xd037
    sw	$a6,0($s1)
    lwc1	$f21,320($a0)
    swc1	$f21,0($s1)
    lwc1	$f19,324($a0)
    swc1	$f19,0($s1)
    lwc1	$f18,328($a0)
    swc1	$f18,0($s1)
    lwc1	$f17,332($a0)
    lui	$a5,0xcb80
    swc1	$f17,0($s1)
    ori	$a5,$a5,0xd036
    sw	$a5,0($s1)
    lwc1	$f16,304($a0)
    swc1	$f16,0($s1)
    lwc1	$f15,308($a0)
    swc1	$f15,0($s1)
    lwc1	$f14,312($a0)
    swc1	$f14,0($s1)
    lwc1	$f13,316($a0)
    lui	$a4,0xcd80
    swc1	$f13,0($s1)
    ori	$a4,$a4,0xd038
    sw	$a4,0($s1)
    lwc1	$f12,336($a0)
    swc1	$f12,0($s1)
    lwc1	$f11,340($a0)
    swc1	$f11,0($s1)
    lwc1	$f10,344($a0)
    swc1	$f10,0($s1)
    lwc1	$f9,348($a0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f9,0($s1)
    lwc1	$f8,352($a0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f8,0($sp)
    li	$t0,1
    sb	$t0,26821($s0)
    lbu	$a2,400($s2)
.L0d9e90fc:
    beqz	$a2,.L0d9e8f50
    # Line 769
    lui	$a2,0xc680
.L0d9e9104:
    # Line 768
    lbu	$t1,26820($s0)
    beqz	$t1,.L0d9e91dc
    # Line 769
    lui	$t9,0xc680
    ori	$t9,$t9,0xd02f
    sw	$t9,0($s1)
    lwc1	$f15,26652($s0)
    swc1	$f15,0($s1)
    lwc1	$f14,26656($s0)
    swc1	$f14,0($s1)
    lwc1	$f13,26660($s0)
    swc1	$f13,0($s1)
    lwc1	$f12,26664($s0)
    lui	$t8,0xc880
    swc1	$f12,0($s1)
    ori	$t8,$t8,0xd031
    sw	$t8,0($s1)
    lwc1	$f11,26684($s0)
    swc1	$f11,0($s1)
    lwc1	$f10,26688($s0)
    swc1	$f10,0($s1)
    lwc1	$f9,26692($s0)
    swc1	$f9,0($s1)
    lwc1	$f8,26696($s0)
    lui	$t3,0xc780
    swc1	$f8,0($s1)
    ori	$t3,$t3,0xd030
    sw	$t3,0($s1)
    lwc1	$f7,26668($s0)
    swc1	$f7,0($s1)
    lwc1	$f6,26672($s0)
    swc1	$f6,0($s1)
    lwc1	$f5,26676($s0)
    swc1	$f5,0($s1)
    lwc1	$f4,26680($s0)
    lui	$t2,0xc980
    swc1	$f4,0($s1)
    ori	$t2,$t2,0xd032
    sw	$t2,0($s1)
    lwc1	$f3,26700($s0)
    swc1	$f3,0($s1)
    lwc1	$f2,26704($s0)
    swc1	$f2,0($s1)
    lwc1	$f1,26708($s0)
    swc1	$f1,0($s1)
    lwc1	$f0,26712($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f0,0($s1)
    lwc1	$f31,26716($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f31,0($sp)
    sb	$zero,26820($s0)
.L0d9e91dc:
    # Line 773
    lbu	$a0,184($s2)
    lui	$v1,0x2f00
    lui	$a1,0x3000
    ori	$a1,$a1,0xc02e
    ori	$v1,$v1,0xc02e
    # Line 774
    lui	$v0,0xc180
    # Line 773
    movz	$v1,$a1,$a0
    sw	$v1,0($s1)
    # Line 774
    ori	$v0,$v0,0xcc19
    sw	$v0,0($s1)
    lwc1	$f25,192($s2)
    swc1	$f25,0($s1)
    lwc1	$f23,196($s2)
    swc1	$f23,0($s1)
    lwc1	$f21,200($s2)
    # Line 775
    lui	$at,0x8080
    # Line 774
    swc1	$f21,0($s1)
    # Line 775
    ori	$at,$at,0xd005
    sw	$at,0($s1)
    lwc1	$f19,16($s2)
    ld	$s0,16($sp)
    swc1	$f19,0($s1)
    lwc1	$f18,20($s2)
    # Line 777
    ld	$gp,24($sp)
    # Line 775
    swc1	$f18,0($s1)
    lwc1	$f17,24($s2)
    ld	$ra,48($sp)
    swc1	$f17,0($s1)
    lwc1	$f16,28($s2)
    # Line 777
    ld	$s2,40($sp)
    # Line 775
    swc1	$f16,0($s1)
    # Line 777
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end RGBSendUnclippedBmFmNFast

# Function: RGBSendUnclippedBmFmTNFast
# Declared: Line 779 (Source lines: 780-796)
# Address: 0x0d9e9270 - 0x0d9e96d4 (Size: 1124 bytes, Frame: 192)
.ent RGBSendUnclippedBmFmTNFast
RGBSendUnclippedBmFmTNFast:
    # Line 780
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    sd	$s2,40($sp)
    # Line 784
    lbu	$a2,400($a0)
    # Line 780
    lui	$at,0x11
    sd	$s0,16($sp)
    move	$s2,$a0
    addiu	$at,$at,-3296
    # Line 784
    lw	$s0,4112($zero)
    # Line 780
    sd	$s1,32($sp)
    # Line 784
    lui	$s1,0x1
    # Line 780
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    # Line 784
    beqz	$a2,.L0d9e9468
    addu	$s0,$s1,$s0
    lbu	$t8,26821($s0)
    beqz	$t8,.L0d9e9540
    # Line 786
    lui	$v0,0xca80
    ori	$v0,$v0,0xd035
    sw	$v0,0($s1)
    lwc1	$f16,26732($s0)
    swc1	$f16,0($s1)
    lwc1	$f15,26736($s0)
    swc1	$f15,0($s1)
    lwc1	$f14,26740($s0)
    swc1	$f14,0($s1)
    lwc1	$f13,26744($s0)
    lui	$at,0xcc80
    swc1	$f13,0($s1)
    ori	$at,$at,0xd037
    sw	$at,0($s1)
    lwc1	$f12,26764($s0)
    swc1	$f12,0($s1)
    lwc1	$f11,26768($s0)
    swc1	$f11,0($s1)
    lwc1	$f10,26772($s0)
    swc1	$f10,0($s1)
    lwc1	$f9,26776($s0)
    lui	$ra,0xcb80
    swc1	$f9,0($s1)
    ori	$ra,$ra,0xd036
    sw	$ra,0($s1)
    lwc1	$f8,26748($s0)
    swc1	$f8,0($s1)
    lwc1	$f7,26752($s0)
    swc1	$f7,0($s1)
    lwc1	$f6,26756($s0)
    swc1	$f6,0($s1)
    lwc1	$f5,26760($s0)
    lui	$t9,0xcd80
    swc1	$f5,0($s1)
    ori	$t9,$t9,0xd038
    sw	$t9,0($s1)
    lwc1	$f4,26780($s0)
    swc1	$f4,0($s1)
    lwc1	$f3,26784($s0)
    swc1	$f3,0($s1)
    lwc1	$f2,26788($s0)
    swc1	$f2,0($s1)
    lwc1	$f1,26792($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($s1)
    lwc1	$f0,26796($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    sb	$zero,26821($s0)
    lbu	$a2,400($s2)
    bnezl	$a2,.L0d9e954c
    lbu	$t1,26820($s0)
    # Line 787
    lui	$a2,0xc680
.L0d9e9394:
    ori	$a2,$a2,0xd02f
    sw	$a2,0($s1)
    lwc1	$f7,208($s2)
    swc1	$f7,0($s1)
    lwc1	$f6,212($s2)
    swc1	$f6,0($s1)
    lwc1	$f5,216($s2)
    swc1	$f5,0($s1)
    lwc1	$f4,220($s2)
    lui	$a1,0xc880
    swc1	$f4,0($s1)
    ori	$a1,$a1,0xd031
    sw	$a1,0($s1)
    lwc1	$f3,240($s2)
    swc1	$f3,0($s1)
    lwc1	$f2,244($s2)
    swc1	$f2,0($s1)
    lwc1	$f1,248($s2)
    swc1	$f1,0($s1)
    lwc1	$f0,252($s2)
    lui	$a0,0xc780
    swc1	$f0,0($s1)
    ori	$a0,$a0,0xd030
    sw	$a0,0($s1)
    lwc1	$f31,224($s2)
    swc1	$f31,0($s1)
    lwc1	$f29,228($s2)
    swc1	$f29,0($s1)
    lwc1	$f27,232($s2)
    swc1	$f27,0($s1)
    lwc1	$f25,236($s2)
    lui	$v1,0xc980
    swc1	$f25,0($s1)
    ori	$v1,$v1,0xd032
    sw	$v1,0($s1)
    lwc1	$f23,256($s2)
    swc1	$f23,0($s1)
    lwc1	$f21,260($s2)
    swc1	$f21,0($s1)
    lwc1	$f19,264($s2)
    swc1	$f19,0($s1)
    lwc1	$f18,268($s2)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f18,0($s1)
    lwc1	$f17,272($s2)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f17,0($sp)
    li	$a3,1
    b	.L0d9e9620
    sb	$a3,26820($s0)
.L0d9e9468:
    # Line 786
    lui	$a7,0xca80
    ori	$a7,$a7,0xd035
    sw	$a7,0($s1)
    lwc1	$f29,288($a0)
    swc1	$f29,0($s1)
    lwc1	$f27,292($a0)
    swc1	$f27,0($s1)
    lwc1	$f25,296($a0)
    swc1	$f25,0($s1)
    lwc1	$f23,300($a0)
    lui	$a6,0xcc80
    swc1	$f23,0($s1)
    ori	$a6,$a6,0xd037
    sw	$a6,0($s1)
    lwc1	$f21,320($a0)
    swc1	$f21,0($s1)
    lwc1	$f19,324($a0)
    swc1	$f19,0($s1)
    lwc1	$f18,328($a0)
    swc1	$f18,0($s1)
    lwc1	$f17,332($a0)
    lui	$a5,0xcb80
    swc1	$f17,0($s1)
    ori	$a5,$a5,0xd036
    sw	$a5,0($s1)
    lwc1	$f16,304($a0)
    swc1	$f16,0($s1)
    lwc1	$f15,308($a0)
    swc1	$f15,0($s1)
    lwc1	$f14,312($a0)
    swc1	$f14,0($s1)
    lwc1	$f13,316($a0)
    lui	$a4,0xcd80
    swc1	$f13,0($s1)
    ori	$a4,$a4,0xd038
    sw	$a4,0($s1)
    lwc1	$f12,336($a0)
    swc1	$f12,0($s1)
    lwc1	$f11,340($a0)
    swc1	$f11,0($s1)
    lwc1	$f10,344($a0)
    swc1	$f10,0($s1)
    lwc1	$f9,348($a0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f9,0($s1)
    lwc1	$f8,352($a0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f8,0($sp)
    li	$t0,1
    sb	$t0,26821($s0)
    lbu	$a2,400($s2)
.L0d9e9540:
    beqz	$a2,.L0d9e9394
    # Line 787
    lui	$a2,0xc680
    # Line 786
    lbu	$t1,26820($s0)
.L0d9e954c:
    beqz	$t1,.L0d9e9620
    # Line 787
    lui	$t9,0xc680
    ori	$t9,$t9,0xd02f
    sw	$t9,0($s1)
    lwc1	$f15,26652($s0)
    swc1	$f15,0($s1)
    lwc1	$f14,26656($s0)
    swc1	$f14,0($s1)
    lwc1	$f13,26660($s0)
    swc1	$f13,0($s1)
    lwc1	$f12,26664($s0)
    lui	$t8,0xc880
    swc1	$f12,0($s1)
    ori	$t8,$t8,0xd031
    sw	$t8,0($s1)
    lwc1	$f11,26684($s0)
    swc1	$f11,0($s1)
    lwc1	$f10,26688($s0)
    swc1	$f10,0($s1)
    lwc1	$f9,26692($s0)
    swc1	$f9,0($s1)
    lwc1	$f8,26696($s0)
    lui	$t3,0xc780
    swc1	$f8,0($s1)
    ori	$t3,$t3,0xd030
    sw	$t3,0($s1)
    lwc1	$f7,26668($s0)
    swc1	$f7,0($s1)
    lwc1	$f6,26672($s0)
    swc1	$f6,0($s1)
    lwc1	$f5,26676($s0)
    swc1	$f5,0($s1)
    lwc1	$f4,26680($s0)
    lui	$t2,0xc980
    swc1	$f4,0($s1)
    ori	$t2,$t2,0xd032
    sw	$t2,0($s1)
    lwc1	$f3,26700($s0)
    swc1	$f3,0($s1)
    lwc1	$f2,26704($s0)
    swc1	$f2,0($s1)
    lwc1	$f1,26708($s0)
    swc1	$f1,0($s1)
    lwc1	$f0,26712($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f0,0($s1)
    lwc1	$f31,26716($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f31,0($sp)
    sb	$zero,26820($s0)
.L0d9e9620:
    # Line 791
    lbu	$a1,184($s2)
    lui	$a0,0x2f00
    lui	$a2,0x3000
    ori	$a2,$a2,0xc02e
    ori	$a0,$a0,0xc02e
    # Line 792
    lui	$v1,0xc180
    # Line 791
    movz	$a0,$a2,$a1
    sw	$a0,0($s1)
    # Line 792
    ori	$v1,$v1,0xcc19
    sw	$v1,0($s1)
    lwc1	$f0,192($s2)
    swc1	$f0,0($s1)
    lwc1	$f31,196($s2)
    swc1	$f31,0($s1)
    lwc1	$f29,200($s2)
    # Line 793
    lui	$v0,0xc380
    # Line 792
    swc1	$f29,0($s1)
    # Line 793
    ori	$v0,$v0,0xd025
    sw	$v0,0($s1)
    lwc1	$f27,48($s2)
    swc1	$f27,0($s1)
    lwc1	$f25,52($s2)
    swc1	$f25,0($s1)
    lwc1	$f23,56($s2)
    swc1	$f23,0($s1)
    lwc1	$f21,60($s2)
    # Line 794
    lui	$at,0x8080
    # Line 793
    swc1	$f21,0($s1)
    # Line 794
    ori	$at,$at,0xd005
    sw	$at,0($s1)
    lwc1	$f19,16($s2)
    ld	$s0,16($sp)
    swc1	$f19,0($s1)
    lwc1	$f18,20($s2)
    # Line 796
    ld	$gp,24($sp)
    # Line 794
    swc1	$f18,0($s1)
    lwc1	$f17,24($s2)
    ld	$ra,48($sp)
    swc1	$f17,0($s1)
    lwc1	$f16,28($s2)
    # Line 796
    ld	$s2,40($sp)
    # Line 794
    swc1	$f16,0($s1)
    # Line 796
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end RGBSendUnclippedBmFmTNFast

# Function: RGBSendClippedFmNFast
# Declared: Line 798 (Source lines: 801-815)
# Address: 0x0d9e96e0 - 0x0d9e9864 (Size: 388 bytes, Frame: 0)
.ent RGBSendClippedFmNFast
RGBSendClippedFmNFast:
    # Line 804
    mtc1	$zero,$f4
    lui	$a5,0xc780
    lui	$a2,0x1
    lbu	$a7,184($a0)
    lui	$a6,0x2f00
    lui	$t0,0x3000
    # Line 801
    lw	$a3,4112($zero)
    # Line 804
    ori	$t0,$t0,0xc02e
    ori	$a6,$a6,0xc02e
    lui	$a4,0xc980
    movz	$a6,$t0,$a7
    sw	$a6,0($a2)
    ori	$a4,$a4,0xd032
    ori	$a5,$a5,0xd030
    lw	$t0,1416($a3)
    li	$t1,0x81fa
    lui	$a6,0xc880
    lui	$a7,0xc680
    ori	$a6,$a6,0xd031
    beq	$t0,$t1,.L0d9e97f4
    ori	$a7,$a7,0xd02f
    # Line 808
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,156($a0)
    swc1	$f3,0($a2)
    sw	$a4,0($a2)
    lwc1	$f2,144($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,148($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,152($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e9794:
    # Line 810
    addu	$t8,$a2,$a3
    li	$t3,1
    # Line 812
    lui	$t2,0xc180
    # Line 810
    sb	$t3,26820($t8)
    # Line 812
    ori	$t2,$t2,0xcc19
    sw	$t2,0($a2)
    lwc1	$f10,192($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,196($a0)
    swc1	$f9,0($a2)
    lwc1	$f8,200($a0)
    # Line 813
    lui	$t1,0x8080
    # Line 812
    swc1	$f8,0($a2)
    # Line 813
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f7,16($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,20($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,24($a0)
    swc1	$f5,0($a2)
    lwc1	$f4,28($a0)
    # Line 815
    jr	$ra
    # Line 813
    swc1	$f4,0($a2)
.L0d9e97f4:
    # Line 806
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    lwc1	$f17,368($a0)
    swc1	$f17,0($a2)
    lwc1	$f16,372($a0)
    swc1	$f16,0($a2)
    lwc1	$f15,376($a0)
    swc1	$f15,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f14,156($a0)
    swc1	$f14,0($a2)
    sw	$a4,0($a2)
    lwc1	$f13,144($a0)
    swc1	$f13,0($a2)
    lwc1	$f12,148($a0)
    swc1	$f12,0($a2)
    lwc1	$f11,152($a0)
    swc1	$f11,0($a2)
    b	.L0d9e9794
    swc1	$f4,0($a2)
.end RGBSendClippedFmNFast

# Function: RGBSendClippedFmTNFast
# Declared: Line 817 (Source lines: 820-834)
# Address: 0x0d9e9870 - 0x0d9e9a20 (Size: 432 bytes, Frame: 0)
.ent RGBSendClippedFmTNFast
RGBSendClippedFmTNFast:
    # Line 822
    mtc1	$zero,$f4
    lui	$a5,0xc780
    lui	$a2,0x1
    lbu	$a7,184($a0)
    lui	$a6,0x2f00
    lui	$t0,0x3000
    # Line 820
    lw	$a3,4112($zero)
    # Line 822
    ori	$t0,$t0,0xc02e
    ori	$a6,$a6,0xc02e
    lui	$a4,0xc980
    movz	$a6,$t0,$a7
    sw	$a6,0($a2)
    ori	$a4,$a4,0xd032
    ori	$a5,$a5,0xd030
    lw	$t0,1416($a3)
    li	$t1,0x81fa
    lui	$a6,0xc880
    lui	$a7,0xc680
    ori	$a6,$a6,0xd031
    beq	$t0,$t1,.L0d9e99b0
    ori	$a7,$a7,0xd02f
    # Line 826
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,156($a0)
    swc1	$f3,0($a2)
    sw	$a4,0($a2)
    lwc1	$f2,144($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,148($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,152($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e9924:
    # Line 828
    addu	$t9,$a2,$a3
    li	$t8,1
    # Line 830
    lui	$t3,0xc180
    # Line 828
    sb	$t8,26820($t9)
    # Line 830
    ori	$t3,$t3,0xcc19
    sw	$t3,0($a2)
    lwc1	$f14,192($a0)
    swc1	$f14,0($a2)
    lwc1	$f13,196($a0)
    swc1	$f13,0($a2)
    lwc1	$f12,200($a0)
    # Line 831
    lui	$t2,0xc380
    # Line 830
    swc1	$f12,0($a2)
    # Line 831
    ori	$t2,$t2,0xd025
    sw	$t2,0($a2)
    lwc1	$f11,48($a0)
    swc1	$f11,0($a2)
    lwc1	$f10,52($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,56($a0)
    swc1	$f9,0($a2)
    lwc1	$f8,60($a0)
    # Line 832
    lui	$t1,0x8080
    # Line 831
    swc1	$f8,0($a2)
    # Line 832
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f7,16($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,20($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,24($a0)
    swc1	$f5,0($a2)
    lwc1	$f4,28($a0)
    # Line 834
    jr	$ra
    # Line 832
    swc1	$f4,0($a2)
.L0d9e99b0:
    # Line 824
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    lwc1	$f23,368($a0)
    swc1	$f23,0($a2)
    lwc1	$f21,372($a0)
    swc1	$f21,0($a2)
    lwc1	$f19,376($a0)
    swc1	$f19,0($a2)
    swc1	$f4,0($a2)
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f18,156($a0)
    swc1	$f18,0($a2)
    sw	$a4,0($a2)
    lwc1	$f17,144($a0)
    swc1	$f17,0($a2)
    lwc1	$f16,148($a0)
    swc1	$f16,0($a2)
    lwc1	$f15,152($a0)
    swc1	$f15,0($a2)
    b	.L0d9e9924
    swc1	$f4,0($a2)
.end RGBSendClippedFmTNFast

# Function: RGBSendClippedBmFmNFast
# Declared: Line 836 (Source lines: 839-856)
# Address: 0x0d9e9a20 - 0x0d9e9c94 (Size: 628 bytes, Frame: 0)
.ent RGBSendClippedBmFmNFast
RGBSendClippedBmFmNFast:
    # Line 842
    mtc1	$zero,$f4
    lui	$a6,0xc780
    lui	$a4,0xc980
    lui	$a5,0xca80
    lui	$t1,0xcc80
    lui	$a7,0xcb80
    lui	$t0,0xcd80
    ori	$t0,$t0,0xd038
    ori	$a7,$a7,0xd036
    ori	$t1,$t1,0xd037
    lui	$a2,0x1
    lbu	$t3,184($a0)
    lui	$t2,0x2f00
    lui	$t8,0x3000
    # Line 839
    lw	$a3,4112($zero)
    # Line 842
    ori	$t8,$t8,0xc02e
    ori	$t2,$t2,0xc02e
    ori	$a5,$a5,0xd035
    movz	$t2,$t8,$t3
    sw	$t2,0($a2)
    ori	$a4,$a4,0xd032
    ori	$a6,$a6,0xd030
    lw	$t8,1416($a3)
    li	$t9,0x81fa
    lui	$t2,0xc880
    lui	$t3,0xc680
    ori	$t2,$t2,0xd031
    beq	$t8,$t9,.L0d9e9bb8
    ori	$t3,$t3,0xd02f
    # Line 847
    sw	$t3,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t2,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f8,156($a0)
    swc1	$f8,0($a2)
    sw	$a4,0($a2)
    lwc1	$f7,144($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,148($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,152($a0)
    swc1	$f5,0($a2)
    swc1	$f4,0($a2)
    # Line 848
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,172($a0)
    swc1	$f3,0($a2)
    sw	$t0,0($a2)
    lwc1	$f2,160($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,164($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,168($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e9b54:
    # Line 850
    addu	$t8,$a2,$a3
    li	$t3,1
    sb	$t3,26821($t8)
    # Line 853
    lui	$t2,0xc180
    # Line 850
    sb	$t3,26820($t8)
    # Line 853
    ori	$t2,$t2,0xcc19
    sw	$t2,0($a2)
    lwc1	$f15,192($a0)
    swc1	$f15,0($a2)
    lwc1	$f14,196($a0)
    swc1	$f14,0($a2)
    lwc1	$f13,200($a0)
    # Line 854
    lui	$t1,0x8080
    # Line 853
    swc1	$f13,0($a2)
    # Line 854
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f12,16($a0)
    swc1	$f12,0($a2)
    lwc1	$f11,20($a0)
    swc1	$f11,0($a2)
    lwc1	$f10,24($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,28($a0)
    # Line 856
    jr	$ra
    # Line 854
    swc1	$f9,0($a2)
.L0d9e9bb8:
    # Line 844
    sw	$t3,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t2,0($a2)
    lwc1	$f3,368($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,372($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,376($a0)
    swc1	$f1,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f0,156($a0)
    swc1	$f0,0($a2)
    sw	$a4,0($a2)
    lwc1	$f31,144($a0)
    swc1	$f31,0($a2)
    lwc1	$f29,148($a0)
    swc1	$f29,0($a2)
    lwc1	$f27,152($a0)
    swc1	$f27,0($a2)
    swc1	$f4,0($a2)
    # Line 845
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    lwc1	$f25,384($a0)
    swc1	$f25,0($a2)
    lwc1	$f23,388($a0)
    swc1	$f23,0($a2)
    lwc1	$f21,392($a0)
    swc1	$f21,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f19,172($a0)
    swc1	$f19,0($a2)
    sw	$t0,0($a2)
    lwc1	$f18,160($a0)
    swc1	$f18,0($a2)
    lwc1	$f17,164($a0)
    swc1	$f17,0($a2)
    lwc1	$f16,168($a0)
    swc1	$f16,0($a2)
    b	.L0d9e9b54
    swc1	$f4,0($a2)
.end RGBSendClippedBmFmNFast

# Function: RGBSendClippedBmFmTNFast
# Declared: Line 858 (Source lines: 861-878)
# Address: 0x0d9e9ca0 - 0x0d9e9f40 (Size: 672 bytes, Frame: 0)
.ent RGBSendClippedBmFmTNFast
RGBSendClippedBmFmTNFast:
    # Line 864
    mtc1	$zero,$f4
    lui	$a6,0xc780
    lui	$a4,0xc980
    lui	$a5,0xca80
    lui	$t1,0xcc80
    lui	$a7,0xcb80
    lui	$t0,0xcd80
    ori	$t0,$t0,0xd038
    ori	$a7,$a7,0xd036
    ori	$t1,$t1,0xd037
    lui	$a2,0x1
    lbu	$t3,184($a0)
    lui	$t2,0x2f00
    lui	$t8,0x3000
    # Line 861
    lw	$a3,4112($zero)
    # Line 864
    ori	$t8,$t8,0xc02e
    ori	$t2,$t2,0xc02e
    ori	$a5,$a5,0xd035
    movz	$t2,$t8,$t3
    sw	$t2,0($a2)
    ori	$a4,$a4,0xd032
    ori	$a6,$a6,0xd030
    lw	$t8,1416($a3)
    li	$t9,0x81fa
    lui	$t2,0xc880
    lui	$t3,0xc680
    ori	$t2,$t2,0xd031
    beq	$t8,$t9,.L0d9e9e64
    ori	$t3,$t3,0xd02f
    # Line 869
    sw	$t3,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t2,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f8,156($a0)
    swc1	$f8,0($a2)
    sw	$a4,0($a2)
    lwc1	$f7,144($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,148($a0)
    swc1	$f6,0($a2)
    lwc1	$f5,152($a0)
    swc1	$f5,0($a2)
    swc1	$f4,0($a2)
    # Line 870
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f3,172($a0)
    swc1	$f3,0($a2)
    sw	$t0,0($a2)
    lwc1	$f2,160($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,164($a0)
    swc1	$f1,0($a2)
    lwc1	$f0,168($a0)
    swc1	$f0,0($a2)
    swc1	$f4,0($a2)
.L0d9e9dd4:
    # Line 872
    addu	$t9,$a2,$a3
    li	$t8,1
    sb	$t8,26821($t9)
    # Line 874
    lui	$t3,0xc180
    # Line 872
    sb	$t8,26820($t9)
    # Line 874
    ori	$t3,$t3,0xcc19
    sw	$t3,0($a2)
    lwc1	$f19,192($a0)
    swc1	$f19,0($a2)
    lwc1	$f18,196($a0)
    swc1	$f18,0($a2)
    lwc1	$f17,200($a0)
    # Line 875
    lui	$t2,0xc380
    # Line 874
    swc1	$f17,0($a2)
    # Line 875
    ori	$t2,$t2,0xd025
    sw	$t2,0($a2)
    lwc1	$f16,48($a0)
    swc1	$f16,0($a2)
    lwc1	$f15,52($a0)
    swc1	$f15,0($a2)
    lwc1	$f14,56($a0)
    swc1	$f14,0($a2)
    lwc1	$f13,60($a0)
    # Line 876
    lui	$t1,0x8080
    # Line 875
    swc1	$f13,0($a2)
    # Line 876
    ori	$t1,$t1,0xd005
    sw	$t1,0($a2)
    lwc1	$f12,16($a0)
    swc1	$f12,0($a2)
    lwc1	$f11,20($a0)
    swc1	$f11,0($a2)
    lwc1	$f10,24($a0)
    swc1	$f10,0($a2)
    lwc1	$f9,28($a0)
    # Line 878
    jr	$ra
    # Line 876
    swc1	$f9,0($a2)
.L0d9e9e64:
    # Line 866
    sw	$t3,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t2,0($a2)
    lwc1	$f8,368($a0)
    swc1	$f8,0($a2)
    lwc1	$f7,372($a0)
    swc1	$f7,0($a2)
    lwc1	$f6,376($a0)
    swc1	$f6,0($a2)
    swc1	$f4,0($a2)
    sw	$a6,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f5,156($a0)
    swc1	$f5,0($a2)
    sw	$a4,0($a2)
    lwc1	$f3,144($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,148($a0)
    swc1	$f2,0($a2)
    lwc1	$f1,152($a0)
    swc1	$f1,0($a2)
    swc1	$f4,0($a2)
    # Line 867
    sw	$a5,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    sw	$t1,0($a2)
    lwc1	$f0,384($a0)
    swc1	$f0,0($a2)
    lwc1	$f31,388($a0)
    swc1	$f31,0($a2)
    lwc1	$f29,392($a0)
    swc1	$f29,0($a2)
    swc1	$f4,0($a2)
    sw	$a7,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    swc1	$f4,0($a2)
    lwc1	$f27,172($a0)
    swc1	$f27,0($a2)
    sw	$t0,0($a2)
    lwc1	$f25,160($a0)
    swc1	$f25,0($a2)
    lwc1	$f23,164($a0)
    swc1	$f23,0($a2)
    lwc1	$f21,168($a0)
    swc1	$f21,0($a2)
    b	.L0d9e9dd4
    swc1	$f4,0($a2)
.end RGBSendClippedBmFmTNFast

# Function: CISendFc
# Declared: Line 917 (Source lines: 922-926)
# Address: 0x0d9e9f40 - 0x0d9e9fa4 (Size: 100 bytes, Frame: 0)
.ent CISendFc
CISendFc:
    # Line 922
    lui	$at,0x1
    lbu	$a2,184($a0)
    lui	$a1,0x2f00
    lui	$a3,0x3000
    ori	$a3,$a3,0xc02e
    ori	$a1,$a1,0xc02e
    # Line 923
    lui	$v1,0xc580
    # Line 922
    movz	$a1,$a3,$a2
    sw	$a1,0($at)
    # Line 923
    ori	$v1,$v1,0xc407
    sw	$v1,0($at)
    lwc1	$f4,144($a0)
    # Line 924
    lui	$v0,0x8080
    # Line 923
    swc1	$f4,0($at)
    # Line 924
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 926
    jr	$ra
    # Line 924
    swc1	$f0,0($at)
.end CISendFc

# Function: CISendUnclippedFmN
# Declared: Line 928 (Source lines: 929-947)
# Address: 0x0d9e9fb0 - 0x0d9ea130 (Size: 384 bytes, Frame: 48)
.ent CISendUnclippedFmN
CISendUnclippedFmN:
    # Line 936
    lui	$t8,0x1
    # Line 929
    addiu	$sp,$sp,-48
    lbu	$at,400($a0)
    sd	$s1,24($sp)
    move	$s1,$a0
    lui	$v0,0x11
    sd	$s0,32($sp)
    # Line 938
    addiu	$s0,$a0,208
    # Line 929
    addiu	$v0,$v0,-6688
    sd	$gp,16($sp)
    beqz	$at,.L0d9ea128
    addu	$gp,$t9,$v0
    # Line 936
    ori	$t8,$t8,0x681c
    lw	$s0,4112($zero)
    sd	$ra,40($sp)
    addu	$s0,$s0,$t8
.L0d9e9ff0:
    # Line 940
    lwc1	$f3,16($s0)
    swc1	$f3,0($sp)
    lwc1	$f2,20($s0)
    swc1	$f2,4($sp)
    lwc1	$f1,24($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,8($sp)
    lwc1	$f0,28($s0)
    addiu	$a2,$sp,0
    li	$a1,4609
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,12($sp)
    lwc1	$f7,32($s0)
    swc1	$f7,0($sp)
    lwc1	$f6,36($s0)
    swc1	$f6,4($sp)
    lwc1	$f5,40($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f5,8($sp)
    lwc1	$f4,44($s0)
    addiu	$a2,$sp,0
    li	$a1,4610
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f4,12($sp)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    lwc1	$f8,64($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f8,0($sp)
    lwc1	$f11,68($s0)
    swc1	$f11,0($sp)
    lwc1	$f10,76($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f10,4($sp)
    lwc1	$f9,72($s0)
    addiu	$a2,$sp,0
    li	$a1,5635
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f9,8($sp)
    # Line 943
    lui	$t9,0x1
    lbu	$a0,184($s1)
    lui	$v1,0x2f00
    lui	$a1,0x3000
    ori	$a1,$a1,0xc02e
    ori	$v1,$v1,0xc02e
    # Line 944
    lui	$v0,0xc180
    # Line 943
    movz	$v1,$a1,$a0
    sw	$v1,0($t9)
    # Line 944
    ori	$v0,$v0,0xcc19
    sw	$v0,0($t9)
    lwc1	$f18,192($s1)
    swc1	$f18,0($t9)
    lwc1	$f17,196($s1)
    swc1	$f17,0($t9)
    lwc1	$f16,200($s1)
    # Line 945
    lui	$at,0x8080
    # Line 944
    swc1	$f16,0($t9)
    # Line 945
    ori	$at,$at,0xd005
    sw	$at,0($t9)
    lwc1	$f15,16($s1)
    ld	$s0,32($sp)
    swc1	$f15,0($t9)
    lwc1	$f14,20($s1)
    # Line 947
    ld	$gp,16($sp)
    # Line 945
    swc1	$f14,0($t9)
    lwc1	$f13,24($s1)
    ld	$ra,40($sp)
    swc1	$f13,0($t9)
    lwc1	$f12,28($s1)
    # Line 947
    ld	$s1,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 945
    swc1	$f12,0($t9)
.L0d9ea128:
    b	.L0d9e9ff0
    sd	$ra,40($sp)
.end CISendUnclippedFmN

# Function: CISendUnclippedBmFmN
# Declared: Line 949 (Source lines: 950-971)
# Address: 0x0d9ea130 - 0x0d9ea370 (Size: 576 bytes, Frame: 192)
.ent CISendUnclippedBmFmN
CISendUnclippedBmFmN:
    # Line 954
    lbu	$at,400($a0)
    # Line 950
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 954
    lw	$s0,4112($zero)
    # Line 950
    sd	$s5,48($sp)
    # Line 957
    lui	$s5,0x1
    # Line 950
    sd	$s1,16($sp)
    # Line 957
    ori	$s1,$s5,0x681c
    # Line 950
    sd	$ra,32($sp)
    # Line 960
    addiu	$ra,$a0,208
    # Line 957
    addu	$s1,$s0,$s1
    movz	$s1,$ra,$at
    # Line 963
    lwc1	$f3,16($s1)
    swc1	$f3,0($sp)
    lwc1	$f2,20($s1)
    sd	$gp,40($sp)
    # Line 950
    lui	$t8,0x11
    addiu	$t8,$t8,-7072
    # Line 963
    swc1	$f2,4($sp)
    # Line 950
    addu	$gp,$t9,$t8
    # Line 963
    lwc1	$f1,24($s1)
    li	$a1,4609
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    # Line 961
    addiu	$v0,$a0,288
    # Line 958
    ori	$s5,$s5,0x686c
    # Line 963
    swc1	$f1,8($sp)
    addiu	$a2,$sp,0
    # Line 958
    addu	$s0,$s0,$s5
    # Line 963
    lwc1	$f0,28($s1)
    # Line 950
    move	$s5,$a0
    movz	$s0,$v0,$at
    # Line 963
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,12($sp)
    lwc1	$f7,32($s1)
    swc1	$f7,0($sp)
    lwc1	$f6,36($s1)
    swc1	$f6,4($sp)
    lwc1	$f5,40($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f5,8($sp)
    lwc1	$f4,44($s1)
    addiu	$a2,$sp,0
    li	$a1,4610
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f4,12($sp)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    lwc1	$f8,64($s1)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f8,0($sp)
    lwc1	$f11,68($s1)
    swc1	$f11,0($sp)
    lwc1	$f10,76($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f10,4($sp)
    lwc1	$f9,72($s1)
    addiu	$a2,$sp,0
    li	$a1,5635
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f9,8($sp)
    # Line 964
    lwc1	$f15,16($s0)
    swc1	$f15,0($sp)
    lwc1	$f14,20($s0)
    swc1	$f14,4($sp)
    lwc1	$f13,24($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f13,8($sp)
    lwc1	$f12,28($s0)
    ld	$s1,16($sp)
    addiu	$a2,$sp,0
    li	$a1,4609
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f12,12($sp)
    lwc1	$f19,32($s0)
    swc1	$f19,0($sp)
    lwc1	$f18,36($s0)
    swc1	$f18,4($sp)
    lwc1	$f17,40($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f17,8($sp)
    lwc1	$f16,44($s0)
    addiu	$a2,$sp,0
    li	$a1,4610
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f16,12($sp)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    lwc1	$f21,64($s0)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f21,0($sp)
    lwc1	$f27,68($s0)
    swc1	$f27,0($sp)
    lwc1	$f25,76($s0)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f25,4($sp)
    lwc1	$f23,72($s0)
    addiu	$a2,$sp,0
    li	$a1,5635
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f23,8($sp)
    # Line 967
    lui	$t8,0x1
    lbu	$v1,184($s5)
    lui	$v0,0x2f00
    lui	$a0,0x3000
    ori	$a0,$a0,0xc02e
    ori	$v0,$v0,0xc02e
    # Line 968
    lui	$at,0xc180
    # Line 967
    movz	$v0,$a0,$v1
    sw	$v0,0($t8)
    # Line 968
    ori	$at,$at,0xcc19
    sw	$at,0($t8)
    lwc1	$f4,192($s5)
    swc1	$f4,0($t8)
    lwc1	$f3,196($s5)
    swc1	$f3,0($t8)
    lwc1	$f2,200($s5)
    # Line 969
    lui	$t9,0x8080
    # Line 968
    swc1	$f2,0($t8)
    # Line 969
    ori	$t9,$t9,0xd005
    sw	$t9,0($t8)
    lwc1	$f1,16($s5)
    ld	$s0,24($sp)
    swc1	$f1,0($t8)
    lwc1	$f0,20($s5)
    # Line 971
    ld	$gp,40($sp)
    # Line 969
    swc1	$f0,0($t8)
    lwc1	$f31,24($s5)
    ld	$ra,32($sp)
    swc1	$f31,0($t8)
    lwc1	$f29,28($s5)
    # Line 971
    ld	$s5,48($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 969
    swc1	$f29,0($t8)
.end CISendUnclippedBmFmN

# Function: CISendClippedFmN
# Declared: Line 973 (Source lines: 978-983)
# Address: 0x0d9ea370 - 0x0d9ea45c (Size: 236 bytes, Frame: 0)
.ent CISendClippedFmN
CISendClippedFmN:
    # Line 978
    lui	$at,0x1
    lbu	$a6,184($a0)
    lui	$a5,0x2f00
    lui	$a7,0x3000
    ori	$a7,$a7,0xc02e
    ori	$a5,$a5,0xc02e
    # Line 979
    lui	$a4,0xc680
    # Line 978
    movz	$a5,$a7,$a6
    sw	$a5,0($at)
    # Line 979
    ori	$a4,$a4,0xd02f
    sw	$a4,0($at)
    lwc1	$f8,144($a0)
    mtc1	$zero,$f7
    swc1	$f8,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a3,0xc780
    swc1	$f7,0($at)
    ori	$a3,$a3,0xd030
    sw	$a3,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a2,0xc880
    swc1	$f7,0($at)
    ori	$a2,$a2,0xd031
    sw	$a2,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a1,0xc980
    swc1	$f7,0($at)
    ori	$a1,$a1,0xd032
    sw	$a1,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    # Line 980
    lui	$v1,0xc180
    # Line 979
    swc1	$f7,0($at)
    # Line 980
    ori	$v1,$v1,0xcc19
    sw	$v1,0($at)
    lwc1	$f6,192($a0)
    swc1	$f6,0($at)
    lwc1	$f5,196($a0)
    swc1	$f5,0($at)
    lwc1	$f4,200($a0)
    # Line 981
    lui	$v0,0x8080
    # Line 980
    swc1	$f4,0($at)
    # Line 981
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 983
    jr	$ra
    # Line 981
    swc1	$f0,0($at)
.end CISendClippedFmN

# Function: CISendClippedBmFmN
# Declared: Line 985 (Source lines: 990-996)
# Address: 0x0d9ea460 - 0x0d9ea5c0 (Size: 352 bytes, Frame: 0)
.ent CISendClippedBmFmN
CISendClippedBmFmN:
    # Line 990
    lui	$at,0x1
    lbu	$t2,184($a0)
    lui	$t1,0x2f00
    lui	$t3,0x3000
    ori	$t3,$t3,0xc02e
    ori	$t1,$t1,0xc02e
    # Line 991
    lui	$t0,0xc680
    # Line 990
    movz	$t1,$t3,$t2
    sw	$t1,0($at)
    # Line 991
    ori	$t0,$t0,0xd02f
    sw	$t0,0($at)
    lwc1	$f9,144($a0)
    mtc1	$zero,$f7
    swc1	$f9,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a7,0xc780
    swc1	$f7,0($at)
    ori	$a7,$a7,0xd030
    sw	$a7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a6,0xc880
    swc1	$f7,0($at)
    ori	$a6,$a6,0xd031
    sw	$a6,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a5,0xc980
    swc1	$f7,0($at)
    ori	$a5,$a5,0xd032
    sw	$a5,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    # Line 992
    lui	$a4,0xca80
    # Line 991
    swc1	$f7,0($at)
    # Line 992
    ori	$a4,$a4,0xd035
    sw	$a4,0($at)
    lwc1	$f8,160($a0)
    swc1	$f8,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a3,0xcb80
    swc1	$f7,0($at)
    ori	$a3,$a3,0xd036
    sw	$a3,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a2,0xcc80
    swc1	$f7,0($at)
    ori	$a2,$a2,0xd037
    sw	$a2,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    lui	$a1,0xcd80
    swc1	$f7,0($at)
    ori	$a1,$a1,0xd038
    sw	$a1,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    swc1	$f7,0($at)
    # Line 993
    lui	$v1,0xc180
    # Line 992
    swc1	$f7,0($at)
    # Line 993
    ori	$v1,$v1,0xcc19
    sw	$v1,0($at)
    lwc1	$f6,192($a0)
    swc1	$f6,0($at)
    lwc1	$f5,196($a0)
    swc1	$f5,0($at)
    lwc1	$f4,200($a0)
    # Line 994
    lui	$v0,0x8080
    # Line 993
    swc1	$f4,0($at)
    # Line 994
    ori	$v0,$v0,0xd005
    sw	$v0,0($at)
    lwc1	$f3,16($a0)
    swc1	$f3,0($at)
    lwc1	$f2,20($a0)
    swc1	$f2,0($at)
    lwc1	$f1,24($a0)
    swc1	$f1,0($at)
    lwc1	$f0,28($a0)
    # Line 996
    jr	$ra
    # Line 994
    swc1	$f0,0($at)
.end CISendClippedBmFmN

# Function: __glOdysseySoftClipValidateVertex
# Declared: Line 1023 (Source lines: 1025-1040)
# Address: 0x0d9ea5c0 - 0x0d9ea628 (Size: 104 bytes, Frame: 16)
.ent __glOdysseySoftClipValidateVertex
__glOdysseySoftClipValidateVertex:
    # Line 1025
    lw	$at,0($a1)
    nor	$at,$at,$zero
    addiu	$sp,$sp,-16
    and	$at,$a2,$at
    lui	$v0,0x11
    andi	$at,$at,0x8
    sd	$ra,8($sp)
    addiu	$v0,$v0,-8240
    sd	$gp,0($sp)
    beqz	$at,.L0d9ea60c
    addu	$gp,$t9,$v0
    # Line 1036
    lwc1	$f0,192($a1)
    lwc1	$f1,196($a1)
    lwc1	$f3,204($a1)
    lwc1	$f2,200($a1)
    swc1	$f3,44($a1)
    swc1	$f2,40($a1)
    swc1	$f1,36($a1)
    swc1	$f0,32($a1)
.L0d9ea60c:
    # Line 1039
    # lw $t9, -17720($gp) # &__glValidateVertex4
    jal	__glValidateVertex4
    nop
    ld	$ra,8($sp)
    # Line 1040
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySoftClipValidateVertex

# Function: __glOdysseySoftClipPickVertexProcs
# Declared: Line 1053 (Source lines: 1054-1196)
# Address: 0x0d9ea630 - 0x0d9ea83c (Size: 524 bytes, Frame: 0)
.globl __glOdysseySoftClipPickVertexProcs
.ent __glOdysseySoftClipPickVertexProcs
__glOdysseySoftClipPickVertexProcs:
    # Line 1062
    lbu	$a4,3220($a0)
    # Line 1054
    lui	$v0,0x11
    # Line 1069
    li	$t3,9218
    # Line 1056
    lw	$a3,1792($a0)
    # Line 1054
    addiu	$v0,$v0,-8352
    # Line 1057
    lw	$a7,1796($a0)
    # Line 1062
    beqz	$a4,.L0d9ea774
    # Line 1054
    addu	$at,$t9,$v0
    # Line 1062
    lui	$t2,0x2
    dsll32	$v1,$a3,0xf
    bgez	$v1,.L0d9ea7dc
    dsll32	$a5,$a3,0xe
    li	$t0,1
.L0d9ea664:
    # Line 1069
    dsll32	$a1,$a3,0xd
    li	$a5,9218
    bgez	$a1,.L0d9ea680
    dsll32	$a6,$a3,0xc
    lw	$a2,1984($a0)
    beq	$a2,$a5,.L0d9ea76c
    nop
.L0d9ea680:
    bgez	$a6,.L0d9ea694
    move	$t1,$zero
    lw	$t1,2108($a0)
    beq	$t1,$t3,.L0d9ea76c
.L0d9ea690:
    move	$t1,$zero
.L0d9ea694:
    # Line 1085
    addu	$a5,$t2,$a0
    # Line 1069
    la	$t8,__glOdysseyClipCheck
    # Line 1157
    li	$t9,17
    # Line 1085
    li	$v0,17
    sw	$t8,11988($a0)
    andi	$a6,$a3,0x40
    li	$a3,1
    # Line 1084
    sw	$t8,11984($a0)
    # Line 1140
    andi	$v1,$t1,0xff
    # Line 1085
    beqz	$a4,.L0d9ea780
    # Line 1083
    sw	$t8,11980($a0)
    # Line 1085
    beqz	$a6,.L0d9ea7f8
    li	$a4,49
    lbu	$t9,1413($a0)
    movz	$a4,$v0,$t9
.L0d9ea6d0:
    # Line 1130
    ori	$t9,$a4,0x1
    # Line 1129
    ori	$t8,$a3,0x1
    # Line 1126
    andi	$t2,$a7,0x1000
    # Line 1130
    andi	$v0,$t0,0xff
    # Line 1126
    lui	$a6,0x1
    beqz	$t2,.L0d9ea6f8
    addu	$a6,$a0,$a6
    lw	$t3,25724($a6)
    movn	$a4,$t9,$t3
    movn	$a3,$t8,$t3
.L0d9ea6f8:
    # Line 1139
    ori	$a1,$a3,0x2
    # Line 1130
    beqz	$v0,.L0d9ea714
    # Line 1140
    ori	$a2,$a4,0x2
    # Line 1144
    ori	$a4,$a2,0x1
    # Line 1143
    ori	$a3,$a1,0x1
    movz	$a4,$a2,$v1
    movz	$a3,$a1,$v1
.L0d9ea714:
    # Line 1144
    la	$t0,sub_0daf0000
    # Line 1148
    sll	$t1,$a3,0x2
    # Line 1144
    addiu	$t0,$t0,-14016
    # Line 1148
    addu	$t1,$t0,$t1
    lw	$t1,0($t1)
    sw	$t1,11976($a0)
    # Line 1149
    sw	$a3,26812($a6)
    # Line 1150
    sw	$a4,26816($a6)
    lbu	$a7,-25118($a5)
    # Line 1185
    la	$t1,sub_0d9f0000
    addiu	$t1,$t1,-23104
    # Line 1150
    beqz	$a7,.L0d9ea804
    sll	$a7,$a4,0x2
    # Line 1152
    addu	$t2,$a7,$t0
    lw	$t3,576($t2)
    # Line 1153
    lw	$t2,832($t2)
    # Line 1152
    sw	$t3,-24940($a5)
    # Line 1153
    sw	$t2,-24936($a5)
    # Line 1195
    sw	$t1,12040($a0)
    # Line 1194
    sw	$t1,12036($a0)
    # Line 1196
    jr	$ra
    # Line 1193
    sw	$t1,12032($a0)
.L0d9ea76c:
    # Line 1069
    b	.L0d9ea694
    li	$t1,1
.L0d9ea774:
    lui	$t2,0x2
.L0d9ea778:
    b	.L0d9ea690
    # Line 1062
    move	$t0,$zero
.L0d9ea780:
    # Line 1157
    beqz	$a6,.L0d9ea830
    # Line 1180
    la	$a2,sub_0daf0000
    # Line 1157
    li	$a3,1
    lbu	$t8,1413($a0)
    li	$a4,49
    movz	$a4,$t9,$t8
.L0d9ea798:
    # Line 1180
    addiu	$a2,$a2,-14016
    # Line 1184
    sll	$v1,$a4,0x2
    # Line 1185
    la	$v0,sub_0d9f0000
    # Line 1184
    addu	$v1,$v1,$a2
    # Line 1183
    sll	$a3,$a3,0x2
    # Line 1184
    lw	$a1,1088($v1)
    # Line 1183
    addu	$a2,$a2,$a3
    # Line 1185
    lw	$v1,1344($v1)
    # Line 1183
    lw	$a2,32($a2)
    sw	$a2,11976($a0)
    # Line 1185
    sw	$v1,-24936($a5)
    # Line 1184
    sw	$a1,-24940($a5)
    # Line 1185
    addiu	$v0,$v0,-23104
    # Line 1195
    sw	$v0,12040($a0)
    # Line 1194
    sw	$v0,12036($a0)
    # Line 1196
    jr	$ra
    # Line 1193
    sw	$v0,12032($a0)
.L0d9ea7dc:
    # Line 1062
    dsll32	$a6,$a3,0x1
    bltz	$a5,.L0d9ea664
    li	$t0,1
    bltz	$a6,.L0d9ea664
    li	$t0,1
    b	.L0d9ea778
    nop
.L0d9ea7f8:
    # Line 1120
    li	$a4,4
    b	.L0d9ea6d0
    li	$a3,4
.L0d9ea804:
    # Line 1185
    la	$t1,sub_0d9f0000
    # Line 1156
    addu	$t2,$a7,$t0
    lw	$t3,64($t2)
    # Line 1157
    lw	$t2,320($t2)
    sw	$t2,-24936($a5)
    # Line 1156
    sw	$t3,-24940($a5)
    # Line 1185
    addiu	$a7,$t1,-23104
    # Line 1195
    sw	$a7,12040($a0)
    # Line 1194
    sw	$a7,12036($a0)
    # Line 1196
    jr	$ra
    # Line 1193
    sw	$a7,12032($a0)
.L0d9ea830:
    # Line 1180
    li	$a4,4
    b	.L0d9ea798
    li	$a3,4
.end __glOdysseySoftClipPickVertexProcs

# Function: __glOdysseySoftClipRenderTriangleFast
# Declared: Line 1290 (Source lines: 1292-1353)
# Address: 0x0d9ea840 - 0x0d9eb74c (Size: 3852 bytes, Frame: 144)
.globl __glOdysseySoftClipRenderTriangleFast
.ent __glOdysseySoftClipRenderTriangleFast
__glOdysseySoftClipRenderTriangleFast:
    # Line 1292
    addiu	$sp,$sp,-144
    sd	$s7,104($sp)
    sd	$s6,112($sp)
    sd	$ra,120($sp)
    sd	$s2,64($sp)
    sd	$s4,72($sp)
    sd	$s3,88($sp)
    sd	$s5,48($sp)
    # Line 1311
    li	$v1,4
    # Line 1292
    sd	$s8,96($sp)
    move	$s3,$a3
    move	$s4,$a2
    # Line 1302
    lw	$s8,1392($a0)
    # Line 1292
    move	$s2,$a1
    sd	$s0,56($sp)
    # Line 1297
    lui	$s0,0x1
    # Line 1311
    ori	$a1,$s0,0x4400
    # Line 1292
    sd	$s1,40($sp)
    # Line 1297
    addu	$s1,$s0,$a0
    # Line 1302
    xori	$s8,$s8,0x1d01
    # Line 1292
    lui	$at,0x11
    # Line 1297
    lw	$v0,26816($s1)
    # Line 1311
    sw	$a1,0($s0)
    # Line 1302
    sltiu	$s8,$s8,1
    # Line 1292
    addiu	$at,$at,-8880
    sd	$gp,80($sp)
    addu	$gp,$t9,$at
    # Line 1301
    andi	$s5,$v0,0x2
    # Line 1311
    sw	$v1,0($s0)
    # Line 1301
    andi	$s5,$s5,0xff
    # Line 1297
    andi	$at,$v0,0x10
    andi	$at,$at,0xff
    sd	$at,8($sp)
    # Line 1300
    andi	$a0,$v0,0x4
    andi	$a0,$a0,0xff
    sd	$a0,16($sp)
    # Line 1299
    andi	$a0,$v0,0x1
    # Line 1298
    andi	$v0,$v0,0x20
    # Line 1299
    andi	$a0,$a0,0xff
    sd	$a0,24($sp)
    # Line 1298
    andi	$v0,$v0,0xff
    # Line 1311
    beqz	$at,.L0d9ead2c
    sd	$v0,32($sp)
    lbu	$v0,400($s2)
    beqz	$v0,.L0d9eb3e4
    li	$a2,1
    lbu	$v1,26820($s1)
    beqz	$v1,.L0d9ea9d4
    # Line 1315
    lui	$a3,0xc680
    ori	$a3,$a3,0xd02f
    sw	$a3,0($s0)
    lwc1	$f16,26652($s1)
    swc1	$f16,0($s0)
    lwc1	$f15,26656($s1)
    swc1	$f15,0($s0)
    lwc1	$f14,26660($s1)
    swc1	$f14,0($s0)
    lwc1	$f13,26664($s1)
    lui	$a2,0xc880
    swc1	$f13,0($s0)
    ori	$a2,$a2,0xd031
    sw	$a2,0($s0)
    lwc1	$f12,26684($s1)
    swc1	$f12,0($s0)
    lwc1	$f11,26688($s1)
    swc1	$f11,0($s0)
    lwc1	$f10,26692($s1)
    swc1	$f10,0($s0)
    lwc1	$f9,26696($s1)
    lui	$a1,0xc780
    swc1	$f9,0($s0)
    ori	$a1,$a1,0xd030
    sw	$a1,0($s0)
    lwc1	$f8,26668($s1)
    swc1	$f8,0($s0)
    lwc1	$f7,26672($s1)
    swc1	$f7,0($s0)
    lwc1	$f6,26676($s1)
    swc1	$f6,0($s0)
    lwc1	$f5,26680($s1)
    lui	$a0,0xc980
    swc1	$f5,0($s0)
    ori	$a0,$a0,0xd032
    sw	$a0,0($s0)
    lwc1	$f4,26700($s1)
    swc1	$f4,0($s0)
    lwc1	$f3,26704($s1)
    swc1	$f3,0($s0)
    lwc1	$f2,26708($s1)
    swc1	$f2,0($s0)
    lwc1	$f1,26712($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f1,0($s0)
    lwc1	$f0,26716($s1)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f0,0($sp)
    li	$a2,1
    sb	$zero,26820($s1)
.L0d9ea9d4:
    ld	$a4,32($sp)
    beqz	$a4,.L0d9eaac8
    nop
    lbu	$a5,400($s2)
    beqz	$a5,.L0d9eb4bc
    # Line 1316
    lui	$t3,0xca80
    # Line 1315
    lbu	$a6,26821($s1)
    beqz	$a6,.L0d9eaac8
    # Line 1316
    lui	$t2,0xca80
    ori	$t2,$t2,0xd035
    sw	$t2,0($s0)
    lwc1	$f7,26732($s1)
    swc1	$f7,0($s0)
    lwc1	$f6,26736($s1)
    swc1	$f6,0($s0)
    lwc1	$f5,26740($s1)
    swc1	$f5,0($s0)
    lwc1	$f4,26744($s1)
    lui	$t1,0xcc80
    swc1	$f4,0($s0)
    ori	$t1,$t1,0xd037
    sw	$t1,0($s0)
    lwc1	$f3,26764($s1)
    swc1	$f3,0($s0)
    lwc1	$f2,26768($s1)
    swc1	$f2,0($s0)
    lwc1	$f1,26772($s1)
    swc1	$f1,0($s0)
    lwc1	$f0,26776($s1)
    lui	$t0,0xcb80
    swc1	$f0,0($s0)
    ori	$t0,$t0,0xd036
    sw	$t0,0($s0)
    lwc1	$f31,26748($s1)
    swc1	$f31,0($s0)
    lwc1	$f29,26752($s1)
    swc1	$f29,0($s0)
    lwc1	$f27,26756($s1)
    swc1	$f27,0($s0)
    lwc1	$f25,26760($s1)
    lui	$a7,0xcd80
    swc1	$f25,0($s0)
    ori	$a7,$a7,0xd038
    sw	$a7,0($s0)
    lwc1	$f23,26780($s1)
    swc1	$f23,0($s0)
    lwc1	$f21,26784($s1)
    swc1	$f21,0($s0)
    lwc1	$f19,26788($s1)
    swc1	$f19,0($s0)
    lwc1	$f18,26792($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f18,0($s0)
    lwc1	$f17,26796($s1)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f17,0($sp)
    li	$a2,1
    sb	$zero,26821($s1)
.L0d9eaac8:
    # Line 1317
    lbu	$t9,184($s2)
    lui	$s6,0x3000
    lui	$a1,0x2f00
    ld	$t8,24($sp)
    ori	$s6,$s6,0xc02e
    ori	$a1,$a1,0xc02e
    move	$t3,$s6
    movn	$t3,$a1,$t9
    beqz	$t8,.L0d9ead10
    sw	$t3,0($s0)
    # Line 1318
    lui	$t9,0xc180
    ori	$t9,$t9,0xcc19
    sw	$t9,0($s0)
    lwc1	$f10,192($s2)
    swc1	$f10,0($s0)
    lwc1	$f9,196($s2)
    ld	$t8,16($sp)
    swc1	$f9,0($s0)
    lwc1	$f8,200($s2)
    beqz	$t8,.L0d9ead1c
    swc1	$f8,0($s0)
    # Line 1319
    lui	$ra,0xc580
.L0d9eab20:
    ori	$ra,$ra,0xd015
    sw	$ra,0($s0)
    lwc1	$f14,144($s2)
    swc1	$f14,0($s0)
    lwc1	$f13,148($s2)
    swc1	$f13,0($s0)
    lwc1	$f12,152($s2)
    swc1	$f12,0($s0)
    lwc1	$f11,156($s2)
    beqz	$s5,.L0d9eab78
    swc1	$f11,0($s0)
    # Line 1320
    lui	$at,0xc380
.L0d9eab50:
    ori	$at,$at,0xd025
    sw	$at,0($s0)
    lwc1	$f18,48($s2)
    swc1	$f18,0($s0)
    lwc1	$f17,52($s2)
    swc1	$f17,0($s0)
    lwc1	$f16,56($s2)
    swc1	$f16,0($s0)
    lwc1	$f15,60($s2)
    swc1	$f15,0($s0)
.L0d9eab78:
    # Line 1321
    lui	$s7,0x8080
.L0d9eab7c:
    ori	$s7,$s7,0xd005
    sw	$s7,0($s0)
    lwc1	$f25,16($s2)
    swc1	$f25,0($s0)
    lwc1	$f23,20($s2)
    swc1	$f23,0($s0)
    lwc1	$f21,24($s2)
    swc1	$f21,0($s0)
    lwc1	$f19,28($s2)
    bnez	$s8,.L0d9ead34
    swc1	$f19,0($s0)
.L0d9eaba8:
    # Line 1330
    lbu	$t9,184($s4)
.L0d9eabac:
    move	$t8,$s6
    movn	$t8,$a1,$t9
    beqz	$s5,.L0d9eabe8
    sw	$t8,0($s0)
    # Line 1331
    lui	$ra,0xc380
    ori	$ra,$ra,0xd025
    sw	$ra,0($s0)
    lwc1	$f0,48($s4)
    swc1	$f0,0($s0)
    lwc1	$f31,52($s4)
    swc1	$f31,0($s0)
    lwc1	$f29,56($s4)
    swc1	$f29,0($s0)
    lwc1	$f27,60($s4)
    swc1	$f27,0($s0)
.L0d9eabe8:
    # Line 1332
    sw	$s7,0($s0)
    lwc1	$f4,16($s4)
    swc1	$f4,0($s0)
    lwc1	$f3,20($s4)
    swc1	$f3,0($s0)
    lwc1	$f2,24($s4)
    swc1	$f2,0($s0)
    lwc1	$f1,28($s4)
    bnez	$s8,.L0d9eb08c
    swc1	$f1,0($s0)
.L0d9eac10:
    # Line 1341
    lbu	$at,184($s3)
.L0d9eac14:
    movz	$a1,$s6,$at
    beqz	$s5,.L0d9eac4c
    sw	$a1,0($s0)
    # Line 1342
    lui	$v0,0xc380
    ori	$v0,$v0,0xd025
    sw	$v0,0($s0)
    lwc1	$f8,48($s3)
    swc1	$f8,0($s0)
    lwc1	$f7,52($s3)
    swc1	$f7,0($s0)
    lwc1	$f6,56($s3)
    swc1	$f6,0($s0)
    lwc1	$f5,60($s3)
    swc1	$f5,0($s0)
.L0d9eac4c:
    # Line 1343
    sw	$s7,0($s0)
    lwc1	$f12,16($s3)
    swc1	$f12,0($s0)
    lwc1	$f11,20($s3)
    swc1	$f11,0($s0)
    lwc1	$f10,24($s3)
    swc1	$f10,0($s0)
    lwc1	$f9,28($s3)
    # Line 1351
    lui	$a1,0x1
    # Line 1343
    swc1	$f9,0($s0)
    # Line 1351
    ori	$a0,$a1,0x4001
    sw	$a0,0($s0)
    lw	$v1,-26892($s1)
    beqz	$v1,.L0d9eacdc
    ld	$s7,104($sp)
    ld	$s6,112($sp)
    ld	$s7,104($sp)
    # Line 1353
    ld	$gp,80($sp)
    # Line 1351
    ori	$a4,$a1,0x443
    sw	$a4,0($s0)
    li	$a3,250
    sw	$a3,0($s0)
    ori	$a1,$a1,0x46
    sw	$a1,0($s0)
    sw	$a1,0($s0)
    # Line 1353
    ld	$s0,56($sp)
    # Line 1351
    sw	$a2,-26576($s1)
    # Line 1353
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$s3,88($sp)
    ld	$ra,120($sp)
    ld	$s4,72($sp)
    ld	$s5,48($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9eacdc:
    ld	$s6,112($sp)
    ld	$gp,80($sp)
    ld	$s0,56($sp)
    # Line 1351
    sw	$a2,-26576($s1)
    # Line 1353
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$s3,88($sp)
    ld	$ra,120($sp)
    ld	$s4,72($sp)
    ld	$s5,48($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9ead10:
    # Line 1318
    ld	$a5,16($sp)
    bnez	$a5,.L0d9eab20
    # Line 1319
    lui	$ra,0xc580
.L0d9ead1c:
    bnez	$s5,.L0d9eab50
    # Line 1320
    lui	$at,0xc380
    b	.L0d9eab7c
    # Line 1321
    lui	$s7,0x8080
.L0d9ead2c:
    b	.L0d9ea9d4
    # Line 1315
    li	$a2,1
.L0d9ead34:
    # Line 1321
    ld	$a6,8($sp)
    beqz	$a6,.L0d9eae34
    # Line 1325
    ld	$t9,32($sp)
    # Line 1321
    lbu	$a7,400($s4)
    beqz	$a7,.L0d9eb590
    # Line 1325
    lui	$at,0xc680
    # Line 1321
    lbu	$t0,26820($s1)
    beqz	$t0,.L0d9eae30
    # Line 1325
    lui	$t8,0xc680
    ori	$t8,$t8,0xd02f
    sw	$t8,0($s0)
    lwc1	$f3,26652($s1)
    swc1	$f3,0($s0)
    lwc1	$f2,26656($s1)
    swc1	$f2,0($s0)
    lwc1	$f1,26660($s1)
    swc1	$f1,0($s0)
    lwc1	$f0,26664($s1)
    lui	$t3,0xc880
    swc1	$f0,0($s0)
    ori	$t3,$t3,0xd031
    sw	$t3,0($s0)
    lwc1	$f31,26684($s1)
    swc1	$f31,0($s0)
    lwc1	$f29,26688($s1)
    swc1	$f29,0($s0)
    lwc1	$f27,26692($s1)
    swc1	$f27,0($s0)
    lwc1	$f25,26696($s1)
    lui	$t2,0xc780
    swc1	$f25,0($s0)
    ori	$t2,$t2,0xd030
    sw	$t2,0($s0)
    lwc1	$f23,26668($s1)
    swc1	$f23,0($s0)
    lwc1	$f21,26672($s1)
    swc1	$f21,0($s0)
    lwc1	$f19,26676($s1)
    swc1	$f19,0($s0)
    lwc1	$f18,26680($s1)
    lui	$t1,0xc980
    swc1	$f18,0($s0)
    ori	$t1,$t1,0xd032
    sw	$t1,0($s0)
    lwc1	$f17,26700($s1)
    swc1	$f17,0($s0)
    lwc1	$f16,26704($s1)
    swc1	$f16,0($s0)
    lwc1	$f15,26708($s1)
    swc1	$f15,0($s0)
    lwc1	$f14,26712($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f14,0($s0)
    lwc1	$f13,26716($s1)
    addiu	$a2,$sp,0
    sd	$a1,128($sp)
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f13,0($sp)
    ld	$a1,128($sp)
    li	$a2,1
    sb	$zero,26820($s1)
.L0d9eae30:
    ld	$t9,32($sp)
.L0d9eae34:
    beqz	$t9,.L0d9eb028
    # Line 1326
    ld	$t1,24($sp)
    # Line 1325
    lbu	$ra,400($s4)
    beqz	$ra,.L0d9eaf4c
    # Line 1326
    lui	$t0,0xca80
    # Line 1325
    lbu	$at,26821($s1)
    beqz	$at,.L0d9eb028
    # Line 1326
    ld	$t1,24($sp)
    sd	$a1,128($sp)
    lui	$a1,0xca80
    ori	$a1,$a1,0xd035
    sw	$a1,0($s0)
    lwc1	$f21,26732($s1)
    swc1	$f21,0($s0)
    lwc1	$f19,26736($s1)
    swc1	$f19,0($s0)
    lwc1	$f18,26740($s1)
    swc1	$f18,0($s0)
    lwc1	$f17,26744($s1)
    lui	$a0,0xcc80
    swc1	$f17,0($s0)
    ori	$a0,$a0,0xd037
    sw	$a0,0($s0)
    lwc1	$f16,26764($s1)
    swc1	$f16,0($s0)
    lwc1	$f15,26768($s1)
    swc1	$f15,0($s0)
    lwc1	$f14,26772($s1)
    swc1	$f14,0($s0)
    lwc1	$f13,26776($s1)
    lui	$v1,0xcb80
    swc1	$f13,0($s0)
    ori	$v1,$v1,0xd036
    sw	$v1,0($s0)
    lwc1	$f12,26748($s1)
    swc1	$f12,0($s0)
    lwc1	$f11,26752($s1)
    swc1	$f11,0($s0)
    lwc1	$f10,26756($s1)
    swc1	$f10,0($s0)
    lwc1	$f9,26760($s1)
    lui	$v0,0xcd80
    swc1	$f9,0($s0)
    ori	$v0,$v0,0xd038
    sw	$v0,0($s0)
    lwc1	$f8,26780($s1)
    swc1	$f8,0($s0)
    lwc1	$f7,26784($s1)
    swc1	$f7,0($s0)
    lwc1	$f6,26788($s1)
    swc1	$f6,0($s0)
    lwc1	$f5,26792($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f5,0($s0)
    lwc1	$f4,26796($s1)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f4,0($sp)
    ld	$a3,24($sp)
    ld	$a1,128($sp)
    li	$a2,1
    bnez	$a3,.L0d9eb030
    sb	$zero,26821($s1)
    # Line 1327
    ld	$a4,16($sp)
.L0d9eaf3c:
    bnez	$a4,.L0d9eb060
    # Line 1328
    lui	$t8,0xc580
    b	.L0d9eabac
    # Line 1330
    lbu	$t9,184($s4)
.L0d9eaf4c:
    # Line 1326
    ori	$t0,$t0,0xd035
    sw	$t0,0($s0)
    lwc1	$f11,288($s4)
    swc1	$f11,0($s0)
    lwc1	$f10,292($s4)
    swc1	$f10,0($s0)
    lwc1	$f9,296($s4)
    swc1	$f9,0($s0)
    lwc1	$f8,300($s4)
    lui	$a7,0xcc80
    swc1	$f8,0($s0)
    ori	$a7,$a7,0xd037
    sw	$a7,0($s0)
    lwc1	$f7,320($s4)
    swc1	$f7,0($s0)
    lwc1	$f6,324($s4)
    swc1	$f6,0($s0)
    lwc1	$f5,328($s4)
    swc1	$f5,0($s0)
    lwc1	$f4,332($s4)
    lui	$a6,0xcb80
    swc1	$f4,0($s0)
    ori	$a6,$a6,0xd036
    sw	$a6,0($s0)
    lwc1	$f3,304($s4)
    swc1	$f3,0($s0)
    lwc1	$f2,308($s4)
    swc1	$f2,0($s0)
    lwc1	$f1,312($s4)
    swc1	$f1,0($s0)
    lwc1	$f0,316($s4)
    lui	$a5,0xcd80
    swc1	$f0,0($s0)
    ori	$a5,$a5,0xd038
    sw	$a5,0($s0)
    lwc1	$f31,336($s4)
    swc1	$f31,0($s0)
    lwc1	$f29,340($s4)
    swc1	$f29,0($s0)
    lwc1	$f27,344($s4)
    swc1	$f27,0($s0)
    lwc1	$f25,348($s4)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f25,0($s0)
    lwc1	$f23,352($s4)
    addiu	$a2,$sp,0
    sd	$a1,128($sp)
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f23,0($sp)
    ld	$a1,128($sp)
    li	$a2,1
    sb	$a2,26821($s1)
    ld	$t1,24($sp)
.L0d9eb028:
    beqz	$t1,.L0d9eaf3c
    # Line 1327
    ld	$a4,16($sp)
.L0d9eb030:
    lui	$t3,0xc180
    ori	$t3,$t3,0xcc19
    sw	$t3,0($s0)
    lwc1	$f14,192($s4)
    swc1	$f14,0($s0)
    lwc1	$f13,196($s4)
    ld	$t2,16($sp)
    swc1	$f13,0($s0)
    lwc1	$f12,200($s4)
    beqz	$t2,.L0d9eaba8
    swc1	$f12,0($s0)
    # Line 1328
    lui	$t8,0xc580
.L0d9eb060:
    ori	$t8,$t8,0xd015
    sw	$t8,0($s0)
    lwc1	$f18,144($s4)
    swc1	$f18,0($s0)
    lwc1	$f17,148($s4)
    swc1	$f17,0($s0)
    lwc1	$f16,152($s4)
    swc1	$f16,0($s0)
    lwc1	$f15,156($s4)
    b	.L0d9eaba8
    swc1	$f15,0($s0)
.L0d9eb08c:
    # Line 1332
    ld	$t9,8($sp)
    beqz	$t9,.L0d9eb190
    # Line 1336
    ld	$a3,32($sp)
    # Line 1332
    lbu	$ra,400($s3)
    beqz	$ra,.L0d9eb66c
    nop
    lbu	$at,26820($s1)
    beqz	$at,.L0d9eb190
    # Line 1336
    ld	$a3,32($sp)
    sd	$a1,128($sp)
    lui	$a1,0xc680
    ori	$a1,$a1,0xd02f
    sw	$a1,0($s0)
    lwc1	$f9,26652($s1)
    swc1	$f9,0($s0)
    lwc1	$f8,26656($s1)
    swc1	$f8,0($s0)
    lwc1	$f7,26660($s1)
    swc1	$f7,0($s0)
    lwc1	$f6,26664($s1)
    lui	$a0,0xc880
    swc1	$f6,0($s0)
    ori	$a0,$a0,0xd031
    sw	$a0,0($s0)
    lwc1	$f5,26684($s1)
    swc1	$f5,0($s0)
    lwc1	$f4,26688($s1)
    swc1	$f4,0($s0)
    lwc1	$f3,26692($s1)
    swc1	$f3,0($s0)
    lwc1	$f2,26696($s1)
    lui	$v1,0xc780
    swc1	$f2,0($s0)
    ori	$v1,$v1,0xd030
    sw	$v1,0($s0)
    lwc1	$f1,26668($s1)
    swc1	$f1,0($s0)
    lwc1	$f0,26672($s1)
    swc1	$f0,0($s0)
    lwc1	$f31,26676($s1)
    swc1	$f31,0($s0)
    lwc1	$f29,26680($s1)
    lui	$v0,0xc980
    swc1	$f29,0($s0)
    ori	$v0,$v0,0xd032
    sw	$v0,0($s0)
    lwc1	$f27,26700($s1)
    swc1	$f27,0($s0)
    lwc1	$f25,26704($s1)
    swc1	$f25,0($s0)
    lwc1	$f23,26708($s1)
    swc1	$f23,0($s0)
    lwc1	$f21,26712($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f21,0($s0)
    lwc1	$f19,26716($s1)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f19,0($sp)
    ld	$a1,128($sp)
    li	$a2,1
    sb	$zero,26820($s1)
.L0d9eb18c:
    ld	$a3,32($sp)
.L0d9eb190:
    beqz	$a3,.L0d9eb380
    # Line 1337
    ld	$v0,24($sp)
    # Line 1336
    lbu	$a4,400($s3)
    beqz	$a4,.L0d9eb2a4
    # Line 1337
    lui	$at,0xca80
    # Line 1336
    lbu	$a5,26821($s1)
    beqz	$a5,.L0d9eb37c
    # Line 1337
    lui	$t1,0xca80
    ori	$t1,$t1,0xd035
    sw	$t1,0($s0)
    lwc1	$f0,26732($s1)
    swc1	$f0,0($s0)
    lwc1	$f31,26736($s1)
    swc1	$f31,0($s0)
    lwc1	$f29,26740($s1)
    swc1	$f29,0($s0)
    lwc1	$f27,26744($s1)
    lui	$t0,0xcc80
    swc1	$f27,0($s0)
    ori	$t0,$t0,0xd037
    sw	$t0,0($s0)
    lwc1	$f25,26764($s1)
    swc1	$f25,0($s0)
    lwc1	$f23,26768($s1)
    swc1	$f23,0($s0)
    lwc1	$f21,26772($s1)
    swc1	$f21,0($s0)
    lwc1	$f19,26776($s1)
    lui	$a7,0xcb80
    swc1	$f19,0($s0)
    ori	$a7,$a7,0xd036
    sw	$a7,0($s0)
    lwc1	$f18,26748($s1)
    swc1	$f18,0($s0)
    lwc1	$f17,26752($s1)
    swc1	$f17,0($s0)
    lwc1	$f16,26756($s1)
    swc1	$f16,0($s0)
    lwc1	$f15,26760($s1)
    lui	$a6,0xcd80
    swc1	$f15,0($s0)
    ori	$a6,$a6,0xd038
    sw	$a6,0($s0)
    lwc1	$f14,26780($s1)
    swc1	$f14,0($s0)
    lwc1	$f13,26784($s1)
    swc1	$f13,0($s0)
    lwc1	$f12,26788($s1)
    swc1	$f12,0($s0)
    lwc1	$f11,26792($s1)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f11,0($s0)
    lwc1	$f10,26796($s1)
    addiu	$a2,$sp,0
    sd	$a1,128($sp)
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f10,0($sp)
    ld	$t2,24($sp)
    ld	$a1,128($sp)
    li	$a2,1
    bnez	$t2,.L0d9eb388
    sb	$zero,26821($s1)
    # Line 1338
    ld	$t3,16($sp)
.L0d9eb294:
    bnez	$t3,.L0d9eb3b8
    # Line 1339
    lui	$a3,0xc580
    b	.L0d9eac14
    # Line 1341
    lbu	$at,184($s3)
.L0d9eb2a4:
    # Line 1337
    ori	$at,$at,0xd035
    sw	$at,0($s0)
    lwc1	$f17,288($s3)
    swc1	$f17,0($s0)
    lwc1	$f16,292($s3)
    swc1	$f16,0($s0)
    lwc1	$f15,296($s3)
    swc1	$f15,0($s0)
    lwc1	$f14,300($s3)
    lui	$ra,0xcc80
    swc1	$f14,0($s0)
    ori	$ra,$ra,0xd037
    sw	$ra,0($s0)
    lwc1	$f13,320($s3)
    swc1	$f13,0($s0)
    lwc1	$f12,324($s3)
    swc1	$f12,0($s0)
    lwc1	$f11,328($s3)
    swc1	$f11,0($s0)
    lwc1	$f10,332($s3)
    lui	$t9,0xcb80
    swc1	$f10,0($s0)
    ori	$t9,$t9,0xd036
    sw	$t9,0($s0)
    lwc1	$f9,304($s3)
    swc1	$f9,0($s0)
    lwc1	$f8,308($s3)
    swc1	$f8,0($s0)
    lwc1	$f7,312($s3)
    swc1	$f7,0($s0)
    lwc1	$f6,316($s3)
    lui	$t8,0xcd80
    swc1	$f6,0($s0)
    ori	$t8,$t8,0xd038
    sw	$t8,0($s0)
    lwc1	$f5,336($s3)
    swc1	$f5,0($s0)
    lwc1	$f4,340($s3)
    swc1	$f4,0($s0)
    lwc1	$f3,344($s3)
    swc1	$f3,0($s0)
    lwc1	$f2,348($s3)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f2,0($s0)
    lwc1	$f1,352($s3)
    addiu	$a2,$sp,0
    sd	$a1,128($sp)
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f1,0($sp)
    ld	$a1,128($sp)
    li	$a2,1
    sb	$a2,26821($s1)
.L0d9eb37c:
    ld	$v0,24($sp)
.L0d9eb380:
    beqz	$v0,.L0d9eb294
    # Line 1338
    ld	$t3,16($sp)
.L0d9eb388:
    lui	$a0,0xc180
    ori	$a0,$a0,0xcc19
    sw	$a0,0($s0)
    lwc1	$f21,192($s3)
    swc1	$f21,0($s0)
    lwc1	$f19,196($s3)
    ld	$v1,16($sp)
    swc1	$f19,0($s0)
    lwc1	$f18,200($s3)
    beqz	$v1,.L0d9eac10
    swc1	$f18,0($s0)
    # Line 1339
    lui	$a3,0xc580
.L0d9eb3b8:
    ori	$a3,$a3,0xd015
    sw	$a3,0($s0)
    lwc1	$f29,144($s3)
    swc1	$f29,0($s0)
    lwc1	$f27,148($s3)
    swc1	$f27,0($s0)
    lwc1	$f25,152($s3)
    swc1	$f25,0($s0)
    lwc1	$f23,156($s3)
    b	.L0d9eac10
    swc1	$f23,0($s0)
.L0d9eb3e4:
    # Line 1315
    lui	$a7,0xc680
    ori	$a7,$a7,0xd02f
    sw	$a7,0($s0)
    lwc1	$f15,208($s2)
    swc1	$f15,0($s0)
    lwc1	$f14,212($s2)
    swc1	$f14,0($s0)
    lwc1	$f13,216($s2)
    swc1	$f13,0($s0)
    lwc1	$f12,220($s2)
    lui	$a6,0xc880
    swc1	$f12,0($s0)
    ori	$a6,$a6,0xd031
    sw	$a6,0($s0)
    lwc1	$f11,240($s2)
    swc1	$f11,0($s0)
    lwc1	$f10,244($s2)
    swc1	$f10,0($s0)
    lwc1	$f9,248($s2)
    swc1	$f9,0($s0)
    lwc1	$f8,252($s2)
    lui	$a5,0xc780
    swc1	$f8,0($s0)
    ori	$a5,$a5,0xd030
    sw	$a5,0($s0)
    lwc1	$f7,224($s2)
    swc1	$f7,0($s0)
    lwc1	$f6,228($s2)
    swc1	$f6,0($s0)
    lwc1	$f5,232($s2)
    swc1	$f5,0($s0)
    lwc1	$f4,236($s2)
    lui	$a4,0xc980
    swc1	$f4,0($s0)
    ori	$a4,$a4,0xd032
    sw	$a4,0($s0)
    lwc1	$f3,256($s2)
    swc1	$f3,0($s0)
    lwc1	$f2,260($s2)
    swc1	$f2,0($s0)
    lwc1	$f1,264($s2)
    swc1	$f1,0($s0)
    lwc1	$f0,268($s2)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f0,0($s0)
    lwc1	$f31,272($s2)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f31,0($sp)
    li	$a2,1
    b	.L0d9ea9d4
    sb	$a2,26820($s1)
.L0d9eb4bc:
    # Line 1316
    ori	$t3,$t3,0xd035
    sw	$t3,0($s0)
    lwc1	$f6,288($s2)
    swc1	$f6,0($s0)
    lwc1	$f5,292($s2)
    swc1	$f5,0($s0)
    lwc1	$f4,296($s2)
    swc1	$f4,0($s0)
    lwc1	$f3,300($s2)
    lui	$t2,0xcc80
    swc1	$f3,0($s0)
    ori	$t2,$t2,0xd037
    sw	$t2,0($s0)
    lwc1	$f2,320($s2)
    swc1	$f2,0($s0)
    lwc1	$f1,324($s2)
    swc1	$f1,0($s0)
    lwc1	$f0,328($s2)
    swc1	$f0,0($s0)
    lwc1	$f31,332($s2)
    lui	$t1,0xcb80
    swc1	$f31,0($s0)
    ori	$t1,$t1,0xd036
    sw	$t1,0($s0)
    lwc1	$f29,304($s2)
    swc1	$f29,0($s0)
    lwc1	$f27,308($s2)
    swc1	$f27,0($s0)
    lwc1	$f25,312($s2)
    swc1	$f25,0($s0)
    lwc1	$f23,316($s2)
    lui	$t0,0xcd80
    swc1	$f23,0($s0)
    ori	$t0,$t0,0xd038
    sw	$t0,0($s0)
    lwc1	$f21,336($s2)
    swc1	$f21,0($s0)
    lwc1	$f19,340($s2)
    swc1	$f19,0($s0)
    lwc1	$f18,344($s2)
    swc1	$f18,0($s0)
    lwc1	$f17,348($s2)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f17,0($s0)
    lwc1	$f16,352($s2)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1029
    jal	__glOdyim_Materialfv
    swc1	$f16,0($sp)
    li	$a2,1
    b	.L0d9eaac8
    sb	$a2,26821($s1)
.L0d9eb590:
    # Line 1325
    ori	$at,$at,0xd02f
    sw	$at,0($s0)
    lwc1	$f27,208($s4)
    swc1	$f27,0($s0)
    lwc1	$f25,212($s4)
    swc1	$f25,0($s0)
    lwc1	$f23,216($s4)
    swc1	$f23,0($s0)
    lwc1	$f21,220($s4)
    lui	$ra,0xc880
    swc1	$f21,0($s0)
    ori	$ra,$ra,0xd031
    sw	$ra,0($s0)
    lwc1	$f19,240($s4)
    swc1	$f19,0($s0)
    lwc1	$f18,244($s4)
    swc1	$f18,0($s0)
    lwc1	$f17,248($s4)
    swc1	$f17,0($s0)
    lwc1	$f16,252($s4)
    lui	$t9,0xc780
    swc1	$f16,0($s0)
    ori	$t9,$t9,0xd030
    sw	$t9,0($s0)
    lwc1	$f15,224($s4)
    swc1	$f15,0($s0)
    lwc1	$f14,228($s4)
    swc1	$f14,0($s0)
    lwc1	$f13,232($s4)
    swc1	$f13,0($s0)
    lwc1	$f12,236($s4)
    lui	$t8,0xc980
    swc1	$f12,0($s0)
    ori	$t8,$t8,0xd032
    sw	$t8,0($s0)
    lwc1	$f11,256($s4)
    swc1	$f11,0($s0)
    lwc1	$f10,260($s4)
    swc1	$f10,0($s0)
    lwc1	$f9,264($s4)
    swc1	$f9,0($s0)
    lwc1	$f8,268($s4)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f8,0($s0)
    lwc1	$f7,272($s4)
    addiu	$a2,$sp,0
    sd	$a1,128($sp)
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f7,0($sp)
    ld	$a1,128($sp)
    li	$a2,1
    b	.L0d9eae30
    sb	$a2,26820($s1)
.L0d9eb66c:
    sd	$a1,128($sp)
    # Line 1336
    lui	$a1,0xc680
    ori	$a1,$a1,0xd02f
    sw	$a1,0($s0)
    lwc1	$f14,208($s3)
    swc1	$f14,0($s0)
    lwc1	$f13,212($s3)
    swc1	$f13,0($s0)
    lwc1	$f12,216($s3)
    swc1	$f12,0($s0)
    lwc1	$f11,220($s3)
    lui	$a0,0xc880
    swc1	$f11,0($s0)
    ori	$a0,$a0,0xd031
    sw	$a0,0($s0)
    lwc1	$f10,240($s3)
    swc1	$f10,0($s0)
    lwc1	$f9,244($s3)
    swc1	$f9,0($s0)
    lwc1	$f8,248($s3)
    swc1	$f8,0($s0)
    lwc1	$f7,252($s3)
    lui	$v1,0xc780
    swc1	$f7,0($s0)
    ori	$v1,$v1,0xd030
    sw	$v1,0($s0)
    lwc1	$f6,224($s3)
    swc1	$f6,0($s0)
    lwc1	$f5,228($s3)
    swc1	$f5,0($s0)
    lwc1	$f4,232($s3)
    swc1	$f4,0($s0)
    lwc1	$f3,236($s3)
    lui	$v0,0xc980
    swc1	$f3,0($s0)
    ori	$v0,$v0,0xd032
    sw	$v0,0($s0)
    lwc1	$f2,256($s3)
    swc1	$f2,0($s0)
    lwc1	$f1,260($s3)
    swc1	$f1,0($s0)
    lwc1	$f0,264($s3)
    swc1	$f0,0($s0)
    lwc1	$f31,268($s3)
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    swc1	$f31,0($s0)
    lwc1	$f29,272($s3)
    addiu	$a2,$sp,0
    li	$a1,5633
    li	$a0,1028
    jal	__glOdyim_Materialfv
    swc1	$f29,0($sp)
    ld	$a1,128($sp)
    li	$a2,1
    b	.L0d9eb18c
    sb	$a2,26820($s1)
.end __glOdysseySoftClipRenderTriangleFast

# Function: __glOdyim_SoftVertex3dFast
# Declared: Line 1417 (Source lines: 1418-1432)
# Address: 0x0d9eb750 - 0x0d9eb8d8 (Size: 392 bytes, Frame: 16)
.globl __glOdyim_SoftVertex3dFast
.ent __glOdyim_SoftVertex3dFast
__glOdyim_SoftVertex3dFast:
    # Line 1418
    addiu	$sp,$sp,-16
    # Line 1419
    lw	$a0,4112($zero)
    sd	$ra,8($sp)
    lui	$a4,0x1
    addu	$a7,$a0,$a4
    lw	$a1,12744($a0)
    lw	$a3,26648($a7)
    # Line 1421
    sw	$zero,0($a1)
    # Line 1423
    cvt.s.d	$f3,$f12
    # Line 1422
    lw	$a5,12036($a0)
    # Line 1424
    cvt.s.d	$f2,$f13
    # Line 1423
    swc1	$f3,16($a1)
    # Line 1425
    cvt.s.d	$f1,$f14
    # Line 1424
    swc1	$f2,20($a1)
    # Line 1427
    move	$a6,$zero
    # Line 1425
    swc1	$f1,24($a1)
    # Line 1419
    li	$t0,1
    # Line 1418
    lui	$at,0x11
    # Line 1422
    sw	$a5,12($a1)
    # Line 1418
    addiu	$at,$at,-12736
    # Line 1419
    ori	$a4,$a4,0x6748
    # Line 1426
    lwc1	$f0,3544($a0)
    sd	$gp,0($sp)
    # Line 1418
    addu	$gp,$t9,$at
    # Line 1419
    addu	$a4,$a0,$a4
    move	$a5,$t0
    # Line 1426
    beqz	$a3,.L0d9eb824
    swc1	$f0,28($a1)
    move	$a6,$zero
    nop
    nop
    nop
.L0d9eb7d0:
    andi	$t1,$a3,0x1
    # Line 1427
    srl	$a3,$a3,0x1
    # Line 1426
    beqz	$t1,.L0d9eb818
    # Line 1427
    or	$t2,$a5,$a6
    # Line 1426
    lwc1	$f4,4($a4)
    lwc1	$f6,0($a4)
    lwc1	$f5,8($a4)
    cvt.d.s	$f4,$f4
    cvt.d.s	$f6,$f6
    mul.d	$f4,$f4,$f13
    cvt.d.s	$f5,$f5
    madd.d	$f4,$f4,$f6,$f12
    madd.d	$f4,$f4,$f5,$f14
    lwc1	$f5,12($a4)
    neg.s	$f5,$f5
    cvt.d.s	$f5,$f5
    c.lt.d	$f4,$f5
    movt	$a6,$t2,$fcc0
.L0d9eb818:
    # Line 1427
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9eb7d0
    sll	$a5,$a5,0x1
.L0d9eb824:
    # Line 1429
    sltiu	$t8,$a6,1
    sb	$t8,401($a1)
    # Line 1428
    sb	$t0,400($a1)
    # Line 1427
    sw	$a6,4($a1)
    # Line 1429
    lw	$a3,26812($a7)
    andi	$t3,$a3,0x1
    beqz	$t3,.L0d9eb864
    # Line 1430
    andi	$t9,$a3,0x2
    lwc1	$f7,208($a0)
    swc1	$f7,192($a1)
    lwc1	$f6,212($a0)
    swc1	$f6,196($a1)
    lwc1	$f5,216($a0)
    swc1	$f5,200($a1)
    lw	$a3,26812($a7)
    andi	$t9,$a3,0x2
.L0d9eb864:
    beqz	$t9,.L0d9eb894
    andi	$ra,$a3,0x4
    lwc1	$f11,224($a0)
    swc1	$f11,48($a1)
    lwc1	$f10,228($a0)
    swc1	$f10,52($a1)
    lwc1	$f9,232($a0)
    swc1	$f9,56($a1)
    lwc1	$f8,236($a0)
    swc1	$f8,60($a1)
    lw	$a3,26812($a7)
    andi	$ra,$a3,0x4
.L0d9eb894:
    beqz	$ra,.L0d9eb8bc
    nop
    lwc1	$f15,192($a0)
    swc1	$f15,144($a1)
    lwc1	$f14,196($a0)
    swc1	$f14,148($a1)
    lwc1	$f13,200($a0)
    swc1	$f13,152($a1)
    lwc1	$f12,204($a0)
    swc1	$f12,156($a1)
.L0d9eb8bc:
    # Line 1431
    lw	$t9,12004($a0)
    jalr	$t9
    nop
    ld	$ra,8($sp)
    # Line 1432
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex3dFast

# Function: __glOdyim_SoftVertex3dvFast
# Declared: Line 1435 (Source lines: 1436-1451)
# Address: 0x0d9eb8e0 - 0x0d9eba58 (Size: 376 bytes, Frame: 16)
.globl __glOdyim_SoftVertex3dvFast
.ent __glOdyim_SoftVertex3dvFast
__glOdyim_SoftVertex3dvFast:
    # Line 1436
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    # Line 1437
    ldc1	$f4,0($a0)
    ldc1	$f6,8($a0)
    # Line 1438
    lw	$a7,4112($zero)
    lui	$a4,0x1
    # Line 1437
    ldc1	$f5,16($a0)
    # Line 1438
    addu	$t0,$a7,$a4
    lw	$a1,12744($a7)
    lw	$a3,26648($t0)
    # Line 1440
    sw	$zero,0($a1)
    # Line 1437
    cvt.s.d	$f4,$f4
    # Line 1441
    lw	$a5,12036($a7)
    # Line 1437
    cvt.s.d	$f6,$f6
    # Line 1442
    swc1	$f4,16($a1)
    # Line 1437
    cvt.s.d	$f5,$f5
    # Line 1443
    swc1	$f6,20($a1)
    # Line 1446
    move	$a6,$zero
    # Line 1444
    swc1	$f5,24($a1)
    # Line 1438
    li	$t1,1
    # Line 1436
    lui	$at,0x11
    # Line 1441
    sw	$a5,12($a1)
    # Line 1436
    addiu	$at,$at,-13136
    # Line 1438
    ori	$a4,$a4,0x6748
    # Line 1445
    lwc1	$f0,3544($a7)
    sd	$gp,0($sp)
    # Line 1436
    addu	$gp,$t9,$at
    # Line 1438
    addu	$a4,$a7,$a4
    move	$a5,$t1
    # Line 1445
    beqz	$a3,.L0d9eb9a4
    swc1	$f0,28($a1)
    move	$a6,$zero
.L0d9eb960:
    andi	$t2,$a3,0x1
    # Line 1446
    srl	$a3,$a3,0x1
    # Line 1445
    beqz	$t2,.L0d9eb998
    # Line 1446
    or	$t3,$a5,$a6
    # Line 1445
    lwc1	$f7,4($a4)
    lwc1	$f9,0($a4)
    lwc1	$f8,8($a4)
    mul.s	$f7,$f7,$f6
    madd.s	$f7,$f7,$f9,$f4
    madd.s	$f7,$f7,$f8,$f5
    lwc1	$f8,12($a4)
    neg.s	$f8,$f8
    c.lt.s	$f7,$f8
    movt	$a6,$t3,$fcc0
.L0d9eb998:
    # Line 1446
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9eb960
    sll	$a5,$a5,0x1
.L0d9eb9a4:
    # Line 1448
    sltiu	$t9,$a6,1
    sb	$t9,401($a1)
    # Line 1447
    sb	$t1,400($a1)
    # Line 1446
    sw	$a6,4($a1)
    # Line 1448
    lw	$a3,26812($t0)
    andi	$t8,$a3,0x1
    beqz	$t8,.L0d9eb9e4
    # Line 1449
    andi	$ra,$a3,0x2
    lwc1	$f10,208($a7)
    swc1	$f10,192($a1)
    lwc1	$f9,212($a7)
    swc1	$f9,196($a1)
    lwc1	$f8,216($a7)
    swc1	$f8,200($a1)
    lw	$a3,26812($t0)
    andi	$ra,$a3,0x2
.L0d9eb9e4:
    beqz	$ra,.L0d9eba14
    andi	$at,$a3,0x4
    lwc1	$f14,224($a7)
    swc1	$f14,48($a1)
    lwc1	$f13,228($a7)
    swc1	$f13,52($a1)
    lwc1	$f12,232($a7)
    swc1	$f12,56($a1)
    lwc1	$f11,236($a7)
    swc1	$f11,60($a1)
    lw	$a3,26812($t0)
    andi	$at,$a3,0x4
.L0d9eba14:
    beqz	$at,.L0d9eba3c
    nop
    lwc1	$f18,192($a7)
    swc1	$f18,144($a1)
    lwc1	$f17,196($a7)
    swc1	$f17,148($a1)
    lwc1	$f16,200($a7)
    swc1	$f16,152($a1)
    lwc1	$f15,204($a7)
    swc1	$f15,156($a1)
.L0d9eba3c:
    # Line 1450
    lw	$t9,12004($a7)
    jalr	$t9
    move	$a0,$a7
    ld	$ra,8($sp)
    # Line 1451
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex3dvFast

# Function: __glOdyim_SoftVertex3fFast
# Declared: Line 1454 (Source lines: 1455-1469)
# Address: 0x0d9eba60 - 0x0d9ebbc8 (Size: 360 bytes, Frame: 16)
.globl __glOdyim_SoftVertex3fFast
.ent __glOdyim_SoftVertex3fFast
__glOdyim_SoftVertex3fFast:
    # Line 1455
    addiu	$sp,$sp,-16
    # Line 1456
    lw	$a0,4112($zero)
    sd	$ra,8($sp)
    lui	$a4,0x1
    addu	$a7,$a0,$a4
    lw	$a1,12744($a0)
    lw	$a3,26648($a7)
    # Line 1458
    sw	$zero,0($a1)
    # Line 1459
    lw	$a5,12036($a0)
    # Line 1460
    swc1	$f12,16($a1)
    # Line 1461
    swc1	$f13,20($a1)
    # Line 1462
    swc1	$f14,24($a1)
    # Line 1464
    move	$a6,$zero
    # Line 1455
    lui	$at,0x11
    # Line 1459
    sw	$a5,12($a1)
    # Line 1456
    li	$t0,1
    # Line 1455
    addiu	$at,$at,-13520
    # Line 1463
    lwc1	$f0,3544($a0)
    sd	$gp,0($sp)
    # Line 1455
    addu	$gp,$t9,$at
    # Line 1456
    ori	$a4,$a4,0x6748
    addu	$a4,$a0,$a4
    # Line 1463
    beqz	$a3,.L0d9ebb14
    swc1	$f0,28($a1)
    move	$a5,$t0
    move	$a6,$zero
    nop
    nop
.L0d9ebad0:
    andi	$t1,$a3,0x1
    # Line 1464
    srl	$a3,$a3,0x1
    # Line 1463
    beqz	$t1,.L0d9ebb08
    # Line 1464
    or	$t2,$a5,$a6
    # Line 1463
    lwc1	$f1,4($a4)
    lwc1	$f3,0($a4)
    lwc1	$f2,8($a4)
    mul.s	$f1,$f1,$f13
    madd.s	$f1,$f1,$f3,$f12
    madd.s	$f1,$f1,$f2,$f14
    lwc1	$f2,12($a4)
    neg.s	$f2,$f2
    c.lt.s	$f1,$f2
    movt	$a6,$t2,$fcc0
.L0d9ebb08:
    # Line 1464
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9ebad0
    sll	$a5,$a5,0x1
.L0d9ebb14:
    # Line 1466
    sltiu	$t8,$a6,1
    sb	$t8,401($a1)
    # Line 1465
    sb	$t0,400($a1)
    # Line 1464
    sw	$a6,4($a1)
    # Line 1466
    lw	$a3,26812($a7)
    andi	$t3,$a3,0x1
    beqz	$t3,.L0d9ebb54
    # Line 1467
    andi	$t9,$a3,0x2
    lwc1	$f4,208($a0)
    swc1	$f4,192($a1)
    lwc1	$f3,212($a0)
    swc1	$f3,196($a1)
    lwc1	$f2,216($a0)
    swc1	$f2,200($a1)
    lw	$a3,26812($a7)
    andi	$t9,$a3,0x2
.L0d9ebb54:
    beqz	$t9,.L0d9ebb84
    andi	$ra,$a3,0x4
    lwc1	$f8,224($a0)
    swc1	$f8,48($a1)
    lwc1	$f7,228($a0)
    swc1	$f7,52($a1)
    lwc1	$f6,232($a0)
    swc1	$f6,56($a1)
    lwc1	$f5,236($a0)
    swc1	$f5,60($a1)
    lw	$a3,26812($a7)
    andi	$ra,$a3,0x4
.L0d9ebb84:
    beqz	$ra,.L0d9ebbac
    nop
    lwc1	$f12,192($a0)
    swc1	$f12,144($a1)
    lwc1	$f11,196($a0)
    swc1	$f11,148($a1)
    lwc1	$f10,200($a0)
    swc1	$f10,152($a1)
    lwc1	$f9,204($a0)
    swc1	$f9,156($a1)
.L0d9ebbac:
    # Line 1468
    lw	$t9,12004($a0)
    jalr	$t9
    nop
    ld	$ra,8($sp)
    # Line 1469
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex3fFast

# Function: __glOdyim_SoftVertex3fvFast
# Declared: Line 1472 (Source lines: 1473-1488)
# Address: 0x0d9ebbd0 - 0x0d9ebd48 (Size: 376 bytes, Frame: 16)
.globl __glOdyim_SoftVertex3fvFast
.ent __glOdyim_SoftVertex3fvFast
__glOdyim_SoftVertex3fvFast:
    # Line 1473
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    # Line 1474
    lwc1	$f4,0($a0)
    lwc1	$f6,4($a0)
    # Line 1475
    lw	$a7,4112($zero)
    # Line 1474
    lwc1	$f5,8($a0)
    # Line 1475
    lui	$a4,0x1
    addu	$t0,$a7,$a4
    lw	$a1,12744($a7)
    lw	$a3,26648($t0)
    # Line 1477
    sw	$zero,0($a1)
    # Line 1478
    lw	$a5,12036($a7)
    # Line 1479
    swc1	$f4,16($a1)
    # Line 1480
    swc1	$f6,20($a1)
    # Line 1483
    move	$a6,$zero
    # Line 1481
    swc1	$f5,24($a1)
    # Line 1475
    li	$t1,1
    # Line 1473
    lui	$at,0x11
    # Line 1478
    sw	$a5,12($a1)
    # Line 1473
    addiu	$at,$at,-13888
    # Line 1475
    ori	$a4,$a4,0x6748
    # Line 1482
    lwc1	$f0,3544($a7)
    sd	$gp,0($sp)
    # Line 1473
    addu	$gp,$t9,$at
    # Line 1475
    addu	$a4,$a7,$a4
    move	$a5,$t1
    # Line 1482
    beqz	$a3,.L0d9ebc94
    swc1	$f0,28($a1)
    move	$a6,$zero
    nop
    nop
    nop
.L0d9ebc50:
    andi	$t2,$a3,0x1
    # Line 1483
    srl	$a3,$a3,0x1
    # Line 1482
    beqz	$t2,.L0d9ebc88
    # Line 1483
    or	$t3,$a5,$a6
    # Line 1482
    lwc1	$f1,4($a4)
    lwc1	$f3,0($a4)
    lwc1	$f2,8($a4)
    mul.s	$f1,$f1,$f6
    madd.s	$f1,$f1,$f3,$f4
    madd.s	$f1,$f1,$f2,$f5
    lwc1	$f2,12($a4)
    neg.s	$f2,$f2
    c.lt.s	$f1,$f2
    movt	$a6,$t3,$fcc0
.L0d9ebc88:
    # Line 1483
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9ebc50
    sll	$a5,$a5,0x1
.L0d9ebc94:
    # Line 1485
    sltiu	$t9,$a6,1
    sb	$t9,401($a1)
    # Line 1484
    sb	$t1,400($a1)
    # Line 1483
    sw	$a6,4($a1)
    # Line 1485
    lw	$a3,26812($t0)
    andi	$t8,$a3,0x1
    beqz	$t8,.L0d9ebcd4
    # Line 1486
    andi	$ra,$a3,0x2
    lwc1	$f4,208($a7)
    swc1	$f4,192($a1)
    lwc1	$f3,212($a7)
    swc1	$f3,196($a1)
    lwc1	$f2,216($a7)
    swc1	$f2,200($a1)
    lw	$a3,26812($t0)
    andi	$ra,$a3,0x2
.L0d9ebcd4:
    beqz	$ra,.L0d9ebd04
    andi	$at,$a3,0x4
    lwc1	$f8,224($a7)
    swc1	$f8,48($a1)
    lwc1	$f7,228($a7)
    swc1	$f7,52($a1)
    lwc1	$f6,232($a7)
    swc1	$f6,56($a1)
    lwc1	$f5,236($a7)
    swc1	$f5,60($a1)
    lw	$a3,26812($t0)
    andi	$at,$a3,0x4
.L0d9ebd04:
    beqz	$at,.L0d9ebd2c
    nop
    lwc1	$f12,192($a7)
    swc1	$f12,144($a1)
    lwc1	$f11,196($a7)
    swc1	$f11,148($a1)
    lwc1	$f10,200($a7)
    swc1	$f10,152($a1)
    lwc1	$f9,204($a7)
    swc1	$f9,156($a1)
.L0d9ebd2c:
    # Line 1487
    lw	$t9,12004($a7)
    jalr	$t9
    move	$a0,$a7
    ld	$ra,8($sp)
    # Line 1488
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex3fvFast

# Function: __glOdyim_SoftVertex4dFast
# Declared: Line 1491 (Source lines: 1492-1506)
# Address: 0x0d9ebd50 - 0x0d9ebedc (Size: 396 bytes, Frame: 16)
.globl __glOdyim_SoftVertex4dFast
.ent __glOdyim_SoftVertex4dFast
__glOdyim_SoftVertex4dFast:
    # Line 1492
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    # Line 1493
    lw	$a0,4112($zero)
    sd	$gp,0($sp)
    lui	$a4,0x1
    lw	$a1,12744($a0)
    addu	$a7,$a0,$a4
    lw	$a3,26648($a7)
    # Line 1495
    sw	$zero,0($a1)
    # Line 1500
    cvt.s.d	$f3,$f15
    # Line 1496
    lw	$at,12040($a0)
    # Line 1501
    move	$a6,$zero
    # Line 1499
    cvt.s.d	$f2,$f14
    # Line 1500
    swc1	$f3,28($a1)
    # Line 1498
    cvt.s.d	$f1,$f13
    # Line 1493
    li	$t0,1
    # Line 1492
    lui	$v0,0x11
    # Line 1499
    swc1	$f2,24($a1)
    # Line 1497
    cvt.s.d	$f0,$f12
    move	$a5,$t0
    # Line 1492
    addiu	$v0,$v0,-14272
    # Line 1498
    swc1	$f1,20($a1)
    # Line 1492
    addu	$gp,$t9,$v0
    # Line 1493
    ori	$a4,$a4,0x6748
    # Line 1497
    swc1	$f0,16($a1)
    # Line 1493
    addu	$a4,$a0,$a4
    # Line 1500
    beqz	$a3,.L0d9ebe28
    # Line 1496
    sw	$at,12($a1)
    # Line 1500
    move	$a6,$zero
    nop
    nop
    nop
.L0d9ebdd0:
    andi	$t1,$a3,0x1
    # Line 1501
    srl	$a3,$a3,0x1
    # Line 1500
    beqz	$t1,.L0d9ebe1c
    # Line 1501
    or	$t2,$a5,$a6
    # Line 1500
    lwc1	$f4,4($a4)
    lwc1	$f5,0($a4)
    cvt.d.s	$f4,$f4
    lwc1	$f6,8($a4)
    cvt.d.s	$f5,$f5
    mul.d	$f4,$f4,$f13
    madd.d	$f4,$f4,$f5,$f12
    lwc1	$f5,12($a4)
    cvt.d.s	$f6,$f6
    madd.d	$f4,$f4,$f6,$f14
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f15
    neg.d	$f5,$f5
    c.lt.d	$f4,$f5
    movt	$a6,$t2,$fcc0
.L0d9ebe1c:
    # Line 1501
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9ebdd0
    sll	$a5,$a5,0x1
.L0d9ebe28:
    # Line 1503
    sltiu	$t8,$a6,1
    sb	$t8,401($a1)
    # Line 1502
    sb	$t0,400($a1)
    # Line 1501
    sw	$a6,4($a1)
    # Line 1503
    lw	$a3,26812($a7)
    andi	$t3,$a3,0x1
    beqz	$t3,.L0d9ebe68
    # Line 1504
    andi	$t9,$a3,0x2
    lwc1	$f7,208($a0)
    swc1	$f7,192($a1)
    lwc1	$f6,212($a0)
    swc1	$f6,196($a1)
    lwc1	$f5,216($a0)
    swc1	$f5,200($a1)
    lw	$a3,26812($a7)
    andi	$t9,$a3,0x2
.L0d9ebe68:
    beqz	$t9,.L0d9ebe98
    andi	$ra,$a3,0x4
    lwc1	$f11,224($a0)
    swc1	$f11,48($a1)
    lwc1	$f10,228($a0)
    swc1	$f10,52($a1)
    lwc1	$f9,232($a0)
    swc1	$f9,56($a1)
    lwc1	$f8,236($a0)
    swc1	$f8,60($a1)
    lw	$a3,26812($a7)
    andi	$ra,$a3,0x4
.L0d9ebe98:
    beqz	$ra,.L0d9ebec0
    nop
    lwc1	$f15,192($a0)
    swc1	$f15,144($a1)
    lwc1	$f14,196($a0)
    swc1	$f14,148($a1)
    lwc1	$f13,200($a0)
    swc1	$f13,152($a1)
    lwc1	$f12,204($a0)
    swc1	$f12,156($a1)
.L0d9ebec0:
    # Line 1505
    lw	$t9,12004($a0)
    jalr	$t9
    nop
    ld	$ra,8($sp)
    # Line 1506
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex4dFast

# Function: __glOdyim_SoftVertex4dvFast
# Declared: Line 1509 (Source lines: 1510-1525)
# Address: 0x0d9ebee0 - 0x0d9ec06c (Size: 396 bytes, Frame: 16)
.globl __glOdyim_SoftVertex4dvFast
.ent __glOdyim_SoftVertex4dvFast
__glOdyim_SoftVertex4dvFast:
    # Line 1510
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    # Line 1511
    ldc1	$f4,0($a0)
    ldc1	$f7,8($a0)
    ldc1	$f5,16($a0)
    # Line 1512
    lw	$a7,4112($zero)
    # Line 1511
    ldc1	$f6,24($a0)
    # Line 1512
    lui	$a4,0x1
    lw	$a1,12744($a7)
    addu	$t0,$a7,$a4
    lw	$a3,26648($t0)
    # Line 1514
    sw	$zero,0($a1)
    # Line 1511
    cvt.s.d	$f6,$f6
    # Line 1515
    lw	$at,12040($a7)
    # Line 1520
    move	$a6,$zero
    # Line 1511
    cvt.s.d	$f5,$f5
    # Line 1519
    swc1	$f6,28($a1)
    # Line 1512
    li	$t1,1
    # Line 1510
    lui	$v0,0x11
    # Line 1511
    cvt.s.d	$f7,$f7
    # Line 1518
    swc1	$f5,24($a1)
    move	$a5,$t1
    # Line 1510
    addiu	$v0,$v0,-14672
    # Line 1511
    cvt.s.d	$f4,$f4
    # Line 1517
    swc1	$f7,20($a1)
    # Line 1510
    addu	$gp,$t9,$v0
    # Line 1512
    ori	$a4,$a4,0x6748
    # Line 1516
    swc1	$f4,16($a1)
    # Line 1512
    addu	$a4,$a7,$a4
    # Line 1519
    beqz	$a3,.L0d9ebfb8
    # Line 1515
    sw	$at,12($a1)
    # Line 1519
    move	$a6,$zero
    nop
    nop
    nop
.L0d9ebf70:
    andi	$t2,$a3,0x1
    # Line 1520
    srl	$a3,$a3,0x1
    # Line 1519
    beqz	$t2,.L0d9ebfac
    # Line 1520
    or	$t3,$a5,$a6
    # Line 1519
    lwc1	$f8,4($a4)
    lwc1	$f9,0($a4)
    lwc1	$f10,8($a4)
    mul.s	$f8,$f8,$f7
    madd.s	$f8,$f8,$f9,$f4
    lwc1	$f9,12($a4)
    madd.s	$f8,$f8,$f10,$f5
    mul.s	$f9,$f9,$f6
    neg.s	$f9,$f9
    c.lt.s	$f8,$f9
    movt	$a6,$t3,$fcc0
.L0d9ebfac:
    # Line 1520
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9ebf70
    sll	$a5,$a5,0x1
.L0d9ebfb8:
    # Line 1522
    sltiu	$t9,$a6,1
    sb	$t9,401($a1)
    # Line 1521
    sb	$t1,400($a1)
    # Line 1520
    sw	$a6,4($a1)
    # Line 1522
    lw	$a3,26812($t0)
    andi	$t8,$a3,0x1
    beqz	$t8,.L0d9ebff8
    # Line 1523
    andi	$ra,$a3,0x2
    lwc1	$f11,208($a7)
    swc1	$f11,192($a1)
    lwc1	$f10,212($a7)
    swc1	$f10,196($a1)
    lwc1	$f9,216($a7)
    swc1	$f9,200($a1)
    lw	$a3,26812($t0)
    andi	$ra,$a3,0x2
.L0d9ebff8:
    beqz	$ra,.L0d9ec028
    andi	$at,$a3,0x4
    lwc1	$f15,224($a7)
    swc1	$f15,48($a1)
    lwc1	$f14,228($a7)
    swc1	$f14,52($a1)
    lwc1	$f13,232($a7)
    swc1	$f13,56($a1)
    lwc1	$f12,236($a7)
    swc1	$f12,60($a1)
    lw	$a3,26812($t0)
    andi	$at,$a3,0x4
.L0d9ec028:
    beqz	$at,.L0d9ec050
    nop
    lwc1	$f19,192($a7)
    swc1	$f19,144($a1)
    lwc1	$f18,196($a7)
    swc1	$f18,148($a1)
    lwc1	$f17,200($a7)
    swc1	$f17,152($a1)
    lwc1	$f16,204($a7)
    swc1	$f16,156($a1)
.L0d9ec050:
    # Line 1524
    lw	$t9,12004($a7)
    jalr	$t9
    move	$a0,$a7
    ld	$ra,8($sp)
    # Line 1525
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex4dvFast

# Function: __glOdyim_SoftVertex4fFast
# Declared: Line 1528 (Source lines: 1529-1543)
# Address: 0x0d9ec070 - 0x0d9ec1dc (Size: 364 bytes, Frame: 16)
.globl __glOdyim_SoftVertex4fFast
.ent __glOdyim_SoftVertex4fFast
__glOdyim_SoftVertex4fFast:
    # Line 1529
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    # Line 1530
    lw	$a0,4112($zero)
    sd	$gp,0($sp)
    lui	$a4,0x1
    lw	$a1,12744($a0)
    addu	$a7,$a0,$a4
    lw	$a3,26648($a7)
    # Line 1532
    sw	$zero,0($a1)
    # Line 1533
    lw	$at,12040($a0)
    # Line 1538
    move	$a6,$zero
    # Line 1537
    swc1	$f15,28($a1)
    # Line 1530
    li	$t0,1
    # Line 1529
    lui	$v0,0x11
    # Line 1536
    swc1	$f14,24($a1)
    move	$a5,$t0
    # Line 1529
    addiu	$v0,$v0,-15072
    # Line 1535
    swc1	$f13,20($a1)
    # Line 1529
    addu	$gp,$t9,$v0
    # Line 1530
    ori	$a4,$a4,0x6748
    # Line 1534
    swc1	$f12,16($a1)
    # Line 1530
    addu	$a4,$a0,$a4
    # Line 1537
    beqz	$a3,.L0d9ec128
    # Line 1533
    sw	$at,12($a1)
    # Line 1537
    move	$a6,$zero
    nop
    nop
    nop
.L0d9ec0e0:
    andi	$t1,$a3,0x1
    # Line 1538
    srl	$a3,$a3,0x1
    # Line 1537
    beqz	$t1,.L0d9ec11c
    # Line 1538
    or	$t2,$a5,$a6
    # Line 1537
    lwc1	$f0,4($a4)
    lwc1	$f1,0($a4)
    lwc1	$f2,8($a4)
    mul.s	$f0,$f0,$f13
    madd.s	$f0,$f0,$f1,$f12
    lwc1	$f1,12($a4)
    madd.s	$f0,$f0,$f2,$f14
    mul.s	$f1,$f1,$f15
    neg.s	$f1,$f1
    c.lt.s	$f0,$f1
    movt	$a6,$t2,$fcc0
.L0d9ec11c:
    # Line 1538
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9ec0e0
    sll	$a5,$a5,0x1
.L0d9ec128:
    # Line 1540
    sltiu	$t8,$a6,1
    sb	$t8,401($a1)
    # Line 1539
    sb	$t0,400($a1)
    # Line 1538
    sw	$a6,4($a1)
    # Line 1540
    lw	$a3,26812($a7)
    andi	$t3,$a3,0x1
    beqz	$t3,.L0d9ec168
    # Line 1541
    andi	$t9,$a3,0x2
    lwc1	$f3,208($a0)
    swc1	$f3,192($a1)
    lwc1	$f2,212($a0)
    swc1	$f2,196($a1)
    lwc1	$f1,216($a0)
    swc1	$f1,200($a1)
    lw	$a3,26812($a7)
    andi	$t9,$a3,0x2
.L0d9ec168:
    beqz	$t9,.L0d9ec198
    andi	$ra,$a3,0x4
    lwc1	$f7,224($a0)
    swc1	$f7,48($a1)
    lwc1	$f6,228($a0)
    swc1	$f6,52($a1)
    lwc1	$f5,232($a0)
    swc1	$f5,56($a1)
    lwc1	$f4,236($a0)
    swc1	$f4,60($a1)
    lw	$a3,26812($a7)
    andi	$ra,$a3,0x4
.L0d9ec198:
    beqz	$ra,.L0d9ec1c0
    nop
    lwc1	$f11,192($a0)
    swc1	$f11,144($a1)
    lwc1	$f10,196($a0)
    swc1	$f10,148($a1)
    lwc1	$f9,200($a0)
    swc1	$f9,152($a1)
    lwc1	$f8,204($a0)
    swc1	$f8,156($a1)
.L0d9ec1c0:
    # Line 1542
    lw	$t9,12004($a0)
    jalr	$t9
    nop
    ld	$ra,8($sp)
    # Line 1543
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex4fFast

# Function: __glOdyim_SoftVertex4fvFast
# Declared: Line 1546 (Source lines: 1547-1562)
# Address: 0x0d9ec1e0 - 0x0d9ec35c (Size: 380 bytes, Frame: 16)
.globl __glOdyim_SoftVertex4fvFast
.ent __glOdyim_SoftVertex4fvFast
__glOdyim_SoftVertex4fvFast:
    # Line 1547
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    # Line 1548
    lwc1	$f4,0($a0)
    lwc1	$f7,4($a0)
    lwc1	$f5,8($a0)
    # Line 1549
    lw	$a7,4112($zero)
    # Line 1548
    lwc1	$f6,12($a0)
    # Line 1549
    lui	$a4,0x1
    lw	$a1,12744($a7)
    addu	$t0,$a7,$a4
    lw	$a3,26648($t0)
    # Line 1551
    sw	$zero,0($a1)
    # Line 1552
    lw	$at,12040($a7)
    # Line 1557
    move	$a6,$zero
    # Line 1556
    swc1	$f6,28($a1)
    # Line 1549
    li	$t1,1
    # Line 1547
    lui	$v0,0x11
    # Line 1555
    swc1	$f5,24($a1)
    move	$a5,$t1
    # Line 1547
    addiu	$v0,$v0,-15440
    # Line 1554
    swc1	$f7,20($a1)
    # Line 1547
    addu	$gp,$t9,$v0
    # Line 1549
    ori	$a4,$a4,0x6748
    # Line 1553
    swc1	$f4,16($a1)
    # Line 1549
    addu	$a4,$a7,$a4
    # Line 1556
    beqz	$a3,.L0d9ec2a8
    # Line 1552
    sw	$at,12($a1)
    # Line 1556
    move	$a6,$zero
    nop
    nop
    nop
.L0d9ec260:
    andi	$t2,$a3,0x1
    # Line 1557
    srl	$a3,$a3,0x1
    # Line 1556
    beqz	$t2,.L0d9ec29c
    # Line 1557
    or	$t3,$a5,$a6
    # Line 1556
    lwc1	$f0,4($a4)
    lwc1	$f1,0($a4)
    lwc1	$f2,8($a4)
    mul.s	$f0,$f0,$f7
    madd.s	$f0,$f0,$f1,$f4
    lwc1	$f1,12($a4)
    madd.s	$f0,$f0,$f2,$f5
    mul.s	$f1,$f1,$f6
    neg.s	$f1,$f1
    c.lt.s	$f0,$f1
    movt	$a6,$t3,$fcc0
.L0d9ec29c:
    # Line 1557
    addiu	$a4,$a4,16
    bnez	$a3,.L0d9ec260
    sll	$a5,$a5,0x1
.L0d9ec2a8:
    # Line 1559
    sltiu	$t9,$a6,1
    sb	$t9,401($a1)
    # Line 1558
    sb	$t1,400($a1)
    # Line 1557
    sw	$a6,4($a1)
    # Line 1559
    lw	$a3,26812($t0)
    andi	$t8,$a3,0x1
    beqz	$t8,.L0d9ec2e8
    # Line 1560
    andi	$ra,$a3,0x2
    lwc1	$f3,208($a7)
    swc1	$f3,192($a1)
    lwc1	$f2,212($a7)
    swc1	$f2,196($a1)
    lwc1	$f1,216($a7)
    swc1	$f1,200($a1)
    lw	$a3,26812($t0)
    andi	$ra,$a3,0x2
.L0d9ec2e8:
    beqz	$ra,.L0d9ec318
    andi	$at,$a3,0x4
    lwc1	$f7,224($a7)
    swc1	$f7,48($a1)
    lwc1	$f6,228($a7)
    swc1	$f6,52($a1)
    lwc1	$f5,232($a7)
    swc1	$f5,56($a1)
    lwc1	$f4,236($a7)
    swc1	$f4,60($a1)
    lw	$a3,26812($t0)
    andi	$at,$a3,0x4
.L0d9ec318:
    beqz	$at,.L0d9ec340
    nop
    lwc1	$f11,192($a7)
    swc1	$f11,144($a1)
    lwc1	$f10,196($a7)
    swc1	$f10,148($a1)
    lwc1	$f9,200($a7)
    swc1	$f9,152($a1)
    lwc1	$f8,204($a7)
    swc1	$f8,156($a1)
.L0d9ec340:
    # Line 1561
    lw	$t9,12004($a7)
    jalr	$t9
    move	$a0,$a7
    ld	$ra,8($sp)
    # Line 1562
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_SoftVertex4fvFast

