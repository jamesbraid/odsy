# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY/ody_lock.s
# Category: ODYSSEY
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glOdysseyAtomicTestAndSet
# Declared: Line 35 (Source lines: 35-74)
# Address: 0x0dacd050 - 0x0dacd0f0 (Size: 160 bytes, Frame: 0)
.globl __glOdysseyAtomicTestAndSet
.ent __glOdysseyAtomicTestAndSet
__glOdysseyAtomicTestAndSet:
.L0dacd050:
    # Line 35
    ll	$t0,0($a0)
    # Line 36
    addi	$v0,$t0,0
    # Line 37
    addi	$t1,$zero,1
    # Line 38
    sc	$t1,0($a0)
    # Line 70
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    # Line 71
    beqz	$t1,.L0dacd050
    # Line 72
    nop
    # Line 73
    jr	$ra
    # Line 74
    nop
.end __glOdysseyAtomicTestAndSet

# Function: __glOdysseyAtomicAdd
# Declared: Line 85 (Source lines: 85-124)
# Address: 0x0dacd0f0 - 0x0dacd190 (Size: 160 bytes, Frame: 0)
.globl __glOdysseyAtomicAdd
.ent __glOdysseyAtomicAdd
__glOdysseyAtomicAdd:
.L0dacd0f0:
    # Line 85
    ll	$t0,0($a0)
    # Line 86
    addi	$t1,$t0,1
    # Line 87
    addi	$v0,$t0,1
    # Line 88
    sc	$t1,0($a0)
    # Line 120
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    # Line 121
    beqz	$t1,.L0dacd0f0
    # Line 122
    nop
    # Line 123
    jr	$ra
    # Line 124
    nop
.end __glOdysseyAtomicAdd

# Function: __glOdysseyAtomicSubtract
# Declared: Line 136 (Source lines: 136-175)
# Address: 0x0dacd190 - 0x0dacd230 (Size: 160 bytes, Frame: 0)
.globl __glOdysseyAtomicSubtract
.ent __glOdysseyAtomicSubtract
__glOdysseyAtomicSubtract:
.L0dacd190:
    # Line 136
    ll	$t0,0($a0)
    # Line 137
    addi	$t1,$t0,-1
    # Line 138
    addi	$v0,$t0,-1
    # Line 139
    sc	$t1,0($a0)
    # Line 171
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    # Line 172
    beqz	$t1,.L0dacd190
    # Line 173
    nop
    # Line 174
    jr	$ra
    # Line 175
    nop
.end __glOdysseyAtomicSubtract

