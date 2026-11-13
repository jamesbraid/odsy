# Source: ../ODYSSEY/ody_prim.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_prim.c
# Total Functions: 4

.text

# Function: __glOdyim_Begin
# Declared: Line 23 (Source lines: 24-90)
# Address: 0x0d9c84e0 - 0x0d9c85e8 (Size: 264 bytes, Frame: 32)
.globl __glOdyim_Begin
.ent __glOdyim_Begin
__glOdyim_Begin:
    # Line 26
    lw	$a3,4112($zero)
    # Line 32
    lw	$a2,4120($zero)
    lui	$a5,0x1
    addu	$a4,$a5,$a3
    # Line 49
    li	$v1,2
    sltiu	$a1,$a2,1
    # Line 32
    lw	$v0,26980($a4)
    # Line 49
    movz	$v1,$a2,$a1
    # Line 24
    lui	$at,0x13
    movn	$a2,$v1,$v0
    addiu	$sp,$sp,-32
    addiu	$at,$at,176
    sd	$gp,16($sp)
    # Line 49
    beqz	$a2,.L0d9c854c
    # Line 24
    addu	$gp,$t9,$at
    sd	$a3,8($sp)
    # Line 49
    li	$a5,2
    sd	$a0,0($sp)
    beq	$a2,$a5,.L0d9c8590
    sd	$ra,24($sp)
    # Line 61
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
.L0d9c8540:
    # Line 90
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c854c:
    # Line 79
    lui	$a7,0x1
    # Line 62
    sltiu	$a6,$a0,10
    # Line 68
    li	$a4,1
    lui	$a2,0x2
    # Line 62
    beqz	$a6,.L0d9c85d0
    # Line 68
    addu	$a2,$a3,$a2
    li	$a6,2
    beq	$a0,$a6,.L0d9c85c8
    # Line 90
    ld	$gp,16($sp)
.L0d9c8570:
    # Line 79
    ori	$a7,$a7,0x4400
    sw	$a7,0($a5)
    sw	$a0,0($a5)
    # Line 89
    mtc1	$zero,$f0
    # Line 86
    sw	$a4,4120($zero)
    # Line 90
    addiu	$sp,$sp,32
    jr	$ra
    # Line 89
    swc1	$f0,-25192($a2)
.L0d9c8590:
    # Line 56
    ld	$a0,8($sp)
    # Line 55
    li	$t0,1
    sb	$t0,26996($a4)
    # Line 56
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    # Line 58
    ld	$t9,8($sp)
    # Line 57
    sw	$zero,4120($zero)
    # Line 58
    lw	$t9,6132($t9)
    lw	$t9,28($t9)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0d9c8540
    ld	$ra,24($sp)
.L0d9c85c8:
    # Line 72
    b	.L0d9c8570
    sb	$a4,-25138($a2)
.L0d9c85d0:
    # Line 67
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c8540
    ld	$ra,24($sp)
.end __glOdyim_Begin

# Function: __glOdyim_End
# Declared: Line 93 (Source lines: 93-116)
# Address: 0x0d9c85f0 - 0x0d9c86bc (Size: 204 bytes, Frame: 16)
.globl __glOdyim_End
.ent __glOdyim_End
__glOdyim_End:
    # Line 107
    li	$a4,250
    lui	$a3,0x1
    # Line 95
    lw	$v0,4120($zero)
    li	$a5,1
    # Line 93
    lui	$at,0x13
    # Line 95
    lw	$a2,4112($zero)
    # Line 93
    addiu	$sp,$sp,-16
    addiu	$at,$at,-96
    sd	$gp,0($sp)
    # Line 95
    beq	$v0,$a5,.L0d9c8634
    # Line 93
    addu	$gp,$t9,$at
    # Line 100
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c86b0
    ld	$ra,8($sp)
.L0d9c8634:
    # Line 107
    ori	$a6,$a3,0x443
    ori	$v1,$a3,0x4001
    sw	$v1,0($a3)
    addu	$a1,$a3,$a2
    lw	$v0,-26892($a1)
    ori	$a0,$a3,0x46
    beqz	$v0,.L0d9c8668
    # Line 116
    ld	$gp,0($sp)
    # Line 107
    sw	$zero,-26576($a1)
    sw	$a6,0($a3)
    sw	$a4,0($a3)
    sw	$a0,0($a3)
    sw	$a0,0($a3)
.L0d9c8668:
    lui	$a4,0x2
    sw	$a5,-26576($a1)
    addu	$a4,$a2,$a4
    lbu	$a7,-25138($a4)
    # Line 111
    li	$a6,250
    # Line 107
    beqz	$a7,.L0d9c86a4
    # Line 111
    lui	$a5,0x1
    sw	$zero,-26576($a1)
    ori	$a7,$a5,0x443
    sw	$a7,0($a3)
    sw	$a6,0($a3)
    ori	$a5,$a5,0x46
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    # Line 112
    sb	$zero,-25138($a4)
