.section .text
.set noat
.set noreorder


glabel gf_OdsyValidateClip
    ld         $a4,120($a1)
    ld         $t1,128($a1)
    lw         $t0,120($a4)
    ld         $a7,128($a4)
    daddiu     $sp,$sp,-96
    sd         $s1,64($sp)
    ld         $s1,40($a0)
    sd         $s0,56($sp)
    lw         $t3,80($s1)
    ld         $s0,112($a1)
    addiu      $t3,$t3,1
    sw         $t3,80($s1)
    lw         $t2,108($s0)
    lw         $t3,104($a4)
    sd         $ra,80($sp)
    li         $t8,-8192
    lw         $at,112($s0)
    andi       $t3,$t3,0x1fff
    and        $t2,$t8,$t2
    or         $t2,$t2,$t3
    sw         $t2,108($s0)
    lw         $t9,108($a4)
    sd         $s2,72($sp)
    and        $t8,$t8,$at
    ld         $t3,176($s0)
    andi       $t9,$t9,0x1fff
    or         $t8,$t8,$t9
    sw         $t8,112($s0)
    sw         $t2,11104($t3)
    ld         $v0,176($s0)
    move       $s2,$a0
    daddiu     $t1,$t1,96
    lw         $at,112($s0)
    daddiu     $a4,$a4,96
    blez       $t0, .L000000a8
    sw         $at,11108($v0)
    dsll       $t8,$t0,0x4
    daddu      $t8,$a7,$t8
    lw         $t9,-8($t8)
    sw         $t9,116($s0)
    lw         $t8,-4($t8)
    sw         $t8,120($s0)
.L000000a8:
    lw         $ra,8($a4)
    lw         $at,12($a4)
    andi       $ra,$ra,0xffff
    sll        $at,$at,0x10
    or         $ra,$ra,$at
    sw         $ra,148($s0)
    lw         $t9,8($t1)
    li         $a6,-4096
    lw         $ra,12($t1)
    move       $a5,$zero
    lui        $v0,0xff00
    andi       $t9,$t9,0xffff
    sll        $ra,$ra,0x10
    ori        $v0,$v0,0xfff
    or         $t9,$t9,$ra
    sw         $t9,152($s0)
.L000000e8:
    dsll       $v1,$a5,0x3
    daddu      $v1,$s0,$v1
    lw         $at,8($v1)
    addiu      $a5,$a5,1
    lw         $a1,12($v1)
    slti       $a0,$a5,4
    and        $at,$v0,$at
    and        $a1,$v0,$a1
    ori        $at,$at,0x1000
    and        $a1,$a6,$a1
    sw         $a1,12($v1)
    and        $at,$a6,$at
    ori        $at,$at,0x1
    bnez       $a0, .L000000e8
    sw         $at,8($v1)
    lw         $a0,48($a4)
    beqz       $a0, .L00000284
    lw         $a0,4($s0)
    lui        $a1,0x1
    or         $a1,$a0,$a1
    sw         $a1,4($s0)
    lw         $a3,56($a4)
    li         $a2,0xff00
    andi       $a3,$a3,0x3c00
    li         $a5,-256
    nor        $a2,$a2,$zero
    beqz       $a3, .L00000350
    and        $a1,$a1,$a2
    ori        $a3,$a1,0x700
    sw         $a3,4($s0)
    lw         $a2,40($a4)
    andi       $a2,$a2,0xff
    and        $a3,$a5,$a3
    or         $a2,$a2,$a3
    sw         $a2,4($s0)
.L00000174:
    lw         $t8,8($a4)
    slt        $a7,$t8,$zero
    lw         $t9,8($s0)
    lui        $a5,0xff
    movn       $t8,$zero,$a7
    ori        $a5,$a5,0xf000
    sll        $t8,$t8,0xc
    and        $t9,$v0,$t9
    and        $t8,$a5,$t8
    or         $t8,$t8,$t9
    sw         $t8,8($s0)
    lw         $t3,12($a4)
    slt        $t9,$t3,$zero
    movn       $t3,$zero,$t9
    and        $t8,$a6,$t8
    andi       $t3,$t3,0xfff
    or         $t3,$t3,$t8
    sw         $t3,8($s0)
    lw         $t2,16($a4)
    lw         $t1,8($a4)
    ld         $a7,2136($s1)
    lw         $a7,32($a7)
    addu       $t1,$t1,$t2
    addiu      $t1,$t1,-1
    slt        $t0,$a7,$t1
    lw         $a3,12($s0)
    movz       $a7,$t1,$t0
    sll        $a7,$a7,0xc
    and        $a3,$v0,$a3
    and        $a5,$a5,$a7
    or         $a3,$a3,$a5
    sw         $a3,12($s0)
    lw         $t1,20($a4)
    lw         $t0,12($a4)
    ld         $a5,2136($s1)
    lw         $a5,36($a5)
    addu       $t0,$t0,$t1
    addiu      $t0,$t0,-1
    slt        $a7,$a5,$t0
    movz       $a5,$t0,$a7
    and        $a3,$a6,$a3
    andi       $a5,$a5,0xfff
    or         $a3,$a3,$a5
    sw         $a3,12($s0)
.L00000224:
    ld         $a0,808($s1)
.L00000228:
    jal        odsy_flow_am_i_attached
    sd         $s7,88($sp)
    beqz       $v0, .L000003f8
    move       $s7,$v0
    move       $a0,$s1
.L0000023c:
    jal        odsyClipMask
    move       $a1,$s0
    move       $a0,$s1
    jal        odsyClipPush
    move       $a1,$s0
    beqz       $s7, .L00000374
    ld         $s0,56($sp)
    ld         $s1,64($sp)
