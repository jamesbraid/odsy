# Source: ../ODYSSEY/ody_bitmap.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_bitmap.c
# Total Functions: 4

.text

# Function: LoadAndSendStippledQuads
# Declared: Line 65 (Source lines: 70-241)
# Address: 0x0d95f560 - 0x0d95fdbc (Size: 2140 bytes, Frame: 176)
.ent LoadAndSendStippledQuads
LoadAndSendStippledQuads:
    # Line 70
    addiu	$sp,$sp,-304
    sd	$a0,288($sp)
    sd	$a1,280($sp)
    sdc1	$f14,48($sp)
    sdc1	$f15,56($sp)
    sdc1	$f16,64($sp)
    sd	$s0,192($sp)
    # Line 108
    lw	$s0,0($a1)
    # Line 70
    sdc1	$f17,96($sp)
    # Line 108
    # lw $t9, -17036($gp) # &ceil
    mtc1	$s0,$f12
    # Line 70
    sdc1	$f28,72($sp)
    # Line 108
    ldc1	$f28,_lit8_3fc0000000000000
    sd	$s7,168($sp)
    cvt.d.w	$f12,$f12
    # Line 70
    sd	$s8,184($sp)
    move	$s8,$a6
    sd	$ra,200($sp)
    # Line 108
    jal	ceil
    mul.d	$f12,$f12,$f28
    # Line 111
    mtc1	$s0,$f12
    cvt.s.w	$f12,$f12
    # Line 108
    trunc.l.d	$f14,$f0
    # Line 111
    lwc1	$f13,_lit_3d000000
    # lw $t9, -17036($gp) # &ceil
    # Line 108
    dmfc1	$s7,$f14
    # Line 111
    mul.s	$f12,$f12,$f13
    # Line 108
    sll	$s7,$s7,0x0
    sd	$s1,176($sp)
    # Line 111
    jal	ceil
    cvt.d.s	$f12,$f12
    # Line 112
    ld	$s1,280($sp)
    lw	$s1,4($s1)
    mtc1	$s1,$f12
    cvt.s.w	$f12,$f12
    # Line 111
    trunc.l.d	$f14,$f0
    # Line 112
    lwc1	$f13,_lit_3d000000
    # lw $t9, -17036($gp) # &ceil
    # Line 111
    dmfc1	$t8,$f14
    # Line 112
    mul.s	$f12,$f12,$f13
    # Line 111
    sll	$t8,$t8,0x0
    sd	$t8,232($sp)
    # Line 112
    jal	ceil
    cvt.d.s	$f12,$f12
    sdc1	$f24,40($sp)
    sdc1	$f22,32($sp)
    sdc1	$f30,24($sp)
    sdc1	$f20,16($sp)
    # Line 119
    sra	$a6,$s1,0x1f
    sdc1	$f26,8($sp)
    # Line 115
    sra	$a5,$s0,0x1f
    # Line 112
    trunc.l.d	$f13,$f0
    sd	$s5,136($sp)
    # Line 115
    xor	$a4,$s0,$a5
    # Line 119
    xor	$a3,$s1,$a6
    sd	$s4,128($sp)
    subu	$a3,$a3,$a6
    # Line 115
    subu	$a4,$a4,$a5
    # Line 112
    dmfc1	$t8,$f13
    sd	$s6,120($sp)
    # Line 115
    andi	$a4,$a4,0x1f
    # Line 119
    andi	$a3,$a3,0x1f
    sd	$s3,112($sp)
    xor	$a3,$a3,$a6
    # Line 112
    sll	$t8,$t8,0x0
    sd	$s2,104($sp)
    # Line 115
    xor	$a4,$a4,$a5
    # Line 119
    subu	$a3,$a3,$a6
    # Line 112
    sd	$t8,224($sp)
    # Line 119
    beqz	$t8,.L0d95fd68
    # Line 115
    subu	$a4,$a4,$a5
    # Line 119
    sd	$zero,248($sp)
    sd	$zero,240($sp)
    lwc1	$f22,_lit_3e000000
    ldc1	$f26,_lit8_3ff0000000000000
    move	$a5,$a3
    move	$t0,$a4
    ldc1	$f30,48($sp)
    li	$a7,32
    sltiu	$t1,$a4,1
    sltiu	$a6,$a3,1
    movn	$t0,$a7,$t1
    sd	$t0,256($sp)
    movn	$a5,$a7,$a6
    sd	$a5,208($sp)
    ldc1	$f14,56($sp)
    ldc1	$f15,64($sp)
    ld	$t3,288($sp)
    ld	$t2,232($sp)
    ld	$t8,224($sp)
    sll	$t9,$t2,0x5
    sd	$t9,272($sp)
    lui	$a0,0x1
    addiu	$t8,$t8,-1
    sd	$t8,216($sp)
    addu	$t3,$a0,$t3
    sd	$t3,152($sp)
    sdc1	$f15,80($sp)
    addiu	$t2,$t2,-1
    sdc1	$f14,88($sp)
    sll	$t2,$t2,0x5
    addiu	$s3,$sp,0
    b	.L0d95f724
    sd	$t2,264($sp)
.L0d95f700:
    # Line 127
    ld	$ra,248($sp)
.L0d95f704:
    ld	$at,224($sp)
    addiu	$ra,$ra,1
    sd	$ra,248($sp)
    sltu	$ra,$ra,$at
    ld	$at,240($sp)
    addiu	$at,$at,32
    beqz	$ra,.L0d95fd68
    sd	$at,240($sp)
.L0d95f724:
    # Line 119
    ld	$v0,232($sp)
    beqz	$v0,.L0d95f704
    # Line 127
    ld	$ra,248($sp)
    # Line 119
    ld	$a3,240($sp)
    ld	$a2,248($sp)
    ld	$a1,216($sp)
    li	$s6,32
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    xor	$a1,$a1,$a2
    ld	$a2,208($sp)
    dmtc1	$a3,$f20
    sltiu	$a1,$a1,1
    movn	$s6,$a2,$a1
    dsll32	$v1,$s6,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f24
    cvt.s.l	$f20,$f20
    sd	$zero,160($sp)
    b	.L0d95fa70
    cvt.s.l	$f24,$f24
    nop
    nop
