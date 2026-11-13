# Source: ../ODYSSEY/ody_soft_vapi.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_soft_vapi.c
# Total Functions: 24

.text

# Function: __glOdyim_SoftVertex2d
# Declared: Line 21 (Source lines: 22-39)
# Address: 0x0d9e4f10 - 0x0d9e4fa8 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2d
.ent __glOdyim_SoftVertex2d
__glOdyim_SoftVertex2d:
    # Line 22
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 25
    lw	$s8,4112($zero)
    # Line 27
    lw	$a1,12744($s8)
    # Line 33
    mtc1	$zero,$f1
    # Line 29
    sw	$zero,0($a1)
    # Line 30
    lw	$v0,12032($s8)
    # Line 32
    cvt.s.d	$f2,$f13
    # Line 33
    swc1	$f1,24($a1)
    # Line 31
    cvt.s.d	$f3,$f12
    # Line 32
    swc1	$f2,20($a1)
    # Line 31
    swc1	$f3,16($a1)
    # Line 30
    sw	$v0,12($a1)
    # Line 34
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 22
    lui	$at,0x11
    addiu	$at,$at,13952
    # Line 34
    swc1	$f0,28($a1)
    # Line 22
    addu	$gp,$t9,$at
    # Line 35
    lw	$t9,11980($s8)
    # Line 22
    sd	$ra,0($sp)
    # Line 35
    move	$a0,$s8
    jalr	$t9
    # Line 27
    sd	$a1,24($sp)
    # Line 35
    ld	$a1,24($sp)
    # Line 37
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 36
    li	$a0,1
    sb	$a0,400($a1)
    # Line 35
    sw	$v0,4($a1)
    # Line 38
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 39
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2d

# Function: __glOdyim_SoftVertex2dv
# Declared: Line 42 (Source lines: 43-63)
# Address: 0x0d9e4fb0 - 0x0d9e5050 (Size: 160 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2dv
.ent __glOdyim_SoftVertex2dv
__glOdyim_SoftVertex2dv:
    # Line 43
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 47
    lw	$s8,4112($zero)
    # Line 49
    lw	$a1,12744($s8)
    # Line 51
    sw	$zero,0($a1)
    # Line 52
    lw	$v0,12032($s8)
    sw	$v0,12($a1)
    # Line 54
    ldc1	$f2,8($a0)
    # Line 57
    mtc1	$zero,$f1
    # Line 55
    ldc1	$f3,0($a0)
    # Line 57
    swc1	$f1,24($a1)
    # Line 54
    cvt.s.d	$f2,$f2
    # Line 55
    cvt.s.d	$f3,$f3
    # Line 56
    swc1	$f2,20($a1)
    # Line 55
    swc1	$f3,16($a1)
    # Line 58
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 43
    lui	$at,0x11
    addiu	$at,$at,13792
    # Line 58
    swc1	$f0,28($a1)
    # Line 43
    addu	$gp,$t9,$at
    # Line 59
    lw	$t9,11980($s8)
    # Line 43
    sd	$ra,0($sp)
    # Line 49
    sd	$a1,24($sp)
    # Line 59
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 61
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 60
    li	$a0,1
    sb	$a0,400($a1)
    # Line 59
    sw	$v0,4($a1)
    # Line 62
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 63
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2dv

# Function: __glOdyim_SoftVertex2f
# Declared: Line 66 (Source lines: 67-84)
# Address: 0x0d9e5050 - 0x0d9e50e0 (Size: 144 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2f
.ent __glOdyim_SoftVertex2f
__glOdyim_SoftVertex2f:
    # Line 67
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 70
    lw	$s8,4112($zero)
    # Line 72
    lw	$a1,12744($s8)
    # Line 78
    mtc1	$zero,$f1
    # Line 74
    sw	$zero,0($a1)
    # Line 75
    lw	$v0,12032($s8)
    # Line 78
    swc1	$f1,24($a1)
    # Line 77
    swc1	$f13,20($a1)
    # Line 76
    swc1	$f12,16($a1)
    # Line 75
    sw	$v0,12($a1)
    # Line 79
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 67
    lui	$at,0x11
    addiu	$at,$at,13632
    # Line 79
    swc1	$f0,28($a1)
    # Line 67
    addu	$gp,$t9,$at
    # Line 80
    lw	$t9,11980($s8)
    # Line 67
    sd	$ra,0($sp)
    # Line 80
    move	$a0,$s8
    jalr	$t9
    # Line 72
    sd	$a1,24($sp)
    # Line 80
    ld	$a1,24($sp)
    # Line 82
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 81
    li	$a0,1
    sb	$a0,400($a1)
    # Line 80
    sw	$v0,4($a1)
    # Line 83
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 84
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2f

