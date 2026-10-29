# Source: ../ODYSSEY/ody_fft.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_fft.c
# Total Functions: 15

.text

# Function: LoadATree
# Declared: Line 55 (Source lines: 60-77)
# Address: 0x0d97da10 - 0x0d97dc40 (Size: 560 bytes, Frame: 192)
.ent LoadATree
LoadATree:
    # Line 63
    sll	$v1,$a0,0x1b
    # Line 64
    sll	$a0,$a3,0x1a
    lui	$a3,0x100
    # Line 66
    lui	$t3,0xfeff
    # Line 65
    sll	$at,$a1,0x19
    lui	$t1,0x200
    # Line 60
    addiu	$sp,$sp,-64
    # Line 66
    ori	$t3,$t3,0xffff
    # Line 65
    and	$at,$t1,$at
    # Line 63
    lw	$t0,100($sp)
    # Line 65
    lui	$a5,0xfdff
    # Line 64
    lui	$t9,0xfbff
    ori	$t9,$t9,0xffff
    # Line 63
    lui	$t2,0xf7ff
    lw	$v0,0($t0)
    lui	$t8,0x800
    ori	$t2,$t2,0xffff
    and	$v1,$t8,$v1
    and	$v0,$t2,$v0
    # Line 66
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 63
    or	$v0,$v0,$v1
    # Line 64
    lui	$v1,0x400
    # Line 66
    cvt.d.s	$f0,$f14
    # Line 64
    and	$v1,$v1,$a0
    and	$v0,$t9,$v0
    # Line 65
    ori	$a5,$a5,0xffff
    # Line 64
    or	$v0,$v0,$v1
    # Line 66
    c.le.d	$f4,$f0
    # Line 65
    and	$a5,$a5,$v0
    # Line 66
    sll	$v0,$a4,0x18
    # Line 65
    or	$a5,$a5,$at
    # Line 66
    lui	$at,0x100
    # Line 67
    lwc1	$f5,_lit_457ff000
    # Line 60
    mov.s	$f6,$f14
    # Line 66
    and	$at,$at,$v0
    and	$a5,$t3,$a5
    # Line 67
    cvt.d.s	$f6,$f17
    # Line 66
    or	$a5,$a5,$at
    bc1t	.L0d97dab8
    sw	$a5,0($t0)
    # Line 67
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f14,$f5
.L0d97dab8:
    # Line 68
    li	$a0,-4096
    # Line 67
    trunc.l.s	$f7,$f5
    lui	$a4,0x400
    # Line 72
    sll	$v0,$a7,0x19
    # Line 67
    c.le.d $f4,$f6
    # Line 73
    lwc1	$f6,64($sp)
    # Line 68
    lwc1	$f5,_lit_45800000
    # Line 72
    and	$v0,$t1,$v0
    # Line 67
    lui	$a2,0xff
    dmfc1	$at,$f7
    # Line 75
    lwc1	$f10,_lit_45800000
    # Line 67
    lui	$a1,0xff00
    ori	$a2,$a2,0xf000
    # Line 75
    lwc1	$f9,_lit_457ff000
    # Line 67
    ori	$a1,$a1,0xfff
    # Line 73
    cvt.d.s	$f7,$f6
    # Line 67
    sll	$at,$at,0xc
    and	$a5,$a1,$a5
    and	$at,$a2,$at
    # Line 70
    lw	$a2,108($sp)
    # Line 73
    c.le.d $f4,$f7
    # Line 67
    or	$a5,$a5,$at
    bc1f .L0d97db20
    sw	$a5,0($t0)
    # Line 68
    b	.L0d97db24
    lwc1	$f5,_lit_457ff000
.L0d97db20:
    mul.s	$f5,$f17,$f5
.L0d97db24:
    trunc.l.s	$f8,$f5
    dmfc1	$a1,$f8
    sll	$a1,$a1,0x0
    # Line 73
    lw	$at,84($sp)
    # Line 68
    and	$a0,$a0,$a5
    andi	$a1,$a1,0xfff
    or	$a0,$a0,$a1
    sw	$a0,0($t0)
    # Line 73
    sll	$at,$at,0x18
    # Line 71
    lw	$a0,76($sp)
    li	$a5,-4096
    # Line 70
    sll	$a1,$a6,0x1b
    lw	$v1,0($a2)
    # Line 73
    and	$at,$a3,$at
    # Line 70
    and	$a1,$t8,$a1
    # Line 71
    sll	$a0,$a0,0x1a
    # Line 70
    and	$v1,$t2,$v1
    # Line 71
    and	$a0,$a4,$a0
    # Line 70
    or	$v1,$v1,$a1
    # Line 72
    lui	$a1,0xfdff
    # Line 71
    and	$v1,$t9,$v1
    # Line 72
    ori	$a1,$a1,0xffff
    # Line 71
    or	$v1,$v1,$a0
    lui	$a3,0xff
    # Line 72
    and	$a1,$a1,$v1
    ori	$a3,$a3,0xf000
    or	$a1,$a1,$v0
    # Line 74
    lwc1	$f5,_lit_45800000
    lui	$a4,0xff00
    # Line 73
    and	$a1,$t3,$a1
    ori	$a4,$a4,0xfff
    or	$a1,$a1,$at
    bc1f .L0d97dbc4
    sw	$a1,0($a2)
    lui	$a3,0xff
    lui	$a4,0xff00
    ori	$a3,$a3,0xf000
    # Line 74
    lwc1	$f5,_lit_457ff000
    b	.L0d97dbc8
    ori	$a4,$a4,0xfff
.L0d97dbc4:
    mul.s	$f5,$f6,$f5
.L0d97dbc8:
    lwc1	$f6,88($sp)
    trunc.l.s	$f8,$f5
    dmfc1	$a6,$f8
    cvt.d.s	$f7,$f6
    sll	$a6,$a6,0xc
    c.le.d $f4,$f7
    and	$a1,$a4,$a1
    and	$a6,$a3,$a6
    or	$a1,$a1,$a6
    sw	$a1,0($a2)
    # Line 75
    and	$a7,$a5,$a1
    # Line 74
    bc1f .L0d97dc1c
    # Line 75
    and	$t1,$a5,$a1
    trunc.l.s	$f9,$f9
    dmfc1	$t0,$f9
    sll	$t0,$t0,0x0
    # Line 77
    addiu	$sp,$sp,64
    # Line 75
    andi	$t0,$t0,0xfff
    or	$a7,$a7,$t0
    # Line 77
    jr	$ra
    # Line 75
    sw	$a7,0($a2)
.L0d97dc1c:
    mul.s	$f10,$f6,$f10
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x0
    # Line 77
    addiu	$sp,$sp,64
    # Line 75
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    # Line 77
    jr	$ra
    # Line 75
    sw	$t1,0($a2)
.end LoadATree

# Function: LoadBTree
# Declared: Line 79 (Source lines: 84-100)
# Address: 0x0d97dc40 - 0x0d97de70 (Size: 560 bytes, Frame: 192)
.ent LoadBTree
LoadBTree:
    # Line 87
    sll	$v1,$a0,0x1b
    # Line 88
    sll	$a0,$a3,0x1a
    lui	$a3,0x100
    # Line 90
    lui	$t3,0xfeff
    # Line 89
    sll	$at,$a1,0x19
    lui	$t1,0x200
    # Line 84
    addiu	$sp,$sp,-64
    # Line 90
    ori	$t3,$t3,0xffff
    # Line 89
    and	$at,$t1,$at
    # Line 87
    lw	$t0,100($sp)
    # Line 89
    lui	$a5,0xfdff
    # Line 88
    lui	$t9,0xfbff
    ori	$t9,$t9,0xffff
    # Line 87
    lui	$t2,0xf7ff
    lw	$v0,0($t0)
    lui	$t8,0x800
    ori	$t2,$t2,0xffff
    and	$v1,$t8,$v1
    and	$v0,$t2,$v0
    # Line 90
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 87
    or	$v0,$v0,$v1
    # Line 88
    lui	$v1,0x400
    # Line 90
    cvt.d.s	$f0,$f14
    # Line 88
    and	$v1,$v1,$a0
    and	$v0,$t9,$v0
    # Line 89
    ori	$a5,$a5,0xffff
    # Line 88
    or	$v0,$v0,$v1
    # Line 90
    c.le.d	$f4,$f0
    # Line 89
    and	$a5,$a5,$v0
    # Line 90
    sll	$v0,$a4,0x18
    # Line 89
    or	$a5,$a5,$at
    # Line 90
    lui	$at,0x100
    # Line 91
    lwc1	$f5,_lit_457ff000
    # Line 84
    mov.s	$f6,$f14
    # Line 90
    and	$at,$at,$v0
    and	$a5,$t3,$a5
    # Line 91
    cvt.d.s	$f6,$f17
    # Line 90
    or	$a5,$a5,$at
    bc1t	.L0d97dce8
    sw	$a5,0($t0)
    # Line 91
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f14,$f5
.L0d97dce8:
    # Line 92
    li	$a0,-4096
    # Line 91
    trunc.l.s	$f7,$f5
    lui	$a4,0x400
    # Line 96
    sll	$v0,$a7,0x19
    # Line 91
    c.le.d $f4,$f6
    # Line 97
    lwc1	$f6,64($sp)
    # Line 92
    lwc1	$f5,_lit_45800000
    # Line 96
    and	$v0,$t1,$v0
    # Line 91
    lui	$a2,0xff
    dmfc1	$at,$f7
    # Line 99
    lwc1	$f10,_lit_45800000
    # Line 91
    lui	$a1,0xff00
    ori	$a2,$a2,0xf000
    # Line 99
    lwc1	$f9,_lit_457ff000
    # Line 91
    ori	$a1,$a1,0xfff
    # Line 97
    cvt.d.s	$f7,$f6
    # Line 91
    sll	$at,$at,0xc
    and	$a5,$a1,$a5
    and	$at,$a2,$at
    # Line 94
    lw	$a2,108($sp)
    # Line 97
    c.le.d $f4,$f7
    # Line 91
    or	$a5,$a5,$at
    bc1f .L0d97dd50
    sw	$a5,0($t0)
    # Line 92
    b	.L0d97dd54
    lwc1	$f5,_lit_457ff000
.L0d97dd50:
    mul.s	$f5,$f17,$f5
.L0d97dd54:
    trunc.l.s	$f8,$f5
    dmfc1	$a1,$f8
    sll	$a1,$a1,0x0
    # Line 97
    lw	$at,84($sp)
    # Line 92
    and	$a0,$a0,$a5
    andi	$a1,$a1,0xfff
    or	$a0,$a0,$a1
    sw	$a0,0($t0)
    # Line 97
    sll	$at,$at,0x18
    # Line 95
    lw	$a0,76($sp)
    li	$a5,-4096
    # Line 94
    sll	$a1,$a6,0x1b
    lw	$v1,0($a2)
    # Line 97
    and	$at,$a3,$at
    # Line 94
    and	$a1,$t8,$a1
    # Line 95
    sll	$a0,$a0,0x1a
    # Line 94
    and	$v1,$t2,$v1
    # Line 95
    and	$a0,$a4,$a0
    # Line 94
    or	$v1,$v1,$a1
    # Line 96
    lui	$a1,0xfdff
    # Line 95
    and	$v1,$t9,$v1
    # Line 96
    ori	$a1,$a1,0xffff
    # Line 95
    or	$v1,$v1,$a0
    lui	$a3,0xff
    # Line 96
    and	$a1,$a1,$v1
    ori	$a3,$a3,0xf000
    or	$a1,$a1,$v0
    # Line 98
    lwc1	$f5,_lit_45800000
    lui	$a4,0xff00
    # Line 97
    and	$a1,$t3,$a1
    ori	$a4,$a4,0xfff
    or	$a1,$a1,$at
    bc1f .L0d97ddf4
    sw	$a1,0($a2)
    lui	$a3,0xff
    lui	$a4,0xff00
    ori	$a3,$a3,0xf000
    # Line 98
    lwc1	$f5,_lit_457ff000
    b	.L0d97ddf8
    ori	$a4,$a4,0xfff
.L0d97ddf4:
    mul.s	$f5,$f6,$f5
.L0d97ddf8:
    lwc1	$f6,88($sp)
    trunc.l.s	$f8,$f5
    dmfc1	$a6,$f8
    cvt.d.s	$f7,$f6
    sll	$a6,$a6,0xc
    c.le.d $f4,$f7
    and	$a1,$a4,$a1
    and	$a6,$a3,$a6
    or	$a1,$a1,$a6
    sw	$a1,0($a2)
    # Line 99
    and	$a7,$a5,$a1
    # Line 98
    bc1f .L0d97de4c
    # Line 99
    and	$t1,$a5,$a1
    trunc.l.s	$f9,$f9
    dmfc1	$t0,$f9
    sll	$t0,$t0,0x0
    # Line 100
    addiu	$sp,$sp,64
    # Line 99
    andi	$t0,$t0,0xfff
    or	$a7,$a7,$t0
    # Line 100
    jr	$ra
    # Line 99
    sw	$a7,0($a2)
.L0d97de4c:
    mul.s	$f10,$f6,$f10
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x0
    # Line 100
    addiu	$sp,$sp,64
    # Line 99
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    # Line 100
    jr	$ra
    # Line 99
    sw	$t1,0($a2)
.end LoadBTree

