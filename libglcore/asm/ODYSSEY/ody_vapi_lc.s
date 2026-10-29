# Source: ../ODYSSEY/ody_vapi_lc.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_vapi_lc.c
# Total Functions: 48

.text

# Function: __glOdylc_Vertex2d
# Declared: Line 23 (Source lines: 23-34)
# Address: 0x0d9dcb20 - 0x0d9dcc68 (Size: 328 bytes, Frame: 48)
.globl __glOdylc_Vertex2d
.ent __glOdylc_Vertex2d
__glOdylc_Vertex2d:
    # Line 23
    addiu	$sp,$sp,-48
    # Line 24
    lw	$a0,4112($zero)
    # Line 23
    sd	$s1,16($sp)
    # Line 26
    lw	$v1,5076($a0)
    sd	$s0,0($sp)
    lui	$a1,0x4
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 23
    lui	$v0,0x12
    # Line 29
    lw	$at,4148($zero)
    # Line 23
    addiu	$v0,$v0,-17808
    # Line 29
    lw	$a2,4136($zero)
    # Line 23
    mov.d	$f4,$f13
    # Line 29
    move	$s0,$zero
    sd	$gp,8($sp)
    # Line 23
    addu	$gp,$t9,$v0
    mov.d	$f5,$f12
    # Line 29
    lw	$s1,4144($zero)
    beqz	$at,.L0d9dcc18
    slti	$a3,$a2,3
    beqz	$a3,.L0d9dcc10
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9dcb88:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    li	$a5,1
    ldc1	$f5,24($sp)
    beqz	$v0,.L0d9dcc40
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9dcbb8:
    # Line 34
    ld	$gp,8($sp)
.L0d9dcbbc:
    # Line 29
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 34
    ld	$s0,0($sp)
    # Line 29
    addu	$t0,$s1,$t0
    # Line 34
    ld	$s1,16($sp)
    # Line 30
    lui	$t1,0x8080
    # Line 31
    cvt.s.d	$f1,$f5
    # Line 30
    ori	$t1,$t1,0xc801
    sw	$t1,0($t0)
    # Line 32
    cvt.s.d	$f0,$f4
    # Line 31
    swc1	$f1,4($t0)
    # Line 32
    swc1	$f0,8($t0)
    # Line 33
    addiu	$t0,$t0,12
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 29
    addiu	$a7,$a7,-3
    # Line 33
    sw	$a7,4136($zero)
    # Line 34
    addiu	$sp,$sp,48
    # Line 33
    addiu	$a6,$a6,3
    # Line 34
    jr	$ra
    # Line 33
    sw	$a6,4148($zero)
.L0d9dcc10:
    b	.L0d9dcbbc
    # Line 34
    ld	$gp,8($sp)
.L0d9dcc18:
    # Line 29
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,3
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9dcbb8
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    b	.L0d9dcb88
    sd	$ra,40($sp)
.L0d9dcc40:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 34
    ld	$gp,8($sp)
    # Line 29
    lw	$t8,4136($zero)
    # Line 34
    ld	$s0,0($sp)
    # Line 29
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 34
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2d

# Function: __glOdylc_Vertex2dv
# Declared: Line 37 (Source lines: 37-48)
# Address: 0x0d9dcc70 - 0x0d9dcdac (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Vertex2dv
.ent __glOdylc_Vertex2dv
__glOdylc_Vertex2dv:
    # Line 37
    addiu	$sp,$sp,-48
    # Line 38
    lw	$a1,4112($zero)
    # Line 37
    sd	$s1,16($sp)
    # Line 40
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x4
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 43
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 37
    lui	$v0,0x12
    # Line 43
    move	$s0,$zero
    # Line 37
    addiu	$v0,$v0,-18144
    # Line 43
    lw	$a3,4136($zero)
    # Line 37
    addu	$gp,$t9,$v0
    # Line 43
    beqz	$at,.L0d9dcd60
    lw	$s1,4144($zero)
    slti	$a4,$a3,3
    beqz	$a4,.L0d9dcd58
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9dcccc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dcd84
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9dccfc:
    # Line 44
    lui	$t2,0x8080
    # Line 43
    addu	$t1,$s1,$t1
    # Line 44
    ori	$t2,$t2,0xc801
    sw	$t2,0($t1)
    # Line 45
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($t1)
    # Line 46
    ldc1	$f0,8($a0)
    # Line 48
    ld	$gp,8($sp)
    # Line 43
    subu	$t0,$a3,$s0
    # Line 48
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 46
    cvt.s.d	$f0,$f0
    swc1	$f0,8($t1)
    # Line 47
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 43
    addiu	$t0,$t0,-3
    # Line 47
    sw	$t0,4136($zero)
    # Line 48
    addiu	$sp,$sp,48
    # Line 47
    addiu	$a7,$a7,3
    # Line 48
    jr	$ra
    # Line 47
    sw	$a7,4148($zero)
.L0d9dcd58:
    b	.L0d9dccfc
    # Line 43
    sll	$t1,$s0,0x2
.L0d9dcd60:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,3
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9dccfc
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9dcccc
    sd	$ra,32($sp)
.L0d9dcd84:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 48
    ld	$gp,8($sp)
    # Line 43
    lw	$t8,4136($zero)
    # Line 48
    ld	$s0,0($sp)
    # Line 43
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 48
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2dv

# Function: __glOdylc_Vertex2f
# Declared: Line 51 (Source lines: 51-62)
# Address: 0x0d9dcdb0 - 0x0d9dcef0 (Size: 320 bytes, Frame: 48)
.globl __glOdylc_Vertex2f
.ent __glOdylc_Vertex2f
__glOdylc_Vertex2f:
    # Line 51
    addiu	$sp,$sp,-48
    # Line 52
    lw	$a0,4112($zero)
    # Line 51
    sd	$s1,16($sp)
    # Line 54
    lw	$v1,5076($a0)
    sd	$s0,0($sp)
    lui	$a1,0x4
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 51
    lui	$v0,0x12
    # Line 57
    lw	$at,4148($zero)
    # Line 51
    addiu	$v0,$v0,-18464
    # Line 57
    lw	$a2,4136($zero)
    # Line 51
    mov.s	$f4,$f13
    # Line 57
    move	$s0,$zero
    sd	$gp,8($sp)
    # Line 51
    addu	$gp,$t9,$v0
    mov.s	$f5,$f12
    # Line 57
    lw	$s1,4144($zero)
    beqz	$at,.L0d9dcea0
    slti	$a3,$a2,3
    beqz	$a3,.L0d9dce98
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9dce18:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    li	$a5,1
    ldc1	$f5,24($sp)
    beqz	$v0,.L0d9dcec8
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9dce48:
    # Line 62
    ld	$gp,8($sp)
.L0d9dce4c:
    # Line 57
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 62
    ld	$s0,0($sp)
    # Line 57
    addu	$t0,$s1,$t0
    # Line 62
    ld	$s1,16($sp)
    # Line 58
    lui	$t1,0x8080
    ori	$t1,$t1,0xc801
    sw	$t1,0($t0)
    # Line 59
    swc1	$f5,4($t0)
    # Line 60
    swc1	$f4,8($t0)
    # Line 61
    addiu	$t0,$t0,12
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 57
    addiu	$a7,$a7,-3
    # Line 61
    sw	$a7,4136($zero)
    # Line 62
    addiu	$sp,$sp,48
    # Line 61
    addiu	$a6,$a6,3
    # Line 62
    jr	$ra
    # Line 61
    sw	$a6,4148($zero)
.L0d9dce98:
    b	.L0d9dce4c
    # Line 62
    ld	$gp,8($sp)
.L0d9dcea0:
    # Line 57
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,3
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9dce48
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    b	.L0d9dce18
    sd	$ra,40($sp)
.L0d9dcec8:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 62
    ld	$gp,8($sp)
    # Line 57
    lw	$t8,4136($zero)
    # Line 62
    ld	$s0,0($sp)
    # Line 57
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 62
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2f

# Function: __glOdylc_Vertex2fv
# Declared: Line 65 (Source lines: 65-76)
# Address: 0x0d9dcef0 - 0x0d9dd024 (Size: 308 bytes, Frame: 48)
.globl __glOdylc_Vertex2fv
.ent __glOdylc_Vertex2fv
__glOdylc_Vertex2fv:
    # Line 65
    addiu	$sp,$sp,-48
    # Line 66
    lw	$a1,4112($zero)
    # Line 65
    sd	$s1,16($sp)
    # Line 68
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x4
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 71
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 65
    lui	$v0,0x12
    # Line 71
    move	$s0,$zero
    # Line 65
    addiu	$v0,$v0,-18784
    # Line 71
    lw	$a3,4136($zero)
    # Line 65
    addu	$gp,$t9,$v0
    # Line 71
    beqz	$at,.L0d9dcfd8
    lw	$s1,4144($zero)
    slti	$a4,$a3,3
    beqz	$a4,.L0d9dcfd0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9dcf4c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dcffc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9dcf7c:
    # Line 76
    ld	$gp,8($sp)
    # Line 72
    lui	$t2,0x8080
    # Line 71
    addu	$t1,$s1,$t1
    # Line 72
    ori	$t2,$t2,0xc801
    sw	$t2,0($t1)
    # Line 73
    lwc1	$f1,0($a0)
    # Line 71
    subu	$t0,$a3,$s0
    # Line 76
    ld	$s0,0($sp)
    # Line 73
    swc1	$f1,4($t1)
    # Line 74
    lwc1	$f0,4($a0)
    # Line 76
    ld	$s1,16($sp)
    # Line 74
    swc1	$f0,8($t1)
    # Line 75
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 71
    addiu	$t0,$t0,-3
    # Line 75
    sw	$t0,4136($zero)
    # Line 76
    addiu	$sp,$sp,48
    # Line 75
    addiu	$a7,$a7,3
    # Line 76
    jr	$ra
    # Line 75
    sw	$a7,4148($zero)
.L0d9dcfd0:
    b	.L0d9dcf7c
    # Line 71
    sll	$t1,$s0,0x2
.L0d9dcfd8:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,3
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9dcf7c
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9dcf4c
    sd	$ra,32($sp)
.L0d9dcffc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 76
    ld	$gp,8($sp)
    # Line 71
    lw	$t8,4136($zero)
    # Line 76
    ld	$s0,0($sp)
    # Line 71
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 76
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2fv

# Function: __glOdylc_Vertex2i
# Declared: Line 79 (Source lines: 79-90)
# Address: 0x0d9dd030 - 0x0d9dd168 (Size: 312 bytes, Frame: 48)
.globl __glOdylc_Vertex2i
.ent __glOdylc_Vertex2i
__glOdylc_Vertex2i:
    # Line 79
    addiu	$sp,$sp,-48
    # Line 80
    lw	$a2,4112($zero)
    # Line 79
    sd	$s1,8($sp)
    # Line 82
    lw	$v1,5076($a2)
    sd	$gp,16($sp)
    lui	$a3,0x4
    or	$v1,$v1,$a3
    sw	$v1,5076($a2)
    # Line 85
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 79
    lui	$v0,0x12
    # Line 85
    move	$s0,$zero
    # Line 79
    addiu	$v0,$v0,-19104
    # Line 85
    lw	$a4,4136($zero)
    # Line 79
    addu	$gp,$t9,$v0
    # Line 85
    beqz	$at,.L0d9dd118
    lw	$s1,4144($zero)
    slti	$a5,$a4,3
    beqz	$a5,.L0d9dd110
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9dd090:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    li	$a7,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dd140
    move	$a4,$v0
    lw	$s1,4144($zero)
    andi	$a6,$s1,0x4
    movn	$s0,$a7,$a6
.L0d9dd0c0:
    # Line 90
    ld	$gp,16($sp)
.L0d9dd0c4:
    # Line 85
    subu	$t1,$a4,$s0
    sll	$t2,$s0,0x2
    # Line 90
    ld	$s0,0($sp)
    # Line 85
    addu	$t2,$s1,$t2
    # Line 90
    ld	$s1,8($sp)
    # Line 86
    lui	$t3,0x8080
    ori	$t3,$t3,0xc800
    sw	$t3,0($t2)
    # Line 87
    sw	$a0,4($t2)
    # Line 88
    sw	$a1,8($t2)
    # Line 89
    addiu	$t2,$t2,12
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 85
    addiu	$t1,$t1,-3
    # Line 89
    sw	$t1,4136($zero)
    # Line 90
    addiu	$sp,$sp,48
    # Line 89
    addiu	$t0,$t0,3
    # Line 90
    jr	$ra
    # Line 89
    sw	$t0,4148($zero)
.L0d9dd110:
    b	.L0d9dd0c4
    # Line 90
    ld	$gp,16($sp)
.L0d9dd118:
    # Line 85
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t3,$s0,3
    slt	$t3,$a4,$t3
    beqz	$t3,.L0d9dd0c0
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    b	.L0d9dd090
    sd	$ra,40($sp)
.L0d9dd140:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 90
    ld	$gp,16($sp)
    # Line 85
    lw	$t8,4136($zero)
    # Line 90
    ld	$s0,0($sp)
    # Line 85
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 90
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2i

# Function: __glOdylc_Vertex2iv
# Declared: Line 93 (Source lines: 93-104)
# Address: 0x0d9dd170 - 0x0d9dd2a4 (Size: 308 bytes, Frame: 48)
.globl __glOdylc_Vertex2iv
.ent __glOdylc_Vertex2iv
__glOdylc_Vertex2iv:
    # Line 93
    addiu	$sp,$sp,-48
    # Line 94
    lw	$a1,4112($zero)
    # Line 93
    sd	$s1,16($sp)
    # Line 96
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x4
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 99
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 93
    lui	$v0,0x12
    # Line 99
    move	$s0,$zero
    # Line 93
    addiu	$v0,$v0,-19424
    # Line 99
    lw	$a3,4136($zero)
    # Line 93
    addu	$gp,$t9,$v0
    # Line 99
    beqz	$at,.L0d9dd258
    lw	$s1,4144($zero)
    slti	$a4,$a3,3
    beqz	$a4,.L0d9dd250
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9dd1cc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dd27c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9dd1f8:
    # Line 104
    ld	$gp,8($sp)
.L0d9dd1fc:
    # Line 99
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 104
    ld	$s0,0($sp)
    # Line 100
    lui	$t8,0x8080
    # Line 99
    addu	$t1,$s1,$t1
    # Line 100
    ori	$s1,$t8,0xc800
    sw	$s1,0($t1)
    # Line 104
    ld	$s1,16($sp)
    # Line 101
    lw	$t3,0($a0)
    sw	$t3,4($t1)
    # Line 102
    lw	$t2,4($a0)
    sw	$t2,8($t1)
    # Line 103
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 99
    addiu	$t0,$t0,-3
    # Line 103
    sw	$t0,4136($zero)
    # Line 104
    addiu	$sp,$sp,48
    # Line 103
    addiu	$a7,$a7,3
    # Line 104
    jr	$ra
    # Line 103
    sw	$a7,4148($zero)
.L0d9dd250:
    b	.L0d9dd1fc
    # Line 104
    ld	$gp,8($sp)
.L0d9dd258:
    # Line 99
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,3
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9dd1f8
    nop
    sd	$a0,24($sp)
    b	.L0d9dd1cc
    sd	$ra,32($sp)
.L0d9dd27c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 104
    ld	$gp,8($sp)
    # Line 99
    lw	$t8,4136($zero)
    # Line 104
    ld	$s0,0($sp)
    # Line 99
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 104
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2iv

# Function: __glOdylc_Vertex2s
# Declared: Line 107 (Source lines: 107-118)
# Address: 0x0d9dd2b0 - 0x0d9dd3e8 (Size: 312 bytes, Frame: 48)
.globl __glOdylc_Vertex2s
.ent __glOdylc_Vertex2s
__glOdylc_Vertex2s:
    # Line 107
    addiu	$sp,$sp,-48
    # Line 108
    lw	$a2,4112($zero)
    # Line 107
    sd	$s1,8($sp)
    # Line 110
    lw	$v1,5076($a2)
    sd	$gp,16($sp)
    lui	$a3,0x4
    or	$v1,$v1,$a3
    sw	$v1,5076($a2)
    # Line 113
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 107
    lui	$v0,0x12
    # Line 113
    move	$s0,$zero
    # Line 107
    addiu	$v0,$v0,-19744
    # Line 113
    lw	$a4,4136($zero)
    # Line 107
    addu	$gp,$t9,$v0
    # Line 113
    beqz	$at,.L0d9dd398
    lw	$s1,4144($zero)
    slti	$a5,$a4,3
    beqz	$a5,.L0d9dd390
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9dd310:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    li	$a7,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dd3c0
    move	$a4,$v0
    lw	$s1,4144($zero)
    andi	$a6,$s1,0x4
    movn	$s0,$a7,$a6
.L0d9dd340:
    # Line 118
    ld	$gp,16($sp)
.L0d9dd344:
    # Line 113
    subu	$t1,$a4,$s0
    sll	$t2,$s0,0x2
    # Line 118
    ld	$s0,0($sp)
    # Line 113
    addu	$t2,$s1,$t2
    # Line 118
    ld	$s1,8($sp)
    # Line 114
    lui	$t3,0x8080
    ori	$t3,$t3,0xc800
    sw	$t3,0($t2)
    # Line 115
    sw	$a0,4($t2)
    # Line 116
    sw	$a1,8($t2)
    # Line 117
    addiu	$t2,$t2,12
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 113
    addiu	$t1,$t1,-3
    # Line 117
    sw	$t1,4136($zero)
    # Line 118
    addiu	$sp,$sp,48
    # Line 117
    addiu	$t0,$t0,3
    # Line 118
    jr	$ra
    # Line 117
    sw	$t0,4148($zero)
.L0d9dd390:
    b	.L0d9dd344
    # Line 118
    ld	$gp,16($sp)
.L0d9dd398:
    # Line 113
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t3,$s0,3
    slt	$t3,$a4,$t3
    beqz	$t3,.L0d9dd340
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    b	.L0d9dd310
    sd	$ra,40($sp)
.L0d9dd3c0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 118
    ld	$gp,16($sp)
    # Line 113
    lw	$t8,4136($zero)
    # Line 118
    ld	$s0,0($sp)
    # Line 113
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 118
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2s

# Function: __glOdylc_Vertex2sv
# Declared: Line 121 (Source lines: 121-132)
# Address: 0x0d9dd3f0 - 0x0d9dd524 (Size: 308 bytes, Frame: 48)
.globl __glOdylc_Vertex2sv
.ent __glOdylc_Vertex2sv
__glOdylc_Vertex2sv:
    # Line 121
    addiu	$sp,$sp,-48
    # Line 122
    lw	$a1,4112($zero)
    # Line 121
    sd	$s1,16($sp)
    # Line 124
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x4
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 127
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 121
    lui	$v0,0x12
    # Line 127
    move	$s0,$zero
    # Line 121
    addiu	$v0,$v0,-20064
    # Line 127
    lw	$a3,4136($zero)
    # Line 121
    addu	$gp,$t9,$v0
    # Line 127
    beqz	$at,.L0d9dd4d8
    lw	$s1,4144($zero)
    slti	$a4,$a3,3
    beqz	$a4,.L0d9dd4d0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9dd44c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dd4fc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9dd478:
    # Line 132
    ld	$gp,8($sp)
.L0d9dd47c:
    # Line 127
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 132
    ld	$s0,0($sp)
    # Line 128
    lui	$t8,0x8080
    # Line 127
    addu	$t1,$s1,$t1
    # Line 128
    ori	$s1,$t8,0xc800
    sw	$s1,0($t1)
    # Line 132
    ld	$s1,16($sp)
    # Line 129
    lh	$t3,0($a0)
    sw	$t3,4($t1)
    # Line 130
    lh	$t2,2($a0)
    sw	$t2,8($t1)
    # Line 131
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 127
    addiu	$t0,$t0,-3
    # Line 131
    sw	$t0,4136($zero)
    # Line 132
    addiu	$sp,$sp,48
    # Line 131
    addiu	$a7,$a7,3
    # Line 132
    jr	$ra
    # Line 131
    sw	$a7,4148($zero)
.L0d9dd4d0:
    b	.L0d9dd47c
    # Line 132
    ld	$gp,8($sp)
.L0d9dd4d8:
    # Line 127
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,3
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9dd478
    nop
    sd	$a0,24($sp)
    b	.L0d9dd44c
    sd	$ra,32($sp)
.L0d9dd4fc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 132
    ld	$gp,8($sp)
    # Line 127
    lw	$t8,4136($zero)
    # Line 132
    ld	$s0,0($sp)
    # Line 127
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 132
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2sv

# Function: __glOdylc_Vertex3d
# Declared: Line 135 (Source lines: 135-147)
# Address: 0x0d9dd530 - 0x0d9dd690 (Size: 352 bytes, Frame: 192)
.globl __glOdylc_Vertex3d
.ent __glOdylc_Vertex3d
__glOdylc_Vertex3d:
    # Line 135
    addiu	$sp,$sp,-64
    # Line 136
    lw	$a0,4112($zero)
    # Line 135
    sd	$s1,16($sp)
    # Line 138
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x8
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 141
    lw	$at,4148($zero)
    # Line 135
    mov.d	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x12
    mov.d	$f5,$f13
    # Line 141
    move	$s0,$zero
    # Line 135
    addiu	$v0,$v0,-20384
    # Line 141
    lw	$a2,4136($zero)
    # Line 135
    mov.d	$f6,$f12
    addu	$gp,$t9,$v0
    # Line 141
    beqz	$at,.L0d9dd63c
    lw	$s1,4144($zero)
    slti	$a3,$a2,4
    beqz	$a3,.L0d9dd634
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9dd5a0:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a5,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d9dd668
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9dd5d4:
    # Line 147
    ld	$gp,8($sp)
.L0d9dd5d8:
    # Line 141
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 147
    ld	$s0,0($sp)
    # Line 141
    addu	$t0,$s1,$t0
    # Line 147
    ld	$s1,16($sp)
    # Line 142
    lui	$t1,0x8080
    # Line 143
    cvt.s.d	$f2,$f6
    # Line 142
    ori	$t1,$t1,0xcc03
    sw	$t1,0($t0)
    # Line 144
    cvt.s.d	$f1,$f5
    # Line 143
    swc1	$f2,4($t0)
    # Line 145
    cvt.s.d	$f0,$f4
    # Line 144
    swc1	$f1,8($t0)
    # Line 145
    swc1	$f0,12($t0)
    # Line 146
    addiu	$t0,$t0,16
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 141
    addiu	$a7,$a7,-4
    # Line 146
    sw	$a7,4136($zero)
    # Line 147
    addiu	$sp,$sp,64
    # Line 146
    addiu	$a6,$a6,4
    # Line 147
    jr	$ra
    # Line 146
    sw	$a6,4148($zero)
