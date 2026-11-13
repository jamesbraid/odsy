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
    daddiu     $sp,$sp,-80
    sd         $ra,72($sp)
    sd         $s3,32($sp)
    sd         $s0,40($sp)
    sw         $zero,0($a3)
    sd         $s2,56($sp)
    ld         $s2,72($a0)
    ld         $s0,40($a0)
    ld         $s2,112($s2)
    sd         $s1,48($sp)
    move       $v0,$a2
    move       $s1,$a0
    ld         $at,824($s0)
    move       $s3,$a3
    beqz       $s2, .L0000070c
    sd         $at,24($sp)
    daddiu     $a1,$sp,0
    move       $a0,$a2
    jal        copyin
    li         $a2,4
    bnez       $v0, .L00000728
    lw         $t8,0($sp)
    move       $a0,$s1
    jal        RRM_CheckValidFault
    sw         $t8,568($s2)
    bltz       $v0, .L000005e8
    li         $v0,14
    jal        odsy_flow_am_i_attached
    ld         $a0,808($s0)
    beqz       $v0, .L00000664
    move       $s3,$v0
    move       $a0,$s2
.L000005bc:
    jal        odsyPushBufferSelect
    ld         $a1,24($sp)
    beqz       $s3, .L000005f0
    move       $v0,$zero
