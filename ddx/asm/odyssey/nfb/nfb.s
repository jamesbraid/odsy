# DDX module odyssey: group nfb
# Functions: 170

.text
.set noat
.set noreorder

glabel nfbInfPolyFillRect__AL
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x1d
    sd	$s2,32($sp)
    addiu	$t8,$t8,18736
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a5,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t0,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L0156621c
    lw	$a7,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t0,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L0156621c
    sd	$a7,8($sp)
    sw	$t0,19112($gp)
    sw	$a5,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,44($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L01566200
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01566200:
    ld	$s1,16($sp)
.L01566204:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0156621c:
    lw	$t9,32($s1)
    lw	$t9,44($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a5
    jalr	$t9
    move	$a3,$a6
    b	.L01566204
    ld	$s1,16($sp)

glabel nfbCheckSubSaveUnder__MG
.L01566950:
    addiu	$sp,$sp,-288
    move	$v0,$s8
    addiu	$s8,$sp,288
    sd	$a0,-192($s8)
    sd	$a1,-216($s8)
    sd	$a2,-200($s8)
    sd	$s6,-128($s8)
    lw	$s6,36($a0)
    sd	$s5,-280($s8)
    sd	$s2,-272($s8)
    sd	$s3,-264($s8)
    sd	$ra,-256($s8)
    sd	$s7,-104($s8)
    sd	$s1,-120($s8)
    sd	$s0,-136($s8)
    lw	$s0,16($a0)
    move	$s1,$zero
    sd	$v0,-168($s8)
    move	$v0,$zero
    beqz	$a3,.L01566eb0
    lw	$s7,116($s0)
    lw	$v1,40($s7)
    beqz	$s6,.L01566f74
    sd	$v1,-240($s8)
    ld	$a0,-216($s8)
    lw	$a5,-5736($gp)
    beq	$s6,$a0,.L01566a48
    sd	$s4,-248($s8)
    li	$s4,1
    b	.L015669e0
    sll	$a6,$a5,0x2
    nop
.L015669d0:
    lw	$s6,28($s6)
    ld	$a1,-216($s8)
    beq	$a1,$s6,.L01566a50
    ld	$a5,-192($s8)
.L015669e0:
    lw	$a5,124($s6)
    sll	$a2,$a5,0x15
    bgez	$a2,.L015669d0
    nop
    lw	$a4,132($s6)
    addu	$a4,$a4,$a6
    lw	$a4,0($a4)
    sd	$v0,-288($s8)
    sll	$a3,$a5,0x6
    lw	$a4,24($a4)
    bltz	$a3,.L01566fd4
    sd	$a4,-160($s8)
.L01566a10:
    lw	$s3,36($s6)
    ld	$a5,-160($s8)
    ld	$v0,-288($s8)
    addiu	$s2,$s6,84
    beqz	$s3,.L015669d0
    sllv	$a5,$s4,$a5
    lw	$a7,132($s6)
    addu	$a7,$a7,$a6
    lw	$a7,0($a7)
    lw	$a7,28($a7)
    beqz	$a7,.L015669d0
    nop
    b	.L01566b50
    sd	$a5,-112($s8)
.L01566a48:
    sll	$a6,$a5,0x2
    ld	$a5,-192($s8)
.L01566a50:
    lw	$a5,132($a5)
    addu	$v0,$a5,$a6
    lw	$v0,0($v0)
    lw	$t0,28($v0)
    beqz	$t0,.L01567074
    nop
    beqz	$s6,.L015671d8
    nop
    sd	$zero,-144($s8)
    ld	$a7,-240($s8)
    sd	$zero,-176($s8)
    lw	$t0,-44($s8)
    sll	$a6,$a7,0x2
    sd	$a6,-224($s8)
    subu	$a6,$a6,$a7
    sd	$t0,-184($s8)
    sll	$a6,$a6,0x2
    li	$s4,1
    b	.L01566cdc
    sd	$a6,-152($s8)
.L01566aa0:
    ld	$v1,-112($s8)
    sll	$v0,$a5,0x2
    addu	$a0,$t0,$v0
    lw	$a0,0($a0)
    and	$v1,$v1,$a0
    move	$s1,$zero
    beqz	$v1,.L01566b20
    addu	$v0,$a7,$v0
    ld	$a1,-240($s8)
    blez	$a1,.L01566b20
    lw	$s5,0($v0)
    sd	$s2,-232($s8)
    ld	$s2,-200($s8)
    nop
    nop
    nop
.L01566ae0:
    sllv	$a2,$s4,$s1
    and	$a2,$s5,$a2
    beqz	$a2,.L01566b08
    ld	$a3,-240($s8)
    lw	$t9,360($s0)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    ld	$a2,-232($s8)
    ld	$a3,-240($s8)
.L01566b08:
    addiu	$s1,$s1,1
    bne	$s1,$a3,.L01566ae0
    addiu	$s2,$s2,12
    lw	$a6,-5736($gp)
    ld	$s2,-232($s8)
    sll	$a6,$a6,0x2
.L01566b20:
    ld	$v0,-288($s8)
    lw	$a7,36($s3)
    li	$t0,1
    movn	$v0,$t0,$a7
    movn	$s3,$a7,$a7
    move	$s1,$v0
    nop
    nop
.L01566b40:
    beqz	$s1,.L01566c00
    nop
.L01566b48:
    move	$s1,$zero
    move	$v0,$zero
.L01566b50:
    lw	$a5,124($s3)
    sll	$a7,$a5,0x15
    bgez	$a7,.L01566b40
    sll	$a5,$a5,0x6
    bgez	$a5,.L01566b20
    sd	$v0,-288($s8)
    lw	$a5,132($s3)
    lw	$a7,52($s7)
    lw	$t0,56($s7)
    addu	$a5,$a6,$a5
    lw	$a5,0($a5)
    sd	$v0,-288($s8)
    bnez	$t0,.L01566aa0
    lw	$a5,24($a5)
    sll	$t0,$a5,0x2
    ld	$v1,-160($s8)
    ld	$v0,-240($s8)
    subu	$s1,$t0,$a5
    sll	$s1,$s1,0x2
    sltu	$v1,$a5,$v1
    ld	$t1,-240($s8)
    sll	$a7,$v0,0x2
    ld	$t8,-200($s8)
    beqz	$v1,.L01566b20
    slt	$v0,$a5,$v0
    beqz	$v0,.L01566b20
    subu	$t1,$a7,$t1
    sll	$s5,$t1,0x2
    addu	$s1,$s1,$t8
    addu	$s5,$s5,$t8
    nop
    lw	$t9,360($s0)
.L01566bd0:
    move	$a0,$s1
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s2
    addiu	$s1,$s1,12
    bnel	$s1,$s5,.L01566bd0
    lw	$t9,360($s0)
    lw	$a6,-5736($gp)
    b	.L01566b20
    sll	$a6,$a6,0x2
    nop
    nop
.L01566c00:
    lw	$a5,28($s3)
    beqz	$a5,.L01566c1c
    nop
.L01566c0c:
    beq	$s3,$s6,.L015669d0
    nop
    b	.L01566b48
    move	$s3,$a5
.L01566c1c:
    beq	$s3,$s6,.L015669d0
    nop
    sd	$v0,-288($s8)
.L01566c28:
    lw	$s3,24($s3)
    lw	$a5,28($s3)
    bnez	$a5,.L01566c58
    nop
    beq	$s6,$s3,.L01566c58
    nop
    lw	$s3,24($s3)
    lw	$a5,28($s3)
    bnez	$a5,.L01566c58
    nop
    bne	$s6,$s3,.L01566c28
    nop
.L01566c58:
    b	.L01566c0c
    ld	$v0,-288($s8)
.L01566c60:
    blez	$a7,.L01566cb4
    nop
    sd	$s5,-96($s8)
    ld	$s5,-184($s8)
.L01566c70:
    lw	$t0,56($s7)
    addu	$t0,$t0,$s2
    lw	$t0,0($t0)
    and	$t0,$s1,$t0
    beqz	$t0,.L01566ca0
    ld	$t1,-224($s8)
    lw	$t9,360($s0)
    move	$a0,$s3
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s5
    ld	$t1,-224($s8)
.L01566ca0:
    addiu	$s2,$s2,4
    addiu	$s3,$s3,12
    bne	$s2,$t1,.L01566c70
    addiu	$s5,$s5,12
    ld	$s5,-96($s8)
.L01566cb4:
    lw	$t2,124($s6)
    sll	$t2,$t2,0x6
    bltz	$t2,.L015671e4
    nop
    nop
    nop
    nop
.L01566cd0:
    lw	$s6,28($s6)
.L01566cd4:
    beqz	$s6,.L01566df8
    ld	$t9,-176($s8)
.L01566cdc:
    lw	$t3,124($s6)
    sll	$t3,$t3,0x15
    bgez	$t3,.L01566cd0
    lw	$t8,-5736($gp)
    lw	$s5,132($s6)
    ld	$ra,-240($s8)
    sll	$t8,$t8,0x2
    lw	$s3,36($s6)
    addu	$s5,$s5,$t8
    lw	$s5,0($s5)
    ld	$t9,-176($s8)
    beqz	$s3,.L015674c0
    lw	$s5,24($s5)
    beqz	$t9,.L0156725c
    ld	$v1,-152($s8)
    blez	$ra,.L01566d64
    lw	$t9,-31976($gp)
.L01566d20:
    ld	$s3,-152($s8)
    ld	$t8,-184($s8)
    ld	$s2,-200($s8)
    move	$s1,$t8
    addu	$s3,$s3,$t8
    nop
    nop
    nop
.L01566d40:
    lw	$t9,344($s0)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    addiu	$s1,$s1,12
    bne	$s1,$s3,.L01566d40
    addiu	$s2,$s2,12
    lw	$s3,36($s6)
.L01566d60:
    lw	$t9,-31976($gp)
.L01566d64:
    ld	$s2,-144($s8)
    move	$a0,$s6
    move	$a1,$s3
    ld	$a2,-184($s8)
    bal .L01566950
    li	$a3,1
    lw	$t9,56($s7)
    ld	$s3,-200($s8)
    or	$s2,$v0,$s2
    sd	$s2,-144($s8)
    move	$s2,$zero
    ld	$a7,-240($s8)
    bnez	$t9,.L01566c60
    sllv	$s1,$s4,$s5
    blez	$s5,.L01566cb4
    nop
    sd	$s5,-96($s8)
    ld	$t8,-96($s8)
    sll	$s5,$t8,0x2
    subu	$s5,$s5,$t8
    ld	$t8,-200($s8)
    sll	$s5,$s5,0x2
    ld	$s2,-184($s8)
    move	$s3,$t8
    addu	$s5,$s5,$t8
    nop
    nop
.L01566dd0:
    lw	$t9,360($s0)
    move	$a0,$s3
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s2
    addiu	$s3,$s3,12
    bne	$s3,$s5,.L01566dd0
    addiu	$s2,$s2,12
    b	.L01566cb4
    ld	$s5,-96($s8)
.L01566df8:
    beqz	$t9,.L015673ec
    ld	$a5,-192($s8)
    ld	$ra,-240($s8)
    blez	$ra,.L01566e34
    ld	$s7,-104($s8)
    ld	$s2,-152($s8)
    ld	$t8,-184($s8)
    move	$s1,$t8
    addu	$s2,$s2,$t8
    lw	$t9,352($s0)
.L01566e20:
    jalr	$t9
    move	$a0,$s1
    addiu	$s1,$s1,12
    bnel	$s1,$s2,.L01566e20
    lw	$t9,352($s0)
.L01566e34:
    ld	$a5,-192($s8)
    lw	$a5,132($a5)
.L01566e3c:
    lw	$t9,-5736($gp)
    sll	$t9,$t9,0x2
    addu	$t9,$a5,$t9
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    sll	$t8,$t9,0x2
    ld	$s1,-200($s8)
    subu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$s1,$s1,$t8
.L01566e64:
    ld	$a2,-192($s8)
    lw	$a2,124($a2)
    sll	$ra,$a2,0x15
    bltz	$ra,.L01566ee0
.L01566e74:
    sll	$a3,$a2,0x7
.L01566e78:
    bltz	$a3,.L01566f8c
.L01566e7c:
    ld	$s1,-120($s8)
.L01566e80:
    ld	$s5,-280($s8)
    ld	$s2,-272($s8)
    ld	$s3,-264($s8)
    ld	$s6,-128($s8)
    ld	$s0,-136($s8)
    ld	$s4,-248($s8)
    ld	$ra,-256($s8)
    ld	$a4,-168($s8)
    ld	$v0,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L01566eb0:
    ld	$s7,-104($s8)
    beqz	$s6,.L01567508
    sd	$s4,-248($s8)
    ld	$a5,-216($s8)
    bne	$s6,$a5,.L015670f4
    nop
.L01566ec8:
    beqz	$s6,.L01567524
    nop
    sd	$zero,-176($s8)
    sd	$zero,-144($s8)
    b	.L015671a0
    addiu	$s1,$s8,-64
.L01566ee0:
    ld	$a1,-192($s8)
    lw	$a5,120($a1)
    beqz	$a5,.L01567510
    lw	$a1,104($a1)
    lw	$a3,16($a5)
    or	$a3,$a3,$a1
    andi	$a3,$a3,0x8000
    beqz	$a3,.L01566e78
    sll	$a3,$a2,0x7
.L01566f04:
    lw	$t9,388($s0)
    ld	$s2,-192($s8)
    addiu	$s2,$s2,84
    jalr	$t9
    move	$a0,$s2
    beqz	$v0,.L015673fc
    ld	$a2,-192($s8)
    lw	$t9,396($s0)
    jalr	$t9
    move	$a0,$s2
    lw	$t9,380($s0)
    move	$a1,$v0
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L015673f8
    ld	$a2,-192($s8)
    lw	$a2,124($a2)
    sll	$t8,$a2,0x7
    bltz	$t8,.L01566e7c
    ld	$a0,-192($s8)
    lui	$a3,0x100
    or	$a3,$a2,$a3
    sw	$a3,124($a0)
    lw	$t9,192($s0)
    jalr	$t9
    li	$a1,64
    b	.L01566e80
    ld	$s1,-120($s8)
.L01566f74:
    ld	$s7,-104($s8)
    sd	$zero,-144($s8)
    ld	$a5,-192($s8)
    sd	$s4,-248($s8)
    b	.L01566e3c
    lw	$a5,132($a5)
.L01566f8c:
    ld	$s5,-280($s8)
    ld	$s2,-272($s8)
    ld	$s3,-264($s8)
    ld	$s4,-248($s8)
    ld	$s0,-136($s8)
    ld	$s1,-120($s8)
    ld	$s6,-128($s8)
    ld	$t0,-192($s8)
    lui	$a7,0x100
    ld	$ra,-256($s8)
    li	$v0,1
    ld	$a6,-168($s8)
    nor	$a7,$a7,$zero
    and	$a7,$a2,$a7
    sw	$a7,124($t0)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a6
.L01566fd4:
    ld	$a7,-240($s8)
    ld	$t0,-160($s8)
    lw	$t1,56($s7)
    ld	$t8,-200($s8)
    sll	$v0,$t0,0x2
    addiu	$s2,$s6,84
    ld	$s3,-160($s8)
    sll	$a5,$a7,0x2
    ld	$s5,-200($s8)
    slt	$a7,$t0,$a7
    beqz	$t1,.L01567404
    sll	$t0,$t0,0x2
    lw	$t1,52($s7)
    ld	$t0,-240($s8)
    addu	$t1,$t1,$v0
    lw	$t1,0($t1)
    move	$s3,$zero
    blez	$t0,.L01566a10
    sd	$t1,-208($s8)
    addiu	$s2,$s6,84
    ld	$t2,-208($s8)
    nop
    nop
.L01567030:
    sllv	$t3,$s4,$s3
    and	$t2,$t2,$t3
    beqz	$t2,.L01567058
    ld	$t8,-240($s8)
    lw	$t9,360($s0)
    move	$a0,$s5
    move	$a1,$s5
    jalr	$t9
    move	$a2,$s2
    ld	$t8,-240($s8)
.L01567058:
    addiu	$s3,$s3,1
    ld	$t2,-208($s8)
    bne	$s3,$t8,.L01567030
    addiu	$s5,$s5,12
    lw	$a6,-5736($gp)
    b	.L01566a10
    sll	$a6,$a6,0x2
.L01567074:
    lw	$a7,56($s7)
    beqz	$a7,.L01567094
    lw	$a6,24($v0)
    lw	$t0,52($s7)
    sll	$t1,$a6,0x2
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    sw	$t0,-48($s8)
.L01567094:
    beqz	$s6,.L0156752c
    ld	$t8,-240($s8)
    li	$s4,1
    sd	$zero,-144($s8)
    slt	$t9,$a6,$t8
    sd	$zero,-176($s8)
    subu	$ra,$t8,$a6
    sll	$t2,$a6,0x2
    ld	$t3,-200($s8)
    subu	$t2,$t2,$a6
    sll	$s5,$t8,0x2
    sd	$ra,-72($s8)
    sll	$t2,$t2,0x2
    subu	$s5,$s5,$t8
    sd	$t9,-80($s8)
    addu	$t2,$t2,$t3
    sll	$s5,$s5,0x2
    sd	$t2,-88($s8)
    b	.L01567314
    addu	$s5,$s5,$t3
.L015670e4:
    ld	$at,-216($s8)
.L015670e8:
    lw	$s6,28($s6)
    beq	$s6,$at,.L01566ec8
    nop
.L015670f4:
    lw	$v0,124($s6)
    sll	$v1,$v0,0x15
    bgez	$v1,.L015670e4
    sll	$v0,$v0,0x6
    bgez	$v0,.L015670e8
    ld	$at,-216($s8)
    lw	$t9,360($s0)
    ld	$a1,-200($s8)
    addiu	$a2,$s6,84
    jalr	$t9
    move	$a0,$a1
    ld	$a0,-216($s8)
    lw	$s6,28($s6)
    bne	$s6,$a0,.L015670f4
    nop
    b	.L01566ec8
    nop
.L01567138:
    lw	$a1,36($s6)
    beqz	$a1,.L01567538
    lw	$t9,-31976($gp)
    ld	$a1,-176($s8)
    beqz	$a1,.L01567574
    nop
.L01567150:
    lw	$t9,344($s0)
    move	$a0,$s1
    jalr	$t9
    ld	$a1,-200($s8)
    lw	$t9,-31976($gp)
    move	$a0,$s6
    move	$a2,$s1
    lw	$a1,36($s6)
    bal .L01566950
    move	$a3,$zero
    ld	$a2,-144($s8)
    or	$a2,$v0,$a2
    sd	$a2,-144($s8)
.L01567184:
    lw	$a3,124($s6)
    sll	$a3,$a3,0x6
    bltz	$a3,.L01567558
    nop
    lw	$s6,28($s6)
.L01567198:
    beqz	$s6,.L015671bc
    ld	$a5,-176($s8)
.L015671a0:
    lw	$a4,124($s6)
    sll	$a4,$a4,0x15
    bltz	$a4,.L01567138
    nop
    lw	$s6,28($s6)
    bnez	$s6,.L015671a0
    ld	$a5,-176($s8)
.L015671bc:
    beqz	$a5,.L015671d0
    nop
    lw	$t9,352($s0)
    jalr	$t9
    move	$a0,$s1
.L015671d0:
    b	.L01566e64
    ld	$s1,-200($s8)
.L015671d8:
    ld	$s7,-104($s8)
    b	.L01566e3c
    sd	$zero,-144($s8)
.L015671e4:
    lw	$a6,56($s7)
    addiu	$s1,$s6,84
    ld	$a7,-240($s8)
    ld	$s3,-200($s8)
    sll	$a5,$s5,0x2
    move	$s2,$zero
    slt	$a7,$s5,$a7
    beqz	$a6,.L01567458
    lw	$a6,52($s7)
    ld	$t8,-240($s8)
    addu	$s5,$a6,$a5
    blez	$t8,.L01566cd0
    lw	$s5,0($s5)
    nop
    nop
.L01567220:
    sllv	$t9,$s4,$s2
    and	$t9,$s5,$t9
    beqz	$t9,.L01567248
    ld	$ra,-240($s8)
    lw	$t9,360($s0)
    move	$a0,$s3
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s1
    ld	$ra,-240($s8)
.L01567248:
    addiu	$s2,$s2,1
    bne	$s2,$ra,.L01567220
    addiu	$s3,$s3,12
    b	.L01566cd4
    lw	$s6,28($s6)
.L0156725c:
    ld	$at,-240($s8)
    li	$a0,-16
    addiu	$v1,$v1,15
    ld	$s3,-152($s8)
    and	$v1,$v1,$a0
    subu	$sp,$sp,$v1
    blez	$at,.L015674f8
    sd	$sp,-184($s8)
    ld	$t8,-184($s8)
    move	$s2,$t8
    addu	$s3,$s3,$t8
    nop
    nop
.L01567290:
    lw	$t9,340($s0)
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    addiu	$s2,$s2,12
    bne	$s2,$s3,.L01567290
    ld	$t9,-240($s8)
    blez	$t9,.L015674f8
    li	$ra,1
    b	.L01566d20
    sd	$ra,-176($s8)
.L015672c0:
    ld	$at,-240($s8)
    blez	$at,.L01567308
    move	$s1,$zero
    lw	$v0,-48($s8)
.L015672d0:
    sllv	$v1,$s4,$s1
    and	$v0,$v0,$v1
    beqz	$v0,.L015672f8
    ld	$a0,-240($s8)
    lw	$t9,360($s0)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s3
    ld	$a0,-240($s8)
.L015672f8:
    addiu	$s1,$s1,1
    lw	$v0,-48($s8)
    bne	$s1,$a0,.L015672d0
    addiu	$s2,$s2,12
.L01567308:
    lw	$s6,28($s6)
.L0156730c:
    beqz	$s6,.L015673c8
    ld	$a7,-176($s8)
.L01567314:
    lw	$a5,124($s6)
    sll	$a1,$a5,0x15
    bltz	$a1,.L01567374
.L01567320:
    sll	$a2,$a5,0x6
    bgez	$a2,.L01567308
    nop
    lw	$a3,56($s7)
    ld	$a4,-80($s8)
    ld	$s1,-88($s8)
    ld	$s2,-200($s8)
    bnez	$a3,.L015672c0
    addiu	$s3,$s6,84
    beqz	$a4,.L01567308
    nop
    lw	$t9,360($s0)
.L01567350:
    move	$a0,$s1
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s3
    addiu	$s1,$s1,12
    bnel	$s1,$s5,.L01567350
    lw	$t9,360($s0)
    b	.L0156730c
    lw	$s6,28($s6)
.L01567374:
    lw	$s3,36($s6)
    beqz	$s3,.L01567594
    ld	$a5,-176($s8)
    beqz	$a5,.L015675bc
    nop
.L01567388:
    lw	$t9,344($s0)
    addiu	$s1,$s8,-64
    ld	$a1,-88($s8)
    jalr	$t9
    move	$a0,$s1
    lw	$t9,-31976($gp)
    move	$a0,$s6
    move	$a2,$s1
    lw	$a1,36($s6)
    bal .L01566950
    move	$a3,$zero
    ld	$a6,-144($s8)
    or	$a6,$v0,$a6
    sd	$a6,-144($s8)
.L015673c0:
    b	.L01567320
    lw	$a5,124($s6)
.L015673c8:
    beqz	$a7,.L015674b4
    ld	$a5,-192($s8)
    lw	$t9,352($s0)
    ld	$s7,-104($s8)
    jalr	$t9
    addiu	$a0,$s8,-64
    ld	$a5,-192($s8)
    b	.L01566e3c
    lw	$a5,132($a5)
.L015673ec:
    ld	$s7,-104($s8)
    b	.L01566e3c
    lw	$a5,132($a5)
.L015673f8:
    ld	$a2,-192($s8)
.L015673fc:
    b	.L01566e74
    lw	$a2,124($a2)
.L01567404:
    ld	$v0,-240($s8)
    beqz	$a7,.L01566a10
    subu	$v0,$a5,$v0
    sll	$s5,$v0,0x2
    subu	$s3,$t0,$s3
    sll	$s3,$s3,0x2
    addu	$s5,$s5,$t8
    addu	$s3,$s3,$t8
    nop
    nop
    nop
.L01567430:
    lw	$t9,360($s0)
    move	$a0,$s3
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s2
    addiu	$s3,$s3,12
    bne	$s3,$s5,.L01567430
    lw	$a6,-5736($gp)
    b	.L01566a10
    sll	$a6,$a6,0x2
.L01567458:
    beqz	$a7,.L01566cd0
    sd	$s5,-96($s8)
    ld	$t9,-96($s8)
    ld	$s2,-200($s8)
    sll	$t8,$t9,0x2
    ld	$s5,-152($s8)
    subu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$s5,$s5,$s2
    addu	$s2,$s2,$t8
    nop
    nop
    nop
    lw	$t9,360($s0)
.L01567490:
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    addiu	$s2,$s2,12
    bnel	$s2,$s5,.L01567490
    lw	$t9,360($s0)
    b	.L01566cd4
    lw	$s6,28($s6)
.L015674b4:
    ld	$s7,-104($s8)
    b	.L01566e3c
    lw	$a5,132($a5)
.L015674c0:
    ld	$a2,-200($s8)
    sll	$a3,$s5,0x2
    lw	$t9,-31976($gp)
    subu	$a3,$a3,$s5
    move	$a0,$s6
    sll	$a3,$a3,0x2
    move	$a1,$s3
    addu	$a2,$a2,$a3
    bal .L01566950
    move	$a3,$zero
    ld	$a4,-144($s8)
    or	$a4,$v0,$a4
    b	.L01566cb4
    sd	$a4,-144($s8)
.L015674f8:
    li	$a5,1
    sd	$a5,-176($s8)
    b	.L01566d60
    lw	$s3,36($s6)
.L01567508:
    b	.L015671d0
    sd	$zero,-144($s8)
.L01567510:
    andi	$a6,$a1,0x8000
    bnez	$a6,.L01566f04
    nop
    b	.L01566e78
    sll	$a3,$a2,0x7
.L01567524:
    b	.L015671d0
    sd	$zero,-144($s8)
.L0156752c:
    ld	$s7,-104($s8)
    b	.L01566e3c
    sd	$zero,-144($s8)
.L01567538:
    move	$a0,$s6
    ld	$a2,-200($s8)
    bal .L01566950
    move	$a3,$zero
    ld	$a7,-144($s8)
    or	$a7,$v0,$a7
    b	.L01567184
    sd	$a7,-144($s8)
.L01567558:
    lw	$t9,360($s0)
    ld	$a1,-200($s8)
    addiu	$a2,$s6,84
    jalr	$t9
    move	$a0,$a1
    b	.L01567198
    lw	$s6,28($s6)
.L01567574:
    lw	$t9,340($s0)
    move	$a0,$s1
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    li	$t0,1
    b	.L01567150
    sd	$t0,-176($s8)
.L01567594:
    lw	$t9,-31976($gp)
    move	$a0,$s6
    move	$a1,$s3
    ld	$a2,-88($s8)
    bal .L01566950
    move	$a3,$zero
    ld	$t1,-144($s8)
    or	$t1,$v0,$t1
    b	.L015673c0
    sd	$t1,-144($s8)
.L015675bc:
    lw	$t9,340($s0)
    addiu	$a0,$s8,-64
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    li	$t2,1
    b	.L01567388
    sd	$t2,-176($s8)

glabel nfb13RopLoop__NH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L01568220
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L015681b8
    sra	$a3,$t0,0x2
.L0156818c:
    lw	$v1,0($a0)
    lw	$v0,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v1,$v1,$zero
    or	$v0,$v0,$v1
    bnez	$a4,.L0156818c
    sw	$v0,-4($a1)
.L015681b8:
    beqz	$a3,.L01568220
    nop
.L015681c0:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    nor	$t8,$t8,$zero
    or	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t2,4($a0)
    lw	$t1,4($a1)
    nor	$t2,$t2,$zero
    or	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$t0,8($a0)
    lw	$a7,8($a1)
    nor	$t0,$t0,$zero
    or	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a6,12($a0)
    lw	$a4,12($a1)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    nor	$a6,$a6,$zero
    or	$a4,$a4,$a6
    bnez	$a5,.L015681c0
    sw	$a4,-4($a1)
.L01568220:
    jr	$ra
    nop

glabel nfbStereoImageText16
    lw	$a6,72($a1)
    addiu	$sp,$sp,-96
    sd	$a6,56($sp)
    sd	$s4,24($sp)
    lw	$s4,16($a0)
    sd	$s1,80($sp)
    sd	$s3,8($sp)
    lui	$s3,0x1d
    sd	$s2,0($sp)
    addiu	$s3,$s3,-14800
    sd	$gp,72($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s5,32($sp)
    sll	$s2,$s2,0x2
    lw	$s4,116($s4)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lhu	$s4,226($s4)
    lw	$s5,8($s1)
    lw	$v1,92($s1)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s1)
    lw	$v0,16($a0)
    sd	$s7,40($sp)
    lw	$v0,116($v0)
    sd	$s0,64($sp)
    move	$s0,$a1
    lw	$v0,220($v0)
    move	$s7,$a2
    sd	$s6,16($sp)
    move	$s6,$a5
    sd	$ra,88($sp)
    move	$s3,$a3
    move	$s2,$a4
    sd	$s5,48($sp)
    beq	$at,$v0,.L0156e4e8
    move	$s5,$a0
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    addu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,64($t9)
    jalr	$t9
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    subu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,64($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    ld	$s2,0($sp)
.L0156e4a8:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s5,32($sp)
    ld	$s7,40($sp)
    ld	$gp,72($sp)
    ld	$v1,56($sp)
    ld	$a0,48($sp)
    sw	$a0,8($s1)
    sw	$v1,72($s0)
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    sw	$zero,104($s1)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0156e4e8:
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    subu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,64($t9)
    jalr	$t9
    nop
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    addu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,64($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    b	.L0156e4a8
    ld	$s2,0($sp)

glabel nfbInfFillSpans__FK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x1d
    sd	$s2,32($sp)
    addiu	$t8,$t8,-17088
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$t0,$a2
    move	$a7,$a3
    lw	$s1,0($s1)
    li	$t2,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L0156ee14
    lw	$t1,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t2,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L0156ee14
    sd	$t1,8($sp)
    sw	$t2,19112($gp)
    sw	$a5,19092($gp)
    sw	$a4,19088($gp)
    sw	$t0,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,0($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L0156edf8
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0156edf8:
    ld	$s1,16($sp)
.L0156edfc:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0156ee14:
    lw	$t9,32($s1)
    lw	$t9,0($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$t0
    jalr	$t9
    move	$a3,$a7
    b	.L0156edfc
    ld	$s1,16($sp)

glabel nfbGetImage
    addiu	$sp,$sp,-176
    sd	$s5,24($sp)
    sd	$s8,64($sp)
    sd	$ra,56($sp)
    sd	$s4,48($sp)
    sd	$s3,80($sp)
    sd	$s0,40($sp)
    sd	$s2,88($sp)
    move	$s2,$a7
    sd	$s6,72($sp)
    move	$s6,$a6
    move	$s0,$a5
    sd	$s1,32($sp)
    move	$s1,$a4
    move	$s3,$a3
    lbu	$v0,0($a0)
    move	$s4,$a2
    sd	$s7,16($sp)
    lui	$at,0x1d
    move	$s7,$a1
    sd	$a0,144($sp)
    addiu	$at,$at,-17744
    sd	$gp,96($sp)
    beqz	$v0,.L0156efb8
    addu	$gp,$t9,$at
    ld	$v0,144($sp)
    lbu	$v0,3($v0)
    li	$v1,1
    beq	$v0,$v1,.L0156f63c
    lw	$t9,-31636($gp)
    li	$v1,8
    beq	$v0,$v1,.L0156f64c
    lw	$t9,-31196($gp)
    li	$a0,16
    beq	$v0,$a0,.L0156f670
    lw	$t9,-30308($gp)
    li	$a1,32
    beq	$v0,$a1,.L0156f624
    lw	$t9,-28244($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18664
.L0156efb8:
    ld	$ra,144($sp)
    lw	$at,-5736($gp)
    lbu	$v0,2($ra)
    lw	$ra,132($ra)
    sll	$at,$at,0x2
    la	$t8,PixmapWidthPaddingInfo
    addu	$ra,$ra,$at
    sll	$t9,$v0,0x2
    lw	$ra,0($ra)
    subu	$t9,$t9,$v0
    sll	$t9,$t9,0x2
    lw	$ra,0($ra)
    addu	$t8,$t8,$t9
    lw	$s5,0($t8)
    lw	$at,4($t8)
    li	$t9,2
    lw	$t8,8($t8)
    addu	$s5,$s5,$s3
    lw	$ra,20($ra)
    srav	$s5,$s5,$at
    sd	$ra,128($sp)
    beq	$s0,$t9,.L0156f4b4
    sllv	$s5,$s5,$t8
    lw	$t9,-27848($gp)
    jalr	$t9
    move	$a0,$s6
    addiu	$s6,$s3,31
    ld	$at,144($sp)
    sra	$v1,$s6,0x5
    sll	$v1,$v1,0x2
    move	$s0,$v0
    lh	$v0,8($at)
    mult	$s1,$v1
    lw	$t9,-27872($gp)
    addu	$v0,$v0,$s7
    sh	$v0,0($sp)
    lh	$at,10($at)
    move	$a0,$s2
    addu	$v0,$s3,$v0
    sh	$v0,4($sp)
    addu	$at,$at,$s4
    mflo	$a1
    jalr	$t9
    sh	$at,2($sp)
    mtc1	$s5,$f1
    li	$a1,10000
    mtc1	$a1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    teq	$s5,$zero,0x7
    sd	$s1,152($sp)
    sd	$s0,160($sp)
    beqz	$s1,.L0156f5f0
    mfc1	$s4,$f0
    li	$s1,-1
    sra	$s7,$s3,0x5
    la	$a2,_bss_symbol
    sll	$a3,$s3,0x2
    addu	$a4,$s3,$s3
    ld	$s0,160($sp)
    slti	$s8,$s3,1
    addu	$a5,$s3,$a2
    sd	$a5,112($sp)
    xori	$s8,$s8,0x1
    addu	$a4,$a4,$a2
    sd	$a4,104($sp)
    addiu	$s0,$s0,-1
    addu	$a3,$a3,$a2
    sd	$a3,120($sp)
    addiu	$a2,$a2,328
    b	.L0156f0e8
    sd	$a2,136($sp)
.L0156f0e0:
    ld	$t8,152($sp)
    beqz	$t8,.L0156f5f0
.L0156f0e8:
    ld	$ra,152($sp)
    lh	$t9,2($sp)
    move	$v1,$ra
    slt	$at,$s4,$ra
    subu	$v0,$ra,$s4
    movz	$s4,$v1,$at
    addu	$t9,$t9,$s4
    sh	$t9,6($sp)
    ld	$t9,128($sp)
    ld	$a1,136($sp)
    move	$ra,$zero
    addiu	$a0,$sp,0
    movn	$ra,$v0,$at
    sd	$ra,152($sp)
    move	$a2,$s5
    jalr	$t9
    ld	$a3,144($sp)
    lh	$v1,6($sp)
    ld	$v0,144($sp)
    sh	$v1,2($sp)
    lbu	$v0,3($v0)
    li	$a2,8
    ld	$t2,120($sp)
    move	$t8,$zero
    li	$a0,16
    li	$a5,31
    beq	$a2,$v0,.L0156f274
    la	$t3,_bss_symbol
    beq	$a0,$v0,.L0156f390
    nop
    blez	$s4,.L0156f0e0
    nop
    b	.L0156f680
    li	$a5,31
.L0156f170:
    beqz	$a6,.L0156f1f4
    move	$a7,$s2
    nop
    nop
.L0156f180:
    lw	$t0,328($v0)
    li	$t9,31
    addiu	$a4,$a5,-1
    xor	$t1,$a4,$s1
    srlv	$t0,$t0,$s0
    movz	$a4,$t9,$t1
    andi	$t0,$t0,0x1
    sllv	$t0,$t0,$a5
    lw	$a6,0($a7)
    addiu	$a5,$a4,-1
    addiu	$a2,$a7,4
    movn	$a2,$a7,$t1
    or	$a6,$a6,$t0
    sw	$a6,0($a7)
    addiu	$a7,$a2,4
    xor	$a6,$a5,$s1
    lw	$a3,332($v0)
    addiu	$v0,$v0,8
    movn	$a7,$a2,$a6
    li	$t0,31
    srlv	$a3,$a3,$s0
    movz	$a5,$t0,$a6
    andi	$a3,$a3,0x1
    lw	$a1,0($a2)
    sllv	$a3,$a3,$a4
    or	$a1,$a1,$a3
    bne	$v0,$t2,.L0156f180
    sw	$a1,0($a2)
    move	$s2,$a7
.L0156f1f4:
    sra	$t1,$s6,0x5
.L0156f1f8:
    addu	$t3,$s5,$t3
    sll	$t1,$t1,0x2
    addu	$t2,$s5,$t2
    sra	$t1,$t1,0x2
    addiu	$t8,$t8,1
    subu	$t1,$t1,$s7
    li	$a5,31
    sll	$t1,$t1,0x2
    beq	$t8,$s4,.L0156f0e0
    addu	$s2,$s2,$t1
.L0156f220:
    blez	$s3,.L0156f1f8
    sra	$t1,$s6,0x5
    sra	$a6,$s3,0x1
    andi	$t9,$s3,0x1
    beqz	$t9,.L0156f170
    move	$v0,$t3
    addiu	$v0,$t3,4
    lw	$a0,328($t3)
    li	$a1,31
    li	$a5,0x1e
    xor	$ra,$a5,$s1
    srlv	$a0,$a0,$s0
    lw	$v1,0($s2)
    movz	$a5,$a1,$ra
    andi	$a0,$a0,0x1
    addiu	$at,$s2,4
    sll	$a0,$a0,0x1f
    or	$v1,$v1,$a0
    sw	$v1,0($s2)
    b	.L0156f170
    movz	$s2,$at,$ra
.L0156f274:
    blez	$s4,.L0156f0e0
    ld	$t2,112($sp)
    move	$t3,$zero
    b	.L0156f338
    la	$a2,_bss_symbol
    nop
    nop
.L0156f290:
    beqz	$a6,.L0156f314
    move	$a7,$s2
    nop
    nop
.L0156f2a0:
    lbu	$t1,328($a5)
    li	$t9,31
    addiu	$a6,$v0,-1
    xor	$t8,$a6,$s1
    srav	$t1,$t1,$s0
    movz	$a6,$t9,$t8
    andi	$t1,$t1,0x1
    sllv	$t1,$t1,$v0
    lw	$t0,0($a7)
    addiu	$v0,$a6,-1
    addiu	$a3,$a7,4
    movn	$a3,$a7,$t8
    or	$t0,$t0,$t1
    sw	$t0,0($a7)
    addiu	$a7,$a3,4
    xor	$t0,$v0,$s1
    lbu	$a4,329($a5)
    addiu	$a5,$a5,2
    movn	$a7,$a3,$t0
    li	$t1,31
    srav	$a4,$a4,$s0
    movz	$v0,$t1,$t0
    andi	$a4,$a4,0x1
    lw	$a1,0($a3)
    sllv	$a4,$a4,$a6
    or	$a1,$a1,$a4
    bne	$a5,$t2,.L0156f2a0
    sw	$a1,0($a3)
    move	$s2,$a7
.L0156f314:
    sra	$t8,$s6,0x5
    sll	$t8,$t8,0x2
    sra	$t8,$t8,0x2
    addu	$a2,$s5,$a2
    subu	$t8,$t8,$s7
    addu	$t2,$s5,$t2
    sll	$t8,$t8,0x2
    beq	$t3,$s4,.L0156f0e0
    addu	$s2,$s2,$t8
.L0156f338:
    beqz	$s8,.L0156f314
    addiu	$t3,$t3,1
    sra	$a6,$s3,0x1
    andi	$t9,$s3,0x1
    move	$a5,$a2
    beqz	$t9,.L0156f290
    li	$v0,31
    addiu	$a5,$a2,1
    lbu	$a0,328($a2)
    li	$a1,31
    li	$v0,0x1e
    xor	$ra,$v0,$s1
    srav	$a0,$a0,$s0
    lw	$v1,0($s2)
    movz	$v0,$a1,$ra
    andi	$a0,$a0,0x1
    addiu	$at,$s2,4
    sll	$a0,$a0,0x1f
    or	$v1,$v1,$a0
    sw	$v1,0($s2)
    b	.L0156f290
    movz	$s2,$at,$ra
.L0156f390:
    blez	$s4,.L0156f0e0
    ld	$t2,104($sp)
    move	$t3,$zero
    la	$a2,_bss_symbol
    b	.L0156f688
    nop
    nop
    nop
.L0156f3b0:
    beqz	$a6,.L0156f434
    move	$a7,$s2
    nop
    nop
.L0156f3c0:
    lhu	$t1,328($v0)
    li	$t9,31
    addiu	$a6,$a5,-1
    xor	$t8,$a6,$s1
    srav	$t1,$t1,$s0
    movz	$a6,$t9,$t8
    andi	$t1,$t1,0x1
    sllv	$t1,$t1,$a5
    lw	$t0,0($a7)
    addiu	$a5,$a6,-1
    addiu	$a3,$a7,4
    movn	$a3,$a7,$t8
    or	$t0,$t0,$t1
    sw	$t0,0($a7)
    addiu	$a7,$a3,4
    xor	$t0,$a5,$s1
    lhu	$a4,330($v0)
    addiu	$v0,$v0,4
    movn	$a7,$a3,$t0
    li	$t1,31
    srav	$a4,$a4,$s0
    movz	$a5,$t1,$t0
    andi	$a4,$a4,0x1
    lw	$a1,0($a3)
    sllv	$a4,$a4,$a6
    or	$a1,$a1,$a4
    bne	$v0,$t2,.L0156f3c0
    sw	$a1,0($a3)
    move	$s2,$a7
.L0156f434:
    sra	$t8,$s6,0x5
.L0156f438:
    addu	$a2,$s5,$a2
    sll	$t8,$t8,0x2
    addu	$t2,$s5,$t2
    sra	$t8,$t8,0x2
    addiu	$t3,$t3,1
    subu	$t8,$t8,$s7
    li	$a5,31
    sll	$t8,$t8,0x2
    beq	$t3,$s4,.L0156f0e0
    addu	$s2,$s2,$t8
.L0156f460:
    blez	$s3,.L0156f438
    sra	$t8,$s6,0x5
    sra	$a6,$s3,0x1
    andi	$t9,$s3,0x1
    beqz	$t9,.L0156f3b0
    move	$v0,$a2
    addiu	$v0,$a2,2
    lhu	$a0,328($a2)
    li	$a1,31
    li	$a5,0x1e
    xor	$ra,$a5,$s1
    srav	$a0,$a0,$s0
    lw	$v1,0($s2)
    movz	$a5,$a1,$ra
    andi	$a0,$a0,0x1
    addiu	$at,$s2,4
    sll	$a0,$a0,0x1f
    or	$v1,$v1,$a0
    sw	$v1,0($s2)
    b	.L0156f3b0
    movz	$s2,$at,$ra
.L0156f4b4:
    ld	$a3,144($sp)
    lh	$ra,8($a3)
    ld	$t9,128($sp)
    li	$s8,1
    sllv	$s8,$s8,$v0
    addu	$ra,$ra,$s7
    sh	$ra,0($sp)
    addiu	$a0,$sp,0
    addiu	$s8,$s8,-1
    lh	$a1,10($a3)
    move	$a2,$s5
    sd	$s8,8($sp)
    and	$s8,$s8,$s6
    addu	$ra,$s3,$ra
    sh	$ra,4($sp)
    addu	$a1,$a1,$s4
    move	$s0,$s8
    sh	$a1,2($sp)
    addu	$a1,$s1,$a1
    sh	$a1,6($sp)
    jalr	$t9
    move	$a1,$s2
    ld	$at,8($sp)
    beq	$at,$s8,.L0156f5f4
    ld	$gp,96($sp)
    ld	$v0,144($sp)
    lbu	$v0,3($v0)
    li	$v1,8
    beq	$v0,$v1,.L0156f65c
    li	$v1,16
    sll	$a0,$s8,0x10
    xor	$v1,$v0,$v1
    or	$a0,$s8,$a0
    movz	$s0,$a0,$v1
.L0156f53c:
    blez	$s1,.L0156f5f0
    sra	$a4,$s5,0x2
    blez	$a4,.L0156f5f0
    sll	$a6,$a4,0x2
    move	$a5,$zero
    addu	$a2,$a6,$s2
    andi	$a3,$a4,0x3
    move	$v0,$s2
    addu	$s2,$s2,$a6
    sra	$a0,$a4,0x2
    nop
    nop
    nop
.L0156f570:
    beqz	$a3,.L0156f590
    addiu	$a5,$a5,1
.L0156f578:
    addiu	$a3,$a3,-1
    lw	$a1,0($v0)
    addiu	$v0,$v0,4
    and	$a1,$a1,$s0
    bnez	$a3,.L0156f578
    sw	$a1,-4($v0)
.L0156f590:
    beqz	$a0,.L0156f5dc
    andi	$a3,$a4,0x3
    nop
    nop
.L0156f5a0:
    addiu	$v0,$v0,16
    lw	$t1,-4($v0)
    lw	$t0,-8($v0)
    and	$t1,$t1,$s0
    sw	$t1,-4($v0)
    and	$t0,$t0,$s0
    sw	$t0,-8($v0)
    lw	$a7,-12($v0)
    lw	$a3,-16($v0)
    and	$a7,$a7,$s0
    sw	$a7,-12($v0)
    and	$a3,$a3,$s0
    bne	$v0,$a2,.L0156f5a0
    sw	$a3,-16($v0)
    andi	$a3,$a4,0x3
.L0156f5dc:
    move	$v0,$s2
    addu	$s2,$s2,$a6
    sra	$a0,$a4,0x2
    bne	$a5,$s1,.L0156f570
    addu	$a2,$a2,$a6
.L0156f5f0:
    ld	$gp,96($sp)
.L0156f5f4:
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$ra,56($sp)
    ld	$s6,72($sp)
    ld	$s7,16($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0156f624:
    lw	$t9,-30768($gp)
    ld	$a0,144($sp)
    jalr	$t9
    move	$a1,$s7
    b	.L0156f5f4
    ld	$gp,96($sp)
.L0156f63c:
    jalr	$t9
    ld	$a0,144($sp)
    b	.L0156f5f4
    ld	$gp,96($sp)
.L0156f64c:
    jalr	$t9
    ld	$a0,144($sp)
    b	.L0156f5f4
    ld	$gp,96($sp)
.L0156f65c:
    sll	$s0,$s8,0x8
    or	$s0,$s8,$s0
    sll	$t8,$s0,0x10
    b	.L0156f53c
    or	$s0,$s0,$t8
.L0156f670:
    jalr	$t9
    ld	$a0,144($sp)
    b	.L0156f5f4
    ld	$gp,96($sp)
.L0156f680:
    b	.L0156f220
    nop
.L0156f688:
    b	.L0156f460
    nop

glabel nfbStereoPaintWindowBackground__BJ
    addiu	$sp,$sp,-80
    sd	$s5,48($sp)
    sd	$ra,32($sp)
    sd	$s1,64($sp)
    sd	$s4,40($sp)
    sd	$s3,24($sp)
    sd	$s2,16($sp)
    lui	$at,0x1c
    lw	$s2,16($a0)
    sd	$gp,72($sp)
    addiu	$at,$at,-816
    move	$s3,$a0
    addu	$gp,$t9,$at
    lw	$t9,340($s2)
    addiu	$a0,$sp,0
    sd	$s0,56($sp)
    move	$s0,$a1
    move	$a1,$zero
    move	$s4,$a2
    lw	$s1,116($s2)
    move	$a2,$zero
    jalr	$t9
    lw	$s5,0($s2)
    lw	$t9,344($s2)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$sp,0
    sll	$a1,$s5,0x2
    li	$a3,2
    lw	$a2,220($s1)
    subu	$a1,$a1,$s5
    addiu	$a4,$gp,-6776
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a4
    lw	$t9,356($s2)
    beq	$a2,$a3,.L0157ae34
    addiu	$a1,$a1,25656
    move	$a0,$s0
    ld	$s5,48($sp)
    jalr	$t9
    move	$a2,$s0
    lw	$t9,228($s1)
    move	$a0,$s3
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    lw	$t9,376($s2)
    lhu	$a2,226($s1)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    negu	$a2,$a2
    lhu	$a4,226($s1)
    lh	$a3,10($s3)
    subu	$a3,$a3,$a4
    sh	$a3,10($s3)
    lw	$t9,228($s1)
    move	$a2,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s3
    lhu	$a6,226($s1)
    lh	$a5,10($s3)
    ld	$s4,40($sp)
    addu	$a5,$a5,$a6
    sh	$a5,10($s3)
.L0157adf8:
    lw	$t9,344($s2)
    ld	$s3,24($sp)
    move	$a0,$s0
    ld	$s1,64($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    lw	$t9,352($s2)
    ld	$s0,56($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    ld	$s2,16($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0157ae34:
    move	$a0,$s0
    ld	$s5,48($sp)
    jalr	$t9
    move	$a2,$s0
    lw	$t9,228($s1)
    move	$a0,$s3
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    lw	$t9,376($s2)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    lhu	$a2,226($s1)
    lhu	$t0,226($s1)
    lh	$a7,10($s3)
    addu	$a7,$a7,$t0
    sh	$a7,10($s3)
    lw	$t9,228($s1)
    move	$a2,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s3
    lhu	$t2,226($s1)
    lh	$t1,10($s3)
    ld	$s4,40($sp)
    subu	$t1,$t1,$t2
    b	.L0157adf8
    sh	$t1,10($s3)

glabel nfbTiledFillRects
    lw	$a5,32($a0)
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lui	$t0,0x1c
    move	$t1,$a2
    lw	$a2,32($a5)
    addiu	$t0,$t0,-10384
    sd	$gp,24($sp)
    addu	$gp,$t9,$t0
    lw	$a7,-6768($gp)
    lw	$a6,76($a0)
    move	$t0,$a3
    lw	$a3,28($a5)
    sll	$a7,$a7,0x2
    lhu	$a4,12($a5)
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lhu	$a5,14($a5)
    lbu	$a7,72($a6)
    lw	$at,76($a6)
    sw	$a1,12($sp)
    sw	$at,4($sp)
    lw	$ra,-5736($gp)
    lw	$t9,132($a1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    lw	$t9,28($t9)
    move	$a0,$t1
    addiu	$a6,$a6,88
    jalr	$t9
    move	$a1,$t0
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel nfbRealizeWindow
    lui	$a1,0x1c
    lw	$v1,124($a0)
    addiu	$sp,$sp,-32
    addiu	$a1,$a1,-15568
    sd	$gp,8($sp)
    addu	$gp,$t9,$a1
    lw	$a1,-5736($gp)
    lw	$v0,132($a0)
    sll	$v1,$v1,0x15
    sll	$a1,$a1,0x2
    sd	$s0,16($sp)
    addu	$v0,$v0,$a1
    move	$s0,$a0
    bltz	$v1,.L0157e7dc
    lw	$v0,0($v0)
.L0157e6cc:
    lw	$a2,24($s0)
    beqz	$a2,.L0157e75c
    sd	$ra,24($sp)
    lw	$t9,-30072($gp)
    jalr	$t9
    move	$a0,$s0
    lw	$a3,-5736($gp)
    lw	$a0,24($s0)
    lw	$a5,132($s0)
    sll	$a3,$a3,0x2
    lw	$a4,132($a0)
    addu	$a5,$a5,$a3
    lw	$a5,0($a5)
    addu	$a4,$a4,$a3
    lw	$a4,0($a4)
    lw	$a5,24($a5)
    lw	$a4,24($a4)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    beq	$a4,$a5,.L0157e754
    li	$v0,1
    beqz	$a0,.L0157e754
    nop
    nop
.L0157e730:
    lw	$a5,132($a0)
    addu	$a5,$a3,$a5
    lw	$a5,0($a5)
    lw	$a4,28($a5)
    addiu	$a4,$a4,1
    sw	$a4,28($a5)
    lw	$a0,24($a0)
    bnez	$a0,.L0157e730
    nop
.L0157e754:
    jr	$ra
    addiu	$sp,$sp,32
.L0157e75c:
    lw	$a1,24($v0)
    lw	$v1,36($v0)
    li	$a0,1
    lw	$t9,16($s0)
    sllv	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,36($v0)
    sh	$zero,2($sp)
    sh	$zero,0($sp)
    lh	$at,8($t9)
    sh	$at,4($sp)
    lh	$ra,10($t9)
    sh	$ra,6($sp)
    lw	$a3,24($v0)
    lw	$a0,116($t9)
    lw	$t9,372($t9)
    sll	$a2,$a3,0x2
    lw	$a0,44($a0)
    subu	$a2,$a2,$a3
    addiu	$a1,$sp,0
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    lw	$t9,-29440($gp)
    jalr	$t9
    lw	$a0,16($s0)
    ld	$ra,24($sp)
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0157e7dc:
    lw	$a4,16($a0)
    lw	$a4,116($a4)
    lw	$a3,24($v0)
    lw	$a4,64($a4)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    lw	$a2,0($a3)
    addiu	$a2,$a2,1
    b	.L0157e6cc
    sw	$a2,0($a3)

glabel nfb11MaskRopLoop__LI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0157faa0
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0157fa08
    sra	$at,$t0,0x2
.L0157f9d0:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    nor	$t9,$t3,$zero
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    or	$t8,$t8,$t9
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0157f9d0
    sw	$t3,-4($a1)
.L0157fa08:
    beqz	$at,.L0157faa0
    nop
.L0157fa10:
    lw	$t9,0($a1)
    lw	$at,0($a0)
    nor	$v0,$t9,$zero
    or	$at,$at,$v0
    lw	$t2,4($a1)
    and	$t9,$a5,$t9
    and	$at,$a3,$at
    or	$t9,$t9,$at
    sw	$t9,0($a1)
    lw	$t3,4($a0)
    nor	$t8,$t2,$zero
    or	$t3,$t3,$t8
    lw	$a7,8($a1)
    and	$t2,$a5,$t2
    and	$t3,$a3,$t3
    or	$t2,$t2,$t3
    sw	$t2,4($a1)
    lw	$t0,8($a0)
    nor	$t1,$a7,$zero
    or	$t0,$t0,$t1
    lw	$v0,12($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    nor	$a6,$v0,$zero
    sltu	$v1,$a1,$a2
    or	$a4,$a4,$a6
    and	$v0,$a5,$v0
    and	$a4,$a3,$a4
    or	$v0,$v0,$a4
    bnez	$v1,.L0157fa10
    sw	$v0,-4($a1)
.L0157faa0:
    jr	$ra
    nop

glabel nfb13MaskRopLoop__NI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0157fce0
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0157fc48
    sra	$t9,$t0,0x2
.L0157fc10:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    nor	$t8,$t8,$zero
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    or	$t8,$t3,$t8
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0157fc10
    sw	$t3,-4($a1)
.L0157fc48:
    beqz	$t9,.L0157fce0
    nop
.L0157fc50:
    lw	$t2,0($a0)
    lw	$t1,0($a1)
    nor	$t2,$t2,$zero
    or	$t2,$t1,$t2
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    lw	$a7,4($a1)
    nor	$t0,$t0,$zero
    or	$t0,$a7,$t0
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    lw	$a4,8($a1)
    nor	$a6,$a6,$zero
    or	$a6,$a4,$a6
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    lw	$at,12($a1)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    nor	$v1,$v1,$zero
    sltu	$v0,$a1,$a2
    or	$v1,$at,$v1
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L0157fc50
    sw	$at,-4($a1)
.L0157fce0:
    jr	$ra
    nop

glabel nfb15MaskRopLoop__PI
    move	$t3,$a1
    move	$a5,$a2
    addiu	$a7,$a2,-64
    subu	$t0,$a2,$a1
    addiu	$sp,$sp,-160
    sltu	$at,$a1,$a2
    sd	$s8,8($sp)
    move	$s8,$a3
    addiu	$a6,$t0,3
    beqz	$at,.L015831c4
    addiu	$a4,$t0,6
    slt	$v0,$a6,$zero
    movz	$a4,$a6,$v0
    sra	$a2,$a4,0x2
    andi	$a3,$a2,0x7
    beqz	$a3,.L01582e60
    sra	$a0,$a2,0x3
.L01582e44:
    lw	$v1,0($t3)
    addiu	$t3,$t3,4
    addiu	$a3,$a3,-1
    pref	0x1,252($t3)
    or	$v1,$v1,$s8
    bnez	$a3,.L01582e44
    sw	$v1,-4($t3)
.L01582e60:
    addiu	$t1,$t3,64
    sltu	$a3,$t1,$a5
    beqz	$a0,.L015831c4
    sltu	$a4,$t1,$t3
    beqz	$a3,.L01583340
    nop
    bnez	$a4,.L01583340
    move	$t9,$s8
    sd	$s7,136($sp)
    sd	$s6,128($sp)
    sd	$s5,88($sp)
    sd	$s2,80($sp)
    pref	0x1,256($t3)
    lw	$a1,8($t3)
    sd	$ra,96($sp)
    lw	$ra,16($t3)
    lw	$at,24($t3)
    lw	$v0,28($t3)
    lw	$t0,20($t3)
    lw	$v1,4($t3)
    lw	$a0,0($t3)
    sd	$s0,104($sp)
    move	$s0,$a7
    lw	$a5,60($t3)
    sd	$s4,112($sp)
    sltu	$s4,$t1,$a7
    addiu	$t2,$t3,32
    lw	$a3,56($t3)
    move	$a4,$t1
    sltu	$a2,$t2,$a7
    move	$t1,$t3
    sd	$s3,72($sp)
    move	$s3,$a2
    lw	$a6,52($t3)
    or	$at,$at,$s8
    or	$ra,$ra,$s8
    sd	$s1,120($sp)
    or	$a1,$a1,$s8
    or	$s1,$v0,$s8
    lw	$v0,12($t3)
    move	$t3,$a4
    move	$a7,$s1
.L01582f08:
    sw	$a1,8($t1)
    sw	$ra,16($t1)
    lw	$s6,16($t2)
    lw	$a1,12($t2)
    lw	$s7,8($t2)
    lw	$a2,4($t2)
    lw	$a4,0($t2)
    sw	$at,24($t1)
    sw	$a7,28($t1)
    lw	$s1,28($t3)
    addiu	$t8,$t3,32
    lw	$s5,24($t3)
    or	$s2,$a5,$t9
    sltu	$ra,$t8,$s0
    lw	$a7,20($t3)
    or	$at,$t0,$t9
    sw	$at,20($t1)
    or	$at,$a3,$t9
    or	$v0,$v0,$t9
    sw	$v0,12($t1)
    or	$a3,$s6,$t9
    or	$v0,$v1,$t9
    sw	$v0,4($t1)
    or	$v1,$s7,$t9
    or	$v0,$a0,$t9
    beqz	$s3,.L015832cc
    sw	$v0,0($t1)
    sw	$v1,8($t2)
    sw	$a3,16($t2)
    lw	$v0,16($t3)
    lw	$a5,12($t3)
    lw	$s6,8($t3)
    lw	$v1,4($t3)
    lw	$a0,0($t3)
    sw	$at,24($t2)
    sw	$s2,28($t2)
    lw	$t0,60($t3)
    addiu	$t1,$t3,64
    lw	$a3,56($t3)
    or	$s3,$s1,$t9
    sltu	$s1,$t1,$s0
    lw	$s2,52($t3)
    or	$at,$a6,$t9
    sw	$at,20($t2)
    or	$at,$s5,$t9
    or	$a1,$a1,$t9
    sw	$a1,12($t2)
    or	$a6,$v0,$t9
    or	$v0,$a2,$t9
    sw	$v0,4($t2)
    or	$a1,$s6,$t9
    or	$v0,$a4,$t9
    beqz	$s4,.L015831d0
    sw	$v0,0($t2)
    sw	$a1,8($t3)
    sw	$a6,16($t3)
    lw	$v0,48($t3)
    lw	$a1,44($t3)
    lw	$s6,40($t3)
    lw	$a2,36($t3)
    lw	$a4,32($t3)
    sw	$at,24($t3)
    sw	$s3,28($t3)
    pref	0x1,256($t1)
    lw	$a6,92($t3)
    addiu	$t2,$t3,96
    lw	$s5,88($t3)
    or	$s4,$t0,$t9
    sltu	$s3,$t2,$s0
    lw	$t0,84($t3)
    or	$at,$a7,$t9
    sw	$at,20($t3)
    or	$at,$a3,$t9
    or	$a3,$a5,$t9
    sw	$a3,12($t3)
    or	$a3,$v0,$t9
    or	$v0,$v1,$t9
    sw	$v0,4($t3)
    or	$v1,$s6,$t9
    or	$v0,$a0,$t9
    beqz	$ra,.L01583254
    sw	$v0,0($t3)
    sw	$v1,8($t8)
    sw	$a3,16($t8)
    lw	$ra,80($t3)
    lw	$v0,76($t3)
    lw	$s6,72($t3)
    lw	$v1,68($t3)
    lw	$a0,0($t1)
    sw	$at,24($t8)
    sw	$s4,28($t8)
    lw	$a5,124($t3)
    addiu	$t3,$t3,128
    lw	$a3,24($t2)
    or	$a7,$a6,$t9
    sltu	$s4,$t3,$s0
    lw	$a6,20($t2)
    or	$at,$s2,$t9
    sw	$at,20($t8)
    or	$at,$s5,$t9
    or	$a1,$a1,$t9
    sw	$a1,12($t8)
    or	$ra,$ra,$t9
    or	$a1,$a2,$t9
    sw	$a1,4($t8)
    or	$a1,$s6,$t9
    or	$a2,$a4,$t9
    bnez	$s1,.L01582f08
    sw	$a2,0($t8)
    ld	$s7,136($sp)
    ld	$s6,128($sp)
    ld	$s1,120($sp)
    ld	$s4,112($sp)
    move	$s0,$a3
    move	$a3,$ra
    ld	$ra,96($sp)
    ld	$s5,88($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    move	$t3,$t1
    move	$t1,$a6
    move	$a6,$t0
    move	$t0,$s0
    ld	$s0,104($sp)
    move	$t8,$t2
    sd	$t8,16($sp)
    move	$a2,$at
    sd	$a2,24($sp)
    move	$a4,$a7
    sd	$a4,32($sp)
    sd	$t3,0($sp)
    ld	$t3,32($sp)
    ld	$a2,24($sp)
    move	$t2,$v0
    ld	$a4,0($sp)
    move	$t9,$v1
    move	$a7,$a0
    ld	$t8,16($sp)
.L01583130:
    sw	$a3,16($a4)
    sw	$a1,8($a4)
    sd	$s0,144($sp)
    lw	$s0,0($t8)
    sd	$s1,152($sp)
    lw	$s1,4($t8)
    lw	$v1,8($t8)
    lw	$at,12($t8)
    lw	$v0,16($t8)
    sw	$t3,28($a4)
    sw	$a2,24($a4)
    or	$a0,$a6,$s8
    sw	$a0,20($a4)
    or	$a0,$t2,$s8
    sw	$a0,12($a4)
    or	$a0,$t9,$s8
    sw	$a0,4($a4)
    or	$a0,$a7,$s8
    sw	$a0,0($a4)
    or	$a0,$t0,$s8
    sw	$a0,24($t8)
    or	$a0,$a5,$s8
    sw	$a0,28($t8)
    or	$a0,$t1,$s8
    sw	$a0,20($t8)
    or	$v1,$v1,$s8
    sw	$v1,8($t8)
    or	$v0,$v0,$s8
    sw	$v0,16($t8)
    or	$at,$at,$s8
    sw	$at,12($t8)
    or	$s0,$s0,$s8
    sw	$s0,0($t8)
    ld	$s0,144($sp)
    or	$s1,$s1,$s8
    sw	$s1,4($t8)
    ld	$s1,152($sp)
.L015831c4:
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L015831d0:
    ld	$s7,136($sp)
    ld	$s6,128($sp)
    ld	$s4,112($sp)
    ld	$ra,96($sp)
    ld	$s5,88($sp)
    move	$t1,$t3
    move	$a2,$s2
    ld	$s2,80($sp)
    move	$t3,$s3
    move	$a4,$a3
    ld	$s3,72($sp)
    move	$a3,$a6
    move	$s1,$a7
    move	$a6,$s1
    ld	$s1,120($sp)
    move	$s0,$t0
    move	$t2,$a5
    move	$a5,$s0
    ld	$s0,104($sp)
    sd	$t8,16($sp)
    sd	$a4,40($sp)
    move	$t0,$at
    sd	$t0,24($sp)
    sd	$a2,56($sp)
    sd	$t1,0($sp)
    ld	$t1,56($sp)
    ld	$t0,40($sp)
    ld	$a2,24($sp)
    move	$t9,$v1
    ld	$a4,0($sp)
    move	$a7,$a0
    b	.L01583130
    ld	$t8,16($sp)
.L01583254:
    ld	$s7,136($sp)
    ld	$s6,128($sp)
    ld	$s1,120($sp)
    move	$t3,$s4
    ld	$s4,112($sp)
    ld	$ra,96($sp)
    move	$s0,$s5
    ld	$s5,88($sp)
    move	$v0,$a6
    move	$a6,$s2
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    move	$a5,$t1
    move	$t1,$t0
    move	$t0,$s0
    ld	$s0,104($sp)
    move	$a0,$t8
    sd	$a0,0($sp)
    sd	$a4,64($sp)
    move	$a7,$at
    sd	$v0,48($sp)
    move	$t9,$a2
    move	$a2,$a7
    ld	$a7,64($sp)
    move	$t2,$a1
    move	$t8,$a5
    ld	$a5,48($sp)
    move	$a1,$v1
    b	.L01583130
    ld	$a4,0($sp)
.L015832cc:
    ld	$s7,136($sp)
    ld	$s6,128($sp)
    move	$v0,$s1
    ld	$s1,120($sp)
    ld	$s4,112($sp)
    ld	$s0,104($sp)
    ld	$ra,96($sp)
    move	$t8,$s5
    ld	$s5,88($sp)
    move	$a0,$t3
    move	$t3,$s2
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    sd	$a0,16($sp)
    move	$a5,$t2
    move	$t2,$a1
    sd	$v0,48($sp)
    move	$t1,$a7
    move	$a7,$a4
    sd	$t8,40($sp)
    move	$t0,$at
    move	$a4,$a5
    ld	$a5,48($sp)
    move	$t9,$a2
    move	$a2,$t0
    ld	$t0,40($sp)
    move	$a1,$v1
    b	.L01583130
    ld	$t8,16($sp)
.L01583340:
    lw	$a1,28($t3)
    lw	$a0,24($t3)
    lw	$v1,20($t3)
    lw	$v0,16($t3)
    lw	$at,12($t3)
    lw	$t9,8($t3)
    lw	$t8,4($t3)
    lw	$t1,0($t3)
    addiu	$t3,$t3,32
    or	$a1,$a1,$s8
    sw	$a1,-4($t3)
    or	$a0,$a0,$s8
    sw	$a0,-8($t3)
    or	$v1,$v1,$s8
    sw	$v1,-12($t3)
    or	$v0,$v0,$s8
    sw	$v0,-16($t3)
    or	$at,$at,$s8
    sw	$at,-20($t3)
    sltu	$t2,$t3,$a5
    or	$t9,$t9,$s8
    sw	$t9,-24($t3)
    or	$t8,$t8,$s8
    sw	$t8,-28($t3)
    or	$t1,$t1,$s8
    beqz	$t2,.L015831c4
    sw	$t1,-32($t3)
    b	.L01583340
    nop

glabel nfbInfPolySegment__MK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x1b
    sd	$s2,32($sp)
    addiu	$t8,$t8,30208
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a5,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t0,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L0158354c
    lw	$a7,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t0,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L0158354c
    sd	$a7,8($sp)
    sw	$t0,19112($gp)
    sw	$a5,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,28($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L01583530
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01583530:
    ld	$s1,16($sp)
.L01583534:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0158354c:
    lw	$t9,32($s1)
    lw	$t9,28($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a5
    jalr	$t9
    move	$a3,$a6
    b	.L01583534
    ld	$s1,16($sp)

glabel nfbGetBestVisualForPEX
    lw	$at,116($a0)
    lw	$v0,204($at)
    sw	$v0,0($a1)
    lw	$at,208($at)
    jr	$ra
    sw	$at,0($a2)

glabel nfbLineSD
    addiu	$sp,$sp,-1680
    sd	$s1,256($sp)
    sd	$s6,248($sp)
    sd	$a2,744($sp)
    sd	$a1,792($sp)
    sd	$s5,1248($sp)
    lui	$at,0x1b
    sd	$s4,1264($sp)
    addiu	$at,$at,-272
    sd	$gp,264($sp)
    addu	$gp,$t9,$at
    lw	$a6,19072($gp)
    sd	$ra,1272($sp)
    move	$t1,$a4
    move	$t2,$a3
    sd	$s3,272($sp)
    move	$s3,$a0
    bltz	$a6,.L0158e5f4
    sd	$s2,1288($sp)
    lw	$v0,16($a0)
    lw	$v0,436($v0)
    sd	$s7,1280($sp)
    sll	$v1,$a6,0x2
    sd	$s8,1296($sp)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    sd	$v0,576($sp)
.L0158ab3c:
    lw	$s7,132($s3)
    lw	$t9,-5736($gp)
    ld	$a6,792($sp)
    lw	$a7,-6768($gp)
    sll	$t9,$t9,0x2
    lw	$a6,76($a6)
    sd	$s0,1256($sp)
    addu	$s7,$s7,$t9
    sll	$a7,$a7,0x2
    lw	$s7,0($s7)
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lw	$s7,0($s7)
    lw	$at,68($a6)
    sd	$at,416($sp)
    lw	$s8,76($a6)
    lw	$ra,64($a6)
    lbu	$t3,72($a6)
    lw	$t8,36($a6)
    lw	$a6,8($a6)
    sd	$ra,424($sp)
    lw	$a3,8($a6)
    lw	$s7,4($s7)
    lw	$t8,8($t8)
    beqz	$a3,.L0158e604
    sd	$t8,488($sp)
    lw	$s0,4($a3)
    addiu	$a7,$a3,8
    sd	$a7,912($sp)
.L0158abb0:
    lh	$ra,8($s3)
    sd	$ra,864($sp)
    lh	$t8,10($s3)
    ld	$t0,792($sp)
    lh	$s6,2($t1)
    lhu	$a4,8($t0)
    lw	$t9,16($t0)
    lw	$a5,12($t0)
    sd	$a5,1032($sp)
    lbu	$a5,0($a5)
    lh	$s1,0($t1)
    addu	$s6,$s6,$t8
    sd	$t8,872($sp)
    srl	$t9,$t9,0x1e
    slt	$t8,$a4,$a5
    addu	$s1,$s1,$ra
    lhu	$t0,10($t0)
    xori	$t9,$t9,0x2
    sltiu	$t9,$t9,1
    beqz	$t8,.L0158ac1c
    sd	$t9,904($sp)
    li	$a6,1
    subu	$a7,$a5,$a4
    beq	$a6,$t2,.L0158d848
    sd	$a7,1016($sp)
    b	.L0158af1c
    sd	$zero,920($sp)
.L0158ac1c:
    li	$s5,1
    subu	$s4,$a4,$a5
    xor	$s5,$s5,$t0
    blez	$t0,.L0158e8bc
    sltu	$s5,$zero,$s5
    ld	$t8,1032($sp)
    move	$a3,$t0
    andi	$a5,$t0,0x7
    move	$a4,$zero
    move	$a7,$t8
    beqz	$a5,.L0158ac64
    addu	$t8,$t0,$t8
.L0158ac4c:
    lbu	$t9,0($a7)
    addiu	$a5,$a5,-1
    addiu	$a7,$a7,1
    pref	0x0,255($a7)
    bnez	$a5,.L0158ac4c
    addu	$a4,$a4,$t9
.L0158ac64:
    sra	$a5,$a3,0x3
    beqz	$a5,.L0158ae74
    slti	$ra,$a5,3
    bnez	$ra,.L0158e8fc
    nop
    sd	$s0,1648($sp)
    pref	0x0,256($a7)
    sd	$t2,1352($sp)
    lbu	$t2,7($a7)
    sd	$s1,1656($sp)
    lbu	$s1,1($a7)
    lbu	$s2,2($a7)
    lbu	$at,0($a7)
    lbu	$v0,3($a7)
    lbu	$v1,4($a7)
    lbu	$a0,5($a7)
    lbu	$a1,6($a7)
    sd	$t3,1240($sp)
    lbu	$t3,15($a7)
    sd	$t0,1392($sp)
    addiu	$t0,$a7,8
    lbu	$t9,8($a7)
    sd	$t1,280($sp)
    addiu	$t1,$a7,16
    addiu	$a2,$t8,-16
    lbu	$ra,9($a7)
    addu	$at,$a4,$at
    move	$a4,$a2
.L0158acd4:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158e678
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158e610
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158acd4
    lbu	$ra,1($t0)
    move	$a2,$s1
    ld	$s1,1656($sp)
    ld	$s0,1648($sp)
    move	$t8,$t0
    move	$t0,$t2
    ld	$t2,1352($sp)
    move	$a6,$t3
    ld	$t3,1240($sp)
    move	$a5,$v0
    move	$v0,$at
    sd	$v0,200($sp)
    move	$a3,$ra
    sd	$a3,208($sp)
    move	$t1,$a1
    move	$a4,$s2
    move	$s2,$t0
    ld	$t0,1392($sp)
    move	$ra,$t1
    ld	$t1,280($sp)
    sd	$a4,1176($sp)
    sd	$a2,1192($sp)
    sd	$a5,1184($sp)
    ld	$a5,1192($sp)
    ld	$a2,1184($sp)
    move	$a1,$a0
    move	$a7,$v1
    ld	$a3,1176($sp)
.L0158ae1c:
    ld	$a4,200($sp)
    lbu	$at,2($t8)
    addu	$a4,$a4,$a5
    addu	$a4,$a4,$a3
    addu	$a4,$a4,$a2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$a1
    lbu	$a0,3($t8)
    addu	$a4,$a4,$ra
    ld	$v0,208($sp)
    addu	$a4,$a4,$s2
    lbu	$v1,4($t8)
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$v0
    lbu	$v0,5($t8)
    addu	$a4,$a4,$at
    lbu	$at,6($t8)
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$a6
.L0158ae74:
    slt	$a5,$s4,$a4
    bnez	$a5,.L0158aeb0
    ld	$a5,1032($sp)
.L0158ae80:
    mtc1	$s4,$f0
    mtc1	$a4,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a7,$f0
    mult	$a7,$a4
    mflo	$a6
    teq	$a4,$zero,0x7
    subu	$s4,$s4,$a6
    ld	$a5,1032($sp)
.L0158aeb0:
    addu	$a5,$s5,$a5
    lbu	$a5,0($a5)
    slt	$t8,$s4,$a5
    bnez	$t8,.L0158af00
    ld	$ra,1032($sp)
    nop
    nop
    nop
.L0158aed0:
    addiu	$s5,$s5,1
    xor	$t8,$s5,$t0
    ld	$a7,1032($sp)
    sltiu	$t8,$t8,1
    movn	$s5,$zero,$t8
    addu	$a7,$s5,$a7
    subu	$s4,$s4,$a5
    lbu	$a5,0($a7)
    slt	$a6,$s4,$a5
    beqz	$a6,.L0158aed0
    nop
    ld	$ra,1032($sp)
.L0158af00:
    addu	$ra,$s5,$ra
    li	$t9,1
    lbu	$ra,0($ra)
    sd	$s5,920($sp)
    subu	$ra,$ra,$s4
    beq	$t9,$t2,.L0158d848
    sd	$ra,1016($sp)
.L0158af1c:
    sd	$t1,280($sp)
    sd	$zero,880($sp)
    lw	$s5,64($sp)
    lw	$s4,60($sp)
    sd	$t1,936($sp)
    sd	$t3,512($sp)
    sd	$s7,504($sp)
    sd	$s8,528($sp)
    sd	$s3,552($sp)
    lw	$v1,32($sp)
    lw	$a0,36($sp)
    lw	$a2,40($sp)
    lw	$a3,44($sp)
    lw	$a4,48($sp)
    lw	$a5,52($sp)
    lw	$a6,56($sp)
    sd	$a6,536($sp)
    sd	$a5,464($sp)
    sd	$a4,456($sp)
    sd	$a3,1080($sp)
    sd	$a2,1088($sp)
    sd	$a0,1072($sp)
    addiu	$v0,$t2,-1
    sd	$v1,984($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$t1
    b	.L0158b268
    sd	$v0,736($sp)
    nop
.L0158af90:
    addiu	$s7,$t3,1
    xor	$s3,$s7,$s8
    sltiu	$s3,$s3,1
    movn	$s7,$zero,$s3
    subu	$s3,$t1,$t8
    mtc1	$s3,$f4
    addu	$t2,$s7,$t2
    sd	$t2,544($sp)
    blez	$s8,.L0158dd38
    lbu	$t2,0($t2)
    ld	$t1,1032($sp)
    beqz	$t0,.L0158afdc
    nop
.L0158afc4:
    lbu	$t8,0($t1)
    addiu	$t0,$t0,-1
    addiu	$t1,$t1,1
    pref	0x0,255($t1)
    bnez	$t0,.L0158afc4
    addu	$a4,$a4,$t8
.L0158afdc:
    sra	$t0,$s8,0x3
    beqz	$t0,.L0158b1cc
    slti	$t0,$t0,3
    bnez	$t0,.L0158eb60
    nop
    sd	$s0,1648($sp)
    lbu	$at,0($t1)
    lbu	$t8,7($t1)
    lbu	$a5,9($t1)
    lbu	$a2,1($t1)
    pref	0x0,256($t1)
    lbu	$s2,2($t1)
    lbu	$v0,3($t1)
    lbu	$v1,4($t1)
    lbu	$a0,5($t1)
    lbu	$a1,6($t1)
    addiu	$t0,$t1,8
    lbu	$t3,15($t1)
    addiu	$a6,$ra,-16
    addiu	$a3,$t1,16
    lbu	$t9,8($t1)
    move	$t1,$a3
    addu	$at,$a4,$at
    sd	$t2,1544($sp)
    move	$a4,$a6
    move	$ra,$a5
    sd	$s1,1656($sp)
    move	$s1,$a2
    move	$t2,$t8
.L0158b050:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158d0d4
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158d11c
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158b050
    lbu	$ra,1($t0)
    move	$t1,$t0
    move	$t0,$v1
    move	$v1,$s1
    ld	$s1,1656($sp)
    ld	$s0,1648($sp)
    move	$t8,$t2
    ld	$t2,1544($sp)
    move	$a2,$t3
    move	$t3,$a0
    move	$a6,$at
    sd	$v1,1480($sp)
    move	$a7,$a1
    move	$a1,$ra
    sd	$a2,1472($sp)
    move	$a3,$v0
    move	$a4,$s2
    ld	$a5,1480($sp)
    move	$ra,$a4
    move	$s2,$a3
    ld	$a3,1472($sp)
.L0158b17c:
    lbu	$a2,2($t1)
    lbu	$a0,3($t1)
    addu	$a4,$a6,$a5
    lbu	$v1,4($t1)
    addu	$a4,$a4,$ra
    lbu	$v0,5($t1)
    addu	$a4,$a4,$s2
    lbu	$at,6($t1)
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t8
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$a1
    addu	$a4,$a4,$a2
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$a3
.L0158b1cc:
    slt	$a5,$s3,$a4
    bnez	$a5,.L0158b1fc
    cvt.d.w	$f1,$f4
.L0158b1d8:
    mtc1	$a4,$f2
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a7,$f1
    mult	$a7,$a4
    mflo	$a6
    teq	$a4,$zero,0x7
    subu	$s3,$s3,$a6
.L0158b1fc:
    slt	$t0,$s3,$t2
.L0158b200:
    bnez	$t0,.L0158b23c
    move	$a6,$t2
    move	$a6,$t2
    nop
.L0158b210:
    addiu	$s7,$s7,1
    xor	$t3,$s7,$s8
    ld	$t2,1032($sp)
    sltiu	$t3,$t3,1
    movn	$s7,$zero,$t3
    addu	$t2,$s7,$t2
    subu	$s3,$s3,$a6
    lbu	$a6,0($t2)
    slt	$t1,$s3,$a6
    beqz	$t1,.L0158b210
    nop
.L0158b23c:
    sd	$s7,920($sp)
.L0158b240:
    subu	$t9,$a6,$s3
    sd	$t9,1016($sp)
.L0158b248:
    ld	$ra,936($sp)
.L0158b24c:
    ld	$at,736($sp)
    ld	$v0,880($sp)
    addiu	$ra,$ra,4
    sd	$ra,936($sp)
    addiu	$v0,$v0,1
    beq	$ra,$at,.L0158d7dc
    sd	$v0,880($sp)
.L0158b268:
    ld	$s3,912($sp)
    ld	$a1,744($sp)
    ld	$v1,936($sp)
    li	$a3,1
    xor	$a1,$a1,$a3
    ld	$a3,864($sp)
    lh	$a2,4($v1)
    ld	$a0,872($sp)
    movz	$a3,$s1,$a1
    move	$s2,$s1
    lh	$v1,6($v1)
    addu	$s1,$a2,$a3
    move	$s8,$s6
    movz	$a0,$s6,$a1
    sd	$a0,872($sp)
    sd	$a3,864($sp)
    bne	$s2,$s1,.L0158b390
    addu	$s6,$v1,$a0
    beq	$s8,$s6,.L0158b24c
    ld	$ra,936($sp)
    li	$t3,1
    move	$t2,$zero
    slt	$a5,$s8,$s6
    addiu	$a6,$s6,1
    movz	$t2,$t3,$a5
    addiu	$t1,$s8,1
    move	$a7,$s6
    ld	$s3,920($sp)
    move	$a4,$s8
    movz	$a7,$t1,$a5
    sd	$t2,712($sp)
    move	$t1,$zero
    movz	$a4,$a6,$a5
    sd	$a4,728($sp)
    beqz	$s0,.L0158bd6c
    move	$t3,$a7
    ld	$t9,912($sp)
    ld	$t8,728($sp)
    lh	$t9,6($t9)
    move	$s8,$t8
    slt	$t8,$t8,$t9
    bnez	$t8,.L0158c8a8
    move	$t0,$s0
    ld	$a6,912($sp)
    addiu	$a6,$a6,8
    nop
.L0158b320:
    addiu	$t0,$t0,-1
    beqz	$t0,.L0158bd6c
    addiu	$t1,$t1,1
    lh	$ra,6($a6)
    slt	$ra,$s8,$ra
    beqz	$ra,.L0158b320
    addiu	$a6,$a6,8
    beqz	$t0,.L0158bd6c
    addiu	$ra,$s2,1
    ld	$a6,912($sp)
    sh	$s2,72($sp)
    sll	$t2,$t1,0x3
    sh	$ra,76($sp)
    addu	$a6,$a6,$t2
    lh	$at,2($a6)
    slt	$at,$a7,$at
    bnez	$at,.L0158bd6c
    sd	$a7,704($sp)
.L0158b368:
    ld	$t1,1016($sp)
    sh	$ra,76($sp)
    sh	$s2,72($sp)
    move	$t2,$t0
    sd	$s3,696($sp)
    b	.L0158c20c
    move	$s3,$a6
    nop
    nop
    nop
.L0158b390:
    bne	$s8,$s6,.L0158b474
    subu	$a4,$s6,$s8
    move	$t1,$zero
    li	$v0,1
    addiu	$ra,$s2,1
    move	$s7,$s1
    slt	$t8,$s2,$s1
    move	$at,$zero
    movz	$s7,$ra,$t8
    addiu	$t9,$s1,1
    movz	$at,$v0,$t8
    move	$t2,$s2
    sd	$at,688($sp)
    beqz	$s0,.L0158ba90
    movz	$t2,$t9,$t8
    ld	$v1,912($sp)
    lh	$v1,6($v1)
    slt	$v1,$s8,$v1
    bnez	$v1,.L0158c878
    ld	$t9,912($sp)
    move	$t0,$s0
    ld	$a6,912($sp)
    addiu	$a6,$a6,8
    nop
.L0158b3f0:
    addiu	$t0,$t0,-1
    beqz	$t0,.L0158ba90
    addiu	$t1,$t1,1
    lh	$a0,6($a6)
    slt	$a0,$s8,$a0
    beqz	$a0,.L0158b3f0
    addiu	$a6,$a6,8
    beqz	$t0,.L0158ba90
    ld	$a6,912($sp)
    sll	$a7,$t1,0x3
    addu	$a6,$a6,$a7
    lh	$a1,2($a6)
    slt	$a1,$s8,$a1
    bnez	$a1,.L0158ba90
    nop
    sd	$t2,752($sp)
    addiu	$s3,$s8,1
    sh	$s3,86($sp)
    sh	$s8,82($sp)
    lh	$t1,2($a6)
    sd	$t1,568($sp)
.L0158b444:
    ld	$a5,568($sp)
    ld	$s2,1016($sp)
    sh	$s3,86($sp)
    sh	$s8,82($sp)
    move	$ra,$t0
    ld	$t2,752($sp)
    move	$t1,$a6
    move	$a1,$s7
    ld	$t3,920($sp)
    sd	$t3,680($sp)
    b	.L0158ed20
    move	$a7,$t2
.L0158b474:
    subu	$t8,$s8,$s6
    slti	$a3,$a4,1
    movz	$t8,$a4,$a3
    sll	$t2,$t8,0x1
    subu	$a2,$s1,$s2
    li	$a7,-1
    slti	$a1,$a2,1
    slt	$t0,$zero,$a2
    slti	$v1,$a2,0
    movz	$a7,$t0,$v1
    sd	$a7,808($sp)
    subu	$a7,$s2,$s1
    move	$t3,$t2
    movz	$a7,$a2,$a1
    sll	$t0,$a7,0x1
    slt	$s7,$t8,$a7
    li	$a5,-1
    movz	$t3,$t0,$s7
    slt	$a6,$zero,$a4
    slti	$ra,$a4,0
    li	$a0,1
    sd	$t8,768($sp)
    movz	$a5,$a6,$ra
    sd	$a7,1024($sp)
    negu	$t8,$t8
    negu	$a7,$a7
    move	$v0,$zero
    movz	$a7,$t8,$s7
    movz	$v0,$a0,$s7
    li	$at,4
    movz	$at,$zero,$v1
    sd	$v0,840($sp)
    subu	$v0,$t0,$t2
    ori	$t9,$at,0x2
    subu	$t1,$t2,$t0
    movz	$t9,$at,$ra
    ld	$a6,576($sp)
    movz	$t1,$v0,$s7
    ori	$ra,$t9,0x1
    movn	$ra,$t9,$s7
    srlv	$a6,$a6,$ra
    sd	$a5,800($sp)
    move	$s7,$zero
    andi	$a6,$a6,0x1
    sd	$t3,832($sp)
    beqz	$s0,.L0158badc
    subu	$a7,$a7,$a6
    sd	$t1,672($sp)
    andi	$at,$ra,0x1
    sd	$at,848($sp)
    sd	$a7,608($sp)
    sd	$t2,640($sp)
    sd	$t0,816($sp)
    sd	$a6,856($sp)
    andi	$t3,$ra,0x4
    sd	$t3,616($sp)
    andi	$t8,$ra,0x2
    sd	$t8,824($sp)
    sltiu	$t8,$t8,1
    sd	$t8,720($sp)
    ld	$t9,832($sp)
    sltiu	$t3,$t3,1
    sd	$t3,600($sp)
    subu	$t9,$t9,$t1
    b	.L0158b5b8
    sd	$t9,888($sp)
    nop
.L0158b580:
    li	$s4,4
    xori	$v0,$t3,0x1
    beqz	$t1,.L0158b684
    movz	$s4,$zero,$v0
.L0158b590:
    ori	$s4,$s4,0x2
.L0158b594:
    or	$t1,$s4,$s5
.L0158b598:
    beqz	$t1,.L0158c06c
    and	$a6,$s4,$s5
    beqz	$a6,.L0158b69c
    nop
.L0158b5a8:
    addiu	$s3,$s3,8
.L0158b5ac:
    addiu	$s7,$s7,1
    beq	$s0,$s7,.L0158badc
    nop
.L0158b5b8:
    lh	$t2,0($s3)
    lh	$t0,2($s3)
    li	$s5,4
    lh	$t8,4($s3)
    slt	$v1,$s2,$t2
    slt	$t1,$s8,$t0
    slt	$a6,$s1,$t2
    beqz	$v1,.L0158b620
    slt	$t3,$s1,$t8
    bnez	$t1,.L0158b634
    li	$s5,8
    move	$s4,$a6
    lh	$ra,6($s3)
    slt	$a0,$s8,$ra
    slt	$t1,$s6,$t0
    beqz	$a0,.L0158b664
    slt	$a7,$s6,$ra
    beqz	$a6,.L0158b944
    nop
    beqz	$t1,.L0158b98c
    nop
    b	.L0158b5a8
    li	$s4,10
    nop
    nop
    nop
.L0158b620:
    lh	$a1,4($s3)
    slt	$a1,$s2,$a1
    xori	$a1,$a1,0x1
    beqz	$t1,.L0158b654
    movz	$s5,$zero,$a1
.L0158b634:
    ori	$s5,$s5,0x2
.L0158b638:
    beqz	$a6,.L0158b580
    slt	$t1,$s6,$t0
    li	$s4,8
    beqz	$t1,.L0158b66c
    andi	$a6,$s5,0x8
    b	.L0158b590
    li	$s4,8
.L0158b654:
    lh	$a2,6($s3)
    slt	$a2,$s8,$a2
    bnez	$a2,.L0158b638
    nop
.L0158b664:
    b	.L0158b638
    ori	$s5,$s5,0x1
.L0158b66c:
    lh	$ra,6($s3)
    slt	$a3,$s6,$ra
    bnez	$a3,.L0158b7dc
    nop
    b	.L0158b694
    li	$s4,8
.L0158b684:
    lh	$a4,6($s3)
    slt	$a4,$s6,$a4
    bnez	$a4,.L0158b598
    or	$t1,$s4,$s5
.L0158b694:
    b	.L0158b594
    ori	$s4,$s4,0x1
.L0158b69c:
    lh	$ra,6($s3)
    lh	$a5,4($s3)
    sd	$a5,1040($sp)
.L0158b6a8:
    move	$t1,$s5
.L0158b6ac:
    move	$t8,$s4
    move	$a6,$s2
    addiu	$v0,$ra,-1
    sd	$v0,1000($sp)
    move	$a7,$s2
    move	$a5,$s8
    move	$t9,$s8
    sd	$s1,1064($sp)
    move	$a1,$s1
    move	$a4,$s6
    move	$a2,$zero
    ld	$v1,1040($sp)
    sd	$s6,1056($sp)
    move	$a3,$zero
    move	$t3,$zero
    li	$at,32767
    addiu	$v1,$v1,-1
    sd	$v1,1008($sp)
.L0158b6f4:
    ld	$v1,1056($sp)
    and	$a0,$t1,$t8
    or	$ra,$t1,$t8
    sd	$t1,992($sp)
    sd	$at,1048($sp)
    beqz	$a0,.L0158b718
    move	$v0,$v1
    b	.L0158b5ac
    addiu	$s3,$s3,8
.L0158b718:
    beqz	$ra,.L0158c2c0
    move	$ra,$a1
    movz	$a1,$a6,$t1
    movz	$v1,$t9,$t1
    movz	$t9,$v0,$t1
    move	$v0,$a2
    movz	$a2,$a3,$t1
    sltiu	$at,$t3,1
    movz	$t3,$at,$t1
    movn	$v0,$a3,$t1
    move	$a3,$t8
    movz	$t8,$t1,$t1
    move	$a0,$a4
    movz	$a4,$a5,$t1
    movz	$a5,$a0,$t1
    ld	$a0,1064($sp)
    movz	$a6,$ra,$t1
    move	$ra,$a0
    movz	$a0,$a7,$t1
    movz	$a7,$ra,$t1
    movz	$t1,$a3,$t1
    sd	$v1,1056($sp)
    andi	$at,$t1,0x8
    sd	$a0,1064($sp)
    ld	$ra,1024($sp)
    beqz	$at,.L0158b99c
    or	$a3,$v0,$t1
    ld	$v1,824($sp)
    sd	$v1,1080($sp)
    li	$v1,18
    ld	$at,1048($sp)
    li	$a7,26
    subu	$v0,$t2,$a6
    move	$a0,$a7
    sltu	$at,$at,$v0
    movn	$a0,$v1,$t3
    subu	$v1,$a1,$t2
    sd	$v0,1088($sp)
    bnez	$at,.L0158b7ec
    li	$v0,52
    li	$v1,60
    li	$at,18
    movn	$v1,$v0,$t3
    ld	$v0,848($sp)
    movn	$at,$a7,$t3
    sd	$a5,984($sp)
    movn	$at,$v1,$v0
    b	.L0158b814
    sd	$at,1072($sp)
.L0158b7dc:
    beqz	$a6,.L0158ba54
    nop
.L0158b7e4:
    b	.L0158b5a8
    li	$s4,8
.L0158b7ec:
    sd	$a4,984($sp)
    li	$v0,16
    li	$at,24
    movn	$v0,$at,$t3
    ld	$at,848($sp)
    sd	$v1,1088($sp)
    movn	$a0,$v0,$at
    sd	$a0,1072($sp)
    ld	$v0,720($sp)
    sd	$v0,1080($sp)
.L0158b814:
    move	$a7,$t2
.L0158b818:
    ld	$at,1088($sp)
    ld	$v1,1072($sp)
    ld	$a0,1080($sp)
    ld	$v0,1072($sp)
    andi	$v1,$v1,0x1
    sd	$v1,968($sp)
    sll	$at,$at,0x1
    sltiu	$t1,$a0,1
    sd	$at,944($sp)
    movn	$a0,$t1,$t3
    beqz	$v1,.L0158ba0c
    sd	$a0,1080($sp)
    ld	$a0,944($sp)
    multu	$ra,$a0
    mflo	$t1
    nop
    nop
.L0158b85c:
    subu	$v1,$t1,$ra
    sd	$v1,928($sp)
    andi	$a0,$v0,0x4
    sd	$a0,976($sp)
    andi	$at,$v0,0x10
    sd	$at,952($sp)
    andi	$at,$v0,0x2
    ld	$a0,1072($sp)
    andi	$v0,$v0,0x20
    beqz	$at,.L0158ba24
    sd	$v0,960($sp)
    ld	$v1,928($sp)
    ld	$v0,976($sp)
    addu	$t1,$ra,$t1
    movn	$t1,$v1,$v0
.L0158b898:
    ld	$v0,952($sp)
    ld	$v1,856($sp)
    andi	$a0,$a0,0x8
    addu	$at,$t1,$v1
    subu	$t1,$t1,$v1
    addiu	$at,$at,-1
    beqz	$v0,.L0158ba3c
    movn	$t1,$at,$a0
    ld	$v0,816($sp)
    divu	$zero,$t1,$v0
    teq	$v0,$zero,0x7
    mflo	$at
    nop
    sd	$at,1088($sp)
.L0158b8d0:
    ld	$v1,1088($sp)
    ld	$at,960($sp)
    addiu	$t1,$v1,1
    ld	$a0,1080($sp)
    movz	$t1,$v1,$at
    ld	$v0,984($sp)
    negu	$v1,$t1
    ld	$at,968($sp)
    movz	$v1,$t1,$a0
    addu	$v0,$v0,$v1
    sd	$v1,1088($sp)
    li	$t1,8
    movn	$a7,$v0,$at
    ld	$a0,1008($sp)
    movz	$t9,$v0,$at
    slt	$at,$a7,$t2
    ld	$v1,1000($sp)
    movz	$t1,$zero,$at
    slt	$a0,$a0,$a7
    ori	$at,$t1,0x4
    slt	$v1,$v1,$t9
    movz	$at,$t1,$a0
    slt	$t1,$t9,$t0
    ori	$a0,$at,0x2
    movz	$a0,$at,$t1
    li	$at,32767
    ori	$t1,$a0,0x1
    b	.L0158b6f4
    movz	$t1,$a0,$v1
.L0158b944:
    lh	$v0,4($s3)
    sd	$v0,1040($sp)
    slt	$v0,$s1,$v0
    li	$a6,4
    xori	$v0,$v0,0x1
    move	$t3,$a7
    movz	$a6,$zero,$v0
    beqz	$t1,.L0158b970
    move	$s4,$a6
    b	.L0158b978
    ori	$s4,$a6,0x2
.L0158b970:
    ori	$v1,$a6,0x1
    movz	$s4,$v1,$a7
.L0158b978:
    andi	$a0,$s4,0x8
    bnez	$a0,.L0158b5a8
    nop
    b	.L0158b6ac
    move	$t1,$s5
.L0158b98c:
    bnez	$a7,.L0158b7e4
    li	$s4,9
    b	.L0158b5ac
    addiu	$s3,$s3,8
.L0158b99c:
    andi	$at,$t1,0x2
    li	$v1,32767
    sd	$v1,624($sp)
    subu	$v0,$t0,$a5
    beqz	$at,.L0158d03c
    sd	$v0,632($sp)
    ld	$at,632($sp)
    ld	$a0,624($sp)
    li	$v0,1
    ld	$t1,616($sp)
    li	$t9,9
    sd	$t1,1080($sp)
    move	$v1,$t9
    sltu	$a0,$a0,$at
    sd	$at,1088($sp)
    movn	$v1,$v0,$t3
    bnez	$a0,.L0158ba60
    ld	$v0,848($sp)
    li	$v0,47
    li	$v1,39
    li	$a0,1
    movn	$v0,$v1,$t3
    ld	$v1,848($sp)
    movn	$a0,$t9,$t3
    sd	$a6,984($sp)
    movn	$v0,$a0,$v1
    b	.L0158ba88
    sd	$v0,1072($sp)
.L0158ba0c:
    ld	$a0,944($sp)
    ld	$v1,768($sp)
    multu	$v1,$a0
    mflo	$t1
    b	.L0158b85c
    nop
.L0158ba24:
    ld	$v1,768($sp)
    ld	$at,976($sp)
    subu	$v0,$t1,$v1
    addu	$t1,$v1,$t1
    b	.L0158b898
    movn	$t1,$v0,$at
.L0158ba3c:
    ld	$a0,640($sp)
    divu	$zero,$t1,$a0
    teq	$a0,$zero,0x7
    mflo	$at
    b	.L0158b8d0
    sd	$at,1088($sp)
.L0158ba54:
    lh	$v0,4($s3)
    b	.L0158b6a8
    sd	$v0,1040($sp)
.L0158ba60:
    sd	$a1,984($sp)
    li	$at,3
    li	$a0,11
    movn	$at,$a0,$t3
    subu	$a0,$a4,$t0
    sd	$a0,1088($sp)
    movn	$at,$v1,$v0
    sd	$at,1072($sp)
    ld	$v1,600($sp)
    sd	$v1,1080($sp)
.L0158ba88:
    b	.L0158b818
    move	$t9,$t0
.L0158ba90:
    ld	$s8,792($sp)
    ld	$ra,1032($sp)
    ld	$a6,920($sp)
    move	$a4,$zero
    subu	$t1,$s7,$t2
    ld	$s3,1016($sp)
    lhu	$s8,10($s8)
    move	$t3,$a6
    addu	$a6,$a6,$ra
    move	$t8,$s3
    slt	$t9,$t1,$s3
    lbu	$a6,0($a6)
    addu	$ra,$s8,$ra
    andi	$t0,$s8,0x7
    ld	$t2,1032($sp)
    beqz	$t9,.L0158af90
    subu	$s3,$a6,$s3
    b	.L0158b240
    addu	$s3,$s3,$t1
.L0158badc:
    or	$s2,$s4,$s5
.L0158bae0:
    beqz	$s2,.L0158b248
    ld	$s2,1016($sp)
    ld	$s3,792($sp)
    ld	$a7,1032($sp)
    ld	$a6,920($sp)
    ld	$t9,840($sp)
    lhu	$s3,10($s3)
    addu	$a6,$a6,$a7
    lbu	$a6,0($a6)
    sra	$t2,$s3,0x3
    andi	$t1,$s3,0x7
    beqz	$t9,.L0158d1d0
    subu	$s2,$a6,$s2
    ld	$ra,1016($sp)
    ld	$t9,768($sp)
    slt	$ra,$t9,$ra
    beqz	$ra,.L0158bb30
    addu	$s2,$t9,$s2
    b	.L0158bd64
    subu	$t3,$a6,$s2
.L0158bb30:
    ld	$s7,1016($sp)
    ld	$s2,768($sp)
    ld	$ra,1032($sp)
    subu	$s2,$s2,$s7
    ld	$s7,920($sp)
    move	$t0,$zero
    move	$t8,$ra
    addiu	$s7,$s7,1
    mtc1	$s2,$f4
    xor	$at,$s7,$s3
    sltiu	$at,$at,1
    blez	$s3,.L0158ddbc
    movn	$s7,$zero,$at
    slti	$t3,$t2,3
    beqz	$t1,.L0158bb84
    addu	$ra,$s3,$ra
.L0158bb70:
    addiu	$t1,$t1,-1
    lbu	$at,0($t8)
    addiu	$t8,$t8,1
    bnez	$t1,.L0158bb70
    addu	$t0,$t0,$at
.L0158bb84:
    beqz	$t2,.L0158bcec
    slt	$t1,$s2,$t0
    bnez	$t3,.L0158eccc
    nop
    lbu	$a6,1($t8)
    lbu	$v1,2($t8)
    lbu	$a0,3($t8)
    lbu	$a1,4($t8)
    lbu	$a2,5($t8)
    lbu	$a4,7($t8)
    lbu	$a5,9($t8)
    lbu	$at,0($t8)
    addiu	$a7,$t8,8
    lbu	$v0,6($t8)
    addiu	$a3,$ra,-16
    lbu	$ra,10($t8)
    addu	$at,$t0,$at
    sd	$s0,1648($sp)
    move	$t0,$a3
    move	$s0,$v0
    nop
    nop
    nop
.L0158bbe0:
    addu	$at,$at,$a6
    lbu	$a3,3($a7)
    addu	$at,$at,$v1
    lbu	$t1,4($a7)
    addu	$at,$at,$a0
    lbu	$t2,5($a7)
    addu	$at,$at,$a1
    lbu	$t9,6($a7)
    addu	$at,$at,$a2
    lbu	$t3,7($a7)
    addu	$at,$at,$s0
    addiu	$t8,$a7,8
    lbu	$v0,0($a7)
    addu	$at,$at,$a4
    lbu	$a6,9($a7)
    addu	$at,$at,$v0
    beq	$a7,$t0,.L0158d0a4
    lbu	$v1,10($a7)
    addu	$at,$at,$a5
    lbu	$a0,11($a7)
    addu	$at,$at,$ra
    lbu	$a1,12($a7)
    addu	$at,$at,$a3
    lbu	$a2,13($a7)
    addu	$at,$at,$t1
    lbu	$s0,14($a7)
    addu	$at,$at,$t2
    lbu	$a4,15($a7)
    addu	$v0,$at,$t9
    addiu	$a7,$a7,16
    lbu	$at,0($t8)
    addu	$v0,$v0,$t3
    lbu	$a5,1($a7)
    addu	$at,$v0,$at
    bne	$t8,$t0,.L0158bbe0
    lbu	$ra,2($a7)
    move	$t2,$a2
    move	$t3,$a4
    move	$a4,$a0
    move	$t8,$a7
    move	$a7,$a1
    move	$a1,$v1
    move	$s8,$at
    move	$t9,$s0
    ld	$s0,1648($sp)
.L0158bc94:
    addu	$t0,$s8,$a6
    addu	$t0,$t0,$a1
    addu	$t0,$t0,$a4
    addu	$t0,$t0,$a7
    addu	$t0,$t0,$t2
    lbu	$t1,0($t8)
    addu	$t0,$t0,$t9
    addu	$t0,$t0,$t3
    addu	$t0,$t0,$t1
    lbu	$t1,3($t8)
    addu	$t0,$t0,$a5
    lbu	$at,4($t8)
    addu	$t0,$t0,$ra
    addu	$t0,$t0,$t1
    lbu	$t1,5($t8)
    addu	$t0,$t0,$at
    lbu	$at,6($t8)
    addu	$t0,$t0,$t1
    lbu	$t1,7($t8)
    addu	$t0,$t0,$at
    addu	$t0,$t0,$t1
    slt	$t1,$s2,$t0
.L0158bcec:
    bnez	$t1,.L0158bd18
    cvt.d.w	$f3,$f4
.L0158bcf4:
    mtc1	$t0,$f5
    cvt.d.w	$f5,$f5
    div.d	$f3,$f3,$f5
    trunc.w.d	$f3,$f3
    mfc1	$t3,$f3
    mult	$t3,$t0
    mflo	$t2
    teq	$t0,$zero,0x7
    subu	$s2,$s2,$t2
.L0158bd18:
    ld	$a6,1032($sp)
.L0158bd1c:
    addu	$a6,$s7,$a6
    lbu	$a6,0($a6)
    slt	$t8,$s2,$a6
    bnez	$t8,.L0158bd5c
    nop
.L0158bd30:
    addiu	$s7,$s7,1
    xor	$t1,$s7,$s3
    ld	$t0,1032($sp)
    sltiu	$t1,$t1,1
    movn	$s7,$zero,$t1
    addu	$t0,$s7,$t0
    subu	$s2,$s2,$a6
    lbu	$a6,0($t0)
    slt	$a7,$s2,$a6
    beqz	$a7,.L0158bd30
    nop
.L0158bd5c:
    sd	$s7,920($sp)
.L0158bd60:
    subu	$t3,$a6,$s2
.L0158bd64:
    b	.L0158b248
    sd	$t3,1016($sp)
.L0158bd6c:
    ld	$s7,792($sp)
.L0158bd70:
    ld	$ra,1032($sp)
    ld	$a6,920($sp)
    ld	$t2,728($sp)
    ld	$s3,1016($sp)
    lhu	$s7,10($s7)
    subu	$t2,$a7,$t2
    addu	$a6,$a6,$ra
    move	$a4,$zero
    lbu	$a6,0($a6)
    slt	$t9,$t2,$s3
    ld	$t0,1032($sp)
    addu	$ra,$s7,$ra
    andi	$t1,$s7,0x7
    ld	$s8,920($sp)
    beqz	$t9,.L0158bdb8
    subu	$s3,$a6,$s3
    b	.L0158c060
    addu	$s3,$s3,$t2
.L0158bdb8:
    ld	$s3,1016($sp)
    addiu	$s8,$s8,1
    subu	$s3,$t2,$s3
    xor	$t9,$s8,$s7
    mtc1	$s3,$f4
    sltiu	$t9,$t9,1
    blez	$s7,.L0158dd48
    movn	$s8,$zero,$t9
    beqz	$t1,.L0158bdf8
    nop
.L0158bde0:
    lbu	$t8,0($t0)
    addiu	$t1,$t1,-1
    addiu	$t0,$t0,1
    pref	0x0,255($t0)
    bnez	$t1,.L0158bde0
    addu	$a4,$a4,$t8
.L0158bdf8:
    sra	$t1,$s7,0x3
    beqz	$t1,.L0158bfe0
    slti	$t1,$t1,3
    bnez	$t1,.L0158ea58
    nop
    pref	0x0,256($t0)
    lbu	$at,0($t0)
    lbu	$a2,1($t0)
    lbu	$a3,9($t0)
    lbu	$t2,7($t0)
    lbu	$s2,2($t0)
    lbu	$v0,3($t0)
    lbu	$v1,4($t0)
    lbu	$a0,5($t0)
    lbu	$a1,6($t0)
    lbu	$t3,15($t0)
    addiu	$t1,$t0,16
    addiu	$t8,$t0,8
    lbu	$t9,8($t0)
    addiu	$a5,$ra,-16
    move	$t0,$t8
    sd	$s0,1648($sp)
    addu	$at,$a4,$at
    move	$a4,$a5
    sd	$s1,1656($sp)
    move	$ra,$a3
    move	$s1,$a2
.L0158be64:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158d194
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158d160
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158be64
    lbu	$ra,1($t0)
    move	$a6,$a0
    move	$a2,$t0
    move	$t0,$v1
    move	$t1,$at
    move	$a7,$a1
    move	$a1,$t9
    move	$t8,$s1
    move	$a3,$t3
    ld	$s1,1656($sp)
    move	$t3,$t2
    move	$t2,$ra
    move	$a5,$s2
    move	$a4,$v0
    sd	$a2,1456($sp)
    ld	$s0,1648($sp)
    move	$s2,$a4
    move	$t9,$t2
    move	$t2,$a3
    move	$ra,$a5
    ld	$a5,1456($sp)
.L0158bf90:
    lbu	$a2,2($a5)
    lbu	$a0,3($a5)
    addu	$a4,$t1,$t8
    lbu	$v1,4($a5)
    addu	$a4,$a4,$ra
    lbu	$v0,5($a5)
    addu	$a4,$a4,$s2
    lbu	$at,6($a5)
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$a6
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$a1
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$a2
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$t2
.L0158bfe0:
    slt	$a5,$s3,$a4
.L0158bfe4:
    bnez	$a5,.L0158c010
    cvt.d.w	$f6,$f4
.L0158bfec:
    mtc1	$a4,$f7
    cvt.d.w	$f7,$f7
    div.d	$f6,$f6,$f7
    trunc.w.d	$f6,$f6
    mfc1	$a7,$f6
    mult	$a7,$a4
    mflo	$a6
    teq	$a4,$zero,0x7
    subu	$s3,$s3,$a6
.L0158c010:
    ld	$a6,1032($sp)
.L0158c014:
    addu	$a6,$s8,$a6
    lbu	$a6,0($a6)
    slt	$t0,$s3,$a6
    bnez	$t0,.L0158c05c
    nop
    nop
    nop
.L0158c030:
    addiu	$s8,$s8,1
    xor	$t1,$s8,$s7
    ld	$t0,1032($sp)
    sltiu	$t1,$t1,1
    movn	$s8,$zero,$t1
    addu	$t0,$s8,$t0
    subu	$s3,$s3,$a6
    lbu	$a6,0($t0)
    slt	$a7,$s3,$a6
    beqz	$a7,.L0158c030
    nop
.L0158c05c:
    sd	$s8,920($sp)
.L0158c060:
    subu	$t3,$a6,$s3
    b	.L0158b248
    sd	$t3,1016($sp)
.L0158c06c:
    ld	$a6,608($sp)
    ld	$s3,768($sp)
    sd	$t1,1640($sp)
    ld	$ra,1024($sp)
    move	$t0,$s2
    ld	$s2,1640($sp)
    ld	$t8,904($sp)
    ld	$at,792($sp)
    ld	$t9,840($sp)
    lw	$at,12($at)
    sltiu	$t9,$t9,1
    sd	$at,592($sp)
    bnez	$t8,.L0158d678
    movn	$s3,$ra,$t9
.L0158c0a4:
    b	.L0158c0d0
    ld	$a1,920($sp)
.L0158c0ac:
    beqz	$ra,.L0158c174
.L0158c0b0:
    addu	$v0,$s7,$s8
    subu	$s8,$s8,$s7
    addu	$at,$t0,$t1
    subu	$t0,$t0,$t1
    movz	$s8,$v0,$t2
    movz	$t0,$at,$t3
.L0158c0c8:
    blez	$s3,.L0158bae0
    ld	$a1,920($sp)
.L0158c0d0:
    ld	$a0,1016($sp)
    andi	$a1,$a1,0x1
    move	$s7,$s3
    ld	$a2,904($sp)
    slt	$v1,$a0,$s3
    beqz	$a1,.L0158d28c
    movn	$s7,$a0,$v1
    bnez	$a2,.L0158d2e0
.L0158c0f0:
    ld	$a3,1016($sp)
    ld	$t3,808($sp)
    ld	$t2,800($sp)
    subu	$a3,$a3,$s7
    subu	$s3,$s3,$s7
    slti	$t3,$t3,1
    sd	$a3,1016($sp)
    beqz	$a3,.L0158c1a0
    slti	$t2,$t2,1
.L0158c114:
    move	$t1,$zero
    blez	$s3,.L0158bae0
    ld	$ra,832($sp)
    mult	$s7,$ra
    ld	$t8,888($sp)
    mtc1	$t8,$f5
    mflo	$t9
    addu	$a6,$a6,$t9
    ld	$ra,840($sp)
    cvt.d.w	$f9,$f5
    bltz	$a6,.L0158c0ac
    mtc1	$a6,$f4
    cvt.d.w	$f8,$f4
    div.d	$f8,$f8,$f9
    trunc.w.d	$f8,$f8
    mfc1	$t1,$f8
    ld	$v1,888($sp)
    addiu	$t1,$t1,1
    mult	$v1,$t1
    ld	$v0,840($sp)
    teq	$v1,$zero,0x7
    mflo	$at
    bnez	$v0,.L0158c0b0
    subu	$a6,$a6,$at
.L0158c174:
    ld	$t2,808($sp)
    ld	$t3,800($sp)
    addu	$t8,$s8,$t1
    subu	$s8,$s8,$t1
    slti	$t2,$t2,1
    slti	$t3,$t3,1
    movz	$s8,$t8,$t3
    addu	$t3,$s7,$t0
    subu	$t0,$t0,$s7
    b	.L0158c0c8
    movz	$t0,$t3,$t2
.L0158c1a0:
    ld	$ra,792($sp)
    ld	$t8,920($sp)
    lhu	$ra,10($ra)
    addiu	$at,$t8,1
    xor	$ra,$at,$ra
    ld	$t9,592($sp)
    move	$t8,$at
    sltiu	$ra,$ra,1
    movn	$t8,$zero,$ra
    sd	$t8,920($sp)
    addu	$t8,$t8,$t9
    lbu	$t8,0($t8)
    b	.L0158c114
    sd	$t8,1016($sp)
.L0158c1d8:
    ld	$t3,704($sp)
    ld	$t2,1576($sp)
    sd	$s8,728($sp)
    move	$a7,$t3
    nop
    nop
.L0158c1f0:
    addiu	$t2,$t2,-1
    beqz	$t2,.L0158bd6c
    addiu	$s3,$s3,8
    lh	$v0,2($s3)
    slt	$v0,$t3,$v0
    bnez	$v0,.L0158bd70
    ld	$s7,792($sp)
.L0158c20c:
    lh	$v1,0($s3)
    lh	$t0,4($s3)
    lh	$t8,2($s3)
    slt	$v1,$s2,$v1
    slt	$t0,$s2,$t0
    bnez	$v1,.L0158c1f0
    slt	$ra,$t8,$s8
    beqz	$t0,.L0158c1f0
    ld	$a2,712($sp)
    move	$a1,$t8
    movn	$a1,$s8,$ra
    dsll32	$a1,$a1,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,74($sp)
    lh	$t9,6($s3)
    slt	$at,$t9,$t3
    movz	$t9,$t3,$at
    dsll32	$t9,$t9,0x10
    dsra32	$t9,$t9,0x10
    sh	$t9,78($sp)
    beq	$a1,$t9,.L0158c1f0
    subu	$s7,$t9,$a1
    sd	$t3,704($sp)
    ld	$t3,792($sp)
    beqz	$a2,.L0158d87c
    sd	$t2,1576($sp)
    ld	$a3,704($sp)
    beq	$a3,$t9,.L0158c7d0
    nop
    ld	$a7,1032($sp)
    ld	$a6,696($sp)
    ld	$t8,704($sp)
    lhu	$t3,10($t3)
    addu	$a5,$a6,$a7
    addiu	$a6,$a6,1
    subu	$t8,$t8,$t9
    addu	$a7,$t3,$a7
    lbu	$a5,0($a5)
    slt	$a4,$t8,$t1
    andi	$ra,$t3,0x7
    subu	$t0,$t8,$t1
    beqz	$a4,.L0158c4cc
    subu	$t2,$a5,$t1
    b	.L0158c7c8
    addu	$ra,$t8,$t2
.L0158c2c0:
    ld	$v0,1064($sp)
    move	$at,$v0
    movn	$v0,$a7,$t3
    move	$ra,$a3
    movn	$a3,$a2,$t3
    ld	$t2,1056($sp)
    movn	$a2,$ra,$t3
    move	$t8,$t2
    movn	$t2,$t9,$t3
    ld	$ra,840($sp)
    movn	$t9,$t8,$t3
    sd	$v0,1064($sp)
    movn	$a7,$at,$t3
    subu	$a5,$t9,$s8
    sd	$t2,1056($sp)
    subu	$t0,$t9,$t2
    subu	$t2,$t2,$t9
    ld	$at,840($sp)
    beqz	$ra,.L0158d7c4
    slti	$t1,$t2,1
    movz	$t0,$t2,$t1
    move	$a1,$t0
.L0158c318:
    sltu	$v1,$zero,$a2
    ld	$ra,792($sp)
    addu	$a1,$a1,$v1
    slti	$a6,$a5,1
    ld	$t0,920($sp)
    subu	$t1,$s8,$t9
    beqz	$a1,.L0158cc84
    ld	$t2,1016($sp)
    ld	$a0,920($sp)
    ld	$a2,792($sp)
    sd	$a0,648($sp)
    movz	$t1,$a5,$a6
    subu	$a0,$a7,$s2
    lw	$a2,12($a2)
    slti	$v1,$a0,1
    beqz	$a3,.L0158d8cc
    sd	$a2,592($sp)
    ld	$a3,1016($sp)
    ld	$t2,1032($sp)
    lhu	$ra,10($ra)
    slt	$a4,$t1,$a3
    sd	$a4,472($sp)
    subu	$a4,$s2,$a7
    addu	$t0,$t0,$t2
    movz	$a4,$a0,$v1
    lbu	$t0,0($t0)
    ld	$a2,672($sp)
    andi	$t2,$ra,0x7
    subu	$v0,$t1,$a4
    sd	$v0,480($sp)
    beqz	$at,.L0158d96c
    subu	$a3,$t0,$a3
    mult	$a4,$a2
    ld	$a0,480($sp)
    ld	$v1,832($sp)
    mflo	$a5
    nop
    nop
    mult	$v1,$a0
    addu	$a6,$t1,$a3
    ld	$a3,1032($sp)
    ld	$v0,1032($sp)
    mflo	$at
    addu	$a5,$a5,$at
    ld	$at,472($sp)
    ld	$a2,608($sp)
    ld	$a4,1016($sp)
    addu	$v0,$ra,$v0
    sd	$v0,448($sp)
    beqz	$at,.L0158c8d8
    addu	$a2,$a2,$a5
    b	.L0158cb74
    nop
.L0158c3ec:
    ld	$ra,1560($sp)
    ld	$a5,568($sp)
    ld	$t2,584($sp)
    ld	$s7,560($sp)
.L0158c3fc:
    addiu	$ra,$ra,-1
    beqz	$ra,.L0158ba90
    addiu	$t1,$t1,8
    lh	$a3,2($t1)
    move	$a1,$s7
    bne	$a3,$a5,.L0158ba90
    move	$a7,$t2
    lh	$a4,4($t1)
.L0158c41c:
    lh	$s3,0($t1)
    slt	$a4,$t2,$a4
    slt	$t0,$s3,$s7
    move	$t3,$s3
    beqz	$a4,.L0158c3fc
    slt	$s8,$s3,$t2
    beqz	$t0,.L0158ba90
    movn	$t3,$t2,$s8
    dsll32	$t3,$t3,0x10
    dsra32	$t3,$t3,0x10
    sh	$t3,80($sp)
    lh	$t8,4($t1)
    slt	$t9,$t8,$s7
    movz	$t8,$s7,$t9
    dsll32	$t8,$t8,0x10
    dsra32	$t8,$t8,0x10
    ld	$t9,688($sp)
    sh	$t8,84($sp)
    beq	$t3,$t8,.L0158c3fc
    subu	$s3,$t8,$t3
    sd	$s7,560($sp)
    sd	$t2,584($sp)
    sd	$ra,1560($sp)
    sd	$t2,752($sp)
    move	$a4,$zero
    beqz	$t9,.L0158dcdc
    sd	$t1,1568($sp)
    beq	$s7,$t8,.L0158cf98
    ld	$t0,792($sp)
    ld	$a7,1032($sp)
    ld	$a5,680($sp)
    subu	$a1,$s7,$t8
    subu	$s8,$a1,$s2
    lhu	$t0,10($t0)
    addu	$t1,$a5,$a7
    addiu	$a5,$a5,1
    slt	$at,$a1,$s2
    lbu	$t1,0($t1)
    addu	$a7,$t0,$a7
    andi	$t2,$t0,0x7
    beqz	$at,.L0158ccc0
    subu	$ra,$t1,$s2
    b	.L0158cf90
    addu	$s8,$a1,$ra
.L0158c4cc:
    mtc1	$t0,$f4
    xor	$t1,$a6,$t3
    move	$t8,$a6
    sltiu	$t1,$t1,1
    move	$a4,$zero
    movn	$t8,$zero,$t1
    ld	$t1,1032($sp)
    cvt.d.w	$f10,$f4
    blez	$t3,.L0158e89c
    move	$t2,$t8
    sra	$a5,$t3,0x3
    beqz	$ra,.L0158c518
    slti	$a6,$a5,3
.L0158c500:
    lbu	$at,0($t1)
    addiu	$ra,$ra,-1
    addiu	$t1,$t1,1
    pref	0x0,255($t1)
    bnez	$ra,.L0158c500
    addu	$a4,$a4,$at
.L0158c518:
    beqz	$a5,.L0158c74c
    slt	$v0,$t0,$a4
    bnez	$a6,.L0158e980
    nop
    sd	$s0,1648($sp)
    lbu	$ra,9($t1)
    sd	$t9,1520($sp)
    lbu	$t9,8($t1)
    sd	$t3,496($sp)
    lbu	$t3,15($t1)
    sd	$a1,1448($sp)
    lbu	$a1,6($t1)
    lbu	$a0,5($t1)
    lbu	$v1,4($t1)
    lbu	$at,0($t1)
    lbu	$v0,3($t1)
    sd	$s2,1664($sp)
    lbu	$s2,2($t1)
    sd	$s1,1656($sp)
    lbu	$s1,1($t1)
    sd	$t2,1440($sp)
    sd	$t0,1504($sp)
    addiu	$t0,$t1,8
    lbu	$t2,7($t1)
    addiu	$a2,$t1,16
    pref	0x0,256($t1)
    addiu	$a3,$a7,-16
    move	$t1,$a2
    sd	$t8,288($sp)
    addu	$at,$a4,$at
    move	$a4,$a3
.L0158c594:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158e414
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158e39c
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158c594
    lbu	$ra,1($t0)
    sd	$v0,328($sp)
    move	$t8,$a0
    sd	$t8,344($sp)
    ld	$t8,288($sp)
    move	$a7,$t3
    ld	$t3,496($sp)
    move	$a2,$t2
    ld	$t2,1440($sp)
    move	$a6,$t0
    ld	$t0,1504($sp)
    move	$a5,$t9
    ld	$t9,1520($sp)
    move	$s0,$ra
    sd	$s0,312($sp)
    ld	$s0,1648($sp)
    move	$ra,$s1
    ld	$s1,1656($sp)
    sd	$s2,320($sp)
    ld	$s2,1664($sp)
    move	$a4,$v1
    sd	$a4,336($sp)
    sd	$a5,1320($sp)
    move	$a3,$a1
    sd	$a3,1304($sp)
    sd	$a2,1312($sp)
    ld	$a2,1304($sp)
    ld	$a3,1312($sp)
    move	$t1,$at
    ld	$a5,1320($sp)
.L0158c6e4:
    ld	$at,320($sp)
    ld	$v0,328($sp)
    addu	$a4,$t1,$ra
    addu	$a4,$a4,$at
    lbu	$at,2($a6)
    addu	$a4,$a4,$v0
    ld	$v0,336($sp)
    addu	$a4,$a4,$v0
    ld	$v0,344($sp)
    addu	$a4,$a4,$v0
    lbu	$a0,3($a6)
    addu	$a4,$a4,$a2
    ld	$v0,312($sp)
    addu	$a4,$a4,$a3
    lbu	$v1,4($a6)
    addu	$a4,$a4,$a5
    addu	$a4,$a4,$v0
    lbu	$v0,5($a6)
    addu	$a4,$a4,$at
    lbu	$at,6($a6)
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$a7
.L0158c748:
    slt	$v0,$t0,$a4
.L0158c74c:
    bnez	$v0,.L0158c774
    mtc1	$a4,$f11
.L0158c754:
    cvt.d.w	$f11,$f11
    div.d	$f10,$f10,$f11
    trunc.w.d	$f10,$f10
    mfc1	$a0,$f10
    mult	$a0,$a4
    mflo	$v1
    teq	$a4,$zero,0x7
    subu	$t0,$t0,$v1
.L0158c774:
    ld	$ra,1032($sp)
.L0158c778:
    addu	$ra,$t8,$ra
    lbu	$ra,0($ra)
    slt	$a2,$t0,$ra
    bnez	$a2,.L0158c7bc
    move	$t1,$ra
    move	$t1,$ra
.L0158c790:
    addiu	$t2,$t2,1
    xor	$v1,$t2,$t3
    ld	$v0,1032($sp)
    sltiu	$v1,$v1,1
    movn	$t2,$zero,$v1
    addu	$v0,$t2,$v0
    subu	$t0,$t0,$t1
    lbu	$t1,0($v0)
    slt	$at,$t0,$t1
    beqz	$at,.L0158c790
    nop
.L0158c7bc:
    sd	$t2,696($sp)
    move	$ra,$t0
    move	$a5,$t1
.L0158c7c8:
    subu	$t1,$a5,$ra
    move	$a7,$t9
.L0158c7d0:
    b	.L0158c7e8
    ld	$a2,712($sp)
    nop
    nop
.L0158c7e0:
    blez	$s7,.L0158c1d8
    ld	$a2,712($sp)
.L0158c7e8:
    ld	$a3,696($sp)
    move	$a6,$s7
    ld	$a4,904($sp)
    slt	$a1,$t1,$s7
    beqz	$a2,.L0158c860
    movn	$a6,$t1,$a1
    sh	$a7,78($sp)
    subu	$a7,$a7,$a6
    sh	$a7,74($sp)
.L0158c80c:
    andi	$a3,$a3,0x1
    beqz	$a3,.L0158d250
    nop
    bnez	$a4,.L0158d35c
    nop
.L0158c820:
    subu	$t1,$t1,$a6
    bnez	$t1,.L0158c7e0
    subu	$s7,$s7,$a6
    ld	$t3,792($sp)
    ld	$t1,696($sp)
    lhu	$t3,10($t3)
    addiu	$t8,$t1,1
    xor	$t3,$t8,$t3
    ld	$t2,1032($sp)
    move	$t1,$t8
    sltiu	$t3,$t3,1
    movn	$t1,$zero,$t3
    sd	$t1,696($sp)
    addu	$t1,$t1,$t2
    b	.L0158c7e0
    lbu	$t1,0($t1)
.L0158c860:
    ld	$t8,728($sp)
    sh	$t8,74($sp)
    addu	$t8,$a6,$t8
    sd	$t8,728($sp)
    b	.L0158c80c
    sh	$t8,78($sp)
.L0158c878:
    lh	$t9,2($t9)
    slt	$t9,$s8,$t9
    move	$t0,$s0
    ld	$a6,912($sp)
    bnez	$t9,.L0158ba90
    addiu	$s3,$s8,1
    sd	$t2,752($sp)
    sh	$s8,82($sp)
    sh	$s3,86($sp)
    lh	$ra,2($a6)
    b	.L0158b444
    sd	$ra,568($sp)
.L0158c8a8:
    sh	$s2,72($sp)
    ld	$at,912($sp)
    addiu	$ra,$s2,1
    sh	$ra,76($sp)
    lh	$at,2($at)
    slt	$at,$a7,$at
    ld	$a6,912($sp)
    move	$t0,$s0
    bnez	$at,.L0158bd6c
    sd	$a7,704($sp)
    b	.L0158b368
    ld	$t3,704($sp)
.L0158c8d8:
    ld	$a5,920($sp)
    addiu	$a5,$a5,1
    subu	$a4,$t1,$a4
    xor	$a6,$a5,$ra
    mtc1	$a4,$f4
    sltiu	$a6,$a6,1
    movn	$a5,$zero,$a6
    sd	$a5,352($sp)
    move	$t0,$zero
    addu	$a3,$a5,$a3
    sd	$a3,304($sp)
    move	$t1,$ra
    cvt.d.w	$f12,$f4
    blez	$ra,.L0158e6e4
    lbu	$a3,0($a3)
    beqz	$t2,.L0158c930
    ld	$a6,1032($sp)
.L0158c91c:
    addiu	$t2,$t2,-1
    lbu	$t3,0($a6)
    addiu	$a6,$a6,1
    bnez	$t2,.L0158c91c
    addu	$t0,$t0,$t3
.L0158c930:
    sra	$t2,$t1,0x3
    ld	$t3,448($sp)
    beqz	$t2,.L0158cb00
    slti	$t2,$t2,3
    bnez	$t2,.L0158ec14
    nop
    sd	$t9,1624($sp)
    sd	$a3,408($sp)
    sd	$ra,1536($sp)
    lbu	$ra,10($a6)
    sd	$a5,1528($sp)
    lbu	$a5,9($a6)
    sd	$a4,1552($sp)
    lbu	$a4,7($a6)
    sd	$s0,1648($sp)
    lbu	$s0,6($a6)
    sd	$a2,1416($sp)
    lbu	$a2,5($a6)
    sd	$a1,1512($sp)
    lbu	$a1,4($a6)
    lbu	$a0,3($a6)
    sd	$a7,1632($sp)
    lbu	$at,0($a6)
    addiu	$a7,$a6,8
    lbu	$v1,2($a6)
    lbu	$a6,1($a6)
    addu	$at,$t0,$at
    addiu	$t0,$t3,-16
.L0158c9a0:
    addu	$at,$at,$a6
    lbu	$a3,3($a7)
    addu	$at,$at,$v1
    lbu	$t1,4($a7)
    addu	$at,$at,$a0
    lbu	$t2,5($a7)
    addu	$at,$at,$a1
    lbu	$t9,6($a7)
    addu	$at,$at,$a2
    lbu	$t3,7($a7)
    addu	$at,$at,$s0
    addiu	$t8,$a7,8
    lbu	$v0,0($a7)
    addu	$at,$at,$a4
    lbu	$a6,9($a7)
    addu	$at,$at,$v0
    beq	$a7,$t0,.L0158d904
    lbu	$v1,10($a7)
    addu	$at,$at,$a5
    lbu	$a0,11($a7)
    addu	$at,$at,$ra
    lbu	$a1,12($a7)
    addu	$at,$at,$a3
    lbu	$a2,13($a7)
    addu	$at,$at,$t1
    lbu	$s0,14($a7)
    addu	$at,$at,$t2
    lbu	$a4,15($a7)
    addu	$v0,$at,$t9
    addiu	$a7,$a7,16
    lbu	$at,0($t8)
    addu	$v0,$v0,$t3
    lbu	$a5,1($a7)
    addu	$at,$v0,$at
    bne	$t8,$t0,.L0158c9a0
    lbu	$ra,2($a7)
    ld	$a3,408($sp)
    sd	$at,360($sp)
    move	$t3,$a0
    move	$a0,$a6
    sd	$a0,392($sp)
    move	$t8,$a1
    move	$a1,$v1
    sd	$a1,1368($sp)
    ld	$a1,1512($sp)
    sd	$a5,400($sp)
    ld	$a5,1528($sp)
    move	$t2,$a2
    move	$a2,$ra
    ld	$ra,1536($sp)
    move	$v0,$a4
    ld	$a4,1552($sp)
    ld	$t9,1624($sp)
    sd	$a7,376($sp)
    ld	$a7,1632($sp)
    sd	$s0,384($sp)
    ld	$s0,1648($sp)
    sd	$v0,368($sp)
    move	$a6,$a2
    ld	$a2,1416($sp)
    ld	$t1,1368($sp)
.L0158ca94:
    ld	$at,392($sp)
    ld	$t0,360($sp)
    addu	$t0,$t0,$at
    addu	$t0,$t0,$t1
    addu	$t0,$t0,$t3
    ld	$at,384($sp)
    addu	$t0,$t0,$t8
    addu	$t0,$t0,$t2
    addu	$t0,$t0,$at
    ld	$at,376($sp)
    ld	$v1,368($sp)
    lbu	$v0,0($at)
    addu	$t0,$t0,$v1
    addu	$t0,$t0,$v0
    ld	$v0,400($sp)
    lbu	$v1,3($at)
    addu	$t0,$t0,$v0
    lbu	$v0,4($at)
    addu	$t0,$t0,$a6
    addu	$t0,$t0,$v1
    lbu	$v1,5($at)
    addu	$t0,$t0,$v0
    lbu	$v0,6($at)
    lbu	$at,7($at)
    addu	$t0,$t0,$v1
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$at
.L0158cb00:
    slt	$v0,$a4,$t0
    bnez	$v0,.L0158cb2c
    mtc1	$t0,$f13
.L0158cb0c:
    cvt.d.w	$f13,$f13
    div.d	$f12,$f12,$f13
    trunc.w.d	$f12,$f12
    mfc1	$a0,$f12
    mult	$a0,$t0
    mflo	$v1
    teq	$t0,$zero,0x7
    subu	$a4,$a4,$v1
.L0158cb2c:
    slt	$a6,$a4,$a3
.L0158cb30:
    bnez	$a6,.L0158cb6c
    move	$t0,$a3
    move	$t0,$a3
    nop
.L0158cb40:
    addiu	$a5,$a5,1
    xor	$t3,$a5,$ra
    ld	$t2,1032($sp)
    sltiu	$t3,$t3,1
    movn	$a5,$zero,$t3
    addu	$t2,$a5,$t2
    subu	$a4,$a4,$t0
    lbu	$t0,0($t2)
    slt	$t1,$a4,$t0
    beqz	$t1,.L0158cb40
    nop
.L0158cb6c:
    sd	$a5,648($sp)
    move	$a6,$a4
.L0158cb74:
    subu	$t2,$t0,$a6
.L0158cb78:
    ld	$ra,904($sp)
    move	$t8,$a7
    move	$t3,$t9
    move	$t1,$a2
    bnez	$ra,.L0158d8d4
    move	$a6,$a1
.L0158cb90:
    b	.L0158cbc0
    ld	$a1,648($sp)
.L0158cb98:
    beqz	$at,.L0158cc5c
    ld	$at,808($sp)
.L0158cba0:
    addu	$v1,$t0,$t3
    subu	$t3,$t3,$t0
    addu	$v0,$ra,$t8
    subu	$t8,$t8,$ra
    movz	$t3,$v1,$a5
    movz	$t8,$v0,$a7
.L0158cbb8:
    blez	$a6,.L0158cc84
    ld	$a1,648($sp)
.L0158cbc0:
    andi	$a1,$a1,0x1
    move	$t0,$a6
    ld	$a2,904($sp)
    slt	$a0,$t2,$a6
    beqz	$a1,.L0158d6ac
    movn	$t0,$t2,$a0
    bnez	$a2,.L0158d724
.L0158cbdc:
    ld	$a7,808($sp)
    ld	$a5,800($sp)
    subu	$t2,$t2,$t0
    subu	$a6,$a6,$t0
    slti	$a7,$a7,1
    beqz	$t2,.L0158cc8c
    slti	$a5,$a5,1
.L0158cbf8:
    blez	$a6,.L0158cc84
    ld	$at,832($sp)
    ld	$t9,888($sp)
    mult	$t0,$at
    mtc1	$t9,$f4
    mflo	$ra
    addu	$t1,$t1,$ra
    ld	$at,840($sp)
    cvt.d.w	$f15,$f4
    move	$ra,$zero
    bltz	$t1,.L0158cb98
    mtc1	$t1,$f5
    cvt.d.w	$f14,$f5
    div.d	$f14,$f14,$f15
    trunc.w.d	$f14,$f14
    mfc1	$ra,$f14
    ld	$a0,888($sp)
    addiu	$ra,$ra,1
    mult	$a0,$ra
    ld	$v1,840($sp)
    teq	$a0,$zero,0x7
    mflo	$v0
    bnez	$v1,.L0158cba0
    subu	$t1,$t1,$v0
    ld	$at,808($sp)
.L0158cc5c:
    ld	$v0,800($sp)
    addu	$v1,$ra,$t3
    subu	$t3,$t3,$ra
    slti	$at,$at,1
    slti	$v0,$v0,1
    movz	$t3,$v1,$v0
    addu	$v0,$t0,$t8
    subu	$t8,$t8,$t0
    b	.L0158cbb8
    movz	$t8,$v0,$at
.L0158cc84:
    b	.L0158b5ac
    addiu	$s3,$s3,8
.L0158cc8c:
    ld	$ra,792($sp)
    ld	$t2,648($sp)
    lhu	$ra,10($ra)
    addiu	$at,$t2,1
    xor	$ra,$at,$ra
    ld	$t9,592($sp)
    move	$t2,$at
    sltiu	$ra,$ra,1
    movn	$t2,$zero,$ra
    sd	$t2,648($sp)
    addu	$t2,$t2,$t9
    b	.L0158cbf8
    lbu	$t2,0($t2)
.L0158ccc0:
    mtc1	$s8,$f4
    xor	$at,$a5,$t0
    move	$s2,$a5
    sltiu	$at,$at,1
    movn	$s2,$zero,$at
    ld	$t1,1032($sp)
    cvt.d.w	$f16,$f4
    blez	$t0,.L0158e8ac
    move	$s7,$s2
    sra	$ra,$t0,0x3
    beqz	$t2,.L0158cd08
    slti	$a5,$ra,3
.L0158ccf0:
    lbu	$v0,0($t1)
    addiu	$t2,$t2,-1
    addiu	$t1,$t1,1
    pref	0x0,255($t1)
    bnez	$t2,.L0158ccf0
    addu	$a4,$a4,$v0
.L0158cd08:
    beqz	$ra,.L0158cf18
    slt	$v1,$s8,$a4
    bnez	$a5,.L0158eaa8
    nop
    sd	$s0,1648($sp)
    lbu	$ra,9($t1)
    lbu	$t9,8($t1)
    sd	$t3,1432($sp)
    lbu	$t3,15($t1)
    lbu	$a1,6($t1)
    lbu	$a0,5($t1)
    lbu	$at,0($t1)
    lbu	$v1,4($t1)
    lbu	$v0,3($t1)
    sd	$s2,296($sp)
    lbu	$s2,2($t1)
    sd	$s1,1656($sp)
    lbu	$s1,1($t1)
    sd	$t0,520($sp)
    addiu	$t0,$t1,8
    lbu	$t2,7($t1)
    addiu	$a2,$t1,16
    pref	0x0,256($t1)
    addiu	$a3,$a7,-16
    move	$t1,$a2
    sd	$t8,1496($sp)
    addu	$at,$a4,$at
    move	$a4,$a3
.L0158cd78:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158e598
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158e540
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158cd78
    lbu	$ra,1($t0)
    move	$a2,$s1
    ld	$s1,1656($sp)
    ld	$s0,1648($sp)
    move	$a7,$a1
    ld	$t8,1496($sp)
    move	$a1,$v1
    move	$a4,$s2
    ld	$s2,296($sp)
    move	$v1,$at
    move	$t1,$t0
    sd	$v1,232($sp)
    move	$t0,$t3
    move	$a6,$t2
    sd	$a2,240($sp)
    move	$t2,$a0
    move	$a3,$ra
    move	$ra,$t2
    move	$t2,$t0
    ld	$t0,520($sp)
    sd	$a4,1216($sp)
    move	$a5,$v0
    sd	$a5,1224($sp)
    sd	$a3,1208($sp)
    ld	$a3,1224($sp)
    ld	$a2,1216($sp)
    ld	$a5,1208($sp)
.L0158cebc:
    ld	$v0,240($sp)
    ld	$a4,232($sp)
    lbu	$at,2($t1)
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$a2
    addu	$a4,$a4,$a3
    addu	$a4,$a4,$a1
    addu	$a4,$a4,$ra
    addu	$a4,$a4,$a7
    lbu	$a0,3($t1)
    addu	$a4,$a4,$a6
    lbu	$v1,4($t1)
    addu	$a4,$a4,$t9
    lbu	$v0,5($t1)
    addu	$a4,$a4,$a5
    addu	$a4,$a4,$at
    lbu	$at,6($t1)
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$t2
.L0158cf14:
    slt	$v1,$s8,$a4
.L0158cf18:
    bnez	$v1,.L0158cf40
    mtc1	$a4,$f17
.L0158cf20:
    cvt.d.w	$f17,$f17
    div.d	$f16,$f16,$f17
    trunc.w.d	$f16,$f16
    mfc1	$a1,$f16
    mult	$a1,$a4
    mflo	$a0
    teq	$a4,$zero,0x7
    subu	$s8,$s8,$a0
.L0158cf40:
    ld	$t2,1032($sp)
.L0158cf44:
    addu	$t2,$s2,$t2
    lbu	$t2,0($t2)
    slt	$a2,$s8,$t2
    bnez	$a2,.L0158cf8c
    move	$t1,$t2
    move	$t1,$t2
    nop
.L0158cf60:
    addiu	$s7,$s7,1
    xor	$at,$s7,$t0
    ld	$ra,1032($sp)
    sltiu	$at,$at,1
    movn	$s7,$zero,$at
    addu	$ra,$s7,$ra
    subu	$s8,$s8,$t1
    lbu	$t1,0($ra)
    slt	$t9,$s8,$t1
    beqz	$t9,.L0158cf60
    nop
.L0158cf8c:
    sd	$s7,680($sp)
.L0158cf90:
    subu	$s2,$t1,$s8
    move	$s7,$t8
.L0158cf98:
    b	.L0158cfac
    ld	$a0,688($sp)
.L0158cfa0:
    blez	$s3,.L0158c3ec
    ld	$t1,1568($sp)
    ld	$a0,688($sp)
.L0158cfac:
    ld	$a1,680($sp)
    move	$s8,$s2
    ld	$a2,904($sp)
    slt	$v1,$s3,$s2
    beqz	$a0,.L0158d024
    movn	$s8,$s3,$v1
    sh	$s7,84($sp)
    subu	$s7,$s7,$s8
    sh	$s7,80($sp)
.L0158cfd0:
    andi	$a1,$a1,0x1
    beqz	$a1,.L0158d398
    nop
    bnez	$a2,.L0158d3c0
    ld	$a2,416($sp)
    subu	$s2,$s2,$s8
.L0158cfe8:
    bnez	$s2,.L0158cfa0
    subu	$s3,$s3,$s8
    ld	$t9,792($sp)
    ld	$s2,680($sp)
    lhu	$t9,10($t9)
    addiu	$ra,$s2,1
    xor	$t9,$ra,$t9
    ld	$t8,1032($sp)
    move	$s2,$ra
    sltiu	$t9,$t9,1
    movn	$s2,$zero,$t9
    sd	$s2,680($sp)
    addu	$s2,$s2,$t8
    b	.L0158cfa0
    lbu	$s2,0($s2)
.L0158d024:
    ld	$ra,752($sp)
    sh	$ra,80($sp)
    addu	$ra,$s8,$ra
    sd	$ra,752($sp)
    b	.L0158cfd0
    sh	$ra,84($sp)
.L0158d03c:
    andi	$at,$t1,0x4
    ld	$v0,1008($sp)
    li	$v1,32767
    sd	$v1,440($sp)
    subu	$v0,$a6,$v0
    beqz	$at,.L0158dd58
    sd	$v0,432($sp)
    ld	$at,432($sp)
    ld	$a0,440($sp)
    ld	$t1,824($sp)
    sltu	$a0,$a0,$at
    li	$v1,52
    li	$a7,18
    sd	$t1,1080($sp)
    move	$v0,$a7
    bnez	$a0,.L0158d210
    sd	$at,1088($sp)
    li	$a0,60
    li	$at,26
    movn	$a0,$v1,$t3
    ld	$v1,848($sp)
    movn	$v0,$at,$t3
    sd	$a5,984($sp)
    movn	$v0,$a0,$v1
    b	.L0158d248
    sd	$v0,1072($sp)
.L0158d0a4:
    move	$a7,$t1
    move	$a4,$a3
    move	$a1,$ra
    move	$ra,$v1
    move	$s8,$at
    sd	$a1,1424($sp)
    ld	$s0,1648($sp)
    move	$a2,$a5
    move	$a5,$a6
    move	$a6,$a2
    b	.L0158bc94
    ld	$a1,1424($sp)
.L0158d0d4:
    move	$s1,$a6
    move	$a6,$at
    move	$t0,$s0
    ld	$s0,1648($sp)
    move	$a5,$ra
    move	$t2,$t3
    move	$t3,$a3
    move	$a3,$s1
    ld	$s1,1656($sp)
    move	$a4,$t9
    move	$t9,$t8
    sd	$a4,1488($sp)
    move	$v0,$a2
    move	$t8,$t2
    ld	$t2,1544($sp)
    move	$ra,$v0
    b	.L0158b17c
    ld	$a1,1488($sp)
.L0158d11c:
    move	$t0,$a0
    move	$t8,$a6
    move	$a6,$at
    move	$t1,$a5
    move	$a5,$t9
    move	$t9,$a7
    move	$s2,$a1
    move	$a1,$s1
    ld	$s1,1656($sp)
    move	$t3,$s0
    move	$a2,$a3
    ld	$s0,1648($sp)
    move	$v1,$t2
    move	$a7,$a2
    ld	$t2,1544($sp)
    b	.L0158b17c
    move	$a3,$v1
.L0158d160:
    move	$t0,$a0
    move	$t1,$at
    move	$s2,$a1
    move	$a1,$a7
    move	$a7,$a3
    move	$t8,$t9
    move	$a4,$s1
    ld	$s1,1656($sp)
    move	$t3,$a6
    move	$a6,$s0
    ld	$s0,1648($sp)
    b	.L0158bf90
    move	$t9,$a4
.L0158d194:
    move	$t2,$a6
    move	$a6,$a3
    move	$a5,$t1
    move	$t1,$at
    ld	$s1,1656($sp)
    move	$t0,$s0
    move	$a0,$ra
    move	$v0,$t8
    sd	$v0,1464($sp)
    ld	$s0,1648($sp)
    move	$v1,$a2
    move	$t8,$a0
    move	$ra,$v1
    b	.L0158bf90
    ld	$a1,1464($sp)
.L0158d1d0:
    ld	$ra,1032($sp)
    ld	$a1,1024($sp)
    move	$a4,$zero
    addu	$ra,$s3,$ra
    ld	$a2,1016($sp)
    move	$t0,$t1
    ld	$t1,920($sp)
    addu	$s2,$a1,$s2
    subu	$s8,$a1,$a2
    slt	$a1,$a1,$a2
    addiu	$t1,$t1,1
    mtc1	$s8,$f4
    beqz	$a1,.L0158d3e4
    xor	$t2,$t1,$s3
    b	.L0158bd64
    subu	$t3,$a6,$s2
.L0158d210:
    sd	$a4,984($sp)
    ld	$v0,1008($sp)
    li	$at,16
    li	$a0,24
    li	$v1,26
    movn	$at,$a0,$t3
    ld	$a0,848($sp)
    subu	$v0,$v0,$a1
    sd	$v0,1088($sp)
    movn	$v1,$a7,$t3
    movn	$v1,$at,$a0
    sd	$v1,1072($sp)
    ld	$at,720($sp)
    sd	$at,1080($sp)
.L0158d248:
    b	.L0158b818
    ld	$a7,1008($sp)
.L0158d250:
    sd	$a6,1592($sp)
    sd	$a7,1600($sp)
    sd	$t1,1608($sp)
    ld	$a2,424($sp)
    ld	$t9,504($sp)
    ld	$a3,512($sp)
    addiu	$a0,$sp,72
    ld	$a4,528($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,552($sp)
    ld	$t1,1608($sp)
    ld	$a7,1600($sp)
    b	.L0158c820
    ld	$a6,1592($sp)
.L0158d28c:
    ld	$a0,792($sp)
    ld	$a1,552($sp)
    ld	$a2,808($sp)
    ld	$a3,800($sp)
    ld	$a4,840($sp)
    sw	$s7,20($sp)
    ld	$t1,672($sp)
    sw	$t1,12($sp)
    ld	$a7,832($sp)
    sd	$t0,784($sp)
    sd	$a6,896($sp)
    ld	$t9,488($sp)
    ld	$t0,896($sp)
    move	$a6,$s8
    sw	$a7,4($sp)
    ld	$a5,784($sp)
    jalr	$t9
    addu	$a7,$a7,$t0
    ld	$a6,896($sp)
    b	.L0158c0f0
    ld	$t0,784($sp)
.L0158d2e0:
    ld	$a0,792($sp)
    ld	$a1,552($sp)
    ld	$a2,808($sp)
    ld	$a3,800($sp)
    ld	$a4,840($sp)
    ld	$t1,672($sp)
    sd	$t0,784($sp)
    ld	$a7,832($sp)
    ld	$a5,784($sp)
    ld	$t3,536($sp)
    ld	$t9,488($sp)
    lw	$t8,68($t3)
    lw	$t2,44($t3)
    sw	$t2,40($t3)
    sw	$t8,64($t3)
    sd	$a6,896($sp)
    sw	$t1,12($sp)
    ld	$t0,896($sp)
    move	$a6,$s8
    sw	$s7,20($sp)
    sw	$a7,4($sp)
    jalr	$t9
    addu	$a7,$a7,$t0
    ld	$a6,896($sp)
    ld	$t0,784($sp)
    ld	$t9,464($sp)
    ld	$ra,536($sp)
    ld	$at,456($sp)
    sw	$at,40($ra)
    b	.L0158c0f0
    sw	$t9,64($ra)
.L0158d35c:
    sd	$a6,1592($sp)
    sd	$a7,1600($sp)
    sd	$t1,1608($sp)
    ld	$a2,416($sp)
    ld	$t9,504($sp)
    ld	$a3,512($sp)
    addiu	$a0,$sp,72
    ld	$a4,528($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,552($sp)
    ld	$t1,1608($sp)
    ld	$a7,1600($sp)
    b	.L0158c820
    ld	$a6,1592($sp)
.L0158d398:
    ld	$a2,424($sp)
    ld	$t9,504($sp)
    ld	$a3,512($sp)
    addiu	$a0,$sp,80
    ld	$a4,528($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,552($sp)
    b	.L0158cfe8
    subu	$s2,$s2,$s8
.L0158d3c0:
    ld	$t9,504($sp)
    ld	$a3,512($sp)
    addiu	$a0,$sp,80
    ld	$a4,528($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,552($sp)
    b	.L0158cfe8
    subu	$s2,$s2,$s8
.L0158d3e4:
    move	$s7,$t1
    ld	$t1,1032($sp)
    sltiu	$v0,$t2,1
    blez	$s3,.L0158e83c
    movn	$s7,$zero,$v0
    beqz	$t0,.L0158d418
    nop
.L0158d400:
    lbu	$v1,0($t1)
    addiu	$t0,$t0,-1
    addiu	$t1,$t1,1
    pref	0x0,255($t1)
    bnez	$t0,.L0158d400
    addu	$a4,$a4,$v1
.L0158d418:
    sra	$t0,$s3,0x3
    beqz	$t0,.L0158d5ec
    slti	$t0,$t0,3
    bnez	$t0,.L0158ec7c
    nop
    lbu	$t9,8($t1)
    lbu	$a3,9($t1)
    lbu	$at,0($t1)
    lbu	$t8,1($t1)
    lbu	$t3,15($t1)
    lbu	$a1,6($t1)
    lbu	$a0,5($t1)
    lbu	$v1,4($t1)
    lbu	$v0,3($t1)
    lbu	$s2,2($t1)
    addiu	$t0,$t1,8
    lbu	$t2,7($t1)
    addiu	$a2,$t1,16
    pref	0x0,256($t1)
    addiu	$a5,$ra,-16
    move	$t1,$a2
    sd	$s0,1648($sp)
    addu	$at,$a4,$at
    move	$a4,$a5
    sd	$s1,1656($sp)
    move	$ra,$a3
    move	$s1,$t8
.L0158d484:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158e0b4
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158e0f0
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158d484
    lbu	$ra,1($t0)
    move	$a6,$ra
    move	$a7,$a1
    move	$a1,$s1
    ld	$s1,1656($sp)
    move	$t1,$t0
    move	$t8,$v1
    move	$v1,$v0
    move	$v0,$at
    sd	$v0,1336($sp)
    ld	$s0,1648($sp)
    move	$t0,$a0
    move	$a0,$s2
    move	$ra,$a0
    move	$s2,$v1
    ld	$a3,1336($sp)
.L0158d59c:
    lbu	$a0,2($t1)
    lbu	$v1,3($t1)
    addu	$a4,$a3,$a1
    lbu	$v0,4($t1)
    addu	$a4,$a4,$ra
    lbu	$at,5($t1)
    addu	$a4,$a4,$s2
    lbu	$a5,6($t1)
    addu	$a4,$a4,$t8
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t2
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$a6
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$a5
    addu	$a4,$a4,$t3
.L0158d5ec:
    slt	$a5,$s8,$a4
.L0158d5f0:
    bnez	$a5,.L0158d61c
    cvt.d.w	$f18,$f4
.L0158d5f8:
    mtc1	$a4,$f19
    cvt.d.w	$f19,$f19
    div.d	$f18,$f18,$f19
    trunc.w.d	$f18,$f18
    mfc1	$a7,$f18
    mult	$a7,$a4
    mflo	$a6
    teq	$a4,$zero,0x7
    subu	$s8,$s8,$a6
.L0158d61c:
    ld	$a6,1032($sp)
.L0158d620:
    addu	$a6,$s7,$a6
    lbu	$a6,0($a6)
    slt	$t0,$s8,$a6
    bnez	$t0,.L0158d66c
    nop
    nop
    nop
    nop
.L0158d640:
    addiu	$s7,$s7,1
    xor	$t1,$s7,$s3
    ld	$t0,1032($sp)
    sltiu	$t1,$t1,1
    movn	$s7,$zero,$t1
    addu	$t0,$s7,$t0
    subu	$s8,$s8,$a6
    lbu	$a6,0($t0)
    slt	$a7,$s8,$a6
    beqz	$a7,.L0158d640
    nop
.L0158d66c:
    sd	$s7,920($sp)
    b	.L0158bd60
    move	$s2,$s8
.L0158d678:
    ld	$t3,792($sp)
    lw	$t8,-6768($gp)
    lw	$t3,76($t3)
    sll	$t8,$t8,0x2
    ld	$s2,1640($sp)
    addu	$t3,$t3,$t8
    lw	$t3,0($t3)
    sd	$t3,536($sp)
    lw	$t8,40($t3)
    lw	$t9,64($t3)
    sd	$t9,464($sp)
    b	.L0158c0a4
    sd	$t8,456($sp)
.L0158d6ac:
    sd	$t2,1584($sp)
    ld	$a0,792($sp)
    ld	$a1,552($sp)
    ld	$a2,808($sp)
    ld	$a3,800($sp)
    ld	$a4,840($sp)
    sd	$a6,1616($sp)
    sd	$t1,760($sp)
    ld	$t1,672($sp)
    sw	$t1,12($sp)
    ld	$a7,832($sp)
    sw	$a7,4($sp)
    sd	$t8,664($sp)
    sd	$t3,656($sp)
    ld	$a5,664($sp)
    ld	$a6,656($sp)
    ld	$t9,488($sp)
    sd	$t0,776($sp)
    ld	$t0,760($sp)
    ld	$t8,776($sp)
    sw	$t8,20($sp)
    jalr	$t9
    addu	$a7,$a7,$t0
    ld	$a6,1616($sp)
    ld	$t0,776($sp)
    ld	$t1,760($sp)
    ld	$t2,1584($sp)
    ld	$t3,656($sp)
    b	.L0158cbdc
    ld	$t8,664($sp)
.L0158d724:
    ld	$a0,792($sp)
    ld	$a1,552($sp)
    ld	$a2,808($sp)
    ld	$a3,800($sp)
    ld	$a4,840($sp)
    sd	$a6,1616($sp)
    sd	$t1,760($sp)
    ld	$t1,672($sp)
    ld	$a7,832($sp)
    sd	$t2,1584($sp)
    sd	$t8,664($sp)
    sd	$t3,656($sp)
    ld	$a5,664($sp)
    ld	$a6,656($sp)
    ld	$t9,488($sp)
    ld	$t3,536($sp)
    sd	$t0,776($sp)
    lw	$t8,68($t3)
    sw	$t8,64($t3)
    lw	$t2,44($t3)
    sw	$t2,40($t3)
    sw	$t1,12($sp)
    sw	$a7,4($sp)
    ld	$t0,760($sp)
    ld	$t2,776($sp)
    addu	$a7,$a7,$t0
    jalr	$t9
    sw	$t2,20($sp)
    ld	$a6,1616($sp)
    ld	$t0,776($sp)
    ld	$t1,760($sp)
    ld	$t2,1584($sp)
    ld	$t3,656($sp)
    ld	$t8,664($sp)
    ld	$t9,464($sp)
    ld	$ra,536($sp)
    ld	$at,456($sp)
    sw	$at,40($ra)
    b	.L0158cbdc
    sw	$t9,64($ra)
.L0158d7c4:
    ld	$a1,1064($sp)
    subu	$v1,$a1,$a7
    subu	$a1,$a7,$a1
    slti	$v0,$v1,1
    b	.L0158c318
    movz	$a1,$v1,$v0
.L0158d7dc:
    ld	$a2,792($sp)
    lw	$a2,16($a2)
    srl	$a2,$a2,0x1c
    andi	$a2,$a2,0x3
    beqz	$a2,.L0158d848
    ld	$a3,880($sp)
    ld	$a4,280($sp)
    sll	$a3,$a3,0x2
    addu	$a3,$a4,$a3
    lh	$a4,0($a4)
    sd	$a3,936($sp)
    lh	$a3,0($a3)
    bne	$a3,$a4,.L0158d838
    ld	$s2,920($sp)
    ld	$a5,280($sp)
    ld	$a4,936($sp)
    lh	$a5,2($a5)
    lh	$a4,2($a4)
    bne	$a4,$a5,.L0158d834
    ld	$a5,880($sp)
    li	$a6,1
    bne	$a5,$a6,.L0158d848
.L0158d834:
    ld	$s2,920($sp)
.L0158d838:
    andi	$s2,$s2,0x1
    beqz	$s2,.L0158e488
    ld	$t8,904($sp)
    bnez	$t8,.L0158e488
.L0158d848:
    ld	$s8,1296($sp)
.L0158d84c:
    ld	$s2,1288($sp)
    ld	$s3,272($sp)
    ld	$s7,1280($sp)
    ld	$s4,1264($sp)
    ld	$s0,1256($sp)
    ld	$s5,1248($sp)
    ld	$ra,1272($sp)
    ld	$gp,264($sp)
    ld	$s1,256($sp)
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,1680
.L0158d87c:
    beq	$s8,$a1,.L0158c7d0
    ld	$a6,792($sp)
    ld	$ra,1032($sp)
    subu	$t3,$a1,$s8
    ld	$a2,696($sp)
    move	$t0,$zero
    subu	$t8,$t3,$t1
    addu	$a5,$a2,$ra
    addiu	$a2,$a2,1
    lhu	$a6,10($a6)
    slt	$at,$t3,$t1
    move	$a4,$a2
    lbu	$a5,0($a5)
    sd	$a6,496($sp)
    addu	$ra,$a6,$ra
    andi	$a6,$a6,0x7
    beqz	$at,.L0158de10
    subu	$t2,$a5,$t1
    b	.L0158e0a8
    addu	$ra,$t3,$t2
.L0158d8cc:
    b	.L0158cb78
    ld	$a2,608($sp)
.L0158d8d4:
    ld	$a7,792($sp)
    lw	$t0,-6768($gp)
    lw	$a7,76($a7)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    sd	$a7,536($sp)
    lw	$t0,40($a7)
    lw	$t9,64($a7)
    sd	$t9,464($sp)
    b	.L0158cb90
    sd	$t0,456($sp)
.L0158d904:
    ld	$s0,1648($sp)
    ld	$a7,1632($sp)
    move	$a0,$t9
    ld	$t9,1624($sp)
    ld	$a4,1552($sp)
    move	$a2,$t8
    move	$t8,$t1
    move	$t1,$ra
    ld	$ra,1536($sp)
    move	$v0,$a5
    ld	$a5,1528($sp)
    sd	$a0,384($sp)
    sd	$v0,392($sp)
    move	$t0,$a6
    sd	$t0,400($sp)
    sd	$at,360($sp)
    move	$a1,$t3
    sd	$a1,368($sp)
    ld	$a1,1512($sp)
    sd	$a2,376($sp)
    ld	$a2,1416($sp)
    move	$t3,$a3
    move	$a3,$v1
    move	$a6,$a3
    b	.L0158ca94
    ld	$a3,408($sp)
.L0158d96c:
    ld	$a2,672($sp)
    mult	$t1,$a2
    ld	$v1,832($sp)
    subu	$a0,$a4,$t1
    mflo	$t2
    nop
    nop
    mult	$v1,$a0
    ld	$at,1016($sp)
    ld	$v0,1032($sp)
    andi	$a5,$ra,0x7
    ld	$a2,608($sp)
    slt	$at,$a4,$at
    addu	$v0,$ra,$v0
    sd	$v0,448($sp)
    mflo	$v0
    addu	$a6,$a4,$a3
    ld	$t8,1032($sp)
    addu	$t2,$t2,$v0
    ld	$t1,1016($sp)
    bnez	$at,.L0158dcd4
    addu	$a2,$a2,$t2
    ld	$t2,920($sp)
    addiu	$t2,$t2,1
    subu	$t1,$a4,$t1
    xor	$a3,$t2,$ra
    mtc1	$t1,$f4
    sltiu	$a3,$a3,1
    move	$t0,$zero
    ld	$a4,448($sp)
    movn	$t2,$zero,$a3
    move	$a6,$ra
    blez	$ra,.L0158e8cc
    sd	$t2,352($sp)
    beqz	$a5,.L0158da14
    nop
.L0158d9fc:
    lbu	$t3,0($t8)
    addiu	$a5,$a5,-1
    addiu	$t8,$t8,1
    pref	0x0,255($t8)
    bnez	$a5,.L0158d9fc
    addu	$t0,$t0,$t3
.L0158da14:
    sra	$a5,$a6,0x3
    beqz	$a5,.L0158dc44
    slti	$a5,$a5,3
    bnez	$a5,.L0158ebb4
    nop
    sd	$s0,1648($sp)
    sd	$a7,1632($sp)
    pref	0x0,256($t8)
    sd	$a2,1416($sp)
    sd	$t2,1400($sp)
    lbu	$t2,7($t8)
    sd	$s1,1656($sp)
    lbu	$s1,1($t8)
    sd	$s2,1664($sp)
    lbu	$s2,2($t8)
    lbu	$v0,3($t8)
    lbu	$at,0($t8)
    lbu	$v1,4($t8)
    lbu	$a0,5($t8)
    sd	$a1,1512($sp)
    lbu	$a1,6($t8)
    lbu	$t3,15($t8)
    sd	$t9,1624($sp)
    sd	$t1,1408($sp)
    addiu	$t1,$t8,16
    lbu	$t9,8($t8)
    addiu	$a4,$a4,-16
    sd	$ra,1536($sp)
    addiu	$a6,$t8,8
    lbu	$ra,9($t8)
    addu	$at,$t0,$at
    move	$t0,$a6
.L0158da94:
    addu	$at,$at,$s1
    lbu	$a2,2($t0)
    addu	$at,$at,$s2
    lbu	$s2,3($t0)
    addu	$at,$at,$v0
    lbu	$s0,4($t0)
    addu	$at,$at,$v1
    lbu	$a3,5($t0)
    addu	$at,$at,$a0
    lbu	$a7,6($t0)
    addu	$at,$at,$a1
    addiu	$a5,$t1,8
    lbu	$a6,7($t1)
    addu	$at,$at,$t2
    lbu	$t8,0($t1)
    addu	$at,$at,$t9
    beq	$t0,$a4,.L0158e6f4
    lbu	$t9,1($t1)
    addu	$at,$at,$ra
    lbu	$ra,2($t1)
    addu	$at,$at,$a2
    lbu	$a1,3($t1)
    addu	$at,$at,$s2
    lbu	$a0,4($t1)
    addu	$at,$at,$s0
    lbu	$s0,5($t1)
    addu	$at,$at,$a3
    lbu	$a3,6($t1)
    addu	$at,$at,$a7
    addiu	$t0,$t1,16
    lbu	$t2,15($t1)
    addu	$at,$at,$t3
    lbu	$a7,8($t1)
    addu	$at,$at,$t8
    beq	$t1,$a4,.L0158e76c
    lbu	$s1,9($t1)
    addu	$at,$at,$t9
    lbu	$s2,10($t1)
    addu	$at,$at,$ra
    lbu	$v0,11($t1)
    addu	$at,$at,$a1
    lbu	$v1,12($t1)
    addu	$at,$at,$a0
    lbu	$a0,13($t1)
    addu	$at,$at,$s0
    lbu	$a1,14($t1)
    pref	0x0,256($t0)
    addu	$at,$at,$a3
    addiu	$t1,$t1,24
    lbu	$t3,7($t0)
    addu	$at,$at,$a6
    lbu	$t9,0($t0)
    addu	$at,$at,$a7
    bne	$a5,$a4,.L0158da94
    lbu	$ra,1($t0)
    ld	$a2,1416($sp)
    sd	$at,160($sp)
    move	$t8,$t2
    ld	$t2,1400($sp)
    ld	$t1,1408($sp)
    sd	$a1,192($sp)
    ld	$a1,1512($sp)
    sd	$ra,176($sp)
    ld	$ra,1536($sp)
    move	$a5,$t9
    ld	$t9,1624($sp)
    ld	$a7,1632($sp)
    ld	$s0,1648($sp)
    sd	$s1,168($sp)
    ld	$s1,1656($sp)
    sd	$s2,184($sp)
    ld	$s2,1664($sp)
    sd	$a5,152($sp)
    move	$a3,$a0
    sd	$a3,1168($sp)
    sd	$v0,1152($sp)
    move	$a4,$v1
    sd	$a4,1160($sp)
    ld	$a4,1152($sp)
    ld	$a3,1160($sp)
    move	$a6,$t0
    ld	$a5,1168($sp)
.L0158dbdc:
    ld	$at,168($sp)
    ld	$t0,160($sp)
    ld	$v0,184($sp)
    addu	$t0,$t0,$at
    lbu	$at,2($a6)
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$a4
    ld	$v0,192($sp)
    addu	$t0,$t0,$a3
    addu	$t0,$t0,$a5
    addu	$t0,$t0,$v0
    ld	$v0,152($sp)
    lbu	$a0,3($a6)
    addu	$t0,$t0,$t8
    addu	$t0,$t0,$v0
    ld	$v0,176($sp)
    lbu	$v1,4($a6)
    addu	$t0,$t0,$v0
    lbu	$v0,5($a6)
    addu	$t0,$t0,$at
    lbu	$at,6($a6)
    addu	$t0,$t0,$a0
    addu	$t0,$t0,$v1
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$at
    addu	$t0,$t0,$t3
.L0158dc44:
    slt	$v0,$t1,$t0
    bnez	$v0,.L0158dc74
    cvt.d.w	$f21,$f4
.L0158dc50:
    mtc1	$t0,$f23
    cvt.d.w	$f23,$f23
    div.d	$f21,$f21,$f23
    trunc.w.d	$f21,$f21
    mfc1	$a0,$f21
    mult	$a0,$t0
    mflo	$v1
    teq	$t0,$zero,0x7
    subu	$t1,$t1,$v1
.L0158dc74:
    ld	$a4,1032($sp)
.L0158dc78:
    ld	$a3,352($sp)
    addu	$a3,$a3,$a4
    lbu	$a3,0($a3)
    sd	$a3,408($sp)
    slt	$a3,$t1,$a3
    bnez	$a3,.L0158dccc
    ld	$t0,408($sp)
    ld	$t0,408($sp)
    nop
    nop
.L0158dca0:
    addiu	$t2,$t2,1
    xor	$t3,$t2,$ra
    ld	$a6,1032($sp)
    sltiu	$t3,$t3,1
    movn	$t2,$zero,$t3
    addu	$a6,$t2,$a6
    subu	$t1,$t1,$t0
    lbu	$t0,0($a6)
    slt	$a5,$t1,$t0
    beqz	$a5,.L0158dca0
    nop
.L0158dccc:
    sd	$t2,648($sp)
    move	$a6,$t1
.L0158dcd4:
    b	.L0158cb78
    subu	$t2,$t0,$a6
.L0158dcdc:
    ld	$t9,752($sp)
    ld	$a5,680($sp)
    ld	$t2,792($sp)
    move	$t0,$zero
    beq	$t9,$t3,.L0158cf98
    ld	$a7,1032($sp)
    ld	$a4,752($sp)
    lhu	$t2,10($t2)
    addu	$t1,$a5,$a7
    addiu	$a5,$a5,1
    sd	$t2,520($sp)
    subu	$a4,$t3,$a4
    addu	$a7,$t2,$a7
    lbu	$t1,0($t1)
    slt	$at,$a4,$s2
    andi	$t2,$t2,0x7
    subu	$s8,$a4,$s2
    ld	$a1,520($sp)
    subu	$ra,$t1,$s2
    beqz	$at,.L0158e12c
    ld	$v1,520($sp)
    b	.L0158e390
    addu	$s8,$a4,$ra
.L0158dd38:
    bgez	$s3,.L0158b1d8
    cvt.d.w	$f1,$f4
    b	.L0158b200
    slt	$t0,$s3,$t2
.L0158dd48:
    bgez	$s3,.L0158bfec
    cvt.d.w	$f6,$f4
    b	.L0158c014
    ld	$a6,1032($sp)
.L0158dd58:
    andi	$at,$t1,0x1
    ld	$v0,1000($sp)
    li	$v1,32767
    sd	$v1,224($sp)
    li	$v1,1
    subu	$v0,$a5,$v0
    beqz	$at,.L0158b818
    sd	$v0,216($sp)
    ld	$t9,216($sp)
    ld	$a0,224($sp)
    ld	$t1,616($sp)
    li	$v0,9
    sd	$t1,1080($sp)
    sltu	$a0,$a0,$t9
    movn	$v1,$v0,$t3
    ld	$v0,848($sp)
    li	$at,47
    bnez	$a0,.L0158ddcc
    sd	$t9,1088($sp)
    li	$a0,39
    movn	$at,$a0,$t3
    sd	$a6,984($sp)
    movn	$at,$v1,$v0
    b	.L0158de08
    sd	$at,1072($sp)
.L0158ddbc:
    bgez	$s2,.L0158bcf4
    cvt.d.w	$f3,$f4
    b	.L0158bd1c
    ld	$a6,1032($sp)
.L0158ddcc:
    li	$at,9
    li	$t9,1
    sd	$a1,984($sp)
    movn	$at,$t9,$t3
    ld	$t9,848($sp)
    li	$a0,3
    li	$v0,11
    movn	$a0,$v0,$t3
    ld	$v0,1000($sp)
    movn	$a0,$at,$t9
    sd	$a0,1072($sp)
    subu	$v0,$v0,$a4
    sd	$v0,1088($sp)
    ld	$v0,600($sp)
    sd	$v0,1080($sp)
.L0158de08:
    b	.L0158b818
    ld	$t9,1000($sp)
.L0158de10:
    ld	$a5,496($sp)
    xor	$at,$a2,$a5
    mtc1	$t8,$f4
    ld	$t3,1032($sp)
    sltiu	$at,$at,1
    movn	$a4,$zero,$at
    sd	$a4,288($sp)
    addu	$t3,$a4,$t3
    sd	$t3,104($sp)
    cvt.d.w	$f25,$f4
    blez	$a5,.L0158e8dc
    lbu	$t3,0($t3)
    ld	$a3,496($sp)
    ld	$a5,1032($sp)
    beqz	$a6,.L0158de64
    sra	$t1,$a3,0x3
.L0158de50:
    addiu	$a6,$a6,-1
    lbu	$v0,0($a5)
    addiu	$a5,$a5,1
    bnez	$a6,.L0158de50
    addu	$t0,$t0,$v0
.L0158de64:
    beqz	$t1,.L0158e024
    slti	$t1,$t1,3
    bnez	$t1,.L0158e9ec
    nop
    sd	$t9,1520($sp)
    sd	$t8,1384($sp)
    sd	$t3,1360($sp)
    sd	$a4,1376($sp)
    lbu	$a4,7($a5)
    sd	$s0,1648($sp)
    lbu	$s0,6($a5)
    lbu	$a2,5($a5)
    sd	$a1,1448($sp)
    lbu	$a1,4($a5)
    lbu	$a0,3($a5)
    sd	$a7,1600($sp)
    lbu	$t2,9($a5)
    lbu	$at,0($a5)
    addiu	$a7,$a5,8
    addiu	$a3,$ra,-16
    lbu	$v0,10($a5)
    lbu	$v1,2($a5)
    addu	$at,$t0,$at
    move	$t0,$a3
    lbu	$a6,1($a5)
    move	$ra,$v0
    move	$a5,$t2
.L0158ded0:
    addu	$at,$at,$a6
    lbu	$a3,3($a7)
    addu	$at,$at,$v1
    lbu	$t1,4($a7)
    addu	$at,$at,$a0
    lbu	$t2,5($a7)
    addu	$at,$at,$a1
    lbu	$t9,6($a7)
    addu	$at,$at,$a2
    lbu	$t3,7($a7)
    addu	$at,$at,$s0
    addiu	$t8,$a7,8
    lbu	$v0,0($a7)
    addu	$at,$at,$a4
    lbu	$a6,9($a7)
    addu	$at,$at,$v0
    beq	$a7,$t0,.L0158e7d8
    lbu	$v1,10($a7)
    addu	$at,$at,$a5
    lbu	$a0,11($a7)
    addu	$at,$at,$ra
    lbu	$a1,12($a7)
    addu	$at,$at,$a3
    lbu	$a2,13($a7)
    addu	$at,$at,$t1
    lbu	$s0,14($a7)
    addu	$at,$at,$t2
    lbu	$a4,15($a7)
    addu	$v0,$at,$t9
    addiu	$a7,$a7,16
    lbu	$at,0($t8)
    addu	$v0,$v0,$t3
    lbu	$a5,1($a7)
    addu	$at,$v0,$at
    bne	$t8,$t0,.L0158ded0
    lbu	$ra,2($a7)
    sd	$at,120($sp)
    sd	$a4,144($sp)
    ld	$a4,1376($sp)
    ld	$t8,1384($sp)
    move	$t3,$s0
    move	$s0,$a2
    move	$a2,$a1
    ld	$a1,1448($sp)
    move	$t2,$a7
    ld	$a7,1600($sp)
    move	$v0,$v1
    sd	$v0,136($sp)
    move	$t1,$a5
    sd	$t1,128($sp)
    move	$t0,$ra
    move	$ra,$t3
    ld	$t3,1360($sp)
    move	$a5,$s0
    ld	$s0,1648($sp)
    sd	$t0,1128($sp)
    move	$a3,$a0
    sd	$a3,1136($sp)
    ld	$t1,1128($sp)
    ld	$a3,1136($sp)
.L0158dfc0:
    ld	$t0,120($sp)
    ld	$at,136($sp)
    addu	$t0,$t0,$a6
    addu	$t0,$t0,$at
    addu	$t0,$t0,$a3
    addu	$t0,$t0,$a2
    ld	$v0,144($sp)
    addu	$t0,$t0,$a5
    lbu	$at,0($t2)
    addu	$t0,$t0,$ra
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$at
    ld	$at,128($sp)
    addu	$t0,$t0,$at
    lbu	$at,3($t2)
    lbu	$v0,4($t2)
    addu	$t0,$t0,$t1
    addu	$t0,$t0,$at
    lbu	$at,5($t2)
    addu	$t0,$t0,$v0
    lbu	$v0,6($t2)
    addu	$t0,$t0,$at
    lbu	$at,7($t2)
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$at
.L0158e024:
    slt	$t1,$t8,$t0
    bnez	$t1,.L0158e050
    mtc1	$t0,$f27
.L0158e030:
    cvt.d.w	$f27,$f27
    div.d	$f25,$f25,$f27
    trunc.w.d	$f25,$f25
    mfc1	$ra,$f25
    mult	$ra,$t0
    mflo	$t2
    teq	$t0,$zero,0x7
    subu	$t8,$t8,$t2
.L0158e050:
    slt	$at,$t8,$t3
.L0158e054:
    bnez	$at,.L0158e09c
    move	$t1,$t3
    move	$t1,$t3
    nop
    nop
    nop
    ld	$a0,496($sp)
.L0158e070:
    addiu	$a4,$a4,1
    xor	$a0,$a4,$a0
    ld	$v1,1032($sp)
    sltiu	$a0,$a0,1
    movn	$a4,$zero,$a0
    addu	$v1,$a4,$v1
    subu	$t8,$t8,$t1
    lbu	$t1,0($v1)
    slt	$v0,$t8,$t1
    beqz	$v0,.L0158e070
    ld	$a0,496($sp)
.L0158e09c:
    sd	$a4,696($sp)
    move	$ra,$t8
    move	$a5,$t1
.L0158e0a8:
    subu	$t1,$a5,$ra
    b	.L0158c7d0
    sd	$a1,728($sp)
.L0158e0b4:
    move	$t2,$t3
    move	$t3,$a6
    move	$a6,$t9
    move	$t9,$t8
    move	$t8,$s0
    ld	$s0,1648($sp)
    move	$s1,$a2
    move	$a4,$ra
    sd	$a4,1344($sp)
    move	$t0,$a3
    move	$ra,$s1
    ld	$s1,1656($sp)
    move	$a3,$at
    b	.L0158d59c
    ld	$a1,1344($sp)
.L0158e0f0:
    move	$t1,$a5
    move	$t8,$a0
    move	$v0,$a3
    move	$a3,$at
    move	$s2,$a1
    move	$a1,$t9
    move	$t3,$t2
    move	$t2,$a6
    move	$a6,$s1
    ld	$s1,1656($sp)
    move	$t9,$a7
    move	$t0,$s0
    ld	$s0,1648($sp)
    b	.L0158d59c
    move	$a7,$v0
.L0158e12c:
    ld	$ra,1032($sp)
    mtc1	$s8,$f4
    xor	$a6,$a5,$v1
    ld	$a4,1032($sp)
    move	$s2,$a5
    sltiu	$a6,$a6,1
    movn	$s2,$zero,$a6
    sd	$s2,296($sp)
    addu	$a4,$s2,$a4
    sd	$a4,96($sp)
    cvt.d.w	$f29,$f4
    blez	$v1,.L0158e8ec
    lbu	$a4,0($a4)
    beqz	$t2,.L0158e180
    sra	$t1,$a1,0x3
.L0158e168:
    addiu	$t2,$t2,-1
    lbu	$t1,0($ra)
    addiu	$ra,$ra,1
    bnez	$t2,.L0158e168
    addu	$t0,$t0,$t1
    sra	$t1,$a1,0x3
.L0158e180:
    beqz	$t1,.L0158e31c
    slti	$t1,$t1,3
    bnez	$t1,.L0158eb04
    nop
    lbu	$a6,1($ra)
    lbu	$v1,2($ra)
    lbu	$a0,3($ra)
    lbu	$a1,4($ra)
    lbu	$a2,5($ra)
    lbu	$a5,9($ra)
    lbu	$t2,6($ra)
    lbu	$t9,7($ra)
    lbu	$at,0($ra)
    addiu	$v0,$a7,-16
    addiu	$a7,$ra,8
    lbu	$ra,10($ra)
    sd	$t3,1432($sp)
    sd	$t8,1496($sp)
    sd	$s0,1648($sp)
    addu	$at,$t0,$at
    move	$t0,$v0
    sd	$a4,1328($sp)
    move	$a4,$t9
    move	$s0,$t2
.L0158e1e0:
    addu	$at,$at,$a6
    lbu	$a3,3($a7)
    addu	$at,$at,$v1
    lbu	$t1,4($a7)
    addu	$at,$at,$a0
    lbu	$t2,5($a7)
    addu	$at,$at,$a1
    lbu	$t9,6($a7)
    addu	$at,$at,$a2
    lbu	$t3,7($a7)
    addu	$at,$at,$s0
    addiu	$t8,$a7,8
    lbu	$v0,0($a7)
    addu	$at,$at,$a4
    lbu	$a6,9($a7)
    addu	$at,$at,$v0
    beq	$a7,$t0,.L0158e84c
    lbu	$v1,10($a7)
    addu	$at,$at,$a5
    lbu	$a0,11($a7)
    addu	$at,$at,$ra
    lbu	$a1,12($a7)
    addu	$at,$at,$a3
    lbu	$a2,13($a7)
    addu	$at,$at,$t1
    lbu	$s0,14($a7)
    addu	$at,$at,$t2
    lbu	$a4,15($a7)
    addu	$v0,$at,$t9
    addiu	$a7,$a7,16
    lbu	$at,0($t8)
    addu	$v0,$v0,$t3
    lbu	$a5,1($a7)
    addu	$at,$v0,$at
    bne	$t8,$t0,.L0158e1e0
    lbu	$ra,2($a7)
    move	$t9,$s0
    ld	$s0,1648($sp)
    move	$t0,$a7
    move	$a7,$a4
    ld	$a4,1328($sp)
    sd	$at,112($sp)
    move	$t3,$a0
    move	$a3,$a5
    move	$a5,$t3
    ld	$t3,1432($sp)
    move	$t2,$a2
    sd	$a3,1104($sp)
    move	$t1,$a1
    move	$v0,$a6
    sd	$v0,1096($sp)
    move	$a2,$ra
    move	$ra,$t1
    ld	$t1,1104($sp)
    move	$a1,$v1
    move	$a6,$t0
    ld	$a3,1096($sp)
.L0158e2c4:
    ld	$t0,112($sp)
    addu	$t0,$t0,$a3
    addu	$t0,$t0,$a1
    addu	$t0,$t0,$a5
    addu	$t0,$t0,$ra
    addu	$t0,$t0,$t2
    lbu	$at,0($a6)
    addu	$t0,$t0,$t9
    addu	$t0,$t0,$a7
    addu	$t0,$t0,$at
    lbu	$at,3($a6)
    addu	$t0,$t0,$t1
    lbu	$v0,4($a6)
    addu	$t0,$t0,$a2
    addu	$t0,$t0,$at
    lbu	$at,5($a6)
    addu	$t0,$t0,$v0
    lbu	$v0,6($a6)
    addu	$t0,$t0,$at
    lbu	$at,7($a6)
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$at
.L0158e31c:
    slt	$t1,$s8,$t0
    bnez	$t1,.L0158e348
    mtc1	$t0,$f31
.L0158e328:
    cvt.d.w	$f31,$f31
    div.d	$f29,$f29,$f31
    trunc.w.d	$f29,$f29
    mfc1	$t9,$f29
    mult	$t9,$t0
    mflo	$t2
    teq	$t0,$zero,0x7
    subu	$s8,$s8,$t2
.L0158e348:
    slt	$ra,$s8,$a4
.L0158e34c:
    bnez	$ra,.L0158e38c
    move	$t1,$a4
    move	$t1,$a4
    nop
    ld	$v1,520($sp)
.L0158e360:
    addiu	$s2,$s2,1
    xor	$v1,$s2,$v1
    ld	$v0,1032($sp)
    sltiu	$v1,$v1,1
    movn	$s2,$zero,$v1
    addu	$v0,$s2,$v0
    subu	$s8,$s8,$t1
    lbu	$t1,0($v0)
    slt	$at,$s8,$t1
    beqz	$at,.L0158e360
    ld	$v1,520($sp)
.L0158e38c:
    sd	$s2,680($sp)
.L0158e390:
    subu	$s2,$t1,$s8
    b	.L0158cf98
    sd	$t3,752($sp)
.L0158e39c:
    move	$t3,$ra
    sd	$t3,320($sp)
    ld	$t3,496($sp)
    move	$t8,$t2
    move	$t2,$a1
    sd	$t2,328($sp)
    ld	$t2,1440($sp)
    move	$t0,$a0
    sd	$t0,336($sp)
    ld	$t0,1504($sp)
    move	$ra,$t9
    ld	$t9,1520($sp)
    sd	$s0,344($sp)
    ld	$s0,1648($sp)
    move	$a2,$s1
    ld	$s1,1656($sp)
    sd	$a2,312($sp)
    move	$s2,$a5
    move	$a5,$a7
    move	$a7,$t8
    ld	$t8,288($sp)
    move	$t1,$at
    move	$a4,$a3
    sd	$a4,1304($sp)
    move	$v0,$a6
    move	$a6,$s2
    ld	$s2,1664($sp)
    move	$a3,$v0
    b	.L0158c6e4
    ld	$a2,1304($sp)
.L0158e414:
    move	$a1,$s2
    ld	$s2,1664($sp)
    move	$a4,$s0
    ld	$s0,1648($sp)
    move	$v1,$t9
    ld	$t9,1520($sp)
    move	$a5,$t8
    ld	$t8,288($sp)
    move	$v0,$a3
    sd	$v0,344($sp)
    sd	$a4,336($sp)
    sd	$a1,328($sp)
    move	$a0,$a2
    sd	$a0,320($sp)
    sd	$v1,312($sp)
    move	$t0,$t1
    move	$s1,$a7
    move	$t2,$t3
    move	$a2,$s1
    ld	$s1,1656($sp)
    move	$t3,$a6
    move	$a6,$t0
    ld	$t0,1504($sp)
    move	$t1,$at
    move	$a3,$t2
    ld	$t2,1440($sp)
    move	$a7,$t3
    b	.L0158c6e4
    ld	$t3,496($sp)
.L0158e488:
    beqz	$s0,.L0158d848
    ld	$t3,912($sp)
    sll	$t8,$s0,0x3
    move	$a6,$t3
    b	.L0158e4ac
    addu	$t3,$t3,$t8
.L0158e4a0:
    addiu	$a6,$a6,8
.L0158e4a4:
    beq	$a6,$t3,.L0158d84c
    ld	$s8,1296($sp)
.L0158e4ac:
    lh	$t9,0($a6)
    lh	$t0,4($a6)
    slt	$t9,$s1,$t9
    lh	$t2,2($a6)
    bnez	$t9,.L0158e4a0
    lh	$t1,6($a6)
    slt	$ra,$s6,$t2
    slt	$t9,$s6,$t1
    slt	$t8,$s1,$t0
    bnez	$ra,.L0158e4a0
    nop
    beqz	$t8,.L0158e4a0
    nop
    beqz	$t9,.L0158e4a4
    addiu	$a6,$a6,8
    sh	$s6,90($sp)
    sh	$s1,88($sp)
    ld	$a7,552($sp)
    lw	$ra,-5736($gp)
    lw	$t9,132($a7)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    ld	$a4,528($sp)
    lw	$t9,24($t9)
    move	$a6,$zero
    ld	$a2,424($sp)
    move	$a5,$zero
    li	$a1,1
    ld	$at,416($sp)
    ld	$a3,512($sp)
    addiu	$a0,$sp,88
    jalr	$t9
    movn	$a2,$at,$s2
    b	.L0158d84c
    ld	$s8,1296($sp)
.L0158e540:
    move	$t1,$a5
    move	$a5,$s1
    ld	$s1,1656($sp)
    move	$a4,$s0
    ld	$s0,1648($sp)
    ld	$t8,1496($sp)
    ld	$s2,296($sp)
    move	$v0,$t9
    sd	$v0,240($sp)
    move	$t9,$a7
    sd	$at,232($sp)
    move	$a2,$a3
    move	$a3,$a1
    move	$t0,$a0
    move	$v1,$ra
    sd	$v1,1216($sp)
    move	$ra,$a4
    move	$a1,$t0
    ld	$t0,520($sp)
    move	$a7,$a2
    b	.L0158cebc
    ld	$a2,1216($sp)
.L0158e598:
    ld	$s1,1656($sp)
    move	$a1,$s0
    ld	$s0,1648($sp)
    move	$v1,$t9
    move	$t9,$t8
    ld	$t8,1496($sp)
    ld	$t0,520($sp)
    move	$a5,$a3
    move	$a3,$s2
    ld	$s2,296($sp)
    move	$a0,$ra
    sd	$a0,240($sp)
    move	$v0,$at
    sd	$v0,232($sp)
    sd	$a1,1232($sp)
    move	$a4,$t3
    sd	$v1,1208($sp)
    move	$t2,$a6
    move	$a6,$a4
    ld	$a1,1232($sp)
    move	$ra,$a5
    b	.L0158cebc
    ld	$a5,1208($sp)
.L0158e5f4:
    sd	$zero,576($sp)
    sd	$s7,1280($sp)
    b	.L0158ab3c
    sd	$s8,1296($sp)
.L0158e604:
    sd	$a6,912($sp)
    b	.L0158abb0
    li	$s0,1
.L0158e610:
    move	$v0,$s1
    ld	$s1,1656($sp)
    move	$s2,$a6
    move	$a6,$s0
    ld	$s0,1648($sp)
    ld	$t1,280($sp)
    move	$a2,$t2
    ld	$t2,1352($sp)
    ld	$t3,1240($sp)
    move	$t8,$a5
    move	$a5,$t9
    sd	$v0,208($sp)
    move	$t9,$a7
    move	$a4,$a3
    sd	$at,200($sp)
    move	$a3,$ra
    move	$t0,$a0
    move	$ra,$a4
    move	$v1,$a1
    sd	$v1,1184($sp)
    move	$a7,$t0
    ld	$t0,1392($sp)
    move	$a1,$a6
    move	$a6,$a2
    b	.L0158ae1c
    ld	$a2,1184($sp)
.L0158e678:
    ld	$s1,1656($sp)
    move	$t0,$a7
    move	$a7,$s0
    ld	$s0,1648($sp)
    ld	$t2,1352($sp)
    move	$a4,$t3
    ld	$t3,1240($sp)
    move	$v1,$t9
    sd	$v1,208($sp)
    move	$v0,$at
    sd	$v0,200($sp)
    move	$a5,$ra
    move	$a1,$t1
    move	$t1,$s2
    move	$ra,$t0
    ld	$t0,1392($sp)
    move	$a0,$a2
    move	$a2,$t1
    ld	$t1,280($sp)
    sd	$a3,1200($sp)
    sd	$a0,1176($sp)
    move	$t9,$t8
    move	$t8,$a1
    ld	$a1,1200($sp)
    move	$s2,$a4
    b	.L0158ae1c
    ld	$a3,1176($sp)
.L0158e6e4:
    bgez	$a4,.L0158cb0c
    mtc1	$t0,$f13
    b	.L0158cb30
    slt	$a6,$a4,$a3
.L0158e6f4:
    move	$a4,$s2
    ld	$s2,1664($sp)
    ld	$s1,1656($sp)
    move	$a5,$a3
    move	$a3,$s0
    ld	$s0,1648($sp)
    move	$t0,$a7
    ld	$a7,1632($sp)
    move	$v1,$t9
    ld	$t9,1624($sp)
    move	$a0,$ra
    ld	$ra,1536($sp)
    move	$a1,$a2
    ld	$a2,1416($sp)
    move	$t2,$t3
    move	$t3,$a6
    move	$a6,$t1
    ld	$t1,1408($sp)
    sd	$t0,192($sp)
    sd	$a0,168($sp)
    sd	$v1,176($sp)
    move	$v0,$at
    sd	$v0,160($sp)
    move	$at,$t8
    sd	$at,152($sp)
    sd	$a1,184($sp)
    ld	$a1,1512($sp)
    move	$t8,$t2
    b	.L0158dbdc
    ld	$t2,1400($sp)
.L0158e76c:
    ld	$a2,1416($sp)
    sd	$at,160($sp)
    move	$v0,$a3
    sd	$v0,192($sp)
    move	$t3,$t2
    ld	$t2,1400($sp)
    ld	$t1,1408($sp)
    move	$s2,$a1
    ld	$a1,1512($sp)
    sd	$ra,184($sp)
    ld	$ra,1536($sp)
    sd	$t9,168($sp)
    ld	$t9,1624($sp)
    sd	$a7,152($sp)
    ld	$a7,1632($sp)
    move	$v1,$a5
    move	$a5,$s0
    ld	$s0,1648($sp)
    sd	$s1,176($sp)
    ld	$s1,1656($sp)
    sd	$s2,1152($sp)
    move	$a3,$a0
    ld	$s2,1664($sp)
    move	$t8,$a6
    move	$a6,$v1
    b	.L0158dbdc
    ld	$a4,1152($sp)
.L0158e7d8:
    ld	$s0,1648($sp)
    move	$a4,$t8
    ld	$t8,1384($sp)
    move	$v0,$t3
    sd	$v0,144($sp)
    move	$a0,$a6
    sd	$a0,128($sp)
    sd	$at,120($sp)
    move	$a1,$ra
    sd	$a1,136($sp)
    ld	$a1,1448($sp)
    move	$a7,$t9
    move	$t3,$a5
    move	$ra,$a7
    ld	$a7,1600($sp)
    move	$a5,$t2
    move	$t2,$a4
    ld	$a4,1376($sp)
    move	$a2,$t1
    sd	$a2,1144($sp)
    move	$a6,$t3
    ld	$t3,1360($sp)
    move	$t1,$v1
    b	.L0158dfc0
    ld	$a2,1144($sp)
.L0158e83c:
    bgez	$s8,.L0158d5f8
    cvt.d.w	$f18,$f4
    b	.L0158d620
    ld	$a6,1032($sp)
.L0158e84c:
    ld	$s0,1648($sp)
    move	$a7,$t3
    ld	$t3,1432($sp)
    sd	$at,112($sp)
    move	$a4,$a3
    move	$a3,$a5
    move	$a5,$a4
    ld	$a4,1328($sp)
    move	$a2,$t1
    move	$v0,$v1
    sd	$v0,1120($sp)
    move	$t1,$a6
    move	$a0,$ra
    sd	$a0,1112($sp)
    move	$a1,$t8
    move	$ra,$a2
    ld	$a2,1120($sp)
    move	$a6,$a1
    b	.L0158e2c4
    ld	$a1,1112($sp)
.L0158e89c:
    bgez	$t0,.L0158c754
    mtc1	$a4,$f11
    b	.L0158c778
    ld	$ra,1032($sp)
.L0158e8ac:
    bgez	$s8,.L0158cf20
    mtc1	$a4,$f17
    b	.L0158cf44
    ld	$t2,1032($sp)
.L0158e8bc:
    bltz	$s4,.L0158aeb0
    ld	$a5,1032($sp)
    b	.L0158ae80
    move	$a4,$zero
.L0158e8cc:
    bgez	$t1,.L0158dc50
    cvt.d.w	$f21,$f4
    b	.L0158dc78
    ld	$a4,1032($sp)
.L0158e8dc:
    bgez	$t8,.L0158e030
    mtc1	$t0,$f27
    b	.L0158e054
    slt	$at,$t8,$t3
.L0158e8ec:
    bgez	$s8,.L0158e328
    mtc1	$t0,$f31
    b	.L0158e34c
    slt	$ra,$s8,$a4
.L0158e8fc:
    sd	$t3,1240($sp)
    sd	$t2,1352($sp)
    sd	$t1,280($sp)
    sd	$t0,1392($sp)
    sd	$s7,504($sp)
    sd	$s8,528($sp)
    sd	$s3,552($sp)
.L0158e918:
    lbu	$ra,0($a7)
    lbu	$t9,1($a7)
    lbu	$t3,2($a7)
    lbu	$t2,3($a7)
    lbu	$t1,4($a7)
    lbu	$t0,5($a7)
    lbu	$a6,6($a7)
    lbu	$a5,7($a7)
    addu	$a4,$a4,$ra
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$t2
    addu	$a4,$a4,$t1
    addiu	$a7,$a7,8
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$a6
    bne	$a7,$t8,.L0158e918
    addu	$a4,$a4,$a5
    ld	$s3,552($sp)
    ld	$s8,528($sp)
    ld	$s7,504($sp)
    ld	$t0,1392($sp)
    ld	$t1,280($sp)
    ld	$t2,1352($sp)
    b	.L0158ae74
    ld	$t3,1240($sp)
.L0158e980:
    sd	$t8,288($sp)
    sd	$t3,496($sp)
    sd	$t2,1440($sp)
    sd	$t0,1504($sp)
.L0158e990:
    lbu	$at,0($t1)
    lbu	$ra,1($t1)
    lbu	$t8,2($t1)
    lbu	$t3,3($t1)
    lbu	$t2,4($t1)
    lbu	$t0,5($t1)
    lbu	$a6,6($t1)
    lbu	$a5,7($t1)
    addu	$a4,$a4,$at
    addu	$a4,$a4,$ra
    addu	$a4,$a4,$t8
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$t2
    addiu	$t1,$t1,8
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$a6
    bne	$t1,$a7,.L0158e990
    addu	$a4,$a4,$a5
    ld	$t0,1504($sp)
    ld	$t2,1440($sp)
    ld	$t3,496($sp)
    b	.L0158c748
    ld	$t8,288($sp)
.L0158e9ec:
    sd	$t3,1360($sp)
    sd	$a4,1376($sp)
    sd	$t8,1384($sp)
    sd	$a7,1600($sp)
.L0158e9fc:
    addiu	$a5,$a5,8
    lbu	$t3,-8($a5)
    lbu	$t1,-7($a5)
    lbu	$t2,-6($a5)
    addu	$t0,$t0,$t3
    addu	$t0,$t0,$t1
    lbu	$t1,-5($a5)
    addu	$t0,$t0,$t2
    lbu	$t2,-4($a5)
    addu	$t0,$t0,$t1
    lbu	$t1,-3($a5)
    addu	$t0,$t0,$t2
    lbu	$t2,-2($a5)
    addu	$t0,$t0,$t1
    lbu	$t1,-1($a5)
    addu	$t0,$t0,$t2
    bne	$a5,$ra,.L0158e9fc
    addu	$t0,$t0,$t1
    ld	$a7,1600($sp)
    ld	$t8,1384($sp)
    ld	$a4,1376($sp)
    b	.L0158e024
    ld	$t3,1360($sp)
.L0158ea58:
    lbu	$t9,0($t0)
    lbu	$t8,1($t0)
    lbu	$t3,2($t0)
    lbu	$t2,3($t0)
    lbu	$t1,4($t0)
    lbu	$a7,5($t0)
    lbu	$a6,6($t0)
    lbu	$a5,7($t0)
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$t8
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$t2
    addu	$a4,$a4,$t1
    addiu	$t0,$t0,8
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    bne	$t0,$ra,.L0158ea58
    addu	$a4,$a4,$a5
    b	.L0158bfe4
    slt	$a5,$s3,$a4
.L0158eaa8:
    sd	$s2,296($sp)
    sd	$t0,520($sp)
.L0158eab0:
    lbu	$v0,0($t1)
    lbu	$at,1($t1)
    lbu	$ra,2($t1)
    lbu	$t9,3($t1)
    lbu	$t2,4($t1)
    lbu	$t0,5($t1)
    lbu	$a6,6($t1)
    lbu	$a5,7($t1)
    addu	$a4,$a4,$v0
    addu	$a4,$a4,$at
    addu	$a4,$a4,$ra
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$t2
    addiu	$t1,$t1,8
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$a6
    bne	$t1,$a7,.L0158eab0
    addu	$a4,$a4,$a5
    ld	$t0,520($sp)
    b	.L0158cf14
    ld	$s2,296($sp)
.L0158eb04:
    sd	$a4,1328($sp)
    sd	$s1,1656($sp)
.L0158eb0c:
    addiu	$ra,$ra,8
    lbu	$t9,-8($ra)
    lbu	$t1,-7($ra)
    lbu	$t2,-6($ra)
    addu	$t0,$t0,$t9
    addu	$t0,$t0,$t1
    lbu	$t1,-5($ra)
    addu	$t0,$t0,$t2
    lbu	$t2,-4($ra)
    addu	$t0,$t0,$t1
    lbu	$t1,-3($ra)
    addu	$t0,$t0,$t2
    lbu	$t2,-2($ra)
    addu	$t0,$t0,$t1
    lbu	$t1,-1($ra)
    addu	$t0,$t0,$t2
    bne	$ra,$a7,.L0158eb0c
    addu	$t0,$t0,$t1
    ld	$s1,1656($sp)
    b	.L0158e31c
    ld	$a4,1328($sp)
.L0158eb60:
    sd	$t2,1544($sp)
.L0158eb64:
    lbu	$t9,0($t1)
    lbu	$t8,1($t1)
    lbu	$t3,2($t1)
    lbu	$t2,3($t1)
    lbu	$t0,4($t1)
    lbu	$a7,5($t1)
    lbu	$a6,6($t1)
    lbu	$a5,7($t1)
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$t8
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$t2
    addu	$a4,$a4,$t0
    addiu	$t1,$t1,8
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    bne	$t1,$ra,.L0158eb64
    addu	$a4,$a4,$a5
    b	.L0158b1cc
    ld	$t2,1544($sp)
.L0158ebb4:
    sd	$t2,1400($sp)
    sd	$t1,1408($sp)
.L0158ebbc:
    lbu	$a3,0($t8)
    lbu	$a0,1($t8)
    lbu	$v1,2($t8)
    lbu	$v0,3($t8)
    lbu	$at,4($t8)
    lbu	$t3,5($t8)
    lbu	$t2,6($t8)
    lbu	$t1,7($t8)
    addu	$t0,$t0,$a3
    addu	$t0,$t0,$a0
    addu	$t0,$t0,$v1
    addu	$t0,$t0,$v0
    addu	$t0,$t0,$at
    addu	$t0,$t0,$t3
    addu	$t0,$t0,$t2
    ld	$t2,448($sp)
    addiu	$t8,$t8,8
    bne	$t8,$t2,.L0158ebbc
    addu	$t0,$t0,$t1
    ld	$t1,1408($sp)
    b	.L0158dc44
    ld	$t2,1400($sp)
.L0158ec14:
    sd	$a3,408($sp)
    sd	$a5,1528($sp)
    sd	$a4,1552($sp)
.L0158ec20:
    lbu	$t3,0($a6)
    lbu	$t1,1($a6)
    lbu	$t2,2($a6)
    addu	$t0,$t0,$t3
    addu	$t0,$t0,$t1
    lbu	$t1,3($a6)
    addu	$t0,$t0,$t2
    lbu	$t2,4($a6)
    addu	$t0,$t0,$t1
    lbu	$t1,5($a6)
    addu	$t0,$t0,$t2
    lbu	$t2,6($a6)
    addu	$t0,$t0,$t1
    addiu	$a6,$a6,8
    addu	$t0,$t0,$t2
    ld	$t2,448($sp)
    lbu	$t1,-1($a6)
    bne	$a6,$t2,.L0158ec20
    addu	$t0,$t0,$t1
    ld	$a4,1552($sp)
    ld	$a5,1528($sp)
    b	.L0158cb00
    ld	$a3,408($sp)
.L0158ec7c:
    lbu	$t9,0($t1)
    lbu	$t8,1($t1)
    lbu	$t3,2($t1)
    lbu	$t2,3($t1)
    lbu	$t0,4($t1)
    lbu	$a7,5($t1)
    lbu	$a6,6($t1)
    lbu	$a5,7($t1)
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$t8
    addu	$a4,$a4,$t3
    addu	$a4,$a4,$t2
    addu	$a4,$a4,$t0
    addiu	$t1,$t1,8
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    bne	$t1,$ra,.L0158ec7c
    addu	$a4,$a4,$a5
    b	.L0158d5f0
    slt	$a5,$s8,$a4
.L0158eccc:
    addiu	$t8,$t8,8
    lbu	$t3,-8($t8)
    lbu	$t1,-7($t8)
    lbu	$t2,-6($t8)
    addu	$t0,$t0,$t3
    addu	$t0,$t0,$t1
    lbu	$t1,-5($t8)
    addu	$t0,$t0,$t2
    lbu	$t2,-4($t8)
    addu	$t0,$t0,$t1
    lbu	$t1,-3($t8)
    addu	$t0,$t0,$t2
    lbu	$t2,-2($t8)
    addu	$t0,$t0,$t1
    lbu	$t1,-1($t8)
    addu	$t0,$t0,$t2
    bne	$t8,$ra,.L0158eccc
    addu	$t0,$t0,$t1
    b	.L0158bcec
    slt	$t1,$s2,$t0
    nop
.L0158ed20:
    b	.L0158c41c
    lh	$a4,4($t1)

glabel nfbPolyFillRect
    addiu	$sp,$sp,-8432
    move	$a4,$s8
    addiu	$s8,$sp,8432
    sd	$a4,-8352($s8)
    sd	$a1,-8304($s8)
    sd	$s1,-8384($s8)
    sd	$s7,-8392($s8)
    sd	$s2,-8400($s8)
    sd	$s3,-8408($s8)
    sd	$s4,-8416($s8)
    sd	$ra,-8320($s8)
    sd	$s5,-8312($s8)
    sd	$s0,-8328($s8)
    lui	$v1,0x1b
    lw	$at,76($a1)
    addiu	$v1,$v1,-18768
    sd	$gp,-8360($s8)
    addu	$gp,$t9,$v1
    lw	$v0,-6768($gp)
    lw	$t9,0($a1)
    sd	$s6,-8336($s8)
    sll	$v0,$v0,0x2
    lw	$t9,396($t9)
    addu	$at,$at,$v0
    lw	$at,0($at)
    sd	$at,-8344($s8)
    move	$s0,$a2
    move	$s6,$a0
    lw	$a0,8($at)
    move	$s5,$a3
    jalr	$t9
    sd	$a0,-8368($s8)
    lh	$s4,8($s6)
    lh	$a1,10($s6)
    lh	$s2,0($v0)
    lh	$s3,4($v0)
    lh	$s7,2($v0)
    ld	$a6,-8368($s8)
    ld	$t3,-8344($s8)
    lw	$a6,8($a6)
    addiu	$a2,$s8,-8232
    li	$a3,1
    lw	$t3,36($t3)
    lh	$a0,6($v0)
    li	$t9,-16
    sll	$a7,$s0,0x3
    addu	$s1,$a7,$s5
    beqz	$a6,.L0158f6ac
    lw	$t3,0($t3)
    lw	$t1,4($a6)
    mult	$t1,$s0
    mflo	$a5
    slti	$t0,$a5,1025
    bnez	$t0,.L0158f6a4
    sd	$t1,-8376($s8)
.L0158f3ec:
    sll	$t8,$a5,0x3
    addiu	$t8,$t8,15
    and	$t8,$t8,$t9
    subu	$sp,$sp,$t8
    sd	$sp,-8296($s8)
    beqz	$sp,.L0158f66c
    move	$a2,$sp
.L0158f408:
    ld	$t9,-8376($s8)
    beq	$t9,$a3,.L0158f6c8
    nop
    blez	$s0,.L0158f66c
    move	$t9,$zero
    sd	$t3,-8288($s8)
    move	$a3,$s5
    b	.L0158f780
    sd	$s6,-8280($s8)
    nop
.L0158f430:
    beq	$a3,$s1,.L0158f64c
    ld	$v0,-8368($s8)
    lh	$t3,0($a3)
.L0158f43c:
    lhu	$t8,4($a3)
    lh	$a5,2($a3)
    addu	$t3,$t3,$s4
    slt	$ra,$t3,$s2
    move	$t2,$t3
    addu	$t3,$t3,$t8
    movn	$t2,$s2,$ra
    slt	$at,$s3,$t3
    addiu	$a3,$a3,8
    movn	$t3,$s3,$at
    addu	$t0,$a5,$a1
    slt	$ra,$t2,$t3
    lhu	$a6,-2($a3)
    move	$a5,$zero
    move	$a7,$t0
    pref	0x0,248($a3)
    beqz	$ra,.L0158f430
    slt	$t1,$t0,$s7
    addu	$t0,$t0,$a6
    movn	$a7,$s7,$t1
    slt	$ra,$a0,$t0
    movn	$t0,$a0,$ra
    slt	$t8,$a7,$t0
    beqz	$t8,.L0158f430
    ld	$t1,-8376($s8)
    lw	$at,8($v0)
    addiu	$ra,$at,8
    movz	$ra,$v0,$at
    lh	$t8,6($ra)
    slt	$t8,$t8,$a7
    ld	$at,-8376($s8)
    beqz	$t8,.L0158f624
    move	$a6,$ra
.L0158f4c0:
    lh	$v1,14($a6)
    slt	$v1,$v1,$a7
    addiu	$a6,$a6,8
    addiu	$a5,$a5,1
    beqz	$v1,.L0158f508
    ld	$t1,-8376($s8)
    lh	$a4,14($a6)
    slt	$a4,$a4,$a7
    addiu	$a6,$a6,8
    addiu	$a5,$a5,1
    beqz	$a4,.L0158f508
    ld	$t1,-8376($s8)
    lh	$t1,14($a6)
    slt	$t1,$t1,$a7
    addiu	$a6,$a6,8
    bnez	$t1,.L0158f4c0
    addiu	$a5,$a5,1
    ld	$t1,-8376($s8)
.L0158f508:
    subu	$t1,$t1,$a5
    beqz	$t1,.L0158f430
    nop
    lh	$t8,2($a6)
    slt	$t8,$t8,$t0
    beqz	$t8,.L0158f430
    sll	$a6,$a5,0x3
.L0158f524:
    addu	$a6,$ra,$a6
    b	.L0158f548
    lh	$t8,2($a6)
.L0158f530:
    addiu	$a6,$a6,16
    beqz	$t1,.L0158f430
    nop
    lh	$t8,2($a6)
    slt	$ra,$t8,$t0
    beqz	$ra,.L0158f430
.L0158f548:
    slt	$v1,$t8,$a7
    lh	$a5,4($a6)
    lh	$s5,0($a6)
    slt	$a4,$a5,$t3
    lh	$ra,6($a6)
    slt	$s0,$s5,$t2
    movz	$a5,$t3,$a4
    movn	$s5,$t2,$s0
    slt	$at,$ra,$t0
    slt	$v0,$s5,$a5
    movz	$ra,$t0,$at
    move	$s0,$t8
    beqz	$v0,.L0158f5a4
    movn	$s0,$a7,$v1
    slt	$t8,$s0,$ra
    beqz	$t8,.L0158f5a4
    nop
    addiu	$a2,$a2,8
    sh	$ra,-2($a2)
    sh	$s0,-6($a2)
    sh	$a5,-4($a2)
    addiu	$t9,$t9,1
    sh	$s5,-8($a2)
.L0158f5a4:
    addiu	$t1,$t1,-1
    beqz	$t1,.L0158f430
    nop
    lh	$t8,10($a6)
    lh	$s6,8($a6)
    addiu	$t1,$t1,-1
    slt	$ra,$t8,$t0
    slt	$s0,$s6,$t2
    slt	$v1,$t8,$a7
    lh	$a5,12($a6)
    beqz	$ra,.L0158f430
    move	$s5,$s6
    movn	$s5,$t2,$s0
    slt	$a4,$a5,$t3
    movz	$a5,$t3,$a4
    move	$s0,$t8
    lh	$ra,14($a6)
    slt	$v0,$s5,$a5
    movn	$s0,$a7,$v1
    slt	$at,$ra,$t0
    beqz	$v0,.L0158f530
    movz	$ra,$t0,$at
    slt	$t8,$s0,$ra
    beqz	$t8,.L0158f530
    nop
    addiu	$a2,$a2,8
    sh	$ra,-2($a2)
    sh	$s0,-6($a2)
    sh	$a5,-4($a2)
    addiu	$t9,$t9,1
    b	.L0158f530
    sh	$s5,-8($a2)
.L0158f624:
    beqz	$at,.L0158f430
    nop
    lh	$v0,2($ra)
    slt	$v0,$v0,$t0
    beqz	$v0,.L0158f430
    nop
    b	.L0158f524
    sll	$a6,$a5,0x3
.L0158f644:
    sd	$t3,-8288($s8)
    sd	$s6,-8280($s8)
.L0158f64c:
    beqz	$t9,.L0158f66c
    sd	$t9,-8424($s8)
    ld	$a0,-8304($s8)
    ld	$t9,-8288($s8)
    ld	$a1,-8280($s8)
    ld	$a2,-8296($s8)
    jalr	$t9
    ld	$a3,-8424($s8)
.L0158f66c:
    ld	$s5,-8312($s8)
.L0158f670:
    ld	$s1,-8384($s8)
    ld	$s7,-8392($s8)
    ld	$s2,-8400($s8)
    ld	$s3,-8408($s8)
    ld	$s0,-8328($s8)
    ld	$s4,-8416($s8)
    ld	$s6,-8336($s8)
    ld	$ra,-8320($s8)
    ld	$v1,-8352($s8)
    ld	$gp,-8360($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0158f6a4:
    b	.L0158f408
    sd	$a2,-8296($s8)
.L0158f6ac:
    slti	$a5,$s0,1025
    li	$a6,1
    sd	$a6,-8376($s8)
    bnez	$a5,.L0158f6d8
    addiu	$a2,$s8,-8232
    b	.L0158f3ec
    move	$a5,$s0
.L0158f6c8:
    bgtz	$s0,.L0158f6e4
    move	$a3,$s5
    b	.L0158f670
    ld	$s5,-8312($s8)
.L0158f6d8:
    blez	$s0,.L0158f66c
    sd	$a2,-8296($s8)
    move	$a3,$s5
.L0158f6e4:
    move	$t9,$zero
    sll	$s1,$s0,0x3
    b	.L0158f708
    addu	$s1,$s1,$s5
    nop
    nop
    nop
.L0158f700:
    beq	$a3,$s1,.L0158f644
    nop
.L0158f708:
    lh	$a7,0($a3)
    lhu	$t0,4($a3)
    lh	$a6,2($a3)
    lhu	$a5,6($a3)
    addu	$a7,$a7,$s4
    slt	$at,$a7,$s2
    addu	$t0,$a7,$t0
    movn	$a7,$s2,$at
    slt	$ra,$s3,$t0
    addiu	$a3,$a3,8
    movn	$t0,$s3,$ra
    addu	$t1,$a6,$a1
    slt	$t8,$a7,$t0
    addu	$t2,$t1,$a5
    slt	$at,$t1,$s7
    pref	0x0,248($a3)
    beqz	$t8,.L0158f700
    slt	$ra,$a0,$t2
    movn	$t1,$s7,$at
    movn	$t2,$a0,$ra
    slt	$t8,$t1,$t2
    beqz	$t8,.L0158f700
    nop
    addiu	$a2,$a2,8
    sh	$t2,-2($a2)
    sh	$t1,-6($a2)
    sh	$t0,-4($a2)
    addiu	$t9,$t9,1
    b	.L0158f700
    sh	$a7,-8($a2)
.L0158f780:
    ld	$v0,-8368($s8)
    b	.L0158f43c
    lh	$t3,0($a3)

glabel nfbInstallHWColormap
    lw	$a2,12($a0)
    lw	$t2,0($a0)
    lw	$a2,116($a2)
    lw	$t2,0($t2)
    lw	$t3,80($a2)
    subu	$t2,$t2,$t3
    sll	$t1,$t2,0x2
    lw	$t0,88($a2)
    addu	$t1,$t1,$t2
    addiu	$sp,$sp,-112
    sll	$t1,$t1,0x2
    sd	$gp,64($sp)
    addu	$t0,$t0,$t1
    lw	$t0,4($t0)
    lw	$a1,116($a2)
    lw	$a4,68($a0)
    sll	$a7,$t0,0x2
    lw	$a6,124($a2)
    subu	$a7,$a7,$t0
    lw	$a5,0($a4)
    sll	$a7,$a7,0x3
    addu	$a6,$a6,$a7
    sd	$a6,48($sp)
    lui	$t1,0x1b
    lw	$a7,0($a6)
    addiu	$t1,$t1,-31856
    lw	$t0,8($a6)
    addu	$gp,$t9,$t1
    bltz	$a5,.L01592780
    lw	$a6,4($a6)
    move	$a1,$zero
    sll	$t1,$a7,0x3
    ld	$gp,64($sp)
    blez	$a7,.L0159299c
    addu	$a4,$t1,$a6
    move	$a0,$a6
.L015926c0:
    lw	$a3,0($a0)
    addiu	$a0,$a0,8
    beq	$a3,$a5,.L01592768
    sltu	$a2,$a0,$a4
    bnez	$a2,.L015926c0
    addiu	$a1,$a1,1
    blez	$a7,.L0159299c
    lw	$a1,0($sp)
    sll	$t1,$a7,0x3
    move	$a2,$zero
.L015926e8:
    move	$a0,$a6
    addu	$a4,$t1,$a6
.L015926f0:
    lw	$a5,4($a0)
    addiu	$a0,$a0,8
    beq	$a5,$a1,.L01592770
    sltu	$a5,$a0,$a4
    bnez	$a5,.L015926f0
    addiu	$a2,$a2,1
.L01592708:
    beq	$t0,$a1,.L0159275c
    lw	$t8,4($sp)
.L01592710:
    sll	$t2,$a1,0x3
    ld	$a7,48($sp)
    addu	$t2,$a6,$t2
    sll	$t8,$t8,0x3
    lw	$t3,4($t2)
    addu	$t8,$a6,$t8
    sw	$t3,4($t8)
    lw	$t1,8($a7)
    sll	$t1,$t1,0x3
    addu	$t1,$a6,$t1
    lw	$t1,4($t1)
    sw	$t1,4($t2)
    lw	$t0,8($a7)
    sll	$t0,$t0,0x3
    addu	$t0,$a6,$t0
    sw	$a1,4($t0)
    addiu	$sp,$sp,112
    jr	$ra
    sw	$a1,8($a7)
.L0159275c:
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L01592768:
    b	.L015926e8
    move	$a2,$zero
.L01592770:
    beq	$t0,$a1,.L0159275c
    sw	$a2,4($sp)
    b	.L01592710
    lw	$t8,4($sp)
.L01592780:
    sll	$v0,$t0,0x3
    addu	$v0,$a6,$v0
    lw	$v0,4($v0)
    ld	$v1,48($sp)
    sll	$at,$v0,0x3
    sw	$v0,8($v1)
    addu	$at,$a6,$at
    lw	$at,0($at)
    sll	$t9,$at,0x3
    subu	$t9,$t9,$at
    sw	$at,0($a4)
    sll	$t9,$t9,0x2
    addu	$t9,$a1,$t9
    sd	$t9,32($sp)
    lw	$t9,0($t9)
    sd	$a2,24($sp)
    sd	$a0,16($sp)
    beqz	$t9,.L01592808
    sd	$t9,8($sp)
    sd	$a1,80($sp)
    la	$a1,TellLostMap
    ld	$a2,8($sp)
    lw	$t9,-28388($gp)
    ld	$a0,16($sp)
    sd	$ra,96($sp)
    lw	$a0,12($a0)
    jalr	$t9
    addiu	$a2,$a2,8
    ld	$a2,8($sp)
    lw	$a2,68($a2)
    ld	$ra,96($sp)
    li	$a1,-1
    sw	$a1,0($a2)
    ld	$a1,80($sp)
.L01592808:
    ld	$a5,32($sp)
    lw	$a5,4($a5)
    move	$a2,$zero
    move	$a0,$zero
    blez	$a5,.L01592934
    sd	$ra,96($sp)
    sd	$ra,96($sp)
    sll	$a6,$a5,0x2
.L01592828:
    ld	$a4,32($sp)
    lw	$a4,8($a4)
    addu	$a6,$a4,$a6
    b	.L01592848
    addu	$a4,$a4,$a0
.L0159283c:
    addiu	$a2,$a2,1
    beqz	$a5,.L01592934
    addiu	$a0,$a0,4
.L01592848:
    lw	$a7,0($a4)
    sll	$a5,$a7,0x3
    subu	$a5,$a5,$a7
    sll	$a5,$a5,0x2
    addu	$a5,$a1,$a5
    sd	$a5,40($sp)
    lw	$a5,0($a5)
    addiu	$a4,$a4,4
    sd	$a5,56($sp)
    beqz	$a5,.L0159283c
    sltu	$a5,$a4,$a6
    sd	$a1,80($sp)
    sd	$a2,72($sp)
    ld	$a2,56($sp)
    sd	$a0,88($sp)
    lw	$t9,-28388($gp)
    ld	$a0,16($sp)
    la	$a1,TellLostMap
    lw	$a0,12($a0)
    jalr	$t9
    addiu	$a2,$a2,8
    ld	$v1,56($sp)
    ld	$t9,24($sp)
    lw	$a2,68($v1)
    ld	$a0,40($sp)
    li	$a1,-1
    sw	$a1,0($a2)
    sw	$zero,0($a0)
    lw	$v1,0($v1)
    lw	$a0,80($t9)
    lw	$v1,0($v1)
    subu	$v1,$v1,$a0
    sll	$v0,$v1,0x2
    lw	$at,88($t9)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,4($at)
    sll	$ra,$at,0x2
    lw	$t9,124($t9)
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x3
    addu	$t9,$t9,$ra
    lw	$t9,20($t9)
    beqz	$t9,.L0159290c
    ld	$a5,32($sp)
    jalr	$t9
    ld	$a0,56($sp)
    ld	$a5,32($sp)
.L0159290c:
    ld	$a2,72($sp)
    lw	$a5,4($a5)
    ld	$a0,88($sp)
    addiu	$a3,$a2,1
    slt	$a4,$a3,$a5
    addiu	$a0,$a0,4
    ld	$a1,80($sp)
    move	$a2,$a3
    bnez	$a4,.L01592828
    sll	$a6,$a5,0x2
.L01592934:
    ld	$a0,16($sp)
    la	$a7,rrmScreenPrivateIndex
    lw	$a0,12($a0)
    lw	$a7,0($a7)
    lw	$a6,436($a0)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lw	$a6,48($a6)
    beqz	$a6,.L01592968
    ld	$a1,32($sp)
    lw	$a1,20($a1)
    beqz	$a1,.L015929a4
.L01592968:
    ld	$t9,48($sp)
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a0,16($sp)
    la	$a1,nfbTellGainedMap
    ld	$ra,32($sp)
    lw	$t9,-28388($gp)
    ld	$a2,16($sp)
    sw	$a2,0($ra)
    jalr	$t9
    lw	$a0,12($a2)
    b	.L0159275c
    ld	$ra,96($sp)
.L0159299c:
    b	.L01592708
    lw	$a1,0($sp)
.L015929a4:
    lw	$t9,-28808($gp)
    ld	$a1,32($sp)
    jalr	$t9
    lw	$a1,16($a1)
    ld	$a3,32($sp)
    li	$a2,1
    b	.L01592968
    sw	$a2,20($a3)

glabel nfbInfPolyArc__OK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x1a
    sd	$s2,32($sp)
    addiu	$t8,$t8,32752
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a5,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t0,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L01592b5c
    lw	$a7,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t0,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L01592b5c
    sd	$a7,8($sp)
    sw	$t0,19112($gp)
    sw	$a5,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,36($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L01592b40
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01592b40:
    ld	$s1,16($sp)
.L01592b44:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01592b5c:
    lw	$t9,32($s1)
    lw	$t9,36($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a5
    jalr	$t9
    move	$a3,$a6
    b	.L01592b44
    ld	$s1,16($sp)

glabel nfbSetStereoMode
    lw	$a7,116($a0)
    move	$v0,$a3
    lw	$a6,220($a7)
    lw	$t0,0($a0)
    addiu	$sp,$sp,-224
    lui	$at,0x1a
    sd	$s3,152($sp)
    move	$s3,$a0
    addiu	$at,$at,30176
    sd	$gp,168($sp)
    beq	$a3,$a6,.L01593438
    addu	$gp,$t9,$at
    beqz	$a6,.L0159344c
    nop
    sd	$a3,144($sp)
    beqz	$a3,.L01593584
    sd	$a7,136($sp)
    ld	$s3,152($sp)
    li	$v0,8
.L0159342c:
    ld	$gp,168($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L01593438:
    move	$v0,$zero
    ld	$gp,168($sp)
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0159344c:
    beqz	$a3,.L01593584
    la	$a0,rrmScreenPrivateIndex
    lw	$t8,216($s3)
    sw	$t8,228($a7)
    lw	$t3,220($s3)
    lw	$t1,0($a0)
    sw	$t3,232($a7)
    lw	$t2,224($s3)
    sw	$t2,236($a7)
    lw	$a5,436($s3)
    sll	$t1,$t1,0x2
    addu	$a5,$a5,$t1
    lw	$a5,0($a5)
    lw	$a5,28($a5)
    sw	$a5,240($a7)
    lw	$a4,436($s3)
    addu	$a4,$a4,$t1
    lw	$a4,0($a4)
    sd	$a3,144($sp)
    lw	$a4,36($a4)
    sw	$a4,244($a7)
    lw	$a3,436($s3)
    la	$v1,nfbStereoPaintWindowBackground__BJ
    addu	$a3,$a3,$t1
    lw	$a3,0($a3)
    la	$at,nfbStereoPaintWindowBorder__AJ
    lw	$a3,76($a3)
    sw	$a3,248($a7)
    sw	$v1,216($s3)
    sw	$at,220($s3)
    lw	$t9,436($s3)
    la	$at,nfbStereoCopyWindow__CJ
    sw	$at,224($s3)
    addu	$t9,$t9,$t1
    lw	$t9,0($t9)
    la	$t8,nfbStereoValidateClip__DJ
    sw	$t8,28($t9)
    lw	$t3,436($s3)
    addu	$t3,$t3,$t1
    lw	$t3,0($t3)
    la	$t2,nfbStereoValidateSwapbuf__FJ
    sw	$t2,36($t3)
    lw	$a6,436($s3)
    addu	$a6,$a6,$t1
    lw	$a6,0($a6)
    la	$a5,nfbStereoDrawCID__EJ
    sw	$a5,76($a6)
    lh	$v1,10($s3)
    addu	$a4,$a1,$a2
    li	$a3,1
    slt	$a4,$v1,$a4
    subu	$v1,$v1,$a2
    sh	$a2,226($a7)
    movz	$v1,$a1,$a4
    beq	$v0,$a3,.L0159382c
    sh	$v1,224($a7)
    sd	$a7,136($sp)
    sd	$ra,176($sp)
    sh	$zero,48($sp)
    lh	$at,8($s3)
    sh	$zero,50($sp)
    sh	$at,52($sp)
    lhu	$t9,224($a7)
    sh	$t9,54($sp)
.L0159354c:
    sh	$zero,48($sp)
    sll	$a1,$t0,0x2
    move	$a2,$zero
    lw	$t9,340($s3)
    subu	$a1,$a1,$t0
    addiu	$a0,$gp,-6776
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    addiu	$a1,$sp,48
    addiu	$a0,$a0,25656
    jalr	$t9
    sd	$a0,128($sp)
    b	.L0159363c
    lw	$t9,-28232($gp)
.L01593584:
    lw	$t2,436($s3)
    sd	$a7,136($sp)
    la	$a5,rrmScreenPrivateIndex
    ld	$a3,136($sp)
    lw	$a5,0($a5)
    lw	$a7,228($a3)
    sw	$a7,216($s3)
    lw	$a6,232($a3)
    sw	$a6,220($s3)
    sll	$a5,$a5,0x2
    lw	$t3,236($a3)
    addu	$t2,$t2,$a5
    sw	$t3,224($s3)
    lw	$t2,0($t2)
    lw	$t1,240($a3)
    sw	$t1,28($t2)
    lw	$a7,436($s3)
    addu	$a7,$a7,$a5
    lw	$a7,0($a7)
    lw	$a6,244($a3)
    sw	$a6,36($a7)
    lw	$a4,436($s3)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    lw	$a3,248($a3)
    sw	$a3,76($a4)
    sh	$zero,48($sp)
    lh	$a2,8($s3)
    sh	$zero,50($sp)
    sh	$a2,52($sp)
    sll	$a1,$t0,0x2
    lh	$a2,10($s3)
    subu	$a1,$a1,$t0
    sh	$a2,54($sp)
    addiu	$a0,$gp,-6776
    sll	$a1,$a1,0x2
    lw	$t9,340($s3)
    sd	$v0,144($sp)
    addu	$a0,$a0,$a1
    sd	$ra,176($sp)
    addiu	$a1,$sp,48
    addiu	$a0,$a0,25656
    sd	$a0,128($sp)
    jalr	$t9
    move	$a2,$zero
    lw	$t9,-28232($gp)
.L0159363c:
    jalr	$t9
    move	$a0,$zero
    lw	$t9,-28232($gp)
    sd	$v0,104($sp)
    jalr	$t9
    move	$a0,$zero
    lh	$a6,120($s3)
    sd	$v0,120($sp)
    blez	$a6,.L0159385c
    sd	$s2,184($sp)
    lw	$s2,56($sp)
    ld	$ra,136($sp)
    sd	$s0,216($sp)
    sll	$t9,$a6,0x2
    lw	$s0,88($ra)
    move	$t3,$zero
    sd	$s4,200($sp)
    addu	$t9,$t9,$a6
    sd	$s1,208($sp)
    sll	$t9,$t9,0x2
    move	$t8,$s0
    lw	$ra,48($ra)
    b	.L015936a8
    addu	$s0,$s0,$t9
    nop
.L015936a0:
    beqz	$t9,.L01593738
    addiu	$t3,$t3,36
.L015936a8:
    lw	$at,0($t8)
    sll	$at,$at,0x2
    addu	$at,$ra,$at
    lw	$at,0($at)
    addiu	$t8,$t8,20
    bnez	$at,.L015936a0
    sltu	$t9,$t8,$s0
    lh	$s4,16($s3)
    lw	$s2,124($s3)
    move	$a6,$zero
    lw	$s1,20($s3)
    addu	$s2,$s2,$t3
    blez	$s4,.L015936a0
    sll	$t2,$s4,0x3
    move	$a7,$s1
    addu	$t0,$s1,$t2
    lh	$t1,10($s2)
    nop
.L015936f0:
    lbu	$at,0($a7)
    addiu	$a7,$a7,8
    beq	$t1,$at,.L01593720
    sltu	$t2,$a7,$t0
    beqz	$t2,.L01593720
    addiu	$a6,$a6,1
    lbu	$v0,0($a7)
    addiu	$a7,$a7,8
    beq	$t1,$v0,.L01593720
    sltu	$t2,$a7,$t0
    bnez	$t2,.L015936f0
    addiu	$a6,$a6,1
.L01593720:
    slt	$t0,$a6,$s4
    sll	$a7,$a6,0x3
    beqz	$t0,.L015936a0
    addu	$a7,$s1,$a7
    lh	$t1,2($a7)
    beqz	$t1,.L015936a0
.L01593738:
    la	$a5,serverClient
    lw	$t9,-27820($gp)
    move	$a4,$zero
    lw	$a5,0($a5)
    addiu	$a3,$sp,60
    move	$a2,$s2
    ld	$a0,120($sp)
    move	$a1,$s3
    jalr	$t9
    lw	$a5,0($a5)
    ld	$s0,216($sp)
    ld	$s1,208($sp)
    beqz	$v0,.L0159378c
    ld	$s4,200($sp)
    ld	$ra,176($sp)
    ld	$s2,184($sp)
    move	$v0,$zero
    ld	$gp,168($sp)
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0159378c:
    ld	$a0,104($sp)
    lw	$t9,-27816($gp)
    la	$t2,serverClient
    sw	$zero,64($sp)
    la	$a1,WindowTable
    ld	$a2,120($sp)
    sw	$a2,68($sp)
    lw	$a2,0($s3)
    lw	$a1,0($a1)
    lh	$a5,10($s3)
    sll	$a2,$a2,0x2
    lh	$a4,8($s3)
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$t8,$sp,64
    sw	$t8,12($sp)
    li	$ra,8200
    sw	$ra,4($sp)
    lh	$t3,10($s2)
    sw	$t3,20($sp)
    lw	$t2,0($t2)
    sw	$t2,28($sp)
    li	$a7,1
    move	$a6,$zero
    lw	$t0,0($s2)
    move	$a3,$zero
    addiu	$t1,$sp,72
    sw	$t1,44($sp)
    move	$a2,$zero
    jalr	$t9
    sw	$t0,36($sp)
    ld	$s2,184($sp)
    bnez	$v0,.L01593870
    sd	$v0,96($sp)
    ld	$ra,176($sp)
    move	$v0,$zero
    ld	$gp,168($sp)
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0159382c:
    sd	$a7,136($sp)
    sh	$zero,48($sp)
    lh	$t1,8($s3)
    sh	$t1,52($sp)
    lhu	$a6,226($a7)
    sh	$a6,50($sp)
    lhu	$a5,226($a7)
    lhu	$a4,224($a7)
    sd	$ra,176($sp)
    addu	$a4,$a4,$a5
    b	.L0159354c
    sh	$a4,54($sp)
.L0159385c:
    lw	$s2,56($sp)
    sd	$s4,200($sp)
    sd	$s1,208($sp)
    b	.L01593738
    sd	$s0,216($sp)
.L01593870:
    lw	$t9,-27864($gp)
    ld	$a0,104($sp)
    lui	$a1,0xc000
    ld	$a2,96($sp)
    jalr	$t9
    ori	$a1,$a1,0x1
    beqz	$v0,.L01593b2c
    ld	$ra,176($sp)
    ld	$a3,96($sp)
    ld	$a4,144($sp)
    lw	$a2,124($a3)
    ori	$a2,$a2,0x8000
    beqz	$a4,.L015938bc
    sw	$a2,124($a3)
    lw	$t9,-28320($gp)
    la	$a1,serverClient
    ld	$a0,96($sp)
    jalr	$t9
    lw	$a1,0($a1)
.L015938bc:
    la	$a2,WindowTable
    lw	$a3,0($s3)
    lw	$a2,0($a2)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    sd	$a2,112($sp)
    b	.L01593934
    sd	$a2,160($sp)
.L015938e0:
    lw	$t9,356($s3)
    ld	$a0,160($sp)
    addiu	$a0,$a0,72
    ld	$a2,128($sp)
    jalr	$t9
    move	$a1,$a0
    lw	$t9,356($s3)
    ld	$a0,160($sp)
    addiu	$a0,$a0,84
    ld	$a2,128($sp)
    jalr	$t9
    move	$a1,$a0
    ld	$a6,160($sp)
.L01593914:
    lw	$a1,124($a6)
    sll	$a1,$a1,0x13
    bltz	$a1,.L015939b4
    la	$a4,globalSerialNumber
.L01593924:
    lw	$a7,36($a6)
    beqz	$a7,.L01593998
    nop
    sd	$a7,160($sp)
.L01593934:
    ld	$a3,144($sp)
    ld	$a4,112($sp)
    bnez	$a3,.L015938e0
    ld	$a5,160($sp)
    bne	$a4,$a5,.L0159397c
    lw	$t9,-28420($gp)
    lw	$t9,344($s3)
    ld	$a0,160($sp)
    ld	$a1,128($sp)
    jalr	$t9
    addiu	$a0,$a0,72
    lw	$t9,344($s3)
    ld	$a0,160($sp)
    ld	$a1,128($sp)
    jalr	$t9
    addiu	$a0,$a0,84
    b	.L01593914
    ld	$a6,160($sp)
.L0159397c:
    jalr	$t9
    ld	$a0,160($sp)
    lw	$t9,-28424($gp)
    jalr	$t9
    ld	$a0,160($sp)
    b	.L01593914
    ld	$a6,160($sp)
.L01593998:
    lw	$a7,28($a6)
    beqz	$a7,.L015939d8
    ld	$a1,112($sp)
.L015939a4:
    beq	$a6,$a1,.L01593a1c
    la	$a2,inputInfo
    b	.L01593934
    sd	$a7,160($sp)
.L015939b4:
    lw	$a3,0($a4)
    lui	$a5,0x1000
    addiu	$a3,$a3,1
    li	$a7,1
    sltu	$a5,$a5,$a3
    movn	$a3,$a7,$a5
    sw	$a3,20($a6)
    b	.L01593924
    sw	$a3,0($a4)
.L015939d8:
    ld	$a4,112($sp)
    beq	$a4,$a6,.L015939a4
    nop
.L015939e4:
    lw	$a6,24($a6)
    lw	$a7,28($a6)
    bnez	$a7,.L015939a4
    ld	$a5,112($sp)
    beq	$a5,$a6,.L015939a4
    nop
    lw	$a6,24($a6)
    lw	$a7,28($a6)
    bnez	$a7,.L015939a4
    ld	$t0,112($sp)
    bne	$t0,$a6,.L015939e4
    nop
    b	.L015939a4
    nop
.L01593a1c:
    lw	$a3,0($a2)
    move	$a6,$zero
    blez	$a3,.L01593a80
    lw	$a2,4($a2)
    la	$a4,_rodata_symbol
    addiu	$a4,$a4,18752
    b	.L01593a74
    sd	$a4,88($sp)
.L01593a3c:
    lw	$t9,-28328($gp)
    ld	$a0,80($sp)
    ld	$a1,88($sp)
    jalr	$t9
    lw	$a0,72($a0)
    ld	$a2,80($sp)
    beqz	$v0,.L01593a80
    ld	$a6,192($sp)
    la	$a1,inputInfo
    lw	$a1,0($a1)
    addiu	$a6,$a6,1
    slt	$a1,$a6,$a1
    beqz	$a1,.L01593a80
    lw	$a2,20($a2)
.L01593a74:
    sd	$a2,80($sp)
    bnez	$a2,.L01593a3c
    sd	$a6,192($sp)
.L01593a80:
    ld	$a2,144($sp)
    beqz	$a2,.L01593adc
    lw	$t9,-28320($gp)
    ld	$s3,152($sp)
.L01593a90:
    ld	$a0,104($sp)
    lw	$t9,-28332($gp)
    ld	$a4,136($sp)
    ld	$a3,144($sp)
    move	$a1,$zero
    jalr	$t9
    sw	$a3,220($a4)
    lw	$t9,-28332($gp)
    ld	$a0,120($sp)
    jalr	$t9
    move	$a1,$zero
    lw	$t9,-27812($gp)
    move	$a1,$zero
    ld	$a0,112($sp)
    jalr	$t9
    move	$a2,$zero
    ld	$ra,176($sp)
    b	.L0159342c
    move	$v0,$zero
.L01593adc:
    la	$a1,serverClient
    ld	$a0,96($sp)
    jalr	$t9
    lw	$a1,0($a1)
    la	$ra,rrmScreenPrivateIndex
    lw	$ra,0($ra)
    lw	$t9,436($s3)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,76($t9)
    beqz	$t9,.L01593a90
    ld	$s3,152($sp)
    ld	$a1,96($sp)
    move	$a2,$zero
    move	$a0,$a1
    jalr	$t9
    addiu	$a1,$a1,72
    b	.L01593a90
    ld	$s3,152($sp)
.L01593b2c:
    ld	$s3,152($sp)
    b	.L0159342c
    move	$v0,$zero

glabel nfbHWStoreColors
    lw	$v0,12($a0)
    lw	$t8,0($a0)
    lw	$v0,116($v0)
    lw	$a5,0($t8)
    addiu	$sp,$sp,-80
    lw	$a7,80($v0)
    sd	$ra,56($sp)
    sd	$s1,64($sp)
    subu	$a5,$a5,$a7
    sd	$s0,72($sp)
    sll	$a4,$a5,0x2
    sll	$t3,$a1,0x2
    lw	$a3,88($v0)
    addu	$a4,$a4,$a5
    sd	$t3,8($sp)
    sll	$a4,$a4,0x2
    subu	$t3,$t3,$a1
    sd	$t3,16($sp)
    addu	$a3,$a3,$a4
    lui	$v1,0x1a
    lw	$a3,4($a3)
    li	$a6,5
    lh	$t2,4($t8)
    addiu	$v1,$v1,-24320
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    sll	$v1,$a3,0x2
    andi	$t0,$a1,0x3
    lw	$v0,124($v0)
    subu	$v1,$v1,$a3
    slti	$t1,$a1,1
    lw	$at,68($a0)
    sll	$v1,$v1,0x3
    addu	$v0,$v0,$v1
    xori	$v1,$t1,0x1
    sd	$v1,0($sp)
    sll	$t3,$t3,0x2
    li	$a7,1
    lw	$v0,16($v0)
    addiu	$a5,$at,4
    beqz	$at,.L015a0a4c
    sd	$v0,48($sp)
    beq	$t2,$a6,.L015a0a6c
    sd	$t8,32($sp)
    bne	$zero,$t1,.L015a0a4c
    move	$a4,$a2
    addu	$a6,$t3,$a2
    beqz	$t0,.L015a09b4
    sra	$t1,$a1,0x2
.L015a0984:
    lw	$t2,0($a4)
    srl	$a3,$t2,0x5
    sll	$a3,$a3,0x2
    addu	$a3,$a5,$a3
    addiu	$a4,$a4,12
    addiu	$t0,$t0,-1
    lw	$v1,0($a3)
    pref	0x0,244($a4)
    sllv	$t2,$a7,$t2
    or	$v1,$v1,$t2
    bnez	$t0,.L015a0984
    sw	$v1,0($a3)
.L015a09b4:
    beqz	$t1,.L015a0a4c
    nop
    nop
.L015a09c0:
    lw	$v0,0($a4)
    srl	$at,$v0,0x5
    sll	$at,$at,0x2
    addu	$at,$a5,$at
    lw	$ra,0($at)
    sllv	$v0,$a7,$v0
    or	$ra,$ra,$v0
    sw	$ra,0($at)
    lw	$ra,12($a4)
    srl	$t9,$ra,0x5
    sll	$t9,$t9,0x2
    addu	$t9,$a5,$t9
    lw	$t8,0($t9)
    sllv	$ra,$a7,$ra
    or	$t8,$t8,$ra
    sw	$t8,0($t9)
    lw	$t8,24($a4)
    srl	$t3,$t8,0x5
    sll	$t3,$t3,0x2
    addu	$t3,$a5,$t3
    lw	$t2,0($t3)
    sllv	$t8,$a7,$t8
    or	$t2,$t2,$t8
    sw	$t2,0($t3)
    lw	$t2,36($a4)
    srl	$t1,$t2,0x5
    sll	$t1,$t1,0x2
    addu	$t1,$a5,$t1
    addiu	$a4,$a4,48
    lw	$t0,0($t1)
    pref	0x0,208($a4)
    sllv	$t2,$a7,$t2
    or	$t0,$t0,$t2
    bne	$a4,$a6,.L015a09c0
    sw	$t0,0($t1)
.L015a0a4c:
    ld	$t9,48($sp)
.L015a0a50:
    ld	$s0,72($sp)
    jalr	$t9
    ld	$s1,64($sp)
    ld	$ra,56($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L015a0a6c:
    ld	$t8,32($sp)
    lw	$s0,32($t8)
    lw	$ra,28($t8)
    sd	$t1,40($sp)
    lw	$t1,24($t8)
    lhu	$t0,8($t8)
    ld	$t9,40($sp)
    lw	$t3,20($t8)
    addiu	$t0,$t0,7
    move	$a4,$a2
    lw	$t2,16($t8)
    sra	$t0,$t0,0x3
    lw	$t8,12($t8)
    addiu	$t0,$t0,3
    bne	$zero,$t9,.L015a0a4c
    sra	$t0,$t0,0x2
    sll	$a6,$a1,0x2
    subu	$a6,$a6,$a1
    sll	$a6,$a6,0x2
    addu	$s1,$t0,$t0
    addu	$a6,$a6,$a2
.L015a0ac0:
    lw	$v1,0($a4)
    and	$v1,$t8,$v1
    srlv	$v1,$v1,$t1
    sra	$v0,$v1,0x5
    sll	$v0,$v0,0x2
    addu	$v0,$a5,$v0
    lw	$at,0($v0)
    sllv	$v1,$a7,$v1
    or	$at,$at,$v1
    sw	$at,0($v0)
    lw	$t9,0($a4)
    and	$t9,$t2,$t9
    srlv	$t9,$t9,$ra
    sra	$a3,$t9,0x5
    addu	$a3,$t0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a5,$a3
    lw	$v1,0($a3)
    sllv	$t9,$a7,$t9
    or	$v1,$v1,$t9
    sw	$v1,0($a3)
    lw	$v0,0($a4)
    and	$v0,$t3,$v0
    srlv	$v0,$v0,$s0
    sra	$at,$v0,0x5
    addu	$at,$s1,$at
    sll	$at,$at,0x2
    addu	$at,$a5,$at
    addiu	$a4,$a4,12
    lw	$t9,0($at)
    pref	0x0,244($a4)
    sllv	$v0,$a7,$v0
    or	$t9,$t9,$v0
    bne	$a4,$a6,.L015a0ac0
    sw	$t9,0($at)
    b	.L015a0a50
    ld	$t9,48($sp)

glabel nfb8RopLoop__IH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L015a0c10
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L015a0bb4
    sra	$a3,$t0,0x2
.L015a0b8c:
    lw	$v0,0($a0)
    lw	$v1,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v0,$v0,$v1
    bnez	$a4,.L015a0b8c
    sw	$v0,-4($a1)
.L015a0bb4:
    beqz	$a3,.L015a0c10
    nop
    nop
.L015a0bc0:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    nor	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    nor	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    nor	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    nor	$a4,$a4,$a6
    bnez	$a5,.L015a0bc0
    sw	$a4,-4($a1)
.L015a0c10:
    jr	$ra
    nop

glabel nfbStereoPolyFillArc
    lw	$t8,72($a1)
    addiu	$sp,$sp,-96
    sd	$t8,56($sp)
    sd	$s5,88($sp)
    sd	$ra,48($sp)
    sd	$s0,24($sp)
    sd	$s6,16($sp)
    lw	$s6,16($a0)
    sd	$s4,64($sp)
    lw	$s6,116($s6)
    sd	$s1,72($sp)
    sd	$s3,8($sp)
    lui	$s3,0x19
    sd	$s2,0($sp)
    addiu	$s3,$s3,19920
    sd	$gp,80($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s7,32($sp)
    sll	$s2,$s2,0x2
    lhu	$s6,226($s6)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lw	$t9,-28180($gp)
    li	$at,1
    move	$s4,$a1
    lw	$s7,8($s1)
    move	$s0,$a0
    sd	$s7,40($sp)
    sll	$s7,$a2,0x2
    move	$s3,$a3
    lw	$v0,92($s1)
    subu	$s7,$s7,$a2
    move	$s2,$a2
    sw	$v0,72($a1)
    sll	$s7,$s7,0x2
    sw	$at,104($s1)
    jalr	$t9
    move	$a0,$s7
    li	$a0,1
    addu	$t0,$s7,$s3
    blez	$s2,.L015a5cdc
    move	$s5,$v0
    move	$a6,$v0
    move	$a7,$s3
    nop
    nop
.L015a5cb0:
    ldl	$t9,0($a7)
    ldr	$t9,7($a7)
    sdl	$t9,0($a6)
    sdr	$t9,7($a6)
    lwl	$t8,8($a7)
    addiu	$a7,$a7,12
    addiu	$a6,$a6,12
    lwr	$t8,-1($a7)
    swl	$t8,-4($a6)
    bne	$a7,$t0,.L015a5cb0
    swr	$t8,-1($a6)
.L015a5cdc:
    lw	$ra,16($s0)
    lw	$ra,116($ra)
    lw	$ra,220($ra)
    bne	$a0,$ra,.L015a5d70
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    subu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,48($t9)
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    addu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,48($t9)
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    b	.L015a5de8
    nop
.L015a5d70:
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    addu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,48($t9)
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    subu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,48($t9)
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
.L015a5de8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    lw	$t9,-28196($gp)
    ld	$s7,32($sp)
    ld	$v1,40($sp)
    move	$a0,$s5
    jalr	$t9
    sw	$v1,8($s1)
    ld	$ra,48($sp)
    ld	$s5,88($sp)
    ld	$gp,80($sp)
    ld	$a0,56($sp)
    sw	$a0,72($s4)
    sw	$zero,104($s1)
    ld	$s1,72($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbInfPolyText16__DL
    addiu	$sp,$sp,-16
    lui	$at,0x19
    sd	$ra,0($sp)
    addiu	$at,$at,-17888
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$ra,-6768($gp)
    lw	$t9,76($a1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,56($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbStereoPolyText16
    lw	$a6,72($a1)
    addiu	$sp,$sp,-96
    sd	$a6,56($sp)
    sd	$s4,24($sp)
    lw	$s4,16($a0)
    sd	$s1,80($sp)
    sd	$s3,8($sp)
    lui	$s3,0x18
    sd	$s2,0($sp)
    addiu	$s3,$s3,31472
    sd	$gp,72($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s5,32($sp)
    sll	$s2,$s2,0x2
    lw	$s4,116($s4)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lhu	$s4,226($s4)
    lw	$s5,8($s1)
    lw	$v1,92($s1)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s1)
    lw	$v0,16($a0)
    sd	$s7,40($sp)
    lw	$v0,116($v0)
    sd	$s0,64($sp)
    move	$s0,$a1
    lw	$v0,220($v0)
    move	$s7,$a2
    sd	$s6,16($sp)
    move	$s6,$a5
    sd	$ra,88($sp)
    move	$s3,$a3
    move	$s2,$a4
    sd	$s5,48($sp)
    beq	$at,$v0,.L015b3028
    move	$s5,$a0
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    addu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,56($t9)
    jalr	$t9
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    subu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,56($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    ld	$s2,0($sp)
.L015b2fe8:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s5,32($sp)
    ld	$s7,40($sp)
    ld	$gp,72($sp)
    ld	$v1,56($sp)
    ld	$a0,48($sp)
    sw	$a0,8($s1)
    sw	$v1,72($s0)
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    sw	$zero,104($s1)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L015b3028:
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    subu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,56($t9)
    jalr	$t9
    nop
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    addu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,56($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    b	.L015b2fe8
    ld	$s2,0($sp)

glabel nfbValidateWindowVisual
    addiu	$sp,$sp,-64
    sd	$s2,16($sp)
    sd	$s3,24($sp)
    sd	$ra,32($sp)
    sd	$s4,40($sp)
    lw	$a2,52($a0)
    sd	$s1,0($sp)
    lui	$at,0x18
    move	$s1,$a0
    sd	$s0,48($sp)
    addiu	$at,$at,1824
    sd	$gp,8($sp)
    beqz	$a2,.L015ba2e4
    addu	$gp,$t9,$at
    lw	$v0,4($a2)
    beqz	$v0,.L015ba408
    ld	$s2,16($sp)
.L015ba2e4:
    lw	$t9,-5736($gp)
    lw	$s3,132($s1)
    lw	$s2,16($s1)
    sll	$t9,$t9,0x2
    lhu	$t8,100($s1)
    addu	$s3,$s3,$t9
    lw	$s3,0($s3)
    lw	$s0,116($s2)
    bnez	$t8,.L015ba324
    lw	$s3,4($s3)
    lw	$a0,120($s1)
    beqz	$a0,.L015ba428
    nop
    lw	$ra,44($a0)
    beqz	$ra,.L015ba428
    nop
.L015ba324:
    lw	$t9,344($s2)
    sll	$s4,$s3,0x2
    lw	$a0,92($s0)
    subu	$s4,$s4,$s3
    addiu	$a1,$s1,56
    sll	$s4,$s4,0x2
    jalr	$t9
    addu	$a0,$a0,$s4
    lw	$t9,364($s2)
    lw	$a0,92($s0)
    addiu	$a2,$s1,72
    addu	$a0,$a0,$s4
    jalr	$t9
    move	$a1,$a0
    lw	$t9,360($s2)
    lw	$a0,92($s0)
    addiu	$a2,$s1,44
    addu	$a0,$a0,$s4
    jalr	$t9
    move	$a1,$a0
    lw	$a1,40($s0)
.L015ba378:
    move	$a2,$zero
    beqz	$a1,.L015ba3d4
    move	$a3,$zero
    nop
    nop
    nop
.L015ba390:
    lw	$a5,60($s0)
    addu	$a5,$a5,$a2
    sw	$zero,0($a5)
    lw	$a4,40($s0)
    addiu	$a3,$a3,1
    sltu	$a4,$a3,$a4
    addiu	$a2,$a2,4
    beqz	$a4,.L015ba3d4
    nop
    lw	$a7,60($s0)
    addu	$a7,$a7,$a2
    sw	$zero,0($a7)
    lw	$a6,40($s0)
    addiu	$a3,$a3,1
    sltu	$a6,$a3,$a6
    bnez	$a6,.L015ba390
    addiu	$a2,$a2,4
.L015ba3d4:
    lw	$t2,48($s0)
    sll	$t3,$s3,0x2
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    lw	$t1,60($s0)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    li	$t0,1
    sw	$t0,0($t1)
    lw	$t9,108($s0)
    jalr	$t9
    move	$a0,$s2
    ld	$s2,16($sp)
.L015ba408:
    ld	$s3,24($sp)
    ld	$s4,40($sp)
    ld	$ra,32($sp)
    ld	$s0,48($sp)
    ld	$s1,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015ba428:
    lw	$t9,344($s2)
    sll	$a2,$s3,0x2
    lw	$a0,92($s0)
    subu	$a2,$a2,$s3
    addiu	$a1,$s1,44
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    b	.L015ba378
    lw	$a1,40($s0)

glabel nfbInfImageText8__EL
    addiu	$sp,$sp,-16
    lui	$at,0x18
    sd	$ra,0($sp)
    addiu	$at,$at,1392
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$ra,-6768($gp)
    lw	$t9,76($a1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,60($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbValidateGC__CK
    addiu	$sp,$sp,-144
    sd	$ra,96($sp)
    sd	$s3,88($sp)
    sd	$s0,64($sp)
    sd	$s2,80($sp)
    lui	$s2,0x18
    sd	$s1,56($sp)
    addiu	$s2,$s2,-21632
    sd	$gp,72($sp)
    addu	$gp,$t9,$s2
    lw	$s1,-6768($gp)
    lw	$s0,76($a0)
    lw	$a6,16($a2)
    sll	$s1,$s1,0x2
    lbu	$at,0($a2)
    addu	$s0,$s0,$s1
    li	$a5,1
    lw	$s0,0($s0)
    move	$s3,$a1
    lw	$a6,116($a6)
    move	$s2,$a2
    move	$s1,$a0
    beqz	$at,.L015bff6c
    lbu	$a4,20($s0)
    beq	$a5,$a4,.L015c0038
    li	$a1,8
    sb	$a5,20($s0)
    lw	$a0,72($a0)
    lw	$t8,80($a0)
    beqz	$t8,.L015bfec8
    lw	$t9,-28196($gp)
    jalr	$t9
    nop
    li	$a1,8
.L015bfec8:
    lw	$a0,32($s0)
    beqz	$a0,.L015bfeec
    lw	$t9,-28196($gp)
    lw	$ra,80($a0)
    beqz	$ra,.L015bfeec
    nop
    jalr	$t9
    nop
    li	$a1,8
.L015bfeec:
    lbu	$a4,3($s2)
    beq	$a1,$a4,.L015c02a8
    li	$at,16
    beq	$a4,$at,.L015c02b8
    li	$v0,32
    beq	$a4,$v0,.L015c02c8
.L015bff04:
    li	$s3,-1
.L015bff08:
    beq	$a4,$a1,.L015c04a8
    lw	$t9,-29300($gp)
    li	$v1,16
    beq	$a4,$v1,.L015c030c
    li	$a0,32
    beq	$a4,$a0,.L015c0290
    lw	$t9,-30932($gp)
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,19032
    la	$a1,nfbCopyPlane
.L015bff38:
    la	$a3,nfbCopyArea
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    lw	$a4,72($s1)
    ld	$ra,96($sp)
    sw	$a3,12($a4)
    lw	$a2,72($s1)
    ld	$s1,56($sp)
    addiu	$sp,$sp,144
    jr	$ra
    sw	$a1,16($a2)
.L015bff6c:
    beq	$a5,$a4,.L015c0350
    sd	$a6,48($sp)
    la	$a1,dbcWindowPrivateIndex
    lw	$a1,0($a1)
    lw	$a0,132($a2)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lb	$a0,1($a0)
    lbu	$a5,21($s0)
    beq	$a0,$a5,.L015bffa4
    lui	$a2,0xe
.L015bff98:
    sb	$a0,21($s0)
    ori	$s3,$s3,0xe
    lui	$a2,0xe
.L015bffa4:
    ori	$a2,$a2,0x8000
    and	$a2,$s3,$a2
    beqz	$a2,.L015c03e0
    nop
.L015bffb4:
    lw	$a2,16($s1)
.L015bffb8:
    li	$a3,1
    srl	$a4,$a2,0x15
    and	$a4,$a3,$a4
    lw	$a5,0($s1)
    beq	$a3,$a4,.L015c04ec
    sd	$a5,40($sp)
    addiu	$a5,$s2,44
    sd	$a5,32($sp)
    sd	$zero,16($sp)
.L015bffdc:
    srl	$a6,$a2,0x12
    lw	$a5,0($s0)
    andi	$a6,$a6,0x3
    srl	$a4,$a5,0x6
    bnez	$a6,.L015c0040
    andi	$a4,$a4,0x1
    beqz	$a4,.L015c0014
    ld	$at,16($sp)
    ld	$t9,40($sp)
    lw	$t9,348($t9)
    jalr	$t9
    lw	$a0,8($s0)
    lw	$a5,0($s0)
    ld	$at,16($sp)
.L015c0014:
    ld	$v0,32($sp)
    li	$ra,-65
    andi	$at,$at,0x1
    sw	$v0,8($s0)
    and	$ra,$a5,$ra
    sll	$at,$at,0x6
    or	$ra,$ra,$at
    b	.L015c00e4
    sw	$ra,0($s0)
.L015c0038:
    b	.L015bff08
    lbu	$a4,3($a2)
.L015c0040:
    lh	$a3,48($s1)
    sd	$a4,8($sp)
    lh	$a4,50($s1)
    ld	$t9,40($sp)
    lh	$a2,10($s2)
    lw	$t9,376($t9)
    lh	$a1,8($s2)
    addu	$a2,$a2,$a4
    lw	$a0,56($s1)
    jalr	$t9
    addu	$a1,$a1,$a3
    ld	$ra,8($sp)
    beqz	$ra,.L015c0328
    ld	$t1,16($sp)
    lw	$t9,0($s1)
    lw	$t9,356($t9)
    lw	$a2,56($s1)
    ld	$a1,32($sp)
    jalr	$t9
    lw	$a0,8($s0)
    ld	$ra,16($sp)
    beqz	$ra,.L015c00a8
    ld	$t9,40($sp)
    lw	$t9,348($t9)
    jalr	$t9
    ld	$a0,32($sp)
.L015c00a8:
    lw	$ra,0($s0)
.L015c00ac:
    ld	$t9,40($sp)
    ori	$ra,$ra,0x40
    sw	$ra,0($s0)
    lw	$t9,376($t9)
    lh	$a3,48($s1)
    lh	$a4,50($s1)
    lh	$a2,10($s2)
    lh	$a1,8($s2)
    addu	$a2,$a2,$a4
    addu	$a1,$a1,$a3
    negu	$a2,$a2
    lw	$a0,56($s1)
    jalr	$t9
    negu	$a1,$a1
.L015c00e4:
    ld	$at,48($sp)
    lw	$at,220($at)
    beqz	$at,.L015c0100
    andi	$v1,$s3,0x10f
    lw	$v0,104($s0)
    beqz	$v0,.L015c0404
    andi	$v1,$s3,0x10f
.L015c0100:
    beqz	$v1,.L015c016c
    lw	$ra,-5736($gp)
    lw	$a2,-6768($gp)
    lw	$a1,76($s1)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    lw	$a5,24($s1)
    sw	$a5,64($a1)
    sw	$a5,40($a1)
    lw	$a4,28($s1)
    sw	$a4,68($a1)
    sw	$a4,44($a1)
    lw	$a3,20($s1)
    sw	$a3,76($a1)
    sw	$a3,52($a1)
    lbu	$a2,5($s1)
    sb	$a2,72($a1)
    sb	$a2,48($a1)
    lw	$a0,16($s1)
    sw	$zero,60($a1)
    sw	$zero,84($a1)
    srl	$a0,$a0,0x18
    andi	$a0,$a0,0x3
    sw	$a0,56($a1)
    sw	$a0,80($a1)
    lw	$ra,-5736($gp)
.L015c016c:
    lw	$t9,132($s2)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    move	$a2,$s2
    move	$a1,$s3
    lw	$a3,72($s1)
    move	$a0,$s1
    jalr	$t9
    sd	$a3,24($sp)
    ld	$a1,24($sp)
    lw	$a0,16($s1)
    lw	$a2,72($s1)
    andi	$a3,$s3,0x8000
    srl	$a0,$a0,0x15
    xor	$a1,$a2,$a1
    andi	$a0,$a0,0x1
    beqz	$a3,.L015c02d8
    sltu	$a1,$zero,$a1
    li	$a3,1
    beq	$a3,$a0,.L015c02e4
    nop
    lw	$a0,32($s0)
    beqz	$a0,.L015c01e0
    nop
    sw	$a0,72($s1)
    sw	$zero,32($s0)
.L015c01e0:
    ld	$a4,48($sp)
.L015c01e4:
    lw	$a4,220($a4)
    beqz	$a4,.L015c0244
    addiu	$a4,$gp,-27584
    lw	$a5,104($s0)
    bnez	$a5,.L015c0260
    nop
    lw	$a6,92($s0)
    beqz	$a6,.L015c020c
    move	$a2,$a6
    beqz	$a1,.L015c050c
.L015c020c:
    la	$a0,_data_symbol
    lw	$a1,72($s1)
    sw	$a1,92($s0)
    addiu	$a0,$a0,2696
    sw	$a0,72($s1)
    lw	$a2,92($s0)
.L015c0224:
    addiu	$a1,$a4,18408
    bne	$a2,$a1,.L015c03c0
    nop
    sw	$a1,72($s1)
    lw	$a2,32($s0)
    sw	$a0,32($s0)
    b	.L015c0260
    sw	$a2,92($s0)
.L015c0244:
    la	$a0,_data_symbol
    lw	$a3,72($s1)
    addiu	$a0,$a0,2696
    bne	$a3,$a0,.L015c04c0
    lw	$a2,92($s0)
    sw	$a2,72($s1)
.L015c025c:
    sw	$zero,92($s0)
.L015c0260:
    ld	$gp,72($sp)
.L015c0264:
    ld	$s0,64($sp)
    ld	$s3,88($sp)
    lh	$a2,8($s2)
    sh	$a2,52($s1)
    lh	$a1,10($s2)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    sh	$a1,54($s1)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L015c0290:
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s2
    b	.L015bff38
    la	$a1,nfbCopyPlane
.L015c02a8:
    addiu	$a3,$gp,-9088
    sw	$a3,72($s1)
    b	.L015bff04
    lbu	$a4,3($s2)
.L015c02b8:
    addiu	$a4,$gp,-9000
    sw	$a4,72($s1)
    b	.L015bff04
    lbu	$a4,3($s2)
.L015c02c8:
    addiu	$a5,$gp,-8912
    sw	$a5,72($s1)
    b	.L015bff04
    lbu	$a4,3($s2)
.L015c02d8:
    li	$a6,1
    bne	$a6,$a0,.L015c01e4
    ld	$a4,48($sp)
.L015c02e4:
    lw	$a7,32($s0)
    beqz	$a7,.L015c02f8
    addiu	$t0,$gp,-27584
    beqz	$a1,.L015c0304
    addiu	$t0,$gp,-27584
.L015c02f8:
    sw	$a2,32($s0)
    addiu	$t0,$t0,18408
    sw	$t0,72($s1)
.L015c0304:
    b	.L015c01e4
    ld	$a4,48($sp)
.L015c030c:
    lw	$t9,-29016($gp)
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s2
    b	.L015bff38
    la	$a1,nfbCopyPlane
.L015c0328:
    beqz	$t1,.L015c0518
    ld	$t9,40($sp)
    lw	$t9,356($t9)
    ld	$a1,32($sp)
    lw	$a2,56($s1)
    jalr	$t9
    move	$a0,$a1
    ld	$ra,32($sp)
    b	.L015c00a8
    sw	$ra,8($s0)
.L015c0350:
    lw	$a0,72($a0)
    lw	$at,80($a0)
    beqz	$at,.L015c036c
    lw	$t9,-28196($gp)
    jalr	$t9
    nop
    sw	$zero,72($s1)
.L015c036c:
    lw	$a0,32($s0)
    beqz	$a0,.L015c0390
    lw	$t9,-28196($gp)
    lw	$v0,80($a0)
    beqz	$v0,.L015c038c
    nop
    jalr	$t9
    nop
.L015c038c:
    sw	$zero,32($s0)
.L015c0390:
    la	$a1,dbcWindowPrivateIndex
    lw	$a1,0($a1)
    sb	$zero,20($s0)
    lw	$a0,132($s2)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lb	$a0,1($a0)
    lbu	$v1,21($s0)
    beq	$a0,$v1,.L015c04e4
    nop
    b	.L015bff98
    li	$s3,-1
.L015c03c0:
    lw	$a2,72($s1)
    bne	$a2,$a0,.L015c0264
    ld	$gp,72($sp)
    lw	$a3,32($s0)
    bne	$a3,$a0,.L015c0264
    ld	$gp,72($sp)
    b	.L015c0260
    sw	$a1,72($s1)
.L015c03e0:
    lw	$a5,64($s1)
    lui	$a6,0x7fff
    lw	$a4,20($s2)
    ori	$a6,$a6,0xffff
    and	$a5,$a5,$a6
    beq	$a4,$a5,.L015c0100
    andi	$v1,$s3,0x10f
    b	.L015bffb8
    lw	$a2,16($s1)
.L015c0404:
    lw	$a7,96($s0)
    beqz	$a7,.L015c05d0
    ld	$t9,40($sp)
.L015c0410:
    sh	$zero,0($sp)
    ld	$t2,40($sp)
    ld	$t1,48($sp)
    lh	$t2,8($t2)
    sh	$t2,4($sp)
    lw	$t1,220($t1)
    li	$t0,1
    beq	$t0,$t1,.L015c0550
    ld	$at,48($sp)
    sh	$zero,2($sp)
    ld	$ra,48($sp)
    ld	$t9,40($sp)
    lhu	$ra,224($ra)
    sh	$ra,6($sp)
    lw	$t9,372($t9)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,96($s0)
    ld	$t9,40($sp)
    lw	$t9,356($t9)
    lw	$a0,96($s0)
    lw	$a2,8($s0)
    jalr	$t9
    move	$a1,$a0
    ld	$t9,40($sp)
    lw	$t9,344($t9)
    lw	$a1,96($s0)
    jalr	$t9
    lw	$a0,100($s0)
    ld	$t9,40($sp)
    lw	$t9,376($t9)
    ld	$a2,48($sp)
    lw	$a0,100($s0)
    move	$a1,$zero
    jalr	$t9
    lhu	$a2,226($a2)
    b	.L015c0100
    andi	$v1,$s3,0x10f
.L015c04a8:
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s2
    b	.L015bff38
    la	$a1,nfbCopyPlane
.L015c04c0:
    beqz	$a2,.L015c025c
    nop
    lw	$ra,32($s0)
    bne	$ra,$a0,.L015c025c
    nop
    bnez	$a1,.L015c025c
    nop
    b	.L015c025c
    sw	$a2,32($s0)
.L015c04e4:
    b	.L015bffb4
    li	$s3,-1
.L015c04ec:
    lw	$t9,-28188($gp)
    jalr	$t9
    move	$a0,$s2
    sd	$v0,32($sp)
    li	$at,1
    sd	$at,16($sp)
    b	.L015bffdc
    lw	$a2,16($s1)
.L015c050c:
    la	$a0,_data_symbol
    b	.L015c0224
    addiu	$a0,$a0,2696
.L015c0518:
    ld	$t9,40($sp)
    lw	$t9,336($t9)
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    ld	$t9,40($sp)
    sw	$v0,8($s0)
    lw	$t9,356($t9)
    ld	$a1,32($sp)
    move	$a0,$v0
    jalr	$t9
    lw	$a2,56($s1)
    b	.L015c00ac
    lw	$ra,0($s0)
.L015c0550:
    lhu	$v0,226($at)
    sh	$v0,2($sp)
    lhu	$ra,224($at)
    lhu	$at,226($at)
    ld	$t9,40($sp)
    addu	$ra,$ra,$at
    sh	$ra,6($sp)
    lw	$t9,372($t9)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,100($s0)
    ld	$t9,40($sp)
    lw	$t9,356($t9)
    lw	$a0,100($s0)
    lw	$a2,8($s0)
    jalr	$t9
    move	$a1,$a0
    ld	$t9,40($sp)
    lw	$t9,344($t9)
    lw	$a1,100($s0)
    jalr	$t9
    lw	$a0,96($s0)
    ld	$t9,40($sp)
    ld	$a2,48($sp)
    lw	$t9,376($t9)
    lhu	$a2,226($a2)
    move	$a1,$zero
    lw	$a0,96($s0)
    jalr	$t9
    negu	$a2,$a2
    b	.L015c0100
    andi	$v1,$s3,0x10f
.L015c05d0:
    lw	$t9,336($t9)
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    ld	$t9,40($sp)
    sw	$v0,96($s0)
    lw	$t9,336($t9)
    move	$a1,$zero
    jalr	$t9
    move	$a0,$zero
    b	.L015c0410
    sw	$v0,100($s0)

glabel nfb4RopLoop__EH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L015d2a10
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L015d29a8
    sra	$a3,$t0,0x2
.L015d297c:
    lw	$v1,0($a0)
    lw	$v0,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    bnez	$a4,.L015d297c
    sw	$v0,-4($a1)
.L015d29a8:
    beqz	$a3,.L015d2a10
    nop
.L015d29b0:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t2,4($a0)
    lw	$t1,4($a1)
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$t0,8($a0)
    lw	$a7,8($a1)
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a6,12($a0)
    lw	$a4,12($a1)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    nor	$a6,$a6,$zero
    and	$a4,$a4,$a6
    bnez	$a5,.L015d29b0
    sw	$a4,-4($a1)
.L015d2a10:
    jr	$ra
    nop

glabel nfbAbort
    lui	$at,0x15
    addiu	$sp,$sp,-16
    addiu	$at,$at,20304
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$t9,-27824($gp)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbTellGainedMap
    addiu	$sp,$sp,-112
    sd	$s0,56($sp)
    move	$s0,$a1
    lbu	$at,1($a0)
    sd	$s1,48($sp)
    li	$v0,2
    lui	$v1,0x15
    move	$s1,$a0
    sd	$ra,96($sp)
    addiu	$v1,$v1,17984
    sd	$gp,64($sp)
    beq	$at,$v0,.L015e64bc
    addu	$gp,$t9,$v1
    lw	$a1,120($a0)
    beqz	$a1,.L015e64e8
    lw	$t9,-28356($gp)
    lw	$a0,8($a1)
.L015e63c4:
    lw	$a1,8($s0)
    bne	$a1,$a0,.L015e64a4
    ld	$ra,96($sp)
    lw	$t9,-27924($gp)
.L015e63d4:
    lw	$a7,132($s1)
    lw	$t2,-5736($gp)
    la	$ra,rrmScreenPrivateIndex
    lw	$t0,16($s1)
    lw	$ra,0($ra)
    sll	$t2,$t2,0x2
    addu	$a7,$a7,$t2
    lw	$t3,436($t0)
    sll	$ra,$ra,0x2
    lw	$a7,0($a7)
    sd	$a7,88($sp)
    addu	$t3,$t3,$ra
    lw	$t3,0($t3)
    lw	$t8,68($s0)
    sd	$t3,40($sp)
    lw	$t8,0($t8)
    lw	$t0,116($t0)
    sd	$t0,32($sp)
    sll	$t1,$t8,0x3
    lw	$t0,116($t0)
    subu	$t1,$t1,$t8
    lw	$a7,4($a7)
    sll	$t1,$t1,0x2
    sd	$a7,80($sp)
    addu	$t0,$t0,$t1
    lw	$t0,16($t0)
    sd	$t0,72($sp)
    li	$a6,32
    sb	$a6,0($sp)
    lw	$a5,4($s1)
    sw	$a5,4($sp)
    lw	$a4,8($s0)
    li	$a2,1
    sb	$a2,13($sp)
    move	$a3,$zero
    addiu	$a1,$sp,0
    sb	$zero,12($sp)
    move	$a0,$s1
    jalr	$t9
    sw	$a4,8($sp)
    ld	$a3,88($sp)
    lw	$a0,32($a3)
    andi	$a2,$a0,0x2
    ld	$a1,80($sp)
    ld	$a4,72($sp)
    beqz	$a2,.L015e64a0
    andi	$a0,$a0,0x1
    beqz	$a0,.L015e64fc
    ld	$t9,32($sp)
    bne	$a4,$a1,.L015e64d0
    ld	$t9,40($sp)
.L015e64a0:
    ld	$ra,96($sp)
.L015e64a4:
    ld	$s1,48($sp)
    li	$v0,1
    ld	$s0,56($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L015e64bc:
    lw	$a3,8($a1)
    bnez	$a3,.L015e64a4
    ld	$ra,96($sp)
    b	.L015e63d4
    lw	$t9,-27924($gp)
.L015e64d0:
    sw	$a4,4($a3)
    lw	$t9,72($t9)
    jalr	$t9
    move	$a0,$s1
    b	.L015e64a4
    ld	$ra,96($sp)
.L015e64e8:
    jalr	$t9
    nop
    lw	$a0,120($v0)
    b	.L015e63c4
    lw	$a0,8($a0)
.L015e64fc:
    lw	$t9,200($t9)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L015e64a4
    ld	$ra,96($sp)

glabel nfbChangeWindowAttributes
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$s2,56($sp)
    sd	$s0,16($sp)
    lbu	$at,1($a0)
    sd	$s1,32($sp)
    lw	$s1,132($a0)
    lw	$t8,16($a0)
    sd	$s5,24($sp)
    lui	$a3,0x15
    lw	$v1,436($t8)
    addiu	$a3,$a3,13024
    sd	$gp,40($sp)
    addu	$gp,$t9,$a3
    la	$a2,rrmScreenPrivateIndex
    lw	$s5,-5736($gp)
    lw	$a2,0($a2)
    lw	$t8,116($t8)
    sll	$s5,$s5,0x2
    sd	$t8,8($sp)
    addu	$s1,$s1,$s5
    sll	$a2,$a2,0x2
    li	$v0,2
    lw	$s1,0($s1)
    addu	$v1,$v1,$a2
    move	$s0,$a0
    move	$s2,$zero
    lw	$v1,0($v1)
    move	$s5,$a1
    beq	$v0,$at,.L015e776c
    sd	$v1,0($sp)
    lw	$a4,120($a0)
    beqz	$a4,.L015e7924
    lw	$t9,-28356($gp)
    lw	$s2,8($a4)
.L015e776c:
    li	$v0,-1
    sw	$v0,8($s1)
    lw	$at,108($s0)
    sw	$at,12($s1)
    lw	$ra,112($s0)
    sw	$ra,16($s1)
    lw	$t9,16($s0)
    lw	$t9,116($t9)
    lw	$t9,196($t9)
    jalr	$t9
    move	$a0,$s0
    andi	$v1,$s5,0x2000
    beqz	$v1,.L015e781c
    nop
    lw	$a0,24($s0)
    beqz	$a0,.L015e7848
    nop
    lbu	$a2,1($a0)
    li	$a1,2
    beq	$a1,$a2,.L015e7840
    nop
    lw	$v0,120($a0)
    beqz	$v0,.L015e7938
    lw	$t9,-28356($gp)
    lw	$a0,8($v0)
.L015e77d0:
    beq	$s2,$a0,.L015e7848
    nop
.L015e77d8:
    lw	$v0,32($s1)
    andi	$a3,$v0,0x10
    beqz	$a3,.L015e794c
    lw	$t9,-30072($gp)
.L015e77e8:
    bnez	$s2,.L015e7874
    lw	$t9,-27920($gp)
    lw	$a4,32($s1)
    andi	$a4,$a4,0x1
    beqz	$a4,.L015e781c
    lw	$a1,4($s1)
    beqz	$a1,.L015e781c
    move	$a4,$zero
    ld	$t9,0($sp)
.L015e780c:
    sw	$a4,4($s1)
    lw	$t9,72($t9)
    jalr	$t9
    move	$a0,$s0
.L015e781c:
    ld	$s0,16($sp)
.L015e7820:
    ld	$s2,56($sp)
    ld	$ra,48($sp)
    ld	$s5,24($sp)
    li	$v0,1
    ld	$s1,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L015e7840:
    bnez	$s2,.L015e77d8
    nop
.L015e7848:
    lw	$v0,32($s1)
    andi	$ra,$v0,0x10
    beqz	$ra,.L015e77e8
    lw	$t9,-30072($gp)
    move	$a0,$s0
    li	$at,-17
    and	$at,$v0,$at
    jalr	$t9
    sw	$at,32($s1)
    b	.L015e77e8
    nop
.L015e7874:
    move	$a0,$s2
    jalr	$t9
    li	$a1,6
    lw	$a0,68($v0)
    lw	$a0,0($a0)
    move	$s2,$v0
    ld	$a4,8($sp)
    bltz	$a0,.L015e78cc
    sll	$a5,$a0,0x3
    lw	$a4,116($a4)
    subu	$a6,$a5,$a0
    sll	$a6,$a6,0x2
    addu	$a4,$a4,$a6
    lw	$a4,16($a4)
.L015e78ac:
    lw	$a5,32($s1)
    andi	$a5,$a5,0x1
    beqz	$a5,.L015e7904
    lw	$a1,4($s1)
    beq	$a1,$a4,.L015e781c
    nop
    b	.L015e780c
    ld	$t9,0($sp)
.L015e78cc:
    lw	$a4,120($s0)
    beqz	$a4,.L015e7964
    lw	$t9,-28356($gp)
    lw	$a0,0($a4)
.L015e78dc:
    ld	$a4,8($sp)
    lw	$a6,80($a4)
    subu	$a6,$a0,$a6
    sll	$a5,$a6,0x2
    lw	$a4,88($a4)
    addu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    b	.L015e78ac
    lw	$a4,0($a4)
.L015e7904:
    beqz	$s2,.L015e781c
    ld	$t9,8($sp)
    lw	$t9,200($t9)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    b	.L015e7820
    ld	$s0,16($sp)
.L015e7924:
    jalr	$t9
    nop
    lw	$s2,120($v0)
    b	.L015e776c
    lw	$s2,8($s2)
.L015e7938:
    jalr	$t9
    nop
    lw	$a0,120($v0)
    b	.L015e77d0
    lw	$a0,8($a0)
.L015e794c:
    move	$a0,$s0
    ori	$a1,$v0,0x10
    jalr	$t9
    sw	$a1,32($s1)
    b	.L015e77e8
    nop
.L015e7964:
    jalr	$t9
    move	$a0,$s0
    lw	$a0,120($v0)
    b	.L015e78dc
    lw	$a0,0($a0)

glabel nfbGetLayerWindow
    addiu	$sp,$sp,-96
    sd	$s2,64($sp)
    lui	$t3,0x15
    lw	$s2,36($a0)
    addiu	$t3,$t3,12352
    sd	$s1,56($sp)
    addu	$at,$t9,$t3
    lw	$t2,-5736($at)
    lw	$a5,132($a0)
    sd	$s0,40($sp)
    sll	$t2,$t2,0x2
    sd	$ra,72($sp)
    addu	$a5,$a5,$t2
    lw	$a5,0($a5)
    sd	$s3,80($sp)
    lw	$v0,28($a5)
    move	$a4,$zero
    lw	$s3,16($a0)
    move	$a3,$zero
    move	$ra,$zero
    sd	$s5,32($sp)
    move	$t3,$zero
    beqz	$v0,.L015e7d2c
    lw	$s3,116($s3)
    move	$a5,$s2
    beqz	$s2,.L015e7ae4
    sd	$s4,48($sp)
    move	$t0,$zero
    move	$s4,$zero
    b	.L015e7a7c
    li	$t1,1
.L015e79fc:
    move	$t8,$zero
.L015e7a00:
    sll	$a2,$a7,0x2
    sw	$t0,72($s3)
    beqz	$s0,.L015e7bfc
    addu	$a2,$s0,$a2
    lw	$t9,0($a2)
    sllv	$a6,$t1,$s5
    and	$a6,$t9,$a6
    beqz	$a6,.L015e7a70
    move	$a2,$a5
    lw	$a6,24($a5)
    nop
    nop
.L015e7a30:
    lw	$a7,24($a6)
    beqz	$a7,.L015e7a68
    slt	$v1,$s4,$t8
    lw	$v0,132($a7)
    addu	$v0,$v0,$t2
    lw	$v0,0($v0)
    lw	$v0,24($v0)
    sllv	$v0,$t1,$v0
    and	$v0,$t9,$v0
    addiu	$t8,$t8,1
    move	$a2,$a6
    bnez	$v0,.L015e7a30
    move	$a6,$a7
    slt	$v1,$s4,$t8
.L015e7a68:
    movn	$s2,$a2,$v1
    movn	$s4,$t8,$v1
.L015e7a70:
    lw	$a5,28($a5)
    beqz	$a5,.L015e7ae8
    ld	$s0,40($sp)
.L015e7a7c:
    lw	$a0,124($a5)
    sll	$a0,$a0,0x15
    bgez	$a0,.L015e7a70
    nop
    lw	$s0,56($s3)
    lw	$s5,24($a5)
    sd	$s5,0($sp)
    lw	$a2,132($a5)
    lw	$s5,132($s5)
    sd	$s5,8($sp)
    addu	$a2,$t2,$a2
    lw	$a2,0($a2)
    addu	$s5,$s5,$t2
    sd	$s5,16($sp)
    lw	$a7,24($a2)
    lw	$a2,28($a2)
    lw	$s5,0($s5)
    sd	$s5,24($sp)
    sllv	$a1,$t1,$a7
    lw	$s5,24($s5)
    beqz	$a2,.L015e79fc
    or	$t0,$t0,$a1
    beqz	$s0,.L015e7c50
    lw	$a2,36($a5)
    b	.L015e7b54
    lw	$v1,124($a2)
.L015e7ae4:
    ld	$s0,40($sp)
.L015e7ae8:
    ld	$s1,56($sp)
    move	$v0,$s2
    ld	$s2,64($sp)
    ld	$ra,72($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
    nop
.L015e7b10:
    sll	$v0,$t8,0x2
    addu	$v0,$s0,$v0
    lw	$v0,0($v0)
    and	$v0,$v0,$v1
    movn	$a7,$t8,$v0
.L015e7b24:
    beqz	$a6,.L015e7b34
    nop
    movn	$a2,$a6,$t9
    movn	$a4,$a3,$t9
.L015e7b34:
    move	$a3,$a4
    nop
    nop
.L015e7b40:
    beqz	$a3,.L015e7ba0
    nop
.L015e7b48:
    move	$a3,$zero
    move	$a4,$zero
    lw	$v1,124($a2)
.L015e7b54:
    sll	$v1,$v1,0x15
    bgez	$v1,.L015e7b40
    nop
    lw	$s1,132($a2)
    addu	$s1,$t2,$s1
    lw	$s1,0($s1)
    lw	$t8,24($s1)
    sllv	$v1,$t1,$a7
    li	$a3,1
    lw	$a6,36($a2)
    sllv	$a0,$t1,$t8
    lw	$t9,28($s1)
    bnez	$a7,.L015e7b10
    or	$t0,$t0,$a0
    b	.L015e7b24
    nop
    nop
    nop
    nop
.L015e7ba0:
    lw	$a6,28($a2)
    beqz	$a6,.L015e7bbc
    nop
.L015e7bac:
    beq	$a2,$a5,.L015e7a00
    move	$t8,$zero
    b	.L015e7b48
    move	$a2,$a6
.L015e7bbc:
    beq	$a2,$a5,.L015e7a00
    move	$t8,$zero
.L015e7bc4:
    lw	$a2,24($a2)
    lw	$a6,28($a2)
    bnez	$a6,.L015e7bac
    nop
    beq	$a5,$a2,.L015e7bac
    nop
    lw	$a2,24($a2)
    lw	$a6,28($a2)
    bnez	$a6,.L015e7bac
    nop
    bne	$a5,$a2,.L015e7bc4
    nop
    b	.L015e7bac
    nop
.L015e7bfc:
    slt	$t8,$a7,$s5
    beqz	$t8,.L015e7a70
    move	$a2,$a5
    lw	$a6,24($a5)
    move	$t8,$zero
.L015e7c10:
    lw	$t9,24($a6)
    beqz	$t9,.L015e7c44
    slt	$v1,$s4,$t8
    lw	$v0,132($t9)
    addu	$v0,$v0,$t2
    lw	$v0,0($v0)
    lw	$v0,24($v0)
    slt	$v0,$a7,$v0
    addiu	$t8,$t8,1
    move	$a2,$a6
    bnez	$v0,.L015e7c10
    move	$a6,$t9
    slt	$v1,$s4,$t8
.L015e7c44:
    movn	$s2,$a2,$v1
    b	.L015e7a70
    movn	$s4,$t8,$v1
.L015e7c50:
    b	.L015e7c84
    lw	$a6,124($a2)
.L015e7c58:
    lw	$a0,28($s1)
    movn	$a2,$a6,$a0
    movn	$ra,$a1,$a0
.L015e7c64:
    move	$t3,$ra
    nop
    nop
.L015e7c70:
    beqz	$t3,.L015e7cd0
    nop
.L015e7c78:
    move	$t3,$zero
    move	$ra,$zero
    lw	$a6,124($a2)
.L015e7c84:
    sll	$a6,$a6,0x15
    bgez	$a6,.L015e7c70
    nop
    lw	$s1,132($a2)
    addu	$s1,$t2,$s1
    lw	$s1,0($s1)
    lw	$t3,24($s1)
    lw	$a6,36($a2)
    sllv	$t8,$t1,$t3
    slt	$t9,$t3,$a7
    li	$a1,1
    movz	$t3,$a7,$t9
    or	$t0,$t0,$t8
    bnez	$a6,.L015e7c58
    movn	$a7,$t3,$a7
    b	.L015e7c64
    nop
    nop
    nop
.L015e7cd0:
    lw	$a6,28($a2)
    beqz	$a6,.L015e7cec
    nop
.L015e7cdc:
    beq	$a2,$a5,.L015e7a00
    move	$t8,$zero
    b	.L015e7c78
    move	$a2,$a6
.L015e7cec:
    beq	$a2,$a5,.L015e7a00
    move	$t8,$zero
.L015e7cf4:
    lw	$a2,24($a2)
    lw	$a6,28($a2)
    bnez	$a6,.L015e7cdc
    nop
    beq	$a5,$a2,.L015e7cdc
    nop
    lw	$a2,24($a2)
    lw	$a6,28($a2)
    bnez	$a6,.L015e7cdc
    nop
    bne	$a5,$a2,.L015e7cf4
    nop
    b	.L015e7cdc
    nop
.L015e7d2c:
    move	$v0,$s2
    ld	$s2,64($sp)
    lw	$t8,24($a5)
    li	$s5,1
    ld	$ra,72($sp)
    sllv	$s5,$s5,$t8
    sw	$s5,72($s3)
    move	$s0,$s0
    move	$s1,$s1
    ld	$s3,80($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbMoveWindow
    addiu	$sp,$sp,-192
    sd	$s7,128($sp)
    sd	$s5,136($sp)
    sd	$s1,144($sp)
    sd	$s0,152($sp)
    sd	$ra,160($sp)
    sd	$s3,64($sp)
    lw	$a7,24($a0)
    sd	$s4,56($sp)
    lw	$s4,132($a0)
    lui	$at,0x15
    sd	$s8,40($sp)
    addiu	$at,$at,10592
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    lw	$t8,-5736($gp)
    move	$v0,$a4
    lw	$s8,124($a0)
    move	$s3,$a0
    sd	$s6,168($sp)
    sll	$t8,$t8,0x2
    sd	$s2,176($sp)
    srl	$s8,$s8,0xa
    addu	$s4,$s4,$t8
    andi	$s8,$s8,0x1
    beqz	$a7,.L015e841c
    lw	$s4,0($s4)
    sd	$a1,104($sp)
    sd	$a2,112($sp)
    sd	$a7,120($sp)
    sd	$a3,32($sp)
    sd	$a4,24($sp)
    lh	$v1,8($s3)
    lhu	$a5,100($a0)
    lh	$a0,10($a0)
    sd	$a5,88($sp)
    sd	$a0,80($sp)
    sh	$a0,2($sp)
    sd	$v1,96($sp)
    lw	$s0,16($s3)
    sh	$v1,0($sp)
    beqz	$s8,.L015e820c
    lw	$s5,116($s0)
    lw	$t9,468($s0)
    move	$a0,$s3
    move	$a1,$s3
    jalr	$t9
    addiu	$a2,$sp,8
    lw	$a6,28($s4)
    beqz	$a6,.L015e8450
    lw	$t9,-28180($gp)
    lw	$a1,40($s5)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    jalr	$t9
    sll	$a0,$a0,0x2
    li	$s7,1
    move	$s1,$v0
    beqz	$v0,.L015e84b8
    move	$s6,$v0
    move	$s2,$zero
    lw	$a2,40($s5)
    move	$s6,$zero
    beqz	$a2,.L015e820c
    sw	$v0,12($sp)
    addiu	$a3,$s3,56
    b	.L015e819c
    sd	$a3,72($sp)
.L015e8170:
    lw	$t9,344($s0)
    lw	$a1,44($s4)
    move	$a0,$s1
    jalr	$t9
    addu	$a1,$a1,$s6
.L015e8184:
    lw	$a2,40($s5)
.L015e8188:
    addiu	$s2,$s2,1
    sltu	$a2,$s2,$a2
    addiu	$s1,$s1,12
    beqz	$a2,.L015e820c
    addiu	$s6,$s6,12
.L015e819c:
    lw	$t9,340($s0)
    move	$a0,$s1
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    lw	$a3,24($s4)
    lw	$a0,36($s4)
    beq	$s2,$a3,.L015e81f4
    sllv	$v0,$s7,$s2
    and	$a4,$v0,$a0
    bnez	$a4,.L015e8170
    nop
    lw	$a5,72($s5)
    and	$a5,$a5,$v0
    beqz	$a5,.L015e8184
    nop
    lw	$t9,344($s0)
    move	$a0,$s1
    jalr	$t9
    ld	$a1,72($sp)
    b	.L015e8188
    lw	$a2,40($s5)
.L015e81f4:
    lw	$t9,344($s0)
    move	$a0,$s1
    jalr	$t9
    ld	$a1,72($sp)
    b	.L015e8188
    lw	$a2,40($s5)
.L015e820c:
    ld	$t8,120($sp)
.L015e8210:
    ld	$s2,88($sp)
    ld	$t9,112($sp)
    ld	$ra,104($sp)
    addu	$at,$t9,$s2
    sh	$at,98($s3)
    addu	$v0,$ra,$s2
    sh	$v0,96($s3)
    lh	$s1,8($t8)
    addu	$s1,$s1,$ra
    addu	$s1,$s2,$s1
    dsll32	$s1,$s1,0x10
    dsra32	$s1,$s1,0x10
    sh	$s1,8($s3)
    lh	$t8,10($t8)
    addu	$t8,$t8,$t9
    lw	$t9,-28420($gp)
    addu	$s2,$s2,$t8
    ld	$s6,96($sp)
    dsll32	$s2,$s2,0x10
    ld	$s7,80($sp)
    dsra32	$s2,$s2,0x10
    move	$a0,$s3
    jalr	$t9
    sh	$s2,10($s3)
    lw	$t9,-28424($gp)
    jalr	$t9
    move	$a0,$s3
    lw	$t9,188($s0)
    move	$a0,$s3
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s2
    lw	$t9,-27892($gp)
    move	$a0,$s3
    jalr	$t9
    ld	$a1,32($sp)
    lw	$t9,-27900($gp)
    move	$a0,$s3
    subu	$a1,$s1,$s6
    subu	$a2,$s2,$s7
    move	$a3,$zero
    sd	$v0,16($sp)
    jalr	$t9
    move	$a4,$zero
    beqz	$s8,.L015e840c
    lw	$a1,8($sp)
    bne	$s3,$a1,.L015e82e8
    lw	$t9,468($s0)
    move	$a0,$s3
    ld	$a1,16($sp)
    jalr	$t9
    move	$a2,$zero
    b	.L015e82f4
    nop
.L015e82e8:
    move	$a0,$s3
    jalr	$t9
    move	$a2,$zero
.L015e82f4:
    lw	$v1,16($s3)
    lbu	$v1,37($v1)
    li	$a0,64
    beq	$v1,$a0,.L015e848c
    move	$s7,$zero
.L015e8308:
    lw	$t9,204($s0)
    lw	$a0,8($sp)
    ld	$a2,24($sp)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,24($a0)
    lw	$t9,224($s0)
    lw	$s6,12($sp)
    move	$a0,$s3
    lw	$a1,0($sp)
    move	$a2,$s6
    jalr	$t9
    dsll32	$a1,$a1,0x0
    lw	$a2,28($s4)
    beqz	$a2,.L015e84a4
    move	$s1,$s6
    lw	$a0,40($s5)
    beqz	$a0,.L015e83b8
    move	$s2,$zero
    sll	$t1,$a0,0x2
    subu	$t1,$t1,$a0
.L015e835c:
    sll	$t1,$t1,0x2
    b	.L015e8374
    addu	$t1,$s6,$t1
.L015e8368:
    addiu	$s2,$s2,1
    beqz	$a7,.L015e83b8
    move	$s1,$t0
.L015e8374:
    lw	$a3,8($s1)
    addiu	$t0,$s1,12
    beqz	$a3,.L015e8390
    sltu	$a7,$t0,$t1
    lw	$t2,4($a3)
    beqz	$t2,.L015e8368
    nop
.L015e8390:
    lw	$t9,352($s0)
    jalr	$t9
    move	$a0,$s1
    lw	$a0,40($s5)
    addiu	$s2,$s2,1
    sltu	$t3,$s2,$a0
    addiu	$s1,$s1,12
    sll	$t1,$a0,0x2
    bnez	$t3,.L015e835c
    subu	$t1,$t1,$a0
.L015e83b8:
    lw	$t9,-28196($gp)
    jalr	$t9
    move	$a0,$s6
    lw	$t9,492($s0)
.L015e83c8:
    lw	$a0,8($sp)
    ld	$s1,16($sp)
    jalr	$t9
    lw	$a0,24($a0)
    beqz	$s7,.L015e83f0
    nop
    lw	$t9,476($s0)
    move	$a1,$s1
    jalr	$t9
    lw	$a0,8($sp)
.L015e83f0:
    lw	$t9,208($s0)
    beqz	$t9,.L015e840c
    lw	$a0,8($sp)
    ld	$a2,24($sp)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,24($a0)
.L015e840c:
    lw	$a1,124($s3)
    sll	$a1,$a1,0x14
    bltz	$a1,.L015e847c
    lw	$t9,-27904($gp)
.L015e841c:
    ld	$s2,176($sp)
.L015e8420:
    ld	$s6,168($sp)
    ld	$s0,152($sp)
    ld	$s1,144($sp)
    ld	$s5,136($sp)
    ld	$s7,128($sp)
    ld	$gp,48($sp)
    ld	$ra,160($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L015e8450:
    lw	$t9,336($s0)
    move	$a0,$zero
    jalr	$t9
    li	$a1,1
    lw	$t9,344($s0)
    move	$a0,$v0
    sw	$v0,12($sp)
    jalr	$t9
    addiu	$a1,$s3,56
    b	.L015e8210
    ld	$t8,120($sp)
.L015e847c:
    jalr	$t9
    nop
    b	.L015e8420
    ld	$s2,176($sp)
.L015e848c:
    lw	$t9,472($s0)
    ld	$a1,16($sp)
    jalr	$t9
    lw	$a0,8($sp)
    b	.L015e8308
    move	$s7,$v0
.L015e84a4:
    lw	$t9,348($s0)
    jalr	$t9
    move	$a0,$s6
    b	.L015e83c8
    lw	$t9,492($s0)
.L015e84b8:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18432
    b	.L015e8420
    ld	$s2,176($sp)

glabel nfbStereoPutImage
    lw	$t0,72($a1)
    addiu	$sp,$sp,-192
    sd	$t0,80($sp)
    sd	$ra,120($sp)
    sd	$s8,64($sp)
    sd	$s4,40($sp)
    lw	$t1,16($a0)
    sd	$s1,88($sp)
    sd	$s3,24($sp)
    lui	$s3,0x14
    sd	$s2,16($sp)
    addiu	$s3,$s3,28816
    sd	$gp,104($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s7,48($sp)
    sll	$s2,$s2,0x2
    lw	$t1,116($t1)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lhu	$t1,226($t1)
    lw	$t2,8($s1)
    lw	$v1,92($s1)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s1)
    lw	$v0,16($a0)
    sd	$s0,96($sp)
    lw	$v0,116($v0)
    move	$s0,$a1
    sd	$s5,56($sp)
    move	$s5,$a4
    move	$s7,$a5
    lw	$v0,220($v0)
    move	$s4,$a6
    move	$s8,$a7
    sd	$s6,32($sp)
    move	$s6,$a0
    move	$s3,$a2
    sd	$t1,112($sp)
    move	$s2,$a3
    beq	$at,$v0,.L015f3ad0
    sd	$t2,72($sp)
    ld	$v1,112($sp)
    lw	$a1,100($s1)
    sw	$a1,8($s1)
    lh	$a0,10($a0)
    addu	$a0,$a0,$v1
    sh	$a0,10($s6)
    lh	$v0,90($s1)
    addu	$v0,$v0,$v1
    sh	$v0,90($s1)
    lw	$at,196($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    sw	$at,4($sp)
    lw	$t9,72($s0)
    lw	$t9,8($t9)
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s6
    ld	$v1,112($sp)
    lw	$a1,96($s1)
    sw	$a1,8($s1)
    lh	$a0,10($s6)
    subu	$a0,$a0,$v1
    sh	$a0,10($s6)
    lh	$v0,90($s1)
    subu	$v0,$v0,$v1
    sh	$v0,90($s1)
    lw	$at,196($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    sw	$at,4($sp)
    lw	$t9,72($s0)
    move	$a7,$s8
    move	$a6,$s4
    move	$a5,$s7
    lw	$t9,8($t9)
    move	$a4,$s5
    move	$a3,$s2
    move	$a2,$s3
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s6
    ld	$s2,16($sp)
.L015f3a8c:
    ld	$s3,24($sp)
    ld	$s6,32($sp)
    ld	$s4,40($sp)
    ld	$s7,48($sp)
    ld	$s5,56($sp)
    ld	$s8,64($sp)
    ld	$gp,104($sp)
    ld	$a2,80($sp)
    ld	$a3,72($sp)
    sw	$a3,8($s1)
    sw	$a2,72($s0)
    ld	$ra,120($sp)
    ld	$s0,96($sp)
    sw	$zero,104($s1)
    ld	$s1,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L015f3ad0:
    ld	$v1,112($sp)
    lw	$a1,96($s1)
    sw	$a1,8($s1)
    lh	$a0,10($a0)
    subu	$a0,$a0,$v1
    sh	$a0,10($s6)
    lh	$v0,90($s1)
    subu	$v0,$v0,$v1
    sh	$v0,90($s1)
    lw	$at,196($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    sw	$at,4($sp)
    lw	$t9,72($s0)
    lw	$t9,8($t9)
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s6
    ld	$v1,112($sp)
    lw	$a1,100($s1)
    sw	$a1,8($s1)
    lh	$a0,10($s6)
    addu	$a0,$a0,$v1
    sh	$a0,10($s6)
    lh	$v0,90($s1)
    addu	$v0,$v0,$v1
    sh	$v0,90($s1)
    lw	$at,196($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    sw	$at,4($sp)
    lw	$t9,72($s0)
    move	$a7,$s8
    move	$a6,$s4
    move	$a5,$s7
    lw	$t9,8($t9)
    move	$a4,$s5
    move	$a3,$s2
    move	$a2,$s3
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s6
    b	.L015f3a8c
    ld	$s2,16($sp)

glabel nfbShmCreatePixmap
    lui	$v1,0x14
    addiu	$sp,$sp,-64
    addiu	$v1,$v1,11872
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    la	$v0,sub_01730000
    sltiu	$at,$a3,31
    sll	$v1,$a3,0x2
    addiu	$v0,$v0,-24704
    sd	$ra,56($sp)
    beqz	$at,.L015f7b9c
    addu	$v0,$v0,$v1
    lw	$a5,0($v0)
    jr	$a5
    li	$a5,1
.L015f7b9c:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    move	$a1,$a3
    jalr	$t9
    addiu	$a0,$a0,18984
    ld	$ra,56($sp)
    move	$v0,$zero
.L015f7bb8:
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
    sd	$a5,40($sp)
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    sd	$a4,8($sp)
    b	.L015f7bfc
    sd	$a3,0($sp)
    li	$a6,8
    sd	$a6,40($sp)
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    sd	$a4,8($sp)
    sd	$a3,0($sp)
.L015f7bfc:
    lw	$t9,-28180($gp)
    jalr	$t9
    li	$a0,40
    ld	$ra,56($sp)
    bnez	$v0,.L015f7c1c
    move	$a7,$v0
    b	.L015f7bb8
    move	$v0,$zero
.L015f7c1c:
    la	$t8,globalSerialNumber
    la	$t1,PixmapWidthPaddingInfo
    ld	$gp,48($sp)
    ld	$a0,16($sp)
    ld	$a1,8($sp)
    sw	$a1,32($v0)
    sh	$zero,10($a7)
    sh	$zero,8($a7)
    sw	$zero,4($a7)
    sb	$zero,1($a7)
    sh	$a0,14($a7)
    ld	$t9,24($sp)
    sh	$t9,12($a7)
    li	$v0,1
    sw	$v0,24($a7)
    ld	$v1,40($sp)
    sb	$v1,3($a7)
    ld	$v1,0($sp)
    sb	$v0,0($a7)
    sb	$v1,2($a7)
    sll	$t2,$v1,0x2
    ld	$at,32($sp)
    subu	$t2,$t2,$v1
    lw	$t3,0($t8)
    sll	$t2,$t2,0x2
    sw	$at,16($a7)
    addu	$t1,$t1,$t2
    lui	$at,0x1000
    addiu	$t3,$t3,1
    lw	$t0,0($t1)
    sltu	$at,$at,$t3
    lw	$t2,4($t1)
    movn	$t3,$v0,$at
    lw	$t1,8($t1)
    addu	$t0,$t0,$t9
    sw	$t3,20($a7)
    srav	$t0,$t0,$t2
    sw	$t3,0($t8)
    move	$v0,$a7
    sllv	$t0,$t0,$t1
    addiu	$sp,$sp,64
    jr	$ra
    sw	$t0,28($a7)
    li	$a5,32
    sd	$a5,40($sp)
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    sd	$a4,8($sp)
    b	.L015f7bfc
    sd	$a3,0($sp)
    li	$a6,16
    sd	$a6,40($sp)
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    sd	$a4,8($sp)
    b	.L015f7bfc
    sd	$a3,0($sp)

glabel nfbCloseScreen
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    lw	$s1,116($a1)
    sd	$ra,24($sp)
    lw	$at,40($s1)
    sd	$s3,16($sp)
    move	$s3,$a1
    sd	$s2,0($sp)
    move	$s2,$zero
    beqz	$at,.L015f8594
    sd	$s0,32($sp)
    move	$s0,$zero
.L015f8570:
    lw	$t9,352($s3)
    lw	$a0,44($s1)
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a1,40($s1)
    addiu	$s2,$s2,1
    sltu	$a1,$s2,$a1
    bnez	$a1,.L015f8570
    addiu	$s0,$s0,12
.L015f8594:
    la	$s0,Xfree
    move	$t9,$s0
    jalr	$t9
    lw	$a0,44($s1)
    move	$t9,$s0
    jalr	$t9
    lw	$a0,60($s1)
    move	$t9,$s0
    jalr	$t9
    lw	$a0,64($s1)
    move	$t9,$s0
    jalr	$t9
    lw	$a0,68($s1)
    lw	$a0,164($s1)
    beqz	$a0,.L015f85dc
    move	$t9,$s0
    jalr	$t9
    nop
.L015f85dc:
    move	$t9,$s0
    ld	$s2,0($sp)
    jalr	$t9
    lw	$a0,92($s1)
    move	$t9,$s0
    jalr	$t9
    lw	$a0,96($s1)
    move	$t9,$s0
    ld	$s1,8($sp)
    jalr	$t9
    lw	$a0,116($s3)
    ld	$ra,24($sp)
    li	$v0,1
    ld	$s3,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48

glabel nfb1RopLoop__BH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L015fe290
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L015fe234
    sra	$a3,$t0,0x2
.L015fe20c:
    lw	$v0,0($a0)
    lw	$v1,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    and	$v0,$v0,$v1
    bnez	$a4,.L015fe20c
    sw	$v0,-4($a1)
.L015fe234:
    beqz	$a3,.L015fe290
    nop
    nop
.L015fe240:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    and	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    and	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    and	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    and	$a4,$a4,$a6
    bnez	$a5,.L015fe240
    sw	$a4,-4($a1)
.L015fe290:
    jr	$ra
    nop

glabel nfbStereoPolyText8
    lw	$a6,72($a1)
    addiu	$sp,$sp,-96
    sd	$a6,56($sp)
    sd	$s4,24($sp)
    lw	$s4,16($a0)
    sd	$s1,80($sp)
    sd	$s3,8($sp)
    lui	$s3,0x13
    sd	$s2,0($sp)
    addiu	$s3,$s3,31168
    sd	$gp,72($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s5,32($sp)
    sll	$s2,$s2,0x2
    lw	$s4,116($s4)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lhu	$s4,226($s4)
    lw	$s5,8($s1)
    lw	$v1,92($s1)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s1)
    lw	$v0,16($a0)
    sd	$s7,40($sp)
    lw	$v0,116($v0)
    sd	$s0,64($sp)
    move	$s0,$a1
    lw	$v0,220($v0)
    move	$s7,$a2
    sd	$s6,16($sp)
    move	$s6,$a5
    sd	$ra,88($sp)
    move	$s3,$a3
    move	$s2,$a4
    sd	$s5,48($sp)
    beq	$at,$v0,.L01603158
    move	$s5,$a0
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    addu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,52($t9)
    jalr	$t9
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    subu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,52($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    ld	$s2,0($sp)
.L01603118:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s5,32($sp)
    ld	$s7,40($sp)
    ld	$gp,72($sp)
    ld	$v1,56($sp)
    ld	$a0,48($sp)
    sw	$a0,8($s1)
    sw	$v1,72($s0)
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    sw	$zero,104($s1)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L01603158:
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    subu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,52($t9)
    jalr	$t9
    nop
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    addu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,52($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    b	.L01603118
    ld	$s2,0($sp)

glabel nfbSlideAndSizeWindow
    lhu	$v0,100($a0)
    lhu	$t2,14($a0)
    lhu	$t3,12($a0)
    lh	$a6,8($a0)
    lh	$a7,10($a0)
    addiu	$sp,$sp,-544
    sd	$a7,352($sp)
    sd	$a0,368($sp)
    sd	$s7,440($sp)
    sd	$s1,448($sp)
    sd	$s0,456($sp)
    sd	$ra,464($sp)
    sd	$a6,208($sp)
    sd	$s2,264($sp)
    sd	$s5,232($sp)
    lw	$t1,24($a0)
    sd	$s6,256($sp)
    lw	$s6,132($a0)
    lui	$v1,0x13
    sd	$s4,248($sp)
    addiu	$v1,$v1,28384
    sd	$gp,240($sp)
    addu	$gp,$t9,$v1
    move	$t8,$a5
    lw	$t9,-5736($gp)
    move	$s5,$a4
    move	$s2,$a3
    lw	$s4,124($a0)
    move	$a6,$a1
    sd	$s8,472($sp)
    sll	$t9,$t9,0x2
    sd	$s3,480($sp)
    srl	$s4,$s4,0xa
    addu	$s6,$s6,$t9
    andi	$s4,$s4,0x1
    beqz	$t1,.L01604ac0
    lw	$s6,0($s6)
    sd	$v0,152($sp)
    sd	$a2,160($sp)
    sd	$a1,168($sp)
    sd	$a5,200($sp)
    sd	$t3,192($sp)
    sd	$t2,184($sp)
    ld	$s1,368($sp)
    lh	$s3,10($t1)
    lw	$s1,16($s1)
    lh	$s0,8($t1)
    addu	$s3,$s3,$a2
    lw	$s8,116($s1)
    addu	$s0,$s0,$a1
    addu	$s3,$v0,$s3
    sd	$s8,408($sp)
    addu	$s0,$v0,$s0
    beqz	$s4,.L01603f50
    lw	$s8,40($s8)
    lw	$t9,468($s1)
    ld	$a1,368($sp)
    addiu	$a2,$sp,16
    jalr	$t9
    move	$a0,$a1
    lw	$t8,28($s6)
    beqz	$t8,.L01604e38
    sll	$a0,$s8,0x2
    lw	$t9,-28180($gp)
    subu	$a0,$a0,$s8
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,344($sp)
    move	$a0,$v0
    beqz	$v0,.L01605054
    sd	$v0,312($sp)
    blez	$s8,.L01603ca0
    addiu	$a6,$sp,24
    sd	$s3,488($sp)
    sd	$s2,504($sp)
    move	$s3,$zero
    ld	$s2,368($sp)
    li	$s7,1
    sd	$s0,496($sp)
    move	$s0,$v0
    b	.L01603c50
    addiu	$s2,$s2,72
    nop
    nop
.L01603c30:
    lw	$t9,344($s1)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    addiu	$s3,$s3,1
.L01603c44:
    beq	$s3,$s8,.L01603c90
    addiu	$s0,$s0,12
    nop
.L01603c50:
    lw	$t9,340($s1)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    lw	$t8,36($s6)
    sllv	$a6,$s7,$s3
    and	$t8,$a6,$t8
    bnez	$t8,.L01603c30
    ld	$t9,408($sp)
    lw	$t9,72($t9)
    and	$t9,$t9,$a6
    bnez	$t9,.L01603c30
    nop
    b	.L01603c44
    addiu	$s3,$s3,1
.L01603c90:
    ld	$s2,504($sp)
    ld	$s0,496($sp)
    ld	$s3,488($sp)
    addiu	$a6,$sp,24
.L01603ca0:
    sw	$zero,40($a6)
    sw	$zero,36($a6)
    sw	$zero,32($a6)
    sw	$zero,28($a6)
    sw	$zero,24($a6)
    sw	$zero,20($a6)
    sw	$zero,16($a6)
    sw	$zero,12($a6)
    sw	$zero,8($a6)
    sw	$zero,4($a6)
    sw	$zero,24($sp)
    ld	$at,368($sp)
    lw	$at,36($at)
    beqz	$at,.L01604eec
    sd	$at,336($sp)
    sd	$s3,488($sp)
    sd	$s0,496($sp)
    sd	$s2,504($sp)
    sd	$s5,512($sp)
    li	$s7,1
    b	.L01603d10
    sd	$s4,520($sp)
    nop
    nop
.L01603d00:
    ld	$v0,336($sp)
.L01603d04:
    lw	$v0,28($v0)
    beqz	$v0,.L01603e44
    sd	$v0,336($sp)
.L01603d10:
    ld	$t1,336($sp)
    lw	$t9,124($t1)
    lw	$a6,-5736($gp)
    addiu	$s4,$sp,24
    lw	$t1,132($t1)
    srl	$t9,$t9,0x10
    sll	$t2,$a6,0x2
    andi	$t9,$t9,0xf
    addu	$t2,$t1,$t2
    sll	$t8,$t9,0x2
    beqz	$t9,.L01603e00
    addu	$s4,$s4,$t8
    lw	$a4,0($s4)
    beqz	$a4,.L01604d38
    lw	$t9,-28180($gp)
    blez	$s8,.L01603d00
    lw	$s4,0($t2)
.L01603d54:
    move	$s0,$zero
    ld	$s5,336($sp)
    move	$s3,$zero
    move	$s2,$a4
    b	.L01603d98
    addiu	$s5,$s5,56
    nop
.L01603d70:
    lw	$t9,360($s1)
    lw	$a2,44($s4)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    addu	$a2,$a2,$s3
.L01603d88:
    addiu	$s0,$s0,1
.L01603d8c:
    addiu	$s2,$s2,12
    beq	$s0,$s8,.L01603d00
    addiu	$s3,$s3,12
.L01603d98:
    lw	$a3,24($s4)
    lw	$t1,36($s4)
    ld	$a5,408($sp)
    beq	$s0,$a3,.L01603de4
    sllv	$a6,$s7,$s0
    and	$a4,$a6,$t1
    bnez	$a4,.L01603d70
    nop
    lw	$a5,72($a5)
    and	$a5,$a5,$a6
    beqz	$a5,.L01603d88
    nop
    lw	$t9,360($s1)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s5
    b	.L01603d8c
    addiu	$s0,$s0,1
.L01603de4:
    lw	$t9,360($s1)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s5
    b	.L01603d8c
    addiu	$s0,$s0,1
.L01603e00:
    move	$a7,$a6
    ld	$a6,336($sp)
    lw	$a6,132($a6)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lw	$t0,24($s6)
    lw	$a7,24($a6)
    bne	$a7,$t0,.L01603e2c
    lw	$a6,28($a6)
    beqz	$a6,.L01604efc
.L01603e2c:
    lw	$t9,-28416($gp)
    ld	$a0,336($sp)
    jalr	$t9
    move	$a1,$zero
    b	.L01603d04
    ld	$v0,336($sp)
.L01603e44:
    ld	$s4,520($sp)
    ld	$s5,512($sp)
    ld	$s2,504($sp)
    ld	$s0,496($sp)
    ld	$a7,312($sp)
    sw	$a7,72($sp)
.L01603e5c:
    lw	$t0,28($s6)
    beqz	$t0,.L01604df0
    ld	$t8,368($sp)
    sw	$zero,76($sp)
    ld	$s3,488($sp)
.L01603e70:
    ld	$v0,368($sp)
.L01603e74:
    lhu	$v0,14($v0)
    sltu	$t1,$s5,$v0
    bnez	$t1,.L01603e98
    li	$t1,1
    ld	$v1,368($sp)
    lhu	$v1,12($v1)
    sltu	$v1,$s2,$v1
    beqz	$v1,.L01604cf8
    li	$t1,1
.L01603e98:
    ld	$a0,208($sp)
    bne	$a0,$s0,.L01603ea8
    ld	$a1,352($sp)
    beq	$a1,$s3,.L01604d00
.L01603ea8:
    li	$a6,1
.L01603eac:
    bne	$v0,$s5,.L01603ec4
    ld	$a3,368($sp)
    ld	$a2,368($sp)
    lhu	$a2,12($a2)
    beq	$a2,$s2,.L01604d08
    ld	$a3,368($sp)
.L01603ec4:
    lhu	$a3,100($a3)
    bnez	$a3,.L01603ee8
    ld	$v0,368($sp)
    lw	$v0,120($v0)
    beqz	$v0,.L01604fec
    nop
    lw	$v1,44($v0)
    beqz	$v1,.L01604f1c
    nop
.L01603ee8:
    lw	$t9,336($s1)
    move	$a0,$zero
    sd	$t1,128($sp)
    li	$a1,1
    jalr	$t9
    sd	$a6,120($sp)
    ld	$a0,368($sp)
    lw	$a0,124($a0)
    sll	$a0,$a0,0x2
    bltz	$a0,.L01603f1c
    move	$s7,$v0
    ld	$a1,120($sp)
    bnez	$a1,.L01603f54
.L01603f1c:
    ld	$a2,128($sp)
    bnez	$a2,.L01603f34
    ld	$a1,368($sp)
    ld	$a3,120($sp)
    beqz	$a3,.L01605084
    ld	$a1,368($sp)
.L01603f34:
    lw	$t9,364($s1)
    move	$a0,$s7
    addiu	$a2,$a1,72
    jalr	$t9
    addiu	$a1,$a1,56
    b	.L01603f58
    ld	$a2,168($sp)
.L01603f50:
    move	$s7,$zero
.L01603f54:
    ld	$a2,168($sp)
.L01603f58:
    ld	$a4,152($sp)
    ld	$a3,368($sp)
    ld	$a5,160($sp)
    sh	$s3,10($a3)
    sh	$s0,8($a3)
    sh	$s2,12($a3)
    lw	$t9,-28420($gp)
    sh	$s5,14($a3)
    move	$a0,$a3
    addu	$a5,$a5,$a4
    sh	$a5,98($a3)
    addu	$a2,$a2,$a4
    jalr	$t9
    sh	$a2,96($a3)
    lw	$t9,-28424($gp)
    jalr	$t9
    ld	$a0,368($sp)
    ld	$a0,368($sp)
    dsll32	$a1,$s0,0x10
    dsra32	$a1,$a1,0x10
    ld	$a4,184($sp)
    ld	$a3,352($sp)
    dsll32	$a2,$s3,0x10
    dsra32	$a2,$a2,0x10
    sd	$a2,224($sp)
    subu	$a4,$s5,$a4
    subu	$a2,$a2,$a3
    ld	$a3,192($sp)
    sd	$a1,272($sp)
    dsll32	$a4,$a4,0x10
    lw	$t9,-27900($gp)
    dsra32	$a4,$a4,0x10
    subu	$a3,$s2,$a3
    ld	$a5,208($sp)
    dsll32	$a3,$a3,0x10
    sd	$a4,296($sp)
    dsra32	$a3,$a3,0x10
    subu	$a1,$a1,$a5
    jalr	$t9
    sd	$a3,304($sp)
    lw	$t9,188($s1)
    ld	$a0,368($sp)
    ld	$a1,272($sp)
    jalr	$t9
    ld	$a2,224($sp)
    lw	$t9,-27892($gp)
    ld	$a0,368($sp)
    jalr	$t9
    ld	$a1,200($sp)
    move	$s5,$v0
    beqz	$s4,.L01604cf0
    move	$s3,$v0
    lw	$a3,28($s6)
    beqz	$a3,.L01604db4
    sll	$a0,$s8,0x2
    lw	$t9,-28180($gp)
    subu	$a0,$a0,$s8
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,344($sp)
    move	$s0,$v0
    beqz	$v0,.L0160503c
    sd	$v0,376($sp)
    ld	$a2,376($sp)
    blez	$s8,.L0160408c
    sw	$a2,80($sp)
    ld	$s2,344($sp)
    addu	$s2,$v0,$s2
    nop
    lw	$t9,340($s1)
.L01604070:
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    addiu	$s0,$s0,12
    bnel	$s0,$s2,.L01604070
    lw	$t9,340($s1)
.L0160408c:
    ld	$s0,368($sp)
    addiu	$s0,$s0,44
.L01604094:
    lw	$s3,16($sp)
.L01604098:
    ld	$a0,368($sp)
    lw	$t9,468($s1)
    xor	$t8,$a0,$s3
    move	$a2,$zero
    movz	$s3,$s5,$t8
    jalr	$t9
    move	$a1,$s3
    ld	$v0,368($sp)
    lw	$v0,68($v0)
    beqz	$v0,.L016040d4
    ld	$v1,368($sp)
    li	$a0,1
    sw	$a0,8($v0)
    lw	$v1,68($v1)
    sw	$s7,4($v1)
.L016040d4:
    ld	$a1,368($sp)
    lw	$a1,16($a1)
    lbu	$a1,37($a1)
    li	$a2,64
    beq	$a1,$a2,.L01604f90
    move	$s2,$zero
.L016040ec:
    lw	$t9,204($s1)
    lw	$a0,16($sp)
    move	$a2,$zero
    move	$a1,$s3
    jalr	$t9
    lw	$a0,24($a0)
    lw	$t9,344($s1)
    ld	$a0,368($sp)
    move	$a1,$s0
    jalr	$t9
    lw	$a0,68($a0)
.L01604118:
    ld	$a5,296($sp)
    ld	$a4,304($sp)
    ld	$a3,352($sp)
    ld	$a2,208($sp)
    ld	$a6,368($sp)
    lw	$t9,-28412($gp)
    lw	$a6,124($a6)
    addiu	$a7,$sp,84
    ld	$a1,224($sp)
    ld	$a0,272($sp)
    addiu	$t0,$sp,88
    srl	$a6,$a6,0x14
    sw	$t0,4($sp)
    jalr	$t9
    andi	$a6,$a6,0xf
    ld	$a7,368($sp)
    lw	$a7,116($a7)
    beqz	$a7,.L01604afc
    ld	$v0,368($sp)
    lw	$v0,124($v0)
    srl	$t0,$v0,0x1a
    li	$t1,2
    andi	$t0,$t0,0x3
    beq	$t0,$t1,.L01604184
    nop
    beqz	$s4,.L01604ab8
    sll	$v1,$v0,0x14
.L01604184:
    lw	$v1,28($s6)
    bnez	$v1,.L01604b0c
    srl	$a0,$v0,0x14
    andi	$a0,$a0,0xf
    beqz	$a0,.L01604b0c
    nop
    beqz	$s4,.L0160500c
    ld	$v1,368($sp)
    lw	$a1,80($sp)
    sd	$a1,376($sp)
.L016041ac:
    ld	$a0,368($sp)
    ld	$a5,352($sp)
    lw	$a1,84($sp)
    ld	$a6,224($sp)
    lw	$a2,88($sp)
    lw	$t9,256($s1)
    subu	$a2,$a2,$a6
    ld	$a6,272($sp)
    ld	$a4,208($sp)
    ld	$a3,376($sp)
    jalr	$t9
    subu	$a1,$a1,$a6
    beqz	$s4,.L01604b34
    sd	$v0,216($sp)
.L016041e4:
    ld	$t0,368($sp)
    lhu	$t0,100($t0)
    beqz	$t0,.L01604f54
    ld	$v0,368($sp)
.L016041f4:
    sd	$zero,288($sp)
    move	$s5,$zero
    sll	$t1,$s8,0x2
    sd	$s2,176($sp)
    move	$s7,$zero
    ld	$s2,368($sp)
    subu	$t1,$t1,$s8
    addiu	$s4,$sp,24
    sd	$s3,144($sp)
    sll	$t1,$t1,0x2
    addiu	$s2,$s2,72
    b	.L01604240
    sd	$t1,344($sp)
    nop
    nop
.L01604230:
    li	$t8,11
.L01604234:
    addiu	$s5,$s5,1
    beq	$s5,$t8,.L01604330
    addiu	$s4,$s4,4
.L01604240:
    lw	$s0,0($s4)
    beqz	$s0,.L01604230
    pref	0x0,256($s4)
    ld	$a0,272($sp)
    ld	$a1,224($sp)
    ld	$a2,208($sp)
    addiu	$t9,$sp,88
    sw	$t9,4($sp)
    lw	$t9,-28412($gp)
    ld	$a3,352($sp)
    ld	$a4,304($sp)
    move	$a6,$s5
    ld	$a5,296($sp)
    jalr	$t9
    addiu	$a7,$sp,84
    lw	$t8,88($sp)
    lw	$a2,84($sp)
    ld	$a1,208($sp)
    ld	$s3,352($sp)
    subu	$a1,$a1,$a2
    ld	$a2,288($sp)
    sd	$a1,280($sp)
    subu	$a1,$a1,$s7
    subu	$s3,$s3,$t8
    bnez	$a1,.L016042b0
    subu	$a2,$s3,$a2
    beqz	$a2,.L016042c4
    nop
.L016042b0:
    lw	$t9,376($s1)
    jalr	$t9
    move	$a0,$s2
    ld	$s7,280($sp)
    sd	$s3,288($sp)
.L016042c4:
    lw	$t8,28($s6)
    ld	$s3,344($sp)
    beqz	$t8,.L01604c68
    addu	$s3,$s0,$s3
    blez	$s8,.L01604234
    li	$t8,11
    b	.L01604314
    lw	$v0,8($s0)
    nop
    nop
    nop
.L016042f0:
    lw	$t9,356($s1)
    move	$a0,$s0
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    addiu	$s0,$s0,12
.L01604308:
    beq	$s0,$s3,.L01604230
    nop
    lw	$v0,8($s0)
.L01604314:
    beqz	$v0,.L016042f0
    nop
    lw	$t9,4($v0)
    bnez	$t9,.L016042f0
    nop
    b	.L01604308
    addiu	$s0,$s0,12
.L01604330:
    bnez	$s7,.L01604340
    ld	$ra,288($sp)
    beqz	$ra,.L0160435c
    lw	$s3,76($sp)
.L01604340:
    lw	$t9,376($s1)
    ld	$a2,288($sp)
    move	$a0,$s2
    negu	$a1,$s7
    jalr	$t9
    negu	$a2,$a2
.L01604358:
    lw	$s3,76($sp)
.L0160435c:
    lw	$a3,80($sp)
    beqz	$s3,.L01604478
    sd	$a3,376($sp)
    lw	$t9,344($s1)
    ld	$a0,376($sp)
    jalr	$t9
    move	$a1,$s3
    lw	$a1,84($sp)
    ld	$a3,352($sp)
    lw	$a2,88($sp)
    lw	$t9,376($s1)
    subu	$a2,$a2,$a3
    ld	$a3,208($sp)
    ld	$a0,376($sp)
    jalr	$t9
    subu	$a1,$a1,$a3
    lw	$t9,356($s1)
    ld	$a2,368($sp)
    move	$a0,$s3
    ld	$a1,376($sp)
    jalr	$t9
    addiu	$a2,$a2,44
    ld	$a6,368($sp)
    lw	$a6,124($a6)
    srl	$a6,$a6,0x14
    andi	$a6,$a6,0xf
    addiu	$a6,$a6,1
    sltiu	$a3,$a6,11
    beqz	$a3,.L01604408
    sll	$t8,$a6,0x2
    addiu	$s2,$sp,24
    addiu	$s4,$s2,44
    addu	$s2,$s2,$t8
.L016043e0:
    lw	$a2,0($s2)
    beqz	$a2,.L016043fc
    nop
    lw	$t9,364($s1)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s3
.L016043fc:
    addiu	$s2,$s2,4
    bne	$s2,$s4,.L016043e0
    nop
.L01604408:
    lw	$a3,84($sp)
    lw	$a4,88($sp)
    ld	$a2,352($sp)
    lw	$t9,376($s1)
    ld	$a1,208($sp)
    move	$a0,$s3
    subu	$a2,$a2,$a4
    jalr	$t9
    subu	$a1,$a1,$a3
    ld	$a7,368($sp)
    lw	$a7,124($a7)
    srl	$a7,$a7,0x14
    andi	$a7,$a7,0xf
    addiu	$a6,$sp,24
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a1,0($a6)
    bnez	$a1,.L0160445c
    nop
    b	.L01604478
    sw	$s3,0($a6)
.L0160445c:
    lw	$t9,360($s1)
    move	$a0,$a1
    jalr	$t9
    move	$a2,$s3
    lw	$t9,348($s1)
    jalr	$t9
    move	$a0,$s3
.L01604478:
    sd	$zero,392($sp)
    sd	$zero,416($sp)
    addiu	$t0,$sp,24
    sd	$t0,360($sp)
    lw	$t1,72($sp)
    li	$s7,1
    b	.L016044c0
    sd	$t1,312($sp)
    nop
    nop
.L016044a0:
    ld	$t2,392($sp)
.L016044a4:
    li	$t3,11
    ld	$t8,360($sp)
    addiu	$t2,$t2,1
    sd	$t2,392($sp)
    addiu	$t8,$t8,4
    beq	$t2,$t3,.L0160482c
    sd	$t8,360($sp)
.L016044c0:
    ld	$t9,360($sp)
    lw	$ra,0($t9)
    pref	0x0,256($t9)
    beqz	$ra,.L016044a0
    sd	$ra,384($sp)
    ld	$a3,352($sp)
    ld	$a4,304($sp)
    ld	$a5,296($sp)
    ld	$s3,224($sp)
    ld	$s2,272($sp)
    lw	$t9,-28412($gp)
    addiu	$a7,$sp,84
    addiu	$at,$sp,88
    ld	$s0,208($sp)
    ld	$a6,392($sp)
    move	$a0,$s2
    move	$a1,$s3
    sw	$at,4($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$s5,344($sp)
    lw	$a0,84($sp)
    ld	$s4,384($sp)
    lw	$a1,88($sp)
    subu	$a0,$s2,$a0
    ld	$v0,352($sp)
    addu	$a0,$s0,$a0
    lw	$v1,28($s6)
    subu	$a1,$s3,$a1
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    sh	$a0,96($sp)
    addu	$v0,$v0,$a1
    addu	$s4,$s4,$s5
    sd	$a0,328($sp)
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sd	$v0,320($sp)
    subu	$s5,$a0,$s2
    sh	$v0,98($sp)
    beqz	$v1,.L01604b6c
    subu	$v0,$s3,$v0
    blez	$s8,.L0160462c
    ld	$s3,312($sp)
    ld	$s2,416($sp)
    ld	$s0,384($sp)
    sd	$v0,112($sp)
    ld	$a2,224($sp)
    ld	$a4,328($sp)
    ld	$a3,272($sp)
    ld	$a1,320($sp)
    subu	$a3,$a3,$a4
    sd	$a3,424($sp)
    subu	$a1,$a1,$a2
    b	.L0160460c
    sd	$a1,432($sp)
.L016045a0:
    lw	$t9,356($s1)
    move	$a0,$s0
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s3
    ld	$a5,416($sp)
.L016045b8:
    beqz	$a5,.L016045fc
    nop
    lw	$t9,376($s1)
    move	$a0,$s2
    move	$a1,$s5
    jalr	$t9
    ld	$a2,432($sp)
    lw	$t9,364($s1)
    move	$a0,$s0
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    lw	$t9,376($s1)
    ld	$a1,424($sp)
    move	$a0,$s2
    jalr	$t9
    ld	$a2,112($sp)
.L016045fc:
    addiu	$s0,$s0,12
    addiu	$s3,$s3,12
    beq	$s0,$s4,.L0160462c
    addiu	$s2,$s2,12
.L0160460c:
    lw	$t1,8($s0)
    beqz	$t1,.L016045a0
    nop
    lw	$a6,4($t1)
    bnez	$a6,.L016045a0
    nop
    b	.L016045b8
    ld	$a5,416($sp)
.L0160462c:
    ld	$t0,328($sp)
    ld	$a7,272($sp)
    ld	$t1,224($sp)
    bne	$a7,$t0,.L01604644
    ld	$t2,320($sp)
    beq	$t1,$t2,.L01604660
.L01604644:
    ld	$a0,368($sp)
    lw	$t9,16($a0)
    lw	$t9,224($t9)
    lw	$a1,96($sp)
    ld	$a2,384($sp)
    jalr	$t9
    dsll32	$a1,$a1,0x0
.L01604660:
    blez	$s8,.L016046c4
    ld	$t9,368($sp)
    ld	$s3,312($sp)
    ld	$s4,344($sp)
    ld	$s2,384($sp)
    b	.L016046a0
    addu	$s4,$s2,$s4
    nop
.L01604680:
    lw	$t9,364($s1)
    move	$a0,$s3
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s2
    addiu	$s2,$s2,12
.L01604698:
    beq	$s2,$s4,.L016046c0
    addiu	$s3,$s3,12
.L016046a0:
    lw	$t1,8($s2)
    beqz	$t1,.L01604680
    nop
    lw	$t8,4($t1)
    bnez	$t8,.L01604680
    nop
    b	.L01604698
    addiu	$s2,$s2,12
.L016046c0:
    ld	$t9,368($sp)
.L016046c4:
    lw	$t9,36($t9)
    beqz	$t9,.L016047b4
    sd	$t9,400($sp)
    b	.L01604700
    ld	$t2,400($sp)
.L016046d8:
    lw	$t9,-28436($gp)
    ld	$a0,400($sp)
    la	$a1,RecomputeLayeredExposures__OG
    jalr	$t9
    ld	$a2,376($sp)
.L016046ec:
    ld	$ra,400($sp)
    lw	$ra,28($ra)
    beqz	$ra,.L016047b4
    sd	$ra,400($sp)
    ld	$t2,400($sp)
.L01604700:
    lw	$t8,124($t2)
    lw	$t1,-5736($gp)
    ld	$t3,392($sp)
    srl	$t8,$t8,0x10
    ld	$s2,376($sp)
    move	$s0,$zero
    andi	$t8,$t8,0xf
    ld	$s3,384($sp)
    move	$s4,$zero
    sll	$s5,$t1,0x2
    addiu	$v0,$t2,56
    bne	$t3,$t8,.L016046ec
    lw	$t2,132($t2)
    addu	$s5,$t2,$s5
    blez	$s8,.L016046d8
    lw	$s5,0($s5)
    b	.L0160478c
    sd	$v0,104($sp)
    nop
    nop
.L01604750:
    lw	$t8,36($s6)
    and	$t8,$t8,$t9
    beqz	$t8,.L01604778
    nop
    lw	$t9,356($s1)
    lw	$a1,44($s5)
    move	$a0,$s2
    move	$a2,$s3
    jalr	$t9
    addu	$a1,$a1,$s4
.L01604778:
    addiu	$s0,$s0,1
.L0160477c:
    addiu	$s2,$s2,12
    addiu	$s3,$s3,12
    beq	$s0,$s8,.L016046d8
    addiu	$s4,$s4,12
.L0160478c:
    lw	$a2,24($s5)
    bne	$s0,$a2,.L01604750
    sllv	$t9,$s7,$s0
    lw	$t9,356($s1)
    move	$a0,$s2
    ld	$a1,104($sp)
    jalr	$t9
    move	$a2,$s3
    b	.L0160477c
    addiu	$s0,$s0,1
.L016047b4:
    ld	$a3,416($sp)
    ld	$s4,344($sp)
    ld	$s0,384($sp)
    beqz	$a3,.L01604af4
    ld	$a0,384($sp)
    blez	$s8,.L016044a0
    ld	$s2,416($sp)
    b	.L0160480c
    addu	$s4,$s0,$s4
    nop
    nop
.L016047e0:
    lw	$t9,360($s1)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s0
    lw	$t9,352($s1)
    jalr	$t9
    move	$a0,$s0
    addiu	$s0,$s0,12
.L01604804:
    beq	$s0,$s4,.L016044a0
    addiu	$s2,$s2,12
.L0160480c:
    lw	$t1,8($s0)
    beqz	$t1,.L016047e0
    nop
    lw	$t8,4($t1)
    bnez	$t8,.L016047e0
    nop
    b	.L01604804
    addiu	$s0,$s0,12
.L0160482c:
    lw	$t9,28($s6)
    beqz	$t9,.L01604fa8
    nop
    blez	$s8,.L016048a0
    ld	$s6,216($sp)
    ld	$s5,344($sp)
    ld	$t8,312($sp)
    ld	$s2,376($sp)
    ld	$s4,416($sp)
    move	$s3,$t8
    addu	$s5,$s5,$t8
    nop
    nop
.L01604860:
    lw	$t9,352($s1)
    jalr	$t9
    move	$a0,$s3
    lw	$t9,352($s1)
    jalr	$t9
    move	$a0,$s2
    ld	$t9,416($sp)
    beqz	$t9,.L01604890
    nop
    lw	$t9,352($s1)
    jalr	$t9
    move	$a0,$s4
.L01604890:
    addiu	$s3,$s3,12
    addiu	$s2,$s2,12
    bne	$s3,$s5,.L01604860
    addiu	$s4,$s4,12
.L016048a0:
    la	$s2,Xfree
    move	$t9,$s2
    jalr	$t9
    ld	$a0,312($sp)
    move	$t9,$s2
    jalr	$t9
    ld	$a0,376($sp)
    addiu	$s4,$sp,24
    addiu	$s0,$sp,24
    addiu	$s4,$s4,44
    lw	$a0,24($sp)
    beqz	$a0,.L016048dc
    move	$t9,$s2
    jalr	$t9
    nop
.L016048dc:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L016048fc
    move	$t9,$s2
    jalr	$t9
    nop
.L016048fc:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L0160491c
    move	$t9,$s2
    jalr	$t9
    nop
.L0160491c:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L0160493c
    move	$t9,$s2
    jalr	$t9
    nop
.L0160493c:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L0160495c
    move	$t9,$s2
    jalr	$t9
    nop
.L0160495c:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L0160497c
    move	$t9,$s2
    jalr	$t9
    nop
.L0160497c:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L0160499c
    move	$t9,$s2
    jalr	$t9
    nop
.L0160499c:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L016049bc
    move	$t9,$s2
    jalr	$t9
    nop
.L016049bc:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L016049dc
    move	$t9,$s2
    jalr	$t9
    nop
.L016049dc:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L016049fc
    move	$t9,$s2
    jalr	$t9
    nop
.L016049fc:
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L01604a1c
    nop
    lw	$a0,0($s0)
    beqz	$a0,.L01604a1c
    move	$t9,$s2
    jalr	$t9
    nop
.L01604a1c:
    beqz	$s6,.L01604a60
    ld	$a0,368($sp)
    lw	$t8,68($a0)
    lw	$t9,212($s1)
    move	$s0,$t8
    move	$a2,$s6
    movz	$s0,$zero,$t8
    jalr	$t9
    move	$a1,$s0
    beqz	$s0,.L01604a54
    nop
    lw	$t9,392($s1)
    jalr	$t9
    move	$a0,$s0
.L01604a54:
    lw	$t9,348($s1)
    jalr	$t9
    move	$a0,$s6
.L01604a60:
    lw	$t9,492($s1)
    lw	$a0,16($sp)
    jalr	$t9
    lw	$a0,24($a0)
    ld	$a1,176($sp)
    beqz	$a1,.L01604a8c
    nop
    lw	$t9,476($s1)
    ld	$a1,144($sp)
    jalr	$t9
    lw	$a0,16($sp)
.L01604a8c:
    lw	$t9,208($s1)
    beqz	$t9,.L01604ab0
    ld	$v0,368($sp)
    lw	$a0,16($sp)
    ld	$a1,144($sp)
    move	$a2,$zero
    jalr	$t9
    lw	$a0,24($a0)
    ld	$v0,368($sp)
.L01604ab0:
    lw	$v0,124($v0)
.L01604ab4:
    sll	$v1,$v0,0x14
.L01604ab8:
    bltz	$v1,.L01604f44
    lw	$t9,-27904($gp)
.L01604ac0:
    ld	$s3,480($sp)
.L01604ac4:
    ld	$s8,472($sp)
    ld	$s0,456($sp)
    ld	$s1,448($sp)
    ld	$s7,440($sp)
    ld	$gp,240($sp)
    ld	$s2,264($sp)
    ld	$ra,464($sp)
    ld	$s4,248($sp)
    ld	$s5,232($sp)
    ld	$s6,256($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L01604af4:
    b	.L016044a0
    sd	$a0,416($sp)
.L01604afc:
    beqz	$s4,.L01604f14
    ld	$v0,368($sp)
    b	.L016041e4
    sd	$zero,216($sp)
.L01604b0c:
    lw	$t9,256($s1)
    ld	$a0,368($sp)
    move	$a1,$zero
    move	$a2,$zero
    ld	$a4,208($sp)
    move	$a3,$zero
    jalr	$t9
    ld	$a5,352($sp)
    bnez	$s4,.L016041e4
    sd	$v0,216($sp)
.L01604b34:
    ld	$a2,216($sp)
    beqz	$a2,.L01604fe4
    ld	$v0,368($sp)
    lw	$t9,212($s1)
    ld	$a0,368($sp)
    move	$a1,$zero
    jalr	$t9
    ld	$a2,216($sp)
    lw	$t9,348($s1)
    jalr	$t9
    ld	$a0,216($sp)
    ld	$v0,368($sp)
    b	.L01604ab4
    lw	$v0,124($v0)
.L01604b6c:
    lw	$t9,356($s1)
    ld	$a1,384($sp)
    ld	$a2,312($sp)
    jalr	$t9
    move	$a0,$a1
    ld	$v1,416($sp)
    beqz	$v1,.L01604bec
    ld	$a4,328($sp)
    ld	$a3,224($sp)
    ld	$a2,272($sp)
    ld	$a1,328($sp)
    lw	$t9,376($s1)
    subu	$a1,$a1,$a2
    ld	$a2,320($sp)
    ld	$a0,416($sp)
    jalr	$t9
    subu	$a2,$a2,$a3
    lw	$t9,364($s1)
    ld	$a1,384($sp)
    ld	$a2,416($sp)
    jalr	$t9
    move	$a0,$a1
    ld	$a3,320($sp)
    ld	$a2,328($sp)
    ld	$a1,272($sp)
    lw	$t9,376($s1)
    subu	$a1,$a1,$a2
    ld	$a2,224($sp)
    ld	$a0,416($sp)
    jalr	$t9
    subu	$a2,$a2,$a3
    ld	$a4,328($sp)
.L01604bec:
    ld	$a3,272($sp)
    ld	$a5,224($sp)
    bne	$a3,$a4,.L01604c00
    ld	$a6,320($sp)
    beq	$a5,$a6,.L01604c1c
.L01604c00:
    ld	$a0,368($sp)
    lw	$t9,16($a0)
    lw	$t9,224($t9)
    lw	$a1,96($sp)
    ld	$a2,384($sp)
    jalr	$t9
    dsll32	$a1,$a1,0x0
.L01604c1c:
    lw	$t9,364($s1)
    ld	$a1,312($sp)
    ld	$a2,384($sp)
    jalr	$t9
    move	$a0,$a1
    ld	$s2,368($sp)
    lw	$s2,36($s2)
    bnez	$s2,.L01604c9c
    ld	$t9,368($sp)
.L01604c40:
    lw	$t9,124($t9)
    ld	$t8,392($sp)
    srl	$t9,$t9,0x14
    andi	$t9,$t9,0xf
    beq	$t8,$t9,.L01604f24
    ld	$ra,416($sp)
.L01604c58:
    bnez	$ra,.L01604d10
    ld	$at,384($sp)
    b	.L016044a0
    sd	$at,416($sp)
.L01604c68:
    lw	$t9,356($s1)
    move	$a0,$s0
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    b	.L01604234
    li	$t8,11
    nop
    nop
    nop
.L01604c90:
    lw	$s2,28($s2)
    beqz	$s2,.L01604c40
    ld	$t9,368($sp)
.L01604c9c:
    lw	$v1,124($s2)
    ld	$v0,392($sp)
    srl	$v1,$v1,0x10
    andi	$v1,$v1,0xf
    bne	$v0,$v1,.L01604c90
    nop
    lw	$t9,356($s1)
    ld	$a0,376($sp)
    addiu	$a1,$s2,56
    jalr	$t9
    ld	$a2,384($sp)
    lw	$t9,-28436($gp)
    la	$a1,RecomputeExposures__NG
    move	$a0,$s2
    jalr	$t9
    ld	$a2,376($sp)
    lw	$s2,28($s2)
    bnez	$s2,.L01604c9c
    nop
    b	.L01604c40
    ld	$t9,368($sp)
.L01604cf0:
    b	.L01604118
    move	$s2,$zero
.L01604cf8:
    b	.L01603e98
    move	$t1,$zero
.L01604d00:
    b	.L01603eac
    move	$a6,$zero
.L01604d08:
    b	.L01603f54
    move	$s7,$zero
.L01604d10:
    lw	$t9,360($s1)
    ld	$a1,416($sp)
    ld	$a2,384($sp)
    jalr	$t9
    move	$a0,$a1
    lw	$t9,348($s1)
    jalr	$t9
    ld	$a0,384($sp)
    b	.L016044a4
    ld	$t2,392($sp)
.L01604d38:
    jalr	$t9
    ld	$a0,344($sp)
    ld	$s3,344($sp)
    move	$s2,$v0
    move	$a4,$v0
    sw	$v0,0($s4)
    beqz	$v0,.L016050a0
    addu	$s3,$v0,$s3
    blez	$s8,.L01604d94
    ld	$s4,336($sp)
    sd	$v0,528($sp)
    nop
    nop
    nop
.L01604d70:
    lw	$t9,340($s1)
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    addiu	$s2,$s2,12
    bne	$s2,$s3,.L01604d70
    ld	$a4,528($sp)
    ld	$s4,336($sp)
.L01604d94:
    lw	$t8,-5736($gp)
    lw	$s4,132($s4)
    sll	$t8,$t8,0x2
    addu	$s4,$s4,$t8
    bgtz	$s8,.L01603d54
    lw	$s4,0($s4)
    b	.L01603d04
    ld	$v0,336($sp)
.L01604db4:
    lw	$t9,336($s1)
    move	$a0,$zero
    jalr	$t9
    li	$a1,1
    ld	$s0,368($sp)
    lw	$t8,116($s0)
    sw	$v0,80($sp)
    beqz	$t8,.L01604094
    addiu	$s0,$s0,44
    lw	$t9,344($s1)
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s0
    b	.L01604098
    lw	$s3,16($sp)
.L01604df0:
    lw	$t8,124($t8)
    srl	$t8,$t8,0x14
    andi	$t8,$t8,0xf
    beqz	$t8,.L01604f84
    nop
    lw	$t9,336($s1)
    move	$a0,$zero
    ld	$s3,488($sp)
    jalr	$t9
    li	$a1,1
    lw	$t9,344($s1)
    ld	$a1,368($sp)
    move	$a0,$v0
    sw	$v0,76($sp)
    jalr	$t9
    addiu	$a1,$a1,44
    b	.L01603e74
    ld	$v0,368($sp)
.L01604e38:
    lw	$t9,336($s1)
    move	$a0,$zero
    jalr	$t9
    li	$a1,1
    lw	$t9,344($s1)
    ld	$a1,368($sp)
    move	$a0,$v0
    sw	$v0,72($sp)
    jalr	$t9
    addiu	$a1,$a1,72
    addiu	$a6,$sp,24
    sw	$zero,40($a6)
    sw	$zero,36($a6)
    sw	$zero,32($a6)
    sw	$zero,28($a6)
    sw	$zero,24($a6)
    sw	$zero,20($a6)
    sw	$zero,16($a6)
    sw	$zero,12($a6)
    sw	$zero,8($a6)
    sw	$zero,4($a6)
    sw	$zero,24($sp)
    ld	$s7,368($sp)
    lw	$s7,36($s7)
    beqz	$s7,.L01604ee4
    la	$t1,UnmapWindow
.L01604ea0:
    lw	$a0,124($s7)
    srl	$a0,$a0,0x10
    andi	$a0,$a0,0xf
    addiu	$v0,$sp,24
    sll	$v1,$a0,0x2
    beqz	$a0,.L01604ff4
    addu	$v0,$v0,$v1
    lw	$a1,0($v0)
    beqz	$a1,.L0160501c
    sd	$v0,136($sp)
.L01604ec8:
    lw	$t9,360($s1)
    move	$a0,$a1
    jalr	$t9
    addiu	$a2,$s7,56
    lw	$s7,28($s7)
.L01604edc:
    bnez	$s7,.L01604ea0
    la	$t1,UnmapWindow
.L01604ee4:
    b	.L01603e5c
    sd	$s3,488($sp)
.L01604eec:
    sd	$s3,488($sp)
    ld	$a1,312($sp)
    b	.L01603e5c
    sw	$a1,72($sp)
.L01604efc:
    lw	$t9,-28416($gp)
    ld	$a0,336($sp)
    jalr	$t9
    li	$a1,1
    b	.L01603d04
    ld	$v0,336($sp)
.L01604f14:
    b	.L01604ab4
    lw	$v0,124($v0)
.L01604f1c:
    b	.L01603f54
    move	$s7,$zero
.L01604f24:
    ld	$a0,368($sp)
    lw	$t9,364($s1)
    lw	$a0,68($a0)
    ld	$a2,384($sp)
    jalr	$t9
    move	$a1,$a0
    b	.L01604c58
    ld	$ra,416($sp)
.L01604f44:
    jalr	$t9
    nop
    b	.L01604ac4
    ld	$s3,480($sp)
.L01604f54:
    lw	$v0,120($v0)
    beqz	$v0,.L0160506c
    sll	$a1,$s8,0x2
    lw	$v1,44($v0)
    bnez	$v1,.L016041f4
    sd	$s2,176($sp)
    sll	$a0,$s8,0x2
    subu	$a0,$a0,$s8
    sd	$s3,144($sp)
    sll	$a0,$a0,0x2
    b	.L01604358
    sd	$a0,344($sp)
.L01604f84:
    sw	$zero,76($sp)
    b	.L01603e70
    ld	$s3,488($sp)
.L01604f90:
    lw	$t9,472($s1)
    move	$a1,$s3
    jalr	$t9
    lw	$a0,16($sp)
    b	.L016040ec
    move	$s2,$v0
.L01604fa8:
    lw	$t9,348($s1)
    ld	$s6,216($sp)
    jalr	$t9
    ld	$a0,312($sp)
    lw	$t9,348($s1)
    jalr	$t9
    ld	$a0,376($sp)
    ld	$a1,416($sp)
    beqz	$a1,.L01604a1c
    nop
    lw	$t9,348($s1)
    jalr	$t9
    ld	$a0,416($sp)
    b	.L01604a1c
    nop
.L01604fe4:
    b	.L01604ab4
    lw	$v0,124($v0)
.L01604fec:
    b	.L01603f54
    move	$s7,$zero
.L01604ff4:
    move	$t9,$t1
    move	$a0,$s7
    jalr	$t9
    li	$a1,1
    b	.L01604edc
    lw	$s7,28($s7)
.L0160500c:
    addiu	$v1,$v1,44
    sd	$v1,376($sp)
    b	.L016041ac
    sw	$v1,80($sp)
.L0160501c:
    lw	$t9,336($s1)
    move	$a0,$zero
    jalr	$t9
    li	$a1,1
    ld	$a0,136($sp)
    move	$a1,$v0
    b	.L01604ec8
    sw	$v0,0($a0)
.L0160503c:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18480
    b	.L01604ac4
    ld	$s3,480($sp)
.L01605054:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18480
    b	.L01604ac4
    ld	$s3,480($sp)
.L0160506c:
    sd	$s2,176($sp)
    subu	$a1,$a1,$s8
    sd	$s3,144($sp)
    sll	$a1,$a1,0x2
    b	.L01604358
    sd	$a1,344($sp)
.L01605084:
    lw	$t9,344($s1)
    ld	$a1,368($sp)
    move	$a0,$s7
    jalr	$t9
    addiu	$a1,$a1,56
    b	.L01603f58
    ld	$a2,168($sp)
.L016050a0:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18480
    b	.L01604ac4
    ld	$s3,480($sp)

glabel nfbLayerValidateTreeSL
    addiu	$sp,$sp,-288
    move	$at,$s8
    addiu	$s8,$sp,288
    sd	$at,-144($s8)
    sd	$zero,-240($s8)
    sd	$zero,-104($s8)
    sd	$a2,-232($s8)
    sd	$s0,-272($s8)
    sd	$s4,-128($s8)
    sd	$s6,-136($s8)
    lw	$s6,132($a0)
    sd	$s5,-168($s8)
    sd	$s7,-160($s8)
    sd	$s1,-176($s8)
    lui	$t8,0x13
    lw	$s1,16($a0)
    addiu	$t8,$t8,768
    sd	$gp,-152($s8)
    addu	$gp,$t9,$t8
    lw	$s5,116($s1)
    lw	$s7,-5736($gp)
    lw	$a4,64($s5)
    sll	$s7,$s7,0x2
    lw	$t8,60($s5)
    move	$s4,$a1
    addu	$s6,$s6,$s7
    sd	$t8,-216($s8)
    move	$s7,$a0
    bnez	$a1,.L0160a73c
    lw	$s6,0($s6)
    lw	$s4,36($a0)
.L0160a73c:
    ld	$v1,-232($s8)
    li	$v0,3
    beq	$v1,$v0,.L0160afe8
    li	$a0,1
    sd	$a0,-200($s8)
    sd	$a4,-280($s8)
    sd	$ra,-264($s8)
    sd	$s3,-256($s8)
.L0160a75c:
    lw	$t9,340($s1)
.L0160a760:
    move	$a2,$zero
    move	$a1,$zero
    addiu	$s3,$s8,-64
    sd	$s2,-248($s8)
    jalr	$t9
    move	$a0,$s3
    lw	$a1,40($s5)
    sll	$a3,$a1,0x2
    move	$s2,$zero
    subu	$a5,$a3,$a1
    li	$a4,-16
    sll	$a5,$a5,0x2
    li	$a6,-16
    addiu	$a5,$a5,15
    addiu	$a3,$a3,15
    and	$a5,$a5,$a6
    and	$a3,$a3,$a4
    subu	$sp,$sp,$a5
    sd	$sp,-224($s8)
    subu	$sp,$sp,$a3
    beqz	$a1,.L0160a814
    sd	$sp,-192($s8)
    ld	$s0,-224($s8)
    sd	$s4,-96($s8)
    move	$s3,$zero
    ld	$s4,-192($s8)
    nop
    nop
.L0160a7d0:
    lw	$t9,340($s1)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    lw	$a4,64($s5)
    lw	$a5,40($s5)
    addiu	$s2,$s2,1
    sltu	$a5,$s2,$a5
    addu	$a4,$a4,$s3
    addiu	$s0,$s0,12
    addiu	$s4,$s4,4
    lw	$a4,0($a4)
    addiu	$s3,$s3,4
    bnez	$a5,.L0160a7d0
    sw	$a4,-4($s4)
    ld	$s4,-96($s8)
.L0160a814:
    lw	$t9,-30112($gp)
    move	$a0,$s7
    move	$a1,$s4
    ld	$a2,-224($s8)
    ld	$a3,-232($s8)
    jalr	$t9
    addiu	$a4,$s8,-68
    sd	$v0,-208($s8)
    sd	$s4,-96($s8)
    beqz	$v0,.L0160a8d8
    sd	$s7,-120($s8)
    lw	$a7,40($s5)
    sd	$s4,-96($s8)
    move	$s0,$zero
    beqz	$a7,.L0160a8d8
    sd	$s7,-120($s8)
    ld	$s4,-216($s8)
    move	$s3,$zero
    ld	$s7,-224($s8)
    ld	$t1,-216($s8)
    sll	$t2,$a7,0x2
    addu	$t1,$t1,$t2
.L0160a86c:
    b	.L0160a88c
    lw	$t3,0($s4)
.L0160a874:
    addiu	$s0,$s0,1
    addiu	$s3,$s3,12
    addiu	$s7,$s7,12
    beqz	$t0,.L0160a8d8
    move	$s4,$a7
    lw	$t3,0($s4)
.L0160a88c:
    addiu	$a7,$s4,4
    beqz	$t3,.L0160a874
    sltu	$t0,$a7,$t1
    lw	$t9,364($s1)
    lw	$a0,44($s5)
    move	$a2,$s7
    addu	$a0,$a0,$s3
    jalr	$t9
    move	$a1,$a0
    lw	$a7,40($s5)
    addiu	$s4,$s4,4
    addiu	$s0,$s0,1
    addiu	$s7,$s7,12
    ld	$t1,-216($s8)
    sltu	$a1,$s0,$a7
    addiu	$s3,$s3,12
    sll	$t2,$a7,0x2
    bnez	$a1,.L0160a86c
    addu	$t1,$t1,$t2
.L0160a8d8:
    ld	$a3,-200($s8)
    ld	$a2,-232($s8)
    ld	$s4,-104($s8)
    beq	$a2,$a3,.L0160a910
    sw	$a3,-72($s8)
    ld	$a4,-120($s8)
    lw	$a5,-5736($gp)
    lw	$a4,132($a4)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    lw	$a4,28($a4)
    beqz	$a4,.L0160b1d0
    ld	$s4,-104($s8)
.L0160a910:
    ld	$a5,-96($s8)
.L0160a914:
    beqz	$a5,.L0160ac3c
    move	$s3,$a5
    b	.L0160a990
    lw	$t0,124($s3)
.L0160a924:
    addiu	$s0,$s0,4
    addiu	$s2,$s2,12
    beqz	$t2,.L0160a980
    move	$s7,$t1
.L0160a934:
    lw	$a6,0($t0)
    addiu	$t0,$t0,4
    addiu	$t1,$s7,1
    beqz	$a6,.L0160a924
    sltu	$t2,$t1,$a7
    lw	$t9,364($s1)
    move	$a0,$s2
    move	$a1,$s2
    jalr	$t9
    ld	$a2,-112($s8)
    lw	$a7,40($s5)
    addiu	$s7,$s7,1
    sltu	$t0,$s7,$a7
    addiu	$s0,$s0,4
    bnez	$t0,.L0160ac30
    addiu	$s2,$s2,12
    nop
    nop
    nop
.L0160a980:
    lw	$s3,28($s3)
    beqz	$s3,.L0160ac40
    lw	$t1,-72($s8)
    lw	$t0,124($s3)
.L0160a990:
    lw	$t9,-5736($gp)
    lw	$s7,132($s3)
    sll	$t8,$t0,0x15
    sll	$t9,$t9,0x2
    lw	$a7,68($s3)
    addu	$s7,$s7,$t9
    bltz	$t8,.L0160ab50
    lw	$s7,0($s7)
    beqz	$a7,.L0160a980
    nop
    lw	$t9,392($s1)
    jalr	$t9
    addiu	$a0,$s3,44
    lw	$t9,392($s1)
    jalr	$t9
    addiu	$a0,$s3,56
    sw	$zero,68($s3)
    lw	$at,24($s7)
    sw	$zero,36($s7)
    lw	$ra,24($s6)
    lw	$t1,-5736($gp)
    ld	$a0,-208($s8)
    beq	$ra,$at,.L0160aa24
    lw	$a7,24($s3)
    beqz	$a7,.L0160aa24
    sll	$t0,$t1,0x2
    nop
    nop
.L0160aa00:
    lw	$v1,132($a7)
    addu	$v1,$t0,$v1
    lw	$v1,0($v1)
    lw	$v0,28($v1)
    addiu	$v0,$v0,-1
    sw	$v0,28($v1)
    lw	$a7,24($a7)
    bnez	$a7,.L0160aa00
    nop
.L0160aa24:
    beqz	$a0,.L0160a980
    nop
    lw	$s0,36($s3)
    beqz	$s0,.L0160a980
    nop
    b	.L0160aa78
    lw	$a3,68($s0)
.L0160aa40:
    lw	$a2,132($a7)
    addu	$a2,$t0,$a2
    lw	$a2,0($a2)
    lw	$a1,28($a2)
    addiu	$a1,$a1,-1
    sw	$a1,28($a2)
    lw	$a7,24($a7)
    bnez	$a7,.L0160aa40
    nop
.L0160aa64:
    lw	$a7,36($s0)
.L0160aa68:
    beqz	$a7,.L0160aaf0
    nop
    move	$s0,$a7
.L0160aa74:
    lw	$a3,68($s0)
.L0160aa78:
    beqz	$a3,.L0160aa64
    nop
    lw	$t9,392($s1)
    lw	$t8,-5736($gp)
    lw	$s2,132($s0)
    sll	$t8,$t8,0x2
    addu	$s2,$s2,$t8
    addiu	$a0,$s0,44
    jalr	$t9
    lw	$s2,0($s2)
    lw	$t9,392($s1)
    jalr	$t9
    addiu	$a0,$s0,56
    sw	$zero,68($s0)
    sw	$zero,36($s2)
    lw	$a7,24($s0)
    lw	$t0,-5736($gp)
    lw	$t9,132($a7)
    sll	$t0,$t0,0x2
    addu	$t9,$t9,$t0
    lw	$t9,0($t9)
    lw	$ra,24($s2)
    lw	$t9,24($t9)
    beq	$t9,$ra,.L0160aa64
    nop
    bnez	$a7,.L0160aa40
    nop
    b	.L0160aa68
    lw	$a7,36($s0)
    nop
.L0160aaf0:
    lw	$a7,28($s0)
    beqz	$a7,.L0160ab0c
    nop
.L0160aafc:
    beq	$s0,$s3,.L0160a980
    nop
    b	.L0160aa74
    move	$s0,$a7
.L0160ab0c:
    beq	$s3,$s0,.L0160aafc
    nop
.L0160ab14:
    lw	$s0,24($s0)
    lw	$a7,28($s0)
    bnez	$a7,.L0160aafc
    nop
    beq	$s3,$s0,.L0160aafc
    nop
    lw	$s0,24($s0)
    lw	$a7,28($s0)
    bnez	$a7,.L0160aafc
    nop
    bne	$s3,$s0,.L0160ab14
    nop
    b	.L0160aafc
    nop
    nop
.L0160ab50:
    beqz	$a7,.L0160af8c
    lw	$t9,-29644($gp)
    move	$a0,$s3
    move	$a1,$s1
    ld	$a2,-224($s8)
    ld	$a3,-232($s8)
    jalr	$t9
    addiu	$a4,$s8,-64
    lw	$t1,28($s6)
    ld	$t2,-216($s8)
    beqz	$t1,.L0160abf8
    addiu	$s0,$s3,56
    lw	$t1,24($s7)
    sll	$t0,$t1,0x2
    addu	$t2,$t2,$t0
    lw	$t2,0($t2)
    lw	$a7,28($s7)
    subu	$a1,$t0,$t1
    beqz	$t2,.L0160abf8
    sll	$a1,$a1,0x2
    lw	$a0,44($s5)
    lw	$t9,400($s1)
    beqz	$a7,.L0160b264
    addu	$a0,$a0,$a1
    jalr	$t9
    addiu	$a1,$s3,44
    lw	$t9,364($s1)
    addiu	$a0,$s8,-64
    move	$a1,$s0
    jalr	$t9
    addiu	$a2,$s3,72
    lw	$a3,24($s7)
    lw	$t9,400($s1)
    sll	$a2,$a3,0x2
    lw	$a0,44($s5)
    subu	$a2,$a2,$a3
    addiu	$a1,$s8,-64
    sll	$a2,$a2,0x2
    sd	$s4,-104($s8)
    jalr	$t9
    addu	$a0,$a0,$a2
    ld	$s4,-104($s8)
.L0160abf8:
    lw	$a4,-72($s8)
.L0160abfc:
    beqz	$a4,.L0160a980
    ld	$s2,-224($s8)
    lw	$t0,24($s7)
    lw	$a7,40($s5)
    addiu	$a4,$s3,84
    sll	$s0,$t0,0x2
    sltu	$t9,$t0,$a7
    subu	$t8,$s0,$t0
    move	$s7,$t0
    sll	$t8,$t8,0x2
    beqz	$t9,.L0160a980
    addu	$s2,$s2,$t8
    sd	$a4,-112($s8)
.L0160ac30:
    lw	$t0,64($s5)
    b	.L0160a934
    addu	$t0,$t0,$s0
.L0160ac3c:
    lw	$t1,-72($s8)
.L0160ac40:
    beqz	$t1,.L0160b03c
    ld	$s2,-280($s8)
    lw	$t9,340($s1)
.L0160ac4c:
    ld	$a0,-120($s8)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    lw	$a0,68($a0)
    ld	$a0,-120($s8)
    lw	$t9,340($s1)
    lw	$a0,68($a0)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$a0,12
    ld	$a2,-200($s8)
    ld	$a1,-232($s8)
    lw	$a3,32($s6)
    andi	$a3,$a3,0x8
    beq	$a1,$a2,.L0160ae38
    sd	$a3,-184($s8)
    ld	$a4,-232($s8)
    li	$a5,4
    beq	$a4,$a5,.L0160ad2c
    ld	$t2,-120($s8)
    lw	$a7,24($s6)
    sll	$t0,$a7,0x2
    addu	$a6,$s2,$t0
    lw	$a6,0($a6)
    beqz	$a6,.L0160ad20
    ld	$a3,-232($s8)
    ld	$a0,-120($s8)
    lw	$t9,364($s1)
    ld	$a1,-224($s8)
    subu	$a3,$t0,$a7
    sll	$a3,$a3,0x2
    addiu	$a2,$a0,44
    lw	$a0,68($a0)
    jalr	$t9
    addu	$a1,$a1,$a3
    ld	$a4,-184($s8)
    beqz	$a4,.L0160ad20
    ld	$a3,-232($s8)
    lw	$a7,4($s6)
    bltz	$a7,.L0160ad20
    ld	$a3,-232($s8)
    lw	$a0,92($s5)
    lw	$t9,400($s1)
    sll	$a2,$a7,0x2
    ld	$a1,-120($s8)
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    lw	$a1,68($a1)
    jalr	$t9
    addu	$a0,$a0,$a2
    ld	$a3,-232($s8)
.L0160ad20:
    li	$a4,3
    beq	$a3,$a4,.L0160b200
.L0160ad28:
    ld	$t2,-120($s8)
.L0160ad2c:
    lw	$a7,24($s6)
    lw	$t2,116($t2)
    sll	$t1,$a7,0x2
    addu	$t0,$s2,$t1
    beqz	$t2,.L0160ad94
    lw	$t0,0($t0)
    beqz	$t0,.L0160adbc
    ld	$a1,-120($s8)
    lw	$t9,364($s1)
    addiu	$a0,$s8,-64
    ld	$a2,-224($s8)
    subu	$a3,$t1,$a7
    sll	$a3,$a3,0x2
    addiu	$a1,$a1,44
    jalr	$t9
    addu	$a2,$a2,$a3
    lw	$t9,244($s1)
    addiu	$a1,$s8,-64
    move	$a2,$zero
    ld	$a0,-120($s8)
    jalr	$t9
    move	$a3,$zero
    lw	$a7,24($s6)
    sll	$t0,$a7,0x2
    addu	$t0,$s2,$t0
    lw	$t0,0($t0)
.L0160ad94:
    beqz	$t0,.L0160adbc
    ld	$a0,-120($s8)
    lw	$t9,344($s1)
    sll	$a2,$a7,0x2
    ld	$a1,-224($s8)
    subu	$a2,$a2,$a7
    addiu	$a0,$a0,44
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
.L0160adbc:
    lw	$a7,40($s5)
    beqz	$a7,.L0160ae10
    move	$s3,$zero
    move	$s0,$zero
    move	$s4,$s2
    ld	$s7,-224($s8)
    sll	$t1,$a7,0x2
    addu	$t1,$s2,$t1
    nop
.L0160ade0:
    lw	$t2,0($s4)
    addiu	$a7,$s4,4
    beqz	$t2,.L0160adfc
    sltu	$t0,$a7,$t1
    lw	$t3,24($s6)
    bne	$s3,$t3,.L0160afa8
    nop
.L0160adfc:
    addiu	$s3,$s3,1
    addiu	$s0,$s0,12
    addiu	$s7,$s7,12
    bnez	$t0,.L0160ade0
    move	$s4,$a7
.L0160ae10:
    lw	$t9,-28128($gp)
.L0160ae14:
    lw	$v0,0($t9)
    ld	$ra,-120($s8)
    ld	$t8,-200($s8)
    lui	$at,0x1000
    addiu	$v0,$v0,1
    sltu	$at,$at,$v0
    movz	$t8,$v0,$at
    sw	$t8,20($ra)
    sw	$t8,0($t9)
.L0160ae38:
    ld	$v1,-208($s8)
    beqz	$v1,.L0160b08c
    nop
    lw	$a7,24($s6)
    ld	$a0,-216($s8)
    sll	$v0,$a7,0x2
    addu	$a0,$a0,$v0
    lw	$a0,0($a0)
    beqz	$a0,.L0160ae88
    nop
    lw	$a2,28($s6)
    lw	$a0,44($s5)
    subu	$a1,$v0,$a7
    sll	$a1,$a1,0x2
    lw	$t9,400($s1)
    beqz	$a2,.L0160b220
    addu	$a0,$a0,$a1
    ld	$a1,-120($s8)
    jalr	$t9
    addiu	$a1,$a1,44
.L0160ae88:
    lw	$a2,40($s5)
.L0160ae8c:
    beqz	$a2,.L0160af10
    move	$s7,$zero
    ld	$s2,-192($s8)
    ld	$s4,-216($s8)
    move	$s3,$zero
    move	$s6,$zero
    ld	$s0,-224($s8)
    nop
    nop
.L0160aeb0:
    lw	$a4,64($s5)
    lw	$a3,0($s2)
    addu	$a4,$a4,$s3
    sw	$a3,0($a4)
    lw	$t9,352($s1)
    jalr	$t9
    move	$a0,$s0
    lw	$a5,0($s4)
    beqz	$a5,.L0160aeec
    nop
    lw	$t9,404($s1)
    lw	$a0,44($s5)
    addiu	$a1,$s8,-72
    jalr	$t9
    addu	$a0,$a0,$s6
.L0160aeec:
    lw	$a1,40($s5)
    addiu	$s2,$s2,4
    addiu	$s7,$s7,1
    addiu	$s4,$s4,4
    sltu	$a1,$s7,$a1
    addiu	$s3,$s3,4
    addiu	$s0,$s0,12
    bnez	$a1,.L0160aeb0
    addiu	$s6,$s6,12
.L0160af10:
    ld	$a2,-184($s8)
.L0160af14:
    beqz	$a2,.L0160af28
    ld	$a3,-232($s8)
    li	$a4,3
    beq	$a3,$a4,.L0160b274
    nop
.L0160af28:
    lw	$t9,352($s1)
.L0160af2c:
    jalr	$t9
    addiu	$a0,$s8,-64
    lw	$t9,232($s1)
    beqz	$t9,.L0160af54
    ld	$s0,-272($s8)
    move	$a1,$zero
    ld	$a0,-120($s8)
    jalr	$t9
    move	$a2,$zero
    ld	$s0,-272($s8)
.L0160af54:
    ld	$s3,-256($s8)
    ld	$s2,-248($s8)
    ld	$gp,-152($s8)
    ld	$s1,-176($s8)
    ld	$s4,-128($s8)
    ld	$s5,-168($s8)
    ld	$s6,-136($s8)
    ld	$ra,-264($s8)
    ld	$a5,-144($s8)
    li	$v0,1
    ld	$s7,-160($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L0160af8c:
    li	$a6,3
    srl	$a7,$t0,0xd
    and	$a7,$a6,$a7
    bne	$a6,$a7,.L0160a980
    move	$s7,$s3
    b	.L0160b10c
    lw	$a7,124($s7)
.L0160afa8:
    lw	$t9,344($s1)
    lw	$a0,40($s6)
    move	$a1,$s7
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a7,40($s5)
    addiu	$s4,$s4,4
    addiu	$s3,$s3,1
    addiu	$s7,$s7,12
    sltu	$a1,$s3,$a7
    addiu	$s0,$s0,12
    sll	$t1,$a7,0x2
    bnez	$a1,.L0160ade0
    addu	$t1,$s2,$t1
    b	.L0160ae14
    lw	$t9,-28128($gp)
.L0160afe8:
    lw	$a2,32($s6)
    sd	$a4,-280($s8)
    andi	$a2,$a2,0x8
    sd	$ra,-264($s8)
    beqz	$a2,.L0160b288
    sd	$s3,-256($s8)
    lw	$s3,28($s4)
    move	$v0,$zero
    beqz	$s3,.L0160b2d8
    sw	$s4,-44($s8)
    li	$a3,1
    sd	$a3,-200($s8)
    ld	$a4,-200($s8)
.L0160b01c:
    lw	$a5,68($s3)
    beq	$a4,$a5,.L0160b234
    li	$a2,1
    lw	$s3,28($s3)
    bnez	$s3,.L0160b01c
    ld	$a4,-200($s8)
    b	.L0160b238
    sw	$v0,-48($s8)
.L0160b03c:
    lw	$a7,24($s6)
    ld	$s2,-280($s8)
    sll	$t0,$a7,0x2
    addu	$a6,$s2,$t0
    lw	$a6,0($a6)
    beqz	$a6,.L0160b078
    nop
    lw	$t9,364($s1)
    ld	$a0,-224($s8)
    subu	$a1,$t0,$a7
    sll	$a1,$a1,0x2
    addiu	$a2,$s8,-88
    addu	$a0,$a0,$a1
    jalr	$t9
    move	$a1,$a0
.L0160b078:
    lw	$t9,352($s1)
    jalr	$t9
    addiu	$a0,$s8,-88
    b	.L0160ac4c
    lw	$t9,340($s1)
.L0160b08c:
    lw	$a2,40($s5)
    beqz	$a2,.L0160af10
    move	$s4,$zero
    ld	$s2,-192($s8)
    move	$s3,$zero
    ld	$s0,-224($s8)
    nop
    nop
    nop
.L0160b0b0:
    lw	$a4,64($s5)
    lw	$a3,0($s2)
    addu	$a4,$a4,$s3
    sw	$a3,0($a4)
    lw	$t9,352($s1)
    jalr	$t9
    move	$a0,$s0
    lw	$a5,40($s5)
    addiu	$s4,$s4,1
    sltu	$a5,$s4,$a5
    addiu	$s2,$s2,4
    addiu	$s3,$s3,4
    bnez	$a5,.L0160b0b0
    addiu	$s0,$s0,12
    b	.L0160af14
    ld	$a2,-184($s8)
.L0160b0f0:
    beq	$s7,$s3,.L0160a980
    move	$s7,$a7
    nop
    nop
.L0160b100:
    move	$s4,$zero
    sd	$zero,-240($s8)
    lw	$a7,124($s7)
.L0160b10c:
    sll	$a6,$a7,0x15
    bltz	$a6,.L0160b16c
    li	$t8,2
.L0160b118:
    bnez	$s4,.L0160b100
    nop
    lw	$a7,28($s7)
    bnez	$a7,.L0160b0f0
    nop
    beq	$s7,$s3,.L0160a980
    nop
.L0160b134:
    lw	$s7,24($s7)
    lw	$a7,28($s7)
    bnez	$a7,.L0160b0f0
    nop
    beq	$s3,$s7,.L0160b0f0
    nop
    lw	$s7,24($s7)
    lw	$a7,28($s7)
    bnez	$a7,.L0160b0f0
    nop
    bne	$s3,$s7,.L0160b134
    nop
    b	.L0160b0f0
    nop
.L0160b16c:
    srl	$t3,$a7,0xd
    lw	$t0,120($s7)
    li	$t2,-24577
    andi	$t3,$t3,0x3
    lw	$t1,104($s7)
    and	$t2,$t2,$a7
    ori	$t2,$t2,0x4000
    beq	$t3,$t8,.L0160b1b4
    sw	$t2,124($s7)
    beqz	$t0,.L0160b1e8
    lui	$t8,0x1
    lw	$t9,16($t0)
    or	$t9,$t9,$t1
    and	$t8,$t8,$t9
    beqz	$t8,.L0160b1b4
    lw	$t9,-28504($gp)
.L0160b1ac:
    jalr	$t9
    move	$a0,$s7
.L0160b1b4:
    lw	$ra,36($s7)
.L0160b1b8:
    ld	$s4,-240($s8)
    li	$at,1
    movn	$s7,$ra,$ra
    movn	$s4,$at,$ra
    b	.L0160b118
    sd	$s4,-240($s8)
.L0160b1d0:
    lw	$v0,-68($s8)
    slti	$v0,$v0,2
    beqz	$v0,.L0160b294
    nop
.L0160b1e0:
    b	.L0160a914
    ld	$a5,-96($s8)
.L0160b1e8:
    lui	$v1,0x1
    and	$v1,$v1,$t1
    bnez	$v1,.L0160b1ac
    lw	$t9,-28504($gp)
    b	.L0160b1b8
    lw	$ra,36($s7)
.L0160b200:
    ld	$a0,-184($s8)
    beqz	$a0,.L0160ad28
    lw	$t9,-30812($gp)
    lw	$a1,-48($s8)
    jalr	$t9
    lw	$a0,-44($s8)
    b	.L0160ad2c
    ld	$t2,-120($s8)
.L0160b220:
    ld	$a1,-120($s8)
    jalr	$t9
    addiu	$a1,$a1,56
    b	.L0160ae8c
    lw	$a2,40($s5)
.L0160b234:
    sw	$a2,-48($s8)
.L0160b238:
    lw	$a0,24($s4)
    beq	$a0,$s7,.L0160a75c
    nop
.L0160b244:
    lw	$t9,464($s1)
    jalr	$t9
    move	$s4,$a0
    lw	$a0,24($s4)
    bne	$a0,$s7,.L0160b244
    nop
    b	.L0160a760
    lw	$t9,340($s1)
.L0160b264:
    jalr	$t9
    move	$a1,$s0
    b	.L0160abfc
    lw	$a4,-72($s8)
.L0160b274:
    lw	$t9,108($s5)
    jalr	$t9
    move	$a0,$s1
    b	.L0160af2c
    lw	$t9,352($s1)
.L0160b288:
    li	$a3,1
    b	.L0160a75c
    sd	$a3,-200($s8)
.L0160b294:
    lw	$t9,340($s1)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$s8,-88
    ld	$s3,-120($s8)
    ld	$t0,-96($s8)
    lw	$s3,40($s3)
    lh	$t0,10($t0)
    lh	$a7,10($s3)
    slt	$a4,$t0,$a7
    bnez	$a4,.L0160b2fc
    ld	$ra,-96($s8)
    beq	$t0,$a7,.L0160b2e8
    ld	$t9,-96($s8)
.L0160b2d0:
    b	.L0160b348
    lw	$v1,68($s3)
.L0160b2d8:
    li	$t8,1
    sd	$t8,-200($s8)
    b	.L0160b238
    sw	$zero,-48($s8)
.L0160b2e8:
    lh	$ra,8($s3)
    lh	$t9,8($t9)
    slt	$t9,$t9,$ra
    beqz	$t9,.L0160b2d0
    ld	$ra,-96($s8)
.L0160b2fc:
    bnez	$ra,.L0160b38c
    move	$s3,$ra
.L0160b304:
    lw	$t9,404($s1)
.L0160b308:
    addiu	$a0,$s8,-88
    jalr	$t9
    addiu	$a1,$s8,-72
    lw	$at,-72($s8)
    beqz	$at,.L0160b1e0
    nop
    lw	$t9,352($s1)
    jalr	$t9
    addiu	$a0,$s8,-88
    b	.L0160b1e0
    nop
.L0160b334:
    ld	$v0,-96($s8)
.L0160b338:
    beq	$v0,$s3,.L0160b304
    nop
    lw	$s3,32($s3)
.L0160b344:
    lw	$v1,68($s3)
.L0160b348:
    beqz	$v1,.L0160b334
    lw	$a7,124($s3)
    sll	$a0,$a7,0x15
    bgez	$a0,.L0160b338
    ld	$v0,-96($s8)
    lw	$t9,400($s1)
    addiu	$a0,$s8,-88
    jalr	$t9
    addiu	$a1,$s3,84
    ld	$a1,-96($s8)
    beq	$a1,$s3,.L0160b304
    nop
    b	.L0160b344
    lw	$s3,32($s3)
.L0160b380:
    lw	$s3,28($s3)
    beqz	$s3,.L0160b304
    nop
.L0160b38c:
    lw	$a2,68($s3)
    beqz	$a2,.L0160b380
    lw	$a7,124($s3)
    sll	$a3,$a7,0x15
    bgez	$a3,.L0160b380
    nop
    lw	$t9,400($s1)
    addiu	$a0,$s8,-88
    jalr	$t9
    addiu	$a1,$s3,84
    lw	$s3,28($s3)
    bnez	$s3,.L0160b38c
    nop
    b	.L0160b308
    lw	$t9,404($s1)

glabel nfbInfCopyPlane__JK
    addiu	$sp,$sp,-96
    sd	$ra,16($sp)
    sd	$gp,24($sp)
    lw	$v1,100($sp)
    lui	$v0,0x13
    sw	$v1,4($sp)
    addiu	$v0,$v0,-6544
    lw	$at,108($sp)
    addu	$gp,$t9,$v0
    sw	$at,12($sp)
    lw	$ra,-6768($gp)
    lw	$t9,76($a2)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,16($t9)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfb14RopLoop__OH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L0160c6b0
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L0160c648
    sra	$a3,$t0,0x2
.L0160c61c:
    lw	$v0,0($a0)
    lw	$v1,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    and	$v0,$v0,$v1
    nor	$v0,$v0,$zero
    bnez	$a4,.L0160c61c
    sw	$v0,-4($a1)
.L0160c648:
    beqz	$a3,.L0160c6b0
    nop
.L0160c650:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    and	$t3,$t3,$t8
    nor	$t3,$t3,$zero
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    and	$t1,$t1,$t2
    nor	$t1,$t1,$zero
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    and	$a7,$a7,$t0
    nor	$a7,$a7,$zero
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    and	$a4,$a4,$a6
    nor	$a4,$a4,$zero
    bnez	$a5,.L0160c650
    sw	$a4,-4($a1)
.L0160c6b0:
    jr	$ra
    nop

glabel nfbStereoCopyWindow__CJ
    addiu	$sp,$sp,-224
    move	$t8,$s8
    addiu	$s8,$sp,224
    sd	$a2,-208($s8)
    sd	$s1,-160($s8)
    sd	$s3,-136($s8)
    sd	$gp,-176($s8)
    sd	$s5,-144($s8)
    sd	$s0,-112($s8)
    lw	$s0,16($a0)
    sd	$s2,-152($s8)
    lui	$s5,0x13
    lw	$s2,116($s0)
    sd	$s7,-96($s8)
    addiu	$s5,$s5,-7424
    addu	$gp,$t9,$s5
    lw	$s7,40($s2)
    dsra32	$at,$a1,0x0
    lw	$s3,-5736($gp)
    move	$a2,$zero
    sd	$s4,-104($s8)
    sll	$s4,$s7,0x2
    lw	$s1,132($a0)
    sll	$s3,$s3,0x2
    subu	$s4,$s4,$s7
    sd	$t8,-168($s8)
    li	$a1,-16
    sll	$s4,$s4,0x2
    sw	$at,-24($s8)
    addu	$s1,$s1,$s3
    addiu	$v1,$s4,15
    li	$a3,-16
    lw	$s1,0($s1)
    and	$a1,$v1,$a1
    and	$v1,$v1,$a3
    lw	$a3,0($s0)
    subu	$sp,$sp,$a1
    move	$s5,$sp
    subu	$sp,$sp,$v1
    lw	$t9,340($s0)
    sd	$s6,-128($s8)
    move	$s6,$a0
    addiu	$v0,$s8,-56
    sd	$ra,-120($s8)
    move	$a0,$v0
    move	$a1,$zero
    sd	$a3,-192($s8)
    jalr	$t9
    move	$s3,$sp
    sd	$s5,-88($s8)
    sd	$s4,-80($s8)
    blez	$s7,.L0160c7e8
    sd	$s3,-200($s8)
    sd	$s6,-64($s8)
    ld	$s6,-80($s8)
    ld	$t8,-88($s8)
    ld	$s5,-200($s8)
    move	$s3,$t8
    addu	$s6,$s6,$t8
    nop
.L0160c7b0:
    lw	$t9,340($s0)
    move	$a0,$s3
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    lw	$t9,340($s0)
    move	$a0,$s5
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    addiu	$s3,$s3,12
    bne	$s3,$s6,.L0160c7b0
    addiu	$s5,$s5,12
    ld	$s6,-64($s8)
.L0160c7e8:
    lw	$t9,344($s0)
    addiu	$s5,$s8,-56
    addiu	$s3,$s6,56
    move	$a0,$s5
    jalr	$t9
    move	$a1,$s3
    ld	$t9,-192($s8)
    sll	$t8,$t9,0x2
    subu	$t8,$t8,$t9
    addiu	$s4,$gp,-6776
    lw	$t9,356($s0)
    sll	$t8,$t8,0x2
    move	$a2,$s3
    addu	$s4,$s4,$t8
    move	$a0,$s3
    addiu	$s4,$s4,25656
    jalr	$t9
    move	$a1,$s4
    blez	$s7,.L0160c8a0
    sd	$s3,-72($s8)
    move	$s3,$zero
    sd	$s6,-64($s8)
    move	$s5,$zero
    b	.L0160c85c
    ld	$s6,-88($s8)
.L0160c84c:
    addiu	$s3,$s3,1
.L0160c850:
    addiu	$s6,$s6,12
    beq	$s3,$s7,.L0160c89c
    addiu	$s5,$s5,12
.L0160c85c:
    lw	$ra,24($s1)
    beq	$s3,$ra,.L0160c84c
    nop
    lw	$t9,344($s0)
    lw	$a1,44($s1)
    move	$a0,$s6
    jalr	$t9
    addu	$a1,$a1,$s5
    lw	$t9,356($s0)
    lw	$a0,44($s1)
    move	$a1,$s4
    addu	$a0,$a0,$s5
    jalr	$t9
    move	$a2,$a0
    b	.L0160c850
    addiu	$s3,$s3,1
.L0160c89c:
    ld	$s6,-64($s8)
.L0160c8a0:
    lw	$a1,28($s1)
    beqz	$a1,.L0160d044
    nop
    blez	$s7,.L0160c904
    nop
    sd	$s6,-64($s8)
    ld	$s6,-80($s8)
    ld	$t8,-208($s8)
    ld	$s5,-200($s8)
    move	$s3,$t8
    addu	$s6,$s6,$t8
    nop
.L0160c8d0:
    lw	$t9,356($s0)
    move	$a0,$s3
    move	$a1,$s4
    jalr	$t9
    move	$a2,$s3
    lw	$t9,344($s0)
    move	$a0,$s5
    jalr	$t9
    move	$a1,$s3
    addiu	$s3,$s3,12
    bne	$s3,$s6,.L0160c8d0
    addiu	$s5,$s5,12
    ld	$s6,-64($s8)
.L0160c904:
    lw	$t9,220($s2)
.L0160c908:
    lh	$at,-22($s8)
    li	$ra,2
    sd	$at,-184($s8)
    beq	$t9,$ra,.L0160ccdc
    lw	$t9,236($s2)
    lw	$a1,-24($s8)
    move	$a0,$s6
    ld	$a2,-208($s8)
    jalr	$t9
    dsll32	$a1,$a1,0x0
    lw	$t9,376($s0)
    lhu	$a2,226($s2)
    move	$a1,$zero
    ld	$a0,-72($s8)
    jalr	$t9
    negu	$a2,$a2
    lw	$a3,28($s1)
    beqz	$a3,.L0160ca6c
    nop
    blez	$s7,.L0160c9dc
    ld	$t8,-200($s8)
    sd	$s6,-64($s8)
    move	$s3,$zero
    ld	$s6,-80($s8)
    sd	$s7,-216($s8)
    move	$s7,$zero
    move	$s5,$t8
    b	.L0160c9a4
    addu	$s6,$s6,$t8
.L0160c97c:
    lw	$t9,376($s0)
.L0160c980:
    lhu	$a2,226($s2)
    move	$a0,$s5
    move	$a1,$zero
    jalr	$t9
    negu	$a2,$a2
    addiu	$s5,$s5,12
    addiu	$s7,$s7,12
    beq	$s5,$s6,.L0160c9d4
    addiu	$s3,$s3,1
.L0160c9a4:
    lw	$a3,24($s1)
    beq	$s3,$a3,.L0160c97c
    nop
    lhu	$a2,226($s2)
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    negu	$a2,$a2
    jalr	$t9
    addu	$a0,$a0,$s7
    b	.L0160c980
    lw	$t9,376($s0)
.L0160c9d4:
    ld	$s7,-216($s8)
    ld	$s6,-64($s8)
.L0160c9dc:
    lw	$s3,36($s6)
    b	.L0160ca0c
    move	$s4,$zero
    nop
    nop
.L0160c9f0:
    lw	$a4,36($s3)
    beqz	$a4,.L0160ca50
    nop
    lw	$a3,28($s5)
    beqz	$a3,.L0160ca50
    nop
    move	$s3,$a4
.L0160ca0c:
    lw	$t8,-5736($gp)
    lw	$s5,132($s3)
    sll	$t8,$t8,0x2
    addu	$s5,$s5,$t8
    lw	$s5,0($s5)
    lw	$a4,24($s1)
    lw	$a5,24($s5)
    beq	$a4,$a5,.L0160c9f0
    nop
    lw	$t9,376($s0)
    lhu	$a2,226($s2)
    move	$a1,$zero
    addiu	$a0,$s3,56
    jalr	$t9
    negu	$a2,$a2
    b	.L0160c9f0
    li	$s4,1
.L0160ca50:
    lw	$a4,28($s3)
    beqz	$a4,.L0160cb18
    nop
.L0160ca5c:
    beq	$s3,$s6,.L0160cac4
    nop
    b	.L0160ca0c
    move	$s3,$a4
.L0160ca6c:
    blez	$s7,.L0160caa8
    andi	$a3,$s7,0x1
    move	$s4,$s7
    move	$s5,$zero
    move	$s3,$zero
    beqz	$a3,.L0160caa0
    sra	$a5,$s4,0x1
    lw	$a4,24($s1)
    bne	$zero,$a4,.L0160d0d8
    nop
    addiu	$s5,$s5,12
.L0160ca98:
    addiu	$s3,$s3,1
    sra	$a5,$s4,0x1
.L0160caa0:
    bnezl	$a5,.L0160cfe4
    lw	$t0,24($s1)
.L0160caa8:
    lw	$t9,376($s0)
    lhu	$a2,226($s2)
    move	$a1,$zero
    ld	$a0,-200($s8)
    jalr	$t9
    negu	$a2,$a2
    move	$s4,$zero
.L0160cac4:
    lhu	$a5,226($s2)
    lh	$a4,10($s6)
    ld	$a2,-184($s8)
    subu	$a4,$a4,$a5
    sh	$a4,10($s6)
    lhu	$a3,226($s2)
    lw	$t9,236($s2)
    subu	$a2,$a2,$a3
    sh	$a2,-22($s8)
    lw	$a1,-24($s8)
    move	$a0,$s6
    ld	$a2,-200($s8)
    jalr	$t9
    dsll32	$a1,$a1,0x0
    lh	$a6,10($s6)
    lhu	$a7,226($s2)
    addu	$a6,$a6,$a7
    beqz	$s4,.L0160cc10
    sh	$a6,10($s6)
    b	.L0160cb74
    lw	$s3,36($s6)
.L0160cb18:
    beq	$s6,$s3,.L0160ca5c
    nop
.L0160cb20:
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160ca5c
    nop
    beq	$s6,$s3,.L0160ca5c
    nop
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160ca5c
    nop
    bne	$s6,$s3,.L0160cb20
    nop
    b	.L0160ca5c
    nop
.L0160cb58:
    lw	$a4,36($s3)
.L0160cb5c:
    beqz	$a4,.L0160cbb4
    nop
    lw	$t0,28($s5)
    beqz	$t0,.L0160cbb4
    nop
    move	$s3,$a4
.L0160cb74:
    lw	$t8,-5736($gp)
    lw	$s5,132($s3)
    sll	$t8,$t8,0x2
    addu	$s5,$s5,$t8
    lw	$s5,0($s5)
    lw	$t1,24($s1)
    lw	$t2,24($s5)
    beq	$t1,$t2,.L0160cb58
    nop
    lw	$t9,376($s0)
    move	$a1,$zero
    lhu	$a2,226($s2)
    jalr	$t9
    addiu	$a0,$s3,56
    b	.L0160cb5c
    lw	$a4,36($s3)
.L0160cbb4:
    lw	$a4,28($s3)
    beqz	$a4,.L0160cbd0
    nop
.L0160cbc0:
    beq	$s3,$s6,.L0160cc10
    nop
    b	.L0160cb74
    move	$s3,$a4
.L0160cbd0:
    beq	$s6,$s3,.L0160cbc0
    nop
.L0160cbd8:
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160cbc0
    nop
    beq	$s6,$s3,.L0160cbc0
    nop
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160cbc0
    nop
    bne	$s6,$s3,.L0160cbd8
    nop
    b	.L0160cbc0
    nop
.L0160cc10:
    lw	$t9,344($s0)
    ld	$a0,-72($s8)
    jalr	$t9
    addiu	$a1,$s8,-56
    blez	$s7,.L0160cc98
    ld	$t8,-200($s8)
    move	$s3,$zero
    ld	$s6,-80($s8)
    move	$s5,$zero
    move	$s4,$t8
    ld	$s2,-88($s8)
    b	.L0160cc70
    addu	$s6,$s6,$t8
.L0160cc44:
    lw	$t9,352($s0)
.L0160cc48:
    jalr	$t9
    move	$a0,$s4
    lw	$t9,352($s0)
    jalr	$t9
    move	$a0,$s2
    addiu	$s4,$s4,12
    addiu	$s2,$s2,12
    addiu	$s5,$s5,12
    beq	$s4,$s6,.L0160cc98
    addiu	$s3,$s3,1
.L0160cc70:
    lw	$t9,24($s1)
    beq	$s3,$t9,.L0160cc44
    nop
    lw	$t9,344($s0)
    lw	$a0,44($s1)
    move	$a1,$s2
    jalr	$t9
    addu	$a0,$a0,$s5
    b	.L0160cc48
    lw	$t9,352($s0)
.L0160cc98:
    lw	$t9,352($s0)
    jalr	$t9
    addiu	$a0,$s8,-56
    ld	$gp,-176($s8)
    ld	$s0,-112($s8)
    ld	$s1,-160($s8)
    ld	$s2,-152($s8)
    ld	$s3,-136($s8)
    ld	$s4,-104($s8)
    ld	$s5,-144($s8)
    ld	$s6,-128($s8)
    ld	$ra,-120($s8)
    ld	$a1,-168($s8)
    ld	$s7,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0160ccdc:
    lw	$a1,-24($s8)
    move	$a0,$s6
    ld	$a2,-208($s8)
    jalr	$t9
    dsll32	$a1,$a1,0x0
    lw	$t9,376($s0)
    ld	$a0,-72($s8)
    lhu	$a2,226($s2)
    move	$a1,$zero
    jalr	$t9
    sd	$s6,-64($s8)
    ld	$t8,-200($s8)
    lw	$t9,28($s1)
    ld	$s6,-80($s8)
    move	$s3,$zero
    move	$s4,$zero
    ld	$s5,-200($s8)
    beqz	$t9,.L0160ce20
    addu	$s6,$s6,$t8
    blez	$s7,.L0160cd88
    nop
    b	.L0160cd60
    lw	$ra,24($s1)
.L0160cd38:
    lw	$t9,376($s0)
.L0160cd3c:
    move	$a0,$s5
    move	$a1,$zero
    jalr	$t9
    lhu	$a2,226($s2)
    addiu	$s5,$s5,12
    addiu	$s4,$s4,12
    beq	$s5,$s6,.L0160cd88
    addiu	$s3,$s3,1
    lw	$ra,24($s1)
.L0160cd60:
    beq	$s3,$ra,.L0160cd38
    nop
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    lhu	$a2,226($s2)
    jalr	$t9
    addu	$a0,$a0,$s4
    b	.L0160cd3c
    lw	$t9,376($s0)
.L0160cd88:
    ld	$s3,-64($s8)
    move	$s4,$zero
    b	.L0160cdbc
    lw	$s3,36($s3)
    nop
    nop
.L0160cda0:
    lw	$a4,36($s3)
    beqz	$a4,.L0160cdfc
    nop
    lw	$t8,28($s5)
    beqz	$t8,.L0160cdfc
    nop
    move	$s3,$a4
.L0160cdbc:
    lw	$t8,-5736($gp)
    lw	$s5,132($s3)
    sll	$t8,$t8,0x2
    addu	$s5,$s5,$t8
    lw	$s5,0($s5)
    lw	$t9,24($s1)
    lw	$ra,24($s5)
    beq	$t9,$ra,.L0160cda0
    nop
    lw	$t9,376($s0)
    move	$a1,$zero
    lhu	$a2,226($s2)
    jalr	$t9
    addiu	$a0,$s3,56
    b	.L0160cda0
    li	$s4,1
.L0160cdfc:
    lw	$a4,28($s3)
    ld	$t9,-64($s8)
    beqz	$a4,.L0160ced0
    ld	$t8,-64($s8)
.L0160ce0c:
    ld	$t9,-64($s8)
.L0160ce10:
    beq	$s3,$t9,.L0160ce78
    ld	$a0,-64($s8)
    b	.L0160cdbc
    move	$s3,$a4
.L0160ce20:
    blez	$s7,.L0160ce5c
    andi	$ra,$s7,0x1
    move	$s6,$s7
    move	$s5,$zero
    move	$s3,$zero
    beqz	$ra,.L0160ce54
    sra	$v0,$s6,0x1
    lw	$at,24($s1)
    bne	$zero,$at,.L0160d0fc
    nop
    addiu	$s5,$s5,12
.L0160ce4c:
    addiu	$s3,$s3,1
    sra	$v0,$s6,0x1
.L0160ce54:
    bnezl	$v0,.L0160d090
    lw	$a4,24($s1)
.L0160ce5c:
    lw	$t9,376($s0)
    ld	$a0,-200($s8)
    move	$a1,$zero
    jalr	$t9
    lhu	$a2,226($s2)
    move	$s4,$zero
    ld	$a0,-64($s8)
.L0160ce78:
    lhu	$a5,226($s2)
    lh	$a4,10($a0)
    ld	$a2,-184($s8)
    addu	$a4,$a4,$a5
    sh	$a4,10($a0)
    lhu	$a3,226($s2)
    lw	$t9,236($s2)
    addu	$a2,$a2,$a3
    sh	$a2,-22($s8)
    lw	$a1,-24($s8)
    ld	$a2,-200($s8)
    jalr	$t9
    dsll32	$a1,$a1,0x0
    ld	$a7,-64($s8)
    lhu	$t0,226($s2)
    lh	$a6,10($a7)
    subu	$a6,$a6,$t0
    beqz	$s4,.L0160cc10
    sh	$a6,10($a7)
    ld	$s3,-64($s8)
    b	.L0160cf2c
    lw	$s3,36($s3)
.L0160ced0:
    beq	$t8,$s3,.L0160ce0c
    nop
.L0160ced8:
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160cf08
    nop
    beq	$t9,$s3,.L0160cf08
    nop
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160cf08
    ld	$ra,-64($s8)
    bne	$ra,$s3,.L0160ced8
    ld	$t9,-64($s8)
.L0160cf08:
    b	.L0160ce10
    ld	$t9,-64($s8)
.L0160cf10:
    lw	$a4,36($s3)
.L0160cf14:
    beqz	$a4,.L0160cf70
    nop
    lw	$at,28($s5)
    beqz	$at,.L0160cf70
    nop
    move	$s3,$a4
.L0160cf2c:
    lw	$t8,-5736($gp)
    lw	$s5,132($s3)
    sll	$t8,$t8,0x2
    addu	$s5,$s5,$t8
    lw	$s5,0($s5)
    lw	$v0,24($s1)
    lw	$v1,24($s5)
    beq	$v0,$v1,.L0160cf10
    nop
    lw	$t9,376($s0)
    lhu	$a2,226($s2)
    move	$a1,$zero
    addiu	$a0,$s3,56
    jalr	$t9
    negu	$a2,$a2
    b	.L0160cf14
    lw	$a4,36($s3)
.L0160cf70:
    lw	$a4,28($s3)
    ld	$a6,-64($s8)
    ld	$a3,-64($s8)
    beqz	$a4,.L0160cf94
    ld	$a5,-64($s8)
.L0160cf84:
    beq	$s3,$a3,.L0160cc10
    nop
    b	.L0160cf2c
    move	$s3,$a4
.L0160cf94:
    beq	$a5,$s3,.L0160cf84
    nop
.L0160cf9c:
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160cf84
    nop
    beq	$a6,$s3,.L0160cf84
    nop
    lw	$s3,24($s3)
    lw	$a4,28($s3)
    bnez	$a4,.L0160cf84
    ld	$a7,-64($s8)
    bne	$a7,$s3,.L0160cf9c
    ld	$a6,-64($s8)
    b	.L0160cf84
    nop
.L0160cfd4:
    addiu	$s3,$s3,1
.L0160cfd8:
    beq	$s3,$s7,.L0160caa8
    addiu	$s5,$s5,12
    lw	$t0,24($s1)
.L0160cfe4:
    bne	$s3,$t0,.L0160d020
    nop
    lw	$t1,24($s1)
.L0160cff0:
    addiu	$s3,$s3,1
    beq	$s3,$t1,.L0160cfd4
    addiu	$s5,$s5,12
    lhu	$a2,226($s2)
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    negu	$a2,$a2
    jalr	$t9
    addu	$a0,$a0,$s5
    b	.L0160cfd8
    addiu	$s3,$s3,1
.L0160d020:
    lhu	$a2,226($s2)
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    negu	$a2,$a2
    jalr	$t9
    addu	$a0,$a0,$s5
    b	.L0160cff0
    lw	$t1,24($s1)
.L0160d044:
    lw	$t9,356($s0)
    ld	$a2,-208($s8)
    move	$a1,$s4
    jalr	$t9
    move	$a0,$a2
    lw	$t9,344($s0)
    ld	$a0,-200($s8)
    jalr	$t9
    ld	$a1,-208($s8)
    b	.L0160c908
    lw	$t9,220($s2)
.L0160d070:
    lw	$a3,24($s1)
.L0160d074:
    addiu	$s3,$s3,1
    bne	$s3,$a3,.L0160d0b8
    addiu	$s5,$s5,12
    addiu	$s3,$s3,1
.L0160d084:
    beq	$s3,$s7,.L0160ce5c
    addiu	$s5,$s5,12
    lw	$a4,24($s1)
.L0160d090:
    beq	$s3,$a4,.L0160d070
    nop
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    lhu	$a2,226($s2)
    jalr	$t9
    addu	$a0,$a0,$s5
    b	.L0160d074
    lw	$a3,24($s1)
.L0160d0b8:
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    lhu	$a2,226($s2)
    jalr	$t9
    addu	$a0,$a0,$s5
    b	.L0160d084
    addiu	$s3,$s3,1
.L0160d0d8:
    lhu	$a2,226($s2)
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    negu	$a2,$a2
    jalr	$t9
    nop
    b	.L0160ca98
    addiu	$s5,$s5,12
.L0160d0fc:
    lw	$t9,376($s0)
    lw	$a0,44($s1)
    move	$a1,$zero
    lhu	$a2,226($s2)
    jalr	$t9
    nop
    b	.L0160ce4c
    addiu	$s5,$s5,12

glabel nfbNoopDDATranslateBackingStore
    jr	$ra
    move	$v0,$zero

glabel nfb10RopLoop__KH
    addiu	$sp,$sp,-144
    move	$t2,$a1
    subu	$a7,$a2,$a1
    sltu	$at,$a1,$a2
    addiu	$t8,$a2,-64
    addiu	$a5,$a7,3
    beqz	$at,.L01611ee8
    addiu	$a4,$a7,6
    slt	$v0,$a5,$zero
    movz	$a4,$a5,$v0
    sra	$a6,$a4,0x2
    andi	$a3,$a6,0x7
    beqz	$a3,.L01611b84
    sra	$a0,$a6,0x3
.L01611b68:
    lw	$v1,0($t2)
    addiu	$t2,$t2,4
    addiu	$a3,$a3,-1
    pref	0x1,252($t2)
    nor	$v1,$v1,$zero
    bnez	$a3,.L01611b68
    sw	$v1,-4($t2)
.L01611b84:
    addiu	$t0,$t2,64
    sltu	$a3,$t0,$a2
    beqz	$a0,.L01611ee8
    sltu	$a4,$t0,$t2
    beqz	$a3,.L01612058
    nop
    bnez	$a4,.L01612058
    nop
    sd	$s2,56($sp)
    sd	$s1,64($sp)
    sd	$s3,72($sp)
    sd	$ra,88($sp)
    lw	$v0,8($t2)
    lw	$v1,16($t2)
    lw	$a7,24($t2)
    lw	$a1,28($t2)
    lw	$at,56($t2)
    sd	$s0,48($sp)
    lw	$s0,0($t2)
    lw	$a3,52($t2)
    lw	$a2,60($t2)
    lw	$a6,4($t2)
    lw	$a5,12($t2)
    sltu	$a4,$t0,$t8
    sd	$s5,80($sp)
    move	$s5,$t0
    addiu	$t1,$t2,32
    lw	$t9,20($t2)
    move	$t0,$t2
    sltu	$t3,$t1,$t8
    pref	0x1,256($t2)
    move	$t2,$s5
    move	$ra,$t3
    sd	$s7,96($sp)
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    sd	$s4,104($sp)
    nor	$a7,$a7,$zero
    nor	$a1,$a1,$zero
    sd	$s6,112($sp)
    move	$s6,$at
    move	$s5,$s0
.L01611c2c:
    sw	$v0,8($t0)
    sw	$v1,16($t0)
    lw	$v1,16($t1)
    lw	$a0,12($t1)
    lw	$v0,8($t1)
    lw	$s3,4($t1)
    lw	$s2,0($t1)
    sw	$a7,24($t0)
    sw	$a1,28($t0)
    lw	$s0,28($t2)
    addiu	$t3,$t2,32
    lw	$at,24($t2)
    nor	$a1,$a2,$zero
    sltu	$a7,$t3,$t8
    lw	$s7,20($t2)
    nor	$a2,$t9,$zero
    sw	$a2,20($t0)
    nor	$a2,$s6,$zero
    nor	$a5,$a5,$zero
    sw	$a5,12($t0)
    nor	$v1,$v1,$zero
    nor	$a5,$a6,$zero
    sw	$a5,4($t0)
    nor	$v0,$v0,$zero
    nor	$a5,$s5,$zero
    beqz	$ra,.L01611fdc
    sw	$a5,0($t0)
    sw	$v0,8($t1)
    sw	$v1,16($t1)
    lw	$t9,16($t2)
    lw	$a5,12($t2)
    lw	$v0,8($t2)
    lw	$a6,4($t2)
    lw	$s5,0($t2)
    sw	$a2,24($t1)
    sw	$a1,28($t1)
    lw	$a2,60($t2)
    addiu	$t0,$t2,64
    lw	$s6,56($t2)
    nor	$a1,$s0,$zero
    sltu	$s0,$t0,$t8
    lw	$s1,52($t2)
    nor	$v1,$a3,$zero
    sw	$v1,20($t1)
    nor	$a3,$at,$zero
    nor	$at,$a0,$zero
    sw	$at,12($t1)
    nor	$v1,$t9,$zero
    nor	$at,$s3,$zero
    sw	$at,4($t1)
    nor	$v0,$v0,$zero
    nor	$at,$s2,$zero
    beqz	$a4,.L01611ef0
    sw	$at,0($t1)
    sw	$v0,8($t2)
    sw	$v1,16($t2)
    lw	$v1,48($t2)
    lw	$a0,44($t2)
    lw	$v0,40($t2)
    lw	$s3,36($t2)
    lw	$s2,32($t2)
    sw	$a3,24($t2)
    sw	$a1,28($t2)
    pref	0x1,256($t0)
    lw	$a4,92($t2)
    addiu	$t1,$t2,96
    lw	$s4,88($t2)
    nor	$a1,$a2,$zero
    sltu	$ra,$t1,$t8
    lw	$t9,84($t2)
    nor	$at,$s7,$zero
    sw	$at,20($t2)
    nor	$a2,$s6,$zero
    nor	$at,$a5,$zero
    sw	$at,12($t2)
    nor	$v1,$v1,$zero
    nor	$at,$a6,$zero
    sw	$at,4($t2)
    nor	$v0,$v0,$zero
    nor	$at,$s5,$zero
    beqz	$a7,.L01611f64
    sw	$at,0($t2)
    sw	$v0,8($t3)
    sw	$v1,16($t3)
    lw	$v1,80($t2)
    lw	$a5,76($t2)
    lw	$v0,72($t2)
    lw	$a6,68($t2)
    lw	$s5,0($t0)
    sw	$a2,24($t3)
    sw	$a1,28($t3)
    lw	$a2,124($t2)
    addiu	$t2,$t2,128
    lw	$s6,24($t1)
    nor	$a1,$a4,$zero
    sltu	$a4,$t2,$t8
    lw	$a3,20($t1)
    nor	$at,$s1,$zero
    sw	$at,20($t3)
    nor	$a7,$s4,$zero
    nor	$at,$a0,$zero
    sw	$at,12($t3)
    nor	$v1,$v1,$zero
    nor	$at,$s3,$zero
    sw	$at,4($t3)
    nor	$v0,$v0,$zero
    nor	$at,$s2,$zero
    bnez	$s0,.L01611c2c
    sw	$at,0($t3)
    move	$s2,$s6
    ld	$s6,112($sp)
    ld	$s4,104($sp)
    ld	$s7,96($sp)
    ld	$ra,88($sp)
    move	$a4,$t1
    move	$t1,$s5
    ld	$s5,80($sp)
    move	$a0,$t0
    ld	$s3,72($sp)
    move	$t0,$a5
    move	$s1,$a7
    move	$s0,$a2
    move	$a5,$s1
    ld	$s1,64($sp)
    move	$a2,$a3
    move	$a3,$s2
    ld	$s2,56($sp)
    move	$t8,$a6
    move	$a6,$s0
    ld	$s0,48($sp)
    sd	$a4,8($sp)
    move	$t2,$a1
    sd	$a0,0($sp)
    move	$a7,$t2
    ld	$t2,8($sp)
    move	$a1,$v1
    move	$t3,$v0
    ld	$a4,0($sp)
.L01611e54:
    sw	$a1,16($a4)
    sw	$t3,8($a4)
    sd	$s0,120($sp)
    lw	$s0,0($t2)
    sd	$s1,128($sp)
    lw	$s1,4($t2)
    lw	$v1,8($t2)
    lw	$at,12($t2)
    lw	$v0,16($t2)
    sw	$a7,28($a4)
    sw	$a5,24($a4)
    nor	$a0,$t9,$zero
    sw	$a0,20($a4)
    nor	$a0,$t0,$zero
    sw	$a0,12($a4)
    nor	$a0,$t8,$zero
    sw	$a0,4($a4)
    nor	$a0,$t1,$zero
    sw	$a0,0($a4)
    nor	$a0,$a3,$zero
    sw	$a0,24($t2)
    nor	$a0,$a6,$zero
    sw	$a0,28($t2)
    nor	$a0,$a2,$zero
    sw	$a0,20($t2)
    nor	$v1,$v1,$zero
    sw	$v1,8($t2)
    nor	$v0,$v0,$zero
    sw	$v0,16($t2)
    nor	$at,$at,$zero
    sw	$at,12($t2)
    nor	$s0,$s0,$zero
    sw	$s0,0($t2)
    ld	$s0,120($sp)
    nor	$s1,$s1,$zero
    sw	$s1,4($t2)
    ld	$s1,128($sp)
.L01611ee8:
    jr	$ra
    addiu	$sp,$sp,144
.L01611ef0:
    move	$s2,$a3
    move	$a3,$s6
    ld	$s6,112($sp)
    ld	$s4,104($sp)
    move	$t9,$s7
    ld	$s7,96($sp)
    ld	$ra,88($sp)
    move	$t1,$s5
    ld	$s5,80($sp)
    ld	$s3,72($sp)
    move	$s0,$a2
    move	$a2,$s1
    ld	$s1,64($sp)
    move	$t0,$a5
    move	$a5,$s2
    ld	$s2,56($sp)
    move	$t8,$a6
    move	$a6,$s0
    ld	$s0,48($sp)
    move	$a4,$a1
    sd	$a4,16($sp)
    move	$a7,$t2
    sd	$a7,0($sp)
    move	$a1,$v1
    move	$t2,$t3
    ld	$a7,16($sp)
    move	$t3,$v0
    b	.L01611e54
    ld	$a4,0($sp)
.L01611f64:
    ld	$s6,112($sp)
    move	$at,$s4
    ld	$s4,104($sp)
    ld	$s7,96($sp)
    ld	$ra,88($sp)
    ld	$s5,80($sp)
    move	$t8,$s3
    ld	$s3,72($sp)
    move	$a3,$a2
    move	$a2,$t9
    move	$t9,$s1
    ld	$s1,64($sp)
    move	$t1,$s2
    ld	$s2,56($sp)
    ld	$s0,48($sp)
    move	$a5,$a4
    sd	$a5,24($sp)
    sd	$at,40($sp)
    move	$a7,$a1
    move	$a1,$v1
    sd	$a3,32($sp)
    move	$t2,$t0
    move	$t0,$a0
    ld	$a3,40($sp)
    move	$a6,$t3
    move	$t3,$v0
    ld	$a5,32($sp)
    move	$a4,$a6
    b	.L01611e54
    ld	$a6,24($sp)
.L01611fdc:
    ld	$s6,112($sp)
    ld	$s4,104($sp)
    move	$a7,$a2
    move	$a2,$s7
    ld	$s7,96($sp)
    ld	$ra,88($sp)
    ld	$s5,80($sp)
    move	$t8,$s3
    ld	$s3,72($sp)
    ld	$s1,64($sp)
    move	$a6,$t1
    move	$t1,$s2
    ld	$s2,56($sp)
    move	$a4,$s0
    move	$s0,$at
    move	$t9,$a3
    move	$a3,$s0
    ld	$s0,48($sp)
    sd	$a4,24($sp)
    sd	$a6,0($sp)
    sd	$a7,32($sp)
    move	$a5,$a1
    sd	$a5,16($sp)
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    move	$a1,$v1
    move	$t0,$a0
    ld	$a7,16($sp)
    move	$t3,$v0
    b	.L01611e54
    ld	$a4,0($sp)
.L01612058:
    lw	$a4,28($t2)
    lw	$a3,24($t2)
    lw	$a1,20($t2)
    lw	$a0,16($t2)
    lw	$v1,12($t2)
    lw	$v0,8($t2)
    lw	$at,4($t2)
    lw	$t8,0($t2)
    addiu	$t2,$t2,32
    nor	$a4,$a4,$zero
    sw	$a4,-4($t2)
    nor	$a3,$a3,$zero
    sw	$a3,-8($t2)
    nor	$a1,$a1,$zero
    sw	$a1,-12($t2)
    nor	$a0,$a0,$zero
    sw	$a0,-16($t2)
    nor	$v1,$v1,$zero
    sw	$v1,-20($t2)
    sltu	$t9,$t2,$a2
    nor	$v0,$v0,$zero
    sw	$v0,-24($t2)
    nor	$at,$at,$zero
    sw	$at,-28($t2)
    nor	$t8,$t8,$zero
    beqz	$t9,.L01611ee8
    sw	$t8,-32($t2)
    b	.L01612058
    nop

glabel nfbChangeSaveUnder
    addiu	$sp,$sp,-128
    move	$v0,$s8
    addiu	$s8,$sp,128
    sd	$v0,-72($s8)
    sd	$ra,-88($s8)
    sd	$s6,-96($s8)
    sd	$s3,-104($s8)
    sd	$s5,-80($s8)
    lui	$at,0x12
    sd	$s4,-64($s8)
    addiu	$at,$at,24640
    sd	$gp,-56($s8)
    addu	$gp,$t9,$at
    li	$t1,-16
    move	$s4,$a0
    la	$a5,numSaveUndersViewable
    move	$s5,$a1
    beqz	$a1,.L016149e4
    la	$a4,deltaSaveUndersViewable
    lw	$v1,24($a0)
    lw	$a0,24($a1)
    beq	$v1,$a0,.L016149e4
    nop
    b	.L016149f8
    move	$s5,$s4
.L016149e4:
    lw	$a1,124($s4)
    sll	$a1,$a1,0x6
    bltz	$a1,.L016149fc
    lw	$a2,0($a4)
    lw	$s5,28($s4)
.L016149f8:
    lw	$a2,0($a4)
.L016149fc:
    lw	$a1,0($a5)
    beqz	$a2,.L01614b18
    sd	$s2,-112($s8)
.L01614a08:
    lw	$a0,24($s4)
    lw	$a6,-5736($gp)
    lw	$a3,132($a0)
    sll	$a6,$a6,0x2
    addu	$a3,$a3,$a6
    lw	$a3,0($a3)
    lw	$a3,28($a3)
    lw	$s2,16($s4)
    sw	$zero,0($a4)
    addu	$a6,$a1,$a2
    beqz	$a3,.L01614b4c
    sw	$a6,0($a5)
    lw	$a7,116($s2)
    lw	$a7,40($a7)
    sll	$s6,$a7,0x2
    subu	$s6,$s6,$a7
    sll	$s6,$s6,0x2
    addiu	$t0,$s6,15
    and	$t0,$t0,$t1
    sd	$s0,-120($s8)
    subu	$sp,$sp,$t0
    sd	$a7,-48($s8)
    blez	$a7,.L01614aa4
    move	$s0,$sp
    addu	$s3,$s6,$sp
    sd	$s1,-128($s8)
    move	$s1,$sp
    nop
    nop
    lw	$t9,340($s2)
.L01614a80:
    move	$a0,$s1
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    addiu	$s1,$s1,12
    bnel	$s1,$s3,.L01614a80
    lw	$t9,340($s2)
    lw	$a0,24($s4)
    ld	$s1,-128($s8)
.L01614aa4:
    lw	$t9,-31976($gp)
    move	$a1,$s5
    move	$a2,$s0
    jalr	$t9
    li	$a3,1
    ld	$a0,-48($s8)
    addu	$s3,$s6,$s0
    blez	$a0,.L01614ae4
    move	$s4,$v0
    nop
    lw	$t9,352($s2)
.L01614ad0:
    jalr	$t9
    move	$a0,$s0
    addiu	$s0,$s0,12
    bnel	$s0,$s3,.L01614ad0
    lw	$t9,352($s2)
.L01614ae4:
    ld	$s0,-120($s8)
    ld	$s6,-96($s8)
    ld	$s3,-104($s8)
    ld	$s2,-112($s8)
    ld	$gp,-56($s8)
    move	$v0,$s4
    ld	$s4,-64($s8)
    ld	$ra,-88($s8)
    ld	$t0,-72($s8)
    ld	$s5,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t0
.L01614b18:
    bnez	$a1,.L01614a08
    ld	$s3,-104($s8)
    ld	$s6,-96($s8)
    ld	$gp,-56($s8)
    ld	$s4,-64($s8)
    ld	$ra,-88($s8)
    move	$s2,$s2
    ld	$t1,-72($s8)
    move	$v0,$zero
    ld	$s5,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L01614b4c:
    lw	$t9,340($s2)
    li	$a2,1
    move	$a1,$zero
    addiu	$s3,$s8,-40
    jalr	$t9
    move	$a0,$s3
    lw	$t9,-31976($gp)
    move	$a3,$zero
    move	$a2,$s3
    move	$a1,$s5
    jalr	$t9
    lw	$a0,24($s4)
    lw	$t9,352($s2)
    move	$s4,$v0
    jalr	$t9
    move	$a0,$s3
    b	.L01614ae4
    sd	$s0,-120($s8)

glabel nfbStereoValidateSwapbuf__FJ
    move	$a3,$s8
    addiu	$sp,$sp,-128
    lui	$v1,0x12
    addiu	$v1,$v1,8864
    addiu	$s8,$sp,128
    sd	$gp,-88($s8)
    addu	$gp,$t9,$v1
    lw	$v0,-5736($gp)
    lw	$at,132($a0)
    sll	$v0,$v0,0x2
    sd	$a3,-96($s8)
    addu	$at,$at,$v0
    lw	$at,0($at)
    sd	$s1,-72($s8)
    lw	$at,52($at)
    lw	$s1,16($a0)
    sd	$s0,-80($s8)
    move	$s0,$a0
    bnez	$at,.L01618894
    sd	$ra,-112($s8)
    lw	$a4,52($a0)
    beqz	$a4,.L01618788
    lw	$a0,116($s1)
    lw	$a5,4($a4)
    beqz	$a5,.L01618894
    nop
.L01618788:
    sh	$zero,-48($s8)
    lh	$t0,8($s1)
    sh	$t0,-44($s8)
    lw	$a6,220($a0)
    li	$a7,1
    beq	$a6,$a7,.L0161895c
    sd	$s2,-128($s8)
    sd	$a1,-104($s8)
    sd	$a2,-120($s8)
    sh	$zero,-46($s8)
    lhu	$t1,224($a0)
    sh	$t1,-42($s8)
    lhu	$s2,226($a0)
.L016187bc:
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$s8,-48
    jalr	$t9
    addiu	$a0,$s8,-64
    lw	$t9,356($s1)
    addiu	$a1,$s0,44
    addiu	$a2,$s8,-64
    jalr	$t9
    move	$a0,$a2
    lw	$a6,-56($s8)
    beqz	$a6,.L016187f8
    lw	$a4,-5736($gp)
    lw	$t2,4($a6)
    beqz	$t2,.L01618878
.L016187f8:
    sll	$t2,$a4,0x2
    beqz	$s2,.L0161897c
    nop
    beqz	$a6,.L016189bc
    li	$t8,-16
    lw	$a4,4($a6)
.L01618810:
    sll	$t3,$a4,0x3
    addiu	$t3,$t3,15
    addiu	$t0,$s8,-64
    and	$t3,$t3,$t8
    move	$a4,$zero
    subu	$sp,$sp,$t3
    beqz	$a6,.L0161883c
    move	$a0,$sp
    lw	$t8,4($a6)
    blez	$t8,.L01618844
    addiu	$t0,$a6,8
.L0161883c:
    b	.L016189d0
    move	$a7,$a0
.L01618844:
    beqz	$a6,.L01618850
    li	$a1,1
    lw	$a1,4($a6)
.L01618850:
    lw	$t9,132($s0)
    addu	$t9,$t9,$t2
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    lw	$t9,4($t9)
    move	$a2,$zero
    li	$a3,3
    li	$a4,-1
    jalr	$t9
    move	$a5,$s0
.L01618878:
    lw	$t9,352($s1)
.L0161887c:
    ld	$s2,-128($s8)
    jalr	$t9
    addiu	$a0,$s8,-64
    ld	$a2,-120($s8)
    ld	$a1,-104($s8)
    lw	$s1,16($s0)
.L01618894:
    lw	$t9,116($s1)
    lw	$t9,244($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$s1,-72($s8)
    ld	$s0,-80($s8)
    ld	$ra,-112($s8)
    ld	$at,-96($s8)
    ld	$gp,-88($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L016188c4:
    lw	$t1,4($a6)
    slt	$v0,$a4,$t1
.L016188cc:
    beqz	$v0,.L01618844
    addiu	$a4,$a4,1
    lh	$a3,0($t0)
.L016188d8:
    sh	$a3,0($a7)
    lh	$a2,4($t0)
    sh	$a2,4($a7)
    lh	$a1,2($t0)
    addu	$a1,$a1,$s2
    sh	$a1,2($a7)
    lh	$v1,6($t0)
    addu	$v1,$v1,$s2
    sh	$v1,6($a7)
    lw	$a6,-56($s8)
    li	$t1,1
    beqz	$a6,.L01618910
    lh	$a5,8($t0)
    lw	$t1,4($a6)
.L01618910:
    slt	$t3,$a4,$t1
    addiu	$a4,$a4,1
    beqz	$t3,.L01618844
    li	$t1,1
    sh	$a5,8($a7)
    lh	$ra,12($t0)
    sh	$ra,12($a7)
    lh	$t9,10($t0)
    addu	$t9,$t9,$s2
    sh	$t9,10($a7)
    lh	$t8,14($t0)
    addu	$t8,$t8,$s2
    sh	$t8,14($a7)
    lw	$a6,-56($s8)
    addiu	$a7,$a7,16
    bnez	$a6,.L016188c4
    addiu	$t0,$t0,16
    b	.L016188cc
    slt	$v0,$a4,$t1
.L0161895c:
    sd	$a1,-104($s8)
    sd	$a2,-120($s8)
    lhu	$v0,226($a0)
    sh	$v0,-46($s8)
    lh	$at,10($s1)
    move	$s2,$zero
    b	.L016187bc
    sh	$at,-42($s8)
.L0161897c:
    beqz	$a6,.L016189c8
    addiu	$a0,$s8,-64
    addiu	$a0,$a6,8
    lw	$a1,4($a6)
.L0161898c:
    lw	$t9,132($s0)
    addu	$t9,$t9,$t2
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    lw	$t9,4($t9)
    move	$a2,$zero
    li	$a3,3
    li	$a4,-1
    jalr	$t9
    move	$a5,$s0
    b	.L0161887c
    lw	$t9,352($s1)
.L016189bc:
    li	$a4,1
    b	.L01618810
    nop
.L016189c8:
    b	.L0161898c
    li	$a1,1
.L016189d0:
    addiu	$a4,$a4,1
    b	.L016188d8
    lh	$a3,0($t0)

glabel nfbStereoFillPolygon
    addiu	$sp,$sp,-112
    sll	$v1,$a4,0x2
    sd	$v1,72($sp)
    sd	$s4,104($sp)
    sd	$ra,56($sp)
    sd	$s1,40($sp)
    sd	$s8,0($sp)
    sd	$s0,16($sp)
    sd	$s6,8($sp)
    sd	$s7,32($sp)
    lw	$s7,16($a0)
    move	$s6,$a2
    lw	$a2,72($a1)
    lw	$s7,116($s7)
    sd	$s2,96($sp)
    sd	$s5,24($sp)
    lui	$s5,0x12
    sd	$s3,88($sp)
    addiu	$s5,$s5,3168
    sd	$gp,80($sp)
    addu	$gp,$t9,$s5
    lw	$s3,-6768($gp)
    lw	$s2,76($a1)
    sd	$a2,64($sp)
    sll	$s3,$s3,0x2
    lhu	$s7,226($s7)
    addu	$s2,$s2,$s3
    lw	$s2,0($s2)
    lw	$t9,-28180($gp)
    lw	$v0,92($s2)
    li	$at,1
    move	$s0,$a4
    lw	$t8,8($s2)
    move	$s8,$a5
    move	$s1,$a0
    sd	$t8,48($sp)
    move	$a0,$v1
    move	$s5,$a3
    sw	$v0,72($a1)
    move	$s3,$a1
    jalr	$t9
    sw	$at,104($s2)
    li	$a0,1
    andi	$t3,$s0,0x3
    ld	$t2,72($sp)
    blez	$s0,.L01619eac
    move	$s4,$v0
    move	$t1,$s8
    sra	$v0,$s0,0x2
    addu	$t2,$t2,$s8
    beqz	$t3,.L01619e58
    move	$t0,$s4
.L01619e30:
    lh	$t9,2($t1)
    lh	$t8,0($t1)
    pref	0x1,256($t0)
    addiu	$t0,$t0,4
    pref	0x0,256($t1)
    addiu	$t3,$t3,-1
    sh	$t9,-2($t0)
    addiu	$t1,$t1,4
    bnez	$t3,.L01619e30
    sh	$t8,-4($t0)
.L01619e58:
    beqz	$v0,.L01619eac
    nop
.L01619e60:
    lh	$a4,2($t1)
    lh	$a3,0($t1)
    sh	$a4,2($t0)
    lh	$a2,6($t1)
    sh	$a3,0($t0)
    lh	$a1,4($t1)
    sh	$a2,6($t0)
    lh	$v1,10($t1)
    sh	$a1,4($t0)
    lh	$v0,8($t1)
    sh	$v1,10($t0)
    lh	$at,14($t1)
    sh	$v0,8($t0)
    lh	$ra,12($t1)
    addiu	$t0,$t0,16
    addiu	$t1,$t1,16
    sh	$at,-2($t0)
    bne	$t1,$t2,.L01619e60
    sh	$ra,-4($t0)
.L01619eac:
    lw	$a5,16($s1)
    lw	$a5,116($a5)
    lw	$a5,220($a5)
    bne	$a0,$a5,.L01619f50
    nop
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s7
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s7
    sh	$ra,90($s2)
    lw	$t9,72($s3)
    move	$a5,$s4
    lw	$t9,40($t9)
    move	$a4,$s0
    move	$a3,$s5
    move	$a2,$s6
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s1
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s7
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s7
    sh	$ra,90($s2)
    lw	$t9,72($s3)
    move	$a5,$s8
    lw	$t9,40($t9)
    move	$a4,$s0
    move	$a3,$s5
    move	$a2,$s6
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s1
    b	.L01619fd8
    nop
.L01619f50:
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s7
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s7
    sh	$ra,90($s2)
    lw	$t9,72($s3)
    move	$a5,$s4
    lw	$t9,40($t9)
    move	$a4,$s0
    move	$a3,$s5
    move	$a2,$s6
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s1
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s7
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s7
    sh	$ra,90($s2)
    lw	$t9,72($s3)
    move	$a5,$s8
    lw	$t9,40($t9)
    move	$a4,$s0
    move	$a3,$s5
    move	$a2,$s6
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s1
.L01619fd8:
    ld	$s8,0($sp)
    ld	$s6,8($sp)
    ld	$s0,16($sp)
    ld	$s5,24($sp)
    ld	$s7,32($sp)
    lw	$t9,-28196($gp)
    ld	$s1,40($sp)
    ld	$v1,48($sp)
    move	$a0,$s4
    jalr	$t9
    sw	$v1,8($s2)
    ld	$ra,56($sp)
    ld	$s4,104($sp)
    ld	$gp,80($sp)
    ld	$a0,64($sp)
    sw	$a0,72($s3)
    sw	$zero,104($s2)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,112

glabel nfbSetSpans
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    sd	$ra,48($sp)
    sd	$s8,32($sp)
    sd	$s7,40($sp)
    lhu	$t8,14($a0)
    sd	$s3,80($sp)
    lh	$s3,10($a0)
    sd	$s1,16($sp)
    lw	$s1,132($a0)
    sd	$s4,56($sp)
    sd	$s6,72($sp)
    lui	$s6,0x12
    sd	$s5,8($sp)
    addiu	$s6,$s6,2448
    sd	$gp,64($sp)
    addu	$gp,$t9,$s6
    lw	$s5,-6768($gp)
    lw	$s4,76($a1)
    sd	$s2,88($sp)
    sll	$s5,$s5,0x2
    lw	$s2,-5736($gp)
    addu	$s4,$s4,$s5
    lw	$s4,0($s4)
    addu	$s3,$s3,$t8
    sd	$s3,128($sp)
    sll	$s2,$s2,0x2
    lw	$s5,52($s4)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lw	$t1,8($s4)
    sd	$t1,96($sp)
    sll	$t0,$a5,0x2
    lw	$t1,8($t1)
    move	$s7,$a0
    move	$s6,$a2
    lw	$s1,0($s1)
    li	$a2,1
    move	$s2,$a3
    lbu	$s4,48($s4)
    lw	$s1,8($s1)
    beqz	$t1,.L0161a2cc
    addiu	$a0,$t1,8
    lw	$a2,4($t1)
.L0161a0e0:
    beqz	$a6,.L0161a2d4
    nop
    sd	$s4,152($sp)
    move	$s4,$a0
    blez	$t0,.L0161a298
    sd	$s5,144($sp)
    la	$s8,PixmapWidthPaddingInfo
    addu	$s5,$t0,$s2
    sd	$s5,120($sp)
    move	$s5,$a4
    sll	$s3,$a2,0x3
    sd	$s1,112($sp)
    b	.L0161a4ac
    addu	$s3,$a0,$s3
    nop
    nop
.L0161a120:
    lw	$t8,0($s5)
.L0161a124:
    lbu	$v0,2($s7)
.L0161a128:
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    ld	$ra,120($sp)
    addu	$at,$s8,$at
    lw	$t9,0($at)
    addiu	$s5,$s5,4
    lw	$at,4($at)
    addiu	$s2,$s2,4
    addu	$t9,$t9,$t8
    sltu	$ra,$s2,$ra
    srav	$t9,$t9,$at
    addiu	$s1,$s4,8
    sll	$t9,$t9,0x2
    beqz	$ra,.L0161a298
    addu	$s6,$s6,$t9
    ld	$a0,128($sp)
.L0161a16c:
    lh	$v1,2($s2)
    slt	$v1,$v1,$a0
    move	$s0,$s4
    beqz	$v1,.L0161a298
    sltu	$a0,$s4,$s3
    beqz	$a0,.L0161a120
    nop
    b	.L0161a1a4
    lw	$t8,0($s5)
.L0161a190:
    move	$s4,$s1
.L0161a194:
    addiu	$s0,$s0,8
.L0161a198:
    sltu	$a1,$s0,$s3
    beqz	$a1,.L0161a124
    addiu	$s1,$s1,8
.L0161a1a4:
    lh	$t3,2($s0)
    lh	$a7,2($s2)
    lh	$t0,0($s2)
    lh	$t2,6($s0)
    slt	$t3,$a7,$t3
    lh	$a6,0($s0)
    lh	$t1,4($s0)
    bnez	$t3,.L0161a124
    slt	$a7,$a7,$t2
    slt	$t3,$t0,$t1
    addu	$t2,$t0,$t8
    beqz	$a7,.L0161a190
    slt	$t2,$t2,$a6
    bnez	$t2,.L0161a124
    nop
    beqz	$t3,.L0161a194
    slt	$t3,$t0,$a6
    movz	$a6,$t0,$t3
    sh	$a6,0($sp)
    lw	$t2,0($s5)
    lh	$t1,0($s2)
    lh	$a7,4($s0)
    addu	$t1,$t1,$t2
    slt	$t0,$a7,$t1
    movz	$a7,$t1,$t0
    sh	$a7,4($sp)
    lh	$a5,2($s2)
    sh	$a5,2($sp)
    lh	$a4,2($s2)
    addiu	$a4,$a4,1
    sh	$a4,6($sp)
    lbu	$a3,2($s7)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    ld	$t9,112($sp)
    sll	$a2,$a2,0x2
    dsll32	$a1,$a6,0x10
    lh	$a4,0($s2)
    addu	$a2,$s8,$a2
    dsra32	$a1,$a1,0x10
    lw	$a3,8($a2)
    addiu	$a0,$sp,0
    subu	$a1,$a1,$a4
    lw	$a2,4($a2)
    move	$a5,$s7
    sllv	$a1,$a1,$a3
    ld	$a4,144($sp)
    srav	$a1,$a1,$a2
    move	$a2,$zero
    ld	$a3,152($sp)
    jalr	$t9
    addu	$a1,$s6,$a1
    lw	$t8,0($s5)
    lh	$ra,0($s2)
    lh	$t9,4($s0)
    addu	$ra,$ra,$t8
    slt	$t9,$t9,$ra
    bnez	$t9,.L0161a198
    addiu	$s0,$s0,8
    b	.L0161a128
    lbu	$v0,2($s7)
.L0161a298:
    ld	$gp,64($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,56($sp)
    ld	$s5,8($sp)
    ld	$ra,48($sp)
    ld	$s6,72($sp)
    ld	$s7,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0161a2cc:
    b	.L0161a0e0
    ld	$a0,96($sp)
.L0161a2d4:
    blez	$t0,.L0161a298
    la	$s8,PixmapWidthPaddingInfo
    addu	$t9,$t0,$a4
    sd	$t9,104($sp)
    sll	$s3,$a2,0x3
    sd	$a4,136($sp)
    b	.L0161a350
    addu	$s3,$a0,$s3
    nop
    nop
    nop
.L0161a300:
    ld	$t8,136($sp)
    lw	$t8,0($t8)
.L0161a308:
    lbu	$v0,2($s7)
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    ld	$ra,136($sp)
    sll	$at,$at,0x2
    ld	$v0,104($sp)
    addu	$at,$s8,$at
    lw	$t9,0($at)
    lw	$at,4($at)
    addiu	$ra,$ra,4
    addu	$t9,$t9,$t8
    sd	$ra,136($sp)
    sltu	$ra,$ra,$v0
    srav	$t9,$t9,$at
    addiu	$s2,$s2,4
    sll	$t9,$t9,0x2
    beqz	$ra,.L0161a298
    addu	$s6,$s6,$t9
.L0161a350:
    lh	$a0,2($s2)
    pref	0x0,256($s2)
    ld	$t8,136($sp)
    ld	$a1,128($sp)
    ld	$a2,136($sp)
    ld	$a5,96($sp)
    pref	0x0,256($a2)
    bltz	$a0,.L0161a49c
    slt	$a0,$a0,$a1
    beqz	$a0,.L0161a300
    ld	$t8,136($sp)
    lw	$a4,8($a5)
    addiu	$s0,$a4,8
    movz	$s0,$a5,$a4
    sltu	$a3,$s0,$s3
    beqz	$a3,.L0161a4a4
    nop
    ld	$t8,136($sp)
    b	.L0161a3c0
    lw	$t8,0($t8)
.L0161a3a0:
    lw	$t8,0($t8)
    nop
    nop
    nop
.L0161a3b0:
    addiu	$s0,$s0,8
    sltu	$t9,$s0,$s3
    beqz	$t9,.L0161a308
    nop
.L0161a3c0:
    lh	$a7,2($s2)
    lh	$ra,2($s0)
    lh	$t2,4($s0)
    lh	$t1,0($s0)
    slt	$ra,$a7,$ra
    lh	$t0,6($s0)
    bnez	$ra,.L0161a308
    lh	$a6,0($s2)
    slt	$at,$a7,$t0
    slt	$a2,$a6,$t2
    addu	$t3,$a6,$t8
    beqz	$at,.L0161a3b0
    slt	$v0,$t3,$t1
    bnez	$v0,.L0161a3b0
    nop
    beqz	$a2,.L0161a3b0
    slt	$t3,$a6,$t1
    movz	$t1,$a6,$t3
    sh	$t1,0($sp)
    ld	$t2,136($sp)
    lh	$t0,0($s2)
    lw	$t2,0($t2)
    lh	$a6,4($s0)
    addu	$t0,$t0,$t2
    slt	$a7,$a6,$t0
    movz	$a6,$t0,$a7
    sh	$a6,4($sp)
    lh	$a5,2($s2)
    sh	$a5,2($sp)
    lh	$a4,2($s2)
    addiu	$a4,$a4,1
    sh	$a4,6($sp)
    lh	$a4,0($s2)
    lbu	$a3,2($s7)
    sll	$a2,$a3,0x2
    addiu	$a0,$sp,0
    subu	$a2,$a2,$a3
    move	$t9,$s1
    sll	$a2,$a2,0x2
    dsll32	$a1,$t1,0x10
    addu	$a2,$s8,$a2
    dsra32	$a1,$a1,0x10
    move	$a5,$s7
    lw	$a3,8($a2)
    lw	$a2,4($a2)
    subu	$a1,$a1,$a4
    move	$a4,$s5
    sllv	$a1,$a1,$a3
    move	$a3,$s4
    srav	$a1,$a1,$a2
    move	$a2,$zero
    jalr	$t9
    addu	$a1,$s6,$a1
    b	.L0161a3a0
    ld	$t8,136($sp)
.L0161a49c:
    b	.L0161a308
    lw	$t8,0($t8)
.L0161a4a4:
    b	.L0161a308
    lw	$t8,0($t8)
.L0161a4ac:
    addiu	$s1,$s4,8
    b	.L0161a16c
    ld	$a0,128($sp)

glabel nfbFillSpans
    move	$a6,$s8
    addiu	$sp,$sp,-160
    lui	$v1,0x12
    addiu	$v1,$v1,-3904
    addiu	$s8,$sp,160
    sd	$gp,-104($s8)
    addu	$gp,$t9,$v1
    lw	$v0,-6768($gp)
    lw	$at,76($a1)
    sd	$a0,-80($s8)
    sll	$v0,$v0,0x2
    sd	$s0,-120($s8)
    addu	$at,$at,$v0
    lw	$at,0($at)
    sd	$a6,-112($s8)
    lw	$a6,8($at)
    lw	$at,36($at)
    lw	$t0,8($a6)
    sd	$s1,-96($s8)
    move	$s1,$a2
    lw	$at,4($at)
    sd	$at,-88($s8)
    beqz	$t0,.L0161ba94
    addiu	$t8,$t0,8
    lw	$t2,4($t0)
    blez	$t2,.L0161baa4
    sd	$ra,-144($s8)
.L0161b96c:
    b	.L0161b9ac
    move	$ra,$zero
    nop
    nop
    nop
.L0161b980:
    addiu	$t2,$t2,-1
    addiu	$t0,$t0,8
    blez	$t2,.L0161b9c4
    addiu	$t1,$t1,1
    lh	$a7,2($t0)
    beq	$a7,$t3,.L0161b980
    nop
.L0161b99c:
    move	$t8,$t0
.L0161b9a0:
    slt	$t3,$ra,$t1
    blez	$t2,.L0161b9dc
    movn	$ra,$t1,$t3
.L0161b9ac:
    lh	$t3,2($t8)
    blez	$t2,.L0161b9d0
    move	$t1,$zero
    move	$t0,$t8
    b	.L0161b980
    nop
.L0161b9c4:
    sll	$t0,$t1,0x3
    b	.L0161b99c
    addu	$t0,$t8,$t0
.L0161b9d0:
    move	$t0,$t8
    b	.L0161b9a0
    move	$t8,$t0
.L0161b9dc:
    mult	$s1,$ra
    mflo	$t1
    sll	$t1,$t1,0x2
    li	$t2,-16
    addiu	$t1,$t1,15
    li	$t3,-16
    and	$t2,$t1,$t2
    and	$t1,$t1,$t3
    subu	$sp,$sp,$t2
    move	$s0,$sp
    subu	$sp,$sp,$t1
    beqz	$sp,.L0161ba2c
    move	$a0,$sp
    sd	$a3,-128($s8)
    sd	$a4,-136($s8)
    sd	$a5,-152($s8)
    sd	$a1,-72($s8)
    sd	$a6,-160($s8)
    bnez	$s0,.L0161ba4c
    sd	$sp,-64($s8)
.L0161ba2c:
    ld	$s0,-120($s8)
.L0161ba30:
    ld	$gp,-104($s8)
    ld	$ra,-144($s8)
    ld	$t2,-112($s8)
    ld	$s1,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t2
.L0161ba4c:
    ld	$a0,-160($s8)
    ld	$a1,-128($s8)
    lw	$t9,-31140($gp)
    ld	$a2,-136($s8)
    move	$a3,$s1
    ld	$a4,-64($s8)
    move	$a5,$s0
    jalr	$t9
    ld	$a6,-152($s8)
    ld	$t9,-88($s8)
    ld	$a0,-72($s8)
    move	$a4,$v0
    ld	$a1,-80($s8)
    ld	$a2,-64($s8)
    jalr	$t9
    move	$a3,$s0
    b	.L0161ba30
    ld	$s0,-120($s8)
.L0161ba94:
    li	$t2,1
    move	$t8,$a6
    b	.L0161b96c
    sd	$ra,-144($s8)
.L0161baa4:
    b	.L0161b9dc
    move	$ra,$zero

glabel nfbStippledFS
    addiu	$sp,$sp,-160
    sd	$s5,40($sp)
    sd	$s4,24($sp)
    sd	$s7,32($sp)
    sd	$s2,8($sp)
    sd	$s8,48($sp)
    lw	$s8,36($a0)
    sd	$s8,96($sp)
    lw	$s2,28($s8)
    lui	$v0,0x12
    lhu	$s8,12($s8)
    addiu	$v0,$v0,-4336
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    lw	$at,-6768($gp)
    lw	$t9,76($a0)
    sd	$s8,104($sp)
    sll	$at,$at,0x2
    sd	$s6,16($sp)
    addu	$t9,$t9,$at
    lw	$t9,0($t9)
    lw	$s6,132($a1)
    lw	$s7,76($t9)
    lw	$t8,-5736($gp)
    lw	$s8,64($t9)
    lbu	$s4,72($t9)
    sll	$t8,$t8,0x2
    addu	$s6,$s6,$t8
    lh	$t8,88($t9)
    lh	$t9,90($t9)
    lw	$s6,0($s6)
    sd	$t9,72($sp)
    lw	$s6,0($s6)
    sd	$t8,80($sp)
    sll	$t8,$a4,0x2
    move	$a5,$a2
    addu	$t8,$t8,$a3
    sd	$t8,64($sp)
    move	$s5,$a1
    blez	$a4,.L0161bd74
    lw	$s6,12($s6)
    move	$a1,$a3
    sd	$s1,152($sp)
    sd	$s0,144($sp)
    sd	$ra,136($sp)
    b	.L0161bc04
    sd	$s3,128($sp)
    addiu	$a0,$sp,0
.L0161bb70:
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s2
    move	$a4,$s8
    move	$t9,$s6
    move	$a5,$s4
    move	$a6,$s7
    sh	$s0,4($sp)
    jalr	$t9
    move	$a7,$s5
    ld	$a0,104($sp)
    sh	$s0,0($sp)
    addu	$s0,$s0,$a0
    slt	$v1,$s0,$s3
    bnez	$v1,.L0161bb70
    addiu	$a0,$sp,0
.L0161bbb0:
    move	$t1,$zero
    nop
    nop
    nop
.L0161bbc0:
    addiu	$a0,$sp,0
    move	$a1,$s1
    move	$a2,$t1
    move	$a3,$s2
    move	$a4,$s8
    move	$t9,$s6
    move	$a5,$s4
    move	$a6,$s7
    sh	$s3,4($sp)
    jalr	$t9
    move	$a7,$s5
    ld	$a1,120($sp)
    ld	$a3,64($sp)
    ld	$a2,112($sp)
    addiu	$a1,$a1,4
    beq	$a1,$a3,.L0161bd64
    addiu	$a2,$a2,4
.L0161bc04:
    lh	$t8,0($a2)
    ld	$a0,104($sp)
    ld	$v1,80($sp)
    mtc1	$a0,$f2
    subu	$v1,$t8,$v1
    mtc1	$v1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    lh	$a6,2($a2)
    ld	$a7,72($sp)
    ld	$ra,96($sp)
    lhu	$t9,14($ra)
    subu	$a6,$a6,$a7
    mtc1	$a6,$f0
    mtc1	$t9,$f2
    cvt.d.w	$f0,$f0
    cvt.d.w	$f2,$f2
    div.d	$f0,$f0,$f2
    trunc.w.d	$f1,$f1
    lw	$s3,0($a1)
    mfc1	$t2,$f1
    sh	$t8,0($sp)
    lh	$t0,2($a2)
    mult	$t2,$a0
    trunc.w.d	$f0,$f0
    mfc1	$t1,$f0
    mflo	$a4
    nop
    nop
    mult	$t1,$t9
    lh	$s0,0($a2)
    sh	$t0,2($sp)
    lh	$at,2($a2)
    mflo	$a7
    teq	$a0,$zero,0x7
    subu	$a6,$a6,$a7
    addu	$a3,$a6,$t9
    slti	$a5,$a6,0
    movz	$a3,$a6,$a5
    teq	$t9,$zero,0x7
    mult	$s2,$a3
    addu	$s3,$s3,$t8
    subu	$v1,$v1,$a4
    sd	$a1,120($sp)
    addu	$s1,$a0,$v1
    slti	$v0,$v1,0
    sd	$a2,112($sp)
    addu	$s0,$s0,$a0
    movz	$s1,$v1,$v0
    addiu	$at,$at,1
    sh	$at,6($sp)
    andi	$t1,$s1,0x1f
    lw	$ra,32($ra)
    subu	$s0,$s0,$s1
    sra	$s1,$s1,0x5
    pref	0x0,256($a2)
    slt	$t9,$s0,$s3
    mflo	$t8
    sll	$s1,$s1,0x2
    sd	$t8,88($sp)
    addu	$t8,$t8,$ra
    pref	0x0,256($a1)
    beqz	$t9,.L0161bbc0
    addu	$s1,$s1,$t8
    addiu	$a0,$sp,0
    move	$a1,$s1
    move	$a2,$t1
    move	$a3,$s2
    move	$a4,$s8
    move	$t9,$s6
    move	$a5,$s4
    move	$a6,$s7
    sh	$s0,4($sp)
    jalr	$t9
    move	$a7,$s5
    ld	$a1,104($sp)
    ld	$t8,96($sp)
    ld	$s1,88($sp)
    addu	$a1,$a1,$s0
    lw	$t8,32($t8)
    slt	$t9,$a1,$s3
    sh	$s0,0($sp)
    move	$s0,$a1
    beqz	$t9,.L0161bbb0
    addu	$s1,$s1,$t8
    b	.L0161bb70
    addiu	$a0,$sp,0
.L0161bd64:
    ld	$s3,128($sp)
    ld	$ra,136($sp)
    ld	$s0,144($sp)
    ld	$s1,152($sp)
.L0161bd74:
    ld	$s2,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s7,32($sp)
    ld	$s5,40($sp)
    ld	$s8,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160

glabel nfbInitServerOverlayVisualsProperty__JG
    addiu	$sp,$sp,-144
    move	$v0,$s8
    addiu	$s8,$sp,144
    sd	$s1,-112($s8)
    sd	$s2,-120($s8)
    sd	$ra,-56($s8)
    sd	$s0,-64($s8)
    lw	$t9,-28396($gp)
    la	$at,WindowTable
    sd	$v0,-80($s8)
    lw	$v0,0($a0)
    lw	$at,0($at)
    sd	$s4,-72($s8)
    sll	$v0,$v0,0x2
    li	$a1,22
    la	$s4,_rodata_symbol
    addu	$at,$at,$v0
    li	$a2,1
    move	$s0,$a0
    lw	$at,0($at)
    addiu	$a0,$s4,17864
    jalr	$t9
    sd	$at,-48($s8)
    sd	$s7,-104($s8)
    sd	$s5,-128($s8)
    sd	$s6,-144($s8)
    lui	$s1,0xe000
    sd	$s3,-136($s8)
    move	$s2,$v0
    beq	$s1,$v0,.L0161def8
    la	$s3,MakeAtom
    beqz	$v0,.L0161defc
    lw	$t9,-28244($gp)
    lh	$a0,120($s0)
.L0161dd38:
    sll	$a0,$a0,0x4
    li	$a1,-16
    addiu	$a0,$a0,15
    and	$a0,$a0,$a1
    subu	$sp,$sp,$a0
    la	$s5,FatalError
    beqz	$sp,.L0161dee4
    sd	$sp,-88($s8)
    move	$t9,$s3
.L0161dd5c:
    addiu	$a0,$s4,17984
    li	$a1,18
    jalr	$t9
    li	$a2,1
    beq	$s1,$v0,.L0161df0c
    sd	$v0,-96($s8)
    ld	$a2,-96($s8)
    beqz	$a2,.L0161df10
    move	$t9,$s5
    move	$t9,$s3
.L0161dd84:
    addiu	$a0,$s4,17728
    li	$a1,17
    jalr	$t9
    li	$a2,1
    beq	$s1,$v0,.L0161df20
    move	$s3,$v0
    beqz	$v0,.L0161df24
    move	$t9,$s5
    lh	$a3,120($s0)
.L0161dda8:
    la	$s7,nmbxLookupCapability
    move	$s1,$zero
    ld	$s6,-88($s8)
    move	$s5,$zero
    move	$s4,$zero
    blez	$a3,.L0161deac
    sd	$s2,-40($s8)
    move	$s2,$zero
    b	.L0161de18
    sd	$s3,-32($s8)
.L0161ddd0:
    beqz	$v0,.L0161de04
    move	$a7,$zero
.L0161ddd8:
    lw	$t0,8($v0)
.L0161dddc:
    lw	$a4,124($s0)
    addu	$a4,$a4,$s2
    addiu	$s6,$s6,16
    lw	$a4,0($a4)
    sw	$a7,-4($s6)
    sw	$t0,-8($s6)
    sw	$a5,-12($s6)
    addiu	$s5,$s5,16
    addiu	$s4,$s4,1
    sw	$a4,-16($s6)
.L0161de04:
    lh	$a5,120($s0)
    addiu	$s1,$s1,1
    slt	$a5,$s1,$a5
    beqz	$a5,.L0161de64
    addiu	$s2,$s2,36
.L0161de18:
    move	$t9,$s7
    lw	$a0,0($s0)
    move	$a1,$s1
    jalr	$t9
    ld	$a2,-96($s8)
    move	$t9,$s7
    move	$s3,$v0
    lw	$a0,0($s0)
    move	$a1,$s1
    jalr	$t9
    ld	$a2,-32($s8)
    beqz	$s3,.L0161ddd0
    li	$a5,1
    bnez	$v0,.L0161ddd8
    lw	$a7,8($s3)
    beqz	$a7,.L0161de04
    move	$a5,$zero
    b	.L0161dddc
    move	$t0,$zero
.L0161de64:
    beqz	$s4,.L0161deac
    li	$a3,32
    lw	$t9,-28404($gp)
    move	$a4,$zero
    addiu	$a5,$s5,3
    ld	$a2,-40($s8)
    ld	$a0,-48($s8)
    move	$a7,$zero
    srl	$a5,$a5,0x2
    ld	$a6,-88($s8)
    jalr	$t9
    move	$a1,$a2
    beqz	$v0,.L0161deb0
    ld	$s7,-104($s8)
    lw	$t9,-28244($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18056
.L0161deac:
    ld	$s7,-104($s8)
.L0161deb0:
    ld	$s1,-112($s8)
    ld	$s2,-120($s8)
    ld	$s5,-128($s8)
    ld	$s3,-136($s8)
    ld	$s0,-64($s8)
    ld	$s4,-72($s8)
    ld	$ra,-56($s8)
    ld	$a1,-80($s8)
    li	$v0,1
    ld	$s6,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0161dee4:
    move	$t9,$s5
    jalr	$t9
    addiu	$a0,$s4,17936
    b	.L0161dd5c
    move	$t9,$s3
.L0161def8:
    lw	$t9,-28244($gp)
.L0161defc:
    jalr	$t9
    addiu	$a0,$s4,17888
    b	.L0161dd38
    lh	$a0,120($s0)
.L0161df0c:
    move	$t9,$s5
.L0161df10:
    jalr	$t9
    addiu	$a0,$s4,18008
    b	.L0161dd84
    move	$t9,$s3
.L0161df20:
    move	$t9,$s5
.L0161df24:
    jalr	$t9
    addiu	$a0,$s4,17752
    b	.L0161dda8
    lh	$a3,120($s0)

glabel nfbPostChangeSaveUnder
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$s0,8($sp)
    sd	$s2,0($sp)
    sd	$s3,32($sp)
    sd	$s1,24($sp)
    lui	$at,0x12
    lw	$s1,24($a0)
    move	$s3,$a1
    sd	$gp,16($sp)
    addiu	$at,$at,-14944
    addu	$gp,$t9,$at
    beqz	$a1,.L0161e464
    lw	$a3,124($s1)
    lw	$v0,24($a1)
    xor	$v0,$v0,$s1
    movn	$s3,$a0,$v0
.L0161e464:
    lw	$s2,16($s1)
    sll	$t8,$a3,0x7
    srl	$a0,$a3,0x1a
    andi	$a0,$a0,0x3
    bltz	$t8,.L0161e484
    lw	$s2,192($s2)
    beqz	$a0,.L0161e530
    nop
.L0161e484:
    bnez	$s3,.L0161e4c0
    move	$s0,$s3
.L0161e48c:
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,0($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
    nop
.L0161e4b0:
    lw	$a1,36($s0)
.L0161e4b4:
    beqz	$a1,.L0161e4fc
    nop
    move	$s0,$a1
.L0161e4c0:
    lw	$a1,124($s0)
    sll	$a2,$a1,0x7
    srl	$a1,$a1,0x1a
    bltz	$a2,.L0161e4b0
    andi	$a1,$a1,0x3
    bnez	$a1,.L0161e4b0
    nop
    lw	$a2,116($s0)
    beqz	$a2,.L0161e4b0
    move	$t9,$s2
    move	$a0,$s0
    jalr	$t9
    li	$a1,64
    b	.L0161e4b4
    lw	$a1,36($s0)
.L0161e4fc:
    lw	$a1,28($s0)
    beqz	$a1,.L0161e510
    nop
.L0161e508:
    b	.L0161e4c0
    move	$s0,$a1
.L0161e510:
    lw	$s0,24($s0)
    beq	$s1,$s0,.L0161e48c
    nop
    lw	$a1,28($s0)
    beqz	$a1,.L0161e510
    nop
    b	.L0161e508
    nop
.L0161e530:
    lw	$a3,116($s1)
    beqz	$a3,.L0161e484
    move	$t9,$s2
    move	$a0,$s1
    jalr	$t9
    li	$a1,64
    b	.L0161e484
    nop

glabel nfbChangeGC__LJ
    jr	$ra
    nop

glabel nfbPaintWindowBorder
    addiu	$sp,$sp,-96
    sd	$ra,88($sp)
    lui	$v0,0x12
    sd	$s2,48($sp)
    addiu	$v0,$v0,-26192
    sd	$gp,80($sp)
    addu	$gp,$t9,$v0
    la	$v1,dbcWindowPrivateIndex
    sd	$s0,32($sp)
    lw	$v1,0($v1)
    lw	$at,-5736($gp)
    lw	$v0,132($a0)
    sll	$v1,$v1,0x2
    sd	$s1,40($sp)
    sll	$at,$at,0x2
    addu	$at,$v0,$at
    addu	$v0,$v0,$v1
    sd	$v0,56($sp)
    lw	$at,0($at)
    li	$s1,1
    sd	$at,72($sp)
    move	$s0,$a0
    lw	$at,0($at)
    move	$s2,$a1
    beq	$a2,$s1,.L01621088
    sd	$at,64($sp)
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18840
.L01621088:
    lw	$t9,-27840($gp)
    jalr	$t9
    move	$a0,$s0
    slti	$a1,$v0,2
    move	$a5,$zero
    move	$a3,$s0
    ld	$a2,56($sp)
    bnez	$a1,.L016210b4
    li	$a6,-1
    lb	$a5,1($a2)
    sb	$a6,1($a2)
.L016210b4:
    lw	$a1,124($s0)
    sll	$a2,$a1,0x2
    lw	$a0,112($s0)
    bltz	$a2,.L016211d4
    srl	$a1,$a1,0x1e
    bne	$s1,$a1,.L016210e4
    lhu	$t0,12($a0)
.L016210d0:
    lw	$a3,24($a3)
    lw	$a4,124($a3)
    srl	$a4,$a4,0x1e
    beq	$s1,$a4,.L016210d0
    nop
.L016210e4:
    lh	$t1,8($a3)
    mtc1	$t0,$f2
    mtc1	$t1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$t3,$f1
    mult	$t3,$t0
    mflo	$t2
    subu	$t1,$t1,$t2
    sh	$t1,16($sp)
    lw	$a7,112($s0)
    lh	$t1,10($a3)
    lhu	$a7,14($a7)
    mtc1	$t1,$f0
    mtc1	$a7,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$t3,$f0
    mult	$t3,$a7
    mflo	$t2
    subu	$t1,$t1,$t2
    sh	$t1,18($sp)
    lw	$a4,8($s2)
    teq	$t0,$zero,0x7
    li	$a1,1
    beqz	$a4,.L01621240
    teq	$a7,$zero,0x7
    lw	$a1,4($a4)
    addiu	$s2,$a4,8
    sd	$a5,24($sp)
.L0162116c:
    lw	$a5,112($s0)
    ld	$t9,64($sp)
    lw	$a2,32($a5)
    lw	$a3,28($a5)
    lhu	$a4,12($a5)
    ld	$ra,72($sp)
    lhu	$a5,14($a5)
    lw	$ra,8($ra)
    sw	$s0,12($sp)
    sw	$ra,4($sp)
    lw	$t9,28($t9)
    li	$a7,3
    addiu	$a6,$sp,16
    jalr	$t9
    move	$a0,$s2
    ld	$s0,32($sp)
.L016211ac:
    ld	$a6,56($sp)
    ld	$ra,88($sp)
    lb	$a6,1($a6)
    ld	$s1,40($sp)
    li	$a7,-1
    ld	$gp,80($sp)
    beq	$a6,$a7,.L01621218
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L016211d4:
    lw	$a4,8($s2)
    li	$a1,1
    beqz	$a4,.L016211ec
    sd	$a5,24($sp)
    lw	$a1,4($a4)
    addiu	$s2,$a4,8
.L016211ec:
    ld	$t9,64($sp)
    ld	$a4,72($sp)
    lw	$t9,4($t9)
    move	$a0,$s2
    li	$a3,3
    lw	$a2,16($a4)
    move	$a5,$s0
    jalr	$t9
    lw	$a4,8($a4)
    b	.L016211ac
    ld	$s0,32($sp)
.L01621218:
    ld	$gp,80($sp)
    move	$s0,$s0
    move	$ra,$ra
    ld	$v0,56($sp)
    move	$s1,$s1
    move	$s2,$s2
    ld	$at,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    sb	$at,1($v0)
.L01621240:
    b	.L0162116c
    sd	$a5,24($sp)

glabel nfbImageGlyphBlt
    lw	$a6,44($a1)
    addiu	$sp,$sp,-384
    lh	$t2,36($a6)
    move	$t8,$s8
    addiu	$s8,$sp,384
    sd	$a5,-248($s8)
    sd	$a4,-280($s8)
    sd	$a1,-224($s8)
    sd	$ra,-344($s8)
    sd	$s6,-352($s8)
    sd	$s4,-160($s8)
    lh	$a7,10($a0)
    sd	$s2,-168($s8)
    addu	$a7,$a7,$a3
    sd	$a7,-264($s8)
    lh	$t0,68($a6)
    sd	$s3,-144($s8)
    lh	$s3,70($a6)
    lw	$at,12($a6)
    sd	$s7,-184($s8)
    lw	$s7,132($a0)
    sd	$s0,-152($s8)
    sd	$s5,-192($s8)
    sd	$s1,-176($s8)
    lui	$s1,0x12
    sd	$t8,-208($s8)
    addiu	$s1,$s1,-27984
    sd	$gp,-200($s8)
    addu	$gp,$t9,$s1
    lw	$t8,-5736($gp)
    lw	$t9,-6768($gp)
    lw	$s5,76($a1)
    sll	$t8,$t8,0x2
    lh	$s0,8($a0)
    addu	$s7,$s7,$t8
    sll	$t9,$t9,0x2
    lw	$s7,0($s7)
    addu	$s5,$s5,$t9
    sll	$at,$at,0x13
    lw	$s5,0($s5)
    addu	$s3,$s3,$a7
    subu	$a7,$a7,$t0
    sd	$s5,-216($s8)
    dsll32	$a7,$a7,0x10
    lw	$s7,0($s7)
    dsll32	$s3,$s3,0x10
    lw	$s4,8($s5)
    dsra32	$s3,$s3,0x10
    lw	$t8,44($s5)
    dsra32	$a7,$a7,0x10
    addu	$s0,$s0,$a2
    sd	$t8,-256($s8)
    dsll32	$s2,$s0,0x10
    sd	$s4,-232($s8)
    move	$s1,$a0
    dsra32	$s2,$s2,0x10
    lw	$s4,52($s5)
    move	$s6,$s2
    bgez	$at,.L01621870
    lw	$s5,40($s5)
    ld	$a2,-280($s8)
    lh	$a1,32($a6)
    multu	$t2,$a2
    ld	$t9,-224($s8)
    addu	$a1,$a1,$s0
    sh	$a1,-80($s8)
    lw	$a0,44($t9)
    lh	$a0,22($a0)
    addu	$a0,$a0,$s0
    mflo	$v0
    addu	$a0,$v0,$a0
    sh	$a0,-76($s8)
    lw	$v1,44($t9)
    ld	$ra,-264($s8)
    lh	$v1,26($v1)
    addu	$v0,$s2,$v0
    dsll32	$v0,$v0,0x10
    subu	$v1,$ra,$v1
    sh	$v1,-78($s8)
    dsra32	$v0,$v0,0x10
    lw	$t9,44($t9)
    slt	$at,$v0,$s2
    movn	$s2,$v0,$at
    lh	$t9,28($t9)
    movz	$s6,$v0,$at
    addu	$t9,$t9,$ra
    b	.L016218f8
    sh	$t9,-74($s8)
.L01621870:
    lw	$t9,-27944($gp)
    sd	$a7,-376($s8)
    move	$a0,$a6
    ld	$a1,-248($s8)
    ld	$a2,-280($s8)
    jalr	$t9
    addiu	$a3,$s8,-112
    ld	$a7,-376($s8)
    ld	$t1,-264($s8)
    dsll32	$t0,$s0,0x10
    lw	$a4,-92($s8)
    lw	$a5,-96($s8)
    dsra32	$t0,$t0,0x10
    lw	$t2,-100($s8)
    addu	$a3,$s0,$a4
    addu	$a4,$t0,$a4
    lw	$a6,-84($s8)
    addu	$a5,$a5,$t1
    dsll32	$a4,$a4,0x10
    subu	$t1,$t1,$t2
    sh	$t1,-78($s8)
    dsll32	$a3,$a3,0x10
    move	$s6,$s2
    sh	$a5,-74($s8)
    dsra32	$a3,$a3,0x10
    lw	$a5,-88($s8)
    dsra32	$a4,$a4,0x10
    slt	$a3,$a3,$t0
    addu	$a6,$a6,$s0
    sh	$a6,-76($s8)
    movn	$s2,$a4,$a3
    addu	$a5,$a5,$s0
    sh	$a5,-80($s8)
    movz	$s6,$a4,$a3
.L016218f8:
    ld	$a3,-232($s8)
    lw	$a3,8($a3)
    nop
    beqz	$a3,.L01622000
    addiu	$t2,$a3,8
    lw	$a6,4($a3)
    blez	$a6,.L016219f0
    ld	$t9,-224($s8)
.L01621918:
    sd	$s0,-360($s8)
    move	$s0,$t2
    sll	$a0,$a6,0x3
    b	.L0162193c
    addu	$a0,$t2,$a0
    nop
.L01621930:
    addiu	$s0,$s0,8
    beq	$s0,$a0,.L016219e8
    nop
.L0162193c:
    lh	$a1,0($s0)
    slt	$t0,$a1,$s2
    movn	$a1,$s2,$t0
    sh	$a1,-120($s8)
    lh	$a6,2($s0)
    slt	$t1,$a6,$a7
    movn	$a6,$a7,$t1
    sh	$a6,-118($s8)
    lh	$a2,4($s0)
    slt	$t0,$a2,$s6
    movz	$a2,$s6,$t0
    sh	$a2,-116($s8)
    lh	$a3,6($s0)
    dsll32	$a1,$a1,0x10
    dsra32	$a1,$a1,0x10
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    dsll32	$a2,$a2,0x10
    dsra32	$a2,$a2,0x10
    slt	$a1,$a1,$a2
    slt	$a2,$a3,$s3
    pref	0x0,256($s0)
    movz	$a3,$s3,$a2
    beqz	$a1,.L01621930
    sh	$a3,-114($s8)
    dsll32	$a2,$a3,0x10
    dsra32	$a2,$a2,0x10
    slt	$a2,$a6,$a2
    beqz	$a2,.L01621930
    nop
    lw	$t9,4($s7)
    sd	$a0,-368($s8)
    addiu	$a0,$s8,-120
    li	$a1,1
    sd	$a7,-376($s8)
    li	$a3,3
    move	$a4,$s4
    ld	$a2,-256($s8)
    jalr	$t9
    move	$a5,$s1
    ld	$a7,-376($s8)
    b	.L01621930
    ld	$a0,-368($s8)
.L016219e8:
    ld	$s0,-360($s8)
    ld	$t9,-224($s8)
.L016219f0:
    lw	$t9,0($t9)
    lw	$t9,380($t9)
    ld	$a0,-216($s8)
    addiu	$a1,$s8,-80
    jalr	$t9
    lw	$a0,8($a0)
    li	$a6,2
    beqz	$v0,.L01621e20
    move	$a3,$v0
    li	$ra,1
    beq	$v0,$ra,.L01622010
    ld	$t8,-280($s8)
    bne	$v0,$a6,.L01621e20
    ld	$a6,-280($s8)
    slti	$a7,$a6,4
    sll	$a6,$a6,0x5
    li	$v1,-16
    addiu	$v0,$a6,15
    ld	$s3,-248($s8)
    and	$v0,$v0,$v1
    li	$a3,-2
    ld	$a1,-248($s8)
    subu	$sp,$sp,$v0
    andi	$a4,$s0,0x1f
    ld	$t0,-280($s8)
    move	$t8,$s0
    addiu	$a1,$a1,12
    beqz	$sp,.L01621e20
    sd	$sp,-240($s8)
    ld	$ra,-240($s8)
    beqz	$t0,.L01621dc8
    ld	$t3,-240($s8)
    addiu	$a5,$s3,8
    addu	$t9,$ra,$a6
    move	$a6,$a3
    bnez	$a7,.L01622130
    ld	$t0,-264($s8)
    ld	$t8,-248($s8)
    lw	$a7,0($t8)
    pref	0x0,256($a5)
    sd	$s5,-296($s8)
    sd	$s4,-312($s8)
    sd	$s1,-304($s8)
    lw	$v1,4($t8)
    lh	$ra,0($a7)
    lh	$s2,4($a7)
    addiu	$t1,$t9,-96
    move	$s1,$t3
    lh	$t2,2($a7)
    pref	0x0,256($t8)
    move	$t8,$s0
    addu	$a2,$s2,$a4
    pref	0x1,256($t3)
    subu	$v0,$t2,$ra
    move	$a3,$t2
    nop
.L01621ad0:
    sw	$t8,0($s1)
    slti	$at,$a2,32
    andi	$s5,$a2,0x1f
    sltu	$t9,$zero,$at
    slti	$t3,$a2,0
    lh	$at,2($v1)
    addiu	$t2,$v0,7
    addiu	$a0,$a2,32
    lh	$s6,0($v1)
    addu	$v0,$a3,$t8
    sw	$v0,12($s1)
    movz	$a0,$a2,$t3
    addu	$v0,$ra,$t8
    sw	$v0,8($s1)
    movn	$s5,$a0,$t9
    sw	$a4,4($s1)
    sra	$v0,$t2,0x3
    addiu	$v0,$v0,1
    lw	$t9,0($a5)
    and	$v0,$a6,$v0
    sw	$v0,28($s1)
    pref	0x0,256($a1)
    lh	$a2,6($a7)
    lh	$v0,8($a7)
    addiu	$s0,$a1,4
    addiu	$s4,$s1,32
    lh	$a0,4($v1)
    subu	$a2,$t0,$a2
    addu	$v0,$v0,$t0
    sw	$v0,20($s1)
    subu	$v0,$at,$s6
    addu	$t8,$s2,$t8
    sw	$a2,16($s1)
    beq	$s4,$t1,.L016220f8
    addu	$a2,$a0,$s5
    sw	$t8,32($s1)
    slti	$a3,$a2,32
    andi	$s1,$a2,0x1f
    slti	$a7,$a2,0
    lh	$s3,2($t9)
    addiu	$a5,$v0,7
    addiu	$v0,$a2,32
    lh	$s2,0($t9)
    addu	$at,$at,$t8
    sw	$at,12($s4)
    movz	$v0,$a2,$a7
    addu	$at,$s6,$t8
    sw	$at,8($s4)
    movn	$s1,$v0,$a3
    sw	$s5,4($s4)
    sra	$at,$a5,0x3
    addiu	$at,$at,1
    lw	$a7,0($a1)
    and	$at,$a6,$at
    sw	$at,28($s4)
    lh	$v0,6($v1)
    lh	$at,8($v1)
    addiu	$a5,$a1,8
    addiu	$t2,$s4,32
    lh	$t3,4($t9)
    pref	0x1,256($t2)
    subu	$v1,$t0,$v0
    addu	$at,$at,$t0
    sw	$at,20($s4)
    subu	$v0,$s3,$s2
    addu	$t8,$a0,$t8
    sw	$v1,16($s4)
    beq	$t2,$t1,.L016220c4
    addu	$a2,$t3,$s1
    sw	$t8,32($s4)
    slti	$at,$a2,32
    andi	$a4,$a2,0x1f
    sltu	$a1,$zero,$at
    slti	$a0,$a2,0
    lh	$a3,2($a7)
    addiu	$v1,$v0,7
    addiu	$v0,$a2,32
    lh	$ra,0($a7)
    addu	$at,$s3,$t8
    sw	$at,44($s4)
    movz	$v0,$a2,$a0
    addu	$at,$s2,$t8
    sw	$at,40($s4)
    movn	$a4,$v0,$a1
    sw	$s1,36($s4)
    sra	$at,$v1,0x3
    addiu	$at,$at,1
    lw	$v1,0($s0)
    and	$at,$a6,$at
    sw	$at,60($s4)
    lh	$at,6($t9)
    lh	$v0,8($t9)
    addiu	$a1,$a5,4
    addiu	$s1,$s4,64
    lh	$s2,4($a7)
    subu	$at,$t0,$at
    addu	$v0,$v0,$t0
    sw	$v0,52($s4)
    subu	$v0,$a3,$ra
    addu	$t8,$t3,$t8
    sw	$at,48($s4)
    bne	$s1,$t1,.L01621ad0
    addu	$a2,$s2,$a4
    move	$s0,$a5
    move	$t0,$a4
    move	$t3,$v0
    move	$s3,$a3
    ld	$s4,-312($s8)
    move	$s6,$ra
    move	$t2,$s1
    ld	$s1,-304($s8)
    move	$t9,$v1
    ld	$s5,-296($s8)
    li	$a6,-2
.L01621c98:
    sw	$t8,0($t2)
    lh	$ra,0($t9)
    lh	$at,2($t9)
    sw	$t0,4($t2)
    addu	$a3,$s6,$t8
    sw	$a3,8($t2)
    addu	$a4,$s3,$t8
    sw	$a4,12($t2)
    addiu	$a1,$t3,7
    lw	$v0,0($s0)
    sra	$a1,$a1,0x3
    ld	$t1,-264($s8)
    addiu	$a1,$a1,1
    and	$a1,$a6,$a1
    sw	$a1,28($t2)
    lh	$a0,8($a7)
    lh	$v1,6($a7)
    lh	$a3,4($t9)
    addu	$a0,$a0,$t1
    subu	$t1,$t1,$v1
    sw	$t1,16($t2)
    addu	$t1,$s2,$t8
    sw	$t1,32($t2)
    addu	$a1,$ra,$t1
    subu	$ra,$at,$ra
    sw	$a0,20($t2)
    addiu	$ra,$ra,7
    sra	$ra,$ra,0x3
    lh	$a0,0($v0)
    addiu	$ra,$ra,1
    lh	$v1,2($v0)
    and	$ra,$a6,$ra
    sw	$ra,60($t2)
    addiu	$a4,$a2,32
    slti	$a5,$a2,0
    ld	$ra,-264($s8)
    movz	$a4,$a2,$a5
    addu	$at,$at,$t1
    sw	$at,44($t2)
    andi	$a5,$a2,0x1f
    sw	$a1,40($t2)
    slti	$a1,$a2,32
    movz	$a4,$a5,$a1
    sw	$a4,36($t2)
    lh	$at,8($t9)
    addu	$t1,$a3,$t1
    addu	$at,$at,$ra
    lh	$a1,6($t9)
    addu	$a3,$a3,$a4
    addu	$a4,$a0,$t1
    subu	$a1,$ra,$a1
    sw	$a1,48($t2)
    slti	$a1,$a3,32
    sw	$t1,64($t2)
    addu	$a5,$v1,$t1
    subu	$v1,$v1,$a0
    sw	$a5,76($t2)
    addiu	$a0,$a3,32
    slti	$a5,$a3,0
    sw	$a4,72($t2)
    movz	$a0,$a3,$a5
    addiu	$v1,$v1,7
    sw	$at,52($t2)
    andi	$a3,$a3,0x1f
    sra	$v1,$v1,0x3
    movz	$a0,$a3,$a1
    sw	$a0,68($t2)
    addiu	$v1,$v1,1
    and	$v1,$a6,$v1
    sw	$v1,92($t2)
    lh	$at,6($v0)
    lh	$v0,8($v0)
    addu	$v0,$v0,$ra
    sw	$v0,84($t2)
    subu	$ra,$ra,$at
    sw	$ra,80($t2)
.L01621dc8:
    ld	$a3,-232($s8)
    lw	$a3,8($a3)
    ld	$t0,-248($s8)
    ld	$a5,-280($s8)
    li	$a6,1
    ld	$a7,-232($s8)
    beqz	$a3,.L01622128
    sll	$a5,$a5,0x2
    lw	$a6,4($a3)
    blez	$a6,.L01621e20
    addiu	$a7,$a3,8
    addu	$a5,$a5,$t0
.L01621df8:
    sd	$a7,-288($s8)
    sd	$s5,-296($s8)
    sd	$s1,-304($s8)
    sd	$s4,-312($s8)
    sd	$s7,-320($s8)
    sd	$a5,-328($s8)
    sll	$a4,$a6,0x3
    addu	$a4,$a7,$a4
    b	.L016221c8
    sd	$a4,-272($s8)
.L01621e20:
    ld	$s6,-352($s8)
.L01621e24:
    ld	$gp,-200($s8)
    ld	$s0,-152($s8)
    ld	$s1,-176($s8)
    ld	$s2,-168($s8)
    ld	$s3,-144($s8)
    ld	$s4,-160($s8)
    ld	$s5,-192($s8)
    ld	$ra,-344($s8)
    ld	$t1,-208($s8)
    ld	$s7,-184($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
    nop
    nop
.L01621e60:
    ld	$t2,-288($s8)
    ld	$t3,-272($s8)
    lh	$t0,-80($s8)
    addiu	$t2,$t2,8
    lh	$a4,-76($s8)
    beq	$t2,$t3,.L01621e20
    sd	$t2,-288($s8)
    ld	$s0,-240($s8)
.L01621e80:
    ld	$at,-288($s8)
    lh	$a6,0($at)
    lh	$a3,4($at)
    lh	$t8,6($at)
    lh	$v1,2($at)
    lh	$a1,-74($s8)
    slt	$a5,$a6,$t0
    slt	$a2,$a3,$a4
    movz	$t0,$a6,$a5
    lh	$t9,-78($s8)
    movz	$a3,$a4,$a2
    slt	$a0,$t8,$a1
    movz	$t8,$a1,$a0
    ld	$s3,-280($s8)
    dsll32	$t3,$t8,0x10
    slt	$v0,$v1,$t9
    movz	$t9,$v1,$v0
    ld	$s2,-248($s8)
    dsll32	$ra,$t9,0x10
    pref	0x0,256($at)
    beqz	$s3,.L01621e60
    dsra32	$s3,$ra,0x10
    dsll32	$s1,$t0,0x10
    dsll32	$s4,$a3,0x10
    dsra32	$s4,$s4,0x10
    dsra32	$s1,$s1,0x10
    slt	$a7,$s1,$s4
    move	$s7,$s3
    beqz	$a7,.L01621e60
    move	$s6,$s1
    dsra32	$at,$t3,0x10
    sd	$at,-336($s8)
    slt	$at,$s3,$at
    bnez	$at,.L016221c0
    ld	$a1,-336($s8)
    b	.L01621e60
    nop
    nop
    nop
    nop
.L01621f20:
    lw	$a3,28($s0)
    subu	$ra,$s7,$t0
    mult	$a3,$ra
    ld	$t9,-320($s8)
    li	$a5,3
    lw	$t0,12($s5)
    addiu	$a0,$s8,-128
    subu	$a1,$s6,$t8
    lw	$t9,12($t9)
    ld	$a7,-304($s8)
    andi	$a2,$a1,0x7
    mflo	$t1
    ld	$a6,-312($s8)
    sra	$a1,$a1,0x3
    addu	$t0,$t0,$t1
    ld	$a4,-296($s8)
    jalr	$t9
    addu	$a1,$a1,$t0
.L01621f68:
    ld	$at,-328($s8)
.L01621f6c:
    addiu	$s2,$s2,4
    move	$s6,$s1
    move	$s7,$s3
    ld	$a1,-336($s8)
    beq	$s2,$at,.L01621e60
    addiu	$s0,$s0,32
    lw	$t8,8($s0)
.L01621f88:
    lw	$v1,12($s0)
    slt	$ra,$s1,$t8
    slt	$a0,$v1,$s4
    movn	$s6,$t8,$ra
    movz	$v1,$s4,$a0
    dsll32	$v1,$v1,0x10
    lw	$t9,20($s0)
    dsll32	$s6,$s6,0x10
    dsra32	$s6,$s6,0x10
    lw	$s5,0($s2)
    slt	$a0,$t9,$a1
    dsra32	$v1,$v1,0x10
    lw	$t0,16($s0)
    movz	$t9,$a1,$a0
    subu	$v0,$v1,$s6
    dsll32	$a3,$t9,0x10
    sh	$v1,-124($s8)
    slt	$t3,$s3,$t0
    blez	$v0,.L01621f68
    sh	$s6,-128($s8)
    dsra32	$a2,$a3,0x10
    movn	$s7,$t0,$t3
    dsll32	$s7,$s7,0x10
    dsra32	$s7,$s7,0x10
    subu	$a1,$a2,$s7
    sh	$a2,-122($s8)
    bgtz	$a1,.L01621f20
    sh	$s7,-126($s8)
    b	.L01621f6c
    ld	$at,-328($s8)
.L01622000:
    ld	$t2,-232($s8)
    li	$a6,1
    b	.L01621918
    sd	$s0,-360($s8)
.L01622010:
    ld	$ra,-248($s8)
    ld	$s6,-264($s8)
    ld	$t9,-280($s8)
    beqz	$t8,.L01621e20
    move	$s2,$ra
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$ra
    sd	$t9,-328($s8)
.L01622030:
    lw	$s3,0($s2)
    lh	$t3,8($s3)
    lh	$t1,6($s3)
    lh	$t0,2($s3)
    lh	$t2,0($s3)
    lw	$a1,12($s3)
    addu	$t8,$t2,$s0
    sh	$t8,-136($s8)
    subu	$t0,$t0,$t2
    addu	$t8,$t0,$t8
    sh	$t8,-132($s8)
    move	$a7,$s1
    lh	$t2,6($s3)
    move	$a6,$s4
    li	$a5,3
    addu	$t1,$t1,$t3
    subu	$t2,$s6,$t2
    sh	$t2,-134($s8)
    move	$a4,$s5
    addu	$t1,$t1,$t2
    sh	$t1,-130($s8)
    move	$a2,$zero
    addiu	$t0,$t0,7
    lw	$t9,12($s7)
    addiu	$a0,$s8,-136
    sra	$t0,$t0,0x3
    li	$a3,-2
    addiu	$t0,$t0,1
    jalr	$t9
    and	$a3,$a3,$t0
    ld	$t8,-328($s8)
    lh	$t3,4($s3)
    addiu	$s2,$s2,4
    bne	$s2,$t8,.L01622030
    addu	$s0,$t3,$s0
    b	.L01621e24
    ld	$s6,-352($s8)
.L016220c4:
    move	$ra,$t3
    move	$t3,$v0
    li	$a6,-2
    move	$s6,$s2
    ld	$s4,-312($s8)
    move	$t0,$s1
    move	$at,$a7
    ld	$s1,-304($s8)
    move	$a7,$t9
    move	$t9,$at
    ld	$s5,-296($s8)
    b	.L01621c98
    move	$s2,$ra
.L016220f8:
    move	$s0,$a1
    move	$s2,$a0
    move	$t3,$v0
    move	$s3,$at
    move	$t2,$s4
    ld	$s4,-312($s8)
    move	$a7,$v1
    ld	$s1,-304($s8)
    move	$t0,$s5
    ld	$s5,-296($s8)
    b	.L01621c98
    li	$a6,-2
.L01622128:
    b	.L01621df8
    addu	$a5,$a5,$t0
.L01622130:
    lw	$t2,0($s3)
    ld	$t0,-264($s8)
    lh	$t1,8($t2)
    lh	$a2,4($t2)
    lh	$v0,2($t2)
    lh	$a7,0($t2)
    lh	$t2,6($t2)
    addiu	$s3,$s3,4
    addiu	$ra,$ra,32
    addu	$t1,$t1,$t0
    subu	$t0,$t0,$t2
    addu	$a1,$a7,$t8
    addu	$a6,$v0,$t8
    sw	$t8,-32($ra)
    addu	$t8,$a2,$t8
    addu	$a2,$a2,$a4
    sw	$a4,-28($ra)
    andi	$a4,$a2,0x1f
    addiu	$a0,$a2,32
    sw	$t1,-12($ra)
    slti	$a5,$a2,0
    subu	$v0,$v0,$a7
    sw	$t0,-16($ra)
    movz	$a0,$a2,$a5
    addiu	$v0,$v0,7
    sw	$a6,-20($ra)
    slti	$v1,$a2,32
    sra	$v0,$v0,0x3
    sw	$a1,-24($ra)
    movn	$a4,$a0,$v1
    addiu	$v0,$v0,1
    and	$v0,$a3,$v0
    beq	$ra,$t9,.L01621dc8
    sw	$v0,-4($ra)
    b	.L01622130
    li	$a3,-2
.L016221c0:
    b	.L01621f88
    lw	$t8,8($s0)
.L016221c8:
    lh	$t0,-80($s8)
    lh	$a4,-76($s8)
    b	.L01621e80
    ld	$s0,-240($s8)

glabel nfbInfImageGlyphBlt__GL
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lui	$at,0x12
    sd	$s1,16($sp)
    addiu	$at,$at,-30752
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    lw	$t8,-6768($gp)
    lw	$s1,76($a1)
    sd	$s0,24($sp)
    sll	$t8,$t8,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$t8
    move	$t1,$a2
    move	$t0,$a3
    lw	$s1,0($s1)
    li	$t3,1
    move	$s0,$a0
    sd	$s2,32($sp)
    move	$s2,$a1
    bnez	$at,.L01622374
    lw	$t2,8($s1)
    lbu	$v1,2($a0)
    lw	$v0,24($s1)
    sllv	$v1,$t3,$v1
    and	$v0,$v0,$v1
    beqz	$v0,.L01622374
    sd	$t2,8($sp)
    sw	$t3,19112($gp)
    sw	$t1,19080($gp)
    sw	$a3,19084($gp)
    sw	$a6,19096($gp)
    lw	$a6,16($a1)
    lui	$a7,0x20
    sw	$a4,19088($gp)
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,16($a1)
    lw	$a3,32($s1)
    sw	$a5,19092($gp)
    lw	$a5,-5736($gp)
    lw	$a4,132($a0)
    lw	$t9,-29908($gp)
    sll	$a5,$a5,0x2
    lw	$a3,68($a3)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    move	$a2,$a0
    jalr	$t9
    sd	$a4,0($sp)
    lw	$t2,19116($gp)
    ld	$ra,8($sp)
    sw	$ra,8($s1)
    lw	$t8,16($s2)
    lw	$t3,-5736($gp)
    lui	$t9,0x20
    or	$t8,$t8,$t9
    sw	$t8,16($s2)
    lw	$t1,132($s0)
    sw	$zero,19112($gp)
    sll	$t3,$t3,0x2
    ld	$t0,0($sp)
    addu	$t1,$t1,$t3
    beqz	$t2,.L01622358
    sw	$t0,0($t1)
    lw	$v1,-6768($gp)
    lw	$v0,76($s2)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$a1,24($s2)
    lw	$t9,28($v0)
    sw	$a1,40($v0)
    sw	$a1,64($v0)
    lw	$a0,28($s2)
    sw	$a0,44($v0)
    sw	$a0,68($v0)
    lw	$v1,20($s2)
    sw	$v1,52($v0)
    sw	$v1,76($v0)
    lbu	$at,5($s2)
    move	$a1,$s0
    sb	$at,48($v0)
    move	$a0,$s2
    jalr	$t9
    sb	$at,72($v0)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01622358:
    ld	$s1,16($sp)
.L0162235c:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01622374:
    lw	$t9,32($s1)
    lw	$t9,68($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$t1
    jalr	$t9
    move	$a3,$t0
    b	.L0162235c
    ld	$s1,16($sp)

glabel nfbUnmapTree
    addiu	$sp,$sp,-16
    beqz	$a1,.L01628008
    sd	$ra,0($sp)
    beqz	$a0,.L01627fe4
    move	$a6,$a0
    lw	$a4,-5736($gp)
    li	$a5,-13
    b	.L01627f4c
    sll	$a4,$a4,0x2
    nop
    nop
    nop
.L01627f40:
    lw	$a6,28($a6)
    beqz	$a6,.L01627fe4
    nop
.L01627f4c:
    b	.L01627f64
    move	$a2,$a6
    nop
    nop
    nop
.L01627f60:
    move	$a2,$a3
.L01627f64:
    lw	$t0,132($a2)
    addu	$t0,$t0,$a4
    lw	$t0,0($t0)
    lw	$a7,32($t0)
    and	$a7,$a5,$a7
    sw	$a7,32($t0)
    lw	$a3,36($a2)
    bnez	$a3,.L01627f60
    nop
    lw	$a3,28($a2)
    beqz	$a3,.L01627fa4
    nop
.L01627f94:
    beq	$a2,$a6,.L01627f40
    nop
    b	.L01627f64
    move	$a2,$a3
.L01627fa4:
    beq	$a6,$a2,.L01627f94
    nop
.L01627fac:
    lw	$a2,24($a2)
    lw	$a3,28($a2)
    bnez	$a3,.L01627f94
    nop
    beq	$a6,$a2,.L01627f94
    nop
    lw	$a2,24($a2)
    lw	$a3,28($a2)
    bnez	$a3,.L01627f94
    nop
    bne	$a6,$a2,.L01627fac
    nop
    b	.L01627f94
    nop
.L01627fe4:
    lw	$a2,24($a0)
    beqz	$a2,.L01628000
    ld	$ra,0($sp)
    lw	$t9,-30072($gp)
    jalr	$t9
    move	$a0,$a2
    ld	$ra,0($sp)
.L01628000:
    jr	$ra
    addiu	$sp,$sp,16
.L01628008:
    move	$a2,$a0
    lw	$a4,-5736($gp)
    li	$a5,-13
    b	.L01628024
    sll	$a4,$a4,0x2
    nop
.L01628020:
    move	$a2,$a3
.L01628024:
    lw	$a7,132($a2)
    addu	$a7,$a7,$a4
    lw	$a7,0($a7)
    lw	$a6,32($a7)
    and	$a6,$a5,$a6
    sw	$a6,32($a7)
    lw	$a3,36($a2)
    bnez	$a3,.L01628020
    nop
    lw	$a3,28($a2)
    beqz	$a3,.L01628064
    nop
.L01628054:
    beq	$a2,$a0,.L01627fe4
    nop
    b	.L01628024
    move	$a2,$a3
.L01628064:
    beq	$a0,$a2,.L01628054
    nop
.L0162806c:
    lw	$a2,24($a2)
    lw	$a3,28($a2)
    bnez	$a3,.L01628054
    nop
    beq	$a0,$a2,.L01628054
    nop
    lw	$a2,24($a2)
    lw	$a3,28($a2)
    bnez	$a3,.L01628054
    nop
    bne	$a0,$a2,.L0162806c
    nop
    b	.L01628054
    nop

glabel nfbGetSpans
    addiu	$sp,$sp,-144
    sd	$s5,48($sp)
    sd	$s4,40($sp)
    sd	$ra,32($sp)
    sd	$s6,24($sp)
    sd	$s8,16($sp)
    sd	$s2,96($sp)
    li	$t0,32
    sd	$s0,72($sp)
    li	$a7,16
    move	$s0,$a5
    sd	$s7,56($sp)
    move	$s7,$a4
    move	$s2,$a3
    lbu	$at,0($a0)
    sd	$s1,64($sp)
    move	$s1,$a2
    lui	$v0,0x11
    sd	$s3,80($sp)
    move	$s3,$a0
    addiu	$v0,$v0,-8336
    sd	$gp,88($sp)
    beqz	$at,.L0162cae4
    addu	$gp,$t9,$v0
    lbu	$a0,3($a0)
    li	$v1,1
    beq	$a0,$v1,.L0162cd10
    li	$a2,8
    beq	$a0,$a2,.L0162d0c0
    lw	$t9,-28744($gp)
    beq	$a0,$a7,.L0162d0d4
    lw	$t9,-29232($gp)
    beq	$a0,$t0,.L0162d0a8
    lw	$t9,-28244($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18808
.L0162cae4:
    lw	$s5,-5736($gp)
    lw	$s4,132($s3)
    sll	$s5,$s5,0x2
    addu	$s4,$s4,$s5
    lw	$s4,0($s4)
    lw	$s4,0($s4)
    andi	$a0,$s7,0x1
    sll	$s6,$s7,0x2
    la	$s5,PixmapWidthPaddingInfo
    addu	$s6,$s6,$s2
    blez	$s7,.L0162ccdc
    lw	$s4,20($s4)
    beqz	$a0,.L0162cbb0
    sra	$a2,$s7,0x1
    lh	$v0,0($s1)
    sh	$v0,8($sp)
    lw	$at,0($s2)
    lh	$ra,0($s1)
    addu	$ra,$ra,$at
    sh	$ra,12($sp)
    lh	$t9,2($s1)
    sh	$t9,10($sp)
    lh	$t8,2($s1)
    addiu	$a0,$sp,8
    pref	0x0,256($s2)
    move	$a1,$s0
    move	$t9,$s4
    pref	0x0,256($s1)
    move	$a2,$zero
    move	$a3,$s3
    addiu	$t8,$t8,1
    jalr	$t9
    sh	$t8,14($sp)
    lbu	$a1,2($s3)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    lh	$a3,8($sp)
    sll	$a0,$a0,0x2
    lh	$a2,12($sp)
    addu	$a0,$s5,$a0
    lw	$v1,0($a0)
    subu	$a2,$a2,$a3
    lw	$a1,4($a0)
    lw	$a0,8($a0)
    addu	$v1,$v1,$a2
    srav	$v1,$v1,$a1
    addiu	$s2,$s2,4
    sllv	$v1,$v1,$a0
    addiu	$s1,$s1,4
    addu	$s0,$s0,$v1
    sra	$a2,$s7,0x1
.L0162cbb0:
    beqz	$a2,.L0162ccdc
    nop
    nop
    nop
.L0162cbc0:
    lh	$a7,0($s1)
    sh	$a7,8($sp)
    lw	$a6,0($s2)
    lh	$a5,0($s1)
    addu	$a5,$a5,$a6
    sh	$a5,12($sp)
    lh	$a4,2($s1)
    sh	$a4,10($sp)
    lh	$a3,2($s1)
    addiu	$a0,$sp,8
    pref	0x0,256($s2)
    move	$a1,$s0
    move	$t9,$s4
    pref	0x0,256($s1)
    move	$a2,$zero
    addiu	$a3,$a3,1
    sh	$a3,14($sp)
    jalr	$t9
    move	$a3,$s3
    lh	$v1,4($s1)
    lh	$t9,8($sp)
    lbu	$t3,2($s3)
    sh	$v1,8($sp)
    lw	$v0,4($s2)
    lh	$at,4($s1)
    lh	$t8,12($sp)
    addu	$at,$at,$v0
    sh	$at,12($sp)
    lh	$ra,6($s1)
    sll	$t2,$t3,0x2
    sh	$ra,10($sp)
    subu	$t2,$t2,$t3
    lh	$t0,6($s1)
    sll	$t2,$t2,0x2
    addu	$t2,$s5,$t2
    lw	$t1,0($t2)
    subu	$t8,$t8,$t9
    lw	$t3,4($t2)
    lw	$t2,8($t2)
    addu	$t1,$t1,$t8
    addiu	$a0,$sp,8
    srav	$t1,$t1,$t3
    move	$a2,$zero
    sllv	$t1,$t1,$t2
    pref	0x0,260($s2)
    move	$t9,$s4
    addu	$s0,$s0,$t1
    pref	0x0,260($s1)
    move	$a3,$s3
    move	$a1,$s0
    addiu	$t0,$t0,1
    jalr	$t9
    sh	$t0,14($sp)
    lbu	$a2,2($s3)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    lh	$a4,8($sp)
    sll	$a1,$a1,0x2
    lh	$a3,12($sp)
    addu	$a1,$s5,$a1
    lw	$a0,0($a1)
    subu	$a3,$a3,$a4
    lw	$a2,4($a1)
    lw	$a1,8($a1)
    addu	$a0,$a0,$a3
    addiu	$s2,$s2,8
    srav	$a0,$a0,$a2
    addiu	$s1,$s1,8
    sllv	$a0,$a0,$a1
    bne	$s2,$s6,.L0162cbc0
    addu	$s0,$s0,$a0
.L0162ccdc:
    ld	$gp,88($sp)
.L0162cce0:
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,96($sp)
    ld	$s3,80($sp)
    ld	$s4,40($sp)
    ld	$s5,48($sp)
    ld	$ra,32($sp)
    ld	$s6,24($sp)
    ld	$s7,56($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0162cd10:
    lw	$a3,28($s3)
    sll	$a0,$a4,0x2
    lw	$a4,32($s3)
    sd	$a4,120($sp)
    srl	$a3,$a3,0x2
    blez	$a0,.L0162ccdc
    sd	$a3,128($sp)
    ld	$a6,128($sp)
    la	$a5,_rodata_symbol
    lw	$s4,0($sp)
    sll	$a6,$a6,0x5
    addu	$s6,$a0,$s2
    b	.L0162cda8
    sd	$a6,112($sp)
    nop
    nop
.L0162cd50:
    sll	$at,$t2,0x2
    addu	$at,$a5,$at
    sll	$t3,$a7,0x2
    lw	$at,19344($at)
    addu	$t3,$a5,$t3
    lw	$t9,19688($t3)
    and	$at,$at,$a3
    or	$at,$a4,$at
    sw	$at,0($s0)
    lw	$t8,0($t0)
    lw	$t3,19216($t3)
    addiu	$s0,$s0,4
    sllv	$t8,$t8,$ra
    and	$t1,$t1,$t9
    and	$t3,$t3,$t8
    or	$t1,$t1,$t3
    sw	$t1,0($s0)
.L0162cd94:
    beqz	$s7,.L0162d07c
    nop
.L0162cd9c:
    addiu	$s0,$s0,4
.L0162cda0:
    beqz	$a2,.L0162cce0
    ld	$gp,88($sp)
.L0162cda8:
    lw	$t1,0($s2)
    lh	$t2,2($s1)
    lh	$a6,0($s1)
    ld	$t3,128($sp)
    addiu	$s1,$s1,4
    addiu	$s2,$s2,4
    sltu	$a2,$s2,$s6
    mult	$t2,$t3
    ld	$t3,112($sp)
    andi	$a3,$a6,0x1f
    addu	$t1,$t1,$a6
    sll	$a4,$a3,0x2
    slt	$t2,$t3,$t1
    addu	$a4,$a5,$a4
    movn	$t1,$t3,$t2
    andi	$a0,$t1,0x1f
    subu	$t1,$t1,$a6
    sll	$t0,$t1,0x2
    addu	$a7,$a3,$t1
    sra	$a6,$a6,0x5
    addiu	$s3,$a7,-32
    sra	$s3,$s3,0x5
    mflo	$t3
    ld	$a1,120($sp)
    sltiu	$t2,$a7,33
    addu	$a6,$a6,$t3
    pref	0x0,252($s2)
    addu	$t0,$a5,$t0
    sll	$a6,$a6,0x2
    pref	0x0,252($s1)
    beqz	$t2,.L0162ce54
    addu	$a1,$a1,$a6
    lw	$t9,19344($t0)
    lw	$at,19816($t0)
    lw	$ra,0($a1)
    lw	$t8,0($s0)
    addiu	$s0,$s0,4
    sllv	$ra,$ra,$a3
    and	$t8,$t8,$at
    and	$t9,$t9,$ra
    or	$t8,$t8,$t9
    b	.L0162cda0
    sw	$t8,-4($s0)
.L0162ce54:
    lw	$s7,19816($a4)
    sll	$s5,$a0,0x2
    addu	$s5,$a5,$s5
    li	$t2,32
    beqz	$s7,.L0162d06c
    lw	$s5,19344($s5)
    subu	$t2,$t2,$a3
    lw	$t8,0($s0)
    sll	$t9,$t2,0x2
    lw	$ra,0($a1)
    addu	$t9,$a5,$t9
    lw	$at,19816($t9)
    movn	$s4,$a0,$s5
    lw	$t9,19344($t9)
    sllv	$ra,$ra,$a3
    and	$t9,$t9,$ra
    and	$t8,$t8,$at
    addiu	$a1,$a1,4
    or	$t8,$t8,$t9
    sw	$t8,0($s0)
.L0162cea4:
    move	$a4,$a1
    andi	$t3,$t2,0x1f
    sd	$t3,104($sp)
    blez	$s3,.L0162cf38
    slt	$a3,$s3,$zero
    andi	$at,$s3,0x1
    move	$a0,$s0
    sra	$s8,$s3,0x1
    sll	$t9,$s3,0x2
    li	$t3,32
    sll	$t8,$t2,0x2
    subu	$t3,$t3,$t2
    addu	$t8,$t8,$a5
    andi	$ra,$t2,0x1f
    addu	$t9,$t9,$a1
    sll	$ra,$ra,0x7
    beqz	$at,.L0162cf30
    addu	$ra,$ra,$a5
    lw	$t1,0($a1)
    lw	$a7,0($s0)
    blez	$t2,.L0162d08c
    srlv	$t0,$t1,$t2
    sllv	$v1,$t1,$t3
    lw	$at,19344($t8)
    lw	$a6,19816($t8)
    lw	$v0,4($s0)
    and	$v0,$v0,$a6
    and	$v1,$at,$v1
    and	$at,$a7,$at
    or	$v0,$v0,$v1
    sw	$v0,4($s0)
    or	$at,$t0,$at
    sw	$at,0($s0)
.L0162cf28:
    addiu	$a0,$a0,4
    addiu	$a4,$a4,4
.L0162cf30:
    bnezl	$s8,.L0162d028
    lw	$t1,0($a4)
.L0162cf38:
    move	$a0,$s3
    li	$ra,32
    movn	$a0,$zero,$a3
    subu	$ra,$ra,$t2
    sll	$a0,$a0,0x2
    beqz	$s5,.L0162cd94
    addu	$s0,$a0,$s0
    addu	$t0,$a0,$a1
    addu	$a7,$s4,$t2
    lw	$a3,0($s0)
    slti	$a6,$a7,33
    lw	$a4,0($t0)
    lw	$t1,4($s0)
    beqz	$a6,.L0162cd50
    srlv	$a4,$a4,$t2
    ld	$t1,104($sp)
    andi	$t0,$s4,0x1f
    sll	$t1,$t1,0x5
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$t0,$a5,$t0
    lw	$t0,19952($t0)
    nor	$a7,$t0,$zero
    and	$t0,$a4,$t0
    and	$a7,$a3,$a7
    or	$a7,$a7,$t0
    b	.L0162cd94
    sw	$a7,0($s0)
    nop
    nop
.L0162cfb0:
    sllv	$v1,$t1,$t3
    lw	$at,19344($t8)
    lw	$a6,19816($t8)
    lw	$v0,4($a0)
    and	$v0,$v0,$a6
    and	$v1,$at,$v1
    and	$at,$a7,$at
    or	$v0,$v0,$v1
    sw	$v0,4($a0)
    or	$at,$t0,$at
    sw	$at,0($a0)
.L0162cfdc:
    lw	$t1,4($a4)
    lw	$a7,4($a0)
    addiu	$a4,$a4,8
    blez	$t2,.L0162d050
    srlv	$t0,$t1,$t2
    sllv	$v1,$t1,$t3
    lw	$at,19344($t8)
    lw	$a6,19816($t8)
    lw	$v0,8($a0)
    and	$v0,$v0,$a6
    and	$v1,$at,$v1
    and	$at,$a7,$at
    or	$v0,$v0,$v1
    sw	$v0,8($a0)
    or	$at,$t0,$at
    sw	$at,4($a0)
.L0162d01c:
    beq	$a4,$t9,.L0162cf38
    addiu	$a0,$a0,8
    lw	$t1,0($a4)
.L0162d028:
    lw	$a7,0($a0)
    bgtz	$t2,.L0162cfb0
    srlv	$t0,$t1,$t2
    lw	$t1,19952($ra)
    nor	$at,$t1,$zero
    and	$t1,$t0,$t1
    and	$at,$a7,$at
    or	$t1,$t1,$at
    b	.L0162cfdc
    sw	$t1,0($a0)
.L0162d050:
    lw	$at,19952($ra)
    nor	$v0,$at,$zero
    and	$at,$t0,$at
    and	$v0,$a7,$v0
    or	$at,$at,$v0
    b	.L0162d01c
    sw	$at,4($a0)
.L0162d06c:
    sra	$s3,$t1,0x5
    movn	$s4,$a0,$s5
    b	.L0162cea4
    move	$t2,$zero
.L0162d07c:
    bnez	$s5,.L0162cd9c
    nop
    b	.L0162cda0
    nop
.L0162d08c:
    lw	$v0,19952($ra)
    nor	$v1,$v0,$zero
    and	$v0,$t0,$v0
    and	$v1,$a7,$v1
    or	$v0,$v0,$v1
    b	.L0162cf28
    sw	$v0,0($s0)
.L0162d0a8:
    lw	$t9,-29600($gp)
    move	$a0,$s3
    jalr	$t9
    move	$a2,$s1
    b	.L0162cce0
    ld	$gp,88($sp)
.L0162d0c0:
    move	$a0,$s3
    jalr	$t9
    move	$a2,$s1
    b	.L0162cce0
    ld	$gp,88($sp)
.L0162d0d4:
    move	$a0,$s3
    jalr	$t9
    move	$a2,$s1
    b	.L0162cce0
    ld	$gp,88($sp)

glabel nfbRecolorCursor
    addiu	$sp,$sp,-16
    lui	$at,0x11
    sd	$ra,8($sp)
    addiu	$at,$at,-10032
    sd	$gp,0($sp)
    beqz	$a2,.L0162d118
    addu	$gp,$t9,$at
    lw	$t9,284($a0)
    jalr	$t9
    nop
.L0162d118:
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbFreeHWCmapArrays
    addiu	$sp,$sp,-144
    move	$v0,$s8
    addiu	$s8,$sp,144
    sd	$a0,-96($s8)
    sd	$s6,-80($s8)
    la	$s6,Xfree
    sd	$ra,-120($s8)
    sd	$s0,-72($s8)
    move	$s0,$a0
    sd	$s2,-56($s8)
    sll	$at,$a1,0x2
    addiu	$at,$at,15
    sd	$v0,-104($s8)
    li	$v0,-16
    move	$s2,$a1
    sd	$s7,-88($s8)
    and	$at,$at,$v0
    move	$s7,$a2
    sd	$s1,-48($s8)
    subu	$sp,$sp,$at
    addiu	$s1,$a0,552
    sd	$s5,-64($s8)
    move	$s5,$sp
    move	$t9,$s6
.L0162d360:
    jalr	$t9
    lw	$a0,4($s0)
    addiu	$s0,$s0,24
    bne	$s0,$s1,.L0162d360
    move	$t9,$s6
    sd	$s2,-136($s8)
    move	$s1,$s5
    sd	$s3,-112($s8)
    move	$s3,$zero
    blez	$s2,.L0162d444
    sd	$s4,-128($s8)
    ld	$t8,-136($s8)
    sll	$s4,$t8,0x3
    subu	$s4,$s4,$t8
    move	$s2,$s7
    sll	$s4,$s4,0x2
    b	.L0162d490
    addu	$s4,$s4,$s7
    nop
    nop
.L0162d3b0:
    beqz	$s3,.L0162d420
    move	$t9,$s6
    nop
    nop
.L0162d3c0:
    addiu	$s2,$s2,28
    move	$s0,$zero
    beq	$s2,$s4,.L0162d444
    move	$a1,$s5
    lw	$a0,8($s2)
.L0162d3d4:
    beqz	$a0,.L0162d3c0
    pref	0x0,264($s2)
    blez	$s3,.L0162d3b0
    nop
    nop
    nop
    nop
.L0162d3f0:
    lw	$t9,0($a1)
    beq	$t9,$a0,.L0162d418
    addiu	$a1,$a1,4
    beq	$a1,$s1,.L0162d418
    addiu	$s0,$s0,1
    lw	$ra,0($a1)
    beq	$ra,$a0,.L0162d418
    addiu	$a1,$a1,4
    bne	$a1,$s1,.L0162d3f0
    addiu	$s0,$s0,1
.L0162d418:
    bne	$s0,$s3,.L0162d3c0
    move	$t9,$s6
.L0162d420:
    jalr	$t9
    nop
    lw	$at,8($s2)
    sll	$v0,$s0,0x2
    addiu	$s1,$s1,4
    addu	$v0,$s5,$v0
    addiu	$s3,$s3,1
    b	.L0162d3c0
    sw	$at,0($v0)
.L0162d444:
    move	$t9,$s6
    jalr	$t9
    ld	$a0,-96($s8)
    ld	$s1,-48($s8)
    ld	$s2,-56($s8)
    ld	$s5,-64($s8)
    ld	$s3,-112($s8)
    move	$t9,$s6
    ld	$s0,-72($s8)
    ld	$s4,-128($s8)
    jalr	$t9
    move	$a0,$s7
    ld	$s6,-80($s8)
    ld	$ra,-120($s8)
    ld	$v1,-104($s8)
    ld	$s7,-88($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0162d490:
    move	$a1,$s5
    move	$s0,$zero
    b	.L0162d3d4
    lw	$a0,8($s2)

glabel nfbMarkOverlappedWindows
    addiu	$sp,$sp,-128
    sd	$s7,96($sp)
    sd	$s6,104($sp)
    sd	$s3,120($sp)
    sd	$s5,40($sp)
    sd	$s4,48($sp)
    sd	$s8,64($sp)
    sd	$s0,32($sp)
    lw	$s0,16($a0)
    move	$s8,$a2
    move	$s4,$a1
    sd	$s2,72($sp)
    move	$s2,$a0
    lui	$at,0x11
    lw	$s0,116($s0)
    move	$s5,$a0
    sd	$gp,56($sp)
    addiu	$at,$at,-19584
    addu	$gp,$t9,$at
    beqz	$a2,.L0162f718
    lw	$a6,60($s0)
    lw	$t8,40($s0)
    beqz	$t8,.L0162f710
    move	$v0,$zero
    move	$a5,$a6
    nop
    nop
    nop
.L0162f6b0:
    sw	$zero,0($a5)
    lw	$t9,40($s0)
    addiu	$v0,$v0,1
    sltu	$t9,$v0,$t9
    beqz	$t9,.L0162f710
    nop
    sw	$zero,4($a5)
    lw	$at,40($s0)
    addiu	$v0,$v0,1
    sltu	$at,$v0,$at
    beqz	$at,.L0162f710
    nop
    sw	$zero,8($a5)
    lw	$v1,40($s0)
    addiu	$v0,$v0,1
    sltu	$v1,$v0,$v1
    beqz	$v1,.L0162f710
    nop
    sw	$zero,12($a5)
    lw	$a0,40($s0)
    addiu	$v0,$v0,1
    sltu	$a0,$v0,$a0
    bnez	$a0,.L0162f6b0
    addiu	$a5,$a5,16
.L0162f710:
    sw	$s2,0($s8)
    sw	$zero,0($sp)
.L0162f718:
    bne	$s2,$s4,.L0162f750
    nop
    beqz	$s8,.L0162f7c8
    lw	$a2,-5736($gp)
    lw	$a1,132($s2)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    lw	$a1,28($a1)
    beqz	$a1,.L0162f7cc
    move	$a2,$zero
    li	$a2,1
    b	.L0162f7d0
    sd	$s1,112($sp)
.L0162f750:
    beqz	$s8,.L0162f9a8
    nop
    lw	$a3,24($s2)
    lw	$a0,-5736($gp)
    lw	$a3,132($a3)
    sll	$a0,$a0,0x2
    lw	$a2,132($s2)
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    addu	$a2,$a0,$a2
    lw	$a3,28($a3)
    lw	$a2,0($a2)
    li	$s3,1
    beqz	$a3,.L01630028
    lw	$a2,24($a2)
    sll	$a5,$a2,0x2
    addu	$a5,$a6,$a5
    sw	$s3,0($a5)
    lw	$a4,132($s2)
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    lw	$a4,28($a4)
    sllv	$s7,$s3,$a2
    beqz	$a4,.L016301a0
    move	$a7,$s7
    lw	$t0,56($s0)
    bnez	$t0,.L0162fbc4
    lw	$v0,36($s2)
    b	.L016300f8
    lw	$at,124($v0)
.L0162f7c8:
    move	$a2,$zero
.L0162f7cc:
    sd	$s1,112($sp)
.L0162f7d0:
    move	$s1,$s2
    lw	$s7,0($sp)
    li	$s3,1
    b	.L0162f7fc
    sd	$ra,80($sp)
    nop
    nop
    nop
.L0162f7f0:
    beq	$s1,$s2,.L0162f8d4
    nop
    move	$s1,$a0
.L0162f7fc:
    lw	$a6,124($s1)
    sll	$a6,$a6,0x15
    bltz	$a6,.L0162f858
    move	$s6,$zero
    lw	$a0,28($s1)
.L0162f810:
    bnez	$a0,.L0162f7f0
    nop
    beq	$s2,$s1,.L0162f7f0
    nop
.L0162f820:
    lw	$s1,24($s1)
    lw	$a0,28($s1)
    bnez	$a0,.L0162f7f0
    nop
    beq	$s2,$s1,.L0162f7f0
    nop
    lw	$s1,24($s1)
    lw	$a0,28($s1)
    bnez	$a0,.L0162f7f0
    nop
    bne	$s2,$s1,.L0162f820
    nop
    b	.L0162f7f0
    nop
.L0162f858:
    lw	$t2,-5736($gp)
    lw	$t1,132($s1)
    sll	$t2,$t2,0x2
    lw	$t0,16($s1)
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t0,116($t0)
    lw	$t1,24($t1)
    lw	$t0,60($t0)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    sw	$s3,0($t0)
    lw	$a7,68($s1)
    beqz	$a7,.L01630054
    lw	$t9,-28180($gp)
.L0162f894:
    lw	$a0,36($s1)
    beqz	$a2,.L0162f8c0
    li	$v0,1
    lw	$t8,-5736($gp)
    lw	$t3,132($s1)
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    lw	$t3,0($t3)
    lw	$t3,24($t3)
    sllv	$t3,$s3,$t3
    or	$s7,$s7,$t3
.L0162f8c0:
    movz	$v0,$s6,$a0
    bnez	$v0,.L0162f7fc
    movn	$s1,$a0,$a0
    b	.L0162f810
    lw	$a0,28($s1)
.L0162f8d4:
    beqz	$s8,.L0162fc80
    lw	$a1,-5736($gp)
    beqz	$a2,.L016301ac
    sll	$a1,$a1,0x2
    sw	$s7,72($s0)
.L0162f8e8:
    lw	$a5,24($s2)
    lw	$a7,132($a5)
    addu	$a7,$a1,$a7
    lw	$a7,0($a7)
    lw	$a2,28($a7)
    beqz	$a2,.L0162fc98
    nop
    lw	$s1,132($s2)
    addu	$s1,$a1,$s1
    lw	$s1,0($s1)
    lw	$t8,28($s1)
    lw	$t0,56($s0)
    beqz	$t8,.L0162ff9c
    lw	$s1,24($s1)
    bnez	$t0,.L0162fcb4
    lw	$v0,36($s2)
    b	.L0162fd34
    nop
.L0162f930:
    sw	$a7,72($s0)
.L0162f934:
    lw	$a5,24($s2)
    lw	$v0,132($a5)
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    beqz	$t0,.L01630094
    lw	$v0,24($v0)
    sll	$a1,$a2,0x2
    addu	$a1,$t0,$a1
    lw	$a1,0($a1)
    sllv	$v1,$s3,$v0
    and	$v1,$a1,$v1
    beqz	$v1,.L0162f9a8
    nop
    move	$s5,$s2
    nop
.L0162f970:
    lw	$v0,24($a5)
    beqz	$v0,.L0162f9a4
    xor	$a3,$s2,$s5
    lw	$a2,132($v0)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    lw	$a2,24($a2)
    sllv	$a2,$s3,$a2
    and	$a2,$a1,$a2
    move	$s5,$a5
    bnez	$a2,.L0162f970
    move	$a5,$v0
    xor	$a3,$s2,$s5
.L0162f9a4:
    movn	$s4,$s5,$a3
.L0162f9a8:
    beqz	$s4,.L0162fe88
    ld	$s3,120($sp)
    sd	$zero,8($sp)
    sd	$s1,112($sp)
    move	$s7,$zero
    li	$s3,1
    sd	$ra,80($sp)
.L0162f9c4:
    lw	$t9,16($s4)
    lw	$t9,396($t9)
    move	$s1,$s4
    jalr	$t9
    addiu	$a0,$s2,84
    ld	$a1,8($sp)
    sd	$v0,24($sp)
    lw	$s0,24($s4)
    lw	$ra,16($s4)
    lw	$s0,40($s0)
    lw	$ra,380($ra)
    move	$s6,$zero
    b	.L0162fa4c
    sd	$ra,16($sp)
.L0162f9fc:
    beq	$s1,$s0,.L0162faa0
    nop
    lw	$s1,24($s1)
.L0162fa08:
    lw	$a0,28($s1)
    beqz	$a0,.L0162f9fc
    nop
.L0162fa14:
    beq	$s1,$s0,.L0162faa0
    xor	$s1,$s1,$s6
    sltiu	$s1,$s1,1
    movn	$s6,$zero,$s1
    move	$s1,$a0
.L0162fa28:
    lw	$t8,124($s1)
    sll	$t8,$t8,0x15
    bltz	$t8,.L0162fb60
    nop
.L0162fa38:
    lw	$a0,28($s1)
    beqz	$a0,.L0162fa78
    nop
.L0162fa44:
    beq	$s1,$s0,.L0162faa0
    move	$s1,$a0
.L0162fa4c:
    beqz	$s7,.L0162fa28
    nop
    bne	$s2,$s1,.L0162fa28
    nop
    lw	$a0,28($s1)
    bnez	$a0,.L0162fa14
    nop
    beq	$s1,$s0,.L0162faa0
    nop
    b	.L0162fa08
    lw	$s1,24($s1)
.L0162fa78:
    beq	$s1,$s0,.L0162faa0
    nop
.L0162fa80:
    lw	$s1,24($s1)
    lw	$a0,28($s1)
    xor	$t9,$s1,$s6
    sltiu	$t9,$t9,1
    bnez	$a0,.L0162fa44
    movn	$s6,$zero,$t9
    bne	$s1,$s0,.L0162fa80
    nop
.L0162faa0:
    beqz	$a1,.L0162fb2c
    ld	$s7,96($sp)
.L0162faa8:
    lw	$s0,24($s5)
    lw	$v1,-5736($gp)
    lw	$v0,132($s0)
    sll	$v1,$v1,0x2
    lw	$at,16($s0)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$at,116($at)
    lw	$v0,24($v0)
    lw	$at,60($at)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    sw	$s3,0($at)
    lw	$ra,68($s0)
    beqz	$ra,.L0162feb4
    lw	$t9,-28180($gp)
.L0162fae8:
    beqz	$s8,.L0162fb28
    ld	$s3,120($sp)
    ld	$s6,104($sp)
    ld	$s1,112($sp)
    ld	$s7,96($sp)
    ld	$gp,56($sp)
    ld	$s0,32($sp)
    ld	$s2,72($sp)
    ld	$s4,48($sp)
    ld	$ra,80($sp)
    sw	$s5,0($s8)
    move	$v0,$a1
    ld	$s5,40($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0162fb28:
    ld	$s7,96($sp)
.L0162fb2c:
    ld	$s1,112($sp)
    ld	$s6,104($sp)
    ld	$s3,120($sp)
    ld	$gp,56($sp)
    ld	$s0,32($sp)
    ld	$s2,72($sp)
    ld	$ra,80($sp)
    ld	$s4,48($sp)
    move	$v0,$a1
    ld	$s5,40($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0162fb60:
    beqz	$s6,.L016301c8
    sd	$a1,8($sp)
    lw	$a3,-5736($gp)
.L0162fb6c:
    lw	$a2,132($s1)
    sll	$a3,$a3,0x2
    lw	$a1,16($s1)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lw	$a1,116($a1)
    lw	$a2,24($a2)
    lw	$a1,60($a1)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    sw	$s3,0($a1)
    lw	$a0,68($s1)
    beqz	$a0,.L0162ff24
    lw	$t9,-28180($gp)
.L0162fba4:
    lw	$a0,36($s1)
    beqz	$a0,.L0162fefc
    nop
    beqz	$s6,.L0162ff04
.L0162fbb4:
    li	$a1,1
    b	.L0162fa4c
    move	$s1,$a0
.L0162fbc0:
    move	$v0,$a5
.L0162fbc4:
    lw	$a4,124($v0)
    lw	$a1,132($v0)
    sll	$a4,$a4,0x15
    lw	$a5,36($v0)
    bltz	$a4,.L0162fc10
    addu	$a6,$a1,$a0
.L0162fbdc:
    beqz	$a5,.L0162fbf4
    nop
    lw	$t1,0($a6)
    lw	$t1,28($t1)
    bnez	$t1,.L0162fbc0
    nop
.L0162fbf4:
    lw	$a1,28($v0)
    beqz	$a1,.L0162fc40
    nop
.L0162fc00:
    beq	$v0,$s2,.L0162f930
    nop
    b	.L0162fbc4
    move	$v0,$a1
.L0162fc10:
    lw	$t1,0($a6)
    lw	$t1,24($t1)
    sllv	$t3,$s3,$a2
    sllv	$t2,$s3,$t1
    beqz	$a2,.L0162fbdc
    or	$a7,$a7,$t2
    sll	$t2,$t1,0x2
    addu	$t2,$t0,$t2
    lw	$t2,0($t2)
    and	$t2,$t2,$t3
    b	.L0162fbdc
    movn	$a2,$t1,$t2
.L0162fc40:
    beq	$s2,$v0,.L0162fc00
    nop
.L0162fc48:
    lw	$v0,24($v0)
    lw	$a1,28($v0)
    bnez	$a1,.L0162fc00
    nop
    beq	$s2,$v0,.L0162fc00
    nop
    lw	$v0,24($v0)
    lw	$a1,28($v0)
    bnez	$a1,.L0162fc00
    nop
    bne	$s2,$v0,.L0162fc48
    nop
    b	.L0162fc00
    nop
.L0162fc80:
    lw	$s4,28($s4)
.L0162fc84:
    beqz	$s4,.L0162fca4
.L0162fc88:
    li	$t3,1
    sd	$t3,8($sp)
    b	.L0162f9c4
    li	$s7,1
.L0162fc98:
    lw	$s4,28($s4)
    bnez	$s4,.L0162fc88
    move	$s5,$s2
.L0162fca4:
    b	.L0162faa8
    li	$a1,1
    nop
.L0162fcb0:
    move	$v0,$a0
.L0162fcb4:
    beqz	$s1,.L0162fd88
    nop
    lw	$t8,124($v0)
    lw	$a6,132($v0)
    sll	$t8,$t8,0x15
    lw	$a0,36($v0)
    bltz	$t8,.L0162fd08
    addu	$a2,$a6,$a1
.L0162fcd4:
    beqz	$a0,.L0162fcec
    nop
    lw	$t9,0($a2)
    lw	$t9,28($t9)
    bnez	$t9,.L0162fcb0
    nop
.L0162fcec:
    lw	$a0,28($v0)
    beqz	$a0,.L0162ff5c
    nop
.L0162fcf8:
    beq	$v0,$s2,.L0162fd88
    nop
    b	.L0162fcb4
    move	$v0,$a0
.L0162fd08:
    addu	$at,$a1,$a6
    lw	$at,0($at)
    lw	$at,24($at)
    sll	$ra,$at,0x2
    addu	$ra,$t0,$ra
    lw	$ra,0($ra)
    sllv	$v1,$s3,$s1
    and	$ra,$ra,$v1
    b	.L0162fcd4
    movn	$s1,$at,$ra
.L0162fd30:
    move	$v0,$a0
.L0162fd34:
    beqz	$s1,.L0162fd88
    nop
.L0162fd3c:
    lw	$v1,124($v0)
    lw	$a6,132($v0)
    sll	$v1,$v1,0x15
    lw	$a0,36($v0)
    bltz	$v1,.L016300dc
    addu	$a2,$a6,$a1
.L0162fd54:
    beqz	$a0,.L0162fd6c
    nop
    lw	$a3,0($a2)
    lw	$a3,28($a3)
    bnez	$a3,.L0162fd30
    nop
.L0162fd6c:
    lw	$a0,28($v0)
    beqz	$a0,.L016301f0
    nop
.L0162fd78:
    beq	$v0,$s2,.L0162fd88
    nop
    bnez	$s1,.L0162fd3c
    move	$v0,$a0
.L0162fd88:
    beqz	$t0,.L0162ffa4
    sll	$s0,$s1,0x2
.L0162fd90:
    addu	$s0,$t0,$s0
    lw	$a4,24($a7)
    lw	$s0,0($s0)
    sllv	$a4,$s3,$a4
    and	$a4,$s0,$a4
    beqz	$a4,.L01630230
    nop
    b	.L0162fdd8
    move	$s5,$s2
.L0162fdb4:
    lw	$a5,24($s1)
    lw	$t8,132($a5)
    addu	$t8,$t8,$a1
    lw	$t8,0($t8)
    lw	$t8,24($t8)
    sllv	$t8,$s3,$t8
    and	$t8,$s0,$t8
    beqz	$t8,.L0162fe78
    nop
.L0162fdd8:
    lw	$t9,24($a5)
    lw	$at,16($a5)
    beqz	$t9,.L0162fe78
    move	$s1,$a5
    lw	$v0,132($a5)
    addu	$v0,$v0,$a1
    lw	$v0,0($v0)
    lw	$at,116($at)
    lw	$v0,24($v0)
    lw	$at,60($at)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    sw	$s3,0($at)
    lw	$ra,68($a5)
    bnez	$ra,.L0162fdb4
    move	$s5,$a5
    lw	$t9,-28180($gp)
    la	$v1,Must_have_memory
    li	$a0,24
    jalr	$t9
    sw	$s3,0($v1)
    lw	$a1,-5736($gp)
    lh	$a3,8($s1)
    sh	$a3,0($v0)
    lh	$a2,10($s1)
    sw	$zero,8($v0)
    sw	$zero,4($v0)
    sh	$a2,2($v0)
    lw	$a5,24($s1)
    sw	$v0,68($s1)
    lw	$a2,132($a5)
    sll	$a1,$a1,0x2
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    lw	$a2,24($a2)
    sllv	$a2,$s3,$a2
    la	$a0,Must_have_memory
    and	$a2,$s0,$a2
    bnez	$a2,.L0162fdd8
    sw	$zero,0($a0)
.L0162fe78:
    bne	$s4,$s5,.L0162fef4
    nop
    b	.L0162fc84
    lw	$s4,28($s4)
.L0162fe88:
    ld	$s6,104($sp)
    ld	$s7,96($sp)
    ld	$gp,56($sp)
    ld	$s0,32($sp)
    ld	$s2,72($sp)
    ld	$s4,48($sp)
    move	$v0,$zero
    ld	$s5,40($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0162feb4:
    la	$a4,Must_have_memory
    sd	$a1,8($sp)
    li	$a0,24
    jalr	$t9
    sw	$s3,0($a4)
    ld	$a1,8($sp)
    lh	$a6,8($s0)
    sh	$a6,0($v0)
    lh	$a5,10($s0)
    sw	$zero,8($v0)
    la	$a7,Must_have_memory
    sw	$zero,4($v0)
    sw	$zero,0($a7)
    sh	$a5,2($v0)
    b	.L0162fae8
    sw	$v0,68($s0)
.L0162fef4:
    b	.L0162fc84
    move	$s4,$s5
.L0162fefc:
    b	.L0162fa38
    li	$a1,1
.L0162ff04:
    lw	$t1,-5736($gp)
    lw	$t0,132($s1)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    lw	$t0,28($t0)
    b	.L0162fbb4
    movn	$s6,$s1,$t0
.L0162ff24:
    la	$t2,Must_have_memory
    li	$a0,24
    jalr	$t9
    sw	$s3,0($t2)
    lh	$t8,8($s1)
    sh	$t8,0($v0)
    lh	$t3,10($s1)
    sw	$zero,8($v0)
    lw	$t9,-28596($gp)
    sw	$zero,4($v0)
    sw	$zero,0($t9)
    sh	$t3,2($v0)
    b	.L0162fba4
    sw	$v0,68($s1)
.L0162ff5c:
    beq	$s2,$v0,.L0162fcf8
    nop
.L0162ff64:
    lw	$v0,24($v0)
    lw	$a0,28($v0)
    bnez	$a0,.L0162fcf8
    nop
    beq	$s2,$v0,.L0162fcf8
    nop
    lw	$v0,24($v0)
    lw	$a0,28($v0)
    bnez	$a0,.L0162fcf8
    nop
    bne	$s2,$v0,.L0162ff64
    nop
    b	.L0162fcf8
    nop
.L0162ff9c:
    bnez	$t0,.L0162fd90
    sll	$s0,$s1,0x2
.L0162ffa4:
    lw	$ra,24($a7)
    slt	$ra,$s1,$ra
    beqz	$ra,.L0163029c
    nop
    move	$s5,$s2
.L0162ffb8:
    lw	$at,24($a5)
    lw	$v1,16($a5)
    beqz	$at,.L01630018
    move	$s0,$a5
    lw	$a0,132($a5)
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    lw	$v1,116($v1)
    lw	$a0,24($a0)
    lw	$v1,60($v1)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    sw	$s3,0($v1)
    lw	$v0,68($a5)
    beqz	$v0,.L01630238
    move	$s5,$a5
    lw	$a5,24($a5)
    lw	$a2,132($a5)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    lw	$a2,24($a2)
    slt	$a2,$s1,$a2
    bnez	$a2,.L0162ffb8
    nop
.L01630018:
    bne	$s4,$s5,.L016301e8
    nop
    b	.L0162fc84
    lw	$s4,28($s4)
.L01630028:
    sllv	$a4,$s3,$a2
    sw	$a4,72($s0)
    lw	$a3,132($s2)
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    lw	$a3,24($a3)
    sll	$a3,$a3,0x2
    addu	$a3,$a6,$a3
    move	$s5,$s2
    b	.L0162f9a8
    sw	$s3,0($a3)
.L01630054:
    la	$a5,Must_have_memory
    sd	$a2,88($sp)
    li	$a0,24
    jalr	$t9
    sw	$s3,0($a5)
    ld	$a2,88($sp)
    lh	$a7,8($s1)
    sh	$a7,0($v0)
    lh	$a6,10($s1)
    sw	$zero,8($v0)
    la	$t0,Must_have_memory
    sw	$zero,4($v0)
    sw	$zero,0($t0)
    sh	$a6,2($v0)
    b	.L0162f894
    sw	$v0,68($s1)
.L01630094:
    slt	$t1,$a2,$v0
    beqz	$t1,.L0162f9a8
    nop
    move	$s5,$s2
.L016300a4:
    lw	$v0,24($a5)
    beqz	$v0,.L016300d4
    xor	$t3,$s2,$s5
    lw	$t2,132($v0)
    addu	$t2,$t2,$a0
    lw	$t2,0($t2)
    lw	$t2,24($t2)
    slt	$t2,$a2,$t2
    move	$s5,$a5
    bnez	$t2,.L016300a4
    move	$a5,$v0
    xor	$t3,$s2,$s5
.L016300d4:
    b	.L0162f9a8
    movn	$s4,$s5,$t3
.L016300dc:
    lw	$t9,0($a2)
    lw	$t9,24($t9)
    slt	$t8,$t9,$s1
    b	.L0162fd54
    movn	$s1,$t9,$t8
.L016300f0:
    move	$v0,$a5
.L016300f4:
    lw	$at,124($v0)
.L016300f8:
    lw	$a6,132($v0)
    sll	$at,$at,0x15
    lw	$a5,36($v0)
    bltz	$at,.L01630140
    addu	$a1,$a6,$a0
.L0163010c:
    beqz	$a5,.L01630124
    nop
    lw	$v1,0($a1)
    lw	$v1,28($v1)
    bnez	$v1,.L016300f0
    nop
.L01630124:
    lw	$a1,28($v0)
    beqz	$a1,.L01630160
    nop
.L01630130:
    beq	$v0,$s2,.L0162f930
    nop
    b	.L016300f4
    move	$v0,$a1
.L01630140:
    lw	$a3,0($a1)
    lw	$a3,24($a3)
    sllv	$a4,$s3,$a3
    slt	$t1,$a3,$a2
    movz	$a3,$a2,$t1
    or	$a7,$a7,$a4
    b	.L0163010c
    movn	$a2,$a3,$a2
.L01630160:
    beq	$s2,$v0,.L01630130
    nop
.L01630168:
    lw	$v0,24($v0)
    lw	$a1,28($v0)
    bnez	$a1,.L01630130
    nop
    beq	$s2,$v0,.L01630130
    nop
    lw	$v0,24($v0)
    lw	$a1,28($v0)
    bnez	$a1,.L01630130
    nop
    bne	$s2,$v0,.L01630168
    nop
    b	.L01630130
    nop
.L016301a0:
    lw	$t0,56($s0)
    b	.L0162f934
    sw	$s7,72($s0)
.L016301ac:
    lw	$a4,132($s1)
    addu	$a4,$a4,$a1
    lw	$a4,0($a4)
    lw	$a4,24($a4)
    sllv	$a4,$s3,$a4
    b	.L0162f8e8
    sw	$a4,72($s0)
.L016301c8:
    ld	$t9,16($sp)
    addiu	$a0,$s1,84
    jalr	$t9
    ld	$a1,24($sp)
    bnez	$v0,.L0162fb6c
    lw	$a3,-5736($gp)
    b	.L0162fa38
    ld	$a1,8($sp)
.L016301e8:
    b	.L0162fc84
    move	$s4,$s5
.L016301f0:
    beq	$s2,$v0,.L0162fd78
    nop
.L016301f8:
    lw	$v0,24($v0)
    lw	$a0,28($v0)
    bnez	$a0,.L0162fd78
    nop
    beq	$s2,$v0,.L0162fd78
    nop
    lw	$v0,24($v0)
    lw	$a0,28($v0)
    bnez	$a0,.L0162fd78
    nop
    bne	$s2,$v0,.L016301f8
    nop
    b	.L0162fd78
    nop
.L01630230:
    b	.L0162fc84
    lw	$s4,28($s4)
.L01630238:
    lw	$t9,-28180($gp)
    la	$a5,Must_have_memory
    li	$a0,24
    jalr	$t9
    sw	$s3,0($a5)
    lw	$a1,-5736($gp)
    lh	$a3,8($s0)
    sh	$a3,0($v0)
    lh	$a2,10($s0)
    sw	$zero,8($v0)
    sw	$zero,4($v0)
    sh	$a2,2($v0)
    lw	$a5,24($s0)
    sw	$v0,68($s0)
    lw	$a7,132($a5)
    sll	$a1,$a1,0x2
    addu	$a7,$a7,$a1
    lw	$a7,0($a7)
    lw	$a7,24($a7)
    la	$a6,Must_have_memory
    slt	$a7,$s1,$a7
    bnez	$a7,.L0162ffb8
    sw	$zero,0($a6)
    b	.L01630018
    nop
.L0163029c:
    b	.L0162fc84
    lw	$s4,28($s4)

glabel nfbCopyClip__AK
    lw	$v0,16($a1)
    move	$a6,$a1
    addiu	$sp,$sp,-48
    li	$at,1
    srl	$v0,$v0,0x12
    lui	$v1,0x11
    andi	$v0,$v0,0x3
    li	$a2,2
    sd	$ra,32($sp)
    addiu	$v1,$v1,-22768
    sd	$gp,24($sp)
    beq	$v0,$at,.L01630308
    addu	$gp,$t9,$v1
    beqz	$v0,.L01630328
    lw	$t9,-29000($gp)
    sd	$a0,8($sp)
    beq	$v0,$a2,.L01630340
    sd	$a1,16($sp)
    ld	$ra,32($sp)
.L016302fc:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L01630308:
    lw	$a1,56($a1)
    lw	$v1,24($a1)
    addiu	$v1,$v1,1
    sw	$v1,24($a1)
    lw	$v0,16($a6)
    srl	$v0,$v0,0x12
    andi	$v0,$v0,0x3
    lw	$t9,-29000($gp)
.L01630328:
    move	$a1,$v0
    lw	$a2,56($a6)
    jalr	$t9
    move	$a3,$zero
    b	.L016302fc
    ld	$ra,32($sp)
.L01630340:
    ld	$t9,16($sp)
    lw	$t9,0($t9)
    lw	$t9,336($t9)
    move	$a0,$zero
    jalr	$t9
    li	$a1,1
    ld	$a1,16($sp)
    lw	$t9,0($a1)
    lw	$t9,344($t9)
    sd	$v0,0($sp)
    move	$a0,$v0
    jalr	$t9
    lw	$a1,56($a1)
    lw	$t9,-29000($gp)
    ld	$a0,8($sp)
    li	$a1,2
    ld	$a2,0($sp)
    jalr	$t9
    move	$a3,$zero
    b	.L016302fc
    ld	$ra,32($sp)

glabel nfb9RopLoop__JH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L016330b0
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L01633048
    sra	$a3,$t0,0x2
.L0163301c:
    lw	$v1,0($a0)
    lw	$v0,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v1,$v1,$zero
    xor	$v0,$v0,$v1
    bnez	$a4,.L0163301c
    sw	$v0,-4($a1)
.L01633048:
    beqz	$a3,.L016330b0
    nop
.L01633050:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    nor	$t8,$t8,$zero
    xor	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t2,4($a0)
    lw	$t1,4($a1)
    nor	$t2,$t2,$zero
    xor	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$t0,8($a0)
    lw	$a7,8($a1)
    nor	$t0,$t0,$zero
    xor	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a6,12($a0)
    lw	$a4,12($a1)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    nor	$a6,$a6,$zero
    xor	$a4,$a4,$a6
    bnez	$a5,.L01633050
    sw	$a4,-4($a1)
.L016330b0:
    jr	$ra
    nop

glabel nfbInfSetSpans__GK
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lui	$at,0x10
    sd	$s1,16($sp)
    addiu	$at,$at,28368
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    lw	$t8,-6768($gp)
    lw	$s1,76($a1)
    sd	$s0,24($sp)
    sll	$t8,$t8,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$t8
    move	$t1,$a2
    move	$t0,$a3
    lw	$s1,0($s1)
    li	$t3,1
    move	$s0,$a0
    sd	$s2,32($sp)
    move	$s2,$a1
    bnez	$at,.L01633c84
    lw	$t2,8($s1)
    lbu	$v1,2($a0)
    lw	$v0,24($s1)
    sllv	$v1,$t3,$v1
    and	$v0,$v0,$v1
    beqz	$v0,.L01633c84
    sd	$t2,8($sp)
    sw	$t3,19112($gp)
    sw	$t1,19080($gp)
    sw	$a3,19084($gp)
    sw	$a6,19096($gp)
    lw	$a6,16($a1)
    lui	$a7,0x20
    sw	$a4,19088($gp)
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,16($a1)
    lw	$a3,32($s1)
    sw	$a5,19092($gp)
    lw	$a5,-5736($gp)
    lw	$a4,132($a0)
    lw	$t9,-29908($gp)
    sll	$a5,$a5,0x2
    lw	$a3,4($a3)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    move	$a2,$a0
    jalr	$t9
    sd	$a4,0($sp)
    lw	$t2,19116($gp)
    ld	$ra,8($sp)
    sw	$ra,8($s1)
    lw	$t8,16($s2)
    lw	$t3,-5736($gp)
    lui	$t9,0x20
    or	$t8,$t8,$t9
    sw	$t8,16($s2)
    lw	$t1,132($s0)
    sw	$zero,19112($gp)
    sll	$t3,$t3,0x2
    ld	$t0,0($sp)
    addu	$t1,$t1,$t3
    beqz	$t2,.L01633c68
    sw	$t0,0($t1)
    lw	$v1,-6768($gp)
    lw	$v0,76($s2)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$a1,24($s2)
    lw	$t9,28($v0)
    sw	$a1,40($v0)
    sw	$a1,64($v0)
    lw	$a0,28($s2)
    sw	$a0,44($v0)
    sw	$a0,68($v0)
    lw	$v1,20($s2)
    sw	$v1,52($v0)
    sw	$v1,76($v0)
    lbu	$at,5($s2)
    move	$a1,$s0
    sb	$at,48($v0)
    move	$a0,$s2
    jalr	$t9
    sb	$at,72($v0)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01633c68:
    ld	$s1,16($sp)
.L01633c6c:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01633c84:
    lw	$t9,32($s1)
    lw	$t9,4($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$t1
    jalr	$t9
    move	$a3,$t0
    b	.L01633c6c
    ld	$s1,16($sp)

glabel nfbStereoPaintWindowBorder__AJ
    addiu	$sp,$sp,-80
    sd	$s5,48($sp)
    sd	$ra,32($sp)
    sd	$s1,64($sp)
    sd	$s4,40($sp)
    sd	$s3,24($sp)
    sd	$s2,16($sp)
    lui	$at,0x10
    lw	$s2,16($a0)
    sd	$gp,72($sp)
    addiu	$at,$at,1856
    move	$s3,$a0
    addu	$gp,$t9,$at
    lw	$t9,340($s2)
    addiu	$a0,$sp,0
    sd	$s0,56($sp)
    move	$s0,$a1
    move	$a1,$zero
    move	$s4,$a2
    lw	$s1,116($s2)
    move	$a2,$zero
    jalr	$t9
    lw	$s5,0($s2)
    lw	$t9,344($s2)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$sp,0
    sll	$a1,$s5,0x2
    li	$a3,2
    lw	$a2,220($s1)
    subu	$a1,$a1,$s5
    addiu	$a4,$gp,-6776
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a4
    lw	$t9,356($s2)
    beq	$a2,$a3,.L0163a3c4
    addiu	$a1,$a1,25656
    move	$a0,$s0
    ld	$s5,48($sp)
    jalr	$t9
    move	$a2,$s0
    lw	$t9,232($s1)
    move	$a0,$s3
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    lw	$t9,376($s2)
    lhu	$a2,226($s1)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    negu	$a2,$a2
    lhu	$a4,226($s1)
    lh	$a3,10($s3)
    subu	$a3,$a3,$a4
    sh	$a3,10($s3)
    lw	$t9,232($s1)
    move	$a2,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s3
    lhu	$a6,226($s1)
    lh	$a5,10($s3)
    ld	$s4,40($sp)
    addu	$a5,$a5,$a6
    sh	$a5,10($s3)
.L0163a388:
    lw	$t9,344($s2)
    ld	$s3,24($sp)
    move	$a0,$s0
    ld	$s1,64($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    lw	$t9,352($s2)
    ld	$s0,56($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    ld	$s2,16($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0163a3c4:
    move	$a0,$s0
    ld	$s5,48($sp)
    jalr	$t9
    move	$a2,$s0
    lw	$t9,232($s1)
    move	$a0,$s3
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    lw	$t9,376($s2)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    lhu	$a2,226($s1)
    lhu	$t0,226($s1)
    lh	$a7,10($s3)
    addu	$a7,$a7,$t0
    sh	$a7,10($s3)
    lw	$t9,232($s1)
    move	$a2,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s3
    lhu	$t2,226($s1)
    lh	$t1,10($s3)
    ld	$s4,40($sp)
    subu	$t1,$t1,$t2
    b	.L0163a388
    sh	$t1,10($s3)

glabel nfbSolidFillRects
    addiu	$sp,$sp,-16
    lui	$at,0x10
    sd	$ra,0($sp)
    addiu	$at,$at,-7216
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$ra,-5736($gp)
    lw	$t9,132($a1)
    lw	$a4,76($a0)
    sll	$ra,$ra,0x2
    lw	$a6,-6768($gp)
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    sll	$a6,$a6,0x2
    addu	$a4,$a4,$a6
    lw	$t9,0($t9)
    lw	$a4,0($a4)
    lw	$t9,4($t9)
    move	$a0,$a2
    lw	$a2,64($a4)
    move	$a5,$a1
    move	$a1,$a3
    lbu	$a3,72($a4)
    jalr	$t9
    lw	$a4,76($a4)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfb15RopLoop__PH
    sltu	$at,$a1,$a2
    subu	$v1,$a2,$a1
    addiu	$a6,$v1,6
    addiu	$a0,$v1,3
    beqz	$at,.L0163ca94
    slt	$t0,$a0,$zero
    movz	$a6,$a0,$t0
    sra	$t1,$a6,0x2
    andi	$a5,$t1,0x7
    li	$a7,-1
    beqz	$a5,.L0163c9e4
    sra	$v0,$t1,0x3
.L0163c9d0:
    addiu	$a1,$a1,4
    addiu	$a5,$a5,-1
    sw	$a7,-4($a1)
    bnez	$a5,.L0163c9d0
    pref	0x1,252($a1)
.L0163c9e4:
    addiu	$v1,$a1,32
    beqz	$v0,.L0163ca94
    sltu	$a0,$v1,$a2
    beqz	$a0,.L0163caa4
    nop
    sw	$a7,8($a1)
    sw	$a7,4($a1)
    sw	$a7,0($a1)
    addiu	$at,$a2,-32
    pref	0x1,256($a1)
    move	$a0,$a7
    sltu	$a2,$v1,$at
    nop
    nop
    nop
.L0163ca20:
    sw	$a0,12($a1)
    sw	$a0,16($a1)
    sw	$a0,20($a1)
    sw	$a0,24($a1)
    sw	$a0,28($a1)
    addiu	$a1,$v1,32
    sw	$a0,0($v1)
    sltu	$v0,$a1,$at
    sw	$a0,4($v1)
    beqz	$a2,.L0163ca9c
    sw	$a0,8($v1)
    sw	$a0,12($v1)
    sw	$a0,16($v1)
    sw	$a0,20($v1)
    sw	$a0,24($v1)
    sw	$a0,28($v1)
    pref	0x1,256($a1)
    addiu	$v1,$v1,64
    sw	$a0,0($a1)
    sltu	$a2,$v1,$at
    sw	$a0,4($a1)
    bnez	$v0,.L0163ca20
    sw	$a0,8($a1)
.L0163ca7c:
    sw	$a7,28($a1)
    sw	$a7,24($a1)
    sw	$a7,20($a1)
    sw	$a7,16($a1)
    jr	$ra
    sw	$a7,12($a1)
.L0163ca94:
    jr	$ra
    nop
.L0163ca9c:
    b	.L0163ca7c
    move	$a1,$v1
.L0163caa4:
    sw	$a7,28($a1)
    sw	$a7,24($a1)
    sw	$a7,20($a1)
    sw	$a7,16($a1)
    sw	$a7,12($a1)
    sw	$a7,8($a1)
    sw	$a7,4($a1)
    jr	$ra
    sw	$a7,0($a1)

glabel nfbCopyPlane
    move	$v0,$a2
    addiu	$sp,$sp,-256
    lbu	$at,0($a0)
    sd	$s1,80($sp)
    li	$t2,1
    lui	$v1,0x10
    move	$s1,$a1
    sd	$ra,184($sp)
    addiu	$v1,$v1,-18048
    sd	$gp,88($sp)
    bne	$t2,$at,.L0163f08c
    addu	$gp,$t9,$v1
    lbu	$a1,0($a1)
    beq	$t2,$a1,.L0163f0ec
    nop
    bnez	$a1,.L0163f090
    lw	$t1,260($sp)
    lbu	$a1,2($a0)
    beq	$t2,$a1,.L0163f0c8
.L0163f08c:
    lw	$t1,260($sp)
.L0163f090:
    lw	$t9,-28780($gp)
    sw	$t1,4($sp)
    move	$a1,$s1
    lw	$t0,268($sp)
    move	$a2,$v0
    jalr	$t9
    sw	$t0,12($sp)
    ld	$s1,80($sp)
    move	$a0,$v0
.L0163f0b4:
    ld	$ra,184($sp)
    move	$v0,$a0
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0163f0c8:
    lw	$t3,124($s1)
    sll	$t3,$t3,0x14
    bltz	$t3,.L0163f12c
    move	$ra,$ra
    move	$v0,$zero
    ld	$gp,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0163f0ec:
    lbu	$a1,4($a2)
    slti	$t8,$a1,9
    lw	$t2,260($sp)
    bnez	$t8,.L0163f528
    lw	$t3,268($sp)
    slti	$t9,$a1,17
    beqz	$t9,.L0163f3dc
    lw	$t9,-30484($gp)
    lw	$t9,-30396($gp)
    sw	$t3,12($sp)
    move	$a1,$s1
    jalr	$t9
    sw	$t2,4($sp)
    ld	$s1,80($sp)
    b	.L0163f0b4
    move	$a0,$v0
.L0163f12c:
    sd	$s2,128($sp)
    sd	$s3,152($sp)
    sd	$s5,168($sp)
    sd	$s8,144($sp)
    lw	$a2,76($a2)
    sd	$s6,136($sp)
    lw	$t0,-6768($gp)
    sd	$s7,176($sp)
    lw	$s7,-5736($gp)
    lw	$s6,132($s1)
    sll	$t0,$t0,0x2
    sd	$s4,160($sp)
    sll	$s7,$s7,0x2
    addu	$a2,$a2,$t0
    addu	$s6,$s6,$s7
    lw	$a2,0($a2)
    lw	$s6,0($s6)
    lbu	$s7,48($a2)
    lw	$s4,52($a2)
    dsll32	$a1,$a4,0x10
    lw	$s8,44($a2)
    dsra32	$a1,$a1,0x10
    lw	$s5,40($a2)
    dsll32	$t9,$a3,0x10
    lw	$s6,0($s6)
    addu	$t3,$a1,$a6
    dsra32	$t9,$t9,0x10
    sh	$t3,22($sp)
    addu	$t8,$t9,$a5
    sh	$t8,20($sp)
    move	$s3,$a4
    sh	$a1,18($sp)
    move	$s2,$a3
    bltz	$t9,.L0163f420
    sh	$t9,16($sp)
    move	$ra,$zero
    bltz	$a1,.L0163f438
    sd	$a2,64($sp)
.L0163f1c4:
    move	$a2,$zero
.L0163f1c8:
    addu	$v1,$a3,$a5
    lhu	$at,12($a0)
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sd	$at,56($sp)
    slt	$at,$at,$v1
    beqz	$at,.L0163f1f0
    ld	$a3,56($sp)
    sh	$a3,20($sp)
    move	$t8,$a3
.L0163f1f0:
    addu	$a5,$a4,$a6
    lhu	$a3,14($a0)
    dsll32	$a5,$a5,0x10
    dsra32	$a5,$a5,0x10
    slt	$a5,$a3,$a5
    beqz	$a5,.L0163f218
    lw	$v1,260($sp)
    move	$t3,$a3
    sh	$a3,22($sp)
    lw	$v1,260($sp)
.L0163f218:
    lh	$at,10($s1)
    addu	$at,$at,$v1
    addu	$at,$a2,$at
    lh	$v1,8($s1)
    dsll32	$a3,$at,0x10
    subu	$at,$at,$a1
    addu	$v1,$v1,$a7
    dsra32	$a1,$a3,0x10
    addu	$v1,$ra,$v1
    dsll32	$a3,$v1,0x10
    subu	$v1,$v1,$t9
    dsra32	$t9,$a3,0x10
    addu	$t8,$v1,$t8
    dsll32	$t8,$t8,0x10
    sh	$a1,18($sp)
    addu	$t3,$at,$t3
    dsra32	$t8,$t8,0x10
    dsll32	$t3,$t3,0x10
    sh	$t9,16($sp)
    slt	$a6,$t9,$t8
    dsra32	$t3,$t3,0x10
    sh	$t3,22($sp)
    beqz	$a6,.L0163f3f8
    sh	$t8,20($sp)
    slt	$a2,$a1,$t3
    beqz	$a2,.L0163f3f8
    ld	$a2,64($sp)
    lw	$a2,8($a2)
    sd	$s0,120($sp)
    lw	$a4,8($a2)
    lw	$s0,32($a0)
    lw	$a3,28($a0)
    beqz	$a4,.L0163f44c
    sd	$a3,112($sp)
    lw	$a3,4($a4)
    beq	$a3,$t2,.L0163f44c
    nop
    sd	$v0,72($sp)
    ld	$t9,72($sp)
    lw	$t9,0($t9)
    lw	$t9,340($t9)
    sd	$a2,48($sp)
    li	$a2,1
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,32
    ld	$t9,72($sp)
    lw	$t9,0($t9)
    lw	$t9,356($t9)
    addiu	$a0,$sp,32
    ld	$a2,48($sp)
    jalr	$t9
    move	$a1,$a0
    lw	$a1,40($sp)
.L0163f2f0:
    beqz	$a1,.L0163f548
    addiu	$a0,$a1,8
    lw	$v0,4($a1)
    blez	$v0,.L0163f390
    sd	$s0,104($sp)
.L0163f304:
    sll	$ra,$v0,0x3
    move	$s0,$a0
    addu	$ra,$a0,$ra
    sd	$ra,96($sp)
    nop
    nop
    lh	$a2,2($s0)
.L0163f320:
    lh	$a1,0($s0)
    lh	$a3,18($sp)
    addu	$a2,$a2,$s3
    subu	$a2,$a2,$a3
    ld	$a3,112($sp)
    mult	$a3,$a2
    move	$a7,$s4
    ld	$t0,104($sp)
    move	$a6,$s7
    move	$a5,$s8
    lh	$a2,16($sp)
    move	$a4,$s5
    addu	$a1,$a1,$s2
    sw	$s1,4($sp)
    move	$a0,$s0
    lw	$t9,16($s6)
    subu	$a1,$a1,$a2
    andi	$a2,$a1,0x7
    mflo	$t1
    sra	$a1,$a1,0x3
    addu	$t0,$t0,$t1
    pref	0x0,256($s0)
    jalr	$t9
    addu	$a1,$a1,$t0
    ld	$a3,96($sp)
    addiu	$s0,$s0,8
    bnel	$s0,$a3,.L0163f320
    lh	$a2,2($s0)
.L0163f390:
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    ld	$s4,160($sp)
    ld	$t9,72($sp)
    ld	$s3,152($sp)
    lw	$t9,0($t9)
    ld	$s8,144($sp)
    lw	$t9,352($t9)
    ld	$s6,136($sp)
    ld	$s2,128($sp)
    ld	$s0,120($sp)
    jalr	$t9
    addiu	$a0,$sp,32
    ld	$ra,184($sp)
    move	$v0,$zero
    ld	$gp,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0163f3dc:
    sw	$t3,12($sp)
    move	$a1,$s1
    jalr	$t9
    sw	$t2,4($sp)
    ld	$s1,80($sp)
    b	.L0163f0b4
    move	$a0,$v0
.L0163f3f8:
    ld	$s2,128($sp)
    ld	$s6,136($sp)
    ld	$s8,144($sp)
    ld	$s3,152($sp)
    ld	$s4,160($sp)
    ld	$s5,168($sp)
    ld	$s7,176($sp)
    ld	$s1,80($sp)
    b	.L0163f0b4
    move	$a0,$zero
.L0163f420:
    move	$t9,$zero
    negu	$ra,$a3
    sh	$zero,16($sp)
    move	$s2,$zero
    bgez	$a1,.L0163f1c4
    sd	$a2,64($sp)
.L0163f438:
    move	$a1,$zero
    negu	$a2,$a4
    sh	$zero,18($sp)
    b	.L0163f1c8
    move	$s3,$zero
.L0163f44c:
    sh	$t3,30($sp)
    sh	$t8,28($sp)
    sh	$a1,26($sp)
    sh	$t9,24($sp)
    lw	$at,8($a2)
    addiu	$a0,$at,8
    movz	$a0,$a2,$at
    lh	$a4,0($a0)
    slt	$ra,$t9,$a4
    beqz	$ra,.L0163f480
    nop
    move	$t9,$a4
    sh	$a4,24($sp)
.L0163f480:
    lh	$a2,4($a0)
    slt	$v1,$a2,$t8
    beqz	$v1,.L0163f498
    nop
    move	$t8,$a2
    sh	$a2,28($sp)
.L0163f498:
    lh	$a2,2($a0)
    slt	$a3,$a1,$a2
    beqz	$a3,.L0163f4b0
    nop
    move	$a1,$a2
    sh	$a2,26($sp)
.L0163f4b0:
    lh	$a2,6($a0)
    slt	$a4,$a2,$t3
    beqz	$a4,.L0163f4cc
    slt	$a5,$t9,$t8
    move	$t3,$a2
    sh	$a2,30($sp)
    slt	$a5,$t9,$t8
.L0163f4cc:
    beqz	$a5,.L0163f500
    slt	$a6,$a1,$t3
    beqz	$a6,.L0163f500
    sd	$v0,72($sp)
    ld	$t9,72($sp)
    lw	$t9,0($t9)
    lw	$t9,340($t9)
    li	$a2,1
    addiu	$a1,$sp,24
    jalr	$t9
    addiu	$a0,$sp,32
    b	.L0163f2f0
    lw	$a1,40($sp)
.L0163f500:
    sd	$v0,72($sp)
    ld	$t9,72($sp)
    lw	$t9,0($t9)
    lw	$t9,340($t9)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,32
    b	.L0163f2f0
    lw	$a1,40($sp)
.L0163f528:
    lw	$t9,-30316($gp)
    sw	$t3,12($sp)
    move	$a1,$s1
    jalr	$t9
    sw	$t2,4($sp)
    ld	$s1,80($sp)
    b	.L0163f0b4
    move	$a0,$v0
.L0163f548:
    li	$v0,1
    addiu	$a0,$sp,32
    b	.L0163f304
    sd	$s0,104($sp)

glabel nfbInfCopyArea__IK
    addiu	$sp,$sp,-96
    sd	$ra,16($sp)
    sd	$gp,24($sp)
    lui	$v0,0x10
    lw	$at,100($sp)
    addiu	$v0,$v0,-22848
    sw	$at,4($sp)
    addu	$gp,$t9,$v0
    lw	$ra,-6768($gp)
    lw	$t9,76($a2)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,12($t9)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbSolidZeroSeg
    addiu	$sp,$sp,-352
    sd	$a1,144($sp)
    sd	$s0,264($sp)
    sd	$ra,256($sp)
    sd	$s8,96($sp)
    lui	$t0,0x10
    sd	$s6,104($sp)
    addiu	$t0,$t0,-22944
    sd	$gp,72($sp)
    addu	$gp,$t9,$t0
    lw	$v1,-6768($gp)
    lw	$v0,76($a0)
    sd	$s5,80($sp)
    sll	$v1,$v1,0x2
    sd	$s1,88($sp)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$v1,-5736($gp)
    lw	$at,132($a1)
    lw	$a0,64($v0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$v1,76($v0)
    lbu	$v0,72($v0)
    sd	$a0,128($sp)
    lw	$at,0($at)
    sd	$v1,152($sp)
    move	$t3,$a2
    lw	$at,0($at)
    move	$s1,$a7
    negu	$t2,$a7
    sd	$v0,112($sp)
    move	$s5,$a6
    move	$s6,$a5
    lw	$at,4($at)
    move	$s8,$a3
    blez	$t2,.L01640bf8
    sd	$at,136($sp)
    move	$t0,$zero
    move	$t1,$zero
    lw	$s0,356($sp)
    nop
    nop
    nop
.L01640410:
    addu	$t1,$t1,$s0
    slt	$t8,$t1,$t2
    addiu	$t0,$t0,1
    beqz	$t8,.L01640434
    nop
    addu	$t1,$t1,$s0
    slt	$t9,$t1,$t2
    bnez	$t9,.L01640410
    addiu	$t0,$t0,1
.L01640434:
    sd	$s4,248($sp)
.L01640438:
    lw	$t9,364($sp)
    mtc1	$s0,$f1
    negu	$ra,$t9
    mtc1	$ra,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$ra,$f0
    mult	$ra,$s0
    lw	$t8,372($sp)
    teq	$s0,$zero,0x7
    addiu	$t2,$t0,1
    subu	$s4,$t8,$t0
    slt	$at,$t0,$t8
    movz	$t2,$t8,$at
    addiu	$s4,$s4,-1
    addu	$s1,$t1,$s1
    movz	$s4,$zero,$at
    sd	$ra,168($sp)
    addiu	$ra,$ra,1
    sd	$ra,176($sp)
    mflo	$t8
    slt	$ra,$ra,$s4
    sd	$t8,56($sp)
    addu	$t8,$t8,$t9
    sd	$ra,32($sp)
    beqz	$a4,.L01640748
    addu	$s1,$s1,$t8
    bltz	$s8,.L01640804
    addiu	$a7,$s6,1
    dsll32	$s8,$s5,0x10
    dsra32	$s8,$s8,0x10
    addu	$t0,$s5,$t2
    sh	$s5,2($sp)
    dsll32	$a6,$t0,0x10
    sh	$a7,4($sp)
    dsra32	$a6,$a6,0x10
    sh	$s6,0($sp)
    beq	$s8,$a6,.L01640530
    sh	$a6,6($sp)
    slt	$ra,$a6,$s8
    beqz	$ra,.L016404fc
    sd	$t0,232($sp)
    addiu	$v0,$s8,1
    sh	$v0,6($sp)
    addiu	$at,$a6,1
    sh	$at,2($sp)
    sd	$t3,272($sp)
.L016404fc:
    sd	$t3,272($sp)
    sh	$s6,0($sp)
    sh	$a7,4($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    li	$a1,1
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$a5,144($sp)
    ld	$t3,272($sp)
    ld	$t0,232($sp)
.L01640530:
    ld	$v1,32($sp)
    move	$s5,$t0
    beqz	$v1,.L01640684
    move	$a1,$zero
    sd	$s3,200($sp)
    addu	$s3,$t3,$s6
    sd	$s3,48($sp)
    sd	$s7,184($sp)
    sd	$s2,192($sp)
    ld	$a3,112($sp)
    lw	$a2,364($sp)
    ld	$a0,56($sp)
    sd	$a3,120($sp)
    addiu	$s2,$s3,1
    addu	$a0,$a0,$a2
    b	.L016405f8
    sd	$a0,160($sp)
.L01640574:
    slt	$a4,$a6,$s8
    addiu	$a7,$s8,1
    addiu	$t0,$a6,1
    bnez	$a4,.L01640670
    sd	$a2,40($sp)
.L01640588:
    sd	$t3,272($sp)
    sh	$s2,4($sp)
    sh	$s3,0($sp)
    ld	$a2,128($sp)
    ld	$a3,120($sp)
    ld	$t9,136($sp)
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    sd	$a1,280($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,144($sp)
    ld	$a1,280($sp)
    ld	$t3,272($sp)
    addiu	$a1,$a1,1
    addu	$s3,$s3,$t3
    ld	$a6,176($sp)
    subu	$s4,$s4,$s6
    ld	$a5,160($sp)
    negu	$a7,$s7
    addiu	$s4,$s4,-1
    and	$a7,$s0,$a7
    slt	$a6,$a6,$s4
    addu	$s2,$s2,$t3
    addu	$a5,$a5,$a7
    ld	$s5,40($sp)
    beqz	$a6,.L01640698
    addu	$s1,$s1,$a5
.L016405f8:
    ld	$s6,168($sp)
    slti	$s7,$s1,0
    addu	$s6,$s7,$s6
    dsll32	$s8,$s5,0x10
    addu	$a2,$s6,$s5
    dsra32	$s8,$s8,0x10
    addiu	$a2,$a2,1
    sh	$s3,0($sp)
    dsll32	$a6,$a2,0x10
    sh	$s2,4($sp)
    dsra32	$a6,$a6,0x10
    sh	$s5,2($sp)
    bne	$s8,$a6,.L01640574
    sh	$a6,6($sp)
    move	$s5,$a2
    addiu	$a1,$a1,1
    addu	$s3,$s3,$t3
    ld	$t9,176($sp)
    subu	$s4,$s4,$s6
    ld	$t8,160($sp)
    negu	$ra,$s7
    addiu	$s4,$s4,-1
    and	$ra,$s0,$ra
    slt	$t9,$t9,$s4
    addu	$s2,$s2,$t3
    addu	$t8,$t8,$ra
    bnez	$t9,.L016405f8
    addu	$s1,$s1,$t8
    b	.L01640698
    nop
.L01640670:
    sh	$t0,2($sp)
    sh	$a7,6($sp)
    sd	$t3,272($sp)
    b	.L01640588
    sd	$a1,280($sp)
.L01640684:
    addu	$t8,$t3,$s6
    sd	$t8,48($sp)
    sd	$s7,184($sp)
    sd	$s3,200($sp)
    sd	$s2,192($sp)
.L01640698:
    mult	$a1,$t3
    dsll32	$s8,$s5,0x10
    addu	$a6,$s5,$s4
    sh	$s5,2($sp)
    dsll32	$a6,$a6,0x10
    ld	$s3,48($sp)
    dsra32	$a6,$a6,0x10
    sh	$a6,6($sp)
    dsra32	$s8,$s8,0x10
    mflo	$t8
    addu	$s3,$s3,$t8
    sh	$s3,0($sp)
    addiu	$s2,$s3,1
    beq	$s8,$a6,.L01640714
    sh	$s2,4($sp)
    slt	$a7,$a6,$s8
    beqz	$a7,.L016406ec
    addiu	$t1,$s8,1
    sh	$t1,6($sp)
    addiu	$t0,$a6,1
    sh	$t0,2($sp)
.L016406ec:
    sh	$s3,0($sp)
    sh	$s2,4($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    li	$a1,1
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$a5,144($sp)
.L01640714:
    ld	$s0,264($sp)
.L01640718:
    ld	$s4,248($sp)
    ld	$s3,200($sp)
    ld	$s2,192($sp)
    ld	$s7,184($sp)
    ld	$gp,72($sp)
    ld	$s1,88($sp)
    ld	$ra,256($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L01640748:
    bltz	$t3,.L01640c0c
    addiu	$a7,$s5,1
    dsll32	$a6,$s6,0x10
    sh	$s6,0($sp)
    dsra32	$a6,$a6,0x10
    addu	$t0,$s6,$t2
    sd	$t0,16($sp)
    dsll32	$t0,$t0,0x10
    sh	$s5,2($sp)
    dsra32	$t0,$t0,0x10
    sh	$a7,6($sp)
    beq	$a6,$t0,.L016407bc
    sh	$t0,4($sp)
    slt	$t2,$t0,$a6
    addiu	$t1,$t0,1
    beqz	$t2,.L01640794
    addiu	$t2,$a6,1
    sh	$t1,0($sp)
    sh	$t2,4($sp)
.L01640794:
    sh	$a7,6($sp)
    sh	$s5,2($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    addiu	$a0,$sp,0
    ld	$a4,152($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,144($sp)
.L016407bc:
    ld	$t3,32($sp)
    ld	$a6,16($sp)
    addu	$t9,$s8,$s5
    beqz	$t3,.L016409c0
    sd	$zero,64($sp)
    sd	$s3,200($sp)
    addu	$s3,$s8,$s5
    sd	$s3,24($sp)
    sd	$s7,184($sp)
    lw	$t8,364($sp)
    sd	$s2,192($sp)
    ld	$s2,56($sp)
    ld	$t9,112($sp)
    sd	$t9,120($sp)
    addu	$s2,$s2,$t8
    sd	$s2,160($sp)
    b	.L01640900
    addiu	$s2,$s3,1
.L01640804:
    subu	$s5,$s5,$t2
    addiu	$s5,$s5,1
    dsll32	$s8,$s5,0x10
    dsra32	$s8,$s8,0x10
    addu	$a6,$s5,$t2
    sh	$s6,0($sp)
    dsll32	$a6,$a6,0x10
    sh	$a7,4($sp)
    dsra32	$a6,$a6,0x10
    sh	$s5,2($sp)
    addiu	$t1,$s8,1
    sh	$a6,6($sp)
    beq	$s8,$a6,.L0164087c
    addiu	$t0,$a6,1
    slt	$t8,$a6,$s8
    beqz	$t8,.L01640850
    sd	$t3,272($sp)
    sh	$t0,2($sp)
    sh	$t1,6($sp)
.L01640850:
    sh	$a7,4($sp)
    sh	$s6,0($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    addiu	$a0,$sp,0
    ld	$a4,152($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,144($sp)
    ld	$t3,272($sp)
.L0164087c:
    ld	$t9,32($sp)
    addu	$t8,$t3,$s6
    beqz	$t9,.L01640b68
    move	$a7,$zero
    sd	$s2,192($sp)
    addu	$s2,$t3,$s6
    sd	$s2,48($sp)
    sd	$s7,184($sp)
    sd	$s3,200($sp)
    ld	$v0,112($sp)
    lw	$at,364($sp)
    ld	$ra,56($sp)
    sd	$v0,120($sp)
    addiu	$s3,$s2,1
    addu	$ra,$ra,$at
    b	.L01640ad8
    sd	$ra,160($sp)
.L016408c0:
    move	$a6,$s5
    addu	$s3,$s3,$s8
    ld	$t8,64($sp)
    addu	$s2,$s2,$s8
    ld	$a0,176($sp)
    subu	$s4,$s4,$s6
    ld	$v1,160($sp)
    negu	$a1,$s7
    addiu	$s4,$s4,-1
    and	$a1,$s0,$a1
    slt	$a0,$a0,$s4
    addiu	$t8,$t8,1
    addu	$v1,$v1,$a1
    sd	$t8,64($sp)
    beqz	$a0,.L016409d0
    addu	$s1,$s1,$v1
.L01640900:
    ld	$s6,168($sp)
    slti	$s7,$s1,0
    addu	$s6,$s7,$s6
    dsll32	$a7,$a6,0x10
    addu	$s5,$s6,$a6
    dsra32	$a7,$a7,0x10
    addiu	$s5,$s5,1
    sh	$a6,0($sp)
    dsll32	$t0,$s5,0x10
    sh	$s3,2($sp)
    dsra32	$t0,$t0,0x10
    sh	$s2,6($sp)
    beq	$a7,$t0,.L016408c0
    sh	$t0,4($sp)
    slt	$t8,$t0,$a7
    addiu	$t1,$a7,1
    beqz	$t8,.L01640950
    addiu	$a6,$t0,1
    sh	$a6,0($sp)
    sh	$t1,4($sp)
.L01640950:
    sh	$s2,6($sp)
    sh	$s3,2($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,120($sp)
    addiu	$a0,$sp,0
    ld	$a4,152($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,144($sp)
    move	$a6,$s5
    addu	$s3,$s3,$s8
    ld	$t8,64($sp)
    addu	$s2,$s2,$s8
    ld	$ra,176($sp)
    subu	$s4,$s4,$s6
    ld	$t9,160($sp)
    negu	$at,$s7
    addiu	$s4,$s4,-1
    and	$at,$s0,$at
    slt	$ra,$ra,$s4
    addiu	$t8,$t8,1
    addu	$t9,$t9,$at
    sd	$t8,64($sp)
    bnez	$ra,.L01640900
    addu	$s1,$s1,$t9
    b	.L016409d4
    ld	$t0,64($sp)
.L016409c0:
    sd	$t9,24($sp)
    sd	$s7,184($sp)
    sd	$s3,200($sp)
    sd	$s2,192($sp)
.L016409d0:
    ld	$t0,64($sp)
.L016409d4:
    mult	$t0,$s8
    dsll32	$a7,$a6,0x10
    sh	$a6,0($sp)
    dsra32	$a7,$a7,0x10
    addu	$t0,$a6,$s4
    addiu	$t1,$a7,1
    ld	$s3,24($sp)
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,4($sp)
    mflo	$t8
    addiu	$t2,$t0,1
    addu	$s3,$s3,$t8
    sh	$s3,2($sp)
    addiu	$s2,$s3,1
    beq	$a7,$t0,.L01640714
    sh	$s2,6($sp)
    slt	$t3,$t0,$a7
    beqz	$t3,.L01640a2c
    nop
    sh	$t2,0($sp)
    sh	$t1,4($sp)
.L01640a2c:
    sh	$s3,2($sp)
    sh	$s2,6($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    li	$a1,1
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$a5,144($sp)
    b	.L01640718
    ld	$s0,264($sp)
.L01640a5c:
    slt	$t8,$a6,$s8
    addiu	$t1,$s8,1
    bnez	$t8,.L01640b54
    addiu	$t0,$a6,1
.L01640a6c:
    sd	$a7,240($sp)
    sd	$t3,272($sp)
    sh	$s3,4($sp)
    sh	$s2,0($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,120($sp)
    addiu	$a0,$sp,0
    ld	$a4,152($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,144($sp)
    ld	$t3,272($sp)
    ld	$a7,240($sp)
    addu	$s3,$s3,$t3
    addu	$s2,$s2,$t3
    ld	$ra,176($sp)
    subu	$s4,$s4,$s6
    ld	$t9,160($sp)
    negu	$at,$s7
    addiu	$s4,$s4,-1
    and	$at,$s0,$at
    slt	$ra,$ra,$s4
    addiu	$a7,$a7,1
    addu	$t9,$t9,$at
    beqz	$ra,.L01640b78
    addu	$s1,$s1,$t9
.L01640ad8:
    ld	$s6,168($sp)
    slti	$s7,$s1,0
    addu	$s6,$s7,$s6
    subu	$s5,$s5,$s6
    addiu	$s5,$s5,-1
    dsll32	$s8,$s5,0x10
    addu	$a6,$s6,$s5
    dsra32	$s8,$s8,0x10
    addiu	$a6,$a6,1
    sh	$s2,0($sp)
    dsll32	$a6,$a6,0x10
    sh	$s3,4($sp)
    dsra32	$a6,$a6,0x10
    sh	$s5,2($sp)
    bne	$s8,$a6,.L01640a5c
    sh	$a6,6($sp)
    addu	$s3,$s3,$t3
    addu	$s2,$s2,$t3
    ld	$t9,176($sp)
    subu	$s4,$s4,$s6
    ld	$t8,160($sp)
    negu	$ra,$s7
    addiu	$s4,$s4,-1
    and	$ra,$s0,$ra
    slt	$t9,$t9,$s4
    addiu	$a7,$a7,1
    addu	$t8,$t8,$ra
    bnez	$t9,.L01640ad8
    addu	$s1,$s1,$t8
    b	.L01640b78
    nop
.L01640b54:
    sh	$t0,2($sp)
    sh	$t1,6($sp)
    sd	$a7,240($sp)
    b	.L01640a6c
    sd	$t3,272($sp)
.L01640b68:
    sd	$t8,48($sp)
    sd	$s7,184($sp)
    sd	$s3,200($sp)
    sd	$s2,192($sp)
.L01640b78:
    mult	$a7,$t3
    ld	$s2,48($sp)
    subu	$t0,$s5,$s4
    addiu	$t1,$s5,1
    sh	$t0,2($sp)
    dsll32	$t0,$t0,0x10
    sh	$s5,6($sp)
    dsra32	$t0,$t0,0x10
    mflo	$s3
    addiu	$t2,$t0,1
    addu	$s2,$s2,$s3
    sh	$s2,0($sp)
    addiu	$s3,$s2,1
    beq	$s8,$t0,.L01640714
    sh	$s3,4($sp)
    slt	$t3,$s8,$t0
    beqz	$t3,.L01640bc8
    nop
    sh	$t1,2($sp)
    sh	$t2,6($sp)
.L01640bc8:
    sh	$s2,0($sp)
    sh	$s3,4($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    li	$a1,1
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$a5,144($sp)
    b	.L01640718
    ld	$s0,264($sp)
.L01640bf8:
    move	$t0,$zero
    lw	$s0,356($sp)
    move	$t1,$zero
    b	.L01640438
    sd	$s4,248($sp)
.L01640c0c:
    sh	$s5,2($sp)
    subu	$s6,$s6,$t2
    sh	$a7,6($sp)
    addiu	$s6,$s6,1
    sd	$s3,200($sp)
    dsll32	$a6,$s6,0x10
    sd	$s2,192($sp)
    dsra32	$a6,$a6,0x10
    addu	$t0,$s6,$t2
    sd	$s6,208($sp)
    dsll32	$t0,$t0,0x10
    sh	$s6,0($sp)
    dsra32	$t0,$t0,0x10
    sd	$a6,8($sp)
    beq	$a6,$t0,.L01640c94
    sh	$t0,4($sp)
    slt	$t8,$t0,$a6
    beqz	$t8,.L01640c6c
    sd	$a6,8($sp)
    ld	$ra,8($sp)
    addiu	$t9,$t0,1
    sh	$t9,0($sp)
    addiu	$ra,$ra,1
    sh	$ra,4($sp)
.L01640c6c:
    sh	$s5,2($sp)
    sh	$a7,6($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    li	$a1,1
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$a5,144($sp)
.L01640c94:
    ld	$at,32($sp)
    ld	$a7,208($sp)
    beqz	$at,.L01640de4
    move	$a6,$zero
    addu	$v0,$s8,$s5
    sd	$v0,24($sp)
    sd	$s7,184($sp)
    ld	$a1,112($sp)
    sd	$a1,120($sp)
    lw	$a0,364($sp)
    ld	$v1,56($sp)
    sd	$v0,224($sp)
    addu	$v1,$v1,$a0
    sd	$v1,160($sp)
    addiu	$s3,$v0,1
    b	.L01640d10
    ld	$s5,224($sp)
.L01640cd8:
    addu	$s3,$s3,$s8
    addiu	$a6,$a6,1
    ld	$a3,176($sp)
    subu	$s4,$s4,$s6
    ld	$a2,160($sp)
    negu	$a4,$s7
    addiu	$s4,$s4,-1
    and	$a4,$s0,$a4
    slt	$a3,$a3,$s4
    addu	$s5,$s5,$s8
    addu	$a2,$a2,$a4
    sd	$s5,224($sp)
    beqz	$a3,.L01640df4
    addu	$s1,$s1,$a2
.L01640d10:
    ld	$s6,168($sp)
    slti	$s7,$s1,0
    addu	$s6,$s7,$s6
    subu	$a7,$a7,$s6
    addiu	$a7,$a7,-1
    dsll32	$s2,$a7,0x10
    addu	$t0,$s6,$a7
    dsra32	$s2,$s2,0x10
    addiu	$t0,$t0,1
    sh	$s5,2($sp)
    dsll32	$t0,$t0,0x10
    sh	$s3,6($sp)
    dsra32	$t0,$t0,0x10
    sh	$a7,0($sp)
    beq	$s2,$t0,.L01640cd8
    sh	$t0,4($sp)
    slt	$t8,$t0,$s2
    addiu	$t2,$s2,1
    beqz	$t8,.L01640d70
    addiu	$t1,$t0,1
    sh	$t1,0($sp)
    sh	$t2,4($sp)
    sd	$a7,208($sp)
    sd	$a6,216($sp)
.L01640d70:
    sd	$a7,208($sp)
    sd	$a6,216($sp)
    sh	$s3,6($sp)
    sh	$s5,2($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,120($sp)
    addiu	$a0,$sp,0
    ld	$a4,152($sp)
    li	$a1,1
    jalr	$t9
    ld	$a5,144($sp)
    addu	$s3,$s3,$s8
    ld	$a6,216($sp)
    addu	$s5,$s5,$s8
    ld	$ra,176($sp)
    subu	$s4,$s4,$s6
    ld	$t9,160($sp)
    negu	$at,$s7
    addiu	$s4,$s4,-1
    and	$at,$s0,$at
    slt	$ra,$ra,$s4
    addiu	$a6,$a6,1
    addu	$t9,$t9,$at
    ld	$a7,208($sp)
    bnez	$ra,.L01640d10
    addu	$s1,$s1,$t9
    b	.L01640df4
    sd	$s5,224($sp)
.L01640de4:
    ld	$s2,8($sp)
    addu	$t8,$s8,$s5
    sd	$t8,24($sp)
    sd	$s7,184($sp)
.L01640df4:
    mult	$a6,$s8
    sh	$a7,4($sp)
    subu	$t8,$a7,$s4
    ld	$t1,24($sp)
    dsll32	$t3,$t8,0x10
    sh	$t8,0($sp)
    dsra32	$t3,$t3,0x10
    mflo	$t2
    addu	$t1,$t1,$t2
    sh	$t1,2($sp)
    addiu	$t2,$t1,1
    beq	$s2,$t3,.L01640714
    sh	$t2,6($sp)
    slt	$t9,$s2,$t3
    beqz	$t9,.L01640e40
    addiu	$at,$t3,1
    sh	$at,4($sp)
    addiu	$ra,$a7,1
    sh	$ra,0($sp)
.L01640e40:
    sh	$t1,2($sp)
    sh	$t2,6($sp)
    ld	$a2,128($sp)
    ld	$t9,136($sp)
    ld	$a3,112($sp)
    li	$a1,1
    ld	$a4,152($sp)
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$a5,144($sp)
    b	.L01640718
    ld	$s0,264($sp)

glabel nfb2MaskRopLoop__CI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0164da60
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0164d9c8
    sra	$at,$t0,0x2
.L0164d990:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    nor	$t9,$t3,$zero
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    and	$t8,$t8,$t9
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0164d990
    sw	$t3,-4($a1)
.L0164d9c8:
    beqz	$at,.L0164da60
    nop
.L0164d9d0:
    lw	$t9,0($a1)
    lw	$at,0($a0)
    nor	$v0,$t9,$zero
    and	$at,$at,$v0
    lw	$t2,4($a1)
    and	$t9,$a5,$t9
    and	$at,$a3,$at
    or	$t9,$t9,$at
    sw	$t9,0($a1)
    lw	$t3,4($a0)
    nor	$t8,$t2,$zero
    and	$t3,$t3,$t8
    lw	$a7,8($a1)
    and	$t2,$a5,$t2
    and	$t3,$a3,$t3
    or	$t2,$t2,$t3
    sw	$t2,4($a1)
    lw	$t0,8($a0)
    nor	$t1,$a7,$zero
    and	$t0,$t0,$t1
    lw	$v0,12($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    nor	$a6,$v0,$zero
    sltu	$v1,$a1,$a2
    and	$a4,$a4,$a6
    and	$v0,$a5,$v0
    and	$a4,$a3,$a4
    or	$v0,$v0,$a4
    bnez	$v1,.L0164d9d0
    sw	$v0,-4($a1)
.L0164da60:
    jr	$ra
    nop

glabel nfb0MaskRopLoop__AI
    addiu	$sp,$sp,-160
    move	$t3,$a1
    move	$a7,$a2
    subu	$t1,$a2,$a1
    sltu	$at,$a1,$a2
    addiu	$t0,$a2,-64
    addiu	$a6,$t1,3
    beqz	$at,.L016541e4
    addiu	$a5,$t1,6
    slt	$v0,$a6,$zero
    movz	$a5,$a6,$v0
    sra	$a2,$a5,0x2
    andi	$a4,$a2,0x7
    sd	$s8,136($sp)
    nor	$s8,$a3,$zero
    beqz	$a4,.L01653e70
    sra	$a0,$a2,0x3
.L01653e54:
    lw	$v1,0($t3)
    addiu	$t3,$t3,4
    addiu	$a4,$a4,-1
    pref	0x1,252($t3)
    and	$v1,$v1,$s8
    bnez	$a4,.L01653e54
    sw	$v1,-4($t3)
.L01653e70:
    addiu	$t1,$t3,64
    sltu	$a3,$t1,$a7
    beqz	$a0,.L016541e0
    sltu	$a4,$t1,$t3
    beqz	$a3,.L01654350
    nop
    bnez	$a4,.L01654350
    move	$t9,$s8
    sd	$s6,80($sp)
    sd	$s7,96($sp)
    lw	$a6,52($t3)
    lw	$a3,56($t3)
    lw	$a5,60($t3)
    lw	$a0,0($t3)
    lw	$a1,8($t3)
    lw	$at,24($t3)
    lw	$a7,28($t3)
    lw	$t8,16($t3)
    lw	$a4,20($t3)
    lw	$v1,4($t3)
    lw	$v0,12($t3)
    sd	$s0,88($sp)
    move	$s0,$t0
    sd	$s1,64($sp)
    sltu	$s1,$t1,$t0
    addiu	$t2,$t3,32
    sd	$s4,72($sp)
    move	$s4,$s1
    sltu	$a2,$t2,$t0
    pref	0x1,256($t3)
    move	$t0,$t1
    move	$t1,$t3
    sd	$s3,112($sp)
    move	$s3,$a2
    move	$t3,$t0
    sd	$s2,120($sp)
    and	$a1,$a1,$s8
    and	$at,$at,$s8
    sd	$s5,128($sp)
    and	$a7,$a7,$s8
    and	$t8,$t8,$s8
    sd	$ra,104($sp)
    move	$t0,$a4
    move	$ra,$t8
.L01653f20:
    sw	$a1,8($t1)
    sw	$ra,16($t1)
    lw	$s6,16($t2)
    lw	$a1,12($t2)
    lw	$s7,8($t2)
    lw	$a2,4($t2)
    lw	$a4,0($t2)
    sw	$at,24($t1)
    sw	$a7,28($t1)
    lw	$s1,28($t3)
    addiu	$t8,$t3,32
    lw	$s5,24($t3)
    and	$s2,$a5,$t9
    sltu	$ra,$t8,$s0
    lw	$a7,20($t3)
    and	$at,$t0,$t9
    sw	$at,20($t1)
    and	$at,$a3,$t9
    and	$v0,$v0,$t9
    sw	$v0,12($t1)
    and	$a3,$s6,$t9
    and	$v0,$v1,$t9
    sw	$v0,4($t1)
    and	$v1,$s7,$t9
    and	$v0,$a0,$t9
    beqz	$s3,.L016542dc
    sw	$v0,0($t1)
    sw	$v1,8($t2)
    sw	$a3,16($t2)
    lw	$v0,16($t3)
    lw	$a5,12($t3)
    lw	$s6,8($t3)
    lw	$v1,4($t3)
    lw	$a0,0($t3)
    sw	$at,24($t2)
    sw	$s2,28($t2)
    lw	$t0,60($t3)
    addiu	$t1,$t3,64
    lw	$a3,56($t3)
    and	$s3,$s1,$t9
    sltu	$s1,$t1,$s0
    lw	$s2,52($t3)
    and	$at,$a6,$t9
    sw	$at,20($t2)
    and	$at,$s5,$t9
    and	$a1,$a1,$t9
    sw	$a1,12($t2)
    and	$a6,$v0,$t9
    and	$v0,$a2,$t9
    sw	$v0,4($t2)
    and	$a1,$s6,$t9
    and	$v0,$a4,$t9
    beqz	$s4,.L016541ec
    sw	$v0,0($t2)
    sw	$a1,8($t3)
    sw	$a6,16($t3)
    lw	$v0,48($t3)
    lw	$a1,44($t3)
    lw	$s6,40($t3)
    lw	$a2,36($t3)
    lw	$a4,32($t3)
    sw	$at,24($t3)
    sw	$s3,28($t3)
    pref	0x1,256($t1)
    lw	$a6,92($t3)
    addiu	$t2,$t3,96
    lw	$s5,88($t3)
    and	$s4,$t0,$t9
    sltu	$s3,$t2,$s0
    lw	$t0,84($t3)
    and	$at,$a7,$t9
    sw	$at,20($t3)
    and	$at,$a3,$t9
    and	$a3,$a5,$t9
    sw	$a3,12($t3)
    and	$a3,$v0,$t9
    and	$v0,$v1,$t9
    sw	$v0,4($t3)
    and	$v1,$s6,$t9
    and	$v0,$a0,$t9
    beqz	$ra,.L01654264
    sw	$v0,0($t3)
    sw	$v1,8($t8)
    sw	$a3,16($t8)
    lw	$ra,80($t3)
    lw	$v0,76($t3)
    lw	$s6,72($t3)
    lw	$v1,68($t3)
    lw	$a0,0($t1)
    sw	$at,24($t8)
    sw	$s4,28($t8)
    lw	$a5,124($t3)
    addiu	$t3,$t3,128
    lw	$a3,24($t2)
    and	$a7,$a6,$t9
    sltu	$s4,$t3,$s0
    lw	$a6,20($t2)
    and	$at,$s2,$t9
    sw	$at,20($t8)
    and	$at,$s5,$t9
    and	$a1,$a1,$t9
    sw	$a1,12($t8)
    and	$ra,$ra,$t9
    and	$a1,$a2,$t9
    sw	$a1,4($t8)
    and	$a1,$s6,$t9
    and	$a2,$a4,$t9
    bnez	$s1,.L01653f20
    sw	$a2,0($t8)
    ld	$s5,128($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    move	$a2,$a5
    move	$a5,$a3
    move	$a3,$ra
    ld	$ra,104($sp)
    ld	$s7,96($sp)
    ld	$s6,80($sp)
    ld	$s4,72($sp)
    ld	$s1,64($sp)
    move	$s0,$at
    move	$a4,$a7
    move	$a7,$t0
    move	$t0,$s0
    ld	$s0,88($sp)
    sd	$a4,16($sp)
    move	$t8,$t2
    sd	$t8,0($sp)
    sd	$a2,24($sp)
    move	$t3,$t1
    sd	$t3,8($sp)
    ld	$t3,24($sp)
    ld	$t8,16($sp)
    move	$t2,$v0
    move	$t9,$v1
    ld	$a2,8($sp)
    move	$t1,$a6
    move	$a6,$a0
    ld	$a4,0($sp)
.L0165414c:
    sw	$a3,16($a2)
    sw	$a1,8($a2)
    sd	$s0,144($sp)
    lw	$s0,0($a4)
    sd	$s1,152($sp)
    lw	$s1,4($a4)
    lw	$v1,8($a4)
    lw	$at,12($a4)
    lw	$v0,16($a4)
    sw	$t8,28($a2)
    sw	$t0,24($a2)
    and	$a0,$a7,$s8
    sw	$a0,20($a2)
    and	$a0,$t2,$s8
    sw	$a0,12($a2)
    and	$a0,$t9,$s8
    sw	$a0,4($a2)
    and	$a0,$a6,$s8
    sw	$a0,0($a2)
    and	$a0,$a5,$s8
    sw	$a0,24($a4)
    and	$a0,$t3,$s8
    sw	$a0,28($a4)
    and	$a0,$t1,$s8
    sw	$a0,20($a4)
    and	$v1,$v1,$s8
    sw	$v1,8($a4)
    and	$v0,$v0,$s8
    sw	$v0,16($a4)
    and	$at,$at,$s8
    sw	$at,12($a4)
    and	$s0,$s0,$s8
    sw	$s0,0($a4)
    ld	$s0,144($sp)
    and	$s1,$s1,$s8
    sw	$s1,4($a4)
    ld	$s1,152($sp)
.L016541e0:
    ld	$s8,136($sp)
.L016541e4:
    jr	$ra
    addiu	$sp,$sp,160
.L016541ec:
    ld	$s5,128($sp)
    move	$a2,$s2
    ld	$s2,120($sp)
    move	$t1,$t8
    move	$t8,$s3
    ld	$s3,112($sp)
    ld	$ra,104($sp)
    ld	$s7,96($sp)
    ld	$s0,88($sp)
    ld	$s6,80($sp)
    ld	$s4,72($sp)
    ld	$s1,64($sp)
    move	$v0,$t3
    sd	$v0,8($sp)
    move	$a4,$at
    sd	$a4,32($sp)
    sd	$a2,48($sp)
    sd	$t1,0($sp)
    move	$t3,$t0
    move	$t0,$a3
    ld	$t1,48($sp)
    move	$t2,$a5
    move	$a5,$t0
    ld	$t0,32($sp)
    move	$t9,$v1
    move	$a3,$a6
    ld	$a2,8($sp)
    move	$a6,$a0
    b	.L0165414c
    ld	$a4,0($sp)
.L01654264:
    move	$a0,$s5
    ld	$s5,128($sp)
    move	$v0,$s2
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,104($sp)
    ld	$s7,96($sp)
    ld	$s6,80($sp)
    move	$s0,$t8
    move	$t8,$s4
    ld	$s4,72($sp)
    ld	$s1,64($sp)
    move	$t9,$a2
    move	$a2,$s0
    ld	$s0,88($sp)
    sd	$a0,40($sp)
    move	$t3,$a6
    sd	$v0,56($sp)
    move	$a7,$t1
    move	$a5,$at
    sd	$a5,32($sp)
    move	$a6,$a4
    move	$a4,$a7
    ld	$a7,56($sp)
    move	$t2,$a1
    move	$a1,$v1
    ld	$a5,40($sp)
    move	$t1,$t0
    b	.L0165414c
    ld	$t0,32($sp)
.L016542dc:
    move	$v0,$s5
    ld	$s5,128($sp)
    move	$t8,$s2
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,104($sp)
    ld	$s7,96($sp)
    ld	$s6,80($sp)
    ld	$s4,72($sp)
    move	$a5,$t3
    move	$t3,$s1
    ld	$s1,64($sp)
    move	$t1,$a7
    move	$s0,$a6
    move	$t0,$t2
    move	$a7,$s0
    ld	$s0,88($sp)
    move	$t2,$a1
    move	$a1,$v1
    sd	$v0,40($sp)
    move	$t9,$a2
    move	$a0,$at
    sd	$a0,32($sp)
    move	$a6,$a4
    move	$a4,$a5
    ld	$a5,40($sp)
    move	$a2,$t0
    b	.L0165414c
    ld	$t0,32($sp)
.L01654350:
    lw	$a3,28($t3)
    lw	$a2,24($t3)
    lw	$a1,20($t3)
    lw	$a0,16($t3)
    lw	$v1,12($t3)
    lw	$v0,8($t3)
    lw	$at,4($t3)
    lw	$t8,0($t3)
    addiu	$t3,$t3,32
    and	$a3,$a3,$s8
    sw	$a3,-4($t3)
    and	$a2,$a2,$s8
    sw	$a2,-8($t3)
    and	$a1,$a1,$s8
    sw	$a1,-12($t3)
    and	$a0,$a0,$s8
    sw	$a0,-16($t3)
    and	$v1,$v1,$s8
    sw	$v1,-20($t3)
    sltu	$t9,$t3,$a7
    and	$v0,$v0,$s8
    sw	$v0,-24($t3)
    and	$at,$at,$s8
    sw	$at,-28($t3)
    and	$t8,$t8,$s8
    beqz	$t9,.L016541e0
    sw	$t8,-32($t3)
    b	.L01654350
    nop

glabel nfb4MaskRopLoop__EI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L01655020
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L01654f88
    sra	$t9,$t0,0x2
.L01654f50:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    nor	$t8,$t8,$zero
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    and	$t8,$t3,$t8
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L01654f50
    sw	$t3,-4($a1)
.L01654f88:
    beqz	$t9,.L01655020
    nop
.L01654f90:
    lw	$t2,0($a0)
    lw	$t1,0($a1)
    nor	$t2,$t2,$zero
    and	$t2,$t1,$t2
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    lw	$a7,4($a1)
    nor	$t0,$t0,$zero
    and	$t0,$a7,$t0
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    lw	$a4,8($a1)
    nor	$a6,$a6,$zero
    and	$a6,$a4,$a6
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    lw	$at,12($a1)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    nor	$v1,$v1,$zero
    sltu	$v0,$a1,$a2
    and	$v1,$at,$v1
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L01654f90
    sw	$at,-4($a1)
.L01655020:
    jr	$ra
    nop

glabel nfbSetStereoBuffer
    addiu	$sp,$sp,-48
    lui	$a7,0xe
    sd	$ra,40($sp)
    addiu	$a7,$a7,21456
    sd	$gp,32($sp)
    addu	$gp,$t9,$a7
    lw	$a6,-5736($gp)
    lw	$a5,132($a1)
    lw	$a7,436($a0)
    sll	$a6,$a6,0x2
    la	$t1,rrmScreenPrivateIndex
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    lw	$a4,0($t1)
    lw	$t0,52($a5)
    sd	$s0,24($sp)
    sll	$a4,$a4,0x2
    lw	$a6,116($a0)
    addu	$a7,$a7,$a4
    move	$s0,$a1
    beq	$t0,$a2,.L01655740
    lw	$a7,0($a7)
    lw	$t2,220($a6)
    beqz	$t2,.L01655744
    ld	$ra,40($sp)
    lw	$t3,4($a7)
    beqz	$t3,.L01655664
    sd	$a0,8($sp)
    beqz	$t0,.L01655784
.L01655664:
    move	$t0,$zero
.L01655668:
    beqz	$a2,.L01655740
    sw	$a2,52($a5)
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    lw	$a1,132($s0)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    beqz	$a1,.L01655744
    ld	$ra,40($sp)
    lhu	$a3,0($a1)
    andi	$a3,$a3,0x1
    beqz	$a3,.L016557cc
    ld	$ra,40($sp)
    lw	$t1,56($a5)
    beqz	$t1,.L0165578c
    nop
.L016556ac:
    lbu	$t2,4($a1)
    andi	$t2,$t2,0x2
    beqz	$t2,.L01655744
    ld	$ra,40($sp)
    beqz	$t0,.L016557b0
    nop
.L016556c4:
    lw	$a6,16($s0)
    lw	$a5,436($a6)
    lw	$a2,24($a1)
    addu	$a5,$a5,$a4
    lw	$a5,0($a5)
    sll	$t0,$a2,0x3
    subu	$t0,$t0,$a2
    lw	$a7,148($a5)
    sll	$t0,$t0,0x2
    beqz	$a2,.L016556fc
    addu	$a7,$a7,$t0
    lw	$t0,4($a5)
    bne	$a2,$t0,.L01655754
    sd	$a6,16($sp)
.L016556fc:
    sw	$zero,24($a1)
    lw	$t9,-31512($gp)
.L01655704:
    jalr	$t9
    move	$a0,$s0
    lw	$t9,-31308($gp)
    jalr	$t9
    move	$a0,$s0
    la	$a4,rrmScreenPrivateIndex
    lw	$a4,0($a4)
    sll	$a4,$a4,0x2
.L01655724:
    ld	$t9,8($sp)
.L01655728:
    lw	$t9,436($t9)
    addu	$t9,$t9,$a4
    lw	$t9,0($t9)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$s0
.L01655740:
    ld	$ra,40($sp)
.L01655744:
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L01655754:
    lw	$t9,76($a5)
    move	$a2,$zero
    move	$a0,$s0
    addiu	$a1,$a7,16
    jalr	$t9
    sd	$a1,0($sp)
    ld	$t9,16($sp)
    lw	$t9,392($t9)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L01655704
    lw	$t9,-31512($gp)
.L01655784:
    b	.L01655668
    li	$t0,1
.L0165578c:
    lw	$ra,220($a6)
    li	$a1,1
    beq	$a1,$ra,.L016557e0
    li	$a3,2
    sw	$a1,56($a5)
.L016557a0:
    lw	$a1,132($s0)
    addu	$a1,$a1,$a2
    b	.L016556ac
    lw	$a1,0($a1)
.L016557b0:
    lw	$a2,8($a7)
    bnez	$a2,.L01655724
    lw	$a2,4($a7)
    bnez	$a2,.L016556c4
    nop
    b	.L01655728
    ld	$t9,8($sp)
.L016557cc:
    sw	$zero,52($a5)
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L016557e0:
    b	.L016557a0
    sw	$a3,56($a5)

glabel nfb2RopLoop__CH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L01655f30
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L01655ec8
    sra	$a3,$t0,0x2
.L01655e9c:
    lw	$v1,0($a1)
    lw	$v0,0($a0)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    bnez	$a4,.L01655e9c
    sw	$v0,-4($a1)
.L01655ec8:
    beqz	$a3,.L01655f30
    nop
.L01655ed0:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    nor	$a6,$a6,$zero
    and	$a4,$a4,$a6
    bnez	$a5,.L01655ed0
    sw	$a4,-4($a1)
.L01655f30:
    jr	$ra
    nop

glabel nfb5RopLoop__FH
    jr	$ra
    nop

glabel nfb6MaskRopLoop__GI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0165a120
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0165a094
    sra	$t9,$t0,0x2
.L0165a060:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    xor	$t8,$t8,$t3
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0165a060
    sw	$t3,-4($a1)
.L0165a094:
    beqz	$t9,.L0165a120
    nop
    nop
.L0165a0a0:
    lw	$t1,0($a1)
    lw	$t2,0($a0)
    xor	$t2,$t2,$t1
    lw	$a7,4($a1)
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    xor	$t0,$t0,$a7
    lw	$a4,8($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    xor	$a6,$a6,$a4
    lw	$at,12($a1)
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    sltu	$v0,$a1,$a2
    xor	$v1,$v1,$at
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L0165a0a0
    sw	$at,-4($a1)
.L0165a120:
    jr	$ra
    nop

glabel nfbStereoPolyGlyphBlt
    lw	$a7,72($a1)
    addiu	$sp,$sp,-112
    sd	$a7,64($sp)
    sd	$s8,32($sp)
    sd	$s7,24($sp)
    lw	$s7,16($a0)
    sd	$s0,80($sp)
    sd	$s2,0($sp)
    lui	$s2,0xe
    sd	$s1,72($sp)
    addiu	$s2,$s2,-15792
    sd	$gp,88($sp)
    addu	$gp,$t9,$s2
    lw	$s1,-6768($gp)
    lw	$s0,76($a1)
    sd	$s6,16($sp)
    sll	$s1,$s1,0x2
    lw	$s7,116($s7)
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    lhu	$s7,226($s7)
    lw	$t8,8($s0)
    lw	$v1,92($s0)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s0)
    lw	$v0,16($a0)
    sd	$s3,8($sp)
    lw	$v0,116($v0)
    sd	$s5,40($sp)
    move	$s5,$a3
    move	$s3,$a4
    lw	$v0,220($v0)
    move	$s6,$a5
    move	$s8,$a6
    sd	$s4,48($sp)
    move	$s4,$a0
    sd	$ra,96($sp)
    move	$s2,$a2
    move	$s1,$a1
    beq	$at,$v0,.L0165e8d8
    sd	$t8,56($sp)
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    addu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,72($t9)
    jalr	$t9
    nop
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($s4)
    subu	$at,$at,$s7
    sh	$at,10($s4)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    move	$a6,$s8
    move	$a5,$s6
    lw	$t9,72($t9)
    move	$a4,$s3
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s4
    ld	$s2,0($sp)
.L0165e894:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s7,24($sp)
    ld	$s8,32($sp)
    ld	$s5,40($sp)
    ld	$s4,48($sp)
    ld	$gp,88($sp)
    ld	$v1,64($sp)
    ld	$a0,56($sp)
    sw	$a0,8($s0)
    sw	$v1,72($s1)
    ld	$ra,96($sp)
    sw	$zero,104($s0)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0165e8d8:
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    subu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,72($t9)
    jalr	$t9
    nop
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($s4)
    addu	$at,$at,$s7
    sh	$at,10($s4)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    move	$a6,$s8
    move	$a5,$s6
    lw	$t9,72($t9)
    move	$a4,$s3
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s4
    b	.L0165e894
    ld	$s2,0($sp)

glabel nfb8MaskRopLoop__II
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0165ee90
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0165ee04
    sra	$t9,$t0,0x2
.L0165edd0:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    nor	$t8,$t8,$t3
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0165edd0
    sw	$t3,-4($a1)
.L0165ee04:
    beqz	$t9,.L0165ee90
    nop
    nop
.L0165ee10:
    lw	$t1,0($a1)
    lw	$t2,0($a0)
    nor	$t2,$t2,$t1
    lw	$a7,4($a1)
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    nor	$t0,$t0,$a7
    lw	$a4,8($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    nor	$a6,$a6,$a4
    lw	$at,12($a1)
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    sltu	$v0,$a1,$a2
    nor	$v1,$v1,$at
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L0165ee10
    sw	$at,-4($a1)
.L0165ee90:
    jr	$ra
    nop

glabel nfbStereoImageText8
    lw	$a6,72($a1)
    addiu	$sp,$sp,-96
    sd	$a6,56($sp)
    sd	$s4,24($sp)
    lw	$s4,16($a0)
    sd	$s1,80($sp)
    sd	$s3,8($sp)
    lui	$s3,0xd
    sd	$s2,0($sp)
    addiu	$s3,$s3,32688
    sd	$gp,72($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s5,32($sp)
    sll	$s2,$s2,0x2
    lw	$s4,116($s4)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lhu	$s4,226($s4)
    lw	$s5,8($s1)
    lw	$v1,92($s1)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s1)
    lw	$v0,16($a0)
    sd	$s7,40($sp)
    lw	$v0,116($v0)
    sd	$s0,64($sp)
    move	$s0,$a1
    lw	$v0,220($v0)
    move	$s7,$a2
    sd	$s6,16($sp)
    move	$s6,$a5
    sd	$ra,88($sp)
    move	$s3,$a3
    move	$s2,$a4
    sd	$s5,48($sp)
    beq	$at,$v0,.L01662b68
    move	$s5,$a0
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    addu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,60($t9)
    jalr	$t9
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    subu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,60($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    ld	$s2,0($sp)
.L01662b28:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s5,32($sp)
    ld	$s7,40($sp)
    ld	$gp,72($sp)
    ld	$v1,56($sp)
    ld	$a0,48($sp)
    sw	$a0,8($s1)
    sw	$v1,72($s0)
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    sw	$zero,104($s1)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L01662b68:
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($a0)
    subu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($a1)
    lw	$t9,60($t9)
    jalr	$t9
    nop
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s5)
    addu	$at,$at,$s4
    sh	$at,10($s5)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a5,$s6
    lw	$t9,60($t9)
    move	$a4,$s2
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s5
    b	.L01662b28
    ld	$s2,0($sp)

glabel nfbStereoPolySegment
    lw	$a4,72($a1)
    addiu	$sp,$sp,-96
    sd	$a4,48($sp)
    sll	$v1,$a2,0x3
    sd	$v1,56($sp)
    sd	$s3,88($sp)
    sd	$ra,40($sp)
    sd	$s6,0($sp)
    lw	$s6,16($a0)
    sd	$s1,16($sp)
    lw	$s6,116($s6)
    sd	$s2,80($sp)
    sd	$s5,8($sp)
    lui	$s5,0xd
    sd	$s4,64($sp)
    addiu	$s5,$s5,17584
    sd	$gp,72($sp)
    addu	$gp,$t9,$s5
    lw	$s4,-6768($gp)
    lw	$s2,76($a1)
    sd	$s0,24($sp)
    sll	$s4,$s4,0x2
    lhu	$s6,226($s6)
    addu	$s2,$s2,$s4
    lw	$s2,0($s2)
    lw	$t9,-28180($gp)
    lw	$v0,92($s2)
    li	$at,1
    lw	$t8,8($s2)
    move	$s0,$a2
    move	$s1,$a0
    sd	$t8,32($sp)
    move	$a0,$v1
    move	$s5,$a3
    sw	$v0,72($a1)
    move	$s4,$a1
    jalr	$t9
    sw	$at,104($s2)
    li	$a1,1
    andi	$a0,$s0,0x1
    ld	$t0,56($sp)
    blez	$s0,.L0166665c
    move	$s3,$v0
    move	$a7,$s5
    sra	$v0,$s0,0x1
    addu	$t0,$t0,$s5
    beqz	$a0,.L01666600
    move	$a6,$s3
    lh	$t8,6($s5)
    lh	$t3,4($s5)
    lh	$t2,2($s5)
    lh	$t1,0($s5)
    pref	0x1,256($s3)
    pref	0x0,256($s5)
    sh	$t8,6($s3)
    sh	$t3,4($s3)
    sh	$t2,2($s3)
    addiu	$a7,$s5,8
    addiu	$a6,$s3,8
    sh	$t1,0($s3)
.L01666600:
    beqz	$v0,.L0166665c
    nop
    nop
    nop
.L01666610:
    lh	$a3,6($a7)
    lh	$a2,4($a7)
    lh	$a0,2($a7)
    lh	$v1,0($a7)
    sh	$a3,6($a6)
    lh	$v0,14($a7)
    sh	$a2,4($a6)
    lh	$at,12($a7)
    sh	$a0,2($a6)
    lh	$ra,10($a7)
    sh	$v1,0($a6)
    lh	$t9,8($a7)
    addiu	$a6,$a6,16
    sh	$v0,-2($a6)
    addiu	$a7,$a7,16
    sh	$at,-4($a6)
    sh	$ra,-6($a6)
    bne	$a7,$t0,.L01666610
    sh	$t9,-8($a6)
.L0166665c:
    lw	$a4,16($s1)
    lw	$a4,116($a4)
    lw	$a4,220($a4)
    bne	$a1,$a4,.L016666f0
    nop
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,28($t9)
    move	$a3,$s3
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,28($t9)
    move	$a3,$s5
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    b	.L01666768
    nop
.L016666f0:
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,28($t9)
    move	$a3,$s3
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,28($t9)
    move	$a3,$s5
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
.L01666768:
    ld	$s6,0($sp)
    ld	$s5,8($sp)
    ld	$s1,16($sp)
    lw	$t9,-28196($gp)
    ld	$s0,24($sp)
    ld	$v1,32($sp)
    move	$a0,$s3
    jalr	$t9
    sw	$v1,8($s2)
    ld	$s3,88($sp)
    ld	$ra,40($sp)
    ld	$gp,72($sp)
    ld	$a0,48($sp)
    sw	$a0,72($s4)
    sw	$zero,104($s2)
    ld	$s2,80($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbStereoCopyArea
    lw	$t2,72($a2)
    addiu	$sp,$sp,-208
    sd	$s8,32($sp)
    sd	$s6,72($sp)
    sd	$s2,88($sp)
    sd	$s3,80($sp)
    sd	$s1,40($sp)
    lui	$t8,0xd
    sd	$s7,56($sp)
    addiu	$t8,$t8,10720
    sd	$gp,64($sp)
    addu	$gp,$t9,$t8
    lw	$s7,-6768($gp)
    move	$v0,$a6
    lw	$s1,76($a2)
    move	$s3,$a0
    sd	$s0,48($sp)
    sll	$s7,$s7,0x2
    move	$s0,$a1
    lbu	$at,0($a1)
    addu	$s1,$s1,$s7
    move	$s2,$a2
    li	$t8,1
    lw	$s1,0($s1)
    move	$s6,$a3
    move	$s8,$a7
    sd	$ra,96($sp)
    move	$s7,$a4
    beq	$t8,$at,.L016682e8
    lw	$t3,8($s1)
    sd	$s4,104($sp)
    lw	$s4,16($a1)
    lw	$s4,116($s4)
    lw	$ra,92($s1)
    lhu	$s4,226($s4)
    sw	$ra,72($a2)
    sw	$t8,104($s1)
    lw	$t9,16($a1)
    lw	$t9,116($t9)
    lw	$t9,220($t9)
    sd	$s5,120($sp)
    lw	$s5,212($sp)
    beq	$t8,$t9,.L016681d4
    lw	$a0,100($s1)
    lh	$t8,90($s1)
    sw	$a0,8($s1)
    addu	$t8,$t8,$s4
    bne	$s3,$a1,.L016680bc
    sh	$t8,90($s1)
    sd	$t3,112($sp)
    sd	$t2,128($sp)
    sd	$a5,24($sp)
    addu	$s5,$s4,$s5
    b	.L016680d8
    sd	$a6,16($sp)
.L016680bc:
    sd	$t3,112($sp)
    sd	$t2,128($sp)
    sd	$a5,24($sp)
    lh	$t9,10($a1)
    sd	$a6,16($sp)
    addu	$t9,$t9,$s4
    sh	$t9,10($a1)
.L016680d8:
    sw	$s5,4($sp)
    lw	$t9,72($s2)
    move	$a0,$s3
    lw	$t9,12($t9)
    move	$a1,$s0
    move	$a2,$s2
    move	$a3,$s6
    move	$a4,$s7
    ld	$a5,24($sp)
    ld	$a6,16($sp)
    jalr	$t9
    move	$a7,$s8
    bnez	$v0,.L016681bc
    nop
    lw	$ra,96($s1)
.L01668114:
    bne	$s3,$s0,.L01668124
    sw	$ra,8($s1)
    b	.L01668130
    subu	$s5,$s5,$s4
.L01668124:
    lh	$at,10($s0)
    subu	$at,$at,$s4
    sh	$at,10($s0)
.L01668130:
    lh	$ra,90($s1)
    subu	$ra,$ra,$s4
    sh	$ra,90($s1)
    sw	$s5,4($sp)
    lw	$t9,72($s2)
    move	$a7,$s8
    lw	$t9,12($t9)
    move	$a4,$s7
    move	$a3,$s6
    ld	$a6,16($sp)
    move	$a2,$s2
    move	$a1,$s0
    ld	$a5,24($sp)
    jalr	$t9
    move	$a0,$s3
    ld	$a0,128($sp)
    ld	$s5,120($sp)
    ld	$a2,112($sp)
    ld	$ra,96($sp)
    ld	$s4,104($sp)
    move	$a1,$v0
.L01668184:
    ld	$gp,64($sp)
    ld	$s0,48($sp)
    sw	$a2,8($s1)
    sw	$a0,72($s2)
    sw	$zero,104($s1)
    ld	$s1,40($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s6,72($sp)
    move	$v0,$a1
    ld	$s7,56($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L016681bc:
    lw	$t9,16($s0)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$v0
    b	.L01668114
    lw	$ra,96($s1)
.L016681d4:
    lw	$s5,212($sp)
    sd	$t3,112($sp)
    lw	$at,96($s1)
    lh	$ra,90($s1)
    sw	$at,8($s1)
    subu	$ra,$ra,$s4
    bne	$s3,$a1,.L01668208
    sh	$ra,90($s1)
    sd	$t2,128($sp)
    sd	$a5,24($sp)
    subu	$s5,$s5,$s4
    b	.L01668220
    sd	$a6,16($sp)
.L01668208:
    sd	$t2,128($sp)
    sd	$a5,24($sp)
    lh	$v1,10($a1)
    sd	$a6,16($sp)
    subu	$v1,$v1,$s4
    sh	$v1,10($a1)
.L01668220:
    sw	$s5,4($sp)
    lw	$t9,72($s2)
    move	$a0,$s3
    lw	$t9,12($t9)
    move	$a1,$s0
    move	$a2,$s2
    move	$a3,$s6
    move	$a4,$s7
    ld	$a5,24($sp)
    ld	$a6,16($sp)
    jalr	$t9
    move	$a7,$s8
    bnez	$v0,.L016682d0
    nop
    lw	$ra,100($s1)
.L0166825c:
    bne	$s3,$s0,.L0166826c
    sw	$ra,8($s1)
    b	.L01668278
    addu	$s5,$s4,$s5
.L0166826c:
    lh	$at,10($s0)
    addu	$at,$at,$s4
    sh	$at,10($s0)
.L01668278:
    lh	$ra,90($s1)
    addu	$ra,$ra,$s4
    sh	$ra,90($s1)
    sw	$s5,4($sp)
    lw	$t9,72($s2)
    move	$a7,$s8
    lw	$t9,12($t9)
    move	$a4,$s7
    move	$a3,$s6
    ld	$a6,16($sp)
    move	$a2,$s2
    move	$a1,$s0
    ld	$a5,24($sp)
    jalr	$t9
    move	$a0,$s3
    ld	$a0,128($sp)
    ld	$s5,120($sp)
    ld	$a2,112($sp)
    ld	$ra,96($sp)
    ld	$s4,104($sp)
    b	.L01668184
    move	$a1,$v0
.L016682d0:
    lw	$t9,16($s0)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$v0
    b	.L0166825c
    lw	$ra,100($s1)
.L016682e8:
    lw	$ra,212($sp)
    sw	$ra,4($sp)
    lw	$t9,12($t2)
    jalr	$t9
    nop
    ld	$gp,64($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$ra,96($sp)
    ld	$s6,72($sp)
    ld	$s7,56($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,208

glabel nfbOpStippledFillRects
    addiu	$sp,$sp,-160
    sd	$s2,104($sp)
    sd	$ra,72($sp)
    sd	$s4,80($sp)
    sd	$s0,56($sp)
    sd	$s8,32($sp)
    sd	$s1,48($sp)
    lw	$s1,36($a0)
    sd	$s3,96($sp)
    lhu	$s3,12($s1)
    lhu	$t8,14($s1)
    sd	$s5,40($sp)
    lw	$s5,132($a1)
    sd	$s7,64($sp)
    lui	$s7,0xd
    sd	$s6,88($sp)
    addiu	$s7,$s7,6816
    sd	$gp,112($sp)
    addu	$gp,$t9,$s7
    lw	$s6,-5736($gp)
    lw	$a6,-6768($gp)
    lw	$a5,76($a0)
    sll	$s6,$s6,0x2
    sd	$t8,136($sp)
    sll	$a6,$a6,0x2
    addu	$s5,$s5,$s6
    addu	$a5,$a5,$a6
    lw	$s5,0($s5)
    lw	$a5,0($a5)
    lw	$s5,0($s5)
    lbu	$s8,72($a5)
    lw	$a4,76($a5)
    move	$s0,$a2
    lw	$s4,68($a5)
    move	$s6,$a1
    beqz	$a3,.L016692a0
    lw	$s7,64($a5)
    sd	$a5,24($sp)
    sd	$a4,144($sp)
    sll	$t9,$a3,0x3
    addu	$t9,$t9,$a2
    b	.L01668fdc
    sd	$t9,120($sp)
    nop
.L01668fd0:
    ld	$ra,120($sp)
    addiu	$s0,$s0,8
    beq	$s0,$ra,.L016692a0
.L01668fdc:
    ld	$a0,24($sp)
    lh	$v0,0($s0)
    sh	$v0,16($sp)
    lh	$at,2($s0)
    sh	$at,18($sp)
    lh	$a1,88($a0)
    mtc1	$s3,$f2
    subu	$a1,$v0,$a1
    mtc1	$a1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    lh	$a0,90($a0)
    ld	$t9,136($sp)
    subu	$a0,$at,$a0
    mtc1	$a0,$f0
    mtc1	$t9,$f2
    cvt.d.w	$f0,$f0
    cvt.d.w	$f2,$f2
    div.d	$f0,$f0,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a4,$f1
    mult	$a4,$s3
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    mflo	$a2
    nop
    nop
    mult	$a3,$t9
    subu	$a1,$a1,$a2
    addu	$a2,$s3,$a1
    slti	$v1,$a1,0
    addu	$v0,$s3,$v0
    lh	$a4,4($s0)
    movz	$a2,$a1,$v1
    subu	$v0,$v0,$a2
    slt	$a3,$v0,$a4
    mflo	$a1
    movz	$v0,$a4,$a3
    subu	$a0,$a0,$a1
    sh	$v0,20($sp)
    addu	$ra,$t9,$a0
    slti	$v0,$a0,0
    addu	$at,$t9,$at
    lh	$v1,6($s0)
    movz	$ra,$a0,$v0
    subu	$at,$at,$ra
    slt	$v0,$at,$v1
    movz	$at,$v1,$v0
    sh	$at,22($sp)
    lw	$a3,28($s1)
    mult	$a3,$ra
    lw	$s2,32($s1)
    move	$a6,$s8
    teq	$s3,$zero,0x7
    sw	$s6,4($sp)
    move	$a5,$s4
    teq	$t9,$zero,0x7
    lw	$t9,16($s5)
    move	$a4,$s7
    mflo	$t8
    ld	$a7,144($sp)
    addiu	$a0,$sp,16
    addu	$s2,$s2,$t8
    sd	$a2,128($sp)
    jalr	$t9
    move	$a1,$s2
    lh	$a2,4($s0)
    lh	$a3,20($sp)
    slt	$a2,$a3,$a2
    bnez	$a2,.L016692e0
    addu	$a1,$s3,$a3
    b	.L01669170
    nop
    nop
    nop
    nop
.L01669110:
    sh	$t0,20($sp)
.L01669114:
    lw	$a3,28($s1)
    sw	$s6,4($sp)
    move	$a6,$s8
    lw	$t9,16($s5)
    move	$a5,$s4
    move	$a4,$s7
    move	$a2,$zero
    move	$a1,$s2
    ld	$a7,144($sp)
    jalr	$t9
    addiu	$a0,$sp,16
    lh	$a4,4($s0)
    lh	$a3,20($sp)
    slt	$a4,$a3,$a4
    beqz	$a4,.L01669170
    addu	$a1,$s3,$a3
    sh	$a3,16($sp)
.L01669158:
    lh	$t0,4($s0)
    slt	$a5,$t0,$a1
    bnez	$a5,.L01669110
    nop
    b	.L01669114
    sh	$a1,20($sp)
.L01669170:
    lh	$a6,6($s0)
    lh	$a1,22($sp)
    slt	$a6,$a1,$a6
    beqz	$a6,.L01668fd0
    lw	$s2,32($s1)
    b	.L016691a8
    sh	$a1,18($sp)
    nop
.L01669190:
    lh	$a7,6($s0)
    lh	$a1,22($sp)
    slt	$a7,$a1,$a7
    beqz	$a7,.L01668fd0
    nop
    sh	$a1,18($sp)
.L016691a8:
    ld	$a4,136($sp)
    lh	$a3,6($s0)
    addu	$a4,$a4,$a1
    slt	$t0,$a3,$a4
    beqz	$t0,.L016691c8
    nop
    b	.L016691cc
    sh	$a3,22($sp)
.L016691c8:
    sh	$a4,22($sp)
.L016691cc:
    ld	$a2,128($sp)
    lh	$a5,0($s0)
    sh	$a5,16($sp)
    lh	$a7,4($s0)
    addu	$a5,$s3,$a5
    subu	$a5,$a5,$a2
    slt	$a6,$a5,$a7
    movz	$a5,$a7,$a6
    sh	$a5,20($sp)
    lw	$a3,28($s1)
    sw	$s6,4($sp)
    lw	$t9,16($s5)
    move	$a4,$s7
    move	$a1,$s2
    addiu	$a0,$sp,16
    move	$a6,$s8
    ld	$a7,144($sp)
    jalr	$t9
    move	$a5,$s4
    lh	$a6,4($s0)
    lh	$a3,20($sp)
    slt	$a6,$a3,$a6
    bnez	$a6,.L016692f0
    addu	$t1,$s3,$a3
    b	.L01669190
    nop
    nop
    nop
    nop
.L01669240:
    sh	$t0,20($sp)
.L01669244:
    lw	$a3,28($s1)
    sw	$s6,4($sp)
    move	$a6,$s8
    lw	$t9,16($s5)
    move	$a5,$s4
    move	$a4,$s7
    move	$a2,$zero
    move	$a1,$s2
    ld	$a7,144($sp)
    jalr	$t9
    addiu	$a0,$sp,16
    lh	$a7,4($s0)
    lh	$a3,20($sp)
    slt	$a7,$a3,$a7
    beqz	$a7,.L01669190
    addu	$t1,$s3,$a3
    sh	$a3,16($sp)
.L01669288:
    lh	$t0,4($s0)
    slt	$t2,$t0,$t1
    bnez	$t2,.L01669240
    nop
    b	.L01669244
    sh	$t1,20($sp)
.L016692a0:
    ld	$gp,112($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    ld	$s5,40($sp)
    ld	$ra,72($sp)
    ld	$s6,88($sp)
    ld	$s7,64($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
    nop
    nop
    nop
.L016692e0:
    b	.L01669158
    sh	$a3,16($sp)
    nop
    nop
.L016692f0:
    b	.L01669288
    sh	$a3,16($sp)

glabel nfbSaveScreen
    addiu	$sp,$sp,-16
    lw	$v0,116($a0)
    lui	$v1,0xd
    sd	$gp,8($sp)
    addiu	$v1,$v1,5824
    addu	$gp,$t9,$v1
    lw	$t9,192($v0)
    move	$at,$a0
    sltiu	$a0,$a1,1
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$at
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbCopyGC__BK
    jr	$ra
    nop

glabel nfbCreateWindow
    addiu	$sp,$sp,-80
    sd	$s2,32($sp)
    lw	$s2,16($a0)
    sd	$s4,40($sp)
    lw	$s4,116($s2)
    lui	$at,0xd
    sd	$s0,8($sp)
    addiu	$at,$at,-1744
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    lw	$a4,-5736($gp)
    lw	$s0,132($a0)
    sd	$s1,16($sp)
    sll	$a4,$a4,0x2
    la	$t8,dbcWindowPrivateIndex
    addu	$s1,$s0,$a4
    lw	$s1,0($s1)
    lw	$t8,0($t8)
    li	$t9,1
    sw	$t9,32($s1)
    lw	$a2,120($a0)
    sd	$ra,56($sp)
    sd	$s5,24($sp)
    move	$s5,$a0
    sll	$t8,$t8,0x2
    addu	$s0,$s0,$t8
    beqz	$a2,.L0166b3b8
    lw	$a0,24($a0)
.L0166b100:
    lbu	$v0,1($s5)
    li	$a5,2
    beq	$a5,$v0,.L0166b3e8
    la	$a3,FindWindowWithOptional
    beqz	$a2,.L0166b498
    move	$t9,$a3
    lw	$a0,8($a2)
.L0166b11c:
    bnez	$a0,.L0166b37c
    sd	$a0,0($sp)
    lw	$a2,120($s5)
    beqz	$a2,.L0166b3f4
    lw	$t9,-28356($gp)
.L0166b130:
    lw	$a3,0($a2)
.L0166b134:
    lw	$a2,80($s4)
    subu	$a2,$a3,$a2
    sll	$a1,$a2,0x2
    lw	$a0,88($s4)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    sw	$a0,4($s1)
.L0166b158:
    lw	$a2,120($s5)
    beqz	$a2,.L0166b480
    lw	$t9,-28356($gp)
    lw	$a3,0($a2)
.L0166b168:
    lw	$t1,80($s4)
    subu	$t1,$a3,$t1
    sll	$t0,$t1,0x2
    lw	$a7,88($s4)
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,4($a7)
    sll	$a6,$a7,0x2
    lw	$a4,124($s4)
    subu	$a6,$a6,$a7
    sll	$a6,$a6,0x3
    addu	$a4,$a4,$a6
    lw	$a4,0($a4)
    slti	$a4,$a4,2
    bnez	$a4,.L0166b1b8
    nop
    lw	$t2,32($s1)
    ori	$t2,$t2,0x2
    sw	$t2,32($s1)
.L0166b1b8:
    lw	$a0,24($s5)
    beqz	$a0,.L0166b204
    nop
    lbu	$t3,1($a0)
    beq	$a5,$t3,.L0166b1fc
    ld	$ra,0($sp)
    lw	$a2,120($a0)
    beqz	$a2,.L0166b4b0
    lw	$t9,-28356($gp)
    lw	$a3,8($a2)
.L0166b1e0:
    ld	$t8,0($sp)
    beq	$t8,$a3,.L0166b204
    nop
.L0166b1ec:
    lw	$t9,32($s1)
    ori	$t9,$t9,0x10
    b	.L0166b214
    sw	$t9,32($s1)
.L0166b1fc:
    bnez	$ra,.L0166b1ec
    nop
.L0166b204:
    lw	$at,32($s1)
    li	$v0,-17
    and	$at,$at,$v0
    sw	$at,32($s1)
.L0166b214:
    lw	$a3,4($s1)
.L0166b218:
    li	$a0,-1
    sw	$a0,8($s1)
    lw	$a4,108($s5)
    sw	$a4,12($s1)
    lw	$a2,112($s5)
    sw	$a2,16($s1)
    lw	$v1,48($s4)
    sll	$a1,$a3,0x2
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    sb	$zero,48($s1)
    sw	$zero,36($s1)
    sw	$zero,28($s1)
    sw	$v1,24($s1)
    lw	$a2,120($s5)
    beqz	$a2,.L0166b46c
    lw	$t9,-28356($gp)
    lw	$a3,0($a2)
.L0166b260:
    lw	$t9,-28180($gp)
    sw	$zero,56($s1)
    sw	$zero,52($s1)
    sw	$a3,60($s1)
    li	$a2,-1
    sb	$a2,3($s0)
    sb	$zero,2($s0)
    sb	$zero,1($s0)
    sb	$zero,0($s0)
    lw	$a1,40($s4)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    jalr	$t9
    sll	$a0,$a0,0x2
    bnez	$v0,.L0166b2c8
    sw	$v0,40($s1)
    ld	$gp,48($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,32($sp)
    move	$v0,$zero
    ld	$s4,40($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0166b2c8:
    lw	$t9,-28180($gp)
    lw	$a1,40($s4)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    jalr	$t9
    sll	$a0,$a0,0x2
    move	$s0,$zero
    beqz	$v0,.L0166b40c
    sw	$v0,44($s1)
    lw	$a2,40($s4)
    sd	$s3,64($sp)
    beqz	$a2,.L0166b344
    move	$s3,$zero
    nop
.L0166b300:
    lw	$t9,340($s2)
    lw	$a0,40($s1)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$t9,340($s2)
    lw	$a0,44($s1)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a1,40($s4)
    addiu	$s3,$s3,1
    sltu	$a1,$s3,$a1
    bnez	$a1,.L0166b300
    addiu	$s0,$s0,12
.L0166b344:
    lw	$t9,196($s4)
    ld	$s3,64($sp)
    jalr	$t9
    move	$a0,$s5
    ld	$gp,48($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,32($sp)
    li	$v0,1
    ld	$s4,40($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0166b37c:
    lw	$t9,-27920($gp)
    jalr	$t9
    li	$a1,6
    lw	$a4,68($v0)
    lw	$a4,0($a4)
    li	$a5,2
    bltz	$a4,.L0166b434
    sll	$a3,$a4,0x3
    lw	$a6,116($s4)
    subu	$a7,$a3,$a4
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,16($a6)
    b	.L0166b158
    sw	$a6,4($s1)
.L0166b3b8:
    beqz	$a0,.L0166b100
    nop
    lw	$t0,132($a0)
    addu	$t0,$t0,$a4
    lw	$t0,0($t0)
    lw	$a3,4($t0)
    sw	$a3,4($s1)
    lw	$t0,32($t0)
    andi	$t0,$t0,0x2
    ori	$t0,$t0,0x1
    b	.L0166b218
    sw	$t0,32($s1)
.L0166b3e8:
    bnez	$a2,.L0166b130
    sd	$zero,0($sp)
    lw	$t9,-28356($gp)
.L0166b3f4:
    jalr	$t9
    move	$a0,$s5
    lw	$a3,120($v0)
    li	$a5,2
    b	.L0166b134
    lw	$a3,0($a3)
.L0166b40c:
    ld	$gp,48($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,32($sp)
    move	$v0,$zero
    ld	$s4,40($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0166b434:
    lw	$a2,120($s5)
    beqz	$a2,.L0166b4c4
    lw	$t9,-28356($gp)
    lw	$a3,0($a2)
.L0166b444:
    lw	$a7,80($s4)
    subu	$a7,$a3,$a7
    sll	$a6,$a7,0x2
    lw	$a4,88($s4)
    addu	$a6,$a6,$a7
    sll	$a6,$a6,0x2
    addu	$a4,$a4,$a6
    lw	$a4,0($a4)
    b	.L0166b158
    sw	$a4,4($s1)
.L0166b46c:
    jalr	$t9
    move	$a0,$s5
    lw	$a3,120($v0)
    b	.L0166b260
    lw	$a3,0($a3)
.L0166b480:
    jalr	$t9
    move	$a0,$s5
    lw	$a3,120($v0)
    li	$a5,2
    b	.L0166b168
    lw	$a3,0($a3)
.L0166b498:
    jalr	$t9
    move	$a0,$s5
    lw	$a0,120($v0)
    li	$a5,2
    b	.L0166b11c
    lw	$a0,8($a0)
.L0166b4b0:
    jalr	$t9
    nop
    lw	$a3,120($v0)
    b	.L0166b1e0
    lw	$a3,8($a3)
.L0166b4c4:
    jalr	$t9
    move	$a0,$s5
    lw	$a3,120($v0)
    li	$a5,2
    b	.L0166b444
    lw	$a3,0($a3)

glabel nfbInfPolyRectangle__NK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0xd
    sd	$s2,32($sp)
    addiu	$t8,$t8,-2848
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a5,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t0,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L0166b66c
    lw	$a7,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t0,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L0166b66c
    sd	$a7,8($sp)
    sw	$t0,19112($gp)
    sw	$a5,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,32($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L0166b650
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0166b650:
    ld	$s1,16($sp)
.L0166b654:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0166b66c:
    lw	$t9,32($s1)
    lw	$t9,32($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a5
    jalr	$t9
    move	$a3,$a6
    b	.L0166b654
    ld	$s1,16($sp)

glabel nfbOpStippledFS
    addiu	$sp,$sp,-192
    sd	$s7,48($sp)
    sd	$s4,40($sp)
    sd	$s5,56($sp)
    lw	$at,36($a0)
    sd	$at,112($sp)
    sd	$s2,24($sp)
    lw	$s2,28($at)
    lhu	$at,12($at)
    lui	$v0,0xd
    sd	$s8,64($sp)
    addiu	$v0,$v0,-3280
    sd	$gp,72($sp)
    addu	$gp,$t9,$v0
    lw	$s8,-6768($gp)
    lw	$t9,76($a0)
    sd	$at,128($sp)
    sll	$s8,$s8,0x2
    sd	$s6,32($sp)
    addu	$t9,$t9,$s8
    lw	$t9,0($t9)
    lw	$s6,132($a1)
    lw	$s5,76($t9)
    lw	$s8,64($t9)
    lw	$t8,-5736($gp)
    lw	$s4,68($t9)
    lbu	$s7,72($t9)
    sll	$t8,$t8,0x2
    addu	$s6,$s6,$t8
    lh	$t8,88($t9)
    lh	$t9,90($t9)
    sd	$t9,88($sp)
    lw	$s6,0($s6)
    sd	$s8,120($sp)
    lw	$s6,0($s6)
    move	$a5,$a2
    sd	$t8,96($sp)
    sll	$t8,$a4,0x2
    move	$s8,$a1
    addu	$t8,$t8,$a3
    sd	$t8,80($sp)
    move	$a1,$a3
    blez	$a4,.L0166b96c
    lw	$s6,16($s6)
    sd	$s1,176($sp)
    sd	$s0,168($sp)
    sd	$ra,160($sp)
    b	.L0166b7f8
    sd	$s3,152($sp)
    nop
    nop
    move	$a7,$s5
.L0166b760:
    move	$a6,$s7
    move	$a5,$s4
    ld	$a4,120($sp)
    addiu	$a0,$sp,16
    move	$t9,$s6
    move	$a1,$s1
    move	$a2,$zero
    sh	$s0,20($sp)
    sw	$s8,4($sp)
    jalr	$t9
    move	$a3,$s2
    ld	$a0,128($sp)
    sh	$s0,16($sp)
    addu	$s0,$s0,$a0
    slt	$v1,$s0,$s3
    bnez	$v1,.L0166b760
    move	$a7,$s5
.L0166b7a4:
    move	$t1,$zero
    nop
    nop
.L0166b7b0:
    move	$a7,$s5
    move	$a6,$s7
    move	$a5,$s4
    ld	$a4,120($sp)
    addiu	$a0,$sp,16
    move	$t9,$s6
    move	$a1,$s1
    move	$a2,$t1
    sh	$s3,20($sp)
    sw	$s8,4($sp)
    jalr	$t9
    move	$a3,$s2
    ld	$a1,144($sp)
    ld	$a3,80($sp)
    ld	$a2,136($sp)
    addiu	$a1,$a1,4
    beq	$a1,$a3,.L0166b95c
    addiu	$a2,$a2,4
.L0166b7f8:
    lh	$t8,0($a2)
    ld	$a0,128($sp)
    ld	$v1,96($sp)
    mtc1	$a0,$f2
    subu	$v1,$t8,$v1
    mtc1	$v1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    lh	$a6,2($a2)
    ld	$a7,88($sp)
    ld	$ra,112($sp)
    lhu	$t9,14($ra)
    subu	$a6,$a6,$a7
    mtc1	$a6,$f0
    mtc1	$t9,$f2
    cvt.d.w	$f0,$f0
    cvt.d.w	$f2,$f2
    div.d	$f0,$f0,$f2
    trunc.w.d	$f1,$f1
    lw	$s3,0($a1)
    mfc1	$t2,$f1
    sh	$t8,16($sp)
    lh	$t0,2($a2)
    mult	$t2,$a0
    trunc.w.d	$f0,$f0
    mfc1	$t1,$f0
    mflo	$a4
    nop
    nop
    mult	$t1,$t9
    lh	$s0,0($a2)
    sh	$t0,18($sp)
    lh	$at,2($a2)
    mflo	$a7
    teq	$a0,$zero,0x7
    subu	$a6,$a6,$a7
    addu	$a3,$a6,$t9
    slti	$a5,$a6,0
    movz	$a3,$a6,$a5
    teq	$t9,$zero,0x7
    mult	$s2,$a3
    addu	$s3,$s3,$t8
    subu	$v1,$v1,$a4
    sd	$a1,144($sp)
    addu	$s1,$a0,$v1
    slti	$v0,$v1,0
    sd	$a2,136($sp)
    addu	$s0,$s0,$a0
    movz	$s1,$v1,$v0
    addiu	$at,$at,1
    sh	$at,22($sp)
    andi	$t1,$s1,0x1f
    lw	$ra,32($ra)
    subu	$s0,$s0,$s1
    sra	$s1,$s1,0x5
    pref	0x0,256($a2)
    slt	$t9,$s0,$s3
    mflo	$t8
    sll	$s1,$s1,0x2
    sd	$t8,104($sp)
    addu	$t8,$t8,$ra
    pref	0x0,256($a1)
    beqz	$t9,.L0166b7b0
    addu	$s1,$s1,$t8
    move	$a7,$s5
    move	$a6,$s7
    move	$a5,$s4
    ld	$a4,120($sp)
    addiu	$a0,$sp,16
    move	$t9,$s6
    move	$a1,$s1
    move	$a2,$t1
    sh	$s0,20($sp)
    sw	$s8,4($sp)
    jalr	$t9
    move	$a3,$s2
    ld	$a1,128($sp)
    ld	$t8,112($sp)
    ld	$s1,104($sp)
    addu	$a1,$a1,$s0
    lw	$t8,32($t8)
    slt	$t9,$a1,$s3
    sh	$s0,16($sp)
    move	$s0,$a1
    beqz	$t9,.L0166b7a4
    addu	$s1,$s1,$t8
    b	.L0166b760
    move	$a7,$s5
.L0166b95c:
    ld	$s3,152($sp)
    ld	$ra,160($sp)
    ld	$s0,168($sp)
    ld	$s1,176($sp)
.L0166b96c:
    ld	$s2,24($sp)
    ld	$s6,32($sp)
    ld	$s4,40($sp)
    ld	$s7,48($sp)
    ld	$s5,56($sp)
    ld	$s8,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,192

glabel nfbComputeDidFlag__IG
    lw	$at,124($a0)
    sll	$at,$at,0x15
    move	$v0,$a0
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    bgez	$at,.L0166ba48
    move	$s0,$a1
    lw	$a0,24($a0)
    li	$a6,2
    beqz	$a0,.L0166ba48
    lbu	$a5,1($v0)
    lw	$a1,32($a1)
    andi	$v1,$a1,0x1
    beqz	$v1,.L0166ba9c
    nop
    lw	$a2,32($a3)
    andi	$a2,$a2,0x1
    beqz	$a2,.L0166ba9c
    andi	$a3,$a1,0x2
    beqz	$a3,.L0166ba6c
    li	$a7,4
    beq	$a6,$a5,.L0166ba00
    move	$a1,$zero
    lw	$a1,120($v0)
    beqz	$a1,.L0166baac
    sd	$v0,0($sp)
    lw	$a3,8($a1)
.L0166b9fc:
    move	$a1,$a3
.L0166ba00:
    lbu	$a4,1($a0)
    beq	$a6,$a4,.L0166baa4
    nop
    lw	$v0,120($a0)
    beqz	$v0,.L0166badc
    lw	$t9,-28356($gp)
    lw	$a0,8($v0)
.L0166ba1c:
    move	$v0,$a7
    xor	$a5,$a1,$a0
    movz	$v0,$zero,$a5
.L0166ba28:
    lw	$a6,32($s0)
    li	$a7,-5
    and	$a6,$a6,$a7
    or	$a6,$v0,$a6
    sw	$a6,32($s0)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0166ba48:
    lw	$a1,32($s0)
    move	$v0,$zero
.L0166ba50:
    li	$t0,-5
    and	$t0,$a1,$t0
    or	$t0,$v0,$t0
    sw	$t0,32($s0)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0166ba6c:
    lw	$a1,120($v0)
    beqz	$a1,.L0166bb00
    sd	$v0,0($sp)
    lw	$a3,0($a1)
.L0166ba7c:
    lw	$v0,120($a0)
    beqz	$v0,.L0166bb2c
    lw	$t9,-28356($gp)
    lw	$a0,0($v0)
.L0166ba8c:
    move	$v0,$a7
    xor	$t1,$a3,$a0
    b	.L0166ba28
    movz	$v0,$zero,$t1
.L0166ba9c:
    b	.L0166ba50
    li	$v0,4
.L0166baa4:
    b	.L0166ba1c
    move	$a0,$zero
.L0166baac:
    lw	$t9,-28356($gp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    ld	$a0,0($sp)
    lw	$a3,120($v0)
    li	$a6,2
    lw	$a0,24($a0)
    li	$a7,4
    b	.L0166b9fc
    lw	$a3,8($a3)
.L0166badc:
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a1,24($sp)
    ld	$ra,32($sp)
    lw	$a0,120($v0)
    ld	$a1,24($sp)
    li	$a7,4
    b	.L0166ba1c
    lw	$a0,8($a0)
.L0166bb00:
    lw	$t9,-28356($gp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    ld	$a0,0($sp)
    lw	$a3,120($v0)
    lw	$a0,24($a0)
    li	$a7,4
    b	.L0166ba7c
    lw	$a3,0($a3)
.L0166bb2c:
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a3,16($sp)
    ld	$ra,32($sp)
    lw	$a0,120($v0)
    ld	$a3,16($sp)
    li	$a7,4
    b	.L0166ba8c
    lw	$a0,0($a0)

glabel nfbPaintWindowBackground
    addiu	$sp,$sp,-96
    sd	$a1,32($sp)
    sd	$s1,48($sp)
    lui	$a5,0xd
    lw	$s1,132($a0)
    addiu	$a5,$a5,-6656
    sd	$gp,64($sp)
    addu	$gp,$t9,$a5
    lw	$a4,-5736($gp)
    la	$t8,dbcWindowPrivateIndex
    sd	$s2,40($sp)
    sll	$a4,$a4,0x2
    lw	$t8,0($t8)
    addu	$at,$s1,$a4
    lw	$at,0($at)
    move	$s2,$a0
    sd	$s0,56($sp)
    move	$s0,$a0
    sll	$t8,$t8,0x2
    lw	$at,0($at)
    addu	$s1,$s1,$t8
    beqz	$a2,.L0166c43c
    sd	$at,24($sp)
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    sd	$ra,80($sp)
    jalr	$t9
    addiu	$a0,$a0,18888
    lw	$a4,-5736($gp)
    ld	$ra,80($sp)
    sll	$a4,$a4,0x2
.L0166c43c:
    lw	$a3,124($s2)
    li	$a6,1
    srl	$a3,$a3,0x1e
    li	$t1,2
    bne	$a6,$a3,.L0166c468
    li	$a5,3
.L0166c454:
    lw	$s0,24($s0)
    lw	$a3,124($s0)
    srl	$a3,$a3,0x1e
    beq	$a6,$a3,.L0166c454
    nop
.L0166c468:
    lb	$t2,3($s1)
    lw	$t0,132($s0)
    li	$a0,-1
    lb	$a7,1($s1)
    addu	$t0,$t0,$a4
    move	$a4,$zero
    beq	$t2,$a0,.L0166c49c
    lw	$t0,0($t0)
    bltz	$a7,.L0166c4dc
    move	$a4,$a7
    sb	$a0,1($s1)
    lw	$a3,124($s0)
    srl	$a3,$a3,0x1e
.L0166c49c:
    beqz	$a3,.L0166c4bc
    lw	$t2,8($t0)
    beq	$a6,$a3,.L0166c4bc
    nop
    beq	$a3,$a5,.L0166c548
    nop
    beq	$a3,$t1,.L0166c504
    ld	$a3,32($sp)
.L0166c4bc:
    lb	$a5,1($s1)
    ld	$s0,56($sp)
    ld	$s2,40($sp)
    beq	$a5,$a0,.L0166c4e8
    ld	$gp,64($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0166c4dc:
    move	$a4,$zero
    b	.L0166c49c
    nop
.L0166c4e8:
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    sb	$a4,1($s1)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0166c504:
    lw	$a3,8($a3)
    sd	$a4,72($sp)
    beqz	$a3,.L0166c61c
    addiu	$a0,$a3,8
    lw	$a1,4($a3)
    sd	$ra,80($sp)
.L0166c51c:
    ld	$t9,24($sp)
    lw	$t9,4($t9)
    li	$a3,3
    move	$a4,$t2
    lw	$a2,12($t0)
    jalr	$t9
    move	$a5,$s2
    ld	$ra,80($sp)
    li	$a0,-1
    b	.L0166c4bc
    ld	$a4,72($sp)
.L0166c548:
    lw	$v0,108($s0)
    lh	$v1,8($s0)
    lhu	$v0,12($v0)
    mtc1	$v1,$f1
    mtc1	$v0,$f2
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a1,$f1
    mult	$a1,$v0
    mflo	$a0
    subu	$v1,$v1,$a0
    sh	$v1,16($sp)
    lw	$at,108($s0)
    lh	$a5,10($s0)
    lhu	$at,14($at)
    mtc1	$a5,$f0
    mtc1	$at,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a7,$f0
    mult	$a7,$at
    ld	$a3,32($sp)
    mflo	$a6
    subu	$a5,$a5,$a6
    sh	$a5,18($sp)
    lw	$a3,8($a3)
    teq	$v0,$zero,0x7
    sd	$a4,72($sp)
    beqz	$a3,.L0166c62c
    teq	$at,$zero,0x7
    addiu	$a0,$a3,8
    lw	$a1,4($a3)
    sd	$ra,80($sp)
.L0166c5dc:
    lw	$a5,108($s0)
    ld	$t9,24($sp)
    lw	$a2,32($a5)
    lw	$a3,28($a5)
    lhu	$a4,12($a5)
    lhu	$a5,14($a5)
    sw	$s2,12($sp)
    sw	$t2,4($sp)
    lw	$t9,28($t9)
    li	$a7,3
    jalr	$t9
    addiu	$a6,$sp,16
    ld	$ra,80($sp)
    li	$a0,-1
    b	.L0166c4bc
    ld	$a4,72($sp)
.L0166c61c:
    ld	$a0,32($sp)
    li	$a1,1
    b	.L0166c51c
    sd	$ra,80($sp)
.L0166c62c:
    ld	$a0,32($sp)
    li	$a1,1
    b	.L0166c5dc
    sd	$ra,80($sp)

glabel nfbCreateHWColormap
    lw	$a3,0($a0)
    addiu	$sp,$sp,-16
    lh	$at,4($a3)
    sd	$ra,8($sp)
    li	$v0,5
    sd	$s0,0($sp)
    move	$s0,$a0
    beq	$at,$v0,.L016709d8
    lhu	$a3,8($a3)
    lw	$t9,-28180($gp)
    addiu	$a0,$a3,31
    sra	$a0,$a0,0x3
    jalr	$t9
    addiu	$a0,$a0,8
    move	$a4,$v0
    beqz	$v0,.L01670a0c
    sw	$v0,68($s0)
.L01670964:
    li	$a1,-1
    sw	$a1,0($a4)
    lw	$a3,0($s0)
    lh	$a5,4($a3)
    li	$a6,5
    lw	$a0,68($s0)
    addiu	$a0,$a0,4
    bne	$a5,$a6,.L016709b4
    lhu	$a3,8($a3)
    addiu	$a2,$a3,7
    sra	$a2,$a2,0x3
    lw	$t9,-27872($gp)
    addiu	$a2,$a2,3
    sra	$a2,$a2,0x2
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    jalr	$t9
    sll	$a1,$a1,0x2
    b	.L016709c4
    nop
.L016709b4:
    lw	$t9,-27872($gp)
    addiu	$a1,$a3,31
    jalr	$t9
    sra	$a1,$a1,0x3
.L016709c4:
    ld	$ra,8($sp)
    li	$v0,1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L016709d8:
    addiu	$a1,$a3,7
    sra	$a1,$a1,0x3
    addiu	$a1,$a1,3
    sra	$a1,$a1,0x2
    lw	$t9,-28180($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    jalr	$t9
    addiu	$a0,$a0,8
    move	$a4,$v0
    bnez	$v0,.L01670964
    sw	$v0,68($s0)
.L01670a0c:
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfb10MaskRopLoop__KI
    addiu	$sp,$sp,-48
    move	$a5,$a1
    sd	$s3,0($sp)
    move	$s3,$a3
    sltu	$at,$a1,$a2
    subu	$a0,$a2,$a1
    addiu	$a4,$a0,6
    addiu	$a7,$a0,3
    beqz	$at,.L01671b40
    slt	$t0,$a7,$zero
    movz	$a4,$a7,$t0
    sra	$t1,$a4,0x2
    sd	$s4,32($sp)
    nor	$s4,$a3,$zero
    andi	$a3,$t1,0x3
    beqz	$a3,.L0167193c
    move	$a4,$s3
.L01671914:
    lw	$v0,0($a5)
    addiu	$a5,$a5,4
    addiu	$a3,$a3,-1
    nor	$v1,$v0,$zero
    pref	0x1,252($a5)
    and	$v0,$s4,$v0
    and	$v1,$s3,$v1
    or	$v0,$v0,$v1
    bnez	$a3,.L01671914
    sw	$v0,-4($a5)
.L0167193c:
    sra	$v1,$t1,0x2
    addiu	$a1,$a5,16
    beqz	$v1,.L01671b3c
    sltu	$a3,$a1,$a2
    beqz	$a3,.L01671b98
    nop
    lw	$a0,8($a5)
    pref	0x1,256($a5)
    lw	$t2,12($a5)
    lw	$t8,4($a5)
    lw	$a7,0($a5)
    sd	$s2,8($sp)
    sd	$ra,24($sp)
    sd	$s0,40($sp)
    move	$a3,$s4
    addiu	$a2,$a2,-16
    sd	$s1,16($sp)
    sltu	$t3,$a1,$a2
    move	$s1,$a0
    nop
    nop
.L01671990:
    addiu	$a0,$a1,16
    nor	$at,$t2,$zero
    sltu	$t9,$a0,$a2
    lw	$t1,12($a1)
    and	$v0,$a3,$t2
    and	$at,$a4,$at
    nor	$v1,$s1,$zero
    or	$at,$v0,$at
    lw	$s2,8($a1)
    sw	$at,12($a5)
    and	$v0,$a3,$s1
    and	$at,$a4,$v1
    nor	$v1,$t8,$zero
    or	$at,$v0,$at
    lw	$s0,4($a1)
    sw	$at,8($a5)
    and	$v0,$a3,$t8
    and	$at,$a4,$v1
    nor	$v1,$a7,$zero
    or	$at,$v0,$at
    lw	$ra,0($a1)
    sw	$at,4($a5)
    and	$v0,$a3,$a7
    and	$at,$a4,$v1
    or	$at,$v0,$at
    beqz	$t3,.L01671b70
    sw	$at,0($a5)
    pref	0x1,256($a0)
    addiu	$a5,$a1,32
    nor	$at,$t1,$zero
    sltu	$a6,$a5,$a2
    lw	$t8,28($a1)
    and	$v0,$a3,$t1
    and	$at,$a4,$at
    nor	$v1,$s2,$zero
    or	$at,$v0,$at
    lw	$t1,24($a1)
    sw	$at,12($a1)
    and	$v0,$a3,$s2
    and	$at,$a4,$v1
    nor	$v1,$s0,$zero
    or	$at,$v0,$at
    lw	$a7,20($a1)
    sw	$at,8($a1)
    and	$v0,$a3,$s0
    and	$at,$a4,$v1
    nor	$v1,$ra,$zero
    or	$at,$v0,$at
    lw	$t0,16($a1)
    sw	$at,4($a1)
    and	$v0,$a3,$ra
    and	$at,$a4,$v1
    or	$at,$v0,$at
    beqz	$t9,.L01671b4c
    sw	$at,0($a1)
    addiu	$a1,$a1,48
    nor	$at,$t8,$zero
    sltu	$t3,$a1,$a2
    lw	$t2,12($a5)
    and	$v0,$a3,$t8
    and	$at,$a4,$at
    nor	$v1,$t1,$zero
    or	$at,$v0,$at
    lw	$s1,8($a5)
    sw	$at,12($a0)
    and	$v0,$a3,$t1
    and	$at,$a4,$v1
    nor	$v1,$a7,$zero
    or	$at,$v0,$at
    lw	$t8,4($a5)
    sw	$at,8($a0)
    and	$v0,$a3,$a7
    and	$at,$a4,$v1
    nor	$v1,$t0,$zero
    or	$at,$v0,$at
    lw	$a7,0($a5)
    sw	$at,4($a0)
    and	$v0,$a3,$t0
    and	$at,$a4,$v1
    or	$at,$v0,$at
    bnez	$a6,.L01671990
    sw	$at,0($a0)
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    move	$t1,$s1
    ld	$s1,16($sp)
    ld	$s2,8($sp)
.L01671aec:
    and	$a6,$s4,$t8
    and	$a1,$s4,$t2
    and	$a3,$s4,$t1
    nor	$a4,$t1,$zero
    nor	$a2,$t2,$zero
    and	$a2,$s3,$a2
    nor	$t3,$a7,$zero
    and	$t0,$s4,$a7
    and	$t3,$s3,$t3
    and	$a4,$s3,$a4
    or	$t0,$t0,$t3
    sw	$t0,0($a5)
    or	$a3,$a3,$a4
    sw	$a3,8($a5)
    nor	$t3,$t8,$zero
    or	$a1,$a1,$a2
    sw	$a1,12($a5)
    and	$t3,$s3,$t3
    or	$a6,$a6,$t3
    sw	$a6,4($a5)
.L01671b3c:
    ld	$s4,32($sp)
.L01671b40:
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L01671b4c:
    ld	$s0,40($sp)
    move	$a5,$a0
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    move	$t2,$t8
    move	$t8,$a7
    move	$a7,$t0
    b	.L01671aec
    ld	$s2,8($sp)
.L01671b70:
    move	$t8,$s0
    ld	$s0,40($sp)
    move	$a7,$ra
    ld	$ra,24($sp)
    move	$a5,$a1
    ld	$s1,16($sp)
    move	$t2,$t1
    move	$t1,$s2
    b	.L01671aec
    ld	$s2,8($sp)
.L01671b98:
    lw	$a0,12($a5)
    lw	$v1,8($a5)
    lw	$at,4($a5)
    lw	$t8,0($a5)
    nor	$a1,$a0,$zero
    and	$a0,$s4,$a0
    and	$a1,$s3,$a1
    or	$a0,$a0,$a1
    nor	$a1,$v1,$zero
    and	$v1,$s4,$v1
    and	$a1,$s3,$a1
    or	$v1,$v1,$a1
    nor	$v0,$at,$zero
    sw	$a0,12($a5)
    and	$at,$s4,$at
    and	$v0,$s3,$v0
    sw	$v1,8($a5)
    or	$at,$at,$v0
    nor	$t9,$t8,$zero
    sw	$at,4($a5)
    and	$t8,$s4,$t8
    and	$t9,$s3,$t9
    or	$t8,$t8,$t9
    b	.L01671b3c
    sw	$t8,0($a5)

glabel nfbStereoImageGlyphBlt
    lw	$a7,72($a1)
    addiu	$sp,$sp,-112
    sd	$a7,64($sp)
    sd	$s8,32($sp)
    sd	$s7,24($sp)
    lw	$s7,16($a0)
    sd	$s0,80($sp)
    sd	$s2,0($sp)
    lui	$s2,0xc
    sd	$s1,72($sp)
    addiu	$s2,$s2,28992
    sd	$gp,88($sp)
    addu	$gp,$t9,$s2
    lw	$s1,-6768($gp)
    lw	$s0,76($a1)
    sd	$s6,16($sp)
    sll	$s1,$s1,0x2
    lw	$s7,116($s7)
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    lhu	$s7,226($s7)
    lw	$t8,8($s0)
    lw	$v1,92($s0)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s0)
    lw	$v0,16($a0)
    sd	$s3,8($sp)
    lw	$v0,116($v0)
    sd	$s5,40($sp)
    move	$s5,$a3
    move	$s3,$a4
    lw	$v0,220($v0)
    move	$s6,$a5
    move	$s8,$a6
    sd	$s4,48($sp)
    move	$s4,$a0
    sd	$ra,96($sp)
    move	$s2,$a2
    move	$s1,$a1
    beq	$at,$v0,.L016739e8
    sd	$t8,56($sp)
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    addu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,68($t9)
    jalr	$t9
    nop
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($s4)
    subu	$at,$at,$s7
    sh	$at,10($s4)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    move	$a6,$s8
    move	$a5,$s6
    lw	$t9,68($t9)
    move	$a4,$s3
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s4
    ld	$s2,0($sp)
.L016739a4:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s7,24($sp)
    ld	$s8,32($sp)
    ld	$s5,40($sp)
    ld	$s4,48($sp)
    ld	$gp,88($sp)
    ld	$v1,64($sp)
    ld	$a0,56($sp)
    sw	$a0,8($s0)
    sw	$v1,72($s1)
    ld	$ra,96($sp)
    sw	$zero,104($s0)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L016739e8:
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    subu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,68($t9)
    jalr	$t9
    nop
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($s4)
    addu	$at,$at,$s7
    sh	$at,10($s4)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s7
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    move	$a6,$s8
    move	$a5,$s6
    lw	$t9,68($t9)
    move	$a4,$s3
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s4
    b	.L016739a4
    ld	$s2,0($sp)

glabel nfb11RopLoop__LH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L01674a70
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L01674a08
    sra	$a3,$t0,0x2
.L016749dc:
    lw	$v1,0($a1)
    lw	$v0,0($a0)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v1,$v1,$zero
    or	$v0,$v0,$v1
    bnez	$a4,.L016749dc
    sw	$v0,-4($a1)
.L01674a08:
    beqz	$a3,.L01674a70
    nop
.L01674a10:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    nor	$t8,$t8,$zero
    or	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    nor	$t2,$t2,$zero
    or	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    nor	$t0,$t0,$zero
    or	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    nor	$a6,$a6,$zero
    or	$a4,$a4,$a6
    bnez	$a5,.L01674a10
    sw	$a4,-4($a1)
.L01674a70:
    jr	$ra
    nop

glabel nfbPolyPoint
    addiu	$sp,$sp,-128
    sd	$s3,64($sp)
    sd	$s6,72($sp)
    sd	$ra,80($sp)
    sd	$s0,96($sp)
    sd	$s1,104($sp)
    sd	$s5,112($sp)
    sd	$s7,88($sp)
    lui	$a5,0xc
    sd	$s4,8($sp)
    addiu	$a5,$a5,24384
    sd	$gp,24($sp)
    addu	$gp,$t9,$a5
    lw	$v1,-6768($gp)
    lw	$v0,76($a1)
    sd	$s2,0($sp)
    sll	$v1,$v1,0x2
    sd	$s8,16($sp)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$at,132($a0)
    lw	$a1,52($v0)
    lw	$s8,40($v0)
    lw	$v1,-5736($gp)
    lw	$t1,8($v0)
    lbu	$v0,48($v0)
    sll	$v1,$v1,0x2
    sd	$a1,40($sp)
    addu	$at,$at,$v1
    lw	$at,0($at)
    lw	$t0,8($t1)
    lw	$at,0($at)
    li	$a6,1
    li	$a7,1
    sd	$v0,32($sp)
    move	$s2,$a4
    move	$s4,$a0
    lw	$at,24($at)
    move	$s7,$t1
    beqz	$t0,.L01674b2c
    sd	$at,48($sp)
    addiu	$s7,$t0,8
    lw	$a7,4($t0)
.L01674b2c:
    beq	$a2,$a6,.L01674c98
    slti	$v1,$a3,2
.L01674b34:
    blez	$a3,.L01674c64
    move	$a0,$s2
    move	$a1,$zero
    addiu	$s3,$s2,4
    sll	$s1,$a7,0x3
    slti	$s6,$a7,1
    sll	$s5,$a3,0x2
    addu	$s5,$s5,$s2
    addu	$s1,$s7,$s1
    sd	$a7,56($sp)
    b	.L01674d40
    xori	$s6,$s6,0x1
    nop
    nop
    nop
.L01674b70:
    beqz	$a1,.L01674b98
    ld	$t9,48($sp)
    move	$a2,$s8
    ld	$a3,32($sp)
    move	$a5,$zero
    move	$a6,$zero
    ld	$a4,40($sp)
    jalr	$t9
    move	$a7,$s4
    move	$a1,$zero
.L01674b98:
    move	$a0,$s3
.L01674b9c:
    addiu	$s2,$s2,4
    move	$a6,$s7
    beq	$s2,$s5,.L01674c40
    addiu	$s3,$s3,4
    lh	$t8,0($s2)
.L01674bb0:
    lh	$t0,2($s2)
    lh	$t9,8($s4)
    addu	$t8,$t8,$t9
    dsll32	$t8,$t8,0x10
    dsra32	$t8,$t8,0x10
    sh	$t8,0($s2)
    lh	$t1,10($s4)
    addu	$t0,$t0,$t1
    dsll32	$t0,$t0,0x10
    pref	0x1,256($s2)
    dsra32	$t0,$t0,0x10
    beqz	$s6,.L01674b70
    sh	$t0,2($s2)
    b	.L01674bfc
    lh	$at,6($a6)
    nop
.L01674bf0:
    beq	$a6,$s1,.L01674b70
    nop
    lh	$at,6($a6)
.L01674bfc:
    lh	$ra,4($a6)
    lh	$s0,0($a6)
    slt	$at,$t0,$at
    addiu	$a6,$a6,8
    slt	$t3,$t8,$ra
    lh	$t1,-6($a6)
    beqz	$at,.L01674bf0
    slt	$t2,$t8,$s0
    slt	$v0,$t0,$t1
    bnez	$v0,.L01674b70
    nop
    bnez	$t2,.L01674b70
    nop
    beqz	$t3,.L01674bf0
    nop
    b	.L01674b9c
    addiu	$a1,$a1,1
.L01674c40:
    beqz	$a1,.L01674c64
    ld	$t9,48($sp)
    move	$a2,$s8
    ld	$a3,32($sp)
    move	$a5,$zero
    move	$a6,$zero
    ld	$a4,40($sp)
    jalr	$t9
    move	$a7,$s4
.L01674c64:
    ld	$s2,0($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,8($sp)
    ld	$s7,88($sp)
    ld	$s0,96($sp)
    ld	$s1,104($sp)
    ld	$ra,80($sp)
    ld	$s5,112($sp)
    ld	$s8,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L01674c98:
    move	$a1,$s2
    addiu	$t0,$a3,-1
    andi	$a6,$t0,0x1
    bnez	$v1,.L01674b34
    sll	$a0,$t0,0x2
    beqz	$a6,.L01674ce4
    addu	$a2,$a0,$s2
    lh	$a4,4($s2)
    lh	$a6,6($s2)
    lh	$a5,2($s2)
    lh	$a0,0($s2)
    pref	0x1,260($s2)
    pref	0x1,262($s2)
    pref	0x0,258($s2)
    addu	$a5,$a5,$a6
    sh	$a5,6($s2)
    addiu	$a1,$s2,4
    addu	$a0,$a0,$a4
    sh	$a0,4($s2)
.L01674ce4:
    sra	$t1,$t0,0x1
    beqz	$t1,.L01674b34
    nop
.L01674cf0:
    lh	$at,4($a1)
    lh	$v1,6($a1)
    lh	$v0,2($a1)
    lh	$ra,0($a1)
    lh	$t3,8($a1)
    lh	$t9,10($a1)
    addu	$v0,$v0,$v1
    sh	$v0,6($a1)
    addu	$ra,$ra,$at
    sh	$ra,4($a1)
    lh	$t8,6($a1)
    lh	$t2,4($a1)
    addiu	$a1,$a1,8
    addu	$t8,$t8,$t9
    sh	$t8,2($a1)
    addu	$t2,$t2,$t3
    bne	$a1,$a2,.L01674cf0
    sh	$t2,0($a1)
    b	.L01674b34
    nop
.L01674d40:
    move	$a6,$s7
    b	.L01674bb0
    lh	$t8,0($s2)

glabel nfbShmPutImage
    move	$t1,$a5
    addiu	$sp,$sp,-240
    move	$t2,$a6
    move	$t3,$a7
    sd	$s2,88($sp)
    li	$t8,1
    move	$s2,$a0
    sd	$s1,104($sp)
    move	$s1,$a1
    sd	$s0,96($sp)
    move	$s0,$a2
    sd	$s5,112($sp)
    li	$at,2
    lui	$v0,0xc
    move	$s5,$a4
    sd	$ra,128($sp)
    addiu	$v0,$v0,20320
    sd	$gp,120($sp)
    beq	$a3,$at,.L01675ab8
    addu	$gp,$t9,$v0
    bne	$a2,$t8,.L01675bf8
    lw	$t9,-29316($gp)
.L01675ab8:
    la	$a0,sub_01730000
    sltiu	$a2,$s0,31
    sll	$a1,$s0,0x2
    addiu	$a0,$a0,-24580
    beqz	$a2,.L01675adc
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    li	$a0,32
.L01675adc:
    sd	$t3,136($sp)
    sd	$t2,144($sp)
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    sd	$t1,152($sp)
    move	$a1,$s0
    sd	$a3,160($sp)
    jalr	$t9
    addiu	$a0,$a0,18944
    ld	$a3,160($sp)
    ld	$t1,152($sp)
    ld	$t2,144($sp)
    ld	$t3,136($sp)
    li	$a0,8
.L01675b14:
    lw	$a5,244($sp)
.L01675b18:
    lw	$a6,252($sp)
    lw	$a7,260($sp)
    sb	$zero,49($sp)
    li	$a2,1
    sb	$a2,48($sp)
    lw	$ra,16($s2)
    sw	$a2,72($sp)
    sh	$t1,62($sp)
    sh	$s5,60($sp)
    sh	$zero,58($sp)
    sh	$zero,56($sp)
    sw	$zero,52($sp)
    sb	$a0,51($sp)
    sb	$s0,50($sp)
    lw	$a1,276($sp)
    sw	$a1,80($sp)
    la	$at,globalSerialNumber
    sll	$t8,$s0,0x2
    la	$t0,PixmapWidthPaddingInfo
    subu	$t8,$t8,$s0
    sw	$ra,64($sp)
    sll	$t8,$t8,0x2
    lw	$t9,0($at)
    addu	$t0,$t0,$t8
    lw	$t8,4($t0)
    lui	$v0,0x1000
    addiu	$t9,$t9,1
    lw	$a4,0($t0)
    lw	$t0,8($t0)
    sltu	$v0,$v0,$t9
    movn	$t9,$a2,$v0
    sw	$t9,0($at)
    addu	$a4,$a4,$s5
    sw	$t9,68($sp)
    srav	$a4,$a4,$t8
    sllv	$a4,$a4,$t0
    sw	$a4,76($sp)
    beqz	$a3,.L01675c2c
    lw	$t8,72($s1)
    lw	$ra,268($sp)
    sw	$ra,4($sp)
    lw	$t9,12($t8)
    move	$a4,$t3
    move	$a3,$t2
    move	$a2,$s1
    move	$a1,$s2
    jalr	$t9
    addiu	$a0,$sp,48
    ld	$s2,88($sp)
.L01675bdc:
    ld	$s0,96($sp)
    ld	$ra,128($sp)
    ld	$s1,104($sp)
    ld	$s5,112($sp)
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L01675bf8:
    lw	$t1,244($sp)
    sw	$t1,4($sp)
    lw	$t0,252($sp)
    sw	$t0,12($sp)
    lw	$v1,260($sp)
    sw	$v1,20($sp)
    lw	$v0,268($sp)
    sw	$v0,28($sp)
    lw	$at,276($sp)
    jalr	$t9
    sw	$at,36($sp)
    b	.L01675bdc
    ld	$s2,88($sp)
.L01675c2c:
    lw	$ra,268($sp)
    move	$t9,$a2
    sw	$t9,12($sp)
    sw	$ra,4($sp)
    lw	$t9,16($t8)
    move	$a4,$t3
    move	$a3,$t2
    move	$a2,$s1
    move	$a1,$s2
    jalr	$t9
    addiu	$a0,$sp,48
    b	.L01675bdc
    ld	$s2,88($sp)
    b	.L01675b14
    li	$a0,1
    b	.L01675b18
    lw	$a5,244($sp)
    b	.L01675b14
    li	$a0,16
    b	.L01675b14
    li	$a0,8

glabel nfb14MaskRopLoop__OI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L01675f50
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L01675eb8
    sra	$t9,$t0,0x2
.L01675e80:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    and	$t8,$t8,$t3
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    nor	$t8,$t8,$zero
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L01675e80
    sw	$t3,-4($a1)
.L01675eb8:
    beqz	$t9,.L01675f50
    nop
.L01675ec0:
    lw	$t1,0($a1)
    lw	$t2,0($a0)
    and	$t2,$t2,$t1
    nor	$t2,$t2,$zero
    lw	$a7,4($a1)
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    and	$t0,$t0,$a7
    nor	$t0,$t0,$zero
    lw	$a4,8($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    and	$a6,$a6,$a4
    nor	$a6,$a6,$zero
    lw	$at,12($a1)
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    and	$v1,$v1,$at
    sltu	$v0,$a1,$a2
    nor	$v1,$v1,$zero
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L01675ec0
    sw	$at,-4($a1)
.L01675f50:
    jr	$ra
    nop

glabel nfbStereoSetSpans
    lw	$a7,72($a1)
    addiu	$sp,$sp,-176
    sd	$a7,8($sp)
    sd	$a6,80($sp)
    sd	$a4,88($sp)
    sd	$a2,64($sp)
    sd	$a1,96($sp)
    sd	$a0,72($sp)
    sd	$s5,104($sp)
    sd	$s7,24($sp)
    lw	$s7,16($a0)
    sd	$s3,48($sp)
    sd	$s6,56($sp)
    lui	$s6,0xc
    sd	$s4,32($sp)
    addiu	$s6,$s6,19040
    sd	$gp,16($sp)
    addu	$gp,$t9,$s6
    lw	$s4,-6768($gp)
    lw	$s3,76($a1)
    sd	$s2,112($sp)
    sll	$s4,$s4,0x2
    lw	$s7,116($s7)
    addu	$s3,$s3,$s4
    lw	$s3,0($s3)
    lhu	$s7,226($s7)
    lw	$t8,8($s3)
    lw	$v1,92($s3)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s3)
    lw	$v0,16($a0)
    sd	$s0,120($sp)
    lw	$v0,116($v0)
    sd	$ra,128($sp)
    lw	$v0,220($v0)
    slti	$t0,$a5,1
    sd	$s8,40($sp)
    move	$s8,$a3
    sd	$s1,144($sp)
    move	$s6,$a5
    xori	$s4,$t0,0x1
    beq	$at,$v0,.L01676864
    sd	$t8,0($sp)
    lw	$t8,100($s3)
    bne	$zero,$t0,.L0167632c
    sw	$t8,8($s3)
    andi	$a3,$s6,0x7
    move	$a2,$s8
    sll	$t1,$s6,0x2
    beqz	$a3,.L0167604c
    addu	$t1,$t1,$s8
.L01676030:
    lh	$t2,2($a2)
    addiu	$a2,$a2,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a2)
    addu	$t2,$t2,$s7
    bnez	$a3,.L01676030
    sh	$t2,-2($a2)
.L0167604c:
    sra	$a7,$a5,0x3
    beqz	$a7,.L0167632c
    slti	$t3,$a7,3
    bnez	$t3,.L016771a8
    nop
    lh	$a0,62($a2)
    lh	$a1,26($a2)
    lh	$v0,10($a2)
    lh	$v1,18($a2)
    lh	$a6,30($a2)
    lh	$at,14($a2)
    lh	$s5,54($a2)
    lh	$t3,58($a2)
    lh	$t8,2($a2)
    addiu	$a4,$a2,64
    lh	$ra,6($a2)
    addiu	$a3,$a2,32
    lh	$t9,22($a2)
    move	$a5,$s7
    pref	0x1,258($a2)
    addiu	$a7,$t1,-64
    addu	$v0,$v0,$s7
    sd	$s6,160($sp)
    addu	$v1,$v1,$s7
    addu	$a1,$a1,$s7
    sd	$s4,136($sp)
    move	$s4,$a0
    addu	$a6,$a6,$s7
    sd	$s3,152($sp)
    move	$t1,$at
    move	$s3,$a6
.L016760c8:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    addu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    addu	$at,$t9,$a5
    sh	$at,22($a2)
    addu	$t9,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a2)
    addu	$v1,$v1,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a2)
    addu	$v0,$v0,$a5
    addu	$at,$t8,$a5
    beq	$a3,$a7,.L01676828
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    addu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    addu	$at,$s5,$a5
    sh	$at,22($a3)
    addu	$t9,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a3)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a3)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    beq	$a4,$a7,.L016767e4
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    addu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    addu	$at,$a1,$a5
    sh	$at,22($a4)
    addu	$a1,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a4)
    addu	$v1,$v0,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a4)
    addu	$v0,$s5,$a5
    addu	$at,$t8,$a5
    beq	$a6,$a7,.L016767b0
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    addu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    addu	$at,$t2,$a5
    sh	$at,22($a6)
    addu	$a1,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a6)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a6)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    bne	$a2,$a7,.L016760c8
    sh	$at,2($a6)
    move	$a7,$a3
    move	$t2,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$t0,$t1
    move	$s0,$a2
    ld	$s6,160($sp)
    move	$a2,$s5
    move	$a0,$s3
    ld	$s3,152($sp)
    move	$s5,$t9
    move	$s2,$s4
    ld	$s4,136($sp)
    move	$t9,$a2
    move	$t1,$a0
.L016762a8:
    sh	$t3,10($s0)
    sh	$t2,18($s0)
    lh	$a4,18($a7)
    lh	$a5,14($a7)
    lh	$a3,10($a7)
    lh	$a6,6($a7)
    lh	$at,2($a7)
    sh	$a1,26($s0)
    sh	$t1,30($s0)
    addu	$a0,$s5,$s7
    sh	$a0,22($s0)
    addu	$v1,$t0,$s7
    sh	$v1,14($s0)
    addu	$v0,$ra,$s7
    sh	$v0,6($s0)
    addu	$a2,$t8,$s7
    sh	$a2,2($s0)
    addu	$a0,$t9,$s7
    sh	$a0,22($a7)
    addu	$v1,$s2,$s7
    sh	$v1,30($a7)
    addu	$v0,$s1,$s7
    sh	$v0,26($a7)
    addu	$at,$at,$s7
    sh	$at,2($a7)
    addu	$a6,$a6,$s7
    sh	$a6,6($a7)
    addu	$a5,$a5,$s7
    sh	$a5,14($a7)
    addu	$a4,$a4,$s7
    sh	$a4,18($a7)
    addu	$a3,$a3,$s7
    sh	$a3,10($a7)
.L0167632c:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    addu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,96($sp)
    addu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,4($t9)
    ld	$a6,80($sp)
    move	$a5,$s6
    ld	$a4,88($sp)
    move	$a3,$s8
    jalr	$t9
    ld	$a2,64($sp)
    lw	$v0,96($s3)
    beqz	$s4,.L01676674
    sw	$v0,8($s3)
    move	$a5,$s6
    andi	$a3,$s6,0x7
    move	$a2,$s8
    sll	$t1,$s6,0x2
    beqz	$a3,.L016763ac
    addu	$t1,$t1,$s8
.L01676390:
    lh	$t2,2($a2)
    addiu	$a2,$a2,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a2)
    subu	$t2,$t2,$s7
    bnez	$a3,.L01676390
    sh	$t2,-2($a2)
.L016763ac:
    sra	$a7,$a5,0x3
    beqz	$a7,.L01676674
    slti	$t3,$a7,3
    bnez	$t3,.L01677218
    nop
    lh	$a1,26($a2)
    lh	$v1,18($a2)
    lh	$v0,10($a2)
    lh	$a0,30($a2)
    lh	$at,14($a2)
    lh	$s5,54($a2)
    lh	$t3,58($a2)
    lh	$s4,62($a2)
    lh	$t8,2($a2)
    addiu	$a4,$a2,64
    lh	$ra,6($a2)
    addiu	$a3,$a2,32
    lh	$t9,22($a2)
    move	$a5,$s7
    addiu	$a7,$t1,-64
    pref	0x1,258($a2)
    subu	$v0,$v0,$s7
    subu	$v1,$v1,$s7
    sd	$s6,160($sp)
    subu	$a1,$a1,$s7
    subu	$a0,$a0,$s7
    sd	$s3,152($sp)
    move	$t1,$at
    move	$s3,$a0
.L01676420:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    subu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    subu	$at,$t9,$a5
    sh	$at,22($a2)
    subu	$t9,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a2)
    subu	$v1,$v1,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a2)
    subu	$v0,$v0,$a5
    subu	$at,$t8,$a5
    beq	$a3,$a7,.L01676778
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    subu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    subu	$at,$s5,$a5
    sh	$at,22($a3)
    subu	$t9,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a3)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a3)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    beq	$a4,$a7,.L01676734
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    subu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    subu	$at,$a1,$a5
    sh	$at,22($a4)
    subu	$a1,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a4)
    subu	$v1,$v0,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a4)
    subu	$v0,$s5,$a5
    subu	$at,$t8,$a5
    beq	$a6,$a7,.L01676700
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    subu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    subu	$at,$t2,$a5
    sh	$at,22($a6)
    subu	$a1,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a6)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a6)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    bne	$a2,$a7,.L01676420
    sh	$at,2($a6)
    move	$t2,$a2
    move	$s2,$s4
    move	$s4,$v1
    move	$s1,$t3
    move	$t3,$v0
    ld	$s6,160($sp)
    move	$a7,$s3
    move	$a0,$a3
    ld	$s3,152($sp)
    move	$t0,$t1
    move	$t1,$a0
.L016765f0:
    sh	$t3,10($t2)
    sh	$s4,18($t2)
    lh	$a3,18($t1)
    lh	$a4,14($t1)
    lh	$a2,10($t1)
    lh	$a5,6($t1)
    lh	$a6,2($t1)
    sh	$a1,26($t2)
    sh	$a7,30($t2)
    subu	$v1,$t9,$s7
    sh	$v1,22($t2)
    subu	$v0,$t0,$s7
    sh	$v0,14($t2)
    subu	$at,$ra,$s7
    sh	$at,6($t2)
    subu	$a0,$t8,$s7
    sh	$a0,2($t2)
    subu	$v1,$s5,$s7
    sh	$v1,22($t1)
    subu	$v0,$s2,$s7
    sh	$v0,30($t1)
    subu	$at,$s1,$s7
    sh	$at,26($t1)
    subu	$a6,$a6,$s7
    sh	$a6,2($t1)
    subu	$a5,$a5,$s7
    sh	$a5,6($t1)
    subu	$a4,$a4,$s7
    sh	$a4,14($t1)
    subu	$a3,$a3,$s7
    sh	$a3,18($t1)
    subu	$a2,$a2,$s7
    sh	$a2,10($t1)
.L01676674:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    subu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,96($sp)
    subu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,4($t9)
    ld	$a6,80($sp)
    move	$a5,$s6
    ld	$a4,88($sp)
    move	$a3,$s8
    jalr	$t9
    ld	$a2,64($sp)
    ld	$s1,144($sp)
.L016766b8:
    ld	$s6,56($sp)
    ld	$s8,40($sp)
    ld	$s4,32($sp)
    ld	$s7,24($sp)
    ld	$s0,120($sp)
    ld	$s2,112($sp)
    ld	$s5,104($sp)
    ld	$gp,16($sp)
    ld	$v0,8($sp)
    ld	$a0,0($sp)
    sw	$a0,8($s3)
    ld	$v1,96($sp)
    ld	$ra,128($sp)
    sw	$v0,72($v1)
    sw	$zero,104($s3)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L01676700:
    move	$s4,$v1
    move	$t3,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$s5,$t9
    move	$t9,$t2
    move	$a7,$s3
    ld	$s6,160($sp)
    move	$t1,$a2
    move	$a2,$a6
    ld	$s3,152($sp)
    b	.L016765f0
    move	$t2,$a2
.L01676734:
    move	$s2,$s4
    move	$s4,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$s5,$t2
    move	$a7,$s3
    move	$t0,$t1
    move	$a5,$t9
    move	$t9,$a1
    move	$a3,$a4
    move	$a4,$a6
    ld	$s6,160($sp)
    move	$a1,$a5
    move	$t1,$a4
    ld	$s3,152($sp)
    b	.L016765f0
    move	$t2,$a3
.L01676778:
    move	$t1,$a4
    move	$t2,$a3
    move	$s4,$v1
    move	$t3,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$a6,$t9
    move	$t9,$s5
    ld	$s6,160($sp)
    move	$s5,$a1
    move	$a7,$s3
    ld	$s3,152($sp)
    b	.L016765f0
    move	$a1,$a6
.L016767b0:
    move	$a7,$a2
    move	$s5,$t2
    move	$t2,$v1
    move	$t3,$v0
    move	$ra,$a0
    ld	$s6,160($sp)
    move	$t1,$s3
    ld	$s3,152($sp)
    move	$t8,$s0
    move	$s4,$a6
    move	$s0,$s4
    b	.L016762a8
    ld	$s4,136($sp)
.L016767e4:
    move	$s0,$a4
    move	$a7,$a6
    move	$at,$t9
    move	$t9,$t2
    move	$t2,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$s6,$s3
    ld	$s3,152($sp)
    move	$t0,$t1
    move	$s2,$s4
    ld	$s4,136($sp)
    move	$s5,$a1
    move	$a1,$at
    move	$t1,$s6
    b	.L016762a8
    ld	$s6,160($sp)
.L01676828:
    move	$a7,$a4
    move	$t2,$v1
    move	$t3,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$t1,$s3
    ld	$s6,160($sp)
    move	$a2,$a3
    move	$a3,$t9
    ld	$s3,152($sp)
    move	$t9,$a1
    move	$a1,$a3
    ld	$s4,136($sp)
    b	.L016762a8
    move	$s0,$a2
.L01676864:
    andi	$a3,$a5,0x7
    sll	$t1,$a5,0x2
    lw	$t2,96($s3)
    sw	$t2,8($s3)
    bne	$zero,$t0,.L01676b80
    addu	$t1,$t1,$s8
    move	$a4,$s8
    sra	$t0,$a5,0x3
    beqz	$a3,.L016768a8
    addiu	$a7,$t1,-64
.L0167688c:
    lh	$t3,2($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a4)
    subu	$t3,$t3,$s7
    bnez	$a3,.L0167688c
    sh	$t3,-2($a4)
.L016768a8:
    addiu	$a2,$a4,64
    move	$a5,$s7
    move	$a0,$a2
    beqz	$t0,.L01676b80
    slti	$t0,$t0,3
    bnez	$t0,.L016770b4
    nop
    lh	$a1,26($a4)
    lh	$v1,18($a4)
    lh	$v0,10($a4)
    lh	$at,30($a4)
    lh	$t2,62($a4)
    pref	0x1,258($a4)
    lh	$t9,22($a4)
    lh	$t1,14($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    move	$a2,$a4
    lh	$t3,58($a4)
    addiu	$a3,$a4,32
    lh	$s5,54($a4)
    move	$a4,$a0
    sd	$s6,160($sp)
    subu	$a1,$a1,$s7
    subu	$v1,$v1,$s7
    sd	$s3,152($sp)
    subu	$v0,$v0,$s7
    subu	$at,$at,$s7
    sd	$s4,136($sp)
    move	$s4,$t2
    move	$s3,$at
.L01676924:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    subu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    subu	$at,$t9,$a5
    sh	$at,22($a2)
    subu	$t9,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a2)
    subu	$v1,$v1,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a2)
    subu	$v0,$v0,$a5
    subu	$at,$t8,$a5
    beq	$a3,$a7,.L0167706c
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    subu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    subu	$at,$s5,$a5
    sh	$at,22($a3)
    subu	$t9,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a3)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a3)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    beq	$a4,$a7,.L01677024
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    subu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    subu	$at,$a1,$a5
    sh	$at,22($a4)
    subu	$a1,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a4)
    subu	$v1,$v0,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a4)
    subu	$v0,$s5,$a5
    subu	$at,$t8,$a5
    beq	$a6,$a7,.L01676fd8
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    subu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    subu	$at,$t2,$a5
    sh	$at,22($a6)
    subu	$a1,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a6)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a6)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    bne	$a2,$a7,.L01676924
    sh	$at,2($a6)
    move	$t2,$a3
    move	$s0,$a2
    move	$a7,$v1
    move	$t0,$t1
    move	$t1,$v0
    ld	$s6,160($sp)
    move	$s2,$s3
    ld	$s3,152($sp)
    move	$s1,$t3
    move	$a0,$s4
    ld	$s4,136($sp)
    move	$t3,$a1
    move	$a1,$a0
.L01676afc:
    sh	$a7,18($s0)
    sh	$t1,10($s0)
    lh	$a6,2($t2)
    lh	$a5,6($t2)
    lh	$a2,10($t2)
    lh	$a4,14($t2)
    lh	$a3,18($t2)
    subu	$a0,$t8,$s7
    sh	$a0,2($s0)
    subu	$at,$ra,$s7
    sh	$at,6($s0)
    subu	$v0,$t0,$s7
    sh	$v0,14($s0)
    sh	$s2,30($s0)
    sh	$t3,26($s0)
    subu	$v1,$t9,$s7
    sh	$v1,22($s0)
    subu	$v1,$s5,$s7
    sh	$v1,22($t2)
    subu	$v0,$a1,$s7
    sh	$v0,30($t2)
    subu	$at,$s1,$s7
    sh	$at,26($t2)
    subu	$a6,$a6,$s7
    sh	$a6,2($t2)
    subu	$a5,$a5,$s7
    sh	$a5,6($t2)
    subu	$a4,$a4,$s7
    sh	$a4,14($t2)
    subu	$a3,$a3,$s7
    sh	$a3,18($t2)
    subu	$a2,$a2,$s7
    sh	$a2,10($t2)
.L01676b80:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    subu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,96($sp)
    subu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,4($t9)
    ld	$a6,80($sp)
    move	$a5,$s6
    ld	$a4,88($sp)
    move	$a3,$s8
    jalr	$t9
    ld	$a2,64($sp)
    andi	$a3,$s6,0x7
    sll	$t1,$s6,0x2
    lw	$t2,100($s3)
    sw	$t2,8($s3)
    beqz	$s4,.L01676ed8
    addu	$t1,$t1,$s8
    move	$a4,$s8
    move	$a5,$s6
    beqz	$a3,.L01676c08
    addiu	$a2,$a4,64
.L01676be8:
    lh	$t3,2($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a4)
    addu	$t3,$t3,$s7
    bnez	$a3,.L01676be8
    sh	$t3,-2($a4)
    addiu	$a2,$a4,64
.L01676c08:
    sra	$t0,$a5,0x3
    addiu	$a7,$t1,-64
    move	$a5,$s7
    beqz	$t0,.L01676ed8
    slti	$t0,$t0,3
    bnez	$t0,.L01677138
    nop
    pref	0x1,258($a4)
    lh	$a1,26($a4)
    lh	$v1,18($a4)
    lh	$t2,30($a4)
    lh	$v0,10($a4)
    lh	$t9,22($a4)
    lh	$t1,14($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    lh	$s4,62($a4)
    addiu	$a3,$a4,32
    lh	$t3,58($a4)
    sd	$s3,152($sp)
    move	$s3,$a2
    move	$a2,$a4
    lh	$s5,54($a4)
    move	$a4,$s3
    addu	$a1,$a1,$s7
    addu	$v1,$v1,$s7
    addu	$t2,$t2,$s7
    sd	$s6,160($sp)
    addu	$v0,$v0,$s7
    move	$s3,$t2
.L01676c80:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    addu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    addu	$at,$t9,$a5
    sh	$at,22($a2)
    addu	$t9,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a2)
    addu	$v1,$v1,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a2)
    addu	$v0,$v0,$a5
    addu	$at,$t8,$a5
    beq	$a3,$a7,.L01676f98
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    addu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    addu	$at,$s5,$a5
    sh	$at,22($a3)
    addu	$t9,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a3)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a3)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    beq	$a4,$a7,.L01676f58
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    addu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    addu	$at,$a1,$a5
    sh	$at,22($a4)
    addu	$a1,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a4)
    addu	$v1,$v0,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a4)
    addu	$v0,$s5,$a5
    addu	$at,$t8,$a5
    beq	$a6,$a7,.L01676f20
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    addu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    addu	$at,$t2,$a5
    sh	$at,22($a6)
    addu	$a1,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a6)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a6)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    bne	$a2,$a7,.L01676c80
    sh	$at,2($a6)
    move	$s0,$a3
    move	$t2,$v1
    move	$t0,$t1
    move	$a7,$v0
    move	$s1,$t3
    move	$s2,$s3
    ld	$s3,152($sp)
    move	$s6,$a2
    move	$at,$s4
    move	$t3,$at
    move	$s4,$s6
    ld	$s6,160($sp)
.L01676e54:
    sh	$t2,18($s4)
    sh	$a7,10($s4)
    lh	$a3,2($s0)
    lh	$a2,6($s0)
    lh	$v0,10($s0)
    lh	$a0,14($s0)
    lh	$v1,18($s0)
    addu	$t1,$t8,$s7
    sh	$t1,2($s4)
    addu	$at,$ra,$s7
    sh	$at,6($s4)
    addu	$a4,$t0,$s7
    sh	$a4,14($s4)
    addu	$a5,$t9,$s7
    sh	$a5,22($s4)
    sh	$s2,30($s4)
    sh	$a1,26($s4)
    addu	$a6,$s5,$s7
    sh	$a6,22($s0)
    addu	$a5,$t3,$s7
    sh	$a5,30($s0)
    addu	$a4,$s1,$s7
    sh	$a4,26($s0)
    addu	$a3,$a3,$s7
    sh	$a3,2($s0)
    addu	$a2,$a2,$s7
    sh	$a2,6($s0)
    addu	$a0,$a0,$s7
    sh	$a0,14($s0)
    addu	$v1,$v1,$s7
    sh	$v1,18($s0)
    addu	$v0,$v0,$s7
    sh	$v0,10($s0)
.L01676ed8:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    addu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,96($sp)
    addu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,4($t9)
    ld	$a6,80($sp)
    move	$a5,$s6
    ld	$a4,88($sp)
    move	$a3,$s8
    jalr	$t9
    ld	$a2,64($sp)
    b	.L016766b8
    ld	$s1,144($sp)
.L01676f20:
    move	$s4,$a6
    move	$s5,$t9
    move	$t9,$t2
    move	$t2,$v1
    move	$a7,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$s0,$a2
    ld	$s6,160($sp)
    move	$t3,$s2
    move	$a3,$s3
    ld	$s3,152($sp)
    b	.L01676e54
    move	$s2,$a3
.L01676f58:
    move	$s5,$t2
    move	$t2,$v1
    move	$t0,$t1
    move	$a7,$v0
    move	$a5,$s4
    move	$s4,$a4
    move	$s1,$t3
    move	$s2,$s3
    move	$s0,$a6
    move	$a6,$t9
    ld	$s6,160($sp)
    move	$t9,$a1
    move	$a1,$a6
    ld	$s3,152($sp)
    b	.L01676e54
    move	$t3,$a5
.L01676f98:
    move	$s4,$a3
    move	$t2,$v1
    move	$a7,$v0
    move	$ra,$a0
    move	$s6,$t9
    move	$t9,$s5
    move	$s5,$a1
    move	$t3,$s2
    move	$s2,$s3
    move	$t1,$a4
    ld	$s3,152($sp)
    move	$t8,$s0
    move	$s0,$t1
    move	$a1,$s6
    b	.L01676e54
    ld	$s6,160($sp)
.L01676fd8:
    move	$a7,$v1
    move	$t1,$v0
    move	$ra,$a0
    move	$s5,$t9
    move	$t9,$t2
    move	$t8,$s0
    move	$t3,$a1
    move	$at,$a2
    move	$a2,$a6
    move	$a4,$s2
    ld	$s6,160($sp)
    move	$a3,$s3
    move	$a1,$a4
    ld	$s3,152($sp)
    move	$s2,$a3
    move	$s0,$a2
    ld	$s4,136($sp)
    b	.L01676afc
    move	$t2,$at
.L01677024:
    move	$s0,$a4
    move	$a7,$v1
    move	$t0,$t1
    move	$t1,$v0
    move	$s1,$t3
    move	$s5,$t2
    move	$s2,$s3
    move	$s3,$t9
    move	$t9,$a1
    ld	$s6,160($sp)
    move	$a5,$a6
    move	$a6,$s4
    ld	$s4,136($sp)
    move	$a1,$a6
    move	$t2,$a5
    move	$t3,$s3
    b	.L01676afc
    ld	$s3,152($sp)
.L0167706c:
    move	$t2,$a4
    move	$a7,$v1
    move	$t1,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$t3,$t9
    move	$t9,$s5
    move	$s5,$a1
    move	$s6,$s3
    ld	$s3,152($sp)
    move	$s4,$a3
    move	$at,$s2
    move	$a1,$at
    move	$s2,$s6
    ld	$s6,160($sp)
    move	$s0,$s4
    b	.L01676afc
    ld	$s4,136($sp)
.L016770b4:
    lh	$a6,30($a4)
    lh	$a5,26($a4)
    lh	$a3,22($a4)
    lh	$a2,18($a4)
    lh	$a1,14($a4)
    lh	$a0,10($a4)
    lh	$v1,6($a4)
    lh	$v0,2($a4)
    addiu	$a4,$a4,32
    subu	$a6,$a6,$s7
    sh	$a6,-2($a4)
    subu	$a5,$a5,$s7
    sh	$a5,-6($a4)
    subu	$a3,$a3,$s7
    sh	$a3,-10($a4)
    subu	$a2,$a2,$s7
    sh	$a2,-14($a4)
    subu	$a1,$a1,$s7
    sh	$a1,-18($a4)
    subu	$a0,$a0,$s7
    sh	$a0,-22($a4)
    subu	$v1,$v1,$s7
    sh	$v1,-26($a4)
    subu	$v0,$v0,$s7
    beq	$a4,$t1,.L01676b80
    sh	$v0,-30($a4)
    sd	$s4,136($sp)
    sd	$s6,160($sp)
    sd	$s3,152($sp)
    ld	$s6,160($sp)
    ld	$s3,152($sp)
    b	.L016770b4
    ld	$s4,136($sp)
.L01677138:
    lh	$at,30($a4)
    lh	$ra,26($a4)
    lh	$t9,22($a4)
    lh	$t8,18($a4)
    lh	$t3,14($a4)
    lh	$t2,10($a4)
    lh	$t0,6($a4)
    lh	$a7,2($a4)
    addiu	$a4,$a4,32
    addu	$at,$at,$s7
    sh	$at,-2($a4)
    addu	$ra,$ra,$s7
    sh	$ra,-6($a4)
    addu	$t9,$t9,$s7
    sh	$t9,-10($a4)
    addu	$t8,$t8,$s7
    sh	$t8,-14($a4)
    addu	$t3,$t3,$s7
    sh	$t3,-18($a4)
    addu	$t2,$t2,$s7
    sh	$t2,-22($a4)
    addu	$t0,$t0,$s7
    sh	$t0,-26($a4)
    addu	$a7,$a7,$s7
    beq	$a4,$t1,.L01676ed8
    sh	$a7,-30($a4)
    b	.L01677138
    nop
.L016771a8:
    lh	$a6,30($a2)
    lh	$a5,26($a2)
    lh	$a4,22($a2)
    lh	$a3,18($a2)
    lh	$a1,14($a2)
    lh	$a0,10($a2)
    lh	$v1,6($a2)
    lh	$v0,2($a2)
    addiu	$a2,$a2,32
    addu	$a6,$a6,$s7
    sh	$a6,-2($a2)
    addu	$a5,$a5,$s7
    sh	$a5,-6($a2)
    addu	$a4,$a4,$s7
    sh	$a4,-10($a2)
    addu	$a3,$a3,$s7
    sh	$a3,-14($a2)
    addu	$a1,$a1,$s7
    sh	$a1,-18($a2)
    addu	$a0,$a0,$s7
    sh	$a0,-22($a2)
    addu	$v1,$v1,$s7
    sh	$v1,-26($a2)
    addu	$v0,$v0,$s7
    beq	$a2,$t1,.L0167632c
    sh	$v0,-30($a2)
    b	.L016771a8
    nop
.L01677218:
    lh	$at,30($a2)
    lh	$ra,26($a2)
    lh	$t9,22($a2)
    lh	$t8,18($a2)
    lh	$t3,14($a2)
    lh	$t2,10($a2)
    lh	$t0,6($a2)
    lh	$a7,2($a2)
    addiu	$a2,$a2,32
    subu	$at,$at,$s7
    sh	$at,-2($a2)
    subu	$ra,$ra,$s7
    sh	$ra,-6($a2)
    subu	$t9,$t9,$s7
    sh	$t9,-10($a2)
    subu	$t8,$t8,$s7
    sh	$t8,-14($a2)
    subu	$t3,$t3,$s7
    sh	$t3,-18($a2)
    subu	$t2,$t2,$s7
    sh	$t2,-22($a2)
    subu	$t0,$t0,$s7
    sh	$t0,-26($a2)
    subu	$a7,$a7,$s7
    beq	$a2,$t1,.L01676674
    sh	$a7,-30($a2)
    b	.L01677218
    nop

glabel nfbComputeUniverseSL__GJ
    addiu	$sp,$sp,-304
    sd	$a0,232($sp)
    sd	$a2,216($sp)
    sd	$a4,184($sp)
    sd	$s3,288($sp)
    sd	$s1,144($sp)
    sd	$s5,128($sp)
    sd	$s0,104($sp)
    sd	$s4,96($sp)
    sd	$s8,80($sp)
    lw	$t9,16($a0)
    sd	$s7,136($sp)
    lw	$t1,116($t9)
    sd	$ra,88($sp)
    lw	$ra,72($t1)
    sd	$s6,120($sp)
    lw	$s6,400($t9)
    move	$t3,$a1
    move	$t8,$a3
    sd	$s6,272($sp)
    move	$v0,$zero
    move	$s7,$zero
    lw	$s6,40($t1)
    move	$s8,$zero
    move	$s4,$zero
    lw	$t2,64($t1)
    move	$s0,$zero
    move	$s5,$zero
    lw	$t1,60($t1)
    move	$s1,$zero
    blez	$s6,.L016780a8
    sd	$t2,224($sp)
    li	$s3,1
    nop
    nop
    sllv	$at,$s3,$v0
.L01677500:
    and	$at,$ra,$at
    bnez	$at,.L01677520
    nop
    addiu	$v0,$v0,1
    bne	$v0,$s6,.L01677500
    sllv	$at,$s3,$v0
    b	.L01677528
    lw	$t0,-5736($gp)
.L01677520:
    sw	$v0,0($sp)
.L01677524:
    lw	$t0,-5736($gp)
.L01677528:
    li	$a3,-1
    blez	$s6,.L01678080
    sll	$t0,$t0,0x2
    ld	$t2,224($sp)
    lw	$a1,0($sp)
    sd	$zero,264($sp)
    sd	$zero,256($sp)
    sd	$s2,280($sp)
    move	$a7,$zero
    sd	$t8,72($sp)
    move	$v0,$a3
    b	.L01677570
    sd	$t3,64($sp)
    nop
.L01677560:
    addiu	$a7,$a7,1
    addiu	$t1,$t1,4
    beq	$a7,$s6,.L016775dc
    addiu	$t2,$t2,4
.L01677570:
    lw	$at,0($t2)
    lw	$a0,0($t1)
    ld	$a5,256($sp)
    sllv	$t8,$s3,$a7
    ld	$a2,264($sp)
    pref	0x1,256($t1)
    addiu	$v1,$v0,1
    or	$a6,$t8,$a5
    pref	0x1,256($t2)
    or	$a4,$t8,$a2
    movn	$a5,$a6,$at
    and	$t3,$t8,$ra
    sd	$a5,256($sp)
    movn	$a2,$a4,$at
    nor	$s2,$t8,$zero
    sd	$a2,264($sp)
    beqz	$a0,.L01677560
    movn	$v0,$v1,$at
    bnez	$t3,.L01677560
    ld	$at,264($sp)
    slt	$t3,$a7,$a1
    beqz	$t3,.L01677560
    and	$at,$at,$s2
    sw	$zero,0($t1)
    sw	$zero,0($t2)
    b	.L01677560
    sd	$at,264($sp)
.L016775dc:
    ld	$a7,232($sp)
    sd	$v0,152($sp)
    lw	$a7,132($a7)
    ld	$v1,64($sp)
    sd	$v1,248($sp)
    addu	$a7,$a7,$t0
    beqz	$v0,.L01677cd8
    lw	$a7,0($a7)
    sd	$zero,200($sp)
    b	.L01677660
    sd	$t9,56($sp)
    nop
    nop
.L01677610:
    lw	$t0,-5736($gp)
    ld	$v0,296($sp)
    sll	$t0,$t0,0x2
.L0167761c:
    ld	$t1,256($sp)
    ld	$t2,264($sp)
    ld	$a7,248($sp)
    and	$t1,$t8,$t1
    or	$t1,$t1,$t2
    sw	$t1,36($s5)
    lw	$a7,36($a7)
    li	$t2,1
    beqz	$a7,.L01677658
    lw	$t1,28($s5)
    beqz	$t1,.L016778a4
    nop
    sd	$a7,248($sp)
    sd	$t2,176($sp)
.L01677654:
    ld	$v0,176($sp)
.L01677658:
    beqz	$v0,.L01677770
    ld	$a7,248($sp)
.L01677660:
    ld	$t8,248($sp)
    lw	$t8,68($t8)
    move	$t1,$zero
    move	$a0,$zero
    beqz	$t8,.L01677738
    move	$v0,$zero
    ld	$t1,248($sp)
    sd	$zero,176($sp)
    lw	$s5,132($t1)
    ld	$t9,232($sp)
    lw	$t1,24($t1)
    addu	$s5,$s5,$t0
    lw	$s5,0($s5)
    ld	$t3,224($sp)
    beq	$t1,$t9,.L016776bc
    lw	$a7,24($s5)
    lw	$t2,132($t1)
    addu	$t2,$t2,$t0
    lw	$t2,0($t2)
    lw	$t2,24($t2)
    sltu	$t2,$a7,$t2
    beqz	$t2,.L01677980
    nop
.L016776bc:
    sll	$t0,$a7,0x2
    addu	$t3,$t3,$t0
    lw	$t3,0($t3)
    beqz	$t3,.L016776f4
    sd	$v0,296($sp)
    ld	$a1,248($sp)
    ld	$t9,272($sp)
    ld	$a0,216($sp)
    subu	$a2,$t0,$a7
    sll	$a2,$a2,0x2
    addiu	$a1,$a1,56
    sd	$v0,296($sp)
    jalr	$t9
    addu	$a0,$a0,$a2
.L016776f4:
    ld	$a3,248($sp)
    lw	$a3,124($a3)
    ld	$a6,248($sp)
    sll	$a3,$a3,0x15
    ld	$a7,232($sp)
    bltz	$a3,.L01677988
    ld	$a5,200($sp)
.L01677710:
    blez	$s6,.L016779a0
    ld	$s4,216($sp)
    ld	$s0,224($sp)
    ld	$a4,248($sp)
    move	$s1,$zero
    lw	$t8,36($s5)
    move	$s2,$zero
    addiu	$a4,$a4,56
    b	.L016777d8
    sd	$a4,240($sp)
.L01677738:
    ld	$a7,248($sp)
    lw	$a7,36($a7)
    li	$t3,1
    beqz	$a7,.L01677768
    ld	$t8,248($sp)
    lw	$t2,132($t8)
    addu	$t2,$t2,$t0
    lw	$t2,0($t2)
    lw	$t2,28($t2)
    movn	$t8,$a7,$t2
    sd	$t8,248($sp)
    movn	$t1,$t3,$t2
.L01677768:
    bnez	$t1,.L01677660
    ld	$a7,248($sp)
.L01677770:
    lw	$a7,28($a7)
    ld	$t1,232($sp)
    beqz	$a7,.L016779a8
    ld	$t2,248($sp)
    ld	$t2,232($sp)
.L01677784:
    ld	$t1,248($sp)
    beq	$t1,$t2,.L01677a00
    nop
    b	.L01677660
    sd	$a7,248($sp)
    nop
    nop
.L016777a0:
    lw	$a7,8($a1)
    beqz	$a7,.L016777b8
    ld	$t9,272($sp)
    lw	$t9,4($a7)
    beqz	$t9,.L016777c4
    ld	$t9,272($sp)
.L016777b8:
    jalr	$t9
    move	$a0,$s4
    lw	$t8,36($s5)
.L016777c4:
    addiu	$s1,$s1,1
.L016777c8:
    addiu	$s0,$s0,4
    addiu	$s4,$s4,12
    beq	$s1,$s6,.L01677610
    addiu	$s2,$s2,12
.L016777d8:
    lw	$t3,24($s5)
    lw	$t1,44($s5)
    sltu	$ra,$t3,$s1
    sllv	$a7,$s3,$s1
    addiu	$t0,$s1,-1
    pref	0x0,256($s0)
    beqz	$ra,.L016777c4
    addu	$a1,$s2,$t1
    lw	$at,0($s0)
    beqz	$at,.L016777c4
    and	$v0,$t8,$a7
    bnez	$v0,.L016777a0
    move	$a7,$zero
    slt	$at,$t0,$t3
    move	$t1,$s1
    addiu	$ra,$t3,1
    bnez	$at,.L016777c4
    subu	$ra,$s1,$ra
.L01677820:
    beq	$a7,$ra,.L01677850
    ld	$t9,272($sp)
    sllv	$v0,$s3,$t0
    and	$v0,$t8,$v0
    addiu	$a7,$a7,1
    addiu	$t0,$t0,-1
    bnez	$v0,.L01677864
    slt	$t2,$t0,$t3
    beqz	$t2,.L01677820
    addiu	$t1,$t1,-1
    b	.L016777c8
    addiu	$s1,$s1,1
.L01677850:
    move	$a0,$s4
    jalr	$t9
    ld	$a1,240($sp)
    b	.L016777c4
    lw	$t8,36($s5)
.L01677864:
    sll	$t2,$t1,0x2
    lw	$t0,44($s5)
    subu	$t2,$t2,$t1
    sll	$t2,$t2,0x2
    addu	$t0,$t0,$t2
    lw	$a7,-4($t0)
    beqz	$a7,.L01677890
    ld	$t9,272($sp)
    lw	$t3,4($a7)
    beqz	$t3,.L016777c4
    ld	$t9,272($sp)
.L01677890:
    move	$a0,$s4
    jalr	$t9
    addiu	$a1,$t0,-12
    b	.L016777c4
    lw	$t8,36($s5)
.L016778a4:
    b	.L016778cc
    lw	$t9,68($a7)
    nop
.L016778b0:
    beq	$a7,$t8,.L01677654
    move	$a7,$t1
    nop
    nop
.L016778c0:
    move	$s7,$zero
    move	$s8,$zero
    lw	$t9,68($a7)
.L016778cc:
    li	$at,1
    beqz	$t9,.L0167791c
    ld	$a2,256($sp)
    lw	$a1,132($a7)
    addu	$a1,$t0,$a1
    lw	$a1,0($a1)
    lw	$a0,36($a1)
    and	$a0,$a0,$a2
    sw	$a0,36($a1)
    lw	$v1,132($a7)
    addu	$v1,$t0,$v1
    lw	$v1,0($v1)
    ld	$a0,264($sp)
    lw	$v0,36($v1)
    or	$v0,$v0,$a0
    sw	$v0,36($v1)
    lw	$ra,36($a7)
    movn	$s8,$at,$ra
    movn	$a7,$ra,$ra
    move	$s7,$s8
.L0167791c:
    bnez	$s7,.L016778c0
    nop
    lw	$t1,28($a7)
    ld	$t8,248($sp)
    bnez	$t1,.L016778b0
    ld	$a2,248($sp)
    beq	$a7,$a2,.L01677658
    ld	$v0,176($sp)
.L0167793c:
    lw	$a7,24($a7)
    lw	$t1,28($a7)
    ld	$a4,248($sp)
    bnez	$t1,.L016778b0
    ld	$a3,248($sp)
    beq	$a3,$a7,.L016778b0
    nop
    lw	$a7,24($a7)
    lw	$t1,28($a7)
    bnez	$t1,.L016778b0
    nop
    bne	$a4,$a7,.L0167793c
    nop
    b	.L016778b0
    nop
    nop
    nop
.L01677980:
    b	.L0167761c
    lw	$t8,36($s5)
.L01677988:
    lw	$a6,24($a6)
    xor	$a6,$a6,$a7
    addiu	$a7,$a5,1
    movz	$a5,$a7,$a6
    b	.L01677710
    sd	$a5,200($sp)
.L016779a0:
    b	.L01677610
    lw	$t8,36($s5)
.L016779a8:
    beq	$t1,$t2,.L01677784
    ld	$t2,232($sp)
.L016779b0:
    ld	$a7,248($sp)
    lw	$a7,24($a7)
    sd	$a7,248($sp)
    lw	$a7,28($a7)
    ld	$t1,232($sp)
    bnez	$a7,.L016779f8
    ld	$t2,248($sp)
    beq	$t1,$t2,.L016779f8
    nop
    ld	$a7,248($sp)
    lw	$a7,24($a7)
    sd	$a7,248($sp)
    lw	$a7,28($a7)
    ld	$t1,232($sp)
    bnez	$a7,.L016779f8
    ld	$t2,248($sp)
    bne	$t1,$t2,.L016779b0
    nop
.L016779f8:
    b	.L01677784
    ld	$t2,232($sp)
.L01677a00:
    ld	$s8,232($sp)
    ld	$ra,72($sp)
    lw	$s8,132($s8)
    addu	$s8,$s8,$t0
    beq	$ra,$s3,.L01677d28
    lw	$s8,0($s8)
    blez	$s6,.L01677c3c
    ld	$a4,256($sp)
    ld	$s0,272($sp)
    ld	$s2,224($sp)
    ld	$ra,232($sp)
    li	$s5,-1
    ld	$s7,216($sp)
    move	$s1,$zero
    addiu	$v0,$ra,56
    sd	$v0,160($sp)
    move	$s4,$zero
    addiu	$at,$ra,44
    sd	$at,208($sp)
    addiu	$ra,$ra,72
    b	.L01677a94
    sd	$ra,192($sp)
    nop
    nop
.L01677a60:
    lw	$a3,8($a1)
    beqz	$a3,.L01677a78
    move	$t9,$s0
    lw	$v1,4($a3)
    beqz	$v1,.L01677a80
    move	$t9,$s0
.L01677a78:
    jalr	$t9
    move	$a0,$s7
.L01677a80:
    addiu	$s1,$s1,1
.L01677a84:
    addiu	$s2,$s2,4
    addiu	$s7,$s7,12
    beq	$s1,$s6,.L01677c38
    addiu	$s4,$s4,12
.L01677a94:
    lw	$a0,0($s2)
    pref	0x0,256($s2)
    addiu	$a3,$s1,-1
    beqz	$a0,.L01677a80
    sllv	$t0,$s3,$s1
    lw	$t3,24($s8)
    lw	$t1,40($s8)
    lw	$a7,36($s8)
    beq	$s1,$t3,.L01677b20
    addu	$a1,$s4,$t1
    and	$a2,$a7,$t0
    bnez	$a2,.L01677a60
    slt	$t1,$a3,$t3
    sltu	$a4,$t3,$s1
    move	$t0,$s1
    addiu	$t2,$t3,1
    beqz	$a4,.L01677b38
    subu	$t8,$s1,$t2
    bnez	$t1,.L01677a80
    move	$t0,$zero
    move	$t1,$s1
    nop
    nop
.L01677af0:
    beq	$t0,$t8,.L01677b90
    move	$t9,$s0
    sllv	$a5,$s3,$a3
    and	$a5,$a7,$a5
    addiu	$t0,$t0,1
    addiu	$a3,$a3,-1
    bnez	$a5,.L01677bbc
    slt	$t2,$a3,$t3
    beqz	$t2,.L01677af0
    addiu	$t1,$t1,-1
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677b20:
    move	$t9,$s0
    move	$a0,$s7
    jalr	$t9
    ld	$a1,208($sp)
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677b38:
    blez	$s1,.L01677b60
    move	$t9,$s0
.L01677b40:
    sllv	$a6,$s3,$a3
    and	$a6,$a7,$a6
    bnez	$a6,.L01677b74
    nop
    addiu	$a3,$a3,-1
    bne	$a3,$s5,.L01677b40
    addiu	$t0,$t0,-1
    move	$t9,$s0
.L01677b60:
    move	$a0,$s7
    jalr	$t9
    ld	$a1,192($sp)
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677b74:
    bne	$a3,$t3,.L01677c0c
    move	$t9,$s0
    move	$a0,$s7
    jalr	$t9
    ld	$a1,208($sp)
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677b90:
    move	$a0,$s7
    jalr	$t9
    ld	$a1,208($sp)
    ld	$t9,56($sp)
    lw	$t9,344($t9)
    lw	$a0,44($s8)
    ld	$a1,160($sp)
    jalr	$t9
    addu	$a0,$a0,$s4
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677bbc:
    sll	$a2,$t1,0x2
    lw	$a1,40($s8)
    subu	$a2,$a2,$t1
    move	$t9,$s0
    sll	$a2,$a2,0x2
    move	$a0,$s7
    addu	$a1,$a1,$a2
    sd	$a2,168($sp)
    jalr	$t9
    addiu	$a1,$a1,-12
    ld	$a2,168($sp)
    ld	$t9,56($sp)
    lw	$a1,44($s8)
    lw	$t9,344($t9)
    addu	$a0,$s4,$a1
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,-12
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677c0c:
    sll	$a2,$t0,0x2
    lw	$a1,40($s8)
    subu	$a2,$a2,$t0
    move	$t9,$s0
    sll	$a2,$a2,0x2
    move	$a0,$s7
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,-12
    b	.L01677a84
    addiu	$s1,$s1,1
.L01677c38:
    ld	$a4,256($sp)
.L01677c3c:
    lw	$a3,36($s8)
    and	$a3,$a3,$a4
    ld	$a4,264($sp)
    or	$a3,$a3,$a4
    blez	$s6,.L01677c98
    sw	$a3,36($s8)
    ld	$t8,224($sp)
.L01677c58:
    ld	$s2,56($sp)
    sll	$s3,$s6,0x2
    ld	$s1,216($sp)
    move	$s0,$t8
    addu	$s3,$s3,$t8
    nop
.L01677c70:
    lw	$t9,0($s0)
    beqz	$t9,.L01677c8c
    pref	0x0,256($s0)
    lw	$t9,404($s2)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,8
.L01677c8c:
    addiu	$s0,$s0,4
    bne	$s0,$s3,.L01677c70
    addiu	$s1,$s1,12
.L01677c98:
    ld	$s2,280($sp)
.L01677c9c:
    ld	$s3,288($sp)
    ld	$s8,80($sp)
    ld	$s4,96($sp)
    ld	$s0,104($sp)
    ld	$s6,120($sp)
    ld	$s5,128($sp)
    ld	$s7,136($sp)
    ld	$s1,144($sp)
    ld	$v0,184($sp)
    ld	$ra,88($sp)
    ld	$at,200($sp)
    sw	$at,0($v0)
    ld	$v0,152($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L01677cd8:
    ld	$t1,232($sp)
    ld	$t3,64($sp)
    lw	$t1,40($t1)
    lh	$t3,10($t3)
    lh	$t2,10($t1)
    slt	$v1,$t3,$t2
    sd	$a7,112($sp)
    bnez	$v1,.L01677d48
    lw	$t0,24($a7)
    beq	$t3,$t2,.L01677d38
    ld	$ra,64($sp)
.L01677d04:
    sll	$t8,$t0,0x2
    ld	$s6,216($sp)
    subu	$t8,$t8,$t0
    move	$s0,$t1
    sd	$zero,200($sp)
    sll	$t8,$t8,0x2
    sd	$t9,56($sp)
    b	.L01677d84
    addu	$s6,$s6,$t8
.L01677d28:
    bgtz	$s6,.L01677c58
    ld	$t8,224($sp)
    b	.L01677c9c
    ld	$s2,280($sp)
.L01677d38:
    lh	$at,8($t1)
    lh	$ra,8($ra)
    slt	$ra,$ra,$at
    beqz	$ra,.L01677d04
.L01677d48:
    ld	$at,64($sp)
    beqz	$at,.L01677ec0
    move	$s2,$at
    sll	$t8,$t0,0x2
    ld	$s6,216($sp)
    subu	$t8,$t8,$t0
    sd	$zero,200($sp)
    sll	$t8,$t8,0x2
    sd	$t9,56($sp)
    b	.L01677f3c
    addu	$s6,$s6,$t8
.L01677d74:
    ld	$t9,64($sp)
.L01677d78:
    beq	$s0,$t9,.L01677ee0
    ld	$t9,72($sp)
    lw	$s0,32($s0)
.L01677d84:
    lw	$ra,68($s0)
    beqz	$ra,.L01677d74
    ld	$t9,272($sp)
    move	$a0,$s6
    jalr	$t9
    addiu	$a1,$s0,56
    lw	$at,124($s0)
    sll	$at,$at,0x15
    lw	$t1,-5736($gp)
    lw	$a7,132($s0)
    bltz	$at,.L016780d0
    sll	$t0,$t1,0x2
.L01677db4:
    addu	$a1,$t0,$a7
    lw	$a1,0($a1)
    ld	$a2,256($sp)
    lw	$a0,36($a1)
    and	$a0,$a0,$a2
    sw	$a0,36($a1)
    lw	$v1,132($s0)
    addu	$v1,$t0,$v1
    lw	$v1,0($v1)
    ld	$a0,264($sp)
    lw	$v0,36($v1)
    or	$v0,$v0,$a0
    sw	$v0,36($v1)
    lw	$a2,36($s0)
    beqz	$a2,.L01677d78
    ld	$t9,64($sp)
    b	.L01677e1c
    lw	$a3,68($a2)
.L01677dfc:
    beq	$a2,$s0,.L01677d74
    move	$a2,$a7
    nop
    nop
    nop
.L01677e10:
    move	$s5,$zero
    move	$s1,$zero
    lw	$a3,68($a2)
.L01677e1c:
    li	$a5,1
    beqz	$a3,.L01677e6c
    ld	$t3,256($sp)
    lw	$t2,132($a2)
    addu	$t2,$t0,$t2
    lw	$t2,0($t2)
    lw	$t1,36($t2)
    and	$t1,$t1,$t3
    sw	$t1,36($t2)
    lw	$a7,132($a2)
    addu	$a7,$t0,$a7
    lw	$a7,0($a7)
    ld	$t1,264($sp)
    lw	$a6,36($a7)
    or	$a6,$a6,$t1
    sw	$a6,36($a7)
    lw	$a4,36($a2)
    movn	$s1,$a5,$a4
    movn	$a2,$a4,$a4
    move	$s5,$s1
.L01677e6c:
    bnez	$s5,.L01677e10
    nop
    lw	$a7,28($a2)
    bnez	$a7,.L01677dfc
    nop
    beq	$a2,$s0,.L01677d78
    ld	$t9,64($sp)
.L01677e88:
    lw	$a2,24($a2)
    lw	$a7,28($a2)
    bnez	$a7,.L01677dfc
    nop
    beq	$s0,$a2,.L01677dfc
    nop
    lw	$a2,24($a2)
    lw	$a7,28($a2)
    bnez	$a7,.L01677dfc
    nop
    bne	$s0,$a2,.L01677e88
    nop
    b	.L01677dfc
    nop
.L01677ec0:
    sll	$t8,$t0,0x2
    ld	$s6,216($sp)
    subu	$t8,$t8,$t0
    sd	$zero,200($sp)
    sll	$t8,$t8,0x2
    sd	$t9,56($sp)
    addu	$s6,$s6,$t8
    ld	$t9,72($sp)
.L01677ee0:
    beq	$t9,$s3,.L01677f14
    ld	$t9,272($sp)
    ld	$a1,232($sp)
    move	$a0,$s6
    jalr	$t9
    addiu	$a1,$a1,44
    ld	$a3,112($sp)
    ld	$a4,256($sp)
    lw	$a2,36($a3)
    and	$a2,$a2,$a4
    ld	$a4,264($sp)
    or	$a2,$a2,$a4
    sw	$a2,36($a3)
.L01677f14:
    ld	$t9,56($sp)
    lw	$t9,404($t9)
    move	$a0,$s6
    jalr	$t9
    addiu	$a1,$sp,4
    b	.L01677c9c
    ld	$s2,280($sp)
.L01677f30:
    lw	$s2,28($s2)
    beqz	$s2,.L01677ee0
    ld	$t9,72($sp)
.L01677f3c:
    lw	$ra,68($s2)
    beqz	$ra,.L01677f30
    ld	$t9,272($sp)
    move	$a0,$s6
    jalr	$t9
    addiu	$a1,$s2,56
    lw	$at,124($s2)
    ld	$a3,256($sp)
    sll	$at,$at,0x15
    lw	$a7,-5736($gp)
    lw	$a1,132($s2)
    bltz	$at,.L016780b0
    sll	$t0,$a7,0x2
.L01677f70:
    addu	$a2,$t0,$a1
    lw	$a2,0($a2)
    lw	$a0,36($a2)
    and	$a0,$a0,$a3
    sw	$a0,36($a2)
    lw	$v1,132($s2)
    addu	$v1,$t0,$v1
    lw	$v1,0($v1)
    ld	$a0,264($sp)
    lw	$v0,36($v1)
    or	$v0,$v0,$a0
    sw	$v0,36($v1)
    lw	$a2,36($s2)
    beqz	$a2,.L01677f30
    nop
    b	.L01677fdc
    lw	$a3,68($a2)
    nop
    nop
    nop
.L01677fc0:
    beq	$a2,$s2,.L01677f30
    move	$a2,$a1
    nop
    nop
.L01677fd0:
    move	$s4,$zero
    move	$s0,$zero
    lw	$a3,68($a2)
.L01677fdc:
    li	$a5,1
    beqz	$a3,.L0167802c
    ld	$t3,256($sp)
    lw	$t2,132($a2)
    addu	$t2,$t0,$t2
    lw	$t2,0($t2)
    lw	$t1,36($t2)
    and	$t1,$t1,$t3
    sw	$t1,36($t2)
    lw	$a7,132($a2)
    addu	$a7,$t0,$a7
    lw	$a7,0($a7)
    ld	$t1,264($sp)
    lw	$a6,36($a7)
    or	$a6,$a6,$t1
    sw	$a6,36($a7)
    lw	$a4,36($a2)
    movn	$s0,$a5,$a4
    movn	$a2,$a4,$a4
    move	$s4,$s0
.L0167802c:
    bnez	$s4,.L01677fd0
    nop
    lw	$a1,28($a2)
    bnez	$a1,.L01677fc0
    nop
    beq	$a2,$s2,.L01677f30
    nop
.L01678048:
    lw	$a2,24($a2)
    lw	$a1,28($a2)
    bnez	$a1,.L01677fc0
    nop
    beq	$s2,$a2,.L01677fc0
    nop
    lw	$a2,24($a2)
    lw	$a1,28($a2)
    bnez	$a1,.L01677fc0
    nop
    bne	$s2,$a2,.L01678048
    nop
    b	.L01677fc0
    nop
.L01678080:
    sd	$t3,248($sp)
    sd	$zero,200($sp)
    move	$ra,$a3
    sd	$ra,152($sp)
    sd	$zero,264($sp)
    sd	$zero,256($sp)
    sd	$s2,280($sp)
    sd	$t8,72($sp)
    b	.L01677660
    sd	$t9,56($sp)
.L016780a8:
    b	.L01677524
    li	$s3,1
.L016780b0:
    ld	$v0,200($sp)
    ld	$a0,232($sp)
    lw	$v1,24($s2)
    xor	$v1,$v1,$a0
    addiu	$a0,$v0,1
    movz	$v0,$a0,$v1
    b	.L01677f70
    sd	$v0,200($sp)
.L016780d0:
    ld	$a1,200($sp)
    ld	$a3,232($sp)
    lw	$a2,24($s0)
    xor	$a2,$a2,$a3
    addiu	$a3,$a1,1
    movz	$a1,$a3,$a2
    b	.L01677db4
    sd	$a1,200($sp)

glabel nfb12MaskRopLoop__MI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L01678770
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L016786e4
    sra	$t9,$t0,0x2
.L016786b0:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    nor	$t8,$t8,$zero
    pref	0x0,252($a0)
    and	$t3,$t3,$a5
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L016786b0
    sw	$t3,-4($a1)
.L016786e4:
    beqz	$t9,.L01678770
    nop
    nop
.L016786f0:
    lw	$t2,0($a0)
    lw	$t1,0($a1)
    nor	$t2,$t2,$zero
    and	$t1,$t1,$a5
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    lw	$a7,4($a1)
    nor	$t0,$t0,$zero
    and	$a7,$a7,$a5
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    lw	$a4,8($a1)
    nor	$a6,$a6,$zero
    and	$a4,$a4,$a5
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    lw	$at,12($a1)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    sltu	$v0,$a1,$a2
    nor	$v1,$v1,$zero
    and	$at,$at,$a5
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L016786f0
    sw	$at,-4($a1)
.L01678770:
    jr	$ra
    nop

glabel nfbHWColormapScreenInit
    addiu	$sp,$sp,-48
    sd	$a1,0($sp)
    sd	$a2,24($sp)
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    sll	$at,$a1,0x3
    lw	$t9,-28180($gp)
    sd	$s0,32($sp)
    subu	$at,$at,$a1
    lw	$s0,116($a0)
    sll	$a0,$at,0x2
    move	$v0,$a1
    jalr	$t9
    sd	$a0,16($sp)
    bnez	$v0,.L01679464
    sw	$v0,116($s0)
    move	$v0,$zero
.L01679454:
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L01679464:
    lw	$t9,-27756($gp)
    ld	$a0,24($sp)
    move	$a1,$v0
    jalr	$t9
    ld	$a2,16($sp)
    lw	$t9,-28180($gp)
    jalr	$t9
    li	$a0,552
    bnez	$v0,.L016794ac
    sw	$v0,124($s0)
    lw	$t9,-28196($gp)
    jalr	$t9
    lw	$a0,116($s0)
    ld	$ra,40($sp)
    move	$v0,$zero
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L016794ac:
    lw	$t9,-27756($gp)
    move	$a1,$v0
    ld	$a0,8($sp)
    jalr	$t9
    li	$a2,552
    li	$a0,23
    sw	$a0,120($s0)
    ld	$v1,0($sp)
    li	$v0,1
    b	.L01679454
    sw	$v1,112($s0)

glabel nfbSetDidFlags
    lw	$a4,-5736($gp)
    addiu	$sp,$sp,-80
    sd	$s5,8($sp)
    lw	$s5,132($a0)
    sll	$a4,$a4,0x2
    addu	$s5,$s5,$a4
    lw	$s5,0($s5)
    lw	$a1,24($a0)
    lw	$a5,32($s5)
    move	$a3,$zero
    sd	$s4,16($sp)
    move	$s4,$a0
    sd	$s1,64($sp)
    beqz	$a1,.L0167bebc
    andi	$a5,$a5,0xc
    lw	$a3,132($a1)
    sd	$ra,56($sp)
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
.L0167bcfc:
    sd	$s3,40($sp)
    sd	$s0,48($sp)
    lw	$t9,-30244($gp)
    lw	$a2,16($s4)
    move	$a0,$s4
    sd	$a5,0($sp)
    move	$a1,$s5
    jalr	$t9
    lw	$a2,116($a2)
    lw	$s0,36($s4)
    li	$a6,2
    li	$a7,4
    beqz	$s0,.L0167be98
    li	$s3,-5
    sd	$s2,72($sp)
    b	.L0167bd64
    move	$s2,$zero
.L0167bd40:
    lw	$a3,32($s1)
.L0167bd44:
    and	$a5,$s3,$a3
    or	$a5,$a4,$a5
    sw	$a5,32($s1)
    lw	$s0,28($s0)
    or	$s2,$a4,$s2
    andi	$a5,$a5,0x8
    beqz	$s0,.L0167be08
    or	$s2,$a5,$s2
.L0167bd64:
    lw	$t8,124($s0)
    lw	$t9,-5736($gp)
    lw	$s1,132($s0)
    sll	$t8,$t8,0x15
    sll	$t9,$t9,0x2
    addu	$s1,$s1,$t9
    move	$a4,$zero
    bgez	$t8,.L0167bd40
    lw	$s1,0($s1)
    lw	$a0,24($s0)
    beqz	$a0,.L0167bd40
    lbu	$a1,1($s0)
    lw	$a3,32($s1)
    andi	$t9,$a3,0x1
    beqz	$t9,.L0167beb4
    andi	$a4,$a3,0x2
    lw	$ra,32($s5)
    andi	$ra,$ra,0x1
    beqz	$ra,.L0167beb4
    nop
    beqz	$a4,.L0167bf48
    nop
    beq	$a6,$a1,.L0167bdd8
    move	$a3,$zero
    lw	$a1,120($s0)
    beqz	$a1,.L0167bf80
    lw	$t9,-28356($gp)
    lw	$a5,8($a1)
.L0167bdd4:
    move	$a3,$a5
.L0167bdd8:
    lbu	$at,1($a0)
    beq	$a6,$at,.L0167bf78
    nop
    lw	$a1,120($a0)
    beqz	$a1,.L0167bfa0
    lw	$t9,-28356($gp)
    lw	$a0,8($a1)
.L0167bdf4:
    move	$a4,$a7
    xor	$v0,$a3,$a0
    movz	$a4,$zero,$v0
.L0167be00:
    b	.L0167bd44
    lw	$a3,32($s1)
.L0167be08:
    ld	$s3,40($sp)
    move	$v1,$s2
    ld	$s0,48($sp)
    beqz	$v1,.L0167be98
    ld	$s2,72($sp)
    lw	$a0,32($s5)
    move	$s2,$s2
    ori	$a0,$a0,0x8
    sw	$a0,32($s5)
.L0167be2c:
    ld	$s5,8($sp)
    andi	$a1,$a0,0xc
    ld	$a2,0($sp)
    li	$a6,-9
    beqz	$a1,.L0167bec4
    lw	$a3,-5736($gp)
    lw	$a2,24($s4)
    beqz	$a2,.L0167be84
    move	$a1,$a2
    sll	$a0,$a3,0x2
    nop
    nop
    nop
.L0167be60:
    lw	$a4,132($a1)
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    lw	$a3,32($a4)
    ori	$a3,$a3,0x8
    sw	$a3,32($a4)
    lw	$a1,24($a1)
    bnez	$a1,.L0167be60
    nop
.L0167be84:
    ld	$ra,56($sp)
.L0167be88:
    ld	$s4,16($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0167be98:
    ld	$s3,40($sp)
    lw	$a0,32($s5)
    ld	$s0,48($sp)
    li	$a1,-9
    and	$a0,$a0,$a1
    b	.L0167be2c
    sw	$a0,32($s5)
.L0167beb4:
    b	.L0167bd44
    li	$a4,4
.L0167bebc:
    b	.L0167bcfc
    sd	$ra,56($sp)
.L0167bec4:
    beqz	$a2,.L0167be88
    ld	$ra,56($sp)
    lw	$a3,24($s4)
    beqz	$a3,.L0167be84
    move	$a1,$a3
    lw	$a0,-5736($gp)
    sll	$a0,$a0,0x2
.L0167bee0:
    lw	$a3,132($a1)
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    lw	$a5,32($a3)
    andi	$a2,$a5,0x8
    beqz	$a2,.L0167c000
    lw	$t9,-28184($gp)
    lw	$a4,36($a1)
    beqz	$a4,.L0167bf30
    and	$t0,$a6,$a5
.L0167bf08:
    lw	$a7,132($a4)
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    lw	$a7,32($a7)
    andi	$a7,$a7,0xc
    bnez	$a7,.L0167be88
    ld	$ra,56($sp)
    lw	$a4,28($a4)
    bnez	$a4,.L0167bf08
    and	$t0,$a6,$a5
.L0167bf30:
    sw	$t0,32($a3)
    lw	$a1,24($a1)
    bnez	$a1,.L0167bee0
    nop
    b	.L0167be88
    ld	$ra,56($sp)
.L0167bf48:
    lw	$a1,120($s0)
    beqz	$a1,.L0167bfc0
    lw	$t9,-28356($gp)
    lw	$a3,0($a1)
.L0167bf58:
    lw	$a1,120($a0)
    beqz	$a1,.L0167bfe0
    lw	$t9,-28356($gp)
    lw	$a0,0($a1)
.L0167bf68:
    move	$a4,$a7
    xor	$t1,$a3,$a0
    b	.L0167be00
    movz	$a4,$zero,$t1
.L0167bf78:
    b	.L0167bdf4
    move	$a0,$zero
.L0167bf80:
    jalr	$t9
    move	$a0,$s0
    lw	$a5,120($v0)
    li	$a6,2
    lw	$a0,24($s0)
    li	$a7,4
    b	.L0167bdd4
    lw	$a5,8($a5)
.L0167bfa0:
    jalr	$t9
    sd	$a3,32($sp)
    lw	$a0,120($v0)
    ld	$a3,32($sp)
    li	$a6,2
    li	$a7,4
    b	.L0167bdf4
    lw	$a0,8($a0)
.L0167bfc0:
    jalr	$t9
    move	$a0,$s0
    lw	$a3,120($v0)
    li	$a6,2
    lw	$a0,24($s0)
    li	$a7,4
    b	.L0167bf58
    lw	$a3,0($a3)
.L0167bfe0:
    jalr	$t9
    sd	$a3,24($sp)
    lw	$a0,120($v0)
    li	$a6,2
    ld	$a3,24($sp)
    li	$a7,4
    b	.L0167bf68
    lw	$a0,0($a0)
.L0167c000:
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,17528
    b	.L0167be88
    ld	$ra,56($sp)

glabel nfbSolidPolyGlyphBlt
    addiu	$sp,$sp,-336
    lw	$a7,44($a1)
    move	$t3,$s8
    addiu	$s8,$sp,336
    sd	$t3,-184($s8)
    lh	$t0,36($a7)
    sd	$a5,-232($s8)
    sd	$ra,-328($s8)
    sd	$a4,-256($s8)
    sd	$s7,-216($s8)
    sd	$s0,-176($s8)
    sd	$s6,-152($s8)
    sd	$s2,-192($s8)
    sd	$s1,-208($s8)
    lh	$s1,8($a0)
    sd	$s5,-200($s8)
    lh	$s5,10($a0)
    sd	$s3,-168($s8)
    lw	$s3,132($a0)
    lui	$t2,0xc
    sd	$s4,-160($s8)
    addiu	$t2,$t2,-6032
    sd	$gp,-144($s8)
    addu	$gp,$t9,$t2
    lw	$s4,-5736($gp)
    lw	$t1,-6768($gp)
    lw	$a6,76($a1)
    sll	$s4,$s4,0x2
    lw	$at,12($a7)
    addu	$s3,$s3,$s4
    sll	$t1,$t1,0x2
    lw	$s3,0($s3)
    addu	$a6,$a6,$t1
    lw	$a6,0($a6)
    lw	$s3,0($s3)
    lbu	$s2,72($a6)
    lw	$s6,64($a6)
    move	$s0,$a1
    sll	$at,$at,0x13
    lw	$s4,8($a6)
    move	$s7,$a0
    addu	$s5,$s5,$a3
    sd	$s4,-136($s8)
    addu	$s1,$s1,$a2
    bgez	$at,.L0167c258
    lw	$s4,76($a6)
    ld	$v1,-256($s8)
    lh	$v0,32($a7)
    multu	$t0,$v1
    addu	$v0,$v0,$s1
    sh	$v0,-80($s8)
    lw	$at,44($a1)
    lh	$at,22($at)
    addu	$at,$at,$s1
    mflo	$ra
    addu	$ra,$ra,$at
    sh	$ra,-76($s8)
    lw	$t9,44($a1)
    lh	$t9,26($t9)
    subu	$t9,$s5,$t9
    sh	$t9,-78($s8)
    lw	$t8,44($a1)
    lh	$t8,28($t8)
    addu	$t8,$t8,$s5
    b	.L0167c2a8
    sh	$t8,-74($s8)
.L0167c258:
    lw	$t9,-27944($gp)
    sd	$a6,-336($s8)
    move	$a0,$a7
    ld	$a1,-232($s8)
    ld	$a2,-256($s8)
    jalr	$t9
    addiu	$a3,$s8,-112
    ld	$a6,-336($s8)
    lw	$a0,-88($s8)
    lw	$a1,-84($s8)
    lw	$a3,-96($s8)
    lw	$a2,-100($s8)
    addu	$a3,$a3,$s5
    sh	$a3,-74($s8)
    subu	$a2,$s5,$a2
    sh	$a2,-78($s8)
    addu	$a1,$a1,$s1
    sh	$a1,-76($s8)
    addu	$a0,$a0,$s1
    sh	$a0,-80($s8)
.L0167c2a8:
    lw	$t9,0($s0)
    lw	$t9,380($t9)
    addiu	$a1,$s8,-80
    jalr	$t9
    lw	$a0,8($a6)
    li	$a6,2
    beqz	$v0,.L0167c6c8
    move	$a3,$v0
    li	$ra,1
    beq	$v0,$ra,.L0167c8a0
    ld	$t8,-256($s8)
    bne	$v0,$a6,.L0167c6c8
    ld	$t0,-256($s8)
    slti	$a7,$t0,4
    sll	$t0,$t0,0x5
    ld	$a5,-232($s8)
    li	$v1,-16
    addiu	$v0,$t0,15
    ld	$ra,-232($s8)
    and	$v0,$v0,$v1
    li	$a3,-2
    ld	$a1,-232($s8)
    subu	$sp,$sp,$v0
    andi	$a4,$s1,0x1f
    ld	$a2,-256($s8)
    move	$a6,$a3
    addiu	$a1,$a1,12
    beqz	$sp,.L0167c6c8
    sd	$sp,-224($s8)
    sd	$s4,-272($s8)
    sd	$s6,-280($s8)
    sd	$s3,-288($s8)
    beqz	$a2,.L0167c67c
    sd	$s2,-296($s8)
    ld	$t8,-224($s8)
    addu	$t9,$t8,$t0
    bnez	$a7,.L0167c9ac
    nop
    lw	$a7,0($a5)
    sd	$s5,-240($s8)
    lw	$v1,4($a5)
    pref	0x0,256($a5)
    ld	$t3,-224($s8)
    lh	$ra,0($a7)
    move	$t0,$s5
    addiu	$t1,$t9,-96
    lh	$s2,4($a7)
    move	$t8,$s1
    addiu	$a5,$a5,8
    lh	$t2,2($a7)
    pref	0x0,256($a5)
    move	$s1,$t3
    addu	$a2,$s2,$a4
    pref	0x1,256($t3)
    subu	$v0,$t2,$ra
    move	$a3,$t2
    nop
    nop
.L0167c390:
    sw	$t8,0($s1)
    slti	$at,$a2,32
    andi	$s5,$a2,0x1f
    sltu	$t9,$zero,$at
    slti	$t3,$a2,0
    lh	$at,2($v1)
    addiu	$t2,$v0,7
    addiu	$a0,$a2,32
    lh	$s6,0($v1)
    addu	$v0,$a3,$t8
    sw	$v0,12($s1)
    movz	$a0,$a2,$t3
    addu	$v0,$ra,$t8
    sw	$v0,8($s1)
    movn	$s5,$a0,$t9
    sw	$a4,4($s1)
    sra	$v0,$t2,0x3
    addiu	$v0,$v0,1
    lw	$t9,0($a5)
    and	$v0,$a6,$v0
    sw	$v0,28($s1)
    pref	0x0,256($a1)
    lh	$a2,6($a7)
    lh	$v0,8($a7)
    addiu	$s0,$a1,4
    addiu	$s4,$s1,32
    lh	$a0,4($v1)
    subu	$a2,$t0,$a2
    addu	$v0,$v0,$t0
    sw	$v0,20($s1)
    subu	$v0,$at,$s6
    addu	$t8,$s2,$t8
    sw	$a2,16($s1)
    beq	$s4,$t1,.L0167c97c
    addu	$a2,$a0,$s5
    sw	$t8,32($s1)
    slti	$a3,$a2,32
    andi	$s1,$a2,0x1f
    slti	$a7,$a2,0
    lh	$s3,2($t9)
    addiu	$a5,$v0,7
    addiu	$v0,$a2,32
    lh	$s2,0($t9)
    addu	$at,$at,$t8
    sw	$at,12($s4)
    movz	$v0,$a2,$a7
    addu	$at,$s6,$t8
    sw	$at,8($s4)
    movn	$s1,$v0,$a3
    sw	$s5,4($s4)
    sra	$at,$a5,0x3
    addiu	$at,$at,1
    lw	$a7,0($a1)
    and	$at,$a6,$at
    sw	$at,28($s4)
    lh	$v0,6($v1)
    lh	$at,8($v1)
    addiu	$a5,$a1,8
    addiu	$t2,$s4,32
    lh	$t3,4($t9)
    pref	0x1,256($t2)
    subu	$v1,$t0,$v0
    addu	$at,$at,$t0
    sw	$at,20($s4)
    subu	$v0,$s3,$s2
    addu	$t8,$a0,$t8
    sw	$v1,16($s4)
    beq	$t2,$t1,.L0167c958
    addu	$a2,$t3,$s1
    sw	$t8,32($s4)
    slti	$at,$a2,32
    andi	$a4,$a2,0x1f
    sltu	$a1,$zero,$at
    slti	$a0,$a2,0
    lh	$a3,2($a7)
    addiu	$v1,$v0,7
    addiu	$v0,$a2,32
    lh	$ra,0($a7)
    addu	$at,$s3,$t8
    sw	$at,44($s4)
    movz	$v0,$a2,$a0
    addu	$at,$s2,$t8
    sw	$at,40($s4)
    movn	$a4,$v0,$a1
    sw	$s1,36($s4)
    sra	$at,$v1,0x3
    addiu	$at,$at,1
    lw	$v1,0($s0)
    and	$at,$a6,$at
    sw	$at,60($s4)
    lh	$at,6($t9)
    lh	$v0,8($t9)
    addiu	$a1,$a5,4
    addiu	$s1,$s4,64
    lh	$s2,4($a7)
    subu	$at,$t0,$at
    addu	$v0,$v0,$t0
    sw	$v0,52($s4)
    subu	$v0,$a3,$ra
    addu	$t8,$t3,$t8
    sw	$at,48($s4)
    bne	$s1,$t1,.L0167c390
    addu	$a2,$s2,$a4
    move	$s0,$a5
    move	$s5,$a4
    move	$t3,$v0
    move	$s3,$a3
    move	$s6,$ra
    li	$t0,-2
    move	$a6,$v1
    move	$t9,$a7
    move	$a7,$a6
.L0167c550:
    sw	$t8,0($s1)
    lh	$a3,0($a7)
    lh	$ra,2($a7)
    sw	$s5,4($s1)
    addu	$t2,$s3,$t8
    sw	$t2,12($s1)
    addu	$t1,$s6,$t8
    sw	$t1,8($s1)
    addiu	$a6,$t3,7
    lw	$t1,0($s0)
    sra	$a6,$a6,0x3
    ld	$t2,-240($s8)
    addiu	$a6,$a6,1
    and	$a6,$t0,$a6
    sw	$a6,28($s1)
    lh	$a5,8($t9)
    lh	$a4,6($t9)
    lh	$v0,4($a7)
    addu	$a5,$a5,$t2
    subu	$a4,$t2,$a4
    sw	$a4,16($s1)
    addu	$a4,$s2,$t8
    sw	$a5,20($s1)
    addu	$a5,$ra,$a4
    subu	$ra,$ra,$a3
    sw	$a4,32($s1)
    addiu	$ra,$ra,7
    addu	$v1,$a3,$a4
    sra	$ra,$ra,0x3
    lh	$a3,0($t1)
    addiu	$ra,$ra,1
    lh	$s4,2($t1)
    slti	$at,$a2,32
    and	$ra,$t0,$ra
    sw	$ra,60($s1)
    addiu	$a0,$a2,32
    slti	$a1,$a2,0
    sw	$a5,44($s1)
    movz	$a0,$a2,$a1
    sw	$v1,40($s1)
    andi	$v1,$a2,0x1f
    movz	$a0,$v1,$at
    sw	$a0,36($s1)
    addu	$a4,$v0,$a4
    lh	$a6,8($a7)
    addu	$v1,$a3,$a4
    lh	$a5,6($a7)
    addu	$a6,$a6,$t2
    addu	$v0,$v0,$a0
    sw	$a4,64($s1)
    subu	$a5,$t2,$a5
    slti	$at,$v0,32
    sw	$v1,72($s1)
    addiu	$ra,$v0,32
    addu	$a1,$s4,$a4
    sw	$a1,76($s1)
    slti	$a0,$v0,0
    subu	$s4,$s4,$a3
    sw	$a5,48($s1)
    movz	$ra,$v0,$a0
    addiu	$s4,$s4,7
    sw	$a6,52($s1)
    andi	$v0,$v0,0x1f
    sra	$s4,$s4,0x3
    movz	$ra,$v0,$at
    sw	$ra,68($s1)
    addiu	$s4,$s4,1
    and	$s4,$t0,$s4
    sw	$s4,92($s1)
    lh	$s4,6($t1)
    lh	$t1,8($t1)
    subu	$s4,$t2,$s4
    sw	$s4,80($s1)
    addu	$t1,$t1,$t2
    sw	$t1,84($s1)
.L0167c67c:
    ld	$t0,-136($s8)
    lw	$t0,8($t0)
    ld	$t3,-232($s8)
    ld	$t2,-256($s8)
    li	$a3,1
    ld	$a7,-136($s8)
    beqz	$t0,.L0167c9a4
    sll	$t2,$t2,0x2
    lw	$a3,4($t0)
    blez	$a3,.L0167c6c8
    addiu	$a7,$t0,8
    addu	$t2,$t2,$t3
.L0167c6ac:
    sd	$a7,-264($s8)
    sd	$s7,-304($s8)
    sd	$t2,-312($s8)
    sll	$t1,$a3,0x3
    addu	$t1,$a7,$t1
    b	.L0167ca48
    sd	$t1,-248($s8)
.L0167c6c8:
    ld	$gp,-144($s8)
.L0167c6cc:
    ld	$s0,-176($s8)
    ld	$s1,-208($s8)
    ld	$s2,-192($s8)
    ld	$s3,-168($s8)
    ld	$s4,-160($s8)
    ld	$s5,-200($s8)
    ld	$s6,-152($s8)
    ld	$ra,-328($s8)
    ld	$t8,-184($s8)
    ld	$s7,-216($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t8
.L0167c700:
    ld	$t9,-264($s8)
    ld	$ra,-248($s8)
    lh	$a3,-80($s8)
    addiu	$t9,$t9,8
    lh	$a5,-76($s8)
    beq	$t9,$ra,.L0167c6c8
    sd	$t9,-264($s8)
    ld	$s0,-224($s8)
.L0167c720:
    ld	$v0,-264($s8)
    lh	$a7,0($v0)
    lh	$t0,4($v0)
    lh	$t9,6($v0)
    lh	$a0,2($v0)
    lh	$a2,-74($s8)
    slt	$a6,$a7,$a3
    slt	$a4,$t0,$a5
    movz	$a3,$a7,$a6
    lh	$t8,-78($s8)
    movz	$t0,$a5,$a4
    slt	$a1,$t9,$a2
    movz	$t9,$a2,$a1
    ld	$at,-256($s8)
    dsll32	$t3,$t9,0x10
    slt	$v1,$a0,$t8
    movz	$t8,$a0,$v1
    ld	$s2,-232($s8)
    dsll32	$ra,$t8,0x10
    pref	0x0,256($v0)
    beqz	$at,.L0167c700
    dsra32	$s3,$ra,0x10
    dsll32	$s4,$a3,0x10
    dsll32	$s1,$t0,0x10
    dsra32	$s1,$s1,0x10
    dsra32	$s4,$s4,0x10
    slt	$t1,$s4,$s1
    move	$s7,$s3
    beqz	$t1,.L0167c700
    move	$s5,$s4
    dsra32	$at,$t3,0x10
    sd	$at,-320($s8)
    slt	$at,$s3,$at
    bnez	$at,.L0167ca40
    ld	$a1,-320($s8)
    b	.L0167c700
    nop
    nop
    nop
    nop
.L0167c7c0:
    lw	$a3,28($s0)
    subu	$ra,$s7,$t0
    mult	$a3,$ra
    ld	$a7,-304($s8)
    ld	$t9,-288($s8)
    lw	$t0,12($s6)
    addiu	$a0,$s8,-120
    subu	$a1,$s5,$t8
    lw	$t9,12($t9)
    ld	$a6,-272($s8)
    andi	$a2,$a1,0x7
    mflo	$t1
    ld	$a5,-296($s8)
    sra	$a1,$a1,0x3
    addu	$t0,$t0,$t1
    ld	$a4,-280($s8)
    jalr	$t9
    addu	$a1,$a1,$t0
.L0167c808:
    ld	$at,-312($s8)
.L0167c80c:
    addiu	$s2,$s2,4
    move	$s5,$s4
    move	$s7,$s3
    ld	$a1,-320($s8)
    beq	$s2,$at,.L0167c700
    addiu	$s0,$s0,32
    lw	$t8,8($s0)
.L0167c828:
    lw	$v1,12($s0)
    slt	$s6,$s4,$t8
    slt	$a0,$v1,$s1
    movn	$s5,$t8,$s6
    movz	$v1,$s1,$a0
    dsll32	$v1,$v1,0x10
    lw	$t9,20($s0)
    dsll32	$s5,$s5,0x10
    dsra32	$s5,$s5,0x10
    lw	$t0,16($s0)
    slt	$a0,$t9,$a1
    dsra32	$v1,$v1,0x10
    lw	$s6,0($s2)
    movz	$t9,$a1,$a0
    subu	$v0,$v1,$s5
    dsll32	$t3,$t9,0x10
    sh	$v1,-116($s8)
    slt	$a3,$s3,$t0
    blez	$v0,.L0167c808
    sh	$s5,-120($s8)
    dsra32	$a2,$t3,0x10
    movn	$s7,$t0,$a3
    dsll32	$s7,$s7,0x10
    dsra32	$s7,$s7,0x10
    subu	$a1,$a2,$s7
    sh	$a2,-114($s8)
    bgtz	$a1,.L0167c7c0
    sh	$s7,-118($s8)
    b	.L0167c80c
    ld	$at,-312($s8)
.L0167c8a0:
    ld	$ra,-232($s8)
    ld	$t9,-256($s8)
    beqz	$t8,.L0167c6c8
    move	$s0,$ra
    sd	$s5,-240($s8)
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$ra
    sd	$t9,-312($s8)
.L0167c8c0:
    lw	$s5,0($s0)
    lh	$t3,8($s5)
    lh	$t1,6($s5)
    lh	$t0,2($s5)
    lh	$t2,0($s5)
    lw	$a1,12($s5)
    addu	$t9,$t2,$s1
    subu	$t0,$t0,$t2
    ld	$t2,-240($s8)
    sh	$t9,-128($s8)
    addu	$t9,$t0,$t9
    sh	$t9,-124($s8)
    move	$a7,$s7
    lh	$t8,6($s5)
    move	$a6,$s4
    move	$a5,$s2
    addu	$t1,$t1,$t3
    subu	$t2,$t2,$t8
    sh	$t2,-126($s8)
    move	$a4,$s6
    addu	$t1,$t1,$t2
    sh	$t1,-122($s8)
    move	$a2,$zero
    addiu	$t0,$t0,7
    lw	$t9,12($s3)
    addiu	$a0,$s8,-128
    sra	$t0,$t0,0x3
    li	$a3,-2
    addiu	$t0,$t0,1
    jalr	$t9
    and	$a3,$a3,$t0
    ld	$t8,-312($s8)
    lh	$t3,4($s5)
    addiu	$s0,$s0,4
    bne	$s0,$t8,.L0167c8c0
    addu	$s1,$t3,$s1
    b	.L0167c6cc
    ld	$gp,-144($s8)
.L0167c958:
    move	$at,$t3
    move	$t3,$v0
    li	$t0,-2
    move	$s5,$s1
    move	$s6,$s2
    move	$ra,$t2
    move	$s2,$at
    b	.L0167c550
    move	$s1,$ra
.L0167c97c:
    move	$s1,$s4
    move	$s0,$a1
    move	$s2,$a0
    move	$s3,$at
    li	$t0,-2
    move	$a7,$t9
    move	$t3,$v0
    move	$v0,$v1
    b	.L0167c550
    move	$t9,$v0
.L0167c9a4:
    b	.L0167c6ac
    addu	$t2,$t2,$t3
.L0167c9ac:
    lw	$t1,0($ra)
    lh	$t2,8($t1)
    lh	$a5,4($t1)
    lh	$v1,2($t1)
    lh	$t0,0($t1)
    lh	$t1,6($t1)
    addiu	$ra,$ra,4
    addiu	$t8,$t8,32
    subu	$t1,$s5,$t1
    addu	$t2,$t2,$s5
    addu	$a2,$t0,$s1
    addu	$a7,$v1,$s1
    sw	$s1,-32($t8)
    addu	$s1,$a5,$s1
    addu	$a5,$a5,$a4
    sw	$a4,-28($t8)
    andi	$a4,$a5,0x1f
    addiu	$a1,$a5,32
    sw	$t2,-12($t8)
    slti	$a6,$a5,0
    subu	$v1,$v1,$t0
    sw	$t1,-16($t8)
    movz	$a1,$a5,$a6
    addiu	$v1,$v1,7
    sw	$a7,-20($t8)
    slti	$a0,$a5,32
    sra	$v1,$v1,0x3
    sw	$a2,-24($t8)
    movn	$a4,$a1,$a0
    addiu	$v1,$v1,1
    and	$v1,$a3,$v1
    beq	$t8,$t9,.L0167c67c
    sw	$v1,-4($t8)
    b	.L0167c9ac
    li	$a3,-2
    nop
    nop
.L0167ca40:
    b	.L0167c828
    lw	$t8,8($s0)
.L0167ca48:
    lh	$a3,-80($s8)
    lh	$a5,-76($s8)
    b	.L0167c720
    ld	$s0,-224($s8)

glabel nfbPostValidateTree
    li	$a4,3
    lui	$at,0xc
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9328
    sd	$gp,0($sp)
    beqz	$a0,.L0167ce90
    addu	$gp,$t9,$at
    lw	$a5,16($a0)
    beq	$a2,$a4,.L0167ce9c
    lw	$a3,116($a5)
    lw	$v1,-5736($gp)
    lw	$v0,132($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$v0,32($v0)
    andi	$v0,$v0,0x8
    beqz	$v0,.L0167ce90
    nop
    lw	$t9,108($a3)
    sd	$ra,8($sp)
    jalr	$t9
    move	$a0,$a5
    ld	$ra,8($sp)
.L0167ce90:
    ld	$gp,0($sp)
.L0167ce94:
    jr	$ra
    addiu	$sp,$sp,16
.L0167ce9c:
    lw	$a1,40($a3)
    move	$a2,$zero
    beqz	$a1,.L0167ce90
    move	$a0,$zero
    nop
.L0167ceb0:
    lw	$a7,64($a3)
    lw	$t0,68($a3)
    addu	$a7,$a7,$a2
    lw	$a6,0($a7)
    addu	$t0,$t0,$a2
    lw	$t0,0($t0)
    subu	$a6,$a6,$t0
    sw	$a6,0($a7)
    lw	$a5,68($a3)
    addu	$a5,$a5,$a2
    sw	$zero,0($a5)
    lw	$a4,40($a3)
    addiu	$a0,$a0,1
    sltu	$a4,$a0,$a4
    bnez	$a4,.L0167ceb0
    addiu	$a2,$a2,4
    b	.L0167ce94
    ld	$gp,0($sp)

glabel nfbStereoFillSpans
    lw	$a6,72($a1)
    addiu	$sp,$sp,-160
    sd	$a6,8($sp)
    sd	$a5,80($sp)
    sd	$a4,64($sp)
    sd	$a1,88($sp)
    sd	$a0,72($sp)
    sd	$s1,96($sp)
    sd	$s7,32($sp)
    lw	$s7,16($a0)
    sd	$s3,16($sp)
    sd	$s6,40($sp)
    lui	$s6,0xb
    sd	$s4,24($sp)
    addiu	$s6,$s6,26128
    sd	$gp,56($sp)
    addu	$gp,$t9,$s6
    lw	$s4,-6768($gp)
    lw	$s3,76($a1)
    sd	$s5,104($sp)
    sll	$s4,$s4,0x2
    lw	$s7,116($s7)
    addu	$s3,$s3,$s4
    lw	$s3,0($s3)
    lhu	$s7,226($s7)
    lw	$t8,8($s3)
    lw	$v1,92($s3)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s3)
    lw	$v0,16($a0)
    sd	$s0,112($sp)
    lw	$v0,116($v0)
    sd	$ra,120($sp)
    lw	$v0,220($v0)
    slti	$a7,$a2,1
    sd	$s8,48($sp)
    move	$s8,$a3
    sd	$s2,136($sp)
    move	$s6,$a2
    xori	$s4,$a7,0x1
    beq	$at,$v0,.L01684cbc
    sd	$t8,0($sp)
    lw	$t8,100($s3)
    bne	$zero,$a7,.L01684774
    sw	$t8,8($s3)
    move	$a7,$a2
    andi	$a3,$a2,0x7
    move	$a2,$s8
    sll	$t1,$s6,0x2
    beqz	$a3,.L0168449c
    addu	$t1,$t1,$s8
.L01684480:
    lh	$t2,2($a2)
    addiu	$a2,$a2,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a2)
    addu	$t2,$t2,$s7
    bnez	$a3,.L01684480
    sh	$t2,-2($a2)
.L0168449c:
    sra	$t0,$a7,0x3
    beqz	$t0,.L01684774
    slti	$t3,$t0,3
    bnez	$t3,.L016855d0
    nop
    lh	$a0,62($a2)
    lh	$a1,26($a2)
    lh	$v0,10($a2)
    lh	$v1,18($a2)
    lh	$a6,30($a2)
    lh	$at,14($a2)
    lh	$s5,54($a2)
    lh	$t3,58($a2)
    lh	$t8,2($a2)
    addiu	$a4,$a2,64
    lh	$ra,6($a2)
    addiu	$a3,$a2,32
    lh	$t9,22($a2)
    move	$a5,$s7
    pref	0x1,258($a2)
    addiu	$a7,$t1,-64
    addu	$v0,$v0,$s7
    sd	$s6,152($sp)
    addu	$v1,$v1,$s7
    addu	$a1,$a1,$s7
    sd	$s4,128($sp)
    move	$s4,$a0
    addu	$a6,$a6,$s7
    sd	$s3,144($sp)
    move	$t1,$at
    move	$s3,$a6
.L01684518:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    addu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    addu	$at,$t9,$a5
    sh	$at,22($a2)
    addu	$t9,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a2)
    addu	$v1,$v1,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a2)
    addu	$v0,$v0,$a5
    addu	$at,$t8,$a5
    beq	$a3,$a7,.L01684c7c
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    addu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    addu	$at,$s5,$a5
    sh	$at,22($a3)
    addu	$t9,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a3)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a3)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    beq	$a4,$a7,.L01684c30
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    addu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    addu	$at,$a1,$a5
    sh	$at,22($a4)
    addu	$a1,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a4)
    addu	$v1,$v0,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a4)
    addu	$v0,$s5,$a5
    addu	$at,$t8,$a5
    beq	$a6,$a7,.L01684bf8
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    addu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    addu	$at,$t2,$a5
    sh	$at,22($a6)
    addu	$a1,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a6)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a6)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    bne	$a2,$a7,.L01684518
    sh	$at,2($a6)
    move	$t2,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$s0,$ra
    move	$ra,$a2
    ld	$s6,152($sp)
    move	$a7,$s3
    ld	$s3,144($sp)
    move	$s2,$s4
    move	$a0,$a3
    ld	$s4,128($sp)
    move	$t0,$t1
    move	$t1,$a0
.L016846f0:
    sh	$t3,10($ra)
    sh	$t2,18($ra)
    lh	$a4,18($t1)
    lh	$a5,14($t1)
    lh	$a3,10($t1)
    lh	$a6,6($t1)
    lh	$at,2($t1)
    sh	$a1,26($ra)
    sh	$a7,30($ra)
    addu	$a0,$t9,$s7
    sh	$a0,22($ra)
    addu	$v1,$t0,$s7
    sh	$v1,14($ra)
    addu	$v0,$s0,$s7
    sh	$v0,6($ra)
    addu	$a2,$t8,$s7
    sh	$a2,2($ra)
    addu	$a0,$s5,$s7
    sh	$a0,22($t1)
    addu	$v1,$s2,$s7
    sh	$v1,30($t1)
    addu	$v0,$s1,$s7
    sh	$v0,26($t1)
    addu	$at,$at,$s7
    sh	$at,2($t1)
    addu	$a6,$a6,$s7
    sh	$a6,6($t1)
    addu	$a5,$a5,$s7
    sh	$a5,14($t1)
    addu	$a4,$a4,$s7
    sh	$a4,18($t1)
    addu	$a3,$a3,$s7
    sh	$a3,10($t1)
.L01684774:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    addu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,88($sp)
    addu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,0($t9)
    ld	$a5,80($sp)
    move	$a3,$s8
    ld	$a4,64($sp)
    jalr	$t9
    move	$a2,$s6
    lw	$v0,96($s3)
    beqz	$s4,.L01684ab8
    sw	$v0,8($s3)
    move	$a7,$s6
    andi	$a3,$s6,0x7
    move	$a2,$s8
    sll	$t1,$s6,0x2
    beqz	$a3,.L016847f0
    addu	$t1,$t1,$s8
.L016847d4:
    lh	$t2,2($a2)
    addiu	$a2,$a2,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a2)
    subu	$t2,$t2,$s7
    bnez	$a3,.L016847d4
    sh	$t2,-2($a2)
.L016847f0:
    sra	$t0,$a7,0x3
    beqz	$t0,.L01684ab8
    slti	$t3,$t0,3
    bnez	$t3,.L01685640
    nop
    lh	$a1,26($a2)
    lh	$v1,18($a2)
    lh	$v0,10($a2)
    lh	$a0,30($a2)
    lh	$at,14($a2)
    lh	$s5,54($a2)
    lh	$t3,58($a2)
    lh	$s4,62($a2)
    lh	$t8,2($a2)
    addiu	$a4,$a2,64
    lh	$ra,6($a2)
    addiu	$a3,$a2,32
    lh	$t9,22($a2)
    move	$a5,$s7
    addiu	$a7,$t1,-64
    pref	0x1,258($a2)
    subu	$v0,$v0,$s7
    subu	$v1,$v1,$s7
    sd	$s6,152($sp)
    subu	$a1,$a1,$s7
    subu	$a0,$a0,$s7
    sd	$s3,144($sp)
    move	$t1,$at
    move	$s3,$a0
.L01684864:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    subu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    subu	$at,$t9,$a5
    sh	$at,22($a2)
    subu	$t9,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a2)
    subu	$v1,$v1,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a2)
    subu	$v0,$v0,$a5
    subu	$at,$t8,$a5
    beq	$a3,$a7,.L01684bbc
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    subu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    subu	$at,$s5,$a5
    sh	$at,22($a3)
    subu	$t9,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a3)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a3)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    beq	$a4,$a7,.L01684b78
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    subu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    subu	$at,$a1,$a5
    sh	$at,22($a4)
    subu	$a1,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a4)
    subu	$v1,$v0,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a4)
    subu	$v0,$s5,$a5
    subu	$at,$t8,$a5
    beq	$a6,$a7,.L01684b40
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    subu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    subu	$at,$t2,$a5
    sh	$at,22($a6)
    subu	$a1,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a6)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a6)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    bne	$a2,$a7,.L01684864
    sh	$at,2($a6)
    move	$s0,$a2
    move	$s2,$s4
    move	$a7,$v1
    move	$t0,$t1
    move	$t1,$v0
    ld	$s6,152($sp)
    move	$t2,$s3
    move	$a0,$a3
    ld	$s3,144($sp)
    move	$s1,$t3
    move	$t3,$a0
.L01684a34:
    sh	$t1,10($s0)
    sh	$a7,18($s0)
    lh	$a3,18($t3)
    lh	$a4,14($t3)
    lh	$a2,10($t3)
    lh	$a5,6($t3)
    lh	$a6,2($t3)
    sh	$a1,26($s0)
    sh	$t2,30($s0)
    subu	$v1,$t9,$s7
    sh	$v1,22($s0)
    subu	$v0,$t0,$s7
    sh	$v0,14($s0)
    subu	$at,$ra,$s7
    sh	$at,6($s0)
    subu	$a0,$t8,$s7
    sh	$a0,2($s0)
    subu	$v1,$s5,$s7
    sh	$v1,22($t3)
    subu	$v0,$s2,$s7
    sh	$v0,30($t3)
    subu	$at,$s1,$s7
    sh	$at,26($t3)
    subu	$a6,$a6,$s7
    sh	$a6,2($t3)
    subu	$a5,$a5,$s7
    sh	$a5,6($t3)
    subu	$a4,$a4,$s7
    sh	$a4,14($t3)
    subu	$a3,$a3,$s7
    sh	$a3,18($t3)
    subu	$a2,$a2,$s7
    sh	$a2,10($t3)
.L01684ab8:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    subu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,88($sp)
    subu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,0($t9)
    ld	$a5,80($sp)
    move	$a3,$s8
    ld	$a4,64($sp)
    jalr	$t9
    move	$a2,$s6
    ld	$s2,136($sp)
.L01684af8:
    ld	$s8,48($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$s4,24($sp)
    ld	$s0,112($sp)
    ld	$s5,104($sp)
    ld	$s1,96($sp)
    ld	$gp,56($sp)
    ld	$v0,8($sp)
    ld	$a0,0($sp)
    sw	$a0,8($s3)
    ld	$v1,88($sp)
    ld	$ra,120($sp)
    sw	$v0,72($v1)
    sw	$zero,104($s3)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L01684b40:
    move	$a7,$v1
    move	$t1,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$s5,$t9
    move	$t9,$t2
    move	$a3,$s3
    move	$t3,$a2
    ld	$s6,152($sp)
    move	$a2,$a6
    move	$t2,$a3
    ld	$s3,144($sp)
    b	.L01684a34
    move	$s0,$a2
.L01684b78:
    move	$s2,$s4
    move	$a7,$v1
    move	$t0,$t1
    move	$t1,$v0
    move	$s1,$t3
    move	$s5,$t2
    move	$s0,$a4
    move	$a4,$a6
    move	$a6,$t9
    move	$t9,$a1
    move	$a5,$s3
    ld	$s6,152($sp)
    move	$a1,$a6
    move	$t2,$a5
    ld	$s3,144($sp)
    b	.L01684a34
    move	$t3,$a4
.L01684bbc:
    move	$t3,$a4
    move	$a7,$v1
    move	$t1,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$at,$t9
    move	$t9,$s5
    move	$s5,$a1
    move	$t2,$s3
    ld	$s3,144($sp)
    move	$s6,$a3
    move	$a1,$at
    move	$s0,$s6
    b	.L01684a34
    ld	$s6,152($sp)
.L01684bf8:
    move	$t1,$a2
    move	$ra,$a6
    move	$s5,$t9
    move	$t9,$t2
    move	$t2,$v1
    ld	$s6,152($sp)
    move	$t8,$s0
    move	$a7,$s3
    ld	$s3,144($sp)
    move	$t3,$v0
    move	$v0,$a0
    ld	$s4,128($sp)
    b	.L016846f0
    move	$s0,$v0
.L01684c30:
    move	$s5,$t2
    move	$t2,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$s0,$ra
    move	$s2,$s4
    move	$t0,$t1
    move	$a3,$t9
    move	$t9,$a1
    move	$a7,$s3
    ld	$s6,152($sp)
    move	$a0,$a4
    move	$a2,$a6
    ld	$s3,144($sp)
    move	$a1,$a3
    move	$t1,$a2
    ld	$s4,128($sp)
    b	.L016846f0
    move	$ra,$a0
.L01684c7c:
    move	$ra,$a3
    move	$t2,$v1
    move	$t3,$v0
    move	$t1,$a4
    move	$a4,$t9
    move	$t9,$s5
    move	$s5,$a1
    ld	$s6,152($sp)
    move	$a7,$s3
    move	$a5,$a0
    ld	$s3,144($sp)
    move	$t8,$s0
    move	$s0,$a5
    ld	$s4,128($sp)
    b	.L016846f0
    move	$a1,$a4
.L01684cbc:
    andi	$a3,$a2,0x7
    sll	$t1,$a2,0x2
    lw	$t2,96($s3)
    sw	$t2,8($s3)
    bne	$zero,$a7,.L01684fdc
    addu	$t1,$t1,$s8
    move	$a4,$s8
    addiu	$t2,$t1,-64
    beqz	$a3,.L01684d00
    move	$a7,$a2
.L01684ce4:
    lh	$t3,2($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a4)
    subu	$t3,$t3,$s7
    bnez	$a3,.L01684ce4
    sh	$t3,-2($a4)
.L01684d00:
    addiu	$a2,$a4,64
    sra	$t0,$a7,0x3
    move	$a7,$t2
    move	$a6,$a2
    beqz	$t0,.L01684fdc
    slti	$t0,$t0,3
    bnez	$t0,.L016854dc
    nop
    lh	$a1,26($a4)
    lh	$v1,18($a4)
    lh	$v0,10($a4)
    lh	$a0,30($a4)
    lh	$at,62($a4)
    pref	0x1,258($a4)
    lh	$t9,22($a4)
    lh	$t1,14($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    move	$a5,$s7
    move	$a2,$a4
    lh	$t3,58($a4)
    addiu	$a3,$a4,32
    lh	$s5,54($a4)
    move	$a4,$a6
    sd	$s6,152($sp)
    subu	$a1,$a1,$s7
    subu	$v1,$v1,$s7
    sd	$s3,144($sp)
    subu	$v0,$v0,$s7
    subu	$a0,$a0,$s7
    sd	$s4,128($sp)
    move	$s4,$at
    move	$s3,$a0
.L01684d84:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    subu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    subu	$at,$t9,$a5
    sh	$at,22($a2)
    subu	$t9,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a2)
    subu	$v1,$v1,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a2)
    subu	$v0,$v0,$a5
    subu	$at,$t8,$a5
    beq	$a3,$a7,.L0168549c
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    subu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    subu	$at,$s5,$a5
    sh	$at,22($a3)
    subu	$t9,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a3)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a3)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    beq	$a4,$a7,.L01685454
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    subu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    subu	$at,$a1,$a5
    sh	$at,22($a4)
    subu	$a1,$t3,$a5
    subu	$at,$t1,$a5
    sh	$at,14($a4)
    subu	$v1,$v0,$a5
    subu	$at,$ra,$a5
    sh	$at,6($a4)
    subu	$v0,$s5,$a5
    subu	$at,$t8,$a5
    beq	$a6,$a7,.L0168541c
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    subu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    subu	$at,$t2,$a5
    sh	$at,22($a6)
    subu	$a1,$s1,$a5
    subu	$at,$t0,$a5
    sh	$at,14($a6)
    subu	$v1,$v0,$a5
    subu	$at,$a0,$a5
    sh	$at,6($a6)
    subu	$v0,$s6,$a5
    subu	$at,$s0,$a5
    bne	$a2,$a7,.L01684d84
    sh	$at,2($a6)
    move	$t2,$v1
    move	$s0,$v0
    move	$t0,$t1
    move	$t1,$a2
    ld	$s6,152($sp)
    move	$a7,$a3
    move	$a3,$s3
    ld	$s3,144($sp)
    move	$s2,$s4
    ld	$s4,128($sp)
    move	$s1,$t3
    move	$t3,$a3
.L01684f58:
    sh	$t2,18($t1)
    sh	$s0,10($t1)
    lh	$v0,2($a7)
    lh	$at,6($a7)
    lh	$a4,10($a7)
    lh	$a6,14($a7)
    lh	$a5,18($a7)
    subu	$a3,$t8,$s7
    sh	$a3,2($t1)
    subu	$v1,$ra,$s7
    sh	$v1,6($t1)
    subu	$a0,$t0,$s7
    sh	$a0,14($t1)
    sh	$t3,30($t1)
    sh	$a1,26($t1)
    subu	$a2,$t9,$s7
    sh	$a2,22($t1)
    subu	$a2,$s5,$s7
    sh	$a2,22($a7)
    subu	$a0,$s2,$s7
    sh	$a0,30($a7)
    subu	$v1,$s1,$s7
    sh	$v1,26($a7)
    subu	$v0,$v0,$s7
    sh	$v0,2($a7)
    subu	$at,$at,$s7
    sh	$at,6($a7)
    subu	$a6,$a6,$s7
    sh	$a6,14($a7)
    subu	$a5,$a5,$s7
    sh	$a5,18($a7)
    subu	$a4,$a4,$s7
    sh	$a4,10($a7)
.L01684fdc:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    subu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,88($sp)
    subu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,0($t9)
    ld	$a5,80($sp)
    move	$a3,$s8
    ld	$a4,64($sp)
    jalr	$t9
    move	$a2,$s6
    andi	$a3,$s6,0x7
    sll	$t1,$s6,0x2
    lw	$t2,100($s3)
    sw	$t2,8($s3)
    beqz	$s4,.L0168532c
    addu	$t1,$t1,$s8
    move	$a4,$s8
    move	$a7,$s6
    beqz	$a3,.L01685060
    addiu	$t2,$t1,-64
.L01685040:
    lh	$t3,2($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,-1
    pref	0x1,254($a4)
    addu	$t3,$t3,$s7
    bnez	$a3,.L01685040
    sh	$t3,-2($a4)
    addiu	$t2,$t1,-64
.L01685060:
    sra	$t0,$a7,0x3
    addiu	$a2,$a4,64
    move	$a7,$t2
    beqz	$t0,.L0168532c
    slti	$t0,$t0,3
    bnez	$t0,.L01685560
    move	$a0,$a2
    lh	$a1,26($a4)
    lh	$v1,18($a4)
    lh	$at,30($a4)
    lh	$v0,10($a4)
    pref	0x1,258($a4)
    lh	$t9,22($a4)
    lh	$t1,14($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    move	$a5,$s7
    lh	$s4,62($a4)
    addiu	$a3,$a4,32
    lh	$t3,58($a4)
    move	$a2,$a4
    lh	$s5,54($a4)
    move	$a4,$a0
    addu	$a1,$a1,$s7
    sd	$s6,152($sp)
    addu	$v1,$v1,$s7
    addu	$at,$at,$s7
    sd	$s3,144($sp)
    addu	$v0,$v0,$s7
    move	$s3,$at
.L016850d8:
    sh	$v0,10($a2)
    sh	$v1,18($a2)
    lh	$v1,18($a3)
    lh	$t0,14($a3)
    lh	$v0,10($a3)
    lh	$a0,6($a3)
    lh	$s0,2($a3)
    sh	$a1,26($a2)
    sh	$s3,30($a2)
    lh	$s2,30($a4)
    lh	$s1,26($a4)
    addu	$s3,$s4,$a5
    addiu	$a6,$a4,32
    lh	$a1,22($a4)
    addu	$at,$t9,$a5
    sh	$at,22($a2)
    addu	$t9,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a2)
    addu	$v1,$v1,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a2)
    addu	$v0,$v0,$a5
    addu	$at,$t8,$a5
    beq	$a3,$a7,.L016853e4
    sh	$at,2($a2)
    sh	$v0,10($a3)
    sh	$v1,18($a3)
    lh	$v0,18($a4)
    lh	$t1,14($a4)
    lh	$s6,10($a4)
    lh	$ra,6($a4)
    lh	$t8,2($a4)
    sh	$t9,26($a3)
    sh	$s3,30($a3)
    lh	$s4,62($a4)
    lh	$t3,58($a4)
    addu	$s3,$s2,$a5
    addiu	$a2,$a4,64
    lh	$t2,54($a4)
    addu	$at,$s5,$a5
    sh	$at,22($a3)
    addu	$t9,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a3)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a3)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    beq	$a4,$a7,.L016853a0
    sh	$at,2($a3)
    sh	$v0,10($a4)
    sh	$v1,18($a4)
    lh	$v0,50($a4)
    lh	$t0,46($a4)
    lh	$s5,42($a4)
    lh	$a0,38($a4)
    lh	$s0,34($a4)
    sh	$t9,26($a4)
    sh	$s3,30($a4)
    pref	0x1,258($a2)
    lh	$s2,94($a4)
    lh	$s1,90($a4)
    addu	$s3,$s4,$a5
    addiu	$a3,$a4,96
    lh	$t9,86($a4)
    addu	$at,$a1,$a5
    sh	$at,22($a4)
    addu	$a1,$t3,$a5
    addu	$at,$t1,$a5
    sh	$at,14($a4)
    addu	$v1,$v0,$a5
    addu	$at,$ra,$a5
    sh	$at,6($a4)
    addu	$v0,$s5,$a5
    addu	$at,$t8,$a5
    beq	$a6,$a7,.L01685370
    sh	$at,2($a4)
    sh	$v0,10($a6)
    sh	$v1,18($a6)
    lh	$v0,82($a4)
    lh	$t1,78($a4)
    lh	$s6,74($a4)
    lh	$ra,70($a4)
    lh	$t8,66($a4)
    sh	$a1,26($a6)
    sh	$s3,30($a6)
    lh	$s4,126($a4)
    lh	$t3,122($a4)
    addu	$s3,$s2,$a5
    addiu	$a4,$a4,128
    lh	$s5,22($a3)
    addu	$at,$t2,$a5
    sh	$at,22($a6)
    addu	$a1,$s1,$a5
    addu	$at,$t0,$a5
    sh	$at,14($a6)
    addu	$v1,$v0,$a5
    addu	$at,$a0,$a5
    sh	$at,6($a6)
    addu	$v0,$s6,$a5
    addu	$at,$s0,$a5
    bne	$a2,$a7,.L016850d8
    sh	$at,2($a6)
    move	$t2,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$s2,$s4
    move	$s4,$a2
    ld	$s6,152($sp)
    move	$a7,$s3
    move	$a0,$a3
    ld	$s3,144($sp)
    move	$t0,$t1
    move	$t1,$a0
.L016852a8:
    sh	$t2,18($s4)
    sh	$t3,10($s4)
    lh	$at,2($t1)
    lh	$a6,6($t1)
    lh	$a3,10($t1)
    lh	$a5,14($t1)
    lh	$a4,18($t1)
    addu	$a2,$t8,$s7
    sh	$a2,2($s4)
    addu	$v0,$ra,$s7
    sh	$v0,6($s4)
    addu	$v1,$t0,$s7
    sh	$v1,14($s4)
    sh	$a7,30($s4)
    sh	$a1,26($s4)
    addu	$a0,$t9,$s7
    sh	$a0,22($s4)
    addu	$a0,$s5,$s7
    sh	$a0,22($t1)
    addu	$v1,$s2,$s7
    sh	$v1,30($t1)
    addu	$v0,$s1,$s7
    sh	$v0,26($t1)
    addu	$at,$at,$s7
    sh	$at,2($t1)
    addu	$a6,$a6,$s7
    sh	$a6,6($t1)
    addu	$a5,$a5,$s7
    sh	$a5,14($t1)
    addu	$a4,$a4,$s7
    sh	$a4,18($t1)
    addu	$a3,$a3,$s7
    sh	$a3,10($t1)
.L0168532c:
    ld	$a0,72($sp)
    lh	$at,10($a0)
    addu	$at,$at,$s7
    sh	$at,10($a0)
    lh	$ra,90($s3)
    ld	$a1,88($sp)
    addu	$ra,$ra,$s7
    sh	$ra,90($s3)
    lw	$t9,72($a1)
    lw	$t9,0($t9)
    ld	$a5,80($sp)
    move	$a3,$s8
    ld	$a4,64($sp)
    jalr	$t9
    move	$a2,$s6
    b	.L01684af8
    ld	$s2,136($sp)
.L01685370:
    move	$t1,$a2
    move	$s4,$a6
    move	$s5,$t9
    move	$t9,$t2
    move	$t2,$v1
    move	$t3,$v0
    move	$ra,$a0
    move	$t8,$s0
    ld	$s6,152($sp)
    move	$a7,$s3
    b	.L016852a8
    ld	$s3,144($sp)
.L016853a0:
    move	$s5,$t2
    move	$t2,$v1
    move	$s1,$t3
    move	$t3,$v0
    move	$s2,$s4
    move	$a7,$s3
    move	$t0,$t1
    move	$a3,$t9
    move	$t9,$a1
    move	$a0,$a4
    move	$a2,$a6
    ld	$s6,152($sp)
    move	$a1,$a3
    move	$t1,$a2
    ld	$s3,144($sp)
    b	.L016852a8
    move	$s4,$a0
.L016853e4:
    move	$s4,$a3
    move	$t2,$v1
    move	$t3,$v0
    move	$ra,$a0
    move	$t8,$s0
    move	$t1,$a4
    move	$a4,$t9
    move	$t9,$s5
    ld	$s6,152($sp)
    move	$s5,$a1
    move	$a7,$s3
    ld	$s3,144($sp)
    b	.L016852a8
    move	$a1,$a4
.L0168541c:
    move	$a7,$a2
    move	$t1,$a6
    move	$s5,$t9
    move	$t9,$t2
    move	$t2,$v1
    move	$ra,$a0
    ld	$s6,152($sp)
    move	$t3,$s3
    ld	$s3,144($sp)
    move	$t8,$s0
    move	$a5,$v0
    ld	$s4,128($sp)
    b	.L01684f58
    move	$s0,$a5
.L01685454:
    move	$a7,$a6
    move	$s5,$t2
    move	$t2,$v1
    move	$s0,$v0
    move	$t0,$t1
    move	$s1,$t3
    move	$a0,$t9
    move	$t9,$a1
    move	$at,$s3
    ld	$s3,144($sp)
    move	$s2,$s4
    move	$s6,$a4
    ld	$s4,128($sp)
    move	$a1,$a0
    move	$t3,$at
    move	$t1,$s6
    b	.L01684f58
    ld	$s6,152($sp)
.L0168549c:
    move	$a7,$a4
    move	$t2,$v1
    move	$ra,$a0
    move	$a2,$t9
    move	$t9,$s5
    move	$s5,$a1
    move	$t3,$s3
    ld	$s6,152($sp)
    move	$t1,$a3
    move	$a3,$v0
    ld	$s3,144($sp)
    move	$t8,$s0
    move	$s0,$a3
    ld	$s4,128($sp)
    b	.L01684f58
    move	$a1,$a2
.L016854dc:
    lh	$t9,30($a4)
    lh	$t8,26($a4)
    lh	$t3,22($a4)
    lh	$t2,18($a4)
    lh	$t0,14($a4)
    lh	$a7,10($a4)
    lh	$a6,6($a4)
    lh	$a5,2($a4)
    addiu	$a4,$a4,32
    subu	$t9,$t9,$s7
    sh	$t9,-2($a4)
    subu	$t8,$t8,$s7
    sh	$t8,-6($a4)
    subu	$t3,$t3,$s7
    sh	$t3,-10($a4)
    subu	$t2,$t2,$s7
    sh	$t2,-14($a4)
    subu	$t0,$t0,$s7
    sh	$t0,-18($a4)
    subu	$a7,$a7,$s7
    sh	$a7,-22($a4)
    subu	$a6,$a6,$s7
    sh	$a6,-26($a4)
    subu	$a5,$a5,$s7
    beq	$a4,$t1,.L01684fdc
    sh	$a5,-30($a4)
    sd	$s4,128($sp)
    sd	$s6,152($sp)
    sd	$s3,144($sp)
    ld	$s6,152($sp)
    ld	$s3,144($sp)
    b	.L016854dc
    ld	$s4,128($sp)
.L01685560:
    lh	$a3,30($a4)
    lh	$a2,26($a4)
    lh	$a1,22($a4)
    lh	$a0,18($a4)
    lh	$v1,14($a4)
    lh	$v0,10($a4)
    lh	$at,6($a4)
    lh	$ra,2($a4)
    addiu	$a4,$a4,32
    addu	$a3,$a3,$s7
    sh	$a3,-2($a4)
    addu	$a2,$a2,$s7
    sh	$a2,-6($a4)
    addu	$a1,$a1,$s7
    sh	$a1,-10($a4)
    addu	$a0,$a0,$s7
    sh	$a0,-14($a4)
    addu	$v1,$v1,$s7
    sh	$v1,-18($a4)
    addu	$v0,$v0,$s7
    sh	$v0,-22($a4)
    addu	$at,$at,$s7
    sh	$at,-26($a4)
    addu	$ra,$ra,$s7
    beq	$a4,$t1,.L0168532c
    sh	$ra,-30($a4)
    b	.L01685560
    nop
.L016855d0:
    lh	$t8,30($a2)
    lh	$t3,26($a2)
    lh	$t2,22($a2)
    lh	$t0,18($a2)
    lh	$a7,14($a2)
    lh	$a6,10($a2)
    lh	$a5,6($a2)
    lh	$a4,2($a2)
    addiu	$a2,$a2,32
    addu	$t8,$t8,$s7
    sh	$t8,-2($a2)
    addu	$t3,$t3,$s7
    sh	$t3,-6($a2)
    addu	$t2,$t2,$s7
    sh	$t2,-10($a2)
    addu	$t0,$t0,$s7
    sh	$t0,-14($a2)
    addu	$a7,$a7,$s7
    sh	$a7,-18($a2)
    addu	$a6,$a6,$s7
    sh	$a6,-22($a2)
    addu	$a5,$a5,$s7
    sh	$a5,-26($a2)
    addu	$a4,$a4,$s7
    beq	$a2,$t1,.L01684774
    sh	$a4,-30($a2)
    b	.L016855d0
    nop
.L01685640:
    lh	$a3,30($a2)
    lh	$a1,26($a2)
    lh	$a0,22($a2)
    lh	$v1,18($a2)
    lh	$v0,14($a2)
    lh	$at,10($a2)
    lh	$ra,6($a2)
    lh	$t9,2($a2)
    addiu	$a2,$a2,32
    subu	$a3,$a3,$s7
    sh	$a3,-2($a2)
    subu	$a1,$a1,$s7
    sh	$a1,-6($a2)
    subu	$a0,$a0,$s7
    sh	$a0,-10($a2)
    subu	$v1,$v1,$s7
    sh	$v1,-14($a2)
    subu	$v0,$v0,$s7
    sh	$v0,-18($a2)
    subu	$at,$at,$s7
    sh	$at,-22($a2)
    subu	$ra,$ra,$s7
    sh	$ra,-26($a2)
    subu	$t9,$t9,$s7
    beq	$a2,$t1,.L01684ab8
    sh	$t9,-30($a2)
    b	.L01685640
    nop

glabel nfbSaveAreas
    lui	$v0,0xb
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,8112
    li	$a5,3
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    li	$a6,-1
    move	$v1,$a1
    lw	$t9,-28968($gp)
    move	$a1,$a4
    move	$a4,$a3
    move	$at,$a2
    move	$a2,$v1
    sd	$ra,0($sp)
    jalr	$t9
    move	$a3,$at
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbUnrealizeCursor
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    lw	$s0,0($a0)
    sll	$s0,$s0,0x2
    addu	$s0,$a1,$s0
    lw	$s0,20($s0)
    lui	$at,0xb
    move	$a3,$a0
    addiu	$at,$at,-1168
    sd	$gp,24($sp)
    beqz	$s0,.L0168aef4
    addu	$gp,$t9,$at
    lw	$a0,8($s0)
    sd	$a3,8($sp)
    sd	$a1,0($sp)
    beqz	$a0,.L0168af08
    sd	$ra,32($sp)
    lw	$t9,-28196($gp)
    jalr	$t9
    nop
    lw	$a0,4($s0)
.L0168aea4:
    beqz	$a0,.L0168aebc
    lw	$t9,-28196($gp)
    lw	$t9,-28196($gp)
    jalr	$t9
    nop
    lw	$t9,-28196($gp)
.L0168aebc:
    jalr	$t9
    move	$a0,$s0
    ld	$t9,8($sp)
    ld	$ra,32($sp)
    lw	$t9,0($t9)
    ld	$t8,0($sp)
    ld	$gp,24($sp)
    sll	$t9,$t9,0x2
    li	$v0,1
    ld	$s0,16($sp)
    addu	$t8,$t8,$t9
    addiu	$sp,$sp,48
    jr	$ra
    sw	$zero,20($t8)
.L0168aef4:
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0168af08:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,18696
    b	.L0168aea4
    lw	$a0,4($s0)

glabel nfbInfRender__EK
.L01690aa0:
    addiu	$sp,$sp,-128
    sd	$ra,112($sp)
    sd	$s0,120($sp)
    sd	$s3,72($sp)
    sd	$s1,96($sp)
    sd	$s2,88($sp)
    lw	$a6,132($a2)
    lw	$at,124($a2)
    lw	$t0,-5736($gp)
    move	$s2,$a0
    lw	$a7,-6768($gp)
    sll	$at,$at,0x13
    move	$s1,$a1
    lw	$a5,76($a1)
    sll	$t0,$t0,0x2
    sd	$s4,80($sp)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$t0
    move	$s4,$a2
    addu	$a5,$a5,$a7
    lw	$a6,0($a6)
    move	$s3,$a3
    bgez	$at,.L01690c30
    lw	$a5,0($a5)
    lw	$v0,32($a6)
    andi	$v0,$v0,0x8
    sd	$a6,64($sp)
    beqz	$v0,.L01690e3c
    sd	$a5,104($sp)
    ld	$s0,104($sp)
    addiu	$v1,$a2,44
    sd	$v1,48($sp)
    sd	$zero,56($sp)
.L01690b24:
    lw	$a3,16($s4)
    lw	$a5,116($a3)
    lw	$a0,220($a5)
    beqz	$a0,.L01690b44
    nop
    lw	$a1,104($s0)
    beqz	$a1,.L01690d60
    lw	$a6,96($s0)
.L01690b44:
    lw	$a2,124($s4)
.L01690b48:
    sll	$a2,$a2,0x15
    bltz	$a2,.L01690b58
    ld	$a3,56($sp)
    beqz	$a3,.L01690bf4
.L01690b58:
    lw	$a6,-6768($gp)
    lw	$a5,76($s1)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    lw	$t0,24($s1)
    lw	$t9,28($a5)
    sw	$t0,40($a5)
    sw	$t0,64($a5)
    lw	$a7,28($s1)
    sw	$a7,44($a5)
    sw	$a7,68($a5)
    lw	$a6,20($s1)
    sw	$a6,52($a5)
    sw	$a6,76($a5)
    lbu	$a4,5($s1)
    move	$a1,$s4
    sb	$a4,48($a5)
    move	$a0,$s1
    jalr	$t9
    sb	$a4,72($a5)
    lw	$t0,16($s1)
    lw	$a7,19116($gp)
    srl	$t0,$t0,0x12
    ld	$t2,56($sp)
    andi	$t0,$t0,0x3
    ld	$t8,48($sp)
    li	$t3,-65
    addiu	$a7,$a7,1
    sw	$a7,19116($gp)
    andi	$t2,$t2,0x1
    bnez	$t0,.L01690c50
    sll	$t2,$t2,0x6
    lw	$t1,0($s0)
    sw	$t8,8($s0)
    and	$t1,$t1,$t3
    or	$t1,$t1,$t2
    b	.L01690cec
    sw	$t1,0($s0)
.L01690bf4:
    lw	$s0,36($s4)
    beqz	$s0,.L01690c30
    nop
    nop
    nop
    nop
    lw	$t9,-29908($gp)
.L01690c10:
    move	$a0,$s2
    move	$a1,$s1
    move	$a2,$s0
    bal .L01690aa0
    move	$a3,$s3
    lw	$s0,28($s0)
    bnez	$s0,.L01690c10
    lw	$t9,-29908($gp)
.L01690c30:
    ld	$s0,120($sp)
.L01690c34:
    ld	$s3,72($sp)
    ld	$ra,112($sp)
    ld	$s4,80($sp)
    ld	$s2,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L01690c50:
    lh	$a3,48($s1)
    lh	$a4,50($s1)
    lh	$a2,10($s2)
    lw	$t9,0($s1)
    sd	$t9,24($sp)
    lw	$t9,376($t9)
    lh	$a1,8($s2)
    addu	$a2,$a2,$a4
    lw	$a0,56($s1)
    jalr	$t9
    addu	$a1,$a1,$a3
    lw	$ra,0($s0)
    sll	$ra,$ra,0x19
    bltz	$ra,.L01690edc
    ld	$at,56($sp)
    beqz	$at,.L01690e04
    ld	$t9,24($sp)
    lw	$t9,356($t9)
    ld	$a1,48($sp)
    lw	$a2,56($s1)
    jalr	$t9
    move	$a0,$a1
    ld	$a3,24($sp)
    ld	$ra,48($sp)
    sw	$ra,8($s0)
.L01690cb4:
    lw	$a5,0($s0)
    ori	$a5,$a5,0x40
    sw	$a5,0($s0)
    lw	$t9,376($a3)
    lh	$a2,10($s2)
    lh	$a4,50($s1)
    lh	$a1,8($s2)
    lh	$a3,48($s1)
    addu	$a2,$a2,$a4
    negu	$a2,$a2
    addu	$a1,$a1,$a3
    lw	$a0,56($s1)
    jalr	$t9
    negu	$a1,$a1
.L01690cec:
    lw	$a7,19100($gp)
    lw	$a6,19096($gp)
    lw	$a5,19092($gp)
    lw	$a4,19088($gp)
    lw	$a3,19084($gp)
    lw	$a2,19080($gp)
    lw	$t8,-5736($gp)
    lw	$t3,132($s2)
    lw	$t1,19104($gp)
    sll	$t8,$t8,0x2
    ld	$t2,64($sp)
    addu	$t3,$t3,$t8
    sw	$t2,0($t3)
    move	$t9,$s3
    sw	$t1,4($sp)
    move	$a0,$s2
    lw	$t0,19108($gp)
    move	$a1,$s1
    jalr	$t9
    sw	$t0,12($sp)
    ld	$t9,56($sp)
    beqz	$t9,.L01690bf4
    nop
    lw	$t9,0($s1)
    lw	$t9,348($t9)
    jalr	$t9
    ld	$a0,48($sp)
    b	.L01690c34
    ld	$s0,120($sp)
.L01690d60:
    sd	$a5,32($sp)
    beqz	$a6,.L01690efc
    sd	$a3,40($sp)
.L01690d6c:
    sh	$zero,16($sp)
    ld	$at,40($sp)
    ld	$ra,32($sp)
    lh	$at,8($at)
    sh	$at,20($sp)
    lw	$ra,220($ra)
    li	$at,1
    beq	$ra,$at,.L01690e5c
    ld	$at,32($sp)
    sh	$zero,18($sp)
    ld	$ra,32($sp)
    ld	$t9,40($sp)
    lhu	$ra,224($ra)
    sh	$ra,22($sp)
    lw	$t9,372($t9)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,96($s0)
    ld	$t9,40($sp)
    lw	$t9,356($t9)
    lw	$a0,96($s0)
    ld	$a2,48($sp)
    jalr	$t9
    move	$a1,$a0
    ld	$t9,40($sp)
    lw	$t9,344($t9)
    lw	$a1,96($s0)
    jalr	$t9
    lw	$a0,100($s0)
    ld	$t9,40($sp)
    lw	$t9,376($t9)
    ld	$a2,32($sp)
    lw	$a0,100($s0)
    move	$a1,$zero
    jalr	$t9
    lhu	$a2,226($a2)
    b	.L01690b48
    lw	$a2,124($s4)
.L01690e04:
    ld	$t9,24($sp)
    lw	$t9,336($t9)
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    ld	$t9,24($sp)
    sw	$v0,8($s0)
    lw	$t9,356($t9)
    ld	$a1,48($sp)
    move	$a0,$v0
    jalr	$t9
    lw	$a2,56($s1)
    b	.L01690cb4
    ld	$a3,24($sp)
.L01690e3c:
    lw	$t9,-28188($gp)
    ld	$s0,104($sp)
    jalr	$t9
    move	$a0,$a2
    sd	$v0,48($sp)
    li	$ra,1
    b	.L01690b24
    sd	$ra,56($sp)
.L01690e5c:
    lhu	$v0,226($at)
    sh	$v0,18($sp)
    lhu	$ra,224($at)
    lhu	$at,226($at)
    ld	$t9,40($sp)
    addu	$ra,$ra,$at
    sh	$ra,22($sp)
    lw	$t9,372($t9)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,100($s0)
    ld	$t9,40($sp)
    lw	$t9,356($t9)
    lw	$a0,100($s0)
    ld	$a2,48($sp)
    jalr	$t9
    move	$a1,$a0
    ld	$t9,40($sp)
    lw	$t9,344($t9)
    lw	$a1,100($s0)
    jalr	$t9
    lw	$a0,96($s0)
    ld	$t9,40($sp)
    ld	$a2,32($sp)
    lw	$t9,376($t9)
    lhu	$a2,226($a2)
    move	$a1,$zero
    lw	$a0,96($s0)
    jalr	$t9
    negu	$a2,$a2
    b	.L01690b48
    lw	$a2,124($s4)
.L01690edc:
    lw	$t9,0($s1)
    lw	$t9,356($t9)
    lw	$a2,56($s1)
    ld	$a1,48($sp)
    jalr	$t9
    lw	$a0,8($s0)
    b	.L01690cb4
    ld	$a3,24($sp)
.L01690efc:
    ld	$t9,40($sp)
    lw	$t9,336($t9)
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    ld	$t9,40($sp)
    sw	$v0,96($s0)
    lw	$t9,336($t9)
    move	$a1,$zero
    jalr	$t9
    move	$a0,$zero
    b	.L01690d6c
    sw	$v0,100($s0)

glabel nfbZeroArcPts
    addiu	$sp,$sp,-352
    sd	$s1,280($sp)
    sd	$s3,312($sp)
    sd	$ra,168($sp)
    lw	$t9,-30016($gp)
    li	$a2,1
    sd	$s6,176($sp)
    move	$s6,$a0
    sd	$s0,160($sp)
    move	$s0,$a1
    addiu	$a1,$sp,0
    jalr	$t9
    sd	$s2,304($sp)
    lw	$s1,68($sp)
    lw	$s3,32($sp)
    lw	$s2,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a4,16($sp)
    lw	$ra,12($sp)
    lw	$a2,4($sp)
    lw	$t1,8($sp)
    lw	$a3,0($sp)
    sd	$s5,296($sp)
    sd	$s4,288($sp)
    lhu	$at,4($s6)
    lw	$v1,56($sp)
    lw	$a0,44($sp)
    andi	$at,$at,0x1
    sd	$a0,152($sp)
    beqz	$at,.L01693848
    sd	$v1,144($sp)
.L01693550:
    lw	$s5,96($sp)
.L01693554:
    move	$t0,$zero
    beqz	$s5,.L01693818
    move	$a7,$s0
    lw	$a1,100($sp)
    beqz	$a1,.L01693818
    sd	$a1,232($sp)
.L0169356c:
    beqz	$v0,.L01693888
    lw	$s4,72($sp)
    lhu	$v0,4($s6)
    lhu	$v1,6($s6)
    lw	$t2,56($sp)
    lw	$t9,44($sp)
    lw	$t8,48($sp)
    bne	$v1,$v0,.L016935d4
    andi	$v0,$v0,0x1
    bnez	$v0,.L016935d8
    lw	$v0,64($sp)
    subu	$t2,$t2,$a2
    subu	$t3,$t9,$a3
    addu	$a7,$a2,$t8
    move	$s3,$t8
    lw	$v0,64($sp)
    addu	$t8,$a3,$t9
    move	$s2,$t9
    addu	$s2,$s2,$v0
    subu	$t0,$t9,$v0
    addu	$s3,$s3,$v0
    addu	$t0,$t0,$a2
    addu	$t9,$s3,$a3
    subu	$s3,$s3,$a3
    b	.L01693bc8
    subu	$s2,$s2,$a2
.L016935d4:
    lw	$v0,64($sp)
.L016935d8:
    slt	$t3,$a2,$v0
    beqz	$t3,.L01693834
    lw	$s4,60($sp)
.L016935e4:
    b	.L01693610
    lw	$t3,52($sp)
    nop
.L016935f0:
    addiu	$a2,$a2,1
    addu	$a4,$ra,$a4
    addiu	$a3,$a3,1
    subu	$a5,$a5,$a4
.L01693600:
    slt	$at,$a2,$v0
    addiu	$a7,$a7,16
    beqz	$at,.L016936ac
    addiu	$t0,$t0,1
.L01693610:
    bltz	$a4,.L01693660
.L01693614:
    subu	$at,$t2,$a2
    sh	$at,14($a7)
    addu	$v1,$a3,$t9
    sh	$v1,12($a7)
    sh	$at,10($a7)
    subu	$a1,$t3,$a3
    sh	$a1,8($a7)
    addu	$a0,$a2,$t8
    sh	$a0,6($a7)
    sh	$a1,4($a7)
    sh	$a0,2($a7)
    subu	$a6,$a6,$t1
    bgez	$a5,.L016935f0
    sh	$v1,0($a7)
.L0169364c:
    addu	$a5,$a5,$a6
    addu	$a4,$a4,$t1
    addu	$a2,$a2,$s3
    b	.L01693600
    addu	$a3,$a3,$s2
.L01693660:
    bne	$a2,$v0,.L016937bc
    addu	$a6,$a6,$a4
    subu	$a1,$t3,$a3
    addu	$a0,$a3,$t9
    sh	$a0,0($a7)
    sh	$a1,4($a7)
    sh	$a1,8($a7)
    subu	$v1,$t2,$a2
    sh	$v1,10($a7)
    sh	$a0,12($a7)
    li	$a5,-1
    addu	$a4,$a2,$t8
    sh	$a4,2($a7)
    move	$a6,$zero
    sh	$a4,6($a7)
    move	$a4,$zero
    sh	$v1,14($a7)
    b	.L0169364c
    move	$t1,$zero
.L016936ac:
    slt	$at,$a3,$s4
    bnez	$at,.L01693610
    nop
    sll	$v0,$t0,0x4
.L016936bc:
    addu	$s0,$s0,$v0
.L016936c0:
    lw	$v1,72($sp)
.L016936c4:
    beq	$v1,$a3,.L016936d4
    lw	$v0,76($sp)
    bne	$v0,$a2,.L016936dc
    ld	$s3,312($sp)
.L016936d4:
    lw	$s1,80($sp)
    ld	$s3,312($sp)
.L016936dc:
    ld	$s2,304($sp)
    andi	$a0,$s1,0x1
    ld	$s5,296($sp)
    beqz	$a0,.L0169370c
    ld	$s4,288($sp)
    lw	$a4,48($sp)
    addiu	$s0,$s0,4
    lw	$a1,44($sp)
    addu	$a4,$a4,$a2
    sh	$a4,-2($s0)
    addu	$a1,$a1,$a3
    sh	$a1,-4($s0)
.L0169370c:
    andi	$a5,$s1,0x4
    beqz	$a5,.L01693730
    lw	$a7,56($sp)
    addiu	$s0,$s0,4
    lw	$a6,52($sp)
    subu	$a7,$a7,$a2
    sh	$a7,-2($s0)
    subu	$a6,$a6,$a3
    sh	$a6,-4($s0)
.L01693730:
    lhu	$a6,6($s6)
    ld	$a5,152($sp)
    ld	$a4,144($sp)
    andi	$a6,$a6,0x1
    ld	$ra,168($sp)
    addu	$a5,$a5,$a3
    ld	$s6,176($sp)
    beqz	$a6,.L016937a0
    subu	$a4,$a4,$a2
    andi	$a7,$s1,0x2
    beqz	$a7,.L01693780
    andi	$t2,$s1,0x8
    lw	$t1,48($sp)
    addiu	$s0,$s0,4
    lw	$t0,52($sp)
    addu	$t1,$t1,$a2
    sh	$t1,-2($s0)
    subu	$t0,$t0,$a3
    sh	$t0,-4($s0)
    andi	$t2,$s1,0x8
.L01693780:
    ld	$s1,280($sp)
    beqz	$t2,.L016937a0
    addiu	$v0,$s0,4
    sh	$a5,0($s0)
    sh	$a4,2($s0)
    ld	$s0,160($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L016937a0:
    ld	$ra,168($sp)
    ld	$s1,280($sp)
    move	$v0,$s0
    ld	$s0,160($sp)
    ld	$s6,176($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L016937bc:
    negu	$a0,$a4
    li	$s3,1
    sll	$s2,$t1,0x1
    sra	$a0,$a0,0x1
    subu	$s2,$s2,$ra
    negu	$ra,$ra
    negu	$v1,$s2
    sra	$a1,$s2,0x1
    subu	$t1,$s2,$t1
    slti	$at,$s2,0
    sra	$s2,$t1,0x1
    sra	$v1,$v1,0x1
    subu	$a6,$a6,$s2
    sra	$s2,$ra,0x3
    addu	$v1,$a4,$v1
    subu	$a4,$a1,$a4
    addu	$a0,$a6,$a0
    negu	$v1,$v1
    subu	$a5,$a0,$a5
    movn	$a4,$v1,$at
    addu	$a5,$s2,$a5
    b	.L01693614
    move	$s2,$zero
.L01693818:
    lw	$s5,108($sp)
    lw	$s1,104($sp)
    lw	$t8,116($sp)
    lw	$t9,112($sp)
    sd	$t9,232($sp)
    b	.L0169356c
    sw	$t8,104($sp)
.L01693834:
    slt	$at,$a3,$s4
    bnez	$at,.L016935e4
    nop
    b	.L016936bc
    sll	$v0,$t0,0x4
.L01693848:
    lw	$t2,48($sp)
    move	$t8,$v1
    andi	$v1,$s1,0x2
    lw	$t0,52($sp)
    andi	$a7,$s1,0x8
    beqz	$v1,.L01693870
    lw	$t3,52($sp)
    addiu	$s0,$s0,4
    sh	$t2,-2($s0)
    sh	$t0,-4($s0)
.L01693870:
    beqz	$a7,.L01693554
    lw	$s5,96($sp)
    addiu	$s0,$s0,4
    sh	$t8,-2($s0)
    b	.L01693550
    sh	$t3,-4($s0)
.L01693888:
    lw	$t8,48($sp)
    lw	$t3,52($sp)
    lw	$t2,56($sp)
    lw	$t9,44($sp)
    lw	$at,92($sp)
    lw	$v1,112($sp)
    sd	$v1,216($sp)
    sd	$at,184($sp)
    lw	$t0,104($sp)
    lw	$a7,84($sp)
    lw	$a1,80($sp)
    sd	$a1,256($sp)
    lw	$a1,60($sp)
    sd	$a7,200($sp)
    lw	$a7,88($sp)
    sd	$t0,248($sp)
    lw	$t0,76($sp)
    sd	$t0,240($sp)
    lw	$v0,108($sp)
    sd	$v0,224($sp)
    lw	$v0,64($sp)
    lw	$a0,116($sp)
    sd	$a0,208($sp)
    slt	$a0,$a2,$v0
    sd	$a7,192($sp)
    beqz	$a0,.L01693bb0
    sd	$a1,136($sp)
.L016938f4:
    sd	$s7,320($sp)
    sd	$s8,328($sp)
    b	.L01693958
    sd	$s6,336($sp)
    nop
    nop
    ld	$at,248($sp)
.L01693910:
    ld	$s5,224($sp)
    sd	$a0,232($sp)
    ld	$v1,208($sp)
    move	$s1,$at
    sd	$v1,248($sp)
.L01693924:
    addu	$a4,$ra,$a4
    addiu	$a3,$a3,1
    addu	$at,$a5,$a6
    addu	$a0,$a2,$s3
    addiu	$a2,$a2,1
    slti	$a1,$a5,0
    subu	$a5,$a5,$a4
    movn	$a2,$a0,$a1
    movn	$a4,$t0,$a1
    slt	$v1,$a2,$v0
    movn	$a3,$a7,$a1
    beqz	$v1,.L01693a50
    movn	$a5,$at,$a1
.L01693958:
    addu	$s8,$a3,$t9
    ld	$a1,240($sp)
    bltz	$a4,.L01693a34
    subu	$s6,$t2,$a2
.L01693968:
    beq	$a3,$s4,.L01693978
    subu	$a0,$t3,$a3
    bne	$a2,$a1,.L01693998
    andi	$v1,$s1,0x1
.L01693978:
    ld	$at,192($sp)
    ld	$s4,200($sp)
    sd	$at,240($sp)
    ld	$a7,256($sp)
    ld	$t0,184($sp)
    sd	$t0,256($sp)
    move	$s1,$a7
    andi	$v1,$s1,0x1
.L01693998:
    andi	$a7,$s1,0x2
    addu	$a1,$a2,$t8
    sd	$a1,264($sp)
    andi	$t0,$s1,0x4
    beqz	$v1,.L016939c0
    sd	$a0,272($sp)
    addiu	$s0,$s0,4
    sh	$a1,-2($s0)
    addu	$at,$a3,$t9
    sh	$at,-4($s0)
.L016939c0:
    subu	$s7,$t3,$a3
    beqz	$a7,.L016939dc
    ld	$a0,264($sp)
    ld	$a1,272($sp)
    addiu	$s0,$s0,4
    sh	$a0,-2($s0)
    sh	$a1,-4($s0)
.L016939dc:
    beqz	$t0,.L016939f4
    ld	$a0,216($sp)
    sh	$s7,0($s0)
    sh	$s6,2($s0)
    addiu	$s0,$s0,4
    ld	$a0,216($sp)
.L016939f4:
    addu	$a7,$a3,$s2
    andi	$at,$s1,0x8
    subu	$s6,$t2,$a2
    subu	$a6,$a6,$t1
    ld	$v1,232($sp)
    beqz	$at,.L01693a1c
    addu	$t0,$a4,$t1
    sh	$s8,0($s0)
    sh	$s6,2($s0)
    addiu	$s0,$s0,4
.L01693a1c:
    beq	$a3,$s5,.L01693910
    ld	$at,248($sp)
    bne	$a2,$v1,.L01693924
    nop
    b	.L01693910
    ld	$at,248($sp)
.L01693a34:
    bne	$a2,$v0,.L01693a80
    addu	$a6,$a6,$a4
    li	$a5,-1
    move	$a6,$zero
    move	$a4,$zero
    b	.L01693968
    move	$t1,$zero
.L01693a50:
    sw	$s4,72($sp)
    ld	$a1,136($sp)
    ld	$a0,256($sp)
    ld	$a7,240($sp)
    slt	$a1,$a3,$a1
    sw	$a7,76($sp)
    bnez	$a1,.L01693958
    sw	$a0,80($sp)
    ld	$s6,336($sp)
    ld	$s8,328($sp)
    b	.L016936c0
    ld	$s7,320($sp)
.L01693a80:
    sll	$a0,$t1,0x1
    li	$s3,1
    subu	$a0,$a0,$ra
    negu	$ra,$ra
    negu	$at,$a4
    slti	$t0,$a0,0
    sra	$at,$at,0x1
    sra	$v1,$a0,0x1
    subu	$t1,$a0,$t1
    negu	$s2,$a0
    sra	$a7,$t1,0x1
    sra	$s2,$s2,0x1
    subu	$a6,$a6,$a7
    sra	$a7,$ra,0x3
    addu	$s2,$a4,$s2
    subu	$a4,$v1,$a4
    negu	$s2,$s2
    movn	$a4,$s2,$t0
    addu	$at,$a6,$at
    move	$s2,$zero
    subu	$a5,$at,$a5
    b	.L01693968
    addu	$a5,$a7,$a5
.L01693adc:
    addiu	$s0,$s0,16
    sh	$t9,-2($s0)
    sh	$t9,-6($s0)
    sh	$s3,-10($s0)
    sh	$s3,-14($s0)
    addiu	$s3,$s3,-1
    addiu	$t9,$t9,1
    sh	$s2,-4($s0)
    sh	$s2,-16($s0)
    addiu	$v1,$s2,-1
    slti	$a1,$a5,0
    addiu	$a3,$a3,1
    sh	$t0,-8($s0)
    movz	$s2,$v1,$a1
    sh	$t0,-12($s0)
    movz	$t0,$a2,$a1
    addu	$a0,$a4,$t1
    addu	$a4,$ra,$a4
    subu	$a6,$a6,$t1
    addu	$at,$a5,$a6
    subu	$a5,$a5,$a4
    move	$s4,$s0
    movn	$a5,$at,$a1
    movn	$a4,$a0,$a1
    addiu	$a0,$t2,-1
    movz	$t2,$a0,$a1
    addiu	$a0,$a7,1
    addiu	$a2,$t0,1
    movz	$a7,$a0,$a1
    sh	$a7,2($s0)
.L01693b54:
    sh	$a7,6($s0)
    sh	$t8,0($s0)
    sh	$t8,12($s0)
    sh	$t3,4($s0)
    sh	$t3,8($s0)
    addiu	$t3,$t3,-1
    addiu	$t8,$t8,1
    sh	$t2,10($s0)
    sh	$t2,14($s0)
    bgez	$a4,.L01693adc
    addiu	$s0,$s0,16
    slti	$a1,$a3,2
    bnez	$a1,.L01693ba8
    lw	$a3,60($sp)
    lh	$a5,-4($s0)
    lh	$a2,-20($s0)
    lh	$a4,-2($s0)
    bne	$a2,$a5,.L01693ba8
    lh	$a2,-18($s0)
    xor	$a6,$a2,$a4
    movz	$s0,$s4,$a6
.L01693ba8:
    b	.L016936c0
    move	$a2,$v0
.L01693bb0:
    ld	$a7,136($sp)
    slt	$a7,$a3,$a7
    bnez	$a7,.L016938f4
    nop
    b	.L016936c4
    lw	$v1,72($sp)
.L01693bc8:
    addiu	$a2,$t0,1
    move	$s4,$s0
    b	.L01693b54
    sh	$a7,2($s0)

glabel nfbReadDisplay
    addiu	$sp,$sp,-432
    sd	$a3,296($sp)
    sd	$s1,312($sp)
    sd	$s0,320($sp)
    sd	$ra,328($sp)
    sd	$s2,336($sp)
    sd	$s6,344($sp)
    sd	$s7,352($sp)
    sd	$s8,360($sp)
    sd	$s3,112($sp)
    sd	$s5,104($sp)
    lui	$t0,0xa
    sd	$a7,304($sp)
    addiu	$a7,$t0,23664
    sd	$gp,120($sp)
    addu	$gp,$t9,$a7
    move	$v0,$a4
    lw	$t8,-9200($gp)
    move	$at,$a2
    li	$v1,-1
    sd	$s4,128($sp)
    move	$s5,$a6
    move	$s4,$a1
    lw	$a1,116($a1)
    move	$s3,$a5
    beq	$t8,$v1,.L01695668
    sd	$a1,288($sp)
    lw	$v1,436($s4)
    sll	$a1,$t8,0x2
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    beqz	$v1,.L0169566c
    ld	$s8,360($sp)
    lw	$a2,0($v1)
    beqz	$a2,.L0169566c
    ld	$s8,360($sp)
    beqz	$a5,.L01695d10
    ld	$s8,360($sp)
    beqz	$a4,.L01695d10
    ld	$s8,360($sp)
    ld	$a3,304($sp)
    sd	$a0,96($sp)
    sd	$a4,136($sp)
    beqz	$a3,.L01695ce4
    sd	$at,144($sp)
    sd	$zero,88($sp)
.L01694e08:
    ld	$a4,296($sp)
    sh	$a4,2($sp)
    ld	$a2,144($sp)
    sh	$a2,0($sp)
    ld	$a5,288($sp)
    ld	$a3,136($sp)
    addu	$a7,$a4,$s3
    sh	$a7,6($sp)
    addu	$a2,$a2,$a3
    sh	$a2,4($sp)
    lw	$t2,76($a5)
    lw	$t1,48($a5)
    lw	$t0,96($a5)
    lw	$a6,40($a5)
    lw	$a5,84($a5)
    sd	$t2,280($sp)
    sd	$t1,168($sp)
    sd	$t0,160($sp)
    sd	$a6,176($sp)
    bltz	$a4,.L016959c4
    sd	$a5,192($sp)
.L01694e5c:
    ld	$a4,144($sp)
    bltz	$a4,.L01695c58
    nop
.L01694e68:
    lh	$at,10($s4)
    slt	$a5,$at,$a7
    beqz	$a5,.L01695038
    ld	$t1,296($sp)
    ld	$a6,136($sp)
    move	$s0,$at
    slt	$t0,$at,$t1
    movn	$s0,$t1,$t0
    bne	$s5,$a6,.L016957dc
    subu	$a4,$a7,$s0
    ld	$v0,136($sp)
    mult	$a4,$v0
    mflo	$a6
    addiu	$at,$a6,-8
    xori	$at,$at,0x8
    li	$v0,-7
    sra	$at,$at,0x1f
    and	$at,$at,$v0
    addu	$at,$a6,$at
    slti	$v0,$at,8
    addiu	$v1,$at,-8
    addiu	$at,$at,-1
    movz	$at,$v1,$v0
    sra	$at,$at,0x3
    bltz	$at,.L01694f60
    addiu	$a5,$at,1
    ld	$a7,296($sp)
    subu	$a7,$s0,$a7
    mult	$s5,$a7
    lui	$a1,0xff00
    slti	$a3,$at,1
    ld	$v1,304($sp)
    sll	$a4,$a5,0x3
    mflo	$a0
    sll	$v0,$a0,0x2
    addu	$a0,$a0,$a4
    addu	$v0,$v1,$v0
    sll	$a0,$a0,0x2
    bnez	$a3,.L016961f8
    addu	$v1,$v1,$a0
    sw	$a1,4($v0)
    sw	$a1,0($v0)
    addiu	$v1,$v1,-32
    move	$at,$a1
    nop
    nop
.L01694f20:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01694f20
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01694f60:
    slt	$a0,$a5,$zero
    move	$v1,$a5
    movn	$v1,$zero,$a0
    sll	$v1,$v1,0x3
    subu	$t8,$a6,$v1
    blez	$t8,.L01695030
    ld	$a6,296($sp)
    subu	$a6,$s0,$a6
    mult	$s5,$a6
    lui	$a1,0xff00
    mflo	$a5
    andi	$at,$t8,0x7
    ld	$a6,304($sp)
    addu	$a5,$v1,$a5
    sll	$v0,$a5,0x2
    addu	$a5,$t8,$a5
    addu	$v0,$v0,$a6
    sll	$a5,$a5,0x2
    beqz	$at,.L01694fc0
    addu	$a5,$a5,$a6
.L01694fb0:
    addiu	$at,$at,-1
    addiu	$v0,$v0,4
    bnez	$at,.L01694fb0
    sw	$a1,-4($v0)
.L01694fc0:
    sra	$at,$t8,0x3
    beqz	$at,.L01695030
    slti	$a7,$at,2
    bnez	$a7,.L0169621c
    nop
    sw	$a1,4($v0)
    sw	$a1,0($v0)
    addiu	$v1,$a5,-32
    move	$at,$a1
    nop
    nop
    nop
.L01694ff0:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01694ff0
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695030:
    lh	$at,10($s4)
.L01695034:
    sh	$at,6($sp)
.L01695038:
    lh	$at,8($s4)
    slt	$t0,$at,$a2
    beqz	$t0,.L016950ec
    ld	$t2,144($sp)
    move	$v0,$at
    slt	$t1,$at,$t2
    blez	$s3,.L016950e8
    movn	$v0,$t2,$t1
    subu	$s7,$a2,$v0
    addiu	$a5,$s7,-8
    xori	$a5,$a5,0x8
    li	$a6,-7
    sra	$a5,$a5,0x1f
    and	$a5,$a5,$a6
    addu	$a5,$s7,$a5
    slti	$a6,$a5,8
    addiu	$a7,$a5,-8
    addiu	$a5,$a5,-1
    movz	$a5,$a7,$a6
    move	$s0,$zero
    ld	$at,144($sp)
    sra	$a5,$a5,0x3
    sll	$s1,$s5,0x2
    addiu	$s8,$a5,1
    subu	$at,$v0,$at
    sll	$t9,$s8,0x3
    sll	$a6,$at,0x2
    addu	$t9,$t9,$at
    lui	$a1,0xff00
    ld	$t8,304($sp)
    sll	$t9,$t9,0x2
    move	$ra,$s8
    slt	$v1,$s8,$zero
    addu	$a6,$a6,$t8
    movn	$ra,$zero,$v1
    addu	$t9,$t9,$t8
    sll	$ra,$ra,0x3
    subu	$s7,$s7,$ra
    addu	$ra,$ra,$at
    addiu	$s6,$s7,-1
    sll	$at,$ra,0x2
    b	.L01695708
    addu	$t8,$t8,$at
.L016950e4:
    lh	$at,8($s4)
.L016950e8:
    sh	$at,4($sp)
.L016950ec:
    lw	$t9,340($s4)
    move	$a2,$zero
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,8
    lw	$t9,340($s4)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,24
    ld	$a6,176($sp)
    blez	$a6,.L016954b0
    ld	$a7,192($sp)
    blez	$a7,.L016954b4
    sd	$s3,152($sp)
    sd	$zero,200($sp)
    sd	$s3,152($sp)
    la	$t0,_rodata_symbol
    ld	$v0,144($sp)
    lw	$t1,436($sp)
    lui	$at,0x800
    sll	$v0,$v0,0x2
    sd	$v0,264($sp)
    lui	$ra,0x400
    and	$at,$t1,$at
    sd	$at,232($sp)
    lui	$t8,0x200
    and	$ra,$t1,$ra
    sd	$ra,240($sp)
    lui	$t3,0x100
    and	$t8,$t1,$t8
    sd	$t8,248($sp)
    lui	$t2,0x80
    and	$t3,$t1,$t3
    sd	$t3,256($sp)
    and	$t1,$t1,$t2
    sd	$t1,272($sp)
    addiu	$t0,$t0,18760
    b	.L016951a4
    sd	$t0,184($sp)
    nop
.L01695190:
    ld	$v1,200($sp)
    ld	$a0,176($sp)
    addiu	$v1,$v1,1
    beq	$v1,$a0,.L016954b4
    sd	$v1,200($sp)
.L016951a4:
    sd	$zero,224($sp)
    ld	$a1,160($sp)
    ld	$a2,168($sp)
    move	$s2,$zero
    sd	$a2,216($sp)
    move	$s7,$zero
    b	.L01695204
    sd	$a1,208($sp)
    nop
    nop
    nop
.L016951d0:
    ld	$a6,224($sp)
.L016951d4:
    ld	$t0,208($sp)
    ld	$t1,216($sp)
    ld	$a3,192($sp)
    addiu	$s2,$s2,1
    addiu	$t1,$t1,4
    sd	$t1,216($sp)
    addiu	$s7,$s7,4
    addiu	$t0,$t0,12
    sd	$t0,208($sp)
    addiu	$a6,$a6,36
    beq	$s2,$a3,.L01695190
    sd	$a6,224($sp)
.L01695204:
    ld	$t3,216($sp)
    ld	$t2,200($sp)
    lw	$t3,0($t3)
    bne	$t2,$t3,.L016951d0
    ld	$at,208($sp)
    lw	$at,8($at)
    beqz	$at,.L01695230
    nop
    lw	$v0,4($at)
    beqz	$v0,.L016951d4
    ld	$a6,224($sp)
.L01695230:
    lw	$t9,356($s4)
    addiu	$a1,$sp,8
    ld	$a2,208($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    lw	$at,32($sp)
    li	$a5,-1
    li	$a4,1
    lw	$t9,-28148($gp)
    beqz	$at,.L016954a4
    li	$a7,2
    lw	$s8,4($at)
    beqz	$s8,.L016951d4
    ld	$a6,224($sp)
    beqz	$at,.L016954a8
    addiu	$s1,$sp,24
    blez	$s8,.L016951d0
    addiu	$s1,$at,8
.L01695278:
    b	.L01696290
    move	$s3,$zero
.L01695280:
    addu	$s0,$s0,$a1
    lw	$s0,156($s0)
    beqz	$s0,.L016953e4
    nop
    lw	$at,132($s0)
    nop
    nop
    nop
.L016952a0:
    la	$v0,dbcWindowPrivateIndex
    lw	$v0,0($v0)
    sll	$v0,$v0,0x2
    lw	$ra,-9200($gp)
    addu	$v0,$at,$v0
    lb	$at,2($v0)
    sb	$at,0($v0)
    lw	$t9,436($s4)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    move	$a4,$s6
    move	$a3,$s5
    move	$a2,$s1
    move	$a1,$s2
    move	$a0,$s0
    jalr	$t9
    lw	$a5,436($sp)
    li	$a5,-1
    li	$a4,1
    lw	$t9,-28148($gp)
    li	$a7,2
    addiu	$s1,$s1,8
.L01695300:
    addiu	$s3,$s3,1
    beq	$s8,$s3,.L016951d0
    li	$t1,3
    ld	$v0,296($sp)
.L01695310:
    lh	$at,2($s1)
    lh	$a0,0($s1)
    subu	$at,$at,$v0
    ld	$ra,288($sp)
    mult	$s5,$at
    ld	$at,280($sp)
    lw	$ra,48($ra)
    lw	$a2,0($t9)
    sll	$a0,$a0,0x2
    lw	$a1,436($s4)
    addu	$ra,$ra,$s7
    sll	$a2,$a2,0x2
    lw	$ra,0($ra)
    ld	$s6,304($sp)
    addu	$a1,$a1,$a2
    mflo	$a2
    ld	$t0,232($sp)
    subu	$v0,$ra,$at
    sll	$a2,$a2,0x2
    move	$t8,$v0
    addu	$s6,$s6,$a2
    ld	$a2,272($sp)
    move	$a6,$v0
    addu	$s6,$s6,$a0
    ld	$a0,264($sp)
    ld	$a3,240($sp)
    move	$v1,$v0
    move	$at,$v0
    lw	$a1,0($a1)
    beqz	$a2,.L01695390
    subu	$s6,$s6,$a0
    beq	$a5,$v0,.L01695400
.L01695390:
    ld	$a0,256($sp)
    beqz	$a0,.L016953a4
    ld	$a2,248($sp)
    beqz	$v0,.L01695400
    nop
.L016953a4:
    beqz	$a2,.L016953b0
    lw	$v0,-5736($gp)
    beq	$a4,$v1,.L01695400
.L016953b0:
    la	$v1,WindowTable
    beqz	$a3,.L016953c4
    lw	$v1,0($v1)
    beq	$a7,$t8,.L01695400
    nop
.L016953c4:
    beqz	$t0,.L016953d4
    nop
    beq	$t1,$a6,.L01695400
    nop
.L016953d4:
    lw	$t2,0($a1)
    sltu	$t2,$s2,$t2
    bnez	$t2,.L01695280
    ld	$s0,224($sp)
.L016953e4:
    lw	$a0,0($s4)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    sll	$v0,$v0,0x2
    b	.L0169540c
    move	$s0,$v1
.L01695400:
    b	.L01695300
    addiu	$s1,$s1,-8
.L01695408:
    move	$s0,$at
.L0169540c:
    lw	$at,132($s0)
    addu	$a0,$at,$v0
    lw	$a0,0($a0)
    lw	$a0,4($a0)
    beq	$s2,$a0,.L016952a0
    nop
    lw	$at,36($s0)
    bnez	$at,.L01695408
    nop
    lw	$at,28($s0)
    beqz	$at,.L0169544c
    nop
.L0169543c:
    beq	$s0,$v1,.L01695490
    lw	$t9,-28184($gp)
    b	.L0169540c
    move	$s0,$at
.L0169544c:
    beq	$v1,$s0,.L0169543c
    nop
.L01695454:
    lw	$s0,24($s0)
    lw	$at,28($s0)
    bnez	$at,.L0169543c
    nop
    beq	$v1,$s0,.L0169543c
    nop
    lw	$s0,24($s0)
    lw	$at,28($s0)
    bnez	$at,.L0169543c
    nop
    bne	$v1,$s0,.L01695454
    nop
    b	.L0169543c
    nop
    nop
.L01695490:
    ld	$a0,184($sp)
    jalr	$t9
    move	$a1,$s2
    b	.L016952a0
    lw	$at,132($s0)
.L016954a4:
    addiu	$s1,$sp,24
.L016954a8:
    b	.L01695278
    li	$s8,1
.L016954b0:
    sd	$s3,152($sp)
.L016954b4:
    lw	$a1,436($sp)
    andi	$a1,$a1,0x4
    beqz	$a1,.L016955dc
    lw	$t9,-27836($gp)
    addiu	$a1,$sp,44
    jalr	$t9
    addiu	$a0,$sp,40
    lw	$t9,-27832($gp)
    jalr	$t9
    nop
    lh	$a6,6($sp)
    lhu	$t8,8($v0)
    lhu	$s2,6($v0)
    lw	$a1,44($sp)
    lhu	$t9,4($v0)
    lw	$s0,0($v0)
    andi	$s2,$s2,0xff00
    sra	$t9,$t9,0x8
    lhu	$s3,12($v0)
    andi	$t8,$t8,0xff00
    andi	$t9,$t9,0xff
    lhu	$s8,10($v0)
    sll	$t8,$t8,0x8
    or	$s2,$s2,$t9
    lhu	$ra,14($v0)
    lhu	$a4,10($s0)
    andi	$s3,$s3,0xff00
    sra	$s8,$s8,0x8
    lhu	$a2,14($s0)
    andi	$ra,$ra,0xff00
    andi	$s8,$s8,0xff
    sll	$ra,$ra,0x8
    or	$s3,$s3,$s8
    lw	$s8,40($sp)
    subu	$a1,$a1,$a2
    or	$s3,$s3,$ra
    lhu	$ra,12($s0)
    or	$s2,$s2,$t8
    addu	$a4,$a1,$a4
    lhu	$s0,8($s0)
    slt	$a2,$a6,$a1
    subu	$s8,$s8,$ra
    addiu	$at,$a4,-1
    addu	$s0,$s8,$s0
    bnez	$a2,.L016955dc
    addiu	$v1,$s0,-1
    lh	$t8,2($sp)
    slt	$t9,$at,$t8
    bnez	$t9,.L016955dc
    lh	$t9,4($sp)
    slt	$ra,$t9,$s8
    bnez	$ra,.L016955dc
    lh	$at,0($sp)
    slt	$at,$v1,$at
    bnez	$at,.L016955dc
    slt	$a2,$a1,$t8
    move	$a5,$a1
    movn	$a5,$t8,$a2
    slt	$a0,$a4,$a6
    move	$at,$a6
    movn	$at,$a4,$a0
    slt	$v1,$a5,$at
    beqz	$v1,.L016955dc
    ld	$a6,296($sp)
    subu	$a6,$a5,$a6
    mult	$a6,$s5
    li	$s1,128
    subu	$ra,$a5,$a1
    slt	$a3,$s0,$t9
    move	$a6,$t9
    ld	$s7,144($sp)
    mflo	$s6
    b	.L01696080
    movn	$a6,$s0,$a3
.L016955dc:
    lw	$t9,352($s4)
    jalr	$t9
    addiu	$a0,$sp,24
    lw	$t9,352($s4)
    ld	$s0,88($sp)
    jalr	$t9
    addiu	$a0,$sp,8
    beqz	$s0,.L01695634
    ld	$s8,360($sp)
    ld	$a3,152($sp)
    ld	$a2,136($sp)
    mult	$a2,$a3
    lw	$t9,-27828($gp)
    ld	$a0,96($sp)
    ld	$a2,304($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    lw	$t9,-28196($gp)
    jalr	$t9
    ld	$a0,304($sp)
    ld	$s8,360($sp)
.L01695634:
    ld	$s7,352($sp)
    ld	$s6,344($sp)
    ld	$s2,336($sp)
    ld	$s0,320($sp)
    ld	$s1,312($sp)
    ld	$gp,120($sp)
    ld	$ra,328($sp)
    ld	$s3,112($sp)
    move	$v0,$zero
    ld	$s4,128($sp)
    ld	$s5,104($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L01695668:
    ld	$s8,360($sp)
.L0169566c:
    ld	$s7,352($sp)
    ld	$s6,344($sp)
    ld	$s2,336($sp)
    ld	$s0,320($sp)
    ld	$s1,312($sp)
    ld	$gp,120($sp)
    ld	$ra,328($sp)
    ld	$s3,112($sp)
    li	$v0,17
    ld	$s4,128($sp)
    ld	$s5,104($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L016956a0:
    sw	$a1,0($v0)
    addiu	$v1,$s2,-32
    move	$at,$a1
    nop
.L016956b0:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L016956b0
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L016956f0:
    addu	$a6,$a6,$s1
    addiu	$s0,$s0,1
    addu	$t9,$t9,$s1
    addu	$t8,$t8,$s1
    beq	$s0,$s3,.L016950e4
    addu	$ra,$s5,$ra
.L01695708:
    bltz	$a5,.L01695770
    slti	$a4,$s8,2
    bnez	$a4,.L01696264
    nop
    sw	$a1,4($a6)
    addiu	$v1,$t9,-32
    sw	$a1,0($a6)
    move	$at,$a1
    move	$v0,$a6
    nop
.L01695730:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695730
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695770:
    bltz	$s6,.L016956f0
    move	$v1,$s7
    ld	$a0,304($sp)
    andi	$at,$s7,0x7
    addu	$s2,$s7,$ra
    move	$v0,$t8
    sll	$s2,$s2,0x2
    beqz	$at,.L016957a4
    addu	$s2,$s2,$a0
.L01695794:
    addiu	$at,$at,-1
    addiu	$v0,$v0,4
    bnez	$at,.L01695794
    sw	$a1,-4($v0)
.L016957a4:
    sra	$at,$v1,0x3
    beqz	$at,.L016956f0
    slti	$v1,$at,2
    beqzl	$v1,.L016956a0
    sw	$a1,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
    sw	$a1,4($v0)
    b	.L016956f0
    sw	$a1,0($v0)
.L016957dc:
    blez	$a4,.L01695034
    ld	$s8,136($sp)
    addiu	$s2,$s8,-8
    ld	$s6,296($sp)
    xori	$s2,$s2,0x8
    li	$s7,-7
    sra	$s2,$s2,0x1f
    subu	$s6,$s0,$s6
    and	$s2,$s2,$s7
    mult	$s6,$s5
    addu	$s2,$s8,$s2
    slti	$s6,$s2,8
    addiu	$s7,$s2,-8
    addiu	$s2,$s2,-1
    movz	$s2,$s7,$s6
    move	$a5,$zero
    sra	$s2,$s2,0x3
    sll	$s1,$s5,0x2
    addiu	$s7,$s2,1
    mflo	$t9
    sll	$t8,$s7,0x3
    sll	$a6,$t9,0x2
    addu	$t8,$t9,$t8
    lui	$a1,0xff00
    ld	$ra,304($sp)
    sll	$t8,$t8,0x2
    move	$at,$s7
    slt	$v0,$s7,$zero
    addu	$a6,$a6,$ra
    movn	$at,$zero,$v0
    addu	$t8,$t8,$ra
    sll	$at,$at,0x3
    subu	$s8,$s8,$at
    addu	$t9,$t9,$at
    addiu	$s6,$s8,-1
    sll	$at,$t9,0x2
    b	.L016958e8
    addu	$ra,$ra,$at
    nop
    nop
    nop
.L01695880:
    sw	$a1,0($v0)
    addiu	$v1,$s0,-32
    move	$at,$a1
    nop
.L01695890:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695890
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L016958d0:
    addu	$a6,$a6,$s1
    addiu	$a5,$a5,1
    addu	$t8,$t8,$s1
    addu	$ra,$ra,$s1
    beq	$a5,$a4,.L016959bc
    addu	$t9,$s5,$t9
.L016958e8:
    bltz	$s2,.L01695950
    slti	$at,$s7,2
    bnez	$at,.L01696240
    nop
    sw	$a1,4($a6)
    addiu	$v1,$t8,-32
    sw	$a1,0($a6)
    move	$at,$a1
    move	$v0,$a6
    nop
.L01695910:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695910
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695950:
    bltz	$s6,.L016958d0
    move	$v1,$s8
    ld	$a0,304($sp)
    andi	$at,$s8,0x7
    addu	$s0,$s8,$t9
    move	$v0,$ra
    sll	$s0,$s0,0x2
    beqz	$at,.L01695984
    addu	$s0,$s0,$a0
.L01695974:
    addiu	$at,$at,-1
    addiu	$v0,$v0,4
    bnez	$at,.L01695974
    sw	$a1,-4($v0)
.L01695984:
    sra	$at,$v1,0x3
    beqz	$at,.L016958d0
    slti	$v1,$at,2
    beqzl	$v1,.L01695880
    sw	$a1,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
    sw	$a1,4($v0)
    b	.L016958d0
    sw	$a1,0($v0)
.L016959bc:
    b	.L01695034
    lh	$at,10($s4)
.L016959c4:
    ld	$t9,136($sp)
    ld	$t8,296($sp)
    move	$s0,$a7
    slt	$ra,$a7,$zero
    movz	$s0,$zero,$ra
    bne	$s5,$t9,.L01695e94
    subu	$s0,$s0,$t8
    ld	$t0,136($sp)
    mult	$s0,$t0
    mflo	$a5
    addiu	$a6,$a5,-8
    xori	$a6,$a6,0x8
    li	$t0,-7
    sra	$a6,$a6,0x1f
    and	$a6,$a6,$t0
    addu	$a6,$a5,$a6
    slti	$t0,$a6,8
    addiu	$t1,$a6,-8
    addiu	$a6,$a6,-1
    movz	$a6,$t1,$t0
    sra	$a6,$a6,0x3
    bltz	$a6,.L01695b6c
    addiu	$a6,$a6,1
    ld	$t8,304($sp)
    lui	$a1,0xff00
    andi	$ra,$a6,0x1
    sll	$t9,$a6,0x5
    move	$v1,$t8
    beqz	$ra,.L01695a68
    addu	$t8,$t8,$t9
    ld	$at,304($sp)
    sw	$a1,28($at)
    sw	$a1,24($at)
    sw	$a1,20($at)
    sw	$a1,16($at)
    sw	$a1,12($at)
    sw	$a1,8($at)
    sw	$a1,4($at)
    sw	$a1,0($at)
    addiu	$v1,$at,32
    pref	0x1,256($at)
.L01695a68:
    sra	$at,$a6,0x1
    beqz	$at,.L01695b6c
    slti	$v0,$at,2
    bnez	$v0,.L01696148
    nop
    sw	$a1,4($v1)
    sw	$a1,0($v1)
    addiu	$v0,$v1,64
    pref	0x1,256($v1)
    addiu	$a0,$t8,-64
    move	$at,$a1
    nop
    nop
    nop
.L01695aa0:
    sw	$at,8($v1)
    sw	$at,12($v1)
    sw	$at,16($v1)
    sw	$at,20($v1)
    sw	$at,24($v1)
    sw	$at,28($v1)
    sw	$at,32($v1)
    sw	$at,36($v1)
    sw	$at,40($v1)
    sw	$at,44($v1)
    sw	$at,48($v1)
    sw	$at,52($v1)
    sw	$at,56($v1)
    sw	$at,60($v1)
    addiu	$v1,$v0,64
    sw	$at,0($v0)
    beq	$v0,$a0,.L01696048
    sw	$at,4($v0)
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    sw	$at,32($v0)
    sw	$at,36($v0)
    sw	$at,40($v0)
    sw	$at,44($v0)
    sw	$at,48($v0)
    sw	$at,52($v0)
    sw	$at,56($v0)
    sw	$at,60($v0)
    pref	0x1,256($v1)
    addiu	$v0,$v0,128
    sw	$at,0($v1)
    bne	$v1,$a0,.L01695aa0
    sw	$at,4($v1)
.L01695b34:
    sw	$a1,60($v1)
    sw	$a1,56($v1)
    sw	$a1,52($v1)
    sw	$a1,48($v1)
    sw	$a1,44($v1)
    sw	$a1,40($v1)
    sw	$a1,36($v1)
    sw	$a1,32($v1)
    sw	$a1,28($v1)
    sw	$a1,24($v1)
    sw	$a1,20($v1)
    sw	$a1,16($v1)
    sw	$a1,12($v1)
    sw	$a1,8($v1)
.L01695b6c:
    slt	$v1,$a6,$zero
    move	$v0,$a6
    movn	$v0,$zero,$v1
    sll	$t9,$v0,0x3
    subu	$t8,$a5,$t9
    blez	$t8,.L01695c50
    lui	$a1,0xff00
    ld	$a0,304($sp)
    sll	$a6,$a5,0x2
    andi	$at,$t8,0x7
    sll	$v1,$v0,0x5
    addu	$a6,$a6,$a0
    beqz	$at,.L01695bb8
    addu	$v1,$v1,$a0
.L01695ba4:
    addiu	$v1,$v1,4
    addiu	$at,$at,-1
    sw	$a1,-4($v1)
    bnez	$at,.L01695ba4
    pref	0x1,252($v1)
.L01695bb8:
    sra	$at,$t8,0x3
    beqz	$at,.L01695c50
    slti	$t0,$at,2
    bnez	$t0,.L0169618c
    nop
    sw	$a1,4($v1)
    sw	$a1,0($v1)
    addiu	$v0,$v1,32
    pref	0x1,256($v1)
    addiu	$a0,$a6,-32
    move	$at,$a1
.L01695be4:
    sw	$at,8($v1)
    sw	$at,12($v1)
    sw	$at,16($v1)
    sw	$at,20($v1)
    sw	$at,24($v1)
    sw	$at,28($v1)
    addiu	$v1,$v0,32
    sw	$at,0($v0)
    beq	$v0,$a0,.L01696050
    sw	$at,4($v0)
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    pref	0x1,256($v1)
    addiu	$v0,$v0,64
    sw	$at,0($v1)
    bne	$v1,$a0,.L01695be4
    sw	$at,4($v1)
.L01695c38:
    sw	$a1,28($v1)
    sw	$a1,24($v1)
    sw	$a1,20($v1)
    sw	$a1,16($v1)
    sw	$a1,12($v1)
    sw	$a1,8($v1)
.L01695c50:
    b	.L01694e5c
    sh	$zero,2($sp)
.L01695c58:
    blez	$s3,.L01695e8c
    ld	$at,144($sp)
    move	$s8,$a2
    slt	$v0,$a2,$zero
    movz	$s8,$zero,$v0
    subu	$s8,$s8,$at
    addiu	$s6,$s8,-8
    xori	$s6,$s6,0x8
    li	$s7,-7
    sra	$s6,$s6,0x1f
    and	$s6,$s6,$s7
    addu	$s6,$s8,$s6
    slti	$s7,$s6,8
    addiu	$t8,$s6,-8
    addiu	$s6,$s6,-1
    movz	$s6,$t8,$s7
    move	$ra,$zero
    sra	$s6,$s6,0x3
    sll	$s1,$s5,0x2
    addiu	$s7,$s6,1
    lui	$a1,0xff00
    ld	$t8,304($sp)
    sll	$a6,$s7,0x5
    move	$at,$s7
    slt	$t0,$s7,$zero
    move	$a5,$t8
    movn	$at,$zero,$t0
    addu	$a6,$a6,$t8
    sll	$t9,$at,0x5
    addu	$t8,$t8,$t9
    sll	$at,$at,0x3
    move	$t9,$at
    subu	$s8,$s8,$at
    b	.L01695db8
    addiu	$s2,$s8,-1
.L01695ce4:
    ld	$a1,136($sp)
    mult	$a1,$a5
    lw	$t9,-28180($gp)
    mflo	$a0
    jalr	$t9
    sll	$a0,$a0,0x2
    sd	$v0,304($sp)
    li	$a2,1
    b	.L01694e08
    sd	$a2,88($sp)
    ld	$s8,360($sp)
.L01695d10:
    ld	$s7,352($sp)
    ld	$s6,344($sp)
    ld	$s2,336($sp)
    ld	$s0,320($sp)
    ld	$s1,312($sp)
    ld	$gp,120($sp)
    ld	$ra,328($sp)
    ld	$s3,112($sp)
    move	$v0,$zero
    ld	$s4,128($sp)
    ld	$s5,104($sp)
    jr	$ra
    addiu	$sp,$sp,432
    nop
    nop
    nop
.L01695d50:
    sw	$a1,0($v0)
    addiu	$v1,$s0,-32
    move	$at,$a1
    nop
.L01695d60:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695d60
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695da0:
    addu	$a5,$a5,$s1
    addiu	$ra,$ra,1
    addu	$a6,$a6,$s1
    addu	$t8,$t8,$s1
    beq	$ra,$s3,.L01695e8c
    addu	$t9,$s5,$t9
.L01695db8:
    bltz	$s6,.L01695e20
    slti	$a4,$s7,2
    bnez	$a4,.L016961d4
    nop
    sw	$a1,4($a5)
    addiu	$v1,$a6,-32
    sw	$a1,0($a5)
    move	$at,$a1
    move	$v0,$a5
    nop
.L01695de0:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695de0
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695e20:
    bltz	$s2,.L01695da0
    move	$v1,$s8
    ld	$a0,304($sp)
    andi	$at,$s8,0x7
    addu	$s0,$s8,$t9
    move	$v0,$t8
    sll	$s0,$s0,0x2
    beqz	$at,.L01695e54
    addu	$s0,$s0,$a0
.L01695e44:
    addiu	$at,$at,-1
    addiu	$v0,$v0,4
    bnez	$at,.L01695e44
    sw	$a1,-4($v0)
.L01695e54:
    sra	$at,$v1,0x3
    beqz	$at,.L01695da0
    slti	$v1,$at,2
    beqzl	$v1,.L01695d50
    sw	$a1,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
    sw	$a1,4($v0)
    b	.L01695da0
    sw	$a1,0($v0)
.L01695e8c:
    b	.L01694e68
    sh	$zero,0($sp)
.L01695e94:
    blez	$s0,.L01695c50
    ld	$s8,136($sp)
    addiu	$s2,$s8,-8
    xori	$s2,$s2,0x8
    li	$s6,-7
    sra	$s2,$s2,0x1f
    and	$s2,$s2,$s6
    addu	$s2,$s2,$s8
    slti	$s6,$s2,8
    addiu	$s7,$s2,-8
    addiu	$s2,$s2,-1
    movz	$s2,$s7,$s6
    move	$ra,$zero
    sra	$s2,$s2,0x3
    sll	$s1,$s5,0x2
    addiu	$s7,$s2,1
    lui	$a1,0xff00
    ld	$a6,304($sp)
    sll	$t8,$s7,0x5
    move	$at,$s7
    slt	$t9,$s7,$zero
    move	$a5,$a6
    movn	$at,$zero,$t9
    addu	$t8,$t8,$a6
    sll	$t0,$at,0x5
    addu	$a6,$a6,$t0
    sll	$at,$at,0x3
    move	$t9,$at
    subu	$s8,$s8,$at
    b	.L01695f78
    addiu	$s6,$s8,-1
.L01695f10:
    sw	$a1,0($v0)
    addiu	$v1,$v1,-32
    move	$at,$a1
    nop
.L01695f20:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695f20
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695f60:
    addu	$a5,$a5,$s1
    addiu	$ra,$ra,1
    addu	$t8,$t8,$s1
    addu	$a6,$a6,$s1
    beq	$ra,$s0,.L01695c50
    addu	$t9,$s5,$t9
.L01695f78:
    bltz	$s2,.L01695fe0
    slti	$at,$s7,2
    bnez	$at,.L016961b0
    nop
    sw	$a1,4($a5)
    addiu	$v1,$t8,-32
    sw	$a1,0($a5)
    move	$at,$a1
    move	$v0,$a5
    nop
.L01695fa0:
    sw	$at,8($v0)
    sw	$at,12($v0)
    sw	$at,16($v0)
    sw	$at,20($v0)
    sw	$at,24($v0)
    sw	$at,28($v0)
    addiu	$v0,$v0,32
    sw	$at,0($v0)
    bne	$v0,$v1,.L01695fa0
    sw	$at,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
.L01695fe0:
    bltz	$s6,.L01695f60
    ld	$a0,304($sp)
    andi	$at,$s8,0x7
    addu	$v1,$s8,$t9
    move	$v0,$a6
    sll	$v1,$v1,0x2
    beqz	$at,.L01696010
    addu	$v1,$v1,$a0
.L01696000:
    addiu	$at,$at,-1
    addiu	$v0,$v0,4
    bnez	$at,.L01696000
    sw	$a1,-4($v0)
.L01696010:
    sra	$at,$s8,0x3
    beqz	$at,.L01695f60
    slti	$a0,$at,2
    beqzl	$a0,.L01695f10
    sw	$a1,4($v0)
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
    sw	$a1,4($v0)
    b	.L01695f60
    sw	$a1,0($v0)
.L01696048:
    b	.L01695b34
    move	$v1,$v0
.L01696050:
    b	.L01695c38
    move	$v1,$v0
    nop
    nop
.L01696060:
    lh	$at,6($sp)
    slt	$a1,$at,$a4
    movz	$at,$a4,$a1
.L0169606c:
    addiu	$a5,$a5,1
    slt	$a2,$a5,$at
    addiu	$ra,$ra,1
    beqz	$a2,.L016955dc
    addu	$s6,$s6,$s5
.L01696080:
    lh	$a1,0($sp)
    slt	$a7,$a1,$s8
    movn	$a1,$s8,$a7
    slt	$a3,$a1,$a6
    beqz	$a3,.L0169606c
    subu	$a0,$a1,$s7
    ld	$v1,304($sp)
    addu	$a0,$s6,$a0
    subu	$at,$a1,$s8
    sll	$a0,$a0,0x2
    b	.L016960d4
    addu	$v1,$v1,$a0
.L016960b0:
    sw	$s2,0($v1)
.L016960b4:
    lh	$a6,4($sp)
    slt	$a2,$a6,$s0
    movz	$a6,$s0,$a2
.L016960c0:
    addiu	$a1,$a1,1
    slt	$a3,$a1,$a6
    addiu	$at,$at,1
    beqz	$a3,.L01696060
    addiu	$v1,$v1,4
.L016960d4:
    lw	$a3,0($v0)
    lhu	$a0,8($a3)
    addiu	$a0,$a0,31
    sra	$a0,$a0,0x5
    sll	$a0,$a0,0x2
    mult	$ra,$a0
    slt	$t9,$at,$zero
    addiu	$t8,$at,7
    movz	$t8,$at,$t9
    sra	$t8,$t8,0x3
    mflo	$t9
    lw	$a7,4($a3)
    addu	$t9,$t8,$t9
    sll	$t8,$t8,0x3
    addu	$a7,$t9,$a7
    subu	$t8,$at,$t8
    lbu	$a7,0($a7)
    srav	$t8,$s1,$t8
    and	$a7,$t8,$a7
    beqz	$a7,.L016960c0
    nop
    lw	$a2,0($a3)
    addu	$a2,$t9,$a2
    lbu	$a2,0($a2)
    and	$a2,$t8,$a2
    bnez	$a2,.L016960b0
    nop
    b	.L016960b4
    sw	$s3,0($v1)
.L01696148:
    sw	$a1,60($v1)
    sw	$a1,56($v1)
    sw	$a1,52($v1)
    sw	$a1,48($v1)
    sw	$a1,44($v1)
    sw	$a1,40($v1)
    sw	$a1,36($v1)
    sw	$a1,32($v1)
    sw	$a1,28($v1)
    sw	$a1,24($v1)
    sw	$a1,20($v1)
    sw	$a1,16($v1)
    sw	$a1,12($v1)
    sw	$a1,8($v1)
    sw	$a1,4($v1)
    b	.L01695b6c
    sw	$a1,0($v1)
.L0169618c:
    sw	$a1,28($v1)
    sw	$a1,24($v1)
    sw	$a1,20($v1)
    sw	$a1,16($v1)
    sw	$a1,12($v1)
    sw	$a1,8($v1)
    sw	$a1,4($v1)
    b	.L01695c50
    sw	$a1,0($v1)
.L016961b0:
    sw	$a1,28($a5)
    sw	$a1,24($a5)
    sw	$a1,20($a5)
    sw	$a1,16($a5)
    sw	$a1,12($a5)
    sw	$a1,8($a5)
    sw	$a1,4($a5)
    b	.L01695fe0
    sw	$a1,0($a5)
.L016961d4:
    sw	$a1,28($a5)
    sw	$a1,24($a5)
    sw	$a1,20($a5)
    sw	$a1,16($a5)
    sw	$a1,12($a5)
    sw	$a1,8($a5)
    sw	$a1,4($a5)
    b	.L01695e20
    sw	$a1,0($a5)
.L016961f8:
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
    sw	$a1,4($v0)
    b	.L01694f60
    sw	$a1,0($v0)
.L0169621c:
    sw	$a1,28($v0)
    sw	$a1,24($v0)
    sw	$a1,20($v0)
    sw	$a1,16($v0)
    sw	$a1,12($v0)
    sw	$a1,8($v0)
    sw	$a1,4($v0)
    b	.L01695030
    sw	$a1,0($v0)
.L01696240:
    sw	$a1,28($a6)
    sw	$a1,24($a6)
    sw	$a1,20($a6)
    sw	$a1,16($a6)
    sw	$a1,12($a6)
    sw	$a1,8($a6)
    sw	$a1,4($a6)
    b	.L01695950
    sw	$a1,0($a6)
.L01696264:
    sw	$a1,28($a6)
    sw	$a1,24($a6)
    sw	$a1,20($a6)
    sw	$a1,16($a6)
    sw	$a1,12($a6)
    sw	$a1,8($a6)
    sw	$a1,4($a6)
    b	.L01695770
    sw	$a1,0($a6)
    nop
    nop
.L01696290:
    li	$t1,3
    b	.L01695310
    ld	$v0,296($sp)

glabel nfbStereoCopyPlane
    lw	$t3,72($a2)
    addiu	$sp,$sp,-208
    lw	$t2,220($sp)
    sd	$s8,40($sp)
    sd	$s2,88($sp)
    sd	$s1,48($sp)
    sd	$s3,72($sp)
    sd	$s7,64($sp)
    lui	$s7,0xa
    sd	$s6,80($sp)
    addiu	$s7,$s7,8384
    sd	$gp,96($sp)
    addu	$gp,$t9,$s7
    lw	$s6,-6768($gp)
    move	$v0,$a6
    lw	$s3,76($a2)
    move	$s1,$a0
    sd	$s0,56($sp)
    sll	$s6,$s6,0x2
    move	$s0,$a1
    lbu	$v1,0($a1)
    addu	$s3,$s3,$s6
    move	$s2,$a2
    li	$at,1
    lw	$s3,0($s3)
    move	$s8,$a7
    sd	$ra,104($sp)
    move	$s7,$a3
    move	$s6,$a4
    beq	$at,$v1,.L01698c2c
    lw	$t8,8($s3)
    sd	$s4,16($sp)
    lw	$s4,16($a1)
    lw	$s4,116($s4)
    lw	$at,92($s3)
    lhu	$s4,226($s4)
    sw	$at,72($a2)
    li	$t9,1
    sw	$t9,104($s3)
    lw	$ra,16($a1)
    lw	$ra,116($ra)
    lw	$ra,220($ra)
    sd	$s5,128($sp)
    lw	$s5,212($sp)
    beq	$t9,$ra,.L01698b0c
    lw	$a0,100($s3)
    lh	$t9,90($s3)
    sw	$a0,8($s3)
    addu	$t9,$t9,$s4
    bne	$s1,$a1,.L016989e4
    sh	$t9,90($s3)
    sd	$t8,120($sp)
    sd	$t3,112($sp)
    sd	$a5,32($sp)
    addu	$s5,$s4,$s5
    b	.L01698a00
    sd	$a6,24($sp)
.L016989e4:
    sd	$t8,120($sp)
    sd	$t3,112($sp)
    sd	$a5,32($sp)
    lh	$ra,10($a1)
    sd	$a6,24($sp)
    addu	$ra,$ra,$s4
    sh	$ra,10($a1)
.L01698a00:
    lw	$ra,220($sp)
    sw	$s5,4($sp)
    sw	$ra,12($sp)
    lw	$t9,72($s2)
    move	$a0,$s1
    lw	$t9,16($t9)
    move	$a1,$s0
    move	$a2,$s2
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    jalr	$t9
    move	$a7,$s8
    bnez	$v0,.L01698af4
    nop
    lw	$v0,96($s3)
.L01698a44:
    lh	$at,90($s3)
    sw	$v0,8($s3)
    subu	$at,$at,$s4
    bne	$s1,$s0,.L01698a60
    sh	$at,90($s3)
    b	.L01698a6c
    subu	$s5,$s5,$s4
.L01698a60:
    lh	$v1,10($s0)
    subu	$v1,$v1,$s4
    sh	$v1,10($s0)
.L01698a6c:
    lw	$ra,220($sp)
    sw	$s5,4($sp)
    sw	$ra,12($sp)
    lw	$t9,72($s2)
    move	$a0,$s1
    lw	$t9,16($t9)
    ld	$s4,120($sp)
    move	$a1,$s0
    move	$a2,$s2
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    jalr	$t9
    move	$a7,$s8
    ld	$s5,128($sp)
    ld	$ra,104($sp)
    ld	$a1,112($sp)
    move	$a0,$v0
.L01698ab8:
    ld	$gp,96($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    sw	$s4,8($s3)
    sw	$a1,72($s2)
    ld	$s2,88($sp)
    sw	$zero,104($s3)
    ld	$s3,72($sp)
    ld	$s4,16($sp)
    ld	$s6,80($sp)
    move	$v0,$a0
    ld	$s7,64($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L01698af4:
    lw	$t9,16($s0)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$v0
    b	.L01698a44
    lw	$v0,96($s3)
.L01698b0c:
    lw	$s5,212($sp)
    sd	$t8,120($sp)
    lw	$at,96($s3)
    lh	$ra,90($s3)
    sw	$at,8($s3)
    subu	$ra,$ra,$s4
    bne	$s1,$a1,.L01698b40
    sh	$ra,90($s3)
    sd	$t3,112($sp)
    sd	$a5,32($sp)
    subu	$s5,$s5,$s4
    b	.L01698b58
    sd	$a6,24($sp)
.L01698b40:
    sd	$t3,112($sp)
    sd	$a5,32($sp)
    lh	$v1,10($a1)
    sd	$a6,24($sp)
    subu	$v1,$v1,$s4
    sh	$v1,10($a1)
.L01698b58:
    lw	$ra,220($sp)
    sw	$s5,4($sp)
    sw	$ra,12($sp)
    lw	$t9,72($s2)
    move	$a0,$s1
    lw	$t9,16($t9)
    move	$a1,$s0
    move	$a2,$s2
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    jalr	$t9
    move	$a7,$s8
    bnez	$v0,.L01698c14
    nop
    lw	$v0,100($s3)
.L01698b9c:
    lh	$at,90($s3)
    sw	$v0,8($s3)
    addu	$at,$at,$s4
    bne	$s1,$s0,.L01698bb8
    sh	$at,90($s3)
    b	.L01698bc4
    addu	$s5,$s4,$s5
.L01698bb8:
    lh	$v1,10($s0)
    addu	$v1,$v1,$s4
    sh	$v1,10($s0)
.L01698bc4:
    lw	$ra,220($sp)
    sw	$s5,4($sp)
    sw	$ra,12($sp)
    lw	$t9,72($s2)
    move	$a0,$s1
    lw	$t9,16($t9)
    move	$a1,$s0
    move	$a2,$s2
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    jalr	$t9
    move	$a7,$s8
    ld	$s5,128($sp)
    ld	$s4,120($sp)
    ld	$ra,104($sp)
    ld	$a1,112($sp)
    b	.L01698ab8
    move	$a0,$v0
.L01698c14:
    lw	$t9,16($s0)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$v0
    b	.L01698b9c
    lw	$v0,100($s3)
.L01698c2c:
    lw	$ra,212($sp)
    sw	$t2,12($sp)
    sw	$ra,4($sp)
    lw	$t9,16($t3)
    jalr	$t9
    nop
    ld	$gp,96($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    ld	$ra,104($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,208

glabel nfbReadDisplayShutdown__IJ
    lui	$a4,0xa
    addiu	$sp,$sp,-32
    addiu	$a4,$a4,-6256
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    lw	$a3,-9200($gp)
    lw	$a2,436($a0)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a3,0($a2)
    beqz	$a3,.L0169c2a0
    nop
    lw	$t9,4($a3)
    beqz	$t9,.L0169c2a0
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jalr	$t9
    ld	$a0,0($sp)
    ld	$ra,16($sp)
    ld	$a5,0($sp)
    lw	$a6,-9200($gp)
    lw	$a5,436($a5)
    sll	$a6,$a6,0x2
    ld	$gp,8($sp)
    addu	$a5,$a5,$a6
    addiu	$sp,$sp,32
    jr	$ra
    sw	$zero,0($a5)
.L0169c2a0:
    sw	$zero,0($a2)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel nfbCopyArea
    addiu	$sp,$sp,-352
    sd	$s4,232($sp)
    sd	$s7,80($sp)
    sd	$s1,160($sp)
    sd	$s5,168($sp)
    move	$s5,$a0
    move	$s1,$a1
    sd	$s0,184($sp)
    move	$s0,$a2
    move	$s7,$a3
    sd	$s6,72($sp)
    move	$s6,$a4
    sd	$s8,96($sp)
    lui	$at,0xa
    move	$s8,$a7
    sd	$ra,216($sp)
    addiu	$at,$at,-7600
    sd	$gp,192($sp)
    beqz	$a5,.L0169cd78
    addu	$gp,$t9,$at
    beqz	$a6,.L0169cd7c
    ld	$s4,232($sp)
    lbu	$v0,0($a0)
    beqz	$v0,.L0169cb40
    nop
    li	$a0,1
.L0169c7d8:
    beq	$a0,$v0,.L0169cb54
    lw	$v1,-6768($gp)
    lw	$v0,76($s0)
    lw	$a1,16($s0)
    sll	$v1,$v1,0x2
    sd	$s3,224($sp)
    addu	$v0,$v0,$v1
    srl	$v1,$a1,0x15
    lw	$v0,0($v0)
    sd	$s2,240($sp)
    and	$v1,$a0,$v1
    lbu	$s2,48($v0)
    beq	$a0,$v1,.L0169cbd0
    lw	$s3,52($v0)
    sd	$a6,64($sp)
    sd	$a5,88($sp)
    sd	$zero,176($sp)
    dsll32	$s4,$s6,0x10
    sd	$v0,152($sp)
    dsll32	$t3,$s7,0x10
    dsra32	$t3,$t3,0x10
    sd	$t3,104($sp)
    dsra32	$s4,$s4,0x10
    sd	$s4,112($sp)
    lh	$a7,8($s5)
    lh	$t2,10($s5)
    addu	$a7,$a7,$s7
    sh	$a7,16($sp)
    addiu	$s4,$s5,44
    addu	$t2,$t2,$s6
    sh	$t2,18($sp)
    move	$s6,$t2
    addu	$t2,$t2,$a6
    sh	$t2,22($sp)
    move	$s7,$a7
    addu	$a7,$a7,$a5
    sh	$a7,20($sp)
.L0169c86c:
    sh	$t2,22($sp)
    sh	$a7,20($sp)
    sh	$s6,18($sp)
    sh	$s7,16($sp)
    lw	$t9,0($s0)
    lw	$t9,340($t9)
    li	$a2,1
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,24
    lw	$t9,0($s0)
    lw	$t9,356($t9)
    move	$a2,$s4
    addiu	$a0,$sp,24
    jalr	$t9
    move	$a1,$a0
    dsll32	$a0,$s8,0x10
    dsra32	$a0,$a0,0x10
    sd	$a0,128($sp)
    lw	$at,356($sp)
    lh	$v1,10($s1)
    lbu	$ra,0($s1)
    lh	$v0,8($s1)
    addu	$v1,$v1,$at
    dsll32	$at,$at,0x10
    sw	$v1,356($sp)
    dsra32	$at,$at,0x10
    addu	$s8,$v0,$s8
    bnez	$ra,.L0169c960
    sd	$at,120($sp)
    lw	$a1,124($s1)
    sll	$a1,$a1,0x14
    bltz	$a1,.L0169c960
    nop
    lw	$t9,0($s0)
    lw	$t9,352($t9)
    jalr	$t9
    addiu	$a0,$sp,24
    addiu	$ra,$sp,40
    beq	$s4,$ra,.L0169d014
    ld	$at,176($sp)
    beqz	$at,.L0169c928
    nop
    lw	$t9,0($s0)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$s4
.L0169c928:
    ld	$s4,232($sp)
.L0169c92c:
    ld	$s2,240($sp)
    ld	$s3,224($sp)
    ld	$gp,192($sp)
    ld	$s0,184($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    ld	$ra,216($sp)
    ld	$s6,72($sp)
    move	$v0,$zero
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0169c960:
    lw	$t9,0($s0)
    lw	$t9,376($t9)
    lw	$a2,356($sp)
    subu	$a1,$s8,$s7
    addiu	$a0,$sp,24
    jalr	$t9
    subu	$a2,$a2,$s6
    sd	$zero,144($sp)
.L0169c980:
    lw	$t9,0($s0)
    lw	$t9,356($t9)
    ld	$a2,152($sp)
    addiu	$a0,$sp,24
    move	$a1,$a0
    jalr	$t9
    lw	$a2,8($a2)
.L0169c99c:
    lw	$v0,32($sp)
    beqz	$v0,.L0169c9b4
    nop
    lw	$ra,4($v0)
    beqz	$ra,.L0169cab8
    sd	$s4,248($sp)
.L0169c9b4:
    lbu	$at,0($s5)
    beqz	$at,.L0169ce70
    nop
    sd	$s4,248($sp)
    lw	$t8,-5736($gp)
    lw	$s4,132($s1)
    sll	$t8,$t8,0x2
    addu	$s4,$s4,$t8
    lw	$s4,0($s4)
    lw	$s4,0($s4)
    beqz	$v0,.L0169cf94
    lw	$s4,8($s4)
    lw	$t9,4($v0)
    sd	$s8,256($sp)
    addiu	$a0,$v0,8
    sd	$s7,264($sp)
    sd	$s6,272($sp)
    blez	$t9,.L0169cab8
    move	$t2,$t9
.L0169ca00:
    ld	$t9,256($sp)
    ld	$t8,264($sp)
    sd	$s0,280($sp)
    subu	$t8,$t8,$t9
    sd	$t8,208($sp)
    sd	$s5,56($sp)
    lw	$s7,356($sp)
    ld	$s5,56($sp)
    ld	$s6,272($sp)
    lbu	$s8,3($s5)
    subu	$s6,$s6,$s7
    lw	$s7,32($s5)
    move	$s0,$a0
    sd	$s7,200($sp)
    sll	$s7,$t2,0x3
    lw	$s5,28($s5)
    addu	$s7,$a0,$s7
    sra	$s8,$s8,0x3
    nop
    lh	$a5,0($s0)
.L0169ca50:
    lh	$a4,2($s0)
    ld	$a6,208($sp)
    addu	$a5,$a5,$a6
    mult	$s8,$a5
    addu	$a4,$a4,$s6
    mflo	$a1
    nop
    nop
    mult	$s5,$a4
    move	$a0,$s0
    move	$t9,$s4
    ld	$a2,200($sp)
    move	$a5,$s1
    mflo	$a3
    move	$a4,$s3
    addu	$a2,$a2,$a3
    move	$a3,$s2
    addu	$a1,$a1,$a2
    pref	0x0,256($s0)
    jalr	$t9
    move	$a2,$s5
    addiu	$s0,$s0,8
    bnel	$s0,$s7,.L0169ca50
    lh	$a5,0($s0)
    ld	$s0,280($sp)
    ld	$s5,56($sp)
.L0169cab8:
    ld	$s4,248($sp)
.L0169cabc:
    ld	$a7,152($sp)
    ld	$s3,224($sp)
    lw	$a7,0($a7)
    ld	$s2,240($sp)
    ld	$s6,72($sp)
    sll	$a7,$a7,0x18
    ld	$s7,80($sp)
    bltz	$a7,.L0169cda8
    ld	$s8,96($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    sd	$zero,136($sp)
.L0169caec:
    lw	$t9,0($s0)
    lw	$t9,352($t9)
    jalr	$t9
    addiu	$a0,$sp,24
    addiu	$ra,$sp,40
    beq	$s4,$ra,.L0169cdc4
    ld	$at,176($sp)
    beqz	$at,.L0169cb24
    ld	$a0,136($sp)
    lw	$t9,0($s0)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$s4
    ld	$a0,136($sp)
.L0169cb24:
    ld	$ra,216($sp)
    ld	$s4,232($sp)
    move	$v0,$a0
    ld	$s0,184($sp)
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0169cb40:
    lbu	$ra,0($a1)
    beqz	$ra,.L0169d0ac
    lw	$a2,-5736($gp)
    b	.L0169c7d8
    li	$a0,1
.L0169cb54:
    lbu	$at,0($s1)
    beq	$a0,$at,.L0169d044
    dsll32	$t9,$s6,0x10
    dsll32	$v0,$s7,0x10
    dsra32	$v0,$v0,0x10
    sd	$v0,104($sp)
    dsra32	$t9,$t9,0x10
    sd	$t9,112($sp)
    sd	$s2,240($sp)
    sd	$s3,224($sp)
    lw	$s3,-6768($gp)
    lw	$s2,76($s0)
    lh	$t8,8($s5)
    sll	$s3,$s3,0x2
    lh	$t3,10($s5)
    addu	$s2,$s2,$s3
    lw	$s2,0($s2)
    sd	$s2,152($sp)
    lw	$s3,52($s2)
    addu	$t3,$t3,$s6
    lbu	$s2,48($s2)
    addu	$t8,$t8,$s7
    addu	$a7,$t3,$a6
    sh	$a7,22($sp)
    addu	$t9,$t8,$a5
    sh	$t9,20($sp)
    move	$s6,$t3
    sh	$t3,18($sp)
    move	$s7,$t8
    b	.L0169cc24
    sh	$t8,16($sp)
.L0169cbd0:
    lw	$t8,24($s5)
    bnez	$t8,.L0169cddc
    sd	$v0,152($sp)
    dsll32	$t9,$s7,0x10
    dsra32	$t9,$t9,0x10
    sd	$t9,104($sp)
    lh	$t3,10($s5)
    dsll32	$t8,$s6,0x10
    dsra32	$t8,$t8,0x10
    sd	$t8,112($sp)
    lh	$t8,8($s5)
    addu	$t3,$t3,$s6
    sh	$t3,18($sp)
    addu	$t8,$t8,$s7
    sh	$t8,16($sp)
    addu	$a7,$t3,$a6
    sh	$a7,22($sp)
    move	$s6,$t3
    addu	$t9,$t8,$a5
    sh	$t9,20($sp)
    move	$s7,$t8
.L0169cc24:
    dsll32	$a2,$t3,0x10
    dsra32	$a2,$a2,0x10
    dsll32	$v0,$t9,0x10
    dsll32	$t2,$t8,0x10
    lh	$ra,8($s5)
    dsra32	$t2,$t2,0x10
    dsra32	$v0,$v0,0x10
    slt	$a3,$t2,$ra
    dsll32	$a1,$a7,0x10
    beqz	$a3,.L0169cc60
    dsra32	$a1,$a1,0x10
    sh	$ra,16($sp)
    move	$t2,$ra
    b	.L0169cc68
    sd	$zero,144($sp)
.L0169cc60:
    li	$a3,1
    sd	$a3,144($sp)
.L0169cc68:
    lh	$a7,10($s5)
    slt	$a4,$a2,$a7
    beqz	$a4,.L0169cc84
    nop
    sh	$a7,18($sp)
    move	$a2,$a7
    sd	$zero,144($sp)
.L0169cc84:
    lh	$a7,8($s5)
    lhu	$t0,12($s5)
    addu	$a7,$a7,$t0
    slt	$t0,$a7,$v0
    beqz	$t0,.L0169cca8
    nop
    sh	$a7,20($sp)
    move	$v0,$a7
    sd	$zero,144($sp)
.L0169cca8:
    lh	$a7,10($s5)
    lhu	$t0,14($s5)
    addu	$a7,$a7,$t0
    slt	$t1,$a7,$a1
    beqz	$t1,.L0169ccd0
    dsll32	$v1,$s8,0x10
    sh	$a7,22($sp)
    move	$a1,$a7
    sd	$zero,144($sp)
    dsll32	$v1,$s8,0x10
.L0169ccd0:
    dsra32	$v1,$v1,0x10
    sd	$v1,128($sp)
    lw	$t9,356($sp)
    lh	$at,10($s1)
    lbu	$t1,0($s1)
    lh	$ra,8($s1)
    addu	$at,$at,$t9
    dsll32	$t9,$t9,0x10
    sw	$at,356($sp)
    dsra32	$t9,$t9,0x10
    addu	$s8,$ra,$s8
    beqz	$t1,.L0169d02c
    sd	$t9,120($sp)
    subu	$v1,$t8,$s8
.L0169cd08:
    subu	$v0,$v0,$v1
    subu	$t2,$t2,$v1
    dsll32	$v0,$v0,0x10
    lw	$a3,356($sp)
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    subu	$a3,$t3,$a3
    ld	$ra,152($sp)
    dsra32	$v0,$v0,0x10
    subu	$a2,$a2,$a3
    sh	$v0,20($sp)
    subu	$a1,$a1,$a3
    dsll32	$a2,$a2,0x10
    sh	$t2,16($sp)
    dsll32	$a1,$a1,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,22($sp)
    dsra32	$a2,$a2,0x10
    sh	$a2,18($sp)
    lw	$ra,8($ra)
    lw	$t9,8($ra)
    beqz	$t9,.L0169cef4
    nop
    lw	$t3,4($t9)
    bne	$t3,$a0,.L0169cec8
    nop
    b	.L0169cef8
    addiu	$a0,$t9,8
.L0169cd78:
    ld	$s4,232($sp)
.L0169cd7c:
    ld	$gp,192($sp)
    ld	$s0,184($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    ld	$ra,216($sp)
    ld	$s6,72($sp)
    move	$v0,$zero
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0169cda8:
    ld	$t8,144($sp)
    beqz	$t8,.L0169d1c0
    ld	$a3,104($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    b	.L0169caec
    sd	$zero,136($sp)
.L0169cdc4:
    lw	$t9,0($s0)
    lw	$t9,352($t9)
    jalr	$t9
    move	$a0,$s4
    b	.L0169cb24
    ld	$a0,136($sp)
.L0169cddc:
    bne	$s5,$s1,.L0169cdfc
    srl	$ra,$a1,0x12
    andi	$ra,$ra,0x3
    bnez	$ra,.L0169cdfc
    ld	$s4,152($sp)
    sd	$zero,176($sp)
    b	.L0169ce24
    lw	$s4,8($s4)
.L0169cdfc:
    lw	$t9,-28188($gp)
    sd	$a5,88($sp)
    sd	$a6,64($sp)
    jalr	$t9
    move	$a0,$s5
    ld	$a6,64($sp)
    ld	$a5,88($sp)
    move	$s4,$v0
    li	$t8,1
    sd	$t8,176($sp)
.L0169ce24:
    sd	$a6,64($sp)
    dsll32	$t9,$s7,0x10
    sd	$a5,88($sp)
    dsll32	$v0,$s6,0x10
    dsra32	$v0,$v0,0x10
    sd	$v0,112($sp)
    dsra32	$t9,$t9,0x10
    sd	$t9,104($sp)
    lh	$at,10($s5)
    lh	$ra,8($s5)
    addu	$s6,$at,$s6
    sh	$s6,18($sp)
    addu	$s7,$ra,$s7
    sh	$s7,16($sp)
    addu	$t2,$s6,$a6
    sh	$t2,22($sp)
    addu	$a7,$s7,$a5
    b	.L0169c86c
    sh	$a7,20($sp)
.L0169ce70:
    lbu	$v1,0($s1)
    bnez	$v1,.L0169cfb4
    la	$t3,dbcWindowPrivateIndex
    lw	$t3,0($t3)
    lw	$a0,132($s5)
    sll	$t3,$t3,0x2
    lw	$t8,132($s1)
    addu	$a0,$a0,$t3
    lb	$a0,0($a0)
    addu	$t3,$t3,$t8
    lb	$t2,1($t3)
    beq	$a0,$t2,.L0169d194
    la	$v0,sub_01730000
    sltiu	$t8,$s2,16
    sll	$v1,$s2,0x2
    addiu	$v0,$v0,-24200
    sd	$s4,248($sp)
    beqz	$t8,.L0169cab8
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    sd	$s4,248($sp)
.L0169cec8:
    lw	$t9,0($s0)
    lw	$t9,340($t9)
    sd	$a5,88($sp)
    li	$a2,1
    addiu	$a1,$sp,16
    sd	$a6,64($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    sd	$zero,176($sp)
    b	.L0169c980
    move	$s4,$zero
.L0169cef4:
    move	$a0,$ra
.L0169cef8:
    lh	$t3,0($a0)
    slt	$ra,$t2,$t3
    beqz	$ra,.L0169cf10
    nop
    move	$t2,$t3
    sh	$t3,16($sp)
.L0169cf10:
    lh	$t3,4($a0)
    slt	$at,$t3,$v0
    beqz	$at,.L0169cf28
    nop
    move	$v0,$t3
    sh	$t3,20($sp)
.L0169cf28:
    lh	$t3,2($a0)
    slt	$v1,$a2,$t3
    beqz	$v1,.L0169cf40
    nop
    move	$a2,$t3
    sh	$t3,18($sp)
.L0169cf40:
    lh	$t3,6($a0)
    slt	$a3,$t3,$a1
    beqz	$a3,.L0169cf5c
    slt	$a4,$t2,$v0
    move	$a1,$t3
    sh	$t3,22($sp)
    slt	$a4,$t2,$v0
.L0169cf5c:
    beqz	$a4,.L0169cfec
    slt	$a7,$a2,$a1
    sd	$a5,88($sp)
    beqz	$a7,.L0169cfec
    sd	$a6,64($sp)
    lw	$t9,0($s0)
    lw	$t9,340($t9)
    li	$a2,1
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,24
.L0169cf88:
    sd	$zero,176($sp)
    b	.L0169c99c
    move	$s4,$zero
.L0169cf94:
    sd	$s8,256($sp)
    sd	$s7,264($sp)
    sd	$s6,272($sp)
    li	$t2,1
    sd	$s5,56($sp)
    addiu	$a0,$sp,24
    b	.L0169ca00
    sd	$s0,280($sp)
.L0169cfb4:
    ld	$s3,224($sp)
    ld	$s2,240($sp)
    lw	$t9,-28968($gp)
    move	$a0,$s1
    move	$a1,$s5
    lw	$a4,356($sp)
    lw	$a6,20($s0)
    subu	$a3,$s7,$s8
    addiu	$a2,$sp,24
    lbu	$a5,5($s0)
    jalr	$t9
    subu	$a4,$s6,$a4
    b	.L0169cab8
    sd	$s4,248($sp)
.L0169cfec:
    lw	$t9,0($s0)
    lw	$t9,340($t9)
    sd	$a5,88($sp)
    move	$a2,$zero
    move	$a1,$zero
    sd	$a6,64($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    b	.L0169cf88
    nop
.L0169d014:
    lw	$t9,0($s0)
    lw	$t9,352($t9)
    jalr	$t9
    move	$a0,$s4
    b	.L0169c92c
    ld	$s4,232($sp)
.L0169d02c:
    lw	$ra,124($s1)
    sll	$ra,$ra,0x14
    bgez	$ra,.L0169c92c
    ld	$s4,232($sp)
    b	.L0169cd08
    subu	$v1,$t8,$s8
.L0169d044:
    lbu	$v0,4($s0)
    slti	$v1,$v0,9
    bnez	$v1,.L0169d2b8
    slti	$v0,$v0,17
    beqz	$v0,.L0169d140
    move	$a0,$s5
    lw	$t9,-28960($gp)
    ld	$s4,232($sp)
    move	$a1,$s1
    move	$a2,$s0
    move	$a3,$s7
    move	$a4,$s6
    lw	$t0,356($sp)
    move	$a7,$s8
    jalr	$t9
    sw	$t0,4($sp)
    ld	$gp,192($sp)
    ld	$s0,184($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    ld	$ra,216($sp)
    ld	$s6,72($sp)
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0169d0ac:
    lw	$a1,132($a1)
    lw	$t1,132($a0)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    addu	$t1,$t1,$a2
    lw	$a1,0($a1)
    lw	$t1,0($t1)
    lw	$t2,24($a1)
    lw	$t1,24($t1)
    bne	$t1,$t2,.L0169d0fc
    li	$a0,1
    lw	$a3,16($s0)
    srl	$a3,$a3,0x15
    and	$a3,$a0,$a3
    bne	$a0,$a3,.L0169c7d8
    nop
    lw	$a4,32($a1)
    andi	$a4,$a4,0x8
    beqz	$a4,.L0169c7d8
    nop
.L0169d0fc:
    move	$a0,$s5
    lw	$t9,-31224($gp)
    move	$a1,$s1
    move	$a2,$s0
    move	$a3,$s7
    move	$a4,$s6
    lw	$t0,356($sp)
    move	$a7,$s8
    jalr	$t9
    sw	$t0,4($sp)
    ld	$s6,72($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    b	.L0169cb24
    move	$a0,$v0
.L0169d140:
    move	$a0,$s5
    lw	$t9,-31888($gp)
    ld	$s4,232($sp)
    move	$a1,$s1
    move	$a2,$s0
    move	$a3,$s7
    move	$a4,$s6
    lw	$t1,356($sp)
    move	$a7,$s8
    jalr	$t9
    sw	$t1,4($sp)
    ld	$gp,192($sp)
    ld	$s0,184($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    ld	$ra,216($sp)
    ld	$s6,72($sp)
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0169d194:
    move	$a0,$s1
    lw	$t9,-28964($gp)
    move	$a5,$s3
    move	$a4,$s2
    lw	$a3,356($sp)
    subu	$a2,$s7,$s8
    addiu	$a1,$sp,24
    jalr	$t9
    subu	$a3,$s6,$a3
    b	.L0169cab8
    sd	$s4,248($sp)
.L0169d1c0:
    ld	$a4,112($sp)
    sw	$zero,12($sp)
    ld	$a7,128($sp)
    ld	$a6,64($sp)
    lw	$t9,-31316($gp)
    move	$a0,$s5
    move	$a1,$s1
    ld	$a5,88($sp)
    move	$a2,$s0
    ld	$t0,120($sp)
    andi	$a6,$a6,0xffff
    sw	$t0,4($sp)
    jalr	$t9
    andi	$a5,$a5,0xffff
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    b	.L0169caec
    sd	$v0,136($sp)
    move	$a5,$s3
    lw	$t9,-28964($gp)
    move	$a4,$s2
    subu	$a2,$s7,$s8
    lw	$a3,356($sp)
    addiu	$a1,$sp,24
    move	$a0,$s1
    sb	$t2,0($t3)
    jalr	$t9
    subu	$a3,$s6,$a3
    b	.L0169cabc
    ld	$s4,248($sp)
    ld	$s3,224($sp)
    ld	$s2,240($sp)
    ld	$s6,72($sp)
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    ld	$a3,104($sp)
    ld	$a4,112($sp)
    ld	$a5,88($sp)
    ld	$a6,64($sp)
    lw	$t9,-31224($gp)
    ld	$a7,128($sp)
    move	$a0,$s5
    move	$a1,$s1
    ld	$t0,120($sp)
    move	$a2,$s0
    jalr	$t9
    sw	$t0,4($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    b	.L0169cb24
    move	$a0,$v0
    move	$a0,$s1
    lw	$t9,-28964($gp)
    move	$a5,$s3
    move	$a4,$s2
    lw	$a3,356($sp)
    subu	$a2,$s7,$s8
    addiu	$a1,$sp,24
    jalr	$t9
    subu	$a3,$s6,$a3
    b	.L0169cabc
    ld	$s4,248($sp)
.L0169d2b8:
    move	$a0,$s5
    lw	$t9,-29304($gp)
    move	$a1,$s1
    move	$a2,$s0
    move	$a3,$s7
    move	$a4,$s6
    lw	$t0,356($sp)
    move	$a7,$s8
    jalr	$t9
    sw	$t0,4($sp)
    ld	$s6,72($sp)
    ld	$s1,160($sp)
    ld	$s5,168($sp)
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    b	.L0169cb24
    move	$a0,$v0

glabel nfb6RopLoop__GH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L0169d3b0
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L0169d354
    sra	$a3,$t0,0x2
.L0169d32c:
    lw	$v0,0($a0)
    lw	$v1,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    xor	$v0,$v0,$v1
    bnez	$a4,.L0169d32c
    sw	$v0,-4($a1)
.L0169d354:
    beqz	$a3,.L0169d3b0
    nop
    nop
.L0169d360:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    xor	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    xor	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    xor	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    xor	$a4,$a4,$a6
    bnez	$a5,.L0169d360
    sw	$a4,-4($a1)
.L0169d3b0:
    jr	$ra
    nop

glabel nfbInfPolyPoint__KK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0xa
    sd	$s2,32($sp)
    addiu	$t8,$t8,-23760
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a7,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t1,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L016a0820
    lw	$t0,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t1,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L016a0820
    sd	$t0,8($sp)
    sw	$t1,19112($gp)
    sw	$a4,19088($gp)
    sw	$a7,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,20($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L016a0804
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016a0804:
    ld	$s1,16($sp)
.L016a0808:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016a0820:
    lw	$t9,32($s1)
    lw	$t9,20($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a7
    jalr	$t9
    move	$a3,$a6
    b	.L016a0808
    ld	$s1,16($sp)

glabel nfbTiledFS
    addiu	$sp,$sp,-112
    sd	$s2,24($sp)
    sd	$s3,32($sp)
    sd	$s4,48($sp)
    sd	$s6,40($sp)
    lw	$s6,76($a0)
    sd	$s5,56($sp)
    sd	$s8,72($sp)
    lui	$s8,0xa
    sd	$s7,64($sp)
    addiu	$s8,$s8,-29472
    sd	$gp,80($sp)
    addu	$gp,$t9,$s8
    lw	$t8,-6768($gp)
    lw	$s7,-5736($gp)
    lw	$s5,132($a1)
    sll	$t8,$t8,0x2
    lw	$s8,32($a0)
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    lw	$s6,0($s6)
    addu	$s5,$s5,$s7
    lw	$s5,0($s5)
    lw	$s4,76($s6)
    move	$s3,$a0
    lw	$s5,0($s5)
    move	$s2,$a1
    sll	$s7,$a4,0x2
    lbu	$s6,72($s6)
    addu	$s7,$s7,$a3
    blez	$a4,.L016a1e08
    lw	$s5,28($s5)
    sd	$ra,88($sp)
    sd	$s0,96($sp)
    move	$s0,$a3
    sd	$s1,104($sp)
    move	$s1,$a2
    nop
    nop
    nop
.L016a1d80:
    lh	$t2,0($s1)
    sh	$t2,16($sp)
    lw	$t1,0($s0)
    addu	$t1,$t1,$t2
    sh	$t1,20($sp)
    lh	$t0,2($s1)
    pref	0x0,256($s0)
    pref	0x0,256($s1)
    lw	$a7,-6768($gp)
    sh	$t0,18($sp)
    addiu	$t0,$t0,1
    sh	$t0,22($sp)
    lhu	$a5,14($s8)
    lhu	$a4,12($s8)
    lw	$a6,76($s3)
    sll	$a7,$a7,0x2
    lw	$a3,28($s8)
    lw	$a2,32($s8)
    addu	$a6,$a6,$a7
    addiu	$a0,$sp,16
    move	$t9,$s5
    lw	$a6,0($a6)
    li	$a1,1
    move	$a7,$s6
    sw	$s4,4($sp)
    sw	$s2,12($sp)
    jalr	$t9
    addiu	$a6,$a6,88
    addiu	$s0,$s0,4
    bne	$s0,$s7,.L016a1d80
    addiu	$s1,$s1,4
    ld	$ra,88($sp)
    ld	$s0,96($sp)
    ld	$s1,104($sp)
.L016a1e08:
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    ld	$s6,40($sp)
    ld	$s4,48($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,72($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112

glabel nfbMarkUnrealizedWindow
    lui	$v1,0x9
    lw	$v0,24($a0)
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,20736
    sd	$gp,0($sp)
    addu	$gp,$t9,$v1
    lw	$a5,-5736($gp)
    lw	$v0,132($v0)
    lw	$a4,132($a0)
    sll	$a6,$a5,0x2
    addu	$v0,$v0,$a6
    addu	$a7,$a6,$a4
    lw	$v0,0($v0)
    lw	$at,0($a7)
    lw	$v0,24($v0)
    lw	$at,24($at)
    sd	$s1,8($sp)
    lw	$s1,16($a0)
    sd	$s0,16($sp)
    bne	$at,$v0,.L016a59a4
    move	$s0,$a0
    bne	$a0,$a1,.L016a5924
    nop
    beqz	$a2,.L016a5968
    sll	$a2,$a5,0x2
.L016a5924:
    lw	$t9,392($s1)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$s0,44
    lw	$t9,232($s1)
    beqz	$t9,.L016a594c
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
.L016a594c:
    lw	$t9,392($s1)
    jalr	$t9
    addiu	$a0,$s0,56
    ld	$ra,24($sp)
    lw	$a4,132($s0)
    lw	$a5,-5736($gp)
    sll	$a2,$a5,0x2
.L016a5968:
    addu	$a2,$a2,$a4
    lw	$a2,0($a2)
    lw	$a1,116($s1)
    lw	$a2,24($a2)
    lw	$a1,68($a1)
    ld	$gp,0($sp)
    sll	$a2,$a2,0x2
    ld	$s0,16($sp)
    addu	$a1,$a1,$a2
    lw	$a0,0($a1)
    ld	$s1,8($sp)
    addiu	$sp,$sp,32
    addiu	$a0,$a0,1
    jr	$ra
    sw	$a0,0($a1)
.L016a59a4:
    li	$t0,1
    sw	$t0,68($a0)
    lw	$t2,0($a7)
    lw	$t1,116($s1)
    lw	$t2,24($t2)
    lw	$t1,60($t1)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    sw	$t0,0($t1)
    lw	$a5,132($a0)
    addu	$a5,$a6,$a5
    lw	$a5,0($a5)
    lw	$a4,116($s1)
    lw	$a5,24($a5)
    lw	$a4,68($a4)
    ld	$gp,0($sp)
    sll	$a5,$a5,0x2
    ld	$s0,16($sp)
    addu	$a4,$a4,$a5
    lw	$a3,0($a4)
    ld	$s1,8($sp)
    addiu	$sp,$sp,32
    addiu	$a3,$a3,1
    jr	$ra
    sw	$a3,0($a4)

glabel nfbStereoValidateClip__DJ
    addiu	$sp,$sp,-144
    move	$a4,$s8
    addiu	$s8,$sp,144
    sd	$a4,-80($s8)
    sd	$ra,-144($s8)
    sd	$s3,-136($s8)
    lui	$a3,0x9
    sd	$s2,-128($s8)
    addiu	$a3,$a3,16576
    sd	$gp,-96($s8)
    addu	$gp,$t9,$a3
    lw	$a2,-5736($gp)
    lw	$a1,132($a0)
    sd	$s5,-120($s8)
    sll	$a2,$a2,0x2
    sd	$s4,-112($s8)
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    sd	$s0,-88($s8)
    lw	$at,52($a1)
    lw	$s0,16($a0)
    sd	$s1,-104($s8)
    move	$s1,$a0
    beqz	$at,.L016a6aa4
    lw	$s4,116($s0)
    sh	$zero,-32($s8)
    lh	$a6,8($s0)
    sh	$a6,-28($s8)
    lw	$a5,220($s4)
    li	$a0,1
    beq	$a0,$a5,.L016a6b70
    nop
    sh	$zero,-30($s8)
    lhu	$t1,224($s4)
    sh	$t1,-26($s8)
    lw	$a7,52($a1)
    li	$t0,2
    beq	$a7,$t0,.L016a6ba0
    lhu	$s2,226($s4)
    move	$s2,$zero
.L016a69a0:
    li	$t2,0x10
.L016a69a4:
    lw	$t9,340($s0)
    move	$a2,$zero
    subu	$sp,$sp,$t2
    move	$a1,$zero
    move	$s3,$sp
    jalr	$t9
    move	$a0,$sp
    lw	$t9,344($s0)
    move	$a0,$s3
    addiu	$s5,$s1,44
    jalr	$t9
    move	$a1,$s5
    lw	$t9,340($s0)
    move	$a2,$zero
    addiu	$a1,$s8,-32
    jalr	$t9
    addiu	$a0,$s8,-48
    lw	$t9,356($s0)
    move	$a0,$s5
    move	$a1,$s5
    jalr	$t9
    addiu	$a2,$s8,-48
    lw	$t9,352($s0)
    jalr	$t9
    addiu	$a0,$s8,-48
    beqz	$s2,.L016a6a30
    nop
    lw	$t9,376($s0)
    move	$a0,$s5
    move	$a1,$zero
    jalr	$t9
    move	$a2,$s2
    lh	$t3,10($s1)
    addu	$t3,$t3,$s2
    sh	$t3,10($s1)
.L016a6a30:
    lw	$t9,240($s4)
.L016a6a34:
    jalr	$t9
    move	$a0,$s1
    beqz	$s2,.L016a6a50
    nop
    lh	$t8,10($s1)
    subu	$t8,$t8,$s2
    sh	$t8,10($s1)
.L016a6a50:
    beqz	$s3,.L016a6a74
    nop
    lw	$t9,344($s0)
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$s1,44
    lw	$t9,352($s0)
    jalr	$t9
    move	$a0,$s3
.L016a6a74:
    ld	$s3,-136($s8)
    ld	$s2,-128($s8)
    ld	$s5,-120($s8)
    ld	$gp,-96($s8)
    ld	$s0,-88($s8)
    ld	$s1,-104($s8)
    ld	$ra,-144($s8)
    ld	$t9,-80($s8)
    ld	$s4,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t9
.L016a6aa4:
    lw	$a1,52($a0)
    move	$s3,$zero
    beqz	$a1,.L016a6abc
    move	$s2,$zero
    lw	$ra,4($a1)
    beqz	$ra,.L016a6bdc
.L016a6abc:
    li	$at,0x10
    lw	$t9,340($s0)
    move	$a2,$zero
    subu	$sp,$sp,$at
    move	$a1,$zero
    move	$s3,$sp
    jalr	$t9
    move	$a0,$sp
    lw	$t9,344($s0)
    move	$a0,$s3
    addiu	$s5,$s1,44
    jalr	$t9
    move	$a1,$s5
    sh	$zero,-56($s8)
    lh	$a0,8($s0)
    sh	$a0,-52($s8)
    lw	$v0,220($s4)
    li	$v1,1
    beq	$v0,$v1,.L016a6bec
    nop
    sh	$zero,-54($s8)
    lhu	$a1,224($s4)
    sh	$a1,-50($s8)
    lhu	$s2,226($s4)
.L016a6b1c:
    lw	$t9,340($s0)
    move	$a2,$zero
    addiu	$a1,$s8,-56
    jalr	$t9
    addiu	$a0,$s8,-72
    lw	$t9,356($s0)
    move	$a0,$s5
    move	$a1,$s5
    jalr	$t9
    addiu	$a2,$s8,-72
    lw	$a1,52($s1)
    beqz	$a1,.L016a6b5c
    li	$a4,2
    lw	$a2,4($a1)
    beqz	$a2,.L016a6c04
    nop
.L016a6b5c:
    lw	$a3,220($s4)
    bne	$a3,$a4,.L016a6ba8
    nop
    b	.L016a6bc8
    move	$s2,$zero
.L016a6b70:
    lhu	$t0,226($s4)
    sh	$t0,-30($s8)
    lhu	$a7,226($s4)
    lhu	$a6,224($s4)
    addu	$a6,$a6,$a7
    sh	$a6,-26($s8)
    lw	$a5,52($a1)
    lhu	$s2,226($s4)
    beq	$a5,$a0,.L016a6be4
    negu	$s2,$s2
    b	.L016a69a0
    move	$s2,$zero
.L016a6ba0:
    b	.L016a69a4
    li	$t2,0x10
.L016a6ba8:
    lw	$t9,376($s0)
    move	$a0,$s5
    move	$a1,$zero
    jalr	$t9
    move	$a2,$s2
    lh	$t1,10($s1)
    addu	$t1,$t1,$s2
    sh	$t1,10($s1)
.L016a6bc8:
    lw	$t9,352($s0)
    jalr	$t9
    addiu	$a0,$s8,-72
    b	.L016a6a34
    lw	$t9,240($s4)
.L016a6bdc:
    b	.L016a6a34
    lw	$t9,240($s4)
.L016a6be4:
    b	.L016a69a4
    li	$t2,0x10
.L016a6bec:
    lh	$s2,226($s4)
    sh	$s2,-54($s8)
    lh	$t8,10($s0)
    negu	$s2,$s2
    b	.L016a6b1c
    sh	$t8,-50($s8)
.L016a6c04:
    b	.L016a6bc8
    move	$s2,$zero

glabel nfbStereoPolyPoint
    lw	$a5,72($a1)
    addiu	$sp,$sp,-96
    sd	$s4,24($sp)
    lw	$s4,16($a0)
    sd	$s0,56($sp)
    sd	$s2,0($sp)
    lui	$s2,0x9
    sd	$s1,72($sp)
    addiu	$s2,$s2,-9168
    sd	$gp,64($sp)
    addu	$gp,$t9,$s2
    lw	$s1,-6768($gp)
    lw	$s0,76($a1)
    sd	$s5,32($sp)
    sll	$s1,$s1,0x2
    lw	$s4,116($s4)
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    lhu	$s4,226($s4)
    lw	$s5,8($s0)
    lw	$v1,92($s0)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s0)
    lw	$v0,16($a0)
    sd	$a5,48($sp)
    lw	$v0,116($v0)
    sd	$s3,8($sp)
    lw	$v0,220($v0)
    move	$s3,$a2
    sd	$s6,16($sp)
    move	$s6,$a4
    sd	$ra,80($sp)
    move	$s2,$a0
    move	$s1,$a1
    sd	$s5,40($sp)
    beq	$at,$v0,.L016aced8
    move	$s5,$a3
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    addu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,20($t9)
    jalr	$t9
    nop
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($s2)
    subu	$at,$at,$s4
    sh	$at,10($s2)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    lw	$t9,20($t9)
    move	$a4,$s6
    move	$a3,$s5
    move	$a2,$s3
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s2
    ld	$s2,0($sp)
.L016ace9c:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s5,32($sp)
    ld	$gp,64($sp)
    ld	$v1,48($sp)
    ld	$a0,40($sp)
    sw	$a0,8($s0)
    sw	$v1,72($s1)
    ld	$ra,80($sp)
    sw	$zero,104($s0)
    ld	$s0,56($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L016aced8:
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    subu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,20($t9)
    jalr	$t9
    nop
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($s2)
    addu	$at,$at,$s4
    sh	$at,10($s2)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    lw	$t9,20($t9)
    move	$a4,$s6
    move	$a3,$s5
    move	$a2,$s3
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s2
    b	.L016ace9c
    ld	$s2,0($sp)

glabel nfbStereoPolyRectangle
    lw	$a4,72($a1)
    addiu	$sp,$sp,-96
    sd	$a4,48($sp)
    sll	$v1,$a2,0x3
    sd	$v1,56($sp)
    sd	$s3,88($sp)
    sd	$ra,40($sp)
    sd	$s6,0($sp)
    lw	$s6,16($a0)
    sd	$s1,16($sp)
    lw	$s6,116($s6)
    sd	$s2,80($sp)
    sd	$s5,8($sp)
    lui	$s5,0x9
    sd	$s4,64($sp)
    addiu	$s5,$s5,-9616
    sd	$gp,72($sp)
    addu	$gp,$t9,$s5
    lw	$s4,-6768($gp)
    lw	$s2,76($a1)
    sd	$s0,24($sp)
    sll	$s4,$s4,0x2
    lhu	$s6,226($s6)
    addu	$s2,$s2,$s4
    lw	$s2,0($s2)
    lw	$t9,-28180($gp)
    lw	$v0,92($s2)
    li	$at,1
    lw	$t8,8($s2)
    move	$s0,$a2
    move	$s1,$a0
    sd	$t8,32($sp)
    move	$a0,$v1
    move	$s5,$a3
    sw	$v0,72($a1)
    move	$s4,$a1
    jalr	$t9
    sw	$at,104($s2)
    li	$a1,1
    andi	$a0,$s0,0x1
    ld	$t0,56($sp)
    blez	$s0,.L016ad09c
    move	$s3,$v0
    move	$a7,$s5
    sra	$v0,$s0,0x1
    addu	$t0,$t0,$s5
    beqz	$a0,.L016ad040
    move	$a6,$s3
    lhu	$t8,6($s5)
    lhu	$t3,4($s5)
    lh	$t2,2($s5)
    lh	$t1,0($s5)
    pref	0x1,256($s3)
    pref	0x0,256($s5)
    sh	$t8,6($s3)
    sh	$t3,4($s3)
    sh	$t2,2($s3)
    addiu	$a7,$s5,8
    addiu	$a6,$s3,8
    sh	$t1,0($s3)
.L016ad040:
    beqz	$v0,.L016ad09c
    nop
    nop
    nop
.L016ad050:
    lhu	$a3,6($a7)
    lhu	$a2,4($a7)
    lh	$a0,2($a7)
    lh	$v1,0($a7)
    sh	$a3,6($a6)
    lhu	$v0,14($a7)
    sh	$a2,4($a6)
    lhu	$at,12($a7)
    sh	$a0,2($a6)
    lh	$ra,10($a7)
    sh	$v1,0($a6)
    lh	$t9,8($a7)
    addiu	$a6,$a6,16
    sh	$v0,-2($a6)
    addiu	$a7,$a7,16
    sh	$at,-4($a6)
    sh	$ra,-6($a6)
    bne	$a7,$t0,.L016ad050
    sh	$t9,-8($a6)
.L016ad09c:
    lw	$a4,16($s1)
    lw	$a4,116($a4)
    lw	$a4,220($a4)
    bne	$a1,$a4,.L016ad130
    nop
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,32($t9)
    move	$a3,$s3
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,32($t9)
    move	$a3,$s5
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    b	.L016ad1a8
    nop
.L016ad130:
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,32($t9)
    move	$a3,$s3
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,32($t9)
    move	$a3,$s5
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
.L016ad1a8:
    ld	$s6,0($sp)
    ld	$s5,8($sp)
    ld	$s1,16($sp)
    lw	$t9,-28196($gp)
    ld	$s0,24($sp)
    ld	$v1,32($sp)
    move	$a0,$s3
    jalr	$t9
    sw	$v1,8($s2)
    ld	$s3,88($sp)
    ld	$ra,40($sp)
    ld	$gp,72($sp)
    ld	$a0,48($sp)
    sw	$a0,72($s4)
    sw	$zero,104($s2)
    ld	$s2,80($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbComputeClipsSL__HJ
.L016ad6b0:
    addiu	$sp,$sp,-384
    sd	$s1,224($sp)
    sd	$s4,256($sp)
    lhu	$t3,100($a0)
    lw	$t8,116($a1)
    lh	$t2,8($a0)
    lw	$s4,64($t8)
    lw	$a7,-5736($gp)
    sd	$s6,272($sp)
    lw	$s6,132($a0)
    lw	$t0,60($t8)
    sll	$a7,$a7,0x2
    lw	$t8,40($t8)
    addu	$s6,$s6,$a7
    lw	$s6,0($s6)
    sd	$t0,152($sp)
    lw	$s1,24($s6)
    subu	$t2,$t2,$t3
    sh	$t2,0($sp)
    lhu	$t1,100($a0)
    lh	$t0,10($a0)
    sd	$s7,240($sp)
    subu	$t0,$t0,$t1
    sh	$t0,2($sp)
    lhu	$a6,12($a0)
    lh	$a5,8($a0)
    move	$s7,$a4
    lhu	$a4,100($a0)
    sd	$s5,216($sp)
    addu	$a5,$a5,$a6
    sd	$s0,248($sp)
    li	$v1,32767
    addu	$a4,$a4,$a5
    sd	$s2,280($sp)
    slt	$a5,$v1,$a4
    movn	$a4,$v1,$a5
    sh	$a4,4($sp)
    move	$s2,$a3
    lhu	$a3,14($a0)
    move	$s0,$a2
    lh	$a2,10($a0)
    move	$s5,$a1
    lhu	$a1,100($a0)
    addu	$a2,$a2,$a3
    sd	$s8,232($sp)
    move	$s8,$a0
    addu	$a1,$a1,$a2
    sd	$s4,312($sp)
    sll	$v0,$s1,0x2
    slt	$a0,$v1,$a1
    addu	$s4,$s4,$v0
    movz	$v1,$a1,$a0
    sh	$v1,6($sp)
    lw	$at,0($s4)
    sd	$ra,144($sp)
    sd	$s3,264($sp)
    li	$s3,1
    beqz	$at,.L016ad850
    sd	$t8,336($sp)
    lw	$t9,356($s5)
    move	$a0,$s7
    subu	$a1,$v0,$s1
    addiu	$a2,$s8,84
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$s0,$a1
    lw	$t9,380($s5)
    lw	$a2,124($s8)
    addiu	$a1,$sp,0
    move	$a0,$s7
    srl	$a2,$a2,0xd
    andi	$a2,$a2,0x3
    jalr	$t9
    sd	$a2,304($sp)
    beq	$v0,$s3,.L016ae030
    li	$a3,2
    beq	$v0,$a3,.L016ae040
    li	$a4,2
    sd	$a4,296($sp)
.L016ad7ec:
    ld	$a7,296($sp)
    lw	$a5,124($s8)
    li	$t0,-24577
    andi	$a6,$a7,0x3
    and	$a5,$a5,$t0
    sll	$a6,$a6,0xd
    or	$a5,$a5,$a6
    ld	$a6,304($sp)
    beq	$a6,$a7,.L016ad83c
    sw	$a5,124($s8)
    lw	$v0,120($s8)
    beqz	$v0,.L016ae0a4
    lw	$a0,104($s8)
    lw	$t1,16($v0)
    or	$t1,$t1,$a0
    dsll32	$t1,$t1,0xf
    bgez	$t1,.L016ad83c
    lw	$t9,-28504($gp)
.L016ad834:
    jalr	$t9
    move	$a0,$s8
.L016ad83c:
    sd	$s1,136($sp)
.L016ad840:
    lw	$a7,-5736($gp)
    sd	$s0,208($sp)
    b	.L016ad86c
    sll	$a7,$a7,0x2
.L016ad850:
    lw	$t0,124($s8)
    sd	$s1,136($sp)
    sd	$s0,208($sp)
    srl	$t0,$t0,0xd
    andi	$t0,$t0,0x3
    sd	$t0,296($sp)
    sd	$t0,304($sp)
.L016ad86c:
    lh	$s0,8($s8)
    lw	$t1,24($s8)
    lw	$a3,68($s8)
    lw	$t1,132($t1)
    lh	$s1,10($s8)
    lh	$t8,0($a3)
    addu	$t1,$t1,$a7
    lw	$t1,0($t1)
    lh	$t9,2($a3)
    lw	$t1,32($t1)
    lw	$v0,376($s5)
    subu	$s1,$s1,$t9
    subu	$s0,$s0,$t8
    andi	$t1,$t1,0x8
    beq	$s2,$s3,.L016ad900
    sd	$t1,184($sp)
    li	$t2,3
    beq	$s2,$t2,.L016ad900
    li	$t3,4
    beq	$s2,$t3,.L016ad900
    li	$a0,2
    beq	$s2,$a0,.L016adeec
    sd	$v0,200($sp)
.L016ad8c8:
    bnez	$s0,.L016ad8d8
    ld	$t9,200($sp)
    beqz	$s1,.L016ad900
    ld	$t9,200($sp)
.L016ad8d8:
    addiu	$a0,$s8,56
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$t9,200($sp)
    addiu	$a0,$s8,44
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    lw	$a3,68($s8)
.L016ad900:
    lw	$t8,4($a3)
    lw	$t9,340($s5)
    lw	$ra,8($a3)
    move	$a2,$zero
    move	$a1,$zero
    sd	$ra,128($sp)
    addiu	$a0,$a3,12
    jalr	$t9
    sd	$t8,320($sp)
    lw	$t9,340($s5)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    lw	$a0,68($s8)
    lw	$at,28($s6)
    beqz	$at,.L016add4c
    ld	$a2,136($sp)
    ld	$v0,336($sp)
    blez	$v0,.L016ad9e8
    nop
    sd	$s7,368($sp)
    sd	$s1,344($sp)
    ld	$t8,312($sp)
    sd	$s3,72($sp)
    ld	$s3,336($sp)
    move	$s1,$zero
    addiu	$s7,$s8,84
    sd	$s2,360($sp)
    sd	$s0,352($sp)
    move	$s0,$t8
    sll	$s3,$s3,0x2
    ld	$s2,208($sp)
    b	.L016ad9a0
    addu	$s3,$s3,$t8
    nop
    nop
.L016ad990:
    addiu	$s0,$s0,4
.L016ad994:
    addiu	$s2,$s2,12
    beq	$s0,$s3,.L016ad9d4
    addiu	$s1,$s1,12
.L016ad9a0:
    lw	$t8,0($s0)
    beqz	$t8,.L016ad990
    pref	0x0,256($s0)
    beq	$s0,$s4,.L016ad990
    nop
    lw	$t9,356($s5)
    lw	$a0,44($s6)
    move	$a2,$s7
    move	$a1,$s2
    jalr	$t9
    addu	$a0,$a0,$s1
    b	.L016ad994
    addiu	$s0,$s0,4
.L016ad9d4:
    ld	$s0,352($sp)
    ld	$s2,360($sp)
    ld	$s7,368($sp)
    ld	$s1,344($sp)
    ld	$s3,72($sp)
.L016ad9e8:
    lw	$a1,0($s4)
    beqz	$a1,.L016ade10
    lhu	$v0,100($s8)
    beqz	$v0,.L016adf30
    nop
.L016ad9fc:
    lw	$a3,124($s8)
    sll	$a2,$a3,0x2
    bltz	$a2,.L016ada1c
    ld	$a2,136($sp)
    beqz	$v0,.L016adf80
    srl	$a4,$a3,0x1e
.L016ada14:
    beq	$s3,$a4,.L016adfa0
    ld	$a2,136($sp)
.L016ada1c:
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    addiu	$a2,$s8,56
    sd	$a2,192($sp)
    ld	$a2,320($sp)
    lw	$a0,44($s6)
    lw	$t9,364($s5)
    sll	$a1,$a1,0x2
    sd	$a1,160($sp)
    beqz	$a2,.L016ada68
    addu	$a0,$a0,$a1
    move	$a1,$s7
    jalr	$t9
    ld	$a2,320($sp)
    lw	$t9,348($s5)
    jalr	$t9
    ld	$a0,320($sp)
    b	.L016ada74
    nop
.L016ada68:
    move	$a1,$s7
    jalr	$t9
    ld	$a2,192($sp)
.L016ada74:
    ld	$a3,160($sp)
    lw	$a1,44($s6)
    lw	$t9,364($s5)
    lw	$a0,68($s8)
    addiu	$a2,$s8,72
    addu	$a1,$a1,$a3
    jalr	$t9
    addiu	$a0,$a0,12
    ld	$a1,160($sp)
    lw	$t9,392($s5)
    lw	$a0,44($s6)
    jalr	$t9
    addu	$a0,$a0,$a1
.L016adaa8:
    lw	$t9,344($s5)
    ld	$a0,192($sp)
    jalr	$t9
    move	$a1,$s7
.L016adab8:
    lw	$a2,36($s8)
.L016adabc:
    sd	$a2,96($sp)
    beqz	$a2,.L016adad8
    sd	$a2,104($sp)
    lw	$a4,124($s8)
    sll	$a4,$a4,0x13
    bltz	$a4,.L016ae0c4
    nop
.L016adad8:
    lw	$a5,0($s4)
.L016adadc:
    beqz	$a5,.L016adb74
    ld	$a4,136($sp)
    lw	$t9,356($s5)
    sll	$a3,$a4,0x2
    move	$a0,$s7
    ld	$a1,208($sp)
    subu	$a3,$a3,$a4
    addiu	$a2,$s8,72
    sll	$a3,$a3,0x2
    jalr	$t9
    addu	$a1,$a1,$a3
    ld	$a5,304($sp)
    li	$v0,2
    beq	$a5,$v0,.L016ae088
    ld	$a6,304($sp)
    li	$a3,3
    beq	$a6,$a3,.L016ae088
    ld	$a7,296($sp)
    beq	$a7,$v0,.L016ae038
    addiu	$a1,$s8,44
    ld	$t0,296($sp)
    addiu	$t1,$s8,44
    beq	$t0,$a3,.L016adb50
    sd	$t1,176($sp)
    lw	$t9,364($s5)
    ld	$a2,176($sp)
    move	$a1,$s7
    jalr	$t9
    lw	$a0,68($s8)
.L016adb50:
    lw	$t2,116($s8)
    beqz	$t2,.L016adb64
    ld	$v0,128($sp)
    beqz	$v0,.L016ae4ac
    nop
.L016adb64:
    lw	$t9,344($s5)
.L016adb68:
    ld	$a0,176($sp)
    jalr	$t9
    move	$a1,$s7
.L016adb74:
    lw	$t3,28($s6)
    beqz	$t3,.L016ade34
    ld	$a2,136($sp)
    ld	$t8,336($sp)
    blez	$t8,.L016adc18
    la	$a1,globalSerialNumber
    sd	$s1,344($sp)
    ld	$t8,312($sp)
    sd	$s3,72($sp)
    ld	$s3,336($sp)
    move	$s1,$zero
    addiu	$s7,$s8,72
    sd	$s2,360($sp)
    sd	$s0,352($sp)
    move	$s0,$t8
    sll	$s3,$s3,0x2
    ld	$s2,208($sp)
    b	.L016adbd0
    addu	$s3,$s3,$t8
.L016adbc0:
    addiu	$s0,$s0,4
.L016adbc4:
    addiu	$s2,$s2,12
    beq	$s0,$s3,.L016adc04
    addiu	$s1,$s1,12
.L016adbd0:
    lw	$t8,0($s0)
    beqz	$t8,.L016adbc0
    pref	0x0,256($s0)
    beq	$s0,$s4,.L016adbc0
    nop
    lw	$t9,356($s5)
    lw	$a0,40($s6)
    move	$a2,$s7
    move	$a1,$s2
    jalr	$t9
    addu	$a0,$a0,$s1
    b	.L016adbc4
    addiu	$s0,$s0,4
.L016adc04:
    ld	$s0,352($sp)
    ld	$s2,360($sp)
    ld	$s1,344($sp)
    ld	$s3,72($sp)
.L016adc14:
    la	$a1,globalSerialNumber
.L016adc18:
    lw	$a3,0($a1)
    lui	$a2,0x1000
    addiu	$a3,$a3,1
    sltu	$a2,$a2,$a3
    movz	$s3,$a3,$a2
    sw	$s3,20($s8)
    lw	$t9,232($s5)
    beqz	$t9,.L016adc4c
    sw	$s3,0($a1)
    move	$a0,$s8
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
.L016adc4c:
    ld	$a4,184($sp)
    beqz	$a4,.L016add1c
    nop
    lw	$a5,0($s4)
    beqz	$a5,.L016add1c
    lw	$s4,-5736($gp)
    lw	$s3,132($s8)
    lw	$s6,400($s5)
    sll	$s4,$s4,0x2
    lw	$t9,340($s5)
    addu	$s3,$s3,$s4
    lw	$s3,0($s3)
    move	$a2,$zero
    move	$a1,$zero
    lw	$s4,116($s5)
    addiu	$a0,$sp,48
    jalr	$t9
    lw	$s3,4($s3)
    lw	$t9,-5736($gp)
    lw	$t8,132($s8)
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,0($t8)
    lw	$t8,32($t8)
    andi	$t8,$t8,0x8
    beqz	$t8,.L016adf50
    li	$ra,2
    beq	$s2,$ra,.L016adfdc
    nop
    bltz	$s3,.L016add10
    nop
    bnez	$s0,.L016adcdc
    sll	$s0,$s3,0x2
    beqz	$s1,.L016ae108
    sll	$s0,$s3,0x2
    sll	$s0,$s3,0x2
.L016adcdc:
    lw	$a0,92($s4)
    move	$t9,$s6
    subu	$s0,$s0,$s3
    addiu	$a1,$s8,44
    sll	$s0,$s0,0x2
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a1,68($s8)
.L016adcfc:
    lw	$a0,92($s4)
    move	$t9,$s6
    addiu	$a1,$a1,12
    jalr	$t9
    addu	$a0,$a0,$s0
.L016add10:
    lw	$t9,352($s5)
.L016add14:
    jalr	$t9
    addiu	$a0,$sp,48
.L016add1c:
    ld	$s0,248($sp)
    ld	$s1,224($sp)
    ld	$s2,280($sp)
    ld	$s3,264($sp)
    ld	$s4,256($sp)
    ld	$s5,216($sp)
    ld	$ra,144($sp)
    ld	$s6,272($sp)
    ld	$s7,240($sp)
    ld	$s8,232($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L016add4c:
    ld	$a3,336($sp)
    addiu	$a2,$a2,1
    slt	$a2,$a2,$a3
    beqz	$a2,.L016ad9e8
    ld	$t8,136($sp)
    sd	$s0,352($sp)
    ld	$s0,336($sp)
    sd	$s1,344($sp)
    subu	$s0,$s0,$t8
    sd	$s3,72($sp)
    sll	$s3,$t8,0x2
    addiu	$s0,$s0,-1
    subu	$s3,$s3,$t8
    addu	$s0,$s0,$t8
    ld	$t8,208($sp)
    move	$s1,$s4
    sd	$s2,360($sp)
    sll	$s3,$s3,0x2
    move	$s2,$s3
    addu	$s3,$s3,$t8
    ld	$t8,312($sp)
    sd	$s7,368($sp)
    addiu	$s7,$s8,84
    sll	$s0,$s0,0x2
    addiu	$s3,$s3,12
    addu	$s0,$s0,$t8
    nop
    nop
    nop
.L016addc0:
    lw	$t8,4($s1)
    beqz	$t8,.L016adde8
    pref	0x0,260($s1)
    lw	$t9,356($s5)
    lw	$a0,44($s6)
    move	$a2,$s7
    move	$a1,$s3
    addu	$a0,$a0,$s2
    jalr	$t9
    addiu	$a0,$a0,12
.L016adde8:
    addiu	$s1,$s1,4
    addiu	$s3,$s3,12
    bne	$s1,$s0,.L016addc0
    addiu	$s2,$s2,12
    ld	$s0,352($sp)
    ld	$s2,360($sp)
    ld	$s7,368($sp)
    ld	$s1,344($sp)
    b	.L016ad9e8
    ld	$s3,72($sp)
.L016ade10:
    beqz	$v0,.L016ae470
    ld	$a1,320($sp)
.L016ade18:
    beqz	$a1,.L016adab8
    nop
    lw	$t9,348($s5)
    jalr	$t9
    ld	$a0,320($sp)
    b	.L016adabc
    lw	$a2,36($s8)
.L016ade34:
    ld	$a3,336($sp)
    addiu	$a2,$a2,1
    slt	$a2,$a2,$a3
    beqz	$a2,.L016adc18
    la	$a1,globalSerialNumber
    ld	$t8,136($sp)
    sd	$s0,352($sp)
    ld	$s0,336($sp)
    sd	$s1,344($sp)
    subu	$s0,$s0,$t8
    sd	$s3,72($sp)
    sll	$s3,$t8,0x2
    addiu	$s0,$s0,-1
    subu	$s3,$s3,$t8
    addu	$s0,$s0,$t8
    ld	$t8,208($sp)
    move	$s1,$s4
    sd	$s2,360($sp)
    sll	$s3,$s3,0x2
    move	$s2,$s3
    addu	$s3,$s3,$t8
    ld	$t8,312($sp)
    addiu	$s7,$s8,72
    sll	$s0,$s0,0x2
    addiu	$s3,$s3,12
    addu	$s0,$s0,$t8
    nop
.L016adea0:
    lw	$t8,4($s1)
    beqz	$t8,.L016adec8
    pref	0x0,260($s1)
    lw	$t9,356($s5)
    lw	$a0,40($s6)
    move	$a2,$s7
    move	$a1,$s3
    addu	$a0,$a0,$s2
    jalr	$t9
    addiu	$a0,$a0,12
.L016adec8:
    addiu	$s1,$s1,4
    addiu	$s3,$s3,12
    bne	$s1,$s0,.L016adea0
    addiu	$s2,$s2,12
    ld	$s0,352($sp)
    ld	$s2,360($sp)
    ld	$s1,344($sp)
    b	.L016adc14
    ld	$s3,72($sp)
.L016adeec:
    ld	$a1,184($sp)
    bnez	$a1,.L016ad8c8
    ld	$a4,296($sp)
    ld	$a2,304($sp)
    bne	$a2,$a4,.L016ad8c8
    ld	$a5,304($sp)
    beq	$a5,$a0,.L016adf14
    ld	$a6,304($sp)
    bnez	$a6,.L016ad8c8
    nop
.L016adf14:
    sd	$s3,72($sp)
    ld	$t8,336($sp)
    ld	$s3,312($sp)
    move	$s7,$s8
    sll	$t8,$t8,0x2
    b	.L016ae508
    addu	$s3,$s3,$t8
.L016adf30:
    lw	$a4,120($s8)
    beqz	$a4,.L016ae4a4
    addiu	$ra,$s8,56
    lw	$t9,44($a4)
    bnez	$t9,.L016ad9fc
    addiu	$ra,$s8,56
    b	.L016adaa8
    sd	$ra,192($sp)
.L016adf50:
    bltz	$s3,.L016add10
    nop
    lw	$t9,400($s5)
    sll	$a2,$s3,0x2
    lw	$a0,92($s4)
    subu	$a2,$a2,$s3
    addiu	$a1,$s8,56
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    b	.L016add14
    lw	$t9,352($s5)
.L016adf80:
    lw	$a4,120($s8)
    beqz	$a4,.L016ada1c
    ld	$a2,136($sp)
    lw	$a5,44($a4)
    bnez	$a5,.L016ada14
    srl	$a4,$a3,0x1e
    b	.L016ada1c
    ld	$a2,136($sp)
.L016adfa0:
    bnez	$s0,.L016adfb0
    nop
    beqz	$s1,.L016ada1c
    ld	$a2,136($sp)
.L016adfb0:
    lw	$t9,364($s5)
    lw	$a0,68($s8)
    addiu	$a2,$s8,72
    move	$a1,$s7
    jalr	$t9
    addiu	$a0,$a0,12
    ld	$a1,320($sp)
    bnez	$a1,.L016ae490
    addiu	$a2,$s8,56
.L016adfd4:
    b	.L016adaa8
    sd	$a2,192($sp)
.L016adfdc:
    bltz	$s3,.L016add10
    sll	$s0,$s3,0x2
    lw	$a0,92($s4)
    move	$t9,$s6
    subu	$s0,$s0,$s3
    addiu	$a1,$s8,44
    sll	$s0,$s0,0x2
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$t9,364($s5)
    addiu	$a2,$s8,72
    addiu	$a1,$s8,56
    jalr	$t9
    addiu	$a0,$sp,48
    lw	$a0,92($s4)
    move	$t9,$s6
    addiu	$a1,$sp,48
    jalr	$t9
    addu	$a0,$a0,$s0
    b	.L016add14
    lw	$t9,352($s5)
.L016ae030:
    b	.L016ad7ec
    sd	$zero,296($sp)
.L016ae038:
    b	.L016adb50
    sd	$a1,176($sp)
.L016ae040:
    lw	$v0,120($s8)
    beqz	$v0,.L016ae0bc
    li	$a6,1
    lw	$a2,40($v0)
    beqz	$a2,.L016ae0b8
    lw	$t9,-31780($gp)
    move	$a0,$s5
    move	$a1,$s7
    lh	$a5,10($s8)
    lh	$a4,8($s8)
    jalr	$t9
    addiu	$a3,$sp,0
    beq	$v0,$s3,.L016ae6ec
    li	$a3,2
    li	$a2,1
    movz	$a2,$a3,$v0
    b	.L016ad7ec
    sd	$a2,296($sp)
.L016ae088:
    lw	$t9,344($s5)
    move	$a1,$s7
    jalr	$t9
    lw	$a0,68($s8)
    addiu	$a4,$s8,44
    b	.L016adb50
    sd	$a4,176($sp)
.L016ae0a4:
    dsll32	$a5,$a0,0xf
    bltz	$a5,.L016ad834
    lw	$t9,-28504($gp)
    b	.L016ad840
    sd	$s1,136($sp)
.L016ae0b8:
    li	$a6,1
.L016ae0bc:
    b	.L016ad7ec
    sd	$a6,296($sp)
.L016ae0c4:
    lw	$t9,340($s5)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,8
    sw	$s3,24($sp)
    lw	$a7,28($s6)
    beqz	$a7,.L016ae6f4
    nop
    lw	$t0,36($s8)
.L016ae0ec:
    sd	$s3,72($sp)
    sd	$s1,344($sp)
    beqz	$t0,.L016ae44c
    sd	$t0,288($sp)
    sd	$s3,72($sp)
    b	.L016ae8cc
    sd	$s1,344($sp)
.L016ae108:
    lw	$a0,92($s4)
    move	$t9,$s6
    subu	$s0,$s0,$s3
    sll	$s0,$s0,0x2
    lw	$a1,68($s8)
    jalr	$t9
    addu	$a0,$a0,$s0
    b	.L016adcfc
    lw	$a1,68($s8)
.L016ae12c:
    beqz	$v0,.L016ae148
    ld	$a0,288($sp)
    move	$a1,$s5
    move	$a3,$s2
    ld	$a2,208($sp)
    bal .L016ad6b0
    move	$a4,$s7
.L016ae148:
    lw	$t8,28($s6)
    ld	$t0,288($sp)
    ld	$t9,152($sp)
    beqz	$t8,.L016ae1dc
    addiu	$t0,$t0,56
    lw	$a7,24($s1)
    sll	$a4,$a7,0x2
    addu	$t9,$t9,$a4
    lw	$t9,0($t9)
    lw	$s3,116($s5)
    lw	$v0,28($s1)
    beqz	$t9,.L016ae1dc
    subu	$a1,$a4,$a7
    lw	$a0,44($s3)
    sll	$a1,$a1,0x2
    lw	$t9,400($s5)
    beqz	$v0,.L016ae7d8
    addu	$a0,$a0,$a1
    ld	$a1,288($sp)
    sd	$t0,88($sp)
    jalr	$t9
    addiu	$a1,$a1,44
    lw	$t9,364($s5)
    ld	$a2,288($sp)
    move	$a0,$s7
    ld	$a1,88($sp)
    jalr	$t9
    addiu	$a2,$a2,72
    lw	$a3,24($s1)
    lw	$t9,400($s5)
    sll	$a2,$a3,0x2
    lw	$a0,44($s3)
    subu	$a2,$a2,$a3
    move	$a1,$s7
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
.L016ae1dc:
    lw	$a4,24($sp)
.L016ae1e0:
    ld	$a5,288($sp)
    ld	$v0,336($sp)
    addiu	$a5,$a5,84
    beqz	$a4,.L016ae264
    sd	$a5,168($sp)
    ld	$a0,208($sp)
    lw	$a7,24($s1)
    slt	$a6,$a7,$v0
    sll	$v0,$v0,0x2
    ld	$s3,312($sp)
    beqz	$a6,.L016ae264
    sll	$a4,$a7,0x2
    subu	$v1,$a4,$a7
    addu	$s1,$a4,$s3
    sll	$v1,$v1,0x2
    addu	$s3,$v0,$s3
    addu	$v1,$v1,$a0
    sd	$v1,328($sp)
    nop
    nop
.L016ae230:
    lw	$a0,0($s1)
    beqz	$a0,.L016ae250
    nop
    lw	$t9,364($s5)
    ld	$a1,328($sp)
    ld	$a2,168($sp)
    jalr	$t9
    move	$a0,$a1
.L016ae250:
    addiu	$s1,$s1,4
    ld	$a1,328($sp)
    addiu	$a1,$a1,12
    bne	$s1,$s3,.L016ae230
    sd	$a1,328($sp)
.L016ae264:
    ld	$a2,288($sp)
.L016ae268:
    lw	$a2,28($a2)
    lw	$t9,-29644($gp)
    beqz	$a2,.L016ae44c
    sd	$a2,288($sp)
    ld	$v0,288($sp)
.L016ae27c:
    lw	$ra,-5736($gp)
    lw	$t8,124($v0)
    sll	$ra,$ra,0x2
    lw	$s1,132($v0)
    sll	$t8,$t8,0x15
    lw	$v0,68($v0)
    addu	$s1,$s1,$ra
    bltz	$t8,.L016ae12c
    lw	$s1,0($s1)
    beqz	$v0,.L016ae268
    ld	$a2,288($sp)
    lw	$t9,392($s5)
    ld	$a0,288($sp)
    jalr	$t9
    addiu	$a0,$a0,44
    lw	$t9,392($s5)
    ld	$a0,288($sp)
    jalr	$t9
    addiu	$a0,$a0,56
    ld	$v0,288($sp)
    sw	$zero,36($s1)
    sw	$zero,68($v0)
    lw	$a0,24($s1)
    lw	$v1,24($s6)
    lw	$a4,-5736($gp)
    beq	$v1,$a0,.L016ae314
    lw	$v0,24($v0)
    beqz	$v0,.L016ae314
    sll	$a7,$a4,0x2
.L016ae2f0:
    lw	$a2,132($v0)
    addu	$a2,$a7,$a2
    lw	$a2,0($a2)
    lw	$a1,28($a2)
    addiu	$a1,$a1,-1
    sw	$a1,28($a2)
    lw	$v0,24($v0)
    bnez	$v0,.L016ae2f0
    nop
.L016ae314:
    lw	$a3,28($s1)
    beqz	$a3,.L016ae264
    ld	$s1,288($sp)
    lw	$s1,36($s1)
    beqz	$s1,.L016ae268
    ld	$a2,288($sp)
    b	.L016ae378
    lw	$ra,68($s1)
    nop
    nop
    nop
.L016ae340:
    lw	$t9,132($v0)
    addu	$t9,$a7,$t9
    lw	$t9,0($t9)
    lw	$t8,28($t9)
    addiu	$t8,$t8,-1
    sw	$t8,28($t9)
    lw	$v0,24($v0)
    bnez	$v0,.L016ae340
    nop
.L016ae364:
    lw	$v0,36($s1)
.L016ae368:
    beqz	$v0,.L016ae3ec
    nop
    move	$s1,$v0
.L016ae374:
    lw	$ra,68($s1)
.L016ae378:
    beqz	$ra,.L016ae364
    nop
    lw	$t9,392($s5)
    lw	$t8,-5736($gp)
    lw	$s3,132($s1)
    sll	$t8,$t8,0x2
    addu	$s3,$s3,$t8
    addiu	$a0,$s1,44
    jalr	$t9
    lw	$s3,0($s3)
    lw	$t9,392($s5)
    jalr	$t9
    addiu	$a0,$s1,56
    sw	$zero,68($s1)
    sw	$zero,36($s3)
    lw	$v0,24($s1)
    lw	$a7,-5736($gp)
    lw	$t9,132($v0)
    sll	$a7,$a7,0x2
    addu	$t9,$t9,$a7
    lw	$t9,0($t9)
    lw	$ra,24($s3)
    lw	$t9,24($t9)
    beq	$t9,$ra,.L016ae364
    nop
    bnez	$v0,.L016ae340
    nop
    b	.L016ae368
    lw	$v0,36($s1)
.L016ae3ec:
    lw	$v0,28($s1)
    ld	$t0,288($sp)
    beqz	$v0,.L016ae40c
    ld	$t1,288($sp)
.L016ae3fc:
    beq	$s1,$t0,.L016ae268
    ld	$a2,288($sp)
    b	.L016ae374
    move	$s1,$v0
.L016ae40c:
    beq	$t1,$s1,.L016ae3fc
    nop
.L016ae414:
    lw	$s1,24($s1)
    lw	$v0,28($s1)
    bnez	$v0,.L016ae3fc
    ld	$t2,288($sp)
    beq	$t2,$s1,.L016ae3fc
    nop
    lw	$s1,24($s1)
    lw	$v0,28($s1)
    bnez	$v0,.L016ae3fc
    ld	$t3,288($sp)
    bne	$t3,$s1,.L016ae414
    nop
    b	.L016ae3fc
    nop
.L016ae44c:
    lw	$t8,24($sp)
    ld	$s1,344($sp)
    beqz	$t8,.L016ae744
    ld	$s3,72($sp)
.L016ae45c:
    lw	$t9,352($s5)
    jalr	$t9
    addiu	$a0,$sp,8
    b	.L016adadc
    lw	$a5,0($s4)
.L016ae470:
    lw	$a4,120($s8)
    beqz	$a4,.L016adab8
    nop
    lw	$t9,44($a4)
    bnez	$t9,.L016ade18
    ld	$a1,320($sp)
    b	.L016adabc
    lw	$a2,36($s8)
.L016ae490:
    lw	$t9,348($s5)
    jalr	$t9
    ld	$a0,320($sp)
    b	.L016adfd4
    addiu	$a2,$s8,56
.L016ae4a4:
    b	.L016adaa8
    sd	$ra,192($sp)
.L016ae4ac:
    lw	$t9,340($s5)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$t9,364($s5)
    move	$a2,$s7
    ld	$a1,176($sp)
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$t9,244($s5)
    move	$a0,$s8
    move	$a3,$s1
    move	$a2,$s0
    jalr	$t9
    addiu	$a1,$sp,32
    lw	$t9,352($s5)
    jalr	$t9
    addiu	$a0,$sp,32
    b	.L016adb68
    lw	$t9,344($s5)
.L016ae500:
    beq	$s7,$s8,.L016add1c
    move	$s7,$v0
.L016ae508:
    lw	$v0,124($s7)
    sll	$at,$v0,0x15
    bltz	$at,.L016ae564
    move	$a0,$zero
    lw	$v0,28($s7)
.L016ae51c:
    bnez	$v0,.L016ae500
    nop
    beq	$s8,$s7,.L016ae500
    nop
.L016ae52c:
    lw	$s7,24($s7)
    lw	$v0,28($s7)
    bnez	$v0,.L016ae500
    nop
    beq	$s8,$s7,.L016ae500
    nop
    lw	$s7,24($s7)
    lw	$v0,28($s7)
    bnez	$v0,.L016ae500
    nop
    bne	$s8,$s7,.L016ae52c
    nop
    b	.L016ae500
    nop
.L016ae564:
    lw	$t8,-5736($gp)
    li	$v1,2
    lw	$s6,132($s7)
    srl	$a1,$v0,0xd
    andi	$a1,$a1,0x3
    sll	$t8,$t8,0x2
    sd	$zero,64($sp)
    addu	$s6,$s6,$t8
    beq	$v1,$a1,.L016ae670
    lw	$s6,0($s6)
    ld	$t9,200($sp)
    addiu	$a0,$s7,56
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$t9,200($sp)
    addiu	$a0,$s7,44
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$a2,336($sp)
    blez	$a2,.L016ae638
    la	$a3,globalSerialNumber
    move	$s2,$zero
    b	.L016ae600
    ld	$s4,312($sp)
    ld	$t9,200($sp)
.L016ae5d0:
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$t9,200($sp)
    lw	$a0,40($s6)
    move	$a1,$s0
    move	$a2,$s1
    jalr	$t9
    addu	$a0,$a0,$s2
.L016ae5f4:
    addiu	$s4,$s4,4
.L016ae5f8:
    beq	$s4,$s3,.L016ae634
    addiu	$s2,$s2,12
.L016ae600:
    lw	$a1,0($s4)
    beqz	$a1,.L016ae5f4
    pref	0x0,256($s4)
    lw	$a0,44($s6)
    addu	$a0,$a0,$s2
    lw	$v0,8($a0)
    beqz	$v0,.L016ae5d0
    ld	$t9,200($sp)
    lw	$a1,4($v0)
    bnez	$a1,.L016ae5d0
    ld	$t9,200($sp)
    b	.L016ae5f8
    addiu	$s4,$s4,4
.L016ae634:
    la	$a3,globalSerialNumber
.L016ae638:
    lw	$a2,0($a3)
    ld	$a5,72($sp)
    lui	$a4,0x1000
    addiu	$a2,$a2,1
    sltu	$a4,$a4,$a2
    movn	$a2,$a5,$a4
    sw	$a2,20($s7)
    lw	$t9,232($s5)
    beqz	$t9,.L016ae670
    sw	$a2,0($a3)
    move	$a0,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
.L016ae670:
    lw	$v0,68($s7)
    beqz	$v0,.L016ae6d0
    ld	$t1,64($sp)
    lw	$t9,340($s5)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$v0,12
    lw	$v0,124($s7)
    sll	$a3,$v0,0x2
    bltz	$a3,.L016ae6b8
    nop
    lhu	$a4,100($s7)
    beqz	$a4,.L016ae814
    ld	$a5,72($sp)
.L016ae6ac:
    srl	$a6,$v0,0x1e
    beq	$a5,$a6,.L016ae87c
    nop
.L016ae6b8:
    lw	$t9,340($s5)
.L016ae6bc:
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    lw	$a0,68($s7)
    ld	$t1,64($sp)
.L016ae6d0:
    lw	$a7,36($s7)
    li	$t0,1
    movz	$t0,$t1,$a7
    bnez	$t0,.L016ae508
    movn	$s7,$a7,$a7
    b	.L016ae51c
    lw	$v0,28($s7)
.L016ae6ec:
    b	.L016ad7ec
    sd	$zero,296($sp)
.L016ae6f4:
    lw	$a0,40($s8)
    ld	$a3,96($sp)
    lh	$v0,10($a0)
    lh	$a3,10($a3)
    slt	$t2,$a3,$v0
    beqz	$t2,.L016ae834
.L016ae70c:
    ld	$a4,104($sp)
.L016ae710:
    lw	$a4,124($a4)
    sll	$a4,$a4,0x15
    bltz	$a4,.L016ae7e8
    ld	$a5,104($sp)
    lw	$a5,28($a5)
    bnez	$a5,.L016ae70c
    sd	$a5,104($sp)
.L016ae72c:
    lw	$t9,404($s5)
.L016ae730:
    addiu	$a1,$sp,24
    jalr	$t9
    addiu	$a0,$sp,8
    b	.L016ae0ec
    lw	$t0,36($s8)
.L016ae744:
    ld	$a6,336($sp)
    lw	$v0,24($s6)
    slt	$a6,$v0,$a6
    ld	$s1,344($sp)
    beqz	$a6,.L016ae45c
    ld	$s3,72($sp)
    ld	$t2,312($sp)
    sll	$t1,$v0,0x2
    ld	$s3,336($sp)
    subu	$a7,$t1,$v0
    ld	$t0,208($sp)
    sll	$a7,$a7,0x2
    addu	$t1,$t1,$t2
    sd	$t1,120($sp)
    sll	$s3,$s3,0x2
    addu	$s3,$s3,$t2
    addu	$a7,$a7,$t0
    sd	$a7,112($sp)
.L016ae78c:
    ld	$t8,120($sp)
    lw	$t9,0($t8)
    pref	0x0,256($t8)
    beqz	$t9,.L016ae7b8
    ld	$ra,120($sp)
    lw	$t9,364($s5)
    ld	$a1,112($sp)
    addiu	$a2,$sp,8
    jalr	$t9
    move	$a0,$a1
    ld	$ra,120($sp)
.L016ae7b8:
    ld	$at,112($sp)
    addiu	$ra,$ra,4
    sd	$ra,120($sp)
    addiu	$at,$at,12
    bne	$ra,$s3,.L016ae78c
    sd	$at,112($sp)
    b	.L016ae45c
    ld	$s3,72($sp)
.L016ae7d8:
    jalr	$t9
    move	$a1,$t0
    b	.L016ae1e0
    lw	$a4,24($sp)
.L016ae7e8:
    lw	$t9,400($s5)
    ld	$a1,104($sp)
    addiu	$a0,$sp,8
    jalr	$t9
    addiu	$a1,$a1,84
    ld	$a2,104($sp)
    lw	$a2,28($a2)
    bnez	$a2,.L016ae70c
    sd	$a2,104($sp)
    b	.L016ae730
    lw	$t9,404($s5)
.L016ae814:
    lw	$a0,120($s7)
    beqz	$a0,.L016ae6b8
    nop
    lw	$a3,44($a0)
    bnez	$a3,.L016ae6ac
    ld	$a5,72($sp)
    b	.L016ae6bc
    lw	$t9,340($s5)
.L016ae834:
    bne	$a3,$v0,.L016ae850
    ld	$a4,96($sp)
    lh	$a5,8($a0)
    lh	$a4,8($a4)
    slt	$a4,$a4,$a5
    bnez	$a4,.L016ae710
    ld	$a4,104($sp)
.L016ae850:
    beqz	$a0,.L016ae72c
    move	$v0,$a0
.L016ae858:
    lw	$a5,124($v0)
    sll	$a5,$a5,0x15
    bltz	$a5,.L016ae89c
    nop
    lw	$v0,32($v0)
    bnez	$v0,.L016ae858
    nop
    b	.L016ae730
    lw	$t9,404($s5)
.L016ae87c:
    lw	$t9,364($s5)
    lw	$a0,68($s7)
    addiu	$a2,$s7,72
    addiu	$a1,$s7,56
    jalr	$t9
    addiu	$a0,$a0,12
    b	.L016ae6bc
    lw	$t9,340($s5)
.L016ae89c:
    sd	$v0,80($sp)
    lw	$t9,400($s5)
    ld	$a1,80($sp)
    addiu	$a0,$sp,8
    jalr	$t9
    addiu	$a1,$a1,84
    ld	$v0,80($sp)
    lw	$v0,32($v0)
    bnez	$v0,.L016ae858
    nop
    b	.L016ae730
    lw	$t9,404($s5)
.L016ae8cc:
    lw	$t9,-29644($gp)
    b	.L016ae27c
    ld	$v0,288($sp)

glabel nfbPositionWindow
    jr	$ra
    li	$v0,1

glabel nfbDestroyClip__NJ
    lw	$a3,16($a0)
    move	$a2,$a0
    li	$a4,1
    srl	$a3,$a3,0x12
    lui	$at,0x8
    andi	$a3,$a3,0x3
    lw	$a5,0($a0)
    addiu	$sp,$sp,-32
    addiu	$at,$at,32400
    sd	$gp,8($sp)
    beqz	$a3,.L016b2bbc
    addu	$gp,$t9,$at
    sd	$a0,0($sp)
    lw	$a0,56($a0)
    bne	$a3,$a4,.L016b2b84
    sd	$ra,16($sp)
    lw	$t9,240($a5)
    jalr	$t9
    nop
    b	.L016b2b94
    ld	$gp,8($sp)
.L016b2b84:
    lw	$t9,348($a5)
    jalr	$t9
    nop
    ld	$gp,8($sp)
.L016b2b94:
    ld	$a5,0($sp)
    ld	$ra,16($sp)
    lui	$a6,0xc
    lw	$a4,16($a5)
    nor	$a6,$a6,$zero
    sw	$zero,56($a5)
    addiu	$sp,$sp,32
    and	$a4,$a4,$a6
    jr	$ra
    sw	$a4,16($a5)
.L016b2bbc:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel nfbListInstalledHWColormaps
    lw	$a5,116($a0)
    lw	$a6,112($a5)
    addiu	$sp,$sp,-48
    move	$a4,$zero
    move	$v0,$zero
    blez	$a6,.L016b3218
    lw	$a5,116($a5)
    move	$v0,$zero
    addiu	$a4,$a4,1
    nop
    nop
    nop
.L016b31e0:
    lw	$a7,0($a5)
    beqz	$a7,.L016b3204
    addiu	$a5,$a5,28
    lw	$t0,8($a7)
    sw	$t0,0($a1)
    lw	$a6,116($a0)
    addiu	$a1,$a1,4
    addiu	$v0,$v0,1
    lw	$a6,112($a6)
.L016b3204:
    slt	$t1,$a4,$a6
    bnez	$t1,.L016b31e0
    addiu	$a4,$a4,1
    jr	$ra
    addiu	$sp,$sp,48
.L016b3218:
    jr	$ra
    addiu	$sp,$sp,48

glabel nfbDestroyWindow
    addiu	$sp,$sp,-48
    sd	$s2,16($sp)
    lw	$s2,132($a0)
    sd	$s3,0($sp)
    sd	$s1,8($sp)
    lui	$v0,0x8
    lw	$s1,16($a0)
    sd	$gp,24($sp)
    addiu	$v0,$v0,18112
    addu	$gp,$t9,$v0
    lw	$at,116($s1)
    lw	$s3,-5736($gp)
    lw	$at,40($at)
    sll	$s3,$s3,0x2
    sd	$ra,32($sp)
    addu	$s2,$s2,$s3
    move	$s3,$zero
    beqz	$at,.L016b639c
    lw	$s2,0($s2)
    sd	$s0,40($sp)
    move	$s0,$zero
    nop
    nop
    nop
.L016b6360:
    lw	$t9,352($s1)
    lw	$a0,40($s2)
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$t9,352($s1)
    lw	$a0,44($s2)
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a1,116($s1)
    lw	$a1,40($a1)
    addiu	$s3,$s3,1
    sltu	$a1,$s3,$a1
    bnez	$a1,.L016b6360
    addiu	$s0,$s0,12
    ld	$s0,40($sp)
.L016b639c:
    lw	$t9,-28196($gp)
    ld	$s3,0($sp)
    ld	$s1,8($sp)
    jalr	$t9
    lw	$a0,40($s2)
    lw	$t9,-28196($gp)
    jalr	$t9
    lw	$a0,44($s2)
    ld	$ra,32($sp)
    li	$v0,1
    ld	$s2,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48

glabel nfbCursorLimits
    lh	$a7,0($a2)
    move	$a5,$zero
    slti	$a6,$a7,1
    movz	$a5,$a7,$a6
    sh	$a5,0($a3)
    lh	$a4,2($a2)
    move	$v1,$zero
    slti	$a1,$a4,1
    movz	$v1,$a4,$a1
    sh	$v1,2($a3)
    lh	$a1,8($a0)
    lh	$v0,4($a2)
    slt	$v1,$v0,$a1
    movz	$v0,$a1,$v1
    sh	$v0,4($a3)
    lh	$v1,10($a0)
    lh	$at,6($a2)
    slt	$v0,$at,$v1
    movz	$at,$v1,$v0
    jr	$ra
    sh	$at,6($a3)

glabel nfbStereoPolyArc
    lw	$t8,72($a1)
    addiu	$sp,$sp,-96
    sd	$t8,56($sp)
    sd	$s5,88($sp)
    sd	$ra,48($sp)
    sd	$s0,24($sp)
    sd	$s6,16($sp)
    lw	$s6,16($a0)
    sd	$s4,64($sp)
    lw	$s6,116($s6)
    sd	$s1,72($sp)
    sd	$s3,8($sp)
    lui	$s3,0x8
    sd	$s2,0($sp)
    addiu	$s3,$s3,2800
    sd	$gp,80($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$s7,32($sp)
    sll	$s2,$s2,0x2
    lhu	$s6,226($s6)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lw	$t9,-28180($gp)
    li	$at,1
    move	$s4,$a1
    lw	$s7,8($s1)
    move	$s0,$a0
    sd	$s7,40($sp)
    sll	$s7,$a2,0x2
    move	$s3,$a3
    lw	$v0,92($s1)
    subu	$s7,$s7,$a2
    move	$s2,$a2
    sw	$v0,72($a1)
    sll	$s7,$s7,0x2
    sw	$at,104($s1)
    jalr	$t9
    move	$a0,$s7
    li	$a0,1
    addu	$t0,$s7,$s3
    blez	$s2,.L016b9fbc
    move	$s5,$v0
    move	$a6,$v0
    move	$a7,$s3
    nop
    nop
.L016b9f90:
    ldl	$t9,0($a7)
    ldr	$t9,7($a7)
    sdl	$t9,0($a6)
    sdr	$t9,7($a6)
    lwl	$t8,8($a7)
    addiu	$a7,$a7,12
    addiu	$a6,$a6,12
    lwr	$t8,-1($a7)
    swl	$t8,-4($a6)
    bne	$a7,$t0,.L016b9f90
    swr	$t8,-1($a6)
.L016b9fbc:
    lw	$ra,16($s0)
    lw	$ra,116($ra)
    lw	$ra,220($ra)
    bne	$a0,$ra,.L016ba050
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    subu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,36($t9)
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    addu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,36($t9)
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    b	.L016ba0c8
    nop
.L016ba050:
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    addu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,36($t9)
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s0)
    subu	$at,$at,$s6
    sh	$at,10($s0)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s6
    sh	$ra,90($s1)
    lw	$t9,72($s4)
    lw	$t9,36($t9)
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
.L016ba0c8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    lw	$t9,-28196($gp)
    ld	$s7,32($sp)
    ld	$v1,40($sp)
    move	$a0,$s5
    jalr	$t9
    sw	$v1,8($s1)
    ld	$ra,48($sp)
    ld	$s5,88($sp)
    ld	$gp,80($sp)
    ld	$a0,56($sp)
    sw	$a0,72($s4)
    sw	$zero,104($s1)
    ld	$s1,72($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbStereoPolyFillRect
    lw	$a4,72($a1)
    addiu	$sp,$sp,-96
    sd	$a4,48($sp)
    sll	$v1,$a2,0x3
    sd	$v1,56($sp)
    sd	$s3,88($sp)
    sd	$ra,40($sp)
    sd	$s6,0($sp)
    lw	$s6,16($a0)
    sd	$s1,16($sp)
    lw	$s6,116($s6)
    sd	$s2,80($sp)
    sd	$s5,8($sp)
    lui	$s5,0x8
    sd	$s4,64($sp)
    addiu	$s5,$s5,-112
    sd	$gp,72($sp)
    addu	$gp,$t9,$s5
    lw	$s4,-6768($gp)
    lw	$s2,76($a1)
    sd	$s0,24($sp)
    sll	$s4,$s4,0x2
    lhu	$s6,226($s6)
    addu	$s2,$s2,$s4
    lw	$s2,0($s2)
    lw	$t9,-28180($gp)
    lw	$v0,92($s2)
    li	$at,1
    lw	$t8,8($s2)
    move	$s0,$a2
    move	$s1,$a0
    sd	$t8,32($sp)
    move	$a0,$v1
    move	$s5,$a3
    sw	$v0,72($a1)
    move	$s4,$a1
    jalr	$t9
    sw	$at,104($s2)
    li	$a1,1
    andi	$a0,$s0,0x1
    ld	$t0,56($sp)
    blez	$s0,.L016bab7c
    move	$s3,$v0
    move	$a7,$s5
    sra	$v0,$s0,0x1
    addu	$t0,$t0,$s5
    beqz	$a0,.L016bab20
    move	$a6,$s3
    lhu	$t8,6($s5)
    lhu	$t3,4($s5)
    lh	$t2,2($s5)
    lh	$t1,0($s5)
    pref	0x1,256($s3)
    pref	0x0,256($s5)
    sh	$t8,6($s3)
    sh	$t3,4($s3)
    sh	$t2,2($s3)
    addiu	$a7,$s5,8
    addiu	$a6,$s3,8
    sh	$t1,0($s3)
.L016bab20:
    beqz	$v0,.L016bab7c
    nop
    nop
    nop
.L016bab30:
    lhu	$a3,6($a7)
    lhu	$a2,4($a7)
    lh	$a0,2($a7)
    lh	$v1,0($a7)
    sh	$a3,6($a6)
    lhu	$v0,14($a7)
    sh	$a2,4($a6)
    lhu	$at,12($a7)
    sh	$a0,2($a6)
    lh	$ra,10($a7)
    sh	$v1,0($a6)
    lh	$t9,8($a7)
    addiu	$a6,$a6,16
    sh	$v0,-2($a6)
    addiu	$a7,$a7,16
    sh	$at,-4($a6)
    sh	$ra,-6($a6)
    bne	$a7,$t0,.L016bab30
    sh	$t9,-8($a6)
.L016bab7c:
    lw	$a4,16($s1)
    lw	$a4,116($a4)
    lw	$a4,220($a4)
    bne	$a1,$a4,.L016bac10
    nop
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,44($t9)
    move	$a3,$s3
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,44($t9)
    move	$a3,$s5
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    b	.L016bac88
    nop
.L016bac10:
    lw	$v0,100($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    addu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    addu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,44($t9)
    move	$a3,$s3
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
    lw	$v0,96($s2)
    sw	$v0,8($s2)
    lh	$at,10($s1)
    subu	$at,$at,$s6
    sh	$at,10($s1)
    lh	$ra,90($s2)
    subu	$ra,$ra,$s6
    sh	$ra,90($s2)
    lw	$t9,72($s4)
    lw	$t9,44($t9)
    move	$a3,$s5
    move	$a2,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s1
.L016bac88:
    ld	$s6,0($sp)
    ld	$s5,8($sp)
    ld	$s1,16($sp)
    lw	$t9,-28196($gp)
    ld	$s0,24($sp)
    ld	$v1,32($sp)
    move	$a0,$s3
    jalr	$t9
    sw	$v1,8($s2)
    ld	$s3,88($sp)
    ld	$ra,40($sp)
    ld	$gp,72($sp)
    ld	$a0,48($sp)
    sw	$a0,72($s4)
    sw	$zero,104($s2)
    ld	$s2,80($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfb3RopLoop__DH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L016bad90
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x7
    beqz	$a4,.L016bad2c
    sra	$v1,$t0,0x3
.L016bad0c:
    lw	$v0,0($a0)
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,256($a0)
    addiu	$a0,$a0,4
    bnez	$a4,.L016bad0c
    sw	$v0,-4($a1)
.L016bad2c:
    beqz	$v1,.L016bad90
    nop
    nop
    nop
    nop
.L016bad40:
    lw	$t3,0($a0)
    sw	$t3,0($a1)
    lw	$t2,4($a0)
    sw	$t2,4($a1)
    lw	$t1,8($a0)
    sw	$t1,8($a1)
    lw	$t0,12($a0)
    sw	$t0,12($a1)
    lw	$a7,16($a0)
    sw	$a7,16($a1)
    lw	$a6,20($a0)
    sw	$a6,20($a1)
    lw	$a5,24($a0)
    sw	$a5,24($a1)
    lw	$a3,28($a0)
    addiu	$a1,$a1,32
    sltu	$a4,$a1,$a2
    addiu	$a0,$a0,32
    bnez	$a4,.L016bad40
    sw	$a3,-4($a1)
.L016bad90:
    jr	$ra
    nop

glabel nfbRestoreAreas
    addiu	$sp,$sp,-96
    negu	$a7,$a2
    sd	$a7,32($sp)
    li	$a5,3
    sd	$a3,24($sp)
    li	$a6,-1
    sd	$a1,40($sp)
    lui	$t0,0x8
    move	$t1,$a1
    sd	$s1,56($sp)
    addiu	$t0,$t0,-17200
    move	$t2,$a0
    sd	$gp,72($sp)
    addu	$gp,$t9,$t0
    move	$a1,$t2
    move	$a2,$t1
    lw	$t9,-29012($gp)
    move	$s1,$a4
    sd	$a0,48($sp)
    move	$a0,$a4
    move	$a4,$a3
    move	$a3,$a7
    sd	$s0,80($sp)
    sd	$ra,64($sp)
    jalr	$t9
    negu	$a4,$a4
    lw	$s0,16($s1)
    lw	$t3,116($s0)
    lw	$t3,220($t3)
    beqz	$t3,.L016bee00
    ld	$ra,64($sp)
    lw	$t9,340($s0)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$t9,344($s0)
    ld	$a1,40($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$a2,116($s0)
    lw	$t8,220($a2)
    lhu	$a2,226($a2)
    li	$ra,1
    lw	$t9,376($s0)
    xor	$t8,$t8,$ra
    negu	$ra,$a2
    move	$a1,$zero
    movz	$a2,$ra,$t8
    addiu	$a0,$sp,0
    jalr	$t9
    sd	$a2,16($sp)
    lw	$t9,-29012($gp)
    ld	$a6,16($sp)
    move	$a0,$s1
    ld	$a4,24($sp)
    addiu	$a2,$sp,0
    li	$a5,3
    ld	$a1,48($sp)
    addu	$a4,$a4,$a6
    li	$a6,-1
    ld	$a3,32($sp)
    jalr	$t9
    negu	$a4,$a4
    lw	$t9,352($s0)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$ra,64($sp)
.L016bee00:
    ld	$s1,56($sp)
    ld	$s0,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbStippledFillRects
    addiu	$sp,$sp,-128
    sd	$s2,96($sp)
    sd	$s7,24($sp)
    sd	$s5,32($sp)
    sd	$s4,56($sp)
    sd	$s0,48($sp)
    sd	$s3,80($sp)
    sd	$s1,40($sp)
    lw	$s1,36($a0)
    sd	$s6,72($sp)
    lhu	$s6,12($s1)
    lhu	$v0,14($s1)
    sd	$s8,16($sp)
    lw	$s8,132($a1)
    lui	$at,0x8
    sd	$ra,64($sp)
    addiu	$at,$at,-17504
    sd	$gp,88($sp)
    addu	$gp,$t9,$at
    lw	$ra,-5736($gp)
    lw	$a5,-6768($gp)
    lw	$a4,76($a0)
    sll	$ra,$ra,0x2
    sd	$v0,120($sp)
    sll	$a5,$a5,0x2
    addu	$s8,$s8,$ra
    addu	$a4,$a4,$a5
    lw	$s8,0($s8)
    lw	$a4,0($a4)
    lw	$s8,0($s8)
    lbu	$s3,72($a4)
    move	$s0,$a2
    lw	$s4,76($a4)
    move	$s5,$a1
    beqz	$a3,.L016bf17c
    lw	$s7,64($a4)
    sd	$a4,8($sp)
    sll	$v1,$a3,0x3
    addu	$v1,$v1,$a2
    b	.L016beedc
    sd	$v1,104($sp)
    nop
    nop
    nop
.L016beed0:
    ld	$a0,104($sp)
    addiu	$s0,$s0,8
    beq	$s0,$a0,.L016bf17c
.L016beedc:
    ld	$a0,8($sp)
    lh	$v0,0($s0)
    sh	$v0,0($sp)
    lh	$at,2($s0)
    sh	$at,2($sp)
    lh	$a1,88($a0)
    mtc1	$s6,$f2
    subu	$a1,$v0,$a1
    mtc1	$a1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    lh	$a0,90($a0)
    ld	$t9,120($sp)
    subu	$a0,$at,$a0
    mtc1	$a0,$f0
    mtc1	$t9,$f2
    cvt.d.w	$f0,$f0
    cvt.d.w	$f2,$f2
    div.d	$f0,$f0,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a4,$f1
    mult	$a4,$s6
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    mflo	$a2
    nop
    nop
    mult	$a3,$t9
    subu	$a1,$a1,$a2
    addu	$a2,$s6,$a1
    slti	$v1,$a1,0
    addu	$v0,$s6,$v0
    lh	$a4,4($s0)
    movz	$a2,$a1,$v1
    subu	$v0,$v0,$a2
    slt	$a3,$v0,$a4
    mflo	$a1
    movz	$v0,$a4,$a3
    subu	$a0,$a0,$a1
    sh	$v0,4($sp)
    addu	$ra,$t9,$a0
    slti	$v0,$a0,0
    addu	$at,$t9,$at
    lh	$v1,6($s0)
    movz	$ra,$a0,$v0
    subu	$at,$at,$ra
    slt	$v0,$at,$v1
    movz	$at,$v1,$v0
    sh	$at,6($sp)
    lw	$a3,28($s1)
    mult	$a3,$ra
    move	$a7,$s5
    move	$a6,$s4
    teq	$t9,$zero,0x7
    lw	$t9,12($s8)
    move	$a5,$s3
    teq	$s6,$zero,0x7
    lw	$s2,32($s1)
    move	$a4,$s7
    mflo	$t8
    addiu	$a0,$sp,0
    addu	$s2,$s2,$t8
    sd	$a2,112($sp)
    jalr	$t9
    move	$a1,$s2
    lh	$a2,4($s0)
    lh	$a3,4($sp)
    slt	$a2,$a3,$a2
    bnez	$a2,.L016bf1b0
    addu	$a1,$s6,$a3
    b	.L016bf05c
    nop
.L016bf000:
    sh	$t0,4($sp)
.L016bf004:
    move	$a7,$s5
    move	$a6,$s4
    lw	$t9,12($s8)
    move	$a5,$s3
    move	$a4,$s7
    move	$a2,$zero
    move	$a1,$s2
    lw	$a3,28($s1)
    jalr	$t9
    addiu	$a0,$sp,0
    lh	$a4,4($s0)
    lh	$a3,4($sp)
    slt	$a4,$a3,$a4
    beqz	$a4,.L016bf05c
    addu	$a1,$s6,$a3
    sh	$a3,0($sp)
.L016bf044:
    lh	$t0,4($s0)
    slt	$a5,$t0,$a1
    bnez	$a5,.L016bf000
    nop
    b	.L016bf004
    sh	$a1,4($sp)
.L016bf05c:
    lh	$a6,6($s0)
    lh	$a1,6($sp)
    slt	$a6,$a1,$a6
    beqz	$a6,.L016beed0
    lw	$s2,32($s1)
    b	.L016bf098
    sh	$a1,2($sp)
    nop
    nop
.L016bf080:
    lh	$a7,6($s0)
    lh	$a1,6($sp)
    slt	$a7,$a1,$a7
    beqz	$a7,.L016beed0
    nop
    sh	$a1,2($sp)
.L016bf098:
    ld	$a3,120($sp)
    lh	$a4,6($s0)
    addu	$a3,$a3,$a1
    slt	$t0,$a4,$a3
    beqz	$t0,.L016bf0b8
    nop
    b	.L016bf0bc
    sh	$a4,6($sp)
.L016bf0b8:
    sh	$a3,6($sp)
.L016bf0bc:
    ld	$a2,112($sp)
    lh	$a4,0($s0)
    sh	$a4,0($sp)
    lh	$a6,4($s0)
    addu	$a4,$s6,$a4
    subu	$a4,$a4,$a2
    slt	$a5,$a4,$a6
    movz	$a4,$a6,$a5
    sh	$a4,4($sp)
    move	$a7,$s5
    lw	$t9,12($s8)
    move	$a1,$s2
    addiu	$a0,$sp,0
    move	$a6,$s4
    move	$a5,$s3
    move	$a4,$s7
    jalr	$t9
    lw	$a3,28($s1)
    lh	$a5,4($s0)
    lh	$a3,4($sp)
    slt	$a5,$a3,$a5
    bnez	$a5,.L016bf1c0
    addu	$t1,$s6,$a3
    b	.L016bf080
    nop
.L016bf120:
    sh	$t0,4($sp)
.L016bf124:
    move	$a7,$s5
    move	$a6,$s4
    lw	$t9,12($s8)
    move	$a5,$s3
    move	$a4,$s7
    move	$a2,$zero
    move	$a1,$s2
    lw	$a3,28($s1)
    jalr	$t9
    addiu	$a0,$sp,0
    lh	$a6,4($s0)
    lh	$a3,4($sp)
    slt	$a6,$a3,$a6
    beqz	$a6,.L016bf080
    addu	$t1,$s6,$a3
    sh	$a3,0($sp)
.L016bf164:
    lh	$t0,4($s0)
    slt	$a7,$t0,$t1
    bnez	$a7,.L016bf120
    nop
    b	.L016bf124
    sh	$t1,4($sp)
.L016bf17c:
    ld	$gp,88($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,96($sp)
    ld	$s3,80($sp)
    ld	$s4,56($sp)
    ld	$s5,32($sp)
    ld	$ra,64($sp)
    ld	$s6,72($sp)
    ld	$s7,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L016bf1b0:
    b	.L016bf044
    sh	$a3,0($sp)
    nop
    nop
.L016bf1c0:
    b	.L016bf164
    sh	$a3,0($sp)

glabel nfbStereoPushPixels
    lw	$a7,72($a0)
    addiu	$sp,$sp,-112
    sd	$a7,64($sp)
    sd	$s4,48($sp)
    sd	$s7,24($sp)
    lw	$s7,16($a2)
    sd	$s1,72($sp)
    sd	$s3,8($sp)
    lui	$s3,0x7
    sd	$s2,0($sp)
    addiu	$s3,$s3,31632
    sd	$gp,88($sp)
    addu	$gp,$t9,$s3
    lw	$s2,-6768($gp)
    lw	$s1,76($a0)
    sd	$s6,16($sp)
    sll	$s2,$s2,0x2
    lw	$s7,116($s7)
    addu	$s1,$s1,$s2
    lw	$s1,0($s1)
    lhu	$s7,226($s7)
    lw	$t8,8($s1)
    lw	$v1,92($s1)
    sw	$v1,72($a0)
    li	$at,1
    sw	$at,104($s1)
    lw	$v0,16($a2)
    sd	$s8,32($sp)
    lw	$v0,116($v0)
    sd	$s5,40($sp)
    move	$s5,$a1
    move	$s8,$a3
    lw	$v0,220($v0)
    move	$s6,$a5
    move	$s4,$a6
    sd	$s0,80($sp)
    move	$s0,$a0
    sd	$ra,96($sp)
    move	$s3,$a4
    move	$s2,$a2
    beq	$at,$v0,.L016c2f9c
    sd	$t8,56($sp)
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($a2)
    addu	$at,$at,$s7
    sh	$at,10($a2)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s7
    sh	$ra,90($s1)
    lw	$t9,72($a0)
    lw	$t9,76($t9)
    addu	$a6,$a6,$s7
    jalr	$t9
    nop
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($s2)
    subu	$at,$at,$s7
    sh	$at,10($s2)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s7
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a6,$s4
    move	$a5,$s6
    lw	$t9,76($t9)
    move	$a4,$s3
    move	$a3,$s8
    move	$a2,$s2
    move	$a1,$s5
    jalr	$t9
    move	$a0,$s0
    ld	$s2,0($sp)
.L016c2f58:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s7,24($sp)
    ld	$s8,32($sp)
    ld	$s5,40($sp)
    ld	$s4,48($sp)
    ld	$gp,88($sp)
    ld	$v1,64($sp)
    ld	$a0,56($sp)
    sw	$a0,8($s1)
    sw	$v1,72($s0)
    ld	$ra,96($sp)
    ld	$s0,80($sp)
    sw	$zero,104($s1)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L016c2f9c:
    lw	$v0,96($s1)
    sw	$v0,8($s1)
    lh	$at,10($a2)
    subu	$at,$at,$s7
    sh	$at,10($a2)
    lh	$ra,90($s1)
    subu	$ra,$ra,$s7
    sh	$ra,90($s1)
    lw	$t9,72($a0)
    lw	$t9,76($t9)
    subu	$a6,$a6,$s7
    jalr	$t9
    nop
    lw	$v0,100($s1)
    sw	$v0,8($s1)
    lh	$at,10($s2)
    addu	$at,$at,$s7
    sh	$at,10($s2)
    lh	$ra,90($s1)
    addu	$ra,$ra,$s7
    sh	$ra,90($s1)
    lw	$t9,72($s0)
    move	$a6,$s4
    move	$a5,$s6
    lw	$t9,76($t9)
    move	$a4,$s3
    move	$a3,$s8
    move	$a2,$s2
    move	$a1,$s5
    jalr	$t9
    move	$a0,$s0
    b	.L016c2f58
    ld	$s2,0($sp)

glabel nfbInitRootWindow
    addiu	$sp,$sp,-208
    sd	$s3,120($sp)
    lw	$s3,20($a0)
    sd	$s1,200($sp)
    sd	$s0,192($sp)
    sd	$ra,184($sp)
    lh	$a1,16($a0)
    sd	$s6,176($sp)
    sd	$s8,128($sp)
    move	$s8,$a0
    blez	$a1,.L016c6538
    sd	$s2,160($sp)
    sll	$a5,$a1,0x3
    move	$v0,$s3
    addu	$a5,$a5,$s3
    lbu	$a4,0($v0)
.L016c6510:
    lh	$a2,2($v0)
    lbu	$a3,0($s3)
    slt	$a3,$a3,$a4
    pref	0x0,256($v0)
    beqz	$a3,.L016c652c
    slti	$a2,$a2,1
    movz	$s3,$v0,$a2
.L016c652c:
    addiu	$v0,$v0,8
    bnel	$v0,$a5,.L016c6510
    lbu	$a4,0($v0)
.L016c6538:
    la	$ra,rrmScreenPrivateIndex
    lw	$t9,436($s8)
    lw	$ra,0($ra)
    la	$s0,WindowTable
    lw	$t8,0($s8)
    sll	$ra,$ra,0x2
    lw	$s0,0($s0)
    addu	$t9,$t9,$ra
    sll	$t8,$t8,0x2
    lw	$t9,0($t9)
    addu	$s0,$s0,$t8
    lw	$s0,0($s0)
    lw	$a2,-5736($gp)
    lw	$a1,132($s0)
    sll	$a2,$a2,0x2
    lw	$t9,72($t9)
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,4($a1)
    la	$s1,solidRootOverrideColorName
    lw	$a0,0($s1)
    beqz	$a0,.L016c66b8
    lw	$t9,-28364($gp)
    jalr	$t9
    nop
    lw	$t9,-27808($gp)
    move	$a2,$v0
    addiu	$a5,$sp,4
    addiu	$a4,$sp,2
    lw	$a1,0($s1)
    addiu	$a3,$sp,0
    jalr	$t9
    lw	$a0,0($s8)
    beqz	$v0,.L016c6a44
    la	$s2,FatalError
    lbu	$at,1($s0)
.L016c65d0:
    li	$v0,2
    beq	$at,$v0,.L016c6944
    nop
    lw	$v0,120($s0)
    beqz	$v0,.L016c6a64
    lw	$t9,-28356($gp)
    lw	$a0,8($v0)
.L016c65ec:
    lw	$t9,-27920($gp)
    jalr	$t9
    li	$a1,6
    la	$a5,serverClient
    lw	$t9,-28368($gp)
    move	$a0,$v0
    addiu	$a4,$sp,8
    lw	$a5,0($a5)
    addiu	$a3,$sp,4
    addiu	$a2,$sp,2
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a5,0($a5)
    beqz	$v0,.L016c6638
    la	$a0,_rodata_symbol
    move	$t9,$s2
    lw	$a1,0($s1)
    jalr	$t9
    addiu	$a0,$a0,18136
.L016c6638:
    lw	$t9,-28060($gp)
    move	$a1,$s8
    jalr	$t9
    lbu	$a0,18($s8)
    lw	$t9,-27952($gp)
    move	$s1,$v0
    addiu	$a2,$sp,12
    li	$a1,4
    lw	$a3,8($sp)
    move	$a0,$v0
    jalr	$t9
    sw	$a3,12($sp)
    lw	$t9,-28064($gp)
    move	$a1,$s1
    jalr	$t9
    lw	$a0,108($s0)
    sh	$zero,16($sp)
    sh	$zero,18($sp)
    lhu	$at,12($s0)
    sh	$at,20($sp)
    lhu	$ra,14($s0)
    sh	$ra,22($sp)
    lw	$t9,72($s1)
    lw	$t9,44($t9)
    addiu	$a3,$sp,16
    li	$a2,1
    move	$a1,$s1
    jalr	$t9
    lw	$a0,108($s0)
    lw	$t9,-28124($gp)
    jalr	$t9
    move	$a0,$s1
.L016c66b8:
    la	$v1,gammaAdjust
    lw	$v1,0($v1)
    la	$s6,_rodata_symbol
    beqz	$v1,.L016c672c
    lui	$s1,0xe000
    lw	$t9,-28396($gp)
    li	$a2,1
    li	$a1,15
    jalr	$t9
    addiu	$a0,$s6,18192
    beq	$s1,$v0,.L016c6a2c
    move	$s2,$v0
    beqz	$v0,.L016c6a30
    lw	$t9,-28184($gp)
    lw	$t9,-28364($gp)
    la	$a0,gammaAdjust
    jalr	$t9
    lw	$a0,0($a0)
    move	$a5,$v0
    move	$a4,$zero
    lw	$t9,-28404($gp)
    li	$a3,8
    li	$a2,31
    la	$a6,gammaAdjust
    move	$a1,$s2
    move	$a0,$s0
    move	$a7,$zero
    jalr	$t9
    lw	$a6,0($a6)
.L016c672c:
    lw	$t9,-28396($gp)
    la	$t0,GetBestVisualForPEX
    li	$a2,1
    li	$a1,12
    la	$a7,nfbGetBestVisualForPEX
    addiu	$a0,$s6,18248
    jalr	$t9
    sw	$a7,0($t0)
    beq	$s1,$v0,.L016c6950
    lw	$t9,-28244($gp)
    beqz	$v0,.L016c694c
    sd	$v0,136($sp)
.L016c675c:
    lh	$a5,2($s3)
    sd	$s5,152($sp)
    sd	$s7,168($sp)
    move	$s7,$zero
    blez	$a5,.L016c6844
    sd	$s4,144($sp)
    move	$s5,$zero
    lh	$t1,120($s8)
    li	$s4,4
    b	.L016c6c18
    sd	$s0,112($sp)
    nop
    nop
.L016c6790:
    addiu	$s0,$s0,1
    beqz	$a6,.L016c6800
    move	$s1,$a5
.L016c679c:
    lw	$t2,0($s1)
    addiu	$a5,$s1,36
    lh	$a7,4($s1)
    bne	$t2,$s2,.L016c6790
    sltu	$a6,$a5,$t0
    bne	$a7,$s4,.L016c6790
    lw	$t9,-28400($gp)
    lw	$a0,0($s8)
    move	$a1,$s0
    jalr	$t9
    ld	$a2,136($sp)
    beqz	$v0,.L016c67e0
    addiu	$a1,$s0,1
    lw	$t3,8($v0)
    sltiu	$t3,$t3,21
    beqz	$t3,.L016c68a8
    nop
.L016c67e0:
    lh	$t1,120($s8)
    sll	$t0,$t1,0x3
    slt	$s0,$a1,$t1
    addiu	$s1,$s1,36
    addu	$t0,$t0,$t1
    bnez	$s0,.L016c6838
    move	$s0,$a1
    nop
.L016c6800:
    lh	$a5,2($s3)
.L016c6804:
    addiu	$s7,$s7,1
    slt	$t8,$s7,$a5
    addiu	$s5,$s5,4
    sll	$t0,$t1,0x3
    beqz	$t8,.L016c6844
    addu	$t0,$t0,$t1
    lw	$s2,4($s3)
.L016c6820:
    lw	$s6,124($s8)
    move	$s0,$zero
    addu	$s2,$s2,$s5
    move	$s1,$s6
    blez	$t1,.L016c6804
    lw	$s2,0($s2)
.L016c6838:
    sll	$t0,$t0,0x2
    b	.L016c679c
    addu	$t0,$s6,$t0
.L016c6844:
    lw	$t2,116($s8)
    sw	$zero,204($t2)
    lw	$t1,116($s8)
    sw	$zero,208($t1)
.L016c6854:
    lw	$t9,-30892($gp)
    jalr	$t9
    move	$a0,$s8
    lw	$t9,116($s8)
    lw	$t9,188($t9)
    beqz	$t9,.L016c687c
    ld	$s1,200($sp)
    jalr	$t9
    move	$a0,$s8
    ld	$s1,200($sp)
.L016c687c:
    ld	$s0,192($sp)
    ld	$s6,176($sp)
    ld	$s7,168($sp)
    ld	$s2,160($sp)
    ld	$s5,152($sp)
    ld	$ra,184($sp)
    ld	$s4,144($sp)
    ld	$s3,120($sp)
    ld	$s8,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L016c68a8:
    lw	$v0,116($s8)
    la	$s0,Ones
    sw	$s2,204($v0)
    lw	$at,116($s8)
    lbu	$ra,0($s3)
    move	$t9,$s0
    sw	$ra,208($at)
    jalr	$t9
    lw	$a0,12($s1)
    move	$t9,$s0
    move	$s4,$v0
    jalr	$t9
    lw	$a0,16($s1)
    move	$t9,$s0
    move	$s3,$v0
    jalr	$t9
    lw	$a0,20($s1)
    lw	$t9,-28232($gp)
    move	$s2,$v0
    jalr	$t9
    move	$a0,$zero
    move	$s0,$v0
    move	$a0,$v0
    lw	$t9,-27820($gp)
    move	$a1,$s8
    move	$a2,$s1
    move	$a5,$zero
    move	$a4,$zero
    jalr	$t9
    addiu	$a3,$sp,24
    beqz	$v0,.L016c6964
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    la	$s0,exit
    jalr	$t9
    addiu	$a0,$a0,18304
    move	$t9,$s0
    jalr	$t9
    li	$a0,1
.L016c6944:
    b	.L016c65ec
    move	$a0,$zero
.L016c694c:
    lw	$t9,-28244($gp)
.L016c6950:
    sd	$v0,136($sp)
    jalr	$t9
    addiu	$a0,$s6,18264
    b	.L016c675c
    sd	$s7,168($sp)
.L016c6964:
    ld	$a1,112($sp)
    lw	$a1,120($a1)
    bnez	$a1,.L016c6980
    lw	$t9,-27804($gp)
    jalr	$t9
    ld	$a0,112($sp)
    beqz	$v0,.L016c6b78
.L016c6980:
    lw	$t9,-28404($gp)
    sw	$s0,32($sp)
    lw	$s6,0($s1)
    sw	$zero,68($sp)
    li	$a7,1
    sw	$s6,64($sp)
    sllv	$s5,$a7,$s4
    addiu	$s5,$s5,-1
    sw	$s5,36($sp)
    sllv	$s6,$a7,$s3
    lw	$s7,24($s1)
    addiu	$s6,$s6,-1
    sw	$s6,44($sp)
    sllv	$s7,$a7,$s7
    sw	$s7,40($sp)
    sllv	$s7,$a7,$s2
    lw	$t8,28($s1)
    addiu	$s7,$s7,-1
    sw	$s7,52($sp)
    addiu	$a6,$sp,32
    sllv	$t8,$a7,$t8
    sw	$t8,48($sp)
    li	$a5,10
    move	$a4,$zero
    lw	$t0,32($s1)
    li	$a3,32
    li	$a2,24
    ld	$a0,112($sp)
    li	$a1,25
    sw	$zero,60($sp)
    sllv	$a7,$a7,$t0
    sw	$a7,56($sp)
    jalr	$t9
    move	$a7,$zero
    beqz	$v0,.L016c6a78
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    la	$s0,exit
    jalr	$t9
    addiu	$a0,$a0,18384
    move	$t9,$s0
    jalr	$t9
    li	$a0,1
.L016c6a2c:
    lw	$t9,-28184($gp)
.L016c6a30:
    jalr	$t9
    addiu	$a0,$s6,18208
    lw	$t9,-28312($gp)
    jalr	$t9
    li	$a0,1
.L016c6a44:
    la	$s2,FatalError
    la	$a0,_rodata_symbol
    move	$t9,$s2
    lw	$a1,0($s1)
    jalr	$t9
    addiu	$a0,$a0,18088
    b	.L016c65d0
    lbu	$at,1($s0)
.L016c6a64:
    jalr	$t9
    move	$a0,$s0
    lw	$a0,120($v0)
    b	.L016c65ec
    lw	$a0,8($a0)
.L016c6a78:
    sw	$s5,36($sp)
    lw	$t1,24($s1)
    sw	$zero,56($sp)
    sw	$zero,52($sp)
    sw	$zero,48($sp)
    sw	$zero,44($sp)
    li	$a7,1
    sllv	$t1,$a7,$t1
    sw	$t1,40($sp)
    addiu	$a6,$sp,32
    li	$a5,10
    lw	$t0,24($s1)
    move	$a4,$zero
    li	$a3,32
    lw	$t9,-28404($gp)
    li	$a2,24
    sllv	$a7,$a7,$t0
    li	$a1,30
    ld	$a0,112($sp)
    addiu	$a7,$a7,-1
    sw	$a7,60($sp)
    jalr	$t9
    move	$a7,$zero
    beqz	$v0,.L016c6af8
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    la	$s0,exit
    jalr	$t9
    addiu	$a0,$a0,18384
    move	$t9,$s0
    jalr	$t9
    li	$a0,1
.L016c6af8:
    sw	$s6,44($sp)
    sw	$zero,40($sp)
    sw	$zero,36($sp)
    lw	$t1,28($s1)
    sw	$zero,56($sp)
    sw	$zero,52($sp)
    li	$a7,1
    sllv	$t1,$a7,$t1
    sw	$t1,48($sp)
    addiu	$a6,$sp,32
    li	$a5,10
    lw	$t0,28($s1)
    move	$a4,$zero
    li	$a3,32
    lw	$t9,-28404($gp)
    li	$a2,24
    sllv	$a7,$a7,$t0
    li	$a1,29
    ld	$a0,112($sp)
    addiu	$a7,$a7,-1
    sw	$a7,60($sp)
    jalr	$t9
    move	$a7,$zero
    beqz	$v0,.L016c6b98
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    la	$s0,exit
    jalr	$t9
    addiu	$a0,$a0,18384
    move	$t9,$s0
    jalr	$t9
    li	$a0,1
.L016c6b78:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    la	$s0,exit
    jalr	$t9
    addiu	$a0,$a0,18344
    move	$t9,$s0
    jalr	$t9
    li	$a0,1
.L016c6b98:
    sw	$s7,52($sp)
    sw	$zero,48($sp)
    sw	$zero,44($sp)
    sw	$zero,40($sp)
    sw	$zero,36($sp)
    lw	$t1,32($s1)
    li	$a7,1
    sllv	$t1,$a7,$t1
    sw	$t1,56($sp)
    addiu	$a6,$sp,32
    li	$a5,10
    lw	$t0,32($s1)
    move	$a4,$zero
    li	$a3,32
    lw	$t9,-28404($gp)
    li	$a2,24
    sllv	$a7,$a7,$t0
    li	$a1,26
    ld	$a0,112($sp)
    addiu	$a7,$a7,-1
    sw	$a7,60($sp)
    jalr	$t9
    move	$a7,$zero
    beqz	$v0,.L016c6854
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    la	$s0,exit
    jalr	$t9
    addiu	$a0,$a0,18384
    move	$t9,$s0
    jalr	$t9
    li	$a0,1
.L016c6c18:
    sll	$t0,$t1,0x3
    addu	$t0,$t0,$t1
    b	.L016c6820
    lw	$s2,4($s3)

glabel nfbSolidFS
    addiu	$sp,$sp,-96
    sd	$s7,48($sp)
    sd	$s2,8($sp)
    lw	$s2,76($a0)
    sd	$s4,32($sp)
    lui	$s4,0x7
    sd	$s3,16($sp)
    addiu	$s4,$s4,11392
    sd	$gp,56($sp)
    addu	$gp,$t9,$s4
    lw	$s3,-6768($gp)
    sd	$s5,40($sp)
    lw	$s4,132($a1)
    sll	$s3,$s3,0x2
    addu	$s2,$s2,$s3
    lw	$s5,-5736($gp)
    lw	$s2,0($s2)
    sd	$s6,24($sp)
    sll	$s5,$s5,0x2
    lw	$s7,64($s2)
    addu	$s4,$s4,$s5
    lw	$s4,0($s4)
    lw	$s3,76($s2)
    sll	$s6,$a4,0x2
    lw	$s4,0($s4)
    addu	$s6,$s6,$a3
    lbu	$s2,72($s2)
    move	$s5,$a1
    blez	$a4,.L016c7e34
    lw	$s4,4($s4)
    sd	$ra,64($sp)
    sd	$s0,72($sp)
    move	$s0,$a3
    sd	$s1,80($sp)
    move	$s1,$a2
    nop
.L016c7dd0:
    lh	$ra,0($s1)
    sh	$ra,0($sp)
    lw	$t9,0($s0)
    addu	$t9,$t9,$ra
    sh	$t9,4($sp)
    lh	$t8,2($s1)
    addiu	$a0,$sp,0
    pref	0x0,256($s0)
    li	$a1,1
    move	$a2,$s7
    pref	0x0,256($s1)
    move	$a3,$s2
    move	$t9,$s4
    move	$a4,$s3
    move	$a5,$s5
    sh	$t8,2($sp)
    addiu	$t8,$t8,1
    jalr	$t9
    sh	$t8,6($sp)
    addiu	$s0,$s0,4
    bne	$s0,$s6,.L016c7dd0
    addiu	$s1,$s1,4
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,80($sp)
.L016c7e34:
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s6,24($sp)
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbGenericScreenInit
    addiu	$sp,$sp,-160
    sd	$zero,80($sp)
    sd	$s3,104($sp)
    sd	$s0,112($sp)
    sd	$ra,120($sp)
    sd	$s2,136($sp)
    sd	$s7,88($sp)
    move	$s7,$a0
    sd	$s5,96($sp)
    move	$s5,$a1
    beqz	$a3,.L016c8270
    sd	$s1,144($sp)
    blez	$a2,.L016c8270
    sll	$s2,$a2,0x3
    move	$s0,$zero
    addu	$s2,$s2,$a2
    la	$s3,FakeClientID
    move	$s1,$zero
    sll	$s2,$s2,0x2
    nop
.L016c8240:
    move	$t9,$s3
    jalr	$t9
    move	$a0,$zero
    lw	$t9,36($s5)
    addu	$t9,$t9,$s0
    sw	$v0,0($t9)
    lw	$t8,40($s5)
    addiu	$s0,$s0,36
    addu	$t8,$t8,$s1
    addiu	$s1,$s1,4
    bne	$s0,$s2,.L016c8240
    sw	$v0,0($t8)
.L016c8270:
    move	$a0,$s7
    addiu	$s0,$gp,-6776
    lw	$t9,-30048($gp)
    li	$s2,-1
    addiu	$s1,$s0,8
    sw	$s2,-5736($gp)
    addiu	$s0,$s0,1040
    move	$a2,$s1
    sw	$s2,-6768($gp)
    jalr	$t9
    move	$a1,$s0
    beqz	$v0,.L016c8854
    lw	$t9,-31964($gp)
    move	$a0,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    beqz	$v0,.L016c88a0
    lw	$t9,-31656($gp)
    move	$a0,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    beqz	$v0,.L016c88f0
    lw	$t9,-29608($gp)
    move	$a0,$s7
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    beqz	$v0,.L016c8918
    ld	$s1,144($sp)
    lw	$t9,-27704($gp)
    move	$a0,$s7
    li	$a2,64
    jalr	$t9
    lw	$a1,-5736($gp)
    beqz	$v0,.L016c88c8
    lw	$t9,-27712($gp)
    move	$a0,$s7
    li	$a2,112
    jalr	$t9
    lw	$a1,-6768($gp)
    beqz	$v0,.L016c88cc
    ld	$s1,144($sp)
    la	$s0,Xalloc
    move	$t9,$s0
    li	$a0,268
    jalr	$t9
    sd	$s6,128($sp)
    ld	$ra,120($sp)
    move	$s6,$v0
    beqz	$v0,.L016c8a7c
    sd	$s4,152($sp)
    lw	$s3,0($s7)
    lw	$s4,4($s7)
    lw	$t8,128($s7)
    lw	$ra,132($s7)
    lw	$a1,436($s7)
    lw	$a0,148($s7)
    lw	$at,136($s7)
    lw	$v0,140($s7)
    sd	$v0,56($sp)
    sd	$at,16($sp)
    addiu	$s1,$s7,28
    li	$s2,0x20
    sd	$a0,72($sp)
    addiu	$t9,$s7,24
    addiu	$t3,$s7,20
    lw	$v1,144($s7)
    addiu	$t1,$s7,16
    addiu	$a3,$s7,4
    sd	$v1,48($sp)
    li	$s0,128
    addiu	$a5,$s7,8
    lw	$v1,28($s5)
    addiu	$a7,$s7,12
    move	$a0,$zero
    sd	$a1,64($sp)
    move	$a1,$s7
    sd	$ra,8($sp)
    addiu	$ra,$v1,28
    sd	$t8,32($sp)
    addiu	$t8,$v1,24
    addiu	$t2,$v1,20
    sd	$s4,24($sp)
    addiu	$t0,$v1,16
    addiu	$a4,$v1,8
    sd	$s3,40($sp)
    addiu	$a2,$v1,4
    addiu	$a6,$v1,12
    nop
    nop
.L016c83e0:
    addu	$at,$a0,$v1
    addu	$v0,$a0,$a1
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$a2
    addu	$v0,$a0,$a3
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$a4
    addu	$v0,$a0,$a5
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$a6
    addu	$v0,$a0,$a7
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$t0
    addu	$v0,$a0,$t1
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$t2
    addu	$v0,$a0,$t3
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$t8
    addu	$v0,$a0,$t9
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$v0,$a0,$ra
    addiu	$s0,$s0,-8
    addu	$at,$a0,$s1
    lw	$v0,0($v0)
    sw	$v0,0($at)
    bgtz	$s0,.L016c83e0
    addu	$a0,$a0,$s2
    li	$a2,3
    li	$s0,67
    move	$a0,$zero
    lw	$v1,116($s7)
.L016c847c:
    addiu	$a2,$a2,-1
    addu	$a3,$a0,$v1
    addiu	$s0,$s0,-1
    addu	$a4,$a0,$s6
    lw	$a3,0($a3)
    addiu	$a0,$a0,4
    bnez	$a2,.L016c847c
    sw	$a3,0($a4)
    addiu	$ra,$v1,28
    addiu	$s1,$s6,28
    li	$s2,0x20
    addiu	$t9,$s6,24
    addiu	$t8,$v1,24
    addiu	$t2,$v1,20
    addiu	$t3,$s6,20
    addiu	$t1,$s6,16
    addiu	$t0,$v1,16
    addiu	$a2,$v1,4
    addiu	$a3,$s6,4
    addiu	$a4,$v1,8
    addiu	$a5,$s6,8
    addiu	$a6,$v1,12
    addiu	$a7,$s6,12
    move	$a1,$s6
    nop
.L016c84e0:
    addu	$at,$a0,$v1
    addu	$v0,$a0,$a1
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$a2
    addu	$v0,$a0,$a3
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$a4
    addu	$v0,$a0,$a5
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$a6
    addu	$v0,$a0,$a7
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$t0
    addu	$v0,$a0,$t1
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$t2
    addu	$v0,$a0,$t3
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$at,$a0,$t8
    addu	$v0,$a0,$t9
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$v0,$a0,$ra
    addiu	$s0,$s0,-8
    addu	$at,$a0,$s1
    lw	$v0,0($v0)
    sw	$v0,0($at)
    bgtz	$s0,.L016c84e0
    addu	$a0,$a0,$s2
    sw	$s6,116($s7)
    ld	$ra,40($sp)
    ld	$t9,24($sp)
    ld	$t8,32($sp)
    ld	$t3,8($sp)
    ld	$t2,16($sp)
    ld	$t1,56($sp)
    ld	$t0,48($sp)
    ld	$a7,72($sp)
    ld	$a6,64($sp)
    sw	$a6,436($s7)
    sw	$a7,148($s7)
    sw	$t0,144($s7)
    sw	$t1,140($s7)
    sw	$t2,136($s7)
    sw	$t3,132($s7)
    sw	$t8,128($s7)
    sw	$t9,4($s7)
    sw	$ra,0($s7)
    sw	$s7,16($s6)
    lhu	$a5,24($s5)
    lw	$v0,160($s6)
    sh	$a5,12($s6)
    lhu	$a4,26($s5)
    beqz	$v0,.L016c85f8
    sh	$a4,14($s6)
    lw	$t9,-28180($gp)
    jalr	$t9
    sll	$a0,$v0,0x3
    lw	$t9,-27872($gp)
    lw	$a1,160($s6)
    move	$a0,$v0
    sw	$v0,164($s6)
    jalr	$t9
    sll	$a1,$a1,0x3
.L016c85f8:
    la	$s0,gammaAdjust
    lw	$a0,0($s0)
    beqz	$a0,.L016c865c
    sw	$zero,220($s6)
    lw	$t9,-27688($gp)
    jalr	$t9
    nop
    dmtc1	$zero,$f1
    c.le.d	$f0,$f1
    bc1t	.L016c8634
    sdc1	$f0,64($gp)
    la	$a2,_rodata_symbol
    ldc1	$f2,17568($a2)
    c.le.d $f2,$f0
    bc1f .L016c8654
.L016c8634:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    lw	$a1,0($s0)
    jalr	$t9
    addiu	$a0,$a0,17576
    la	$a1,_rodata_symbol
    ldc1	$f3,17640($a1)
    sdc1	$f3,64($gp)
.L016c8654:
    b	.L016c866c
    lw	$t9,-27684($gp)
.L016c865c:
    la	$a2,_rodata_symbol
    ldc1	$f4,11856($a2)
    sdc1	$f4,64($gp)
    lw	$t9,-27684($gp)
.L016c866c:
    lw	$a6,32($s5)
    sh	$a6,120($s7)
    lw	$a5,36($s5)
    sw	$a5,124($s7)
    lhu	$a4,24($s5)
    sh	$a4,8($s7)
    move	$a0,$s7
    addiu	$s0,$gp,-27584
    lhu	$a3,26($s5)
    addiu	$a1,$s0,17400
    jalr	$t9
    sh	$a3,10($s7)
    lw	$a0,52($s5)
    beqz	$a0,.L016c8a8c
    lw	$t9,-28396($gp)
    lw	$a6,32($s5)
    blez	$a6,.L016c86e8
    move	$a1,$zero
    sll	$a3,$a6,0x3
    lw	$a2,36($s5)
    addu	$a3,$a3,$a6
    sll	$a3,$a3,0x2
    move	$v0,$a2
    addu	$a2,$a2,$a3
    nop
.L016c86d0:
    lw	$a4,0($v0)
    addiu	$v0,$v0,36
    beq	$a0,$a4,.L016c893c
    sltu	$v1,$v0,$a2
    bnez	$v1,.L016c86d0
    addiu	$a1,$a1,1
.L016c86e8:
    move	$s1,$zero
.L016c86ec:
    slt	$a5,$a1,$a6
    beqz	$a5,.L016c8a08
    move	$s0,$a1
.L016c86f8:
    beqz	$s1,.L016c8a88
    li	$s1,-1
    lw	$v1,32($s5)
.L016c8704:
    li	$a7,-1
    xor	$a7,$s1,$a7
    movn	$s0,$s1,$a7
    slt	$a6,$s0,$v1
    beqz	$a6,.L016c89c8
    lw	$t9,-28184($gp)
    lw	$t0,36($s5)
.L016c8720:
    sll	$ra,$s0,0x3
    addu	$ra,$ra,$s0
    sll	$ra,$ra,0x2
    addu	$at,$t0,$ra
    lw	$at,0($at)
    sw	$at,24($s7)
    lw	$t9,36($s5)
    addu	$t9,$t9,$ra
    lh	$t9,10($t9)
    sb	$t9,18($s7)
    lw	$t8,84($s6)
    la	$s1,Xalloc
    sll	$s2,$t8,0x2
    move	$t9,$s1
    subu	$s2,$s2,$t8
    sll	$s2,$s2,0x2
    jalr	$t9
    move	$a0,$s2
    beqz	$v0,.L016c898c
    sw	$v0,92($s6)
    la	$s3,Xalloc
    move	$t9,$s3
    jalr	$t9
    move	$a0,$s2
    beqz	$v0,.L016c8cd4
    sw	$v0,96($s6)
    lw	$at,84($s6)
    beqz	$at,.L016c87e4
    move	$s1,$zero
    move	$s0,$zero
    nop
    nop
.L016c87a0:
    lw	$t9,340($s7)
    lw	$a0,92($s6)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$t9,340($s7)
    lw	$a0,96($s6)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a1,84($s6)
    addiu	$s1,$s1,1
    sltu	$a1,$s1,$a1
    bnez	$a1,.L016c87a0
    addiu	$s0,$s0,12
.L016c87e4:
    lw	$t9,-31880($gp)
    lw	$a2,36($s5)
    move	$a0,$s7
    addiu	$a1,$gp,-27584
    lw	$a2,0($a2)
    addiu	$a1,$a1,18328
    jalr	$t9
    sw	$a2,80($s6)
    lw	$a1,40($s6)
    move	$t9,$s3
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    jalr	$t9
    sll	$a0,$a0,0x2
    bnez	$v0,.L016c8944
    sw	$v0,44($s6)
    ld	$s4,152($sp)
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s6,128($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c8854:
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c887c:
    ld	$s4,152($sp)
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$s3,104($sp)
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c88a0:
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c88c8:
    ld	$s1,144($sp)
.L016c88cc:
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c88f0:
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c8918:
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c893c:
    b	.L016c86ec
    li	$s1,1
.L016c8944:
    move	$t9,$s3
    lw	$a0,40($s6)
    jalr	$t9
    sll	$a0,$a0,0x2
    bnez	$v0,.L016c8a54
    sw	$v0,60($s6)
    ld	$s4,152($sp)
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s6,128($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c898c:
    ld	$s4,152($sp)
    ld	$s1,144($sp)
    lw	$t9,-28196($gp)
    ld	$s2,136($sp)
    ld	$s0,112($sp)
    ld	$s3,104($sp)
    jalr	$t9
    move	$a0,$s6
    ld	$ra,120($sp)
    ld	$s6,128($sp)
    move	$v0,$zero
    ld	$s5,96($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L016c89c8:
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,17800
    lw	$t1,32($s5)
    blez	$t1,.L016c8df8
    move	$v0,$zero
    li	$a7,8
    lw	$a3,36($s5)
    li	$a6,3
    sll	$a2,$t1,0x3
    move	$v1,$a3
    addu	$a2,$a2,$t1
    move	$t0,$a3
    sll	$a2,$a2,0x2
    b	.L016c8a28
    addu	$a2,$a2,$a3
.L016c8a08:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,17648
    b	.L016c86f8
    nop
.L016c8a20:
    beqz	$a0,.L016c8a40
    addiu	$v0,$v0,1
.L016c8a28:
    lh	$a3,4($v1)
    addiu	$v1,$v1,36
    lh	$a1,-26($v1)
    bne	$a3,$a6,.L016c8a20
    sltu	$a0,$v1,$a2
    bne	$a1,$a7,.L016c8a20
.L016c8a40:
    slt	$a4,$v0,$t1
    xori	$a4,$a4,0x1
    move	$s0,$v0
    b	.L016c8720
    movn	$s0,$zero,$a4
.L016c8a54:
    move	$t9,$s3
    lw	$a0,40($s6)
    jalr	$t9
    sll	$a0,$a0,0x2
    ld	$ra,120($sp)
    bnez	$v0,.L016c8bcc
    sw	$v0,64($s6)
    ld	$s6,128($sp)
    b	.L016c887c
    move	$v0,$zero
.L016c8a7c:
    ld	$s6,128($sp)
    b	.L016c887c
    move	$v0,$zero
.L016c8a88:
    lw	$t9,-28396($gp)
.L016c8a8c:
    la	$a0,_rodata_symbol
    li	$a2,1
    li	$a1,17
    jalr	$t9
    addiu	$a0,$a0,17728
    lui	$a1,0xe000
    beq	$v0,$a1,.L016c8d04
    lw	$t9,-28244($gp)
    beqz	$v0,.L016c8d00
    sd	$v0,0($sp)
    lw	$a2,56($s5)
.L016c8ab8:
    beqz	$a2,.L016c8d1c
    nop
    lw	$a3,32($s5)
    move	$s2,$zero
    lw	$s4,76($s6)
    blez	$a3,.L016c8e60
    move	$v1,$a3
    move	$s3,$zero
    move	$s0,$zero
    li	$s1,-1
.L016c8ae0:
    sll	$t0,$v1,0x2
    lw	$a7,88($s6)
    addu	$t0,$t0,$v1
    sll	$t0,$t0,0x2
    addu	$a0,$a7,$s3
    lw	$a6,48($s6)
    b	.L016c8b10
    addu	$a7,$a7,$t0
.L016c8b00:
    addiu	$s2,$s2,1
    addiu	$s0,$s0,36
    beqz	$a1,.L016c8bc4
    addiu	$s3,$s3,20
.L016c8b10:
    lw	$t1,0($a0)
    sll	$t1,$t1,0x2
    addu	$t1,$a6,$t1
    lw	$t1,0($t1)
    sltu	$t1,$s4,$t1
    addiu	$a0,$a0,20
    beqz	$t1,.L016c8b00
    sltu	$a1,$a0,$a7
    lw	$t0,36($s5)
    lw	$t3,44($s5)
    addu	$t0,$t0,$s0
    lh	$t2,4($t0)
    xor	$t2,$t2,$t3
    slti	$t3,$t3,0
    sltiu	$t2,$t2,1
    lw	$t1,48($s5)
    or	$t2,$t2,$t3
    lh	$t0,10($t0)
    beqz	$t2,.L016c8b00
    slti	$t3,$t1,0
    xor	$t2,$t0,$t1
    sltiu	$t2,$t2,1
    or	$t2,$t2,$t3
    beqz	$t2,.L016c8b00
    lw	$t9,-28400($gp)
    lw	$a0,0($s7)
    move	$a1,$s2
    jalr	$t9
    ld	$a2,0($sp)
    beqz	$v0,.L016c8bbc
    addiu	$s3,$s3,20
    li	$t9,-1
    lw	$v1,32($s5)
    addiu	$t3,$s2,1
    xor	$t9,$s1,$t9
    sltiu	$t9,$t9,1
    slt	$t8,$t3,$v1
    addiu	$s0,$s0,36
    movn	$s1,$s2,$t9
    bnez	$t8,.L016c8ae0
    move	$s2,$t3
    b	.L016c8bc4
    nop
.L016c8bbc:
    li	$s1,-1
    lw	$v1,32($s5)
.L016c8bc4:
    b	.L016c8704
    move	$s0,$s2
.L016c8bcc:
    move	$t9,$s3
    lw	$a0,40($s6)
    jalr	$t9
    sll	$a0,$a0,0x2
    beqz	$v0,.L016c8de8
    sw	$v0,68($s6)
    lw	$a1,40($s6)
    beqz	$a1,.L016c8c54
    move	$s1,$zero
    move	$s0,$zero
    move	$s2,$zero
    nop
    nop
.L016c8c00:
    lw	$t9,340($s7)
    lw	$a0,44($s6)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s0
    lw	$a4,60($s6)
    addu	$a4,$a4,$s2
    sw	$zero,0($a4)
    lw	$a3,64($s6)
    addu	$a3,$a3,$s2
    sw	$zero,0($a3)
    lw	$a2,68($s6)
    addu	$a2,$a2,$s2
    sw	$zero,0($a2)
    lw	$a1,40($s6)
    addiu	$s1,$s1,1
    sltu	$a1,$s1,$a1
    addiu	$s0,$s0,12
    bnez	$a1,.L016c8c00
    addiu	$s2,$s2,4
.L016c8c54:
    la	$s0,serverGeneration
    lw	$a6,19312($gp)
    lw	$a5,0($s0)
    bne	$a5,$a6,.L016c8e28
    ld	$s6,128($sp)
    la	$s1,AllocateScreenPrivateIndex
    lw	$v1,-7744($gp)
    lw	$t0,436($s7)
.L016c8c74:
    sll	$t1,$v1,0x2
    la	$a7,nfbCopyPlane
    addu	$t0,$t0,$t1
    sw	$a7,0($t0)
    lw	$t9,-27680($gp)
.L016c8c88:
    move	$a0,$s7
    addiu	$a1,$gp,-27584
    jalr	$t9
    addiu	$a1,$a1,18320
    lw	$a3,0($s0)
    lw	$a2,19800($gp)
    bne	$a2,$a3,.L016c8e00
    ld	$ra,120($sp)
    lw	$v1,19072($gp)
    bltz	$v1,.L016c8ccc
    nop
.L016c8cb4:
    lw	$a5,436($s7)
    sll	$a6,$v1,0x2
    ld	$ra,120($sp)
    addu	$a5,$a5,$a6
    li	$a4,216
    sw	$a4,0($a5)
.L016c8ccc:
    b	.L016c887c
    li	$v0,1
.L016c8cd4:
    la	$s0,Xfree
    move	$t9,$s0
    jalr	$t9
    lw	$a0,92($s6)
    move	$t9,$s0
    jalr	$t9
    move	$a0,$s6
    ld	$s6,128($sp)
    ld	$ra,120($sp)
    b	.L016c887c
    move	$v0,$zero
.L016c8d00:
    lw	$t9,-28244($gp)
.L016c8d04:
    la	$a0,_rodata_symbol
    sd	$v0,0($sp)
    jalr	$t9
    addiu	$a0,$a0,17752
    b	.L016c8ab8
    lw	$a2,56($s5)
.L016c8d1c:
    lw	$a0,44($s5)
    bltz	$a0,.L016c8e68
    nop
.L016c8d28:
    lw	$v1,32($s5)
    blez	$v1,.L016c8ddc
    move	$a1,$zero
    lw	$a6,36($s5)
    sll	$a7,$v1,0x3
    slti	$a2,$a0,0
    addu	$a7,$a7,$v1
    move	$v0,$a6
    sll	$a7,$a7,0x2
    b	.L016c8d5c
    addu	$a6,$a6,$a7
.L016c8d54:
    beqz	$a7,.L016c8ddc
    addiu	$a1,$a1,1
.L016c8d5c:
    lh	$t1,4($v0)
    xor	$t1,$t1,$a0
    sltiu	$t1,$t1,1
    or	$t1,$t1,$a2
    addiu	$v0,$v0,36
    lh	$t0,-26($v0)
    beqz	$t1,.L016c8d98
    sltu	$a7,$v0,$a6
    lw	$t3,48($s5)
    xor	$t2,$t0,$t3
    slti	$t3,$t3,0
    sltiu	$t2,$t2,1
    or	$t2,$t2,$t3
    bnez	$t2,.L016c8ddc
    nop
.L016c8d98:
    beqz	$a7,.L016c8ddc
    addiu	$a1,$a1,1
    lh	$t3,4($v0)
    xor	$t3,$t3,$a0
    sltiu	$t3,$t3,1
    or	$t3,$t3,$a2
    addiu	$v0,$v0,36
    lh	$t0,-26($v0)
    beqz	$t3,.L016c8d54
    sltu	$a7,$v0,$a6
    lw	$t9,48($s5)
    xor	$t8,$t0,$t9
    slti	$t9,$t9,0
    sltiu	$t8,$t8,1
    or	$t8,$t8,$t9
    beqz	$t8,.L016c8d54
    nop
.L016c8ddc:
    move	$s0,$a1
.L016c8de0:
    b	.L016c8704
    li	$s1,-1
.L016c8de8:
    ld	$s6,128($sp)
    ld	$ra,120($sp)
    b	.L016c887c
    move	$v0,$zero
.L016c8df8:
    b	.L016c8a40
    lw	$t0,36($s5)
.L016c8e00:
    move	$t9,$s1
    jalr	$t9
    nop
    sw	$v0,19072($gp)
    lw	$t9,0($s0)
    move	$v1,$v0
    bgez	$v0,.L016c8cb4
    sw	$t9,19800($gp)
    b	.L016c8ccc
    ld	$ra,120($sp)
.L016c8e28:
    la	$s1,AllocateScreenPrivateIndex
    move	$t9,$s1
    jalr	$t9
    nop
    move	$v1,$v0
    bltz	$v0,.L016c8e7c
    sw	$v0,-7744($gp)
    lw	$ra,0($s0)
    sw	$ra,19312($gp)
.L016c8e4c:
    ld	$at,80($sp)
    bnez	$at,.L016c8c88
    lw	$t9,-27680($gp)
    b	.L016c8c74
    lw	$t0,436($s7)
.L016c8e60:
    b	.L016c8bc4
    li	$s1,-1
.L016c8e68:
    lw	$v0,48($s5)
    bgez	$v0,.L016c8d28
    move	$s0,$zero
    b	.L016c8de0
    lw	$v1,32($s5)
.L016c8e7c:
    li	$a0,1
    b	.L016c8e4c
    sd	$a0,80($sp)

glabel nfbInfPolyFillArc__BL
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x7
    sd	$s2,32($sp)
    addiu	$t8,$t8,-512
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a5,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t0,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L016cad4c
    lw	$a7,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t0,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L016cad4c
    sd	$a7,8($sp)
    sw	$t0,19112($gp)
    sw	$a5,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,48($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L016cad30
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016cad30:
    ld	$s1,16($sp)
.L016cad34:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016cad4c:
    lw	$t9,32($s1)
    lw	$t9,48($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a5
    jalr	$t9
    move	$a3,$a6
    b	.L016cad34
    ld	$s1,16($sp)

glabel nfbInfPolyText8__CL
    addiu	$sp,$sp,-16
    lui	$at,0x7
    sd	$ra,0($sp)
    addiu	$at,$at,-12128
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$ra,-6768($gp)
    lw	$t9,76($a1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,52($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfb12RopLoop__MH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L016d92e0
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x7
    beqz	$a4,.L016d9260
    sra	$v1,$t0,0x3
.L016d923c:
    lw	$v0,0($a0)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    nor	$v0,$v0,$zero
    bnez	$a4,.L016d923c
    sw	$v0,-4($a1)
.L016d9260:
    beqz	$v1,.L016d92e0
    nop
    nop
    nop
.L016d9270:
    lw	$t2,0($a0)
    nor	$t2,$t2,$zero
    sw	$t2,0($a1)
    lw	$t1,4($a0)
    nor	$t1,$t1,$zero
    sw	$t1,4($a1)
    lw	$t0,8($a0)
    nor	$t0,$t0,$zero
    sw	$t0,8($a1)
    lw	$a7,12($a0)
    nor	$a7,$a7,$zero
    sw	$a7,12($a1)
    lw	$a6,16($a0)
    nor	$a6,$a6,$zero
    sw	$a6,16($a1)
    lw	$a5,20($a0)
    nor	$a5,$a5,$zero
    sw	$a5,20($a1)
    lw	$a4,24($a0)
    nor	$a4,$a4,$zero
    sw	$a4,24($a1)
    lw	$a3,28($a0)
    addiu	$a1,$a1,32
    sltu	$a4,$a1,$a2
    addiu	$a0,$a0,32
    nor	$a3,$a3,$zero
    bnez	$a4,.L016d9270
    sw	$a3,-4($a1)
.L016d92e0:
    jr	$ra
    nop

glabel nfbStereoDrawCID__EJ
    move	$a7,$s8
    addiu	$sp,$sp,-160
    lui	$a6,0x6
    addiu	$a6,$a6,5840
    addiu	$s8,$sp,160
    sd	$gp,-120($s8)
    addu	$gp,$t9,$a6
    lw	$a5,-5736($gp)
    lw	$a4,132($a0)
    sd	$a7,-112($s8)
    sll	$a5,$a5,0x2
    sd	$s6,-88($s8)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    sd	$s0,-104($s8)
    lw	$at,52($a4)
    lw	$s0,16($a0)
    move	$s6,$a1
    sd	$s2,-96($s8)
    lw	$s2,116($s0)
    beqz	$at,.L016d94d4
    li	$a5,1
    la	$a1,rrmScreenPrivateIndex
    sh	$zero,-48($s8)
    lh	$a3,8($s0)
    sh	$a3,-44($s8)
    lw	$t0,220($s2)
    lw	$a1,0($a1)
    sd	$s4,-128($s8)
    beq	$a5,$t0,.L016d9524
    sll	$a1,$a1,0x2
    sh	$zero,-46($s8)
    lhu	$a6,224($s2)
    sh	$a6,-42($s8)
    lw	$a5,436($s0)
    addu	$a5,$a5,$a1
    lw	$a5,0($a5)
    lw	$a5,8($a5)
    beqz	$a5,.L016d955c
    lhu	$s4,226($s2)
    lw	$a1,52($a4)
.L016d9394:
    sw	$a1,56($a4)
.L016d9398:
    sd	$a0,-80($s8)
    sd	$a2,-72($s8)
    sd	$s1,-144($s8)
    sd	$ra,-152($s8)
.L016d93a8:
    li	$a7,0x10
    lw	$t9,340($s0)
    move	$a2,$zero
    subu	$sp,$sp,$a7
    move	$a1,$zero
    move	$s1,$sp
    sd	$s3,-136($s8)
    jalr	$t9
    move	$a0,$sp
    lw	$t9,340($s0)
    move	$a2,$zero
    addiu	$a1,$s8,-48
    addiu	$s3,$s8,-64
    jalr	$t9
    move	$a0,$s3
    lw	$t9,356($s0)
    move	$a0,$s1
    move	$a1,$s6
    jalr	$t9
    move	$a2,$s3
    la	$t1,rrmScreenPrivateIndex
    lw	$t1,0($t1)
    lw	$t0,436($s0)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    lw	$t0,8($t0)
    beqz	$t0,.L016d94b0
    nop
    lw	$t9,344($s0)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    lw	$t9,376($s0)
    move	$a0,$s3
    move	$a1,$zero
    jalr	$t9
    move	$a2,$s4
    lw	$t9,360($s0)
    move	$a0,$s1
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s3
.L016d9454:
    ld	$s4,-128($s8)
.L016d9458:
    lw	$t9,248($s2)
    ld	$s6,-88($s8)
    ld	$a0,-80($s8)
    move	$a1,$s1
    jalr	$t9
    ld	$a2,-72($s8)
    lw	$t9,352($s0)
    jalr	$t9
    move	$a0,$s3
    lw	$t9,352($s0)
    ld	$s2,-96($s8)
    ld	$s3,-136($s8)
    jalr	$t9
    move	$a0,$s1
    ld	$s1,-144($s8)
    ld	$s0,-104($s8)
    ld	$ra,-152($s8)
    ld	$t2,-112($s8)
    ld	$gp,-120($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t2
.L016d94b0:
    beqz	$s4,.L016d9454
    nop
    lw	$t9,376($s0)
    move	$a0,$s1
    move	$a1,$zero
    jalr	$t9
    move	$a2,$s4
    b	.L016d9458
    ld	$s4,-128($s8)
.L016d94d4:
    sh	$zero,-48($s8)
    lh	$t8,8($s0)
    sh	$t8,-44($s8)
    lw	$t3,220($s2)
    li	$at,2
    beq	$a5,$t3,.L016d9578
    sd	$s4,-128($s8)
    sh	$zero,-46($s8)
    lhu	$v0,224($s2)
    sh	$v0,-42($s8)
    lw	$t9,56($a4)
    beq	$t9,$at,.L016d95b4
    lhu	$s4,226($s2)
    move	$s4,$zero
.L016d950c:
    sw	$a5,56($a4)
.L016d9510:
    sd	$a0,-80($s8)
    sd	$a2,-72($s8)
    sd	$s1,-144($s8)
    b	.L016d93a8
    sd	$ra,-152($s8)
.L016d9524:
    lh	$a6,226($s2)
    sh	$a6,-46($s8)
    lhu	$a7,226($s2)
    lhu	$a3,224($s2)
    addu	$a3,$a3,$a7
    sh	$a3,-42($s8)
    lw	$v1,436($s0)
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    lw	$v1,8($v1)
    beqz	$v1,.L016d9598
    negu	$s4,$a6
    b	.L016d9394
    lw	$a1,52($a4)
.L016d955c:
    lw	$a1,52($a4)
    beqz	$a2,.L016d95bc
    li	$a5,2
    beq	$a1,$a5,.L016d95d0
    move	$s4,$zero
    b	.L016d9398
    sw	$a1,56($a4)
.L016d9578:
    lhu	$t2,226($s2)
    sh	$t2,-46($s8)
    lhu	$t1,226($s2)
    lhu	$t0,224($s2)
    move	$s4,$zero
    addu	$t0,$t0,$t1
    b	.L016d950c
    sh	$t0,-42($s8)
.L016d9598:
    beqz	$a2,.L016d95d8
    lw	$a1,52($a4)
    xor	$t3,$a1,$a5
    move	$t8,$s4
    move	$s4,$zero
    b	.L016d9394
    movz	$s4,$t8,$t3
.L016d95b4:
    b	.L016d9510
    sw	$a5,56($a4)
.L016d95bc:
    lw	$t9,56($a4)
    beq	$t9,$a5,.L016d95f0
    nop
    b	.L016d9394
    move	$s4,$zero
.L016d95d0:
    b	.L016d9394
    lhu	$s4,226($s2)
.L016d95d8:
    lw	$at,56($a4)
    xor	$at,$at,$a5
    move	$v0,$s4
    move	$s4,$zero
    b	.L016d9394
    movz	$s4,$v0,$at
.L016d95f0:
    b	.L016d9394
    lhu	$s4,226($s2)

glabel nfbPutPlane__PG
    addiu	$sp,$sp,-320
    sd	$a3,176($sp)
    sd	$a5,168($sp)
    sd	$ra,248($sp)
    sd	$s7,208($sp)
    sd	$s1,216($sp)
    sd	$s8,256($sp)
    sd	$s5,240($sp)
    lw	$t9,0($a1)
    lw	$t8,-6768($gp)
    sd	$s2,200($sp)
    lw	$s2,76($a1)
    sd	$s3,224($sp)
    sll	$t8,$t8,0x2
    lw	$t9,396($t9)
    addu	$s2,$s2,$t8
    move	$s3,$a1
    lw	$s2,0($s2)
    move	$s5,$a2
    move	$s8,$a4
    sd	$s4,232($sp)
    move	$s1,$a6
    move	$s4,$a0
    lw	$a0,8($s2)
    move	$s7,$a7
    jalr	$t9
    sd	$a0,192($sp)
    lh	$a1,6($v0)
    lw	$t2,-5736($gp)
    ld	$a7,192($sp)
    lh	$a0,2($v0)
    lw	$a7,8($a7)
    lh	$a4,4($v0)
    lh	$a2,0($v0)
    sd	$s6,160($sp)
    beqz	$a7,.L016d98b4
    addiu	$t3,$a7,8
    lw	$t8,4($a7)
    li	$ra,1
    beq	$t8,$ra,.L016d98b4
    nop
    lbu	$a5,72($s2)
    lw	$s6,132($s4)
    lh	$t0,0($s8)
    sll	$at,$t2,0x2
    lh	$t1,4($s8)
    sd	$s0,144($sp)
    addu	$s6,$s6,$at
    slt	$t9,$t0,$a2
    lh	$a6,2($s8)
    movn	$t0,$a2,$t9
    slt	$t9,$a4,$t1
    lw	$s6,0($s6)
    movn	$t1,$a4,$t9
    sd	$t0,264($sp)
    addiu	$t9,$s5,-1
    slt	$t0,$t0,$t1
    sd	$t1,272($sp)
    sllv	$a2,$ra,$t9
    move	$s0,$a6
    beqz	$t0,.L016d9884
    lw	$s6,0($s6)
    lh	$t1,6($s8)
    slt	$t2,$a6,$a0
    movn	$s0,$a0,$t2
    slt	$t2,$a1,$t1
    movn	$t1,$a1,$t2
    sd	$t1,288($sp)
    slt	$t1,$s0,$t1
    beqz	$t1,.L016d9884
    nop
    lh	$a0,14($a7)
    move	$t1,$t3
    move	$t2,$zero
    beqz	$s5,.L016d976c
    sd	$a5,152($sp)
    lw	$a4,64($s2)
    sd	$s8,88($sp)
    sw	$a4,16($sp)
    lw	$at,52($s2)
    lw	$a1,76($s2)
    lbu	$a5,48($s2)
    lw	$v0,44($s2)
    lw	$v1,40($s2)
    lw	$a3,68($s2)
    sw	$a3,20($sp)
    sw	$v1,28($sp)
    sw	$v0,32($sp)
    sw	$a5,40($sp)
    sw	$a1,24($sp)
    sw	$at,36($sp)
.L016d976c:
    sd	$s8,88($sp)
    slt	$a6,$a0,$s0
    lw	$s8,20($s3)
    move	$a0,$t8
    beqz	$a6,.L016d9c1c
    ld	$at,288($sp)
    nop
    nop
    nop
.L016d9790:
    lh	$a7,14($t1)
    slt	$a7,$a7,$s0
    addiu	$t1,$t1,8
    addiu	$t2,$t2,1
    beqz	$a7,.L016d97d8
    subu	$a0,$t8,$t2
    lh	$t0,14($t1)
    slt	$t0,$t0,$s0
    addiu	$t1,$t1,8
    addiu	$t2,$t2,1
    beqz	$t0,.L016d97d8
    subu	$a0,$t8,$t2
    lh	$t3,14($t1)
    slt	$t3,$t3,$s0
    addiu	$t1,$t1,8
    bnez	$t3,.L016d9790
    addiu	$t2,$t2,1
    subu	$a0,$t8,$t2
.L016d97d8:
    beqz	$a0,.L016d980c
    sd	$s5,72($sp)
    lh	$t8,2($t1)
    slt	$t8,$t8,$at
    beqz	$t8,.L016d980c
    sd	$s5,72($sp)
    sd	$a0,280($sp)
.L016d97f4:
    lh	$a7,2($t1)
    sd	$a2,80($sp)
    sd	$s1,56($sp)
    move	$s5,$t1
    b	.L016d9cf8
    sd	$s3,64($sp)
.L016d980c:
    ld	$v1,72($sp)
    ld	$s0,144($sp)
    ld	$s1,216($sp)
    beqz	$v1,.L016d9884
    ld	$s6,160($sp)
    ld	$s8,256($sp)
    ld	$s7,208($sp)
    ld	$s5,240($sp)
    ld	$s4,232($sp)
    ld	$s3,224($sp)
    lw	$a0,40($sp)
    lw	$a1,16($sp)
    lw	$a2,20($sp)
    lw	$a3,24($sp)
    lw	$a4,28($sp)
    lw	$a5,32($sp)
    lw	$a6,36($sp)
    ld	$a7,152($sp)
    sb	$a7,72($s2)
    sw	$a6,52($s2)
    sw	$a5,44($s2)
    sw	$a4,40($s2)
    sw	$a3,76($s2)
    sw	$a2,68($s2)
    ld	$ra,248($sp)
    sw	$a1,64($s2)
    sb	$a0,48($s2)
    ld	$s2,200($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L016d9884:
    ld	$s2,200($sp)
.L016d9888:
    ld	$s0,144($sp)
    ld	$s7,208($sp)
    ld	$s1,216($sp)
    ld	$s3,224($sp)
    ld	$s4,232($sp)
    ld	$ra,248($sp)
    ld	$s5,240($sp)
    ld	$s6,160($sp)
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L016d98b4:
    lh	$t2,4($s8)
    sd	$s0,144($sp)
    lh	$t1,6($s8)
    slt	$t8,$a4,$t2
    movn	$t2,$a4,$t8
    sd	$t2,272($sp)
    lh	$t0,0($s8)
    lbu	$t8,72($s2)
    li	$ra,1
    lw	$t9,-5736($gp)
    slt	$t3,$t0,$a2
    move	$at,$t1
    lw	$s6,132($s4)
    movn	$t0,$a2,$t3
    slt	$a7,$a1,$t1
    lh	$t3,2($s8)
    sll	$t9,$t9,0x2
    movn	$at,$a1,$a7
    sd	$t0,264($sp)
    addu	$s6,$s6,$t9
    addiu	$t9,$s5,-1
    lw	$s6,0($s6)
    slt	$t0,$t0,$t2
    sd	$t8,152($sp)
    sllv	$t8,$ra,$t9
    move	$s0,$t3
    slt	$t2,$t3,$a0
    beqz	$t0,.L016d9884
    lw	$s6,0($s6)
    ld	$a1,176($sp)
    ld	$t1,264($sp)
    movn	$s0,$a0,$t2
    sd	$at,288($sp)
    slt	$at,$s0,$at
    ld	$a0,272($sp)
    beqz	$at,.L016d9884
    ld	$v1,288($sp)
    sh	$v1,54($sp)
    sh	$s0,50($sp)
    sh	$t1,48($sp)
    sh	$a0,52($sp)
    lbu	$a0,48($s2)
    lw	$v0,40($s2)
    sd	$v0,120($sp)
    lh	$t3,0($s8)
    lh	$t2,2($s8)
    lw	$at,44($s2)
    sd	$at,136($sp)
    lw	$at,52($s2)
    subu	$t2,$s0,$t2
    sd	$at,128($sp)
    beqz	$s5,.L016d9ca0
    subu	$t1,$t1,$t3
    lw	$s8,20($s3)
    sd	$a0,296($sp)
    sd	$s1,56($sp)
    lw	$a3,76($s2)
    sd	$a3,112($sp)
    lw	$a2,64($s2)
    sd	$a2,96($sp)
    move	$s1,$t8
    sra	$s0,$t1,0x3
    lw	$a2,68($s2)
    addu	$a1,$a1,$t1
    beqz	$t8,.L016d9bac
    sd	$a2,104($sp)
    ld	$t8,56($sp)
    mult	$t2,$t8
    li	$s5,-8
    ld	$t9,168($sp)
    and	$s5,$t1,$s5
    mflo	$t8
    subu	$s5,$a1,$s5
    addu	$t8,$t8,$t9
    b	.L016d9b94
    addu	$s0,$s0,$t8
    nop
    nop
    nop
.L016d99f0:
    sw	$s1,40($s2)
    sw	$s1,52($s2)
    lw	$t9,32($s6)
    move	$a2,$s4
    li	$a1,7
    jalr	$t9
    ld	$a0,64($sp)
    lw	$a7,52($s2)
    lbu	$a6,48($s2)
    lw	$a4,40($s2)
    sw	$s4,4($sp)
    lw	$t9,16($s6)
    move	$a5,$zero
    ld	$a3,56($sp)
    move	$a1,$s3
    ld	$a2,184($sp)
    jalr	$t9
    addiu	$a0,$sp,48
    sra	$s1,$s1,0x1
    beqz	$s1,.L016d9a5c
    addu	$s3,$s7,$s3
.L016d9a44:
    and	$t9,$s1,$s8
    bnez	$t9,.L016d99f0
    nop
    sra	$s1,$s1,0x1
    bnez	$s1,.L016d9a44
    addu	$s3,$s7,$s3
.L016d9a5c:
    ld	$ra,280($sp)
.L016d9a60:
    addiu	$ra,$ra,-1
    ld	$at,288($sp)
    addiu	$s5,$s5,8
    beqz	$ra,.L016d980c
    sd	$ra,280($sp)
    lh	$a7,2($s5)
    slt	$at,$a7,$at
    beqz	$at,.L016d980c
    slt	$a1,$a7,$s0
    ld	$t9,264($sp)
.L016d9a88:
    lh	$a3,4($s5)
    ld	$t8,272($sp)
    lh	$a5,0($s5)
    slt	$a2,$t8,$a3
    ld	$t3,88($sp)
    slt	$a4,$a5,$t9
    movz	$t8,$a3,$a2
    lh	$v1,6($s5)
    movz	$t9,$a5,$a4
    move	$t2,$s0
    ld	$t1,288($sp)
    slt	$a0,$t9,$t8
    ld	$ra,72($sp)
    movz	$t2,$a7,$a1
    ld	$at,56($sp)
    slt	$v0,$t1,$v1
    beqz	$a0,.L016d9a5c
    movz	$t1,$v1,$v0
    slt	$a6,$t2,$t1
    beqz	$a6,.L016d9a5c
    nop
    sh	$t8,52($sp)
    sh	$t9,48($sp)
    sh	$t2,50($sp)
    sh	$t1,54($sp)
    lh	$a7,2($t3)
    lh	$t3,0($t3)
    ld	$t8,80($sp)
    subu	$a7,$t2,$a7
    ld	$t1,176($sp)
    beqz	$ra,.L016d9c40
    subu	$t3,$t9,$t3
    move	$s1,$t8
    sra	$s3,$t3,0x3
    li	$ra,-8
    addu	$t1,$t1,$t3
    beqz	$t8,.L016d9a5c
    ld	$t9,168($sp)
    mult	$a7,$at
    and	$ra,$t3,$ra
    mflo	$t8
    subu	$ra,$t1,$ra
    addu	$t8,$t8,$t9
    sd	$ra,184($sp)
    b	.L016d9a44
    addu	$s3,$s3,$t8
.L016d9b40:
    sw	$s1,40($s2)
    sw	$s1,52($s2)
    lw	$t9,32($s6)
    move	$a2,$s4
    li	$a1,7
    jalr	$t9
    move	$a0,$s3
    lw	$a7,52($s2)
    lbu	$a6,48($s2)
    lw	$a4,40($s2)
    sw	$s4,4($sp)
    lw	$t9,16($s6)
    move	$a5,$zero
    move	$a2,$s5
    move	$a1,$s0
    ld	$a3,56($sp)
    jalr	$t9
    addiu	$a0,$sp,48
    sra	$s1,$s1,0x1
    beqz	$s1,.L016d9bac
    addu	$s0,$s7,$s0
.L016d9b94:
    and	$at,$s1,$s8
    bnez	$at,.L016d9b40
    nop
    sra	$s1,$s1,0x1
    bnez	$s1,.L016d9b94
    addu	$s0,$s7,$s0
.L016d9bac:
    ld	$s0,144($sp)
    ld	$s1,216($sp)
    ld	$s3,224($sp)
    ld	$s4,232($sp)
    ld	$s5,240($sp)
    ld	$s6,160($sp)
    ld	$s7,208($sp)
    ld	$s8,256($sp)
    ld	$v0,296($sp)
    ld	$v1,128($sp)
    ld	$a0,136($sp)
    ld	$a1,120($sp)
    ld	$a2,152($sp)
    ld	$a3,112($sp)
    ld	$a4,104($sp)
    ld	$a5,96($sp)
    sw	$a5,64($s2)
    sw	$a4,68($s2)
    sw	$a3,76($s2)
    sb	$a2,72($s2)
    sw	$a1,40($s2)
    sw	$a0,44($s2)
    ld	$ra,248($sp)
    sw	$v1,52($s2)
    sb	$v0,48($s2)
    ld	$s2,200($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L016d9c1c:
    beqz	$t8,.L016d980c
    sd	$s5,72($sp)
    ld	$a7,288($sp)
    lh	$a6,2($t3)
    slt	$a6,$a6,$a7
    beqz	$a6,.L016d980c
    move	$t1,$t3
    b	.L016d97f4
    sd	$a0,280($sp)
.L016d9c40:
    sd	$a7,304($sp)
    lw	$a7,52($s2)
    ld	$a3,56($sp)
    ld	$a5,304($sp)
    ld	$a2,176($sp)
    lbu	$a6,48($s2)
    li	$t0,-8
    mult	$a5,$a3
    lw	$a4,40($s2)
    and	$t0,$t3,$t0
    addu	$a2,$a2,$t3
    subu	$a2,$a2,$t0
    ld	$t0,168($sp)
    lw	$a5,44($s2)
    sw	$s4,4($sp)
    lw	$t9,16($s6)
    addiu	$a0,$sp,48
    mflo	$t1
    sra	$a1,$t3,0x3
    addu	$t0,$t0,$t1
    jalr	$t9
    addu	$a1,$a1,$t0
    b	.L016d9a60
    ld	$ra,280($sp)
.L016d9ca0:
    mult	$t2,$s1
    ld	$a7,128($sp)
    ld	$a2,176($sp)
    sw	$s4,4($sp)
    li	$t0,-8
    lw	$t9,16($s6)
    and	$t0,$t1,$t0
    addu	$a2,$a2,$t1
    move	$a3,$s1
    subu	$a2,$a2,$t0
    ld	$t0,168($sp)
    ld	$a6,152($sp)
    addiu	$a0,$sp,48
    mflo	$t2
    ld	$a5,136($sp)
    sra	$a1,$t1,0x3
    addu	$t0,$t0,$t2
    ld	$a4,120($sp)
    jalr	$t9
    addu	$a1,$a1,$t0
    b	.L016d9888
    ld	$s2,200($sp)
.L016d9cf8:
    slt	$a1,$a7,$s0
    b	.L016d9a88
    ld	$t9,264($sp)

glabel nfbShmPutXYImage__KJ
    addiu	$sp,$sp,-176
    sd	$a2,88($sp)
    sd	$a3,80($sp)
    sd	$a4,48($sp)
    sd	$a5,56($sp)
    sd	$a6,32($sp)
    sd	$a7,40($sp)
    move	$at,$a0
    sd	$a1,16($sp)
    lw	$a1,16($at)
    lw	$t9,-28060($gp)
    sd	$ra,96($sp)
    sd	$a0,64($sp)
    move	$a0,$a2
    jalr	$t9
    sd	$s0,24($sp)
    ld	$ra,96($sp)
    bnez	$v0,.L016d9e58
    move	$s0,$v0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L016d9e58:
    ld	$a0,64($sp)
    lw	$a0,16($a0)
    lw	$t9,236($a0)
    ld	$a3,88($sp)
    lw	$a2,188($sp)
    jalr	$t9
    lw	$a1,180($sp)
    beqz	$v0,.L016d9f50
    sd	$v0,72($sp)
    lw	$t9,-28064($gp)
    ld	$a0,72($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$v0,80($sp)
    li	$at,1
    ld	$a6,56($sp)
    xor	$v0,$at,$v0
    ld	$a5,48($sp)
    li	$v1,2
    sltiu	$v0,$v0,1
    movz	$at,$v1,$v0
    sw	$at,4($sp)
    lw	$ra,212($sp)
    sw	$ra,12($sp)
    lw	$t9,72($s0)
    ld	$a4,40($sp)
    lw	$t9,8($t9)
    move	$a7,$zero
    ld	$a3,32($sp)
    ld	$a2,88($sp)
    move	$a1,$s0
    negu	$a4,$a4
    ld	$a0,72($sp)
    jalr	$t9
    negu	$a3,$a3
    lw	$t9,-28124($gp)
    jalr	$t9
    move	$a0,$s0
    ld	$v0,64($sp)
    lw	$a6,188($sp)
    lw	$a5,180($sp)
    lw	$a7,196($sp)
    ld	$v1,80($sp)
    ld	$a2,16($sp)
    lw	$t3,204($sp)
    beqz	$v1,.L016d9f68
    lw	$t2,72($a2)
    sw	$t3,4($sp)
    lw	$t9,12($t2)
    move	$a1,$v0
    move	$a3,$zero
    ld	$a0,72($sp)
    jalr	$t9
    move	$a4,$zero
    ld	$t9,72($sp)
.L016d9f34:
    move	$a0,$t9
    lw	$t9,16($t9)
    lw	$t9,240($t9)
    ld	$s0,24($sp)
    ld	$ra,96($sp)
    jr	$t9
    addiu	$sp,$sp,176
.L016d9f50:
    lw	$t9,-28124($gp)
    ld	$ra,96($sp)
    move	$a0,$s0
    ld	$s0,24($sp)
    jr	$t9
    addiu	$sp,$sp,176
.L016d9f68:
    li	$ra,1
    sw	$ra,12($sp)
    sw	$t3,4($sp)
    lw	$t9,16($t2)
    move	$a1,$v0
    move	$a3,$zero
    ld	$a0,72($sp)
    jalr	$t9
    move	$a4,$zero
    b	.L016d9f34
    ld	$t9,72($sp)

glabel nfbInfPutImage__HK
    addiu	$sp,$sp,-144
    sd	$ra,64($sp)
    lui	$at,0x6
    sd	$s1,32($sp)
    addiu	$at,$at,-5184
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    lw	$t8,-6768($gp)
    lw	$s1,76($a1)
    sd	$s0,40($sp)
    sll	$t8,$t8,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$t8
    move	$t2,$a2
    lw	$s1,0($s1)
    move	$t1,$a3
    move	$s0,$a0
    sd	$s2,48($sp)
    move	$s2,$a1
    bnez	$at,.L016dbfa8
    lw	$t3,8($s1)
    li	$t8,1
    lbu	$v1,2($a0)
    lw	$v0,24($s1)
    sllv	$v1,$t8,$v1
    and	$v0,$v0,$v1
    beqz	$v0,.L016dbfa8
    sd	$t3,24($sp)
    sw	$t8,19112($gp)
    sw	$a2,19080($gp)
    sw	$a6,19096($gp)
    lw	$a6,148($sp)
    lw	$t1,156($sp)
    sw	$t1,19108($gp)
    sw	$a6,19104($gp)
    sw	$a3,19084($gp)
    sw	$a7,19100($gp)
    lw	$a7,16($a1)
    lui	$t0,0x20
    sw	$a4,19088($gp)
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    sw	$a7,16($a1)
    lw	$a3,32($s1)
    sw	$a5,19092($gp)
    lw	$a5,-5736($gp)
    lw	$a4,132($a0)
    lw	$t9,-29908($gp)
    sll	$a5,$a5,0x2
    lw	$a3,8($a3)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    move	$a2,$a0
    jalr	$t9
    sd	$a4,16($sp)
    lw	$t8,19116($gp)
    ld	$v0,24($sp)
    sw	$v0,8($s1)
    lw	$ra,16($s2)
    lw	$t9,-5736($gp)
    lui	$at,0x20
    or	$ra,$ra,$at
    sw	$ra,16($s2)
    lw	$t3,132($s0)
    sw	$zero,19112($gp)
    sll	$t9,$t9,0x2
    ld	$t2,16($sp)
    addu	$t3,$t3,$t9
    beqz	$t8,.L016dbf8c
    sw	$t2,0($t3)
    lw	$a3,-6768($gp)
    lw	$a2,76($s2)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lw	$a5,24($s2)
    lw	$t9,28($a2)
    sw	$a5,40($a2)
    sw	$a5,64($a2)
    lw	$a4,28($s2)
    sw	$a4,44($a2)
    sw	$a4,68($a2)
    lw	$a3,20($s2)
    sw	$a3,52($a2)
    sw	$a3,76($a2)
    lbu	$v1,5($s2)
    move	$a1,$s0
    sb	$v1,48($a2)
    move	$a0,$s2
    jalr	$t9
    sb	$v1,72($a2)
    sw	$zero,19116($gp)
    ld	$gp,56($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L016dbf8c:
    ld	$s1,32($sp)
.L016dbf90:
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L016dbfa8:
    lw	$at,148($sp)
    sw	$at,4($sp)
    lw	$ra,156($sp)
    sw	$ra,12($sp)
    lw	$t9,32($s1)
    lw	$t9,8($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$t2
    jalr	$t9
    move	$a3,$t1
    b	.L016dbf90
    ld	$s1,32($sp)

glabel nfbStereoPolyline
    lw	$a5,72($a1)
    addiu	$sp,$sp,-96
    sd	$s4,24($sp)
    lw	$s4,16($a0)
    sd	$s0,56($sp)
    sd	$s2,0($sp)
    lui	$s2,0x4
    sd	$s1,72($sp)
    addiu	$s2,$s2,23872
    sd	$gp,64($sp)
    addu	$gp,$t9,$s2
    lw	$s1,-6768($gp)
    lw	$s0,76($a1)
    sd	$s5,32($sp)
    sll	$s1,$s1,0x2
    lw	$s4,116($s4)
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    lhu	$s4,226($s4)
    lw	$s5,8($s0)
    lw	$v1,92($s0)
    sw	$v1,72($a1)
    li	$at,1
    sw	$at,104($s0)
    lw	$v0,16($a0)
    sd	$a5,48($sp)
    lw	$v0,116($v0)
    sd	$s3,8($sp)
    lw	$v0,220($v0)
    move	$s3,$a2
    sd	$s6,16($sp)
    move	$s6,$a4
    sd	$ra,80($sp)
    move	$s2,$a0
    move	$s1,$a1
    sd	$s5,40($sp)
    beq	$at,$v0,.L016f4dc8
    move	$s5,$a3
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    addu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,24($t9)
    jalr	$t9
    nop
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($s2)
    subu	$at,$at,$s4
    sh	$at,10($s2)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    lw	$t9,24($t9)
    move	$a4,$s6
    move	$a3,$s5
    move	$a2,$s3
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s2
    ld	$s2,0($sp)
.L016f4d8c:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s5,32($sp)
    ld	$gp,64($sp)
    ld	$v1,48($sp)
    ld	$a0,40($sp)
    sw	$a0,8($s0)
    sw	$v1,72($s1)
    ld	$ra,80($sp)
    sw	$zero,104($s0)
    ld	$s0,56($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L016f4dc8:
    lw	$v0,96($s0)
    sw	$v0,8($s0)
    lh	$at,10($a0)
    subu	$at,$at,$s4
    sh	$at,10($a0)
    lh	$ra,90($s0)
    subu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($a1)
    lw	$t9,24($t9)
    jalr	$t9
    nop
    lw	$v0,100($s0)
    sw	$v0,8($s0)
    lh	$at,10($s2)
    addu	$at,$at,$s4
    sh	$at,10($s2)
    lh	$ra,90($s0)
    addu	$ra,$ra,$s4
    sh	$ra,90($s0)
    lw	$t9,72($s1)
    lw	$t9,24($t9)
    move	$a4,$s6
    move	$a3,$s5
    move	$a2,$s3
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s2
    b	.L016f4d8c
    ld	$s2,0($sp)

glabel nfbNoopDDACreateScreenResources
    jr	$ra
    li	$v0,1

glabel nfbInfPushPixels__IL
    addiu	$sp,$sp,-16
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,17408
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$ra,-6768($gp)
    lw	$t9,76($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,76($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfbDestroyGC__OJ
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$t8,0x4
    sd	$s1,8($sp)
    addiu	$t8,$t8,16496
    sd	$gp,16($sp)
    addu	$gp,$t9,$t8
    lw	$s1,-6768($gp)
    lw	$s0,76($a0)
    sll	$s1,$s1,0x2
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    lw	$at,0($s0)
    sll	$at,$at,0x19
    sd	$ra,24($sp)
    bltz	$at,.L016f6a38
    move	$s1,$a0
    lw	$a0,4($s0)
.L016f6998:
    beqz	$a0,.L016f69b0
    nop
    lw	$t9,0($s1)
    lw	$t9,240($t9)
    jalr	$t9
    nop
.L016f69b0:
    lw	$a0,96($s0)
    beqz	$a0,.L016f69cc
    nop
    lw	$t9,0($s1)
    lw	$t9,348($t9)
    jalr	$t9
    nop
.L016f69cc:
    lw	$a0,100($s0)
    beqz	$a0,.L016f69e8
    nop
    lw	$t9,0($s1)
    lw	$t9,348($t9)
    jalr	$t9
    nop
.L016f69e8:
    lw	$a0,72($s1)
    lw	$ra,80($a0)
    beqz	$ra,.L016f6a00
    lw	$t9,-28196($gp)
    jalr	$t9
    nop
.L016f6a00:
    lw	$a0,32($s0)
    ld	$s1,8($sp)
    beqz	$a0,.L016f6a24
    lw	$t9,-28196($gp)
    lw	$at,80($a0)
    beqz	$at,.L016f6a28
    ld	$ra,24($sp)
    jalr	$t9
    nop
.L016f6a24:
    ld	$ra,24($sp)
.L016f6a28:
    ld	$s0,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L016f6a38:
    lw	$t9,0($a0)
    lw	$t9,348($t9)
    jalr	$t9
    lw	$a0,8($s0)
    b	.L016f6998
    lw	$a0,4($s0)

glabel nfbCreateStereoGC
    lui	$v1,0x4
    lbu	$a1,4($a0)
    addiu	$sp,$sp,-96
    addiu	$v1,$v1,16240
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    la	$v0,sub_01730000
    move	$a6,$a0
    sltiu	$at,$a1,31
    sll	$v1,$a1,0x2
    addiu	$v0,$v0,-25020
    sd	$ra,56($sp)
    beqz	$at,.L016f6a94
    addu	$v0,$v0,$v1
    lw	$a0,0($v0)
    jr	$a0
    nop
.L016f6a94:
    lw	$t9,-28184($gp)
    la	$a0,_rodata_symbol
    jalr	$t9
    addiu	$a0,$a0,19072
    ld	$ra,56($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
    lw	$a1,24($a6)
    lbu	$a0,5($a6)
    sw	$zero,56($a6)
    addiu	$a7,$gp,-27584
    addiu	$t0,$a7,19880
    addiu	$a7,$a7,19848
    sw	$a7,68($a6)
    sw	$t0,72($a6)
    lw	$a3,16($a6)
    lui	$a4,0xc
    nor	$a4,$a4,$zero
    lw	$a5,19308($gp)
    lw	$a2,76($a6)
    and	$a3,$a3,$a4
    lw	$t9,-29968($gp)
    lui	$a4,0x2
    sll	$a5,$a5,0x2
    or	$a3,$a3,$a4
    sw	$a3,16($a6)
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
    jalr	$t9
    sd	$a2,0($sp)
    la	$t0,mfbSolidWhiteArea
    ld	$gp,16($sp)
    ld	$a7,0($sp)
    ld	$ra,56($sp)
    sb	$v0,0($a7)
    lw	$a6,0($a7)
    sw	$zero,4($a7)
    li	$v0,1
    addiu	$sp,$sp,96
    sw	$t0,12($a7)
    li	$t0,-65
    ori	$a6,$a6,0x80
    and	$a6,$a6,$t0
    jr	$ra
    sw	$a6,0($a7)
    sd	$s0,32($sp)
    sd	$s4,64($sp)
    sw	$zero,56($a6)
    lw	$a1,76($a6)
    addiu	$a5,$gp,-27584
    addiu	$a7,$a5,18232
    addiu	$a5,$a5,18760
    sw	$a5,68($a6)
    lw	$a2,-6768($gp)
    li	$a0,1
    lw	$a3,16($a6)
    lui	$a4,0xc
    sw	$a7,72($a6)
    sll	$a2,$a2,0x2
    nor	$a4,$a4,$zero
    lw	$v1,0($a6)
    and	$a3,$a3,$a4
    lui	$a4,0x2
    addu	$a1,$a1,$a2
    or	$a3,$a3,$a4
    sw	$a3,16($a6)
    li	$a3,28
    li	$a4,0x10
    lw	$a1,0($a1)
    addu	$v0,$zero,$a4
    move	$s4,$a4
    lw	$v1,116($v1)
    sd	$a0,8($sp)
    move	$s0,$a3
    move	$a7,$a1
    addiu	$a6,$a1,4
    addiu	$a0,$a1,12
    lw	$v1,132($v1)
    sd	$s3,24($sp)
    addiu	$t3,$a1,8
    move	$s3,$a0
    sd	$s1,40($sp)
    move	$s1,$v1
    move	$t8,$t3
    sd	$s2,72($sp)
    move	$t1,$a6
    move	$s2,$a0
    addiu	$a2,$v1,4
    addiu	$t9,$v1,12
    sd	$s6,80($sp)
    addiu	$at,$v1,8
    move	$ra,$t9
    ld	$gp,16($sp)
    move	$t2,$at
    move	$t0,$a2
    sd	$s5,48($sp)
    b	.L016f6c6c
    move	$s5,$at
.L016f6c24:
    addu	$a1,$v0,$a7
    lw	$a2,0($a2)
    sw	$a2,0($a5)
    addu	$a2,$v0,$t0
    addu	$a6,$v0,$t1
    lw	$a3,0($a3)
    sw	$a3,0($a4)
    addu	$s5,$v0,$t2
    addu	$t3,$v0,$t8
    lw	$v1,0($v1)
    sw	$v1,0($a0)
    addu	$t9,$v0,$ra
    addiu	$s0,$s0,-4
    addu	$v1,$v0,$s1
    addu	$s2,$v0,$s3
    lw	$at,0($at)
    sw	$at,0($s6)
    addu	$v0,$v0,$s4
.L016f6c6c:
    addu	$a5,$v0,$a7
    lw	$at,0($v1)
    sw	$at,0($a1)
    addu	$a3,$v0,$t0
    addu	$a4,$v0,$t1
    lw	$at,0($a2)
    sw	$at,0($a6)
    addu	$v1,$v0,$t2
    addu	$a0,$v0,$t8
    lw	$at,0($s5)
    sw	$at,0($t3)
    addu	$at,$v0,$ra
    addiu	$s0,$s0,-4
    addu	$a2,$v0,$s1
    addu	$s6,$v0,$s3
    lw	$a1,0($t9)
    sw	$a1,0($s2)
    bgtz	$s0,.L016f6c24
    addu	$v0,$v0,$s4
    ld	$s6,80($sp)
    ld	$s2,72($sp)
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$s1,40($sp)
    ld	$ra,56($sp)
    ld	$s0,32($sp)
    ld	$s3,24($sp)
    ld	$v0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96

glabel nfbUnrealizeWindow
    jr	$ra
    li	$v0,1

glabel nfbInfPolylines__LK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x4
    sd	$s2,32($sp)
    addiu	$t8,$t8,-22432
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$a7,$a2
    move	$a6,$a3
    lw	$s1,0($s1)
    li	$t1,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L017002f0
    lw	$t0,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t1,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L017002f0
    sd	$t0,8($sp)
    sw	$t1,19112($gp)
    sw	$a4,19088($gp)
    sw	$a7,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,24($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L017002d4
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L017002d4:
    ld	$s1,16($sp)
.L017002d8:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L017002f0:
    lw	$t9,32($s1)
    lw	$t9,24($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$a7
    jalr	$t9
    move	$a3,$a6
    b	.L017002d8
    ld	$s1,16($sp)

glabel nfbDoBitBltPS
    addiu	$sp,$sp,-96
    sd	$ra,64($sp)
    sd	$s4,24($sp)
    sd	$s6,16($sp)
    lw	$t8,-5736($gp)
    sd	$s3,8($sp)
    lw	$s3,132($a0)
    sd	$s2,0($sp)
    sll	$t8,$t8,0x2
    sd	$s5,40($sp)
    addu	$s3,$s3,$t8
    lw	$s3,0($s3)
    move	$s5,$a3
    lw	$t0,8($a2)
    move	$s2,$a4
    move	$s6,$a5
    lw	$s3,0($s3)
    move	$s4,$a6
    sd	$s1,32($sp)
    move	$s1,$a0
    addiu	$a0,$t0,8
    beqz	$t0,.L017013ec
    lw	$s3,8($s3)
    lw	$a3,4($t0)
    blez	$a3,.L017013c8
    nop
.L01701328:
    sd	$s0,80($sp)
    lw	$t8,28($a1)
    lw	$t9,32($a1)
    sd	$s7,88($sp)
    sd	$s8,72($sp)
    lbu	$s8,3($a1)
    move	$s0,$a0
    sll	$s7,$a3,0x3
    sd	$t9,56($sp)
    sd	$t8,48($sp)
    addu	$s7,$a0,$s7
    sra	$s8,$s8,0x3
    nop
    lh	$a6,0($s0)
.L01701360:
    lh	$a5,2($s0)
    addu	$a6,$a6,$s5
    mult	$s8,$a6
    ld	$a2,48($sp)
    addu	$a5,$a5,$s2
    mflo	$a1
    nop
    nop
    mult	$a2,$a5
    move	$a0,$s0
    ld	$a3,56($sp)
    move	$t9,$s3
    mflo	$a4
    move	$a5,$s1
    addu	$a3,$a3,$a4
    move	$a4,$s4
    addu	$a1,$a1,$a3
    pref	0x0,256($s0)
    jalr	$t9
    move	$a3,$s6
    addiu	$s0,$s0,8
    bnel	$s0,$s7,.L01701360
    lh	$a6,0($s0)
    ld	$s7,88($sp)
    ld	$s0,80($sp)
    ld	$s8,72($sp)
.L017013c8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$ra,64($sp)
    ld	$s4,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L017013ec:
    sd	$s8,72($sp)
    move	$a0,$a2
    sd	$s0,80($sp)
    li	$a3,1
    b	.L01701328
    sd	$s7,88($sp)

glabel nfbChangeClip__PJ
    addiu	$sp,$sp,-48
    lw	$a5,16($a0)
    li	$a7,1
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s2,8($sp)
    move	$s2,$a2
    srl	$a6,$a5,0x12
    sd	$ra,40($sp)
    lui	$at,0x4
    andi	$a6,$a6,0x3
    sd	$s1,0($sp)
    move	$s1,$a1
    addiu	$at,$at,-29360
    sd	$gp,16($sp)
    beqz	$a6,.L01701cf0
    addu	$gp,$t9,$at
    lw	$a1,0($a0)
    lw	$a0,56($a0)
    beq	$a7,$a6,.L01701dc8
    sd	$a3,32($sp)
    lw	$t9,348($a1)
    jalr	$t9
    nop
    ld	$a3,32($sp)
.L01701cd4:
    lw	$a6,16($s0)
    lui	$a5,0xfff3
    sw	$zero,56($s0)
    ori	$a5,$a5,0xffff
    li	$a7,1
    and	$a5,$a5,$a6
    sw	$a5,16($s0)
.L01701cf0:
    beq	$s1,$a7,.L01701d50
    li	$a6,2
    beq	$s1,$a6,.L01701ddc
    nop
    beqz	$s1,.L01701d80
    move	$a0,$zero
    lw	$t9,0($s0)
    lw	$t9,412($t9)
    move	$a0,$a3
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    lw	$t9,-28196($gp)
    move	$a0,$s2
    jalr	$t9
    sw	$v0,56($s0)
    lw	$a5,16($s0)
.L01701d34:
    beqz	$s1,.L01701d80
    move	$a0,$zero
.L01701d3c:
    lw	$ra,56($s0)
    beqz	$ra,.L01701d7c
    li	$a0,2
    b	.L01701d84
    ld	$s1,0($sp)
.L01701d50:
    lw	$t9,0($s0)
    lw	$t9,408($t9)
    jalr	$t9
    move	$a0,$s2
    lw	$t9,0($s0)
    sw	$v0,56($s0)
    lw	$t9,240($t9)
    jalr	$t9
    move	$a0,$s2
    bnez	$s1,.L01701d3c
    lw	$a5,16($s0)
.L01701d7c:
    move	$a0,$zero
.L01701d80:
    ld	$s1,0($sp)
.L01701d84:
    ld	$s2,8($sp)
    ld	$gp,16($sp)
    lui	$v0,0x8
    lw	$at,60($s0)
    andi	$a0,$a0,0x3
    lui	$v1,0xfff3
    sll	$a0,$a0,0x12
    ld	$ra,40($sp)
    ori	$v1,$v1,0xffff
    or	$at,$at,$v0
    sw	$at,60($s0)
    and	$v1,$v1,$a5
    or	$v1,$v1,$a0
    sw	$v1,16($s0)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L01701dc8:
    lw	$t9,240($a1)
    jalr	$t9
    nop
    b	.L01701cd4
    ld	$a3,32($sp)
.L01701ddc:
    b	.L01701d34
    sw	$s2,56($s0)

glabel nfb7RopLoop__HH
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a5,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L01702210
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$t0,$a5,0x2
    andi	$a4,$t0,0x3
    beqz	$a4,.L017021b4
    sra	$a3,$t0,0x2
.L0170218c:
    lw	$v0,0($a0)
    lw	$v1,0($a1)
    addiu	$a0,$a0,4
    pref	0x1,256($a1)
    addiu	$a4,$a4,-1
    addiu	$a1,$a1,4
    pref	0x0,252($a0)
    or	$v0,$v0,$v1
    bnez	$a4,.L0170218c
    sw	$v0,-4($a1)
.L017021b4:
    beqz	$a3,.L01702210
    nop
    nop
.L017021c0:
    lw	$t8,0($a1)
    lw	$t3,0($a0)
    lw	$t2,4($a1)
    or	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t1,4($a0)
    lw	$t0,8($a1)
    or	$t1,$t1,$t2
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    lw	$a6,12($a1)
    or	$a7,$a7,$t0
    sw	$a7,8($a1)
    lw	$a4,12($a0)
    addiu	$a1,$a1,16
    sltu	$a5,$a1,$a2
    addiu	$a0,$a0,16
    or	$a4,$a4,$a6
    bnez	$a5,.L017021c0
    sw	$a4,-4($a1)
.L01702210:
    jr	$ra
    nop

glabel nfbDoBitBltSP
    addiu	$sp,$sp,-368
    sd	$s5,312($sp)
    sd	$s0,320($sp)
    sd	$s7,328($sp)
    sd	$ra,336($sp)
    sd	$s3,344($sp)
    sd	$s8,352($sp)
    sd	$s2,360($sp)
    sd	$a4,112($sp)
    sd	$a3,104($sp)
    sd	$a1,64($sp)
    lw	$v1,-5736($gp)
    lw	$v0,132($a1)
    sd	$s6,40($sp)
    sll	$v1,$v1,0x2
    sd	$s4,32($sp)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    li	$t2,1
    sd	$s1,24($sp)
    addiu	$t3,$gp,-27584
    move	$s4,$a6
    lw	$v0,0($v0)
    li	$at,5
    addu	$v1,$a5,$t3
    sd	$v1,96($sp)
    li	$s6,-4
    move	$s1,$a5
    lw	$v0,20($v0)
    slti	$a7,$s1,14
    beq	$a5,$at,.L01709354
    sd	$v0,72($sp)
    beqz	$a6,.L01709358
    ld	$s2,360($sp)
    lw	$t1,32($a0)
    lw	$t0,28($a0)
    sd	$t0,136($sp)
    lw	$a5,8($a2)
    lbu	$t8,3($a0)
    sd	$t8,144($sp)
    move	$a0,$zero
    sd	$t1,88($sp)
    li	$t8,32
    beqz	$a5,.L01709384
    ld	$t1,144($sp)
    lw	$t0,4($a5)
    addiu	$a2,$a5,8
.L017088fc:
    subu	$a5,$t8,$t1
    beq	$t8,$t1,.L01708950
    sllv	$t1,$t2,$t1
    ld	$t9,144($sp)
    slti	$t9,$t9,32
    addiu	$a6,$t1,-1
    and	$a6,$s4,$a6
    beqz	$t9,.L01708950
    move	$s4,$a6
.L01708920:
    ld	$t8,144($sp)
    addu	$a0,$a0,$t8
    slt	$ra,$a0,$a5
    sllv	$s4,$s4,$t8
    ld	$t9,144($sp)
    beqz	$ra,.L01708950
    addu	$s4,$a6,$s4
    addu	$a0,$a0,$t9
    slt	$t8,$a0,$a5
    sllv	$s4,$s4,$t9
    bnez	$t8,.L01708920
    addu	$s4,$a6,$s4
.L01708950:
    blez	$t0,.L01709354
    ld	$a6,136($sp)
    sd	$a2,120($sp)
    xori	$a7,$a7,0x1
    sd	$a7,272($sp)
    lw	$v0,0($sp)
    lw	$a0,4($sp)
    slti	$a5,$s1,10
    sll	$t1,$t0,0x3
    xori	$a5,$a5,0x1
    sd	$a5,192($sp)
    addu	$t1,$a2,$t1
    sd	$t1,48($sp)
    sd	$a0,248($sp)
    slti	$v1,$s1,4
    sd	$v0,240($sp)
    slti	$a1,$s1,2
    xori	$v1,$v1,0x1
    sd	$v1,200($sp)
    slti	$a3,$s1,6
    xori	$a1,$a1,0x1
    sd	$a1,160($sp)
    slti	$a4,$s1,12
    xori	$a3,$a3,0x1
    sd	$a3,184($sp)
    xori	$a4,$a4,0x1
    sd	$a4,288($sp)
    sll	$ra,$s1,0x2
    ld	$s7,144($sp)
    sra	$a6,$a6,0x2
    slti	$s8,$s1,8
    la	$at,_rodata_symbol
    xori	$s8,$s8,0x1
    sll	$a6,$a6,0x2
    sd	$a6,296($sp)
    addu	$ra,$ra,$at
    sd	$ra,80($sp)
    sra	$s7,$s7,0x3
    sd	$s7,168($sp)
    b	.L01709398
    nor	$s7,$s4,$zero
    nop
    nop
    nop
.L01708a00:
    li	$s6,-4
.L01708a04:
    ld	$ra,152($sp)
.L01708a08:
    beqz	$ra,.L01708a24
    ld	$at,120($sp)
    lw	$t9,-28196($gp)
    jalr	$t9
    ld	$a0,152($sp)
    li	$s6,-4
    ld	$at,120($sp)
.L01708a24:
    ld	$v0,48($sp)
    addiu	$at,$at,8
    li	$t8,1
    beq	$at,$v0,.L01709354
    sd	$at,120($sp)
    ld	$a0,120($sp)
.L01708a3c:
    lh	$t3,0($a0)
    ld	$s0,104($sp)
    addu	$t3,$t3,$s0
    sh	$t3,8($sp)
    lh	$s2,0($a0)
    lh	$s0,4($a0)
    subu	$s0,$s0,$s2
    addu	$t3,$s0,$t3
    sh	$t3,12($sp)
    lh	$t1,2($a0)
    ld	$t2,112($sp)
    addu	$t1,$t1,$t2
    sh	$t1,10($sp)
    lh	$t2,2($a0)
    lh	$t0,6($a0)
    subu	$t0,$t0,$t2
    sd	$t0,280($sp)
    addu	$t0,$t0,$t1
    sh	$t0,14($sp)
    lh	$a7,0($a0)
    lh	$a5,2($a0)
    ld	$a2,168($sp)
    mult	$a7,$a2
    ld	$a6,136($sp)
    mflo	$a1
    nop
    nop
    mult	$a5,$a6
    ld	$v0,144($sp)
    ld	$at,168($sp)
    ld	$a3,88($sp)
    pref	0x0,256($a0)
    mflo	$a4
    mtc1	$a2,$f5
    ld	$a7,168($sp)
    addu	$a3,$a3,$a4
    ld	$a6,96($sp)
    addu	$a1,$a1,$a3
    ld	$a2,168($sp)
    addiu	$s2,$a1,3
    cvt.d.w	$f1,$f5
    mtc1	$a7,$f5
    lbu	$a5,18352($a6)
    and	$s2,$s6,$s2
    lbu	$a6,18368($a6)
    subu	$v1,$s2,$a1
    li	$a0,1
    ld	$a3,144($sp)
    cvt.d.w	$f3,$f5
    sd	$v1,264($sp)
    move	$s5,$s2
    beqz	$v1,.L01708fdc
    mtc1	$v1,$f4
    cvt.d.w	$f0,$f4
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$t9,$f0
    mult	$t9,$v0
    mflo	$ra
    sd	$t9,128($sp)
    sllv	$t8,$t8,$ra
    teq	$at,$zero,0x7
    addiu	$t8,$t8,-1
    sd	$t8,240($sp)
.L01708b3c:
    mult	$a7,$s0
    mflo	$v1
    addu	$v1,$a1,$v1
    andi	$v1,$v1,0x3
    sd	$v1,208($sp)
    beqz	$v1,.L01708b8c
    mtc1	$v1,$f4
    cvt.d.w	$f2,$f4
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$a4,$f2
    mult	$a3,$a4
    teq	$a2,$zero,0x7
    mflo	$a3
    li	$a2,32
    sllv	$a0,$a0,$a3
    subu	$a2,$a2,$a3
    addiu	$a0,$a0,-1
    sllv	$a0,$a0,$a2
    sd	$a0,248($sp)
.L01708b8c:
    beqz	$a5,.L01708fe4
    ld	$a0,136($sp)
    bnez	$a6,.L01708ba4
    li	$a5,-1
    beq	$a5,$s4,.L0170906c
    sd	$a0,56($sp)
.L01708ba4:
    ld	$a5,208($sp)
    subu	$s3,$a1,$s2
    li	$a4,4
    addiu	$s3,$s3,4
    subu	$a4,$a4,$a5
    andi	$s3,$s3,0x3
    ld	$a3,168($sp)
    addu	$a5,$s3,$s0
    andi	$a4,$a4,0x3
    addu	$a4,$a4,$a5
    mult	$a3,$a4
    ld	$a2,280($sp)
    mflo	$a1
    nop
    nop
    mult	$a1,$a2
    lw	$t9,-28180($gp)
    mflo	$a0
    sd	$a1,56($sp)
    jalr	$t9
    addiu	$a0,$a0,4
    addiu	$a1,$v0,3
    ld	$s5,264($sp)
    and	$a1,$s6,$a1
    addu	$a1,$s3,$a1
    sd	$v0,152($sp)
    addu	$s5,$s5,$a1
.L01708c10:
    ld	$t9,72($sp)
    ld	$a2,56($sp)
    ld	$a3,64($sp)
    addiu	$a0,$sp,8
    jalr	$t9
    sd	$s0,16($sp)
    ld	$s0,16($sp)
    li	$s6,-4
.L01708c30:
    ld	$v0,168($sp)
    ld	$at,280($sp)
    ld	$a4,280($sp)
    li	$a3,-1
    ld	$v1,128($sp)
    li	$ra,3
    beq	$a3,$s4,.L01708ff0
    ld	$a0,128($sp)
    blez	$a4,.L01708a04
    sd	$s0,16($sp)
    ld	$v0,16($sp)
    ld	$at,168($sp)
    subu	$v0,$v0,$v1
    mult	$at,$v0
    ld	$s3,240($sp)
    ld	$ra,248($sp)
    ld	$t9,56($sp)
    nor	$ra,$ra,$zero
    nor	$s3,$s3,$zero
    sra	$t9,$t9,0x2
    sd	$s3,224($sp)
    sll	$t9,$t9,0x2
    mflo	$t8
    sd	$ra,232($sp)
    addiu	$s0,$t8,3
    slt	$s6,$t8,$zero
    sd	$t9,304($sp)
    movz	$s0,$t8,$s6
    li	$a0,3
    ld	$t8,80($sp)
    sra	$s0,$s0,0x2
    li	$ra,14
    sd	$s0,256($sp)
    sll	$s0,$s0,0x2
    move	$s6,$zero
    lw	$t8,18600($t8)
    addu	$s3,$s0,$s5
    sd	$t8,216($sp)
    b	.L01709390
    addu	$s0,$s2,$s0
.L01708cd0:
    lw	$a5,0($s0)
    li	$t0,-1
    and	$a2,$a5,$a6
    xor	$a1,$a1,$s1
    nor	$a2,$a2,$zero
    movz	$t0,$a2,$a1
.L01708ce8:
    move	$a6,$t0
.L01708cec:
    ld	$a2,232($sp)
    ld	$a3,248($sp)
    and	$a7,$s7,$a5
    and	$a4,$a6,$s4
    or	$a4,$a4,$a7
    and	$a3,$a3,$a4
    and	$a2,$a5,$a2
    or	$a2,$a2,$a3
    sw	$a2,0($s0)
.L01708d10:
    ld	$t2,304($sp)
    ld	$t1,280($sp)
    ld	$t0,296($sp)
    li	$ra,14
    addu	$s3,$s3,$t2
    beq	$s6,$t1,.L01708a00
    addu	$s0,$s0,$t0
    ld	$t3,264($sp)
.L01708d30:
    ld	$t9,272($sp)
    ld	$a2,256($sp)
    beqz	$t3,.L01708d9c
    li	$t0,-1
    beq	$a0,$s1,.L01708e1c
    lw	$a6,-4($s5)
    beqz	$s8,.L01708e2c
    ld	$t8,288($sp)
    beqz	$t8,.L01708e9c
    ld	$v0,192($sp)
    beqz	$t9,.L01708ee8
    li	$a3,12
    lw	$a5,-4($s2)
    and	$at,$a5,$a6
    xor	$ra,$ra,$s1
    nor	$at,$at,$zero
    movz	$t0,$at,$ra
.L01708d74:
    move	$a6,$t0
.L01708d78:
    ld	$at,224($sp)
    ld	$v0,240($sp)
    and	$a1,$s7,$a5
    and	$v1,$a6,$s4
    or	$v1,$v1,$a1
    and	$v0,$v0,$v1
    and	$at,$a5,$at
    or	$at,$at,$v0
    sw	$at,-4($s2)
.L01708d9c:
    beqz	$a2,.L01708dc4
    ld	$a5,296($sp)
    ld	$t9,216($sp)
    move	$a0,$s5
    move	$a1,$s2
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s4
    li	$a0,3
    ld	$a5,296($sp)
.L01708dc4:
    ld	$a4,208($sp)
    addiu	$s6,$s6,1
    ld	$a3,304($sp)
    li	$a1,14
    addu	$s2,$s2,$a5
    beqz	$a4,.L01708d10
    addu	$s5,$s5,$a3
    beq	$a0,$s1,.L01708e24
    lw	$a6,0($s3)
    beqz	$s8,.L01708e64
    ld	$t9,200($sp)
    ld	$a7,288($sp)
    beqz	$a7,.L01708ec0
    ld	$t0,272($sp)
    bnez	$t0,.L01708cd0
    li	$t1,12
    lw	$a5,0($s0)
    nor	$t2,$a6,$zero
    xor	$t1,$t1,$s1
    or	$t0,$t2,$a5
    b	.L01708ce8
    movz	$t0,$t2,$t1
.L01708e1c:
    b	.L01708d78
    lw	$a5,-4($s2)
.L01708e24:
    b	.L01708cec
    lw	$a5,0($s0)
.L01708e2c:
    ld	$t2,200($sp)
    nor	$t1,$a6,$zero
    ld	$t3,184($sp)
    beqz	$t2,.L01708f00
    li	$t8,6
    beqz	$t3,.L01708f8c
    lw	$a5,-4($s2)
    xor	$t9,$a5,$a6
    or	$t0,$a5,$a6
    xor	$t8,$t8,$s1
    movz	$t0,$t9,$t8
.L01708e58:
    move	$a6,$t0
    b	.L01708d78
    nop
.L01708e64:
    nor	$t1,$a6,$zero
    ld	$ra,184($sp)
    li	$at,6
    beqz	$t9,.L01708f2c
    ld	$t0,160($sp)
    beqz	$ra,.L01708f94
    lw	$a5,0($s0)
    xor	$v0,$a5,$a6
    or	$t0,$a5,$a6
    xor	$at,$at,$s1
    movz	$t0,$v0,$at
.L01708e90:
    move	$a6,$t0
    b	.L01708cec
    nop
.L01708e9c:
    li	$v1,10
    lw	$a5,-4($s2)
    beqz	$v0,.L01708f54
    xor	$v1,$v1,$s1
    nor	$a1,$a5,$zero
    or	$t0,$a1,$a6
    movz	$t0,$a1,$v1
.L01708eb8:
    b	.L01708d78
    move	$a6,$t0
.L01708ec0:
    ld	$a1,192($sp)
    li	$a2,10
    lw	$a5,0($s0)
    beqz	$a1,.L01708f70
    xor	$a2,$a2,$s1
    nor	$a3,$a5,$zero
    or	$t0,$a3,$a6
    movz	$t0,$a3,$a2
.L01708ee0:
    b	.L01708cec
    move	$a6,$t0
.L01708ee8:
    lw	$a5,-4($s2)
    nor	$a4,$a6,$zero
    xor	$a3,$a3,$s1
    or	$t0,$a4,$a5
    b	.L01708d74
    movz	$t0,$a4,$a3
.L01708f00:
    ld	$a4,160($sp)
    li	$a7,2
    beqz	$a4,.L01708f9c
    move	$t0,$a6
    lw	$a5,-4($s2)
    nor	$t1,$a5,$zero
    xor	$a7,$a7,$s1
    and	$t1,$a6,$t1
    movz	$t0,$t1,$a7
.L01708f24:
    b	.L01708d78
    move	$a6,$t0
.L01708f2c:
    beqz	$t0,.L01708fbc
    li	$t1,2
    lw	$a5,0($s0)
    move	$t0,$a6
    nor	$t2,$a5,$zero
    xor	$t1,$t1,$s1
    and	$t2,$a6,$t2
    movz	$t0,$t2,$t1
.L01708f4c:
    b	.L01708cec
    move	$a6,$t0
.L01708f54:
    nor	$t3,$a5,$a6
    nor	$t0,$a6,$zero
    li	$t2,8
    xor	$t0,$a5,$t0
    xor	$t2,$t2,$s1
    b	.L01708eb8
    movz	$t0,$t3,$t2
.L01708f70:
    nor	$t8,$a5,$a6
    nor	$t0,$a6,$zero
    li	$t3,8
    xor	$t0,$a5,$t0
    xor	$t3,$t3,$s1
    b	.L01708ee0
    movz	$t0,$t8,$t3
.L01708f8c:
    b	.L01708e58
    and	$t0,$a5,$t1
.L01708f94:
    b	.L01708e90
    and	$t0,$a5,$t1
.L01708f9c:
    li	$a0,3
    li	$t8,1
    lw	$a5,-4($s2)
    move	$t0,$zero
    xor	$t8,$t8,$s1
    and	$t9,$a5,$a6
    b	.L01708f24
    movz	$t0,$t9,$t8
.L01708fbc:
    li	$a0,3
    li	$t9,1
    lw	$a5,0($s0)
    move	$t0,$zero
    xor	$t9,$t9,$s1
    and	$ra,$a5,$a6
    b	.L01708f4c
    movz	$t0,$ra,$t9
.L01708fdc:
    b	.L01708b3c
    sd	$zero,128($sp)
.L01708fe4:
    sd	$zero,152($sp)
    b	.L01708c30
    sd	$a0,56($sp)
.L01708ff0:
    beq	$ra,$s1,.L01708a08
    ld	$ra,152($sp)
    ld	$ra,240($sp)
    sd	$s0,16($sp)
    blez	$at,.L01708a04
    nor	$ra,$ra,$zero
    ld	$v1,16($sp)
    subu	$v1,$v1,$a0
    mult	$v0,$v1
    ld	$at,56($sp)
    sra	$at,$at,0x2
    sd	$ra,224($sp)
    sll	$at,$at,0x2
    mflo	$t9
    sd	$at,304($sp)
    addiu	$s3,$t9,3
    slt	$t8,$t9,$zero
    movz	$s3,$t9,$t8
    ld	$t9,248($sp)
    sra	$s3,$s3,0x2
    sd	$s3,256($sp)
    ld	$t8,80($sp)
    nor	$t9,$t9,$zero
    sd	$t9,232($sp)
    sll	$s3,$s3,0x2
    move	$s6,$zero
    lw	$t8,18536($t8)
    addu	$s0,$s2,$s3
    sd	$t8,176($sp)
    b	.L017090cc
    addu	$s3,$s3,$s5
.L0170906c:
    b	.L01708c10
    sd	$zero,152($sp)
    nop
    nop
    nop
.L01709080:
    li	$v0,14
    lw	$a5,0($s0)
    and	$v1,$a5,$a6
    xor	$v0,$v0,$s1
    nor	$v1,$v1,$zero
    movz	$t0,$v1,$v0
.L01709098:
    move	$a6,$t0
.L0170909c:
    ld	$v1,248($sp)
.L017090a0:
    ld	$a0,232($sp)
    and	$a0,$a5,$a0
    and	$v1,$a6,$v1
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
.L017090b4:
    ld	$a2,304($sp)
    ld	$a1,280($sp)
    ld	$a0,296($sp)
    addu	$s3,$s3,$a2
    beq	$s6,$a1,.L01709314
    addu	$s0,$s0,$a0
.L017090cc:
    ld	$a3,264($sp)
    ld	$a5,272($sp)
    ld	$a4,288($sp)
    beqz	$a3,.L01709128
    li	$t0,-1
    beqz	$s8,.L0170919c
    lw	$a6,-4($s5)
    beqz	$a4,.L0170920c
    ld	$a4,192($sp)
    beqz	$a5,.L01709258
    li	$a7,14
    lw	$a5,-4($s2)
    and	$t1,$a5,$a6
    xor	$a7,$a7,$s1
    nor	$t1,$t1,$zero
    movz	$t0,$t1,$a7
.L0170910c:
    move	$a6,$t0
.L01709110:
    ld	$t0,240($sp)
.L01709114:
    ld	$t1,224($sp)
    and	$t1,$a5,$t1
    and	$t0,$a6,$t0
    or	$t0,$t0,$t1
    sw	$t0,-4($s2)
.L01709128:
    ld	$t1,256($sp)
    beqz	$t1,.L0170914c
    ld	$t8,296($sp)
    ld	$t9,176($sp)
    move	$a0,$s5
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s0
    ld	$t8,296($sp)
.L0170914c:
    ld	$t3,208($sp)
    addiu	$s6,$s6,1
    ld	$t2,304($sp)
    li	$t0,-1
    addu	$s2,$s2,$t8
    beqz	$t3,.L017090b4
    addu	$s5,$s5,$t2
    beqz	$s8,.L017091d4
    lw	$a6,0($s3)
    ld	$t9,288($sp)
    beqz	$t9,.L01709230
    ld	$ra,272($sp)
    bnez	$ra,.L01709080
    li	$at,12
    lw	$a5,0($s0)
    nor	$v0,$a6,$zero
    xor	$at,$at,$s1
    or	$t0,$v0,$a5
    b	.L01709098
    movz	$t0,$v0,$at
.L0170919c:
    ld	$v0,200($sp)
    li	$a0,6
    ld	$v1,184($sp)
    beqz	$v0,.L01709274
    nor	$t1,$a6,$zero
    beqz	$v1,.L017092cc
    lw	$a5,-4($s2)
    xor	$a1,$a5,$a6
    or	$t0,$a5,$a6
    xor	$a0,$a0,$s1
    movz	$t0,$a1,$a0
.L017091c8:
    move	$a6,$t0
.L017091cc:
    b	.L01709114
    ld	$t0,240($sp)
.L017091d4:
    ld	$a1,200($sp)
    li	$a3,6
    ld	$a2,184($sp)
    beqz	$a1,.L017092a0
    nor	$t1,$a6,$zero
    beqz	$a2,.L017092d4
    lw	$a5,0($s0)
    xor	$a4,$a5,$a6
    or	$t0,$a5,$a6
    xor	$a3,$a3,$s1
    movz	$t0,$a4,$a3
.L01709200:
    move	$a6,$t0
.L01709204:
    b	.L017090a0
    ld	$v1,248($sp)
.L0170920c:
    li	$a7,10
    lw	$a5,-4($s2)
    beqz	$a4,.L017092dc
    xor	$a7,$a7,$s1
    nor	$t1,$a5,$zero
    or	$t0,$t1,$a6
    movz	$t0,$t1,$a7
.L01709228:
    b	.L01709110
    move	$a6,$t0
.L01709230:
    ld	$t0,192($sp)
    li	$t1,10
    lw	$a5,0($s0)
    beqz	$t0,.L017092f8
    xor	$t1,$t1,$s1
    nor	$t2,$a5,$zero
    or	$t0,$t2,$a6
    movz	$t0,$t2,$t1
.L01709250:
    b	.L0170909c
    move	$a6,$t0
.L01709258:
    li	$t2,12
    lw	$a5,-4($s2)
    nor	$t3,$a6,$zero
    xor	$t2,$t2,$s1
    or	$t0,$t3,$a5
    b	.L0170910c
    movz	$t0,$t3,$t2
.L01709274:
    ld	$t3,160($sp)
    li	$t8,2
    beqz	$t3,.L0170931c
    move	$t0,$a6
    lw	$a5,-4($s2)
    nor	$t9,$a5,$zero
    xor	$t8,$t8,$s1
    and	$t9,$a6,$t9
    movz	$t0,$t9,$t8
.L01709298:
    b	.L017091cc
    move	$a6,$t0
.L017092a0:
    ld	$t9,160($sp)
    li	$ra,2
    beqz	$t9,.L01709338
    move	$t0,$a6
    lw	$a5,0($s0)
    nor	$at,$a5,$zero
    xor	$ra,$ra,$s1
    and	$at,$a6,$at
    movz	$t0,$at,$ra
.L017092c4:
    b	.L01709204
    move	$a6,$t0
.L017092cc:
    b	.L017091c8
    and	$t0,$a5,$t1
.L017092d4:
    b	.L01709200
    and	$t0,$a5,$t1
.L017092dc:
    nor	$v0,$a5,$a6
    nor	$t0,$a6,$zero
    li	$at,8
    xor	$t0,$a5,$t0
    xor	$at,$at,$s1
    b	.L01709228
    movz	$t0,$v0,$at
.L017092f8:
    nor	$v1,$a5,$a6
    nor	$t0,$a6,$zero
    li	$v0,8
    xor	$t0,$a5,$t0
    xor	$v0,$v0,$s1
    b	.L01709250
    movz	$t0,$v1,$v0
.L01709314:
    b	.L01708a04
    li	$s6,-4
.L0170931c:
    li	$v1,1
    lw	$a5,-4($s2)
    move	$t0,$zero
    xor	$v1,$v1,$s1
    and	$a0,$a5,$a6
    b	.L01709298
    movz	$t0,$a0,$v1
.L01709338:
    li	$a0,1
    lw	$a5,0($s0)
    move	$t0,$zero
    xor	$a0,$a0,$s1
    and	$a1,$a5,$a6
    b	.L017092c4
    movz	$t0,$a1,$a0
.L01709354:
    ld	$s2,360($sp)
.L01709358:
    ld	$s8,352($sp)
    ld	$s3,344($sp)
    ld	$s7,328($sp)
    ld	$s0,320($sp)
    ld	$s5,312($sp)
    ld	$ra,336($sp)
    ld	$s1,24($sp)
    ld	$s4,32($sp)
    ld	$s6,40($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L01709384:
    b	.L017088fc
    li	$t0,1
    nop
.L01709390:
    b	.L01708d30
    ld	$t3,264($sp)
.L01709398:
    li	$t8,1
    b	.L01708a3c
    ld	$a0,120($sp)

glabel nfbDoBitBltSS
    lw	$t0,-5736($gp)
    addiu	$sp,$sp,-96
    sd	$s8,88($sp)
    sd	$s7,64($sp)
    sd	$s0,72($sp)
    sd	$s6,24($sp)
    sd	$s3,32($sp)
    sd	$s4,16($sp)
    sd	$s2,40($sp)
    move	$s2,$a0
    lw	$a7,8($a1)
    move	$s4,$a2
    move	$s3,$a3
    sd	$s5,8($sp)
    move	$s5,$a4
    move	$s6,$a5
    sd	$ra,56($sp)
    sd	$s1,80($sp)
    beqz	$a7,.L017094b0
    addiu	$s1,$a7,8
    lw	$s8,4($a7)
    beqz	$s8,.L01709480
    move	$s0,$s1
    lw	$s7,132($s2)
    sll	$t8,$t0,0x2
    addu	$s7,$s7,$t8
    lw	$s7,0($s7)
    li	$t8,1
    lw	$s7,0($s7)
    beq	$s8,$t8,.L01709440
    lw	$s7,0($s7)
    bltz	$a3,.L01709580
    move	$s0,$s1
    bltz	$a2,.L017094d4
    nop
    nop
.L01709440:
    lh	$ra,0($s0)
    addu	$ra,$ra,$s4
    sh	$ra,4($sp)
    lh	$t9,2($s0)
    move	$a0,$s0
    addiu	$a1,$sp,4
    addu	$t9,$t9,$s3
    sh	$t9,6($sp)
    move	$t9,$s7
    move	$a2,$s5
    move	$a3,$s6
    jalr	$t9
    move	$a4,$s2
    addiu	$s8,$s8,-1
    bnez	$s8,.L01709440
    addiu	$s0,$s0,8
.L01709480:
    ld	$s8,88($sp)
.L01709484:
    ld	$s1,80($sp)
    ld	$s0,72($sp)
    ld	$s7,64($sp)
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$ra,56($sp)
    ld	$s4,16($sp)
    ld	$s5,8($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L017094b0:
    lw	$s7,132($a0)
    sll	$t8,$t0,0x2
    addu	$s7,$s7,$t8
    lw	$s7,0($s7)
    lw	$s7,0($s7)
    li	$s8,1
    move	$s0,$a1
    b	.L01709440
    lw	$s7,0($s7)
.L017094d4:
    blez	$a3,.L01709630
    lw	$t9,0($sp)
    b	.L01709508
    sd	$t9,48($sp)
    nop
    nop
    nop
.L017094f0:
    lh	$at,2($s1)
    lh	$ra,10($s0)
    move	$a0,$s0
    addiu	$a1,$s0,8
    bne	$ra,$at,.L01709574
    move	$s0,$a1
.L01709508:
    addiu	$s8,$s8,-1
    bnez	$s8,.L017094f0
    nop
    nop
    nop
.L0170951c:
    lh	$v1,0($s0)
.L01709520:
    move	$a0,$s0
    addiu	$a1,$sp,4
    addu	$v1,$v1,$s4
    sh	$v1,4($sp)
    move	$a2,$s5
    move	$t9,$s7
    lh	$v0,2($s0)
    move	$a3,$s6
    move	$a4,$s2
    addu	$v0,$v0,$s3
    jalr	$t9
    sh	$v0,6($sp)
    addiu	$s0,$s0,-8
    sltu	$a0,$s0,$s1
    beqzl	$a0,.L01709520
    lh	$v1,0($s0)
    ld	$s0,48($sp)
    bnez	$s8,.L01709508
    move	$s1,$s0
    b	.L01709484
    ld	$s8,88($sp)
.L01709574:
    move	$s0,$a0
    b	.L0170951c
    sd	$a1,48($sp)
.L01709580:
    sll	$s0,$s8,0x3
    lw	$t8,0($sp)
    addu	$s0,$s1,$s0
    sd	$t8,48($sp)
    blez	$a2,.L01709640
    addiu	$s0,$s0,-8
    nop
    nop
.L017095a0:
    move	$s1,$s0
    nop
    nop
    nop
.L017095b0:
    addiu	$s8,$s8,-1
    move	$a1,$s0
    beqz	$s8,.L017095dc
    addiu	$a0,$s0,-8
    lh	$t9,2($s1)
    lh	$t8,-6($s0)
    beq	$t8,$t9,.L017095b0
    move	$s0,$a0
    move	$s0,$a1
    sd	$a0,48($sp)
    nop
.L017095dc:
    lh	$v0,0($s0)
.L017095e0:
    move	$a0,$s0
    addiu	$a1,$sp,4
    addu	$v0,$v0,$s4
    sh	$v0,4($sp)
    move	$a2,$s5
    move	$t9,$s7
    lh	$at,2($s0)
    move	$a3,$s6
    move	$a4,$s2
    addu	$at,$at,$s3
    jalr	$t9
    sh	$at,6($sp)
    addiu	$s0,$s0,8
    sltu	$v1,$s1,$s0
    beqzl	$v1,.L017095e0
    lh	$v0,0($s0)
    bnez	$s8,.L017095a0
    ld	$s0,48($sp)
    b	.L01709484
    ld	$s8,88($sp)
.L01709630:
    sll	$s0,$s8,0x3
    addu	$s0,$s1,$s0
    addiu	$s0,$s0,-8
    nop
.L01709640:
    lh	$t9,0($s0)
    move	$a0,$s0
    addiu	$a1,$sp,4
    addu	$t9,$t9,$s4
    sh	$t9,4($sp)
    move	$a2,$s5
    move	$t9,$s7
    lh	$t8,2($s0)
    move	$a3,$s6
    move	$a4,$s2
    addu	$t8,$t8,$s3
    jalr	$t9
    sh	$t8,6($sp)
    addiu	$s8,$s8,-1
    bnez	$s8,.L01709640
    addiu	$s0,$s0,-8
    b	.L01709484
    ld	$s8,88($sp)

glabel nfbInitHWCmapArrays
    addiu	$sp,$sp,-224
    move	$at,$s8
    addiu	$s8,$sp,224
    sd	$at,-104($s8)
    sd	$ra,-88($s8)
    sd	$s1,-80($s8)
    move	$s1,$a0
    blez	$a0,.L0170f93c
    sd	$s0,-96($s8)
    move	$s0,$zero
    andi	$a2,$a0,0x3
    addiu	$a1,$gp,-27584
    sll	$v0,$a0,0x5
    addu	$v0,$v0,$a1
    beqz	$a2,.L0170edf8
    sd	$v0,-120($s8)
.L0170ede0:
    lw	$v1,1008($a1)
    addiu	$a2,$a2,-1
    addiu	$a1,$a1,32
    pref	0x0,1232($a1)
    bnez	$a2,.L0170ede0
    addu	$s0,$v1,$s0
.L0170edf8:
    sra	$a2,$s1,0x2
    beqz	$a2,.L0170ef78
    slti	$a0,$a2,4
    bnez	$a0,.L0170f970
    move	$a2,$s0
    lw	$a4,1040($a1)
    lw	$at,1008($a1)
    lw	$t8,1264($a1)
    lw	$t2,1360($a1)
    lw	$t3,1200($a1)
    lw	$a0,1168($a1)
    lw	$v1,1136($a1)
    lw	$t1,1232($a1)
    ld	$a6,-120($s8)
    lw	$v0,1072($a1)
    addiu	$a3,$a1,384
    addiu	$a2,$a1,256
    lw	$t0,1104($a1)
    addiu	$a7,$a1,128
    addiu	$a6,$a6,-384
    pref	0x0,1264($a1)
    addu	$at,$at,$s0
    move	$a1,$a4
    nop
    nop
    nop
.L0170ee60:
    addu	$at,$a1,$at
    lw	$a1,1040($a2)
    addu	$at,$v0,$at
    lw	$v0,1072($a2)
    pref	0x0,1264($a3)
    addiu	$a5,$a3,128
    addu	$at,$t0,$at
    lw	$a4,1104($a3)
    addu	$at,$v1,$at
    beq	$a7,$a6,.L0170f6a4
    lw	$v1,1008($a3)
    addu	$at,$a0,$at
    lw	$a0,1040($a3)
    addu	$at,$t3,$at
    lw	$t3,1072($a3)
    pref	0x0,1264($a5)
    addiu	$a7,$a3,256
    addu	$at,$t1,$at
    lw	$t0,1232($a3)
    addu	$at,$t8,$at
    beq	$a2,$a6,.L0170f728
    lw	$t8,1136($a3)
    addu	$at,$a1,$at
    lw	$a1,1168($a3)
    addu	$at,$v0,$at
    lw	$v0,1200($a3)
    pref	0x0,1264($a7)
    addiu	$a2,$a3,384
    addu	$at,$t2,$at
    lw	$t1,1360($a3)
    addu	$at,$v1,$at
    beq	$a3,$a6,.L0170f6e8
    lw	$v1,1264($a3)
    addu	$at,$a0,$at
    lw	$a0,1296($a3)
    addu	$at,$t3,$at
    lw	$t3,1328($a3)
    pref	0x0,1264($a2)
    addiu	$a3,$a3,512
    addu	$at,$a4,$at
    lw	$t2,1104($a2)
    addu	$at,$t8,$at
    bne	$a5,$a6,.L0170ee60
    lw	$t8,1008($a2)
    move	$a7,$at
    move	$ra,$t8
    move	$t8,$v1
    move	$t9,$a2
    move	$a2,$a1
    move	$a4,$v0
    move	$v0,$a0
    sd	$v0,-152($s8)
    move	$a3,$t2
    move	$t2,$t0
    move	$t0,$a3
    move	$a1,$a4
    ld	$a4,-152($s8)
.L0170ef44:
    lw	$at,1040($t9)
    lw	$s0,1072($t9)
    addu	$v0,$a2,$a7
    addu	$v0,$a1,$v0
    addu	$v0,$t2,$v0
    addu	$v0,$t8,$v0
    addu	$v0,$a4,$v0
    addu	$v0,$t3,$v0
    addu	$v0,$t1,$v0
    addu	$v0,$ra,$v0
    addu	$at,$at,$v0
    addu	$s0,$s0,$at
    addu	$s0,$t0,$s0
.L0170ef78:
    sll	$a0,$s0,0x3
    lw	$t9,-28180($gp)
    subu	$a0,$a0,$s0
    sw	$s0,-5724($gp)
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,-72($s8)
    bnez	$v0,.L0170efbc
    sw	$v0,-5720($gp)
    ld	$s0,-96($s8)
    ld	$ra,-88($s8)
    ld	$a1,-104($s8)
    move	$v0,$zero
    ld	$s1,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0170efbc:
    lw	$t9,-28180($gp)
    sll	$a0,$s1,0x2
    subu	$a0,$a0,$s1
    jalr	$t9
    sll	$a0,$a0,0x3
    move	$a2,$v0
    beqz	$v0,.L0170f944
    sw	$v0,-5728($gp)
    sll	$a3,$s1,0x2
    subu	$a3,$a3,$s1
    sll	$a3,$a3,0x2
    sd	$zero,-136($s8)
    li	$a4,-16
    addiu	$a3,$a3,15
    sd	$s5,-208($s8)
    and	$a3,$a3,$a4
    subu	$sp,$sp,$a3
    blez	$s1,.L0170f4b8
    sd	$sp,-128($s8)
    sd	$s2,-200($s8)
    ld	$s2,-128($s8)
    sd	$zero,-144($s8)
    sd	$s3,-192($s8)
    sd	$s7,-176($s8)
    move	$s7,$zero
    sd	$s6,-184($s8)
    move	$s6,$v0
    move	$s5,$zero
    sd	$s0,-112($s8)
    sd	$s4,-64($s8)
    addiu	$s4,$gp,-27584
    sll	$a4,$s1,0x5
    addu	$a4,$a4,$s4
    b	.L0170f16c
    sd	$a4,-120($s8)
    nop
    nop
.L0170f050:
    move	$t1,$v1
    move	$t2,$a2
    move	$ra,$at
    mov.d	$f3,$f2
    move	$t8,$t9
    move	$t9,$a4
    move	$a4,$a0
    move	$s0,$v0
    mov.d	$f2,$f0
.L0170f074:
    lw	$v1,1020($s0)
    sw	$t8,0($t1)
    trunc.w.d	$f4,$f2
    subu	$a0,$t3,$ra
    sw	$a0,4($t1)
    sw	$zero,28($a1)
    mfc1	$a0,$f4
    sw	$s1,36($a1)
    sw	$zero,32($a1)
    mult	$a0,$s3
    sw	$zero,40($a1)
    sw	$t2,44($a1)
    sw	$zero,48($a1)
    addiu	$v0,$gp,-27584
    addu	$v0,$s7,$v0
    addu	$v1,$v1,$a4
    sw	$v1,52($a1)
    lw	$v0,1020($v0)
    trunc.w.d	$f1,$f3
    addiu	$a0,$t8,1
    sw	$a0,8($t1)
    mflo	$a2
    mfc1	$at,$f1
    subu	$a2,$a5,$a2
    sw	$a2,12($t1)
    sw	$zero,56($a1)
    sw	$s1,64($a1)
    mult	$at,$s3
    sw	$zero,60($a1)
    sw	$zero,68($a1)
    addiu	$t0,$t2,1
    sw	$t0,72($a1)
    teq	$s3,$zero,0x7
    sw	$zero,76($a1)
    teq	$s3,$zero,0x7
    addu	$v0,$v0,$v1
    sw	$v0,80($a1)
    addiu	$a7,$t8,2
    sw	$a7,16($t1)
    mflo	$a6
    teq	$s3,$zero,0x7
    subu	$a6,$t9,$a6
    sw	$a6,20($t1)
.L0170f120:
    sw	$zero,8($s6)
    lw	$a3,1024($s4)
    lw	$a6,1028($s4)
    lw	$a7,1032($s4)
    sw	$a7,20($s6)
    addiu	$s7,$s7,32
    ld	$a5,-136($s8)
    addiu	$s6,$s6,24
    addiu	$s4,$s4,32
    ld	$a2,-120($s8)
    sw	$a6,-8($s6)
    move	$a1,$s3
    slt	$a4,$s3,$zero
    sw	$a3,-12($s6)
    movn	$a1,$zero,$a4
    addiu	$a5,$a5,1
    sd	$a5,-136($s8)
    beq	$s4,$a2,.L0170f4d8
    addu	$s5,$s5,$a1
.L0170f16c:
    la	$s1,Xalloc
    lw	$s0,1016($s4)
    move	$t9,$s1
    lw	$a0,1008($s4)
    sw	$a0,0($s6)
    jalr	$t9
    sll	$a0,$a0,0x3
    sw	$v0,4($s6)
    move	$a2,$v0
    move	$t2,$zero
    ld	$a1,-144($s8)
    beqz	$v0,.L0170f75c
    li	$a5,0x3
    lw	$s1,1036($s4)
    lw	$s3,1008($s4)
    sll	$a4,$s5,0x3
    lw	$a7,-5720($gp)
    beqz	$s1,.L0170f22c
    slti	$a6,$s3,4
    blez	$a1,.L0170f4a8
    ld	$a3,-144($s8)
    ld	$a1,-128($s8)
    nop
    nop
    nop
.L0170f1d0:
    lw	$a3,0($a1)
    beq	$a3,$s1,.L0170f1f8
    addiu	$a1,$a1,12
    beq	$a1,$s2,.L0170f1f8
    addiu	$t2,$t2,1
    lw	$t0,0($a1)
    beq	$t0,$s1,.L0170f1f8
    addiu	$a1,$a1,12
    bne	$a1,$s2,.L0170f1d0
    addiu	$t2,$t2,1
.L0170f1f8:
    ld	$t1,-144($s8)
    bne	$t2,$t1,.L0170f22c
    ld	$t3,-128($s8)
.L0170f204:
    sll	$t8,$t2,0x2
    subu	$t8,$t8,$t2
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    sw	$zero,8($t3)
    ld	$t8,-144($s8)
    sw	$s1,0($t3)
    addiu	$s2,$s2,12
    addiu	$t8,$t8,1
    sd	$t8,-144($s8)
.L0170f22c:
    blez	$s3,.L0170f120
    addiu	$a3,$gp,-27584
    move	$t0,$s5
    subu	$a1,$a4,$s5
    lw	$t2,1012($s4)
    sll	$a1,$a1,0x2
    li	$t3,1
    addu	$a1,$a7,$a1
    bnez	$a6,.L0170f9a4
    addu	$t8,$s3,$t2
    mtc1	$s3,$f4
    move	$a4,$t3
    mtc1	$a4,$f5
    cvt.d.w	$f4,$f4
    cvt.d.w	$f5,$f5
    div.d	$f5,$f5,$f4
    mtc1	$a5,$f0
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f4
    trunc.w.d	$f5,$f5
    sw	$zero,20($a1)
    mfc1	$ra,$f5
    sw	$zero,12($a1)
    sw	$zero,4($a1)
    li	$t3,0x2
    mult	$ra,$s3
    move	$a7,$s1
    sw	$s1,8($a1)
    mtc1	$t3,$f3
    move	$t1,$s7
    move	$a6,$s3
    sw	$zero,0($a1)
    addiu	$t9,$t8,-3
    move	$t8,$s5
    sd	$s0,-216($s8)
    addu	$v0,$s7,$a3
    move	$t0,$a3
    sw	$t2,16($a1)
    cvt.d.w	$f3,$f3
    addiu	$s0,$t2,1
    move	$t2,$t9
    ld	$a0,-216($s8)
    move	$a3,$s0
    sw	$a0,24($a1)
    div.d	$f3,$f3,$f4
    mflo	$at
    nop
    nop
    trunc.w.d	$f1,$f3
.L0170f2f0:
    addiu	$v1,$a2,8
    addiu	$a1,$a1,28
    lw	$v0,1020($v0)
    subu	$at,$a4,$at
    sw	$at,4($a2)
    mfc1	$at,$f1
    addiu	$t9,$t8,1
    sw	$t8,0($a2)
    mtc1	$a6,$f2
    addiu	$a4,$a5,1
    addu	$a0,$v0,$a0
    sw	$a0,24($a1)
    mult	$at,$a6
    sw	$zero,20($a1)
    mtc1	$a4,$f1
    sw	$a3,16($a1)
    sw	$zero,12($a1)
    cvt.d.w	$f2,$f2
    sw	$zero,4($a1)
    cvt.d.w	$f1,$f1
    addiu	$a2,$a3,1
    sw	$a7,8($a1)
    addu	$v0,$t1,$t0
    teq	$a6,$zero,0x7
    sw	$zero,0($a1)
    div.d	$f2,$f1,$f2
    mflo	$at
    beq	$a3,$t2,.L0170f050
    trunc.w.d	$f1,$f0
    addiu	$a3,$v1,8
    addiu	$a1,$a1,28
    lw	$v0,1020($v0)
    subu	$at,$t3,$at
    sw	$at,4($v1)
    mfc1	$at,$f1
    addiu	$ra,$t8,2
    sw	$t9,0($v1)
    mtc1	$a6,$f1
    addiu	$t3,$a5,2
    addu	$a0,$v0,$a0
    sw	$a0,24($a1)
    mult	$at,$a6
    sw	$zero,20($a1)
    mtc1	$t3,$f0
    sw	$a2,16($a1)
    sw	$zero,12($a1)
    cvt.d.w	$f1,$f1
    sw	$zero,4($a1)
    cvt.d.w	$f0,$f0
    addiu	$v1,$a2,1
    sw	$a7,8($a1)
    addu	$v0,$t1,$t0
    teq	$a6,$zero,0x7
    sw	$zero,0($a1)
    div.d	$f3,$f0,$f1
    mflo	$at
    beq	$a2,$t2,.L0170f47c
    trunc.w.d	$f0,$f2
    addiu	$a2,$a3,8
    addiu	$a1,$a1,28
    lw	$v0,1020($v0)
    subu	$at,$a5,$at
    sw	$at,4($a3)
    mfc1	$at,$f0
    addiu	$t8,$t8,3
    sw	$ra,0($a3)
    mtc1	$a6,$f0
    addiu	$a5,$a5,3
    addu	$a0,$v0,$a0
    sw	$a0,24($a1)
    mult	$at,$a6
    sw	$zero,20($a1)
    mtc1	$a5,$f1
    sw	$v1,16($a1)
    sw	$zero,12($a1)
    cvt.d.w	$f0,$f0
    sw	$zero,4($a1)
    cvt.d.w	$f1,$f1
    addiu	$a3,$v1,1
    sw	$a7,8($a1)
    addu	$v0,$t1,$t0
    teq	$a6,$zero,0x7
    sw	$zero,0($a1)
    div.d	$f0,$f1,$f0
    mflo	$at
    bne	$v1,$t2,.L0170f2f0
    trunc.w.d	$f1,$f3
    move	$t1,$a2
    move	$t2,$a3
    move	$ra,$at
    move	$t9,$a5
    move	$a5,$t3
    mov.d	$f6,$f0
    move	$t3,$a4
    move	$a4,$a0
    mov.d	$f2,$f3
    move	$s0,$v0
    b	.L0170f074
    mov.d	$f3,$f6
.L0170f47c:
    move	$t1,$a3
    move	$t2,$v1
    move	$t8,$ra
    move	$ra,$at
    move	$a2,$a5
    move	$a5,$a4
    move	$a4,$a0
    move	$s0,$v0
    move	$t9,$t3
    b	.L0170f074
    move	$t3,$a2
.L0170f4a8:
    bnez	$a3,.L0170f22c
    nop
    b	.L0170f204
    ld	$t3,-128($s8)
.L0170f4b8:
    sd	$zero,-144($s8)
    sd	$s4,-64($s8)
    sd	$s7,-176($s8)
    sd	$s3,-192($s8)
    sd	$s6,-184($s8)
    sd	$s2,-200($s8)
    move	$s5,$zero
    sd	$s0,-112($s8)
.L0170f4d8:
    sll	$a5,$s5,0x2
    ld	$a4,-144($s8)
    li	$a6,-16
    addiu	$a5,$a5,15
    and	$a5,$a5,$a6
    subu	$sp,$sp,$a5
    blez	$a4,.L0170f800
    move	$s1,$sp
    ld	$s4,-144($s8)
    ld	$t8,-128($s8)
    sll	$s3,$s4,0x2
    li	$s2,-1
    subu	$s3,$s3,$s4
    move	$s4,$t8
    sll	$s3,$s3,0x2
    b	.L0170fa4c
    addu	$s3,$s3,$t8
.L0170f51c:
    move	$s0,$zero
.L0170f520:
    lw	$t9,-28180($gp)
    sll	$s6,$s0,0x2
    jalr	$t9
    move	$a0,$s6
    beqz	$v0,.L0170f8d4
    move	$s5,$v0
    lw	$t9,-27752($gp)
    move	$a0,$v0
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s6
    addiu	$s4,$s4,12
    sw	$s0,-4($s4)
    move	$s0,$zero
    beq	$s4,$s3,.L0170f800
    sw	$s5,-8($s4)
    lw	$t0,0($s4)
.L0170f564:
    lw	$a2,0($t0)
    beq	$a2,$s2,.L0170f51c
    lw	$t8,-5728($gp)
    b	.L0170f5a8
    sll	$a6,$a2,0x2
    nop
    nop
.L0170f580:
    move	$a4,$v1
    move	$a5,$at
.L0170f588:
    sw	$a5,12($a4)
.L0170f58c:
    lw	$a2,4($t0)
    move	$t9,$a7
    addiu	$t0,$t0,4
    movn	$t9,$zero,$t1
    beq	$a2,$s2,.L0170f520
    addu	$s0,$s0,$t9
    sll	$a6,$a2,0x2
.L0170f5a8:
    subu	$a6,$a6,$a2
    sll	$a6,$a6,0x3
    addu	$a6,$t8,$a6
    lw	$a7,0($a6)
    sra	$a3,$a7,0x2
    lw	$a6,4($a6)
    blez	$a7,.L0170f58c
    slt	$t1,$a7,$zero
    andi	$a2,$a7,0x3
    slti	$a4,$a3,2
    sll	$t2,$a7,0x3
    sll	$a1,$s0,0x2
    addu	$t2,$t2,$a6
    beqz	$a2,.L0170f5fc
    addu	$a1,$s1,$a1
.L0170f5e4:
    addiu	$a2,$a2,-1
    addiu	$a1,$a1,4
    lw	$t3,0($a6)
    addiu	$a6,$a6,8
    bnez	$a2,.L0170f5e4
    sw	$t3,-4($a1)
.L0170f5fc:
    addiu	$t3,$t2,-32
    beqz	$a3,.L0170f58c
    nop
    bnez	$a4,.L0170fa28
    move	$a0,$a6
    lw	$at,0($a6)
    sw	$at,0($a1)
    lw	$ra,8($a6)
    sw	$ra,4($a1)
    lw	$t9,16($a6)
    sw	$t9,8($a1)
    move	$v0,$t3
    addiu	$v1,$a1,16
    lw	$at,24($a6)
    nop
    nop
    nop
.L0170f640:
    sw	$at,12($a1)
    addiu	$a0,$a0,32
    lw	$at,0($a0)
    sw	$at,0($v1)
    lw	$at,8($a0)
    sw	$at,4($v1)
    lw	$at,16($a0)
    sw	$at,8($v1)
    addiu	$a1,$v1,16
    beq	$a0,$v0,.L0170f580
    lw	$at,24($a0)
    sw	$at,12($v1)
    addiu	$a0,$a0,32
    lw	$at,0($a0)
    sw	$at,16($v1)
    lw	$at,8($a0)
    sw	$at,20($v1)
    lw	$at,16($a0)
    sw	$at,24($v1)
    addiu	$v1,$v1,32
    bne	$a0,$v0,.L0170f640
    lw	$at,24($a0)
    move	$a4,$a1
    b	.L0170f588
    move	$a5,$at
.L0170f6a4:
    move	$ra,$v1
    move	$t9,$a3
    move	$a3,$t2
    move	$t2,$t1
    move	$a5,$t3
    move	$t3,$v0
    move	$v0,$at
    sd	$v0,-168($s8)
    move	$t0,$a4
    move	$a2,$a0
    sd	$a2,-160($s8)
    move	$a4,$a1
    move	$a1,$a5
    ld	$a7,-168($s8)
    move	$t1,$a3
    b	.L0170ef44
    ld	$a2,-160($s8)
.L0170f6e8:
    move	$t9,$a7
    move	$a7,$at
    move	$ra,$v1
    move	$a2,$t1
    move	$t1,$t0
    move	$t2,$a4
    move	$a4,$a1
    move	$a3,$v0
    move	$a5,$t3
    move	$a6,$a0
    sd	$a6,-160($s8)
    move	$a1,$a5
    move	$t3,$a3
    move	$t0,$a2
    b	.L0170ef44
    ld	$a2,-160($s8)
.L0170f728:
    move	$t9,$a5
    move	$t1,$a4
    move	$a6,$at
    sd	$a6,-168($s8)
    move	$a4,$a0
    move	$a7,$a1
    sd	$a7,-160($s8)
    move	$ra,$t8
    move	$t8,$v1
    ld	$a7,-168($s8)
    move	$a1,$v0
    b	.L0170ef44
    ld	$a2,-160($s8)
.L0170f75c:
    ld	$v1,-136($s8)
    blez	$v1,.L0170f7ac
    lw	$t8,-5728($gp)
    ld	$t9,-136($s8)
    sll	$s2,$t9,0x2
    subu	$s2,$s2,$t9
    sll	$s2,$s2,0x3
    la	$s1,Xfree
    move	$s0,$t8
    addu	$s2,$s2,$t8
    nop
    nop
    nop
.L0170f790:
    move	$t9,$s1
    pref	0x0,260($s0)
    jalr	$t9
    lw	$a0,4($s0)
    addiu	$s0,$s0,24
    bne	$s0,$s2,.L0170f790
    lw	$t8,-5728($gp)
.L0170f7ac:
    ld	$s0,-96($s8)
    ld	$s5,-208($s8)
    ld	$s2,-200($s8)
    la	$s1,Xfree
    ld	$s3,-192($s8)
    ld	$s6,-184($s8)
    move	$t9,$s1
    ld	$s7,-176($s8)
    ld	$s4,-64($s8)
    jalr	$t9
    move	$a0,$t8
    move	$t9,$s1
    jalr	$t9
    lw	$a0,-5720($gp)
    ld	$ra,-88($s8)
    ld	$at,-104($s8)
    move	$v0,$zero
    ld	$s1,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0170f800:
    ld	$v0,-112($s8)
    blez	$v0,.L0170f8a0
    ld	$s0,-96($s8)
    ld	$t8,-144($s8)
    lw	$a3,-5720($gp)
    ld	$a4,-72($s8)
    sll	$s3,$t8,0x2
    subu	$s3,$s3,$t8
    ld	$t8,-128($s8)
    addu	$a4,$a4,$a3
    sll	$s3,$s3,0x2
    b	.L0170fa58
    addu	$s3,$s3,$t8
    nop
    nop
    nop
.L0170f840:
    blez	$a5,.L0170f864
    nop
    nop
    lw	$a6,0($a1)
.L0170f850:
    beq	$a6,$a2,.L0170f888
    nop
    addiu	$a1,$a1,12
    bnel	$a1,$s3,.L0170f850
    lw	$a6,0($a1)
.L0170f864:
    addiu	$a3,$a3,28
    ld	$a5,-144($s8)
    beq	$a3,$a4,.L0170f89c
    ld	$a1,-128($s8)
    lw	$a2,8($a3)
.L0170f878:
    bnez	$a2,.L0170f840
    pref	0x1,260($a3)
    b	.L0170f864
    sw	$zero,4($a3)
.L0170f888:
    lw	$a7,4($a1)
    lw	$t0,8($a1)
    sw	$t0,4($a3)
    b	.L0170f864
    sw	$a7,8($a3)
.L0170f89c:
    ld	$s0,-96($s8)
.L0170f8a0:
    ld	$s5,-208($s8)
    ld	$s2,-200($s8)
    ld	$s3,-192($s8)
    ld	$s6,-184($s8)
    ld	$s7,-176($s8)
    ld	$s4,-64($s8)
    ld	$ra,-88($s8)
    ld	$t1,-104($s8)
    li	$v0,1
    ld	$s1,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L0170f8d4:
    move	$s0,$zero
    la	$s1,Xfree
    nop
.L0170f8e0:
    lw	$t2,8($s4)
    beqz	$t2,.L0170f8fc
    ld	$t3,-144($s8)
    move	$t9,$s1
    jalr	$t9
    lw	$a0,4($s4)
    ld	$t3,-144($s8)
.L0170f8fc:
    addiu	$s0,$s0,1
    bne	$s0,$t3,.L0170f8e0
    ld	$s5,-208($s8)
    ld	$s2,-200($s8)
    ld	$s3,-192($s8)
    ld	$s6,-184($s8)
    ld	$s7,-176($s8)
    ld	$s0,-96($s8)
    ld	$s1,-80($s8)
    ld	$ra,-88($s8)
    ld	$t8,-104($s8)
    li	$v0,1
    ld	$s4,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t8
.L0170f93c:
    b	.L0170ef78
    move	$s0,$zero
.L0170f944:
    lw	$t9,-28196($gp)
    jalr	$t9
    lw	$a0,-5720($gp)
    ld	$s0,-96($s8)
    ld	$ra,-88($s8)
    ld	$t9,-104($s8)
    move	$v0,$zero
    ld	$s1,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t9
.L0170f970:
    lw	$a5,1008($a1)
    lw	$a3,1040($a1)
    lw	$a4,1072($a1)
    lw	$ra,1104($a1)
    addu	$a2,$a5,$a2
    addu	$a2,$a3,$a2
    ld	$a3,-120($s8)
    addiu	$a1,$a1,128
    addu	$a2,$a4,$a2
    bne	$a1,$a3,.L0170f970
    addu	$a2,$ra,$a2
    b	.L0170ef78
    move	$s0,$a2
.L0170f9a4:
    mtc1	$s3,$f8
    mtc1	$t3,$f7
    cvt.d.w	$f8,$f8
    cvt.d.w	$f7,$f7
    div.d	$f7,$f7,$f8
    addiu	$a1,$a1,28
    trunc.w.d	$f7,$f7
    sw	$s0,-4($a1)
    sw	$zero,-8($a1)
    mfc1	$t1,$f7
    sw	$zero,-16($a1)
    sw	$zero,-24($a1)
    mult	$t1,$s3
    sw	$s1,-20($a1)
    sw	$zero,-28($a1)
    sw	$t2,-12($a1)
    addiu	$a7,$gp,-27584
    sw	$t0,0($a2)
    addiu	$t0,$t0,1
    addu	$a7,$s7,$a7
    addiu	$a2,$a2,8
    teq	$s3,$zero,0x7
    lw	$a7,1020($a7)
    addiu	$t2,$t2,1
    mflo	$a6
    addu	$s0,$a7,$s0
    sd	$s0,-216($s8)
    subu	$a6,$t3,$a6
    addiu	$t3,$t3,1
    beq	$t2,$t8,.L0170f120
    sw	$a6,-4($a2)
    b	.L0170f9a4
    ld	$s0,-216($s8)
.L0170fa28:
    lw	$ra,0($a6)
    sw	$ra,0($a1)
    lw	$t9,8($a6)
    sw	$t9,4($a1)
    lw	$t3,16($a6)
    sw	$t3,8($a1)
    lw	$t2,24($a6)
    b	.L0170f58c
    sw	$t2,12($a1)
.L0170fa4c:
    move	$s0,$zero
    b	.L0170f564
    lw	$t0,0($s4)
.L0170fa58:
    ld	$a1,-128($s8)
    ld	$a5,-144($s8)
    b	.L0170f878
    lw	$a2,8($a3)

glabel nfb1MaskRopLoop__BI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0170fe40
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0170fdb4
    sra	$t9,$t0,0x2
.L0170fd80:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    and	$t8,$t8,$t3
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0170fd80
    sw	$t3,-4($a1)
.L0170fdb4:
    beqz	$t9,.L0170fe40
    nop
    nop
.L0170fdc0:
    lw	$t1,0($a1)
    lw	$t2,0($a0)
    and	$t2,$t2,$t1
    lw	$a7,4($a1)
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    and	$t0,$t0,$a7
    lw	$a4,8($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    and	$a6,$a6,$a4
    lw	$at,12($a1)
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    sltu	$v0,$a1,$a2
    and	$v1,$v1,$at
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L0170fdc0
    sw	$at,-4($a1)
.L0170fe40:
    jr	$ra
    nop

glabel nfbUninstallHWColormap
    lw	$t1,12($a0)
    lw	$t8,0($a0)
    lw	$t1,116($t1)
    lw	$t8,0($t8)
    lw	$at,80($t1)
    addiu	$sp,$sp,-64
    subu	$t8,$t8,$at
    sd	$s1,24($sp)
    sll	$s1,$t8,0x2
    lw	$t3,88($t1)
    addu	$s1,$s1,$t8
    sll	$s1,$s1,0x2
    addu	$t3,$t3,$s1
    lw	$t3,4($t3)
    sd	$s0,48($sp)
    lw	$v0,68($a0)
    sll	$t2,$t3,0x2
    lw	$t0,124($t1)
    lui	$at,0x3
    subu	$t2,$t2,$t3
    sd	$ra,56($sp)
    addiu	$at,$at,-21776
    sll	$t2,$t2,0x3
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    addu	$t0,$t0,$t2
    move	$s1,$a0
    beqz	$v0,.L017101f4
    lw	$a7,4($t0)
    lw	$s0,0($v0)
    bltz	$s0,.L017101f4
    move	$v0,$a7
    lw	$a6,0($t0)
    move	$a3,$zero
    sll	$a0,$a6,0x3
    lw	$t2,8($t0)
    blez	$a6,.L0171021c
    addu	$a5,$a0,$a7
    nop
    nop
.L0170ff70:
    lw	$t3,0($v0)
    addiu	$v0,$v0,8
    beq	$t3,$s0,.L0171020c
    sltu	$a4,$v0,$a5
    bnez	$a4,.L0170ff70
    addiu	$a3,$a3,1
    blez	$a6,.L0171021c
    lw	$a3,0($sp)
    sll	$a0,$a6,0x3
    move	$a4,$zero
.L0170ff98:
    move	$v0,$a7
    addu	$a5,$a0,$a7
.L0170ffa0:
    lw	$t8,4($v0)
    addiu	$v0,$v0,8
    beq	$t8,$a3,.L01710214
    sltu	$a6,$v0,$a5
    bnez	$a6,.L0170ffa0
    addiu	$a4,$a4,1
.L0170ffb8:
    lw	$a4,4($sp)
    sll	$a6,$a4,0x3
.L0170ffc0:
    sll	$v0,$a3,0x3
    addu	$a5,$a7,$a6
    bne	$t2,$a3,.L0170ffd8
    addu	$v0,$a7,$v0
    lw	$v1,4($v0)
    sw	$v1,8($t0)
.L0170ffd8:
    lw	$t2,4($v0)
    sw	$t2,4($a5)
    lw	$a2,8($t0)
    sll	$a2,$a2,0x3
    addu	$a2,$a7,$a2
    lw	$a2,4($a2)
    sw	$a2,4($v0)
    lw	$a1,8($t0)
    sll	$a1,$a1,0x3
    addu	$a1,$a7,$a1
    sw	$a3,4($a1)
    lw	$a0,12($s1)
    lw	$a1,8($s1)
    lw	$a0,28($a0)
    beq	$a1,$a0,.L017101f4
    sd	$t1,40($sp)
    lw	$t9,-27920($gp)
    jalr	$t9
    li	$a1,6
    la	$a3,rrmScreenPrivateIndex
    lw	$a5,12($s1)
    lw	$a3,0($a3)
    lw	$a4,436($a5)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    sll	$t8,$s0,0x3
    lw	$t3,48($a3)
    subu	$t8,$t8,$s0
    sd	$v0,8($sp)
    sll	$t8,$t8,0x2
    beqz	$t3,.L017100a8
    sd	$t8,16($sp)
    lw	$t0,116($a5)
    ld	$a5,16($sp)
    lw	$t0,116($t0)
    addu	$t0,$t0,$a5
    lw	$t0,16($t0)
    sll	$a7,$t0,0x3
    addu	$a7,$a7,$t0
    sll	$a7,$a7,0x2
    addu	$a7,$a3,$a7
    lhu	$a6,168($a7)
    li	$t0,-3
    and	$a6,$a6,$t0
    sh	$a6,168($a7)
    lw	$a4,12($s1)
    lw	$a4,116($a4)
    lw	$a4,116($a4)
    addu	$a4,$a4,$a5
    sw	$zero,20($a4)
    lw	$a5,12($s1)
.L017100a8:
    lw	$t3,116($a5)
    ld	$t8,16($sp)
    lw	$t3,116($t3)
    lw	$t9,-28388($gp)
    addu	$t3,$t3,$t8
    sw	$zero,0($t3)
    lw	$t2,68($s1)
    la	$a1,TellLostMap
    li	$t1,-1
    sw	$t1,0($t2)
    addiu	$a2,$s1,8
    jalr	$t9
    lw	$a0,12($s1)
    ld	$v0,40($sp)
    lw	$at,0($s1)
    lw	$a4,80($v0)
    lw	$at,0($at)
    subu	$at,$at,$a4
    sll	$ra,$at,0x2
    lw	$a5,88($v0)
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    addu	$ra,$a5,$ra
    lw	$ra,4($ra)
    sll	$t9,$ra,0x2
    lw	$a3,124($v0)
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    addu	$t9,$a3,$t9
    lw	$t9,20($t9)
    beqz	$t9,.L01710144
    ld	$t1,8($sp)
    jalr	$t9
    move	$a0,$s1
    ld	$v0,40($sp)
    lw	$a4,80($v0)
    lw	$a5,88($v0)
    lw	$a3,124($v0)
    ld	$t1,8($sp)
.L01710144:
    lw	$t1,0($t1)
    lw	$t1,0($t1)
    subu	$t1,$t1,$a4
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$t0,$a5,$t0
    lw	$t0,4($t0)
    sll	$a7,$t0,0x2
    subu	$a7,$a7,$t0
    sll	$a7,$a7,0x3
    ld	$t1,16($sp)
    addu	$a7,$a3,$a7
    lw	$a6,0($a7)
    lw	$t0,116($v0)
    addu	$t0,$t0,$t1
    lw	$a7,4($a7)
    blez	$a6,.L017101f4
    sll	$a6,$a6,0x3
    addu	$t1,$a6,$a7
    lw	$a5,0($a7)
.L01710198:
    beq	$a5,$s0,.L017101e4
    addiu	$a7,$a7,8
    lw	$a4,4($t0)
    lw	$a3,8($t0)
    blez	$a4,.L017101d4
    sll	$a4,$a4,0x2
    addu	$a6,$a3,$a4
    nop
    nop
    lw	$t2,0($a3)
.L017101c0:
    addiu	$a3,$a3,4
    beq	$t2,$a5,.L017101e4
    sltu	$a4,$a3,$a6
    bnezl	$a4,.L017101c0
    lw	$t2,0($a3)
.L017101d4:
    bnel	$a7,$t1,.L01710198
    lw	$a5,0($a7)
    b	.L017101f8
    ld	$ra,56($sp)
.L017101e4:
    lw	$t9,12($s1)
    lw	$t9,316($t9)
    jalr	$t9
    ld	$a0,8($sp)
.L017101f4:
    ld	$ra,56($sp)
.L017101f8:
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0171020c:
    b	.L0170ff98
    move	$a4,$zero
.L01710214:
    b	.L0170ffc0
    sll	$a6,$a4,0x3
.L0171021c:
    b	.L0170ffb8
    lw	$a3,0($sp)

glabel nfb3MaskRopLoop__DI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L01710410
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L01710394
    sra	$t8,$t0,0x2
.L01710360:
    lw	$t3,0($a0)
    lw	$t8,0($a1)
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    pref	0x0,252($a0)
    and	$t3,$t3,$a3
    and	$t8,$t8,$a5
    or	$t3,$t3,$t8
    bnez	$a6,.L01710360
    sw	$t3,-4($a1)
    sra	$t8,$t0,0x2
.L01710394:
    beqz	$t8,.L01710410
    nop
    nop
.L017103a0:
    lw	$v1,0($a0)
    lw	$a4,0($a1)
    and	$v1,$v1,$a3
    and	$a4,$a4,$a5
    or	$v1,$v1,$a4
    sw	$v1,0($a1)
    lw	$v0,4($a0)
    lw	$v1,4($a1)
    and	$v0,$v0,$a3
    and	$v1,$v1,$a5
    or	$v0,$v0,$v1
    sw	$v0,4($a1)
    lw	$at,8($a0)
    lw	$v0,8($a1)
    and	$at,$at,$a3
    and	$v0,$v0,$a5
    or	$at,$at,$v0
    sw	$at,8($a1)
    lw	$t9,12($a0)
    lw	$v0,12($a1)
    addiu	$a1,$a1,16
    addiu	$a0,$a0,16
    sltu	$at,$a1,$a2
    and	$t9,$t9,$a3
    and	$v0,$v0,$a5
    or	$t9,$t9,$v0
    bnez	$at,.L017103a0
    sw	$t9,-4($a1)
.L01710410:
    jr	$ra
    nop

glabel nfbMarkWindow
    lui	$a2,0x3
    addiu	$sp,$sp,-32
    addiu	$a2,$a2,-30480
    sd	$gp,8($sp)
    addu	$gp,$t9,$a2
    lw	$a1,-5736($gp)
    lw	$v1,132($a0)
    sll	$a1,$a1,0x2
    lw	$v0,16($a0)
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    lw	$v0,116($v0)
    lw	$v1,24($v1)
    lw	$v0,60($v0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    li	$a2,1
    sw	$a2,0($v0)
    lw	$at,68($a0)
    beqz	$at,.L01712130
    sd	$a0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L01712130:
    lw	$t9,-28180($gp)
    la	$a3,Must_have_memory
    sd	$ra,16($sp)
    li	$a0,24
    jalr	$t9
    sw	$a2,0($a3)
    la	$a7,Must_have_memory
    ld	$gp,8($sp)
    sw	$zero,0($a7)
    ld	$a4,0($sp)
    ld	$ra,16($sp)
    lh	$a6,8($a4)
    sh	$a6,0($v0)
    lh	$a5,10($a4)
    sw	$zero,8($v0)
    sw	$zero,4($v0)
    sh	$a5,2($v0)
    addiu	$sp,$sp,32
    jr	$ra
    sw	$v0,68($a4)

glabel nfbInfImageText16__FL
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,0($sp)
    addiu	$at,$at,14176
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$ra,-6768($gp)
    lw	$t9,76($a1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    lw	$t9,64($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel nfb5MaskRopLoop__FI
    jr	$ra
    nop

glabel nfbDestroyHWColormap
    lui	$at,0x2
    addiu	$sp,$sp,-32
    addiu	$at,$at,10144
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    lw	$t9,-28196($gp)
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    jalr	$t9
    lw	$a0,68($a0)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sw	$zero,68($s8)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel nfb9MaskRopLoop__JI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L01718d00
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L01718c68
    sra	$t9,$t0,0x2
.L01718c30:
    lw	$t8,0($a0)
    lw	$t3,0($a1)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    nor	$t8,$t8,$zero
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    xor	$t8,$t3,$t8
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L01718c30
    sw	$t3,-4($a1)
.L01718c68:
    beqz	$t9,.L01718d00
    nop
.L01718c70:
    lw	$t2,0($a0)
    lw	$t1,0($a1)
    nor	$t2,$t2,$zero
    xor	$t2,$t1,$t2
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    lw	$a7,4($a1)
    nor	$t0,$t0,$zero
    xor	$t0,$a7,$t0
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    lw	$a4,8($a1)
    nor	$a6,$a6,$zero
    xor	$a6,$a4,$a6
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    lw	$at,12($a1)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    nor	$v1,$v1,$zero
    sltu	$v0,$a1,$a2
    xor	$v1,$at,$v1
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L01718c70
    sw	$at,-4($a1)
.L01718d00:
    jr	$ra
    nop

glabel nfb7MaskRopLoop__HI
    sltu	$at,$a1,$a2
    nor	$a5,$a3,$zero
    beqz	$at,.L0171b000
    subu	$a7,$a2,$a1
    addiu	$t2,$a7,3
    addiu	$t0,$a7,6
    slt	$t1,$t2,$zero
    movz	$t0,$t2,$t1
    sra	$t0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0171af74
    sra	$t9,$t0,0x2
.L0171af40:
    lw	$t3,0($a1)
    lw	$t8,0($a0)
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    pref	0x1,252($a1)
    addiu	$a6,$a6,-1
    or	$t8,$t8,$t3
    pref	0x0,252($a0)
    and	$t3,$a5,$t3
    and	$t8,$a3,$t8
    or	$t3,$t3,$t8
    bnez	$a6,.L0171af40
    sw	$t3,-4($a1)
.L0171af74:
    beqz	$t9,.L0171b000
    nop
    nop
.L0171af80:
    lw	$t1,0($a1)
    lw	$t2,0($a0)
    or	$t2,$t2,$t1
    lw	$a7,4($a1)
    and	$t1,$a5,$t1
    and	$t2,$a3,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a1)
    lw	$t0,4($a0)
    or	$t0,$t0,$a7
    lw	$a4,8($a1)
    and	$a7,$a5,$a7
    and	$t0,$a3,$t0
    or	$a7,$a7,$t0
    sw	$a7,4($a1)
    lw	$a6,8($a0)
    or	$a6,$a6,$a4
    lw	$at,12($a1)
    and	$a4,$a5,$a4
    and	$a6,$a3,$a6
    or	$a4,$a4,$a6
    sw	$a4,8($a1)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    sltu	$v0,$a1,$a2
    or	$v1,$v1,$at
    and	$at,$a5,$at
    and	$v1,$a3,$v1
    or	$at,$at,$v1
    bnez	$v0,.L0171af80
    sw	$at,-4($a1)
.L0171b000:
    jr	$ra
    nop

glabel nfbPutImage
    li	$t0,2
    li	$t8,1
    move	$t1,$a3
    addiu	$sp,$sp,-208
    move	$t2,$a5
    move	$t3,$a7
    sd	$ra,112($sp)
    sd	$s0,120($sp)
    move	$s0,$a4
    lui	$at,0x2
    sd	$s1,96($sp)
    move	$s1,$a6
    addiu	$at,$at,-10640
    sd	$gp,104($sp)
    beqz	$a5,.L0171d3c8
    addu	$gp,$t9,$at
    beqz	$a6,.L0171d3cc
    ld	$ra,112($sp)
    lw	$v0,16($a1)
    sll	$v0,$v0,0xe
    bltz	$v0,.L0171d3e0
.L0171d3a4:
    lw	$a6,212($sp)
    beqz	$a6,.L0171d798
    lw	$a5,220($sp)
    beq	$t8,$a6,.L0171d7f0
    la	$a7,PixmapWidthPaddingInfo
    sd	$t2,88($sp)
    sd	$a0,80($sp)
    beq	$a6,$t0,.L0171d3f4
    sd	$t1,8($sp)
.L0171d3c8:
    ld	$ra,112($sp)
.L0171d3cc:
    ld	$s1,96($sp)
    ld	$gp,104($sp)
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0171d3e0:
    lh	$a2,10($a0)
    lh	$v1,8($a0)
    addu	$s0,$a2,$a4
    b	.L0171d3a4
    addu	$t1,$v1,$a3
.L0171d3f4:
    lw	$t9,0($a1)
    lw	$a4,-6768($gp)
    lw	$a3,76($a1)
    sll	$a4,$a4,0x2
    lw	$t9,396($t9)
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    sd	$a3,16($sp)
    lw	$a0,8($a3)
    lbu	$a3,72($a3)
    sd	$a0,64($sp)
    jalr	$t9
    sd	$a3,32($sp)
    lh	$t1,2($v0)
    lh	$a4,0($v0)
    ld	$t9,88($sp)
    ld	$a7,64($sp)
    ld	$a1,8($sp)
    addu	$ra,$s0,$s1
    lw	$a7,8($a7)
    li	$t0,1
    slt	$t8,$a1,$a4
    lh	$t2,6($v0)
    slt	$a0,$s0,$t1
    addu	$t9,$a1,$t9
    lh	$a6,4($v0)
    beqz	$a7,.L0171d54c
    move	$t3,$t9
    lw	$a3,4($a7)
    beq	$a3,$t0,.L0171d54c
    lh	$a5,14($a7)
    ld	$v0,80($sp)
    lw	$v1,-5736($gp)
    move	$t0,$a1
    lw	$v0,132($v0)
    slt	$a2,$a6,$t9
    sll	$v1,$v1,0x2
    sd	$s0,56($sp)
    movn	$t3,$a6,$a2
    addu	$v0,$v0,$v1
    movn	$t0,$a4,$t8
    lw	$v0,0($v0)
    ld	$s0,56($sp)
    slt	$at,$t0,$t3
    addiu	$t9,$a7,8
    move	$a6,$zero
    lw	$v0,0($v0)
    move	$a4,$ra
    beqz	$at,.L0171d3c8
    sd	$v0,24($sp)
    move	$a1,$t9
    movn	$s0,$t1,$a0
    slt	$a2,$t2,$ra
    movn	$a4,$t2,$a2
    slt	$v1,$s0,$a4
    beqz	$v1,.L0171d3c8
    slt	$t8,$a5,$s0
    beqz	$t8,.L0171d84c
    nop
.L0171d4e0:
    lh	$a5,14($a1)
    slt	$a5,$a5,$s0
    addiu	$a1,$a1,8
    addiu	$a6,$a6,1
    beqz	$a5,.L0171d528
    subu	$t1,$a3,$a6
    lh	$a7,14($a1)
    slt	$a7,$a7,$s0
    addiu	$a1,$a1,8
    addiu	$a6,$a6,1
    beqz	$a7,.L0171d528
    subu	$t1,$a3,$a6
    lh	$t1,14($a1)
    slt	$t1,$t1,$s0
    addiu	$a1,$a1,8
    bnez	$t1,.L0171d4e0
    addiu	$a6,$a6,1
    subu	$t1,$a3,$a6
.L0171d528:
    beqz	$t1,.L0171d3cc
    ld	$ra,112($sp)
    lh	$t2,2($a1)
    slt	$t2,$t2,$a4
    beqz	$t2,.L0171d3c8
.L0171d53c:
    move	$a6,$t1
    move	$s1,$a1
    b	.L0171d86c
    lh	$a7,2($a1)
.L0171d54c:
    ld	$ra,88($sp)
    slt	$t8,$s0,$t1
    ld	$a7,80($sp)
    move	$t9,$a1
    slt	$t3,$a1,$a4
    lw	$t0,-5736($gp)
    movn	$t9,$a4,$t3
    lw	$a7,132($a7)
    addu	$ra,$a1,$ra
    sll	$t0,$t0,0x2
    slt	$t3,$a6,$ra
    sd	$t9,48($sp)
    addu	$a7,$a7,$t0
    movn	$ra,$a6,$t3
    move	$a6,$s0
    lw	$a7,0($a7)
    slt	$t9,$t9,$ra
    sd	$ra,40($sp)
    addu	$t3,$s0,$s1
    movn	$a6,$t1,$t8
    slt	$t0,$t2,$t3
    beqz	$t9,.L0171d3c8
    lw	$a7,0($a7)
    move	$at,$t3
    movn	$at,$t2,$t0
    sd	$at,72($sp)
    slt	$at,$a6,$at
    beqz	$at,.L0171d3c8
    sd	$a7,24($sp)
    sh	$a6,2($sp)
    ld	$a1,48($sp)
    ld	$t3,40($sp)
    ld	$t2,72($sp)
    sh	$t2,6($sp)
    sh	$t3,4($sp)
    ld	$a5,80($sp)
    sh	$a1,0($sp)
    lbu	$t1,2($a5)
    sll	$t0,$t1,0x2
    la	$a7,PixmapWidthPaddingInfo
    subu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    ld	$a3,88($sp)
    addu	$a7,$a7,$t0
    lw	$a2,0($a7)
    lw	$a4,4($a7)
    lw	$a7,8($a7)
    addu	$a2,$a2,$a3
    srav	$a2,$a2,$a4
    sllv	$a2,$a2,$a7
    subu	$ra,$a6,$s0
    sra	$a2,$a2,0x2
    mult	$a2,$ra
    ld	$a6,8($sp)
    ld	$t9,24($sp)
    subu	$a1,$a1,$a6
    lw	$t9,8($t9)
    sllv	$a1,$a1,$a7
    lw	$a6,220($sp)
    srav	$a1,$a1,$a4
    mflo	$a7
    addiu	$a0,$sp,0
    ld	$a4,16($sp)
    sll	$a7,$a7,0x2
    ld	$a3,32($sp)
    sll	$a2,$a2,0x2
    addu	$a6,$a6,$a7
    lw	$a4,52($a4)
    jalr	$t9
    addu	$a1,$a1,$a6
    b	.L0171d3cc
    ld	$ra,112($sp)
.L0171d66c:
    addiu	$a6,$a6,-1
    beqz	$a6,.L0171d3c8
    addiu	$s1,$s1,8
    lh	$a7,2($s1)
    slt	$t8,$a7,$a4
    beqz	$t8,.L0171d3c8
    slt	$v1,$a7,$s0
    lh	$a1,4($s1)
.L0171d68c:
    move	$t8,$t0
    lh	$a3,0($s1)
    move	$t9,$t3
    slt	$a0,$t3,$a1
    slt	$a2,$a3,$t0
    movz	$t9,$a1,$a0
    movz	$t8,$a3,$a2
    move	$t1,$s0
    lh	$at,6($s1)
    slt	$v0,$t8,$t9
    move	$t2,$a4
    movz	$t1,$a7,$v1
    slt	$ra,$a4,$at
    beqz	$v0,.L0171d66c
    movz	$t2,$at,$ra
    slt	$a5,$t1,$t2
    beqz	$a5,.L0171d66c
    sd	$t9,128($sp)
    sh	$t2,6($sp)
    sh	$t1,2($sp)
    sh	$t8,0($sp)
    sd	$t0,48($sp)
    sd	$t3,40($sp)
    ld	$t3,128($sp)
    ld	$a5,80($sp)
    sh	$t3,4($sp)
    lbu	$t0,2($a5)
    sd	$a6,136($sp)
    sll	$a7,$t0,0x2
    la	$a6,PixmapWidthPaddingInfo
    subu	$a7,$a7,$t0
    sd	$a4,72($sp)
    sll	$a7,$a7,0x2
    ld	$a3,88($sp)
    addu	$a6,$a6,$a7
    lw	$a2,0($a6)
    lw	$a4,4($a6)
    lw	$a6,8($a6)
    addu	$a2,$a2,$a3
    ld	$a3,56($sp)
    srav	$a2,$a2,$a4
    sllv	$a2,$a2,$a6
    subu	$a3,$t1,$a3
    sra	$a2,$a2,0x2
    mult	$a2,$a3
    ld	$a1,8($sp)
    ld	$t9,24($sp)
    subu	$a1,$t8,$a1
    lw	$t9,8($t9)
    sllv	$a1,$a1,$a6
    srav	$a1,$a1,$a4
    ld	$a4,16($sp)
    lw	$a6,220($sp)
    mflo	$a7
    addiu	$a0,$sp,0
    sll	$a7,$a7,0x2
    lw	$a4,52($a4)
    sll	$a2,$a2,0x2
    addu	$a6,$a6,$a7
    ld	$a3,32($sp)
    jalr	$t9
    addu	$a1,$a1,$a6
    ld	$a4,72($sp)
    ld	$a6,136($sp)
    ld	$t0,48($sp)
    b	.L0171d66c
    ld	$t3,40($sp)
.L0171d798:
    addu	$t8,$t1,$t2
    sh	$t8,4($sp)
    addu	$t9,$s0,$s1
    sh	$t9,6($sp)
    la	$t0,PixmapWidthPaddingInfo
    lw	$t9,-29324($gp)
    lw	$a6,12($t0)
    move	$a3,$t3
    addu	$t3,$t2,$t3
    lw	$t2,16($t0)
    move	$a7,$zero
    sh	$s0,2($sp)
    addu	$a6,$a6,$t3
    addiu	$a4,$sp,0
    lw	$t0,20($t0)
    srav	$a6,$a6,$t2
    move	$a2,$zero
    sh	$t1,0($sp)
    jalr	$t9
    sllv	$a6,$a6,$t0
    b	.L0171d3cc
    ld	$ra,112($sp)
.L0171d7f0:
    lw	$a6,12($a7)
    addu	$t8,$t2,$t3
    lw	$t0,16($a7)
    lw	$a7,20($a7)
    addu	$a6,$a6,$t8
    srav	$a6,$a6,$t0
    sllv	$a6,$a6,$a7
    lw	$a5,220($sp)
    mult	$a6,$s1
    lbu	$a2,4($a1)
    addu	$at,$s0,$s1
    sh	$at,6($sp)
    lw	$t9,-29324($gp)
    addiu	$a4,$sp,0
    sh	$s0,2($sp)
    move	$a3,$t3
    addu	$ra,$t1,$t2
    sh	$ra,4($sp)
    mflo	$a7
    jalr	$t9
    sh	$t1,0($sp)
    b	.L0171d3cc
    ld	$ra,112($sp)
.L0171d84c:
    beqz	$a3,.L0171d3cc
    ld	$ra,112($sp)
    lh	$ra,10($a7)
    slt	$ra,$ra,$a4
    beqz	$ra,.L0171d3c8
    move	$t1,$a3
    b	.L0171d53c
    move	$a1,$t9
.L0171d86c:
    slt	$v1,$a7,$s0
    b	.L0171d68c
    lh	$a1,4($s1)

glabel nfb0RopLoop__AH
    move	$a0,$a1
    sltu	$at,$a1,$a2
    subu	$t1,$a2,$a1
    addiu	$a6,$t1,6
    addiu	$a7,$t1,3
    beqz	$at,.L0171d964
    slt	$v1,$a7,$zero
    movz	$a6,$a7,$v1
    sra	$t0,$a6,0x2
    andi	$a5,$t0,0x7
    beqz	$a5,.L0171d8c4
    sra	$v0,$t0,0x3
.L0171d8b0:
    addiu	$a0,$a0,4
    addiu	$a5,$a5,-1
    sw	$zero,-4($a0)
    bnez	$a5,.L0171d8b0
    pref	0x1,252($a0)
.L0171d8c4:
    addiu	$v1,$a0,32
    beqz	$v0,.L0171d964
    sltu	$a5,$v1,$a2
    beqz	$a5,.L0171d974
    nop
    sw	$zero,8($a0)
    sw	$zero,4($a0)
    sw	$zero,0($a0)
    addiu	$at,$a2,-32
    pref	0x1,256($a0)
    sltu	$a1,$v1,$at
.L0171d8f0:
    sw	$zero,12($a0)
    sw	$zero,16($a0)
    sw	$zero,20($a0)
    sw	$zero,24($a0)
    sw	$zero,28($a0)
    addiu	$a0,$v1,32
    sw	$zero,0($v1)
    sltu	$v0,$a0,$at
    sw	$zero,4($v1)
    beqz	$a1,.L0171d96c
    sw	$zero,8($v1)
    sw	$zero,12($v1)
    sw	$zero,16($v1)
    sw	$zero,20($v1)
    sw	$zero,24($v1)
    sw	$zero,28($v1)
    pref	0x1,256($a0)
    addiu	$v1,$v1,64
    sw	$zero,0($a0)
    sltu	$a1,$v1,$at
    sw	$zero,4($a0)
    bnez	$v0,.L0171d8f0
    sw	$zero,8($a0)
.L0171d94c:
    sw	$zero,28($a0)
    sw	$zero,24($a0)
    sw	$zero,20($a0)
    sw	$zero,16($a0)
    jr	$ra
    sw	$zero,12($a0)
.L0171d964:
    jr	$ra
    nop
.L0171d96c:
    b	.L0171d94c
    move	$a0,$v1
.L0171d974:
    sw	$zero,28($a0)
    sw	$zero,24($a0)
    sw	$zero,20($a0)
    sw	$zero,16($a0)
    sw	$zero,12($a0)
    sw	$zero,8($a0)
    sw	$zero,4($a0)
    jr	$ra
    sw	$zero,0($a0)

glabel nfbNoopDDAClearBackingStore
    jr	$ra
    move	$v0,$zero

glabel nfbInfFillPolygon__PK
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    lui	$t8,0x2
    sd	$s2,32($sp)
    addiu	$t8,$t8,-15680
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    lw	$s2,-6768($gp)
    lw	$s1,76($a1)
    sd	$ra,48($sp)
    sll	$s2,$s2,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$s2
    move	$t0,$a2
    move	$a7,$a3
    lw	$s1,0($s1)
    li	$t2,1
    sd	$s0,24($sp)
    move	$s0,$a0
    move	$s2,$a1
    bnez	$at,.L0171e894
    lw	$t1,8($s1)
    lbu	$ra,2($a0)
    lw	$t9,24($s1)
    sllv	$ra,$t2,$ra
    and	$t9,$t9,$ra
    beqz	$t9,.L0171e894
    sd	$t1,8($sp)
    sw	$t2,19112($gp)
    sw	$a5,19092($gp)
    sw	$a4,19088($gp)
    sw	$t0,19080($gp)
    lw	$v1,16($a1)
    lui	$a0,0x20
    sw	$a3,19084($gp)
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    sw	$v1,16($a1)
    lw	$a3,32($s1)
    lw	$v0,-5736($gp)
    lw	$at,132($s0)
    lw	$t9,-29908($gp)
    sll	$v0,$v0,0x2
    lw	$a3,40($a3)
    addu	$at,$at,$v0
    move	$a2,$s0
    lw	$at,0($at)
    move	$a0,$s0
    jalr	$t9
    sd	$at,0($sp)
    lw	$a3,19116($gp)
    ld	$a7,8($sp)
    sw	$a7,8($s1)
    lw	$a5,16($s2)
    lw	$a4,-5736($gp)
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,16($s2)
    lw	$a2,132($s0)
    sw	$zero,19112($gp)
    sll	$a4,$a4,0x2
    ld	$a1,0($sp)
    addu	$a2,$a2,$a4
    beqz	$a3,.L0171e878
    sw	$a1,0($a2)
    lw	$t2,-6768($gp)
    lw	$t1,76($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t8,24($s2)
    lw	$t9,28($t1)
    sw	$t8,40($t1)
    sw	$t8,64($t1)
    lw	$t3,28($s2)
    sw	$t3,44($t1)
    sw	$t3,68($t1)
    lw	$t2,20($s2)
    sw	$t2,52($t1)
    sw	$t2,76($t1)
    lbu	$t0,5($s2)
    move	$a1,$s0
    sb	$t0,48($t1)
    move	$a0,$s2
    jalr	$t9
    sb	$t0,72($t1)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0171e878:
    ld	$s1,16($sp)
.L0171e87c:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0171e894:
    lw	$t9,32($s1)
    lw	$t9,40($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$t0
    jalr	$t9
    move	$a3,$a7
    b	.L0171e87c
    ld	$s1,16($sp)

glabel nfbInfPolyGlyphBlt__HL
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lui	$at,0x2
    sd	$s1,16($sp)
    addiu	$at,$at,-19136
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    lw	$t8,-6768($gp)
    lw	$s1,76($a1)
    sd	$s0,24($sp)
    sll	$t8,$t8,0x2
    lw	$at,19112($gp)
    addu	$s1,$s1,$t8
    move	$t1,$a2
    move	$t0,$a3
    lw	$s1,0($s1)
    li	$t3,1
    move	$s0,$a0
    sd	$s2,32($sp)
    move	$s2,$a1
    bnez	$at,.L0171f614
    lw	$t2,8($s1)
    lbu	$v1,2($a0)
    lw	$v0,24($s1)
    sllv	$v1,$t3,$v1
    and	$v0,$v0,$v1
    beqz	$v0,.L0171f614
    sd	$t2,8($sp)
    sw	$t3,19112($gp)
    sw	$t1,19080($gp)
    sw	$a3,19084($gp)
    sw	$a6,19096($gp)
    lw	$a6,16($a1)
    lui	$a7,0x20
    sw	$a4,19088($gp)
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,16($a1)
    lw	$a3,32($s1)
    sw	$a5,19092($gp)
    lw	$a5,-5736($gp)
    lw	$a4,132($a0)
    lw	$t9,-29908($gp)
    sll	$a5,$a5,0x2
    lw	$a3,72($a3)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    move	$a2,$a0
    jalr	$t9
    sd	$a4,0($sp)
    lw	$t2,19116($gp)
    ld	$ra,8($sp)
    sw	$ra,8($s1)
    lw	$t8,16($s2)
    lw	$t3,-5736($gp)
    lui	$t9,0x20
    or	$t8,$t8,$t9
    sw	$t8,16($s2)
    lw	$t1,132($s0)
    sw	$zero,19112($gp)
    sll	$t3,$t3,0x2
    ld	$t0,0($sp)
    addu	$t1,$t1,$t3
    beqz	$t2,.L0171f5f8
    sw	$t0,0($t1)
    lw	$v1,-6768($gp)
    lw	$v0,76($s2)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$a1,24($s2)
    lw	$t9,28($v0)
    sw	$a1,40($v0)
    sw	$a1,64($v0)
    lw	$a0,28($s2)
    sw	$a0,44($v0)
    sw	$a0,68($v0)
    lw	$v1,20($s2)
    sw	$v1,52($v0)
    sw	$v1,76($v0)
    lbu	$at,5($s2)
    move	$a1,$s0
    sb	$at,48($v0)
    move	$a0,$s2
    jalr	$t9
    sb	$at,72($v0)
    sw	$zero,19116($gp)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0171f5f8:
    ld	$s1,16($sp)
.L0171f5fc:
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0171f614:
    lw	$t9,32($s1)
    lw	$t9,72($t9)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$t1
    jalr	$t9
    move	$a3,$t0
    b	.L0171f5fc
    ld	$s1,16($sp)

