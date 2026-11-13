# Source: ../ODYSSEY/ody_clear.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_clear.c
# Total Functions: 3

.text

# Function: __glOdyim_Clear
# Declared: Line 25 (Source lines: 25-174)
# Address: 0x0d9644d0 - 0x0d964a94 (Size: 1476 bytes, Frame: 160)
.globl __glOdyim_Clear
.ent __glOdyim_Clear
__glOdyim_Clear:
    # Line 25
    addiu	$sp,$sp,-160
    sd	$s0,136($sp)
    # Line 31
    lw	$s0,4112($zero)
    lw	$a1,4120($zero)
    lui	$a2,0x1
    addu	$at,$a2,$s0
    sd	$at,120($sp)
    lw	$at,26980($at)
    # Line 25
    sd	$a0,128($sp)
    lui	$v0,0x19
    sd	$ra,152($sp)
    addiu	$v0,$v0,16576
    sd	$gp,144($sp)
    # Line 31
    beqz	$at,.L0d964688
    # Line 25
    addu	$gp,$t9,$v0
    # Line 31
    beqz	$a1,.L0d964540
    ld	$a0,120($sp)
    li	$v0,2
.L0d964518:
    beq	$a1,$v0,.L0d96453c
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d964528:
    ld	$ra,152($sp)
.L0d96452c:
    # Line 174
    ld	$gp,144($sp)
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d96453c:
    # Line 31
    ld	$a0,120($sp)
.L0d964540:
    li	$v1,1
    sb	$v1,26997($a0)
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
    ld	$a1,128($sp)
.L0d96455c:
    li	$a2,-18177
    and	$a1,$a1,$a2
    beqz	$a1,.L0d964580
    # Line 39
    ld	$a3,128($sp)
    # Line 35
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d96452c
    ld	$ra,152($sp)
.L0d964580:
    # Line 39
    beqz	$a3,.L0d96452c
    ld	$ra,152($sp)
    lw	$a4,3204($s0)
    li	$a5,7168
    bne	$a4,$a5,.L0d964528
    # Line 45
    ld	$a6,128($sp)
    andi	$a6,$a6,0x200
    beqz	$a6,.L0d9645cc
    # Line 48
    ld	$t1,120($sp)
    # Line 45
    lbu	$a7,3224($s0)
    beqz	$a7,.L0d9645cc
    # Line 48
    ld	$t1,120($sp)
    # Line 47
    lw	$t9,31524($s0)
    jalr	$t9
    addiu	$a0,$s0,31416
    ld	$t0,128($sp)
    andi	$t0,$t0,0x4500
    beqz	$t0,.L0d964528
    # Line 48
    ld	$t1,120($sp)
.L0d9645cc:
    lbu	$t1,26052($t1)
    bnez	$t1,.L0d964528
    # Line 58
    ld	$a1,120($sp)
    lw	$t2,31776($s0)
    lw	$a1,26044($a1)
    bne	$t2,$a1,.L0d9645fc
    ld	$a3,120($sp)
    ld	$a2,120($sp)
    lw	$a3,31780($s0)
    lw	$a2,26048($a2)
    beq	$a2,$a3,.L0d964698
    ld	$a3,120($sp)
.L0d9645fc:
    sw	$a1,31776($s0)
    lw	$a4,26048($a3)
    sw	$a4,31780($s0)
    lw	$a3,-26576($a3)
    beqz	$a3,.L0d964644
    lui	$t8,0x1
    ld	$t1,120($sp)
    lui	$a5,0x1
    sw	$zero,-26576($t1)
    ori	$t0,$a5,0x443
    sw	$t0,0($a5)
    li	$a7,250
    move	$a6,$a5
    sw	$a7,0($a5)
    ori	$a5,$a5,0x46
    sw	$a5,0($a6)
    sw	$a5,0($a6)
    lui	$t8,0x1
.L0d964644:
    lui	$ra,0x1
    ori	$ra,$ra,0x81d
    sw	$ra,0($t8)
    lw	$t9,31776($s0)
    sw	$t9,0($t8)
    lw	$t3,31780($s0)
    sw	$t3,0($t8)
    lw	$t2,31600($s0)
    dsll32	$t2,$t2,0xb
    bgez	$t2,.L0d964930
    ld	$v1,120($sp)
.L0d964670:
    lw	$v0,26980($v1)
    ori	$v0,$v0,0x2000
    sw	$v0,26980($v1)
    li	$at,2
    b	.L0d964698
    sw	$at,4120($zero)
.L0d964688:
    # Line 31
    bnez	$a1,.L0d964518
    li	$v0,2
    b	.L0d96455c
    ld	$a1,128($sp)
