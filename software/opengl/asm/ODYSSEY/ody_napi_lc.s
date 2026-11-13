# Source: ../ODYSSEY/ody_napi_lc.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_napi_lc.c
# Total Functions: 10

.text

# Function: __glOdylc_Normal3b
# Declared: Line 23 (Source lines: 23-30)
# Address: 0x0d9c4d90 - 0x0d9c4ec4 (Size: 308 bytes, Frame: 192)
.globl __glOdylc_Normal3b
.ent __glOdylc_Normal3b
__glOdylc_Normal3b:
    # Line 24
    lw	$a5,4136($zero)
    # Line 23
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 24
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 23
    lui	$v0,0x13
    # Line 24
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 23
    addiu	$v0,$v0,14336
    sd	$gp,16($sp)
    # Line 24
    beqz	$at,.L0d9c4e70
    # Line 23
    addu	$gp,$t9,$v0
    # Line 24
    slti	$v1,$a5,4
    beqz	$v1,.L0d9c4e68
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9c4de0:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$a4,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c4e9c
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a3,$s1,0x4
    movn	$s0,$a4,$a3
.L0d9c4e14:
    # Line 30
    ld	$gp,16($sp)
.L0d9c4e18:
    # Line 24
    subu	$a6,$a5,$s0
    sll	$a7,$s0,0x2
    # Line 30
    ld	$s0,0($sp)
    # Line 24
    addu	$a7,$s1,$a7
    # Line 30
    ld	$s1,8($sp)
    # Line 25
    lui	$t0,0xc180
    ori	$t0,$t0,0xcc16
    sw	$t0,0($a7)
    # Line 26
    sw	$a0,4($a7)
    # Line 27
    sw	$a1,8($a7)
    # Line 28
    sw	$a2,12($a7)
    # Line 29
    addiu	$a7,$a7,16
    sw	$a7,4144($zero)
    lw	$a5,4148($zero)
    # Line 24
    addiu	$a6,$a6,-4
    # Line 29
    sw	$a6,4136($zero)
    # Line 30
    addiu	$sp,$sp,64
    # Line 29
    addiu	$a5,$a5,4
    # Line 30
    jr	$ra
    # Line 29
    sw	$a5,4148($zero)
.L0d9c4e68:
    b	.L0d9c4e18
    # Line 30
    ld	$gp,16($sp)
.L0d9c4e70:
    # Line 24
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t0,$s0,4
    slt	$t0,$a5,$t0
    beqz	$t0,.L0d9c4e14
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9c4de0
    sd	$ra,48($sp)
.L0d9c4e9c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 30
    ld	$gp,16($sp)
    # Line 24
    lw	$t8,4136($zero)
    # Line 30
    ld	$s0,0($sp)
    # Line 24
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 30
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Normal3b

# Function: __glOdylc_Normal3bv
# Declared: Line 33 (Source lines: 33-40)
# Address: 0x0d9c4ed0 - 0x0d9c4ff8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Normal3bv
.ent __glOdylc_Normal3bv
__glOdylc_Normal3bv:
    # Line 34
    lw	$a3,4136($zero)
    # Line 33
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 34
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 33
    lui	$v0,0x13
    # Line 34
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 33
    addiu	$v0,$v0,14016
    sd	$gp,8($sp)
    # Line 34
    beqz	$at,.L0d9c4fac
    # Line 33
    addu	$gp,$t9,$v0
    # Line 34
    slti	$v1,$a3,4
    beqz	$v1,.L0d9c4fa4
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9c4f18:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c4fd0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9c4f44:
    # Line 40
    ld	$gp,8($sp)
