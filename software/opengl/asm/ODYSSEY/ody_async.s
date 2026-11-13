# Source: ../ODYSSEY/ody_async.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_async.c
# Total Functions: 6

.text

# Function: __glOdysseyInitAsyncState
# Declared: Line 21 (Source lines: 25-25)
# Address: 0x0d956030 - 0x0d956038 (Size: 8 bytes, Frame: 0)
.globl __glOdysseyInitAsyncState
.ent __glOdysseyInitAsyncState
__glOdysseyInitAsyncState:
    # Line 25
    jr	$ra
    nop
.end __glOdysseyInitAsyncState

# Function: AsyncPollDequeue
# Declared: Line 28 (Source lines: 29-47)
# Address: 0x0d956040 - 0x0d9560e0 (Size: 160 bytes, Frame: 0)
.ent AsyncPollDequeue
AsyncPollDequeue:
    # Line 29
    lw	$a5,16400($a0)
    lw	$at,16404($a0)
    beq	$at,$a5,.L0d9560d0
    # Line 41
    move	$v0,$zero
    li	$t2,1025
    # Line 29
    sll	$a6,$a5,0x4
    addu	$a6,$a0,$a6
    ld	$v0,8($a6)
    # Line 41
    li	$at,0xffc0
    # Line 29
    sltu	$v0,$a1,$v0
    # Line 41
    dsll	$at,$at,0x10
    # Line 38
    lw	$t1,0($a6)
    # Line 29
    bnez	$v0,.L0d9560d8
    # Line 41
    ori	$at,$at,0xffd
    # Line 38
    sw	$t1,0($a2)
    # Line 39
    lw	$t0,16400($a0)
    sll	$t0,$t0,0x4
    addu	$t0,$a0,$t0
    lw	$t0,4($t0)
    sw	$t0,0($a3)
    # Line 41
    lw	$a7,16400($a0)
    addiu	$a7,$a7,1
    negu	$t9,$a7
    srl	$t3,$a7,0x1f
    movz	$t9,$a7,$t3
    multu	$t9,$at
    mfhi	$t8
    sra	$t8,$t8,0xa
    negu	$t1,$t8
    movz	$t1,$t8,$t3
    mult	$t1,$t2
    li	$v0,1
    mflo	$t0
    subu	$a7,$a7,$t0
    # Line 47
    jr	$ra
    # Line 41
    sw	$a7,16400($a0)
.L0d9560d0:
    # Line 47
    jr	$ra
    nop
.L0d9560d8:
    jr	$ra
    # Line 41
    move	$v0,$zero
.end AsyncPollDequeue

# Function: __glOdysseyAsyncCheck
# Declared: Line 51 (Source lines: 51-85)
# Address: 0x0d9560e0 - 0x0d9561f8 (Size: 280 bytes, Frame: 32)
.globl __glOdysseyAsyncCheck
.ent __glOdysseyAsyncCheck
__glOdysseyAsyncCheck:
    # Line 61
    li	$a2,8
    # Line 59
    lw	$v0,1816($a0)
    # Line 51
    addiu	$sp,$sp,-32
    # Line 61
    li	$v1,2
    # Line 51
    lui	$at,0x1a
    # Line 59
    and	$v0,$v0,$a1
    # Line 51
    addiu	$at,$at,9392
    # Line 61
    li	$a1,1
    sd	$gp,0($sp)
    beq	$v0,$v1,.L0d95616c
    # Line 51
    addu	$gp,$t9,$at
    # Line 61
    li	$v1,4
    beq	$v0,$v1,.L0d956194
    # Line 67
    lui	$a3,0x2
    # Line 61
    beq	$v0,$a1,.L0d9561b8
    # Line 71
    lui	$a3,0x2
    # Line 61
    beq	$v0,$a2,.L0d956138
    # Line 75
    lui	$a3,0x2
    # Line 79
    li	$v0,1
    # Line 85
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d956138:
    # Line 75
    lw	$a5,3656($a0)
    addu	$a3,$a0,$a3
    lw	$a4,7908($a3)
    sltu	$a5,$a4,$a5
    beqz	$a5,.L0d956158
    move	$v0,$a5
    # Line 76
    addiu	$a5,$a4,1
    sw	$a5,7908($a3)
.L0d956158:
    # Line 80
    beqz	$v0,.L0d9561dc
    # Line 83
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d956160:
    # Line 85
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95616c:
    # Line 63
    lui	$a3,0x2
    lw	$a6,3644($a0)
    addu	$a3,$a0,$a3
    lw	$a4,7900($a3)
    sltu	$a6,$a4,$a6
    # Line 64
    addiu	$a5,$a4,1
    # Line 63
    beqz	$a6,.L0d956158
    move	$v0,$a6
    # Line 64
    b	.L0d956158
    sw	$a5,7900($a3)
.L0d956194:
    # Line 67
    lw	$a6,3648($a0)
    addu	$a3,$a0,$a3
    lw	$a4,7904($a3)
    sltu	$a6,$a4,$a6
    # Line 68
    addiu	$a5,$a4,1
    # Line 67
    beqz	$a6,.L0d956158
    move	$v0,$a6
    b	.L0d956158
    # Line 68
    sw	$a5,7904($a3)