.L0d964698:
    # Line 64
    ld	$a7,128($sp)
    # Line 63
    lw	$v1,31740($s0)
    # Line 64
    lw	$a0,31836($s0)
    andi	$a7,$a7,0x4000
    sd	$a0,112($sp)
    beqz	$a7,.L0d9648ec
    sd	$v1,104($sp)
    lbu	$t0,3220($s0)
    beqz	$t0,.L0d9648d4
    # Line 78
    mtc1	$zero,$f8
    # Line 72
    lwc1	$f3,1860($s0)
    swc1	$f3,32($sp)
    # Line 73
    lwc1	$f2,1864($s0)
    swc1	$f2,36($sp)
    # Line 74
    lwc1	$f1,1868($s0)
    swc1	$f1,40($sp)
    # Line 75
    lwc1	$f0,1872($s0)
    swc1	$f0,44($sp)
.L0d9646e0:
    # Line 80
    lw	$a4,31836($s0)
.L0d9646e4:
    # Line 94
    lbu	$a3,3225($s0)
    beqz	$a3,.L0d964710
    move	$a2,$zero
    ld	$t1,128($sp)
    andi	$t1,$t1,0x100
    beqz	$t1,.L0d964710
    move	$a2,$zero
    lbu	$t2,1636($s0)
    beqz	$t2,.L0d964710
    move	$a2,$zero
    li	$a2,1
.L0d964710:
    # Line 97
    lbu	$a6,3226($s0)
    beqz	$a6,.L0d964854
    ld	$t3,128($sp)
    andi	$t3,$t3,0x400
    beqz	$t3,.L0d964854
    nop
    lh	$a1,1674($s0)
.L0d96472c:
    beqz	$a3,.L0d96485c
    # Line 104
    li	$t8,255
    movz	$t8,$zero,$a2
    sd	$a7,80($sp)
    movz	$a1,$t8,$a6
.L0d964740:
    # Line 106
    sll	$a2,$a2,0x18
    lui	$a3,0x100
    and	$a2,$a2,$a3
    nor	$a5,$a3,$zero
    and	$a5,$a4,$a5
    # Line 107
    lui	$a4,0xf
    sll	$a3,$a1,0xc
    ori	$a4,$a4,0xf000
    # Line 106
    or	$a2,$a5,$a2
    # Line 107
    nor	$a5,$a4,$zero
    # Line 108
    ld	$v0,120($sp)
    # Line 107
    and	$a3,$a3,$a4
    and	$a2,$a2,$a5
    or	$a2,$a2,$a3
    sw	$a2,31836($s0)
    # Line 108
    lw	$a1,26976($v0)
    ori	$a1,$a1,0x80
    sw	$a1,26976($v0)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 113
    lui	$a0,0x4
    lw	$v1,31740($s0)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,31740($s0)
    # Line 114
    lw	$at,26976($v0)
    # Line 119
    # lw $t9, -30024($gp) # &__glOdysseyWindowToNormalizedEyeZ
    # Line 114
    ori	$at,$at,0x2
    sw	$at,26976($v0)
    sw	$ra,4120($zero)
    # Line 119
    ldc1	$f12,1640($s0)
    jal	__glOdysseyWindowToNormalizedEyeZ
    cvt.s.d	$f12,$f12
    # Line 123
    lw	$a6,3300($s0)
    beqz	$a6,.L0d964868
    move	$a0,$zero
.L0d9647d0:
    lbu	$a7,31604($s0)
    beqz	$a7,.L0d964898
    # Line 139
    ldc1	$f6,_lit8_41fffff800000000
    cvt.d.s	$f5,$f0
    mul.d	$f5,$f5,$f6
    andi	$a2,$a0,0xff
    cvt.s.d	$f5,$f5
.L0d9647ec:
    # Line 166
    lw	$a7,3704($s0)
    # lw $t9, -32168($gp) # &__glOdysseyClear
    move	$a0,$s0
    lw	$a6,3700($s0)
    move	$a5,$zero
    move	$a4,$zero
    lh	$a3,1668($s0)
    sw	$a2,4($sp)
    mov.s	$f14,$f5
    bal __glOdysseyClear
    addiu	$a1,$sp,32
    # Line 174
    ld	$gp,144($sp)
    ld	$ra,152($sp)
    # Line 170
    ld	$t3,104($sp)
    # Line 171
    ld	$t2,112($sp)
    sw	$t2,31836($s0)
    # Line 172
    ld	$t2,120($sp)
    # Line 170
    sw	$t3,31740($s0)
    # Line 172
    lw	$t1,26976($t2)
    # Line 174
    ld	$s0,136($sp)
    # Line 172
    li	$t0,2
    ori	$t1,$t1,0x82
    sw	$t1,26976($t2)
    # Line 174
    addiu	$sp,$sp,160
    jr	$ra
    # Line 172
    sw	$t0,4120($zero)
.L0d964854:
    b	.L0d96472c
    # Line 97
    move	$a1,$zero
.L0d96485c:
    # Line 102
    sltu	$a2,$zero,$a1
    b	.L0d964740
    sd	$a7,80($sp)
.L0d964868:
    # Line 123
    ld	$t8,80($sp)
    beqz	$t8,.L0d9647d0
    move	$a0,$zero
    ld	$t9,128($sp)
    andi	$t9,$t9,0x100
    beqz	$t9,.L0d964a58
    ld	$ra,128($sp)
