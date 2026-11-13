# Source: ../ODYSSEY/ody_lighting.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_lighting.c
# Total Functions: 14

.text

# Function: __glOdysseyInitLighting
# Declared: Line 29 (Source lines: 29-178)
# Address: 0x0d9c2230 - 0x0d9c2588 (Size: 856 bytes, Frame: 0)
.globl __glOdysseyInitLighting
.ent __glOdysseyInitLighting
__glOdysseyInitLighting:
    # Line 29
    lui	$a6,0x13
    addiu	$a6,$a6,25440
    addu	$at,$t9,$a6
    # Line 38
    lui	$a6,0x1
    addu	$a3,$a6,$a0
    li	$a5,255
    sw	$a5,26984($a3)
    # Line 40
    lui	$a2,0xc180
    # Line 41
    mtc1	$zero,$f6
    # Line 38
    sw	$a5,26988($a3)
    # Line 40
    ori	$a4,$a2,0x93ff
    sw	$a4,0($a6)
    # Line 41
    swc1	$f6,0($a6)
    # Line 42
    swc1	$f6,0($a6)
    # Line 56
    lwc1	$f0,_lit_3f4ccccd
    # Line 43
    lwc1	$f4,_lit_3f800000
    # Line 51
    lwc1	$f5,_lit_3e4ccccd
    # Line 43
    swc1	$f4,0($a6)
    # Line 44
    swc1	$f4,0($a6)
    # Line 45
    ori	$a2,$a2,0xcc19
    sw	$a2,0($a6)
    # Line 46
    swc1	$f6,0($a6)
    # Line 47
    swc1	$f6,0($a6)
    # Line 50
    lui	$a1,0xc680
    # Line 48
    swc1	$f4,0($a6)
    # Line 50
    ori	$a1,$a1,0xd02f
    sw	$a1,0($a6)
    # Line 51
    swc1	$f5,0($a6)
    # Line 52
    swc1	$f5,0($a6)
    # Line 53
    swc1	$f5,0($a6)
    # Line 55
    lui	$v1,0xc780
    # Line 54
    swc1	$f4,0($a6)
    # Line 55
    ori	$v1,$v1,0xd030
    sw	$v1,0($a6)
    # Line 56
    swc1	$f0,0($a6)
    # Line 57
    swc1	$f0,0($a6)
    # Line 58
    swc1	$f0,0($a6)
    # Line 60
    lui	$v0,0xc880
    # Line 59
    swc1	$f4,0($a6)
    # Line 60
    ori	$v0,$v0,0xd031
    sw	$v0,0($a6)
    # Line 61
    swc1	$f6,0($a6)
    # Line 62
    swc1	$f6,0($a6)
    # Line 63
    swc1	$f6,0($a6)
    # Line 65
    lui	$t9,0xc980
    # Line 64
    swc1	$f4,0($a6)
    # Line 65
    ori	$t9,$t9,0xd032
    sw	$t9,0($a6)
    # Line 66
    swc1	$f6,0($a6)
    # Line 67
    swc1	$f6,0($a6)
    # Line 68
    swc1	$f6,0($a6)
    # Line 71
    lui	$t8,0xca80
    # Line 69
    swc1	$f4,0($a6)
    # Line 71
    ori	$t8,$t8,0xd035
    sw	$t8,0($a6)
    # Line 72
    swc1	$f5,0($a6)
    # Line 73
    swc1	$f5,0($a6)
    # Line 74
    swc1	$f5,0($a6)
    # Line 76
    lui	$t3,0xcb80
    # Line 75
    swc1	$f4,0($a6)
    # Line 76
    ori	$t3,$t3,0xd036
    sw	$t3,0($a6)
    # Line 77
    swc1	$f0,0($a6)
    # Line 78
    swc1	$f0,0($a6)
    # Line 79
    swc1	$f0,0($a6)
    # Line 81
    lui	$t2,0xcc80
    # Line 80
    swc1	$f4,0($a6)
    # Line 81
    ori	$t2,$t2,0xd037
    sw	$t2,0($a6)
    # Line 82
    swc1	$f6,0($a6)
    # Line 83
    swc1	$f6,0($a6)
    # Line 84
    swc1	$f6,0($a6)
    # Line 86
    lui	$t1,0xcd80
    # Line 85
    swc1	$f4,0($a6)
    # Line 86
    ori	$t1,$t1,0xd038
    sw	$t1,0($a6)
    # Line 87
    swc1	$f6,0($a6)
    # Line 88
    swc1	$f6,0($a6)
    # Line 89
    swc1	$f6,0($a6)
    # Line 90
    swc1	$f4,0($a6)
    # Line 93
    li	$t0,240
    sw	$t0,-24040($a3)
    # Line 102
    lw	$a4,-24040($a3)
    lw	$a7,-24040($a3)
    lui	$a5,0x3100
    srl	$a7,$a7,0xa
    andi	$a4,$a4,0x3ff
    sll	$a7,$a7,0x17
    ori	$a5,$a5,0x8000
    or	$a4,$a4,$a7
    # Line 103
    lui	$a2,0x9080
    # Line 102
    or	$a4,$a5,$a4
    sw	$a4,0($a6)
    # Line 103
    ori	$a2,$a2,0x91bb
    sw	$a2,0($a6)
    # Line 104
    swc1	$f6,0($a6)
    # Line 105
    swc1	$f6,0($a6)
    # Line 106
    swc1	$f6,0($a6)
    # Line 107
    swc1	$f6,0($a6)
    # Line 110
    li	$t0,244
    sw	$t0,-24040($a3)
    # Line 118
    lw	$a4,-24040($a3)
    lw	$a7,-24040($a3)
    srl	$a7,$a7,0xa
    andi	$a4,$a4,0x3ff
    sll	$a7,$a7,0x17
    or	$a4,$a4,$a7
    or	$a4,$a5,$a4
    sw	$a4,0($a6)
    # Line 119
    sw	$a2,0($a6)
    # Line 120
    swc1	$f6,0($a6)
    # Line 121
    swc1	$f6,0($a6)
    # Line 122
    swc1	$f6,0($a6)
    # Line 123
    swc1	$f6,0($a6)
    # Line 126
    lw	$a4,-24072($a3)
    # Line 127
    li	$a1,410
    sw	$a1,-24072($a3)
    # Line 128
    li	$v1,24
    sw	$v1,-24036($a3)
    lbu	$v0,3220($a0)
    beqz	$v0,.L0d9c2574
    nop
    # Line 137
    swc1	$f4,-24128($a3)
    # Line 136
    swc1	$f5,-24132($a3)
    # Line 135
    swc1	$f5,-24136($a3)
    # Line 134
    swc1	$f5,-24140($a3)
.L0d9c2428:
    # Line 151
    lw	$t2,-24072($a3)
    lw	$t3,-24072($a3)
    lui	$v0,0x2900
    srl	$t3,$t3,0xa
    andi	$t2,$t2,0x3ff
    sll	$t3,$t3,0x17
    ori	$v0,$v0,0x8000
    or	$t2,$t2,$t3
    or	$t2,$v0,$t2
    sw	$t2,0($a6)
    # Line 152
    lw	$t0,-24036($a3)
    lw	$t1,-24036($a3)
    lui	$t3,0x3200
    srl	$t1,$t1,0xa
    andi	$t0,$t0,0x3ff
    sll	$t1,$t1,0x17
    ori	$t3,$t3,0x8000
    or	$t0,$t0,$t1
    # Line 153
    lui	$a7,0x8e80
    # Line 152
    or	$t0,$t3,$t0
    sw	$t0,0($a6)
    # Line 153
    ori	$a7,$a7,0x9015
    sw	$a7,0($a6)
    # Line 154
    lwc1	$f4,-24140($a3)
    swc1	$f4,0($a6)
    # Line 155
    lwc1	$f3,-24136($a3)
    swc1	$f3,0($a6)
    # Line 156
    lwc1	$f2,-24132($a3)
    swc1	$f2,0($a6)
    # Line 157
    lwc1	$f1,-24128($a3)
    swc1	$f1,0($a6)
    # Line 160
    sw	$a4,-24072($a3)
    # Line 161
    sw	$zero,-24036($a3)
    # Line 162
    li	$a2,3
    sw	$a2,-24108($a3)
    # Line 163
    sw	$zero,-24040($a3)
    # Line 164
    li	$a1,16
    sw	$a1,-24104($a3)
    # Line 172
    lw	$v1,-24072($a3)
    lw	$a0,-24072($a3)
    srl	$a0,$a0,0xa
    andi	$v1,$v1,0x3ff
    sll	$a0,$a0,0x17
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    sw	$v0,0($a6)
    # Line 173
    lw	$t8,-24036($a3)
    lw	$t9,-24036($a3)
    srl	$t9,$t9,0xa
    andi	$t8,$t8,0x3ff
    sll	$t9,$t9,0x17
    or	$t8,$t8,$t9
    or	$t3,$t3,$t8
    sw	$t3,0($a6)
    # Line 174
    lw	$t2,-24108($a3)
    lw	$t8,-24108($a3)
    lui	$t3,0x2000
    srl	$t8,$t8,0xa
    andi	$t2,$t2,0x3ff
    sll	$t8,$t8,0x17
    ori	$t3,$t3,0x8000
    or	$t2,$t2,$t8
    or	$t2,$t2,$t3
    sw	$t2,0($a6)
    # Line 175
    lw	$t0,-24040($a3)
    lw	$t1,-24040($a3)
    srl	$t1,$t1,0xa
    andi	$t0,$t0,0x3ff
    sll	$t1,$t1,0x17
    or	$t0,$t0,$t1
    or	$t0,$a5,$t0
    sw	$t0,0($a6)
    # Line 176
    lw	$a7,-24104($a3)
    lw	$t1,-24104($a3)
    lui	$t0,0x2100
    srl	$t1,$t1,0xa
    andi	$a7,$a7,0x3ff
    sll	$t1,$t1,0x17
    ori	$t0,$t0,0x8000
    or	$a7,$a7,$t1
    or	$a7,$a7,$t0
    # Line 178
    jr	$ra
    # Line 176
    sw	$a7,0($a6)
