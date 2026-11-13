# Source: ../ODYSSEY/ody_capi_lc.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_capi_lc.c
# Total Functions: 42

.text

# Function: __glOdylc_Color3b
# Declared: Line 23 (Source lines: 23-35)
# Address: 0x0d960aa0 - 0x0d960be8 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Color3b
.ent __glOdylc_Color3b
__glOdylc_Color3b:
    # Line 23
    addiu	$sp,$sp,-64
    # Line 24
    lw	$a3,4112($zero)
    # Line 23
    sd	$s1,8($sp)
    # Line 26
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x1
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 29
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 23
    lui	$v0,0x19
    # Line 29
    move	$s0,$zero
    # Line 23
    addiu	$v0,$v0,31472
    # Line 29
    lw	$a5,4136($zero)
    # Line 23
    addu	$gp,$t9,$v0
    # Line 29
    beqz	$at,.L0d960b94
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d960b8c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d960b04:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d960bc0
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d960b38:
    # Line 35
    ld	$gp,16($sp)
.L0d960b3c:
    # Line 29
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 35
    ld	$s0,0($sp)
    # Line 30
    lui	$t8,0xc580
    # Line 29
    addu	$t3,$s1,$t3
    # Line 30
    ori	$s1,$t8,0xcc0b
    sw	$s1,0($t3)
    # Line 31
    sw	$a0,4($t3)
    # Line 32
    sw	$a1,8($t3)
    # Line 33
    sw	$a2,12($t3)
    # Line 34
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 29
    addiu	$t2,$t2,-4
    # Line 34
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 35
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 34
    addiu	$t1,$t1,4
    # Line 35
    jr	$ra
    # Line 34
    sw	$t1,4148($zero)
.L0d960b8c:
    b	.L0d960b3c
    # Line 35
    ld	$gp,16($sp)
.L0d960b94:
    # Line 29
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d960b38
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d960b04
    sd	$ra,48($sp)
.L0d960bc0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 35
    ld	$gp,16($sp)
    # Line 29
    lw	$t8,4136($zero)
    # Line 35
    ld	$s0,0($sp)
    # Line 29
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 35
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3b

# Function: __glOdylc_Color3bv
# Declared: Line 38 (Source lines: 38-50)
# Address: 0x0d960bf0 - 0x0d960d2c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3bv
.ent __glOdylc_Color3bv
__glOdylc_Color3bv:
    # Line 38
    addiu	$sp,$sp,-48
    # Line 39
    lw	$a1,4112($zero)
    # Line 38
    sd	$s1,16($sp)
    # Line 41
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 44
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 38
    lui	$v0,0x19
    # Line 44
    move	$s0,$zero
    # Line 38
    addiu	$v0,$v0,31136
    # Line 44
    lw	$a3,4136($zero)
    # Line 38
    addu	$gp,$t9,$v0
    # Line 44
    beqz	$at,.L0d960ce0
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d960cd8
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d960c4c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d960d04
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d960c78:
    # Line 50
    ld	$gp,8($sp)
.L0d960c7c:
    # Line 44
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 50
    ld	$s0,0($sp)
    # Line 45
    lui	$t8,0xc580
    # Line 44
    addu	$t1,$s1,$t1
    # Line 45
    ori	$t8,$t8,0xcc0b
    sw	$t8,0($t1)
    # Line 46
    lb	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 50
    ld	$s1,16($sp)
    # Line 47
    lb	$t3,1($a0)
    sw	$t3,8($t1)
    # Line 48
    lb	$t2,2($a0)
    sw	$t2,12($t1)
    # Line 49
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 44
    addiu	$t0,$t0,-4
    # Line 49
    sw	$t0,4136($zero)
    # Line 50
    addiu	$sp,$sp,48
    # Line 49
    addiu	$a7,$a7,4
    # Line 50
    jr	$ra
    # Line 49
    sw	$a7,4148($zero)
.L0d960cd8:
    b	.L0d960c7c
    # Line 50
    ld	$gp,8($sp)
.L0d960ce0:
    # Line 44
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d960c78
    nop
    sd	$a0,24($sp)
    b	.L0d960c4c
    sd	$ra,32($sp)
.L0d960d04:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 50
    ld	$gp,8($sp)
    # Line 44
    lw	$t8,4136($zero)
    # Line 50
    ld	$s0,0($sp)
    # Line 44
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 50
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3bv

# Function: __glOdylc_Color3d
# Declared: Line 53 (Source lines: 53-65)
# Address: 0x0d960d30 - 0x0d960e90 (Size: 352 bytes, Frame: 192)
.globl __glOdylc_Color3d
.ent __glOdylc_Color3d
__glOdylc_Color3d:
    # Line 53
    addiu	$sp,$sp,-64
    # Line 54
    lw	$a0,4112($zero)
    # Line 53
    sd	$s1,16($sp)
    # Line 56
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x1
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 59
    lw	$at,4148($zero)
    # Line 53
    mov.d	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x19
    mov.d	$f5,$f13
    # Line 59
    move	$s0,$zero
    # Line 53
    addiu	$v0,$v0,30816
    # Line 59
    lw	$a2,4136($zero)
    # Line 53
    mov.d	$f6,$f12
    addu	$gp,$t9,$v0
    # Line 59
    beqz	$at,.L0d960e3c
    lw	$s1,4144($zero)
    slti	$a3,$a2,4
    beqz	$a3,.L0d960e34
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d960da0:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a5,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d960e68
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d960dd4:
    # Line 65
    ld	$gp,8($sp)
.L0d960dd8:
    # Line 59
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 65
    ld	$s0,0($sp)
    # Line 59
    addu	$t0,$s1,$t0
    # Line 65
    ld	$s1,16($sp)
    # Line 60
    lui	$t1,0xc580
    # Line 61
    cvt.s.d	$f2,$f6
    # Line 60
    ori	$t1,$t1,0xcc0e
    sw	$t1,0($t0)
    # Line 62
    cvt.s.d	$f1,$f5
    # Line 61
    swc1	$f2,4($t0)
    # Line 63
    cvt.s.d	$f0,$f4
    # Line 62
    swc1	$f1,8($t0)
    # Line 63
    swc1	$f0,12($t0)
    # Line 64
    addiu	$t0,$t0,16
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 59
    addiu	$a7,$a7,-4
    # Line 64
    sw	$a7,4136($zero)
    # Line 65
    addiu	$sp,$sp,64
    # Line 64
    addiu	$a6,$a6,4
    # Line 65
    jr	$ra
    # Line 64
    sw	$a6,4148($zero)
.L0d960e34:
    b	.L0d960dd8
    # Line 65
    ld	$gp,8($sp)
.L0d960e3c:
    # Line 59
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,4
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d960dd4
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d960da0
    sd	$ra,48($sp)
.L0d960e68:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 65
    ld	$gp,8($sp)
    # Line 59
    lw	$t8,4136($zero)
    # Line 65
    ld	$s0,0($sp)
    # Line 59
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 65
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3d

# Function: __glOdylc_Color3dv
# Declared: Line 68 (Source lines: 68-80)
# Address: 0x0d960e90 - 0x0d960fd8 (Size: 328 bytes, Frame: 48)
.globl __glOdylc_Color3dv
.ent __glOdylc_Color3dv
__glOdylc_Color3dv:
    # Line 68
    addiu	$sp,$sp,-48
    # Line 69
    lw	$a1,4112($zero)
    # Line 68
    sd	$s1,16($sp)
    # Line 71
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 74
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 68
    lui	$v0,0x19
    # Line 74
    move	$s0,$zero
    # Line 68
    addiu	$v0,$v0,30464
    # Line 74
    lw	$a3,4136($zero)
    # Line 68
    addu	$gp,$t9,$v0
    # Line 74
    beqz	$at,.L0d960f8c
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d960f84
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d960eec:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d960fb0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d960f1c:
    # Line 75
    lui	$t2,0xc580
    # Line 74
    addu	$t1,$s1,$t1
    # Line 75
    ori	$t2,$t2,0xcc0e
    sw	$t2,0($t1)
    # Line 76
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($t1)
    # Line 77
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($t1)
    # Line 78
    ldc1	$f0,16($a0)
    # Line 80
    ld	$gp,8($sp)
    # Line 74
    subu	$t0,$a3,$s0
    # Line 80
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 78
    cvt.s.d	$f0,$f0
    swc1	$f0,12($t1)
    # Line 79
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 74
    addiu	$t0,$t0,-4
    # Line 79
    sw	$t0,4136($zero)
    # Line 80
    addiu	$sp,$sp,48
    # Line 79
    addiu	$a7,$a7,4
    # Line 80
    jr	$ra
    # Line 79
    sw	$a7,4148($zero)
.L0d960f84:
    b	.L0d960f1c
    # Line 74
    sll	$t1,$s0,0x2
.L0d960f8c:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d960f1c
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d960eec
    sd	$ra,32($sp)
.L0d960fb0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 80
    ld	$gp,8($sp)
    # Line 74
    lw	$t8,4136($zero)
    # Line 80
    ld	$s0,0($sp)
    # Line 74
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 80
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3dv

# Function: __glOdylc_Color3f
# Declared: Line 83 (Source lines: 83-95)
# Address: 0x0d960fe0 - 0x0d961134 (Size: 340 bytes, Frame: 192)
.globl __glOdylc_Color3f
.ent __glOdylc_Color3f
__glOdylc_Color3f:
    # Line 83
    addiu	$sp,$sp,-64
    # Line 84
    lw	$a0,4112($zero)
    # Line 83
    sd	$s1,16($sp)
    # Line 86
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x1
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 89
    lw	$at,4148($zero)
    # Line 83
    mov.s	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x19
    mov.s	$f5,$f13
    # Line 89
    move	$s0,$zero
    # Line 83
    addiu	$v0,$v0,30128
    # Line 89
    lw	$a2,4136($zero)
    # Line 83
    mov.s	$f6,$f12
    addu	$gp,$t9,$v0
    # Line 89
    beqz	$at,.L0d9610e0
    lw	$s1,4144($zero)
    slti	$a3,$a2,4
    beqz	$a3,.L0d9610d8
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d961050:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a5,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d96110c
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d961084:
    # Line 95
    ld	$gp,8($sp)
.L0d961088:
    # Line 89
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 95
    ld	$s0,0($sp)
    # Line 89
    addu	$t0,$s1,$t0
    # Line 95
    ld	$s1,16($sp)
    # Line 90
    lui	$t1,0xc580
    ori	$t1,$t1,0xcc0e
    sw	$t1,0($t0)
    # Line 91
    swc1	$f6,4($t0)
    # Line 92
    swc1	$f5,8($t0)
    # Line 93
    swc1	$f4,12($t0)
    # Line 94
    addiu	$t0,$t0,16
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 89
    addiu	$a7,$a7,-4
    # Line 94
    sw	$a7,4136($zero)
    # Line 95
    addiu	$sp,$sp,64
    # Line 94
    addiu	$a6,$a6,4
    # Line 95
    jr	$ra
    # Line 94
    sw	$a6,4148($zero)
.L0d9610d8:
    b	.L0d961088
    # Line 95
    ld	$gp,8($sp)
.L0d9610e0:
    # Line 89
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,4
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d961084
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d961050
    sd	$ra,48($sp)
.L0d96110c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 95
    ld	$gp,8($sp)
    # Line 89
    lw	$t8,4136($zero)
    # Line 95
    ld	$s0,0($sp)
    # Line 89
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 95
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3f

