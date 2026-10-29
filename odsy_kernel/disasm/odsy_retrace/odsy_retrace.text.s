.section .text
.set noat
.set noreorder


glabel odsyInitRetrace
    daddiu     $sp,$sp,-32
    li         $a1,1368
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s3,0($sp)
    daddiu     $s3,$a0,28504
    sd         $ra,8($sp)
    jal        bzero
    move       $a0,$s3
    sw         $zero,28564($s0)
    sd         $zero,29864($s0)
    ld         $a2,-30720($gp)
    li         $a3,-1
    move       $a1,$zero
    sw         $zero,28572($s0)
    move       $a0,$s3
    jal        init_mutex
    sw         $zero,28528($s0)
    li         $a3,-1
    ld         $a2,-30720($gp)
    move       $a1,$zero
    daddiu     $a0,$s0,28520
    ld         $s3,0($sp)
    jal        init_sv
    daddiu     $a2,$a2,24
    sw         $zero,28544($s0)
    sd         $zero,28536($s0)
    ld         $ra,8($sp)
    li         $a4,1
    sw         $a4,176($s0)
    daddiu     $a3,$s0,28536
    sd         $a3,184($s0)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyValidateBuffer
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    slti       $at,$a1,32
    dsll       $a5,$a1,0x2
    move       $s0,$a0
    sd         $a1,0($sp)
    daddu      $a5,$a5,$a1
    beqz       $at, .L00000120
    sd         $ra,16($sp)
    dsll       $v0,$a5,0x3
    daddu      $v0,$a0,$v0
    ld         $a7,28608($v0)
    beqz       $a7, .L0000010c
    nop
    ld         $a0,28584($v0)
    ld         $a0,224($a0)
    beqz       $a0, .L000000e0
    ld         $a3,0($sp)
    jal        rrmValidateBuffer
    nop
    ld         $a3,0($sp)
.L000000e0:
    li         $a2,1
    lw         $a1,28568($s0)
    sllv       $a2,$a2,$a3
    nor        $a2,$a2,$zero
    move       $v0,$zero
    and        $a1,$a1,$a2
    sw         $a1,28568($s0)
.L000000fc:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000010c:
    lw         $a1,28616($v0)
    jal        rrmValidateMGRSwapBuf
    ld         $a0,0($a0)
    b          .L000000e0
    ld         $a3,0($sp)
.L00000120:
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $a2,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,40
    b          .L000000fc
    li         $v0,22

glabel odsySwapBuffer
    lw         $t1,28572($a0)
    lw         $t0,28528($a0)
    lw         $a5,28576($a0)
    lw         $a7,28544($a0)
    daddiu     $sp,$sp,-96
    sd         $s4,24($sp)
    ld         $s4,824($a0)
    sd         $s2,40($sp)
    sd         $s3,48($sp)
    sd         $s6,56($sp)
    move       $a2,$a1
    sd         $s0,32($sp)
    slti       $at,$a1,32
    move       $s0,$a0
    sd         $ra,64($sp)
    dsll       $a6,$a1,0x2
    sd         $s5,72($sp)
    daddu      $a6,$a6,$a1
    beqz       $at, .L00000368
    dsll       $a6,$a6,0x3
    lw         $t3,128($a0)
    daddu      $s2,$a0,$a6
    lw         $t8,28596($s2)
    li         $t2,1
    sllv       $v0,$t2,$a1
    sltu       $t3,$t3,$t8
    nor        $ra,$v0,$zero
    lw         $a0,28600($s2)
    beqz       $t3, .L000001bc
    and        $a1,$v0,$a5
    beqz       $a1, .L00000358
    nop
.L000001bc:
    lw         $t9,28552($s0)
    lw         $t8,28556($s0)
    lw         $s5,28564($s0)
    or         $t8,$v0,$t8
    sw         $t8,28556($s0)
    and        $t9,$t9,$ra
    sw         $t9,28552($s0)
    nor        $s5,$s5,$zero
    and        $s5,$a0,$s5
    sw         $s5,28600($s2)
    lw         $s3,28564($s0)
    lw         $t9,28544($s0)
    nor        $s3,$s3,$zero
    and        $s3,$a7,$s3
    beq        $t9, $s3, .L00000204
    nop
    sw         $s3,4284($s4)
    sync
.L00000204:
    lw         $a0,28556($s0)
    nor        $at,$a0,$zero
    and        $at,$s5,$at
    beqz       $at, .L0000025c
    sw         $s3,28544($s0)
    lw         $v1,28620($s2)
    addiu      $v1,$v1,1
    sltiu      $a0,$v1,301
    bnez       $a0, .L00000234
    sw         $v1,28620($s2)
    sw         $v0,28600($s2)
    sw         $zero,28620($s2)
.L00000234:
    move       $v0,$zero
