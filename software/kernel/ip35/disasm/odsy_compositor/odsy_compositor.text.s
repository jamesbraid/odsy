.section .text
.set noat
.set noreorder


glabel gfP_OdsyLoadCompositorTiming
    jr         $ra
    move       $v0,$zero

glabel odsyCompositorRegRead
    daddiu     $sp,$sp,-80
    sd         $s4,48($sp)
    sd         $s2,32($sp)
    move       $v0,$a4
    lhu        $at,296($a0)
    move       $s2,$a0
    move       $s4,$a1
    sd         $s3,24($sp)
    move       $s3,$a3
    sd         $s1,40($sp)
    lui        $s1,0x1
    sd         $s0,64($sp)
    beqz       $at, .L000000f8
    daddu      $s1,$a0,$s1
    li         $s0,0xb408
    li         $t8,31
    sb         $t8,-19416($s1)
    daddu      $s0,$a0,$s0
.L00000050:
    ld         $a7,16($s0)
    lw         $t9,28($s0)
    sd         $a2,16($sp)
    sd         $v0,8($sp)
    beqz       $t9, .L00000104
    sd         $ra,56($sp)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$a7,$a0
    lhu        $a1,-19404($s1)
.L0000007c:
    beqz       $a1, .L0000011c
.L00000080:
    li         $a2,1
.L00000084:
    move       $a0,$s0
    andi       $a1,$s4,0xfe
    sb         $a1,32($s0)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    beqz       $v0, .L000001b0
    move       $a0,$s0
    li         $s4,-14
    sw         $zero,0($s3)
.L000000a8:
    jal        odsy_i2c_stop
    move       $a0,$s0
    lhu        $a2,-19404($s1)
    beqz       $a2, .L00000174
    nop
.L000000bc:
    lw         $a3,28($s0)
