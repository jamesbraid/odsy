.section .text
.set noat
.set noreorder


glabel gf_OdsySuspend
    daddiu     $sp,$sp,-64
    move       $v0,$zero
    sd         $s0,40($sp)
    move       $s0,$a0
    sd         $s1,48($sp)
    beqz       $a0, .L000000b8
    move       $s1,$a1
    ld         $at,72($a0)
    bne        $at, $a1, .L000000b8
    move       $v0,$zero
    lw         $v0,4($a1)
    andi       $v0,$v0,0x3
    beqz       $v0, .L000000b8
    move       $v0,$zero
    ld         $v1,808($a0)
    beqz       $v1, .L000000b4
    sd         $ra,56($sp)
    jal        splhi
    nop
    ld         $a0,808($s0)
    sd         $v0,24($sp)
    beqz       $a0, .L000000a8
    sd         $v0,32($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000000a8
    nop
    lw         $a1,104($s0)
    beqz       $a1, .L000000c8
    li         $a5,0x85c8
.L00000078:
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
    sw         $a2,0($sp)
.L000000a8:
    jal        splx
    ld         $a0,32($sp)
    ld         $ra,56($sp)
.L000000b4:
    move       $v0,$zero
.L000000b8:
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000000c8:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,16($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $a6,16($sp)
    sltu       $a6,$a6,$v0
    beqz       $a6, .L00000078
    li         $a5,0x85c8
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    jal        splx
    ld         $a0,24($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,32($sp)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000078
    li         $a5,0x85c8

glabel gf_OdsyResume
    ld         $at,72($a0)
    daddiu     $sp,$sp,-64
    move       $v0,$a1
    sd         $s0,32($sp)
    move       $s0,$a0
    bne        $at, $a1, .L00000188
    sd         $ra,48($sp)
    lw         $v1,4($a1)
    andi       $v1,$v1,0x3
    sd         $a1,24($sp)
    beqz       $v1, .L00000188
    sd         $a2,40($sp)
    jal        splhi
    nop
    ld         $a0,808($s0)
    sd         $v0,8($sp)
    beqz       $a0, .L0000017c
    sd         $v0,16($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000001b8
    nop
.L0000017c:
    jal        splx
    ld         $a0,16($sp)
    ld         $a2,40($sp)
.L00000188:
    bnez       $a2, .L000001a8
    ld         $ra,48($sp)
    lw         $a1,120($s0)
    beqz       $a1, .L000001a8
    ld         $ra,48($sp)
    jal        force_resched
    sw         $zero,120($s0)
    ld         $ra,48($sp)
.L000001a8:
    move       $v0,$zero
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000001b8:
    jal        rt_pin_thread
    nop
    sd         $v0,0($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    ld         $a1,24($sp)
    lui        $a3,0x1
    ld         $a6,-30720($gp)
    daddu      $a3,$s0,$a3
    lw         $a4,-31292($a3)
    lw         $a5,-19376($a3)
    sll        $a5,$a5,0xc
    and        $a4,$a4,$a6
    or         $a4,$a4,$a5
    sw         $a4,-31292($a3)
    ld         $a5,824($s0)
    sw         $a4,4212($a5)
    sync
    sw         $zero,-31288($a3)
    ld         $a2,824($s0)
    sw         $zero,4220($a2)
    sync
    jal        splx
    ld         $a0,8($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,16($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L0000017c
    nop

glabel gf_OdsyExit
    daddiu     $sp,$sp,-64
    sd         $s1,8($sp)
    ld         $s1,72($a0)
    sd         $s2,56($sp)
    sd         $s5,48($sp)
    sd         $ra,40($sp)
    sd         $s0,0($sp)
    lw         $at,4($a0)
    sd         $s6,16($sp)
    ld         $s6,40($a0)
    andi       $at,$at,0x4
    move       $s0,$a0
    sd         $s4,32($sp)
    sd         $s3,24($sp)
    beqz       $at, .L00000298
    move       $v0,$s6
    move       $a0,$s6
    jal        odsyDiagExit
    move       $a1,$s0
    ld         $v0,40($s0)
.L00000298:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a0,40($s0)
    sd         $s0,72($a0)
    ld         $v0,40($s0)
    lw         $v1,104($v0)
    beqz       $v1, .L000002d4
    nop
.L000002bc:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $a1,104($v0)
    bnez       $a1, .L000002bc
    nop
.L000002d4:
    lw         $a2,80($v0)
    addiu      $a2,$a2,1
    bnez       $s1, .L000003f8
    sw         $a2,80($v0)
    lw         $v0,0($gp)
.L000002e8:
    slti       $a3,$v0,2
    ld         $s4,-30712($gp)
    bnez       $a3, .L00000384
    li         $s1,1
    b          .L00000354
    dsll       $s2,$s1,0x2
.L00000300:
    dsll       $t8,$s1,0x4
    li         $a1,25
    daddu      $s5,$s5,$t8
    jal        psema
    move       $a0,$s5
    lbu        $t9,84($s2)
    beqz       $t9, .L0000032c
    ld         $s3,112($s2)
    ld         $ra,64($s2)
    bne        $ra, $s0, .L00000338
    nop
.L0000032c:
    lw         $at,408($s3)
    beqz       $at, .L00000464
    move       $a0,$s6
.L00000338:
    jal        vsema
    move       $a0,$s5
    lw         $v0,0($gp)
    addiu      $s1,$s1,1
    slt        $v1,$s1,$v0
    beqz       $v1, .L00000384
    dsll       $s2,$s1,0x2
.L00000354:
    dsubu      $s2,$s2,$s1
    dsll       $s2,$s2,0x2
    dsubu      $s2,$s2,$s1
    dsll       $s2,$s2,0x4
    daddu      $s2,$s4,$s2
    ld         $a0,56($s2)
    beq        $a0, $s0, .L00000300
    ld         $s5,-30720($gp)
    addiu      $s1,$s1,1
    slt        $t8,$s1,$v0
    bnez       $t8, .L00000354
    dsll       $s2,$s1,0x2
.L00000384:
    ld         $at,40($s0)
    lw         $t9,80($at)
    addiu      $t9,$t9,-1
    jal        splhi
    sw         $t9,80($at)
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L000003b0
    move       $s1,$v0
    jalr       $a1
    move       $a0,$s0
.L000003b0:
    ld         $s2,56($sp)
    ld         $a1,40($s0)
    ld         $s5,48($sp)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    ld         $s4,32($sp)
    ld         $s3,24($sp)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s1
    ld         $ra,40($sp)
    ld         $s0,0($sp)
    move       $v0,$zero
    ld         $s1,8($sp)
    ld         $s6,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000003f8:
    lh         $t8,2($s1)
    ld         $s5,-30720($gp)
    dsll       $t8,$t8,0x4
    li         $a1,25
    daddu      $s5,$s5,$t8
    jal        psema
    move       $a0,$s5
    ld         $t9,56($s1)
    bnez       $t9, .L00000454
    nop
    ld         $s2,112($s1)
    lw         $ra,408($s2)
    bnez       $ra, .L00000454
    move       $a0,$s6
    jal        odsyDMAFinish
    move       $a1,$s2
    move       $a0,$s0
    jal        odsyMMdetach
    move       $a1,$s2
    jal        odsyUnpinAndUnmapGctxRegions
    move       $a0,$s2
    li         $at,1
    sw         $at,408($s2)
.L00000454:
    jal        vsema
    move       $a0,$s5
    b          .L000002e8
    lw         $v0,0($gp)
.L00000464:
    jal        odsyDMAFinish
    move       $a1,$s3
    move       $a0,$s0
    jal        odsyMMdetach
    move       $a1,$s3
    jal        odsyUnpinAndUnmapGctxRegions
    move       $a0,$s3
    li         $v0,1
    b          .L00000338
    sw         $v0,408($s3)

glabel gf_OdsyReleaseGfxSema
    daddiu     $sp,$sp,-64
    sd         $s0,48($sp)
    ld         $s0,40($a0)
    ld         $at,808($s0)
    sd         $a0,40($sp)
    beqz       $at, .L00000518
    sd         $ra,56($sp)
    jal        splhi
    nop
    ld         $a0,808($s0)
    sd         $v0,24($sp)
    beqz       $a0, .L0000050c
    sd         $v0,32($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000050c
    nop
    lw         $a0,104($s0)
    beqz       $a0, .L00000528
    li         $a4,0x85c8
.L000004dc:
    daddu      $a4,$a4,$s0
    li         $a2,1
    sw         $a2,0($a4)
    ld         $a3,824($s0)
    sw         $a2,4220($a3)
    sync
    ld         $a1,824($s0)
    ld         $a0,808($s0)
    lw         $a1,4220($a1)
    sw         $a1,0($sp)
    jal        gfx_flow_detach_me
    ld         $a1,40($sp)
.L0000050c:
    jal        splx
    ld         $a0,32($sp)
    ld         $ra,56($sp)
.L00000518:
    move       $v0,$zero
    ld         $s0,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000528:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,16($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $a5,16($sp)
    sltu       $a5,$a5,$v0
    beqz       $a5, .L000004dc
    li         $a4,0x85c8
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    jal        splx
    ld         $a0,24($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,32($sp)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L000004dc
    li         $a4,0x85c8

glabel odsyDiagExit
    daddiu     $sp,$sp,-32
    sd         $s8,16($sp)
    lui        $s8,0x1
    sw         $zero,0($sp)
    daddu      $s8,$a0,$s8
    ld         $at,-19608($s8)
    sd         $s0,8($sp)
    move       $s0,$a1
    beq        $at, $a1, .L000005d0
    sd         $ra,24($sp)
    ld         $ra,-19584($s8)
.L000005b0:
    beq        $ra, $s0, .L000005ec
    move       $a0,$s0
    ld         $ra,24($sp)
.L000005bc:
    ld         $s0,8($sp)
    ld         $s8,16($sp)
    lw         $v0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000005d0:
    move       $a0,$a1
    move       $a1,$zero
    move       $a2,$zero
    jal        gfP_OdsyDIAGfreeScanbuf
    daddiu     $a3,$sp,0
    b          .L000005b0
    ld         $ra,-19584($s8)
.L000005ec:
    move       $a1,$zero
    move       $a2,$zero
    jal        gfP_OdsyDIAGreleaseShadowPtrs
    daddiu     $a3,$sp,0
    b          .L000005bc
    ld         $ra,24($sp)
