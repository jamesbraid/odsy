# Source: ../ODYSSEY/ody_unixcontext.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_unixcontext.c
# Total Functions: 10

.text

# Function: __glOdysseyIoctl
# Declared: Line 105 (Source lines: 106-187)
# Address: 0x0d9d9360 - 0x0d9d9394 (Size: 52 bytes, Frame: 16)
.globl __glOdysseyIoctl
.ent __glOdysseyIoctl
__glOdysseyIoctl:
    # Line 106
    lui	$at,0x12
    addiu	$sp,$sp,-16
    addiu	$at,$at,-3536
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 187
    # lw $t9, -16932($gp) # &ioctl
    # Line 106
    sd	$ra,0($sp)
    # Line 187
    jal	ioctl
    lw	$a0,31560($a0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseyIoctl

# Function: __glOdysseyGetHardwareShadowTest
# Declared: Line 192 (Source lines: 193-196)
# Address: 0x0d9d93a0 - 0x0d9d93d8 (Size: 56 bytes, Frame: 16)
.globl __glOdysseyGetHardwareShadowTest
.ent __glOdysseyGetHardwareShadowTest
__glOdysseyGetHardwareShadowTest:
    # Line 193
    lui	$at,0x12
    addiu	$sp,$sp,-16
    addiu	$at,$at,-3600
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 195
    # lw $t9, -30512($gp) # &__glOdysseyGetHardwareShadow
    # Line 193
    sd	$ra,0($sp)
    # Line 195
    move	$a1,$zero
    bal __glOdysseyGetHardwareShadow
    lw	$a0,4112($zero)
    ld	$ra,0($sp)
    # Line 196
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseyGetHardwareShadowTest

# Function: __glOdysseyGetHardwareShadow
# Declared: Line 199 (Source lines: 200-206)
# Address: 0x0d9d93e0 - 0x0d9d9444 (Size: 100 bytes, Frame: 32)
.globl __glOdysseyGetHardwareShadow
.ent __glOdysseyGetHardwareShadow
__glOdysseyGetHardwareShadow:
    # Line 200
    lui	$a2,0x12
    addiu	$sp,$sp,-32
    addiu	$a2,$a2,-3664
    sd	$gp,16($sp)
    addu	$gp,$t9,$a2
    # Line 203
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 200
    sd	$a0,0($sp)
    move	$a2,$a1
    # Line 203
    lui	$a1,0x6f64
    # Line 200
    sd	$ra,8($sp)
    # Line 203
    bal __glOdysseyIoctl
    ori	$a1,$a1,0xc
    bltz	$v0,.L0d9d9424
    ld	$ra,8($sp)
.L0d9d9418:
    # Line 206
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d9424:
    # Line 204
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,20($t9)
    la	$a1,__glim_Color3f
    jal	__glOdysseyIoctl
    addiu	$a1,$a1,19912
    b	.L0d9d9418
    ld	$ra,8($sp)
.end __glOdysseyGetHardwareShadow

# Function: __glOdysseySwapBuffers
# Declared: Line 210 (Source lines: 211-311)
# Address: 0x0d9d9450 - 0x0d9d9798 (Size: 840 bytes, Frame: 48)
.globl __glOdysseySwapBuffers
.ent __glOdysseySwapBuffers
__glOdysseySwapBuffers:
    # Line 211
    addiu	$sp,$sp,-48
    # Line 221
    lui	$a4,0x1
    # Line 211
    lbu	$at,3222($a0)
    # Line 221
    ori	$a6,$a4,0x443
    # Line 211
    sd	$s0,24($sp)
    lui	$v0,0x12
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v0,$v0,-3776
    sd	$gp,16($sp)
    beqz	$at,.L0d9d96c0
    addu	$gp,$t9,$v0
    # Line 251
    ori	$a3,$a4,0xa5a
    # Line 221
    sw	$a6,0($a4)
    li	$t2,250
    sw	$t2,0($a4)
    ori	$a5,$a4,0x46
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    ori	$a0,$a4,0x19
    sw	$a0,0($a4)
    sw	$a6,0($a4)
    li	$t0,150
    sw	$t0,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    addu	$a7,$a4,$s0
    # Line 226
    lhu	$a1,-22860($a7)
    # Line 227
    lw	$a2,27964($a7)
    # Line 226
    addiu	$a1,$a1,1
    andi	$a1,$a1,0xffff
    sh	$a1,-22860($a7)
    # Line 251
    sw	$a3,0($a4)
    ori	$a2,$a2,0x8000
    sw	$a2,0($a4)
    sw	$a1,0($a4)
    # Line 256
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a0,0($a4)
    sw	$a6,0($a4)
    sw	$t0,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$zero,-26576($a7)
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    lw	$v1,-26972($a7)
    sll	$v1,$v1,0x4
    lui	$a2,0x9000
    bltz	$v1,.L0d9d96d4
    ori	$a2,$a2,0x8116
    sw	$a2,0($a4)
.L0d9d9550:
    lui	$a2,0x1
    ori	$t1,$a2,0x1017
    sw	$t1,0($a4)
    lw	$t9,-26980($a7)
    sw	$t9,0($a4)
    lw	$t8,-26976($a7)
    sw	$t8,0($a4)
    lw	$t3,-26972($a7)
    sw	$t3,0($a4)
    lw	$a3,-26968($a7)
    sw	$a3,0($a4)
    sw	$a6,0($a4)
    sw	$t0,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$t1,0($a4)
    lw	$a1,-26980($a7)
    sw	$a1,0($a4)
    lw	$v1,-26976($a7)
    sw	$v1,0($a4)
    sw	$zero,0($a4)
    lw	$v0,-26968($a7)
    sw	$v0,0($a4)
    sw	$t1,0($a4)
    lw	$at,-26980($a7)
    sw	$at,0($a4)
    lw	$ra,-26976($a7)
    sw	$ra,0($a4)
    lw	$t8,-26972($a7)
    lui	$t9,0x80
    or	$t8,$t8,$t9
    sw	$t8,0($a4)
    lw	$t3,-26968($a7)
    sw	$t3,0($a4)
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a0,0($a4)
    sw	$a6,0($a4)
    sw	$t0,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$zero,-26576($a7)
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    lw	$a3,-26972($a7)
    sll	$a3,$a3,0x4
    lui	$ra,0x9000
    bltz	$a3,.L0d9d9728
    ori	$ra,$ra,0x8116
    sw	$ra,0($a4)
.L0d9d9648:
    # Line 308
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    # Line 256
    sw	$t1,0($a4)
    lw	$a1,-26980($a7)
    sw	$a1,0($a4)
    lw	$a0,-26976($a7)
    sw	$a0,0($a4)
    lw	$v1,-26972($a7)
    sw	$v1,0($a4)
    lw	$v0,-26968($a7)
    sw	$v0,0($a4)
    sw	$a6,0($a4)
    sw	$t0,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    sw	$zero,-26576($a7)
    sw	$a6,0($a4)
    sw	$t2,0($a4)
    sw	$a5,0($a4)
    sw	$a5,0($a4)
    # Line 304
    lw	$at,31564($s0)
    # Line 306
    sw	$zero,4($sp)
    # Line 308
    addiu	$a2,$sp,0
    li	$a1,1005
    # Line 305
    sw	$zero,8($sp)
    # Line 308
    move	$a0,$s0
    bal __glOdysseyIoctl
    # Line 304
    sw	$at,0($sp)
    # Line 308
    bltz	$v0,.L0d9d977c
.L0d9d96c0:
    ld	$ra,32($sp)
.L0d9d96c4:
    # Line 311
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d96d4:
    # Line 256
    ori	$t3,$a4,0x841
    sw	$t3,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    ori	$t1,$a4,0x204b
    sw	$t1,0($a4)
    sw	$zero,0($a4)
    lui	$a3,0xff
    ori	$a3,$a3,0xffff
    sw	$a3,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    ori	$a2,$a4,0x840
    sw	$a2,0($a4)
    sw	$zero,0($a4)
    b	.L0d9d9550
    sw	$zero,0($a4)
.L0d9d9728:
    ori	$at,$a2,0x841
    sw	$at,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    ori	$ra,$a2,0x204b
    sw	$ra,0($a4)
    sw	$zero,0($a4)
    lui	$t9,0xff
    ori	$t9,$t9,0xffff
    sw	$t9,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    ori	$t8,$a2,0x840
    sw	$t8,0($a4)
    sw	$zero,0($a4)
    b	.L0d9d9648
    sw	$zero,0($a4)
.L0d9d977c:
    # Line 309
    lw	$t9,20($s0)
    la	$a1,__glim_Color3f
    move	$a0,$s0
    jal	__glOdysseyIoctl
    addiu	$a1,$a1,19952
    b	.L0d9d96c4
    ld	$ra,32($sp)
.end __glOdysseySwapBuffers

# Function: __glOdysseyFlush
# Declared: Line 314 (Source lines: 321-331)
# Address: 0x0d9d97a0 - 0x0d9d9800 (Size: 96 bytes, Frame: 0)
.globl __glOdysseyFlush
.ent __glOdysseyFlush
__glOdysseyFlush:
    # Line 321
    lui	$v0,0x1
    ori	$a1,$v0,0x443
    sw	$a1,0($v0)
    li	$v1,250
    sw	$v1,0($v0)
    ori	$at,$v0,0x46
    sw	$at,0($v0)
    sw	$at,0($v0)
    ori	$a4,$v0,0x19
    sw	$a4,0($v0)
    sw	$a1,0($v0)
    li	$a3,150
    sw	$a3,0($v0)
    sw	$at,0($v0)
    sw	$at,0($v0)
    sw	$at,0($v0)
    sw	$at,0($v0)
    addu	$a2,$v0,$a0
    sw	$zero,-26576($a2)
    sw	$a1,0($v0)
    sw	$v1,0($v0)
    sw	$at,0($v0)
    # Line 331
    jr	$ra
    # Line 321
    sw	$at,0($v0)
.end __glOdysseyFlush

# Function: __glOdysseyFinish
# Declared: Line 334 (Source lines: 341-416)
# Address: 0x0d9d9800 - 0x0d9d9b14 (Size: 788 bytes, Frame: 0)
.globl __glOdysseyFinish
.ent __glOdysseyFinish
__glOdysseyFinish:
    # Line 341
    lui	$a3,0x1
    ori	$a4,$a3,0x443
    sw	$a4,0($a3)
    li	$t1,250
    sw	$t1,0($a3)
    ori	$a5,$a3,0x46
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    ori	$a2,$a3,0x19
    sw	$a2,0($a3)
    sw	$a4,0($a3)
    li	$a7,150
    sw	$a7,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    # Line 347
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a2,0($a3)
    sw	$a4,0($a3)
    sw	$a7,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    # Line 341
    addu	$a6,$a3,$a0
    # Line 347
    sw	$zero,-26576($a6)
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    lw	$at,-26972($a6)
    sll	$at,$at,0x4
    bltz	$at,.L0d9d9a6c
    lui	$v0,0x9000
    ori	$v0,$v0,0x8116
    sw	$v0,0($a3)
.L0d9d98b0:
    lui	$a1,0x1
    ori	$t0,$a1,0x1017
    sw	$t0,0($a3)
    lw	$t8,-26980($a6)
    sw	$t8,0($a3)
    lw	$t3,-26976($a6)
    sw	$t3,0($a3)
    lw	$t2,-26972($a6)
    sw	$t2,0($a3)
    lw	$a0,-26968($a6)
    sw	$a0,0($a3)
    sw	$a4,0($a3)
    sw	$a7,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$t0,0($a3)
    lw	$v1,-26980($a6)
    sw	$v1,0($a3)
    lw	$v0,-26976($a6)
    sw	$v0,0($a3)
    sw	$zero,0($a3)
    lw	$at,-26968($a6)
    sw	$at,0($a3)
    sw	$t0,0($a3)
    lw	$t9,-26980($a6)
    sw	$t9,0($a3)
    lw	$t8,-26976($a6)
    sw	$t8,0($a3)
    lw	$t2,-26972($a6)
    lui	$t3,0x80
    or	$t2,$t2,$t3
    sw	$t2,0($a3)
    lw	$a0,-26968($a6)
    sw	$a0,0($a3)
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a2,0($a3)
    sw	$a4,0($a3)
    sw	$a7,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$zero,-26576($a6)
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    lw	$v1,-26972($a6)
    sll	$v1,$v1,0x4
    lui	$t9,0x9000
    bltz	$v1,.L0d9d9ac0
    ori	$t9,$t9,0x8116
    sw	$t9,0($a3)
.L0d9d99a8:
    sw	$t0,0($a3)
    lw	$t9,-26980($a6)
    sw	$t9,0($a3)
    lw	$t8,-26976($a6)
    sw	$t8,0($a3)
    lw	$t3,-26972($a6)
    sw	$t3,0($a3)
    lw	$t2,-26968($a6)
    sw	$t2,0($a3)
    sw	$a4,0($a3)
    sw	$a7,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    sw	$zero,-26576($a6)
    sw	$a4,0($a3)
    sw	$t1,0($a3)
    sw	$a5,0($a3)
    sw	$a5,0($a3)
    # Line 350
    lhu	$a2,-22860($a6)
    # Line 351
    lw	$t2,27964($a6)
    # Line 350
    addiu	$a2,$a2,1
    # Line 353
    lui	$t3,0x1
    # Line 350
    andi	$a2,$a2,0xffff
    sh	$a2,-22860($a6)
    # Line 353
    ori	$t3,$t3,0xa5a
    sw	$t3,0($a3)
    sw	$t2,0($a3)
    sw	$a2,0($a3)
    # Line 364
    lw	$v0,27756($a6)
    lw	$a1,27800($a6)
    addu	$t2,$t2,$t2
    lw	$v0,16388($v0)
    addu	$a1,$a1,$t2
    lhu	$at,0($a1)
    beq	$at,$a2,.L0d9d9a64
    nop
.L0d9d9a40:
    lhu	$at,0($a1)
    beq	$at,$a2,.L0d9d9a64
    nop
    lhu	$v0,0($a1)
    beq	$v0,$a2,.L0d9d9a64
    nop
    lhu	$v1,0($a1)
    bne	$v1,$a2,.L0d9d9a40
    nop
.L0d9d9a64:
    # Line 416
    jr	$ra
    nop
.L0d9d9a6c:
    # Line 347
    ori	$t2,$a3,0x841
    sw	$t2,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    ori	$t0,$a3,0x204b
    sw	$t0,0($a3)
    sw	$zero,0($a3)
    lui	$a1,0xff
    ori	$a1,$a1,0xffff
    sw	$a1,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    ori	$a0,$a3,0x840
    sw	$a0,0($a3)
    sw	$zero,0($a3)
    b	.L0d9d98b0
    sw	$zero,0($a3)
.L0d9d9ac0:
    ori	$at,$a1,0x841
    sw	$at,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    ori	$t9,$a1,0x204b
    sw	$t9,0($a3)
    sw	$zero,0($a3)
    lui	$t8,0xff
    ori	$t8,$t8,0xffff
    sw	$t8,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    ori	$t3,$a1,0x840
    sw	$t3,0($a3)
    sw	$zero,0($a3)
    b	.L0d9d99a8
    sw	$zero,0($a3)
.end __glOdysseyFinish

# Function: __glOdysseyVisualsMatch
# Declared: Line 424 (Source lines: 428-428)
# Address: 0x0d9d9b20 - 0x0d9d9b90 (Size: 112 bytes, Frame: 0)
.globl __glOdysseyVisualsMatch
.ent __glOdysseyVisualsMatch
__glOdysseyVisualsMatch:
    # Line 428
    lw	$v0,3216($a0)
    lw	$at,0($a1)
    bne	$at,$v0,.L0d9d9b70
    nop
    lw	$v1,84($a1)
    bnez	$v1,.L0d9d9b70
    nop
    lw	$a0,84($a3)
    bnez	$a0,.L0d9d9b70
    nop
    lbu	$a2,4($a1)
    beqz	$a2,.L0d9d9b78
    nop
    lbu	$a4,4($a3)
    beqz	$a4,.L0d9d9b70
    nop
    lw	$a6,40($a3)
    lw	$a5,40($a1)
    beq	$a5,$a6,.L0d9d9b88
    nop
.L0d9d9b70:
    jr	$ra
    li	$v0,0x0
.L0d9d9b78:
    lw	$a7,36($a1)
    lw	$t0,36($a3)
    bne	$a7,$t0,.L0d9d9b70
    nop
.L0d9d9b88:
    jr	$ra
    li	$v0,0x1
.end __glOdysseyVisualsMatch

# Function: __glOdysseyGetBoardInfoRaw
# Declared: Line 438 (Source lines: 439-449)
# Address: 0x0d9d9b90 - 0x0d9d9d4c (Size: 444 bytes, Frame: 176)
.globl __glOdysseyGetBoardInfoRaw
.ent __glOdysseyGetBoardInfoRaw
__glOdysseyGetBoardInfoRaw:
    # Line 439
    addiu	$sp,$sp,-688
    sd	$s0,632($sp)
    sd	$s1,624($sp)
    sd	$s2,664($sp)
    sd	$s3,648($sp)
    sd	$s4,640($sp)
    lui	$at,0x12
    sd	$gp,672($sp)
    addiu	$at,$at,-5632
    addu	$gp,$t9,$at
    # Line 443
    lw	$t9,32($a0)
    # Line 439
    sd	$s5,616($sp)
    sd	$s6,608($sp)
    # Line 443
    nop
    # Line 439
    sd	$ra,656($sp)
    # Line 443
    jalr	$t9
    # Line 439
    move	$s6,$a0
    # Line 446
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    addiu	$a2,$sp,0
    # Line 444
    addiu	$v1,$sp,16
    sw	$v1,4($sp)
    # Line 446
    li	$a1,102
    # Line 445
    li	$a0,588
    sw	$a0,8($sp)
    # Line 446
    move	$a0,$s6
    bal __glOdysseyIoctl
    # Line 443
    sw	$v0,0($sp)
    # Line 446
    bltz	$v0,.L0d9d9d30
    li	$s1,0x40
.L0d9d9c04:
    # Line 448
    li	$a2,8
    addiu	$a4,$sp,16
    li	$a3,0x48
    addiu	$a7,$a4,56
    addiu	$s5,$a4,8
    addiu	$s0,$a4,16
    addiu	$t0,$a4,24
    lui	$a5,0x1
    addiu	$t2,$a4,40
    ori	$a5,$a5,0x6a20
    addiu	$t3,$a4,48
    addu	$a5,$s6,$a5
    # Line 449
    ld	$gp,672($sp)
    addiu	$t9,$a4,32
    addiu	$s2,$a5,56
    # Line 448
    ld	$a1,16($sp)
    addiu	$s4,$a5,8
    addiu	$ra,$a5,16
    ld	$s6,608($sp)
    addiu	$s3,$a5,24
    addiu	$a6,$a5,40
    addiu	$t1,$a5,48
    addiu	$t8,$a5,32
    sd	$a1,0($a5)
    nop
    nop
    nop
.L0d9d9c70:
    addu	$v1,$a2,$a4
    addu	$a0,$a2,$a5
    ld	$v1,0($v1)
    addu	$v0,$a2,$s5
    sd	$v1,0($a0)
    addu	$v1,$a2,$s4
    ld	$v0,0($v0)
    addu	$at,$a2,$s0
    sd	$v0,0($v1)
    addu	$v0,$a2,$ra
    ld	$at,0($at)
    addu	$a1,$a2,$t0
    sd	$at,0($v0)
    addu	$at,$a2,$s3
    ld	$a1,0($a1)
    addu	$a0,$a2,$t9
    sd	$a1,0($at)
    addu	$a1,$a2,$t8
    ld	$a0,0($a0)
    addu	$v1,$a2,$t2
    sd	$a0,0($a1)
    addu	$a0,$a2,$a6
    ld	$v1,0($v1)
    addu	$v0,$a2,$t3
    sd	$v1,0($a0)
    addu	$v1,$a2,$t1
    ld	$v0,0($v0)
    addiu	$a3,$a3,-8
    addu	$at,$a2,$a7
    sd	$v0,0($v1)
    addu	$v0,$a2,$s2
    ld	$at,0($at)
    addu	$a2,$a2,$s1
    bgtz	$a3,.L0d9d9c70
    sd	$at,0($v0)
    # Line 449
    ld	$s0,632($sp)
    ld	$s1,624($sp)
    ld	$s2,664($sp)
    ld	$s3,648($sp)
    ld	$s4,640($sp)
    ld	$ra,656($sp)
    ld	$s5,616($sp)
    # Line 448
    addu	$a0,$a2,$a4
    addu	$a1,$a2,$a5
    lw	$a0,0($a0)
    # Line 449
    addiu	$sp,$sp,688
    jr	$ra
    # Line 448
    sw	$a0,0($a1)
.L0d9d9d30:
    # Line 447
    lw	$t9,20($s6)
    la	$a1,__glim_Color3f
    move	$a0,$s6
    jal	__glOdysseyIoctl
    addiu	$a1,$a1,19976
    b	.L0d9d9c04
    li	$s1,0x40
.end __glOdysseyGetBoardInfoRaw

# Function: __glOdysseyDriverMakeCurrent
# Declared: Line 452 (Source lines: 453-535)
# Address: 0x0d9d9d50 - 0x0d9d9fac (Size: 604 bytes, Frame: 240)
.globl __glOdysseyDriverMakeCurrent
.ent __glOdysseyDriverMakeCurrent
__glOdysseyDriverMakeCurrent:
    # Line 453
    addiu	$sp,$sp,-112
    # Line 458
    sw	$zero,40($sp)
    # Line 457
    sw	$zero,0($sp)
    # Line 458
    move	$a3,$zero
    lw	$v0,3300($a0)
    # Line 457
    move	$a2,$zero
    # Line 453
    lui	$at,0x12
    sd	$s0,88($sp)
    move	$s0,$a0
    addiu	$at,$at,-6080
    sd	$gp,80($sp)
    # Line 458
    blez	$v0,.L0d9d9d8c
    # Line 453
    addu	$gp,$t9,$at
    # Line 460
    li	$a2,2
    sw	$a2,0($sp)
.L0d9d9d8c:
    lw	$v0,3460($s0)
    blez	$v0,.L0d9d9da0
    # Line 464
    ori	$t2,$a2,0x4
    # Line 461
    li	$a3,2
    sw	$a3,40($sp)
.L0d9d9da0:
    lbu	$v1,3220($s0)
    beqz	$v1,.L0d9d9ee4
    # Line 465
    ori	$t3,$a3,0x4
.L0d9d9dac:
    # Line 464
    lbu	$a0,3380($s0)
    beqz	$a0,.L0d9d9eec
    sd	$ra,96($sp)
.L0d9d9db8:
    # Line 467
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    move	$a0,$s0
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    bal __glOdysseyIoctl
    ori	$a1,$a1,0x8
    bltz	$v0,.L0d9d9f80
    # Line 473
    lui	$a3,0x1
    lw	$a7,4($sp)
    addu	$a3,$s0,$a3
    sw	$a7,27968($a3)
    # Line 474
    lw	$a6,8($sp)
    sw	$a6,27972($a3)
    # Line 475
    lbu	$a5,34($sp)
    sw	$a5,27976($a3)
    # Line 476
    lhu	$a4,32($sp)
    sw	$a4,27980($a3)
    # Line 477
    lbu	$a2,35($sp)
    sw	$a2,27984($a3)
    # Line 482
    lbu	$a0,36($sp)
    # Line 535
    ld	$gp,80($sp)
    # Line 482
    li	$a5,2
    # Line 535
    ld	$s0,88($sp)
    # Line 482
    beqz	$a0,.L0d9d9ef4
    li	$a4,1
    beq	$a0,$a4,.L0d9d9f20
    # Line 487
    lw	$a1,12($sp)
    # Line 482
    beq	$a0,$a5,.L0d9d9e60
.L0d9d9e28:
    ld	$ra,96($sp)
    # Line 524
    lw	$t2,44($sp)
    sw	$t2,27988($a3)
    # Line 525
    lw	$t1,48($sp)
    sw	$t1,27992($a3)
    # Line 526
    lbu	$t0,74($sp)
    sw	$t0,27996($a3)
    # Line 527
    lhu	$a7,72($sp)
    sw	$a7,28000($a3)
    # Line 535
    li	$v0,1
    # Line 528
    lbu	$a6,75($sp)
    # Line 535
    addiu	$sp,$sp,112
    jr	$ra
    # Line 528
    sw	$a6,28004($a3)
.L0d9d9e60:
    # Line 501
    lw	$t1,12($sp)
    sw	$t1,28008($a3)
    # Line 502
    lw	$t0,8($sp)
    sw	$t0,28012($a3)
    # Line 503
    lbu	$a7,37($sp)
    sw	$a7,28016($a3)
    # Line 504
    lhu	$a6,32($sp)
    sw	$a6,28020($a3)
    # Line 506
    lw	$a5,16($sp)
    sw	$a5,28028($a3)
    # Line 507
    lw	$a4,8($sp)
    sw	$a4,28032($a3)
    # Line 508
    lbu	$a2,37($sp)
    sw	$a2,28036($a3)
    # Line 509
    lhu	$a1,32($sp)
    sw	$a1,28040($a3)
    # Line 511
    lw	$a0,20($sp)
    sw	$a0,28048($a3)
    # Line 512
    lw	$v1,8($sp)
    sw	$v1,28052($a3)
    # Line 513
    lbu	$v0,37($sp)
    sw	$v0,28056($a3)
    # Line 514
    lhu	$at,32($sp)
    sw	$at,28060($a3)
    # Line 516
    lw	$ra,24($sp)
    sw	$ra,28068($a3)
    # Line 517
    lw	$t9,8($sp)
    sw	$t9,28072($a3)
    # Line 518
    lbu	$t8,37($sp)
    sw	$t8,28076($a3)
    # Line 519
    lhu	$t3,32($sp)
    # Line 520
    b	.L0d9d9e28
    # Line 519
    sw	$t3,28080($a3)
.L0d9d9ee4:
    # Line 464
    b	.L0d9d9dac
    sw	$t2,0($sp)
.L0d9d9eec:
    # Line 465
    b	.L0d9d9db8
    sw	$t3,40($sp)
.L0d9d9ef4:
    # Line 484
    sd	$zero,28080($a3)
    sd	$zero,28072($a3)
    sd	$zero,28064($a3)
    sd	$zero,28056($a3)
    sd	$zero,28048($a3)
    sd	$zero,28040($a3)
    sd	$zero,28032($a3)
    sd	$zero,28024($a3)
    sd	$zero,28016($a3)
    b	.L0d9d9e28
    sd	$zero,28008($a3)
.L0d9d9f20:
    # Line 487
    sw	$a1,28008($a3)
    # Line 488
    lw	$a0,8($sp)
    sw	$a0,28012($a3)
    # Line 489
    lbu	$v1,37($sp)
    sw	$v1,28016($a3)
    # Line 490
    lhu	$v0,32($sp)
    sw	$v0,28020($a3)
    # Line 492
    lw	$at,16($sp)
    sw	$at,28028($a3)
    # Line 493
    lw	$ra,8($sp)
    sw	$ra,28032($a3)
    # Line 494
    lbu	$t9,37($sp)
    sw	$t9,28036($a3)
    # Line 495
    lhu	$t8,32($sp)
    sw	$zero,28084($a3)
    sw	$zero,28080($a3)
    sw	$zero,28076($a3)
    sw	$zero,28072($a3)
    sw	$zero,28068($a3)
    sw	$zero,28064($a3)
    sd	$zero,28056($a3)
    sd	$zero,28048($a3)
    # Line 499
    b	.L0d9d9e28
    # Line 495
    sw	$t8,28040($a3)
.L0d9d9f80:
    # Line 468
    lw	$t9,20($s0)
    la	$a1,__glim_Color3f
    move	$a0,$s0
    jal	__glOdysseyIoctl
    addiu	$a1,$a1,20000
    ld	$ra,96($sp)
    # Line 470
    move	$v0,$zero
    # Line 535
    ld	$gp,80($sp)
    ld	$s0,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glOdysseyDriverMakeCurrent

# Function: __glOdysseySetDrawbuf
# Declared: Line 539 (Source lines: 542-555)
# Address: 0x0d9d9fb0 - 0x0d9da2d8 (Size: 808 bytes, Frame: 32)
.globl __glOdysseySetDrawbuf
.ent __glOdysseySetDrawbuf
__glOdysseySetDrawbuf:
    # Line 542
    addiu	$sp,$sp,-32
    # Line 545
    sw	$zero,0($sp)
    move	$a6,$zero
    # Line 542
    sd	$s0,8($sp)
    lui	$at,0x12
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,-6688
    sd	$gp,16($sp)
    # Line 545
    beqz	$a1,.L0d9da220
    # Line 542
    addu	$gp,$t9,$at
    # Line 546
    li	$a6,1
    beqz	$a2,.L0d9da228
    sw	$a6,0($sp)
.L0d9d9fe8:
    # Line 547
    ori	$a6,$a6,0x2
    beqz	$a3,.L0d9da230
    sw	$a6,0($sp)
.L0d9d9ff4:
    # Line 548
    ori	$a6,$a6,0x4
    beqz	$a4,.L0d9da008
    sw	$a6,0($sp)
    # Line 549
    ori	$v0,$a6,0x8
.L0d9da004:
    sw	$v0,0($sp)
.L0d9da008:
    # Line 551
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
.L0d9da00c:
    move	$a0,$s0
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    bal __glOdysseyIoctl
    ori	$a1,$a1,0x9
    beqz	$v0,.L0d9da040
    # Line 554
    lui	$a2,0x1
    # Line 552
    lw	$t9,20($s0)
    la	$a1,__glim_Color3f
    move	$a0,$s0
    jal	__glOdysseyIoctl
    addiu	$a1,$a1,20032
    # Line 554
    lui	$a2,0x1
.L0d9da040:
    ori	$a3,$a2,0x443
    sw	$a3,0($a2)
    li	$a6,250
    sw	$a6,0($a2)
    ori	$a4,$a2,0x46
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    ori	$t0,$a2,0x19
    sw	$t0,0($a2)
    sw	$a3,0($a2)
    li	$a7,150
    sw	$a7,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    addu	$a0,$a2,$s0
    sw	$zero,-26576($a0)
    sw	$a3,0($a2)
    sw	$a6,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    lw	$a5,-26972($a0)
    lui	$t1,0xff
    sll	$a5,$a5,0x4
    # Line 555
    ld	$gp,16($sp)
    # Line 554
    ori	$t3,$a2,0x841
    ori	$t2,$a2,0x204b
    ori	$t1,$t1,0xffff
    bltz	$a5,.L0d9da240
    ld	$s0,8($sp)
    ld	$s0,8($sp)
    lui	$t1,0x9000
    ori	$t1,$t1,0x8116
    sw	$t1,0($a2)
.L0d9da0cc:
    lui	$t1,0x1
    ori	$a5,$t1,0x1017
    sw	$a5,0($a2)
    lw	$t9,-26980($a0)
    sw	$t9,0($a2)
    lw	$t8,-26976($a0)
    sw	$t8,0($a2)
    lw	$t3,-26972($a0)
    sw	$t3,0($a2)
    lw	$t2,-26968($a0)
    sw	$t2,0($a2)
    sw	$a3,0($a2)
    sw	$a7,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a3,0($a2)
    sw	$a6,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a5,0($a2)
    lw	$a1,-26980($a0)
    sw	$a1,0($a2)
    lw	$v1,-26976($a0)
    sw	$v1,0($a2)
    sw	$zero,0($a2)
    lw	$v0,-26968($a0)
    sw	$v0,0($a2)
    sw	$a5,0($a2)
    lw	$at,-26980($a0)
    sw	$at,0($a2)
    lw	$ra,-26976($a0)
    sw	$ra,0($a2)
    lw	$t8,-26972($a0)
    lui	$t9,0x80
    or	$t8,$t8,$t9
    sw	$t8,0($a2)
    lw	$t3,-26968($a0)
    sw	$t3,0($a2)
    sw	$a3,0($a2)
    sw	$a6,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$t0,0($a2)
    sw	$a3,0($a2)
    sw	$a7,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$zero,-26576($a0)
    sw	$a3,0($a2)
    sw	$a6,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    lw	$t2,-26972($a0)
    sll	$t2,$t2,0x4
    lui	$ra,0x9000
    bltz	$t2,.L0d9da284
    ori	$ra,$ra,0x8116
    sw	$ra,0($a2)
.L0d9da1c4:
    ld	$ra,24($sp)
    sw	$a5,0($a2)
    lw	$a1,-26980($a0)
    sw	$a1,0($a2)
    lw	$v1,-26976($a0)
    sw	$v1,0($a2)
    lw	$v0,-26972($a0)
    sw	$v0,0($a2)
    lw	$at,-26968($a0)
    sw	$at,0($a2)
    sw	$a3,0($a2)
    sw	$a7,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    sw	$zero,-26576($a0)
    sw	$a3,0($a2)
    sw	$a6,0($a2)
    sw	$a4,0($a2)
    # Line 555
    addiu	$sp,$sp,32
    jr	$ra
    # Line 554
    sw	$a4,0($a2)
.L0d9da220:
    # Line 546
    bnez	$a2,.L0d9d9fe8
    nop
.L0d9da228:
    # Line 547
    bnez	$a3,.L0d9d9ff4
    nop
.L0d9da230:
    # Line 548
    bnez	$a4,.L0d9da004
    # Line 549
    ori	$v0,$a6,0x8
    b	.L0d9da00c
    # Line 551
    nop	# was lw $t9, -30516($gp) # &__glOdysseyIoctl
.L0d9da240:
    # Line 554
    sw	$t3,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$t2,0($a2)
    sw	$zero,0($a2)
    sw	$t1,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    ori	$a5,$a2,0x840
    sw	$a5,0($a2)
    sw	$zero,0($a2)
    b	.L0d9da0cc
    sw	$zero,0($a2)
.L0d9da284:
    ori	$at,$t1,0x841
    sw	$at,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    ori	$ra,$t1,0x204b
    sw	$ra,0($a2)
    sw	$zero,0($a2)
    lui	$t9,0xff
    ori	$t9,$t9,0xffff
    sw	$t9,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    ori	$t8,$t1,0x840
    sw	$t8,0($a2)
    sw	$zero,0($a2)
    b	.L0d9da1c4
    sw	$zero,0($a2)
.end __glOdysseySetDrawbuf