# Function: __glOdylc_Color3fv
# Declared: Line 98 (Source lines: 98-110)
# Address: 0x0d961140 - 0x0d96127c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3fv
.ent __glOdylc_Color3fv
__glOdylc_Color3fv:
    # Line 98
    addiu	$sp,$sp,-48
    # Line 99
    lw	$a1,4112($zero)
    # Line 98
    sd	$s1,16($sp)
    # Line 101
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 104
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 98
    lui	$v0,0x19
    # Line 104
    move	$s0,$zero
    # Line 98
    addiu	$v0,$v0,29776
    # Line 104
    lw	$a3,4136($zero)
    # Line 98
    addu	$gp,$t9,$v0
    # Line 104
    beqz	$at,.L0d961230
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d961228
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96119c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961254
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9611cc:
    # Line 105
    lui	$t2,0xc580
    # Line 104
    addu	$t1,$s1,$t1
    # Line 105
    ori	$t2,$t2,0xcc0e
    sw	$t2,0($t1)
    # Line 106
    lwc1	$f2,0($a0)
    # Line 110
    ld	$gp,8($sp)
    # Line 106
    swc1	$f2,4($t1)
    # Line 107
    lwc1	$f1,4($a0)
    # Line 104
    subu	$t0,$a3,$s0
    # Line 110
    ld	$s0,0($sp)
    # Line 107
    swc1	$f1,8($t1)
    # Line 108
    lwc1	$f0,8($a0)
    # Line 110
    ld	$s1,16($sp)
    # Line 108
    swc1	$f0,12($t1)
    # Line 109
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 104
    addiu	$t0,$t0,-4
    # Line 109
    sw	$t0,4136($zero)
    # Line 110
    addiu	$sp,$sp,48
    # Line 109
    addiu	$a7,$a7,4
    # Line 110
    jr	$ra
    # Line 109
    sw	$a7,4148($zero)
.L0d961228:
    b	.L0d9611cc
    # Line 104
    sll	$t1,$s0,0x2
.L0d961230:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9611cc
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d96119c
    sd	$ra,32($sp)
.L0d961254:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 110
    ld	$gp,8($sp)
    # Line 104
    lw	$t8,4136($zero)
    # Line 110
    ld	$s0,0($sp)
    # Line 104
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 110
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3fv

# Function: __glOdylc_Color3i
# Declared: Line 113 (Source lines: 113-125)
# Address: 0x0d961280 - 0x0d9613c8 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Color3i
.ent __glOdylc_Color3i
__glOdylc_Color3i:
    # Line 113
    addiu	$sp,$sp,-64
    # Line 114
    lw	$a3,4112($zero)
    # Line 113
    sd	$s1,8($sp)
    # Line 116
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x1
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 119
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 113
    lui	$v0,0x19
    # Line 119
    move	$s0,$zero
    # Line 113
    addiu	$v0,$v0,29456
    # Line 119
    lw	$a5,4136($zero)
    # Line 113
    addu	$gp,$t9,$v0
    # Line 119
    beqz	$at,.L0d961374
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d96136c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9612e4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9613a0
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d961318:
    # Line 125
    ld	$gp,16($sp)
.L0d96131c:
    # Line 119
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 125
    ld	$s0,0($sp)
    # Line 120
    lui	$t8,0xc580
    # Line 119
    addu	$t3,$s1,$t3
    # Line 120
    ori	$s1,$t8,0xcc0d
    sw	$s1,0($t3)
    # Line 121
    sw	$a0,4($t3)
    # Line 122
    sw	$a1,8($t3)
    # Line 123
    sw	$a2,12($t3)
    # Line 124
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 119
    addiu	$t2,$t2,-4
    # Line 124
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 125
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 124
    addiu	$t1,$t1,4
    # Line 125
    jr	$ra
    # Line 124
    sw	$t1,4148($zero)
.L0d96136c:
    b	.L0d96131c
    # Line 125
    ld	$gp,16($sp)
.L0d961374:
    # Line 119
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d961318
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9612e4
    sd	$ra,48($sp)
.L0d9613a0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 125
    ld	$gp,16($sp)
    # Line 119
    lw	$t8,4136($zero)
    # Line 125
    ld	$s0,0($sp)
    # Line 119
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 125
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3i

# Function: __glOdylc_Color3iv
# Declared: Line 128 (Source lines: 128-140)
# Address: 0x0d9613d0 - 0x0d96150c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3iv
.ent __glOdylc_Color3iv
__glOdylc_Color3iv:
    # Line 128
    addiu	$sp,$sp,-48
    # Line 129
    lw	$a1,4112($zero)
    # Line 128
    sd	$s1,16($sp)
    # Line 131
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 134
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 128
    lui	$v0,0x19
    # Line 134
    move	$s0,$zero
    # Line 128
    addiu	$v0,$v0,29120
    # Line 134
    lw	$a3,4136($zero)
    # Line 128
    addu	$gp,$t9,$v0
    # Line 134
    beqz	$at,.L0d9614c0
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d9614b8
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96142c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9614e4
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d961458:
    # Line 140
    ld	$gp,8($sp)
.L0d96145c:
    # Line 134
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 140
    ld	$s0,0($sp)
    # Line 135
    lui	$t8,0xc580
    # Line 134
    addu	$t1,$s1,$t1
    # Line 135
    ori	$t8,$t8,0xcc0d
    sw	$t8,0($t1)
    # Line 136
    lw	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 140
    ld	$s1,16($sp)
    # Line 137
    lw	$t3,4($a0)
    sw	$t3,8($t1)
    # Line 138
    lw	$t2,8($a0)
    sw	$t2,12($t1)
    # Line 139
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 134
    addiu	$t0,$t0,-4
    # Line 139
    sw	$t0,4136($zero)
    # Line 140
    addiu	$sp,$sp,48
    # Line 139
    addiu	$a7,$a7,4
    # Line 140
    jr	$ra
    # Line 139
    sw	$a7,4148($zero)
.L0d9614b8:
    b	.L0d96145c
    # Line 140
    ld	$gp,8($sp)
.L0d9614c0:
    # Line 134
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d961458
    nop
    sd	$a0,24($sp)
    b	.L0d96142c
    sd	$ra,32($sp)
.L0d9614e4:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 140
    ld	$gp,8($sp)
    # Line 134
    lw	$t8,4136($zero)
    # Line 140
    ld	$s0,0($sp)
    # Line 134
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 140
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3iv

# Function: __glOdylc_Color3s
# Declared: Line 143 (Source lines: 143-155)
# Address: 0x0d961510 - 0x0d961658 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Color3s
.ent __glOdylc_Color3s
__glOdylc_Color3s:
    # Line 143
    addiu	$sp,$sp,-64
    # Line 144
    lw	$a3,4112($zero)
    # Line 143
    sd	$s1,8($sp)
    # Line 146
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x1
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 149
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 143
    lui	$v0,0x19
    # Line 149
    move	$s0,$zero
    # Line 143
    addiu	$v0,$v0,28800
    # Line 149
    lw	$a5,4136($zero)
    # Line 143
    addu	$gp,$t9,$v0
    # Line 149
    beqz	$at,.L0d961604
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d9615fc
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d961574:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961630
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d9615a8:
    # Line 155
    ld	$gp,16($sp)
.L0d9615ac:
    # Line 149
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 155
    ld	$s0,0($sp)
    # Line 150
    lui	$t8,0xc580
    # Line 149
    addu	$t3,$s1,$t3
    # Line 150
    ori	$s1,$t8,0xcc0c
    sw	$s1,0($t3)
    # Line 151
    sw	$a0,4($t3)
    # Line 152
    sw	$a1,8($t3)
    # Line 153
    sw	$a2,12($t3)
    # Line 154
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 149
    addiu	$t2,$t2,-4
    # Line 154
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 155
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 154
    addiu	$t1,$t1,4
    # Line 155
    jr	$ra
    # Line 154
    sw	$t1,4148($zero)
.L0d9615fc:
    b	.L0d9615ac
    # Line 155
    ld	$gp,16($sp)
.L0d961604:
    # Line 149
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d9615a8
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d961574
    sd	$ra,48($sp)
.L0d961630:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 155
    ld	$gp,16($sp)
    # Line 149
    lw	$t8,4136($zero)
    # Line 155
    ld	$s0,0($sp)
    # Line 149
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 155
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3s

# Function: __glOdylc_Color3sv
# Declared: Line 158 (Source lines: 158-170)
# Address: 0x0d961660 - 0x0d96179c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3sv
.ent __glOdylc_Color3sv
__glOdylc_Color3sv:
    # Line 158
    addiu	$sp,$sp,-48
    # Line 159
    lw	$a1,4112($zero)
    # Line 158
    sd	$s1,16($sp)
    # Line 161
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 164
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 158
    lui	$v0,0x19
    # Line 164
    move	$s0,$zero
    # Line 158
    addiu	$v0,$v0,28464
    # Line 164
    lw	$a3,4136($zero)
    # Line 158
    addu	$gp,$t9,$v0
    # Line 164
    beqz	$at,.L0d961750
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d961748
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9616bc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961774
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9616e8:
    # Line 170
    ld	$gp,8($sp)
.L0d9616ec:
    # Line 164
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 170
    ld	$s0,0($sp)
    # Line 165
    lui	$t8,0xc580
    # Line 164
    addu	$t1,$s1,$t1
    # Line 165
    ori	$t8,$t8,0xcc0c
    sw	$t8,0($t1)
    # Line 166
    lh	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 170
    ld	$s1,16($sp)
    # Line 167
    lh	$t3,2($a0)
    sw	$t3,8($t1)
    # Line 168
    lh	$t2,4($a0)
    sw	$t2,12($t1)
    # Line 169
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 164
    addiu	$t0,$t0,-4
    # Line 169
    sw	$t0,4136($zero)
    # Line 170
    addiu	$sp,$sp,48
    # Line 169
    addiu	$a7,$a7,4
    # Line 170
    jr	$ra
    # Line 169
    sw	$a7,4148($zero)
.L0d961748:
    b	.L0d9616ec
    # Line 170
    ld	$gp,8($sp)
.L0d961750:
    # Line 164
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9616e8
    nop
    sd	$a0,24($sp)
    b	.L0d9616bc
    sd	$ra,32($sp)
.L0d961774:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 170
    ld	$gp,8($sp)
    # Line 164
    lw	$t8,4136($zero)
    # Line 170
    ld	$s0,0($sp)
    # Line 164
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 170
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3sv

# Function: __glOdylc_Color3ub
# Declared: Line 173 (Source lines: 173-185)
# Address: 0x0d9617a0 - 0x0d9618e8 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Color3ub
.ent __glOdylc_Color3ub
__glOdylc_Color3ub:
    # Line 173
    addiu	$sp,$sp,-64
    # Line 174
    lw	$a3,4112($zero)
    # Line 173
    sd	$s1,8($sp)
    # Line 176
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x1
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 179
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 173
    lui	$v0,0x19
    # Line 179
    move	$s0,$zero
    # Line 173
    addiu	$v0,$v0,28144
    # Line 179
    lw	$a5,4136($zero)
    # Line 173
    addu	$gp,$t9,$v0
    # Line 179
    beqz	$at,.L0d961894
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d96188c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d961804:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9618c0
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d961838:
    # Line 185
    ld	$gp,16($sp)
