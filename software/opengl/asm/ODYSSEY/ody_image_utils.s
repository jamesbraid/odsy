# Source: ../ODYSSEY/ody_image_utils.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_utils.c
# Total Functions: 4

.text

# Function: __glOdysseyImageLogBase2
# Declared: Line 43 (Source lines: 44-56)
# Address: 0x0d9c1e40 - 0x0d9c1e80 (Size: 64 bytes, Frame: 0)
.globl __glOdysseyImageLogBase2
.ent __glOdysseyImageLogBase2
__glOdysseyImageLogBase2:
    # Line 44
    beqz	$a0,.L0d9c1e78
    # Line 48
    addiu	$v0,$a0,-1
    and	$v0,$a0,$v0
    # Line 51
    srl	$a0,$a0,0x1
    beqz	$a0,.L0d9c1e70
    # Line 48
    sltu	$v0,$zero,$v0
.L0d9c1e58:
    # Line 51
    srl	$a0,$a0,0x1
    # Line 52
    addiu	$v0,$v0,1
    # Line 51
    beqz	$a0,.L0d9c1e70
    srl	$a0,$a0,0x1
    bnez	$a0,.L0d9c1e58
    # Line 52
    addiu	$v0,$v0,1
.L0d9c1e70:
    # Line 56
    jr	$ra
    nop
.L0d9c1e78:
    jr	$ra
    # Line 51
    move	$v0,$zero
.end __glOdysseyImageLogBase2

# Function: __glOdysseyImageSaveUserBuzzRasterState
# Declared: Line 67 (Source lines: 69-88)
# Address: 0x0d9c1e80 - 0x0d9c1ff0 (Size: 368 bytes, Frame: 0)
.globl __glOdysseyImageSaveUserBuzzRasterState
.ent __glOdysseyImageSaveUserBuzzRasterState
__glOdysseyImageSaveUserBuzzRasterState:
    # Line 69
    lw	$t1,4112($zero)
    # Line 72
    lui	$t0,0x1
    addu	$t0,$t1,$t0
    # Line 81
    lw	$v0,-26984($t0)
    # Line 74
    lw	$a7,-26980($t0)
    lw	$a6,-26976($t0)
    lw	$a5,-26972($t0)
    lw	$a4,-26968($t0)
    # Line 72
    ld	$a3,31920($t1)
    sd	$a3,7152($t0)
    ld	$a2,31928($t1)
    sd	$a2,7160($t0)
    lw	$a1,31936($t1)
    sw	$a1,7168($t0)
    # Line 73
    lw	$a0,31940($t1)
    sw	$a0,7172($t0)
    lw	$v1,31944($t1)
    sw	$v1,7176($t0)
    lw	$at,31948($t1)
    sw	$at,7180($t0)
    lw	$t9,31952($t1)
    sw	$t9,7184($t0)
    lw	$t8,31956($t1)
    sw	$t8,7188($t0)
    lw	$t3,31960($t1)
    sw	$t3,7192($t0)
    lw	$t2,31964($t1)
    # Line 74
    sw	$a4,7212($t0)
    sw	$a5,7208($t0)
    sw	$a6,7204($t0)
    sw	$a7,7200($t0)
    # Line 73
    sw	$t2,7196($t0)
    # Line 75
    lw	$a3,31748($t1)
    sw	$a3,7216($t0)
    # Line 76
    lw	$a2,31740($t1)
    sw	$a2,7220($t0)
    # Line 77
    lw	$a1,31744($t1)
    sw	$a1,7224($t0)
    # Line 78
    lw	$a0,31796($t1)
    sw	$a0,7228($t0)
    # Line 79
    lw	$v1,31800($t1)
    addiu	$a7,$t0,-29716
    sw	$v1,7232($t0)
    addiu	$a6,$t0,7248
    # Line 82
    addiu	$a4,$t0,7244
    # Line 80
    lw	$at,31804($t1)
    # Line 82
    addiu	$a5,$t0,-29720
    li	$a3,0x8
    # Line 81
    sw	$v0,7240($t0)
    # Line 82
    li	$a2,16
    move	$a1,$zero
    # Line 80
    sw	$at,7236($t0)