.L0d964884:
    andi	$ra,$ra,0x400
    beqz	$ra,.L0d964a80
    nop
.L0d964890:
    b	.L0d9647d0
    li	$a0,1
.L0d964898:
    # Line 137
    lw	$a1,1888($s0)
    li	$at,1030
    beq	$a1,$at,.L0d964998
    li	$v0,1031
    beq	$a1,$v0,.L0d964a6c
    # Line 144
    li	$t2,1
    # Line 137
    li	$v1,1032
    beq	$a1,$v1,.L0d9649b0
    # Line 151
    li	$a7,1
    # Line 137
    ldc1	$f6,_lit8_41fffff800000000
    cvt.d.s	$f5,$f0
    mul.d	$f5,$f5,$f6
    andi	$a2,$a0,0xff
    b	.L0d9647ec
    cvt.s.d	$f5,$f5
.L0d9648d4:
    # Line 77
    lwc1	$f7,1876($s0)
    # Line 80
    swc1	$f8,44($sp)
    # Line 79
    swc1	$f8,40($sp)
    # Line 78
    swc1	$f8,36($sp)
    b	.L0d9646e0
    # Line 77
    swc1	$f7,32($sp)
.L0d9648ec:
    # Line 84
    lui	$a6,0x10
    # Line 83
    ld	$a4,112($sp)
    li	$a5,-4096
    # Line 84
    nor	$a6,$a6,$zero
    # Line 83
    and	$a4,$a4,$a5
    # Line 85
    lui	$a5,0x20
    # Line 84
    and	$a4,$a4,$a6
    # Line 86
    lui	$a6,0x40
    # Line 85
    nor	$a5,$a5,$zero
    # Line 86
    nor	$a6,$a6,$zero
    # Line 85
    and	$a4,$a4,$a5
    # Line 87
    lui	$a5,0x80
    nor	$a5,$a5,$zero
    # Line 86
    and	$a4,$a4,$a6
    # Line 87
    and	$a4,$a4,$a5
    b	.L0d9646e4
    sw	$a4,31836($s0)
.L0d964930:
    # Line 58
    sw	$zero,16($sp)
    sw	$zero,20($sp)
    sw	$zero,24($sp)
    sw	$zero,28($sp)
    lw	$a4,31776($s0)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,16($sp)
    lw	$a3,31776($s0)
    andi	$a3,$a3,0xfff
    sw	$a3,24($sp)
    lw	$a2,31780($s0)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,20($sp)
    addiu	$a2,$sp,16
    lui	$a1,0x6f64
    lw	$a6,31780($s0)
    move	$a0,$s0
    ori	$a1,$a1,0xd
    andi	$a6,$a6,0xfff
    jal	__glOdysseyIoctl
    sw	$a6,28($sp)
    b	.L0d964670
    ld	$v1,120($sp)
.L0d964998:
    # Line 139
    sd	$zero,64($sp)
    li	$a5,1
    sd	$a5,72($sp)
    sdc1	$f0,56($sp)
    b	.L0d9649c8
    sd	$a0,88($sp)
.L0d9649b0:
    # Line 151
    sd	$a7,72($sp)
    sdc1	$f0,56($sp)
    lbu	$a6,3223($s0)
    sd	$a0,88($sp)
    sltu	$a6,$zero,$a6
    sd	$a6,64($sp)
.L0d9649c8:
    # Line 158
    # lw $t9, -30484($gp) # &__glOdysseySetDrawbuf
    move	$a0,$s0
    move	$a1,$zero
    ld	$a3,72($sp)
    move	$a2,$zero
    jal	__glOdysseySetDrawbuf
    ld	$a4,64($sp)
    # Line 159
    lw	$a7,3704($s0)
    ldc1	$f14,56($sp)
    lw	$a6,3700($s0)
    ldc1	$f15,_lit8_41fffff800000000
    lh	$a3,1668($s0)
    cvt.d.s	$f14,$f14
    ld	$t0,88($sp)
    # lw $t9, -32168($gp) # &__glOdysseyClear
    mul.d	$f14,$f14,$f15
    move	$a5,$zero
    andi	$t0,$t0,0xff
    sd	$t0,96($sp)
    move	$a4,$zero
    addiu	$a1,$sp,32
    sw	$t0,4($sp)
    cvt.s.d	$f14,$f14
    move	$a0,$s0
    bal __glOdysseyClear
    sdc1	$f14,48($sp)
    # Line 162
    # lw $t9, -30484($gp) # &__glOdysseySetDrawbuf
    move	$a0,$s0
    ld	$a1,72($sp)
    move	$a3,$zero
    ld	$a2,64($sp)
    jal	__glOdysseySetDrawbuf
    move	$a4,$zero
    ld	$a2,96($sp)
    b	.L0d9647ec
    ldc1	$f5,48($sp)