.L0d96183c:
    # Line 179
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 185
    ld	$s0,0($sp)
    # Line 180
    lui	$t8,0xc580
    # Line 179
    addu	$t3,$s1,$t3
    # Line 180
    ori	$s1,$t8,0xcc08
    sw	$s1,0($t3)
    # Line 181
    sw	$a0,4($t3)
    # Line 182
    sw	$a1,8($t3)
    # Line 183
    sw	$a2,12($t3)
    # Line 184
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 179
    addiu	$t2,$t2,-4
    # Line 184
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 185
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 184
    addiu	$t1,$t1,4
    # Line 185
    jr	$ra
    # Line 184
    sw	$t1,4148($zero)
.L0d96188c:
    b	.L0d96183c
    # Line 185
    ld	$gp,16($sp)
.L0d961894:
    # Line 179
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d961838
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d961804
    sd	$ra,48($sp)
.L0d9618c0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 185
    ld	$gp,16($sp)
    # Line 179
    lw	$t8,4136($zero)
    # Line 185
    ld	$s0,0($sp)
    # Line 179
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 185
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3ub

# Function: __glOdylc_Color3ubv
# Declared: Line 188 (Source lines: 188-200)
# Address: 0x0d9618f0 - 0x0d961a2c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3ubv
.ent __glOdylc_Color3ubv
__glOdylc_Color3ubv:
    # Line 188
    addiu	$sp,$sp,-48
    # Line 189
    lw	$a1,4112($zero)
    # Line 188
    sd	$s1,16($sp)
    # Line 191
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 194
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 188
    lui	$v0,0x19
    # Line 194
    move	$s0,$zero
    # Line 188
    addiu	$v0,$v0,27808
    # Line 194
    lw	$a3,4136($zero)
    # Line 188
    addu	$gp,$t9,$v0
    # Line 194
    beqz	$at,.L0d9619e0
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d9619d8
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96194c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961a04
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d961978:
    # Line 200
    ld	$gp,8($sp)
.L0d96197c:
    # Line 194
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 200
    ld	$s0,0($sp)
    # Line 195
    lui	$t8,0xc580
    # Line 194
    addu	$t1,$s1,$t1
    # Line 195
    ori	$t8,$t8,0xcc08
    sw	$t8,0($t1)
    # Line 196
    lbu	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 200
    ld	$s1,16($sp)
    # Line 197
    lbu	$t3,1($a0)
    sw	$t3,8($t1)
    # Line 198
    lbu	$t2,2($a0)
    sw	$t2,12($t1)
    # Line 199
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 194
    addiu	$t0,$t0,-4
    # Line 199
    sw	$t0,4136($zero)
    # Line 200
    addiu	$sp,$sp,48
    # Line 199
    addiu	$a7,$a7,4
    # Line 200
    jr	$ra
    # Line 199
    sw	$a7,4148($zero)
.L0d9619d8:
    b	.L0d96197c
    # Line 200
    ld	$gp,8($sp)
.L0d9619e0:
    # Line 194
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d961978
    nop
    sd	$a0,24($sp)
    b	.L0d96194c
    sd	$ra,32($sp)
.L0d961a04:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 200
    ld	$gp,8($sp)
    # Line 194
    lw	$t8,4136($zero)
    # Line 200
    ld	$s0,0($sp)
    # Line 194
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 200
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3ubv

# Function: __glOdylc_Color3ui
# Declared: Line 203 (Source lines: 203-215)
# Address: 0x0d961a30 - 0x0d961b78 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Color3ui
.ent __glOdylc_Color3ui
__glOdylc_Color3ui:
    # Line 203
    addiu	$sp,$sp,-64
    # Line 204
    lw	$a3,4112($zero)
    # Line 203
    sd	$s1,8($sp)
    # Line 206
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x1
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 209
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 203
    lui	$v0,0x19
    # Line 209
    move	$s0,$zero
    # Line 203
    addiu	$v0,$v0,27488
    # Line 209
    lw	$a5,4136($zero)
    # Line 203
    addu	$gp,$t9,$v0
    # Line 209
    beqz	$at,.L0d961b24
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d961b1c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d961a94:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961b50
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d961ac8:
    # Line 215
    ld	$gp,16($sp)
.L0d961acc:
    # Line 209
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 215
    ld	$s0,0($sp)
    # Line 210
    lui	$t8,0xc580
    # Line 209
    addu	$t3,$s1,$t3
    # Line 210
    ori	$s1,$t8,0xcc0a
    sw	$s1,0($t3)
    # Line 211
    sw	$a0,4($t3)
    # Line 212
    sw	$a1,8($t3)
    # Line 213
    sw	$a2,12($t3)
    # Line 214
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 209
    addiu	$t2,$t2,-4
    # Line 214
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 215
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 214
    addiu	$t1,$t1,4
    # Line 215
    jr	$ra
    # Line 214
    sw	$t1,4148($zero)
.L0d961b1c:
    b	.L0d961acc
    # Line 215
    ld	$gp,16($sp)
.L0d961b24:
    # Line 209
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d961ac8
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d961a94
    sd	$ra,48($sp)
.L0d961b50:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 215
    ld	$gp,16($sp)
    # Line 209
    lw	$t8,4136($zero)
    # Line 215
    ld	$s0,0($sp)
    # Line 209
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 215
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3ui

# Function: __glOdylc_Color3uiv
# Declared: Line 218 (Source lines: 218-230)
# Address: 0x0d961b80 - 0x0d961cbc (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3uiv
.ent __glOdylc_Color3uiv
__glOdylc_Color3uiv:
    # Line 218
    addiu	$sp,$sp,-48
    # Line 219
    lw	$a1,4112($zero)
    # Line 218
    sd	$s1,16($sp)
    # Line 221
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 224
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 218
    lui	$v0,0x19
    # Line 224
    move	$s0,$zero
    # Line 218
    addiu	$v0,$v0,27152
    # Line 224
    lw	$a3,4136($zero)
    # Line 218
    addu	$gp,$t9,$v0
    # Line 224
    beqz	$at,.L0d961c70
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d961c68
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d961bdc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961c94
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d961c08:
    # Line 230
    ld	$gp,8($sp)
.L0d961c0c:
    # Line 224
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 230
    ld	$s0,0($sp)
    # Line 225
    lui	$t8,0xc580
    # Line 224
    addu	$t1,$s1,$t1
    # Line 225
    ori	$t8,$t8,0xcc0a
    sw	$t8,0($t1)
    # Line 226
    lw	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 230
    ld	$s1,16($sp)
    # Line 227
    lw	$t3,4($a0)
    sw	$t3,8($t1)
    # Line 228
    lw	$t2,8($a0)
    sw	$t2,12($t1)
    # Line 229
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 224
    addiu	$t0,$t0,-4
    # Line 229
    sw	$t0,4136($zero)
    # Line 230
    addiu	$sp,$sp,48
    # Line 229
    addiu	$a7,$a7,4
    # Line 230
    jr	$ra
    # Line 229
    sw	$a7,4148($zero)
.L0d961c68:
    b	.L0d961c0c
    # Line 230
    ld	$gp,8($sp)
.L0d961c70:
    # Line 224
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d961c08
    nop
    sd	$a0,24($sp)
    b	.L0d961bdc
    sd	$ra,32($sp)
.L0d961c94:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 230
    ld	$gp,8($sp)
    # Line 224
    lw	$t8,4136($zero)
    # Line 230
    ld	$s0,0($sp)
    # Line 224
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 230
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3uiv

# Function: __glOdylc_Color3us
# Declared: Line 233 (Source lines: 233-245)
# Address: 0x0d961cc0 - 0x0d961e08 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Color3us
.ent __glOdylc_Color3us
__glOdylc_Color3us:
    # Line 233
    addiu	$sp,$sp,-64
    # Line 234
    lw	$a3,4112($zero)
    # Line 233
    sd	$s1,8($sp)
    # Line 236
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x1
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 239
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 233
    lui	$v0,0x19
    # Line 239
    move	$s0,$zero
    # Line 233
    addiu	$v0,$v0,26832
    # Line 239
    lw	$a5,4136($zero)
    # Line 233
    addu	$gp,$t9,$v0
    # Line 239
    beqz	$at,.L0d961db4
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d961dac
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d961d24:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961de0
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d961d58:
    # Line 245
    ld	$gp,16($sp)
.L0d961d5c:
    # Line 239
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 245
    ld	$s0,0($sp)
    # Line 240
    lui	$t8,0xc580
    # Line 239
    addu	$t3,$s1,$t3
    # Line 240
    ori	$s1,$t8,0xcc09
    sw	$s1,0($t3)
    # Line 241
    sw	$a0,4($t3)
    # Line 242
    sw	$a1,8($t3)
    # Line 243
    sw	$a2,12($t3)
    # Line 244
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 239
    addiu	$t2,$t2,-4
    # Line 244
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 245
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 244
    addiu	$t1,$t1,4
    # Line 245
    jr	$ra
    # Line 244
    sw	$t1,4148($zero)
.L0d961dac:
    b	.L0d961d5c
    # Line 245
    ld	$gp,16($sp)
.L0d961db4:
    # Line 239
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d961d58
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d961d24
    sd	$ra,48($sp)
.L0d961de0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 245
    ld	$gp,16($sp)
    # Line 239
    lw	$t8,4136($zero)
    # Line 245
    ld	$s0,0($sp)
    # Line 239
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 245
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color3us

# Function: __glOdylc_Color3usv
# Declared: Line 248 (Source lines: 248-260)
# Address: 0x0d961e10 - 0x0d961f4c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Color3usv
.ent __glOdylc_Color3usv
__glOdylc_Color3usv:
    # Line 248
    addiu	$sp,$sp,-48
    # Line 249
    lw	$a1,4112($zero)
    # Line 248
    sd	$s1,16($sp)
    # Line 251
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 254
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 248
    lui	$v0,0x19
    # Line 254
    move	$s0,$zero
    # Line 248
    addiu	$v0,$v0,26496
    # Line 254
    lw	$a3,4136($zero)
    # Line 248
    addu	$gp,$t9,$v0
    # Line 254
    beqz	$at,.L0d961f00
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d961ef8
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d961e6c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d961f24
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d961e98:
    # Line 260
    ld	$gp,8($sp)
.L0d961e9c:
    # Line 254
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 260
    ld	$s0,0($sp)
    # Line 255
    lui	$t8,0xc580
    # Line 254
    addu	$t1,$s1,$t1
    # Line 255
    ori	$t8,$t8,0xcc09
    sw	$t8,0($t1)
    # Line 256
    lhu	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 260
    ld	$s1,16($sp)
    # Line 257
    lhu	$t3,2($a0)
    sw	$t3,8($t1)
    # Line 258
    lhu	$t2,4($a0)
    sw	$t2,12($t1)
    # Line 259
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 254
    addiu	$t0,$t0,-4
    # Line 259
    sw	$t0,4136($zero)
    # Line 260
    addiu	$sp,$sp,48
    # Line 259
    addiu	$a7,$a7,4
    # Line 260
    jr	$ra
    # Line 259
    sw	$a7,4148($zero)
.L0d961ef8:
    b	.L0d961e9c
    # Line 260
    ld	$gp,8($sp)
.L0d961f00:
    # Line 254
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d961e98
    nop
    sd	$a0,24($sp)
    b	.L0d961e6c
    sd	$ra,32($sp)
.L0d961f24:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 260
    ld	$gp,8($sp)
    # Line 254
    lw	$t8,4136($zero)
    # Line 260
    ld	$s0,0($sp)
    # Line 254
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 260
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color3usv