.L0d9c2574:
    # Line 142
    swc1	$f4,-24128($a3)
    # Line 141
    swc1	$f6,-24132($a3)
    # Line 140
    swc1	$f6,-24136($a3)
    b	.L0d9c2428
    # Line 139
    swc1	$f4,-24140($a3)
.end __glOdysseyInitLighting

# Function: dirtyLight
# Declared: Line 181 (Source lines: 181-200)
# Address: 0x0d9c2590 - 0x0d9c2614 (Size: 132 bytes, Frame: 0)
.ent dirtyLight
dirtyLight:
    # Line 181
    addiu	$a4,$a1,-16384
    sltiu	$at,$a4,8
    beqz	$at,.L0d9c25fc
    # Line 191
    li	$a7,4610
    # Line 189
    li	$a5,1
    # Line 187
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    lw	$a6,26980($a3)
    ori	$a6,$a6,0x40
    sw	$a6,26980($a3)
    li	$a6,2
    sw	$a6,4120($zero)
    # Line 191
    li	$v1,4608
    # Line 189
    lw	$v0,26984($a3)
    sllv	$a5,$a5,$a4
    # Line 191
    li	$a4,4609
    # Line 197
    lw	$t0,26980($a3)
    # Line 189
    or	$v0,$a5,$v0
    # Line 191
    beq	$a2,$v1,.L0d9c2604
    # Line 189
    sw	$v0,26984($a3)
    # Line 191
    beq	$a2,$a4,.L0d9c2604
    nop
    beq	$a2,$a7,.L0d9c2604
    # Line 197
    ori	$t0,$t0,0x100
    sw	$t0,26980($a3)
    # Line 200
    jr	$ra
    # Line 197
    sw	$a6,4120($zero)
.L0d9c25fc:
    # Line 200
    jr	$ra
    nop
.L0d9c2604:
    # Line 193
    lw	$t1,26988($a3)
    or	$t1,$a5,$t1
    # Line 200
    jr	$ra
    # Line 193
    sw	$t1,26988($a3)
.end dirtyLight

# Function: __glOdyim_Lightfv
# Declared: Line 202 (Source lines: 203-207)
# Address: 0x0d9c2620 - 0x0d9c26ac (Size: 140 bytes, Frame: 48)
.globl __glOdyim_Lightfv
.ent __glOdyim_Lightfv
__glOdyim_Lightfv:
    # Line 203
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 204
    lw	$at,4120($zero)
    li	$v0,1
    # Line 203
    lui	$v1,0x13
    sd	$s1,16($sp)
    addiu	$v1,$v1,24432
    move	$s1,$a0
    # Line 204
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d9c2698
    # Line 203
    addu	$gp,$t9,$v1
    # Line 205
    # lw $t9, -27424($gp) # &__glim_Lightfv
    jal	__glim_Lightfv
    move	$a0,$s1
    # Line 206
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,9616
    move	$a1,$s1
    ld	$a0,0($sp)
    bal __glOdysseyInitLighting
    move	$a2,$s0
    ld	$ra,32($sp)
.L0d9c2684:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 207
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c2698:
    # Line 204
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2684
    ld	$ra,32($sp)
.end __glOdyim_Lightfv

# Function: __glOdyim_Lightf
# Declared: Line 209 (Source lines: 210-214)
# Address: 0x0d9c26b0 - 0x0d9c273c (Size: 140 bytes, Frame: 48)
.globl __glOdyim_Lightf
.ent __glOdyim_Lightf
__glOdyim_Lightf:
    # Line 210
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    # Line 211
    lw	$at,4120($zero)
    li	$v0,1
    # Line 210
    lui	$v1,0x13
    sd	$s0,8($sp)
    addiu	$v1,$v1,24288
    move	$s0,$a0
    # Line 211
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d9c2728
    # Line 210
    addu	$gp,$t9,$v1
    # Line 212
    # lw $t9, -27420($gp) # &__glim_Lightf
    jal	__glim_Lightf
    move	$a0,$s0
    # Line 213
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,9616
    move	$a1,$s0
    ld	$a0,0($sp)
    bal __glOdysseyInitLighting
    move	$a2,$s1
    ld	$ra,32($sp)
.L0d9c2714:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 214
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c2728:
    # Line 211
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2714
    ld	$ra,32($sp)
.end __glOdyim_Lightf

# Function: __glOdyim_Lightiv
# Declared: Line 216 (Source lines: 217-221)
# Address: 0x0d9c2740 - 0x0d9c27cc (Size: 140 bytes, Frame: 48)
.globl __glOdyim_Lightiv
.ent __glOdyim_Lightiv
__glOdyim_Lightiv:
    # Line 217
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 218
    lw	$at,4120($zero)
    li	$v0,1
    # Line 217
    lui	$v1,0x13
    sd	$s1,16($sp)
    addiu	$v1,$v1,24144
    move	$s1,$a0
    # Line 218
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d9c27b8
    # Line 217
    addu	$gp,$t9,$v1
    # Line 219
    # lw $t9, -27416($gp) # &__glim_Lightiv
    jal	__glim_Lightiv
    move	$a0,$s1
    # Line 220
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,9616
    move	$a1,$s1
    ld	$a0,0($sp)
    bal __glOdysseyInitLighting
    move	$a2,$s0
    ld	$ra,32($sp)
.L0d9c27a4:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 221
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c27b8:
    # Line 218
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c27a4
    ld	$ra,32($sp)
.end __glOdyim_Lightiv

# Function: __glOdyim_Lighti
# Declared: Line 223 (Source lines: 224-228)
# Address: 0x0d9c27d0 - 0x0d9c285c (Size: 140 bytes, Frame: 48)
.globl __glOdyim_Lighti
.ent __glOdyim_Lighti
__glOdyim_Lighti:
    # Line 224
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 225
    lw	$at,4120($zero)
    li	$v0,1
    # Line 224
    lui	$v1,0x13
    sd	$s1,16($sp)
    addiu	$v1,$v1,24000
    move	$s1,$a0
    # Line 225
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d9c2848
    # Line 224
    addu	$gp,$t9,$v1
    # Line 226
    # lw $t9, -27412($gp) # &__glim_Lighti
    jal	__glim_Lighti
    move	$a0,$s1
    # Line 227
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,9616
    move	$a1,$s1
    ld	$a0,0($sp)
    bal __glOdysseyInitLighting
    move	$a2,$s0
    ld	$ra,32($sp)
.L0d9c2834:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 228
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c2848:
    # Line 225
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2834
    ld	$ra,32($sp)
.end __glOdyim_Lighti

