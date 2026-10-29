# Source: ../ODYSSEY/ody_soft_capi.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_soft_capi.c
# Total Functions: 84

.text

# Function: __glOdyim_SoftColor3b
# Declared: Line 23 (Source lines: 24-27)
# Address: 0x0d9f2130 - 0x0d9f218c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3b
.ent __glOdyim_SoftColor3b
__glOdyim_SoftColor3b:
    # Line 24
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,25696
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 25
    # lw $t9, -18144($gp) # &__glOdyim_Color3b
    # Line 24
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 25
    nop
    # Line 24
    sd	$ra,0($sp)
    # Line 25
    jal	__glOdyim_Color3b
    # Line 24
    move	$s8,$a0
    # Line 26
    # lw $t9, -27032($gp) # &__glim_Color3b
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3b
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 27
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3b

# Function: __glOdyim_SoftColor3bv
# Declared: Line 30 (Source lines: 31-34)
# Address: 0x0d9f2190 - 0x0d9f21dc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3bv
.ent __glOdyim_SoftColor3bv
__glOdyim_SoftColor3bv:
    # Line 31
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,25600
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 32
    # lw $t9, -18136($gp) # &__glOdyim_Color3bv
    # Line 31
    sd	$s8,8($sp)
    # Line 32
    nop
    # Line 31
    sd	$ra,0($sp)
    # Line 32
    jal	__glOdyim_Color3bv
    # Line 31
    move	$s8,$a0
    # Line 33
    # lw $t9, -27028($gp) # &__glim_Color3bv
    jal	__glim_Color3bv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 34
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3bv

# Function: __glOdyim_SoftColor3d
# Declared: Line 37 (Source lines: 38-41)
# Address: 0x0d9f21e0 - 0x0d9f223c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3d
.ent __glOdyim_SoftColor3d
__glOdyim_SoftColor3d:
    # Line 38
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sdc1	$f14,8($sp)
    addiu	$at,$at,25520
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 39
    # lw $t9, -18128($gp) # &__glOdyim_Color3d
    # Line 38
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    # Line 39
    nop
    # Line 38
    sd	$ra,24($sp)
    # Line 39
    jal	__glOdyim_Color3d
    # Line 38
    mov.d	$f30,$f12
    # Line 40
    # lw $t9, -27024($gp) # &__glim_Color3d
    ldc1	$f13,16($sp)
    mov.d	$f12,$f30
    jal	__glim_Color3d
    ldc1	$f14,8($sp)
    ld	$ra,24($sp)
    ldc1	$f30,0($sp)
    # Line 41
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3d

# Function: __glOdyim_SoftColor3dv
# Declared: Line 44 (Source lines: 45-48)
# Address: 0x0d9f2240 - 0x0d9f228c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3dv
.ent __glOdyim_SoftColor3dv
__glOdyim_SoftColor3dv:
    # Line 45
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,25424
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 46
    # lw $t9, -18120($gp) # &__glOdyim_Color3dv
    # Line 45
    sd	$s8,8($sp)
    # Line 46
    nop
    # Line 45
    sd	$ra,0($sp)
    # Line 46
    jal	__glOdyim_Color3dv
    # Line 45
    move	$s8,$a0
    # Line 47
    # lw $t9, -27020($gp) # &__glim_Color3dv
    jal	__glim_Color3dv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 48
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3dv

# Function: __glOdyim_SoftColor3f
# Declared: Line 51 (Source lines: 52-55)
# Address: 0x0d9f2290 - 0x0d9f22ec (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3f
.ent __glOdyim_SoftColor3f
__glOdyim_SoftColor3f:
    # Line 52
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sdc1	$f14,8($sp)
    addiu	$at,$at,25344
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 53
    # lw $t9, -18112($gp) # &__glOdyim_Color3f
    # Line 52
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    # Line 53
    nop
    # Line 52
    sd	$ra,24($sp)
    # Line 53
    jal	__glOdyim_Color3f
    # Line 52
    mov.s	$f30,$f12
    # Line 54
    # lw $t9, -17796($gp) # &__glim_Color3f
    ldc1	$f13,16($sp)
    mov.s	$f12,$f30
    jal	__glim_Color3f
    ldc1	$f14,8($sp)
    ld	$ra,24($sp)
    ldc1	$f30,0($sp)
    # Line 55
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3f

# Function: __glOdyim_SoftColor3fv
# Declared: Line 58 (Source lines: 59-62)
# Address: 0x0d9f22f0 - 0x0d9f233c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3fv
.ent __glOdyim_SoftColor3fv
__glOdyim_SoftColor3fv:
    # Line 59
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,25248
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 60
    # lw $t9, -18104($gp) # &__glOdyim_Color3fv
    # Line 59
    sd	$s8,8($sp)
    # Line 60
    nop
    # Line 59
    sd	$ra,0($sp)
    # Line 60
    jal	__glOdyim_Color3fv
    # Line 59
    move	$s8,$a0
    # Line 61
    # lw $t9, -17792($gp) # &__glim_Color3fv
    jal	__glim_Color3fv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 62
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3fv

# Function: __glOdyim_SoftColor3i
# Declared: Line 65 (Source lines: 66-69)
# Address: 0x0d9f2340 - 0x0d9f239c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3i
.ent __glOdyim_SoftColor3i
__glOdyim_SoftColor3i:
    # Line 66
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,25168
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 67
    # lw $t9, -18096($gp) # &__glOdyim_Color3i
    # Line 66
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 67
    nop
    # Line 66
    sd	$ra,0($sp)
    # Line 67
    jal	__glOdyim_Color3i
    # Line 66
    move	$s8,$a0
    # Line 68
    # lw $t9, -27016($gp) # &__glim_Color3i
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3i
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 69
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3i

# Function: __glOdyim_SoftColor3iv
# Declared: Line 72 (Source lines: 73-76)
# Address: 0x0d9f23a0 - 0x0d9f23ec (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3iv
.ent __glOdyim_SoftColor3iv
__glOdyim_SoftColor3iv:
    # Line 73
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,25072
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 74
    # lw $t9, -18088($gp) # &__glOdyim_Color3iv
    # Line 73
    sd	$s8,8($sp)
    # Line 74
    nop
    # Line 73
    sd	$ra,0($sp)
    # Line 74
    jal	__glOdyim_Color3iv
    # Line 73
    move	$s8,$a0
    # Line 75
    # lw $t9, -27012($gp) # &__glim_Color3iv
    jal	__glim_Color3iv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 76
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3iv

# Function: __glOdyim_SoftColor3s
# Declared: Line 79 (Source lines: 80-83)
# Address: 0x0d9f23f0 - 0x0d9f244c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3s
.ent __glOdyim_SoftColor3s
__glOdyim_SoftColor3s:
    # Line 80
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,24992
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 81
    # lw $t9, -18080($gp) # &__glOdyim_Color3s
    # Line 80
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 81
    nop
    # Line 80
    sd	$ra,0($sp)
    # Line 81
    jal	__glOdyim_Color3s
    # Line 80
    move	$s8,$a0
    # Line 82
    # lw $t9, -27000($gp) # &__glim_Color3s
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3s
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 83
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3s

# Function: __glOdyim_SoftColor3sv
# Declared: Line 86 (Source lines: 87-90)
# Address: 0x0d9f2450 - 0x0d9f249c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3sv
.ent __glOdyim_SoftColor3sv
__glOdyim_SoftColor3sv:
    # Line 87
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,24896
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 88
    # lw $t9, -18072($gp) # &__glOdyim_Color3sv
    # Line 87
    sd	$s8,8($sp)
    # Line 88
    nop
    # Line 87
    sd	$ra,0($sp)
    # Line 88
    jal	__glOdyim_Color3sv
    # Line 87
    move	$s8,$a0
    # Line 89
    # lw $t9, -26996($gp) # &__glim_Color3sv
    jal	__glim_Color3sv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 90
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3sv

# Function: __glOdyim_SoftColor3ub
# Declared: Line 93 (Source lines: 94-97)
# Address: 0x0d9f24a0 - 0x0d9f24fc (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3ub
.ent __glOdyim_SoftColor3ub
__glOdyim_SoftColor3ub:
    # Line 94
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,24816
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 95
    # lw $t9, -18064($gp) # &__glOdyim_Color3ub
    # Line 94
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 95
    nop
    # Line 94
    sd	$ra,0($sp)
    # Line 95
    jal	__glOdyim_Color3ub
    # Line 94
    move	$s8,$a0
    # Line 96
    # lw $t9, -27040($gp) # &__glim_Color3ub
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3ub
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 97
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3ub