.L0d9dd634:
    b	.L0d9dd5d8
    # Line 147
    ld	$gp,8($sp)
.L0d9dd63c:
    # Line 141
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,4
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9dd5d4
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d9dd5a0
    sd	$ra,48($sp)
.L0d9dd668:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 147
    ld	$gp,8($sp)
    # Line 141
    lw	$t8,4136($zero)
    # Line 147
    ld	$s0,0($sp)
    # Line 141
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 147
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3d

# Function: __glOdylc_Vertex3dv
# Declared: Line 150 (Source lines: 150-162)
# Address: 0x0d9dd690 - 0x0d9dd7d8 (Size: 328 bytes, Frame: 48)
.globl __glOdylc_Vertex3dv
.ent __glOdylc_Vertex3dv
__glOdylc_Vertex3dv:
    # Line 150
    addiu	$sp,$sp,-48
    # Line 151
    lw	$a1,4112($zero)
    # Line 150
    sd	$s1,16($sp)
    # Line 153
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x8
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 156
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 150
    lui	$v0,0x12
    # Line 156
    move	$s0,$zero
    # Line 150
    addiu	$v0,$v0,-20736
    # Line 156
    lw	$a3,4136($zero)
    # Line 150
    addu	$gp,$t9,$v0
    # Line 156
    beqz	$at,.L0d9dd78c
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d9dd784
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9dd6ec:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dd7b0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9dd71c:
    # Line 157
    lui	$t2,0x8080
    # Line 156
    addu	$t1,$s1,$t1
    # Line 157
    ori	$t2,$t2,0xcc03
    sw	$t2,0($t1)
    # Line 158
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($t1)
    # Line 159
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($t1)
    # Line 160
    ldc1	$f0,16($a0)
    # Line 162
    ld	$gp,8($sp)
    # Line 156
    subu	$t0,$a3,$s0
    # Line 162
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 160
    cvt.s.d	$f0,$f0
    swc1	$f0,12($t1)
    # Line 161
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 156
    addiu	$t0,$t0,-4
    # Line 161
    sw	$t0,4136($zero)
    # Line 162
    addiu	$sp,$sp,48
    # Line 161
    addiu	$a7,$a7,4
    # Line 162
    jr	$ra
    # Line 161
    sw	$a7,4148($zero)
.L0d9dd784:
    b	.L0d9dd71c
    # Line 156
    sll	$t1,$s0,0x2
.L0d9dd78c:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9dd71c
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9dd6ec
    sd	$ra,32($sp)
.L0d9dd7b0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 162
    ld	$gp,8($sp)
    # Line 156
    lw	$t8,4136($zero)
    # Line 162
    ld	$s0,0($sp)
    # Line 156
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 162
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3dv

# Function: __glOdylc_Vertex3f
# Declared: Line 165 (Source lines: 165-177)
# Address: 0x0d9dd7e0 - 0x0d9dd934 (Size: 340 bytes, Frame: 192)
.globl __glOdylc_Vertex3f
.ent __glOdylc_Vertex3f
__glOdylc_Vertex3f:
    # Line 165
    addiu	$sp,$sp,-64
    # Line 166
    lw	$a0,4112($zero)
    # Line 165
    sd	$s1,16($sp)
    # Line 168
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x8
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 171
    lw	$at,4148($zero)
    # Line 165
    mov.s	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x12
    mov.s	$f5,$f13
    # Line 171
    move	$s0,$zero
    # Line 165
    addiu	$v0,$v0,-21072
    # Line 171
    lw	$a2,4136($zero)
    # Line 165
    mov.s	$f6,$f12
    addu	$gp,$t9,$v0
    # Line 171
    beqz	$at,.L0d9dd8e0
    lw	$s1,4144($zero)
    slti	$a3,$a2,4
    beqz	$a3,.L0d9dd8d8
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9dd850:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a5,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d9dd90c
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9dd884:
    # Line 177
    ld	$gp,8($sp)
.L0d9dd888:
    # Line 171
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 177
    ld	$s0,0($sp)
    # Line 171
    addu	$t0,$s1,$t0
    # Line 177
    ld	$s1,16($sp)
    # Line 172
    lui	$t1,0x8080
    ori	$t1,$t1,0xcc03
    sw	$t1,0($t0)
    # Line 173
    swc1	$f6,4($t0)
    # Line 174
    swc1	$f5,8($t0)
    # Line 175
    swc1	$f4,12($t0)
    # Line 176
    addiu	$t0,$t0,16
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 171
    addiu	$a7,$a7,-4
    # Line 176
    sw	$a7,4136($zero)
    # Line 177
    addiu	$sp,$sp,64
    # Line 176
    addiu	$a6,$a6,4
    # Line 177
    jr	$ra
    # Line 176
    sw	$a6,4148($zero)
.L0d9dd8d8:
    b	.L0d9dd888
    # Line 177
    ld	$gp,8($sp)
.L0d9dd8e0:
    # Line 171
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,4
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9dd884
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d9dd850
    sd	$ra,48($sp)
.L0d9dd90c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 177
    ld	$gp,8($sp)
    # Line 171
    lw	$t8,4136($zero)
    # Line 177
    ld	$s0,0($sp)
    # Line 171
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 177
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3f

# Function: __glOdylc_Vertex3fv
# Declared: Line 180 (Source lines: 180-192)
# Address: 0x0d9dd940 - 0x0d9dda7c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Vertex3fv
.ent __glOdylc_Vertex3fv
__glOdylc_Vertex3fv:
    # Line 180
    addiu	$sp,$sp,-48
    # Line 181
    lw	$a1,4112($zero)
    # Line 180
    sd	$s1,16($sp)
    # Line 183
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x8
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 186
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 180
    lui	$v0,0x12
    # Line 186
    move	$s0,$zero
    # Line 180
    addiu	$v0,$v0,-21424
    # Line 186
    lw	$a3,4136($zero)
    # Line 180
    addu	$gp,$t9,$v0
    # Line 186
    beqz	$at,.L0d9dda30
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d9dda28
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9dd99c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dda54
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9dd9cc:
    # Line 187
    lui	$t2,0x8080
    # Line 186
    addu	$t1,$s1,$t1
    # Line 187
    ori	$t2,$t2,0xcc03
    sw	$t2,0($t1)
    # Line 188
    lwc1	$f2,0($a0)
    # Line 192
    ld	$gp,8($sp)
    # Line 188
    swc1	$f2,4($t1)
    # Line 189
    lwc1	$f1,4($a0)
    # Line 186
    subu	$t0,$a3,$s0
    # Line 192
    ld	$s0,0($sp)
    # Line 189
    swc1	$f1,8($t1)
    # Line 190
    lwc1	$f0,8($a0)
    # Line 192
    ld	$s1,16($sp)
    # Line 190
    swc1	$f0,12($t1)
    # Line 191
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 186
    addiu	$t0,$t0,-4
    # Line 191
    sw	$t0,4136($zero)
    # Line 192
    addiu	$sp,$sp,48
    # Line 191
    addiu	$a7,$a7,4
    # Line 192
    jr	$ra
    # Line 191
    sw	$a7,4148($zero)
.L0d9dda28:
    b	.L0d9dd9cc
    # Line 186
    sll	$t1,$s0,0x2
.L0d9dda30:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9dd9cc
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9dd99c
    sd	$ra,32($sp)
.L0d9dda54:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 192
    ld	$gp,8($sp)
    # Line 186
    lw	$t8,4136($zero)
    # Line 192
    ld	$s0,0($sp)
    # Line 186
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 192
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3fv

# Function: __glOdylc_Vertex3i
# Declared: Line 195 (Source lines: 195-207)
# Address: 0x0d9dda80 - 0x0d9ddbc8 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Vertex3i
.ent __glOdylc_Vertex3i
__glOdylc_Vertex3i:
    # Line 195
    addiu	$sp,$sp,-64
    # Line 196
    lw	$a3,4112($zero)
    # Line 195
    sd	$s1,8($sp)
    # Line 198
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x8
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 201
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 195
    lui	$v0,0x12
    # Line 201
    move	$s0,$zero
    # Line 195
    addiu	$v0,$v0,-21744
    # Line 201
    lw	$a5,4136($zero)
    # Line 195
    addu	$gp,$t9,$v0
    # Line 201
    beqz	$at,.L0d9ddb74
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d9ddb6c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9ddae4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ddba0
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d9ddb18:
    # Line 207
    ld	$gp,16($sp)
.L0d9ddb1c:
    # Line 201
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 207
    ld	$s0,0($sp)
    # Line 202
    lui	$t8,0x8080
    # Line 201
    addu	$t3,$s1,$t3
    # Line 202
    ori	$s1,$t8,0xcc02
    sw	$s1,0($t3)
    # Line 203
    sw	$a0,4($t3)
    # Line 204
    sw	$a1,8($t3)
    # Line 205
    sw	$a2,12($t3)
    # Line 206
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 201
    addiu	$t2,$t2,-4
    # Line 206
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 207
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 206
    addiu	$t1,$t1,4
    # Line 207
    jr	$ra
    # Line 206
    sw	$t1,4148($zero)
.L0d9ddb6c:
    b	.L0d9ddb1c
    # Line 207
    ld	$gp,16($sp)
.L0d9ddb74:
    # Line 201
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d9ddb18
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9ddae4
    sd	$ra,48($sp)
.L0d9ddba0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 207
    ld	$gp,16($sp)
    # Line 201
    lw	$t8,4136($zero)
    # Line 207
    ld	$s0,0($sp)
    # Line 201
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 207
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3i

# Function: __glOdylc_Vertex3iv
# Declared: Line 210 (Source lines: 210-222)
# Address: 0x0d9ddbd0 - 0x0d9ddd0c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Vertex3iv
.ent __glOdylc_Vertex3iv
__glOdylc_Vertex3iv:
    # Line 210
    addiu	$sp,$sp,-48
    # Line 211
    lw	$a1,4112($zero)
    # Line 210
    sd	$s1,16($sp)
    # Line 213
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x8
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 216
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 210
    lui	$v0,0x12
    # Line 216
    move	$s0,$zero
    # Line 210
    addiu	$v0,$v0,-22080
    # Line 216
    lw	$a3,4136($zero)
    # Line 210
    addu	$gp,$t9,$v0
    # Line 216
    beqz	$at,.L0d9ddcc0
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d9ddcb8
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ddc2c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ddce4
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9ddc58:
    # Line 222
    ld	$gp,8($sp)
.L0d9ddc5c:
    # Line 216
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 222
    ld	$s0,0($sp)
    # Line 217
    lui	$t8,0x8080
    # Line 216
    addu	$t1,$s1,$t1
    # Line 217
    ori	$t8,$t8,0xcc02
    sw	$t8,0($t1)
    # Line 218
    lw	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 222
    ld	$s1,16($sp)
    # Line 219
    lw	$t3,4($a0)
    sw	$t3,8($t1)
    # Line 220
    lw	$t2,8($a0)
    sw	$t2,12($t1)
    # Line 221
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 216
    addiu	$t0,$t0,-4
    # Line 221
    sw	$t0,4136($zero)
    # Line 222
    addiu	$sp,$sp,48
    # Line 221
    addiu	$a7,$a7,4
    # Line 222
    jr	$ra
    # Line 221
    sw	$a7,4148($zero)
.L0d9ddcb8:
    b	.L0d9ddc5c
    # Line 222
    ld	$gp,8($sp)
.L0d9ddcc0:
    # Line 216
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9ddc58
    nop
    sd	$a0,24($sp)
    b	.L0d9ddc2c
    sd	$ra,32($sp)
.L0d9ddce4:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 222
    ld	$gp,8($sp)
    # Line 216
    lw	$t8,4136($zero)
    # Line 222
    ld	$s0,0($sp)
    # Line 216
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 222
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3iv

# Function: __glOdylc_Vertex3s
# Declared: Line 225 (Source lines: 225-237)
# Address: 0x0d9ddd10 - 0x0d9dde58 (Size: 328 bytes, Frame: 192)
.globl __glOdylc_Vertex3s
.ent __glOdylc_Vertex3s
__glOdylc_Vertex3s:
    # Line 225
    addiu	$sp,$sp,-64
    # Line 226
    lw	$a3,4112($zero)
    # Line 225
    sd	$s1,8($sp)
    # Line 228
    lw	$v1,5076($a3)
    sd	$gp,16($sp)
    lui	$a4,0x8
    or	$v1,$v1,$a4
    sw	$v1,5076($a3)
    # Line 231
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 225
    lui	$v0,0x12
    # Line 231
    move	$s0,$zero
    # Line 225
    addiu	$v0,$v0,-22400
    # Line 231
    lw	$a5,4136($zero)
    # Line 225
    addu	$gp,$t9,$v0
    # Line 231
    beqz	$at,.L0d9dde04
    lw	$s1,4144($zero)
    slti	$a6,$a5,4
    beqz	$a6,.L0d9dddfc
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9ddd74:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$t0,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dde30
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a7,$s1,0x4
    movn	$s0,$t0,$a7
.L0d9ddda8:
    # Line 237
    ld	$gp,16($sp)
.L0d9dddac:
    # Line 231
    subu	$t2,$a5,$s0
    sll	$t3,$s0,0x2
    # Line 237
    ld	$s0,0($sp)
    # Line 232
    lui	$t8,0x8080
    # Line 231
    addu	$t3,$s1,$t3
    # Line 232
    ori	$s1,$t8,0xcc02
    sw	$s1,0($t3)
    # Line 233
    sw	$a0,4($t3)
    # Line 234
    sw	$a1,8($t3)
    # Line 235
    sw	$a2,12($t3)
    # Line 236
    addiu	$t3,$t3,16
    sw	$t3,4144($zero)
    # Line 231
    addiu	$t2,$t2,-4
    # Line 236
    sw	$t2,4136($zero)
    lw	$t1,4148($zero)
    # Line 237
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 236
    addiu	$t1,$t1,4
    # Line 237
    jr	$ra
    # Line 236
    sw	$t1,4148($zero)
.L0d9dddfc:
    b	.L0d9dddac
    # Line 237
    ld	$gp,16($sp)
.L0d9dde04:
    # Line 231
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,4
    slt	$t8,$a5,$t8
    beqz	$t8,.L0d9ddda8
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9ddd74
    sd	$ra,48($sp)
.L0d9dde30:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 237
    ld	$gp,16($sp)
    # Line 231
    lw	$t8,4136($zero)
    # Line 237
    ld	$s0,0($sp)
    # Line 231
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 237
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3s

# Function: __glOdylc_Vertex3sv
# Declared: Line 240 (Source lines: 240-252)
# Address: 0x0d9dde60 - 0x0d9ddf9c (Size: 316 bytes, Frame: 48)
.globl __glOdylc_Vertex3sv
.ent __glOdylc_Vertex3sv
__glOdylc_Vertex3sv:
    # Line 240
    addiu	$sp,$sp,-48
    # Line 241
    lw	$a1,4112($zero)
    # Line 240
    sd	$s1,16($sp)
    # Line 243
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x8
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 246
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 240
    lui	$v0,0x12
    # Line 246
    move	$s0,$zero
    # Line 240
    addiu	$v0,$v0,-22736
    # Line 246
    lw	$a3,4136($zero)
    # Line 240
    addu	$gp,$t9,$v0
    # Line 246
    beqz	$at,.L0d9ddf50
    lw	$s1,4144($zero)
    slti	$a4,$a3,4
    beqz	$a4,.L0d9ddf48
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ddebc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ddf74
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9ddee8:
    # Line 252
    ld	$gp,8($sp)
.L0d9ddeec:
    # Line 246
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 252
    ld	$s0,0($sp)
    # Line 247
    lui	$t8,0x8080
    # Line 246
    addu	$t1,$s1,$t1
    # Line 247
    ori	$t8,$t8,0xcc02
    sw	$t8,0($t1)
    # Line 248
    lh	$s1,0($a0)
    sw	$s1,4($t1)
    # Line 252
    ld	$s1,16($sp)
    # Line 249
    lh	$t3,2($a0)
    sw	$t3,8($t1)
    # Line 250
    lh	$t2,4($a0)
    sw	$t2,12($t1)
    # Line 251
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 246
    addiu	$t0,$t0,-4
    # Line 251
    sw	$t0,4136($zero)
    # Line 252
    addiu	$sp,$sp,48
    # Line 251
    addiu	$a7,$a7,4
    # Line 252
    jr	$ra
    # Line 251
    sw	$a7,4148($zero)
.L0d9ddf48:
    b	.L0d9ddeec
    # Line 252
    ld	$gp,8($sp)
.L0d9ddf50:
    # Line 246
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9ddee8
    nop
    sd	$a0,24($sp)
    b	.L0d9ddebc
    sd	$ra,32($sp)
.L0d9ddf74:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 252
    ld	$gp,8($sp)
    # Line 246
    lw	$t8,4136($zero)
    # Line 252
    ld	$s0,0($sp)
    # Line 246
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 252
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3sv

# Function: __glOdylc_Vertex4d
# Declared: Line 255 (Source lines: 255-268)
# Address: 0x0d9ddfa0 - 0x0d9de118 (Size: 376 bytes, Frame: 192)
.globl __glOdylc_Vertex4d
.ent __glOdylc_Vertex4d
__glOdylc_Vertex4d:
    # Line 255
    addiu	$sp,$sp,-64
    # Line 256
    lw	$a0,4112($zero)
    # Line 255
    sd	$s1,16($sp)
    # Line 258
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x10
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 255
    mov.d	$f4,$f15
    # Line 261
    lw	$at,4148($zero)
    # Line 255
    mov.d	$f5,$f14
    sd	$s0,0($sp)
    lui	$v0,0x12
    mov.d	$f6,$f13
    # Line 261
    move	$s0,$zero
    # Line 255
    addiu	$v0,$v0,-23056
    # Line 261
    lw	$a2,4136($zero)
    # Line 255
    mov.d	$f7,$f12
    addu	$gp,$t9,$v0
    # Line 261
    beqz	$at,.L0d9de0c0
    lw	$s1,4144($zero)
    slti	$a3,$a2,5
    beqz	$a3,.L0d9de0b8
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9de018:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    li	$a5,1
    ldc1	$f7,24($sp)
    beqz	$v0,.L0d9de0f0
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9de050:
    # Line 268
    ld	$gp,8($sp)
.L0d9de054:
    # Line 261
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 268
    ld	$s0,0($sp)
    # Line 261
    addu	$t0,$s1,$t0
    # Line 268
    ld	$s1,16($sp)
    # Line 262
    lui	$t1,0x8080
    # Line 263
    cvt.s.d	$f3,$f7
    # Line 262
    ori	$t1,$t1,0xd005
    sw	$t1,0($t0)
    # Line 264
    cvt.s.d	$f2,$f6
    # Line 263
    swc1	$f3,4($t0)
    # Line 265
    cvt.s.d	$f1,$f5
    # Line 264
    swc1	$f2,8($t0)
    # Line 266
    cvt.s.d	$f0,$f4
    # Line 265
    swc1	$f1,12($t0)
    # Line 266
    swc1	$f0,16($t0)
    # Line 267
    addiu	$t0,$t0,20
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 261
    addiu	$a7,$a7,-5
    # Line 267
    sw	$a7,4136($zero)
    # Line 268
    addiu	$sp,$sp,64
    # Line 267
    addiu	$a6,$a6,5
    # Line 268
    jr	$ra
    # Line 267
    sw	$a6,4148($zero)
.L0d9de0b8:
    b	.L0d9de054
    # Line 268
    ld	$gp,8($sp)
.L0d9de0c0:
    # Line 261
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,5
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9de050
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    b	.L0d9de018
    sd	$ra,56($sp)
.L0d9de0f0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 268
    ld	$gp,8($sp)
    # Line 261
    lw	$t8,4136($zero)
    # Line 268
    ld	$s0,0($sp)
    # Line 261
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 268
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex4d

# Function: __glOdylc_Vertex4dv
# Declared: Line 271 (Source lines: 271-284)
# Address: 0x0d9de120 - 0x0d9de274 (Size: 340 bytes, Frame: 48)
.globl __glOdylc_Vertex4dv
.ent __glOdylc_Vertex4dv
__glOdylc_Vertex4dv:
    # Line 271
    addiu	$sp,$sp,-48
    # Line 272
    lw	$a1,4112($zero)
    # Line 271
    sd	$s1,16($sp)
    # Line 274
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x10
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 277
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 271
    lui	$v0,0x12
    # Line 277
    move	$s0,$zero
    # Line 271
    addiu	$v0,$v0,-23440
    # Line 277
    lw	$a3,4136($zero)
    # Line 271
    addu	$gp,$t9,$v0
    # Line 277
    beqz	$at,.L0d9de228
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9de220
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9de17c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9de24c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9de1ac:
    # Line 278
    lui	$t2,0x8080
    # Line 277
    addu	$t1,$s1,$t1
    # Line 278
    ori	$t2,$t2,0xd005
    sw	$t2,0($t1)
    # Line 279
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($t1)
    # Line 280
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($t1)
    # Line 281
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($t1)
    # Line 282
    ldc1	$f0,24($a0)
    # Line 284
    ld	$gp,8($sp)
    # Line 277
    subu	$t0,$a3,$s0
    # Line 284
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 282
    cvt.s.d	$f0,$f0
    swc1	$f0,16($t1)
    # Line 283
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 277
    addiu	$t0,$t0,-5
    # Line 283
    sw	$t0,4136($zero)
    # Line 284
    addiu	$sp,$sp,48
    # Line 283
    addiu	$a7,$a7,5
    # Line 284
    jr	$ra
    # Line 283
    sw	$a7,4148($zero)
.L0d9de220:
    b	.L0d9de1ac
    # Line 277
    sll	$t1,$s0,0x2
.L0d9de228:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9de1ac
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9de17c
    sd	$ra,32($sp)
.L0d9de24c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 284
    ld	$gp,8($sp)
    # Line 277
    lw	$t8,4136($zero)
    # Line 284
    ld	$s0,0($sp)
    # Line 277
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 284
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex4dv

# Function: __glOdylc_Vertex4f
# Declared: Line 287 (Source lines: 287-300)
# Address: 0x0d9de280 - 0x0d9de3e8 (Size: 360 bytes, Frame: 192)
.globl __glOdylc_Vertex4f
.ent __glOdylc_Vertex4f
__glOdylc_Vertex4f:
    # Line 287
    addiu	$sp,$sp,-64
    # Line 288
    lw	$a0,4112($zero)
    # Line 287
    sd	$s1,16($sp)
    # Line 290
    lw	$v1,5076($a0)
    sd	$gp,8($sp)
    lui	$a1,0x10
    or	$v1,$v1,$a1
    sw	$v1,5076($a0)
    # Line 287
    mov.s	$f4,$f15
    # Line 293
    lw	$at,4148($zero)
    # Line 287
    mov.s	$f5,$f14
    sd	$s0,0($sp)
    lui	$v0,0x12
    mov.s	$f6,$f13
    # Line 293
    move	$s0,$zero
    # Line 287
    addiu	$v0,$v0,-23792
    # Line 293
    lw	$a2,4136($zero)
    # Line 287
    mov.s	$f7,$f12
    addu	$gp,$t9,$v0
    # Line 293
    beqz	$at,.L0d9de390
    lw	$s1,4144($zero)
    slti	$a3,$a2,5
    beqz	$a3,.L0d9de388
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9de2f8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    li	$a5,1
    ldc1	$f7,24($sp)
    beqz	$v0,.L0d9de3c0
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9de330:
    # Line 300
    ld	$gp,8($sp)