# Function: __glOdyim_LightModelfv
# Declared: Line 230 (Source lines: 231-237)
# Address: 0x0d9c2860 - 0x0d9c2910 (Size: 176 bytes, Frame: 32)
.globl __glOdyim_LightModelfv
.ent __glOdyim_LightModelfv
__glOdyim_LightModelfv:
    # Line 231
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    sd	$gp,16($sp)
    # Line 232
    lw	$at,4120($zero)
    li	$v0,1
    # Line 231
    lui	$v1,0x13
    sd	$s0,8($sp)
    addiu	$v1,$v1,23856
    move	$s0,$a0
    # Line 232
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d9c28fc
    # Line 231
    addu	$gp,$t9,$v1
    # Line 233
    # lw $t9, -27408($gp) # &__glim_LightModelfv
    jal	__glim_LightModelfv
    move	$a0,$s0
    # Line 234
    ld	$a0,0($sp)
    lui	$a1,0x1
    ld	$ra,24($sp)
    addu	$a0,$a0,$a1
    lw	$a3,26980($a0)
    # Line 237
    ld	$gp,16($sp)
    # Line 234
    li	$a2,2899
    ori	$a3,$a3,0x40
    sw	$a3,26980($a0)
    li	$a1,2
    beq	$s0,$a2,.L0d9c28ec
    sw	$a1,4120($zero)
    # Line 236
    lw	$a2,26980($a0)
    # Line 237
    ld	$s0,8($sp)
    # Line 236
    ori	$a2,$a2,0x100
    sw	$a2,26980($a0)
    # Line 237
    addiu	$sp,$sp,32
    jr	$ra
    # Line 236
    sw	$a1,4120($zero)
.L0d9c28ec:
    ld	$s0,8($sp)
    # Line 237
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c28fc:
    # Line 232
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c28ec
    ld	$ra,24($sp)
.end __glOdyim_LightModelfv

# Function: __glOdyim_LightModelf
# Declared: Line 239 (Source lines: 240-245)
# Address: 0x0d9c2910 - 0x0d9c2998 (Size: 136 bytes, Frame: 32)
.globl __glOdyim_LightModelf
.ent __glOdyim_LightModelf
__glOdyim_LightModelf:
    # Line 241
    lw	$a1,4112($zero)
    # Line 240
    addiu	$sp,$sp,-32
    # Line 241
    lw	$at,4120($zero)
    sd	$a1,0($sp)
    li	$v0,1
    # Line 240
    lui	$v1,0x13
    sd	$ra,16($sp)
    addiu	$v1,$v1,23680
    sd	$gp,8($sp)
    # Line 241
    beq	$at,$v0,.L0d9c2984
    # Line 240
    addu	$gp,$t9,$v1
    # Line 242
    # lw $t9, -27404($gp) # &__glim_LightModelf
    jal	__glim_LightModelf
    nop
    # Line 243
    ld	$a2,0($sp)
    lui	$a3,0x1
    ld	$ra,16($sp)
    addu	$a2,$a2,$a3
    lw	$a1,26980($a2)
    # Line 245
    ld	$gp,8($sp)
    # Line 243
    li	$a0,2
    ori	$a1,$a1,0x140
    sw	$a1,26980($a2)
    # Line 245
    addiu	$sp,$sp,32
    jr	$ra
    # Line 243
    sw	$a0,4120($zero)
.L0d9c2978:
    # Line 245
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c2984:
    # Line 241
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2978
    ld	$ra,16($sp)
.end __glOdyim_LightModelf

# Function: __glOdyim_LightModeliv
# Declared: Line 247 (Source lines: 248-254)
# Address: 0x0d9c29a0 - 0x0d9c2a50 (Size: 176 bytes, Frame: 32)
.globl __glOdyim_LightModeliv
.ent __glOdyim_LightModeliv
__glOdyim_LightModeliv:
    # Line 248
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    sd	$gp,16($sp)
    # Line 249
    lw	$at,4120($zero)
    li	$v0,1
    # Line 248
    lui	$v1,0x13
    sd	$s0,8($sp)
    addiu	$v1,$v1,23536
    move	$s0,$a0
    # Line 249
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d9c2a3c
    # Line 248
    addu	$gp,$t9,$v1
    # Line 250
    # lw $t9, -27400($gp) # &__glim_LightModeliv
    jal	__glim_LightModeliv
    move	$a0,$s0
    # Line 251
    ld	$a0,0($sp)
    lui	$a1,0x1
    ld	$ra,24($sp)
    addu	$a0,$a0,$a1
    lw	$a3,26980($a0)
    # Line 254
    ld	$gp,16($sp)
    # Line 251
    li	$a2,2899
    ori	$a3,$a3,0x40
    sw	$a3,26980($a0)
    li	$a1,2
    beq	$s0,$a2,.L0d9c2a2c
    sw	$a1,4120($zero)
    # Line 253
    lw	$a2,26980($a0)
    # Line 254
    ld	$s0,8($sp)
    # Line 253
    ori	$a2,$a2,0x100
    sw	$a2,26980($a0)
    # Line 254
    addiu	$sp,$sp,32
    jr	$ra
    # Line 253
    sw	$a1,4120($zero)
.L0d9c2a2c:
    ld	$s0,8($sp)
    # Line 254
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c2a3c:
    # Line 249
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2a2c
    ld	$ra,24($sp)
.end __glOdyim_LightModeliv

# Function: __glOdyim_LightModeli
# Declared: Line 256 (Source lines: 257-262)
# Address: 0x0d9c2a50 - 0x0d9c2ad8 (Size: 136 bytes, Frame: 32)
.globl __glOdyim_LightModeli
.ent __glOdyim_LightModeli
__glOdyim_LightModeli:
    # Line 258
    lw	$a2,4112($zero)
    # Line 257
    addiu	$sp,$sp,-32
    # Line 258
    lw	$at,4120($zero)
    sd	$a2,0($sp)
    li	$v0,1
    # Line 257
    lui	$v1,0x13
    sd	$ra,16($sp)
    addiu	$v1,$v1,23360
    sd	$gp,8($sp)
    # Line 258
    beq	$at,$v0,.L0d9c2ac4
    # Line 257
    addu	$gp,$t9,$v1
    # Line 259
    # lw $t9, -27396($gp) # &__glim_LightModeli
    jal	__glim_LightModeli
    nop
    # Line 260
    ld	$a2,0($sp)
    lui	$a3,0x1
    ld	$ra,16($sp)
    addu	$a2,$a2,$a3
    lw	$a1,26980($a2)
    # Line 262
    ld	$gp,8($sp)
    # Line 260
    li	$a0,2
    ori	$a1,$a1,0x140
    sw	$a1,26980($a2)
    # Line 262
    addiu	$sp,$sp,32
    jr	$ra
    # Line 260
    sw	$a0,4120($zero)
.L0d9c2ab8:
    # Line 262
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c2ac4:
    # Line 258
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2ab8
    ld	$ra,16($sp)
.end __glOdyim_LightModeli

# Function: ValidateLight
# Declared: Line 266 (Source lines: 268-359)
# Address: 0x0d9c2ae0 - 0x0d9c2de8 (Size: 776 bytes, Frame: 48)
.ent ValidateLight
ValidateLight:
    # Line 268
    lwc1	$f7,76($a1)
    dmtc1	$zero,$f5
    cvt.d.s	$f7,$f7
    ldc1	$f6,_lit8_3ff0000000000000
    # Line 294
    mtc1	$zero,$f8
    # Line 268
    addiu	$sp,$sp,-48
    c.eq.d	$f7,$f5
    lui	$a5,0x1
    sd	$s0,16($sp)
    sll	$s0,$a2,0x6
    sd	$s2,8($sp)
    move	$s2,$a0
    addu	$s0,$s0,$a0
    sd	$s1,0($sp)
    move	$s1,$a1
    bc1f	.L0d9c2be4
    addu	$s0,$a5,$s0
    # Line 278
    lwc1	$f11,68($a1)
    lwc1	$f12,64($a1)
    lwc1	$f7,72($a1)
    mul.s	$f4,$f11,$f11
    madd.s	$f4,$f4,$f12,$f12
    madd.s	$f4,$f4,$f7,$f7
    cvt.d.s	$f8,$f4
    c.lt.d $f5,$f8
    bc1f .L0d9c2b58
    nop
    # Line 279
    sqrt.d	$f4,$f8
    div.d	$f4,$f6,$f4
    cvt.s.d	$f4,$f4
.L0d9c2b58:
    # Line 283
    mul.s	$f8,$f7,$f4
    cvt.d.s	$f8,$f8
    # Line 281
    mul.s	$f10,$f12,$f4
    # Line 282
    mul.s	$f9,$f11,$f4
    # Line 283
    add.d	$f8,$f8,$f6
    mul.s	$f13,$f10,$f10
    madd.s	$f13,$f13,$f9,$f9
    cvt.s.d	$f8,$f8
    madd.s	$f13,$f13,$f8,$f8
    cvt.d.s	$f13,$f13
    c.lt.d $f5,$f13
    bc1f .L0d9c2b98
    # Line 285
    lwc1	$f7,_lit_3f800000
    sqrt.d	$f7,$f13
    div.d	$f7,$f6,$f7
    cvt.s.d	$f7,$f7
