.section .text
.set noat
.set noreorder


glabel odsyInitDrawables
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $ra,8($sp)
    jal        odsyHashAlloc
    li         $a0,13
    li         $at,0x8658
    daddu      $at,$at,$s0
    beqz       $v0, .L00000054
    sd         $v0,0($at)
    li         $a3,-1
.L0000002c:
    li         $a0,0x8660
    ld         $a2,-30720($gp)
    move       $a1,$zero
    daddu      $a0,$s0,$a0
    jal        mrlock_init
    daddiu     $a2,$a2,40
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000054:
    li         $a0,4
    jal        cmn_err
    ld         $a1,-30720($gp)
    b          .L0000002c
    li         $a3,-1

glabel odsyFindDrawable
    daddiu     $sp,$sp,-32
    li         $at,0x8660
    sd         $s8,8($sp)
    move       $s8,$a0
    daddu      $a0,$a0,$at
    sd         $a0,16($sp)
    sd         $a1,24($sp)
    sd         $ra,0($sp)
    jal        mraccessf
    move       $a1,$zero
    ld         $a2,24($sp)
    andi       $a3,$a2,0xffff
    sra        $a1,$a2,0x10
    or         $a1,$a1,$a3
    li         $a3,13
    div        $zero,$a1,$a3
    li         $a0,0x8658
    daddu      $a0,$a0,$s8
    mfhi       $a1
    jal        odsyHashLookup
    ld         $a0,0($a0)
    move       $s8,$v0
    jal        mrunlock
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    move       $v0,$s8
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyCreateDrawable
    daddiu     $sp,$sp,-16
    li         $a0,40
    sd         $a1,8($sp)
    sd         $ra,0($sp)
    jal        kmem_alloc
    move       $a1,$zero
    bnez       $v0, .L00000104
    ld         $ra,0($sp)
    b          .L00000110
    move       $v0,$zero
.L00000104:
    ld         $at,8($sp)
    sw         $zero,32($v0)
    sw         $at,16($v0)
.L00000110:
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyDestroyDrawable
    move       $a0,$a1
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        kmem_free
    li         $a1,40
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyBindDrawable
    ld         $v0,224($a1)
    daddiu     $sp,$sp,-64
    sd         $s3,32($sp)
    sd         $ra,40($sp)
    sd         $s4,48($sp)
    sd         $s2,16($sp)
    li         $a7,1
    li         $a6,-7
    move       $s2,$a0
    sd         $s1,24($sp)
    move       $s1,$a1
    beq        $a2, $a7, .L0000031c
    sd         $s0,56($sp)
    lw         $v1,512($a1)
    ld         $at,128($v0)
    lw         $at,100($at)
    ori        $v1,$v1,0x1
    and        $v1,$v1,$a6
    sw         $v1,512($a1)
    daddiu     $s0,$a1,512
    sw         $at,516($a1)
.L0000018c:
    lw         $v0,4($s0)
    sd         $a3,8($sp)
    beqz       $v0, .L00000304
    sd         $a2,0($sp)
    andi       $t8,$v0,0xffff
    sra        $s4,$v0,0x10
    or         $s4,$s4,$t8
    li         $t8,13
    div        $zero,$s4,$t8
    move       $a1,$zero
    li         $s3,0x8660
    daddu      $s3,$s2,$s3
    mfhi       $s4
    jal        mraccessf
    move       $a0,$s3
    li         $a0,0x8658
    lw         $a2,4($s0)
    daddu      $a0,$a0,$s2
    move       $a1,$s4
    jal        odsyHashLookup
    ld         $a0,0($a0)
    beqz       $v0, .L00000210
    move       $s4,$v0
    lw         $a1,0($s0)
    move       $a0,$s3
    ori        $a1,$a1,0x4
    jal        mrtrypromote
    sw         $a1,0($s0)
    beqz       $v0, .L000003c8
    nop
    lw         $a2,32($s4)
    addiu      $a2,$a2,1
    sw         $a2,32($s4)
.L00000210:
    jal        mrunlock
    move       $a0,$s3
    lw         $a3,0($s0)
    andi       $a3,$a3,0x4
    move       $v0,$zero
    ld         $a5,8($sp)
    beqz       $a3, .L00000340
    daddiu     $a6,$s2,2120
    ld         $a6,24($s4)
    beqz       $a6, .L000003d8
    ld         $a1,-30720($gp)
    sw         $a5,8($s0)