.L0d964a58:
    # Line 123
    lbu	$t1,3225($s0)
    bnez	$t1,.L0d9647d0
    move	$a0,$zero
    b	.L0d964884
    ld	$ra,128($sp)
.L0d964a6c:
    # Line 144
    sd	$t2,64($sp)
    sd	$zero,72($sp)
    sdc1	$f0,56($sp)
    b	.L0d9649c8
    sd	$a0,88($sp)
.L0d964a80:
    # Line 123
    lbu	$t3,3226($s0)
    bnez	$t3,.L0d9647d0
    move	$a0,$zero
    b	.L0d964890
    nop
.end __glOdyim_Clear

# Function: __glOdysseyClear
# Declared: Line 183 (Source lines: 184-443)
# Address: 0x0d964aa0 - 0x0d96526c (Size: 1996 bytes, Frame: 192)
.globl __glOdysseyClear
.ent __glOdysseyClear
__glOdysseyClear:
    # Line 184
    addiu	$sp,$sp,-320
    sd	$s0,200($sp)
    sd	$s6,160($sp)
    sd	$s4,168($sp)
    # Line 199
    lui	$s0,0x1
    # Line 209
    li	$s6,-257
    # Line 197
    lw	$s4,31740($a0)
    # Line 208
    lui	$v0,0x2
    # Line 184
    sd	$s5,184($sp)
    # Line 207
    li	$s5,-16385
    # Line 197
    sd	$s4,104($sp)
    # Line 207
    and	$s4,$s4,$s5
    # Line 208
    nor	$s5,$v0,$zero
    and	$s4,$s4,$s5
    # Line 210
    lui	$s5,0x40
    nor	$s5,$s5,$zero
    # Line 209
    and	$s4,$s4,$s6
    # Line 210
    and	$s4,$s4,$s5
    # Line 211
    lui	$s5,0x8
    # Line 184
    sd	$s2,208($sp)
    # Line 212
    lui	$t8,0x10
    # Line 211
    nor	$s5,$s5,$zero
    # Line 201
    lw	$s2,31788($a0)
    # Line 211
    and	$s4,$s4,$s5
    # Line 212
    nor	$s5,$t8,$zero
    # Line 184
    sd	$s7,176($sp)
    # Line 213
    li	$a2,-5
    # Line 212
    and	$s4,$s4,$s5
    # Line 184
    sd	$s1,192($sp)
    # Line 214
    li	$v1,-17
    # Line 213
    and	$s4,$a2,$s4
    # Line 200
    lw	$s6,31792($a0)
    # Line 215
    li	$s5,-129
    # Line 214
    and	$s4,$v1,$s4
    # Line 199
    addu	$s1,$s0,$a0
    # Line 200
    sd	$s6,120($sp)
    # Line 215
    and	$s4,$s4,$s5
    # Line 199
    lw	$s6,-26972($s1)
    # Line 217
    li	$s5,-2049
    # Line 216
    ori	$s4,$s4,0x1000
    # Line 217
    and	$s4,$s4,$s5
    sw	$s4,31740($a0)
    # Line 218
    lw	$t3,26976($s1)
    # Line 198
    lw	$s7,31744($a0)
    # Line 218
    ori	$t3,$t3,0x2
    sw	$t3,26976($s1)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 220
    li	$t2,0xe000
    lw	$t0,31744($a0)
    nor	$t2,$t2,$zero
    and	$t0,$t0,$t2
    # Line 222
    li	$t2,-2
    # Line 220
    ori	$t0,$t0,0x2000
    # Line 222
    and	$t0,$t0,$t2
    # Line 223
    li	$t2,-3
    and	$t0,$t0,$t2
    # Line 224
    and	$a2,$a2,$t0
    # Line 226
    li	$t0,-9
    # Line 201
    sd	$s2,144($sp)
    # Line 226
    and	$a2,$a2,$t0
    # Line 198
    sd	$s7,112($sp)
    # Line 227
    and	$v1,$v1,$a2
    # Line 228
    li	$a2,-33
    # Line 199
    sd	$s6,128($sp)
    # Line 228
    and	$v1,$v1,$a2
    # Line 229
    li	$a2,-3073
    and	$v1,$v1,$a2
    sw	$v1,31744($a0)
    # Line 231
    lw	$at,26976($s1)
    # Line 184
    sd	$s8,216($sp)
    move	$s7,$a4
    # Line 231
    ori	$at,$at,0x4
    sw	$at,26976($s1)
    # Line 184
    move	$s2,$a0
    lui	$s8,0x19
    # Line 231
    sw	$t1,4120($zero)
    # Line 184
    move	$s6,$a5
    addiu	$s8,$s8,15088
    # Line 237
    lw	$t3,31836($a0)
    sd	$gp,224($sp)
    # Line 184
    addu	$gp,$t9,$s8
    move	$s4,$a7
    move	$s5,$a6
    # Line 244
    srl	$s8,$t3,0x18
    # Line 248
    lw	$t9,31740($a0)
    # Line 244
    andi	$s8,$s8,0x1
    # Line 240
    srl	$at,$t3,0x17
    # Line 184
    sd	$a1,152($sp)
    # Line 248
    or	$t9,$s0,$t9
    # Line 240
    andi	$at,$at,0x1
    # Line 249
    ori	$t9,$t9,0x8000
    # Line 254
    andi	$v1,$a3,0xff
    # Line 252
    lw	$a1,31788($a0)
    # Line 241
    andi	$t2,$t3,0xfff
    # Line 252
    lui	$a2,0xe00
    or	$a1,$a1,$a2
    # Line 254
    li	$a2,-256
    # Line 241
    sd	$t2,88($sp)
    # Line 257
    lui	$t2,0x80
    # Line 254
    and	$a1,$a1,$a2
    or	$v1,$v1,$a1
    # Line 257
    lui	$a1,0x1c0
    nor	$a1,$a1,$zero
    # Line 256
    ori	$v1,$v1,0xff00
    # Line 244
    sd	$s8,96($sp)
    # Line 257
    and	$v1,$v1,$a1
    # Line 259
    lui	$a1,0x38
    # Line 249
    sw	$t9,31740($a0)
    # Line 259
    nor	$a1,$a1,$zero
    # Line 257
    or	$v1,$t2,$v1
    # Line 251
    lw	$a2,31792($a0)
    # Line 259
    and	$v1,$v1,$a1
    # Line 261
    lui	$a1,0x7
    # Line 240
    sd	$at,80($sp)
    # Line 261
    nor	$a1,$a1,$zero
    # Line 259
    or	$v1,$v1,$t8
    # Line 251
    ori	$a2,$a2,0x7
    sw	$a2,31792($a0)
    # Line 261
    and	$v1,$v1,$a1
    # Line 245
    srl	$t0,$t3,0xc
    # Line 261
    or	$v0,$v0,$v1
    sw	$v0,31788($a0)
    # Line 245
    andi	$t0,$t0,0xff
    # Line 239
    srl	$s8,$t3,0x16
    # Line 261
    lw	$at,-26576($s1)
    # Line 184
    sdc1	$f14,48($sp)
    # Line 239
    andi	$s8,$s8,0x1
    # Line 238
    srl	$t8,$t3,0x15
    sd	$s3,240($sp)
    # Line 237
    srl	$t3,$t3,0x14
    # Line 238
    andi	$t8,$t8,0x1
    sd	$ra,232($sp)
    # Line 261
    beqz	$at,.L0d964cdc
    # Line 237
    andi	$t3,$t3,0x1
    # Line 265
    sw	$zero,-26576($s1)
    ori	$at,$s0,0x443
    sw	$at,0($s0)
    li	$ra,250
    sw	$ra,0($s0)
    ori	$t9,$s0,0x46
    sw	$t9,0($s0)
    sw	$t9,0($s0)