.L0d9c1f50:
    # Line 82
    addu	$t3,$a1,$a5
    addu	$t8,$a1,$a4
    lw	$t3,0($t3)
    addiu	$a2,$a2,-2
    addu	$t2,$a1,$a7
    sw	$t3,0($t8)
    addu	$t3,$a1,$a6
    lw	$t2,0($t2)
    addu	$a1,$a1,$a3
    bgtz	$a2,.L0d9c1f50
    sw	$t2,0($t3)
    # Line 83
    lw	$t8,-29724($t0)
    sw	$t8,7308($t0)
    # Line 84
    lw	$t9,-29460($t0)
    lw	$at,-29456($t0)
    lw	$v0,-29452($t0)
    lw	$v1,-29448($t0)
    lw	$a0,-29444($t0)
    lw	$a5,-29440($t0)
    lw	$a6,-29436($t0)
    lw	$a7,-29432($t0)
    sw	$a7,7340($t0)
    sw	$a6,7336($t0)
    sw	$a5,7332($t0)
    sw	$a0,7328($t0)
    sw	$v1,7324($t0)
    sw	$v0,7320($t0)
    sw	$at,7316($t0)
    sw	$t9,7312($t0)
    # Line 85
    lw	$t9,-29464($t0)
    sw	$t9,7344($t0)
    # Line 86
    lw	$t8,-29332($t0)
    lw	$t3,-29328($t0)
    lw	$t2,-29324($t0)
    sw	$t2,7356($t0)
    sw	$t3,7352($t0)
    sw	$t8,7348($t0)
    # Line 87
    lw	$t1,31836($t1)
    # Line 88
    jr	$ra
    # Line 87
    sw	$t1,7360($t0)
.end __glOdysseyImageSaveUserBuzzRasterState

# Function: __glOdysseyImageLoadBuzzRasterState
# Declared: Line 98 (Source lines: 102-143)
# Address: 0x0d9c1ff0 - 0x0d9c21ac (Size: 444 bytes, Frame: 0)
.globl __glOdysseyImageLoadBuzzRasterState
.ent __glOdysseyImageLoadBuzzRasterState
__glOdysseyImageLoadBuzzRasterState:
    # Line 102
    lw	$t3,4112($zero)
    # Line 105
    lui	$t1,0x1
    # Line 108
    ori	$t2,$t1,0x1bf0
    # Line 105
    ori	$a7,$t1,0x1cc4
    addu	$a7,$t3,$a7
    # Line 108
    addu	$t2,$t3,$t2
    movz	$t2,$a7,$a0
    # Line 112
    lw	$a6,0($t2)
    sw	$a6,31920($t3)
    lw	$a5,4($t2)
    sw	$a5,31924($t3)
    lw	$a4,8($t2)
    sw	$a4,31928($t3)
    lw	$a3,12($t2)
    sw	$a3,31932($t3)
    lw	$a2,16($t2)
    sw	$a2,31936($t3)
    # Line 113
    lw	$a1,20($t2)
    sw	$a1,31940($t3)
    lw	$a0,24($t2)
    sw	$a0,31944($t3)
    lw	$v1,28($t2)
    sw	$v1,31948($t3)
    lw	$v0,32($t2)
    sw	$v0,31952($t3)
    lw	$at,36($t2)
    sw	$at,31956($t3)
    lw	$t9,40($t2)
    sw	$t9,31960($t3)
    lw	$t8,44($t2)
    sw	$t8,31964($t3)
    # Line 114
    addu	$t1,$t3,$t1
    lw	$a7,48($t2)
    sw	$a7,-26980($t1)
    lw	$a6,52($t2)
    sw	$a6,-26976($t1)
    lw	$a5,56($t2)
    sw	$a5,-26972($t1)
    lw	$a4,60($t2)
    sw	$a4,-26968($t1)
    # Line 115
    lw	$a3,64($t2)
    sw	$a3,31748($t3)
    # Line 116
    lw	$a2,68($t2)
    sw	$a2,31740($t3)
    # Line 117
    lw	$a1,72($t2)
    sw	$a1,31744($t3)
    # Line 118
    lw	$a0,76($t2)
    sw	$a0,31796($t3)
    # Line 119
    lw	$v1,80($t2)
    sw	$v1,31800($t3)
    li	$t0,0x8
    # Line 120
    lw	$v0,84($t2)
    addiu	$a7,$t2,96
    # Line 122
    addiu	$a6,$t1,-29720
    # Line 120
    sw	$v0,31804($t3)
    addiu	$a5,$t1,-29716
    # Line 122
    addiu	$a4,$t2,92
    # Line 121
    lw	$at,88($t2)
    # Line 122
    move	$a3,$zero
    li	$a2,16
    # Line 121
    sw	$at,-26984($t1)
    nop
    nop
    nop
