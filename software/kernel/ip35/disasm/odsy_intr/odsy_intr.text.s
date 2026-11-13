.section .text
.set noat
.set noreorder


glabel odsyXtErrorInterrupt
    daddiu     $sp,$sp,-528
    sd         $s1,504($sp)
    sd         $ra,512($sp)
    sd         $s0,496($sp)
    lh         $a1,-15320($zero)
    sd         $s2,488($sp)
    ld         $s2,824($a0)
    ld         $v1,0($gp)
    dsll       $a1,$a1,0x5
    lw         $a6,12($s2)
    daddu      $v1,$v1,$a1
    lw         $a1,68($s2)
    sll        $a5,$a6,0x19
    lw         $v0,16($v1)
    sd         $a1,480($sp)
    sll        $at,$a6,0x17
    sll        $a1,$a6,0x18
    addiu      $v0,$v0,1
    sw         $v0,16($v1)
    move       $s0,$a0
    bltz       $at, .L000000cc
    lh         $a2,790($a0)
    bltz       $a1, .L00000100
    nop
    bgez       $a5, .L00000080
    ld         $s1,-30720($gp)
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,184
    b          .L00000090
    li         $a2,1
.L00000080:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$s1,232
    move       $a2,$zero
.L00000090:
    move       $s1,$zero
.L00000094:
    sw         $zero,68($s2)
    sync
    bnez       $a2, .L000000e4
    ld         $a1,-30720($gp)
.L000000a4:
    beqz       $s1, .L000000b8
    ld         $ra,512($sp)
    jal        odsy_teardown
    move       $a0,$s0
    ld         $ra,512($sp)
.L000000b8:
    ld         $s2,488($sp)
    ld         $s0,496($sp)
    ld         $s1,504($sp)
    jr         $ra
    daddiu     $sp,$sp,528
.L000000cc:
    li         $a0,4
    jal        cmn_err
    ld         $a1,-30720($gp)
    move       $s1,$zero
    b          .L00000094
    li         $a2,1
.L000000e4:
    move       $a0,$zero
    lh         $a2,790($s0)
    ld         $a3,480($sp)
    jal        cmn_err
    daddiu     $a1,$a1,272
    b          .L000000a4
    nop
.L00000100:
    ld         $a6,824($a0)
    ld         $a1,-30720($gp)
    lw         $a4,28($a6)
    move       $a3,$zero
    lw         $a5,68($a6)
    li         $a0,4
    li         $a7,-1
    lw         $a6,20($a6)
    lui        $t0,0xffff
    dsrl32     $a7,$a7,0x0
    daddiu     $a1,$a1,56
    and        $a6,$a6,$t0
    jal        cmn_err
    and        $a4,$a4,$a7
    jal        odsyPrintRegs
    move       $a0,$s2
    li         $a0,60
    move       $a2,$zero
    daddiu     $a5,$sp,0
    ld         $a6,-30712($gp)
.L00000150:
    daddu      $a7,$a2,$a6
    daddu      $t0,$a2,$a5
    ld         $a7,0($a7)
    addiu      $a4,$a2,8
    addiu      $a0,$a0,-2
    sd         $a7,0($t0)
    daddu      $a3,$a4,$a6
    daddu      $a4,$a4,$a5
    ld         $a3,0($a3)
    addiu      $a2,$a2,16
    bgtz       $a0, .L00000150
    sd         $a3,0($a4)
    ld         $a3,824($s0)
    ld         $a1,-30720($gp)
    daddiu     $a4,$sp,0
    lh         $a2,790($s0)
    li         $a0,7
    daddiu     $a1,$a1,152
    jal        cmn_err
    lw         $a3,68($a3)
    li         $s1,1
    b          .L00000094
    move       $a2,$zero

