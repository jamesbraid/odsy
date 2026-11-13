# Source: ../ODYSSEY/ody_tapi_lc.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_tapi_lc.c
# Total Functions: 32

.text

# Function: __glOdylc_TexCoord1d
# Declared: Line 23 (Source lines: 23-28)
# Address: 0x0d9cc350 - 0x0d9cc46c (Size: 284 bytes, Frame: 48)
.globl __glOdylc_TexCoord1d
.ent __glOdylc_TexCoord1d
__glOdylc_TexCoord1d:
    # Line 24
    lw	$a2,4136($zero)
    # Line 23
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 24
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 23
    lui	$v0,0x13
    # Line 24
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 23
    addiu	$v0,$v0,-15808
    mov.d	$f4,$f12
    sd	$gp,8($sp)
    # Line 24
    beqz	$at,.L0d9cc420
    # Line 23
    addu	$gp,$t9,$v0
    # Line 24
    slti	$v1,$a2,2
    beqz	$v1,.L0d9cc418
    nop
    sdc1	$f12,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cc39c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a1,1
    ldc1	$f4,24($sp)
    beqz	$v0,.L0d9cc444
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9cc3c8:
    # Line 28
    ld	$gp,8($sp)
.L0d9cc3cc:
    # Line 24
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 28
    ld	$s0,0($sp)
    # Line 24
    addu	$a4,$s1,$a4
    # Line 28
    ld	$s1,16($sp)
    # Line 25
    lui	$a5,0xc380
    # Line 26
    cvt.s.d	$f0,$f4
    # Line 25
    ori	$a5,$a5,0xc41f
    sw	$a5,0($a4)
    # Line 26
    swc1	$f0,4($a4)
    # Line 27
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 24
    addiu	$a3,$a3,-2
    # Line 27
    sw	$a3,4136($zero)
    # Line 28
    addiu	$sp,$sp,48
    # Line 27
    addiu	$a2,$a2,2
    # Line 28
    jr	$ra
    # Line 27
    sw	$a2,4148($zero)
.L0d9cc418:
    b	.L0d9cc3cc
    # Line 28
    ld	$gp,8($sp)
.L0d9cc420:
    # Line 24
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,2
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9cc3c8
    nop
    sdc1	$f12,24($sp)
    b	.L0d9cc39c
    sd	$ra,32($sp)
.L0d9cc444:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 28
    ld	$gp,8($sp)
    # Line 24
    lw	$t8,4136($zero)
    # Line 28
    ld	$s0,0($sp)
    # Line 24
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 28
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1d

# Function: __glOdylc_TexCoord1dv
# Declared: Line 31 (Source lines: 31-36)
# Address: 0x0d9cc470 - 0x0d9cc58c (Size: 284 bytes, Frame: 48)
.globl __glOdylc_TexCoord1dv
.ent __glOdylc_TexCoord1dv
__glOdylc_TexCoord1dv:
    # Line 32
    lw	$a3,4136($zero)
    # Line 31
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 32
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 31
    lui	$v0,0x13
    # Line 32
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 31
    addiu	$v0,$v0,-16096
    sd	$gp,8($sp)
    # Line 32
    beqz	$at,.L0d9cc540
    # Line 31
    addu	$gp,$t9,$v0
    # Line 32
    slti	$v1,$a3,2
    beqz	$v1,.L0d9cc538
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cc4b8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cc564
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9cc4e8:
    # Line 33
    lui	$a6,0xc380
    # Line 32
    addu	$a5,$s1,$a5
    # Line 33
    ori	$a6,$a6,0xc41f
    sw	$a6,0($a5)
    # Line 34
    ldc1	$f0,0($a0)
    # Line 36
    ld	$gp,8($sp)
    # Line 32
    subu	$a4,$a3,$s0
    # Line 36
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 34
    cvt.s.d	$f0,$f0
    swc1	$f0,4($a5)
    # Line 35
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 32
    addiu	$a4,$a4,-2
    # Line 35
    sw	$a4,4136($zero)
    # Line 36
    addiu	$sp,$sp,48
    # Line 35
    addiu	$a3,$a3,2
    # Line 36
    jr	$ra
    # Line 35
    sw	$a3,4148($zero)
.L0d9cc538:
    b	.L0d9cc4e8
    # Line 32
    sll	$a5,$s0,0x2
.L0d9cc540:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,2
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cc4e8
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9cc4b8
    sd	$ra,32($sp)
.L0d9cc564:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 36
    ld	$gp,8($sp)
    # Line 32
    lw	$t8,4136($zero)
    # Line 36
    ld	$s0,0($sp)
    # Line 32
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 36
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1dv

# Function: __glOdylc_TexCoord1f
# Declared: Line 39 (Source lines: 39-44)
# Address: 0x0d9cc590 - 0x0d9cc6a8 (Size: 280 bytes, Frame: 48)
.globl __glOdylc_TexCoord1f
.ent __glOdylc_TexCoord1f
__glOdylc_TexCoord1f:
    # Line 40
    lw	$a2,4136($zero)
    # Line 39
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 40
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 39
    lui	$v0,0x13
    # Line 40
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 39
    addiu	$v0,$v0,-16384
    mov.s	$f4,$f12
    sd	$gp,8($sp)
    # Line 40
    beqz	$at,.L0d9cc65c
    # Line 39
    addu	$gp,$t9,$v0
    # Line 40
    slti	$v1,$a2,2
    beqz	$v1,.L0d9cc654
    nop
    sdc1	$f12,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cc5dc:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a1,1
    ldc1	$f4,24($sp)
    beqz	$v0,.L0d9cc680
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9cc608:
    # Line 44
    ld	$gp,8($sp)
.L0d9cc60c:
    # Line 40
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 44
    ld	$s0,0($sp)
    # Line 40
    addu	$a4,$s1,$a4
    # Line 44
    ld	$s1,16($sp)
    # Line 41
    lui	$a5,0xc380
    ori	$a5,$a5,0xc41f
    sw	$a5,0($a4)
    # Line 42
    swc1	$f4,4($a4)
    # Line 43
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 40
    addiu	$a3,$a3,-2
    # Line 43
    sw	$a3,4136($zero)
    # Line 44
    addiu	$sp,$sp,48
    # Line 43
    addiu	$a2,$a2,2
    # Line 44
    jr	$ra
    # Line 43
    sw	$a2,4148($zero)
.L0d9cc654:
    b	.L0d9cc60c
    # Line 44
    ld	$gp,8($sp)
.L0d9cc65c:
    # Line 40
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,2
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9cc608
    nop
    sdc1	$f12,24($sp)
    b	.L0d9cc5dc
    sd	$ra,32($sp)
.L0d9cc680:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 44
    ld	$gp,8($sp)
    # Line 40
    lw	$t8,4136($zero)
    # Line 44
    ld	$s0,0($sp)
    # Line 40
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 44
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1f

# Function: __glOdylc_TexCoord1fv
# Declared: Line 47 (Source lines: 47-52)
# Address: 0x0d9cc6b0 - 0x0d9cc7c8 (Size: 280 bytes, Frame: 48)
.globl __glOdylc_TexCoord1fv
.ent __glOdylc_TexCoord1fv
__glOdylc_TexCoord1fv:
    # Line 48
    lw	$a3,4136($zero)
    # Line 47
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 48
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 47
    lui	$v0,0x13
    # Line 48
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 47
    addiu	$v0,$v0,-16672
    sd	$gp,8($sp)
    # Line 48
    beqz	$at,.L0d9cc77c
    # Line 47
    addu	$gp,$t9,$v0
    # Line 48
    slti	$v1,$a3,2
    beqz	$v1,.L0d9cc774
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cc6f8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cc7a0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cc724:
    # Line 52
    ld	$gp,8($sp)
.L0d9cc728:
    # Line 48
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 52
    ld	$s0,0($sp)
    # Line 49
    lui	$a6,0xc380
    # Line 48
    addu	$a5,$s1,$a5
    # Line 49
    ori	$a6,$a6,0xc41f
    sw	$a6,0($a5)
    # Line 50
    lwc1	$f0,0($a0)
    # Line 52
    ld	$s1,16($sp)
    # Line 50
    swc1	$f0,4($a5)
    # Line 51
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 48
    addiu	$a4,$a4,-2
    # Line 51
    sw	$a4,4136($zero)
    # Line 52
    addiu	$sp,$sp,48
    # Line 51
    addiu	$a3,$a3,2
    # Line 52
    jr	$ra
    # Line 51
    sw	$a3,4148($zero)
.L0d9cc774:
    b	.L0d9cc728
    # Line 52
    ld	$gp,8($sp)
.L0d9cc77c:
    # Line 48
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,2
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cc724
    nop
    sd	$a0,24($sp)
    b	.L0d9cc6f8
    sd	$ra,32($sp)
.L0d9cc7a0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 52
    ld	$gp,8($sp)
    # Line 48
    lw	$t8,4136($zero)
    # Line 52
    ld	$s0,0($sp)
    # Line 48
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 52
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1fv

# Function: __glOdylc_TexCoord1i
# Declared: Line 55 (Source lines: 55-60)
# Address: 0x0d9cc7d0 - 0x0d9cc8e4 (Size: 276 bytes, Frame: 48)
.globl __glOdylc_TexCoord1i
.ent __glOdylc_TexCoord1i
__glOdylc_TexCoord1i:
    # Line 56
    lw	$a3,4136($zero)
    # Line 55
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 56
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 55
    lui	$v0,0x13
    # Line 56
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 55
    addiu	$v0,$v0,-16960
    sd	$gp,8($sp)
    # Line 56
    beqz	$at,.L0d9cc898
    # Line 55
    addu	$gp,$t9,$v0
    # Line 56
    slti	$v1,$a3,2
    beqz	$v1,.L0d9cc890
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cc818:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cc8bc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cc844:
    # Line 60
    ld	$gp,8($sp)