.L0d9561b8:
    # Line 71
    lw	$a6,3652($a0)
    addu	$a3,$a0,$a3
    lw	$a4,7896($a3)
    sltu	$a6,$a4,$a6
    # Line 72
    addiu	$a5,$a4,1
    # Line 71
    beqz	$a6,.L0d956158
    move	$v0,$a6
    b	.L0d956158
    # Line 72
    sw	$a5,7896($a3)
.L0d9561dc:
    sd	$v0,8($sp)
    sd	$ra,16($sp)
    # Line 83
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    b	.L0d956160
    ld	$v0,8($sp)
.end __glOdysseyAsyncCheck

# Function: __glOdysseyAsyncDropMarker
# Declared: Line 88 (Source lines: 96-165)
# Address: 0x0d956200 - 0x0d9563dc (Size: 476 bytes, Frame: 0)
.globl __glOdysseyAsyncDropMarker
.ent __glOdysseyAsyncDropMarker
__glOdysseyAsyncDropMarker:
    # Line 96
    lw	$a3,1816($a0)
    # Line 98
    li	$a6,8
    li	$at,2
    # Line 96
    and	$a3,$a3,$a1
    # Line 98
    li	$a5,1
    li	$a4,4
    beq	$a3,$at,.L0d95629c
    # Line 144
    li	$t8,0xffc0
    # Line 98
    beq	$a3,$a4,.L0d956350
    nop
    beq	$a3,$a5,.L0d95636c
    nop
    bne	$a3,$a6,.L0d956348
    # Line 121
    lui	$a3,0x2
    addu	$a3,$a0,$a3
    # Line 118
    move	$a2,$zero
    # Line 121
    sw	$zero,7912($a3)
.L0d956244:
    # Line 130
    lw	$a4,-8520($a3)
    li	$t3,0xffc0
    dsll	$t3,$t3,0x10
    addiu	$a4,$a4,1024
    negu	$t2,$a4
    srl	$t0,$a4,0x1f
    ori	$t3,$t3,0xffd
    movz	$t2,$a4,$t0
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0xa
    negu	$a6,$t1
    li	$a7,1025
    movz	$a6,$t1,$t0
    mult	$a6,$a7
    # Line 127
    lui	$a5,0x1
    ori	$a5,$a5,0x9ea8
    addu	$a5,$a0,$a5
    # Line 130
    mflo	$a6
    subu	$a4,$a4,$a6
    # Line 133
    b	.L0d95631c
    # Line 130
    sw	$a4,-8520($a3)
.L0d95629c:
    # Line 100
    lui	$a3,0x2
    addu	$a3,$a0,$a3
    lw	$a5,7900($a3)
    # Line 101
    lwu	$a2,7912($a3)
    # Line 100
    addiu	$a5,$a5,-1
    sw	$a5,7900($a3)
.L0d9562b4:
    # Line 121
    beqz	$a2,.L0d956244
    sw	$zero,7912($a3)
    # Line 133
    li	$a6,1025
    li	$a4,1
    dsll32	$a4,$a4,0x1e
    and	$a4,$a2,$a4
    beqz	$a4,.L0d956388
    # Line 138
    lui	$a5,0x1
    # Line 141
    lw	$a4,7892($a3)
    # Line 144
    dsll	$t8,$t8,0x10
    addiu	$a7,$a4,1
    negu	$t3,$a7
    srl	$t1,$a7,0x1f
    ori	$t8,$t8,0xffd
    movz	$t3,$a7,$t1
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0xa
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    mult	$t0,$a6
    # Line 138
    ori	$a5,$a5,0xdec0
    # Line 144
    mflo	$t0
    # Line 138
    addu	$a5,$a0,$a5
    # Line 144
    subu	$a7,$a7,$t0
    sw	$a7,7892($a3)
.L0d95631c:
    # Line 158
    sll	$v0,$a4,0x4
    addu	$v0,$a5,$v0
    sd	$a2,8($v0)
    # Line 160
    lw	$v1,6120($a0)
    sw	$v1,0($v0)
    # Line 161
    lw	$at,6124($a0)
    sw	$at,4($v0)
    # Line 164
    lw	$t9,0($at)
    addiu	$t9,$t9,1
    # Line 165
    jr	$ra
    # Line 164
    sw	$t9,0($at)
.L0d956348:
    # Line 165
    jr	$ra
    nop
.L0d956350:
    # Line 104
    lui	$a3,0x2
    addu	$a3,$a0,$a3
    lw	$v1,7904($a3)
    # Line 105
    lwu	$a2,7912($a3)
    # Line 104
    addiu	$v1,$v1,-1
    # Line 106
    b	.L0d9562b4
    # Line 104
    sw	$v1,7904($a3)
.L0d95636c:
    # Line 108
    lui	$a3,0x2
    addu	$a3,$a0,$a3
    lw	$a4,7896($a3)
    # Line 109
    lwu	$a2,7912($a3)
    # Line 108
    addiu	$a4,$a4,-1
    # Line 110
    b	.L0d9562b4
    # Line 108
    sw	$a4,7896($a3)
