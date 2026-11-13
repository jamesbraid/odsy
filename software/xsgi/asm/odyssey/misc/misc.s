# DDX module odyssey: group misc
# Functions: 25

.text
.set noat
.set noreorder

glabel compareSTEName
    lui	$at,0x1f
    addiu	$sp,$sp,-16
    addiu	$at,$at,-19892
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    lw	$t9,-28328($gp)
    addiu	$a0,$a0,12
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$a1,12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16

glabel mapTypeToXDRPROC
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    lui	$a6,0x1f
    sd	$s1,40($sp)
    addiu	$a6,$a6,-19948
    sd	$gp,16($sp)
    addu	$gp,$t9,$a6
    la	$a5,sub_01730000
    sd	$s8,8($sp)
    move	$s8,$a1
    sltiu	$at,$a0,21
    sd	$a2,24($sp)
    sll	$a6,$a0,0x2
    addiu	$a5,$a5,3544
    sd	$ra,56($sp)
    beqz	$at,.L0154f800
    addu	$a5,$a5,$a6
    lw	$a7,0($a5)
    la	$s0,xdr_u_short
    jr	$a7
    li	$s1,2
.L0154f800:
    la	$a1,sub_01730000
    lw	$t9,-27992($gp)
    la	$a0,sub_01730000
    li	$a2,170
    addiu	$a1,$a1,3656
    jalr	$t9
    addiu	$a0,$a0,3688
    lw	$s0,0($sp)
    lw	$s1,4($sp)
.L0154f824:
    beqz	$s0,.L0154f860
    lw	$t9,-27992($gp)
    ld	$gp,16($sp)
.L0154f830:
    sw	$s0,0($s8)
    ld	$s0,32($sp)
    ld	$a2,24($sp)
    ld	$ra,56($sp)
    ld	$s8,8($sp)
    sw	$s1,0($a2)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
    move	$s0,$zero
    lw	$t9,-27992($gp)
    li	$s1,4
.L0154f860:
    la	$a1,sub_01730000
    la	$a0,sub_01730000
    li	$a2,174
    addiu	$a1,$a1,3656
    jalr	$t9
    addiu	$a0,$a0,3712
    b	.L0154f830
    ld	$gp,16($sp)
    beqz	$a0,.L0154f998
    la	$a1,sub_01730000
    lw	$s0,0($sp)
.L0154f88c:
    b	.L0154f824
    li	$s1,1
    beqz	$a3,.L0154f974
    sd	$a3,48($sp)
.L0154f89c:
    move	$s1,$zero
    b	.L0154f824
    move	$s0,$a3
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_wrapstring
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_pointer
    li	$s1,8
    b	.L0154f824
    la	$s0,xdr_double
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_float
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_wrapstring
    li	$s1,1
    b	.L0154f824
    la	$s0,xdr_wrapstring
    li	$s1,1
    b	.L0154f824
    la	$s0,xdr_array
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_enum
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_bool
    li	$s1,1
    b	.L0154f824
    la	$s0,xdr_u_char
    li	$s1,1
    b	.L0154f824
    la	$s0,xdr_char
    li	$s1,2
    b	.L0154f824
    la	$s0,xdr_short
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_u_long
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_long
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_u_int
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_int
    li	$s1,4
    b	.L0154f824
    la	$s0,xdr_void
.L0154f974:
    la	$a1,sub_01730000
    lw	$t9,-27992($gp)
    la	$a0,sub_01730000
    li	$a2,163
    addiu	$a1,$a1,3656
    jalr	$t9
    addiu	$a0,$a0,3672
    b	.L0154f89c
    ld	$a3,48($sp)
.L0154f998:
    lw	$t9,-27992($gp)
    la	$a0,sub_01730000
    li	$a2,79
    addiu	$a1,$a1,3656
    jalr	$t9
    addiu	$a0,$a0,3632
    b	.L0154f88c
    lw	$s0,0($sp)

glabel drawZeroArc__AP
    addiu	$sp,$sp,-224
    sd	$s2,200($sp)
    la	$s2,miDsin__DO
    sd	$s0,152($sp)
    la	$s0,ceil
    sd	$s3,184($sp)
    la	$s3,miDcos__CO
    sd	$ra,216($sp)
    sd	$s5,160($sp)
    sdc1	$f30,72($sp)
    la	$at,_rodata_symbol
    ldc1	$f27,0($sp)
    ldc1	$f23,10512($at)
    sdc1	$f22,56($sp)
    sdc1	$f20,64($sp)
    lh	$v0,8($a2)
    lhu	$v1,6($a2)
    sd	$s1,168($sp)
    sd	$a2,128($sp)
    sd	$a1,136($sp)
    mtc1	$v1,$f22
    sd	$a3,176($sp)
    mtc1	$v0,$f20
    lh	$a3,10($a2)
    li	$s1,23040
    li	$a1,-23040
    sd	$s4,192($sp)
    move	$s4,$a4
    lhu	$a4,4($a2)
    slti	$a2,$a3,-23040
    sd	$a0,144($sp)
    slti	$a0,$a3,23041
    movz	$a1,$a3,$a2
    sdc1	$f28,48($sp)
    movn	$s1,$a1,$a0
    sdc1	$f26,80($sp)
    mtc1	$a4,$f26
    addu	$v0,$v0,$s1
    ldc1	$f29,24744($at)
    cvt.d.w	$f22,$f22
    mtc1	$v0,$f28
    sdc1	$f27,24($sp)
    cvt.d.w	$f20,$f20
    ldc1	$f27,8($sp)
    mul.d	$f22,$f22,$f23
    cvt.d.w	$f26,$f26
    sdc1	$f24,40($sp)
    mul.d	$f20,$f20,$f29
    cvt.d.w	$f28,$f28
    sdc1	$f27,32($sp)
    neg.d	$f24,$f22
    mul.d	$f26,$f26,$f23
    sdc1	$f22,104($sp)
    neg.d	$f20,$f20
    mul.d	$f28,$f28,$f29
    sdc1	$f26,112($sp)
    mov.d	$f30,$f26
    neg.d	$f26,$f26
    move	$s5,$a5
    sdc1	$f20,88($sp)
    neg.d	$f28,$f28
.L015716f4:
    move	$t9,$s3
    jalr	$t9
    mov.d	$f12,$f20
    move	$t9,$s2
    sdc1	$f0,208($sp)
    jalr	$t9
    mov.d	$f12,$f20
    ldc1	$f9,88($sp)
    ldc1	$f8,104($sp)
    ldc1	$f7,208($sp)
    c.eq.d $f9,$f20
    ldc1	$f9,112($sp)
    ldc1	$f5,24($sp)
    mul.d	$f8,$f0,$f8
    c.eq.d	$f28,$f20
    ldc1	$f6,32($sp)
    la	$a7,_rodata_symbol
    c.lt.d $f24,$f8
    mul.d	$f9,$f7,$f9
    c.lt.d $f8,$f22
    movt.d	$f5,$f8,$fcc3
    ldc1	$f10,24664($a7)
    movt.d	$f6,$f9,$fcc3
    bc1t	.L015717d4
    c.lt.d $f26,$f9
    div.d	$f11,$f28,$f10
    div.d	$f10,$f20,$f10
    movt.d	$f22,$f8,$fcc1
    sdc1	$f6,32($sp)
    movt.d	$f24,$f8,$fcc2
    sdc1	$f5,24($sp)
    c.lt.d $f9,$f30
    movt.d	$f26,$f9,$fcc3
    sdc1	$f11,96($sp)
    movt.d	$f30,$f9,$fcc4
    bltz	$s1,.L01571a30
    sdc1	$f10,120($sp)
    move	$t9,$s0
    jalr	$t9
    mov.d	$f12,$f10
    move	$t9,$s0
    mov.d	$f20,$f0
    jalr	$t9
    ldc1	$f12,96($sp)
    c.eq.d $f20,$f0
    bc1t .L015716f4
    mov.d	$f20,$f28
    move	$t9,$s0
    jalr	$t9
    ldc1	$f12,120($sp)
    la	$t1,_rodata_symbol
    ldc1	$f21,12648($t1)
    ldc1	$f20,24664($t1)
    add.d	$f21,$f0,$f21
    b	.L015716f4
    mul.d	$f20,$f20,$f21
.L015717d4:
    ldc1	$f23,112($sp)
    c.lt.d $f9,$f30
    msub.d	$f23,$f6,$f7,$f23
    c.lt.d $f26,$f9
    ld	$t8,176($sp)
    movt.d	$f30,$f9,$fcc3
    movt.d	$f26,$f9,$fcc2
    c.lt.d $f24,$f8
    la	$t3,sub_01720000
    mtc1	$t8,$f11
    mov.d	$f16,$f22
    c.lt.d	$f8,$f22
    la	$t2,_rodata_symbol
    mov.d	$f14,$f24
    sub.d	$f25,$f8,$f5
    ldc1	$f12,13528($t3)
    movt.d	$f16,$f8,$fcc0
    ldc1	$f15,10512($t2)
    cvt.d.w	$f11,$f11
    movt.d	$f14,$f8,$fcc1
    dmtc1	$zero,$f13
    ldc1	$f22,104($sp)
    mul.d	$f12,$f11,$f12
    add.d	$f23,$f23,$f25
    mul.d	$f11,$f11,$f15
    mov.d	$f0,$f12
    c.lt.d $f23,$f13
    mov.d	$f24,$f14
    c.eq.d $f22,$f13
    movf.d	$f0,$f11,$fcc7
    mov.d	$f22,$f16
    c.eq.d $f16,$f14
    bc1t .L015719f4
    mov.d	$f10,$f0
    dmtc1	$zero,$f10
    bnez	$s5,.L015719fc
    neg.d	$f0,$f0
.L01571868:
    beqz	$s4,.L01571898
    nop
.L01571870:
    sdc1	$f8,24($s4)
    sdc1	$f9,16($s4)
    sub.d	$f31,$f8,$f10
    sub.d	$f29,$f9,$f0
    sdc1	$f31,40($s4)
    add.d	$f27,$f8,$f10
    sdc1	$f29,32($s4)
    add.d	$f25,$f9,$f0
    sdc1	$f27,8($s4)
    sdc1	$f25,0($s4)
.L01571898:
    ldc1	$f0,112($sp)
.L0157189c:
    movf.d	$f30,$f12,$fcc1
    movf.d	$f26,$f11,$fcc1
    movt.d	$f22,$f12,$fcc1
    add.d	$f0,$f0,$f30
    movt.d	$f24,$f11,$fcc1
    c.eq.d $f26,$f30
    trunc.w.d	$f15,$f0
    ldc1	$f8,104($sp)
    c.eq.d $f24,$f22
    ld	$a4,128($sp)
    mfc1	$a3,$f15
    bc1t .L015719b8
    cvt.d.w	$f5,$f15
    bc1t .L015719b8
    add.d	$f8,$f8,$f24
    c.lt.d $f0,$f13
    c.lt.d $f8,$f13
    ldc1	$f10,112($sp)
    c.eq.d $f5,$f0
    trunc.w.d	$f7,$f8
    add.d	$f10,$f10,$f26
    ldc1	$f0,104($sp)
    cvt.d.w	$f6,$f7
    lh	$t1,0($a4)
    trunc.w.d	$f9,$f10
    lh	$a4,2($a4)
    bc1t .L01571910
    c.lt.d $f10,$f13
    bc1f .L01571a80
.L01571910:
    move	$a5,$a3
    add.d	$f0,$f0,$f22
.L01571918:
    cvt.d.w	$f12,$f9
    trunc.w.d	$f11,$f0
    c.eq.d	$f12,$f10
    mfc1	$a7,$f9
    cvt.d.w	$f5,$f11
    c.eq.d $f6,$f8
    addu	$t0,$a5,$t1
    move	$a5,$a7
    mfc1	$a3,$f11
    bc1t	.L0157194c
    c.eq.d $f5,$f0
    bc1f .L01571a8c
    nop
.L0157194c:
    c.lt.d $f0,$f13
.L01571950:
    bc1t .L01571960
    addu	$a7,$a5,$t1
    bc1f .L01571a98
    addiu	$t1,$a3,1
.L01571960:
    move	$t1,$a3
    mfc1	$a3,$f7
.L01571968:
    addu	$a5,$t1,$a4
    bc1t .L0157197c
    swc1	$f7,19324($gp)
    bc1f .L01571aa0
    addiu	$t1,$a3,1
.L0157197c:
    move	$t1,$a3
    subu	$at,$a7,$t0
.L01571984:
    sh	$at,20($sp)
    sh	$a5,18($sp)
    sh	$t0,16($sp)
    addu	$ra,$t1,$a4
    ld	$a1,136($sp)
    subu	$ra,$ra,$a5
    sh	$ra,22($sp)
    lw	$t9,72($a1)
    lw	$t9,44($t9)
    addiu	$a3,$sp,16
    li	$a2,1
    jalr	$t9
    ld	$a0,144($sp)
