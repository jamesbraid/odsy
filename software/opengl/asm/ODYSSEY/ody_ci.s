# Source: ../ODYSSEY/ody_ci.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_ci.c
# Total Functions: 6

.text

# Function: Store
# Declared: Line 22 (Source lines: 22-33)
# Address: 0x0d9640f0 - 0x0d96418c (Size: 156 bytes, Frame: 16)
.ent Store
Store:
    # Line 26
    lw	$t0,8($a1)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f0
    # Line 23
    lw	$a5,0($a0)
    # Line 26
    cvt.s.l	$f0,$f0
    lwc1	$f2,1740($a5)
    lwc1	$f1,1736($a5)
    sub.s	$f0,$f0,$f2
    div.s	$f0,$f0,$f1
    lw	$a3,0($a1)
    lw	$a4,4($a1)
    lwc1	$f2,3540($a5)
    # Line 22
    lui	$a7,0x19
    # Line 26
    lwc1	$f1,12($a1)
    lw	$a6,3664($a5)
    # Line 22
    addiu	$sp,$sp,-16
    addiu	$a7,$a7,17568
    sd	$gp,8($sp)
    addu	$gp,$t9,$a7
    # Line 26
    la	$a0,__iob
    add.s	$f1,$f1,$f2
    # lw $t9, -17012($gp) # &fprintf
    lw	$a5,3660($a5)
    cvt.d.s	$f1,$f1
    subu	$a4,$a4,$a6
    la	$a1,__glim_Color3f
    cvt.d.s	$f0,$f0
    addiu	$a0,$a0,32
    subu	$a3,$a3,$a5
    dmfc1	$a2,$f1
    # Line 22
    sd	$ra,0($sp)
    # Line 26
    addiu	$a1,$a1,17984
    jal	fprintf
    dmfc1	$a5,$f0
    ld	$ra,0($sp)
    # Line 33
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end Store

# Function: Pick
# Declared: Line 37 (Source lines: 38-38)
# Address: 0x0d964190 - 0x0d964198 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 38
    jr	$ra
    nop
.end Pick

# Function: Fetch
# Declared: Line 42 (Source lines: 43-43)
# Address: 0x0d9641a0 - 0x0d9641a8 (Size: 8 bytes, Frame: 0)
.ent Fetch
Fetch:
    # Line 43
    jr	$ra
    nop
.end Fetch

# Function: StoreStippledSpan
# Declared: Line 46 (Source lines: 46-89)
# Address: 0x0d9641b0 - 0x0d9642d8 (Size: 296 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 58
    lw	$v0,30256($a0)
    # Line 46
    addiu	$sp,$sp,-160
    sd	$s8,64($sp)
    # Line 56
    lw	$s8,30528($a0)
    # Line 46
    sd	$s7,72($sp)
    # Line 55
    lw	$s7,30304($a0)
    # Line 58
    sw	$v0,4($sp)
    # Line 46
    sd	$s5,80($sp)
    # Line 61
    lw	$s5,30536($a0)
    # Line 46
    sd	$s2,104($sp)
    # Line 60
    lw	$s2,30520($a0)
    # Line 46
    sd	$s1,88($sp)
    lui	$at,0x19
    # Line 59
    lw	$s1,30252($a0)
    # Line 46
    addiu	$at,$at,17376
    sd	$gp,96($sp)
    # Line 61
    beqz	$s7,.L0d9642b4
    # Line 46
    addu	$gp,$t9,$at
    sd	$s0,152($sp)
    sd	$s4,144($sp)
    sd	$ra,136($sp)
    sd	$s3,120($sp)
    sd	$s6,128($sp)
    # Line 61
    li	$s6,-1
.L0d964210:
    # Line 72
    lui	$s0,0x8000
    # Line 65
    move	$a2,$s7
    li	$v1,32
    li	$a0,32
    slt	$v1,$v1,$s7
    movn	$a2,$a0,$v1
    # Line 72
    addiu	$a0,$a2,-1
    # Line 70
    addiu	$s8,$s8,4
    # Line 68
    subu	$s7,$s7,$a2
    # Line 70
    lw	$s3,-4($s8)
    # Line 72
    bltz	$a0,.L0d96429c
    move	$s4,$a0
    sd	$s1,112($sp)
    sd	$a0,56($sp)
    and	$a2,$s3,$s0
    nop