.L0d9cc848:
    # Line 56
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 60
    ld	$s0,0($sp)
    # Line 56
    addu	$a5,$s1,$a5
    # Line 60
    ld	$s1,16($sp)
    # Line 57
    lui	$a6,0xc380
    ori	$a6,$a6,0xc41e
    sw	$a6,0($a5)
    # Line 58
    sw	$a0,4($a5)
    # Line 59
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 56
    addiu	$a4,$a4,-2
    # Line 59
    sw	$a4,4136($zero)
    # Line 60
    addiu	$sp,$sp,48
    # Line 59
    addiu	$a3,$a3,2
    # Line 60
    jr	$ra
    # Line 59
    sw	$a3,4148($zero)
.L0d9cc890:
    b	.L0d9cc848
    # Line 60
    ld	$gp,8($sp)
.L0d9cc898:
    # Line 56
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,2
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cc844
    nop
    sd	$a0,24($sp)
    b	.L0d9cc818
    sd	$ra,32($sp)
.L0d9cc8bc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 60
    ld	$gp,8($sp)
    # Line 56
    lw	$t8,4136($zero)
    # Line 60
    ld	$s0,0($sp)
    # Line 56
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 60
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1i

# Function: __glOdylc_TexCoord1iv
# Declared: Line 63 (Source lines: 63-68)
# Address: 0x0d9cc8f0 - 0x0d9cca08 (Size: 280 bytes, Frame: 48)
.globl __glOdylc_TexCoord1iv
.ent __glOdylc_TexCoord1iv
__glOdylc_TexCoord1iv:
    # Line 64
    lw	$a3,4136($zero)
    # Line 63
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 64
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 63
    lui	$v0,0x13
    # Line 64
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 63
    addiu	$v0,$v0,-17248
    sd	$gp,8($sp)
    # Line 64
    beqz	$at,.L0d9cc9bc
    # Line 63
    addu	$gp,$t9,$v0
    # Line 64
    slti	$v1,$a3,2
    beqz	$v1,.L0d9cc9b4
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cc938:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cc9e0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cc964:
    # Line 68
    ld	$gp,8($sp)
.L0d9cc968:
    # Line 64
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 68
    ld	$s0,0($sp)
    # Line 64
    addu	$a5,$s1,$a5
    # Line 68
    ld	$s1,16($sp)
    # Line 65
    lui	$a7,0xc380
    ori	$a7,$a7,0xc41e
    sw	$a7,0($a5)
    # Line 66
    lw	$a6,0($a0)
    sw	$a6,4($a5)
    # Line 67
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 64
    addiu	$a4,$a4,-2
    # Line 67
    sw	$a4,4136($zero)
    # Line 68
    addiu	$sp,$sp,48
    # Line 67
    addiu	$a3,$a3,2
    # Line 68
    jr	$ra
    # Line 67
    sw	$a3,4148($zero)
.L0d9cc9b4:
    b	.L0d9cc968
    # Line 68
    ld	$gp,8($sp)
.L0d9cc9bc:
    # Line 64
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,2
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cc964
    nop
    sd	$a0,24($sp)
    b	.L0d9cc938
    sd	$ra,32($sp)
.L0d9cc9e0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 68
    ld	$gp,8($sp)
    # Line 64
    lw	$t8,4136($zero)
    # Line 68
    ld	$s0,0($sp)
    # Line 64
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 68
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1iv

# Function: __glOdylc_TexCoord1s
# Declared: Line 71 (Source lines: 71-76)
# Address: 0x0d9cca10 - 0x0d9ccb24 (Size: 276 bytes, Frame: 48)
.globl __glOdylc_TexCoord1s
.ent __glOdylc_TexCoord1s
__glOdylc_TexCoord1s:
    # Line 72
    lw	$a3,4136($zero)
    # Line 71
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 72
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 71
    lui	$v0,0x13
    # Line 72
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 71
    addiu	$v0,$v0,-17536
    sd	$gp,8($sp)
    # Line 72
    beqz	$at,.L0d9ccad8
    # Line 71
    addu	$gp,$t9,$v0
    # Line 72
    slti	$v1,$a3,2
    beqz	$v1,.L0d9ccad0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cca58:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ccafc
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cca84:
    # Line 76
    ld	$gp,8($sp)
.L0d9cca88:
    # Line 72
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 76
    ld	$s0,0($sp)
    # Line 72
    addu	$a5,$s1,$a5
    # Line 76
    ld	$s1,16($sp)
    # Line 73
    lui	$a6,0xc380
    ori	$a6,$a6,0xc41e
    sw	$a6,0($a5)
    # Line 74
    sw	$a0,4($a5)
    # Line 75
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 72
    addiu	$a4,$a4,-2
    # Line 75
    sw	$a4,4136($zero)
    # Line 76
    addiu	$sp,$sp,48
    # Line 75
    addiu	$a3,$a3,2
    # Line 76
    jr	$ra
    # Line 75
    sw	$a3,4148($zero)
.L0d9ccad0:
    b	.L0d9cca88
    # Line 76
    ld	$gp,8($sp)
.L0d9ccad8:
    # Line 72
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,2
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cca84
    nop
    sd	$a0,24($sp)
    b	.L0d9cca58
    sd	$ra,32($sp)
.L0d9ccafc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 76
    ld	$gp,8($sp)
    # Line 72
    lw	$t8,4136($zero)
    # Line 76
    ld	$s0,0($sp)
    # Line 72
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 76
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1s

# Function: __glOdylc_TexCoord1sv
# Declared: Line 79 (Source lines: 79-84)
# Address: 0x0d9ccb30 - 0x0d9ccc48 (Size: 280 bytes, Frame: 48)
.globl __glOdylc_TexCoord1sv
.ent __glOdylc_TexCoord1sv
__glOdylc_TexCoord1sv:
    # Line 80
    lw	$a3,4136($zero)
    # Line 79
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 80
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 79
    lui	$v0,0x13
    # Line 80
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 79
    addiu	$v0,$v0,-17824
    sd	$gp,8($sp)
    # Line 80
    beqz	$at,.L0d9ccbfc
    # Line 79
    addu	$gp,$t9,$v0
    # Line 80
    slti	$v1,$a3,2
    beqz	$v1,.L0d9ccbf4
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ccb78:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ccc20
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9ccba4:
    # Line 84
    ld	$gp,8($sp)
.L0d9ccba8:
    # Line 80
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 84
    ld	$s0,0($sp)
    # Line 80
    addu	$a5,$s1,$a5
    # Line 84
    ld	$s1,16($sp)
    # Line 81
    lui	$a7,0xc380
    ori	$a7,$a7,0xc41e
    sw	$a7,0($a5)
    # Line 82
    lh	$a6,0($a0)
    sw	$a6,4($a5)
    # Line 83
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 80
    addiu	$a4,$a4,-2
    # Line 83
    sw	$a4,4136($zero)
    # Line 84
    addiu	$sp,$sp,48
    # Line 83
    addiu	$a3,$a3,2
    # Line 84
    jr	$ra
    # Line 83
    sw	$a3,4148($zero)
.L0d9ccbf4:
    b	.L0d9ccba8
    # Line 84
    ld	$gp,8($sp)
.L0d9ccbfc:
    # Line 80
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,2
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9ccba4
    nop
    sd	$a0,24($sp)
    b	.L0d9ccb78
    sd	$ra,32($sp)
.L0d9ccc20:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 84
    ld	$gp,8($sp)
    # Line 80
    lw	$t8,4136($zero)
    # Line 84
    ld	$s0,0($sp)
    # Line 80
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 84
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord1sv

# Function: __glOdylc_TexCoord2d
# Declared: Line 87 (Source lines: 87-93)
# Address: 0x0d9ccc50 - 0x0d9ccd84 (Size: 308 bytes, Frame: 48)
.globl __glOdylc_TexCoord2d
.ent __glOdylc_TexCoord2d
__glOdylc_TexCoord2d:
    # Line 88
    lw	$a2,4136($zero)
    # Line 87
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 88
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 87
    lui	$v0,0x13
    mov.d	$f4,$f13
    # Line 88
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 87
    addiu	$v0,$v0,-18112
    mov.d	$f5,$f12
    sd	$gp,8($sp)
    # Line 88
    beqz	$at,.L0d9ccd34
    # Line 87
    addu	$gp,$t9,$v0
    # Line 88
    slti	$v1,$a2,3
    beqz	$v1,.L0d9ccd2c
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9ccca4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    li	$a1,1
    ldc1	$f5,24($sp)
    beqz	$v0,.L0d9ccd5c
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9cccd4:
    # Line 93
    ld	$gp,8($sp)
.L0d9cccd8:
    # Line 88
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 93
    ld	$s0,0($sp)
    # Line 88
    addu	$a4,$s1,$a4
    # Line 93
    ld	$s1,16($sp)
    # Line 89
    lui	$a5,0xc380
    # Line 90
    cvt.s.d	$f1,$f5
    # Line 89
    ori	$a5,$a5,0xc821
    sw	$a5,0($a4)
    # Line 91
    cvt.s.d	$f0,$f4
    # Line 90
    swc1	$f1,4($a4)
    # Line 91
    swc1	$f0,8($a4)
    # Line 92
    addiu	$a4,$a4,12
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 88
    addiu	$a3,$a3,-3
    # Line 92
    sw	$a3,4136($zero)
    # Line 93
    addiu	$sp,$sp,48
    # Line 92
    addiu	$a2,$a2,3
    # Line 93
    jr	$ra
    # Line 92
    sw	$a2,4148($zero)
