# DDX module odyssey: group rrm
# Functions: 24

.text
.set noat
.set noreorder

glabel rrmMapWindow
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$s1,24($sp)
    sd	$s2,0($sp)
    lw	$s2,16($a0)
    lui	$at,0x1d
    sd	$s4,8($sp)
    addiu	$at,$at,-16608
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    la	$v0,rrmWindowPrivateIndex
    lw	$s4,132($a0)
    lw	$t9,0($v0)
    la	$t8,rrmScreenPrivateIndex
    lw	$s1,436($s2)
    sll	$t9,$t9,0x2
    lw	$t8,0($t8)
    addu	$s4,$s4,$t9
    lw	$s4,0($s4)
    sd	$s3,56($sp)
    sll	$t8,$t8,0x2
    sd	$s0,16($sp)
    addu	$s1,$s1,$t8
    move	$s0,$a0
    beqz	$s4,.L0156ebac
    lw	$s1,0($s1)
    lhu	$v1,0($s4)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0156ebac
    lw	$t9,-31340($gp)
    jalr	$t9
    lw	$a0,24($a0)
    lw	$a0,24($s0)
    beqz	$a0,.L0156eb64
    move	$v0,$a0
    la	$a0,rrmWindowPrivateIndex
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
    nop
    nop
.L0156eb40:
    lw	$a2,132($v0)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    lw	$a1,16($a2)
    addiu	$a1,$a1,1
    sw	$a1,16($a2)
    lw	$v0,24($v0)
    bnez	$v0,.L0156eb40
    nop
.L0156eb64:
    lw	$t9,32($s1)
    move	$a2,$zero
    move	$a1,$zero
    move	$a0,$s0
    jalr	$t9
    lbu	$s3,5($s4)
    lw	$t9,-28736($gp)
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0156ebb8
    nop
    beqz	$s3,.L0156ec70
    lw	$t9,-31824($gp)
    lw	$t9,-32000($gp)
    jalr	$t9
    move	$a0,$s0
    b	.L0156ebbc
    lw	$t9,104($s1)
.L0156ebac:
    lw	$a3,24($s0)
    beqz	$a3,.L0156ec58
    move	$s3,$zero
.L0156ebb8:
    lw	$t9,104($s1)
.L0156ebbc:
    move	$a0,$s0
    jalr	$t9
    sw	$t9,196($s2)
    sd	$v0,32($sp)
    la	$a4,rrmMapWindow
    andi	$a0,$s3,0x2
    beqz	$s3,.L0156ec30
    sw	$a4,196($s2)
    beqz	$a0,.L0156ec14
    andi	$a6,$s3,0x8
    lw	$a5,4($s1)
    beqz	$a5,.L0156ec04
    lw	$t9,-31512($gp)
    jalr	$t9
    move	$a0,$s0
    lw	$t9,-31308($gp)
    jalr	$t9
    move	$a0,$s0
.L0156ec04:
    lw	$t9,28($s1)
    jalr	$t9
    move	$a0,$s0
    andi	$a6,$s3,0x8
.L0156ec14:
    beqz	$a6,.L0156ec34
    ld	$s2,0($sp)
    lw	$t9,36($s1)
    move	$a0,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a2,$s1
.L0156ec30:
    ld	$s2,0($sp)
