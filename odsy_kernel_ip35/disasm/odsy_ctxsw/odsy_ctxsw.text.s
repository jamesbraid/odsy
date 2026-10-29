.section .text
.set noat
.set noreorder


glabel odsy_ctxsw_timeout
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $ra,8($sp)
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,176
    lw         $a2,0($gp)
    beqz       $a2, .L00000048
    li         $a2,1500
    jal        odsy_teardown
    move       $a0,$s0
    ld         $ra,8($sp)
.L0000003c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000048:
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30712($gp)
    b          .L0000003c
    ld         $ra,8($sp)

glabel odsy_glget_timeout
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $ra,8($sp)
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,208
    lw         $a2,0($gp)
    beqz       $a2, .L000000a4
    li         $a2,1500
    jal        odsy_teardown
    move       $a0,$s0
    ld         $ra,8($sp)
.L00000098:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000000a4:
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30704($gp)
    b          .L00000098
    ld         $ra,8($sp)

glabel gf_OdsyPcxSwitch
    jr         $ra
    li         $v0,-1

glabel gfP_OdsySaveHwShadow
    daddiu     $sp,$sp,-144
    sd         $a2,56($sp)
    sd         $s0,88($sp)
    sw         $zero,0($a3)
    ld         $s0,40($a0)
    sd         $ra,120($sp)
    ld         $at,72($a0)
    sd         $s3,64($sp)
    ld         $at,112($at)
    sd         $s1,80($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s2,72($sp)
    move       $s2,$a3
    beqz       $at, .L00000524
    sd         $s4,128($sp)
    jal        RRM_CheckValidFault
    nop
    bltz       $v0, .L00000258
    li         $v0,14
    lw         $v0,816($s0)
    bnez       $v0, .L00000540
    ld         $v1,56($sp)
    bnez       $v1, .L000001e8
    nop
    beqz       $s3, .L000001e0
    li         $v0,22
    ld         $s4,112($s3)
    bnez       $s4, .L00000144
    ld         $s4,192($s4)
    li         $v0,22
    b          .L000001c0
    sw         $v0,0($s2)
.L00000144:
    ld         $a0,808($s0)
    ld         $t8,824($s0)
    jal        odsy_flow_am_i_attached
    sd         $t8,48($sp)
    beqz       $v0, .L000002e4
    move       $s3,$v0
    ld         $a0,-30712($gp)
.L00000160:
    sw         $zero,2300($s4)
    ld         $v0,48($sp)
    lui        $at,0x11
    ld         $ra,-30712($gp)
    ori        $at,$at,0x8000
    ld         $t9,-30704($gp)
    daddu      $at,$at,$v0
    li         $a2,1500
    sd         $ra,0($at)
    sync
    move       $a1,$s0
    jal        timeout
    ld         $t9,0($t9)
    lw         $v1,2300($s4)
    beqz       $v1, .L00000230
    nop
.L000001a0:
    jal        untimeout_wait
    move       $a0,$v0
    lw         $a0,816($s0)
    beqz       $a0, .L00000244
    nop
    beqz       $s3, .L00000260
    li         $v0,14
.L000001bc:
    sw         $v0,0($s2)
.L000001c0:
    ld         $s3,64($sp)
    ld         $s4,128($sp)
    ld         $ra,120($sp)
    ld         $s2,72($sp)
    ld         $s1,80($sp)
    ld         $s0,88($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L000001e0:
    b          .L000001c0
    sw         $v0,0($s2)
.L000001e8:
    ld         $a6,40($s1)
    lw         $a5,80($a6)
    addiu      $a5,$a5,1
    sw         $a5,80($a6)
    ld         $a0,40($s1)
    ld         $a4,32($s1)
    ld         $a1,8($a0)
    ld         $a4,120($a4)
    move       $a3,$a1
    jalr       $a4
    move       $a2,$a1
    ld         $a7,40($s1)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
    move       $v0,$zero
    b          .L000001c0
    sw         $zero,0($s2)
.L00000230:
    lw         $a7,816($s0)
    bnez       $a7, .L000001a0
    sd         $v0,112($sp)
    b          .L00000334
    nop
.L00000244:
    beqz       $s3, .L00000350
    nop
    sw         $zero,0($s2)
.L00000250:
    b          .L000001c0
    move       $v0,$zero
.L00000258:
    b          .L000001c0
    sw         $v0,0($s2)
.L00000260:
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s4,$v0
    beqz       $a0, .L000002c4
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000002c4
    nop
    lw         $t0,104($s0)
    beqz       $t0, .L000003d4
    li         $t8,0x85c8
.L00000294:
    daddu      $t8,$t8,$s0
    li         $t2,1
    sw         $t2,0($t8)
    ld         $t3,824($s0)
    sw         $t2,4220($t3)
    sync
    ld         $t1,824($s0)
    ld         $a0,808($s0)
    lw         $t1,4220($t1)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $t1,0($sp)
.L000002c4:
    lw         $t9,4($s1)
    move       $a0,$s3
    li         $ra,-3
    and        $t9,$t9,$ra
    jal        splx
    sw         $t9,4($s1)
    b          .L000001bc
    li         $v0,14
.L000002e4:
    jal        splhi
    nop
    lw         $at,4($s1)
    ori        $at,$at,0x2
    sw         $at,4($s1)
    ld         $a0,808($s0)
    sd         $v0,32($sp)
    beqz       $a0, .L00000318
    sd         $v0,40($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000494
    nop
.L00000318:
    jal        splx
    ld         $a0,40($sp)
    b          .L00000160
    ld         $a0,-30712($gp)
.L00000328:
    lw         $v1,816($s0)
    bnez       $v1, .L00000348
    nop
.L00000334:
    jal        us_delay
    li         $a0,1
    lw         $a0,2300($s4)
    beqz       $a0, .L00000328
    nop
.L00000348:
    b          .L000001a0
    ld         $v0,112($sp)
.L00000350:
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s4,$v0
    beqz       $a0, .L000003b4
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003b4
    nop
    lw         $a1,104($s0)
    beqz       $a1, .L00000434
    li         $a5,0x85c8
.L00000384:
    daddu      $a5,$a5,$s0
    li         $a3,1
    sw         $a3,0($a5)
    ld         $a4,824($s0)
    sw         $a3,4220($a4)
    sync
    ld         $a2,824($s0)
    ld         $a0,808($s0)
    lw         $a2,4220($a2)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $a2,4($sp)
.L000003b4:
    lw         $a6,4($s1)
    move       $a0,$s3
    li         $a7,-3
    and        $a6,$a6,$a7
    jal        splx
    sw         $a6,4($s1)
    b          .L00000250
    sw         $zero,0($s2)
.L000003d4:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,24($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $t0,24($sp)
    sltu       $t0,$t0,$v0
    beqz       $t0, .L00000294
    li         $t8,0x85c8
    jal        rt_pin_thread
    nop
    move       $s3,$v0
    jal        splx
    move       $a0,$s4
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    sd         $s3,104($sp)
    jal        splhi
    ld         $s4,104($sp)
    move       $s3,$v0
    jal        rt_unpin_thread
    move       $a0,$s4
    b          .L00000294
    li         $t8,0x85c8
.L00000434:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,16($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $t1,16($sp)
    sltu       $t1,$t1,$v0
    beqz       $t1, .L00000384
    li         $a5,0x85c8
    jal        rt_pin_thread
    nop
    move       $s3,$v0
    jal        splx
    move       $a0,$s4
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    sd         $s3,96($sp)
    jal        splhi
    ld         $s4,96($sp)
    move       $s3,$v0
    jal        rt_unpin_thread
    move       $a0,$s4
    b          .L00000384
    li         $a5,0x85c8
.L00000494:
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    lui        $t3,0x1
    ld         $ra,-30720($gp)
    daddu      $t3,$s0,$t3
    lw         $t8,-31292($t3)
    lw         $t9,-19376($t3)
    sll        $t9,$t9,0xc
    and        $t8,$t8,$ra
    or         $t8,$t8,$t9
    sw         $t8,-31292($t3)
    ld         $t9,824($s0)
    sw         $t8,4212($t9)
    sync
    sw         $zero,-31288($t3)
    ld         $t2,824($s0)
    sw         $zero,4220($t2)
    sync
    jal        splx
    ld         $a0,32($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,40($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000318
    nop
.L00000524:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,240
    li         $v0,1
    b          .L000001c0
    sw         $v0,0($s2)
.L00000540:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,296
    li         $v0,14
    b          .L000001c0
    sw         $v0,0($s2)

glabel gf_OdsyPcxSwap
    daddiu     $sp,$sp,-128
    sd         $s3,80($sp)
    sd         $s4,88($sp)
    sd         $ra,96($sp)
    sd         $s1,104($sp)
    sd         $s7,112($sp)
    sd         $s5,56($sp)
    lw         $at,816($a0)
    sd         $s0,64($sp)
    move       $s0,$a0
    move       $s5,$a1
    sd         $s2,48($sp)
    move       $s2,$a2
    bnez       $at, .L00000bf4
    sd         $s6,120($sp)
    jal        gfx_waitc_on
    nop
    bnez       $s2, .L000005c4
    move       $s1,$zero
    li         $s3,127
    beqz       $s5, .L000005dc
    move       $v0,$zero
.L000005b8:
    ld         $s4,112($s5)
    b          .L000005e4
    ld         $s6,192($s4)
.L000005c4:
    jal        gfx_flow_clean_up_other_gfxp
    ld         $a0,64($s2)
    ld         $s1,112($s2)
    ld         $v0,192($s1)
    bnez       $s5, .L000005b8
    lw         $s3,0($s1)
.L000005dc:
    move       $s4,$zero
    move       $s6,$zero
.L000005e4:
    ld         $a0,808($s0)
    ld         $s5,72($s0)
    sd         $v0,32($sp)
    ld         $v1,824($s0)
    jal        odsy_flow_am_i_attached
    sd         $v1,40($sp)
    beqz       $v0, .L00000a48
    move       $s7,$v0
.L00000604:
    beqz       $s4, .L0000068c
    li         $a2,1500
    dsll       $a0,$s3,0x10
    li         $a1,-1
    dsrl32     $a1,$a1,0x0
    ori        $a0,$a0,0x1
    ld         $a4,40($sp)
    and        $a0,$a0,$a1
    lui        $a1,0x11
    li         $a3,7
    ori        $a1,$a1,0x8000
    sw         $zero,2300($s6)
    dsll32     $a3,$a3,0x8
    daddu      $a1,$a1,$a4
    or         $a0,$a0,$a3
    sd         $a0,0($a1)
    sync
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30712($gp)
    lw         $a1,2300($s6)
    beqz       $a1, .L00000834
    nop
.L00000660:
    jal        untimeout_wait
    move       $a0,$v0
    lw         $a2,816($s0)
    beqz       $a2, .L00000848
    nop
    beqz       $s7, .L0000098c
    nop
.L0000067c:
    jal        gfx_waitc_off
    nop
    b          .L00000808
    li         $v0,-1
.L0000068c:
    move       $s6,$zero
.L00000690:
    beqz       $s1, .L000007f4
    nop
    jal        kvtophys
    ld         $a0,32($sp)
    lui        $a3,0x1
    daddu      $a3,$s0,$a3
    dsrl32     $a4,$v0,0x0
    sw         $v0,-31280($a3)
    andi       $a4,$a4,0xffff
    sw         $a4,-31284($a3)
    ld         $a5,824($s0)
    sw         $a4,16388($a5)
    sync
    ld         $a4,824($s0)
    move       $a0,$s0
    lw         $a3,-31280($a3)
    move       $a1,$s1
    sw         $a3,16396($a4)
    sync
    jal        odsyMMvalidatePcxSwap
    move       $a2,$s4
    lhu        $a4,4($s2)
    andi       $a4,$a4,0x2
    beqz       $a4, .L00000704
    move       $a1,$s2
    move       $a2,$zero
    ld         $a0,64($s2)
    jal        gf_OdsyValidateClip
    move       $a3,$zero
.L00000704:
    lw         $a5,564($s1)
    beqz       $a5, .L00000a14
    move       $a0,$s0
    lw         $a0,820($s0)
    li         $a6,127
    beq        $a0, $a6, .L00000a10
    nop
    beqz       $a0, .L00000a14
    move       $a0,$s0
    sll        $a1,$s3,0xc
    ld         $a5,864($s0)
    lui        $a2,0x7
    ld         $a3,-30696($gp)
    lui        $ra,0x1
    ori        $a2,$a2,0xf000
    ori        $a4,$ra,0x850
    sw         $a4,0($a5)
    and        $a1,$a1,$a2
    and        $a3,$s6,$a3
    ld         $a2,864($s0)
    or         $a1,$a1,$a3
    ori        $a1,$a1,0xf
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    sw         $zero,0($a0)
    ld         $v1,864($s0)
    ori        $v0,$ra,0x4400
    sw         $v0,0($v1)
    ld         $at,864($s0)
    sw         $zero,0($at)
    ld         $at,864($s0)
    ori        $ra,$ra,0x4001
    sw         $ra,0($at)
    ld         $t9,864($s0)
    li         $t8,1856
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    li         $t2,493
    sw         $t2,0($t3)
    ld         $t1,864($s0)
    li         $t0,1857
    sw         $t0,0($t1)
    ld         $a7,864($s0)
    sw         $zero,0($a7)
.L000007b4:
    beqz       $s3, .L000007f4
    sw         $zero,564($s1)
    lw         $a0,820($s0)
    beq        $a0, $s3, .L000007f4
    li         $a3,127
    beq        $a0, $a3, .L000007f0
    nop
    ld         $v0,28456($s0)
    dsll       $v1,$a0,0x3
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    ld         $v0,176($v0)
    beqz       $v0, .L000007f0
    nop
    sw         $zero,11060($v0)
.L000007f0:
    sw         $s3,820($s0)
.L000007f4:
    beqz       $s7, .L00000908
    nop
.L000007fc:
    jal        gfx_waitc_off
    nop
    move       $v0,$zero
.L00000808:
    ld         $s2,48($sp)
    ld         $s3,80($sp)
    ld         $s4,88($sp)
    ld         $s5,56($sp)
    ld         $s1,104($sp)
    ld         $ra,96($sp)
    ld         $s0,64($sp)
    ld         $s7,112($sp)
    ld         $s6,120($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00000834:
    lw         $a0,816($s0)
    bnez       $a0, .L00000660
    sd         $v0,72($sp)
    b          .L00000a98
    nop
.L00000848:
    lw         $a1,128($s6)
    andi       $a1,$a1,0xf
    sltiu      $a1,$a1,11
    beqz       $a1, .L00000874
    nop
    ld         $a4,864($s0)
    lui        $a3,0x1
    ori        $a3,$a3,0x444
    sw         $a3,0($a4)
    ld         $a2,864($s0)
    sw         $zero,0($a2)
.L00000874:
    ld         $t9,864($s0)
    lui        $a6,0x1
    ori        $t8,$a6,0x443
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    li         $t2,250
    sw         $t2,0($t3)
    ld         $t1,864($s0)
    ori        $a7,$a6,0x46
    sw         $a7,0($t1)
    ld         $t0,864($s0)
    sw         $a7,0($t0)
    ld         $a7,864($s0)
    ori        $a6,$a6,0x850
    sw         $a6,0($a7)
    ld         $a6,864($s0)
    lui        $a5,0x7
    ori        $a5,$a5,0xf00f
    sw         $a5,0($a6)
    ld         $a4,864($s0)
    sw         $zero,0($a4)
    ld         $v0,176($s4)
    beqz       $v0, .L00000900
    lui        $s6,0x7
    lw         $ra,0($s4)
    beqz       $ra, .L000008fc
    li         $a3,1
    lw         $a1,11064($v0)
    move       $a0,$s0
    move       $a4,$s5
    jal        odsyDownloadUcode
    move       $a2,$a1
    bnez       $v0, .L00000c10
    ld         $a1,-30720($gp)
.L000008fc:
    lui        $s6,0x7
.L00000900:
    b          .L00000690
    ori        $s6,$s6,0xf00f
.L00000908:
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s2,$v0
    beqz       $a0, .L0000096c
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000096c
    nop
    lw         $t8,104($s0)
    beqz       $t8, .L00000ab4
    li         $v0,0x85c8
.L0000093c:
    daddu      $v0,$v0,$s0
    li         $ra,1
    sw         $ra,0($v0)
    ld         $at,824($s0)
    sw         $ra,4220($at)
    sync
    ld         $t9,824($s0)
    ld         $a0,808($s0)
    lw         $t9,4220($t9)
    move       $a1,$s5
    jal        gfx_flow_detach_me
    sw         $t9,4($sp)
.L0000096c:
    lw         $v1,4($s5)
    li         $a0,-3
    and        $v1,$v1,$a0
    sw         $v1,4($s5)
    jal        splx
    move       $a0,$s1
    b          .L000007fc
    nop
.L0000098c:
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s2,$v0
    beqz       $a0, .L000009f0
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000009f0
    nop
    lw         $a1,104($s0)
    beqz       $a1, .L00000b0c
    li         $a5,0x85c8
.L000009c0:
    daddu      $a5,$a5,$s0
    li         $a3,1
    sw         $a3,0($a5)
    ld         $a4,824($s0)
    sw         $a3,4220($a4)
    sync
    ld         $a2,824($s0)
    ld         $a0,808($s0)
    lw         $a2,4220($a2)
    move       $a1,$s5
    jal        gfx_flow_detach_me
    sw         $a2,0($sp)
.L000009f0:
    lw         $a6,4($s5)
    move       $a0,$s1
    li         $a7,-3
    and        $a6,$a6,$a7
    jal        splx
    sw         $a6,4($s5)
    b          .L0000067c
    nop
.L00000a10:
    move       $a0,$s0
.L00000a14:
    jal        odsyRestoreXform
    move       $a1,$s1
    move       $a0,$s0
    jal        odsyRestoreRaster
    move       $a1,$s1
    move       $a0,$s0
    jal        odsyRestoreGfe
    move       $a1,$s1
    move       $a0,$s0
    jal        odsyRestartContext
    move       $a1,$s1
    b          .L000007b4
    nop
.L00000a48:
    jal        splhi
    nop
    lw         $t0,4($s5)
    ori        $t0,$t0,0x2
    sw         $t0,4($s5)
    ld         $a0,808($s0)
    sd         $v0,16($sp)
    beqz       $a0, .L00000a7c
    sd         $v0,24($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000b64
    nop
.L00000a7c:
    jal        splx
    ld         $a0,24($sp)
    b          .L00000604
    nop
.L00000a8c:
    lw         $t2,816($s0)
    bnez       $t2, .L00000aac
    nop
.L00000a98:
    jal        us_delay
    li         $a0,1
    lw         $t3,2300($s6)
    beqz       $t3, .L00000a8c
    nop
.L00000aac:
    b          .L00000660
    ld         $v0,72($sp)
.L00000ab4:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s3,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $t8,$s3,$v0
    beqz       $t8, .L0000093c
    li         $v0,0x85c8
    jal        rt_pin_thread
    nop
    move       $s3,$v0
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    move       $s1,$v0
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L0000093c
    li         $v0,0x85c8
.L00000b0c:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s3,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $t9,$s3,$v0
    beqz       $t9, .L000009c0
    li         $a5,0x85c8
    jal        rt_pin_thread
    nop
    move       $s3,$v0
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    move       $s1,$v0
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L000009c0
    li         $a5,0x85c8
.L00000b64:
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s5
    lui        $at,0x1
    ld         $a0,-30720($gp)
    daddu      $at,$s0,$at
    lw         $v0,-31292($at)
    lw         $v1,-19376($at)
    sll        $v1,$v1,0xc
    and        $v0,$v0,$a0
    or         $v0,$v0,$v1
    sw         $v0,-31292($at)
    ld         $v1,824($s0)
    sw         $v0,4212($v1)
    sync
    sw         $zero,-31288($at)
    ld         $ra,824($s0)
    sw         $zero,4220($ra)
    sync
    jal        splx
    ld         $a0,16($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,24($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000a7c
    nop
.L00000bf4:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,360
    b          .L00000808
    li         $v0,-1
.L00000c10:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,424
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00000900
    lui        $s6,0x7

glabel odsyRestoreRaster
    ld         $a3,176($a1)
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s2,24($sp)
    lw         $a4,0($a1)
    sd         $s3,40($sp)
    sd         $s4,48($sp)
    sltu       $t3,$zero,$a4
    move       $a7,$zero
    sd         $s0,32($sp)
    move       $s0,$a0
    beqz       $t3, .L00000c88
    sd         $a1,8($sp)
    lw         $v0,820($a0)
    beq        $v0, $a4, .L00000c88
    nop
    li         $a7,1
    b          .L00000c8c
    ld         $t1,864($s0)
.L00000c88:
    ld         $t1,864($s0)
.L00000c8c:
    ld         $a0,824($s0)
    lui        $a5,0x1
    ori        $s2,$a5,0x443
    sw         $s2,0($t1)
    ld         $t0,864($s0)
    li         $s3,250
    sw         $s3,0($t0)
    ld         $a6,864($s0)
    ori        $s1,$a5,0x46
    sw         $s1,0($a6)
    ld         $a4,864($s0)
    sw         $s1,0($a4)
    ld         $a2,864($s0)
    ori        $a1,$a5,0x19
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    sw         $s2,0($v1)
    ld         $v0,864($s0)
    li         $s4,150
    sw         $s4,0($v0)
    ld         $at,864($s0)
    sw         $s1,0($at)
    ld         $t9,864($s0)
    sw         $s1,0($t9)
    ld         $t8,864($s0)
    sw         $s1,0($t8)
    ld         $t2,864($s0)
    sw         $s1,0($t2)
    ld         $t1,864($s0)
    sw         $s2,0($t1)
    ld         $t0,864($s0)
    sw         $s3,0($t0)
    ld         $a6,864($s0)
    sw         $s1,0($a6)
    ld         $a4,864($s0)
    sw         $s1,0($a4)
    ld         $a2,864($s0)
    ori        $a1,$a5,0x1017
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    lw         $v0,6948($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,6952($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,6956($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,6960($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    sw         $s2,0($a6)
    ld         $a4,864($s0)
    sw         $s4,0($a4)
    ld         $a2,864($s0)
    sw         $s1,0($a2)
    ld         $a1,864($s0)
    sw         $s1,0($a1)
    ld         $v1,864($s0)
    sw         $s1,0($v1)
    ld         $v0,864($s0)
    sw         $s1,0($v0)
    ld         $at,864($s0)
    sw         $s2,0($at)
    ld         $t9,864($s0)
    sw         $s3,0($t9)
    ld         $t8,864($s0)
    sw         $s1,0($t8)
    ld         $t2,864($s0)
    sw         $s1,0($t2)
    ld         $t1,864($s0)
    ori        $t0,$a5,0x1023
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a4,232($a3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,236($a3)
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    lw         $v0,240($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,244($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    sw         $s2,0($t8)
    ld         $t2,864($s0)
    sw         $s3,0($t2)
    ld         $t1,864($s0)
    sw         $s1,0($t1)
    ld         $t0,864($s0)
    sw         $s1,0($t0)
    ld         $a6,864($s0)
    ori        $a4,$a5,0x452
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,228($a3)
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    ori        $v0,$a5,0x81d
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,168($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,172($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    sw         $s1,0($t1)
    ld         $t0,864($s0)
    sw         $s1,0($t0)
    ld         $a6,864($s0)
    sw         $s1,0($a6)
    ld         $a4,864($s0)
    ori        $a2,$a5,0x1453
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,6964($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,6968($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,6972($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,6976($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,6980($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    sw         $s2,0($a4)
    ld         $a2,864($s0)
    sw         $s3,0($a2)
    ld         $a1,864($s0)
    sw         $s1,0($a1)
    ld         $v1,864($s0)
    sw         $s1,0($v1)
    ld         $v0,864($s0)
    ori        $at,$a5,0x404
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,132($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    ori        $t1,$a5,0x405
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,136($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    ori        $a2,$a5,0x422
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,200($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    ori        $at,$a5,0x415
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,140($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    ori        $t1,$a5,0x456
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,7344($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    ori        $a2,$a5,0xc48
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,204($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,208($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,212($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    ori        $t1,$a5,0x43f
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,128($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    ori        $a2,$a5,0x3c4e
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,0($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,4($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,8($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,12($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,16($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    lw         $a2,20($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,24($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,28($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,32($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,36($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,40($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    lw         $a2,44($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,48($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,52($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,56($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,60($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    ori        $a6,$a5,0x3c4f
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    lw         $a2,64($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,68($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,72($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,76($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,80($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,84($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    lw         $a2,88($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,92($a3)
    sw         $v1,0($a1)
    ld         $v0,864($s0)
    lw         $at,96($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,100($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,104($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,108($a3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    lw         $a2,112($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $v1,116($a3)
    sw         $v1,0($a1)
    ld         $a6,864($s0)
    lw         $a4,120($a3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,124($a3)
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    ori        $v0,$a5,0x84a
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,220($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,224($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    ori        $t0,$a5,0x141b
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a4,312($a3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,316($a3)
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    lw         $v0,320($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,324($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,328($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    ori        $t0,$a5,0x1c16
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a4,332($a3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,336($a3)
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    lw         $v0,340($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,344($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,348($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,352($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a4,356($a3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    ori        $a1,$a5,0x451
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    lw         $v0,6944($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    ori        $t9,$a5,0x44c
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,7340($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    ori        $t0,$a5,0xc21
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a4,188($a3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,192($a3)
    sw         $a1,0($a2)
    ld         $v1,864($s0)
    lw         $v0,196($a3)
    move       $t9,$a5
    sw         $v0,0($v1)
    li         $at,1
    li         $t2,3
    lw         $a6,4464($a3)
    li         $t8,3
    li         $t1,2
    sd         $a0,0($sp)
    li         $t0,2
    ori        $a1,$a5,0x3c28
    ori        $a2,$a5,0x2030
    beq        $a6, $at, .L000021dc
    ld         $a4,864($s0)
    beq        $a6, $t1, .L0000271c
    nop
    beq        $a6, $t8, .L000026c0
    ori        $t1,$a5,0x83d
    sw         $a2,0($a4)
    ld         $a0,864($s0)
    lw         $v1,4468($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4472($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4476($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4480($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4484($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4488($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4492($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4496($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    ori        $v1,$a5,0x2031
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4500($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4504($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4508($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4512($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4516($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4520($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4524($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4528($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    ori        $at,$a5,0x2032
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4532($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4536($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4540($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4544($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4548($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4552($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4556($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4560($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    ori        $t1,$a5,0x2033
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4564($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4568($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4572($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4576($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4580($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4584($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4588($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4592($a3)
    sw         $t1,0($t8)
.L0000142c:
    lw         $a5,4204($a3)
    li         $a4,1
    beq        $a5, $a4, .L0000238c
    ld         $a4,864($s0)
    beq        $a5, $t0, .L00002788
    lui        $v0,0x1
    beq        $a5, $t2, .L000026e0
    lui        $a2,0x1
    sw         $a1,0($a4)
    ld         $a6,864($s0)
    lw         $a5,4208($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a0,4212($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4216($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4220($a3)
    sw         $t8,0($at)
    ld         $t2,864($s0)
    lw         $t1,4224($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4228($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4232($a3)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4236($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4240($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4244($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4248($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4252($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a0,4256($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4260($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4264($a3)
    sw         $t8,0($at)
    ld         $t2,864($s0)
    lw         $t1,4268($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    ori        $a6,$t9,0x3c29
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4272($a3)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4276($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4280($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4284($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4288($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4292($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a0,4296($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4300($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4304($a3)
    sw         $t8,0($at)
    ld         $t2,864($s0)
    lw         $t1,4308($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4312($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4316($a3)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4320($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4324($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4328($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4332($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    ori        $a5,$t9,0x3c2a
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a0,4336($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4340($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4344($a3)
    sw         $t8,0($at)
    ld         $t2,864($s0)
    lw         $t1,4348($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4352($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4356($a3)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4360($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4364($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4368($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4372($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4376($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a0,4380($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4384($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4388($a3)
    sw         $t8,0($at)
    ld         $t2,864($s0)
    lw         $t1,4392($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4396($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    ori        $a2,$t9,0x3c2b
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4400($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4404($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4408($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4412($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4416($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a0,4420($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4424($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4428($a3)
    sw         $t8,0($at)
    ld         $t2,864($s0)
    lw         $t1,4432($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4436($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4440($a3)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4444($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4448($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4452($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4456($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4460($a3)
    sw         $a5,0($a6)
.L00001774:
    beqz       $a7, .L00001f28
    lui        $v0,0x1
    ld         $t9,864($s0)
    lui        $t0,0x1
    ori        $t8,$t0,0x41e
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,176($a3)
    sw         $t1,0($t2)
    ld         $a7,864($s0)
    ori        $a6,$t0,0x41f
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a4,180($a3)
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    ori        $a1,$t0,0x420
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,184($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    ori        $at,$t0,0x458
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,216($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    ori        $t1,$t0,0x181a
    sw         $t1,0($t2)
    ld         $a7,864($s0)
    lw         $a6,144($a3)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a4,148($a3)
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    lw         $a1,152($a3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,156($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,160($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,164($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    ori        $t1,$t0,0x1847
    sw         $t1,0($t2)
    ld         $a7,864($s0)
    lw         $a6,7060($a3)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a4,7064($a3)
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    lw         $a1,7068($a3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,7072($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,7076($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,7080($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    ori        $t1,$t0,0x1013
    sw         $t1,0($t2)
    ld         $a7,864($s0)
    lw         $a6,7084($a3)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a4,7088($a3)
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    lw         $a1,7092($a3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,7096($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    ori        $at,$t0,0xc3e
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,4596($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,4600($a3)
    move       $a6,$zero
    sw         $t1,0($t2)
    move       $a5,$zero
    move       $a1,$t0
    ld         $t1,864($s0)
    move       $a0,$t0
    move       $t8,$t0
    lw         $a7,4604($a3)
    move       $t9,$t0
    ori        $t0,$t0,0x3e20
    sw         $a7,0($t1)
.L00001910:
    ld         $v0,864($s0)
    or         $at,$a6,$t0
    addiu      $a6,$a6,1
    move       $a4,$zero
    slti       $a7,$a6,16
    sw         $at,0($v0)
.L00001928:
    dsll       $a2,$a5,0x2
    addiu      $a4,$a4,1
    ld         $t1,864($s0)
    slti       $v1,$a4,16
    daddu      $a2,$a3,$a2
    lw         $a2,1132($a2)
    addiu      $a5,$a5,1
    sw         $a2,0($t1)
    beqz       $v1, .L00001970
    dsll       $t1,$a5,0x2
    addiu      $a4,$a4,1
    ld         $t2,864($s0)
    slti       $at,$a4,16
    daddu      $t1,$a3,$t1
    lw         $t1,1132($t1)
    addiu      $a5,$a5,1
    bnez       $at, .L00001928
    sw         $t1,0($t2)
.L00001970:
    bnez       $a7, .L00001910
    ori        $t2,$a1,0x3e30
    ori        $t0,$t8,0x3e00
    ori        $t1,$t8,0x3e10
    move       $a6,$zero
    move       $a5,$zero
.L00001988:
    ld         $v0,864($s0)
    or         $at,$a6,$t2
    addiu      $a6,$a6,1
    move       $a4,$zero
    slti       $a7,$a6,16
    sw         $at,0($v0)
.L000019a0:
    dsll       $a1,$a5,0x2
    addiu      $a4,$a4,1
    ld         $a2,864($s0)
    slti       $v1,$a4,16
    daddu      $a1,$a3,$a1
    lw         $a1,2156($a1)
    addiu      $a5,$a5,1
    sw         $a1,0($a2)
    beqz       $v1, .L000019e8
    dsll       $a2,$a5,0x2
    addiu      $a4,$a4,1
    ld         $at,864($s0)
    slti       $v0,$a4,16
    daddu      $a2,$a3,$a2
    lw         $a2,2156($a2)
    addiu      $a5,$a5,1
    bnez       $v0, .L000019a0
    sw         $a2,0($at)
.L000019e8:
    bnez       $a7, .L00001988
    nop
    ori        $t2,$a0,0x3e40
    move       $a6,$zero
    move       $a5,$zero
.L000019fc:
    ld         $at,864($s0)
    or         $a4,$a6,$t2
    addiu      $a6,$a6,1
    slti       $a7,$a6,16
    sw         $a4,0($at)
    move       $a4,$zero
.L00001a14:
    dsll       $v1,$a5,0x2
    addiu      $a4,$a4,1
    ld         $a0,864($s0)
    slti       $v0,$a4,16
    daddu      $v1,$a3,$v1
    lw         $v1,3180($v1)
    addiu      $a5,$a5,1
    sw         $v1,0($a0)
    beqz       $v0, .L00001a5c
    dsll       $a0,$a5,0x2
    addiu      $a4,$a4,1
    ld         $a1,864($s0)
    slti       $a2,$a4,16
    daddu      $a0,$a3,$a0
    lw         $a0,3180($a0)
    addiu      $a5,$a5,1
    bnez       $a2, .L00001a14
    sw         $a0,0($a1)
.L00001a5c:
    bnez       $a7, .L000019fc
    move       $a4,$zero
.L00001a64:
    ld         $a5,864($s0)
    dsll       $a1,$a4,0x6
    or         $a2,$a4,$t0
    sw         $a2,0($a5)
    daddu      $a1,$a3,$a1
    ld         $a7,864($s0)
    lw         $a6,4612($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a2,4616($a1)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4620($a1)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4624($a1)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4628($a1)
    sw         $t2,0($t8)
    ld         $a7,864($s0)
    lw         $a6,4632($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a2,4636($a1)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4640($a1)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4644($a1)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4648($a1)
    sw         $t2,0($t8)
    ld         $a7,864($s0)
    lw         $a6,4652($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a2,4656($a1)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,4660($a1)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4664($a1)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,4668($a1)
    sw         $t2,0($t8)
    ld         $a7,864($s0)
    lw         $a6,4672($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    or         $a2,$a4,$t1
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,5636($a1)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,5640($a1)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,5644($a1)
    sw         $t2,0($t8)
    ld         $a7,864($s0)
    lw         $a6,5648($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a2,5652($a1)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,5656($a1)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,5660($a1)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,5664($a1)
    sw         $t2,0($t8)
    ld         $a7,864($s0)
    lw         $a6,5668($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a2,5672($a1)
    sw         $a2,0($a5)
    ld         $a0,864($s0)
    lw         $v1,5676($a1)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,5680($a1)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t2,5684($a1)
    sw         $t2,0($t8)
    ld         $a7,864($s0)
    lw         $a6,5688($a1)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    lw         $a2,5692($a1)
    addiu      $a4,$a4,1
    sw         $a2,0($a5)
    slti       $a5,$a4,16
    ld         $a2,864($s0)
    lw         $a1,5696($a1)
    bnez       $a5, .L00001a64
    sw         $a1,0($a2)
    ori        $a5,$t9,0xe80
    move       $a4,$zero
.L00001c18:
    dsll       $a6,$a4,0x2
    ld         $t0,864($s0)
    dsubu      $a6,$a6,$a4
    dsll       $a6,$a6,0x2
    or         $a7,$a4,$a5
    sw         $a7,0($t0)
    daddu      $a6,$a3,$a6
    ld         $t2,864($s0)
    lw         $t1,360($a6)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a7,364($a6)
    addiu      $a4,$a4,1
    sw         $a7,0($t0)
    slti       $t0,$a4,64
    ld         $a7,864($s0)
    lw         $a6,368($a6)
    bnez       $t0, .L00001c18
    sw         $a6,0($a7)
    ld         $a4,864($s0)
    sw         $s2,0($a4)
    ld         $a2,864($s0)
    sw         $s3,0($a2)
    ld         $a1,864($s0)
    sw         $s1,0($a1)
    ld         $a0,864($s0)
    sw         $s1,0($a0)
    ld         $v1,864($s0)
    lui        $a6,0x1
    ori        $v0,$a6,0x406
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,1128($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    sw         $s2,0($t8)
    ld         $t2,864($s0)
    sw         $s3,0($t2)
    ld         $t1,864($s0)
    sw         $s1,0($t1)
    ld         $t0,864($s0)
    sw         $s1,0($t0)
    ld         $a7,864($s0)
    ori        $a5,$a6,0x18
    sw         $a5,0($a7)
    ld         $a4,864($s0)
    sw         $s2,0($a4)
    ld         $a2,864($s0)
    sw         $s3,0($a2)
    ld         $a1,864($s0)
    sw         $s1,0($a1)
    ld         $a0,864($s0)
    sw         $s1,0($a0)
    ld         $v1,864($s0)
    ori        $v0,$a6,0xc1c
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,6660($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,6664($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,6668($a3)
    sw         $t0,0($t1)
    ld         $a7,864($s0)
    ori        $a5,$a6,0x457
    sw         $a5,0($a7)
    ld         $a4,864($s0)
    lw         $a2,7348($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    ori        $a0,$a6,0x3c4d
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,248($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,252($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,256($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,260($a3)
    sw         $t0,0($t1)
    ld         $a7,864($s0)
    lw         $a5,264($a3)
    sw         $a5,0($a7)
    ld         $a4,864($s0)
    lw         $a2,268($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,272($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,276($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,280($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,284($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,288($a3)
    sw         $t0,0($t1)
    ld         $a7,864($s0)
    lw         $a5,292($a3)
    sw         $a5,0($a7)
    ld         $a4,864($s0)
    lw         $a2,296($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,300($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,304($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,308($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    sw         $s2,0($t8)
    ld         $t2,864($s0)
    sw         $s3,0($t2)
    ld         $t1,864($s0)
    sw         $s1,0($t1)
    ld         $t0,864($s0)
    sw         $s1,0($t0)
    ld         $a7,864($s0)
    ori        $a5,$a6,0x842
    sw         $a5,0($a7)
    ld         $a4,864($s0)
    lw         $a2,7332($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,7336($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    sw         $s2,0($v1)
    ld         $v0,864($s0)
    sw         $s4,0($v0)
    ld         $at,864($s0)
    sw         $s1,0($at)
    ld         $t9,864($s0)
    sw         $s1,0($t9)
    ld         $t8,864($s0)
    sw         $s1,0($t8)
    ld         $t2,864($s0)
    sw         $s1,0($t2)
    ld         $t1,864($s0)
    sw         $s2,0($t1)
    ld         $t0,864($s0)
    sw         $s3,0($t0)
    ld         $a7,864($s0)
    sw         $s1,0($a7)
    ld         $t0,864($s0)
    li         $a5,599
    li         $a4,7
    ori        $a7,$a6,0x1800
    ori        $a6,$a6,0x407
    sw         $s1,0($t0)
.L00001ea4:
    ld         $t2,864($s0)
    sw         $a6,0($t2)
    ld         $t1,864($s0)
    sw         $a4,0($t1)
    dsll       $t0,$a4,0x2
    ld         $t2,864($s0)
    dsubu      $t0,$t0,$a4
    dsll       $t0,$t0,0x3
    or         $t1,$a5,$a7
    sw         $t1,0($t2)
    daddu      $t0,$a3,$t0
    ld         $a2,864($s0)
    lw         $a1,7132($t0)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,7136($t0)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,7140($t0)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,7144($t0)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,7148($t0)
    sw         $t1,0($t2)
    addiu      $a4,$a4,-1
    ld         $t1,864($s0)
    lw         $t0,7152($t0)
    addiu      $a5,$a5,-1
    bgez       $a4, .L00001ea4
    sw         $t0,0($t1)
    lui        $v0,0x1
.L00001f28:
    beqz       $t3, .L00001f44
    sd         $ra,56($sp)
    ld         $a0,8($sp)
    jal        odsyPushBufferSelect
    ld         $a1,0($sp)
    b          .L00002154
    ld         $ra,56($sp)
.L00001f44:
    ori        $a7,$v0,0x204b
    ld         $t0,864($s0)
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    lw         $a5,11072($a3)
    sw         $a5,0($a6)
    ld         $a4,864($s0)
    lw         $a2,11076($a3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,11080($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $at,11084($a3)
    sw         $at,0($v1)
    ld         $t9,864($s0)
    lw         $t8,11088($a3)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    lw         $t2,11092($a3)
    sw         $t2,0($t3)
    ld         $t1,864($s0)
    lw         $t0,11096($a3)
    sw         $t0,0($t1)
    ld         $a7,864($s0)
    lw         $a6,11100($a3)
    sw         $a6,0($a7)
    ld         $a5,864($s0)
    ori        $a4,$v0,0x841
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    lw         $a1,11104($a3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,11108($a3)
    sw         $v1,0($a0)
    ld         $at,864($s0)
    sw         $s2,0($at)
    ld         $t9,864($s0)
    sw         $s3,0($t9)
    ld         $t8,864($s0)
    sw         $s1,0($t8)
    ld         $t3,864($s0)
    sw         $s1,0($t3)
    ld         $t8,864($s0)
    ori        $t2,$v0,0x19
    sw         $t2,0($t8)
    ld         $t3,864($s0)
    sw         $s2,0($t3)
    ld         $t1,864($s0)
    sw         $s4,0($t1)
    ld         $t0,864($s0)
    sw         $s1,0($t0)
    ld         $a7,864($s0)
    sw         $s1,0($a7)
    ld         $a6,864($s0)
    sw         $s1,0($a6)
    ld         $a5,864($s0)
    sw         $s1,0($a5)
    ld         $a4,864($s0)
    sw         $s2,0($a4)
    ld         $a2,864($s0)
    sw         $s3,0($a2)
    ld         $a1,864($s0)
    sw         $s1,0($a1)
    ld         $a0,864($s0)
    sw         $s1,0($a0)
    ld         $v1,864($s0)
    ori        $at,$v0,0x424
    sw         $at,0($v1)
    ld         $t9,864($s0)
    lw         $t8,11112($a3)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $s2,0($t3)
    ld         $t1,864($s0)
    sw         $s4,0($t1)
    ld         $t0,864($s0)
    sw         $s1,0($t0)
    ld         $a7,864($s0)
    sw         $s1,0($a7)
    ld         $a6,864($s0)
    sw         $s1,0($a6)
    ld         $a5,864($s0)
    sw         $s1,0($a5)
    ld         $a4,864($s0)
    sw         $s2,0($a4)
    ld         $a2,864($s0)
    sw         $s3,0($a2)
    ld         $a1,864($s0)
    sw         $s1,0($a1)
    ld         $a0,864($s0)
    sw         $s1,0($a0)
    ld         $v1,864($s0)
    sw         $s2,0($v1)
    ld         $at,864($s0)
    sw         $s3,0($at)
    ld         $t9,864($s0)
    sw         $s1,0($t9)
    ld         $t8,864($s0)
    sw         $s1,0($t8)
    ld         $t3,864($s0)
    sw         $t2,0($t3)
    ld         $t1,864($s0)
    sw         $s2,0($t1)
    ld         $t0,864($s0)
    sw         $s4,0($t0)
    ld         $a7,864($s0)
    sw         $s1,0($a7)
    ld         $a6,864($s0)
    sw         $s1,0($a6)
    ld         $a5,864($s0)
    sw         $s1,0($a5)
    ld         $a4,864($s0)
    sw         $s1,0($a4)
    ld         $a2,864($s0)
    sw         $s2,0($a2)
    ld         $a1,864($s0)
    sw         $s3,0($a1)
    ld         $a0,864($s0)
    sw         $s1,0($a0)
    ld         $v1,864($s0)
    sw         $s1,0($v1)
    ld         $v1,864($s0)
    ori        $v0,$v0,0x840
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,11116($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t3,11120($a3)
    sw         $t3,0($t8)
.L00002154:
    ld         $a1,864($s0)
    sw         $s2,0($a1)
    ld         $a0,864($s0)
    sw         $s4,0($a0)
    ld         $v1,864($s0)
    sw         $s1,0($v1)
    ld         $v0,864($s0)
    sw         $s1,0($v0)
    ld         $at,864($s0)
    sw         $s1,0($at)
    ld         $t9,864($s0)
    sw         $s1,0($t9)
    ld         $t8,864($s0)
    sw         $s2,0($t8)
    ld         $s4,864($s0)
    sw         $s3,0($s4)
    ld         $s3,864($s0)
    ld         $s4,48($sp)
    sw         $s1,0($s3)
    ld         $s2,864($s0)
    ld         $s3,40($sp)
    sw         $s1,0($s2)
    ld         $s1,864($s0)
    lui        $t3,0x1
    ld         $s2,24($sp)
    ori        $t3,$t3,0x658
    sw         $t3,0($s1)
    ld         $t2,864($s0)
    ld         $s0,32($sp)
    lui        $t1,0x11
    ld         $s1,16($sp)
    daddiu     $sp,$sp,64
    jr         $ra
    sw         $t1,0($t2)
.L000021dc:
    ori        $v1,$a5,0x2030
    sw         $v1,0($a4)
    ld         $v0,864($s0)
    lw         $at,4468($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4472($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4476($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4480($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4484($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4488($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4492($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4496($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    ori        $at,$a5,0x2031
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4500($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4504($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4508($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4512($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4516($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4520($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4524($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4528($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    ori        $t1,$a5,0x2032
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4532($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4536($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4540($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4544($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4548($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4552($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4556($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4560($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    ori        $a2,$a5,0x2033
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4564($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4568($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4572($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4576($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4580($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4584($a3)
    sw         $at,0($v0)
    ld         $t8,864($s0)
    lw         $t1,4588($a3)
    sw         $t1,0($t8)
    ld         $a6,864($s0)
    lw         $a2,4592($a3)
    b          .L0000142c
    sw         $a2,0($a6)
.L0000238c:
    lui        $t1,0x1
    ori        $v0,$t1,0x3c28
    sw         $v0,0($a4)
    ld         $at,864($s0)
    lw         $t9,4208($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4212($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4216($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4220($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4224($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4228($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4232($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4236($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4240($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4244($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4248($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4252($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4256($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4260($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4264($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4268($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    ori        $a0,$t1,0x3c29
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4272($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4276($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4280($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4284($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4288($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4292($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4296($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4300($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4304($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4308($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4312($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4316($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4320($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4324($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4328($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4332($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    ori        $a2,$t1,0x3c2a
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4336($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4340($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4344($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4348($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4352($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4356($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4360($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4364($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4368($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4372($a3)
    sw         $t2,0($t8)
    ld         $t0,864($s0)
    lw         $a6,4376($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4380($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4384($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4388($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4392($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4396($a3)
    sw         $t2,0($t8)
    ld         $t2,864($s0)
    ori        $t1,$t1,0x3c2b
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4400($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4404($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4408($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4412($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4416($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4420($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4424($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4428($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a1,4432($a3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,4436($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4440($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,4444($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,4448($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4452($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4456($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4460($a3)
    b          .L00001774
    sw         $a0,0($a1)
.L000026c0:
    sw         $t1,0($a4)
    ld         $a6,864($s0)
    lw         $a2,4468($a3)
    sw         $a2,0($a6)
    ld         $a0,864($s0)
    lw         $v1,4472($a3)
    b          .L0000142c
    sw         $v1,0($a0)
.L000026e0:
    ori        $a2,$a2,0x103a
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,4208($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4212($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4216($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4220($a3)
    b          .L00001774
    sw         $t2,0($t8)
.L0000271c:
    ori        $a6,$a5,0x203b
    sw         $a6,0($a4)
    ld         $a2,864($s0)
    lw         $a0,4468($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4472($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4476($a3)
    sw         $t8,0($at)
    ld         $t1,864($s0)
    lw         $a6,4480($a3)
    sw         $a6,0($t1)
    ld         $a2,864($s0)
    lw         $a0,4484($a3)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    lw         $v0,4488($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t8,4492($a3)
    sw         $t8,0($at)
    ld         $t1,864($s0)
    lw         $a6,4496($a3)
    b          .L0000142c
    sw         $a6,0($t1)
.L00002788:
    ori        $v0,$v0,0x3c38
    sw         $v0,0($a4)
    ld         $at,864($s0)
    lw         $t9,4208($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4212($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4216($a3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a5,4220($a3)
    sw         $a5,0($a6)
    ld         $a2,864($s0)
    lw         $a1,4224($a3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,4228($a3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,4232($a3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t8,4236($a3)
    sw         $t8,0($t9)
    ld         $t2,864($s0)
    lw         $t1,4240($a3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a6,4244($a3)
    sw         $a6,0($t0)
    ld         $a5,864($s0)
    lw         $a2,4248($a3)
    sw         $a2,0($a5)
    ld         $a1,864($s0)
    lw         $a0,4252($a3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,4256($a3)
    sw         $v0,0($v1)
    ld         $at,864($s0)
    lw         $t9,4260($a3)
    sw         $t9,0($at)
    ld         $t8,864($s0)
    lw         $t2,4264($a3)
    sw         $t2,0($t8)
    ld         $t1,864($s0)
    lw         $t0,4268($a3)
    b          .L00001774
    sw         $t0,0($t1)

glabel odsyRestoreXform
    ld         $a6,176($a1)
    daddiu     $sp,$sp,-32
    move       $a5,$a0
    sd         $s0,8($sp)
    li         $t8,480
    lui        $a4,0x9080
    lw         $a3,0($a1)
    lui        $t0,0x3100
    li         $s0,160
    sd         $ra,0($sp)
    li         $ra,320
    ori        $a7,$t0,0x8000
    sd         $s2,24($sp)
    move       $s2,$zero
    beqz       $a3, .L00002b08
    sd         $s1,16($sp)
    lw         $at,820($a0)
    beq        $at, $a3, .L00002b08
    move       $a0,$zero
    li         $s2,1
    ori        $t3,$a4,0xbda2
    lui        $s1,0x9000
    lw         $a3,10972($a6)
    b          .L0000292c
    ori        $s1,$s1,0xbda2
.L000028b8:
    sw         $t3,0($a4)
.L000028bc:
    move       $a2,$a0
    move       $a4,$zero
.L000028c4:
    dsll       $v0,$a2,0x2
    addiu      $a4,$a4,1
    ld         $v1,864($a5)
    slti       $at,$a4,16
    daddu      $v0,$a6,$v0
    lw         $v0,7356($v0)
    addiu      $a2,$a2,1
    sw         $v0,0($v1)
    beqz       $at, .L0000290c
    dsll       $v1,$a2,0x2
    addiu      $a4,$a4,1
    ld         $a1,864($a5)
    slti       $at,$a4,16
    daddu      $v1,$a6,$v1
    lw         $v1,7356($v1)
    addiu      $a2,$a2,1
    bnez       $at, .L000028c4
    sw         $v1,0($a1)
.L0000290c:
    ld         $a2,864($a5)
    or         $a1,$t1,$t2
    or         $a1,$a7,$a1
    sw         $a1,0($a2)
.L0000291c:
    addiu      $a0,$a0,16
    slti       $a2,$a0,512
    beqz       $a2, .L00002970
    nop
.L0000292c:
    lw         $t0,9888($a6)
    beq        $a0, $t8, .L0000291c
    andi       $a2,$a0,0x3ff
    beq        $a0, $ra, .L0000291c
    srl        $t9,$t0,0xa
    sra        $a4,$a0,0xa
    ld         $t1,864($a5)
    sll        $a4,$a4,0x17
    or         $a4,$a2,$a4
    sll        $t2,$t9,0x17
    or         $a4,$a7,$a4
    sw         $a4,0($t1)
    andi       $t1,$t0,0x3ff
    bne        $a0, $s0, .L000028b8
    ld         $a4,864($a5)
    b          .L000028bc
    sw         $s1,0($a4)
.L00002970:
    ld         $t9,864($a5)
    lui        $t8,0x2900
    ori        $t8,$t8,0x819a
    sw         $t8,0($t9)
    ld         $t3,864($a5)
    lui        $t0,0x3200
    ori        $t2,$t0,0x8018
    sw         $t2,0($t3)
    ld         $v0,864($a5)
    lui        $t1,0x8e80
    ori        $t1,$t1,0x9015
    sw         $t1,0($v0)
    ld         $at,864($a5)
    lw         $ra,9788($a6)
    sw         $ra,0($at)
    ld         $t9,864($a5)
    lw         $t8,9792($a6)
    sw         $t8,0($t9)
    ld         $t3,864($a5)
    lw         $t2,9796($a6)
    sw         $t2,0($t3)
    move       $a2,$zero
    ld         $t3,864($a5)
    li         $a7,2
    li         $a0,1
    lw         $t2,9800($a6)
    move       $a4,$zero
    ori        $t0,$t0,0x8000
    sw         $t2,0($t3)
.L000029e4:
    sra        $v1,$a4,0xa
    andi       $at,$a4,0x3ff
    sll        $v1,$v1,0x17
    ld         $v0,864($a5)
    or         $at,$at,$v1
    or         $at,$t0,$at
    sw         $at,0($v0)
    ld         $ra,864($a5)
    dsll       $t9,$a4,0x4
    sw         $t1,0($ra)
    daddu      $t9,$a6,$t9
    ld         $t2,864($a5)
    lw         $a1,9404($t9)
    sw         $a1,0($t2)
    ld         $v1,864($a5)
    lw         $v0,9408($t9)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $ra,9412($t9)
    sw         $ra,0($at)
    ld         $t8,864($a5)
    lw         $t3,9416($t9)
    sra        $t2,$a0,0xa
    sw         $t3,0($t8)
    andi       $v1,$a0,0x3ff
    sll        $t2,$t2,0x17
    ld         $a1,864($a5)
    or         $v1,$v1,$t2
    or         $v1,$t0,$v1
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    sw         $t1,0($v0)
    ld         $at,864($a5)
    lw         $ra,9420($t9)
    sw         $ra,0($at)
    ld         $t8,864($a5)
    lw         $t3,9424($t9)
    sw         $t3,0($t8)
    ld         $t2,864($a5)
    lw         $a1,9428($t9)
    sw         $a1,0($t2)
    ld         $v1,864($a5)
    lw         $v0,9432($t9)
    sra        $at,$a7,0xa
    sw         $v0,0($v1)
    andi       $t8,$a7,0x3ff
    sll        $at,$at,0x17
    ld         $ra,864($a5)
    or         $t8,$t8,$at
    or         $t8,$t0,$t8
    sw         $t8,0($ra)
    ld         $t3,864($a5)
    sw         $t1,0($t3)
    ld         $t2,864($a5)
    lw         $a1,9436($t9)
    sw         $a1,0($t2)
    ld         $v1,864($a5)
    lw         $v0,9440($t9)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $ra,9444($t9)
    addiu      $a2,$a2,1
    sw         $ra,0($at)
    slti       $at,$a2,8
    ld         $ra,864($a5)
    addiu      $a0,$a0,3
    addiu      $a7,$a7,3
    lw         $t9,9448($t9)
    addiu      $a4,$a4,3
    bnez       $at, .L000029e4
    sw         $t9,0($ra)
    b          .L00002b10
    ld         $a1,864($a5)
.L00002b08:
    lw         $a3,10972($a6)
    ld         $a1,864($a5)
.L00002b10:
    sltiu      $a2,$a3,255
    addiu      $a4,$a3,-1
    lui        $a0,0x2800
    ori        $a0,$a0,0x8000
    beqz       $a2, .L00003220
    sw         $a0,0($a1)
    beqz       $a3, .L00002b70
    lui        $t2,0x3400
    move       $a0,$zero
    lui        $a2,0x6000
    ori        $a2,$a2,0x8000
.L00002b3c:
    dsll       $a3,$a0,0x2
    daddu      $a3,$a6,$a3
    lw         $a3,9948($a3)
    addiu      $a0,$a0,1
    sltu       $t0,$a4,$a0
    srl        $t1,$a3,0xa
    andi       $a3,$a3,0x3ff
    sll        $t1,$t1,0x17
    ld         $a7,864($a5)
    or         $a3,$a3,$t1
    or         $a3,$a2,$a3
    beqz       $t0, .L00002b3c
    sw         $a3,0($a7)
.L00002b70:
    ori        $t2,$t2,0x8000
    lw         $a7,9900($a6)
    sw         $zero,9900($a6)
    lw         $t9,9900($a6)
    lw         $at,9900($a6)
    srl        $at,$at,0xa
    ld         $ra,864($a5)
    andi       $t9,$t9,0x3ff
    sll        $at,$at,0x17
    or         $t9,$t9,$at
    or         $t9,$t2,$t9
    sw         $t9,0($ra)
    ld         $t8,864($a5)
    lui        $t9,0x9080
    ori        $a0,$t9,0xbdc8
    sw         $a0,0($t8)
    ld         $t3,864($a5)
    lw         $t1,6672($a6)
    sw         $t1,0($t3)
    ld         $t0,864($a5)
    lw         $a4,6676($a6)
    sw         $a4,0($t0)
    ld         $a3,864($a5)
    lw         $a2,6680($a6)
    sw         $a2,0($a3)
    ld         $a1,864($a5)
    lw         $v1,6684($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6688($a6)
    sw         $at,0($v0)
    ld         $ra,864($a5)
    lw         $t8,6692($a6)
    sw         $t8,0($ra)
    ld         $t3,864($a5)
    lw         $t1,6696($a6)
    sw         $t1,0($t3)
    ld         $t0,864($a5)
    lw         $a4,6700($a6)
    sw         $a4,0($t0)
    ld         $a3,864($a5)
    lw         $a2,6704($a6)
    sw         $a2,0($a3)
    ld         $a1,864($a5)
    lw         $v1,6708($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6712($a6)
    sw         $at,0($v0)
    ld         $ra,864($a5)
    lw         $t8,6716($a6)
    sw         $t8,0($ra)
    ld         $t3,864($a5)
    lw         $t1,6720($a6)
    sw         $t1,0($t3)
    ld         $t0,864($a5)
    lw         $a4,6724($a6)
    sw         $a4,0($t0)
    ld         $a3,864($a5)
    lw         $a2,6728($a6)
    sw         $a2,0($a3)
    ld         $a1,864($a5)
    lw         $v1,6732($a6)
    sw         $v1,0($a1)
    li         $t8,16
    sw         $t8,9900($a6)
    lw         $ra,9900($a6)
    lw         $v0,9900($a6)
    srl        $v0,$v0,0xa
    ld         $at,864($a5)
    andi       $ra,$ra,0x3ff
    sll        $v0,$v0,0x17
    or         $ra,$ra,$v0
    or         $ra,$t2,$ra
    sw         $ra,0($at)
    ld         $ra,864($a5)
    ori        $t9,$t9,0x91df
    sw         $t9,0($ra)
    ld         $t3,864($a5)
    lw         $t1,6736($a6)
    sw         $t1,0($t3)
    ld         $t0,864($a5)
    lw         $a4,6740($a6)
    sw         $a4,0($t0)
    ld         $a3,864($a5)
    lw         $a2,6744($a6)
    sw         $a2,0($a3)
    ld         $a1,864($a5)
    lw         $v1,6748($a6)
    sw         $v1,0($a1)
    sw         $zero,9900($a6)
    li         $ra,6
    lw         $t3,9900($a6)
    li         $t1,15
    li         $a4,13
    lw         $v0,9900($a6)
    li         $t0,11
    li         $a3,14
    lui        $a2,0x2000
    srl        $v0,$v0,0xa
    ld         $at,864($a5)
    andi       $t3,$t3,0x3ff
    sll        $v0,$v0,0x17
    ori        $t9,$a2,0x8380
    or         $t3,$t3,$v0
    or         $t3,$t2,$t3
    beqz       $s2, .L00003074
    sw         $t3,0($at)
    li         $at,36
    sw         $at,9900($a6)
    lw         $v1,9900($a6)
    lw         $t3,9900($a6)
    srl        $t3,$t3,0xa
    ld         $a1,864($a5)
    andi       $v1,$v1,0x3ff
    sll        $t3,$t3,0x17
    or         $v1,$v1,$t3
    or         $v1,$t2,$v1
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    sw         $a0,0($v0)
    ld         $at,864($a5)
    lw         $t3,6752($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6756($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6760($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6764($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6768($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6772($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6776($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6780($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6784($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6788($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6792($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6796($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6800($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6804($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6808($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6812($a6)
    sw         $t3,0($at)
    sw         $zero,9900($a6)
    lw         $v0,9900($a6)
    lw         $a1,9900($a6)
    srl        $a1,$a1,0xa
    ld         $v1,864($a5)
    andi       $v0,$v0,0x3ff
    sll        $a1,$a1,0x17
    or         $v0,$v0,$a1
    or         $v0,$t2,$v0
    sw         $v0,0($v1)
    li         $at,52
    sw         $at,9900($a6)
    lw         $v1,9900($a6)
    lw         $t3,9900($a6)
    srl        $t3,$t3,0xa
    ld         $a1,864($a5)
    andi       $v1,$v1,0x3ff
    sll        $t3,$t3,0x17
    or         $v1,$v1,$t3
    or         $v1,$t2,$v1
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    sw         $a0,0($v0)
    ld         $at,864($a5)
    lw         $t3,6816($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6820($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6824($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6828($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6832($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6836($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6840($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6844($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6848($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6852($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6856($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6860($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6864($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6868($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6872($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6876($a6)
    sw         $t3,0($at)
    sw         $zero,9900($a6)
    lw         $v0,9900($a6)
    lw         $a1,9900($a6)
    srl        $a1,$a1,0xa
    ld         $v1,864($a5)
    andi       $v0,$v0,0x3ff
    sll        $a1,$a1,0x17
    or         $v0,$v0,$a1
    or         $v0,$t2,$v0
    sw         $v0,0($v1)
    li         $at,20
    sw         $at,9900($a6)
    lw         $v1,9900($a6)
    lw         $t3,9900($a6)
    srl        $t3,$t3,0xa
    ld         $a1,864($a5)
    andi       $v1,$v1,0x3ff
    sll        $t3,$t3,0x17
    or         $v1,$v1,$t3
    or         $v1,$t2,$v1
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    sw         $a0,0($v0)
    ld         $at,864($a5)
    lw         $t3,6880($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6884($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6888($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6892($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6896($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6900($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6904($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6908($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6912($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6916($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6920($a6)
    sw         $t3,0($at)
    ld         $a1,864($a5)
    lw         $v1,6924($a6)
    sw         $v1,0($a1)
    ld         $v0,864($a5)
    lw         $at,6928($a6)
    sw         $at,0($v0)
    ld         $t3,864($a5)
    lw         $a1,6932($a6)
    sw         $a1,0($t3)
    ld         $v1,864($a5)
    lw         $v0,6936($a6)
    sw         $v0,0($v1)
    ld         $at,864($a5)
    lw         $t3,6940($a6)
    sw         $t3,0($at)
    sw         $zero,9900($a6)
    lw         $v0,9900($a6)
    lw         $a1,9900($a6)
    srl        $a1,$a1,0xa
    ld         $v1,864($a5)
    andi       $v0,$v0,0x3ff
    sll        $a1,$a1,0x17
    or         $v0,$v0,$a1
    or         $v0,$t2,$v0
    sw         $v0,0($v1)
.L00003074:
    move       $a0,$zero
    b          .L000030c4
    sw         $a7,9900($a6)
.L00003080:
    dsll       $a7,$a0,0x2
    daddu      $a7,$a6,$a7
    lw         $v0,9820($a7)
    lw         $a7,9820($a7)
    srl        $a7,$a7,0xa
    or         $a1,$a2,$a1
    sll        $a7,$a7,0x17
    ld         $v1,864($a5)
    andi       $v0,$v0,0x3ff
    or         $a1,$a1,$a7
    or         $v0,$v0,$a1
    ori        $v0,$v0,0x8000
    sw         $v0,0($v1)
.L000030b4:
    addiu      $a0,$a0,1
.L000030b8:
    slti       $t2,$a0,22
    beqz       $t2, .L00003170
    nop
.L000030c4:
    beq        $a0, $a3, .L00003188
    dsll       $t3,$a0,0x2
    beq        $a0, $a4, .L00003128
    nop
    beq        $a0, $t0, .L00003128
    nop
    beq        $a0, $t1, .L00003128
    nop
    beq        $a0, $t8, .L00003128
    nop
    beq        $a0, $ra, .L00003128
    sll        $v0,$a0,0x18
    dsll       $v1,$a0,0x2
    daddu      $v1,$a6,$v1
    lw         $t3,9820($v1)
    lw         $v1,9820($v1)
    srl        $v1,$v1,0xa
    or         $v0,$a2,$v0
    sll        $v1,$v1,0x17
    ld         $at,864($a5)
    andi       $t3,$t3,0x3ff
    or         $v0,$v0,$v1
    or         $t3,$t3,$v0
    ori        $t3,$t3,0x8000
    sw         $t3,0($at)
.L00003128:
    addiu      $a0,$a0,1
    slti       $a1,$a0,22
    beqz       $a1, .L00003170
    nop
    beq        $a0, $a3, .L000031cc
    dsll       $t3,$a0,0x2
    beq        $a0, $a4, .L000030b4
    nop
    beq        $a0, $t0, .L000030b4
    nop
    beq        $a0, $t1, .L000030b4
    nop
    beq        $a0, $t8, .L000030b4
    nop
    bne        $a0, $ra, .L00003080
    sll        $a1,$a0,0x18
    b          .L000030b8
    addiu      $a0,$a0,1
.L00003170:
    ld         $ra,0($sp)
.L00003174:
    ld         $s2,24($sp)
    ld         $s1,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003188:
    daddu      $t3,$t3,$a6
    lw         $s0,9820($t3)
    sll        $t2,$a0,0x18
    or         $v0,$t2,$a2
    ld         $a7,864($a5)
    beqz       $s0, .L00003210
    or         $s0,$t2,$t9
    lw         $at,9820($t3)
    lw         $v1,9820($t3)
    srl        $v1,$v1,0xa
    sll        $v1,$v1,0x17
    andi       $at,$at,0x3ff
    or         $v0,$v0,$v1
    or         $at,$at,$v0
    ori        $at,$at,0x8000
    b          .L00003128
    sw         $at,0($a7)
.L000031cc:
    daddu      $t3,$t3,$a6
    lw         $a1,9820($t3)
    sll        $t2,$a0,0x18
    or         $v0,$t2,$a2
    ld         $a7,864($a5)
    beqz       $a1, .L00003218
    or         $s0,$t2,$t9
    lw         $at,9820($t3)
    lw         $v1,9820($t3)
    srl        $v1,$v1,0xa
    sll        $v1,$v1,0x17
    andi       $at,$at,0x3ff
    or         $v0,$v0,$v1
    or         $at,$at,$v0
    ori        $at,$at,0x8000
    b          .L000030b4
    sw         $at,0($a7)
.L00003210:
    b          .L00003128
    sw         $s0,0($a7)
.L00003218:
    b          .L000030b4
    sw         $s0,0($a7)
.L00003220:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($a5)
    jal        cmn_err
    daddiu     $a1,$a1,488
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00003174
    ld         $ra,0($sp)

glabel odsyRestoreVB
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    ld         $s0,192($a1)
    lw         $a3,0($a1)
    sd         $s3,32($sp)
    sd         $s2,16($sp)
    sltu       $a6,$zero,$a3
    move       $s2,$a0
    sd         $s1,0($sp)
    move       $s1,$a2
    beqz       $a6, .L00003ba4
    sd         $ra,24($sp)
    lw         $at,820($a0)
    bne        $at, $a3, .L0000329c
    nop
    beqz       $a6, .L00003ba4
    nop
    blez       $a4, .L00003ba4
    nop
.L0000329c:
    lw         $a3,0($s1)
    srl        $a3,$a3,0x10
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,384($a3)
    srl        $v0,$a3,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L00003e20
    lui        $a0,0x7f
.L000032c4:
    ld         $a4,864($s2)
.L000032c8:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x10
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,384($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003344
    ld         $s3,-30720($gp)
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000032fc:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1280($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x10
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,384($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L000032fc
    daddu      $a4,$a3,$a2
    ld         $s3,-30720($gp)
.L00003344:
    srl        $a3,$a0,0xe
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,400($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003e4c
    lui        $a0,0x7f
.L00003368:
    ld         $a4,864($s2)
.L0000336c:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0xe
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,400($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000033e0
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L0000339c:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1344($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0xe
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,400($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L0000339c
    daddu      $a4,$a3,$a2
.L000033e0:
    srl        $a3,$a0,0xc
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,416($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003e78
    lui        $a0,0x7f
.L00003404:
    ld         $a4,864($s2)
.L00003408:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0xc
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,416($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003484
    srl        $a3,$a0,0xa
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L0000343c:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1408($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0xc
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,416($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L0000343c
    daddu      $a4,$a3,$a2
.L00003480:
    srl        $a3,$a0,0xa
.L00003484:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,432($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003ea4
    lui        $a0,0x7f
.L000034a4:
    ld         $a4,864($s2)
.L000034a8:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0xa
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,432($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L0000351c
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000034d8:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1472($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0xa
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,432($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L000034d8
    daddu      $a4,$a3,$a2
.L0000351c:
    srl        $a3,$a0,0x4
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,480($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003ed0
    lui        $a0,0x7f
.L00003540:
    ld         $a4,864($s2)
.L00003544:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x4
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,480($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000035b8
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003574:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1664($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x4
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,480($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L00003574
    daddu      $a4,$a3,$a2
.L000035b8:
    srl        $a3,$a0,0x2
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,496($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003efc
    lui        $a0,0x7f
.L000035dc:
    ld         $a4,864($s2)
.L000035e0:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x2
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,496($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L0000365c
    andi       $a3,$a0,0x3
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003614:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1728($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x2
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,496($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L00003614
    daddu      $a4,$a3,$a2
.L00003658:
    andi       $a3,$a0,0x3
.L0000365c:
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,512($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003f28
    lui        $a0,0x7f
.L00003678:
    ld         $a1,864($s2)
.L0000367c:
    sw         $a3,0($a1)
    lw         $a0,0($s1)
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,512($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000036e8
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L000036a8:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    ld         $a3,864($s2)
    lw         $a1,1792($a1)
    sw         $a1,0($a3)
    lw         $a0,0($s1)
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a3,$a0,$s0
    lw         $a3,512($a3)
    srl        $a3,$a3,0xa
    addiu      $a2,$a2,1
    andi       $a3,$a3,0xf
    sltu       $a3,$a2,$a3
    bnez       $a3, .L000036a8
    daddu      $a1,$a2,$a0
.L000036e8:
    lw         $a3,4($s1)
.L000036ec:
    srl        $a3,$a3,0x1e
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,528($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00003f54
    lui        $a0,0x7f
.L0000370c:
    ld         $a1,864($s2)
.L00003710:
    sw         $a3,0($a1)
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1e
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,528($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L0000377c
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L0000373c:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    ld         $a3,864($s2)
    lw         $a1,1856($a1)
    sw         $a1,0($a3)
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1e
    dsll       $a0,$a0,0x2
    daddu      $a3,$a0,$s0
    lw         $a3,528($a3)
    srl        $a3,$a3,0xa
    addiu      $a2,$a2,1
    andi       $a3,$a3,0xf
    sltu       $a3,$a2,$a3
    bnez       $a3, .L0000373c
    daddu      $a1,$a2,$a0
.L0000377c:
    lw         $a3,0($s1)
.L00003780:
    srl        $a3,$a3,0x1a
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,304($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00003f80
    lui        $a0,0x7f
.L000037a4:
    ld         $a4,864($s2)
.L000037a8:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1a
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,304($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L0000381c
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000037d8:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,960($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1a
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,304($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L000037d8
    daddu      $a4,$a3,$a2
.L0000381c:
    srl        $a3,$a0,0x18
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,320($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003fac
    lui        $a0,0x7f
.L00003840:
    ld         $a4,864($s2)
.L00003844:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x18
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,320($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000038c0
    srl        $a3,$a0,0x16
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003878:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1024($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x18
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,320($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L00003878
    daddu      $a4,$a3,$a2
.L000038bc:
    srl        $a3,$a0,0x16
.L000038c0:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,336($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003fd8
    lui        $a0,0x7f
.L000038e0:
    ld         $a4,864($s2)
.L000038e4:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x16
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,336($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003960
    srl        $a3,$a0,0x14
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003918:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1088($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x16
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,336($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L00003918
    daddu      $a4,$a3,$a2
.L0000395c:
    srl        $a3,$a0,0x14
.L00003960:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,352($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00004004
    lui        $a0,0x7f
.L00003980:
    ld         $a4,864($s2)
.L00003984:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x14
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,352($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003a00
    srl        $t0,$a0,0x8
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000039b8:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,1152($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x14
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,352($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L000039b8
    daddu      $a4,$a3,$a2
.L000039fc:
    srl        $t0,$a0,0x8
.L00003a00:
    andi       $t0,$t0,0x3
    lw         $a6,4($s1)
    dsll       $t0,$t0,0x4
    srl        $a6,$a6,0x1c
    daddu      $t0,$s0,$t0
    andi       $a6,$a6,0x3
    lw         $t0,1536($t0)
    dsll       $a6,$a6,0x4
    daddu      $a6,$s0,$a6
    ld         $t3,864($s2)
    lui        $t2,0x9080
    lw         $a6,1920($a6)
    ori        $t2,$t2,0x91ea
    sw         $t2,0($t3)
    ld         $t1,864($s2)
    sw         $t0,0($t1)
    ld         $t1,864($s2)
    lui        $a4,0x8000
    xor        $t0,$a4,$t0
    sw         $t0,0($t1)
    ld         $a7,864($s2)
    sw         $a6,0($a7)
    ld         $a5,864($s2)
    xor        $a4,$a4,$a6
    sw         $a4,0($a5)
    lw         $a3,0($s1)
    srl        $a3,$a3,0x8
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,448($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00004030
    lui        $a0,0x7f
.L00003a8c:
    ld         $a1,864($s2)
.L00003a90:
    sw         $a3,0($a1)
    lw         $a0,0($s1)
    srl        $a0,$a0,0x8
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $t1,$a0,$s0
    lw         $t1,448($t1)
    srl        $t1,$t1,0xa
    andi       $t1,$t1,0xf
    beqz       $t1, .L00003b04
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L00003ac0:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    ld         $a3,864($s2)
    lw         $a1,1536($a1)
    sw         $a1,0($a3)
    lw         $a0,0($s1)
    srl        $a0,$a0,0x8
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a3,$a0,$s0
    lw         $a3,448($a3)
    srl        $a3,$a3,0xa
    addiu      $a2,$a2,1
    andi       $a3,$a3,0xf
    sltu       $a3,$a2,$a3
    bnez       $a3, .L00003ac0
    daddu      $a1,$a2,$a0
.L00003b04:
    lw         $a3,4($s1)
.L00003b08:
    srl        $a3,$a3,0x1c
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,544($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L0000405c
    lui        $a0,0x7f
.L00003b2c:
    ld         $a1,864($s2)
.L00003b30:
    sw         $a3,0($a1)
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1c
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,544($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003ba4
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L00003b60:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    ld         $a3,864($s2)
    lw         $a1,1920($a1)
    sw         $a1,0($a3)
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1c
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a3,$a0,$s0
    lw         $a3,544($a3)
    srl        $a3,$a3,0xa
    addiu      $a2,$a2,1
    andi       $a3,$a3,0xf
    sltu       $a3,$a2,$a3
    bnez       $a3, .L00003b60
    daddu      $a1,$a2,$a0
.L00003ba4:
    lw         $a3,0($s1)
.L00003ba8:
    srl        $a3,$a3,0x1e
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,272($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00003d98
    ld         $s3,-30720($gp)
.L00003bc8:
    ld         $a4,864($s2)
.L00003bcc:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1e
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,272($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003c40
    srl        $a3,$a0,0x1c
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003bfc:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,832($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1e
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,272($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L00003bfc
    daddu      $a4,$a3,$a2
.L00003c3c:
    srl        $a3,$a0,0x1c
.L00003c40:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,288($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003dc8
    lui        $a0,0x7f
.L00003c60:
    ld         $a4,864($s2)
.L00003c64:
    sw         $a3,0($a4)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1c
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,288($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003ce0
    srl        $a3,$a0,0x12
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003c98:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    ld         $a5,864($s2)
    lw         $a4,896($a4)
    sw         $a4,0($a5)
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1c
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a5,$a2,$s0
    lw         $a5,288($a5)
    srl        $a5,$a5,0xa
    addiu      $a3,$a3,1
    andi       $a5,$a5,0xf
    sltu       $a5,$a3,$a5
    bnez       $a5, .L00003c98
    daddu      $a4,$a3,$a2
.L00003cdc:
    srl        $a3,$a0,0x12
.L00003ce0:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,368($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003df4
    lui        $a0,0x7f
.L00003d00:
    ld         $a1,864($s2)
.L00003d04:
    sw         $a3,0($a1)
    lw         $a0,0($s1)
    srl        $a0,$a0,0x12
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,368($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003d80
    ld         $s3,32($sp)
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L00003d38:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    ld         $a3,864($s2)
    lw         $a1,1216($a1)
    sw         $a1,0($a3)
    lw         $a0,0($s1)
    srl        $a0,$a0,0x12
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a3,$a0,$s0
    lw         $a3,368($a3)
    srl        $a3,$a3,0xa
    addiu      $a2,$a2,1
    andi       $a3,$a3,0xf
    sltu       $a3,$a2,$a3
    bnez       $a3, .L00003d38
    daddu      $a1,$a2,$a0
    ld         $s3,32($sp)
.L00003d80:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    ld         $s2,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003d98:
    lui        $a0,0x7f
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003bc8
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003bcc
    ld         $a4,864($s2)
    b          .L00004088
    daddiu     $a2,$s3,768
.L00003dc8:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003c60
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003c64
    ld         $a4,864($s2)
    b          .L0000409c
    ld         $a2,-30720($gp)
.L00003df4:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003d00
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003d04
    ld         $a1,864($s2)
    b          .L000040b4
    daddiu     $a2,$s3,672
.L00003e20:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000032c4
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L000032c8
    ld         $a4,864($s2)
    b          .L000040c8
    ld         $s3,-30720($gp)
.L00003e4c:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003368
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L0000336c
    ld         $a4,864($s2)
    b          .L000040e0
    ld         $a2,-30720($gp)
.L00003e78:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003404
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003408
    ld         $a4,864($s2)
    b          .L000040f8
    ld         $a2,-30720($gp)
.L00003ea4:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000034a4
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L000034a8
    ld         $a4,864($s2)
    b          .L00004110
    ld         $a2,-30720($gp)
.L00003ed0:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003540
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003544
    ld         $a4,864($s2)
    b          .L00004128
    ld         $a2,-30720($gp)
.L00003efc:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000035dc
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L000035e0
    ld         $a4,864($s2)
    b          .L00004140
    ld         $a2,-30720($gp)
.L00003f28:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003678
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L0000367c
    ld         $a1,864($s2)
    b          .L00004158
    ld         $a2,-30720($gp)
.L00003f54:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L0000370c
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003710
    ld         $a1,864($s2)
    b          .L00004170
    ld         $a2,-30720($gp)
.L00003f80:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000037a4
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L000037a8
    ld         $a4,864($s2)
    b          .L00004188
    ld         $a2,-30720($gp)
.L00003fac:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003840
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003844
    ld         $a4,864($s2)
    b          .L000041a0
    ld         $a2,-30720($gp)
.L00003fd8:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000038e0
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L000038e4
    ld         $a4,864($s2)
    b          .L000041b8
    daddiu     $a2,$s3,608
.L00004004:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003980
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003984
    ld         $a4,864($s2)
    b          .L000041cc
    daddiu     $a2,$s3,624
.L00004030:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003a8c
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003a90
    ld         $a1,864($s2)
    b          .L000041e0
    daddiu     $a2,$s3,640
.L0000405c:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003b2c
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beql       $a0, $a1, .L00003b30
    ld         $a1,864($s2)
    b          .L000041f4
    daddiu     $a2,$s3,656
.L00004088:
    daddiu     $a1,$s3,560
    jal        cmn_err
    li         $a0,7
    b          .L00003c3c
    lw         $a0,0($s1)
.L0000409c:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,776
    b          .L00003cdc
    lw         $a0,0($s1)
.L000040b4:
    daddiu     $a1,$s3,560
    jal        cmn_err
    li         $a0,7
    b          .L00003d80
    ld         $s3,32($sp)
.L000040c8:
    li         $a0,7
    daddiu     $a2,$s3,688
    jal        cmn_err
    daddiu     $a1,$s3,560
    b          .L00003344
    lw         $a0,0($s1)
.L000040e0:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,696
    b          .L000033e0
    lw         $a0,0($s1)
.L000040f8:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,704
    b          .L00003480
    lw         $a0,0($s1)
.L00004110:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,712
    b          .L0000351c
    lw         $a0,0($s1)
.L00004128:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,720
    b          .L000035b8
    lw         $a0,0($s1)
.L00004140:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,728
    b          .L00003658
    lw         $a0,0($s1)
.L00004158:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,736
    b          .L000036ec
    lw         $a3,4($s1)
.L00004170:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,744
    b          .L00003780
    lw         $a3,0($s1)
.L00004188:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,752
    b          .L0000381c
    lw         $a0,0($s1)
.L000041a0:
    daddiu     $a1,$s3,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,760
    b          .L000038bc
    lw         $a0,0($s1)
.L000041b8:
    daddiu     $a1,$s3,560
    jal        cmn_err
    li         $a0,7
    b          .L0000395c
    lw         $a0,0($s1)
.L000041cc:
    daddiu     $a1,$s3,560
    jal        cmn_err
    li         $a0,7
    b          .L000039fc
    lw         $a0,0($s1)
.L000041e0:
    daddiu     $a1,$s3,560
    jal        cmn_err
    li         $a0,7
    b          .L00003b08
    lw         $a3,4($s1)
.L000041f4:
    daddiu     $a1,$s3,560
    jal        cmn_err
    li         $a0,7
    b          .L00003ba8
    lw         $a3,0($s1)

glabel odsyRestoreGfe
    ld         $a3,176($a1)
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    lw         $a4,0($a1)
    ld         $s0,192($a1)
    sd         $s1,0($sp)
    move       $s1,$a0
    beqz       $a4, .L00004240
    sd         $ra,16($sp)
    lw         $at,820($a0)
    beq        $at, $a4, .L00004240
    li         $a0,1
    b          .L00004248
    ld         $a5,864($s1)
.L00004240:
    move       $a0,$zero
    ld         $a5,864($s1)
.L00004248:
    lui        $a1,0x1
    ori        $a4,$a1,0x4400
    sw         $a4,0($a5)
    ld         $a2,864($s1)
    sw         $zero,0($a2)
    ld         $a2,864($s1)
    ori        $a1,$a1,0x4001
    sw         $a1,0($a2)
    ld         $v1,864($s1)
    li         $v0,1856
    sw         $v0,0($v1)
    ld         $at,864($s1)
    li         $ra,491
    sw         $ra,0($at)
    ld         $t9,864($s1)
    li         $t8,3905
    sw         $t8,0($t9)
    ld         $t3,864($s1)
    lw         $t2,172($s0)
    sw         $t2,0($t3)
    ld         $t1,864($s1)
    sw         $zero,0($t1)
    ld         $t0,864($s1)
    sw         $zero,0($t0)
    ld         $a7,864($s1)
    li         $a6,17776
    sw         $a6,0($a7)
    ld         $a5,864($s1)
    lw         $a4,184($s0)
    sw         $a4,0($a5)
    ld         $a2,864($s1)
    li         $a1,1200
    sw         $a1,0($a2)
    ld         $v1,864($s1)
    lw         $v0,7052($a3)
    beqz       $a0, .L0000468c
    sw         $v0,0($v1)
    lw         $a3,576($s0)
    srl        $a6,$a3,0xa
    andi       $a6,$a6,0xf
    beqz       $a6, .L000046a0
    lui        $a2,0x7f
.L000042f0:
    ld         $t0,864($s1)
.L000042f4:
    sw         $a3,0($t0)
    lw         $a7,576($s0)
    srl        $a7,$a7,0xa
    andi       $a7,$a7,0xf
    beqz       $a7, .L0000433c
    move       $a0,$zero
    dsll       $t2,$a0,0x2
.L00004310:
    daddu      $t2,$s0,$t2
    ld         $t3,864($s1)
    lw         $t2,2048($t2)
    sw         $t2,0($t3)
    lw         $t1,576($s0)
    srl        $t1,$t1,0xa
    addiu      $a0,$a0,1
    andi       $t1,$t1,0xf
    sltu       $t1,$a0,$t1
    bnez       $t1, .L00004310
    dsll       $t2,$a0,0x2
.L0000433c:
    lw         $a3,592($s0)
.L00004340:
    srl        $t3,$a3,0xa
    andi       $t3,$t3,0xf
    beqz       $t3, .L000046cc
    lui        $a0,0x7f
.L00004350:
    ld         $t9,864($s1)
.L00004354:
    sw         $a3,0($t9)
    lw         $t8,592($s0)
    srl        $t8,$t8,0xa
    andi       $t8,$t8,0xf
    beqz       $t8, .L0000439c
    move       $a0,$zero
    dsll       $at,$a0,0x2
.L00004370:
    daddu      $at,$s0,$at
    ld         $v0,864($s1)
    lw         $at,2112($at)
    sw         $at,0($v0)
    lw         $ra,592($s0)
    srl        $ra,$ra,0xa
    addiu      $a0,$a0,1
    andi       $ra,$ra,0xf
    sltu       $ra,$a0,$ra
    bnez       $ra, .L00004370
    dsll       $at,$a0,0x2
.L0000439c:
    lw         $a3,608($s0)
.L000043a0:
    srl        $v0,$a3,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L000046f8
    lui        $a0,0x7f
.L000043b0:
    ld         $a0,864($s1)
.L000043b4:
    sw         $a3,0($a0)
    lw         $v1,608($s0)
    srl        $v1,$v1,0xa
    andi       $v1,$v1,0xf
    beqz       $v1, .L000043fc
    move       $a0,$zero
    dsll       $a2,$a0,0x2
.L000043d0:
    daddu      $a2,$s0,$a2
    ld         $a3,864($s1)
    lw         $a2,2176($a2)
    sw         $a2,0($a3)
    lw         $a1,608($s0)
    srl        $a1,$a1,0xa
    addiu      $a0,$a0,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a0,$a1
    bnez       $a1, .L000043d0
    dsll       $a2,$a0,0x2
.L000043fc:
    lw         $a3,624($s0)
.L00004400:
    srl        $a4,$a3,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00004724
    lui        $a0,0x7f
.L00004410:
    ld         $a6,864($s1)
.L00004414:
    sw         $a3,0($a6)
    lw         $a5,624($s0)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L0000445c
    move       $a0,$zero
    dsll       $t0,$a0,0x2
.L00004430:
    daddu      $t0,$s0,$t0
    ld         $t1,864($s1)
    lw         $t0,2240($t0)
    sw         $t0,0($t1)
    lw         $a7,624($s0)
    srl        $a7,$a7,0xa
    addiu      $a0,$a0,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a0,$a7
    bnez       $a7, .L00004430
    dsll       $t0,$a0,0x2
.L0000445c:
    ld         $t0,864($s1)
.L00004460:
    li         $a7,15608
    sw         $a7,0($t0)
    ld         $a6,864($s1)
    sw         $zero,0($a6)
    ld         $a5,864($s1)
    sw         $zero,0($a5)
    ld         $a4,864($s1)
    sw         $zero,0($a4)
    ld         $a3,864($s1)
    sw         $zero,0($a3)
    ld         $a2,864($s1)
    sw         $zero,0($a2)
    ld         $a1,864($s1)
    sw         $zero,0($a1)
    ld         $a0,864($s1)
    sw         $zero,0($a0)
    ld         $v1,864($s1)
    sw         $zero,0($v1)
    ld         $v0,864($s1)
    sw         $zero,0($v0)
    ld         $at,864($s1)
    sw         $zero,0($at)
    ld         $ra,864($s1)
    sw         $zero,0($ra)
    ld         $t9,864($s1)
    sw         $zero,0($t9)
    ld         $t8,864($s1)
    sw         $zero,0($t8)
    ld         $t3,864($s1)
    sw         $zero,0($t3)
    ld         $t2,864($s1)
    sw         $zero,0($t2)
    ld         $t1,864($s1)
    sw         $zero,0($t1)
    ld         $t0,864($s1)
    li         $a7,15609
    sw         $a7,0($t0)
    ld         $a6,864($s1)
    sw         $zero,0($a6)
    ld         $a5,864($s1)
    sw         $zero,0($a5)
    ld         $a4,864($s1)
    sw         $zero,0($a4)
    ld         $a3,864($s1)
    sw         $zero,0($a3)
    ld         $a2,864($s1)
    sw         $zero,0($a2)
    ld         $a1,864($s1)
    sw         $zero,0($a1)
    ld         $a0,864($s1)
    sw         $zero,0($a0)
    ld         $v1,864($s1)
    sw         $zero,0($v1)
    ld         $v0,864($s1)
    sw         $zero,0($v0)
    ld         $at,864($s1)
    sw         $zero,0($at)
    ld         $ra,864($s1)
    sw         $zero,0($ra)
    ld         $t9,864($s1)
    sw         $zero,0($t9)
    ld         $t8,864($s1)
    sw         $zero,0($t8)
    ld         $t3,864($s1)
    sw         $zero,0($t3)
    ld         $t2,864($s1)
    sw         $zero,0($t2)
    ld         $t1,864($s1)
    sw         $zero,0($t1)
    ld         $t0,864($s1)
    li         $a7,15610
    sw         $a7,0($t0)
    ld         $a6,864($s1)
    sw         $zero,0($a6)
    ld         $a5,864($s1)
    sw         $zero,0($a5)
    ld         $a4,864($s1)
    sw         $zero,0($a4)
    ld         $a3,864($s1)
    sw         $zero,0($a3)
    ld         $a2,864($s1)
    sw         $zero,0($a2)
    ld         $a1,864($s1)
    sw         $zero,0($a1)
    ld         $a0,864($s1)
    sw         $zero,0($a0)
    ld         $v1,864($s1)
    sw         $zero,0($v1)
    ld         $v0,864($s1)
    sw         $zero,0($v0)
    ld         $at,864($s1)
    sw         $zero,0($at)
    ld         $ra,864($s1)
    sw         $zero,0($ra)
    ld         $t9,864($s1)
    sw         $zero,0($t9)
    ld         $t8,864($s1)
    sw         $zero,0($t8)
    ld         $t3,864($s1)
    sw         $zero,0($t3)
    ld         $t2,864($s1)
    sw         $zero,0($t2)
    ld         $t1,864($s1)
    sw         $zero,0($t1)
    ld         $t0,864($s1)
    li         $a7,15611
    sw         $a7,0($t0)
    ld         $a6,864($s1)
    sw         $zero,0($a6)
    ld         $a5,864($s1)
    sw         $zero,0($a5)
    ld         $a4,864($s1)
    sw         $zero,0($a4)
    ld         $a3,864($s1)
    sw         $zero,0($a3)
    ld         $a2,864($s1)
    sw         $zero,0($a2)
    ld         $a1,864($s1)
    sw         $zero,0($a1)
    ld         $a0,864($s1)
    sw         $zero,0($a0)
    ld         $v1,864($s1)
    sw         $zero,0($v1)
    ld         $v0,864($s1)
    sw         $zero,0($v0)
    ld         $at,864($s1)
    sw         $zero,0($at)
    ld         $ra,864($s1)
    sw         $zero,0($ra)
    ld         $t9,864($s1)
    sw         $zero,0($t9)
    ld         $t8,864($s1)
    sw         $zero,0($t8)
    ld         $t3,864($s1)
    sw         $zero,0($t3)
    ld         $t2,864($s1)
    sw         $zero,0($t2)
    ld         $t1,864($s1)
    sw         $zero,0($t1)
.L0000468c:
    ld         $ra,16($sp)
    ld         $s1,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000046a0:
    lui        $a1,0x3000
    nor        $a2,$a2,$zero
    ori        $a1,$a1,0xc02e
    and        $a2,$a3,$a2
    lui        $a0,0x2f00
    beq        $a2, $a1, .L000042f0
    ori        $a0,$a0,0xc02e
    beql       $a2, $a0, .L000042f4
    ld         $t0,864($s1)
    b          .L00004750
    ld         $a1,-30720($gp)
.L000046cc:
    lui        $a4,0x3000
    nor        $a0,$a0,$zero
    ori        $a4,$a4,0xc02e
    and        $a0,$a3,$a0
    lui        $a2,0x2f00
    beq        $a0, $a4, .L00004350
    ori        $a2,$a2,0xc02e
    beql       $a0, $a2, .L00004354
    ld         $t9,864($s1)
    b          .L00004768
    ld         $a1,-30720($gp)
.L000046f8:
    lui        $a4,0x3000
    nor        $a0,$a0,$zero
    ori        $a4,$a4,0xc02e
    and        $a0,$a3,$a0
    lui        $a2,0x2f00
    beq        $a0, $a4, .L000043b0
    ori        $a2,$a2,0xc02e
    beql       $a0, $a2, .L000043b4
    ld         $a0,864($s1)
    b          .L00004780
    ld         $a2,-30720($gp)
.L00004724:
    lui        $a4,0x3000
    nor        $a0,$a0,$zero
    ori        $a4,$a4,0xc02e
    and        $a0,$a3,$a0
    lui        $a2,0x2f00
    beq        $a0, $a4, .L00004410
    ori        $a2,$a2,0xc02e
    beql       $a0, $a2, .L00004414
    ld         $a6,864($s1)
    b          .L00004798
    ld         $a2,-30720($gp)
.L00004750:
    li         $a0,7
    daddiu     $a2,$a1,784
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L00004340
    lw         $a3,592($s0)
.L00004768:
    li         $a0,7
    daddiu     $a2,$a1,800
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L000043a0
    lw         $a3,608($s0)
.L00004780:
    li         $a0,7
    daddiu     $a1,$a2,560
    jal        cmn_err
    daddiu     $a2,$a2,816
    b          .L00004400
    lw         $a3,624($s0)
.L00004798:
    li         $a0,7
    daddiu     $a1,$a2,560
    jal        cmn_err
    daddiu     $a2,$a2,824
    b          .L00004460
    ld         $t0,864($s1)

glabel odsyRestorePIOPixel
    ld         $t0,192($a1)
    lw         $a4,184($t0)
    sll        $at,$a4,0xf
    move       $t3,$a0
    ld         $a7,176($a1)
    daddiu     $sp,$sp,-16
    move       $t1,$a3
    bltz       $at, .L000048d0
    sd         $ra,0($sp)
    lw         $a6,7048($a7)
.L000047d8:
    srl        $a0,$a4,0x5
    andi       $a0,$a0,0xf
    andi       $a3,$a4,0x1f
    ld         $t8,-30720($gp)
    beqz       $a0, .L00004830
    dsll32     $t2,$a0,0x0
    beqz       $a3, .L00004830
    dsrl       $a5,$t2,0x1d
    daddu      $a5,$t8,$a5
    lw         $t9,4($a5)
    beqz       $t9, .L00004828
    lw         $a5,0($a5)
    dsll32     $t2,$a3,0x0
    dsrl       $t2,$t2,0x1e
    daddu      $t2,$t8,$t2
    lw         $t2,104($t2)
    mult       $t2,$a5
    mflo       $a5
.L00004828:
    bnez       $a5, .L00004838
    nop
.L00004830:
    lw         $a5,7040($a7)
    ld         $t8,-30720($gp)
.L00004838:
    lw         $t9,128($t0)
    srl        $t9,$t9,0x6
    li         $ra,2
    andi       $t9,$t9,0x3
    beq        $t9, $ra, .L000048d8
    nop
    lw         $a4,7032($a7)
    lw         $a3,7028($a7)
.L00004858:
    blez       $a3, .L00004914
    slti       $a7,$a3,2049
    beqz       $a7, .L00004918
    daddiu     $a1,$t8,832
    blez       $a4, .L00004914
    slti       $ra,$a4,2049
    beqz       $ra, .L00004918
    daddiu     $a1,$t8,832
    blez       $a5, .L00004918
    daddiu     $a1,$t8,832
    lw         $a1,172($t0)
    sll        $a1,$a1,0x2
    subu       $a1,$a1,$a6
    divu       $zero,$a1,$a5
    mflo       $a0
    div        $zero,$a0,$a3
    mflo       $at
    teq        $a3,$zero,0x7
    sltu       $v0,$at,$a4
    teq        $a5,$zero,0x7
    mfhi       $v1
    sw         $v1,0($a2)
    bnez       $v0, .L000048c4
    sw         $at,0($t1)
    sw         $zero,0($t1)
.L000048c4:
    ld         $ra,0($sp)
.L000048c8:
    jr         $ra
    daddiu     $sp,$sp,16
.L000048d0:
    b          .L000047d8
    lw         $a6,7044($a7)
.L000048d8:
    lw         $a4,784($t0)
    lw         $t2,768($t0)
    subu       $a3,$t2,$a4
    lw         $a7,772($t0)
    bltz       $a3, .L00004904
    lw         $a0,788($t0)
.L000048f0:
    subu       $a4,$a7,$a0
    bgez       $a4, .L00004858
    nop
    b          .L0000490c
    nop
.L00004904:
    b          .L000048f0
    subu       $a3,$a4,$t2
.L0000490c:
    b          .L00004858
    subu       $a4,$a0,$a7
.L00004914:
    daddiu     $a1,$t8,832
.L00004918:
    lh         $a2,790($t3)
    jal        cmn_err
    li         $a0,4
    b          .L000048c8
    ld         $ra,0($sp)

glabel odsySetProgram
    daddiu     $sp,$sp,-64
    sd         $s3,16($sp)
    ld         $s3,72($a0)
    sd         $ra,48($sp)
    sd         $s1,56($sp)
    sd         $s5,40($sp)
    sd         $s4,24($sp)
    ld         $s4,176($a1)
    slti       $at,$a2,2
    sd         $s2,8($sp)
    dsll       $s2,$a2,0x5
    move       $a3,$a2
    sd         $s0,32($sp)
    daddu      $s2,$s4,$s2
    move       $s0,$a0
    beqz       $at, .L00004b64
    lw         $s5,10992($s2)
    sltiu      $t8,$s5,254
    beqz       $t8, .L00004b98
    ld         $a1,-30720($gp)
    lw         $s1,10996($s2)
    lw         $a1,11064($s4)
    lw         $t9,11060($s4)
    sd         $t9,0($sp)
    beqz       $s1, .L000049a8
    addu       $a0,$s1,$a1
    sltiu      $ra,$a1,1848
    bnez       $ra, .L000049a8
    addiu      $a2,$a0,-1848
    b          .L000049b0
    move       $a0,$s0
.L000049a8:
    move       $a2,$a1
    move       $a0,$s0
.L000049b0:
    li         $a3,1
    jal        odsyDownloadUcode
    move       $a4,$s3
    bnez       $v0, .L00004bc8
    ld         $a1,-30720($gp)
    beqz       $s1, .L00004a10
    ld         $at,0($sp)
    beq        $s1, $at, .L00004a10
    li         $a3,0x8554
    daddu      $a3,$a3,$s0
    lw         $a3,0($a3)
    subu       $a3,$a3,$s1
    sltiu      $v0,$a3,200
    bnez       $v0, .L000049f0
    nop
    li         $a3,199
.L000049f0:
    move       $a0,$s0
    li         $a1,1848
    move       $a2,$s1
    jal        odsyDownloadUcode
    move       $a4,$s3
    bnez       $v0, .L00004c24
    ld         $a1,-30720($gp)
    sw         $s1,11060($s4)
.L00004a10:
    move       $a0,$s0
    lw         $a2,11004($s2)
    li         $a3,1
    lw         $a1,11000($s2)
    jal        odsyDownloadUcode
    move       $a4,$s3
    bnez       $v0, .L00004bf4
    dsll32     $a3,$s5,0x0
    dsrl       $a3,$a3,0x1e
    addiu      $a4,$s5,1
    lw         $a5,11000($s2)
    lui        $at,0x3300
    srl        $a6,$a4,0xa
    sw         $a5,11064($s4)
    andi       $a4,$a4,0x3ff
    sll        $a6,$a6,0x17
    ld         $a5,864($s0)
    ori        $at,$at,0x8000
    or         $a4,$a4,$a6
    daddu      $a3,$s4,$a3
    or         $a4,$at,$a4
    sw         $a4,0($a5)
    lw         $a3,9948($a3)
    lui        $t8,0x2900
    srl        $a5,$a3,0xa
    andi       $a3,$a3,0x3ff
    sll        $a5,$a5,0x17
    ld         $a4,864($s0)
    ori        $t8,$t8,0x8000
    or         $a3,$a3,$a5
    or         $a3,$t8,$a3
    sw         $a3,0($a4)
    ld         $a3,864($s0)
    lui        $a2,0x9080
    ori        $a2,$a2,0x8800
    sw         $a2,0($a3)
    ld         $a1,864($s0)
    sw         $zero,0($a1)
    ld         $a0,864($s0)
    sw         $zero,0($a0)
    lw         $v1,10988($s2)
    srl        $a0,$v1,0xa
    andi       $v1,$v1,0x3ff
    sll        $a0,$a0,0x17
    ld         $v0,864($s0)
    or         $v1,$v1,$a0
    or         $at,$at,$v1
    sw         $at,0($v0)
    lw         $ra,10976($s2)
    srl        $at,$ra,0xa
    andi       $ra,$ra,0x3ff
    sll        $at,$at,0x17
    ld         $t9,864($s0)
    or         $ra,$ra,$at
    or         $t8,$t8,$ra
    sw         $t8,0($t9)
    lw         $t3,10980($s2)
    andi       $t0,$t3,0x3ff
    srl        $t3,$t3,0xa
    sll        $t3,$t3,0x17
    lui        $t2,0x2a00
    ld         $t1,864($s0)
    or         $t0,$t0,$t3
    ori        $t2,$t2,0x8000
    or         $t0,$t0,$t2
    sw         $t0,0($t1)
    lw         $a7,10984($s2)
    andi       $a4,$a7,0x3ff
    srl        $a7,$a7,0xa
    sll        $a7,$a7,0x17
    lui        $a6,0x2c00
    ld         $a5,864($s0)
    or         $a4,$a4,$a7
    ori        $a6,$a6,0x8000
    or         $a4,$a4,$a6
    sw         $a4,0($a5)
    ld         $s2,8($sp)
.L00004b44:
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    ld         $ra,48($sp)
    ld         $s0,32($sp)
    ld         $s5,40($sp)
    ld         $s1,56($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00004b64:
    ld         $a1,-30720($gp)
    li         $a4,2
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,928
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b44
    ld         $s2,8($sp)
.L00004b98:
    lh         $a2,790($a0)
    li         $a0,4
    move       $a3,$s5
    jal        cmn_err
    daddiu     $a1,$a1,1016
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b44
    ld         $s2,8($sp)
.L00004bc8:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1096
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b44
    ld         $s2,8($sp)
.L00004bf4:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1224
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b44
    ld         $s2,8($sp)
.L00004c24:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1160
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b44
    ld         $s2,8($sp)

glabel odsyRestartContext
    daddiu     $sp,$sp,-112
    sd         $s3,32($sp)
    sd         $zero,0($sp)
    ld         $s3,176($a1)
    sd         $s1,40($sp)
    ld         $s1,192($a1)
    sw         $zero,12($sp)
    sw         $zero,8($sp)
    sd         $s6,24($sp)
    lw         $s6,128($s1)
    sd         $s2,72($sp)
    sd         $ra,80($sp)
    andi       $s6,$s6,0xf
    sd         $s0,56($sp)
    sltiu      $s6,$s6,11
    move       $s0,$a0
    sd         $s5,48($sp)
    move       $s5,$a1
    beqz       $s6, .L00004cac
    sd         $s4,96($sp)
    lw         $s2,128($s1)
    b          .L00004cb0
    andi       $s2,$s2,0xf
.L00004cac:
    li         $s2,15
.L00004cb0:
    lw         $s4,128($s1)
    ld         $at,864($s0)
    lw         $a3,128($s1)
    lui        $ra,0x3400
    ori        $ra,$ra,0x8000
    sw         $ra,0($at)
    ld         $t9,864($s0)
    lui        $t2,0x1
    ori        $a7,$t2,0x443
    sw         $a7,0($t9)
    ld         $t8,864($s0)
    li         $a5,250
    sw         $a5,0($t8)
    ld         $t3,864($s0)
    ori        $t8,$t2,0x46
    sw         $t8,0($t3)
    ld         $t1,864($s0)
    sw         $t8,0($t1)
    ld         $t0,864($s0)
    ori        $t1,$t2,0x19
    sw         $t1,0($t0)
    ld         $a6,864($s0)
    sw         $a7,0($a6)
    ld         $a4,864($s0)
    li         $ra,150
    sw         $ra,0($a4)
    ld         $a2,864($s0)
    sw         $t8,0($a2)
    ld         $a1,864($s0)
    sw         $t8,0($a1)
    ld         $a0,864($s0)
    sw         $t8,0($a0)
    ld         $v1,864($s0)
    sw         $t8,0($v1)
    ld         $v0,864($s0)
    sw         $a7,0($v0)
    ld         $at,864($s0)
    sw         $a5,0($at)
    ld         $t9,864($s0)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $t8,0($t3)
    ld         $a4,864($s0)
    ori        $t2,$t2,0x1017
    sw         $t2,0($a4)
    ld         $a2,864($s0)
    lw         $a1,6948($s3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,6952($s3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,6956($s3)
    sw         $at,0($v0)
    ld         $t9,864($s0)
    lw         $t3,6960($s3)
    sw         $t3,0($t9)
    ld         $t0,864($s0)
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    sw         $ra,0($a6)
    ld         $a4,864($s0)
    sw         $t8,0($a4)
    ld         $a2,864($s0)
    sw         $t8,0($a2)
    ld         $a1,864($s0)
    sw         $t8,0($a1)
    ld         $a0,864($s0)
    sw         $t8,0($a0)
    ld         $v1,864($s0)
    sw         $a7,0($v1)
    ld         $v0,864($s0)
    sw         $a5,0($v0)
    ld         $at,864($s0)
    sw         $t8,0($at)
    ld         $t9,864($s0)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $t2,0($t3)
    ld         $t0,864($s0)
    lw         $a6,6948($s3)
    sw         $a6,0($t0)
    ld         $a4,864($s0)
    lw         $a2,6952($s3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    sw         $zero,0($a1)
    ld         $a0,864($s0)
    lw         $v1,6960($s3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    sw         $t2,0($v0)
    ld         $at,864($s0)
    lw         $t9,6948($s3)
    sw         $t9,0($at)
    ld         $t3,864($s0)
    lw         $t0,6952($s3)
    sw         $t0,0($t3)
    ld         $a4,864($s0)
    lw         $a2,6956($s3)
    lui        $a6,0x80
    or         $a2,$a2,$a6
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,6960($s3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    sw         $a7,0($v1)
    ld         $v0,864($s0)
    sw         $a5,0($v0)
    ld         $at,864($s0)
    sw         $t8,0($at)
    ld         $t9,864($s0)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $t1,0($t3)
    ld         $t0,864($s0)
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    sw         $ra,0($a6)
    ld         $a4,864($s0)
    sw         $t8,0($a4)
    ld         $a2,864($s0)
    sw         $t8,0($a2)
    ld         $a1,864($s0)
    sw         $t8,0($a1)
    ld         $a0,864($s0)
    sw         $t8,0($a0)
    ld         $v1,864($s0)
    sw         $a7,0($v1)
    ld         $v0,864($s0)
    sw         $a5,0($v0)
    ld         $at,864($s0)
    sw         $t8,0($at)
    ld         $t9,864($s0)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $t2,0($t3)
    ld         $t1,864($s0)
    lw         $t0,6948($s3)
    sw         $t0,0($t1)
    ld         $a6,864($s0)
    lw         $a4,6952($s3)
    sw         $a4,0($a6)
    ld         $a2,864($s0)
    lw         $a1,6956($s3)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,6960($s3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    sw         $a7,0($v0)
    ld         $at,864($s0)
    sw         $ra,0($at)
    ld         $t9,864($s0)
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $t8,0($t3)
    ld         $t2,864($s0)
    sw         $t8,0($t2)
    ld         $t1,864($s0)
    sw         $t8,0($t1)
    ld         $t0,864($s0)
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    sw         $a5,0($a6)
    ld         $a4,864($s0)
    sw         $t8,0($a4)
    srl        $a3,$a3,0x6
    li         $a6,10
    ld         $t9,864($s0)
    sd         $s7,88($sp)
    srl        $s4,$s4,0x4
    andi       $a3,$a3,0x3
    andi       $s4,$s4,0x3
    beq        $a6, $s2, .L00005460
    sw         $t8,0($t9)
    move       $s7,$zero
.L00004f78:
    lw         $v0,128($s1)
    li         $v1,-49
    and        $v0,$v0,$v1
    li         $v1,-193
    and        $v0,$v0,$v1
    sw         $v0,128($s1)
    lw         $at,128($s1)
    srl        $at,$at,0x15
    andi       $at,$at,0x7
    sltiu      $at,$at,7
    beqz       $at, .L00004fdc
    nop
    lw         $a0,128($s1)
    lw         $a1,128($s1)
    srl        $a1,$a1,0x15
    andi       $a1,$a1,0x7
    lui        $a2,0xe0
    subu       $a1,$a1,$s4
    nor        $a2,$a2,$zero
    andi       $a1,$a1,0x7
    and        $a0,$a0,$a2
    sll        $a1,$a1,0x15
    or         $a0,$a0,$a1
    b          .L00004fec
    sw         $a0,128($s1)
.L00004fdc:
    lw         $a2,128($s1)
    lui        $a4,0xe0
    or         $a2,$a2,$a4
    sw         $a2,128($s1)
.L00004fec:
    lw         $a5,128($s1)
    srl        $a5,$a5,0x15
    andi       $a5,$a5,0x7
    beqz       $a5, .L00005028
    move       $a2,$zero
    li         $a6,2
    beq        $s2, $a6, .L00005024
    li         $a7,6
    beq        $s2, $a7, .L00005024
    li         $t0,9
    beq        $s2, $t0, .L00005028
    move       $a2,$zero
    b          .L00005028
    li         $a2,1
.L00005024:
    move       $a2,$zero
.L00005028:
    lw         $a7,128($s1)
    lw         $t2,128($s1)
    lw         $t0,128($s1)
    lw         $t3,128($s1)
    srl        $t3,$t3,0xc
    andi       $t3,$t3,0x3
    subu       $t3,$t3,$s4
    addiu      $t3,$t3,3
    li         $t8,3
    divu       $zero,$t3,$t8
    mfhi       $t1
    li         $t3,-12289
    andi       $t1,$t1,0x3
    and        $t0,$t0,$t3
    sll        $t1,$t1,0xc
    or         $t0,$t0,$t1
    sw         $t0,128($s1)
    lw         $t1,128($s1)
    srl        $t1,$t1,0xe
    andi       $t1,$t1,0x3
    subu       $t1,$t1,$s4
    li         $t3,0xc000
    addiu      $t1,$t1,4
    nor        $t3,$t3,$zero
    andi       $t1,$t1,0x3
    and        $t0,$t0,$t3
    sll        $t1,$t1,0xe
    or         $t0,$t0,$t1
    sw         $t0,128($s1)
    srl        $t2,$t2,0x15
    lw         $t1,128($s1)
    li         $a6,2
    andi       $t2,$t2,0x7
    sltu       $a6,$a6,$t2
    srl        $t1,$t1,0xe
    li         $t2,-2049
    andi       $t1,$t1,0x1
    and        $t0,$t0,$t2
    sll        $t1,$t1,0xb
    srl        $a7,$a7,0x15
    or         $t0,$t0,$t1
    sw         $t0,128($s1)
    li         $a4,1
    andi       $a7,$a7,0x7
    lw         $a5,8($sp)
    sltu       $a4,$a4,$a7
    lw         $a1,12($sp)
    lui        $a7,0xff
    sll        $a5,$a5,0xc
    ori        $a7,$a7,0xf000
    andi       $a1,$a1,0xfff
    and        $a5,$a5,$a7
    lw         $a0,0($s5)
    or         $a1,$a1,$a5
    lui        $a5,0x7
    sll        $a0,$a0,0xc
    ori        $a5,$a5,0xf000
    and        $a0,$a0,$a5
    andi       $a5,$s2,0xf
    beqz       $s7, .L00005638
    or         $a0,$a0,$a5
    beqz       $s6, .L00005150
    nop
    ld         $v0,864($s0)
.L00005128:
    lui        $t9,0x1
    ori        $at,$t9,0x400
    sw         $at,0($v0)
    ld         $ra,864($s0)
    sw         $s2,0($ra)
    ld         $ra,864($s0)
    ori        $t9,$t9,0x444
    sw         $t9,0($ra)
    ld         $t8,864($s0)
    sw         $zero,0($t8)
.L00005150:
    ld         $a5,864($s0)
    lui        $a4,0x1
    ori        $a4,$a4,0x850
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    sw         $a0,0($a2)
    ld         $v1,864($s0)
    beqz       $s6, .L000051d0
    sw         $a1,0($v1)
    ld         $t8,864($s0)
    li         $t3,1856
    sw         $t3,0($t8)
    ld         $t2,864($s0)
    li         $t1,480
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    li         $a7,1857
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    lw         $a5,128($s1)
    beqz       $s4, .L00005438
    sw         $a5,0($a6)
    ld         $t9,-30696($gp)
    dsll32     $ra,$s2,0x0
    dsrl       $ra,$ra,0x1d
    daddu      $t9,$t9,$ra
    ld         $t9,0($t9)
    move       $a0,$s0
    move       $a1,$s5
    move       $a2,$s4
    jalr       $t9
    daddiu     $a4,$sp,0
.L000051d0:
    li         $at,10
    beq        $at, $s2, .L000052f8
    move       $a0,$s0
    move       $a1,$s5
    daddiu     $a2,$s1,132
    ld         $a3,0($sp)
    jal        odsyRestoreVB
    move       $a4,$s4
    lw         $v0,10972($s3)
    beqz       $v0, .L000052d8
    move       $a0,$s0
    move       $a1,$s5
    jal        odsySetProgram
    lw         $a2,11056($s3)
    lw         $a4,9896($s3)
    lw         $a7,9896($s3)
    lui        $a6,0x3300
    srl        $a7,$a7,0xa
    ld         $a5,864($s0)
    andi       $a4,$a4,0x3ff
    sll        $a7,$a7,0x17
    ori        $a6,$a6,0x8000
    or         $a4,$a4,$a7
    or         $a4,$a4,$a6
    sw         $a4,0($a5)
    lw         $a3,9856($s3)
    lw         $a6,9856($s3)
    lui        $a5,0x2900
    srl        $a6,$a6,0xa
    ld         $a4,864($s0)
    andi       $a3,$a3,0x3ff
    sll        $a6,$a6,0x17
    ori        $a5,$a5,0x8000
    or         $a3,$a3,$a6
    or         $a3,$a3,$a5
    sw         $a3,0($a4)
    lw         $a2,9860($s3)
    lw         $a5,9860($s3)
    lui        $a4,0x2a00
    srl        $a5,$a5,0xa
    ld         $a3,864($s0)
    andi       $a2,$a2,0x3ff
    sll        $a5,$a5,0x17
    ori        $a4,$a4,0x8000
    or         $a2,$a2,$a5
    or         $a2,$a2,$a4
    sw         $a2,0($a3)
    lw         $a1,9868($s3)
    lw         $a4,9868($s3)
    lui        $a3,0x2c00
    srl        $a4,$a4,0xa
    ld         $a2,864($s0)
    andi       $a1,$a1,0x3ff
    sll        $a4,$a4,0x17
    ori        $a3,$a3,0x8000
    or         $a1,$a1,$a4
    or         $a1,$a1,$a3
    sw         $a1,0($a2)
    ld         $a1,864($s0)
    lui        $a0,0x2780
    ori        $a0,$a0,0x83ff
    sw         $a0,0($a1)
    ld         $a0,864($s0)
    lui        $v1,0x2800
    ori        $v1,$v1,0x80ff
    sw         $v1,0($a0)
.L000052d8:
    bnez       $s6, .L000052f8
    lui        $a5,0x12
    ld         $t0,864($s0)
    lui        $a7,0x1
    ori        $a7,$a7,0x658
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    sw         $a5,0($a6)
.L000052f8:
    lw         $a7,180($s1)
    ld         $t0,-30704($gp)
    lw         $a0,188($s1)
    move       $a1,$s1
    beqz       $a7, .L00005700
    ld         $t0,0($t0)
    beqz       $a0, .L00005708
    addiu      $a4,$a0,-1
.L00005318:
    move       $a0,$a4
    li         $a3,-1
    andi       $a5,$a4,0x1
    daddiu     $a1,$s1,4
    dsll32     $a3,$a3,0x0
    ld         $a6,864($s0)
    li         $a2,-1
    beqz       $a5, .L00005714
    dsrl32     $a2,$a2,0x0
    ld         $t3,-30688($gp)
    sd         $t3,0($a6)
    lwu        $t2,180($s1)
    lwu        $t0,176($s1)
    dsll32     $t2,$t2,0x0
    ld         $t1,864($s0)
    and        $t0,$a2,$t0
    and        $t2,$a3,$t2
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    ld         $a7,864($s0)
    sd         $zero,0($a7)
    ld         $a5,864($s0)
    sd         $zero,0($a5)
    lwu        $a4,4($s1)
    ld         $a5,864($s0)
    daddiu     $a1,$s1,8
    and        $a4,$a2,$a4
    sd         $a4,0($a5)
.L00005388:
    ld         $s2,72($sp)
.L0000538c:
    ld         $s6,24($sp)
    ld         $ra,80($sp)
    ld         $s1,40($sp)
    lw         $v0,9900($s3)
    lw         $v1,9900($s3)
    ld         $s5,48($sp)
    slti       $at,$a0,2
    ld         $s7,88($sp)
    lui        $t8,0x3400
    srl        $v1,$v1,0xa
    ld         $t9,864($s0)
    andi       $v0,$v0,0x3ff
    sll        $v1,$v1,0x17
    ld         $s4,96($sp)
    ori        $t8,$t8,0x8000
    or         $v0,$v0,$v1
    or         $t8,$t8,$v0
    bnez       $at, .L00005418
    sw         $t8,0($t9)
    li         $a3,-1
    dsll32     $a3,$a3,0x0
    li         $a2,-1
    dsrl32     $a2,$a2,0x0
.L000053e8:
    daddiu     $a1,$a1,8
    lwu        $a7,-8($a1)
    addiu      $a0,$a0,-2
    lwu        $a4,-4($a1)
    slti       $a6,$a0,2
    dsll32     $a7,$a7,0x0
    ld         $a5,864($s0)
    and        $a4,$a2,$a4
    and        $a7,$a3,$a7
    or         $a4,$a4,$a7
    beqz       $a6, .L000053e8
    sd         $a4,0($a5)
.L00005418:
    beqz       $a0, .L0000542c
    ld         $s3,32($sp)
    ld         $t1,864($s0)
    lw         $t0,0($a1)
    sw         $t0,0($t1)
.L0000542c:
    ld         $s0,56($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00005438:
    beqz       $s7, .L000051d0
    lui        $t8,0x8080
    ld         $t9,864($s0)
    ori        $t8,$t8,0xc800
    sw         $t8,0($t9)
    ld         $t3,864($s0)
    sw         $zero,0($t3)
    ld         $t2,864($s0)
    b          .L000051d0
    sw         $zero,0($t2)
.L00005460:
    lw         $t9,6964($s3)
    andi       $t9,$t9,0x7
    move       $s7,$zero
    beqz       $t9, .L00005758
    sd         $t9,16($sp)
    lw         $ra,128($s1)
    srl        $ra,$ra,0x6
    andi       $ra,$ra,0x3
    beqz       $ra, .L00005490
    lw         $a0,172($s1)
    move       $s4,$zero
    li         $s7,1
.L00005490:
    beqz       $a0, .L000054ac
    sd         $a3,64($sp)
    move       $a0,$s0
    move       $a1,$s5
    daddiu     $a2,$sp,8
    jal        odsyRestorePIOPixel
    daddiu     $a3,$sp,12
.L000054ac:
    move       $a0,$s0
    move       $a1,$s5
    jal        odsySetProgram
    lw         $a2,11056($s3)
    move       $a0,$s0
    move       $a1,$s5
    daddiu     $a2,$s1,132
    ld         $a3,0($sp)
    jal        odsyRestoreVB
    move       $a4,$zero
    lui        $a1,0xcf80
    ld         $a3,64($sp)
    ld         $at,16($sp)
    beqz       $at, .L00005568
    ori        $a1,$a1,0xa92f
    ld         $a2,864($s0)
    sw         $a1,0($a2)
    ld         $a0,864($s0)
    lw         $v1,6988($s3)
    sw         $v1,0($a0)
    ld         $v0,864($s0)
    lw         $at,6992($s3)
    sw         $at,0($v0)
    ld         $ra,864($s0)
    lw         $t9,6996($s3)
    sw         $t9,0($ra)
    ld         $t8,864($s0)
    lw         $t3,7000($s3)
    sw         $t3,0($t8)
    ld         $t2,864($s0)
    lw         $t1,7004($s3)
    sw         $t1,0($t2)
    ld         $t0,864($s0)
    lw         $a7,7008($s3)
    sw         $a7,0($t0)
    ld         $a6,864($s0)
    lw         $a5,7012($s3)
    sw         $a5,0($a6)
    ld         $a4,864($s0)
    lw         $a2,7016($s3)
    sw         $a2,0($a4)
    ld         $a1,864($s0)
    lw         $a0,7020($s3)
    sw         $a0,0($a1)
    ld         $v1,864($s0)
    lw         $v0,7024($s3)
    sw         $v0,0($v1)
.L00005568:
    lw         $t1,9896($s3)
    lw         $t8,9896($s3)
    lui        $t3,0x3300
    srl        $t8,$t8,0xa
    ld         $t2,864($s0)
    andi       $t1,$t1,0x3ff
    sll        $t8,$t8,0x17
    ori        $t3,$t3,0x8000
    or         $t1,$t1,$t8
    or         $t1,$t1,$t3
    sw         $t1,0($t2)
    lw         $t0,9856($s3)
    lw         $t3,9856($s3)
    lui        $t2,0x2900
    srl        $t3,$t3,0xa
    ld         $t1,864($s0)
    andi       $t0,$t0,0x3ff
    sll        $t3,$t3,0x17
    ori        $t2,$t2,0x8000
    or         $t0,$t0,$t3
    or         $t0,$t0,$t2
    sw         $t0,0($t1)
    lw         $a7,9860($s3)
    lw         $t2,9860($s3)
    lui        $t1,0x2a00
    srl        $t2,$t2,0xa
    ld         $t0,864($s0)
    andi       $a7,$a7,0x3ff
    sll        $t2,$t2,0x17
    ori        $t1,$t1,0x8000
    or         $a7,$a7,$t2
    or         $a7,$a7,$t1
    sw         $a7,0($t0)
    lw         $a6,9868($s3)
    lw         $t1,9868($s3)
    lui        $t0,0x2c00
    srl        $t1,$t1,0xa
    ld         $a7,864($s0)
    andi       $a6,$a6,0x3ff
    sll        $t1,$t1,0x17
    ori        $t0,$t0,0x8000
    or         $a6,$a6,$t1
    or         $a6,$a6,$t0
    sw         $a6,0($a7)
    ld         $a6,864($s0)
    lui        $a5,0x1
    ori        $a5,$a5,0x658
    sw         $a5,0($a6)
    ld         $a4,864($s0)
    lui        $a2,0x12
    b          .L00004f78
    sw         $a2,0($a4)
.L00005638:
    lui        $a7,0xff00
    and        $a1,$a1,$a7
    li         $a7,-33
    li         $t0,-17
    sll        $a5,$a2,0x4
    andi       $a5,$a5,0x10
    and        $a0,$a0,$t0
    or         $a0,$a0,$a5
    sll        $a5,$a4,0x5
    andi       $a5,$a5,0x20
    and        $a0,$a0,$a7
    li         $a7,-65
    or         $a0,$a0,$a5
    and        $a0,$a0,$a7
    sll        $a7,$a6,0x6
    andi       $a7,$a7,0x40
    lw         $a5,128($s1)
    li         $t0,-129
    or         $a0,$a0,$a7
    lw         $a7,128($s1)
    and        $a0,$a0,$t0
    srl        $a5,$a5,0xb
    srl        $a7,$a7,0xc
    andi       $a5,$a5,0x1
    li         $t0,-769
    sll        $a5,$a5,0x7
    andi       $a7,$a7,0x3
    andi       $a5,$a5,0x80
    sll        $a7,$a7,0x8
    or         $a0,$a0,$a5
    and        $a0,$a0,$t0
    andi       $a7,$a7,0x300
    lw         $a5,128($s1)
    or         $a0,$a0,$a7
    li         $a7,-3073
    srl        $a5,$a5,0xe
    and        $a0,$a0,$a7
    andi       $a5,$a5,0x3
    lui        $a7,0x18
    sll        $a5,$a5,0xa
    nor        $t0,$a7,$zero
    andi       $a5,$a5,0xc00
    or         $a0,$a0,$a5
    sll        $a5,$s4,0x13
    and        $a5,$a5,$a7
    and        $a0,$a0,$t0
    beqz       $s6, .L00005150
    or         $a0,$a0,$a5
    b          .L00005128
    ld         $v0,864($s0)
.L00005700:
    b          .L0000538c
    ld         $s2,72($sp)
.L00005708:
    move       $a4,$zero
    b          .L00005318
    nop
.L00005714:
    dsll32     $t3,$a7,0x0
    li         $t8,1479
    dsrl32     $t3,$t3,0x0
    dsll32     $t8,$t8,0x4
    and        $t3,$a2,$t3
    or         $t3,$t3,$t8
    sd         $t3,0($a6)
    lwu        $t2,176($s1)
    ld         $t3,864($s0)
    dsll32     $t2,$t2,0x0
    and        $t2,$a3,$t2
    sd         $t2,0($t3)
    ld         $t1,864($s0)
    sd         $zero,0($t1)
    ld         $t0,864($s0)
    b          .L00005388
    sd         $zero,0($t0)
.L00005758:
    move       $s7,$zero
    b          .L000054ac
    sd         $a3,64($sp)

glabel odsyRestoreVertex
    ld         $a3,0($a4)
    daddiu     $sp,$sp,-80
    sd         $a1,0($sp)
    sd         $s3,16($sp)
    ld         $s3,176($a1)
    sd         $s7,48($sp)
    sd         $s0,32($sp)
    sd         $s2,8($sp)
    move       $at,$a2
    move       $s0,$a0
    ld         $s2,192($a1)
    move       $s7,$a5
    sd         $s8,56($sp)
    dsll       $s8,$a5,0x3
    sd         $s5,40($sp)
    move       $s5,$a4
    daddu      $s8,$s2,$s8
    move       $a4,$at
    sd         $s1,64($sp)
    daddiu     $s8,$s8,140
    sd         $ra,24($sp)
    jal        odsyRestoreVB
    move       $a2,$s8
    sd         $s8,0($s5)
    lw         $ra,10972($s3)
    beqz       $ra, .L000057e4
    dsll       $s1,$s7,0x2
    ld         $a1,0($sp)
    daddu      $a2,$s1,$s3
    move       $a0,$s0
    jal        odsySetProgram
    lw         $a2,11040($a2)
.L000057e4:
    daddu      $a0,$s1,$s2
    lw         $a3,256($a0)
    srl        $a4,$a3,0xa
    lui        $a1,0x2f00
    andi       $a4,$a4,0xf
    lui        $a2,0x3000
    ori        $a1,$a1,0xc02e
    beqz       $a4, .L00005880
    ori        $a2,$a2,0xc02e
.L00005808:
    ld         $a6,864($s0)
.L0000580c:
    sw         $a3,0($a6)
    lw         $a5,256($a0)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00005858
    move       $a1,$zero
    daddu      $t0,$a1,$s1
.L00005828:
    dsll       $t0,$t0,0x2
    daddu      $t0,$s2,$t0
    ld         $t1,864($s0)
    lw         $t0,768($t0)
    sw         $t0,0($t1)
    lw         $a7,256($a0)
    srl        $a7,$a7,0xa
    addiu      $a1,$a1,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a1,$a7
    bnez       $a7, .L00005828
    daddu      $t0,$a1,$s1
.L00005858:
    ld         $s2,8($sp)
.L0000585c:
    ld         $s3,16($sp)
    ld         $s0,32($sp)
    ld         $s1,64($sp)
    ld         $ra,24($sp)
    ld         $s5,40($sp)
    ld         $s7,48($sp)
    ld         $s8,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00005880:
    lui        $a4,0x7f
    nor        $a4,$a4,$zero
    and        $a4,$a3,$a4
    beq        $a4, $a2, .L00005808
    nop
    beql       $a4, $a1, .L0000580c
    ld         $a6,864($s0)
    ld         $a1,-30720($gp)
    li         $a0,7
    daddiu     $a2,$a1,1280
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L0000585c
    ld         $s2,8($sp)

glabel restorePoints
    jr         $ra
    nop

glabel restoreLines
    move       $a5,$a3
    addiu      $a5,$a5,3
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    andi       $a5,$a5,0x3
    daddiu     $sp,$sp,-16
    xor        $a5,$a5,$a6
    sd         $ra,0($sp)
    jal        odsyRestoreVertex
    subu       $a5,$a5,$a6
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel restoreLineLoop
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,16($sp)
    sd         $a3,24($sp)
    sd         $ra,40($sp)
    move       $a5,$zero
    sd         $s0,32($sp)
    move       $s0,$a2
    jal        odsyRestoreVertex
    sd         $a4,8($sp)
    slti       $at,$s0,2
    beqz       $at, .L0000593c
    ld         $a6,24($sp)
    ld         $ra,40($sp)
.L00005930:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000593c:
    li         $a7,3
    move       $a3,$a6
    addiu      $a6,$a6,1
    div        $zero,$a6,$a7
    ld         $a0,0($sp)
    ld         $a1,16($sp)
    move       $a2,$s0
    mfhi       $a5
    ld         $a4,8($sp)
    jal        odsyRestoreVertex
    addiu      $a5,$a5,1
    b          .L00005930
    ld         $ra,40($sp)

glabel restoreLineStrip
    move       $a5,$a3
    addiu      $a5,$a5,3
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    andi       $a5,$a5,0x3
    daddiu     $sp,$sp,-16
    xor        $a5,$a5,$a6
    sd         $ra,0($sp)
    jal        odsyRestoreVertex
    subu       $a5,$a5,$a6
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel restoreTriangles
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005a4c
    subu       $s0,$s0,$t8
.L00005a08:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005a08
    subu       $s0,$s0,$t8
.L00005a4c:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restoreTriStrip
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005b18
    subu       $s0,$s0,$t8
.L00005ad4:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005ad4
    subu       $s0,$s0,$t8
.L00005b18:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restoreTriFan
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,16($sp)
    sd         $a3,24($sp)
    sd         $ra,40($sp)
    move       $a5,$zero
    sd         $s0,32($sp)
    move       $s0,$a2
    jal        odsyRestoreVertex
    sd         $a4,8($sp)
    slti       $at,$s0,2
    beqz       $at, .L00005b80
    ld         $ra,40($sp)
.L00005b74:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005b80:
    ld         $a6,24($sp)
    li         $a7,3
    move       $a3,$a6
    addiu      $a6,$a6,1
    div        $zero,$a6,$a7
    ld         $a0,0($sp)
    ld         $a1,16($sp)
    move       $a2,$s0
    mfhi       $a5
    ld         $a4,8($sp)
    jal        odsyRestoreVertex
    addiu      $a5,$a5,1
    b          .L00005b74
    ld         $ra,40($sp)

glabel restoreQuads
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005c5c
    subu       $s0,$s0,$t8
.L00005c18:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005c18
    subu       $s0,$s0,$t8
.L00005c5c:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restoreQuadStrip
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005d28
    subu       $s0,$s0,$t8
.L00005ce4:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005ce4
    subu       $s0,$s0,$t8
.L00005d28:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restorePolygon
    daddiu     $sp,$sp,-80
    sd         $s6,48($sp)
    sd         $s0,56($sp)
    sd         $ra,16($sp)
    sd         $s3,8($sp)
    sd         $s7,40($sp)
    move       $a5,$zero
    sd         $s4,24($sp)
    move       $s4,$a0
    move       $s7,$a1
    sd         $s2,0($sp)
    move       $s2,$a2
    move       $s3,$a3
    sd         $s5,32($sp)
    move       $s5,$a4
    jal        odsyRestoreVertex
    sd         $s8,64($sp)
    subu       $s6,$s3,$s2
    li         $s8,3
    addiu      $s6,$s6,3
    div        $zero,$s6,$s8
    sd         $s1,72($sp)
    move       $s1,$zero
    slti       $at,$s2,2
    addiu      $s6,$s2,-1
    mfhi       $s0
    bnez       $at, .L00005df4
    addiu      $s0,$s0,1
.L00005dc0:
    move       $a0,$s4
    move       $a1,$s7
    move       $a2,$s2
    move       $a3,$s3
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    div        $zero,$s0,$s8
    addiu      $s1,$s1,1
    slt        $t8,$s1,$s6
    mfhi       $s0
    bnez       $t8, .L00005dc0
    addiu      $s0,$s0,1
.L00005df4:
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $s6,48($sp)
    ld         $s4,24($sp)
    ld         $s0,56($sp)
    ld         $s1,72($sp)
    ld         $ra,16($sp)
    ld         $s5,32($sp)
    ld         $s7,40($sp)
    ld         $s8,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel restoreRect
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    ld         $s0,192($a1)
    sd         $s1,8($sp)
    slti       $at,$a2,2
    move       $s1,$a0
    sd         $s2,0($sp)
    move       $s2,$a3
    bnez       $at, .L00005f78
    sd         $ra,24($sp)
    addiu      $a4,$a3,2
    sra        $a5,$a4,0x1f
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    andi       $a4,$a4,0x3
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    dsll       $a4,$a4,0x2
    daddu      $a2,$a4,$s0
    lw         $a3,256($a2)
    srl        $v0,$a3,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L00006008
    lui        $a5,0x7f
.L00005e84:
    ld         $a6,864($s1)
.L00005e88:
    sw         $a3,0($a6)
    lw         $a5,256($a2)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    move       $a0,$zero
    beqz       $a5, .L00005ed8
    ld         $a6,-30720($gp)
    daddu      $t0,$a0,$a4
.L00005ea8:
    dsll       $t0,$t0,0x2
    daddu      $t0,$s0,$t0
    ld         $t1,864($s1)
    lw         $t0,768($t0)
    sw         $t0,0($t1)
    lw         $a7,256($a2)
    srl        $a7,$a7,0xa
    addiu      $a0,$a0,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a0,$a7
    bnez       $a7, .L00005ea8
    daddu      $t0,$a0,$a4
.L00005ed8:
    addiu      $a4,$s2,-1
    sra        $a5,$a4,0x1f
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    andi       $a4,$a4,0x3
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    dsll       $a4,$a4,0x2
    daddu      $a2,$a4,$s0
    lw         $a3,256($a2)
    srl        $t1,$a3,0xa
    andi       $t1,$t1,0xf
    beqz       $t1, .L00006034
    lui        $a5,0x7f
.L00005f10:
    ld         $a6,864($s1)
.L00005f14:
    sw         $a3,0($a6)
    lw         $a5,256($a2)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00005f60
    move       $a0,$zero
    daddu      $t0,$a0,$a4
.L00005f30:
    dsll       $t0,$t0,0x2
    daddu      $t0,$s0,$t0
    ld         $t1,864($s1)
    lw         $t0,768($t0)
    sw         $t0,0($t1)
    lw         $a7,256($a2)
    srl        $a7,$a7,0xa
    addiu      $a0,$a0,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a0,$a7
    bnez       $a7, .L00005f30
    daddu      $t0,$a0,$a4
.L00005f60:
    ld         $ra,24($sp)
.L00005f64:
    ld         $s2,0($sp)
    ld         $s1,8($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00005f78:
    addiu      $a4,$a3,3
    sra        $a5,$a4,0x1f
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    andi       $a4,$a4,0x3
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    dsll       $a4,$a4,0x2
    daddu      $a2,$a4,$s0
    lw         $a3,256($a2)
    srl        $t1,$a3,0xa
    andi       $t1,$t1,0xf
    beqz       $t1, .L00006060
    lui        $a0,0x7f
.L00005fb0:
    ld         $a6,864($s1)
.L00005fb4:
    sw         $a3,0($a6)
    lw         $a5,256($a2)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00005f60
    move       $a0,$zero
    daddu      $t0,$a0,$a4
.L00005fd0:
    dsll       $t0,$t0,0x2
    daddu      $t0,$s0,$t0
    ld         $t1,864($s1)
    lw         $t0,768($t0)
    sw         $t0,0($t1)
    lw         $a7,256($a2)
    srl        $a7,$a7,0xa
    addiu      $a0,$a0,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a0,$a7
    bnez       $a7, .L00005fd0
    daddu      $t0,$a0,$a4
    b          .L00005f64
    ld         $ra,24($sp)
.L00006008:
    lui        $a1,0x3000
    nor        $a5,$a5,$zero
    ori        $a1,$a1,0xc02e
    and        $a5,$a3,$a5
    lui        $a0,0x2f00
    beq        $a5, $a1, .L00005e84
    ori        $a0,$a0,0xc02e
    beql       $a5, $a0, .L00005e88
    ld         $a6,864($s1)
    b          .L0000608c
    ld         $a1,-30720($gp)
.L00006034:
    lui        $a1,0x3000
    nor        $a5,$a5,$zero
    ori        $a1,$a1,0xc02e
    and        $a5,$a3,$a5
    lui        $a0,0x2f00
    beq        $a5, $a1, .L00005f10
    ori        $a0,$a0,0xc02e
    beql       $a5, $a0, .L00005f14
    ld         $a6,864($s1)
    b          .L000060a4
    daddiu     $a2,$a6,1312
.L00006060:
    lui        $a6,0x3000
    nor        $a0,$a0,$zero
    ori        $a6,$a6,0xc02e
    and        $a0,$a3,$a0
    lui        $a5,0x2f00
    beq        $a0, $a6, .L00005fb0
    ori        $a5,$a5,0xc02e
    beql       $a0, $a5, .L00005fb4
    ld         $a6,864($s1)
    b          .L000060b8
    ld         $a1,-30720($gp)
.L0000608c:
    li         $a0,7
    daddiu     $a2,$a1,1288
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L00005ed8
    ld         $a6,-30720($gp)
.L000060a4:
    daddiu     $a1,$a6,560
    jal        cmn_err
    li         $a0,7
    b          .L00005f64
    ld         $ra,24($sp)
.L000060b8:
    li         $a0,7
    daddiu     $a2,$a1,1336
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L00005f64
    ld         $ra,24($sp)

glabel odsyResetHwShadow
    daddiu     $sp,$sp,-16
    li         $a1,2304
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        bzero
    move       $s8,$a0
    sw         $zero,188($s8)
    li         $a3,65
    sw         $a3,176($s8)
    lui        $a1,0xce80
    lui        $a0,0xc580
    ori        $a1,$a1,0xc406
    sw         $a1,272($s8)
    lui        $v1,0xc380
    ori        $a0,$a0,0xcc0d
    sw         $a0,288($s8)
    lui        $v0,0xc480
    ori        $v1,$v1,0xc41e
    sw         $v1,336($s8)
    lui        $t9,0xc680
    ori        $v0,$v0,0xc426
    sw         $v0,352($s8)
    lui        $t8,0xc780
    ori        $t9,$t9,0xd02f
    sw         $t9,384($s8)
    lui        $t3,0xc880
    ori        $t8,$t8,0xd030
    sw         $t8,400($s8)
    lui        $t2,0xc980
    ori        $t3,$t3,0xd031
    sw         $t3,416($s8)
    lui        $a7,0xca80
    ori        $t2,$t2,0xd032
    sw         $t2,432($s8)
    lui        $a6,0xcb80
    ori        $a7,$a7,0xd035
    sw         $a7,480($s8)
    lui        $a5,0xcc80
    ori        $a6,$a6,0xd036
    sw         $a6,496($s8)
    lui        $a4,0xcd80
    ori        $a5,$a5,0xd037
    sw         $a5,512($s8)
    ori        $a4,$a4,0xd038
    sw         $a4,528($s8)
    sw         $a1,576($s8)
    sw         $a0,592($s8)
    sw         $v1,608($s8)
    lui        $a3,0xc180
    sw         $v0,624($s8)
    ori        $a3,$a3,0xcc18
    sw         $a3,304($s8)
    ld         $ra,0($sp)
    lui        $at,0x3000
    ori        $at,$at,0xc02e
    sw         $at,368($s8)
    lui        $a2,0x8080
    lw         $at,128($s8)
    ori        $a2,$a2,0xc800
    sw         $a2,256($s8)
    lui        $a2,0xc280
    ori        $a2,$a2,0xcc1c
    sw         $a2,320($s8)
    lui        $a2,0xd080
    ori        $t1,$a2,0xc433
    sw         $t1,448($s8)
    ori        $t0,$a2,0xcc34
    sw         $t0,464($s8)
    ori        $a3,$a2,0xc439
    sw         $a3,544($s8)
    ori        $a2,$a2,0xcc3a
    sw         $a2,560($s8)
    ori        $at,$at,0xf
    sw         $at,128($s8)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfP_OdsyGLGet
    sw         $zero,0($a3)
    daddiu     $sp,$sp,-80
    sd         $s0,16($sp)
    ld         $s0,40($a0)
    sd         $a2,48($sp)
    lw         $at,816($s0)
    sd         $s1,24($sp)
    move       $v0,$a2
    move       $s1,$a0
    sd         $s2,32($sp)
    move       $s2,$a3
    bnez       $at, .L000063d0
    sd         $ra,56($sp)
.L00006238:
    ld         $v1,72($s1)
    ld         $v1,112($v1)
    ld         $a2,-30720($gp)
    beqz       $v1, .L000063ec
    sd         $v1,8($sp)
    move       $a0,$v0
    daddiu     $a1,$sp,0
    jal        copyin
    li         $a2,4
    bnez       $v0, .L00006404
    ld         $a1,-30720($gp)
    jal        RRM_CheckValidFault
    move       $a0,$s1
    li         $a1,2
    bltz       $v0, .L0000639c
    sd         $s3,64($sp)
    li         $t8,0x8608
    ld         $ra,40($s1)
    lw         $t9,80($ra)
    daddu      $t8,$t8,$s0
    addiu      $t9,$t9,1
    sw         $t9,80($ra)
    lw         $t8,0($t8)
    ld         $s3,8($sp)
    andi       $t8,$t8,0xffff
    sll        $t8,$t8,0x5
    ld         $s3,192($s3)
    dsll32     $t8,$t8,0x0
    dsrl       $t8,$t8,0x1e
    daddu      $s3,$s3,$t8
    sw         $zero,124($s3)
    lw         $a0,0($sp)
    li         $v0,1216
    beqz       $a0, .L00006368
    daddiu     $s3,$s3,124
    li         $t9,1
    beq        $a0, $t9, .L00006384
    li         $v0,1217
    beq        $a0, $a1, .L0000638c
    li         $v0,1218
    li         $ra,3
    beq        $a0, $ra, .L00006394
    li         $v0,1219
    lw         $v0,4($sp)
    dsll32     $at,$v0,0x0
.L000062ec:
    li         $v1,-1
    li         $a2,1500
    ld         $v0,864($s0)
    dsll32     $v1,$v1,0x0
    move       $a1,$s0
    ld         $a0,-30704($gp)
    and        $at,$at,$v1
    ori        $at,$at,0x1
    jal        timeout
    sd         $at,0($v0)
    lw         $a0,0($s3)
    beqz       $a0, .L00006370
    nop
.L00006320:
    ld         $s3,64($sp)
    jal        untimeout_wait
    move       $a0,$v0
    lw         $a1,816($s0)
    beqz       $a1, .L0000633c
    li         $v0,14
    sw         $v0,0($s2)
.L0000633c:
    ld         $a3,40($s1)
    lw         $a2,80($a3)
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    lw         $v0,0($s2)
.L00006350:
    ld         $ra,56($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00006368:
    b          .L000062ec
    dsll32     $at,$v0,0x0
.L00006370:
    lw         $a3,816($s0)
    bnez       $a3, .L00006320
    sd         $v0,40($sp)
    b          .L000063b4
    nop
.L00006384:
    b          .L000062ec
    dsll32     $at,$v0,0x0
.L0000638c:
    b          .L000062ec
    dsll32     $at,$v0,0x0
.L00006394:
    b          .L000062ec
    dsll32     $at,$v0,0x0
.L0000639c:
    li         $v0,14
    b          .L00006350
    sw         $v0,0($s2)
.L000063a8:
    lw         $a4,816($s0)
    bnez       $a4, .L000063c8
    nop
.L000063b4:
    jal        us_delay
    li         $a0,1
    lw         $a5,0($s3)
    beqz       $a5, .L000063a8
    nop
.L000063c8:
    b          .L00006320
    ld         $v0,40($sp)
.L000063d0:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1352
    b          .L00006238
    ld         $v0,48($sp)
.L000063ec:
    daddiu     $a1,$a2,240
    jal        cmn_err
    li         $a0,4
    li         $v0,1
    b          .L00006350
    sw         $v0,0($s2)
.L00006404:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1408
    li         $v0,14
    b          .L00006350
    sw         $v0,0($s2)
