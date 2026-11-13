# DDX module odyssey: group al
# Functions: 26

.text
.set noat
.set noreorder

glabel alGetFrameNumber
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,48($sp)
    addiu	$at,$at,-27936
    sd	$gp,32($sp)
    beqz	$a0,.L01551714
    addu	$gp,$t9,$at
    li	$v1,0xbb81
    lw	$v0,0($a0)
    beq	$v0,$v1,.L01551764
    sd	$a1,24($sp)
.L01551714:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,1
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01551750
    ld	$ra,48($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,1
    move	$a3,$s0
    lw	$a1,4($a1)
    jalr	$t9
    addiu	$a2,$a2,7720
    ld	$ra,48($sp)
.L01551750:
    li	$v0,-1
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01551764:
    lw	$t9,-28220($gp)
    addiu	$a2,$sp,0
    li	$a1,11
    jalr	$t9
    lw	$a0,36($a0)
    bltz	$v0,.L01551808
    ld	$ra,48($sp)
    lw	$a7,56($s0)
    lw	$a5,8($sp)
    lw	$a3,12($sp)
    lw	$t0,60($s0)
    lw	$a6,128($s0)
    subu	$a3,$a3,$a5
    move	$v0,$zero
    ld	$gp,32($sp)
    dsll32	$a4,$t0,0x3
    lw	$a5,40($s0)
    bltz	$a3,.L015517ec
    move	$a0,$a3
.L015517b0:
    bgez	$a4,.L015517cc
    ld	$a3,0($sp)
    div	$zero,$a0,$a7
    teq	$a7,$zero,0x7
    mflo	$a0
    nop
    nop
.L015517cc:
    ld	$a7,24($sp)
    beqz	$a5,.L015517f8
    srav	$a4,$a0,$a6
    daddu	$a6,$a4,$a3
    sd	$a6,0($a7)
.L015517e0:
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015517ec:
    lw	$a0,8($s0)
    b	.L015517b0
    addu	$a0,$a0,$a3
.L015517f8:
    ld	$a2,24($sp)
    dsubu	$a1,$a3,$a4
    b	.L015517e0
    sd	$a1,0($a2)
.L01551808:
    lw	$t9,-28488($gp)
    jalr	$t9
    move	$a0,$zero
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01551840
    ld	$ra,48($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    move	$a0,$zero
    addiu	$a2,$a2,7720
    jalr	$t9
    lw	$a1,0($a1)
    ld	$ra,48($sp)
.L01551840:
    li	$v0,-1
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64

glabel alSetErrorHandler
    lui	$a7,0x1f
    addiu	$a7,$a7,-28448
    addu	$at,$t9,$a7
    la	$a5,_AL2error
    la	$a6,sub_01550000
    lw	$v0,0($a5)
    addiu	$a6,$a6,6240
    bne	$v0,$a6,.L01551908
    li	$a4,1
    move	$v0,$a4
.L01551908:
    bne	$a4,$a0,.L01551918
    nop
    jr	$ra
    sw	$a6,0($a5)
.L01551918:
    jr	$ra
    sw	$a0,0($a5)

glabel alGetErrorString
    slti	$v1,$a0,27
    lui	$v0,0x1f
    addiu	$v0,$v0,-28512
    beqz	$v1,.L0155194c
    addu	$at,$t9,$v0
    bltz	$a0,.L0155194c
    la	$v0,_AL2errortab_nofmt
    sll	$v1,$a0,0x2
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.L0155194c:
    jr	$ra
    move	$v0,$zero

glabel alNewConfig
    lui	$at,0x1f
    addiu	$sp,$sp,-32
    addiu	$at,$at,-28576
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$t9,-28584($gp)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,40
    beqz	$v0,.L015519bc
    sd	$v0,0($sp)
    lw	$t9,-27756($gp)
    ld	$a1,0($sp)
    li	$a2,40
    jalr	$t9
    la	$a0,_AL2default_config
    ld	$ra,16($sp)
    ld	$v0,0($sp)
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    li	$v1,0xbb82
    jr	$ra
    sw	$v1,0($v0)
.L015519bc:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,6
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015519f4
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,6
    lw	$a1,24($a1)
    jalr	$t9
    addiu	$a2,$a2,7744
    ld	$ra,16($sp)
.L015519f4:
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alFreeConfig
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-28752
    sd	$gp,0($sp)
    beqz	$a0,.L01551a44
    addu	$gp,$t9,$at
    li	$v1,0xbb82
    lw	$v0,0($a0)
    beq	$v0,$v1,.L01551a94
    lw	$t9,-28564($gp)
.L01551a44:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01551a80
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s0
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,7760
    ld	$ra,16($sp)
.L01551a80:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01551a94:
    jalr	$t9
    nop
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alClosePort
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-28928
    sd	$gp,0($sp)
    beqz	$a0,.L01551af4
    addu	$gp,$t9,$at
    li	$v1,0xbb81
    lw	$v0,0($a0)
    beq	$v0,$v1,.L01551b44
    lw	$t9,-27608($gp)
.L01551af4:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,1
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01551b30
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,1
    move	$a3,$s0
    lw	$a1,4($a1)
    jalr	$t9
    addiu	$a2,$a2,9672
    ld	$ra,16($sp)
.L01551b30:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01551b44:
    lw	$a1,4($a0)
    jalr	$t9
    lw	$a0,12($a0)
    lw	$t9,-28556($gp)
    jalr	$t9
    lw	$a0,36($s0)
    li	$a3,0xbb92
    sw	$a3,0($s0)
    sw	$zero,28($s0)
    sw	$zero,20($s0)
    sw	$zero,16($s0)
    sw	$zero,12($s0)
    lw	$t9,-28564($gp)
    sw	$zero,8($s0)
    move	$a0,$s0
    sw	$zero,4($s0)
    li	$a2,-1
    jalr	$t9
    sw	$a2,36($s0)
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alReadFrames
    addiu	$sp,$sp,-208
    sd	$s4,184($sp)
    sd	$s0,176($sp)
    sd	$s6,192($sp)
    addiu	$s6,$sp,0
    move	$s0,$a0
    lw	$at,60($a0)
    move	$s4,$a1
    sd	$s2,200($sp)
    move	$s2,$a2
    sd	$s7,160($sp)
    lui	$v0,0x1f
    dsll32	$at,$at,0x3
    li	$s7,1
    sd	$ra,136($sp)
    addiu	$v0,$v0,-29168
    sd	$gp,168($sp)
    bgez	$at,.L01551c30
    addu	$gp,$t9,$v0
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,7760
    bal alReadFrames
    nop
    ld	$gp,168($sp)
    ld	$s0,176($sp)
    ld	$s2,200($sp)
    ld	$ra,136($sp)
    ld	$s4,184($sp)
    ld	$s6,192($sp)
    ld	$s7,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L01551c30:
    sd	$s5,152($sp)
    la	$s5,select
    sd	$s1,144($sp)
    lw	$s1,16($a0)
    sd	$s3,128($sp)
    blez	$a2,.L01551e08
    lw	$s1,0($s1)
    b	.L01551cf0
    sd	$s3,128($sp)
.L01551c54:
    move	$a0,$a2
.L01551c58:
    slt	$a4,$a0,$s2
    move	$a2,$s2
    subu	$a1,$a5,$s1
    beqz	$a4,.L01551c70
    srav	$a1,$a1,$a3
    move	$a2,$a0
.L01551c70:
    slt	$a5,$a1,$a2
    beqz	$a5,.L01551c84
    slti	$a6,$a2,257
    move	$a2,$a1
    slti	$a6,$a2,257
.L01551c84:
    bnez	$a6,.L01551c90
    move	$s3,$a2
    li	$s3,256
.L01551c90:
    lw	$t9,112($s0)
    move	$a0,$s4
    move	$a2,$s3
    lw	$a1,28($s0)
    move	$a3,$s0
    sll	$a4,$s1,0x2
    jalr	$t9
    addu	$a1,$a1,$a4
    lw	$a7,128($s0)
    lw	$a5,8($s0)
    lw	$a6,124($s0)
    sllv	$a7,$s3,$a7
    lw	$t0,132($s0)
    addu	$s1,$s1,$a7
    sllv	$a6,$s3,$a6
    slt	$a7,$s1,$a5
    subu	$s2,$s2,$s3
    sllv	$a6,$a6,$t0
    lw	$a0,16($s0)
    bnez	$a7,.L01551ce8
    addu	$s4,$s4,$a6
    subu	$s1,$s1,$a5
.L01551ce8:
    blez	$s2,.L01551e08
    sw	$s1,0($a0)
.L01551cf0:
    lw	$a6,20($s0)
    lw	$a6,0($a6)
    subu	$a6,$a6,$s1
    lw	$a5,8($s0)
    bltz	$a6,.L01551e3c
    lw	$a3,128($s0)
.L01551d08:
    srav	$a0,$a6,$a3
    srl	$a6,$a5,0x1f
    bnez	$a0,.L01551c58
    addu	$a6,$a6,$a5
    b	.L01551e44
    nop
.L01551d20:
    srav	$a2,$a6,$a3
    srl	$a6,$a5,0x1f
    bnez	$a2,.L01551c54
    addu	$a6,$a6,$a5
    sra	$a6,$a6,0x1
.L01551d34:
    sllv	$a2,$s2,$a3
    slt	$t0,$a2,$a6
    beqz	$t0,.L01551d48
    lw	$a7,24($s0)
    move	$a6,$a2
.L01551d48:
    addiu	$a2,$sp,0
    subu	$t0,$a5,$a6
    sw	$t0,0($a7)
    sd	$zero,120($sp)
    sd	$zero,112($sp)
    sd	$zero,104($sp)
    sd	$zero,96($sp)
    sd	$zero,88($sp)
    sd	$zero,80($sp)
    sd	$zero,72($sp)
    sd	$zero,64($sp)
    sd	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    lw	$a3,36($s0)
    sra	$a4,$a3,0x4
    srl	$a4,$a4,0x1b
    addu	$a4,$a4,$a3
    sra	$a4,$a4,0x5
    sll	$a2,$a4,0x2
    sll	$a4,$a4,0x5
    addu	$a2,$s6,$a2
    subu	$a3,$a3,$a4
    lw	$a1,0($a2)
    sllv	$a3,$s7,$a3
    move	$t9,$s5
    or	$a1,$a1,$a3
    sw	$a1,0($a2)
    move	$a4,$zero
    addiu	$a1,$sp,0
    lw	$a0,36($s0)
    move	$a2,$zero
    move	$a3,$zero
    jalr	$t9
    addiu	$a0,$a0,1
    lw	$a6,20($s0)
    lw	$a6,0($a6)
    subu	$a6,$a6,$s1
    lw	$a5,8($s0)
    bgez	$a6,.L01551d20
    lw	$a3,128($s0)
    b	.L01551d20
    addu	$a6,$a5,$a6
.L01551e08:
    ld	$gp,168($sp)
    ld	$s0,176($sp)
    ld	$s1,144($sp)
    ld	$s2,200($sp)
    ld	$s3,128($sp)
    ld	$s4,184($sp)
    ld	$ra,136($sp)
    ld	$s5,152($sp)
    move	$v0,$zero
    ld	$s6,192($sp)
    ld	$s7,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L01551e3c:
    b	.L01551d08
    addu	$a6,$a5,$a6
.L01551e44:
    b	.L01551d34
    sra	$a6,$a6,0x1

glabel alSetChannels
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,16($sp)
    move	$s0,$a1
    lui	$at,0x1f
    sd	$ra,24($sp)
    li	$a1,2
    addiu	$at,$at,-30448
    sd	$gp,0($sp)
    beqz	$a0,.L015520fc
    addu	$gp,$t9,$at
    li	$a4,8
    lw	$v0,0($a0)
    li	$v1,0xbb82
    li	$a5,16
    li	$a3,4
    beq	$v0,$v1,.L01552150
    li	$a0,1
.L015520fc:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552138
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s1
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,9688
    ld	$ra,24($sp)
.L01552138:
    ld	$gp,0($sp)
    li	$v0,-1
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01552150:
    beq	$s0,$a0,.L015521c8
    nop
    beq	$s0,$a1,.L015521c8
    nop
    beq	$s0,$a3,.L015521c8
    nop
    beq	$s0,$a4,.L015521c8
    nop
    beq	$s0,$a5,.L015521c8
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,17
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015521b0
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,17
    move	$a3,$s0
    lw	$a1,68($a1)
    jalr	$t9
    addiu	$a2,$a2,9688
    ld	$ra,24($sp)
.L015521b0:
    ld	$gp,0($sp)
    li	$v0,-1
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015521c8:
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    sw	$s0,16($s1)
    move	$v0,$zero
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alGetChannels
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-30768
    sd	$gp,0($sp)
    beqz	$a0,.L01552220
    addu	$gp,$t9,$at
    li	$v1,0xbb82
    lw	$v0,0($a0)
    beq	$v0,$v1,.L01552270
.L01552220:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0155225c
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s0
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,9704
    ld	$ra,16($sp)
.L0155225c:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01552270:
    lw	$v0,16($a0)
    move	$ra,$ra
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alGetFD
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-30928
    sd	$gp,0($sp)
    beqz	$a0,.L015522c0
    addu	$gp,$t9,$at
    li	$v1,0xbb81
    lw	$v0,0($a0)
    beq	$v0,$v1,.L0155230c
.L015522c0:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,1
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015522f8
    ld	$ra,16($sp)
    la	$a1,_AL2errortab
    li	$a0,1
    addiu	$a2,$gp,-6800
    move	$a3,$s0
    jalr	$t9
    lw	$a1,4($a1)
    ld	$ra,16($sp)
.L015522f8:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0155230c:
    lw	$v0,36($a0)
    move	$ra,$ra
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alGetFrameTime
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,56($sp)
    addiu	$at,$at,-31088
    sd	$gp,48($sp)
    beqz	$a0,.L01552368
    addu	$gp,$t9,$at
    li	$v1,0xbb81
    lw	$v0,0($a0)
    sd	$a1,32($sp)
    beq	$v0,$v1,.L015523b8
    sd	$a2,24($sp)
.L01552368:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,1
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015523a4
    ld	$ra,56($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,1
    move	$a3,$s0
    lw	$a1,4($a1)
    jalr	$t9
    addiu	$a2,$a2,9720
    ld	$ra,56($sp)
.L015523a4:
    li	$v0,-1
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015523b8:
    lw	$t9,-28220($gp)
    addiu	$a2,$sp,0
    li	$a1,19
    jalr	$t9
    lw	$a0,36($a0)
    bltz	$v0,.L01552400
    ld	$s0,40($sp)
    ld	$gp,48($sp)
    ld	$a3,24($sp)
    ld	$a4,0($sp)
    ld	$a5,32($sp)
    ld	$ra,56($sp)
    sd	$a4,0($a5)
    move	$v0,$zero
    ld	$a2,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    sd	$a2,0($a3)
.L01552400:
    lw	$t9,-28488($gp)
    jalr	$t9
    move	$a0,$zero
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552438
    ld	$ra,56($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    move	$a0,$zero
    addiu	$a2,$a2,9720
    jalr	$t9
    lw	$a1,0($a1)
    ld	$ra,56($sp)
.L01552438:
    li	$v0,-1
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64

glabel alSetConfig
    addiu	$sp,$sp,-32
    move	$v0,$a1
    sd	$s0,16($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,-31376
    sd	$gp,8($sp)
    beqz	$a0,.L01552484
    addu	$gp,$t9,$at
    lw	$v1,0($a0)
    li	$a0,0xbb81
    beq	$v1,$a0,.L015524d4
.L01552484:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,1
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015524c0
    li	$v0,-1
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,1
    move	$a3,$s0
    addiu	$a2,$a2,9736
    jalr	$t9
    lw	$a1,4($a1)
    li	$v0,-1
.L015524c0:
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015524d4:
    beqz	$a1,.L015524ec
    lw	$t9,-28488($gp)
    lw	$a3,0($a1)
    li	$a4,0xbb82
    beq	$a3,$a4,.L0155253c
    lw	$t9,-28488($gp)
.L015524ec:
    sd	$v0,0($sp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552528
    ld	$ra,24($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,2
    ld	$a3,0($sp)
    addiu	$a2,$a2,9736
    jalr	$t9
    lw	$a1,8($a1)
    ld	$ra,24($sp)
.L01552528:
    li	$v0,-1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0155253c:
    lw	$t0,12($a1)
    lw	$a4,80($s0)
    lw	$a3,32($a1)
    lw	$a0,16($a1)
    lw	$a5,64($s0)
    bne	$a3,$a4,.L0155264c
    lw	$t1,60($s0)
    lw	$a6,36($a1)
    sll	$a6,$a6,0x1
    sd	$a1,0($sp)
    bltz	$a6,.L015526e4
    lw	$a7,4($a1)
    move	$a6,$a7
    lw	$a7,84($s0)
.L01552574:
    sll	$a7,$a7,0x1
    bltz	$a7,.L015525fc
    lw	$v0,52($s0)
    bne	$a6,$v0,.L01552610
    lw	$t9,-28488($gp)
.L01552588:
    bne	$a0,$a5,.L015526a4
    dsll32	$v0,$t0,0x3
    dsll32	$a0,$t1,0x3
    beq	$t0,$t1,.L01552700
    ld	$a5,0($sp)
    bltz	$v0,.L015525ac
    lw	$t9,-28488($gp)
    bgez	$a0,.L015526fc
    lw	$t9,-28488($gp)
.L015525ac:
    jalr	$t9
    li	$a0,19
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015525e8
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    ld	$a3,0($sp)
    la	$a1,_AL2errortab
    li	$a0,19
    lw	$a3,12($a3)
    lw	$a1,76($a1)
    jalr	$t9
    addiu	$a2,$a2,9736
    ld	$ra,24($sp)
.L015525e8:
    li	$v0,-1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015525fc:
    lw	$a7,64($s0)
    mult	$a7,$v0
    mflo	$a4
    beq	$a6,$a4,.L01552588
    lw	$t9,-28488($gp)
.L01552610:
    jalr	$t9
    li	$a0,10
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552644
    la	$a1,_AL2errortab
    ld	$a3,0($sp)
    la	$a2,sub_01730000
    li	$a0,10
    lw	$a3,4($a3)
    addiu	$a2,$a2,9736
    jalr	$t9
    lw	$a1,40($a1)
.L01552644:
    b	.L015524c0
    li	$v0,-1
.L0155264c:
    lw	$t9,-28488($gp)
    sd	$a1,0($sp)
    jalr	$t9
    li	$a0,3
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552690
    ld	$ra,24($sp)
    la	$a1,_AL2errortab
    ld	$a3,0($sp)
    la	$a2,sub_01730000
    li	$a0,3
    lw	$a3,32($a3)
    addiu	$a2,$a2,9736
    jalr	$t9
    lw	$a1,12($a1)
    ld	$ra,24($sp)
.L01552690:
    li	$v0,-1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015526a4:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,17
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015526dc
    la	$a1,_AL2errortab
    ld	$a3,0($sp)
    la	$a2,sub_01730000
    li	$a0,17
    lw	$a3,16($a3)
    addiu	$a2,$a2,9736
    jalr	$t9
    lw	$a1,68($a1)
.L015526dc:
    b	.L015524c0
    li	$v0,-1
.L015526e4:
    ld	$a4,0($sp)
    lw	$a4,16($a4)
    mult	$a4,$a7
    mflo	$a6
    b	.L01552574
    lw	$a7,84($s0)
.L015526fc:
    ld	$a5,0($sp)
.L01552700:
    lw	$t9,-32308($gp)
    lw	$a7,8($a5)
    sw	$a7,56($s0)
    lw	$a6,12($a5)
    sw	$a6,60($s0)
    ldc1	$f0,24($a5)
    move	$a0,$s0
    bal _AL2recalcscalefactors
    sdc1	$f0,72($s0)
    lw	$t9,-32312($gp)
    bal _AL2assignfuncs
    move	$a0,$s0
    b	.L015524c0
    move	$v0,$zero

glabel alGetConfig
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0x1f
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,-32128
    sd	$gp,8($sp)
    beqz	$a0,.L01552774
    addu	$gp,$t9,$at
    li	$v1,0xbb81
    lw	$v0,0($a0)
    beq	$v0,$v1,.L015527c4
    lw	$t9,-28584($gp)
.L01552774:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,1
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015527b0
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,1
    move	$a3,$s0
    lw	$a1,4($a1)
    jalr	$t9
    addiu	$a2,$a2,9752
    ld	$ra,24($sp)
.L015527b0:
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015527c4:
    jalr	$t9
    li	$a0,40
    beqz	$v0,.L01552808
    sd	$v0,0($sp)
    lw	$t9,-27756($gp)
    li	$a2,40
    ld	$a1,0($sp)
    jalr	$t9
    addiu	$a0,$s0,48
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$v0,0($sp)
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    li	$v1,0xbb82
    jr	$ra
    sw	$v1,0($v0)
.L01552808:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,6
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552840
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,6
    lw	$a1,24($a1)
    jalr	$t9
    addiu	$a2,$a2,9752
    ld	$ra,24($sp)
.L01552840:
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alSetSampFmt
    addiu	$sp,$sp,-32
    li	$a3,32
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$ra,24($sp)
    lui	$at,0x1f
    sd	$s0,8($sp)
    move	$s0,$a1
    addiu	$at,$at,-32416
    sd	$gp,0($sp)
    beqz	$a0,.L015528b0
    addu	$gp,$t9,$at
    ld	$ra,24($sp)
    lw	$v0,0($a0)
    lui	$a0,0x1000
    li	$v1,0xbb82
    li	$a1,64
    ori	$a5,$a0,0x35
    beq	$v0,$v1,.L01552904
    ori	$a4,$a0,0x32
.L015528b0:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015528ec
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s1
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,9768
    ld	$ra,24($sp)
.L015528ec:
    ld	$gp,0($sp)
    li	$v0,-1
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01552904:
    ori	$t0,$a0,0x31
    ori	$t2,$a0,0x34
    ori	$t1,$a0,0x33
    li	$a2,1
    ori	$a6,$a0,0x2f
    ori	$a7,$a0,0x30
    beq	$s0,$a2,.L015529bc
    move	$v0,$zero
    beq	$s0,$a3,.L015529bc
    nop
    beq	$s0,$a1,.L015529bc
    nop
    beq	$s0,$a6,.L015529bc
    nop
    beq	$s0,$a7,.L015529bc
    nop
    beq	$s0,$t0,.L015529bc
    nop
    beq	$s0,$a4,.L015529bc
    nop
    beq	$s0,$t1,.L015529bc
    nop
    beq	$s0,$t2,.L015529bc
    nop
    beq	$s0,$a5,.L015529bc
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,19
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015529a4
    ld	$ra,24($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,19
    move	$a3,$s0
    addiu	$a2,$a2,9768
    jalr	$t9
    lw	$a1,76($a1)
    ld	$ra,24($sp)
.L015529a4:
    ld	$gp,0($sp)
    li	$v0,-1
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015529bc:
    ld	$gp,0($sp)
    sw	$s0,12($s1)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alGetSampFmt
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1e
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,32736
    sd	$gp,0($sp)
    beqz	$a0,.L01552a10
    addu	$gp,$t9,$at
    li	$v1,0xbb82
    lw	$v0,0($a0)
    beq	$v0,$v1,.L01552a60
.L01552a10:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552a4c
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s0
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,9784
    ld	$ra,16($sp)
.L01552a4c:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01552a60:
    lw	$v0,12($a0)
    move	$ra,$ra
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alOpenPort
    addiu	$sp,$sp,-448
    move	$v0,$a1
    sd	$s0,384($sp)
    lui	$at,0x1e
    move	$s0,$a2
    sd	$ra,408($sp)
    addiu	$at,$at,31552
    sd	$gp,392($sp)
    beqz	$a2,.L01552f00
    addu	$gp,$t9,$at
    lw	$v1,0($a2)
    li	$a1,0xbb82
    beq	$v1,$a1,.L01552f04
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552ee8
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,2
    move	$a3,$s0
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,8($a1)
.L01552ee8:
    move	$v0,$zero
.L01552eec:
    ld	$ra,408($sp)
    ld	$gp,392($sp)
    ld	$s0,384($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L01552f00:
    la	$s0,_AL2default_config
.L01552f04:
    lbu	$a1,0($v0)
    li	$a3,119
    beq	$a1,$a3,.L01552f74
    li	$a4,114
    beq	$a1,$a4,.L01552f68
    sd	$v0,368($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,5
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552f50
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,5
    ld	$a3,368($sp)
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,20($a1)
.L01552f50:
    ld	$ra,408($sp)
    move	$v0,$zero
    ld	$gp,392($sp)
    ld	$s0,384($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L01552f68:
    sd	$zero,352($sp)
    b	.L01552f80
    sd	$a0,344($sp)
.L01552f74:
    li	$a3,1
    sd	$a3,352($sp)
    sd	$a0,344($sp)
.L01552f80:
    lw	$t9,-28584($gp)
    jalr	$t9
    li	$a0,176
    bnez	$v0,.L01552fdc
    sd	$v0,376($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,6
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01552fc4
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,6
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,24($a1)
.L01552fc4:
    ld	$ra,408($sp)
    move	$v0,$zero
    ld	$gp,392($sp)
    ld	$s0,384($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L01552fdc:
    ld	$a1,344($sp)
    ld	$a3,376($sp)
    ld	$a5,352($sp)
    sw	$a5,40($a3)
    lw	$t9,-28512($gp)
    li	$a4,0xbb81
    sw	$a4,0($a3)
    addiu	$a0,$a3,92
    sd	$a0,336($sp)
    li	$a2,19
    jalr	$t9
    sw	$zero,12($a3)
    lw	$t9,-27756($gp)
    ld	$a6,376($sp)
    li	$a2,40
    move	$a0,$s0
    addiu	$a1,$a6,48
    jalr	$t9
    sb	$zero,111($a6)
    ld	$a3,376($sp)
    lui	$a4,0xefff
    lw	$a3,60($a3)
    ori	$a4,$a4,0xffd1
    la	$a2,sub_01730000
    addu	$a3,$a3,$a4
    sltiu	$a4,$a3,7
    addiu	$a2,$a2,3888
    sll	$a3,$a3,0x2
    beqz	$a4,.L01553068
    addu	$a2,$a2,$a3
    lw	$a4,0($a2)
    jr	$a4
    ld	$a6,376($sp)
    li	$a5,6
    sw	$a5,56($a6)
.L01553068:
    lw	$t9,-28456($gp)
    la	$a0,_ALhdsp0master
    li	$a1,2
    jalr	$t9
    lw	$a0,0($a0)
    bltz	$v0,.L01553478
    move	$a1,$v0
    sd	$zero,320($sp)
    b	.L0155309c
    sd	$v0,328($sp)
.L01553090:
    slti	$a2,$a1,100
    beqz	$a2,.L015530f0
    sd	$a1,320($sp)
.L0155309c:
    lw	$t9,-28220($gp)
    li	$a1,2
    ld	$a0,328($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    bltz	$v0,.L015534f4
    lw	$t9,-28556($gp)
    lw	$t9,-28520($gp)
    la	$a1,sub_01730000
    addiu	$a0,$sp,8
    lw	$a2,0($sp)
    jalr	$t9
    addiu	$a1,$a1,3920
    lw	$t9,-28456($gp)
    addiu	$a0,$sp,8
    jalr	$t9
    li	$a1,2
    ld	$a1,320($sp)
    sd	$v0,360($sp)
    bltz	$v0,.L01553090
    addiu	$a1,$a1,1
.L015530f0:
    lw	$t9,-28556($gp)
    jalr	$t9
    ld	$a0,328($sp)
    ld	$a3,360($sp)
    bltz	$a3,.L015535dc
    lw	$t9,-28564($gp)
    lw	$a2,12($s0)
    dsll32	$a4,$a2,0x3
    bgez	$a4,.L015534c4
    lw	$t9,-28220($gp)
    lw	$t9,-28220($gp)
    ld	$a0,360($sp)
    jalr	$t9
    li	$a1,29
    bltz	$v0,.L01553644
    la	$a1,errno
.L01553130:
    lw	$t9,-28220($gp)
.L01553134:
    ld	$a0,360($sp)
    lw	$a2,16($s0)
    jalr	$t9
    li	$a1,10
    bltz	$v0,.L0155361c
    ld	$a5,376($sp)
    lw	$a3,16($s0)
    sw	$a3,88($a5)
.L01553154:
    lw	$t1,36($s0)
    li	$a2,1
    srl	$a6,$t1,0x1e
    and	$a6,$a2,$a6
    beq	$a2,$a6,.L015534dc
    lw	$a7,4($s0)
    lw	$t0,16($s0)
    addu	$t3,$t0,$a7
    addiu	$t3,$t3,-1
    div	$zero,$t3,$t0
    mflo	$t2
    nop
    nop
    mult	$a3,$t2
    teq	$t0,$zero,0x7
    mflo	$t0
    nop
    nop
.L0155319c:
    srl	$t8,$t1,0x1f
    beqz	$t8,.L015534ec
    nop
.L015531a8:
    lw	$t9,12($s0)
    lui	$ra,0x1000
    and	$t9,$t9,$ra
    beqz	$t9,.L015531d8
    ld	$a4,360($sp)
    ld	$at,376($sp)
    lw	$at,56($at)
    mult	$at,$t0
    mflo	$t0
    nop
    nop
    ld	$a4,360($sp)
.L015531d8:
    ld	$v0,376($sp)
    sll	$a1,$t0,0x2
    lw	$t9,-27604($gp)
    move	$a5,$zero
    addiu	$a1,$a1,16
    sd	$a1,304($sp)
    li	$a3,1
    li	$a2,3
    sw	$t0,8($v0)
    move	$a0,$zero
    jalr	$t9
    sw	$a1,4($v0)
    li	$a2,-1
    bne	$v0,$a2,.L015532b0
    sd	$v0,312($sp)
    lw	$t9,-28448($gp)
    jalr	$t9
    nop
    lw	$t9,-28564($gp)
    sd	$v0,296($sp)
    jalr	$t9
    ld	$a0,376($sp)
    lw	$t9,-28556($gp)
    jalr	$t9
    ld	$a0,360($sp)
    ld	$v0,296($sp)
    li	$a4,22
    beq	$v0,$a4,.L01553718
    lw	$t9,-28488($gp)
    li	$a5,12
    beq	$v0,$a5,.L01553754
    lw	$t9,-28488($gp)
    li	$a6,16
    beq	$v0,$a6,.L015535a4
    lw	$t9,-28488($gp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,9
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0155329c
    ld	$ra,408($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,9
    lw	$a1,36($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
    ld	$ra,408($sp)
.L0155329c:
    move	$v0,$zero
    ld	$gp,392($sp)
    ld	$s0,384($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L015532b0:
    lw	$t9,-28528($gp)
    ld	$a1,336($sp)
    jalr	$t9
    addiu	$a0,$sp,264
    lw	$t9,-28220($gp)
    addiu	$a2,$sp,264
    li	$a1,8
    ld	$a0,360($sp)
    li	$a3,7
    jalr	$t9
    sw	$a3,284($sp)
    lw	$a0,32($s0)
    li	$a4,1
    beq	$a0,$a4,.L01553540
    ld	$a3,352($sp)
.L015532ec:
    lw	$t9,-32028($gp)
    jalr	$t9
    nop
    beqz	$v0,.L015536e0
    ld	$a5,352($sp)
    li	$a6,1
    beq	$a5,$a6,.L01553550
    ld	$a7,352($sp)
.L0155330c:
    beqz	$a7,.L01553564
    ld	$t1,376($sp)
.L01553314:
    lw	$t2,8($t1)
    addiu	$t2,$t2,4
    sw	$t2,288($sp)
    lw	$t1,40($t1)
    sb	$t1,292($sp)
    lw	$t0,36($s0)
    srl	$t0,$t0,0x1f
    beqz	$t0,.L0155358c
    lw	$t9,-28220($gp)
    lw	$t9,-28220($gp)
    addiu	$a2,$sp,288
    ld	$a0,360($sp)
    jalr	$t9
    li	$a1,18
    move	$a3,$v0
.L01553350:
    bgez	$a3,.L01553408
    ld	$t2,360($sp)
    lw	$t9,-28448($gp)
    jalr	$t9
    ld	$s0,304($sp)
    lw	$t9,-27608($gp)
    sd	$v0,400($sp)
    ld	$a0,312($sp)
    jalr	$t9
    move	$a1,$s0
    lw	$t9,-28564($gp)
    ld	$s0,400($sp)
    jalr	$t9
    ld	$a0,376($sp)
    lw	$t9,-28556($gp)
    jalr	$t9
    ld	$a0,360($sp)
    li	$t3,2
    beq	$s0,$t3,.L01553794
    lw	$t9,-28488($gp)
    li	$t8,12
    beq	$s0,$t8,.L015537c8
    lw	$t9,-28488($gp)
    li	$t9,16
    beq	$s0,$t9,.L015536ac
    lw	$t9,-28488($gp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,9
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015533e8
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,9
    lw	$a1,36($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
.L015533e8:
    b	.L01552eec
    move	$v0,$zero
    ld	$a3,376($sp)
    li	$a2,1
    sw	$a2,88($a3)
    sw	$a2,64($a3)
    b	.L01553068
    sw	$a2,56($a3)
.L01553408:
    ld	$a5,376($sp)
    ld	$a4,312($sp)
    sw	$t2,36($a5)
    addiu	$t1,$a4,16
    sw	$t1,28($a5)
    addiu	$t0,$a4,12
    sw	$t0,24($a5)
    addiu	$a7,$a4,4
    sw	$a7,20($a5)
    lw	$a6,8($a5)
    lw	$t9,-32308($gp)
    sw	$a4,16($a5)
    sll	$a6,$a6,0x2
    move	$a0,$a5
    sw	$a4,12($a5)
    addu	$a4,$a4,$a6
    addiu	$a4,$a4,16
    bal _AL2recalcscalefactors
    sw	$a4,32($a5)
    lw	$t9,-32312($gp)
    bal _AL2assignfuncs
    ld	$a0,376($sp)
    ld	$ra,408($sp)
    ld	$v0,376($sp)
    ld	$gp,392($sp)
    ld	$s0,384($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L01553478:
    lw	$t9,-28564($gp)
    jalr	$t9
    ld	$a0,376($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,4
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015534bc
    la	$a1,_AL2errortab
    la	$a3,_ALhdsp0master
    la	$a2,sub_01730000
    li	$a0,4
    lw	$a3,0($a3)
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,16($a1)
.L015534bc:
    b	.L01552eec
    move	$v0,$zero
.L015534c4:
    li	$a1,29
    ld	$a0,360($sp)
    jalr	$t9
    move	$a2,$zero
    b	.L01553134
    lw	$t9,-28220($gp)
.L015534dc:
    mult	$a3,$a7
    mflo	$t0
    b	.L0155319c
    nop
.L015534ec:
    b	.L015531a8
    addu	$t0,$a3,$t0
.L015534f4:
    jalr	$t9
    ld	$a0,328($sp)
    lw	$t9,-28564($gp)
    jalr	$t9
    ld	$a0,376($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,9
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01553538
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,9
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,36($a1)
.L01553538:
    b	.L01552eec
    move	$v0,$zero
.L01553540:
    beqz	$a3,.L0155378c
    nop
    b	.L015532ec
    li	$a0,10
.L01553550:
    li	$a4,10
    bne	$v0,$a4,.L01553574
    lw	$t9,-28220($gp)
    b	.L0155330c
    ld	$a7,352($sp)
.L01553564:
    li	$a5,9
    beq	$v0,$a5,.L01553314
    ld	$t1,376($sp)
    lw	$t9,-28220($gp)
.L01553574:
    li	$a1,21
    ld	$a0,360($sp)
    jalr	$t9
    move	$a2,$v0
    b	.L01553314
    ld	$t1,376($sp)
.L0155358c:
    addiu	$a2,$sp,288
    ld	$a0,360($sp)
    jalr	$t9
    li	$a1,3
    b	.L01553350
    move	$a3,$v0
.L015535a4:
    jalr	$t9
    li	$a0,7
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0155329c
    ld	$ra,408($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,7
    lw	$a1,28($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
    b	.L0155329c
    ld	$ra,408($sp)
.L015535dc:
    jalr	$t9
    ld	$a0,376($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,7
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01553614
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,7
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,28($a1)
.L01553614:
    b	.L01552eec
    move	$v0,$zero
.L0155361c:
    lw	$t9,-28220($gp)
    ld	$a3,376($sp)
    li	$a1,10
    ld	$a0,360($sp)
    li	$a2,2
    jalr	$t9
    sw	$a2,88($a3)
    ld	$a3,376($sp)
    b	.L01553154
    lw	$a3,88($a3)
.L01553644:
    lw	$t9,-27600($gp)
    la	$a0,sub_01730000
    lw	$a1,0($a1)
    jalr	$t9
    addiu	$a0,$a0,3944
    lw	$t9,-28564($gp)
    jalr	$t9
    ld	$a0,376($sp)
    lw	$t9,-28556($gp)
    jalr	$t9
    ld	$a0,360($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,19
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01553130
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    lw	$a3,12($s0)
    li	$a0,19
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,76($a1)
    b	.L01553130
    nop
.L015536ac:
    jalr	$t9
    li	$a0,7
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015533e8
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,7
    lw	$a1,28($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
    b	.L015533e8
    nop
.L015536e0:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,3
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01553710
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,3
    lw	$a1,12($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
.L01553710:
    b	.L01552eec
    move	$v0,$zero
.L01553718:
    jalr	$t9
    li	$a0,10
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0155329c
    ld	$ra,408($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    lw	$a3,4($s0)
    li	$a0,10
    addiu	$a2,$a2,9800
    jalr	$t9
    lw	$a1,40($a1)
    b	.L0155329c
    ld	$ra,408($sp)
.L01553754:
    jalr	$t9
    li	$a0,6
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0155329c
    ld	$ra,408($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,6
    lw	$a1,24($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
    b	.L0155329c
    ld	$ra,408($sp)
.L0155378c:
    b	.L015532ec
    li	$a0,9
.L01553794:
    jalr	$t9
    li	$a0,3
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015533e8
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,3
    lw	$a1,12($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
    b	.L015533e8
    nop
.L015537c8:
    jalr	$t9
    li	$a0,6
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015533e8
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,6
    lw	$a1,24($a1)
    jalr	$t9
    addiu	$a2,$a2,9800
    b	.L015533e8
    nop

glabel alSetWidth
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,16($sp)
    move	$s0,$a1
    lui	$at,0x1e
    sd	$ra,24($sp)
    li	$a1,2
    addiu	$at,$at,-29424
    sd	$gp,0($sp)
    beqz	$a0,.L01561cfc
    addu	$gp,$t9,$at
    li	$a4,32
    lw	$v0,0($a0)
    li	$v1,0xbb82
    li	$a5,64
    li	$a3,4
    beq	$v0,$v1,.L01561d50
    li	$a0,1
.L01561cfc:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01561d38
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s1
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,10264
    ld	$ra,24($sp)
.L01561d38:
    ld	$gp,0($sp)
    li	$v0,-1
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01561d50:
    beq	$s0,$a0,.L01561dc8
    nop
    beq	$s0,$a1,.L01561dc8
    nop
    beq	$s0,$a3,.L01561dc8
    nop
    beq	$s0,$a4,.L01561dc8
    nop
    beq	$s0,$a5,.L01561dc8
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,8
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01561db0
    ld	$ra,24($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,8
    move	$a3,$s0
    lw	$a1,32($a1)
    jalr	$t9
    addiu	$a2,$a2,10264
    ld	$ra,24($sp)
.L01561db0:
    ld	$gp,0($sp)
    li	$v0,-1
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01561dc8:
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    sw	$s0,8($s1)
    move	$v0,$zero
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alWriteFrames
    addiu	$sp,$sp,-208
    sd	$s4,184($sp)
    sd	$s0,176($sp)
    sd	$s6,192($sp)
    addiu	$s6,$sp,0
    move	$s0,$a0
    lw	$at,60($a0)
    move	$s4,$a1
    sd	$s2,200($sp)
    move	$s2,$a2
    sd	$s7,160($sp)
    lui	$v0,0x1e
    dsll32	$at,$at,0x3
    li	$s7,1
    sd	$ra,136($sp)
    addiu	$v0,$v0,-29744
    sd	$gp,168($sp)
    bgez	$at,.L01561e70
    addu	$gp,$t9,$v0
    lw	$t9,-32740($gp)
    addiu	$t9,$t9,8368
    bal alWriteFrames
    nop
    ld	$gp,168($sp)
    ld	$s0,176($sp)
    ld	$s2,200($sp)
    ld	$ra,136($sp)
    ld	$s4,184($sp)
    ld	$s6,192($sp)
    ld	$s7,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L01561e70:
    sd	$s5,152($sp)
    la	$s5,select
    sd	$s1,144($sp)
    lw	$s1,20($a0)
    sd	$s3,128($sp)
    blez	$a2,.L01562060
    lw	$s1,0($s1)
    b	.L01561f30
    sd	$s3,128($sp)
.L01561e94:
    move	$a0,$a2
.L01561e98:
    slt	$a4,$a0,$s2
    move	$a2,$s2
    subu	$a1,$a5,$s1
    beqz	$a4,.L01561eb0
    srav	$a1,$a1,$a3
    move	$a2,$a0
.L01561eb0:
    slt	$a5,$a1,$a2
    beqz	$a5,.L01561ec4
    slti	$a6,$a2,257
    move	$a2,$a1
    slti	$a6,$a2,257
.L01561ec4:
    bnez	$a6,.L01561ed0
    move	$s3,$a2
    li	$s3,256
.L01561ed0:
    lw	$t9,112($s0)
    move	$a0,$s4
    move	$a2,$s3
    lw	$a1,28($s0)
    move	$a3,$s0
    sll	$a4,$s1,0x2
    jalr	$t9
    addu	$a1,$a1,$a4
    lw	$a5,8($s0)
    lw	$t0,128($s0)
    lw	$a7,132($s0)
    lw	$a6,124($s0)
    sllv	$t0,$s3,$t0
    addu	$s1,$s1,$t0
    addu	$a6,$a6,$a7
    slt	$a7,$s1,$a5
    subu	$s2,$s2,$s3
    sllv	$a6,$s3,$a6
    lw	$a0,20($s0)
    bnez	$a7,.L01561f28
    addu	$s4,$s4,$a6
    subu	$s1,$s1,$a5
.L01561f28:
    blez	$s2,.L01562060
    sw	$s1,0($a0)
.L01561f30:
    lw	$a6,16($s0)
    lw	$a6,0($a6)
    lw	$a7,88($s0)
    subu	$a6,$a6,$s1
    subu	$a6,$a6,$a7
    lw	$a5,8($s0)
    bltz	$a6,.L01562094
    lw	$a3,128($s0)
.L01561f50:
    srav	$a0,$a6,$a3
    srl	$a6,$a5,0x1f
    bnez	$a0,.L01561e98
    addu	$a6,$a6,$a5
    b	.L0156209c
    nop
    nop
    nop
.L01561f70:
    srav	$a2,$a6,$a3
    srl	$a6,$a5,0x1f
    bnez	$a2,.L01561e94
    addu	$a6,$a6,$a5
    sra	$a6,$a6,0x1
.L01561f84:
    sllv	$a2,$s2,$a3
    slt	$t0,$a2,$a6
    beqz	$t0,.L01561f98
    lw	$a7,24($s0)
    move	$a6,$a2
.L01561f98:
    addiu	$a2,$sp,0
    subu	$t0,$a5,$a6
    sw	$t0,0($a7)
    sd	$zero,120($sp)
    sd	$zero,112($sp)
    sd	$zero,104($sp)
    sd	$zero,96($sp)
    sd	$zero,88($sp)
    sd	$zero,80($sp)
    sd	$zero,72($sp)
    sd	$zero,64($sp)
    sd	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    lw	$a3,36($s0)
    sra	$a4,$a3,0x4
    srl	$a4,$a4,0x1b
    addu	$a4,$a4,$a3
    sra	$a4,$a4,0x5
    sll	$a2,$a4,0x2
    sll	$a4,$a4,0x5
    addu	$a2,$s6,$a2
    subu	$a3,$a3,$a4
    lw	$a1,0($a2)
    sllv	$a3,$s7,$a3
    move	$t9,$s5
    or	$a1,$a1,$a3
    sw	$a1,0($a2)
    move	$a4,$zero
    move	$a1,$zero
    lw	$a0,36($s0)
    addiu	$a2,$sp,0
    move	$a3,$zero
    jalr	$t9
    addiu	$a0,$a0,1
    lw	$a6,16($s0)
    lw	$a6,0($a6)
    lw	$a7,88($s0)
    subu	$a6,$a6,$s1
    subu	$a6,$a6,$a7
    lw	$a5,8($s0)
    bgez	$a6,.L01561f70
    lw	$a3,128($s0)
    b	.L01561f70
    addu	$a6,$a5,$a6
.L01562060:
    ld	$gp,168($sp)
    ld	$s0,176($sp)
    ld	$s1,144($sp)
    ld	$s2,200($sp)
    ld	$s3,128($sp)
    ld	$s4,184($sp)
    ld	$ra,136($sp)
    ld	$s5,152($sp)
    move	$v0,$zero
    ld	$s6,192($sp)
    ld	$s7,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L01562094:
    b	.L01561f50
    addu	$a6,$a5,$a6
.L0156209c:
    b	.L01561f84
    sra	$a6,$a6,0x1

glabel alSetFloatMax
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1e
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-31072
    sd	$gp,0($sp)
    beqz	$a0,.L01562354
    addu	$gp,$t9,$at
    move	$ra,$ra
    lw	$v0,0($a0)
    li	$v1,0xbb82
    beq	$v0,$v1,.L015623a4
.L01562354:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562390
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s0
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,10280
    ld	$ra,16($sp)
.L01562390:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015623a4:
    dmtc1	$zero,$f0
    nop
    c.eq.d	$f13,$f0
    move	$v0,$zero
    bc1f	.L01562408
    ld	$s0,8($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,22
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015623f4
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,22
    lw	$a1,88($a1)
    jalr	$t9
    addiu	$a2,$a2,10280
    ld	$ra,16($sp)
.L015623f4:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01562408:
    sdc1	$f13,24($a0)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alGetFloatMax
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1e
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-31328
    sd	$gp,0($sp)
    beqz	$a0,.L01562450
    addu	$gp,$t9,$at
    li	$v1,0xbb82
    lw	$v0,0($a0)
    beq	$v0,$v1,.L015624a0
.L01562450:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0156248c
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s0
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,10296
    ld	$ra,16($sp)
.L0156248c:
    dmtc1	$zero,$f0
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015624a0:
    ldc1	$f0,24($a0)
    move	$ra,$ra
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel alGetWidth
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$at,0x1e
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-31488
    sd	$gp,0($sp)
    beqz	$a0,.L015624f0
    addu	$gp,$t9,$at
    li	$v1,0xbb82
    lw	$v0,0($a0)
    beq	$v0,$v1,.L01562540
.L015624f0:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,2
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L0156252c
    ld	$ra,16($sp)
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,2
    move	$a3,$s0
    lw	$a1,8($a1)
    jalr	$t9
    addiu	$a2,$a2,10312
    ld	$ra,16($sp)
.L0156252c:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01562540:
    lw	$v0,8($a0)
    move	$ra,$ra
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel __alParams
    addiu	$sp,$sp,-1632
    sd	$a5,1560($sp)
    sd	$a4,1568($sp)
    lui	$at,0x1e
    sd	$a3,1552($sp)
    addiu	$at,$at,-31648
    sd	$gp,1584($sp)
    addu	$gp,$t9,$at
    lw	$t9,-32028($gp)
    sd	$a2,1576($sp)
    sd	$s1,1592($sp)
    sd	$ra,1600($sp)
    bal _alGetResourceValue
    move	$s1,$a1
    bnez	$s1,.L015625f8
    ld	$a3,1576($sp)
    ld	$v0,1560($sp)
    beqz	$v0,.L015625e4
    ld	$ra,1600($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,14
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015625e0
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,14
    move	$a3,$s1
    addiu	$a2,$a2,10328
    jalr	$t9
    lw	$a1,56($a1)
.L015625e0:
    ld	$ra,1600($sp)
.L015625e4:
    li	$v0,-1
    ld	$gp,1584($sp)
    ld	$s1,1592($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L015625f8:
    bltz	$a3,.L01562818
    ld	$a4,1568($sp)
    bltz	$a4,.L0156287c
    sd	$v0,1544($sp)
    ld	$a0,1568($sp)
    sd	$s0,1624($sp)
.L01562610:
    sd	$s0,1624($sp)
    ld	$a5,1576($sp)
    ld	$a7,1544($sp)
    move	$s0,$zero
    lui	$a6,0x1000
    sw	$a7,32($sp)
    ori	$a6,$a6,0x1
    blez	$a5,.L015626b0
    sw	$a6,24($sp)
    ld	$t8,1576($sp)
    addiu	$t0,$sp,0
    sll	$t3,$t8,0x2
    addiu	$t2,$s1,1488
    subu	$t3,$t3,$t8
    move	$t1,$s1
    sll	$t3,$t3,0x3
    b	.L01562660
    addu	$t3,$t3,$s1
.L01562658:
    beqz	$a1,.L015626b0
    nop
.L01562660:
    lw	$a3,0($t1)
    sw	$a3,48($t0)
    lw	$a2,4($t1)
    sw	$a2,52($t0)
    ld	$a1,8($t1)
    sd	$a1,56($t0)
    lh	$v1,16($t1)
    sh	$v1,64($t0)
    lh	$v0,18($t1)
    addiu	$t1,$t1,24
    sh	$v0,66($t0)
    lh	$at,-4($t1)
    sltu	$ra,$t1,$t3
    sh	$at,68($t0)
    addiu	$t0,$t0,24
    addiu	$s0,$s0,1
    lh	$t9,-2($t1)
    sltu	$a1,$t1,$t2
    bnez	$ra,.L01562658
    sh	$t9,46($t0)
.L015626b0:
    ld	$a5,1552($sp)
    addiu	$a4,$s0,2
    beqz	$a5,.L01562870
    sw	$a4,0($sp)
    li	$a1,25
    sd	$a0,1536($sp)
.L015626c8:
    lw	$t9,-28220($gp)
    ld	$a0,1536($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    bltz	$v0,.L015628e8
    move	$t1,$v0
    blez	$s0,.L015627e4
    ld	$v0,1568($sp)
    sll	$t0,$s0,0x2
    slti	$t2,$s0,2
    subu	$t0,$t0,$s0
    addiu	$v0,$sp,0
    sll	$t0,$t0,0x3
    bnez	$t2,.L015629c4
    addu	$t0,$t0,$sp
    lh	$at,70($sp)
    sh	$at,22($s1)
    lh	$ra,68($sp)
    sh	$ra,20($s1)
    lh	$t9,66($sp)
    sh	$t9,18($s1)
    lh	$t8,64($sp)
    sh	$t8,16($s1)
    lw	$a0,48($sp)
    lw	$t3,52($sp)
    sw	$t3,4($s1)
    addiu	$a1,$sp,24
    ld	$t2,56($sp)
    addiu	$v0,$t0,-24
    move	$a2,$s1
    sd	$t2,8($s1)
    nop
    nop
    nop
.L01562750:
    sw	$a0,0($a2)
    addiu	$a2,$a2,24
    lh	$at,70($a1)
    sh	$at,22($a2)
    lh	$at,68($a1)
    sh	$at,20($a2)
    lh	$at,66($a1)
    sh	$at,18($a2)
    lh	$at,64($a1)
    sh	$at,16($a2)
    lw	$a0,48($a1)
    lw	$at,52($a1)
    sw	$at,4($a2)
    addiu	$v1,$a1,24
    ld	$at,56($a1)
    beq	$a1,$v0,.L01562810
    sd	$at,8($a2)
    sw	$a0,0($a2)
    addiu	$a2,$a2,24
    lh	$at,94($a1)
    sh	$at,22($a2)
    lh	$at,92($a1)
    sh	$at,20($a2)
    lh	$at,90($a1)
    sh	$at,18($a2)
    lh	$at,88($a1)
    sh	$at,16($a2)
    lw	$a0,72($a1)
    lw	$at,76($a1)
    sw	$at,4($a2)
    addiu	$a1,$a1,48
    ld	$at,56($v1)
    bne	$v1,$v0,.L01562750
    sd	$at,8($a2)
    move	$s1,$a2
.L015627dc:
    sw	$a0,0($s1)
.L015627e0:
    ld	$v0,1568($sp)
.L015627e4:
    bltz	$v0,.L01562958
.L015627e8:
    ld	$ra,1600($sp)
    ld	$s0,1624($sp)
    move	$v0,$t1
    ld	$gp,1584($sp)
    ld	$s1,1592($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L01562804:
    ld	$gp,1584($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L01562810:
    b	.L015627dc
    move	$s1,$a2
.L01562818:
    ld	$v1,1560($sp)
    beqz	$v1,.L0156285c
    ld	$ra,1600($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,24
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562858
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,24
    ld	$a3,1576($sp)
    lw	$a1,96($a1)
    jalr	$t9
    addiu	$a2,$a2,10328
.L01562858:
    ld	$ra,1600($sp)
.L0156285c:
    li	$v0,-1
    ld	$gp,1584($sp)
    ld	$s1,1592($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L01562870:
    li	$a1,24
    b	.L015626c8
    sd	$a0,1536($sp)
.L0156287c:
    lw	$t9,-28456($gp)
    la	$a0,_ALhdsp0master
    li	$a1,2
    jalr	$t9
    lw	$a0,0($a0)
    bgez	$v0,.L01562610
    move	$a0,$v0
    ld	$a1,1560($sp)
    beqz	$a1,.L015628dc
    ld	$s1,1592($sp)
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,4
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L015628dc
    la	$a1,_AL2errortab
    la	$a3,_ALhdsp0master
    la	$a2,sub_01730000
    li	$a0,4
    lw	$a3,0($a3)
    addiu	$a2,$a2,10328
    jalr	$t9
    lw	$a1,16($a1)
.L015628dc:
    ld	$ra,1600($sp)
    b	.L01562804
    li	$v0,-1
.L015628e8:
    lw	$t9,-28448($gp)
    ld	$s1,1592($sp)
    jalr	$t9
    ld	$s0,1624($sp)
    ld	$a4,1568($sp)
    ld	$ra,1600($sp)
    bltz	$a4,.L015629a8
    move	$a1,$v0
.L01562908:
    ld	$a5,1560($sp)
    beqz	$a5,.L01562950
    li	$a6,19
    beq	$a1,$a6,.L01562970
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,9
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562950
    ld	$ra,1600($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,9
    addiu	$a2,$a2,10328
    jalr	$t9
    lw	$a1,36($a1)
    ld	$ra,1600($sp)
.L01562950:
    b	.L01562804
    li	$v0,-1
.L01562958:
    lw	$t9,-28556($gp)
    sd	$t1,1616($sp)
    jalr	$t9
    ld	$a0,1536($sp)
    b	.L015627e8
    ld	$t1,1616($sp)
.L01562970:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,3
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562950
    ld	$ra,1600($sp)
    la	$a1,_AL2errortab
    ld	$a2,1544($sp)
    li	$a0,3
    jalr	$t9
    lw	$a1,12($a1)
    b	.L01562950
    ld	$ra,1600($sp)
.L015629a8:
    lw	$t9,-28556($gp)
    sd	$v0,1608($sp)
    jalr	$t9
    ld	$a0,1536($sp)
    ld	$a1,1608($sp)
    b	.L01562908
    ld	$ra,1600($sp)
.L015629c4:
    lh	$t0,70($sp)
    sh	$t0,22($s1)
    lh	$a7,68($sp)
    sh	$a7,20($s1)
    lh	$a6,66($sp)
    sh	$a6,18($s1)
    lh	$a5,64($sp)
    sh	$a5,16($s1)
    lw	$a4,48($sp)
    sw	$a4,0($s1)
    lw	$a3,52($sp)
    sw	$a3,4($s1)
    ld	$a2,56($sp)
    b	.L015627e0
    sd	$a2,8($s1)

glabel _alGetResourceValue
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    li	$at,9
    lui	$v0,0x1d
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,32704
    sd	$gp,0($sp)
    beq	$a0,$at,.L01562a94
    addu	$gp,$t9,$v0
.L01562a28:
    li	$v1,10
    beq	$s0,$v1,.L01562a4c
    lw	$t9,-27964($gp)
.L01562a34:
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01562a4c:
    la	$a0,sub_01720000
    jalr	$t9
    addiu	$a0,$a0,17416
    beqz	$v0,.L01562a34
    lw	$t9,-32020($gp)
    move	$a1,$v0
    li	$a0,11
    lui	$a2,0x2000
    bal alGetResourceByName
    ori	$a2,$a2,0x2
    ld	$ra,16($sp)
    blez	$v0,.L01562ae0
    move	$a0,$v0
.L01562a80:
    move	$v0,$a0
    ld	$s0,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01562a94:
    lw	$t9,-27964($gp)
    la	$a0,sub_01720000
    jalr	$t9
    addiu	$a0,$a0,17400
    beqz	$v0,.L01562a28
    lw	$t9,-32020($gp)
    move	$a1,$v0
    li	$a0,11
    lui	$a2,0x2000
    bal alGetResourceByName
    ori	$a2,$a2,0x2
    ld	$ra,16($sp)
    blez	$v0,.L01562ae8
    move	$a0,$v0
.L01562acc:
    move	$v0,$a0
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01562ae0:
    b	.L01562a80
    move	$a0,$zero
.L01562ae8:
    b	.L01562acc
    move	$a0,$zero

glabel alGetParams
    lui	$at,0x1d
    addiu	$sp,$sp,-16
    addiu	$at,$at,32464
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$t9,-32032($gp)
    li	$a3,1
    li	$a4,-1
    sd	$ra,0($sp)
    bal __alParams
    li	$a5,1
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel alGetResourceByName
.L01562b30:
    addiu	$sp,$sp,-304
    li	$a3,32
    sh	$a3,16($sp)
    lui	$v0,0x1000
    addiu	$a3,$sp,24
    sw	$a3,8($sp)
    ori	$v0,$v0,0x13
    sw	$v0,0($sp)
    sd	$s0,248($sp)
    lui	$v1,0x1d
    sd	$s2,224($sp)
    addiu	$v1,$v1,32400
    sd	$gp,256($sp)
    addu	$gp,$t9,$v1
    lw	$t9,-28328($gp)
    move	$s2,$a2
    la	$at,sub_01720000
    move	$s0,$a1
    sd	$a0,232($sp)
    move	$a0,$a1
    sd	$ra,240($sp)
    jalr	$t9
    addiu	$a1,$at,17432
    beqz	$v0,.L01562d84
    lw	$t9,-28328($gp)
    la	$a1,sub_01720000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,17448
    beqz	$v0,.L01562dfc
    lw	$t9,-28364($gp)
    jalr	$t9
    move	$a0,$s0
    sltiu	$a2,$v0,80
    bnez	$a2,.L01562c24
    lw	$t9,-28456($gp)
    lw	$t9,-28488($gp)
    ld	$s2,224($sp)
    jalr	$t9
    li	$a0,24
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562c10
    move	$v0,$zero
    la	$a1,_AL2errortab
    la	$a3,_ALhdsp0master
    la	$a2,sub_01730000
    li	$a0,24
    lw	$a3,0($a3)
    addiu	$a2,$a2,10352
    jalr	$t9
    lw	$a1,96($a1)
    move	$v0,$zero
    nop
    nop
    nop
.L01562c10:
    ld	$ra,240($sp)
.L01562c14:
    ld	$s0,248($sp)
    ld	$gp,256($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L01562c24:
    la	$a0,_ALhdsp0master
    sd	$s3,296($sp)
    li	$a1,2
    jalr	$t9
    lw	$a0,0($a0)
    bltz	$v0,.L01562e9c
    move	$s3,$v0
    lw	$t9,-28512($gp)
    li	$a2,80
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$sp,56
    lw	$t9,-32028($gp)
    ld	$s0,232($sp)
    sb	$zero,135($sp)
    bal _alGetResourceValue
    move	$a0,$s0
    lw	$t9,-28220($gp)
    addiu	$a2,$sp,56
    li	$a1,28
    move	$a0,$s3
    jalr	$t9
    sw	$v0,136($sp)
    bltz	$v0,.L01562f6c
    lw	$t9,-28448($gp)
    sd	$s1,264($sp)
    lw	$a0,168($sp)
    sd	$s5,272($sp)
    sd	$s4,280($sp)
    sd	$s6,288($sp)
    blez	$a0,.L01562d14
    addiu	$v0,$a0,-1
    lui	$s1,0x1000
    ori	$s1,$s1,0x12
    la	$s6,alIsSubtype
    addiu	$s0,$sp,56
    sll	$t8,$v0,0x2
    la	$s5,__alParams
    addiu	$s4,$s0,-4
    addu	$s0,$s0,$t8
    nop
    nop
    addiu	$a1,$sp,176
.L01562cd0:
    li	$a2,1
    move	$t9,$s5
    sw	$s1,176($sp)
    li	$a3,1
    move	$a4,$s3
    lw	$a0,80($s0)
    bal __alParams
    move	$a5,$zero
    move	$t9,$s6
    move	$a0,$s2
    bal alIsSubtype
    lw	$a1,184($sp)
    bnez	$v0,.L01562e64
    lw	$t9,-28556($gp)
    addiu	$s0,$s0,-4
    bne	$s0,$s4,.L01562cd0
    addiu	$a1,$sp,176
.L01562d14:
    lw	$t9,-28556($gp)
    jalr	$t9
    move	$a0,$s3
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,25
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562d58
    ld	$s3,296($sp)
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,25
    addiu	$a2,$a2,10352
    jalr	$t9
    lw	$a1,100($a1)
    ld	$s3,296($sp)
.L01562d58:
    ld	$s1,264($sp)
    ld	$s5,272($sp)
    ld	$s4,280($sp)
    ld	$s6,288($sp)
    ld	$ra,240($sp)
    ld	$gp,256($sp)
    move	$v0,$zero
    ld	$s0,248($sp)
    ld	$s2,224($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L01562d84:
    lw	$t9,-32024($gp)
    li	$a2,1
    addiu	$a1,$sp,0
    bal alGetParams
    li	$a0,10
    bltz	$v0,.L01562ee8
    lw	$t9,-28488($gp)
    lh	$a3,20($sp)
    bltz	$a3,.L01562ee4
    lw	$t9,-32020($gp)
    move	$a2,$s2
    ld	$a0,232($sp)
    bal .L01562b30
    addiu	$a1,$sp,24
    lw	$t9,-32016($gp)
    move	$s0,$v0
    move	$a0,$s2
    lui	$a1,0x2000
    bal alIsSubtype
    ori	$a1,$a1,0x2
    beqz	$v0,.L01562fc4
    ld	$s2,224($sp)
    beqz	$s0,.L01562f5c
    li	$a0,10
.L01562de4:
    ld	$ra,240($sp)
    move	$v0,$a0
    ld	$gp,256($sp)
    ld	$s0,248($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L01562dfc:
    lw	$t9,-32024($gp)
    li	$a2,1
    addiu	$a1,$sp,0
    bal alGetParams
    li	$a0,9
    bltz	$v0,.L01562f24
    lw	$t9,-28488($gp)
    lh	$a2,20($sp)
    bltz	$a2,.L01562f20
    lw	$t9,-32020($gp)
    move	$a2,$s2
    ld	$a0,232($sp)
    bal .L01562b30
    addiu	$a1,$sp,24
    lw	$t9,-32016($gp)
    move	$s0,$v0
    move	$a0,$s2
    lui	$a1,0x2000
    bal alIsSubtype
    ori	$a1,$a1,0x2
    beqz	$v0,.L01562fcc
    ld	$s2,224($sp)
    beqz	$s0,.L01562f64
    li	$v0,9
.L01562e5c:
    b	.L01562c14
    ld	$ra,240($sp)
.L01562e64:
    jalr	$t9
    move	$a0,$s3
    ld	$s3,296($sp)
    ld	$s6,288($sp)
    ld	$s4,280($sp)
    ld	$s5,272($sp)
    ld	$s1,264($sp)
    ld	$gp,256($sp)
    ld	$ra,240($sp)
    lw	$v0,80($s0)
    ld	$s0,248($sp)
    ld	$s2,224($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L01562e9c:
    lw	$t9,-28488($gp)
    ld	$s2,224($sp)
    ld	$s3,296($sp)
    jalr	$t9
    li	$a0,4
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562edc
    la	$a2,sub_01730000
    la	$a3,_ALhdsp0master
    la	$a1,_AL2errortab
    li	$a0,4
    lw	$a3,0($a3)
    lw	$a1,16($a1)
    jalr	$t9
    addiu	$a2,$a2,10352
.L01562edc:
    b	.L01562c10
    move	$v0,$zero
.L01562ee4:
    lw	$t9,-28488($gp)
.L01562ee8:
    ld	$s2,224($sp)
    jalr	$t9
    li	$a0,25
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562f18
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,25
    lw	$a1,100($a1)
    jalr	$t9
    addiu	$a2,$a2,10352
.L01562f18:
    b	.L01562c10
    move	$v0,$zero
.L01562f20:
    lw	$t9,-28488($gp)
.L01562f24:
    ld	$s2,224($sp)
    jalr	$t9
    li	$a0,25
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562f54
    la	$a2,sub_01730000
    la	$a1,_AL2errortab
    li	$a0,25
    lw	$a1,100($a1)
    jalr	$t9
    addiu	$a2,$a2,10352
.L01562f54:
    b	.L01562c10
    move	$v0,$zero
.L01562f5c:
    b	.L01562de4
    move	$a0,$zero
.L01562f64:
    b	.L01562e5c
    move	$v0,$zero
.L01562f6c:
    jalr	$t9
    ld	$s2,224($sp)
    li	$a2,19
    beq	$v0,$a2,.L01562fd4
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,9
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562fac
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,9
    addiu	$a2,$a2,10352
    jalr	$t9
    lw	$a1,36($a1)
.L01562fac:
    lw	$t9,-28556($gp)
.L01562fb0:
    jalr	$t9
    move	$a0,$s3
    ld	$s3,296($sp)
    b	.L01562c10
    move	$v0,$zero
.L01562fc4:
    b	.L01562c10
    move	$v0,$s0
.L01562fcc:
    b	.L01562c10
    move	$v0,$s0
.L01562fd4:
    lw	$t9,-28488($gp)
    jalr	$t9
    li	$a0,3
    lw	$t9,-28608($gp)
    lw	$t9,0($t9)
    beqz	$t9,.L01562fac
    la	$a1,_AL2errortab
    la	$a2,sub_01730000
    li	$a0,3
    move	$a3,$s0
    addiu	$a2,$a2,10352
    jalr	$t9
    lw	$a1,12($a1)
    b	.L01562fb0
    lw	$t9,-28556($gp)

glabel alIsSubtype
    dsll32	$v0,$a0,0x2
    addiu	$sp,$sp,-80
    sd	$s0,56($sp)
    move	$s0,$a0
    lui	$at,0x1d
    sd	$s1,64($sp)
    move	$s1,$a1
    addiu	$at,$at,31152
    sd	$gp,48($sp)
    beq	$a0,$a1,.L015630f8
    addu	$gp,$t9,$at
    bgez	$v0,.L01563168
    lui	$v0,0x2000
.L01563044:
    and	$v1,$s1,$v0
    beqz	$v1,.L01563124
    lw	$t9,-32024($gp)
    beq	$s0,$s1,.L01563160
    li	$a1,-2
.L01563058:
    la	$v0,sub_01730000
    li	$a0,-1
    move	$a7,$zero
    move	$a5,$zero
    addiu	$v0,$v0,10376
    b	.L0156308c
    addiu	$a6,$v0,328
    nop
    nop
    nop
.L01563080:
    li	$a5,1
.L01563084:
    beq	$v0,$a6,.L015630e0
    nop
.L0156308c:
    lw	$a4,0($v0)
    beq	$a4,$s0,.L01563080
    addiu	$v0,$v0,4
    beqz	$a5,.L01563084
    nop
    beq	$a4,$a0,.L015630d0
    nop
    beq	$a4,$a1,.L015630d8
    nop
    blez	$a7,.L01563110
    ld	$gp,48($sp)
    bne	$a4,$s1,.L01563084
    nop
    b	.L015630e4
    li	$v0,1
    nop
    nop
.L015630d0:
    b	.L01563084
    addiu	$a7,$a7,1
.L015630d8:
    b	.L01563084
    addiu	$a7,$a7,-1
.L015630e0:
    move	$v0,$zero
.L015630e4:
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L015630f8:
    ld	$gp,48($sp)
    li	$v0,1
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L01563110:
    move	$v0,$zero
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L01563124:
    move	$a0,$s1
    addiu	$a1,$sp,24
    li	$a2,1
    sd	$ra,72($sp)
    lui	$v1,0x1000
    ori	$v1,$v1,0x12
    bal alGetParams
    sw	$v1,24($sp)
    ld	$ra,72($sp)
    blez	$v0,.L015631ac
    lh	$a0,44($sp)
    blez	$a0,.L015631ac
    lw	$s1,32($sp)
    bne	$s0,$s1,.L01563058
    li	$a1,-2
.L01563160:
    b	.L015630e4
    li	$v0,1
.L01563168:
    lw	$t9,-32024($gp)
    addiu	$a1,$sp,0
    li	$a2,1
    sd	$ra,72($sp)
    lui	$a3,0x1000
    ori	$a3,$a3,0x12
    bal alGetParams
    sw	$a3,0($sp)
    ld	$ra,72($sp)
    blez	$v0,.L015631a4
    lh	$a0,20($sp)
    blez	$a0,.L015631a4
    lui	$v0,0x2000
    b	.L01563044
    lw	$s0,8($sp)
.L015631a4:
    b	.L015630e4
    move	$v0,$zero
.L015631ac:
    b	.L015630e4
    move	$v0,$zero

