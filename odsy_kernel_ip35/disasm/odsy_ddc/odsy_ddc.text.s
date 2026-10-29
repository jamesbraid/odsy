.section .text
.set noat
.set noreorder


glabel odsy_i2cFixupAfterErr
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    lw         $v0,-30720($gp)
    lw         $a1,-30716($gp)
    move       $s0,$a0
    ld         $a0,16($a0)
    sd         $ra,8($sp)
    slt        $at,$a1,$v0
    jal        odsy_usdelay
    movn       $a1,$v0,$at
    jal        odsy_i2cReset
    move       $a0,$s0
    lw         $a1,-30712($gp)
    jal        odsy_usdelay
    ld         $a0,16($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_i2cPLLRegWrite
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
    bnez       $v0, .L000000b8
    move       $a0,$s0
    li         $a2,1
    ld         $a1,8($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000000b8
    move       $a0,$s0
    li         $a2,1
    ld         $a1,0($sp)
    jal        odsy_i2c_sendbyte
    li         $a3,1
    bnez       $v0, .L000000b8
    nop
    b          .L000000c4
    move       $v0,$zero
.L000000b8:
    jal        odsy_i2cReset
    move       $a0,$s0
    li         $v0,1
.L000000c4:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsy_i2cPLLRegRead
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
    bnez       $v0, .L00000164
    move       $a0,$s0
    li         $a2,1
    ld         $a1,8($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00000164
    nop
    lbu        $a1,32($s0)
    move       $a0,$s0
    sll        $a1,$a1,0x1
    li         $a2,1
    addiu      $a1,$a1,1
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L00000164
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,1
    jal        odsy_i2c_long_recvbyte
    ld         $a3,0($sp)
    bnez       $v0, .L00000164
    nop
    b          .L00000170
    move       $v0,$zero
.L00000164:
    jal        odsy_i2cReset
    move       $a0,$s0
    li         $v0,1
.L00000170:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsy_i2cDDCRegRead
    daddiu     $sp,$sp,-32
    sd         $a1,8($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    lbu        $a1,32($s0)
    sll        $a1,$a1,0x1
    sd         $a2,0($sp)
    li         $a2,1
    addiu      $a1,$a1,1
    sd         $ra,24($sp)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L000001f0
    move       $a0,$s0
    li         $a2,1
    ld         $a1,8($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000001f0
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,1
    jal        odsy_i2c_long_recvbyte
    ld         $a3,0($sp)
    bnez       $v0, .L000001f0
    nop
    b          .L000001fc
    move       $v0,$zero
.L000001f0:
    jal        odsy_i2cReset
    move       $a0,$s0
    li         $v0,1
.L000001fc:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsy_i2cPLLSeqRegWrite
    daddiu     $sp,$sp,-64
    sd         $a1,16($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    lbu        $a1,32($s0)
    sd         $s2,24($sp)
    move       $s2,$a2
    sd         $a3,8($sp)
    li         $a2,1
    sll        $a1,$a1,0x1
    sd         $ra,40($sp)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L000002ac
    sd         $s1,48($sp)
    move       $a0,$s0
    li         $a2,1
    ld         $a1,16($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000002ac
    ld         $a2,8($sp)
    addiu      $a2,$a2,-1
    beqz       $a2, .L000002d0
    sd         $a2,0($sp)
    move       $s1,$zero
    move       $a0,$s0
.L00000278:
    li         $a2,1
    daddu      $a1,$s1,$s2
    move       $a3,$zero
    jal        odsy_i2c_sendbyte
    lbu        $a1,0($a1)
    bnez       $v0, .L000002ac
    ld         $a2,0($sp)
    addiu      $s1,$s1,1
    sltu       $a2,$s1,$a2
    bnez       $a2, .L00000278
    move       $a0,$s0
    b          .L000002d8
    move       $a0,$s0
.L000002ac:
    jal        odsy_i2cReset
    move       $a0,$s0
    li         $v0,1
.L000002b8:
    ld         $ra,40($sp)
    ld         $s2,24($sp)
    ld         $s0,32($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000002d0:
    move       $s1,$zero
    move       $a0,$s0
.L000002d8:
    li         $a2,1
    daddu      $a1,$s1,$s2
    li         $a3,1
    jal        odsy_i2c_sendbyte
    lbu        $a1,0($a1)
    bnez       $v0, .L000002ac
    nop
    b          .L000002b8
    move       $v0,$zero

glabel odsy_i2cPLLSeqRegRead
    daddiu     $sp,$sp,-64
    sd         $a1,8($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    lbu        $a1,32($s0)
    sd         $s2,24($sp)
    move       $s2,$a2
    sd         $a3,16($sp)
    li         $a2,1
    sll        $a1,$a1,0x1
    sd         $ra,40($sp)
    jal        odsy_i2c_start
    andi       $a1,$a1,0xff
    bnez       $v0, .L000003c4
    sd         $s1,48($sp)
    move       $a0,$s0
    li         $a2,1
    ld         $a1,8($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000003c4
    move       $a0,$s0
    li         $a1,77
    jal        odsy_i2c_start
    li         $a2,1
    bnez       $v0, .L000003c4
    move       $a0,$s0
    li         $a1,1
    move       $a2,$zero
    jal        odsy_i2c_long_recvbyte
    move       $a3,$s2
    bnez       $v0, .L000003c4
    ld         $a2,16($sp)
    slti       $a2,$a2,3
    bnez       $a2, .L000003e8
    ld         $a3,16($sp)
    li         $s1,1
    addiu      $a3,$a3,-1
    sd         $a3,0($sp)
    move       $a0,$s0
.L0000039c:
    jal        odsy_i2c_short_recvbyte
    daddu      $a1,$s1,$s2
    bnez       $v0, .L000003c4
    ld         $a4,0($sp)
    addiu      $s1,$s1,1
    slt        $a4,$s1,$a4
    bnez       $a4, .L0000039c
    move       $a0,$s0
    b          .L000003f0
    move       $a0,$s0
.L000003c4:
    jal        odsy_i2cReset
    move       $a0,$s0
    li         $v0,1
.L000003d0:
    ld         $ra,40($sp)
    ld         $s2,24($sp)
    ld         $s0,32($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000003e8:
    li         $s1,1
    move       $a0,$s0
.L000003f0:
    move       $a1,$zero
    daddu      $a3,$s1,$s2
    jal        odsy_i2c_long_recvbyte
    li         $a2,1
    bnez       $v0, .L000003c4
    nop
    b          .L000003d0
    move       $v0,$zero

glabel odsy_i2cProbe2b
    ld         $at,16($a0)
    sh         $zero,0($a1)
    daddiu     $sp,$sp,-128
    sd         $a1,56($sp)
    move       $v0,$a1
    li         $a1,128
    sd         $s0,40($sp)
    move       $s0,$a0
    move       $a0,$v0
    sd         $ra,32($sp)
    daddiu     $at,$at,240
    jal        bzero
    sd         $at,48($sp)
    move       $a0,$s0
    jal        odsy_i2cReset
    sd         $s1,112($sp)
    sd         $s2,64($sp)
    sd         $s4,72($sp)
    ld         $a3,16($s0)
    sd         $s3,80($sp)
    lui        $s1,0x1
    sd         $s6,88($sp)
    daddu      $v1,$s1,$a3
    lw         $v1,-19328($v1)
    sd         $s7,96($sp)
    sd         $s8,104($sp)
    beqz       $v1, .L000009c0
    sd         $s5,120($sp)
.L00000480:
    li         $a1,13
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a3)
    beqz       $v0, .L000004f4
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a0,-19328($a0)
    beqz       $a0, .L00000800
    li         $s3,0x8540
.L000004a4:
    ld         $a3,48($sp)
.L000004a8:
    ld         $a1,56($sp)
    li         $a2,255
    sw         $a2,64($a3)
    move       $a0,$s0
    jal        odsy_i2cReset
    sh         $zero,0($a1)
    li         $v0,1
.L000004c4:
    ld         $s2,64($sp)
    ld         $s4,72($sp)
    ld         $s3,80($sp)
    ld         $s6,88($sp)
    ld         $s7,96($sp)
    ld         $s0,40($sp)
    ld         $ra,32($sp)
    ld         $s8,104($sp)
    ld         $s1,112($sp)
    ld         $s5,120($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000004f4:
    lw         $v1,28($s0)
    lui        $v0,0x23
    ld         $a0,824($a3)
    ori        $v0,$v0,0x3804
    daddu      $v0,$v0,$a0
    beqz       $v1, .L000009f8
    lw         $v0,0($v0)
    ori        $v0,$v0,0x440
.L00000514:
    dsll32     $ra,$v0,0x0
    li         $s4,-1
    dsrl32     $ra,$ra,0x0
    ld         $a1,-30704($gp)
    lui        $s2,0x40
    dsrl32     $s4,$s4,0x0
    daddu      $at,$s2,$a0
    and        $ra,$s4,$ra
    or         $ra,$a1,$ra
    sd         $ra,0($at)
    sync
    ld         $ra,0($s0)
    lw         $t9,0($ra)
    ori        $t9,$t9,0x8000
    sw         $t9,0($ra)
    ld         $t9,0($s0)
    lui        $t8,0xfffe
    lw         $ra,0($t9)
    ori        $t8,$t8,0xffff
    and        $t8,$t8,$ra
    sw         $t8,0($t9)
    ld         $a3,16($s0)
    lhu        $a4,24($s0)
    li         $s6,-1
    lui        $s7,0x3000
    ld         $a2,0($s0)
    ori        $s7,$s7,0x1
    ld         $a3,824($a3)
    sll        $a4,$a4,0xe
    dsll32     $s6,$s6,0x0
    lwu        $a2,0($a2)
    or         $a4,$s7,$a4
    daddu      $a3,$s2,$a3
    dsll32     $a4,$a4,0x0
    and        $a2,$s4,$a2
    and        $a4,$s6,$a4
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a3,16($s0)
    daddu      $v1,$s1,$a3
    lw         $v1,-19328($v1)
    li         $s5,0x8530
    sd         $v0,0($sp)
    beqz       $v1, .L00000cec
    li         $s3,0x8540
    ld         $s8,-30720($gp)
    sd         $v0,0($sp)
.L000005d4:
    move       $a0,$a3
    jal        odsy_usdelay
    li         $a1,10
    b          .L00000638
    sd         $zero,24($sp)
.L000005e8:
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00000b90
    nop
    ld         $a0,16($s0)
.L00000610:
    jal        vsema
    daddu      $a0,$s5,$a0
.L00000618:
    jal        us_delay
    li         $a0,10
    ld         $a1,24($sp)
    addiu      $a1,$a1,1
    sd         $a1,24($sp)
    slti       $a1,$a1,9
    beqz       $a1, .L00000928
    nop
.L00000638:
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    or         $a3,$s1,$a3
    sw         $a3,0($a4)
    ld         $a3,16($s0)
    daddu      $a2,$s1,$a3
    lw         $a2,-19328($a2)
    beqz       $a2, .L00000784
.L00000658:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a3)
    bnez       $v0, .L00000858
    nop
    ld         $a6,16($s0)
    lhu        $a7,24($s0)
    ld         $a5,0($s0)
    ld         $a6,824($a6)
    sll        $a7,$a7,0xe
    lwu        $a5,0($a5)
    or         $a7,$s7,$a7
    daddu      $a6,$s2,$a6
    dsll32     $a7,$a7,0x0
    and        $a5,$s4,$a5
    and        $a7,$s6,$a7
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    ld         $a3,16($s0)
    daddu      $a4,$s1,$a3
    lw         $a4,-19328($a4)
    beqz       $a4, .L00000798
    nop
.L000006b8:
    jal        us_delay
    li         $a0,10
    ld         $t2,0($s0)
    lui        $t1,0xfffe
    lw         $t3,0($t2)
    ori        $t1,$t1,0xffff
    and        $t1,$t1,$t3
    sw         $t1,0($t2)
    ld         $a3,16($s0)
    daddu      $t0,$s1,$a3
    lw         $t0,-19328($t0)
    beqz       $t0, .L000007ec
.L000006e8:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a3)
    bnez       $v0, .L000008c0
    nop
    ld         $t8,16($s0)
    lhu        $t9,24($s0)
    ld         $t3,0($s0)
    ld         $t8,824($t8)
    sll        $t9,$t9,0xe
    lwu        $t3,0($t3)
    or         $t9,$s7,$t9
    daddu      $t8,$s2,$t8
    dsll32     $t9,$t9,0x0
    and        $t3,$s4,$t3
    and        $t9,$s6,$t9
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
    ld         $a3,16($s0)
    daddu      $t2,$s1,$a3
    lw         $t2,-19328($t2)
    bnez       $t2, .L00000618
    nop
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $ra,$s1,$a3
    ld         $ra,-31416($ra)
    bnez       $ra, .L000005e8
    sd         $v0,16($sp)
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    ld         $a1,16($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000618
    nop
.L00000784:
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a3
    b          .L00000658
    ld         $a3,16($s0)
.L00000798:
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    ld         $a1,-31416($a1)
    beqz       $a1, .L000009d8
    sd         $v0,8($sp)
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00000a34
    nop
    ld         $a0,16($s0)
.L000007dc:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L000006b8
    nop
.L000007ec:
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a3
    b          .L000006e8
    ld         $a3,16($s0)
.L00000800:
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    ld         $a1,-31416($a1)
    move       $s2,$v0
    beqz       $a1, .L00000a14
    li         $s5,0x8530
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00000e18
    nop
    ld         $a0,16($s0)
.L00000848:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00000858:
    ld         $v0,16($s0)
    daddu      $a1,$s1,$v0
    lw         $a1,-19328($a1)
    bnez       $a1, .L000004a8
    ld         $a3,48($sp)
    jal        mutex_spinlock
    daddu      $a0,$s3,$v0
    ld         $a3,16($s0)
    daddu      $a2,$s1,$a3
    ld         $a2,-31416($a2)
    beqz       $a2, .L00000fc4
    move       $s6,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001350
    nop
    ld         $a0,16($s0)
.L000008b0:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L000008c0:
    ld         $v0,16($s0)
    daddu      $a1,$s1,$v0
    lw         $a1,-19328($a1)
    bnez       $a1, .L000004a8
    ld         $a3,48($sp)
    jal        mutex_spinlock
    daddu      $a0,$s3,$v0
    ld         $a3,16($s0)
    daddu      $a2,$s1,$a3
    ld         $a2,-31416($a2)
    beqz       $a2, .L00000fe4
    move       $s6,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000014ac
    nop
    ld         $a0,16($s0)
.L00000918:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00000928:
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    or         $a2,$s1,$a2
    sw         $a2,0($a3)
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    lw         $a1,-19328($a1)
    beqz       $a1, .L00000f90
.L00000948:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a3)
    beqz       $v0, .L00000d40
    ld         $a3,16($s0)
    daddu      $a4,$s1,$a3
    lw         $a4,-19328($a4)
    bnez       $a4, .L000004a4
    nop
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a5,$s1,$a3
    ld         $a5,-31416($a5)
    beqz       $a5, .L00001168
    move       $s6,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001608
    nop
    ld         $a0,16($s0)
.L000009b0:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L000009c0:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a3,$a0
    b          .L00000480
    ld         $a3,16($s0)
.L000009d8:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000006b8
    nop
.L000009f8:
    ld         $a1,-30712($gp)
    lui        $v1,0x2
    ori        $v0,$v0,0x800
    and        $v0,$v0,$a1
    ori        $v1,$v1,0x8180
    b          .L00000514
    or         $v0,$v0,$v1
.L00000a14:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s2
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00000a34:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00000aec
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00000aec:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00000b44
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00000b44:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000007dc
    ld         $a0,16($s0)
.L00000b90:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00000c48
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00000c48:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00000ca0
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00000ca0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000610
    ld         $a0,16($s0)
.L00000cec:
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a7,$s1,$a3
    ld         $a7,-31416($a7)
    beqz       $a7, .L00000fa4
    move       $s8,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000011f0
    ld         $s8,-30720($gp)
    ld         $a0,16($s0)
.L00000d30:
    jal        vsema
    daddu      $a0,$s5,$a0
.L00000d38:
    b          .L000005d4
    ld         $a3,16($s0)
.L00000d40:
    ld         $a2,0($s0)
    lhu        $a4,24($s0)
    sll        $a4,$a4,0xe
    lwu        $a2,0($a2)
    or         $a4,$s7,$a4
    ld         $a3,824($a3)
    and        $a2,$s4,$a2
    dsll32     $a4,$a4,0x0
    and        $a4,$s6,$a4
    daddu      $a3,$s2,$a3
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    lw         $a1,-19328($a1)
    beqz       $a1, .L00001188
.L00000d84:
    move       $a0,$a3
    jal        odsy_usdelay
    li         $a1,10
    ld         $a3,16($s0)
    daddu      $a5,$s1,$a3
    lw         $a5,-19328($a5)
    beqz       $a5, .L000011dc
.L00000da0:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a3)
    beqz       $v0, .L00001004
    ld         $a3,16($s0)
    daddu      $a6,$s1,$a3
    lw         $a6,-19328($a6)
    bnez       $a6, .L000004a4
    nop
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a7,$s1,$a3
    ld         $a7,-31416($a7)
    beqz       $a7, .L00001764
    move       $s6,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000017f8
    nop
    ld         $a0,16($s0)
.L00000e08:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00000e18:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L00000ee0
    lui        $s2,0x40
    li         $at,-3
    and        $at,$a5,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    li         $t2,-1
    ld         $at,824($at)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $ra,$t2,$ra
    daddu      $at,$s2,$at
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    lwu        $t3,-19664($t3)
    ld         $t1,824($t1)
    and        $t2,$t2,$t3
    daddu      $t1,$s2,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00000ee0:
    ld         $v1,824($a3)
    ld         $v0,-31416($a0)
    daddu      $v1,$s2,$v1
    sd         $v0,0($v1)
    sync
    beqz       $a6, .L00000f44
    nop
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a4,-19664($a3)
    li         $a2,-2
    and        $a2,$a2,$a4
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    ld         $a2,824($a2)
    li         $a4,-1
    lwu        $a0,-19664($a0)
    ld         $a3,-30720($gp)
    dsrl32     $a4,$a4,0x0
    daddu      $a2,$s2,$a2
    and        $a0,$a0,$a4
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00000f44:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000848
    ld         $a0,16($s0)
.L00000f90:
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a3
    b          .L00000948
    ld         $a3,16($s0)
.L00000fa4:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s8
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000d38
    ld         $s8,-30720($gp)
.L00000fc4:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00000fe4:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00001004:
    ld         $a4,0($sp)
    li         $a5,-3073
    and        $a4,$a4,$a5
    ld         $a3,824($a3)
    dsll32     $a4,$a4,0x0
    ld         $a2,-30704($gp)
    dsrl32     $a4,$a4,0x0
    daddu      $a3,$s2,$a3
    and        $a4,$s4,$a4
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    lw         $a1,-19328($a1)
    beqz       $a1, .L000017a4
    nop
    ld         $s3,56($sp)
.L0000104c:
    li         $s4,1
    move       $s2,$zero
    b          .L00001074
    daddiu     $s3,$s3,2
.L0000105c:
    jal        odsy_i2cReset
    move       $a0,$s0
    addiu      $s2,$s2,1
    slti       $t8,$s2,4
    beqz       $t8, .L000004a8
    ld         $a3,48($sp)
.L00001074:
    move       $a0,$s0
    li         $a1,96
    jal        odsy_i2c_start
    move       $a2,$zero
    move       $a0,$s0
    move       $a1,$zero
    move       $a2,$zero
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    move       $a0,$s0
    li         $a1,160
    jal        odsy_i2c_start
    li         $a2,1
    bnez       $v0, .L0000105c
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L0000105c
    move       $a0,$s0
    li         $a2,1
    jal        odsy_i2c_start
    li         $a1,161
    bnez       $v0, .L0000105c
    move       $a0,$s0
    li         $a1,1
    move       $a2,$zero
    jal        odsy_i2c_long_recvbyte
    move       $a3,$s3
    bnez       $v0, .L0000105c
    li         $s1,1
.L000010f4:
    ld         $a1,56($sp)
    move       $a0,$s0
    daddu      $a1,$s1,$a1
    jal        odsy_i2c_short_recvbyte
    daddiu     $a1,$a1,2
    bnez       $v0, .L000004a8
    ld         $a3,48($sp)
    addiu      $s1,$s1,1
    slti       $a2,$s1,127
    bnez       $a2, .L000010f4
    ld         $a3,56($sp)
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,1
    daddu      $a3,$s1,$a3
    jal        odsy_i2c_long_recvbyte
    daddiu     $a3,$a3,2
    bnez       $v0, .L0000105c
    nop
    jal        odsy_validate_ddc_data
    move       $a0,$s3
    beqz       $v0, .L0000105c
    ld         $a6,48($sp)
    ld         $a4,56($sp)
    li         $a5,2
    sw         $a5,64($a6)
    move       $v0,$zero
    b          .L000004c4
    sh         $s4,0($a4)
.L00001168:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00001188:
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    ld         $a1,-31416($a1)
    beqz       $a1, .L00001784
    move       $s6,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001954
    nop
    ld         $a0,16($s0)
.L000011cc:
    jal        vsema
    daddu      $a0,$s5,$a0
.L000011d4:
    b          .L00000d84
    ld         $a3,16($s0)
.L000011dc:
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a3
    b          .L00000da0
    ld         $a3,16($s0)
.L000011f0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L000012ac
    ld         $s8,-30720($gp)
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L000012ac:
    ld         $ra,824($a3)
    ld         $t9,-31416($a0)
    daddu      $ra,$s2,$ra
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001304
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001304:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000d30
    ld         $a0,16($s0)
.L00001350:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00001408
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00001408:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001460
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001460:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000008b0
    ld         $a0,16($s0)
.L000014ac:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00001564
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00001564:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L000015bc
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L000015bc:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000918
    ld         $a0,16($s0)
.L00001608:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000016c0
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L000016c0:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001718
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001718:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000009b0
    ld         $a0,16($s0)
.L00001764:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000004a8
    ld         $a3,48($sp)
.L00001784:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000011d4
    nop
.L000017a4:
    jal        mutex_spinlock
    daddu      $a0,$s3,$a3
    ld         $a3,16($s0)
    daddu      $a1,$s1,$a3
    ld         $a1,-31416($a1)
    beqz       $a1, .L00001ab0
    move       $s6,$v0
    daddu      $a0,$s3,$a3
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001ad0
    nop
    ld         $a0,16($s0)
.L000017e8:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L0000104c
    ld         $s3,56($sp)
.L000017f8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000018b0
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L000018b0:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001908
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001908:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L00000e08
    ld         $a0,16($s0)
.L00001954:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00001a0c
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00001a0c:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001a64
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001a64:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000011cc
    ld         $a0,16($s0)
.L00001ab0:
    jal        vsema
    daddu      $a0,$s5,$a3
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L0000104c
    ld         $s3,56($sp)
.L00001ad0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s3,$a0
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00001b88
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
.L00001b88:
    ld         $ra,824($a3)
    daddu      $ra,$s2,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001be0
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s2,$v0
    and        $at,$s4,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001be0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s3,$a0
    b          .L000017e8
    ld         $a0,16($s0)

glabel odsy_validate_ddc_data
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        odsy_i2cValidEdid
    nop
    beqz       $v0, .L00001c50
    ld         $ra,0($sp)
    li         $v0,1
.L00001c48:
    jr         $ra
    daddiu     $sp,$sp,16
.L00001c50:
    b          .L00001c48
    move       $v0,$zero

glabel odsy_EdidCksum
    move       $a3,$zero
    move       $v0,$zero
.L00001c60:
    daddu      $v1,$a3,$a0
    addiu      $a3,$a3,1
    lbu        $v1,0($v1)
    slti       $at,$a3,128
    addu       $v0,$v1,$v0
    andi       $v0,$v0,0xff
    beqz       $at, .L00001c98
    daddu      $a1,$a3,$a0
    addiu      $a3,$a3,1
    lbu        $a1,0($a1)
    slti       $v1,$a3,128
    addu       $v0,$a1,$v0
    bnez       $v1, .L00001c60
    andi       $v0,$v0,0xff
.L00001c98:
    jr         $ra
    nop

glabel odsy_i2cValidEdid
    lbu        $at,0($a0)
    li         $v0,255
    bnez       $at, .L00001d04
    daddiu     $sp,$sp,-16
    lbu        $v1,1($a0)
    bne        $v0, $v1, .L00001d04
    nop
    lbu        $a1,2($a0)
    bne        $v0, $a1, .L00001d04
    nop
    lbu        $a2,3($a0)
    bne        $v0, $a2, .L00001d04
    nop
    lbu        $a3,4($a0)
    bne        $v0, $a3, .L00001d04
    nop
    lbu        $a4,5($a0)
    bne        $v0, $a4, .L00001d04
    nop
    lbu        $a5,6($a0)
    bne        $v0, $a5, .L00001d08
    move       $v0,$zero
    lbu        $a6,7($a0)
    beqz       $a6, .L00001d10
    sd         $ra,0($sp)
.L00001d04:
    move       $v0,$zero
.L00001d08:
    jr         $ra
    daddiu     $sp,$sp,16
.L00001d10:
    jal        odsy_EdidCksum
    nop
    bnez       $v0, .L00001d04
    ld         $ra,0($sp)
    b          .L00001d08
    li         $v0,1

glabel sgiEdid
    lbu        $at,8($a0)
    li         $v0,76
    bne        $at, $v0, .L00001d50
    move       $v0,$zero
    lbu        $a3,9($a0)
    li         $v1,248
    beq        $a3, $v1, .L00001d58
    li         $v0,233
    beq        $a3, $v0, .L00001d58
    move       $v0,$zero
.L00001d50:
    jr         $ra
    nop
.L00001d58:
    jr         $ra
    li         $v0,1

glabel odsy_monitor_type
    lhu        $at,308($a0)
    beqz       $at, .L00001d7c
    li         $v0,-1
    lbu        $v1,330($a0)
    li         $v0,1
    andi       $v1,$v1,0x80
    movz       $v0,$zero,$v1
.L00001d7c:
    jr         $ra
    nop

glabel odsy_i2c2abReset
    daddiu     $sp,$sp,-16
    li         $a1,110
    li         $a2,1
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        odsy_i2c_start
    move       $s0,$a0
    bnez       $v0, .L00001e1c
    move       $a0,$s0
    li         $a1,80
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001e30
    move       $a0,$s0
    li         $a1,129
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001e48
    move       $a0,$s0
    li         $a1,240
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001e60
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,79
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001e74
    move       $v0,$zero
.L00001e0c:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001e1c:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,1
    b          .L00001e0c
    li         $v0,1
.L00001e30:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,56
    b          .L00001e0c
    li         $v0,1
.L00001e48:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,104
    b          .L00001e0c
    li         $v0,1
.L00001e60:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,152
    b          .L00001e0c
    li         $v0,1
.L00001e74:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,208
    b          .L00001e0c
    li         $v0,1

glabel odsy_i2c2abAttention
    daddiu     $sp,$sp,-32
    sd         $a0,8($sp)
    sb         $zero,0($sp)
    sb         $zero,1($sp)
    sb         $zero,2($sp)
    sb         $zero,3($sp)
    li         $a1,1
    li         $a2,80
    sd         $ra,16($sp)
    daddiu     $a3,$sp,0
    jal        odsy_i2c_becomeSlaveRecv
    sb         $zero,4($sp)
    bnez       $v0, .L00001ef0
    ld         $a1,-30720($gp)
    li         $a1,1
    li         $a2,4
    ld         $a0,8($sp)
    jal        odsy_i2c_slave_recvbyte
    daddiu     $a3,$sp,1
    bnez       $v0, .L00001f04
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L00001ee4:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001ef0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,256
    b          .L00001ee4
    li         $v0,1
.L00001f04:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,336
    b          .L00001ee4
    li         $v0,1

glabel odsy_i2c2abIDRequest
    daddiu     $sp,$sp,-16
    li         $a1,110
    li         $a2,1
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        odsy_i2c_start
    move       $s0,$a0
    bnez       $v0, .L00001fbc
    move       $a0,$s0
    li         $a1,80
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001fd4
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,129
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001fe8
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,241
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00001ffc
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,78
    li         $a2,1
    jal        odsy_i2c_sendbyte
    li         $a3,1
    bnez       $v0, .L00002010
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L00001fac:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001fbc:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,408
    b          .L00001fac
    li         $v0,1
.L00001fd4:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,464
    b          .L00001fac
    li         $v0,1
.L00001fe8:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,520
    b          .L00001fac
    li         $v0,1
.L00001ffc:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,576
    b          .L00001fac
    li         $v0,1
.L00002010:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,640
    b          .L00001fac
    li         $v0,1

glabel odsy_i2c2abPresencechk
    daddiu     $sp,$sp,-16
    li         $a1,110
    li         $a2,1
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        odsy_i2c_start
    move       $s0,$a0
    bnez       $v0, .L000020c4
    move       $a0,$s0
    li         $a1,80
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000020dc
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,129
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L000020f0
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,241
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    bnez       $v0, .L00002104
    move       $a0,$s0
    li         $a1,72
    li         $a2,1
    jal        odsy_i2c_sendbyte
    li         $a3,1
    bnez       $v0, .L0000211c
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L000020b4:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000020c4:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,696
    b          .L000020b4
    li         $v0,1
.L000020dc:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,760
    b          .L000020b4
    li         $v0,1
.L000020f0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,816
    b          .L000020b4
    li         $v0,1
.L00002104:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,872
    b          .L000020b4
    li         $v0,1
.L0000211c:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,944
    b          .L000020b4
    li         $v0,1

glabel odsy_i2c2abIDReply
    jr         $ra
    move       $v0,$zero

glabel odsy_i2c2abAssignAddr
    jr         $ra
    move       $v0,$zero

glabel odsy_i2cProbe2ab
    daddiu     $sp,$sp,-112
    sd         $s0,72($sp)
    sd         $s2,80($sp)
    sd         $s1,88($sp)
    move       $s1,$a0
    move       $s2,$zero
    sd         $s3,96($sp)
    li         $s3,3
    b          .L00002180
    sd         $ra,64($sp)
.L00002168:
    li         $a1,100
    jal        odsy_usdelay
    addiu      $s2,$s2,1
    slti       $at,$s2,30
.L00002178:
    beqz       $at, .L00002238
    ld         $s0,72($sp)
.L00002180:
    move       $s0,$zero
.L00002184:
    jal        odsy_i2c2abReset
    move       $a0,$s1
    beqz       $v0, .L000021a4
    nop
    addiu      $s0,$s0,1
    slti       $v0,$s0,3
    bnez       $v0, .L00002184
    nop
.L000021a4:
    beq        $s0, $s3, .L00002224
    li         $a1,100
    jal        odsy_i2c2abAttention
    move       $a0,$s1
    bnez       $v0, .L00002168
    ld         $a0,16($s1)
    jal        odsy_usdelay
    li         $a1,100
    move       $s0,$zero
    li         $a1,100
.L000021cc:
    ld         $a0,16($s1)
    jal        odsy_usdelay
    addiu      $s2,$s2,1
    jal        odsy_i2c2abIDRequest
    move       $a0,$s1
    bnez       $v0, .L00002254
    ld         $a1,-30720($gp)
    move       $a0,$s1
.L000021ec:
    jal        odsy_i2c2abIDReply
    daddiu     $a1,$sp,0
    bnez       $v0, .L00002268
    move       $a0,$s1
.L000021fc:
    jal        odsy_i2c2abAssignAddr
    daddiu     $a1,$sp,0
    bnez       $v0, .L00002280
    ld         $a1,-30720($gp)
    addiu      $s0,$s0,1
.L00002210:
    slti       $v1,$s0,2
    bnez       $v1, .L000021cc
    li         $a1,100
    b          .L00002178
    slti       $at,$s2,30
.L00002224:
    ld         $a0,16($s1)
    jal        odsy_usdelay
    addiu      $s2,$s2,1
    b          .L00002178
    slti       $at,$s2,30
.L00002238:
    ld         $ra,64($sp)
    ld         $s1,88($sp)
    li         $v0,1
    ld         $s2,80($sp)
    ld         $s3,96($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00002254:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1000
    b          .L000021ec
    move       $a0,$s1
.L00002268:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1032
    b          .L000021fc
    move       $a0,$s1
.L00002280:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1000
    b          .L00002210
    addiu      $s0,$s0,1

glabel odsy_copyin_cmd
    lw         $a2,16($a0)
    li         $v0,-22
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    blez       $a2, .L000022e4
    slti       $a5,$a2,257
    beqz       $a5, .L000022e4
    nop
    ld         $a5,24($a0)
    beqz       $a5, .L000022dc
    nop
    jal        copyin
    move       $a0,$a5
    bnez       $v0, .L000022fc
    move       $v0,$zero
.L000022d0:
    ld         $ra,0($sp)
.L000022d4:
    jr         $ra
    daddiu     $sp,$sp,16
.L000022dc:
    b          .L000022d4
    ld         $ra,0($sp)
.L000022e4:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1064
    b          .L000022d0
    li         $v0,-22
.L000022fc:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1120
    b          .L000022d0
    li         $v0,-14

glabel odsy_i2c_cmd
    lhu        $a6,2($a1)
    daddiu     $sp,$sp,-624
    sd         $ra,600($sp)
    sd         $s4,576($sp)
    sd         $s3,568($sp)
    lw         $v0,8($a1)
    move       $a3,$zero
    move       $s3,$a0
    sd         $s1,584($sp)
    move       $s1,$a1
    move       $s4,$a2
    sd         $s2,592($sp)
    move       $s2,$zero
    beqz       $v0, .L000023f4
    sd         $s0,608($sp)
    li         $at,1
    bne        $v0, $at, .L000023ac
    li         $s0,0xb408
    daddu      $s0,$a0,$s0
.L00002360:
    lw         $t8,28($s0)
    ld         $v0,16($s0)
    sd         $a6,552($sp)
    beqz       $t8, .L00002400
    sd         $a3,560($sp)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    ld         $a1,552($sp)
.L00002388:
    ld         $v0,-30720($gp)
    sltiu      $a2,$a1,17
    dsll       $a1,$a1,0x3
    daddiu     $a0,$v0,2544
    beqz       $a2, .L000023d4
    daddu      $a0,$a0,$a1
    ld         $a2,0($a0)
    jr         $a2
    move       $a0,$s1
.L000023ac:
    li         $v0,-22
.L000023b0:
    ld         $s3,568($sp)
    ld         $s4,576($sp)
    ld         $ra,600($sp)
    ld         $s0,608($sp)
    ld         $s1,584($sp)
    ld         $s2,592($sp)
    jr         $ra
    daddiu     $sp,$sp,624
.L000023d0:
    li         $s2,-22
.L000023d4:
    lw         $a3,28($s0)
.L000023d8:
    beqz       $a3, .L00002418
    ld         $v0,16($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
.L000023ec:
    b          .L000023b0
    move       $v0,$s2
.L000023f4:
    li         $s0,0xb3e0
    b          .L00002360
    daddu      $s0,$a0,$s0
.L00002400:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L00002388
    ld         $a1,552($sp)
.L00002418:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L000023ec
    nop
.L0000242c:
    jal        odsy_i2cReset
    move       $a0,$s0
    b          .L000023d8
    lw         $a3,28($s0)
.L0000243c:
    lw         $a1,16($s1)
    beqz       $a1, .L00002918
    move       $a0,$s1
    jal        odsy_copyin_cmd
    daddiu     $a1,$sp,0
    bltz       $v0, .L00002f20
    move       $s2,$v0
.L00002458:
    ld         $a2,560($sp)
    bnez       $a2, .L000023d4
    ld         $s4,-30720($gp)
    b          .L00002920
    lw         $a6,704($s3)
.L0000246c:
    ld         $a3,32($s1)
    beqz       $a3, .L00002e2c
    daddiu     $a1,$v0,1232
    lw         $a4,704($s3)
    li         $a0,4
    bne        $a0, $a4, .L00002774
    daddiu     $a2,$sp,272
    lui        $v0,0x1
    daddu      $v0,$s3,$v0
    lw         $a5,-19460($v0)
    sd         $s0,264($sp)
    li         $v1,0xb3e0
    daddu      $s0,$s3,$v1
    beqz       $a5, .L00002c48
    ld         $v0,-19472($v0)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L000027cc
    daddiu     $a2,$sp,544
.L000024c0:
    jal        odsy_copyin_cmd
    daddiu     $a1,$sp,0
    bltz       $v0, .L000023d4
    move       $s2,$v0
    daddiu     $a2,$sp,0
    ld         $s3,-30712($gp)
    move       $a1,$s1
    move       $a0,$s0
    jal        odsy_2abCmdWrapper
    move       $a3,$s3
    ld         $a1,32($s1)
    beqz       $a1, .L000023d4
    move       $s2,$v0
    lh         $a2,20($s1)
    blez       $a2, .L00002bc4
    move       $a0,$s1
    jal        copyout
    move       $a0,$s3
    beqz       $v0, .L00002bc4
    move       $a0,$s1
    b          .L000023d4
    li         $s2,-14
.L00002518:
    ld         $a1,32($s1)
    beqz       $a1, .L00002a9c
    nop
    lw         $a2,292($s3)
    blez       $a2, .L00002a9c
    nop
    lw         $a0,8($s1)
    beqz       $a0, .L00002b9c
    li         $a3,1
    bne        $a0, $a3, .L00002f3c
    nop
    lhu        $a4,0($s1)
    beqz       $a4, .L00002c10
    nop
    lhu        $a5,568($s3)
    beqz       $a5, .L00002f74
    li         $a2,128
    jal        copyout
    daddiu     $a0,$s3,570
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002f88
    ld         $a1,-30720($gp)
.L00002574:
    lw         $a6,292($s3)
    blez       $a6, .L00002b34
    nop
    lw         $a0,8($s1)
    beqz       $a0, .L00002cc8
    daddiu     $a1,$s3,308
    li         $a7,1
    bne        $a0, $a7, .L00002ef8
    move       $a0,$s0
    daddiu     $a2,$sp,548
    jal        odsy_i2cDDCRegRead
    li         $a1,5
    sb         $v0,548($sp)
    lhu        $t0,0($s1)
    beqz       $t0, .L00002b3c
    li         $s4,31
    li         $a2,32
    move       $a1,$zero
    move       $a0,$s0
    jal        odsy_i2cPLLRegWrite
    sb         $s4,32($s0)
    lbu        $a2,548($sp)
    li         $a1,5
    move       $a0,$s0
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,548($sp)
    move       $a0,$s0
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s3,568
    bnez       $v0, .L00002f0c
    ld         $a1,-30720($gp)
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    jal        odsy_i2cPLLRegWrite
    sb         $s4,32($s0)
    b          .L000023d8
    lw         $a3,28($s0)
.L00002614:
    lbu        $a3,4($s1)
    daddiu     $a2,$s1,6
    sra        $a3,$a3,0x1
    sb         $a3,32($s0)
    move       $a0,$s0
    jal        odsy_i2cDDCRegRead
    lbu        $a1,5($s1)
    bnez       $v0, .L00002e3c
    sw         $v0,12($s1)
.L00002638:
    li         $a2,48
    move       $a1,$s4
    move       $a0,$s1
    jal        copyout
    ld         $s3,-30720($gp)
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002e54
    daddiu     $a1,$s3,2272
.L0000265c:
    lbu        $a4,4($s1)
    sra        $a4,$a4,0x1
    sb         $a4,32($s0)
    lbu        $a2,6($s1)
    move       $a0,$s0
    jal        odsy_i2cPLLRegWrite
    lbu        $a1,5($s1)
    bnez       $v0, .L00002e64
    sw         $v0,12($s1)
.L00002680:
    li         $a2,48
    move       $a1,$s4
    move       $a0,$s1
    jal        copyout
    ld         $s3,-30720($gp)
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002e7c
    daddiu     $a1,$s3,2352
.L000026a4:
    move       $a0,$s1
    jal        odsy_copyin_cmd
    daddiu     $a1,$sp,0
    bltz       $v0, .L000023d4
    move       $s2,$v0
    lw         $s3,16($s1)
    sw         $zero,544($sp)
    blez       $s3, .L00002b2c
    move       $v0,$zero
    b          .L000028ac
    move       $a0,$s0
.L000026d0:
    lh         $s3,20($s1)
    blez       $s3, .L000026f0
    nop
    ld         $a5,32($s1)
    beqz       $a5, .L000026f0
    slti       $a6,$s3,257
    bnez       $a6, .L00002aa4
    move       $v0,$zero
.L000026f0:
    b          .L000023d4
    li         $s2,-22
.L000026f8:
    jal        odsy_i2c_stop
    move       $a0,$s0
    lw         $a7,8($s1)
    li         $t0,1
    beq        $a7, $t0, .L00002ce4
    sw         $v0,12($s1)
    move       $a0,$s1
.L00002714:
    move       $a1,$s4
    jal        copyout
    li         $a2,48
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002e8c
    ld         $a1,-30720($gp)
.L00002730:
    lw         $t1,8($s1)
    li         $t2,1
    beq        $t1, $t2, .L00002d04
    daddiu     $a2,$sp,549
.L00002740:
    lhu        $a2,40($s1)
    move       $a0,$s0
    jal        odsy_i2c_start
    lbu        $a1,4($s1)
    li         $a2,48
    move       $a1,$s4
    move       $a0,$s1
    jal        copyout
    sw         $v0,12($s1)
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002ea0
    ld         $a1,-30720($gp)
.L00002774:
    li         $a1,5
    move       $a0,$s0
    li         $t3,31
    jal        odsy_i2cDDCRegRead
    sb         $t3,32($s0)
    sb         $v0,272($sp)
    lw         $t8,704($s3)
    sll        $t8,$t8,0x1e
    bltz       $t8, .L00002bdc
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,272($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s0
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,272($sp)
    daddiu     $a2,$sp,544
.L000027cc:
    daddiu     $a1,$sp,280
    move       $a0,$s0
    li         $a4,239
    jal        odsy_i2c_read_denali
    sb         $a4,32($s0)
    bnez       $v0, .L00002eb4
    ld         $a1,-30720($gp)
    lw         $a6,544($sp)
    sh         $a6,20($s1)
    lw         $v0,544($sp)
    slti       $a5,$v0,32
    beqz       $a5, .L00002818
    dsll       $a2,$v0,0x2
    ld         $a1,32($s1)
    daddiu     $a0,$sp,280
    jal        copyout
    sll        $a2,$a2,0x0
    bnez       $v0, .L00002f50
    ld         $a1,-30720($gp)
.L00002818:
    jal        odsy_i2c_stop
    move       $a0,$s0
    lw         $a4,704($s3)
    li         $a3,4
    beq        $a3, $a4, .L00002844
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    li         $a5,31
    jal        odsy_i2cPLLRegWrite
    sb         $a5,32($s0)
.L00002844:
    move       $a0,$s1
    move       $a1,$s4
    jal        copyout
    li         $a2,48
    bnez       $v0, .L00002ecc
.L00002858:
    li         $s1,4
.L0000285c:
    jal        odsy_i2c_stop
    move       $a0,$s0
    lw         $a6,704($s3)
    bne        $s1, $a6, .L000028f8
    lui        $v0,0x1
    daddu      $v0,$s3,$v0
    lw         $v1,-19460($v0)
    beqz       $v1, .L00002c34
    ld         $v0,-19472($v0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
.L0000288c:
    b          .L000023d4
    ld         $s0,264($sp)
.L00002894:
    lw         $v0,544($sp)
    addiu      $v0,$v0,1
    slt        $a3,$v0,$s3
    beqz       $a3, .L000028d0
    sw         $v0,544($sp)
    move       $a0,$s0
.L000028ac:
    lhu        $a2,40($s1)
    daddu      $a1,$v0,$sp
    move       $a3,$zero
    jal        odsy_i2c_sendbyte
    lbu        $a1,0($a1)
    beqz       $v0, .L00002894
    sw         $v0,12($s1)
    lw         $a3,544($sp)
    slt        $a3,$a3,$s3
.L000028d0:
    li         $a2,48
    move       $a1,$s4
    move       $a0,$s1
    li         $s2,-5
    jal        copyout
    movz       $s2,$s3,$a3
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002ee4
    ld         $a1,-30720($gp)
.L000028f8:
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    li         $a4,31
    jal        odsy_i2cPLLRegWrite
    sb         $a4,32($s0)
    b          .L000023d8
    lw         $a3,28($s0)
.L00002918:
    move       $s4,$v0
    lw         $a6,704($s3)
.L00002920:
    li         $a5,4
    bne        $a5, $a6, .L00002964
    daddiu     $a2,$sp,272
    lui        $v0,0x1
    daddu      $v0,$s3,$v0
    lw         $v1,-19460($v0)
    li         $a0,0xb3e0
    sd         $s0,264($sp)
    daddu      $s0,$s3,$a0
    beqz       $v1, .L00002d70
    ld         $v0,-19472($v0)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L000029bc
    li         $a6,238
.L00002964:
    li         $a1,5
    move       $a0,$s0
    li         $a3,31
    jal        odsy_i2cDDCRegRead
    sb         $a3,32($s0)
    sb         $v0,272($sp)
    lw         $a4,704($s3)
    sll        $a4,$a4,0x1e
    bltz       $a4, .L00002c8c
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,272($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s0
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,272($sp)
    li         $a6,238
.L000029bc:
    sb         $a6,32($s0)
    lw         $a5,16($s1)
    srl        $a5,$a5,0x2
    addiu      $a5,$a5,2
    sb         $a5,280($sp)
    sb         $zero,281($sp)
    lbu        $a4,6($s1)
    sb         $a4,282($sp)
    lw         $a3,16($s1)
    srl        $a3,$a3,0x2
    beqz       $a3, .L00002a48
    move       $a0,$zero
    daddiu     $v0,$sp,280
    daddiu     $a1,$sp,0
    dsll       $a4,$a0,0x2
.L000029f8:
    daddu      $a4,$a1,$a4
    daddu      $a5,$a0,$v0
    lw         $a4,0($a4)
    sb         $a4,3($a5)
    lw         $a3,16($s1)
    addiu      $a0,$a0,1
    srl        $a3,$a3,0x2
    sltu       $a7,$a0,$a3
    beqz       $a7, .L00002a48
    dsll       $a4,$a0,0x2
    daddu      $a4,$a1,$a4
    daddu      $a5,$a0,$v0
    lw         $a4,0($a4)
    sb         $a4,3($a5)
    lw         $a3,16($s1)
    addiu      $a0,$a0,1
    srl        $a3,$a3,0x2
    sltu       $a5,$a0,$a3
    bnez       $a5, .L000029f8
    dsll       $a4,$a0,0x2
.L00002a48:
    move       $a0,$s0
    addiu      $a2,$a3,3
    jal        odsy_i2c_write_denali
    daddiu     $a1,$sp,280
    bnez       $v0, .L00002f64
    daddiu     $a1,$s4,1208
.L00002a60:
    jal        odsy_i2c_stop
    move       $a0,$s0
    lw         $a6,704($s3)
    li         $a5,4
    bne        $a5, $a6, .L00002b0c
    lui        $v0,0x1
    daddu      $v0,$s3,$v0
    lw         $v1,-19460($v0)
    beqz       $v1, .L00002d5c
    ld         $v0,-19472($v0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
.L00002a94:
    b          .L000023d4
    ld         $s0,264($sp)
.L00002a9c:
    b          .L000023d4
    li         $s2,-22
.L00002aa4:
    daddiu     $s2,$sp,280
    b          .L00002ac4
    sw         $zero,544($sp)
.L00002ab0:
    lw         $v0,544($sp)
    addiu      $v0,$v0,1
    slt        $a1,$v0,$s3
    beqz       $a1, .L00002ae4
    sw         $v0,544($sp)
.L00002ac4:
    move       $a0,$s0
    daddu      $a3,$v0,$s2
    move       $a2,$zero
    jal        odsy_i2c_long_recvbyte
    lhu        $a1,40($s1)
    beqz       $v0, .L00002ab0
    sw         $v0,12($s1)
    lw         $v0,544($sp)
.L00002ae4:
    blez       $v0, .L00002c64
    move       $a0,$s1
    daddiu     $a0,$sp,280
    ld         $a1,32($s1)
    jal        copyout
    move       $a2,$v0
    beqz       $v0, .L00002c64
    move       $a0,$s1
    b          .L000023d4
    li         $s2,-14
.L00002b0c:
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    li         $v1,31
    jal        odsy_i2cPLLRegWrite
    sb         $v1,32($s0)
    b          .L000023d8
    lw         $a3,28($s0)
.L00002b2c:
    b          .L000028d0
    slt        $a3,$zero,$s3
.L00002b34:
    b          .L000023d4
    li         $s2,-22
.L00002b3c:
    li         $a2,16
    move       $a1,$zero
    move       $a0,$s0
    jal        odsy_i2cPLLRegWrite
    sb         $s4,32($s0)
    lbu        $a2,548($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s0
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,548($sp)
    move       $a0,$s0
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s3,438
    bnez       $v0, .L00002f9c
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    jal        odsy_i2cPLLRegWrite
    sb         $s4,32($s0)
    b          .L000023d8
    lw         $a3,28($s0)
.L00002b9c:
    lhu        $a4,308($s3)
    beqz       $a4, .L00002cc0
    li         $a2,128
    jal        copyout
    daddiu     $a0,$s3,310
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002fdc
    ld         $a1,-30720($gp)
    move       $a0,$s1
.L00002bc4:
    move       $a1,$s4
    jal        copyout
    li         $a2,48
    li         $a5,-14
    b          .L000023d4
    movn       $s2,$a5,$v0
.L00002bdc:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,272($sp)
    li         $a1,5
    move       $a0,$s0
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,272($sp)
    b          .L000027cc
    daddiu     $a2,$sp,544
.L00002c10:
    lhu        $a3,438($s3)
    beqz       $a3, .L00002fb4
    li         $a2,128
    jal        copyout
    daddiu     $a0,$s3,440
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002fc8
    ld         $a1,-30720($gp)
.L00002c34:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L0000288c
    nop
.L00002c48:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L000027cc
    daddiu     $a2,$sp,544
    move       $a0,$s1
.L00002c64:
    move       $a1,$s4
    jal        copyout
    li         $a2,48
    lw         $a2,544($sp)
    slt        $a2,$a2,$s3
    li         $a1,-5
    movz       $a1,$s3,$a2
    li         $s2,-14
    b          .L000023d4
    movz       $s2,$a1,$v0
.L00002c8c:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,272($sp)
    li         $a1,5
    move       $a0,$s0
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,272($sp)
    b          .L000029bc
    li         $a6,238
.L00002cc0:
    b          .L000023d4
    li         $s2,-22
.L00002cc8:
    li         $a0,0xb3e0
    jal        odsy_i2cProbe2b
    daddu      $a0,$s3,$a0
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    b          .L00002ff0
    ld         $a1,-30720($gp)
.L00002ce4:
    li         $a2,48
    move       $a1,$zero
    move       $a0,$s0
    li         $a3,31
    jal        odsy_i2cPLLRegWrite
    sb         $a3,32($s0)
    b          .L00002714
    move       $a0,$s1
.L00002d04:
    li         $a1,5
    move       $a0,$s0
    lbu        $s3,32($s0)
    li         $a4,31
    jal        odsy_i2cDDCRegRead
    sb         $a4,32($s0)
    sb         $v0,549($sp)
    lhu        $a5,0($s1)
    beqz       $a5, .L00002d88
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    move       $a2,$zero
    lbu        $a2,549($sp)
    li         $a1,5
    move       $a0,$s0
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,549($sp)
.L00002d54:
    b          .L00002740
    sb         $s3,32($s0)
.L00002d5c:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00002a94
    nop
.L00002d70:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L000029bc
    li         $a6,238
.L00002d88:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    move       $a2,$zero
    lbu        $a2,549($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s0
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,549($sp)
    b          .L00002d54
    nop
.L00002dc0:
    move       $s4,$v0
    daddiu     $a1,$v0,1384
    jal        cmn_err
    li         $a0,4
    li         $a0,0xb3e0
    jal        odsy_i2c2abPresencechk
    daddu      $a0,$s3,$a0
    beqzl      $v0, .L000023d8
    lw         $a3,28($s0)
    daddiu     $a1,$s4,1432
    jal        cmn_err
    li         $a0,1
    b          .L000023d4
    li         $s2,-5
.L00002df8:
    move       $s4,$v0
    daddiu     $a1,$v0,1384
    jal        cmn_err
    li         $a0,4
    li         $a0,0xb3e0
    jal        odsy_i2cProbe2ab
    daddu      $a0,$s3,$a0
    beqz       $v0, .L000023d4
    daddiu     $a1,$s4,1496
    jal        cmn_err
    li         $a0,1
    b          .L000023d4
    li         $s2,-5
.L00002e2c:
    jal        cmn_err
    li         $a0,4
    b          .L000023d4
    li         $s2,-22
.L00002e3c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,2240
    b          .L00002638
    li         $s2,-14
.L00002e54:
    jal        cmn_err
    li         $a0,4
    b          .L000023b0
    li         $v0,14
.L00002e64:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,2320
    b          .L00002680
    li         $s2,-14
.L00002e7c:
    jal        cmn_err
    li         $a0,4
    b          .L000023b0
    li         $v0,14
.L00002e8c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2448
    b          .L000023b0
    li         $v0,14
.L00002ea0:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2496
    b          .L000023b0
    li         $v0,14
.L00002eb4:
    li         $a0,4
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,1272
    b          .L0000285c
    li         $s1,4
.L00002ecc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1360
    b          .L000023d4
    li         $s2,-14
.L00002ee4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2400
    b          .L000023b0
    li         $v0,14
.L00002ef8:
    daddiu     $a1,$v0,2184
    jal        cmn_err
    li         $a0,1
    b          .L000023d4
    li         $s2,-22
.L00002f0c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2120
    b          .L000023d4
    li         $s2,-14
.L00002f20:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1176
    li         $a2,1
    b          .L00002458
    sd         $a2,560($sp)
.L00002f3c:
    daddiu     $a1,$v0,1936
    jal        cmn_err
    li         $a0,1
    b          .L000023d4
    li         $s2,-22
.L00002f50:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1320
    b          .L00002858
    li         $s2,-14
.L00002f64:
    jal        cmn_err
    li         $a0,4
    b          .L00002a60
    nop
.L00002f74:
    daddiu     $a1,$v0,1864
    jal        cmn_err
    li         $a0,1
    b          .L000023d4
    li         $s2,-22
.L00002f88:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1784
    b          .L000023d4
    li         $s2,-14
.L00002f9c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2056
    b          .L000023d4
    li         $s2,-14
.L00002fb4:
    daddiu     $a1,$v0,1712
    jal        cmn_err
    li         $a0,1
    b          .L000023d4
    li         $s2,-22
.L00002fc8:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1632
    b          .L000023d4
    li         $s2,-14
.L00002fdc:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,1560
    b          .L000023d4
    li         $s2,-14
.L00002ff0:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1992
    b          .L000023d4
    li         $s2,-14

glabel odsy_Probe2AB
    daddiu     $sp,$sp,-256
    sd         $s5,240($sp)
    sd         $s0,232($sp)
    sd         $s7,224($sp)
    sd         $s6,216($sp)
    sd         $ra,184($sp)
    sd         $s1,176($sp)
    move       $s1,$a0
    sd         $s4,192($sp)
    move       $s4,$a1
    jal        odsy_i2cReset
    sd         $s3,208($sp)
    daddiu     $v0,$s4,1
    sd         $v0,168($sp)
    li         $s7,1
    li         $s6,3
    ld         $s3,-30712($gp)
    li         $s5,240
    move       $s0,$zero
    sd         $s2,200($sp)
    daddiu     $at,$s3,129
    b          .L000030c0
    sd         $at,160($sp)
.L00003060:
    addiu      $s2,$s2,1
    slti       $v1,$s2,3
    beqz       $v1, .L00003090
    nop
.L00003070:
    addiu      $s0,$s0,1
    move       $a0,$s1
    li         $a1,1
    daddiu     $a2,$s3,128
    jal        odsy_2abSendCmd
    move       $a3,$zero
    beqz       $v0, .L00003060
    nop
.L00003090:
    beq        $s2, $s6, .L000030cc
    move       $a0,$s1
    move       $a1,$s4
    jal        odsy_2abGetReply
    daddiu     $a2,$sp,0
    lw         $a2,0($sp)
    blez       $v0, .L00003138
    move       $s2,$v0
    beq        $a2, $s7, .L000030ec
    slti       $s2,$s0,30
.L000030b8:
    beqz       $s2, .L00003104
    li         $a2,110
.L000030c0:
    sb         $s5,128($s3)
    b          .L00003070
    move       $s2,$zero
.L000030cc:
    jal        odsy_i2c_stop
    move       $a0,$s1
    lw         $a1,-30688($gp)
    jal        odsy_usdelay
    ld         $a0,16($s1)
    addiu      $s0,$s0,1
    b          .L000030b8
    slti       $s2,$s0,30
.L000030ec:
    lbu        $a1,0($s4)
    li         $a0,224
    bne        $a0, $a1, .L000030b8
    slti       $s2,$s0,30
    b          .L00003164
    nop
.L00003104:
    sb         $a2,-30691($gp)
    move       $v0,$zero
.L0000310c:
    ld         $s5,240($sp)
    ld         $s0,232($sp)
    ld         $s7,224($sp)
    ld         $s6,216($sp)
    ld         $s3,208($sp)
    ld         $ra,184($sp)
    ld         $s2,200($sp)
    ld         $s1,176($sp)
    ld         $s4,192($sp)
    jr         $ra
    daddiu     $sp,$sp,256
.L00003138:
    jal        odsy_i2c_stop
    move       $a0,$s1
    lw         $a1,-30688($gp)
    jal        odsy_usdelay
    ld         $a0,16($s1)
    bltz       $s2, .L0000315c
    nop
.L00003154:
    b          .L000030b8
    slti       $s2,$s0,30
.L0000315c:
    b          .L00003154
    addiu      $s0,$s0,1
.L00003164:
    lbu        $a3,-30691($gp)
    li         $a4,4
    xor        $a4,$a4,$a3
    lw         $a1,-30688($gp)
    li         $a5,110
    sltiu      $a4,$a4,1
    ld         $a0,16($s1)
    movn       $a3,$a5,$a4
    jal        odsy_usdelay
    sb         $a3,-30691($gp)
    b          .L000031a0
    move       $s2,$zero
.L00003194:
    addiu      $s2,$s2,1
.L00003198:
    slti       $a5,$s2,2
    beqz       $a5, .L000032c0
.L000031a0:
    lw         $a1,-30688($gp)
    jal        odsy_usdelay
    ld         $a0,16($s1)
    addiu      $s0,$s0,1
    move       $a0,$s1
    li         $a1,1
    daddiu     $a2,$s3,128
    li         $a6,241
    sb         $a6,128($s3)
    jal        odsy_2abSendCmd
    move       $a3,$zero
    beqz       $v0, .L00003194
    move       $a0,$s1
    move       $a1,$s4
    jal        odsy_2abGetReply
    daddiu     $a2,$sp,0
    blez       $v0, .L00003194
    slti       $a7,$v0,128
    beqz       $a7, .L00003194
    sd         $v0,144($sp)
    ld         $a2,144($sp)
    ld         $a0,168($sp)
    daddiu     $a1,$sp,8
    addiu      $a2,$a2,-1
    jal        bcopy
    sd         $a2,152($sp)
    ld         $a3,144($sp)
    beq        $a3, $s7, .L00003194
    li         $a4,225
    lbu        $a5,0($s4)
    bne        $a4, $a5, .L00003194
    lw         $a1,-30688($gp)
    jal        odsy_usdelay
    ld         $a0,16($s1)
    li         $a6,242
    sb         $a6,128($s3)
    daddiu     $a0,$sp,8
    ld         $a1,160($sp)
    addiu      $s0,$s0,1
    jal        bcopy
    ld         $a2,152($sp)
    li         $a3,1
    ld         $t0,152($sp)
    daddiu     $a2,$s3,128
    move       $a0,$s1
    ld         $a1,144($sp)
    li         $a7,4
    daddu      $t0,$t0,$s3
    addiu      $a1,$a1,1
    jal        odsy_2abSendCmd
    sb         $a7,129($t0)
    beqz       $v0, .L00003198
    addiu      $s2,$s2,1
    lw         $a3,136($sp)
    li         $a2,4
    beqz       $a3, .L000032b8
    sb         $a2,-30691($gp)
    move       $s0,$zero
    ld         $s1,-30704($gp)
    dsll       $a0,$s0,0x3
.L00003290:
    li         $a2,19
    daddu      $a0,$s1,$a0
    daddiu     $a1,$sp,8
    jal        strncmp
    ld         $a0,0($a0)
    beqz       $v0, .L000032b8
    addiu      $s0,$s0,1
    slti       $a1,$s0,3
    bnez       $a1, .L00003290
    dsll       $a0,$s0,0x3
.L000032b8:
    b          .L0000310c
    li         $v0,1
.L000032c0:
    slti       $s2,$s0,30
    beqz       $s2, .L000030b8
    lw         $a1,-30688($gp)
    jal        odsy_usdelay
    ld         $a0,16($s1)
    b          .L000030b8
    nop

glabel odsy_2abCmdWrapper
    daddiu     $sp,$sp,-64
    sd         $s3,48($sp)
    sd         $ra,40($sp)
    sd         $s1,24($sp)
    sd         $s2,56($sp)
    move       $s2,$a0
    move       $s1,$a1
    sd         $s4,32($sp)
    move       $s4,$a2
    sd         $s5,8($sp)
    move       $s5,$a3
    sd         $s0,16($sp)
    b          .L0000331c
    move       $s0,$zero
.L00003314:
    bgez       $s3, .L000033ac
    addiu      $s0,$s0,1
.L0000331c:
    ld         $a3,32($s1)
    move       $a2,$s4
    lw         $a1,16($s1)
    move       $a0,$s2
    sh         $zero,20($s1)
    jal        odsy_2abSendCmd
    sltiu      $a3,$a3,1
    beqz       $v0, .L000033d4
    nop
    ld         $a4,32($s1)
    beqz       $a4, .L000033ac
    move       $s3,$zero
    move       $a0,$s2
    move       $a1,$s5
    jal        odsy_2abGetReply
    daddiu     $a2,$sp,0
    lw         $a5,0($sp)
    move       $s3,$v0
    bgtz       $v0, .L00003314
    sh         $a5,20($s1)
    lw         $t0,-30684($gp)
    li         $t1,1
    slt        $t0,$t0,$s0
    li         $s3,-5
    li         $a7,-145
    sltiu      $a6,$v0,1
    bnez       $t0, .L000033ac
    movn       $s3,$a7,$a6
    beqz       $s0, .L000033fc
    ld         $a0,16($s2)
    beq        $s0, $t1, .L000033ec
    nop
    jal        odsy_usdelay
    lw         $a1,-30700($gp)
    b          .L00003314
    nop
.L000033ac:
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s2,56($sp)
    ld         $ra,40($sp)
    move       $v0,$s3
    ld         $s3,48($sp)
    ld         $s4,32($sp)
    ld         $s5,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000033d4:
    bgtz       $s0, .L000033e4
    nop
    b          .L0000331c
    addiu      $s0,$s0,1
.L000033e4:
    b          .L000033ac
    li         $s3,-5
.L000033ec:
    jal        odsy_usdelay
    lw         $a1,-30704($gp)
    b          .L00003314
    nop
.L000033fc:
    jal        odsy_usdelay
    lw         $a1,-30708($gp)
    b          .L00003314
    nop

glabel odsy_2abSendCmd
    daddiu     $sp,$sp,-112
    sd         $a1,16($sp)
    addiu      $at,$a1,128
    sd         $a3,8($sp)
    andi       $at,$at,0xff
    sd         $at,24($sp)
    sd         $s3,72($sp)
    sd         $s6,80($sp)
    sd         $s4,88($sp)
    sd         $ra,96($sp)
    sd         $s1,48($sp)
    sd         $s7,56($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    move       $s7,$a2
    sd         $s2,32($sp)
    move       $s2,$zero
    move       $s1,$zero
    sd         $s5,104($sp)
.L00003458:
    addiu      $s1,$s1,1
.L0000345c:
    move       $s3,$zero
    slti       $v1,$s1,4
    move       $s4,$zero
    move       $s5,$zero
    bnez       $v1, .L000034dc
    move       $s6,$zero
    li         $a5,110
    li         $a0,3
    move       $s1,$zero
    li         $a1,240
    bne        $s2, $a0, .L000034ac
    li         $a3,4
    lbu        $a2,0($s7)
    bne        $a1, $a2, .L000034ac
    lbu        $a4,-30691($gp)
    xor        $a4,$a3,$a4
    sltiu      $a4,$a4,1
    movn       $a3,$a5,$a4
    b          .L00003458
    sb         $a3,-30691($gp)
.L000034ac:
    move       $v0,$zero
.L000034b0:
    ld         $s3,72($sp)
    ld         $s6,80($sp)
    ld         $s4,88($sp)
    ld         $s2,32($sp)
    ld         $s0,40($sp)
    ld         $ra,96($sp)
    ld         $s5,104($sp)
    ld         $s1,48($sp)
    ld         $s7,56($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000034dc:
    move       $a0,$s0
    lbu        $a1,-30691($gp)
    jal        odsy_i2c_start
    li         $a2,1
    beqz       $v0, .L00003540
    move       $a0,$s0
    addiu      $s2,$s2,1
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    li         $s3,1
.L00003504:
    bnez       $s3, .L00003458
    nop
    bnez       $s4, .L00003458
    nop
    bnez       $s5, .L00003458
    nop
    bnez       $s6, .L0000345c
    addiu      $s1,$s1,1
    ld         $a5,8($sp)
.L00003528:
    beqz       $a5, .L00003538
    nop
    jal        odsy_i2c_stop
    move       $a0,$s0
.L00003538:
    b          .L000034b0
    li         $v0,1
.L00003540:
    li         $a2,1
    lbu        $a1,-30692($gp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    beqz       $v0, .L00003568
    move       $a0,$s0
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003504
    li         $s4,1
.L00003568:
    li         $a2,1
    ld         $a1,24($sp)
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    beqz       $v0, .L00003590
    lbu        $t0,-30691($gp)
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003504
    li         $s5,1
.L00003590:
    lbu        $a7,-30692($gp)
    ld         $a6,24($sp)
    xor        $a7,$a7,$t0
    xor        $a6,$a6,$a7
    ld         $a7,16($sp)
    blez       $a7, .L0000360c
    andi       $a6,$a6,0xff
    move       $s6,$zero
    b          .L000035d8
    sd         $a6,64($sp)
.L000035b8:
    ld         $t1,16($sp)
    ld         $a7,0($sp)
    addiu      $s6,$s6,1
    slt        $t1,$s6,$t1
    xor        $a6,$a6,$a7
    andi       $a6,$a6,0xff
    beqz       $t1, .L0000360c
    sd         $a6,64($sp)
.L000035d8:
    daddu      $a1,$s6,$s7
    li         $a2,1
    move       $a0,$s0
    lbu        $a1,0($a1)
    move       $a3,$zero
    jal        odsy_i2c_sendbyte
    sd         $a1,0($sp)
    beqz       $v0, .L000035b8
    ld         $a6,64($sp)
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L0000345c
    addiu      $s1,$s1,1
.L0000360c:
    move       $a0,$s0
    move       $a1,$a6
    li         $a2,1
    jal        odsy_i2c_sendbyte
    move       $a3,$zero
    beqz       $v0, .L00003528
    ld         $a5,8($sp)
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003504
    li         $s6,1

glabel odsy_2abGetReply
    daddiu     $sp,$sp,-80
    sd         $a1,32($sp)
    sd         $s0,56($sp)
    move       $s0,$a0
    sd         $s2,48($sp)
    sd         $ra,64($sp)
    jal        odsy_i2c_stop
    move       $s2,$a2
    daddiu     $a3,$sp,0
    li         $a2,40
    li         $a1,1
    move       $a0,$s0
    jal        odsy_i2c_becomeSlaveRecv
    sw         $zero,0($s2)
    sd         $v0,40($sp)
    beqz       $v0, .L000036ac
    sd         $s1,72($sp)
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    ld         $v0,40($sp)
    li         $v1,2
    beq        $v0, $v1, .L000036f4
    li         $v0,-1
.L00003694:
    ld         $ra,64($sp)
    ld         $s2,48($sp)
    ld         $s0,56($sp)
    ld         $s1,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000036ac:
    lbu        $s1,0($sp)
    andi       $a0,$s1,0x1
    beqz       $a0, .L000036cc
    move       $a0,$s0
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003694
    li         $v0,-1
.L000036cc:
    li         $a1,1
    li         $a2,1
    jal        odsy_i2c_slave_recvbyte
    daddiu     $a3,$sp,0
    beqz       $v0, .L000036fc
    daddiu     $a3,$sp,0
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003694
    li         $v0,-1
.L000036f4:
    b          .L00003694
    move       $v0,$zero
.L000036fc:
    li         $a2,128
    lbu        $a4,0($sp)
    li         $a1,1
    move       $a0,$s0
    jal        odsy_i2c_slave_recvbyte
    xor        $s1,$a4,$s1
    beqz       $v0, .L0000372c
    lbu        $v0,0($sp)
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003694
    li         $v0,-1
.L0000372c:
    xor        $s1,$s1,$v0
    andi       $v0,$v0,0x7f
    andi       $s1,$s1,0xff
    sd         $v0,16($sp)
    blez       $v0, .L000037a0
    andi       $v0,$v0,0xffff
    sd         $zero,24($sp)
    sd         $v0,8($sp)
.L0000374c:
    move       $a0,$s0
    li         $a1,1
    ld         $a2,8($sp)
    jal        odsy_i2c_slave_recvbyte
    daddiu     $a3,$sp,0
    bnez       $v0, .L000037cc
    lbu        $a2,0($sp)
    ld         $a3,32($sp)
    ld         $a0,24($sp)
    ld         $a1,16($sp)
    daddu      $a3,$a0,$a3
    addiu      $a0,$a0,1
    sd         $a0,24($sp)
    sb         $a2,0($a3)
    xor        $s1,$s1,$a2
    slt        $a0,$a0,$a1
    lw         $v1,0($s2)
    andi       $s1,$s1,0xff
    addiu      $v1,$v1,1
    bnez       $a0, .L0000374c
    sw         $v1,0($s2)
.L000037a0:
    move       $a0,$s0
    daddiu     $a3,$sp,0
    li         $a2,1
    jal        odsy_i2c_slave_recvbyte
    li         $a1,1
    beqz       $v0, .L000037dc
    lw         $a1,-30696($gp)
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003694
    li         $v0,-1
.L000037cc:
    jal        odsy_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00003694
    li         $v0,-1
.L000037dc:
    jal        odsy_usdelay
    ld         $a0,16($s0)
    lbu        $a4,0($sp)
    beq        $a4, $s1, .L000037f8
    nop
    b          .L00003694
    li         $v0,-1
.L000037f8:
    b          .L00003694
    lw         $v0,0($s2)