.L00000240:
    ld         $a4,16($a6)
    ld         $a1,0($sp)
    li         $a2,1
    andi       $a5,$a5,0x2
    lw         $a4,44($a4)
    lui        $a0,0x8000
    lui        $v1,0x7fff
    sb         $zero,43($s0)
    ori        $v1,$v1,0xffff
    beqz       $a5, .L00000348
    sh         $a4,40($s0)
    ld         $t0,24($a6)
    lw         $t0,56($t0)
    sw         $t0,12($s0)
    ld         $a7,24($a6)
    lbu        $a7,17($a7)
    sw         $zero,16($s0)
    sb         $a7,42($s0)
.L00000288:
    dsll       $t2,$v0,0x2
    addiu      $v0,$v0,1
    slti       $t1,$v0,4
    daddu      $t2,$s0,$t2
    sw         $zero,20($t2)
    beqz       $t1, .L000002b8
    dsll       $t3,$v0,0x2
    addiu      $v0,$v0,1
    slti       $t8,$v0,4
    daddu      $t3,$s0,$t3
    bnez       $t8, .L00000288
    sw         $zero,20($t3)
.L000002b8:
    lw         $v0,12($s0)
    beq        $a1, $a2, .L000003b4
    and        $v0,$v0,$v1
    lw         $a1,144($s1)
    and        $a1,$a0,$a1
    or         $a1,$v0,$a1
    sw         $a1,144($s1)
.L000002d4:
    lw         $a2,0($s0)
    move       $v0,$zero
    ori        $a2,$a2,0x2
    sw         $a2,0($s0)