# Function: __glOdylc_Color4b
# Declared: Line 263 (Source lines: 263-276)
# Address: 0x0d961f50 - 0x0d9620a8 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Color4b
.ent __glOdylc_Color4b
__glOdylc_Color4b:
    # Line 263
    addiu	$sp,$sp,-64
    # Line 264
    lw	$a4,4112($zero)
    # Line 263
    sd	$s1,16($sp)
    # Line 266
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x1
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 269
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 263
    lui	$v0,0x19
    # Line 269
    move	$s0,$zero
    # Line 263
    addiu	$v0,$v0,26176
    # Line 269
    lw	$a6,4136($zero)
    # Line 263
    addu	$gp,$t9,$v0
    # Line 269
    beqz	$at,.L0d962050
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d962048
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d961fb8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d962080
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d961ff0:
    # Line 276
    ld	$gp,8($sp)
.L0d961ff4:
    # Line 269
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 276
    ld	$s0,0($sp)
    # Line 269
    addu	$s1,$s1,$t9
    # Line 274
    sw	$a3,16($s1)
    # Line 273
    sw	$a2,12($s1)
    # Line 272
    sw	$a1,8($s1)
    # Line 270
    lui	$t8,0xc580
    # Line 271
    sw	$a0,4($s1)
    # Line 270
    ori	$t8,$t8,0xd012
    sw	$t8,0($s1)
    # Line 269
    addiu	$t3,$t3,-5
    # Line 275
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 276
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 275
    addiu	$t2,$t2,5
    # Line 276
    jr	$ra
    # Line 275
    sw	$t2,4148($zero)
.L0d962048:
    b	.L0d961ff4
    # Line 276
    ld	$gp,8($sp)
.L0d962050:
    # Line 269
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d961ff0
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d961fb8
    sd	$ra,56($sp)
.L0d962080:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 276
    ld	$gp,8($sp)
    # Line 269
    lw	$t8,4136($zero)
    # Line 276
    ld	$s0,0($sp)
    # Line 269
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 276
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4b

# Function: __glOdylc_Color4bv
# Declared: Line 279 (Source lines: 279-292)
# Address: 0x0d9620b0 - 0x0d9621f4 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4bv
.ent __glOdylc_Color4bv
__glOdylc_Color4bv:
    # Line 279
    addiu	$sp,$sp,-48
    # Line 280
    lw	$a1,4112($zero)
    # Line 279
    sd	$s1,16($sp)
    # Line 282
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 285
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 279
    lui	$v0,0x19
    # Line 285
    move	$s0,$zero
    # Line 279
    addiu	$v0,$v0,25824
    # Line 285
    lw	$a3,4136($zero)
    # Line 279
    addu	$gp,$t9,$v0
    # Line 285
    beqz	$at,.L0d9621a8
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9621a0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96210c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9621cc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d962138:
    # Line 292
    ld	$gp,8($sp)
.L0d96213c:
    # Line 285
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 292
    ld	$s0,0($sp)
    # Line 286
    lui	$t9,0xc580
    # Line 285
    addu	$t1,$s1,$t1
    # Line 286
    ori	$t9,$t9,0xd012
    sw	$t9,0($t1)
    # Line 287
    lb	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 288
    lb	$s1,1($a0)
    sw	$s1,8($t1)
    # Line 292
    ld	$s1,16($sp)
    # Line 289
    lb	$t3,2($a0)
    sw	$t3,12($t1)
    # Line 290
    lb	$t2,3($a0)
    sw	$t2,16($t1)
    # Line 291
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 285
    addiu	$t0,$t0,-5
    # Line 291
    sw	$t0,4136($zero)
    # Line 292
    addiu	$sp,$sp,48
    # Line 291
    addiu	$a7,$a7,5
    # Line 292
    jr	$ra
    # Line 291
    sw	$a7,4148($zero)
.L0d9621a0:
    b	.L0d96213c
    # Line 292
    ld	$gp,8($sp)
.L0d9621a8:
    # Line 285
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d962138
    nop
    sd	$a0,24($sp)
    b	.L0d96210c
    sd	$ra,32($sp)
.L0d9621cc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 292
    ld	$gp,8($sp)
    # Line 285
    lw	$t8,4136($zero)
    # Line 292
    ld	$s0,0($sp)
    # Line 285
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 292
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4bv

# Function: __glOdylc_Color4d
# Declared: Line 295 (Source lines: 295-308)
# Address: 0x0d962200 - 0x0d962378 (Size: 376 bytes, Frame: 192)
.globl __glOdylc_Color4d
.ent __glOdylc_Color4d
__glOdylc_Color4d:
    # Line 295
    addiu	$sp,$sp,-64
    # Line 296
    lw	$a0,4112($zero)
    # Line 295
    sd	$s1,16($sp)
    # Line 298
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x1
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 295
    mov.d	$f4,$f15
    # Line 301
    lw	$at,4148($zero)
    # Line 295
    mov.d	$f5,$f14
    sd	$s0,0($sp)
    lui	$v0,0x19
    mov.d	$f6,$f13
    # Line 301
    move	$s0,$zero
    # Line 295
    addiu	$v0,$v0,25488
    # Line 301
    lw	$a2,4136($zero)
    # Line 295
    mov.d	$f7,$f12
    addu	$gp,$t9,$v0
    # Line 301
    beqz	$at,.L0d962320
    lw	$s1,4144($zero)
    slti	$a3,$a2,5
    beqz	$a3,.L0d962318
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d962278:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    li	$a5,1
    ldc1	$f7,24($sp)
    beqz	$v0,.L0d962350
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9622b0:
    # Line 308
    ld	$gp,8($sp)
.L0d9622b4:
    # Line 301
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 308
    ld	$s0,0($sp)
    # Line 301
    addu	$t0,$s1,$t0
    # Line 308
    ld	$s1,16($sp)
    # Line 302
    lui	$t1,0xc580
    # Line 303
    cvt.s.d	$f3,$f7
    # Line 302
    ori	$t1,$t1,0xd015
    sw	$t1,0($t0)
    # Line 304
    cvt.s.d	$f2,$f6
    # Line 303
    swc1	$f3,4($t0)
    # Line 305
    cvt.s.d	$f1,$f5
    # Line 304
    swc1	$f2,8($t0)
    # Line 306
    cvt.s.d	$f0,$f4
    # Line 305
    swc1	$f1,12($t0)
    # Line 306
    swc1	$f0,16($t0)
    # Line 307
    addiu	$t0,$t0,20
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 301
    addiu	$a7,$a7,-5
    # Line 307
    sw	$a7,4136($zero)
    # Line 308
    addiu	$sp,$sp,64
    # Line 307
    addiu	$a6,$a6,5
    # Line 308
    jr	$ra
    # Line 307
    sw	$a6,4148($zero)
.L0d962318:
    b	.L0d9622b4
    # Line 308
    ld	$gp,8($sp)
.L0d962320:
    # Line 301
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,5
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9622b0
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    b	.L0d962278
    sd	$ra,56($sp)
.L0d962350:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 308
    ld	$gp,8($sp)
    # Line 301
    lw	$t8,4136($zero)
    # Line 308
    ld	$s0,0($sp)
    # Line 301
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 308
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4d

# Function: __glOdylc_Color4dv
# Declared: Line 311 (Source lines: 311-324)
# Address: 0x0d962380 - 0x0d9624d4 (Size: 340 bytes, Frame: 48)
.globl __glOdylc_Color4dv
.ent __glOdylc_Color4dv
__glOdylc_Color4dv:
    # Line 311
    addiu	$sp,$sp,-48
    # Line 312
    lw	$a1,4112($zero)
    # Line 311
    sd	$s1,16($sp)
    # Line 314
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 317
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 311
    lui	$v0,0x19
    # Line 317
    move	$s0,$zero
    # Line 311
    addiu	$v0,$v0,25104
    # Line 317
    lw	$a3,4136($zero)
    # Line 311
    addu	$gp,$t9,$v0
    # Line 317
    beqz	$at,.L0d962488
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d962480
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9623dc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9624ac
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d96240c:
    # Line 318
    lui	$t2,0xc580
    # Line 317
    addu	$t1,$s1,$t1
    # Line 318
    ori	$t2,$t2,0xd015
    sw	$t2,0($t1)
    # Line 319
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($t1)
    # Line 320
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($t1)
    # Line 321
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($t1)
    # Line 322
    ldc1	$f0,24($a0)
    # Line 324
    ld	$gp,8($sp)
    # Line 317
    subu	$t0,$a3,$s0
    # Line 324
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 322
    cvt.s.d	$f0,$f0
    swc1	$f0,16($t1)
    # Line 323
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 317
    addiu	$t0,$t0,-5
    # Line 323
    sw	$t0,4136($zero)
    # Line 324
    addiu	$sp,$sp,48
    # Line 323
    addiu	$a7,$a7,5
    # Line 324
    jr	$ra
    # Line 323
    sw	$a7,4148($zero)
.L0d962480:
    b	.L0d96240c
    # Line 317
    sll	$t1,$s0,0x2
.L0d962488:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d96240c
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9623dc
    sd	$ra,32($sp)
.L0d9624ac:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 324
    ld	$gp,8($sp)
    # Line 317
    lw	$t8,4136($zero)
    # Line 324
    ld	$s0,0($sp)
    # Line 317
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 324
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4dv

# Function: __glOdylc_Color4f
# Declared: Line 327 (Source lines: 327-340)
# Address: 0x0d9624e0 - 0x0d962648 (Size: 360 bytes, Frame: 192)
.globl __glOdylc_Color4f
.ent __glOdylc_Color4f
__glOdylc_Color4f:
    # Line 327
    addiu	$sp,$sp,-64
    # Line 328
    lw	$a0,4112($zero)
    # Line 327
    sd	$s1,16($sp)
    # Line 330
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x1
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 327
    mov.s	$f4,$f15
    # Line 333
    lw	$at,4148($zero)
    # Line 327
    mov.s	$f5,$f14
    sd	$s0,0($sp)
    lui	$v0,0x19
    mov.s	$f6,$f13
    # Line 333
    move	$s0,$zero
    # Line 327
    addiu	$v0,$v0,24752
    # Line 333
    lw	$a2,4136($zero)
    # Line 327
    mov.s	$f7,$f12
    addu	$gp,$t9,$v0
    # Line 333
    beqz	$at,.L0d9625f0
    lw	$s1,4144($zero)
    slti	$a3,$a2,5
    beqz	$a3,.L0d9625e8
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d962558:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    li	$a5,1
    ldc1	$f7,24($sp)
    beqz	$v0,.L0d962620
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d962590:
    # Line 340
    ld	$gp,8($sp)
.L0d962594:
    # Line 333
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 340
    ld	$s0,0($sp)
    # Line 333
    addu	$t0,$s1,$t0
    # Line 340
    ld	$s1,16($sp)
    # Line 334
    lui	$t1,0xc580
    ori	$t1,$t1,0xd015
    sw	$t1,0($t0)
    # Line 335
    swc1	$f7,4($t0)
    # Line 336
    swc1	$f6,8($t0)
    # Line 337
    swc1	$f5,12($t0)
    # Line 338
    swc1	$f4,16($t0)
    # Line 339
    addiu	$t0,$t0,20
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 333
    addiu	$a7,$a7,-5
    # Line 339
    sw	$a7,4136($zero)
    # Line 340
    addiu	$sp,$sp,64
    # Line 339
    addiu	$a6,$a6,5
    # Line 340
    jr	$ra
    # Line 339
    sw	$a6,4148($zero)
