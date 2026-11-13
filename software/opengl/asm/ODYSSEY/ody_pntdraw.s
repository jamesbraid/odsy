# Source: ../ODYSSEY/ody_pntdraw.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_pntdraw.c
# Total Functions: 1

.text

# Function: __glOdysseySoftClipRenderPoint
# Declared: Line 23 (Source lines: 24-51)
# Address: 0x0d9ecc20 - 0x0d9eccd0 (Size: 176 bytes, Frame: 32)
.globl __glOdysseySoftClipRenderPoint
.ent __glOdysseySoftClipRenderPoint
__glOdysseySoftClipRenderPoint:
    # Line 24
    addiu	$sp,$sp,-32
    sd	$gp,24($sp)
    lui	$v0,0x11
    sd	$s0,16($sp)
    # Line 34
    lui	$s0,0x1
    ori	$v1,$s0,0x4400
    sw	$v1,0($s0)
    # Line 42
    ori	$at,$s0,0x9e94
    # Line 24
    addiu	$v0,$v0,-18064
    # Line 34
    sw	$zero,0($s0)
    # Line 42
    addu	$at,$at,$a0
    # Line 24
    addu	$gp,$t9,$v0
    # Line 42
    lw	$t9,0($at)
    # Line 24
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 42
    jalr	$t9
    # Line 24
    move	$a0,$a1
    # Line 49
    ld	$a1,8($sp)
    lui	$a2,0x1
    ori	$a3,$a2,0x4001
    sw	$a3,0($s0)
    addu	$a1,$s0,$a1
    lw	$a0,-26892($a1)
    li	$a4,250
    ld	$ra,0($sp)
    li	$a6,1
    ori	$a3,$a2,0x46
    # Line 51
    ld	$gp,24($sp)
    # Line 49
    beqz	$a0,.L0d9eccbc
    ori	$a5,$a2,0x443
    sw	$a5,0($s0)
    sw	$a4,0($s0)
    sw	$a3,0($s0)
    sw	$a3,0($s0)
    li	$a2,1
    sw	$a2,-26576($a1)
    # Line 51
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9eccbc:
    # Line 49
    sw	$a6,-26576($a1)
    ld	$s0,16($sp)
    # Line 51
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySoftClipRenderPoint

