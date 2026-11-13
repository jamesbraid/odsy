.section .text
.set noat
.set noreorder


glabel gfx_flow_pipe_head
    lh         $v1,-15320($zero)
    ld         $v0,-30720($gp)
    dsll       $v1,$v1,0x4
    daddu      $v0,$v0,$v1
    ld         $v0,8($v0)
    lbu        $v0,1320($v0)
    jr         $ra
    andi       $v0,$v0,0x1

glabel gfx_flow_clean_up_other_gfxp
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    sd         $s2,24($sp)
    sd         $s1,0($sp)
    sd         $ra,8($sp)
    jal        curthreadhandle
    move       $s1,$a0
    jal        gthread_find_gfxp
    move       $a0,$v0
    bnez       $v0, .L00000060
    move       $s0,$v0
    b          .L000000a8
    ld         $ra,8($sp)
.L00000054:
    ld         $s0,24($s0)
    beqz       $s0, .L000000a8
    ld         $ra,8($sp)
.L00000060:
    beq        $s1, $s0, .L00000054
    nop
    lw         $at,4($s0)
    andi       $at,$at,0x1
    beqz       $at, .L00000054
    nop
    jal        splhi
    nop
    move       $s2,$v0
    ld         $v0,32($s0)
    ld         $v0,104($v0)
    jalr       $v0
    move       $a0,$s0
    jal        splx
    move       $a0,$s2
    ld         $s0,24($s0)
    bnez       $s0, .L00000060
    ld         $ra,8($sp)
.L000000a8:
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsy_flow_await_returned_credits
    ld         $v0,72($a0)
    daddiu     $sp,$sp,-80
    lw         $at,816($a0)
    sd         $ra,56($sp)
    sd         $s0,64($sp)
    move       $s0,$a0
    beqz       $at, .L000000ec
    sd         $v0,40($sp)
.L000000dc:
    ld         $ra,56($sp)
.L000000e0:
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000000ec:
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($a0)
    sd         $v0,32($sp)
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    ld         $v1,32($sp)
    sltu       $v1,$v0,$v1
    li         $a0,25000
    beqz       $v1, .L00000154
    sd         $a0,48($sp)
.L00000114:
    lw         $a0,104($s0)
    bnez       $a0, .L000000dc
    ld         $a1,48($sp)
    blez       $a1, .L00000180
    ld         $a1,-30712($gp)
    jal        us_delay
    li         $a0,1
    ld         $a2,48($sp)
    ld         $a0,808($s0)
    addiu      $a2,$a2,-1
    jal        gfx_flow_credit_count_get
    sd         $a2,48($sp)
    ld         $a3,32($sp)
    sltu       $a3,$v0,$a3
    bnez       $a3, .L00000114
    nop
.L00000154:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,24($sp)
    jal        gfx_flow_credit_total_get
    ld         $a0,808($s0)
    ld         $a4,24($sp)
    sltu       $a4,$v0,$a4
    beqz       $a4, .L000000e0
    ld         $ra,56($sp)
    b          .L0000028c
    ld         $a1,-30712($gp)
.L00000180:
    jal        cmn_err
    li         $a0,6
.L00000188:
    jal        splhi
    nop
    sd         $v0,16($sp)
    lui        $t0,0x1
    ld         $a1,40($sp)
    daddu      $t0,$s0,$t0
    li         $a6,1
    sw         $a6,-31288($t0)
    ld         $a7,824($s0)
    sd         $t0,8($sp)
    sw         $a6,4220($a7)
    sync
    ld         $a5,824($s0)
    ld         $a0,808($s0)
    lw         $a5,4220($a5)
    jal        gfx_flow_detach_me
    sw         $a5,0($sp)
    jal        odsy_teardown
    move       $a0,$s0
    b          .L000001e8
    ld         $a4,824($s0)
.L000001dc:
    jal        us_delay
    li         $a0,5
    ld         $a4,824($s0)
.L000001e8:
    lw         $t1,4204($a4)
    srl        $t1,$t1,0x7
    andi       $t1,$t1,0x1ff
    bnez       $t1, .L000001dc
    nop
    sw         $zero,4228($a4)
    sync
    ld         $t8,824($s0)
    li         $t3,1
    sw         $t3,4228($t8)
    sync
    ld         $t2,824($s0)
    sw         $zero,4228($t2)
    sync
    jal        gfx_flow_reset
    ld         $a0,808($s0)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    ld         $a1,40($sp)
    ld         $ra,8($sp)
    ld         $v1,-30720($gp)
    lw         $at,-31292($ra)
    lw         $v0,-19376($ra)
    sll        $v0,$v0,0xc
    and        $at,$at,$v1
    or         $at,$at,$v0
    sw         $at,-31292($ra)
    ld         $v0,824($s0)
    sw         $at,4212($v0)
    sync
    sw         $zero,-31288($ra)
    ld         $t9,824($s0)
    sw         $zero,4220($t9)
    sync
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        splx
    ld         $a0,16($sp)
    b          .L000000e0
    ld         $ra,56($sp)
.L0000028c:
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,24
    b          .L00000188
    nop

glabel odsy_poll_dfifo_level
    daddiu     $sp,$sp,-48
    sd         $s3,24($sp)
    sd         $s2,0($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    move       $s2,$a1
    sd         $s0,8($sp)
    move       $s0,$zero
    b          .L000002e0
    sd         $ra,32($sp)
.L000002c8:
    jal        us_delay
    li         $a0,5
    addiu      $s0,$s0,1
    slti       $at,$s0,10000
    beqz       $at, .L00000310
    nop
.L000002e0:
    lw         $s3,4204($s1)
    andi       $s3,$s3,0x7f
    sltu       $s3,$s2,$s3
    bnez       $s3, .L000002c8
    move       $v0,$zero
.L000002f4:
    ld         $s2,0($sp)
    ld         $ra,32($sp)
    ld         $s3,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000310:
    beqz       $s3, .L000002f4
    move       $v0,$zero
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,56
    b          .L000002f4
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
    li         $s4,0xb458
    move       $s0,$a0
    ld         $s5,824($a0)
    daddu      $s4,$a0,$s4
    sd         $ra,0($sp)
    jal        mutex_spinlock
    move       $a0,$s4
    lw         $t8,104($s0)
    sd         $s2,32($sp)
    move       $s3,$v0
    beqz       $t8, .L000003c8
    sd         $s1,48($sp)
    move       $a0,$s4
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L000004ac
    ld         $s2,32($sp)
.L000003c8:
    lw         $t9,816($s0)
    bnez       $t9, .L00000510
    ld         $a1,-30712($gp)
    jal        gfx_waitf_on
    nop
    li         $s1,10
.L000003e0:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s2,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $ra,$s2,$v0
    beqz       $ra, .L000004cc
    nop
    jal        us_delay
    li         $a0,1
    addiu      $s1,$s1,-1
    bgtz       $s1, .L000003e0
    nop
    lh         $v1,-15320($zero)
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
    bltz       $a2, .L00000500
.L00000480:
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
.L000004ac:
    ld         $s3,40($sp)
    ld         $s4,8($sp)
    ld         $ra,0($sp)
    ld         $s0,16($sp)
    ld         $s1,48($sp)
    ld         $s5,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000004cc:
    lh         $a7,-15320($zero)
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
    b          .L000004ac
    ld         $s2,32($sp)
.L00000500:
    sw         $v0,4116($s5)
    sync
    b          .L00000480
    nop
.L00000510:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,80
    lh         $a4,-15320($zero)
    ld         $a3,-30720($gp)
    dsll       $a4,$a4,0x4
    daddu      $a3,$a3,$a4
    ld         $a3,8($a3)
    lbu        $a3,1320($a3)
    andi       $a3,$a3,0x1
    sll        $a2,$a3,0x2
    addu       $a2,$a2,$a3
    ld         $a3,-30712($gp)
    sll        $a2,$a2,0x3
    daddu      $a2,$a2,$a3
    sd         $zero,784($a2)
    jal        gfx_flow_pipe_head
    ld         $a0,808($s0)
    ld         $a7,-30704($gp)
    ld         $a5,-30696($gp)
    addiu      $a6,$v0,1
    sd         $a6,0($a7)
    move       $a0,$s4
    ld         $a5,0($a5)
    sync
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L000004ac
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
    li         $a0,0xb458
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
    beqz       $a1, .L00000644
    lw         $a3,-19364($a3)
    beqz       $a3, .L00000660
.L00000638:
    ld         $ra,8($sp)
.L0000063c:
    jr         $ra
    daddiu     $sp,$sp,16
.L00000644:
    beqz       $a3, .L0000063c
    ld         $ra,8($sp)
    jal        untimeout
    move       $a0,$a3
    ld         $a4,0($sp)
    b          .L00000638
    sw         $zero,-19364($a4)
.L00000660:
    li         $a2,1500
    move       $a1,$a0
    jal        timeout
    ld         $a0,-30704($gp)
    ld         $a5,0($sp)
    b          .L00000638
    sw         $v0,-19364($a5)

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
    ld         $a1,-30712($gp)
    li         $a0,4
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    daddiu     $a1,$a1,136
    jal        cmn_err
    lh         $a2,790($s0)
    ld         $ra,0($sp)
    li         $a4,0xb45c
    daddu      $a4,$a4,$s0
    ld         $s0,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    sw         $zero,0($a4)