# Function: __glOdyim_SoftVertex2fv
# Declared: Line 87 (Source lines: 88-108)
# Address: 0x0d9e50e0 - 0x0d9e5178 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2fv
.ent __glOdyim_SoftVertex2fv
__glOdyim_SoftVertex2fv:
    # Line 88
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 92
    lw	$s8,4112($zero)
    # Line 94
    lw	$a1,12744($s8)
    # Line 96
    sw	$zero,0($a1)
    # Line 97
    lw	$v0,12032($s8)
    sw	$v0,12($a1)
    # Line 102
    mtc1	$zero,$f1
    # Line 99
    lwc1	$f2,4($a0)
    # Line 100
    lwc1	$f3,0($a0)
    # Line 102
    swc1	$f1,24($a1)
    # Line 101
    swc1	$f2,20($a1)
    # Line 100
    swc1	$f3,16($a1)
    # Line 103
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 88
    lui	$at,0x11
    addiu	$at,$at,13488
    # Line 103
    swc1	$f0,28($a1)
    # Line 88
    addu	$gp,$t9,$at
    # Line 104
    lw	$t9,11980($s8)
    # Line 88
    sd	$ra,0($sp)
    # Line 94
    sd	$a1,24($sp)
    # Line 104
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 106
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 105
    li	$a0,1
    sb	$a0,400($a1)
    # Line 104
    sw	$v0,4($a1)
    # Line 107
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 108
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2fv

# Function: __glOdyim_SoftVertex2i
# Declared: Line 111 (Source lines: 112-129)
# Address: 0x0d9e5180 - 0x0d9e5220 (Size: 160 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2i
.ent __glOdyim_SoftVertex2i
__glOdyim_SoftVertex2i:
    # Line 112
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 115
    lw	$s8,4112($zero)
    # Line 122
    mtc1	$a1,$f2
    # Line 121
    mtc1	$a0,$f3
    # Line 117
    lw	$a1,12744($s8)
    # Line 123
    mtc1	$zero,$f1
    # Line 122
    cvt.s.w	$f2,$f2
    # Line 119
    sw	$zero,0($a1)
    # Line 121
    cvt.s.w	$f3,$f3
    # Line 120
    lw	$v0,12032($s8)
    # Line 123
    swc1	$f1,24($a1)
    # Line 122
    swc1	$f2,20($a1)
    # Line 121
    swc1	$f3,16($a1)
    # Line 120
    sw	$v0,12($a1)
    # Line 124
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 112
    lui	$at,0x11
    addiu	$at,$at,13328
    # Line 124
    swc1	$f0,28($a1)
    # Line 112
    addu	$gp,$t9,$at
    # Line 125
    lw	$t9,11980($s8)
    # Line 112
    sd	$ra,0($sp)
    # Line 125
    move	$a0,$s8
    jalr	$t9
    # Line 117
    sd	$a1,24($sp)
    # Line 125
    ld	$a1,24($sp)
    # Line 127
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 126
    li	$a0,1
    sb	$a0,400($a1)
    # Line 125
    sw	$v0,4($a1)
    # Line 128
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 129
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2i

# Function: __glOdyim_SoftVertex2iv
# Declared: Line 132 (Source lines: 133-153)
# Address: 0x0d9e5220 - 0x0d9e52c8 (Size: 168 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2iv
.ent __glOdyim_SoftVertex2iv
__glOdyim_SoftVertex2iv:
    # Line 133
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 137
    lw	$s8,4112($zero)
    # Line 139
    lw	$a1,12744($s8)
    # Line 141
    sw	$zero,0($a1)
    # Line 142
    lw	$a2,12032($s8)
    sw	$a2,12($a1)
    # Line 144
    lw	$v0,4($a0)
    # Line 145
    lw	$v1,0($a0)
    # Line 144
    mtc1	$v0,$f2
    # Line 145
    mtc1	$v1,$f3
    # Line 147
    mtc1	$zero,$f1
    # Line 144
    cvt.s.w	$f2,$f2
    # Line 145
    cvt.s.w	$f3,$f3
    # Line 147
    swc1	$f1,24($a1)
    # Line 146
    swc1	$f2,20($a1)
    # Line 145
    swc1	$f3,16($a1)
    # Line 148
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 133
    lui	$at,0x11
    addiu	$at,$at,13168
    # Line 148
    swc1	$f0,28($a1)
    # Line 133
    addu	$gp,$t9,$at
    # Line 149
    lw	$t9,11980($s8)
    # Line 133
    sd	$ra,0($sp)
    # Line 139
    sd	$a1,24($sp)
    # Line 149
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 151
    sltiu	$a3,$v0,1
    sb	$a3,401($a1)
    # Line 150
    li	$a4,1
    sb	$a4,400($a1)
    # Line 149
    sw	$v0,4($a1)
    # Line 152
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 153
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2iv