.L0d964cdc:
    lui	$a0,0x1
    ori	$a1,$a0,0x420
    sw	$a1,0($s0)
    lw	$v1,31792($s2)
    sw	$v1,0($s0)
    lw	$v0,-26576($s1)
    beqz	$v0,.L0d964d1c
    sd	$s8,72($sp)
    # Line 266
    sw	$zero,-26576($s1)
    ori	$a4,$a0,0x443
    sw	$a4,0($s0)
    li	$a3,250
    sw	$a3,0($s0)
    ori	$a2,$a0,0x46
    sw	$a2,0($s0)
    sw	$a2,0($s0)
.L0d964d1c:
    lui	$s8,0x1
    ori	$s8,$s8,0x41f
    sw	$s8,0($s0)
    lw	$a5,31788($s2)
    sw	$a5,0($s0)
    # Line 276
    lw	$a0,-26972($s1)
    # Line 278
    srl	$a4,$a0,0x7
    sll	$a5,$a0,0xc
    # Line 289
    ld	$ra,72($sp)
    # Line 276
    srl	$a3,$a0,0xa
    # Line 278
    andi	$a4,$a4,0x7
    # Line 289
    ld	$at,80($sp)
    # Line 278
    bltz	$a5,.L0d965220
    # Line 276
    andi	$a3,$a3,0x7
    # Line 289
    bne	$t8,$t3,.L0d964d74
    move	$s3,$zero
    li	$s3,1
    bne	$ra,$t3,.L0d964d70
    nop
    beq	$at,$t3,.L0d964d74
    nop
.L0d964d70:
    move	$s3,$zero
.L0d964d74:
    # Line 295
    lbu	$v0,3225($s2)
.L0d964d78:
    beqz	$v0,.L0d965208
    nop
    beq	$t1,$a3,.L0d9651f4
    li	$t9,3
.L0d964d88:
    # Line 302
    li	$v1,255
.L0d964d8c:
    beq	$t0,$v1,.L0d965244
    ld	$v1,96($sp)
.L0d964d94:
    beqz	$t0,.L0d965254
    ld	$a1,96($sp)
    move	$a4,$zero
