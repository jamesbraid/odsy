# Source: ../ODYSSEY/ody_lineclip.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_lineclip.c
# Total Functions: 1

.text

# Function: __glOdysseySoftClipClipLine
# Declared: Line 21 (Source lines: 22-89)
# Address: 0x0d9edeb0 - 0x0d9ee044 (Size: 404 bytes, Frame: 160)
.globl __glOdysseySoftClipClipLine
.ent __glOdysseySoftClipClipLine
__glOdysseySoftClipClipLine:
    # Line 22
    addiu	$sp,$sp,-928
    sd	$a0,832($sp)
    sd	$s4,864($sp)
    # Line 32
    lw	$s4,12544($a0)
    # Line 22
    sd	$s2,880($sp)
    sd	$s3,872($sp)
    sdc1	$f20,816($sp)
    # Line 29
    lw	$t8,4($a1)
    # Line 33
    dmtc1	$zero,$f20
    # Line 22
    move	$s3,$a2
    sd	$s0,856($sp)
    move	$s2,$a1
    lui	$at,0x11
    # Line 29
    lw	$s0,4($a2)
    # Line 22
    addiu	$at,$at,-22816
    sd	$s1,848($sp)
    # Line 33
    lui	$s1,0x1
    sd	$gp,840($sp)
    # Line 22
    addu	$gp,$t9,$at
    # Line 33
    ori	$s1,$s1,0x6748
    sd	$ra,824($sp)
    addu	$s1,$a0,$s1
    # Line 29
    or	$s0,$s0,$t8
.L0d9edf0c:
    # Line 33
    andi	$t8,$s0,0x1
    beqz	$t8,.L0d9ee008
    # Line 85
    srl	$ra,$s0,0x1
    # Line 39
    lwc1	$f11,4($s1)
    lwc1	$f8,0($s1)
    lwc1	$f7,16($s2)
    lwc1	$f10,20($s2)
    lwc1	$f9,8($s1)
    lwc1	$f12,24($s2)
    mul.s	$f7,$f7,$f8
    lwc1	$f6,12($s1)
    madd.s	$f7,$f7,$f10,$f11
    lwc1	$f10,28($s2)
    madd.s	$f7,$f7,$f12,$f9
    madd.s	$f7,$f7,$f10,$f6
    # Line 41
    lwc1	$f4,16($s3)
    lwc1	$f5,20($s3)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,24($s3)
    cvt.d.s	$f10,$f7
    madd.s	$f4,$f4,$f5,$f11
    lwc1	$f5,28($s3)
    c.lt.d	$f10,$f20
    madd.s	$f4,$f4,$f8,$f9
    bc1f	.L0d9edff8
    madd.s	$f4,$f4,$f5,$f6
    cvt.d.s	$f8,$f4
    c.lt.d $f8,$f20
    bc1t .L0d9edfd0
    nop
    # Line 55
    sub.s	$f15,$f4,$f7
    move	$t9,$s4
    move	$a2,$s3
    move	$a1,$s2
    addiu	$a0,$sp,408
    jalr	$t9
    div.s	$f15,$f4,$f15
    # Line 57
    addiu	$s2,$sp,408
    # Line 56
    sb	$zero,809($sp)
.L0d9edfa8:
    # Line 85
    srl	$t9,$s0,0x1
    # Line 84
    addiu	$s1,$s1,16
    # Line 85
    bnez	$t9,.L0d9edf0c
    move	$s0,$t9
    # Line 88
    ld	$t9,832($sp)
.L0d9edfbc:
    move	$a0,$t9
    lw	$t9,12528($t9)
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s3
.L0d9edfd0:
    # Line 89
    ld	$gp,840($sp)
    ld	$s0,856($sp)
    ld	$s1,848($sp)
    ld	$s2,880($sp)
    ld	$ra,824($sp)
    ld	$s3,872($sp)
    ld	$s4,864($sp)
    ldc1	$f20,816($sp)
    jr	$ra
    addiu	$sp,$sp,928
.L0d9edff8:
    # Line 47
    cvt.d.s	$f16,$f4
    c.lt.d $f16,$f20
    bc1t .L0d9ee01c
    # Line 85
    srl	$ra,$s0,0x1
.L0d9ee008:
    # Line 84
    addiu	$s1,$s1,16
    # Line 85
    bnez	$ra,.L0d9edf0c
    move	$s0,$ra
    b	.L0d9edfbc
    # Line 88
    ld	$t9,832($sp)
.L0d9ee01c:
    # Line 75
    sub.s	$f15,$f7,$f4
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s3
    addiu	$a0,$sp,0
    jalr	$t9
    div.s	$f15,$f7,$f15
    # Line 74
    addiu	$s3,$sp,0
    b	.L0d9edfa8
    # Line 76
    sb	$zero,401($sp)
.end __glOdysseySoftClipClipLine