# Function: __glOdyim_SoftColor3ubv
# Declared: Line 100 (Source lines: 101-104)
# Address: 0x0d9f2500 - 0x0d9f254c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3ubv
.ent __glOdyim_SoftColor3ubv
__glOdyim_SoftColor3ubv:
    # Line 101
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,24720
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 102
    # lw $t9, -18056($gp) # &__glOdyim_Color3ubv
    # Line 101
    sd	$s8,8($sp)
    # Line 102
    nop
    # Line 101
    sd	$ra,0($sp)
    # Line 102
    jal	__glOdyim_Color3ubv
    # Line 101
    move	$s8,$a0
    # Line 103
    # lw $t9, -27036($gp) # &__glim_Color3ubv
    jal	__glim_Color3ubv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 104
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3ubv

# Function: __glOdyim_SoftColor3ui
# Declared: Line 107 (Source lines: 108-111)
# Address: 0x0d9f2550 - 0x0d9f25ac (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3ui
.ent __glOdyim_SoftColor3ui
__glOdyim_SoftColor3ui:
    # Line 108
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,24640
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 109
    # lw $t9, -18048($gp) # &__glOdyim_Color3ui
    # Line 108
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 109
    nop
    # Line 108
    sd	$ra,0($sp)
    # Line 109
    jal	__glOdyim_Color3ui
    # Line 108
    move	$s8,$a0
    # Line 110
    # lw $t9, -27008($gp) # &__glim_Color3ui
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3ui
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 111
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3ui

# Function: __glOdyim_SoftColor3uiv
# Declared: Line 114 (Source lines: 115-118)
# Address: 0x0d9f25b0 - 0x0d9f25fc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3uiv
.ent __glOdyim_SoftColor3uiv
__glOdyim_SoftColor3uiv:
    # Line 115
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,24544
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 116
    # lw $t9, -18040($gp) # &__glOdyim_Color3uiv
    # Line 115
    sd	$s8,8($sp)
    # Line 116
    nop
    # Line 115
    sd	$ra,0($sp)
    # Line 116
    jal	__glOdyim_Color3uiv
    # Line 115
    move	$s8,$a0
    # Line 117
    # lw $t9, -27004($gp) # &__glim_Color3uiv
    jal	__glim_Color3uiv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 118
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3uiv

# Function: __glOdyim_SoftColor3us
# Declared: Line 121 (Source lines: 122-125)
# Address: 0x0d9f2600 - 0x0d9f265c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftColor3us
.ent __glOdyim_SoftColor3us
__glOdyim_SoftColor3us:
    # Line 122
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,24464
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 123
    # lw $t9, -18032($gp) # &__glOdyim_Color3us
    # Line 122
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 123
    nop
    # Line 122
    sd	$ra,0($sp)
    # Line 123
    jal	__glOdyim_Color3us
    # Line 122
    move	$s8,$a0
    # Line 124
    # lw $t9, -26992($gp) # &__glim_Color3us
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3us
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 125
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor3us

# Function: __glOdyim_SoftColor3usv
# Declared: Line 128 (Source lines: 129-132)
# Address: 0x0d9f2660 - 0x0d9f26ac (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor3usv
.ent __glOdyim_SoftColor3usv
__glOdyim_SoftColor3usv:
    # Line 129
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,24368
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 130
    # lw $t9, -18024($gp) # &__glOdyim_Color3usv
    # Line 129
    sd	$s8,8($sp)
    # Line 130
    nop
    # Line 129
    sd	$ra,0($sp)
    # Line 130
    jal	__glOdyim_Color3usv
    # Line 129
    move	$s8,$a0
    # Line 131
    # lw $t9, -26988($gp) # &__glim_Color3usv
    jal	__glim_Color3usv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 132
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor3usv

# Function: __glOdyim_SoftColor4b
# Declared: Line 135 (Source lines: 136-139)
# Address: 0x0d9f26b0 - 0x0d9f2714 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4b
.ent __glOdyim_SoftColor4b
__glOdyim_SoftColor4b:
    # Line 136
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,24288
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 137
    # lw $t9, -18016($gp) # &__glOdyim_Color4b
    # Line 136
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 137
    nop
    # Line 136
    sd	$ra,0($sp)
    # Line 137
    jal	__glOdyim_Color4b
    # Line 136
    move	$s8,$a0
    # Line 138
    # lw $t9, -26976($gp) # &__glim_Color4b
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4b
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 139
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4b

# Function: __glOdyim_SoftColor4bv
# Declared: Line 142 (Source lines: 143-146)
# Address: 0x0d9f2720 - 0x0d9f276c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4bv
.ent __glOdyim_SoftColor4bv
__glOdyim_SoftColor4bv:
    # Line 143
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,24176
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 144
    # lw $t9, -18008($gp) # &__glOdyim_Color4bv
    # Line 143
    sd	$s8,8($sp)
    # Line 144
    nop
    # Line 143
    sd	$ra,0($sp)
    # Line 144
    jal	__glOdyim_Color4bv
    # Line 143
    move	$s8,$a0
    # Line 145
    # lw $t9, -26972($gp) # &__glim_Color4bv
    jal	__glim_Color4bv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 146
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4bv

# Function: __glOdyim_SoftColor4d
# Declared: Line 149 (Source lines: 150-153)
# Address: 0x0d9f2770 - 0x0d9f27d4 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4d
.ent __glOdyim_SoftColor4d
__glOdyim_SoftColor4d:
    # Line 150
    addiu	$sp,$sp,-48
    sdc1	$f15,8($sp)
    lui	$at,0x10
    sdc1	$f14,16($sp)
    addiu	$at,$at,24096
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 151
    # lw $t9, -18000($gp) # &__glOdyim_Color4d
    # Line 150
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    # Line 151
    nop
    # Line 150
    sd	$ra,32($sp)
    # Line 151
    jal	__glOdyim_Color4d
    # Line 150
    mov.d	$f30,$f12
    # Line 152
    # lw $t9, -26968($gp) # &__glim_Color4d
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    mov.d	$f12,$f30
    jal	__glim_Color4d
    ldc1	$f15,8($sp)
    ld	$ra,32($sp)
    ldc1	$f30,0($sp)
    # Line 153
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4d

# Function: __glOdyim_SoftColor4dv
# Declared: Line 156 (Source lines: 157-160)
# Address: 0x0d9f27e0 - 0x0d9f282c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4dv
.ent __glOdyim_SoftColor4dv
__glOdyim_SoftColor4dv:
    # Line 157
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23984
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 158
    # lw $t9, -17992($gp) # &__glOdyim_Color4dv
    # Line 157
    sd	$s8,8($sp)
    # Line 158
    nop
    # Line 157
    sd	$ra,0($sp)
    # Line 158
    jal	__glOdyim_Color4dv
    # Line 157
    move	$s8,$a0
    # Line 159
    # lw $t9, -26964($gp) # &__glim_Color4dv
    jal	__glim_Color4dv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 160
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4dv

# Function: __glOdyim_SoftColor4f
# Declared: Line 163 (Source lines: 164-167)
# Address: 0x0d9f2830 - 0x0d9f2894 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4f
.ent __glOdyim_SoftColor4f
__glOdyim_SoftColor4f:
    # Line 164
    addiu	$sp,$sp,-48
    sdc1	$f15,8($sp)
    lui	$at,0x10
    sdc1	$f14,16($sp)
    addiu	$at,$at,23904
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 165
    # lw $t9, -17984($gp) # &__glOdyim_Color4f
    # Line 164
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    # Line 165
    nop
    # Line 164
    sd	$ra,32($sp)
    # Line 165
    jal	__glOdyim_Color4f
    # Line 164
    mov.s	$f30,$f12
    # Line 166
    # lw $t9, -17788($gp) # &__glim_Color4f
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    mov.s	$f12,$f30
    jal	__glim_Color4f
    ldc1	$f15,8($sp)
    ld	$ra,32($sp)
    ldc1	$f30,0($sp)
    # Line 167
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4f