.L0d9ccd2c:
    b	.L0d9cccd8
    # Line 93
    ld	$gp,8($sp)
.L0d9ccd34:
    # Line 88
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,3
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9cccd4
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    b	.L0d9ccca4
    sd	$ra,40($sp)
.L0d9ccd5c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 93
    ld	$gp,8($sp)
    # Line 88
    lw	$t8,4136($zero)
    # Line 93
    ld	$s0,0($sp)
    # Line 88
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 93
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2d

# Function: __glOdylc_TexCoord2dv
# Declared: Line 96 (Source lines: 96-102)
# Address: 0x0d9ccd90 - 0x0d9cceb8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_TexCoord2dv
.ent __glOdylc_TexCoord2dv
__glOdylc_TexCoord2dv:
    # Line 97
    lw	$a3,4136($zero)
    # Line 96
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 97
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 96
    lui	$v0,0x13
    # Line 97
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 96
    addiu	$v0,$v0,-18432
    sd	$gp,8($sp)
    # Line 97
    beqz	$at,.L0d9cce6c
    # Line 96
    addu	$gp,$t9,$v0
    # Line 97
    slti	$v1,$a3,3
    beqz	$v1,.L0d9cce64
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ccdd8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cce90
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9cce08:
    # Line 98
    lui	$a6,0xc380
    # Line 97
    addu	$a5,$s1,$a5
    # Line 98
    ori	$a6,$a6,0xc821
    sw	$a6,0($a5)
    # Line 99
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($a5)
    # Line 100
    ldc1	$f0,8($a0)
    # Line 102
    ld	$gp,8($sp)
    # Line 97
    subu	$a4,$a3,$s0
    # Line 102
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 100
    cvt.s.d	$f0,$f0
    swc1	$f0,8($a5)
    # Line 101
    addiu	$a5,$a5,12
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 97
    addiu	$a4,$a4,-3
    # Line 101
    sw	$a4,4136($zero)
    # Line 102
    addiu	$sp,$sp,48
    # Line 101
    addiu	$a3,$a3,3
    # Line 102
    jr	$ra
    # Line 101
    sw	$a3,4148($zero)
.L0d9cce64:
    b	.L0d9cce08
    # Line 97
    sll	$a5,$s0,0x2
.L0d9cce6c:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,3
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cce08
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9ccdd8
    sd	$ra,32($sp)
.L0d9cce90:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 102
    ld	$gp,8($sp)
    # Line 97
    lw	$t8,4136($zero)
    # Line 102
    ld	$s0,0($sp)
    # Line 97
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 102
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2dv

# Function: __glOdylc_TexCoord2f
# Declared: Line 105 (Source lines: 105-111)
# Address: 0x0d9ccec0 - 0x0d9ccfec (Size: 300 bytes, Frame: 48)
.globl __glOdylc_TexCoord2f
.ent __glOdylc_TexCoord2f
__glOdylc_TexCoord2f:
    # Line 106
    lw	$a2,4136($zero)
    # Line 105
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 106
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 105
    lui	$v0,0x13
    mov.s	$f4,$f13
    # Line 106
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 105
    addiu	$v0,$v0,-18736
    mov.s	$f5,$f12
    sd	$gp,8($sp)
    # Line 106
    beqz	$at,.L0d9ccf9c
    # Line 105
    addu	$gp,$t9,$v0
    # Line 106
    slti	$v1,$a2,3
    beqz	$v1,.L0d9ccf94
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9ccf14:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    li	$a1,1
    ldc1	$f5,24($sp)
    beqz	$v0,.L0d9ccfc4
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9ccf44:
    # Line 111
    ld	$gp,8($sp)
.L0d9ccf48:
    # Line 106
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 111
    ld	$s0,0($sp)
    # Line 106
    addu	$a4,$s1,$a4
    # Line 111
    ld	$s1,16($sp)
    # Line 107
    lui	$a5,0xc380
    ori	$a5,$a5,0xc821
    sw	$a5,0($a4)
    # Line 108
    swc1	$f5,4($a4)
    # Line 109
    swc1	$f4,8($a4)
    # Line 110
    addiu	$a4,$a4,12
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 106
    addiu	$a3,$a3,-3
    # Line 110
    sw	$a3,4136($zero)
    # Line 111
    addiu	$sp,$sp,48
    # Line 110
    addiu	$a2,$a2,3
    # Line 111
    jr	$ra
    # Line 110
    sw	$a2,4148($zero)
.L0d9ccf94:
    b	.L0d9ccf48
    # Line 111
    ld	$gp,8($sp)
.L0d9ccf9c:
    # Line 106
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,3
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9ccf44
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    b	.L0d9ccf14
    sd	$ra,40($sp)
.L0d9ccfc4:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 111
    ld	$gp,8($sp)
    # Line 106
    lw	$t8,4136($zero)
    # Line 111
    ld	$s0,0($sp)
    # Line 106
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 111
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2f

# Function: __glOdylc_TexCoord2fv
# Declared: Line 114 (Source lines: 114-120)
# Address: 0x0d9ccff0 - 0x0d9cd110 (Size: 288 bytes, Frame: 48)
.globl __glOdylc_TexCoord2fv
.ent __glOdylc_TexCoord2fv
__glOdylc_TexCoord2fv:
    # Line 115
    lw	$a3,4136($zero)
    # Line 114
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 115
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 114
    lui	$v0,0x13
    # Line 115
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 114
    addiu	$v0,$v0,-19040
    sd	$gp,8($sp)
    # Line 115
    beqz	$at,.L0d9cd0c4
    # Line 114
    addu	$gp,$t9,$v0
    # Line 115
    slti	$v1,$a3,3
    beqz	$v1,.L0d9cd0bc
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cd038:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cd0e8
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9cd068:
    # Line 120
    ld	$gp,8($sp)
    # Line 116
    lui	$a6,0xc380
    # Line 115
    addu	$a5,$s1,$a5
    # Line 116
    ori	$a6,$a6,0xc821
    sw	$a6,0($a5)
    # Line 117
    lwc1	$f1,0($a0)
    # Line 115
    subu	$a4,$a3,$s0
    # Line 120
    ld	$s0,0($sp)
    # Line 117
    swc1	$f1,4($a5)
    # Line 118
    lwc1	$f0,4($a0)
    # Line 120
    ld	$s1,16($sp)
    # Line 118
    swc1	$f0,8($a5)
    # Line 119
    addiu	$a5,$a5,12
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 115
    addiu	$a4,$a4,-3
    # Line 119
    sw	$a4,4136($zero)
    # Line 120
    addiu	$sp,$sp,48
    # Line 119
    addiu	$a3,$a3,3
    # Line 120
    jr	$ra
    # Line 119
    sw	$a3,4148($zero)
.L0d9cd0bc:
    b	.L0d9cd068
    # Line 115
    sll	$a5,$s0,0x2
.L0d9cd0c4:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,3
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cd068
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9cd038
    sd	$ra,32($sp)
.L0d9cd0e8:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 120
    ld	$gp,8($sp)
    # Line 115
    lw	$t8,4136($zero)
    # Line 120
    ld	$s0,0($sp)
    # Line 115
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 120
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2fv

# Function: __glOdylc_TexCoord2i
# Declared: Line 123 (Source lines: 123-129)
# Address: 0x0d9cd110 - 0x0d9cd234 (Size: 292 bytes, Frame: 48)
.globl __glOdylc_TexCoord2i
.ent __glOdylc_TexCoord2i
__glOdylc_TexCoord2i:
    # Line 124
    lw	$a4,4136($zero)
    # Line 123
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 124
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 123
    lui	$v0,0x13
    # Line 124
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 123
    addiu	$v0,$v0,-19328
    sd	$gp,16($sp)
    # Line 124
    beqz	$at,.L0d9cd1e4
    # Line 123
    addu	$gp,$t9,$v0
    # Line 124
    slti	$v1,$a4,3
    beqz	$v1,.L0d9cd1dc
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9cd15c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    li	$a3,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cd20c
    move	$a4,$v0
    lw	$s1,4144($zero)
    andi	$a2,$s1,0x4
    movn	$s0,$a3,$a2
.L0d9cd18c:
    # Line 129
    ld	$gp,16($sp)
.L0d9cd190:
    # Line 124
    subu	$a5,$a4,$s0
    sll	$a6,$s0,0x2
    # Line 129
    ld	$s0,0($sp)
    # Line 124
    addu	$a6,$s1,$a6
    # Line 129
    ld	$s1,8($sp)
    # Line 125
    lui	$a7,0xc380
    ori	$a7,$a7,0xc820
    sw	$a7,0($a6)
    # Line 126
    sw	$a0,4($a6)
    # Line 127
    sw	$a1,8($a6)
    # Line 128
    addiu	$a6,$a6,12
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    # Line 124
    addiu	$a5,$a5,-3
    # Line 128
    sw	$a5,4136($zero)
    # Line 129
    addiu	$sp,$sp,48
    # Line 128
    addiu	$a4,$a4,3
    # Line 129
    jr	$ra
    # Line 128
    sw	$a4,4148($zero)
.L0d9cd1dc:
    b	.L0d9cd190
    # Line 129
    ld	$gp,16($sp)
.L0d9cd1e4:
    # Line 124
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a7,$s0,3
    slt	$a7,$a4,$a7
    beqz	$a7,.L0d9cd18c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    b	.L0d9cd15c
    sd	$ra,40($sp)