.L0d9c86a4:
    # Line 115
    sw	$zero,4120($zero)
    # Line 116
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c86b0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_End

# Function: __glOdysseyRect
# Declared: Line 119 (Source lines: 120-145)
# Address: 0x0d9c86c0 - 0x0d9c8790 (Size: 208 bytes, Frame: 192)
.globl __glOdysseyRect
.ent __glOdysseyRect
__glOdysseyRect:
    # Line 120
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sdc1	$f22,16($sp)
    sdc1	$f26,8($sp)
    sdc1	$f24,24($sp)
    # Line 129
    lw	$at,6132($a0)
    # Line 120
    lui	$v0,0x13
    sd	$gp,48($sp)
    addiu	$v0,$v0,-304
    mov.s	$f24,$f16
    addu	$gp,$t9,$v0
    # Line 129
    lw	$t9,28($at)
    # Line 120
    mov.s	$f26,$f15
    sdc1	$f20,0($sp)
    mov.s	$f20,$f14
    sd	$s1,32($sp)
    move	$s1,$a0
    # Line 129
    li	$a0,7
    # Line 120
    mov.s	$f22,$f13
    # Line 129
    jalr	$t9
    sd	$s0,56($sp)
    # Line 132
    lw	$s0,6132($s1)
    lw	$s0,1328($s0)
    # Line 133
    move	$t9,$s0
    mov.s	$f12,$f22
    jalr	$t9
    mov.s	$f13,$f20
    # Line 134
    move	$t9,$s0
    mov.s	$f12,$f26
    jalr	$t9
    mov.s	$f13,$f20
    # Line 135
    move	$t9,$s0
    mov.s	$f12,$f26
    ldc1	$f20,0($sp)
    jalr	$t9
    mov.s	$f13,$f24
    # Line 136
    move	$t9,$s0
    mov.s	$f12,$f22
    ldc1	$f26,8($sp)
    jalr	$t9
    mov.s	$f13,$f24
    # Line 144
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    ld	$s0,56($sp)
    ldc1	$f22,16($sp)
    jalr	$t9
    ldc1	$f24,24($sp)
    ld	$ra,40($sp)
    ld	$s1,32($sp)
    # Line 145
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOdysseyRect

# Function: __glOdyim_SoftBegin
# Declared: Line 148 (Source lines: 149-185)
# Address: 0x0d9c8790 - 0x0d9c887c (Size: 236 bytes, Frame: 32)
.globl __glOdyim_SoftBegin
.ent __glOdyim_SoftBegin
__glOdyim_SoftBegin:
    # Line 150
    lw	$a4,4112($zero)
    # Line 153
    lw	$a2,4120($zero)
    lui	$a5,0x1
    # Line 149
    move	$a3,$a0
    # Line 153
    addu	$a5,$a4,$a5
    # Line 161
    li	$v1,2
    sltiu	$a1,$a2,1
    # Line 153
    lw	$v0,26980($a5)
    # Line 174
    sltiu	$a7,$a0,10
    # Line 161
    movz	$v1,$a2,$a1
    # Line 149
    lui	$at,0x13
    movn	$a2,$v1,$v0
    addiu	$sp,$sp,-32
    addiu	$at,$at,-512
    sd	$gp,16($sp)
    # Line 161
    beqz	$a2,.L0d9c8804
    # Line 149
    addu	$gp,$t9,$at
    sd	$a4,8($sp)
    # Line 161
    li	$a6,2
    sd	$a0,0($sp)
    beq	$a2,$a6,.L0d9c8820
    sd	$ra,24($sp)
    # Line 173
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
.L0d9c87f8:
    # Line 185
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c8804:
    # Line 174
    bnez	$a7,.L0d9c8858
    sd	$ra,24($sp)
    # Line 179
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c87f8
    ld	$ra,24($sp)
.L0d9c8820:
    # Line 168
    ld	$a0,8($sp)
    # Line 167
    li	$t0,1
    sb	$t0,26996($a5)
    # Line 168
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    # Line 170
    ld	$t9,8($sp)
    # Line 169
    sw	$zero,4120($zero)
    # Line 170
    lw	$t9,6132($t9)
    lw	$t9,28($t9)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0d9c87f8
    ld	$ra,24($sp)
.L0d9c8858:
    # Line 183
    sll	$t9,$a0,0x2
    # Line 182
    li	$ra,1
    sw	$ra,4120($zero)
    # Line 183
    addu	$t9,$a4,$t9
    lw	$t9,12084($t9)
    jalr	$t9
    move	$a0,$a4
    b	.L0d9c87f8
    ld	$ra,24($sp)
.end __glOdyim_SoftBegin