# Function: LoadCTree
# Declared: Line 103 (Source lines: 108-124)
# Address: 0x0d97de70 - 0x0d97e0a0 (Size: 560 bytes, Frame: 192)
.ent LoadCTree
LoadCTree:
    # Line 111
    sll	$v1,$a0,0x1b
    # Line 112
    sll	$a0,$a3,0x1a
    lui	$a3,0x100
    # Line 114
    lui	$t3,0xfeff
    # Line 113
    sll	$at,$a1,0x19
    lui	$t1,0x200
    # Line 108
    addiu	$sp,$sp,-64
    # Line 114
    ori	$t3,$t3,0xffff
    # Line 113
    and	$at,$t1,$at
    # Line 111
    lw	$t0,100($sp)
    # Line 113
    lui	$a5,0xfdff
    # Line 112
    lui	$t9,0xfbff
    ori	$t9,$t9,0xffff
    # Line 111
    lui	$t2,0xf7ff
    lw	$v0,0($t0)
    lui	$t8,0x800
    ori	$t2,$t2,0xffff
    and	$v1,$t8,$v1
    and	$v0,$t2,$v0
    # Line 114
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 111
    or	$v0,$v0,$v1
    # Line 112
    lui	$v1,0x400
    # Line 114
    cvt.d.s	$f0,$f14
    # Line 112
    and	$v1,$v1,$a0
    and	$v0,$t9,$v0
    # Line 113
    ori	$a5,$a5,0xffff
    # Line 112
    or	$v0,$v0,$v1
    # Line 114
    c.le.d	$f4,$f0
    # Line 113
    and	$a5,$a5,$v0
    # Line 114
    sll	$v0,$a4,0x18
    # Line 113
    or	$a5,$a5,$at
    # Line 114
    lui	$at,0x100
    # Line 115
    lwc1	$f5,_lit_457ff000
    # Line 108
    mov.s	$f6,$f14
    # Line 114
    and	$at,$at,$v0
    and	$a5,$t3,$a5
    # Line 115
    cvt.d.s	$f6,$f17
    # Line 114
    or	$a5,$a5,$at
    bc1t	.L0d97df18
    sw	$a5,0($t0)
    # Line 115
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f14,$f5
.L0d97df18:
    # Line 116
    li	$a0,-4096
    # Line 115
    trunc.l.s	$f7,$f5
    lui	$a4,0x400
    # Line 120
    sll	$v0,$a7,0x19
    # Line 115
    c.le.d $f4,$f6
    # Line 121
    lwc1	$f6,64($sp)
    # Line 116
    lwc1	$f5,_lit_45800000
    # Line 120
    and	$v0,$t1,$v0
    # Line 115
    lui	$a2,0xff
    dmfc1	$at,$f7
    # Line 123
    lwc1	$f10,_lit_45800000
    # Line 115
    lui	$a1,0xff00
    ori	$a2,$a2,0xf000
    # Line 123
    lwc1	$f9,_lit_457ff000
    # Line 115
    ori	$a1,$a1,0xfff
    # Line 121
    cvt.d.s	$f7,$f6
    # Line 115
    sll	$at,$at,0xc
    and	$a5,$a1,$a5
    and	$at,$a2,$at
    # Line 118
    lw	$a2,108($sp)
    # Line 121
    c.le.d $f4,$f7
    # Line 115
    or	$a5,$a5,$at
    bc1f .L0d97df80
    sw	$a5,0($t0)
    # Line 116
    b	.L0d97df84
    lwc1	$f5,_lit_457ff000
.L0d97df80:
    mul.s	$f5,$f17,$f5
.L0d97df84:
    trunc.l.s	$f8,$f5
    dmfc1	$a1,$f8
    sll	$a1,$a1,0x0
    # Line 121
    lw	$at,84($sp)
    # Line 116
    and	$a0,$a0,$a5
    andi	$a1,$a1,0xfff
    or	$a0,$a0,$a1
    sw	$a0,0($t0)
    # Line 121
    sll	$at,$at,0x18
    # Line 119
    lw	$a0,76($sp)
    li	$a5,-4096
    # Line 118
    sll	$a1,$a6,0x1b
    lw	$v1,0($a2)
    # Line 121
    and	$at,$a3,$at
    # Line 118
    and	$a1,$t8,$a1
    # Line 119
    sll	$a0,$a0,0x1a
    # Line 118
    and	$v1,$t2,$v1
    # Line 119
    and	$a0,$a4,$a0
    # Line 118
    or	$v1,$v1,$a1
    # Line 120
    lui	$a1,0xfdff
    # Line 119
    and	$v1,$t9,$v1
    # Line 120
    ori	$a1,$a1,0xffff
    # Line 119
    or	$v1,$v1,$a0
    lui	$a3,0xff
    # Line 120
    and	$a1,$a1,$v1
    ori	$a3,$a3,0xf000
    or	$a1,$a1,$v0
    # Line 122
    lwc1	$f5,_lit_45800000
    lui	$a4,0xff00
    # Line 121
    and	$a1,$t3,$a1
    ori	$a4,$a4,0xfff
    or	$a1,$a1,$at
    bc1f .L0d97e024
    sw	$a1,0($a2)
    lui	$a3,0xff
    lui	$a4,0xff00
    ori	$a3,$a3,0xf000
    # Line 122
    lwc1	$f5,_lit_457ff000
    b	.L0d97e028
    ori	$a4,$a4,0xfff
.L0d97e024:
    mul.s	$f5,$f6,$f5
.L0d97e028:
    lwc1	$f6,88($sp)
    trunc.l.s	$f8,$f5
    dmfc1	$a6,$f8
    cvt.d.s	$f7,$f6
    sll	$a6,$a6,0xc
    c.le.d $f4,$f7
    and	$a1,$a4,$a1
    and	$a6,$a3,$a6
    or	$a1,$a1,$a6
    sw	$a1,0($a2)
    # Line 123
    and	$a7,$a5,$a1
    # Line 122
    bc1f .L0d97e07c
    # Line 123
    and	$t1,$a5,$a1
    trunc.l.s	$f9,$f9
    dmfc1	$t0,$f9
    sll	$t0,$t0,0x0
    # Line 124
    addiu	$sp,$sp,64
    # Line 123
    andi	$t0,$t0,0xfff
    or	$a7,$a7,$t0
    # Line 124
    jr	$ra
    # Line 123
    sw	$a7,0($a2)
.L0d97e07c:
    mul.s	$f10,$f6,$f10
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x0
    # Line 124
    addiu	$sp,$sp,64
    # Line 123
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    # Line 124
    jr	$ra
    # Line 123
    sw	$t1,0($a2)
.end LoadCTree

# Function: LoadDTree
# Declared: Line 127 (Source lines: 132-148)
# Address: 0x0d97e0a0 - 0x0d97e2d0 (Size: 560 bytes, Frame: 192)
.ent LoadDTree
LoadDTree:
    # Line 135
    sll	$v1,$a0,0x1b
    # Line 136
    sll	$a0,$a3,0x1a
    lui	$a3,0x100
    # Line 138
    lui	$t3,0xfeff
    # Line 137
    sll	$at,$a1,0x19
    lui	$t1,0x200
    # Line 132
    addiu	$sp,$sp,-64
    # Line 138
    ori	$t3,$t3,0xffff
    # Line 137
    and	$at,$t1,$at
    # Line 135
    lw	$t0,100($sp)
    # Line 137
    lui	$a5,0xfdff
    # Line 136
    lui	$t9,0xfbff
    ori	$t9,$t9,0xffff
    # Line 135
    lui	$t2,0xf7ff
    lw	$v0,0($t0)
    lui	$t8,0x800
    ori	$t2,$t2,0xffff
    and	$v1,$t8,$v1
    and	$v0,$t2,$v0
    # Line 138
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 135
    or	$v0,$v0,$v1
    # Line 136
    lui	$v1,0x400
    # Line 138
    cvt.d.s	$f0,$f14
    # Line 136
    and	$v1,$v1,$a0
    and	$v0,$t9,$v0
    # Line 137
    ori	$a5,$a5,0xffff
    # Line 136
    or	$v0,$v0,$v1
    # Line 138
    c.le.d	$f4,$f0
    # Line 137
    and	$a5,$a5,$v0
    # Line 138
    sll	$v0,$a4,0x18
    # Line 137
    or	$a5,$a5,$at
    # Line 138
    lui	$at,0x100
    # Line 139
    lwc1	$f5,_lit_457ff000
    # Line 132
    mov.s	$f6,$f14
    # Line 138
    and	$at,$at,$v0
    and	$a5,$t3,$a5
    # Line 139
    cvt.d.s	$f6,$f17
    # Line 138
    or	$a5,$a5,$at
    bc1t	.L0d97e148
    sw	$a5,0($t0)
    # Line 139
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f14,$f5
.L0d97e148:
    # Line 140
    li	$a0,-4096
    # Line 139
    trunc.l.s	$f7,$f5
    lui	$a4,0x400
    # Line 144
    sll	$v0,$a7,0x19
    # Line 139
    c.le.d $f4,$f6
    # Line 145
    lwc1	$f6,64($sp)
    # Line 140
    lwc1	$f5,_lit_45800000
    # Line 144
    and	$v0,$t1,$v0
    # Line 139
    lui	$a2,0xff
    dmfc1	$at,$f7
    # Line 147
    lwc1	$f10,_lit_45800000
    # Line 139
    lui	$a1,0xff00
    ori	$a2,$a2,0xf000
    # Line 147
    lwc1	$f9,_lit_457ff000
    # Line 139
    ori	$a1,$a1,0xfff
    # Line 145
    cvt.d.s	$f7,$f6
    # Line 139
    sll	$at,$at,0xc
    and	$a5,$a1,$a5
    and	$at,$a2,$at
    # Line 142
    lw	$a2,108($sp)
    # Line 145
    c.le.d $f4,$f7
    # Line 139
    or	$a5,$a5,$at
    bc1f .L0d97e1b0
    sw	$a5,0($t0)
    # Line 140
    b	.L0d97e1b4
    lwc1	$f5,_lit_457ff000
.L0d97e1b0:
    mul.s	$f5,$f17,$f5
.L0d97e1b4:
    trunc.l.s	$f8,$f5
    dmfc1	$a1,$f8
    sll	$a1,$a1,0x0
    # Line 145
    lw	$at,84($sp)
    # Line 140
    and	$a0,$a0,$a5
    andi	$a1,$a1,0xfff
    or	$a0,$a0,$a1
    sw	$a0,0($t0)
    # Line 145
    sll	$at,$at,0x18
    # Line 143
    lw	$a0,76($sp)
    li	$a5,-4096
    # Line 142
    sll	$a1,$a6,0x1b
    lw	$v1,0($a2)
    # Line 145
    and	$at,$a3,$at
    # Line 142
    and	$a1,$t8,$a1
    # Line 143
    sll	$a0,$a0,0x1a
    # Line 142
    and	$v1,$t2,$v1
    # Line 143
    and	$a0,$a4,$a0
    # Line 142
    or	$v1,$v1,$a1
    # Line 144
    lui	$a1,0xfdff
    # Line 143
    and	$v1,$t9,$v1
    # Line 144
    ori	$a1,$a1,0xffff
    # Line 143
    or	$v1,$v1,$a0
    lui	$a3,0xff
    # Line 144
    and	$a1,$a1,$v1
    ori	$a3,$a3,0xf000
    or	$a1,$a1,$v0
    # Line 146
    lwc1	$f5,_lit_45800000
    lui	$a4,0xff00
    # Line 145
    and	$a1,$t3,$a1
    ori	$a4,$a4,0xfff
    or	$a1,$a1,$at
    bc1f .L0d97e254
    sw	$a1,0($a2)
    lui	$a3,0xff
    lui	$a4,0xff00
    ori	$a3,$a3,0xf000
    # Line 146
    lwc1	$f5,_lit_457ff000
    b	.L0d97e258
    ori	$a4,$a4,0xfff
.L0d97e254:
    mul.s	$f5,$f6,$f5
.L0d97e258:
    lwc1	$f6,88($sp)
    trunc.l.s	$f8,$f5
    dmfc1	$a6,$f8
    cvt.d.s	$f7,$f6
    sll	$a6,$a6,0xc
    c.le.d $f4,$f7
    and	$a1,$a4,$a1
    and	$a6,$a3,$a6
    or	$a1,$a1,$a6
    sw	$a1,0($a2)
    # Line 147
    and	$a7,$a5,$a1
    # Line 146
    bc1f .L0d97e2ac
    # Line 147
    and	$t1,$a5,$a1
    trunc.l.s	$f9,$f9
    dmfc1	$t0,$f9
    sll	$t0,$t0,0x0
    # Line 148
    addiu	$sp,$sp,64
    # Line 147
    andi	$t0,$t0,0xfff
    or	$a7,$a7,$t0
    # Line 148
    jr	$ra
    # Line 147
    sw	$a7,0($a2)
.L0d97e2ac:
    mul.s	$f10,$f6,$f10
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x0
    # Line 148
    addiu	$sp,$sp,64
    # Line 147
    andi	$t2,$t2,0xfff
    or	$t1,$t1,$t2
    # Line 148
    jr	$ra
    # Line 147
    sw	$t1,0($a2)
.end LoadDTree