.L0d9c2b98:
    # Line 289
    mul.s	$f13,$f8,$f7
    # Line 288
    mul.s	$f14,$f9,$f7
    # Line 287
    mul.s	$f15,$f10,$f7
    # Line 289
    neg.s	$f13,$f13
    # Line 288
    neg.s	$f14,$f14
    # Line 289
    swc1	$f13,-26552($s0)
    # Line 287
    neg.s	$f15,$f15
    # Line 288
    swc1	$f14,-26556($s0)
    # Line 287
    swc1	$f15,-26560($s0)
    # Line 290
    lwc1	$f12,68($s1)
    lwc1	$f14,64($s1)
    lwc1	$f13,72($s1)
    mul.s	$f12,$f12,$f9
    madd.s	$f12,$f12,$f14,$f10
    madd.s	$f12,$f12,$f13,$f8
    mul.s	$f11,$f4,$f7
    madd.s	$f11,$f16,$f11,$f12
    b	.L0d9c2bfc
    swc1	$f11,-26548($s0)
.L0d9c2be4:
    # Line 292
    div.d	$f4,$f6,$f7
    # Line 297
    swc1	$f8,-26548($s0)
    # Line 296
    swc1	$f8,-26552($s0)
    # Line 295
    swc1	$f8,-26556($s0)
    # Line 294
    swc1	$f8,-26560($s0)
    # Line 292
    cvt.s.d	$f4,$f4
.L0d9c2bfc:
    # Line 299
    lwc1	$f17,64($s1)
    mul.s	$f17,$f17,$f4
    swc1	$f17,-26572($s0)
    # Line 300
    lwc1	$f16,68($s1)
    mul.s	$f16,$f16,$f4
    swc1	$f16,-26568($s0)
    # Line 301
    lwc1	$f15,72($s1)
    mul.s	$f15,$f15,$f4
    swc1	$f15,-26564($s0)
    # Line 303
    lwc1	$f14,104($s1)
    swc1	$f14,-26544($s0)
    # Line 304
    lwc1	$f13,108($s1)
    swc1	$f13,-26540($s0)
    # Line 305
    lwc1	$f12,112($s1)
    swc1	$f12,-26536($s0)
    # Line 308
    lwc1	$f11,84($s1)
    lwc1	$f13,80($s1)
    lwc1	$f12,88($s1)
    mul.s	$f11,$f11,$f11
    madd.s	$f11,$f11,$f13,$f13
    madd.s	$f11,$f11,$f12,$f12
    cvt.d.s	$f11,$f11
    sqrt.d	$f11,$f11
    # Line 310
    neg.s	$f13,$f13
    # Line 308
    cvt.s.d	$f11,$f11
    # Line 310
    div.s	$f13,$f13,$f11
    swc1	$f13,-26532($s0)
    # Line 311
    lwc1	$f12,84($s1)
    neg.s	$f12,$f12
    div.s	$f12,$f12,$f11
    swc1	$f12,-26528($s0)
    # Line 312
    lwc1	$f10,88($s1)
    neg.s	$f10,$f10
    div.s	$f10,$f10,$f11
    swc1	$f10,-26524($s0)
    # Line 314
    lwc1	$f9,76($s1)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    lwc1	$f4,100($s1)
    # Line 317
    mtc1	$zero,$f6
    # Line 314
    bc1t .L0d9c2cb4
    ldc1	$f5,_lit8_4066800000000000
    cvt.d.s	$f4,$f4
    c.eq.d $f4,$f5
    bc1f .L0d9c2d9c
    # Line 321
    ldc1	$f12,_lit8_400921fb54442d18
.L0d9c2cb4:
    # Line 316
    lwc1	$f5,_lit_3f800000
    # Line 317
    swc1	$f6,-26516($s0)
    # Line 316
    swc1	$f5,-26520($s0)
.L0d9c2cc0:
    # Line 326
    lwc1	$f27,_lit_4a800000
    # Line 328
    addu	$at,$a5,$s2
    # Line 326
    swc1	$f27,-26512($s0)
    # Line 328
    sll	$v0,$a2,0x4
    sw	$v0,-24040($at)
    # Line 339
    lw	$t8,-24040($at)
    lw	$at,-24040($at)
    lui	$t9,0x3100
    srl	$at,$at,0xa
    andi	$t8,$t8,0x3ff
    sll	$at,$at,0x17
    ori	$t9,$t9,0x8000
    or	$t8,$t8,$at
    # Line 340
    lui	$s2,0x9080
    # Line 339
    or	$t8,$t8,$t9
    sw	$t8,0($a5)
    # Line 340
    ori	$s2,$s2,0xbda2
    sw	$s2,0($a5)
    # Line 341
    lwc1	$f25,-26572($s0)
    swc1	$f25,0($a5)
    # Line 342
    lwc1	$f23,-26568($s0)
    swc1	$f23,0($a5)
    # Line 343
    lwc1	$f21,-26564($s0)
    swc1	$f21,0($a5)
    # Line 344
    lwc1	$f19,-26560($s0)
    swc1	$f19,0($a5)
    # Line 345
    lwc1	$f18,-26556($s0)
    swc1	$f18,0($a5)
    # Line 346
    lwc1	$f17,-26552($s0)
    swc1	$f17,0($a5)
    # Line 347
    lwc1	$f16,-26548($s0)
    swc1	$f16,0($a5)
    # Line 348
    lwc1	$f15,-26544($s0)
    swc1	$f15,0($a5)
    # Line 349
    lwc1	$f14,-26540($s0)
    swc1	$f14,0($a5)
    # Line 350
    lwc1	$f13,-26536($s0)
    swc1	$f13,0($a5)
    # Line 351
    lwc1	$f12,-26532($s0)
    swc1	$f12,0($a5)
    # Line 352
    lwc1	$f11,-26528($s0)
    swc1	$f11,0($a5)
    # Line 353
    lwc1	$f10,-26524($s0)
    swc1	$f10,0($a5)
    # Line 354
    lwc1	$f9,-26520($s0)
    ld	$s1,0($sp)
    swc1	$f9,0($a5)
    # Line 355
    lwc1	$f8,-26516($s0)
    # Line 359
    ld	$s2,8($sp)
    # Line 355
    swc1	$f8,0($a5)
    # Line 356
    lwc1	$f7,-26512($s0)
    # Line 359
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 356
    swc1	$f7,0($a5)
.L0d9c2d9c:
    # Line 321
    # lw $t9, -16940($gp) # &cos
    sd	$a3,40($sp)
    mul.d	$f12,$f4,$f12
    sd	$a2,24($sp)
    sd	$ra,32($sp)
    jal	cos
    div.d	$f12,$f12,$f5
    neg.d	$f14,$f0
    cvt.s.d	$f14,$f14
    swc1	$f14,-26520($s0)
    # Line 322
    lwc1	$f13,96($s1)
    cvt.d.s	$f13,$f13
    neg.d	$f13,$f13
    ld	$ra,32($sp)
    ld	$a2,24($sp)
    cvt.s.d	$f13,$f13
    lui	$a5,0x1
    b	.L0d9c2cc0
    swc1	$f13,-26516($s0)
.end ValidateLight

# Function: ValidateLightColor
# Declared: Line 362 (Source lines: 362-450)
# Address: 0x0d9c2df0 - 0x0d9c3090 (Size: 672 bytes, Frame: 224)
.ent ValidateLightColor
ValidateLightColor:
    # Line 362
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    sd	$s5,40($sp)
    sd	$s8,32($sp)
    sd	$s4,16($sp)
    move	$s1,$a0
    sd	$s6,56($sp)
    # Line 379
    lui	$v0,0x2900
    # Line 362
    sd	$s0,48($sp)
    # Line 371
    lui	$s0,0x1
    # Line 379
    ori	$v0,$v0,0x8000
    # Line 362
    sd	$s2,72($sp)
    # Line 371
    addu	$s2,$s0,$a0
    # Line 362
    move	$s8,$a1
    # Line 371
    li	$s6,410
    sw	$s6,-24072($s2)
    # Line 362
    move	$s5,$a2
    # Line 383
    sll	$s4,$a2,0x2
    # Line 379
    lw	$at,-24072($s2)
    # Line 383
    subu	$s4,$s4,$a2
    addiu	$a2,$a1,16
    # Line 379
    lw	$v1,-24072($s2)
    # Line 362
    sd	$s3,64($sp)
    # Line 383
    li	$a1,0xa044
    sll	$s4,$s4,0x4
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    addu	$s4,$a0,$s4
    # Line 379
    srl	$v1,$v1,0xa
    sd	$s7,80($sp)
    andi	$at,$at,0x3ff
    sll	$v1,$v1,0x17
    sd	$ra,8($sp)
    # Line 383
    addu	$a1,$s4,$a1
    # Line 379
    or	$at,$at,$v1
    or	$at,$at,$v0
    # Line 383
    jal	__glUnScaleColorf
    # Line 379
    sw	$at,0($s0)
    # Line 384
    sll	$s7,$s5,0x2
    subu	$s7,$s7,$s5
    addiu	$t9,$s7,1
    sw	$t9,-24036($s2)
    lbu	$t8,3220($s1)
    beqz	$t8,.L0d9c2ff8
    addu	$s3,$s0,$s4