.L0d9c4f48:
    # Line 34
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 40
    ld	$s0,0($sp)
    # Line 34
    addu	$a5,$s1,$a5
    # Line 40
    ld	$s1,16($sp)
    # Line 35
    lui	$t1,0xc180
    ori	$t1,$t1,0xcc16
    sw	$t1,0($a5)
    # Line 36
    lb	$t0,0($a0)
    sw	$t0,4($a5)
    # Line 37
    lb	$a7,1($a0)
    sw	$a7,8($a5)
    # Line 38
    lb	$a6,2($a0)
    sw	$a6,12($a5)
    # Line 39
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 34
    addiu	$a4,$a4,-4
    # Line 39
    sw	$a4,4136($zero)
    # Line 40
    addiu	$sp,$sp,48
    # Line 39
    addiu	$a3,$a3,4
    # Line 40
    jr	$ra
    # Line 39
    sw	$a3,4148($zero)
.L0d9c4fa4:
    b	.L0d9c4f48
    # Line 40
    ld	$gp,8($sp)
.L0d9c4fac:
    # Line 34
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9c4f44
    nop
    sd	$a0,24($sp)
    b	.L0d9c4f18
    sd	$ra,32($sp)
.L0d9c4fd0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 40
    ld	$gp,8($sp)
    # Line 34
    lw	$t8,4136($zero)
    # Line 40
    ld	$s0,0($sp)
    # Line 34
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 40
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Normal3bv

# Function: __glOdylc_Normal3d
# Declared: Line 43 (Source lines: 43-50)
# Address: 0x0d9c5000 - 0x0d9c514c (Size: 332 bytes, Frame: 192)
.globl __glOdylc_Normal3d
.ent __glOdylc_Normal3d
__glOdylc_Normal3d:
    # Line 44
    lw	$a2,4136($zero)
    # Line 43
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 44
    lw	$at,4148($zero)
    # Line 43
    mov.d	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x13
    mov.d	$f5,$f13
    # Line 44
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 43
    addiu	$v0,$v0,13712
    mov.d	$f6,$f12
    sd	$gp,8($sp)
    # Line 44
    beqz	$at,.L0d9c50f8
    # Line 43
    addu	$gp,$t9,$v0
    # Line 44
    slti	$v1,$a2,4
    beqz	$v1,.L0d9c50f0
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9c505c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a1,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d9c5124
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9c5090:
    # Line 50
    ld	$gp,8($sp)
.L0d9c5094:
    # Line 44
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 50
    ld	$s0,0($sp)
    # Line 44
    addu	$a4,$s1,$a4
    # Line 50
    ld	$s1,16($sp)
    # Line 45
    lui	$a5,0xc180
    # Line 46
    cvt.s.d	$f2,$f6
    # Line 45
    ori	$a5,$a5,0xcc19
    sw	$a5,0($a4)
    # Line 47
    cvt.s.d	$f1,$f5
    # Line 46
    swc1	$f2,4($a4)
    # Line 48
    cvt.s.d	$f0,$f4
    # Line 47
    swc1	$f1,8($a4)
    # Line 48
    swc1	$f0,12($a4)
    # Line 49
    addiu	$a4,$a4,16
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 44
    addiu	$a3,$a3,-4
    # Line 49
    sw	$a3,4136($zero)
    # Line 50
    addiu	$sp,$sp,64
    # Line 49
    addiu	$a2,$a2,4
    # Line 50
    jr	$ra
    # Line 49
    sw	$a2,4148($zero)
.L0d9c50f0:
    b	.L0d9c5094
    # Line 50
    ld	$gp,8($sp)
.L0d9c50f8:
    # Line 44
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,4
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9c5090
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d9c505c
    sd	$ra,48($sp)
.L0d9c5124:
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
    addiu	$sp,$sp,64
.end __glOdylc_Normal3d