.L000000c0:
    beqz       $a3, .L0000019c
    ld         $a7,16($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a7,$a0
    ld         $s3,24($sp)
.L000000d8:
    ld         $s0,64($sp)
    ld         $ra,56($sp)
    ld         $s2,32($sp)
    ld         $s1,40($sp)
    move       $v0,$s4
    ld         $s4,48($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000000f8:
    li         $s0,0xb3e0
    b          .L00000050
    daddu      $s0,$a0,$s0
.L00000104:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$a7,$a0
    b          .L0000007c
    lhu        $a1,-19404($s1)
.L0000011c:
    lhu        $a1,296($s2)
    beqz       $a1, .L00000080
    move       $a0,$s0
    li         $a1,5
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,0
    ld         $a2,8($sp)
    beqz       $a2, .L000001d4
    sb         $v0,0($sp)
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,0($sp)
    move       $a0,$s0
    li         $a1,5
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L00000084
    li         $a2,1
.L00000174:
    lhu        $a3,296($s2)
    beqz       $a3, .L000000bc
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    li         $a4,31
    jal        odsy_i2cPLLRegWrite
    sb         $a4,32($s0)
    b          .L000000c0
    lw         $a3,28($s0)
.L0000019c:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a7,$a0
    b          .L000000d8
    ld         $s3,24($sp)
.L000001b0:
    li         $a2,1
    ld         $a1,16($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    beqz       $v0, .L0000020c
    li         $a2,1
    li         $s4,-14
    b          .L000000a8
    sw         $zero,0($s3)
.L000001d4:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,0($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s0
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L00000084
    li         $a2,1
.L0000020c:
    move       $a1,$s4
    move       $a0,$s0
    jal        odsy_i2c_start
    sb         $s4,32($s0)
    beqz       $v0, .L00000230
    daddiu     $a1,$sp,4
    li         $s4,-14
    b          .L000000a8
    sw         $zero,0($s3)
.L00000230:
    move       $a0,$s0
    jal        odsy_i2c_read_comp_reg4
    sw         $zero,4($sp)
    beqz       $v0, .L0000024c
    lw         $a4,4($sp)
.L00000244:
    b          .L000000a8
    move       $s4,$zero
.L0000024c:
    b          .L00000244
    sw         $a4,0($s3)

glabel odsyCompositorRegWrite
    daddiu     $sp,$sp,-80
    sd         $s2,40($sp)
    li         $t0,31
    li         $a7,0xb3e0
    lhu        $at,296($a0)
    li         $v0,0xb408
    move       $s2,$a0
    sd         $s3,48($sp)
    move       $s3,$a1
    sd         $s1,32($sp)
    lui        $s1,0x1
    sd         $s0,64($sp)
    beqz       $at, .L00000334
    daddu      $s1,$a0,$s1
    daddu      $s0,$a0,$v0
    sb         $t0,-19416($s1)
.L00000294:
    ld         $a7,16($s0)
    sd         $a3,16($sp)
    lw         $t8,28($s0)
    sd         $a2,8($sp)
    sd         $a4,24($sp)
    beqz       $t8, .L00000340
    sd         $ra,56($sp)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$a7,$a0
    lhu        $a1,-19404($s1)
.L000002c4:
    beqz       $a1, .L00000358
.L000002c8:
    li         $a2,1
.L000002cc:
    move       $a1,$s3
    move       $a0,$s0
    jal        odsy_i2c_start
    sb         $s3,32($s0)
    beqz       $v0, .L000003ec
    li         $a0,-14
    move       $s3,$a0
.L000002e8:
    jal        odsy_i2c_stop
    move       $a0,$s0
    lhu        $a2,-19404($s1)
    beqz       $a2, .L000003b0
    nop
.L000002fc:
    lw         $a3,28($s0)
.L00000300:
    beqz       $a3, .L000003d8
    ld         $a7,16($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a7,$a0
    ld         $s0,64($sp)
.L00000318:
    ld         $ra,56($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    move       $v0,$s3
    ld         $s3,48($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000334:
    daddu      $s0,$a0,$a7
    b          .L00000294
    nop
.L00000340:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$a7,$a0
    b          .L000002c4
    lhu        $a1,-19404($s1)
.L00000358:
    lhu        $a1,296($s2)
    beqz       $a1, .L000002c8
    move       $a0,$s0
    li         $a1,5
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,0
    ld         $a2,24($sp)
    beqz       $a2, .L00000410
    sb         $v0,0($sp)
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,0($sp)
    move       $a0,$s0
    li         $a1,5
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L000002cc
    li         $a2,1
.L000003b0:
    lhu        $a3,296($s2)
    beqz       $a3, .L000002fc
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    li         $a4,31
    jal        odsy_i2cPLLRegWrite
    sb         $a4,32($s0)
    b          .L00000300
    lw         $a3,28($s0)
.L000003d8:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a7,$a0
    b          .L00000318
    ld         $s0,64($sp)
.L000003ec:
    move       $a0,$s0
    li         $a2,1
    ld         $a1,8($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    beqz       $v0, .L00000448
    move       $a0,$s0
    b          .L000002e8
    li         $s3,-14
.L00000410:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,0($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s0
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L000002cc
    li         $a2,1
.L00000448:
    jal        odsy_i2c_write_comp_reg4
    ld         $a1,16($sp)
    li         $s3,-14
    b          .L000002e8
    movz       $s3,$zero,$v0

glabel odsy_ReadCompositorNic
    daddiu     $sp,$sp,-96
    sd         $s8,40($sp)
    sd         $s4,64($sp)
    sd         $s1,72($sp)
    sd         $s0,24($sp)
    sd         $s7,16($sp)
    lhu        $at,296($a0)
    move       $s7,$a0
    move       $s0,$a1
    sd         $s3,32($sp)
    move       $s3,$a2
    sd         $s6,8($sp)
    lui        $s6,0x1
    sd         $s5,80($sp)
    beqz       $at, .L000006ac
    daddu      $s6,$a0,$s6
    li         $s1,0xb408
    li         $t8,31
    sb         $t8,-19416($s6)
    daddu      $s1,$a0,$s1
.L000004ac:
    lw         $t9,28($s1)
    ld         $v0,16($s1)
    beqz       $t9, .L000006b8
    sd         $ra,56($sp)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    lhu        $a1,-19404($s6)
.L000004d0:
    beqz       $a1, .L000006d0
    sd         $s2,48($sp)
.L000004d8:
    li         $s3,255
.L000004dc:
    sb         $s3,10($s0)
    daddiu     $a2,$sp,0
    li         $a1,3
    sb         $s3,11($s0)
    move       $a0,$s1
    li         $s2,1
    sb         $s2,12($s0)
    li         $a3,82
    jal        odsy_i2cPLLRegRead
    sb         $a3,32($s1)
    bne        $v0, $s2, .L00000574
    li         $s8,14
    sw         $s2,0($s0)
    move       $s3,$s8
.L00000514:
    jal        odsy_i2c_stop
    move       $a0,$s1
    lhu        $a4,-19404($s6)
    beqz       $a4, .L00000724
    nop
.L00000528:
    lw         $a5,28($s1)
.L0000052c:
    beqz       $a5, .L0000074c
    ld         $v0,16($s1)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    ld         $s8,40($sp)
.L00000544:
    ld         $s6,8($sp)
    ld         $s2,48($sp)
    ld         $s4,64($sp)
    ld         $s7,16($sp)
    ld         $s0,24($sp)
    ld         $ra,56($sp)
    ld         $s1,72($sp)
    ld         $s5,80($sp)
    move       $v0,$s3
    ld         $s3,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000574:
    lbu        $s4,0($sp)
    sll        $s4,$s4,0x3
    daddiu     $a2,$sp,0
    addiu      $s4,$s4,6
    move       $a0,$s1
    andi       $s4,$s4,0xff
    jal        odsy_i2cPLLRegRead
    move       $a1,$s4
    bne        $v0, $s2, .L000005a8
    lbu        $s5,0($sp)
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L000005a8:
    andi       $s5,$s5,0x1f
    addu       $s5,$s4,$s5
    daddiu     $a2,$sp,0
    addiu      $s5,$s5,1
    move       $a0,$s1
    andi       $s5,$s5,0xff
    jal        odsy_i2cPLLRegRead
    move       $a1,$s5
    beq        $v0, $s2, .L0000092c
    li         $s3,14
    lbu        $s8,0($sp)
    andi       $s8,$s8,0x1f
    andi       $a6,$s8,0xff
    addiu      $s3,$s5,1
    slti       $a7,$a6,14
    li         $a5,14
    andi       $s3,$s3,0xff
    beqz       $a7, .L00000624
    subu       $a5,$a5,$a6
    move       $v0,$zero
    li         $a2,32
.L000005fc:
    daddu      $at,$v0,$s0
    addiu      $v0,$v0,1
    slt        $ra,$v0,$a5
    sb         $a2,60($at)
    beqz       $ra, .L00000624
    daddu      $v1,$v0,$s0
    addiu      $v0,$v0,1
    slt        $a0,$v0,$a5
    bnez       $a0, .L000005fc
    sb         $a2,60($v1)
.L00000624:
    blez       $s8, .L00000668
    move       $s4,$zero
    move       $s5,$a5
.L00000630:
    move       $a0,$s1
    move       $a1,$s3
    jal        odsy_i2cPLLRegRead
    daddiu     $a2,$sp,0
    beq        $v0, $s2, .L00000828
    addiu      $s4,$s4,1
    daddu      $a2,$s5,$s0
    slt        $a3,$s4,$s8
    addiu      $s5,$s5,1
    lbu        $a1,0($sp)
    addiu      $s3,$s3,1
    andi       $s3,$s3,0xff
    bnez       $a3, .L00000630
    sb         $a1,60($a2)
.L00000668:
    move       $a0,$s1
    move       $a1,$s3
    jal        odsy_i2cPLLRegRead
    daddiu     $a2,$sp,0
    beq        $v0, $s2, .L00000934
    lbu        $s8,0($sp)
    andi       $s8,$s8,0x1f
    andi       $s8,$s8,0xff
    li         $a2,32
    slti       $t8,$s8,11
    move       $v0,$zero
    addiu      $s4,$s3,1
    bnez       $t8, .L00000760
    andi       $s4,$s4,0xff
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L000006ac:
    li         $s1,0xb3e0
    b          .L000004ac
    daddu      $s1,$a0,$s1
.L000006b8:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L000004d0
    lhu        $a1,-19404($s6)
.L000006d0:
    lhu        $a1,296($s7)
    beqz       $a1, .L000004d8
    move       $a0,$s1
    li         $a1,5
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,0
    beqz       $s3, .L0000094c
    sb         $v0,0($sp)
    move       $a0,$s1
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,0($sp)
    move       $a0,$s1
    li         $a1,5
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L000004dc
    li         $s3,255
.L00000724:
    lhu        $a3,296($s7)
    beqz       $a3, .L00000528
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s1
    li         $a4,31
    jal        odsy_i2cPLLRegWrite
    sb         $a4,32($s1)
    b          .L0000052c
    lw         $a5,28($s1)
.L0000074c:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00000544
    ld         $s8,40($sp)
.L00000760:
    slti       $t8,$s8,10
    li         $s5,10
    beqz       $t8, .L000007ac
    subu       $s5,$s5,$s8
.L00000770:
    daddu      $ra,$v0,$s0
    addiu      $v0,$v0,1
    slt        $t9,$v0,$s5
    sb         $a2,13($ra)
    beqz       $t9, .L000007ac
    daddu      $v1,$v0,$s0
    addiu      $v0,$v0,1
    slt        $at,$v0,$s5
    sb         $a2,13($v1)
    beqz       $at, .L000007ac
    daddu      $a0,$v0,$s0
    addiu      $v0,$v0,1
    slt        $a1,$v0,$s5
    bnez       $a1, .L00000770
    sb         $a2,13($a0)
.L000007ac:
    blez       $s8, .L00000804
    move       $s3,$zero
    move       $a0,$s1
.L000007b8:
    move       $a1,$s4
    jal        odsy_i2cPLLRegRead
    daddiu     $a2,$sp,0
    slti       $a1,$s3,6
    beq        $v0, $s2, .L00000940
    lbu        $a0,0($sp)
    addiu      $s4,$s4,1
    daddu      $a2,$s5,$s0
    addiu      $s5,$s5,1
    beqz       $a1, .L000007f0
    sb         $a0,13($a2)
    daddu      $a4,$s3,$s0
    lbu        $a3,0($sp)
    sb         $a3,4($a4)
.L000007f0:
    addiu      $s3,$s3,1
    slt        $t8,$s3,$s8
    andi       $s4,$s4,0xff
    bnez       $t8, .L000007b8
    move       $a0,$s1
.L00000804:
    move       $a0,$s1
    move       $a1,$s4
    jal        odsy_i2cPLLRegRead
    daddiu     $a2,$sp,0
    bne        $v0, $s2, .L00000834
    daddiu     $a2,$sp,0
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L00000828:
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L00000834:
    addiu      $s3,$s4,1
    move       $a0,$s1
    andi       $s3,$s3,0xff
    jal        odsy_i2cPLLRegRead
    move       $a1,$s3
    li         $a0,6
    beq        $v0, $s2, .L00000990
    lbu        $a1,0($sp)
    andi       $s8,$a1,0x1f
    andi       $s8,$s8,0xff
    slti       $a2,$s8,6
    move       $v0,$zero
    move       $s4,$zero
    beqz       $a2, .L000008b0
    subu       $a0,$a0,$s8
    li         $a2,32
.L00000874:
    daddu      $at,$v0,$s0
    addiu      $v0,$v0,1
    slt        $ra,$v0,$a0
    sb         $a2,44($at)
    beqz       $ra, .L000008b0
    daddu      $a1,$v0,$s0
    addiu      $v0,$v0,1
    slt        $v1,$v0,$a0
    sb         $a2,44($a1)
    beqz       $v1, .L000008b0
    daddu      $a3,$v0,$s0
    addiu      $v0,$v0,1
    slt        $a4,$v0,$a0
    bnez       $a4, .L00000874
    sb         $a2,44($a3)
.L000008b0:
    blez       $s8, .L000008f8
    li         $t9,48
    move       $s5,$a0
.L000008bc:
    move       $a0,$s1
    move       $a1,$s3
    jal        odsy_i2cPLLRegRead
    daddiu     $a2,$sp,0
    beq        $v0, $s2, .L00000984
    addiu      $s4,$s4,1
    daddu      $a6,$s5,$s0
    slt        $a7,$s4,$s8
    addiu      $s5,$s5,1
    lbu        $a5,0($sp)
    addiu      $s3,$s3,1
    andi       $s3,$s3,0xff
    bnez       $a7, .L000008bc
    sb         $a5,44($a6)
    li         $t9,48
.L000008f8:
    sb         $t9,50($s0)
    sb         $t9,51($s0)
    sb         $t9,52($s0)
    sb         $t9,53($s0)
    sb         $t9,55($s0)
    sb         $t9,56($s0)
    sb         $t9,57($s0)
    sb         $t9,58($s0)
    li         $t8,255
    sb         $t8,54($s0)
    sb         $t8,59($s0)
    b          .L00000514
    move       $s3,$zero
.L0000092c:
    b          .L00000514
    sw         $s2,0($s0)
.L00000934:
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L00000940:
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L0000094c:
    move       $a0,$s1
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,0($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s1
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L000004dc
    li         $s3,255
.L00000984:
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)
.L00000990:
    li         $s3,14
    b          .L00000514
    sw         $s2,0($s0)

glabel odsy_ProbeCompositor
    lhu        $at,298($a0)
    daddiu     $sp,$sp,-48
    sd         $s8,24($sp)
    li         $v0,1
    xori       $at,$at,0x3
    sd         $s2,8($sp)
    li         $s2,2
    sltiu      $at,$at,1
    sd         $s1,16($sp)
    movz       $s2,$v0,$at
    move       $s1,$a0
    move       $s8,$a1
    sd         $s0,32($sp)
    move       $s0,$zero
    blez       $s2, .L00000a08
    sd         $ra,40($sp)
.L000009dc:
    move       $a0,$s1
    li         $a1,171
    li         $a2,87
    daddiu     $a3,$sp,0
    jal        odsyCompositorRegRead
    andi       $a4,$s0,0xffff
    beqz       $v0, .L00000a30
    sll        $a1,$s0,0x3
    addiu      $s0,$s0,1
    slt        $v0,$s0,$s2
    bnez       $v0, .L000009dc
.L00000a08:
    li         $v0,1
    move       $a0,$zero
.L00000a10:
    ld         $s2,8($sp)
    ld         $s0,32($sp)
    ld         $ra,40($sp)
    ld         $s1,16($sp)
    sw         $a0,0($s8)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000a30:
    lw         $a2,0($sp)
    li         $a3,-15
    andi       $a1,$a1,0x8
    sll        $a0,$a2,0x1
    and        $a2,$a2,$a3
    or         $a1,$a1,$a2
    andi       $a0,$a0,0x6
    move       $v0,$zero
    or         $a0,$a0,$a1
    b          .L00000a10
    ori        $a0,$a0,0x1

glabel gfP_OdsyCompositorRegAccess
    daddiu     $sp,$sp,-48
    sd         $s1,40($sp)
    sd         $s0,32($sp)
    move       $s0,$a3
    daddiu     $a1,$sp,0
    sd         $s2,16($sp)
    move       $s2,$a2
    li         $a2,12
    ld         $s1,40($a0)
    sd         $ra,24($sp)
    jal        copyin
    move       $a0,$s2
    bnez       $v0, .L00000b28
    lbu        $a2,1($sp)
    lbu        $a1,0($sp)
    andi       $at,$a1,0x1
    beqz       $at, .L00000aec
    lhu        $a4,8($sp)
    move       $a0,$s1
    jal        odsyCompositorRegRead
    daddiu     $a3,$sp,4
    beqz       $v0, .L00000b08
    move       $s1,$v0
    li         $a2,12
    move       $a1,$s2
    daddiu     $a0,$sp,0
    jal        copyout
    sw         $v0,0($s0)
    bnez       $v0, .L00000b40
.L00000ad0:
    move       $v0,$s1
.L00000ad4:
    ld         $ra,24($sp)
    ld         $s2,16($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000aec:
    move       $a0,$s1
    jal        odsyCompositorRegWrite
    lw         $a3,4($sp)
    beqz       $v0, .L00000ad0
    move       $s1,$v0
    b          .L00000ad0
    sw         $v0,0($s0)
.L00000b08:
    li         $a2,12
    move       $a1,$s2
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L00000b5c
    move       $s1,$zero
    b          .L00000ad4
    move       $v0,$s1
.L00000b28:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    li         $v0,14
    b          .L00000ad4
    sw         $v0,0($s0)
.L00000b40:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,48
    li         $v0,14
    b          .L00000ad4
    sw         $v0,0($s0)
.L00000b5c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,48
    li         $v0,14
    b          .L00000ad4
    sw         $v0,0($s0)

glabel gfP_OdsyI2CPassthrough
    daddiu     $sp,$sp,-64
    sd         $s2,32($sp)
    move       $at,$a2
    li         $a2,8
    sd         $s3,16($sp)
    move       $s3,$a3
    daddiu     $a1,$sp,0
    ld         $s2,40($a0)
    sd         $ra,24($sp)
    jal        copyin
    move       $a0,$at
    beqz       $v0, .L00000bc8
    sd         $s1,40($sp)
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,88
    li         $v0,14
    b          .L00000cb0
    sw         $v0,0($s3)
.L00000bc8:
    lui        $s1,0x1
    daddu      $s1,$s2,$s1
    lw         $a2,-19420($s1)
    beqz       $a2, .L00000bf4
    ld         $v0,-19432($s1)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L00000c04
    nop
.L00000bf4:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
.L00000c04:
    li         $a2,31
    sb         $a2,-19416($s1)
    ld         $a1,-30720($gp)
    lw         $a3,4($sp)
    li         $a0,4
    lw         $a2,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,128
    sd         $s0,48($sp)
    lw         $t8,0($sp)
    li         $s0,0xb408
    beqz       $t8, .L00000cc4
    daddu      $s0,$s2,$s0
    daddiu     $a2,$sp,8
    li         $a1,5
    move       $a0,$s0
    li         $t9,1
    jal        odsy_i2cDDCRegRead
    sh         $t9,-19404($s1)
    lw         $ra,4($sp)
    beqz       $ra, .L00000ce8
    sb         $v0,8($sp)
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,8($sp)
    move       $a0,$s0
    li         $a1,5
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,8($sp)
    lw         $a3,-19420($s1)
.L00000c8c:
    beqz       $a3, .L00000d20
    ld         $v0,-19432($s1)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    ld         $s0,48($sp)
.L00000ca4:
    ld         $s1,40($sp)
    sw         $zero,0($s3)
    move       $v0,$zero
.L00000cb0:
    ld         $ra,24($sp)
    ld         $s3,16($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000cc4:
    li         $a2,48
    move       $a1,$zero
    li         $a3,31
    sb         $a3,-19416($s1)
    move       $a0,$s0
    jal        odsy_i2cPLLRegWrite
    sh         $zero,-19404($s1)
    b          .L00000c8c
    lw         $a3,-19420($s1)
.L00000ce8:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,8($sp)
    move       $a0,$s0
    li         $a3,-33
    li         $a1,5
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,8($sp)
    b          .L00000c8c
    lw         $a3,-19420($s1)
.L00000d20:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00000ca4
    ld         $s0,48($sp)

glabel gfP_OdsySetNicinfo
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-112
    move       $at,$a2
    sd         $a3,80($sp)
    li         $a2,80
    sd         $v0,88($sp)
    daddiu     $a1,$sp,0
    sd         $ra,96($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L00000dbc
    ld         $a0,88($sp)
    li         $v0,0x12
    li         $a2,4
    lw         $v1,4($sp)
    daddiu     $a3,$sp,4
    daddiu     $a4,$a0,712
    sw         $v1,712($a0)
.L00000d7c:
    daddu      $a6,$a2,$a3
    addiu      $a5,$a2,4
    daddu      $a7,$a2,$a4
    lw         $a6,0($a6)
    addiu      $v0,$v0,-2
    daddu      $a1,$a5,$a3
    sw         $a6,0($a7)
    daddu      $a5,$a5,$a4
    lw         $a1,0($a1)
    addiu      $a2,$a2,8
    bgtz       $v0, .L00000d7c
    sw         $a1,0($a5)
    move       $v0,$zero
.L00000db0:
    ld         $ra,96($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000dbc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,176
    ld         $a2,80($sp)
    li         $v0,14
    b          .L00000db0
    sw         $v0,0($a2)