.L0d9cd20c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 129
    ld	$gp,16($sp)
    # Line 124
    lw	$t8,4136($zero)
    # Line 129
    ld	$s0,0($sp)
    # Line 124
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 129
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2i

# Function: __glOdylc_TexCoord2iv
# Declared: Line 132 (Source lines: 132-138)
# Address: 0x0d9cd240 - 0x0d9cd360 (Size: 288 bytes, Frame: 48)
.globl __glOdylc_TexCoord2iv
.ent __glOdylc_TexCoord2iv
__glOdylc_TexCoord2iv:
    # Line 133
    lw	$a3,4136($zero)
    # Line 132
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 133
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 132
    lui	$v0,0x13
    # Line 133
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 132
    addiu	$v0,$v0,-19632
    sd	$gp,8($sp)
    # Line 133
    beqz	$at,.L0d9cd314
    # Line 132
    addu	$gp,$t9,$v0
    # Line 133
    slti	$v1,$a3,3
    beqz	$v1,.L0d9cd30c
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cd288:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cd338
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cd2b4:
    # Line 138
    ld	$gp,8($sp)
.L0d9cd2b8:
    # Line 133
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 138
    ld	$s0,0($sp)
    # Line 133
    addu	$a5,$s1,$a5
    # Line 138
    ld	$s1,16($sp)
    # Line 134
    lui	$t0,0xc380
    ori	$t0,$t0,0xc820
    sw	$t0,0($a5)
    # Line 135
    lw	$a7,0($a0)
    sw	$a7,4($a5)
    # Line 136
    lw	$a6,4($a0)
    sw	$a6,8($a5)
    # Line 137
    addiu	$a5,$a5,12
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 133
    addiu	$a4,$a4,-3
    # Line 137
    sw	$a4,4136($zero)
    # Line 138
    addiu	$sp,$sp,48
    # Line 137
    addiu	$a3,$a3,3
    # Line 138
    jr	$ra
    # Line 137
    sw	$a3,4148($zero)
.L0d9cd30c:
    b	.L0d9cd2b8
    # Line 138
    ld	$gp,8($sp)
.L0d9cd314:
    # Line 133
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,3
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cd2b4
    nop
    sd	$a0,24($sp)
    b	.L0d9cd288
    sd	$ra,32($sp)
.L0d9cd338:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 138
    ld	$gp,8($sp)
    # Line 133
    lw	$t8,4136($zero)
    # Line 138
    ld	$s0,0($sp)
    # Line 133
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 138
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2iv

# Function: __glOdylc_TexCoord2s
# Declared: Line 141 (Source lines: 141-147)
# Address: 0x0d9cd360 - 0x0d9cd484 (Size: 292 bytes, Frame: 48)
.globl __glOdylc_TexCoord2s
.ent __glOdylc_TexCoord2s
__glOdylc_TexCoord2s:
    # Line 142
    lw	$a4,4136($zero)
    # Line 141
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 142
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 141
    lui	$v0,0x13
    # Line 142
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 141
    addiu	$v0,$v0,-19920
    sd	$gp,16($sp)
    # Line 142
    beqz	$at,.L0d9cd434
    # Line 141
    addu	$gp,$t9,$v0
    # Line 142
    slti	$v1,$a4,3
    beqz	$v1,.L0d9cd42c
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    move	$s0,$zero
    sd	$ra,40($sp)
.L0d9cd3ac:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    li	$a3,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cd45c
    move	$a4,$v0
    lw	$s1,4144($zero)
    andi	$a2,$s1,0x4
    movn	$s0,$a3,$a2
.L0d9cd3dc:
    # Line 147
    ld	$gp,16($sp)
.L0d9cd3e0:
    # Line 142
    subu	$a5,$a4,$s0
    sll	$a6,$s0,0x2
    # Line 147
    ld	$s0,0($sp)
    # Line 142
    addu	$a6,$s1,$a6
    # Line 147
    ld	$s1,8($sp)
    # Line 143
    lui	$a7,0xc380
    ori	$a7,$a7,0xc820
    sw	$a7,0($a6)
    # Line 144
    sw	$a0,4($a6)
    # Line 145
    sw	$a1,8($a6)
    # Line 146
    addiu	$a6,$a6,12
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    # Line 142
    addiu	$a5,$a5,-3
    # Line 146
    sw	$a5,4136($zero)
    # Line 147
    addiu	$sp,$sp,48
    # Line 146
    addiu	$a4,$a4,3
    # Line 147
    jr	$ra
    # Line 146
    sw	$a4,4148($zero)
.L0d9cd42c:
    b	.L0d9cd3e0
    # Line 147
    ld	$gp,16($sp)
.L0d9cd434:
    # Line 142
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a7,$s0,3
    slt	$a7,$a4,$a7
    beqz	$a7,.L0d9cd3dc
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    b	.L0d9cd3ac
    sd	$ra,40($sp)
.L0d9cd45c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 147
    ld	$gp,16($sp)
    # Line 142
    lw	$t8,4136($zero)
    # Line 147
    ld	$s0,0($sp)
    # Line 142
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 147
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2s

# Function: __glOdylc_TexCoord2sv
# Declared: Line 150 (Source lines: 150-156)
# Address: 0x0d9cd490 - 0x0d9cd5b0 (Size: 288 bytes, Frame: 48)
.globl __glOdylc_TexCoord2sv
.ent __glOdylc_TexCoord2sv
__glOdylc_TexCoord2sv:
    # Line 151
    lw	$a3,4136($zero)
    # Line 150
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 151
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 150
    lui	$v0,0x13
    # Line 151
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 150
    addiu	$v0,$v0,-20224
    sd	$gp,8($sp)
    # Line 151
    beqz	$at,.L0d9cd564
    # Line 150
    addu	$gp,$t9,$v0
    # Line 151
    slti	$v1,$a3,3
    beqz	$v1,.L0d9cd55c
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cd4d8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cd588
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cd504:
    # Line 156
    ld	$gp,8($sp)
.L0d9cd508:
    # Line 151
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 156
    ld	$s0,0($sp)
    # Line 151
    addu	$a5,$s1,$a5
    # Line 156
    ld	$s1,16($sp)
    # Line 152
    lui	$t0,0xc380
    ori	$t0,$t0,0xc820
    sw	$t0,0($a5)
    # Line 153
    lh	$a7,0($a0)
    sw	$a7,4($a5)
    # Line 154
    lh	$a6,2($a0)
    sw	$a6,8($a5)
    # Line 155
    addiu	$a5,$a5,12
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 151
    addiu	$a4,$a4,-3
    # Line 155
    sw	$a4,4136($zero)
    # Line 156
    addiu	$sp,$sp,48
    # Line 155
    addiu	$a3,$a3,3
    # Line 156
    jr	$ra
    # Line 155
    sw	$a3,4148($zero)
.L0d9cd55c:
    b	.L0d9cd508
    # Line 156
    ld	$gp,8($sp)
.L0d9cd564:
    # Line 151
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,3
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cd504
    nop
    sd	$a0,24($sp)
    b	.L0d9cd4d8
    sd	$ra,32($sp)
.L0d9cd588:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 156
    ld	$gp,8($sp)
    # Line 151
    lw	$t8,4136($zero)
    # Line 156
    ld	$s0,0($sp)
    # Line 151
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 156
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord2sv

# Function: __glOdylc_TexCoord3d
# Declared: Line 159 (Source lines: 159-166)
# Address: 0x0d9cd5b0 - 0x0d9cd6fc (Size: 332 bytes, Frame: 192)
.globl __glOdylc_TexCoord3d
.ent __glOdylc_TexCoord3d
__glOdylc_TexCoord3d:
    # Line 160
    lw	$a2,4136($zero)
    # Line 159
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 160
    lw	$at,4148($zero)
    # Line 159
    mov.d	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x13
    mov.d	$f5,$f13
    # Line 160
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 159
    addiu	$v0,$v0,-20512
    mov.d	$f6,$f12
    sd	$gp,8($sp)
    # Line 160
    beqz	$at,.L0d9cd6a8
    # Line 159
    addu	$gp,$t9,$v0
    # Line 160
    slti	$v1,$a2,4
    beqz	$v1,.L0d9cd6a0
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9cd60c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a1,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d9cd6d4
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9cd640:
    # Line 166
    ld	$gp,8($sp)
.L0d9cd644:
    # Line 160
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 166
    ld	$s0,0($sp)
    # Line 160
    addu	$a4,$s1,$a4
    # Line 166
    ld	$s1,16($sp)
    # Line 161
    lui	$a5,0xc380
    # Line 162
    cvt.s.d	$f2,$f6
    # Line 161
    ori	$a5,$a5,0xcc23
    sw	$a5,0($a4)
    # Line 163
    cvt.s.d	$f1,$f5
    # Line 162
    swc1	$f2,4($a4)
    # Line 164
    cvt.s.d	$f0,$f4
    # Line 163
    swc1	$f1,8($a4)
    # Line 164
    swc1	$f0,12($a4)
    # Line 165
    addiu	$a4,$a4,16
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 160
    addiu	$a3,$a3,-4
    # Line 165
    sw	$a3,4136($zero)
    # Line 166
    addiu	$sp,$sp,64
    # Line 165
    addiu	$a2,$a2,4
    # Line 166
    jr	$ra
    # Line 165
    sw	$a2,4148($zero)
.L0d9cd6a0:
    b	.L0d9cd644
    # Line 166
    ld	$gp,8($sp)
.L0d9cd6a8:
    # Line 160
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,4
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9cd640
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d9cd60c
    sd	$ra,48($sp)