.L0d95f780:
    # Line 172
    ld	$a7,288($sp)
    # Line 173
    lw	$t0,3664($a7)
    # Line 172
    lw	$t1,3660($a7)
    # Line 173
    mtc1	$t0,$f1
    # Line 172
    ld	$a5,280($sp)
    mtc1	$t1,$f14
    lwc1	$f13,8($a5)
    # Line 173
    cvt.s.w	$f1,$f1
    lwc1	$f0,372($a7)
    # Line 172
    cvt.s.w	$f14,$f14
    lwc1	$f12,368($a7)
    sub.s	$f13,$f5,$f13
    # Line 173
    sub.s	$f0,$f0,$f1
    lwc1	$f1,12($a5)
    # Line 172
    sub.s	$f12,$f12,$f14
    # Line 173
    cvt.d.s	$f0,$f0
    sub.s	$f1,$f20,$f1
    add.d	$f0,$f0,$f26
    cvt.d.s	$f1,$f1
    # Line 172
    add.s	$f12,$f12,$f13
    # Line 173
    sub.d	$f0,$f0,$f1
    lw	$a4,-26576($a1)
    # Line 172
    trunc.w.s	$f12,$f12
    # Line 173
    trunc.w.d	$f0,$f0
    # Line 172
    cvt.s.w	$f12,$f12
    # Line 173
    beqz	$a4,.L0d95f814
    cvt.s.w	$f0,$f0
    # Line 181
    sw	$zero,-26576($a1)
    lui	$t8,0x1
    ori	$t8,$t8,0x443
    sw	$t8,0($a0)
    li	$t3,250
    lui	$t2,0x1
    sw	$t3,0($a0)
    ori	$t2,$t2,0x46
    sw	$t2,0($a0)
    sw	$t2,0($a0)
.L0d95f814:
    lui	$a4,0x1
    ld	$t9,288($sp)
    ori	$a4,$a4,0x43f
    sw	$a4,0($a0)
    lw	$a3,31736($t9)
    lui	$a2,0x1
    sw	$a3,0($a0)
    ori	$a2,$a2,0x3c4e
    sw	$a2,0($a0)
    lw	$v1,31608($t9)
    sw	$v1,0($a0)
    lw	$v0,31612($t9)
    sw	$v0,0($a0)
    lw	$at,31616($t9)
    sw	$at,0($a0)
    lw	$ra,31620($t9)
    sw	$ra,0($a0)
    lw	$t8,31624($t9)
    sw	$t8,0($a0)
    lw	$t3,31628($t9)
    sw	$t3,0($a0)
    lw	$t2,31632($t9)
    sw	$t2,0($a0)
    lw	$t1,31636($t9)
    sw	$t1,0($a0)
    lw	$t0,31640($t9)
    sw	$t0,0($a0)
    lw	$a7,31644($t9)
    sw	$a7,0($a0)
    lw	$a5,31648($t9)
    sw	$a5,0($a0)
    lw	$a4,31652($t9)
    sw	$a4,0($a0)
    lw	$a3,31656($t9)
    sw	$a3,0($a0)
    lw	$a2,31660($t9)
    sw	$a2,0($a0)
    lw	$v1,31664($t9)
    sw	$v1,0($a0)
    lw	$v0,31668($t9)
    lui	$at,0x1
    sw	$v0,0($a0)
    ori	$at,$at,0x3c4f
    sw	$at,0($a0)
    lw	$ra,31672($t9)
    sw	$ra,0($a0)
    lw	$t8,31676($t9)
    sw	$t8,0($a0)
    lw	$t3,31680($t9)
    sw	$t3,0($a0)
    lw	$t2,31684($t9)
    sw	$t2,0($a0)
    lw	$t1,31688($t9)
    sw	$t1,0($a0)
    lw	$t0,31692($t9)
    sw	$t0,0($a0)
    lw	$a7,31696($t9)
    sw	$a7,0($a0)
    lw	$a5,31700($t9)
    sw	$a5,0($a0)
    lw	$a4,31704($t9)
    sw	$a4,0($a0)
    lw	$a3,31708($t9)
    sw	$a3,0($a0)
    lw	$a2,31712($t9)
    sw	$a2,0($a0)
    lw	$v1,31716($t9)
    sw	$v1,0($a0)
    lw	$v0,31720($t9)
    sw	$v0,0($a0)
    lw	$at,31724($t9)
    sw	$at,0($a0)
    lw	$ra,31728($t9)
    sw	$ra,0($a0)
    lw	$t9,31732($t9)
    sw	$t9,0($a0)
    lw	$a3,25624($a1)
    beqz	$a3,.L0d95fc58
    # Line 222
    lui	$t1,0x1
    # Line 185
    ldc1	$f15,96($sp)
    dmtc1	$zero,$f16
    cvt.d.s	$f15,$f15
    c.eq.d	$f15,$f16
    bc1t	.L0d95f97c
    # Line 198
    lui	$v1,0x1
    # Line 185
    lw	$a7,12($a3)
    li	$a5,0x806f
    beq	$a5,$a7,.L0d95fd28
    # Line 187
    ld	$ra,144($sp)
    # Line 198
    lui	$v1,0x1
.L0d95f97c:
    ori	$v1,$v1,0x4400
    sw	$v1,0($a0)
    li	$v0,7
    sw	$v0,0($a0)
    # Line 200
    lui	$at,0x8f80
    ld	$t2,288($sp)
    ori	$at,$at,0xb968
    sw	$at,0($a0)
    lw	$ra,248($t2)
    lwc1	$f25,0($ra)
    swc1	$f25,0($a0)
    lw	$t9,248($t2)
    lwc1	$f23,4($t9)
    swc1	$f23,0($a0)
    lw	$t8,248($t2)
    ld	$t3,144($sp)
    lwc1	$f21,8($t8)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    swc1	$f21,0($a0)
    dmtc1	$t3,$f19
    lw	$t2,248($t2)
    ldc1	$f16,80($sp)
    lwc1	$f21,12($t2)
    ldc1	$f17,88($sp)
    cvt.s.l	$f19,$f19
    swc1	$f21,0($a0)
    swc1	$f12,0($a0)
    swc1	$f0,0($a0)
    add.s	$f19,$f19,$f12
    swc1	$f30,0($a0)
    sub.s	$f18,$f0,$f24
    swc1	$f19,0($a0)
    swc1	$f18,0($a0)
    swc1	$f30,0($a0)
    swc1	$f17,0($a0)
    swc1	$f16,0($a0)
    swc1	$f17,0($a0)
    # Line 212
    lui	$t1,0x1
    # Line 200
    swc1	$f16,0($a0)
    # Line 212
    ori	$t1,$t1,0x4001
    sw	$t1,0($a0)
    lw	$t0,-26892($a1)
    beqz	$t0,.L0d95fa5c
    li	$a5,1
    sw	$zero,-26576($a1)
    lui	$a4,0x1
    ori	$a4,$a4,0x443
    sw	$a4,0($a0)
    li	$a3,250
    lui	$a2,0x1
    sw	$a3,0($a0)
    ori	$a2,$a2,0x46
    sw	$a2,0($a0)
    sw	$a2,0($a0)
    li	$a5,1
.L0d95fa5c:
    sw	$a5,-26576($a1)
.L0d95fa60:
    # Line 128
    ld	$a7,272($sp)
    addiu	$a6,$a6,32
    beq	$a6,$a7,.L0d95f700
    sd	$a6,160($sp)
