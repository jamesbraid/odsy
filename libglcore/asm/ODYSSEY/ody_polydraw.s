# Source: ../ODYSSEY/ody_polydraw.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_polydraw.c
# Total Functions: 2

.text

# Function: __glOdysseySoftClipRenderTriangle
# Declared: Line 23 (Source lines: 25-85)
# Address: 0x0d9ec360 - 0x0d9ec4f0 (Size: 400 bytes, Frame: 192)
.globl __glOdysseySoftClipRenderTriangle
.ent __glOdysseySoftClipRenderTriangle
__glOdysseySoftClipRenderTriangle:
    # Line 25
    addiu	$sp,$sp,-64
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    # Line 30
    lw	$a7,28128($a0)
    # Line 42
    lui	$a6,0x1
    ori	$at,$a6,0x4400
    sw	$at,0($a6)
    li	$t8,4
    sw	$t8,0($a6)
    # Line 25
    move	$a5,$a1
    # Line 42
    li	$v0,7424
    lw	$at,1392($a0)
    # Line 25
    lui	$v1,0x11
    sd	$s0,16($sp)
    # Line 42
    lui	$s0,0x2
    sd	$ra,48($sp)
    # Line 25
    addiu	$v1,$v1,-15824
    # Line 42
    addu	$s0,$a0,$s0
    sd	$gp,40($sp)
    bne	$at,$v0,.L0d9ec45c
    # Line 25
    addu	$gp,$t9,$v1
    # Line 56
    lw	$t0,12076($a0)
    # Line 57
    la	$v1,__glNop
    sw	$v1,12076($a0)
    lw	$v0,0($a7)
    # Line 53
    lw	$a2,28132($a0)
    # Line 57
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    sd	$a0,8($sp)
    beqz	$v0,.L0d9ec3f8
    sd	$a1,0($sp)
    # Line 60
    lw	$t9,12($a7)
    ld	$a1,8($sp)
    sd	$t0,56($sp)
    move	$a0,$a1
    jalr	$t9
    lw	$a1,28128($a1)
    ld	$t0,56($sp)