# Function: __glOdyim_SoftColor4fv
# Declared: Line 170 (Source lines: 171-174)
# Address: 0x0d9f28a0 - 0x0d9f28ec (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4fv
.ent __glOdyim_SoftColor4fv
__glOdyim_SoftColor4fv:
    # Line 171
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23792
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 172
    # lw $t9, -17976($gp) # &__glOdyim_Color4fv
    # Line 171
    sd	$s8,8($sp)
    # Line 172
    nop
    # Line 171
    sd	$ra,0($sp)
    # Line 172
    jal	__glOdyim_Color4fv
    # Line 171
    move	$s8,$a0
    # Line 173
    # lw $t9, -17784($gp) # &__glim_Color4fv
    jal	__glim_Color4fv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 174
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4fv

# Function: __glOdyim_SoftColor4i
# Declared: Line 177 (Source lines: 178-181)
# Address: 0x0d9f28f0 - 0x0d9f2954 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4i
.ent __glOdyim_SoftColor4i
__glOdyim_SoftColor4i:
    # Line 178
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,23712
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 179
    # lw $t9, -17968($gp) # &__glOdyim_Color4i
    # Line 178
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 179
    nop
    # Line 178
    sd	$ra,0($sp)
    # Line 179
    jal	__glOdyim_Color4i
    # Line 178
    move	$s8,$a0
    # Line 180
    # lw $t9, -26960($gp) # &__glim_Color4i
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4i
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 181
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4i

# Function: __glOdyim_SoftColor4iv
# Declared: Line 184 (Source lines: 185-188)
# Address: 0x0d9f2960 - 0x0d9f29ac (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4iv
.ent __glOdyim_SoftColor4iv
__glOdyim_SoftColor4iv:
    # Line 185
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23600
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 186
    # lw $t9, -17960($gp) # &__glOdyim_Color4iv
    # Line 185
    sd	$s8,8($sp)
    # Line 186
    nop
    # Line 185
    sd	$ra,0($sp)
    # Line 186
    jal	__glOdyim_Color4iv
    # Line 185
    move	$s8,$a0
    # Line 187
    # lw $t9, -26956($gp) # &__glim_Color4iv
    jal	__glim_Color4iv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 188
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4iv

# Function: __glOdyim_SoftColor4s
# Declared: Line 191 (Source lines: 192-195)
# Address: 0x0d9f29b0 - 0x0d9f2a14 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4s
.ent __glOdyim_SoftColor4s
__glOdyim_SoftColor4s:
    # Line 192
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,23520
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 193
    # lw $t9, -17952($gp) # &__glOdyim_Color4s
    # Line 192
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 193
    nop
    # Line 192
    sd	$ra,0($sp)
    # Line 193
    jal	__glOdyim_Color4s
    # Line 192
    move	$s8,$a0
    # Line 194
    # lw $t9, -26944($gp) # &__glim_Color4s
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4s
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 195
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4s

# Function: __glOdyim_SoftColor4sv
# Declared: Line 198 (Source lines: 199-202)
# Address: 0x0d9f2a20 - 0x0d9f2a6c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4sv
.ent __glOdyim_SoftColor4sv
__glOdyim_SoftColor4sv:
    # Line 199
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23408
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 200
    # lw $t9, -17944($gp) # &__glOdyim_Color4sv
    # Line 199
    sd	$s8,8($sp)
    # Line 200
    nop
    # Line 199
    sd	$ra,0($sp)
    # Line 200
    jal	__glOdyim_Color4sv
    # Line 199
    move	$s8,$a0
    # Line 201
    # lw $t9, -26940($gp) # &__glim_Color4sv
    jal	__glim_Color4sv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 202
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4sv

# Function: __glOdyim_SoftColor4ub
# Declared: Line 205 (Source lines: 206-209)
# Address: 0x0d9f2a70 - 0x0d9f2ad4 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4ub
.ent __glOdyim_SoftColor4ub
__glOdyim_SoftColor4ub:
    # Line 206
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,23328
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 207
    # lw $t9, -17936($gp) # &__glOdyim_Color4ub
    # Line 206
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 207
    nop
    # Line 206
    sd	$ra,0($sp)
    # Line 207
    jal	__glOdyim_Color4ub
    # Line 206
    move	$s8,$a0
    # Line 208
    # lw $t9, -26984($gp) # &__glim_Color4ub
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4ub
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 209
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4ub

# Function: __glOdyim_SoftColor4ubv
# Declared: Line 212 (Source lines: 213-216)
# Address: 0x0d9f2ae0 - 0x0d9f2b2c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4ubv
.ent __glOdyim_SoftColor4ubv
__glOdyim_SoftColor4ubv:
    # Line 213
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23216
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 214
    # lw $t9, -17928($gp) # &__glOdyim_Color4ubv
    # Line 213
    sd	$s8,8($sp)
    # Line 214
    nop
    # Line 213
    sd	$ra,0($sp)
    # Line 214
    jal	__glOdyim_Color4ubv
    # Line 213
    move	$s8,$a0
    # Line 215
    # lw $t9, -26980($gp) # &__glim_Color4ubv
    jal	__glim_Color4ubv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 216
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4ubv

# Function: __glOdyim_SoftColor4ui
# Declared: Line 219 (Source lines: 220-223)
# Address: 0x0d9f2b30 - 0x0d9f2b94 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4ui
.ent __glOdyim_SoftColor4ui
__glOdyim_SoftColor4ui:
    # Line 220
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,23136
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 221
    # lw $t9, -17920($gp) # &__glOdyim_Color4ui
    # Line 220
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 221
    nop
    # Line 220
    sd	$ra,0($sp)
    # Line 221
    jal	__glOdyim_Color4ui
    # Line 220
    move	$s8,$a0
    # Line 222
    # lw $t9, -26952($gp) # &__glim_Color4ui
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4ui
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 223
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4ui

# Function: __glOdyim_SoftColor4uiv
# Declared: Line 226 (Source lines: 227-230)
# Address: 0x0d9f2ba0 - 0x0d9f2bec (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4uiv
.ent __glOdyim_SoftColor4uiv
__glOdyim_SoftColor4uiv:
    # Line 227
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23024
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 228
    # lw $t9, -17912($gp) # &__glOdyim_Color4uiv
    # Line 227
    sd	$s8,8($sp)
    # Line 228
    nop
    # Line 227
    sd	$ra,0($sp)
    # Line 228
    jal	__glOdyim_Color4uiv
    # Line 227
    move	$s8,$a0
    # Line 229
    # lw $t9, -26948($gp) # &__glim_Color4uiv
    jal	__glim_Color4uiv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 230
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4uiv

# Function: __glOdyim_SoftColor4us
# Declared: Line 233 (Source lines: 234-237)
# Address: 0x0d9f2bf0 - 0x0d9f2c54 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftColor4us
.ent __glOdyim_SoftColor4us
__glOdyim_SoftColor4us:
    # Line 234
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,22944
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 235
    # lw $t9, -17904($gp) # &__glOdyim_Color4us
    # Line 234
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 235
    nop
    # Line 234
    sd	$ra,0($sp)
    # Line 235
    jal	__glOdyim_Color4us
    # Line 234
    move	$s8,$a0
    # Line 236
    # lw $t9, -26936($gp) # &__glim_Color4us
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4us
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 237
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftColor4us

# Function: __glOdyim_SoftColor4usv
# Declared: Line 240 (Source lines: 241-244)
# Address: 0x0d9f2c60 - 0x0d9f2cac (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftColor4usv
.ent __glOdyim_SoftColor4usv
__glOdyim_SoftColor4usv:
    # Line 241
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22832
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 242
    # lw $t9, -17896($gp) # &__glOdyim_Color4usv
    # Line 241
    sd	$s8,8($sp)
    # Line 242
    nop
    # Line 241
    sd	$ra,0($sp)
    # Line 242
    jal	__glOdyim_Color4usv
    # Line 241
    move	$s8,$a0
    # Line 243
    # lw $t9, -26932($gp) # &__glim_Color4usv
    jal	__glim_Color4usv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 244
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftColor4usv

# Function: __glOdyim_SoftIndexd
# Declared: Line 247 (Source lines: 248-251)
# Address: 0x0d9f2cb0 - 0x0d9f2cfc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexd
.ent __glOdyim_SoftIndexd
__glOdyim_SoftIndexd:
    # Line 248
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22752
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 249
    # lw $t9, -17888($gp) # &__glOdyim_Indexd
    # Line 248
    sdc1	$f30,0($sp)
    # Line 249
    nop
    # Line 248
    sd	$ra,8($sp)
    # Line 249
    jal	__glOdyim_Indexd
    # Line 248
    mov.d	$f30,$f12
    # Line 250
    # lw $t9, -26928($gp) # &__glim_Indexd
    jal	__glim_Indexd
    mov.d	$f12,$f30
    ld	$ra,8($sp)
    ldc1	$f30,0($sp)
    # Line 251
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexd

# Function: __glOdyim_SoftIndexdv
# Declared: Line 254 (Source lines: 255-258)
# Address: 0x0d9f2d00 - 0x0d9f2d4c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexdv
.ent __glOdyim_SoftIndexdv
__glOdyim_SoftIndexdv:
    # Line 255
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22672
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 256
    # lw $t9, -17880($gp) # &__glOdyim_Indexdv
    # Line 255
    sd	$s8,8($sp)
    # Line 256
    nop
    # Line 255
    sd	$ra,0($sp)
    # Line 256
    jal	__glOdyim_Indexdv
    # Line 255
    move	$s8,$a0
    # Line 257
    # lw $t9, -26912($gp) # &__glim_Indexdv
    jal	__glim_Indexdv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 258
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexdv

# Function: __glOdyim_SoftIndexf
# Declared: Line 261 (Source lines: 262-265)
# Address: 0x0d9f2d50 - 0x0d9f2d9c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexf
.ent __glOdyim_SoftIndexf
__glOdyim_SoftIndexf:
    # Line 262
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22592
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 263
    # lw $t9, -17872($gp) # &__glOdyim_Indexf
    # Line 262
    sdc1	$f30,0($sp)
    # Line 263
    nop
    # Line 262
    sd	$ra,8($sp)
    # Line 263
    jal	__glOdyim_Indexf
    # Line 262
    mov.s	$f30,$f12
    # Line 264
    # lw $t9, -26924($gp) # &__glim_Indexf
    jal	__glim_Indexf
    mov.s	$f12,$f30
    ld	$ra,8($sp)
    ldc1	$f30,0($sp)
    # Line 265
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexf

# Function: __glOdyim_SoftIndexfv
# Declared: Line 268 (Source lines: 269-272)
# Address: 0x0d9f2da0 - 0x0d9f2dec (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexfv
.ent __glOdyim_SoftIndexfv
__glOdyim_SoftIndexfv:
    # Line 269
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22512
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 270
    # lw $t9, -17864($gp) # &__glOdyim_Indexfv
    # Line 269
    sd	$s8,8($sp)
    # Line 270
    nop
    # Line 269
    sd	$ra,0($sp)
    # Line 270
    jal	__glOdyim_Indexfv
    # Line 269
    move	$s8,$a0
    # Line 271
    # lw $t9, -26908($gp) # &__glim_Indexfv
    jal	__glim_Indexfv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 272
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexfv

# Function: __glOdyim_SoftIndexi
# Declared: Line 275 (Source lines: 276-279)
# Address: 0x0d9f2df0 - 0x0d9f2e3c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexi
.ent __glOdyim_SoftIndexi
__glOdyim_SoftIndexi:
    # Line 276
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22432
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 277
    # lw $t9, -17856($gp) # &__glOdyim_Indexi
    # Line 276
    sd	$s8,8($sp)
    # Line 277
    nop
    # Line 276
    sd	$ra,0($sp)
    # Line 277
    jal	__glOdyim_Indexi
    # Line 276
    move	$s8,$a0
    # Line 278
    # lw $t9, -26920($gp) # &__glim_Indexi
    jal	__glim_Indexi
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 279
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexi

# Function: __glOdyim_SoftIndexiv
# Declared: Line 282 (Source lines: 283-286)
# Address: 0x0d9f2e40 - 0x0d9f2e8c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexiv
.ent __glOdyim_SoftIndexiv
__glOdyim_SoftIndexiv:
    # Line 283
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22352
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 284
    # lw $t9, -17848($gp) # &__glOdyim_Indexiv
    # Line 283
    sd	$s8,8($sp)
    # Line 284
    nop
    # Line 283
    sd	$ra,0($sp)
    # Line 284
    jal	__glOdyim_Indexiv
    # Line 283
    move	$s8,$a0
    # Line 285
    # lw $t9, -26904($gp) # &__glim_Indexiv
    jal	__glim_Indexiv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 286
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexiv

# Function: __glOdyim_SoftIndexs
# Declared: Line 289 (Source lines: 290-293)
# Address: 0x0d9f2e90 - 0x0d9f2edc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexs
.ent __glOdyim_SoftIndexs
__glOdyim_SoftIndexs:
    # Line 290
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22272
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 291
    # lw $t9, -17840($gp) # &__glOdyim_Indexs
    # Line 290
    sd	$s8,8($sp)
    # Line 291
    nop
    # Line 290
    sd	$ra,0($sp)
    # Line 291
    jal	__glOdyim_Indexs
    # Line 290
    move	$s8,$a0
    # Line 292
    # lw $t9, -26916($gp) # &__glim_Indexs
    jal	__glim_Indexs
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 293
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexs

# Function: __glOdyim_SoftIndexsv
# Declared: Line 296 (Source lines: 297-300)
# Address: 0x0d9f2ee0 - 0x0d9f2f2c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexsv
.ent __glOdyim_SoftIndexsv
__glOdyim_SoftIndexsv:
    # Line 297
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22192
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 298
    # lw $t9, -17832($gp) # &__glOdyim_Indexsv
    # Line 297
    sd	$s8,8($sp)
    # Line 298
    nop
    # Line 297
    sd	$ra,0($sp)
    # Line 298
    jal	__glOdyim_Indexsv
    # Line 297
    move	$s8,$a0
    # Line 299
    # lw $t9, -26900($gp) # &__glim_Indexsv
    jal	__glim_Indexsv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 300
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexsv

# Function: __glOdyim_SoftIndexub
# Declared: Line 303 (Source lines: 304-307)
# Address: 0x0d9f2f30 - 0x0d9f2f7c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexub
.ent __glOdyim_SoftIndexub
__glOdyim_SoftIndexub:
    # Line 304
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22112
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 305
    # lw $t9, -17824($gp) # &__glOdyim_Indexub
    # Line 304
    sd	$s8,8($sp)
    # Line 305
    nop
    # Line 304
    sd	$ra,0($sp)
    # Line 305
    jal	__glOdyim_Indexub
    # Line 304
    move	$s8,$a0
    # Line 306
    # lw $t9, -26896($gp) # &__glim_Indexub
    jal	__glim_Indexub
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 307
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexub

# Function: __glOdyim_SoftIndexubv
# Declared: Line 310 (Source lines: 311-314)
# Address: 0x0d9f2f80 - 0x0d9f2fcc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftIndexubv
.ent __glOdyim_SoftIndexubv
__glOdyim_SoftIndexubv:
    # Line 311
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,22032
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 312
    # lw $t9, -17816($gp) # &__glOdyim_Indexubv
    # Line 311
    sd	$s8,8($sp)
    # Line 312
    nop
    # Line 311
    sd	$ra,0($sp)
    # Line 312
    jal	__glOdyim_Indexubv
    # Line 311
    move	$s8,$a0
    # Line 313
    # lw $t9, -26892($gp) # &__glim_Indexubv
    jal	__glim_Indexubv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 314
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftIndexubv

# Function: __glOdyim_SoftScratchColor3b
# Declared: Line 317 (Source lines: 318-321)
# Address: 0x0d9f2fd0 - 0x0d9f302c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3b
.ent __glOdyim_SoftScratchColor3b
__glOdyim_SoftScratchColor3b:
    # Line 318
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,21952
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 319
    # lw $t9, -18140($gp) # &__glOdyim_ScratchColor3b
    # Line 318
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 319
    nop
    # Line 318
    sd	$ra,0($sp)
    # Line 319
    jal	__glOdyim_ScratchColor3b
    # Line 318
    move	$s8,$a0
    # Line 320
    # lw $t9, -27032($gp) # &__glim_Color3b
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3b
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 321
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3b

