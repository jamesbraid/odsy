.section .text
.set noat
.set noreorder


glabel odsy_dviFPGARegWrite
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    lbu        $a1,32($s0)
    li         $a2,1
    sll        $a1,$a1,0x1
    sd         $ra,16($sp)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L00000058
    move       $a0,$s0
    li         $a2,1
    ld         $a1,0($sp)
    jal        odsy_i2c_sendbyte
    li         $a3,1
    bnez       $v0, .L0000006c
    move       $v0,$zero
.L00000048:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000058:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,1
    b          .L0000007c
    nop
.L0000006c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,56
.L0000007c:
    jal        odsy_i2cReset
    move       $a0,$s0
    b          .L00000048
    li         $v0,1

glabel odsy_loadDVIFPGA
    daddiu     $sp,$sp,-64
    sd         $s2,24($sp)
    sd         $s4,32($sp)
    sw         $zero,0($sp)
    ld         $a2,16($a0)
    sd         $s0,40($sp)
    li         $a1,0xb43c
    sd         $s3,8($sp)
    daddu      $a1,$a1,$a2
    lh         $a1,0($a1)
    move       $s3,$a0
    ld         $a0,-30712($gp)
    sd         $s1,48($sp)
    daddu      $a1,$a1,$a1
    sd         $ra,16($sp)
    daddu      $a0,$a0,$a1
    jal        cnodemodule_lookup
    lh         $a0,0($a0)
    daddiu     $s2,$v0,40
    li         $s4,1
    lui        $s1,0x7
    ori        $s1,$s1,0xa120
    move       $s0,$s4
    ld         $a0,16($s3)
.L000000ec:
    jal        odsy_usdelay
    move       $a1,$s1
    move       $a0,$s2
    jal        elsc_ody_expander_get
    daddiu     $a1,$sp,0
    bnez       $v0, .L00000168
    ld         $a1,-30720($gp)
    li         $a5,4
    addiu      $s0,$s0,1
    lw         $v0,0($sp)
.L00000114:
    srl        $a5,$a5,0x1
    bnez       $a5, .L00000114
    srl        $v0,$v0,0x1
    and        $t8,$s4,$v0
    beq        $s4, $t8, .L00000160
    slti       $t9,$s0,3
    bnezl      $t9, .L000000ec
    ld         $a0,16($s3)
    li         $ra,2
    beq        $s0, $ra, .L00000180
    move       $v0,$zero
