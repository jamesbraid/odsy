# Source: ../ODYSSEY/ody_rgb.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_rgb.c
# Total Functions: 6

.text

# Function: Store
# Declared: Line 23 (Source lines: 38-38)
# Address: 0x0d9caa80 - 0x0d9caa88 (Size: 8 bytes, Frame: 0)
.ent Store
Store:
    # Line 38
    jr	$ra
    nop
.end Store

# Function: Pick
# Declared: Line 42 (Source lines: 43-43)
# Address: 0x0d9caa90 - 0x0d9caa98 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 43
    jr	$ra
    nop
.end Pick

# Function: Fetch
# Declared: Line 47 (Source lines: 47-55)
# Address: 0x0d9caaa0 - 0x0d9caaf4 (Size: 84 bytes, Frame: 16)
.ent Fetch
Fetch:
    # Line 48
    lw	$a5,0($a0)
    # Line 51
    lw	$a3,3664($a5)
    # Line 47
    lui	$a4,0x13
    # Line 51
    lw	$a5,3660($a5)
    # Line 47
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,-9488
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 51
    la	$a4,__glim_Color3f
    # lw $t9, -17012($gp) # &fprintf
    subu	$a3,$a2,$a3
    la	$a0,__iob
    subu	$a2,$a1,$a5
    addiu	$a1,$a4,19880
    # Line 47
    sd	$ra,0($sp)
    # Line 51
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,0($sp)
    # Line 55
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end Fetch

# Function: StoreStippledSpan
# Declared: Line 58 (Source lines: 58-101)
# Address: 0x0d9cab00 - 0x0d9cac40 (Size: 320 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 70
    lw	$v0,30256($a0)
    # Line 58
    addiu	$sp,$sp,-160
    sd	$s8,64($sp)
    # Line 68
    lw	$s8,30528($a0)
    # Line 58
    sd	$s7,72($sp)
    # Line 67
    lw	$s7,30304($a0)
    # Line 70
    sw	$v0,4($sp)
    # Line 58
    sd	$s5,80($sp)
    # Line 73
    lw	$s5,30536($a0)
    # Line 58
    sd	$s2,104($sp)
    # Line 72
    lw	$s2,30520($a0)
    # Line 58
    sd	$s1,88($sp)
    lui	$at,0x13
    # Line 71
    lw	$s1,30252($a0)
    # Line 58
    addiu	$at,$at,-9584
    sd	$gp,96($sp)
    # Line 73
    beqz	$s7,.L0d9cac1c
    # Line 58
    addu	$gp,$t9,$at
    sd	$s0,152($sp)
    sd	$s4,144($sp)
    sd	$ra,136($sp)
    sd	$s3,120($sp)
    sd	$s6,128($sp)
    # Line 73
    li	$s6,-1
.L0d9cab60:
    # Line 84
    lui	$s0,0x8000
    # Line 77
    move	$a2,$s7
    li	$v1,32
    li	$a0,32
    slt	$v1,$v1,$s7
    movn	$a2,$a0,$v1
    # Line 84
    addiu	$a0,$a2,-1
    # Line 82
    addiu	$s8,$s8,4
    # Line 80
    subu	$s7,$s7,$a2
    # Line 82
    lw	$s3,-4($s8)
    # Line 84
    bltz	$a0,.L0d9cac04
    move	$s4,$a0
    sd	$s1,112($sp)
    sd	$a0,56($sp)
    and	$a2,$s3,$s0
    nop
