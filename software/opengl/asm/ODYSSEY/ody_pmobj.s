# Source: ../ODYSSEY/ody_pmobj.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_pmobj.c
# Total Functions: 29

.text

# Function: __glOdysseyInitKernel
# Declared: Line 91 (Source lines: 91-216)
# Address: 0x0d9c63c0 - 0x0d9c6650 (Size: 656 bytes, Frame: 128)
.globl __glOdysseyInitKernel
.ent __glOdysseyInitKernel
__glOdysseyInitKernel:
    # Line 97
    addiu	$v0,$a0,31608
    # Line 91
    addiu	$sp,$sp,-128
    sd	$s1,88($sp)
    # Line 97
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    sd	$v0,16($sp)
    # Line 101
    lui	$s1,0x1
    # Line 98
    lw	$v0,31564($a0)
    # Line 101
    addu	$a2,$s1,$a0
    # Line 98
    sw	$v0,8($sp)
    # Line 91
    lui	$at,0x13
    # Line 101
    lw	$a4,27760($a2)
    # Line 91
    sd	$s2,80($sp)
    addiu	$at,$at,8656
    move	$s2,$a0
    sd	$gp,104($sp)
    addu	$gp,$t9,$at
    sd	$s0,96($sp)
    # Line 102
    beqz	$a4,.L0d9c6444
    # Line 101
    move	$s0,$a4
    # Line 102
    addu	$v0,$s1,$a4
    lw	$v1,27796($v0)
    bnez	$v1,.L0d9c6444
    nop
.L0d9c6420:
    # Line 103
    lw	$s0,27760($v0)
    # Line 105
    xor	$a0,$a4,$s0
    sltiu	$a0,$a0,1
    movn	$s0,$zero,$a0
    beqz	$s0,.L0d9c6460
    addu	$v0,$s1,$s0
    lw	$a1,27796($v0)
    beqz	$a1,.L0d9c6420
    nop
.L0d9c6444:
    beqz	$s0,.L0d9c6464
    # Line 114
    li	$a4,-1
    sd	$a2,72($sp)
    sd	$ra,112($sp)
    # Line 112
    lw	$a3,31564($s0)
    b	.L0d9c6470
    sw	$a3,4($sp)
.L0d9c6460:
    # Line 114
    li	$a4,-1
.L0d9c6464:
    sw	$a4,4($sp)
    sd	$a2,72($sp)
    sd	$ra,112($sp)
.L0d9c6470:
    # Line 119
    # lw $t9, -17004($gp) # &getenv
    la	$a0,__glim_Color3f
    # Line 118
    sw	$zero,0($sp)
    # Line 119
    jal	getenv
    addiu	$a0,$a0,18024
    # Line 126
    lw	$a4,0($sp)
    # Line 120
    beqz	$v0,.L0d9c64b8
    li	$a2,89
    # Line 126
    ori	$a4,$a4,0x1
    # Line 120
    lbu	$a0,0($v0)
    li	$a1,121
    beq	$a0,$a1,.L0d9c64b4
    nop
    beq	$a0,$a2,.L0d9c64b4
    li	$a3,49
    bne	$a0,$a3,.L0d9c64bc
    # Line 129
    nop	# was lw $t9, -30516($gp) # &__glOdysseyIoctl
.L0d9c64b4:
    # Line 126
    sw	$a4,0($sp)
.L0d9c64b8:
    # Line 129
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
.L0d9c64bc:
    move	$a0,$s2
    addiu	$a2,$sp,0
    jal	__glOdysseyIoctl
    lui	$a1,0x6f64
    beqz	$v0,.L0d9c64f4
    # Line 135
    ld	$a6,72($sp)
    # Line 133
    move	$v0,$zero
.L0d9c64d8:
    # Line 216
    ld	$gp,104($sp)
    ld	$ra,112($sp)
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9c64f4:
    # Line 135
    lw	$t9,32($sp)
    sw	$t9,27964($a6)
    # Line 136
    ld	$t8,40($sp)
    sd	$t8,27936($a6)
    # Line 137
    sll	$t8,$t8,0x0
    addiu	$t8,$t8,-2304
    sw	$t8,27944($a6)
    # Line 138
    lw	$t3,12($sp)
    sw	$t3,27764($a6)
    # Line 139
    ld	$t2,48($sp)
    sw	$t2,27948($a6)
    # Line 140
    ld	$t1,56($sp)
    sd	$t1,27952($a6)
    # Line 141
    lw	$t0,64($sp)
    sw	$t0,27960($a6)
    # Line 149
    ld	$a5,24($sp)
    sll	$a7,$a5,0x0
    beqz	$a7,.L0d9c65c0
    sw	$a5,27800($a6)
    # Line 160
    # lw $t9, -32716($gp) # &sub_0d9c0000
    lui	$a0,0x1
    addiu	$t9,$t9,32512
    li	$a1,9
    ori	$a0,$a0,0x6c78
    bal __glOdysseyClosePMObjReference
    addu	$a0,$s2,$a0
    beqz	$s0,.L0d9c65e0
    # Line 197
    addu	$a1,$s1,$s0
    ld	$a2,72($sp)
    lw	$v0,25620($a1)
    sw	$v0,25620($a2)
    # Line 198
    lw	$a1,27796($a1)
    sw	$a1,27796($a2)