.L0d95fa70:
    # Line 133
    ld	$t2,264($sp)
    ld	$t1,160($sp)
    li	$s1,32
    xor	$t1,$t1,$t2
    ld	$t2,256($sp)
    move	$s0,$s1
    sltiu	$t1,$t1,1
    movn	$s0,$t2,$t1
    dsll32	$t0,$s0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f12
    # lw $t9, -17036($gp) # &ceil
    cvt.d.l	$f12,$f12
    jal	ceil
    mul.d	$f12,$f12,$f28
    ld	$a6,160($sp)
    dsll32	$t3,$a6,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f5
    ld	$a1,152($sp)
    lui	$a0,0x1
    sd	$s0,144($sp)
    beqz	$s6,.L0d95f780
    cvt.s.l	$f5,$f5
    trunc.l.d	$f6,$f0
    dmfc1	$s2,$f6
    ld	$s5,288($sp)
    move	$s4,$zero
    b	.L0d95fdb0
    sll	$s2,$s2,0x0
    nop
    nop
.L0d95faf0:
    addiu	$a4,$a4,-1
    # Line 154
    addu	$t8,$s1,$a3
    # Line 148
    addiu	$ra,$a3,1
    # Line 154
    lbu	$t8,0($t8)
    addu	$t9,$a3,$s3
    # Line 148
    andi	$a3,$ra,0xff
    bnez	$a4,.L0d95faf0
    # Line 154
    sb	$t8,0($t9)
.L0d95fb10:
    sra	$t9,$s2,0x3
    beqz	$t9,.L0d95fbe4
    nop
    nop
.L0d95fb20:
    # Line 148
    addiu	$t8,$a3,1
    andi	$t8,$t8,0xff
    # Line 154
    addu	$t9,$s1,$a3
    # Line 148
    addiu	$t3,$t8,1
    # Line 154
    addu	$a3,$a3,$s3
    lbu	$t9,0($t9)
    # Line 148
    andi	$t3,$t3,0xff
    # Line 154
    sb	$t9,0($a3)
    addu	$s0,$s1,$t8
    # Line 148
    addiu	$t0,$t3,1
    # Line 154
    addu	$t8,$t8,$s3
    lbu	$s0,0($s0)
    # Line 148
    andi	$t0,$t0,0xff
    # Line 154
    sb	$s0,0($t8)
    addu	$t2,$s1,$t3
    # Line 148
    addiu	$t1,$t0,1
    # Line 154
    addu	$t3,$t3,$s3
    lbu	$t2,0($t2)
    # Line 148
    andi	$t1,$t1,0xff
    # Line 154
    sb	$t2,0($t3)
    addu	$a7,$s1,$t0
    # Line 148
    addiu	$a5,$t1,1
    # Line 154
    addu	$t0,$t0,$s3
    lbu	$a7,0($a7)
    # Line 148
    andi	$a5,$a5,0xff
    # Line 154
    sb	$a7,0($t0)
    addu	$a4,$s1,$a5
    lbu	$a4,0($a4)
    addu	$a2,$s1,$t1
    # Line 148
    addiu	$v1,$a5,1
    # Line 154
    addu	$a3,$t1,$s3
    lbu	$a2,0($a2)
    # Line 148
    andi	$v1,$v1,0xff
    # Line 154
    addu	$a5,$a5,$s3
    sb	$a2,0($a3)
    # Line 148
    addiu	$at,$v1,1
    # Line 154
    sb	$a4,0($a5)
    addu	$v0,$s1,$v1
    # Line 148
    andi	$at,$at,0xff
    # Line 154
    addu	$v1,$v1,$s3
    lbu	$v0,0($v0)
    # Line 148
    addiu	$a3,$at,1
    # Line 154
    sb	$v0,0($v1)
    addu	$ra,$s1,$at
    # Line 148
    andi	$a3,$a3,0xff
    # Line 154
    addu	$at,$at,$s3
    lbu	$ra,0($ra)
    # Line 148
    bne	$s2,$a3,.L0d95fb20
    # Line 154
    sb	$ra,0($at)
.L0d95fbe4:
    # Line 142
    addiu	$s4,$s4,1
    addiu	$s5,$s5,-4
    # Line 166
    lw	$t9,0($sp)
    andi	$a4,$s2,0x7
    # Line 142
    beq	$s6,$s4,.L0d95f780
    # Line 166
    sw	$t9,31736($s5)
.L0d95fbfc:
    # Line 133
    beqz	$s2,.L0d95fbe4
    sw	$zero,0($sp)
    move	$a3,$zero
    dsll32	$t9,$s7,0x0
    dsll32	$ra,$s4,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f9
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f8
    cvt.s.l	$f9,$f9
    cvt.s.l	$f8,$f8
    add.s	$f9,$f9,$f20
    mul.s	$f8,$f8,$f9
    mul.s	$f7,$f5,$f22
    trunc.w.s	$f8,$f8
    trunc.w.s	$f7,$f7
    mfc1	$t8,$f8
    mfc1	$s1,$f7
    addu	$t8,$s8,$t8
    bnez	$a4,.L0d95faf0
    addu	$s1,$s1,$t8
    b	.L0d95fb10
    nop
.L0d95fc58:
    # Line 222
    ori	$t1,$t1,0x4400
    sw	$t1,0($a0)
    li	$t0,7
    sw	$t0,0($a0)
    # Line 224
    lui	$a7,0x8f80
    ld	$v1,288($sp)
    ori	$a7,$a7,0xa944
    sw	$a7,0($a0)
    lw	$a5,248($v1)
    lwc1	$f15,0($a5)
    swc1	$f15,0($a0)
    lw	$a4,248($v1)
    lwc1	$f14,4($a4)
    swc1	$f14,0($a0)
    lw	$a3,248($v1)
    ld	$a2,144($sp)
    lwc1	$f13,8($a3)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    swc1	$f13,0($a0)
    dmtc1	$a2,$f11
    lw	$v1,248($v1)
    lwc1	$f13,12($v1)
    cvt.s.l	$f11,$f11
    swc1	$f13,0($a0)
    swc1	$f12,0($a0)
    swc1	$f0,0($a0)
    add.s	$f11,$f11,$f12
    swc1	$f30,0($a0)
    sub.s	$f10,$f0,$f24
    swc1	$f11,0($a0)
    swc1	$f10,0($a0)
    # Line 235
    lui	$v0,0x1
    # Line 224
    swc1	$f30,0($a0)
    # Line 235
    ori	$v0,$v0,0x4001
    sw	$v0,0($a0)
    lw	$at,-26892($a1)
    beqz	$at,.L0d95fd20
    li	$t9,1
    sw	$zero,-26576($a1)
    lui	$t8,0x1
    ori	$t8,$t8,0x443
    sw	$t8,0($a0)
    li	$t3,250
    lui	$t2,0x1
    sw	$t3,0($a0)
    ori	$t2,$t2,0x46
    sw	$t2,0($a0)
    sw	$t2,0($a0)
    li	$t9,1