# Function: __glOdylc_Normal3dv
# Declared: Line 53 (Source lines: 53-60)
# Address: 0x0d9c5150 - 0x0d9c5284 (Size: 308 bytes, Frame: 48)
.globl __glOdylc_Normal3dv
.ent __glOdylc_Normal3dv
__glOdylc_Normal3dv:
    # Line 54
    lw	$a3,4136($zero)
    # Line 53
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 54
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 53
    lui	$v0,0x13
    # Line 54
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 53
    addiu	$v0,$v0,13376
    sd	$gp,8($sp)
    # Line 54
    beqz	$at,.L0d9c5238
    # Line 53
    addu	$gp,$t9,$v0
    # Line 54
    slti	$v1,$a3,4
    beqz	$v1,.L0d9c5230
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9c5198:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c525c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9c51c8:
    # Line 55
    lui	$a6,0xc180
    # Line 54
    addu	$a5,$s1,$a5
    # Line 55
    ori	$a6,$a6,0xcc19
    sw	$a6,0($a5)
    # Line 56
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($a5)
    # Line 57
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($a5)
    # Line 58
    ldc1	$f0,16($a0)
    # Line 60
    ld	$gp,8($sp)
    # Line 54
    subu	$a4,$a3,$s0
    # Line 60
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 58
    cvt.s.d	$f0,$f0
    swc1	$f0,12($a5)
    # Line 59
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 54
    addiu	$a4,$a4,-4
    # Line 59
    sw	$a4,4136($zero)
    # Line 60
    addiu	$sp,$sp,48
    # Line 59
    addiu	$a3,$a3,4
    # Line 60
    jr	$ra
    # Line 59
    sw	$a3,4148($zero)
.L0d9c5230:
    b	.L0d9c51c8
    # Line 54
    sll	$a5,$s0,0x2
.L0d9c5238:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9c51c8
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9c5198
    sd	$ra,32($sp)
.L0d9c525c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 60
    ld	$gp,8($sp)
    # Line 54
    lw	$t8,4136($zero)
    # Line 60
    ld	$s0,0($sp)
    # Line 54
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 60
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Normal3dv

# Function: __glOdylc_Normal3f
# Declared: Line 63 (Source lines: 63-70)
# Address: 0x0d9c5290 - 0x0d9c53d0 (Size: 320 bytes, Frame: 192)
.globl __glOdylc_Normal3f
.ent __glOdylc_Normal3f
__glOdylc_Normal3f:
    # Line 64
    lw	$a2,4136($zero)
    # Line 63
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 64
    lw	$at,4148($zero)
    # Line 63
    mov.s	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x13
    mov.s	$f5,$f13
    # Line 64
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 63
    addiu	$v0,$v0,13056
    mov.s	$f6,$f12
    sd	$gp,8($sp)
    # Line 64
    beqz	$at,.L0d9c537c
    # Line 63
    addu	$gp,$t9,$v0
    # Line 64
    slti	$v1,$a2,4
    beqz	$v1,.L0d9c5374
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9c52ec:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a1,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d9c53a8
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9c5320:
    # Line 70
    ld	$gp,8($sp)
.L0d9c5324:
    # Line 64
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 70
    ld	$s0,0($sp)
    # Line 64
    addu	$a4,$s1,$a4
    # Line 70
    ld	$s1,16($sp)
    # Line 65
    lui	$a5,0xc180
    ori	$a5,$a5,0xcc19
    sw	$a5,0($a4)
    # Line 66
    swc1	$f6,4($a4)
    # Line 67
    swc1	$f5,8($a4)
    # Line 68
    swc1	$f4,12($a4)
    # Line 69
    addiu	$a4,$a4,16
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 64
    addiu	$a3,$a3,-4
    # Line 69
    sw	$a3,4136($zero)
    # Line 70
    addiu	$sp,$sp,64
    # Line 69
    addiu	$a2,$a2,4
    # Line 70
    jr	$ra
    # Line 69
    sw	$a2,4148($zero)
.L0d9c5374:
    b	.L0d9c5324
    # Line 70
    ld	$gp,8($sp)
.L0d9c537c:
    # Line 64
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,4
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9c5320
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d9c52ec
    sd	$ra,48($sp)
.L0d9c53a8:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 70
    ld	$gp,8($sp)
    # Line 64
    lw	$t8,4136($zero)
    # Line 70
    ld	$s0,0($sp)
    # Line 64
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 70
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Normal3f

