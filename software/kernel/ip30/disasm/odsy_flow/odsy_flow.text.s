.section .text
.set noat
.set noreorder


glabel odsy_poll_dfifo_level
    daddiu     $sp,$sp,-48
    sd         $s3,24($sp)
    sd         $s2,0($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    move       $s2,$a1
    sd         $s0,8($sp)
    move       $s0,$zero
    b          .L00000040
    sd         $ra,32($sp)
.L00000028:
    jal        us_delay
    li         $a0,5
    addiu      $s0,$s0,1
    slti       $at,$s0,10000
    beqz       $at, .L00000070
    nop
.L00000040:
    lw         $s3,4204($s1)
    andi       $s3,$s3,0x7f
    sltu       $s3,$s2,$s3
    bnez       $s3, .L00000028
    move       $v0,$zero
.L00000054:
    ld         $s2,0($sp)
    ld         $ra,32($sp)
    ld         $s3,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000070:
    beqz       $s3, .L00000054
    move       $v0,$zero
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    b          .L00000054
    li         $v0,1

glabel odsy_flow_am_i_attached
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    sd         $v0,16($sp)
    jal        gfx_flow_am_i_attached
    move       $a0,$s8
    move       $s8,$v0
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    move       $v0,$s8
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyHiwaterInterrupt
    daddiu     $sp,$sp,-64
    sd         $s3,40($sp)
    sd         $s5,24($sp)
    sd         $s0,16($sp)
    sd         $s4,8($sp)
    li         $s4,0xb440
    move       $s0,$a0
    ld         $s5,824($a0)
    daddu      $s4,$a0,$s4
    sd         $ra,0($sp)
    jal        mutex_spinlock
    move       $a0,$s4
    lw         $t8,104($s0)
    sd         $s2,32($sp)
    move       $s3,$v0
    beqz       $t8, .L00000124
    sd         $s1,48($sp)
    move       $a0,$s4
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L00000208
    ld         $s2,32($sp)
.L00000124:
    lw         $t9,816($s0)
    bnez       $t9, .L0000026c
    ld         $a1,-30720($gp)
    jal        gfx_waitf_on
    nop
    li         $s1,10
.L0000013c:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s2,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $ra,$s2,$v0
    beqz       $ra, .L00000228
    nop
    jal        us_delay
    li         $a0,1
    addiu      $s1,$s1,-1
    bgtz       $s1, .L0000013c
    nop
    lh         $v1,-15456($zero)
    ld         $v0,0($gp)
    dsll       $v1,$v1,0x5
    daddu      $v0,$v0,$v1
    lw         $at,24($v0)
    addiu      $at,$at,1
    jal        gfx_waitf_off
    sw         $at,24($v0)
    ld         $a1,72($s0)
    li         $s1,1
    sw         $s1,104($s0)
    ld         $a1,40($a1)
    lw         $a0,80($a1)
    addiu      $a0,$a0,1
    jal        force_resched
    sw         $a0,80($a1)
    li         $a1,1
    move       $a0,$s0
    jal        odsyFifoTimer
    sw         $s1,120($s0)
    li         $v0,512
    sw         $v0,4124($s5)
    sync
    ld         $a2,824($s0)
    lw         $a2,4196($a2)
    sll        $a2,$a2,0xe
    bltz       $a2, .L0000025c
.L000001dc:
    lui        $a4,0x1
    daddu      $a4,$s0,$a4
    lw         $a3,-31312($a4)
    ori        $a3,$a3,0x200
    sw         $a3,-31312($a4)
    move       $a0,$s4
    sw         $v0,4148($s5)
    sync
    jal        mutex_spinunlock
    move       $a1,$s3
    ld         $s2,32($sp)
.L00000208:
    ld         $s3,40($sp)
    ld         $s4,8($sp)
    ld         $ra,0($sp)
    ld         $s0,16($sp)
    ld         $s1,48($sp)
    ld         $s5,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000228:
    lh         $a7,-15456($zero)
    ld         $a6,0($gp)
    dsll       $a7,$a7,0x5
    daddu      $a6,$a6,$a7
    lw         $a5,28($a6)
    addiu      $a5,$a5,1
    jal        gfx_waitf_off
    sw         $a5,28($a6)
    move       $a0,$s4
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000208
    ld         $s2,32($sp)
.L0000025c:
    sw         $v0,4116($s5)
    sync
    b          .L000001dc
    nop
.L0000026c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,24
    jal        gfx_flow_pipe_head
    ld         $a0,808($s0)
    jal        heart_flow_control_disable
    move       $a0,$v0
    move       $a0,$s4
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000208
    ld         $s2,32($sp)

glabel odsyLowaterInterrupt
    daddiu     $sp,$sp,-32
    sd         $s8,16($sp)
    sd         $ra,8($sp)
    move       $a1,$zero
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        odsyFifoTimer
    ld         $s8,824($a0)
    lui        $a1,0x1
    daddu      $a1,$s0,$a1
    lw         $a0,-31312($a1)
    li         $a2,-513
    and        $a0,$a0,$a2
    sw         $a0,-31312($a1)
    li         $v1,512
    sw         $v1,4156($s8)
    sync
    ld         $v0,72($s0)
    ld         $v0,40($v0)
    li         $a0,0xb440
    lw         $at,80($v0)
    daddu      $a0,$s0,$a0
    sd         $a0,24($sp)
    addiu      $at,$at,-1
    jal        mutex_spinlock
    sw         $at,80($v0)
    ld         $s8,16($sp)
    sw         $zero,104($s0)
    move       $a1,$v0
    jal        mutex_spinunlock
    ld         $a0,24($sp)
    jal        force_resched
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyFifoTimer
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    lui        $a3,0x1
    daddu      $a3,$a0,$a3
    sd         $a3,0($sp)
    move       $a4,$a0
    beqz       $a1, .L00000360
    lw         $a3,-19388($a3)
    beqz       $a3, .L0000037c
    li         $a2,1500
.L00000354:
    ld         $ra,8($sp)
.L00000358:
    jr         $ra
    daddiu     $sp,$sp,16
.L00000360:
    beqz       $a3, .L00000358
    ld         $ra,8($sp)
    jal        untimeout
    move       $a0,$a3
    ld         $a4,0($sp)
    b          .L00000354
    sw         $zero,-19388($a4)
.L0000037c:
    move       $a1,$a0
    jal        timeout
    ld         $a0,-30712($gp)
    ld         $a5,0($sp)
    b          .L00000354
    sw         $v0,-19388($a5)

glabel odsyFifoTimeout
    daddiu     $sp,$sp,-16
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        odsy_teardown
    move       $s0,$a0
    sw         $zero,104($s0)
    jal        odsyDisableInterrupts
    move       $a0,$s0
    ld         $a3,72($s0)
    ld         $a3,40($a3)
    lw         $a2,80($a3)
    ld         $a1,-30720($gp)
    li         $a0,4
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    daddiu     $a1,$a1,80
    jal        cmn_err
    lh         $a2,790($s0)
    ld         $ra,0($sp)
    li         $a4,0xb444
    daddu      $a4,$a4,$s0
    ld         $s0,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    sw         $zero,0($a4)