.L0d9de334:
    # Line 293
    subu	$a7,$a2,$s0
    sll	$t0,$s0,0x2
    # Line 300
    ld	$s0,0($sp)
    # Line 293
    addu	$t0,$s1,$t0
    # Line 300
    ld	$s1,16($sp)
    # Line 294
    lui	$t1,0x8080
    ori	$t1,$t1,0xd005
    sw	$t1,0($t0)
    # Line 295
    swc1	$f7,4($t0)
    # Line 296
    swc1	$f6,8($t0)
    # Line 297
    swc1	$f5,12($t0)
    # Line 298
    swc1	$f4,16($t0)
    # Line 299
    addiu	$t0,$t0,20
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 293
    addiu	$a7,$a7,-5
    # Line 299
    sw	$a7,4136($zero)
    # Line 300
    addiu	$sp,$sp,64
    # Line 299
    addiu	$a6,$a6,5
    # Line 300
    jr	$ra
    # Line 299
    sw	$a6,4148($zero)
.L0d9de388:
    b	.L0d9de334
    # Line 300
    ld	$gp,8($sp)
.L0d9de390:
    # Line 293
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,5
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d9de330
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    b	.L0d9de2f8
    sd	$ra,56($sp)
.L0d9de3c0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 300
    ld	$gp,8($sp)
    # Line 293
    lw	$t8,4136($zero)
    # Line 300
    ld	$s0,0($sp)
    # Line 293
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 300
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex4f

# Function: __glOdylc_Vertex4fv
# Declared: Line 303 (Source lines: 303-316)
# Address: 0x0d9de3f0 - 0x0d9de534 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Vertex4fv
.ent __glOdylc_Vertex4fv
__glOdylc_Vertex4fv:
    # Line 303
    addiu	$sp,$sp,-48
    # Line 304
    lw	$a1,4112($zero)
    # Line 303
    sd	$s1,16($sp)
    # Line 306
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x10
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 309
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 303
    lui	$v0,0x12
    # Line 309
    move	$s0,$zero
    # Line 303
    addiu	$v0,$v0,-24160
    # Line 309
    lw	$a3,4136($zero)
    # Line 303
    addu	$gp,$t9,$v0
    # Line 309
    beqz	$at,.L0d9de4e8
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9de4e0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9de44c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9de50c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
    sll	$t1,$s0,0x2
.L0d9de47c:
    # Line 310
    lui	$t2,0x8080
    # Line 309
    addu	$t1,$s1,$t1
    # Line 310
    ori	$t2,$t2,0xd005
    sw	$t2,0($t1)
    # Line 311
    lwc1	$f3,0($a0)
    swc1	$f3,4($t1)
    # Line 312
    lwc1	$f2,4($a0)
    # Line 316
    ld	$gp,8($sp)
    # Line 312
    swc1	$f2,8($t1)
    # Line 313
    lwc1	$f1,8($a0)
    # Line 309
    subu	$t0,$a3,$s0
    # Line 316
    ld	$s0,0($sp)
    # Line 313
    swc1	$f1,12($t1)
    # Line 314
    lwc1	$f0,12($a0)
    # Line 316
    ld	$s1,16($sp)
    # Line 314
    swc1	$f0,16($t1)
    # Line 315
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 309
    addiu	$t0,$t0,-5
    # Line 315
    sw	$t0,4136($zero)
    # Line 316
    addiu	$sp,$sp,48
    # Line 315
    addiu	$a7,$a7,5
    # Line 316
    jr	$ra
    # Line 315
    sw	$a7,4148($zero)
.L0d9de4e0:
    b	.L0d9de47c
    # Line 309
    sll	$t1,$s0,0x2
.L0d9de4e8:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9de47c
    sll	$t1,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9de44c
    sd	$ra,32($sp)
.L0d9de50c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 316
    ld	$gp,8($sp)
    # Line 309
    lw	$t8,4136($zero)
    # Line 316
    ld	$s0,0($sp)
    # Line 309
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 316
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex4fv

# Function: __glOdylc_Vertex4i
# Declared: Line 319 (Source lines: 319-332)
# Address: 0x0d9de540 - 0x0d9de698 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Vertex4i
.ent __glOdylc_Vertex4i
__glOdylc_Vertex4i:
    # Line 319
    addiu	$sp,$sp,-64
    # Line 320
    lw	$a4,4112($zero)
    # Line 319
    sd	$s1,16($sp)
    # Line 322
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x10
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 325
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 319
    lui	$v0,0x12
    # Line 325
    move	$s0,$zero
    # Line 319
    addiu	$v0,$v0,-24496
    # Line 325
    lw	$a6,4136($zero)
    # Line 319
    addu	$gp,$t9,$v0
    # Line 325
    beqz	$at,.L0d9de640
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d9de638
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9de5a8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9de670
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d9de5e0:
    # Line 332
    ld	$gp,8($sp)
.L0d9de5e4:
    # Line 325
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 332
    ld	$s0,0($sp)
    # Line 325
    addu	$s1,$s1,$t9
    # Line 330
    sw	$a3,16($s1)
    # Line 329
    sw	$a2,12($s1)
    # Line 328
    sw	$a1,8($s1)
    # Line 326
    lui	$t8,0x8080
    # Line 327
    sw	$a0,4($s1)
    # Line 326
    ori	$t8,$t8,0xd004
    sw	$t8,0($s1)
    # Line 325
    addiu	$t3,$t3,-5
    # Line 331
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 332
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 331
    addiu	$t2,$t2,5
    # Line 332
    jr	$ra
    # Line 331
    sw	$t2,4148($zero)
.L0d9de638:
    b	.L0d9de5e4
    # Line 332
    ld	$gp,8($sp)
.L0d9de640:
    # Line 325
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d9de5e0
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d9de5a8
    sd	$ra,56($sp)
.L0d9de670:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 332
    ld	$gp,8($sp)
    # Line 325
    lw	$t8,4136($zero)
    # Line 332
    ld	$s0,0($sp)
    # Line 325
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 332
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex4i

# Function: __glOdylc_Vertex4iv
# Declared: Line 335 (Source lines: 335-348)
# Address: 0x0d9de6a0 - 0x0d9de7e4 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Vertex4iv
.ent __glOdylc_Vertex4iv
__glOdylc_Vertex4iv:
    # Line 335
    addiu	$sp,$sp,-48
    # Line 336
    lw	$a1,4112($zero)
    # Line 335
    sd	$s1,16($sp)
    # Line 338
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x10
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 341
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 335
    lui	$v0,0x12
    # Line 341
    move	$s0,$zero
    # Line 335
    addiu	$v0,$v0,-24848
    # Line 341
    lw	$a3,4136($zero)
    # Line 335
    addu	$gp,$t9,$v0
    # Line 341
    beqz	$at,.L0d9de798
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9de790
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9de6fc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9de7bc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9de728:
    # Line 348
    ld	$gp,8($sp)
.L0d9de72c:
    # Line 341
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 348
    ld	$s0,0($sp)
    # Line 342
    lui	$t9,0x8080
    # Line 341
    addu	$t1,$s1,$t1
    # Line 342
    ori	$t9,$t9,0xd004
    sw	$t9,0($t1)
    # Line 343
    lw	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 344
    lw	$s1,4($a0)
    sw	$s1,8($t1)
    # Line 348
    ld	$s1,16($sp)
    # Line 345
    lw	$t3,8($a0)
    sw	$t3,12($t1)
    # Line 346
    lw	$t2,12($a0)
    sw	$t2,16($t1)
    # Line 347
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 341
    addiu	$t0,$t0,-5
    # Line 347
    sw	$t0,4136($zero)
    # Line 348
    addiu	$sp,$sp,48
    # Line 347
    addiu	$a7,$a7,5
    # Line 348
    jr	$ra
    # Line 347
    sw	$a7,4148($zero)
.L0d9de790:
    b	.L0d9de72c
    # Line 348
    ld	$gp,8($sp)
.L0d9de798:
    # Line 341
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9de728
    nop
    sd	$a0,24($sp)
    b	.L0d9de6fc
    sd	$ra,32($sp)
.L0d9de7bc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 348
    ld	$gp,8($sp)
    # Line 341
    lw	$t8,4136($zero)
    # Line 348
    ld	$s0,0($sp)
    # Line 341
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 348
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex4iv

# Function: __glOdylc_Vertex4s
# Declared: Line 351 (Source lines: 351-364)
# Address: 0x0d9de7f0 - 0x0d9de948 (Size: 344 bytes, Frame: 192)
.globl __glOdylc_Vertex4s
.ent __glOdylc_Vertex4s
__glOdylc_Vertex4s:
    # Line 351
    addiu	$sp,$sp,-64
    # Line 352
    lw	$a4,4112($zero)
    # Line 351
    sd	$s1,16($sp)
    # Line 354
    lw	$v1,5076($a4)
    sd	$gp,8($sp)
    lui	$a5,0x10
    or	$v1,$v1,$a5
    sw	$v1,5076($a4)
    # Line 357
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 351
    lui	$v0,0x12
    # Line 357
    move	$s0,$zero
    # Line 351
    addiu	$v0,$v0,-25184
    # Line 357
    lw	$a6,4136($zero)
    # Line 351
    addu	$gp,$t9,$v0
    # Line 357
    beqz	$at,.L0d9de8f0
    lw	$s1,4144($zero)
    slti	$a7,$a6,5
    beqz	$a7,.L0d9de8e8
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9de858:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$t1,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9de920
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$t0,$s1,0x4
    movn	$s0,$t1,$t0
.L0d9de890:
    # Line 364
    ld	$gp,8($sp)
.L0d9de894:
    # Line 357
    sll	$t9,$s0,0x2
    subu	$t3,$a6,$s0
    # Line 364
    ld	$s0,0($sp)
    # Line 357
    addu	$s1,$s1,$t9
    # Line 362
    sw	$a3,16($s1)
    # Line 361
    sw	$a2,12($s1)
    # Line 360
    sw	$a1,8($s1)
    # Line 358
    lui	$t8,0x8080
    # Line 359
    sw	$a0,4($s1)
    # Line 358
    ori	$t8,$t8,0xd004
    sw	$t8,0($s1)
    # Line 357
    addiu	$t3,$t3,-5
    # Line 363
    sw	$t3,4136($zero)
    addiu	$s1,$s1,20
    sw	$s1,4144($zero)
    lw	$t2,4148($zero)
    # Line 364
    ld	$s1,16($sp)
    addiu	$sp,$sp,64
    # Line 363
    addiu	$t2,$t2,5
    # Line 364
    jr	$ra
    # Line 363
    sw	$t2,4148($zero)
.L0d9de8e8:
    b	.L0d9de894
    # Line 364
    ld	$gp,8($sp)
.L0d9de8f0:
    # Line 357
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,5
    slt	$at,$a6,$at
    beqz	$at,.L0d9de890
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d9de858
    sd	$ra,56($sp)
.L0d9de920:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 364
    ld	$gp,8($sp)
    # Line 357
    lw	$t8,4136($zero)
    # Line 364
    ld	$s0,0($sp)
    # Line 357
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 364
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex4s

# Function: __glOdylc_Vertex4sv
# Declared: Line 367 (Source lines: 367-380)
# Address: 0x0d9de950 - 0x0d9dea94 (Size: 324 bytes, Frame: 48)
.globl __glOdylc_Vertex4sv
.ent __glOdylc_Vertex4sv
__glOdylc_Vertex4sv:
    # Line 367
    addiu	$sp,$sp,-48
    # Line 368
    lw	$a1,4112($zero)
    # Line 367
    sd	$s1,16($sp)
    # Line 370
    lw	$v1,5076($a1)
    sd	$gp,8($sp)
    lui	$a2,0x10
    or	$v1,$v1,$a2
    sw	$v1,5076($a1)
    # Line 373
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 367
    lui	$v0,0x12
    # Line 373
    move	$s0,$zero
    # Line 367
    addiu	$v0,$v0,-25536
    # Line 373
    lw	$a3,4136($zero)
    # Line 367
    addu	$gp,$t9,$v0
    # Line 373
    beqz	$at,.L0d9dea48
    lw	$s1,4144($zero)
    slti	$a4,$a3,5
    beqz	$a4,.L0d9dea40
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9de9ac:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a6,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9dea6c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9de9d8:
    # Line 380
    ld	$gp,8($sp)
.L0d9de9dc:
    # Line 373
    subu	$t0,$a3,$s0
    sll	$t1,$s0,0x2
    # Line 380
    ld	$s0,0($sp)
    # Line 374
    lui	$t9,0x8080
    # Line 373
    addu	$t1,$s1,$t1
    # Line 374
    ori	$t9,$t9,0xd004
    sw	$t9,0($t1)
    # Line 375
    lh	$t8,0($a0)
    sw	$t8,4($t1)
    # Line 376
    lh	$s1,2($a0)
    sw	$s1,8($t1)
    # Line 380
    ld	$s1,16($sp)
    # Line 377
    lh	$t3,4($a0)
    sw	$t3,12($t1)
    # Line 378
    lh	$t2,6($a0)
    sw	$t2,16($t1)
    # Line 379
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 373
    addiu	$t0,$t0,-5
    # Line 379
    sw	$t0,4136($zero)
    # Line 380
    addiu	$sp,$sp,48
    # Line 379
    addiu	$a7,$a7,5
    # Line 380
    jr	$ra
    # Line 379
    sw	$a7,4148($zero)
.L0d9dea40:
    b	.L0d9de9dc
    # Line 380
    ld	$gp,8($sp)
.L0d9dea48:
    # Line 373
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a3,$t2
    beqz	$t2,.L0d9de9d8
    nop
    sd	$a0,24($sp)
    b	.L0d9de9ac
    sd	$ra,32($sp)
.L0d9dea6c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 380
    ld	$gp,8($sp)
    # Line 373
    lw	$t8,4136($zero)
    # Line 380
    ld	$s0,0($sp)
    # Line 373
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 380
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex4sv

# Function: __glOdylc_Vertex2dBbox
# Declared: Line 436 (Source lines: 436-449)
# Address: 0x0d9deaa0 - 0x0d9dec94 (Size: 500 bytes, Frame: 48)
.globl __glOdylc_Vertex2dBbox
.ent __glOdylc_Vertex2dBbox
__glOdylc_Vertex2dBbox:
    # Line 436
    addiu	$sp,$sp,-48
    # Line 437
    lw	$a0,4112($zero)
    sd	$s1,16($sp)
    # Line 439
    lw	$v1,5076($a0)
    sd	$s0,24($sp)
    lui	$a2,0x4
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    or	$v1,$v1,$a2
    sw	$v1,5076($a0)
    lbu	$at,27100($a1)
    # Line 436
    sdc1	$f22,8($sp)
    lui	$v0,0x12
    mov.d	$f22,$f13
    # Line 444
    move	$s0,$zero
    # Line 436
    sdc1	$f20,0($sp)
    addiu	$v0,$v0,-25872
    mov.d	$f20,$f12
    sd	$gp,32($sp)
    # Line 439
    beqz	$at,.L0d9deb94
    # Line 436
    addu	$gp,$t9,$v0
    # Line 442
    lwc1	$f0,27020($a1)
    cvt.d.s	$f0,$f0
    c.lt.d	$f12,$f0
    lw	$a2,27104($a1)
    addiu	$a2,$a2,1
    bc1f	.L0d9deb18
    sw	$a2,27104($a1)
    cvt.s.d	$f1,$f12
    swc1	$f1,27020($a1)
.L0d9deb18:
    lwc1	$f2,27024($a1)
    cvt.d.s	$f2,$f2
    c.lt.d $f2,$f20
    bc1f .L0d9deb34
    nop
    cvt.s.d	$f3,$f20
    swc1	$f3,27024($a1)
.L0d9deb34:
    lwc1	$f4,27028($a1)
    cvt.d.s	$f4,$f4
    c.lt.d $f22,$f4
    bc1f .L0d9deb50
    mtc1	$zero,$f4
    cvt.s.d	$f5,$f22
    swc1	$f5,27028($a1)
.L0d9deb50:
    lwc1	$f6,27032($a1)
    cvt.d.s	$f6,$f6
    c.lt.d $f6,$f22
    bc1f .L0d9deb6c
    nop
    cvt.s.d	$f7,$f22
    swc1	$f7,27032($a1)
.L0d9deb6c:
    lwc1	$f8,27036($a1)
    c.lt.s $f4,$f8
    bc1f .L0d9deb80
    nop
    swc1	$f4,27036($a1)
.L0d9deb80:
    lwc1	$f9,27040($a1)
    c.lt.s $f9,$f4
    bc1f .L0d9deb94
    nop
    swc1	$f4,27040($a1)
.L0d9deb94:
    # Line 444
    lw	$a3,4148($zero)
    lw	$a2,4136($zero)
    lw	$s1,4144($zero)
    beqz	$a3,.L0d9dec44
    slti	$a4,$a2,3
    beqz	$a4,.L0d9dec3c
    nop
    sd	$ra,40($sp)
.L0d9debb4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    beqz	$v0,.L0d9dec64
    move	$a2,$v0
    li	$a6,1
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9debdc:
    # Line 449
    ld	$gp,32($sp)
    # Line 444
    subu	$t0,$a2,$s0
    sll	$t1,$s0,0x2
    # Line 449
    ld	$s0,24($sp)
    # Line 446
    cvt.s.d	$f11,$f20
    # Line 449
    ldc1	$f20,0($sp)
    # Line 447
    cvt.s.d	$f10,$f22
    # Line 449
    ldc1	$f22,8($sp)
    # Line 444
    addu	$t1,$s1,$t1
    # Line 449
    ld	$s1,16($sp)
    # Line 445
    lui	$t2,0x8080
    ori	$t2,$t2,0xc801
    sw	$t2,0($t1)
    # Line 446
    swc1	$f11,4($t1)
    # Line 447
    swc1	$f10,8($t1)
    # Line 448
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 444
    addiu	$t0,$t0,-3
    # Line 448
    sw	$t0,4136($zero)
    # Line 449
    addiu	$sp,$sp,48
    # Line 448
    addiu	$a7,$a7,3
    # Line 449
    jr	$ra
    # Line 448
    sw	$a7,4148($zero)
.L0d9dec3c:
    b	.L0d9debdc
    # Line 444
    move	$s0,$zero
.L0d9dec44:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,3
    slt	$t2,$a2,$t2
    beqz	$t2,.L0d9debdc
    nop
    b	.L0d9debb4
    sd	$ra,40($sp)
.L0d9dec64:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 449
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ldc1	$f20,0($sp)
    # Line 444
    lw	$t8,4136($zero)
    # Line 449
    ldc1	$f22,8($sp)
    # Line 444
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 449
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2dBbox

