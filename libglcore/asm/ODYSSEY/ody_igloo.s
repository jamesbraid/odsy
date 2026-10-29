# Source: ../ODYSSEY/ody_igloo.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_igloo.c
# Total Functions: 4

.text

# Function: __glOdyim_Swaptmesh
# Declared: Line 32 (Source lines: 32-71)
# Address: 0x0d988770 - 0x0d9888b8 (Size: 328 bytes, Frame: 160)
.ent __glOdyim_Swaptmesh
__glOdyim_Swaptmesh:
    # Line 34
    lw	$at,4120($zero)
    li	$v0,1
    # Line 32
    addiu	$sp,$sp,-2336
    # Line 34
    bne	$at,$v0,.L0d98882c
    lw	$a0,4112($zero)
    lui	$v1,0x1
    addu	$v1,$a0,$v1
    sd	$v1,2312($sp)
    lw	$v1,26972($v1)
    li	$a1,4
    bne	$v1,$a1,.L0d9887d0
    # Line 46
    la	$a3,__glOdysseySoftClipEvenTriangleStripVertex
    lw	$a2,12004($a0)
    beq	$a2,$a3,.L0d988834
    la	$a1,__glOdysseySoftClipOddTriangleStripVertex
    bne	$a2,$a1,.L0d98882c
    nop
    # Line 52
    lw	$a2,12752($a0)
    # Line 58
    sw	$a3,12004($a0)
    # Line 51
    lw	$a3,12748($a0)
    # Line 53
    sw	$a3,12752($a0)
    # Line 71
    addiu	$sp,$sp,2336
    jr	$ra
    # Line 52
    sw	$a2,12748($a0)
.L0d9887d0:
    # Line 62
    # lw $t9, -30512($gp) # &__glOdysseyGetHardwareShadow
    sd	$a0,2304($sp)
    sd	$ra,2320($sp)
    move	$a1,$zero
    jal	__glOdysseyGetHardwareShadow
    ld	$a0,2304($sp)
    # Line 63
    # lw $t9, -16968($gp) # &bcopy
    ld	$a0,2312($sp)
    li	$a2,2304
    addiu	$a1,$sp,0
    jal	bcopy
    lw	$a0,27944($a0)
    # Line 64
    lw	$a1,128($sp)
    li	$a2,5
    andi	$a1,$a1,0xf
    bne	$a1,$a2,.L0d98882c
    ld	$ra,2320($sp)
    lw	$a2,128($sp)
    srl	$a2,$a2,0x4
    andi	$a2,$a2,0x3
    sltiu	$a2,$a2,2
    beqz	$a2,.L0d988854
    nop
.L0d98882c:
    # Line 71
    jr	$ra
    addiu	$sp,$sp,2336
.L0d988834:
    # Line 52
    lw	$a3,12752($a0)
    # Line 51
    lw	$a4,12748($a0)
    # Line 56
    la	$a5,__glOdysseySoftClipOddTriangleStripVertex
    sw	$a5,12004($a0)
    # Line 53
    sw	$a4,12752($a0)
    # Line 71
    addiu	$sp,$sp,2336
    jr	$ra
    # Line 52
    sw	$a3,12748($a0)
.L0d988854:
    # Line 65
    lw	$a2,128($sp)
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    srl	$a2,$a2,0x6
    andi	$a2,$a2,0x3
    addiu	$a1,$sp,0
    addiu	$a2,$a2,2
    ld	$a0,2304($sp)
    jal	__glOdysseySendShadowAttributes
    andi	$a2,$a2,0x3
    # Line 66
    lw	$a2,128($sp)
    # lw $t9, -29700($gp) # &__glOdysseySendShadowVertex
    srl	$a2,$a2,0x6
    andi	$a2,$a2,0x3
    addiu	$a1,$sp,0
    addiu	$a2,$a2,2
    ld	$a0,2304($sp)
    jal	__glOdysseySendShadowVertex
    andi	$a2,$a2,0x3
    # Line 67
    # lw $t9, -29704($gp) # &__glOdysseySendShadowAttributes
    li	$a2,-1
    ld	$a0,2304($sp)
    jal	__glOdysseySendShadowAttributes
    addiu	$a1,$sp,0
    b	.L0d98882c
    ld	$ra,2320($sp)
.end __glOdyim_Swaptmesh

# Function: __glOdyim_lmcolor
# Declared: Line 74 (Source lines: 75-85)
# Address: 0x0d9888c0 - 0x0d988914 (Size: 84 bytes, Frame: 0)
.globl __glOdyim_lmcolor
.ent __glOdyim_lmcolor
__glOdyim_lmcolor:
    # Line 75
    lw	$a3,4112($zero)
    li	$at,1
    beq	$a0,$at,.L0d9888f4
    lw	$a2,31552($a3)
    # Line 80
    li	$a0,-2
    and	$a0,$a2,$a0
    sw	$a0,31552($a3)
    # Line 83
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11812($a3)
    ori	$v0,$v0,0x1
    # Line 85
    jr	$ra
    # Line 83
    sw	$v0,11812($a3)
.L0d9888f4:
    # Line 78
    ori	$a4,$a2,0x1
    sw	$a4,31552($a3)
    # Line 83
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11812($a3)
    ori	$a1,$a1,0x1
    # Line 85
    jr	$ra
    # Line 83
    sw	$a1,11812($a3)