.L0d9c2ea0:
    # Line 398
    lw	$t8,-24036($s2)
    lw	$t9,-24036($s2)
    lui	$s6,0x3200
    srl	$t9,$t9,0xa
    andi	$t8,$t8,0x3ff
    sll	$t9,$t9,0x17
    ori	$s6,$s6,0x8000
    or	$t8,$t8,$t9
    # Line 399
    lui	$s5,0x8e80
    # Line 398
    or	$t8,$s6,$t8
    sw	$t8,0($s0)
    # Line 399
    ori	$s5,$s5,0x9015
    sw	$s5,0($s0)
    # Line 400
    lwc1	$f3,-24508($s3)
    swc1	$f3,0($s0)
    # Line 401
    lwc1	$f2,-24504($s3)
    swc1	$f2,0($s0)
    # Line 402
    lwc1	$f1,-24500($s3)
    # Line 407
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    # Line 402
    swc1	$f1,0($s0)
    # Line 407
    addiu	$a2,$s8,32
    # Line 403
    lwc1	$f0,-24496($s3)
    # Line 407
    move	$a0,$s1
    li	$a1,0xa054
    addu	$a1,$s4,$a1
    jal	__glUnScaleColorf
    # Line 403
    swc1	$f0,0($s0)
    # Line 407
    lbu	$ra,3220($s1)
    beqz	$ra,.L0d9c3038
.L0d9c2f14:
    # Line 412
    addiu	$a4,$s7,2
    sw	$a4,-24036($s2)
    # Line 421
    lw	$a2,-24036($s2)
    lw	$a3,-24036($s2)
    srl	$a3,$a3,0xa
    andi	$a2,$a2,0x3ff
    sll	$a3,$a3,0x17
    or	$a2,$a2,$a3
    or	$a2,$s6,$a2
    sw	$a2,0($s0)
    # Line 422
    sw	$s5,0($s0)
    # Line 423
    lwc1	$f7,-24492($s3)
    swc1	$f7,0($s0)
    # Line 424
    lwc1	$f6,-24488($s3)
    swc1	$f6,0($s0)
    # Line 425
    lwc1	$f5,-24484($s3)
    # Line 430
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    # Line 425
    swc1	$f5,0($s0)
    # Line 430
    li	$a1,0xa034
    # Line 426
    lwc1	$f4,-24480($s3)
    # Line 430
    move	$a0,$s1
    addu	$a1,$s4,$a1
    move	$a2,$s8
    jal	__glUnScaleColorf
    # Line 426
    swc1	$f4,0($s0)
    # Line 431
    sw	$s7,-24036($s2)
    lbu	$a5,3220($s1)
    ld	$ra,8($sp)
    ld	$s4,16($sp)
    beqz	$a5,.L0d9c3078
    ld	$s8,32($sp)
.L0d9c2f90:
    # Line 443
    lw	$a6,-24036($s2)
    lw	$a7,-24036($s2)
    srl	$a7,$a7,0xa
    ld	$s7,80($sp)
    andi	$a6,$a6,0x3ff
    sll	$a7,$a7,0x17
    ld	$s1,24($sp)
    or	$a6,$a6,$a7
    or	$a6,$s6,$a6
    sw	$a6,0($s0)
    # Line 444
    sw	$s5,0($s0)
    # Line 445
    lwc1	$f11,-24524($s3)
    # Line 450
    ld	$s2,72($sp)
    # Line 445
    swc1	$f11,0($s0)
    # Line 446
    lwc1	$f10,-24520($s3)
    # Line 450
    ld	$s5,40($sp)
    # Line 446
    swc1	$f10,0($s0)
    # Line 447
    lwc1	$f9,-24516($s3)
    # Line 450
    ld	$s6,56($sp)
    # Line 447
    swc1	$f9,0($s0)
    # Line 448
    lwc1	$f8,-24512($s3)
    # Line 450
    ld	$s3,64($sp)
    # Line 448
    swc1	$f8,0($s0)
    # Line 450
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c2ff8:
    # Line 386
    ldc1	$f16,_lit8_3fd3333333333333
    lwc1	$f12,-24504($s3)
    lwc1	$f15,-24508($s3)
    ldc1	$f14,_lit8_3fe2e147ae147ae1
    lwc1	$f13,-24500($s3)
    cvt.d.s	$f12,$f12
    cvt.d.s	$f15,$f15
    mul.d	$f12,$f12,$f14
    ldc1	$f14,_lit8_3fbc28f5c28f5c29
    cvt.d.s	$f13,$f13
    madd.d	$f12,$f12,$f15,$f16
    madd.d	$f12,$f12,$f13,$f14
    cvt.s.d	$f12,$f12
    # Line 387
    swc1	$f12,-24508($s3)
    b	.L0d9c2ea0
    # Line 386
    swc1	$f12,0($sp)
.L0d9c3038:
    # Line 409
    ldc1	$f17,_lit8_3fd3333333333333
    lwc1	$f13,-24488($s3)
    lwc1	$f16,-24492($s3)
    ldc1	$f15,_lit8_3fe2e147ae147ae1
    lwc1	$f14,-24484($s3)
    cvt.d.s	$f13,$f13
    cvt.d.s	$f16,$f16
    mul.d	$f13,$f13,$f15
    ldc1	$f15,_lit8_3fbc28f5c28f5c29
    cvt.d.s	$f14,$f14
    madd.d	$f13,$f13,$f16,$f17
    madd.d	$f13,$f13,$f14,$f15
    cvt.s.d	$f13,$f13
    # Line 410
    swc1	$f13,-24492($s3)
    b	.L0d9c2f14
    # Line 409
    swc1	$f13,4($sp)
.L0d9c3078:
    # Line 433
    lwc1	$f15,4($sp)
    lwc1	$f14,0($sp)
    mul.s	$f14,$f14,$f15
    neg.s	$f14,$f14
    b	.L0d9c2f90
    swc1	$f14,-24524($s3)
.end ValidateLightColor

# Function: ValidateFragmentLightColor
# Declared: Line 453 (Source lines: 453-497)
# Address: 0x0d9c3090 - 0x0d9c3480 (Size: 1008 bytes, Frame: 208)
.ent ValidateFragmentLightColor
ValidateFragmentLightColor:
    # Line 453
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    sd	$s3,48($sp)
    sd	$s7,40($sp)
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s6,0($sp)
    move	$s7,$a3
    sd	$s5,8($sp)
    # Line 466
    sll	$s5,$a2,0x2
    # Line 453
    move	$s6,$a1
    # Line 466
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    subu	$s5,$s5,$a2
    sdc1	$f20,56($sp)
    move	$a2,$a1
    sll	$s5,$s5,0x4
    sd	$s1,72($sp)
    li	$a1,0xa034
    addu	$s5,$a0,$s5
    sd	$ra,16($sp)
    jal	__glUnScaleColorf
    addu	$a1,$s5,$a1
    lui	$s3,0x1
    addu	$s1,$s3,$s5
    lwc1	$f5,-24524($s1)
    ldc1	$f20,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f5
    c.le.d	$f20,$f0
    bc1f	.L0d9c3114
    # Line 468
    lwc1	$f4,_lit_45800000
    lwc1	$f4,_lit_457ff000
    b	.L0d9c311c
    sd	$s2,64($sp)
.L0d9c3114:
    sd	$s2,64($sp)
    mul.s	$f4,$f5,$f4
.L0d9c311c:
    sll	$s0,$s7,0x2
    trunc.l.s	$f7,$f4
    subu	$s0,$s0,$s7
    sll	$s0,$s0,0x3
    dmfc1	$a1,$f7
    addu	$s0,$s4,$s0
    addu	$s0,$s3,$s0
    lui	$s2,0xff00
    sll	$a1,$a1,0x0
    lw	$a0,-26796($s0)
    ori	$s2,$s2,0xfff
    andi	$a1,$a1,0xfff
    sll	$a1,$a1,0xc
    and	$a0,$s2,$a0
    or	$a0,$a0,$a1
    sw	$a0,-26796($s0)
    lwc1	$f5,-24520($s1)
    cvt.d.s	$f6,$f5
    c.le.d $f20,$f6
    bc1t .L0d9c3178
    # Line 469
    lwc1	$f4,_lit_457ff000
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f5,$f4
.L0d9c3178:
    trunc.l.s	$f7,$f4
    dmfc1	$t9,$f7
    li	$a2,-4096
    sll	$t9,$t9,0x0
    and	$t8,$a2,$a0
    andi	$t9,$t9,0xfff
    or	$t8,$t8,$t9
    sw	$t8,-26796($s0)
    lwc1	$f5,-24516($s1)
    cvt.d.s	$f6,$f5
    c.le.d $f20,$f6
    bc1f .L0d9c31b4
    # Line 470
    lwc1	$f4,_lit_45800000
    b	.L0d9c31b8
    lwc1	$f4,_lit_457ff000