.L0d9c6578:
    # Line 205
    lw	$ra,8($v0)
    # Line 211
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a0,72($sp)
    # Line 205
    addiu	$ra,$ra,1
    sw	$ra,8($v0)
    # Line 211
    addiu	$t9,$t9,-32416
    lw	$a1,27764($a0)
    move	$a2,$s2
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    # Line 216
    ld	$gp,104($sp)
    ld	$ra,112($sp)
    ld	$s0,96($sp)
    li	$v0,1
    ld	$s1,88($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9c65c0:
    ld	$gp,104($sp)
    ld	$ra,112($sp)
    ld	$s0,96($sp)
    # Line 153
    move	$v0,$zero
    # Line 216
    ld	$s1,88($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9c65e0:
    # Line 170
    lw	$t9,0($s2)
    move	$a0,$s2
    jal	sub_0d9d0000
    li	$a1,540
    ld	$at,72($sp)
    beqz	$v0,.L0d9c663c
    sw	$v0,27796($at)
    # Line 183
    # lw $t9, -25716($gp) # &__glNamesNewArray
    la	$s0,sub_0d9c0000
    move	$a0,$s2
    li	$a1,1
    jal	__glNamesNewArray
    addiu	$s0,$s0,32512
    ld	$a0,72($sp)
    # Line 188
    move	$t9,$s0
    # Line 183
    sw	$v0,25620($a0)
    # Line 184
    sw	$zero,8($v0)
    # Line 188
    li	$a1,4
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    ld	$v0,72($sp)
    b	.L0d9c6578
    lw	$v0,25620($v0)
.L0d9c663c:
    # Line 175
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 177
    b	.L0d9c64d8
    move	$v0,$zero
.end __glOdysseyInitKernel

# Function: __glOdysseySharePM
# Declared: Line 225 (Source lines: 226-253)
# Address: 0x0d9c6650 - 0x0d9c66a8 (Size: 88 bytes, Frame: 0)
.globl __glOdysseySharePM
.ent __glOdysseySharePM
__glOdysseySharePM:
    # Line 226
    lui	$a6,0x1
    addu	$a3,$a6,$a1
    lw	$at,27760($a3)
    bnez	$at,.L0d9c666c
    # Line 240
    addu	$a5,$a6,$a0
    # Line 237
    sw	$a1,27760($a3)
    # Line 240
    addu	$a5,$a6,$a0
.L0d9c666c:
    sw	$a1,27760($a5)
    # Line 243
    lw	$v0,27760($a3)
    lui	$a4,0x1
    ori	$a4,$a4,0x6c70
    beq	$v0,$a1,.L0d9c66a0
    addu	$a5,$a4,$a1
    lw	$a3,0($a5)
    nop
    nop
.L0d9c6690:
    # Line 246
    addu	$a5,$a4,$a3
    lw	$a3,0($a5)
    bne	$a3,$a1,.L0d9c6690
    nop
.L0d9c66a0:
    # Line 253
    jr	$ra
    # Line 248
    sw	$a0,0($a5)
.end __glOdysseySharePM

# Function: __glOdysseyUnSharePM
# Declared: Line 261 (Source lines: 262-306)
# Address: 0x0d9c66b0 - 0x0d9c67e4 (Size: 308 bytes, Frame: 32)
.globl __glOdysseyUnSharePM
.ent __glOdysseyUnSharePM
__glOdysseyUnSharePM:
    # Line 262
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 266
    lui	$a3,0x1
    # Line 262
    sd	$s1,8($sp)
    # Line 266
    addu	$s1,$a0,$a3
    # Line 262
    move	$s0,$a0
    # Line 266
    lw	$a5,27760($s1)
    # Line 262
    lui	$at,0x13
    # Line 266
    ori	$a3,$a3,0x6c70
    # Line 262
    addiu	$at,$at,7904
    # Line 266
    addu	$a4,$a3,$a0
    sd	$gp,16($sp)
    beqz	$a5,.L0d9c6714
    # Line 262
    addu	$gp,$t9,$at
    # Line 266
    beq	$a5,$a0,.L0d9c6710
    nop
    lw	$a1,0($a4)
    nop
    nop
    nop
.L0d9c6700:
    # Line 270
    addu	$a4,$a3,$a1
    lw	$a1,0($a4)
    bne	$a1,$s0,.L0d9c6700
    nop
.L0d9c6710:
    # Line 272
    sw	$a5,0($a4)
.L0d9c6714:
    # Line 274
    lw	$a4,27796($s1)
    beqz	$a4,.L0d9c6794
    sw	$zero,27760($s1)
    # Line 282
    # lw $t9, -32716($gp) # &sub_0d9c0000
    la	$a1,sub_0d9c0000
    lui	$a0,0x1
    addiu	$t9,$t9,32544
    ori	$a0,$a0,0x6c78
    addiu	$a1,$a1,32448
    sd	$ra,24($sp)
    bal __glOdysseyClosePMObjReference
    addu	$a0,$s0,$a0
    # Line 288
    lw	$a3,25620($s1)
    # Line 290
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 288
    lw	$a2,8($a3)
    # Line 290
    addiu	$t9,$t9,-31744
    # Line 288
    addiu	$a2,$a2,-1
    sw	$a2,8($a3)
    # Line 290
    lw	$a1,27764($s1)
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($s1)
    lw	$a1,25620($s1)
    lw	$ra,8($a1)
    beqz	$ra,.L0d9c67a8
    # Line 294
    nop	# was lw $t9, -25708($gp) # &__glNamesFreeArray
.L0d9c6778:
    # Line 306
    ld	$gp,16($sp)
.L0d9c677c:
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    # Line 298
    sw	$zero,27796($s1)
    # Line 306
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c6794:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c67a8:
    # Line 294
    jal	__glNamesFreeArray
    move	$a0,$s0
    # Line 295
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,32544
    lw	$a0,27796($s1)
    bal __glOdysseyClosePMObjReference
    move	$a1,$zero
    lw	$a1,27796($s1)
    beqz	$a1,.L0d9c6778
    nop
    # Line 296
    lw	$t9,12($s0)
    jal	sub_0d9c0000
    move	$a0,$s0
    b	.L0d9c677c
    # Line 306
    ld	$gp,16($sp)
.end __glOdysseyUnSharePM

# Function: __glOdysseyCreatePMObj
# Declared: Line 346 (Source lines: 350-428)
# Address: 0x0d9c67f0 - 0x0d9c69ec (Size: 508 bytes, Frame: 240)
.globl __glOdysseyCreatePMObj
.ent __glOdysseyCreatePMObj
__glOdysseyCreatePMObj:
    # Line 350
    addiu	$sp,$sp,-112
    # Line 366
    sw	$zero,52($sp)
    # Line 367
    lw	$v1,0($a2)
    # Line 369
    sh	$a3,8($sp)
    # Line 368
    li	$a7,-1
    sw	$a7,0($sp)
    # Line 350
    move	$v0,$a1
    sd	$gp,88($sp)
    # Line 370
    addiu	$a6,$sp,12
    # Line 350
    sd	$s0,96($sp)
    lui	$at,0x13
    move	$s0,$a2
    sd	$s1,80($sp)
    addiu	$at,$at,7584
    move	$s1,$a0
    # Line 367
    sw	$v1,4($sp)
    # Line 350
    addu	$gp,$t9,$at
    sd	$ra,104($sp)
    # Line 370
    lw	$t8,0($a1)
    sw	$t8,12($sp)
    lw	$t3,4($a1)
    sw	$t3,4($a6)
    lw	$t2,8($a1)
    sw	$t2,8($a6)
    lw	$a5,12($a1)
    sw	$a5,12($a6)
    lw	$a4,16($a1)
    sw	$a4,16($a6)
    lw	$a3,20($a1)
    sw	$a3,20($a6)
    lw	$a2,24($a1)
    sw	$a2,24($a6)
    lw	$a1,28($a1)
    sw	$a1,28($a6)
    lw	$a0,32($v0)
    sw	$a0,32($a6)
    lw	$v1,36($v0)
    sw	$v1,36($a6)
    # Line 372
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    move	$a0,$s1
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    jal	__glOdysseyIoctl
    ori	$a1,$a1,0x1
    li	$a1,-1
    beqz	$v0,.L0d9c6920
    lw	$a0,4($sp)
    # Line 381
    bne	$a1,$a0,.L0d9c6908
    ld	$ra,104($sp)
    lw	$a2,0($s0)
    beq	$a1,$a2,.L0d9c6904
    # Line 390
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    lui	$a0,0x1
    addiu	$t9,$t9,-32048
    addu	$a0,$s1,$a0
    sd	$a0,72($sp)
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    # Line 391
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a0,72($sp)
    addiu	$t9,$t9,-32016
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    beqz	$v0,.L0d9c68fc
    move	$s1,$v0
    b	.L0d9c699c
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9c68fc:
    # Line 395
    lw	$a1,4($sp)
    sw	$a1,0($s0)
.L0d9c6904:
    ld	$ra,104($sp)
.L0d9c6908:
    # Line 428
    ld	$gp,88($sp)
    # Line 398
    move	$v0,$zero
    # Line 428
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9c6920:
    # Line 398
    beq	$a1,$a0,.L0d9c69d4
    ld	$ra,104($sp)
    # Line 417
    sw	$a0,0($s0)
    lw	$a2,52($sp)
    andi	$a2,$a2,0x2
    # Line 423
    lhu	$a5,64($sp)
    ld	$a3,56($sp)
    # Line 417
    beqz	$a2,.L0d9c695c
    # Line 423
    sll	$a5,$a5,0x2
    lui	$a4,0x1
    ori	$a4,$a4,0x6c94
    addu	$a4,$a4,$s1
    lw	$a4,0($a4)
    addu	$a4,$a4,$a5
    sw	$a3,28($a4)
.L0d9c695c:
    ld	$ra,104($sp)
    # Line 428
    ld	$s0,96($sp)
    li	$v0,1
    ld	$gp,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
    nop
    # Line 391
    # lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9c6980:
    ld	$a0,72($sp)
    addiu	$t9,$t9,-32016
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    beqz	$v0,.L0d9c68fc
    move	$s1,$v0
    # lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9c699c:
    addiu	$t9,$t9,31072
    # Line 392
    move	$a0,$s1
    lw	$a1,0($s0)
    bal __glOdysseyClosePMObjReference
    move	$a2,$zero
    beqz	$v0,.L0d9c6980
    # Line 391
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 393
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,32224
    move	$a0,$s1
    bal __glOdysseyClosePMObjReference
    move	$a1,$v0
    b	.L0d9c6980
    # Line 391
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9c69d4:
    # Line 428
    ld	$gp,88($sp)
    # Line 406
    move	$v0,$zero
    # Line 428
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glOdysseyCreatePMObj

# Function: __glOdysseyDestroyPMObjGroup
# Declared: Line 445 (Source lines: 448-483)
# Address: 0x0d9c69f0 - 0x0d9c6b48 (Size: 344 bytes, Frame: 144)
.globl __glOdysseyDestroyPMObjGroup
.ent __glOdysseyDestroyPMObjGroup
__glOdysseyDestroyPMObjGroup:
    # Line 448
    addiu	$sp,$sp,-144
    sd	$s8,72($sp)
    lui	$s8,0x13
    sd	$s1,112($sp)
    addiu	$s8,$s8,7072
    sd	$gp,80($sp)
    addu	$gp,$t9,$s8
    # Line 460
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 448
    sd	$s2,104($sp)
    sd	$s3,96($sp)
    # Line 460
    lui	$s3,0x1
    addiu	$t9,$t9,-32048
    # Line 448
    move	$s2,$a1
    sd	$ra,88($sp)
    # Line 460
    addu	$s3,$a0,$s3
    # Line 448
    move	$s8,$a0
    # Line 460
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($s3)
    # Line 462
    la	$s1,sub_0d9d0000
    addiu	$s1,$s1,-32016
    move	$t9,$s1
    lw	$a0,27796($s3)
    bal __glOdysseyClosePMObjReference
    sd	$s0,120($sp)
    move	$s0,$v0
    beqz	$v0,.L0d9c6ac0
    sd	$s4,128($sp)
    b	.L0d9c6a84
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
    nop
    nop
    move	$t9,$s1
.L0d9c6a70:
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($s3)
    beqz	$v0,.L0d9c6ac0
    move	$s0,$v0
    # lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9c6a84:
    la	$s4,sub_0d9c0000
    addiu	$t9,$t9,31072
    # Line 463
    move	$a0,$s0
    move	$a2,$zero
    lw	$a1,0($s2)
    bal __glOdysseyClosePMObjReference
    # Line 462
    addiu	$s4,$s4,32224
    # Line 463
    beqz	$v0,.L0d9c6a70
    # Line 462
    move	$t9,$s1
    # Line 465
    move	$t9,$s4
    move	$a0,$s0
    bal __glOdysseyClosePMObjReference
    move	$a1,$v0
    b	.L0d9c6a70
    # Line 462
    move	$t9,$s1
.L0d9c6ac0:
    # Line 473
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    addiu	$a2,$sp,0
    # Line 470
    sw	$zero,52($sp)
    # Line 473
    move	$a0,$s8
    # Line 471
    lw	$t8,0($s2)
    # Line 473
    lui	$a1,0x6f64
    ori	$a1,$a1,0x2
    jal	__glOdysseyIoctl
    # Line 471
    sw	$t8,4($sp)
    # Line 473
    beqz	$v0,.L0d9c6b14
    # Line 483
    ld	$s8,72($sp)
    ld	$s3,96($sp)
    ld	$gp,80($sp)
    ld	$s4,128($sp)
    ld	$ra,88($sp)
    ld	$s0,120($sp)
    # Line 477
    move	$v0,$zero
    ld	$s1,112($sp)
    # Line 483
    ld	$s2,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9c6b14:
    ld	$s4,128($sp)
    ld	$s0,120($sp)
    ld	$s1,112($sp)
    ld	$gp,80($sp)
    # Line 480
    li	$a2,-1
    sw	$a2,0($s2)
    # Line 483
    ld	$ra,88($sp)
    ld	$s2,104($sp)
    li	$v0,1
    ld	$s3,96($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glOdysseyDestroyPMObjGroup

# Function: __glOdysseyDestroyPMObj
# Declared: Line 493 (Source lines: 496-543)
# Address: 0x0d9c6b50 - 0x0d9c6c94 (Size: 324 bytes, Frame: 128)
.globl __glOdysseyDestroyPMObj
.ent __glOdysseyDestroyPMObj
__glOdysseyDestroyPMObj:
    # Line 496
    addiu	$sp,$sp,-128
    # Line 511
    li	$v0,1
    sw	$v0,52($sp)
    # Line 512
    lw	$v1,0($a1)
    # Line 513
    sh	$a2,8($sp)
    # Line 496
    move	$v0,$a0
    lui	$at,0x13
    # Line 515
    move	$v0,$zero
    sd	$gp,104($sp)
    # Line 496
    addiu	$at,$at,6720
    # Line 512
    sw	$v1,4($sp)
    # Line 515
    bltz	$a2,.L0d9c6b94
    # Line 496
    addu	$gp,$t9,$at
    # Line 515
    slti	$v1,$a2,17
    sd	$a1,96($sp)
    bnez	$v1,.L0d9c6ba0
    sd	$a0,88($sp)
.L0d9c6b94:
    # Line 543
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9c6ba0:
    # Line 517
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    ld	$a0,88($sp)
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    sd	$ra,112($sp)
    jal	__glOdysseyIoctl
    ori	$a1,$a1,0x2
    beqz	$v0,.L0d9c6bd4
    ld	$ra,112($sp)
    # Line 521
    move	$v0,$zero
    # Line 543
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9c6bd4:
    # Line 521
    lw	$a2,52($sp)
    beqz	$a2,.L0d9c6bec
    # Line 531
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9c6be0:
    ld	$ra,112($sp)
    b	.L0d9c6b94
    # Line 543
    li	$v0,1
.L0d9c6bec:
    # Line 531
    ld	$a0,88($sp)
    lui	$a1,0x1
    addiu	$t9,$t9,-32048
    addu	$a0,$a0,$a1
    sd	$a0,72($sp)
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    # Line 533
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a0,72($sp)
    addiu	$t9,$t9,-32016
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    beqz	$v0,.L0d9c6c84
    sd	$v0,80($sp)
    b	.L0d9c6c4c
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9c6c2c:
    # lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9c6c30:
    ld	$a0,72($sp)
    addiu	$t9,$t9,-32016
    bal __glOdysseyClosePMObjReference
    lw	$a0,27796($a0)
    beqz	$v0,.L0d9c6c84
    sd	$v0,80($sp)
    # lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9c6c4c:
    # Line 534
    ld	$a1,96($sp)
    # Line 533
    addiu	$t9,$t9,31072
    # Line 534
    ld	$a0,80($sp)
    move	$a2,$zero
    bal __glOdysseyClosePMObjReference
    lw	$a1,0($a1)
    beqz	$v0,.L0d9c6c2c
    # Line 536
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,32224
    ld	$a0,80($sp)
    bal __glOdysseyClosePMObjReference
    move	$a1,$v0
    b	.L0d9c6c30
    # Line 533
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9c6c84:
    ld	$at,96($sp)
    # Line 539
    li	$ra,-1
    b	.L0d9c6be0
    sw	$ra,0($at)
.end __glOdysseyDestroyPMObj

# Function: CheckMMXfrArgs
# Declared: Line 547 (Source lines: 547-574)
# Address: 0x0d9c6ca0 - 0x0d9c6d20 (Size: 128 bytes, Frame: 0)
.ent CheckMMXfrArgs
CheckMMXfrArgs:
    # Line 547
    lw	$a5,40($a0)
    lw	$a4,52($a0)
    lui	$a6,0xf
    ori	$a6,$a6,0xffff
    srl	$a5,$a5,0x10
    # Line 574
    li	$v0,1
    # Line 547
    lw	$a3,48($a0)
    and	$a4,$a4,$a6
    lw	$a2,24($a0)
    beqz	$a5,.L0d9c6cfc
    # Line 557
    addiu	$t0,$a5,-1
    multu	$a3,$t0
    mflo	$a6
    nop
    nop
    multu	$a4,$a5
    mflo	$a7
    addu	$a6,$a6,$a7
    slt	$a6,$a2,$a6
    beqz	$a6,.L0d9c6d18
    nop
.L0d9c6cf4:
    # Line 574
    jr	$ra
    # Line 571
    move	$v0,$zero
.L0d9c6cfc:
    # Line 547
    sll	$t1,$a3,0x10
    sll	$t2,$a4,0x10
    subu	$t1,$t1,$a3
    addu	$t1,$t1,$t2
    slt	$t1,$a2,$t1
    bnez	$t1,.L0d9c6cf4
    nop
.L0d9c6d18:
    # Line 574
    jr	$ra
    nop
.end CheckMMXfrArgs

# Function: __glOdysseyAssignToPMObj
# Declared: Line 581 (Source lines: 589-636)
# Address: 0x0d9c6d20 - 0x0d9c6e74 (Size: 340 bytes, Frame: 240)
.globl __glOdysseyAssignToPMObj
.ent __glOdysseyAssignToPMObj
__glOdysseyAssignToPMObj:
    # Line 589
    addiu	$sp,$sp,-112
    sd	$zero,72($sp)
    sd	$zero,64($sp)
    sd	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    # Line 604
    lui	$t1,0x1
    lw	$t0,20($a7)
    sd	$gp,88($sp)
    ori	$t1,$t1,0xffff
    and	$t0,$t0,$t1
    sw	$t0,20($a7)
    # Line 612
    ori	$v1,$a5,0x1
    # Line 609
    dsll32	$v0,$a3,0x0
    # Line 612
    sw	$v1,60($sp)
    # Line 609
    dsrl32	$v0,$v0,0x0
    # Line 589
    lui	$at,0x13
    # Line 609
    sd	$v0,16($sp)
    # Line 613
    addiu	$t2,$sp,28
    # Line 589
    addiu	$at,$at,6256
    # Line 608
    sh	$a2,8($sp)
    # Line 589
    addu	$gp,$t9,$at
    move	$t1,$a7
    # Line 607
    sw	$a1,4($sp)
    sd	$a0,80($sp)
    sd	$ra,96($sp)
    # Line 613
    lw	$a5,0($a7)
    sw	$a5,28($sp)
    lw	$a3,4($a7)
    sw	$a3,4($t2)
    lw	$a2,8($a7)
    sw	$a2,8($t2)
    lw	$a1,12($a7)
    sw	$a1,12($t2)
    lw	$v1,16($a7)
    sw	$v1,16($t2)
    lw	$v0,20($a7)
    sw	$v0,20($t2)
    lw	$at,24($a7)
    sw	$at,24($t2)
    lw	$t9,28($a7)
    sw	$t9,28($t2)
    # Line 619
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,27808
    # Line 615
    sw	$a6,64($sp)
    # Line 619
    addiu	$a0,$sp,0
    bal __glOdysseyDestroyPMObj
    # Line 614
    sw	$a4,24($sp)
    # Line 619
    beqz	$v0,.L0d9c6e2c
    # Line 623
    nop	# was lw $t9, -30516($gp) # &__glOdysseyIoctl
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    ld	$a0,80($sp)
    jal	__glOdysseyIoctl
    ori	$a1,$a1,0x6
    beqz	$v0,.L0d9c6e40
    ld	$ra,96($sp)
    move	$a0,$zero
    # Line 636
    move	$v0,$a0
.L0d9c6e20:
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9c6e2c:
    ld	$ra,96($sp)
    # Line 620
    move	$v0,$zero
    # Line 636
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9c6e40:
    # Line 623
    lw	$a4,60($sp)
    ld	$a2,80($sp)
    andi	$a4,$a4,0x2
    # Line 633
    li	$a0,1
    # Line 623
    lui	$a3,0x2
    # Line 633
    ld	$a5,72($sp)
    # Line 623
    beqz	$a4,.L0d9c6e6c
    addu	$a2,$a2,$a3
    # Line 631
    sw	$zero,7912($a2)
.L0d9c6e64:
    b	.L0d9c6e20
    # Line 636
    move	$v0,$a0
.L0d9c6e6c:
    b	.L0d9c6e64
    # Line 633
    sw	$a5,7912($a2)
.end __glOdysseyAssignToPMObj

# Function: __glOdysseyReadFromPMObj
# Declared: Line 643 (Source lines: 651-694)
# Address: 0x0d9c6e80 - 0x0d9c6fa8 (Size: 296 bytes, Frame: 240)
.globl __glOdysseyReadFromPMObj
.ent __glOdysseyReadFromPMObj
__glOdysseyReadFromPMObj:
    # Line 651
    addiu	$sp,$sp,-112
    # Line 663
    lw	$v1,20($a7)
    lui	$t0,0x1
    sd	$gp,88($sp)
    ori	$t0,$t0,0xffff
    and	$v1,$v1,$t0
    sw	$v1,20($a7)
    # Line 672
    sw	$a6,64($sp)
    # Line 670
    dsll32	$v0,$a3,0x0
    # Line 671
    sw	$a4,24($sp)
    # Line 670
    dsrl32	$v0,$v0,0x0
    sd	$v0,16($sp)
    # Line 651
    lui	$at,0x13
    # Line 669
    sw	$a5,60($sp)
    # Line 651
    move	$t2,$a7
    addiu	$at,$at,5904
    # Line 668
    sh	$a2,8($sp)
    # Line 673
    addiu	$t1,$sp,28
    # Line 667
    sw	$a1,4($sp)
    # Line 651
    addu	$gp,$t9,$at
    sd	$a0,80($sp)
    sd	$ra,96($sp)
    # Line 673
    lw	$a4,0($a7)
    sw	$a4,28($sp)
    lw	$a3,4($a7)
    sw	$a3,4($t1)
    lw	$a2,8($a7)
    sw	$a2,8($t1)
    lw	$a1,12($a7)
    sw	$a1,12($t1)
    lw	$v1,16($a7)
    sw	$v1,16($t1)
    lw	$v0,20($a7)
    sw	$v0,20($t1)
    lw	$at,24($a7)
    sw	$at,24($t1)
    lw	$t9,28($a7)
    sw	$t9,28($t1)
    # Line 676
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,27808
    bal __glOdysseyDestroyPMObj
    addiu	$a0,$sp,0
    beqz	$v0,.L0d9c6f64
    ld	$ra,96($sp)
    # Line 680
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    ld	$a0,80($sp)
    jal	__glOdysseyIoctl
    ori	$a1,$a1,0x6
    beqz	$v0,.L0d9c6f74
    ld	$ra,96($sp)
    move	$a0,$zero
    # Line 694
    move	$v0,$a0
.L0d9c6f58:
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9c6f64:
    # Line 677
    move	$v0,$zero
    # Line 694
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9c6f74:
    # Line 680
    lw	$a4,60($sp)
    ld	$a2,80($sp)
    andi	$a4,$a4,0x2
    # Line 690
    li	$a0,1
    # Line 680
    lui	$a3,0x2
    # Line 690
    ld	$a5,72($sp)
    # Line 680
    beqz	$a4,.L0d9c6fa0
    addu	$a2,$a2,$a3
    # Line 688
    sw	$zero,7912($a2)
.L0d9c6f98:
    b	.L0d9c6f58
    # Line 694
    move	$v0,$a0
.L0d9c6fa0:
    b	.L0d9c6f98
    # Line 690
    sw	$a5,7912($a2)
.end __glOdysseyReadFromPMObj

# Function: OpenPipeMemReference
# Declared: Line 706 (Source lines: 711-863)
# Address: 0x0d9c6fb0 - 0x0d9c716c (Size: 444 bytes, Frame: 48)
.ent OpenPipeMemReference
OpenPipeMemReference:
    # Line 711
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    # Line 741
    li	$a6,1
    # Line 711
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a1
    # Line 741
    beqz	$a4,.L0d9c70e8
    sd	$ra,32($sp)
.L0d9c6fd0:
    # Line 770
    sw	$a4,28($s0)
    # Line 769
    sw	$a3,24($s0)
    # Line 770
    lw	$at,80($s1)
    # Line 785
    lui	$a1,0x1
    li	$a3,-1
    ori	$a1,$a1,0x6c9c
    # Line 770
    bnez	$at,.L0d9c7010
    # Line 785
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    addiu	$a2,$a1,8
.L0d9c6ff8:
    lw	$a4,0($a1)
    bne	$a3,$a4,.L0d9c70d4
    nop
    sd	$a0,8($sp)
    # Line 790
    lw	$a5,0($s1)
    sw	$a5,0($a1)
.L0d9c7010:
    # Line 809
    lw	$a7,36($s0)
    sh	$a6,6($a7)
    # Line 810
    lw	$a7,36($s0)
    # Line 821
    # lw $t9, -18732($gp) # &__glOdysseyMIPS_SYNC
    # Line 810
    lhu	$a6,4($a7)
    sd	$a0,8($sp)
    addiu	$a6,$a6,1
    # Line 821
    jal	__glOdysseyMIPS_SYNC
    # Line 810
    sh	$a6,4($a7)
    # Line 830
    lw	$a1,36($s0)
    lhu	$t0,2($a1)
    bnez	$t0,.L0d9c7068
    # Line 840
    ld	$a0,8($sp)
    # Line 830
    lhu	$t1,0($a1)
    beqz	$t1,.L0d9c7064
    ld	$ra,32($sp)
.L0d9c7050:
    # Line 863
    li	$v0,1
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7064:
    # Line 840
    ld	$a0,8($sp)
.L0d9c7068:
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 833
    lw	$a4,0($s1)
    sw	$a4,0($sp)
    # Line 834
    lw	$a3,8($s0)
    sh	$a3,4($sp)
    # Line 840
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    # Line 835
    lw	$t2,12($s0)
    # Line 840
    ori	$a1,$a1,0x3
    jal	__glOdysseyIoctl
    # Line 835
    sh	$t2,6($sp)
    # Line 840
    beqz	$v0,.L0d9c7050
    ld	$ra,32($sp)
    # Line 845
    lw	$a7,36($s0)
    lhu	$a6,4($a7)
    # Line 847
    # lw $t9, -18732($gp) # &__glOdysseyMIPS_SYNC
    # Line 845
    addiu	$a6,$a6,-1
    sh	$a6,4($a7)
    # Line 846
    lw	$a5,36($s0)
    # Line 847
    jal	__glOdysseyMIPS_SYNC
    # Line 846
    sh	$zero,6($a5)
    ld	$ra,32($sp)
    # Line 848
    move	$v0,$zero
    # Line 863
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c70d4:
    # Line 788
    addiu	$a1,$a1,4
    bne	$a1,$a2,.L0d9c6ff8
    nop
    b	.L0d9c7010
    sd	$a0,8($sp)
.L0d9c70e8:
    # Line 741
    lw	$a7,28($a2)
    bne	$a7,$a6,.L0d9c6fd0
    # Line 757
    li	$t9,250
    lui	$t2,0x1
    # Line 741
    lw	$t0,24($a2)
    # Line 757
    li	$v0,150
    ori	$t8,$t2,0x46
    ori	$v1,$t2,0x19
    # Line 741
    addu	$t0,$t0,$a3
    # Line 757
    addu	$at,$t2,$a0
    # Line 760
    ori	$t3,$t2,0x658
    # Line 741
    blez	$t0,.L0d9c6fd0
    # Line 757
    ori	$ra,$t2,0x443
    # Line 761
    lui	$t1,0x12
    # Line 757
    sw	$ra,0($t2)
    sw	$t9,0($t2)
    sw	$t8,0($t2)
    sw	$t8,0($t2)
    sw	$v1,0($t2)
    sw	$ra,0($t2)
    sw	$v0,0($t2)
    sw	$t8,0($t2)
    sw	$t8,0($t2)
    sw	$t8,0($t2)
    sw	$t8,0($t2)
    sw	$zero,-26576($at)
    sw	$ra,0($t2)
    sw	$t9,0($t2)
    sw	$t8,0($t2)
    sw	$t8,0($t2)
    # Line 760
    sw	$t3,0($t2)
    # Line 761
    b	.L0d9c6fd0
    sw	$t1,0($t2)
.end OpenPipeMemReference

# Function: __glOdysseyPMObjGroupResident
# Declared: Line 871 (Source lines: 875-905)
# Address: 0x0d9c7170 - 0x0d9c7218 (Size: 168 bytes, Frame: 48)
.globl __glOdysseyPMObjGroupResident
.ent __glOdysseyPMObjGroupResident
__glOdysseyPMObjGroupResident:
    # Line 875
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,5152
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # Line 885
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 875
    sd	$a3,16($sp)
    # Line 885
    addiu	$t9,$t9,31072
    # Line 875
    sd	$a2,8($sp)
    # Line 885
    move	$a2,$zero
    bal __glOdysseyClosePMObjReference
    # Line 875
    sd	$a0,0($sp)
    # Line 905
    ld	$ra,24($sp)
    # Line 885
    bnez	$v0,.L0d9c71c0
    move	$a1,$v0
    # Line 889
    move	$v0,$zero
    # Line 905
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c71c0:
    # Line 895
    # lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$a0,0($sp)
    addiu	$t9,$t9,31472
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    bal __glOdysseyClosePMObjReference
    move	$a4,$zero
    # Line 905
    ld	$gp,32($sp)
    # Line 895
    beqz	$v0,.L0d9c7204
    move	$a1,$v0
    # Line 897
    lw	$ra,36($v0)
    lhu	$ra,0($ra)
    # Line 904
    li	$v0,1
    movz	$v0,$zero,$ra
    # Line 905
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7204:
    ld	$ra,24($sp)
    # Line 897
    move	$v0,$zero
    # Line 905
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseyPMObjGroupResident

# Function: __glOdysseyOpenPMObjReference
# Declared: Line 915 (Source lines: 921-1016)
# Address: 0x0d9c7220 - 0x0d9c7468 (Size: 584 bytes, Frame: 192)
.globl __glOdysseyOpenPMObjReference
.ent __glOdysseyOpenPMObjReference
__glOdysseyOpenPMObjReference:
    # Line 921
    move	$v0,$a0
    # Line 976
    li	$v0,1
    # Line 941
    li	$v1,-3
    # Line 921
    lui	$at,0x13
    addiu	$sp,$sp,-64
    addiu	$at,$at,4976
    sd	$gp,40($sp)
    # Line 941
    beq	$a1,$v1,.L0d9c72e8
    # Line 921
    addu	$gp,$t9,$at
    # Line 941
    li	$v1,-4
    sd	$a2,8($sp)
    beq	$a1,$v1,.L0d9c72c8
    sd	$a3,0($sp)
    sd	$a4,24($sp)
    sd	$a5,16($sp)
    # Line 980
    # lw $t9, -32716($gp) # &sub_0d9c0000
    sd	$s0,56($sp)
    sd	$a0,32($sp)
    addiu	$t9,$t9,31072
    sd	$ra,48($sp)
    li	$a2,1
    bal __glOdysseyClosePMObjReference
    ld	$a0,32($sp)
    beqz	$v0,.L0d9c7388
    move	$s0,$v0
    # Line 990
    # lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$a0,32($sp)
    addiu	$t9,$t9,31472
    move	$a1,$v0
    ld	$a2,8($sp)
    ld	$a3,0($sp)
    bal __glOdysseyClosePMObjReference
    li	$a4,1
    lw	$ra,16($v0)
    beqz	$ra,.L0d9c73a0
    # Line 1004
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$ra,48($sp)
    # Line 1000
    move	$v0,$zero
    ld	$s0,56($sp)
    # Line 976
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c72c8:
    # Line 953
    lui	$a1,0x1
    addu	$a0,$a1,$a0
    lw	$at,27988($a0)
    beqz	$a5,.L0d9c731c
    sw	$at,0($a4)
.L0d9c72dc:
    # Line 976
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c72e8:
    # Line 945
    lui	$a1,0x1
    addu	$a0,$a1,$a0
    lw	$a7,27968($a0)
    sw	$a7,0($a4)
    # Line 947
    lw	$a6,28008($a0)
    sw	$a6,16($a4)
    # Line 948
    lw	$a3,28028($a0)
    sw	$a3,20($a4)
    # Line 949
    lw	$a2,28048($a0)
    sw	$a2,24($a4)
    # Line 950
    lw	$v1,28068($a0)
    # Line 953
    bnez	$a5,.L0d9c72dc
    # Line 950
    sw	$v1,28($a4)
.L0d9c731c:
    # Line 962
    lui	$t1,0x1
    ori	$t8,$t1,0x443
    sw	$t8,0($a1)
    li	$t3,250
    sw	$t3,0($a1)
    ori	$t2,$t1,0x46
    sw	$t2,0($a1)
    sw	$t2,0($a1)
    ori	$at,$t1,0x19
    sw	$at,0($a1)
    sw	$t8,0($a1)
    li	$t9,150
    sw	$t9,0($a1)
    sw	$t2,0($a1)
    sw	$t2,0($a1)
    sw	$t2,0($a1)
    sw	$t2,0($a1)
    sw	$zero,-26576($a0)
    sw	$t8,0($a1)
    sw	$t3,0($a1)
    sw	$t2,0($a1)
    sw	$t2,0($a1)
    # Line 965
    ori	$t1,$t1,0x658
    sw	$t1,0($a1)
    # Line 966
    lui	$t0,0x12
    b	.L0d9c72dc
    sw	$t0,0($a1)
.L0d9c7388:
    ld	$ra,48($sp)
    # Line 984
    move	$v0,$zero
    ld	$s0,56($sp)
    # Line 976
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c73a0:
    # Line 1004
    ld	$a4,16($sp)
    move	$a3,$zero
    addiu	$t9,$t9,28592
    move	$a2,$v0
    move	$a1,$s0
    ld	$a0,32($sp)
    # Line 1002
    li	$v1,1
    # Line 1004
    bal __glOdysseyReadFromPMObj
    # Line 1002
    sw	$v1,16($v0)
    # Line 1004
    ld	$v1,8($sp)
    ld	$at,0($sp)
    ld	$a5,8($sp)
    ld	$a2,0($sp)
    slt	$at,$at,$v1
    ld	$a1,24($sp)
    sll	$a3,$a5,0x2
    ld	$ra,48($sp)
    bnez	$at,.L0d9c7460
    subu	$a5,$a2,$a5
    addu	$a0,$a3,$a1
    addiu	$a5,$a5,1
    sra	$a7,$a5,0x1
    addiu	$a2,$a2,1
    andi	$a4,$a5,0x1
    sll	$a2,$a2,0x2
    beqz	$a4,.L0d9c7424
    addu	$a1,$a1,$a2
    # Line 1010
    lw	$a6,8($s0)
    addu	$a6,$a6,$a3
    # Line 1009
    addiu	$a0,$a0,4
    # Line 1010
    lw	$a6,0($a6)
    # Line 1009
    addiu	$a3,$a3,4
    # Line 1010
    sw	$a6,-4($a0)
.L0d9c7424:
    beqz	$a7,.L0d9c7460
    nop
    nop
.L0d9c7430:
    lw	$t2,8($s0)
    addu	$t2,$t2,$a3
    lw	$t2,0($t2)
    sw	$t2,0($a0)
    lw	$t0,8($s0)
    # Line 1009
    addiu	$t1,$a3,4
    addiu	$a0,$a0,8
    # Line 1010
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    # Line 1009
    addiu	$a3,$a3,8
    bne	$a0,$a1,.L0d9c7430
    # Line 1010
    sw	$t0,-4($a0)
.L0d9c7460:
    # Line 1016
    b	.L0d9c72dc
    ld	$s0,56($sp)
.end __glOdysseyOpenPMObjReference

# Function: __glOdysseyOpenPMObjWriteReference
# Declared: Line 1025 (Source lines: 1030-1154)
# Address: 0x0d9c7470 - 0x0d9c76a4 (Size: 564 bytes, Frame: 192)
.globl __glOdysseyOpenPMObjWriteReference
.ent __glOdysseyOpenPMObjWriteReference
__glOdysseyOpenPMObjWriteReference:
    # Line 1030
    move	$v0,$a2
    addiu	$sp,$sp,-64
    # Line 1050
    li	$v1,-3
    # Line 1030
    lui	$at,0x13
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$at,$at,4384
    sd	$gp,40($sp)
    # Line 1050
    beq	$a1,$v1,.L0d9c7544
    # Line 1030
    addu	$gp,$t9,$at
    # Line 1050
    li	$v1,-4
    # Line 1080
    lui	$at,0x1
    ori	$at,$at,0x6d54
    sd	$a2,0($sp)
    # Line 1050
    beq	$a1,$v1,.L0d9c751c
    # Line 1080
    addu	$at,$at,$a0
    # Line 1114
    # lw $t9, -32716($gp) # &sub_0d9c0000
    sd	$a3,16($sp)
    addiu	$t9,$t9,31072
    sd	$a4,8($sp)
    sd	$ra,48($sp)
    bal __glOdysseyClosePMObjReference
    li	$a2,1
    ld	$ra,48($sp)
    # Line 1118
    move	$a0,$zero
    # Line 1114
    beqz	$v0,.L0d9c75f4
    sd	$v0,32($sp)
    # Line 1128
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,32048
    move	$a0,$s0
    ld	$a1,32($sp)
    ld	$a2,0($sp)
    bal __glOdysseyClosePMObjReference
    li	$a3,1
    lw	$ra,20($v0)
    beqz	$ra,.L0d9c7628
    # Line 1142
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$ra,48($sp)
    # Line 1137
    move	$v0,$zero
    # Line 1108
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c751c:
    # Line 1080
    lw	$at,0($at)
    sw	$at,0($a3)
.L0d9c7524:
    # Line 1076
    beqz	$a4,.L0d9c7588
    # Line 1093
    lui	$a7,0x1
.L0d9c752c:
    # Line 1108
    li	$a0,1
    ld	$s0,24($sp)
.L0d9c7534:
    move	$v0,$a0
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c7544:
    # Line 1056
    beqz	$a2,.L0d9c75fc
    li	$v1,4
    beq	$a2,$v1,.L0d9c7614
    # Line 1062
    lui	$v1,0x1
    # Line 1056
    li	$a0,5
    beq	$a2,$a0,.L0d9c7678
    li	$a1,6
    beq	$a2,$a1,.L0d9c7690
    # Line 1068
    lui	$v1,0x1
    # Line 1056
    li	$a2,7
    bne	$v0,$a2,.L0d9c7524
    # Line 1071
    lui	$a5,0x1
    ori	$a5,$a5,0x6da4
    addu	$a5,$a5,$s0
    lw	$a5,0($a5)
    # Line 1072
    b	.L0d9c7524
    # Line 1071
    sw	$a5,0($a3)
.L0d9c7588:
    # Line 1093
    ori	$t3,$a7,0x443
    sw	$t3,0($a7)
    li	$t2,250
    sw	$t2,0($a7)
    ori	$t1,$a7,0x46
    sw	$t1,0($a7)
    sw	$t1,0($a7)
    ori	$at,$a7,0x19
    sw	$at,0($a7)
    sw	$t3,0($a7)
    li	$t9,150
    sw	$t9,0($a7)
    sw	$t1,0($a7)
    sw	$t1,0($a7)
    sw	$t1,0($a7)
    sw	$t1,0($a7)
    addu	$t8,$a7,$s0
    sw	$zero,-26576($t8)
    sw	$t3,0($a7)
    sw	$t2,0($a7)
    sw	$t1,0($a7)
    sw	$t1,0($a7)
    # Line 1096
    ori	$t0,$a7,0x658
    sw	$t0,0($a7)
    # Line 1097
    lui	$a6,0x12
    b	.L0d9c752c
    sw	$a6,0($a7)
.L0d9c75f4:
    # Line 1118
    b	.L0d9c7534
    ld	$s0,24($sp)
.L0d9c75fc:
    # Line 1059
    lui	$v0,0x1
    ori	$v0,$v0,0x6d40
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    b	.L0d9c7524
    sw	$v0,0($a3)
.L0d9c7614:
    # Line 1062
    ori	$v1,$v1,0x6d68
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    # Line 1063
    b	.L0d9c7524
    # Line 1062
    sw	$v1,0($a3)
.L0d9c7628:
    # Line 1142
    ld	$a4,8($sp)
    addiu	$t9,$t9,28592
    move	$a2,$v0
    ld	$a1,32($sp)
    move	$a0,$s0
    # Line 1139
    li	$a3,1
    # Line 1142
    bal __glOdysseyReadFromPMObj
    # Line 1139
    sw	$a3,20($v0)
    ld	$s0,24($sp)
    # Line 1147
    ld	$at,32($sp)
    # Line 1142
    move	$a0,$v0
    # Line 1147
    ld	$v0,0($sp)
    lw	$at,8($at)
    ld	$ra,48($sp)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    ld	$v0,16($sp)
    lw	$at,0($at)
    # Line 1154
    b	.L0d9c7534
    # Line 1147
    sw	$at,0($v0)
.L0d9c7678:
    # Line 1065
    lui	$v0,0x1
    ori	$v0,$v0,0x6d7c
    addu	$v0,$v0,$s0
    lw	$v0,0($v0)
    # Line 1066
    b	.L0d9c7524
    # Line 1065
    sw	$v0,0($a3)
.L0d9c7690:
    # Line 1068
    ori	$v1,$v1,0x6d90
    addu	$v1,$v1,$s0
    lw	$v1,0($v1)
    # Line 1069
    b	.L0d9c7524
    # Line 1068
    sw	$v1,0($a3)
.end __glOdysseyOpenPMObjWriteReference

# Function: __glOdysseyClosePMObjWriteReference
# Declared: Line 1165 (Source lines: 1168-1253)
# Address: 0x0d9c76b0 - 0x0d9c77f4 (Size: 324 bytes, Frame: 48)
.globl __glOdysseyClosePMObjWriteReference
.ent __glOdysseyClosePMObjWriteReference
__glOdysseyClosePMObjWriteReference:
    # Line 1168
    move	$v0,$a0
    # Line 1185
    li	$v1,-3
    # Line 1168
    lui	$at,0x13
    addiu	$sp,$sp,-48
    addiu	$at,$at,3808
    sd	$gp,24($sp)
    # Line 1185
    beq	$a1,$v1,.L0d9c77d4
    # Line 1168
    addu	$gp,$t9,$at
    # Line 1185
    li	$v1,-4
    sd	$a2,8($sp)
    beq	$a1,$v1,.L0d9c77d4
    sd	$a0,0($sp)
    # Line 1193
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,31072
    ld	$a0,0($sp)
    sd	$ra,32($sp)
    bal __glOdysseyClosePMObjReference
    move	$a2,$zero
    beqz	$v0,.L0d9c77e4
    sd	$v0,16($sp)
    # Line 1202
    # lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$a0,0($sp)
    addiu	$t9,$t9,32048
    ld	$a1,16($sp)
    ld	$a2,8($sp)
    bal __glOdysseyClosePMObjReference
    move	$a3,$zero
    lw	$ra,20($v0)
    # Line 1233
    ld	$a6,0($sp)
    li	$a7,-1
    # Line 1223
    ld	$at,16($sp)
    # Line 1202
    beqz	$ra,.L0d9c77ec
    move	$a2,$v0
    # Line 1253
    ld	$gp,24($sp)
    # Line 1222
    lw	$v1,36($v0)
    # Line 1218
    sw	$zero,20($v0)
    # Line 1222
    sh	$zero,6($v1)
    # Line 1223
    lw	$v1,36($v0)
    lhu	$v0,4($v1)
    addiu	$v0,$v0,-1
    sh	$v0,4($v1)
    lw	$at,80($at)
    lui	$a5,0x1
    ld	$ra,32($sp)
    bnez	$at,.L0d9c779c
    # Line 1253
    li	$v0,1
    # Line 1233
    ld	$t1,16($sp)
    addu	$a6,$a5,$a6
    lw	$a6,27804($a6)
    lw	$t1,0($t1)
    lw	$t0,0($a6)
    bne	$t0,$t1,.L0d9c7788
    ld	$t3,16($sp)
    # Line 1238
    sw	$a7,0($a6)
.L0d9c7788:
    # Line 1233
    lw	$t3,0($t3)
    lw	$t2,4($a6)
    bne	$t2,$t3,.L0d9c779c
    nop
    # Line 1238
    sw	$a7,4($a6)
.L0d9c779c:
    # Line 1248
    lui	$at,0x1
    ori	$at,$at,0xa5a
    sw	$at,0($a5)
    lhu	$t9,32($a2)
    sw	$t9,0($a5)
    lw	$t8,36($a2)
    lhu	$t8,4($t8)
    # Line 1253
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1248
    sw	$t8,0($a5)
.L0d9c77c4:
    ld	$ra,32($sp)
    # Line 1253
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c77d4:
    # Line 1187
    li	$v0,1
    # Line 1253
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c77e4:
    # Line 1197
    b	.L0d9c77c4
    move	$v0,$zero
.L0d9c77ec:
    # Line 1216
    b	.L0d9c77c4
    move	$v0,$zero
.end __glOdysseyClosePMObjWriteReference

# Function: __glOdysseyClosePMObjReference
# Declared: Line 1264 (Source lines: 1268-1354)
# Address: 0x0d9c7800 - 0x0d9c7960 (Size: 352 bytes, Frame: 48)
.globl __glOdysseyClosePMObjReference
.ent __glOdysseyClosePMObjReference
__glOdysseyClosePMObjReference:
    # Line 1268
    move	$v0,$a0
    # Line 1285
    li	$v1,-3
    # Line 1268
    lui	$at,0x13
    addiu	$sp,$sp,-48
    addiu	$at,$at,3472
    sd	$gp,32($sp)
    # Line 1285
    beq	$a1,$v1,.L0d9c7938
    # Line 1268
    addu	$gp,$t9,$at
    sd	$a2,16($sp)
    # Line 1285
    li	$v1,-4
    sd	$a3,8($sp)
    beq	$a1,$v1,.L0d9c7938
    sd	$a0,0($sp)
    # Line 1293
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,31072
    ld	$a0,0($sp)
    sd	$ra,40($sp)
    bal __glOdysseyClosePMObjReference
    move	$a2,$zero
    beqz	$v0,.L0d9c7948
    sd	$v0,24($sp)
    # Line 1303
    # lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$a0,0($sp)
    ld	$a1,24($sp)
    addiu	$t9,$t9,31472
    ld	$a2,16($sp)
    ld	$a3,8($sp)
    bal __glOdysseyClosePMObjReference
    move	$a4,$zero
    # Line 1333
    ld	$t1,24($sp)
    # Line 1303
    beqz	$v0,.L0d9c7950
    move	$a2,$v0
    # Line 1307
    lw	$ra,16($v0)
    beqz	$ra,.L0d9c7958
    nop
    # Line 1322
    lw	$v1,36($v0)
    # Line 1318
    sw	$zero,16($v0)
    # Line 1322
    sh	$zero,6($v1)
    # Line 1323
    lw	$v1,36($v0)
    lhu	$v0,4($v1)
    ld	$at,24($sp)
    addiu	$v0,$v0,-1
    sh	$v0,4($v1)
    lw	$at,80($at)
    # Line 1354
    ld	$gp,32($sp)
    # Line 1323
    lui	$a3,0x1
    ld	$ra,40($sp)
    bnez	$at,.L0d9c7900
    # Line 1354
    li	$v0,1
    # Line 1333
    ld	$a6,0($sp)
    lw	$t1,0($t1)
    ld	$t3,24($sp)
    addu	$a6,$a3,$a6
    li	$a7,-1
    lw	$a6,27804($a6)
    lw	$t0,0($a6)
    bne	$t0,$t1,.L0d9c78ec
    nop
    # Line 1338
    sw	$a7,0($a6)
.L0d9c78ec:
    # Line 1333
    lw	$t3,0($t3)
    lw	$t2,4($a6)
    bne	$t2,$t3,.L0d9c7900
    nop
    # Line 1338
    sw	$a7,4($a6)
.L0d9c7900:
    # Line 1349
    lui	$at,0x1
    ori	$at,$at,0xa5a
    sw	$at,0($a3)
    lhu	$t9,32($a2)
    sw	$t9,0($a3)
    lw	$t8,36($a2)
    lhu	$t8,4($t8)
    # Line 1354
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1349
    sw	$t8,0($a3)
.L0d9c7928:
    ld	$ra,40($sp)
    # Line 1354
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7938:
    # Line 1287
    li	$v0,1
    # Line 1354
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7948:
    # Line 1297
    b	.L0d9c7928
    move	$v0,$zero
.L0d9c7950:
    # Line 1307
    b	.L0d9c7928
    move	$v0,$zero
.L0d9c7958:
    # Line 1316
    b	.L0d9c7928
    move	$v0,$zero
.end __glOdysseyClosePMObjReference

# Function: LookupKnownGroup
# Declared: Line 1365 (Source lines: 1369-1438)
# Address: 0x0d9c7960 - 0x0d9c7ae4 (Size: 388 bytes, Frame: 48)
.ent LookupKnownGroup
LookupKnownGroup:
    # Line 1369
    move	$v0,$a0
    # Line 1382
    li	$at,-3
    li	$v1,-4
    # Line 1369
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 1382
    beq	$a1,$at,.L0d9c7a98
    # Line 1369
    move	$s0,$a1
    sd	$a2,8($sp)
    # Line 1382
    beq	$a1,$v1,.L0d9c7a98
    sd	$a0,32($sp)
    # Line 1389
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a0,32($sp)
    lui	$a2,0x1
    addiu	$t9,$t9,-31632
    sd	$ra,40($sp)
    ori	$a2,$a2,0x6c78
    addu	$a0,$a0,$a2
    bal __glOdysseyClosePMObjReference
    sd	$a0,0($sp)
    ld	$ra,40($sp)
    beqz	$v0,.L0d9c79c4
    move	$a1,$v0
    # Line 1438
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c79c4:
    # Line 1390
    ld	$a3,8($sp)
    beqz	$a3,.L0d9c7aa8
    # Line 1393
    move	$v0,$zero
    # Line 1400
    ld	$t9,32($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d9d0000
    li	$a1,84
    beqz	$v0,.L0d9c7acc
    sd	$v0,24($sp)
    # Line 1415
    ld	$at,24($sp)
    # Line 1421
    ld	$a0,0($sp)
    # Line 1415
    sdl	$zero,0($at)
    sdr	$zero,7($at)
    sdl	$zero,8($at)
    sdr	$zero,15($at)
    sdl	$zero,16($at)
    sdr	$zero,23($at)
    sdl	$zero,24($at)
    sdr	$zero,31($at)
    sdl	$zero,32($at)
    sdr	$zero,39($at)
    sdl	$zero,40($at)
    sdr	$zero,47($at)
    sdl	$zero,48($at)
    sdr	$zero,55($at)
    sdl	$zero,56($at)
    sdr	$zero,63($at)
    sdl	$zero,64($at)
    sdr	$zero,71($at)
    sdl	$zero,72($at)
    # Line 1421
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 1415
    sdr	$zero,79($at)
    swl	$zero,80($at)
    # Line 1421
    addiu	$t9,$t9,32144
    # Line 1415
    swr	$zero,83($at)
    # Line 1421
    move	$a1,$at
    bal __glOdysseyClosePMObjReference
    # Line 1416
    sw	$s0,0($at)
    # Line 1430
    # lw $t9, -32716($gp) # &sub_0d9c0000
    ld	$s0,16($sp)
    addiu	$t9,$t9,31472
    ld	$a0,32($sp)
    move	$a2,$zero
    li	$a4,1
    ld	$a1,24($sp)
    bal __glOdysseyClosePMObjReference
    li	$a3,15
    beqz	$v0,.L0d9c7ab0
    # Line 1438
    ld	$v0,24($sp)
.L0d9c7a8c:
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7a98:
    # Line 1383
    move	$v0,$zero
    # Line 1438
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7aa8:
    # Line 1393
    b	.L0d9c7a8c
    ld	$s0,16($sp)
.L0d9c7ab0:
    # Line 1434
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,32224
    ld	$a0,32($sp)
    bal __glOdysseyClosePMObjReference
    ld	$a1,24($sp)
    # Line 1435
    b	.L0d9c7a8c
    move	$v0,$zero
.L0d9c7acc:
    # Line 1404
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,16($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 1406
    b	.L0d9c7a8c
    move	$v0,$zero
.end LookupKnownGroup

# Function: LookupCoresidRange
# Declared: Line 1447 (Source lines: 1452-1565)
# Address: 0x0d9c7af0 - 0x0d9c7d28 (Size: 568 bytes, Frame: 224)
.ent LookupCoresidRange
LookupCoresidRange:
    # Line 1459
    sll	$t0,$a2,0x2
    addu	$t0,$a1,$t0
    lw	$a7,12($t0)
    # Line 1452
    move	$v0,$a0
    addiu	$sp,$sp,-96
    sd	$s0,80($sp)
    # Line 1459
    beqz	$a7,.L0d9c7b2c
    # Line 1452
    move	$s0,$a3
.L0d9c7b10:
    # Line 1459
    lw	$t1,12($a7)
    slt	$t1,$t1,$s0
    beqz	$t1,.L0d9c7c04
    nop
    # Line 1463
    lw	$a7,0($a7)
    bnez	$a7,.L0d9c7b10
    nop
.L0d9c7b2c:
    sd	$t0,64($sp)
    sd	$a2,56($sp)
    sd	$a1,48($sp)
    sd	$v0,40($sp)
    # Line 1467
    move	$v0,$zero
    # Line 1463
    beqz	$a4,.L0d9c7c14
    sd	$ra,88($sp)
    # Line 1474
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jalr	$t9
    li	$a1,44
    beqz	$v0,.L0d9c7d14
    sd	$v0,72($sp)
    # Line 1509
    ld	$a0,40($sp)
    # Line 1492
    ld	$a3,56($sp)
    # Line 1491
    ld	$v1,72($sp)
    ld	$at,48($sp)
    # Line 1497
    li	$v0,-1
    # Line 1498
    sw	$v0,28($v1)
    # Line 1497
    sw	$v0,24($v1)
    # Line 1496
    sw	$zero,0($v1)
    # Line 1495
    sw	$zero,16($v1)
    # Line 1494
    sw	$zero,20($v1)
    # Line 1493
    sw	$s0,12($v1)
    # Line 1492
    sw	$a3,8($v1)
    # Line 1491
    sw	$zero,40($v1)
    sw	$zero,36($v1)
    sw	$zero,32($v1)
    sw	$at,4($v1)
    # Line 1503
    lw	$at,0($at)
    # Line 1506
    li	$a4,2
    sw	$a4,0($sp)
    # Line 1509
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 1505
    sh	$s0,10($sp)
    # Line 1509
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    # Line 1504
    sh	$a3,8($sp)
    # Line 1509
    ori	$a1,$a1,0x4
    jal	__glOdysseyIoctl
    # Line 1503
    sw	$at,4($sp)
    # Line 1509
    beqz	$v0,.L0d9c7c1c
    ld	$a0,72($sp)
    beqz	$a0,.L0d9c7bf0
    # Line 1510
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a1,72($sp)
.L0d9c7bf0:
    # Line 1514
    move	$v0,$zero
.L0d9c7bf4:
    ld	$ra,88($sp)
.L0d9c7bf8:
    # Line 1565
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c7c04:
    # Line 1462
    move	$v0,$a7
    # Line 1565
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c7c14:
    # Line 1467
    b	.L0d9c7bf8
    ld	$ra,88($sp)
.L0d9c7c1c:
    # Line 1524
    ld	$v0,40($sp)
    # Line 1514
    lw	$ra,0($sp)
    # Line 1524
    ld	$at,24($sp)
    # Line 1532
    ld	$a4,40($sp)
    # Line 1514
    andi	$ra,$ra,0x10
    lui	$a2,0x1
    # Line 1524
    lhu	$v1,32($sp)
    # Line 1531
    ld	$a7,48($sp)
    # Line 1532
    addu	$a3,$a2,$a4
    # Line 1514
    beqz	$ra,.L0d9c7c54
    # Line 1524
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    addu	$v0,$a2,$v0
    sw	$at,27804($v0)
.L0d9c7c54:
    # Line 1531
    lhu	$t3,12($sp)
    sh	$t3,4($a7)
    # Line 1532
    lhu	$t1,12($sp)
    lw	$t0,27796($a3)
    srl	$t2,$t1,0x8
    sll	$t2,$t2,0x2
    addu	$t0,$t0,$t2
    andi	$t1,$t1,0xff
    lw	$t0,28($t0)
    # Line 1541
    ld	$v0,72($sp)
    # Line 1532
    sll	$t1,$t1,0x6
    addu	$t0,$t0,$t1
    sw	$t0,8($a7)
    # Line 1535
    lhu	$a6,14($sp)
    sw	$a6,80($a7)
    # Line 1541
    lhu	$a5,16($sp)
    sh	$a5,32($v0)
    # Line 1542
    lhu	$a5,16($sp)
    lw	$a3,27800($a3)
    addu	$a5,$a5,$a5
    addu	$a3,$a3,$a5
    sw	$a3,40($v0)
    # Line 1544
    lhu	$a7,18($sp)
    sh	$a7,34($v0)
    # Line 1545
    lhu	$a5,18($sp)
    srl	$a6,$a5,0xa
    sll	$a6,$a6,0x2
    addu	$a4,$a4,$a6
    addu	$a4,$a2,$a4
    andi	$a5,$a5,0x3ff
    lw	$a4,27804($a4)
    # Line 1565
    ld	$s0,80($sp)
    # Line 1545
    sll	$a5,$a5,0x4
    addu	$a4,$a4,$a5
    sw	$a4,36($v0)
    # Line 1550
    lhu	$a3,0($a3)
    sh	$a3,4($a4)
    # Line 1551
    lw	$a2,36($v0)
    ld	$ra,88($sp)
    sh	$zero,6($a2)
    # Line 1552
    lw	$a1,36($v0)
    # Line 1555
    ld	$v1,64($sp)
    # Line 1552
    sw	$zero,8($a1)
    # Line 1555
    lw	$a0,12($v1)
    sw	$a0,0($v0)
    # Line 1565
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1556
    sw	$v0,12($v1)
.L0d9c7d14:
    # Line 1478
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 1479
    b	.L0d9c7bf4
    move	$v0,$zero
.end LookupCoresidRange

# Function: LookupCoresidRangeWithLevel
# Declared: Line 1576 (Source lines: 1580-1609)
# Address: 0x0d9c7d30 - 0x0d9c7d8c (Size: 92 bytes, Frame: 0)
.ent LookupCoresidRangeWithLevel
LookupCoresidRangeWithLevel:
    # Line 1580
    bltz	$a2,.L0d9c7d74
    move	$a4,$a3
    sll	$a7,$a2,0x2
    addiu	$t0,$a1,-4
    addu	$a7,$a1,$a7
    # Line 1594
    lw	$v0,12($a7)
.L0d9c7d48:
    beqz	$v0,.L0d9c7d6c
    # Line 1593
    addiu	$a7,$a7,-4
.L0d9c7d50:
    # Line 1594
    lw	$t1,12($v0)
    slt	$t1,$t1,$a2
    beqz	$t1,.L0d9c7d84
    nop
    # Line 1599
    lw	$v0,0($v0)
    bnez	$v0,.L0d9c7d50
    nop
.L0d9c7d6c:
    # Line 1593
    bnel	$a7,$t0,.L0d9c7d48
    # Line 1594
    lw	$v0,12($a7)
.L0d9c7d74:
    # Line 1609
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,31472
    bgezl	$zero,__glOdysseyClosePMObjReference
    move	$a3,$a2
.L0d9c7d84:
    # Line 1597
    jr	$ra
    nop
.end LookupCoresidRangeWithLevel

# Function: AddKnownGroup
# Declared: Line 1616 (Source lines: 1617-1624)
# Address: 0x0d9c7d90 - 0x0d9c7dd4 (Size: 68 bytes, Frame: 16)
.ent AddKnownGroup
AddKnownGroup:
    # Line 1618
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 1617
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 1618
    addiu	$t9,$t9,-32416
    move	$a2,$a1
    # Line 1617
    sd	$s8,8($sp)
    move	$s8,$a1
    # Line 1618
    bal __glOdysseyClosePMObjReference
    lw	$a1,0($a1)
    lw	$s8,0($s8)
    ld	$ra,0($sp)
    xor	$s8,$v0,$s8
    # Line 1622
    li	$v0,1
    movz	$v0,$zero,$s8
    # Line 1624
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end AddKnownGroup

# Function: RemoveKnownGroup
# Declared: Line 1632 (Source lines: 1633-1659)
# Address: 0x0d9c7de0 - 0x0d9c7eb4 (Size: 212 bytes, Frame: 48)
.ent RemoveKnownGroup
RemoveKnownGroup:
    # Line 1633
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$s3,8($sp)
    sd	$s4,16($sp)
    sd	$s2,0($sp)
    move	$s2,$a0
    move	$s4,$a1
    sd	$s1,24($sp)
    move	$s1,$a1
    addiu	$s3,$a1,64
    sd	$s0,40($sp)
    nop
.L0d9c7e10:
    # Line 1642
    lw	$s0,12($s1)
    bnez	$s0,.L0d9c7e78
    # Line 1644
    move	$a1,$s0
.L0d9c7e1c:
    # Line 1640
    addiu	$s1,$s1,4
.L0d9c7e20:
    bne	$s1,$s3,.L0d9c7e10
    # Line 1653
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    lui	$a0,0x1
    addiu	$t9,$t9,-31744
    ori	$a0,$a0,0x6c78
    lw	$a1,0($s4)
    bal __glOdysseyClosePMObjReference
    addu	$a0,$s2,$a0
    ld	$s3,8($sp)
    ld	$s0,40($sp)
    bnez	$s4,.L0d9c7e9c
    ld	$s1,24($sp)
    ld	$ra,32($sp)
.L0d9c7e54:
    # Line 1659
    li	$v0,1
    ld	$s2,0($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
    nop
    nop
.L0d9c7e70:
    # Line 1646
    beqz	$s0,.L0d9c7e1c
    # Line 1644
    move	$a1,$s0
.L0d9c7e78:
    # Line 1645
    beqz	$s0,.L0d9c7e70
    lw	$s0,0($s0)
    # Line 1646
    lw	$t9,12($s2)
    jal	sub_0d9d0000
    move	$a0,$s2
    bnez	$s0,.L0d9c7e78
    # Line 1644
    move	$a1,$s0
    b	.L0d9c7e20
    # Line 1640
    addiu	$s1,$s1,4
.L0d9c7e9c:
    # Line 1657
    lw	$t9,12($s2)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s4
    b	.L0d9c7e54
    ld	$ra,32($sp)
.end RemoveKnownGroup

# Function: DestroyKnownGroup
# Declared: Line 1665 (Source lines: 1666-1669)
# Address: 0x0d9c7ec0 - 0x0d9c7efc (Size: 60 bytes, Frame: 16)
.ent DestroyKnownGroup
DestroyKnownGroup:
    # Line 1666
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,1744
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 1668
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,32224
    # Line 1666
    move	$a1,$a0
    # Line 1668
    bal __glOdysseyClosePMObjReference
    lw	$a0,4112($zero)
    ld	$ra,0($sp)
    # Line 1669
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end DestroyKnownGroup

# Function: InitCSet
# Declared: Line 1678 (Source lines: 1680-1683)
# Address: 0x0d9c7f00 - 0x0d9c7f14 (Size: 20 bytes, Frame: 0)
.ent InitCSet
InitCSet:
    # Line 1682
    sw	$a1,24($a0)
    # Line 1681
    sw	$zero,8($a0)
    sw	$zero,12($a0)
    # Line 1683
    jr	$ra
    # Line 1680
    sw	$zero,0($a0)
.end InitCSet

# Function: DestroyCSet
# Declared: Line 1690 (Source lines: 1691-1717)
# Address: 0x0d9c7f20 - 0x0d9c8064 (Size: 324 bytes, Frame: 208)
.ent DestroyCSet
DestroyCSet:
    # Line 1695
    lw	$a3,24($a0)
    # Line 1691
    addiu	$sp,$sp,-80
    sd	$s5,8($sp)
    # Line 1698
    lw	$s5,0($a0)
    # Line 1691
    sd	$s8,0($sp)
    # Line 1698
    lw	$at,8($a0)
    # Line 1691
    sd	$s6,24($sp)
    move	$s6,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    # Line 1698
    blez	$at,.L0d9c8030
    # Line 1692
    lw	$s8,4112($zero)
    sd	$s0,64($sp)
    sd	$ra,48($sp)
    sd	$s3,40($sp)
    sd	$s7,72($sp)
    # Line 1698
    li	$s7,1
    sd	$s4,56($sp)
    sllv	$s7,$s7,$a3
    move	$s4,$zero
    sd	$s2,32($sp)
    b	.L0d9c7fb0
    sll	$s2,$s7,0x2
    nop
.L0d9c7f80:
    # Line 1703
    beqz	$a1,.L0d9c7f94
    nop
    # Line 1711
    lw	$t9,12($s8)
    jalr	$t9
    move	$a0,$s8
.L0d9c7f94:
    # Line 1712
    bnez	$s3,.L0d9c8000
    lw	$s5,8($s3)
    # Line 1698
    lw	$t8,8($s6)
.L0d9c7fa0:
    addiu	$s4,$s4,1
    slt	$t8,$s4,$t8
    beqz	$t8,.L0d9c8018
    nop
.L0d9c7fb0:
    blez	$s7,.L0d9c8058
    move	$s3,$s5
    move	$s0,$zero
    b	.L0d9c7fd8
    lw	$a1,0($s5)
    nop
    nop
    nop
.L0d9c7fd0:
    # Line 1703
    addiu	$s0,$s0,4
    beq	$s0,$s2,.L0d9c7f80
.L0d9c7fd8:
    # Line 1705
    addu	$a0,$a1,$s0
    lw	$a0,0($a0)
    beqz	$a0,.L0d9c7fd0
    nop
    beqz	$s1,.L0d9c7fd0
    # Line 1706
    move	$t9,$s1
    jalr	$t9
    nop
    b	.L0d9c7fd0
    lw	$a1,0($s3)
.L0d9c8000:
    # Line 1713
    lw	$t9,12($s8)
    move	$a0,$s8
    jalr	$t9
    move	$a1,$s3
    b	.L0d9c7fa0
    # Line 1698
    lw	$t8,8($s6)
.L0d9c8018:
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
    ld	$s0,64($sp)
    ld	$s7,72($sp)
.L0d9c8030:
    # Line 1716
    # lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 1717
    ld	$s1,16($sp)
    ld	$s5,8($sp)
    # Line 1716
    addiu	$t9,$t9,32512
    move	$a1,$zero
    move	$a0,$s6
    # Line 1717
    ld	$s6,24($sp)
    ld	$s8,0($sp)
    bgezl	$zero,__glOdysseyClosePMObjReference
    addiu	$sp,$sp,80
.L0d9c8058:
    # Line 1703
    move	$s3,$s5
    b	.L0d9c7f80
    lw	$a1,0($s5)
.end DestroyCSet

# Function: NewChunkNode
# Declared: Line 1722 (Source lines: 1723-1742)
# Address: 0x0d9c8070 - 0x0d9c8160 (Size: 240 bytes, Frame: 48)
.ent NewChunkNode
NewChunkNode:
    # Line 1723
    addiu	$sp,$sp,-48
    sd	$s1,32($sp)
    # Line 1724
    lw	$s1,4112($zero)
    # Line 1729
    lw	$t9,0($s1)
    sd	$s0,8($sp)
    li	$a1,16
    # Line 1723
    sd	$s2,16($sp)
    move	$s2,$a0
    sd	$ra,24($sp)
    # Line 1729
    jalr	$t9
    move	$a0,$s1
    # Line 1730
    li	$a1,1
    lw	$t9,0($s1)
    sllv	$a1,$a1,$s2
    # Line 1729
    move	$s0,$v0
    # Line 1730
    sll	$a1,$a1,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,0($sp)
    # Line 1732
    beqz	$s0,.L0d9c8100
    # Line 1730
    move	$s2,$v0
    # Line 1732
    bnez	$v0,.L0d9c8120
    nop
.L0d9c80cc:
    # Line 1733
    beqz	$s0,.L0d9c80e8
    # Line 1735
    ld	$ra,24($sp)
    # Line 1734
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    # Line 1735
    ld	$ra,24($sp)
.L0d9c80e8:
    ld	$s0,8($sp)
    move	$v0,$zero
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c8100:
    # Line 1732
    beqz	$v0,.L0d9c80cc
    nop
    # Line 1733
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$v0
    b	.L0d9c80cc
    nop
.L0d9c8120:
    # Line 1735
    sw	$zero,12($s0)
    sw	$zero,8($s0)
    # Line 1739
    # lw $t9, -16936($gp) # &bzero
    ld	$a1,0($sp)
    # Line 1735
    sw	$zero,4($s0)
    # Line 1739
    move	$a0,$v0
    jal	bzero
    # Line 1735
    sw	$zero,0($s0)
    # Line 1740
    sw	$s2,0($s0)
    # Line 1735
    ld	$ra,24($sp)
    # Line 1742
    move	$v0,$s0
    # Line 1735
    ld	$s0,8($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end NewChunkNode

# Function: AllocSpecificCSetId
# Declared: Line 1754 (Source lines: 1755-1801)
# Address: 0x0d9c8160 - 0x0d9c82c8 (Size: 360 bytes, Frame: 208)
.ent AllocSpecificCSetId
AllocSpecificCSetId:
    # Line 1755
    addiu	$sp,$sp,-80
    sd	$a1,32($sp)
    sd	$ra,8($sp)
    sd	$s2,24($sp)
    sd	$a2,40($sp)
    # Line 1757
    lw	$a2,24($a0)
    # Line 1755
    sd	$s0,64($sp)
    # Line 1758
    li	$v1,1
    # Line 1755
    move	$s0,$a0
    # Line 1758
    lw	$v0,8($a0)
    sllv	$v1,$v1,$a2
    # Line 1767
    move	$s2,$zero
    # Line 1755
    sd	$s1,56($sp)
    # Line 1757
    srav	$s1,$a1,$a2
    sd	$s4,0($sp)
    # Line 1767
    subu	$s4,$s1,$v0
    # Line 1758
    slt	$at,$s1,$v0
    sd	$s3,16($sp)
    addiu	$v1,$v1,-1
    # Line 1767
    addiu	$s4,$s4,1
    # Line 1758
    and	$v1,$a1,$v1
    bnez	$at,.L0d9c81cc
    sd	$v1,48($sp)
    # Line 1767
    blez	$s4,.L0d9c81cc
    la	$s3,sub_0d9d0000
    b	.L0d9c8274
    addiu	$s3,$s3,-32656
.L0d9c81cc:
    ld	$s4,0($sp)
    ld	$s3,16($sp)
    ld	$s2,24($sp)
    # Line 1796
    ld	$a3,48($sp)
    # Line 1793
    lw	$a5,0($s0)
    move	$v0,$zero
    blez	$s1,.L0d9c81fc
    # Line 1796
    sll	$a3,$a3,0x2
    nop
.L0d9c81f0:
    # Line 1793
    addiu	$v0,$v0,1
    bne	$s1,$v0,.L0d9c81f0
    lw	$a5,8($a5)
.L0d9c81fc:
    # Line 1796
    lw	$a2,0($a5)
    # Line 1801
    ld	$v0,32($sp)
    # Line 1796
    ld	$a1,40($sp)
    addu	$a2,$a2,$a3
    sw	$a1,0($a2)
    # Line 1798
    lw	$a0,4($a5)
    ld	$ra,8($sp)
    addiu	$a0,$a0,1
    sw	$a0,4($a5)
    # Line 1799
    lw	$v1,12($s0)
    # Line 1801
    ld	$s1,56($sp)
    # Line 1799
    addiu	$v1,$v1,1
    sw	$v1,12($s0)
    # Line 1801
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
.L0d9c8240:
    # Line 1779
    sw	$a0,8($v0)
    # Line 1780
    lw	$a6,0($s0)
    lw	$a6,12($a6)
    sw	$a6,12($v0)
    # Line 1781
    lw	$a5,0($s0)
    sw	$v0,12($a5)
    # Line 1782
    lw	$a4,12($v0)
    sw	$v0,8($a4)
.L0d9c8260:
    # Line 1785
    sw	$zero,4($v0)
    # Line 1786
    lw	$a7,8($s0)
    addiu	$a7,$a7,1
    # Line 1770
    beq	$s4,$s2,.L0d9c81cc
    # Line 1786
    sw	$a7,8($s0)
.L0d9c8274:
    # Line 1773
    move	$t9,$s3
    bal __glOdysseyClosePMObjReference
    lw	$a0,24($s0)
    beqz	$v0,.L0d9c82a4
    # Line 1770
    addiu	$s2,$s2,1
    # Line 1773
    lw	$a0,0($s0)
    bnez	$a0,.L0d9c8240
    nop
    # Line 1776
    sw	$v0,12($v0)
    sw	$v0,8($v0)
    b	.L0d9c8260
    sw	$v0,0($s0)
.L0d9c82a4:
    # Line 1801
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,8($sp)
    ld	$s2,24($sp)
    # Line 1773
    li	$v0,-1
    # Line 1801
    ld	$s3,16($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end AllocSpecificCSetId

# Function: InitCSetCursor
# Declared: Line 1811 (Source lines: 1813-1816)
# Address: 0x0d9c82d0 - 0x0d9c82e4 (Size: 20 bytes, Frame: 0)
.ent InitCSetCursor
InitCSetCursor:
    # Line 1815
    sw	$zero,20($a0)
    # Line 1814
    sw	$zero,16($a0)
    # Line 1813
    lw	$at,0($a0)
    # Line 1816
    jr	$ra
    # Line 1813
    sw	$at,4($a0)
.end InitCSetCursor

# Function: NextCSetElem
# Declared: Line 1822 (Source lines: 1828-1876)
# Address: 0x0d9c82f0 - 0x0d9c8400 (Size: 272 bytes, Frame: 0)
.ent NextCSetElem
NextCSetElem:
    # Line 1828
    lw	$a4,4($a0)
    beqz	$a4,.L0d9c8308
    nop
    lw	$at,20($a0)
    beqz	$at,.L0d9c8314
    nop
.L0d9c8308:
    # Line 1832
    sw	$zero,20($a0)
    # Line 1876
    jr	$ra
    # Line 1833
    move	$v0,$zero
.L0d9c8314:
    # Line 1836
    lw	$a3,16($a0)
    lw	$a7,24($a0)
    li	$t0,1
    mtc1	$a3,$f0
    sllv	$a7,$t0,$a7
    mtc1	$a7,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    mult	$a6,$a7
    teq	$a7,$zero,0x7
    sll	$a6,$a7,0x2
    mflo	$a5
    subu	$a3,$a3,$a5
    sw	$a3,16($a0)
    move	$a5,$zero
    # Line 1845
    sll	$a2,$a3,0x2
.L0d9c8360:
    # Line 1836
    lw	$t1,4($a4)
    beqz	$t1,.L0d9c83f4
    # Line 1845
    slt	$t2,$a3,$a7
    beqz	$t2,.L0d9c83a4
    nop
    nop
    nop
    nop
.L0d9c8380:
    # Line 1849
    lw	$a5,0($a4)
    addu	$a5,$a5,$a2
    lw	$a5,0($a5)
    bnez	$a5,.L0d9c83c8
    # Line 1848
    addiu	$a2,$a2,4
    slt	$t1,$a2,$a6
    addiu	$a3,$a3,1
    bnez	$t1,.L0d9c8380
    sw	$a3,16($a0)
.L0d9c83a4:
    # Line 1868
    sw	$zero,16($a0)
    # Line 1869
    lw	$a4,8($a4)
    # Line 1868
    move	$a3,$zero
    # Line 1869
    sw	$a4,4($a0)
.L0d9c83b4:
    # Line 1871
    lw	$t2,0($a0)
    bne	$t2,$a4,.L0d9c8360
    # Line 1845
    sll	$a2,$a3,0x2
    # Line 1876
    jr	$ra
    move	$v0,$a5
.L0d9c83c8:
    # Line 1850
    addiu	$t3,$a3,1
    bne	$a7,$t3,.L0d9c83ec
    sw	$t3,16($a0)
    # Line 1855
    lw	$t9,0($a0)
    # Line 1854
    sw	$zero,16($a0)
    # Line 1855
    lw	$t8,8($a4)
    bne	$t9,$t8,.L0d9c83ec
    sw	$t8,4($a0)
    # Line 1858
    sw	$t0,20($a0)
.L0d9c83ec:
    # Line 1876
    jr	$ra
    # Line 1864
    move	$v0,$a5
.L0d9c83f4:
    # Line 1844
    lw	$a4,8($a4)
    # Line 1845
    b	.L0d9c83b4
    # Line 1844
    sw	$a4,4($a0)
.end NextCSetElem

# Function: DeallocCSetId
# Declared: Line 1973 (Source lines: 1976-1985)
# Address: 0x0d9c8400 - 0x0d9c8468 (Size: 104 bytes, Frame: 0)
.ent DeallocCSetId
DeallocCSetId:
    # Line 1976
    lw	$a6,24($a0)
    srav	$a5,$a1,$a6
    # Line 1980
    blez	$a5,.L0d9c842c
    lw	$a3,0($a0)
    move	$a4,$zero
    nop
    nop
    nop
.L0d9c8420:
    addiu	$a4,$a4,1
    bne	$a5,$a4,.L0d9c8420
    lw	$a3,8($a3)
.L0d9c842c:
    # Line 1981
    li	$a2,1
    sllv	$a2,$a2,$a6
    addiu	$a2,$a2,-1
    lw	$v1,0($a3)
    and	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    sw	$zero,0($v1)
    # Line 1982
    lw	$v0,4($a3)
    addiu	$v0,$v0,-1
    sw	$v0,4($a3)
    # Line 1983
    lw	$at,12($a0)
    addiu	$at,$at,-1
    # Line 1985
    jr	$ra
    # Line 1983
    sw	$at,12($a0)
.end DeallocCSetId

# Function: LookupCSetId
# Declared: Line 1988 (Source lines: 1991-1997)
# Address: 0x0d9c8470 - 0x0d9c84dc (Size: 108 bytes, Frame: 0)
.ent LookupCSetId
LookupCSetId:
    # Line 1991
    lw	$a5,24($a0)
    # Line 1997
    li	$v1,1
    # Line 1991
    srav	$a4,$a1,$a5
    # Line 1996
    move	$v0,$zero
    # Line 1997
    sllv	$v1,$v1,$a5
    # Line 1995
    lw	$a3,0($a0)
    blez	$a4,.L0d9c84b4
    # Line 1997
    addiu	$v1,$v1,-1
    # Line 1995
    beqz	$a3,.L0d9c84bc
    move	$a2,$zero
    b	.L0d9c84a8
    addiu	$a2,$a2,1
.L0d9c84a0:
    beqz	$a3,.L0d9c84bc
    addiu	$a2,$a2,1
.L0d9c84a8:
    slt	$at,$a2,$a4
    bnez	$at,.L0d9c84a0
    lw	$a3,8($a3)
.L0d9c84b4:
    bnez	$a3,.L0d9c84c4
    nop
.L0d9c84bc:
    # Line 1997
    jr	$ra
    nop
.L0d9c84c4:
    lw	$v0,0($a3)
    and	$v1,$a1,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.end LookupCSetId