# Function: PackQuadLerpTree
# Declared: Line 154 (Source lines: 155-263)
# Address: 0x0d97e2d0 - 0x0d97e714 (Size: 1092 bytes, Frame: 144)
.ent PackQuadLerpTree
PackQuadLerpTree:
    # Line 155
    addiu	$sp,$sp,-272
    sd	$ra,224($sp)
    sd	$a0,216($sp)
    addiu	$t3,$a0,680
    sd	$t3,168($sp)
    addiu	$t2,$a0,676
    sd	$t2,80($sp)
    addiu	$t1,$a0,672
    sd	$t1,72($sp)
    addiu	$t0,$a0,668
    sd	$t0,96($sp)
    addiu	$a7,$a0,664
    sd	$a7,56($sp)
    addiu	$a6,$a0,660
    sd	$a6,112($sp)
    addiu	$a5,$a0,656
    sd	$a5,104($sp)
    addiu	$a4,$a0,652
    sd	$a4,136($sp)
    addiu	$a3,$a0,648
    sd	$a3,120($sp)
    addiu	$a2,$a0,644
    sd	$a2,152($sp)
    sd	$s0,208($sp)
    move	$s0,$a1
    addiu	$a1,$a0,640
    sd	$a1,144($sp)
    addiu	$v1,$a0,636
    sd	$v1,176($sp)
    addiu	$v0,$a0,632
    sd	$v0,160($sp)
    addiu	$at,$a0,624
    sd	$at,88($sp)
    sd	$s4,232($sp)
    addiu	$s4,$a0,684
    sd	$s4,64($sp)
    lw	$s4,52($sp)
    sd	$s5,200($sp)
    addiu	$s5,$a0,628
    sd	$s5,128($sp)
    sd	$s3,256($sp)
    sd	$s7,184($sp)
    sd	$s2,248($sp)
    move	$s2,$a0
    sd	$s8,264($sp)
    li	$s8,3
    li	$s7,2
    sd	$s6,240($sp)
    li	$s6,1
    li	$s3,8
    sd	$s1,192($sp)
    move	$s1,$zero
    b	.L0d97e708
    lw	$s5,48($sp)
.L0d97e3a8:
    # Line 180
    ld	$s4,104($sp)
    ld	$s5,112($sp)
.L0d97e3b0:
    # Line 193
    beqz	$s0,.L0d97e5a8
    # Line 195
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 193
    beq	$s6,$s0,.L0d97e600
    # Line 203
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 193
    beq	$s7,$s0,.L0d97e658
    # Line 211
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 193
    beq	$s8,$s0,.L0d97e6b0
    # Line 219
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 166
    addiu	$s1,$s1,1
.L0d97e3d4:
    # Line 155
    la	$a1,sub_0daf0000
    # Line 166
    beq	$s3,$s1,.L0d97e404
    addiu	$s2,$s2,4
    # Line 155
    addiu	$a1,$a1,-29592
.L0d97e3e4:
    sltiu	$a3,$s1,8
    sll	$a2,$s1,0x2
    beqz	$a3,.L0d97e3b0
    addu	$a1,$a1,$a2
    lw	$a2,0($a1)
    # Line 186
    ld	$s5,80($sp)
    # Line 155
    jr	$a2
    # Line 186
    ld	$s4,72($sp)