.L0d9cd6d4:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 166
    ld	$gp,8($sp)
    # Line 160
    lw	$t8,4136($zero)
    # Line 166
    ld	$s0,0($sp)
    # Line 160
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 166
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord3d

# Function: __glOdylc_TexCoord3dv
# Declared: Line 169 (Source lines: 169-176)
# Address: 0x0d9cd700 - 0x0d9cd834 (Size: 308 bytes, Frame: 48)
.globl __glOdylc_TexCoord3dv
.ent __glOdylc_TexCoord3dv
__glOdylc_TexCoord3dv:
    # Line 170
    lw	$a3,4136($zero)
    # Line 169
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 170
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 169
    lui	$v0,0x13
    # Line 170
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 169
    addiu	$v0,$v0,-20848
    sd	$gp,8($sp)
    # Line 170
    beqz	$at,.L0d9cd7e8
    # Line 169
    addu	$gp,$t9,$v0
    # Line 170
    slti	$v1,$a3,4
    beqz	$v1,.L0d9cd7e0
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cd748:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cd80c
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9cd778:
    # Line 171
    lui	$a6,0xc380
    # Line 170
    addu	$a5,$s1,$a5
    # Line 171
    ori	$a6,$a6,0xcc23
    sw	$a6,0($a5)
    # Line 172
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($a5)
    # Line 173
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($a5)
    # Line 174
    ldc1	$f0,16($a0)
    # Line 176
    ld	$gp,8($sp)
    # Line 170
    subu	$a4,$a3,$s0
    # Line 176
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 174
    cvt.s.d	$f0,$f0
    swc1	$f0,12($a5)
    # Line 175
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 170
    addiu	$a4,$a4,-4
    # Line 175
    sw	$a4,4136($zero)
    # Line 176
    addiu	$sp,$sp,48
    # Line 175
    addiu	$a3,$a3,4
    # Line 176
    jr	$ra
    # Line 175
    sw	$a3,4148($zero)
.L0d9cd7e0:
    b	.L0d9cd778
    # Line 170
    sll	$a5,$s0,0x2
.L0d9cd7e8:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cd778
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9cd748
    sd	$ra,32($sp)
.L0d9cd80c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 176
    ld	$gp,8($sp)
    # Line 170
    lw	$t8,4136($zero)
    # Line 176
    ld	$s0,0($sp)
    # Line 170
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 176
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord3dv

# Function: __glOdylc_TexCoord3f
# Declared: Line 179 (Source lines: 179-186)
# Address: 0x0d9cd840 - 0x0d9cd980 (Size: 320 bytes, Frame: 192)
.globl __glOdylc_TexCoord3f
.ent __glOdylc_TexCoord3f
__glOdylc_TexCoord3f:
    # Line 180
    lw	$a2,4136($zero)
    # Line 179
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 180
    lw	$at,4148($zero)
    # Line 179
    mov.s	$f4,$f14
    sd	$s0,0($sp)
    lui	$v0,0x13
    mov.s	$f5,$f13
    # Line 180
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 179
    addiu	$v0,$v0,-21168
    mov.s	$f6,$f12
    sd	$gp,8($sp)
    # Line 180
    beqz	$at,.L0d9cd92c
    # Line 179
    addu	$gp,$t9,$v0
    # Line 180
    slti	$v1,$a2,4
    beqz	$v1,.L0d9cd924
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9cd89c:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    li	$a1,1
    ldc1	$f6,24($sp)
    beqz	$v0,.L0d9cd958
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9cd8d0:
    # Line 186
    ld	$gp,8($sp)
.L0d9cd8d4:
    # Line 180
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 186
    ld	$s0,0($sp)
    # Line 180
    addu	$a4,$s1,$a4
    # Line 186
    ld	$s1,16($sp)
    # Line 181
    lui	$a5,0xc380
    ori	$a5,$a5,0xcc23
    sw	$a5,0($a4)
    # Line 182
    swc1	$f6,4($a4)
    # Line 183
    swc1	$f5,8($a4)
    # Line 184
    swc1	$f4,12($a4)
    # Line 185
    addiu	$a4,$a4,16
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 180
    addiu	$a3,$a3,-4
    # Line 185
    sw	$a3,4136($zero)
    # Line 186
    addiu	$sp,$sp,64
    # Line 185
    addiu	$a2,$a2,4
    # Line 186
    jr	$ra
    # Line 185
    sw	$a2,4148($zero)
.L0d9cd924:
    b	.L0d9cd8d4
    # Line 186
    ld	$gp,8($sp)
.L0d9cd92c:
    # Line 180
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,4
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9cd8d0
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    b	.L0d9cd89c
    sd	$ra,48($sp)
.L0d9cd958:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 186
    ld	$gp,8($sp)
    # Line 180
    lw	$t8,4136($zero)
    # Line 186
    ld	$s0,0($sp)
    # Line 180
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 186
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord3f

# Function: __glOdylc_TexCoord3fv
# Declared: Line 189 (Source lines: 189-196)
# Address: 0x0d9cd980 - 0x0d9cdaa8 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_TexCoord3fv
.ent __glOdylc_TexCoord3fv
__glOdylc_TexCoord3fv:
    # Line 190
    lw	$a3,4136($zero)
    # Line 189
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 190
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 189
    lui	$v0,0x13
    # Line 190
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 189
    addiu	$v0,$v0,-21488
    sd	$gp,8($sp)
    # Line 190
    beqz	$at,.L0d9cda5c
    # Line 189
    addu	$gp,$t9,$v0
    # Line 190
    slti	$v1,$a3,4
    beqz	$v1,.L0d9cda54
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cd9c8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cda80
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9cd9f8:
    # Line 191
    lui	$a6,0xc380
    # Line 190
    addu	$a5,$s1,$a5
    # Line 191
    ori	$a6,$a6,0xcc23
    sw	$a6,0($a5)
    # Line 192
    lwc1	$f2,0($a0)
    # Line 196
    ld	$gp,8($sp)
    # Line 192
    swc1	$f2,4($a5)
    # Line 193
    lwc1	$f1,4($a0)
    # Line 190
    subu	$a4,$a3,$s0
    # Line 196
    ld	$s0,0($sp)
    # Line 193
    swc1	$f1,8($a5)
    # Line 194
    lwc1	$f0,8($a0)
    # Line 196
    ld	$s1,16($sp)
    # Line 194
    swc1	$f0,12($a5)
    # Line 195
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 190
    addiu	$a4,$a4,-4
    # Line 195
    sw	$a4,4136($zero)
    # Line 196
    addiu	$sp,$sp,48
    # Line 195
    addiu	$a3,$a3,4
    # Line 196
    jr	$ra
    # Line 195
    sw	$a3,4148($zero)
.L0d9cda54:
    b	.L0d9cd9f8
    # Line 190
    sll	$a5,$s0,0x2
.L0d9cda5c:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cd9f8
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9cd9c8
    sd	$ra,32($sp)
.L0d9cda80:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 196
    ld	$gp,8($sp)
    # Line 190
    lw	$t8,4136($zero)
    # Line 196
    ld	$s0,0($sp)
    # Line 190
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 196
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord3fv

# Function: __glOdylc_TexCoord3i
# Declared: Line 199 (Source lines: 199-206)
# Address: 0x0d9cdab0 - 0x0d9cdbe4 (Size: 308 bytes, Frame: 192)
.globl __glOdylc_TexCoord3i
.ent __glOdylc_TexCoord3i
__glOdylc_TexCoord3i:
    # Line 200
    lw	$a5,4136($zero)
    # Line 199
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 200
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 199
    lui	$v0,0x13
    # Line 200
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 199
    addiu	$v0,$v0,-21792
    sd	$gp,16($sp)
    # Line 200
    beqz	$at,.L0d9cdb90
    # Line 199
    addu	$gp,$t9,$v0
    # Line 200
    slti	$v1,$a5,4
    beqz	$v1,.L0d9cdb88
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9cdb00:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$a4,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cdbbc
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a3,$s1,0x4
    movn	$s0,$a4,$a3
.L0d9cdb34:
    # Line 206
    ld	$gp,16($sp)
.L0d9cdb38:
    # Line 200
    subu	$a6,$a5,$s0
    sll	$a7,$s0,0x2
    # Line 206
    ld	$s0,0($sp)
    # Line 200
    addu	$a7,$s1,$a7
    # Line 206
    ld	$s1,8($sp)
    # Line 201
    lui	$t0,0xc380
    ori	$t0,$t0,0xcc22
    sw	$t0,0($a7)
    # Line 202
    sw	$a0,4($a7)
    # Line 203
    sw	$a1,8($a7)
    # Line 204
    sw	$a2,12($a7)
    # Line 205
    addiu	$a7,$a7,16
    sw	$a7,4144($zero)
    lw	$a5,4148($zero)
    # Line 200
    addiu	$a6,$a6,-4
    # Line 205
    sw	$a6,4136($zero)
    # Line 206
    addiu	$sp,$sp,64
    # Line 205
    addiu	$a5,$a5,4
    # Line 206
    jr	$ra
    # Line 205
    sw	$a5,4148($zero)
.L0d9cdb88:
    b	.L0d9cdb38
    # Line 206
    ld	$gp,16($sp)
.L0d9cdb90:
    # Line 200
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t0,$s0,4
    slt	$t0,$a5,$t0
    beqz	$t0,.L0d9cdb34
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9cdb00
    sd	$ra,48($sp)
.L0d9cdbbc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 206
    ld	$gp,16($sp)
    # Line 200
    lw	$t8,4136($zero)
    # Line 206
    ld	$s0,0($sp)
    # Line 200
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 206
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord3i