.L000005cc:
    ld         $s3,32($sp)
    ld         $ra,72($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s2,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000005e8:
    b          .L000005cc
    sw         $v0,0($s3)
.L000005f0:
    jal        splhi
    nop
    lw         $t9,4($s1)
    li         $ra,-3
    and        $t9,$t9,$ra
    sw         $t9,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L00000654
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000654
    li         $a0,0x85c8
    daddu      $a0,$a0,$s0
    li         $v0,1
    sw         $v0,0($a0)
    ld         $v1,824($s0)
    sw         $v0,4220($v1)
    sync
    ld         $at,824($s0)
    ld         $a0,808($s0)
    lw         $at,4204($at)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $at,4($sp)
.L00000654:
    jal        splx
    move       $a0,$s2
    b          .L000005cc
    move       $v0,$zero
.L00000664:
    jal        splhi
    nop
    lw         $a1,4($s1)
    ori        $a1,$a1,0x2
    sw         $a1,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L00000694
    sd         $v0,64($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000006a4
    nop
.L00000694:
    jal        splx
    ld         $a0,64($sp)
    b          .L000005bc
    move       $a0,$s2
.L000006a4:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    ld         $a0,808($s0)
    lui        $a2,0x1
    daddu      $a2,$s0,$a2
    sd         $a2,8($sp)
    lw         $a2,-31292($a2)
    jal        gfx_flow_credit_tnum_get
    sd         $a2,16($sp)
    ld         $a6,-30720($gp)
    ld         $a5,16($sp)
    ld         $a4,8($sp)
    and        $a5,$a5,$a6
    sll        $a6,$v0,0xc
    or         $a5,$a5,$a6
    sw         $a5,-31292($a4)
    ld         $a6,824($s0)
    sw         $a5,4212($a6)
    sync
    sw         $zero,-31288($a4)
    ld         $a3,824($s0)
    sw         $zero,4220($a3)
    sync
    b          .L00000694
    nop
.L0000070c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,104
    li         $v0,1
    b          .L000005cc
    sw         $v0,0($s3)
.L00000728:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,160
    li         $v0,14
    b          .L000005cc
    sw         $v0,0($s3)

glabel odsyPushBufferSelect
    ld         $a4,224($a0)
    lw         $t2,568($a0)
    li         $t0,1
    lui        $t8,0x1
    ld         $t3,64($a4)
    andi       $a6,$t2,0x2
    andi       $a5,$t2,0x8
    andi       $a7,$t2,0x1
    beqz       $a4, .L000007d4
    ld         $t3,40($t3)
    move       $t1,$a7
    ld         $a3,120($a4)
    li         $t0,1
    beqz       $a3, .L000009e8
    andi       $a5,$t2,0x8
    lw         $t9,32($a3)
    andi       $t1,$t2,0x4
    beqz       $a4, .L000009d4
    andi       $t9,$t9,0x3c00
    beqz       $a3, .L000009d4
    nop
    lh         $at,18($a3)
    beqz       $at, .L000009d4
    nop
    move       $t1,$a7
    andi       $a7,$t2,0x4
    move       $a5,$a6
    andi       $a6,$t2,0x8
    beqz       $t9, .L000007d8
    move       $t0,$zero
.L000007bc:
    li         $a3,12
    or         $v1,$t1,$a5
    or         $v0,$a7,$a6
    or         $v0,$v0,$v1
    b          .L000007f8
    movz       $a3,$zero,$v0
.L000007d4:
    andi       $t1,$t2,0x4
.L000007d8:
    sltu       $a2,$zero,$a7
.L000007dc:
    ori        $a3,$a2,0x2
    beqz       $t1, .L000007ec
    movz       $a3,$a2,$a6
    ori        $a3,$a3,0x4
.L000007ec:
    beqz       $a5, .L000007fc
    daddu      $v0,$t3,$t8
    ori        $a3,$a3,0x8
.L000007f8:
    daddu      $v0,$t3,$t8
.L000007fc:
    sw         $a3,-19760($v0)
    ld         $a7,176($a0)
    lw         $t9,6948($a7)
    sw         $t9,-23924($v0)
    lw         $t2,6952($a7)
    sw         $t2,-23920($v0)
    lw         $t1,6956($a7)
    sw         $t1,-23916($v0)
    li         $a3,193
    lui        $a5,0x11
    lw         $a7,6960($a7)
    dsll32     $a3,$a3,0x3
    daddu      $a5,$a1,$a5
    sw         $a7,-23912($v0)
    lui        $a6,0x1
    ori        $t9,$t8,0x443
    sw         $t9,0($a5)
    li         $t1,250
    sync
    sw         $t1,0($a5)
    ori        $a6,$a6,0x46
    sync
    sw         $a6,0($a5)
    lui        $a2,0x1
    sync
    sw         $a6,0($a5)
    ori        $a2,$a2,0x19
    sync
    sw         $a2,0($a5)
    sync
    sw         $t9,0($a5)
    li         $at,150
    sync
    sw         $at,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $t9,0($a5)
    sync
    sw         $t1,0($a5)
    sync
    sw         $a6,0($a5)
    lui        $v1,0x1
    sync
    sw         $a6,0($a5)
    ori        $v1,$v1,0x424
    sync
    sw         $v1,0($a5)
    sync
    lw         $v0,-19760($v0)
    sw         $v0,0($a5)
    sync
    sw         $t9,0($a5)
    sync
    sw         $at,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    lui        $t2,0x8000
    sw         $t9,0($a5)
    sync
    li         $v1,1545
    sw         $t1,0($a5)
    sync
    li         $a7,-1
    sw         $a6,0($a5)
    sync
    sw         $a6,0($a5)
    sync
    lui        $t1,0x7fff
    lw         $a6,140($a0)
    beqz       $a4, .L000009cc
    ori        $t9,$t1,0xffff
    ld         $a1,128($a4)
    beqz       $a1, .L000009cc
    nop
    lh         $at,18($a1)
    beqz       $at, .L000009cc
    move       $a1,$zero
.L00000968:
    move       $t1,$t2
    movz       $t2,$zero,$a1
    and        $a6,$t9,$a6
    movz       $t1,$zero,$t0
    dsrl32     $v0,$a7,0x0
    lw         $a4,144($a0)
    or         $a6,$a6,$t1
    dsll32     $a2,$a6,0x0
    sw         $a6,140($a0)
    and        $a4,$t9,$a4
    dsrl32     $a2,$a2,0x0
    or         $a4,$a4,$t2
    sw         $a4,144($a0)
    and        $a2,$v0,$a2
    or         $a2,$a2,$a3
    sd         $a2,0($a5)
    sync
    lwu        $a0,144($a0)
    dsll32     $v1,$v1,0x0
    and        $v0,$v0,$a0
    or         $v0,$v0,$v1
    sd         $v0,0($a5)
    sync
    jr         $ra
    nop
.L000009cc:
    b          .L00000968
    li         $a1,1
.L000009d4:
    andi       $a6,$t2,0x2
    bnez       $t9, .L000007bc
    andi       $a7,$t2,0x1
    b          .L000007dc
    sltu       $a2,$zero,$a7
.L000009e8:
    beqz       $a4, .L00000a14
    nop
    beqz       $a3, .L00000a14
    nop
    lh         $t9,18($a3)
    beqz       $t9, .L00000a14
    move       $t0,$zero
    andi       $a7,$t2,0x4
    move       $a5,$a6
    b          .L000007d8
    andi       $a6,$t2,0x8
.L00000a14:
    andi       $t1,$t2,0x4
    andi       $a5,$t2,0x8
    li         $t0,1
    andi       $a6,$t2,0x2
    b          .L000007d8
    andi       $a7,$t2,0x1

glabel gfP_OdsyMakeCurrent
    daddiu     $sp,$sp,-176
    sd         $s0,136($sp)
    sw         $zero,0($a3)
    ld         $s0,40($a0)
    sd         $s1,144($sp)
    ld         $s1,72($a0)
    sd         $s4,128($sp)
    ld         $s1,112($s1)
    sd         $s2,112($sp)
    move       $s2,$a0
    move       $s4,$a2
    sd         $s3,120($sp)
    move       $s3,$a3
    beqz       $s1, .L00000cd4
    sd         $ra,160($sp)
    daddiu     $a1,$sp,0
    move       $a0,$a2
    jal        copyin
    li         $a2,80
    bnez       $v0, .L00000cf0
    ld         $a1,-30720($gp)
    jal        RRM_CheckValidFault
    move       $a0,$s2
    bltz       $v0, .L00000bb0
    li         $v0,14
    ld         $t9,40($s2)
    lw         $t8,80($t9)
    addiu      $t8,$t8,1
    sw         $t8,80($t9)
    jal        odsy_flow_am_i_attached
    ld         $a0,808($s0)
    beqz       $v0, .L00000bb8
    sd         $v0,104($sp)
    move       $a0,$s0
.L00000ab4:
    move       $a1,$s1
    jal        odsyUnbindDrawable
    li         $a2,1
    move       $a0,$s0
    move       $a1,$s1
    jal        odsyUnbindDrawable
    li         $a2,2
    move       $a0,$s0
    move       $a1,$s1
    li         $a2,1
    jal        odsyBindDrawable
    lw         $a3,0($sp)
    move       $a0,$s0
    move       $a1,$s1
    li         $a2,2
    jal        odsyBindDrawable
    lw         $a3,40($sp)
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
    ld         $a7,104($sp)
    beqz       $a7, .L00000bf8
    nop
    ld         $t1,40($s2)
.L00000b68:
    li         $a2,80
    lw         $t0,80($t1)
    move       $a1,$s4
    daddiu     $a0,$sp,0
    addiu      $t0,$t0,-1
    jal        copyout
    sw         $t0,80($t1)
    bnez       $v0, .L00000d08
    ld         $a1,-30720($gp)
    lw         $v0,0($s3)
.L00000b90:
    ld         $s2,112($sp)
    ld         $s3,120($sp)
    ld         $ra,160($sp)
    ld         $s4,128($sp)
    ld         $s0,136($sp)
    ld         $s1,144($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L00000bb0:
    b          .L00000b90
    sw         $v0,0($s3)
.L00000bb8:
    jal        splhi
    nop
    lw         $t1,4($s2)
    ori        $t1,$t1,0x2
    sw         $t1,4($s2)
    ld         $a0,808($s0)
    beqz       $a0, .L00000be8
    sd         $v0,152($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000c6c
    nop
.L00000be8:
    jal        splx
    ld         $a0,152($sp)
    b          .L00000ab4
    move       $a0,$s0
.L00000bf8:
    jal        splhi
    nop
    lw         $t2,4($s2)
    li         $t3,-3
    and        $t2,$t2,$t3
    sw         $t2,4($s2)
    ld         $a0,808($s0)
    beqz       $a0, .L00000c5c
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000c5c
    li         $at,0x85c8
    daddu      $at,$at,$s0
    li         $t9,1
    sw         $t9,0($at)
    ld         $ra,824($s0)
    sw         $t9,4220($ra)
    sync
    ld         $t8,824($s0)
    ld         $a0,808($s0)
    lw         $t8,4204($t8)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $t8,80($sp)
.L00000c5c:
    jal        splx
    move       $a0,$s1
    b          .L00000b68
    ld         $t1,40($s2)
.L00000c6c:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s2
    ld         $a0,808($s0)
    lui        $v0,0x1
    daddu      $v0,$s0,$v0
    sd         $v0,88($sp)
    lw         $v0,-31292($v0)
    jal        gfx_flow_credit_tnum_get
    sd         $v0,96($sp)
    ld         $a2,-30720($gp)
    ld         $a1,96($sp)
    ld         $a0,88($sp)
    and        $a1,$a1,$a2
    sll        $a2,$v0,0xc
    or         $a1,$a1,$a2
    sw         $a1,-31292($a0)
    ld         $a2,824($s0)
    sw         $a1,4212($a2)
    sync
    sw         $zero,-31288($a0)
    ld         $v1,824($s0)
    sw         $zero,4220($v1)
    sync
    b          .L00000be8
    nop
.L00000cd4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,104
    li         $v0,1
    b          .L00000b90
    sw         $v0,0($s3)
.L00000cf0:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,208
    li         $v0,14
    b          .L00000b90
    sw         $v0,0($s3)
.L00000d08:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,208
    li         $v0,14
    b          .L00000b90
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
    bnez       $v0, .L00000e78
    sd         $s2,48($sp)
    lw         $v0,4($sp)
    li         $v1,-1
    beq        $v0, $v1, .L00000e94
    ld         $a1,-30720($gp)
    daddiu     $a0,$s0,2368
    jal        OdsyLookupCSetId
    move       $a1,$zero
    beqz       $v0, .L00000eac
    lw         $a1,4($sp)
    jal        OdsyLookupCSetId
    daddiu     $a0,$v0,72
    beqz       $v0, .L00000ec8
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
    beqz       $v0, .L00000dec
    move       $a0,$s0
    jal        mrunlock
    move       $a0,$s1
    b          .L00000e40
    li         $v0,11
.L00000dec:
    jal        odsyCreateDrawable
    lw         $a1,0($sp)
    beqz       $v0, .L00000e58
    move       $s0,$v0
    li         $a3,1
    sw         $a3,32($v0)
    li         $a1,2
    sw         $a1,36($v0)
    ld         $a2,16($sp)
    move       $a0,$s1
    jal        mrtrypromote
    sd         $a2,24($v0)
    beqz       $v0, .L00000e68
    ld         $a0,8($sp)
    move       $a1,$s2
    move       $a2,$s0
    jal        odsyHashInsert
    ld         $a0,-31144($a0)
    jal        mrunlock
    move       $a0,$s1
    move       $v0,$zero
.L00000e40:
    ld         $ra,24($sp)
    ld         $s0,32($sp)
    ld         $s2,48($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000e58:
    jal        mrunlock
    move       $a0,$s1
    b          .L00000e40
    li         $v0,12
.L00000e68:
    jal        mrunlock
    move       $a0,$s1
    b          .L00000e40
    li         $v0,13
.L00000e78:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,256
    li         $v0,14
    b          .L00000e40
    sw         $v0,0($s1)
.L00000e94:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,304
    li         $v0,22
    b          .L00000e40
    sw         $v0,0($s1)
.L00000eac:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,392
    li         $v0,22
    b          .L00000e40
    sw         $v0,0($s1)
.L00000ec8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,440
    li         $v0,22
    b          .L00000e40
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
    bnez       $v0, .L00001018
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
    beqz       $v0, .L00000ff4
    move       $s0,$v0
    ld         $v0,24($v0)
    beqz       $v0, .L00001038
    ld         $a1,-30720($gp)
    lw         $a1,0($v0)
    move       $a0,$s1
    jal        mrtrypromote
    sw         $a1,4($sp)
    beqz       $v0, .L00000fe4
    nop
    jal        odsyHashRemove
    move       $a0,$s0
    lw         $a3,32($s0)
    li         $a2,1
    beqz       $a3, .L00001004
    sw         $a2,36($s0)
    ld         $s0,8($sp)
.L00000fac:
    jal        mrunlock
    move       $a0,$s1
    li         $a2,8
    move       $a1,$s0
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L0000104c
    move       $v0,$zero
.L00000fcc:
    ld         $ra,32($sp)
    ld         $s2,24($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000fe4:
    jal        mrunlock
    move       $a0,$s1
    b          .L00000fcc
    li         $v0,13
.L00000ff4:
    jal        mrunlock
    move       $a0,$s1
    b          .L00000fcc
    li         $v0,22
.L00001004:
    move       $a0,$s2
    jal        odsyDestroyDrawable
    move       $a1,$s0
    b          .L00000fac
    ld         $s0,8($sp)
.L00001018:
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $s0,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,496
    li         $v0,14
    b          .L00000fcc
    sw         $v0,0($s0)
.L00001038:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,544
    b          .L00000fcc
    move       $v0,$zero
.L0000104c:
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $s0,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,592
    li         $v0,14
    b          .L00000fcc
    sw         $v0,0($s0)