.L0d9caba0:
    beqz	$a2,.L0d9cabdc
    nop
    # Line 86
    sw	$s1,0($sp)
    # Line 87
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s2)
    swc1	$f1,20($sp)
    lwc1	$f0,12($s2)
    swc1	$f0,24($sp)
    # Line 89
    lw	$t9,164($s5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s5
.L0d9cabdc:
    # Line 92
    addiu	$s2,$s2,16
    # Line 84
    addiu	$s4,$s4,-1
    # Line 91
    addiu	$s1,$s1,1
    # Line 94
    srl	$s0,$s0,0x1
    # Line 84
    bne	$s4,$s6,.L0d9caba0
    and	$a2,$s3,$s0
    ld	$t8,56($sp)
    ld	$s1,112($sp)
    addu	$s1,$s1,$t8
    addiu	$s1,$s1,1
.L0d9cac04:
    bnez	$s7,.L0d9cab60
    ld	$s3,120($sp)
    ld	$s6,128($sp)
    ld	$ra,136($sp)
    ld	$s4,144($sp)
    ld	$s0,152($sp)
.L0d9cac1c:
    # Line 101
    ld	$gp,96($sp)
    ld	$s1,88($sp)
    ld	$s2,104($sp)
    ld	$s5,80($sp)
    move	$v0,$zero
    ld	$s7,72($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end StoreStippledSpan

# Function: StoreSpan
# Declared: Line 105 (Source lines: 105-128)
# Address: 0x0d9cac40 - 0x0d9cacf4 (Size: 180 bytes, Frame: 240)
.ent StoreSpan
StoreSpan:
    # Line 105
    addiu	$sp,$sp,-112
    sd	$s2,88($sp)
    # Line 113
    lw	$a2,30304($a0)
    # Line 115
    lw	$v1,30256($a0)
    sw	$v1,4($sp)
    # Line 105
    sd	$s0,72($sp)
    # Line 116
    lw	$s0,30252($a0)
    # Line 119
    lw	$s2,30536($a0)
    # Line 105
    sd	$s3,80($sp)
    # Line 117
    addu	$s3,$s0,$a2
    # Line 105
    sd	$s1,64($sp)
    lui	$v0,0x13
    # Line 121
    slt	$at,$s0,$s3
    # Line 118
    lw	$s1,30520($a0)
    # Line 105
    addiu	$v0,$v0,-9904
    sd	$gp,56($sp)
    # Line 121
    beqz	$at,.L0d9cacd4
    # Line 105
    addu	$gp,$t9,$v0
    sd	$ra,96($sp)
    nop
.L0d9cac90:
    # Line 122
    sw	$s0,0($sp)
    # Line 123
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s1)
    swc1	$f1,20($sp)
    lwc1	$f0,12($s1)
    swc1	$f0,24($sp)
    # Line 125
    lw	$t9,164($s2)
    addiu	$a1,$sp,0
    move	$a0,$s2
    jalr	$t9
    # Line 123
    addiu	$s1,$s1,16
    # Line 121
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0d9cac90
    ld	$ra,96($sp)
.L0d9cacd4:
    # Line 128
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    move	$v0,$zero
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end StoreSpan

# Function: __glOdysseyInitRGB
# Declared: Line 132 (Source lines: 132-168)
# Address: 0x0d9cad00 - 0x0d9cadf0 (Size: 240 bytes, Frame: 32)
.globl __glOdysseyInitRGB
.ent __glOdysseyInitRGB
__glOdysseyInitRGB:
    # Line 132
    lui	$at,0x13
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10096
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 134
    # lw $t9, -27064($gp) # &__glInitBuffer
    # Line 132
    sd	$s8,8($sp)
    # Line 134
    nop
    # Line 132
    sd	$ra,0($sp)
    # Line 134
    jal	__glInitBuffer
    # Line 132
    move	$s8,$a0
    # Line 143
    la	$a5,__glReturnSpan
    # Line 142
    la	$a4,__glFetchSpan
    # Line 139
    la	$a3,__glReadSpan
    # Line 155
    lwc1	$f0,_lit_3f800000
    # Line 141
    la	$a2,sub_0d9d0000
    # Line 140
    la	$a1,sub_0d9d0000
    # Line 138
    la	$a0,sub_0d9d0000
    # Line 136
    la	$v1,sub_0d9d0000
    la	$v0,sub_0d9d0000
    # Line 168
    ld	$gp,16($sp)
    # Line 154
    li	$a6,1
    # Line 166
    sw	$a6,132($s8)
    # Line 165
    sw	$zero,124($s8)
    # Line 162
    sw	$a6,108($s8)
    sw	$a6,80($s8)
    # Line 161
    sw	$zero,120($s8)
    # Line 158
    sw	$a6,104($s8)
    sw	$a6,76($s8)
    # Line 157
    sw	$zero,116($s8)
    # Line 154
    sw	$a6,100($s8)
    sw	$a6,72($s8)
    # Line 153
    sw	$zero,112($s8)
    # Line 146
    sw	$zero,24($s8)
    # Line 143
    sw	$a5,180($s8)
    # Line 142
    sw	$a4,200($s8)
    # Line 139
    sw	$a3,176($s8)
    # Line 167
    swc1	$f0,128($s8)
    swc1	$f0,148($s8)
    # Line 163
    swc1	$f0,96($s8)
    swc1	$f0,144($s8)
    # Line 159
    swc1	$f0,92($s8)
    swc1	$f0,140($s8)
    # Line 155
    swc1	$f0,88($s8)
    swc1	$f0,136($s8)
    # Line 141
    addiu	$a2,$a2,-21440
    sw	$a2,184($s8)
    # Line 140
    addiu	$a1,$a1,-21760
    sw	$a1,188($s8)
    # Line 138
    addiu	$a0,$a0,-21872
    sw	$a0,160($s8)
    # Line 136
    addiu	$v1,$v1,-21856
    # Line 137
    sw	$v1,172($s8)
    ld	$ra,0($sp)
    sw	$v1,168($s8)
    # Line 136
    addiu	$v0,$v0,-21888
    sw	$v0,164($s8)
    # Line 168
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyInitRGB

.rdata
_lit_3f800000:
    .word 0x3f800000