# Function: __glOdylc_Normal3fv
# Declared: Line 73 (Source lines: 73-80)
# Address: 0x0d9c53d0 - 0x0d9c54f8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Normal3fv
.ent __glOdylc_Normal3fv
__glOdylc_Normal3fv:
    # Line 74
    lw	$a3,4136($zero)
    # Line 73
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 74
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 73
    lui	$v0,0x13
    # Line 74
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 73
    addiu	$v0,$v0,12736
    sd	$gp,8($sp)
    # Line 74
    beqz	$at,.L0d9c54ac
    # Line 73
    addu	$gp,$t9,$v0
    # Line 74
    slti	$v1,$a3,4
    beqz	$v1,.L0d9c54a4
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9c5418:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c54d0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9c5448:
    # Line 75
    lui	$a6,0xc180
    # Line 74
    addu	$a5,$s1,$a5
    # Line 75
    ori	$a6,$a6,0xcc19
    sw	$a6,0($a5)
    # Line 76
    lwc1	$f2,0($a0)
    # Line 80
    ld	$gp,8($sp)
    # Line 76
    swc1	$f2,4($a5)
    # Line 77
    lwc1	$f1,4($a0)
    # Line 74
    subu	$a4,$a3,$s0
    # Line 80
    ld	$s0,0($sp)
    # Line 77
    swc1	$f1,8($a5)
    # Line 78
    lwc1	$f0,8($a0)
    # Line 80
    ld	$s1,16($sp)
    # Line 78
    swc1	$f0,12($a5)
    # Line 79
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 74
    addiu	$a4,$a4,-4
    # Line 79
    sw	$a4,4136($zero)
    # Line 80
    addiu	$sp,$sp,48
    # Line 79
    addiu	$a3,$a3,4
    # Line 80
    jr	$ra
    # Line 79
    sw	$a3,4148($zero)
.L0d9c54a4:
    b	.L0d9c5448
    # Line 74
    sll	$a5,$s0,0x2
.L0d9c54ac:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9c5448
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9c5418
    sd	$ra,32($sp)
.L0d9c54d0:
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
.end __glOdylc_Normal3fv

# Function: __glOdylc_Normal3i
# Declared: Line 83 (Source lines: 83-90)
# Address: 0x0d9c5500 - 0x0d9c5634 (Size: 308 bytes, Frame: 192)
.globl __glOdylc_Normal3i
.ent __glOdylc_Normal3i
__glOdylc_Normal3i:
    # Line 84
    lw	$a5,4136($zero)
    # Line 83
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 84
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 83
    lui	$v0,0x13
    # Line 84
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 83
    addiu	$v0,$v0,12432
    sd	$gp,16($sp)
    # Line 84
    beqz	$at,.L0d9c55e0
    # Line 83
    addu	$gp,$t9,$v0
    # Line 84
    slti	$v1,$a5,4
    beqz	$v1,.L0d9c55d8
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9c5550:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$a4,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c560c
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a3,$s1,0x4
    movn	$s0,$a4,$a3
.L0d9c5584:
    # Line 90
    ld	$gp,16($sp)
.L0d9c5588:
    # Line 84
    subu	$a6,$a5,$s0
    sll	$a7,$s0,0x2
    # Line 90
    ld	$s0,0($sp)
    # Line 84
    addu	$a7,$s1,$a7
    # Line 90
    ld	$s1,8($sp)
    # Line 85
    lui	$t0,0xc180
    ori	$t0,$t0,0xcc18
    sw	$t0,0($a7)
    # Line 86
    sw	$a0,4($a7)
    # Line 87
    sw	$a1,8($a7)
    # Line 88
    sw	$a2,12($a7)
    # Line 89
    addiu	$a7,$a7,16
    sw	$a7,4144($zero)
    lw	$a5,4148($zero)
    # Line 84
    addiu	$a6,$a6,-4
    # Line 89
    sw	$a6,4136($zero)
    # Line 90
    addiu	$sp,$sp,64
    # Line 89
    addiu	$a5,$a5,4
    # Line 90
    jr	$ra
    # Line 89
    sw	$a5,4148($zero)