# Function: __glOdyim_SoftScratchColor3bv
# Declared: Line 324 (Source lines: 325-328)
# Address: 0x0d9f3030 - 0x0d9f307c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3bv
.ent __glOdyim_SoftScratchColor3bv
__glOdyim_SoftScratchColor3bv:
    # Line 325
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,21856
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 326
    # lw $t9, -18132($gp) # &__glOdyim_ScratchColor3bv
    # Line 325
    sd	$s8,8($sp)
    # Line 326
    nop
    # Line 325
    sd	$ra,0($sp)
    # Line 326
    jal	__glOdyim_ScratchColor3bv
    # Line 325
    move	$s8,$a0
    # Line 327
    # lw $t9, -27028($gp) # &__glim_Color3bv
    jal	__glim_Color3bv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 328
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3bv

# Function: __glOdyim_SoftScratchColor3d
# Declared: Line 331 (Source lines: 332-335)
# Address: 0x0d9f3080 - 0x0d9f30dc (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3d
.ent __glOdyim_SoftScratchColor3d
__glOdyim_SoftScratchColor3d:
    # Line 332
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sdc1	$f14,8($sp)
    addiu	$at,$at,21776
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 333
    # lw $t9, -18124($gp) # &__glOdyim_ScratchColor3d
    # Line 332
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    # Line 333
    nop
    # Line 332
    sd	$ra,24($sp)
    # Line 333
    jal	__glOdyim_ScratchColor3d
    # Line 332
    mov.d	$f30,$f12
    # Line 334
    # lw $t9, -27024($gp) # &__glim_Color3d
    ldc1	$f13,16($sp)
    mov.d	$f12,$f30
    jal	__glim_Color3d
    ldc1	$f14,8($sp)
    ld	$ra,24($sp)
    ldc1	$f30,0($sp)
    # Line 335
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3d

# Function: __glOdyim_SoftScratchColor3dv
# Declared: Line 338 (Source lines: 339-342)
# Address: 0x0d9f30e0 - 0x0d9f312c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3dv
.ent __glOdyim_SoftScratchColor3dv
__glOdyim_SoftScratchColor3dv:
    # Line 339
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,21680
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 340
    # lw $t9, -18116($gp) # &__glOdyim_ScratchColor3dv
    # Line 339
    sd	$s8,8($sp)
    # Line 340
    nop
    # Line 339
    sd	$ra,0($sp)
    # Line 340
    jal	__glOdyim_ScratchColor3dv
    # Line 339
    move	$s8,$a0
    # Line 341
    # lw $t9, -27020($gp) # &__glim_Color3dv
    jal	__glim_Color3dv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 342
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3dv

# Function: __glOdyim_SoftScratchColor3f
# Declared: Line 345 (Source lines: 346-349)
# Address: 0x0d9f3130 - 0x0d9f318c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3f
.ent __glOdyim_SoftScratchColor3f
__glOdyim_SoftScratchColor3f:
    # Line 346
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sdc1	$f14,8($sp)
    addiu	$at,$at,21600
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 347
    # lw $t9, -18108($gp) # &__glOdyim_ScratchColor3f
    # Line 346
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    # Line 347
    nop
    # Line 346
    sd	$ra,24($sp)
    # Line 347
    jal	__glOdyim_ScratchColor3f
    # Line 346
    mov.s	$f30,$f12
    # Line 348
    # lw $t9, -17796($gp) # &__glim_Color3f
    ldc1	$f13,16($sp)
    mov.s	$f12,$f30
    jal	__glim_Color3f
    ldc1	$f14,8($sp)
    ld	$ra,24($sp)
    ldc1	$f30,0($sp)
    # Line 349
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3f

# Function: __glOdyim_SoftScratchColor3fv
# Declared: Line 352 (Source lines: 353-356)
# Address: 0x0d9f3190 - 0x0d9f31dc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3fv
.ent __glOdyim_SoftScratchColor3fv
__glOdyim_SoftScratchColor3fv:
    # Line 353
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,21504
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 354
    # lw $t9, -18100($gp) # &__glOdyim_ScratchColor3fv
    # Line 353
    sd	$s8,8($sp)
    # Line 354
    nop
    # Line 353
    sd	$ra,0($sp)
    # Line 354
    jal	__glOdyim_ScratchColor3fv
    # Line 353
    move	$s8,$a0
    # Line 355
    # lw $t9, -17792($gp) # &__glim_Color3fv
    jal	__glim_Color3fv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 356
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3fv

# Function: __glOdyim_SoftScratchColor3i
# Declared: Line 359 (Source lines: 360-363)
# Address: 0x0d9f31e0 - 0x0d9f323c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3i
.ent __glOdyim_SoftScratchColor3i
__glOdyim_SoftScratchColor3i:
    # Line 360
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,21424
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 361
    # lw $t9, -18092($gp) # &__glOdyim_ScratchColor3i
    # Line 360
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 361
    nop
    # Line 360
    sd	$ra,0($sp)
    # Line 361
    jal	__glOdyim_ScratchColor3i
    # Line 360
    move	$s8,$a0
    # Line 362
    # lw $t9, -27016($gp) # &__glim_Color3i
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3i
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 363
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3i

# Function: __glOdyim_SoftScratchColor3iv
# Declared: Line 366 (Source lines: 367-370)
# Address: 0x0d9f3240 - 0x0d9f328c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3iv
.ent __glOdyim_SoftScratchColor3iv
__glOdyim_SoftScratchColor3iv:
    # Line 367
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,21328
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 368
    # lw $t9, -18084($gp) # &__glOdyim_ScratchColor3iv
    # Line 367
    sd	$s8,8($sp)
    # Line 368
    nop
    # Line 367
    sd	$ra,0($sp)
    # Line 368
    jal	__glOdyim_ScratchColor3iv
    # Line 367
    move	$s8,$a0
    # Line 369
    # lw $t9, -27012($gp) # &__glim_Color3iv
    jal	__glim_Color3iv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 370
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3iv

# Function: __glOdyim_SoftScratchColor3s
# Declared: Line 373 (Source lines: 374-377)
# Address: 0x0d9f3290 - 0x0d9f32ec (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3s
.ent __glOdyim_SoftScratchColor3s
__glOdyim_SoftScratchColor3s:
    # Line 374
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,21248
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 375
    # lw $t9, -18076($gp) # &__glOdyim_ScratchColor3s
    # Line 374
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 375
    nop
    # Line 374
    sd	$ra,0($sp)
    # Line 375
    jal	__glOdyim_ScratchColor3s
    # Line 374
    move	$s8,$a0
    # Line 376
    # lw $t9, -27000($gp) # &__glim_Color3s
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3s
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 377
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3s

# Function: __glOdyim_SoftScratchColor3sv
# Declared: Line 380 (Source lines: 381-384)
# Address: 0x0d9f32f0 - 0x0d9f333c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3sv
.ent __glOdyim_SoftScratchColor3sv
__glOdyim_SoftScratchColor3sv:
    # Line 381
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,21152
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 382
    # lw $t9, -18068($gp) # &__glOdyim_ScratchColor3sv
    # Line 381
    sd	$s8,8($sp)
    # Line 382
    nop
    # Line 381
    sd	$ra,0($sp)
    # Line 382
    jal	__glOdyim_ScratchColor3sv
    # Line 381
    move	$s8,$a0
    # Line 383
    # lw $t9, -26996($gp) # &__glim_Color3sv
    jal	__glim_Color3sv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 384
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3sv

# Function: __glOdyim_SoftScratchColor3ub
# Declared: Line 387 (Source lines: 388-391)
# Address: 0x0d9f3340 - 0x0d9f339c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3ub
.ent __glOdyim_SoftScratchColor3ub
__glOdyim_SoftScratchColor3ub:
    # Line 388
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,21072
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 389
    # lw $t9, -18060($gp) # &__glOdyim_ScratchColor3ub
    # Line 388
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 389
    nop
    # Line 388
    sd	$ra,0($sp)
    # Line 389
    jal	__glOdyim_ScratchColor3ub
    # Line 388
    move	$s8,$a0
    # Line 390
    # lw $t9, -27040($gp) # &__glim_Color3ub
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3ub
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 391
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3ub

# Function: __glOdyim_SoftScratchColor3ubv
# Declared: Line 394 (Source lines: 395-398)
# Address: 0x0d9f33a0 - 0x0d9f33ec (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3ubv
.ent __glOdyim_SoftScratchColor3ubv
__glOdyim_SoftScratchColor3ubv:
    # Line 395
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,20976
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 396
    # lw $t9, -18052($gp) # &__glOdyim_ScratchColor3ubv
    # Line 395
    sd	$s8,8($sp)
    # Line 396
    nop
    # Line 395
    sd	$ra,0($sp)
    # Line 396
    jal	__glOdyim_ScratchColor3ubv
    # Line 395
    move	$s8,$a0
    # Line 397
    # lw $t9, -27036($gp) # &__glim_Color3ubv
    jal	__glim_Color3ubv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 398
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3ubv