# Function: __glOdylc_TexCoord3iv
# Declared: Line 209 (Source lines: 209-216)
# Address: 0x0d9cdbf0 - 0x0d9cdd18 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_TexCoord3iv
.ent __glOdylc_TexCoord3iv
__glOdylc_TexCoord3iv:
    # Line 210
    lw	$a3,4136($zero)
    # Line 209
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 210
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 209
    lui	$v0,0x13
    # Line 210
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 209
    addiu	$v0,$v0,-22112
    sd	$gp,8($sp)
    # Line 210
    beqz	$at,.L0d9cdccc
    # Line 209
    addu	$gp,$t9,$v0
    # Line 210
    slti	$v1,$a3,4
    beqz	$v1,.L0d9cdcc4
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cdc38:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cdcf0
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cdc64:
    # Line 216
    ld	$gp,8($sp)
.L0d9cdc68:
    # Line 210
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 216
    ld	$s0,0($sp)
    # Line 210
    addu	$a5,$s1,$a5
    # Line 216
    ld	$s1,16($sp)
    # Line 211
    lui	$t1,0xc380
    ori	$t1,$t1,0xcc22
    sw	$t1,0($a5)
    # Line 212
    lw	$t0,0($a0)
    sw	$t0,4($a5)
    # Line 213
    lw	$a7,4($a0)
    sw	$a7,8($a5)
    # Line 214
    lw	$a6,8($a0)
    sw	$a6,12($a5)
    # Line 215
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 210
    addiu	$a4,$a4,-4
    # Line 215
    sw	$a4,4136($zero)
    # Line 216
    addiu	$sp,$sp,48
    # Line 215
    addiu	$a3,$a3,4
    # Line 216
    jr	$ra
    # Line 215
    sw	$a3,4148($zero)
.L0d9cdcc4:
    b	.L0d9cdc68
    # Line 216
    ld	$gp,8($sp)
.L0d9cdccc:
    # Line 210
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cdc64
    nop
    sd	$a0,24($sp)
    b	.L0d9cdc38
    sd	$ra,32($sp)
.L0d9cdcf0:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 216
    ld	$gp,8($sp)
    # Line 210
    lw	$t8,4136($zero)
    # Line 216
    ld	$s0,0($sp)
    # Line 210
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 216
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord3iv

# Function: __glOdylc_TexCoord3s
# Declared: Line 219 (Source lines: 219-226)
# Address: 0x0d9cdd20 - 0x0d9cde54 (Size: 308 bytes, Frame: 192)
.globl __glOdylc_TexCoord3s
.ent __glOdylc_TexCoord3s
__glOdylc_TexCoord3s:
    # Line 220
    lw	$a5,4136($zero)
    # Line 219
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 220
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 219
    lui	$v0,0x13
    # Line 220
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 219
    addiu	$v0,$v0,-22416
    sd	$gp,16($sp)
    # Line 220
    beqz	$at,.L0d9cde00
    # Line 219
    addu	$gp,$t9,$v0
    # Line 220
    slti	$v1,$a5,4
    beqz	$v1,.L0d9cddf8
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    move	$s0,$zero
    sd	$ra,48($sp)
.L0d9cdd70:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    li	$a4,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cde2c
    move	$a5,$v0
    lw	$s1,4144($zero)
    andi	$a3,$s1,0x4
    movn	$s0,$a4,$a3
.L0d9cdda4:
    # Line 226
    ld	$gp,16($sp)
.L0d9cdda8:
    # Line 220
    subu	$a6,$a5,$s0
    sll	$a7,$s0,0x2
    # Line 226
    ld	$s0,0($sp)
    # Line 220
    addu	$a7,$s1,$a7
    # Line 226
    ld	$s1,8($sp)
    # Line 221
    lui	$t0,0xc380
    ori	$t0,$t0,0xcc22
    sw	$t0,0($a7)
    # Line 222
    sw	$a0,4($a7)
    # Line 223
    sw	$a1,8($a7)
    # Line 224
    sw	$a2,12($a7)
    # Line 225
    addiu	$a7,$a7,16
    sw	$a7,4144($zero)
    lw	$a5,4148($zero)
    # Line 220
    addiu	$a6,$a6,-4
    # Line 225
    sw	$a6,4136($zero)
    # Line 226
    addiu	$sp,$sp,64
    # Line 225
    addiu	$a5,$a5,4
    # Line 226
    jr	$ra
    # Line 225
    sw	$a5,4148($zero)
.L0d9cddf8:
    b	.L0d9cdda8
    # Line 226
    ld	$gp,16($sp)
.L0d9cde00:
    # Line 220
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t0,$s0,4
    slt	$t0,$a5,$t0
    beqz	$t0,.L0d9cdda4
    nop
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    b	.L0d9cdd70
    sd	$ra,48($sp)
.L0d9cde2c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 226
    ld	$gp,16($sp)
    # Line 220
    lw	$t8,4136($zero)
    # Line 226
    ld	$s0,0($sp)
    # Line 220
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 226
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord3s

# Function: __glOdylc_TexCoord3sv
# Declared: Line 229 (Source lines: 229-236)
# Address: 0x0d9cde60 - 0x0d9cdf88 (Size: 296 bytes, Frame: 48)
.globl __glOdylc_TexCoord3sv
.ent __glOdylc_TexCoord3sv
__glOdylc_TexCoord3sv:
    # Line 230
    lw	$a3,4136($zero)
    # Line 229
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 230
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 229
    lui	$v0,0x13
    # Line 230
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 229
    addiu	$v0,$v0,-22736
    sd	$gp,8($sp)
    # Line 230
    beqz	$at,.L0d9cdf3c
    # Line 229
    addu	$gp,$t9,$v0
    # Line 230
    slti	$v1,$a3,4
    beqz	$v1,.L0d9cdf34
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9cdea8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9cdf60
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9cded4:
    # Line 236
    ld	$gp,8($sp)
.L0d9cded8:
    # Line 230
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 236
    ld	$s0,0($sp)
    # Line 230
    addu	$a5,$s1,$a5
    # Line 236
    ld	$s1,16($sp)
    # Line 231
    lui	$t1,0xc380
    ori	$t1,$t1,0xcc22
    sw	$t1,0($a5)
    # Line 232
    lh	$t0,0($a0)
    sw	$t0,4($a5)
    # Line 233
    lh	$a7,2($a0)
    sw	$a7,8($a5)
    # Line 234
    lh	$a6,4($a0)
    sw	$a6,12($a5)
    # Line 235
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 230
    addiu	$a4,$a4,-4
    # Line 235
    sw	$a4,4136($zero)
    # Line 236
    addiu	$sp,$sp,48
    # Line 235
    addiu	$a3,$a3,4
    # Line 236
    jr	$ra
    # Line 235
    sw	$a3,4148($zero)
.L0d9cdf34:
    b	.L0d9cded8
    # Line 236
    ld	$gp,8($sp)
.L0d9cdf3c:
    # Line 230
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,4
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9cded4
    nop
    sd	$a0,24($sp)
    b	.L0d9cdea8
    sd	$ra,32($sp)
.L0d9cdf60:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 236
    ld	$gp,8($sp)
    # Line 230
    lw	$t8,4136($zero)
    # Line 236
    ld	$s0,0($sp)
    # Line 230
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 236
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord3sv

# Function: __glOdylc_TexCoord4d
# Declared: Line 239 (Source lines: 239-247)
# Address: 0x0d9cdf90 - 0x0d9ce0f4 (Size: 356 bytes, Frame: 192)
.globl __glOdylc_TexCoord4d
.ent __glOdylc_TexCoord4d
__glOdylc_TexCoord4d:
    # Line 240
    lw	$a2,4136($zero)
    # Line 239
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    mov.d	$f4,$f15
    # Line 240
    lw	$at,4148($zero)
    # Line 239
    mov.d	$f5,$f14
    sd	$s0,0($sp)
    lui	$v0,0x13
    mov.d	$f6,$f13
    # Line 240
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 239
    addiu	$v0,$v0,-23040
    mov.d	$f7,$f12
    sd	$gp,8($sp)
    # Line 240
    beqz	$at,.L0d9ce09c
    # Line 239
    addu	$gp,$t9,$v0
    # Line 240
    slti	$v1,$a2,5
    beqz	$v1,.L0d9ce094
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9cdff4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    li	$a1,1
    ldc1	$f7,24($sp)
    beqz	$v0,.L0d9ce0cc
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9ce02c:
    # Line 247
    ld	$gp,8($sp)
.L0d9ce030:
    # Line 240
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 247
    ld	$s0,0($sp)
    # Line 240
    addu	$a4,$s1,$a4
    # Line 247
    ld	$s1,16($sp)
    # Line 241
    lui	$a5,0xc380
    # Line 242
    cvt.s.d	$f3,$f7
    # Line 241
    ori	$a5,$a5,0xd025
    sw	$a5,0($a4)
    # Line 243
    cvt.s.d	$f2,$f6
    # Line 242
    swc1	$f3,4($a4)
    # Line 244
    cvt.s.d	$f1,$f5
    # Line 243
    swc1	$f2,8($a4)
    # Line 245
    cvt.s.d	$f0,$f4
    # Line 244
    swc1	$f1,12($a4)
    # Line 245
    swc1	$f0,16($a4)
    # Line 246
    addiu	$a4,$a4,20
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 240
    addiu	$a3,$a3,-5
    # Line 246
    sw	$a3,4136($zero)
    # Line 247
    addiu	$sp,$sp,64
    # Line 246
    addiu	$a2,$a2,5
    # Line 247
    jr	$ra
    # Line 246
    sw	$a2,4148($zero)
.L0d9ce094:
    b	.L0d9ce030
    # Line 247
    ld	$gp,8($sp)