glabel odsyFlagInterrupt
    ld         $v1,0($gp)
    daddiu     $sp,$sp,-48
    ld         $t8,824($a0)
    sd         $t8,0($sp)
    sd         $s0,8($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    lh         $a0,-15320($zero)
    lw         $s0,4116($t8)
    lw         $t8,4148($t8)
    dsll       $a0,$a0,0x5
    sd         $s0,24($sp)
    daddu      $v1,$v1,$a0
    and        $s0,$s0,$t8
    andi       $at,$s0,0x200
    lw         $v0,16($v1)
    sd         $ra,32($sp)
    addiu      $v0,$v0,1
    beqz       $at, .L00000204
    sw         $v0,16($v1)
    jal        odsyLowaterInterrupt
    move       $a0,$s1
.L00000204:
    dsll32     $t9,$s0,0x6
    bltz       $t9, .L0000032c
    sd         $s2,40($sp)
    lui        $ra,0x8000
.L00000214:
    and        $ra,$s0,$ra
    beqz       $ra, .L00000228
    ld         $s2,-30720($gp)
    jal        odsyGenlockInterrupt
    move       $a0,$s1
.L00000228:
    dsll32     $at,$s0,0x1
    bltz       $at, .L00000348
    daddiu     $a1,$s2,472
    dsll32     $v0,$s0,0x2
.L00000238:
    bltz       $v0, .L0000035c
    daddiu     $a1,$s2,520
    dsll32     $v1,$s0,0x3
.L00000244:
    bltz       $v1, .L00000370
    daddiu     $a1,$s2,568
    dsll32     $a0,$s0,0x4
.L00000250:
    bltz       $a0, .L00000384
    daddiu     $a1,$s2,608
    dsll32     $a1,$s0,0x7
.L0000025c:
    bltz       $a1, .L00000398
    dsll32     $a2,$s0,0x8
.L00000264:
    bltz       $a2, .L000003b0
    daddiu     $a1,$s2,688
    dsll32     $a3,$s0,0x9
.L00000270:
    bltz       $a3, .L000003c4
    dsll32     $a4,$s0,0xa
.L00000278:
    bltz       $a4, .L000003dc
    dsll32     $a5,$s0,0xb
.L00000280:
    bltz       $a5, .L000003f4
    dsll32     $a6,$s0,0xd
.L00000288:
    bltz       $a6, .L0000040c
    lui        $a7,0x3
.L00000290:
    ori        $a7,$a7,0xc000
    and        $a7,$s0,$a7
    bnez       $a7, .L00000424
    andi       $t0,$s0,0x2000
.L000002a0:
    bnez       $t0, .L0000043c
    andi       $t1,$s0,0x800
.L000002a8:
    bnez       $t1, .L00000454
    andi       $t2,$s0,0x400
.L000002b0:
    bnez       $t2, .L0000046c
    andi       $t3,$s0,0x100
.L000002b8:
    bnez       $t3, .L00000484
    andi       $t8,$s0,0x80
.L000002c0:
    bnez       $t8, .L0000049c
    andi       $t9,$s0,0x10
.L000002c8:
    bnez       $t9, .L000004b4
    andi       $ra,$s0,0x4
.L000002d0:
    bnez       $ra, .L000004ec
    andi       $at,$s0,0x2
.L000002d8:
    bnez       $at, .L00000504
    andi       $v0,$s0,0x1
.L000002e0:
    bnez       $v0, .L0000051c
    ld         $v1,24($sp)
.L000002e8:
    lui        $a0,0x39f0
    ori        $a0,$a0,0x2587
    and        $v1,$v1,$a0
    bnez       $v1, .L0000030c
    ld         $a1,0($sp)
    sw         $s0,4124($a1)
    sync
    b          .L00000318
    ld         $ra,32($sp)
.L0000030c:
    jal        odsy_teardown
    move       $a0,$s1
    ld         $ra,32($sp)
.L00000318:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s2,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000032c:
    ld         $a1,-30720($gp)
    li         $a0,5
    lh         $a2,790($s1)
    jal        cmn_err
    daddiu     $a1,$a1,432
    b          .L00000214
    lui        $ra,0x8000
.L00000348:
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,5
    b          .L00000238
    dsll32     $v0,$s0,0x2
.L0000035c:
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000244
    dsll32     $v1,$s0,0x3
.L00000370:
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000250
    dsll32     $a0,$s0,0x4
.L00000384:
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L0000025c
    dsll32     $a1,$s0,0x7
.L00000398:
    daddiu     $a1,$s2,648
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000264
    dsll32     $a2,$s0,0x8
.L000003b0:
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000270
    dsll32     $a3,$s0,0x9
.L000003c4:
    daddiu     $a1,$s2,736
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000278
    dsll32     $a4,$s0,0xa
.L000003dc:
    daddiu     $a1,$s2,784
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000280
    dsll32     $a5,$s0,0xb
.L000003f4:
    daddiu     $a1,$s2,832
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000288
    dsll32     $a6,$s0,0xd
.L0000040c:
    daddiu     $a1,$s2,888
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000290
    lui        $a7,0x3
.L00000424:
    daddiu     $a1,$s2,936
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,5
    b          .L000002a0
    andi       $t0,$s0,0x2000
.L0000043c:
    daddiu     $a1,$s2,976
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002a8
    andi       $t1,$s0,0x800
.L00000454:
    daddiu     $a1,$s2,1024
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002b0
    andi       $t2,$s0,0x400
.L0000046c:
    daddiu     $a1,$s2,1064
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002b8
    andi       $t3,$s0,0x100
.L00000484:
    daddiu     $a1,$s2,1112
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002c0
    andi       $t8,$s0,0x80
.L0000049c:
    daddiu     $a1,$s2,1160
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002c8
    andi       $t9,$s0,0x10
.L000004b4:
    lui        $a2,0x1
    daddu      $a2,$s1,$a2
    andi       $a3,$s0,0x8
    lw         $a4,-19360($a2)
    addiu      $a4,$a4,1
    beqz       $a3, .L00000534
    sw         $a4,-19360($a2)
    daddiu     $a3,$s2,1200
.L000004d4:
    daddiu     $a1,$s2,1216
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,5
    b          .L000002d0
    andi       $ra,$s0,0x4
.L000004ec:
    daddiu     $a1,$s2,1280
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002d8
    andi       $at,$s0,0x2
.L00000504:
    daddiu     $a1,$s2,1336
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002e0
    andi       $v0,$s0,0x1
.L0000051c:
    daddiu     $a1,$s2,1384
    lh         $a2,790($s1)
    jal        cmn_err
    li         $a0,4
    b          .L000002e8
    ld         $v1,24($sp)
.L00000534:
    ld         $a3,-30720($gp)
    b          .L000004d4
    daddiu     $a3,$a3,1432

glabel odsyDmaInterrupt
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        odsyDMAIrptWakeup
    nop
    lh         $v1,-15320($zero)
    ld         $v0,0($gp)
    dsll       $v1,$v1,0x5
    ld         $ra,0($sp)
    daddu      $v0,$v0,$v1
    lw         $at,16($v0)
    daddiu     $sp,$sp,16
    addiu      $at,$at,1
    jr         $ra
    sw         $at,16($v0)

glabel odsySsyncInterrupt
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        odsySwap_softsync_intr
    move       $s8,$a0
    jal        odsyDMAWakeup
    move       $a0,$s8
    lh         $v1,-15320($zero)
    ld         $v0,0($gp)
    dsll       $v1,$v1,0x5
    ld         $ra,0($sp)
    daddu      $v0,$v0,$v1
    lw         $at,16($v0)
    ld         $s8,8($sp)
    daddiu     $sp,$sp,16
    addiu      $at,$at,1
    jr         $ra
    sw         $at,16($v0)

glabel odsyGenlockInterrupt
    daddiu     $sp,$sp,-112
    sd         $zero,16($sp)
    sd         $zero,8($sp)
    sd         $s2,72($sp)
    sd         $s3,80($sp)
    sd         $s4,88($sp)
    sd         $s1,24($sp)
    lui        $s1,0x1
    sb         $zero,0($sp)
    daddu      $s1,$a0,$s1
    lw         $at,-19328($s1)
    sd         $ra,96($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    beqz       $at, .L00000784
    sd         $s5,104($sp)
    ld         $a0,824($s0)
.L00000604:
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    beqz       $v0, .L0000063c
    lw         $a0,-19328($s1)
    beqz       $a0, .L00000730
.L00000618:
    ld         $s2,72($sp)
.L0000061c:
    ld         $s3,80($sp)
    ld         $s4,88($sp)
    ld         $ra,96($sp)
    ld         $s5,104($sp)
    ld         $s1,24($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L0000063c:
    ld         $t8,824($s0)
    lui        $s5,0x23
    daddu      $s5,$s5,$t8
    beqz       $a0, .L00000a00
    lw         $s5,15980($s5)
    lh         $at,-15320($zero)
.L00000654:
    ld         $ra,0($gp)
    dsll       $at,$at,0x5
    daddu      $ra,$ra,$at
    andi       $at,$s5,0x1
    lw         $t9,16($ra)
    addiu      $t9,$t9,1
    beqz       $at, .L0000145c
    sw         $t9,16($ra)
    lw         $a0,-19328($s1)
    beqz       $a0, .L00000a54
    li         $a1,25
.L00000680:
    ld         $a1,824($s0)
    lui        $v1,0x23
    daddu      $v1,$v1,$a1
    lw         $v1,15972($v1)
    beqz       $a0, .L00000a68
    sd         $v1,48($sp)
    ld         $a2,48($sp)
.L0000069c:
    andi       $a2,$a2,0x40
    beqz       $a2, .L0000061c
    ld         $s2,72($sp)
    lhu        $a3,298($s0)
    li         $s2,3
    beq        $s2, $a3, .L00000abc
    li         $a1,25
    lw         $a4,-19420($s1)
.L000006bc:
    beqz       $a4, .L0000079c
    ld         $v0,-19432($s1)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
.L000006d4:
    lw         $a1,292($s0)
    blez       $a1, .L00000aec
    daddiu     $a2,$sp,0
    move       $s4,$zero
    ld         $s3,-30720($gp)
.L000006e8:
    andi       $a2,$s5,0x2
    beqz       $a2, .L000007b4
    lw         $v0,-19504($s1)
    beqz       $v0, .L000007f0
    nop
    lw         $a3,-19420($s1)
    beqz       $a3, .L000008d8
    ld         $v0,-19432($s1)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    lhu        $a1,298($s0)
.L00000718:
    bne        $s2, $a1, .L00000618
    li         $a0,0xb488
    jal        vsema
    daddu      $a0,$s0,$a0
    b          .L0000061c
    ld         $s2,72($sp)
.L00000730:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00000ad0
    daddu      $s3,$s0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L000008ec
    nop
.L00000774:
    jal        vsema
    move       $a0,$s3
    b          .L0000061c
    ld         $s2,72($sp)
.L00000784:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00000604
    ld         $a0,824($s0)
.L0000079c:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L000006d4
    nop
.L000007b4:
    beqz       $v0, .L00000b18
    nop
    lw         $a1,-19420($s1)
    beqz       $a1, .L00000c28
    ld         $v0,-19432($s1)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    lhu        $a1,298($s0)
.L000007d8:
    bne        $s2, $a1, .L00000618
    li         $a0,0xb488
    jal        vsema
    daddu      $a0,$s0,$a0
    b          .L0000061c
    ld         $s2,72($sp)
.L000007f0:
    lw         $t8,292($s0)
    li         $s2,0xb408
    blez       $t8, .L00000bf0
    daddu      $s2,$s0,$s2
    lbu        $a2,-31201($s1)
    li         $a1,1
    move       $a0,$s2
    li         $t9,88
    jal        odsy_i2cPLLRegWrite
    sb         $t9,-19416($s1)
    bnez       $v0, .L00001478
    move       $a0,$s2
.L00000820:
    lbu        $a2,-31197($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,2
    bnez       $v0, .L00001490
    move       $a0,$s2
.L00000834:
    lbu        $a2,-31193($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,5
    bnez       $v0, .L000014a8
    move       $a0,$s2
.L00000848:
    lbu        $a2,-31189($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,6
    bnez       $v0, .L000014c0
    daddiu     $a1,$s3,1984
    lw         $ra,-19328($s1)
.L00000860:
    beqz       $ra, .L00000d60
    li         $a1,25
    ld         $a0,824($s0)
.L0000086c:
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    sltu       $at,$zero,$v0
    beqz       $v0, .L00000c3c
    sd         $at,16($sp)
.L00000880:
    move       $s2,$zero
.L00000884:
    ld         $s3,16($sp)
    sltiu      $s3,$s3,1
    bnez       $s3, .L00000bb8
    ld         $s4,8($sp)
.L00000894:
    lw         $t8,-19420($s1)
    beqz       $t8, .L00000bdc
    ld         $v0,-19432($s1)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    lw         $a1,-19328($s1)
.L000008b0:
    beqz       $a1, .L00000d10
    li         $s2,0x8540
    lhu        $a3,298($s0)
.L000008bc:
    li         $a2,3
    bne        $a2, $a3, .L00000618
    li         $a0,0xb488
    jal        vsema
    daddu      $a0,$s0,$a0
    b          .L0000061c
    ld         $s2,72($sp)
.L000008d8:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00000718
    lhu        $a1,298($s0)
.L000008ec:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s1)
    lhu        $a6,-31408($s1)
    srl        $a7,$a0,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L00000990
    lui        $a4,0x40
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a0,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    ld         $t0,-30720($gp)
    dsrl32     $t9,$t9,0x0
    and        $t9,$t2,$t9
    daddu      $ra,$a4,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    lhu        $t8,-31408($s1)
    lw         $t3,-19664($s1)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t3,$t3,$t9
    sll        $t8,$t8,0x5
    or         $t3,$t3,$t8
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t1,824($s0)
    dsrl32     $t3,$t3,0x0
    and        $t2,$t2,$t3
    daddu      $t1,$a4,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
.L00000990:
    ld         $t8,824($s0)
    daddu      $t8,$a4,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L000009dc
    li         $a5,-2
    lw         $t9,-19664($s1)
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    li         $v0,-1
    ld         $ra,824($s0)
    dsrl32     $v0,$v0,0x0
    ld         $at,-30720($gp)
    and        $t9,$t9,$v0
    daddu      $ra,$a4,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L000009dc:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s1)
    and        $ra,$a5,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L00000774
    nop
.L00000a00:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s3,$v0
    li         $s4,0x8530
    beqz       $t8, .L00000cd8
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000e7c
    nop
.L00000a44:
    jal        vsema
    move       $a0,$s4
    b          .L00000654
    lh         $at,-15320($zero)
.L00000a54:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00000680
    lw         $a0,-19328($s1)
.L00000a68:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s3,$v0
    li         $s4,0x8530
    beqz       $t8, .L00000cf4
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000f90
    nop
.L00000aac:
    jal        vsema
    move       $a0,$s4
    b          .L0000069c
    ld         $a2,48($sp)
.L00000abc:
    li         $a0,0xb488
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L000006bc
    lw         $a4,-19420($s1)
.L00000ad0:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L0000061c
    ld         $s2,72($sp)
.L00000aec:
    li         $a1,7
    li         $a3,38
    li         $a0,0xb408
    sb         $a3,-19416($s1)
    jal        odsy_i2cPLLRegRead
    daddu      $a0,$s0,$a0
    bnez       $v0, .L000014d4
    ld         $a1,-30720($gp)
    lbu        $s4,0($sp)
.L00000b10:
    b          .L000006e8
    ld         $s3,-30720($gp)
.L00000b18:
    lw         $t8,292($s0)
    li         $s2,0xb408
    blez       $t8, .L00000d74
    daddu      $s2,$s0,$s2
    lbu        $a2,-31185($s1)
    li         $a1,1
    move       $a0,$s2
    li         $t9,88
    jal        odsy_i2cPLLRegWrite
    sb         $t9,-19416($s1)
    bnez       $v0, .L00001518
    move       $a0,$s2
.L00000b48:
    lbu        $a2,-31181($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,2
    bnez       $v0, .L00001530
    move       $a0,$s2
.L00000b5c:
    lbu        $a2,-31177($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,5
    bnez       $v0, .L00001548
    move       $a0,$s2
.L00000b70:
    lbu        $a2,-31173($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,6
    bnez       $v0, .L00001560
    daddiu     $a1,$s3,2544
    lw         $ra,-19328($s1)
.L00000b88:
    beqz       $ra, .L000010a4
    li         $a1,25
    ld         $a0,824($s0)
.L00000b94:
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    beqz       $v0, .L00000de4
    sd         $v0,40($sp)
.L00000ba4:
    ld         $v1,40($sp)
.L00000ba8:
    li         $s2,1
    sltu       $v1,$zero,$v1
    b          .L00000884
    sd         $v1,8($sp)
.L00000bb8:
    sltiu      $s4,$s4,1
    bnez       $s4, .L00000da8
    nop
.L00000bc4:
    beqz       $s3, .L00000894
    nop
    beqz       $s4, .L00000894
    nop
    b          .L0000061c
    ld         $s2,72($sp)
.L00000bdc:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L000008b0
    lw         $a1,-19328($s1)
.L00000bf0:
    move       $a0,$s2
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,1
    bnez       $v0, .L000014ec
    move       $a0,$s2
.L00000c08:
    li         $a1,7
    ori        $a2,$s4,0x80
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0xff
    beqzl      $v0, .L00000860
    lw         $ra,-19328($s1)
    b          .L00001504
    daddiu     $a1,$s3,1632
.L00000c28:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L000007d8
    lhu        $a1,298($s0)
.L00000c3c:
    lw         $a1,-19500($s1)
    li         $s5,-1
    li         $v0,-3
    dsrl32     $s5,$s5,0x0
    and        $a1,$v0,$a1
    dsll32     $a3,$a1,0x0
    ld         $a4,824($s0)
    dsrl32     $a3,$a3,0x0
    ld         $a5,-30712($gp)
    lui        $s3,0x40
    and        $a3,$s5,$a3
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
    lw         $a2,-19328($s1)
    bnez       $a2, .L00000880
    sw         $a1,-19500($s1)
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s4,0x8530
    sd         $v0,64($sp)
    beqz       $t8, .L0000120c
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L0000122c
    nop
.L00000cc8:
    jal        vsema
    move       $a0,$s4
    b          .L00000884
    move       $s2,$zero
.L00000cd8:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000654
    lh         $at,-15320($zero)
.L00000cf4:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L0000069c
    ld         $a2,48($sp)
.L00000d10:
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s3,$v0
    li         $s4,0x8530
    beqz       $t8, .L000010b8
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L000010e8
    nop
.L00000d50:
    jal        vsema
    move       $a0,$s4
    b          .L000008bc
    lhu        $a3,298($s0)
.L00000d60:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L0000086c
    ld         $a0,824($s0)
.L00000d74:
    move       $a0,$s2
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,17
    bnez       $v0, .L00001574
    move       $a0,$s2
.L00000d8c:
    andi       $a2,$s4,0x7f
    jal        odsy_i2cPLLRegWrite
    li         $a1,7
    beqzl      $v0, .L00000b88
    lw         $ra,-19328($s1)
    b          .L0000158c
    daddiu     $a1,$s3,2168
.L00000da8:
    lw         $a1,-19420($s1)
    beqz       $a1, .L000010d4
    ld         $v0,-19432($s1)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
.L00000dc0:
    lhu        $a2,298($s0)
    li         $a1,3
    beq        $a1, $a2, .L000011fc
    li         $a0,0xb488
    ld         $a0,0($s0)
.L00000dd4:
    jal        rrmGenlockNotify
    move       $a1,$s2
    b          .L00000bc4
    nop
.L00000de4:
    lw         $a3,-19500($s1)
    li         $s5,-1
    dsrl32     $s5,$s5,0x0
    ori        $a3,$a3,0x2
    dsll32     $a5,$a3,0x0
    ld         $a6,824($s0)
    dsrl32     $a5,$a5,0x0
    ld         $a7,-30712($gp)
    lui        $s3,0x40
    and        $a5,$s5,$a5
    daddu      $a6,$s3,$a6
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    lw         $a4,-19328($s1)
    bnez       $a4, .L00000ba4
    sw         $a3,-19500($s1)
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s4,0x8530
    sd         $v0,56($sp)
    beqz       $t8, .L00001334
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00001354
    nop
.L00000e6c:
    jal        vsema
    move       $a0,$s4
    b          .L00000ba8
    ld         $v1,40($sp)
.L00000e7c:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s1)
    lhu        $a4,-31408($s1)
    srl        $a5,$a0,0x5
    andi       $a5,$a5,0x1
    xor        $a4,$a4,$a5
    sltu       $a4,$zero,$a4
    move       $a1,$v0
    beqz       $a4, .L00000f20
    lui        $s3,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s1)
    lw         $t1,-19664($s1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s0)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$s3,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00000f20:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a4, .L00000f6c
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    li         $ra,-1
    ld         $t8,824($s0)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00000f6c:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L00000a44
    nop
.L00000f90:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s1)
    lhu        $a4,-31408($s1)
    srl        $a5,$a0,0x5
    andi       $a5,$a5,0x1
    xor        $a4,$a4,$a5
    sltu       $a4,$zero,$a4
    move       $a1,$v0
    beqz       $a4, .L00001034
    lui        $s3,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s1)
    lw         $t1,-19664($s1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s0)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$s3,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00001034:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a4, .L00001080
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    li         $ra,-1
    ld         $t8,824($s0)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00001080:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L00000aac
    nop
.L000010a4:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00000b94
    ld         $a0,824($s0)
.L000010b8:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L000008bc
    lhu        $a3,298($s0)
.L000010d4:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00000dc0
    nop
.L000010e8:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s1)
    lhu        $a4,-31408($s1)
    srl        $a5,$a0,0x5
    andi       $a5,$a5,0x1
    xor        $a4,$a4,$a5
    sltu       $a4,$zero,$a4
    move       $a1,$v0
    beqz       $a4, .L0000118c
    lui        $s3,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s1)
    lw         $t1,-19664($s1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s0)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$s3,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L0000118c:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a4, .L000011d8
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    li         $ra,-1
    ld         $t8,824($s0)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L000011d8:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L00000d50
    nop
.L000011fc:
    jal        vsema
    daddu      $a0,$s0,$a0
    b          .L00000dd4
    ld         $a0,0($s0)
.L0000120c:
    ld         $s3,64($sp)
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000884
    move       $s2,$zero
.L0000122c:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s1)
    lhu        $a4,-31408($s1)
    srl        $a5,$a0,0x5
    andi       $a5,$a5,0x1
    xor        $a4,$a4,$a5
    sltu       $a4,$zero,$a4
    beqz       $a4, .L000012c4
    move       $a1,$v0
    li         $t2,-3
    and        $t2,$t2,$a0
    sw         $t2,-19664($s1)
    ld         $t3,824($s0)
    dsll32     $t2,$t2,0x0
    ld         $a6,-30720($gp)
    dsrl32     $t2,$t2,0x0
    daddu      $t3,$s3,$t3
    and        $t2,$s5,$t2
    or         $t2,$a6,$t2
    sd         $t2,0($t3)
    sync
    lhu        $t1,-31408($s1)
    lw         $t0,-19664($s1)
    li         $t2,-33
    andi       $t1,$t1,0x1
    and        $t0,$t0,$t2
    sll        $t1,$t1,0x5
    or         $t0,$t0,$t1
    sw         $t0,-19664($s1)
    ld         $a7,824($s0)
    dsll32     $t0,$t0,0x0
    dsrl32     $t0,$t0,0x0
    daddu      $a7,$s3,$a7
    and        $t0,$s5,$t0
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L000012c4:
    ld         $t8,824($s0)
    daddu      $t8,$s3,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a4, .L00001310
    li         $a5,-2
    lw         $t9,-19664($s1)
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    dsrl32     $t9,$t9,0x0
    ld         $at,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L00001310:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s1)
    and        $ra,$a5,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L00000cc8
    nop