# Function: __glOdyim_SoftScratchColor3ui
# Declared: Line 401 (Source lines: 402-405)
# Address: 0x0d9f33f0 - 0x0d9f344c (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3ui
.ent __glOdyim_SoftScratchColor3ui
__glOdyim_SoftScratchColor3ui:
    # Line 402
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,20896
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 403
    # lw $t9, -18044($gp) # &__glOdyim_ScratchColor3ui
    # Line 402
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 403
    nop
    # Line 402
    sd	$ra,0($sp)
    # Line 403
    jal	__glOdyim_ScratchColor3ui
    # Line 402
    move	$s8,$a0
    # Line 404
    # lw $t9, -27008($gp) # &__glim_Color3ui
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3ui
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 405
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3ui

# Function: __glOdyim_SoftScratchColor3uiv
# Declared: Line 408 (Source lines: 409-412)
# Address: 0x0d9f3450 - 0x0d9f349c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3uiv
.ent __glOdyim_SoftScratchColor3uiv
__glOdyim_SoftScratchColor3uiv:
    # Line 409
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,20800
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 410
    # lw $t9, -18036($gp) # &__glOdyim_ScratchColor3uiv
    # Line 409
    sd	$s8,8($sp)
    # Line 410
    nop
    # Line 409
    sd	$ra,0($sp)
    # Line 410
    jal	__glOdyim_ScratchColor3uiv
    # Line 409
    move	$s8,$a0
    # Line 411
    # lw $t9, -27004($gp) # &__glim_Color3uiv
    jal	__glim_Color3uiv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 412
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3uiv

# Function: __glOdyim_SoftScratchColor3us
# Declared: Line 415 (Source lines: 416-419)
# Address: 0x0d9f34a0 - 0x0d9f34fc (Size: 92 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor3us
.ent __glOdyim_SoftScratchColor3us
__glOdyim_SoftScratchColor3us:
    # Line 416
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$a2,24($sp)
    addiu	$at,$at,20720
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 417
    # lw $t9, -18028($gp) # &__glOdyim_ScratchColor3us
    # Line 416
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    # Line 417
    nop
    # Line 416
    sd	$ra,0($sp)
    # Line 417
    jal	__glOdyim_ScratchColor3us
    # Line 416
    move	$s8,$a0
    # Line 418
    # lw $t9, -26992($gp) # &__glim_Color3us
    ld	$a1,32($sp)
    move	$a0,$s8
    jal	__glim_Color3us
    ld	$a2,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 419
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor3us

# Function: __glOdyim_SoftScratchColor3usv
# Declared: Line 422 (Source lines: 423-426)
# Address: 0x0d9f3500 - 0x0d9f354c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor3usv
.ent __glOdyim_SoftScratchColor3usv
__glOdyim_SoftScratchColor3usv:
    # Line 423
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,20624
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 424
    # lw $t9, -18020($gp) # &__glOdyim_ScratchColor3usv
    # Line 423
    sd	$s8,8($sp)
    # Line 424
    nop
    # Line 423
    sd	$ra,0($sp)
    # Line 424
    jal	__glOdyim_ScratchColor3usv
    # Line 423
    move	$s8,$a0
    # Line 425
    # lw $t9, -26988($gp) # &__glim_Color3usv
    jal	__glim_Color3usv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 426
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor3usv

# Function: __glOdyim_SoftScratchColor4b
# Declared: Line 429 (Source lines: 430-433)
# Address: 0x0d9f3550 - 0x0d9f35b4 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4b
.ent __glOdyim_SoftScratchColor4b
__glOdyim_SoftScratchColor4b:
    # Line 430
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,20544
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 431
    # lw $t9, -18012($gp) # &__glOdyim_ScratchColor4b
    # Line 430
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 431
    nop
    # Line 430
    sd	$ra,0($sp)
    # Line 431
    jal	__glOdyim_ScratchColor4b
    # Line 430
    move	$s8,$a0
    # Line 432
    # lw $t9, -26976($gp) # &__glim_Color4b
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4b
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 433
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4b

# Function: __glOdyim_SoftScratchColor4bv
# Declared: Line 436 (Source lines: 437-440)
# Address: 0x0d9f35c0 - 0x0d9f360c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4bv
.ent __glOdyim_SoftScratchColor4bv
__glOdyim_SoftScratchColor4bv:
    # Line 437
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,20432
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 438
    # lw $t9, -18004($gp) # &__glOdyim_ScratchColor4bv
    # Line 437
    sd	$s8,8($sp)
    # Line 438
    nop
    # Line 437
    sd	$ra,0($sp)
    # Line 438
    jal	__glOdyim_ScratchColor4bv
    # Line 437
    move	$s8,$a0
    # Line 439
    # lw $t9, -26972($gp) # &__glim_Color4bv
    jal	__glim_Color4bv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 440
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4bv

# Function: __glOdyim_SoftScratchColor4d
# Declared: Line 443 (Source lines: 444-447)
# Address: 0x0d9f3610 - 0x0d9f3674 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4d
.ent __glOdyim_SoftScratchColor4d
__glOdyim_SoftScratchColor4d:
    # Line 444
    addiu	$sp,$sp,-48
    sdc1	$f15,8($sp)
    lui	$at,0x10
    sdc1	$f14,16($sp)
    addiu	$at,$at,20352
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 445
    # lw $t9, -17996($gp) # &__glOdyim_ScratchColor4d
    # Line 444
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    # Line 445
    nop
    # Line 444
    sd	$ra,32($sp)
    # Line 445
    jal	__glOdyim_ScratchColor4d
    # Line 444
    mov.d	$f30,$f12
    # Line 446
    # lw $t9, -26968($gp) # &__glim_Color4d
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    mov.d	$f12,$f30
    jal	__glim_Color4d
    ldc1	$f15,8($sp)
    ld	$ra,32($sp)
    ldc1	$f30,0($sp)
    # Line 447
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4d

# Function: __glOdyim_SoftScratchColor4dv
# Declared: Line 450 (Source lines: 451-454)
# Address: 0x0d9f3680 - 0x0d9f36cc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4dv
.ent __glOdyim_SoftScratchColor4dv
__glOdyim_SoftScratchColor4dv:
    # Line 451
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,20240
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 452
    # lw $t9, -17988($gp) # &__glOdyim_ScratchColor4dv
    # Line 451
    sd	$s8,8($sp)
    # Line 452
    nop
    # Line 451
    sd	$ra,0($sp)
    # Line 452
    jal	__glOdyim_ScratchColor4dv
    # Line 451
    move	$s8,$a0
    # Line 453
    # lw $t9, -26964($gp) # &__glim_Color4dv
    jal	__glim_Color4dv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 454
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4dv

# Function: __glOdyim_SoftScratchColor4f
# Declared: Line 457 (Source lines: 458-461)
# Address: 0x0d9f36d0 - 0x0d9f3734 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4f
.ent __glOdyim_SoftScratchColor4f
__glOdyim_SoftScratchColor4f:
    # Line 458
    addiu	$sp,$sp,-48
    sdc1	$f15,8($sp)
    lui	$at,0x10
    sdc1	$f14,16($sp)
    addiu	$at,$at,20160
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 459
    # lw $t9, -17980($gp) # &__glOdyim_ScratchColor4f
    # Line 458
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    # Line 459
    nop
    # Line 458
    sd	$ra,32($sp)
    # Line 459
    jal	__glOdyim_ScratchColor4f
    # Line 458
    mov.s	$f30,$f12
    # Line 460
    # lw $t9, -17788($gp) # &__glim_Color4f
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    mov.s	$f12,$f30
    jal	__glim_Color4f
    ldc1	$f15,8($sp)
    ld	$ra,32($sp)
    ldc1	$f30,0($sp)
    # Line 461
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4f