.L0d9c55d8:
    b	.L0d9c5588
    # Line 90
    ld	$gp,16($sp)
.L0d9c55e0:
    # Line 84
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t0,$s0,4
    slt	$t0,$a5,$t0
    beqz	$t0,.L0d9c5584
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9c5550
    sd	$ra,48($sp)
.L0d9c560c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 90
    ld	$gp,16($sp)
    # Line 84
    lw	$t8,4136($zero)
    # Line 90
    ld	$s0,0($sp)
    # Line 84
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 90
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Normal3i

# Function: __glOdylc_Normal3iv
# Declared: Line 93 (Source lines: 93-100)
# Address: 0x0d9c5640 - 0x0d9c5768 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Normal3iv
.ent __glOdylc_Normal3iv
__glOdylc_Normal3iv:
    # Line 94
    lw	$a3,4136($zero)
    # Line 93
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 94
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 93
    lui	$v0,0x13
    # Line 94
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 93
    addiu	$v0,$v0,12112
    sd	$gp,8($sp)
    # Line 94
    beqz	$at,.L0d9c571c
    # Line 93
    addu	$gp,$t9,$v0
    # Line 94
    slti	$v1,$a3,4
    beqz	$v1,.L0d9c5714
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9c5688:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c5740
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9c56b4:
    # Line 100
    ld	$gp,8($sp)
.L0d9c56b8:
    # Line 94
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 100
    ld	$s0,0($sp)
    # Line 94
    addu	$a5,$s1,$a5
    # Line 100
    ld	$s1,16($sp)
    # Line 95
    lui	$t1,0xc180
    ori	$t1,$t1,0xcc18
    sw	$t1,0($a5)
    # Line 96
    lw	$t0,0($a0)
    sw	$t0,4($a5)
    # Line 97
    lw	$a7,4($a0)
    sw	$a7,8($a5)
    # Line 98
    lw	$a6,8($a0)
    sw	$a6,12($a5)
    # Line 99
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 94
    addiu	$a4,$a4,-4
    # Line 99
    sw	$a4,4136($zero)
    # Line 100
    addiu	$sp,$sp,48
    # Line 99
    addiu	$a3,$a3,4
    # Line 100
    jr	$ra
    # Line 99
    sw	$a3,4148($zero)
.L0d9c5714:
    b	.L0d9c56b8
    # Line 100
    ld	$gp,8($sp)
.L0d9c571c:
    # Line 94
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9c56b4
    nop
    sd	$a0,24($sp)
    b	.L0d9c5688
    sd	$ra,32($sp)
.L0d9c5740:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 100
    ld	$gp,8($sp)
    # Line 94
    lw	$t8,4136($zero)
    # Line 100
    ld	$s0,0($sp)
    # Line 94
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 100
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Normal3iv

# Function: __glOdylc_Normal3s
# Declared: Line 103 (Source lines: 103-110)
# Address: 0x0d9c5770 - 0x0d9c58a4 (Size: 308 bytes, Frame: 192)
.globl __glOdylc_Normal3s
.ent __glOdylc_Normal3s
__glOdylc_Normal3s:
    # Line 104
    lw	$a5,4136($zero)
    # Line 103
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 104
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 103
    lui	$v0,0x13
    # Line 104
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 103
    addiu	$v0,$v0,11808
    sd	$gp,16($sp)
    # Line 104
    beqz	$at,.L0d9c5850
    # Line 103
    addu	$gp,$t9,$v0
    # Line 104
    slti	$v1,$a5,4
    beqz	$v1,.L0d9c5848
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9c57c0:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$a4,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c587c
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a3,$s1,0x4
    movn	$s0,$a4,$a3