.L0d9625e8:
    b	.L0d962594
    # Line 340
    ld	$gp,8($sp)
.L0d9625f0:
    # Line 333
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,5
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d962590
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    b	.L0d962558
    sd	$ra,56($sp)
.L0d962620:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 340
    ld	$gp,8($sp)
    # Line 333
    lw	$t8,4136($zero)
    # Line 340
    ld	$s0,0($sp)
    # Line 333
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 340
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4f

# Function: __glOdylc_Color4fv
# Declared: Line 343 (Source lines: 343-356)
# Address: 0x0d962650 - 0x0d962794 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4fv
.ent __glOdylc_Color4fv
__glOdylc_Color4fv:
    # Line 343
    addiu	$sp,$sp,-48
    # Line 344
    lw	$a1,4112($zero)
    # Line 343
    sd	$s1,16($sp)
    # Line 346
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 349
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 343
    lui	$v0,0x19
    # Line 349
    move	$s0,$zero
    # Line 343
    addiu	$v0,$v0,24384
    # Line 349
    lw	$a3,4136($zero)
    # Line 343
    addu	$gp,$t9,$v0
    # Line 349
    beqz	$at,.L0d962748
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d962740
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9626ac:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d96276c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9626dc:
    # Line 350
    lui	$t2,0xc580
    # Line 349
    addu	$t1,$s1,$t1
    # Line 350
    ori	$t2,$t2,0xd015
    sw	$t2,0($t1)
    # Line 351
    lwc1	$f3,0($a0)
    swc1	$f3,4($t1)
    # Line 352
    lwc1	$f2,4($a0)
    # Line 356
    ld	$gp,8($sp)
    # Line 352
    swc1	$f2,8($t1)
    # Line 353
    lwc1	$f1,8($a0)
    # Line 349
    subu	$t0,$a3,$s0
    # Line 356
    ld	$s0,0($sp)
    # Line 353
    swc1	$f1,12($t1)
    # Line 354
    lwc1	$f0,12($a0)
    # Line 356
    ld	$s1,16($sp)
    # Line 354
    swc1	$f0,16($t1)
    # Line 355
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 349
    addiu	$t0,$t0,-5
    # Line 355
    sw	$t0,4136($zero)
    # Line 356
    addiu	$sp,$sp,48
    # Line 355
    addiu	$a7,$a7,5
    # Line 356
    jr	$ra
    # Line 355
    sw	$a7,4148($zero)
.L0d962740:
    b	.L0d9626dc
    # Line 349
    sll	$t1,$s0,0x2
.L0d962748:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9626dc
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9626ac
    sd	$ra,32($sp)
.L0d96276c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 356
    ld	$gp,8($sp)
    # Line 349
    lw	$t8,4136($zero)
    # Line 356
    ld	$s0,0($sp)
    # Line 349
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 356
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4fv

# Function: __glOdylc_Color4i
# Declared: Line 359 (Source lines: 359-372)
# Address: 0x0d9627a0 - 0x0d9628f8 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Color4i
.ent __glOdylc_Color4i
__glOdylc_Color4i:
    # Line 359
    addiu	$sp,$sp,-64
    # Line 360
    lw	$a4,4112($zero)
    # Line 359
    sd	$s1,16($sp)
    # Line 362
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x1
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 365
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 359
    lui	$v0,0x19
    # Line 365
    move	$s0,$zero
    # Line 359
    addiu	$v0,$v0,24048
    # Line 365
    lw	$a6,4136($zero)
    # Line 359
    addu	$gp,$t9,$v0
    # Line 365
    beqz	$at,.L0d9628a0
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d962898
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d962808:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9628d0
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d962840:
    # Line 372
    ld	$gp,8($sp)
.L0d962844:
    # Line 365
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 372
    ld	$s0,0($sp)
    # Line 365
    addu	$s1,$s1,$t9
    # Line 370
    sw	$a3,16($s1)
    # Line 369
    sw	$a2,12($s1)
    # Line 368
    sw	$a1,8($s1)
    # Line 366
    lui	$t8,0xc580
    # Line 367
    sw	$a0,4($s1)
    # Line 366
    ori	$t8,$t8,0xd014
    sw	$t8,0($s1)
    # Line 365
    addiu	$t3,$t3,-5
    # Line 371
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 372
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 371
    addiu	$t2,$t2,5
    # Line 372
    jr	$ra
    # Line 371
    sw	$t2,4148($zero)
.L0d962898:
    b	.L0d962844
    # Line 372
    ld	$gp,8($sp)
.L0d9628a0:
    # Line 365
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d962840
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d962808
    sd	$ra,56($sp)
.L0d9628d0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 372
    ld	$gp,8($sp)
    # Line 365
    lw	$t8,4136($zero)
    # Line 372
    ld	$s0,0($sp)
    # Line 365
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 372
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4i

# Function: __glOdylc_Color4iv
# Declared: Line 375 (Source lines: 375-388)
# Address: 0x0d962900 - 0x0d962a44 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4iv
.ent __glOdylc_Color4iv
__glOdylc_Color4iv:
    # Line 375
    addiu	$sp,$sp,-48
    # Line 376
    lw	$a1,4112($zero)
    # Line 375
    sd	$s1,16($sp)
    # Line 378
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 381
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 375
    lui	$v0,0x19
    # Line 381
    move	$s0,$zero
    # Line 375
    addiu	$v0,$v0,23696
    # Line 381
    lw	$a3,4136($zero)
    # Line 375
    addu	$gp,$t9,$v0
    # Line 381
    beqz	$at,.L0d9629f8
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9629f0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96295c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d962a1c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d962988:
    # Line 388
    ld	$gp,8($sp)
.L0d96298c:
    # Line 381
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 388
    ld	$s0,0($sp)
    # Line 382
    lui	$t9,0xc580
    # Line 381
    addu	$t1,$s1,$t1
    # Line 382
    ori	$t9,$t9,0xd014
    sw	$t9,0($t1)
    # Line 383
    lw	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 384
    lw	$s1,4($a0)
    sw	$s1,8($t1)
    # Line 388
    ld	$s1,16($sp)
    # Line 385
    lw	$t3,8($a0)
    sw	$t3,12($t1)
    # Line 386
    lw	$t2,12($a0)
    sw	$t2,16($t1)
    # Line 387
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 381
    addiu	$t0,$t0,-5
    # Line 387
    sw	$t0,4136($zero)
    # Line 388
    addiu	$sp,$sp,48
    # Line 387
    addiu	$a7,$a7,5
    # Line 388
    jr	$ra
    # Line 387
    sw	$a7,4148($zero)
.L0d9629f0:
    b	.L0d96298c
    # Line 388
    ld	$gp,8($sp)
.L0d9629f8:
    # Line 381
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d962988
    nop
    sd	$a0,24($sp)
    b	.L0d96295c
    sd	$ra,32($sp)
.L0d962a1c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 388
    ld	$gp,8($sp)
    # Line 381
    lw	$t8,4136($zero)
    # Line 388
    ld	$s0,0($sp)
    # Line 381
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 388
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4iv

# Function: __glOdylc_Color4s
# Declared: Line 391 (Source lines: 391-404)
# Address: 0x0d962a50 - 0x0d962ba8 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Color4s
.ent __glOdylc_Color4s
__glOdylc_Color4s:
    # Line 391
    addiu	$sp,$sp,-64
    # Line 392
    lw	$a4,4112($zero)
    # Line 391
    sd	$s1,16($sp)
    # Line 394
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x1
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 397
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 391
    lui	$v0,0x19
    # Line 397
    move	$s0,$zero
    # Line 391
    addiu	$v0,$v0,23360
    # Line 397
    lw	$a6,4136($zero)
    # Line 391
    addu	$gp,$t9,$v0
    # Line 397
    beqz	$at,.L0d962b50
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d962b48
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d962ab8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d962b80
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d962af0:
    # Line 404
    ld	$gp,8($sp)
.L0d962af4:
    # Line 397
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 404
    ld	$s0,0($sp)
    # Line 397
    addu	$s1,$s1,$t9
    # Line 402
    sw	$a3,16($s1)
    # Line 401
    sw	$a2,12($s1)
    # Line 400
    sw	$a1,8($s1)
    # Line 398
    lui	$t8,0xc580
    # Line 399
    sw	$a0,4($s1)
    # Line 398
    ori	$t8,$t8,0xd013
    sw	$t8,0($s1)
    # Line 397
    addiu	$t3,$t3,-5
    # Line 403
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 404
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 403
    addiu	$t2,$t2,5
    # Line 404
    jr	$ra
    # Line 403
    sw	$t2,4148($zero)
.L0d962b48:
    b	.L0d962af4
    # Line 404
    ld	$gp,8($sp)
.L0d962b50:
    # Line 397
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d962af0
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d962ab8
    sd	$ra,56($sp)
.L0d962b80:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 404
    ld	$gp,8($sp)
    # Line 397
    lw	$t8,4136($zero)
    # Line 404
    ld	$s0,0($sp)
    # Line 397
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 404
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4s

# Function: __glOdylc_Color4sv
# Declared: Line 407 (Source lines: 407-420)
# Address: 0x0d962bb0 - 0x0d962cf4 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4sv
.ent __glOdylc_Color4sv
__glOdylc_Color4sv:
    # Line 407
    addiu	$sp,$sp,-48
    # Line 408
    lw	$a1,4112($zero)
    # Line 407
    sd	$s1,16($sp)
    # Line 410
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 413
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 407
    lui	$v0,0x19
    # Line 413
    move	$s0,$zero
    # Line 407
    addiu	$v0,$v0,23008
    # Line 413
    lw	$a3,4136($zero)
    # Line 407
    addu	$gp,$t9,$v0
    # Line 413
    beqz	$at,.L0d962ca8
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d962ca0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d962c0c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d962ccc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d962c38:
    # Line 420
    ld	$gp,8($sp)
.L0d962c3c:
    # Line 413
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 420
    ld	$s0,0($sp)
    # Line 414
    lui	$t9,0xc580
    # Line 413
    addu	$t1,$s1,$t1
    # Line 414
    ori	$t9,$t9,0xd013
    sw	$t9,0($t1)
    # Line 415
    lh	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 416
    lh	$s1,2($a0)
    sw	$s1,8($t1)
    # Line 420
    ld	$s1,16($sp)
    # Line 417
    lh	$t3,4($a0)
    sw	$t3,12($t1)
    # Line 418
    lh	$t2,6($a0)
    sw	$t2,16($t1)
    # Line 419
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 413
    addiu	$t0,$t0,-5
    # Line 419
    sw	$t0,4136($zero)
    # Line 420
    addiu	$sp,$sp,48
    # Line 419
    addiu	$a7,$a7,5
    # Line 420
    jr	$ra
    # Line 419
    sw	$a7,4148($zero)
.L0d962ca0:
    b	.L0d962c3c
    # Line 420
    ld	$gp,8($sp)
.L0d962ca8:
    # Line 413
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d962c38
    nop
    sd	$a0,24($sp)
    b	.L0d962c0c
    sd	$ra,32($sp)
.L0d962ccc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 420
    ld	$gp,8($sp)
    # Line 413
    lw	$t8,4136($zero)
    # Line 420
    ld	$s0,0($sp)
    # Line 413
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 420
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4sv