# Function: __glOdyim_SoftScratchColor4fv
# Declared: Line 464 (Source lines: 465-468)
# Address: 0x0d9f3740 - 0x0d9f378c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4fv
.ent __glOdyim_SoftScratchColor4fv
__glOdyim_SoftScratchColor4fv:
    # Line 465
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,20048
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 466
    # lw $t9, -17972($gp) # &__glOdyim_ScratchColor4fv
    # Line 465
    sd	$s8,8($sp)
    # Line 466
    nop
    # Line 465
    sd	$ra,0($sp)
    # Line 466
    jal	__glOdyim_ScratchColor4fv
    # Line 465
    move	$s8,$a0
    # Line 467
    # lw $t9, -17784($gp) # &__glim_Color4fv
    jal	__glim_Color4fv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 468
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4fv

# Function: __glOdyim_SoftScratchColor4i
# Declared: Line 471 (Source lines: 472-475)
# Address: 0x0d9f3790 - 0x0d9f37f4 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4i
.ent __glOdyim_SoftScratchColor4i
__glOdyim_SoftScratchColor4i:
    # Line 472
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,19968
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 473
    # lw $t9, -17964($gp) # &__glOdyim_ScratchColor4i
    # Line 472
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 473
    nop
    # Line 472
    sd	$ra,0($sp)
    # Line 473
    jal	__glOdyim_ScratchColor4i
    # Line 472
    move	$s8,$a0
    # Line 474
    # lw $t9, -26960($gp) # &__glim_Color4i
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4i
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 475
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4i

# Function: __glOdyim_SoftScratchColor4iv
# Declared: Line 478 (Source lines: 479-482)
# Address: 0x0d9f3800 - 0x0d9f384c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4iv
.ent __glOdyim_SoftScratchColor4iv
__glOdyim_SoftScratchColor4iv:
    # Line 479
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,19856
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 480
    # lw $t9, -17956($gp) # &__glOdyim_ScratchColor4iv
    # Line 479
    sd	$s8,8($sp)
    # Line 480
    nop
    # Line 479
    sd	$ra,0($sp)
    # Line 480
    jal	__glOdyim_ScratchColor4iv
    # Line 479
    move	$s8,$a0
    # Line 481
    # lw $t9, -26956($gp) # &__glim_Color4iv
    jal	__glim_Color4iv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 482
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4iv

# Function: __glOdyim_SoftScratchColor4s
# Declared: Line 485 (Source lines: 486-489)
# Address: 0x0d9f3850 - 0x0d9f38b4 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4s
.ent __glOdyim_SoftScratchColor4s
__glOdyim_SoftScratchColor4s:
    # Line 486
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,19776
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 487
    # lw $t9, -17948($gp) # &__glOdyim_ScratchColor4s
    # Line 486
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 487
    nop
    # Line 486
    sd	$ra,0($sp)
    # Line 487
    jal	__glOdyim_ScratchColor4s
    # Line 486
    move	$s8,$a0
    # Line 488
    # lw $t9, -26944($gp) # &__glim_Color4s
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4s
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 489
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4s

# Function: __glOdyim_SoftScratchColor4sv
# Declared: Line 492 (Source lines: 493-496)
# Address: 0x0d9f38c0 - 0x0d9f390c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4sv
.ent __glOdyim_SoftScratchColor4sv
__glOdyim_SoftScratchColor4sv:
    # Line 493
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,19664
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 494
    # lw $t9, -17940($gp) # &__glOdyim_ScratchColor4sv
    # Line 493
    sd	$s8,8($sp)
    # Line 494
    nop
    # Line 493
    sd	$ra,0($sp)
    # Line 494
    jal	__glOdyim_ScratchColor4sv
    # Line 493
    move	$s8,$a0
    # Line 495
    # lw $t9, -26940($gp) # &__glim_Color4sv
    jal	__glim_Color4sv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 496
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4sv

# Function: __glOdyim_SoftScratchColor4ub
# Declared: Line 499 (Source lines: 500-503)
# Address: 0x0d9f3910 - 0x0d9f3974 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4ub
.ent __glOdyim_SoftScratchColor4ub
__glOdyim_SoftScratchColor4ub:
    # Line 500
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,19584
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 501
    # lw $t9, -17932($gp) # &__glOdyim_ScratchColor4ub
    # Line 500
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 501
    nop
    # Line 500
    sd	$ra,0($sp)
    # Line 501
    jal	__glOdyim_ScratchColor4ub
    # Line 500
    move	$s8,$a0
    # Line 502
    # lw $t9, -26984($gp) # &__glim_Color4ub
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4ub
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 503
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4ub

# Function: __glOdyim_SoftScratchColor4ubv
# Declared: Line 506 (Source lines: 507-510)
# Address: 0x0d9f3980 - 0x0d9f39cc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4ubv
.ent __glOdyim_SoftScratchColor4ubv
__glOdyim_SoftScratchColor4ubv:
    # Line 507
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,19472
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 508
    # lw $t9, -17924($gp) # &__glOdyim_ScratchColor4ubv
    # Line 507
    sd	$s8,8($sp)
    # Line 508
    nop
    # Line 507
    sd	$ra,0($sp)
    # Line 508
    jal	__glOdyim_ScratchColor4ubv
    # Line 507
    move	$s8,$a0
    # Line 509
    # lw $t9, -26980($gp) # &__glim_Color4ubv
    jal	__glim_Color4ubv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 510
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4ubv

# Function: __glOdyim_SoftScratchColor4ui
# Declared: Line 513 (Source lines: 514-517)
# Address: 0x0d9f39d0 - 0x0d9f3a34 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4ui
.ent __glOdyim_SoftScratchColor4ui
__glOdyim_SoftScratchColor4ui:
    # Line 514
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,19392
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 515
    # lw $t9, -17916($gp) # &__glOdyim_ScratchColor4ui
    # Line 514
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 515
    nop
    # Line 514
    sd	$ra,0($sp)
    # Line 515
    jal	__glOdyim_ScratchColor4ui
    # Line 514
    move	$s8,$a0
    # Line 516
    # lw $t9, -26952($gp) # &__glim_Color4ui
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4ui
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 517
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4ui

# Function: __glOdyim_SoftScratchColor4uiv
# Declared: Line 520 (Source lines: 521-524)
# Address: 0x0d9f3a40 - 0x0d9f3a8c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4uiv
.ent __glOdyim_SoftScratchColor4uiv
__glOdyim_SoftScratchColor4uiv:
    # Line 521
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,19280
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 522
    # lw $t9, -17908($gp) # &__glOdyim_ScratchColor4uiv
    # Line 521
    sd	$s8,8($sp)
    # Line 522
    nop
    # Line 521
    sd	$ra,0($sp)
    # Line 522
    jal	__glOdyim_ScratchColor4uiv
    # Line 521
    move	$s8,$a0
    # Line 523
    # lw $t9, -26948($gp) # &__glim_Color4uiv
    jal	__glim_Color4uiv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 524
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4uiv

# Function: __glOdyim_SoftScratchColor4us
# Declared: Line 527 (Source lines: 528-531)
# Address: 0x0d9f3a90 - 0x0d9f3af4 (Size: 100 bytes, Frame: 48)
.globl __glOdyim_SoftScratchColor4us
.ent __glOdyim_SoftScratchColor4us
__glOdyim_SoftScratchColor4us:
    # Line 528
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    lui	$at,0x10
    sd	$a2,32($sp)
    addiu	$at,$at,19200
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 529
    # lw $t9, -17900($gp) # &__glOdyim_ScratchColor4us
    # Line 528
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    # Line 529
    nop
    # Line 528
    sd	$ra,0($sp)
    # Line 529
    jal	__glOdyim_ScratchColor4us
    # Line 528
    move	$s8,$a0
    # Line 530
    # lw $t9, -26936($gp) # &__glim_Color4us
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jal	__glim_Color4us
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 531
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdyim_SoftScratchColor4us

# Function: __glOdyim_SoftScratchColor4usv
# Declared: Line 534 (Source lines: 535-538)
# Address: 0x0d9f3b00 - 0x0d9f3b4c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchColor4usv
.ent __glOdyim_SoftScratchColor4usv
__glOdyim_SoftScratchColor4usv:
    # Line 535
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,19088
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 536
    # lw $t9, -17892($gp) # &__glOdyim_ScratchColor4usv
    # Line 535
    sd	$s8,8($sp)
    # Line 536
    nop
    # Line 535
    sd	$ra,0($sp)
    # Line 536
    jal	__glOdyim_ScratchColor4usv
    # Line 535
    move	$s8,$a0
    # Line 537
    # lw $t9, -26932($gp) # &__glim_Color4usv
    jal	__glim_Color4usv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 538
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchColor4usv