.L0d9ce09c:
    # Line 240
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,5
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9ce02c
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    b	.L0d9cdff4
    sd	$ra,56($sp)
.L0d9ce0cc:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 247
    ld	$gp,8($sp)
    # Line 240
    lw	$t8,4136($zero)
    # Line 247
    ld	$s0,0($sp)
    # Line 240
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 247
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord4d

# Function: __glOdylc_TexCoord4dv
# Declared: Line 250 (Source lines: 250-258)
# Address: 0x0d9ce100 - 0x0d9ce240 (Size: 320 bytes, Frame: 48)
.globl __glOdylc_TexCoord4dv
.ent __glOdylc_TexCoord4dv
__glOdylc_TexCoord4dv:
    # Line 251
    lw	$a3,4136($zero)
    # Line 250
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 251
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 250
    lui	$v0,0x13
    # Line 251
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 250
    addiu	$v0,$v0,-23408
    sd	$gp,8($sp)
    # Line 251
    beqz	$at,.L0d9ce1f4
    # Line 250
    addu	$gp,$t9,$v0
    # Line 251
    slti	$v1,$a3,5
    beqz	$v1,.L0d9ce1ec
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ce148:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ce218
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9ce178:
    # Line 252
    lui	$a6,0xc380
    # Line 251
    addu	$a5,$s1,$a5
    # Line 252
    ori	$a6,$a6,0xd025
    sw	$a6,0($a5)
    # Line 253
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($a5)
    # Line 254
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($a5)
    # Line 255
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($a5)
    # Line 256
    ldc1	$f0,24($a0)
    # Line 258
    ld	$gp,8($sp)
    # Line 251
    subu	$a4,$a3,$s0
    # Line 258
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 256
    cvt.s.d	$f0,$f0
    swc1	$f0,16($a5)
    # Line 257
    addiu	$a5,$a5,20
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 251
    addiu	$a4,$a4,-5
    # Line 257
    sw	$a4,4136($zero)
    # Line 258
    addiu	$sp,$sp,48
    # Line 257
    addiu	$a3,$a3,5
    # Line 258
    jr	$ra
    # Line 257
    sw	$a3,4148($zero)
.L0d9ce1ec:
    b	.L0d9ce178
    # Line 251
    sll	$a5,$s0,0x2
.L0d9ce1f4:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,5
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9ce178
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9ce148
    sd	$ra,32($sp)
.L0d9ce218:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 258
    ld	$gp,8($sp)
    # Line 251
    lw	$t8,4136($zero)
    # Line 258
    ld	$s0,0($sp)
    # Line 251
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 258
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord4dv

# Function: __glOdylc_TexCoord4f
# Declared: Line 261 (Source lines: 261-269)
# Address: 0x0d9ce240 - 0x0d9ce394 (Size: 340 bytes, Frame: 192)
.globl __glOdylc_TexCoord4f
.ent __glOdylc_TexCoord4f
__glOdylc_TexCoord4f:
    # Line 262
    lw	$a2,4136($zero)
    # Line 261
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    mov.s	$f4,$f15
    # Line 262
    lw	$at,4148($zero)
    # Line 261
    mov.s	$f5,$f14
    sd	$s0,0($sp)
    lui	$v0,0x13
    mov.s	$f6,$f13
    # Line 262
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 261
    addiu	$v0,$v0,-23728
    mov.s	$f7,$f12
    sd	$gp,8($sp)
    # Line 262
    beqz	$at,.L0d9ce33c
    # Line 261
    addu	$gp,$t9,$v0
    # Line 262
    slti	$v1,$a2,5
    beqz	$v1,.L0d9ce334
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9ce2a4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    li	$a1,1
    ldc1	$f7,24($sp)
    beqz	$v0,.L0d9ce36c
    move	$a2,$v0
    lw	$s1,4144($zero)
    andi	$a0,$s1,0x4
    movn	$s0,$a1,$a0
.L0d9ce2dc:
    # Line 269
    ld	$gp,8($sp)
.L0d9ce2e0:
    # Line 262
    subu	$a3,$a2,$s0
    sll	$a4,$s0,0x2
    # Line 269
    ld	$s0,0($sp)
    # Line 262
    addu	$a4,$s1,$a4
    # Line 269
    ld	$s1,16($sp)
    # Line 263
    lui	$a5,0xc380
    ori	$a5,$a5,0xd025
    sw	$a5,0($a4)
    # Line 264
    swc1	$f7,4($a4)
    # Line 265
    swc1	$f6,8($a4)
    # Line 266
    swc1	$f5,12($a4)
    # Line 267
    swc1	$f4,16($a4)
    # Line 268
    addiu	$a4,$a4,20
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    # Line 262
    addiu	$a3,$a3,-5
    # Line 268
    sw	$a3,4136($zero)
    # Line 269
    addiu	$sp,$sp,64
    # Line 268
    addiu	$a2,$a2,5
    # Line 269
    jr	$ra
    # Line 268
    sw	$a2,4148($zero)
.L0d9ce334:
    b	.L0d9ce2e0
    # Line 269
    ld	$gp,8($sp)
.L0d9ce33c:
    # Line 262
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a5,$s0,5
    slt	$a5,$a2,$a5
    beqz	$a5,.L0d9ce2dc
    nop
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    sdc1	$f14,40($sp)
    sdc1	$f15,48($sp)
    b	.L0d9ce2a4
    sd	$ra,56($sp)
.L0d9ce36c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 269
    ld	$gp,8($sp)
    # Line 262
    lw	$t8,4136($zero)
    # Line 269
    ld	$s0,0($sp)
    # Line 262
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 269
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord4f

# Function: __glOdylc_TexCoord4fv
# Declared: Line 272 (Source lines: 272-280)
# Address: 0x0d9ce3a0 - 0x0d9ce4d0 (Size: 304 bytes, Frame: 48)
.globl __glOdylc_TexCoord4fv
.ent __glOdylc_TexCoord4fv
__glOdylc_TexCoord4fv:
    # Line 273
    lw	$a3,4136($zero)
    # Line 272
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 273
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 272
    lui	$v0,0x13
    # Line 273
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 272
    addiu	$v0,$v0,-24080
    sd	$gp,8($sp)
    # Line 273
    beqz	$at,.L0d9ce484
    # Line 272
    addu	$gp,$t9,$v0
    # Line 273
    slti	$v1,$a3,5
    beqz	$v1,.L0d9ce47c
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ce3e8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ce4a8
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
    sll	$a5,$s0,0x2
.L0d9ce418:
    # Line 274
    lui	$a6,0xc380
    # Line 273
    addu	$a5,$s1,$a5
    # Line 274
    ori	$a6,$a6,0xd025
    sw	$a6,0($a5)
    # Line 275
    lwc1	$f3,0($a0)
    swc1	$f3,4($a5)
    # Line 276
    lwc1	$f2,4($a0)
    # Line 280
    ld	$gp,8($sp)
    # Line 276
    swc1	$f2,8($a5)
    # Line 277
    lwc1	$f1,8($a0)
    # Line 273
    subu	$a4,$a3,$s0
    # Line 280
    ld	$s0,0($sp)
    # Line 277
    swc1	$f1,12($a5)
    # Line 278
    lwc1	$f0,12($a0)
    # Line 280
    ld	$s1,16($sp)
    # Line 278
    swc1	$f0,16($a5)
    # Line 279
    addiu	$a5,$a5,20
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 273
    addiu	$a4,$a4,-5
    # Line 279
    sw	$a4,4136($zero)
    # Line 280
    addiu	$sp,$sp,48
    # Line 279
    addiu	$a3,$a3,5
    # Line 280
    jr	$ra
    # Line 279
    sw	$a3,4148($zero)
.L0d9ce47c:
    b	.L0d9ce418
    # Line 273
    sll	$a5,$s0,0x2
.L0d9ce484:
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,5
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9ce418
    sll	$a5,$s0,0x2
    sd	$a0,24($sp)
    b	.L0d9ce3e8
    sd	$ra,32($sp)
.L0d9ce4a8:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 280
    ld	$gp,8($sp)
    # Line 273
    lw	$t8,4136($zero)
    # Line 280
    ld	$s0,0($sp)
    # Line 273
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 280
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord4fv

# Function: __glOdylc_TexCoord4i
# Declared: Line 283 (Source lines: 283-291)
# Address: 0x0d9ce4d0 - 0x0d9ce614 (Size: 324 bytes, Frame: 192)
.globl __glOdylc_TexCoord4i
.ent __glOdylc_TexCoord4i
__glOdylc_TexCoord4i:
    # Line 284
    lw	$a6,4136($zero)
    # Line 283
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 284
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 283
    lui	$v0,0x13
    # Line 284
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 283
    addiu	$v0,$v0,-24384
    sd	$gp,8($sp)
    # Line 284
    beqz	$at,.L0d9ce5bc
    # Line 283
    addu	$gp,$t9,$v0
    # Line 284
    slti	$v1,$a6,5
    beqz	$v1,.L0d9ce5b4
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9ce524:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$a5,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ce5ec
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9ce55c:
    # Line 291
    ld	$gp,8($sp)