# Function: __glOdyim_SoftVertex2s
# Declared: Line 156 (Source lines: 157-174)
# Address: 0x0d9e52d0 - 0x0d9e5370 (Size: 160 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2s
.ent __glOdyim_SoftVertex2s
__glOdyim_SoftVertex2s:
    # Line 157
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 160
    lw	$s8,4112($zero)
    # Line 167
    mtc1	$a1,$f2
    # Line 166
    mtc1	$a0,$f3
    # Line 162
    lw	$a1,12744($s8)
    # Line 168
    mtc1	$zero,$f1
    # Line 167
    cvt.s.w	$f2,$f2
    # Line 164
    sw	$zero,0($a1)
    # Line 166
    cvt.s.w	$f3,$f3
    # Line 165
    lw	$v0,12032($s8)
    # Line 168
    swc1	$f1,24($a1)
    # Line 167
    swc1	$f2,20($a1)
    # Line 166
    swc1	$f3,16($a1)
    # Line 165
    sw	$v0,12($a1)
    # Line 169
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 157
    lui	$at,0x11
    addiu	$at,$at,12992
    # Line 169
    swc1	$f0,28($a1)
    # Line 157
    addu	$gp,$t9,$at
    # Line 170
    lw	$t9,11980($s8)
    # Line 157
    sd	$ra,0($sp)
    # Line 170
    move	$a0,$s8
    jalr	$t9
    # Line 162
    sd	$a1,24($sp)
    # Line 170
    ld	$a1,24($sp)
    # Line 172
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 171
    li	$a0,1
    sb	$a0,400($a1)
    # Line 170
    sw	$v0,4($a1)
    # Line 173
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 174
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2s

# Function: __glOdyim_SoftVertex2sv
# Declared: Line 177 (Source lines: 178-198)
# Address: 0x0d9e5370 - 0x0d9e5418 (Size: 168 bytes, Frame: 32)
.globl __glOdyim_SoftVertex2sv
.ent __glOdyim_SoftVertex2sv
__glOdyim_SoftVertex2sv:
    # Line 178
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 182
    lw	$s8,4112($zero)
    # Line 184
    lw	$a1,12744($s8)
    # Line 186
    sw	$zero,0($a1)
    # Line 187
    lw	$a2,12032($s8)
    sw	$a2,12($a1)
    # Line 189
    lh	$v0,2($a0)
    # Line 190
    lh	$v1,0($a0)
    # Line 189
    mtc1	$v0,$f2
    # Line 190
    mtc1	$v1,$f3
    # Line 192
    mtc1	$zero,$f1
    # Line 189
    cvt.s.w	$f2,$f2
    # Line 190
    cvt.s.w	$f3,$f3
    # Line 192
    swc1	$f1,24($a1)
    # Line 191
    swc1	$f2,20($a1)
    # Line 190
    swc1	$f3,16($a1)
    # Line 193
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 178
    lui	$at,0x11
    addiu	$at,$at,12832
    # Line 193
    swc1	$f0,28($a1)
    # Line 178
    addu	$gp,$t9,$at
    # Line 194
    lw	$t9,11980($s8)
    # Line 178
    sd	$ra,0($sp)
    # Line 184
    sd	$a1,24($sp)
    # Line 194
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 196
    sltiu	$a3,$v0,1
    sb	$a3,401($a1)
    # Line 195
    li	$a4,1
    sb	$a4,400($a1)
    # Line 194
    sw	$v0,4($a1)
    # Line 197
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 198
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex2sv

# Function: __glOdyim_SoftVertex3d
# Declared: Line 201 (Source lines: 202-219)
# Address: 0x0d9e5420 - 0x0d9e54b8 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3d
.ent __glOdyim_SoftVertex3d
__glOdyim_SoftVertex3d:
    # Line 202
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 205
    lw	$s8,4112($zero)
    # Line 207
    lw	$a1,12744($s8)
    # Line 209
    sw	$zero,0($a1)
    # Line 213
    cvt.s.d	$f1,$f14
    # Line 210
    lw	$v0,12036($s8)
    # Line 212
    cvt.s.d	$f2,$f13
    # Line 213
    swc1	$f1,24($a1)
    # Line 211
    cvt.s.d	$f3,$f12
    # Line 212
    swc1	$f2,20($a1)
    # Line 211
    swc1	$f3,16($a1)
    # Line 210
    sw	$v0,12($a1)
    # Line 214
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 202
    lui	$at,0x11
    addiu	$at,$at,12656
    # Line 214
    swc1	$f0,28($a1)
    # Line 202
    addu	$gp,$t9,$at
    # Line 215
    lw	$t9,11984($s8)
    # Line 202
    sd	$ra,0($sp)
    # Line 215
    move	$a0,$s8
    jalr	$t9
    # Line 207
    sd	$a1,24($sp)
    # Line 215
    ld	$a1,24($sp)
    # Line 217
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 216
    li	$a0,1
    sb	$a0,400($a1)
    # Line 215
    sw	$v0,4($a1)
    # Line 218
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 219
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3d

# Function: __glOdyim_SoftVertex3dv
# Declared: Line 222 (Source lines: 223-244)
# Address: 0x0d9e54c0 - 0x0d9e5564 (Size: 164 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3dv
.ent __glOdyim_SoftVertex3dv
__glOdyim_SoftVertex3dv:
    # Line 223
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 227
    lw	$s8,4112($zero)
    # Line 229
    lw	$a1,12744($s8)
    # Line 231
    sw	$zero,0($a1)
    # Line 232
    lw	$v0,12036($s8)
    sw	$v0,12($a1)
    # Line 235
    ldc1	$f1,16($a0)
    # Line 234
    ldc1	$f2,8($a0)
    # Line 236
    ldc1	$f3,0($a0)
    # Line 235
    cvt.s.d	$f1,$f1
    # Line 234
    cvt.s.d	$f2,$f2
    # Line 238
    swc1	$f1,24($a1)
    # Line 236
    cvt.s.d	$f3,$f3
    # Line 237
    swc1	$f2,20($a1)
    # Line 236
    swc1	$f3,16($a1)
    # Line 239
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 223
    lui	$at,0x11
    addiu	$at,$at,12496
    # Line 239
    swc1	$f0,28($a1)
    # Line 223
    addu	$gp,$t9,$at
    # Line 240
    lw	$t9,11984($s8)
    # Line 223
    sd	$ra,0($sp)
    # Line 229
    sd	$a1,24($sp)
    # Line 240
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 242
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 241
    li	$a0,1
    sb	$a0,400($a1)
    # Line 240
    sw	$v0,4($a1)
    # Line 243
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 244
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3dv