# Function: __glOdyim_SoftScratchIndexd
# Declared: Line 541 (Source lines: 542-545)
# Address: 0x0d9f3b50 - 0x0d9f3b9c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexd
.ent __glOdyim_SoftScratchIndexd
__glOdyim_SoftScratchIndexd:
    # Line 542
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,19008
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 543
    # lw $t9, -17884($gp) # &__glOdyim_ScratchIndexd
    # Line 542
    sdc1	$f30,0($sp)
    # Line 543
    nop
    # Line 542
    sd	$ra,8($sp)
    # Line 543
    jal	__glOdyim_ScratchIndexd
    # Line 542
    mov.d	$f30,$f12
    # Line 544
    # lw $t9, -26928($gp) # &__glim_Indexd
    jal	__glim_Indexd
    mov.d	$f12,$f30
    ld	$ra,8($sp)
    ldc1	$f30,0($sp)
    # Line 545
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexd

# Function: __glOdyim_SoftScratchIndexdv
# Declared: Line 548 (Source lines: 549-552)
# Address: 0x0d9f3ba0 - 0x0d9f3bec (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexdv
.ent __glOdyim_SoftScratchIndexdv
__glOdyim_SoftScratchIndexdv:
    # Line 549
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18928
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 550
    # lw $t9, -17876($gp) # &__glOdyim_ScratchIndexdv
    # Line 549
    sd	$s8,8($sp)
    # Line 550
    nop
    # Line 549
    sd	$ra,0($sp)
    # Line 550
    jal	__glOdyim_ScratchIndexdv
    # Line 549
    move	$s8,$a0
    # Line 551
    # lw $t9, -26912($gp) # &__glim_Indexdv
    jal	__glim_Indexdv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 552
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexdv

# Function: __glOdyim_SoftScratchIndexf
# Declared: Line 555 (Source lines: 556-559)
# Address: 0x0d9f3bf0 - 0x0d9f3c3c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexf
.ent __glOdyim_SoftScratchIndexf
__glOdyim_SoftScratchIndexf:
    # Line 556
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18848
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 557
    # lw $t9, -17868($gp) # &__glOdyim_ScratchIndexf
    # Line 556
    sdc1	$f30,0($sp)
    # Line 557
    nop
    # Line 556
    sd	$ra,8($sp)
    # Line 557
    jal	__glOdyim_ScratchIndexf
    # Line 556
    mov.s	$f30,$f12
    # Line 558
    # lw $t9, -26924($gp) # &__glim_Indexf
    jal	__glim_Indexf
    mov.s	$f12,$f30
    ld	$ra,8($sp)
    ldc1	$f30,0($sp)
    # Line 559
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexf

# Function: __glOdyim_SoftScratchIndexfv
# Declared: Line 562 (Source lines: 563-566)
# Address: 0x0d9f3c40 - 0x0d9f3c8c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexfv
.ent __glOdyim_SoftScratchIndexfv
__glOdyim_SoftScratchIndexfv:
    # Line 563
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18768
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 564
    # lw $t9, -17860($gp) # &__glOdyim_ScratchIndexfv
    # Line 563
    sd	$s8,8($sp)
    # Line 564
    nop
    # Line 563
    sd	$ra,0($sp)
    # Line 564
    jal	__glOdyim_ScratchIndexfv
    # Line 563
    move	$s8,$a0
    # Line 565
    # lw $t9, -26908($gp) # &__glim_Indexfv
    jal	__glim_Indexfv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 566
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexfv

# Function: __glOdyim_SoftScratchIndexi
# Declared: Line 569 (Source lines: 570-573)
# Address: 0x0d9f3c90 - 0x0d9f3cdc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexi
.ent __glOdyim_SoftScratchIndexi
__glOdyim_SoftScratchIndexi:
    # Line 570
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18688
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 571
    # lw $t9, -17852($gp) # &__glOdyim_ScratchIndexi
    # Line 570
    sd	$s8,8($sp)
    # Line 571
    nop
    # Line 570
    sd	$ra,0($sp)
    # Line 571
    jal	__glOdyim_ScratchIndexi
    # Line 570
    move	$s8,$a0
    # Line 572
    # lw $t9, -26920($gp) # &__glim_Indexi
    jal	__glim_Indexi
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 573
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexi

# Function: __glOdyim_SoftScratchIndexiv
# Declared: Line 576 (Source lines: 577-580)
# Address: 0x0d9f3ce0 - 0x0d9f3d2c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexiv
.ent __glOdyim_SoftScratchIndexiv
__glOdyim_SoftScratchIndexiv:
    # Line 577
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18608
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 578
    # lw $t9, -17844($gp) # &__glOdyim_ScratchIndexiv
    # Line 577
    sd	$s8,8($sp)
    # Line 578
    nop
    # Line 577
    sd	$ra,0($sp)
    # Line 578
    jal	__glOdyim_ScratchIndexiv
    # Line 577
    move	$s8,$a0
    # Line 579
    # lw $t9, -26904($gp) # &__glim_Indexiv
    jal	__glim_Indexiv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 580
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexiv

# Function: __glOdyim_SoftScratchIndexs
# Declared: Line 583 (Source lines: 584-587)
# Address: 0x0d9f3d30 - 0x0d9f3d7c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexs
.ent __glOdyim_SoftScratchIndexs
__glOdyim_SoftScratchIndexs:
    # Line 584
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18528
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 585
    # lw $t9, -17836($gp) # &__glOdyim_ScratchIndexs
    # Line 584
    sd	$s8,8($sp)
    # Line 585
    nop
    # Line 584
    sd	$ra,0($sp)
    # Line 585
    jal	__glOdyim_ScratchIndexs
    # Line 584
    move	$s8,$a0
    # Line 586
    # lw $t9, -26916($gp) # &__glim_Indexs
    jal	__glim_Indexs
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 587
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexs

# Function: __glOdyim_SoftScratchIndexsv
# Declared: Line 590 (Source lines: 591-594)
# Address: 0x0d9f3d80 - 0x0d9f3dcc (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexsv
.ent __glOdyim_SoftScratchIndexsv
__glOdyim_SoftScratchIndexsv:
    # Line 591
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18448
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 592
    # lw $t9, -17828($gp) # &__glOdyim_ScratchIndexsv
    # Line 591
    sd	$s8,8($sp)
    # Line 592
    nop
    # Line 591
    sd	$ra,0($sp)
    # Line 592
    jal	__glOdyim_ScratchIndexsv
    # Line 591
    move	$s8,$a0
    # Line 593
    # lw $t9, -26900($gp) # &__glim_Indexsv
    jal	__glim_Indexsv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 594
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexsv

# Function: __glOdyim_SoftScratchIndexub
# Declared: Line 597 (Source lines: 598-601)
# Address: 0x0d9f3dd0 - 0x0d9f3e1c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexub
.ent __glOdyim_SoftScratchIndexub
__glOdyim_SoftScratchIndexub:
    # Line 598
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18368
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 599
    # lw $t9, -17820($gp) # &__glOdyim_ScratchIndexub
    # Line 598
    sd	$s8,8($sp)
    # Line 599
    nop
    # Line 598
    sd	$ra,0($sp)
    # Line 599
    jal	__glOdyim_ScratchIndexub
    # Line 598
    move	$s8,$a0
    # Line 600
    # lw $t9, -26896($gp) # &__glim_Indexub
    jal	__glim_Indexub
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 601
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexub

# Function: __glOdyim_SoftScratchIndexubv
# Declared: Line 604 (Source lines: 605-608)
# Address: 0x0d9f3e20 - 0x0d9f3e6c (Size: 76 bytes, Frame: 32)
.globl __glOdyim_SoftScratchIndexubv
.ent __glOdyim_SoftScratchIndexubv
__glOdyim_SoftScratchIndexubv:
    # Line 605
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,18288
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 606
    # lw $t9, -17812($gp) # &__glOdyim_ScratchIndexubv
    # Line 605
    sd	$s8,8($sp)
    # Line 606
    nop
    # Line 605
    sd	$ra,0($sp)
    # Line 606
    jal	__glOdyim_ScratchIndexubv
    # Line 605
    move	$s8,$a0
    # Line 607
    # lw $t9, -26892($gp) # &__glim_Indexubv
    jal	__glim_Indexubv
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 608
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_SoftScratchIndexubv