# Function: __glOdylc_Color4ub
# Declared: Line 423 (Source lines: 423-436)
# Address: 0x0d962d00 - 0x0d962e58 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Color4ub
.ent __glOdylc_Color4ub
__glOdylc_Color4ub:
    # Line 423
    addiu	$sp,$sp,-64
    # Line 424
    lw	$a4,4112($zero)
    # Line 423
    sd	$s1,16($sp)
    # Line 426
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x1
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 429
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 423
    lui	$v0,0x19
    # Line 429
    move	$s0,$zero
    # Line 423
    addiu	$v0,$v0,22672
    # Line 429
    lw	$a6,4136($zero)
    # Line 423
    addu	$gp,$t9,$v0
    # Line 429
    beqz	$at,.L0d962e00
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d962df8
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d962d68:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d962e30
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d962da0:
    # Line 436
    ld	$gp,8($sp)
.L0d962da4:
    # Line 429
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 436
    ld	$s0,0($sp)
    # Line 429
    addu	$s1,$s1,$t9
    # Line 434
    sw	$a3,16($s1)
    # Line 433
    sw	$a2,12($s1)
    # Line 432
    sw	$a1,8($s1)
    # Line 430
    lui	$t8,0xc580
    # Line 431
    sw	$a0,4($s1)
    # Line 430
    ori	$t8,$t8,0xd00f
    sw	$t8,0($s1)
    # Line 429
    addiu	$t3,$t3,-5
    # Line 435
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 436
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 435
    addiu	$t2,$t2,5
    # Line 436
    jr	$ra
    # Line 435
    sw	$t2,4148($zero)
.L0d962df8:
    b	.L0d962da4
    # Line 436
    ld	$gp,8($sp)
.L0d962e00:
    # Line 429
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d962da0
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d962d68
    sd	$ra,56($sp)
.L0d962e30:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 436
    ld	$gp,8($sp)
    # Line 429
    lw	$t8,4136($zero)
    # Line 436
    ld	$s0,0($sp)
    # Line 429
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 436
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4ub

# Function: __glOdylc_Color4ubv
# Declared: Line 439 (Source lines: 439-452)
# Address: 0x0d962e60 - 0x0d962fa4 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4ubv
.ent __glOdylc_Color4ubv
__glOdylc_Color4ubv:
    # Line 439
    addiu	$sp,$sp,-48
    # Line 440
    lw	$a1,4112($zero)
    # Line 439
    sd	$s1,16($sp)
    # Line 442
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 445
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 439
    lui	$v0,0x19
    # Line 445
    move	$s0,$zero
    # Line 439
    addiu	$v0,$v0,22320
    # Line 445
    lw	$a3,4136($zero)
    # Line 439
    addu	$gp,$t9,$v0
    # Line 445
    beqz	$at,.L0d962f58
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d962f50
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d962ebc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d962f7c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d962ee8:
    # Line 452
    ld	$gp,8($sp)
.L0d962eec:
    # Line 445
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 452
    ld	$s0,0($sp)
    # Line 446
    lui	$t9,0xc580
    # Line 445
    addu	$t1,$s1,$t1
    # Line 446
    ori	$t9,$t9,0xd00f
    sw	$t9,0($t1)
    # Line 447
    lbu	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 448
    lbu	$s1,1($a0)
    sw	$s1,8($t1)
    # Line 452
    ld	$s1,16($sp)
    # Line 449
    lbu	$t3,2($a0)
    sw	$t3,12($t1)
    # Line 450
    lbu	$t2,3($a0)
    sw	$t2,16($t1)
    # Line 451
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 445
    addiu	$t0,$t0,-5
    # Line 451
    sw	$t0,4136($zero)
    # Line 452
    addiu	$sp,$sp,48
    # Line 451
    addiu	$a7,$a7,5
    # Line 452
    jr	$ra
    # Line 451
    sw	$a7,4148($zero)
.L0d962f50:
    b	.L0d962eec
    # Line 452
    ld	$gp,8($sp)
.L0d962f58:
    # Line 445
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d962ee8
    nop
    sd	$a0,24($sp)
    b	.L0d962ebc
    sd	$ra,32($sp)
.L0d962f7c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 452
    ld	$gp,8($sp)
    # Line 445
    lw	$t8,4136($zero)
    # Line 452
    ld	$s0,0($sp)
    # Line 445
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 452
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4ubv

# Function: __glOdylc_Color4ui
# Declared: Line 455 (Source lines: 455-468)
# Address: 0x0d962fb0 - 0x0d963108 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Color4ui
.ent __glOdylc_Color4ui
__glOdylc_Color4ui:
    # Line 455
    addiu	$sp,$sp,-64
    # Line 456
    lw	$a4,4112($zero)
    # Line 455
    sd	$s1,16($sp)
    # Line 458
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x1
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 461
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 455
    lui	$v0,0x19
    # Line 461
    move	$s0,$zero
    # Line 455
    addiu	$v0,$v0,21984
    # Line 461
    lw	$a6,4136($zero)
    # Line 455
    addu	$gp,$t9,$v0
    # Line 461
    beqz	$at,.L0d9630b0
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d9630a8
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d963018:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9630e0
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d963050:
    # Line 468
    ld	$gp,8($sp)
.L0d963054:
    # Line 461
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 468
    ld	$s0,0($sp)
    # Line 461
    addu	$s1,$s1,$t9
    # Line 466
    sw	$a3,16($s1)
    # Line 465
    sw	$a2,12($s1)
    # Line 464
    sw	$a1,8($s1)
    # Line 462
    lui	$t8,0xc580
    # Line 463
    sw	$a0,4($s1)
    # Line 462
    ori	$t8,$t8,0xd011
    sw	$t8,0($s1)
    # Line 461
    addiu	$t3,$t3,-5
    # Line 467
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 468
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 467
    addiu	$t2,$t2,5
    # Line 468
    jr	$ra
    # Line 467
    sw	$t2,4148($zero)
.L0d9630a8:
    b	.L0d963054
    # Line 468
    ld	$gp,8($sp)
.L0d9630b0:
    # Line 461
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d963050
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d963018
    sd	$ra,56($sp)
.L0d9630e0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 468
    ld	$gp,8($sp)
    # Line 461
    lw	$t8,4136($zero)
    # Line 468
    ld	$s0,0($sp)
    # Line 461
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 468
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4ui

# Function: __glOdylc_Color4uiv
# Declared: Line 471 (Source lines: 471-484)
# Address: 0x0d963110 - 0x0d963254 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4uiv
.ent __glOdylc_Color4uiv
__glOdylc_Color4uiv:
    # Line 471
    addiu	$sp,$sp,-48
    # Line 472
    lw	$a1,4112($zero)
    # Line 471
    sd	$s1,16($sp)
    # Line 474
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 477
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 471
    lui	$v0,0x19
    # Line 477
    move	$s0,$zero
    # Line 471
    addiu	$v0,$v0,21632
    # Line 477
    lw	$a3,4136($zero)
    # Line 471
    addu	$gp,$t9,$v0
    # Line 477
    beqz	$at,.L0d963208
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d963200
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96316c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d96322c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963198:
    # Line 484
    ld	$gp,8($sp)
.L0d96319c:
    # Line 477
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 484
    ld	$s0,0($sp)
    # Line 478
    lui	$t9,0xc580
    # Line 477
    addu	$t1,$s1,$t1
    # Line 478
    ori	$t9,$t9,0xd011
    sw	$t9,0($t1)
    # Line 479
    lw	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 480
    lw	$s1,4($a0)
    sw	$s1,8($t1)
    # Line 484
    ld	$s1,16($sp)
    # Line 481
    lw	$t3,8($a0)
    sw	$t3,12($t1)
    # Line 482
    lw	$t2,12($a0)
    sw	$t2,16($t1)
    # Line 483
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 477
    addiu	$t0,$t0,-5
    # Line 483
    sw	$t0,4136($zero)
    # Line 484
    addiu	$sp,$sp,48
    # Line 483
    addiu	$a7,$a7,5
    # Line 484
    jr	$ra
    # Line 483
    sw	$a7,4148($zero)
.L0d963200:
    b	.L0d96319c
    # Line 484
    ld	$gp,8($sp)
.L0d963208:
    # Line 477
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963198
    nop
    sd	$a0,24($sp)
    b	.L0d96316c
    sd	$ra,32($sp)
.L0d96322c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 484
    ld	$gp,8($sp)
    # Line 477
    lw	$t8,4136($zero)
    # Line 484
    ld	$s0,0($sp)
    # Line 477
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 484
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4uiv

# Function: __glOdylc_Color4us
# Declared: Line 487 (Source lines: 487-500)
# Address: 0x0d963260 - 0x0d9633b8 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Color4us
.ent __glOdylc_Color4us
__glOdylc_Color4us:
    # Line 487
    addiu	$sp,$sp,-64
    # Line 488
    lw	$a4,4112($zero)
    # Line 487
    sd	$s1,16($sp)
    # Line 490
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x1
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 493
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 487
    lui	$v0,0x19
    # Line 493
    move	$s0,$zero
    # Line 487
    addiu	$v0,$v0,21296
    # Line 493
    lw	$a6,4136($zero)
    # Line 487
    addu	$gp,$t9,$v0
    # Line 493
    beqz	$at,.L0d963360
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d963358
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9632c8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963390
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d963300:
    # Line 500
    ld	$gp,8($sp)
.L0d963304:
    # Line 493
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 500
    ld	$s0,0($sp)
    # Line 493
    addu	$s1,$s1,$t9
    # Line 498
    sw	$a3,16($s1)
    # Line 497
    sw	$a2,12($s1)
    # Line 496
    sw	$a1,8($s1)
    # Line 494
    lui	$t8,0xc580
    # Line 495
    sw	$a0,4($s1)
    # Line 494
    ori	$t8,$t8,0xd010
    sw	$t8,0($s1)
    # Line 493
    addiu	$t3,$t3,-5
    # Line 499
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 500
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 499
    addiu	$t2,$t2,5
    # Line 500
    jr	$ra
    # Line 499
    sw	$t2,4148($zero)
.L0d963358:
    b	.L0d963304
    # Line 500
    ld	$gp,8($sp)
.L0d963360:
    # Line 493
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d963300
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d9632c8
    sd	$ra,56($sp)
.L0d963390:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 500
    ld	$gp,8($sp)
    # Line 493
    lw	$t8,4136($zero)
    # Line 500
    ld	$s0,0($sp)
    # Line 493
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 500
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Color4us

# Function: __glOdylc_Color4usv
# Declared: Line 503 (Source lines: 503-516)
# Address: 0x0d9633c0 - 0x0d963504 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Color4usv
.ent __glOdylc_Color4usv
__glOdylc_Color4usv:
    # Line 503
    addiu	$sp,$sp,-48
    # Line 504
    lw	$a1,4112($zero)
    # Line 503
    sd	$s1,16($sp)
    # Line 506
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x1
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 509
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 503
    lui	$v0,0x19
    # Line 509
    move	$s0,$zero
    # Line 503
    addiu	$v0,$v0,20944
    # Line 509
    lw	$a3,4136($zero)
    # Line 503
    addu	$gp,$t9,$v0
    # Line 509
    beqz	$at,.L0d9634b8
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9634b0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96341c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9634dc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963448:
    # Line 516
    ld	$gp,8($sp)