.L0d9c57f4:
    # Line 110
    ld	$gp,16($sp)
.L0d9c57f8:
    # Line 104
    subu	$a6,$a5,$s0
    sll	$a7,$s0,0x2
    # Line 110
    ld	$s0,0($sp)
    # Line 104
    addu	$a7,$s1,$a7
    # Line 110
    ld	$s1,8($sp)
    # Line 105
    lui	$t0,0xc180
    ori	$t0,$t0,0xcc17
    sw	$t0,0($a7)
    # Line 106
    sw	$a0,4($a7)
    # Line 107
    sw	$a1,8($a7)
    # Line 108
    sw	$a2,12($a7)
    # Line 109
    addiu	$a7,$a7,16
    sw	$a7,4144($zero)
    lw	$a5,4148($zero)
    # Line 104
    addiu	$a6,$a6,-4
    # Line 109
    sw	$a6,4136($zero)
    # Line 110
    addiu	$sp,$sp,64
    # Line 109
    addiu	$a5,$a5,4
    # Line 110
    jr	$ra
    # Line 109
    sw	$a5,4148($zero)
.L0d9c5848:
    b	.L0d9c57f8
    # Line 110
    ld	$gp,16($sp)
.L0d9c5850:
    # Line 104
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t0,$s0,4
    slt	$t0,$a5,$t0
    beqz	$t0,.L0d9c57f4
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9c57c0
    sd	$ra,48($sp)
.L0d9c587c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 110
    ld	$gp,16($sp)
    # Line 104
    lw	$t8,4136($zero)
    # Line 110
    ld	$s0,0($sp)
    # Line 104
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 110
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_Normal3s

# Function: __glOdylc_Normal3sv
# Declared: Line 113 (Source lines: 113-120)
# Address: 0x0d9c58b0 - 0x0d9c59d8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_Normal3sv
.ent __glOdylc_Normal3sv
__glOdylc_Normal3sv:
    # Line 114
    lw	$a3,4136($zero)
    # Line 113
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 114
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 113
    lui	$v0,0x13
    # Line 114
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 113
    addiu	$v0,$v0,11488
    sd	$gp,8($sp)
    # Line 114
    beqz	$at,.L0d9c598c
    # Line 113
    addu	$gp,$t9,$v0
    # Line 114
    slti	$v1,$a3,4
    beqz	$v1,.L0d9c5984
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9c58f8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9c59b0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9c5924:
    # Line 120
    ld	$gp,8($sp)
.L0d9c5928:
    # Line 114
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 120
    ld	$s0,0($sp)
    # Line 114
    addu	$a5,$s1,$a5
    # Line 120
    ld	$s1,16($sp)
    # Line 115
    lui	$t1,0xc180
    ori	$t1,$t1,0xcc17
    sw	$t1,0($a5)
    # Line 116
    lh	$t0,0($a0)
    sw	$t0,4($a5)
    # Line 117
    lh	$a7,2($a0)
    sw	$a7,8($a5)
    # Line 118
    lh	$a6,4($a0)
    sw	$a6,12($a5)
    # Line 119
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 114
    addiu	$a4,$a4,-4
    # Line 119
    sw	$a4,4136($zero)
    # Line 120
    addiu	$sp,$sp,48
    # Line 119
    addiu	$a3,$a3,4
    # Line 120
    jr	$ra
    # Line 119
    sw	$a3,4148($zero)
.L0d9c5984:
    b	.L0d9c5928
    # Line 120
    ld	$gp,8($sp)
.L0d9c598c:
    # Line 114
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9c5924
    nop
    sd	$a0,24($sp)
    b	.L0d9c58f8
    sd	$ra,32($sp)
.L0d9c59b0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 120
    ld	$gp,8($sp)
    # Line 114
    lw	$t8,4136($zero)
    # Line 120
    ld	$s0,0($sp)
    # Line 114
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 120
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_Normal3sv