# Function: __glOdylc_Vertex2dvBbox
# Declared: Line 452 (Source lines: 452-465)
# Address: 0x0d9deca0 - 0x0d9deea4 (Size: 516 bytes, Frame: 48)
.globl __glOdylc_Vertex2dvBbox
.ent __glOdylc_Vertex2dvBbox
__glOdylc_Vertex2dvBbox:
    # Line 452
    addiu	$sp,$sp,-48
    # Line 453
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 455
    lw	$v1,5076($a1)
    # Line 452
    sd	$s0,24($sp)
    # Line 455
    lui	$a3,0x4
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 452
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 460
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 452
    addiu	$v0,$v0,-26384
    addu	$gp,$t9,$v0
    # Line 455
    beqz	$at,.L0d9deda4
    # Line 458
    lw	$a3,27104($a2)
    lwc1	$f0,27020($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    ldc1	$f4,0($a0)
    cvt.d.s	$f0,$f0
    c.lt.d	$f4,$f0
    bc1f	.L0d9ded1c
    nop
    cvt.s.d	$f1,$f4
    swc1	$f1,27020($a2)
    ldc1	$f4,0($a0)
.L0d9ded1c:
    lwc1	$f2,27024($a2)
    cvt.d.s	$f2,$f2
    c.lt.d $f2,$f4
    bc1f .L0d9ded38
    nop
    cvt.s.d	$f3,$f4
    swc1	$f3,27024($a2)
.L0d9ded38:
    lwc1	$f5,27028($a2)
    ldc1	$f4,8($s0)
    cvt.d.s	$f5,$f5
    c.lt.d $f4,$f5
    bc1f .L0d9ded5c
    nop
    cvt.s.d	$f6,$f4
    swc1	$f6,27028($a2)
    ldc1	$f4,8($s0)
.L0d9ded5c:
    lwc1	$f7,27032($a2)
    cvt.d.s	$f7,$f7
    c.lt.d $f7,$f4
    bc1f .L0d9ded78
    nop
    cvt.s.d	$f8,$f4
    swc1	$f8,27032($a2)
.L0d9ded78:
    lwc1	$f9,27036($a2)
    mtc1	$zero,$f4
    c.lt.s $f4,$f9
    bc1f .L0d9ded90
    nop
    swc1	$f4,27036($a2)
.L0d9ded90:
    lwc1	$f10,27040($a2)
    c.lt.s $f10,$f4
    bc1f .L0d9deda4
    nop
    swc1	$f4,27040($a2)
.L0d9deda4:
    # Line 460
    lw	$a4,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9dee58
    slti	$a5,$a0,3
    beqz	$a5,.L0d9dee50
    nop
    sd	$ra,32($sp)
.L0d9dedc4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9dee78
    move	$a0,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s1,$a7,$a6
.L0d9dedec:
    sll	$t2,$s1,0x2
.L0d9dedf0:
    # Line 461
    lui	$t3,0x8080
    # Line 460
    addu	$t2,$s2,$t2
    # Line 461
    ori	$t3,$t3,0xc801
    sw	$t3,0($t2)
    # Line 462
    ldc1	$f12,0($s0)
    # Line 465
    ld	$gp,16($sp)
    # Line 462
    cvt.s.d	$f12,$f12
    swc1	$f12,4($t2)
    # Line 463
    ldc1	$f11,8($s0)
    # Line 460
    subu	$t1,$a0,$s1
    # Line 465
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    ld	$s0,24($sp)
    # Line 463
    cvt.s.d	$f11,$f11
    swc1	$f11,8($t2)
    # Line 464
    addiu	$t2,$t2,12
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 460
    addiu	$t1,$t1,-3
    # Line 464
    sw	$t1,4136($zero)
    # Line 465
    addiu	$sp,$sp,48
    # Line 464
    addiu	$t0,$t0,3
    # Line 465
    jr	$ra
    # Line 464
    sw	$t0,4148($zero)
.L0d9dee50:
    b	.L0d9dedec
    # Line 460
    move	$s1,$zero
.L0d9dee58:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$t3,$s1,3
    slt	$t3,$a0,$t3
    beqz	$t3,.L0d9dedf0
    sll	$t2,$s1,0x2
    b	.L0d9dedc4
    sd	$ra,32($sp)
.L0d9dee78:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 465
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 460
    lw	$t8,4136($zero)
    # Line 465
    ld	$s1,8($sp)
    # Line 460
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 465
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2dvBbox

# Function: __glOdylc_Vertex2fBbox
# Declared: Line 468 (Source lines: 468-481)
# Address: 0x0d9deeb0 - 0x0d9df07c (Size: 460 bytes, Frame: 48)
.globl __glOdylc_Vertex2fBbox
.ent __glOdylc_Vertex2fBbox
__glOdylc_Vertex2fBbox:
    # Line 468
    addiu	$sp,$sp,-48
    # Line 469
    lw	$a0,4112($zero)
    sd	$s1,16($sp)
    # Line 471
    lw	$v1,5076($a0)
    sd	$s0,24($sp)
    lui	$a2,0x4
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    or	$v1,$v1,$a2
    sw	$v1,5076($a0)
    lbu	$at,27100($a1)
    # Line 468
    sdc1	$f22,8($sp)
    lui	$v0,0x12
    mov.s	$f22,$f13
    # Line 476
    move	$s0,$zero
    # Line 468
    sdc1	$f20,0($sp)
    addiu	$v0,$v0,-26912
    mov.s	$f20,$f12
    sd	$gp,32($sp)
    # Line 471
    beqz	$at,.L0d9def84
    # Line 468
    addu	$gp,$t9,$v0
    # Line 474
    lwc1	$f0,27020($a1)
    c.lt.s	$f12,$f0
    lw	$a2,27104($a1)
    addiu	$a2,$a2,1
    bc1f	.L0d9def20
    sw	$a2,27104($a1)
    swc1	$f12,27020($a1)
.L0d9def20:
    lwc1	$f1,27024($a1)
    c.lt.s $f1,$f20
    bc1f .L0d9def34
    mtc1	$zero,$f4
    swc1	$f20,27024($a1)
.L0d9def34:
    lwc1	$f2,27028($a1)
    c.lt.s $f22,$f2
    bc1f .L0d9def48
    nop
    swc1	$f22,27028($a1)
.L0d9def48:
    lwc1	$f3,27032($a1)
    c.lt.s $f3,$f22
    bc1f .L0d9def5c
    nop
    swc1	$f22,27032($a1)
.L0d9def5c:
    lwc1	$f5,27036($a1)
    c.lt.s $f4,$f5
    bc1f .L0d9def70
    nop
    swc1	$f4,27036($a1)
.L0d9def70:
    lwc1	$f6,27040($a1)
    c.lt.s $f6,$f4
    bc1f .L0d9def84
    nop
    swc1	$f4,27040($a1)
.L0d9def84:
    # Line 476
    lw	$a3,4148($zero)
    lw	$a2,4136($zero)
    lw	$s1,4144($zero)
    beqz	$a3,.L0d9df02c
    slti	$a4,$a2,3
    beqz	$a4,.L0d9df024
    nop
    sd	$ra,40($sp)
.L0d9defa4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    beqz	$v0,.L0d9df04c
    move	$a2,$v0
    li	$a6,1
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9defcc:
    # Line 481
    ld	$gp,32($sp)
    # Line 476
    subu	$t0,$a2,$s0
    sll	$t1,$s0,0x2
    # Line 481
    ld	$s0,24($sp)
    # Line 476
    addu	$t1,$s1,$t1
    # Line 481
    ld	$s1,16($sp)
    # Line 477
    lui	$t2,0x8080
    ori	$t2,$t2,0xc801
    sw	$t2,0($t1)
    # Line 478
    swc1	$f20,4($t1)
    # Line 479
    swc1	$f22,8($t1)
    # Line 480
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    # Line 476
    addiu	$t0,$t0,-3
    # Line 480
    sw	$t0,4136($zero)
    # Line 481
    ldc1	$f20,0($sp)
    # Line 480
    lw	$a7,4148($zero)
    # Line 481
    ldc1	$f22,8($sp)
    addiu	$sp,$sp,48
    # Line 480
    addiu	$a7,$a7,3
    # Line 481
    jr	$ra
    # Line 480
    sw	$a7,4148($zero)
.L0d9df024:
    b	.L0d9defcc
    # Line 476
    move	$s0,$zero
.L0d9df02c:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,3
    slt	$t2,$a2,$t2
    beqz	$t2,.L0d9defcc
    nop
    b	.L0d9defa4
    sd	$ra,40($sp)
.L0d9df04c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 481
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ldc1	$f20,0($sp)
    # Line 476
    lw	$t8,4136($zero)
    # Line 481
    ldc1	$f22,8($sp)
    # Line 476
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 481
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2fBbox

# Function: __glOdylc_Vertex2fvBbox
# Declared: Line 484 (Source lines: 484-497)
# Address: 0x0d9df080 - 0x0d9df25c (Size: 476 bytes, Frame: 48)
.globl __glOdylc_Vertex2fvBbox
.ent __glOdylc_Vertex2fvBbox
__glOdylc_Vertex2fvBbox:
    # Line 484
    addiu	$sp,$sp,-48
    # Line 485
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 487
    lw	$v1,5076($a1)
    # Line 484
    sd	$s0,24($sp)
    # Line 487
    lui	$a3,0x4
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 484
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 492
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 484
    addiu	$v0,$v0,-27376
    addu	$gp,$t9,$v0
    # Line 487
    beqz	$at,.L0d9df164
    # Line 490
    lw	$a3,27104($a2)
    lwc1	$f0,27020($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    lwc1	$f4,0($a0)
    c.lt.s	$f4,$f0
    bc1f	.L0d9df0f4
    nop
    swc1	$f4,27020($a2)
    lwc1	$f4,0($a0)
.L0d9df0f4:
    lwc1	$f1,27024($a2)
    c.lt.s $f1,$f4
    bc1f .L0d9df108
    nop
    swc1	$f4,27024($a2)
.L0d9df108:
    lwc1	$f2,27028($a2)
    lwc1	$f4,4($s0)
    c.lt.s $f4,$f2
    bc1f .L0d9df124
    nop
    swc1	$f4,27028($a2)
    lwc1	$f4,4($s0)
.L0d9df124:
    lwc1	$f3,27032($a2)
    c.lt.s $f3,$f4
    bc1f .L0d9df138
    nop
    swc1	$f4,27032($a2)
.L0d9df138:
    lwc1	$f5,27036($a2)
    mtc1	$zero,$f4
    c.lt.s $f4,$f5
    bc1f .L0d9df150
    nop
    swc1	$f4,27036($a2)
.L0d9df150:
    lwc1	$f6,27040($a2)
    c.lt.s $f6,$f4
    bc1f .L0d9df164
    nop
    swc1	$f4,27040($a2)
.L0d9df164:
    # Line 492
    lw	$a4,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9df210
    slti	$a5,$a0,3
    beqz	$a5,.L0d9df208
    nop
    sd	$ra,32($sp)
.L0d9df184:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9df230
    move	$a0,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s1,$a7,$a6
.L0d9df1ac:
    # Line 497
    ld	$gp,16($sp)
    # Line 492
    subu	$t1,$a0,$s1
    sll	$t2,$s1,0x2
    # Line 497
    ld	$s1,8($sp)
    # Line 493
    lui	$t3,0x8080
    # Line 492
    addu	$t2,$s2,$t2
    # Line 493
    ori	$t3,$t3,0xc801
    sw	$t3,0($t2)
    # Line 494
    lwc1	$f8,0($s0)
    # Line 497
    ld	$s2,0($sp)
    # Line 494
    swc1	$f8,4($t2)
    # Line 495
    lwc1	$f7,4($s0)
    # Line 497
    ld	$s0,24($sp)
    # Line 495
    swc1	$f7,8($t2)
    # Line 496
    addiu	$t2,$t2,12
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 492
    addiu	$t1,$t1,-3
    # Line 496
    sw	$t1,4136($zero)
    # Line 497
    addiu	$sp,$sp,48
    # Line 496
    addiu	$t0,$t0,3
    # Line 497
    jr	$ra
    # Line 496
    sw	$t0,4148($zero)
.L0d9df208:
    b	.L0d9df1ac
    # Line 492
    move	$s1,$zero
.L0d9df210:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$t3,$s1,3
    slt	$t3,$a0,$t3
    beqz	$t3,.L0d9df1ac
    nop
    b	.L0d9df184
    sd	$ra,32($sp)
.L0d9df230:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 497
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 492
    lw	$t8,4136($zero)
    # Line 497
    ld	$s1,8($sp)
    # Line 492
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 497
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2fvBbox

# Function: __glOdylc_Vertex2iBbox
# Declared: Line 500 (Source lines: 500-513)
# Address: 0x0d9df260 - 0x0d9df440 (Size: 480 bytes, Frame: 48)
.globl __glOdylc_Vertex2iBbox
.ent __glOdylc_Vertex2iBbox
__glOdylc_Vertex2iBbox:
    # Line 500
    addiu	$sp,$sp,-48
    # Line 501
    lw	$a2,4112($zero)
    sd	$s3,0($sp)
    # Line 503
    lw	$v1,5076($a2)
    # Line 500
    sd	$s2,32($sp)
    # Line 503
    lui	$a4,0x4
    lui	$a3,0x1
    addu	$a3,$a2,$a3
    or	$v1,$v1,$a4
    sw	$v1,5076($a2)
    # Line 500
    move	$s2,$a1
    # Line 503
    lbu	$at,27100($a3)
    # Line 500
    sd	$s1,24($sp)
    move	$s1,$a0
    lui	$v0,0x12
    sd	$s0,8($sp)
    # Line 508
    move	$s0,$zero
    # Line 500
    addiu	$v0,$v0,-27856
    sd	$gp,16($sp)
    # Line 503
    beqz	$at,.L0d9df348
    # Line 500
    addu	$gp,$t9,$v0
    # Line 506
    mtc1	$a0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a3)
    c.lt.s	$f4,$f0
    lw	$a4,27104($a3)
    addiu	$a4,$a4,1
    bc1f	.L0d9df2d8
    sw	$a4,27104($a3)
    swc1	$f4,27020($a3)
.L0d9df2d8:
    lwc1	$f5,27024($a3)
    c.lt.s $f5,$f4
    bc1f .L0d9df2ec
    nop
    swc1	$f4,27024($a3)
.L0d9df2ec:
    mtc1	$s2,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a3)
    c.lt.s $f4,$f6
    bc1f .L0d9df308
    nop
    swc1	$f4,27028($a3)
.L0d9df308:
    lwc1	$f5,27032($a3)
    c.lt.s $f5,$f4
    bc1f .L0d9df31c
    nop
    swc1	$f4,27032($a3)
.L0d9df31c:
    lwc1	$f6,27036($a3)
    mtc1	$zero,$f4
    c.lt.s $f4,$f6
    bc1f .L0d9df334
    nop
    swc1	$f4,27036($a3)
.L0d9df334:
    lwc1	$f7,27040($a3)
    c.lt.s $f7,$f4
    bc1f .L0d9df348
    nop
    swc1	$f4,27040($a3)
.L0d9df348:
    # Line 508
    lw	$a5,4148($zero)
    lw	$a4,4136($zero)
    lw	$s3,4144($zero)
    beqz	$a5,.L0d9df3f0
    slti	$a6,$a4,3
    beqz	$a6,.L0d9df3e8
    nop
    sd	$ra,40($sp)
.L0d9df368:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    beqz	$v0,.L0d9df410
    move	$a4,$v0
    li	$t0,1
    lw	$s3,4144($zero)
    andi	$a7,$s3,0x4
    movn	$s0,$t0,$a7
.L0d9df390:
    # Line 513
    ld	$gp,16($sp)
    # Line 508
    subu	$t2,$a4,$s0
    sll	$t3,$s0,0x2
    # Line 513
    ld	$s0,8($sp)
    # Line 509
    lui	$t8,0x8080
    # Line 508
    addu	$t3,$s3,$t3
    # Line 509
    ori	$s3,$t8,0xc800
    sw	$s3,0($t3)
    # Line 510
    sw	$s1,4($t3)
    # Line 511
    sw	$s2,8($t3)
    # Line 512
    addiu	$t3,$t3,12
    sw	$t3,4144($zero)
    # Line 508
    addiu	$t2,$t2,-3
    # Line 512
    sw	$t2,4136($zero)
    # Line 513
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 512
    lw	$t1,4148($zero)
    # Line 513
    ld	$s3,0($sp)
    addiu	$sp,$sp,48
    # Line 512
    addiu	$t1,$t1,3
    # Line 513
    jr	$ra
    # Line 512
    sw	$t1,4148($zero)
.L0d9df3e8:
    b	.L0d9df390
    # Line 508
    move	$s0,$zero
.L0d9df3f0:
    andi	$s0,$s3,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,3
    slt	$t8,$a4,$t8
    beqz	$t8,.L0d9df390
    nop
    b	.L0d9df368
    sd	$ra,40($sp)
.L0d9df410:
    # Line 513
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 508
    addiu	$s2,$s3,-4
    sw	$s2,4144($zero)
    # Line 513
    ld	$s2,32($sp)
    # Line 508
    lw	$s1,4136($zero)
    # Line 513
    ld	$s3,0($sp)
    # Line 508
    addiu	$s1,$s1,1
    sw	$s1,4136($zero)
    # Line 513
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2iBbox

# Function: __glOdylc_Vertex2ivBbox
# Declared: Line 516 (Source lines: 516-529)
# Address: 0x0d9df440 - 0x0d9df63c (Size: 508 bytes, Frame: 48)
.globl __glOdylc_Vertex2ivBbox
.ent __glOdylc_Vertex2ivBbox
__glOdylc_Vertex2ivBbox:
    # Line 516
    addiu	$sp,$sp,-48
    # Line 517
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 519
    lw	$v1,5076($a1)
    # Line 516
    sd	$s0,24($sp)
    # Line 519
    lui	$a3,0x4
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 516
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 524
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 516
    addiu	$v0,$v0,-28336
    addu	$gp,$t9,$v0
    # Line 519
    beqz	$at,.L0d9df544
    # Line 522
    lw	$a4,27104($a2)
    addiu	$a4,$a4,1
    sw	$a4,27104($a2)
    lw	$a3,0($a0)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a2)
    c.lt.s	$f4,$f0
    bc1f	.L0d9df4c4
    nop
    swc1	$f4,27020($a2)
    lw	$a5,0($a0)
    mtc1	$a5,$f4
    cvt.s.w	$f4,$f4
.L0d9df4c4:
    lwc1	$f5,27024($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9df4d8
    nop
    swc1	$f4,27024($a2)
.L0d9df4d8:
    lw	$a6,4($s0)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a2)
    c.lt.s $f4,$f6
    bc1f .L0d9df504
    nop
    swc1	$f4,27028($a2)
    lw	$a7,4($s0)
    mtc1	$a7,$f4
    cvt.s.w	$f4,$f4
.L0d9df504:
    lwc1	$f5,27032($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9df518
    nop
    swc1	$f4,27032($a2)
.L0d9df518:
    lwc1	$f6,27036($a2)
    mtc1	$zero,$f4
    c.lt.s $f4,$f6
    bc1f .L0d9df530
    nop
    swc1	$f4,27036($a2)
.L0d9df530:
    lwc1	$f7,27040($a2)
    c.lt.s $f7,$f4
    bc1f .L0d9df544
    nop
    swc1	$f4,27040($a2)
.L0d9df544:
    # Line 524
    lw	$t0,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$t0,.L0d9df5f0
    slti	$t1,$a0,3
    beqz	$t1,.L0d9df5e8
    nop
    sd	$ra,32($sp)
.L0d9df564:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9df610
    move	$a0,$v0
    li	$t3,1
    lw	$s2,4144($zero)
    andi	$t2,$s2,0x4
    movn	$s1,$t3,$t2
.L0d9df58c:
    sll	$v0,$s1,0x2
.L0d9df590:
    # Line 529
    ld	$gp,16($sp)
    # Line 525
    lui	$at,0x8080
    # Line 524
    addu	$s2,$s2,$v0
    # Line 525
    ori	$at,$at,0xc800
    sw	$at,0($s2)
    # Line 526
    lw	$t9,0($s0)
    sw	$t9,4($s2)
    # Line 527
    lw	$t8,4($s0)
    # Line 524
    subu	$s1,$a0,$s1
    # Line 527
    sw	$t8,8($s2)
    # Line 524
    addiu	$s1,$s1,-3
    # Line 528
    sw	$s1,4136($zero)
    # Line 529
    ld	$s1,8($sp)
    # Line 528
    addiu	$s2,$s2,12
    sw	$s2,4144($zero)
    lw	$s0,4148($zero)
    # Line 529
    ld	$s2,0($sp)
    # Line 528
    addiu	$s0,$s0,3
    sw	$s0,4148($zero)
    # Line 529
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9df5e8:
    b	.L0d9df58c
    # Line 524
    move	$s1,$zero
.L0d9df5f0:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$v1,$s1,3
    slt	$v1,$a0,$v1
    beqz	$v1,.L0d9df590
    sll	$v0,$s1,0x2
    b	.L0d9df564
    sd	$ra,32($sp)
.L0d9df610:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 529
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 524
    lw	$t8,4136($zero)
    # Line 529
    ld	$s1,8($sp)
    # Line 524
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 529
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2ivBbox

# Function: __glOdylc_Vertex2sBbox
# Declared: Line 532 (Source lines: 532-545)
# Address: 0x0d9df640 - 0x0d9df820 (Size: 480 bytes, Frame: 48)
.globl __glOdylc_Vertex2sBbox
.ent __glOdylc_Vertex2sBbox
__glOdylc_Vertex2sBbox:
    # Line 532
    addiu	$sp,$sp,-48
    # Line 533
    lw	$a2,4112($zero)
    sd	$s3,0($sp)
    # Line 535
    lw	$v1,5076($a2)
    # Line 532
    sd	$s2,32($sp)
    # Line 535
    lui	$a4,0x4
    lui	$a3,0x1
    addu	$a3,$a2,$a3
    or	$v1,$v1,$a4
    sw	$v1,5076($a2)
    # Line 532
    move	$s2,$a1
    # Line 535
    lbu	$at,27100($a3)
    # Line 532
    sd	$s1,24($sp)
    move	$s1,$a0
    lui	$v0,0x12
    sd	$s0,8($sp)
    # Line 540
    move	$s0,$zero
    # Line 532
    addiu	$v0,$v0,-28848
    sd	$gp,16($sp)
    # Line 535
    beqz	$at,.L0d9df728
    # Line 532
    addu	$gp,$t9,$v0
    # Line 538
    mtc1	$a0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a3)
    c.lt.s	$f4,$f0
    lw	$a4,27104($a3)
    addiu	$a4,$a4,1
    bc1f	.L0d9df6b8
    sw	$a4,27104($a3)
    swc1	$f4,27020($a3)
.L0d9df6b8:
    lwc1	$f5,27024($a3)
    c.lt.s $f5,$f4
    bc1f .L0d9df6cc
    nop
    swc1	$f4,27024($a3)
.L0d9df6cc:
    mtc1	$s2,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a3)
    c.lt.s $f4,$f6
    bc1f .L0d9df6e8
    nop
    swc1	$f4,27028($a3)
.L0d9df6e8:
    lwc1	$f5,27032($a3)
    c.lt.s $f5,$f4
    bc1f .L0d9df6fc
    nop
    swc1	$f4,27032($a3)
.L0d9df6fc:
    lwc1	$f6,27036($a3)
    mtc1	$zero,$f4
    c.lt.s $f4,$f6
    bc1f .L0d9df714
    nop
    swc1	$f4,27036($a3)
.L0d9df714:
    lwc1	$f7,27040($a3)
    c.lt.s $f7,$f4
    bc1f .L0d9df728
    nop
    swc1	$f4,27040($a3)
.L0d9df728:
    # Line 540
    lw	$a5,4148($zero)
    lw	$a4,4136($zero)
    lw	$s3,4144($zero)
    beqz	$a5,.L0d9df7d0
    slti	$a6,$a4,3
    beqz	$a6,.L0d9df7c8
    nop
    sd	$ra,40($sp)
.L0d9df748:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    beqz	$v0,.L0d9df7f0
    move	$a4,$v0
    li	$t0,1
    lw	$s3,4144($zero)
    andi	$a7,$s3,0x4
    movn	$s0,$t0,$a7
.L0d9df770:
    # Line 545
    ld	$gp,16($sp)
    # Line 540
    subu	$t2,$a4,$s0
    sll	$t3,$s0,0x2
    # Line 545
    ld	$s0,8($sp)
    # Line 541
    lui	$t8,0x8080
    # Line 540
    addu	$t3,$s3,$t3
    # Line 541
    ori	$s3,$t8,0xc800
    sw	$s3,0($t3)
    # Line 542
    sw	$s1,4($t3)
    # Line 543
    sw	$s2,8($t3)
    # Line 544
    addiu	$t3,$t3,12
    sw	$t3,4144($zero)
    # Line 540
    addiu	$t2,$t2,-3
    # Line 544
    sw	$t2,4136($zero)
    # Line 545
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 544
    lw	$t1,4148($zero)
    # Line 545
    ld	$s3,0($sp)
    addiu	$sp,$sp,48
    # Line 544
    addiu	$t1,$t1,3
    # Line 545
    jr	$ra
    # Line 544
    sw	$t1,4148($zero)
.L0d9df7c8:
    b	.L0d9df770
    # Line 540
    move	$s0,$zero
.L0d9df7d0:
    andi	$s0,$s3,0x4
    sltu	$s0,$zero,$s0
    addiu	$t8,$s0,3
    slt	$t8,$a4,$t8
    beqz	$t8,.L0d9df770
    nop
    b	.L0d9df748
    sd	$ra,40($sp)
.L0d9df7f0:
    # Line 545
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 540
    addiu	$s2,$s3,-4
    sw	$s2,4144($zero)
    # Line 545
    ld	$s2,32($sp)
    # Line 540
    lw	$s1,4136($zero)
    # Line 545
    ld	$s3,0($sp)
    # Line 540
    addiu	$s1,$s1,1
    sw	$s1,4136($zero)
    # Line 545
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2sBbox