.L0d96344c:
    # Line 509
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 516
    ld	$s0,0($sp)
    # Line 510
    lui	$t9,0xc580
    # Line 509
    addu	$t1,$s1,$t1
    # Line 510
    ori	$t9,$t9,0xd010
    sw	$t9,0($t1)
    # Line 511
    lhu	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 512
    lhu	$s1,2($a0)
    sw	$s1,8($t1)
    # Line 516
    ld	$s1,16($sp)
    # Line 513
    lhu	$t3,4($a0)
    sw	$t3,12($t1)
    # Line 514
    lhu	$t2,6($a0)
    sw	$t2,16($t1)
    # Line 515
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 509
    addiu	$t0,$t0,-5
    # Line 515
    sw	$t0,4136($zero)
    # Line 516
    addiu	$sp,$sp,48
    # Line 515
    addiu	$a7,$a7,5
    # Line 516
    jr	$ra
    # Line 515
    sw	$a7,4148($zero)
.L0d9634b0:
    b	.L0d96344c
    # Line 516
    ld	$gp,8($sp)
.L0d9634b8:
    # Line 509
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963448
    nop
    sd	$a0,24($sp)
    b	.L0d96341c
    sd	$ra,32($sp)
.L0d9634dc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 516
    ld	$gp,8($sp)
    # Line 509
    lw	$t8,4136($zero)
    # Line 516
    ld	$s0,0($sp)
    # Line 509
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 516
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Color4usv

# Function: __glOdylc_Indexd
# Declared: Line 519 (Source lines: 519-529)
# Address: 0x0d963510 - 0x0d963640 (Size: 304 bytes, Frame: 48)
.globl __glOdylc_Indexd
.ent __glOdylc_Indexd
__glOdylc_Indexd:
    # Line 519
    addiu	$sp,$sp,-48
    # Line 520
    lw	$a0,4112($zero)
    # Line 519
    sd	$s1,16($sp)
    # Line 522
    lw	$v1,5076($a0)
    sd	$s0,0($sp)
    lui	$a1,0x2
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 519
    lui	$v0,0x19
    # Line 525
    lw	$at,4148($zero)
    # Line 519
    addiu	$v0,$v0,20608
    # Line 525
    lw	$a2,4136($zero)
    move	$s0,$zero
    sd	$gp,8($sp)
    # Line 519
    addu	$gp,$t9,$v0
    mov.d	$f4,$f12
    # Line 525
    lw	$s1,4144($zero)
    beqz	$at,.L0d9635f4
    slti	$a3,$a2,2
    beqz	$a3,.L0d9635ec
    nop
    sdc1	$f12,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d963570:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a5,1
    ldc1	$f4,24($sp)
    beqz	$v0,.L0d963618
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d96359c:
    # Line 529
    ld	$gp,8($sp)
.L0d9635a0:
    # Line 525
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 529
    ld	$s0,0($sp)
    # Line 525
    addu	$t0,$s1,$t0
    # Line 529
    ld	$s1,16($sp)
    # Line 526
    lui	$t1,0xc580
    # Line 527
    cvt.s.d	$f0,$f4
    # Line 526
    ori	$t1,$t1,0xc407
    sw	$t1,0($t0)
    # Line 527
    swc1	$f0,4($t0)
    # Line 528
    addiu	$t0,$t0,8
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 525
    addiu	$a7,$a7,-2
    # Line 528
    sw	$a7,4136($zero)
    # Line 529
    addiu	$sp,$sp,48
    # Line 528
    addiu	$a6,$a6,2
    # Line 529
    jr	$ra
    # Line 528
    sw	$a6,4148($zero)
.L0d9635ec:
    b	.L0d9635a0
    # Line 529
    ld	$gp,8($sp)
.L0d9635f4:
    # Line 525
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,2
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d96359c
    nop
    sdc1	$f12,24($sp)
    b	.L0d963570
    sd	$ra,32($sp)
.L0d963618:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 529
    ld	$gp,8($sp)
    # Line 525
    lw	$t8,4136($zero)
    # Line 529
    ld	$s0,0($sp)
    # Line 525
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 529
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexd

# Function: __glOdylc_Indexdv
# Declared: Line 532 (Source lines: 532-542)
# Address: 0x0d963640 - 0x0d963770 (Size: 304 bytes, Frame: 48)
.globl __glOdylc_Indexdv
.ent __glOdylc_Indexdv
__glOdylc_Indexdv:
    # Line 532
    addiu	$sp,$sp,-48
    # Line 533
    lw	$a1,4112($zero)
    # Line 532
    sd	$s1,16($sp)
    # Line 535
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 538
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 532
    lui	$v0,0x19
    # Line 538
    move	$s0,$zero
    # Line 532
    addiu	$v0,$v0,20304
    # Line 538
    lw	$a3,4136($zero)
    # Line 532
    addu	$gp,$t9,$v0
    # Line 538
    beqz	$at,.L0d963724
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d96371c
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96369c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963748
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9636cc:
    # Line 539
    lui	$t2,0xc580
    # Line 538
    addu	$t1,$s1,$t1
    # Line 539
    ori	$t2,$t2,0xc407
    sw	$t2,0($t1)
    # Line 540
    ldc1	$f0,0($a0)
    # Line 542
    ld	$gp,8($sp)
    # Line 538
    subu	$t0,$a3,$s0
    # Line 542
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 540
    cvt.s.d	$f0,$f0
    swc1	$f0,4($t1)
    # Line 541
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 538
    addiu	$t0,$t0,-2
    # Line 541
    sw	$t0,4136($zero)
    # Line 542
    addiu	$sp,$sp,48
    # Line 541
    addiu	$a7,$a7,2
    # Line 542
    jr	$ra
    # Line 541
    sw	$a7,4148($zero)
.L0d96371c:
    b	.L0d9636cc
    # Line 538
    sll	$t1,$s0,0x2
.L0d963724:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9636cc
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d96369c
    sd	$ra,32($sp)
.L0d963748:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 542
    ld	$gp,8($sp)
    # Line 538
    lw	$t8,4136($zero)
    # Line 542
    ld	$s0,0($sp)
    # Line 538
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 542
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexdv

# Function: __glOdylc_Indexf
# Declared: Line 545 (Source lines: 545-555)
# Address: 0x0d963770 - 0x0d96389c (Size: 300 bytes, Frame: 48)
.globl __glOdylc_Indexf
.ent __glOdylc_Indexf
__glOdylc_Indexf:
    # Line 545
    addiu	$sp,$sp,-48
    # Line 546
    lw	$a0,4112($zero)
    # Line 545
    sd	$s1,16($sp)
    # Line 548
    lw	$v1,5076($a0)
    sd	$s0,0($sp)
    lui	$a1,0x2
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 545
    lui	$v0,0x19
    # Line 551
    lw	$at,4148($zero)
    # Line 545
    addiu	$v0,$v0,20000
    # Line 551
    lw	$a2,4136($zero)
    move	$s0,$zero
    sd	$gp,8($sp)
    # Line 545
    addu	$gp,$t9,$v0
    mov.s	$f4,$f12
    # Line 551
    lw	$s1,4144($zero)
    beqz	$at,.L0d963850
    slti	$a3,$a2,2
    beqz	$a3,.L0d963848
    nop
    sdc1	$f12,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9637d0:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a5,1
    ldc1	$f4,24($sp)
    beqz	$v0,.L0d963874
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9637fc:
    # Line 555
    ld	$gp,8($sp)
.L0d963800:
    # Line 551
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 555
    ld	$s0,0($sp)
    # Line 551
    addu	$t0,$s1,$t0
    # Line 555
    ld	$s1,16($sp)
    # Line 552
    lui	$t1,0xc580
    ori	$t1,$t1,0xc407
    sw	$t1,0($t0)
    # Line 553
    swc1	$f4,4($t0)
    # Line 554
    addiu	$t0,$t0,8
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 551
    addiu	$a7,$a7,-2
    # Line 554
    sw	$a7,4136($zero)
    # Line 555
    addiu	$sp,$sp,48
    # Line 554
    addiu	$a6,$a6,2
    # Line 555
    jr	$ra
    # Line 554
    sw	$a6,4148($zero)
.L0d963848:
    b	.L0d963800
    # Line 555
    ld	$gp,8($sp)
.L0d963850:
    # Line 551
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,2
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9637fc
    nop
    sdc1	$f12,24($sp)
    b	.L0d9637d0
    sd	$ra,32($sp)
.L0d963874:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 555
    ld	$gp,8($sp)
    # Line 551
    lw	$t8,4136($zero)
    # Line 555
    ld	$s0,0($sp)
    # Line 551
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 555
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexf

# Function: __glOdylc_Indexfv
# Declared: Line 558 (Source lines: 558-568)
# Address: 0x0d9638a0 - 0x0d9639cc (Size: 300 bytes, Frame: 48)
.globl __glOdylc_Indexfv
.ent __glOdylc_Indexfv
__glOdylc_Indexfv:
    # Line 558
    addiu	$sp,$sp,-48
    # Line 559
    lw	$a1,4112($zero)
    # Line 558
    sd	$s1,16($sp)
    # Line 561
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 564
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 558
    lui	$v0,0x19
    # Line 564
    move	$s0,$zero
    # Line 558
    addiu	$v0,$v0,19696
    # Line 564
    lw	$a3,4136($zero)
    # Line 558
    addu	$gp,$t9,$v0
    # Line 564
    beqz	$at,.L0d963980
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d963978
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9638fc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9639a4
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963928:
    # Line 568
    ld	$gp,8($sp)
.L0d96392c:
    # Line 564
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 568
    ld	$s0,0($sp)
    # Line 565
    lui	$t2,0xc580
    # Line 564
    addu	$t1,$s1,$t1
    # Line 565
    ori	$t2,$t2,0xc407
    sw	$t2,0($t1)
    # Line 566
    lwc1	$f0,0($a0)
    # Line 568
    ld	$s1,16($sp)
    # Line 566
    swc1	$f0,4($t1)
    # Line 567
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 564
    addiu	$t0,$t0,-2
    # Line 567
    sw	$t0,4136($zero)
    # Line 568
    addiu	$sp,$sp,48
    # Line 567
    addiu	$a7,$a7,2
    # Line 568
    jr	$ra
    # Line 567
    sw	$a7,4148($zero)
.L0d963978:
    b	.L0d96392c
    # Line 568
    ld	$gp,8($sp)
.L0d963980:
    # Line 564
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963928
    nop
    sd	$a0,24($sp)
    b	.L0d9638fc
    sd	$ra,32($sp)
.L0d9639a4:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 568
    ld	$gp,8($sp)
    # Line 564
    lw	$t8,4136($zero)
    # Line 568
    ld	$s0,0($sp)
    # Line 564
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 568
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexfv

# Function: __glOdylc_Indexi
# Declared: Line 571 (Source lines: 571-581)
# Address: 0x0d9639d0 - 0x0d963af8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Indexi
.ent __glOdylc_Indexi
__glOdylc_Indexi:
    # Line 571
    addiu	$sp,$sp,-48
    # Line 572
    lw	$a1,4112($zero)
    # Line 571
    sd	$s1,16($sp)
    # Line 574
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 577
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 571
    lui	$v0,0x19
    # Line 577
    move	$s0,$zero
    # Line 571
    addiu	$v0,$v0,19392
    # Line 577
    lw	$a3,4136($zero)
    # Line 571
    addu	$gp,$t9,$v0
    # Line 577
    beqz	$at,.L0d963aac
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d963aa4
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d963a2c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963ad0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963a58:
    # Line 581
    ld	$gp,8($sp)