.end __glOdyim_lmcolor

# Function: __glOdyim_FullScreen
# Declared: Line 88 (Source lines: 88-109)
# Address: 0x0d988920 - 0x0d9889a4 (Size: 132 bytes, Frame: 48)
.ent __glOdyim_FullScreen
__glOdyim_FullScreen:
    # Line 88
    addiu	$sp,$sp,-48
    move	$a6,$a0
    # Line 90
    lw	$a5,4112($zero)
    # Line 88
    move	$a4,$a1
    # Line 90
    lui	$a3,0x1
    beqz	$a1,.L0d988998
    addu	$a3,$a5,$a3
    # Line 97
    li	$a7,1
    sw	$a7,27012($a3)
    sd	$ra,32($sp)
.L0d988948:
    # Line 101
    lw	$t8,31564($a5)
    # Line 104
    li	$t1,3
    sw	$t1,12($sp)
    # Line 103
    li	$t2,6
    sb	$t2,8($sp)
    # Line 102
    li	$t3,2
    sw	$t3,4($sp)
    # Line 101
    sw	$t8,0($sp)
    # Line 105
    lw	$t0,31564($a5)
    # Line 108
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 107
    sw	$a4,24($sp)
    # Line 108
    addiu	$a2,$sp,0
    li	$a1,1009
    # Line 106
    sw	$a6,16($sp)
    # Line 108
    move	$a0,$a5
    jal	__glOdysseyIoctl
    # Line 105
    sw	$t0,20($sp)
    ld	$ra,32($sp)
    # Line 109
    jr	$ra
    addiu	$sp,$sp,48
.L0d988998:
    # Line 99
    sw	$zero,27012($a3)
    b	.L0d988948
    sd	$ra,32($sp)
.end __glOdyim_FullScreen

# Function: __glOdyim_IglooInterfaceSGIX
# Declared: Line 112 (Source lines: 112-151)
# Address: 0x0d9889b0 - 0x0d988ad4 (Size: 292 bytes, Frame: 16)
.globl __glOdyim_IglooInterfaceSGIX
.ent __glOdyim_IglooInterfaceSGIX
__glOdyim_IglooInterfaceSGIX:
    # Line 112
    move	$a4,$a1
    addiu	$sp,$sp,-16
    # Line 114
    lw	$a3,4112($zero)
    # Line 116
    li	$at,0x81a1
    # Line 112
    lui	$v0,0x17
    # Line 116
    li	$a5,0x81a2
    sd	$ra,8($sp)
    # Line 112
    addiu	$v0,$v0,-1056
    sd	$gp,0($sp)
    # Line 116
    beq	$a0,$at,.L0d988a24
    # Line 112
    addu	$gp,$t9,$v0
    # Line 116
    li	$v1,0x81a0
    beq	$a0,$v1,.L0d988a74
    li	$a1,0x819e
    beq	$a0,$a1,.L0d988a8c
    li	$a2,0x81a3
    beq	$a0,$a2,.L0d988aa8
    # Line 139
    nop	# was lw $t9, -31576($gp) # &__glOdyim_lmcolor
    # Line 116
    li	$a4,0x819f
    beq	$a0,$a4,.L0d988a18
    ld	$ra,8($sp)
    beq	$a0,$a5,.L0d988a60
    # Line 148
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d988a14:
    ld	$ra,8($sp)
.L0d988a18:
    # Line 151
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d988a24:
    # Line 118
    lw	$a6,0($a1)
    # Line 120
    la	$t2,__glNop
    # Line 118
    beqz	$a6,.L0d988ab8
    lw	$a0,31552($a3)
    # Line 119
    ori	$a7,$a0,0x2
    # Line 120
    andi	$t0,$a7,0x1
    beqz	$t0,.L0d988a14
    # Line 119
    sw	$a7,31552($a3)
    # Line 120
    lw	$t1,12056($a3)
    bne	$t1,$t2,.L0d988a14
    # Line 122
    nop	# was lw $t9, -17360($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    move	$a0,$a3
    b	.L0d988a18
    ld	$ra,8($sp)
.L0d988a60:
    # Line 145
    # lw $t9, -32128($gp) # &__glOdysseyInitIgloo
    jal	__glOdysseyInitIgloo
    move	$a0,$a3
    b	.L0d988a18
    ld	$ra,8($sp)
.L0d988a74:
    # Line 129
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-30864
    bal __glOdyim_GetFragmentMaterialivSGIX
    nop
    b	.L0d988a18
    ld	$ra,8($sp)
.L0d988a8c:
    # Line 134
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-30432
    lbu	$a1,7($a4)
    bal __glOdyim_lmcolor
    lw	$a0,0($a4)
    b	.L0d988a18
    ld	$ra,8($sp)
.L0d988aa8:
    # Line 139
    bal __glOdyim_lmcolor
    lbu	$a0,3($a4)
    b	.L0d988a18
    ld	$ra,8($sp)
.L0d988ab8:
    move	$ra,$ra
    # Line 151
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 124
    li	$at,-3
    and	$at,$a0,$at
    # Line 151
    jr	$ra
    # Line 124
    sw	$at,31552($a3)
.end __glOdyim_IglooInterfaceSGIX