.L0d964da0:
    # Line 305
    beqz	$a3,.L0d965210
    # Line 302
    and	$s3,$a4,$s3
    # Line 305
    lbu	$a1,327($sp)
    beqz	$a1,.L0d965210
    li	$a3,1
.L0d964db4:
    # Line 315
    mult	$s5,$s4
    and	$s3,$a3,$s3
    lui	$a6,0x2
    # Line 318
    lw	$a2,31600($s2)
    # Line 315
    sll	$a7,$a0,0x4
    addu	$a6,$a6,$s2
    # Line 325
    move	$a3,$zero
    # Line 315
    slti	$a7,$a7,0
    lw	$a6,-25132($a6)
    movn	$s3,$zero,$a7
    mflo	$a5
    # Line 318
    andi	$a4,$a2,0x40
    # Line 315
    slt	$a5,$a5,$a6
    # Line 318
    andi	$a2,$a2,0x10
    # Line 315
    movn	$s3,$zero,$a5
    # Line 318
    sltiu	$a2,$a2,1
    beqz	$a4,.L0d964e0c
    movn	$s3,$zero,$a2
    # Line 323
    beqz	$s3,.L0d965218
    lbu	$a3,327($sp)
    beqz	$a3,.L0d965218
    li	$a3,1
.L0d964e0c:
    # Line 333
    lw	$t3,26976($s1)
    lui	$a4,0x20
    # Line 331
    lui	$ra,0x8000
    # Line 333
    or	$t3,$a4,$t3
    # Line 331
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    # Line 330
    lui	$a5,0xff7f
    sll	$t8,$s3,0x17
    ori	$a5,$a5,0xffff
    and	$t8,$t2,$t8
    and	$t9,$a5,$a0
    or	$t8,$t8,$t9
    # Line 331
    sll	$t9,$a3,0x1f
    # Line 333
    sw	$t3,26976($s1)
    # Line 331
    and	$t9,$t9,$ra
    and	$t8,$t8,$at
    or	$t8,$t8,$t9
    sw	$t8,-26972($s1)
    # Line 333
    sw	$t1,4120($zero)
    # Line 338
    lw	$a7,31748($s2)
    # Line 339
    li	$t0,-13
    # Line 338
    sd	$a7,136($sp)
    # Line 339
    and	$a7,$a7,$t0
    # Line 341
    li	$t0,-4
    # Line 339
    ori	$a7,$a7,0x8
    # Line 341
    and	$a7,$a7,$t0
    ori	$a7,$a7,0x2
    sw	$a7,31748($s2)
    lw	$a6,-26576($s1)
    beqz	$a6,.L0d964eb0
    # Line 345
    lui	$a0,0x1
    lui	$t9,0x1
    sw	$zero,-26576($s1)
    ori	$at,$t9,0x443
    sw	$at,0($s0)
    li	$ra,250
    sw	$ra,0($s0)
    ori	$t9,$t9,0x46
    sw	$t9,0($s0)
    sw	$t9,0($s0)
    lui	$a0,0x1
.L0d964eb0:
    ori	$a0,$a0,0x415
    sw	$a0,0($s0)
    lw	$v1,31748($s2)
    sw	$v1,0($s0)
    lw	$v0,26976($s1)
    beqz	$v0,.L0d964edc
    # Line 352
    nop	# was lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    bal __glOdysseyValidateHardware
    move	$a0,$s2
    li	$t1,2
    lui	$t2,0x80
.L0d964edc:
    beqz	$s3,.L0d964fbc
    # Line 363
    addu	$a4,$s6,$s4
    sw	$a4,32($sp)
    # Line 362
    sw	$s6,28($sp)
    # Line 361
    addu	$a5,$s7,$s5
    sw	$a5,24($sp)
    # Line 364
    ld	$a3,152($sp)
    # Line 360
    sw	$s7,20($sp)
    # Line 364
    lwc1	$f4,0($a3)
    # Line 361
    sd	$a5,64($sp)
    # Line 364
    swc1	$f4,0($sp)
    # Line 365
    lwc1	$f3,4($a3)
    # Line 373
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 365
    swc1	$f3,4($sp)
    # Line 366
    lwc1	$f2,8($a3)
    # Line 368
    ldc1	$f0,48($sp)
    # Line 366
    swc1	$f2,8($sp)
    # Line 367
    lwc1	$f1,12($a3)
    # Line 369
    li	$a2,48
    sw	$a2,36($sp)
    # Line 368
    swc1	$f0,16($sp)
    # Line 367
    swc1	$f1,12($sp)
    # Line 373
    move	$a0,$s2
    lui	$a1,0x6f64
    # Line 370
    lw	$a3,31600($s2)
    # Line 363
    sd	$a4,56($sp)
    # Line 373
    ori	$a1,$a1,0xe
    addiu	$a2,$sp,0
    # Line 370
    and	$a3,$a3,$t2
    # Line 373
    jal	__glOdysseyIoctl
    # Line 370
    sw	$a3,40($sp)
    ld	$a0,56($sp)
    li	$t1,2
    # Line 373
    beqz	$v0,.L0d964fb4
    ld	$a4,64($sp)
    # Line 377
    lw	$t0,26976($s1)
    lui	$a7,0x20
    # Line 376
    lw	$t3,-26972($s1)
    lui	$t2,0xff7f
    ori	$t2,$t2,0xffff
    # Line 377
    or	$a7,$a7,$t0
    sw	$a7,26976($s1)
    # Line 376
    and	$t2,$t2,$t3
    sw	$t2,-26972($s1)
    # Line 377
    sw	$t1,4120($zero)
    lw	$a6,26976($s1)
    beqz	$a6,.L0d964fc4
    # Line 378
    nop	# was lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    bal __glOdysseyValidateHardware
    move	$a0,$s2
    ld	$a0,56($sp)
    li	$t1,2
    b	.L0d964fc4
    ld	$a4,64($sp)