.L0d97e404:
    # Line 263
    ld	$s8,264($sp)
    # Line 259
    ld	$a4,216($sp)
    # Line 263
    ld	$ra,224($sp)
    # Line 245
    lw	$a6,688($a4)
    # Line 246
    lw	$a7,692($a4)
    # Line 250
    lw	$t1,696($a4)
    # Line 255
    lw	$s1,704($a4)
    # Line 256
    lw	$s3,708($a4)
    # Line 261
    lw	$s6,716($a4)
    # Line 259
    lwc1	$f8,484($a4)
    # Line 244
    lwc1	$f3,_lit_45800000
    # Line 255
    lwc1	$f5,332($a4)
    # Line 249
    lwc1	$f4,188($a4)
    # Line 250
    lwc1	$f2,184($a4)
    # Line 259
    mul.s	$f8,$f8,$f3
    # Line 244
    lwc1	$f1,40($a4)
    # Line 255
    mul.s	$f5,$f5,$f3
    # Line 245
    lui	$a3,0xffff
    lwc1	$f0,36($a4)
    # Line 249
    mul.s	$f4,$f4,$f3
    # Line 251
    lw	$t3,700($a4)
    # Line 261
    and	$s6,$a3,$s6
    # Line 256
    and	$s3,$a3,$s3
    # Line 250
    mul.s	$f2,$f2,$f3
    # Line 255
    and	$s1,$a3,$s1
    # Line 260
    lw	$s4,712($a4)
    # Line 244
    mul.s	$f1,$f1,$f3
    # Line 249
    trunc.w.s	$f4,$f4
    # Line 251
    and	$t3,$a3,$t3
    # Line 250
    and	$t1,$a3,$t1
    # Line 245
    mul.s	$f0,$f0,$f3
    # Line 250
    trunc.w.s	$f2,$f2
    # Line 246
    and	$a7,$a3,$a7
    # Line 260
    and	$s4,$a3,$s4
    # Line 244
    trunc.w.s	$f1,$f1
    # Line 249
    mfc1	$s0,$f4
    # Line 245
    and	$a3,$a3,$a6
    trunc.w.s	$f0,$f0
    # Line 250
    mfc1	$t2,$f2
    # Line 260
    lwc1	$f7,480($a4)
    # Line 254
    lwc1	$f6,336($a4)
    # Line 255
    trunc.w.s	$f5,$f5
    # Line 244
    mfc1	$t0,$f1
    # Line 249
    andi	$s0,$s0,0xffff
    # Line 245
    mfc1	$a5,$f0
    # Line 250
    andi	$t2,$t2,0xffff
    # Line 251
    or	$t3,$t3,$s0
    sw	$t3,700($a4)
    # Line 244
    andi	$t0,$t0,0xffff
    # Line 250
    or	$t1,$t1,$t2
    sw	$t1,696($a4)
    # Line 260
    mul.s	$f7,$f7,$f3
    # Line 255
    mfc1	$s2,$f5
    # Line 245
    andi	$a5,$a5,0xffff
    # Line 246
    or	$a7,$a7,$t0
    sw	$a7,692($a4)
    # Line 245
    or	$a3,$a3,$a5
    sw	$a3,688($a4)
    # Line 260
    trunc.w.s	$f7,$f7
    # Line 254
    mul.s	$f6,$f6,$f3
    # Line 259
    trunc.w.s	$f8,$f8
    # Line 255
    andi	$s2,$s2,0xffff
    # Line 263
    ld	$s0,208($sp)
    # Line 255
    or	$s1,$s1,$s2
    sw	$s1,704($a4)
    # Line 260
    mfc1	$s5,$f7
    # Line 259
    mfc1	$s7,$f8
    # Line 263
    ld	$s1,192($sp)
    ld	$s2,248($sp)
    # Line 260
    andi	$s5,$s5,0xffff
    # Line 254
    trunc.w.s	$f6,$f6
    # Line 259
    andi	$s7,$s7,0xffff
    # Line 260
    or	$s4,$s4,$s5
    # Line 263
    ld	$s5,200($sp)
    # Line 261
    or	$s6,$s6,$s7
    sw	$s6,716($a4)
    # Line 260
    sw	$s4,712($a4)
    # Line 254
    mfc1	$s4,$f6
    # Line 263
    ld	$s6,240($sp)
    ld	$s7,184($sp)
    # Line 254
    andi	$s4,$s4,0xffff
    # Line 256
    or	$s3,$s3,$s4
    sw	$s3,708($a4)
    # Line 263
    ld	$s3,256($sp)
    ld	$s4,232($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d97e560:
    # Line 168
    ld	$s4,88($sp)
    # Line 169
    b	.L0d97e3b0
    # Line 168
    ld	$s5,128($sp)
.L0d97e56c:
    # Line 189
    ld	$s4,168($sp)
    # Line 190
    b	.L0d97e3b0
    # Line 189
    ld	$s5,64($sp)
.L0d97e578:
    # Line 183
    ld	$s4,56($sp)
    # Line 184
    b	.L0d97e3b0
    # Line 183
    ld	$s5,96($sp)
.L0d97e584:
    # Line 177
    ld	$s4,120($sp)
    # Line 178
    b	.L0d97e3b0
    # Line 177
    ld	$s5,136($sp)
.L0d97e590:
    # Line 174
    ld	$s4,144($sp)
    # Line 175
    b	.L0d97e3b0
    # Line 174
    ld	$s5,152($sp)
.L0d97e59c:
    # Line 171
    ld	$s4,160($sp)
    b	.L0d97e3b0
    ld	$s5,176($sp)
.L0d97e5a8:
    # Line 195
    lw	$a7,404($s2)
    lw	$a6,372($s2)
    lwc1	$f17,192($s2)
    lw	$a4,256($s2)
    lw	$a3,224($s2)
    lwc1	$f14,44($s2)
    lw	$a1,108($s2)
    lwc1	$f10,340($s2)
    lw	$a0,76($s2)
    swc1	$f10,0($sp)
    lw	$at,520($s2)
    sw	$at,12($sp)
    lw	$ra,552($s2)
    sw	$ra,20($sp)
    lwc1	$f9,488($s2)
    addiu	$t9,$t9,-9712
    sw	$s5,44($sp)
    sw	$s4,36($sp)
    bal __glOdysseyEvalMesh2Line
    swc1	$f9,24($sp)
    b	.L0d97e3d4
    # Line 166
    addiu	$s1,$s1,1
.L0d97e600:
    # Line 203
    lw	$a7,404($s2)
    lw	$a6,372($s2)
    lwc1	$f17,192($s2)
    lw	$a4,256($s2)
    lw	$a3,224($s2)
    lwc1	$f14,44($s2)
    lw	$a1,108($s2)
    lwc1	$f12,340($s2)
    lw	$a0,76($s2)
    swc1	$f12,0($sp)
    lw	$at,520($s2)
    sw	$at,12($sp)
    lw	$ra,552($s2)
    sw	$ra,20($sp)
    lwc1	$f11,488($s2)
    addiu	$t9,$t9,-9152
    sw	$s5,44($sp)
    sw	$s4,36($sp)
    bal __glOdysseyEvalMesh2Line
    swc1	$f11,24($sp)
    b	.L0d97e3d4
    # Line 166
    addiu	$s1,$s1,1
.L0d97e658:
    # Line 211
    lw	$a7,404($s2)
    lw	$a6,372($s2)
    lwc1	$f17,192($s2)
    lw	$a4,256($s2)
    lw	$a3,224($s2)
    lwc1	$f14,44($s2)
    lw	$a1,108($s2)
    lwc1	$f15,340($s2)
    lw	$a0,76($s2)
    swc1	$f15,0($sp)
    lw	$at,520($s2)
    sw	$at,12($sp)
    lw	$ra,552($s2)
    sw	$ra,20($sp)
    lwc1	$f13,488($s2)
    addiu	$t9,$t9,-8592
    sw	$s5,44($sp)
    sw	$s4,36($sp)
    bal __glOdysseyEvalMesh2Line
    swc1	$f13,24($sp)
    b	.L0d97e3d4
    # Line 166
    addiu	$s1,$s1,1
.L0d97e6b0:
    # Line 219
    lw	$a7,404($s2)
    lw	$a6,372($s2)
    lwc1	$f17,192($s2)
    lw	$a4,256($s2)
    lw	$a3,224($s2)
    lwc1	$f14,44($s2)
    lw	$a1,108($s2)
    lwc1	$f18,340($s2)
    lw	$a0,76($s2)
    swc1	$f18,0($sp)
    lw	$at,520($s2)
    sw	$at,12($sp)
    lw	$ra,552($s2)
    sw	$ra,20($sp)
    lwc1	$f16,488($s2)
    addiu	$t9,$t9,-8032
    sw	$s5,44($sp)
    sw	$s4,36($sp)
    bal __glOdysseyEvalMesh2Line
    swc1	$f16,24($sp)
    b	.L0d97e3d4
    # Line 166
    addiu	$s1,$s1,1
.L0d97e708:
    # Line 155
    la	$a1,sub_0daf0000
    b	.L0d97e3e4
    addiu	$a1,$a1,-29592
.end PackQuadLerpTree

# Function: __glOdysseySetRealLerpEvenEven
# Declared: Line 269 (Source lines: 270-304)
# Address: 0x0d97e720 - 0x0d97e8d8 (Size: 440 bytes, Frame: 0)
.ent __glOdysseySetRealLerpEvenEven
__glOdysseySetRealLerpEvenEven:
    # Line 298
    lwc1	$f4,_lit_40800000
    sw	$zero,580($a0)
    sw	$zero,432($a0)
    sw	$zero,284($a0)
    sw	$zero,136($a0)
    # Line 297
    sw	$zero,576($a0)
    sw	$zero,428($a0)
    sw	$zero,280($a0)
    sw	$zero,132($a0)
    # Line 296
    sw	$zero,572($a0)
    sw	$zero,424($a0)
    sw	$zero,276($a0)
    sw	$zero,128($a0)
    # Line 295
    sw	$zero,568($a0)
    sw	$zero,420($a0)
    sw	$zero,272($a0)
    sw	$zero,124($a0)
    # Line 294
    sw	$zero,564($a0)
    sw	$zero,416($a0)
    sw	$zero,268($a0)
    sw	$zero,120($a0)
    # Line 293
    sw	$zero,560($a0)
    sw	$zero,412($a0)
    sw	$zero,264($a0)
    sw	$zero,116($a0)
    # Line 292
    sw	$zero,556($a0)
    sw	$zero,408($a0)
    sw	$zero,260($a0)
    sw	$zero,112($a0)
    # Line 291
    sw	$zero,552($a0)
    sw	$zero,404($a0)
    sw	$zero,256($a0)
    sw	$zero,108($a0)
    # Line 289
    sw	$zero,548($a0)
    sw	$zero,400($a0)
    sw	$zero,252($a0)
    sw	$zero,104($a0)
    # Line 288
    sw	$zero,544($a0)
    sw	$zero,396($a0)
    sw	$zero,248($a0)
    sw	$zero,100($a0)
    # Line 287
    sw	$zero,540($a0)
    sw	$zero,392($a0)
    sw	$zero,244($a0)
    sw	$zero,96($a0)
    # Line 286
    sw	$zero,536($a0)
    sw	$zero,388($a0)
    sw	$zero,240($a0)
    sw	$zero,92($a0)
    # Line 285
    sw	$zero,532($a0)
    sw	$zero,384($a0)
    sw	$zero,236($a0)
    sw	$zero,88($a0)
    # Line 284
    sw	$zero,528($a0)
    sw	$zero,380($a0)
    sw	$zero,232($a0)
    sw	$zero,84($a0)
    # Line 283
    sw	$zero,524($a0)
    sw	$zero,376($a0)
    sw	$zero,228($a0)
    sw	$zero,80($a0)
    # Line 282
    sw	$zero,520($a0)
    sw	$zero,372($a0)
    sw	$zero,224($a0)
    sw	$zero,76($a0)
    # Line 275
    mtc1	$zero,$f5
    # Line 273
    lwc1	$f0,_lit_3f000000
    # Line 280
    swc1	$f5,516($a0)
    swc1	$f5,368($a0)
    swc1	$f5,220($a0)
    swc1	$f5,72($a0)
    # Line 279
    swc1	$f5,512($a0)
    swc1	$f5,364($a0)
    swc1	$f5,216($a0)
    swc1	$f5,68($a0)
    # Line 278
    swc1	$f5,508($a0)
    swc1	$f5,360($a0)
    swc1	$f5,212($a0)
    swc1	$f5,64($a0)
    # Line 277
    swc1	$f0,504($a0)
    swc1	$f0,356($a0)
    swc1	$f0,208($a0)
    swc1	$f0,60($a0)
    # Line 276
    swc1	$f5,500($a0)
    swc1	$f5,352($a0)
    swc1	$f5,204($a0)
    swc1	$f5,56($a0)
    # Line 275
    swc1	$f5,496($a0)
    swc1	$f5,348($a0)
    swc1	$f5,200($a0)
    swc1	$f5,52($a0)
    # Line 274
    swc1	$f0,492($a0)
    swc1	$f0,344($a0)
    swc1	$f0,196($a0)
    swc1	$f0,48($a0)
    # Line 273
    swc1	$f0,488($a0)
    swc1	$f0,340($a0)
    swc1	$f0,192($a0)
    # Line 270
    move	$a2,$a0
    # Line 273
    swc1	$f0,44($a0)
    # Line 302
    swc1	$f5,484($a0)
    # Line 301
    swc1	$f4,480($a0)
    # Line 302
    swc1	$f5,336($a0)
    # Line 301
    swc1	$f4,332($a0)
    # Line 302
    swc1	$f5,188($a0)
    # Line 301
    swc1	$f4,184($a0)
    # Line 302
    swc1	$f5,40($a0)
    # Line 301
    swc1	$f4,36($a0)
    # Line 304
    jr	$ra
    nop
.end __glOdysseySetRealLerpEvenEven

# Function: __glOdysseySetImaginaryLerpEvenEven
# Declared: Line 310 (Source lines: 311-350)
# Address: 0x0d97e8e0 - 0x0d97eaa0 (Size: 448 bytes, Frame: 0)
.ent __glOdysseySetImaginaryLerpEvenEven
__glOdysseySetImaginaryLerpEvenEven:
    # Line 311
    beqz	$a0,.L0d97ea98
    # Line 344
    lwc1	$f4,_lit_40800000
    sw	$zero,580($a0)
    sw	$zero,432($a0)
    sw	$zero,284($a0)
    sw	$zero,136($a0)
    # Line 343
    sw	$zero,576($a0)
    sw	$zero,428($a0)
    sw	$zero,280($a0)
    sw	$zero,132($a0)
    # Line 342
    sw	$zero,572($a0)
    sw	$zero,424($a0)
    sw	$zero,276($a0)
    sw	$zero,128($a0)
    # Line 341
    sw	$zero,568($a0)
    sw	$zero,420($a0)
    sw	$zero,272($a0)
    sw	$zero,124($a0)
    # Line 340
    sw	$zero,564($a0)
    sw	$zero,416($a0)
    sw	$zero,268($a0)
    sw	$zero,120($a0)
    # Line 339
    sw	$zero,560($a0)
    sw	$zero,412($a0)
    sw	$zero,264($a0)
    sw	$zero,116($a0)
    # Line 338
    sw	$zero,556($a0)
    sw	$zero,408($a0)
    sw	$zero,260($a0)
    sw	$zero,112($a0)
    # Line 337
    sw	$zero,552($a0)
    sw	$zero,404($a0)
    sw	$zero,256($a0)
    sw	$zero,108($a0)
    # Line 335
    sw	$zero,548($a0)
    sw	$zero,400($a0)
    sw	$zero,252($a0)
    sw	$zero,104($a0)
    # Line 334
    sw	$zero,544($a0)
    sw	$zero,396($a0)
    sw	$zero,248($a0)
    sw	$zero,100($a0)
    # Line 333
    sw	$zero,540($a0)
    sw	$zero,392($a0)
    sw	$zero,244($a0)
    sw	$zero,96($a0)
    # Line 332
    sw	$zero,536($a0)
    sw	$zero,388($a0)
    sw	$zero,240($a0)
    sw	$zero,92($a0)
    # Line 331
    sw	$zero,532($a0)
    sw	$zero,384($a0)
    sw	$zero,236($a0)
    sw	$zero,88($a0)
    # Line 330
    sw	$zero,528($a0)
    sw	$zero,380($a0)
    sw	$zero,232($a0)
    sw	$zero,84($a0)
    # Line 329
    sw	$zero,524($a0)
    sw	$zero,376($a0)
    sw	$zero,228($a0)
    sw	$zero,80($a0)
    # Line 328
    sw	$zero,520($a0)
    sw	$zero,372($a0)
    sw	$zero,224($a0)
    sw	$zero,76($a0)
    # Line 325
    lwc1	$f1,_lit_3f800000
    # Line 321
    lwc1	$f0,_lit_3f000000
    # Line 325
    swc1	$f1,512($a0)
    swc1	$f1,364($a0)
    # Line 319
    mtc1	$zero,$f5
    # Line 325
    swc1	$f1,216($a0)
    swc1	$f1,68($a0)
    # Line 326
    swc1	$f5,516($a0)
    swc1	$f5,368($a0)
    swc1	$f5,220($a0)
    swc1	$f5,72($a0)
    # Line 323
    swc1	$f5,504($a0)
    swc1	$f5,356($a0)
    swc1	$f5,208($a0)
    swc1	$f5,60($a0)
    # Line 320
    swc1	$f5,492($a0)
    swc1	$f5,344($a0)
    swc1	$f5,196($a0)
    swc1	$f5,48($a0)
    # Line 319
    swc1	$f5,488($a0)
    swc1	$f5,340($a0)
    swc1	$f5,192($a0)
    swc1	$f5,44($a0)
    # Line 324
    swc1	$f0,508($a0)
    swc1	$f0,360($a0)
    swc1	$f0,212($a0)
    swc1	$f0,64($a0)
    # Line 322
    swc1	$f0,500($a0)
    swc1	$f0,352($a0)
    swc1	$f0,204($a0)
    swc1	$f0,56($a0)
    # Line 321
    swc1	$f0,496($a0)
    swc1	$f0,348($a0)
    swc1	$f0,200($a0)
    swc1	$f0,52($a0)
    # Line 348
    swc1	$f5,484($a0)
    # Line 347
    swc1	$f4,480($a0)
    # Line 348
    swc1	$f5,336($a0)
    # Line 347
    swc1	$f4,332($a0)
    # Line 348
    swc1	$f5,188($a0)
    # Line 347
    swc1	$f4,184($a0)
    # Line 348
    swc1	$f5,40($a0)
    # Line 350
    jr	$ra
    # Line 347
    swc1	$f4,36($a0)
.L0d97ea98:
    # Line 350
    jr	$ra
    nop
.end __glOdysseySetImaginaryLerpEvenEven

# Function: __glOdysseySetRealLerpOddEven
# Declared: Line 357 (Source lines: 358-398)
# Address: 0x0d97eaa0 - 0x0d97ecc4 (Size: 548 bytes, Frame: 16)
.ent __glOdysseySetRealLerpOddEven
__glOdysseySetRealLerpOddEven:
    # Line 358
    addiu	$sp,$sp,-16
    # Line 373
    dsll32	$at,$a2,0x0
    sd	$ra,8($sp)
    dsll32	$v0,$a1,0x0
    # Line 367
    lwc1	$f13,_lit_3f000000
    # Line 373
    dsrl32	$v0,$v0,0x0
    # Line 358
    sd	$s0,0($sp)
    # Line 373
    dmtc1	$v0,$f12
    # Line 372
    swc1	$f13,508($a0)
    # Line 373
    dsrl32	$at,$at,0x0
    ldc1	$f15,_lit8_401921fb54442d18
    dmtc1	$at,$f14
    # Line 372
    swc1	$f13,360($a0)
    # Line 373
    cvt.d.l	$f12,$f12
    # Line 372
    swc1	$f13,212($a0)
    swc1	$f13,64($a0)
    # Line 373
    cvt.d.l	$f14,$f14
    mul.d	$f12,$f12,$f15
    # Line 371
    swc1	$f13,504($a0)
    swc1	$f13,356($a0)
    # Line 373
    div.d	$f12,$f12,$f14
    # Line 371
    swc1	$f13,208($a0)
    swc1	$f13,60($a0)
    # Line 370
    swc1	$f13,500($a0)
    swc1	$f13,352($a0)
    swc1	$f13,204($a0)
    swc1	$f13,56($a0)
    # Line 369
    swc1	$f13,496($a0)
    swc1	$f13,348($a0)
    swc1	$f13,200($a0)
    swc1	$f13,52($a0)
    # Line 368
    swc1	$f13,492($a0)
    swc1	$f13,344($a0)
    swc1	$f13,196($a0)
    swc1	$f13,48($a0)
    # Line 367
    swc1	$f13,488($a0)
    # Line 373
    # lw $t9, -16964($gp) # &__rcis
    # Line 367
    swc1	$f13,340($a0)
    swc1	$f13,192($a0)
    # Line 358
    move	$s0,$a0
    # Line 367
    swc1	$f13,44($a0)
    # Line 373
    jal	__rcis
    cvt.s.d	$f12,$f12
    ld	$ra,8($sp)
    # Line 392
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 391
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 390
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 389
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 376
    li	$v1,1
    # Line 388
    sw	$v1,564($s0)
    sw	$v1,416($s0)
    sw	$v1,268($s0)
    sw	$v1,120($s0)
    # Line 387
    sw	$v1,560($s0)
    sw	$v1,412($s0)
    sw	$v1,264($s0)
    sw	$v1,116($s0)
    # Line 386
    sw	$zero,556($s0)
    sw	$zero,408($s0)
    sw	$zero,260($s0)
    sw	$zero,112($s0)
    # Line 385
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 383
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 382
    sw	$zero,544($s0)
    sw	$zero,396($s0)
    sw	$zero,248($s0)
    sw	$zero,100($s0)
    # Line 381
    sw	$zero,540($s0)
    sw	$zero,392($s0)
    sw	$zero,244($s0)
    sw	$zero,96($s0)
    # Line 380
    sw	$zero,536($s0)
    sw	$zero,388($s0)
    sw	$zero,240($s0)
    sw	$zero,92($s0)
    # Line 379
    sw	$v1,532($s0)
    sw	$v1,384($s0)
    sw	$v1,236($s0)
    sw	$v1,88($s0)
    # Line 378
    sw	$v1,528($s0)
    sw	$v1,380($s0)
    # Line 373
    abs.s	$f6,$f0
    # Line 378
    sw	$v1,232($s0)
    # Line 373
    abs.s	$f13,$f2
    # Line 378
    sw	$v1,84($s0)
    # Line 377
    sw	$v1,524($s0)
    # Line 373
    add.s	$f6,$f13,$f6
    # Line 377
    sw	$v1,376($s0)
    sw	$v1,228($s0)
    # Line 373
    div.s	$f13,$f13,$f6
    # Line 377
    sw	$v1,80($s0)
    # Line 376
    sw	$v1,520($s0)
    sw	$v1,372($s0)
    sw	$v1,224($s0)
    # Line 374
    mtc1	$zero,$f7
    # Line 376
    sw	$v1,76($s0)
    # Line 374
    swc1	$f7,516($s0)
    swc1	$f7,368($s0)
    swc1	$f7,220($s0)
    # Line 392
    ldc1	$f8,_lit8_4010000000000000
    # Line 374
    swc1	$f7,72($s0)
    # Line 392
    cvt.d.s	$f6,$f6
    # Line 373
    swc1	$f13,512($s0)
    # Line 392
    mul.d	$f6,$f6,$f8
    # Line 373
    swc1	$f13,364($s0)
    swc1	$f13,216($s0)
    # Line 392
    cvt.s.d	$f6,$f6
    # Line 373
    swc1	$f13,68($s0)
    # Line 396
    swc1	$f7,484($s0)
    # Line 395
    swc1	$f6,480($s0)
    # Line 396
    swc1	$f7,336($s0)
    # Line 395
    swc1	$f6,332($s0)
    # Line 396
    swc1	$f7,188($s0)
    # Line 395
    swc1	$f6,184($s0)
    # Line 396
    swc1	$f7,40($s0)
    # Line 395
    swc1	$f6,36($s0)
    ld	$s0,0($sp)
    # Line 398
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySetRealLerpOddEven

# Function: __glOdysseySetImaginaryLerpOddEven
# Declared: Line 405 (Source lines: 406-451)
# Address: 0x0d97ecd0 - 0x0d97eef8 (Size: 552 bytes, Frame: 16)
.ent __glOdysseySetImaginaryLerpOddEven
__glOdysseySetImaginaryLerpOddEven:
    # Line 406
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    beqz	$a0,.L0d97eeec
    move	$s0,$a0
    # Line 426
    dsll32	$at,$a2,0x0
    dsll32	$v0,$a1,0x0
    # Line 420
    lwc1	$f13,_lit_3f000000
    # Line 426
    dsrl32	$v0,$v0,0x0
    sd	$ra,8($sp)
    dmtc1	$v0,$f12
    # Line 425
    swc1	$f13,508($a0)
    # Line 426
    dsrl32	$at,$at,0x0
    ldc1	$f15,_lit8_401921fb54442d18
    dmtc1	$at,$f14
    # Line 425
    swc1	$f13,360($a0)
    # Line 426
    cvt.d.l	$f12,$f12
    # Line 425
    swc1	$f13,212($a0)
    swc1	$f13,64($a0)
    # Line 426
    cvt.d.l	$f14,$f14
    mul.d	$f12,$f12,$f15
    # Line 424
    swc1	$f13,504($a0)
    swc1	$f13,356($a0)
    # Line 426
    div.d	$f12,$f12,$f14
    # Line 424
    swc1	$f13,208($a0)
    swc1	$f13,60($a0)
    # Line 423
    swc1	$f13,500($a0)
    swc1	$f13,352($a0)
    swc1	$f13,204($a0)
    swc1	$f13,56($a0)
    # Line 422
    swc1	$f13,496($a0)
    swc1	$f13,348($a0)
    swc1	$f13,200($a0)
    swc1	$f13,52($a0)
    # Line 421
    swc1	$f13,492($a0)
    swc1	$f13,344($a0)
    swc1	$f13,196($a0)
    swc1	$f13,48($a0)
    # Line 420
    swc1	$f13,488($a0)
    # Line 426
    # lw $t9, -16964($gp) # &__rcis
    # Line 420
    swc1	$f13,340($a0)
    swc1	$f13,192($a0)
    swc1	$f13,44($a0)
    # Line 426
    jal	__rcis
    cvt.s.d	$f12,$f12
    ld	$ra,8($sp)
    # Line 445
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 444
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 443
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 442
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 441
    sw	$zero,564($s0)
    sw	$zero,416($s0)
    sw	$zero,268($s0)
    sw	$zero,120($s0)
    # Line 440
    sw	$zero,560($s0)
    sw	$zero,412($s0)
    sw	$zero,264($s0)
    sw	$zero,116($s0)
    # Line 439
    sw	$zero,556($s0)
    sw	$zero,408($s0)
    sw	$zero,260($s0)
    sw	$zero,112($s0)
    # Line 438
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 436
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 435
    sw	$zero,544($s0)
    sw	$zero,396($s0)
    sw	$zero,248($s0)
    sw	$zero,100($s0)
    # Line 434
    sw	$zero,540($s0)
    sw	$zero,392($s0)
    sw	$zero,244($s0)
    sw	$zero,96($s0)
    # Line 433
    sw	$zero,536($s0)
    sw	$zero,388($s0)
    sw	$zero,240($s0)
    sw	$zero,92($s0)
    # Line 429
    li	$v1,1
    # Line 432
    sw	$v1,532($s0)
    sw	$v1,384($s0)
    sw	$v1,236($s0)
    sw	$v1,88($s0)
    # Line 431
    sw	$v1,528($s0)
    sw	$v1,380($s0)
    # Line 426
    abs.s	$f6,$f2
    # Line 431
    sw	$v1,232($s0)
    # Line 426
    abs.s	$f13,$f0
    # Line 431
    sw	$v1,84($s0)
    # Line 430
    sw	$v1,524($s0)
    # Line 426
    add.s	$f6,$f13,$f6
    # Line 430
    sw	$v1,376($s0)
    sw	$v1,228($s0)
    # Line 426
    div.s	$f13,$f13,$f6
    # Line 430
    sw	$v1,80($s0)
    # Line 429
    sw	$v1,520($s0)
    sw	$v1,372($s0)
    sw	$v1,224($s0)
    # Line 427
    mtc1	$zero,$f7
    # Line 429
    sw	$v1,76($s0)
    # Line 427
    swc1	$f7,516($s0)
    swc1	$f7,368($s0)
    swc1	$f7,220($s0)
    # Line 445
    ldc1	$f8,_lit8_4010000000000000
    # Line 427
    swc1	$f7,72($s0)
    # Line 445
    cvt.d.s	$f6,$f6
    # Line 426
    swc1	$f13,512($s0)
    # Line 445
    mul.d	$f6,$f6,$f8
    # Line 426
    swc1	$f13,364($s0)
    swc1	$f13,216($s0)
    # Line 445
    cvt.s.d	$f6,$f6
    # Line 426
    swc1	$f13,68($s0)
    # Line 449
    swc1	$f7,484($s0)
    # Line 448
    swc1	$f6,480($s0)
    # Line 449
    swc1	$f7,336($s0)
    # Line 448
    swc1	$f6,332($s0)
    # Line 449
    swc1	$f7,188($s0)
    # Line 448
    swc1	$f6,184($s0)
    # Line 449
    swc1	$f7,40($s0)
    # Line 448
    swc1	$f6,36($s0)
.L0d97eeec:
    ld	$s0,0($sp)
    # Line 451
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySetImaginaryLerpOddEven

# Function: __glOdysseySetRealLerpEvenOdd
# Declared: Line 458 (Source lines: 459-499)
# Address: 0x0d97ef00 - 0x0d97f124 (Size: 548 bytes, Frame: 16)
.ent __glOdysseySetRealLerpEvenOdd
__glOdysseySetRealLerpEvenOdd:
    # Line 459
    addiu	$sp,$sp,-16
    # Line 474
    dsll32	$at,$a2,0x0
    sd	$ra,8($sp)
    dsll32	$v0,$a1,0x0
    # Line 468
    lwc1	$f13,_lit_3f000000
    # Line 474
    dsrl32	$v0,$v0,0x0
    # Line 459
    sd	$s0,0($sp)
    # Line 474
    dmtc1	$v0,$f12
    # Line 473
    swc1	$f13,508($a0)
    # Line 474
    dsrl32	$at,$at,0x0
    ldc1	$f15,_lit8_401921fb54442d18
    dmtc1	$at,$f14
    # Line 473
    swc1	$f13,360($a0)
    # Line 474
    cvt.d.l	$f12,$f12
    # Line 473
    swc1	$f13,212($a0)
    swc1	$f13,64($a0)
    # Line 474
    cvt.d.l	$f14,$f14
    mul.d	$f12,$f12,$f15
    # Line 472
    swc1	$f13,504($a0)
    swc1	$f13,356($a0)
    # Line 474
    div.d	$f12,$f12,$f14
    # Line 472
    swc1	$f13,208($a0)
    swc1	$f13,60($a0)
    # Line 471
    swc1	$f13,500($a0)
    swc1	$f13,352($a0)
    swc1	$f13,204($a0)
    swc1	$f13,56($a0)
    # Line 470
    swc1	$f13,496($a0)
    swc1	$f13,348($a0)
    swc1	$f13,200($a0)
    swc1	$f13,52($a0)
    # Line 469
    swc1	$f13,492($a0)
    swc1	$f13,344($a0)
    swc1	$f13,196($a0)
    swc1	$f13,48($a0)
    # Line 468
    swc1	$f13,488($a0)
    # Line 474
    # lw $t9, -16964($gp) # &__rcis
    # Line 468
    swc1	$f13,340($a0)
    swc1	$f13,192($a0)
    # Line 459
    move	$s0,$a0
    # Line 468
    swc1	$f13,44($a0)
    # Line 474
    jal	__rcis
    cvt.s.d	$f12,$f12
    ld	$ra,8($sp)
    # Line 493
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 492
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 491
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 490
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 481
    li	$v1,1
    # Line 489
    sw	$v1,564($s0)
    sw	$v1,416($s0)
    sw	$v1,268($s0)
    sw	$v1,120($s0)
    # Line 488
    sw	$v1,560($s0)
    sw	$v1,412($s0)
    sw	$v1,264($s0)
    sw	$v1,116($s0)
    # Line 487
    sw	$zero,556($s0)
    sw	$zero,408($s0)
    sw	$zero,260($s0)
    sw	$zero,112($s0)
    # Line 486
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 484
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 483
    sw	$v1,544($s0)
    sw	$v1,396($s0)
    sw	$v1,248($s0)
    sw	$v1,100($s0)
    # Line 482
    sw	$v1,540($s0)
    sw	$v1,392($s0)
    sw	$v1,244($s0)
    sw	$v1,96($s0)
    # Line 481
    sw	$v1,536($s0)
    sw	$v1,388($s0)
    sw	$v1,240($s0)
    sw	$v1,92($s0)
    # Line 480
    sw	$zero,532($s0)
    sw	$zero,384($s0)
    sw	$zero,236($s0)
    sw	$zero,88($s0)
    # Line 479
    sw	$zero,528($s0)
    sw	$zero,380($s0)
    # Line 474
    abs.s	$f6,$f0
    # Line 479
    sw	$zero,232($s0)
    # Line 474
    abs.s	$f13,$f2
    # Line 479
    sw	$zero,84($s0)
    # Line 478
    sw	$zero,524($s0)
    # Line 474
    add.s	$f6,$f13,$f6
    # Line 478
    sw	$zero,376($s0)
    sw	$zero,228($s0)
    # Line 474
    div.s	$f13,$f13,$f6
    # Line 478
    sw	$zero,80($s0)
    # Line 477
    sw	$zero,520($s0)
    sw	$zero,372($s0)
    sw	$zero,224($s0)
    # Line 475
    mtc1	$zero,$f7
    # Line 477
    sw	$zero,76($s0)
    # Line 475
    swc1	$f7,516($s0)
    swc1	$f7,368($s0)
    swc1	$f7,220($s0)
    # Line 493
    ldc1	$f8,_lit8_4010000000000000
    # Line 475
    swc1	$f7,72($s0)
    # Line 493
    cvt.d.s	$f6,$f6
    # Line 474
    swc1	$f13,512($s0)
    # Line 493
    mul.d	$f6,$f6,$f8
    # Line 474
    swc1	$f13,364($s0)
    swc1	$f13,216($s0)
    # Line 493
    cvt.s.d	$f6,$f6
    # Line 474
    swc1	$f13,68($s0)
    # Line 497
    swc1	$f7,484($s0)
    # Line 496
    swc1	$f6,480($s0)
    # Line 497
    swc1	$f7,336($s0)
    # Line 496
    swc1	$f6,332($s0)
    # Line 497
    swc1	$f7,188($s0)
    # Line 496
    swc1	$f6,184($s0)
    # Line 497
    swc1	$f7,40($s0)
    # Line 496
    swc1	$f6,36($s0)
    ld	$s0,0($sp)
    # Line 499
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySetRealLerpEvenOdd

# Function: __glOdysseySetImaginaryLerpEvenOdd
# Declared: Line 506 (Source lines: 507-553)
# Address: 0x0d97f130 - 0x0d97f358 (Size: 552 bytes, Frame: 16)
.ent __glOdysseySetImaginaryLerpEvenOdd
__glOdysseySetImaginaryLerpEvenOdd:
    # Line 507
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    beqz	$a0,.L0d97f34c
    move	$s0,$a0
    # Line 528
    dsll32	$at,$a2,0x0
    dsll32	$v0,$a1,0x0
    # Line 522
    lwc1	$f13,_lit_3f000000
    # Line 528
    dsrl32	$v0,$v0,0x0
    sd	$ra,8($sp)
    dmtc1	$v0,$f12
    # Line 527
    swc1	$f13,508($a0)
    # Line 528
    dsrl32	$at,$at,0x0
    ldc1	$f15,_lit8_401921fb54442d18
    dmtc1	$at,$f14
    # Line 527
    swc1	$f13,360($a0)
    # Line 528
    cvt.d.l	$f12,$f12
    # Line 527
    swc1	$f13,212($a0)
    swc1	$f13,64($a0)
    # Line 528
    cvt.d.l	$f14,$f14
    mul.d	$f12,$f12,$f15
    # Line 526
    swc1	$f13,504($a0)
    swc1	$f13,356($a0)
    # Line 528
    div.d	$f12,$f12,$f14
    # Line 526
    swc1	$f13,208($a0)
    swc1	$f13,60($a0)
    # Line 525
    swc1	$f13,500($a0)
    swc1	$f13,352($a0)
    swc1	$f13,204($a0)
    swc1	$f13,56($a0)
    # Line 524
    swc1	$f13,496($a0)
    swc1	$f13,348($a0)
    swc1	$f13,200($a0)
    swc1	$f13,52($a0)
    # Line 523
    swc1	$f13,492($a0)
    swc1	$f13,344($a0)
    swc1	$f13,196($a0)
    swc1	$f13,48($a0)
    # Line 522
    swc1	$f13,488($a0)
    # Line 528
    # lw $t9, -16964($gp) # &__rcis
    # Line 522
    swc1	$f13,340($a0)
    swc1	$f13,192($a0)
    swc1	$f13,44($a0)
    # Line 528
    jal	__rcis
    cvt.s.d	$f12,$f12
    ld	$ra,8($sp)
    # Line 547
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 546
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 545
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 544
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 543
    sw	$zero,564($s0)
    sw	$zero,416($s0)
    sw	$zero,268($s0)
    sw	$zero,120($s0)
    # Line 542
    sw	$zero,560($s0)
    sw	$zero,412($s0)
    sw	$zero,264($s0)
    sw	$zero,116($s0)
    # Line 541
    sw	$zero,556($s0)
    sw	$zero,408($s0)
    sw	$zero,260($s0)
    sw	$zero,112($s0)
    # Line 540
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 538
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 537
    sw	$zero,544($s0)
    sw	$zero,396($s0)
    sw	$zero,248($s0)
    sw	$zero,100($s0)
    # Line 535
    li	$v1,1
    # Line 536
    sw	$v1,540($s0)
    sw	$v1,392($s0)
    sw	$v1,244($s0)
    sw	$v1,96($s0)
    # Line 535
    sw	$v1,536($s0)
    sw	$v1,388($s0)
    sw	$v1,240($s0)
    sw	$v1,92($s0)
    # Line 534
    sw	$zero,532($s0)
    sw	$zero,384($s0)
    sw	$zero,236($s0)
    sw	$zero,88($s0)
    # Line 533
    sw	$zero,528($s0)
    sw	$zero,380($s0)
    # Line 528
    abs.s	$f6,$f2
    # Line 533
    sw	$zero,232($s0)
    # Line 528
    abs.s	$f13,$f0
    # Line 533
    sw	$zero,84($s0)
    # Line 532
    sw	$zero,524($s0)
    # Line 528
    add.s	$f6,$f13,$f6
    # Line 532
    sw	$zero,376($s0)
    sw	$zero,228($s0)
    # Line 528
    div.s	$f13,$f13,$f6
    # Line 532
    sw	$zero,80($s0)
    # Line 531
    sw	$zero,520($s0)
    sw	$zero,372($s0)
    sw	$zero,224($s0)
    # Line 529
    mtc1	$zero,$f7
    # Line 531
    sw	$zero,76($s0)
    # Line 529
    swc1	$f7,516($s0)
    swc1	$f7,368($s0)
    swc1	$f7,220($s0)
    # Line 547
    ldc1	$f8,_lit8_4010000000000000
    # Line 529
    swc1	$f7,72($s0)
    # Line 547
    cvt.d.s	$f6,$f6
    # Line 528
    swc1	$f13,512($s0)
    # Line 547
    mul.d	$f6,$f6,$f8
    # Line 528
    swc1	$f13,364($s0)
    swc1	$f13,216($s0)
    # Line 547
    cvt.s.d	$f6,$f6
    # Line 528
    swc1	$f13,68($s0)
    # Line 551
    swc1	$f7,484($s0)
    # Line 550
    swc1	$f6,480($s0)
    # Line 551
    swc1	$f7,336($s0)
    # Line 550
    swc1	$f6,332($s0)
    # Line 551
    swc1	$f7,188($s0)
    # Line 550
    swc1	$f6,184($s0)
    # Line 551
    swc1	$f7,40($s0)
    # Line 550
    swc1	$f6,36($s0)
.L0d97f34c:
    ld	$s0,0($sp)
    # Line 553
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySetImaginaryLerpEvenOdd

# Function: __glOdysseySetRealLerpOddOdd
# Declared: Line 560 (Source lines: 561-602)
# Address: 0x0d97f360 - 0x0d97f584 (Size: 548 bytes, Frame: 16)
.ent __glOdysseySetRealLerpOddOdd
__glOdysseySetRealLerpOddOdd:
    # Line 561
    addiu	$sp,$sp,-16
    # Line 577
    dsll32	$at,$a2,0x0
    sd	$ra,8($sp)
    dsll32	$v0,$a1,0x0
    # Line 571
    lwc1	$f13,_lit_3f000000
    # Line 577
    dsrl32	$v0,$v0,0x0
    # Line 561
    sd	$s0,0($sp)
    # Line 577
    dmtc1	$v0,$f12
    # Line 576
    swc1	$f13,508($a0)
    # Line 577
    dsrl32	$at,$at,0x0
    ldc1	$f15,_lit8_401921fb54442d18
    dmtc1	$at,$f14
    # Line 576
    swc1	$f13,360($a0)
    # Line 577
    cvt.d.l	$f12,$f12
    # Line 576
    swc1	$f13,212($a0)
    swc1	$f13,64($a0)
    # Line 577
    cvt.d.l	$f14,$f14
    mul.d	$f12,$f12,$f15
    # Line 575
    swc1	$f13,504($a0)
    swc1	$f13,356($a0)
    # Line 577
    div.d	$f12,$f12,$f14
    # Line 575
    swc1	$f13,208($a0)
    swc1	$f13,60($a0)
    # Line 574
    swc1	$f13,500($a0)
    swc1	$f13,352($a0)
    swc1	$f13,204($a0)
    swc1	$f13,56($a0)
    # Line 573
    swc1	$f13,496($a0)
    swc1	$f13,348($a0)
    swc1	$f13,200($a0)
    swc1	$f13,52($a0)
    # Line 572
    swc1	$f13,492($a0)
    swc1	$f13,344($a0)
    swc1	$f13,196($a0)
    swc1	$f13,48($a0)
    # Line 571
    swc1	$f13,488($a0)
    # Line 577
    # lw $t9, -16964($gp) # &__rcis
    # Line 571
    swc1	$f13,340($a0)
    swc1	$f13,192($a0)
    # Line 561
    move	$s0,$a0
    # Line 571
    swc1	$f13,44($a0)
    # Line 577
    jal	__rcis
    cvt.s.d	$f12,$f12
    ld	$ra,8($sp)
    # Line 596
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 595
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 594
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 593
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 592
    sw	$zero,564($s0)
    sw	$zero,416($s0)
    sw	$zero,268($s0)
    sw	$zero,120($s0)
    # Line 580
    li	$v1,1
    # Line 591
    sw	$v1,560($s0)
    sw	$v1,412($s0)
    sw	$v1,264($s0)
    sw	$v1,116($s0)
    # Line 590
    sw	$v1,556($s0)
    sw	$v1,408($s0)
    sw	$v1,260($s0)
    sw	$v1,112($s0)
    # Line 589
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 587
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 586
    sw	$zero,544($s0)
    sw	$zero,396($s0)
    sw	$zero,248($s0)
    sw	$zero,100($s0)
    # Line 585
    sw	$zero,540($s0)
    sw	$zero,392($s0)
    sw	$zero,244($s0)
    sw	$zero,96($s0)
    # Line 584
    sw	$zero,536($s0)
    sw	$zero,388($s0)
    sw	$zero,240($s0)
    sw	$zero,92($s0)
    # Line 583
    sw	$v1,532($s0)
    sw	$v1,384($s0)
    sw	$v1,236($s0)
    sw	$v1,88($s0)
    # Line 582
    sw	$v1,528($s0)
    sw	$v1,380($s0)
    # Line 577
    abs.s	$f6,$f0
    # Line 582
    sw	$v1,232($s0)
    # Line 577
    abs.s	$f13,$f2
    # Line 582
    sw	$v1,84($s0)
    # Line 581
    sw	$v1,524($s0)
    # Line 577
    add.s	$f6,$f13,$f6
    # Line 581
    sw	$v1,376($s0)
    sw	$v1,228($s0)
    # Line 577
    div.s	$f13,$f13,$f6
    # Line 581
    sw	$v1,80($s0)
    # Line 580
    sw	$v1,520($s0)
    sw	$v1,372($s0)
    sw	$v1,224($s0)
    # Line 578
    mtc1	$zero,$f7
    # Line 580
    sw	$v1,76($s0)
    # Line 578
    swc1	$f7,516($s0)
    swc1	$f7,368($s0)
    swc1	$f7,220($s0)
    # Line 596
    ldc1	$f8,_lit8_4010000000000000
    # Line 578
    swc1	$f7,72($s0)
    # Line 596
    cvt.d.s	$f6,$f6
    # Line 577
    swc1	$f13,512($s0)
    # Line 596
    mul.d	$f6,$f6,$f8
    # Line 577
    swc1	$f13,364($s0)
    swc1	$f13,216($s0)
    # Line 596
    cvt.s.d	$f6,$f6
    # Line 577
    swc1	$f13,68($s0)
    # Line 600
    swc1	$f7,484($s0)
    # Line 599
    swc1	$f6,480($s0)
    # Line 600
    swc1	$f7,336($s0)
    # Line 599
    swc1	$f6,332($s0)
    # Line 600
    swc1	$f7,188($s0)
    # Line 599
    swc1	$f6,184($s0)
    # Line 600
    swc1	$f7,40($s0)
    # Line 599
    swc1	$f6,36($s0)
    ld	$s0,0($sp)
    # Line 602
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySetRealLerpOddOdd

# Function: __glOdysseySetImaginaryLerpOddOdd
# Declared: Line 609 (Source lines: 610-656)
# Address: 0x0d97f590 - 0x0d97f7b8 (Size: 552 bytes, Frame: 16)
.ent __glOdysseySetImaginaryLerpOddOdd
__glOdysseySetImaginaryLerpOddOdd:
    # Line 610
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    beqz	$a0,.L0d97f7ac
    move	$s0,$a0
    # Line 631
    dsll32	$at,$a2,0x0
    dsll32	$v0,$a1,0x0
    # Line 625
    lwc1	$f13,_lit_3f000000
    # Line 631
    dsrl32	$v0,$v0,0x0
    sd	$ra,8($sp)
    dmtc1	$v0,$f12
    # Line 630
    swc1	$f13,508($a0)
    # Line 631
    dsrl32	$at,$at,0x0
    ldc1	$f15,_lit8_401921fb54442d18
    dmtc1	$at,$f14
    # Line 630
    swc1	$f13,360($a0)
    # Line 631
    cvt.d.l	$f12,$f12
    # Line 630
    swc1	$f13,212($a0)
    swc1	$f13,64($a0)
    # Line 631
    cvt.d.l	$f14,$f14
    mul.d	$f12,$f12,$f15
    # Line 629
    swc1	$f13,504($a0)
    swc1	$f13,356($a0)
    # Line 631
    div.d	$f12,$f12,$f14
    # Line 629
    swc1	$f13,208($a0)
    swc1	$f13,60($a0)
    # Line 628
    swc1	$f13,500($a0)
    swc1	$f13,352($a0)
    swc1	$f13,204($a0)
    swc1	$f13,56($a0)
    # Line 627
    swc1	$f13,496($a0)
    swc1	$f13,348($a0)
    swc1	$f13,200($a0)
    swc1	$f13,52($a0)
    # Line 626
    swc1	$f13,492($a0)
    swc1	$f13,344($a0)
    swc1	$f13,196($a0)
    swc1	$f13,48($a0)
    # Line 625
    swc1	$f13,488($a0)
    # Line 631
    # lw $t9, -16964($gp) # &__rcis
    # Line 625
    swc1	$f13,340($a0)
    swc1	$f13,192($a0)
    swc1	$f13,44($a0)
    # Line 631
    jal	__rcis
    cvt.s.d	$f12,$f12
    ld	$ra,8($sp)
    # Line 650
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 649
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 648
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 647
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 634
    li	$v1,1
    # Line 646
    sw	$v1,564($s0)
    sw	$v1,416($s0)
    sw	$v1,268($s0)
    sw	$v1,120($s0)
    # Line 645
    sw	$zero,560($s0)
    sw	$zero,412($s0)
    sw	$zero,264($s0)
    sw	$zero,116($s0)
    # Line 644
    sw	$v1,556($s0)
    sw	$v1,408($s0)
    sw	$v1,260($s0)
    sw	$v1,112($s0)
    # Line 643
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 641
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 640
    sw	$zero,544($s0)
    sw	$zero,396($s0)
    sw	$zero,248($s0)
    sw	$zero,100($s0)
    # Line 639
    sw	$zero,540($s0)
    sw	$zero,392($s0)
    sw	$zero,244($s0)
    sw	$zero,96($s0)
    # Line 638
    sw	$zero,536($s0)
    sw	$zero,388($s0)
    sw	$zero,240($s0)
    sw	$zero,92($s0)
    # Line 637
    sw	$v1,532($s0)
    sw	$v1,384($s0)
    sw	$v1,236($s0)
    sw	$v1,88($s0)
    # Line 636
    sw	$v1,528($s0)
    sw	$v1,380($s0)
    # Line 631
    abs.s	$f6,$f2
    # Line 636
    sw	$v1,232($s0)
    # Line 631
    abs.s	$f13,$f0
    # Line 636
    sw	$v1,84($s0)
    # Line 635
    sw	$v1,524($s0)
    # Line 631
    add.s	$f6,$f13,$f6
    # Line 635
    sw	$v1,376($s0)
    sw	$v1,228($s0)
    # Line 631
    div.s	$f13,$f13,$f6
    # Line 635
    sw	$v1,80($s0)
    # Line 634
    sw	$v1,520($s0)
    sw	$v1,372($s0)
    sw	$v1,224($s0)
    # Line 632
    mtc1	$zero,$f7
    # Line 634
    sw	$v1,76($s0)
    # Line 632
    swc1	$f7,516($s0)
    swc1	$f7,368($s0)
    swc1	$f7,220($s0)
    # Line 650
    ldc1	$f8,_lit8_4010000000000000
    # Line 632
    swc1	$f7,72($s0)
    # Line 650
    cvt.d.s	$f6,$f6
    # Line 631
    swc1	$f13,512($s0)
    # Line 650
    mul.d	$f6,$f6,$f8
    # Line 631
    swc1	$f13,364($s0)
    swc1	$f13,216($s0)
    # Line 650
    cvt.s.d	$f6,$f6
    # Line 631
    swc1	$f13,68($s0)
    # Line 654
    swc1	$f7,484($s0)
    # Line 653
    swc1	$f6,480($s0)
    # Line 654
    swc1	$f7,336($s0)
    # Line 653
    swc1	$f6,332($s0)
    # Line 654
    swc1	$f7,188($s0)
    # Line 653
    swc1	$f6,184($s0)
    # Line 654
    swc1	$f7,40($s0)
    # Line 653
    swc1	$f6,36($s0)
.L0d97f7ac:
    ld	$s0,0($sp)
    # Line 656
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseySetImaginaryLerpOddOdd

# Function: __glOdysseySetSkewLerp
# Declared: Line 661 (Source lines: 662-803)
# Address: 0x0d97f7c0 - 0x0d97fec4 (Size: 1796 bytes, Frame: 32)
.globl __glOdysseySetSkewLerp
.ent __glOdysseySetSkewLerp
__glOdysseySetSkewLerp:
    # Line 662
    lui	$v0,0x18
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-29232
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 666
    # lw $t9, -16960($gp) # &printf
    la	$at,sub_0daf0000
    # Line 662
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 666
    jal	printf
    addiu	$a0,$at,-29560
    ld	$ra,8($sp)
    # Line 694
    lwc1	$f7,_lit_3f800000
    sw	$zero,2020($s0)
    sw	$zero,1872($s0)
    sw	$zero,1724($s0)
    sw	$zero,1576($s0)
    # Line 693
    sw	$zero,2016($s0)
    sw	$zero,1868($s0)
    sw	$zero,1720($s0)
    sw	$zero,1572($s0)
    # Line 692
    sw	$zero,2012($s0)
    sw	$zero,1864($s0)
    sw	$zero,1716($s0)
    sw	$zero,1568($s0)
    # Line 691
    sw	$zero,2008($s0)
    sw	$zero,1860($s0)
    sw	$zero,1712($s0)
    sw	$zero,1564($s0)
    # Line 690
    sw	$zero,2004($s0)
    sw	$zero,1856($s0)
    sw	$zero,1708($s0)
    sw	$zero,1560($s0)
    # Line 689
    sw	$zero,2000($s0)
    sw	$zero,1852($s0)
    sw	$zero,1704($s0)
    sw	$zero,1556($s0)
    # Line 688
    sw	$zero,1996($s0)
    sw	$zero,1848($s0)
    sw	$zero,1700($s0)
    sw	$zero,1552($s0)
    # Line 687
    sw	$zero,1992($s0)
    sw	$zero,1844($s0)
    sw	$zero,1696($s0)
    sw	$zero,1548($s0)
    # Line 685
    sw	$zero,1988($s0)
    sw	$zero,1840($s0)
    sw	$zero,1692($s0)
    sw	$zero,1544($s0)
    # Line 684
    sw	$zero,1984($s0)
    sw	$zero,1836($s0)
    sw	$zero,1688($s0)
    sw	$zero,1540($s0)
    # Line 683
    sw	$zero,1980($s0)
    sw	$zero,1832($s0)
    sw	$zero,1684($s0)
    sw	$zero,1536($s0)
    # Line 682
    sw	$zero,1976($s0)
    sw	$zero,1828($s0)
    sw	$zero,1680($s0)
    sw	$zero,1532($s0)
    # Line 681
    sw	$zero,1972($s0)
    sw	$zero,1824($s0)
    sw	$zero,1676($s0)
    sw	$zero,1528($s0)
    # Line 680
    sw	$zero,1968($s0)
    sw	$zero,1820($s0)
    sw	$zero,1672($s0)
    sw	$zero,1524($s0)
    # Line 679
    sw	$zero,1964($s0)
    sw	$zero,1816($s0)
    sw	$zero,1668($s0)
    sw	$zero,1520($s0)
    # Line 678
    sw	$zero,1960($s0)
    sw	$zero,1812($s0)
    sw	$zero,1664($s0)
    sw	$zero,1516($s0)
    # Line 729
    lwc1	$f8,_lit_40400000
    # Line 704
    lwc1	$f1,_lit_3f666666
    # Line 669
    lwc1	$f5,_lit_3e800000
    # Line 670
    lwc1	$f0,_lit_3f400000
    # Line 671
    mtc1	$zero,$f4
    # Line 673
    lwc1	$f6,_lit_3f000000
    # Line 676
    swc1	$f4,1956($s0)
    swc1	$f4,1808($s0)
    swc1	$f4,1660($s0)
    swc1	$f4,1512($s0)
    # Line 675
    swc1	$f4,1952($s0)
    swc1	$f4,1804($s0)
    swc1	$f4,1656($s0)
    swc1	$f4,1508($s0)
    # Line 674
    swc1	$f4,1948($s0)
    swc1	$f4,1800($s0)
    swc1	$f4,1652($s0)
    swc1	$f4,1504($s0)
    # Line 673
    swc1	$f6,1944($s0)
    swc1	$f6,1796($s0)
    swc1	$f6,1648($s0)
    swc1	$f6,1500($s0)
    # Line 672
    swc1	$f4,1940($s0)
    swc1	$f4,1792($s0)
    swc1	$f4,1644($s0)
    swc1	$f4,1496($s0)
    # Line 671
    swc1	$f4,1936($s0)
    swc1	$f4,1788($s0)
    swc1	$f4,1640($s0)
    swc1	$f4,1492($s0)
    # Line 670
    swc1	$f0,1932($s0)
    swc1	$f0,1784($s0)
    swc1	$f0,1636($s0)
    swc1	$f0,1488($s0)
    # Line 669
    swc1	$f5,1928($s0)
    swc1	$f5,1780($s0)
    swc1	$f5,1632($s0)
    swc1	$f5,1484($s0)
    # Line 698
    swc1	$f4,1924($s0)
    # Line 697
    swc1	$f7,1920($s0)
    # Line 698
    swc1	$f4,1776($s0)
    # Line 697
    swc1	$f7,1772($s0)
    # Line 698
    swc1	$f4,1628($s0)
    # Line 697
    swc1	$f7,1624($s0)
    # Line 698
    swc1	$f4,1480($s0)
    # Line 697
    swc1	$f7,1476($s0)
    # Line 713
    li	$a4,1
    # Line 696
    addiu	$a1,$s0,148
    # Line 729
    sw	$zero,2740($s0)
    sw	$zero,2592($s0)
    sw	$zero,2444($s0)
    sw	$zero,2296($s0)
    # Line 728
    sw	$zero,2736($s0)
    sw	$zero,2588($s0)
    sw	$zero,2440($s0)
    sw	$zero,2292($s0)
    # Line 727
    sw	$zero,2732($s0)
    sw	$zero,2584($s0)
    sw	$zero,2436($s0)
    sw	$zero,2288($s0)
    # Line 726
    sw	$zero,2728($s0)
    sw	$zero,2580($s0)
    sw	$zero,2432($s0)
    sw	$zero,2284($s0)
    # Line 725
    sw	$a4,2724($s0)
    sw	$a4,2576($s0)
    sw	$a4,2428($s0)
    sw	$a4,2280($s0)
    # Line 724
    sw	$zero,2720($s0)
    sw	$zero,2572($s0)
    sw	$zero,2424($s0)
    sw	$zero,2276($s0)
    # Line 723
    sw	$a4,2716($s0)
    sw	$a4,2568($s0)
    sw	$a4,2420($s0)
    sw	$a4,2272($s0)
    # Line 722
    sw	$zero,2712($s0)
    sw	$zero,2564($s0)
    sw	$zero,2416($s0)
    sw	$zero,2268($s0)
    # Line 720
    sw	$zero,2708($s0)
    sw	$zero,2560($s0)
    sw	$zero,2412($s0)
    sw	$zero,2264($s0)
    # Line 719
    sw	$zero,2704($s0)
    sw	$zero,2556($s0)
    sw	$zero,2408($s0)
    sw	$zero,2260($s0)
    # Line 718
    sw	$zero,2700($s0)
    sw	$zero,2552($s0)
    sw	$zero,2404($s0)
    sw	$zero,2256($s0)
    # Line 717
    sw	$zero,2696($s0)
    sw	$zero,2548($s0)
    sw	$zero,2400($s0)
    sw	$zero,2252($s0)
    # Line 716
    sw	$a4,2692($s0)
    sw	$a4,2544($s0)
    sw	$a4,2396($s0)
    sw	$a4,2248($s0)
    # Line 715
    sw	$a4,2688($s0)
    sw	$a4,2540($s0)
    sw	$a4,2392($s0)
    sw	$a4,2244($s0)
    # Line 714
    sw	$a4,2684($s0)
    sw	$a4,2536($s0)
    sw	$a4,2388($s0)
    sw	$a4,2240($s0)
    # Line 713
    sw	$a4,2680($s0)
    sw	$a4,2532($s0)
    sw	$a4,2384($s0)
    sw	$a4,2236($s0)
    # Line 711
    swc1	$f4,2676($s0)
    swc1	$f4,2528($s0)
    swc1	$f4,2380($s0)
    swc1	$f4,2232($s0)
    # Line 710
    swc1	$f4,2672($s0)
    swc1	$f4,2524($s0)
    swc1	$f4,2376($s0)
    swc1	$f4,2228($s0)
    # Line 709
    swc1	$f6,2668($s0)
    swc1	$f6,2520($s0)
    swc1	$f6,2372($s0)
    swc1	$f6,2224($s0)
    # Line 707
    swc1	$f5,2660($s0)
    swc1	$f5,2512($s0)
    swc1	$f5,2364($s0)
    swc1	$f5,2216($s0)
    # Line 706
    swc1	$f5,2656($s0)
    swc1	$f5,2508($s0)
    swc1	$f5,2360($s0)
    swc1	$f5,2212($s0)
    # Line 704
    swc1	$f1,2648($s0)
    swc1	$f1,2500($s0)
    swc1	$f1,2352($s0)
    swc1	$f1,2204($s0)
    # Line 705
    lwc1	$f2,_lit_3e99999a
    # Line 708
    lwc1	$f3,_lit_3f4ccccd
    # Line 705
    swc1	$f2,2652($s0)
    swc1	$f2,2504($s0)
    swc1	$f2,2356($s0)
    swc1	$f2,2208($s0)
    # Line 708
    swc1	$f3,2664($s0)
    swc1	$f3,2516($s0)
    swc1	$f3,2368($s0)
    swc1	$f3,2220($s0)
    # Line 733
    swc1	$f4,2200($s0)
    # Line 732
    swc1	$f8,2196($s0)
    # Line 733
    swc1	$f4,2496($a1)
    swc1	$f4,2348($a1)
    swc1	$f4,2200($a1)
    # Line 732
    swc1	$f8,2492($a1)
    swc1	$f8,2344($a1)
    swc1	$f8,2196($a1)
    # Line 731
    addiu	$a2,$a1,148
    # Line 763
    lwc1	$f8,_lit_40000000
    sw	$zero,580($s0)
    sw	$zero,432($s0)
    sw	$zero,284($s0)
    sw	$zero,136($s0)
    # Line 762
    sw	$zero,576($s0)
    sw	$zero,428($s0)
    sw	$zero,280($s0)
    sw	$zero,132($s0)
    # Line 761
    sw	$zero,572($s0)
    sw	$zero,424($s0)
    sw	$zero,276($s0)
    sw	$zero,128($s0)
    # Line 760
    sw	$zero,568($s0)
    sw	$zero,420($s0)
    sw	$zero,272($s0)
    sw	$zero,124($s0)
    # Line 759
    sw	$a4,564($s0)
    sw	$a4,416($s0)
    sw	$a4,268($s0)
    sw	$a4,120($s0)
    # Line 758
    sw	$a4,560($s0)
    sw	$a4,412($s0)
    sw	$a4,264($s0)
    sw	$a4,116($s0)
    # Line 757
    sw	$zero,556($s0)
    sw	$zero,408($s0)
    sw	$zero,260($s0)
    sw	$zero,112($s0)
    # Line 756
    sw	$zero,552($s0)
    sw	$zero,404($s0)
    sw	$zero,256($s0)
    sw	$zero,108($s0)
    # Line 754
    sw	$zero,548($s0)
    sw	$zero,400($s0)
    sw	$zero,252($s0)
    sw	$zero,104($s0)
    # Line 753
    sw	$zero,544($s0)
    sw	$zero,396($s0)
    sw	$zero,248($s0)
    sw	$zero,100($s0)
    # Line 752
    sw	$zero,540($s0)
    sw	$zero,392($s0)
    sw	$zero,244($s0)
    sw	$zero,96($s0)
    # Line 751
    sw	$zero,536($s0)
    sw	$zero,388($s0)
    sw	$zero,240($s0)
    sw	$zero,92($s0)
    # Line 750
    sw	$a4,532($s0)
    sw	$a4,384($s0)
    sw	$a4,236($s0)
    sw	$a4,88($s0)
    # Line 749
    sw	$a4,528($s0)
    sw	$a4,380($s0)
    sw	$a4,232($s0)
    sw	$a4,84($s0)
    # Line 748
    sw	$a4,524($s0)
    sw	$a4,376($s0)
    sw	$a4,228($s0)
    sw	$a4,80($s0)
    # Line 747
    sw	$a4,520($s0)
    sw	$a4,372($s0)
    sw	$a4,224($s0)
    sw	$a4,76($s0)
    # Line 745
    swc1	$f4,516($s0)
    swc1	$f4,368($s0)
    swc1	$f4,220($s0)
    swc1	$f4,72($s0)
    # Line 743
    swc1	$f6,508($s0)
    swc1	$f6,360($s0)
    swc1	$f6,212($s0)
    swc1	$f6,64($s0)
    # Line 742
    swc1	$f6,504($s0)
    swc1	$f6,356($s0)
    swc1	$f6,208($s0)
    swc1	$f6,60($s0)
    # Line 741
    swc1	$f6,500($s0)
    swc1	$f6,352($s0)
    swc1	$f6,204($s0)
    swc1	$f6,56($s0)
    # Line 740
    swc1	$f5,496($s0)
    swc1	$f5,348($s0)
    swc1	$f5,200($s0)
    swc1	$f5,52($s0)
    # Line 739
    swc1	$f6,492($s0)
    swc1	$f6,344($s0)
    swc1	$f6,196($s0)
    swc1	$f6,48($s0)
    # Line 738
    swc1	$f5,488($s0)
    swc1	$f5,340($s0)
    swc1	$f5,192($s0)
    swc1	$f5,44($s0)
    # Line 776
    lwc1	$f10,_lit_3f733333
    # Line 744
    lwc1	$f9,_lit_3ecccccd
    # Line 803
    ld	$gp,16($sp)
    # Line 744
    swc1	$f9,512($s0)
    swc1	$f9,364($s0)
    swc1	$f9,216($s0)
    swc1	$f9,68($s0)
    # Line 767
    swc1	$f4,40($s0)
    # Line 766
    swc1	$f8,36($s0)
    # Line 767
    swc1	$f4,40($a1)
    # Line 766
    swc1	$f8,36($a1)
    # Line 767
    swc1	$f4,188($a2)
    # Line 766
    swc1	$f8,184($a2)
    # Line 767
    swc1	$f4,40($a2)
    # Line 765
    addiu	$a3,$a2,148
    # Line 766
    swc1	$f8,36($a2)
    # Line 797
    sw	$zero,1300($s0)
    sw	$zero,1152($s0)
    sw	$zero,1004($s0)
    sw	$zero,856($s0)
    # Line 796
    sw	$zero,1296($s0)
    sw	$zero,1148($s0)
    sw	$zero,1000($s0)
    sw	$zero,852($s0)
    # Line 795
    sw	$zero,1292($s0)
    sw	$zero,1144($s0)
    sw	$zero,996($s0)
    sw	$zero,848($s0)
    # Line 794
    sw	$zero,1288($s0)
    sw	$zero,1140($s0)
    sw	$zero,992($s0)
    sw	$zero,844($s0)
    # Line 793
    sw	$a4,1284($s0)
    sw	$a4,1136($s0)
    sw	$a4,988($s0)
    sw	$a4,840($s0)
    # Line 792
    sw	$a4,1280($s0)
    sw	$a4,1132($s0)
    sw	$a4,984($s0)
    sw	$a4,836($s0)
    # Line 791
    sw	$zero,1276($s0)
    sw	$zero,1128($s0)
    sw	$zero,980($s0)
    sw	$zero,832($s0)
    # Line 790
    sw	$zero,1272($s0)
    sw	$zero,1124($s0)
    sw	$zero,976($s0)
    sw	$zero,828($s0)
    # Line 788
    sw	$zero,1268($s0)
    sw	$zero,1120($s0)
    sw	$zero,972($s0)
    sw	$zero,824($s0)
    # Line 787
    sw	$zero,1264($s0)
    sw	$zero,1116($s0)
    sw	$zero,968($s0)
    sw	$zero,820($s0)
    # Line 786
    sw	$a4,1260($s0)
    sw	$a4,1112($s0)
    sw	$a4,964($s0)
    sw	$a4,816($s0)
    # Line 785
    sw	$a4,1256($s0)
    sw	$a4,1108($s0)
    sw	$a4,960($s0)
    sw	$a4,812($s0)
    # Line 784
    sw	$zero,1252($s0)
    sw	$zero,1104($s0)
    sw	$zero,956($s0)
    sw	$zero,808($s0)
    # Line 783
    sw	$zero,1248($s0)
    sw	$zero,1100($s0)
    sw	$zero,952($s0)
    sw	$zero,804($s0)
    # Line 782
    sw	$zero,1244($s0)
    sw	$zero,1096($s0)
    sw	$zero,948($s0)
    sw	$zero,800($s0)
    # Line 781
    sw	$zero,1240($s0)
    sw	$zero,1092($s0)
    sw	$zero,944($s0)
    sw	$zero,796($s0)
    # Line 779
    swc1	$f4,1236($s0)
    swc1	$f4,1088($s0)
    swc1	$f4,940($s0)
    swc1	$f4,792($s0)
    # Line 778
    swc1	$f4,1232($s0)
    swc1	$f4,1084($s0)
    swc1	$f4,936($s0)
    swc1	$f4,788($s0)
    # Line 777
    swc1	$f6,1228($s0)
    swc1	$f6,1080($s0)
    swc1	$f6,932($s0)
    swc1	$f6,784($s0)
    # Line 775
    swc1	$f6,1220($s0)
    swc1	$f6,1072($s0)
    swc1	$f6,924($s0)
    swc1	$f6,776($s0)
    # Line 774
    swc1	$f5,1216($s0)
    swc1	$f5,1068($s0)
    swc1	$f5,920($s0)
    swc1	$f5,772($s0)
    # Line 773
    swc1	$f6,1212($s0)
    swc1	$f6,1064($s0)
    swc1	$f6,916($s0)
    swc1	$f6,768($s0)
    # Line 772
    swc1	$f6,1208($s0)
    swc1	$f6,1060($s0)
    swc1	$f6,912($s0)
    swc1	$f6,764($s0)
    # Line 776
    swc1	$f10,1224($s0)
    swc1	$f10,1076($s0)
    swc1	$f10,928($s0)
    swc1	$f10,780($s0)
    # Line 801
    swc1	$f4,760($s0)
    # Line 800
    swc1	$f7,756($s0)
    # Line 801
    swc1	$f4,760($a1)
    # Line 800
    swc1	$f7,756($a1)
    # Line 801
    swc1	$f4,760($a2)
    # Line 800
    swc1	$f7,756($a2)
    # Line 801
    swc1	$f4,760($a3)
    # Line 800
    swc1	$f7,756($a3)
    ld	$s0,0($sp)
    # Line 803
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseySetSkewLerp

# Function: __glOdysseyProgramFFTFilter
# Declared: Line 809 (Source lines: 810-891)
# Address: 0x0d97fed0 - 0x0d980160 (Size: 656 bytes, Frame: 32)
.globl __glOdysseyProgramFFTFilter
.ent __glOdysseyProgramFFTFilter
__glOdysseyProgramFFTFilter:
    # Line 810
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    move	$s0,$a0
    lw	$a3,20($a0)
    li	$at,1
    lui	$v0,0x18
    sd	$ra,24($sp)
    addiu	$v0,$v0,-31040
    addiu	$a3,$a3,1440
    sd	$gp,8($sp)
    beq	$a1,$at,.L0d98000c
    addu	$gp,$t9,$v0
    # Line 856
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    jal	__glOdysseyInitLerpTree
    move	$a0,$a3
    # Line 857
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s0)
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,2160
    # Line 858
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    jal	__glOdysseyInitLerpTree
    lw	$a0,20($s0)
    # Line 859
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s0)
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,720
    # Line 862
    # lw $t9, -32732($gp) # &sub_0d980000
    lw	$a0,20($s0)
    addiu	$t9,$t9,-6368
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,1440
    # Line 864
    # lw $t9, -32732($gp) # &sub_0d980000
    lw	$a0,20($s0)
    addiu	$t9,$t9,-5472
    li	$a2,2
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,2160
    # Line 866
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-4352
    li	$a2,2
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    lw	$a0,20($s0)
    # Line 868
    # lw $t9, -32732($gp) # &sub_0d980000
    lw	$a0,20($s0)
    addiu	$t9,$t9,-3232
    li	$a2,2
    move	$a1,$zero
    sd	$s1,16($sp)
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,720
    # Line 876
    la	$s1,sub_0d980000
    addiu	$s1,$s1,-7472
    move	$t9,$s1
    lw	$a0,20($s0)
    bal __glOdysseyEvalMesh2Line
    move	$a1,$zero
    # Line 877
    lw	$a0,20($s0)
    move	$t9,$s1
    li	$a1,1
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,720
    # Line 878
    lw	$a0,20($s0)
    move	$t9,$s1
    li	$a1,2
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,1440
    # Line 879
    lw	$a0,20($s0)
    move	$t9,$s1
    li	$a1,3
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,2160
    ld	$ra,24($sp)