.L0156ec34:
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s3,56($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$v0,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0156ec58:
    lw	$t9,-28760($gp)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s0
    b	.L0156ebb8
    move	$s3,$zero
.L0156ec70:
    jalr	$t9
    move	$a0,$s0
    b	.L0156ebbc
    lw	$t9,104($s1)

glabel rrmDestroyDrawable
    lw	$a2,16($a0)
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    lui	$t8,0x1c
    sd	$s1,24($sp)
    addiu	$t8,$t8,-20720
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    la	$s1,rrmWindowPrivateIndex
    lw	$s0,132($a0)
    lw	$s1,0($s1)
    la	$a3,rrmScreenPrivateIndex
    lw	$a1,436($a2)
    sll	$s1,$s1,0x2
    lw	$a3,0($a3)
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    move	$s1,$a0
    beqz	$s0,.L0157fb78
    lw	$a1,0($a1)
    lw	$t9,68($s0)
    sd	$ra,56($sp)
    sd	$a2,8($sp)
    bnez	$t9,.L0157fb8c
    sd	$a1,16($sp)
.L0157fb1c:
    lhu	$ra,0($s0)
    lhu	$a2,8($s0)
    andi	$ra,$ra,0x1
    lw	$a0,12($s0)
    beqz	$ra,.L0157fbd0
    lw	$t9,-28196($gp)
    sd	$a0,48($sp)
    lw	$at,4($s1)
    beqz	$a2,.L0157fbb0
    sd	$at,0($sp)
    ld	$t9,16($sp)
    lw	$t9,60($t9)
    ld	$s0,48($sp)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    ld	$t9,16($sp)
.L0157fb60:
    lw	$t9,96($t9)
    ld	$a0,8($sp)
    ld	$a1,0($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,56($sp)
.L0157fb78:
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0157fb8c:
    lw	$t9,-28196($gp)
    jalr	$t9
    lw	$a0,72($s0)
    lw	$t9,-27776($gp)
    jalr	$t9
    lw	$a0,68($s0)
    sw	$zero,72($s0)
    b	.L0157fb1c
    sw	$zero,68($s0)
.L0157fbb0:
    ld	$t9,16($sp)
    lw	$t9,68($t9)
    ld	$s0,48($sp)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L0157fb60
    ld	$t9,16($sp)
.L0157fbd0:
    jalr	$t9
    move	$a0,$s0
    b	.L0157fb78
    ld	$ra,56($sp)

glabel rrmNeedCID
    lui	$a5,0x1b
    addiu	$a5,$a5,15808
    addu	$at,$t9,$a5
    la	$a4,rrmScreenPrivateIndex
    lw	$a6,16($a0)
    lw	$a4,0($a4)
    lw	$a6,436($a6)
    sll	$a4,$a4,0x2
    lw	$a5,52($a0)
    addu	$a4,$a4,$a6
    lw	$a4,0($a4)
    li	$v0,1
    beqz	$a5,.L01586c50
    lw	$a4,8($a4)
    lw	$a6,4($a5)
    sltu	$a6,$a4,$a6
    bnez	$a6,.L01586c58
    nop
.L01586c48:
    jr	$ra
    move	$v0,$zero
.L01586c50:
    bnez	$a4,.L01586c48
    nop
.L01586c58:
    jr	$ra
    nop

glabel rrmUnmapWindow
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$s1,16($sp)
    sd	$s3,32($sp)
    lw	$s3,16($a0)
    lui	$at,0x1b
    sd	$s2,0($sp)
    addiu	$at,$at,15680
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    la	$a2,rrmWindowPrivateIndex
    lw	$s2,132($a0)
    lw	$t8,0($a2)
    la	$a3,rrmScreenPrivateIndex
    lw	$s0,436($s3)
    sll	$t8,$t8,0x2
    lw	$s1,0($a3)
    addu	$s2,$s2,$t8
    lw	$s2,0($s2)
    sll	$s1,$s1,0x2
    sd	$ra,40($sp)
    addu	$s0,$s0,$s1
    move	$s1,$a0
    beqz	$s2,.L01586f44
    lw	$s0,0($s0)
    lhu	$v0,0($s2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L01586f44
    nop
    lw	$t9,32($s0)
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    lw	$a0,0($s0)
    lw	$v1,20($s2)
    la	$a4,rrmWindowPrivateIndex
    la	$t2,rrmScreenPrivateIndex
    li	$t0,-1
    bne	$v1,$a0,.L01586d28
    lw	$a7,0($a4)
    b	.L01586e0c
    sw	$t0,20($s2)
.L01586d28:
    lw	$t2,0($t2)
    lw	$a0,132($s1)
    sll	$a3,$a7,0x2
    lw	$t1,16($s1)
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    lw	$t1,436($t1)
    lw	$t3,20($a0)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lhu	$a1,0($a0)
    sll	$t2,$t3,0x3
    lw	$t1,0($t1)
    addu	$t2,$t2,$t3
    andi	$a1,$a1,0x8
    sll	$t2,$t2,0x2
    lw	$a2,44($a0)
    addu	$t1,$t1,$t2
    lw	$a5,48($a0)
    beqz	$a1,.L01586e08
    addiu	$a6,$t1,152
    beqz	$a2,.L01586f7c
    nop
    lw	$t1,132($a2)
    addu	$t1,$t1,$a3
    lw	$t1,0($t1)
    sw	$a5,48($t1)
.L01586d94:
    lw	$a5,48($a0)
    beqz	$a5,.L01586f84
    lw	$a2,44($a0)
    lw	$t2,132($a5)
    addu	$t2,$t2,$a3
    lw	$t2,0($t2)
    sw	$a2,44($t2)
    sw	$zero,48($a0)
.L01586db4:
    sw	$zero,44($a0)
    lw	$t9,20($a6)
    lhu	$t8,16($a6)
    lw	$a3,0($a6)
    andi	$t8,$t8,0x31
    lw	$a5,4($a6)
    addiu	$t9,$t9,-1
    ori	$a2,$t8,0x6
    sw	$t9,20($a6)
    andi	$t3,$t8,0x1
    beqz	$a3,.L01586f8c
    movz	$a2,$t8,$t3
    xor	$t9,$a5,$a3
    ori	$ra,$a2,0x2
    ori	$a2,$ra,0x4
    movz	$a2,$ra,$t9
.L01586df4:
    li	$v0,-9
    sh	$a2,16($a6)
    lhu	$at,0($a0)
    and	$at,$at,$v0
    sh	$at,0($a0)
.L01586e08:
    sw	$t0,20($a0)
.L01586e0c:
    lw	$a0,4($s0)
    la	$t2,rrmScreenPrivateIndex
    sll	$a3,$a7,0x2
    beqz	$a0,.L01586f04
    lw	$t2,0($t2)
    lw	$v1,24($s2)
    sltu	$v1,$v1,$a0
    beqz	$v1,.L01586f04
    sll	$t2,$t2,0x2
    lw	$a0,132($s1)
    lw	$t1,16($s1)
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    lw	$t1,436($t1)
    lhu	$t3,0($a0)
    addu	$t1,$t1,$t2
    lw	$t2,24($a0)
    lw	$t1,0($t1)
    andi	$t3,$t3,0x40
    lw	$a2,60($a0)
    sll	$t0,$t2,0x3
    lw	$t1,148($t1)
    beqz	$t3,.L01586f00
    subu	$t0,$t0,$t2
    li	$t8,-65
    sll	$a5,$t0,0x2
    lw	$a6,64($a0)
    beqz	$a2,.L01586f98
    addu	$a5,$t1,$a5
    lw	$a7,132($a2)
    addu	$a7,$a7,$a3
    lw	$a7,0($a7)
    sw	$a6,64($a7)
.L01586e90:
    lw	$a6,64($a0)
    beqz	$a6,.L01586fa0
    lw	$a2,60($a0)
    lw	$t0,132($a6)
    addu	$t0,$t0,$a3
    lw	$t0,0($t0)
    sw	$a2,60($t0)
    sw	$zero,64($a0)
.L01586eb0:
    sw	$zero,60($a0)
    lw	$t2,12($a5)
    lhu	$t1,8($a5)
    lw	$a3,0($a5)
    andi	$t1,$t1,0x1
    addiu	$t2,$t2,-1
    andi	$t1,$t1,0xffff
    sw	$t2,12($a5)
    ori	$a2,$t1,0x4
    beqz	$a3,.L01586ef0
    movz	$a2,$t1,$t1
    lw	$t2,4($a5)
    ori	$t3,$a2,0x2
    ori	$a2,$t3,0x4
    xor	$t2,$t2,$a3
    movz	$a2,$t3,$t2
.L01586ef0:
    sh	$a2,8($a5)
    lhu	$t3,0($a0)
    and	$t3,$t3,$t8
    sh	$t3,0($a0)
.L01586f00:
    sw	$zero,24($a0)
.L01586f04:
    lw	$t9,24($s1)
    beqz	$t9,.L01586f44
    move	$a2,$t9
    lw	$a3,0($a4)
    sll	$a3,$a3,0x2
    nop
    nop
.L01586f20:
    lw	$a5,132($a2)
    addu	$a5,$a5,$a3
    lw	$a5,0($a5)
    lw	$a4,16($a5)
    addiu	$a4,$a4,-1
    sw	$a4,16($a5)
    lw	$a2,24($a2)
    bnez	$a2,.L01586f20
    nop
.L01586f44:
    lw	$t9,108($s0)
    ld	$s2,0($sp)
    move	$a0,$s1
    jalr	$t9
    sw	$t9,200($s3)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    la	$a6,rrmUnmapWindow
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    sw	$a6,200($s3)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L01586f7c:
    b	.L01586d94
    sw	$a5,152($t1)
.L01586f84:
    b	.L01586db4
    sw	$a2,4($a6)
.L01586f8c:
    li	$t1,-17
    b	.L01586df4
    and	$a2,$a2,$t1
.L01586f98:
    b	.L01586e90
    sw	$a6,0($a5)
.L01586fa0:
    b	.L01586eb0
    sw	$a2,4($a5)

glabel rrmUnbindRNFromClip
.L0158ed30:
    addiu	$sp,$sp,-80
    sd	$s2,32($sp)
    lui	$s2,0x1b
    sd	$s4,40($sp)
    addiu	$s2,$s2,-17264
    sd	$gp,48($sp)
    addu	$gp,$t9,$s2
    la	$s4,rrmWindowPrivateIndex
    sd	$s0,24($sp)
    lw	$s0,0($s4)
    lw	$at,132($a0)
    lw	$v0,-5736($gp)
    sll	$s0,$s0,0x2
    addu	$s0,$at,$s0
    sll	$v0,$v0,0x2
    lw	$s0,0($s0)
    sd	$s3,56($sp)
    addu	$at,$at,$v0
    move	$s3,$a1
    lw	$at,0($at)
    move	$s2,$a0
    beqz	$s0,.L0158effc
    sd	$at,16($sp)
    sd	$ra,64($sp)
    la	$ra,rrmScreenPrivateIndex
    lw	$t9,16($a0)
    lw	$ra,0($ra)
    lw	$t9,436($t9)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,32($t9)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    nop
    lhu	$at,0($s0)
    andi	$at,$at,0x20
    beqz	$at,.L0158ee50
    la	$a6,rrmScreenPrivateIndex
    lw	$a0,0($s4)
    lw	$a1,132($s2)
    lw	$a5,16($s2)
    sll	$a0,$a0,0x2
    lw	$a6,0($a6)
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    lw	$a5,436($a5)
    sll	$a6,$a6,0x2
    lw	$a3,52($a1)
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    beqz	$a3,.L0158f2a4
    lw	$a4,56($a1)
    lw	$a2,132($a3)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    sw	$a4,56($a2)
.L0158ee1c:
    lw	$a4,56($a1)
    beqz	$a4,.L0158f2ac
    lw	$a3,52($a1)
    lw	$a5,132($a4)
    addu	$a5,$a5,$a0
    lw	$a5,0($a5)
    sw	$a3,52($a5)
    sw	$zero,56($a1)
.L0158ee3c:
    lhu	$a6,0($a1)
    sw	$zero,52($a1)
    li	$a7,-33
    and	$a6,$a6,$a7
    sh	$a6,0($a1)
.L0158ee50:
    lw	$t0,124($s2)
    sll	$t0,$t0,0x14
    bltz	$t0,.L0158f060
    ld	$at,8($sp)
.L0158ee60:
    lw	$t9,-30676($gp)
.L0158ee64:
    jalr	$t9
    move	$a0,$s2
    ld	$t1,16($sp)
    sw	$v0,4($t1)
    lw	$a4,40($s0)
    beqz	$a4,.L0158efac
    ld	$a3,8($sp)
    lhu	$t2,2($s0)
    sll	$t2,$t2,0x2
    sd	$s1,72($sp)
    addu	$t2,$a4,$t2
    sw	$zero,0($t2)
    move	$s1,$zero
    lw	$a4,40($s0)
    lw	$a0,0($a4)
    beqz	$a0,.L0158eed4
    nop
    sw	$zero,0($a4)
    lw	$t8,0($s4)
    lw	$t3,132($a0)
    sll	$t8,$t8,0x2
    lw	$t9,-31724($gp)
    addu	$t3,$t3,$t8
    lw	$t3,0($t3)
    move	$a1,$s3
    bal .L0158ed30
    sw	$zero,40($t3)
    lw	$a4,40($s0)
.L0158eed4:
    addiu	$s1,$s1,4
    addu	$a3,$a4,$s1
    lw	$a0,0($a3)
    beqz	$a0,.L0158ef14
    nop
    sw	$zero,0($a3)
    lw	$ra,0($s4)
    lw	$t9,132($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    sw	$zero,40($t9)
    lw	$t9,-31724($gp)
    bal .L0158ed30
    move	$a1,$s3
    lw	$a4,40($s0)
.L0158ef14:
    addiu	$s1,$s1,4
    addu	$a3,$a4,$s1
    lw	$a0,0($a3)
    beqz	$a0,.L0158ef54
    nop
    sw	$zero,0($a3)
    lw	$v0,0($s4)
    lw	$at,132($a0)
    sll	$v0,$v0,0x2
    lw	$t9,-31724($gp)
    addu	$at,$at,$v0
    lw	$at,0($at)
    move	$a1,$s3
    bal .L0158ed30
    sw	$zero,40($at)
    lw	$a4,40($s0)
.L0158ef54:
    addiu	$s1,$s1,4
    addu	$a3,$a4,$s1
    lw	$a0,0($a3)
    beqz	$a0,.L0158ef98
    lw	$t9,-28196($gp)
    sw	$zero,0($a3)
    lw	$a1,0($s4)
    lw	$v1,132($a0)
    sll	$a1,$a1,0x2
    lw	$t9,-31724($gp)
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    move	$a1,$s3
    bal .L0158ed30
    sw	$zero,40($v1)
    lw	$a4,40($s0)
    lw	$t9,-28196($gp)
.L0158ef98:
    ld	$s1,72($sp)
    jalr	$t9
    move	$a0,$a4
    sw	$zero,40($s0)
    ld	$a3,8($sp)
.L0158efac:
    lw	$a2,20($s0)
    lw	$a3,0($a3)
    bne	$a2,$a3,.L0158f01c
    la	$s3,Xfree
.L0158efbc:
    lw	$a4,16($s0)
.L0158efc0:
    beqz	$a4,.L0158f2b4
    move	$t9,$s3
    lhu	$a5,0($s0)
    li	$a6,-2
    and	$a5,$a5,$a6
    sh	$a5,0($s0)
.L0158efd8:
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$ra,64($sp)
    ld	$s2,32($sp)
    li	$v0,1
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0158effc:
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    move	$v0,$zero
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0158f01c:
    ld	$t0,16($sp)
    lw	$t9,-30072($gp)
    lw	$a7,32($t0)
    move	$a0,$s2
    ori	$a7,$a7,0x1
    jalr	$t9
    sw	$a7,32($t0)
    lw	$t0,124($s2)
    sll	$t0,$t0,0x14
    bgez	$t0,.L0158efbc
    ld	$t9,8($sp)
    lw	$t9,72($t9)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,0($sp)
    b	.L0158efc0
    lw	$a4,16($s0)
.L0158f060:
    lw	$ra,20($s0)
    lw	$at,0($at)
    li	$a6,-1
    bne	$ra,$at,.L0158f07c
    sw	$ra,0($sp)
    b	.L0158f164
    sw	$a6,20($s0)
.L0158f07c:
    lw	$a7,16($s2)
    lw	$a0,0($s4)
    lw	$a1,132($s2)
    lw	$a7,436($a7)
    sll	$a0,$a0,0x2
    la	$t0,rrmScreenPrivateIndex
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    lw	$t0,0($t0)
    lw	$t1,20($a1)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lhu	$v0,0($a1)
    sll	$t0,$t1,0x3
    lw	$a7,0($a7)
    addu	$t0,$t0,$t1
    andi	$v0,$v0,0x8
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    beqz	$v0,.L0158f160
    addiu	$a3,$a7,152
    lw	$a5,44($a1)
    li	$t8,-9
    beqz	$a5,.L0158f2d4
    lw	$a4,48($a1)
    lw	$a2,132($a5)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    sw	$a4,48($a2)
.L0158f0f0:
    lw	$a4,48($a1)
    beqz	$a4,.L0158f2dc
    lw	$a5,44($a1)
    lw	$a7,132($a4)
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    sw	$a5,44($a7)
    sw	$zero,48($a1)
.L0158f110:
    sw	$zero,44($a1)
    lw	$t2,20($a3)
    lhu	$t1,16($a3)
    lw	$a5,0($a3)
    andi	$t1,$t1,0x31
    addiu	$t2,$t2,-1
    ori	$a0,$t1,0x6
    sw	$t2,20($a3)
    andi	$t0,$t1,0x1
    beqz	$a5,.L0158f2e4
    movz	$a0,$t1,$t0
    lw	$t2,4($a3)
    ori	$t3,$a0,0x2
    ori	$a4,$t3,0x4
    xor	$t2,$t2,$a5
    movz	$a4,$t3,$t2
.L0158f150:
    sh	$a4,16($a3)
    lhu	$t3,0($a1)
    and	$t3,$t3,$t8
    sh	$t3,0($a1)
.L0158f160:
    sw	$a6,20($a1)
.L0158f164:
    ld	$a0,8($sp)
    lw	$a0,4($a0)
    la	$t0,rrmScreenPrivateIndex
    lw	$a4,0($s4)
    beqz	$a0,.L0158f264
    lw	$t0,0($t0)
    lw	$a1,24($s0)
    beq	$a1,$a0,.L0158f264
    nop
    lw	$a1,132($s2)
    sll	$a0,$a4,0x2
    lw	$a7,16($s2)
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    lw	$a7,436($a7)
    sll	$t0,$t0,0x2
    lhu	$t1,0($a1)
    addu	$a7,$a7,$t0
    lw	$t0,24($a1)
    lw	$a7,0($a7)
    andi	$t1,$t1,0x40
    lw	$a3,60($a1)
    sll	$a6,$t0,0x3
    lw	$a7,148($a7)
    beqz	$t1,.L0158f260
    subu	$a6,$a6,$t0
    li	$t3,-65
    sll	$a4,$a6,0x2
    lw	$a5,64($a1)
    beqz	$a3,.L0158f2f0
    addu	$a4,$a7,$a4
    lw	$a6,132($a3)
    addu	$a6,$a6,$a0
    lw	$a6,0($a6)
    sw	$a5,64($a6)
.L0158f1f0:
    lw	$a5,64($a1)
    beqz	$a5,.L0158f2f8
    lw	$a3,60($a1)
    lw	$a7,132($a5)
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    sw	$a3,60($a7)
    sw	$zero,64($a1)
.L0158f210:
    sw	$zero,60($a1)
    lw	$t1,12($a4)
    lhu	$t0,8($a4)
    lw	$a3,0($a4)
    andi	$t0,$t0,0x1
    addiu	$t1,$t1,-1
    andi	$t0,$t0,0xffff
    sw	$t1,12($a4)
    ori	$a0,$t0,0x4
    beqz	$a3,.L0158f250
    movz	$a0,$t0,$t0
    lw	$t1,4($a4)
    ori	$t2,$a0,0x2
    ori	$a0,$t2,0x4
    xor	$t1,$t1,$a3
    movz	$a0,$t2,$t1
.L0158f250:
    sh	$a0,8($a4)
    lhu	$t2,0($a1)
    and	$t2,$t2,$t3
    sh	$t2,0($a1)
.L0158f260:
    sw	$zero,24($a1)
.L0158f264:
    lw	$t8,24($s2)
    beqz	$t8,.L0158ee60
    move	$a1,$t8
    lw	$a0,0($s4)
    sll	$a0,$a0,0x2
.L0158f278:
    lw	$a3,132($a1)
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    lw	$a2,16($a3)
    addiu	$a2,$a2,-1
    sw	$a2,16($a3)
    lw	$a1,24($a1)
    bnez	$a1,.L0158f278
    nop
    b	.L0158ee64
    lw	$t9,-30676($gp)
.L0158f2a4:
    b	.L0158ee1c
    sw	$a4,140($a5)
.L0158f2ac:
    b	.L0158ee3c
    sw	$a3,144($a5)
.L0158f2b4:
    jalr	$t9
    move	$a0,$s0
    lw	$a5,0($s4)
    lw	$a4,132($s2)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    b	.L0158efd8
    sw	$zero,0($a4)
.L0158f2d4:
    b	.L0158f0f0
    sw	$a4,152($a7)
.L0158f2dc:
    b	.L0158f110
    sw	$a5,4($a3)
.L0158f2e4:
    li	$a4,-17
    b	.L0158f150
    and	$a4,$a0,$a4
.L0158f2f0:
    b	.L0158f1f0
    sw	$a5,0($a4)
.L0158f2f8:
    b	.L0158f210
    sw	$a3,4($a4)

glabel rrmWakeupHandler__PE
    lui	$at,0x18
    addiu	$sp,$sp,-64
    addiu	$at,$at,1312
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$t9,-27768($gp)
    sd	$ra,0($sp)
    jalr	$t9
    sd	$s3,32($sp)
    lw	$v1,18864($gp)
    la	$s3,rrmScreenPrivateIndex
    subu	$v1,$v0,$v1
    la	$a3,screenInfo
    sltiu	$v1,$v1,50
    sd	$s1,16($sp)
    move	$s1,$zero
    bnez	$v1,.L015ba554
    lw	$a2,68($a3)
    sd	$s2,40($sp)
    sll	$s2,$a2,0x2
    blez	$a2,.L015ba56c
    addu	$s2,$a3,$s2
    sd	$s0,48($sp)
    move	$s0,$a3
    move	$s1,$zero
    sd	$v0,24($sp)
    nop
    nop
.L015ba510:
    lw	$a0,72($s0)
    lw	$ra,0($s3)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    nop
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L015ba510
    or	$s1,$v0,$s1
    ld	$v0,24($sp)
    ld	$s0,48($sp)
    ld	$s2,40($sp)
.L015ba54c:
    beqz	$s1,.L015ba574
    sw	$v0,18864($gp)
.L015ba554:
    ld	$ra,0($sp)
    ld	$s3,32($sp)
    ld	$s1,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015ba56c:
    b	.L015ba54c
    ld	$s2,40($sp)
.L015ba574:
    ld	$s3,32($sp)
    lw	$t9,-27764($gp)
    ld	$s1,16($sp)
    la	$a1,rrmWakeupHandler__PE
    move	$a2,$zero
    jalr	$t9
    la	$a0,rrmBlockHandler__OE
    ld	$ra,0($sp)
    sw	$zero,18872($gp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64

glabel rrmInvalidateWindowTree__PF
    addiu	$sp,$sp,-192
    sd	$s1,120($sp)
    lw	$s1,0($sp)
    sd	$s4,136($sp)
    la	$s4,rrmWindowPrivateIndex
    sd	$s6,72($sp)
    sd	$ra,104($sp)
    sd	$s0,88($sp)
    sd	$s7,96($sp)
    sd	$s8,112($sp)
    sd	$s5,80($sp)
    sd	$s3,64($sp)
    lw	$v1,4($sp)
    sd	$s2,128($sp)
    lw	$at,16($a0)
    la	$v0,rrmScreenPrivateIndex
    lw	$s2,116($at)
    lw	$v0,0($v0)
    lw	$at,436($at)
    sd	$v1,56($sp)
    sll	$v0,$v0,0x2
    move	$s5,$a0
    lw	$s8,72($s2)
    addu	$at,$at,$v0
    move	$s7,$a0
    li	$s3,1
    lw	$at,0($at)
    move	$s0,$s3
    b	.L015c1018
    sd	$at,48($sp)
    nop
    nop
.L015c1010:
    beq	$s7,$s5,.L015c1370
    move	$s7,$v1
.L015c1018:
    lw	$a0,124($s7)
    sll	$a0,$a0,0x15
    bltz	$a0,.L015c1080
    lw	$s6,0($s4)
.L015c1028:
    lw	$v1,28($s7)
    bnez	$v1,.L015c1010
    nop
    beq	$s5,$s7,.L015c1010
    nop
.L015c103c:
    lw	$s7,24($s7)
    lw	$v1,28($s7)
    bnez	$v1,.L015c1010
    nop
    beq	$s5,$s7,.L015c1010
    nop
    lw	$s7,24($s7)
    lw	$v1,28($s7)
    bnez	$v1,.L015c1010
    nop
    bne	$s5,$s7,.L015c103c
    nop
    b	.L015c1010
    nop
    nop
    nop
    nop
.L015c1080:
    lw	$a3,132($s7)
    sll	$s6,$s6,0x2
    addu	$s6,$a3,$s6
    lw	$s6,0($s6)
    sll	$a4,$s3,0x1
    li	$t3,1
    li	$a1,0x4
    sll	$v1,$s3,0x2
    lw	$a6,-5736($gp)
    beqz	$s6,.L015c1028
    and	$t1,$s8,$v1
    lhu	$t8,0($s6)
    andi	$t8,$t8,0x1
    beqz	$t8,.L015c1350
    nop
    lw	$t9,68($s7)
    beqz	$t9,.L015c1350
    lw	$a0,-5736($gp)
    lw	$ra,56($s2)
    lw	$a2,40($s2)
    li	$t9,0x2
    beqz	$ra,.L015c13a0
    addiu	$t2,$a2,-3
    beqz	$s0,.L015c131c
    li	$t0,0x8
    li	$ra,0x3
    sll	$a0,$s3,0x3
    blez	$a2,.L015c1534
    move	$s1,$zero
    move	$a7,$zero
    slti	$at,$a2,4
    move	$t8,$zero
    bnez	$at,.L015c1540
    addiu	$a5,$sp,8
    addiu	$at,$sp,-44
    and	$a7,$s8,$a4
    move	$a4,$at
    sd	$a3,168($sp)
    move	$a3,$s8
    movn	$a4,$s2,$t1
    sd	$a6,152($sp)
    move	$a6,$s2
    sllv	$a2,$s3,$zero
    move	$v0,$at
    and	$a2,$s8,$a2
    lw	$v1,52($a4)
    movn	$v0,$s2,$a2
    move	$s0,$at
    li	$s4,4
    lw	$v0,52($v0)
    movn	$s0,$s2,$a7
    sltu	$t1,$zero,$t1
    li	$a4,1
    lw	$s0,52($s0)
    move	$s1,$t1
    movz	$v0,$a5,$a2
    sd	$zero,144($sp)
    sltu	$a2,$zero,$a2
    addu	$s0,$s0,$s4
    sd	$s5,184($sp)
    move	$s4,$t0
    move	$t0,$zero
    sd	$s2,160($sp)
    movz	$s0,$a5,$a7
    move	$a5,$at
    sd	$s6,176($sp)
    sltu	$a7,$zero,$a7
    move	$s6,$s0
    lw	$v0,0($v0)
    move	$s2,$a7
    addiu	$a7,$sp,8
    nop
.L015c11a0:
    and	$at,$a3,$a0
    sllv	$t8,$a4,$a1
    sltu	$s0,$zero,$at
    move	$a0,$a5
    movn	$a0,$a6,$at
    addu	$s3,$v1,$s4
    lw	$at,0($s6)
    movz	$s3,$a7,$s1
    addiu	$s4,$s4,4
    movn	$t0,$v0,$a2
    addiu	$t1,$a1,1
    lw	$v1,52($a0)
    beq	$t3,$t2,.L015c14f4
    or	$v0,$t0,$at
    and	$at,$a3,$t8
    sllv	$a2,$a4,$t1
    sltu	$t8,$zero,$at
    move	$a0,$a5
    movn	$a0,$a6,$at
    addu	$s5,$v1,$s4
    lw	$at,0($s3)
    movz	$s5,$a7,$s0
    addiu	$s4,$s4,4
    movn	$t0,$v0,$s2
    addiu	$t3,$a1,2
    lw	$v1,52($a0)
    beq	$t9,$t2,.L015c14ac
    or	$v0,$t0,$at
    and	$at,$a3,$a2
    sllv	$s2,$a4,$t3
    sltu	$a2,$zero,$at
    move	$a0,$a5
    movn	$a0,$a6,$at
    addu	$s3,$v1,$s4
    lw	$at,0($s5)
    movz	$s3,$a7,$t8
    addiu	$s4,$s4,4
    movn	$t0,$v0,$s1
    addiu	$t9,$a1,3
    lw	$v1,52($a0)
    beq	$ra,$t2,.L015c1420
    or	$v0,$t0,$at
    and	$at,$a3,$s2
    sllv	$s1,$a4,$t9
    sltu	$s2,$zero,$at
    move	$a0,$a5
    movn	$a0,$a6,$at
    addu	$s5,$v1,$s4
    lw	$at,0($s3)
    movz	$s5,$a7,$a2
    addiu	$s4,$s4,4
    movn	$t0,$v0,$s0
    addiu	$ra,$a1,4
    lw	$v1,52($a0)
    beq	$a1,$t2,.L015c1464
    or	$v0,$t0,$at
    and	$at,$a3,$s1
    sllv	$a0,$a4,$ra
    sltu	$s1,$zero,$at
    move	$at,$a5
    movn	$at,$a6,$s1
    addu	$s6,$v1,$s4
    lw	$s0,0($s5)
    movz	$s6,$a7,$s2
    addiu	$s4,$s4,4
    movn	$t0,$v0,$t8
    addiu	$a1,$a1,5
    lw	$v1,52($at)
    bne	$t1,$t2,.L015c11a0
    or	$v0,$t0,$s0
    ld	$s5,184($sp)
    move	$a5,$s6
    ld	$s6,176($sp)
    move	$a4,$v0
    move	$s0,$s1
    ld	$a3,168($sp)
    move	$t8,$s2
    ld	$s2,160($sp)
    move	$s3,$s4
    la	$s4,rrmWindowPrivateIndex
    addiu	$a7,$sp,8
    move	$a1,$t0
    ld	$a6,152($sp)
    move	$t0,$s3
    li	$s3,1
.L015c12f4:
    movz	$a4,$a1,$a2
    lw	$t9,0($a5)
    addu	$s1,$v1,$t0
    movz	$s1,$a7,$s0
    lw	$s1,0($s1)
    or	$t9,$a4,$t9
    movz	$t9,$a4,$t8
    or	$s1,$t9,$s1
    movz	$s1,$t9,$s0
.L015c1318:
    move	$s0,$zero
.L015c131c:
    sll	$ra,$a6,0x2
    addu	$ra,$a3,$ra
    lw	$ra,0($ra)
    lw	$ra,24($ra)
    sllv	$ra,$s3,$ra
    and	$ra,$s1,$ra
    beqz	$ra,.L015c1350
    ld	$t9,48($sp)
    lw	$t9,32($t9)
    move	$a0,$s7
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
.L015c1350:
    lw	$v1,36($s7)
.L015c1354:
    beqz	$v1,.L015c1028
    nop
    lw	$ra,16($s6)
    beqz	$ra,.L015c1028
    nop
    b	.L015c1018
    move	$s7,$v1
.L015c1370:
    ld	$s0,88($sp)
    ld	$s1,120($sp)
    ld	$s2,128($sp)
    ld	$s3,64($sp)
    ld	$s4,136($sp)
    ld	$s5,80($sp)
    ld	$ra,104($sp)
    ld	$s6,72($sp)
    ld	$s7,96($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L015c13a0:
    beqz	$s0,.L015c13e4
    move	$v1,$zero
    blez	$a2,.L015c13e4
    move	$s0,$zero
    nop
    nop
    nop
    sllv	$at,$s3,$v1
.L015c13c0:
    and	$at,$s8,$at
    bnez	$at,.L015c13e0
    nop
    addiu	$v1,$v1,1
    bne	$v1,$a2,.L015c13c0
    sllv	$at,$s3,$v1
    b	.L015c13e4
    nop
.L015c13e0:
    sd	$v1,56($sp)
.L015c13e4:
    sll	$v1,$a0,0x2
    addu	$v1,$a3,$v1
    lw	$v1,0($v1)
    ld	$a1,56($sp)
    lw	$v1,24($v1)
    sltu	$v1,$v1,$a1
    bnez	$v1,.L015c1350
    ld	$t9,48($sp)
    lw	$t9,32($t9)
    move	$a0,$s7
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    b	.L015c1354
    lw	$v1,36($s7)
.L015c1420:
    move	$a4,$v0
    ld	$s5,184($sp)
    move	$a5,$s3
    li	$s3,1
    ld	$s6,176($sp)
    ld	$a3,168($sp)
    addiu	$a7,$sp,8
    move	$a1,$t0
    ld	$s2,160($sp)
    move	$at,$a2
    move	$ra,$s4
    la	$s4,rrmWindowPrivateIndex
    move	$a2,$s0
    move	$s0,$at
    ld	$a6,152($sp)
    b	.L015c12f4
    move	$t0,$ra
.L015c1464:
    move	$a4,$v0
    move	$a5,$s5
    ld	$s5,184($sp)
    li	$s3,1
    ld	$s6,176($sp)
    move	$s0,$s2
    ld	$s2,160($sp)
    addiu	$a7,$sp,8
    move	$a0,$s4
    la	$s4,rrmWindowPrivateIndex
    move	$a3,$a2
    move	$a2,$t8
    ld	$a6,152($sp)
    move	$a1,$t0
    move	$t0,$a0
    move	$t8,$a3
    b	.L015c12f4
    ld	$a3,168($sp)
.L015c14ac:
    move	$a4,$v0
    move	$a5,$s5
    ld	$s5,184($sp)
    move	$a2,$s1
    li	$s3,1
    ld	$s6,176($sp)
    ld	$a3,168($sp)
    move	$a1,$t0
    move	$a7,$t8
    ld	$s2,160($sp)
    move	$t8,$s0
    move	$a6,$s4
    la	$s4,rrmWindowPrivateIndex
    move	$s0,$a7
    move	$t0,$a6
    ld	$a6,152($sp)
    b	.L015c12f4
    addiu	$a7,$sp,8
.L015c14f4:
    ld	$s5,184($sp)
    move	$a4,$v0
    move	$t8,$s1
    ld	$s6,176($sp)
    move	$a5,$s3
    li	$s3,1
    ld	$a3,168($sp)
    move	$a2,$s2
    ld	$s2,160($sp)
    move	$t1,$s4
    la	$s4,rrmWindowPrivateIndex
    addiu	$a7,$sp,8
    move	$a1,$t0
    ld	$a6,152($sp)
    b	.L015c12f4
    move	$t0,$t1
.L015c1534:
    move	$s0,$zero
    b	.L015c1354
    lw	$v1,36($s7)
.L015c1540:
    sllv	$t2,$s3,$a7
    addiu	$t3,$sp,-44
    and	$t2,$s8,$t2
    movn	$t3,$s2,$t2
    lw	$t3,52($t3)
    addu	$t3,$t3,$t8
    movz	$t3,$a5,$t2
    addiu	$a7,$a7,1
    lw	$t3,0($t3)
    addiu	$t8,$t8,4
    sd	$t8,144($sp)
    or	$t3,$s1,$t3
    beq	$a7,$a2,.L015c1318
    movn	$s1,$t3,$t2
    li	$s3,1
    la	$s4,rrmWindowPrivateIndex
    addiu	$a5,$sp,8
    b	.L015c1540
    ld	$t8,144($sp)

glabel rrmCreateWindow
    lui	$v1,0x17
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,17744
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    la	$v0,rrmWindowPrivateIndex
    sd	$s8,8($sp)
    lw	$v0,0($v0)
    lw	$at,132($a0)
    sd	$ra,0($sp)
    sll	$v0,$v0,0x2
    la	$ra,rrmScreenPrivateIndex
    addu	$at,$at,$v0
    sw	$zero,0($at)
    lw	$s8,16($a0)
    lw	$ra,0($ra)
    lw	$t9,436($s8)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,112($t9)
    jalr	$t9
    sw	$t9,180($s8)
    la	$a0,rrmCreateWindow
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sw	$a0,180($s8)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel rrmValidateCID
    addiu	$sp,$sp,-96
    sd	$s6,48($sp)
    lw	$s6,16($a0)
    sd	$s6,0($sp)
    sd	$s3,40($sp)
    lw	$s3,132($a0)
    sd	$s8,32($sp)
    sd	$s4,24($sp)
    la	$s4,rrmWindowPrivateIndex
    la	$s8,rrmScreenPrivateIndex
    lw	$t9,0($s4)
    lw	$t8,0($s8)
    lw	$s6,436($s6)
    sll	$t9,$t9,0x2
    sll	$t8,$t8,0x2
    addu	$s3,$s3,$t9
    addu	$s6,$s6,$t8
    lw	$s3,0($s3)
    lw	$s6,0($s6)
    lw	$at,24($s3)
    sd	$s7,16($sp)
    move	$s7,$a0
    lw	$v0,4($s6)
    sll	$a0,$at,0x3
    lw	$v1,148($s6)
    subu	$a0,$a0,$at
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    beq	$at,$v0,.L015e3c9c
    sd	$v1,8($sp)
    lw	$t9,92($s6)
    sd	$ra,56($sp)
    jalr	$t9
    move	$a0,$s7
    sd	$s1,64($sp)
    sd	$s0,72($sp)
    beqz	$v0,.L015e3b84
    sd	$s2,80($sp)
    lw	$t8,12($s6)
    lw	$a3,4($s6)
    andi	$t8,$t8,0x2
    sd	$s5,88($sp)
    beqz	$t8,.L015e3eb0
    sltiu	$a0,$a3,2
    lw	$s1,148($s6)
    bnez	$a0,.L015e3eb0
    lhu	$s5,2($s3)
    b	.L015e3dd0
    li	$s0,1
.L015e3b84:
    ld	$s2,80($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    lw	$a6,16($s7)
    lw	$a0,132($s7)
    ld	$s7,16($sp)
    lw	$a3,0($s4)
    lw	$a7,0($s8)
    ld	$s8,32($sp)
    sll	$a3,$a3,0x2
    ld	$ra,56($sp)
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    lw	$a6,436($a6)
    sll	$a7,$a7,0x2
    lhu	$t1,0($a0)
    addu	$a6,$a6,$a7
    lw	$t0,24($a0)
    lw	$a6,0($a6)
    andi	$t1,$t1,0x40
    lw	$a1,60($a0)
    sll	$a7,$t0,0x3
    lw	$a6,148($a6)
    beqz	$t1,.L015e3c7c
    subu	$a7,$a7,$t0
    li	$t3,-65
    sll	$a4,$a7,0x2
    lw	$a5,64($a0)
    beqz	$a1,.L015e3f14
    addu	$a4,$a6,$a4
    lw	$a6,132($a1)
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    sw	$a5,64($a6)
.L015e3c0c:
    lw	$a5,64($a0)
    beqz	$a5,.L015e3f1c
    lw	$a1,60($a0)
    lw	$a7,132($a5)
    addu	$a7,$a7,$a3
    lw	$a7,0($a7)
    sw	$a1,60($a7)
    sw	$zero,64($a0)
.L015e3c2c:
    sw	$zero,60($a0)
    lw	$t1,12($a4)
    lhu	$t0,8($a4)
    lw	$a3,0($a4)
    andi	$t0,$t0,0x1
    addiu	$t1,$t1,-1
    andi	$t0,$t0,0xffff
    sw	$t1,12($a4)
    ori	$a1,$t0,0x4
    beqz	$a3,.L015e3c6c
    movz	$a1,$t0,$t0
    lw	$t1,4($a4)
    ori	$t2,$a1,0x2
    ori	$a1,$t2,0x4
    xor	$t1,$t1,$a3
    movz	$a1,$t2,$t1
.L015e3c6c:
    sh	$a1,8($a4)
    lhu	$t2,0($a0)
    and	$t2,$t2,$t3
    sh	$t2,0($a0)
.L015e3c7c:
    sw	$zero,24($a0)
    lw	$s4,4($s6)
    ld	$s6,48($sp)
    sw	$s4,24($s3)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L015e3c9c:
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    ld	$s6,48($sp)
    ld	$s7,16($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L015e3cb8:
    lw	$t8,132($a7)
    addu	$t8,$t8,$a3
    lw	$t8,0($t8)
    sw	$a4,60($t8)
    sw	$zero,64($a1)
.L015e3ccc:
    sw	$zero,60($a1)
    lw	$ra,12($a5)
    lhu	$t9,8($a5)
    lw	$a7,0($a5)
    andi	$t9,$t9,0x1
    addiu	$ra,$ra,-1
    andi	$t9,$t9,0xffff
    sw	$ra,12($a5)
    ori	$a4,$t9,0x4
    beqz	$a7,.L015e3d0c
    movz	$a4,$t9,$t9
    lw	$ra,4($a5)
    ori	$at,$a4,0x2
    ori	$a4,$at,0x4
    xor	$ra,$ra,$a7
    movz	$a4,$at,$ra
.L015e3d0c:
    sh	$a4,8($a5)
    lhu	$v0,0($a1)
    li	$at,-65
    and	$at,$at,$v0
    sh	$at,0($a1)
.L015e3d20:
    sw	$zero,24($a1)
    lw	$a5,132($s2)
    addu	$a5,$a3,$a5
    lw	$a5,0($a5)
.L015e3d30:
    lw	$a1,16($s2)
    lw	$a1,436($a1)
    addu	$a1,$a1,$a6
    lw	$a1,0($a1)
    lw	$a1,148($a1)
    sw	$zero,24($a5)
    lw	$a4,132($s2)
    addu	$a4,$a4,$a3
    lw	$a4,0($a4)
    sw	$zero,64($a4)
    lw	$a7,4($a1)
    beqz	$a7,.L015e3ea8
    sw	$a7,60($a4)
    lw	$a2,4($a1)
    lw	$a2,132($a2)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    sw	$s2,64($a2)
.L015e3d78:
    sw	$s2,4($a1)
    lhu	$a7,0($a4)
    ori	$a7,$a7,0x40
    sh	$a7,0($a4)
    lw	$a6,12($a1)
    lhu	$a3,8($a1)
    addiu	$a6,$a6,1
    sltiu	$a5,$a6,2
    sw	$a6,12($a1)
    ori	$a3,$a3,0x2
    sh	$a3,8($a1)
    bnez	$a5,.L015e3db0
    ori	$a3,$a3,0x4
    sh	$a3,8($a1)
.L015e3db0:
    lw	$a3,4($s6)
    nop
    nop
    nop
.L015e3dc0:
    addiu	$s0,$s0,1
    sltu	$t0,$s0,$a3
    beqz	$t0,.L015e3eb0
    addiu	$s1,$s1,28
.L015e3dd0:
    lw	$t1,24($s3)
    beq	$t1,$s0,.L015e3dc0
    lw	$a1,0($s4)
    lw	$s2,28($s1)
    beqz	$s2,.L015e3dc0
    sll	$a5,$a1,0x2
    lw	$a4,132($s2)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    lhu	$a5,2($a4)
    lbu	$a4,4($a4)
    beq	$s5,$a5,.L015e3dc0
    andi	$a4,$a4,0x2
    beqz	$a4,.L015e3dc0
    nop
    lw	$t9,32($s6)
    move	$a0,$s2
    li	$a1,2
    jalr	$t9
    move	$a2,$zero
    lw	$a3,0($s4)
    lw	$a1,132($s2)
    sll	$a3,$a3,0x2
    addu	$a1,$a3,$a1
    lw	$a1,0($a1)
    lw	$a6,0($s8)
    lw	$t0,24($a1)
    lhu	$t2,0($a1)
    sll	$a6,$a6,0x2
    lw	$a4,60($a1)
    lw	$a7,64($a1)
    bltz	$t0,.L015e3d30
    move	$a5,$a1
    lw	$t1,16($s2)
    lw	$t1,436($t1)
    addu	$t1,$t1,$a6
    andi	$t2,$t2,0x40
    lw	$t1,0($t1)
    beqz	$t2,.L015e3d20
    lw	$t1,148($t1)
    sll	$a5,$t0,0x3
    subu	$a5,$a5,$t0
    sll	$a5,$a5,0x2
    beqz	$a4,.L015e3f0c
    addu	$a5,$t1,$a5
    lw	$t0,132($a4)
    addu	$t0,$t0,$a3
    lw	$t0,0($t0)
    sw	$a7,64($t0)
.L015e3e94:
    lw	$a7,64($a1)
    bnez	$a7,.L015e3cb8
    lw	$a4,60($a1)
    b	.L015e3ccc
    sw	$a4,4($a5)
.L015e3ea8:
    b	.L015e3d78
    sw	$s2,0($a1)
.L015e3eb0:
    ld	$s5,88($sp)
    ld	$t9,0($sp)
    ld	$s4,8($sp)
    lw	$t9,344($t9)
    ld	$s1,64($sp)
    ld	$s0,72($sp)
    addiu	$a1,$s7,44
    addiu	$s4,$s4,16
    ld	$s2,80($sp)
    jalr	$t9
    move	$a0,$s4
    ld	$ra,56($sp)
    lw	$a2,24($s3)
    ld	$s3,40($sp)
    move	$a1,$s4
    ld	$s4,24($sp)
    lw	$t9,76($s6)
    ld	$s6,48($sp)
    move	$a0,$s7
    ld	$s7,16($sp)
    ld	$s8,32($sp)
    jr	$t9
    addiu	$sp,$sp,96
.L015e3f0c:
    b	.L015e3e94
    sw	$a7,0($a5)
.L015e3f14:
    b	.L015e3c0c
    sw	$a5,0($a4)
.L015e3f1c:
    b	.L015e3c2c
    sw	$a1,4($a4)

glabel rrmProcessRequestQueue
    lui	$a6,0x15
    addiu	$sp,$sp,-64
    addiu	$a6,$a6,11360
    sd	$gp,16($sp)
    addu	$gp,$t9,$a6
    la	$a5,rrmScreenPrivateIndex
    sd	$s2,24($sp)
    lw	$a5,0($a5)
    lw	$s2,436($a0)
    sll	$a5,$a5,0x2
    addu	$s2,$s2,$a5
    lw	$s2,0($s2)
    sd	$s1,32($sp)
    lw	$s1,140($s2)
    la	$a2,rrmWindowPrivateIndex
    sd	$ra,48($sp)
    beqz	$s1,.L015e7eac
    lw	$a2,0($a2)
    sd	$s0,40($sp)
    lw	$s0,132($s1)
    sll	$a1,$a2,0x2
    lw	$a6,16($s1)
    addu	$s0,$s0,$a1
    lw	$s0,0($s0)
    lw	$a6,436($a6)
    lw	$a0,52($s0)
    addu	$a6,$a6,$a5
    lw	$a6,0($a6)
    beqz	$a0,.L015e7ec8
    lw	$v0,56($s0)
    lw	$t8,132($a0)
    addu	$t8,$t8,$a1
    lw	$t8,0($t8)
    sw	$v0,56($t8)
.L015e7de8:
    lw	$v0,56($s0)
    beqz	$v0,.L015e7ed0
    lw	$a0,52($s0)
    lw	$t9,132($v0)
    addu	$t9,$t9,$a1
    lw	$t9,0($t9)
    sw	$a0,52($t9)
    sw	$zero,56($s0)
.L015e7e08:
    lbu	$a0,5($s0)
    lhu	$at,0($s0)
    sw	$zero,52($s0)
    li	$v0,-33
    and	$at,$at,$v0
    sh	$at,0($s0)
    lw	$v0,4($s2)
    lw	$ra,124($s1)
    lw	$at,140($s2)
    sd	$v0,0($sp)
    sll	$ra,$ra,0x14
    sltu	$at,$zero,$at
    sd	$at,8($sp)
    andi	$a2,$a0,0x8
    bltz	$ra,.L015e7ed8
    lhu	$a1,0($s0)
    andi	$v1,$a1,0x4
    beqz	$v1,.L015e7e8c
    nop
    beqz	$a2,.L015e7e78
    andi	$a1,$a0,0x2
    lw	$t9,36($s2)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    lbu	$a0,5($s0)
    andi	$a1,$a0,0x2
.L015e7e78:
    beqz	$a1,.L015e7e90
    ld	$s0,40($sp)
    lw	$t9,28($s2)
    jalr	$t9
    move	$a0,$s1
.L015e7e8c:
    ld	$s0,40($sp)
.L015e7e90:
    ld	$v0,8($sp)
    ld	$ra,48($sp)
    ld	$gp,16($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015e7eac:
    ld	$gp,16($sp)
    move	$ra,$ra
    move	$v0,$zero
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015e7ec8:
    b	.L015e7de8
    sw	$v0,140($a6)
.L015e7ed0:
    b	.L015e7e08
    sw	$a0,144($a6)
.L015e7ed8:
    lw	$t9,-28736($gp)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L015e7f50
    lw	$t9,-32000($gp)
    lbu	$a0,5($s0)
.L015e7ef0:
    andi	$a2,$a0,0x8
    beqz	$a2,.L015e7f18
    andi	$a3,$a0,0x2
    lw	$t9,36($s2)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    lbu	$a0,5($s0)
    andi	$a3,$a0,0x2
.L015e7f18:
    beqz	$a3,.L015e7e8c
    ld	$a4,0($sp)
    beqz	$a4,.L015e7f3c
    lw	$t9,-31512($gp)
    jalr	$t9
    move	$a0,$s1
    lw	$t9,-31308($gp)
    bal rrmValidateCID
    move	$a0,$s1
.L015e7f3c:
    lw	$t9,28($s2)
    jalr	$t9
    move	$a0,$s1
    b	.L015e7e90
    ld	$s0,40($sp)
.L015e7f50:
    jalr	$t9
    move	$a0,$s1
    b	.L015e7ef0
    lbu	$a0,5($s0)

glabel rrmDoubleBufferWindow
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lw	$at,16($a0)
    sd	$at,16($sp)
    lw	$a1,132($a0)
    lw	$at,436($at)
    lui	$v0,0x13
    sd	$s0,24($sp)
    addiu	$v0,$v0,-32368
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    la	$v1,rrmScreenPrivateIndex
    la	$v0,rrmWindowPrivateIndex
    lw	$v1,0($v1)
    lw	$s0,0($v0)
    lw	$a2,-5736($gp)
    sll	$v1,$v1,0x2
    sd	$s1,32($sp)
    addu	$at,$at,$v1
    sll	$s0,$s0,0x2
    sll	$a2,$a2,0x2
    lw	$at,0($at)
    addu	$s0,$a1,$s0
    addu	$a1,$a1,$a2
    lw	$s0,0($s0)
    lw	$a1,0($a1)
    sd	$a1,8($sp)
    move	$s1,$a0
    beqz	$s0,.L01612a64
    sd	$at,0($sp)
    lhu	$a5,0($s0)
    andi	$a5,$a5,0x1
    beqz	$a5,.L0161290c
    li	$at,1
    lhu	$a6,8($s0)
    beqz	$a6,.L01612b34
    li	$v0,17
.L016128c4:
    beqz	$a5,.L01612908
    ld	$t9,16($sp)
.L016128cc:
    lw	$t9,192($t9)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$zero
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016128f8:
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01612908:
    li	$at,1
.L0161290c:
    sh	$at,8($s0)
    sh	$zero,30($s0)
    sh	$zero,28($s0)
    ld	$ra,16($sp)
    li	$v0,5
    sh	$v0,0($s0)
    lw	$ra,116($ra)
    lw	$t9,-31340($gp)
    lw	$ra,104($ra)
    sw	$ra,12($s0)
    jalr	$t9
    lw	$a0,24($s1)
    beqz	$v0,.L01612990
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,17464
    lw	$t9,-28196($gp)
    jalr	$t9
    move	$a0,$s0
    la	$a2,rrmWindowPrivateIndex
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    lw	$a2,0($a2)
    lw	$a1,132($s1)
    ld	$s0,24($sp)
    sll	$a2,$a2,0x2
    li	$v0,11
    ld	$s1,32($sp)
    addu	$a1,$a1,$a2
    addiu	$sp,$sp,64
    jr	$ra
    sw	$zero,0($a1)
.L01612990:
    lw	$a3,124($s1)
    sll	$a3,$a3,0x14
    bltz	$a3,.L01612b4c
.L0161299c:
    ld	$a1,8($sp)
.L016129a0:
    lw	$a3,4($a1)
    sll	$a2,$a3,0x3
    ld	$v0,0($sp)
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$v0,$a2
    lw	$a2,160($a2)
    li	$a3,-5
    ori	$a2,$a2,0x2
    and	$a2,$a2,$a3
    sw	$a2,32($s0)
    lw	$a1,4($a1)
    lw	$a0,48($v0)
    sll	$v1,$a1,0x3
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    beqz	$a0,.L01612b40
    addu	$v0,$v0,$v1
    lw	$a4,184($v0)
    beqz	$a4,.L01612b40
    lw	$a0,180($v0)
    sw	$a0,36($s0)
.L016129f8:
    ld	$a6,8($sp)
    lw	$t9,-30072($gp)
    lw	$a5,32($a6)
    move	$a0,$s1
    li	$a7,-2
    and	$a5,$a5,$a7
    jalr	$t9
    sw	$a5,32($a6)
    li	$t1,-1
    sw	$t1,20($s0)
    lw	$t0,124($s1)
    sll	$t0,$t0,0x14
    bgez	$t0,.L016128cc
    ld	$t9,16($sp)
    lw	$t9,-28736($gp)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L01612ba0
    lw	$t9,-32000($gp)
    ld	$t9,0($sp)
.L01612a48:
    move	$a2,$t9
    lw	$t9,40($t9)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L016128cc
    ld	$t9,16($sp)
.L01612a64:
    lw	$t9,-28180($gp)
    jalr	$t9
    li	$a0,76
    la	$a1,rrmScreenPrivateIndex
    lw	$a0,16($s1)
    lw	$a1,0($a1)
    lw	$a0,436($a0)
    sll	$a1,$a1,0x2
    la	$a3,rrmWindowPrivateIndex
    addu	$a0,$a0,$a1
    move	$s0,$v0
    beqz	$v0,.L01612b90
    lw	$a0,0($a0)
    sdl	$zero,0($v0)
    sdr	$zero,7($v0)
    sdl	$zero,8($v0)
    sdr	$zero,15($v0)
    sdl	$zero,16($v0)
    sdr	$zero,23($v0)
    sdl	$zero,24($v0)
    sdr	$zero,31($v0)
    sdl	$zero,32($v0)
    sdr	$zero,39($v0)
    sdl	$zero,40($v0)
    sdr	$zero,47($v0)
    sdl	$zero,48($v0)
    sdr	$zero,55($v0)
    sdl	$zero,56($v0)
    sdr	$zero,63($v0)
    sdl	$zero,64($v0)
    sdr	$zero,71($v0)
    swl	$zero,72($v0)
    swr	$zero,75($v0)
    lw	$a3,0($a3)
    lw	$a2,132($s1)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    sw	$v0,0($a2)
    lw	$t9,80($a0)
    beqz	$t9,.L01612b18
    nop
    jalr	$t9
    move	$a0,$s1
    b	.L01612b20
    sd	$s0,56($sp)
.L01612b18:
    sd	$v0,56($sp)
    sh	$zero,2($v0)
.L01612b20:
    ld	$a5,56($sp)
    move	$s0,$a5
    lhu	$a5,0($a5)
    b	.L016128c4
    andi	$a5,$a5,0x1
.L01612b34:
    ld	$s0,24($sp)
    b	.L016128f8
    ld	$s1,32($sp)
.L01612b40:
    lw	$a6,164($v0)
    b	.L016129f8
    sw	$a6,36($s0)
.L01612b4c:
    lw	$a7,24($s1)
    la	$a0,rrmWindowPrivateIndex
    beqz	$a7,.L0161299c
    move	$v0,$a7
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
.L01612b64:
    lw	$a2,132($v0)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    lw	$a1,16($a2)
    addiu	$a1,$a1,1
    sw	$a1,16($a2)
    lw	$v0,24($v0)
    bnez	$v0,.L01612b64
    nop
    b	.L016129a0
    ld	$a1,8($sp)
.L01612b90:
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    b	.L016128f8
    li	$v0,11
.L01612ba0:
    jalr	$t9
    move	$a0,$s1
    b	.L01612a48
    ld	$t9,0($sp)

glabel rrmUndoubleBufferWindow
    jr	$ra
    nop

glabel rrmDestroyWindow
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    sd	$s0,32($sp)
    lui	$at,0x10
    sd	$ra,0($sp)
    addiu	$at,$at,-30048
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    la	$ra,rrmScreenPrivateIndex
    lw	$s0,16($a0)
    lw	$ra,0($ra)
    lw	$s8,436($s0)
    sll	$ra,$ra,0x2
    addu	$s8,$s8,$ra
    lw	$s8,0($s8)
    lw	$t9,100($s8)
    nop
    sd	$s7,8($sp)
    jalr	$t9
    move	$s7,$a0
    lw	$t9,116($s8)
    move	$a0,$s7
    jalr	$t9
    sw	$t9,184($s0)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    la	$v1,rrmDestroyWindow
    ld	$ra,0($sp)
    ld	$gp,24($sp)
    sw	$v1,184($s0)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48

glabel rrmDisposeClip
    addiu	$sp,$sp,-32
    sw	$a1,4($sp)
    lui	$a3,0xe
    sw	$a2,0($sp)
    addiu	$a2,$a3,-384
    sd	$gp,16($sp)
    addu	$gp,$t9,$a2
    lw	$t9,-28220($gp)
    lw	$a0,116($a0)
    li	$a1,1004
    sd	$ra,8($sp)
    addiu	$a2,$sp,0
    jalr	$t9
    lw	$a0,100($a0)
    li	$a4,-1
    beq	$v0,$a4,.L0165ab90
    ld	$ra,8($sp)
.L0165ab84:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0165ab90:
    la	$a0,_rodata_symbol
    lw	$t9,-28184($gp)
    la	$a2,errno
    lw	$a1,0($sp)
    lw	$a2,0($a2)
    jalr	$t9
    addiu	$a0,$a0,15848
    b	.L0165ab84
    ld	$ra,8($sp)

glabel rrmCreateDefColormap
    addiu	$sp,$sp,-96
    li	$v0,0xffff
    sh	$v0,2($sp)
    sh	$zero,0($sp)
    lw	$a2,124($a0)
    lw	$v0,24($a0)
    lw	$at,0($a2)
    sd	$s7,24($sp)
    beq	$at,$v0,.L01666238
    move	$s7,$a0
    nop
    nop
.L01666100:
    lw	$v1,36($a2)
    addiu	$a2,$a2,36
    beq	$v1,$v0,.L0166614c
    nop
    lw	$a0,36($a2)
    addiu	$a2,$a2,36
    beq	$a0,$v0,.L0166614c
    nop
    lw	$a1,36($a2)
    addiu	$a2,$a2,36
    beq	$a1,$v0,.L0166614c
    nop
    lw	$a3,36($a2)
    addiu	$a2,$a2,36
    beq	$a3,$v0,.L0166614c
    nop
    lw	$a4,36($a2)
    bne	$a4,$v0,.L01666100
    addiu	$a2,$a2,36
.L0166614c:
    sd	$ra,40($sp)
.L01666150:
    lw	$t9,-27820($gp)
    lh	$a4,4($a2)
    move	$a5,$zero
    addiu	$a3,$sp,4
    move	$a1,$s7
    andi	$a4,$a4,0x1
    lw	$a0,28($s7)
    jalr	$t9
    sltiu	$a4,$a4,1
    beqz	$v0,.L01666190
    lw	$v0,-9440($gp)
    ld	$s7,24($sp)
    move	$v0,$zero
.L01666184:
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L01666190:
    lw	$a0,4($sp)
    lw	$a2,116($s7)
    lw	$a1,0($a0)
    sd	$s4,72($sp)
    lh	$a3,4($a1)
    la	$s4,_rodata_symbol
    li	$a4,3
    li	$a5,1
    sd	$s3,80($sp)
    addiu	$s3,$gp,-27584
    bne	$a3,$a4,.L01666240
    lh	$a1,10($a1)
    lw	$t9,-28164($gp)
    slti	$a6,$a1,5
    bnez	$a6,.L01666240
    move	$a1,$a5
    lw	$t8,80($a2)
    lw	$t3,24($s7)
    subu	$t3,$t3,$t8
    sll	$t2,$t3,0x2
    lw	$t1,88($a2)
    addu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t0,48($a2)
    sll	$t1,$t1,0x2
    lw	$a7,76($a2)
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    bne	$a7,$t0,.L01666240
    sd	$s6,32($sp)
    la	$s6,AllocColor
    sd	$s1,56($sp)
    move	$s1,$v0
    bltz	$v0,.L016663ac
    sd	$s2,88($sp)
    sd	$s5,48($sp)
    sd	$s0,64($sp)
    li	$s2,1
    b	.L016663b4
    sw	$a1,0($t9)
.L01666238:
    b	.L01666150
    sd	$ra,40($sp)
.L01666240:
    sd	$s6,32($sp)
    la	$s6,AllocColor
    addiu	$a4,$s7,40
    addiu	$a1,$sp,2
    move	$t9,$s6
    ld	$s3,80($sp)
    move	$a5,$zero
    move	$a3,$a1
    ld	$s4,72($sp)
    jalr	$t9
    move	$a2,$a1
    beqz	$v0,.L01666374
.L01666270:
    ld	$ra,40($sp)
    move	$v0,$zero
    ld	$s6,32($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
    nop
    nop
.L01666290:
    lw	$a0,4($sp)
.L01666294:
    lw	$s1,18152($s3)
    addiu	$s5,$s4,7
    bltz	$s1,.L01666338
    addiu	$s3,$s3,8
    lw	$ra,18148($s3)
.L016662a8:
    slt	$ra,$s1,$ra
    beqz	$ra,.L01666294
    addu	$s0,$s1,$s4
    b	.L016662dc
    sw	$s1,8($sp)
.L016662bc:
    lw	$at,8($sp)
    sw	$at,44($s7)
.L016662c4:
    lw	$v0,18148($s3)
    slt	$v0,$s1,$v0
    lw	$a0,4($sp)
    beqz	$v0,.L01666290
    addiu	$s0,$s0,1
    sw	$s1,8($sp)
.L016662dc:
    lbu	$v1,17120($s0)
    addiu	$a1,$sp,12
    addiu	$a2,$sp,14
    lbu	$a4,16864($s0)
    addiu	$a3,$sp,16
    lbu	$a5,16608($s0)
    sll	$v1,$v1,0x8
    move	$t9,$s6
    sll	$a4,$a4,0x8
    sh	$a4,14($sp)
    addiu	$a4,$sp,8
    sh	$v1,16($sp)
    sll	$a5,$a5,0x8
    sh	$a5,12($sp)
    jalr	$t9
    move	$a5,$zero
    addiu	$s1,$s1,1
    beq	$s0,$s4,.L016662bc
    movn	$s2,$zero,$v0
    bne	$s0,$s5,.L016662c4
    lw	$a6,8($sp)
    b	.L016662c4
    sw	$a6,40($s7)
.L01666338:
    ld	$s0,64($sp)
    ld	$s5,48($sp)
.L01666340:
    ld	$s3,80($sp)
    ld	$s6,32($sp)
    ld	$s4,72($sp)
    la	$a7,sgiOverrideColorCompare
    ld	$s1,56($sp)
    sw	$zero,0($a7)
.L01666358:
    lw	$t9,316($s7)
    jalr	$t9
    nop
    ld	$s7,24($sp)
    move	$v0,$s2
    b	.L01666184
    ld	$s2,88($sp)
.L01666374:
    addiu	$a1,$sp,0
    addiu	$a2,$sp,0
    move	$t9,$s6
    addiu	$a3,$sp,0
    addiu	$a4,$s7,44
    lw	$a0,4($sp)
    jalr	$t9
    move	$a5,$zero
    bnez	$v0,.L01666270
    ld	$s6,32($sp)
    sd	$s2,88($sp)
    li	$s2,1
    b	.L01666358
    lw	$a0,4($sp)
.L016663ac:
    b	.L01666340
    li	$s2,1
.L016663b4:
    addiu	$s5,$s4,7
    b	.L016662a8
    lw	$ra,18148($s3)

glabel rrmInvalidate
    addiu	$sp,$sp,-96
    sd	$s3,40($sp)
    lui	$s3,0xb
    sd	$s2,56($sp)
    addiu	$s3,$s3,-3904
    sd	$gp,72($sp)
    addu	$gp,$t9,$s3
    la	$s2,rrmWindowPrivateIndex
    lw	$s2,0($s2)
    lw	$at,132($a0)
    sd	$a2,32($sp)
    sll	$s2,$s2,0x2
    sd	$ra,88($sp)
    addu	$s2,$at,$s2
    lw	$s2,0($s2)
    la	$v0,dbcWindowPrivateIndex
    lbu	$v1,4($s2)
    sd	$s1,64($sp)
    lw	$v0,0($v0)
    and	$s1,$v1,$a1
    sd	$s0,48($sp)
    movz	$s1,$v1,$a1
    move	$s0,$a0
    lw	$s3,16($a0)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    beqz	$s1,.L0168bb58
    sd	$at,24($sp)
    lw	$a4,12($s2)
    sw	$a4,0($sp)
    lw	$a3,4($a0)
    sw	$zero,12($sp)
    sw	$zero,16($sp)
    sw	$s1,8($sp)
    sw	$a3,4($sp)
    lbu	$a1,4($s2)
    lw	$t9,-28220($gp)
    nor	$a2,$s1,$zero
    and	$a1,$a1,$a2
    sb	$a1,4($s2)
    lw	$a0,116($s3)
    addiu	$a2,$sp,0
    li	$a1,1010
    jalr	$t9
    lw	$a0,100($a0)
    lw	$t0,12($sp)
    la	$t2,rrmScreenPrivateIndex
    li	$a5,-5
    li	$a7,-1
    la	$a6,rrmWindowPrivateIndex
    andi	$a0,$s1,0x8
    move	$t1,$t2
    lw	$a6,0($a6)
    beq	$v0,$a7,.L0168bb78
    andi	$a7,$t0,0x4
    beqz	$a0,.L0168ba98
    la	$t1,rrmScreenPrivateIndex
    move	$t1,$t2
    lw	$a4,32($s2)
    and	$a0,$a4,$a5
    or	$a0,$a7,$a0
    sw	$a0,32($s2)
    lw	$a2,16($sp)
    lw	$a1,132($s0)
    sll	$a3,$a6,0x2
    andi	$a2,$a2,0x1
    addu	$a1,$a1,$a3
    lw	$a3,0($t2)
    beqz	$a2,.L0168bbec
    lw	$a1,0($a1)
    ld	$a2,32($sp)
    beqz	$a2,.L0168bc34
    nop
    lw	$a2,20($a1)
    bltz	$a2,.L0168ba6c
    sll	$a7,$a2,0x3
    lw	$a5,16($s0)
    lw	$a6,0($t2)
    lw	$a5,436($a5)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    addu	$a7,$a7,$a2
    lw	$a5,0($a5)
    sll	$a7,$a7,0x2
    lw	$a6,32($a1)
    sd	$a4,80($sp)
    addu	$a5,$a5,$a7
    xori	$a6,$a6,0x4
    sw	$a6,160($a5)
    lw	$a3,36($a1)
    sw	$a3,164($a5)
.L0168ba6c:
    lw	$t9,-29912($gp)
    sd	$a4,80($sp)
    bal SetDIDMode
    move	$a0,$s0
    ld	$a4,80($sp)
    lw	$a0,32($s2)
    andi	$a6,$a4,0x4
.L0168ba88:
    andi	$a1,$a0,0x4
    bne	$a1,$a6,.L0168bb80
    la	$t2,globalSerialNumber
    la	$t1,rrmScreenPrivateIndex
.L0168ba98:
    la	$a0,rrmWindowPrivateIndex
.L0168ba9c:
    andi	$a1,$s1,0x2
    ld	$ra,88($sp)
    beqz	$a1,.L0168bb58
    lw	$a0,0($a0)
    lw	$a1,0($t1)
    lw	$a2,436($s3)
    sll	$a1,$a1,0x2
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    lw	$a2,4($a2)
    beqz	$a2,.L0168bb58
    ld	$s3,40($sp)
    la	$a2,glxWindowPrivateIndex
    lw	$a2,0($a2)
    lw	$a4,132($s0)
    sll	$a2,$a2,0x2
    addu	$a2,$a4,$a2
    lw	$a2,0($a2)
    beqz	$a2,.L0168baf8
    nop
    lw	$a3,4($a2)
    bnez	$a3,.L0168bb58
    nop
.L0168baf8:
    lw	$s1,16($s0)
    sll	$a6,$a0,0x2
    addu	$a6,$a4,$a6
    lw	$a5,436($s1)
    lw	$a6,0($a6)
    lw	$a2,24($a6)
    addu	$a5,$a5,$a1
    lw	$a5,0($a5)
    sll	$t0,$a2,0x3
    lw	$a7,148($a5)
    subu	$t0,$t0,$a2
    sll	$t0,$t0,0x2
    beqz	$a2,.L0168bb3c
    addu	$a7,$a7,$t0
    lw	$t0,4($a5)
    bne	$a2,$t0,.L0168bbc0
    nop
.L0168bb3c:
    sw	$zero,24($a6)
    ld	$s2,56($sp)
    ld	$gp,72($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0168bb58:
    ld	$s3,40($sp)
.L0168bb5c:
    ld	$s0,48($sp)
    ld	$ra,88($sp)
    ld	$s2,56($sp)
    ld	$s1,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0168bb78:
    b	.L0168ba9c
    la	$a0,rrmWindowPrivateIndex
.L0168bb80:
    ld	$at,24($sp)
    lw	$t8,0($t2)
    sltu	$ra,$zero,$a1
    sb	$ra,2($at)
    lui	$t3,0x1000
    lw	$t9,-27760($gp)
    addiu	$t8,$t8,1
    li	$t1,1
    lw	$a0,4($s0)
    sltu	$t3,$t3,$t8
    movz	$t1,$t8,$t3
    sw	$t1,20($s0)
    jalr	$t9
    sw	$t1,0($t2)
    b	.L0168ba98
    la	$t1,rrmScreenPrivateIndex
.L0168bbc0:
    lw	$t9,76($a5)
    move	$a2,$zero
    move	$a0,$s0
    addiu	$s2,$a7,16
    jalr	$t9
    move	$a1,$s2
    lw	$t9,392($s1)
    jalr	$t9
    move	$a0,$s2
    b	.L0168bb5c
    ld	$s3,40($sp)
.L0168bbec:
    lw	$a2,20($a1)
    bltz	$a2,.L0168bc2c
    sll	$a3,$a3,0x2
    lw	$v1,16($s0)
    lw	$v1,436($v1)
    sll	$a0,$a2,0x3
    addu	$v1,$v1,$a3
    addu	$a0,$a0,$a2
    lw	$v1,0($v1)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,32($a1)
    sw	$a0,160($v1)
    lw	$v0,36($a1)
    sw	$v0,164($v1)
    lw	$a0,32($s2)
.L0168bc2c:
    b	.L0168ba88
    andi	$a6,$a4,0x4
.L0168bc34:
    lw	$a2,20($a1)
    lw	$a6,0($t2)
    move	$a5,$t2
    bltz	$a2,.L0168bc80
    sll	$a7,$a2,0x3
    addu	$a7,$a7,$a2
    lw	$a3,16($s0)
    lw	$a3,436($a3)
    sll	$a6,$a6,0x2
    addu	$a3,$a3,$a6
    lw	$a3,0($a3)
    sll	$a7,$a7,0x2
    lw	$a6,32($a1)
    addu	$a3,$a3,$a7
    xori	$a6,$a6,0x4
    sw	$a6,160($a3)
    lw	$a0,36($a1)
    sw	$a0,164($a3)
    lw	$a0,32($s2)
.L0168bc80:
    b	.L0168ba88
    andi	$a6,$a4,0x4

glabel rrmCopyWindow
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    lui	$at,0xa
    sd	$ra,0($sp)
    addiu	$at,$at,-5824
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    la	$ra,rrmScreenPrivateIndex
    lw	$s8,16($a0)
    lw	$ra,0($ra)
    lw	$t9,436($s8)
    sll	$ra,$ra,0x2
    dsra32	$v0,$a1,0x0
    sw	$v0,40($sp)
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$a1,40($sp)
    lw	$t9,120($t9)
    lw	$ra,224($s8)
    dsll32	$a1,$a1,0x0
    sd	$ra,24($sp)
    jalr	$t9
    sw	$t9,224($s8)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    ld	$v0,24($sp)
    sw	$v0,224($s8)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64

glabel rrmWorkProc
    lui	$at,0x6
    addiu	$sp,$sp,-64
    addiu	$at,$at,3248
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$t9,-27768($gp)
    sd	$ra,16($sp)
    jalr	$t9
    sd	$s3,24($sp)
    lw	$v1,18864($gp)
    move	$a2,$v0
    subu	$v0,$v0,$v1
    la	$a4,screenInfo
    sltiu	$v0,$v0,50
    la	$s3,rrmScreenPrivateIndex
    bnez	$v0,.L016d9de0
    lw	$a3,68($a4)
    sd	$s1,0($sp)
    move	$s1,$zero
    sd	$s2,40($sp)
    sll	$s2,$a3,0x2
    sd	$s0,32($sp)
    blez	$a3,.L016d9db4
    addu	$s2,$a4,$s2
    move	$s0,$a4
    move	$s1,$zero
    sd	$a2,48($sp)
    nop
.L016d9d80:
    lw	$a0,72($s0)
    lw	$ra,0($s3)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    nop
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L016d9d80
    or	$s1,$v0,$s1
    ld	$a2,48($sp)
.L016d9db4:
    ld	$s3,24($sp)
    ld	$s2,40($sp)
    ld	$s0,32($sp)
    sw	$a2,18864($gp)
    ld	$ra,16($sp)
    sw	$s1,18868($gp)
    ld	$gp,8($sp)
    sltiu	$v0,$s1,1
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016d9de0:
    ld	$ra,16($sp)
    li	$v0,0x0
    ld	$s3,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64

glabel rrmValidateTree
    lui	$v1,0x6
    addiu	$sp,$sp,-48
    addiu	$v1,$v1,-5664
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    la	$v0,rrmWindowPrivateIndex
    lw	$v0,0($v0)
    lw	$at,132($a0)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s0,0($sp)
    move	$s0,$a0
    bnez	$at,.L016dc07c
    sd	$ra,32($sp)
.L016dc024:
    la	$ra,rrmScreenPrivateIndex
    lw	$a0,16($s0)
    lw	$ra,0($ra)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,124($t9)
    move	$a1,$s8
    sd	$a0,24($sp)
    sw	$t9,204($a0)
    jalr	$t9
    move	$a0,$s0
    ld	$s0,0($sp)
    ld	$s8,8($sp)
    la	$at,rrmValidateTree
    ld	$ra,32($sp)
    ld	$v1,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$at,204($v1)
.L016dc07c:
    lw	$t9,-31468($gp)
    jalr	$t9
    sd	$a2,40($sp)
    b	.L016dc024
    ld	$a2,40($sp)

glabel rrmBlockHandler__OE
    lui	$at,0x5
    addiu	$sp,$sp,-64
    addiu	$at,$at,26144
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    lw	$t9,-27768($gp)
    sd	$a1,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    sd	$s3,24($sp)
    lw	$a5,18864($gp)
    subu	$v1,$v0,$a5
    la	$a4,screenInfo
    li	$t3,0x8312
    sltiu	$v1,$v1,50
    la	$s3,rrmScreenPrivateIndex
    dsll	$t3,$t3,0x10
    ori	$t3,$t3,0x6e98
    bnez	$v1,.L016e44d4
    lw	$a3,68($a4)
    sd	$s2,48($sp)
    sll	$s2,$a3,0x2
    sd	$s1,32($sp)
    blez	$a3,.L016e4628
    addu	$s2,$a4,$s2
    move	$s1,$zero
    sd	$s0,56($sp)
    move	$s0,$a4
    sd	$v0,40($sp)
    nop
    nop
    nop
.L016e4420:
    lw	$a0,72($s0)
    lw	$ra,0($s3)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    nop
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L016e4420
    or	$s1,$v0,$s1
    ld	$v0,40($sp)
    ld	$s3,24($sp)
    ld	$s0,56($sp)
    ld	$s2,48($sp)
.L016e4460:
    li	$t2,0x8312
    beqz	$s1,.L016e459c
    sw	$v0,18864($gp)
    ld	$a3,0($sp)
    lw	$a3,0($a3)
    beqz	$a3,.L016e45b0
    li	$v0,1000
    lw	$t3,4($a3)
    dsll	$t2,$t2,0x10
    negu	$t1,$t3
    srl	$a6,$t3,0x1f
    ori	$t2,$t2,0x6e98
    movz	$t1,$t3,$a6
    multu	$t1,$t2
    lw	$t0,0($a3)
    mfhi	$a7
    nop
    nop
    mult	$t0,$v0
    sra	$a7,$a7,0x9
    negu	$a4,$a7
    movz	$a4,$a7,$a6
    mflo	$a5
    addu	$a4,$a4,$a5
    sltiu	$a4,$a4,51
    bnez	$a4,.L016e459c
    li	$a4,50
    b	.L016e453c
    li	$at,0x8312
.L016e44d4:
    ld	$a3,0($sp)
    lw	$a3,0($a3)
    ld	$s3,24($sp)
    subu	$a4,$a5,$v0
    li	$v0,1000
    sd	$s1,32($sp)
    beqz	$a3,.L016e45b4
    addiu	$a4,$a4,50
    lw	$t8,4($a3)
    negu	$t2,$t8
    srl	$a7,$t8,0x1f
    movz	$t2,$t8,$a7
    multu	$t2,$t3
    lw	$t1,0($a3)
    mfhi	$t0
    nop
    nop
    mult	$t1,$v0
    sra	$t0,$t0,0x9
    negu	$a5,$t0
    movz	$a5,$t0,$a7
    mflo	$a6
    addu	$a5,$a5,$a6
    sltu	$a5,$a4,$a5
    beqz	$a5,.L016e459c
    li	$at,0x8312
.L016e453c:
    dsll	$at,$at,0x10
    srl	$ra,$a4,0x1
    ori	$at,$at,0x6e98
    multu	$ra,$at
    mfhi	$t9
    nop
    srl	$t9,$t9,0x8
    multu	$t9,$v0
    mflo	$ra
    subu	$ra,$a4,$ra
    ld	$s1,32($sp)
    sll	$t8,$ra,0x5
    sw	$t9,0($a3)
    subu	$t8,$t8,$ra
    ld	$t9,0($sp)
    sll	$t8,$t8,0x2
    addu	$t8,$t8,$ra
    ld	$ra,8($sp)
    lw	$t9,0($t9)
    ld	$gp,16($sp)
    sll	$t8,$t8,0x3
    addiu	$sp,$sp,64
    jr	$ra
    sw	$t8,4($t9)
.L016e459c:
    ld	$ra,8($sp)
    ld	$s1,32($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016e45b0:
    li	$a4,50
.L016e45b4:
    li	$a3,0x8312
    dsll	$a3,$a3,0x10
    srl	$a2,$a4,0x1
    ori	$a3,$a3,0x6e98
    multu	$a2,$a3
    mfhi	$a1
    srl	$a1,$a1,0x8
    sll	$a0,$a1,0x5
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    subu	$a0,$a4,$a0
    ld	$s1,32($sp)
    sll	$v1,$a0,0x5
    la	$v0,_bss_symbol
    subu	$v1,$v1,$a0
    ld	$gp,16($sp)
    sll	$v1,$v1,0x2
    ld	$ra,8($sp)
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x3
    sw	$v1,324($v0)
    ld	$v1,0($sp)
    sw	$a1,320($v0)
    addiu	$sp,$sp,64
    addiu	$v0,$v0,320
    jr	$ra
    sw	$v0,0($v1)
.L016e4628:
    ld	$s3,24($sp)
    ld	$s2,48($sp)
    b	.L016e4460
    move	$s1,$zero

glabel rrmOGLBindRNToClip
    lui	$t1,0x5
    addiu	$sp,$sp,-96
    addiu	$t1,$t1,13920
    sd	$gp,48($sp)
    addu	$gp,$t9,$t1
    la	$v0,rrmWindowPrivateIndex
    lw	$t0,-5736($gp)
    lw	$a7,0($v0)
    lw	$a6,132($a0)
    sll	$t0,$t0,0x2
    sll	$a7,$a7,0x2
    addu	$t0,$a6,$t0
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    sd	$a0,40($sp)
    lw	$t0,0($t0)
    sd	$t0,32($sp)
    beqz	$a6,.L016e7460
    move	$a7,$a6
    lhu	$t2,0($a6)
    andi	$t2,$t2,0x1
    beqz	$t2,.L016e73e8
    la	$t0,rrmScreenPrivateIndex
    lhu	$t3,8($a6)
    beqz	$t3,.L016e7550
    la	$a0,_rodata_symbol
    li	$v0,1
    sw	$a1,12($a6)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L016e73dc:
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L016e73e8:
    ld	$a6,40($sp)
    la	$t2,glxWindowPrivateIndex
    lw	$t3,16($a6)
    lw	$t8,0($t0)
    lw	$t3,436($t3)
    sll	$t8,$t8,0x2
    lw	$t2,0($t2)
    addu	$t3,$t3,$t8
    lw	$t3,0($t3)
    sw	$a1,12($a7)
    li	$t1,5
    sh	$t1,0($a7)
    li	$t1,1
    sh	$t1,8($a7)
    sh	$zero,30($a7)
    sh	$zero,28($a7)
    sw	$a3,36($a7)
    sw	$a2,32($a7)
    lw	$a6,132($a6)
    sll	$t2,$t2,0x2
    addu	$a6,$a6,$t2
    lw	$a6,0($a6)
    beqz	$a6,.L016e74fc
    sd	$t3,24($sp)
    lw	$t8,4($a6)
    beqz	$t8,.L016e74fc
    li	$t9,-1
    sw	$t9,20($a7)
    b	.L016e73dc
    move	$v0,$t1
.L016e7460:
    sd	$a3,56($sp)
    lw	$t9,-28180($gp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    sd	$ra,80($sp)
    jalr	$t9
    li	$a0,76
    ld	$at,40($sp)
    la	$v1,rrmScreenPrivateIndex
    lw	$at,16($at)
    lw	$v1,0($v1)
    lw	$at,436($at)
    ld	$ra,80($sp)
    sll	$v1,$v1,0x2
    sd	$v0,8($sp)
    addu	$at,$at,$v1
    lw	$at,0($at)
    beqz	$v0,.L016e76a8
    sd	$at,0($sp)
    lw	$t9,-27872($gp)
    ld	$a0,8($sp)
    jalr	$t9
    li	$a1,76
    la	$v0,rrmWindowPrivateIndex
    ld	$at,40($sp)
    lw	$v0,0($v0)
    lw	$at,132($at)
    ld	$ra,8($sp)
    sll	$v0,$v0,0x2
    ld	$t9,0($sp)
    addu	$at,$at,$v0
    sw	$ra,0($at)
    lw	$t9,80($t9)
    beqz	$t9,.L016e76b0
    ld	$a5,8($sp)
    jalr	$t9
    ld	$a0,40($sp)
    b	.L016e76b8
    ld	$ra,80($sp)
.L016e74fc:
    sd	$a7,16($sp)
    lw	$t9,-31340($gp)
    ld	$a0,40($sp)
    sd	$ra,80($sp)
    jalr	$t9
    lw	$a0,24($a0)
    beqz	$v0,.L016e7574
    ld	$a3,16($sp)
    lw	$t9,-28196($gp)
    jalr	$t9
    ld	$a0,16($sp)
    la	$a2,rrmWindowPrivateIndex
    ld	$a1,40($sp)
    lw	$a2,0($a2)
    lw	$a1,132($a1)
    sll	$a2,$a2,0x2
    ld	$ra,80($sp)
    addu	$a1,$a1,$a2
    move	$v0,$zero
    b	.L016e73dc
    sw	$zero,0($a1)
.L016e7550:
    lw	$t9,-28184($gp)
    ld	$a1,40($sp)
    sd	$ra,80($sp)
    lw	$a1,4($a1)
    jalr	$t9
    addiu	$a0,$a0,15712
    ld	$ra,80($sp)
    b	.L016e73dc
    move	$v0,$zero
.L016e7574:
    lhu	$a3,2($a3)
    li	$a2,1
    bne	$a2,$a3,.L016e760c
    ld	$a7,32($sp)
    ld	$a4,24($sp)
    lw	$a4,12($a4)
    andi	$a4,$a4,0x1
    beqz	$a4,.L016e7608
    ld	$a7,16($sp)
    ld	$a5,40($sp)
    li	$a6,-1
    sw	$a6,20($a7)
    lw	$a5,124($a5)
    sll	$a5,$a5,0x14
    bgez	$a5,.L016e76a0
    ld	$ra,80($sp)
    ld	$t0,40($sp)
    lw	$t0,24($t0)
    beqz	$t0,.L016e75f4
    move	$a1,$t0
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    sll	$a2,$a2,0x2
.L016e75d0:
    lw	$a4,132($a1)
    addu	$a4,$a4,$a2
    lw	$a4,0($a4)
    lw	$a3,16($a4)
    addiu	$a3,$a3,1
    sw	$a3,16($a4)
    lw	$a1,24($a1)
    bnez	$a1,.L016e75d0
    nop
.L016e75f4:
    ld	$a5,24($sp)
    ld	$a6,16($sp)
    lw	$a5,0($a5)
    b	.L016e769c
    sw	$a5,20($a6)
.L016e7608:
    ld	$a7,32($sp)
.L016e760c:
    lw	$t9,-30072($gp)
    lw	$a6,32($a7)
    ld	$a0,40($sp)
    li	$t0,-2
    and	$a6,$a6,$t0
    jalr	$t9
    sw	$a6,32($a7)
    ld	$t3,16($sp)
    ld	$t1,40($sp)
    li	$t2,-1
    sw	$t2,20($t3)
    lw	$t1,124($t1)
    sll	$t1,$t1,0x14
    bgez	$t1,.L016e76a0
    ld	$ra,80($sp)
    ld	$t8,40($sp)
    lw	$t8,24($t8)
    beqz	$t8,.L016e7688
    move	$a1,$t8
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    sll	$a2,$a2,0x2
.L016e7664:
    lw	$a4,132($a1)
    addu	$a4,$a4,$a2
    lw	$a4,0($a4)
    lw	$a3,16($a4)
    addiu	$a3,$a3,1
    sw	$a3,16($a4)
    lw	$a1,24($a1)
    bnez	$a1,.L016e7664
    nop
.L016e7688:
    lw	$t9,-28736($gp)
    jalr	$t9
    ld	$a0,40($sp)
    beqz	$v0,.L016e76d0
    lw	$t9,-31824($gp)
.L016e769c:
    ld	$ra,80($sp)
.L016e76a0:
    b	.L016e73dc
    li	$v0,1
.L016e76a8:
    b	.L016e73dc
    move	$v0,$zero
.L016e76b0:
    sh	$zero,2($a5)
    ld	$ra,80($sp)
.L016e76b8:
    ld	$a1,72($sp)
    ld	$a2,64($sp)
    ld	$a3,56($sp)
    la	$t0,rrmScreenPrivateIndex
    b	.L016e73e8
    ld	$a7,8($sp)
.L016e76d0:
    jalr	$t9
    ld	$a0,40($sp)
    b	.L016e76a0
    ld	$ra,80($sp)

glabel rrmOGLUnbindRNFromClip
    addiu	$sp,$sp,-64
    lui	$t8,0x3
    sd	$s1,32($sp)
    addiu	$t8,$t8,-15520
    sd	$gp,24($sp)
    addu	$gp,$t9,$t8
    la	$s1,rrmWindowPrivateIndex
    lw	$s1,0($s1)
    lw	$at,132($a0)
    lw	$v0,-5736($gp)
    sll	$s1,$s1,0x2
    addu	$s1,$at,$s1
    sll	$v0,$v0,0x2
    lw	$s1,0($s1)
    sd	$s0,40($sp)
    addu	$at,$at,$v0
    lw	$at,0($at)
    move	$s0,$a0
    beqz	$s1,.L0170e870
    sd	$at,16($sp)
    sd	$ra,48($sp)
    la	$ra,rrmScreenPrivateIndex
    lw	$t9,16($a0)
    lw	$ra,0($ra)
    lw	$t9,436($t9)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,32($t9)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    nop
    lhu	$at,0($s1)
    andi	$at,$at,0x20
    beqz	$at,.L0170e780
    la	$a0,glxWindowPrivateIndex
    la	$a0,rrmWindowPrivateIndex
    la	$a6,rrmScreenPrivateIndex
    lw	$a0,0($a0)
    lw	$a4,132($s0)
    lw	$a5,16($s0)
    sll	$a0,$a0,0x2
    lw	$a6,0($a6)
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    lw	$a5,436($a5)
    sll	$a6,$a6,0x2
    lw	$a3,52($a4)
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    beqz	$a3,.L0170e8c8
    lw	$a1,56($a4)
    lw	$a2,132($a3)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    sw	$a1,56($a2)
.L0170e748:
    lw	$a1,56($a4)
    beqz	$a1,.L0170e8d0
    lw	$a3,52($a4)
    lw	$a5,132($a1)
    addu	$a5,$a5,$a0
    lw	$a5,0($a5)
    sw	$a3,52($a5)
    sw	$zero,56($a4)
.L0170e768:
    lhu	$a6,0($a4)
    sw	$zero,52($a4)
    li	$a7,-33
    and	$a6,$a6,$a7
    sh	$a6,0($a4)
    la	$a0,glxWindowPrivateIndex
.L0170e780:
    lw	$a0,0($a0)
    lw	$a1,132($s0)
    sll	$a0,$a0,0x2
    addu	$a0,$a1,$a0
    lw	$a0,0($a0)
    beqz	$a0,.L0170e7e4
    nop
    lw	$a2,4($a0)
    beqz	$a2,.L0170e7e4
    lw	$t9,-28196($gp)
    jalr	$t9
    move	$a0,$s1
    la	$a4,rrmWindowPrivateIndex
    ld	$gp,24($sp)
    ld	$ra,48($sp)
    lw	$a4,0($a4)
    lw	$a3,132($s0)
    ld	$s0,40($sp)
    sll	$a4,$a4,0x2
    li	$v0,1
    ld	$s1,32($sp)
    addu	$a3,$a3,$a4
    addiu	$sp,$sp,64
    jr	$ra
    sw	$zero,0($a3)
.L0170e7e4:
    lw	$a5,124($s0)
    sll	$a5,$a5,0x14
    bltz	$a5,.L0170e8d8
    ld	$at,8($sp)
.L0170e7f4:
    lw	$t9,-30676($gp)
.L0170e7f8:
    jalr	$t9
    move	$a0,$s0
    ld	$a6,16($sp)
    sw	$v0,4($a6)
    lw	$a1,40($s1)
    beqz	$a1,.L0170e828
    ld	$a2,8($sp)
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,15784
    ld	$a2,8($sp)
.L0170e828:
    lw	$a1,20($s1)
    lw	$a2,0($a2)
    bne	$a1,$a2,.L0170e888
    ld	$a7,16($sp)
.L0170e838:
    lw	$a3,16($s1)
.L0170e83c:
    beqz	$a3,.L0170eb24
    lw	$t9,-28196($gp)
    lhu	$a4,0($s1)
    li	$a5,-2
    and	$a4,$a4,$a5
    sh	$a4,0($s1)
.L0170e854:
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    li	$v0,1
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0170e870:
    ld	$gp,24($sp)
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0170e888:
    lw	$t9,-30072($gp)
    lw	$a6,32($a7)
    move	$a0,$s0
    ori	$a6,$a6,0x1
    jalr	$t9
    sw	$a6,32($a7)
    lw	$a7,124($s0)
    sll	$a7,$a7,0x14
    bgez	$a7,.L0170e838
    ld	$t9,8($sp)
    lw	$t9,72($t9)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,0($sp)
    b	.L0170e83c
    lw	$a3,16($s1)
.L0170e8c8:
    b	.L0170e748
    sw	$a1,140($a5)
.L0170e8d0:
    b	.L0170e768
    sw	$a3,144($a5)
.L0170e8d8:
    lw	$ra,20($s1)
    lw	$at,0($at)
    li	$a6,-1
    bne	$ra,$at,.L0170e8f4
    sw	$ra,0($sp)
    b	.L0170e9dc
    sw	$a6,20($s1)
.L0170e8f4:
    la	$a0,rrmWindowPrivateIndex
    lw	$a7,16($s0)
    lw	$a0,0($a0)
    lw	$a7,436($a7)
    sll	$a0,$a0,0x2
    la	$t0,rrmScreenPrivateIndex
    addu	$a3,$a1,$a0
    lw	$a3,0($a3)
    lw	$t0,0($t0)
    lw	$t1,20($a3)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lhu	$v0,0($a3)
    sll	$t0,$t1,0x3
    lw	$a7,0($a7)
    addu	$t0,$t0,$t1
    andi	$v0,$v0,0x8
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    beqz	$v0,.L0170e9d8
    addiu	$a4,$a7,152
    lw	$a5,44($a3)
    li	$t8,-9
    beqz	$a5,.L0170eb48
    lw	$a1,48($a3)
    lw	$a2,132($a5)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    sw	$a1,48($a2)
.L0170e968:
    lw	$a1,48($a3)
    beqz	$a1,.L0170eb50
    lw	$a5,44($a3)
    lw	$a7,132($a1)
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    sw	$a5,44($a7)
    sw	$zero,48($a3)
.L0170e988:
    sw	$zero,44($a3)
    lw	$t2,20($a4)
    lhu	$t1,16($a4)
    lw	$a1,0($a4)
    andi	$t1,$t1,0x31
    addiu	$t2,$t2,-1
    ori	$a0,$t1,0x6
    sw	$t2,20($a4)
    andi	$t0,$t1,0x1
    beqz	$a1,.L0170eb58
    movz	$a0,$t1,$t0
    lw	$t2,4($a4)
    ori	$t3,$a0,0x2
    ori	$a0,$t3,0x4
    xor	$t2,$t2,$a1
    movz	$a0,$t3,$t2
.L0170e9c8:
    sh	$a0,16($a4)
    lhu	$t3,0($a3)
    and	$t3,$t3,$t8
    sh	$t3,0($a3)
.L0170e9d8:
    sw	$a6,20($a3)
.L0170e9dc:
    ld	$a0,8($sp)
    la	$t0,rrmScreenPrivateIndex
    lw	$a0,4($a0)
    la	$a4,rrmWindowPrivateIndex
    lw	$t0,0($t0)
    beqz	$a0,.L0170eae0
    lw	$a4,0($a4)
    lw	$a1,24($s1)
    beq	$a1,$a0,.L0170eae0
    nop
    lw	$a1,132($s0)
    sll	$a0,$a4,0x2
    lw	$a7,16($s0)
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    lw	$a7,436($a7)
    sll	$t0,$t0,0x2
    lhu	$t1,0($a1)
    addu	$a7,$a7,$t0
    lw	$t0,24($a1)
    lw	$a7,0($a7)
    andi	$t1,$t1,0x40
    lw	$a3,60($a1)
    sll	$a6,$t0,0x3
    lw	$a7,148($a7)
    beqz	$t1,.L0170eadc
    subu	$a6,$a6,$t0
    li	$t3,-65
    sll	$a4,$a6,0x2
    lw	$a5,64($a1)
    beqz	$a3,.L0170eb64
    addu	$a4,$a7,$a4
    lw	$a6,132($a3)
    addu	$a6,$a6,$a0
    lw	$a6,0($a6)
    sw	$a5,64($a6)
.L0170ea6c:
    lw	$a5,64($a1)
    beqz	$a5,.L0170eb6c
    lw	$a3,60($a1)
    lw	$a7,132($a5)
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    sw	$a3,60($a7)
    sw	$zero,64($a1)
.L0170ea8c:
    sw	$zero,60($a1)
    lw	$t1,12($a4)
    lhu	$t0,8($a4)
    lw	$a3,0($a4)
    andi	$t0,$t0,0x1
    addiu	$t1,$t1,-1
    andi	$t0,$t0,0xffff
    sw	$t1,12($a4)
    ori	$a0,$t0,0x4
    beqz	$a3,.L0170eacc
    movz	$a0,$t0,$t0
    lw	$t1,4($a4)
    ori	$t2,$a0,0x2
    ori	$a0,$t2,0x4
    xor	$t1,$t1,$a3
    movz	$a0,$t2,$t1
.L0170eacc:
    sh	$a0,8($a4)
    lhu	$t2,0($a1)
    and	$t2,$t2,$t3
    sh	$t2,0($a1)
.L0170eadc:
    sw	$zero,24($a1)
.L0170eae0:
    lw	$t8,24($s0)
    beqz	$t8,.L0170e7f4
    move	$a1,$t8
    la	$a0,rrmWindowPrivateIndex
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
.L0170eaf8:
    lw	$a3,132($a1)
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    lw	$a2,16($a3)
    addiu	$a2,$a2,-1
    sw	$a2,16($a3)
    lw	$a1,24($a1)
    bnez	$a1,.L0170eaf8
    nop
    b	.L0170e7f8
    lw	$t9,-30676($gp)
.L0170eb24:
    jalr	$t9
    move	$a0,$s1
    la	$a5,rrmWindowPrivateIndex
    lw	$a5,0($a5)
    lw	$a4,132($s0)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    b	.L0170e854
    sw	$zero,0($a4)
.L0170eb48:
    b	.L0170e968
    sw	$a1,152($a7)
.L0170eb50:
    b	.L0170e988
    sw	$a5,4($a4)
.L0170eb58:
    li	$a7,-17
    b	.L0170e9c8
    and	$a0,$a0,$a7
.L0170eb64:
    b	.L0170ea6c
    sw	$a5,0($a4)
.L0170eb6c:
    b	.L0170ea8c
    sw	$a3,4($a4)

glabel rrmInitRootWindow__AG
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    lw	$t9,-28396($gp)
    sd	$a0,8($sp)
    la	$a0,_rodata_symbol
    li	$a2,1
    li	$a1,18
    sd	$s0,32($sp)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$a0,16536
    lui	$a1,0xe000
    beq	$v0,$a1,.L0171da30
    move	$s0,$v0
    beqz	$v0,.L0171da30
    lw	$t9,-27800($gp)
    ld	$a0,8($sp)
    jalr	$t9
    lw	$a0,0($a0)
    lw	$t9,-28404($gp)
    move	$a7,$zero
    addiu	$a6,$sp,0
    lw	$t0,68($v0)
    li	$a5,1
    move	$a4,$zero
    ld	$a0,16($sp)
    li	$a3,32
    move	$a2,$s0
    lbu	$t0,12($t0)
    move	$a1,$s0
    jalr	$t9
    sw	$t0,0($sp)
    ld	$ra,24($sp)
.L0171da24:
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0171da30:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,16560
    b	.L0171da24
    ld	$ra,24($sp)

glabel rrmBindRNToClip
    lui	$t2,0x2
    addiu	$sp,$sp,-96
    addiu	$t2,$t2,-30048
    sd	$gp,48($sp)
    addu	$gp,$t9,$t2
    la	$a7,rrmWindowPrivateIndex
    lw	$t1,-5736($gp)
    lw	$t0,0($a7)
    lw	$a6,132($a0)
    sll	$t1,$t1,0x2
    sll	$t0,$t0,0x2
    addu	$t1,$a6,$t1
    addu	$a6,$a6,$t0
    lw	$a6,0($a6)
    sd	$a0,40($sp)
    lw	$t1,0($t1)
    sd	$t1,24($sp)
    beqz	$a6,.L0172215c
    move	$v0,$a6
    lhu	$t3,0($a6)
    andi	$t3,$t3,0x1
    beqz	$t3,.L01721f9c
    la	$a7,rrmScreenPrivateIndex
    move	$v0,$zero
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L01721f8c:
    ld	$ra,80($sp)
.L01721f90:
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L01721f9c:
    sd	$a6,32($sp)
    sd	$ra,80($sp)
.L01721fa4:
    ld	$a0,40($sp)
    lw	$a6,16($a0)
    lw	$a7,0($a7)
    lw	$a6,436($a6)
    ld	$a4,32($sp)
    sll	$a7,$a7,0x2
    lw	$t9,-31340($gp)
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    sw	$a1,12($a4)
    sh	$zero,8($a4)
    sh	$zero,30($a4)
    sh	$zero,28($a4)
    sw	$a3,36($a4)
    sw	$a2,32($a4)
    li	$a5,1
    sh	$a5,0($a4)
    lw	$a0,24($a0)
    jalr	$t9
    sd	$a6,16($sp)
    beqz	$v0,.L01722028
    lw	$t9,-28196($gp)
    jalr	$t9
    ld	$a0,32($sp)
    la	$t0,rrmWindowPrivateIndex
    ld	$a7,40($sp)
    lw	$t0,0($t0)
    lw	$a7,132($a7)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    move	$v0,$zero
    b	.L01721f8c
    sw	$zero,0($a7)
.L01722028:
    ld	$t2,32($sp)
    lhu	$t2,2($t2)
    ld	$t9,32($sp)
    li	$t1,1
    li	$v0,1
    ld	$t8,40($sp)
    ld	$t3,16($sp)
    bne	$t1,$t2,.L017220c4
    li	$a1,-1
    lw	$t3,12($t3)
    andi	$t3,$t3,0x1
    beqz	$t3,.L017220c8
    ld	$a7,24($sp)
    sw	$a1,20($t9)
    lw	$t8,124($t8)
    sll	$t8,$t8,0x14
    bgez	$t8,.L017220bc
    ld	$ra,40($sp)
    lw	$ra,24($ra)
    la	$a2,rrmWindowPrivateIndex
    ld	$a5,16($sp)
    ld	$a6,32($sp)
    beqz	$ra,.L017220b4
    move	$a1,$ra
    lw	$a2,0($a2)
    sll	$a2,$a2,0x2
.L01722090:
    lw	$a4,132($a1)
    addu	$a4,$a4,$a2
    lw	$a4,0($a4)
    lw	$a3,16($a4)
    addiu	$a3,$a3,1
    sw	$a3,16($a4)
    lw	$a1,24($a1)
    bnez	$a1,.L01722090
    nop
.L017220b4:
    lw	$a5,0($a5)
    sw	$a5,20($a6)
.L017220bc:
    b	.L01721f90
    ld	$ra,80($sp)
.L017220c4:
    ld	$a7,24($sp)
.L017220c8:
    lw	$t9,-30072($gp)
    lw	$a6,32($a7)
    ld	$a0,40($sp)
    li	$t0,-2
    and	$a6,$a6,$t0
    jalr	$t9
    sw	$a6,32($a7)
    ld	$t3,32($sp)
    ld	$t1,40($sp)
    li	$t2,-1
    sw	$t2,20($t3)
    lw	$t1,124($t1)
    sll	$t1,$t1,0x14
    bgez	$t1,.L01722154
    ld	$t8,40($sp)
    lw	$t8,24($t8)
    la	$a2,rrmWindowPrivateIndex
    beqz	$t8,.L01722140
    move	$a1,$t8
    lw	$a2,0($a2)
    sll	$a2,$a2,0x2
.L0172211c:
    lw	$a4,132($a1)
    addu	$a4,$a4,$a2
    lw	$a4,0($a4)
    lw	$a3,16($a4)
    addiu	$a3,$a3,1
    sw	$a3,16($a4)
    lw	$a1,24($a1)
    bnez	$a1,.L0172211c
    nop
.L01722140:
    lw	$t9,-28736($gp)
    bal FindFreeID
    ld	$a0,40($sp)
    beqz	$v0,.L0172221c
    lw	$t9,-31824($gp)
.L01722154:
    b	.L01721f8c
    li	$v0,1
.L0172215c:
    sd	$a3,56($sp)
    lw	$t9,-28180($gp)
    sd	$a1,64($sp)
    sd	$a2,72($sp)
    sd	$ra,80($sp)
    jalr	$t9
    li	$a0,76
    ld	$a5,40($sp)
    la	$a6,rrmScreenPrivateIndex
    lw	$a5,16($a5)
    lw	$a6,0($a6)
    lw	$a5,436($a5)
    sll	$a6,$a6,0x2
    sd	$v0,8($sp)
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    beqz	$v0,.L017221f4
    sd	$a5,0($sp)
    lw	$t9,-27872($gp)
    ld	$a0,8($sp)
    jalr	$t9
    li	$a1,76
    la	$v0,rrmWindowPrivateIndex
    ld	$at,40($sp)
    lw	$v0,0($v0)
    lw	$at,132($at)
    ld	$ra,8($sp)
    sll	$v0,$v0,0x2
    ld	$t9,0($sp)
    addu	$at,$at,$v0
    sw	$ra,0($at)
    lw	$t9,80($t9)
    beqz	$t9,.L017221fc
    ld	$v1,8($sp)
    jalr	$t9
    ld	$a0,40($sp)
    b	.L01722204
    ld	$a2,72($sp)
.L017221f4:
    b	.L01721f8c
    move	$v0,$zero
.L017221fc:
    sh	$zero,2($v1)
    ld	$a2,72($sp)
.L01722204:
    ld	$a1,64($sp)
    ld	$a3,56($sp)
    la	$a7,rrmScreenPrivateIndex
    ld	$a0,8($sp)
    b	.L01721fa4
    sd	$a0,32($sp)
.L0172221c:
    jalr	$t9
    ld	$a0,40($sp)
    b	.L01722154
    nop