# Function: __glOdylc_Vertex2svBbox
# Declared: Line 548 (Source lines: 548-561)
# Address: 0x0d9df820 - 0x0d9dfa1c (Size: 508 bytes, Frame: 48)
.globl __glOdylc_Vertex2svBbox
.ent __glOdylc_Vertex2svBbox
__glOdylc_Vertex2svBbox:
    # Line 548
    addiu	$sp,$sp,-48
    # Line 549
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 551
    lw	$v1,5076($a1)
    # Line 548
    sd	$s0,24($sp)
    # Line 551
    lui	$a3,0x4
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 548
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 556
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 548
    addiu	$v0,$v0,-29328
    addu	$gp,$t9,$v0
    # Line 551
    beqz	$at,.L0d9df924
    # Line 554
    lw	$a4,27104($a2)
    addiu	$a4,$a4,1
    sw	$a4,27104($a2)
    lh	$a3,0($a0)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a2)
    c.lt.s	$f4,$f0
    bc1f	.L0d9df8a4
    nop
    swc1	$f4,27020($a2)
    lh	$a5,0($a0)
    mtc1	$a5,$f4
    cvt.s.w	$f4,$f4
.L0d9df8a4:
    lwc1	$f5,27024($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9df8b8
    nop
    swc1	$f4,27024($a2)
.L0d9df8b8:
    lh	$a6,2($s0)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a2)
    c.lt.s $f4,$f6
    bc1f .L0d9df8e4
    nop
    swc1	$f4,27028($a2)
    lh	$a7,2($s0)
    mtc1	$a7,$f4
    cvt.s.w	$f4,$f4
.L0d9df8e4:
    lwc1	$f5,27032($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9df8f8
    nop
    swc1	$f4,27032($a2)
.L0d9df8f8:
    lwc1	$f6,27036($a2)
    mtc1	$zero,$f4
    c.lt.s $f4,$f6
    bc1f .L0d9df910
    nop
    swc1	$f4,27036($a2)
.L0d9df910:
    lwc1	$f7,27040($a2)
    c.lt.s $f7,$f4
    bc1f .L0d9df924
    nop
    swc1	$f4,27040($a2)
.L0d9df924:
    # Line 556
    lw	$t0,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$t0,.L0d9df9d0
    slti	$t1,$a0,3
    beqz	$t1,.L0d9df9c8
    nop
    sd	$ra,32($sp)
.L0d9df944:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9df9f0
    move	$a0,$v0
    li	$t3,1
    lw	$s2,4144($zero)
    andi	$t2,$s2,0x4
    movn	$s1,$t3,$t2
.L0d9df96c:
    sll	$v0,$s1,0x2
.L0d9df970:
    # Line 561
    ld	$gp,16($sp)
    # Line 557
    lui	$at,0x8080
    # Line 556
    addu	$s2,$s2,$v0
    # Line 557
    ori	$at,$at,0xc800
    sw	$at,0($s2)
    # Line 558
    lh	$t9,0($s0)
    sw	$t9,4($s2)
    # Line 559
    lh	$t8,2($s0)
    # Line 556
    subu	$s1,$a0,$s1
    # Line 559
    sw	$t8,8($s2)
    # Line 556
    addiu	$s1,$s1,-3
    # Line 560
    sw	$s1,4136($zero)
    # Line 561
    ld	$s1,8($sp)
    # Line 560
    addiu	$s2,$s2,12
    sw	$s2,4144($zero)
    lw	$s0,4148($zero)
    # Line 561
    ld	$s2,0($sp)
    # Line 560
    addiu	$s0,$s0,3
    sw	$s0,4148($zero)
    # Line 561
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9df9c8:
    b	.L0d9df96c
    # Line 556
    move	$s1,$zero
.L0d9df9d0:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$v1,$s1,3
    slt	$v1,$a0,$v1
    beqz	$v1,.L0d9df970
    sll	$v0,$s1,0x2
    b	.L0d9df944
    sd	$ra,32($sp)
.L0d9df9f0:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 561
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 556
    lw	$t8,4136($zero)
    # Line 561
    ld	$s1,8($sp)
    # Line 556
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 561
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex2svBbox

# Function: __glOdylc_Vertex3dBbox
# Declared: Line 564 (Source lines: 564-578)
# Address: 0x0d9dfa20 - 0x0d9dfc3c (Size: 540 bytes, Frame: 192)
.globl __glOdylc_Vertex3dBbox
.ent __glOdylc_Vertex3dBbox
__glOdylc_Vertex3dBbox:
    # Line 564
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    # Line 565
    lw	$a0,4112($zero)
    sd	$s0,32($sp)
    # Line 567
    lw	$v1,5076($a0)
    # Line 564
    sdc1	$f24,0($sp)
    # Line 567
    lui	$a2,0x8
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    or	$v1,$v1,$a2
    sw	$v1,5076($a0)
    lbu	$at,27100($a1)
    # Line 564
    mov.d	$f24,$f14
    sdc1	$f20,16($sp)
    lui	$v0,0x12
    mov.d	$f20,$f13
    # Line 572
    move	$s0,$zero
    # Line 564
    sdc1	$f22,8($sp)
    addiu	$v0,$v0,-29840
    mov.d	$f22,$f12
    sd	$gp,40($sp)
    # Line 567
    beqz	$at,.L0d9dfb2c
    # Line 564
    addu	$gp,$t9,$v0
    # Line 570
    lwc1	$f0,27020($a1)
    cvt.d.s	$f0,$f0
    c.lt.d	$f12,$f0
    lw	$a2,27104($a1)
    addiu	$a2,$a2,1
    bc1f	.L0d9dfaa0
    sw	$a2,27104($a1)
    cvt.s.d	$f1,$f12
    swc1	$f1,27020($a1)
.L0d9dfaa0:
    lwc1	$f2,27024($a1)
    cvt.d.s	$f2,$f2
    c.lt.d $f2,$f22
    bc1f .L0d9dfabc
    nop
    cvt.s.d	$f3,$f22
    swc1	$f3,27024($a1)
.L0d9dfabc:
    lwc1	$f4,27028($a1)
    cvt.d.s	$f4,$f4
    c.lt.d $f20,$f4
    bc1f .L0d9dfad8
    nop
    cvt.s.d	$f5,$f20
    swc1	$f5,27028($a1)
.L0d9dfad8:
    lwc1	$f6,27032($a1)
    cvt.d.s	$f6,$f6
    c.lt.d $f6,$f20
    bc1f .L0d9dfaf4
    nop
    cvt.s.d	$f7,$f20
    swc1	$f7,27032($a1)
.L0d9dfaf4:
    lwc1	$f8,27036($a1)
    cvt.d.s	$f8,$f8
    c.lt.d $f24,$f8
    bc1f .L0d9dfb10
    nop
    cvt.s.d	$f9,$f24
    swc1	$f9,27036($a1)
.L0d9dfb10:
    lwc1	$f10,27040($a1)
    cvt.d.s	$f10,$f10
    c.lt.d $f10,$f24
    bc1f .L0d9dfb2c
    nop
    cvt.s.d	$f11,$f24
    swc1	$f11,27040($a1)
.L0d9dfb2c:
    # Line 572
    lw	$a3,4148($zero)
    lw	$a2,4136($zero)
    lw	$s1,4144($zero)
    beqz	$a3,.L0d9dfbe8
    slti	$a4,$a2,4
    beqz	$a4,.L0d9dfbe0
    nop
    sd	$ra,48($sp)
.L0d9dfb4c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    beqz	$v0,.L0d9dfc08
    move	$a2,$v0
    li	$a6,1
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9dfb74:
    # Line 578
    ld	$gp,40($sp)
    # Line 572
    subu	$t0,$a2,$s0
    sll	$t1,$s0,0x2
    # Line 578
    ld	$s0,32($sp)
    # Line 575
    cvt.s.d	$f13,$f20
    # Line 578
    ldc1	$f20,16($sp)
    # Line 574
    cvt.s.d	$f14,$f22
    # Line 578
    ldc1	$f22,8($sp)
    # Line 576
    cvt.s.d	$f12,$f24
    # Line 578
    ldc1	$f24,0($sp)
    # Line 572
    addu	$t1,$s1,$t1
    # Line 578
    ld	$s1,24($sp)
    # Line 573
    lui	$t2,0x8080
    ori	$t2,$t2,0xcc03
    sw	$t2,0($t1)
    # Line 574
    swc1	$f14,4($t1)
    # Line 575
    swc1	$f13,8($t1)
    # Line 576
    swc1	$f12,12($t1)
    # Line 577
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    # Line 572
    addiu	$t0,$t0,-4
    # Line 577
    sw	$t0,4136($zero)
    # Line 578
    addiu	$sp,$sp,64
    # Line 577
    addiu	$a7,$a7,4
    # Line 578
    jr	$ra
    # Line 577
    sw	$a7,4148($zero)
.L0d9dfbe0:
    b	.L0d9dfb74
    # Line 572
    move	$s0,$zero
.L0d9dfbe8:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a2,$t2
    beqz	$t2,.L0d9dfb74
    nop
    b	.L0d9dfb4c
    sd	$ra,48($sp)
.L0d9dfc08:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 578
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    # Line 572
    lw	$t8,4136($zero)
    # Line 578
    ldc1	$f24,0($sp)
    # Line 572
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 578
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3dBbox

# Function: __glOdylc_Vertex3dvBbox
# Declared: Line 581 (Source lines: 581-595)
# Address: 0x0d9dfc40 - 0x0d9dfe64 (Size: 548 bytes, Frame: 48)
.globl __glOdylc_Vertex3dvBbox
.ent __glOdylc_Vertex3dvBbox
__glOdylc_Vertex3dvBbox:
    # Line 581
    addiu	$sp,$sp,-48
    # Line 582
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 584
    lw	$v1,5076($a1)
    # Line 581
    sd	$s0,24($sp)
    # Line 584
    lui	$a3,0x8
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 581
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 589
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 581
    addiu	$v0,$v0,-30384
    addu	$gp,$t9,$v0
    # Line 584
    beqz	$at,.L0d9dfd58
    # Line 587
    lw	$a3,27104($a2)
    lwc1	$f0,27020($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    ldc1	$f4,0($a0)
    cvt.d.s	$f0,$f0
    c.lt.d	$f4,$f0
    bc1f	.L0d9dfcbc
    nop
    cvt.s.d	$f1,$f4
    swc1	$f1,27020($a2)
    ldc1	$f4,0($a0)
.L0d9dfcbc:
    lwc1	$f2,27024($a2)
    cvt.d.s	$f2,$f2
    c.lt.d $f2,$f4
    bc1f .L0d9dfcd8
    nop
    cvt.s.d	$f3,$f4
    swc1	$f3,27024($a2)
.L0d9dfcd8:
    lwc1	$f5,27028($a2)
    ldc1	$f4,8($s0)
    cvt.d.s	$f5,$f5
    c.lt.d $f4,$f5
    bc1f .L0d9dfcfc
    nop
    cvt.s.d	$f6,$f4
    swc1	$f6,27028($a2)
    ldc1	$f4,8($s0)
.L0d9dfcfc:
    lwc1	$f7,27032($a2)
    cvt.d.s	$f7,$f7
    c.lt.d $f7,$f4
    bc1f .L0d9dfd18
    nop
    cvt.s.d	$f8,$f4
    swc1	$f8,27032($a2)
.L0d9dfd18:
    lwc1	$f9,27036($a2)
    ldc1	$f4,16($s0)
    cvt.d.s	$f9,$f9
    c.lt.d $f4,$f9
    bc1f .L0d9dfd3c
    nop
    cvt.s.d	$f10,$f4
    swc1	$f10,27036($a2)
    ldc1	$f4,16($s0)
.L0d9dfd3c:
    lwc1	$f11,27040($a2)
    cvt.d.s	$f11,$f11
    c.lt.d $f11,$f4
    bc1f .L0d9dfd58
    nop
    cvt.s.d	$f12,$f4
    swc1	$f12,27040($a2)
.L0d9dfd58:
    # Line 589
    lw	$a4,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9dfe18
    slti	$a5,$a0,4
    beqz	$a5,.L0d9dfe10
    nop
    sd	$ra,32($sp)
.L0d9dfd78:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9dfe38
    move	$a0,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s1,$a7,$a6
.L0d9dfda0:
    sll	$t2,$s1,0x2
.L0d9dfda4:
    # Line 590
    lui	$t3,0x8080
    # Line 589
    addu	$t2,$s2,$t2
    # Line 590
    ori	$t3,$t3,0xcc03
    sw	$t3,0($t2)
    # Line 591
    ldc1	$f15,0($s0)
    cvt.s.d	$f15,$f15
    swc1	$f15,4($t2)
    # Line 592
    ldc1	$f14,8($s0)
    # Line 595
    ld	$gp,16($sp)
    # Line 592
    cvt.s.d	$f14,$f14
    swc1	$f14,8($t2)
    # Line 593
    ldc1	$f13,16($s0)
    # Line 589
    subu	$t1,$a0,$s1
    # Line 595
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    ld	$s0,24($sp)
    # Line 593
    cvt.s.d	$f13,$f13
    swc1	$f13,12($t2)
    # Line 594
    addiu	$t2,$t2,16
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 589
    addiu	$t1,$t1,-4
    # Line 594
    sw	$t1,4136($zero)
    # Line 595
    addiu	$sp,$sp,48
    # Line 594
    addiu	$t0,$t0,4
    # Line 595
    jr	$ra
    # Line 594
    sw	$t0,4148($zero)
.L0d9dfe10:
    b	.L0d9dfda0
    # Line 589
    move	$s1,$zero
.L0d9dfe18:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$t3,$s1,4
    slt	$t3,$a0,$t3
    beqz	$t3,.L0d9dfda4
    sll	$t2,$s1,0x2
    b	.L0d9dfd78
    sd	$ra,32($sp)
.L0d9dfe38:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 595
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 589
    lw	$t8,4136($zero)
    # Line 595
    ld	$s1,8($sp)
    # Line 589
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 595
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3dvBbox

# Function: __glOdylc_Vertex3fBbox
# Declared: Line 598 (Source lines: 598-612)
# Address: 0x0d9dfe70 - 0x0d9e0050 (Size: 480 bytes, Frame: 192)
.globl __glOdylc_Vertex3fBbox
.ent __glOdylc_Vertex3fBbox
__glOdylc_Vertex3fBbox:
    # Line 598
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    # Line 599
    lw	$a0,4112($zero)
    sd	$s0,32($sp)
    # Line 601
    lw	$v1,5076($a0)
    # Line 598
    sdc1	$f24,0($sp)
    # Line 601
    lui	$a2,0x8
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    or	$v1,$v1,$a2
    sw	$v1,5076($a0)
    lbu	$at,27100($a1)
    # Line 598
    mov.s	$f24,$f14
    sdc1	$f20,16($sp)
    lui	$v0,0x12
    mov.s	$f20,$f13
    # Line 606
    move	$s0,$zero
    # Line 598
    sdc1	$f22,8($sp)
    addiu	$v0,$v0,-30944
    mov.s	$f22,$f12
    sd	$gp,40($sp)
    # Line 601
    beqz	$at,.L0d9dff4c
    # Line 598
    addu	$gp,$t9,$v0
    # Line 604
    lwc1	$f0,27020($a1)
    c.lt.s	$f12,$f0
    lw	$a2,27104($a1)
    addiu	$a2,$a2,1
    bc1f	.L0d9dfee8
    sw	$a2,27104($a1)
    swc1	$f12,27020($a1)
.L0d9dfee8:
    lwc1	$f1,27024($a1)
    c.lt.s $f1,$f22
    bc1f .L0d9dfefc
    nop
    swc1	$f22,27024($a1)
.L0d9dfefc:
    lwc1	$f2,27028($a1)
    c.lt.s $f20,$f2
    bc1f .L0d9dff10
    nop
    swc1	$f20,27028($a1)
.L0d9dff10:
    lwc1	$f3,27032($a1)
    c.lt.s $f3,$f20
    bc1f .L0d9dff24
    nop
    swc1	$f20,27032($a1)
.L0d9dff24:
    lwc1	$f4,27036($a1)
    c.lt.s $f24,$f4
    bc1f .L0d9dff38
    nop
    swc1	$f24,27036($a1)
.L0d9dff38:
    lwc1	$f5,27040($a1)
    c.lt.s $f5,$f24
    bc1f .L0d9dff4c
    nop
    swc1	$f24,27040($a1)
.L0d9dff4c:
    # Line 606
    lw	$a3,4148($zero)
    lw	$a2,4136($zero)
    lw	$s1,4144($zero)
    beqz	$a3,.L0d9dfffc
    slti	$a4,$a2,4
    beqz	$a4,.L0d9dfff4
    nop
    sd	$ra,48($sp)
.L0d9dff6c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    beqz	$v0,.L0d9e001c
    move	$a2,$v0
    li	$a6,1
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9dff94:
    # Line 612
    ld	$gp,40($sp)
    # Line 606
    subu	$t0,$a2,$s0
    sll	$t1,$s0,0x2
    # Line 612
    ld	$s0,32($sp)
    # Line 606
    addu	$t1,$s1,$t1
    # Line 612
    ld	$s1,24($sp)
    # Line 607
    lui	$t2,0x8080
    ori	$t2,$t2,0xcc03
    sw	$t2,0($t1)
    # Line 608
    swc1	$f22,4($t1)
    # Line 609
    swc1	$f20,8($t1)
    # Line 610
    swc1	$f24,12($t1)
    # Line 611
    addiu	$t1,$t1,16
    sw	$t1,4144($zero)
    # Line 606
    addiu	$t0,$t0,-4
    # Line 611
    sw	$t0,4136($zero)
    # Line 612
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    # Line 611
    lw	$a7,4148($zero)
    # Line 612
    ldc1	$f24,0($sp)
    addiu	$sp,$sp,64
    # Line 611
    addiu	$a7,$a7,4
    # Line 612
    jr	$ra
    # Line 611
    sw	$a7,4148($zero)
.L0d9dfff4:
    b	.L0d9dff94
    # Line 606
    move	$s0,$zero
.L0d9dfffc:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,4
    slt	$t2,$a2,$t2
    beqz	$t2,.L0d9dff94
    nop
    b	.L0d9dff6c
    sd	$ra,48($sp)
.L0d9e001c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 612
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    # Line 606
    lw	$t8,4136($zero)
    # Line 612
    ldc1	$f24,0($sp)
    # Line 606
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 612
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3fBbox

# Function: __glOdylc_Vertex3fvBbox
# Declared: Line 615 (Source lines: 615-629)
# Address: 0x0d9e0050 - 0x0d9e0238 (Size: 488 bytes, Frame: 48)
.globl __glOdylc_Vertex3fvBbox
.ent __glOdylc_Vertex3fvBbox
__glOdylc_Vertex3fvBbox:
    # Line 615
    addiu	$sp,$sp,-48
    # Line 616
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 618
    lw	$v1,5076($a1)
    # Line 615
    sd	$s0,24($sp)
    # Line 618
    lui	$a3,0x8
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 615
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 623
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 615
    addiu	$v0,$v0,-31424
    addu	$gp,$t9,$v0
    # Line 618
    beqz	$at,.L0d9e0138
    # Line 621
    lw	$a3,27104($a2)
    lwc1	$f0,27020($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    lwc1	$f4,0($a0)
    c.lt.s	$f4,$f0
    bc1f	.L0d9e00c4
    nop
    swc1	$f4,27020($a2)
    lwc1	$f4,0($a0)
.L0d9e00c4:
    lwc1	$f1,27024($a2)
    c.lt.s $f1,$f4
    bc1f .L0d9e00d8
    nop
    swc1	$f4,27024($a2)
.L0d9e00d8:
    lwc1	$f2,27028($a2)
    lwc1	$f4,4($s0)
    c.lt.s $f4,$f2
    bc1f .L0d9e00f4
    nop
    swc1	$f4,27028($a2)
    lwc1	$f4,4($s0)
.L0d9e00f4:
    lwc1	$f3,27032($a2)
    c.lt.s $f3,$f4
    bc1f .L0d9e0108
    nop
    swc1	$f4,27032($a2)
.L0d9e0108:
    lwc1	$f5,27036($a2)
    lwc1	$f4,8($s0)
    c.lt.s $f4,$f5
    bc1f .L0d9e0124
    nop
    swc1	$f4,27036($a2)
    lwc1	$f4,8($s0)
.L0d9e0124:
    lwc1	$f6,27040($a2)
    c.lt.s $f6,$f4
    bc1f .L0d9e0138
    nop
    swc1	$f4,27040($a2)
.L0d9e0138:
    # Line 623
    lw	$a4,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9e01ec
    slti	$a5,$a0,4
    beqz	$a5,.L0d9e01e4
    nop
    sd	$ra,32($sp)
.L0d9e0158:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e020c
    move	$a0,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s1,$a7,$a6
.L0d9e0180:
    sll	$t2,$s1,0x2
.L0d9e0184:
    # Line 629
    ld	$gp,16($sp)
    # Line 624
    lui	$t3,0x8080
    # Line 623
    addu	$t2,$s2,$t2
    # Line 624
    ori	$t3,$t3,0xcc03
    sw	$t3,0($t2)
    # Line 625
    lwc1	$f9,0($s0)
    # Line 623
    subu	$t1,$a0,$s1
    # Line 629
    ld	$s1,8($sp)
    # Line 625
    swc1	$f9,4($t2)
    # Line 626
    lwc1	$f8,4($s0)
    # Line 629
    ld	$s2,0($sp)
    # Line 626
    swc1	$f8,8($t2)
    # Line 627
    lwc1	$f7,8($s0)
    # Line 629
    ld	$s0,24($sp)
    # Line 627
    swc1	$f7,12($t2)
    # Line 628
    addiu	$t2,$t2,16
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 623
    addiu	$t1,$t1,-4
    # Line 628
    sw	$t1,4136($zero)
    # Line 629
    addiu	$sp,$sp,48
    # Line 628
    addiu	$t0,$t0,4
    # Line 629
    jr	$ra
    # Line 628
    sw	$t0,4148($zero)
.L0d9e01e4:
    b	.L0d9e0180
    # Line 623
    move	$s1,$zero
.L0d9e01ec:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$t3,$s1,4
    slt	$t3,$a0,$t3
    beqz	$t3,.L0d9e0184
    sll	$t2,$s1,0x2
    b	.L0d9e0158
    sd	$ra,32($sp)
.L0d9e020c:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 629
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 623
    lw	$t8,4136($zero)
    # Line 629
    ld	$s1,8($sp)
    # Line 623
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 629
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3fvBbox

# Function: __glOdylc_Vertex3iBbox
# Declared: Line 632 (Source lines: 632-646)
# Address: 0x0d9e0240 - 0x0d9e0438 (Size: 504 bytes, Frame: 192)
.globl __glOdylc_Vertex3iBbox
.ent __glOdylc_Vertex3iBbox
__glOdylc_Vertex3iBbox:
    # Line 632
    addiu	$sp,$sp,-64
    sd	$s4,0($sp)
    # Line 633
    lw	$a3,4112($zero)
    # Line 632
    sd	$s1,24($sp)
    # Line 638
    mtc1	$a0,$f4
    # Line 635
    lw	$v1,5076($a3)
    # Line 632
    sd	$s3,40($sp)
    # Line 635
    lui	$a5,0x8
    lui	$a4,0x1
    addu	$a4,$a3,$a4
    or	$v1,$v1,$a5
    sw	$v1,5076($a3)
    # Line 632
    move	$s3,$a2
    move	$s1,$a1
    # Line 635
    lbu	$at,27100($a4)
    # Line 632
    sd	$s2,32($sp)
    move	$s2,$a0
    lui	$v0,0x12
    sd	$s0,8($sp)
    # Line 640
    move	$s0,$zero
    # Line 632
    addiu	$v0,$v0,-31920
    sd	$gp,16($sp)
    # Line 635
    beqz	$at,.L0d9e0334
    # Line 632
    addu	$gp,$t9,$v0
    # Line 638
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a4)
    c.lt.s	$f4,$f0
    lw	$a5,27104($a4)
    addiu	$a5,$a5,1
    bc1f	.L0d9e02c0
    sw	$a5,27104($a4)
    swc1	$f4,27020($a4)
.L0d9e02c0:
    lwc1	$f5,27024($a4)
    c.lt.s $f5,$f4
    bc1f .L0d9e02d4
    nop
    swc1	$f4,27024($a4)
.L0d9e02d4:
    mtc1	$s1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a4)
    c.lt.s $f4,$f6
    bc1f .L0d9e02f0
    nop
    swc1	$f4,27028($a4)
.L0d9e02f0:
    lwc1	$f5,27032($a4)
    c.lt.s $f5,$f4
    bc1f .L0d9e0304
    nop
    swc1	$f4,27032($a4)
.L0d9e0304:
    mtc1	$s3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27036($a4)
    c.lt.s $f4,$f6
    bc1f .L0d9e0320
    nop
    swc1	$f4,27036($a4)
.L0d9e0320:
    lwc1	$f5,27040($a4)
    c.lt.s $f5,$f4
    bc1f .L0d9e0334
    nop
    swc1	$f4,27040($a4)
.L0d9e0334:
    # Line 640
    lw	$a6,4148($zero)
    lw	$a5,4136($zero)
    lw	$s4,4144($zero)
    beqz	$a6,.L0d9e03e4
    slti	$a7,$a5,4
    beqz	$a7,.L0d9e03dc
    nop
    sd	$ra,48($sp)
.L0d9e0354:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    beqz	$v0,.L0d9e0404
    move	$a5,$v0
    li	$t1,1
    lw	$s4,4144($zero)
    andi	$t0,$s4,0x4
    movn	$s0,$t1,$t0
.L0d9e037c:
    # Line 646
    ld	$gp,16($sp)
    # Line 640
    sll	$t9,$s0,0x2
    subu	$t3,$a5,$s0
    # Line 646
    ld	$s0,8($sp)
    # Line 640
    addu	$s4,$s4,$t9
    # Line 644
    sw	$s3,12($s4)
    # Line 643
    sw	$s1,8($s4)
    # Line 641
    lui	$t8,0x8080
    # Line 642
    sw	$s2,4($s4)
    # Line 641
    ori	$t8,$t8,0xcc02
    sw	$t8,0($s4)
    # Line 640
    addiu	$t3,$t3,-4
    # Line 645
    sw	$t3,4136($zero)
    addiu	$s1,$s4,16
    sw	$s1,4144($zero)
    # Line 646
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    # Line 645
    lw	$t2,4148($zero)
    # Line 646
    ld	$s4,0($sp)
    addiu	$sp,$sp,64
    # Line 645
    addiu	$t2,$t2,4
    # Line 646
    jr	$ra
    # Line 645
    sw	$t2,4148($zero)
.L0d9e03dc:
    b	.L0d9e037c
    # Line 640
    move	$s0,$zero
.L0d9e03e4:
    andi	$s0,$s4,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,4
    slt	$at,$a5,$at
    beqz	$at,.L0d9e037c
    nop
    b	.L0d9e0354
    sd	$ra,48($sp)
.L0d9e0404:
    # Line 646
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 640
    addiu	$s2,$s4,-4
    sw	$s2,4144($zero)
    # Line 646
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    # Line 640
    lw	$s1,4136($zero)
    # Line 646
    ld	$s4,0($sp)
    # Line 640
    addiu	$s1,$s1,1
    sw	$s1,4136($zero)
    # Line 646
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3iBbox

# Function: __glOdylc_Vertex3ivBbox
# Declared: Line 649 (Source lines: 649-663)
# Address: 0x0d9e0440 - 0x0d9e0658 (Size: 536 bytes, Frame: 48)
.globl __glOdylc_Vertex3ivBbox
.ent __glOdylc_Vertex3ivBbox
__glOdylc_Vertex3ivBbox:
    # Line 649
    addiu	$sp,$sp,-48
    # Line 650
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 652
    lw	$v1,5076($a1)
    # Line 649
    sd	$s0,24($sp)
    # Line 652
    lui	$a3,0x8
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 649
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x12
    # Line 657
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 649
    addiu	$v0,$v0,-32432
    addu	$gp,$t9,$v0
    # Line 652
    beqz	$at,.L0d9e0558
    # Line 655
    lw	$a4,27104($a2)
    addiu	$a4,$a4,1
    sw	$a4,27104($a2)
    lw	$a3,0($a0)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a2)
    c.lt.s	$f4,$f0
    bc1f	.L0d9e04c4
    nop
    swc1	$f4,27020($a2)
    lw	$a5,0($a0)
    mtc1	$a5,$f4
    cvt.s.w	$f4,$f4