.L00000140:
    ld         $s2,24($sp)
    ld         $s3,8($sp)
    ld         $ra,16($sp)
    ld         $s4,32($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000160:
    b          .L00000140
    move       $v0,$zero
.L00000168:
    li         $a0,1
    move       $a2,$s0
    jal        cmn_err
    daddiu     $a1,$a1,128
    b          .L00000140
    li         $v0,1
.L00000180:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,192
    b          .L00000140
    li         $v0,1

glabel odsy_setDVIFPGA
    li         $v0,58
    sb         $v0,32($a0)
    daddiu     $sp,$sp,-48
    sd         $a0,8($sp)
    sd         $a2,24($sp)
    sd         $a1,16($sp)
    nop
    sd         $ra,32($sp)
    jal        odsy_dviFPGARegRead
    daddiu     $a1,$sp,0
    bnez       $v0, .L00000204
    ld         $a1,-30720($gp)
    ld         $a3,16($sp)
    lbu        $a2,0($sp)
    ld         $a1,24($sp)
    nor        $a3,$a3,$zero
    and        $a2,$a2,$a3
    or         $a1,$a1,$a2
    ld         $a0,8($sp)
    jal        odsy_dviFPGARegWrite
    andi       $a1,$a1,0xff
    bnez       $v0, .L0000021c
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L000001f8:
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000204:
    li         $a2,117
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,224
    b          .L000001f8
    li         $v0,1
.L0000021c:
    li         $a2,117
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,280
    b          .L000001f8
    li         $v0,1

glabel odsy_write_XmitRegs
    sb         $a1,32($a0)
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    li         $a2,49
    move       $s0,$a0
    sd         $a1,0($sp)
    nop
    sd         $ra,16($sp)
    jal        odsy_i2cPLLRegWrite
    li         $a1,8
    bnez       $v0, .L000002f0
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,9
    jal        odsy_i2cPLLRegWrite
    li         $a2,25
    bnez       $v0, .L00000304
    move       $a0,$s0
    ld         $v0,0($sp)
    li         $a1,10
    li         $a2,112
    li         $v1,240
    xori       $v0,$v0,0x38
    sltiu      $v0,$v0,1
    jal        odsy_i2cPLLRegWrite
    movn       $a2,$v1,$v0
    bnez       $v0, .L0000031c
    move       $a0,$s0
    li         $a1,12
    jal        odsy_i2cPLLRegWrite
    li         $a2,137
    bnez       $v0, .L00000334
    move       $a0,$s0
    li         $a1,13
    jal        odsy_i2cPLLRegWrite
    li         $a2,128
    bnez       $v0, .L0000034c
    move       $a0,$s0
    li         $a1,51
    jal        odsy_i2cPLLRegWrite
    move       $a2,$zero
    bnez       $v0, .L00000364
    move       $v0,$zero
.L000002e0:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000002f0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,336
    b          .L000002e0
    li         $v0,1
.L00000304:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,400
    b          .L000002e0
    li         $v0,1
.L0000031c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,464
    b          .L000002e0
    li         $v0,1
.L00000334:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,528
    b          .L000002e0
    li         $v0,1
.L0000034c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,592
    b          .L000002e0
    li         $v0,1
.L00000364:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,656
    b          .L000002e0
    li         $v0,1

glabel odsy_setDVIRegs
    daddiu     $sp,$sp,-32
    sd         $s1,16($sp)
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        odsy_loadDVIFPGA
    move       $s0,$a0
    bnez       $v0, .L000003ec
    move       $s1,$zero
.L0000039c:
    move       $a0,$s0
    li         $a1,3
    jal        odsy_setDVIFPGA
    move       $a2,$zero
    bnez       $v0, .L00000404
.L000003b0:
    move       $a0,$s0
    jal        odsy_write_XmitRegs
    li         $a1,56
    bnez       $v0, .L0000041c
    ld         $a1,-30720($gp)
.L000003c4:
    move       $a0,$s0
    jal        odsy_write_XmitRegs
    li         $a1,57
    bnez       $v0, .L00000430
    ld         $s0,0($sp)
.L000003d8:
    ld         $ra,8($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000003ec:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,720
    b          .L0000039c
    li         $s1,1
.L00000404:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,760
    b          .L000003b0
    li         $s1,1
.L0000041c:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,800
    b          .L000003c4
    li         $s1,1
.L00000430:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,864
    b          .L000003d8
    li         $s1,1

glabel odsy_dviFPGARegRead
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    lbu        $a1,32($s0)
    sll        $a1,$a1,0x1
    li         $a2,1
    addiu      $a1,$a1,1
    sd         $ra,16($sp)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L000004a8
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,1
    jal        odsy_i2c_recv_1byte
    ld         $a3,0($sp)
    bnez       $v0, .L000004c0
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L00000498:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000004a8:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,928
    b          .L000004cc
    nop
.L000004c0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,984
.L000004cc:
    jal        odsy_i2cReset
    move       $a0,$s0
    b          .L00000498
    li         $v0,1

glabel odsy_i2cXmitRegRead
    daddiu     $sp,$sp,-32
    sd         $a1,8($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    lbu        $a1,32($s0)
    sd         $a2,0($sp)
    li         $a2,1
    sll        $a1,$a1,0x1
    sd         $ra,24($sp)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L0000057c
    move       $a0,$s0
    li         $a2,1
    ld         $a1,8($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000005b0
    ld         $a1,-30720($gp)
    lbu        $a1,32($s0)
    move       $a0,$s0
    sll        $a1,$a1,0x1
    li         $a2,1
    addiu      $a1,$a1,1
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L000005c4
    ld         $a1,-30720($gp)
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,1
    jal        odsy_i2c_recv_1byte
    ld         $a3,0($sp)
    bnez       $v0, .L00000594
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L0000056c:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000057c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1056
    b          .L000005a0
    nop
.L00000594:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1232
.L000005a0:
    jal        odsy_i2cReset
    move       $a0,$s0
    b          .L0000056c
    li         $v0,1
.L000005b0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1112
    b          .L000005a0
    nop
.L000005c4:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1176
    b          .L000005a0
    nop

glabel odsy_read_XmitRegs
    sb         $a1,32($a0)
    daddiu     $sp,$sp,-32
    li         $a1,8
    sd         $s0,8($sp)
    move       $s0,$a0
    nop
    sd         $ra,16($sp)
    jal        odsy_i2cXmitRegRead
    daddiu     $a2,$sp,0
    bnez       $v0, .L000006d0
    ld         $a1,-30720($gp)
    li         $a1,10000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $a0,$s0
    li         $a1,9
    jal        odsy_i2cXmitRegRead
    daddiu     $a2,$sp,0
    bnez       $v0, .L000006e4
    ld         $a1,-30720($gp)
    li         $a1,10000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $a0,$s0
    li         $a1,10
    jal        odsy_i2cXmitRegRead
    daddiu     $a2,$sp,0
    bnez       $v0, .L000006f8
    li         $a1,10000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $a0,$s0
    li         $a1,12
    jal        odsy_i2cXmitRegRead
    daddiu     $a2,$sp,0
    bnez       $v0, .L00000710
    ld         $a1,-30720($gp)
    li         $a1,10000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $a0,$s0
    li         $a1,13
    jal        odsy_i2cXmitRegRead
    daddiu     $a2,$sp,0
    bnez       $v0, .L00000724
    li         $a1,10000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $a0,$s0
    li         $a1,51
    jal        odsy_i2cXmitRegRead
    daddiu     $a2,$sp,0
    bnez       $v0, .L0000073c
    ld         $a1,-30720($gp)
    li         $a1,10000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $v0,$zero
.L000006c0:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000006d0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1296
    b          .L000006c0
    li         $v0,1
.L000006e4:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1360
    b          .L000006c0
    li         $v0,1
.L000006f8:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1424
    b          .L000006c0
    li         $v0,1
.L00000710:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1488
    b          .L000006c0
    li         $v0,1
.L00000724:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1552
    b          .L000006c0
    li         $v0,1
.L0000073c:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1616
    b          .L000006c0
    li         $v0,1

glabel odsy_readDVIRegs
    daddiu     $sp,$sp,-32
    li         $a1,56
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    jal        odsy_read_XmitRegs
    move       $s0,$a0
    bnez       $v0, .L000007b0
    ld         $a1,-30720($gp)
    move       $a0,$s0
    jal        odsy_read_XmitRegs
    li         $a1,57
    bnez       $v0, .L000007c4
    ld         $a1,-30720($gp)
    daddiu     $a1,$sp,0
    move       $a0,$s0
    li         $at,58
    jal        odsy_dviFPGARegRead
    sb         $at,32($s0)
    bnez       $v0, .L000007d8
    move       $v0,$zero
.L000007a0:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000007b0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1680
    b          .L000007a0
    li         $v0,1
.L000007c4:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1736
    b          .L000007a0
    li         $v0,1
.L000007d8:
    ld         $a1,-30720($gp)
    li         $a2,117
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1792
    b          .L000007a0
    li         $v0,1