.L0d964fb4:
    bnez	$s3,.L0d965084
    # Line 429
    ld	$t3,136($sp)
.L0d964fbc:
    # Line 378
    addu	$a0,$s6,$s4
    addu	$a4,$s7,$s5
.L0d964fc4:
    # Line 413
    lui	$a3,0x1
    ori	$v0,$a3,0x4400
    sw	$v0,0($s0)
    li	$at,7
    sw	$at,0($s0)
    # Line 415
    lui	$ra,0x8f80
    ld	$t9,152($sp)
    ori	$ra,$ra,0xa944
    sw	$ra,0($s0)
    lwc1	$f12,0($t9)
    swc1	$f12,0($s0)
    lwc1	$f11,4($t9)
    swc1	$f11,0($s0)
    mtc1	$s7,$f9
    lwc1	$f10,8($t9)
    mtc1	$s6,$f8
    swc1	$f10,0($s0)
    mtc1	$a4,$f7
    cvt.s.w	$f9,$f9
    lwc1	$f10,12($t9)
    ldc1	$f5,48($sp)
    mtc1	$a0,$f6
    cvt.s.w	$f8,$f8
    swc1	$f10,0($s0)
    cvt.s.w	$f7,$f7
    swc1	$f9,0($s0)
    cvt.s.w	$f6,$f6
    swc1	$f8,0($s0)
    swc1	$f5,0($s0)
    swc1	$f7,0($s0)
    swc1	$f6,0($s0)
    swc1	$f5,0($s0)
    # Line 420
    ori	$t8,$a3,0x4001
    sw	$t8,0($s0)
    lw	$t3,-26892($s1)
    beqz	$t3,.L0d96507c
    li	$a2,1
    sw	$zero,-26576($s1)
    ori	$a1,$a3,0x443
    sw	$a1,0($s0)
    li	$a0,250
    sw	$a0,0($s0)
    ori	$v1,$a3,0x46
    sw	$v1,0($s0)
    sw	$v1,0($s0)
    li	$a2,1
.L0d96507c:
    sw	$a2,-26576($s1)
    # Line 429
    ld	$t3,136($sp)
.L0d965084:
    # Line 430
    ld	$t2,120($sp)
    # Line 431
    ld	$t0,144($sp)
    # Line 432
    ld	$a7,104($sp)
    # Line 433
    ld	$a6,112($sp)
    # Line 428
    ld	$t8,128($sp)
    sw	$t8,-26972($s1)
    # Line 433
    sw	$a6,31744($s2)
    # Line 432
    sw	$a7,31740($s2)
    # Line 431
    sw	$t0,31788($s2)
    # Line 430
    sw	$t2,31792($s2)
    # Line 429
    sw	$t3,31748($s2)
    # Line 434
    lui	$a5,0x20
    lw	$a4,26976($s1)
    ori	$a5,$a5,0x6
    or	$a4,$a4,$a5
    sw	$a4,26976($s1)
    sw	$t1,4120($zero)
    lw	$a3,-26576($s1)
    beqz	$a3,.L0d9650f4
    # Line 439
    lui	$t9,0x1
    sw	$zero,-26576($s1)
    ori	$at,$t9,0x443
    sw	$at,0($s0)
    li	$ra,250
    sw	$ra,0($s0)
    ori	$t9,$t9,0x46
    sw	$t9,0($s0)
    sw	$t9,0($s0)
.L0d9650f4:
    lui	$a0,0x1
    ori	$a0,$a0,0x415
    sw	$a0,0($s0)
    lw	$v1,31748($s2)
    sw	$v1,0($s0)
    lw	$v0,-26576($s1)
    beqz	$v0,.L0d965134
    # Line 440
    lui	$a1,0x1
    sw	$zero,-26576($s1)
    ori	$a3,$a1,0x443
    sw	$a3,0($s0)
    li	$a2,250
    sw	$a2,0($s0)
    ori	$a1,$a1,0x46
    sw	$a1,0($s0)
    sw	$a1,0($s0)