.L0d9c31b4:
    mul.s	$f4,$f5,$f4
.L0d9c31b8:
    trunc.l.s	$f5,$f4
    dmfc1	$v1,$f5
    # Line 475
    addiu	$a2,$s6,16
    move	$a0,$s4
    # Line 470
    lw	$v0,-26792($s0)
    sll	$v1,$v1,0x0
    # Line 475
    li	$a1,0xa044
    # Line 470
    andi	$v1,$v1,0xfff
    # Line 475
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    # Line 470
    and	$v0,$s2,$v0
    sll	$v1,$v1,0xc
    # Line 472
    li	$at,-3073
    # Line 470
    or	$v0,$v0,$v1
    # Line 475
    addu	$a1,$s5,$a1
    # Line 472
    and	$at,$at,$v0
    ori	$at,$at,0x800
    # Line 475
    jal	__glUnScaleColorf
    # Line 472
    sw	$at,-26792($s0)
    # Line 475
    lwc1	$f5,-24508($s1)
    cvt.d.s	$f6,$f5
    c.le.d $f20,$f6
    bc1f .L0d9c321c
    # Line 477
    lwc1	$f4,_lit_45800000
    b	.L0d9c3220
    lwc1	$f4,_lit_457ff000
.L0d9c321c:
    mul.s	$f4,$f5,$f4
.L0d9c3220:
    trunc.l.s	$f7,$f4
    dmfc1	$a1,$f7
    lw	$a0,-26788($s0)
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0xfff
    and	$a0,$s2,$a0
    sll	$a1,$a1,0xc
    or	$a0,$a0,$a1
    sw	$a0,-26788($s0)
    lwc1	$f5,-24504($s1)
    cvt.d.s	$f6,$f5
    c.le.d $f20,$f6
    bc1t .L0d9c3260
    # Line 478
    lwc1	$f4,_lit_457ff000
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f5,$f4
.L0d9c3260:
    trunc.l.s	$f7,$f4
    dmfc1	$a3,$f7
    li	$a2,-4096
    sll	$a3,$a3,0x0
    and	$a2,$a2,$a0
    andi	$a3,$a3,0xfff
    or	$a2,$a2,$a3
    sw	$a2,-26788($s0)
    lwc1	$f5,-24500($s1)
    cvt.d.s	$f6,$f5
    c.le.d $f20,$f6
    bc1f .L0d9c329c
    # Line 479
    lwc1	$f4,_lit_45800000
    b	.L0d9c32a0
    lwc1	$f4,_lit_457ff000
.L0d9c329c:
    mul.s	$f4,$f5,$f4
.L0d9c32a0:
    trunc.l.s	$f5,$f4
    dmfc1	$a6,$f5
    # Line 484
    addiu	$a2,$s6,32
    move	$a0,$s4
    # Line 479
    lw	$a5,-26784($s0)
    sll	$a6,$a6,0x0
    # Line 484
    li	$a1,0xa054
    # Line 479
    andi	$a6,$a6,0xfff
    # Line 484
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    # Line 479
    and	$a5,$s2,$a5
    sll	$a6,$a6,0xc
    # Line 481
    li	$a4,-3073
    # Line 479
    or	$a5,$a5,$a6
    # Line 484
    addu	$a1,$s5,$a1
    # Line 481
    and	$a4,$a4,$a5
    ori	$a4,$a4,0x800
    # Line 484
    jal	__glUnScaleColorf
    # Line 481
    sw	$a4,-26784($s0)
    # Line 484
    lwc1	$f5,-24492($s1)
    cvt.d.s	$f6,$f5
    ld	$s6,0($sp)
    ld	$s5,8($sp)
    # Line 495
    li	$t2,250
    # Line 484
    c.le.d $f20,$f6
    # Line 495
    addiu	$v1,$s7,592
    li	$a2,-3073
    # Line 486
    lw	$a0,-26780($s0)
    lwc1	$f4,_lit_457ff000
    li	$a3,-4096
    # Line 495
    lui	$t1,0x1
    ld	$ra,16($sp)
    ori	$t3,$t1,0x443
    # Line 484
    bc1t .L0d9c3330
    # Line 486
    and	$a0,$s2,$a0
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f5,$f4
.L0d9c3330:
    trunc.l.s	$f7,$f4
    dmfc1	$a1,$f7
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0xfff
    sll	$a1,$a1,0xc
    or	$a0,$a0,$a1
    sw	$a0,-26780($s0)
    lwc1	$f5,-24488($s1)
    cvt.d.s	$f6,$f5
    c.le.d $f20,$f6
    bc1f .L0d9c3368
    # Line 487
    lwc1	$f4,_lit_45800000
    b	.L0d9c336c
    lwc1	$f4,_lit_457ff000
.L0d9c3368:
    mul.s	$f4,$f5,$f4
.L0d9c336c:
    trunc.l.s	$f7,$f4
    dmfc1	$a5,$f7
    sll	$a5,$a5,0x0
    and	$a4,$a3,$a0
    andi	$a5,$a5,0xfff
    or	$a4,$a4,$a5
    sw	$a4,-26780($s0)
    lwc1	$f5,-24484($s1)
    cvt.d.s	$f6,$f5
    c.le.d	$f20,$f6
    bc1f	.L0d9c33ac
    # Line 488
    lwc1	$f4,_lit_45800000
    ld	$s1,72($sp)
    ldc1	$f20,56($sp)
    b	.L0d9c33b8
    lwc1	$f4,_lit_457ff000
.L0d9c33ac:
    ld	$s1,72($sp)
    ldc1	$f20,56($sp)
    mul.s	$f4,$f5,$f4
.L0d9c33b8:
    trunc.l.s	$f5,$f4
    dmfc1	$t0,$f5
    lw	$a7,-26776($s0)
    sll	$t0,$t0,0x0
    andi	$t0,$t0,0xfff
    and	$a7,$s2,$a7
    sll	$t0,$t0,0xc
    or	$a7,$a7,$t0
    # Line 490
    and	$a7,$a2,$a7
    # Line 491
    li	$t0,-769
    # Line 490
    ori	$a7,$a7,0x800
    # Line 491
    and	$a7,$a7,$t0
    addu	$a0,$s3,$s4
    ori	$a7,$a7,0x200
    sw	$a7,-26776($s0)
    lw	$a6,-26576($a0)
    beqz	$a6,.L0d9c341c
    ld	$s2,64($sp)
    # Line 495
    sw	$zero,-26576($a0)
    sw	$t3,0($s3)
    sw	$t2,0($s3)
    ori	$t1,$t1,0x46
    sw	$t1,0($s3)
    sw	$t1,0($s3)
    ld	$s2,64($sp)
.L0d9c341c:
    ld	$s4,24($sp)
    lui	$a0,0x1
    ori	$a1,$a0,0x407
    sw	$a1,0($s3)
    sw	$s7,0($s3)
    ori	$a0,$a0,0x1800
    or	$v1,$v1,$a0
    sw	$v1,0($s3)
    lw	$v0,-26796($s0)
    sw	$v0,0($s3)
    lw	$at,-26792($s0)
    sw	$at,0($s3)
    lw	$t9,-26788($s0)
    sw	$t9,0($s3)
    lw	$t8,-26784($s0)
    sw	$t8,0($s3)
    lw	$s7,-26780($s0)
    sw	$s7,0($s3)
    # Line 497
    ld	$s7,40($sp)
    # Line 495
    lw	$s0,-26776($s0)
    sw	$s0,0($s3)
    # Line 497
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end ValidateFragmentLightColor

# Function: __glOdysseyValidateLighting
# Declared: Line 522 (Source lines: 523-679)
# Address: 0x0d9c3480 - 0x0d9c3ad4 (Size: 1620 bytes, Frame: 128)
.globl __glOdysseyValidateLighting
.ent __glOdysseyValidateLighting
__glOdysseyValidateLighting:
    # Line 523
    addiu	$sp,$sp,-128
    sd	$ra,112($sp)
    # Line 538
    lui	$a1,0x1
    # Line 523
    sd	$s7,8($sp)
    # Line 538
    addu	$s7,$a1,$a0
    lw	$a3,-24072($s7)
    # Line 539
    li	$a2,410
    sw	$a2,-24072($s7)
    # Line 540
    li	$v1,24
    sw	$v1,-24036($s7)
    lbu	$at,3220($a0)
    # Line 546
    mtc1	$zero,$f1
    # Line 523
    sd	$s6,32($sp)
    lui	$v0,0x13
    move	$s6,$a0
    sd	$gp,24($sp)
    addiu	$v0,$v0,20752
    addu	$gp,$t9,$v0
    # Line 540
    beqz	$at,.L0d9c34ec
    # Line 538
    sd	$a3,16($sp)
    # Line 543
    # lw $t9, -26152($gp) # &__glUnScaleColorf
    addiu	$a2,$s6,1396
    li	$a1,0xa1b4
    jal	__glUnScaleColorf
    addu	$a1,$s6,$a1
    b	.L0d9c3500
    nop