.L0d95fd20:
    b	.L0d95fa60
    sw	$t9,-26576($a1)
.L0d95fd28:
    # Line 187
    ld	$t9,288($sp)
    dsll32	$ra,$ra,0x0
    lw	$at,3704($t9)
    dsrl32	$ra,$ra,0x0
    mtc1	$at,$f13
    dmtc1	$ra,$f14
    cvt.s.w	$f13,$f13
    lw	$t9,6132($t9)
    cvt.s.l	$f14,$f14
    lw	$t9,1856($t9)
    sub.s	$f13,$f13,$f0
    add.s	$f14,$f14,$f12
    jalr	$t9
    add.s	$f15,$f13,$f24
    b	.L0d95fa60
    ld	$a6,160($sp)
.L0d95fd68:
    # Line 241
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,104($sp)
    ld	$s3,112($sp)
    ld	$s4,128($sp)
    ld	$s5,136($sp)
    ld	$s6,120($sp)
    ld	$s7,168($sp)
    ld	$s8,184($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    ld	$ra,200($sp)
    ldc1	$f26,8($sp)
    ldc1	$f28,72($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0d95fdb0:
    andi	$a4,$s2,0x7
    b	.L0d95fbfc
    nop
.end LoadAndSendStippledQuads

# Function: DrawBitmapUsingPolyStipple
# Declared: Line 245 (Source lines: 248-476)
# Address: 0x0d95fdc0 - 0x0d9608a0 (Size: 2784 bytes, Frame: 144)
.ent DrawBitmapUsingPolyStipple
DrawBitmapUsingPolyStipple:
    # Line 248
    addiu	$sp,$sp,-528
    sd	$s3,488($sp)
    # Line 264
    lui	$s3,0x1
    # Line 248
    sd	$s2,504($sp)
    # Line 264
    addu	$s2,$s3,$a0
    lbu	$at,26052($s2)
    nop
    # Line 248
    sd	$s1,496($sp)
    # Line 264
    bnez	$at,.L0d9604b8
    # Line 248
    move	$s1,$a0
    # Line 278
    lw	$v0,31776($a0)
    lw	$a0,26044($s2)
    sd	$a1,480($sp)
    bne	$v0,$a0,.L0d95fe0c
    sd	$a2,472($sp)
    lw	$v1,26048($s2)
    lw	$a1,31780($s1)
    beq	$v1,$a1,.L0d95fe8c
    # Line 285
    addiu	$a7,$sp,80
.L0d95fe0c:
    # Line 278
    sw	$a0,31776($s1)
    lw	$a3,26048($s2)
    sw	$a3,31780($s1)
    lw	$a2,-26576($s2)
    beqz	$a2,.L0d95fe44
    lui	$a4,0x1
    sw	$zero,-26576($s2)
    ori	$a6,$a4,0x443
    sw	$a6,0($s3)
    li	$a5,250
    sw	$a5,0($s3)
    ori	$a4,$a4,0x46
    sw	$a4,0($s3)
    sw	$a4,0($s3)
.L0d95fe44:
    lui	$t2,0x1
    ori	$t2,$t2,0x81d
    sw	$t2,0($s3)
    lw	$t1,31776($s1)
    sw	$t1,0($s3)
    lw	$t0,31780($s1)
    sw	$t0,0($s3)
    lw	$a7,31600($s1)
    dsll32	$a7,$a7,0xb
    bgez	$a7,.L0d9605e4
    nop
.L0d95fe70:
    lw	$t8,26980($s2)
    sd	$s0,512($sp)
    ori	$t8,$t8,0x2000
    sw	$t8,26980($s2)
    li	$t3,2
    sw	$t3,4120($zero)
    # Line 285
    addiu	$a7,$sp,80
.L0d95fe8c:
    addiu	$a5,$sp,16
    sd	$s0,512($sp)
    addiu	$s0,$s1,64
    move	$a4,$s1
    lw	$a0,31736($s1)
.L0d95fea0:
    # Line 290
    lw	$at,31672($a4)
    sw	$at,0($a7)
    # Line 288
    addiu	$a4,$a4,4
    addiu	$a5,$a5,4
    # Line 289
    lw	$t9,31604($a4)
    # Line 288
    addiu	$a7,$a7,4
    bne	$a4,$s0,.L0d95fea0
    # Line 289
    sw	$t9,-4($a5)
    sd	$a0,440($sp)
    sd	$ra,520($sp)
    # Line 294
    lw	$v1,31740($s1)
    # Line 297
    lbu	$v0,-22724($s2)
    lw	$a1,-26584($s2)
    sd	$a1,448($sp)
    beqz	$v0,.L0d95feec
    sd	$v1,456($sp)
    # Line 304
    # lw $t9, -31628($gp) # &__glOdysseyUpdateRasterPos
    jal	__glOdysseyUpdateRasterPos
    move	$a0,$s1
.L0d95feec:
    # Line 307
    # lw $t9, -31140($gp) # &__glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    jal	__glOdysseyImageCalcOdyEyeSpaceRasterPosZ
    nop
    lw	$a0,25624($s2)
    beqz	$a0,.L0d960504
    sdc1	$f0,400($sp)
    # Line 313
    mtc1	$zero,$f3
    lwc1	$f5,300($s1)
    # Line 311
    lwc1	$f0,288($s1)
    # Line 313
    lwc1	$f2,296($s1)
    # Line 312
    lwc1	$f1,292($s1)
    # Line 313
    c.eq.s	$f5,$f3
    sdc1	$f2,424($sp)
    # Line 312
    sdc1	$f1,408($sp)
    # Line 313
    bc1t	.L0d95ff60
    sdc1	$f0,416($sp)
    # Line 315
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f5
    div.d	$f6,$f6,$f7
    # Line 318
    ldc1	$f8,424($sp)
    # Line 317
    ldc1	$f7,408($sp)
    # Line 315
    cvt.s.d	$f6,$f6
    # Line 316
    ldc1	$f4,416($sp)
    # Line 318
    mul.s	$f8,$f6,$f8
    # Line 317
    mul.s	$f7,$f6,$f7
    # Line 318
    sdc1	$f8,424($sp)
    # Line 316
    mul.s	$f4,$f6,$f4
    # Line 317
    sdc1	$f7,408($sp)
    sdc1	$f4,416($sp)
.L0d95ff60:
    # Line 320
    ldc1	$f8,424($sp)
    dmtc1	$zero,$f5
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1t .L0d95ff88
    nop
    lw	$a2,12($a0)
    li	$a3,0x806f
    beq	$a2,$a3,.L0d960650
    nop
.L0d95ff88:
    # Line 364
    lw	$a6,31736($s1)
.L0d95ff8c:
    # Line 366
    lw	$a4,1792($s1)
    # Line 364
    li	$t0,-17
    # Line 365
    li	$a7,-13
    # Line 364
    and	$a6,$a6,$t0
    # Line 366
    andi	$t0,$a4,0x40
    # Line 365
    and	$a6,$a7,$a6
    # Line 366
    lw	$a0,31740($s1)
    li	$a5,-4
    # Line 365
    ori	$a6,$a6,0x4
    # Line 366
    and	$a6,$a5,$a6
    beqz	$t0,.L0d95ffc8
    sw	$a6,31736($s1)
    # Line 370
    li	$t1,-2049
    and	$a0,$a0,$t1
    sw	$a0,31740($s1)
.L0d95ffc8:
    dsll32	$t2,$a4,0x7
    bgez	$t2,.L0d95ffe4
    # Line 377
    ori	$t9,$a0,0x10
    # Line 374
    li	$t3,-129
    and	$a0,$a0,$t3
    sw	$a0,31740($s1)
    # Line 377
    ori	$t9,$a0,0x10
.L0d95ffe4:
    sw	$t9,31740($s1)
    lw	$t8,-26576($s2)
    beqz	$t8,.L0d96001c
    # Line 378
    lui	$a2,0x1
    lui	$ra,0x1
    sw	$zero,-26576($s2)
    ori	$v0,$ra,0x443
    sw	$v0,0($s3)
    li	$at,250
    sw	$at,0($s3)
    ori	$ra,$ra,0x46
    sw	$ra,0($s3)
    sw	$ra,0($s3)
    lui	$a2,0x1
.L0d96001c:
    ori	$a2,$a2,0x404
    sw	$a2,0($s3)
    lw	$a1,31740($s1)
    sw	$a1,0($s3)
    # Line 381
    lw	$a0,484($s1)
    li	$v1,6914
    beq	$v1,$a0,.L0d9604d4
    nop
.L0d96003c:
    # Line 383
    lw	$a4,31748($s1)
    # Line 384
    and	$a6,$a7,$a4
    ori	$a6,$a6,0x8
    # Line 385
    and	$a6,$a5,$a6
    ori	$a6,$a6,0x2
    sw	$a6,31748($s1)
    lw	$a3,-26576($s2)
    beqz	$a3,.L0d960084
    sd	$a4,464($sp)
    # Line 386
    lui	$a7,0x1
    sw	$zero,-26576($s2)
    ori	$t1,$a7,0x443
    sw	$t1,0($s3)
    li	$t0,250
    sw	$t0,0($s3)
    ori	$a7,$a7,0x46
    sw	$a7,0($s3)
    sw	$a7,0($s3)
.L0d960084:
    lui	$t3,0x1
    ori	$t3,$t3,0x415
    sw	$t3,0($s3)
    lw	$t2,31748($s1)
    sw	$t2,0($s3)
.L0d960098:
    # Line 390
    lw	$t8,1804($s1)
    beqz	$t8,.L0d9604cc
    nop	# was lw $t9, -29720($gp) # &__glOdysseyGetNumHWClipPlanes
    jal	__glOdysseyGetNumHWClipPlanes
    move	$a0,$s1
    beqz	$v0,.L0d960520
    nop
    # Line 391
    lw	$ra,31744($s1)
    # Line 392
    li	$at,-5
    # Line 393
    li	$v0,-3
    # Line 392
    and	$at,$ra,$at
    # Line 393
    and	$at,$at,$v0
    # Line 394
    li	$v0,-2
    and	$at,$at,$v0
    sw	$at,31744($s1)
    lw	$t9,-26576($s2)
    beqz	$t9,.L0d960104
    sd	$ra,432($sp)
    # Line 395
    lui	$v0,0x1
    sw	$zero,-26576($s2)
    ori	$a0,$v0,0x443
    sw	$a0,0($s3)
    li	$v1,250
    sw	$v1,0($s3)
    ori	$v0,$v0,0x46
    sw	$v0,0($s3)
    sw	$v0,0($s3)
.L0d960104:
    lui	$a2,0x1
    ori	$a2,$a2,0x405
    sw	$a2,0($s3)
    lw	$a1,31744($s1)
    sw	$a1,0($s3)
.L0d960118:
    # Line 399
    lw	$a4,-26576($s2)
    lw	$a3,-26584($s2)
    li	$a5,-4096
    and	$a3,$a3,$a5
    beqz	$a4,.L0d960154
    sw	$a3,-26584($s2)
    # Line 400
    lui	$a6,0x1
    sw	$zero,-26576($s2)
    ori	$t0,$a6,0x443
    sw	$t0,0($s3)
    li	$a7,250
    sw	$a7,0($s3)
    ori	$a6,$a6,0x46
    sw	$a6,0($s3)
    sw	$a6,0($s3)
.L0d960154:
    lui	$t3,0x1
    ori	$t3,$t3,0x456
    sw	$t3,0($s3)
    lw	$t2,-26584($s2)
    sw	$t2,0($s3)
    lw	$t1,26976($s2)
    beqz	$t1,.L0d960184
    # Line 409
    ld	$a1,480($sp)
    # Line 404
    # lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    jal	__glOdysseyValidateHardware
    move	$a0,$s1
    # Line 409
    ld	$a1,480($sp)
.L0d960184:
    ldc1	$f14,400($sp)
    # lw $t9, -32740($gp) # &sub_0d960000
    ldc1	$f15,416($sp)
    ldc1	$f16,408($sp)
    addiu	$t9,$t9,-2720
    ldc1	$f17,424($sp)
    move	$a0,$s1
    bal __glOdyim_PolygonOffsetEXT
    ld	$a6,472($sp)
    ld	$ra,520($sp)
    ld	$a0,432($sp)
    ld	$a1,448($sp)
    ld	$a6,464($sp)
    lui	$t0,0x1
    ldc1	$f0,424($sp)
    mtc1	$zero,$f5
    ori	$t0,$t0,0x456
    ld	$a2,456($sp)
    li	$t2,6914
    # Line 416
    addiu	$a7,$sp,80
    addiu	$a5,$sp,16
    ld	$t3,440($sp)
    lui	$t1,0x1
    move	$a4,$s1
    ori	$t1,$t1,0x404
    sw	$t3,31736($s1)
    nop
.L0d9601f0:
    # Line 419
    lw	$t8,0($a7)
    # Line 417
    addiu	$a5,$a5,4
    # Line 419
    sw	$t8,31672($a4)
    # Line 417
    addiu	$a4,$a4,4
    # Line 418
    lw	$t3,-4($a5)
    # Line 417
    addiu	$a7,$a7,4
    bne	$a4,$s0,.L0d9601f0
    # Line 418
    sw	$t3,31604($a4)
    # Line 417
    lw	$t9,-26576($s2)
    beqz	$t9,.L0d960244
    ld	$s0,512($sp)
    # Line 422
    sw	$zero,-26576($s2)
    lui	$at,0x1
    ori	$v1,$at,0x443
    sw	$v1,0($s3)
    li	$v0,250
    sw	$v0,0($s3)
    ori	$at,$at,0x46
    sw	$at,0($s3)
    move	$s0,$s0
    sw	$at,0($s3)
.L0d960244:
    lui	$a4,0x1
    ori	$a3,$a4,0x43f
    sw	$a3,0($s3)
    lw	$v1,31736($s1)
    sw	$v1,0($s3)
    ori	$v0,$a4,0x3c4e
    sw	$v0,0($s3)
    lw	$at,31608($s1)
    sw	$at,0($s3)
    lw	$t9,31612($s1)
    sw	$t9,0($s3)
    lw	$t8,31616($s1)
    sw	$t8,0($s3)
    lw	$t3,31620($s1)
    sw	$t3,0($s3)
    lw	$a7,31624($s1)
    sw	$a7,0($s3)
    lw	$a5,31628($s1)
    sw	$a5,0($s3)
    lw	$a3,31632($s1)
    sw	$a3,0($s3)
    lw	$v1,31636($s1)
    sw	$v1,0($s3)
    lw	$v0,31640($s1)
    sw	$v0,0($s3)
    lw	$at,31644($s1)
    sw	$at,0($s3)
    lw	$t9,31648($s1)
    sw	$t9,0($s3)
    lw	$t8,31652($s1)
    sw	$t8,0($s3)
    lw	$t3,31656($s1)
    sw	$t3,0($s3)
    lw	$a7,31660($s1)
    sw	$a7,0($s3)
    lw	$a5,31664($s1)
    sw	$a5,0($s3)
    lw	$a3,31668($s1)
    sw	$a3,0($s3)
    ori	$v1,$a4,0x3c4f
    sw	$v1,0($s3)
    lw	$v0,31672($s1)
    sw	$v0,0($s3)
    lw	$at,31676($s1)
    sw	$at,0($s3)
    lw	$t9,31680($s1)
    sw	$t9,0($s3)
    lw	$t8,31684($s1)
    sw	$t8,0($s3)
    lw	$t3,31688($s1)
    sw	$t3,0($s3)
    lw	$a7,31692($s1)
    sw	$a7,0($s3)
    lw	$a5,31696($s1)
    sw	$a5,0($s3)
    lw	$a3,31700($s1)
    sw	$a3,0($s3)
    lw	$v1,31704($s1)
    sw	$v1,0($s3)
    lw	$v0,31708($s1)
    sw	$v0,0($s3)
    lw	$at,31712($s1)
    sw	$at,0($s3)
    lw	$t9,31716($s1)
    sw	$t9,0($s3)
    lw	$t8,31720($s1)
    sw	$t8,0($s3)
    lw	$t3,31724($s1)
    sw	$t3,0($s3)
    lw	$a7,31728($s1)
    sw	$a7,0($s3)
    lw	$a5,31732($s1)
    sw	$a5,0($s3)
    # Line 425
    sw	$a2,31740($s1)
    lw	$a3,-26576($s2)
    beqz	$a3,.L0d960398
    nop
    # Line 426
    sw	$zero,-26576($s2)
    ori	$t3,$a4,0x443
    sw	$t3,0($s3)
    li	$a7,250
    sw	$a7,0($s3)
    ori	$a5,$a4,0x46
    sw	$a5,0($s3)
    sw	$a5,0($s3)
.L0d960398:
    sw	$t1,0($s3)
    lw	$t9,31740($s1)
    sw	$t9,0($s3)
    # Line 429
    lw	$t8,484($s1)
    beq	$t2,$t8,.L0d9604ec
    nop
.L0d9603b0:
    # Line 431
    sw	$a6,31748($s1)
    lw	$at,-26576($s2)
    beqz	$at,.L0d9603e8
    # Line 432
    lui	$a4,0x1
    lui	$v0,0x1
    sw	$zero,-26576($s2)
    ori	$a2,$v0,0x443
    sw	$a2,0($s3)
    li	$v1,250
    sw	$v1,0($s3)
    ori	$v0,$v0,0x46
    sw	$v0,0($s3)
    sw	$v0,0($s3)
    lui	$a4,0x1
.L0d9603e8:
    ori	$a4,$a4,0x415
    sw	$a4,0($s3)
    lw	$a3,31748($s1)
    sw	$a3,0($s3)
    # Line 436
    lw	$a5,1804($s1)
.L0d9603fc:
    beqz	$a5,.L0d960458
    nop
    lw	$a6,31744($s1)
    beq	$a6,$a0,.L0d960458
    nop
    # Line 437
    sw	$a0,31744($s1)
    lw	$a7,-26576($s2)
    beqz	$a7,.L0d960448
    # Line 438
    lui	$t9,0x1
    lui	$t1,0x1
    sw	$zero,-26576($s2)
    ori	$t3,$t1,0x443
    sw	$t3,0($s3)
    li	$t2,250
    sw	$t2,0($s3)
    ori	$t1,$t1,0x46
    sw	$t1,0($s3)
    sw	$t1,0($s3)
    lui	$t9,0x1
.L0d960448:
    ori	$t9,$t9,0x405
    sw	$t9,0($s3)
    lw	$t8,31744($s1)
    sw	$t8,0($s3)
.L0d960458:
    # Line 442
    lw	$at,-26576($s2)
    beqz	$at,.L0d960488
    sw	$a1,-26584($s2)
    # Line 443
    lui	$v0,0x1
    sw	$zero,-26576($s2)
    ori	$a0,$v0,0x443
    sw	$a0,0($s3)
    li	$v1,250
    sw	$v1,0($s3)
    ori	$v0,$v0,0x46
    sw	$v0,0($s3)
    sw	$v0,0($s3)
.L0d960488:
    sw	$t0,0($s3)
    lw	$a1,-26584($s2)
    sw	$a1,0($s3)
    # Line 447
    lw	$a0,25624($s2)
    beqz	$a0,.L0d9604bc
    ld	$s3,488($sp)
    c.eq.s $f0,$f5
    bc1t .L0d9604bc
    ld	$s3,488($sp)
    lw	$a2,12($a0)
    li	$a3,0x806f
    beq	$a2,$a3,.L0d960528
.L0d9604b8:
    ld	$s3,488($sp)
.L0d9604bc:
    ld	$s1,496($sp)
    ld	$s2,504($sp)
    # Line 476
    jr	$ra
    addiu	$sp,$sp,528
.L0d9604cc:
    # Line 395
    b	.L0d960118
    sd	$zero,432($sp)
.L0d9604d4:
    # Line 381
    lw	$a6,488($s1)
    move	$a4,$v1
    bne	$a4,$a6,.L0d96003c
    nop
    b	.L0d960098
    # Line 386
    sd	$zero,464($sp)
.L0d9604ec:
    # Line 429
    lw	$t1,488($s1)
    li	$a7,6914
    bne	$a7,$t1,.L0d9603b0
    nop
    b	.L0d9603fc
    # Line 436
    lw	$a5,1804($s1)
.L0d960504:
    # Line 357
    mtc1	$zero,$f11
    mtc1	$zero,$f10
    mtc1	$zero,$f9
    sdc1	$f11,416($sp)
    sdc1	$f10,408($sp)
    b	.L0d95ff88
    sdc1	$f9,424($sp)
.L0d960520:
    b	.L0d960118
    # Line 395
    sd	$zero,432($sp)
.L0d960528:
    # Line 449
    lw	$t9,6132($s1)
    lw	$t9,1500($t9)
    jal	sub_0d960000
    addiu	$a0,$sp,368
    # Line 450
    lw	$t9,6132($s1)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$sp,384
    # Line 452
    lw	$t9,6132($s1)
    lw	$t9,620($t9)
    jalr	$t9
    li	$a0,5889
    lbu	$ra,152($sp)
    beqz	$ra,.L0d960810
    lw	$a1,6132($s1)
    # Line 454
    lw	$t9,612($a1)
    jalr	$t9
    addiu	$a0,$sp,160
    # Line 459
    lw	$t9,6132($s1)
.L0d960574:
    lw	$t9,620($t9)
    jalr	$t9
    li	$a0,5888
    lbu	$ra,224($sp)
    beqz	$ra,.L0d960824
    lw	$a1,6132($s1)
    # Line 461
    lw	$t9,612($a1)
    jalr	$t9
    addiu	$a0,$sp,232
    # Line 466
    lw	$t9,6132($s1)
.L0d96059c:
    lw	$t9,620($t9)
    jalr	$t9
    li	$a0,5890
    lbu	$ra,296($sp)
    beqz	$ra,.L0d960838
    lw	$a1,6132($s1)
    # Line 468
    lw	$t9,612($a1)
    jalr	$t9
    addiu	$a0,$sp,304
    # Line 473
    lw	$t9,6132($s1)
.L0d9605c4:
    lw	$t9,620($t9)
    jalr	$t9
    lw	$a0,148($sp)
    # Line 474
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    lw	$a0,144($sp)
    b	.L0d9604b8
    ld	$ra,520($sp)
.L0d9605e4:
    # Line 278
    sw	$zero,12($sp)
    sw	$zero,8($sp)
    sw	$zero,4($sp)
    sw	$zero,0($sp)
    lw	$a4,31776($s1)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,0($sp)
    lw	$a3,31776($s1)
    andi	$a3,$a3,0xfff
    sw	$a3,8($sp)
    lw	$a2,31780($s1)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,4($sp)
    move	$a0,$s1
    lui	$a1,0x6f64
    lw	$at,31780($s1)
    sd	$ra,520($sp)
    ori	$a1,$a1,0xd
    addiu	$a2,$sp,0
    andi	$at,$at,0xfff
    jal	__glOdysseyIoctl
    sw	$at,12($sp)
    b	.L0d95fe70
    ld	$ra,520($sp)
.L0d960650:
    # Line 326
    lw	$t9,6132($s1)
    lw	$t9,492($t9)
    jalr	$t9
    nop
    # Line 327
    lw	$t9,6132($s1)
    lw	$t9,500($t9)
    addiu	$a1,$sp,148
    li	$a0,2976
    jalr	$t9
    # Line 326
    sw	$v0,144($sp)
    # Line 329
    lw	$t9,6132($s1)
    lw	$t9,620($t9)
    jalr	$t9
    li	$a0,5889
    # Line 330
    lw	$t9,6132($s1)
    lw	$t9,640($t9)
    jalr	$t9
    nop
    # Line 331
    lw	$t9,6132($s1)
    lw	$t9,492($t9)
    jalr	$t9
    nop
    li	$at,1283
    xor	$ra,$at,$v0
    sltiu	$ra,$ra,1
    beq	$at,$v0,.L0d96084c
    sb	$ra,152($sp)
    # Line 334
    lw	$t9,6132($s1)
.L0d9606c0:
    lw	$t9,608($t9)
    jalr	$t9
    nop
    # Line 335
    lw	$t9,6132($s1)
    lw	$at,3704($s1)
    dmtc1	$zero,$f14
    lw	$ra,3700($s1)
    mtc1	$at,$f15
    mtc1	$ra,$f13
    lw	$t9,632($t9)
    ldc1	$f17,_lit8_3ff0000000000000
    cvt.d.w	$f15,$f15
    ldc1	$f16,_lit8_bff0000000000000
    mov.d	$f12,$f14
    jalr	$t9
    cvt.d.w	$f13,$f13
    # Line 338
    lw	$t9,6132($s1)
    lw	$t9,620($t9)
    jalr	$t9
    li	$a0,5888
    # Line 339
    lw	$t9,6132($s1)
    lw	$t9,640($t9)
    jalr	$t9
    nop
    # Line 340
    lw	$t9,6132($s1)
    lw	$t9,492($t9)
    jalr	$t9
    nop
    li	$at,1283
    xor	$ra,$at,$v0
    sltiu	$ra,$ra,1
    beq	$at,$v0,.L0d960868
    sb	$ra,224($sp)
    # Line 343
    lw	$t9,6132($s1)
.L0d960748:
    lw	$t9,608($t9)
    jalr	$t9
    nop
    # Line 344
    lw	$t9,6132($s1)
    mtc1	$zero,$f13
    lw	$t9,664($t9)
    lwc1	$f14,264($s1)
    jalr	$t9
    mov.s	$f12,$f13
    # Line 346
    lw	$t9,6132($s1)
    lw	$t9,620($t9)
    jalr	$t9
    li	$a0,5890
    # Line 347
    lw	$t9,6132($s1)
    lw	$t9,640($t9)
    jalr	$t9
    nop
    # Line 348
    lw	$t9,6132($s1)
    lw	$t9,492($t9)
    jalr	$t9
    nop
    li	$at,1283
    xor	$ra,$at,$v0
    sltiu	$ra,$ra,1
    beq	$at,$v0,.L0d960884
    sb	$ra,296($sp)
    # Line 351
    lw	$t9,6132($s1)
.L0d9607b4:
    lw	$t9,608($t9)
    jalr	$t9
    nop
    # Line 353
    lw	$t9,6132($s1)
    lw	$t9,496($t9)
    addiu	$a1,$sp,368
    jalr	$t9
    li	$a0,2816
    # Line 354
    lw	$t9,6132($s1)
    lw	$t9,1500($t9)
    jalr	$t9
    lw	$a0,248($s1)
    # Line 356
    lw	$t9,6132($s1)
    lw	$t9,496($t9)
    addiu	$a1,$sp,384
    jalr	$t9
    li	$a0,2819
    # Line 357
    lw	$t9,6132($s1)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$s1,288
    b	.L0d95ff8c
    # Line 364
    lw	$a6,31736($s1)
.L0d960810:
    # Line 456
    lw	$t9,636($a1)
    jalr	$t9
    nop
    b	.L0d960574
    # Line 459
    lw	$t9,6132($s1)
.L0d960824:
    # Line 463
    lw	$t9,636($a1)
    jalr	$t9
    nop
    b	.L0d96059c
    # Line 466
    lw	$t9,6132($s1)
.L0d960838:
    # Line 470
    lw	$t9,636($a1)
    jalr	$t9
    nop
    b	.L0d9605c4
    # Line 473
    lw	$t9,6132($s1)
.L0d96084c:
    # Line 332
    lw	$t9,6132($s1)
    lw	$t9,496($t9)
    addiu	$a1,$sp,160
    jalr	$t9
    li	$a0,2983
    b	.L0d9606c0
    # Line 334
    lw	$t9,6132($s1)
.L0d960868:
    # Line 341
    lw	$t9,6132($s1)
    lw	$t9,496($t9)
    addiu	$a1,$sp,232
    jalr	$t9
    li	$a0,2982
    b	.L0d960748
    # Line 343
    lw	$t9,6132($s1)
.L0d960884:
    # Line 349
    lw	$t9,6132($s1)
    lw	$t9,496($t9)
    addiu	$a1,$sp,304
    jalr	$t9
    li	$a0,2984
    b	.L0d9607b4
    # Line 351
    lw	$t9,6132($s1)
.end DrawBitmapUsingPolyStipple

# Function: __glOdysseyRenderBitmap
# Declared: Line 486 (Source lines: 489-530)
# Address: 0x0d9608a0 - 0x0d960988 (Size: 232 bytes, Frame: 32)
.globl __glOdysseyRenderBitmap
.ent __glOdysseyRenderBitmap
__glOdysseyRenderBitmap:
    # Line 489
    lbu	$v0,452($a0)
    # Line 512
    li	$a3,7168
    # Line 489
    lui	$at,0x19
    addiu	$sp,$sp,-32
    addiu	$at,$at,31984
    sd	$gp,16($sp)
    beqz	$v0,.L0d96094c
    addu	$gp,$t9,$at
    # Line 512
    lw	$a4,3204($a0)
    li	$v0,7170
    beq	$a4,$v0,.L0d960914
    li	$v1,7169
    beq	$a4,$v1,.L0d960958
    nop
    bne	$a4,$a3,.L0d960914
    nop
    # Line 520
    beqz	$a2,.L0d960914
    nop
    sd	$ra,24($sp)
    # Line 521
    # lw $t9, -32740($gp) # &sub_0d960000
    sd	$a0,0($sp)
    sd	$a1,8($sp)
    addiu	$t9,$t9,-576
    ld	$a0,0($sp)
    bal __glOdyim_PolygonOffsetEXT
    ld	$a1,8($sp)
    ld	$ra,24($sp)
    ld	$a0,0($sp)
    ld	$a1,8($sp)
.L0d960914:
    # Line 528
    lwc1	$f4,368($a0)
    # Line 529
    lw	$at,4852($a0)
    # Line 528
    lwc1	$f3,16($a1)
    # Line 529
    mtc1	$at,$f1
    # Line 528
    add.s	$f3,$f3,$f4
    swc1	$f3,368($a0)
    # Line 529
    cvt.s.w	$f1,$f1
    lwc1	$f2,20($a1)
    lwc1	$f0,372($a0)
    madd.s	$f0,$f0,$f1,$f2
    # Line 530
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 529
    swc1	$f0,372($a0)
.L0d96094c:
    # Line 530
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d960958:
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 516
    # lw $t9, -26456($gp) # &__glFeedbackBitmap
    ld	$a1,0($sp)
    move	$a0,$a1
    sd	$ra,24($sp)
    jal	__glFeedbackBitmap
    addiu	$a1,$a1,240
    ld	$ra,24($sp)
    ld	$a0,0($sp)
    b	.L0d960914
    ld	$a1,8($sp)
.end __glOdysseyRenderBitmap

# Function: __glOdyim_Bitmap
# Declared: Line 532 (Source lines: 534-542)
# Address: 0x0d960990 - 0x0d960a94 (Size: 260 bytes, Frame: 208)
.globl __glOdyim_Bitmap
.ent __glOdyim_Bitmap
__glOdyim_Bitmap:
    # Line 535
    lw	$a4,4120($zero)
    # Line 534
    addiu	$sp,$sp,-80
    sd	$a6,32($sp)
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sd	$a1,48($sp)
    sdc1	$f15,8($sp)
    # Line 535
    lw	$a5,4112($zero)
    # Line 534
    sd	$a0,56($sp)
    # Line 535
    lui	$a7,0x1
    sd	$a5,40($sp)
    addu	$a5,$a5,$a7
    lw	$at,26980($a5)
    # Line 534
    sdc1	$f14,0($sp)
    lui	$v0,0x19
    sd	$ra,72($sp)
    addiu	$v0,$v0,31744
    sd	$gp,64($sp)
    # Line 535
    beqz	$at,.L0d960a70
    # Line 534
    addu	$gp,$t9,$v0
    # Line 535
    beqz	$a4,.L0d960a10
    ld	$a0,40($sp)
    li	$t0,2
.L0d9609ec:
    beq	$a4,$t0,.L0d960a0c
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,72($sp)
.L0d960a00:
    # Line 542
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d960a0c:
    # Line 535
    ld	$a0,40($sp)
.L0d960a10:
    li	$t1,1
    sb	$t1,26997($a5)
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
    # Line 537
    ld	$t2,56($sp)
.L0d960a2c:
    bltz	$t2,.L0d960a80
    ld	$t3,48($sp)
    bltz	$t3,.L0d960a84
    # Line 538
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 541
    ld	$a1,56($sp)
    ld	$a2,48($sp)
    ldc1	$f15,0($sp)
    ld	$t9,40($sp)
    ldc1	$f16,8($sp)
    move	$a0,$t9
    lw	$t9,12564($t9)
    ldc1	$f17,16($sp)
    ldc1	$f18,24($sp)
    jal	__glSetError
    ld	$a7,32($sp)
    b	.L0d960a00
    ld	$ra,72($sp)
.L0d960a70:
    # Line 535
    bnez	$a4,.L0d9609ec
    li	$t0,2
    b	.L0d960a2c
    # Line 537
    ld	$t2,56($sp)
.L0d960a80:
    # Line 538
    # lw $t9, -26792($gp) # &__glSetError
.L0d960a84:
    jal	__glSetError
    li	$a0,1281
    b	.L0d960a00
    ld	$ra,72($sp)
.end __glOdyim_Bitmap

.rdata
_lit8_3fc0000000000000:
    .word 0x3fc00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3d000000:
    .word 0x3d000000
_lit_3e000000:
    .word 0x3e000000

