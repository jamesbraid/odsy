.section .text
.set noat
.set noreorder


glabel odsy_hpipe_sema_init
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    daddiu     $a0,$gp,0
    jal        spinlock_init
    ld         $a1,-30720($gp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_hpipe_invalidate
    daddiu     $sp,$sp,-16
    lui        $at,0x1
    sd         $ra,0($sp)
    daddu      $at,$a0,$at
    sd         $zero,-19288($at)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $zero,-19296($at)
    ld         $a3,0($gp)
    beqz       $a3, .L00000050
    move       $a1,$v0
    sw         $zero,0($a3)
.L00000050:
    jal        mutex_spinunlock
    daddiu     $a0,$gp,0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_hpipe_discover
    daddiu     $sp,$sp,-96
    sd         $s7,88($sp)
    sd         $s5,80($sp)
    sd         $s0,64($sp)
    sd         $s4,56($sp)
    sd         $ra,48($sp)
    ld         $a0,0($gp)
    sd         $s6,40($sp)
    sd         $s3,32($sp)
    beqz       $a0, .L00000540
    sd         $s2,24($sp)
    jal        bzero
    li         $a1,4752
.L00000098:
    move       $s0,$zero
    ld         $s4,-30720($gp)
.L000000a0:
    dsll       $a2,$s0,0x3
    ld         $a0,0($gp)
    dsubu      $a2,$a2,$s0
    dsll       $a2,$a2,0x3
    daddiu     $a1,$s4,16
    daddu      $a0,$a0,$a2
    jal        spinlock_init
    daddiu     $a0,$a0,24
    addiu      $s0,$s0,1
    slti       $a3,$s0,64
    bnez       $a3, .L000000a0
    ld         $a5,0($gp)
    li         $a4,1
    sw         $a4,0($a5)
    lw         $a3,0($gp)
    lui        $s2,0xf000
    ld         $s5,0($sp)
    lui        $s6,0x1000
    lui        $s0,0x1
    blez       $a3, .L0000029c
    sd         $s1,72($sp)
    move       $s1,$zero
    b          .L000005d4
    lui        $s0,0x1
.L00000100:
    lbu        $a6,731($s3)
    lbu        $a5,730($s3)
    lbu        $a4,729($s3)
    sll        $a6,$a6,0x8
    lbu        $a3,732($s3)
    sll        $a5,$a5,0x10
    sll        $a4,$a4,0x18
    or         $a4,$a4,$a5
    or         $a3,$a3,$a6
    or         $a3,$a3,$a4
    sw         $a3,8($sp)
    li         $a2,90
    lw         $a4,700($s3)
    li         $a1,170
    dsll32     $s7,$a3,0x0
    move       $a0,$s3
    srl        $a4,$a4,0x3
    dsrl       $s7,$s7,0x10
    andi       $a4,$a4,0x1
    jal        odsyCompositorRegWrite
    andi       $a4,$a4,0xffff
    lbu        $a4,733($s3)
    lbu        $a3,734($s3)
    sll        $a4,$a4,0x8
    or         $a3,$a3,$a4
    sw         $a3,8($sp)
    li         $a2,91
    dsll32     $s5,$a3,0x0
    lw         $a4,700($s3)
    li         $a1,170
    dsrl32     $s5,$s5,0x0
    move       $a0,$s3
    srl        $a4,$a4,0x3
    or         $s5,$s5,$s7
    andi       $a4,$a4,0x1
    jal        odsyCompositorRegWrite
    andi       $a4,$a4,0xffff
.L00000194:
    move       $a3,$zero
.L00000198:
    ld         $a0,0($gp)
    dsll       $a5,$a3,0x2
    dsubu      $a5,$a5,$a3
.L000001a4:
    dsll       $a5,$a5,0x4
    daddu      $a4,$a5,$a0
    ld         $a6,3600($a4)
    beqz       $a6, .L00000254
    nop
    addiu      $a3,$a3,1
    slti       $a6,$a3,16
    dsll       $a5,$a3,0x2
    bnez       $a6, .L000001a4
    dsubu      $a5,$a5,$a3
.L000001cc:
    lw         $a3,0($gp)
.L000001d0:
    addiu      $s1,$s1,1
    slt        $a7,$s1,$a3
    ld         $s3,0($gp)
    beqz       $a7, .L00000298
    dsll       $t8,$s1,0x3
    daddu      $s3,$s3,$t8
.L000001e8:
    ld         $s3,0($s3)
    lw         $a6,700($s3)
    and        $a5,$s2,$a6
    srl        $a4,$a6,0x1
    beqz       $a6, .L000001d0
    andi       $a4,$a4,0x3
    bnez       $a4, .L000001d0
    lw         $a3,0($gp)
    beqz       $a5, .L00000100
    nop
    bne        $s6, $a5, .L00000198
    move       $a3,$zero
    move       $a0,$s3
    li         $a1,171
    li         $a2,90
    srl        $a4,$a6,0x3
    daddiu     $a3,$sp,8
    andi       $a4,$a4,0x1
    jal        odsyCompositorRegRead
    andi       $a4,$a4,0xffff
    lw         $s5,8($sp)
    lwu        $a5,700($s3)
    dsll32     $s5,$s5,0x0
    dsrl32     $s5,$s5,0x0
    or         $a5,$s5,$a5
    b          .L00000194
    sw         $a5,700($s3)
.L00000254:
    sd         $s5,3600($a4)
    ld         $at,0($gp)
    daddu      $at,$at,$a5
    sw         $a3,3592($at)
    ld         $ra,0($gp)
    daddu      $ra,$ra,$a5
    sd         $s3,3608($ra)
    ld         $t9,0($gp)
    daddu      $ra,$s0,$s3
    daddu      $t9,$t9,$a5
    daddiu     $t9,$t9,3592
    sd         $t9,-19288($ra)
    ld         $t9,0($gp)
    lw         $t8,4748($t9)
    addiu      $t8,$t8,1
    b          .L000001cc
    sw         $t8,4748($t9)
.L00000298:
    sd         $s5,0($sp)
.L0000029c:
    blez       $a3, .L00000388
    move       $s1,$zero
    lui        $s2,0xf000
    ld         $s5,0($sp)
    lui        $s6,0x1000
    b          .L000005e4
    ld         $s3,0($gp)
.L000002b8:
    move       $s5,$zero
.L000002bc:
    lw         $a3,0($gp)
.L000002c0:
    addiu      $s1,$s1,1
    slt        $v0,$s1,$a3
    ld         $s3,0($gp)
    beqz       $v0, .L00000388
    dsll       $t8,$s1,0x3
    daddu      $s3,$s3,$t8
.L000002d8:
    ld         $s3,0($s3)
    lw         $a6,700($s3)
    move       $s7,$zero
    daddu      $a2,$s0,$s3
    beqz       $a6, .L00000380
    srl        $a0,$a6,0x1
    andi       $t9,$a0,0x3
    beqz       $t9, .L000002bc
    move       $a0,$s3
    li         $a1,171
    li         $a2,90
    srl        $a4,$a6,0x3
    daddiu     $a3,$sp,8
    andi       $a4,$a4,0x1
    jal        odsyCompositorRegRead
    andi       $a4,$a4,0xffff
    bnez       $v0, .L000002b8
    nop
    lw         $a6,700($s3)
    and        $a0,$s2,$a6
    beqz       $a0, .L0000056c
    daddiu     $a3,$sp,8
    beq        $s6, $a0, .L00000554
.L00000334:
    move       $a2,$zero
.L00000338:
    ld         $a0,0($gp)
    li         $a6,16
    dsll       $a4,$a2,0x2
    dsubu      $a4,$a4,$a2
.L00000348:
    dsll       $a4,$a4,0x4
    daddu      $a3,$a4,$a0
    ld         $a5,3600($a3)
    beq        $a5, $s5, .L00000510
    nop
    addiu      $a2,$a2,1
    slti       $a5,$a2,16
    dsll       $a4,$a2,0x2
    bnez       $a5, .L00000348
    dsubu      $a4,$a4,$a2
.L00000370:
    bne        $a2, $a6, .L000002c0
    lw         $a3,0($gp)
    b          .L000005c0
    daddiu     $a1,$s4,32
.L00000380:
    b          .L000002bc
    sd         $zero,-19288($a2)
.L00000388:
    ld         $s1,72($sp)
    ld         $s4,56($sp)
    ld         $s7,88($sp)
    ld         $s5,80($sp)
    ld         $a7,0($gp)
    ld         $s6,40($sp)
    move       $a2,$zero
    move       $t3,$zero
    sw         $a3,4360($a7)
    li         $t8,-1
    b          .L000005f8
    lw         $a3,0($gp)
.L000003b8:
    addiu      $t3,$t3,1
    slti       $t0,$t3,16
    ld         $t1,0($gp)
    beqz       $t0, .L00000480
    dsll       $t2,$t3,0x2
    dsubu      $t2,$t2,$t3
.L000003d0:
    dsll       $t2,$t2,0x4
    daddu      $t1,$t1,$t2
    ld         $t1,3600($t1)
    move       $a0,$zero
    ld         $t0,0($gp)
    beqz       $t1, .L00000480
    dsll       $t2,$a2,0x2
    blez       $a3, .L000003b8
    nop
    b          .L000005f0
    dsll       $t1,$a0,0x3
.L000003fc:
    lw         $a3,0($gp)
.L00000400:
    addiu      $a0,$a0,1
    slt        $t9,$a0,$a3
    dsll       $t2,$a2,0x2
    ld         $t0,0($gp)
    beqz       $t9, .L000003b8
    dsll       $t1,$a0,0x3
    daddu      $t0,$t0,$t1
.L0000041c:
    ld         $t0,0($t0)
    daddu      $a7,$s0,$t0
    ld         $a6,-19288($a7)
    dsubu      $a5,$t2,$a2
    ld         $a4,0($gp)
    beqz       $a6, .L00000400
    nop
    lw         $t9,0($a6)
    dsll       $t1,$a5,0x2
    bne        $t9, $t3, .L000003fc
    daddu      $a3,$a4,$t1
    sw         $a0,4364($a3)
    lw         $v0,700($t0)
    ld         $v1,0($gp)
    daddu      $v1,$v1,$t1
    srl        $v0,$v0,0x1
    andi       $v0,$v0,0x3
    sw         $v0,4368($v1)
    ld         $ra,-19288($a7)
    ld         $at,0($gp)
    daddu      $at,$at,$t1
    lw         $ra,0($ra)
    addiu      $a2,$a2,1
    b          .L000003fc
    sw         $ra,4372($at)
.L00000480:
    ld         $ra,48($sp)
    blez       $a3, .L000004f8
    move       $a0,$zero
    b          .L00000608
    dsll       $a7,$a0,0x3
.L00000494:
    addiu      $a0,$a0,1
    slt        $v1,$a0,$a3
    dsll       $a4,$a2,0x2
    ld         $a6,0($gp)
    beqz       $v1, .L000004f8
    dsll       $a7,$a0,0x3
    daddu      $a6,$a6,$a7
.L000004b0:
    ld         $a6,0($a6)
    daddu      $a6,$s0,$a6
    ld         $a6,-19288($a6)
    dsubu      $a4,$a4,$a2
    ld         $a5,0($gp)
    bnez       $a6, .L00000494
    dsll       $t1,$a4,0x2
    daddu      $t3,$a5,$t1
    sw         $a0,4364($t3)
    ld         $t2,0($gp)
    daddu      $t2,$t2,$t1
    sw         $zero,4368($t2)
    ld         $t0,0($gp)
    daddu      $t0,$t0,$t1
    sw         $t8,4372($t0)
    addiu      $a2,$a2,1
    b          .L00000494
    lw         $a3,0($gp)
.L000004f8:
    ld         $s2,24($sp)
    move       $v0,$zero
    ld         $s3,32($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000510:
    lw         $t9,700($s3)
    srl        $t9,$t9,0x1
    andi       $t9,$t9,0x3
    dsll       $t9,$t9,0x3
    daddu      $t9,$a3,$t9
    sd         $s3,3608($t9)
    ld         $t8,0($gp)
    daddu      $t9,$s0,$s3
    daddu      $t8,$t8,$a4
    daddiu     $t8,$t8,3592
    b          .L00000370
    sd         $t8,-19288($t9)
.L00000540:
    li         $a0,4752
    jal        kmem_zalloc
    move       $a1,$zero
    b          .L00000098
    sd         $v0,0($gp)
.L00000554:
    lw         $s5,8($sp)
    dsll32     $s5,$s5,0x0
    dsrl32     $s5,$s5,0x0
    or         $ra,$a6,$s5
    b          .L00000334
    sw         $ra,700($s3)
.L0000056c:
    li         $a2,91
    li         $a1,171
    srl        $a4,$a6,0x3
    move       $a0,$s3
    lwu        $s5,8($sp)
    andi       $a4,$a4,0x1
    andi       $a4,$a4,0xffff
    jal        odsyCompositorRegRead
    dsll       $s5,$s5,0x10
    beqz       $v0, .L000005b0
    sd         $s5,16($sp)
    move       $s5,$zero
    li         $s7,1
.L000005a0:
    bnez       $s7, .L000002c0
    lw         $a3,0($gp)
    b          .L00000338
    move       $a2,$zero
.L000005b0:
    ld         $t8,16($sp)
    lwu        $s5,8($sp)
    b          .L000005a0
    or         $s5,$s5,$t8
.L000005c0:
    li         $a0,4
    jal        cmn_err
    move       $a2,$s5
    b          .L000002c0
    lw         $a3,0($gp)
.L000005d4:
    ld         $s3,0($gp)
    dsll       $t8,$s1,0x3
    b          .L000001e8
    daddu      $s3,$s3,$t8
.L000005e4:
    dsll       $t8,$s1,0x3
    b          .L000002d8
    daddu      $s3,$s3,$t8
.L000005f0:
    b          .L0000041c
    daddu      $t0,$t0,$t1
.L000005f8:
    dsll       $t2,$t3,0x2
    ld         $t1,0($gp)
    b          .L000003d0
    dsubu      $t2,$t2,$t3
.L00000608:
    ld         $a6,0($gp)
    dsll       $a4,$a2,0x2
    b          .L000004b0
    daddu      $a6,$a6,$a7

glabel gfP_OdsyHPgetTopology
    daddiu     $sp,$sp,-48
    sd         $a2,0($sp)
    daddiu     $a0,$gp,0
    sd         $s1,24($sp)
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $s1,$a3
    ld         $a3,0($gp)
    sd         $v0,8($sp)
    beqz       $a3, .L00000690
    sd         $s0,32($sp)
    lw         $at,0($a3)
    beqz       $at, .L00000690
    move       $s0,$zero
    li         $a2,388
.L00000654:
    ld         $a1,0($sp)
    jal        copyout
    daddiu     $a0,$a3,4360
    li         $v1,14
    movn       $s0,$v1,$v0
.L00000668:
    sw         $s0,0($s1)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    ld         $ra,16($sp)
    ld         $s0,32($sp)
    lw         $v0,0($s1)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000690:
    jal        odsy_hpipe_discover
    nop
    li         $s0,22
    movz       $s0,$zero,$v0
    bnez       $s0, .L00000668
    ld         $a3,0($gp)
    b          .L00000654
    li         $a2,388

glabel gfP_OdsyHPgetConfig
    daddiu     $sp,$sp,-560
    move       $a0,$a2
    sd         $s0,536($sp)
    move       $s0,$a3
    daddiu     $a1,$sp,0
    sd         $a2,528($sp)
    sd         $ra,544($sp)
    jal        copyin
    li         $a2,524
    bnez       $v0, .L000007c0
    ld         $v0,0($gp)
    beqz       $v0, .L000007b4
    nop
    lw         $at,0($v0)
    beqz       $at, .L000007b4
    lw         $t0,8($sp)
    slti       $a3,$t0,64
    dsll       $a7,$t0,0x3
    bltz       $t0, .L00000788
    dsubu      $a5,$a7,$t0
    beqz       $a3, .L0000078c
    li         $a2,524
    lui        $t2,0x1
    dsll       $a6,$a5,0x3
    daddu      $a6,$v0,$a6
    lw         $v1,8($a6)
    li         $a0,1
    move       $a3,$zero
    bne        $v1, $a0, .L00000788
    move       $v0,$zero
    daddiu     $t3,$sp,0
    ld         $t1,16($a6)
    dsll       $t0,$a3,0x3
.L00000734:
    daddu      $t0,$t1,$t0
    ld         $a7,16($t0)
    dsll       $a6,$v0,0x4
    addiu      $a3,$a3,1
    daddu      $a6,$t3,$a6
    beqz       $a7, .L00000780
    slti       $a5,$a3,4
    lh         $ra,790($a7)
    sw         $ra,24($a6)
    ld         $t9,16($t0)
    daddu      $t9,$t2,$t9
    lw         $t9,-19272($t9)
    sw         $zero,16($a6)
    sw         $t9,12($a6)
    ld         $t8,16($t0)
    daddu      $t8,$t2,$t8
    lw         $t8,-19268($t8)
    addiu      $v0,$v0,1
    sw         $t8,20($a6)
.L00000780:
    bnez       $a5, .L00000734
    dsll       $t0,$a3,0x3
.L00000788:
    li         $a2,524
.L0000078c:
    ld         $a1,528($sp)
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L000007dc
    ld         $a1,-30720($gp)
    lw         $v0,0($s0)
.L000007a4:
    ld         $ra,544($sp)
    ld         $s0,536($sp)
    jr         $ra
    daddiu     $sp,$sp,560
.L000007b4:
    li         $v0,22
    b          .L000007a4
    sw         $v0,0($s0)
.L000007c0:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,96
    li         $v0,14
    b          .L000007a4
    sw         $v0,0($s0)
.L000007dc:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,136
    li         $v0,14
    b          .L000007a4
    sw         $v0,0($s0)

glabel odsy_usb_comp_update_tiles
    ld         $a1,-30720($gp)
    li         $a0,4
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,208
    ld         $ra,0($sp)
    li         $v0,-1
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_usb_comp_readwrite_register
    ld         $a1,-30720($gp)
    li         $a0,4
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,248
    ld         $ra,0($sp)
    li         $v0,-1
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_program_compositor_tiling
    lw         $t0,0($gp)
    lw         $a7,0($gp)
    daddiu     $sp,$sp,-80
    sd         $s0,48($sp)
    ld         $s0,16($a0)
    sd         $s2,56($sp)
    sd         $ra,64($sp)
    li         $v0,1
    beqz       $s0, .L00000be8
    sd         $s1,72($sp)
    lui        $v0,0x1
    daddu      $t1,$v0,$s0
    lw         $a5,-19256($t1)
    lw         $t2,-19264($t1)
    slt        $a6,$t2,$zero
    addu       $a5,$a5,$t2
    addiu      $a3,$a5,3
    slt        $a4,$a5,$zero
    movz       $a3,$a5,$a4
    addiu      $a5,$t2,3
    movz       $a5,$t2,$a6
    sra        $a3,$a3,0x2
    sll        $a3,$a3,0x10
    lui        $a4,0x3ff
    sra        $a5,$a5,0x2
    lw         $s2,700($s0)
    andi       $a5,$a5,0x3ff
    and        $a3,$a4,$a3
    or         $a3,$a3,$a5
    sw         $a3,0($sp)
    ld         $a6,24($a0)
    sra        $t3,$s2,0x8
    andi       $s1,$t3,0xff
    beqz       $a6, .L00000c00
    move       $t2,$a7
    daddu      $t9,$v0,$a6
    lw         $t8,-19256($t9)
    lw         $t9,-19264($t9)
    addu       $t8,$t8,$t9
    slt        $a5,$t8,$zero
    addiu      $a2,$t8,3
    movz       $a2,$t8,$a5
    sra        $a2,$a2,0x2
    sll        $a2,$a2,0x10
    slt        $t8,$t9,$zero
    addiu      $a5,$t9,3
    movz       $a5,$t9,$t8
    sra        $a5,$a5,0x2
    and        $a2,$a4,$a2
    andi       $a5,$a5,0x3ff
    or         $a2,$a2,$a5
    sw         $a2,4($sp)
.L00000914:
    ld         $a6,32($a0)
    beqz       $a6, .L00000960
    move       $a2,$zero
    daddu      $t9,$v0,$a6
    lw         $t8,-19256($t9)
    lw         $t9,-19264($t9)
    addu       $t8,$t8,$t9
    slt        $a5,$t8,$zero
    addiu      $a2,$t8,3
    movz       $a2,$t8,$a5
    sra        $a2,$a2,0x2
    sll        $a2,$a2,0x10
    slt        $t8,$t9,$zero
    addiu      $a5,$t9,3
    movz       $a5,$t9,$t8
    sra        $a5,$a5,0x2
    and        $a2,$a4,$a2
    andi       $a5,$a5,0x3ff
    or         $a2,$a2,$a5
.L00000960:
    sw         $a2,8($sp)
    ld         $a6,40($a0)
    beqz       $a6, .L000009b0
    move       $a2,$zero
    daddu      $t9,$v0,$a6
    lw         $t8,-19256($t9)
    lw         $t9,-19264($t9)
    addu       $t8,$t8,$t9
    slt        $a5,$t8,$zero
    addiu      $a2,$t8,3
    movz       $a2,$t8,$a5
    sra        $a2,$a2,0x2
    sll        $a2,$a2,0x10
    slt        $t8,$t9,$zero
    addiu      $a5,$t9,3
    movz       $a5,$t9,$t8
    sra        $a5,$a5,0x2
    and        $a2,$a4,$a2
    andi       $a5,$a5,0x3ff
    or         $a2,$a2,$a5
.L000009b0:
    sw         $a2,12($sp)
    ld         $at,16($a0)
    daddu      $at,$v0,$at
    lw         $ra,-19260($at)
    lw         $at,-19252($at)
    addu       $at,$at,$ra
    lui        $a4,0xfff
    sll        $at,$at,0x10
    andi       $ra,$ra,0xfff
    and        $at,$a4,$at
    or         $ra,$ra,$at
    sw         $ra,16($sp)
    ld         $a6,24($a0)
    beqz       $a6, .L00000a0c
    move       $a2,$zero
    daddu      $a2,$v0,$a6
    lw         $a5,-19252($a2)
    lw         $a2,-19260($a2)
    addu       $a5,$a5,$a2
    sll        $a5,$a5,0x10
    andi       $a2,$a2,0xfff
    and        $a5,$a4,$a5
    or         $a2,$a2,$a5
.L00000a0c:
    sw         $a2,20($sp)
    ld         $a6,32($a0)
    beqz       $a6, .L00000a3c
    move       $a2,$zero
    daddu      $a2,$v0,$a6
    lw         $a5,-19252($a2)
    lw         $a2,-19260($a2)
    addu       $a5,$a5,$a2
    sll        $a5,$a5,0x10
    andi       $a2,$a2,0xfff
    and        $a5,$a4,$a5
    or         $a2,$a2,$a5
.L00000a3c:
    sw         $a2,24($sp)
    ld         $a6,40($a0)
    beqz       $a6, .L00000a6c
    move       $a0,$zero
    daddu      $a0,$v0,$a6
    lw         $a1,-19252($a0)
    lw         $a0,-19260($a0)
    addu       $a1,$a1,$a0
    sll        $a1,$a1,0x10
    andi       $a0,$a0,0xfff
    and        $a1,$a4,$a1
    or         $a0,$a0,$a1
.L00000a6c:
    lui        $a1,0xf000
    lui        $a2,0x1000
    and        $a1,$s2,$a1
    bne        $a1, $a2, .L00000b18
    sw         $a0,28($sp)
    blez       $s1, .L00000b18
    nop
    beqz       $t0, .L00000ac4
    li         $a2,32
    bnez       $t2, .L00000c34
    sd         $t1,40($sp)
    ld         $a5,40($sp)
.L00000a9c:
    daddiu     $a4,$sp,32
    move       $a3,$zero
    li         $a2,1
    lw         $a5,-19408($a5)
    li         $a1,1
    move       $a0,$s1
    ori        $a5,$a5,0x20
    jal        usb_comp_readwrite_register
    sw         $a5,32($sp)
    li         $a2,32
.L00000ac4:
    daddiu     $a1,$sp,0
    move       $a0,$s1
    jal        usb_comp_update_tiles
    ld         $s0,-30720($gp)
    lw         $a6,0($gp)
    bnez       $a6, .L00000c24
    daddiu     $a1,$s0,352
    lw         $a7,0($gp)
.L00000ae4:
    beqz       $a7, .L00000b10
    daddiu     $a4,$sp,32
    move       $a3,$zero
    li         $a2,1
    li         $a1,1
    lw         $t0,32($sp)
    move       $a0,$s1
    li         $t1,-33
    and        $t0,$t0,$t1
    jal        usb_comp_readwrite_register
    sw         $t0,32($sp)
.L00000b10:
    b          .L00000be8
    move       $v0,$zero
.L00000b18:
    bnez       $a7, .L00000c0c
.L00000b1c:
    move       $a0,$s0
    sra        $s1,$s2,0x3
    li         $a1,170
    andi       $s1,$s1,0x1
    li         $a2,35
    andi       $s1,$s1,0xffff
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a1,170
    li         $a2,36
    lw         $a3,4($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a2,37
    li         $a1,170
    lw         $a3,8($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a2,38
    li         $a1,170
    lw         $a3,12($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a2,39
    li         $a1,170
    lw         $a3,16($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a2,40
    li         $a1,170
    lw         $a3,20($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a2,41
    li         $a1,170
    lw         $a3,24($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $a0,$s0
    li         $a2,42
    li         $a1,170
    lw         $a3,28($sp)
    jal        odsyCompositorRegWrite
    move       $a4,$s1
    move       $v0,$zero
.L00000be8:
    ld         $ra,64($sp)
    ld         $s2,56($sp)
    ld         $s0,48($sp)
    ld         $s1,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000c00:
    move       $a2,$zero
    b          .L00000914
    sw         $a2,4($sp)
.L00000c0c:
    ld         $a1,-30720($gp)
    li         $a0,7
    jal        cmn_err
    daddiu     $a1,$a1,392
    b          .L00000b1c
    lw         $a3,0($sp)
.L00000c24:
    jal        cmn_err
    li         $a0,7
    b          .L00000ae4
    lw         $a7,0($gp)
.L00000c34:
    li         $a4,32
    daddiu     $a3,$sp,0
    ld         $a1,-30720($gp)
    move       $a2,$s1
    li         $a0,7
    jal        cmn_err
    daddiu     $a1,$a1,296
    b          .L00000a9c
    ld         $a5,40($sp)

glabel gfP_OdsyHPconfig
    daddiu     $sp,$sp,-576
    sd         $zero,528($sp)
    move       $a0,$a2
    sd         $s0,560($sp)
    move       $s0,$a3
    daddiu     $a1,$sp,0
    sd         $a2,536($sp)
    sd         $ra,552($sp)
    jal        copyin
    li         $a2,524
    bnez       $v0, .L00000ef0
    ld         $a1,-30720($gp)
    jal        mutex_spinlock
    daddiu     $a0,$gp,0
    ld         $t0,0($gp)
    beqz       $t0, .L00000ebc
    sd         $v0,544($sp)
    lw         $at,0($t0)
    beqz       $at, .L00000ebc
    lw         $t3,4($sp)
.L00000ca8:
    daddiu     $t2,$sp,0
    li         $a3,64
    move       $a5,$zero
    ld         $t0,0($gp)
    bltz       $t3, .L00000ea4
    li         $t1,1
    lw         $v0,4748($t0)
    slt        $v0,$v0,$t3
    bnez       $v0, .L00000ea4
    nop
    b          .L00000ce0
    dsll       $a7,$a5,0x3
.L00000cd8:
    beqz       $a6, .L00000d1c
    dsll       $a7,$a5,0x3
.L00000ce0:
    dsubu      $a7,$a7,$a5
    dsll       $a7,$a7,0x3
    daddu      $a7,$t0,$a7
    lw         $v1,8($a7)
    addiu      $a5,$a5,1
    bne        $v1, $t1, .L00000cd8
    slti       $a6,$a5,64
    lw         $t8,52($a7)
    bne        $t8, $t3, .L00000cd8
    nop
    lw         $t9,56($a7)
    beqz       $t9, .L00000cd8
    li         $ra,16
    b          .L00000e6c
    sw         $ra,0($s0)
.L00000d1c:
    move       $a5,$zero
    dsll       $a7,$a5,0x3
    dsubu      $a7,$a7,$a5
.L00000d28:
    dsll       $a7,$a7,0x3
    daddu      $a7,$t0,$a7
    lw         $at,8($a7)
    beqz       $at, .L00000eb0
    nop
    addiu      $a5,$a5,1
    slti       $t3,$a5,64
    dsll       $a7,$a5,0x3
    bnez       $t3, .L00000d28
    dsubu      $a7,$a7,$a5
.L00000d50:
    lw         $a7,24($sp)
    li         $a6,16
    lui        $t0,0x1
    beq        $a5, $a3, .L00000ee8
    lw         $t1,8($sp)
    ld         $a0,0($gp)
    dsll       $a3,$t1,0x3
    dsll       $a1,$a7,0x3
    ld         $a2,0($gp)
    dsubu      $a3,$a3,$t1
    daddu      $a0,$a0,$a1
    lw         $a1,0($sp)
    dsll       $a3,$a3,0x3
    ld         $a0,0($a0)
    daddu      $a2,$a2,$a3
    sw         $a1,48($a2)
    lw         $v1,8($sp)
    dsll       $v0,$v1,0x3
    ld         $at,0($gp)
    dsubu      $v0,$v0,$v1
    dsll       $v0,$v0,0x3
    daddu      $at,$at,$v0
    sw         $zero,56($at)
    lw         $ra,8($sp)
    dsll       $t9,$ra,0x3
    ld         $t8,0($gp)
    dsubu      $t9,$t9,$ra
    daddu      $a0,$t0,$a0
    dsll       $t9,$t9,0x3
    ld         $a0,-19288($a0)
    daddu      $t8,$t8,$t9
    sd         $a0,16($t8)
    lw         $a6,0($sp)
    blez       $a6, .L00000e64
    move       $a5,$zero
    dsll       $t1,$a5,0x4
    ld         $a7,0($gp)
    daddu      $t1,$t2,$t1
.L00000de8:
    lw         $t1,24($t1)
    dsll       $t1,$t1,0x3
    daddu      $a7,$a7,$t1
    ld         $a7,0($a7)
    beqz       $a7, .L00000e4c
    daddu      $t8,$t0,$a7
    lhu        $a1,232($a7)
    div        $zero,$a1,$a6
    mflo       $v1
    mult       $a5,$v1
    sw         $zero,-19260($t8)
    mflo       $v0
    sw         $v0,-19264($t8)
    lw         $t9,0($sp)
    lhu        $at,232($a7)
    div        $zero,$at,$t9
    mflo       $ra
    sw         $ra,-19256($t8)
    lhu        $t3,234($a7)
    teq        $a6,$zero,0x7
    sw         $t3,-19252($t8)
    teq        $t9,$zero,0x7
    lw         $a6,0($sp)
.L00000e4c:
    addiu      $a5,$a5,1
    slt        $a2,$a5,$a6
    dsll       $t1,$a5,0x4
    ld         $a7,0($gp)
    bnez       $a2, .L00000de8
    daddu      $t1,$t2,$t1
.L00000e64:
    jal        odsy_program_compositor_tiling
    nop
.L00000e6c:
    daddiu     $a0,$gp,0
.L00000e70:
    jal        mutex_spinunlock
    ld         $a1,544($sp)
    li         $a2,524
    ld         $a1,536($sp)
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L00000f08
    ld         $a1,-30720($gp)
    lw         $v0,0($s0)
.L00000e94:
    ld         $ra,552($sp)
    ld         $s0,560($sp)
    jr         $ra
    daddiu     $sp,$sp,576
.L00000ea4:
    li         $a3,22
    b          .L00000e6c
    sw         $a3,0($s0)
.L00000eb0:
    sw         $t1,8($a7)
    b          .L00000d50
    sw         $a5,8($sp)
.L00000ebc:
    jal        odsy_hpipe_discover
    nop
    beqz       $v0, .L00000ed8
    ld         $a0,528($sp)
    li         $a4,22
    sw         $a4,0($s0)
    li         $a0,1
.L00000ed8:
    bnez       $a0, .L00000e70
    daddiu     $a0,$gp,0
    b          .L00000ca8
    lw         $t3,4($sp)
.L00000ee8:
    b          .L00000e6c
    sw         $a6,0($s0)
.L00000ef0:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,432
    li         $v0,14
    b          .L00000e94
    sw         $v0,0($s0)
.L00000f08:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,472
    li         $v0,14
    b          .L00000e94
    sw         $v0,0($s0)

glabel gfP_OdsyHPdestroyConfig
    move       $a0,$a2
    daddiu     $sp,$sp,-32
    li         $a2,4
    sd         $s0,16($sp)
    move       $s0,$a3
    sd         $ra,24($sp)
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L000010c4
    ld         $a1,-30720($gp)
    jal        mutex_spinlock
    daddiu     $a0,$gp,0
    lw         $a2,0($sp)
    sd         $v0,8($sp)
    lui        $a6,0x1
    ld         $a7,0($gp)
    bltz       $a2, .L000010a0
    dsll       $a0,$a2,0x3
    slti       $a4,$a2,65
    dsubu      $a3,$a0,$a2
    dsll       $a3,$a3,0x3
    beqz       $a4, .L000010a0
    daddu      $a3,$a7,$a3
    lw         $a4,8($a3)
    beqz       $a4, .L000010a4
    ld         $a1,-30720($gp)
    ld         $a0,16($a3)
    ld         $a7,16($a0)
    beqz       $a7, .L000010dc
    daddu      $t0,$a6,$a7
    sw         $zero,-19264($t0)
    sw         $zero,-19260($t0)
    lhu        $t1,232($a7)
    sw         $t1,-19256($t0)
    lhu        $a5,234($a7)
    li         $a2,1
    sw         $a5,-19252($t0)
    lw         $t2,0($sp)
.L00000fb8:
    dsll       $t1,$t2,0x3
    ld         $t0,0($gp)
    dsubu      $t1,$t1,$t2
    dsll       $t1,$t1,0x3
    daddu      $t0,$t0,$t1
    ld         $t0,16($t0)
    dsll       $t1,$a2,0x3
    daddu      $t0,$t0,$t1
    ld         $t0,16($t0)
    addiu      $a2,$a2,1
    slti       $a7,$a2,4
    beqz       $t0, .L00000ffc
    daddu      $t0,$a6,$t0
    sw         $zero,-19252($t0)
    sw         $zero,-19256($t0)
    sw         $zero,-19264($t0)
    sw         $zero,-19260($t0)
.L00000ffc:
    bnez       $a7, .L00000fb8
    lw         $t2,0($sp)
    jal        odsy_program_compositor_tiling
    nop
    lw         $a5,0($sp)
    dsll       $a4,$a5,0x3
    ld         $a3,0($gp)
    dsubu      $a4,$a4,$a5
    dsll       $a4,$a4,0x3
    daddu      $a3,$a3,$a4
    sw         $zero,8($a3)
    lw         $a2,0($sp)
    dsll       $a1,$a2,0x3
    ld         $a0,0($gp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    daddu      $a0,$a0,$a1
    sd         $zero,16($a0)
    lw         $v1,0($sp)
    dsll       $v0,$v1,0x3
    ld         $at,0($gp)
    dsubu      $v0,$v0,$v1
    dsll       $v0,$v0,0x3
    daddu      $at,$at,$v0
    sw         $zero,48($at)
    lw         $ra,0($sp)
    dsll       $t9,$ra,0x3
    ld         $t8,0($gp)
    dsubu      $t9,$t9,$ra
    dsll       $t9,$t9,0x3
    daddu      $t8,$t8,$t9
    li         $t3,-1
    sw         $t3,52($t8)
.L00001080:
    daddiu     $a0,$gp,0
.L00001084:
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    lw         $v0,0($s0)
.L00001090:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000010a0:
    ld         $a1,-30720($gp)
.L000010a4:
    li         $a2,22
    sw         $a2,0($s0)
    li         $a0,4
    lw         $a2,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,584
    b          .L00001084
    daddiu     $a0,$gp,0
.L000010c4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,536
    li         $v0,14
    b          .L00001090
    sw         $v0,0($s0)
.L000010dc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,632
    li         $a2,14
    b          .L00001080
    sw         $a2,0($s0)

glabel gfP_OdsyHPbind
    ld         $v0,112($a1)
    daddiu     $sp,$sp,-48
    ld         $v1,40($a0)
    sd         $v1,8($sp)
    move       $at,$a2
    li         $a2,4
    sd         $s0,24($sp)
    move       $s0,$a3
    sd         $v0,16($sp)
    daddiu     $a1,$sp,0
    sd         $ra,32($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L00001230
    ld         $a1,-30720($gp)
    lw         $a2,0($sp)
    dsll       $a1,$a2,0x3
    ld         $a0,0($gp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    daddu      $a0,$a0,$a1
    jal        mutex_spinlock
    daddiu     $a0,$a0,24
    lw         $a4,0($sp)
    li         $a7,22
    dsll       $a1,$a4,0x3
    ld         $a5,0($gp)
    bltz       $a4, .L00001180
    slti       $a3,$a4,65
    dsubu      $a6,$a1,$a4
    li         $a4,1
    dsll       $a6,$a6,0x3
    bnez       $a3, .L000011c0
    daddu      $a6,$a5,$a6
.L00001180:
    li         $a7,22
    sw         $a7,0($s0)
.L00001188:
    lw         $a2,0($sp)
    dsll       $a1,$a2,0x3
    ld         $a0,0($gp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    daddu      $a0,$a0,$a1
    move       $a1,$v0
    jal        mutex_spinunlock
    daddiu     $a0,$a0,24
    lw         $v0,0($s0)
.L000011b0:
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000011c0:
    lw         $a3,8($a6)
    beq        $a3, $a4, .L000011d4
    ld         $t3,8($sp)
    b          .L00001188
    sw         $a7,0($s0)
.L000011d4:
    lui        $t8,0x1
    daddu      $t3,$t3,$t8
    lw         $t8,-19276($t3)
    addiu      $t8,$t8,1
    sw         $t8,-19276($t3)
    lw         $t2,0($sp)
    sw         $t2,-19280($t3)
    lw         $t1,0($sp)
    dsll       $t0,$t1,0x3
    ld         $a7,0($gp)
    dsubu      $t0,$t0,$t1
    dsll       $t0,$t0,0x3
    ld         $a5,16($sp)
    daddu      $a7,$a7,$t0
    lw         $a6,56($a7)
    sd         $v0,40($sp)
    addiu      $a6,$a6,1
    beqz       $a5, .L00001248
    sw         $a6,56($a7)
    lw         $t9,0($sp)
    sh         $t9,588($a5)
.L00001228:
    b          .L00001188
    sw         $zero,0($s0)
.L00001230:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,672
    li         $v0,14
    b          .L000011b0
    sw         $v0,0($s0)
.L00001248:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,704
    b          .L00001228
    ld         $v0,40($sp)

glabel gfP_OdsyHPunbind
    daddiu     $sp,$sp,-48
    ld         $v0,40($a0)
    sd         $v0,8($sp)
    sd         $s1,24($sp)
    move       $at,$a2
    li         $a2,4
    sd         $s0,16($sp)
    move       $s0,$a3
    ld         $s1,112($a1)
    daddiu     $a1,$sp,0
    sd         $ra,32($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L000013b4
    lw         $a2,0($sp)
    dsll       $a1,$a2,0x3
    ld         $a0,0($gp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    daddu      $a0,$a0,$a1
    jal        mutex_spinlock
    daddiu     $a0,$a0,24
    lw         $a3,0($sp)
    li         $a7,22
    dsll       $a1,$a3,0x3
    ld         $a5,0($gp)
    bltz       $a3, .L000012e0
    slti       $a4,$a3,65
    dsubu      $a6,$a1,$a3
    dsll       $a6,$a6,0x3
    bnez       $a4, .L00001324
    daddu      $a6,$a5,$a6
.L000012e0:
    li         $a7,22
    sw         $a7,0($s0)
.L000012e8:
    lw         $a2,0($sp)
    dsll       $a1,$a2,0x3
    ld         $a0,0($gp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    daddu      $a0,$a0,$a1
    move       $a1,$v0
    jal        mutex_spinunlock
    daddiu     $a0,$a0,24
    lw         $v0,0($s0)
.L00001310:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001324:
    lw         $a3,8($a6)
    li         $a4,1
    beq        $a3, $a4, .L0000133c
    ld         $a3,8($sp)
    b          .L000012e8
    sw         $a7,0($s0)
.L0000133c:
    lui        $a4,0x1
    daddu      $a3,$a3,$a4
    lw         $a6,-19276($a3)
    sd         $v0,40($sp)
    li         $a5,-1
    sw         $a5,-19280($a3)
    blez       $a6, .L00001360
    addiu      $a4,$a6,-1
    sw         $a4,-19276($a3)
.L00001360:
    lw         $a6,0($sp)
    dsll       $a4,$a6,0x3
    ld         $a3,0($gp)
    dsubu      $a4,$a4,$a6
    dsll       $a4,$a4,0x3
    daddu      $a3,$a3,$a4
    lw         $a6,56($a3)
    beqz       $a6, .L000013a4
    nop
    lw         $a7,56($a3)
    addiu      $a7,$a7,-1
    beqz       $s1, .L000013d0
    sw         $a7,56($a3)
    sh         $a5,588($s1)
.L00001398:
    ld         $v0,40($sp)
.L0000139c:
    b          .L000012e8
    sw         $zero,0($s0)
.L000013a4:
    bnezl      $s1, .L00001398
    sh         $a5,588($s1)
    b          .L000013d4
    ld         $a1,-30720($gp)
.L000013b4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,736
    li         $v0,14
    b          .L00001310
    sw         $v0,0($s0)
.L000013d0:
    ld         $a1,-30720($gp)
.L000013d4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,776
    b          .L0000139c
    ld         $v0,40($sp)

glabel gfP_OdsyHPqueryAttrib
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-560
    move       $at,$a2
    li         $a2,32
    sd         $s2,496($sp)
    move       $s2,$a3
    sd         $v0,488($sp)
    daddiu     $a1,$sp,0
    sd         $ra,504($sp)
    jal        copyin
    move       $a0,$at
    sd         $s4,520($sp)
    sd         $s3,512($sp)
    move       $s3,$zero
    bnez       $v0, .L0000166c
    sd         $s0,528($sp)
    lw         $a2,0($sp)
    lw         $a0,8($sp)
    dsll       $a1,$a2,0x3
    ld         $v0,0($gp)
    dsubu      $a1,$a1,$a2
    li         $v1,3
    dsll       $a1,$a1,0x3
    daddu      $v0,$v0,$a1
    beq        $a0, $v1, .L00001594
    daddiu     $s0,$v0,8
    li         $a3,4
    beq        $a0, $a3, .L000015dc
    li         $a4,1
    move       $s0,$zero
    beq        $a0, $a4, .L00001470
    li         $v0,22
    b          .L00001570
    sw         $v0,0($s2)
.L00001470:
    ld         $s4,488($sp)
    sd         $s5,536($sp)
    lui        $v0,0x1
    sd         $s1,544($sp)
    daddu      $s4,$v0,$s4
    b          .L0000149c
    ld         $s4,-19288($s4)
.L0000148c:
    addiu      $s0,$s0,1
    slti       $t8,$s0,4
    beqz       $t8, .L00001528
    dsll       $v1,$s3,0x3
.L0000149c:
    dsll       $s1,$s0,0x3
    daddu      $s1,$s4,$s1
    ld         $s1,16($s1)
    beqz       $s1, .L0000148c
    dsll       $t8,$s3,0x3
    dsubu      $t8,$t8,$s3
    daddiu     $s5,$sp,32
    dsll       $t8,$t8,0x4
    daddiu     $a1,$s1,216
    daddu      $s5,$s5,$t8
    jal        strcpy
    move       $a0,$s5
    lui        $v0,0x1
    daddu      $t9,$v0,$s1
    lw         $a4,-19264($t9)
    sw         $a4,80($s5)
    lw         $a3,-19264($t9)
    sw         $a3,96($s5)
    lw         $a2,-19260($t9)
    sw         $a2,84($s5)
    lw         $a1,-19260($t9)
    sw         $a1,100($s5)
    lw         $a0,-19256($t9)
    sw         $a0,88($s5)
    lw         $v1,-19256($t9)
    sw         $v1,104($s5)
    addiu      $s0,$s0,1
    lw         $at,-19252($t9)
    slti       $ra,$s0,4
    sw         $at,92($s5)
    lw         $t9,-19252($t9)
    addiu      $s3,$s3,1
    bnez       $ra, .L0000149c
    sw         $t9,108($s5)
    dsll       $v1,$s3,0x3
.L00001528:
    lw         $a2,12($sp)
    dsubu      $v1,$v1,$s3
    dsll       $v1,$v1,0x4
    sltu       $v1,$a2,$v1
    ld         $s1,544($sp)
    sll        $v0,$s3,0x3
    ld         $s5,536($sp)
    bnez       $v1, .L00001688
    subu       $v0,$v0,$s3
    sll        $s0,$v0,0x4
    daddiu     $a0,$sp,32
.L00001554:
    ld         $a1,24($sp)
    jal        copyout
    move       $a2,$s0
    beqz       $v0, .L0000158c
    li         $a0,14
    sw         $a0,0($s2)
    move       $v0,$a0
.L00001570:
    ld         $s2,496($sp)
    ld         $ra,504($sp)
    ld         $s3,512($sp)
    ld         $s4,520($sp)
    ld         $s0,528($sp)
    jr         $ra
    daddiu     $sp,$sp,560
.L0000158c:
    b          .L00001570
    lw         $v0,0($s2)
.L00001594:
    daddiu     $s3,$v0,24
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a2,12($sp)
    lw         $a1,52($s0)
    move       $s4,$v0
    sltiu      $a2,$a2,4
    li         $a0,14
    andi       $a1,$a1,0x1
    sltu       $a1,$zero,$a1
    beqz       $a2, .L00001624
    sw         $a1,480($sp)
    sw         $a0,0($s2)
.L000015c8:
    move       $a0,$s3
.L000015cc:
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00001570
    lw         $v0,0($s2)
.L000015dc:
    daddiu     $s3,$v0,24
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a4,12($sp)
    lw         $a3,52($s0)
    move       $s4,$v0
    sltiu      $a4,$a4,4
    li         $a0,14
    andi       $a3,$a3,0x2
    sltu       $a3,$zero,$a3
    beqz       $a4, .L00001648
    sw         $a3,480($sp)
    sw         $a0,0($s2)
.L00001610:
    move       $a0,$s3
.L00001614:
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00001570
    lw         $v0,0($s2)
.L00001624:
    li         $a2,4
    ld         $a1,24($sp)
    jal        copyout
    daddiu     $a0,$sp,480
    beqz       $v0, .L000015cc
    move       $a0,$s3
    li         $a5,14
    b          .L000015c8
    sw         $a5,0($s2)
.L00001648:
    li         $a2,4
    ld         $a1,24($sp)
    jal        copyout
    daddiu     $a0,$sp,480
    beqz       $v0, .L00001614
    move       $a0,$s3
    li         $a6,14
    b          .L00001610
    sw         $a6,0($s2)
.L0000166c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,816
    li         $v0,14
    b          .L00001570
    sw         $v0,0($s2)
.L00001688:
    ld         $a1,-30720($gp)
    ld         $s1,544($sp)
    move       $s0,$a2
    li         $a0,4
    ld         $s5,536($sp)
    jal        cmn_err
    daddiu     $a1,$a1,856
    b          .L00001554
    daddiu     $a0,$sp,32

glabel bdata_from_pipename
    daddiu     $sp,$sp,-32
    sd         $s2,8($sp)
    lw         $at,0($gp)
    sd         $s0,16($sp)
    sd         $s1,0($sp)
    move       $s1,$a0
    blez       $at, .L00001704
    sd         $ra,24($sp)
    move       $s0,$zero
    ld         $s2,0($gp)
.L000016d4:
    dsll       $t8,$s0,0x3
    daddu      $s2,$s2,$t8
    ld         $s2,0($s2)
    move       $a1,$s1
    jal        strcmp
    daddiu     $a0,$s2,216
    beqz       $v0, .L00001720
    lw         $t9,0($gp)
    addiu      $s0,$s0,1
    slt        $t9,$s0,$t9
    bnez       $t9, .L000016d4
    ld         $s2,0($gp)
.L00001704:
    move       $v0,$zero
.L00001708:
    ld         $ra,24($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001720:
    b          .L00001708
    move       $v0,$s2

glabel gfP_OdsyHPqueryBestAttrib
    move       $a0,$a2
    daddiu     $sp,$sp,-64
    li         $a2,32
    sd         $s0,32($sp)
    move       $s0,$a3
    sd         $ra,40($sp)
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L000017d8
    sd         $s1,48($sp)
    lw         $a0,12($sp)
    jal        kmem_alloc
    move       $a1,$zero
    li         $a0,12
    bnez       $v0, .L00001774
    move       $s1,$v0
    sw         $a0,0($s0)
    b          .L000017a4
    move       $v0,$a0
.L00001774:
    lw         $a2,12($sp)
    move       $a1,$v0
    jal        copyin
    ld         $a0,16($sp)
    beqz       $v0, .L000017b8
    lw         $a2,12($sp)
    li         $at,14
    sw         $at,0($s0)
.L00001794:
    move       $a0,$s1
.L00001798:
    jal        kmem_free
    lw         $a1,12($sp)
    lw         $v0,0($s0)
.L000017a4:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000017b8:
    move       $a1,$s1
    jal        copyout
    ld         $a0,24($sp)
    beqz       $v0, .L00001798
    move       $a0,$s1
    li         $v0,14
    b          .L00001794
    sw         $v0,0($s0)
.L000017d8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,904
    li         $v0,14
    b          .L000017a4
    sw         $v0,0($s0)

glabel gfP_OdsyHPsetAttrib
    move       $a0,$a2
    daddiu     $sp,$sp,-144
    li         $a2,32
    sd         $s0,88($sp)
    move       $s0,$a3
    sd         $ra,96($sp)
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L00001abc
    sd         $s1,128($sp)
    lw         $a3,0($sp)
    lw         $v0,8($sp)
    dsll       $a2,$a3,0x3
    ld         $a1,0($gp)
    dsubu      $a2,$a2,$a3
    li         $at,3
    dsll       $a2,$a2,0x3
    daddu      $a1,$a1,$a2
    sd         $s2,136($sp)
    beq        $v0, $at, .L0000189c
    daddiu     $s1,$a1,8
    li         $a4,4
    beq        $v0, $a4, .L00001920
    li         $a5,1
    beq        $v0, $a5, .L00001878
    li         $a6,22
    sw         $a6,0($s0)
    move       $v0,$a6
.L00001864:
    ld         $ra,96($sp)
    ld         $s1,128($sp)
    ld         $s0,88($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00001878:
    lw         $a0,12($sp)
    jal        kmem_alloc
    move       $a1,$zero
    li         $a3,12
    bnez       $v0, .L000019a8
    sd         $v0,72($sp)
    sw         $a3,0($s0)
    b          .L00001864
    move       $v0,$a3
.L0000189c:
    daddiu     $s2,$a1,24
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $a7,8($s1)
    lw         $t0,4($sp)
    ld         $a7,16($a7)
    move       $a1,$v0
    li         $a5,0xb430
    lui        $a6,0x20
    sd         $a7,48($sp)
    daddu      $a5,$a5,$a7
    li         $a7,1
    beqz       $t0, .L000019dc
    lw         $a5,0($a5)
    or         $t0,$a5,$a6
    sd         $t0,120($sp)
    sw         $a7,52($s1)
.L000018e0:
    ld         $s1,120($sp)
    jal        mutex_spinunlock
    move       $a0,$s2
    ld         $a4,48($sp)
    move       $a0,$a4
    lw         $a4,700($a4)
    move       $a3,$s1
    move       $a2,$zero
    srl        $a4,$a4,0x3
    li         $a1,170
    andi       $a4,$a4,0x1
    ld         $s2,136($sp)
    jal        odsyCompositorRegWrite
    andi       $a4,$a4,0xffff
    b          .L00001864
    lw         $v0,0($s0)
.L00001920:
    daddiu     $a0,$a1,24
    jal        mutex_spinlock
    sd         $a0,80($sp)
    ld         $a7,8($s1)
    ld         $a7,16($a7)
    li         $a6,0xb430
    lw         $t1,4($sp)
    daddu      $a6,$a6,$a7
    move       $a1,$v0
    lw         $a6,0($a6)
    li         $t0,-25
    sd         $a7,40($sp)
    li         $a7,2
    ld         $a5,80($sp)
    beqz       $t1, .L000019f0
    and        $a6,$a6,$t0
    ori        $t0,$a6,0x10
    sd         $t0,112($sp)
    sw         $a7,52($s1)
.L0000196c:
    ld         $s1,112($sp)
    jal        mutex_spinunlock
    move       $a0,$a5
    ld         $a4,40($sp)
    move       $a0,$a4
    lw         $a4,700($a4)
    li         $a1,170
    move       $a2,$zero
    srl        $a4,$a4,0x3
    move       $a3,$s1
    andi       $a4,$a4,0x1
    jal        odsyCompositorRegWrite
    andi       $a4,$a4,0xffff
    b          .L00001864
    lw         $v0,0($s0)
.L000019a8:
    lw         $a2,12($sp)
    move       $a1,$v0
    jal        copyin
    ld         $a0,16($sp)
    beqz       $v0, .L000019fc
    lw         $t1,12($sp)
    li         $a5,14
    sw         $a5,0($s0)
    ld         $a0,72($sp)
.L000019cc:
    jal        kmem_free
    lw         $a1,12($sp)
    b          .L00001864
    lw         $v0,0($s0)
.L000019dc:
    sw         $zero,52($s1)
    nor        $a6,$a6,$zero
    and        $a6,$a5,$a6
    b          .L000018e0
    sd         $a6,120($sp)
.L000019f0:
    sw         $zero,52($s1)
    b          .L0000196c
    sd         $a6,112($sp)
.L000019fc:
    li         $t2,112
    ddivu      $zero,$t1,$t2
    mflo       $t0
    daddiu     $a0,$s1,16
    sd         $a0,80($sp)
    sll        $t0,$t0,0x0
    jal        mutex_spinlock
    sd         $t0,56($sp)
    ld         $t3,56($sp)
    move       $a3,$v0
    blez       $t3, .L00001aa0
    sd         $v0,104($sp)
    sd         $zero,64($sp)
.L00001a30:
    ld         $a2,64($sp)
    dsll       $a1,$a2,0x3
    ld         $a0,72($sp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x4
    daddu      $a0,$a0,$a1
    pref       0x0,336($a0)
    jal        bdata_from_pipename
    sd         $a0,32($sp)
    beqz       $v0, .L00001a88
    ld         $a3,64($sp)
    ld         $a4,32($sp)
    lw         $t0,80($a4)
    lui        $a5,0x1
    daddu      $a5,$a5,$v0
    sw         $t0,-19264($a5)
    lw         $a7,84($a4)
    sw         $a7,-19260($a5)
    lw         $a6,88($a4)
    sw         $a6,-19256($a5)
    lw         $a4,92($a4)
    sw         $a4,-19252($a5)
.L00001a88:
    ld         $a6,56($sp)
    addiu      $a3,$a3,1
    slt        $a6,$a3,$a6
    bnez       $a6, .L00001a30
    sd         $a3,64($sp)
    ld         $a3,104($sp)
.L00001aa0:
    ld         $a0,80($sp)
    jal        mutex_spinunlock
    move       $a1,$a3
    jal        odsy_program_compositor_tiling
    ld         $a0,8($s1)
    b          .L000019cc
    ld         $a0,72($sp)
.L00001abc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,952
    li         $v0,14
    b          .L00001864
    sw         $v0,0($s0)

glabel odsy_hpipe_cleanup
    ld         $a4,112($a1)
    lh         $at,588($a4)
    daddiu     $sp,$sp,-32
    li         $a5,-1
    lui        $v0,0x1
    sd         $ra,8($sp)
    daddu      $v0,$a0,$v0
    bltz       $at, .L00001b60
    sd         $s0,16($sp)
    sh         $a5,588($a4)
    lw         $a1,-19276($v0)
    blez       $a1, .L00001b64
    ld         $ra,8($sp)
    lw         $a2,-19280($v0)
    addiu      $a3,$a1,-1
    sw         $a3,-19276($v0)
    dsll       $a1,$a2,0x3
    ld         $a0,0($gp)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    daddu      $a0,$a0,$a1
    daddiu     $s0,$a0,8
    daddiu     $a0,$a0,24
    jal        mutex_spinlock
    sd         $a0,0($sp)
    lw         $a4,48($s0)
    ld         $a0,0($sp)
    beqz       $a4, .L00001b58
    move       $a1,$v0
    lw         $a5,48($s0)
    addiu      $a5,$a5,-1
    sw         $a5,48($s0)
.L00001b58:
    jal        mutex_spinunlock
    nop
.L00001b60:
    ld         $ra,8($sp)
.L00001b64:
    move       $v0,$zero
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
