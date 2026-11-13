# Source: ../ODYSSEY/ody_pntfin.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_pntfin.c
# Total Functions: 2

.text

# Function: SoftClipPointVertex
# Declared: Line 21 (Source lines: 22-25)
# Address: 0x0d9e72d0 - 0x0d9e7314 (Size: 68 bytes, Frame: 16)
.ent SoftClipPointVertex
SoftClipPointVertex:
    # Line 23
    sw	$a1,28128($a0)
    lw	$v0,4($a1)
    # Line 22
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,4800
    sd	$gp,0($sp)
    # Line 23
    beqz	$v0,.L0d9e72fc
    # Line 22
    addu	$gp,$t9,$at
.L0d9e72f0:
    # Line 25
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e72fc:
    # Line 24
    lw	$t9,12552($a0)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0d9e72f0
    ld	$ra,8($sp)
.end SoftClipPointVertex

# Function: __glOdysseySoftClipBeginPoints
# Declared: Line 27 (Source lines: 28-33)
# Address: 0x0d9e7320 - 0x0d9e734c (Size: 44 bytes, Frame: 0)
.globl __glOdysseySoftClipBeginPoints
.ent __glOdysseySoftClipBeginPoints
__glOdysseySoftClipBeginPoints:
    # Line 28
    lui	$a1,0x11
    addiu	$a1,$a1,4720
    # Line 31
    lui	$v1,0x1
    # Line 28
    addu	$at,$t9,$a1
    # Line 31
    ori	$v1,$v1,0x6db8
    # Line 32
    la	$v0,sub_0d9e0000
    # Line 31
    addu	$v1,$a0,$v1
    sw	$v1,12744($a0)
    # Line 32
    addiu	$v0,$v0,29392
    # Line 33
    jr	$ra
    # Line 32
    sw	$v0,12004($a0)
.end __glOdysseySoftClipBeginPoints