.L0d964250:
    beqz	$a2,.L0d964274
    nop
    # Line 74
    sw	$s1,0($sp)
    # Line 75
    lwc1	$f0,0($s2)
    swc1	$f0,12($sp)
    # Line 77
    lw	$t9,164($s5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s5
.L0d964274:
    # Line 80
    addiu	$s2,$s2,16
    # Line 72
    addiu	$s4,$s4,-1
    # Line 79
    addiu	$s1,$s1,1
    # Line 82
    srl	$s0,$s0,0x1
    # Line 72
    bne	$s4,$s6,.L0d964250
    and	$a2,$s3,$s0
    ld	$t8,56($sp)
    ld	$s1,112($sp)
    addu	$s1,$s1,$t8
    addiu	$s1,$s1,1
.L0d96429c:
    bnez	$s7,.L0d964210
    ld	$s3,120($sp)
    ld	$s6,128($sp)
    ld	$ra,136($sp)
    ld	$s4,144($sp)
    ld	$s0,152($sp)
.L0d9642b4:
    # Line 89
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
# Declared: Line 93 (Source lines: 93-117)
# Address: 0x0d9642e0 - 0x0d96437c (Size: 156 bytes, Frame: 240)
.ent StoreSpan
StoreSpan:
    # Line 93
    addiu	$sp,$sp,-112
    sd	$s2,88($sp)
    # Line 101
    lw	$a2,30304($a0)
    # Line 103
    lw	$v1,30256($a0)
    sw	$v1,4($sp)
    # Line 93
    sd	$s0,72($sp)
    # Line 104
    lw	$s0,30252($a0)
    # Line 107
    lw	$s2,30536($a0)
    # Line 93
    sd	$s3,80($sp)
    # Line 105
    addu	$s3,$s0,$a2
    # Line 93
    sd	$s1,64($sp)
    lui	$v0,0x19
    # Line 109
    slt	$at,$s0,$s3
    # Line 106
    lw	$s1,30520($a0)
    # Line 93
    addiu	$v0,$v0,17072
    sd	$gp,56($sp)
    # Line 109
    beqz	$at,.L0d96435c
    # Line 93
    addu	$gp,$t9,$v0
    sd	$ra,96($sp)
    nop
.L0d964330:
    # Line 110
    sw	$s0,0($sp)
    # Line 111
    lwc1	$f0,0($s1)
    swc1	$f0,12($sp)
    # Line 114
    lw	$t9,164($s2)
    addiu	$a1,$sp,0
    move	$a0,$s2
    jalr	$t9
    # Line 112
    addiu	$s1,$s1,16
    # Line 109
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0d964330
    ld	$ra,96($sp)
.L0d96435c:
    # Line 117
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    move	$v0,$zero
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end StoreSpan

# Function: __glOdysseyInitCI
# Declared: Line 121 (Source lines: 121-164)
# Address: 0x0d964380 - 0x0d9644d0 (Size: 336 bytes, Frame: 32)
.globl __glOdysseyInitCI
.ent __glOdysseyInitCI
__glOdysseyInitCI:
    # Line 121
    lui	$at,0x19
    addiu	$sp,$sp,-32
    addiu	$at,$at,16912
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 124
    # lw $t9, -27064($gp) # &__glInitBuffer
    # Line 121
    sd	$s8,0($sp)
    move	$s8,$a1
    sd	$s0,24($sp)
    # Line 124
    nop
    # Line 121
    sd	$ra,16($sp)
    # Line 124
    jal	__glInitBuffer
    # Line 121
    move	$s0,$a0
    # Line 131
    la	$a1,__glFetchSpan
    # Line 128
    la	$a4,__glReadSpan
    # Line 132
    la	$a0,__glReturnSpan
    sw	$a0,180($s0)
    # Line 128
    sw	$a4,176($s0)
    # Line 131
    sw	$a1,200($s0)
    # Line 129
    la	$a3,sub_0d960000
    # Line 126
    la	$a6,sub_0d960000
    # Line 127
    la	$a5,sub_0d960000
    # Line 126
    la	$v1,sub_0d960000
    # Line 130
    la	$a2,sub_0d960000
    # Line 126
    addiu	$v1,$v1,16800
    # Line 133
    sw	$v1,168($s0)
    sw	$v1,172($s0)
    # Line 130
    addiu	$a2,$a2,17120
    sw	$a2,184($s0)
    # Line 127
    addiu	$a5,$a5,16784
    sw	$a5,160($s0)
    # Line 126
    addiu	$a6,$a6,16624
    sw	$a6,164($s0)
    # Line 129
    addiu	$a3,$a3,16816
    sw	$a3,188($s0)
    # Line 161
    li	$a7,1
    # Line 139
    li	$a3,-1
    # Line 135
    lw	$a1,3252($s8)
    # Line 159
    li	$a6,2
    # Line 137
    li	$a2,1
    # Line 150
    slti	$a4,$a1,17
    # Line 135
    slti	$v0,$a1,32
    # Line 157
    slti	$a5,$a1,9
    # Line 137
    sllv	$a2,$a2,$a1
    # Line 147
    lwc1	$f0,_lit_3f800000
    # Line 135
    beqz	$v0,.L0d964444
    # Line 137
    addiu	$a2,$a2,-1
    b	.L0d96444c
    sw	$a2,152($s0)
.L0d964444:
    # Line 139
    sw	$a3,152($s0)
    move	$a2,$a3
.L0d96444c:
    # Line 141
    sw	$a2,72($s0)
    # Line 150
    swc1	$f0,128($s0)
    swc1	$f0,148($s0)
    # Line 149
    swc1	$f0,96($s0)
    swc1	$f0,144($s0)
    # Line 148
    swc1	$f0,92($s0)
    swc1	$f0,140($s0)
    # Line 147
    swc1	$f0,88($s0)
    # Line 150
    beqz	$a4,.L0d9644b0
    # Line 147
    swc1	$f0,136($s0)
    # Line 157
    bnez	$a5,.L0d964494
    # Line 164
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 159
    sw	$a6,24($s0)
    # Line 164
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d964494:
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 161
    sw	$a7,24($s0)
    # Line 164
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9644b0:
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    # Line 157
    li	$t0,4
    sw	$t0,24($s0)
    # Line 164
    ld	$s0,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyInitCI

.rdata
_lit_3f800000:
    .word 0x3f800000