.L0d9ec3f8:
    # Line 62
    ld	$a0,8($sp)
    sw	$t0,12076($a0)
    # Line 64
    lw	$t9,-24932($s0)
    jalr	$t9
    ld	$a1,0($sp)
    # Line 65
    lw	$t9,-24932($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,32($sp)
    # Line 66
    lw	$t9,-24932($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,24($sp)
    # Line 68
    lw	$t9,-24936($s0)
    jalr	$t9
    ld	$a0,0($sp)
    # Line 69
    lw	$t9,-24936($s0)
    jalr	$t9
    ld	$a0,32($sp)
    # Line 70
    lw	$t9,-24936($s0)
    jalr	$t9
    ld	$a0,24($sp)
    ld	$s0,16($sp)
    b	.L0d9ec48c
    ld	$ra,48($sp)
.L0d9ec45c:
    # Line 73
    lw	$t9,-24940($s0)
    sd	$a0,8($sp)
    jalr	$t9
    move	$a0,$a1
    # Line 74
    lw	$t9,-24940($s0)
    jalr	$t9
    ld	$a0,32($sp)
    # Line 75
    lw	$t9,-24940($s0)
    jalr	$t9
    ld	$a0,24($sp)
    ld	$s0,16($sp)
    ld	$ra,48($sp)
.L0d9ec48c:
    # Line 83
    ld	$a1,8($sp)
    lui	$a2,0x1
    ori	$a4,$a2,0x4001
    sw	$a4,0($a2)
    addu	$a1,$a2,$a1
    lw	$a3,-26892($a1)
    li	$a6,1
    ori	$a5,$a2,0x443
    li	$a4,250
    # Line 85
    ld	$gp,40($sp)
    # Line 83
    beqz	$a3,.L0d9ec4e0
    move	$a0,$a2
    sw	$a5,0($a2)
    sw	$a4,0($a2)
    ori	$a3,$a2,0x46
    sw	$a3,0($a2)
    sw	$a3,0($a2)
    li	$a2,1
    sw	$a2,-26576($a1)
    # Line 85
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ec4e0:
    # Line 83
    sw	$a6,-26576($a1)
    # Line 85
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdysseySoftClipRenderTriangle

# Function: __glOdysseySoftClipProcessTriangle
# Declared: Line 91 (Source lines: 93-133)
# Address: 0x0d9ec4f0 - 0x0d9ec684 (Size: 404 bytes, Frame: 208)
.globl __glOdysseySoftClipProcessTriangle
.ent __glOdysseySoftClipProcessTriangle
__glOdysseySoftClipProcessTriangle:
    # Line 93
    addiu	$sp,$sp,-80
    sd	$a3,40($sp)
    # Line 96
    lw	$a6,4($a2)
    lw	$t0,4($a1)
    lw	$a7,4($a3)
    # Line 93
    sd	$a2,32($sp)
    # Line 96
    or	$a4,$t0,$a6
    # Line 93
    sd	$s0,48($sp)
    lui	$at,0x11
    # Line 96
    or	$a4,$a7,$a4
    # Line 93
    move	$s0,$a0
    sd	$ra,64($sp)
    addiu	$at,$at,-16224
    sd	$gp,56($sp)
    # Line 96
    beqz	$a4,.L0d9ec664
    # Line 93
    addu	$gp,$t9,$at
    # Line 96
    and	$t1,$t0,$a6
    and	$t1,$a7,$t1
    beqz	$t1,.L0d9ec550
    ld	$ra,64($sp)
.L0d9ec540:
    ld	$s0,48($sp)
    # Line 133
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9ec550:
    # Line 110
    lw	$t9,12076($a0)
    # Line 111
    la	$t8,__glNop
    sw	$t8,12076($a0)
    lw	$t3,0($a1)
    # Line 103
    lw	$t2,28132($a0)
    sd	$a1,16($sp)
    # Line 111
    nor	$t3,$t3,$zero
    # Line 103
    sd	$t2,24($sp)
    # Line 111
    and	$t2,$t2,$t3
    sd	$a4,0($sp)
    beqz	$t2,.L0d9ec594
    # Line 110
    sd	$t9,8($sp)
    # Line 113
    ld	$t9,16($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a2,24($sp)
.L0d9ec594:
    ld	$at,32($sp)
    lw	$at,0($at)
    ld	$ra,24($sp)
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    beqz	$ra,.L0d9ec5c4
    # Line 114
    ld	$t9,32($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,24($sp)
.L0d9ec5c4:
    ld	$at,40($sp)
    lw	$at,0($at)
    ld	$ra,24($sp)
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    beqz	$ra,.L0d9ec5f4
    # Line 115
    ld	$t9,40($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,24($sp)
.L0d9ec5f4:
    lw	$ra,1392($s0)
    li	$at,7424
    bne	$ra,$at,.L0d9ec62c
    # Line 122
    ld	$v0,24($sp)
    lw	$a1,28128($s0)
    lw	$v1,0($a1)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    beqz	$v0,.L0d9ec62c
    nop
    # Line 123
    lw	$t9,12($a1)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,24($sp)
.L0d9ec62c:
    # Line 126
    ld	$a1,16($sp)
    lw	$t9,12144($s0)
    ld	$a2,32($sp)
    ld	$a3,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a4,0($sp)
    # Line 133
    ld	$gp,56($sp)
    ld	$ra,64($sp)
    # Line 128
    ld	$a0,8($sp)
    sw	$a0,12076($s0)
    # Line 133
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9ec664:
    # Line 131
    ld	$a2,32($sp)
    lw	$t9,12128($s0)
    sd	$a1,16($sp)
    ld	$a3,40($sp)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0d9ec540
    ld	$ra,64($sp)
.end __glOdysseySoftClipProcessTriangle