.L0000025c:
    ld         $s7,88($sp)
    ld         $at,40($s2)
    ld         $ra,80($sp)
    lw         $t9,80($at)
    move       $v0,$zero
    ld         $s2,72($sp)
    daddiu     $sp,$sp,96
    addiu      $t9,$t9,-1
    jr         $ra
    sw         $t9,80($at)
.L00000284:
    lui        $at,0x1
    nor        $at,$at,$zero
    and        $at,$a0,$at
    sw         $at,4($s0)
    lw         $ra,44($a4)
    beqz       $ra, .L0000043c
    li         $t2,1
    slti       $v1,$t0,2
.L000002a4:
    bnez       $v1, .L00000224
    move       $a0,$zero
    lui        $a4,0xff
    addiu      $t1,$t0,-2
    ori        $a4,$a4,0xf000
.L000002b8:
    dsll       $t8,$a0,0x4
    daddu      $t8,$a7,$t8
    lw         $t9,0($t8)
    dsll       $t0,$a0,0x3
    daddu      $t0,$s0,$t0
    lw         $at,8($t0)
    sll        $ra,$t9,0xc
    and        $ra,$a4,$ra
    and        $at,$v0,$at
    or         $ra,$ra,$at
    sw         $ra,8($t0)
    lw         $t3,8($t8)
    addu       $t3,$t3,$t9
    addiu      $t3,$t3,-1
    lw         $t9,12($t0)
    sll        $t3,$t3,0xc
    and        $t3,$a4,$t3
    and        $t9,$v0,$t9
    or         $t3,$t3,$t9
    sw         $t3,12($t0)
    lw         $t2,4($t8)
    andi       $t9,$t2,0xfff
    and        $ra,$a6,$ra
    or         $t9,$t9,$ra
    sw         $t9,8($t0)
    lw         $a5,12($t8)
    addiu      $a0,$a0,1
    addu       $a5,$a5,$t2
    slt        $t2,$t1,$a0
    addiu      $a5,$a5,-1
    pref       0x0,256($t8)
    andi       $a5,$a5,0xfff
    and        $t3,$a6,$t3
    or         $a5,$a5,$t3
    beqz       $t2, .L000002b8
    sw         $a5,12($t0)
    b          .L00000228
    ld         $a0,808($s1)
.L00000350:
    ori        $t9,$a1,0xf800
    sw         $t9,4($s0)
    lw         $ra,40($a4)
    sll        $ra,$ra,0x3
    and        $t9,$a5,$t9
    andi       $ra,$ra,0xff
    or         $t9,$t9,$ra
    b          .L00000174
    sw         $t9,4($s0)
.L00000374:
    jal        splhi
    nop
    ld         $a0,808($s1)
    move       $s7,$v0
    beqz       $a0, .L000003d8
    sd         $v0,40($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003d8
    nop
    lw         $at,104($s1)
    beqz       $at, .L000004cc
    li         $a1,0x85c8
.L000003a8:
    daddu      $a1,$a1,$s1
    li         $v1,1
    sw         $v1,0($a1)
    ld         $a0,824($s1)
    sw         $v1,4220($a0)
    sync
    ld         $v0,824($s1)
    ld         $a0,808($s1)
    lw         $v0,4220($v0)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $v0,0($sp)
.L000003d8:
    lw         $a2,4($s2)
    move       $a0,$s7
    li         $a3,-3
    and        $a2,$a2,$a3
    jal        splx
    sw         $a2,4($s2)
    b          .L0000025c
    ld         $s1,64($sp)
.L000003f8:
    jal        splhi
    nop
    lw         $a4,4($s2)
    ori        $a4,$a4,0x2
    sw         $a4,4($s2)
    ld         $a0,808($s1)
    sd         $v0,32($sp)
    beqz       $a0, .L0000042c
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000052c
    nop
.L0000042c:
    jal        splx
    ld         $a0,48($sp)
    b          .L0000023c
    move       $a0,$s1
.L0000043c:
    lw         $t1,24($a4)
    bne        $t1, $t2, .L000002a4
    slti       $v1,$t0,2
    lw         $a0,8($a4)
    lui        $t8,0xff
    lw         $a1,8($s0)
    ori        $t8,$t8,0xf000
    sll        $a0,$a0,0xc
    and        $a0,$t8,$a0
    and        $a1,$v0,$a1
    or         $a0,$a0,$a1
    sw         $a0,8($s0)
    lw         $v1,12($a4)
    andi       $v1,$v1,0xfff
    and        $a0,$a6,$a0
    or         $v1,$v1,$a0
    sw         $v1,8($s0)
    lw         $ra,8($a4)
    lw         $at,16($a4)
    addu       $ra,$ra,$at
    addiu      $ra,$ra,-1
    lw         $t9,12($s0)
    sll        $ra,$ra,0xc
    and        $t8,$t8,$ra
    and        $t9,$v0,$t9
    or         $t8,$t8,$t9
    sw         $t8,12($s0)
    lw         $t3,12($a4)
    lw         $t9,20($a4)
    addu       $t3,$t3,$t9
    addiu      $t3,$t3,-1
    andi       $t3,$t3,0xfff
    and        $t8,$a6,$t8
    or         $t3,$t3,$t8
    b          .L00000224
    sw         $t3,12($s0)
.L000004cc:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s1)
    sd         $v0,24($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s1)
    ld         $t9,24($sp)
    sltu       $t9,$t9,$v0
    beqz       $t9, .L000003a8
    li         $a1,0x85c8
    jal        rt_pin_thread
    nop
    move       $s7,$v0
    jal        splx
    ld         $a0,40($sp)
    move       $a0,$s1
    jal        odsy_flow_await_returned_credits
    sd         $s7,16($sp)
    jal        splhi
    nop
    move       $s7,$v0
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L000003a8
    li         $a1,0x85c8
