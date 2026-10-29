.section .text
.set noat
.set noreorder


glabel odsyDownloadUcode
    move       $t3,$a1
    move       $a4,$a3
    li         $t1,5
    addiu      $t2,$a3,-1
    move       $v0,$a2
    sltiu      $at,$a1,2047
    daddiu     $sp,$sp,-16
    lui        $t8,0x4000
    ori        $a7,$t8,0x8000
    beqz       $at, .L00000104
    sd         $ra,0($sp)
    addu       $v1,$a1,$a3
    sltiu      $v1,$v1,2048
    beqz       $v1, .L00000104
    lui        $a2,0x1
    daddu      $a2,$a0,$a2
    lw         $a1,-31404($a2)
    sltu       $a3,$v0,$a1
    lui        $v1,0x2700
    beqz       $a3, .L00000104
    ori        $v1,$v1,0x8000
    addu       $a3,$v0,$a4
    sltu       $a3,$a1,$a3
    bnez       $a3, .L00000104
    sll        $t9,$v0,0x2
    srl        $at,$t3,0xa
    andi       $ra,$t3,0x3ff
    sll        $at,$at,0x17
    subu       $t9,$t9,$v0
    or         $ra,$ra,$at
    ld         $at,864($a0)
    sll        $t9,$t9,0x1
    or         $ra,$ra,$v1
    dsll32     $t9,$t9,0x0
    sw         $ra,0($at)
    dsrl32     $t9,$t9,0x0
    ld         $t0,-31400($a2)
    move       $a2,$zero
    daddu      $t9,$t9,$t9
    beqz       $a4, .L000000f4
    daddu      $t0,$t0,$t9
    addiu      $a2,$a2,1
.L000000a8:
    li         $a1,5
    move       $v0,$t1
.L000000b0:
    daddu      $v1,$v0,$v0
    daddu      $v1,$t0,$v1
    lhu        $v1,0($v1)
    addiu      $a1,$a1,-1
    sra        $a4,$v1,0xa
    andi       $v1,$v1,0x3ff
    sll        $a4,$a4,0x17
    ld         $a3,864($a0)
    addiu      $v0,$v0,-1
    or         $v1,$v1,$a4
    or         $v1,$a7,$v1
    bgez       $a1, .L000000b0
    sw         $v1,0($a3)
    addiu      $t1,$t1,6
    sltu       $a1,$t2,$a2
    beqz       $a1, .L000000a8
    addiu      $a2,$a2,1
.L000000f4:
    move       $v0,$zero
.L000000f8:
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000104:
    li         $a0,4
    move       $a2,$t3
    ld         $a1,-30720($gp)
    jal        cmn_err
    move       $a3,$v0
    b          .L000000f8
    li         $v0,-1

glabel gf_OdsyDownload
    lw         $v0,0($a1)
    li         $at,12
    div        $zero,$v0,$at
    daddiu     $sp,$sp,-80
    sd         $s0,40($sp)
    ld         $s0,40($a0)
    sd         $s2,16($sp)
    sd         $s1,32($sp)
    sd         $s4,24($sp)
    mflo       $s4
    move       $s1,$a0
    move       $s2,$a1
    sd         $s3,48($sp)
    mfhi       $a2
    blez       $s4, .L00000504
    sd         $ra,56($sp)
    sltiu      $v1,$s4,4094
    beqz       $v1, .L00000504
    nop
    bnez       $a2, .L00000520
    nop
    ld         $a0,8($a1)
    move       $a1,$v0
    move       $a2,$zero
    jal        userdma
    move       $a3,$zero
    bnez       $v0, .L00000538
    ld         $a1,-30720($gp)
    lui        $s3,0x1
    sd         $s5,64($sp)
    daddu      $s3,$s0,$s3
    sw         $s4,-31404($s3)
    lw         $a1,0($s2)
    li         $a2,40
    jal        maputokv
    ld         $a0,8($s2)
    beqz       $v0, .L0000054c
    move       $s5,$v0
    lw         $a2,0($s2)
.L000001bc:
    move       $a0,$s5
    jal        bcopy
    ld         $a1,-31400($s3)
    lw         $a1,0($s2)
    ld         $a0,8($s2)
    jal        undma
    move       $a2,$zero
    move       $a0,$s5
    jal        unmaputokv
    lw         $a1,0($s2)
    ld         $v0,40($s1)
    ld         $t8,72($v0)
    bne        $t8, $s1, .L00000300
    ld         $s5,64($sp)
.L000001f4:
    lw         $t9,80($v0)
.L000001f8:
    addiu      $t9,$t9,1
    jal        splhi
    sw         $t9,80($v0)
    lw         $ra,4($s1)
    ori        $ra,$ra,0x2
    sw         $ra,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L0000022c
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000424
    nop
.L0000022c:
    jal        splx
    move       $a0,$s2
    move       $a0,$s0
    move       $a1,$zero
    move       $a2,$zero
    move       $a4,$s1
    li         $a3,2047
    slti       $at,$s4,2047
    jal        odsyDownloadUcode
    movn       $a3,$s4,$at
    beqz       $v0, .L00000344
    nop
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L000002b4
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000002b4
    nop
    lw         $v0,104($s0)
    beqz       $v0, .L000003cc
    li         $a0,1
.L0000028c:
    sw         $a0,-31288($s3)
    ld         $a1,824($s0)
    sw         $a0,4220($a1)
    sync
    ld         $v1,824($s0)
    ld         $a0,808($s0)
    lw         $v1,4220($v1)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $v1,0($sp)
.L000002b4:
    lw         $a3,4($s1)
    move       $a0,$s2
    li         $a2,-3
    and        $a2,$a2,$a3
    jal        splx
    sw         $a2,4($s1)
    ld         $a5,40($s1)
    lw         $a4,80($a5)
    li         $v0,22
    addiu      $a4,$a4,-1
    sw         $a4,80($a5)
.L000002e0:
    ld         $s2,16($sp)
    ld         $s3,48($sp)
    ld         $ra,56($sp)
    ld         $s4,24($sp)
    ld         $s1,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000300:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a6,40($s1)
    sd         $s1,72($a6)
    ld         $v0,40($s1)
    lw         $a5,104($v0)
    beqz       $a5, .L000001f4
    nop
.L00000324:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s1)
    lw         $a7,104($v0)
    bnez       $a7, .L00000324
    nop
    b          .L000001f8
    lw         $t9,80($v0)
.L00000344:
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L0000039c
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000039c
    nop
    lw         $t0,104($s0)
    beqz       $t0, .L000004ac
    li         $t2,1
.L00000374:
    sw         $t2,-31288($s3)
    ld         $t3,824($s0)
    sw         $t2,4220($t3)
    sync
    ld         $t1,824($s0)
    ld         $a0,808($s0)
    lw         $t1,4220($t1)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $t1,4($sp)
.L0000039c:
    lw         $t9,4($s1)
    move       $a0,$s2
    li         $t8,-3
    and        $t8,$t8,$t9
    jal        splx
    sw         $t8,4($s1)
    ld         $at,40($s1)
    lw         $ra,80($at)
    move       $v0,$zero
    addiu      $ra,$ra,-1
    b          .L000002e0
    sw         $ra,80($at)
.L000003cc:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s4,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $at,$s4,$v0
    beqz       $at, .L0000028c
    li         $a0,1
    jal        rt_pin_thread
    nop
    move       $s4,$v0
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    move       $s2,$v0
    jal        rt_unpin_thread
    move       $a0,$s4
    b          .L0000028c
    li         $a0,1
.L00000424:
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    ld         $a1,-30720($gp)
    lw         $v1,-31292($s3)
    lw         $a0,-19376($s3)
    sll        $a0,$a0,0xc
    and        $v1,$v1,$a1
    or         $v1,$v1,$a0
    sw         $v1,-31292($s3)
    ld         $a0,824($s0)
    sw         $v1,4212($a0)
    sync
    sw         $zero,-31288($s3)
    ld         $v0,824($s0)
    sw         $zero,4220($v0)
    sync
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a1,72($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L0000022c
    nop
.L000004ac:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s4,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $a2,$s4,$v0
    beqz       $a2, .L00000374
    li         $t2,1
    jal        rt_pin_thread
    nop
    move       $s4,$v0
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    move       $s2,$v0
    jal        rt_unpin_thread
    move       $a0,$s4
    b          .L00000374
    li         $t2,1
.L00000504:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$v0
    jal        cmn_err
    daddiu     $a1,$a1,80
    b          .L000002e0
    li         $v0,22
.L00000520:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,128
    b          .L000002e0
    li         $v0,22
.L00000538:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,184
    b          .L000002e0
    li         $v0,14
.L0000054c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,224
    b          .L000001bc
    lw         $a2,0($s2)