.L000002e4:
    ld         $s3,32($sp)
    ld         $s4,48($sp)
    ld         $ra,40($sp)
    ld         $s2,16($sp)
    ld         $s0,56($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000304:
    lw         $a3,0($s0)
    move       $v0,$zero
    li         $a4,-8
    and        $a3,$a3,$a4
    b          .L000002e4
    sw         $a3,0($s0)
.L0000031c:
    lw         $a7,464($a1)
    ld         $a5,120($v0)
    lw         $a5,100($a5)
    ori        $a7,$a7,0x1
    and        $a7,$a7,$a6
    sw         $a7,464($a1)
    daddiu     $s0,$a1,464
    b          .L0000018c
    sw         $a5,468($a1)
.L00000340:
    b          .L00000240
    sw         $a5,8($s0)
.L00000348:
    ld         $t2,16($a6)
    lw         $t2,56($t2)
    sw         $t2,12($s0)
    ld         $t1,16($a6)
    lbu        $t1,17($t1)
    sb         $t1,42($s0)
    ld         $t0,32($a6)
    lw         $t0,56($t0)
    move       $v0,$zero
    sw         $t0,16($s0)
.L00000370:
    dsll       $t3,$v0,0x3
    daddu      $t3,$a6,$t3
    dsll       $t8,$v0,0x2
    addiu      $v0,$v0,1
    ld         $t3,40($t3)
    slti       $t9,$v0,4
    daddu      $t8,$s0,$t8
    lw         $t3,56($t3)
    bnez       $t9, .L00000370
    sw         $t3,20($t8)
    ld         $t9,40($a6)
    lbu        $t9,19($t9)
    sb         $t9,44($s0)
    ld         $t8,40($a6)
    lbu        $t8,17($t8)
    b          .L000002b8
    sb         $t8,45($s0)
.L000003b4:
    lw         $ra,140($s1)
    and        $ra,$a0,$ra
    or         $ra,$v0,$ra
    b          .L000002d4
    sw         $ra,140($s1)
.L000003c8:
    jal        mrunlock
    move       $a0,$s3
    b          .L000002e4
    li         $v0,13
.L000003d8:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,56
    b          .L000002e4
    li         $v0,22

glabel odsyUnbindDrawable
    daddiu     $sp,$sp,-48
    sd         $s2,8($sp)
    sd         $ra,16($sp)
    sd         $s3,0($sp)
    li         $at,1
    move       $s3,$a0
    sd         $s0,24($sp)
    daddiu     $s0,$a1,464
    beq        $a2, $at, .L00000418
    sd         $s1,32($sp)
    daddiu     $s0,$a1,512
.L00000418:
    lw         $a0,0($s0)
    andi       $v0,$a0,0x2
    beqz       $v0, .L00000514
    andi       $v0,$a0,0x4
    beqz       $v0, .L000004b8
    nop
    lw         $t9,4($s0)
    sra        $t8,$t9,0x10
    andi       $t9,$t9,0xffff
    or         $t8,$t8,$t9
    li         $t9,13
    div        $zero,$t8,$t9
    move       $a1,$zero
    li         $s2,0x8660
    daddu      $s2,$s3,$s2
    mfhi       $s1
    jal        mraccessf
    move       $a0,$s2
    li         $a0,0x8658
    lw         $a2,4($s0)
    daddu      $a0,$a0,$s3
    move       $a1,$s1
    jal        odsyHashLookup
    ld         $a0,0($a0)
    beqz       $v0, .L000004e8
    move       $s1,$v0
    jal        mrtrypromote
    move       $a0,$s2
    beqz       $v0, .L0000052c
    nop
    lw         $a1,32($s1)
    addiu      $a1,$a1,-1
    beqz       $a1, .L000004f8
    sw         $a1,32($s1)
.L000004a0:
    jal        mrunlock
    move       $a0,$s2
    lw         $a2,32($s1)
    beqz       $a2, .L0000051c
    move       $a0,$s3
    lw         $a0,0($s0)
.L000004b8:
    sw         $zero,4($s0)
    li         $a3,-4
    move       $v0,$zero
    and        $a3,$a0,$a3
    sw         $a3,0($s0)
.L000004cc:
    ld         $s2,8($sp)
    ld         $ra,16($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s3,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000004e8:
    jal        mrunlock
    move       $a0,$s2
    b          .L000004cc
    li         $v0,22
.L000004f8:
    ld         $a4,0($s1)
    beqz       $a4, .L000004a0
    nop
    jal        odsyHashRemove
    move       $a0,$s1
    b          .L000004a0
    nop
.L00000514:
    b          .L000004cc
    move       $v0,$zero
.L0000051c:
    jal        odsyDestroyDrawable
    move       $a1,$s1
    b          .L000004b8
    lw         $a0,0($s0)
.L0000052c:
    jal        mrunlock
    move       $a0,$s2
    b          .L000004cc
    li         $v0,13

glabel gfP_OdsySetDrawBuffer
    daddiu     $sp,$sp,-96
    sd         $ra,88($sp)
    sd         $s3,48($sp)
    sd         $s0,56($sp)
    sw         $zero,0($a3)
    sd         $s2,72($sp)
    ld         $s2,72($a0)
    ld         $s0,40($a0)
    ld         $s2,112($s2)
    sd         $s1,64($sp)
    move       $v0,$a2
    move       $s1,$a0
    ld         $at,824($s0)
    move       $s3,$a3
    beqz       $s2, .L000007a8
    sd         $at,40($sp)
    move       $a0,$a2
    li         $a2,4
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L000007c4
    lw         $t8,0($sp)
    move       $a0,$s1
    jal        RRM_CheckValidFault
    sw         $t8,568($s2)
    bltz       $v0, .L000005e8
    li         $v0,14
    jal        odsy_flow_am_i_attached
    ld         $a0,808($s0)
    beqz       $v0, .L00000674
    move       $s3,$v0
    move       $a0,$s2
.L000005bc:
    jal        odsyPushBufferSelect
    ld         $a1,40($sp)
    beqz       $s3, .L000005f0
    move       $v0,$zero
.L000005cc:
    ld         $s3,48($sp)
    ld         $ra,88($sp)
    ld         $s0,56($sp)
    ld         $s1,64($sp)
    ld         $s2,72($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000005e8:
    b          .L000005cc
    sw         $v0,0($s3)
.L000005f0:
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s3,$v0
    beqz       $a0, .L00000654
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000654
    nop
    lw         $t9,104($s0)
    beqz       $t9, .L000006b8
    li         $v1,0x85c8
.L00000624:
    daddu      $v1,$v1,$s0
    li         $at,1
    sw         $at,0($v1)
    ld         $v0,824($s0)
    sw         $at,4220($v0)
    sync
    ld         $ra,824($s0)
    lw         $ra,4220($ra)
    sw         $ra,4($sp)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    ld         $a0,808($s0)
.L00000654:
    lw         $a0,4($s1)
    li         $a1,-3
    and        $a0,$a0,$a1
    sw         $a0,4($s1)
    jal        splx
    move       $a0,$s2
    b          .L000005cc
    move       $v0,$zero
.L00000674:
    jal        splhi
    nop
    lw         $a3,4($s1)
    ori        $a3,$a3,0x2
    sw         $a3,4($s1)
    ld         $a0,808($s0)
    sd         $v0,24($sp)
    beqz       $a0, .L000006a8
    sd         $v0,32($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000718
    nop
.L000006a8:
    jal        splx
    ld         $a0,32($sp)
    b          .L000005bc
    move       $a0,$s2
.L000006b8:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,16($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $a5,16($sp)
    sltu       $a5,$a5,$v0
    beqz       $a5, .L00000624
    li         $v1,0x85c8
    jal        rt_pin_thread
    nop
    move       $s2,$v0
    jal        splx
    move       $a0,$s3
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    sd         $s2,80($sp)
    jal        splhi
    ld         $s3,80($sp)
    move       $s2,$v0
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00000624
    li         $v1,0x85c8
.L00000718:
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    lui        $a7,0x1
    ld         $t2,-30720($gp)
    daddu      $a7,$s0,$a7
    lw         $t0,-31292($a7)
    lw         $t1,-19376($a7)
    sll        $t1,$t1,0xc
    and        $t0,$t0,$t2
    or         $t0,$t0,$t1
    sw         $t0,-31292($a7)
    ld         $t1,824($s0)
    sw         $t0,4212($t1)
    sync
    sw         $zero,-31288($a7)
    ld         $a6,824($s0)
    sw         $zero,4220($a6)
    sync
    jal        splx
    ld         $a0,24($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,32($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L000006a8
    nop
.L000007a8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,104
    li         $v0,1
    b          .L000005cc
    sw         $v0,0($s3)
.L000007c4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,160
    li         $v0,14
    b          .L000005cc
    sw         $v0,0($s3)

glabel odsyPushBufferSelect
    ld         $a3,224($a0)
    lui        $t3,0x1
    lw         $t1,568($a0)
    li         $a7,1
    ori        $a1,$t3,0x46
    ld         $t2,64($a3)
    andi       $a4,$t1,0x2
    andi       $a6,$t1,0x1
    andi       $a5,$t1,0x8
    beqz       $a3, .L00000874
    ld         $t2,40($t2)
    ld         $a2,120($a3)
    li         $a7,1
    beqz       $a2, .L00000a6c
    andi       $a5,$t1,0x2
    lw         $t8,32($a2)
    andi       $t0,$t1,0x4
    andi       $a5,$t1,0x8
    beqz       $a3, .L00000a58
    andi       $t8,$t8,0x3c00
    beqz       $a2, .L00000a58
    nop
    lh         $t9,18($a2)
    beqz       $t9, .L00000a58
    nop
    move       $t0,$a6
    andi       $a6,$t1,0x4
    move       $a5,$a4
    andi       $a4,$t1,0x8
    beqz       $t8, .L00000878
    move       $a7,$zero
.L0000085c:
    li         $a2,12
    or         $v0,$t0,$a5
    or         $at,$a6,$a4
    or         $at,$at,$v0
    b          .L00000898
    movz       $a2,$zero,$at
.L00000874:
    andi       $t0,$t1,0x4
.L00000878:
    sltu       $v1,$zero,$a6
.L0000087c:
    ori        $a2,$v1,0x2
    beqz       $t0, .L0000088c
    movz       $a2,$v1,$a4
    ori        $a2,$a2,0x4
.L0000088c:
    beqz       $a5, .L0000089c
    daddu      $t9,$t2,$t3
    ori        $a2,$a2,0x8
.L00000898:
    daddu      $t9,$t2,$t3
.L0000089c:
    sw         $a2,-19760($t9)
    ld         $t0,176($a0)
    lw         $at,6948($t0)
    sw         $at,-23924($t9)
    lw         $t8,6952($t0)
    sw         $t8,-23920($t9)
    lw         $t1,6956($t0)
    sw         $t1,-23916($t9)
    lw         $t0,6960($t0)
    sw         $t0,-23912($t9)
    ld         $a6,864($t2)
    ori        $t8,$t3,0x443
    sw         $t8,0($a6)
    ld         $a5,864($t2)
    li         $t0,250
    sw         $t0,0($a5)
    ld         $a4,864($t2)
    sw         $a1,0($a4)
    ld         $v1,864($t2)
    sw         $a1,0($v1)
    ld         $v0,864($t2)
    ori        $at,$t3,0x19
    sw         $at,0($v0)
    ld         $t1,864($t2)
    sw         $t8,0($t1)
    ld         $a6,864($t2)
    li         $a5,150
    sw         $a5,0($a6)
    ld         $a4,864($t2)
    sw         $a1,0($a4)
    ld         $v1,864($t2)
    sw         $a1,0($v1)
    ld         $v0,864($t2)
    sw         $a1,0($v0)
    ld         $at,864($t2)
    sw         $a1,0($at)
    ld         $t1,864($t2)
    sw         $t8,0($t1)
    ld         $a6,864($t2)
    sw         $t0,0($a6)
    ld         $a4,864($t2)
    sw         $a1,0($a4)
    ld         $v1,864($t2)
    sw         $a1,0($v1)
    ld         $v0,864($t2)
    ori        $at,$t3,0x424
    sw         $at,0($v0)
    ld         $at,864($t2)
    lw         $t9,-19760($t9)
    sw         $t9,0($at)
    ld         $t1,864($t2)
    sw         $t8,0($t1)
    ld         $a6,864($t2)
    sw         $a5,0($a6)
    ld         $a4,864($t2)
    sw         $a1,0($a4)
    ld         $v1,864($t2)
    sw         $a1,0($v1)
    ld         $v0,864($t2)
    sw         $a1,0($v0)
    ld         $at,864($t2)
    sw         $a1,0($at)
    ld         $t9,864($t2)
    sw         $t8,0($t9)
    ld         $t1,864($t2)
    sw         $t0,0($t1)
    ld         $a6,864($t2)
    sw         $a1,0($a6)
    li         $a6,-1
    ld         $a5,864($t2)
    dsrl32     $a4,$a6,0x0
    beqz       $a3, .L00000a50
    sw         $a1,0($a5)
    ld         $a2,128($a3)
    beqz       $a2, .L00000a50
    nop
    lh         $v0,18($a2)
    beqz       $v0, .L00000a50
    move       $a2,$zero
.L000009d8:
    lw         $a1,140($a0)
    lui        $a5,0x8000
    lui        $a3,0x7fff
    lw         $a6,144($a0)
    ori        $a3,$a3,0xffff
    move       $t0,$a5
    movz       $a5,$zero,$a2
    and        $a1,$a3,$a1
    and        $a3,$a3,$a6
    movz       $t0,$zero,$a7
    or         $a2,$a3,$a5
    sw         $a2,144($a0)
    or         $a1,$a1,$t0
    sw         $a1,140($a0)
    dsll32     $a1,$a1,0x0
    ld         $a2,864($t2)
    li         $a3,193
    dsrl32     $a1,$a1,0x0
    dsll32     $a3,$a3,0x3
    and        $a1,$a4,$a1
    or         $a1,$a1,$a3
    sd         $a1,0($a2)
    lwu        $v1,144($a0)
    ld         $a0,864($t2)
    li         $a1,1545
    dsll32     $a1,$a1,0x0
    and        $v1,$a4,$v1
    or         $v1,$v1,$a1
    jr         $ra
    sd         $v1,0($a0)
.L00000a50:
    b          .L000009d8
    li         $a2,1
.L00000a58:
    andi       $a4,$t1,0x2
    bnez       $t8, .L0000085c
    andi       $a6,$t1,0x1
    b          .L0000087c
    sltu       $v1,$zero,$a6
.L00000a6c:
    beqz       $a3, .L00000a9c
    andi       $t0,$t1,0x4
    beqz       $a2, .L00000a9c
    andi       $t0,$t1,0x4
    lh         $a4,18($a2)
    beqz       $a4, .L00000a98
    move       $a7,$zero
    move       $t0,$a6
    andi       $a6,$t1,0x4
    b          .L00000878
    andi       $a4,$t1,0x8
.L00000a98:
    andi       $t0,$t1,0x4
.L00000a9c:
    andi       $a5,$t1,0x8
    li         $a7,1
    andi       $a4,$t1,0x2
    b          .L00000878
    andi       $a6,$t1,0x1

glabel gfP_OdsyMakeCurrent
    daddiu     $sp,$sp,-192
    sd         $s0,168($sp)
    sw         $zero,0($a3)
    ld         $s0,40($a0)
    sd         $s1,176($sp)
    ld         $s1,72($a0)
    sd         $s4,160($sp)
    ld         $s1,112($s1)
    sd         $s2,144($sp)
    move       $s2,$a0
    move       $s4,$a2
    sd         $s3,152($sp)
    move       $s3,$a3
    beqz       $s1, .L00000df8
    sd         $ra,184($sp)
    move       $a0,$a2
    li         $a2,80
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L00000e14
    ld         $a1,-30720($gp)
    jal        RRM_CheckValidFault
    move       $a0,$s2
    bltz       $v0, .L00000c34
    li         $v0,14
    ld         $t9,40($s2)
    lw         $t8,80($t9)
    addiu      $t8,$t8,1
    sw         $t8,80($t9)
    jal        odsy_flow_am_i_attached
    ld         $a0,808($s0)
    beqz       $v0, .L00000cc0
    sd         $v0,136($sp)
    move       $a0,$s0
.L00000b38:
    move       $a1,$s1
    jal        odsyUnbindDrawable
    li         $a2,1
    move       $a0,$s0
    move       $a1,$s1
    jal        odsyUnbindDrawable
    li         $a2,2
    move       $a0,$s0
    move       $a1,$s1
    lw         $a3,0($sp)
    jal        odsyBindDrawable
    li         $a2,1
    move       $a0,$s0
    move       $a1,$s1
    lw         $a3,40($sp)
    jal        odsyBindDrawable
    li         $a2,2
    ld         $a6,472($s1)
    sd         $a6,0($sp)
    ld         $a5,480($s1)
    sd         $a5,8($sp)
    ld         $a4,488($s1)
    sd         $a4,16($sp)
    ld         $a3,496($s1)
    sd         $a3,24($sp)
    ld         $a2,504($s1)
    sd         $a2,32($sp)
    ld         $a1,520($s1)
    sd         $a1,40($sp)
    daddiu     $at,$sp,40
    ld         $a0,528($s1)
    sd         $a0,8($at)
    ld         $v1,536($s1)
    sd         $v1,16($at)
    ld         $v0,544($s1)
    sd         $v0,24($at)
    move       $a1,$s1
    ld         $ra,552($s1)
    sd         $ra,32($at)
    jal        odsyClipPush
    move       $a0,$s0
    ld         $a7,136($sp)
    beqz       $a7, .L00000c3c
    nop
    ld         $t1,40($s2)
.L00000bec:
    li         $a2,80
    lw         $t0,80($t1)
    move       $a1,$s4
    daddiu     $a0,$sp,0
    addiu      $t0,$t0,-1
    jal        copyout
    sw         $t0,80($t1)
    bnez       $v0, .L00000e2c
    ld         $a1,-30720($gp)
    lw         $v0,0($s3)
.L00000c14:
    ld         $s2,144($sp)
    ld         $s3,152($sp)
    ld         $ra,184($sp)
    ld         $s4,160($sp)
    ld         $s0,168($sp)
    ld         $s1,176($sp)
    jr         $ra
    daddiu     $sp,$sp,192
.L00000c34:
    b          .L00000c14
    sw         $v0,0($s3)
.L00000c3c:
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s1,$v0
    beqz       $a0, .L00000ca0
    sd         $v0,120($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000ca0
    nop
    lw         $t1,104($s0)
    beqz       $t1, .L00000d08
    li         $t9,0x85c8
.L00000c70:
    daddu      $t9,$t9,$s0
    li         $t3,1
    sw         $t3,0($t9)
    ld         $t8,824($s0)
    sw         $t3,4220($t8)
    sync
    ld         $t2,824($s0)
    ld         $a0,808($s0)
    lw         $t2,4220($t2)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $t2,80($sp)
.L00000ca0:
    lw         $ra,4($s2)
    li         $at,-3
    and        $ra,$ra,$at
    sw         $ra,4($s2)
    jal        splx
    move       $a0,$s1
    b          .L00000bec
    ld         $t1,40($s2)
.L00000cc0:
    jal        splhi
    nop
    sd         $v0,112($sp)
    sd         $v0,128($sp)
    lw         $v0,4($s2)
    ori        $v0,$v0,0x2
    sw         $v0,4($s2)
    ld         $a0,808($s0)
    beqz       $a0, .L00000cf8
    nop
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000d68
    nop
.L00000cf8:
    jal        splx
    ld         $a0,128($sp)
    b          .L00000b38
    move       $a0,$s0
.L00000d08:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,104($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $a0,104($sp)
    sltu       $a0,$a0,$v0
    beqz       $a0, .L00000c70
    li         $t9,0x85c8
    jal        rt_pin_thread
    nop
    move       $s1,$v0
    jal        splx
    ld         $a0,120($sp)
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    sd         $s1,88($sp)
    jal        splhi
    nop
    move       $s1,$v0
    jal        rt_unpin_thread
    ld         $a0,88($sp)
    b          .L00000c70
    li         $t9,0x85c8
.L00000d68:
    jal        rt_pin_thread
    nop
    sd         $v0,96($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s2
    lui        $a2,0x1
    ld         $a5,-30720($gp)
    daddu      $a2,$s0,$a2
    lw         $a3,-31292($a2)
    lw         $a4,-19376($a2)
    sll        $a4,$a4,0xc
    and        $a3,$a3,$a5
    or         $a3,$a3,$a4
    sw         $a3,-31292($a2)
    ld         $a4,824($s0)
    sw         $a3,4212($a4)
    sync
    sw         $zero,-31288($a2)
    ld         $a1,824($s0)
    sw         $zero,4220($a1)
    sync
    jal        splx
    ld         $a0,112($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,128($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,96($sp)
    b          .L00000cf8
    nop
.L00000df8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,104
    li         $v0,1
    b          .L00000c14
    sw         $v0,0($s3)
.L00000e14:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,208
    li         $v0,14
    b          .L00000c14
    sw         $v0,0($s3)
.L00000e2c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,208
    li         $v0,14
    b          .L00000c14
    sw         $v0,0($s3)

glabel gfP_OdsyPbufAssoc
    daddiu     $sp,$sp,-64
    sd         $s0,32($sp)
    move       $at,$a2
    li         $a2,8
    sd         $s1,40($sp)
    move       $s1,$a3
    daddiu     $a1,$sp,0
    ld         $s0,40($a0)
    sd         $ra,24($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L00000f9c
    sd         $s2,48($sp)
    lw         $v0,4($sp)
    li         $v1,-1
    beq        $v0, $v1, .L00000fb8
    daddiu     $a0,$s0,2368
    jal        OdsyLookupCSetId
    move       $a1,$zero
    beqz       $v0, .L00000fd4
    ld         $a1,-30720($gp)
    lw         $a1,4($sp)
    jal        OdsyLookupCSetId
    daddiu     $a0,$v0,72
    beqz       $v0, .L00000fec
    sd         $v0,16($sp)
    lw         $t8,0($sp)
    andi       $s2,$t8,0xffff
    srl        $t8,$t8,0x10
    or         $s2,$s2,$t8
    li         $t8,13
    divu       $zero,$s2,$t8
    move       $a1,$zero
    li         $s1,0x8660
    daddu      $s1,$s0,$s1
    mfhi       $s2
    jal        mraccessf
    move       $a0,$s1
    lw         $a2,0($sp)
    lui        $a0,0x1
    daddu      $a0,$s0,$a0
    sd         $a0,8($sp)
    move       $a1,$s2
    jal        odsyHashLookup
    ld         $a0,-31144($a0)
    beqz       $v0, .L00000f10
    move       $a0,$s0
    jal        mrunlock
    move       $a0,$s1
    b          .L00000f64
    li         $v0,11
.L00000f10:
    jal        odsyCreateDrawable
    lw         $a1,0($sp)
    beqz       $v0, .L00000f7c
    move       $s0,$v0
    li         $a3,1
    sw         $a3,32($v0)
    li         $a1,2
    sw         $a1,36($v0)
    ld         $a2,16($sp)
    move       $a0,$s1
    jal        mrtrypromote
    sd         $a2,24($v0)
    beqz       $v0, .L00000f8c
    ld         $a0,8($sp)
    move       $a1,$s2
    move       $a2,$s0
    jal        odsyHashInsert
    ld         $a0,-31144($a0)
    jal        mrunlock
    move       $a0,$s1
    move       $v0,$zero
.L00000f64:
    ld         $ra,24($sp)
    ld         $s0,32($sp)
    ld         $s2,48($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000f7c:
    jal        mrunlock
    move       $a0,$s1
    b          .L00000f64
    li         $v0,12
.L00000f8c:
    jal        mrunlock
    move       $a0,$s1
    b          .L00000f64
    li         $v0,13
.L00000f9c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,256
    li         $v0,14
    b          .L00000f64
    sw         $v0,0($s1)
.L00000fb8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,304
    li         $v0,22
    b          .L00000f64
    sw         $v0,0($s1)
.L00000fd4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,392
    li         $v0,22
    b          .L00000f64
    sw         $v0,0($s1)
.L00000fec:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,440
    li         $v0,22
    b          .L00000f64
    sw         $v0,0($s1)

glabel gfP_OdsyPbufDeassoc
    daddiu     $sp,$sp,-64
    sd         $a3,16($sp)
    sd         $s2,24($sp)
    move       $at,$a2
    sd         $a2,8($sp)
    daddiu     $a1,$sp,0
    li         $a2,8
    ld         $s2,40($a0)
    sd         $ra,32($sp)
    jal        copyin
    move       $a0,$at
    sd         $s0,40($sp)
    bnez       $v0, .L00001140
    sd         $s1,48($sp)
    lw         $t9,0($sp)
    andi       $t8,$t9,0xffff
    srl        $t9,$t9,0x10
    or         $t8,$t8,$t9
    li         $t9,13
    divu       $zero,$t8,$t9
    move       $a1,$zero
    li         $s1,0x8660
    daddu      $s1,$s2,$s1
    mfhi       $s0
    jal        mraccessf
    move       $a0,$s1
    li         $a0,0x8658
    lw         $a2,0($sp)
    daddu      $a0,$a0,$s2
    move       $a1,$s0
    jal        odsyHashLookup
    ld         $a0,0($a0)
    beqz       $v0, .L0000111c
    move       $s0,$v0
    ld         $v0,24($v0)
    beqz       $v0, .L00001160
    ld         $a1,-30720($gp)
    lw         $a1,0($v0)
    move       $a0,$s1
    jal        mrtrypromote
    sw         $a1,4($sp)
    beqz       $v0, .L0000110c
    nop
    jal        odsyHashRemove
    move       $a0,$s0
    lw         $a3,32($s0)
    li         $a2,1
    beqz       $a3, .L0000112c
    sw         $a2,36($s0)
    ld         $s0,8($sp)
.L000010d0:
    jal        mrunlock
    move       $a0,$s1
    li         $a2,8
    move       $a1,$s0
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L00001174
    ld         $a1,-30720($gp)
    move       $v0,$zero
.L000010f4:
    ld         $ra,32($sp)
    ld         $s2,24($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000110c:
    jal        mrunlock
    move       $a0,$s1
    b          .L000010f4
    li         $v0,13
.L0000111c:
    jal        mrunlock
    move       $a0,$s1
    b          .L000010f4
    li         $v0,22
.L0000112c:
    move       $a0,$s2
    jal        odsyDestroyDrawable
    move       $a1,$s0
    b          .L000010d0
    ld         $s0,8($sp)
.L00001140:
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $s0,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,496
    li         $v0,14
    b          .L000010f4
    sw         $v0,0($s0)
.L00001160:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,544
    b          .L000010f4
    move       $v0,$zero
.L00001174:
    li         $a0,4
    ld         $s0,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,592
    li         $v0,14
    b          .L000010f4
    sw         $v0,0($s0)