.L0000052c:
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s2
    lui        $at,0x1
    ld         $a0,-30720($gp)
    daddu      $at,$s1,$at
    lw         $v0,-31292($at)
    lw         $v1,-19376($at)
    sll        $v1,$v1,0xc
    and        $v0,$v0,$a0
    or         $v0,$v0,$v1
    sw         $v0,-31292($at)
    ld         $v1,824($s1)
    sw         $v0,4212($v1)
    sync
    sw         $zero,-31288($at)
    ld         $ra,824($s1)
    sw         $zero,4220($ra)
    sync
    jal        splx
    ld         $a0,32($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s1
    jal        splhi
    nop
    sd         $v0,48($sp)
    ld         $a1,72($s1)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s1)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L0000042c
    nop

glabel odsyClipMask
    daddiu     $sp,$sp,-96
    sd         $s0,40($sp)
    sd         $ra,56($sp)
    sd         $s8,16($sp)
    sd         $s1,32($sp)
    sd         $s3,72($sp)
    lw         $s3,136($a1)
    sd         $s5,24($sp)
    lw         $s5,132($a1)
    sd         $s4,80($sp)
    lw         $s4,128($a1)
    sd         $s2,64($sp)
    sd         $s6,88($sp)
    ld         $s6,224($a1)
    lw         $s2,124($a1)
    ld         $s6,120($s6)
    daddiu     $a2,$a1,8
    move       $a6,$zero
    sd         $s7,48($sp)
    lui        $a3,0xff
    li         $s8,1
    lw         $s7,104($s6)
    ori        $a3,$a3,0xf000
    lui        $s1,0xff00
    lw         $s6,108($s6)
    ori        $s1,$s1,0xfff
    sw         $zero,40($a1)
    addu       $s2,$s2,$s7
    sd         $s7,0($sp)
    addu       $s4,$s4,$s6
    addu       $s5,$s5,$s7
    sd         $s6,8($sp)
    b          .L00000688
    addu       $s3,$s3,$s6
.L00000644:
    andi       $t8,$a5,0xfff
    andi       $v0,$a4,0xfff
    li         $ra,-4096
    and        $v1,$s1,$a7
    and        $a0,$s1,$t0
    sll        $at,$t1,0xc
    or         $a0,$s0,$a0
    and        $at,$a3,$at
    and        $a0,$ra,$a0
    or         $at,$at,$v1
    or         $v0,$v0,$a0
    sw         $v0,4($a2)
    and        $ra,$ra,$at
    or         $t8,$t8,$ra
    sw         $t8,0($a2)
.L00000680:
    beqz       $t9, .L00000774
    daddiu     $a2,$a2,8
.L00000688:
    move       $a5,$s4
    addiu      $a6,$a6,1
    lw         $a7,0($a2)
    move       $t1,$s2
    slti       $t9,$a6,4
    lw         $t0,4($a2)
    andi       $t3,$a7,0xfff
    srl        $ra,$a7,0xc
    andi       $t8,$t0,0xfff
    andi       $ra,$ra,0xfff
    srl        $t2,$t0,0xc
    slt        $v0,$s3,$t8
    beq        $ra, $s8, .L000007a4
    andi       $t2,$t2,0xfff
    slt        $a4,$s4,$t3
.L000006c4:
    movn       $a5,$t3,$a4
    move       $s6,$t2
    slt        $v1,$s2,$ra
    slt        $a0,$s5,$t2
    movn       $t1,$ra,$v1
    move       $a4,$t8
    movn       $s6,$s5,$a0
    movn       $a4,$s3,$v0
    slt        $at,$s6,$t1
    sll        $s7,$s6,0xc
    slt        $t2,$a4,$a5
    ld         $t8,8($sp)
    bnez       $at, .L00000644
    and        $s0,$a3,$s7
    subu       $v1,$a5,$t8
    bnez       $t2, .L00000644
    ld         $at,0($sp)
    subu       $t8,$a4,$t8
    lw         $t0,40($a1)
    dsll       $t0,$t0,0x2
    daddu      $t0,$a1,$t0
    subu       $a7,$t1,$at
    sw         $a7,44($t0)
    lw         $a0,40($a1)
    dsll       $a0,$a0,0x2
    daddu      $a0,$a1,$a0
    sw         $v1,60($a0)
    lw         $v0,40($a1)
    dsll       $v0,$v0,0x2
    subu       $at,$s6,$at
    daddu      $v0,$a1,$v0
    addiu      $at,$at,1
    sw         $at,76($v0)
    lw         $ra,40($a1)
    dsll       $ra,$ra,0x2
    daddu      $ra,$a1,$ra
    addiu      $t8,$t8,1
    sw         $t8,92($ra)
    lw         $t3,40($a1)
    addiu      $t3,$t3,1
    sw         $t3,40($a1)
    lw         $t0,4($a2)
    b          .L00000644
    lw         $a7,0($a2)