# Function: __glOdyim_SoftVertex3f
# Declared: Line 247 (Source lines: 248-265)
# Address: 0x0d9e5570 - 0x0d9e55fc (Size: 140 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3f
.ent __glOdyim_SoftVertex3f
__glOdyim_SoftVertex3f:
    # Line 248
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 251
    lw	$s8,4112($zero)
    # Line 253
    lw	$a1,12744($s8)
    # Line 255
    sw	$zero,0($a1)
    # Line 256
    lw	$v0,12036($s8)
    # Line 259
    swc1	$f14,24($a1)
    # Line 258
    swc1	$f13,20($a1)
    # Line 257
    swc1	$f12,16($a1)
    # Line 256
    sw	$v0,12($a1)
    # Line 260
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 248
    lui	$at,0x11
    addiu	$at,$at,12320
    # Line 260
    swc1	$f0,28($a1)
    # Line 248
    addu	$gp,$t9,$at
    # Line 261
    lw	$t9,11984($s8)
    # Line 248
    sd	$ra,0($sp)
    # Line 261
    move	$a0,$s8
    jalr	$t9
    # Line 253
    sd	$a1,24($sp)
    # Line 261
    ld	$a1,24($sp)
    # Line 263
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 262
    li	$a0,1
    sb	$a0,400($a1)
    # Line 261
    sw	$v0,4($a1)
    # Line 264
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 265
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3f

# Function: __glOdyim_SoftVertex3fv
# Declared: Line 268 (Source lines: 269-290)
# Address: 0x0d9e5600 - 0x0d9e5698 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3fv
.ent __glOdyim_SoftVertex3fv
__glOdyim_SoftVertex3fv:
    # Line 269
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 273
    lw	$s8,4112($zero)
    # Line 275
    lw	$a1,12744($s8)
    # Line 277
    sw	$zero,0($a1)
    # Line 278
    lw	$v0,12036($s8)
    sw	$v0,12($a1)
    # Line 282
    lwc1	$f3,0($a0)
    # Line 281
    lwc1	$f1,8($a0)
    # Line 280
    lwc1	$f2,4($a0)
    # Line 284
    swc1	$f1,24($a1)
    # Line 283
    swc1	$f2,20($a1)
    # Line 282
    swc1	$f3,16($a1)
    # Line 285
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 269
    lui	$at,0x11
    addiu	$at,$at,12176
    # Line 285
    swc1	$f0,28($a1)
    # Line 269
    addu	$gp,$t9,$at
    # Line 286
    lw	$t9,11984($s8)
    # Line 269
    sd	$ra,0($sp)
    # Line 275
    sd	$a1,24($sp)
    # Line 286
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 288
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 287
    li	$a0,1
    sb	$a0,400($a1)
    # Line 286
    sw	$v0,4($a1)
    # Line 289
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 290
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3fv

# Function: __glOdyim_SoftVertex3i
# Declared: Line 293 (Source lines: 294-311)
# Address: 0x0d9e56a0 - 0x0d9e5744 (Size: 164 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3i
.ent __glOdyim_SoftVertex3i
__glOdyim_SoftVertex3i:
    # Line 294
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 305
    mtc1	$a2,$f1
    # Line 297
    lw	$s8,4112($zero)
    # Line 304
    mtc1	$a1,$f2
    # Line 303
    mtc1	$a0,$f3
    # Line 299
    lw	$a1,12744($s8)
    # Line 305
    cvt.s.w	$f1,$f1
    # Line 304
    cvt.s.w	$f2,$f2
    # Line 301
    sw	$zero,0($a1)
    # Line 303
    cvt.s.w	$f3,$f3
    # Line 302
    lw	$v0,12036($s8)
    # Line 305
    swc1	$f1,24($a1)
    # Line 304
    swc1	$f2,20($a1)
    # Line 303
    swc1	$f3,16($a1)
    # Line 302
    sw	$v0,12($a1)
    # Line 306
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 294
    lui	$at,0x11
    addiu	$at,$at,12016
    # Line 306
    swc1	$f0,28($a1)
    # Line 294
    addu	$gp,$t9,$at
    # Line 307
    lw	$t9,11984($s8)
    # Line 294
    sd	$ra,0($sp)
    # Line 307
    move	$a0,$s8
    jalr	$t9
    # Line 299
    sd	$a1,24($sp)
    # Line 307
    ld	$a1,24($sp)
    # Line 309
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 308
    li	$a0,1
    sb	$a0,400($a1)
    # Line 307
    sw	$v0,4($a1)
    # Line 310
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 311
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3i