.L0d963a5c:
    # Line 577
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 581
    ld	$s0,0($sp)
    # Line 577
    addu	$t1,$s1,$t1
    # Line 581
    ld	$s1,16($sp)
    # Line 578
    lui	$t2,0xc580
    ori	$t2,$t2,0xc406
    sw	$t2,0($t1)
    # Line 579
    sw	$a0,4($t1)
    # Line 580
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 577
    addiu	$t0,$t0,-2
    # Line 580
    sw	$t0,4136($zero)
    # Line 581
    addiu	$sp,$sp,48
    # Line 580
    addiu	$a7,$a7,2
    # Line 581
    jr	$ra
    # Line 580
    sw	$a7,4148($zero)
.L0d963aa4:
    b	.L0d963a5c
    # Line 581
    ld	$gp,8($sp)
.L0d963aac:
    # Line 577
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963a58
    nop
    sd	$a0,24($sp)
    b	.L0d963a2c
    sd	$ra,32($sp)
.L0d963ad0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 581
    ld	$gp,8($sp)
    # Line 577
    lw	$t8,4136($zero)
    # Line 581
    ld	$s0,0($sp)
    # Line 577
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 581
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexi

# Function: __glOdylc_Indexiv
# Declared: Line 584 (Source lines: 584-594)
# Address: 0x0d963b00 - 0x0d963c2c (Size: 300 bytes, Frame: 48)
.globl __glOdylc_Indexiv
.ent __glOdylc_Indexiv
__glOdylc_Indexiv:
    # Line 584
    addiu	$sp,$sp,-48
    # Line 585
    lw	$a1,4112($zero)
    # Line 584
    sd	$s1,16($sp)
    # Line 587
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 590
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 584
    lui	$v0,0x19
    # Line 590
    move	$s0,$zero
    # Line 584
    addiu	$v0,$v0,19088
    # Line 590
    lw	$a3,4136($zero)
    # Line 584
    addu	$gp,$t9,$v0
    # Line 590
    beqz	$at,.L0d963be0
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d963bd8
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d963b5c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963c04
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963b88:
    # Line 594
    ld	$gp,8($sp)
.L0d963b8c:
    # Line 590
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 594
    ld	$s0,0($sp)
    # Line 590
    addu	$t1,$s1,$t1
    # Line 594
    ld	$s1,16($sp)
    # Line 591
    lui	$t3,0xc580
    ori	$t3,$t3,0xc406
    sw	$t3,0($t1)
    # Line 592
    lw	$t2,0($a0)
    sw	$t2,4($t1)
    # Line 593
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 590
    addiu	$t0,$t0,-2
    # Line 593
    sw	$t0,4136($zero)
    # Line 594
    addiu	$sp,$sp,48
    # Line 593
    addiu	$a7,$a7,2
    # Line 594
    jr	$ra
    # Line 593
    sw	$a7,4148($zero)
.L0d963bd8:
    b	.L0d963b8c
    # Line 594
    ld	$gp,8($sp)
.L0d963be0:
    # Line 590
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963b88
    nop
    sd	$a0,24($sp)
    b	.L0d963b5c
    sd	$ra,32($sp)
.L0d963c04:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 594
    ld	$gp,8($sp)
    # Line 590
    lw	$t8,4136($zero)
    # Line 594
    ld	$s0,0($sp)
    # Line 590
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 594
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexiv

# Function: __glOdylc_Indexs
# Declared: Line 597 (Source lines: 597-607)
# Address: 0x0d963c30 - 0x0d963d58 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Indexs
.ent __glOdylc_Indexs
__glOdylc_Indexs:
    # Line 597
    addiu	$sp,$sp,-48
    # Line 598
    lw	$a1,4112($zero)
    # Line 597
    sd	$s1,16($sp)
    # Line 600
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 603
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 597
    lui	$v0,0x19
    # Line 603
    move	$s0,$zero
    # Line 597
    addiu	$v0,$v0,18784
    # Line 603
    lw	$a3,4136($zero)
    # Line 597
    addu	$gp,$t9,$v0
    # Line 603
    beqz	$at,.L0d963d0c
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d963d04
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d963c8c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963d30
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963cb8:
    # Line 607
    ld	$gp,8($sp)
.L0d963cbc:
    # Line 603
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 607
    ld	$s0,0($sp)
    # Line 603
    addu	$t1,$s1,$t1
    # Line 607
    ld	$s1,16($sp)
    # Line 604
    lui	$t2,0xc580
    ori	$t2,$t2,0xc406
    sw	$t2,0($t1)
    # Line 605
    sw	$a0,4($t1)
    # Line 606
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 603
    addiu	$t0,$t0,-2
    # Line 606
    sw	$t0,4136($zero)
    # Line 607
    addiu	$sp,$sp,48
    # Line 606
    addiu	$a7,$a7,2
    # Line 607
    jr	$ra
    # Line 606
    sw	$a7,4148($zero)
.L0d963d04:
    b	.L0d963cbc
    # Line 607
    ld	$gp,8($sp)
.L0d963d0c:
    # Line 603
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963cb8
    nop
    sd	$a0,24($sp)
    b	.L0d963c8c
    sd	$ra,32($sp)
.L0d963d30:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 607
    ld	$gp,8($sp)
    # Line 603
    lw	$t8,4136($zero)
    # Line 607
    ld	$s0,0($sp)
    # Line 603
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 607
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexs

# Function: __glOdylc_Indexsv
# Declared: Line 610 (Source lines: 610-620)
# Address: 0x0d963d60 - 0x0d963e8c (Size: 300 bytes, Frame: 48)
.globl __glOdylc_Indexsv
.ent __glOdylc_Indexsv
__glOdylc_Indexsv:
    # Line 610
    addiu	$sp,$sp,-48
    # Line 611
    lw	$a1,4112($zero)
    # Line 610
    sd	$s1,16($sp)
    # Line 613
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 616
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 610
    lui	$v0,0x19
    # Line 616
    move	$s0,$zero
    # Line 610
    addiu	$v0,$v0,18480
    # Line 616
    lw	$a3,4136($zero)
    # Line 610
    addu	$gp,$t9,$v0
    # Line 616
    beqz	$at,.L0d963e40
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d963e38
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d963dbc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963e64
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963de8:
    # Line 620
    ld	$gp,8($sp)
.L0d963dec:
    # Line 616
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 620
    ld	$s0,0($sp)
    # Line 616
    addu	$t1,$s1,$t1
    # Line 620
    ld	$s1,16($sp)
    # Line 617
    lui	$t3,0xc580
    ori	$t3,$t3,0xc406
    sw	$t3,0($t1)
    # Line 618
    lh	$t2,0($a0)
    sw	$t2,4($t1)
    # Line 619
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 616
    addiu	$t0,$t0,-2
    # Line 619
    sw	$t0,4136($zero)
    # Line 620
    addiu	$sp,$sp,48
    # Line 619
    addiu	$a7,$a7,2
    # Line 620
    jr	$ra
    # Line 619
    sw	$a7,4148($zero)
.L0d963e38:
    b	.L0d963dec
    # Line 620
    ld	$gp,8($sp)
.L0d963e40:
    # Line 616
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963de8
    nop
    sd	$a0,24($sp)
    b	.L0d963dbc
    sd	$ra,32($sp)
.L0d963e64:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 620
    ld	$gp,8($sp)
    # Line 616
    lw	$t8,4136($zero)
    # Line 620
    ld	$s0,0($sp)
    # Line 616
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 620
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexsv

# Function: __glOdylc_Indexub
# Declared: Line 623 (Source lines: 623-633)
# Address: 0x0d963e90 - 0x0d963fb8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Indexub
.ent __glOdylc_Indexub
__glOdylc_Indexub:
    # Line 623
    addiu	$sp,$sp,-48
    # Line 624
    lw	$a1,4112($zero)
    # Line 623
    sd	$s1,16($sp)
    # Line 626
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 629
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 623
    lui	$v0,0x19
    # Line 629
    move	$s0,$zero
    # Line 623
    addiu	$v0,$v0,18176
    # Line 629
    lw	$a3,4136($zero)
    # Line 623
    addu	$gp,$t9,$v0
    # Line 629
    beqz	$at,.L0d963f6c
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d963f64
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d963eec:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d963f90
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d963f18:
    # Line 633
    ld	$gp,8($sp)
.L0d963f1c:
    # Line 629
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 633
    ld	$s0,0($sp)
    # Line 629
    addu	$t1,$s1,$t1
    # Line 633
    ld	$s1,16($sp)
    # Line 630
    lui	$t2,0xc580
    ori	$t2,$t2,0xc406
    sw	$t2,0($t1)
    # Line 631
    sw	$a0,4($t1)
    # Line 632
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 629
    addiu	$t0,$t0,-2
    # Line 632
    sw	$t0,4136($zero)
    # Line 633
    addiu	$sp,$sp,48
    # Line 632
    addiu	$a7,$a7,2
    # Line 633
    jr	$ra
    # Line 632
    sw	$a7,4148($zero)
.L0d963f64:
    b	.L0d963f1c
    # Line 633
    ld	$gp,8($sp)
.L0d963f6c:
    # Line 629
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d963f18
    nop
    sd	$a0,24($sp)
    b	.L0d963eec
    sd	$ra,32($sp)
.L0d963f90:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 633
    ld	$gp,8($sp)
    # Line 629
    lw	$t8,4136($zero)
    # Line 633
    ld	$s0,0($sp)
    # Line 629
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 633
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexub

# Function: __glOdylc_Indexubv
# Declared: Line 636 (Source lines: 636-646)
# Address: 0x0d963fc0 - 0x0d9640ec (Size: 300 bytes, Frame: 48)
.globl __glOdylc_Indexubv
.ent __glOdylc_Indexubv
__glOdylc_Indexubv:
    # Line 636
    addiu	$sp,$sp,-48
    # Line 637
    lw	$a1,4112($zero)
    # Line 636
    sd	$s1,16($sp)
    # Line 639
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x2
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 642
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 636
    lui	$v0,0x19
    # Line 642
    move	$s0,$zero
    # Line 636
    addiu	$v0,$v0,17872
    # Line 642
    lw	$a3,4136($zero)
    # Line 636
    addu	$gp,$t9,$v0
    # Line 642
    beqz	$at,.L0d9640a0
    lw	$s1,4144($zero)
    slti	$a4,$a3,2
    beqz	$a4,.L0d964098
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d96401c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9640c4
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d964048:
    # Line 646
    ld	$gp,8($sp)
.L0d96404c:
    # Line 642
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 646
    ld	$s0,0($sp)
    # Line 642
    addu	$t1,$s1,$t1
    # Line 646
    ld	$s1,16($sp)
    # Line 643
    lui	$t3,0xc580
    ori	$t3,$t3,0xc406
    sw	$t3,0($t1)
    # Line 644
    lbu	$t2,0($a0)
    sw	$t2,4($t1)
    # Line 645
    addiu	$t1,$t1,8
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 642
    addiu	$t0,$t0,-2
    # Line 645
    sw	$t0,4136($zero)
    # Line 646
    addiu	$sp,$sp,48
    # Line 645
    addiu	$a7,$a7,2
    # Line 646
    jr	$ra
    # Line 645
    sw	$a7,4148($zero)
.L0d964098:
    b	.L0d96404c
    # Line 646
    ld	$gp,8($sp)
.L0d9640a0:
    # Line 642
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,2
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d964048
    nop
    sd	$a0,24($sp)
    b	.L0d96401c
    sd	$ra,32($sp)
.L0d9640c4:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 646
    ld	$gp,8($sp)
    # Line 642
    lw	$t8,4136($zero)
    # Line 646
    ld	$s0,0($sp)
    # Line 642
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 646
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Indexubv