.L0d9e04c4:
    lwc1	$f5,27024($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9e04d8
    nop
    swc1	$f4,27024($a2)
.L0d9e04d8:
    lw	$a6,4($s0)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a2)
    c.lt.s $f4,$f6
    bc1f .L0d9e0504
    nop
    swc1	$f4,27028($a2)
    lw	$a7,4($s0)
    mtc1	$a7,$f4
    cvt.s.w	$f4,$f4
.L0d9e0504:
    lwc1	$f5,27032($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9e0518
    nop
    swc1	$f4,27032($a2)
.L0d9e0518:
    lw	$t0,8($s0)
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27036($a2)
    c.lt.s $f4,$f6
    bc1f .L0d9e0544
    nop
    swc1	$f4,27036($a2)
    lw	$t1,8($s0)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
.L0d9e0544:
    lwc1	$f5,27040($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9e0558
    nop
    swc1	$f4,27040($a2)
.L0d9e0558:
    # Line 657
    lw	$t2,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$t2,.L0d9e060c
    slti	$t3,$a0,4
    beqz	$t3,.L0d9e0604
    nop
    sd	$ra,32($sp)
.L0d9e0578:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e062c
    move	$a0,$v0
    li	$t9,1
    lw	$s2,4144($zero)
    andi	$t8,$s2,0x4
    movn	$s1,$t9,$t8
.L0d9e05a0:
    # Line 663
    ld	$gp,16($sp)
    # Line 657
    subu	$v0,$a0,$s1
    sll	$v1,$s1,0x2
    # Line 663
    ld	$s1,8($sp)
    # Line 657
    addu	$v1,$s2,$v1
    # Line 663
    ld	$s2,0($sp)
    # Line 658
    lui	$a4,0x8080
    ori	$a4,$a4,0xcc02
    sw	$a4,0($v1)
    # Line 659
    lw	$a3,0($s0)
    sw	$a3,4($v1)
    # Line 660
    lw	$a2,4($s0)
    sw	$a2,8($v1)
    # Line 661
    lw	$a1,8($s0)
    # Line 663
    ld	$s0,24($sp)
    # Line 661
    sw	$a1,12($v1)
    # Line 662
    addiu	$v1,$v1,16
    sw	$v1,4144($zero)
    lw	$at,4148($zero)
    # Line 657
    addiu	$v0,$v0,-4
    # Line 662
    sw	$v0,4136($zero)
    # Line 663
    addiu	$sp,$sp,48
    # Line 662
    addiu	$at,$at,4
    # Line 663
    jr	$ra
    # Line 662
    sw	$at,4148($zero)
.L0d9e0604:
    b	.L0d9e05a0
    # Line 657
    move	$s1,$zero
.L0d9e060c:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$a1,$s1,4
    slt	$a1,$a0,$a1
    beqz	$a1,.L0d9e05a0
    nop
    b	.L0d9e0578
    sd	$ra,32($sp)
.L0d9e062c:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 663
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 657
    lw	$t8,4136($zero)
    # Line 663
    ld	$s1,8($sp)
    # Line 657
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 663
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3ivBbox

# Function: __glOdylc_Vertex3sBbox
# Declared: Line 666 (Source lines: 666-680)
# Address: 0x0d9e0660 - 0x0d9e0858 (Size: 504 bytes, Frame: 192)
.globl __glOdylc_Vertex3sBbox
.ent __glOdylc_Vertex3sBbox
__glOdylc_Vertex3sBbox:
    # Line 666
    addiu	$sp,$sp,-64
    sd	$s4,0($sp)
    # Line 667
    lw	$a3,4112($zero)
    # Line 666
    sd	$s1,24($sp)
    # Line 672
    mtc1	$a0,$f4
    # Line 669
    lw	$v1,5076($a3)
    # Line 666
    sd	$s3,40($sp)
    # Line 669
    lui	$a5,0x8
    lui	$a4,0x1
    addu	$a4,$a3,$a4
    or	$v1,$v1,$a5
    sw	$v1,5076($a3)
    # Line 666
    move	$s3,$a2
    move	$s1,$a1
    # Line 669
    lbu	$at,27100($a4)
    # Line 666
    sd	$s2,32($sp)
    move	$s2,$a0
    lui	$v0,0x11
    sd	$s0,8($sp)
    # Line 674
    move	$s0,$zero
    # Line 666
    addiu	$v0,$v0,32560
    sd	$gp,16($sp)
    # Line 669
    beqz	$at,.L0d9e0754
    # Line 666
    addu	$gp,$t9,$v0
    # Line 672
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a4)
    c.lt.s	$f4,$f0
    lw	$a5,27104($a4)
    addiu	$a5,$a5,1
    bc1f	.L0d9e06e0
    sw	$a5,27104($a4)
    swc1	$f4,27020($a4)
.L0d9e06e0:
    lwc1	$f5,27024($a4)
    c.lt.s $f5,$f4
    bc1f .L0d9e06f4
    nop
    swc1	$f4,27024($a4)
.L0d9e06f4:
    mtc1	$s1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a4)
    c.lt.s $f4,$f6
    bc1f .L0d9e0710
    nop
    swc1	$f4,27028($a4)
.L0d9e0710:
    lwc1	$f5,27032($a4)
    c.lt.s $f5,$f4
    bc1f .L0d9e0724
    nop
    swc1	$f4,27032($a4)
.L0d9e0724:
    mtc1	$s3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27036($a4)
    c.lt.s $f4,$f6
    bc1f .L0d9e0740
    nop
    swc1	$f4,27036($a4)
.L0d9e0740:
    lwc1	$f5,27040($a4)
    c.lt.s $f5,$f4
    bc1f .L0d9e0754
    nop
    swc1	$f4,27040($a4)
.L0d9e0754:
    # Line 674
    lw	$a6,4148($zero)
    lw	$a5,4136($zero)
    lw	$s4,4144($zero)
    beqz	$a6,.L0d9e0804
    slti	$a7,$a5,4
    beqz	$a7,.L0d9e07fc
    nop
    sd	$ra,48($sp)
.L0d9e0774:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    beqz	$v0,.L0d9e0824
    move	$a5,$v0
    li	$t1,1
    lw	$s4,4144($zero)
    andi	$t0,$s4,0x4
    movn	$s0,$t1,$t0
.L0d9e079c:
    # Line 680
    ld	$gp,16($sp)
    # Line 674
    sll	$t9,$s0,0x2
    subu	$t3,$a5,$s0
    # Line 680
    ld	$s0,8($sp)
    # Line 674
    addu	$s4,$s4,$t9
    # Line 678
    sw	$s3,12($s4)
    # Line 677
    sw	$s1,8($s4)
    # Line 675
    lui	$t8,0x8080
    # Line 676
    sw	$s2,4($s4)
    # Line 675
    ori	$t8,$t8,0xcc02
    sw	$t8,0($s4)
    # Line 674
    addiu	$t3,$t3,-4
    # Line 679
    sw	$t3,4136($zero)
    addiu	$s1,$s4,16
    sw	$s1,4144($zero)
    # Line 680
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    # Line 679
    lw	$t2,4148($zero)
    # Line 680
    ld	$s4,0($sp)
    addiu	$sp,$sp,64
    # Line 679
    addiu	$t2,$t2,4
    # Line 680
    jr	$ra
    # Line 679
    sw	$t2,4148($zero)
.L0d9e07fc:
    b	.L0d9e079c
    # Line 674
    move	$s0,$zero
.L0d9e0804:
    andi	$s0,$s4,0x4
    sltu	$s0,$zero,$s0
    addiu	$at,$s0,4
    slt	$at,$a5,$at
    beqz	$at,.L0d9e079c
    nop
    b	.L0d9e0774
    sd	$ra,48($sp)
.L0d9e0824:
    # Line 680
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 674
    addiu	$s2,$s4,-4
    sw	$s2,4144($zero)
    # Line 680
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    # Line 674
    lw	$s1,4136($zero)
    # Line 680
    ld	$s4,0($sp)
    # Line 674
    addiu	$s1,$s1,1
    sw	$s1,4136($zero)
    # Line 680
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex3sBbox

# Function: __glOdylc_Vertex3svBbox
# Declared: Line 683 (Source lines: 683-697)
# Address: 0x0d9e0860 - 0x0d9e0a78 (Size: 536 bytes, Frame: 48)
.globl __glOdylc_Vertex3svBbox
.ent __glOdylc_Vertex3svBbox
__glOdylc_Vertex3svBbox:
    # Line 683
    addiu	$sp,$sp,-48
    # Line 684
    lw	$a1,4112($zero)
    sd	$s2,0($sp)
    # Line 686
    lw	$v1,5076($a1)
    # Line 683
    sd	$s0,24($sp)
    # Line 686
    lui	$a3,0x8
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 683
    move	$s0,$a0
    sd	$s1,8($sp)
    lui	$v0,0x11
    # Line 691
    move	$s1,$zero
    sd	$gp,16($sp)
    # Line 683
    addiu	$v0,$v0,32048
    addu	$gp,$t9,$v0
    # Line 686
    beqz	$at,.L0d9e0978
    # Line 689
    lw	$a4,27104($a2)
    addiu	$a4,$a4,1
    sw	$a4,27104($a2)
    lh	$a3,0($a0)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f0,27020($a2)
    c.lt.s	$f4,$f0
    bc1f	.L0d9e08e4
    nop
    swc1	$f4,27020($a2)
    lh	$a5,0($a0)
    mtc1	$a5,$f4
    cvt.s.w	$f4,$f4