# Function: __glOdyim_SoftVertex3iv
# Declared: Line 314 (Source lines: 315-336)
# Address: 0x0d9e5750 - 0x0d9e5800 (Size: 176 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3iv
.ent __glOdyim_SoftVertex3iv
__glOdyim_SoftVertex3iv:
    # Line 315
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 319
    lw	$s8,4112($zero)
    # Line 321
    lw	$a1,12744($s8)
    # Line 323
    sw	$zero,0($a1)
    # Line 324
    lw	$a3,12036($s8)
    sw	$a3,12($a1)
    # Line 327
    lw	$v0,8($a0)
    # Line 326
    lw	$v1,4($a0)
    # Line 328
    lw	$a2,0($a0)
    # Line 327
    mtc1	$v0,$f1
    # Line 326
    mtc1	$v1,$f2
    # Line 328
    mtc1	$a2,$f3
    # Line 327
    cvt.s.w	$f1,$f1
    # Line 326
    cvt.s.w	$f2,$f2
    # Line 328
    cvt.s.w	$f3,$f3
    # Line 330
    swc1	$f1,24($a1)
    # Line 329
    swc1	$f2,20($a1)
    # Line 328
    swc1	$f3,16($a1)
    # Line 331
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 315
    lui	$at,0x11
    addiu	$at,$at,11840
    # Line 331
    swc1	$f0,28($a1)
    # Line 315
    addu	$gp,$t9,$at
    # Line 332
    lw	$t9,11984($s8)
    # Line 315
    sd	$ra,0($sp)
    # Line 321
    sd	$a1,24($sp)
    # Line 332
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 334
    sltiu	$a4,$v0,1
    sb	$a4,401($a1)
    # Line 333
    li	$a5,1
    sb	$a5,400($a1)
    # Line 332
    sw	$v0,4($a1)
    # Line 335
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 336
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3iv

# Function: __glOdyim_SoftVertex3s
# Declared: Line 339 (Source lines: 340-357)
# Address: 0x0d9e5800 - 0x0d9e58a4 (Size: 164 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3s
.ent __glOdyim_SoftVertex3s
__glOdyim_SoftVertex3s:
    # Line 340
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 351
    mtc1	$a2,$f1
    # Line 343
    lw	$s8,4112($zero)
    # Line 350
    mtc1	$a1,$f2
    # Line 349
    mtc1	$a0,$f3
    # Line 345
    lw	$a1,12744($s8)
    # Line 351
    cvt.s.w	$f1,$f1
    # Line 350
    cvt.s.w	$f2,$f2
    # Line 347
    sw	$zero,0($a1)
    # Line 349
    cvt.s.w	$f3,$f3
    # Line 348
    lw	$v0,12036($s8)
    # Line 351
    swc1	$f1,24($a1)
    # Line 350
    swc1	$f2,20($a1)
    # Line 349
    swc1	$f3,16($a1)
    # Line 348
    sw	$v0,12($a1)
    # Line 352
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 340
    lui	$at,0x11
    addiu	$at,$at,11664
    # Line 352
    swc1	$f0,28($a1)
    # Line 340
    addu	$gp,$t9,$at
    # Line 353
    lw	$t9,11984($s8)
    # Line 340
    sd	$ra,0($sp)
    # Line 353
    move	$a0,$s8
    jalr	$t9
    # Line 345
    sd	$a1,24($sp)
    # Line 353
    ld	$a1,24($sp)
    # Line 355
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 354
    li	$a0,1
    sb	$a0,400($a1)
    # Line 353
    sw	$v0,4($a1)
    # Line 356
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 357
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3s

# Function: __glOdyim_SoftVertex3sv
# Declared: Line 360 (Source lines: 361-382)
# Address: 0x0d9e58b0 - 0x0d9e5960 (Size: 176 bytes, Frame: 32)
.globl __glOdyim_SoftVertex3sv
.ent __glOdyim_SoftVertex3sv
__glOdyim_SoftVertex3sv:
    # Line 361
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 365
    lw	$s8,4112($zero)
    # Line 367
    lw	$a1,12744($s8)
    # Line 369
    sw	$zero,0($a1)
    # Line 370
    lw	$a3,12036($s8)
    sw	$a3,12($a1)
    # Line 373
    lh	$v0,4($a0)
    # Line 372
    lh	$v1,2($a0)
    # Line 374
    lh	$a2,0($a0)
    # Line 373
    mtc1	$v0,$f1
    # Line 372
    mtc1	$v1,$f2
    # Line 374
    mtc1	$a2,$f3
    # Line 373
    cvt.s.w	$f1,$f1
    # Line 372
    cvt.s.w	$f2,$f2
    # Line 374
    cvt.s.w	$f3,$f3
    # Line 376
    swc1	$f1,24($a1)
    # Line 375
    swc1	$f2,20($a1)
    # Line 374
    swc1	$f3,16($a1)
    # Line 377
    lwc1	$f0,3544($s8)
    sd	$gp,16($sp)
    # Line 361
    lui	$at,0x11
    addiu	$at,$at,11488
    # Line 377
    swc1	$f0,28($a1)
    # Line 361
    addu	$gp,$t9,$at
    # Line 378
    lw	$t9,11984($s8)
    # Line 361
    sd	$ra,0($sp)
    # Line 367
    sd	$a1,24($sp)
    # Line 378
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 380
    sltiu	$a4,$v0,1
    sb	$a4,401($a1)
    # Line 379
    li	$a5,1
    sb	$a5,400($a1)
    # Line 378
    sw	$v0,4($a1)
    # Line 381
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 382
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex3sv