.L0d956388:
    # Line 152
    lw	$a4,-8516($a3)
    # Line 155
    li	$t8,0xffc0
    dsll	$t8,$t8,0x10
    addiu	$a7,$a4,1
    negu	$t3,$a7
    srl	$t1,$a7,0x1f
    ori	$t8,$t8,0xffd
    movz	$t3,$a7,$t1
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0xa
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    mult	$t0,$a6
    # Line 149
    lui	$a5,0x1
    ori	$a5,$a5,0x9ea8
    addu	$a5,$a0,$a5
    # Line 155
    mflo	$t0
    subu	$a7,$a7,$t0
    b	.L0d95631c
    sw	$a7,-8516($a3)
.end __glOdysseyAsyncDropMarker

# Function: __glOdyim_PollAsyncSGIX
# Declared: Line 167 (Source lines: 168-209)
# Address: 0x0d9563e0 - 0x0d956510 (Size: 304 bytes, Frame: 192)
.globl __glOdyim_PollAsyncSGIX
.ent __glOdyim_PollAsyncSGIX
__glOdyim_PollAsyncSGIX:
    # Line 168
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 174
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 168
    sd	$s2,24($sp)
    # Line 174
    li	$v0,1
    # Line 168
    lui	$v1,0x1a
    move	$s2,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,8624
    sd	$gp,40($sp)
    # Line 174
    beq	$at,$v0,.L0d9564b4
    # Line 168
    addu	$gp,$t9,$v1
    # Line 176
    # lw $t9, -32744($gp) # &.text
    # Line 181
    lui	$a0,0x1
    addu	$a1,$s0,$a0
    sd	$a1,16($sp)
    addiu	$a3,$sp,0
    lw	$a1,27948($a1)
    # Line 176
    addiu	$t9,$t9,24640
    # Line 181
    move	$a2,$s2
    sd	$s1,8($sp)
    ori	$a0,$a0,0x9ea8
    addu	$a0,$s0,$a0
    bal __glOdysseyInitAsyncState
    ld	$a1,8($a1)
    # Line 186
    beqz	$v0,.L0d9564dc
    # Line 181
    move	$s1,$v0
.L0d956450:
    # Line 195
    beqz	$s1,.L0d956478
    # Line 200
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    lw	$a1,0($sp)
    lw	$a1,0($sp)
    lw	$a1,0($a1)
    slti	$a1,$a1,2
    bnez	$a1,.L0d956498
    # Line 205
    nop	# was lw $t9, -25680($gp) # &__glNamesDeleteRange
.L0d956478:
    # Line 209
    ld	$gp,40($sp)
.L0d95647c:
    ld	$ra,48($sp)
    ld	$s0,32($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d956498:
    # Line 205
    move	$a0,$s0
    lw	$a2,0($s2)
    li	$a3,1
    jal	__glNamesDeleteRange
    lw	$a1,6128($s0)
    b	.L0d95647c
    # Line 209
    ld	$gp,40($sp)
.L0d9564b4:
    # Line 174
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    # Line 209
    ld	$gp,40($sp)
    # Line 174
    move	$v0,$zero
    # Line 209
    ld	$s0,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9564dc:
    # Line 190
    # lw $t9, -32744($gp) # &.text
    ld	$a1,16($sp)
    addiu	$a3,$sp,0
    lui	$a0,0x1
    lw	$a1,27948($a1)
    addiu	$t9,$t9,24640
    move	$a2,$s2
    ori	$a0,$a0,0xdec0
    addu	$a0,$s0,$a0
    bal __glOdysseyInitAsyncState
    ld	$a1,24($a1)
    b	.L0d956450
    move	$s1,$v0
.end __glOdyim_PollAsyncSGIX

# Function: __glOdyim_FinishAsyncSGIX
# Declared: Line 212 (Source lines: 213-226)
# Address: 0x0d956510 - 0x0d9565b4 (Size: 164 bytes, Frame: 32)
.globl __glOdyim_FinishAsyncSGIX
.ent __glOdyim_FinishAsyncSGIX
__glOdyim_FinishAsyncSGIX:
    # Line 213
    addiu	$sp,$sp,-32
    sd	$s1,16($sp)
    # Line 216
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    # Line 213
    sd	$s0,24($sp)
    # Line 216
    li	$v0,1
    # Line 213
    lui	$v1,0x1a
    move	$s0,$a0
    sd	$ra,0($sp)
    addiu	$v1,$v1,8320
    sd	$gp,8($sp)
    # Line 216
    beq	$at,$v0,.L0d95658c
    # Line 213
    addu	$gp,$t9,$v1
    nop
    nop
    nop
.L0d956550:
    # Line 219
    # lw $t9, -17020($gp) # &sginap
    jal	sginap
    move	$a0,$zero
    # Line 222
    lw	$t9,6132($s1)
    lw	$t9,1156($t9)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0d956550
    move	$a0,$v0
    # Line 226
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95658c:
    # Line 216
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 226
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    # Line 216
    move	$v0,$zero
    # Line 226
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_FinishAsyncSGIX