.L0d97fff8:
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 891
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98000c:
    # Line 817
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    jal	__glOdysseyInitLerpTree
    move	$a0,$a3
    # Line 818
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s0)
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,2160
    # Line 819
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    jal	__glOdysseyInitLerpTree
    lw	$a0,20($s0)
    # Line 820
    # lw $t9, -31280($gp) # &__glOdysseyInitLerpTree
    lw	$a0,20($s0)
    jal	__glOdysseyInitLerpTree
    addiu	$a0,$a0,720
    # Line 822
    # lw $t9, -32732($gp) # &sub_0d980000
    lw	$a0,20($s0)
    addiu	$t9,$t9,-6368
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,1440
    # Line 824
    # lw $t9, -32732($gp) # &sub_0d980000
    lw	$a0,20($s0)
    addiu	$t9,$t9,-5472
    li	$a2,2
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,2160
    # Line 826
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-4352
    li	$a2,2
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    lw	$a0,20($s0)
    # Line 828
    # lw $t9, -32732($gp) # &sub_0d980000
    lw	$a0,20($s0)
    addiu	$t9,$t9,-3232
    li	$a2,2
    move	$a1,$zero
    sd	$s1,16($sp)
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,720
    # Line 836
    la	$s1,sub_0d980000
    addiu	$s1,$s1,-7472
    move	$t9,$s1
    lw	$a0,20($s0)
    bal __glOdysseyEvalMesh2Line
    move	$a1,$zero
    # Line 837
    lw	$a0,20($s0)
    move	$t9,$s1
    li	$a1,1
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,720
    # Line 838
    lw	$a0,20($s0)
    move	$t9,$s1
    li	$a1,2
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,1440
    # Line 839
    lw	$a0,20($s0)
    move	$t9,$s1
    li	$a1,3
    bal __glOdysseyEvalMesh2Line
    addiu	$a0,$a0,2160
    # Line 846
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-5920
    bal __glOdysseyEvalMesh2Line
    move	$a0,$zero
    # Line 847
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-4912
    move	$a0,$zero
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    move	$a2,$zero
    # Line 848
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-3792
    move	$a0,$zero
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    move	$a2,$zero
    # Line 849
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-2672
    move	$a0,$zero
    move	$a1,$zero
    bal __glOdysseyEvalMesh2Line
    move	$a2,$zero
    b	.L0d97fff8
    ld	$ra,24($sp)
.end __glOdysseyProgramFFTFilter

.late_rodata
jtbl_0dae8c68:
    .word .L0d97e560
    .word .L0d97e59c
    .word .L0d97e590
    .word .L0d97e584
    .word .L0d97e3a8
    .word .L0d97e578
    .word .L0d97e3b0
    .word .L0d97e56c

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_401921fb54442d18:
    .word 0x401921fb, 0x54442d18
_lit_3e800000:
    .word 0x3e800000
_lit_3e99999a:
    .word 0x3e99999a
_lit_3ecccccd:
    .word 0x3ecccccd
_lit_3f000000:
    .word 0x3f000000
_lit_3f400000:
    .word 0x3f400000
_lit_3f4ccccd:
    .word 0x3f4ccccd
_lit_3f666666:
    .word 0x3f666666
_lit_3f733333:
    .word 0x3f733333
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40400000:
    .word 0x40400000
_lit_40800000:
    .word 0x40800000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000