.L0d9ce560:
    # Line 284
    subu	$a7,$a6,$s0
    sll	$t0,$s0,0x2
    # Line 291
    ld	$s0,0($sp)
    # Line 284
    addu	$t0,$s1,$t0
    # Line 291
    ld	$s1,16($sp)
    # Line 285
    lui	$t1,0xc380
    ori	$t1,$t1,0xd024
    sw	$t1,0($t0)
    # Line 286
    sw	$a0,4($t0)
    # Line 287
    sw	$a1,8($t0)
    # Line 288
    sw	$a2,12($t0)
    # Line 289
    sw	$a3,16($t0)
    # Line 290
    addiu	$t0,$t0,20
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 284
    addiu	$a7,$a7,-5
    # Line 290
    sw	$a7,4136($zero)
    # Line 291
    addiu	$sp,$sp,64
    # Line 290
    addiu	$a6,$a6,5
    # Line 291
    jr	$ra
    # Line 290
    sw	$a6,4148($zero)
.L0d9ce5b4:
    b	.L0d9ce560
    # Line 291
    ld	$gp,8($sp)
.L0d9ce5bc:
    # Line 284
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,5
    slt	$t1,$a6,$t1
    beqz	$t1,.L0d9ce55c
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d9ce524
    sd	$ra,56($sp)
.L0d9ce5ec:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 291
    ld	$gp,8($sp)
    # Line 284
    lw	$t8,4136($zero)
    # Line 291
    ld	$s0,0($sp)
    # Line 284
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 291
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord4i

# Function: __glOdylc_TexCoord4iv
# Declared: Line 294 (Source lines: 294-302)
# Address: 0x0d9ce620 - 0x0d9ce750 (Size: 304 bytes, Frame: 48)
.globl __glOdylc_TexCoord4iv
.ent __glOdylc_TexCoord4iv
__glOdylc_TexCoord4iv:
    # Line 295
    lw	$a3,4136($zero)
    # Line 294
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 295
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 294
    lui	$v0,0x13
    # Line 295
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 294
    addiu	$v0,$v0,-24720
    sd	$gp,8($sp)
    # Line 295
    beqz	$at,.L0d9ce704
    # Line 294
    addu	$gp,$t9,$v0
    # Line 295
    slti	$v1,$a3,5
    beqz	$v1,.L0d9ce6fc
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ce668:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ce728
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9ce694:
    # Line 302
    ld	$gp,8($sp)
.L0d9ce698:
    # Line 295
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 302
    ld	$s0,0($sp)
    # Line 295
    addu	$a5,$s1,$a5
    # Line 302
    ld	$s1,16($sp)
    # Line 296
    lui	$t2,0xc380
    ori	$t2,$t2,0xd024
    sw	$t2,0($a5)
    # Line 297
    lw	$t1,0($a0)
    sw	$t1,4($a5)
    # Line 298
    lw	$t0,4($a0)
    sw	$t0,8($a5)
    # Line 299
    lw	$a7,8($a0)
    sw	$a7,12($a5)
    # Line 300
    lw	$a6,12($a0)
    sw	$a6,16($a5)
    # Line 301
    addiu	$a5,$a5,20
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 295
    addiu	$a4,$a4,-5
    # Line 301
    sw	$a4,4136($zero)
    # Line 302
    addiu	$sp,$sp,48
    # Line 301
    addiu	$a3,$a3,5
    # Line 302
    jr	$ra
    # Line 301
    sw	$a3,4148($zero)
.L0d9ce6fc:
    b	.L0d9ce698
    # Line 302
    ld	$gp,8($sp)
.L0d9ce704:
    # Line 295
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,5
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9ce694
    nop
    sd	$a0,24($sp)
    b	.L0d9ce668
    sd	$ra,32($sp)
.L0d9ce728:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 302
    ld	$gp,8($sp)
    # Line 295
    lw	$t8,4136($zero)
    # Line 302
    ld	$s0,0($sp)
    # Line 295
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 302
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdylc_TexCoord4iv

# Function: __glOdylc_TexCoord4s
# Declared: Line 305 (Source lines: 305-313)
# Address: 0x0d9ce750 - 0x0d9ce894 (Size: 324 bytes, Frame: 192)
.globl __glOdylc_TexCoord4s
.ent __glOdylc_TexCoord4s
__glOdylc_TexCoord4s:
    # Line 306
    lw	$a6,4136($zero)
    # Line 305
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 306
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 305
    lui	$v0,0x13
    # Line 306
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 305
    addiu	$v0,$v0,-25024
    sd	$gp,8($sp)
    # Line 306
    beqz	$at,.L0d9ce83c
    # Line 305
    addu	$gp,$t9,$v0
    # Line 306
    slti	$v1,$a6,5
    beqz	$v1,.L0d9ce834
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    move	$s0,$zero
    sd	$ra,56($sp)
.L0d9ce7a4:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ld	$a2,48($sp)
    ld	$a1,40($sp)
    ld	$a3,32($sp)
    li	$a5,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ce86c
    move	$a6,$v0
    lw	$s1,4144($zero)
    andi	$a4,$s1,0x4
    movn	$s0,$a5,$a4
.L0d9ce7dc:
    # Line 313
    ld	$gp,8($sp)
.L0d9ce7e0:
    # Line 306
    subu	$a7,$a6,$s0
    sll	$t0,$s0,0x2
    # Line 313
    ld	$s0,0($sp)
    # Line 306
    addu	$t0,$s1,$t0
    # Line 313
    ld	$s1,16($sp)
    # Line 307
    lui	$t1,0xc380
    ori	$t1,$t1,0xd024
    sw	$t1,0($t0)
    # Line 308
    sw	$a0,4($t0)
    # Line 309
    sw	$a1,8($t0)
    # Line 310
    sw	$a2,12($t0)
    # Line 311
    sw	$a3,16($t0)
    # Line 312
    addiu	$t0,$t0,20
    sw	$t0,4144($zero)
    lw	$a6,4148($zero)
    # Line 306
    addiu	$a7,$a7,-5
    # Line 312
    sw	$a7,4136($zero)
    # Line 313
    addiu	$sp,$sp,64
    # Line 312
    addiu	$a6,$a6,5
    # Line 313
    jr	$ra
    # Line 312
    sw	$a6,4148($zero)
.L0d9ce834:
    b	.L0d9ce7e0
    # Line 313
    ld	$gp,8($sp)
.L0d9ce83c:
    # Line 306
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$t1,$s0,5
    slt	$t1,$a6,$t1
    beqz	$t1,.L0d9ce7dc
    nop
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    b	.L0d9ce7a4
    sd	$ra,56($sp)
.L0d9ce86c:
    addiu	$t9,$s1,-4
    sw	$t9,4144($zero)
    # Line 313
    ld	$gp,8($sp)
    # Line 306
    lw	$t8,4136($zero)
    # Line 313
    ld	$s0,0($sp)
    # Line 306
    addiu	$s1,$t8,1
    sw	$s1,4136($zero)
    # Line 313
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdylc_TexCoord4s

# Function: __glOdylc_TexCoord4sv
# Declared: Line 316 (Source lines: 316-324)
# Address: 0x0d9ce8a0 - 0x0d9ce9d0 (Size: 304 bytes, Frame: 48)
.globl __glOdylc_TexCoord4sv
.ent __glOdylc_TexCoord4sv
__glOdylc_TexCoord4sv:
    # Line 317
    lw	$a3,4136($zero)
    # Line 316
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 317
    lw	$at,4148($zero)
    sd	$s0,0($sp)
    # Line 316
    lui	$v0,0x13
    # Line 317
    move	$s0,$zero
    lw	$s1,4144($zero)
    # Line 316
    addiu	$v0,$v0,-25360
    sd	$gp,8($sp)
    # Line 317
    beqz	$at,.L0d9ce984
    # Line 316
    addu	$gp,$t9,$v0
    # Line 317
    slti	$v1,$a3,5
    beqz	$v1,.L0d9ce97c
    nop
    sd	$a0,24($sp)
    move	$s0,$zero
    sd	$ra,32($sp)
.L0d9ce8e8:
    # lw $t9, -28844($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    li	$a2,1
    ld	$a0,24($sp)
    beqz	$v0,.L0d9ce9a8
    move	$a3,$v0
    lw	$s1,4144($zero)
    andi	$a1,$s1,0x4
    movn	$s0,$a2,$a1
.L0d9ce914:
    # Line 324
    ld	$gp,8($sp)
.L0d9ce918:
    # Line 317
    subu	$a4,$a3,$s0
    sll	$a5,$s0,0x2
    # Line 324
    ld	$s0,0($sp)
    # Line 317
    addu	$a5,$s1,$a5
    # Line 324
    ld	$s1,16($sp)
    # Line 318
    lui	$t2,0xc380
    ori	$t2,$t2,0xd024
    sw	$t2,0($a5)
    # Line 319
    lh	$t1,0($a0)
    sw	$t1,4($a5)
    # Line 320
    lh	$t0,2($a0)
    sw	$t0,8($a5)
    # Line 321
    lh	$a7,4($a0)
    sw	$a7,12($a5)
    # Line 322
    lh	$a6,6($a0)
    sw	$a6,16($a5)
    # Line 323
    addiu	$a5,$a5,20
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    # Line 317
    addiu	$a4,$a4,-5
    # Line 323
    sw	$a4,4136($zero)
    # Line 324
    addiu	$sp,$sp,48
    # Line 323
    addiu	$a3,$a3,5
    # Line 324
    jr	$ra
    # Line 323
    sw	$a3,4148($zero)
.L0d9ce97c:
    b	.L0d9ce918
    # Line 324
    ld	$gp,8($sp)
.L0d9ce984:
    # Line 317
    andi	$s0,$s1,0x4
    sltu	$s0,$zero,$s0
    addiu	$a6,$s0,5
    slt	$a6,$a3,$a6
    beqz	$a6,.L0d9ce914
    nop
    sd	$a0,24($sp)
    b	.L0d9ce8e8
    sd	$ra,32($sp)
.L0d9ce9a8:
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
.end __glOdylc_TexCoord4sv