.L00000238:
    ld         $s2,40($sp)
    ld         $s3,48($sp)
    ld         $s6,56($sp)
    ld         $ra,64($sp)
    ld         $s4,24($sp)
    ld         $s5,72($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L0000025c:
    sd         $t1,8($sp)
    sd         $t0,0($sp)
    nor        $a1,$t1,$zero
    sd         $s1,80($sp)
    move       $s1,$zero
    and        $s6,$s5,$a5
    nor        $a2,$s5,$zero
    sd         $a2,16($sp)
    and        $v0,$s6,$t1
    and        $a2,$a0,$a2
    beqz       $s6, .L000002e0
    sw         $a2,28556($s0)
    sw         $v0,4292($s4)
    sync
    and        $a3,$s6,$a1
    sw         $a3,4300($s4)
    sync
    b          .L000002c4
    sllv       $a5,$t2,$s1
.L000002a8:
    jal        odsyValidateBuffer
    move       $a1,$s1
    addiu      $s1,$s1,1
    slti       $a4,$s1,32
    beqz       $a4, .L000002e0
    li         $t2,1
    sllv       $a5,$t2,$s1
.L000002c4:
    and        $a5,$s6,$a5
    bnez       $a5, .L000002a8
    move       $a0,$s0
    addiu      $s1,$s1,1
    slti       $a6,$s1,32
    bnez       $a6, .L000002c4
    sllv       $a5,$t2,$s1
.L000002e0:
    ld         $a2,8($sp)
    ld         $a5,0($sp)
    nor        $a1,$s6,$zero
    and        $a1,$s5,$a1
    xor        $a5,$a5,$a2
    and        $a5,$a5,$a1
    and        $a0,$s3,$s5
    and        $a2,$s5,$a2
    beqz       $a5, .L00000310
    nor        $v0,$a5,$zero
    sw         $a5,4276($s4)
    sync
.L00000310:
    and        $a7,$a0,$v0
    nor        $a6,$a7,$zero
    ld         $s1,80($sp)
    beqz       $a7, .L00000330
    and        $a6,$s3,$a6
    sw         $a6,4284($s4)
    sync
    sw         $a6,28544($s0)
.L00000330:
    lw         $t0,28560($s0)
    ld         $t2,0($sp)
    ld         $t1,16($sp)
    or         $t0,$t0,$a1
    sw         $t0,28560($s0)
    and        $t1,$t1,$t2
    or         $t1,$a2,$t1
    sw         $t1,28528($s0)
    b          .L00000234
    sw         $zero,28620($s2)
.L00000358:
    lw         $t3,28552($s0)
    or         $t3,$v0,$t3
    b          .L00000234
    sw         $t3,28552($s0)
.L00000368:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,88
    b          .L00000238
    li         $v0,22

glabel gf_OdsySchedSwapBuf
    daddiu     $sp,$sp,-112
    sd         $a1,16($sp)
    sd         $s1,56($sp)
    ld         $s1,64($a1)
    sd         $s3,24($sp)
    ld         $s3,120($a1)
    sd         $s8,40($sp)
    ld         $s8,824($a0)
    sd         $s6,32($sp)
    ld         $s6,112($a1)
    sd         $s2,72($sp)
    sd         $s4,80($sp)
    sd         $ra,88($sp)
    sd         $s0,48($sp)
    slti       $at,$a2,32
    move       $s0,$a0
    sd         $s5,64($sp)
    move       $s5,$a2
    beqz       $at, .L000007bc
    sd         $s7,96($sp)
    jal        odsy_flow_am_i_attached
    ld         $a0,808($a0)
    beqz       $v0, .L00000660
    move       $s2,$v0
    move       $a0,$s6
.L000003e4:
    jal        odsyPushBufferSelect
    move       $a1,$s8
    lui        $v1,0xaff0
    beqz       $s2, .L000006a0
    ld         $v1,128($v1)
    li         $s7,1
    li         $a1,25
.L00000400:
    daddiu     $s2,$s0,28504
    jal        mutex_lock
    move       $a0,$s2
    bltz       $s5, .L0000047c
    sllv       $s4,$s7,$s5
    lw         $a0,28568($s0)
    and        $a0,$s4,$a0
    beqz       $a0, .L0000047c
    dsll       $a1,$s5,0x2
    daddu      $a1,$a1,$s5
    dsll       $a1,$a1,0x3
    daddu      $a1,$s0,$a1
    ld         $a1,28608($a1)
    beqz       $a1, .L0000044c
    daddiu     $s1,$s0,28520
    jal        mutex_unlock
    move       $a0,$s2
    b          .L000005f4
    li         $v0,16
.L0000044c:
    move       $a0,$s1
.L00000450:
    li         $a1,25
    move       $a2,$s2
    jal        sv_wait
    move       $a3,$zero
    move       $a0,$s2
    jal        mutex_lock
    li         $a1,25
    lw         $a2,28568($s0)
    and        $a2,$s4,$a2
    bnez       $a2, .L00000450
    move       $a0,$s1
.L0000047c:
    lw         $a6,28544($s0)
    beqz       $a6, .L000004a4
    nop
    ld         $a3,28536($s0)
    bnez       $a3, .L000004a4
    nop
    sw         $zero,4284($s8)
    sync
    sw         $zero,28544($s0)
    move       $a6,$zero
.L000004a4:
    lw         $a4,28568($s0)
    or         $a4,$s4,$a4
    sw         $a4,28568($s0)
    bltz       $s5, .L00000634
    ld         $a5,160($s3)
    beqz       $a5, .L00000650
    move       $s1,$s4
    ld         $v0,168($s3)
    beq        $v0, $s3, .L00000504
    nop
.L000004cc:
    lw         $a2,20($v0)
    ld         $v0,168($v0)
    bltz       $a2, .L000004e0
    sllv       $a2,$s7,$a2
    or         $s1,$s1,$a2
.L000004e0:
    beq        $s3, $v0, .L00000504
    nop
    lw         $a2,20($v0)
    ld         $v0,168($v0)
    bltz       $a2, .L000004fc
    sllv       $a2,$s7,$a2
    or         $s1,$s1,$a2
.L000004fc:
    bne        $s3, $v0, .L000004cc
    nop
.L00000504:
    ld         $a3,28536($s0)
    bne        $a3, $a5, .L00000524
    nop
    beq        $a6, $s1, .L00000524
    nop
.L00000518:
    sw         $s1,4284($s8)
    sync
    sw         $s1,28544($s0)
.L00000524:
    bltz       $s5, .L0000073c
    dsll       $v0,$s5,0x2
.L0000052c:
    daddu      $v0,$v0,$s5
    dsll       $v0,$v0,0x3
    daddu      $v0,$s0,$v0
    sd         $s6,28584($v0)
    sd         $s3,28608($v0)
    ld         $a4,176($s6)
    lhu        $a4,11068($a4)
    sh         $a4,28592($v0)
    sw         $s1,28600($v0)
    sw         $zero,28620($v0)
    lw         $a2,24($s3)
    lw         $a3,28($s3)
    addu       $a2,$a2,$a3
    sw         $a2,28596($v0)
    lw         $a0,24($s3)
    lw         $a1,128($s0)
    lw         $a4,28596($v0)
    addu       $a0,$a0,$a1
    sltu       $a4,$a0,$a4
    beqz       $a4, .L00000584
    nop
    sw         $a0,28596($v0)
.L00000584:
    lh         $a3,18($s3)
    lw         $a4,28572($s0)
    nor        $a2,$s4,$zero
    sllv       $a3,$a3,$s5
    and        $a4,$a2,$a4
    or         $a3,$a3,$a4
    sw         $a3,28572($s0)
    lw         $a1,580($s6)
    lw         $a3,28576($s0)
    sllv       $a1,$a1,$s5
    and        $a2,$a2,$a3
    or         $a1,$a1,$a2
    sw         $a1,28576($s0)
    lw         $a0,244($s6)
    ld         $v1,880($s0)
    daddu      $a0,$a0,$a0
    daddu      $v1,$v1,$a0
    lhu        $v1,0($v1)
    lhu        $a0,28592($v0)
    beq        $v1, $a0, .L00000624
    move       $a0,$s0
    lw         $a4,28548($s0)
    or         $a4,$s4,$a4
    sw         $a4,28548($s0)
    sw         $zero,28620($v0)
.L000005e8:
    jal        mutex_unlock
    move       $a0,$s2
    move       $v0,$zero
.L000005f4:
    ld         $s2,72($sp)
    ld         $s3,24($sp)
    ld         $s6,32($sp)
    ld         $s4,80($sp)
    ld         $s8,40($sp)
    ld         $s0,48($sp)
    ld         $ra,88($sp)
    ld         $s1,56($sp)
    ld         $s5,64($sp)
    ld         $s7,96($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000624:
    jal        odsySwapBuffer
    move       $a1,$s5
    b          .L000005e8
    nop
.L00000634:
    beqz       $a5, .L00000650
    move       $s1,$zero
    ld         $v0,168($s3)
    beq        $v0, $s3, .L00000720
    move       $s1,$zero
    b          .L000004cc
    move       $s1,$zero
.L00000650:
    bgez       $s5, .L0000052c
    dsll       $v0,$s5,0x2
    b          .L000005e8
    nop
.L00000660:
    jal        splhi
    nop
    lw         $a5,4($s1)
    ori        $a5,$a5,0x2
    sw         $a5,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L00000690
    move       $s4,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000075c
    nop
.L00000690:
    jal        splx
    move       $a0,$s4
    b          .L000003e4
    move       $a0,$s6
.L000006a0:
    jal        splhi
    nop
    lw         $a6,4($s1)
    li         $a7,-3
    and        $a6,$a6,$a7
    sw         $a6,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L0000070c
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000710
    li         $s7,1
    li         $t2,0x85c8
    daddu      $t2,$t2,$s0
    sw         $s7,0($t2)
    ld         $t1,824($s0)
    sw         $s7,4220($t1)
    sync
    ld         $t0,824($s0)
    ld         $a0,808($s0)
    lw         $t0,4204($t0)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $t0,0($sp)
    b          .L00000710
    nop
.L0000070c:
    li         $s7,1
.L00000710:
    jal        splx
    move       $a0,$s2
    b          .L00000400
    li         $a1,25
.L00000720:
    ld         $t3,28536($s0)
    bne        $t3, $a5, .L00000524
    nop
    beqz       $a6, .L00000754
    nop
    b          .L00000518
    move       $s1,$zero
.L0000073c:
    jal        rrmValidateBuffer
    ld         $a0,16($sp)
    bgez       $s5, .L0000052c
    dsll       $v0,$s5,0x2
    b          .L000005e8
    nop
.L00000754:
    b          .L00000524
    move       $s1,$zero
.L0000075c:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    ld         $a0,808($s0)
    lui        $s7,0x1
    daddu      $s7,$s0,$s7
    sd         $s7,8($sp)
    jal        gfx_flow_credit_tnum_get
    lw         $s7,-31292($s7)
    ld         $ra,-30720($gp)
    ld         $t9,8($sp)
    sll        $at,$v0,0xc
    and        $ra,$s7,$ra
    or         $ra,$ra,$at
    sw         $ra,-31292($t9)
    ld         $at,824($s0)
    sw         $ra,4212($at)
    sync
    sw         $zero,-31288($t9)
    ld         $t8,824($s0)
    sw         $zero,4220($t8)
    sync
    b          .L00000690
    nop
.L000007bc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,128
    b          .L000005f4
    li         $v0,22

glabel odsySwap_softsync_intr
    daddiu     $sp,$sp,-48
    sd         $s0,40($sp)
    sd         $s3,32($sp)
    sd         $s2,24($sp)
    li         $a1,25
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s8,0($sp)
    daddiu     $s8,$a0,28504
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s8
    move       $s0,$zero
    li         $s3,1
    li         $s2,0x8fff
.L00000810:
    b          .L00000820
    lw         $a7,28568($s1)
.L00000818:
    beqz       $a1, .L000008b0
    move       $s0,$a4
.L00000820:
    sllv       $a3,$s3,$s0
    dsll       $t1,$s0,0x2
    and        $at,$a3,$a7
    addiu      $a4,$s0,1
    daddu      $a5,$t1,$s0
    beqz       $at, .L00000818
    slti       $a1,$a4,32
    lw         $t2,28548($s1)
    and        $v0,$a3,$t2
    beqz       $v0, .L00000818
    dsll       $a6,$a5,0x3
    daddu      $a6,$s1,$a6
    ld         $t8,28584($a6)
    lw         $t8,244($t8)
    ld         $t3,880($s1)
    daddu      $t8,$t8,$t8
    lhu        $a6,28592($a6)
    daddu      $t3,$t3,$t8
    lhu        $t3,0($t3)
    slt        $v1,$t3,$a6
    slt        $a6,$s2,$a6
    beqz       $v1, .L00000888
    slti       $t0,$t3,4096
    beqz       $a6, .L00000818
    nop
    beqz       $t0, .L00000818
.L00000888:
    move       $a0,$s1
    move       $a1,$s0
    nor        $a7,$a3,$zero
    and        $a7,$t2,$a7
    jal        odsySwapBuffer
    sw         $a7,28548($s1)
    addiu      $s0,$s0,1
    slti       $t0,$s0,32
    bnez       $t0, .L00000810
    nop
.L000008b0:
    jal        mutex_unlock
    move       $a0,$s8
    ld         $s0,40($sp)
    ld         $s3,32($sp)
    ld         $ra,16($sp)
    ld         $s2,24($sp)
    ld         $s1,8($sp)
    ld         $s8,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gf_OdsyUnSchedSwapBuf
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    ld         $s0,40($a0)
    sd         $ra,32($sp)
    slti       $at,$a2,32
    sd         $s3,16($sp)
    move       $s3,$a2
    beqz       $at, .L00000a68
    sd         $s2,40($sp)
    li         $a1,25
    daddiu     $s2,$s0,28504
    sd         $s1,48($sp)
    jal        mutex_lock
    move       $a0,$s2
    li         $t0,1
    lw         $v1,28568($s0)
    sllv       $s1,$t0,$s3
    nor        $a0,$s1,$zero
    dsll       $v0,$s3,0x2
    daddu      $v0,$v0,$s3
    and        $v1,$s1,$v1
    dsll       $a6,$v0,0x3
    move       $v0,$zero
    beqz       $v1, .L00000a40
    daddu      $a6,$s0,$a6
    lw         $a2,28564($s0)
    or         $a2,$s1,$a2
    sw         $a2,28564($s0)
    lw         $a1,28600($a6)
    move       $a7,$a0
    beq        $s1, $a1, .L000009a4
    nop
    lw         $t1,28556($s0)
    and        $t1,$a0,$t1
    sw         $t1,28556($s0)
    dsll       $a5,$v0,0x2
.L00000968:
    lw         $t1,28600($a6)
    sllv       $t2,$t0,$v0
    daddu      $a5,$a5,$v0
    addiu      $v0,$v0,1
    and        $t1,$t1,$t2
    slti       $a4,$v0,32
    dsll       $a5,$a5,0x3
    beqz       $t1, .L00000998
    daddu      $a5,$s0,$a5
    lw         $t1,28600($a5)
    and        $t1,$a7,$t1
    sw         $t1,28600($a5)
.L00000998:
    bnez       $a4, .L00000968
    dsll       $a5,$v0,0x2
    sw         $s1,28600($a6)
.L000009a4:
    lw         $v0,28544($s0)
    and        $t2,$s1,$v0
    beqz       $t2, .L000009c4
    and        $t3,$v0,$a0
    ld         $t8,824($s0)
    sw         $t3,28544($s0)
    sw         $t3,4284($t8)
    sync
.L000009c4:
    lw         $t9,816($s0)
    bnez       $t9, .L00000a40
    nop
    lw         $ra,28568($s0)
    and        $ra,$s1,$ra
    beqz       $ra, .L00000a40
    daddiu     $s3,$s0,28520
    b          .L000009f8
    ld         $v0,-30712($gp)
.L000009e8:
    lw         $at,28568($s0)
    and        $at,$s1,$at
    beqz       $at, .L00000a40
    ld         $v0,-30712($gp)
.L000009f8:
    move       $a0,$s3
    li         $a1,25
    ld         $v1,0($v0)
    move       $a2,$s2
    move       $a3,$zero
    ld         $v0,8($v0)
    move       $a4,$zero
    daddiu     $a5,$sp,0
    sd         $v1,0($sp)
    move       $a6,$zero
    jal        sv_timedwait
    sd         $v0,8($sp)
    move       $a0,$s2
    jal        mutex_lock
    li         $a1,25
    lw         $a0,816($s0)
    beqz       $a0, .L000009e8
    nop
.L00000a40:
    ld         $s1,48($sp)
    jal        mutex_unlock
    move       $a0,$s2
    ld         $s2,40($sp)
    move       $v0,$zero
.L00000a54:
    ld         $ra,32($sp)
    ld         $s3,16($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000a68:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,176
    b          .L00000a54
    li         $v0,22

glabel gf_OdsySchedRetraceEvent
    daddiu     $sp,$sp,-48
    sd         $s2,32($sp)
    sd         $s0,0($sp)
    move       $s0,$a1
    li         $a1,25
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s7,24($sp)
    daddiu     $s7,$a0,28504
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s7
    ld         $a3,29864($s1)
    li         $s2,1
    beqz       $a3, .L00000b08
    move       $v0,$a3
    beq        $a3, $s0, .L00000b08
    nop
.L00000ac8:
    ld         $v0,40($v0)
    beqz       $v0, .L00000b08
    nop
    bne        $s0, $v0, .L00000ac8
    nop
.L00000adc:
    move       $s2,$zero
.L00000ae0:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jal        mutex_unlock
    move       $a0,$s7
    ld         $ra,16($sp)
    ld         $s7,24($sp)
    move       $v0,$s2
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000b08:
    beq        $s0, $v0, .L00000adc
    nop
    sd         $a3,40($s0)
    b          .L00000ae0
    sd         $s0,29864($s1)

glabel gf_OdsyUnSchedRetraceEvent
    daddiu     $sp,$sp,-32
    sd         $s0,24($sp)
    move       $s0,$a1
    li         $a1,25
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $s7,16($sp)
    daddiu     $s7,$a0,28504
    sd         $ra,8($sp)
    jal        mutex_lock
    move       $a0,$s7
    ld         $v0,29864($s1)
    beqz       $v0, .L00000b98
    nop
    beq        $s0, $v0, .L00000b88
    nop
.L00000b5c:
    ld         $a3,40($v0)
    move       $a4,$v0
    beqz       $a3, .L00000bc4
    move       $v0,$a3
    bne        $a3, $s0, .L00000b5c
    nop
.L00000b74:
    beqz       $a4, .L00000b88
    nop
    ld         $at,40($a3)
    b          .L00000b90
    sd         $at,40($a4)
.L00000b88:
    ld         $v1,40($v0)
    sd         $v1,29864($s1)
.L00000b90:
    b          .L00000ba0
    li         $s0,1
.L00000b98:
    beq        $s0, $v0, .L00000b88
    move       $s0,$zero
.L00000ba0:
    ld         $s1,0($sp)
    jal        mutex_unlock
    move       $a0,$s7
    ld         $ra,8($sp)
    ld         $s7,16($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000bc4:
    bne        $a3, $s0, .L00000ba0
    move       $s0,$zero
    b          .L00000b74
    nop

glabel gf_OdsySetDisplayMode
    daddiu     $sp,$sp,-80
    sd         $s2,56($sp)
    sd         $s3,64($sp)
    sd         $ra,72($sp)
    sd         $s0,24($sp)
    ld         $s0,40($a0)
    sd         $s1,32($sp)
    lui        $s1,0x1
    sd         $s4,16($sp)
    daddu      $s1,$s0,$s1
    lw         $at,-19352($s1)
    sd         $s5,40($sp)
    move       $s5,$a1
    sd         $s6,8($sp)
    move       $s6,$a2
    beqz       $at, .L00000d9c
    ld         $s4,824($s0)
    move       $a0,$s4
.L00000c1c:
    jal        odsy_poll_dfifo_level
    li         $a1,15
    beqz       $v0, .L00000c60
    li         $ra,-1
    lw         $t8,-19352($s1)
    beqz       $t8, .L00000d48
    li         $v0,5
.L00000c38:
    ld         $s2,56($sp)
    ld         $s3,64($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,72($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000c60:
    addiu      $v0,$s5,10496
    lui        $v1,0x7000
    ori        $v1,$v1,0x1
    sll        $v0,$v0,0xe
    dsrl32     $ra,$ra,0x0
    or         $v0,$v0,$v1
    li         $v1,-1
    lui        $at,0x4000
    dsll32     $v1,$v1,0x0
    nor        $at,$at,$zero
    dsll32     $v0,$v0,0x0
    and        $at,$s6,$at
    lui        $s3,0x40
    dsll32     $at,$at,0x0
    and        $v0,$v0,$v1
    dsrl32     $at,$at,0x0
    and        $ra,$ra,$at
    daddu      $at,$s3,$s4
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
    lw         $t9,-19352($s1)
    beqz       $t9, .L00000ee4
    li         $s2,0x8540
    slti       $v0,$s5,32
.L00000cc4:
    beqz       $v0, .L00000d40
    li         $a1,25
    daddiu     $s1,$s0,28504
    jal        mutex_lock
    move       $a0,$s1
    li         $v0,1
    lw         $a0,28528($s0)
    lui        $a1,0x4000
    sllv       $v0,$v0,$s5
    and        $a1,$s6,$a1
    and        $a2,$v0,$a0
    sltu       $v1,$zero,$a1
    srlv       $a2,$a2,$s5
    beq        $v1, $a2, .L00000d14
    dsll32     $a2,$s6,0x1
    xor        $v1,$v0,$a0
    bgez       $a2, .L00000f38
    sw         $v1,28528($s0)
    sw         $v0,4292($s4)
    sync
.L00000d14:
    lw         $a2,28560($s0)
.L00000d18:
    and        $a3,$v0,$a2
    beqz       $a3, .L00000d38
    move       $a0,$s0
    move       $a1,$s5
    nor        $a4,$v0,$zero
    and        $a4,$a2,$a4
    jal        odsyValidateBuffer
    sw         $a4,28560($s0)
.L00000d38:
    jal        mutex_unlock
    move       $a0,$s1
.L00000d40:
    b          .L00000c38
    move       $v0,$zero
.L00000d48:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00000db4
    daddu      $s3,$s0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000dd0
    nop
.L00000d8c:
    jal        vsema
    move       $a0,$s3
    b          .L00000c38
    li         $v0,5
.L00000d9c:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00000c1c
    move       $a0,$s4
.L00000db4:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00000c38
    li         $v0,5
.L00000dd0:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a2,-19664($s1)
    lhu        $a5,-31408($s1)
    srl        $a6,$a2,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    move       $a1,$v0
    beqz       $a5, .L00000e74
    lui        $a0,0x40
    li         $t1,-1
    li         $t8,-3
    dsrl32     $t1,$t1,0x0
    and        $t8,$a2,$t8
    sw         $t8,-19664($s1)
    dsll32     $t8,$t8,0x0
    ld         $t9,824($s0)
    ld         $a7,-30712($gp)
    dsrl32     $t8,$t8,0x0
    and        $t8,$t1,$t8
    daddu      $t9,$a0,$t9
    or         $t8,$a7,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s1)
    lw         $t2,-19664($s1)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t2,$t2,$t8
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s1)
    dsll32     $t2,$t2,0x0
    ld         $t0,824($s0)
    dsrl32     $t2,$t2,0x0
    and        $t1,$t1,$t2
    daddu      $t0,$a0,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00000e74:
    ld         $t3,824($s0)
    daddu      $t3,$a0,$t3
    ld         $t2,-31416($s1)
    sd         $t2,0($t3)
    sync
    beqz       $a5, .L00000ec0
    li         $a2,-2
    lw         $t8,-19664($s1)
    and        $t8,$a2,$t8
    sw         $t8,-19664($s1)
    li         $at,-1
    ld         $t9,824($s0)
    dsrl32     $at,$at,0x0
    ld         $ra,-30712($gp)
    and        $t8,$t8,$at
    daddu      $t9,$a0,$t9
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
.L00000ec0:
    lw         $t9,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t9,$t9,0x2
    and        $t9,$a2,$t9
    jal        mutex_spinunlock
    sw         $t9,-19664($s1)
    b          .L00000d8c
    nop
.L00000ee4:
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    sd         $v0,48($sp)
    li         $a0,0x8530
    daddu      $a0,$s0,$a0
    beqz       $t8, .L00000f48
    sd         $a0,0($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000f64
    nop
.L00000f28:
    jal        vsema
    ld         $a0,0($sp)
    b          .L00000cc4
    slti       $v0,$s5,32
.L00000f38:
    sw         $v0,4300($s4)
    sync
    b          .L00000d18
    lw         $a2,28560($s0)
.L00000f48:
    jal        vsema
    ld         $s1,48($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s1
    b          .L00000cc4
    slti       $v0,$s5,32
.L00000f64:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a2,-19664($s1)
    lhu        $a5,-31408($s1)
    srl        $a6,$a2,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L00001004
    move       $a1,$v0
    li         $t1,-1
    li         $t8,-3
    dsrl32     $t1,$t1,0x0
    and        $t8,$a2,$t8
    sw         $t8,-19664($s1)
    ld         $t9,824($s0)
    dsll32     $t8,$t8,0x0
    ld         $a7,-30712($gp)
    dsrl32     $t8,$t8,0x0
    daddu      $t9,$s3,$t9
    and        $t8,$t1,$t8
    or         $t8,$a7,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s1)
    lw         $t2,-19664($s1)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t2,$t2,$t8
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s1)
    ld         $t0,824($s0)
    dsll32     $t2,$t2,0x0
    dsrl32     $t2,$t2,0x0
    daddu      $t0,$s3,$t0
    and        $t1,$t1,$t2
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00001004:
    ld         $ra,824($s0)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($s1)
    sd         $t9,0($ra)
    sync
    beqz       $a5, .L00001058
    li         $a2,-2
    lw         $a0,-19664($s1)
    li         $at,-1
    dsrl32     $at,$at,0x0
    and        $a0,$a2,$a0
    sw         $a0,-19664($s1)
    ld         $v0,824($s0)
    dsll32     $a0,$a0,0x0
    ld         $v1,-30712($gp)
    dsrl32     $a0,$a0,0x0
    daddu      $v0,$s3,$v0
    and        $at,$at,$a0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L00001058:
    lw         $a3,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $a3,$a3,0x2
    and        $a2,$a2,$a3
    jal        mutex_spinunlock
    sw         $a2,-19664($s1)
    b          .L00000f28
    nop

glabel gf_OdsySchedMGRSwapBuf
    daddiu     $sp,$sp,-80
    sd         $s0,32($sp)
    ld         $s0,40($a0)
    sd         $ra,48($sp)
    move       $a3,$a4
    slti       $v0,$a2,32
    sd         $s1,40($sp)
    move       $s1,$a2
    bltz       $a2, .L000011ec
    sd         $s2,56($sp)
    sd         $a0,8($sp)
    sd         $a4,24($sp)
    sd         $a1,16($sp)
    beqz       $v0, .L000011ec
    sd         $s3,64($sp)
    li         $a1,25
    daddiu     $s3,$s0,28504
    jal        mutex_lock
    move       $a0,$s3
    lw         $at,28544($s0)
    li         $a2,1
    beqz       $at, .L000010f4
    sllv       $s2,$a2,$s1
    ld         $v0,28536($s0)
    bnez       $v0, .L000010f4
    nop
    ld         $v1,824($s0)
    sw         $zero,4284($v1)
    sync
    sw         $zero,28544($s0)
.L000010f4:
    lw         $v0,28568($s0)
    and        $a0,$s2,$v0
    bnez       $a0, .L0000120c
    ld         $t2,8($sp)
.L00001104:
    or         $a3,$s2,$v0
    sw         $a3,28568($s0)
    dsll       $a2,$s1,0x2
    daddu      $a2,$a2,$s1
    ld         $t2,72($t2)
    dsll       $a2,$a2,0x3
    daddu      $a2,$s0,$a2
    ld         $t2,112($t2)
    sd         $t2,28584($a2)
    sd         $zero,28608($a2)
    ld         $t1,28584($a2)
    ld         $t0,16($sp)
    ld         $t1,176($t1)
    ld         $a6,24($sp)
    lhu        $t1,11068($t1)
    sh         $t1,28592($a2)
    sw         $t0,28616($a2)
    sw         $zero,28596($a2)
    sw         $zero,28620($a2)
    lui        $a7,0x4000
    sw         $s2,28600($a2)
    and        $a6,$a6,$a7
    lw         $a5,28576($s0)
    sltu       $a6,$zero,$a6
    lw         $a7,28572($s0)
    nor        $a4,$s2,$zero
    sllv       $a6,$a6,$s1
    and        $a7,$a4,$a7
    and        $a4,$a4,$a5
    sw         $a4,28576($s0)
    or         $a6,$a6,$a7
    sw         $a6,28572($s0)
    ld         $a3,28584($a2)
    lw         $a3,244($a3)
    ld         $a1,880($s0)
    daddu      $a3,$a3,$a3
    lhu        $a2,28592($a2)
    daddu      $a1,$a1,$a3
    lhu        $a1,0($a1)
    beq        $a1, $a2, .L000011dc
    move       $a0,$s0
    lw         $a4,28548($s0)
    or         $a4,$s2,$a4
    sw         $a4,28548($s0)
.L000011b4:
    jal        mutex_unlock
    move       $a0,$s3
    ld         $s3,64($sp)
    move       $v0,$zero
.L000011c4:
    ld         $ra,48($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    ld         $s2,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000011dc:
    jal        odsySwapBuffer
    move       $a1,$s1
    b          .L000011b4
    nop
.L000011ec:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a3,$s1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,224
    b          .L000011c4
    li         $v0,22
.L0000120c:
    ld         $a1,-30720($gp)
    li         $a0,5
    move       $a3,$s1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,272
    daddiu     $a2,$s0,28520
    sd         $a2,0($sp)
    li         $a1,25
.L00001230:
    move       $a2,$s3
    ld         $a0,0($sp)
    jal        sv_wait
    move       $a3,$zero
    move       $a0,$s3
    jal        mutex_lock
    li         $a1,25
    lw         $v0,28568($s0)
    and        $a3,$s2,$v0
    bnez       $a3, .L00001230
    li         $a1,25
    b          .L00001104
    ld         $t2,8($sp)

glabel gf_OdsyFrsInstall
    jr         $ra
    move       $v0,$zero

glabel gf_OdsyFrsUninstall
    jr         $ra
    move       $v0,$zero

glabel odsyRetraceHandler
    daddiu     $sp,$sp,-80
    sd         $s6,48($sp)
    sd         $s5,8($sp)
    ld         $s5,824($a0)
    li         $a1,25
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s7,0($sp)
    daddiu     $s7,$a0,28504
    sd         $ra,24($sp)
    jal        mutex_lock
    move       $a0,$s7
    sd         $s2,32($sp)
    lw         $s6,128($s1)
    lw         $at,28544($s1)
    lw         $v0,124($s1)
    addiu      $v1,$s6,1
    sw         $v1,128($s1)
    addiu      $v0,$v0,1
    beqz       $at, .L000012e0
    sw         $v0,124($s1)
    ld         $a0,28536($s1)
    bnez       $a0, .L000012e0
    nop
    sw         $zero,4284($s5)
    sync
    sw         $zero,28544($s1)
.L000012e0:
    lw         $a1,28568($s1)
    sd         $s4,56($sp)
    sd         $s0,40($sp)
    move       $s0,$zero
    beqz       $a1, .L00001460
    sd         $s3,64($sp)
    lw         $t8,4308($s5)
    lw         $s4,28528($s1)
    li         $s3,1
    b          .L00001534
    xor        $s4,$s4,$t8
.L0000130c:
    nor        $t9,$s2,$zero
    and        $v1,$t9,$a5
    sw         $v1,28568($s1)
    and        $a0,$t9,$a4
    sw         $a0,28548($s1)
    lw         $ra,28560($s1)
    lw         $v0,28556($s1)
    lw         $at,28552($s1)
    move       $a1,$s0
    and        $v0,$t9,$v0
    sw         $v0,28556($s1)
    move       $a0,$s1
    and        $at,$t9,$at
    sw         $at,28552($s1)
    and        $t9,$t9,$ra
    jal        odsyValidateBuffer
    sw         $t9,28560($s1)
.L00001350:
    addiu      $s0,$s0,1
.L00001354:
    slti       $a1,$s0,32
    beqz       $a1, .L00001454
    dsll       $a6,$s0,0x2
    sllv       $s2,$s3,$s0
.L00001364:
    lw         $a5,28568($s1)
    and        $a2,$s2,$a5
    daddu      $a1,$a6,$s0
    beqz       $a2, .L00001350
    dsll       $a7,$a1,0x3
    lw         $a3,28564($s1)
    and        $a3,$s2,$a3
    lw         $a4,28548($s1)
    bnez       $a3, .L0000130c
    daddu      $a3,$s1,$a7
    and        $a5,$s2,$a4
    beqz       $a5, .L000013ac
    nop
    lw         $t0,28620($a3)
    addiu      $t0,$t0,1
    sltiu      $t1,$t0,301
    beqz       $t1, .L000014f4
    sw         $t0,28620($a3)
.L000013ac:
    lw         $a5,28560($s1)
.L000013b0:
    and        $a6,$s2,$a5
    and        $a1,$s2,$s4
    dsll       $a4,$s0,0x2
    beqz       $a6, .L000013f8
    daddu      $a4,$a4,$s0
    dsll       $a3,$a4,0x3
    beqz       $a1, .L00001420
    daddu      $a3,$s1,$a3
    lw         $a4,28620($a3)
    addiu      $a4,$a4,1
    sltiu      $a5,$a4,2
    bnez       $a5, .L00001350
    sw         $a4,28620($a3)
    sw         $zero,28620($a3)
    sw         $s2,4276($s5)
    sync
    b          .L00001354
    addiu      $s0,$s0,1
.L000013f8:
    lw         $a6,28556($s1)
    lw         $a5,28552($s1)
    or         $a5,$a5,$a6
    and        $a5,$s2,$a5
    beqz       $a5, .L00001350
    move       $a0,$s1
    jal        odsySwapBuffer
    move       $a1,$s0
    b          .L00001354
    addiu      $s0,$s0,1
.L00001420:
    ld         $a1,28608($a3)
    beqz       $a1, .L00001438
    move       $a0,$s1
    sw         $s6,28($a1)
    lw         $a5,28560($s1)
    move       $a0,$s1
.L00001438:
    move       $a1,$s0
    nor        $a7,$s2,$zero
    and        $a7,$a5,$a7
    jal        odsyValidateBuffer
    sw         $a7,28560($s1)
    b          .L00001354
    addiu      $s0,$s0,1
.L00001454:
    daddiu     $a0,$s1,28520
    jal        sv_broadcast
    sw         $zero,28564($s1)
.L00001460:
    ld         $s3,64($sp)
    ld         $s0,29864($s1)
    ld         $s4,56($sp)
    ld         $s6,48($sp)
    beqz       $s0, .L0000148c
    ld         $s2,32($sp)
.L00001478:
    jal        rrmValidateRetrace
    move       $a0,$s0
    ld         $s0,40($s0)
    bnez       $s0, .L00001478
    nop
.L0000148c:
    ld         $s0,40($sp)
    sd         $zero,29864($s1)
    jal        mutex_unlock
    move       $a0,$s7
    ld         $t0,136($s1)
    bnez       $t0, .L000014e4
    nop
.L000014a8:
    jal        odsyDMAWakeup
    move       $a0,$s1
    ld         $s1,16($sp)
    lh         $t3,-15456($zero)
    ld         $t2,0($gp)
    ld         $s5,8($sp)
    dsll       $t3,$t3,0x5
    ld         $ra,24($sp)
    daddu      $t2,$t2,$t3
    lw         $t1,16($t2)
    ld         $s7,0($sp)
    daddiu     $sp,$sp,80
    addiu      $t1,$t1,1
    jr         $ra
    sw         $t1,16($t2)
.L000014e4:
    jal        rrmValidateVideoSync
    move       $a0,$s1
    b          .L000014a8
    nop
.L000014f4:
    sw         $zero,28620($a3)
    move       $a0,$s1
    lw         $t8,28548($s1)
    move       $a1,$s0
    nor        $t9,$s2,$zero
    and        $t8,$t8,$t9
    jal        odsySwapBuffer
    sw         $t8,28548($s1)
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a3,$s0
    lh         $a2,790($s1)
    jal        cmn_err
    daddiu     $a1,$a1,328
    b          .L000013b0
    lw         $a5,28560($s1)
.L00001534:
    dsll       $a6,$s0,0x2
    b          .L00001364
    sllv       $s2,$s3,$s0
