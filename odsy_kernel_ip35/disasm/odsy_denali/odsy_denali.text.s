.section .text
.set noat
.set noreorder


glabel odsy_probeDenaliChannel
    daddiu     $sp,$sp,-1120
    sd         $s4,1088($sp)
    sd         $s3,1072($sp)
    move       $v0,$a3
    sd         $s1,1080($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s2,1064($sp)
    move       $s2,$a2
    beqz       $a3, .L0000014c
    sd         $s0,1096($sp)
    lhu        $at,298($a0)
    li         $v1,3
    bne        $at, $v1, .L00000140
    lui        $s4,0x1
    daddu      $s4,$a0,$s4
    lw         $a0,-19420($s4)
    sd         $a3,1056($sp)
    li         $s0,0xb408
    sd         $ra,1104($sp)
    beqz       $a0, .L000002b0
    daddu      $s0,$s1,$s0
    ld         $a0,16($s0)
    li         $a1,25
    li         $a2,0x8520
    jal        mutex_lock
    daddu      $a0,$a0,$a2
    daddiu     $a2,$sp,0
.L00000070:
    li         $a1,5
    move       $a0,$s0
    li         $a3,31
    jal        odsy_i2cDDCRegRead
    sb         $a3,-19416($s4)
    beqz       $s3, .L00000278
    sb         $v0,0($sp)
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lbu        $a2,0($sp)
    li         $a1,5
    move       $a0,$s0
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    sw         $zero,4($sp)
.L000000bc:
    li         $a3,239
    sb         $a3,32($s0)
    move       $s4,$zero
.L000000c8:
    move       $a0,$s0
    daddiu     $a1,$sp,8
    jal        odsy_i2c_read_denali
    daddiu     $a2,$sp,4
    beqz       $v0, .L00000188
    nop
.L000000e0:
    jal        odsy_i2c_stop
    move       $a0,$s0
    ld         $a4,1056($sp)
    beqz       $a4, .L00000104
    nop
    lhu        $a5,298($s1)
    li         $a6,3
    beq        $a5, $a6, .L000002fc
    li         $a2,48
.L00000104:
    lw         $a7,28($s0)
.L00000108:
    beqz       $a7, .L000002cc
    ld         $v0,16($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
.L0000011c:
    ld         $ra,1104($sp)
    move       $v0,$zero
.L00000124:
    ld         $s2,1064($sp)
    ld         $s3,1072($sp)
    ld         $s4,1088($sp)
    ld         $s0,1096($sp)
    ld         $s1,1080($sp)
    jr         $ra
    daddiu     $sp,$sp,1120
.L00000140:
    sw         $zero,0($a2)
    b          .L00000124
    move       $v0,$zero
.L0000014c:
    lui        $s4,0x1
    daddu      $s4,$a0,$s4
    lw         $a1,-19460($s4)
    sd         $a3,1056($sp)
    li         $s0,0xb3e0
    sd         $ra,1104($sp)
    beqz       $a1, .L000002e0
    daddu      $s0,$a0,$s0
    ld         $a0,16($s0)
    li         $a1,25
    li         $a2,0x8520
    jal        mutex_lock
    daddu      $a0,$a0,$a2
    b          .L000000bc
    sw         $zero,4($sp)
.L00000188:
    jal        odsy_i2c_stop
    move       $a0,$s0
    li         $a1,100
    jal        odsy_usdelay
    ld         $a0,16($s0)
    addiu      $s4,$s4,1
    slti       $a3,$s4,101
    beqz       $a3, .L00000320
    lw         $v0,4($sp)
    bnez       $v0, .L000000c8
    li         $a2,1
    move       $a0,$s0
    li         $a1,238
    jal        odsy_i2c_start
    sb         $a1,32($s0)
    bnez       $v0, .L000000e0
    li         $a2,3
    li         $a5,64
    sb         $a5,1034($sp)
    daddiu     $a1,$sp,1032
    move       $a0,$s0
    sb         $zero,1033($sp)
    li         $a4,2
    jal        odsy_i2c_write_denali
    sb         $a4,1032($sp)
    bnez       $v0, .L000000e0
    nop
    jal        odsy_i2c_stop
    move       $a0,$s0
    bnez       $v0, .L000000e0
    li         $a1,300
    jal        odsy_usdelay
    ld         $a0,16($s0)
    move       $s4,$zero
    li         $a6,239
    sb         $a6,32($s0)
.L00000218:
    move       $a0,$s0
    daddiu     $a2,$sp,4
    jal        odsy_i2c_read_denali
    daddiu     $a1,$sp,8
    bnez       $v0, .L000000e0
    lw         $a7,4($sp)
    li         $t0,10
    beq        $a7, $t0, .L00000258
    li         $t2,10
    move       $a1,$t0
    jal        odsy_usdelay
    ld         $a0,16($s0)
    addiu      $s4,$s4,1
    slti       $t1,$s4,10
    bnez       $t1, .L00000218
    li         $t2,10
.L00000258:
    beq        $s4, $t2, .L000000e0
    ld         $t3,1056($sp)
    beqz       $t3, .L00000318
    li         $a4,4
    sll        $t8,$s3,0x1
    ori        $t8,$t8,0x1
    b          .L000000e0
    sw         $t8,0($s2)
.L00000278:
    move       $a0,$s0
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,16
    lbu        $a2,0($sp)
    move       $a0,$s0
    li         $a3,-33
    li         $a1,5
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    b          .L000000bc
    sw         $zero,4($sp)
.L000002b0:
    ld         $a0,-19432($s4)
    li         $a1,25
    li         $a2,0x8510
    jal        mutex_lock
    daddu      $a0,$a0,$a2
    b          .L00000070
    daddiu     $a2,$sp,0
.L000002cc:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L0000011c
    nop
.L000002e0:
    ld         $a0,-19472($s4)
    li         $a1,25
    li         $a2,0x8510
    jal        mutex_lock
    daddu      $a0,$a0,$a2
    b          .L000000bc
    sw         $zero,4($sp)
.L000002fc:
    move       $a1,$zero
    move       $a0,$s0
    li         $a3,31
    jal        odsy_i2cPLLRegWrite
    sb         $a3,32($s0)
    b          .L00000108
    lw         $a7,28($s0)
.L00000318:
    b          .L000000e0
    sw         $a4,0($s2)
.L00000320:
    li         $a0,4
    ld         $a1,-30720($gp)
    jal        cmn_err
    move       $a2,$s3
    b          .L000000e0
    nop

glabel odsy_ProbeDenali
    sw         $zero,0($a1)
    daddiu     $sp,$sp,-32
    move       $at,$a1
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $a1,0($sp)
    move       $a1,$zero
    sd         $s0,8($sp)
    move       $s0,$a2
    move       $a2,$at
    sd         $ra,24($sp)
    jal        odsy_probeDenaliChannel
    move       $a3,$s0
    beqz       $s0, .L00000388
    ld         $ra,24($sp)
    li         $v1,3
    lhu        $v0,298($s1)
    beq        $v0, $v1, .L0000039c
    move       $a0,$s1
    ld         $ra,24($sp)
.L00000388:
    move       $v0,$zero
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000039c:
    li         $a1,1
    ld         $a2,0($sp)
    jal        odsy_probeDenaliChannel
    move       $a3,$s0
    b          .L00000388
    ld         $ra,24($sp)
