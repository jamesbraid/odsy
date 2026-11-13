# Source: ../ODYSSEY/ody_soft_texture.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_soft_texture.c
# Total Functions: 5

.text

# Function: Dot
# Declared: Line 21 (Source lines: 23-23)
# Address: 0x0d9f1f00 - 0x0d9f1f28 (Size: 40 bytes, Frame: 0)
.ent Dot
Dot:
    # Line 23
    lwc1	$f4,0($a1)
    lwc1	$f2,4($a1)
    lwc1	$f0,4($a0)
    lwc1	$f3,0($a0)
    lwc1	$f1,8($a0)
    mul.s	$f0,$f0,$f2
    lwc1	$f2,8($a1)
    madd.s	$f0,$f0,$f3,$f4
    jr	$ra
    madd.s	$f0,$f0,$f1,$f2
.end Dot

# Function: SphereGen
# Declared: Line 31 (Source lines: 32-57)
# Address: 0x0d9f1f30 - 0x0d9f202c (Size: 252 bytes, Frame: 48)
.ent SphereGen
SphereGen:
    # Line 32
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    # Line 37
    lw	$t9,11960($a0)
    # Line 32
    move	$s8,$a2
    sd	$s0,40($sp)
    move	$s0,$a1
    # Line 37
    addiu	$a1,$a1,96
    # Line 32
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$ra,24($sp)
    # Line 37
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 40
    # lw $t9, -32704($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7936
    addiu	$a1,$sp,0
    bal __glOdysseySoftClipFlatShade
    addiu	$a0,$s0,32
    # Line 44
    lwc1	$f9,36($s0)
    # Line 43
    lwc1	$f6,_lit_40000000
    lwc1	$f10,32($s0)
    # Line 45
    lwc1	$f11,40($s0)
    # Line 44
    mul.s	$f9,$f9,$f6
    # Line 43
    mul.s	$f10,$f10,$f6
    lwc1	$f8,0($sp)
    # Line 45
    mul.s	$f11,$f11,$f6
    # Line 43
    nmsub.s	$f8,$f8,$f0,$f10
    # Line 45
    lwc1	$f10,8($sp)
    nmsub.s	$f10,$f10,$f0,$f11
    # Line 44
    lwc1	$f7,4($sp)
    nmsub.s	$f7,$f7,$f0,$f9
    # Line 45
    lwc1	$f11,_lit_3f800000
    mul.s	$f9,$f8,$f8
    madd.s	$f9,$f9,$f7,$f7
    add.s	$f10,$f10,$f11
    madd.s	$f9,$f9,$f10,$f10
    sqrt.s	$f9,$f9
    mtc1	$zero,$f0
    mul.s	$f6,$f6,$f9
    c.eq.s	$f6,$f0
    # Line 57
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    # Line 45
    bc1t	.L0d9f2010
    lwc1	$f5,3540($s1)
    # Line 51
    div.s	$f13,$f8,$f6
    # Line 52
    div.s	$f12,$f7,$f6
    # Line 51
    add.s	$f13,$f5,$f13
    swc1	$f13,0($s8)
    # Line 52
    lwc1	$f11,3540($s1)
    # Line 57
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    # Line 52
    add.s	$f11,$f11,$f12
    swc1	$f11,4($s8)
    # Line 57
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f2010:
    # Line 54
    swc1	$f5,0($s8)
    # Line 55
    lwc1	$f14,3540($s1)
    # Line 57
    ld	$s1,32($sp)
    # Line 55
    swc1	$f14,4($s8)
    # Line 57
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SphereGen

# Function: __glOdysseySoftClipCalcSphereMapS
# Declared: Line 59 (Source lines: 60-65)
# Address: 0x0d9f2030 - 0x0d9f207c (Size: 76 bytes, Frame: 48)
.globl __glOdysseySoftClipCalcSphereMapS
.ent __glOdysseySoftClipCalcSphereMapS
__glOdysseySoftClipCalcSphereMapS:
    # Line 60
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    lui	$s8,0x10
    addiu	$s8,$s8,25952
    sd	$gp,32($sp)
    addu	$gp,$t9,$s8
    # Line 63
    # lw $t9, -32704($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7984
    addiu	$a2,$sp,0
    # Line 60
    sd	$ra,16($sp)
    # Line 63
    bal __glOdysseySoftClipFlatShade
    # Line 60
    move	$s8,$a1
    # Line 64
    lwc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 65
    ld	$gp,32($sp)
    # Line 64
    swc1	$f0,48($s8)
    # Line 65
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseySoftClipCalcSphereMapS

# Function: __glOdysseySoftClipCalcSphereMapT
# Declared: Line 67 (Source lines: 68-73)
# Address: 0x0d9f2080 - 0x0d9f20cc (Size: 76 bytes, Frame: 48)
.globl __glOdysseySoftClipCalcSphereMapT
.ent __glOdysseySoftClipCalcSphereMapT
__glOdysseySoftClipCalcSphereMapT:
    # Line 68
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    lui	$s8,0x10
    addiu	$s8,$s8,25872
    sd	$gp,32($sp)
    addu	$gp,$t9,$s8
    # Line 71
    # lw $t9, -32704($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7984
    addiu	$a2,$sp,0
    # Line 68
    sd	$ra,16($sp)
    # Line 71
    bal __glOdysseySoftClipFlatShade
    # Line 68
    move	$s8,$a1
    # Line 72
    lwc1	$f0,4($sp)
    ld	$ra,16($sp)
    # Line 73
    ld	$gp,32($sp)
    # Line 72
    swc1	$f0,52($s8)
    # Line 73
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseySoftClipCalcSphereMapT

# Function: __glOdysseySoftClipCalcSphereMapST
# Declared: Line 75 (Source lines: 76-82)
# Address: 0x0d9f20d0 - 0x0d9f2124 (Size: 84 bytes, Frame: 48)
.globl __glOdysseySoftClipCalcSphereMapST
.ent __glOdysseySoftClipCalcSphereMapST
__glOdysseySoftClipCalcSphereMapST:
    # Line 76
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    lui	$s8,0x10
    addiu	$s8,$s8,25792
    sd	$gp,32($sp)
    addu	$gp,$t9,$s8
    # Line 79
    # lw $t9, -32704($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7984
    addiu	$a2,$sp,0
    # Line 76
    sd	$ra,16($sp)
    # Line 79
    bal __glOdysseySoftClipFlatShade
    # Line 76
    move	$s8,$a1
    # Line 80
    lwc1	$f1,0($sp)
    ld	$ra,16($sp)
    swc1	$f1,48($s8)
    # Line 81
    lwc1	$f0,4($sp)
    # Line 82
    ld	$gp,32($sp)
    # Line 81
    swc1	$f0,52($s8)
    # Line 82
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseySoftClipCalcSphereMapST

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

