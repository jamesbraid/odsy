# Source: ../soft/so_lighting.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_lighting.c
# Total Functions: 31

.text

# Function: __glScaleColorf
# Declared: Line 30 (Source lines: 32-36)
# Address: 0x0da49e70 - 0x0da49eb4 (Size: 68 bytes, Frame: 0)
.globl __glScaleColorf
.ent __glScaleColorf
__glScaleColorf:
    # Line 32
    lwc1	$f7,30808($a0)
    lwc1	$f6,0($a2)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 33
    lwc1	$f5,30812($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 34
    lwc1	$f3,30816($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 35
    lwc1	$f1,30848($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 36
    jr	$ra
    # Line 35
    swc1	$f0,12($a1)
.end __glScaleColorf

# Function: __glClampAndScaleColorf
# Declared: Line 41 (Source lines: 45-60)
# Address: 0x0da49ec0 - 0x0da49fa8 (Size: 232 bytes, Frame: 0)
.globl __glClampAndScaleColorf
.ent __glClampAndScaleColorf
__glClampAndScaleColorf:
    # Line 45
    lwc1	$f6,30808($a0)
    lwc1	$f5,0($a2)
    mtc1	$zero,$f4
    mul.s	$f5,$f5,$f6
    c.lt.s	$f5,$f4
    # Line 46
    mtc1	$zero,$f7
    # Line 45
    bc1f	.L0da49ee8
    swc1	$f5,0($a1)
    # Line 46
    mov.s	$f5,$f4
    swc1	$f7,0($a1)
.L0da49ee8:
    lwc1	$f6,30808($a0)
    c.lt.s $f6,$f5
    bc1f .L0da49efc
    # Line 50
    mtc1	$zero,$f7
    # Line 47
    swc1	$f6,0($a1)
.L0da49efc:
    # Line 49
    lwc1	$f6,30812($a0)
    lwc1	$f5,4($a2)
    mul.s	$f5,$f5,$f6
    c.lt.s $f5,$f4
    bc1f .L0da49f1c
    swc1	$f5,4($a1)
    # Line 50
    mov.s	$f5,$f4
    swc1	$f7,4($a1)
.L0da49f1c:
    lwc1	$f6,30812($a0)
    c.lt.s $f6,$f5
    bc1f .L0da49f30
    nop
    # Line 51
    swc1	$f6,4($a1)
.L0da49f30:
    # Line 53
    lwc1	$f6,30816($a0)
    lwc1	$f5,8($a2)
    mul.s	$f5,$f5,$f6
    c.lt.s $f5,$f4
    bc1f .L0da49f54
    swc1	$f5,8($a1)
    # Line 54
    mtc1	$zero,$f7
    mov.s	$f5,$f4
    swc1	$f7,8($a1)
.L0da49f54:
    lwc1	$f6,30816($a0)
    c.lt.s $f6,$f5
    bc1f .L0da49f68
    # Line 58
    mtc1	$zero,$f7
    # Line 55
    swc1	$f6,8($a1)
.L0da49f68:
    # Line 57
    lwc1	$f6,30848($a0)
    lwc1	$f5,12($a2)
    mul.s	$f5,$f5,$f6
    c.lt.s $f5,$f4
    bc1f .L0da49f88
    swc1	$f5,12($a1)
    # Line 58
    mov.s	$f5,$f4
    swc1	$f7,12($a1)
.L0da49f88:
    lwc1	$f4,30848($a0)
    c.lt.s $f4,$f5
    bc1f .L0da49fa0
    nop
    # Line 60
    jr	$ra
    # Line 59
    swc1	$f4,12($a1)
.L0da49fa0:
    # Line 60
    jr	$ra
    nop
.end __glClampAndScaleColorf

# Function: __glClampColorf
# Declared: Line 65 (Source lines: 68-91)
# Address: 0x0da49fb0 - 0x0da4a074 (Size: 196 bytes, Frame: 0)
.globl __glClampColorf
.ent __glClampColorf
__glClampColorf:
    # Line 74
    mtc1	$zero,$f5
    # Line 71
    lwc1	$f9,0($a2)
    # Line 72
    lwc1	$f7,4($a2)
    # Line 74
    c.lt.s	$f9,$f5
    lwc1	$f6,12($a2)
    # Line 73
    lwc1	$f8,8($a2)
    # Line 74
    bc1f	.L0da49fd8
    # Line 68
    lwc1	$f4,3544($a0)
    # Line 76
    b	.L0da49ff0
    swc1	$f5,0($a1)
.L0da49fd8:
    c.lt.s $f4,$f9
    bc1f .L0da49fec
    nop
    # Line 77
    b	.L0da49ff0
    swc1	$f4,0($a1)
.L0da49fec:
    # Line 78
    swc1	$f9,0($a1)
.L0da49ff0:
    c.lt.s $f7,$f5
    # Line 86
    c.lt.s $f6,$f5
    # Line 78
    bc1f .L0da4a008
    # Line 82
    c.lt.s $f8,$f5
    # Line 80
    b	.L0da4a020
    swc1	$f5,4($a1)
.L0da4a008:
    c.lt.s $f4,$f7
    bc1f .L0da4a01c
    nop
    # Line 81
    b	.L0da4a020
    swc1	$f4,4($a1)
.L0da4a01c:
    # Line 82
    swc1	$f7,4($a1)
.L0da4a020:
    bc1f .L0da4a030
    nop
    # Line 84
    b	.L0da4a048
    swc1	$f5,8($a1)
.L0da4a030:
    c.lt.s $f4,$f8
    bc1f .L0da4a044
    nop
    # Line 85
    b	.L0da4a048
    swc1	$f4,8($a1)
.L0da4a044:
    # Line 86
    swc1	$f8,8($a1)
.L0da4a048:
    bc1t .L0da4a06c
    nop
    # Line 88
    c.lt.s $f4,$f6
    bc1f .L0da4a064
    nop
    # Line 91
    jr	$ra
    # Line 89
    swc1	$f4,12($a1)
.L0da4a064:
    # Line 91
    jr	$ra
    # Line 90
    swc1	$f6,12($a1)
.L0da4a06c:
    # Line 91
    jr	$ra
    # Line 88
    swc1	$f5,12($a1)
.end __glClampColorf

# Function: __glScaleColori
# Declared: Line 97 (Source lines: 98-103)
# Address: 0x0da4a080 - 0x0da4a128 (Size: 168 bytes, Frame: 0)
.globl __glScaleColori
.ent __glScaleColori
__glScaleColori:
    # Line 99
    lw	$a5,0($a2)
    mtc1	$a5,$f13
    # Line 98
    lui	$a4,0xb
    addiu	$a4,$a4,-6896
    addu	$at,$t9,$a4
    # Line 99
    cvt.s.w	$f13,$f13
    lwc1	$f4,_lit_40000000
    lwc1	$f2,_lit_3f800000
    madd.s	$f13,$f2,$f13,$f4
    lwc1	$f12,3568($a0)
    lwc1	$f11,30808($a0)
    mul.s	$f12,$f12,$f13
    mul.s	$f11,$f11,$f12
    swc1	$f11,0($a1)
    # Line 100
    lw	$a3,4($a2)
    mtc1	$a3,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f10,$f2,$f10,$f4
    lwc1	$f9,3568($a0)
    lwc1	$f8,30812($a0)
    mul.s	$f9,$f9,$f10
    mul.s	$f8,$f8,$f9
    swc1	$f8,4($a1)
    # Line 101
    lw	$v1,8($a2)
    mtc1	$v1,$f7
    cvt.s.w	$f7,$f7
    madd.s	$f7,$f2,$f7,$f4
    lwc1	$f6,3568($a0)
    lwc1	$f5,30816($a0)
    mul.s	$f6,$f6,$f7
    mul.s	$f5,$f5,$f6
    swc1	$f5,8($a1)
    # Line 102
    lw	$v0,12($a2)
    mtc1	$v0,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f2,$f2,$f3,$f4
    lwc1	$f1,3568($a0)
    lwc1	$f0,30848($a0)
    mul.s	$f1,$f1,$f2
    mul.s	$f0,$f0,$f1
    # Line 103
    jr	$ra
    # Line 102
    swc1	$f0,12($a1)
.end __glScaleColori

# Function: __glClampAndScaleColori
# Declared: Line 108 (Source lines: 109-127)
# Address: 0x0da4a130 - 0x0da4a27c (Size: 332 bytes, Frame: 0)
.globl __glClampAndScaleColori
.ent __glClampAndScaleColori
__glClampAndScaleColori:
    # Line 112
    lw	$v1,0($a2)
    mtc1	$v1,$f9
    # Line 109
    lui	$v0,0xb
    addiu	$v0,$v0,-7072
    addu	$at,$t9,$v0
    # Line 112
    cvt.s.w	$f9,$f9
    lwc1	$f6,_lit_40000000
    lwc1	$f5,_lit_3f800000
    madd.s	$f9,$f5,$f9,$f6
    lwc1	$f8,3568($a0)
    lwc1	$f7,30808($a0)
    mul.s	$f8,$f8,$f9
    mtc1	$zero,$f4
    mul.s	$f7,$f7,$f8
    c.lt.s	$f7,$f4
    # Line 113
    mtc1	$zero,$f10
    # Line 112
    bc1f	.L0da4a180
    swc1	$f7,0($a1)
    # Line 113
    mov.s	$f7,$f4
    swc1	$f10,0($a1)
.L0da4a180:
    lwc1	$f8,30808($a0)
    c.lt.s $f8,$f7
    bc1f .L0da4a194
    # Line 117
    mtc1	$zero,$f10
    # Line 114
    swc1	$f8,0($a1)
.L0da4a194:
    # Line 116
    lw	$a3,4($a2)
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f5,$f9,$f6
    lwc1	$f8,3568($a0)
    lwc1	$f7,30812($a0)
    mul.s	$f8,$f8,$f9
    mul.s	$f7,$f7,$f8
    c.lt.s $f7,$f4
    bc1f .L0da4a1c8
    swc1	$f7,4($a1)
    # Line 117
    mov.s	$f7,$f4
    swc1	$f10,4($a1)
.L0da4a1c8:
    lwc1	$f8,30812($a0)
    c.lt.s $f8,$f7
    bc1f .L0da4a1dc
    nop
    # Line 118
    swc1	$f8,4($a1)
.L0da4a1dc:
    # Line 120
    lw	$a4,8($a2)
    mtc1	$a4,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f5,$f9,$f6
    lwc1	$f8,3568($a0)
    lwc1	$f7,30816($a0)
    mul.s	$f8,$f8,$f9
    mul.s	$f7,$f7,$f8
    c.lt.s $f7,$f4
    bc1f .L0da4a214
    swc1	$f7,8($a1)
    # Line 121
    mtc1	$zero,$f10
    mov.s	$f7,$f4
    swc1	$f10,8($a1)
.L0da4a214:
    lwc1	$f8,30816($a0)
    c.lt.s $f8,$f7
    bc1f .L0da4a228
    # Line 125
    mtc1	$zero,$f10
    # Line 122
    swc1	$f8,8($a1)
.L0da4a228:
    # Line 124
    lw	$a5,12($a2)
    mtc1	$a5,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f5,$f9,$f6
    lwc1	$f8,3568($a0)
    lwc1	$f7,30848($a0)
    mul.s	$f8,$f8,$f9
    mul.s	$f7,$f7,$f8
    c.lt.s $f7,$f4
    bc1f .L0da4a25c
    swc1	$f7,12($a1)
    # Line 125
    mov.s	$f7,$f4
    swc1	$f10,12($a1)
.L0da4a25c:
    lwc1	$f4,30848($a0)
    c.lt.s $f4,$f7
    bc1f .L0da4a274
    nop
    # Line 127
    jr	$ra
    # Line 126
    swc1	$f4,12($a1)
.L0da4a274:
    # Line 127
    jr	$ra
    nop
.end __glClampAndScaleColori

# Function: __glClampColori
# Declared: Line 132 (Source lines: 133-158)
# Address: 0x0da4a280 - 0x0da4a39c (Size: 284 bytes, Frame: 0)
.globl __glClampColori
.ent __glClampColori
__glClampColori:
    # Line 138
    lw	$a4,0($a2)
    mtc1	$a4,$f9
    # Line 140
    lw	$v1,8($a2)
    # Line 133
    lui	$a3,0xb
    addiu	$a3,$a3,-7408
    # Line 141
    lw	$a4,12($a2)
    # Line 139
    lw	$v0,4($a2)
    # Line 140
    mtc1	$v1,$f8
    # Line 133
    addu	$at,$t9,$a3
    # Line 138
    cvt.s.w	$f9,$f9
    lwc1	$f12,_lit_40000000
    # Line 141
    mtc1	$a4,$f6
    # Line 139
    mtc1	$v0,$f11
    # Line 138
    lwc1	$f10,_lit_3f800000
    # Line 140
    cvt.s.w	$f8,$f8
    # Line 141
    cvt.s.w	$f6,$f6
    # Line 138
    madd.s	$f9,$f10,$f9,$f12
    # Line 139
    cvt.s.w	$f11,$f11
    # Line 138
    lwc1	$f7,3568($a0)
    # Line 140
    madd.s	$f8,$f10,$f8,$f12
    # Line 141
    madd.s	$f6,$f10,$f6,$f12
    mtc1	$zero,$f5
    # Line 139
    madd.s	$f10,$f10,$f11,$f12
    # Line 138
    mul.s	$f9,$f7,$f9
    # Line 141
    c.lt.s	$f9,$f5
    # Line 140
    mul.s	$f8,$f7,$f8
    # Line 141
    mul.s	$f6,$f7,$f6
    # Line 135
    lwc1	$f4,3544($a0)
    # Line 141
    bc1f	.L0da4a300
    # Line 139
    mul.s	$f7,$f7,$f10
    # Line 143
    b	.L0da4a318
    swc1	$f5,0($a1)
.L0da4a300:
    c.lt.s $f4,$f9
    bc1f .L0da4a314
    nop
    # Line 144
    b	.L0da4a318
    swc1	$f4,0($a1)
.L0da4a314:
    # Line 145
    swc1	$f9,0($a1)
.L0da4a318:
    c.lt.s $f7,$f5
    # Line 153
    c.lt.s $f6,$f5
    # Line 145
    bc1f .L0da4a330
    # Line 149
    c.lt.s $f8,$f5
    # Line 147
    b	.L0da4a348
    swc1	$f5,4($a1)
.L0da4a330:
    c.lt.s $f4,$f7
    bc1f .L0da4a344
    nop
    # Line 148
    b	.L0da4a348
    swc1	$f4,4($a1)
.L0da4a344:
    # Line 149
    swc1	$f7,4($a1)
.L0da4a348:
    bc1f .L0da4a358
    nop
    # Line 151
    b	.L0da4a370
    swc1	$f5,8($a1)
.L0da4a358:
    c.lt.s $f4,$f8
    bc1f .L0da4a36c
    nop
    # Line 152
    b	.L0da4a370
    swc1	$f4,8($a1)
.L0da4a36c:
    # Line 153
    swc1	$f8,8($a1)
.L0da4a370:
    bc1t .L0da4a394
    nop
    # Line 155
    c.lt.s $f4,$f6
    bc1f .L0da4a38c
    nop
    # Line 158
    jr	$ra
    # Line 156
    swc1	$f4,12($a1)
.L0da4a38c:
    # Line 158
    jr	$ra
    # Line 157
    swc1	$f6,12($a1)
.L0da4a394:
    # Line 158
    jr	$ra
    # Line 155
    swc1	$f5,12($a1)
.end __glClampColori

# Function: __glUnScaleColorf
# Declared: Line 163 (Source lines: 165-169)
# Address: 0x0da4a3a0 - 0x0da4a3e4 (Size: 68 bytes, Frame: 0)
.globl __glUnScaleColorf
.ent __glUnScaleColorf
__glUnScaleColorf:
    # Line 165
    lwc1	$f7,30856($a0)
    lwc1	$f6,0($a2)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 166
    lwc1	$f5,30860($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 167
    lwc1	$f3,30864($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 168
    lwc1	$f1,30868($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 169
    jr	$ra
    # Line 168
    swc1	$f0,12($a1)
.end __glUnScaleColorf

# Function: __glUnScaleColori
# Declared: Line 174 (Source lines: 175-180)
# Address: 0x0da4a3f0 - 0x0da4a4ec (Size: 252 bytes, Frame: 48)
.globl __glUnScaleColori
.ent __glUnScaleColori
__glUnScaleColori:
    # Line 175
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    # Line 176
    lwc1	$f15,30856($a0)
    lwc1	$f14,0($a2)
    lwc1	$f12,3540($a0)
    # Line 175
    lui	$at,0xb
    # Line 176
    lwc1	$f13,3564($a0)
    # Line 175
    addiu	$at,$at,-7776
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 176
    mul.s	$f14,$f14,$f15
    # lw $t9, -16948($gp) # &floorf
    # Line 175
    sd	$s2,0($sp)
    # Line 176
    mul.s	$f13,$f13,$f14
    # Line 175
    move	$s2,$a2
    move	$s0,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$ra,8($sp)
    # Line 176
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    swc1	$f16,0($s0)
    # Line 177
    lwc1	$f15,30860($s1)
    lwc1	$f14,4($s2)
    lwc1	$f13,3564($s1)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f14,$f14,$f15
    lwc1	$f12,3540($s1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    swc1	$f16,4($s0)
    # Line 178
    lwc1	$f15,30864($s1)
    lwc1	$f14,8($s2)
    lwc1	$f13,3564($s1)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f14,$f14,$f15
    lwc1	$f12,3540($s1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    swc1	$f16,8($s0)
    # Line 179
    lwc1	$f15,30868($s1)
    lwc1	$f14,12($s2)
    lwc1	$f13,3564($s1)
    # lw $t9, -16948($gp) # &floorf
    mul.s	$f14,$f14,$f15
    lwc1	$f12,3540($s1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$s2,0($sp)
    ld	$s1,16($sp)
    ld	$ra,8($sp)
    # Line 180
    ld	$gp,24($sp)
    # Line 179
    trunc.w.s	$f17,$f0
    swc1	$f17,12($s0)
    # Line 180
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glUnScaleColori

# Function: __glClampRGBColor
# Declared: Line 185 (Source lines: 191-231)
# Address: 0x0da4a4f0 - 0x0da4a5b8 (Size: 200 bytes, Frame: 0)
.globl __glClampRGBColor
.ent __glClampRGBColor
__glClampRGBColor:
    # Line 191
    mtc1	$zero,$f4
    lwc1	$f5,0($a2)
    c.le.s	$f5,$f4
    bc1f	.L0da4a50c
    lwc1	$f6,30808($a0)
    # Line 193
    b	.L0da4a524
    swc1	$f4,0($a1)
.L0da4a50c:
    c.le.s $f6,$f5
    bc1f .L0da4a520
    nop
    # Line 196
    b	.L0da4a524
    swc1	$f6,0($a1)
.L0da4a520:
    # Line 198
    swc1	$f5,0($a1)
.L0da4a524:
    # Line 201
    lwc1	$f5,4($a2)
    c.le.s $f5,$f4
    bc1f .L0da4a53c
    lwc1	$f6,30812($a0)
    # Line 203
    b	.L0da4a554
    swc1	$f4,4($a1)
.L0da4a53c:
    c.le.s $f6,$f5
    bc1f .L0da4a550
    nop
    # Line 206
    b	.L0da4a554
    swc1	$f6,4($a1)
.L0da4a550:
    # Line 208
    swc1	$f5,4($a1)
.L0da4a554:
    # Line 211
    lwc1	$f5,8($a2)
    c.le.s $f5,$f4
    bc1f .L0da4a56c
    lwc1	$f6,30816($a0)
    # Line 213
    b	.L0da4a584
    swc1	$f4,8($a1)
.L0da4a56c:
    c.le.s $f6,$f5
    bc1f .L0da4a580
    nop
    # Line 216
    b	.L0da4a584
    swc1	$f6,8($a1)
.L0da4a580:
    # Line 218
    swc1	$f5,8($a1)
.L0da4a584:
    # Line 221
    lwc1	$f6,12($a2)
    c.le.s $f6,$f4
    bc1t .L0da4a5b0
    lwc1	$f5,30848($a0)
    # Line 223
    c.le.s $f5,$f6
    bc1f .L0da4a5a8
    nop
    # Line 231
    jr	$ra
    # Line 226
    swc1	$f5,12($a1)
.L0da4a5a8:
    # Line 231
    jr	$ra
    # Line 228
    swc1	$f6,12($a1)
.L0da4a5b0:
    # Line 231
    jr	$ra
    # Line 223
    swc1	$f4,12($a1)
.end __glClampRGBColor

# Function: vvec
# Declared: Line 238 (Source lines: 242-308)
# Address: 0x0da4a5c0 - 0x0da4a690 (Size: 208 bytes, Frame: 0)
.ent vvec
vvec:
    # Line 242
    lw	$a5,12($a1)
    sll	$a5,$a5,0x1
    lw	$a4,12($a2)
    beqz	$a5,.L0da4a62c
    sll	$a4,$a4,0x1
    lwc1	$f5,4($a2)
    lwc1	$f6,8($a2)
    beqz	$a4,.L0da4a658
    lwc1	$f4,0($a2)
    # Line 259
    lwc1	$f2,12($a1)
    # Line 263
    mul.s	$f0,$f4,$f2
    # Line 264
    mul.s	$f1,$f5,$f2
    # Line 265
    mul.s	$f2,$f6,$f2
    swc1	$f2,8($a0)
    # Line 264
    swc1	$f1,4($a0)
    # Line 263
    swc1	$f0,0($a0)
    # Line 269
    lwc1	$f6,8($a1)
    # Line 266
    lwc1	$f4,12($a2)
    # Line 268
    lwc1	$f5,4($a1)
    # Line 270
    lwc1	$f3,0($a1)
    # Line 272
    nmsub.s	$f2,$f2,$f4,$f6
    # Line 271
    nmsub.s	$f1,$f1,$f4,$f5
    # Line 270
    nmsub.s	$f0,$f0,$f3,$f4
    # Line 272
    swc1	$f2,8($a0)
    # Line 271
    swc1	$f1,4($a0)
    # Line 308
    jr	$ra
    # Line 270
    swc1	$f0,0($a0)
.L0da4a62c:
    # Line 282
    lwc1	$f4,0($a1)
    lwc1	$f6,8($a1)
    beqz	$a4,.L0da4a668
    lwc1	$f5,4($a1)
    # Line 293
    neg.s	$f6,$f6
    # Line 292
    neg.s	$f5,$f5
    # Line 293
    swc1	$f6,8($a0)
    # Line 291
    neg.s	$f3,$f4
    # Line 292
    swc1	$f5,4($a0)
    # Line 308
    jr	$ra
    # Line 291
    swc1	$f3,0($a0)
.L0da4a658:
    # Line 282
    swc1	$f6,8($a0)
    # Line 281
    swc1	$f5,4($a0)
    # Line 308
    jr	$ra
    # Line 280
    swc1	$f4,0($a0)
.L0da4a668:
    # Line 303
    lwc1	$f9,8($a2)
    # Line 302
    lwc1	$f8,4($a2)
    # Line 304
    lwc1	$f7,0($a2)
    # Line 303
    sub.s	$f9,$f9,$f6
    # Line 302
    sub.s	$f8,$f8,$f5
    # Line 306
    swc1	$f9,8($a0)
    # Line 304
    sub.s	$f7,$f7,$f4
    # Line 305
    swc1	$f8,4($a0)
    # Line 308
    jr	$ra
    # Line 304
    swc1	$f7,0($a0)
.end vvec

# Function: __glCalcRGBColor
# Declared: Line 311 (Source lines: 312-509)
# Address: 0x0da4a690 - 0x0da4ac4c (Size: 1468 bytes, Frame: 240)
.globl __glCalcRGBColor
.ent __glCalcRGBColor
__glCalcRGBColor:
    # Line 312
    lwc1	$f4,40($a2)
    lwc1	$f5,36($a2)
    lwc1	$f6,32($a2)
    # Line 341
    lwc1	$f1,108($a2)
    # Line 312
    addiu	$sp,$sp,-240
    sdc1	$f30,160($sp)
    sdc1	$f28,152($sp)
    sd	$ra,176($sp)
    sd	$s6,184($sp)
    sd	$s2,200($sp)
    sd	$s5,112($sp)
    sd	$s3,192($sp)
    sd	$s1,136($sp)
    lui	$at,0xb
    move	$s1,$a0
    sd	$s7,168($sp)
    addiu	$at,$at,-8448
    sd	$gp,120($sp)
    beqz	$a1,.L0da4ac14
    addu	$gp,$t9,$at
    # Line 330
    addiu	$s5,$a0,28196
    # Line 329
    addiu	$v0,$a2,160
    sd	$v0,128($sp)
    sdc1	$f24,96($sp)
    sdc1	$f22,88($sp)
    sdc1	$f26,80($sp)
    sdc1	$f20,144($sp)
    sd	$s8,224($sp)
    # Line 333
    neg.s	$f30,$f4
    sd	$s0,216($sp)
    sd	$s4,208($sp)
    # Line 332
    neg.s	$f0,$f5
    # Line 331
    neg.s	$f28,$f6
    # Line 332
    sdc1	$f0,104($sp)
.L0da4a718:
    # Line 342
    lbu	$s4,1412($s1)
    # Line 341
    mtc1	$zero,$f20
    # Line 343
    lw	$s0,28236($s1)
    # Line 340
    lwc1	$f26,8($s5)
    # Line 343
    sll	$s7,$a1,0x2
    addiu	$s3,$a2,96
    # Line 339
    lwc1	$f22,4($s5)
    # Line 341
    c.eq.s	$f1,$f20
    # Line 338
    lwc1	$f24,0($s5)
    # Line 341
    li	$s8,1
    # Line 343
    beqz	$s0,.L0da4aae4
    # Line 341
    movf	$s8,$zero,$fcc0
    # Line 343
    subu	$s7,$s7,$a1
    la	$s2,sub_0da50000
    la	$s6,sub_0daf0000
    sll	$s7,$s7,0x4
    addiu	$s2,$s2,-23104
    b	.L0da4a79c
    addiu	$s6,$s6,-11648
.L0da4a764:
    # Line 435
    madd.s	$f7,$f7,$f10,$f8
    # Line 434
    madd.s	$f6,$f6,$f3,$f8
    # Line 433
    madd.s	$f5,$f5,$f2,$f8
.L0da4a770:
    # Line 438
    lwc1	$f12,20($a0)
    # Line 437
    lwc1	$f11,16($a0)
    # Line 439
    madd.s	$f7,$f7,$f13,$f9
    # Line 438
    madd.s	$f6,$f6,$f12,$f9
    # Line 437
    madd.s	$f5,$f5,$f11,$f9
.L0da4a784:
    # Line 444
    madd.s	$f26,$f26,$f7,$f4
    # Line 443
    madd.s	$f22,$f22,$f6,$f4
    # Line 442
    madd.s	$f24,$f24,$f5,$f4
.L0da4a790:
    # Line 474
    lw	$s0,200($s0)
    beqz	$s0,.L0da4aae4
    nop
.L0da4a79c:
    # Line 346
    lbu	$t8,220($s0)
    bnez	$t8,.L0da4a7b0
    # Line 352
    move	$t9,$s2
    # Line 346
    beqz	$s8,.L0da4aa24
    # Line 352
    move	$t9,$s2
.L0da4a7b0:
    addiu	$a2,$s0,116
    move	$a1,$s3
    bal __glClampRGBColor
    addiu	$a0,$sp,0
    # Line 353
    lw	$t9,11960($s1)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,16
    beqz	$s4,.L0da4a82c
    # Line 355
    move	$t9,$s2
    addiu	$a0,$sp,32
    move	$a1,$s3
    bal __glClampRGBColor
    move	$a2,$s6
    # Line 356
    lw	$t9,11960($s1)
    addiu	$a0,$sp,32
    jalr	$t9
    move	$a1,$a0
    # Line 357
    lwc1	$f15,32($sp)
    # Line 358
    lwc1	$f17,36($sp)
    # Line 359
    lwc1	$f19,40($sp)
    lwc1	$f18,24($sp)
    # Line 358
    lwc1	$f16,20($sp)
    # Line 357
    lwc1	$f14,16($sp)
    # Line 359
    add.s	$f18,$f18,$f19
    # Line 358
    add.s	$f16,$f16,$f17
    # Line 359
    swc1	$f18,56($sp)
    # Line 357
    add.s	$f14,$f14,$f15
    # Line 358
    swc1	$f16,52($sp)
    # Line 359
    b	.L0da4a84c
    # Line 357
    swc1	$f14,48($sp)
.L0da4a82c:
    # Line 362
    lwc1	$f25,20($sp)
    # Line 363
    lwc1	$f23,24($sp)
    # Line 361
    lwc1	$f27,16($sp)
    # Line 362
    swc1	$f25,52($sp)
    # Line 361
    swc1	$f27,48($sp)
    # Line 363
    lwc1	$f21,3544($s1)
    add.s	$f21,$f21,$f23
    swc1	$f21,56($sp)
.L0da4a84c:
    # Line 365
    lw	$t9,11960($s1)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,64
    lwc1	$f29,128($s0)
    c.eq.s $f29,$f20
    # Line 387
    lwc1	$f11,4($sp)
    # Line 365
    li	$a0,1
    # Line 387
    lwc1	$f10,8($sp)
    # Line 365
    movt	$a0,$zero,$fcc1
    # Line 395
    lbu	$t9,156($s0)
    # Line 365
    beqz	$a0,.L0da4abe8
    # Line 387
    lwc1	$f9,0($sp)
    # Line 372
    lwc1	$f6,104($s0)
    # Line 374
    c.eq.s $f6,$f20
    # Line 387
    lwc1	$f7,100($s0)
    # Line 374
    bc1f .L0da4a8a8
    # Line 373
    lwc1	$f4,108($s0)
    # Line 374
    c.eq.s $f4,$f20
    bc1f .L0da4a8a8
    nop
    # Line 376
    b	.L0da4a8cc
    lwc1	$f5,152($s0)
.L0da4a8a8:
    # Line 387
    mul.s	$f9,$f9,$f9
    madd.s	$f9,$f9,$f11,$f11
    madd.s	$f9,$f9,$f10,$f10
    sqrt.s	$f9,$f9
    mul.s	$f8,$f9,$f4
    madd.s	$f7,$f7,$f6,$f9
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f5,3544($s1)
    div.s	$f5,$f5,$f7
.L0da4a8cc:
    # Line 401
    lwc1	$f8,20($sp)
    # Line 395
    beqz	$t9,.L0da4a964
    # Line 394
    mov.s	$f4,$f5
    # Line 395
    beqz	$a0,.L0da4a964
    # Line 401
    lwc1	$f10,16($sp)
    lwc1	$f6,136($s0)
    lwc1	$f9,132($s0)
    lwc1	$f7,140($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,24($sp)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 403
    lwc1	$f7,208($s0)
    # Line 401
    neg.s	$f6,$f6
    # Line 403
    c.le.s $f7,$f6
    bc1f .L0da4a960
    lwc1	$f9,148($s0)
    c.le.s $f9,$f6
    bc1f .L0da4a960
    nop
    # Line 404
    lwc1	$f11,212($s0)
    sub.s	$f12,$f6,$f7
    lwc1	$f10,3540($s1)
    madd.s	$f10,$f10,$f11,$f12
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    slti	$ra,$a0,256
    # Line 407
    lw	$at,204($s0)
    # Line 404
    beqz	$ra,.L0da4a964
    # Line 407
    sll	$v0,$a0,0x2
    addu	$at,$at,$v0
    lwc1	$f4,0($at)
    b	.L0da4a964
    mul.s	$f4,$f4,$f5
    nop
    nop
    nop
.L0da4a960:
    # Line 410
    mtc1	$zero,$f4
.L0da4a964:
    # Line 421
    lwc1	$f9,16($sp)
    # Line 403
    c.eq.s $f4,$f20
    # Line 421
    lwc1	$f11,20($sp)
    lwc1	$f10,24($sp)
    # Line 419
    addu	$a0,$s7,$s0
    # Line 403
    bc1t .L0da4a790
    # Line 421
    ldc1	$f12,104($sp)
    mul.s	$f9,$f9,$f28
    madd.s	$f9,$f9,$f11,$f12
    madd.s	$f9,$f9,$f10,$f30
    # Line 426
    lwc1	$f8,68($sp)
    # Line 421
    lwc1	$f7,8($a0)
    c.lt.s $f20,$f9
    # Line 420
    lwc1	$f6,4($a0)
    # Line 419
    lwc1	$f5,0($a0)
    # Line 421
    bc1f .L0da4a784
    # Line 426
    ldc1	$f10,104($sp)
    lwc1	$f11,64($sp)
    mul.s	$f8,$f8,$f10
    lwc1	$f10,72($sp)
    madd.s	$f8,$f8,$f28,$f11
    lwc1	$f11,16($s5)
    madd.s	$f8,$f8,$f30,$f10
    lwc1	$f10,24($s5)
    c.eq.s	$f11,$f20
    # Line 429
    lwc1	$f12,28($s5)
    # Line 431
    lw	$a2,20($s5)
    # Line 439
    lwc1	$f13,24($a0)
    # Line 426
    bc1f	.L0da4a9e0
    sub.s	$f8,$f8,$f10
    # Line 427
    lwc1	$f8,3544($s1)
.L0da4a9e0:
    c.le.s $f20,$f8
    bc1f .L0da4a770
    nop
    # Line 429
    lwc1	$f11,3540($s1)
    madd.s	$f11,$f11,$f12,$f8
    trunc.w.s	$f11,$f11
    mfc1	$a1,$f11
    # Line 435
    lwc1	$f10,40($a0)
    # Line 434
    lwc1	$f3,36($a0)
    # Line 429
    slti	$v1,$a1,256
    # Line 433
    lwc1	$f2,32($a0)
    # Line 431
    sll	$a3,$a1,0x2
    # Line 432
    lwc1	$f8,3544($s1)
    # Line 429
    beqz	$v1,.L0da4a764
    # Line 431
    addu	$a2,$a2,$a3
    b	.L0da4a764
    lwc1	$f8,0($a2)
.L0da4aa24:
    # Line 449
    addu	$a0,$s7,$s0
    # Line 454
    ldc1	$f6,104($sp)
    lwc1	$f5,180($s0)
    lwc1	$f7,176($s0)
    mul.s	$f5,$f5,$f6
    lwc1	$f6,184($s0)
    madd.s	$f5,$f5,$f7,$f28
    madd.s	$f5,$f5,$f6,$f30
    # Line 451
    lwc1	$f15,8($a0)
    # Line 450
    lwc1	$f14,4($a0)
    # Line 449
    lwc1	$f13,0($a0)
    # Line 454
    c.lt.s $f20,$f5
    # Line 458
    lwc1	$f4,164($s0)
    # Line 451
    add.s	$f26,$f15,$f26
    # Line 458
    lwc1	$f7,160($s0)
    # Line 450
    add.s	$f22,$f14,$f22
    # Line 449
    add.s	$f24,$f13,$f24
    # Line 454
    bc1f .L0da4a790
    # Line 458
    ldc1	$f6,104($sp)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,168($s0)
    madd.s	$f4,$f4,$f7,$f28
    lwc1	$f7,16($s5)
    madd.s	$f4,$f4,$f6,$f30
    lwc1	$f6,24($s5)
    c.eq.s $f7,$f20
    # Line 461
    lwc1	$f8,28($s5)
    # Line 463
    lw	$a5,20($s5)
    # Line 458
    bc1f .L0da4aaa0
    sub.s	$f4,$f4,$f6
    # Line 459
    lwc1	$f4,3544($s1)
.L0da4aaa0:
    c.le.s $f20,$f4
    # Line 470
    lwc1	$f16,20($a0)
    # Line 469
    lwc1	$f15,16($a0)
    # Line 459
    bc1f .L0da4ac04
    # Line 471
    lwc1	$f17,24($a0)
    # Line 461
    lwc1	$f7,3540($s1)
    madd.s	$f7,$f7,$f8,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a1,$f7
    slti	$a4,$a1,256
    # Line 465
    lwc1	$f12,32($a0)
    # Line 464
    lwc1	$f4,3544($s1)
    # Line 461
    beqz	$a4,.L0da4abf0
    # Line 463
    sll	$a6,$a1,0x2
    addu	$a5,$a5,$a6
    b	.L0da4abf0
    lwc1	$f4,0($a5)
.L0da4aae4:
    ld	$s8,224($sp)
    ld	$s0,216($sp)
    ld	$s4,208($sp)
    ldc1	$f30,160($sp)
    ldc1	$f28,152($sp)
    # Line 482
    lwc1	$f6,30816($s1)
    # Line 481
    lwc1	$f4,30812($s1)
    ld	$s3,192($sp)
    # Line 482
    c.le.s $f24,$f20
    ld	$s2,200($sp)
    # Line 486
    c.le.s $f22,$f20
    ld	$s7,168($sp)
    # Line 493
    c.le.s $f26,$f20
    mtc1	$zero,$f10
    # Line 482
    bc1f .L0da4ab2c
    # Line 480
    lwc1	$f5,30808($s1)
    # Line 482
    b	.L0da4ab34
    mtc1	$zero,$f24
.L0da4ab2c:
    # Line 486
    c.le.s $f5,$f24
    movt.s	$f24,$f5,$fcc6
.L0da4ab34:
    bc1f .L0da4ab44
    ld	$s6,184($sp)
    b	.L0da4ab4c
    mtc1	$zero,$f22
.L0da4ab44:
    # Line 493
    c.le.s	$f4,$f22
    movt.s	$f22,$f4,$fcc0
.L0da4ab4c:
    ldc1	$f20,144($sp)
    bc1f .L0da4ab94
    # Line 509
    ld	$s1,136($sp)
    ld	$s1,136($sp)
    ld	$gp,120($sp)
    # Line 504
    ld	$a7,128($sp)
    ldc1	$f26,80($sp)
    # Line 505
    swc1	$f22,4($a7)
    # Line 509
    ldc1	$f22,88($sp)
    # Line 504
    swc1	$f24,0($a7)
    # Line 509
    ldc1	$f24,96($sp)
    ld	$ra,176($sp)
    # Line 506
    swc1	$f10,8($a7)
    # Line 507
    lwc1	$f9,36($s5)
    # Line 509
    ld	$s5,112($sp)
    addiu	$sp,$sp,240
    jr	$ra
    # Line 507
    swc1	$f9,12($a7)
.L0da4ab94:
    # Line 509
    ld	$gp,120($sp)
    ld	$s2,200($sp)
    ld	$s3,192($sp)
    ld	$s6,184($sp)
    ld	$s7,168($sp)
    # Line 504
    ld	$t0,128($sp)
    ldc1	$f20,144($sp)
    # Line 505
    swc1	$f22,4($t0)
    # Line 509
    ldc1	$f22,88($sp)
    # Line 504
    swc1	$f24,0($t0)
    # Line 500
    c.le.s $f6,$f26
    # Line 509
    ldc1	$f24,96($sp)
    ld	$ra,176($sp)
    # Line 500
    movt.s	$f26,$f6,$fcc2
    # Line 506
    swc1	$f26,8($t0)
    # Line 507
    lwc1	$f11,36($s5)
    # Line 509
    ld	$s5,112($sp)
    ldc1	$f26,80($sp)
    addiu	$sp,$sp,240
    jr	$ra
    # Line 507
    swc1	$f11,12($t0)
.L0da4abe8:
    b	.L0da4a8cc
    # Line 390
    lwc1	$f5,3544($s1)
.L0da4abf0:
    # Line 466
    lwc1	$f13,36($a0)
    # Line 467
    lwc1	$f14,40($a0)
    # Line 465
    madd.s	$f24,$f24,$f12,$f4
    # Line 466
    madd.s	$f22,$f22,$f13,$f4
    # Line 467
    madd.s	$f26,$f26,$f14,$f4
.L0da4ac04:
    # Line 471
    madd.s	$f26,$f26,$f17,$f5
    # Line 470
    madd.s	$f22,$f22,$f16,$f5
    b	.L0da4a790
    # Line 469
    madd.s	$f24,$f24,$f15,$f5
.L0da4ac14:
    # Line 323
    addiu	$t1,$a2,144
    sd	$t1,128($sp)
    # Line 326
    sdc1	$f5,104($sp)
    sdc1	$f24,96($sp)
    sdc1	$f22,88($sp)
    sdc1	$f26,80($sp)
    sdc1	$f20,144($sp)
    sd	$s8,224($sp)
    # Line 325
    mov.s	$f28,$f6
    sd	$s0,216($sp)
    # Line 324
    addiu	$s5,$a0,28156
    # Line 327
    mov.s	$f30,$f4
    b	.L0da4a718
    sd	$s4,208($sp)
.end __glCalcRGBColor

# Function: __glFogRGBColor
# Declared: Line 611 (Source lines: 617-625)
# Address: 0x0da4ac50 - 0x0da4aca4 (Size: 84 bytes, Frame: 0)
.globl __glFogRGBColor
.ent __glFogRGBColor
__glFogRGBColor:
    # Line 617
    lwc1	$f2,176($a2)
    # Line 618
    lwc1	$f3,3544($a0)
    # Line 622
    sll	$at,$a1,0x4
    lwc1	$f5,1592($a0)
    addu	$at,$a2,$at
    lwc1	$f6,144($at)
    # Line 618
    sub.s	$f3,$f3,$f2
    # Line 622
    mul.s	$f5,$f5,$f3
    madd.s	$f5,$f5,$f6,$f2
    swc1	$f5,144($at)
    # Line 623
    lwc1	$f4,1596($a0)
    lwc1	$f5,148($at)
    mul.s	$f4,$f4,$f3
    madd.s	$f4,$f4,$f5,$f2
    swc1	$f4,148($at)
    # Line 624
    lwc1	$f0,1600($a0)
    lwc1	$f1,152($at)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 625
    jr	$ra
    # Line 624
    swc1	$f0,152($at)
.end __glFogRGBColor

# Function: __glFogLitRGBColor
# Declared: Line 627 (Source lines: 628-644)
# Address: 0x0da4acb0 - 0x0da4ad50 (Size: 160 bytes, Frame: 48)
.globl __glFogLitRGBColor
.ent __glFogLitRGBColor
__glFogLitRGBColor:
    # Line 628
    addiu	$sp,$sp,-48
    sd	$a2,24($sp)
    lui	$at,0xb
    sd	$gp,16($sp)
    addiu	$at,$at,-10016
    addu	$gp,$t9,$at
    # Line 633
    lw	$t9,12064($a0)
    # Line 628
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    # Line 633
    nop
    # Line 628
    move	$s8,$a0
    # Line 633
    jalr	$t9
    # Line 628
    sd	$a1,32($sp)
    # Line 637
    lwc1	$f3,3544($s8)
    # Line 636
    ld	$v0,24($sp)
    # Line 641
    ld	$v1,32($sp)
    # Line 636
    lwc1	$f2,176($v0)
    # Line 641
    sll	$v1,$v1,0x4
    lwc1	$f5,1592($s8)
    addu	$v0,$v0,$v1
    lwc1	$f6,144($v0)
    # Line 637
    sub.s	$f3,$f3,$f2
    # Line 641
    mul.s	$f5,$f5,$f3
    madd.s	$f5,$f5,$f6,$f2
    swc1	$f5,144($v0)
    # Line 642
    lwc1	$f4,1596($s8)
    lwc1	$f5,148($v0)
    mul.s	$f4,$f4,$f3
    madd.s	$f4,$f4,$f5,$f2
    swc1	$f4,148($v0)
    # Line 643
    lwc1	$f0,1600($s8)
    lwc1	$f1,152($v0)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    ld	$ra,0($sp)
    # Line 644
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 643
    swc1	$f0,152($v0)
.end __glFogLitRGBColor

# Function: __glCalcCIColor
# Declared: Line 646 (Source lines: 647-796)
# Address: 0x0da4ad50 - 0x0da4b1ec (Size: 1180 bytes, Frame: 224)
.globl __glCalcCIColor
.ent __glCalcCIColor
__glCalcCIColor:
    # Line 647
    lwc1	$f4,40($a2)
    lwc1	$f5,36($a2)
    lwc1	$f6,32($a2)
    addiu	$sp,$sp,-224
    sdc1	$f26,136($sp)
    sdc1	$f22,144($sp)
    sdc1	$f24,152($sp)
    sd	$s2,160($sp)
    sd	$s5,200($sp)
    sd	$s6,176($sp)
    sd	$s8,96($sp)
    sdc1	$f30,80($sp)
    sdc1	$f28,88($sp)
    sd	$s1,120($sp)
    lui	$at,0xb
    move	$s1,$a0
    sd	$s3,168($sp)
    addiu	$at,$at,-10176
    sd	$gp,104($sp)
    beqz	$a1,.L0da4b1bc
    addu	$gp,$t9,$at
    # Line 666
    addiu	$s8,$a0,1504
    # Line 665
    addiu	$v0,$a2,160
    sd	$v0,112($sp)
    sdc1	$f20,128($sp)
    # Line 670
    neg.s	$f24,$f4
    sd	$s4,184($sp)
    # Line 669
    neg.s	$f26,$f5
    sd	$s0,192($sp)
    # Line 667
    addiu	$s6,$a0,28196
    # Line 668
    neg.s	$f22,$f6
    sd	$s7,208($sp)
.L0da4add0:
    # Line 678
    addiu	$s3,$a2,96
    # Line 674
    mtc1	$zero,$f20
    # Line 677
    lwc1	$f0,108($a2)
    # Line 676
    lw	$s0,28236($s1)
    # Line 783
    mtc1	$zero,$f28
    # Line 678
    la	$s5,sub_0daf0000
    # Line 783
    mtc1	$zero,$f30
    # Line 678
    la	$s2,sub_0da50000
    # Line 677
    li	$s7,1
    c.eq.s	$f0,$f20
    # Line 678
    lbu	$s4,1412($s1)
    addiu	$s5,$s5,-11648
    beqz	$s0,.L0da4b120
    # Line 677
    movf	$s7,$zero,$fcc0
    # Line 678
    addiu	$s2,$s2,-23104
    mtc1	$zero,$f30
    mtc1	$zero,$f28
    b	.L0da4ae38
    sd	$ra,216($sp)
.L0da4ae1c:
    # Line 758
    mul.s	$f2,$f6,$f4
    madd.s	$f30,$f30,$f1,$f2
.L0da4ae24:
    # Line 760
    mul.s	$f6,$f5,$f4
    madd.s	$f28,$f28,$f3,$f6
.L0da4ae2c:
    # Line 783
    lw	$s0,200($s0)
.L0da4ae30:
    beqz	$s0,.L0da4b120
    ld	$ra,216($sp)
.L0da4ae38:
    # Line 680
    lbu	$t8,220($s0)
    bnez	$t8,.L0da4ae4c
    # Line 686
    move	$t9,$s2
    # Line 680
    beqz	$s7,.L0da4b088
    # Line 686
    move	$t9,$s2
.L0da4ae4c:
    addiu	$a2,$s0,116
    move	$a1,$s3
    bal __glClampRGBColor
    addiu	$a0,$sp,0
    # Line 687
    lw	$t9,11960($s1)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,16
    beqz	$s4,.L0da4aec8
    # Line 689
    move	$t9,$s2
    addiu	$a2,$s5,16
    move	$a1,$s3
    bal __glClampRGBColor
    addiu	$a0,$sp,32
    # Line 690
    lw	$t9,11960($s1)
    addiu	$a0,$sp,32
    jalr	$t9
    move	$a1,$a0
    # Line 691
    lwc1	$f8,32($sp)
    # Line 692
    lwc1	$f10,36($sp)
    # Line 693
    lwc1	$f12,40($sp)
    lwc1	$f11,24($sp)
    # Line 692
    lwc1	$f9,20($sp)
    # Line 691
    lwc1	$f7,16($sp)
    # Line 693
    add.s	$f11,$f11,$f12
    # Line 692
    add.s	$f9,$f9,$f10
    # Line 693
    swc1	$f11,56($sp)
    # Line 691
    add.s	$f7,$f7,$f8
    # Line 692
    swc1	$f9,52($sp)
    # Line 693
    b	.L0da4aee8
    # Line 691
    swc1	$f7,48($sp)
.L0da4aec8:
    # Line 696
    lwc1	$f15,20($sp)
    # Line 697
    lwc1	$f14,24($sp)
    # Line 695
    lwc1	$f16,16($sp)
    # Line 696
    swc1	$f15,52($sp)
    # Line 695
    swc1	$f16,48($sp)
    # Line 697
    lwc1	$f13,3544($s1)
    add.s	$f13,$f13,$f14
    swc1	$f13,56($sp)
.L0da4aee8:
    # Line 699
    lw	$t9,11960($s1)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,64
    lwc1	$f17,128($s0)
    # Line 720
    lwc1	$f11,4($sp)
    # Line 699
    c.eq.s $f17,$f20
    # Line 720
    lwc1	$f10,8($sp)
    # Line 727
    lbu	$t9,156($s0)
    # Line 699
    bc1t .L0da4af3c
    # Line 720
    lwc1	$f9,0($sp)
    # Line 706
    lwc1	$f6,104($s0)
    # Line 708
    c.eq.s $f6,$f20
    # Line 720
    lwc1	$f7,100($s0)
    # Line 708
    bc1f .L0da4b060
    # Line 707
    lwc1	$f4,108($s0)
    # Line 708
    c.eq.s $f4,$f20
    bc1f .L0da4b060
    nop
    # Line 710
    b	.L0da4af40
    lwc1	$f5,152($s0)
.L0da4af3c:
    # Line 723
    lwc1	$f5,3544($s1)
.L0da4af40:
    # Line 734
    lwc1	$f10,16($sp)
    # Line 727
    beqz	$t9,.L0da4afd4
    mov.s	$f4,$f5
    # Line 734
    lwc1	$f8,20($sp)
    lwc1	$f6,136($s0)
    lwc1	$f9,132($s0)
    lwc1	$f7,140($s0)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,24($sp)
    madd.s	$f6,$f6,$f9,$f10
    madd.s	$f6,$f6,$f7,$f8
    # Line 736
    lwc1	$f7,208($s0)
    # Line 734
    neg.s	$f6,$f6
    # Line 736
    c.le.s $f7,$f6
    bc1f .L0da4afd0
    lwc1	$f9,148($s0)
    c.le.s $f9,$f6
    bc1f .L0da4afd0
    nop
    # Line 737
    lwc1	$f11,212($s0)
    sub.s	$f12,$f6,$f7
    lwc1	$f10,3540($s1)
    madd.s	$f10,$f10,$f11,$f12
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    slti	$ra,$a0,256
    # Line 740
    lw	$at,204($s0)
    # Line 737
    beqz	$ra,.L0da4afd4
    # Line 740
    sll	$v0,$a0,0x2
    addu	$at,$at,$v0
    lwc1	$f4,0($at)
    b	.L0da4afd4
    mul.s	$f4,$f4,$f5
    nop
    nop
    nop
.L0da4afd0:
    # Line 743
    mtc1	$zero,$f4
.L0da4afd4:
    lwc1	$f7,20($sp)
    c.eq.s $f4,$f20
    lwc1	$f6,24($sp)
    # Line 752
    lwc1	$f8,64($sp)
    # Line 743
    bc1t .L0da4ae2c
    lwc1	$f5,16($sp)
    mul.s	$f5,$f5,$f22
    madd.s	$f5,$f5,$f7,$f26
    madd.s	$f5,$f5,$f6,$f24
    c.lt.s $f20,$f5
    # Line 752
    lwc1	$f7,72($sp)
    # Line 743
    bc1f .L0da4ae2c
    # Line 752
    lwc1	$f6,68($sp)
    mul.s	$f6,$f6,$f26
    madd.s	$f6,$f6,$f22,$f8
    madd.s	$f6,$f6,$f24,$f7
    lwc1	$f7,24($s6)
    sub.s	$f6,$f6,$f7
    c.le.s	$f20,$f6
    # Line 756
    lw	$a1,20($s6)
    # Line 760
    lwc1	$f3,196($s0)
    # Line 752
    bc1f	.L0da4ae24
    # Line 754
    lwc1	$f8,28($s6)
    lwc1	$f7,3540($s1)
    madd.s	$f7,$f7,$f8,$f6
    trunc.w.s	$f7,$f7
    mfc1	$a0,$f7
    slti	$v1,$a0,256
    # Line 758
    lwc1	$f1,192($s0)
    # Line 757
    lwc1	$f6,3544($s1)
    # Line 754
    beqz	$v1,.L0da4ae1c
    # Line 756
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    b	.L0da4ae1c
    lwc1	$f6,0($a1)
.L0da4b060:
    # Line 720
    mul.s	$f9,$f9,$f9
    madd.s	$f9,$f9,$f11,$f11
    madd.s	$f9,$f9,$f10,$f10
    sqrt.s	$f9,$f9
    mul.s	$f8,$f9,$f4
    madd.s	$f7,$f7,$f6,$f9
    madd.s	$f7,$f7,$f8,$f9
    lwc1	$f5,3544($s1)
    b	.L0da4af40
    div.s	$f5,$f5,$f7
.L0da4b088:
    # Line 767
    lwc1	$f5,180($s0)
    lwc1	$f7,176($s0)
    lwc1	$f6,184($s0)
    mul.s	$f5,$f5,$f26
    madd.s	$f5,$f5,$f7,$f22
    madd.s	$f5,$f5,$f6,$f24
    c.lt.s $f20,$f5
    # Line 771
    lwc1	$f4,164($s0)
    lwc1	$f7,160($s0)
    # Line 767
    bc1f .L0da4ae2c
    # Line 771
    lwc1	$f6,168($s0)
    mul.s	$f4,$f4,$f26
    madd.s	$f4,$f4,$f7,$f22
    lwc1	$f7,16($s6)
    madd.s	$f4,$f4,$f6,$f24
    # Line 780
    lwc1	$f11,196($s0)
    # Line 771
    lwc1	$f6,24($s6)
    c.eq.s $f7,$f20
    # Line 776
    lw	$a4,20($s6)
    # Line 774
    lwc1	$f7,28($s6)
    # Line 780
    madd.s	$f28,$f28,$f11,$f5
    # Line 771
    bc1f .L0da4b0e8
    sub.s	$f4,$f4,$f6
    # Line 772
    lwc1	$f4,3544($s1)
.L0da4b0e8:
    c.le.s $f20,$f4
    bc1f .L0da4b1b4
    nop
    # Line 774
    lwc1	$f6,3540($s1)
    madd.s	$f6,$f6,$f7,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a0,$f6
    slti	$a3,$a0,256
    # Line 777
    lwc1	$f4,3544($s1)
    # Line 774
    beqz	$a3,.L0da4b1ac
    # Line 776
    sll	$a5,$a0,0x2
    addu	$a4,$a4,$a5
    b	.L0da4b1ac
    lwc1	$f4,0($a4)
.L0da4b120:
    # Line 783
    lwc1	$f9,3544($s1)
    ld	$s2,160($sp)
    ld	$s3,168($sp)
    # Line 788
    mov.s	$f10,$f9
    # Line 783
    c.lt.s $f9,$f30
    ld	$s6,176($sp)
    # Line 790
    lwc1	$f11,68($s8)
    movf.s	$f10,$f30,$fcc5
    lwc1	$f12,76($s8)
    ld	$s4,184($sp)
    sub.s	$f9,$f9,$f10
    lwc1	$f8,72($s8)
    ld	$s0,192($sp)
    sub.s	$f12,$f12,$f11
    mul.s	$f9,$f28,$f9
    ld	$s5,200($sp)
    ld	$s7,208($sp)
    madd.s	$f9,$f11,$f9,$f12
    sub.s	$f11,$f8,$f11
    ldc1	$f20,128($sp)
    ldc1	$f26,136($sp)
    madd.s	$f9,$f9,$f10,$f11
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    # Line 796
    ld	$gp,104($sp)
    ld	$s1,120($sp)
    ld	$s8,96($sp)
    # Line 795
    ld	$a6,112($sp)
    # Line 790
    c.lt.s $f8,$f9
    # Line 796
    ldc1	$f30,80($sp)
    ldc1	$f28,88($sp)
    movf.s	$f8,$f9,$fcc4
    addiu	$sp,$sp,224
    jr	$ra
    # Line 795
    swc1	$f8,0($a6)
.L0da4b1ac:
    # Line 778
    lwc1	$f10,192($s0)
    madd.s	$f30,$f30,$f10,$f4
.L0da4b1b4:
    b	.L0da4ae30
    # Line 783
    lw	$s0,200($s0)
.L0da4b1bc:
    # Line 658
    addiu	$a7,$a2,144
    sd	$a7,112($sp)
    sdc1	$f20,128($sp)
    # Line 661
    mov.s	$f22,$f6
    sd	$s4,184($sp)
    # Line 660
    addiu	$s6,$a0,28156
    # Line 662
    mov.s	$f26,$f5
    sd	$s0,192($sp)
    # Line 659
    addiu	$s8,$a0,1424
    # Line 663
    mov.s	$f24,$f4
    b	.L0da4add0
    sd	$s7,208($sp)
.end __glCalcCIColor

# Function: __glFastCalcCIColor
# Declared: Line 801 (Source lines: 802-868)
# Address: 0x0da4b1f0 - 0x0da4b398 (Size: 424 bytes, Frame: 16)
.globl __glFastCalcCIColor
.ent __glFastCalcCIColor
__glFastCalcCIColor:
    # Line 802
    mtc1	$zero,$f8
    lwc1	$f0,108($a2)
    c.eq.s	$f0,$f8
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11360
    sd	$gp,0($sp)
    bc1t	.L0da4b380
    addu	$gp,$t9,$at
    # Line 813
    lwc1	$f9,40($a2)
    lwc1	$f10,36($a2)
    beqz	$a1,.L0da4b364
    lwc1	$f7,32($a2)
    # Line 825
    addiu	$a6,$a2,160
    # Line 830
    neg.s	$f4,$f9
    # Line 829
    neg.s	$f6,$f10
    # Line 826
    addiu	$a5,$a0,1504
    # Line 827
    addiu	$a4,$a0,28196
    # Line 828
    neg.s	$f5,$f7
.L0da4b23c:
    # Line 835
    lw	$a1,28236($a0)
    # Line 862
    lwc1	$f19,68($a5)
    # Line 835
    beqz	$a1,.L0da4b354
    mtc1	$zero,$f9
    mtc1	$zero,$f12
    b	.L0da4b270
    lwc1	$f11,3544($a0)
.L0da4b258:
    # Line 849
    addu	$v0,$v0,$v1
    lwc1	$f10,0($v0)
.L0da4b260:
    # Line 851
    madd.s	$f12,$f12,$f1,$f10
.L0da4b264:
    # Line 855
    lw	$a1,200($a1)
    beqz	$a1,.L0da4b304
    nop
.L0da4b270:
    # Line 840
    lwc1	$f7,180($a1)
    lwc1	$f13,176($a1)
    lwc1	$f10,184($a1)
    mul.s	$f7,$f7,$f6
    madd.s	$f7,$f7,$f13,$f5
    madd.s	$f7,$f7,$f10,$f4
    # Line 844
    lwc1	$f15,160($a1)
    # Line 840
    c.lt.s $f8,$f7
    # Line 844
    lwc1	$f14,168($a1)
    # Line 853
    lwc1	$f2,196($a1)
    # Line 844
    lwc1	$f13,164($a1)
    # Line 840
    bc1f .L0da4b264
    # Line 845
    mov.s	$f10,$f11
    # Line 844
    mul.s	$f13,$f13,$f6
    madd.s	$f13,$f13,$f15,$f5
    madd.s	$f13,$f13,$f14,$f4
    lwc1	$f15,16($a4)
    lwc1	$f14,24($a4)
    c.eq.s $f15,$f8
    sub.s	$f13,$f13,$f14
    movf.s	$f10,$f13,$fcc3
    # Line 845
    c.le.s $f8,$f10
    # Line 849
    lw	$v0,20($a4)
    # Line 853
    madd.s	$f9,$f9,$f2,$f7
    # Line 845
    bc1f .L0da4b264
    # Line 847
    lwc1	$f15,28($a4)
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f10
    trunc.w.s	$f14,$f14
    mfc1	$a2,$f14
    slti	$a3,$a2,256
    # Line 851
    lwc1	$f1,192($a1)
    # Line 850
    mov.s	$f10,$f11
    # Line 847
    bnez	$a3,.L0da4b258
    # Line 849
    sll	$v1,$a2,0x2
    b	.L0da4b260
    nop
.L0da4b304:
    # Line 860
    mov.s	$f18,$f11
    # Line 855
    c.lt.s $f11,$f12
    movf.s	$f18,$f12,$fcc5
    # Line 862
    lwc1	$f21,76($a5)
    sub.s	$f17,$f11,$f18
    lwc1	$f16,72($a5)
    sub.s	$f21,$f21,$f19
    mul.s	$f17,$f9,$f17
    madd.s	$f17,$f19,$f17,$f21
    sub.s	$f19,$f16,$f19
    madd.s	$f17,$f17,$f18,$f19
    c.lt.s $f16,$f17
    # Line 868
    ld	$gp,0($sp)
    movf.s	$f16,$f17,$fcc4
    addiu	$sp,$sp,16
    jr	$ra
    # Line 867
    swc1	$f16,0($a6)
.L0da4b348:
    # Line 868
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da4b354:
    # Line 855
    mtc1	$zero,$f12
    mtc1	$zero,$f9
    b	.L0da4b304
    lwc1	$f11,3544($a0)
.L0da4b364:
    # Line 821
    mov.s	$f5,$f7
    # Line 820
    addiu	$a4,$a0,28156
    # Line 819
    addiu	$a5,$a0,1424
    # Line 822
    mov.s	$f6,$f10
    # Line 818
    addiu	$a6,$a2,144
    # Line 823
    b	.L0da4b23c
    mov.s	$f4,$f9
.L0da4b380:
    # Line 812
    # lw $t9, -26128($gp) # &__glCalcCIColor
    sd	$ra,8($sp)
    bal __glCalcCIColor
    nop
    b	.L0da4b348
    ld	$ra,8($sp)
.end __glFastCalcCIColor

# Function: __glFogCIColor
# Declared: Line 870 (Source lines: 881-886)
# Address: 0x0da4b3a0 - 0x0da4b3f8 (Size: 88 bytes, Frame: 0)
.globl __glFogCIColor
.ent __glFogCIColor
__glFogCIColor:
    # Line 881
    lwc1	$f3,176($a2)
    lwc1	$f2,3544($a0)
    lwc1	$f1,1624($a0)
    sll	$a4,$a1,0x4
    addu	$a4,$a2,$a4
    sub.s	$f2,$f2,$f3
    lwc1	$f0,144($a4)
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,144($a4)
    # Line 882
    lw	$v0,3252($a0)
    li	$at,1
    sllv	$at,$at,$v0
    addiu	$at,$at,-1
    mtc1	$at,$f4
    cvt.s.w	$f4,$f4
    c.lt.s	$f4,$f0
    bc1f	.L0da4b3f0
    nop
    # Line 886
    jr	$ra
    # Line 884
    swc1	$f4,144($a4)
.L0da4b3f0:
    # Line 886
    jr	$ra
    nop
.end __glFogCIColor

# Function: __glFogLitCIColor
# Declared: Line 888 (Source lines: 889-907)
# Address: 0x0da4b400 - 0x0da4b49c (Size: 156 bytes, Frame: 48)
.globl __glFogLitCIColor
.ent __glFogLitCIColor
__glFogLitCIColor:
    # Line 889
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    lui	$at,0xb
    sd	$gp,32($sp)
    addiu	$at,$at,-11888
    addu	$gp,$t9,$at
    # Line 894
    lw	$t9,12064($a0)
    # Line 889
    sd	$a2,24($sp)
    sd	$ra,0($sp)
    # Line 894
    jalr	$t9
    # Line 889
    sd	$a1,16($sp)
    # Line 902
    ld	$a2,16($sp)
    ld	$v1,8($sp)
    ld	$a1,24($sp)
    lwc1	$f2,3544($v1)
    lwc1	$f3,176($a1)
    lwc1	$f1,1624($v1)
    sll	$a2,$a2,0x4
    addu	$a1,$a1,$a2
    sub.s	$f2,$f2,$f3
    lwc1	$f0,144($a1)
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,144($a1)
    # Line 903
    lw	$v1,3252($v1)
    li	$v0,1
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    c.lt.s	$f4,$f0
    # Line 907
    ld	$gp,32($sp)
    # Line 903
    bc1f	.L0da4b490
    ld	$ra,0($sp)
    # Line 905
    swc1	$f4,144($a1)
    # Line 907
    jr	$ra
    addiu	$sp,$sp,48
.L0da4b490:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFogLitCIColor

# Function: ChangeMaterialEmission
# Declared: Line 973 (Source lines: 978-990)
# Address: 0x0da4b4a0 - 0x0da4b514 (Size: 116 bytes, Frame: 0)
.ent ChangeMaterialEmission
ChangeMaterialEmission:
    # Line 978
    lwc1	$f7,30808($a0)
    # Line 979
    lwc1	$f4,30812($a0)
    # Line 980
    lwc1	$f1,30816($a0)
    lwc1	$f0,440($a0)
    # Line 979
    lwc1	$f3,436($a0)
    # Line 978
    lwc1	$f6,432($a0)
    # Line 980
    mul.s	$f0,$f0,$f1
    # Line 979
    mul.s	$f3,$f3,$f4
    # Line 984
    swc1	$f0,56($a1)
    # Line 978
    mul.s	$f6,$f6,$f7
    # Line 983
    swc1	$f3,52($a1)
    # Line 982
    swc1	$f6,48($a1)
    # Line 985
    lwc1	$f10,30848($a0)
    lwc1	$f9,444($a0)
    # Line 987
    lwc1	$f7,0($a1)
    # Line 985
    mul.s	$f9,$f9,$f10
    swc1	$f9,60($a1)
    # Line 987
    lwc1	$f8,1396($a0)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,0($a2)
    # Line 988
    lwc1	$f5,1400($a0)
    lwc1	$f4,4($a1)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,4($a2)
    # Line 989
    lwc1	$f2,1404($a0)
    lwc1	$f1,8($a1)
    madd.s	$f0,$f0,$f1,$f2
    # Line 990
    jr	$ra
    # Line 989
    swc1	$f0,8($a2)
.end ChangeMaterialEmission

# Function: ChangeMaterialSpecular
# Declared: Line 992 (Source lines: 1001-1024)
# Address: 0x0da4b520 - 0x0da4b5a0 (Size: 128 bytes, Frame: 0)
.ent ChangeMaterialSpecular
ChangeMaterialSpecular:
    # Line 1002
    lwc1	$f5,436($a0)
    # Line 1003
    lwc1	$f6,440($a0)
    # Line 1001
    lwc1	$f4,432($a0)
    # Line 1007
    swc1	$f6,40($a1)
    # Line 1006
    swc1	$f5,36($a1)
    # Line 1005
    swc1	$f4,32($a1)
    # Line 1008
    lwc1	$f0,444($a0)
    swc1	$f0,44($a1)
    # Line 1015
    lw	$a4,28236($a0)
    addiu	$a5,$a0,28196
    beqz	$a4,.L0da4b598
    xor	$a5,$a2,$a5
    sltiu	$a5,$a5,1
    sll	$a3,$a5,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x4
.L0da4b560:
    # Line 1017
    lw	$a7,96($a4)
    # Line 1020
    lwc1	$f3,32($a7)
    mul.s	$f3,$f3,$f4
    addu	$a6,$a3,$a4
    swc1	$f3,32($a6)
    # Line 1021
    lwc1	$f2,36($a7)
    mul.s	$f2,$f2,$f5
    swc1	$f2,36($a6)
    # Line 1022
    lwc1	$f1,40($a7)
    mul.s	$f1,$f1,$f6
    swc1	$f1,40($a6)
    # Line 1015
    lw	$a4,200($a4)
    bnez	$a4,.L0da4b560
    nop
.L0da4b598:
    # Line 1024
    jr	$ra
    nop
.end ChangeMaterialSpecular

# Function: ChangeMaterialAmbient
# Declared: Line 1026 (Source lines: 1035-1062)
# Address: 0x0da4b5a0 - 0x0da4b650 (Size: 176 bytes, Frame: 0)
.ent ChangeMaterialAmbient
ChangeMaterialAmbient:
    # Line 1036
    lwc1	$f5,436($a0)
    # Line 1037
    lwc1	$f6,440($a0)
    # Line 1035
    lwc1	$f4,432($a0)
    # Line 1041
    swc1	$f6,8($a1)
    # Line 1040
    swc1	$f5,4($a1)
    # Line 1039
    swc1	$f4,0($a1)
    # Line 1042
    lwc1	$f9,444($a0)
    swc1	$f9,12($a1)
    # Line 1044
    lwc1	$f8,1396($a0)
    lwc1	$f7,48($a1)
    madd.s	$f7,$f7,$f8,$f4
    swc1	$f7,0($a2)
    # Line 1045
    lwc1	$f3,1400($a0)
    lwc1	$f2,52($a1)
    madd.s	$f2,$f2,$f3,$f5
    swc1	$f2,4($a2)
    # Line 1046
    lwc1	$f1,1404($a0)
    lwc1	$f0,56($a1)
    madd.s	$f0,$f0,$f1,$f6
    swc1	$f0,8($a2)
    # Line 1053
    lw	$a4,28236($a0)
    addiu	$a5,$a0,28196
    beqz	$a4,.L0da4b648
    xor	$a5,$a2,$a5
    sltiu	$a5,$a5,1
    sll	$a3,$a5,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x4
.L0da4b610:
    # Line 1055
    lw	$a7,96($a4)
    # Line 1058
    lwc1	$f12,0($a7)
    mul.s	$f12,$f12,$f4
    addu	$a6,$a3,$a4
    swc1	$f12,0($a6)
    # Line 1059
    lwc1	$f11,4($a7)
    mul.s	$f11,$f11,$f5
    swc1	$f11,4($a6)
    # Line 1060
    lwc1	$f10,8($a7)
    mul.s	$f10,$f10,$f6
    swc1	$f10,8($a6)
    # Line 1053
    lw	$a4,200($a4)
    bnez	$a4,.L0da4b610
    nop
.L0da4b648:
    # Line 1062
    jr	$ra
    nop
.end ChangeMaterialAmbient

# Function: ChangeMaterialDiffuse
# Declared: Line 1064 (Source lines: 1073-1104)
# Address: 0x0da4b650 - 0x0da4b700 (Size: 176 bytes, Frame: 0)
.ent ChangeMaterialDiffuse
ChangeMaterialDiffuse:
    # Line 1073
    lwc1	$f5,432($a0)
    # Line 1081
    mtc1	$zero,$f0
    # Line 1076
    lwc1	$f7,444($a0)
    # Line 1074
    lwc1	$f6,436($a0)
    # Line 1075
    lwc1	$f4,440($a0)
    # Line 1081
    swc1	$f7,28($a1)
    c.lt.s	$f7,$f0
    # Line 1080
    swc1	$f4,24($a1)
    # Line 1079
    swc1	$f6,20($a1)
    # Line 1095
    addiu	$a5,$a0,28196
    # Line 1081
    bc1f	.L0da4b688
    # Line 1078
    swc1	$f5,16($a1)
    # Line 1081
    b	.L0da4b694
    mtc1	$zero,$f7
.L0da4b688:
    lwc1	$f1,3544($a0)
    c.lt.s $f1,$f7
    movt.s	$f7,$f1,$fcc1
.L0da4b694:
    # Line 1095
    xor	$a5,$a2,$a5
    # Line 1088
    lwc1	$f2,30848($a0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,36($a2)
    # Line 1095
    lw	$a3,28236($a0)
    sltiu	$a5,$a5,1
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    beqz	$a3,.L0da4b6f8
    sll	$a4,$a4,0x4
    nop
.L0da4b6c0:
    # Line 1097
    lw	$a7,96($a3)
    # Line 1100
    lwc1	$f8,16($a7)
    mul.s	$f8,$f8,$f5
    addu	$a6,$a4,$a3
    swc1	$f8,16($a6)
    # Line 1101
    lwc1	$f7,20($a7)
    mul.s	$f7,$f7,$f6
    swc1	$f7,20($a6)
    # Line 1102
    lwc1	$f3,24($a7)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($a6)
    # Line 1095
    lw	$a3,200($a3)
    bnez	$a3,.L0da4b6c0
    nop
.L0da4b6f8:
    # Line 1104
    jr	$ra
    nop
.end ChangeMaterialDiffuse

# Function: ChangeMaterialAmbientAndDiffuse
# Declared: Line 1106 (Source lines: 1116-1160)
# Address: 0x0da4b700 - 0x0da4b814 (Size: 276 bytes, Frame: 0)
.ent ChangeMaterialAmbientAndDiffuse
ChangeMaterialAmbientAndDiffuse:
    # Line 1117
    lwc1	$f6,436($a0)
    # Line 1119
    lwc1	$f7,444($a0)
    # Line 1116
    lwc1	$f5,432($a0)
    # Line 1118
    lwc1	$f4,440($a0)
    # Line 1121
    swc1	$f5,0($a1)
    # Line 1122
    swc1	$f6,4($a1)
    # Line 1123
    swc1	$f4,8($a1)
    # Line 1124
    swc1	$f7,12($a1)
    # Line 1126
    swc1	$f5,16($a1)
    # Line 1127
    swc1	$f6,20($a1)
    # Line 1128
    swc1	$f4,24($a1)
    # Line 1129
    swc1	$f7,28($a1)
    # Line 1131
    lwc1	$f10,1396($a0)
    lwc1	$f9,48($a1)
    madd.s	$f9,$f9,$f10,$f5
    swc1	$f9,0($a2)
    # Line 1132
    lwc1	$f8,1400($a0)
    lwc1	$f3,52($a1)
    madd.s	$f3,$f3,$f8,$f6
    swc1	$f3,4($a2)
    # Line 1133
    lwc1	$f2,1404($a0)
    lwc1	$f0,56($a1)
    mtc1	$zero,$f1
    madd.s	$f0,$f0,$f2,$f4
    c.lt.s	$f7,$f1
    # Line 1146
    addiu	$a5,$a0,28196
    # Line 1133
    bc1f	.L0da4b778
    swc1	$f0,8($a2)
    b	.L0da4b784
    mtc1	$zero,$f7
.L0da4b778:
    lwc1	$f11,3544($a0)
    c.lt.s $f11,$f7
    movt.s	$f7,$f11,$fcc1
.L0da4b784:
    # Line 1146
    xor	$a5,$a2,$a5
    # Line 1140
    lwc1	$f12,30848($a0)
    mul.s	$f12,$f12,$f7
    swc1	$f12,36($a2)
    # Line 1146
    lw	$a3,28236($a0)
    sltiu	$a5,$a5,1
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    beqz	$a3,.L0da4b80c
    sll	$a4,$a4,0x4
    nop
.L0da4b7b0:
    # Line 1148
    lw	$a7,96($a3)
    # Line 1151
    lwc1	$f18,0($a7)
    mul.s	$f18,$f18,$f5
    addu	$a6,$a4,$a3
    swc1	$f18,0($a6)
    # Line 1152
    lwc1	$f17,4($a7)
    mul.s	$f17,$f17,$f6
    swc1	$f17,4($a6)
    # Line 1153
    lwc1	$f16,8($a7)
    mul.s	$f16,$f16,$f4
    swc1	$f16,8($a6)
    # Line 1156
    lwc1	$f15,16($a7)
    mul.s	$f15,$f15,$f5
    swc1	$f15,16($a6)
    # Line 1157
    lwc1	$f14,20($a7)
    mul.s	$f14,$f14,$f6
    swc1	$f14,20($a6)
    # Line 1158
    lwc1	$f13,24($a7)
    mul.s	$f13,$f13,$f4
    swc1	$f13,24($a6)
    # Line 1146
    lw	$a3,200($a3)
    bnez	$a3,.L0da4b7b0
    nop
.L0da4b80c:
    # Line 1160
    jr	$ra
    nop
.end ChangeMaterialAmbientAndDiffuse

# Function: __glChangeOneMaterialColor
# Declared: Line 1164 (Source lines: 1165-1185)
# Address: 0x0da4b820 - 0x0da4b8b4 (Size: 148 bytes, Frame: 32)
.globl __glChangeOneMaterialColor
.ent __glChangeOneMaterialColor
__glChangeOneMaterialColor:
    # Line 1165
    addiu	$sp,$sp,-32
    # Line 1172
    lw	$at,4120($zero)
    # Line 1165
    sd	$s0,0($sp)
    # Line 1172
    li	$v0,1
    # Line 1165
    lui	$v1,0xb
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-12944
    sd	$gp,8($sp)
    # Line 1172
    beq	$at,$v0,.L0da4b880
    # Line 1165
    addu	$gp,$t9,$v1
.L0da4b84c:
    # Line 1176
    lw	$t9,12072($s0)
.L0da4b850:
    lw	$a2,28244($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,28240($s0)
    lw	$a0,1792($s0)
    andi	$a0,$a0,0x40
    beqz	$a0,.L0da4b8a0
    ld	$ra,16($sp)
.L0da4b870:
    ld	$s0,0($sp)
    # Line 1185
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4b880:
    # Line 1172
    lw	$a1,28144($a0)
    beqz	$a1,.L0da4b84c
    nop
    # Line 1173
    lw	$t9,12076($s0)
    jalr	$t9
    nop
    b	.L0da4b850
    # Line 1176
    lw	$t9,12072($s0)
.L0da4b8a0:
    # Line 1183
    # lw $t9, -17360($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    move	$a0,$s0
    b	.L0da4b870
    ld	$ra,16($sp)
.end __glChangeOneMaterialColor

# Function: __glChangeBothMaterialColors
# Declared: Line 1187 (Source lines: 1188-1208)
# Address: 0x0da4b8c0 - 0x0da4b968 (Size: 168 bytes, Frame: 32)
.globl __glChangeBothMaterialColors
.ent __glChangeBothMaterialColors
__glChangeBothMaterialColors:
    # Line 1188
    addiu	$sp,$sp,-32
    # Line 1194
    lw	$at,4120($zero)
    # Line 1188
    sd	$s0,0($sp)
    # Line 1194
    li	$v0,1
    # Line 1188
    lui	$v1,0xb
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-13104
    sd	$gp,8($sp)
    # Line 1194
    beq	$at,$v0,.L0da4b934
    # Line 1188
    addu	$gp,$t9,$v1
.L0da4b8ec:
    # Line 1198
    lw	$t9,12072($s0)
.L0da4b8f0:
    move	$a0,$s0
    addiu	$a2,$s0,28156
    jalr	$t9
    addiu	$a1,$s0,1424
    # Line 1199
    lw	$t9,12072($s0)
    move	$a0,$s0
    addiu	$a2,$s0,28196
    jalr	$t9
    addiu	$a1,$s0,1504
    lw	$a0,1792($s0)
    andi	$a0,$a0,0x40
    beqz	$a0,.L0da4b954
    ld	$ra,16($sp)
.L0da4b924:
    ld	$s0,0($sp)
    # Line 1208
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4b934:
    # Line 1194
    lw	$a1,28144($a0)
    beqz	$a1,.L0da4b8ec
    nop
    # Line 1195
    lw	$t9,12076($s0)
    jalr	$t9
    nop
    b	.L0da4b8f0
    # Line 1198
    lw	$t9,12072($s0)
.L0da4b954:
    # Line 1206
    # lw $t9, -17360($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    move	$a0,$s0
    b	.L0da4b924
    ld	$ra,16($sp)
.end __glChangeBothMaterialColors

# Function: ComputeMaterialState
# Declared: Line 1222 (Source lines: 1224-1288)
# Address: 0x0da4b970 - 0x0da4bacc (Size: 348 bytes, Frame: 48)
.ent ComputeMaterialState
ComputeMaterialState:
    # Line 1224
    addiu	$sp,$sp,-48
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s2,16($sp)
    andi	$at,$a3,0x1b
    move	$s2,$a1
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$s3,8($sp)
    beqz	$at,.L0da4ba48
    move	$s3,$a3
    # Line 1233
    lw	$a1,32($a2)
    beqz	$a1,.L0da4ba60
    lwc1	$f4,64($s2)
    lwc1	$f0,16($a2)
    c.eq.s	$f0,$f4
    bc1f	.L0da4ba60
    sdc1	$f4,0($sp)
.L0da4b9b8:
    # Line 1266
    andi	$v0,$s3,0x9
    # Line 1275
    andi	$v1,$s3,0x2
    # Line 1266
    beqz	$v0,.L0da4ba04
    # Line 1288
    ld	$s3,8($sp)
    # Line 1271
    lwc1	$f9,1396($s1)
    lwc1	$f8,0($s2)
    lwc1	$f7,48($s2)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,0($s0)
    # Line 1273
    lwc1	$f6,1400($s1)
    lwc1	$f5,4($s2)
    lwc1	$f4,52($s2)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($s0)
    # Line 1275
    lwc1	$f3,1404($s1)
    lwc1	$f2,8($s2)
    lwc1	$f1,56($s2)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,8($s0)
.L0da4ba04:
    beqz	$v1,.L0da4ba48
    # Line 1281
    mtc1	$zero,$f5
    lwc1	$f6,30848($s1)
    lwc1	$f4,28($s2)
    mul.s	$f4,$f4,$f6
    c.lt.s $f4,$f5
    # Line 1288
    ld	$s2,16($sp)
    # Line 1281
    bc1t .L0da4bab0
    swc1	$f4,36($s0)
    # Line 1283
    lwc1	$f5,30848($s1)
    c.lt.s $f5,$f4
    bc1f .L0da4ba48
    # Line 1288
    ld	$s1,32($sp)
    # Line 1285
    swc1	$f5,36($s0)
    # Line 1288
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4ba48:
    ld	$s3,8($sp)
    ld	$s2,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4ba60:
    sdc1	$f4,0($sp)
    # Line 1262
    # lw $t9, -24992($gp) # &__glFreeSpecLUT
    ldc1	$f7,0($sp)
    sd	$ra,40($sp)
    move	$a0,$s1
    jal	__glFreeSpecLUT
    # Line 1260
    swc1	$f7,16($s0)
    # Line 1263
    # lw $t9, -24996($gp) # &__glCreateSpecLUT
    move	$a0,$s1
    jal	__glCreateSpecLUT
    ldc1	$f13,0($sp)
    sw	$v0,32($s0)
    # Line 1264
    lwc1	$f9,4($v0)
    ld	$ra,40($sp)
    swc1	$f9,24($s0)
    # Line 1265
    lwc1	$f8,8($v0)
    # Line 1266
    addiu	$a0,$v0,16
    sw	$a0,20($s0)
    b	.L0da4b9b8
    # Line 1265
    swc1	$f8,28($s0)
.L0da4bab0:
    # Line 1283
    swc1	$f5,36($s0)
    # Line 1288
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ComputeMaterialState

# Function: ComputeLightState
# Declared: Line 1305 (Source lines: 1306-1395)
# Address: 0x0da4bad0 - 0x0da4bdb8 (Size: 744 bytes, Frame: 160)
.ent ComputeLightState
ComputeLightState:
    # Line 1306
    addiu	$sp,$sp,-160
    sd	$s3,24($sp)
    # Line 1319
    lw	$s3,1800($a0)
    # Line 1306
    sd	$s0,32($sp)
    # Line 1317
    lw	$s0,28152($a0)
    # Line 1306
    sd	$s1,40($sp)
    # Line 1319
    lw	$a1,3588($a0)
    # Line 1306
    sd	$s2,16($sp)
    move	$s2,$a0
    sd	$s8,48($sp)
    # Line 1318
    addiu	$s8,$a0,28236
    # Line 1319
    blez	$a1,.L0da4bd8c
    # Line 1316
    lw	$s1,1584($a0)
    sdc1	$f20,104($sp)
    sd	$ra,72($sp)
    sdc1	$f30,144($sp)
    # Line 1319
    lwc1	$f30,_lit_3de147ae
    sdc1	$f28,136($sp)
    lwc1	$f28,_lit_3f170a3d
    sdc1	$f26,112($sp)
    lwc1	$f26,_lit_3e99999a
    sdc1	$f24,128($sp)
    sd	$s5,88($sp)
    sd	$s7,96($sp)
    li	$a0,1
    sdc1	$f22,120($sp)
    mtc1	$zero,$f22
    move	$s7,$zero
    sd	$s6,64($sp)
    addiu	$s6,$s0,160
    addiu	$s5,$s0,116
    lwc1	$f24,_lit_43340000
    sd	$s4,80($sp)
    b	.L0da4bdac
    addiu	$s4,$s0,200
.L0da4bb5c:
    # Line 1348
    beqz	$a1,.L0da4bb70
    swc1	$f20,112($s0)
.L0da4bb64:
    # Line 1351
    # lw $t9, -24992($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s2
.L0da4bb70:
    # Line 1353
    # lw $t9, -24996($gp) # &__glCreateSpecLUT
.L0da4bb74:
    move	$a0,$s2
    jal	__glCreateSpecLUT
    mov.s	$f13,$f20
    sw	$v0,216($s0)
    # Line 1354
    lwc1	$f1,4($v0)
    swc1	$f1,208($s0)
    # Line 1355
    lwc1	$f0,8($v0)
    # Line 1356
    addiu	$at,$v0,16
    sw	$at,204($s0)
    li	$a0,1
    # Line 1355
    swc1	$f0,212($s0)
.L0da4bba0:
    # Line 1359
    lwc1	$f2,104($s1)
    c.eq.s	$f2,$f22
    bc1t	.L0da4bbc0
    swc1	$f2,100($s0)
    # Line 1361
    lwc1	$f4,104($s1)
    lwc1	$f3,3544($s2)
    div.s	$f3,$f3,$f4
    swc1	$f3,152($s0)
.L0da4bbc0:
    # Line 1363
    lwc1	$f6,108($s1)
    swc1	$f6,104($s0)
    # Line 1364
    lwc1	$f5,112($s1)
    swc1	$f5,108($s0)
    lbu	$v0,3221($s2)
    beqz	$v0,.L0da4bc14
    nop
    # Line 1371
    lwc1	$f8,36($s1)
    lwc1	$f10,32($s1)
    lwc1	$f9,40($s1)
    mul.s	$f8,$f8,$f28
    madd.s	$f8,$f8,$f10,$f26
    madd.s	$f8,$f8,$f9,$f30
    swc1	$f8,192($s0)
    # Line 1374
    lwc1	$f7,20($s1)
    lwc1	$f9,16($s1)
    lwc1	$f8,24($s1)
    mul.s	$f7,$f7,$f28
    madd.s	$f7,$f7,$f9,$f26
    madd.s	$f7,$f7,$f8,$f30
    swc1	$f7,196($s0)
.L0da4bc14:
    # Line 1378
    lbu	$v1,1412($s2)
    beqz	$v1,.L0da4bcf0
    nop
.L0da4bc20:
    # Line 1391
    sb	$a0,220($s0)
.L0da4bc24:
    lw	$a1,3588($s2)
.L0da4bc28:
    # Line 1321
    addiu	$s4,$s4,224
    addiu	$s5,$s5,224
    addiu	$s6,$s6,224
    addiu	$s7,$s7,1
    addiu	$s0,$s0,224
    slt	$a2,$s7,$a1
    addiu	$s1,$s1,116
    srl	$s3,$s3,0x1
    beqz	$a2,.L0da4bd60
    # Line 1322
    andi	$a3,$s3,0x1
.L0da4bc50:
    beqz	$a3,.L0da4bc28
    # Line 1334
    li	$a4,1
    # Line 1325
    sw	$s0,0($s8)
    # Line 1326
    sw	$s1,96($s0)
    # Line 1333
    lwc1	$f13,64($s1)
    swc1	$f13,116($s0)
    lwc1	$f12,68($s1)
    swc1	$f12,120($s0)
    lwc1	$f11,72($s1)
    swc1	$f11,124($s0)
    lwc1	$f10,76($s1)
    swc1	$f10,128($s0)
    # Line 1334
    lwc1	$f9,100($s1)
    c.eq.s $f9,$f24
    movt	$a4,$zero,$fcc1
    sd	$a4,56($sp)
    # Line 1327
    move	$s8,$s4
    # Line 1334
    beqz	$a4,.L0da4bba0
    sb	$a4,156($s0)
    # Line 1336
    lwc1	$f13,_lit_3c8efa35
    lwc1	$f12,100($s1)
    # lw $t9, -16924($gp) # &cosf
    jal	cosf
    mul.s	$f12,$f12,$f13
    # Line 1340
    ld	$a5,56($sp)
    li	$a0,1
    beqz	$a5,.L0da4bba0
    # Line 1336
    swc1	$f0,148($s0)
    # Line 1340
    lw	$a1,216($s0)
    beqz	$a1,.L0da4bb5c
    lwc1	$f20,96($s1)
    lwc1	$f14,112($s0)
    c.eq.s $f14,$f20
    bc1t .L0da4bba0
    nop
    # Line 1348
    bnez	$a1,.L0da4bb64
    swc1	$f20,112($s0)
    b	.L0da4bb74
    # Line 1353
    nop	# was lw $t9, -24996($gp) # &__glCreateSpecLUT
    nop
.L0da4bcf0:
    # Line 1378
    lbu	$a6,156($s0)
    bnez	$a6,.L0da4bc20
    nop
    lwc1	$f15,128($s0)
    c.eq.s $f15,$f22
    bc1f .L0da4bc20
    nop
    # Line 1383
    lw	$t9,11960($s2)
    move	$a1,$s5
    jal	__glCreateSpecLUT
    addiu	$a0,$sp,0
    # Line 1384
    lwc1	$f21,0($sp)
    swc1	$f21,176($s0)
    # Line 1385
    lwc1	$f19,4($sp)
    swc1	$f19,180($s0)
    # Line 1386
    lwc1	$f18,8($sp)
    swc1	$f18,184($s0)
    # Line 1387
    lwc1	$f17,8($sp)
    lwc1	$f16,3544($s2)
    add.s	$f16,$f16,$f17
    swc1	$f16,8($sp)
    # Line 1388
    lw	$t9,11960($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s6
    li	$a0,1
    # Line 1389
    b	.L0da4bc24
    sb	$zero,220($s0)
.L0da4bd60:
    ld	$s6,64($sp)
    ld	$ra,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    ldc1	$f20,104($sp)
    ldc1	$f26,112($sp)
    ldc1	$f22,120($sp)
    ldc1	$f24,128($sp)
    ldc1	$f28,136($sp)
    ldc1	$f30,144($sp)
.L0da4bd8c:
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 1394
    sw	$zero,0($s8)
    # Line 1395
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da4bdac:
    # Line 1322
    andi	$a3,$s3,0x1
    b	.L0da4bc50
    nop
.end ComputeLightState

# Function: ComputeLightProcs
# Declared: Line 1407 (Source lines: 1412-1460)
# Address: 0x0da4bdc0 - 0x0da4bee8 (Size: 296 bytes, Frame: 0)
.ent ComputeLightProcs
ComputeLightProcs:
    # Line 1412
    lw	$a2,28236($a0)
    beqz	$a2,.L0da4be38
    # Line 1434
    li	$a5,7168
.L0da4bdcc:
    # Line 1412
    lbu	$at,220($a2)
    beqz	$at,.L0da4be2c
    nop
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0da4be74
    # Line 1430
    la	$a2,__glCalcRGBColor
    # Line 1412
    lbu	$a4,3221($a0)
    beqz	$a4,.L0da4bebc
    nop
    # Line 1424
    la	$a2,__glCalcCIColor
    sw	$a2,12060($a0)
.L0da4bdfc:
    # Line 1434
    lw	$a3,30492($a0)
    andi	$v1,$a3,0x2000
    # Line 1433
    sw	$a2,12068($a0)
    # Line 1434
    beqz	$v1,.L0da4be24
    dsll32	$a1,$a3,0xe
    bgez	$a1,.L0da4be24
    nop
    lw	$a3,3204($a0)
    beq	$a3,$a5,.L0da4be60
    nop
.L0da4be24:
    # Line 1460
    jr	$ra
    nop
.L0da4be2c:
    # Line 1412
    lw	$a2,200($a2)
    bnez	$a2,.L0da4bdcc
    nop
.L0da4be38:
    lw	$a6,1792($a0)
    andi	$a6,$a6,0x40
    beqz	$a6,.L0da4be74
    # Line 1428
    la	$a2,__glFastCalcRGBColor
    # Line 1412
    lbu	$a4,3221($a0)
    beqz	$a4,.L0da4becc
    nop
    # Line 1422
    la	$a2,__glFastCalcCIColor
    b	.L0da4bdfc
    sw	$a2,12060($a0)
.L0da4be60:
    # Line 1437
    beqz	$a4,.L0da4bed4
    sw	$a2,12064($a0)
    # Line 1439
    la	$a7,__glFogLitCIColor
    # Line 1460
    jr	$ra
    # Line 1439
    sw	$a7,12060($a0)
.L0da4be74:
    # Line 1447
    lw	$a3,30492($a0)
    # Line 1451
    # lw $t9, -26120($gp) # &__glFogCIColor
    # Line 1447
    andi	$t0,$a3,0x2000
    # Line 1412
    la	$a2,__glNop
    # Line 1447
    li	$t3,7168
    # Line 1445
    sw	$a2,12068($a0)
    # Line 1447
    beqz	$t0,.L0da4bec4
    dsll32	$t1,$a3,0xe
    bgez	$t1,.L0da4bec4
    nop
    lw	$t2,3204($a0)
    bne	$t2,$t3,.L0da4bec4
    nop
    lbu	$t8,3221($a0)
    beqz	$t8,.L0da4bee0
    # Line 1453
    la	$v0,__glFogRGBColor
    # Line 1460
    jr	$ra
    # Line 1451
    sw	$t9,12060($a0)
.L0da4bebc:
    b	.L0da4bdfc
    # Line 1430
    sw	$a2,12060($a0)
.L0da4bec4:
    # Line 1460
    jr	$ra
    # Line 1456
    sw	$a2,12060($a0)
.L0da4becc:
    # Line 1428
    b	.L0da4bdfc
    sw	$a2,12060($a0)
.L0da4bed4:
    # Line 1441
    la	$at,__glFogLitRGBColor
    # Line 1460
    jr	$ra
    # Line 1441
    sw	$at,12060($a0)
.L0da4bee0:
    # Line 1460
    jr	$ra
    # Line 1453
    sw	$v0,12060($a0)
.end ComputeLightProcs

# Function: ComputeLightMaterialState
# Declared: Line 1468 (Source lines: 1470-1539)
# Address: 0x0da4bef0 - 0x0da4c0b8 (Size: 456 bytes, Frame: 16)
.ent ComputeLightMaterialState
ComputeLightMaterialState:
    # Line 1470
    or	$a5,$a1,$a2
    andi	$at,$a5,0x7
    beqz	$at,.L0da4c0b0
    addiu	$sp,$sp,-16
    # Line 1485
    lw	$a4,28236($a0)
    beqz	$a4,.L0da4c0b0
    sd	$a5,0($sp)
    andi	$t0,$a1,0x4
    andi	$t9,$a2,0x4
    andi	$t3,$a1,0x2
    andi	$t2,$a2,0x2
    ld	$a5,0($sp)
    andi	$t1,$a1,0x1
    andi	$t8,$a2,0x1
    andi	$a6,$a5,0x4
    andi	$a7,$a5,0x2
    b	.L0da4c060
    andi	$a5,$a5,0x1
    nop
    nop
.L0da4bf40:
    # Line 1496
    lwc1	$f2,1424($a0)
    mul.s	$f2,$f2,$f4
    swc1	$f2,0($a4)
    # Line 1497
    lwc1	$f1,1428($a0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,4($a4)
    # Line 1498
    lwc1	$f0,1432($a0)
    mul.s	$f0,$f0,$f6
    beqz	$t8,.L0da4bf8c
    swc1	$f0,8($a4)
.L0da4bf68:
    # Line 1501
    lwc1	$f8,1504($a0)
    mul.s	$f8,$f8,$f4
    swc1	$f8,48($a4)
    # Line 1502
    lwc1	$f7,1508($a0)
    mul.s	$f7,$f7,$f5
    swc1	$f7,52($a4)
    # Line 1503
    lwc1	$f3,1512($a0)
    mul.s	$f3,$f3,$f6
    swc1	$f3,56($a4)
.L0da4bf8c:
    beqz	$a7,.L0da4bff0
    nop
    # Line 1510
    lwc1	$f6,24($a1)
    # Line 1509
    lwc1	$f5,20($a1)
    # Line 1510
    beqz	$t3,.L0da4c090
    # Line 1508
    lwc1	$f4,16($a1)
    # Line 1512
    lwc1	$f11,1440($a0)
    mul.s	$f11,$f11,$f4
    swc1	$f11,16($a4)
    # Line 1513
    lwc1	$f10,1444($a0)
    mul.s	$f10,$f10,$f5
    swc1	$f10,20($a4)
    # Line 1514
    lwc1	$f9,1448($a0)
    mul.s	$f9,$f9,$f6
    beqz	$t2,.L0da4bff0
    swc1	$f9,24($a4)
.L0da4bfcc:
    # Line 1517
    lwc1	$f14,1520($a0)
    mul.s	$f14,$f14,$f4
    swc1	$f14,64($a4)
    # Line 1518
    lwc1	$f13,1524($a0)
    mul.s	$f13,$f13,$f5
    swc1	$f13,68($a4)
    # Line 1519
    lwc1	$f12,1528($a0)
    mul.s	$f12,$f12,$f6
    swc1	$f12,72($a4)
.L0da4bff0:
    beqz	$a6,.L0da4c054
    nop
    # Line 1526
    lwc1	$f6,40($a1)
    # Line 1525
    lwc1	$f5,36($a1)
    # Line 1526
    beqz	$t0,.L0da4c0a0
    # Line 1524
    lwc1	$f4,32($a1)
    # Line 1528
    lwc1	$f17,1456($a0)
    mul.s	$f17,$f17,$f4
    swc1	$f17,32($a4)
    # Line 1529
    lwc1	$f16,1460($a0)
    mul.s	$f16,$f16,$f5
    swc1	$f16,36($a4)
    # Line 1530
    lwc1	$f15,1464($a0)
    mul.s	$f15,$f15,$f6
    beqz	$t9,.L0da4c054
    swc1	$f15,40($a4)
.L0da4c030:
    # Line 1533
    lwc1	$f21,1536($a0)
    mul.s	$f21,$f21,$f4
    swc1	$f21,80($a4)
    # Line 1534
    lwc1	$f19,1540($a0)
    mul.s	$f19,$f19,$f5
    swc1	$f19,84($a4)
    # Line 1535
    lwc1	$f18,1544($a0)
    mul.s	$f18,$f18,$f6
    swc1	$f18,88($a4)
.L0da4c054:
    # Line 1485
    lw	$a4,200($a4)
.L0da4c058:
    beqz	$a4,.L0da4c0b0
    nop
.L0da4c060:
    # Line 1486
    beqz	$a5,.L0da4bf8c
    lw	$a1,96($a4)
    # Line 1494
    lwc1	$f6,8($a1)
    # Line 1493
    lwc1	$f5,4($a1)
    # Line 1494
    bnez	$t1,.L0da4bf40
    # Line 1492
    lwc1	$f4,0($a1)
    # Line 1498
    bnez	$t8,.L0da4bf68
    nop
    b	.L0da4bf8c
    nop
    nop
    nop
.L0da4c090:
    # Line 1514
    bnez	$t2,.L0da4bfcc
    nop
    b	.L0da4bff0
    nop
.L0da4c0a0:
    # Line 1530
    bnez	$t9,.L0da4c030
    nop
    b	.L0da4c058
    # Line 1485
    lw	$a4,200($a4)
.L0da4c0b0:
    # Line 1539
    jr	$ra
    addiu	$sp,$sp,16
.end ComputeLightMaterialState

# Function: __glValidateMaterial
# Declared: Line 1553 (Source lines: 1554-1560)
# Address: 0x0da4c0c0 - 0x0da4c150 (Size: 144 bytes, Frame: 48)
.globl __glValidateMaterial
.ent __glValidateMaterial
__glValidateMaterial:
    # Line 1554
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    lui	$ra,0xb
    addiu	$ra,$ra,-15152
    sd	$gp,24($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32680($gp) # &sub_0da50000
    move	$a3,$a1
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$t9,$t9,-18064
    sd	$s1,8($sp)
    move	$s1,$a2
    # Line 1555
    addiu	$a2,$a0,28156
    # Line 1554
    sd	$a1,32($sp)
    # Line 1555
    bal __glChangeBothMaterialColors
    addiu	$a1,$a0,1424
    # Line 1557
    # lw $t9, -32680($gp) # &sub_0da50000
    move	$a0,$s0
    addiu	$t9,$t9,-18064
    addiu	$a2,$s0,28196
    addiu	$a1,$s0,1504
    bal __glChangeBothMaterialColors
    move	$a3,$s1
    # Line 1559
    # lw $t9, -32680($gp) # &sub_0da50000
    addiu	$t9,$t9,-16656
    move	$a0,$s0
    ld	$a1,32($sp)
    bal __glChangeBothMaterialColors
    move	$a2,$s1
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 1560
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glValidateMaterial

# Function: __glValidateLighting
# Declared: Line 1577 (Source lines: 1578-1586)
# Address: 0x0da4c150 - 0x0da4c1dc (Size: 140 bytes, Frame: 32)
.globl __glValidateLighting
.ent __glValidateLighting
__glValidateLighting:
    # Line 1578
    lw	$at,11812($a0)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$v0,0xb
    andi	$at,$at,0x20
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-15296
    sd	$gp,8($sp)
    beqz	$at,.L0da4c1c4
    addu	$gp,$t9,$v0
    # Line 1580
    # lw $t9, -32680($gp) # &sub_0da50000
    addiu	$t9,$t9,-17712
    bal __glChangeBothMaterialColors
    nop
    # Line 1581
    # lw $t9, -32680($gp) # &sub_0da50000
    addiu	$t9,$t9,-16960
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    # Line 1582
    # lw $t9, -26104($gp) # &__glValidateMaterial
    move	$a0,$s0
    li	$a2,63
    bal __glValidateMaterial
    li	$a1,63
    ld	$ra,16($sp)
.L0da4c1b4:
    ld	$s0,0($sp)
    # Line 1586
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4c1c4:
    # Line 1584
    # lw $t9, -32680($gp) # &sub_0da50000
    addiu	$t9,$t9,-16960
    bal __glChangeBothMaterialColors
    nop
    b	.L0da4c1b4
    ld	$ra,16($sp)
.end __glValidateLighting

# Function: __glGenericPickColorMaterialProcs
# Declared: Line 1588 (Source lines: 1589-1667)
# Address: 0x0da4c1e0 - 0x0da4c334 (Size: 340 bytes, Frame: 0)
.globl __glGenericPickColorMaterialProcs
.ent __glGenericPickColorMaterialProcs
__glGenericPickColorMaterialProcs:
    # Line 1592
    li	$a4,1029
    # Line 1589
    lbu	$v1,3220($a0)
    # Line 1609
    li	$t1,5634
    # Line 1589
    lui	$v0,0xb
    # Line 1609
    li	$t0,4609
    # Line 1589
    addiu	$v0,$v0,-15440
    beqz	$v1,.L0da4c2e0
    addu	$at,$t9,$v0
    lw	$a3,1792($a0)
    andi	$v1,$a3,0x80
    # Line 1655
    la	$t8,__glNop
    # Line 1589
    beqz	$v1,.L0da4c26c
    # Line 1649
    andi	$t2,$a3,0x40
    # Line 1592
    lw	$a3,1384($a0)
    li	$a1,1032
    beq	$a3,$a1,.L0da4c290
    li	$a2,1028
    beq	$a3,$a2,.L0da4c2a4
    # Line 1601
    addiu	$a1,$a0,28156
    # Line 1592
    beq	$a3,$a4,.L0da4c2c8
    # Line 1606
    addiu	$a5,$a0,28196
.L0da4c234:
    # Line 1609
    lw	$a3,1388($a0)
    li	$a5,5632
    beq	$a3,$a5,.L0da4c2ec
    li	$a6,4610
    beq	$a3,$a6,.L0da4c2fc
    li	$a7,4608
    beq	$a3,$a7,.L0da4c30c
    nop
    beq	$a3,$t0,.L0da4c31c
    # Line 1641
    la	$t2,sub_0da50000
    # Line 1609
    beq	$a3,$t1,.L0da4c2bc
    # Line 1644
    la	$a2,sub_0da50000
    # Line 1667
    jr	$ra
    nop
.L0da4c26c:
    # Line 1649
    beqz	$t2,.L0da4c32c
    # Line 1657
    la	$t3,__glClampAndScaleColor
    # Line 1649
    lw	$t3,31552($a0)
    nor	$t3,$t3,$zero
    andi	$t3,$t3,0x1
    beqz	$t3,.L0da4c32c
    # Line 1657
    la	$t3,__glClampAndScaleColor
    # Line 1667
    jr	$ra
    # Line 1655
    sw	$t8,12056($a0)
.L0da4c290:
    # Line 1596
    sw	$zero,28244($a0)
    # Line 1595
    sw	$zero,28240($a0)
    # Line 1594
    # lw $t9, -26108($gp) # &__glChangeBothMaterialColors
    b	.L0da4c234
    sw	$t9,12056($a0)
.L0da4c2a4:
    # Line 1601
    sw	$a1,28244($a0)
    # Line 1600
    addiu	$v1,$a0,1424
    sw	$v1,28240($a0)
    # Line 1599
    la	$v0,__glChangeOneMaterialColor
    # Line 1602
    b	.L0da4c234
    # Line 1599
    sw	$v0,12056($a0)
.L0da4c2bc:
    # Line 1644
    addiu	$a2,$a2,-18688
    # Line 1667
    jr	$ra
    # Line 1644
    sw	$a2,12072($a0)
.L0da4c2c8:
    # Line 1606
    sw	$a5,28244($a0)
    # Line 1605
    addiu	$a4,$a0,1504
    sw	$a4,28240($a0)
    # Line 1604
    la	$a3,__glChangeOneMaterialColor
    # Line 1607
    b	.L0da4c234
    # Line 1604
    sw	$a3,12056($a0)
.L0da4c2e0:
    # Line 1665
    la	$a6,__glNop
    # Line 1667
    jr	$ra
    # Line 1665
    sw	$a6,12056($a0)
.L0da4c2ec:
    # Line 1632
    la	$a7,sub_0da50000
    addiu	$a7,$a7,-19296
    # Line 1667
    jr	$ra
    # Line 1632
    sw	$a7,12072($a0)
.L0da4c2fc:
    # Line 1635
    la	$t0,sub_0da50000
    addiu	$t0,$t0,-19168
    # Line 1667
    jr	$ra
    # Line 1635
    sw	$t0,12072($a0)
.L0da4c30c:
    # Line 1638
    la	$t1,sub_0da50000
    addiu	$t1,$t1,-19040
    # Line 1667
    jr	$ra
    # Line 1638
    sw	$t1,12072($a0)
.L0da4c31c:
    # Line 1641
    addiu	$t2,$t2,-18864
    # Line 1667
    jr	$ra
    # Line 1641
    sw	$t2,12072($a0)
    # Line 1657
    la	$t3,__glClampAndScaleColor
.L0da4c32c:
    # Line 1667
    jr	$ra
    # Line 1657
    sw	$t3,12056($a0)
.end __glGenericPickColorMaterialProcs

.rdata
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3de147ae:
    .word 0x3de147ae
_lit_3e99999a:
    .word 0x3e99999a
_lit_3f170a3d:
    .word 0x3f170a3d
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_43340000:
    .word 0x43340000