.L00000774:
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    ld         $s2,64($sp)
    ld         $s3,72($sp)
    ld         $s4,80($sp)
    ld         $s5,24($sp)
    ld         $ra,56($sp)
    ld         $s6,88($sp)
    ld         $s7,48($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000007a4:
    bnez       $t2, .L000006c4
    slt        $a4,$s4,$t3
    bne        $t3, $s8, .L000006c4
    slt        $a4,$s4,$t3
    bnez       $t8, .L000006c4
    slt        $a4,$s4,$t3
    b          .L00000680
    nop

glabel odsyClipPush
    lw         $v0,1496($a0)
    ld         $a4,864($a0)
    ld         $t1,176($a1)
    lui        $at,0x1
    ori        $t3,$at,0x443
    sw         $t3,0($a4)
    ld         $a3,864($a0)
    li         $t0,250
    sw         $t0,0($a3)
    ld         $a2,864($a0)
    ori        $t2,$at,0x46
    sw         $t2,0($a2)
    ld         $v1,864($a0)
    sw         $t2,0($v1)
    ld         $t9,864($a0)
    ori        $a2,$at,0x19
    sw         $a2,0($t9)
    ld         $t8,864($a0)
    sw         $t3,0($t8)
    ld         $a7,864($a0)
    li         $a6,150
    sw         $a6,0($a7)
    ld         $a5,864($a0)
    sw         $t2,0($a5)
    ld         $a4,864($a0)
    sw         $t2,0($a4)
    ld         $a3,864($a0)
    sw         $t2,0($a3)
    ld         $v1,864($a0)
    sw         $t2,0($v1)
    ld         $t9,864($a0)
    sw         $t3,0($t9)
    ld         $t8,864($a0)
    sw         $t0,0($t8)
    ld         $a7,864($a0)
    sw         $t2,0($a7)
    ld         $a6,864($a0)
    sw         $t2,0($a6)
    ld         $a6,864($a0)
    lui        $a5,0x3100
    lw         $t0,9888($t1)
    ori        $a5,$a5,0x8140
    sw         $a5,0($a6)
    ld         $a5,864($a0)
    lui        $a4,0x9000
    ori        $a4,$a4,0xbda2
    sw         $a4,0($a5)
    ld         $a3,864($a0)
    sw         $a2,0($a3)
    ld         $v1,864($a0)
    ori        $t9,$at,0x841
    sw         $t9,0($v1)
    ld         $t8,864($a0)
    lw         $a7,108($a1)
    sw         $a7,0($t8)
    ld         $a6,864($a0)
    lw         $a5,112($a1)
    sw         $a5,0($a6)
    ld         $a7,864($a0)
    dsll32     $v0,$v0,0x0
    li         $a4,-1
    ori        $a6,$at,0x840
    sw         $a6,0($a7)
    dsrl32     $a4,$a4,0x0
    li         $a5,-1
    lwu        $t8,4($a1)
    daddiu     $sp,$sp,-16
    dsll32     $a5,$a5,0x0
    ld         $t9,864($a0)
    and        $v0,$a5,$v0
    and        $t8,$a4,$t8
    move       $a3,$zero
    or         $t8,$t8,$v0
    sd         $t8,0($t9)
    ori        $at,$at,0x204b
    lui        $a7,0x3100
    ld         $v0,864($a0)
    sd         $t0,0($sp)
    andi       $a6,$t0,0x3ff
    lui        $t9,0x9000
    sra        $t0,$t0,0xa
    ori        $t8,$t9,0x8116
    sw         $at,0($v0)
.L00000910:
    dsll       $at,$a3,0x3
    daddu      $at,$a1,$at
    lwu        $a2,8($at)
    addiu      $a3,$a3,1
    lwu        $at,12($at)
    slti       $v1,$a3,4
    dsll32     $a2,$a2,0x0
    ld         $v0,864($a0)
    and        $at,$a4,$at
    and        $a2,$a5,$a2
    or         $at,$at,$a2
    bnez       $v1, .L00000910
    sd         $at,0($v0)
    ld         $a2,864($a0)
    sll        $v1,$t0,0x17
    ori        $a3,$a7,0x8000
    or         $v1,$a6,$v1
    or         $v1,$v1,$a3
    sw         $v1,0($a2)
    lw         $v0,6956($t1)
    sll        $v0,$v0,0x4
    bltz       $v0, .L00000ab0
    ld         $a3,864($a0)
    sw         $t8,0($a3)
.L00000970:
    ld         $t1,864($a0)
    sw         $t3,0($t1)
    ld         $t0,864($a0)
    li         $a7,150
    sw         $a7,0($t0)
    ld         $a6,864($a0)
    sw         $t2,0($a6)
    ld         $a5,864($a0)
    sw         $t2,0($a5)
    ld         $a3,864($a0)
    sw         $t2,0($a3)
    ld         $a2,864($a0)
    sw         $t2,0($a2)
    ld         $v1,864($a0)
    sw         $t3,0($v1)
    ld         $v0,864($a0)
    li         $at,250
    sw         $at,0($v0)
    ld         $t9,864($a0)
    sw         $t2,0($t9)
    ld         $t8,864($a0)
    sw         $t2,0($t8)
    lwu        $t3,140($a1)
    li         $t9,193
    ld         $t8,864($a0)
    dsll32     $t9,$t9,0x3
    and        $t3,$a4,$t3
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    lwu        $t2,148($a1)
    ld         $t3,864($a0)
    li         $t8,773
    dsll32     $t8,$t8,0x1
    and        $t2,$a4,$t2
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    lwu        $t1,144($a1)
    ld         $t2,864($a0)
    li         $t3,1545
    dsll32     $t3,$t3,0x0
    and        $t1,$a4,$t1
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    lwu        $t0,152($a1)
    ld         $t1,864($a0)
    li         $t2,1547
    dsll32     $t2,$t2,0x0
    and        $t0,$a4,$t0
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    lwu        $a7,156($a1)
    ld         $t0,864($a0)
    li         $t1,387
    dsll32     $t1,$t1,0x2
    and        $a7,$a4,$a7
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    lwu        $a6,160($a1)
    ld         $a7,864($a0)
    li         $t0,1549
    dsll32     $t0,$t0,0x0
    and        $a6,$a4,$a6
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    lwu        $a5,164($a1)
    ld         $a6,864($a0)
    li         $a7,775
    dsll32     $a7,$a7,0x1
    and        $a5,$a4,$a5
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    li         $a2,1551
    lwu        $a3,168($a1)
    dsll32     $a2,$a2,0x0
    ld         $a1,864($a0)
    daddiu     $sp,$sp,16
    and        $a0,$a4,$a3
    or         $a0,$a0,$a2
    jr         $ra
    sd         $a0,0($a1)
.L00000ab0:
    lui        $v0,0x1
    ori        $v0,$v0,0x841
    sw         $v0,0($a3)
    ld         $at,864($a0)
    sw         $zero,0($at)
    ld         $t9,864($a0)
    sw         $zero,0($t9)
    ld         $t9,864($a0)
    lui        $t8,0x1
    ori        $t8,$t8,0x204b
    sw         $t8,0($t9)
    ld         $t1,864($a0)
    sw         $zero,0($t1)
    ld         $t1,864($a0)
    lui        $t0,0xff
    ori        $t0,$t0,0xffff
    sw         $t0,0($t1)
    ld         $a7,864($a0)
    sw         $zero,0($a7)
    ld         $a6,864($a0)
    sw         $zero,0($a6)
    ld         $a5,864($a0)
    sw         $zero,0($a5)
    ld         $a2,864($a0)
    sw         $zero,0($a2)
    ld         $v1,864($a0)
    sw         $zero,0($v1)
    ld         $v0,864($a0)
    sw         $zero,0($v0)
    ld         $v0,864($a0)
    lui        $at,0x1
    ori        $at,$at,0x840
    sw         $at,0($v0)
    ld         $t9,864($a0)
    sw         $zero,0($t9)
    ld         $t8,864($a0)
    b          .L00000970
    sw         $zero,0($t8)

glabel gf_OdsyValidateBanks
    jr         $ra
    move       $v0,$zero

glabel gf_OdsySetNullClip
    sw         $zero,60($a0)
    sw         $zero,48($a0)
    li         $at,-1
    sw         $at,40($a0)
    sw         $zero,24($a0)
    sw         $zero,20($a0)
    sw         $zero,16($a0)
    sw         $zero,12($a0)
    sw         $zero,8($a0)
    li         $v0,1
    sw         $v0,52($a0)
    sw         $v0,44($a0)
    jr         $ra
    move       $v0,$zero

glabel gfP_OdsySetClipMask
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,8($sp)
    sd         $a2,24($sp)
    sd         $ra,40($sp)
    sw         $zero,0($a3)
    ld         $v0,72($a0)
    sd         $s0,32($sp)
    ld         $v0,112($v0)
    move       $s0,$a3
    jal        RRM_CheckValidFault
    sd         $v0,16($sp)
    bltz       $v0, .L00000c10
    ld         $a1,16($sp)
    li         $a2,16
    ld         $a0,24($sp)
    jal        copyin
    daddiu     $a1,$a1,124
    bnez       $v0, .L00000c1c
    ld         $a1,-30720($gp)
    ld         $a3,8($sp)
    move       $a1,$a3
    move       $a2,$a3
    ld         $a3,120($a3)
    ld         $a0,0($sp)
    jal        gf_OdsyValidateClip
    daddiu     $a3,$a3,96
    move       $a0,$v0
    sw         $v0,0($s0)
.L00000bfc:
    ld         $ra,40($sp)
    move       $v0,$a0
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000c10:
    li         $a0,14
    b          .L00000bfc
    sw         $a0,0($s0)
.L00000c1c:
    jal        cmn_err
    li         $a0,4
    li         $a0,14
    b          .L00000bfc
    sw         $a0,0($s0)

glabel gfP_OdsyGetDrawableGeometry
    sw         $zero,0($a3)
    daddiu     $sp,$sp,-48
    sd         $a1,16($sp)
    sd         $a2,24($sp)
    sd         $s0,32($sp)
    sd         $ra,40($sp)
    jal        RRM_CheckValidFault
    move       $s0,$a3
    bltz       $v0, .L00000cac
    li         $v0,14
    ld         $at,16($sp)
    ld         $at,112($at)
    ld         $a1,24($sp)
    lw         $a0,108($at)
    sw         $a0,0($sp)
    lw         $v1,112($at)
    sw         $v1,4($sp)
    lw         $v0,116($at)
    sw         $v0,8($sp)
    li         $a2,16
    lw         $at,120($at)
    daddiu     $a0,$sp,0
    jal        copyout
    sw         $at,12($sp)
    bnez       $v0, .L00000cb4
    ld         $a1,-30720($gp)
    lw         $v0,0($s0)
.L00000c9c:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000cac:
    b          .L00000c9c
    sw         $v0,0($s0)
.L00000cb4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,40
    li         $v0,14
    b          .L00000c9c
    sw         $v0,0($s0)

glabel gfP_OdsyClearBuffer
    sw         $zero,0($a3)
    daddiu     $sp,$sp,-400
    sd         $a1,192($sp)
    sd         $a2,200($sp)
    sd         $s1,232($sp)
    move       $s1,$a0
    sd         $s2,216($sp)
    sd         $ra,224($sp)
    jal        RRM_CheckValidFault
    move       $s2,$a3
    bltz       $v0, .L00000de8
    sd         $s0,320($sp)
    ld         $v1,40($s1)
    ld         $a0,200($sp)
    lw         $v0,80($v1)
    ld         $at,192($sp)
    addiu      $v0,$v0,1
    sw         $v0,80($v1)
    ld         $s0,40($s1)
    ld         $v0,120($at)
    ld         $at,112($at)
    sd         $at,312($sp)
    daddiu     $v0,$v0,96
    sd         $v0,176($sp)
    li         $a2,44
    ld         $at,176($at)
    daddiu     $a1,$sp,0
    jal        copyin
    sd         $at,184($sp)
    bnez       $v0, .L0000152c
    ld         $a0,312($sp)
    ld         $v1,184($sp)
    lw         $v1,6956($v1)
    sll        $v1,$v1,0x4
    bltz       $v1, .L00000df4
    ld         $a1,176($sp)
    lw         $a1,48($a1)
    beqz       $a1, .L00000d74
    move       $v0,$zero
    lw         $a2,40($sp)
    beqz       $a2, .L00001370
    move       $v0,$zero
.L00000d74:
    sltiu      $a1,$v0,1
    beqz       $a1, .L00000db8
    daddiu     $a7,$a0,92
    sd         $a7,80($sp)
    daddiu     $a6,$a0,60
    sd         $a6,72($sp)
    daddiu     $a5,$a0,76
    sd         $a5,64($sp)
    daddiu     $a4,$a0,44
    sd         $a4,56($sp)
    ld         $a3,224($a0)
    lw         $a4,40($a0)
    ld         $a3,120($a3)
    sw         $a4,88($sp)
    lw         $a3,104($a3)
    bnez       $a1, .L00000e20
    sw         $a3,48($sp)
.L00000db8:
    ld         $t1,40($s1)
    lw         $t0,80($t1)
    addiu      $t0,$t0,-1
    sw         $t0,80($t1)
    li         $v0,14
    sw         $v0,0($s2)
.L00000dd0:
    ld         $ra,224($sp)
    ld         $s2,216($sp)
    ld         $s0,320($sp)
    ld         $s1,232($sp)
    jr         $ra
    daddiu     $sp,$sp,400
.L00000de8:
    li         $v0,14
    b          .L00000dd0
    sw         $v0,0($s2)
.L00000df4:
    li         $t9,1
    sw         $t9,88($sp)
    daddiu     $t8,$sp,32
    sd         $t8,80($sp)
    daddiu     $t3,$sp,28
    sd         $t3,72($sp)
    daddiu     $t2,$sp,24
    sd         $t2,64($sp)
    daddiu     $t1,$sp,20
    sd         $t1,56($sp)
    sw         $zero,48($sp)
.L00000e20:
    lw         $ra,40($a0)
    blez       $ra, .L00000db8
    nop
    ld         $a0,808($s0)
    lw         $at,36($sp)
    jal        odsy_flow_am_i_attached
    sd         $at,144($sp)
    beqz       $v0, .L000013fc
    sd         $v0,160($sp)
    sd         $s7,328($sp)
.L00000e48:
    sd         $s5,336($sp)
    sd         $s4,344($sp)
    sd         $s6,352($sp)
    sd         $s3,360($sp)
    lw         $a0,88($sp)
    sd         $s8,368($sp)
    sd         $s2,376($sp)
    blez       $a0, .L00001330
    sd         $s1,384($sp)
    move       $ra,$zero
    li         $s8,-2
    lui        $t0,0x8000
    lui        $t3,0x7f
    lui        $s6,0x1
    lui        $s3,0x8f80
    ori        $s3,$s3,0xa92f
    ori        $s4,$s6,0x19
    ori        $s2,$s6,0x46
    ori        $s7,$s6,0x443
    ld         $v0,144($sp)
    ori        $s5,$s6,0x4001
    ori        $s6,$s6,0x4400
    sd         $s1,384($sp)
    b          .L00001570
    ori        $t3,$t3,0xffff
.L00000eac:
    lw         $t8,88($sp)
    slt        $t8,$ra,$t8
    dsll       $s1,$ra,0x2
    beqz       $t8, .L00001330
    addiu      $ra,$ra,1
    ld         $v1,72($sp)
.L00000ec4:
    ld         $a0,80($sp)
    daddu      $v1,$s1,$v1
    daddu      $a0,$s1,$a0
    lw         $a4,0($v1)
    lw         $t9,0($a0)
    li         $a2,1
    li         $a6,1
    sll        $a2,$a2,0x1
    ld         $t8,64($sp)
    sll        $a6,$a6,0x1
    lw         $a7,28($sp)
    ori        $a6,$a6,0x1
    ori        $a2,$a2,0x1
    lw         $a3,32($sp)
    ld         $at,56($sp)
    daddu      $t8,$s1,$t8
    slt        $a1,$a4,$a7
    movz       $a7,$a4,$a1
    slt        $a1,$t9,$a3
    pref       0x0,256($t8)
    daddu      $s1,$s1,$at
    movz       $t9,$a3,$a1
    pref       0x0,256($s1)
    nor        $t1,$a7,$zero
    slt        $at,$a7,$t9
    pref       0x0,256($a0)
    and        $t2,$a7,$t0
    move       $a0,$a7
    pref       0x0,256($v1)
    beqz       $at, .L00000eac
    nor        $a3,$t9,$zero
    beqz       $t2, .L00000f50
    and        $a1,$a0,$s8
    addiu      $a0,$t1,1
    and        $a1,$a0,$s8
.L00000f50:
    beqz       $a1, .L00001328
    move       $a7,$zero
    b          .L00001548
    move       $a7,$zero
.L00000f60:
    and        $a4,$a0,$a4
    sll        $a6,$a6,0x1
    beqz       $a4, .L00000f80
    ori        $a6,$a6,0x1
    addiu      $a7,$a7,1
.L00000f74:
    slti       $t1,$a7,32
    bnez       $t1, .L00000f60
    nor        $a4,$a6,$zero
.L00000f80:
    addiu      $at,$a7,127
.L00000f84:
    beqz       $a0, .L0000130c
    lw         $a1,0($t8)
    sd         $at,304($sp)
.L00000f90:
    and        $a6,$t9,$t0
    move       $t1,$t9
    beqz       $a6, .L00000fa4
    move       $t8,$zero
    addiu      $t1,$a3,1
.L00000fa4:
    and        $v1,$t1,$s8
    beqz       $v1, .L00001320
    sd         $a6,152($sp)
    b          .L00001550
    move       $a6,$zero
.L00000fb8:
    nor        $a3,$a2,$zero
    and        $a3,$t1,$a3
    sll        $a2,$a2,0x1
    beqz       $a3, .L00000fd8
    ori        $a2,$a2,0x1
    addiu      $a6,$a6,1
.L00000fd0:
    slti       $a3,$a6,32
    bnez       $a3, .L00000fb8
.L00000fd8:
    lw         $a3,20($sp)
    lw         $t9,0($s1)
    lw         $a4,24($sp)
    move       $a2,$zero
    beqz       $t1, .L00000ff4
    sd         $a4,288($sp)
    addiu      $a2,$a6,127
.L00000ff4:
    ld         $v1,288($sp)
    slt        $a4,$a3,$t9
    movz       $t9,$a3,$a4
    ld         $a4,304($sp)
    slt        $at,$a1,$v1
    andi       $a5,$a2,0xff
    sd         $a5,280($sp)
    movz       $a1,$v1,$at
    andi       $a4,$a4,0xff
    sd         $a4,264($sp)
    slt        $a5,$t9,$a1
    move       $a3,$t9
    nor        $v1,$t9,$zero
    sd         $v1,272($sp)
    and        $at,$t9,$t0
    beqz       $a5, .L00000eac
    sd         $at,296($sp)
    ld         $a5,296($sp)
    beqz       $a5, .L0000104c
    lw         $s1,48($sp)
    ld         $a3,272($sp)
    addiu      $a3,$a3,1
.L0000104c:
    and        $a4,$a3,$s8
    beqz       $a4, .L00001084
    sd         $a2,392($sp)
    li         $a2,1
    b          .L00001558
    move       $t8,$zero
.L00001064:
    and        $a5,$a3,$a5
    sll        $a2,$a2,0x1
    beqz       $a5, .L00001084
    ori        $a2,$a2,0x1
    addiu      $t8,$t8,1
.L00001078:
    slti       $a4,$t8,32
    bnez       $a4, .L00001064
    nor        $a5,$a2,$zero
.L00001084:
    beqz       $a3, .L00001314
    li         $a2,-16
    addiu      $a5,$t8,127
    sd         $a5,256($sp)
    sd         $t2,208($sp)
.L00001098:
    addu       $v1,$t9,$s1
    sd         $v1,248($sp)
    li         $t2,32
    ld         $at,280($sp)
    subu       $t2,$t2,$t8
    addu       $a4,$v1,$v0
    sllv       $t2,$a3,$t2
    and        $a2,$a2,$a4
    ld         $a4,256($sp)
    addu       $s1,$a1,$s1
    sll        $at,$at,0x17
    sd         $at,240($sp)
    ld         $at,296($sp)
    sra        $t2,$t2,0x9
    andi       $a4,$a4,0xff
    ld         $t8,208($sp)
    slt        $v1,$v1,$a2
    sll        $a4,$a4,0x17
    ld         $a1,248($sp)
    and        $t2,$t3,$t2
    or         $at,$at,$a4
    ld         $a3,264($sp)
    beqz       $v1, .L00001104
    or         $t2,$t2,$at
    slt        $v1,$s1,$a2
    beqz       $v1, .L00001108
    nop
.L00001104:
    move       $a2,$s1
.L00001108:
    slt        $a1,$a1,$a2
    li         $a4,32
    beqz       $a1, .L00000eac
    subu       $a5,$a4,$a7
    sll        $a3,$a3,0x17
    sllv       $a5,$a0,$a5
    subu       $a4,$a4,$a6
    sra        $a5,$a5,0x9
    ld         $a1,240($sp)
    or         $a3,$a3,$t8
    and        $a5,$a5,$t3
    sllv       $a4,$t1,$a4
    or         $a3,$a3,$a5
    ld         $a5,152($sp)
    sra        $a4,$a4,0x9
    and        $a4,$a4,$t3
    or         $a1,$a1,$a5
    b          .L000012c0
    or         $a1,$a1,$a4
.L00001154:
    and        $a4,$a7,$a4
    sll        $a2,$a2,0x1
    beqz       $a4, .L00001174
    ori        $a2,$a2,0x1
    addiu      $a6,$a6,1
.L00001168:
    slti       $a4,$a6,32
    bnez       $a4, .L00001154
    nor        $a4,$a2,$zero
.L00001174:
    beqz       $a7, .L00001300
    addiu      $a0,$a6,127
.L0000117c:
    sw         $s6,0($t9)
    ld         $a2,864($s0)
    li         $v1,10
    sw         $v1,0($a2)
    ld         $at,864($s0)
    sw         $s3,0($at)
    ld         $a5,864($s0)
    lw         $a4,0($sp)
    sw         $a4,0($a5)
    ld         $a2,864($s0)
    lw         $v1,4($sp)
    sw         $v1,0($a2)
    ld         $at,864($s0)
    lw         $a5,8($sp)
    sw         $a5,0($at)
    ld         $a4,864($s0)
    lw         $a2,12($sp)
    sw         $a2,0($a4)
    ld         $v1,864($s0)
    sw         $t2,0($v1)
    ld         $at,864($s0)
    sw         $a3,0($at)
    andi       $t2,$a0,0xff
    ld         $a2,864($s0)
    li         $at,32
    sll        $t2,$t2,0x17
    lw         $v1,16($sp)
    subu       $at,$at,$a6
    sw         $v1,0($a2)
    sllv       $at,$a7,$at
    ld         $a5,864($s0)
    sra        $at,$at,0x9
    or         $t2,$t2,$t8
    and        $at,$at,$t3
    or         $t2,$t2,$at
    sw         $t2,0($a5)
    ld         $a4,864($s0)
    sw         $a1,0($a4)
    ld         $a2,864($s0)
    lw         $v1,16($sp)
    sw         $v1,0($a2)
    ld         $at,864($s0)
    sw         $s5,0($at)
    ld         $a5,864($s0)
    sw         $s7,0($a5)
    ld         $a4,864($s0)
    li         $a2,250
    sw         $a2,0($a4)
    ld         $v1,864($s0)
    sw         $s2,0($v1)
    ld         $at,864($s0)
    sw         $s2,0($at)
    ld         $a5,864($s0)
    sw         $s4,0($a5)
    ld         $a4,864($s0)
    sw         $s7,0($a4)
    ld         $v1,864($s0)
    li         $at,150
    sw         $at,0($v1)
    ld         $a5,864($s0)
    sw         $s2,0($a5)
    ld         $a4,864($s0)
    sw         $s2,0($a4)
    ld         $v1,864($s0)
    sw         $s2,0($v1)
    ld         $at,864($s0)
    sw         $s2,0($at)
    ld         $a5,864($s0)
    sw         $s7,0($a5)
    ld         $a4,864($s0)
    sw         $a2,0($a4)
    ld         $v1,864($s0)
    addu       $a2,$t1,$v0
    sw         $s2,0($v1)
    slt        $at,$s1,$a2
    ld         $a5,864($s0)
    beqz       $at, .L000012b8
    sw         $s2,0($a5)
    move       $a2,$s1
.L000012b8:
    slt        $a4,$t1,$a2
    beqz       $a4, .L00000eac
.L000012c0:
    lw         $a7,48($sp)
    move       $a6,$zero
    move       $t1,$a2
    subu       $a7,$a2,$a7
    li         $a2,1
    and        $t8,$a7,$t0
    nor        $a0,$a7,$zero
    sll        $a2,$a2,0x1
    beqz       $t8, .L000012ec
    ori        $a2,$a2,0x1
    addiu      $a7,$a0,1
.L000012ec:
    and        $t9,$a7,$s8
    beqz       $t9, .L00001174
    ld         $t9,864($s0)
    b          .L00001568
    move       $a6,$zero
.L00001300:
    move       $a0,$zero
    b          .L0000117c
    nop
.L0000130c:
    b          .L00000f90
    sd         $zero,304($sp)
.L00001314:
    sd         $zero,256($sp)
    b          .L00001098
    sd         $t2,208($sp)
.L00001320:
    b          .L00000fd8
    move       $a6,$zero
.L00001328:
    b          .L00000f84
    addiu      $at,$a7,127
.L00001330:
    ld         $s1,384($sp)
    ld         $s2,376($sp)
    ld         $s8,368($sp)
    ld         $s3,360($sp)
    ld         $s6,352($sp)
    ld         $ra,160($sp)
    ld         $s4,344($sp)
    ld         $s5,336($sp)
    beqz       $ra, .L00001378
    ld         $s7,328($sp)
    ld         $v0,40($s1)
.L0000135c:
    lw         $at,80($v0)
    addiu      $at,$at,-1
    sw         $at,80($v0)
    b          .L00000dd0
    lw         $v0,0($s2)
.L00001370:
    b          .L00000d74
    li         $v0,1
.L00001378:
    jal        splhi
    nop
    ld         $a0,808($s0)
    sd         $v0,128($sp)
    beqz       $a0, .L000013dc
    sd         $v0,168($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000013dc
    nop
    lw         $v1,104($s0)
    beqz       $v1, .L00001440
    li         $a4,0x85c8
.L000013ac:
    daddu      $a4,$a4,$s0
    li         $a2,1
    sw         $a2,0($a4)
    ld         $a3,824($s0)
    sw         $a2,4220($a3)
    sync
    ld         $a1,824($s0)
    ld         $a0,808($s0)
    lw         $a1,4220($a1)
    sw         $a1,92($sp)
    jal        gfx_flow_detach_me
    move       $a1,$s1
.L000013dc:
    lw         $a5,4($s1)
    ld         $a0,168($sp)
    li         $a6,-3
    and        $a5,$a5,$a6
    jal        splx
    sw         $a5,4($s1)
    b          .L0000135c
    ld         $v0,40($s1)
.L000013fc:
    jal        splhi
    nop
    lw         $a7,4($s1)
    ori        $a7,$a7,0x2
    sw         $a7,4($s1)
    ld         $a0,808($s0)
    sd         $v0,120($sp)
    beqz       $a0, .L00001430
    sd         $v0,136($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000149c
    nop
.L00001430:
    jal        splx
    ld         $a0,136($sp)
    b          .L00000e48
    sd         $s7,328($sp)
.L00001440:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    sd         $v0,112($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    ld         $t1,112($sp)
    sltu       $t1,$t1,$v0
    beqz       $t1, .L000013ac
    li         $a4,0x85c8
    jal        rt_pin_thread
    nop
    sd         $v0,104($sp)
    jal        splx
    ld         $a0,128($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,168($sp)
    jal        rt_unpin_thread
    ld         $a0,104($sp)
    b          .L000013ac
    li         $a4,0x85c8
.L0000149c:
    jal        rt_pin_thread
    nop
    sd         $v0,96($sp)
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    lui        $t8,0x1
    ld         $at,-30720($gp)
    daddu      $t8,$s0,$t8
    lw         $t9,-31292($t8)
    lw         $ra,-19376($t8)
    sll        $ra,$ra,0xc
    and        $t9,$t9,$at
    or         $t9,$t9,$ra
    sw         $t9,-31292($t8)
    ld         $ra,824($s0)
    sw         $t9,4212($ra)
    sync
    sw         $zero,-31288($t8)
    ld         $t3,824($s0)
    sw         $zero,4220($t3)
    sync
    jal        splx
    ld         $a0,120($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,136($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s0)
    jal        rt_unpin_thread
    ld         $a0,96($sp)
    b          .L00001430
    nop
.L0000152c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,96
    li         $v0,14
    b          .L00000dd0
    sw         $v0,0($s2)
.L00001548:
    b          .L00000f74
    addiu      $a7,$a7,1
.L00001550:
    b          .L00000fd0
    addiu      $a6,$a6,1
.L00001558:
    sll        $a2,$a2,0x1
    ori        $a2,$a2,0x1
    b          .L00001078
    addiu      $t8,$t8,1
.L00001568:
    b          .L00001168
    addiu      $a6,$a6,1
.L00001570:
    dsll       $s1,$ra,0x2
    addiu      $ra,$ra,1
    b          .L00000ec4
    ld         $v1,72($sp)