.L015719b8:
    ld	$s0,152($sp)
    ld	$s1,168($sp)
    ld	$s2,200($sp)
    ld	$s3,184($sp)
    ld	$s4,192($sp)
    ld	$s5,160($sp)
    ldc1	$f20,64($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,40($sp)
    ld	$ra,216($sp)
    ldc1	$f26,80($sp)
    ldc1	$f28,48($sp)
    ldc1	$f30,72($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L015719f4:
    beqz	$s5,.L01571868
    dmtc1	$zero,$f0
.L015719fc:
    sdc1	$f5,24($s5)
    sdc1	$f6,16($s5)
    add.d	$f4,$f5,$f10
    add.d	$f3,$f6,$f0
    sdc1	$f4,40($s5)
    sub.d	$f2,$f5,$f10
    sdc1	$f3,32($s5)
    sub.d	$f1,$f6,$f0
    sdc1	$f2,8($s5)
    bnez	$s4,.L01571870
    sdc1	$f1,0($s5)
    b	.L0157189c
    ldc1	$f0,112($sp)
.L01571a30:
    lw	$t9,-28292($gp)
    jalr	$t9
    mov.d	$f12,$f10
    lw	$t9,-28292($gp)
    mov.d	$f20,$f0
    jalr	$t9
    ldc1	$f12,96($sp)
    c.eq.d $f0,$f20
    bc1f .L01571a60
    lw	$t9,-28292($gp)
    b	.L015716f4
    mov.d	$f20,$f28
.L01571a60:
    jalr	$t9
    ldc1	$f12,120($sp)
    la	$v1,_rodata_symbol
    ldc1	$f21,11856($v1)
    ldc1	$f20,24664($v1)
    add.d	$f21,$f0,$f21
    b	.L015716f4
    mul.d	$f20,$f20,$f21
.L01571a80:
    addiu	$a5,$a3,1
    b	.L01571918
    add.d	$f0,$f0,$f22
.L01571a8c:
    addiu	$a5,$a7,1
    b	.L01571950
    c.lt.d $f0,$f13
.L01571a98:
    b	.L01571968
    mfc1	$a3,$f7
.L01571aa0:
    b	.L01571984
    subu	$at,$a7,$t0

glabel mergeDIDLists__EG
    addiu	$sp,$sp,-80
    sd	$s6,56($sp)
    sd	$s2,0($sp)
    la	$s2,rrmWindowPrivateIndex
    sd	$s5,48($sp)
    sll	$s5,$a2,0x3
    sd	$s4,16($sp)
    addu	$s5,$s5,$a2
    sd	$s1,32($sp)
    sll	$s5,$s5,0x2
    sd	$s0,24($sp)
    addu	$s5,$a1,$s5
    lw	$s0,0($s5)
    move	$s1,$a0
    sd	$s7,40($sp)
    move	$s7,$a1
    move	$s4,$a2
    sd	$s3,8($sp)
    move	$s3,$a3
    beqz	$s0,.L01571b38
    sd	$ra,64($sp)
.L01571b04:
    lw	$t9,32($s1)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    lw	$t8,0($s2)
    lw	$s0,132($s0)
    sll	$t8,$t8,0x2
    addu	$s0,$s0,$t8
    lw	$s0,0($s0)
    lw	$s0,48($s0)
    bnez	$s0,.L01571b04
    nop
.L01571b38:
    sll	$s6,$s3,0x3
    addu	$s6,$s6,$s3
    sll	$s6,$s6,0x2
    addu	$s6,$s7,$s6
    lw	$s0,0($s6)
    beqz	$s0,.L01571b88
    nop
.L01571b54:
    lw	$t9,32($s1)
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    lw	$t8,0($s2)
    lw	$s0,132($s0)
    sll	$t8,$t8,0x2
    addu	$s0,$s0,$t8
    lw	$s0,0($s0)
    lw	$s0,48($s0)
    bnez	$s0,.L01571b54
    nop
.L01571b88:
    lw	$t9,0($s5)
    move	$a0,$t9
    beqz	$t9,.L01571bfc
    move	$s0,$t9
    lw	$a5,0($s2)
    sll	$a5,$a5,0x2
.L01571ba0:
    lw	$t0,132($s0)
    addu	$t0,$t0,$a5
    lw	$t0,0($t0)
    lw	$a7,-5736($gp)
    sw	$s3,20($t0)
    lw	$a6,132($s0)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    sw	$s3,4($a6)
    lw	$t9,72($s1)
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$a5,0($s2)
    lw	$s0,132($s0)
    sll	$a5,$a5,0x2
    addu	$s0,$s0,$a5
    lw	$s0,0($s0)
    lw	$s0,48($s0)
    bnez	$s0,.L01571ba0
    nop
    lw	$a0,0($s5)
.L01571bfc:
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s7,40($sp)
    lw	$a1,4($s6)
    ld	$ra,64($sp)
    lw	$a3,0($s2)
    beqz	$a1,.L01571ca0
    lw	$a2,0($s2)
    lw	$a6,132($a1)
    sll	$a7,$a2,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    sw	$a0,48($a6)
.L01571c38:
    lw	$a0,0($s5)
    beqz	$a0,.L01571c5c
    ld	$s2,0($sp)
    sll	$t2,$a3,0x2
    lw	$t1,132($a0)
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lw	$t0,4($s6)
    sw	$t0,44($t1)
.L01571c5c:
    lw	$t9,20($s6)
    lhu	$t3,16($s6)
    lw	$at,4($s5)
    sw	$at,4($s6)
    lw	$t8,20($s5)
    ori	$t3,$t3,0x4
    sh	$t3,16($s6)
    addu	$t8,$t8,$t9
    sw	$t8,20($s6)
    sw	$zero,20($s5)
    sw	$zero,0($s5)
    sw	$zero,4($s5)
    sh	$zero,16($s5)
    ld	$s5,48($sp)
    ld	$s6,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L01571ca0:
    b	.L01571c38
    sw	$a0,0($s6)

glabel tailX__LN
    ldc1	$f8,40($a3)
    ldc1	$f5,16($a1)
    ldc1	$f6,0($a1)
    ldc1	$f0,8($a3)
    addiu	$sp,$sp,-256
    neg.d	$f8,$f8
    sdc1	$f24,176($sp)
    mul.d	$f24,$f6,$f5
    add.d	$f10,$f8,$f8
    mul.d	$f9,$f0,$f24
    div.d	$f9,$f9,$f10
    ldc1	$f7,24($a3)
    sdc1	$f22,184($sp)
    dmtc1	$zero,$f22
    nmsub.d	$f24,$f7,$f24,$f24
    c.eq.d	$f12,$f22
    ldc1	$f11,8($a1)
    sdc1	$f20,192($sp)
    mov.d	$f20,$f12
    sd	$s0,224($sp)
    move	$s0,$a2
    bc1f	.L01578564
    div.d	$f24,$f24,$f8
    c.lt.d $f24,$f22
    bc1f .L0157883c
    neg.d	$f9,$f24
    c.lt.d $f9,$f0
    bc1f .L0157883c
    sd	$a3,216($sp)
    div.d	$f12,$f24,$f0
    la	$at,_rodata_symbol
    lw	$t9,-28540($gp)
    ldc1	$f13,11856($at)
    sdc1	$f6,160($sp)
    sdc1	$f5,152($sp)
    sd	$ra,240($sp)
    jalr	$t9
    add.d	$f12,$f12,$f13
    ldc1	$f12,152($sp)
    lw	$t9,-28540($gp)
    sdc1	$f0,72($sp)
    jalr	$t9
    madd.d	$f12,$f24,$f12,$f12
    ldc1	$f6,160($sp)
    ldc1	$f5,72($sp)
    ldc1	$f7,152($sp)
    ld	$v0,216($sp)
    msub.d	$f5,$f0,$f5,$f6
    lw	$v0,96($v0)
    sub.d	$f6,$f6,$f7
    sdc1	$f6,8($sp)
    beqz	$v0,.L015784f4
    sdc1	$f5,0($sp)
    ldc1	$f7,64($s0)
    c.le.d $f7,$f20
    bc1f .L015784f8
    ld	$v1,216($sp)
    ldc1	$f9,72($s0)
    ldc1	$f8,32($s0)
    c.le.d $f20,$f9
    c.le.d $f22,$f5
    bc1f .L015784f4
    c.lt.d $f20,$f8
    bc1t .L015784e4
    nop
    ldc1	$f10,40($s0)
    c.lt.d $f10,$f20
    bc1f .L015784f8
    ld	$v1,216($sp)
.L015784e4:
    bc1f .L015784f8
    ld	$v1,216($sp)
    c.le.d $f22,$f6
    bc1t .L01578a4c
.L015784f4:
    ld	$v1,216($sp)
.L015784f8:
    lw	$v1,120($v1)
    beqz	$v1,.L01578858
    nop
    ldc1	$f11,48($s0)
    c.le.d	$f11,$f20
    bc1f	.L01578858
    nop
    ldc1	$f12,56($s0)
    c.le.d $f20,$f12
    bc1f .L01578858
    nop
    ldc1	$f13,16($s0)
    c.lt.d $f20,$f13
    bc1t .L01578548
    c.le.d $f5,$f22
    ldc1	$f14,24($s0)
    c.lt.d $f14,$f20
    bc1f .L0157885c
    ld	$s0,224($sp)
    c.le.d $f5,$f22
.L01578548:
    bc1f .L01578858
    mov.d	$f0,$f6
    c.le.d $f6,$f22
    bc1f .L0157885c
    ld	$s0,224($sp)
    b	.L01578824
    ld	$s0,224($sp)
.L01578564:
    madd.d	$f0,$f24,$f12,$f12
    la	$a0,_rodata_symbol
    ldc1	$f1,24616($a0)
    div.d	$f0,$f0,$f1
    mul.d	$f10,$f12,$f9
    mul.d	$f13,$f0,$f0
    sdc1	$f10,104($sp)
    mul.d	$f10,$f10,$f10
    madd.d	$f10,$f10,$f0,$f13
    madd.d	$f12,$f10,$f0,$f13
    sdc1	$f11,112($sp)
    sdc1	$f8,144($sp)
    sdc1	$f7,136($sp)
    sdc1	$f6,160($sp)
    sdc1	$f5,152($sp)
    c.lt.d $f12,$f22
    sd	$a3,216($sp)
    sd	$ra,240($sp)
    mov.d	$f14,$f22
    sdc1	$f14,0($sp)
    bc1f .L01578884
    mul.d	$f13,$f0,$f13
    c.lt.d $f0,$f22
    li	$a2,1
    c.lt.d	$f10,$f22
    li	$a1,1
    movf	$a2,$zero,$fcc7
    movf	$a1,$zero,$fcc0
    sdc1	$f10,128($sp)
    mov.d	$f5,$f13
    bne	$a1,$a2,.L015785f4
    sdc1	$f0,96($sp)
    sdc1	$f0,120($sp)
    neg.d	$f3,$f0
    neg.d	$f5,$f13
    sdc1	$f3,96($sp)
.L015785f4:
    ldc1	$f12,128($sp)
    lw	$t9,-28304($gp)
    neg.d	$f12,$f12
    sdc1	$f0,120($sp)
    jalr	$t9
    div.d	$f12,$f12,$f5
    la	$a2,_rodata_symbol
    lw	$t9,-28300($gp)
    ldc1	$f12,24624($a2)
    jalr	$t9
    div.d	$f12,$f0,$f12
    ldc1	$f14,96($sp)
    la	$a5,_rodata_symbol
    ldc1	$f15,1808($a5)
    mul.d	$f14,$f0,$f14
    ldc1	$f13,120($sp)
    nmsub.d	$f13,$f13,$f14,$f15
    ldc1	$f14,104($sp)
    li	$a5,1
    c.lt.d $f14,$f22
    move	$a4,$a5
    c.lt.d $f13,$f22
    li	$a6,1
    movf	$a4,$zero,$fcc2
    movf	$a6,$zero,$fcc1
    xor	$a4,$a4,$a6
    li	$a3,2
    sdc1	$f13,168($sp)
    sltiu	$a4,$a4,1
    movz	$a3,$a5,$a4
    sd	$a3,208($sp)
.L01578670:
    ldc1	$f12,168($sp)
    lw	$t9,-28540($gp)
    add.d	$f12,$f12,$f12
    jalr	$t9
    sub.d	$f12,$f12,$f24
    ldc1	$f31,144($sp)
    ldc1	$f29,136($sp)
    div.d	$f29,$f29,$f31
    ldc1	$f25,168($sp)
    sub.d	$f29,$f29,$f25
    mul.d	$f29,$f20,$f29
    div.d	$f29,$f29,$f0
    la	$a6,_rodata_symbol
    sub.d	$f5,$f20,$f0
    ldc1	$f27,1816($a6)
    add.d	$f13,$f29,$f25
    mul.d	$f12,$f5,$f5
    nmsub.d	$f12,$f12,$f13,$f27
    add.d	$f6,$f0,$f20
    c.le.d $f22,$f12
    sub.d	$f25,$f25,$f29
    mul.d	$f24,$f6,$f6
    bc1f .L015786fc
    nmsub.d	$f24,$f24,$f25,$f27
    ld	$a7,208($sp)
    li	$t0,2
    sdc1	$f5,80($sp)
    beq	$a7,$t0,.L015789d4
    sdc1	$f6,88($sp)
    c.lt.d $f24,$f22
    bc1t .L0157870c
    mov.d	$f5,$f24
    addiu	$a1,$sp,0
    b	.L01578718
    addiu	$a2,$sp,8
.L015786fc:
    c.lt.d $f24,$f22
    mov.d	$f5,$f24
    bc1f .L01578878
    sdc1	$f6,88($sp)
.L0157870c:
    addiu	$a1,$sp,0
    dmtc1	$zero,$f5
    addiu	$a2,$sp,8
.L01578718:
    c.le.d $f22,$f5
    bc1t .L015788e4
    sltu	$t1,$a2,$a1
.L01578724:
    beqz	$t1,.L01578820
    ldc1	$f0,0($sp)
    ld	$t2,216($sp)
    lw	$t2,96($t2)
    beqz	$t2,.L01578798
    ld	$t3,216($sp)
    ldc1	$f0,64($s0)
    c.le.d $f0,$f20
    bc1f .L01578798
    ld	$t3,216($sp)
    ldc1	$f1,72($s0)
    c.le.d	$f20,$f1
    bc1f	.L01578798
    ld	$t3,216($sp)
    ldc1	$f3,32($s0)
    ldc1	$f6,8($sp)
    ldc1	$f2,40($s0)
    c.lt.d $f20,$f3
    c.le.d $f22,$f6
    bc1t .L01578780
    c.lt.d $f2,$f20
    bc1f .L01578798
    ld	$t3,216($sp)
.L01578780:
    ldc1	$f4,0($sp)
    c.le.d $f22,$f4
    bc1f .L01578798
    ld	$t3,216($sp)
    bc1t .L01578a2c
    ld	$t3,216($sp)
.L01578798:
    lw	$t3,120($t3)
    beqz	$t3,.L01578820
    ldc1	$f0,0($sp)
    ldc1	$f5,48($s0)
    c.le.d $f5,$f20
    bc1f .L01578820
    ldc1	$f0,0($sp)
    ldc1	$f6,56($s0)
    c.le.d $f20,$f6
    bc1f .L01578820
    ldc1	$f0,0($sp)
    ldc1	$f7,16($s0)
    c.lt.d $f20,$f7
    bc1t .L015787e8
    ldc1	$f9,0($sp)
    ldc1	$f8,24($s0)
    c.lt.d $f8,$f20
    bc1f .L01578820
    ldc1	$f0,0($sp)
    ldc1	$f9,0($sp)
.L015787e8:
    c.le.d	$f9,$f22
    bc1f	.L0157881c
    ldc1	$f6,8($sp)
    c.le.d $f6,$f22
    bc1f .L0157881c
    ld	$s0,224($sp)
    ld	$ra,240($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,184($sp)
    mov.d	$f0,$f6
    ldc1	$f24,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0157881c:
    ldc1	$f0,0($sp)
.L01578820:
    ld	$s0,224($sp)
.L01578824:
    ld	$ra,240($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,184($sp)
    ldc1	$f24,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0157883c:
    ld	$s0,224($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,184($sp)
    sub.d	$f0,$f6,$f5
    ldc1	$f24,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L01578858:
    ld	$s0,224($sp)
.L0157885c:
    ld	$ra,240($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,184($sp)
    mov.d	$f0,$f5
    ldc1	$f24,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L01578878:
    addiu	$a1,$sp,0
    b	.L01578718
    addiu	$a2,$sp,8
.L01578884:
    lw	$t9,-28540($gp)
    sdc1	$f10,128($sp)
    jalr	$t9
    sdc1	$f0,120($sp)
    ldc1	$f10,104($sp)
    ldc1	$f12,128($sp)
    lw	$t9,-28544($gp)
    madd.d	$f12,$f12,$f0,$f10
    mul.d	$f10,$f0,$f10
    jalr	$t9
    sdc1	$f10,64($sp)
    ldc1	$f13,64($sp)
    ldc1	$f12,128($sp)
    lw	$t9,-28544($gp)
    sdc1	$f0,56($sp)
    jalr	$t9
    sub.d	$f12,$f12,$f13
    ldc1	$f15,120($sp)
    ldc1	$f14,56($sp)
    add.d	$f14,$f14,$f15
    sd	$zero,208($sp)
    add.d	$f14,$f0,$f14
    b	.L01578670
    sdc1	$f14,168($sp)
.L015788e4:
    lw	$t9,-28540($gp)
    sd	$a2,232($sp)
    sd	$a1,200($sp)
    jalr	$t9
    mov.d	$f12,$f5
    ldc1	$f16,112($sp)
    la	$a4,_rodata_symbol
    ldc1	$f6,88($sp)
    ldc1	$f5,10512($a4)
    ldc1	$f17,24600($a4)
    add.d	$f6,$f0,$f6
    add.d	$f16,$f16,$f17
    mul.d	$f6,$f6,$f5
    c.lt.d $f6,$f16
    ld	$a1,200($sp)
    ld	$a2,232($sp)
    bc1t .L01578958
    mov.d	$f24,$f0
.L0157892c:
    ldc1	$f0,88($sp)
    sub.d	$f0,$f0,$f24
    mul.d	$f0,$f5,$f0
    c.le.d $f22,$f0
    bc1f .L01578950
    ld	$t8,208($sp)
    li	$t9,1
    beq	$t8,$t9,.L01578a54
    la	$v0,_rodata_symbol
.L01578950:
    b	.L01578724
    sltu	$t1,$a2,$a1
.L01578958:
    ldc1	$f14,24608($a4)
    ldc1	$f13,112($sp)
    add.d	$f14,$f13,$f14
    c.lt.d $f14,$f6
    movt.d	$f6,$f13,$fcc4
    div.d	$f13,$f6,$f13
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($a4)
    sdc1	$f6,40($sp)
    jalr	$t9
    nmsub.d	$f12,$f12,$f13,$f13
    ldc1	$f12,40($sp)
    ldc1	$f13,152($sp)
    lw	$t9,-28540($gp)
    sub.d	$f12,$f20,$f12
    ld	$ra,200($sp)
    sdc1	$f0,48($sp)
    mul.d	$f12,$f12,$f12
    addiu	$ra,$ra,8
    sd	$ra,200($sp)
    jalr	$t9
    msub.d	$f12,$f12,$f13,$f13
    ldc1	$f14,160($sp)
    ldc1	$f13,48($sp)
    msub.d	$f13,$f0,$f13,$f14
    ld	$a2,232($sp)
    la	$at,_rodata_symbol
    ld	$a1,200($sp)
    ldc1	$f5,10512($at)
    b	.L0157892c
    sdc1	$f13,-8($a1)
.L015789d4:
    lw	$t9,-28540($gp)
    jalr	$t9
    nop
    ldc1	$f5,80($sp)
    la	$a1,_rodata_symbol
    ldc1	$f6,10512($a1)
    add.d	$f5,$f0,$f5
    mul.d	$f5,$f5,$f6
    c.le.d $f22,$f5
    bc1f .L01578a34
    ldc1	$f7,24600($a1)
    ldc1	$f6,112($sp)
    add.d	$f6,$f6,$f7
    c.lt.d $f5,$f6
    bc1t .L01578abc
    ldc1	$f14,24608($a1)
    c.lt.d $f24,$f22
    bc1t .L0157870c
    mov.d	$f5,$f24
    addiu	$a1,$sp,0
    b	.L01578718
    addiu	$a2,$sp,8
.L01578a2c:
    b	.L01578820
    mov.d	$f0,$f6
.L01578a34:
    c.lt.d	$f24,$f22
    bc1t	.L0157870c
    mov.d	$f5,$f24
    addiu	$a1,$sp,0
    b	.L01578718
    addiu	$a2,$sp,8
.L01578a4c:
    b	.L01578820
    mov.d	$f0,$f6
.L01578a54:
    ldc1	$f13,112($sp)
    ldc1	$f14,24608($v0)
    add.d	$f14,$f13,$f14
    mov.d	$f24,$f0
    c.lt.d $f14,$f0
    movt.d	$f24,$f13,$fcc1
    div.d	$f13,$f24,$f13
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($v0)
    jalr	$t9
    nmsub.d	$f12,$f12,$f13,$f13
    ldc1	$f13,152($sp)
    sub.d	$f12,$f20,$f24
    lw	$t9,-28540($gp)
    mul.d	$f12,$f12,$f12
    sdc1	$f0,32($sp)
    jalr	$t9
    msub.d	$f12,$f12,$f13,$f13
    ldc1	$f14,160($sp)
    ldc1	$f13,32($sp)
    msub.d	$f13,$f0,$f13,$f14
    ld	$a1,200($sp)
    ld	$a2,232($sp)
    addiu	$a1,$a1,8
    b	.L01578950
    sdc1	$f13,-8($a1)
.L01578abc:
    ldc1	$f13,112($sp)
    add.d	$f14,$f13,$f14
    c.lt.d $f14,$f5
    movt.d	$f5,$f13,$fcc2
    div.d	$f13,$f5,$f13
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($a1)
    sdc1	$f5,24($sp)
    jalr	$t9
    nmsub.d	$f12,$f12,$f13,$f13
    ldc1	$f12,24($sp)
    ldc1	$f13,152($sp)
    lw	$t9,-28540($gp)
    sub.d	$f12,$f20,$f12
    mul.d	$f12,$f12,$f12
    sdc1	$f0,16($sp)
    jalr	$t9
    msub.d	$f12,$f12,$f13,$f13
    ldc1	$f14,160($sp)
    ldc1	$f13,16($sp)
    msub.d	$f13,$f0,$f13,$f14
    addiu	$a2,$sp,8
    mov.d	$f5,$f24
    move	$a1,$a2
    b	.L01578718
    sdc1	$f13,0($sp)

glabel computeDashMap__LO
    addiu	$sp,$sp,-176
    sdc1	$f20,56($sp)
    sdc1	$f22,40($sp)
    sdc1	$f24,32($sp)
    sd	$ra,144($sp)
    sd	$s7,104($sp)
    la	$s7,hypot
    sd	$s2,168($sp)
    la	$s2,floor
    sd	$s8,96($sp)
    la	$s8,cos
    sd	$s6,152($sp)
    sd	$s4,136($sp)
    sd	$s3,160($sp)
    sd	$s5,112($sp)
    sd	$s0,128($sp)
    sdc1	$f28,24($sp)
    sd	$s1,120($sp)
    sdc1	$f30,16($sp)
    la	$at,_rodata_symbol
    sdc1	$f26,48($sp)
    ldc1	$f26,24664($at)
    ldc1	$f2,8($sp)
    lhu	$v1,6($a0)
    lhu	$v0,4($a0)
    ldc1	$f30,24672($at)
    mtc1	$v1,$f1
    sdc1	$f2,80($sp)
    mtc1	$v0,$f0
    ldc1	$f2,10512($at)
    ldc1	$f3,0($sp)
    cvt.d.w	$f1,$f1
    move	$s1,$a1
    ldc1	$f28,7392($at)
    cvt.d.w	$f0,$f0
    move	$s0,$zero
    li	$s5,91
    sdc1	$f3,88($sp)
    mul.d	$f1,$f1,$f2
    li	$s3,1
    li	$s4,2
    mul.d	$f0,$f0,$f2
    sdc1	$f1,64($sp)
    li	$s6,3
    b	.L015b58c8
    sdc1	$f0,72($sp)
    nop
    nop
.L015b5890:
    ldc1	$f12,80($sp)
    ldc1	$f13,88($sp)
    move	$t9,$s7
    sub.d	$f12,$f22,$f12
    jalr	$t9
    sub.d	$f13,$f20,$f13
    ldc1	$f13,-8($s1)
    add.d	$f13,$f13,$f0
    sdc1	$f13,0($s1)
.L015b58b4:
    addiu	$s0,$s0,1
    sdc1	$f22,80($sp)
    sdc1	$f20,88($sp)
    beq	$s0,$s5,.L015b5a74
    addiu	$s1,$s1,8
.L015b58c8:
    mtc1	$s0,$f24
    cvt.d.w	$f24,$f24
    mul.d	$f24,$f26,$f24
    div.d	$f24,$f24,$f26
    div.d	$f20,$f24,$f26
    move	$t9,$s2
    jalr	$t9
    mov.d	$f12,$f20
    c.eq.d	$f0,$f20
    trunc.w.d	$f25,$f20
    bc1f	.L015b5940
    mfc1	$a1,$f25
    sra	$a3,$a1,0x1f
    bltz	$a1,.L015b59ec
    xor	$a4,$a1,$a3
    subu	$a2,$a4,$a3
    andi	$a2,$a2,0x3
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
.L015b5914:
    beqz	$a2,.L015b5a18
    la	$a7,_rodata_symbol
    beq	$a2,$s3,.L015b5a54
    dmtc1	$zero,$f5
    beq	$a2,$s4,.L015b5a64
    la	$t0,_rodata_symbol
    bne	$a2,$s6,.L015b5944
    mul.d	$f12,$f24,$f30
    dmtc1	$zero,$f5
    b	.L015b5958
    ldc1	$f22,72($sp)
.L015b5940:
    mul.d	$f12,$f24,$f30
.L015b5944:
    move	$t9,$s8
    jalr	$t9
    div.d	$f12,$f12,$f28
    mov.d	$f5,$f0
.L015b5954:
    ldc1	$f22,72($sp)
.L015b5958:
    move	$t9,$s2
    mov.d	$f12,$f20
    jalr	$t9
    mul.d	$f22,$f5,$f22
    c.eq.d $f0,$f20
    trunc.w.d	$f23,$f20
    bc1f .L015b59c0
    mfc1	$a1,$f23
    sra	$a3,$a1,0x1f
    bltz	$a1,.L015b5a20
    xor	$a4,$a1,$a3
    subu	$a2,$a4,$a3
    andi	$a2,$a2,0x3
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
.L015b5994:
    beqz	$a2,.L015b5a4c
    dmtc1	$zero,$f5
    beq	$a2,$s3,.L015b5a5c
    la	$a7,_rodata_symbol
    beq	$a2,$s4,.L015b5a6c
    dmtc1	$zero,$f5
    bne	$a2,$s6,.L015b59c4
    lw	$t9,-28296($gp)
    la	$a3,_rodata_symbol
    b	.L015b59d4
    ldc1	$f5,12648($a3)
.L015b59c0:
    lw	$t9,-28296($gp)
.L015b59c4:
    mul.d	$f12,$f24,$f30
    jalr	$t9
    div.d	$f12,$f12,$f28
    mov.d	$f5,$f0
.L015b59d4:
    ldc1	$f20,64($sp)
.L015b59d8:
    dmtc1	$zero,$f21
    bnez	$s0,.L015b5890
    mul.d	$f20,$f5,$f20
    b	.L015b58b4
    sdc1	$f21,0($s1)
.L015b59ec:
    negu	$a3,$a1
    addiu	$a5,$a3,3
    slt	$a6,$a3,$zero
    movz	$a5,$a3,$a6
    li	$a2,4
    sra	$a5,$a5,0x2
    mult	$a5,$a2
    mflo	$a4
    subu	$a3,$a3,$a4
    b	.L015b5914
    subu	$a2,$a2,$a3
.L015b5a18:
    b	.L015b5954
    ldc1	$f5,11856($a7)
.L015b5a20:
    negu	$a3,$a1
    addiu	$a5,$a3,3
    slt	$a6,$a3,$zero
    movz	$a5,$a3,$a6
    li	$a2,4
    sra	$a5,$a5,0x2
    mult	$a5,$a2
    mflo	$a4
    subu	$a3,$a3,$a4
    b	.L015b5994
    subu	$a2,$a2,$a3
.L015b5a4c:
    b	.L015b59d8
    ldc1	$f20,64($sp)
.L015b5a54:
    b	.L015b5958
    ldc1	$f22,72($sp)
.L015b5a5c:
    b	.L015b59d4
    ldc1	$f5,11856($a7)
.L015b5a64:
    b	.L015b5954
    ldc1	$f5,12648($t0)
.L015b5a6c:
    b	.L015b59d8
    ldc1	$f20,64($sp)
.L015b5a74:
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,168($sp)
    ld	$s3,160($sp)
    ld	$s4,136($sp)
    ld	$s5,112($sp)
    ld	$s6,152($sp)
    ld	$s7,104($sp)
    ld	$s8,96($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ld	$ra,144($sp)
    ldc1	$f26,48($sp)
    ldc1	$f28,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,176

glabel drawQuadrant__FAB
    addiu	$sp,$sp,-640
    sd	$zero,400($sp)
    sd	$zero,512($sp)
    sd	$zero,528($sp)
    sd	$zero,520($sp)
    sd	$ra,424($sp)
    sd	$s0,416($sp)
    sd	$s7,408($sp)
    mtc1	$a3,$f2
    la	$v0,_rodata_symbol
    sd	$a4,464($sp)
    mtc1	$a2,$f1
    ldc1	$f0,24744($v0)
    sd	$s4,432($sp)
    cvt.d.w	$f2,$f2
    move	$a2,$a1
    move	$s4,$a0
    lw	$t9,-31336($gp)
    cvt.d.w	$f1,$f1
    move	$a4,$a6
    move	$s7,$a7
    sd	$a3,376($sp)
    mul.d	$f2,$f0,$f2
    move	$a3,$a5
    move	$s0,$a1
    mul.d	$f0,$f0,$f1
    sdc1	$f2,32($a0)
    nop
    addiu	$a1,$sp,16
    jalr	$t9
    sdc1	$f0,24($a0)
    ldc1	$f6,32($sp)
    ldc1	$f5,48($sp)
    c.lt.d $f5,$f6
    li	$a0,1
    ldc1	$f0,72($s0)
    movf	$a0,$zero,$fcc1
    sdc1	$f24,256($sp)
    movz.d	$f5,$f6,$a0
    sdc1	$f22,248($sp)
    sdc1	$f28,608($sp)
    sub.d	$f5,$f5,$f0
    sdc1	$f30,600($sp)
    sdc1	$f20,232($sp)
    trunc.w.d	$f3,$f5
    sd	$s5,368($sp)
    sd	$s1,360($sp)
    cvt.d.w	$f4,$f3
    sd	$s6,352($sp)
    sd	$s8,344($sp)
    c.eq.d	$f4,$f5
    sd	$s3,336($sp)
    sd	$s2,328($sp)
    swc1	$f3,19324($gp)
    bc1t	.L015d11bc
    mfc1	$a0,$f3
    dmtc1	$zero,$f7
    c.lt.d $f5,$f7
    bc1f .L015d1ca8
.L015d11bc:
    move	$s5,$a0
.L015d11c0:
    ldc1	$f12,56($sp)
    ldc1	$f13,40($sp)
    c.lt.d $f13,$f12
    lw	$t9,-28292($gp)
    movf.d	$f12,$f13,$fcc3
    sdc1	$f26,240($sp)
    jalr	$t9
    sub.d	$f12,$f12,$f0
    lw	$a2,12($s7)
    lbu	$a1,16($s7)
    lw	$a3,0($s7)
    sd	$a3,440($sp)
    mov.d	$f26,$f0
    beqz	$a1,.L015d121c
    sd	$a2,448($sp)
    ld	$a2,376($sp)
    ld	$a1,464($sp)
    li	$a3,5760
    beq	$a2,$a3,.L015d2788
    andi	$a1,$a1,0x1
    ld	$a4,440($sp)
.L015d1214:
    addiu	$a4,$a4,8
    sd	$a4,440($sp)
.L015d121c:
    lw	$a1,4($s7)
    sd	$s7,392($sp)
    blez	$a1,.L015d1880
    move	$s3,$zero
    ld	$s2,440($sp)
    sd	$s7,392($sp)
    ld	$a6,464($sp)
    ld	$s1,448($sp)
    andi	$t1,$a6,0x8
    sd	$t1,472($sp)
    andi	$t0,$a6,0x1
    sd	$t0,552($sp)
    trunc.w.d	$f14,$f26
    andi	$a7,$a6,0x4
    sd	$a7,480($sp)
    dmtc1	$zero,$f20
    andi	$a6,$a6,0x2
    sd	$a6,560($sp)
    subu	$a5,$s1,$a1
    sd	$a5,584($sp)
    b	.L015d2944
    mfc1	$s6,$f14
.L015d1274:
    mtc1	$s1,$f22
.L015d1278:
    ldc1	$f12,72($s0)
    lw	$t9,-29116($gp)
    move	$a1,$s4
    cvt.d.w	$f22,$f22
    addiu	$a2,$sp,16
    move	$a3,$s0
    move	$a4,$zero
    jalr	$t9
    add.d	$f12,$f12,$f22
    ldc1	$f8,88($sp)
    lw	$t2,96($s0)
    ldc1	$f9,80($sp)
    ldc1	$f5,64($s0)
    mov.d	$f6,$f0
    beqz	$t2,.L015d12e4
    ldc1	$f10,72($s0)
    add.d	$f7,$f10,$f22
    c.le.d $f9,$f7
    bc1f .L015d12e4
    c.le.d $f7,$f8
    bc1f .L015d12e8
    sub.d	$f11,$f5,$f6
    ldc1	$f8,80($s0)
    ldc1	$f6,88($s0)
    madd.d	$f6,$f6,$f8,$f7
    c.lt.d $f6,$f0
    movt.d	$f6,$f0,$fcc5
.L015d12e4:
    sub.d	$f11,$f5,$f6
.L015d12e8:
    trunc.w.d	$f10,$f11
    add.d	$f8,$f6,$f5
    cvt.d.w	$f12,$f10
    trunc.w.d	$f7,$f8
    c.eq.d $f12,$f11
    cvt.d.w	$f9,$f7
    mfc1	$a3,$f10
    c.lt.d $f11,$f20
    mfc1	$a2,$f7
    move	$a1,$a3
    bc1t .L015d1320
    c.eq.d $f9,$f8
    bc1f .L015d1820
    nop
.L015d1320:
    c.lt.d $f8,$f20
.L015d1324:
    swc1	$f7,19324($gp)
    bc1t .L015d1334
    negu	$s7,$a1
    bc1f .L015d182c
.L015d1334:
    move	$a1,$a2
    move	$a0,$a1
.L015d133c:
    slt	$t3,$s8,$a0
.L015d1340:
    beqz	$t3,.L015d139c
    ld	$t8,552($sp)
    beqz	$t8,.L015d1370
    sd	$a0,384($sp)
    lw	$a2,136($s0)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    ld	$a3,384($sp)
    subu	$a0,$a0,$s1
    addu	$a1,$a2,$s8
    jalr	$t9
    addu	$a2,$a2,$a3
.L015d1370:
    ld	$a1,472($sp)
    beqz	$a1,.L015d13a0
    ld	$a1,592($sp)
    lw	$a2,136($s0)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    ld	$a3,384($sp)
    addu	$a0,$a0,$s1
    addu	$a1,$a2,$s8
    jalr	$t9
    addu	$a2,$a2,$a3
.L015d139c:
    ld	$a1,592($sp)
.L015d13a0:
    slt	$a1,$a1,$s7
    beqz	$a1,.L015d1400
    ld	$a2,560($sp)
    beqz	$a2,.L015d13d8
    ld	$a1,480($sp)
    lw	$a2,136($s0)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    ld	$a3,592($sp)
    subu	$a0,$a0,$s1
    subu	$a1,$a2,$s7
    jalr	$t9
    subu	$a2,$a2,$a3
    ld	$a1,480($sp)
.L015d13d8:
    beqz	$a1,.L015d1400
    la	$a3,newFinalSpan__CAB
    lw	$a2,136($s0)
    lw	$a0,132($s0)
    ld	$a4,592($sp)
    move	$t9,$a3
    addu	$a0,$a0,$s1
    subu	$a1,$a2,$s7
    jalr	$t9
    subu	$a2,$a2,$a4
.L015d1400:
    lw	$a2,108($sp)
    lh	$s7,4($s2)
    lh	$s8,6($s2)
    lw	$a1,104($sp)
    slt	$a3,$a2,$s1
    addu	$a4,$s8,$s7
    negu	$s7,$s7
    negu	$s8,$s8
    beqz	$a4,.L015d1448
    slt	$a1,$s1,$a1
    bnez	$a1,.L015d1438
    nop
    beqz	$a3,.L015d1838
    move	$a0,$s1
.L015d1438:
    ldc1	$f14,8($s4)
    ldc1	$f13,0($s4)
    c.eq.d $f13,$f14
    bc1f .L015d15b0
.L015d1448:
    ld	$t8,584($sp)
.L015d144c:
    addiu	$s1,$s1,-1
    addiu	$s2,$s2,8
    move	$s8,$zero
    beq	$s1,$t8,.L015d1880
    addiu	$s3,$s3,1
    lw	$a4,100($sp)
.L015d1464:
    slt	$t9,$s1,$s5
    slt	$a2,$s6,$s1
    lw	$a1,96($sp)
    bnez	$t9,.L015d1920
    slt	$a3,$a4,$s1
    bnez	$a2,.L015d144c
    ld	$t8,584($sp)
    lh	$at,2($s2)
    slt	$ra,$s1,$a1
    lh	$v0,0($s2)
    sd	$v0,576($sp)
    addu	$at,$at,$v0
    bnez	$ra,.L015d14ac
    sd	$at,568($sp)
    bnez	$a3,.L015d14b0
    mtc1	$s1,$f22
    b	.L015d1580
    sd	$zero,592($sp)
.L015d14ac:
    mtc1	$s1,$f22
.L015d14b0:
    ldc1	$f12,72($s0)
    lw	$t9,-29116($gp)
    move	$a1,$s4
    cvt.d.w	$f22,$f22
    addiu	$a2,$sp,16
    move	$a3,$s0
    li	$a4,1
    jalr	$t9
    add.d	$f12,$f12,$f22
    ldc1	$f8,72($sp)
    lw	$v1,120($s0)
    ldc1	$f10,64($sp)
    ldc1	$f5,64($s0)
    mov.d	$f6,$f0
    beqz	$v1,.L015d151c
    ldc1	$f9,72($s0)
    add.d	$f7,$f9,$f22
    c.le.d	$f10,$f7
    bc1f	.L015d151c
    c.le.d $f7,$f8
    bc1f .L015d1520
    sub.d	$f11,$f5,$f6
    ldc1	$f8,104($s0)
    ldc1	$f6,112($s0)
    madd.d	$f6,$f6,$f8,$f7
    c.lt.d $f6,$f0
    movf.d	$f6,$f0,$fcc1
.L015d151c:
    sub.d	$f11,$f5,$f6
.L015d1520:
    add.d	$f7,$f5,$f6
    trunc.w.d	$f10,$f11
    trunc.w.d	$f8,$f7
    cvt.d.w	$f12,$f10
    mfc1	$a3,$f8
    c.eq.d $f12,$f11
    cvt.d.w	$f9,$f8
    mfc1	$a4,$f10
    c.lt.d $f11,$f20
    move	$a2,$a4
    move	$s8,$a3
    bc1t .L015d155c
    c.eq.d $f9,$f7
    bc1f .L015d1808
    nop
.L015d155c:
    swc1	$f8,19324($gp)
.L015d1560:
    c.lt.d $f7,$f20
    negu	$a0,$a2
    bc1t .L015d1580
    sd	$a0,592($sp)
    bc1f .L015d1814
    nop
    nop
    nop
.L015d1580:
    lw	$a2,104($sp)
    ld	$s7,576($sp)
    lw	$a1,108($sp)
    slt	$a2,$s1,$a2
    negu	$s7,$s7
    ld	$a0,568($sp)
    bnez	$a2,.L015d1274
    slt	$a1,$a1,$s1
    bnez	$a1,.L015d1278
    mtc1	$s1,$f22
    b	.L015d1340
    slt	$t3,$s8,$a0
.L015d15b0:
    mtc1	$s1,$f22
    ldc1	$f23,72($s0)
    cvt.d.w	$f22,$f22
    lw	$t9,-31872($gp)
    add.d	$f22,$f22,$f23
    addiu	$a2,$sp,16
    move	$a1,$s4
    move	$a3,$s0
    jalr	$t9
    mov.d	$f12,$f22
    ldc1	$f8,64($sp)
    c.eq.d $f22,$f20
    lw	$a1,120($s0)
    mov.d	$f24,$f0
    ldc1	$f5,64($s0)
    negu	$a3,$s7
    ldc1	$f7,72($sp)
    mtc1	$a3,$f6
    bc1f .L015d1614
    c.le.d $f8,$f22
    cvt.d.w	$f23,$f6
    sub.d	$f23,$f23,$f5
    c.eq.d $f0,$f23
    bc1t .L015d144c
    ld	$t8,584($sp)
.L015d1614:
    beqz	$a1,.L015d1784
    sub.d	$f13,$f5,$f24
    bc1f .L015d1784
    sub.d	$f13,$f5,$f24
    mov.d	$f28,$f24
    c.le.d $f22,$f7
    sub.d	$f0,$f5,$f24
    negu	$a3,$s7
    mtc1	$a3,$f25
    bc1f .L015d1780
    c.lt.d $f0,$f20
    ldc1	$f8,104($s0)
    ldc1	$f7,112($s0)
    madd.d	$f7,$f7,$f8,$f22
    cvt.d.w	$f25,$f25
    sub.d	$f25,$f25,$f5
    trunc.w.d	$f8,$f0
    c.le.d $f25,$f7
    mfc1	$a1,$f8
    cvt.d.w	$f6,$f8
    ld	$a5,560($sp)
    move	$a2,$a1
    bc1f .L015d1678
    c.le.d $f7,$f24
    movt.d	$f28,$f7,$fcc5
.L015d1678:
    c.eq.d $f6,$f0
    bc1t .L015d168c
    nop
    bc1f .L015d2774
    nop
.L015d168c:
    slt	$a4,$a2,$s8
.L015d1690:
    beqz	$a4,.L015d1700
    add.d	$f10,$f5,$f28
    sw	$a1,19324($gp)
    sd	$a3,616($sp)
    beqz	$a5,.L015d16c8
    sd	$a2,320($sp)
    lw	$a2,136($s0)
    ld	$a1,320($sp)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    subu	$a0,$a0,$s1
    addu	$a1,$a1,$a2
    jalr	$t9
    addu	$a2,$a2,$s8
.L015d16c8:
    ld	$a1,480($sp)
    beqz	$a1,.L015d16f8
    ld	$a3,616($sp)
    lw	$a2,136($s0)
    ld	$a1,320($sp)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    addu	$a0,$a0,$s1
    addu	$a1,$a1,$a2
    jalr	$t9
    addu	$a2,$a2,$s8
    ld	$a3,616($sp)
.L015d16f8:
    ldc1	$f5,64($s0)
    add.d	$f10,$f5,$f28
.L015d1700:
    trunc.w.d	$f11,$f10
    cvt.d.w	$f9,$f11
    c.eq.d	$f9,$f10
    c.lt.d $f10,$f20
    bc1t	.L015d1720
    mfc1	$a1,$f11
    bc1f .L015d2780
    addiu	$s8,$a1,1
.L015d1720:
    move	$s8,$a1
    slt	$a2,$a3,$s8
.L015d1728:
    beqz	$a2,.L015d1780
    ld	$a3,552($sp)
    beqz	$a3,.L015d1754
    sw	$a1,19324($gp)
    lw	$a2,136($s0)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    subu	$a0,$a0,$s1
    subu	$a1,$a2,$s7
    jalr	$t9
    addu	$a2,$s8,$a2
.L015d1754:
    ld	$a1,472($sp)
    beqz	$a1,.L015d177c
    nop
    lw	$a2,136($s0)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    addu	$a0,$a0,$s1
    subu	$a1,$a2,$s7
    jalr	$t9
    addu	$a2,$s8,$a2
.L015d177c:
    ldc1	$f5,64($s0)
.L015d1780:
    sub.d	$f13,$f5,$f24
.L015d1784:
    trunc.w.d	$f12,$f13
    add.d	$f7,$f24,$f5
    cvt.d.w	$f14,$f12
    trunc.w.d	$f6,$f7
    c.eq.d $f14,$f13
    cvt.d.w	$f8,$f6
    c.lt.d $f13,$f20
    mfc1	$a3,$f12
    mfc1	$a2,$f6
    bc1t .L015d17b8
    c.eq.d $f8,$f7
    bc1f .L015d186c
    addiu	$a1,$a3,1
.L015d17b8:
    move	$a1,$a3
    c.lt.d $f7,$f20
.L015d17c0:
    move	$a3,$a2
    bc1t .L015d17d4
    swc1	$f6,19324($gp)
    bc1f .L015d1874
    nop
.L015d17d4:
    la	$s7,arcSpan__MP
.L015d17d8:
    move	$a0,$s1
    move	$a2,$zero
    move	$a4,$zero
    move	$t9,$s7
    move	$a5,$s4
    addiu	$a6,$sp,16
    ld	$t0,464($sp)
    move	$a7,$s0
    jalr	$t9
    sw	$t0,4($sp)
    b	.L015d144c
    ld	$t8,584($sp)
.L015d1808:
    addiu	$a2,$a4,1
    b	.L015d1560
    swc1	$f8,19324($gp)
.L015d1814:
    addiu	$s8,$a3,1
    b	.L015d1580
    nop
.L015d1820:
    addiu	$a1,$a3,1
    b	.L015d1324
    c.lt.d $f8,$f20
.L015d182c:
    addiu	$a1,$a2,1
    b	.L015d133c
    move	$a0,$a1
.L015d1838:
    move	$a1,$zero
    move	$a2,$s8
    lw	$t9,-28720($gp)
    move	$a7,$s0
    negu	$a3,$s7
    move	$a4,$s7
    move	$a5,$s4
    ld	$t1,464($sp)
    addiu	$a6,$sp,16
    jalr	$t9
    sw	$t1,4($sp)
    b	.L015d144c
    ld	$t8,584($sp)
.L015d186c:
    b	.L015d17c0
    c.lt.d $f7,$f20
.L015d1874:
    addiu	$a3,$a2,1
    b	.L015d17d8
    la	$s7,arcSpan__MP
.L015d1880:
    ld	$t2,448($sp)
    subu	$t2,$t2,$s3
    sd	$t2,448($sp)
    slt	$t2,$t2,$s5
    bnez	$t2,.L015d1924
    ldc1	$f28,608($sp)
    ld	$t3,392($sp)
    lbu	$t3,18($t3)
    beqz	$t3,.L015d18bc
    trunc.w.d	$f15,$f26
    ld	$t9,448($sp)
    mfc1	$t8,$f15
    slt	$t8,$t8,$t9
    beqz	$t8,.L015d27cc
    move	$a1,$zero
.L015d18bc:
    ld	$a1,392($sp)
.L015d18c0:
    lw	$a1,8($a1)
    ld	$a7,392($sp)
    blez	$a1,.L015d2804
    move	$s8,$zero
    ld	$s7,440($sp)
    ld	$s2,448($sp)
    ld	$t9,464($sp)
    subu	$v1,$s2,$a1
    sd	$v1,496($sp)
    andi	$v0,$t9,0x8
    sd	$v0,472($sp)
    andi	$at,$t9,0x1
    sd	$at,552($sp)
    dmtc1	$zero,$f20
    trunc.w.d	$f16,$f26
    andi	$ra,$t9,0x4
    sd	$ra,480($sp)
    sll	$t8,$s3,0x3
    andi	$t9,$t9,0x2
    sd	$t9,560($sp)
    addu	$s7,$s7,$t8
    sd	$s7,312($sp)
    b	.L015d1b10
    mfc1	$s6,$f16
.L015d1920:
    ldc1	$f28,608($sp)
.L015d1924:
    ldc1	$f30,600($sp)
    ld	$s0,416($sp)
    ld	$s1,360($sp)
    ld	$s2,328($sp)
    ld	$s3,336($sp)
    ld	$s4,432($sp)
    ld	$s5,368($sp)
    ld	$s6,352($sp)
    ld	$s7,408($sp)
    ld	$s8,344($sp)
    ldc1	$f20,232($sp)
    ld	$ra,424($sp)
    ldc1	$f22,248($sp)
    ldc1	$f24,256($sp)
    ldc1	$f26,240($sp)
    jr	$ra
    addiu	$sp,$sp,640
.L015d1968:
    mtc1	$s2,$f22
.L015d196c:
    ldc1	$f12,72($s0)
    lw	$t9,-29116($gp)
    move	$a1,$s4
    cvt.d.w	$f22,$f22
    addiu	$a2,$sp,16
    move	$a3,$s0
    move	$a4,$zero
    jalr	$t9
    add.d	$f12,$f12,$f22
    ldc1	$f10,88($sp)
    lw	$a0,96($s0)
    ldc1	$f9,80($sp)
    ldc1	$f5,64($s0)
    mov.d	$f6,$f0
    beqz	$a0,.L015d19d8
    ldc1	$f8,72($s0)
    add.d	$f7,$f8,$f22
    c.le.d $f9,$f7
    bc1f .L015d19d8
    c.le.d $f7,$f10
    bc1f .L015d19dc
    sub.d	$f10,$f5,$f6
    ldc1	$f8,80($s0)
    ldc1	$f6,88($s0)
    madd.d	$f6,$f6,$f8,$f7
    c.lt.d $f6,$f0
    movt.d	$f6,$f0,$fcc3
.L015d19d8:
    sub.d	$f10,$f5,$f6
.L015d19dc:
    trunc.w.d	$f9,$f10
    add.d	$f0,$f6,$f5
    cvt.d.w	$f11,$f9
    trunc.w.d	$f7,$f0
    mfc1	$a4,$f9
    c.eq.d $f11,$f10
    cvt.d.w	$f8,$f7
    mfc1	$a3,$f7
    c.lt.d $f10,$f20
    move	$s3,$a3
    move	$a1,$a4
    bc1t .L015d1a18
    c.eq.d $f8,$f0
    bc1f .L015d1c90
    nop
.L015d1a18:
    negu	$s1,$a1
.L015d1a1c:
    c.lt.d $f0,$f20
    bc1t .L015d1a30
    swc1	$f7,19324($gp)
    bc1f .L015d1c9c
    nop
.L015d1a30:
    ld	$a1,544($sp)
.L015d1a34:
    slt	$a1,$a1,$s3
    beqz	$a1,.L015d1a9c
    ld	$a1,536($sp)
    ld	$a2,552($sp)
    beqz	$a2,.L015d1a70
    ld	$a1,472($sp)
    lw	$a2,136($s0)
    ld	$a1,544($sp)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    subu	$a0,$a0,$s2
    addu	$a1,$a1,$a2
    jalr	$t9
    addu	$a2,$s3,$a2
    ld	$a1,472($sp)
.L015d1a70:
    beqz	$a1,.L015d1a9c
    ld	$a1,536($sp)
    lw	$a2,136($s0)
    ld	$a1,544($sp)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    addu	$a0,$a0,$s2
    addu	$a1,$a1,$a2
    jalr	$t9
    addu	$a2,$s3,$a2
    ld	$a1,536($sp)
.L015d1a9c:
    slt	$a1,$a1,$s1
    beqz	$a1,.L015d1afc
    ld	$a2,560($sp)
    beqz	$a2,.L015d1ad4
    ld	$a1,480($sp)
    lw	$a2,136($s0)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    ld	$a3,536($sp)
    subu	$a0,$a0,$s2
    subu	$a1,$a2,$s1
    jalr	$t9
    subu	$a2,$a2,$a3
    ld	$a1,480($sp)
.L015d1ad4:
    beqz	$a1,.L015d1b00
    ld	$a1,496($sp)
    lw	$a2,136($s0)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    ld	$a3,536($sp)
    addu	$a0,$a0,$s2
    subu	$a1,$a2,$s1
    jalr	$t9
    subu	$a2,$a2,$a3
.L015d1afc:
    ld	$a1,496($sp)
.L015d1b00:
    addiu	$s2,$s2,-1
    addiu	$s7,$s7,8
    beq	$s2,$a1,.L015d1cb0
    addiu	$s8,$s8,1
.L015d1b10:
    lw	$a4,100($sp)
    slt	$a3,$s2,$s5
    slt	$a1,$s6,$s2
    lw	$a2,96($sp)
    bnez	$a3,.L015d1920
    slt	$a3,$a4,$s2
    bnez	$a1,.L015d1b00
    ld	$a1,496($sp)
    lh	$a1,4($s7)
    lh	$a0,0($s7)
    lh	$a6,6($s7)
    slt	$a5,$s2,$a2
    sd	$a6,504($sp)
    bnez	$a5,.L015d1b68
    lh	$a5,2($s7)
    bnez	$a3,.L015d1b6c
    mtc1	$s2,$f22
    sd	$a1,544($sp)
    addu	$t0,$a5,$a0
    negu	$t0,$t0
    b	.L015d1c48
    sd	$t0,536($sp)
.L015d1b68:
    mtc1	$s2,$f22
.L015d1b6c:
    ldc1	$f12,72($s0)
    lw	$t9,-29116($gp)
    sd	$a1,624($sp)
    move	$a1,$s4
    cvt.d.w	$f22,$f22
    addiu	$a2,$sp,16
    move	$a3,$s0
    sd	$a0,632($sp)
    li	$a4,1
    jalr	$t9
    add.d	$f12,$f12,$f22
    ld	$a0,632($sp)
    ld	$a1,624($sp)
    ldc1	$f10,72($sp)
    lw	$t1,120($s0)
    ldc1	$f8,64($sp)
    ldc1	$f5,64($s0)
    mov.d	$f6,$f0
    beqz	$t1,.L015d1be8
    ldc1	$f9,72($s0)
    add.d	$f7,$f9,$f22
    c.le.d $f8,$f7
    bc1f .L015d1be8
    c.le.d $f7,$f10
    bc1f .L015d1bec
    sub.d	$f10,$f5,$f6
    ldc1	$f8,104($s0)
    ldc1	$f6,112($s0)
    madd.d	$f6,$f6,$f8,$f7
    c.lt.d $f6,$f0
    movf.d	$f6,$f0,$fcc6
.L015d1be8:
    sub.d	$f10,$f5,$f6
.L015d1bec:
    trunc.w.d	$f9,$f10
    add.d	$f0,$f6,$f5
    cvt.d.w	$f11,$f9
    trunc.w.d	$f7,$f0
    c.eq.d $f11,$f10
    cvt.d.w	$f8,$f7
    mfc1	$a4,$f9
    c.lt.d $f10,$f20
    mfc1	$a3,$f7
    move	$a2,$a4
    bc1t .L015d1c24
    c.eq.d $f8,$f0
    bc1f .L015d1c78
    nop
.L015d1c24:
    negu	$t2,$a2
.L015d1c28:
    sd	$t2,536($sp)
    c.lt.d $f0,$f20
    move	$a2,$a3
    bc1t .L015d1c44
    swc1	$f7,19324($gp)
    bc1f .L015d1c84
    nop
.L015d1c44:
    sd	$a2,544($sp)
.L015d1c48:
    lw	$a3,104($sp)
    ld	$s3,504($sp)
    lw	$a2,108($sp)
    slt	$a3,$s2,$a3
    negu	$s1,$a0
    addu	$s3,$a1,$s3
    bnez	$a3,.L015d1968
    slt	$a2,$a2,$s2
    bnez	$a2,.L015d196c
    mtc1	$s2,$f22
    b	.L015d1a34
    ld	$a1,544($sp)
.L015d1c78:
    addiu	$a2,$a4,1
    b	.L015d1c28
    negu	$t2,$a2
.L015d1c84:
    addiu	$a2,$a3,1
    b	.L015d1c48
    sd	$a2,544($sp)
.L015d1c90:
    addiu	$a1,$a4,1
    b	.L015d1a1c
    negu	$s1,$a1
.L015d1c9c:
    addiu	$s3,$a3,1
    b	.L015d1a30
    nop
.L015d1ca8:
    b	.L015d11c0
    addiu	$s5,$a0,1
.L015d1cb0:
    ld	$a4,464($sp)
    ld	$s7,312($sp)
    ld	$a6,392($sp)
    sll	$t1,$s8,0x3
    ld	$a2,448($sp)
    addu	$s7,$s7,$t1
    lbu	$a6,17($a6)
    andi	$a4,$a4,0xc
    subu	$a2,$a2,$s8
    sd	$a2,448($sp)
    xor	$a5,$s5,$a2
    slt	$a2,$a2,$s5
    ld	$s2,464($sp)
    beqz	$a6,.L015d1d48
    xori	$a1,$a2,0x1
    bne	$zero,$a2,.L015d1920
    ld	$a6,448($sp)
    slt	$a6,$s6,$a6
    bnez	$a6,.L015d1d4c
    addiu	$a7,$sp,120
    movz	$s2,$a4,$a5
    lh	$t2,6($s7)
    blez	$t2,.L015d28c0
.L015d1d0c:
    lw	$t9,-30928($gp)
    move	$a7,$s2
    move	$a6,$s0
    lh	$a2,4($s7)
    addiu	$a5,$sp,16
    move	$a4,$s4
    lh	$a1,2($s7)
    move	$a3,$t2
    jalr	$t9
    lh	$a0,0($s7)
    ld	$a1,448($sp)
.L015d1d38:
    addiu	$a1,$a1,-1
    sd	$a1,448($sp)
    slt	$a1,$a1,$s5
    xori	$a1,$a1,0x1
.L015d1d48:
    addiu	$a7,$sp,120
.L015d1d4c:
    beqz	$a1,.L015d1920
    ld	$s8,400($sp)
    dmtc1	$zero,$f20
    ld	$s1,448($sp)
    sd	$a7,456($sp)
    ld	$a2,464($sp)
    addiu	$a6,$s5,-1
    sd	$a6,488($sp)
    andi	$a5,$a2,0x2
    sd	$a5,560($sp)
    andi	$a4,$a2,0x4
    sd	$a4,480($sp)
    andi	$a3,$a2,0x1
    sd	$a3,552($sp)
    andi	$a2,$a2,0x8
    b	.L015d1f18
    sd	$a2,472($sp)
.L015d1d90:
    ldc1	$f12,72($s0)
    lw	$t9,-29116($gp)
    move	$a1,$s4
    addiu	$a2,$sp,16
    move	$a3,$s0
    move	$a4,$zero
    jalr	$t9
    add.d	$f12,$f12,$f28
    lw	$t0,96($s0)
    mov.d	$f6,$f0
    beqz	$t0,.L015d1df4
    ldc1	$f7,88($sp)
    ldc1	$f5,72($s0)
    ldc1	$f13,80($sp)
    add.d	$f5,$f5,$f28
    c.le.d	$f13,$f5
    bc1f	.L015d1df4
    c.le.d $f5,$f7
    bc1f .L015d1df4
    nop
    ldc1	$f7,80($s0)
    ldc1	$f6,88($s0)
    madd.d	$f6,$f6,$f7,$f5
    c.lt.d $f6,$f0
    movt.d	$f6,$f0,$fcc1
.L015d1df4:
    ldc1	$f5,64($s0)
    sub.d	$f9,$f5,$f6
    trunc.w.d	$f8,$f9
    cvt.d.w	$f10,$f8
    c.eq.d $f10,$f9
    c.lt.d $f9,$f20
    bc1t .L015d1e1c
    mfc1	$a0,$f8
    bc1f .L015d2484
    addiu	$a1,$a0,1
.L015d1e1c:
    move	$a1,$a0
    add.d	$f12,$f6,$f5
.L015d1e24:
    trunc.w.d	$f11,$f12
    cvt.d.w	$f13,$f11
    c.eq.d $f13,$f12
    negu	$s6,$a1
    c.lt.d $f12,$f20
    swc1	$f11,19324($gp)
    bc1t .L015d1e4c
    mfc1	$a0,$f11
    bc1f .L015d1e50
    addiu	$s3,$a0,1
.L015d1e4c:
    move	$s3,$a0
.L015d1e50:
    slt	$t1,$s2,$s3
    beqz	$t1,.L015d1eb0
    slt	$a1,$s5,$s6
    ld	$t2,552($sp)
    beqz	$t2,.L015d1e88
    ld	$a1,472($sp)
    lw	$a2,136($s0)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    subu	$a0,$a0,$s1
    addu	$a1,$s2,$a2
    jalr	$t9
    addu	$a2,$s3,$a2
    ld	$a1,472($sp)
.L015d1e88:
    beqz	$a1,.L015d1eb0
    slt	$a1,$s5,$s6
    lw	$a2,136($s0)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    addu	$a0,$a0,$s1
    addu	$a1,$s2,$a2
    jalr	$t9
    addu	$a2,$s3,$a2
    slt	$a1,$s5,$s6
.L015d1eb0:
    beqz	$a1,.L015d1f0c
    ld	$a1,488($sp)
    ld	$a2,560($sp)
    beqz	$a2,.L015d1ee4
    ld	$a1,480($sp)
    lw	$a2,136($s0)
    lw	$a0,128($s0)
    lw	$t9,-29932($gp)
    subu	$a0,$a0,$s1
    subu	$a1,$a2,$s6
    jalr	$t9
    subu	$a2,$a2,$s5
    ld	$a1,480($sp)
.L015d1ee4:
    beqz	$a1,.L015d1f0c
    ld	$a1,488($sp)
    lw	$a2,136($s0)
    lw	$a0,132($s0)
    lw	$t9,-29932($gp)
    addu	$a0,$a0,$s1
    subu	$a1,$a2,$s6
    jalr	$t9
    subu	$a2,$a2,$s5
    ld	$a1,488($sp)
.L015d1f0c:
    addiu	$s1,$s1,-1
    beq	$s1,$a1,.L015d1920
    nop
.L015d1f18:
    ldc1	$f9,8($s4)
    ldc1	$f26,0($s4)
    mtc1	$s1,$f28
    ldc1	$f22,72($s0)
    c.eq.d $f9,$f26
    cvt.d.w	$f28,$f28
    ldc1	$f24,16($s4)
    bc1t .L015d2008
    add.d	$f22,$f22,$f28
    mul.d	$f7,$f24,$f26
    ldc1	$f6,24($s0)
    nmsub.d	$f30,$f6,$f7,$f7
    ldc1	$f5,40($s0)
    c.eq.d $f22,$f20
    neg.d	$f5,$f5
    ldc1	$f0,8($s0)
    bc1f .L015d2184
    div.d	$f30,$f30,$f5
    c.lt.d $f30,$f20
    neg.d	$f6,$f30
    bc1f .L015d1f78
    c.lt.d $f6,$f0
    bc1t .L015d25ac
    nop
.L015d1f78:
    lw	$a1,120($s0)
    lw	$a0,96($s0)
    sub.d	$f7,$f26,$f24
    sdc1	$f7,304($sp)
.L015d1f88:
    sd	$zero,512($sp)
    sd	$zero,528($sp)
    sd	$zero,520($sp)
    move	$s8,$zero
    beqz	$a0,.L015d1fd0
    ldc1	$f6,304($sp)
    ldc1	$f8,80($sp)
    c.le.d $f8,$f22
    bc1f .L015d1fd0
    ldc1	$f9,88($sp)
    c.le.d	$f22,$f9
    bc1f	.L015d1fd0
    nop
    ldc1	$f11,80($s0)
    ldc1	$f10,88($s0)
    madd.d	$f10,$f10,$f11,$f22
    c.lt.d $f10,$f6
    movt.d	$f6,$f10,$fcc1
.L015d1fd0:
    beqz	$a1,.L015d2024
    ldc1	$f12,64($sp)
    c.le.d $f12,$f22
    bc1f .L015d2024
    ldc1	$f13,72($sp)
    c.le.d $f22,$f13
    bc1f .L015d2024
    nop
    ldc1	$f15,104($s0)
    ldc1	$f14,112($s0)
    madd.d	$f14,$f14,$f15,$f22
    c.lt.d $f14,$f6
    b	.L015d2024
    movt.d	$f6,$f14,$fcc4
.L015d2008:
    la	$s2,sqrt
    sub.d	$f13,$f26,$f24
    move	$t9,$s2
    mul.d	$f12,$f22,$f22
    jalr	$t9
    msub.d	$f12,$f12,$f13,$f13
    neg.d	$f6,$f0
.L015d2024:
    ldc1	$f5,64($s0)
    sub.d	$f0,$f5,$f6
    trunc.w.d	$f14,$f0
    cvt.d.w	$f15,$f14
    c.eq.d $f15,$f0
    bc1t .L015d204c
    mfc1	$a0,$f14
    c.lt.d $f0,$f20
    bc1f .L015d23d0
    addiu	$s7,$a0,1
.L015d204c:
    move	$s7,$a0
    add.d	$f0,$f5,$f6
.L015d2054:
    trunc.w.d	$f16,$f0
    cvt.d.w	$f17,$f16
    c.eq.d $f17,$f0
    swc1	$f16,19324($gp)
    bc1t .L015d2078
    mfc1	$a0,$f16
    c.lt.d	$f0,$f20
    bc1f	.L015d23d8
    addiu	$s3,$a0,1
.L015d2078:
    move	$s3,$a0
    lw	$a2,96($sp)
.L015d2080:
    slt	$a2,$s1,$a2
    bnez	$a2,.L015d20a0
    lw	$a3,100($sp)
    slt	$a3,$a3,$s1
    bnez	$a3,.L015d20a0
    negu	$s5,$s7
    b	.L015d2160
    move	$s2,$s3
.L015d20a0:
    ldc1	$f12,72($s0)
    lw	$t9,-29116($gp)
    move	$a1,$s4
    addiu	$a2,$sp,16
    move	$a3,$s0
    li	$a4,1
    jalr	$t9
    add.d	$f12,$f12,$f28
    lw	$a4,120($s0)
    mov.d	$f6,$f0
    beqz	$a4,.L015d2104
    ldc1	$f7,72($sp)
    ldc1	$f5,72($s0)
    ldc1	$f13,64($sp)
    add.d	$f5,$f5,$f28
    c.le.d $f13,$f5
    bc1f .L015d2104
    c.le.d $f5,$f7
    bc1f .L015d2104
    nop
    ldc1	$f7,104($s0)
    ldc1	$f6,112($s0)
    madd.d	$f6,$f6,$f7,$f5
    c.lt.d $f6,$f0
    movf.d	$f6,$f0,$fcc2
.L015d2104:
    ldc1	$f5,64($s0)
    sub.d	$f9,$f5,$f6
    trunc.w.d	$f8,$f9
    cvt.d.w	$f10,$f8
    c.eq.d $f10,$f9
    c.lt.d $f9,$f20
    bc1t .L015d212c
    mfc1	$a0,$f8
    bc1f .L015d247c
    addiu	$a1,$a0,1
.L015d212c:
    move	$a1,$a0
    add.d	$f12,$f6,$f5
.L015d2134:
    trunc.w.d	$f11,$f12
    cvt.d.w	$f13,$f11
    c.eq.d $f13,$f12
    negu	$s5,$a1
    c.lt.d $f12,$f20
    swc1	$f11,19324($gp)
    bc1t .L015d215c
    mfc1	$a0,$f11
    bc1f .L015d2160
    addiu	$s2,$a0,1
.L015d215c:
    move	$s2,$a0
.L015d2160:
    lw	$a5,104($sp)
    slt	$a5,$s1,$a5
    bnez	$a5,.L015d1d90
    lw	$a6,108($sp)
    slt	$a6,$a6,$s1
    bnez	$a6,.L015d1d90
    nop
    b	.L015d1e50
    negu	$s6,$s7
.L015d2184:
    add.d	$f11,$f5,$f5
    mul.d	$f10,$f0,$f7
    div.d	$f10,$f10,$f11
    madd.d	$f8,$f30,$f22,$f22
    la	$a7,_rodata_symbol
    ldc1	$f11,24616($a7)
    div.d	$f8,$f8,$f11
    mul.d	$f10,$f22,$f10
    mul.d	$f11,$f8,$f8
    sdc1	$f10,288($sp)
    mul.d	$f10,$f10,$f10
    madd.d	$f10,$f10,$f8,$f11
    madd.d	$f12,$f10,$f8,$f11
    sdc1	$f5,168($sp)
    sdc1	$f20,112($sp)
    sdc1	$f9,192($sp)
    c.lt.d $f12,$f20
    li	$a0,1
    li	$a1,1
    c.lt.d $f8,$f20
    mul.d	$f11,$f8,$f11
    sdc1	$f6,184($sp)
    move	$t0,$a0
    move	$t1,$a1
    neg.d	$f13,$f8
    movf	$t1,$zero,$fcc2
    mov.d	$f0,$f11
    bc1f .L015d2494
    c.lt.d $f10,$f20
    movf	$t0,$zero,$fcc1
    bne	$t0,$t1,.L015d2210
    sdc1	$f8,280($sp)
    sdc1	$f8,176($sp)
    neg.d	$f0,$f11
    sdc1	$f13,280($sp)
.L015d2210:
    la	$s3,acos
    neg.d	$f12,$f10
    move	$t9,$s3
    sdc1	$f8,176($sp)
    jalr	$t9
    div.d	$f12,$f12,$f0
    la	$t2,_rodata_symbol
    la	$s2,cos
    ldc1	$f12,24624($t2)
    move	$t9,$s2
    jalr	$t9
    div.d	$f12,$f0,$f12
    ldc1	$f14,280($sp)
    la	$s3,_rodata_symbol
    ldc1	$f15,1808($s3)
    mul.d	$f14,$f0,$f14
    ldc1	$f13,176($sp)
    nmsub.d	$f13,$f13,$f14,$f15
    ldc1	$f14,288($sp)
    c.lt.d	$f14,$f20
    li	$t3,1
    c.lt.d $f13,$f20
    li	$s3,1
    movf	$t3,$zero,$fcc0
    movf	$s3,$zero,$fcc7
    li	$t8,2
    xor	$t3,$t3,$s3
    li	$s3,1
    sltiu	$t3,$t3,1
    sdc1	$f13,296($sp)
    movn	$s3,$t8,$t3
.L015d228c:
    ldc1	$f12,296($sp)
    la	$s2,sqrt
    move	$t9,$s2
    add.d	$f12,$f12,$f12
    jalr	$t9
    sub.d	$f12,$f12,$f30
    ldc1	$f2,168($sp)
    ldc1	$f1,184($sp)
    div.d	$f1,$f1,$f2
    ldc1	$f31,296($sp)
    sub.d	$f1,$f1,$f31
    mul.d	$f1,$f22,$f1
    div.d	$f1,$f1,$f0
    la	$t8,_rodata_symbol
    sub.d	$f7,$f22,$f0
    ldc1	$f5,1816($t8)
    add.d	$f13,$f1,$f31
    mul.d	$f12,$f7,$f7
    nmsub.d	$f12,$f12,$f13,$f5
    add.d	$f6,$f0,$f22
    c.le.d $f20,$f12
    sub.d	$f31,$f31,$f1
    mul.d	$f30,$f6,$f6
    li	$t9,2
    bc1f .L015d2318
    nmsub.d	$f30,$f30,$f31,$f5
    sdc1	$f7,224($sp)
    addiu	$s2,$sp,112
    beq	$s3,$t9,.L015d2714
    sdc1	$f6,200($sp)
    c.lt.d $f30,$f20
    bc1t .L015d232c
    mov.d	$f12,$f30
    b	.L015d2338
    c.le.d $f20,$f12
.L015d2318:
    c.lt.d $f30,$f20
    mov.d	$f12,$f30
    addiu	$s2,$sp,112
    bc1f .L015d248c
    sdc1	$f6,200($sp)
.L015d232c:
    mov.d	$f12,$f20
    addiu	$s2,$sp,112
.L015d2334:
    c.le.d $f20,$f12
.L015d2338:
    bc1t .L015d24f8
.L015d233c:
    ldc1	$f6,64($sp)
    lw	$a0,96($s0)
    ld	$ra,456($sp)
    ldc1	$f5,88($sp)
    ldc1	$f0,80($sp)
    sltu	$ra,$ra,$s2
    lw	$a2,120($s0)
    lw	$a1,120($s0)
    beqz	$ra,.L015d23e0
    c.le.d $f22,$f5
    beqz	$a0,.L015d2400
    move	$a1,$a2
    c.le.d $f0,$f22
    bc1f .L015d2400
    move	$a1,$a2
    ldc1	$f7,56($sp)
    ldc1	$f0,112($sp)
    ldc1	$f3,48($sp)
    c.lt.d $f7,$f22
    c.le.d $f20,$f0
    bc1f .L015d23fc
    c.lt.d $f22,$f3
    bc1t .L015d23a4
    nop
    bc1f .L015d2400
    move	$a1,$a2
.L015d23a4:
    bc1f .L015d2400
    move	$a1,$a2
    li	$at,1
    ldc1	$f0,120($sp)
    c.le.d $f20,$f0
    bc1f .L015d2400
    move	$a1,$a2
    sdc1	$f0,304($sp)
    sd	$at,512($sp)
    b	.L015d2474
    lw	$a1,120($s0)
.L015d23d0:
    b	.L015d2054
    add.d	$f0,$f5,$f6
.L015d23d8:
    b	.L015d2080
    lw	$a2,96($sp)
.L015d23e0:
    bnez	$s8,.L015d1f88
    ldc1	$f6,112($sp)
    ldc1	$f5,304($sp)
    ld	$v0,528($sp)
    movz.d	$f5,$f6,$v0
    b	.L015d1f88
    sdc1	$f5,304($sp)
.L015d23fc:
    move	$a1,$a2
.L015d2400:
    beqz	$a2,.L015d2470
    ld	$a2,520($sp)
    c.le.d $f6,$f22
    bc1f .L015d246c
    li	$a2,1
    ldc1	$f9,72($sp)
    ldc1	$f7,40($sp)
    ldc1	$f8,32($sp)
    ldc1	$f0,112($sp)
    c.le.d	$f22,$f9
    c.lt.d $f7,$f22
    c.lt.d $f22,$f8
    bc1f	.L015d246c
    c.le.d $f0,$f20
    bc1t .L015d2448
    nop
    bc1f .L015d246c
    nop
.L015d2448:
    bc1f .L015d246c
    ld	$v1,520($sp)
    ldc1	$f11,120($sp)
    ldc1	$f10,304($sp)
    c.le.d $f11,$f20
    movt	$v1,$a2,$fcc1
    sd	$v1,520($sp)
    movt.d	$f10,$f11,$fcc1
    sdc1	$f10,304($sp)
.L015d246c:
    ld	$a2,520($sp)
.L015d2470:
    sd	$a2,528($sp)
.L015d2474:
    b	.L015d23e0
    ld	$s8,512($sp)
.L015d247c:
    b	.L015d2134
    add.d	$f12,$f6,$f5
.L015d2484:
    b	.L015d1e24
    add.d	$f12,$f6,$f5
.L015d248c:
    b	.L015d2338
    c.le.d $f20,$f12
.L015d2494:
    lw	$t9,-28540($gp)
    sdc1	$f10,216($sp)
    jalr	$t9
    sdc1	$f8,176($sp)
    ldc1	$f13,288($sp)
    lw	$t9,-28544($gp)
    ldc1	$f12,216($sp)
    mul.d	$f14,$f0,$f13
    madd.d	$f12,$f12,$f0,$f13
    jalr	$t9
    sdc1	$f14,272($sp)
    ldc1	$f13,272($sp)
    la	$s2,cbrt
    ldc1	$f12,216($sp)
    move	$t9,$s2
    sdc1	$f0,264($sp)
    jalr	$t9
    sub.d	$f12,$f12,$f13
    ldc1	$f15,176($sp)
    ldc1	$f14,264($sp)
    add.d	$f14,$f14,$f15
    add.d	$f14,$f0,$f14
    move	$s3,$zero
    b	.L015d228c
    sdc1	$f14,296($sp)
.L015d24f8:
    lw	$t9,-28540($gp)
    jalr	$t9
    nop
    ldc1	$f16,192($sp)
    la	$a4,_rodata_symbol
    ldc1	$f7,200($sp)
    ldc1	$f6,10512($a4)
    ldc1	$f17,24600($a4)
    add.d	$f7,$f0,$f7
    add.d	$f16,$f16,$f17
    mul.d	$f6,$f6,$f7
    c.lt.d $f6,$f16
    bc1t .L015d26b8
    mov.d	$f30,$f0
.L015d2530:
    ldc1	$f1,200($sp)
    la	$a5,_rodata_symbol
    ldc1	$f0,10512($a5)
    sub.d	$f1,$f1,$f30
    mul.d	$f0,$f0,$f1
    c.le.d $f20,$f0
    bc1f .L015d233c
    li	$a6,1
    bne	$s3,$a6,.L015d233c
    ldc1	$f14,24608($a5)
    ldc1	$f13,192($sp)
    add.d	$f14,$f13,$f14
    c.lt.d $f14,$f0
    movt.d	$f0,$f13,$fcc4
    div.d	$f13,$f0,$f13
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($a5)
    sdc1	$f0,144($sp)
    jalr	$t9
    nmsub.d	$f12,$f12,$f13,$f13
    ldc1	$f12,144($sp)
    lw	$t9,-28540($gp)
    sub.d	$f12,$f22,$f12
    mov.d	$f30,$f0
    mul.d	$f12,$f12,$f12
    jalr	$t9
    msub.d	$f12,$f12,$f24,$f24
    msub.d	$f13,$f0,$f30,$f26
    addiu	$s2,$s2,8
    b	.L015d233c
    sdc1	$f13,-8($s2)
.L015d25ac:
    div.d	$f13,$f30,$f0
    la	$t1,_rodata_symbol
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($t1)
    jalr	$t9
    add.d	$f12,$f12,$f13
    lw	$t9,-28540($gp)
    sdc1	$f0,208($sp)
    jalr	$t9
    madd.d	$f12,$f30,$f24,$f24
    ldc1	$f5,208($sp)
    lw	$a0,96($s0)
    msub.d	$f5,$f0,$f5,$f26
    ldc1	$f9,88($sp)
    ldc1	$f8,72($sp)
    ldc1	$f7,64($sp)
    sub.d	$f6,$f26,$f24
    sdc1	$f6,120($sp)
    c.le.d $f22,$f9
    c.le.d $f22,$f8
    beqz	$a0,.L015d2658
    sdc1	$f5,112($sp)
    ldc1	$f10,80($sp)
    c.le.d $f10,$f22
    bc1f .L015d2658
    ldc1	$f0,48($sp)
    c.le.d $f20,$f5
    ldc1	$f10,56($sp)
    c.le.d $f20,$f6
    bc1f .L015d2658
    c.lt.d	$f22,$f0
    c.lt.d $f10,$f22
    bc1t	.L015d263c
    nop
    bc1f .L015d2658
    nop
.L015d263c:
    bc1f .L015d2658
    nop
    bc1f .L015d2658
    nop
    sdc1	$f6,304($sp)
    b	.L015d1f88
    lw	$a1,120($s0)
.L015d2658:
    lw	$t2,120($s0)
    beqz	$t2,.L015d26b0
    move	$a1,$t2
    c.le.d $f7,$f22
    bc1f .L015d26b0
    ldc1	$f0,32($sp)
    c.le.d $f5,$f20
    ldc1	$f7,40($sp)
    c.le.d $f6,$f20
    bc1f .L015d26b0
    c.lt.d $f22,$f0
    c.lt.d $f7,$f22
    bc1t .L015d2698
    nop
    bc1f .L015d26b0
    nop
.L015d2698:
    bc1f .L015d26b0
    nop
    bc1f .L015d26b0
    nop
    b	.L015d1f88
    sdc1	$f6,304($sp)
.L015d26b0:
    b	.L015d1f88
    sdc1	$f5,304($sp)
.L015d26b8:
    ldc1	$f14,24608($a4)
    ldc1	$f13,192($sp)
    add.d	$f14,$f13,$f14
    c.lt.d $f14,$f6
    movt.d	$f6,$f13,$fcc3
    div.d	$f13,$f6,$f13
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($a4)
    sdc1	$f6,152($sp)
    jalr	$t9
    nmsub.d	$f12,$f12,$f13,$f13
    ldc1	$f12,152($sp)
    lw	$t9,-28540($gp)
    sub.d	$f12,$f22,$f12
    mul.d	$f12,$f12,$f12
    sdc1	$f0,160($sp)
    addiu	$s2,$s2,8
    jalr	$t9
    msub.d	$f12,$f12,$f24,$f24
    ldc1	$f13,160($sp)
    msub.d	$f13,$f0,$f13,$f26
    b	.L015d2530
    sdc1	$f13,-8($s2)
.L015d2714:
    lw	$t9,-28540($gp)
    jalr	$t9
    nop
    ldc1	$f8,224($sp)
    la	$ra,_rodata_symbol
    ldc1	$f7,10512($ra)
    add.d	$f8,$f0,$f8
    ldc1	$f14,192($sp)
    ldc1	$f15,24600($ra)
    mul.d	$f7,$f7,$f8
    c.lt.d $f30,$f20
    c.le.d $f20,$f7
    add.d	$f14,$f14,$f15
    c.lt.d $f30,$f20
    mov.d	$f12,$f30
    addiu	$s2,$sp,112
    bc1f .L015d27bc
    c.lt.d $f7,$f14
    bc1t .L015d2860
    ldc1	$f14,24608($ra)
    bc1t .L015d232c
    addiu	$s2,$sp,112
    b	.L015d2338
    c.le.d $f20,$f12
.L015d2774:
    addiu	$a2,$a1,1
    b	.L015d1690
    slt	$a4,$a2,$s8
.L015d2780:
    b	.L015d1728
    slt	$a2,$a3,$s8
.L015d2788:
    beqz	$a1,.L015d1214
    ld	$a4,440($sp)
    lw	$a2,136($s0)
    lw	$t9,-29932($gp)
    ld	$a3,448($sp)
    lw	$a0,128($s0)
    move	$a1,$a2
    addiu	$a2,$a2,1
    subu	$a0,$a0,$a3
    jalr	$t9
    addiu	$a0,$a0,-1
    b	.L015d1214
    ld	$a4,440($sp)
.L015d27bc:
    bc1t .L015d232c
    mov.d	$f12,$f30
    b	.L015d2338
    c.le.d $f20,$f12
.L015d27cc:
    ld	$a6,464($sp)
    move	$a2,$zero
    move	$a3,$zero
    lw	$t9,-28720($gp)
    li	$a4,1
    move	$a5,$s4
    ld	$a0,448($sp)
    move	$a7,$s0
    andi	$a6,$a6,0xc
    sw	$a6,4($sp)
    jalr	$t9
    addiu	$a6,$sp,16
    b	.L015d18c0
    ld	$a1,392($sp)
.L015d2804:
    lbu	$a7,17($a7)
    beqz	$a7,.L015d2938
    ld	$a1,448($sp)
    trunc.w.d	$f9,$f26
    ld	$t1,448($sp)
    mfc1	$t0,$f9
    slt	$t0,$t0,$t1
    bnez	$t0,.L015d292c
    ld	$a1,448($sp)
    ld	$t2,440($sp)
    ld	$t8,464($sp)
    sll	$t3,$s3,0x3
    addu	$t2,$t2,$t3
    sd	$t2,312($sp)
    lh	$t2,6($t2)
    ld	$t3,448($sp)
    move	$s2,$t8
    andi	$t8,$t8,0xc
    xor	$t3,$s5,$t3
    blez	$t2,.L015d28bc
    movz	$s2,$t8,$t3
    b	.L015d1d0c
    ld	$s7,312($sp)
.L015d2860:
    ldc1	$f13,192($sp)
    add.d	$f14,$f13,$f14
    c.lt.d $f14,$f7
    movt.d	$f7,$f13,$fcc6
    div.d	$f13,$f7,$f13
    lw	$t9,-28540($gp)
    ldc1	$f12,11856($ra)
    sdc1	$f7,128($sp)
    jalr	$t9
    nmsub.d	$f12,$f12,$f13,$f13
    ldc1	$f12,128($sp)
    lw	$t9,-28540($gp)
    sub.d	$f12,$f22,$f12
    mul.d	$f12,$f12,$f12
    sdc1	$f0,136($sp)
    jalr	$t9
    msub.d	$f12,$f12,$f24,$f24
    ldc1	$f13,136($sp)
    msub.d	$f13,$f0,$f13,$f26
    ld	$s2,456($sp)
    mov.d	$f12,$f30
    b	.L015d2334
    sdc1	$f13,112($sp)
.L015d28bc:
    ld	$s7,312($sp)
.L015d28c0:
    lh	$a0,0($s7)
    lh	$a3,2($s7)
    move	$a7,$s2
    move	$a6,$s0
    lw	$t9,-30928($gp)
    addiu	$a5,$sp,16
    move	$a4,$s4
    move	$a2,$zero
    addu	$a3,$a3,$a0
    jalr	$t9
    negu	$a1,$a0
    lh	$a7,4($s7)
    lh	$t2,6($s7)
    addu	$a4,$a7,$t2
    beqz	$a4,.L015d1d38
    ld	$a1,448($sp)
    move	$a6,$s2
    lw	$t9,-30948($gp)
    move	$a5,$s0
    addiu	$a4,$sp,16
    move	$a3,$s4
    negu	$a2,$a7
    ld	$a0,448($sp)
    jalr	$t9
    negu	$a1,$t2
    b	.L015d1d38
    ld	$a1,448($sp)
.L015d292c:
    slt	$a1,$a1,$s5
    b	.L015d1d48
    xori	$a1,$a1,0x1
.L015d2938:
    slt	$a1,$a1,$s5
    b	.L015d1d48
    xori	$a1,$a1,0x1
.L015d2944:
    move	$s8,$zero
    b	.L015d1464
    lw	$a4,100($sp)

glabel incrRRMpriv
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    move	$s0,$a0
    beqz	$a0,.L015daacc
    sd	$ra,24($sp)
    la	$a3,rrmWindowPrivateIndex
    lw	$t9,-28180($gp)
.L015daa0c:
    lw	$v0,0($a3)
    sll	$v0,$v0,0x2
    nop
    nop
    nop
.L015daa20:
    lw	$v1,132($s0)
    addu	$v1,$v1,$v0
    lw	$v1,0($v1)
    beqz	$v1,.L015daa50
    nop
    lw	$s0,24($s0)
    bnez	$s0,.L015daa20
    ld	$ra,24($sp)
.L015daa40:
    move	$v0,$zero
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015daa50:
    jalr	$t9
    li	$a0,76
    la	$a1,rrmScreenPrivateIndex
    lw	$a0,16($s0)
    lw	$a1,0($a1)
    lw	$a0,436($a0)
    sll	$a1,$a1,0x2
    sd	$v0,8($sp)
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    beqz	$v0,.L015daacc
    sd	$a0,0($sp)
    lw	$t9,-27872($gp)
    ld	$a0,8($sp)
    jalr	$t9
    li	$a1,76
    la	$v0,rrmWindowPrivateIndex
    lw	$v0,0($v0)
    lw	$at,132($s0)
    ld	$ra,8($sp)
    sll	$v0,$v0,0x2
    ld	$t9,0($sp)
    addu	$at,$at,$v0
    sw	$ra,0($at)
    lw	$t9,80($t9)
    beqz	$t9,.L015daae8
    ld	$v1,8($sp)
    jalr	$t9
    move	$a0,$s0
    b	.L015daaf0
    lw	$s0,24($s0)
.L015daacc:
    beqz	$s0,.L015daa40
    ld	$ra,24($sp)
    ld	$ra,24($sp)
    li	$v0,1
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L015daae8:
    sh	$zero,2($v1)
    lw	$s0,24($s0)
.L015daaf0:
    lw	$t9,-28180($gp)
    bnez	$s0,.L015daa0c
    la	$a3,rrmWindowPrivateIndex
    b	.L015daa40
    ld	$ra,24($sp)

glabel computeBound__JP
    addiu	$sp,$sp,-144
    sdc1	$f24,104($sp)
    sdc1	$f20,8($sp)
    sdc1	$f28,0($sp)
    dmtc1	$zero,$f28
    ldc1	$f20,24($a0)
    sd	$s2,128($sp)
    sd	$s4,48($sp)
    sd	$s3,64($sp)
    c.eq.d	$f20,$f28
    move	$s3,$a0
    sd	$s0,72($sp)
    li	$a6,1
    move	$s0,$a1
    sd	$s1,56($sp)
    movf	$a6,$zero,$fcc0
    move	$s1,$a2
    move	$s4,$a3
    sd	$s5,40($sp)
    move	$s5,$a4
    beqz	$a6,.L015db028
    sd	$ra,136($sp)
    la	$a1,sin
    sdc1	$f22,88($sp)
    sdc1	$f26,96($sp)
    mov.d	$f4,$f28
    sdc1	$f30,112($sp)
.L015dab7c:
    ldc1	$f26,32($s3)
    ldc1	$f22,8($s3)
    c.eq.d $f26,$f28
    li	$s2,1
    movf	$s2,$zero,$fcc1
    mul.d	$f30,$f22,$f4
    beqz	$s2,.L015db054
    sdc1	$f30,0($s0)
    mov.d	$f4,$f28
.L015daba0:
    la	$at,_rodata_symbol
    ldc1	$f6,24696($at)
    c.eq.d $f20,$f6
    ldc1	$f24,0($s3)
    mul.d	$f5,$f22,$f4
    bc1f .L015dabd0
    sdc1	$f5,8($s0)
    c.eq.d $f22,$f24
    bc1f .L015dabd0
    nop
    b	.L015dabe4
    mov.d	$f20,$f30
.L015dabd0:
    beqz	$a6,.L015db070
    la	$a0,_rodata_symbol
    la	$v0,_rodata_symbol
    ldc1	$f4,11856($v0)
.L015dabe0:
    mul.d	$f20,$f24,$f4
.L015dabe4:
    c.eq.d $f26,$f6
    bc1f .L015dac00
    c.eq.d $f22,$f24
    bc1f .L015dac00
    mov.d	$f22,$f5
    b	.L015dac18
    ldc1	$f12,32($s1)
.L015dac00:
    beqz	$s2,.L015db088
    la	$a0,_rodata_symbol
    la	$v1,_rodata_symbol
    ldc1	$f4,11856($v1)
.L015dac10:
    mul.d	$f22,$f24,$f4
    ldc1	$f12,32($s1)
.L015dac18:
    la	$s2,sqrt
    mul.d	$f14,$f30,$f30
    ldc1	$f13,24($s1)
    mul.d	$f26,$f20,$f20
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    jalr	$t9
    madd.d	$f12,$f12,$f13,$f26
    ldc1	$f15,56($s1)
    mul.d	$f15,$f15,$f30
    div.d	$f15,$f15,$f0
    ldc1	$f14,8($s0)
    ldc1	$f13,24($s1)
    ldc1	$f12,32($s1)
    sdc1	$f14,24($sp)
    mul.d	$f14,$f14,$f14
    move	$t9,$s2
    mul.d	$f24,$f22,$f22
    mul.d	$f12,$f12,$f14
    add.d	$f15,$f30,$f15
    madd.d	$f12,$f12,$f13,$f24
    jalr	$t9
    sdc1	$f15,32($s0)
    ldc1	$f16,24($sp)
    ldc1	$f17,56($s1)
    mul.d	$f17,$f17,$f16
    div.d	$f17,$f17,$f0
    ldc1	$f30,0($s0)
    ldc1	$f12,32($s1)
    ldc1	$f13,24($s1)
    mul.d	$f14,$f30,$f30
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    add.d	$f16,$f16,$f17
    madd.d	$f12,$f12,$f13,$f26
    jalr	$t9
    sdc1	$f16,40($s0)
    ldc1	$f18,56($s1)
    mul.d	$f18,$f18,$f30
    div.d	$f18,$f18,$f0
    ldc1	$f14,8($s0)
    ldc1	$f13,24($s1)
    ldc1	$f12,32($s1)
    sdc1	$f14,16($sp)
    mul.d	$f14,$f14,$f14
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    sub.d	$f18,$f30,$f18
    madd.d	$f12,$f12,$f13,$f24
    jalr	$t9
    sdc1	$f18,16($s0)
    ldc1	$f19,16($sp)
    ldc1	$f21,56($s1)
    mul.d	$f21,$f21,$f19
    div.d	$f21,$f21,$f0
    ldc1	$f14,0($s0)
    ldc1	$f12,32($s1)
    ldc1	$f13,24($s1)
    mul.d	$f14,$f14,$f14
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    sub.d	$f19,$f19,$f21
    madd.d	$f12,$f12,$f13,$f26
    jalr	$t9
    sdc1	$f19,24($s0)
    ldc1	$f23,48($s1)
    mul.d	$f23,$f23,$f20
    div.d	$f23,$f23,$f0
    ldc1	$f14,8($s0)
    ldc1	$f12,32($s1)
    ldc1	$f13,24($s1)
    mul.d	$f14,$f14,$f14
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    add.d	$f23,$f20,$f23
    madd.d	$f12,$f12,$f13,$f24
    jalr	$t9
    sdc1	$f23,32($sp)
    ldc1	$f30,48($s1)
    mul.d	$f30,$f30,$f22
    div.d	$f30,$f30,$f0
    ldc1	$f14,0($s0)
    ldc1	$f12,32($s1)
    ldc1	$f13,24($s1)
    mul.d	$f14,$f14,$f14
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    madd.d	$f12,$f12,$f13,$f26
    jalr	$t9
    add.d	$f30,$f22,$f30
    ldc1	$f26,48($s1)
    mul.d	$f26,$f26,$f20
    div.d	$f26,$f26,$f0
    ldc1	$f14,8($s0)
    ldc1	$f12,32($s1)
    ldc1	$f13,24($s1)
    mul.d	$f14,$f14,$f14
    move	$t9,$s2
    mul.d	$f12,$f12,$f14
    madd.d	$f12,$f12,$f13,$f24
    jalr	$t9
    sub.d	$f26,$f20,$f26
    ldc1	$f9,48($s1)
    mul.d	$f9,$f9,$f22
    div.d	$f9,$f9,$f0
    ldc1	$f8,32($s0)
    ldc1	$f5,16($s0)
    beqz	$s4,.L015dadf0
    sub.d	$f9,$f22,$f9
    sdc1	$f26,0($s4)
    sdc1	$f20,16($s4)
    sdc1	$f8,40($s4)
    ldc1	$f10,0($s0)
    ldc1	$f11,32($sp)
    ldc1	$f5,16($s0)
    sdc1	$f11,32($s4)
    sdc1	$f5,8($s4)
    sdc1	$f10,24($s4)
.L015dadf0:
    ldc1	$f4,24($s0)
    ldc1	$f7,40($s0)
    beqz	$s5,.L015dae18
    ldc1	$f6,8($s0)
    sdc1	$f9,32($s5)
    sdc1	$f4,40($s5)
    sdc1	$f22,16($s5)
    sdc1	$f6,24($s5)
    sdc1	$f30,0($s5)
    sdc1	$f7,8($s5)
.L015dae18:
    ld	$s5,40($sp)
    ldc1	$f22,88($sp)
    sdc1	$f8,56($s0)
    c.eq.d $f5,$f8
    sdc1	$f5,48($s0)
    sdc1	$f7,72($s0)
    bc1f .L015dae40
    sdc1	$f4,64($s0)
    b	.L015dae64
    sw	$zero,120($s1)
.L015dae40:
    ldc1	$f13,32($sp)
    sub.d	$f14,$f5,$f8
    sub.d	$f13,$f26,$f13
    div.d	$f13,$f13,$f14
    nmsub.d	$f12,$f26,$f13,$f5
    li	$a0,1
    sw	$a0,120($s1)
    sdc1	$f13,104($s1)
    sdc1	$f12,112($s1)
.L015dae64:
    c.eq.d $f4,$f7
    bc1f .L015dae78
    sub.d	$f15,$f9,$f30
    b	.L015dae94
    sw	$zero,96($s1)
.L015dae78:
    sub.d	$f16,$f4,$f7
    div.d	$f15,$f15,$f16
    nmsub.d	$f14,$f9,$f15,$f4
    li	$a1,1
    sw	$a1,96($s1)
    sdc1	$f15,80($s1)
    sdc1	$f14,88($s1)
.L015dae94:
    c.lt.d	$f4,$f5
    bc1f	.L015daea8
    nop
    sdc1	$f5,24($s0)
    sdc1	$f4,16($s0)
.L015daea8:
    ldc1	$f20,0($s1)
    c.lt.d $f6,$f20
    bc1f .L015daec0
    nop
    b	.L015daecc
    mov.d	$f20,$f6
.L015daec0:
    ldc1	$f17,0($s0)
    c.lt.d $f20,$f17
    movt.d	$f20,$f17,$fcc2
.L015daecc:
    move	$t9,$s2
    mul.d	$f24,$f20,$f20
    ldc1	$f12,8($s1)
    jalr	$t9
    nmsub.d	$f12,$f12,$f20,$f20
    ldc1	$f15,8($s3)
    ldc1	$f14,0($s3)
    div.d	$f14,$f14,$f15
    ldc1	$f12,32($s1)
    mul.d	$f14,$f0,$f14
    ldc1	$f13,24($s1)
    move	$t9,$s2
    mul.d	$f14,$f14,$f14
    mul.d	$f12,$f12,$f24
    jalr	$t9
    madd.d	$f12,$f12,$f13,$f14
    ldc1	$f6,56($s1)
    mul.d	$f6,$f6,$f20
    div.d	$f6,$f6,$f0
    ldc1	$f5,16($s0)
    sub.d	$f6,$f20,$f6
    c.lt.d $f6,$f5
    ld	$s2,128($sp)
    ld	$s3,64($sp)
    bc1f .L015daf3c
    ldc1	$f24,104($sp)
    mov.d	$f5,$f6
    sdc1	$f6,16($s0)
.L015daf3c:
    ldc1	$f4,24($s0)
    c.lt.d $f4,$f6
    bc1f .L015daf54
    nop
    mov.d	$f4,$f6
    sdc1	$f6,24($s0)
.L015daf54:
    ldc1	$f20,72($s1)
    sub.d	$f6,$f5,$f20
    trunc.w.d	$f7,$f6
    cvt.d.w	$f8,$f7
    c.eq.d $f8,$f6
    swc1	$f7,19324($gp)
    bc1t .L015daf80
    mfc1	$a0,$f7
    c.lt.d $f6,$f28
    bc1f .L015db018
    addiu	$a1,$a0,1
.L015daf80:
    move	$a1,$a0
    lw	$t9,-28292($gp)
.L015daf88:
    sw	$a1,80($s0)
    jalr	$t9
    sub.d	$f12,$f4,$f20
    ldc1	$f5,32($s0)
    sub.d	$f5,$f5,$f20
    trunc.w.d	$f9,$f5
    cvt.d.w	$f11,$f9
    c.eq.d $f11,$f5
    la	$a2,floor
    trunc.w.d	$f10,$f0
    swc1	$f10,84($s0)
    swc1	$f9,19324($gp)
    bc1t .L015dafd0
    mfc1	$a0,$f9
    c.lt.d	$f5,$f28
    addiu	$a1,$a0,1
    bc1f	.L015db020
    ldc1	$f28,0($sp)
.L015dafd0:
    ldc1	$f28,0($sp)
    move	$a1,$a0
    ld	$s4,48($sp)
.L015dafdc:
    ld	$s1,56($sp)
    ldc1	$f12,40($s0)
    ldc1	$f26,96($sp)
    move	$t9,$a2
    ldc1	$f30,112($sp)
    sw	$a1,88($s0)
    jalr	$t9
    sub.d	$f12,$f12,$f20
    ld	$ra,136($sp)
    ldc1	$f20,8($sp)
    trunc.w.d	$f13,$f0
    swc1	$f13,92($s0)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L015db018:
    b	.L015daf88
    lw	$t9,-28292($gp)
.L015db020:
    b	.L015dafdc
    ld	$s4,48($sp)
.L015db028:
    la	$a0,_rodata_symbol
    ldc1	$f14,24664($a0)
    sdc1	$f22,88($sp)
    sdc1	$f26,96($sp)
    c.eq.d $f20,$f14
    sdc1	$f30,112($sp)
    la	$a1,sin
    bc1f .L015db0a0
    ldc1	$f5,11856($a0)
.L015db04c:
    b	.L015dab7c
    mov.d	$f4,$f5
.L015db054:
    la	$a0,_rodata_symbol
    ldc1	$f15,24664($a0)
    c.eq.d $f26,$f15
    bc1f .L015db0cc
    ldc1	$f5,11856($a0)
.L015db068:
    b	.L015daba0
    mov.d	$f4,$f5
.L015db070:
    ldc1	$f16,24664($a0)
    c.eq.d $f20,$f16
    bc1f .L015db0f4
    mov.d	$f7,$f28
.L015db080:
    b	.L015dabe0
    mov.d	$f4,$f7
.L015db088:
    ldc1	$f17,24664($a0)
    c.eq.d $f26,$f17
    bc1f .L015db124
    mov.d	$f5,$f28
.L015db098:
    b	.L015dac10
    mov.d	$f4,$f5
.L015db0a0:
    ldc1	$f12,24672($a0)
    ldc1	$f13,7392($a0)
    lw	$t9,-28296($gp)
    mul.d	$f12,$f20,$f12
    sd	$a6,120($sp)
    jalr	$t9
    div.d	$f12,$f12,$f13
    ld	$a6,120($sp)
    la	$a1,sin
    b	.L015db04c
    mov.d	$f5,$f0
.L015db0cc:
    ldc1	$f12,24672($a0)
    ldc1	$f13,7392($a0)
    move	$t9,$a1
    mul.d	$f12,$f26,$f12
    sd	$a6,120($sp)
    jalr	$t9
    div.d	$f12,$f12,$f13
    ld	$a6,120($sp)
    b	.L015db068
    mov.d	$f5,$f0
.L015db0f4:
    ldc1	$f12,24672($a0)
    ldc1	$f13,7392($a0)
    lw	$t9,-28300($gp)
    mul.d	$f12,$f20,$f12
    sdc1	$f5,80($sp)
    jalr	$t9
    div.d	$f12,$f12,$f13
    la	$a2,_rodata_symbol
    ldc1	$f5,80($sp)
    mov.d	$f7,$f0
    b	.L015db080
    ldc1	$f6,24696($a2)
.L015db124:
    ldc1	$f12,24672($a0)
    ldc1	$f13,7392($a0)
    lw	$t9,-28300($gp)
    mul.d	$f12,$f26,$f12
    jalr	$t9
    div.d	$f12,$f12,$f13
    b	.L015db098
    mov.d	$f5,$f0

glabel appendRequestQueue__AF
    la	$a6,rrmWindowPrivateIndex
    lw	$a6,0($a6)
    lw	$a3,132($a0)
    lw	$a5,16($a0)
    sll	$a6,$a6,0x2
    la	$a7,rrmScreenPrivateIndex
    addu	$a3,$a3,$a6
    lw	$a3,0($a3)
    lw	$a7,0($a7)
    lhu	$at,0($a3)
    addiu	$sp,$sp,-16
    lw	$a5,436($a5)
    lw	$a4,18868($gp)
    sll	$a7,$a7,0x2
    andi	$at,$at,0x20
    sd	$ra,0($sp)
    addu	$a5,$a5,$a7
    beqz	$at,.L015f9190
    lw	$a5,0($a5)
.L015f916c:
    lbu	$a7,5($a3)
    or	$a7,$a7,$a1
    beqz	$a4,.L015f91c4
    sb	$a7,5($a3)
.L015f917c:
    lw	$t0,18872($gp)
    beqz	$t0,.L015f91e4
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L015f9190:
    lw	$t1,144($a5)
    beqz	$t1,.L015f920c
    sw	$t1,52($a3)
    lw	$t2,144($a5)
    lw	$t2,132($t2)
    addu	$t2,$t2,$a6
    lw	$t2,0($t2)
    sw	$a0,56($t2)
.L015f91b0:
    sw	$a0,144($a5)
    lhu	$t3,0($a3)
    ori	$t3,$t3,0x20
    b	.L015f916c
    sh	$t3,0($a3)
.L015f91c4:
    lw	$t9,-27784($gp)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    la	$a0,rrmWorkProc
    li	$t8,1
    b	.L015f917c
    sw	$t8,18868($gp)
.L015f91e4:
    lw	$t9,-27780($gp)
    la	$a1,rrmWakeupHandler__PE
    move	$a2,$zero
    jalr	$t9
    la	$a0,rrmBlockHandler__OE
    ld	$ra,0($sp)
    li	$t9,1
    sw	$t9,18872($gp)
    jr	$ra
    addiu	$sp,$sp,16
.L015f920c:
    b	.L015f91b0
    sw	$a0,140($a5)

glabel tailSpan__OP
    addiu	$sp,$sp,-128
    sd	$s1,80($sp)
    move	$t3,$a1
    lw	$at,88($a4)
    move	$t2,$a2
    move	$t1,$a6
    sd	$s3,72($sp)
    move	$s3,$a0
    sd	$s0,56($sp)
    slt	$at,$a0,$at
    move	$s0,$a3
    move	$s1,$a4
    sd	$s2,64($sp)
    move	$s2,$a5
    bnez	$at,.L016183f0
    sd	$ra,120($sp)
    lw	$v0,92($a4)
    slt	$v0,$v0,$a0
    beqz	$v0,.L016186e0
    move	$a1,$zero
.L016183f0:
    ldc1	$f1,8($s0)
    ldc1	$f0,0($s0)
    c.eq.d	$f0,$f1
    sd	$t3,48($sp)
    sd	$t2,40($sp)
    bc1t	.L016186b4
    sd	$t1,32($sp)
    mtc1	$s3,$f12
    ldc1	$f13,72($s2)
    lw	$t9,-31872($gp)
    cvt.d.w	$f12,$f12
    move	$a3,$s2
    move	$a2,$s1
    add.d	$f12,$f12,$f13
    move	$a1,$s0
    jalr	$t9
    sdc1	$f12,96($sp)
    dmtc1	$zero,$f8
    ldc1	$f6,96($sp)
    c.eq.d $f6,$f8
    bc1f .L01618468
    ldc1	$f5,64($s2)
    ld	$v1,40($sp)
    negu	$v1,$v1
    mtc1	$v1,$f13
    cvt.d.w	$f13,$f13
    sub.d	$f13,$f13,$f5
    c.eq.d $f0,$f13
    bc1t .L016186b4
    nop
.L01618468:
    lw	$a0,120($s2)
    beqz	$a0,.L01618644
    sub.d	$f7,$f5,$f0
    ldc1	$f14,48($s1)
    c.le.d $f14,$f6
    bc1f .L01618644
    sub.d	$f7,$f5,$f0
    ldc1	$f15,56($s1)
    c.le.d $f6,$f15
    bc1f .L01618644
    sub.d	$f7,$f5,$f0
    ldc1	$f13,104($s2)
    ld	$a5,40($sp)
    ldc1	$f11,112($s2)
    negu	$a5,$a5
    madd.d	$f11,$f11,$f13,$f6
    mtc1	$a5,$f16
    cvt.d.w	$f16,$f16
    sub.d	$f7,$f5,$f0
    sub.d	$f16,$f16,$f5
    trunc.w.d	$f13,$f7
    c.le.d $f16,$f11
    ld	$a7,32($sp)
    c.lt.d $f7,$f8
    mov.d	$f9,$f0
    cvt.d.w	$f10,$f13
    andi	$a7,$a7,0x2
    mfc1	$a0,$f13
    bc1f .L016184e4
    c.le.d $f11,$f0
    movt.d	$f9,$f11,$fcc5
.L016184e4:
    c.eq.d $f10,$f7
    bc1t .L016184f8
    move	$a3,$a0
    bc1f .L0161870c
    nop
.L016184f8:
    ld	$a6,48($sp)
    slt	$a6,$a3,$a6
    beqz	$a6,.L01618598
    add.d	$f15,$f5,$f9
    sw	$a0,19324($gp)
    sdc1	$f0,104($sp)
    sd	$a5,112($sp)
    beqz	$a7,.L01618548
    sd	$a3,24($sp)
    ld	$a1,24($sp)
    ld	$a2,48($sp)
    lw	$a3,136($s2)
    lw	$t9,-29932($gp)
    lw	$a0,128($s2)
    addu	$a2,$a3,$a2
    addu	$a1,$a1,$a3
    sdc1	$f9,88($sp)
    jalr	$t9
    subu	$a0,$a0,$s3
    ldc1	$f9,88($sp)
.L01618548:
    ld	$a3,32($sp)
    andi	$a3,$a3,0x4
    beqz	$a3,.L01618584
    la	$a3,newFinalSpan__CAB
    ld	$a1,24($sp)
    ld	$a2,48($sp)
    lw	$a4,136($s2)
    lw	$a0,132($s2)
    move	$t9,$a3
    addu	$a2,$a4,$a2
    addu	$a1,$a1,$a4
    sdc1	$f9,88($sp)
    jalr	$t9
    addu	$a0,$a0,$s3
    ldc1	$f9,88($sp)
.L01618584:
    ld	$a5,112($sp)
    ldc1	$f0,104($sp)
    dmtc1	$zero,$f8
    ldc1	$f5,64($s2)
    add.d	$f15,$f5,$f9
.L01618598:
    trunc.w.d	$f16,$f15
    cvt.d.w	$f14,$f16
    c.eq.d $f14,$f15
    ld	$a3,32($sp)
    c.lt.d $f15,$f8
    andi	$a3,$a3,0x1
    bc1t .L016185bc
    mfc1	$a0,$f16
    bc1f .L01618714
.L016185bc:
    move	$a1,$a0
.L016185c0:
    slt	$a4,$a5,$a1
    beqz	$a4,.L01618644
    sub.d	$f7,$f5,$f0
    sw	$a0,19324($gp)
    sdc1	$f0,104($sp)
    beqz	$a3,.L01618600
    sd	$a1,16($sp)
    ld	$a3,40($sp)
    lw	$a1,136($s2)
    ld	$a2,16($sp)
    lw	$t9,-29932($gp)
    lw	$a0,128($s2)
    addu	$a2,$a2,$a1
    subu	$a1,$a1,$a3
    jalr	$t9
    subu	$a0,$a0,$s3
.L01618600:
    ld	$a4,32($sp)
    andi	$a4,$a4,0x8
    beqz	$a4,.L01618634
    la	$a3,newFinalSpan__CAB
    ld	$a4,40($sp)
    lw	$a1,136($s2)
    ld	$a2,16($sp)
    lw	$a0,132($s2)
    move	$t9,$a3
    addu	$a2,$a2,$a1
    subu	$a1,$a1,$a4
    jalr	$t9
    addu	$a0,$a0,$s3
.L01618634:
    ldc1	$f0,104($sp)
    dmtc1	$zero,$f8
    ldc1	$f5,64($s2)
    sub.d	$f7,$f5,$f0
.L01618644:
    trunc.w.d	$f17,$f7
    cvt.d.w	$f18,$f17
    c.eq.d	$f18,$f7
    bc1t	.L01618660
    mfc1	$a0,$f17
    c.lt.d $f7,$f8
    bc1f .L016186d0
.L01618660:
    move	$a1,$a0
.L01618664:
    add.d	$f6,$f0,$f5
    trunc.w.d	$f19,$f6
    cvt.d.w	$f21,$f19
    c.eq.d $f21,$f6
    swc1	$f19,19324($gp)
    bc1t .L01618688
    mfc1	$a0,$f19
    c.lt.d $f6,$f8
    bc1f .L016186d8
.L01618688:
    move	$a3,$a0
.L0161868c:
    move	$a0,$s3
    lw	$t9,-28720($gp)
    move	$a2,$zero
    move	$a4,$zero
    move	$a5,$s0
    move	$a6,$s1
    ld	$t0,32($sp)
    move	$a7,$s2
    jalr	$t9
    sw	$t0,4($sp)
.L016186b4:
    ld	$s0,56($sp)
.L016186b8:
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L016186d0:
    b	.L01618664
    addiu	$a1,$a0,1
.L016186d8:
    b	.L0161868c
    addiu	$a3,$a0,1
.L016186e0:
    move	$a2,$t3
    lw	$t9,-28720($gp)
    negu	$a3,$t2
    move	$a4,$t2
    move	$a5,$s0
    move	$a6,$s1
    sw	$t1,4($sp)
    jalr	$t9
    move	$a7,$s2
    b	.L016186b8
    ld	$s0,56($sp)
.L0161870c:
    b	.L016184f8
    addiu	$a3,$a0,1
.L01618714:
    b	.L016185c0
    addiu	$a1,$a0,1

glabel arcSpan0__NP
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$t8,$a2
    sd	$s1,32($sp)
    move	$t1,$a3
    move	$t3,$a5
    lw	$at,80($a5)
    move	$t2,$a6
    move	$s1,$a0
    sd	$s2,16($sp)
    move	$s2,$a1
    move	$s0,$a4
    sd	$s8,40($sp)
    move	$s8,$a7
    bgtz	$at,.L01619cfc
    sd	$ra,48($sp)
    lw	$v0,84($a5)
    dmtc1	$zero,$f6
    ldc1	$f5,64($a5)
    bltz	$v0,.L01619cfc
    ldc1	$f4,72($a5)
    c.le.d $f5,$f6
    ldc1	$f7,88($a6)
    lw	$v1,96($a6)
    c.le.d $f6,$f4
    beqz	$v1,.L01619cfc
    c.lt.d $f6,$f7
    bc1f .L01619d00
    move	$a0,$zero
    bc1f .L01619d00
    move	$a0,$zero
    bc1f .L01619cfc
    mov.d	$f10,$f7
    ldc1	$f4,16($a4)
    ldc1	$f3,0($a4)
    sub.d	$f3,$f3,$f4
    c.lt.d $f7,$f3
    ldc1	$f8,64($a6)
    movf.d	$f10,$f3,$fcc1
    sub.d	$f1,$f8,$f10
    trunc.w.d	$f0,$f1
    add.d	$f5,$f8,$f10
    cvt.d.w	$f2,$f0
    trunc.w.d	$f4,$f5
    c.eq.d	$f2,$f1
    cvt.d.w	$f9,$f4
    mfc1	$a2,$f0
    c.lt.d $f1,$f6
    mfc1	$a0,$f4
    move	$a1,$a2
    bc1t	.L01619cd8
    c.eq.d $f9,$f5
    bc1f .L01619d44
    nop
.L01619cd8:
    subu	$s2,$a1,$s1
.L01619cdc:
    c.lt.d $f5,$f6
    addu	$t1,$t8,$t1
    move	$t8,$a0
    bc1t .L01619cf8
    swc1	$f4,19324($gp)
    bc1f .L01619d50
    nop
.L01619cf8:
    subu	$t1,$t1,$t8
.L01619cfc:
    move	$a0,$zero
.L01619d00:
    move	$a1,$s1
    move	$a2,$s2
    lw	$t9,-28720($gp)
    move	$a3,$t8
    move	$a4,$t1
    move	$a5,$s0
    move	$a6,$t3
    move	$a7,$t2
    jalr	$t9
    sw	$s8,4($sp)
    ld	$s2,16($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L01619d44:
    addiu	$a1,$a2,1
    b	.L01619cdc
    subu	$s2,$a1,$s1
.L01619d50:
    addiu	$t8,$a0,1
    b	.L01619cfc
    subu	$t1,$t1,$t8

glabel hookEllipseY__KP
    dmtc1	$zero,$f6
    ldc1	$f4,40($a2)
    ldc1	$f5,24($a2)
    c.eq.d	$f4,$f6
    c.lt.d $f12,$f6
    addiu	$sp,$sp,-16
    mul.d	$f5,$f5,$f12
    bc1f	.L01632840
    c.lt.d $f6,$f12
    bc1f .L01632824
    nop
    beqz	$a3,.L01632834
    nop
.L01632824:
    bc1f .L0163287c
    nop
    beqz	$a3,.L0163287c
    nop
.L01632834:
    ldc1	$f0,0($a1)
    jr	$ra
    addiu	$sp,$sp,16
.L01632840:
    div.d	$f5,$f5,$f4
    c.le.d $f6,$f5
    bc1f .L01632860
    lw	$t9,-28544($gp)
    lw	$t9,-28544($gp)
    mov.d	$f12,$f5
    jr	$t9
    addiu	$sp,$sp,16
.L01632860:
    sd	$ra,0($sp)
    jalr	$t9
    neg.d	$f12,$f5
    ld	$ra,0($sp)
    neg.d	$f0,$f0
    jr	$ra
    addiu	$sp,$sp,16
.L0163287c:
    ldc1	$f0,8($a1)
    jr	$ra
    addiu	$sp,$sp,16

glabel cmapDID
    lbu	$at,1($a0)
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$s0,$a0
    lw	$a0,16($a0)
    sd	$ra,16($sp)
    li	$v1,2
    lw	$a0,116($a0)
    beq	$at,$v1,.L01636cac
    sd	$a0,0($sp)
    lw	$v0,120($s0)
    beqz	$v0,.L01636cb4
    lw	$t9,-28356($gp)
    lw	$a0,8($v0)
.L01636bd8:
    lw	$t9,-27920($gp)
    jalr	$t9
    li	$a1,6
    bnez	$v0,.L01636c30
    nop
    lw	$v0,120($s0)
    beqz	$v0,.L01636cc8
    lw	$t9,-28356($gp)
    lw	$a0,0($v0)
.L01636bfc:
    ld	$v0,0($sp)
    lw	$v1,80($v0)
    subu	$a0,$a0,$v1
    ld	$ra,16($sp)
    sll	$v1,$a0,0x2
    lw	$v0,88($v0)
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    ld	$s0,8($sp)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,32
.L01636c30:
    lw	$a3,68($v0)
    lw	$a3,0($a3)
    ld	$v0,0($sp)
    bltz	$a3,.L01636c68
    sll	$a0,$a3,0x3
    ld	$ra,16($sp)
    lw	$v0,116($v0)
    subu	$v1,$a0,$a3
    sll	$v1,$v1,0x2
    ld	$s0,8($sp)
    addu	$v0,$v0,$v1
    lw	$v0,16($v0)
    jr	$ra
    addiu	$sp,$sp,32
.L01636c68:
    lw	$v0,120($s0)
    beqz	$v0,.L01636cdc
    lw	$t9,-28356($gp)
    lw	$a0,0($v0)
.L01636c78:
    ld	$v0,0($sp)
    lw	$v1,80($v0)
    subu	$a0,$a0,$v1
    ld	$ra,16($sp)
    sll	$v1,$a0,0x2
    lw	$v0,88($v0)
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    ld	$s0,8($sp)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,32
.L01636cac:
    b	.L01636bd8
    move	$a0,$zero
.L01636cb4:
    jalr	$t9
    move	$a0,$s0
    lw	$a0,120($v0)
    b	.L01636bd8
    lw	$a0,8($a0)
.L01636cc8:
    jalr	$t9
    move	$a0,$s0
    lw	$a0,120($v0)
    b	.L01636bfc
    lw	$a0,0($a0)
.L01636cdc:
    jalr	$t9
    move	$a0,$s0
    lw	$a0,120($v0)
    b	.L01636c78
    lw	$a0,0($a0)

glabel tailEllipseY__BP
    ldc1	$f7,8($a0)
    ldc1	$f4,0($a0)
    c.eq.d	$f4,$f7
    ldc1	$f6,8($a1)
    addiu	$sp,$sp,-32
    dmtc1	$zero,$f8
    sd	$s0,8($sp)
    move	$s0,$a1
    sdc1	$f8,0($a1)
    bc1t	.L0163cb74
    c.lt.d $f7,$f4
    ldc1	$f5,16($a0)
    bc1f .L0163cb20
    mul.d	$f5,$f5,$f4
    c.lt.d $f5,$f6
    bc1t .L0163cb74
    nop
    sd	$a0,0($sp)
    b	.L0163cb2c
    sd	$ra,16($sp)
.L0163cb20:
    c.lt.d $f6,$f5
    bc1t .L0163cb74
    sd	$a0,0($sp)
.L0163cb2c:
    la	$at,_rodata_symbol
    ldc1	$f13,1808($at)
    mul.d	$f12,$f7,$f5
    lw	$t9,-28544($gp)
    mul.d	$f12,$f12,$f13
    sd	$ra,16($sp)
    jalr	$t9
    mul.d	$f12,$f12,$f12
    la	$v0,_rodata_symbol
    ldc1	$f5,8($s0)
    ldc1	$f6,24752($v0)
    msub.d	$f5,$f0,$f5,$f6
    ldc1	$f6,40($s0)
    div.d	$f5,$f5,$f6
    dmtc1	$zero,$f14
    c.lt.d $f14,$f5
    bc1t .L0163cb80
    ld	$ra,16($sp)
.L0163cb74:
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0163cb80:
    lw	$t9,-28540($gp)
    jalr	$t9
    mov.d	$f12,$f5
    la	$v1,_rodata_symbol
    ld	$a0,0($sp)
    ldc1	$f8,24760($v1)
    ldc1	$f7,8($a0)
    div.d	$f7,$f7,$f8
    ld	$ra,16($sp)
    mul.d	$f7,$f0,$f7
    sdc1	$f7,0($s0)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32

glabel _odyDebugf__MD
    addiu	$sp,$sp,-1104
    sw	$a0,1044($sp)
    sd	$a1,1048($sp)
    sd	$a2,1056($sp)
    sd	$a3,1064($sp)
    sd	$a4,1072($sp)
    sd	$a5,1080($sp)
    sd	$a6,1088($sp)
    lw	$at,72($gp)
    sd	$a7,1096($sp)
    sd	$s0,1024($sp)
    blez	$at,.L01667088
    sd	$ra,1032($sp)
    lw	$v0,76($gp)
    beqz	$v0,.L01667070
    la	$a1,_rodata_symbol
    lw	$t9,-28520($gp)
    move	$a3,$at
    addiu	$a0,$sp,0
    addiu	$a2,$a1,14200
    jalr	$t9
    addiu	$a1,$a1,14184
    li	$t1,32
    lbu	$at,0($sp)
    li	$t3,40
    addiu	$s0,$sp,0
    la	$a3,_bss_symbol
    addiu	$a6,$sp,0
    li	$t2,33
    beqz	$at,.L01666f44
    addiu	$a0,$a3,24
    lbu	$a2,24($a3)
    addiu	$s0,$sp,0
    bne	$a2,$at,.L01666f40
    move	$a7,$a0
    b	.L01667150
    addiu	$a3,$a3,1
.L01666e24:
    move	$v1,$s0
    beqz	$t0,.L01666e44
    move	$at,$zero
.L01666e30:
    addiu	$t0,$t0,-1
    addiu	$v1,$v1,1
    addiu	$at,$at,1
    bnez	$t0,.L01666e30
    sb	$t1,-1($v1)
.L01666e44:
    sra	$t0,$a0,0x3
    move	$a0,$t1
    beqz	$t0,.L01666ee8
    slti	$t0,$t0,2
    bnez	$t0,.L01667124
    nop
    sb	$t1,1($v1)
    sb	$t1,0($v1)
    nop
    nop
    nop
.L01666e70:
    sb	$a0,2($v1)
    sb	$a0,3($v1)
    sb	$a0,4($v1)
    sb	$a0,5($v1)
    sb	$a0,6($v1)
    sb	$a0,7($v1)
    addiu	$v1,$v1,8
    sb	$a0,0($v1)
    sb	$a0,1($v1)
    beq	$v1,$v0,.L01667080
    addiu	$at,$at,8
    sb	$a0,2($v1)
    sb	$a0,3($v1)
    sb	$a0,4($v1)
    sb	$a0,5($v1)
    sb	$a0,6($v1)
    sb	$a0,7($v1)
    addiu	$v1,$v1,8
    sb	$a0,0($v1)
    sb	$a0,1($v1)
    bne	$v1,$v0,.L01666e70
    addiu	$at,$at,8
    move	$v0,$at
.L01666ecc:
    sb	$t1,2($v1)
    sb	$t1,3($v1)
    sb	$t1,4($v1)
    sb	$t1,5($v1)
    sb	$t1,6($v1)
    addiu	$at,$v0,8
    sb	$t1,7($v1)
.L01666ee8:
    addu	$s0,$at,$s0
    move	$a0,$a7
.L01666ef0:
    lbu	$at,1($a6)
    addiu	$a6,$a6,1
    beqz	$at,.L01666f44
    addiu	$a7,$a7,1
    lbu	$t8,24($a3)
    bne	$t8,$at,.L01666f44
    addiu	$a3,$a3,1
.L01666f0c:
    beq	$t2,$at,.L01666f24
    addiu	$v0,$a6,-8
    beq	$t3,$at,.L01666f24
    addiu	$v0,$a6,-8
    bne	$t1,$at,.L01666ef0
    addiu	$v0,$a6,-8
.L01666f24:
    sltu	$t9,$s0,$a6
    move	$at,$zero
    subu	$a0,$a6,$s0
    bnez	$t9,.L01666e24
    andi	$t0,$a0,0x7
    b	.L01666ee8
    nop
.L01666f40:
    addiu	$s0,$sp,0
.L01666f44:
    lbu	$v0,0($s0)
    move	$v1,$s0
    move	$a3,$a0
    beqz	$v0,.L01666fb4
    move	$at,$zero
    nop
    nop
.L01666f60:
    sb	$v0,0($a3)
    lbu	$v0,1($v1)
    addiu	$at,$at,1
    beqz	$v0,.L01666fb4
    nop
    sb	$v0,1($a3)
    lbu	$v0,2($v1)
    addiu	$at,$at,1
    beqz	$v0,.L01666fb4
    nop
    sb	$v0,2($a3)
    lbu	$v0,3($v1)
    addiu	$at,$at,1
    beqz	$v0,.L01666fb4
    nop
    sb	$v0,3($a3)
    lbu	$v0,4($v1)
    addiu	$v1,$v1,4
    addiu	$a3,$a3,4
    bnez	$v0,.L01666f60
    addiu	$at,$at,1
.L01666fb4:
    addu	$ra,$at,$a0
    addu	$s0,$at,$s0
    sb	$zero,0($ra)
    lw	$t9,-27716($gp)
.L01666fc4:
    move	$a0,$s0
    lw	$a1,1044($sp)
    jalr	$t9
    addiu	$a2,$sp,1048
    lbu	$v1,0($s0)
    li	$v0,10
    move	$a0,$s0
    lbu	$at,-1($s0)
    beqz	$v1,.L01667100
    li	$v1,13
    nop
.L01666ff0:
    lbu	$a1,1($a0)
    addiu	$a0,$a0,1
    beqz	$a1,.L0166703c
    nop
    lbu	$a2,1($a0)
    addiu	$a0,$a0,1
    beqz	$a2,.L0166703c
    nop
    lbu	$a3,1($a0)
    addiu	$a0,$a0,1
    beqz	$a3,.L0166703c
    nop
    lbu	$a4,1($a0)
    addiu	$a0,$a0,1
    beqz	$a4,.L0166703c
    nop
    lbu	$a5,1($a0)
    bnez	$a5,.L01666ff0
    addiu	$a0,$a0,1
.L0166703c:
    lbu	$at,-1($a0)
    beq	$v0,$at,.L01667060
    lw	$t9,-28184($gp)
    li	$a6,13
    beq	$at,$a6,.L01667060
    lw	$t9,-28184($gp)
    sb	$zero,1($a0)
.L01667058:
    sb	$v0,0($a0)
    lw	$t9,-28184($gp)
.L01667060:
    la	$a0,_rodata_symbol
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a0,8584
.L01667070:
    ld	$ra,1032($sp)
    ld	$s0,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1104
.L01667080:
    b	.L01666ecc
    move	$v0,$at
.L01667088:
    lw	$t9,-28520($gp)
    la	$a1,_rodata_symbol
    negu	$a2,$at
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,14216
    lbu	$a2,0($sp)
    beqz	$a2,.L0166711c
    addiu	$s0,$sp,0
.L016670ac:
    lbu	$a3,1($s0)
    addiu	$s0,$s0,1
    beqz	$a3,.L016670f8
    nop
    lbu	$a4,1($s0)
    addiu	$s0,$s0,1
    beqz	$a4,.L016670f8
    nop
    lbu	$a5,1($s0)
    addiu	$s0,$s0,1
    beqz	$a5,.L016670f8
    nop
    lbu	$a6,1($s0)
    addiu	$s0,$s0,1
    beqz	$a6,.L016670f8
    nop
    lbu	$a7,1($s0)
    bnez	$a7,.L016670ac
    addiu	$s0,$s0,1
.L016670f8:
    b	.L01666fc4
    lw	$t9,-27716($gp)
.L01667100:
    beq	$v0,$at,.L01667060
    lw	$t9,-28184($gp)
    beq	$at,$v1,.L01667060
    lw	$t9,-28184($gp)
    move	$a0,$s0
    b	.L01667058
    sb	$zero,1($a0)
.L0166711c:
    b	.L016670f8
    addiu	$s0,$sp,0
.L01667124:
    sb	$t1,7($v1)
    sb	$t1,6($v1)
    sb	$t1,5($v1)
    sb	$t1,4($v1)
    sb	$t1,3($v1)
    sb	$t1,2($v1)
    sb	$t1,1($v1)
    addiu	$v0,$at,8
    sb	$t1,0($v1)
    b	.L01666ee8
    move	$at,$v0
.L01667150:
    b	.L01666f0c
    nop

glabel drawArc__EAB
    addiu	$sp,$sp,-784
    sd	$a0,576($sp)
    sd	$s7,600($sp)
    sd	$s8,624($sp)
    move	$at,$a0
    sd	$s0,608($sp)
    move	$s0,$a3
    move	$s8,$a4
    lw	$t9,-31652($gp)
    move	$s7,$a5
    move	$a0,$a1
    sd	$a1,584($sp)
    move	$a1,$at
    sd	$s1,592($sp)
    move	$s1,$a2
    sd	$ra,616($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    sd	$v0,680($sp)
    sd	$s5,688($sp)
    sd	$s4,696($sp)
    sd	$s3,704($sp)
    sd	$s6,712($sp)
    beqz	$v0,.L0167b460
    sd	$s2,720($sp)
    srl	$t1,$s1,0x1f
    li	$a3,0xb60b
    negu	$a2,$s1
    dsll	$a3,$a3,0x10
    movz	$a2,$s1,$t1
    ori	$a3,$a3,0x60b7
    multu	$a2,$a3
    li	$s3,4
    addiu	$a1,$s0,23040
    slt	$a0,$s0,$s1
    li	$v1,0xb60b
    movn	$s0,$a1,$a0
    dsll	$v1,$v1,0x10
    addiu	$a0,$s0,-1
    negu	$v0,$a0
    srl	$a4,$a0,0x1f
    ori	$v1,$v1,0x60b7
    movz	$v0,$a0,$a4
    mfhi	$s6
    nop
    nop
    multu	$v0,$v1
    li	$ra,3
    li	$a7,2
    move	$a5,$zero
    li	$at,-1
    li	$s4,11520
    li	$t9,23040
    subu	$t9,$t9,$s0
    addiu	$t8,$s0,-11520
    sd	$at,640($sp)
    subu	$t2,$s4,$s0
    addiu	$a3,$sp,8
    lw	$a6,88($sp)
    xor	$a0,$s0,$s1
    li	$v0,1
    lw	$t3,84($sp)
    sra	$s6,$s6,0xc
    mfhi	$t0
    lw	$s5,80($sp)
    negu	$s2,$s6
    sra	$t0,$t0,0xc
    lw	$a2,72($sp)
    movz	$s2,$s6,$t1
    negu	$a1,$t0
    sd	$a2,632($sp)
    movz	$a1,$t0,$a4
    move	$a4,$s2
    lw	$s6,76($sp)
    move	$a2,$s2
    movn	$a4,$a1,$a0
.L0167ae50:
    beqz	$a2,.L0167af3c
    sllv	$t1,$v0,$a2
    beq	$a2,$v0,.L0167b490
    slti	$at,$s0,5760
    beq	$a2,$a7,.L0167b53c
    slti	$a0,$s1,17281
    beq	$a2,$ra,.L0167b564
    slti	$at,$s0,17280
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    beq	$a4,$a2,.L0167afb0
    move	$a5,$a0
.L0167ae8c:
    addiu	$a2,$a2,1
    xor	$t0,$a2,$s3
    movz	$s1,$zero,$t0
    addiu	$a1,$s0,-23040
    movz	$s0,$a1,$t0
    addiu	$a0,$a4,-4
    movz	$a4,$a0,$t0
    addiu	$v1,$t2,23040
    movz	$t2,$v1,$t0
    addiu	$at,$t8,-23040
    movz	$t8,$at,$t0
    addiu	$t1,$t9,23040
    movz	$a2,$zero,$t0
    movz	$t9,$t1,$t0
    beqz	$a2,.L0167b4c0
    sllv	$t1,$v0,$a2
    beq	$a2,$v0,.L0167b61c
    slti	$at,$s0,5760
    beq	$a2,$a7,.L0167b64c
    li	$a1,17280
    beq	$a2,$ra,.L0167b688
    nop
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    beq	$a4,$a2,.L0167afb0
    move	$a5,$a0
.L0167af00:
    addiu	$a2,$a2,1
    xor	$t0,$a2,$s3
    movz	$s1,$zero,$t0
    addiu	$a1,$s0,-23040
    movz	$s0,$a1,$t0
    addiu	$a0,$a4,-4
    movz	$a4,$a0,$t0
    movz	$a2,$zero,$t0
    addiu	$v1,$t2,23040
    movz	$t2,$v1,$t0
    addiu	$at,$t8,-23040
    movz	$t8,$at,$t0
    addiu	$t1,$t9,23040
    b	.L0167ae50
    movz	$t9,$t1,$t0
.L0167af3c:
    slti	$t3,$s0,23040
    li	$t0,5760
    slt	$t0,$t0,$s1
    move	$a6,$s1
    beqz	$t3,.L0167b7f8
    movn	$a6,$zero,$t0
    li	$t3,5760
    slt	$at,$s0,$t3
    bne	$s2,$a2,.L0167af7c
    movn	$t3,$s0,$at
    bne	$a6,$s1,.L0167af7c
    ld	$a0,640($sp)
    slti	$v1,$a0,0
    movn	$a0,$a2,$v1
    sd	$a0,640($sp)
    movn	$s5,$a6,$v1
.L0167af7c:
    bne	$a4,$a2,.L0167af94
    nop
    bne	$s0,$t3,.L0167af94
    nop
    move	$s6,$t3
.L0167af90:
    sd	$a2,632($sp)
.L0167af94:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167ae8c
    move	$a5,$a0
.L0167afb0:
    li	$s4,5761
.L0167afb4:
    move	$s2,$zero
    addiu	$s0,$sp,96
    addiu	$t1,$sp,8
    sll	$t2,$a0,0x2
    slti	$s3,$a0,1
    subu	$t2,$t2,$a0
    xori	$s3,$s3,0x1
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    nop
    nop
.L0167afe0:
    beqz	$s3,.L0167b0b4
    li	$a6,5760
    move	$t2,$zero
    addiu	$a2,$sp,8
.L0167aff0:
    lw	$a3,0($a2)
    slt	$t8,$a6,$a3
    bnez	$t8,.L0167b00c
    nop
    lw	$t3,4($a2)
    move	$a6,$a3
    lw	$t2,8($a2)
.L0167b00c:
    addiu	$a2,$a2,12
    bne	$a2,$t1,.L0167aff0
    nop
    beqz	$t2,.L0167b0b8
    ld	$a1,576($sp)
    addiu	$s0,$s0,12
    addiu	$a3,$sp,8
    addiu	$s2,$s2,1
    move	$a2,$a3
.L0167b030:
    lw	$t8,8($a3)
    and	$t9,$t8,$t2
    beqz	$t9,.L0167b08c
    nop
.L0167b040:
    addiu	$a3,$a3,12
    bne	$a3,$t1,.L0167b030
    nop
    sw	$t2,-4($s0)
    sw	$t3,-8($s0)
    b	.L0167b070
    sw	$a6,-12($s0)
.L0167b05c:
    sw	$s4,4($a2)
    sw	$s4,0($a2)
.L0167b064:
    addiu	$a2,$a2,12
    beq	$a2,$t1,.L0167afe0
    nop
.L0167b070:
    lw	$ra,0($a2)
    bne	$ra,$a6,.L0167b064
    lw	$a3,4($a2)
    beq	$a3,$t3,.L0167b05c
    nop
    b	.L0167b064
    sw	$t3,0($a2)
.L0167b08c:
    lw	$t9,0($a3)
    lw	$s1,4($a3)
    bne	$a6,$t9,.L0167b0a8
    slt	$ra,$s1,$t3
    or	$t2,$t8,$t2
    b	.L0167b040
    movn	$t3,$s1,$ra
.L0167b0a8:
    slt	$at,$t9,$t3
    b	.L0167b040
    movn	$t3,$t9,$at
.L0167b0b4:
    ld	$a1,576($sp)
.L0167b0b8:
    lh	$a0,2($a1)
    la	$a2,_rodata_symbol
    lhu	$v0,6($a1)
    dmtc1	$zero,$f4
    ld	$a3,584($sp)
    ldc1	$f3,10512($a2)
    sra	$a2,$v0,0x1
    mtc1	$a3,$f0
    lhu	$v1,4($a1)
    mtc1	$v0,$f10
    mov.d	$f12,$f4
    addu	$a0,$a0,$a2
    mtc1	$v1,$f9
    sra	$a2,$v1,0x1
    andi	$v1,$v1,0x1
    cvt.d.w	$f0,$f0
    movn.d	$f12,$f3,$v1
    cvt.d.w	$f10,$f10
    lw	$t9,-30604($gp)
    mul.d	$f11,$f0,$f3
    cvt.d.w	$f9,$f9
    lh	$a1,0($a1)
    mul.d	$f10,$f3,$f10
    sw	$a0,504($sp)
    andi	$v0,$v0,0x1
    mul.d	$f9,$f3,$f9
    addu	$a0,$v0,$a0
    sw	$a0,508($sp)
    mul.d	$f7,$f10,$f10
    addu	$a1,$a1,$a2
    sw	$a1,512($sp)
    mul.d	$f8,$f9,$f9
    sdc1	$f12,440($sp)
    mul.d	$f5,$f7,$f7
    sdc1	$f11,352($sp)
    mul.d	$f6,$f8,$f8
    sdc1	$f10,344($sp)
    nmsub.d	$f2,$f7,$f9,$f9
    sdc1	$f9,336($sp)
    mul.d	$f1,$f8,$f0
    sdc1	$f8,392($sp)
    mul.d	$f0,$f7,$f0
    sdc1	$f7,384($sp)
    mul.d	$f1,$f3,$f1
    sdc1	$f6,408($sp)
    mul.d	$f0,$f3,$f0
    sdc1	$f5,400($sp)
    movz.d	$f3,$f4,$v0
    sdc1	$f3,448($sp)
    sdc1	$f2,416($sp)
    addiu	$a1,$sp,376
    sdc1	$f1,432($sp)
    addiu	$a0,$sp,336
    jalr	$t9
    sdc1	$f0,424($sp)
    blez	$s2,.L0167bc24
    li	$s4,1
    sd	$zero,656($sp)
    ld	$a4,632($sp)
    ld	$a3,640($sp)
    sd	$zero,648($sp)
    sllv	$a4,$s4,$a4
    move	$s3,$zero
    sd	$a4,672($sp)
    sllv	$a3,$s4,$a3
    addiu	$s1,$sp,96
    b	.L0167bc90
    sd	$a3,664($sp)
    nop
    nop
.L0167b1d0:
    move	$a5,$s8
    move	$a6,$zero
.L0167b1d8:
    beqz	$t1,.L0167b1f4
    la	$s2,drawQuadrant__FAB
    bne	$a3,$s6,.L0167b25c
    movn	$at,$s4,$a5
    movn	$s3,$s4,$a6
    move	$a6,$s7
.L0167b1f0:
    la	$s2,drawQuadrant__FAB
.L0167b1f4:
    move	$t9,$s2
    addiu	$a0,$sp,336
    addiu	$a1,$sp,376
    jalr	$t9
    ld	$a7,680($sp)
    move	$a6,$zero
    addiu	$s1,$s1,12
    move	$a5,$zero
    move	$at,$s3
    beq	$s1,$s0,.L0167b28c
    li	$t2,1
    lw	$a4,8($s1)
.L0167b224:
    ld	$t3,664($sp)
    lw	$a2,0($s1)
    ld	$t1,672($sp)
    and	$t3,$t3,$a4
    ld	$t9,656($sp)
    lw	$a3,4($s1)
    beqz	$t3,.L0167b27c
    and	$t1,$t1,$a4
    beq	$a2,$s5,.L0167b1d0
    xor	$t8,$a3,$s5
    movz	$a6,$s8,$t8
    movz	$t9,$t2,$t8
    b	.L0167b1d8
    sd	$t9,656($sp)
.L0167b25c:
    xor	$ra,$a2,$s6
    movz	$a5,$s7,$ra
    ld	$v0,648($sp)
    li	$v1,1
    movz	$s3,$at,$ra
    movz	$v0,$v1,$ra
    b	.L0167b1f0
    sd	$v0,648($sp)
.L0167b27c:
    move	$a5,$zero
    lw	$a3,4($s1)
    b	.L0167b1d8
    move	$a6,$zero
.L0167b28c:
    beqz	$s3,.L0167b2c4
    nop
    ld	$a5,0($s7)
    sd	$a5,0($s8)
    ld	$a4,8($s7)
    sd	$a4,8($s8)
    ld	$a3,16($s7)
    sd	$a3,16($s8)
    ld	$a2,24($s7)
    sd	$a2,24($s8)
    ld	$a1,32($s7)
    sd	$a1,32($s8)
    ld	$a0,40($s7)
    sd	$a0,40($s8)
.L0167b2c4:
    beqz	$s8,.L0167b384
    ld	$a6,640($sp)
    beqz	$a6,.L0167bac4
    ld	$a7,640($sp)
    beq	$a7,$s4,.L0167bb1c
    nop
    ldc1	$f4,8($s8)
    ld	$t0,640($sp)
    li	$t1,2
    beq	$t0,$t1,.L0167bb94
    mov.d	$f5,$f4
    ld	$t2,640($sp)
    li	$t3,3
    beq	$t2,$t3,.L0167bc48
.L0167b2fc:
    ld	$t8,640($sp)
    neg.d	$f5,$f5
    beq	$t8,$s4,.L0167bb44
    sdc1	$f5,8($s8)
    ld	$t9,640($sp)
    li	$ra,2
    beq	$t9,$ra,.L0167bbc4
    ldc1	$f4,24($s8)
    ld	$at,640($sp)
    li	$v0,3
    beq	$at,$v0,.L0167bc54
    nop
.L0167b32c:
    ld	$v1,640($sp)
    neg.d	$f10,$f4
    beq	$v1,$s4,.L0167bb58
    sdc1	$f10,24($s8)
    ld	$a0,640($sp)
    li	$a1,2
    beq	$a0,$a1,.L0167bbdc
    ldc1	$f4,40($s8)
    ld	$a2,640($sp)
    li	$a3,3
    beq	$a2,$a3,.L0167bc60
    nop
.L0167b35c:
    ld	$a4,656($sp)
    neg.d	$f4,$f4
    beqz	$a4,.L0167b384
    sdc1	$f4,40($s8)
    sdc1	$f5,40($s8)
    ldc1	$f11,32($s8)
    ldc1	$f12,0($s8)
    sdc1	$f4,8($s8)
    sdc1	$f12,32($s8)
    sdc1	$f11,0($s8)
.L0167b384:
    beqz	$s7,.L0167b44c
    lw	$a4,0($sp)
    ld	$a5,632($sp)
    beqz	$a5,.L0167bae4
    ld	$a6,632($sp)
    beq	$a6,$s4,.L0167bb30
    nop
    ldc1	$f5,40($s7)
    ld	$a7,632($sp)
    li	$t0,2
    beq	$a7,$t0,.L0167bbac
    mov.d	$f4,$f5
    ld	$t1,632($sp)
    li	$t2,3
    beq	$t1,$t2,.L0167bc6c
.L0167b3c0:
    ld	$t3,632($sp)
    neg.d	$f4,$f4
    beq	$t3,$s4,.L0167bb6c
    sdc1	$f4,40($s7)
    ld	$t8,632($sp)
    li	$t9,2
    beq	$t8,$t9,.L0167bbf4
    ldc1	$f5,24($s7)
    ld	$ra,632($sp)
    li	$at,3
    beq	$ra,$at,.L0167bc78
    nop
.L0167b3f0:
    ld	$v0,632($sp)
    neg.d	$f13,$f5
    beq	$v0,$s4,.L0167bb80
    sdc1	$f13,24($s7)
    ld	$v1,632($sp)
    li	$a0,2
    beq	$v1,$a0,.L0167bc0c
    ldc1	$f5,8($s7)
    ld	$a1,632($sp)
    li	$a2,3
    beq	$a1,$a2,.L0167bc84
    nop
.L0167b420:
    ld	$a3,648($sp)
    neg.d	$f6,$f5
    beqz	$a3,.L0167b448
    sdc1	$f6,8($s7)
    sdc1	$f6,40($s7)
    ldc1	$f14,32($s7)
    ldc1	$f15,0($s7)
    sdc1	$f4,8($s7)
    sdc1	$f15,32($s7)
    sdc1	$f14,0($s7)
.L0167b448:
    lw	$a4,0($sp)
.L0167b44c:
    beqz	$a4,.L0167b464
    ld	$s2,720($sp)
    lw	$t9,-28196($gp)
    jalr	$t9
    ld	$a0,680($sp)
.L0167b460:
    ld	$s2,720($sp)
.L0167b464:
    ld	$s6,712($sp)
    ld	$s3,704($sp)
    ld	$s4,696($sp)
    ld	$s5,688($sp)
    ld	$s0,608($sp)
    ld	$ra,616($sp)
    ld	$s1,592($sp)
    ld	$s7,600($sp)
    ld	$s8,624($sp)
    jr	$ra
    addiu	$sp,$sp,784
.L0167b490:
    li	$t3,11520
    beqz	$at,.L0167b8d4
    slt	$t3,$t3,$s1
    beqz	$t3,.L0167b908
    move	$a6,$zero
    bne	$s2,$a2,.L0167b934
    li	$t3,5760
    li	$v1,5760
    bne	$s1,$v1,.L0167b934
    nop
    b	.L0167b930
    move	$s5,$t3
.L0167b4c0:
    slti	$a1,$s0,23040
    li	$a0,5760
    slt	$a0,$a0,$s1
    move	$a6,$s1
    beqz	$a1,.L0167b9b0
    movn	$a6,$zero,$a0
    li	$t3,5760
    slt	$a1,$s0,$t3
    bne	$s2,$a2,.L0167b500
    movn	$t3,$s0,$a1
    bne	$a6,$s1,.L0167b500
    ld	$at,640($sp)
    slti	$t0,$at,0
    movn	$at,$a2,$t0
    sd	$at,640($sp)
    movn	$s5,$a6,$t0
.L0167b500:
    bne	$a4,$a2,.L0167b518
    nop
    bne	$s0,$t3,.L0167b518
    nop
    move	$s6,$t3
.L0167b514:
    sd	$a2,632($sp)
.L0167b518:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167af00
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167b53c:
    bnez	$a0,.L0167b74c
    slti	$a0,$s0,11520
    beqz	$a0,.L0167bb04
    move	$a6,$zero
    bne	$s2,$a2,.L0167b778
    nop
    bne	$s1,$s4,.L0167b778
    nop
    b	.L0167b774
    move	$s5,$a6
.L0167b564:
    li	$a1,17280
    move	$a0,$s1
    slt	$v1,$s1,$a1
    li	$t3,23040
    movn	$a0,$a1,$v1
    beqz	$at,.L0167b5b4
    subu	$t3,$t3,$a0
    ld	$t0,640($sp)
    bne	$s2,$a2,.L0167b59c
    move	$a6,$zero
    xor	$at,$a0,$s1
    movz	$s5,$t3,$at
    movz	$t0,$a2,$at
    sd	$t0,640($sp)
.L0167b59c:
    bne	$a4,$a2,.L0167b5f8
    li	$v1,23040
    bne	$s0,$v1,.L0167b5f8
    nop
    b	.L0167b5f4
    move	$s6,$a6
.L0167b5b4:
    li	$a6,23040
    move	$t0,$a6
    slt	$at,$s0,$a6
    xor	$a1,$a0,$s1
    movn	$t0,$s0,$at
    ld	$v1,640($sp)
    bne	$s2,$a2,.L0167b5e0
    subu	$a6,$a6,$t0
    movz	$v1,$a2,$a1
    movz	$s5,$t3,$a1
    sd	$v1,640($sp)
.L0167b5e0:
    bne	$a4,$a2,.L0167b5f8
    nop
    bne	$t9,$a6,.L0167b5f8
    nop
    move	$s6,$a6
.L0167b5f4:
    sd	$a2,632($sp)
.L0167b5f8:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167ae8c
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167b61c:
    li	$t3,11520
    beqz	$at,.L0167b9e8
    slt	$t3,$t3,$s1
    beqz	$t3,.L0167ba1c
    move	$a6,$zero
    bne	$s2,$a2,.L0167ba48
    li	$t3,5760
    li	$v1,5760
    bne	$s1,$v1,.L0167ba48
    nop
    b	.L0167ba44
    move	$s5,$t3
.L0167b64c:
    slti	$a0,$s1,17281
    li	$t3,5760
    slt	$a1,$s0,$a1
    sd	$a1,568($sp)
    bnez	$a0,.L0167b830
    slti	$a0,$s0,11520
    move	$a6,$zero
    beqz	$a0,.L0167bc30
    nop
    bne	$s2,$a2,.L0167b85c
    nop
    bne	$s1,$s4,.L0167b85c
    nop
    b	.L0167b858
    move	$s5,$a6
.L0167b688:
    li	$t3,23040
    li	$a1,17280
    move	$a0,$s1
    slt	$v1,$s1,$a1
    ld	$t0,640($sp)
    slti	$at,$s0,17280
    movn	$a0,$a1,$v1
    slt	$a6,$s0,$t3
    sd	$a6,560($sp)
    xor	$a1,$a0,$s1
    ld	$v1,640($sp)
    beqz	$at,.L0167b6ec
    subu	$t3,$t3,$a0
    move	$a6,$zero
    bne	$s2,$a2,.L0167b6d4
    xor	$at,$a0,$s1
    movz	$s5,$t3,$at
    movz	$t0,$a2,$at
    sd	$t0,640($sp)
.L0167b6d4:
    bne	$a4,$a2,.L0167b728
    li	$v1,23040
    bne	$s0,$v1,.L0167b728
    nop
    b	.L0167b724
    move	$s6,$a6
.L0167b6ec:
    ld	$at,560($sp)
    li	$a6,23040
    move	$t0,$a6
    movn	$t0,$s0,$at
    bne	$s2,$a2,.L0167b710
    subu	$a6,$a6,$t0
    movz	$v1,$a2,$a1
    movz	$s5,$t3,$a1
    sd	$v1,640($sp)
.L0167b710:
    bne	$a4,$a2,.L0167b728
    nop
    bne	$t9,$a6,.L0167b728
    nop
    move	$s6,$a6
.L0167b724:
    sd	$a2,632($sp)
.L0167b728:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167af00
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167b74c:
    move	$a6,$s1
    slt	$t0,$s1,$s4
    movn	$a6,$s4,$t0
    beqz	$a0,.L0167b794
    addiu	$a6,$a6,-11520
    bne	$s2,$a2,.L0167b778
    addiu	$t3,$s1,-11520
    bne	$a6,$t3,.L0167b778
    nop
    move	$s5,$a6
.L0167b774:
    sd	$a2,640($sp)
.L0167b778:
    bne	$a4,$a2,.L0167b7d4
    li	$t3,5760
    li	$v1,17280
    bne	$s0,$v1,.L0167b7d4
    nop
    b	.L0167b7d0
    move	$s6,$t3
.L0167b794:
    bne	$s2,$a2,.L0167b7b4
    li	$t3,17280
    addiu	$a0,$s1,-11520
    bne	$a6,$a0,.L0167b7b4
    li	$t3,17280
    move	$s5,$a6
.L0167b7ac:
    sd	$a2,640($sp)
    li	$t3,17280
.L0167b7b4:
    slt	$at,$s0,$t3
    movn	$t3,$s0,$at
    bne	$a4,$a2,.L0167b7d4
    addiu	$t3,$t3,-11520
    bne	$t8,$t3,.L0167b7d4
    nop
    move	$s6,$t3
.L0167b7d0:
    sd	$a2,632($sp)
.L0167b7d4:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167ae8c
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167b7f8:
    bne	$s2,$a2,.L0167b818
    li	$t3,5760
    bne	$a6,$s1,.L0167b818
    ld	$a0,640($sp)
    slti	$v1,$a0,0
    movn	$a0,$a2,$v1
    sd	$a0,640($sp)
    movn	$s5,$a6,$v1
.L0167b818:
    bne	$a4,$a2,.L0167af94
    li	$a1,5760
    bne	$s0,$a1,.L0167af94
    nop
    b	.L0167af90
    move	$s6,$t3
.L0167b830:
    slt	$t0,$s1,$s4
    move	$a6,$s1
    movn	$a6,$s4,$t0
    beqz	$a0,.L0167b874
    addiu	$a6,$a6,-11520
    bne	$s2,$a2,.L0167b85c
    addiu	$at,$s1,-11520
    bne	$a6,$at,.L0167b85c
    nop
    move	$s5,$a6
.L0167b858:
    sd	$a2,640($sp)
.L0167b85c:
    bne	$a4,$a2,.L0167b8b0
    li	$a0,17280
    bne	$s0,$a0,.L0167b8b0
    nop
    b	.L0167b8ac
    move	$s6,$t3
.L0167b874:
    bne	$s2,$a2,.L0167b88c
    addiu	$a1,$s1,-11520
    bne	$a6,$a1,.L0167b890
    ld	$at,568($sp)
    move	$s5,$a6
.L0167b888:
    sd	$a2,640($sp)
.L0167b88c:
    ld	$at,568($sp)
.L0167b890:
    li	$t3,17280
    movn	$t3,$s0,$at
    bne	$a4,$a2,.L0167b8b0
    addiu	$t3,$t3,-11520
    bne	$t8,$t3,.L0167b8b0
    nop
    move	$s6,$t3
.L0167b8ac:
    sd	$a2,632($sp)
.L0167b8b0:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167af00
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167b8d4:
    move	$a6,$s4
    slt	$t0,$s0,$s4
    li	$v1,5760
    movn	$a6,$s0,$t0
    beqz	$t3,.L0167b94c
    subu	$a6,$s4,$a6
    bne	$s2,$a2,.L0167b974
    li	$t3,5760
    li	$at,5760
    bne	$s1,$at,.L0167b974
    nop
    b	.L0167b970
    move	$s5,$t3
.L0167b908:
    subu	$a0,$s4,$s1
    li	$v1,5760
    move	$t3,$s1
    slt	$at,$s1,$v1
    movn	$t3,$v1,$at
    bne	$s2,$a2,.L0167b934
    subu	$t3,$s4,$t3
    bne	$t3,$a0,.L0167b934
    nop
    move	$s5,$t3
.L0167b930:
    sd	$a2,640($sp)
.L0167b934:
    bne	$a4,$a2,.L0167b98c
    nop
    bne	$s0,$s4,.L0167b98c
    nop
    b	.L0167b988
    move	$s6,$a6
.L0167b94c:
    subu	$a0,$s4,$s1
    move	$t3,$s1
    slt	$at,$s1,$v1
    movn	$t3,$v1,$at
    bne	$s2,$a2,.L0167b974
    subu	$t3,$s4,$t3
    bne	$t3,$a0,.L0167b974
    nop
    move	$s5,$t3
.L0167b970:
    sd	$a2,640($sp)
.L0167b974:
    bne	$a4,$a2,.L0167b98c
    nop
    bne	$t2,$a6,.L0167b98c
    nop
    move	$s6,$a6
.L0167b988:
    sd	$a2,632($sp)
.L0167b98c:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167ae8c
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167b9b0:
    bne	$s2,$a2,.L0167b9d0
    li	$t3,5760
    bne	$a6,$s1,.L0167b9d0
    ld	$v1,640($sp)
    slti	$at,$v1,0
    movn	$v1,$a2,$at
    sd	$v1,640($sp)
    movn	$s5,$a6,$at
.L0167b9d0:
    bne	$a4,$a2,.L0167b518
    li	$a0,5760
    bne	$s0,$a0,.L0167b518
    nop
    b	.L0167b514
    move	$s6,$t3
.L0167b9e8:
    move	$a6,$s4
    slt	$t0,$s0,$s4
    li	$v1,5760
    movn	$a6,$s0,$t0
    beqz	$t3,.L0167ba60
    subu	$a6,$s4,$a6
    bne	$s2,$a2,.L0167ba88
    li	$t3,5760
    li	$at,5760
    bne	$s1,$at,.L0167ba88
    nop
    b	.L0167ba84
    move	$s5,$t3
.L0167ba1c:
    subu	$a0,$s4,$s1
    li	$v1,5760
    move	$t3,$s1
    slt	$at,$s1,$v1
    movn	$t3,$v1,$at
    bne	$s2,$a2,.L0167ba48
    subu	$t3,$s4,$t3
    bne	$t3,$a0,.L0167ba48
    nop
    move	$s5,$t3
.L0167ba44:
    sd	$a2,640($sp)
.L0167ba48:
    bne	$a4,$a2,.L0167baa0
    nop
    bne	$s0,$s4,.L0167baa0
    nop
    b	.L0167ba9c
    move	$s6,$a6
.L0167ba60:
    subu	$a0,$s4,$s1
    move	$t3,$s1
    slt	$at,$s1,$v1
    movn	$t3,$v1,$at
    bne	$s2,$a2,.L0167ba88
    subu	$t3,$s4,$t3
    bne	$t3,$a0,.L0167ba88
    nop
    move	$s5,$t3
.L0167ba84:
    sd	$a2,640($sp)
.L0167ba88:
    bne	$a4,$a2,.L0167baa0
    nop
    bne	$t2,$a6,.L0167baa0
    nop
    move	$s6,$a6
.L0167ba9c:
    sd	$a2,632($sp)
.L0167baa0:
    addiu	$a3,$a3,12
    sw	$t1,-4($a3)
    sw	$t3,-8($a3)
    addiu	$a0,$a5,1
    sw	$a6,-12($a3)
    bne	$a4,$a2,.L0167af00
    move	$a5,$a0
    b	.L0167afb4
    li	$s4,5761
.L0167bac4:
    ldc1	$f16,24($s8)
    ldc1	$f5,8($s8)
    ldc1	$f4,40($s8)
    neg.d	$f16,$f16
    neg.d	$f5,$f5
    sdc1	$f16,24($s8)
    b	.L0167b35c
    sdc1	$f5,8($s8)
.L0167bae4:
    ldc1	$f17,24($s7)
    ldc1	$f4,40($s7)
    ldc1	$f5,8($s7)
    neg.d	$f17,$f17
    neg.d	$f4,$f4
    sdc1	$f17,24($s7)
    b	.L0167b420
    sdc1	$f4,40($s7)
.L0167bb04:
    bne	$s2,$a2,.L0167b7b4
    li	$t3,17280
    bne	$s1,$s4,.L0167b7b4
    li	$t3,17280
    b	.L0167b7ac
    move	$s5,$a6
.L0167bb1c:
    ldc1	$f18,0($s8)
    ldc1	$f5,8($s8)
    neg.d	$f18,$f18
    b	.L0167b2fc
    sdc1	$f18,0($s8)
.L0167bb30:
    ldc1	$f19,32($s7)
    ldc1	$f4,40($s7)
    neg.d	$f19,$f19
    b	.L0167b3c0
    sdc1	$f19,32($s7)
.L0167bb44:
    ldc1	$f21,16($s8)
    ldc1	$f4,24($s8)
    neg.d	$f21,$f21
    b	.L0167b32c
    sdc1	$f21,16($s8)
.L0167bb58:
    ldc1	$f23,32($s8)
    ldc1	$f4,40($s8)
    neg.d	$f23,$f23
    b	.L0167b35c
    sdc1	$f23,32($s8)
.L0167bb6c:
    ldc1	$f25,16($s7)
    ldc1	$f5,24($s7)
    neg.d	$f25,$f25
    b	.L0167b3f0
    sdc1	$f25,16($s7)
.L0167bb80:
    ldc1	$f27,0($s7)
    ldc1	$f5,8($s7)
    neg.d	$f27,$f27
    b	.L0167b420
    sdc1	$f27,0($s7)
.L0167bb94:
    ldc1	$f29,0($s8)
    neg.d	$f5,$f4
    sdc1	$f5,8($s8)
    neg.d	$f29,$f29
    b	.L0167b2fc
    sdc1	$f29,0($s8)
.L0167bbac:
    ldc1	$f31,32($s7)
    neg.d	$f4,$f5
    sdc1	$f4,40($s7)
    neg.d	$f31,$f31
    b	.L0167b3c0
    sdc1	$f31,32($s7)
.L0167bbc4:
    ldc1	$f0,16($s8)
    neg.d	$f4,$f4
    sdc1	$f4,24($s8)
    neg.d	$f0,$f0
    b	.L0167b32c
    sdc1	$f0,16($s8)
.L0167bbdc:
    ldc1	$f1,32($s8)
    neg.d	$f4,$f4
    sdc1	$f4,40($s8)
    neg.d	$f1,$f1
    b	.L0167b35c
    sdc1	$f1,32($s8)
.L0167bbf4:
    ldc1	$f2,16($s7)
    neg.d	$f5,$f5
    sdc1	$f5,24($s7)
    neg.d	$f2,$f2
    b	.L0167b3f0
    sdc1	$f2,16($s7)
.L0167bc0c:
    ldc1	$f3,0($s7)
    neg.d	$f5,$f5
    sdc1	$f5,8($s7)
    neg.d	$f3,$f3
    b	.L0167b420
    sdc1	$f3,0($s7)
.L0167bc24:
    sd	$zero,648($sp)
    b	.L0167b2c4
    sd	$zero,656($sp)
.L0167bc30:
    bne	$s2,$a2,.L0167b890
    ld	$at,568($sp)
    bne	$s1,$s4,.L0167b890
    ld	$at,568($sp)
    b	.L0167b888
    move	$s5,$a6
.L0167bc48:
    neg.d	$f5,$f4
    b	.L0167b2fc
    sdc1	$f5,8($s8)
.L0167bc54:
    neg.d	$f4,$f4
    b	.L0167b32c
    sdc1	$f4,24($s8)
.L0167bc60:
    neg.d	$f4,$f4
    b	.L0167b35c
    sdc1	$f4,40($s8)
.L0167bc6c:
    neg.d	$f4,$f5
    b	.L0167b3c0
    sdc1	$f4,40($s7)
.L0167bc78:
    neg.d	$f5,$f5
    b	.L0167b3f0
    sdc1	$f5,24($s7)
.L0167bc84:
    neg.d	$f5,$f5
    b	.L0167b420
    sdc1	$f5,8($s7)
.L0167bc90:
    li	$t2,1
    move	$a6,$zero
    move	$a5,$zero
    move	$at,$s3
    b	.L0167b224
    lw	$a4,8($s1)

glabel sgiReleaseCapabilityUnsupported
    lui	$v1,0xc
    addiu	$v1,$v1,-12752
    addu	$at,$t9,$v1
    la	$v0,nmbxErrorBase
    lw	$v0,0($v0)
    jr	$ra
    addiu	$v0,$v0,1

glabel realAllocSpan
    lw	$t9,-28180($gp)
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,1540
    lw	$at,19784($gp)
    beqz	$v0,.L016857ec
    move	$t3,$v0
    addiu	$v0,$v0,12
    sw	$v0,19776($gp)
    li	$a3,6
    addiu	$v0,$t3,1536
    sw	$t3,19784($gp)
    addiu	$a2,$t3,24
    move	$a6,$t3
    sw	$at,1536($t3)
.L016856f0:
    addiu	$a3,$a3,-1
    sw	$a2,12($a6)
    addiu	$a2,$a2,12
    bnez	$a3,.L016856f0
    addiu	$a6,$a6,12
    addiu	$a4,$a2,72
    addiu	$a3,$a2,84
    addiu	$a0,$a2,48
    addiu	$a1,$a2,60
    addiu	$a7,$v0,-96
    addiu	$v0,$a2,24
    sw	$a2,12($a6)
    addiu	$v1,$a2,36
    addiu	$at,$a2,12
    ld	$ra,0($sp)
    nop
.L01685730:
    sw	$v1,48($a6)
    sw	$a1,72($a6)
    sw	$a4,84($a6)
    sw	$a3,96($a6)
    addiu	$a5,$a6,96
    addiu	$a4,$a2,96
    sw	$a4,108($a6)
    addiu	$a3,$a2,168
    addiu	$a2,$a2,180
    sw	$a0,60($a6)
    addiu	$a1,$a4,48
    addiu	$a0,$a4,60
    sw	$v0,36($a6)
    addiu	$v1,$a4,24
    addiu	$v0,$a4,36
    sw	$at,24($a6)
    addiu	$at,$a4,12
    sw	$v0,144($a6)
    sw	$a0,168($a6)
    sw	$a3,180($a6)
    sw	$a2,192($a6)
    addiu	$a6,$a6,192
    addiu	$a2,$a4,96
    sw	$a2,12($a6)
    addiu	$a4,$a4,168
    addiu	$a3,$a2,84
    sw	$a1,60($a5)
    addiu	$a0,$a2,48
    addiu	$a1,$a2,60
    sw	$v1,36($a5)
    addiu	$v0,$a2,24
    addiu	$v1,$a2,36
    sw	$at,24($a5)
    bne	$a2,$a7,.L01685730
    addiu	$at,$a2,12
    sw	$at,24($a6)
    sw	$v0,36($a6)
    sw	$a0,60($a6)
    sw	$a3,96($a6)
    sw	$a4,84($a6)
    sw	$a1,72($a6)
    sw	$v1,48($a6)
    sw	$zero,1524($t3)
    move	$v0,$t3
    sw	$zero,0($t3)
    jr	$ra
    addiu	$sp,$sp,16
.L016857ec:
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16

glabel newFinalSpan__CAB
    lw	$a5,19760($gp)
    addiu	$sp,$sp,-32
    sd	$s1,16($sp)
    lw	$a6,19764($gp)
    lw	$a4,-7324($gp)
    move	$s1,$a1
    sd	$s0,8($sp)
    slt	$at,$a0,$a6
    move	$s0,$a2
    sd	$ra,24($sp)
    slt	$a4,$a4,$a0
    sd	$s2,0($sp)
    subu	$s2,$a0,$a6
    bnez	$at,.L0168c20c
    sll	$s2,$s2,0x2
    bnez	$a4,.L0168c20c
    addu	$s2,$a5,$s2
    b	.L0168c21c
    nop
.L0168c20c:
    lw	$t9,-29360($gp)
    jalr	$t9
    nop
    move	$s2,$v0
.L0168c21c:
    beqz	$s2,.L0168c310
    move	$a4,$zero
    lw	$a7,19772($gp)
.L0168c228:
    lw	$a0,0($s2)
    beqz	$a0,.L0168c2b4
    move	$a5,$zero
    b	.L0168c250
    nop
    nop
.L0168c240:
    move	$a5,$a0
    lw	$a0,0($a0)
    beqz	$a0,.L0168c2b4
    nop
.L0168c250:
    beq	$a0,$a4,.L0168c240
    nop
    lw	$a1,4($a0)
    lw	$a2,8($a0)
    slt	$t8,$s0,$a1
    bnez	$t8,.L0168c240
    slt	$a6,$a2,$s1
    bnez	$a6,.L0168c240
    nop
    beqz	$a4,.L0168c328
    slt	$at,$a1,$s1
    movz	$a1,$s1,$at
    sw	$a1,4($a4)
    lw	$t9,8($a0)
    slt	$ra,$s0,$t9
    movz	$t9,$s0,$ra
    sw	$t9,8($a4)
    addiu	$a7,$a7,-1
    beqz	$a5,.L0168c348
    lw	$a2,0($a0)
    sw	$a2,0($a5)
.L0168c2a4:
    sw	$a7,19772($gp)
.L0168c2a8:
    lw	$s0,8($a4)
    bnez	$a0,.L0168c228
    lw	$s1,4($a4)
.L0168c2b4:
    bnez	$a4,.L0168c310
    lw	$a0,19776($gp)
    beqz	$a0,.L0168c350
    lw	$t9,-29988($gp)
    sw	$a0,19780($gp)
    lw	$v0,0($a0)
    sw	$zero,0($a0)
    beqz	$a0,.L0168c310
    sw	$v0,19776($gp)
.L0168c2d8:
    sw	$s0,8($a0)
    ld	$s0,8($sp)
    sw	$s1,4($a0)
    ld	$s1,16($sp)
    lw	$a1,0($s2)
    sw	$a1,0($a0)
    sw	$a0,0($s2)
    ld	$ra,24($sp)
    lw	$v1,19772($gp)
    ld	$s2,0($sp)
    addiu	$sp,$sp,32
    addiu	$v1,$v1,1
    jr	$ra
    sw	$v1,19772($gp)
.L0168c310:
    ld	$ra,24($sp)
.L0168c314:
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0168c328:
    slt	$a4,$a1,$s1
    slt	$a3,$s0,$a2
    movz	$a1,$s1,$a4
    sw	$a1,4($a0)
    movz	$a2,$s0,$a3
    sw	$a2,8($a0)
    b	.L0168c2a8
    move	$a4,$a0
.L0168c348:
    b	.L0168c2a4
    sw	$a2,0($s2)
.L0168c350:
    bal realAllocSpan
    nop
    bnez	$v0,.L0168c2d8
    move	$a0,$v0
    b	.L0168c314
    ld	$ra,24($sp)

glabel fillSpans__AAB
    lw	$v0,19772($gp)
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    beqz	$v0,.L016bf390
    sd	$a1,8($sp)
    lw	$t9,-28180($gp)
    sll	$a0,$v0,0x2
    sd	$ra,48($sp)
    jalr	$t9
    sd	$s0,32($sp)
    lw	$t9,-28180($gp)
    lw	$a0,19772($gp)
    move	$s0,$v0
    sd	$v0,16($sp)
    jalr	$t9
    sll	$a0,$a0,0x2
    ld	$a1,16($sp)
    sd	$v0,24($sp)
    lw	$a2,-7324($gp)
    move	$t1,$v0
    beqz	$a1,.L016bf314
    sd	$s1,40($sp)
    ld	$a3,24($sp)
    lw	$t3,19760($gp)
    beqz	$a3,.L016bf314
    lw	$t2,19764($gp)
    subu	$a7,$a2,$t2
    move	$a2,$zero
    bltz	$a7,.L016bf398
    addiu	$a7,$a7,1
    sll	$t8,$a7,0x2
    addu	$t8,$t3,$t8
.L016bf250:
    lw	$a7,0($t3)
    beqz	$a7,.L016bf2e4
    pref	0x0,256($t3)
.L016bf25c:
    lw	$t9,8($a7)
    lw	$t0,4($a7)
    slt	$t9,$t0,$t9
    beqz	$t9,.L016bf294
    nop
    sh	$t2,2($s0)
    sh	$t0,0($s0)
    lw	$at,4($a7)
    lw	$ra,8($a7)
    addiu	$a2,$a2,1
    addiu	$t1,$t1,4
    addiu	$s0,$s0,4
    subu	$ra,$ra,$at
    sw	$ra,-4($t1)
.L016bf294:
    lw	$a7,0($a7)
    beqz	$a7,.L016bf2e4
    nop
    lw	$v0,8($a7)
    lw	$t0,4($a7)
    slt	$v0,$t0,$v0
    beqz	$v0,.L016bf2d8
    nop
    sh	$t2,2($s0)
    sh	$t0,0($s0)
    lw	$a0,4($a7)
    lw	$v1,8($a7)
    addiu	$a2,$a2,1
    addiu	$t1,$t1,4
    addiu	$s0,$s0,4
    subu	$v1,$v1,$a0
    sw	$v1,-4($t1)
.L016bf2d8:
    lw	$a7,0($a7)
    bnez	$a7,.L016bf25c
    nop
.L016bf2e4:
    addiu	$t3,$t3,4
    bne	$t3,$t8,.L016bf250
    addiu	$t2,$t2,1
.L016bf2f0:
    ld	$t9,8($sp)
    move	$a1,$t9
    lw	$t9,72($t9)
    lw	$t9,0($t9)
    ld	$a0,0($sp)
    ld	$a3,16($sp)
    ld	$a4,24($sp)
    jalr	$t9
    li	$a5,1
.L016bf314:
    lw	$a0,19784($gp)
    beqz	$a0,.L016bf334
    la	$s1,Xfree
.L016bf320:
    move	$t9,$s1
    jalr	$t9
    lw	$s0,1536($a0)
    bnez	$s0,.L016bf320
    move	$a0,$s0
.L016bf334:
    ld	$s0,16($sp)
    sw	$zero,19784($gp)
    move	$t9,$s1
    sw	$zero,19776($gp)
    jalr	$t9
    lw	$a0,19760($gp)
    move	$t9,$s1
    sw	$zero,19760($gp)
    jalr	$t9
    move	$a0,$s0
    move	$t9,$s1
    ld	$s0,32($sp)
    jalr	$t9
    ld	$a0,24($sp)
    sw	$zero,19764($gp)
    li	$at,-1
    sw	$at,-7324($gp)
    ld	$ra,48($sp)
    sw	$zero,19768($gp)
    sw	$zero,19772($gp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016bf390:
    jr	$ra
    addiu	$sp,$sp,64
.L016bf398:
    b	.L016bf2f0
    move	$a2,$zero

glabel realFindSpan__BAB
    lw	$a5,19764($gp)
    addiu	$sp,$sp,-64
    lw	$a1,-7324($gp)
    slt	$v0,$a0,$a5
    sd	$s0,40($sp)
    move	$s0,$a0
    bnez	$v0,.L016cdb24
    slt	$a1,$a1,$a0
    beqz	$a1,.L016cdc64
.L016cdb24:
    lw	$a1,19768($gp)
    beqz	$a1,.L016cdc84
    sd	$ra,56($sp)
.L016cdb30:
    lw	$a4,-7324($gp)
    subu	$a3,$a5,$s0
    subu	$a4,$s0,$a4
    li	$a0,100
    movz	$a3,$a4,$v0
    sd	$s1,48($sp)
    slti	$a2,$a3,100
    addiu	$a3,$a3,100
    lw	$t9,-28180($gp)
    movz	$a0,$a3,$a2
    sd	$a0,24($sp)
    addu	$a0,$a0,$a1
    sd	$a0,8($sp)
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,0($sp)
    ld	$t0,24($sp)
    beqz	$v0,.L016cdc6c
    move	$s1,$v0
    lw	$a5,19764($gp)
    lw	$a6,-7324($gp)
    lw	$a1,19760($gp)
    slt	$a7,$s0,$a5
    subu	$t1,$a5,$t0
    addu	$t0,$t0,$a6
    movz	$t1,$a5,$a7
    sd	$t1,32($sp)
    movz	$a6,$t0,$a7
    beqz	$a1,.L016cdbd8
    sd	$a6,16($sp)
    lw	$a2,19768($gp)
    ld	$a0,32($sp)
    lw	$t9,-27928($gp)
    sll	$a2,$a2,0x2
    subu	$a0,$a5,$a0
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$v0,$a0
    lw	$t9,-28196($gp)
    jalr	$t9
    lw	$a0,19760($gp)
    lw	$a5,19764($gp)
.L016cdbd8:
    ld	$v0,32($sp)
    subu	$v0,$a5,$v0
    blez	$v0,.L016cdbfc
    lw	$a5,-7324($gp)
    lw	$t9,-27872($gp)
    move	$a0,$s1
    jalr	$t9
    sll	$a1,$v0,0x2
    lw	$a5,-7324($gp)
.L016cdbfc:
    ld	$a4,16($sp)
    subu	$a4,$a4,$a5
    blez	$a4,.L016cdc24
    ld	$v0,0($sp)
    lw	$t9,-27872($gp)
    sll	$a2,$a4,0x2
    addu	$a0,$s1,$v0
    move	$a1,$a2
    jalr	$t9
    subu	$a0,$a0,$a2
.L016cdc24:
    ld	$ra,56($sp)
    sw	$s1,19760($gp)
    move	$a1,$s1
    ld	$s1,48($sp)
    ld	$a3,8($sp)
    ld	$a5,32($sp)
    ld	$a4,16($sp)
    sw	$a4,-7324($gp)
    sw	$a5,19764($gp)
    sw	$a3,19768($gp)
.L016cdc4c:
    subu	$v0,$s0,$a5
    ld	$s0,40($sp)
    addiu	$sp,$sp,64
    sll	$v0,$v0,0x2
    jr	$ra
    addu	$v0,$a1,$v0
.L016cdc64:
    b	.L016cdc4c
    lw	$a1,19760($gp)
.L016cdc6c:
    ld	$ra,56($sp)
    move	$v0,$zero
    ld	$s1,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016cdc84:
    move	$a5,$s0
    sw	$s0,19764($gp)
    addiu	$v1,$s0,-1
    sw	$v1,-7324($gp)
    b	.L016cdb30
    move	$v0,$zero

glabel hookX__LP
    ldc1	$f1,8($a1)
    ldc1	$f0,0($a1)
    addiu	$sp,$sp,-64
    sd	$a1,24($sp)
    sd	$s1,40($sp)
    c.eq.d	$f0,$f1
    sdc1	$f20,8($sp)
    mov.d	$f20,$f12
    move	$s1,$a2
    sd	$s0,32($sp)
    move	$s0,$a3
    sd	$s2,16($sp)
    bc1f	.L016f3d34
    move	$s2,$a4
.L016f3cc8:
    beqz	$s2,.L016f3df4
    ld	$s2,16($sp)
    lw	$v0,96($s0)
    ld	$s2,16($sp)
    ldc1	$f0,104($s0)
    beqz	$v0,.L016f3d10
    ldc1	$f6,112($s0)
    ldc1	$f3,64($s1)
    ldc1	$f2,72($s1)
    c.le.d $f3,$f20
    bc1f .L016f3d10
    c.le.d $f20,$f2
    bc1f .L016f3d10
    nop
    ldc1	$f6,80($s0)
    ldc1	$f5,88($s0)
    b	.L016f3d1c
    madd.d	$f5,$f5,$f6,$f20
.L016f3d10:
    lw	$v1,120($s0)
    beqz	$v1,.L016f3e44
    madd.d	$f5,$f6,$f0,$f20
.L016f3d1c:
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    mov.d	$f0,$f5
    ldc1	$f20,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L016f3d34:
    lw	$t9,-30716($gp)
    move	$a1,$a2
    move	$a2,$a3
    sd	$ra,48($sp)
    jalr	$t9
    move	$a3,$a4
    ldc1	$f7,0($s1)
    ld	$ra,48($sp)
    la	$a2,_rodata_symbol
    dmtc1	$zero,$f10
    ldc1	$f6,8($s1)
    c.le.d $f7,$f0
    ld	$a0,24($sp)
    mul.d	$f7,$f0,$f0
    mov.d	$f5,$f0
    ldc1	$f8,24624($a2)
    c.eq.d $f0,$f10
    ldc1	$f9,1808($a2)
    c.le.d $f0,$f6
    bc1f .L016f3cc8
    mul.d	$f13,$f0,$f7
    bc1f .L016f3cc8
    mtc1	$s2,$f6
    cvt.d.w	$f15,$f6
    ldc1	$f11,8($s0)
    mul.d	$f14,$f11,$f9
    msub.d	$f14,$f14,$f7,$f8
    ldc1	$f12,40($s0)
    mul.d	$f5,$f11,$f20
    mul.d	$f5,$f5,$f14
    beqz	$s2,.L016f3e78
    msub.d	$f5,$f5,$f12,$f13
    c.lt.d $f10,$f5
    bc1f .L016f3cc8
    nop
.L016f3dc0:
    bc1f .L016f3e8c
    sdc1	$f0,0($sp)
    ldc1	$f16,0($a0)
    add.d	$f15,$f15,$f16
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    c.eq.d $f10,$f15
    ld	$s2,16($sp)
    ldc1	$f20,8($sp)
    bc1t .L016f3e58
    ldc1	$f5,16($a0)
    b	.L016f3e5c
    neg.d	$f0,$f5
.L016f3df4:
    lw	$a1,120($s0)
    ldc1	$f0,88($s0)
    lw	$a2,96($s0)
    beqz	$a1,.L016f3e34
    ldc1	$f6,80($s0)
    ldc1	$f18,48($s1)
    ldc1	$f17,56($s1)
    c.le.d $f18,$f20
    bc1f .L016f3e34
    c.le.d $f20,$f17
    bc1f .L016f3e34
    nop
    ldc1	$f6,104($s0)
    ldc1	$f5,112($s0)
    b	.L016f3d1c
    madd.d	$f5,$f5,$f6,$f20
.L016f3e34:
    bnez	$a2,.L016f3d1c
    madd.d	$f5,$f0,$f6,$f20
    b	.L016f3e64
    nop
.L016f3e44:
    ld	$a2,24($sp)
    ldc1	$f6,16($a2)
    ldc1	$f5,0($a2)
    b	.L016f3d1c
    sub.d	$f5,$f5,$f6
.L016f3e58:
    mov.d	$f0,$f5
.L016f3e5c:
    jr	$ra
    addiu	$sp,$sp,64
.L016f3e64:
    ld	$a3,24($sp)
    ldc1	$f6,16($a3)
    ldc1	$f5,0($a3)
    b	.L016f3d1c
    sub.d	$f5,$f5,$f6
.L016f3e78:
    c.lt.d	$f5,$f10
    bc1f	.L016f3cc8
    nop
    b	.L016f3dc0
    nop
.L016f3e8c:
    lw	$t9,-28540($gp)
    ld	$s2,16($sp)
    jalr	$t9
    sub.d	$f12,$f11,$f7
    ld	$a4,24($sp)
    ldc1	$f6,0($sp)
    ldc1	$f5,40($s0)
    ldc1	$f7,8($s0)
    ldc1	$f8,8($a4)
    mul.d	$f5,$f5,$f6
    msub.d	$f5,$f5,$f7,$f20
    ldc1	$f7,0($a4)
    mul.d	$f7,$f7,$f8
    mul.d	$f6,$f6,$f7
    mul.d	$f5,$f0,$f5
    ld	$ra,48($sp)
    b	.L016f3d1c
    div.d	$f5,$f5,$f6

glabel sgiEnableCapabilityUnsupported
    lui	$v1,0x4
    addiu	$v1,$v1,-20992
    addu	$at,$t9,$v1
    la	$v0,nmbxErrorBase
    lw	$v0,0($v0)
    jr	$ra
    addiu	$v0,$v0,1

glabel arcSpan__MP
    addiu	$sp,$sp,-160
    sd	$a4,8($sp)
    sd	$a5,16($sp)
    sd	$s3,64($sp)
    sd	$s4,72($sp)
    sd	$ra,80($sp)
    sd	$s1,56($sp)
    sd	$s0,48($sp)
    lw	$at,80($a6)
    move	$s0,$a0
    sd	$s6,24($sp)
    move	$s6,$a1
    sd	$s7,40($sp)
    slt	$at,$a0,$at
    move	$s7,$a3
    move	$s1,$a6
    sd	$s2,32($sp)
    move	$s2,$a7
    bnez	$at,.L0171f6b4
    sd	$s5,88($sp)
    lw	$v0,84($a6)
    slt	$v0,$v0,$a0
    bnez	$v0,.L0171f6b8
    mtc1	$s0,$f13
    move	$s3,$a3
    addu	$s4,$a1,$a2
    la	$s5,hookX__LP
    b	.L0171f790
    negu	$s4,$s4
.L0171f6b4:
    mtc1	$s0,$f13
.L0171f6b8:
    la	$s5,hookX__LP
    ldc1	$f12,72($s2)
    move	$t9,$s5
    cvt.d.w	$f13,$f13
    ld	$a1,16($sp)
    move	$a2,$s1
    move	$a3,$s2
    li	$a4,1
    sdc1	$f13,0($sp)
    jalr	$t9
    add.d	$f12,$f12,$f13
    lw	$t8,120($s2)
    ldc1	$f7,0($sp)
    dmtc1	$zero,$f8
    ldc1	$f6,72($s2)
    mov.d	$f5,$f0
    beqz	$t8,.L0171f734
    dmtc1	$zero,$f9
    add.d	$f7,$f6,$f7
    ldc1	$f15,48($s1)
    ldc1	$f14,56($s1)
    c.le.d	$f15,$f7
    bc1f	.L0171f734
    c.le.d $f7,$f14
    bc1f .L0171f734
    nop
    ldc1	$f6,104($s2)
    ldc1	$f5,112($s2)
    madd.d	$f5,$f5,$f6,$f7
    c.lt.d $f5,$f0
    movf.d	$f5,$f0,$fcc1
.L0171f734:
    ldc1	$f6,64($s2)
    sub.d	$f12,$f6,$f5
    add.d	$f0,$f6,$f5
    trunc.w.d	$f11,$f12
    trunc.w.d	$f7,$f0
    cvt.d.w	$f13,$f11
    mfc1	$a0,$f7
    c.eq.d $f13,$f12
    cvt.d.w	$f10,$f7
    mfc1	$a3,$f11
    c.lt.d $f12,$f8
    move	$a2,$a3
    move	$s3,$a0
    bc1t .L0171f778
    c.eq.d $f10,$f0
    bc1f .L0171f980
    nop
.L0171f778:
    c.lt.d $f0,$f9
.L0171f77c:
    swc1	$f7,19324($gp)
    bc1t .L0171f790
    negu	$s4,$a2
    bc1f .L0171f98c
    nop
.L0171f790:
    lw	$t9,88($s1)
    slt	$t9,$s0,$t9
    bnez	$t9,.L0171f7c4
    mtc1	$s0,$f13
    lw	$ra,92($s1)
    slt	$ra,$ra,$s0
    bnez	$ra,.L0171f7c4
    mtc1	$s0,$f13
    ld	$s1,8($sp)
    negu	$s5,$s6
    b	.L0171f898
    addu	$s1,$s7,$s1
    mtc1	$s0,$f13
.L0171f7c4:
    ldc1	$f12,72($s2)
    move	$t9,$s5
    cvt.d.w	$f13,$f13
    ld	$a1,16($sp)
    move	$a2,$s1
    move	$a3,$s2
    move	$a4,$zero
    sdc1	$f13,0($sp)
    jalr	$t9
    add.d	$f12,$f12,$f13
    lw	$t8,96($s2)
    ldc1	$f7,0($sp)
    ldc1	$f8,72($s2)
    dmtc1	$zero,$f10
    ldc1	$f6,64($s2)
    mov.d	$f5,$f0
    beqz	$t8,.L0171f840
    dmtc1	$zero,$f9
    add.d	$f7,$f8,$f7
    ldc1	$f15,64($s1)
    ldc1	$f14,72($s1)
    c.le.d $f15,$f7
    bc1f .L0171f840
    c.le.d $f7,$f14
    bc1f .L0171f844
    sub.d	$f12,$f6,$f5
    ldc1	$f8,80($s2)
    ldc1	$f5,88($s2)
    madd.d	$f5,$f5,$f8,$f7
    c.lt.d $f5,$f0
    movt.d	$f5,$f0,$fcc4
.L0171f840:
    sub.d	$f12,$f6,$f5
.L0171f844:
    add.d	$f0,$f6,$f5
    trunc.w.d	$f11,$f12
    trunc.w.d	$f7,$f0
    cvt.d.w	$f13,$f11
    mfc1	$a0,$f7
    c.eq.d $f13,$f12
    cvt.d.w	$f8,$f7
    mfc1	$a2,$f11
    c.lt.d $f12,$f10
    move	$a1,$a2
    move	$s1,$a0
    bc1t .L0171f880
    c.eq.d $f8,$f0
    bc1f .L0171f998
    nop
.L0171f880:
    negu	$s5,$a1
.L0171f884:
    c.lt.d $f0,$f9
    bc1t .L0171f898
    swc1	$f7,19324($gp)
    bc1f .L0171f9a4
    nop
.L0171f898:
    slt	$t9,$s3,$s1
    beqz	$t9,.L0171f8f4
    lw	$s6,164($sp)
    andi	$ra,$s6,0x1
    beqz	$ra,.L0171f8d0
    andi	$a1,$s6,0x8
    lw	$a2,136($s2)
    lw	$a0,128($s2)
    lw	$t9,-29932($gp)
    subu	$a0,$a0,$s0
    addu	$a1,$a2,$s3
    jalr	$t9
    addu	$a2,$a2,$s1
    andi	$a1,$s6,0x8
.L0171f8d0:
    beqz	$a1,.L0171f8f4
    la	$s7,newFinalSpan__CAB
    lw	$a2,136($s2)
    lw	$a0,132($s2)
    move	$t9,$s7
    addu	$a0,$a0,$s0
    addu	$a1,$a2,$s3
    jalr	$t9
    addu	$a2,$a2,$s1
.L0171f8f4:
    slt	$a1,$s4,$s5
    beqz	$a1,.L0171f954
    la	$s7,newFinalSpan__CAB
    lw	$s6,164($sp)
    andi	$a2,$s6,0x2
    beqz	$a2,.L0171f930
    andi	$a2,$s6,0x4
    lw	$a1,136($s2)
    lw	$a0,128($s2)
    move	$t9,$s7
    subu	$a2,$a1,$s4
    subu	$a1,$a1,$s5
    jalr	$t9
    subu	$a0,$a0,$s0
    andi	$a2,$s6,0x4
.L0171f930:
    beqz	$a2,.L0171f958
    ld	$s6,24($sp)
    lw	$a1,136($s2)
    lw	$a0,132($s2)
    move	$t9,$s7
    subu	$a2,$a1,$s4
    subu	$a1,$a1,$s5
    jalr	$t9
    addu	$a0,$a0,$s0
.L0171f954:
    ld	$s6,24($sp)
.L0171f958:
    ld	$s3,64($sp)
    ld	$s2,32($sp)
    ld	$s4,72($sp)
    ld	$s7,40($sp)
    ld	$ra,80($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s5,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0171f980:
    addiu	$a2,$a3,1
    b	.L0171f77c
    c.lt.d $f0,$f9
.L0171f98c:
    addiu	$s3,$a0,1
    b	.L0171f790
    nop
.L0171f998:
    addiu	$a1,$a2,1
    b	.L0171f884
    negu	$s5,$a1
.L0171f9a4:
    addiu	$s1,$a0,1
    b	.L0171f898
    nop