.L0d965134:
    lui	$a6,0x1
    ori	$a6,$a6,0x420
    sw	$a6,0($s0)
    lw	$a5,31792($s2)
    sw	$a5,0($s0)
    lw	$a4,-26576($s1)
    beqz	$a4,.L0d9651b4
    ld	$s3,240($sp)
    # Line 443
    ld	$gp,224($sp)
    # Line 441
    sw	$zero,-26576($s1)
    # Line 443
    ld	$s1,192($sp)
    ld	$s4,168($sp)
    ld	$s5,184($sp)
    ld	$s6,160($sp)
    ld	$s7,176($sp)
    # Line 441
    lui	$t0,0x1
    ori	$t2,$t0,0x443
    sw	$t2,0($s0)
    li	$t1,250
    sw	$t1,0($s0)
    ori	$t0,$t0,0x46
    sw	$t0,0($s0)
    sw	$t0,0($s0)
    sw	$s8,0($s0)
    lw	$a7,31788($s2)
    # Line 443
    ld	$s2,208($sp)
    ld	$ra,232($sp)
    ld	$s8,216($sp)
    # Line 441
    sw	$a7,0($s0)
    # Line 443
    ld	$s0,200($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9651b4:
    ld	$s6,160($sp)
    ld	$s3,240($sp)
    ld	$s4,168($sp)
    ld	$s7,176($sp)
    ld	$s5,184($sp)
    ld	$s1,192($sp)
    ld	$gp,224($sp)
    # Line 441
    sw	$s8,0($s0)
    lw	$t3,31788($s2)
    # Line 443
    ld	$s2,208($sp)
    ld	$ra,232($sp)
    ld	$s8,216($sp)
    # Line 441
    sw	$t3,0($s0)
    # Line 443
    ld	$s0,200($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9651f4:
    # Line 295
    li	$t8,4
    beq	$a4,$t8,.L0d965208
    nop
    bne	$a4,$t9,.L0d964d8c
    # Line 302
    li	$v1,255
.L0d965208:
    b	.L0d964d88
    # Line 295
    move	$s3,$zero
.L0d965210:
    b	.L0d964db4
    # Line 305
    move	$a3,$zero
.L0d965218:
    b	.L0d964e0c
    # Line 323
    move	$a3,$zero
.L0d965220:
    # Line 284
    ld	$ra,88($sp)
    li	$at,4095
    ld	$v0,88($sp)
    beq	$ra,$at,.L0d965264
    move	$s3,$zero
    beqz	$v0,.L0d965264
    nop
.L0d96523c:
    b	.L0d964d78
    # Line 295
    lbu	$v0,3225($s2)
.L0d965244:
    # Line 302
    beqz	$v1,.L0d964d94
    nop
.L0d96524c:
    b	.L0d964da0
    li	$a4,1
.L0d965254:
    bnez	$a1,.L0d964da0
    move	$a4,$zero
    b	.L0d96524c
    nop
.L0d965264:
    # Line 284
    b	.L0d96523c
    li	$s3,1
.end __glOdysseyClear

# Function: __glOdyim_SoftClear
# Declared: Line 446 (Source lines: 446-451)
# Address: 0x0d965270 - 0x0d965310 (Size: 160 bytes, Frame: 32)
.globl __glOdyim_SoftClear
.ent __glOdyim_SoftClear
__glOdyim_SoftClear:
    # Line 448
    lw	$a4,4112($zero)
    lui	$a3,0x1
    lw	$a2,4120($zero)
    addu	$a3,$a4,$a3
    # Line 446
    addiu	$sp,$sp,-32
    # Line 448
    lw	$at,26980($a3)
    # Line 446
    sd	$a0,0($sp)
    lui	$v0,0x19
    sd	$ra,16($sp)
    addiu	$v0,$v0,13088
    sd	$gp,8($sp)
    # Line 448
    beqz	$at,.L0d965300
    # Line 446
    addu	$gp,$t9,$v0
    # Line 448
    beqz	$a2,.L0d9652d0
    li	$a6,1
    li	$a5,2
.L0d9652b0:
    beq	$a2,$a5,.L0d9652d0
    li	$a6,1
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9652f0
    nop
    li	$a6,1
.L0d9652d0:
    sb	$a6,26997($a3)
    lw	$t9,11840($a4)
    jalr	$t9
    move	$a0,$a4
    sw	$zero,4120($zero)
    # Line 450
    # lw $t9, -26888($gp) # &__glim_Clear
.L0d9652e8:
    jal	__glim_Clear
    ld	$a0,0($sp)
.L0d9652f0:
    ld	$ra,16($sp)
    # Line 451
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d965300:
    # Line 448
    bnez	$a2,.L0d9652b0
    li	$a5,2
    b	.L0d9652e8
    # Line 450
    nop	# was lw $t9, -26888($gp) # &__glim_Clear
.end __glOdyim_SoftClear

.rdata
_lit8_41fffff800000000:
    .word 0x41fffff8, 0x00000000