.L00001334:
    ld         $s3,56($sp)
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000ba8
    ld         $v1,40($sp)
.L00001354:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s1)
    lhu        $a4,-31408($s1)
    srl        $a5,$a0,0x5
    andi       $a5,$a5,0x1
    xor        $a4,$a4,$a5
    sltu       $a4,$zero,$a4
    beqz       $a4, .L000013ec
    move       $a1,$v0
    li         $t2,-3
    and        $t2,$a0,$t2
    sw         $t2,-19664($s1)
    dsll32     $t2,$t2,0x0
    ld         $t3,824($s0)
    ld         $a6,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a6,$t2
    sd         $t2,0($t3)
    sync
    lhu        $t1,-31408($s1)
    lw         $t0,-19664($s1)
    li         $t2,-33
    andi       $t1,$t1,0x1
    and        $t0,$t0,$t2
    sll        $t1,$t1,0x5
    or         $t0,$t0,$t1
    sw         $t0,-19664($s1)
    dsll32     $t0,$t0,0x0
    ld         $a7,824($s0)
    dsrl32     $t0,$t0,0x0
    and        $t0,$s5,$t0
    daddu      $a7,$s3,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L000013ec:
    ld         $t8,824($s0)
    daddu      $t8,$s3,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a4, .L00001438
    li         $a5,-2
    lw         $t9,-19664($s1)
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    dsrl32     $t9,$t9,0x0
    ld         $at,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L00001438:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s1)
    and        $ra,$a5,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L00000e6c
    nop
.L0000145c:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,2640
    b          .L0000061c
    ld         $s2,72($sp)
.L00001478:
    daddiu     $a1,$s3,1720
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000820
    move       $a0,$s2
.L00001490:
    daddiu     $a1,$s3,1808
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000834
    move       $a0,$s2
.L000014a8:
    daddiu     $a1,$s3,1896
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000848
    move       $a0,$s2
.L000014c0:
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000860
    lw         $ra,-19328($s1)
.L000014d4:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1440
    b          .L00000b10
    lbu        $s4,0($sp)
.L000014ec:
    daddiu     $a1,$s3,1536
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000c08
    move       $a0,$s2
.L00001504:
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000860
    lw         $ra,-19328($s1)
.L00001518:
    daddiu     $a1,$s3,2256
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000b48
    move       $a0,$s2
.L00001530:
    daddiu     $a1,$s3,2352
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000b5c
    move       $a0,$s2
.L00001548:
    daddiu     $a1,$s3,2448
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000b70
    move       $a0,$s2
.L00001560:
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000b88
    lw         $ra,-19328($s1)
.L00001574:
    daddiu     $a1,$s3,2072
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000d8c
    move       $a0,$s2
.L0000158c:
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    b          .L00000b88
    lw         $ra,-19328($s1)