# Function: __glOdyim_SoftVertex4d
# Declared: Line 385 (Source lines: 386-403)
# Address: 0x0d9e5960 - 0x0d9e59f8 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4d
.ent __glOdyim_SoftVertex4d
__glOdyim_SoftVertex4d:
    # Line 386
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 389
    lw	$s8,4112($zero)
    # Line 391
    lw	$a1,12744($s8)
    sd	$gp,16($sp)
    # Line 393
    sw	$zero,0($a1)
    # Line 398
    cvt.s.d	$f0,$f15
    # Line 394
    lw	$v0,12040($s8)
    # Line 397
    cvt.s.d	$f1,$f14
    # Line 398
    swc1	$f0,28($a1)
    # Line 396
    cvt.s.d	$f2,$f13
    # Line 397
    swc1	$f1,24($a1)
    # Line 395
    cvt.s.d	$f3,$f12
    # Line 396
    swc1	$f2,20($a1)
    # Line 386
    lui	$at,0x11
    # Line 395
    swc1	$f3,16($a1)
    # Line 386
    addiu	$at,$at,11312
    # Line 394
    sw	$v0,12($a1)
    # Line 386
    addu	$gp,$t9,$at
    # Line 399
    lw	$t9,11988($s8)
    # Line 386
    sd	$ra,0($sp)
    # Line 399
    move	$a0,$s8
    jalr	$t9
    # Line 391
    sd	$a1,24($sp)
    # Line 399
    ld	$a1,24($sp)
    # Line 401
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 400
    li	$a0,1
    sb	$a0,400($a1)
    # Line 399
    sw	$v0,4($a1)
    # Line 402
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 403
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4d

# Function: __glOdyim_SoftVertex4dv
# Declared: Line 406 (Source lines: 407-429)
# Address: 0x0d9e5a00 - 0x0d9e5aa8 (Size: 168 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4dv
.ent __glOdyim_SoftVertex4dv
__glOdyim_SoftVertex4dv:
    # Line 407
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 411
    lw	$s8,4112($zero)
    # Line 413
    lw	$a1,12744($s8)
    sd	$gp,16($sp)
    # Line 415
    sw	$zero,0($a1)
    # Line 416
    lw	$v0,12040($s8)
    sw	$v0,12($a1)
    # Line 420
    ldc1	$f0,24($a0)
    # Line 419
    ldc1	$f1,16($a0)
    # Line 418
    ldc1	$f2,8($a0)
    # Line 421
    ldc1	$f3,0($a0)
    # Line 420
    cvt.s.d	$f0,$f0
    # Line 419
    cvt.s.d	$f1,$f1
    # Line 424
    swc1	$f0,28($a1)
    # Line 418
    cvt.s.d	$f2,$f2
    # Line 423
    swc1	$f1,24($a1)
    # Line 407
    lui	$at,0x11
    # Line 421
    cvt.s.d	$f3,$f3
    # Line 422
    swc1	$f2,20($a1)
    # Line 407
    addiu	$at,$at,11152
    # Line 421
    swc1	$f3,16($a1)
    # Line 407
    addu	$gp,$t9,$at
    # Line 425
    lw	$t9,11988($s8)
    # Line 407
    sd	$ra,0($sp)
    # Line 413
    sd	$a1,24($sp)
    # Line 425
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 427
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 426
    li	$a0,1
    sb	$a0,400($a1)
    # Line 425
    sw	$v0,4($a1)
    # Line 428
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 429
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4dv

# Function: __glOdyim_SoftVertex4f
# Declared: Line 432 (Source lines: 433-450)
# Address: 0x0d9e5ab0 - 0x0d9e5b38 (Size: 136 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4f
.ent __glOdyim_SoftVertex4f
__glOdyim_SoftVertex4f:
    # Line 433
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 436
    lw	$s8,4112($zero)
    # Line 438
    lw	$a1,12744($s8)
    sd	$gp,16($sp)
    # Line 440
    sw	$zero,0($a1)
    # Line 441
    lw	$v0,12040($s8)
    # Line 445
    swc1	$f15,28($a1)
    # Line 444
    swc1	$f14,24($a1)
    # Line 443
    swc1	$f13,20($a1)
    # Line 433
    lui	$at,0x11
    # Line 442
    swc1	$f12,16($a1)
    # Line 433
    addiu	$at,$at,10976
    # Line 441
    sw	$v0,12($a1)
    # Line 433
    addu	$gp,$t9,$at
    # Line 446
    lw	$t9,11988($s8)
    # Line 433
    sd	$ra,0($sp)
    # Line 446
    move	$a0,$s8
    jalr	$t9
    # Line 438
    sd	$a1,24($sp)
    # Line 446
    ld	$a1,24($sp)
    # Line 448
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 447
    li	$a0,1
    sb	$a0,400($a1)
    # Line 446
    sw	$v0,4($a1)
    # Line 449
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 450
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4f