.L0d9c34ec:
    # Line 547
    swc1	$f1,-24132($s7)
    # Line 545
    lwc1	$f0,_lit_3f800000
    # Line 546
    swc1	$f1,-24136($s7)
    # Line 548
    swc1	$f0,-24128($s7)
    # Line 545
    swc1	$f0,-24140($s7)
.L0d9c3500:
    # Line 558
    lw	$a7,-24072($s7)
    lw	$t0,-24072($s7)
    lui	$a0,0x1
    lui	$a2,0x2900
    srl	$t0,$t0,0xa
    andi	$a7,$a7,0x3ff
    sll	$t0,$t0,0x17
    ori	$a2,$a2,0x8000
    or	$a7,$a7,$t0
    or	$a7,$a2,$a7
    sw	$a7,0($a0)
    # Line 559
    lw	$a5,-24036($s7)
    lw	$a6,-24036($s7)
    lui	$a1,0x3200
    srl	$a6,$a6,0xa
    andi	$a5,$a5,0x3ff
    sll	$a6,$a6,0x17
    ori	$a1,$a1,0x8000
    or	$a5,$a5,$a6
    # Line 560
    lui	$a4,0x8e80
    # Line 559
    or	$a5,$a1,$a5
    sw	$a5,0($a0)
    # Line 560
    ori	$a4,$a4,0x9015
    sw	$a4,0($a0)
    # Line 561
    lwc1	$f5,-24140($s7)
    swc1	$f5,0($a0)
    # Line 562
    lwc1	$f4,-24136($s7)
    swc1	$f4,0($a0)
    # Line 563
    lwc1	$f3,-24132($s7)
    swc1	$f3,0($a0)
    # Line 564
    lwc1	$f2,-24128($s7)
    swc1	$f2,0($a0)
    # Line 571
    lbu	$a3,1413($s6)
    beqz	$a3,.L0d9c394c
    nop
    lw	$t1,1792($s6)
    andi	$t1,$t1,0x40
    beqz	$t1,.L0d9c394c
    li	$a0,1
.L0d9c359c:
    lw	$ra,31740($s6)
    sdc1	$f20,56($sp)
    li	$at,-2049
    sll	$t9,$a0,0xb
    sd	$s5,104($sp)
    andi	$t9,$t9,0x800
    and	$ra,$ra,$at
    or	$t9,$t9,$ra
    sw	$t9,31740($s6)
    # Line 574
    lw	$t8,26976($s7)
    sd	$s0,96($sp)
    ori	$t8,$t8,0x2
    sw	$t8,26976($s7)
    li	$t3,2
    sw	$t3,4120($zero)
    lw	$t2,1792($s6)
    sd	$s4,88($sp)
    sd	$s3,80($sp)
    andi	$t2,$t2,0x40
    sd	$s1,72($sp)
    beqz	$t2,.L0d9c3a74
    sd	$s2,64($sp)
    li	$s5,8
    li	$a2,1
    mtc1	$zero,$f20
    move	$s1,$zero
    sd	$s8,120($sp)
    move	$s4,$zero
    move	$s0,$s7
    la	$s3,sub_0d9c0000
    move	$s8,$zero
    li	$s2,16384
    lw	$t8,0($sp)
    sd	$t8,48($sp)
    b	.L0d9c3654
    addiu	$s3,$s3,11760
.L0d9c362c:
    # Line 599
    lw	$a1,26984($s7)
    and	$a1,$a0,$a1
    sw	$a1,26984($s7)
    # Line 600
    sw	$s2,-26828($s0)
.L0d9c363c:
    # Line 602
    addiu	$s0,$s0,4
    addiu	$s1,$s1,1
.L0d9c3644:
    # Line 583
    addiu	$s4,$s4,1
    addiu	$s2,$s2,1
    beq	$s5,$s4,.L0d9c3704
    addiu	$s8,$s8,116
.L0d9c3654:
    # Line 574
    lw	$a3,1800($s6)
    sllv	$a0,$a2,$s4
    and	$a3,$a0,$a3
    beqz	$a3,.L0d9c3644
    nop
    # Line 586
    lw	$a4,-26828($s0)
    bne	$a4,$s2,.L0d9c3688
    # Line 590
    nop	# was lw $t9, -32716($gp) # &sub_0d9c0000
    # Line 586
    lw	$a5,26984($s7)
    and	$a5,$a0,$a5
    beqz	$a5,.L0d9c363c
    sd	$a0,40($sp)
    # Line 590
    # lw $t9, -32716($gp) # &sub_0d9c0000
.L0d9c3688:
    sd	$a0,40($sp)
    move	$a0,$s6
    # Line 589
    lw	$a1,1584($s6)
    # Line 590
    addiu	$t9,$t9,10976
    move	$a2,$s1
    move	$a3,$s2
    mov.s	$f16,$f20
    # Line 589
    addu	$a1,$a1,$s8
    # Line 590
    bal __glOdyim_LightModeli
    # Line 589
    sd	$a1,48($sp)
    # Line 592
    lw	$a3,-26828($s0)
    # Line 597
    ld	$a0,40($sp)
    # Line 592
    ld	$a4,40($sp)
    bne	$a3,$s2,.L0d9c36d4
    li	$a2,1
    lw	$a5,26988($s7)
    and	$a4,$a4,$a5
    beqz	$a4,.L0d9c362c
    # Line 597
    nor	$a0,$a0,$zero
.L0d9c36d4:
    # Line 595
    move	$t9,$s3
    move	$a0,$s6
    ld	$a1,48($sp)
    bal __glOdyim_LightModeli
    move	$a2,$s1
    # Line 597
    ld	$a0,40($sp)
    lw	$a6,26988($s7)
    li	$a2,1
    nor	$a0,$a0,$zero
    and	$a6,$a0,$a6
    b	.L0d9c362c
    sw	$a6,26988($s7)
.L0d9c3704:
    # Line 583
    lw	$a1,1796($s6)
    andi	$a1,$a1,0x1000
    beqz	$a1,.L0d9c3a3c
    # Line 616
    ld	$a5,48($sp)
    # Line 583
    lw	$a2,25724($s7)
    # Line 611
    la	$s4,sub_0daf0000
    # Line 583
    andi	$a2,$a2,0x1
    # Line 611
    ld	$a1,48($sp)
    move	$s2,$zero
    ld	$s8,120($sp)
    # Line 583
    beqz	$a2,.L0d9c3954
    # Line 611
    addiu	$s4,$s4,-14248
    # Line 613
    sltiu	$a3,$s1,8
    beqz	$a3,.L0d9c3824
    nop
    # Line 616
    lw	$a4,-26828($s0)
    li	$s4,0x840c
    bne	$s4,$a4,.L0d9c3774
    # Line 620
    li	$a3,0x840c
    # Line 616
    sw	$a5,0($sp)
.L0d9c3754:
    lw	$a6,26992($s7)
    andi	$a6,$a6,0x1
    lui	$s0,0x1
    sll	$t8,$s1,0x2
    beqz	$a6,.L0d9c380c
    addu	$t8,$s6,$t8
    addu	$s0,$s0,$t8
    # Line 620
    li	$a3,0x840c
.L0d9c3774:
    # lw $t9, -32716($gp) # &sub_0d9c0000
    move	$a2,$s1
    lwc1	$f20,_lit_40400000
    # Line 619
    lui	$s2,0x1
    ori	$s2,$s2,0x6480
    # Line 620
    addiu	$t9,$t9,10976
    move	$a0,$s6
    # Line 619
    addu	$s2,$s6,$s2
    sw	$s2,0($sp)
    # Line 620
    move	$a1,$s2
    bal __glOdyim_LightModeli
    mov.s	$f16,$f20
    # Line 621
    la	$a1,sub_0daf0000
    move	$t9,$s3
    move	$a0,$s6
    move	$a2,$s1
    bal __glOdyim_LightModeli
    addiu	$a1,$a1,-14248
    # Line 622
    # lw $t9, -32716($gp) # &sub_0d9c0000
    move	$a0,$s6
    addiu	$t9,$t9,12432
    move	$a1,$s2
    move	$a2,$s1
    bal __glOdyim_LightModeli
    move	$a3,$zero
    # Line 624
    # lw $t9, -32716($gp) # &sub_0d9c0000
    move	$a0,$s6
    addiu	$t9,$t9,10976
    move	$a1,$s2
    li	$a3,0x840c
    li	$a2,8
    bal __glOdyim_LightModeli
    mov.s	$f16,$f20
    # Line 626
    lw	$ra,26992($s7)
    li	$at,-2
    and	$ra,$ra,$at
    sw	$ra,26992($s7)
    # Line 627
    sw	$s4,-26828($s0)