.L0d9c20f0:
    # Line 122
    addu	$t9,$a3,$a4
    addu	$at,$a3,$a6
    lw	$t9,0($t9)
    addiu	$a2,$a2,-2
    addu	$t8,$a3,$a7
    sw	$t9,0($at)
    addu	$t9,$a3,$a5
    lw	$t8,0($t8)
    addu	$a3,$a3,$t0
    bgtz	$a2,.L0d9c20f0
    sw	$t8,0($t9)
    # Line 123
    lw	$at,156($t2)
    # Line 130
    li	$t9,2
    # Line 123
    sw	$at,-29724($t1)
    # Line 124
    lw	$t8,160($t2)
    sw	$t8,-29460($t1)
    lw	$t0,164($t2)
    sw	$t0,-29456($t1)
    lw	$a7,168($t2)
    sw	$a7,-29452($t1)
    lw	$a6,172($t2)
    sw	$a6,-29448($t1)
    lw	$a5,176($t2)
    sw	$a5,-29444($t1)
    lw	$a0,180($t2)
    sw	$a0,-29440($t1)
    lw	$v1,184($t2)
    sw	$v1,-29436($t1)
    lw	$v0,188($t2)
    sw	$v0,-29432($t1)
    # Line 130
    lui	$v0,0x323
    # Line 125
    lw	$a3,192($t2)
    # Line 130
    ori	$v0,$v0,0x9387
    # Line 125
    sw	$a3,-29464($t1)
    # Line 126
    lw	$a2,196($t2)
    sw	$a2,-29332($t1)
    lw	$a1,200($t2)
    sw	$a1,-29328($t1)
    lw	$a0,204($t2)
    sw	$a0,-29324($t1)
    # Line 127
    lw	$v1,208($t2)
    sw	$v1,31836($t3)
    # Line 130
    lw	$at,26976($t1)
    or	$at,$at,$v0
    sw	$at,26976($t1)
    # Line 143
    jr	$ra
    # Line 130
    sw	$t9,4120($zero)
.end __glOdysseyImageLoadBuzzRasterState

# Function: __glOdysseyImageCalcOdyEyeSpaceRasterPosZ
# Declared: Line 146 (Source lines: 147-172)
# Address: 0x0d9c21b0 - 0x0d9c2230 (Size: 128 bytes, Frame: 0)
.globl __glOdysseyImageCalcOdyEyeSpaceRasterPosZ
.ent __glOdysseyImageCalcOdyEyeSpaceRasterPosZ
__glOdysseyImageCalcOdyEyeSpaceRasterPosZ:
    # Line 148
    lw	$a0,4112($zero)
    # Line 172
    lui	$v1,0x1
    addu	$v1,$a0,$v1
    lwc1	$f4,-27212($v1)
    lwc1	$f2,-27216($v1)
    lwc1	$f7,260($a0)
    lwc1	$f5,256($a0)
    lwc1	$f0,-27224($v1)
    lwc1	$f6,-27220($v1)
    lwc1	$f1,-27192($v1)
    lwc1	$f3,-27188($v1)
    mul.s	$f0,$f0,$f5
    madd.s	$f0,$f0,$f6,$f7
    lwc1	$f6,264($a0)
    mul.s	$f1,$f1,$f5
    lwc1	$f5,-27184($v1)
    madd.s	$f1,$f1,$f3,$f7
    lwc1	$f3,268($a0)
    madd.s	$f0,$f0,$f2,$f6
    lwc1	$f2,-27180($v1)
    madd.s	$f1,$f1,$f5,$f6
    madd.s	$f0,$f0,$f4,$f3
    madd.s	$f1,$f1,$f2,$f3
    div.s	$f0,$f0,$f1
    # Line 147
    lui	$v0,0x13
    addiu	$v0,$v0,25568
    addu	$at,$t9,$v0
    # Line 172
    ldc1	$f1,_lit8_3ea0c6f7a0b5ed8d
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.end __glOdysseyImageCalcOdyEyeSpaceRasterPosZ

.rdata
_lit8_3ea0c6f7a0b5ed8d:
    .word 0x3ea0c6f7, 0xa0b5ed8d