.L0d9e08e4:
    lwc1	$f5,27024($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9e08f8
    nop
    swc1	$f4,27024($a2)
.L0d9e08f8:
    lh	$a6,2($s0)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27028($a2)
    c.lt.s $f4,$f6
    bc1f .L0d9e0924
    nop
    swc1	$f4,27028($a2)
    lh	$a7,2($s0)
    mtc1	$a7,$f4
    cvt.s.w	$f4,$f4
.L0d9e0924:
    lwc1	$f5,27032($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9e0938
    nop
    swc1	$f4,27032($a2)
.L0d9e0938:
    lh	$t0,4($s0)
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f6,27036($a2)
    c.lt.s $f4,$f6
    bc1f .L0d9e0964
    nop
    swc1	$f4,27036($a2)
    lh	$t1,4($s0)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
.L0d9e0964:
    lwc1	$f5,27040($a2)
    c.lt.s $f5,$f4
    bc1f .L0d9e0978
    nop
    swc1	$f4,27040($a2)
.L0d9e0978:
    # Line 691
    lw	$t2,4148($zero)
    lw	$a0,4136($zero)
    lw	$s2,4144($zero)
    beqz	$t2,.L0d9e0a2c
    slti	$t3,$a0,4
    beqz	$t3,.L0d9e0a24
    nop
    sd	$ra,32($sp)
.L0d9e0998:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e0a4c
    move	$a0,$v0
    li	$t9,1
    lw	$s2,4144($zero)
    andi	$t8,$s2,0x4
    movn	$s1,$t9,$t8
.L0d9e09c0:
    # Line 697
    ld	$gp,16($sp)
    # Line 691
    subu	$v0,$a0,$s1
    sll	$v1,$s1,0x2
    # Line 697
    ld	$s1,8($sp)
    # Line 691
    addu	$v1,$s2,$v1
    # Line 697
    ld	$s2,0($sp)
    # Line 692
    lui	$a4,0x8080
    ori	$a4,$a4,0xcc02
    sw	$a4,0($v1)
    # Line 693
    lh	$a3,0($s0)
    sw	$a3,4($v1)
    # Line 694
    lh	$a2,2($s0)
    sw	$a2,8($v1)
    # Line 695
    lh	$a1,4($s0)
    # Line 697
    ld	$s0,24($sp)
    # Line 695
    sw	$a1,12($v1)
    # Line 696
    addiu	$v1,$v1,16
    sw	$v1,4144($zero)
    lw	$at,4148($zero)
    # Line 691
    addiu	$v0,$v0,-4
    # Line 696
    sw	$v0,4136($zero)
    # Line 697
    addiu	$sp,$sp,48
    # Line 696
    addiu	$at,$at,4
    # Line 697
    jr	$ra
    # Line 696
    sw	$at,4148($zero)
.L0d9e0a24:
    b	.L0d9e09c0
    # Line 691
    move	$s1,$zero
.L0d9e0a2c:
    andi	$s1,$s2,0x4
    sltu	$s1,$zero,$s1
    addiu	$a1,$s1,4
    slt	$a1,$a0,$a1
    beqz	$a1,.L0d9e09c0
    nop
    b	.L0d9e0998
    sd	$ra,32($sp)
.L0d9e0a4c:
    addiu	$t9,$s2,-4
    sw	$t9,4144($zero)
    # Line 697
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    # Line 691
    lw	$t8,4136($zero)
    # Line 697
    ld	$s1,8($sp)
    # Line 691
    addiu	$s2,$t8,1
    sw	$s2,4136($zero)
    # Line 697
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex3svBbox

# Function: __glOdylc_Vertex4dBbox
# Declared: Line 700 (Source lines: 700-715)
# Address: 0x0d9e0a80 - 0x0d9e0cf8 (Size: 632 bytes, Frame: 192)
.globl __glOdylc_Vertex4dBbox
.ent __glOdylc_Vertex4dBbox
__glOdylc_Vertex4dBbox:
    # Line 700
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s0,40($sp)
    # Line 701
    lw	$a0,4112($zero)
    # Line 700
    sdc1	$f24,0($sp)
    # Line 703
    lw	$v1,5076($a0)
    # Line 700
    sdc1	$f20,24($sp)
    # Line 703
    lui	$a2,0x10
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    or	$v1,$v1,$a2
    sw	$v1,5076($a0)
    # Line 700
    mov.d	$f20,$f15
    # Line 703
    lbu	$at,27100($a1)
    # Line 700
    mov.d	$f24,$f14
    sdc1	$f26,16($sp)
    lui	$v0,0x11
    mov.d	$f26,$f13
    # Line 708
    move	$s0,$zero
    # Line 700
    sdc1	$f22,8($sp)
    addiu	$v0,$v0,31504
    mov.d	$f22,$f12
    sd	$gp,48($sp)
    # Line 703
    beqz	$at,.L0d9e0bd8
    # Line 700
    addu	$gp,$t9,$v0
    # Line 706
    dmtc1	$zero,$f0
    c.lt.d	$f15,$f0
    lw	$a2,27104($a1)
    addiu	$a2,$a2,1
    bc1f	.L0d9e0b20
    sw	$a2,27104($a1)
    neg.d	$f6,$f12
    neg.d	$f5,$f13
    neg.d	$f4,$f15
    neg.d	$f7,$f14
    cvt.s.d	$f4,$f4
    cvt.s.d	$f7,$f7
    cvt.s.d	$f5,$f5
    b	.L0d9e0b30
    cvt.s.d	$f6,$f6
.L0d9e0b20:
    cvt.s.d	$f4,$f15
    cvt.s.d	$f7,$f14
    cvt.s.d	$f5,$f13
    cvt.s.d	$f6,$f12
.L0d9e0b30:
    lwc1	$f8,27020($a1)
    mul.s	$f8,$f8,$f4
    c.lt.s $f6,$f8
    bc1f .L0d9e0b4c
    nop
    div.s	$f9,$f6,$f4
    swc1	$f9,27020($a1)
.L0d9e0b4c:
    lwc1	$f10,27024($a1)
    mul.s	$f10,$f10,$f4
    c.lt.s $f10,$f6
    bc1f .L0d9e0b68
    nop
    div.s	$f11,$f6,$f4
    swc1	$f11,27024($a1)
.L0d9e0b68:
    lwc1	$f12,27028($a1)
    mul.s	$f12,$f12,$f4
    c.lt.s $f5,$f12
    bc1f .L0d9e0b84
    nop
    div.s	$f13,$f5,$f4
    swc1	$f13,27028($a1)
.L0d9e0b84:
    lwc1	$f14,27032($a1)
    mul.s	$f14,$f14,$f4
    c.lt.s $f14,$f5
    bc1f .L0d9e0ba0
    nop
    div.s	$f15,$f5,$f4
    swc1	$f15,27032($a1)
.L0d9e0ba0:
    lwc1	$f16,27036($a1)
    mul.s	$f16,$f16,$f4
    c.lt.s $f7,$f16
    bc1f .L0d9e0bbc
    nop
    div.s	$f17,$f7,$f4
    swc1	$f17,27036($a1)
.L0d9e0bbc:
    lwc1	$f18,27040($a1)
    mul.s	$f18,$f18,$f4
    c.lt.s $f18,$f7
    bc1f .L0d9e0bd8
    nop
    div.s	$f19,$f7,$f4
    swc1	$f19,27040($a1)
.L0d9e0bd8:
    # Line 708
    lw	$a3,4148($zero)
    lw	$a2,4136($zero)
    lw	$s1,4144($zero)
    beqz	$a3,.L0d9e0ca0
    slti	$a4,$a2,5
    beqz	$a4,.L0d9e0c98
    nop
    sd	$ra,56($sp)
.L0d9e0bf8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    beqz	$v0,.L0d9e0cc0
    move	$a2,$v0
    li	$a6,1
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9e0c20:
    # Line 715
    ld	$gp,48($sp)
    # Line 708
    subu	$t0,$a2,$s0
    sll	$t1,$s0,0x2
    # Line 715
    ld	$s0,40($sp)
    # Line 712
    cvt.s.d	$f21,$f24
    # Line 715
    ldc1	$f24,0($sp)
    # Line 710
    cvt.s.d	$f23,$f22
    # Line 711
    cvt.s.d	$f22,$f26
    # Line 715
    ldc1	$f26,16($sp)
    # Line 708
    addu	$t1,$s1,$t1
    # Line 715
    ld	$s1,32($sp)
    # Line 709
    lui	$t2,0x8080
    ori	$t2,$t2,0xd005
    sw	$t2,0($t1)
    # Line 710
    swc1	$f23,4($t1)
    # Line 711
    swc1	$f22,8($t1)
    # Line 713
    cvt.s.d	$f20,$f20
    # Line 712
    swc1	$f21,12($t1)
    # Line 713
    swc1	$f20,16($t1)
    # Line 714
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    # Line 708
    addiu	$t0,$t0,-5
    # Line 714
    sw	$t0,4136($zero)
    # Line 715
    ldc1	$f20,24($sp)
    # Line 714
    lw	$a7,4148($zero)
    # Line 715
    ldc1	$f22,8($sp)
    addiu	$sp,$sp,64
    # Line 714
    addiu	$a7,$a7,5
    # Line 715
    jr	$ra
    # Line 714
    sw	$a7,4148($zero)
.L0d9e0c98:
    b	.L0d9e0c20
    # Line 708
    move	$s0,$zero
.L0d9e0ca0:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a2,$t2
    beqz	$t2,.L0d9e0c20
    nop
    b	.L0d9e0bf8
    sd	$ra,56($sp)
.L0d9e0cc0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 715
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    # Line 708
    lw	$t8,4136($zero)
    # Line 715
    ldc1	$f26,16($sp)
    # Line 708
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 715
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex4dBbox

# Function: __glOdylc_Vertex4dvBbox
# Declared: Line 718 (Source lines: 718-733)
# Address: 0x0d9e0d00 - 0x0d9e0f68 (Size: 616 bytes, Frame: 48)
.globl __glOdylc_Vertex4dvBbox
.ent __glOdylc_Vertex4dvBbox
__glOdylc_Vertex4dvBbox:
    # Line 718
    addiu	$sp,$sp,-48
    # Line 719
    lw	$a1,4112($zero)
    sd	$s2,8($sp)
    # Line 721
    lw	$v1,5076($a1)
    # Line 718
    sd	$s1,24($sp)
    # Line 721
    lui	$a3,0x10
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 718
    move	$s1,$a0
    sd	$s0,0($sp)
    lui	$v0,0x11
    # Line 726
    move	$s0,$zero
    sd	$gp,16($sp)
    # Line 718
    addiu	$v0,$v0,30864
    addu	$gp,$t9,$v0
    # Line 721
    beqz	$at,.L0d9e0e50
    # Line 724
    lw	$a3,27104($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    dmtc1	$zero,$f0
    ldc1	$f10,24($a0)
    c.lt.d	$f10,$f0
    ldc1	$f8,16($a0)
    ldc1	$f11,8($a0)
    bc1f	.L0d9e0d98
    ldc1	$f9,0($a0)
    neg.d	$f6,$f9
    neg.d	$f5,$f11
    neg.d	$f4,$f10
    neg.d	$f7,$f8
    cvt.s.d	$f4,$f4
    cvt.s.d	$f7,$f7
    cvt.s.d	$f5,$f5
    b	.L0d9e0da8
    cvt.s.d	$f6,$f6
.L0d9e0d98:
    cvt.s.d	$f4,$f10
    cvt.s.d	$f7,$f8
    cvt.s.d	$f5,$f11
    cvt.s.d	$f6,$f9
.L0d9e0da8:
    lwc1	$f8,27020($a2)
    mul.s	$f8,$f8,$f4
    c.lt.s $f6,$f8
    bc1f .L0d9e0dc4
    nop
    div.s	$f9,$f6,$f4
    swc1	$f9,27020($a2)
.L0d9e0dc4:
    lwc1	$f10,27024($a2)
    mul.s	$f10,$f10,$f4
    c.lt.s $f10,$f6
    bc1f .L0d9e0de0
    nop
    div.s	$f11,$f6,$f4
    swc1	$f11,27024($a2)
.L0d9e0de0:
    lwc1	$f12,27028($a2)
    mul.s	$f12,$f12,$f4
    c.lt.s $f5,$f12
    bc1f .L0d9e0dfc
    nop
    div.s	$f13,$f5,$f4
    swc1	$f13,27028($a2)
.L0d9e0dfc:
    lwc1	$f14,27032($a2)
    mul.s	$f14,$f14,$f4
    c.lt.s $f14,$f5
    bc1f .L0d9e0e18
    nop
    div.s	$f15,$f5,$f4
    swc1	$f15,27032($a2)
.L0d9e0e18:
    lwc1	$f16,27036($a2)
    mul.s	$f16,$f16,$f4
    c.lt.s $f7,$f16
    bc1f .L0d9e0e34
    nop
    div.s	$f17,$f7,$f4
    swc1	$f17,27036($a2)
.L0d9e0e34:
    lwc1	$f18,27040($a2)
    mul.s	$f18,$f18,$f4
    c.lt.s $f18,$f7
    bc1f .L0d9e0e50
    nop
    div.s	$f19,$f7,$f4
    swc1	$f19,27040($a2)
.L0d9e0e50:
    # Line 726
    lw	$a4,4148($zero)
    lw	$a3,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9e0f1c
    slti	$a5,$a3,5
    beqz	$a5,.L0d9e0f14
    nop
    sd	$ra,32($sp)
.L0d9e0e70:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e0f3c
    move	$a3,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s0,$a7,$a6
.L0d9e0e98:
    sll	$t2,$s0,0x2
.L0d9e0e9c:
    # Line 727
    lui	$t3,0x8080
    # Line 726
    addu	$t2,$s2,$t2
    # Line 727
    ori	$t3,$t3,0xd005
    sw	$t3,0($t2)
    # Line 728
    ldc1	$f27,0($s1)
    cvt.s.d	$f27,$f27
    swc1	$f27,4($t2)
    # Line 729
    ldc1	$f25,8($s1)
    cvt.s.d	$f25,$f25
    swc1	$f25,8($t2)
    # Line 730
    ldc1	$f23,16($s1)
    # Line 733
    ld	$gp,16($sp)
    # Line 730
    cvt.s.d	$f23,$f23
    swc1	$f23,12($t2)
    # Line 731
    ldc1	$f21,24($s1)
    # Line 726
    subu	$t1,$a3,$s0
    # Line 733
    ld	$s0,0($sp)
    ld	$s2,8($sp)
    ld	$s1,24($sp)
    # Line 731
    cvt.s.d	$f21,$f21
    swc1	$f21,16($t2)
    # Line 732
    addiu	$t2,$t2,20
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 726
    addiu	$t1,$t1,-5
    # Line 732
    sw	$t1,4136($zero)
    # Line 733
    addiu	$sp,$sp,48
    # Line 732
    addiu	$t0,$t0,5
    # Line 733
    jr	$ra
    # Line 732
    sw	$t0,4148($zero)
.L0d9e0f14:
    b	.L0d9e0e98
    # Line 726
    move	$s0,$zero
.L0d9e0f1c:
    andi	$s0,$s2,0x4
    sltu	$s0,$zero,$s0
    addiu	$t3,$s0,5
    slt	$t3,$a3,$t3
    beqz	$t3,.L0d9e0e9c
    sll	$t2,$s0,0x2
    b	.L0d9e0e70
    sd	$ra,32($sp)
.L0d9e0f3c:
    # Line 733
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    # Line 726
    addiu	$s2,$s2,-4
    sw	$s2,4144($zero)
    lw	$s1,4136($zero)
    # Line 733
    ld	$s2,8($sp)
    # Line 726
    addiu	$s1,$s1,1
    sw	$s1,4136($zero)
    # Line 733
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex4dvBbox

# Function: __glOdylc_Vertex4fBbox
# Declared: Line 736 (Source lines: 736-751)
# Address: 0x0d9e0f70 - 0x0d9e11c4 (Size: 596 bytes, Frame: 192)
.globl __glOdylc_Vertex4fBbox
.ent __glOdylc_Vertex4fBbox
__glOdylc_Vertex4fBbox:
    # Line 736
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s0,40($sp)
    # Line 737
    lw	$a0,4112($zero)
    # Line 742
    mov.s	$f6,$f12
    # Line 736
    sdc1	$f24,0($sp)
    # Line 742
    mov.s	$f5,$f13
    # Line 739
    lw	$v1,5076($a0)
    # Line 742
    mov.s	$f7,$f14
    # Line 736
    sdc1	$f20,24($sp)
    # Line 739
    lui	$a2,0x10
    lui	$a1,0x1
    # Line 742
    mov.s	$f4,$f15
    # Line 739
    addu	$a1,$a0,$a1
    or	$v1,$v1,$a2
    sw	$v1,5076($a0)
    # Line 736
    mov.s	$f20,$f15
    # Line 739
    lbu	$at,27100($a1)
    # Line 736
    mov.s	$f24,$f14
    sdc1	$f26,16($sp)
    lui	$v0,0x11
    mov.s	$f26,$f13
    # Line 744
    move	$s0,$zero
    # Line 736
    sdc1	$f22,8($sp)
    addiu	$v0,$v0,30240
    mov.s	$f22,$f12
    sd	$gp,48($sp)
    # Line 739
    beqz	$at,.L0d9e10b4
    # Line 736
    addu	$gp,$t9,$v0
    # Line 742
    mtc1	$zero,$f0
    c.lt.s	$f15,$f0
    lw	$a2,27104($a1)
    addiu	$a2,$a2,1
    bc1f	.L0d9e100c
    sw	$a2,27104($a1)
    neg.s	$f4,$f15
    neg.s	$f7,$f14
    neg.s	$f5,$f13
    neg.s	$f6,$f12
.L0d9e100c:
    lwc1	$f1,27020($a1)
    mul.s	$f1,$f1,$f4
    c.lt.s $f6,$f1
    bc1f .L0d9e1028
    nop
    div.s	$f2,$f6,$f4
    swc1	$f2,27020($a1)
.L0d9e1028:
    lwc1	$f3,27024($a1)
    mul.s	$f3,$f3,$f4
    c.lt.s $f3,$f6
    bc1f .L0d9e1044
    nop
    div.s	$f8,$f6,$f4
    swc1	$f8,27024($a1)
.L0d9e1044:
    lwc1	$f9,27028($a1)
    mul.s	$f9,$f9,$f4
    c.lt.s $f5,$f9
    bc1f .L0d9e1060
    nop
    div.s	$f10,$f5,$f4
    swc1	$f10,27028($a1)
.L0d9e1060:
    lwc1	$f11,27032($a1)
    mul.s	$f11,$f11,$f4
    c.lt.s $f11,$f5
    bc1f .L0d9e107c
    nop
    div.s	$f12,$f5,$f4
    swc1	$f12,27032($a1)
.L0d9e107c:
    lwc1	$f13,27036($a1)
    mul.s	$f13,$f13,$f4
    c.lt.s $f7,$f13
    bc1f .L0d9e1098
    nop
    div.s	$f14,$f7,$f4
    swc1	$f14,27036($a1)
.L0d9e1098:
    lwc1	$f15,27040($a1)
    mul.s	$f15,$f15,$f4
    c.lt.s $f15,$f7
    bc1f .L0d9e10b4
    nop
    div.s	$f16,$f7,$f4
    swc1	$f16,27040($a1)
.L0d9e10b4:
    # Line 744
    lw	$a3,4148($zero)
    lw	$a2,4136($zero)
    lw	$s1,4144($zero)
    beqz	$a3,.L0d9e116c
    slti	$a4,$a2,5
    beqz	$a4,.L0d9e1164
    nop
    sd	$ra,56($sp)
.L0d9e10d4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    beqz	$v0,.L0d9e118c
    move	$a2,$v0
    li	$a6,1
    lw	$s1,4144($zero)
    andi	$a5,$s1,0x4
    movn	$s0,$a6,$a5
.L0d9e10fc:
    # Line 751
    ld	$gp,48($sp)
    # Line 744
    subu	$t0,$a2,$s0
    sll	$t1,$s0,0x2
    # Line 751
    ld	$s0,40($sp)
    # Line 744
    addu	$t1,$s1,$t1
    # Line 751
    ld	$s1,32($sp)
    # Line 745
    lui	$t2,0x8080
    ori	$t2,$t2,0xd005
    sw	$t2,0($t1)
    # Line 746
    swc1	$f22,4($t1)
    # Line 747
    swc1	$f26,8($t1)
    # Line 748
    swc1	$f24,12($t1)
    # Line 749
    swc1	$f20,16($t1)
    # Line 750
    addiu	$t1,$t1,20
    sw	$t1,4144($zero)
    # Line 744
    addiu	$t0,$t0,-5
    # Line 750
    sw	$t0,4136($zero)
    # Line 751
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    # Line 750
    lw	$a7,4148($zero)
    # Line 751
    ldc1	$f26,16($sp)
    addiu	$sp,$sp,64
    # Line 750
    addiu	$a7,$a7,5
    # Line 751
    jr	$ra
    # Line 750
    sw	$a7,4148($zero)
.L0d9e1164:
    b	.L0d9e10fc
    # Line 744
    move	$s0,$zero
.L0d9e116c:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t2,$s0,5
    slt	$t2,$a2,$t2
    beqz	$t2,.L0d9e10fc
    nop
    b	.L0d9e10d4
    sd	$ra,56($sp)
.L0d9e118c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 751
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    # Line 744
    lw	$t8,4136($zero)
    # Line 751
    ldc1	$f26,16($sp)
    # Line 744
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 751
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Vertex4fBbox

# Function: __glOdylc_Vertex4fvBbox
# Declared: Line 754 (Source lines: 754-769)
# Address: 0x0d9e11d0 - 0x0d9e1418 (Size: 584 bytes, Frame: 48)
.globl __glOdylc_Vertex4fvBbox
.ent __glOdylc_Vertex4fvBbox
__glOdylc_Vertex4fvBbox:
    # Line 754
    addiu	$sp,$sp,-48
    # Line 755
    lw	$a1,4112($zero)
    sd	$s2,8($sp)
    # Line 757
    lw	$v1,5076($a1)
    # Line 754
    sd	$s1,24($sp)
    # Line 757
    lui	$a3,0x10
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 754
    move	$s1,$a0
    sd	$s0,0($sp)
    lui	$v0,0x11
    # Line 762
    move	$s0,$zero
    sd	$gp,16($sp)
    # Line 754
    addiu	$v0,$v0,29632
    addu	$gp,$t9,$v0
    # Line 757
    beqz	$at,.L0d9e1310
    # Line 760
    lw	$a3,27104($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    mtc1	$zero,$f0
    lwc1	$f10,12($a0)
    lwc1	$f8,8($a0)
    lwc1	$f9,0($a0)
    lwc1	$f11,4($a0)
    c.lt.s	$f10,$f0
    mov.s	$f7,$f8
    mov.s	$f6,$f9
    lwc1	$f1,27020($a2)
    bc1f	.L0d9e1268
    mov.s	$f5,$f11
    neg.s	$f4,$f10
    neg.s	$f7,$f8
    neg.s	$f5,$f11
    b	.L0d9e126c
    neg.s	$f6,$f9
.L0d9e1268:
    mov.s	$f4,$f10
.L0d9e126c:
    mul.s	$f1,$f1,$f4
    c.lt.s $f6,$f1
    bc1f .L0d9e1284
    nop
    div.s	$f2,$f6,$f4
    swc1	$f2,27020($a2)
.L0d9e1284:
    lwc1	$f3,27024($a2)
    mul.s	$f3,$f3,$f4
    c.lt.s $f3,$f6
    bc1f .L0d9e12a0
    nop
    div.s	$f8,$f6,$f4
    swc1	$f8,27024($a2)
.L0d9e12a0:
    lwc1	$f9,27028($a2)
    mul.s	$f9,$f9,$f4
    c.lt.s $f5,$f9
    bc1f .L0d9e12bc
    nop
    div.s	$f10,$f5,$f4
    swc1	$f10,27028($a2)
.L0d9e12bc:
    lwc1	$f11,27032($a2)
    mul.s	$f11,$f11,$f4
    c.lt.s $f11,$f5
    bc1f .L0d9e12d8
    nop
    div.s	$f12,$f5,$f4
    swc1	$f12,27032($a2)
.L0d9e12d8:
    lwc1	$f13,27036($a2)
    mul.s	$f13,$f13,$f4
    c.lt.s $f7,$f13
    bc1f .L0d9e12f4
    nop
    div.s	$f14,$f7,$f4
    swc1	$f14,27036($a2)
.L0d9e12f4:
    lwc1	$f15,27040($a2)
    mul.s	$f15,$f15,$f4
    c.lt.s $f15,$f7
    bc1f .L0d9e1310
    nop
    div.s	$f16,$f7,$f4
    swc1	$f16,27040($a2)
.L0d9e1310:
    # Line 762
    lw	$a4,4148($zero)
    lw	$a3,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9e13cc
    slti	$a5,$a3,5
    beqz	$a5,.L0d9e13c4
    nop
    sd	$ra,32($sp)
.L0d9e1330:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e13ec
    move	$a3,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s0,$a7,$a6
.L0d9e1358:
    sll	$t2,$s0,0x2
.L0d9e135c:
    # Line 763
    lui	$t3,0x8080
    # Line 762
    addu	$t2,$s2,$t2
    # Line 763
    ori	$t3,$t3,0xd005
    sw	$t3,0($t2)
    # Line 764
    lwc1	$f21,0($s1)
    # Line 769
    ld	$gp,16($sp)
    # Line 764
    swc1	$f21,4($t2)
    # Line 765
    lwc1	$f19,4($s1)
    # Line 762
    subu	$t1,$a3,$s0
    # Line 769
    ld	$s0,0($sp)
    # Line 765
    swc1	$f19,8($t2)
    # Line 766
    lwc1	$f18,8($s1)
    # Line 769
    ld	$s2,8($sp)
    # Line 766
    swc1	$f18,12($t2)
    # Line 767
    lwc1	$f17,12($s1)
    # Line 769
    ld	$s1,24($sp)
    # Line 767
    swc1	$f17,16($t2)
    # Line 768
    addiu	$t2,$t2,20
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 762
    addiu	$t1,$t1,-5
    # Line 768
    sw	$t1,4136($zero)
    # Line 769
    addiu	$sp,$sp,48
    # Line 768
    addiu	$t0,$t0,5
    # Line 769
    jr	$ra
    # Line 768
    sw	$t0,4148($zero)
.L0d9e13c4:
    b	.L0d9e1358
    # Line 762
    move	$s0,$zero
.L0d9e13cc:
    andi	$s0,$s2,0x4
    sltu	$s0,$zero,$s0
    addiu	$t3,$s0,5
    slt	$t3,$a3,$t3
    beqz	$t3,.L0d9e135c
    sll	$t2,$s0,0x2
    b	.L0d9e1330
    sd	$ra,32($sp)
.L0d9e13ec:
    # Line 769
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    # Line 762
    addiu	$s2,$s2,-4
    sw	$s2,4144($zero)
    lw	$s1,4136($zero)
    # Line 769
    ld	$s2,8($sp)
    # Line 762
    addiu	$s1,$s1,1
    sw	$s1,4136($zero)
    # Line 769
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Vertex4fvBbox

# Function: __glOdylc_Vertex4iBbox
# Declared: Line 772 (Source lines: 772-787)
# Address: 0x0d9e1420 - 0x0d9e16a0 (Size: 640 bytes, Frame: 192)
.globl __glOdylc_Vertex4iBbox
.ent __glOdylc_Vertex4iBbox
__glOdylc_Vertex4iBbox:
    # Line 772
    addiu	$sp,$sp,-64
    sd	$s5,8($sp)
    sd	$s3,48($sp)
    # Line 773
    lw	$a4,4112($zero)
    # Line 772
    sd	$s0,24($sp)
    move	$s0,$a3
    # Line 775
    lw	$v1,5076($a4)
    # Line 772
    sd	$s4,32($sp)
    # Line 775
    lui	$a6,0x10
    lui	$a5,0x1
    addu	$a5,$a4,$a5
    or	$v1,$v1,$a6
    sw	$v1,5076($a4)
    # Line 772
    move	$s4,$a2
    move	$s3,$a1
    # Line 775
    lbu	$at,27100($a5)
    # Line 772
    sd	$s2,40($sp)
    move	$s2,$a0
    lui	$v0,0x11
    sd	$s1,0($sp)
    # Line 780
    move	$s1,$zero
    # Line 772
    addiu	$v0,$v0,29040
    sd	$gp,16($sp)
    # Line 775
    beqz	$at,.L0d9e155c
    # Line 772
    addu	$gp,$t9,$v0
    # Line 778
    lw	$a6,27104($a5)
    addiu	$a6,$a6,1
    bltz	$a3,.L0d9e1634
    sw	$a6,27104($a5)
    mtc1	$a0,$f6
    mtc1	$a1,$f5
    mtc1	$a2,$f7
    cvt.s.w	$f6,$f6
    mtc1	$a3,$f4
    cvt.s.w	$f5,$f5
    cvt.s.w	$f7,$f7
    cvt.s.w	$f4,$f4
.L0d9e14b4:
    lwc1	$f8,27020($a5)
    mul.s	$f8,$f8,$f4
    c.lt.s	$f6,$f8
    bc1f	.L0d9e14d0
    nop
    div.s	$f9,$f6,$f4
    swc1	$f9,27020($a5)
.L0d9e14d0:
    lwc1	$f10,27024($a5)
    mul.s	$f10,$f10,$f4
    c.lt.s $f10,$f6
    bc1f .L0d9e14ec
    nop
    div.s	$f11,$f6,$f4
    swc1	$f11,27024($a5)
.L0d9e14ec:
    lwc1	$f12,27028($a5)
    mul.s	$f12,$f12,$f4
    c.lt.s $f5,$f12
    bc1f .L0d9e1508
    nop
    div.s	$f13,$f5,$f4
    swc1	$f13,27028($a5)
.L0d9e1508:
    lwc1	$f14,27032($a5)
    mul.s	$f14,$f14,$f4
    c.lt.s $f14,$f5
    bc1f .L0d9e1524
    nop
    div.s	$f15,$f5,$f4
    swc1	$f15,27032($a5)
.L0d9e1524:
    lwc1	$f16,27036($a5)
    mul.s	$f16,$f16,$f4
    c.lt.s $f7,$f16
    bc1f .L0d9e1540
    nop
    div.s	$f17,$f7,$f4
    swc1	$f17,27036($a5)
.L0d9e1540:
    lwc1	$f18,27040($a5)
    mul.s	$f18,$f18,$f4
    c.lt.s $f18,$f7
    bc1f .L0d9e155c
    nop
    div.s	$f19,$f7,$f4
    swc1	$f19,27040($a5)
.L0d9e155c:
    # Line 780
    lw	$a7,4148($zero)
    lw	$a3,4136($zero)
    lw	$s5,4144($zero)
    beqz	$a7,.L0d9e1614
    slti	$t0,$a3,5
    beqz	$t0,.L0d9e160c
    nop
    sd	$ra,56($sp)
.L0d9e157c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    beqz	$v0,.L0d9e1668
    move	$a3,$v0
    li	$t2,1
    lw	$s5,4144($zero)
    andi	$t1,$s5,0x4
    movn	$s1,$t2,$t1
.L0d9e15a4:
    sll	$t9,$s1,0x2
.L0d9e15a8:
    # Line 787
    ld	$gp,16($sp)
    # Line 780
    addu	$s5,$s5,$t9
    # Line 785
    sw	$s0,16($s5)
    # Line 780
    subu	$s0,$a3,$s1
    # Line 787
    ld	$s1,0($sp)
    # Line 784
    sw	$s4,12($s5)
    # Line 781
    lui	$t8,0x8080
    # Line 783
    sw	$s3,8($s5)
    # Line 781
    ori	$t8,$t8,0xd004
    sw	$t8,0($s5)
    # Line 782
    sw	$s2,4($s5)
    # Line 786
    addiu	$s2,$s5,20
    sw	$s2,4144($zero)
    # Line 787
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    # Line 780
    addiu	$s0,$s0,-5
    # Line 786
    sw	$s0,4136($zero)
    lw	$t3,4148($zero)
    # Line 787
    ld	$s0,24($sp)
    addiu	$sp,$sp,64
    # Line 786
    addiu	$t3,$t3,5
    # Line 787
    jr	$ra
    # Line 786
    sw	$t3,4148($zero)
.L0d9e160c:
    b	.L0d9e15a4
    # Line 780
    move	$s1,$zero
.L0d9e1614:
    andi	$s1,$s5,0x4
    sltu	$s1,$zero,$s1
    addiu	$at,$s1,5
    slt	$at,$a3,$at
    beqz	$at,.L0d9e15a8
    sll	$t9,$s1,0x2
    b	.L0d9e157c
    sd	$ra,56($sp)
.L0d9e1634:
    # Line 778
    negu	$v0,$a3
    negu	$at,$a2
    mtc1	$v0,$f4
    negu	$t9,$a1
    mtc1	$at,$f7
    negu	$t8,$a0
    mtc1	$t9,$f5
    mtc1	$t8,$f6
    cvt.s.w	$f4,$f4
    cvt.s.w	$f7,$f7
    cvt.s.w	$f5,$f5
    b	.L0d9e14b4
    cvt.s.w	$f6,$f6
.L0d9e1668:
    # Line 780
    addiu	$a0,$s5,-4
    sw	$a0,4144($zero)
    # Line 787
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,0($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    # Line 780
    lw	$v1,4136($zero)
    # Line 787
    ld	$s5,8($sp)
    addiu	$sp,$sp,64
    # Line 780
    addiu	$v1,$v1,1
    # Line 787
    jr	$ra
    # Line 780
    sw	$v1,4136($zero)
.end __glOdylc_Vertex4iBbox

# Function: __glOdylc_Vertex4ivBbox
# Declared: Line 790 (Source lines: 790-805)
# Address: 0x0d9e16a0 - 0x0d9e1910 (Size: 624 bytes, Frame: 48)
.globl __glOdylc_Vertex4ivBbox
.ent __glOdylc_Vertex4ivBbox
__glOdylc_Vertex4ivBbox:
    # Line 790
    addiu	$sp,$sp,-48
    # Line 791
    lw	$a1,4112($zero)
    sd	$s2,8($sp)
    # Line 793
    lw	$v1,5076($a1)
    # Line 790
    sd	$s1,24($sp)
    # Line 793
    lui	$a3,0x10
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 790
    move	$s1,$a0
    sd	$s0,0($sp)
    lui	$v0,0x11
    # Line 798
    move	$s0,$zero
    sd	$gp,16($sp)
    # Line 790
    addiu	$v0,$v0,28400
    addu	$gp,$t9,$v0
    # Line 793
    beqz	$at,.L0d9e17d4
    # Line 796
    lw	$a3,27104($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    lw	$a5,4($a0)
    lw	$a3,12($a0)
    lw	$a4,8($a0)
    lw	$a0,0($a0)
    lwc1	$f8,27020($a2)
    bltz	$a3,.L0d9e18b0
    mtc1	$a3,$f4
    mtc1	$a0,$f6
    mtc1	$a5,$f5
    cvt.s.w	$f4,$f4
    mtc1	$a4,$f7
    cvt.s.w	$f6,$f6
    cvt.s.w	$f5,$f5
    cvt.s.w	$f7,$f7
.L0d9e1730:
    mul.s	$f8,$f8,$f4
    c.lt.s	$f6,$f8
    bc1f	.L0d9e1748
    nop
    div.s	$f9,$f6,$f4
    swc1	$f9,27020($a2)
.L0d9e1748:
    lwc1	$f10,27024($a2)
    mul.s	$f10,$f10,$f4
    c.lt.s $f10,$f6
    bc1f .L0d9e1764
    nop
    div.s	$f11,$f6,$f4
    swc1	$f11,27024($a2)
.L0d9e1764:
    lwc1	$f12,27028($a2)
    mul.s	$f12,$f12,$f4
    c.lt.s $f5,$f12
    bc1f .L0d9e1780
    nop
    div.s	$f13,$f5,$f4
    swc1	$f13,27028($a2)
.L0d9e1780:
    lwc1	$f14,27032($a2)
    mul.s	$f14,$f14,$f4
    c.lt.s $f14,$f5
    bc1f .L0d9e179c
    nop
    div.s	$f15,$f5,$f4
    swc1	$f15,27032($a2)
.L0d9e179c:
    lwc1	$f16,27036($a2)
    mul.s	$f16,$f16,$f4
    c.lt.s $f7,$f16
    bc1f .L0d9e17b8
    nop
    div.s	$f17,$f7,$f4
    swc1	$f17,27036($a2)
.L0d9e17b8:
    lwc1	$f18,27040($a2)
    mul.s	$f18,$f18,$f4
    c.lt.s $f18,$f7
    bc1f .L0d9e17d4
    nop
    div.s	$f19,$f7,$f4
    swc1	$f19,27040($a2)
.L0d9e17d4:
    # Line 798
    lw	$a4,4148($zero)
    lw	$a3,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9e1890
    slti	$a5,$a3,5
    beqz	$a5,.L0d9e1888
    nop
    sd	$ra,32($sp)
.L0d9e17f4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e18e4
    move	$a3,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s0,$a7,$a6
.L0d9e181c:
    # Line 805
    ld	$gp,16($sp)
    # Line 798
    subu	$t1,$a3,$s0
    sll	$t2,$s0,0x2
    # Line 805
    ld	$s0,0($sp)
    # Line 799
    lui	$at,0x8080
    # Line 798
    addu	$t2,$s2,$t2
    # Line 799
    ori	$at,$at,0xd004
    sw	$at,0($t2)
    # Line 800
    lw	$t9,0($s1)
    sw	$t9,4($t2)
    # Line 801
    lw	$t8,4($s1)
    sw	$t8,8($t2)
    # Line 802
    lw	$s2,8($s1)
    sw	$s2,12($t2)
    # Line 803
    lw	$t3,12($s1)
    # Line 805
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    # Line 803
    sw	$t3,16($t2)
    # Line 804
    addiu	$t2,$t2,20
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 798
    addiu	$t1,$t1,-5
    # Line 804
    sw	$t1,4136($zero)
    # Line 805
    addiu	$sp,$sp,48
    # Line 804
    addiu	$t0,$t0,5
    # Line 805
    jr	$ra
    # Line 804
    sw	$t0,4148($zero)
.L0d9e1888:
    b	.L0d9e181c
    # Line 798
    move	$s0,$zero
.L0d9e1890:
    andi	$s0,$s2,0x4
    sltu	$s0,$zero,$s0
    addiu	$t3,$s0,5
    slt	$t3,$a3,$t3
    beqz	$t3,.L0d9e181c
    nop
    b	.L0d9e17f4
    sd	$ra,32($sp)
.L0d9e18b0:
    # Line 796
    negu	$v0,$a3
    negu	$at,$a4
    mtc1	$v0,$f4
    negu	$t9,$a5
    mtc1	$at,$f7
    negu	$t8,$a0
    mtc1	$t9,$f5
    mtc1	$t8,$f6
    cvt.s.w	$f4,$f4
    cvt.s.w	$f7,$f7
    cvt.s.w	$f5,$f5
    b	.L0d9e1730
    cvt.s.w	$f6,$f6
.L0d9e18e4:
    # Line 798
    addiu	$a0,$s2,-4
    sw	$a0,4144($zero)
    # Line 805
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    # Line 798
    lw	$v1,4136($zero)
    # Line 805
    ld	$s2,8($sp)
    addiu	$sp,$sp,48
    # Line 798
    addiu	$v1,$v1,1
    # Line 805
    jr	$ra
    # Line 798
    sw	$v1,4136($zero)
.end __glOdylc_Vertex4ivBbox

# Function: __glOdylc_Vertex4sBbox
# Declared: Line 808 (Source lines: 808-823)
# Address: 0x0d9e1910 - 0x0d9e1b90 (Size: 640 bytes, Frame: 192)
.globl __glOdylc_Vertex4sBbox
.ent __glOdylc_Vertex4sBbox
__glOdylc_Vertex4sBbox:
    # Line 808
    addiu	$sp,$sp,-64
    sd	$s5,8($sp)
    sd	$s3,48($sp)
    # Line 809
    lw	$a4,4112($zero)
    # Line 808
    sd	$s0,24($sp)
    move	$s0,$a3
    # Line 811
    lw	$v1,5076($a4)
    # Line 808
    sd	$s4,32($sp)
    # Line 811
    lui	$a6,0x10
    lui	$a5,0x1
    addu	$a5,$a4,$a5
    or	$v1,$v1,$a6
    sw	$v1,5076($a4)
    # Line 808
    move	$s4,$a2
    move	$s3,$a1
    # Line 811
    lbu	$at,27100($a5)
    # Line 808
    sd	$s2,40($sp)
    move	$s2,$a0
    lui	$v0,0x11
    sd	$s1,0($sp)
    # Line 816
    move	$s1,$zero
    # Line 808
    addiu	$v0,$v0,27776
    sd	$gp,16($sp)
    # Line 811
    beqz	$at,.L0d9e1a4c
    # Line 808
    addu	$gp,$t9,$v0
    # Line 814
    lw	$a6,27104($a5)
    addiu	$a6,$a6,1
    bltz	$a3,.L0d9e1b24
    sw	$a6,27104($a5)
    mtc1	$a0,$f6
    mtc1	$a1,$f5
    mtc1	$a2,$f7
    cvt.s.w	$f6,$f6
    mtc1	$a3,$f4
    cvt.s.w	$f5,$f5
    cvt.s.w	$f7,$f7
    cvt.s.w	$f4,$f4
.L0d9e19a4:
    lwc1	$f8,27020($a5)
    mul.s	$f8,$f8,$f4
    c.lt.s	$f6,$f8
    bc1f	.L0d9e19c0
    nop
    div.s	$f9,$f6,$f4
    swc1	$f9,27020($a5)
.L0d9e19c0:
    lwc1	$f10,27024($a5)
    mul.s	$f10,$f10,$f4
    c.lt.s $f10,$f6
    bc1f .L0d9e19dc
    nop
    div.s	$f11,$f6,$f4
    swc1	$f11,27024($a5)
.L0d9e19dc:
    lwc1	$f12,27028($a5)
    mul.s	$f12,$f12,$f4
    c.lt.s $f5,$f12
    bc1f .L0d9e19f8
    nop
    div.s	$f13,$f5,$f4
    swc1	$f13,27028($a5)
.L0d9e19f8:
    lwc1	$f14,27032($a5)
    mul.s	$f14,$f14,$f4
    c.lt.s $f14,$f5
    bc1f .L0d9e1a14
    nop
    div.s	$f15,$f5,$f4
    swc1	$f15,27032($a5)
.L0d9e1a14:
    lwc1	$f16,27036($a5)
    mul.s	$f16,$f16,$f4
    c.lt.s $f7,$f16
    bc1f .L0d9e1a30
    nop
    div.s	$f17,$f7,$f4
    swc1	$f17,27036($a5)
.L0d9e1a30:
    lwc1	$f18,27040($a5)
    mul.s	$f18,$f18,$f4
    c.lt.s $f18,$f7
    bc1f .L0d9e1a4c
    nop
    div.s	$f19,$f7,$f4
    swc1	$f19,27040($a5)
.L0d9e1a4c:
    # Line 816
    lw	$a7,4148($zero)
    lw	$a3,4136($zero)
    lw	$s5,4144($zero)
    beqz	$a7,.L0d9e1b04
    slti	$t0,$a3,5
    beqz	$t0,.L0d9e1afc
    nop
    sd	$ra,56($sp)
.L0d9e1a6c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    beqz	$v0,.L0d9e1b58
    move	$a3,$v0
    li	$t2,1
    lw	$s5,4144($zero)
    andi	$t1,$s5,0x4
    movn	$s1,$t2,$t1
.L0d9e1a94:
    sll	$t9,$s1,0x2
.L0d9e1a98:
    # Line 823
    ld	$gp,16($sp)
    # Line 816
    addu	$s5,$s5,$t9
    # Line 821
    sw	$s0,16($s5)
    # Line 816
    subu	$s0,$a3,$s1
    # Line 823
    ld	$s1,0($sp)
    # Line 820
    sw	$s4,12($s5)
    # Line 817
    lui	$t8,0x8080
    # Line 819
    sw	$s3,8($s5)
    # Line 817
    ori	$t8,$t8,0xd004
    sw	$t8,0($s5)
    # Line 818
    sw	$s2,4($s5)
    # Line 822
    addiu	$s2,$s5,20
    sw	$s2,4144($zero)
    # Line 823
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    # Line 816
    addiu	$s0,$s0,-5
    # Line 822
    sw	$s0,4136($zero)
    lw	$t3,4148($zero)
    # Line 823
    ld	$s0,24($sp)
    addiu	$sp,$sp,64
    # Line 822
    addiu	$t3,$t3,5
    # Line 823
    jr	$ra
    # Line 822
    sw	$t3,4148($zero)
.L0d9e1afc:
    b	.L0d9e1a94
    # Line 816
    move	$s1,$zero
.L0d9e1b04:
    andi	$s1,$s5,0x4
    sltu	$s1,$zero,$s1
    addiu	$at,$s1,5
    slt	$at,$a3,$at
    beqz	$at,.L0d9e1a98
    sll	$t9,$s1,0x2
    b	.L0d9e1a6c
    sd	$ra,56($sp)
.L0d9e1b24:
    # Line 814
    negu	$v0,$a3
    negu	$at,$a2
    mtc1	$v0,$f4
    negu	$t9,$a1
    mtc1	$at,$f7
    negu	$t8,$a0
    mtc1	$t9,$f5
    mtc1	$t8,$f6
    cvt.s.w	$f4,$f4
    cvt.s.w	$f7,$f7
    cvt.s.w	$f5,$f5
    b	.L0d9e19a4
    cvt.s.w	$f6,$f6
.L0d9e1b58:
    # Line 816
    addiu	$a0,$s5,-4
    sw	$a0,4144($zero)
    # Line 823
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,0($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    # Line 816
    lw	$v1,4136($zero)
    # Line 823
    ld	$s5,8($sp)
    addiu	$sp,$sp,64
    # Line 816
    addiu	$v1,$v1,1
    # Line 823
    jr	$ra
    # Line 816
    sw	$v1,4136($zero)
.end __glOdylc_Vertex4sBbox

# Function: __glOdylc_Vertex4svBbox
# Declared: Line 826 (Source lines: 826-841)
# Address: 0x0d9e1b90 - 0x0d9e1e00 (Size: 624 bytes, Frame: 48)
.globl __glOdylc_Vertex4svBbox
.ent __glOdylc_Vertex4svBbox
__glOdylc_Vertex4svBbox:
    # Line 826
    addiu	$sp,$sp,-48
    # Line 827
    lw	$a1,4112($zero)
    sd	$s2,8($sp)
    # Line 829
    lw	$v1,5076($a1)
    # Line 826
    sd	$s1,24($sp)
    # Line 829
    lui	$a3,0x10
    lui	$a2,0x1
    addu	$a2,$a1,$a2
    or	$v1,$v1,$a3
    sw	$v1,5076($a1)
    lbu	$at,27100($a2)
    # Line 826
    move	$s1,$a0
    sd	$s0,0($sp)
    lui	$v0,0x11
    # Line 834
    move	$s0,$zero
    sd	$gp,16($sp)
    # Line 826
    addiu	$v0,$v0,27136
    addu	$gp,$t9,$v0
    # Line 829
    beqz	$at,.L0d9e1cc4
    # Line 832
    lw	$a3,27104($a2)
    addiu	$a3,$a3,1
    sw	$a3,27104($a2)
    lh	$a5,2($a0)
    lh	$a3,6($a0)
    lh	$a4,4($a0)
    lh	$a0,0($a0)
    lwc1	$f8,27020($a2)
    bltz	$a3,.L0d9e1da0
    mtc1	$a3,$f4
    mtc1	$a0,$f6
    mtc1	$a5,$f5
    cvt.s.w	$f4,$f4
    mtc1	$a4,$f7
    cvt.s.w	$f6,$f6
    cvt.s.w	$f5,$f5
    cvt.s.w	$f7,$f7
.L0d9e1c20:
    mul.s	$f8,$f8,$f4
    c.lt.s	$f6,$f8
    bc1f	.L0d9e1c38
    nop
    div.s	$f9,$f6,$f4
    swc1	$f9,27020($a2)
.L0d9e1c38:
    lwc1	$f10,27024($a2)
    mul.s	$f10,$f10,$f4
    c.lt.s $f10,$f6
    bc1f .L0d9e1c54
    nop
    div.s	$f11,$f6,$f4
    swc1	$f11,27024($a2)
.L0d9e1c54:
    lwc1	$f12,27028($a2)
    mul.s	$f12,$f12,$f4
    c.lt.s $f5,$f12
    bc1f .L0d9e1c70
    nop
    div.s	$f13,$f5,$f4
    swc1	$f13,27028($a2)
.L0d9e1c70:
    lwc1	$f14,27032($a2)
    mul.s	$f14,$f14,$f4
    c.lt.s $f14,$f5
    bc1f .L0d9e1c8c
    nop
    div.s	$f15,$f5,$f4
    swc1	$f15,27032($a2)
.L0d9e1c8c:
    lwc1	$f16,27036($a2)
    mul.s	$f16,$f16,$f4
    c.lt.s $f7,$f16
    bc1f .L0d9e1ca8
    nop
    div.s	$f17,$f7,$f4
    swc1	$f17,27036($a2)
.L0d9e1ca8:
    lwc1	$f18,27040($a2)
    mul.s	$f18,$f18,$f4
    c.lt.s $f18,$f7
    bc1f .L0d9e1cc4
    nop
    div.s	$f19,$f7,$f4
    swc1	$f19,27040($a2)
.L0d9e1cc4:
    # Line 834
    lw	$a4,4148($zero)
    lw	$a3,4136($zero)
    lw	$s2,4144($zero)
    beqz	$a4,.L0d9e1d80
    slti	$a5,$a3,5
    beqz	$a5,.L0d9e1d78
    nop
    sd	$ra,32($sp)
.L0d9e1ce4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    beqz	$v0,.L0d9e1dd4
    move	$a3,$v0
    li	$a7,1
    lw	$s2,4144($zero)
    andi	$a6,$s2,0x4
    movn	$s0,$a7,$a6
.L0d9e1d0c:
    # Line 841
    ld	$gp,16($sp)
    # Line 834
    subu	$t1,$a3,$s0
    sll	$t2,$s0,0x2
    # Line 841
    ld	$s0,0($sp)
    # Line 835
    lui	$at,0x8080
    # Line 834
    addu	$t2,$s2,$t2
    # Line 835
    ori	$at,$at,0xd004
    sw	$at,0($t2)
    # Line 836
    lh	$t9,0($s1)
    sw	$t9,4($t2)
    # Line 837
    lh	$t8,2($s1)
    sw	$t8,8($t2)
    # Line 838
    lh	$s2,4($s1)
    sw	$s2,12($t2)
    # Line 839
    lh	$t3,6($s1)
    # Line 841
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    # Line 839
    sw	$t3,16($t2)
    # Line 840
    addiu	$t2,$t2,20
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    # Line 834
    addiu	$t1,$t1,-5
    # Line 840
    sw	$t1,4136($zero)
    # Line 841
    addiu	$sp,$sp,48
    # Line 840
    addiu	$t0,$t0,5
    # Line 841
    jr	$ra
    # Line 840
    sw	$t0,4148($zero)
.L0d9e1d78:
    b	.L0d9e1d0c
    # Line 834
    move	$s0,$zero
.L0d9e1d80:
    andi	$s0,$s2,0x4
    sltu	$s0,$zero,$s0
    addiu	$t3,$s0,5
    slt	$t3,$a3,$t3
    beqz	$t3,.L0d9e1d0c
    nop
    b	.L0d9e1ce4
    sd	$ra,32($sp)
.L0d9e1da0:
    # Line 832
    negu	$v0,$a3
    negu	$at,$a4
    mtc1	$v0,$f4
    negu	$t9,$a5
    mtc1	$at,$f7
    negu	$t8,$a0
    mtc1	$t9,$f5
    mtc1	$t8,$f6
    cvt.s.w	$f4,$f4
    cvt.s.w	$f7,$f7
    cvt.s.w	$f5,$f5
    b	.L0d9e1c20
    cvt.s.w	$f6,$f6
.L0d9e1dd4:
    # Line 834
    addiu	$a0,$s2,-4
    sw	$a0,4144($zero)
    # Line 841
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    # Line 834
    lw	$v1,4136($zero)
    # Line 841
    ld	$s2,8($sp)
    addiu	$sp,$sp,48
    # Line 834
    addiu	$v1,$v1,1
    # Line 841
    jr	$ra
    # Line 834
    sw	$v1,4136($zero)
.end __glOdylc_Vertex4svBbox