.L0d9c380c:
    la	$s4,sub_0daf0000
    # Line 630
    li	$s2,1
    # Line 629
    addiu	$s1,$s1,1
    # Line 627
    addiu	$s4,$s4,-14248
    b	.L0d9c3828
    nop
.L0d9c3824:
    # Line 611
    sw	$a1,0($sp)
.L0d9c3828:
    # Line 634
    beqz	$s2,.L0d9c396c
    sltiu	$t8,$s1,8
.L0d9c3830:
    # Line 645
    lw	$a2,1792($s6)
.L0d9c3834:
    andi	$a2,$a2,0x40
    beqz	$a2,.L0d9c3890
    ld	$s5,104($sp)
    sltiu	$a3,$s1,8
    beqz	$a3,.L0d9c388c
    li	$s2,9999
    sll	$t8,$s1,0x2
    lui	$s0,0x1
    addu	$t8,$s6,$t8
    li	$s5,8
    addu	$s0,$s0,$t8
.L0d9c3860:
    lw	$t9,-26828($s0)
    beq	$s2,$t9,.L0d9c3880
    # Line 654
    move	$t9,$s3
    move	$a0,$s6
    move	$a1,$s4
    bal __glOdyim_LightModeli
    move	$a2,$s1
    # Line 655
    sw	$s2,-26828($s0)
.L0d9c3880:
    # Line 657
    addiu	$s1,$s1,1
    bne	$s5,$s1,.L0d9c3860
    addiu	$s0,$s0,4
.L0d9c388c:
    ld	$s5,104($sp)
.L0d9c3890:
    ld	$s0,96($sp)
    # Line 663
    ld	$a5,16($sp)
    sw	$a5,-24072($s7)
    # Line 664
    sw	$zero,-24036($s7)
    # Line 665
    sw	$zero,-24040($s7)
    # Line 674
    lw	$a3,-24072($s7)
    lw	$a4,-24072($s7)
    ld	$s4,88($sp)
    lui	$v0,0x1
    ld	$s3,80($sp)
    lui	$a2,0x2900
    srl	$a4,$a4,0xa
    ld	$s1,72($sp)
    andi	$a3,$a3,0x3ff
    sll	$a4,$a4,0x17
    ld	$s2,64($sp)
    ori	$a2,$a2,0x8000
    or	$a3,$a3,$a4
    or	$a2,$a2,$a3
    sw	$a2,0($v0)
    # Line 675
    lw	$a0,-24036($s7)
    lw	$a1,-24036($s7)
    ldc1	$f20,56($sp)
    # Line 679
    ld	$gp,24($sp)
    # Line 675
    lui	$v1,0x3200
    srl	$a1,$a1,0xa
    # Line 679
    ld	$s6,32($sp)
    # Line 675
    andi	$a0,$a0,0x3ff
    sll	$a1,$a1,0x17
    ld	$ra,112($sp)
    ori	$v1,$v1,0x8000
    or	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,0($v0)
    # Line 676
    lw	$at,-24040($s7)
    lw	$a0,-24040($s7)
    # Line 679
    ld	$s7,8($sp)
    addiu	$sp,$sp,128
    # Line 676
    lui	$v1,0x3100
    srl	$a0,$a0,0xa
    andi	$at,$at,0x3ff
    sll	$a0,$a0,0x17
    ori	$v1,$v1,0x8000
    or	$at,$at,$a0
    or	$at,$at,$v1
    # Line 679
    jr	$ra
    # Line 676
    sw	$at,0($v0)
.L0d9c394c:
    b	.L0d9c359c
    # Line 571
    move	$a0,$zero
.L0d9c3954:
    # Line 616
    ld	$a6,48($sp)
    sw	$a6,0($sp)
.L0d9c395c:
    la	$s4,sub_0daf0000
    move	$s2,$zero
    addiu	$s4,$s4,-14248
    # Line 634
    sltiu	$t8,$s1,8
.L0d9c396c:
    lui	$s0,0x1
    mtc1	$zero,$f20
    lw	$t9,0($sp)
    beqz	$t8,.L0d9c3830
    li	$s5,9998
    sll	$t8,$s1,0x2
    addu	$t8,$s6,$t8
    sd	$t9,48($sp)
    addu	$s0,$s0,$t8
.L0d9c3990:
    lw	$t9,-26828($s0)
    beq	$s5,$t9,.L0d9c3a4c
    # Line 644
    addiu	$a0,$s1,1
    # Line 637
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,10976
    move	$a0,$s6
    move	$a2,$s1
    ld	$a1,48($sp)
    move	$a3,$zero
    bal __glOdyim_LightModeli
    mov.s	$f16,$f20
    # Line 638
    move	$t9,$s3
    move	$a0,$s6
    move	$a1,$s4
    bal __glOdyim_LightModeli
    move	$a2,$s1
    # Line 639
    # lw $t9, -32716($gp) # &sub_0d9c0000
    move	$a0,$s6
    addiu	$t9,$t9,12432
    move	$a1,$s4
    move	$a2,$s1
    bal __glOdyim_LightModeli
    move	$a3,$s2
    # Line 641
    # lw $t9, -32716($gp) # &sub_0d9c0000
    addiu	$t9,$t9,10976
    move	$a0,$s6
    ld	$a1,48($sp)
    li	$a2,8
    move	$a3,$zero
    bal __glOdyim_LightModeli
    lwc1	$f16,_lit_40400000
    # Line 644
    addiu	$a0,$s1,1
    # Line 645
    addiu	$ra,$s2,1
    # Line 644
    addiu	$s0,$s0,4
    move	$s1,$a0
    # Line 642
    sw	$s5,-26832($s0)
    # Line 645
    bnez	$ra,.L0d9c3830
    move	$s2,$ra
    sltiu	$at,$a0,8
    bnez	$at,.L0d9c3990
    nop
    b	.L0d9c3834
    lw	$a2,1792($s6)
.L0d9c3a3c:
    # Line 627
    la	$s4,sub_0daf0000
    ld	$s8,120($sp)
    b	.L0d9c3830
    addiu	$s4,$s4,-14248
.L0d9c3a4c:
    # Line 645
    addiu	$t8,$s2,1
    # Line 644
    addiu	$s0,$s0,4
    move	$s1,$a0
    # Line 645
    bnez	$t8,.L0d9c3830
    move	$s2,$t8
    sltiu	$t9,$a0,8
    bnez	$t9,.L0d9c3990
    nop
    b	.L0d9c3834
    lw	$a2,1792($s6)
.L0d9c3a74:
    # Line 627
    lw	$ra,1796($s6)
    andi	$ra,$ra,0x1000
    # Line 616
    move	$s0,$s7
    move	$s1,$zero
    li	$s4,0x840c
    # Line 627
    beqz	$ra,.L0d9c388c
    # Line 616
    la	$s3,sub_0d9c0000
    # Line 627
    lw	$at,25724($s7)
    andi	$at,$at,0x1
    beqz	$at,.L0d9c3ab4
    # Line 616
    addiu	$s3,$s3,11760
    lw	$v0,-26828($s7)
    beq	$s4,$v0,.L0d9c3ac4
    nop
    b	.L0d9c3774
    # Line 620
    li	$a3,0x840c
.L0d9c3ab4:
    # Line 616
    la	$s3,sub_0d9c0000
    move	$s1,$zero
    b	.L0d9c395c
    addiu	$s3,$s3,11760
.L0d9c3ac4:
    la	$s3,sub_0d9c0000
    move	$s1,$zero
    b	.L0d9c3754
    addiu	$s3,$s3,11760
.end __glOdysseyValidateLighting

.rdata
_lit8_3fbc28f5c28f5c29:
    .word 0x3fbc28f5, 0xc28f5c29
_lit8_3fd3333333333333:
    .word 0x3fd33333, 0x33333333
_lit8_3fe2e147ae147ae1:
    .word 0x3fe2e147, 0xae147ae1
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_400921fb54442d18:
    .word 0x400921fb, 0x54442d18
_lit8_4066800000000000:
    .word 0x40668000, 0x00000000
_lit_3e4ccccd:
    .word 0x3e4ccccd
_lit_3f4ccccd:
    .word 0x3f4ccccd
_lit_3f800000:
    .word 0x3f800000
_lit_40400000:
    .word 0x40400000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_4a800000:
    .word 0x4a800000