# Function: __glOdyim_SoftVertex4fv
# Declared: Line 453 (Source lines: 454-476)
# Address: 0x0d9e5b40 - 0x0d9e5bd8 (Size: 152 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4fv
.ent __glOdyim_SoftVertex4fv
__glOdyim_SoftVertex4fv:
    # Line 454
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 458
    lw	$s8,4112($zero)
    # Line 460
    lw	$a1,12744($s8)
    sd	$gp,16($sp)
    # Line 462
    sw	$zero,0($a1)
    # Line 463
    lw	$v0,12040($s8)
    sw	$v0,12($a1)
    # Line 468
    lwc1	$f3,0($a0)
    # Line 466
    lwc1	$f1,8($a0)
    # Line 467
    lwc1	$f0,12($a0)
    # Line 465
    lwc1	$f2,4($a0)
    # Line 471
    swc1	$f0,28($a1)
    # Line 470
    swc1	$f1,24($a1)
    # Line 454
    lui	$at,0x11
    # Line 469
    swc1	$f2,20($a1)
    # Line 454
    addiu	$at,$at,10832
    # Line 468
    swc1	$f3,16($a1)
    # Line 454
    addu	$gp,$t9,$at
    # Line 472
    lw	$t9,11988($s8)
    # Line 454
    sd	$ra,0($sp)
    # Line 460
    sd	$a1,24($sp)
    # Line 472
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 474
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 473
    li	$a0,1
    sb	$a0,400($a1)
    # Line 472
    sw	$v0,4($a1)
    # Line 475
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 476
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4fv

# Function: __glOdyim_SoftVertex4i
# Declared: Line 479 (Source lines: 480-497)
# Address: 0x0d9e5be0 - 0x0d9e5c88 (Size: 168 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4i
.ent __glOdyim_SoftVertex4i
__glOdyim_SoftVertex4i:
    # Line 480
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 492
    mtc1	$a3,$f0
    # Line 483
    lw	$s8,4112($zero)
    # Line 491
    mtc1	$a2,$f1
    # Line 490
    mtc1	$a1,$f2
    # Line 485
    lw	$a1,12744($s8)
    sd	$gp,16($sp)
    # Line 489
    mtc1	$a0,$f3
    # Line 492
    cvt.s.w	$f0,$f0
    # Line 491
    cvt.s.w	$f1,$f1
    # Line 487
    sw	$zero,0($a1)
    # Line 490
    cvt.s.w	$f2,$f2
    # Line 488
    lw	$v0,12040($s8)
    # Line 489
    cvt.s.w	$f3,$f3
    # Line 492
    swc1	$f0,28($a1)
    # Line 491
    swc1	$f1,24($a1)
    # Line 490
    swc1	$f2,20($a1)
    # Line 480
    lui	$at,0x11
    # Line 489
    swc1	$f3,16($a1)
    # Line 480
    addiu	$at,$at,10672
    # Line 488
    sw	$v0,12($a1)
    # Line 480
    addu	$gp,$t9,$at
    # Line 493
    lw	$t9,11988($s8)
    # Line 480
    sd	$ra,0($sp)
    # Line 493
    move	$a0,$s8
    jalr	$t9
    # Line 485
    sd	$a1,24($sp)
    # Line 493
    ld	$a1,24($sp)
    # Line 495
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 494
    li	$a0,1
    sb	$a0,400($a1)
    # Line 493
    sw	$v0,4($a1)
    # Line 496
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 497
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4i

# Function: __glOdyim_SoftVertex4iv
# Declared: Line 500 (Source lines: 501-525)
# Address: 0x0d9e5c90 - 0x0d9e5d6c (Size: 220 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4iv
.ent __glOdyim_SoftVertex4iv
__glOdyim_SoftVertex4iv:
    # Line 501
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 505
    lw	$s0,4112($zero)
    # Line 501
    sd	$s1,8($sp)
    # Line 507
    lw	$s1,12744($s0)
    # Line 509
    sw	$zero,0($s1)
    # Line 510
    lw	$a3,12040($s0)
    sw	$a3,12($s1)
    # Line 514
    lw	$v0,12($a0)
    # Line 513
    lw	$v1,8($a0)
    # Line 512
    lw	$a1,4($a0)
    # Line 514
    mtc1	$v0,$f0
    # Line 515
    lw	$a2,0($a0)
    # Line 513
    mtc1	$v1,$f1
    # Line 512
    mtc1	$a1,$f2
    # Line 515
    mtc1	$a2,$f3
    # Line 514
    cvt.s.w	$f0,$f0
    # Line 513
    cvt.s.w	$f1,$f1
    sd	$gp,24($sp)
    # Line 512
    cvt.s.w	$f2,$f2
    # Line 515
    cvt.s.w	$f3,$f3
    # Line 518
    swc1	$f0,28($s1)
    # Line 517
    swc1	$f1,24($s1)
    # Line 501
    lui	$at,0x11
    # Line 516
    swc1	$f2,20($s1)
    # Line 501
    addiu	$at,$at,10496
    # Line 515
    swc1	$f3,16($s1)
    # Line 501
    addu	$gp,$t9,$at
    # Line 519
    lw	$t9,11988($s0)
    move	$a0,$s0
    # Line 501
    sd	$ra,16($sp)
    # Line 519
    jalr	$t9
    move	$a1,$s1
    # Line 520
    li	$a4,1
    sb	$a4,400($s1)
    # Line 519
    sw	$v0,4($s1)
    # Line 521
    lw	$t9,11988($s0)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    # Line 523
    sltiu	$a5,$v0,1
    sb	$a5,401($s1)
    # Line 522
    li	$a6,1
    sb	$a6,400($s1)
    # Line 521
    sw	$v0,4($s1)
    # Line 524
    lw	$t9,11976($s0)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 525
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4iv

