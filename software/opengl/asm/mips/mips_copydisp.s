# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_copydisp.s
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glMipsCopyDispatch
# Declared: Line 35 (Source lines: 35-173)
# Address: 0x0dacd380 - 0x0dacd480 (Size: 256 bytes, Frame: 0)
.globl __glMipsCopyDispatch
.ent __glMipsCopyDispatch
__glMipsCopyDispatch:
    # Line 35
    li	$v0,0x1c5
.L0dacd384:
    # Line 63
    ldc1	$f0,0($a0)
    # Line 64
    ldc1	$f2,8($a0)
    # Line 65
    ldc1	$f4,16($a0)
    # Line 66
    ldc1	$f6,24($a0)
    # Line 67
    ldc1	$f8,32($a0)
    # Line 68
    ldc1	$f10,40($a0)
    # Line 69
    ldc1	$f12,48($a0)
    # Line 70
    ldc1	$f14,56($a0)
    # Line 71
    ldc1	$f16,64($a0)
    # Line 72
    ldc1	$f18,72($a0)
    # Line 74
    addiu	$v0,$v0,-20
    # Line 97
    sdc1	$f0,0($a1)
    # Line 98
    sdc1	$f2,8($a1)
    # Line 99
    sdc1	$f4,16($a1)
    # Line 100
    sdc1	$f6,24($a1)
    # Line 101
    sdc1	$f8,32($a1)
    # Line 102
    sdc1	$f10,40($a1)
    # Line 103
    sdc1	$f12,48($a1)
    # Line 104
    sdc1	$f14,56($a1)
    # Line 105
    sdc1	$f16,64($a1)
    # Line 106
    sdc1	$f18,72($a1)
    # Line 114
    addiu	$a0,$a0,80
    # Line 115
    bgtz	$v0,.L0dacd384
    # Line 116
    addiu	$a1,$a1,80
    # Line 122
    addi	$v0,$v0,19
    # Line 137
    li	$at,2
    beq	$v0,$at,.L0dacd474
    ldc1	$f0,0($a0)
    # Line 138
    li	$at,4
    beq	$v0,$at,.L0dacd470
    ldc1	$f2,8($a0)
    # Line 139
    li	$at,6
    beq	$v0,$at,.L0dacd46c
    ldc1	$f4,16($a0)
    # Line 140
    li	$at,8
    beq	$v0,$at,.L0dacd468
    ldc1	$f6,24($a0)
    # Line 141
    li	$at,10
    beq	$v0,$at,.L0dacd464
    ldc1	$f8,32($a0)
    # Line 142
    li	$at,12
    beq	$v0,$at,.L0dacd460
    ldc1	$f10,40($a0)
    # Line 143
    li	$at,14
    beq	$v0,$at,.L0dacd45c
    ldc1	$f12,48($a0)
    # Line 144
    li	$at,16
    beq	$v0,$at,.L0dacd458
    ldc1	$f14,56($a0)
    # Line 145
    li	$at,18
    beq	$v0,$at,.L0dacd454
    ldc1	$f16,64($a0)
.L0dacd454:
    # Line 161
    sdc1	$f16,64($a1)
.L0dacd458:
    # Line 162
    sdc1	$f14,56($a1)
.L0dacd45c:
    # Line 163
    sdc1	$f12,48($a1)
.L0dacd460:
    # Line 164
    sdc1	$f10,40($a1)
.L0dacd464:
    # Line 165
    sdc1	$f8,32($a1)
.L0dacd468:
    # Line 166
    sdc1	$f6,24($a1)
.L0dacd46c:
    # Line 167
    sdc1	$f4,16($a1)
.L0dacd470:
    # Line 168
    sdc1	$f2,8($a1)
.L0dacd474:
    # Line 169
    sdc1	$f0,0($a1)
    # Line 172
    jr	$ra
    # Line 173
    nop
.end __glMipsCopyDispatch