# Function: __glOdyim_SoftVertex4s
# Declared: Line 528 (Source lines: 529-546)
# Address: 0x0d9e5d70 - 0x0d9e5e18 (Size: 168 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4s
.ent __glOdyim_SoftVertex4s
__glOdyim_SoftVertex4s:
    # Line 529
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 541
    mtc1	$a3,$f0
    # Line 532
    lw	$s8,4112($zero)
    # Line 540
    mtc1	$a2,$f1
    # Line 539
    mtc1	$a1,$f2
    # Line 534
    lw	$a1,12744($s8)
    sd	$gp,16($sp)
    # Line 538
    mtc1	$a0,$f3
    # Line 541
    cvt.s.w	$f0,$f0
    # Line 540
    cvt.s.w	$f1,$f1
    # Line 536
    sw	$zero,0($a1)
    # Line 539
    cvt.s.w	$f2,$f2
    # Line 537
    lw	$v0,12040($s8)
    # Line 538
    cvt.s.w	$f3,$f3
    # Line 541
    swc1	$f0,28($a1)
    # Line 540
    swc1	$f1,24($a1)
    # Line 539
    swc1	$f2,20($a1)
    # Line 529
    lui	$at,0x11
    # Line 538
    swc1	$f3,16($a1)
    # Line 529
    addiu	$at,$at,10272
    # Line 537
    sw	$v0,12($a1)
    # Line 529
    addu	$gp,$t9,$at
    # Line 542
    lw	$t9,11988($s8)
    # Line 529
    sd	$ra,0($sp)
    # Line 542
    move	$a0,$s8
    jalr	$t9
    # Line 534
    sd	$a1,24($sp)
    # Line 542
    ld	$a1,24($sp)
    # Line 544
    sltiu	$v1,$v0,1
    sb	$v1,401($a1)
    # Line 543
    li	$a0,1
    sb	$a0,400($a1)
    # Line 542
    sw	$v0,4($a1)
    # Line 545
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 546
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4s

# Function: __glOdyim_SoftVertex4sv
# Declared: Line 549 (Source lines: 550-572)
# Address: 0x0d9e5e20 - 0x0d9e5ed8 (Size: 184 bytes, Frame: 32)
.globl __glOdyim_SoftVertex4sv
.ent __glOdyim_SoftVertex4sv
__glOdyim_SoftVertex4sv:
    # Line 550
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 554
    lw	$s8,4112($zero)
    # Line 556
    lw	$a1,12744($s8)
    # Line 558
    sw	$zero,0($a1)
    # Line 559
    lw	$a4,12040($s8)
    sw	$a4,12($a1)
    # Line 563
    lh	$v0,6($a0)
    # Line 562
    lh	$v1,4($a0)
    # Line 561
    lh	$a2,2($a0)
    # Line 563
    mtc1	$v0,$f0
    # Line 564
    lh	$a3,0($a0)
    # Line 562
    mtc1	$v1,$f1
    # Line 561
    mtc1	$a2,$f2
    # Line 564
    mtc1	$a3,$f3
    # Line 563
    cvt.s.w	$f0,$f0
    # Line 562
    cvt.s.w	$f1,$f1
    sd	$gp,16($sp)
    # Line 561
    cvt.s.w	$f2,$f2
    # Line 564
    cvt.s.w	$f3,$f3
    # Line 567
    swc1	$f0,28($a1)
    # Line 566
    swc1	$f1,24($a1)
    # Line 550
    lui	$at,0x11
    # Line 565
    swc1	$f2,20($a1)
    # Line 550
    addiu	$at,$at,10096
    # Line 564
    swc1	$f3,16($a1)
    # Line 550
    addu	$gp,$t9,$at
    # Line 568
    lw	$t9,11988($s8)
    # Line 550
    sd	$ra,0($sp)
    # Line 556
    sd	$a1,24($sp)
    # Line 568
    jalr	$t9
    move	$a0,$s8
    ld	$a1,24($sp)
    # Line 570
    sltiu	$a5,$v0,1
    sb	$a5,401($a1)
    # Line 569
    li	$a6,1
    sb	$a6,400($a1)
    # Line 568
    sw	$v0,4($a1)
    # Line 571
    lw	$t9,11976($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 572
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftVertex4sv

