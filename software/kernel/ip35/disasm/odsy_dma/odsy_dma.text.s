.section .text
.set noat
.set noreorder


glabel odsy_NewDmaRegion
    daddiu     $sp,$sp,-80
    sd         $s0,64($sp)
    sd         $a6,8($sp)
    sd         $a0,0($sp)
    sd         $s4,48($sp)
    sd         $s3,32($sp)
    move       $s3,$a2
    sd         $s2,24($sp)
    move       $s2,$a3
    move       $s4,$a5
    sd         $s1,56($sp)
    move       $s1,$a7
    li         $a0,88
    sd         $a1,16($sp)
    sd         $ra,40($sp)
    jal        kmem_zalloc
    move       $a1,$zero
    beqz       $v0, .L000000e8
    move       $s0,$v0
    ld         $a0,8($sp)
    ld         $at,0($sp)
    sd         $zero,0($v0)
    sw         $s4,48($v0)
    sd         $s2,40($v0)
    sd         $s3,32($v0)
    daddiu     $a1,$v0,56
    ld         $v0,16($sp)
    sd         $v0,24($s0)
    li         $a2,32
    jal        bcopy
    sd         $at,16($s0)
    beqz       $s4, .L000000bc
    move       $a0,$s3
    move       $a1,$s2
    li         $a2,272
    jal        useracc
    move       $a3,$zero
    bnez       $v0, .L00000104
    sw         $v0,0($s1)
    li         $v1,1
    sw         $v1,52($s0)
    jal        odsy_DmaRegion_BuildXlatTbl
    move       $a0,$s0
    beqz       $v0, .L000000c0
    sw         $v0,0($s1)
    b          .L00000130
    ld         $a1,-30720($gp)
.L000000bc:
    sw         $zero,52($s0)
.L000000c0:
    sw         $zero,0($s1)
.L000000c4:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    ld         $s4,48($sp)
    ld         $s1,56($sp)
    move       $v0,$s0
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000000e8:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    li         $a0,12
    sw         $a0,0($s1)
    b          .L000000c4
    move       $s0,$zero
.L00000104:
    li         $a0,4
    ld         $a1,-30720($gp)
    move       $a2,$s3
    move       $a3,$s2
    jal        cmn_err
    daddiu     $a1,$a1,48
    sw         $zero,52($s0)
    jal        odsy_DeleteDmaRegion
    move       $a0,$s0
    b          .L000000c4
    move       $s0,$zero
.L00000130:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,104
    jal        odsy_DeleteDmaRegion
    move       $a0,$s0
    b          .L000000c4
    move       $s0,$zero

glabel odsy_DeleteDmaRegion
    lw         $at,52($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L000001dc
    sd         $ra,8($sp)
    ld         $a1,40($a0)
    li         $a2,272
    jal        unuseracc
    ld         $a0,32($a0)
    ld         $a0,0($s0)
    beqz       $a0, .L000001dc
    li         $a3,129
    lw         $a1,8($s0)
    blez       $a1, .L000001d4
    nop
    move       $a0,$zero
.L00000190:
    ld         $v1,0($s0)
    daddu      $v1,$a0,$v1
    sb         $a3,0($v1)
    lw         $a1,8($s0)
    addiu      $a0,$a0,1
    slt        $v0,$a0,$a1
    beqz       $v0, .L000001d0
    nop
    ld         $a4,0($s0)
    daddu      $a4,$a0,$a4
    sb         $a3,0($a4)
    lw         $a1,8($s0)
    addiu      $a0,$a0,1
    slt        $a2,$a0,$a1
    bnez       $a2, .L00000190
    nop
.L000001d0:
    ld         $a0,0($s0)
.L000001d4:
    jal        kmem_free
    nop
.L000001dc:
    move       $a1,$zero
    li         $a0,131
.L000001e4:
    daddu      $a6,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $a5,$a1,88
    sb         $a0,0($a6)
    beqz       $a5, .L00000220
    daddu      $t0,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $a7,$a1,88
    sb         $a0,0($t0)
    beqz       $a7, .L00000220
    daddu      $t1,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $t2,$a1,88
    bnez       $t2, .L000001e4
    sb         $a0,0($t1)
.L00000220:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,88
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_DmaRegion_Pin
    lw         $at,52($a0)
    daddiu     $sp,$sp,-16
    sd         $a0,0($sp)
    beqz       $at, .L00000260
    sd         $ra,8($sp)
    move       $v0,$zero
.L00000254:
    ld         $ra,8($sp)
.L00000258:
    jr         $ra
    daddiu     $sp,$sp,16
.L00000260:
    move       $a1,$a0
    ld         $a0,32($a0)
    li         $a2,272
    move       $a3,$zero
    jal        useracc
    ld         $a1,40($a1)
    beqz       $v0, .L00000288
    ld         $a0,0($sp)
    b          .L00000258
    ld         $ra,8($sp)
.L00000288:
    li         $a2,1
    jal        odsy_DmaRegion_BuildXlatTbl
    sw         $a2,52($a0)
    b          .L00000254
    move       $v0,$zero

glabel odsy_DmaRegion_UnPin
    lw         $at,52($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00000338
    sd         $ra,8($sp)
    ld         $a1,40($a0)
    ld         $a0,32($a0)
    li         $a2,272
    jal        unuseracc
    sw         $zero,52($s0)
    ld         $a0,0($s0)
    beqz       $a0, .L00000338
    li         $a3,133
    lw         $a1,8($s0)
    blez       $a1, .L00000328
    nop
    move       $a0,$zero
.L000002e4:
    ld         $v1,0($s0)
    daddu      $v1,$a0,$v1
    sb         $a3,0($v1)
    lw         $a1,8($s0)
    addiu      $a0,$a0,1
    slt        $v0,$a0,$a1
    beqz       $v0, .L00000324
    nop
    ld         $a4,0($s0)
    daddu      $a4,$a0,$a4
    sb         $a3,0($a4)
    lw         $a1,8($s0)
    addiu      $a0,$a0,1
    slt        $a2,$a0,$a1
    bnez       $a2, .L000002e4
    nop
.L00000324:
    ld         $a0,0($s0)
.L00000328:
    jal        kmem_free
    nop
    sw         $zero,8($s0)
    sd         $zero,0($s0)
.L00000338:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_DmaRegion_DoTransfer
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s0,8($sp)
    move       $s0,$a2
    sd         $s2,16($sp)
    move       $s2,$a0
    jal        kvtophys
    ld         $a0,0($a1)
    li         $a7,3587
    li         $a6,-1
    lui        $t8,0x11
    ld         $t1,824($s2)
    li         $a4,-1
    andi       $at,$s0,0x4
    dsrl32     $a4,$a4,0x0
    daddu      $a5,$t1,$t8
    lui        $t0,0x1
    dsrl       $t2,$v0,0x18
    ori        $t0,$t0,0xffff
    lui        $t9,0xfe
    and        $a3,$t0,$t2
    and        $t0,$t0,$v0
    and        $t2,$t9,$t2
    and        $t9,$t9,$v0
    dsll       $t2,$t2,0x6
    move       $v0,$zero
    or         $a3,$a3,$t2
    and        $a3,$a3,$a4
    dsll       $t2,$t9,0x6
    ld         $ra,0($sp)
    or         $t3,$t0,$t2
    beqz       $at, .L000003fc
    dsll32     $a4,$t3,0x0
    dsll32     $a2,$a7,0x0
    or         $a2,$a3,$a2
.L000003d4:
    sd         $a2,0($a5)
    sync
    ld         $s0,8($sp)
    dsll32     $a3,$a6,0x0
    and        $a3,$a4,$a3
    sd         $a3,0($a5)
    sync
    ld         $s2,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000003fc:
    li         $a2,3585
    dsll32     $a2,$a2,0x0
    b          .L000003d4
    or         $a2,$a3,$a2

glabel odsy_DmaRegion_BuildXlatTbl
    ld         $v0,0($a0)
    daddiu     $sp,$sp,-32
    li         $a4,135
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $v0, .L00000494
    sd         $ra,16($sp)
    lw         $a1,8($a0)
    beqz       $a1, .L00000494
    nop
    blez       $a1, .L00000484
    nop
    move       $v0,$zero
.L00000440:
    ld         $v1,0($s0)
    daddu      $v1,$v0,$v1
    sb         $a4,0($v1)
    lw         $a1,8($s0)
    addiu      $v0,$v0,1
    slt        $at,$v0,$a1
    beqz       $at, .L00000480
    nop
    ld         $a1,0($s0)
    daddu      $a1,$v0,$a1
    sb         $a4,0($a1)
    lw         $a1,8($s0)
    addiu      $v0,$v0,1
    slt        $a0,$v0,$a1
    bnez       $a0, .L00000440
    nop
.L00000480:
    ld         $v0,0($s0)
.L00000484:
    jal        kmem_free
    move       $a0,$v0
    sw         $zero,8($s0)
    sd         $zero,0($s0)
.L00000494:
    ld         $a0,40($s0)
    daddiu     $a0,$a0,16383
    dsrl       $a0,$a0,0xe
    sll        $a0,$a0,0x0
    li         $a1,0x8800
    dsll       $a0,$a0,0x3
    daddiu     $a0,$a0,40
    sd         $a0,0($sp)
    jal        kmem_zalloc
    sll        $a0,$a0,0x0
    beqz       $v0, .L00000540
    sd         $v0,0($s0)
    ld         $t0,0($sp)
    sw         $t0,8($s0)
    ldl        $a7,56($s0)
    ldr        $a7,63($s0)
    sdl        $a7,0($v0)
    sdr        $a7,7($v0)
    ldl        $a6,64($s0)
    ldr        $a6,71($s0)
    sdl        $a6,8($v0)
    sdr        $a6,15($v0)
    ldl        $a5,72($s0)
    ldr        $a5,79($s0)
    sdl        $a5,16($v0)
    sdr        $a5,23($v0)
    ldl        $a4,80($s0)
    ldr        $a4,87($s0)
    sdl        $a4,24($v0)
    sdr        $a4,31($v0)
    ld         $a3,0($s0)
    daddiu     $a0,$s0,56
    ld         $a1,32($s0)
    move       $a4,$zero
    ld         $a2,40($s0)
    jal        generatePageTable
    daddiu     $a3,$a3,32
    move       $a0,$v0
.L0000052c:
    ld         $ra,16($sp)
    move       $v0,$a0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000540:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,136
    b          .L0000052c
    li         $a0,12

glabel generatePageTable
    daddiu     $sp,$sp,-144
    sd         $a4,56($sp)
    sd         $zero,16($sp)
    sd         $s2,96($sp)
    sd         $s8,104($sp)
    sd         $s6,112($sp)
    sd         $s5,120($sp)
    sd         $s3,128($sp)
    sd         $s1,32($sp)
    sd         $s4,48($sp)
    move       $s4,$a0
    sd         $s0,24($sp)
    move       $s0,$a1
    move       $s1,$a2
    sd         $s7,40($sp)
    move       $s7,$a3
    beqz       $a4, .L000007c8
    sd         $ra,136($sp)
    move       $s3,$a4
    beqz       $a4, .L00000874
    ld         $s2,-30720($gp)
.L000005ac:
    sd         $zero,8($sp)
    sd         $zero,0($sp)
    lw         $t9,12($s4)
    lui        $a0,0x1
    lw         $s1,24($s4)
    lui        $s5,0xf
    srl        $t9,$t9,0x10
    ori        $s5,$s5,0xffff
    sltiu      $t8,$t9,1
    and        $s1,$s1,$s5
    movz       $a0,$t9,$t8
    dmultu     $a0,$s1
    lwu        $v1,20($s4)
    move       $a1,$zero
    sd         $v1,72($sp)
    move       $a2,$zero
    sd         $s1,64($sp)
    mflo       $s5
    sd         $a0,80($sp)
    jal        alenlist_cursor_init
    move       $a0,$s3
    ld         $ra,56($sp)
    bnez       $ra, .L000007a4
    move       $a0,$s3
    move       $a0,$s3
.L00000610:
    move       $a1,$zero
    daddiu     $a4,$sp,8
    daddiu     $a3,$sp,0
    li         $a2,16384
    jal        alenlist_get
    move       $a5,$zero
    bnez       $v0, .L00000890
    move       $s4,$v0
    move       $s0,$zero
    move       $s6,$zero
    b          .L00000650
    ld         $s8,0($sp)
.L00000640:
    bnez       $v0, .L00000860
    ld         $a1,-30720($gp)
.L00000648:
    blez       $t0, .L0000071c
    nop
.L00000650:
    ld         $t0,8($sp)
    move       $at,$t0
    sltu       $t1,$s1,$t0
    movn       $at,$s1,$t1
    dsubu      $s1,$s1,$at
    dsubu      $t0,$t0,$at
    sd         $t0,8($sp)
    bnez       $s1, .L00000648
    daddu      $s0,$at,$s0
    ld         $a0,72($sp)
    ld         $v0,80($sp)
    dsubu      $v1,$s5,$s0
    ld         $s1,64($sp)
    addiu      $s6,$s6,1
    dsubu      $t0,$t0,$a0
    sd         $t0,8($sp)
    bnez       $v1, .L00000640
    slt        $v0,$v0,$s6
    dsrl       $a6,$s8,0x10
    sll        $a2,$s0,0x0
    lw         $a3,4($s7)
    lui        $a1,0xffff
    andi       $a2,$a2,0xffff
    lw         $a4,12($s7)
    sw         $zero,8($s7)
    sll        $a5,$s8,0x10
    andi       $a3,$a3,0xffff
    sw         $a6,0($s7)
    andi       $a4,$a4,0xffff
    or         $a3,$a3,$a5
    and        $a4,$a1,$a4
    sw         $a4,12($s7)
    and        $a1,$a1,$a3
    or         $a1,$a1,$a2
    sw         $a1,4($s7)
.L000006dc:
    ld         $s2,96($sp)
.L000006e0:
    ld         $s8,104($sp)
    ld         $s6,112($sp)
    ld         $s0,24($sp)
    ld         $a5,56($sp)
    ld         $s1,32($sp)
    ld         $s5,120($sp)
    bnez       $a5, .L00000704
    ld         $s7,40($sp)
    bnez       $s3, .L000007b8
.L00000704:
    ld         $ra,136($sp)
.L00000708:
    ld         $s3,128($sp)
    move       $v0,$s4
    ld         $s4,48($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L0000071c:
    move       $s2,$t0
    move       $a0,$s3
    move       $a1,$zero
    li         $a2,16384
    daddiu     $a3,$sp,0
    daddiu     $a4,$sp,8
    jal        alenlist_get
    move       $a5,$zero
    ld         $a1,8($sp)
    bnez       $v0, .L00000848
    move       $s4,$v0
    daddu      $t0,$a1,$s2
    blez       $t0, .L0000071c
    sd         $t0,8($sp)
    ld         $t1,0($sp)
    daddiu     $s7,$s7,8
    dsubu      $t1,$t1,$s2
    sd         $t1,0($sp)
    lw         $t0,-4($s7)
    lui        $a6,0xffff
    sll        $a7,$s0,0x0
    sll        $t2,$s8,0x10
    andi       $t0,$t0,0xffff
    andi       $a7,$a7,0xffff
    or         $t0,$t0,$t2
    dsrl       $t1,$s8,0x10
    sw         $t1,-8($s7)
    and        $a6,$a6,$t0
    dsubu      $s5,$s5,$s0
    or         $a6,$a6,$a7
    sw         $a6,-4($s7)
    move       $s0,$zero
    b          .L00000650
    ld         $s8,0($sp)
.L000007a4:
    move       $a1,$s0
    jal        alenlist_cursor_init
    move       $a2,$zero
    b          .L00000610
    move       $a0,$s3
.L000007b8:
    jal        alenlist_destroy
    move       $a0,$s3
    b          .L00000708
    ld         $ra,136($sp)
.L000007c8:
    jal        alenlist_create
    li         $a0,3
    li         $a0,1
    beqz       $v0, .L000008a4
    move       $s3,$v0
    dsll32     $t2,$a0,0xc
    sltu       $t2,$s0,$t2
    beqz       $t2, .L0000080c
    move       $a0,$v0
    move       $a0,$v0
    move       $a1,$s0
    move       $a2,$s1
    jal        uvaddr_to_alenlist
    move       $a3,$zero
    move       $s3,$v0
    b          .L00000824
    sd         $s4,88($sp)
.L0000080c:
    move       $a1,$s0
    move       $a2,$s1
    jal        kvaddr_to_alenlist
    move       $a3,$zero
    move       $s3,$v0
    sd         $s4,88($sp)
.L00000824:
    move       $s4,$zero
    ld         $s2,-30720($gp)
.L0000082c:
    ld         $t3,16($sp)
    bnez       $t3, .L000006dc
    nop
    bnez       $s3, .L000005ac
    ld         $s4,88($sp)
    b          .L00000878
    daddu      $a3,$s0,$s1
.L00000848:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,296
    b          .L000006e0
    ld         $s2,96($sp)
.L00000860:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,344
    b          .L000006e0
    ld         $s2,96($sp)
.L00000874:
    daddu      $a3,$s0,$s1
.L00000878:
    move       $a2,$s0
    daddiu     $a1,$s2,248
    jal        cmn_err
    li         $a0,4
    b          .L000006dc
    li         $s4,14
.L00000890:
    daddiu     $a1,$s2,296
    jal        cmn_err
    li         $a0,4
    b          .L000006e0
    ld         $s2,96($sp)
.L000008a4:
    ld         $s2,-30720($gp)
    li         $a0,4
    sd         $s4,88($sp)
    jal        cmn_err
    daddiu     $a1,$s2,200
    li         $s4,12
    li         $a2,1
    b          .L0000082c
    sd         $a2,16($sp)

glabel odsy_dma_poll_timer
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        vsema
    ld         $a0,-30712($gp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel DmaFinishedPollDelay
    daddiu     $sp,$sp,-16
    move       $a1,$zero
    sd         $ra,8($sp)
    move       $a2,$zero
    li         $a3,-1
    sd         $s3,0($sp)
    move       $s3,$a0
    jal        init_sema
    ld         $a0,-30712($gp)
    li         $a2,25
    move       $a1,$s3
    jal        timeout
    ld         $a0,-30704($gp)
    ld         $s3,0($sp)
    ld         $a0,-30712($gp)
    jal        psema
    li         $a1,25
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfP_OdsyDIAGdma
    daddiu     $sp,$sp,-112
    sd         $a2,80($sp)
    sd         $ra,88($sp)
    sd         $s4,96($sp)
    sd         $s1,72($sp)
    sd         $s0,64($sp)
    sd         $s3,56($sp)
    ld         $s3,40($a0)
    move       $a6,$a2
    move       $s0,$a0
    sd         $s3,48($sp)
    move       $s1,$a3
    beqz       $a1, .L0000097c
    ld         $s3,824($s3)
    jal        RRM_CheckValidFault
    nop
    bltz       $v0, .L00000ad8
    ld         $a6,80($sp)
.L0000097c:
    move       $a0,$a6
    daddiu     $a1,$sp,0
    jal        copyin
    li         $a2,48
    bnez       $v0, .L00000ae4
    ld         $a1,-30720($gp)
    ld         $v0,40($s0)
    ld         $t8,72($v0)
    bne        $t8, $s0, .L00000a98
    li         $a1,537
.L000009a4:
    lw         $t9,80($v0)
.L000009a8:
    move       $a0,$s0
    move       $a1,$zero
    li         $a4,-1
    addiu      $t9,$t9,1
    sw         $t9,80($v0)
    li         $a5,1
    daddiu     $a6,$sp,12
    ld         $a2,0($sp)
    move       $a7,$s1
    jal        odsy_NewDmaRegion
    lw         $a3,8($sp)
    bnez       $v0, .L000009f4
    move       $s4,$v0
    ld         $at,40($s0)
    lw         $ra,80($at)
    addiu      $ra,$ra,-1
    sw         $ra,80($at)
    b          .L00000a7c
    lw         $v0,0($s1)
.L000009f4:
    lw         $at,4116($s3)
    li         $v0,-2049
    and        $at,$at,$v0
    sw         $at,4116($s3)
    sync
    lw         $a2,44($sp)
    move       $a1,$s4
    jal        odsy_DmaRegion_DoTransfer
    ld         $a0,40($s0)
    bnez       $v0, .L00000afc
    sd         $s2,104($sp)
.L00000a20:
    b          .L00000a44
    move       $s2,$zero
.L00000a28:
    jal        DmaFinishedPollDelay
    move       $a0,$s3
    lw         $v1,4116($s3)
    srl        $v1,$v1,0xb
    andi       $v1,$v1,0x1
    bnez       $v1, .L00000a54
    slti       $a1,$s2,40
.L00000a44:
    addiu      $s2,$s2,1
    slti       $a0,$s2,40
    bnez       $a0, .L00000a28
    slti       $a1,$s2,40
.L00000a54:
    beqz       $a1, .L00000b14
    ld         $s2,104($sp)
.L00000a5c:
    jal        odsy_DeleteDmaRegion
    move       $a0,$s4
    ld         $a3,40($s0)
    lw         $a2,80($a3)
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    move       $v0,$zero
    sw         $zero,0($s1)
.L00000a7c:
    ld         $s4,96($sp)
    ld         $ra,88($sp)
    ld         $s3,56($sp)
    ld         $s0,64($sp)
    ld         $s1,72($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000a98:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s0)
    sd         $s0,72($a4)
    ld         $v0,40($s0)
    lw         $a3,104($v0)
    beqz       $a3, .L000009a4
    nop
.L00000ab8:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $a5,104($v0)
    bnez       $a5, .L00000ab8
    nop
    b          .L000009a8
    lw         $t9,80($v0)
.L00000ad8:
    li         $v0,14
    b          .L00000a7c
    sw         $v0,0($s1)
.L00000ae4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,400
    li         $v0,14
    b          .L00000a7c
    sw         $v0,0($s1)
.L00000afc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,448
    b          .L00000a20
    nop
.L00000b14:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,480
    jal        odsy_teardown
    ld         $a0,48($sp)
    b          .L00000a5c
    ld         $s2,104($sp)

glabel odsyDMAOps
    daddiu     $sp,$sp,-464
    sd         $a4,320($sp)
    sd         $s0,376($sp)
    sd         $s3,352($sp)
    sw         $zero,32($sp)
    sd         $s6,360($sp)
    lw         $s6,24($a3)
    sd         $s7,384($sp)
    move       $s3,$a2
    ld         $at,176($a2)
    li         $a2,272
    move       $s0,$a3
    ld         $s7,16($a3)
    move       $a3,$zero
    sd         $s2,344($sp)
    move       $s2,$a0
    sd         $ra,368($sp)
    move       $a1,$s6
    move       $a0,$s7
    daddiu     $at,$at,6988
    jal        useracc
    sd         $at,400($sp)
    sd         $s4,416($sp)
    sd         $s8,424($sp)
    sd         $s5,432($sp)
    move       $a1,$v0
    beqz       $v0, .L00000bdc
    sd         $s1,440($sp)
    li         $a0,12
.L00000ba8:
    ld         $s2,344($sp)
    ld         $s3,352($sp)
    ld         $s6,360($sp)
    ld         $s4,416($sp)
    ld         $s0,376($sp)
    ld         $s8,424($sp)
    ld         $ra,368($sp)
    ld         $s5,432($sp)
    move       $v0,$a0
    ld         $s1,440($sp)
    ld         $s7,384($sp)
    jr         $ra
    daddiu     $sp,$sp,464
.L00000bdc:
    ld         $a3,864($s2)
    lui        $a2,0x1
    ori        $a2,$a2,0x658
    sw         $a2,0($a3)
    ld         $a0,864($s2)
    lui        $v1,0x12
    sw         $v1,0($a0)
    lw         $v0,56($s0)
    srl        $v0,$v0,0x18
    andi       $v0,$v0,0x8
    li         $a0,-1
    beqz       $v0, .L00001954
    sd         $a0,72($s0)
    lw         $v0,60($s0)
    andi       $a3,$v0,0x10
    beqz       $a3, .L00000c44
    andi       $a5,$v0,0x8
    sd         $a0,40($sp)
    sd         $a0,72($s0)
    ld         $a4,224($s3)
    ld         $a4,120($a4)
    lw         $a4,144($a4)
    beqz       $a4, .L00001460
    nop
.L00000c3c:
    lw         $v0,60($s0)
    andi       $a5,$v0,0x8
.L00000c44:
    beqz       $a5, .L0000184c
    nop
    ld         $t0,176($s3)
    lw         $s1,40($s0)
    lw         $a7,56($s0)
    sd         $a0,144($sp)
    sd         $a0,72($s0)
    srl        $a7,$a7,0x10
    ld         $a6,-30696($gp)
    andi       $a7,$a7,0x7
    lw         $v0,280($s2)
    dsll       $a7,$a7,0x2
    sd         $t0,256($sp)
    daddu      $a6,$a6,$a7
    li         $s8,1
    lw         $a6,0($a6)
    andi       $s1,$s1,0xffff
    beqz       $v0, .L000013fc
    sd         $a6,328($sp)
    beq        $s8, $v0, .L00001594
    li         $ra,128
    lw         $t1,152($sp)
    beqz       $s3, .L00001408
    sd         $t1,392($sp)
.L00000ca4:
    lw         $t2,0($s3)
    move       $a3,$zero
    beqz       $t2, .L00001818
    move       $a0,$zero
    lw         $t3,28($s0)
    sll        $t3,$t3,0x2
    bltz       $t3, .L00001820
    move       $a0,$zero
    move       $a3,$zero
.L00000cc8:
    lw         $t2,32($s0)
.L00000ccc:
    andi       $t2,$t2,0xffff
    andi       $t8,$t2,0x8000
    beqz       $t8, .L00000ce8
    ld         $a4,320($sp)
    lui        $t3,0xffff
    or         $t2,$t2,$t3
    ld         $a4,320($sp)
.L00000ce8:
    lw         $a1,20($a4)
    addu       $s5,$t2,$a3
    lw         $a4,32($a4)
    addu       $a2,$s5,$s1
    bltz       $s5, .L00001424
    addu       $a1,$a1,$a4
    slt        $a5,$a1,$a2
    beqz       $a5, .L0000141c
    move       $v0,$zero
.L00000d0c:
    subu       $s1,$a1,$s5
.L00000d10:
    ld         $a1,400($sp)
    lw         $a1,20($a1)
    beqz       $a1, .L00001440
    lui        $s4,0x8000
    lui        $a2,0x7f
    and        $a5,$s4,$a1
    ori        $a2,$a2,0xffff
    and        $a2,$a1,$a2
    lui        $a4,0x80
    or         $a2,$a2,$a4
    srl        $a6,$a1,0x17
    li         $a4,150
    andi       $a6,$a6,0xff
    subu       $a4,$a4,$a6
    beqz       $a5, .L00000d58
    srlv       $a2,$a2,$a4
    nor        $a2,$a2,$zero
    addiu      $a2,$a2,1
.L00000d58:
    ld         $a7,400($sp)
    lw         $a7,32($a7)
    beqz       $a7, .L00001448
    lui        $a1,0x7f
    and        $a5,$s4,$a7
    ori        $a1,$a1,0xffff
    and        $a1,$a7,$a1
    lui        $a4,0x80
    or         $a1,$a1,$a4
    srl        $a6,$a7,0x17
    li         $a4,150
    andi       $a6,$a6,0xff
    subu       $a4,$a4,$a6
    beqz       $a5, .L00000d9c
    srlv       $a1,$a1,$a4
    nor        $a1,$a1,$zero
    addiu      $a1,$a1,1
.L00000d9c:
    ld         $t3,320($sp)
    lw         $t0,24($t3)
    addu       $t1,$a2,$a0
    lw         $t3,36($t3)
    move       $a7,$t1
    slti       $a5,$t1,0
    movn       $a7,$zero,$a5
    addu       $t0,$t0,$t3
    sltu       $a4,$t0,$a7
    beqz       $a4, .L00000dd0
    addu       $a2,$a1,$a0
    move       $a7,$t0
    addu       $a2,$a1,$a0
.L00000dd0:
    move       $t3,$a2
    slti       $t9,$a2,0
    movn       $t3,$zero,$t9
    sltu       $t8,$t0,$t3
    beqz       $t8, .L00000dec
    nop
    move       $t3,$t0
.L00000dec:
    beq        $t1, $a7, .L00000e08
    subu       $a1,$a7,$t1
    bgez       $a1, .L00000e0c
    sd         $a1,288($sp)
    negu       $at,$a1
    b          .L00000e0c
    sd         $at,288($sp)
.L00000e08:
    sd         $zero,288($sp)
.L00000e0c:
    beq        $a2, $t3, .L00000e24
    move       $ra,$zero
    subu       $a1,$a2,$t3
    bgez       $a1, .L00000e24
    move       $ra,$a1
    negu       $ra,$a1
.L00000e24:
    subu       $a1,$a7,$a0
    and        $v1,$a1,$s4
    sd         $v1,224($sp)
    beqz       $v1, .L00000e40
    move       $t0,$a1
    nor        $t0,$a1,$zero
    addiu      $t0,$t0,1
.L00000e40:
    li         $t1,-2
    and        $t1,$t0,$t1
    beqz       $t1, .L0000183c
    li         $a1,1
    b          .L00001acc
    move       $a4,$zero
.L00000e58:
    and        $t8,$t0,$t8
    sll        $a1,$a1,0x1
    beqz       $t8, .L00000e78
    ori        $a1,$a1,0x1
    addiu      $a4,$a4,1
.L00000e6c:
    slti       $a2,$a4,32
    bnez       $a2, .L00000e58
    nor        $t8,$a1,$zero
.L00000e78:
    beqz       $t0, .L00001450
    addiu      $a5,$a4,127
    sd         $a5,272($sp)
.L00000e84:
    subu       $a1,$t3,$a0
    and        $a6,$a1,$s4
    sd         $a6,232($sp)
    beqz       $a6, .L00000ea0
    move       $t1,$a1
    nor        $t1,$a1,$zero
    addiu      $t1,$t1,1
.L00000ea0:
    li         $t8,-2
    and        $t8,$t1,$t8
    beqz       $t8, .L00001844
    li         $a0,1
    b          .L00001adc
    move       $a2,$zero
.L00000eb8:
    and        $t9,$t1,$t9
    sll        $a0,$a0,0x1
    beqz       $t9, .L00000ed8
    ori        $a0,$a0,0x1
    addiu      $a2,$a2,1
.L00000ecc:
    slti       $a1,$a2,32
    bnez       $a1, .L00000eb8
    nor        $t9,$a0,$zero
.L00000ed8:
    beqz       $t1, .L00001458
    addiu      $a5,$a2,127
    sd         $a5,280($sp)
.L00000ee4:
    li         $a1,8
    move       $a0,$zero
    daddiu     $t9,$sp,160
    daddiu     $t8,$s0,28
.L00000ef4:
    addiu      $a1,$a1,-1
    daddu      $a6,$a0,$t8
    daddu      $at,$a0,$t9
    lw         $a6,0($a6)
    addiu      $a0,$a0,4
    bgtz       $a1, .L00000ef4
    sw         $a6,0($at)
    lw         $at,184($sp)
    lui        $s8,0xf
    lw         $t9,180($sp)
    ori        $s8,$s8,0xffff
    ld         $t8,288($sp)
    and        $s8,$s8,$at
    addu       $t9,$t9,$s8
    multu      $t8,$t9
    ld         $t9,392($sp)
    mflo       $s8
    div        $zero,$s1,$t9
    lw         $a5,172($sp)
    srl        $a6,$a5,0x10
    addu       $t8,$ra,$t8
    subu       $a6,$a6,$t8
    sll        $a6,$a6,0x10
    andi       $a5,$a5,0xffff
    teq        $t9,$zero,0x7
    or         $a5,$a5,$a6
    dsll32     $s8,$s8,0x0
    dsrl32     $s8,$s8,0x0
    mflo       $a1
    sw         $a5,172($sp)
    blez       $s1, .L00001800
    addiu      $a1,$a1,2
    beq        $a7, $t3, .L00001804
    move       $a0,$s7
    bltz       $a3, .L00001524
    ld         $t3,256($sp)
    sd         $zero,264($sp)
.L00000f90:
    daddiu     $a6,$s0,72
    sd         $a6,336($sp)
    ld         $a6,280($sp)
    move       $a3,$zero
    move       $a0,$a1
    andi       $a6,$a6,0xff
    li         $ra,32
    sll        $a6,$a6,0x17
    subu       $a5,$ra,$a2
    subu       $ra,$ra,$a4
    sllv       $a5,$t1,$a5
    ld         $at,272($sp)
    lui        $v1,0x7f
    sllv       $ra,$t0,$ra
    ori        $v1,$v1,0xffff
    sra        $ra,$ra,0x9
    ld         $a7,232($sp)
    andi       $at,$at,0xff
    sra        $a5,$a5,0x9
    and        $a5,$a5,$v1
    and        $ra,$ra,$v1
    ld         $v1,224($sp)
    sll        $at,$at,0x17
    or         $a6,$a6,$a7
    or         $a5,$a5,$a6
    sd         $a5,312($sp)
    or         $at,$at,$v1
    or         $ra,$ra,$at
    b          .L000011d4
    sd         $ra,304($sp)
.L00001008:
    nor        $at,$v0,$zero
    and        $at,$t3,$at
    sll        $v0,$v0,0x1
    beqz       $at, .L00001028
    ori        $v0,$v0,0x1
    addiu      $t0,$t0,1
.L00001020:
    slti       $v1,$t0,32
    bnez       $v1, .L00001008
.L00001028:
    lui        $a6,0xcf80
.L0000102c:
    ld         $at,400($sp)
    beqz       $t3, .L0000103c
    move       $v0,$zero
    addiu      $v0,$t0,127
.L0000103c:
    ori        $a6,$a6,0xa92f
    sw         $a6,0($t9)
    ld         $a5,864($s2)
    lw         $v1,0($at)
    sw         $v1,0($a5)
    ld         $a6,864($s2)
    lw         $a5,4($at)
    sw         $a5,0($a6)
    ld         $v1,864($s2)
    lw         $a6,8($at)
    sw         $a6,0($v1)
    ld         $a5,864($s2)
    lw         $v1,12($at)
    sw         $v1,0($a5)
    andi       $v1,$t8,0xff
    li         $a5,32
    sll        $v1,$v1,0x17
    subu       $a5,$a5,$t1
    lui        $a6,0x7f
    sllv       $a5,$t2,$a5
    ori        $a6,$a6,0xffff
    sra        $a5,$a5,0x9
    or         $v1,$a7,$v1
    and        $a5,$a6,$a5
    or         $a5,$a5,$v1
    ld         $v1,864($s2)
    sw         $a5,0($v1)
    ld         $v1,864($s2)
    ld         $a5,304($sp)
    sw         $a5,0($v1)
    ld         $v1,864($s2)
    lw         $a5,24($at)
    sw         $a5,0($v1)
    li         $v1,32
    subu       $v1,$v1,$t0
    sllv       $v1,$t3,$v1
    sra        $v1,$v1,0x9
    and        $a6,$a6,$v1
    andi       $v1,$v0,0xff
    sll        $v1,$v1,0x17
    or         $v1,$ra,$v1
    or         $a6,$a6,$v1
    ld         $v1,864($s2)
    sw         $a6,0($v1)
    ld         $a5,864($s2)
    ld         $v1,312($sp)
    sw         $v1,0($a5)
    ld         $v1,864($s2)
    lw         $at,36($at)
    sw         $at,0($v1)
    ld         $at,864($s2)
    lui        $a6,0x1
    ori        $a6,$a6,0x4400
    sw         $a6,0($at)
    ld         $a5,864($s2)
    li         $v1,10
    sw         $v1,0($a5)
    ld         $v1,864($s2)
    lui        $at,0x8080
    ori        $at,$at,0xc800
    sw         $at,0($v1)
    ld         $a6,864($s2)
    sw         $zero,0($a6)
    ld         $a5,864($s2)
    move       $v0,$a0
    blez       $s1, .L00001368
    sw         $zero,0($a5)
    sd         $a0,456($sp)
    sd         $a3,448($sp)
    sd         $a2,248($sp)
    sd         $a1,240($sp)
.L00001158:
    daddiu     $a6,$sp,160
    daddiu     $a5,$sp,32
    ld         $a7,336($sp)
    daddu      $a3,$s7,$s8
    move       $a2,$zero
    sw         $v0,28($sp)
    move       $t2,$s6
    slti       $t1,$s1,1
    sd         $s7,8($sp)
    li         $t0,2
    movz       $t2,$zero,$t1
    move       $a1,$s2
    sd         $t2,16($sp)
    movz       $t0,$zero,$t1
    move       $a0,$s3
    jal        odsyDMAOp
    sw         $t0,4($sp)
    ld         $a0,456($sp)
    ld         $a3,448($sp)
    move       $a1,$v0
    sd         $v0,296($sp)
    bnez       $v0, .L000019bc
    addiu      $a0,$a0,-1
    ld         $t3,248($sp)
    ld         $t2,240($sp)
    addiu      $a3,$a3,1
    ld         $t1,72($s0)
    addu       $s5,$t3,$s5
    sd         $t1,144($sp)
    blez       $s1, .L0000138c
    move       $v0,$t3
.L000011d4:
    ld         $a7,392($sp)
    div        $zero,$s5,$a7
    mfhi       $a2
    subu       $a2,$a7,$a2
    lw         $a1,172($sp)
    slt        $a4,$s1,$a2
    lui        $t9,0xffff
    movn       $a2,$s1,$a4
    and        $a1,$t9,$a1
    andi       $v1,$a2,0xffff
    or         $v1,$v1,$a1
    sw         $v1,172($sp)
    lw         $ra,32($s0)
    andi       $at,$ra,0xffff
    addu       $at,$v0,$at
    and        $ra,$t9,$ra
    andi       $at,$at,0xffff
    or         $ra,$ra,$at
    sw         $ra,32($s0)
    lw         $at,164($sp)
    andi       $ra,$ra,0xffff
    and        $t9,$t9,$at
    or         $t9,$t9,$ra
    sw         $t9,164($sp)
    lw         $t8,40($s0)
    ld         $t0,328($sp)
    andi       $t8,$t8,0xffff
    subu       $t8,$t8,$a2
    multu      $t0,$t8
    mflo       $a6
    mult       $a2,$t0
    lui        $t3,0xf
    ori        $t3,$t3,0xffff
    lw         $at,184($sp)
    lui        $ra,0xfff0
    mflo       $t9
    lw         $t1,172($sp)
    and        $ra,$ra,$at
    and        $t9,$t3,$t9
    or         $t9,$t9,$ra
    srl        $t1,$t1,0x10
    and        $t3,$t3,$t9
    multu      $t1,$t3
    lw         $a5,48($s0)
    addu       $a5,$a5,$a6
    addiu      $t1,$t1,-1
    mflo       $a4
    multu      $a5,$t1
    mflo       $a6
    mult       $t0,$v0
    teq        $a7,$zero,0x7
    and        $a7,$t2,$s4
    subu       $s1,$s1,$a2
    nor        $a1,$t2,$zero
    sw         $t9,184($sp)
    li         $t9,-2
    move       $t1,$zero
    move       $t0,$t2
    addu       $a4,$a4,$a6
    li         $v0,1
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    mflo       $t8
    sw         $a5,180($sp)
    beqz       $a7, .L000012f8
    daddu      $s8,$s8,$t8
    addiu      $t2,$a1,1
.L000012f8:
    and        $a5,$t2,$t9
    beqz       $a5, .L0000132c
    addu       $a1,$t0,$a2
    b          .L00001afc
    move       $t1,$zero
.L0000130c:
    and        $a6,$t2,$a6
    sll        $v0,$v0,0x1
    beqz       $a6, .L0000132c
    ori        $v0,$v0,0x1
    addiu      $t1,$t1,1
.L00001320:
    slti       $v1,$t1,32
    bnez       $v1, .L0000130c
    nor        $a6,$v0,$zero
.L0000132c:
    beqz       $t2, .L00001380
    move       $t0,$zero
    addiu      $t8,$t1,127
.L00001338:
    and        $ra,$a1,$s4
    move       $t3,$a1
    nor        $v0,$a1,$zero
    beqz       $ra, .L00001354
    and        $a5,$t3,$t9
    addiu      $t3,$v0,1
    and        $a5,$t3,$t9
.L00001354:
    ld         $t9,864($s2)
    beqz       $a5, .L00001414
    li         $v0,1
    b          .L00001aec
    move       $t0,$zero
.L00001368:
    sd         $a3,448($sp)
    sd         $a2,248($sp)
    sd         $a1,240($sp)
    move       $v0,$zero
    b          .L00001158
    sd         $a0,456($sp)
.L00001380:
    move       $t8,$zero
    b          .L00001338
    nop
.L0000138c:
    ld         $a6,264($sp)
    beqz       $a6, .L000013f4
    nop
    ld         $v1,864($s2)
    lui        $t9,0x1
    ori        $v0,$t9,0x443
    sw         $v0,0($v1)
    ld         $at,864($s2)
    li         $ra,250
    sw         $ra,0($at)
    ld         $at,864($s2)
    ori        $t9,$t9,0x46
    sw         $t9,0($at)
    ld         $ra,864($s2)
    ld         $t3,-30720($gp)
    sw         $t9,0($ra)
    li         $t8,-1
    lwu        $t1,108($s3)
    dsrl32     $t8,$t8,0x0
    ld         $t2,864($s2)
    and        $t1,$t1,$t8
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    ld         $t0,864($s2)
    lw         $a7,112($s3)
    sw         $a7,0($t0)
.L000013f4:
    b          .L00000ba8
    move       $a0,$a1
.L000013fc:
    li         $a0,64
    sd         $a0,392($sp)
.L00001404:
    bnez       $s3, .L00000ca4
.L00001408:
    move       $a0,$zero
    b          .L00000cc8
    move       $a3,$zero
.L00001414:
    b          .L0000102c
    lui        $a6,0xcf80
.L0000141c:
    b          .L00000d10
    move       $v0,$zero
.L00001424:
    slt        $a4,$a1,$a2
    move       $s1,$a2
    negu       $v0,$s5
    beqz       $a4, .L00001834
    subu       $t2,$t2,$s5
    b          .L00000d0c
    move       $s5,$zero
.L00001440:
    b          .L00000d58
    move       $a2,$zero
.L00001448:
    b          .L00000d9c
    move       $a1,$zero
.L00001450:
    b          .L00000e84
    sd         $zero,272($sp)
.L00001458:
    b          .L00000ee4
    sd         $zero,280($sp)
.L00001460:
    lw         $a5,40($s3)
    beqz       $a5, .L00000c3c
    lui        $a2,0xffff
    lw         $a0,56($s0)
    lui        $a5,0xff
    srl        $a4,$a0,0x18
    lw         $a3,32($s0)
    ori        $a5,$a5,0xffff
    andi       $a4,$a4,0xf7
    and        $a0,$a0,$a5
    sll        $a4,$a4,0x18
    andi       $a6,$a3,0x8000
    or         $a0,$a0,$a4
    andi       $v0,$a3,0xffff
    sw         $a0,56($s0)
    srl        $a7,$a0,0x18
    andi       $a7,$a7,0x40
    beqz       $a6, .L00001994
    sd         $a7,216($sp)
    addu       $s5,$v0,$a2
.L000014b0:
    srl        $v0,$a3,0x10
    andi       $a6,$v0,0x8000
    beqz       $a6, .L0000199c
    lui        $s8,0xffff
    addu       $s8,$v0,$s8
.L000014c4:
    lw         $a3,48($s0)
    lw         $a7,40($s3)
    lw         $a6,52($s0)
    srl        $at,$a0,0x10
    lui        $a5,0xf
    ld         $ra,-30696($gp)
    andi       $at,$at,0x7
    lw         $a4,40($s0)
    ori        $a5,$a5,0xffff
    dsll       $at,$at,0x2
    and        $a5,$a5,$a6
    daddu      $ra,$ra,$at
    srl        $a2,$a4,0x10
    addu       $a3,$a3,$a5
    lw         $ra,0($ra)
    addu       $a2,$s8,$a2
    blez       $a7, .L000019a4
    sd         $ra,208($sp)
    daddiu     $t9,$sp,64
    move       $v0,$zero
    addiu      $a0,$a7,-1
    andi       $t2,$a4,0xffff
    b          .L000015a0
    addu       $t2,$s5,$t2
.L00001524:
    lw         $t3,7352($t3)
    beqz       $t3, .L00001564
    li         $t8,1
    ld         $v1,864($s2)
    lui        $t8,0x1
    ori        $at,$t8,0x443
    sw         $at,0($v1)
    ld         $ra,864($s2)
    li         $t9,250
    sw         $t9,0($ra)
    ld         $ra,864($s2)
    ori        $t8,$t8,0x46
    sw         $t8,0($ra)
    ld         $t9,864($s2)
    sw         $t8,0($t9)
    li         $t8,1
.L00001564:
    ld         $t9,256($sp)
    move       $a6,$t8
    sd         $a6,264($sp)
    sw         $t8,7352($t9)
    ld         $t3,864($s2)
    ld         $a7,-30720($gp)
    sd         $a7,0($t3)
    ld         $a5,864($s2)
    lw         $a0,112($s3)
    addu       $t2,$t2,$a3
    b          .L00000f90
    sw         $a0,0($a5)
.L00001594:
    b          .L00001404
    sd         $ra,392($sp)
.L0000159c:
    bltz       $a0, .L00001624
.L000015a0:
    dsll       $a7,$a0,0x2
    daddu      $a7,$s3,$a7
    lw         $t1,76($a7)
    lw         $t0,44($a7)
    dsll       $t8,$v0,0x2
    slt        $a6,$t1,$t2
    lw         $a4,92($a7)
    slt        $t3,$t0,$s5
    movz       $t1,$t2,$a6
    movn       $t0,$s5,$t3
    lw         $a7,60($a7)
    slt        $a5,$a4,$a2
    slt        $v1,$t0,$t1
    addiu      $a0,$a0,-1
    movz       $a4,$a2,$a5
    slt        $at,$a7,$s8
    beqz       $v1, .L0000159c
    movn       $a7,$s8,$at
    slt        $t3,$a7,$a4
    daddiu     $at,$sp,96
    daddiu     $v1,$sp,80
    beqz       $t3, .L0000159c
    daddu      $t3,$t8,$t9
    daddiu     $ra,$sp,48
    sw         $t0,0($t3)
    daddu      $at,$t8,$at
    daddu      $v1,$t8,$v1
    sw         $t1,0($at)
    daddu      $ra,$t8,$ra
    sw         $a4,0($v1)
    addiu      $v0,$v0,1
    b          .L0000159c
    sw         $a7,0($ra)
.L00001624:
    beqz       $v0, .L000019a8
    move       $a0,$s7
    blez       $v0, .L000017f8
    addiu      $s4,$v0,-1
    daddiu     $s1,$s0,72
    b          .L00001b0c
    sd         $a2,192($sp)
.L00001640:
    mult       $a3,$a1
    mflo       $v0
    sd         $a3,408($sp)
    addu       $v0,$a0,$v0
.L00001650:
    srl        $t2,$t2,0x10
    multu      $t8,$t2
    addiu      $t2,$t2,-1
    mflo       $a4
    multu      $t3,$t2
    move       $a7,$s1
    daddiu     $a6,$sp,112
    daddiu     $a5,$sp,32
    daddu      $a3,$s7,$v0
    move       $a2,$zero
    move       $a1,$s2
    sw         $s4,28($sp)
    move       $a0,$s3
    li         $t1,2
    sd         $s7,8($sp)
    movn       $t1,$zero,$s4
    move       $t2,$s6
    sw         $t1,4($sp)
    movn       $t2,$zero,$s4
    mflo       $t0
    sd         $t2,16($sp)
    jal        odsyDMAOp
    addu       $a4,$a4,$t0
    ld         $a3,408($sp)
    daddiu     $t9,$sp,64
    move       $a1,$v0
    bnez       $v0, .L00001a44
    sd         $v0,200($sp)
    addiu      $s4,$s4,-1
    li         $a0,8
    ld         $t3,72($s0)
    move       $v0,$zero
    bltz       $s4, .L000017f8
    sd         $t3,40($sp)
    dsll       $a4,$s4,0x2
.L000016e4:
    daddu      $a6,$a4,$t9
    daddiu     $a2,$sp,112
    daddiu     $a1,$s0,28
    lw         $a6,0($a6)
.L000016f4:
    addiu      $a0,$a0,-1
    daddu      $t8,$v0,$a1
    daddu      $ra,$v0,$a2
    lw         $t8,0($t8)
    addiu      $v0,$v0,4
    bgtz       $a0, .L000016f4
    sw         $t8,0($ra)
    daddiu     $t3,$sp,96
    lw         $t2,124($sp)
    daddiu     $a2,$sp,48
    daddu      $t3,$a4,$t3
    daddiu     $a5,$sp,80
    daddu      $a2,$a4,$a2
    lw         $t3,0($t3)
    daddu      $a5,$a4,$a5
    lw         $a2,0($a2)
    lui        $a1,0xffff
    lw         $a5,0($a5)
    subu       $t3,$t3,$a6
    and        $t2,$a1,$t2
    andi       $t3,$t3,0xffff
    or         $t2,$t2,$t3
    subu       $t3,$a5,$a2
    sll        $t3,$t3,0x10
    andi       $t2,$t2,0xffff
    ld         $a0,208($sp)
    or         $t2,$t2,$t3
    andi       $t0,$t2,0xffff
    multu      $a0,$t0
    lw         $a7,116($sp)
    lui        $v0,0xfff0
    lui        $t8,0xf
    andi       $v1,$a6,0xffff
    and        $a1,$a1,$a7
    or         $v1,$v1,$a1
    subu       $a6,$a6,$s5
    lw         $a1,136($sp)
    mflo       $at
    mult       $a0,$a6
    ld         $ra,216($sp)
    ori        $t8,$t8,0xffff
    andi       $v1,$v1,0xffff
    and        $v0,$v0,$a1
    ld         $a1,192($sp)
    and        $at,$t8,$at
    sw         $t2,124($sp)
    sll        $a0,$a2,0x10
    or         $at,$at,$v0
    or         $v1,$v1,$a0
    sw         $v1,116($sp)
    and        $t8,$t8,$at
    subu       $a1,$a1,$a5
    sw         $at,136($sp)
    subu       $t3,$a3,$t8
    mflo       $a0
    bnez       $ra, .L00001640
    sw         $t3,132($sp)
    subu       $v1,$a2,$s8
    mult       $a3,$v1
    mflo       $v0
    sd         $a3,408($sp)
    b          .L00001650
    addu       $v0,$a0,$v0
.L000017f8:
    b          .L00000ba8
    move       $a0,$a1
.L00001800:
    move       $a0,$s7
.L00001804:
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000ba8
    move       $a0,$zero
.L00001818:
    b          .L00000ccc
    lw         $t2,32($s0)
.L00001820:
    ld         $a3,224($s3)
    ld         $a3,128($a3)
    lw         $a0,108($a3)
    b          .L00000cc8
    lw         $a3,104($a3)
.L00001834:
    b          .L00000d10
    move       $s5,$zero
.L0000183c:
    b          .L00000e78
    move       $a4,$zero
.L00001844:
    b          .L00000ed8
    move       $a2,$zero
.L0000184c:
    ld         $a0,864($s2)
    ld         $at,400($sp)
    lui        $v1,0xcf80
    ori        $v1,$v1,0xa92f
    sw         $v1,0($a0)
    ld         $v0,864($s2)
    lw         $ra,0($at)
    sw         $ra,0($v0)
    ld         $t9,864($s2)
    lw         $t8,4($at)
    sw         $t8,0($t9)
    ld         $t3,864($s2)
    lw         $t2,8($at)
    sw         $t2,0($t3)
    ld         $t1,864($s2)
    lw         $t0,12($at)
    sw         $t0,0($t1)
    ld         $a7,864($s2)
    lw         $a6,16($at)
    sw         $a6,0($a7)
    ld         $a5,864($s2)
    lw         $a4,20($at)
    sw         $a4,0($a5)
    ld         $a3,864($s2)
    lw         $a2,24($at)
    sw         $a2,0($a3)
    ld         $a1,864($s2)
    lw         $a0,28($at)
    sw         $a0,0($a1)
    ld         $v1,864($s2)
    lw         $v0,32($at)
    sw         $v0,0($v1)
    ld         $v0,864($s2)
    lw         $at,36($at)
    sw         $at,0($v0)
    ld         $at,864($s2)
    lui        $ra,0x1
    ori        $ra,$ra,0x4400
    sw         $ra,0($at)
    ld         $t9,864($s2)
    li         $t8,10
    sw         $t8,0($t9)
    ld         $t8,864($s2)
    lui        $t3,0x8080
    ori        $t3,$t3,0xc800
    sw         $t3,0($t8)
    ld         $t2,864($s2)
    sw         $zero,0($t2)
    ld         $t1,864($s2)
    li         $t0,2
    daddiu     $a7,$s0,72
    sw         $zero,0($t1)
    daddiu     $a6,$s0,28
    daddiu     $a5,$sp,32
    sw         $zero,28($sp)
    move       $a4,$s6
    move       $a3,$s7
    sd         $s6,16($sp)
    move       $a2,$zero
    move       $a1,$s2
    sd         $s7,8($sp)
    move       $a0,$s3
    jal        odsyDMAOp
    sw         $t0,4($sp)
    b          .L000013f4
    move       $a1,$v0
.L00001954:
    move       $a0,$s3
    move       $a1,$s2
    move       $a2,$zero
    move       $a3,$s7
    sw         $zero,28($sp)
    move       $a4,$s6
    sd         $s6,16($sp)
    daddiu     $a7,$s0,72
    sd         $s7,8($sp)
    daddiu     $a6,$s0,28
    li         $a5,2
    sw         $a5,4($sp)
    jal        odsyDMAOp
    daddiu     $a5,$sp,32
    b          .L00000ba8
    move       $a0,$v0
.L00001994:
    b          .L000014b0
    move       $s5,$v0
.L0000199c:
    b          .L000014c4
    move       $s8,$v0
.L000019a4:
    move       $a0,$s7
.L000019a8:
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000ba8
    move       $a0,$zero
.L000019bc:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$a3
    jal        cmn_err
    daddiu     $a1,$a1,512
    ld         $t2,864($s2)
    lui        $a7,0x1
    ori        $t1,$a7,0x444
    sw         $t1,0($t2)
    ld         $t0,864($s2)
    sw         $zero,0($t0)
    ld         $t0,864($s2)
    li         $a6,0xb464
    daddu      $a6,$a6,$s2
    ori        $a7,$a7,0xa5a
    sw         $a7,0($t0)
    lw         $a6,0($a6)
    ld         $a7,864($s2)
    ori        $a6,$a6,0x8000
    sw         $a6,0($a7)
    daddiu     $a3,$sp,144
    li         $a2,1
    ld         $a5,864($s2)
    move       $a1,$s3
    move       $a0,$s2
    li         $a4,3338
    jal        odsyDMAWait
    sw         $a4,0($a5)
    move       $a0,$s7
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000ba8
    ld         $a0,296($sp)
.L00001a44:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$s4
    jal        cmn_err
    daddiu     $a1,$a1,512
    ld         $t2,864($s2)
    lui        $a7,0x1
    ori        $t1,$a7,0x444
    sw         $t1,0($t2)
    ld         $t0,864($s2)
    sw         $zero,0($t0)
    ld         $t0,864($s2)
    li         $a6,0xb464
    daddu      $a6,$a6,$s2
    ori        $a7,$a7,0xa5a
    sw         $a7,0($t0)
    lw         $a6,0($a6)
    ld         $a7,864($s2)
    ori        $a6,$a6,0x8000
    sw         $a6,0($a7)
    daddiu     $a3,$sp,40
    li         $a2,1
    ld         $a5,864($s2)
    move       $a1,$s3
    move       $a0,$s2
    li         $a4,3338
    jal        odsyDMAWait
    sw         $a4,0($a5)
    move       $a0,$s7
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000ba8
    ld         $a0,200($sp)
.L00001acc:
    sll        $a1,$a1,0x1
    ori        $a1,$a1,0x1
    b          .L00000e6c
    addiu      $a4,$a4,1
.L00001adc:
    sll        $a0,$a0,0x1
    ori        $a0,$a0,0x1
    b          .L00000ecc
    addiu      $a2,$a2,1
.L00001aec:
    sll        $v0,$v0,0x1
    ori        $v0,$v0,0x1
    b          .L00001020
    addiu      $t0,$t0,1
.L00001afc:
    sll        $v0,$v0,0x1
    ori        $v0,$v0,0x1
    b          .L00001320
    addiu      $t1,$t1,1
.L00001b0c:
    li         $a0,8
    move       $v0,$zero
    b          .L000016e4
    dsll       $a4,$s4,0x2

glabel odsyDMAOp
    ld         $at,824($a1)
    sw         $zero,0($a5)
    daddiu     $sp,$sp,-288
    sd         $a2,104($sp)
    sd         $a3,136($sp)
    sd         $a4,144($sp)
    sd         $a5,128($sp)
    sd         $a7,120($sp)
    sd         $at,96($sp)
    sd         $s0,200($sp)
    sd         $s4,176($sp)
    move       $s4,$a6
    sd         $s1,168($sp)
    move       $s1,$a1
    sd         $s2,160($sp)
    daddiu     $s2,$a1,5800
    li         $a1,-1
    sd         $s3,152($sp)
    move       $s3,$a0
    sd         $ra,184($sp)
    jal        ddi_mutex_lock
    move       $a0,$s2
    lw         $t8,28440($s1)
    li         $a1,80
    dsll       $s0,$t8,0x2
    addiu      $v1,$t8,1
    daddu      $s0,$s0,$t8
    sra        $a2,$v1,0x1f
    dsll       $s0,$s0,0x4
    xor        $v1,$v1,$a2
    daddu      $s0,$s1,$s0
    subu       $v1,$v1,$a2
    daddiu     $s0,$s0,7960
    andi       $v1,$v1,0xff
    move       $a0,$s0
    xor        $v1,$v1,$a2
    subu       $v1,$v1,$a2
    jal        bzero
    sw         $v1,28440($s1)
    move       $a0,$s2
    jal        mutex_unlock
    sd         $s6,208($sp)
    lw         $s6,292($sp)
    andi       $s6,$s6,0x2
    beqz       $s6, .L00001be8
    li         $a3,-1
    ld         $a2,-30720($gp)
    move       $a1,$zero
    daddiu     $a0,$s0,32
    jal        init_sv
    daddiu     $a2,$a2,680
.L00001be8:
    li         $a0,1
    sw         $a0,8($s0)
    sw         $zero,24($s0)
    sd         $zero,16($s0)
    sd         $s3,40($s0)
    li         $v0,-1
    beqz       $s3, .L00001c3c
    sd         $s5,192($sp)
    ld         $s5,304($sp)
    beqz       $s5, .L00001d98
    nop
    daddiu     $a0,$s3,416
    jal        OdsyAllocCSetId
    move       $a1,$s0
    li         $a3,-1
    beq        $v0, $a3, .L000022c8
    sw         $v0,48($s0)
    sd         $s5,64($s0)
    ld         $a4,296($sp)
    b          .L00001c40
    sd         $a4,56($s0)
.L00001c3c:
    sw         $v0,48($s0)
.L00001c40:
    daddiu     $a2,$sp,48
    move       $a1,$s4
    ld         $a3,136($sp)
    daddiu     $a0,$sp,0
    jal        ConstructTftchWarList
    ld         $a4,144($sp)
    beqz       $v0, .L00001da8
    li         $a1,0x8801
    lw         $s5,52($sp)
.L00001c64:
    beqz       $s0, .L00001d54
    ld         $a5,304($sp)
    beqz       $a5, .L00001c98
    li         $s1,-1
    ld         $a1,64($s0)
    li         $a2,272
    jal        unuseracc
    ld         $a0,56($s0)
    lw         $a1,48($s0)
    beq        $a1, $s1, .L00001c98
    nop
    jal        OdsyDeallocCSetId
    daddiu     $a0,$s3,416
.L00001c98:
    ld         $a0,16($s0)
    beqz       $a0, .L00001d04
    move       $a2,$zero
    lw         $a1,24($s0)
    blez       $a1, .L00001cf8
    move       $a2,$zero
    li         $a0,139
.L00001cb4:
    ld         $a7,16($s0)
    daddu      $a7,$a2,$a7
    sb         $a0,0($a7)
    lw         $a1,24($s0)
    addiu      $a2,$a2,1
    slt        $a6,$a2,$a1
    beqz       $a6, .L00001cf4
    nop
    ld         $t1,16($s0)
    daddu      $t1,$a2,$t1
    sb         $a0,0($t1)
    lw         $a1,24($s0)
    addiu      $a2,$a2,1
    slt        $t0,$a2,$a1
    bnez       $t0, .L00001cb4
    nop
.L00001cf4:
    ld         $a0,16($s0)
.L00001cf8:
    jal        kmem_free
    nop
    move       $a2,$zero
.L00001d04:
    li         $a1,141
.L00001d08:
    daddu      $t3,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $t2,$a2,88
    sb         $a1,0($t3)
    beqz       $t2, .L00001d48
    daddu      $t9,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $t8,$a2,88
    sb         $a1,0($t9)
    beqz       $t8, .L00001d4c
    move       $a0,$s0
    daddu      $ra,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $at,$a2,88
    bnez       $at, .L00001d08
    sb         $a1,0($ra)
.L00001d48:
    move       $a0,$s0
.L00001d4c:
    jal        kmem_free
    li         $a1,88
.L00001d54:
    jal        mutex_mine
    move       $a0,$s2
    beqz       $v0, .L00001d70
    move       $v0,$s5
    jal        mutex_unlock
    move       $a0,$s2
    move       $v0,$s5
.L00001d70:
    ld         $s5,192($sp)
    ld         $s3,152($sp)
    ld         $s0,200($sp)
    ld         $s6,208($sp)
    ld         $ra,184($sp)
    ld         $s2,160($sp)
    ld         $s1,168($sp)
    ld         $s4,176($sp)
    jr         $ra
    daddiu     $sp,$sp,288
.L00001d98:
    sd         $zero,64($s0)
    sd         $a0,56($s0)
    b          .L00001c40
    sw         $v0,48($s0)
.L00001da8:
    jal        kmem_alloc
    lw         $a0,48($sp)
    beqz       $v0, .L000022e0
    sd         $v0,16($s0)
    sd         $zero,88($sp)
    sd         $sp,112($sp)
    lw         $v0,48($sp)
    sw         $v0,24($s0)
.L00001dc8:
    ld         $t8,88($sp)
    ld         $s5,16($s0)
    li         $a2,32
    dsll       $t8,$t8,0x7
    move       $a0,$s4
    daddu      $s5,$s5,$t8
    jal        bcopy
    move       $a1,$s5
    ld         $a2,112($sp)
    lw         $t1,4($s5)
    lw         $a7,24($a2)
    lui        $t0,0xffff
    and        $t1,$t0,$t1
    andi       $a7,$a7,0xffff
    or         $a7,$a7,$t1
    sw         $a7,4($s5)
    lw         $t1,28($a2)
    lw         $a6,28($s5)
    andi       $a7,$a7,0xffff
    sll        $t1,$t1,0x10
    or         $a7,$a7,$t1
    sw         $a7,4($s5)
    lw         $a7,16($a2)
    lw         $t1,12($s5)
    srl        $a6,$a6,0x10
    ld         $a5,-30696($gp)
    and        $t0,$t0,$t1
    andi       $a7,$a7,0xffff
    andi       $a6,$a6,0x7
    or         $a7,$a7,$t0
    sw         $a7,12($s5)
    dsll       $a6,$a6,0x2
    lw         $t0,20($a2)
    daddu      $a5,$a5,$a6
    lw         $a5,0($a5)
    andi       $a7,$a7,0xffff
    sll        $t0,$t0,0x10
    or         $a7,$a7,$t0
    sw         $a7,12($s5)
    lw         $a6,16($a2)
    mult       $a5,$a6
    lw         $a4,24($s5)
    lui        $a3,0xfff0
    and        $a3,$a3,$a4
    lui        $a4,0xf
    ori        $a4,$a4,0xffff
    mflo       $a5
    and        $a4,$a4,$a5
    or         $a3,$a3,$a4
    sw         $a3,24($s5)
    ld         $a1,32($a2)
    move       $a0,$s5
    ld         $a2,40($a2)
    daddiu     $a3,$s5,32
    jal        generatePageTable
    ld         $a4,104($sp)
    ld         $a0,88($sp)
    move       $s5,$v0
    ld         $t0,112($sp)
    bnez       $v0, .L00001c64
    addiu      $a0,$a0,1
    ld         $t0,8($t0)
    sd         $a0,88($sp)
    bnez       $t0, .L00001dc8
    sd         $t0,112($sp)
    move       $a0,$s2
    jal        ddi_mutex_lock
    li         $a1,-1
    ld         $a0,6880($s1)
    ld         $a1,6888($s1)
    sltu       $a2,$a1,$a0
    ld         $s5,96($sp)
    bnez       $a2, .L00001ef8
    dsubu      $a0,$a1,$a0
    b          .L00001f04
    move       $v0,$a0
.L00001ef8:
    li         $v0,1
    dsll32     $v0,$v0,0x1d
    daddu      $v0,$a0,$v0
.L00001f04:
    lw         $a2,316($sp)
    li         $a0,128
    daddiu     $v1,$v0,2
    subu       $a0,$a0,$a2
    sltu       $v1,$v1,$a0
    beqz       $v1, .L00002238
    sd         $a0,72($sp)
.L00001f20:
    ld         $t1,888($s1)
    ld         $t0,120($sp)
    sd         $a1,0($t1)
    sd         $a1,72($s0)
    sd         $a1,0($t0)
    ld         $a7,6888($s1)
    li         $t0,-1
    lw         $v0,5844($s1)
    dsrl       $t0,$t0,0x3
    daddiu     $a7,$a7,1
    dsll       $a6,$v0,0x3
    and        $a7,$a7,$t0
    sd         $a7,6888($s1)
    daddu      $a6,$s1,$a6
    sd         $s0,5856($a6)
    lw         $a5,5844($s1)
    addiu      $a5,$a5,1
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    li         $a4,2048
    lw         $a3,292($sp)
    andi       $a5,$a5,0x7f
    andi       $v0,$v0,0xff
    xor        $a5,$a5,$a6
    andi       $a3,$a3,0x1
    subu       $a5,$a5,$a6
    sw         $a5,5844($s1)
    ori        $v0,$v0,0x5a00
    sw         $a4,4124($s5)
    sync
    beqz       $a3, .L00001fb8
    andi       $v0,$v0,0xffff
    lw         $t2,28($s4)
    srl        $t2,$t2,0x18
    andi       $t2,$t2,0x8
    beqz       $t2, .L000022a0
    nop
.L00001fb8:
    sd         $sp,56($sp)
    move       $s5,$zero
    b          .L00002044
    sd         $v0,64($sp)
.L00001fc8:
    ld         $a3,0($t2)
    beqz       $a3, .L00001fe4
    nop
.L00001fd4:
    move       $t2,$a3
    ld         $a3,0($a3)
    bnez       $a3, .L00001fd4
    nop
.L00001fe4:
    sd         $s0,0($t2)
.L00001fe8:
    addiu      $s5,$s5,1
    ld         $a5,128($sp)
    dsll       $t3,$t8,0x6
    and        $a3,$a2,$a4
    and        $a7,$a1,$a4
    lw         $a5,0($a5)
    li         $a4,3587
    dsll       $a7,$a7,0x6
    dsll32     $a4,$a4,0x0
    or         $a3,$a3,$a7
    ld         $t2,864($s1)
    beqz       $a5, .L000020ec
    and        $a3,$ra,$a3
    or         $a4,$a4,$a3
.L00002020:
    sd         $a4,0($t2)
    ld         $a7,864($s1)
    or         $a5,$a6,$t3
    dsll32     $a5,$a5,0x0
    and        $a5,$t9,$a5
    sd         $a5,0($a7)
    ld         $a0,8($a0)
    beqz       $a0, .L000020fc
    sd         $a0,56($sp)
.L00002044:
    ld         $a0,16($s0)
    dsll       $a1,$s5,0x7
    daddu      $a0,$a0,$a1
    jal        kvtophys
    sd         $a0,80($sp)
    dsrl       $a4,$v0,0x18
    li         $t9,-1
    li         $ra,-1
    dsll32     $t9,$t9,0x0
    lw         $a3,28($s4)
    lui        $a1,0xfe
    dsrl32     $ra,$ra,0x0
    lui        $a2,0x1
    sll        $a3,$a3,0x7
    and        $t8,$a1,$v0
    ori        $a2,$a2,0xffff
    ld         $a0,56($sp)
    bgez       $a3, .L00001fe8
    and        $a6,$a2,$v0
    beqz       $s6, .L00001fe8
    nop
    ld         $at,8($a0)
    bnez       $at, .L00001fe8
    ld         $a5,80($sp)
    lw         $t0,28($a5)
    lui        $a3,0xff
    srl        $a7,$t0,0x18
    ori        $a3,$a3,0xffff
    ori        $a7,$a7,0x80
    and        $a3,$a3,$t0
    sll        $a7,$a7,0x18
    or         $a3,$a3,$a7
    sw         $a3,28($a5)
    lw         $v1,8($s0)
    sd         $zero,0($s0)
    ori        $v1,$v1,0x2
    sw         $v1,8($s0)
    ld         $t2,28448($s1)
    bnez       $t2, .L00001fc8
    nop
    b          .L00001fe8
    sd         $s0,28448($s1)
.L000020ec:
    li         $a4,3585
    dsll32     $a4,$a4,0x0
    b          .L00002020
    or         $a4,$a4,$a3
.L000020fc:
    jal        ReleaseTftchWarList
    daddiu     $a0,$sp,0
    lw         $a5,28($s4)
    srl        $a5,$a5,0x18
    andi       $a5,$a5,0x8
    beqz       $a5, .L000021b4
    nop
    ld         $t0,864($s1)
    lui        $a2,0x1
    ori        $a7,$a2,0x4001
    sw         $a7,0($t0)
    ld         $a6,864($s1)
    ori        $t3,$a2,0x443
    sw         $t3,0($a6)
    ld         $a5,864($s1)
    li         $t1,250
    sw         $t1,0($a5)
    ld         $a4,864($s1)
    ori        $a6,$a2,0x46
    sw         $a6,0($a4)
    ld         $a3,864($s1)
    sw         $a6,0($a3)
    ld         $a3,864($s1)
    ori        $a2,$a2,0x19
    sw         $a2,0($a3)
    ld         $a1,864($s1)
    sw         $t3,0($a1)
    ld         $a0,864($s1)
    li         $v1,150
    sw         $v1,0($a0)
    ld         $v0,864($s1)
    sw         $a6,0($v0)
    ld         $at,864($s1)
    sw         $a6,0($at)
    ld         $ra,864($s1)
    sw         $a6,0($ra)
    ld         $t9,864($s1)
    sw         $a6,0($t9)
    ld         $t8,864($s1)
    sw         $t3,0($t8)
    ld         $t2,864($s1)
    sw         $t1,0($t2)
    ld         $t0,864($s1)
    sw         $a6,0($t0)
    ld         $a7,864($s1)
    sw         $a6,0($a7)
.L000021b4:
    beqz       $s6, .L00002284
    ld         $v0,864($s1)
    ld         $t1,64($sp)
    lui        $t8,0x1
    sh         $t1,5832($s1)
    ori        $t8,$t8,0xa5a
    sw         $t8,0($v0)
    ld         $t8,864($s1)
    lw         $t3,5840($s1)
    ori        $t3,$t3,0x8000
    sw         $t3,0($t8)
    ld         $t2,864($s1)
    sw         $t1,0($t2)
.L000021e8:
    beqz       $s3, .L00002214
    ld         $a0,-30712($gp)
    beqz       $s6, .L00002214
    ld         $a0,-30712($gp)
    ld         $v1,128($sp)
    lw         $v1,0($v1)
    ld         $v0,120($sp)
    beqz       $v1, .L000022c0
    ld         $v0,0($v0)
    sd         $v0,256($s3)
.L00002210:
    ld         $a0,-30712($gp)
.L00002214:
    move       $s5,$zero
    b          .L00001d54
    ld         $a0,0($a0)
.L00002220:
    move       $v0,$a0
.L00002224:
    ld         $a3,72($sp)
    daddiu     $a2,$v0,2
    sltu       $a2,$a2,$a3
    bnez       $a2, .L00001f20
    nop
.L00002238:
    jal        mutex_unlock
    move       $a0,$s2
    move       $a0,$s1
    move       $a1,$zero
    move       $a2,$zero
    jal        odsyDMAWait
    move       $a3,$zero
    move       $a0,$s2
    jal        ddi_mutex_lock
    li         $a1,-1
    ld         $a1,6888($s1)
    ld         $a0,6880($s1)
    sltu       $a2,$a1,$a0
    beqz       $a2, .L00002220
    dsubu      $a0,$a1,$a0
    li         $v0,1
    dsll32     $v0,$v0,0x1d
    b          .L00002224
    daddu      $v0,$v0,$a0
.L00002284:
    lui        $a1,0x1
    ori        $a1,$a1,0x658
    sw         $a1,0($v0)
    ld         $a0,864($s1)
    lui        $v1,0x12
    b          .L000021e8
    sw         $v1,0($a0)
.L000022a0:
    ld         $a5,864($s1)
    lui        $a4,0x1
    ori        $a4,$a4,0x658
    sw         $a4,0($a5)
    ld         $a3,864($s1)
    lui        $a2,0x12
    b          .L00001fb8
    sw         $a2,0($a3)
.L000022c0:
    b          .L00002210
    sd         $v0,248($s3)
.L000022c8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,568
    b          .L00001d70
    li         $v0,12
.L000022e0:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,632
    b          .L00001c64
    li         $s5,12

glabel odsy_dmawait_timeout
    daddiu     $sp,$sp,-32
    li         $a1,-1
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    daddiu     $s1,$a0,5800
    sd         $ra,16($sp)
    jal        ddi_mutex_lock
    move       $a0,$s1
    ld         $a4,6880($s0)
    ld         $a3,6888($s0)
    li         $a0,1
    sltu       $a5,$a3,$a4
    dsll32     $a0,$a0,0x1d
    bnez       $a5, .L00002348
    dsubu      $a3,$a3,$a4
    beqz       $a3, .L00002354
    nop
    b          .L00002370
    nop
.L00002348:
    daddu      $a1,$a3,$a0
    bnez       $a1, .L00002370
    nop
.L00002354:
    jal        mutex_unlock
    move       $a0,$s1
    ld         $ra,16($sp)
.L00002360:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002370:
    jal        mutex_unlock
    move       $a0,$s1
    ld         $s1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$s1,688
    daddiu     $a1,$s1,720
    lhu        $a2,5832($s0)
    jal        cmn_err
    li         $a0,5
    ld         $a2,5824($s0)
    daddiu     $a1,$s1,744
    li         $a0,5
    jal        cmn_err
    lhu        $a2,0($a2)
    daddiu     $a1,$s1,768
    lhu        $a2,5836($s0)
    jal        cmn_err
    li         $a0,5
    ld         $a3,6888($s0)
    ld         $a4,6880($s0)
    sltu       $a5,$a3,$a4
    bnez       $a5, .L000023dc
    dsubu      $a3,$a3,$a4
    b          .L000023e8
    move       $a2,$a3
.L000023dc:
    li         $a2,1
    dsll32     $a2,$a2,0x1d
    daddu      $a2,$a3,$a2
.L000023e8:
    daddiu     $a1,$s1,800
    jal        cmn_err
    li         $a0,5
    jal        odsy_teardown
    move       $a0,$s0
    b          .L00002360
    ld         $ra,16($sp)

glabel odsy_dmawait_harmless_timeout
    daddiu     $sp,$sp,-16
    ld         $a1,-30720($gp)
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,7
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,832
    jal        sv_broadcast
    daddiu     $a0,$s8,5816
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyDMAWait
    daddiu     $sp,$sp,-128
    sd         $a1,80($sp)
    sd         $a2,40($sp)
    sd         $zero,72($sp)
    sd         $zero,64($sp)
    sd         $ra,104($sp)
    lw         $at,816($a0)
    sd         $s0,88($sp)
    move       $s0,$a0
    sd         $s2,96($sp)
    move       $s2,$a3
    beqz       $at, .L0000248c
    sd         $s1,112($sp)
    li         $v0,9
.L00002474:
    ld         $ra,104($sp)
    ld         $s0,88($sp)
    ld         $s1,112($sp)
    ld         $s2,96($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L0000248c:
    li         $a1,-1
    daddiu     $s1,$a0,5800
    jal        ddi_mutex_lock
    move       $a0,$s1
    ld         $v0,40($sp)
    beqz       $v0, .L000026e0
    li         $a2,1500
    ld         $a3,0($s2)
    li         $a2,-1
    beq        $a2, $a3, .L00002770
    nop
    ld         $v0,6880($s0)
    ld         $a0,6888($s0)
    sltu       $v1,$a0,$v0
    bnez       $v1, .L0000253c
    sltu       $a1,$a3,$v0
    bnez       $a1, .L000024e0
    sd         $v0,32($sp)
    sltu       $a2,$a0,$a3
    beqz       $a2, .L000024f4
    ld         $a4,72($sp)
.L000024e0:
    jal        mutex_unlock
    move       $a0,$s1
    li         $a3,1
    sd         $a3,72($sp)
    ld         $a4,72($sp)
.L000024f4:
    beqz       $a4, .L0000255c
    ld         $v0,32($sp)
.L000024fc:
    ld         $a5,80($sp)
.L00002500:
    beqz       $a5, .L00002580
    li         $a0,-1
    move       $a0,$s1
    jal        ddi_mutex_lock
    li         $a1,-1
    ld         $a0,80($sp)
    daddiu     $a0,$a0,416
    jal        OdsyInitCSetCursor
    sd         $a0,48($sp)
    jal        OdsyNextCSetElem
    ld         $a0,48($sp)
    beqz       $v0, .L00002574
    move       $s0,$v0
    b          .L000025b0
    lw         $a1,8($s0)
.L0000253c:
    sltu       $a1,$a0,$a3
    beqz       $a1, .L00002550
    sd         $v0,32($sp)
    sltu       $a2,$a3,$v0
    bnez       $a2, .L000026cc
.L00002550:
    ld         $a3,64($sp)
    bnez       $a3, .L000024fc
    ld         $v0,32($sp)
.L0000255c:
    ld         $a3,0($s2)
    sltu       $v1,$a3,$v0
    bnez       $v1, .L000025e4
    dsubu      $v0,$a3,$v0
    b          .L000025f0
    move       $a2,$v0
.L00002574:
    jal        mutex_unlock
    move       $a0,$s1
    li         $a0,-1
.L00002580:
    sd         $a0,0($s2)
    b          .L00002474
    move       $v0,$zero
.L0000258c:
    jal        OdsyDeallocCSetId
    ld         $a0,48($sp)
.L00002594:
    jal        sv_destroy
    daddiu     $a0,$s0,32
.L0000259c:
    jal        OdsyNextCSetElem
    ld         $a0,48($sp)
    beqz       $v0, .L00002574
    move       $s0,$v0
    lw         $a1,8($s0)
.L000025b0:
    bnez       $a1, .L0000259c
    nop
    ld         $a1,64($s0)
    beqz       $a1, .L00002594
    li         $a2,272
    jal        unuseracc
    ld         $a0,56($s0)
    lw         $a1,48($s0)
    li         $a2,-1
    bne        $a1, $a2, .L0000258c
    nop
    b          .L00002594
    nop
.L000025e4:
    li         $a2,1
    dsll32     $a2,$a2,0x1d
    daddu      $a2,$v0,$a2
.L000025f0:
    sltiu      $a4,$a2,128
    beqz       $a4, .L00002788
    ld         $a1,-30720($gp)
    lw         $v0,5848($s0)
    dsll       $a7,$v0,0x3
    daddu      $a7,$s0,$a7
    ld         $a7,5856($a7)
    ld         $a6,6880($s0)
    ld         $a7,72($a7)
    bne        $a6, $a7, .L000027a4
    li         $a0,4
    daddu      $a6,$v0,$a2
    andi       $a6,$a6,0x7f
    dsll       $a6,$a6,0x3
    daddu      $a6,$s0,$a6
    ld         $a6,5856($a6)
    sd         $a6,24($sp)
    ld         $a6,72($a6)
    bne        $a3, $a6, .L000027c8
    ld         $a1,-30720($gp)
    li         $a2,1500
    ld         $a0,-30680($gp)
    lui        $t0,0x1
    move       $a1,$s0
    daddu      $t0,$s0,$t0
    sd         $t0,56($sp)
    li         $a7,1
    jal        timeout
    sw         $a7,-19304($t0)
    ld         $t1,24($sp)
    lw         $t1,8($t1)
    beqz       $t1, .L00002750
    sd         $v0,16($sp)
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $a0,24($sp)
    move       $a1,$s1
    move       $a2,$zero
    jal        ddi_sv_wait_sig
    daddiu     $a0,$a0,32
    sd         $v0,8($sp)
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    jal        untimeout_wait
    ld         $a0,16($sp)
    ld         $a2,8($sp)
    ld         $a1,56($sp)
    beqz       $a2, .L000026bc
    sw         $zero,-19304($a1)
    lw         $a3,816($s0)
    beqz       $a3, .L000024fc
.L000026bc:
    li         $v0,22
    li         $a4,-1
    b          .L00002474
    sd         $a4,0($s2)
.L000026cc:
    jal        mutex_unlock
    move       $a0,$s1
    li         $a5,1
    b          .L00002550
    sd         $a5,64($sp)
.L000026e0:
    ld         $a0,-30688($gp)
    lui        $a7,0x1
    move       $a1,$s0
    daddu      $a7,$s0,$a7
    sd         $a7,56($sp)
    li         $a6,3
    jal        timeout
    sw         $a6,-19304($a7)
    move       $s2,$v0
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    daddiu     $a0,$s0,5816
    move       $a1,$s1
    jal        ddi_sv_wait_sig
    move       $a2,$zero
    move       $s1,$v0
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    jal        untimeout_wait
    move       $a0,$s2
    ld         $t0,56($sp)
    beqz       $s1, .L00002748
    sw         $zero,-19304($t0)
    lw         $t1,816($s0)
    beqz       $t1, .L00002780
    nop
.L00002748:
    b          .L00002474
    li         $v0,22
.L00002750:
    jal        untimeout_wait
    move       $a0,$v0
    ld         $t2,56($sp)
    move       $a0,$s1
    jal        mutex_unlock
    sw         $zero,-19304($t2)
    b          .L00002500
    ld         $a5,80($sp)
.L00002770:
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00002474
    move       $v0,$zero
.L00002780:
    b          .L00002474
    move       $v0,$zero
.L00002788:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,864
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00002474
    li         $v0,22
.L000027a4:
    ld         $a1,-30720($gp)
    move       $a2,$a6
    move       $a3,$a7
    jal        cmn_err
    daddiu     $a1,$a1,912
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00002474
    li         $v0,22
.L000027c8:
    li         $a0,4
    move       $a2,$a6
    jal        cmn_err
    daddiu     $a1,$a1,968
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00002474
    li         $v0,22

glabel odsyDMADone
    ld         $a3,16($a0)
    daddiu     $sp,$sp,-32
    li         $a4,145
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $a3, .L000028b0
    sd         $ra,16($sp)
    lw         $a1,24($a0)
    blez       $a1, .L00002858
    nop
    move       $a3,$zero
.L00002814:
    ld         $v0,16($s0)
    daddu      $v0,$a3,$v0
    sb         $a4,0($v0)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $at,$a3,$a1
    beqz       $at, .L00002854
    nop
    ld         $a0,16($s0)
    daddu      $a0,$a3,$a0
    sb         $a4,0($a0)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $v1,$a3,$a1
    bnez       $v1, .L00002814
    nop
.L00002854:
    ld         $a3,16($s0)
.L00002858:
    jal        kmem_free
    move       $a0,$a3
    ld         $a1,40($s0)
.L00002864:
    sw         $zero,24($s0)
    beqz       $a1, .L00002894
    sd         $zero,16($s0)
    ld         $a2,64($s0)
    beqz       $a2, .L00002888
    ld         $ra,16($sp)
    jal        sv_broadcast
    daddiu     $a0,$s0,32
    ld         $ra,16($sp)
.L00002888:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002894:
    daddiu     $a0,$s0,32
    jal        sv_broadcast
    sd         $a0,0($sp)
    jal        sv_destroy
    ld         $a0,0($sp)
    b          .L00002888
    ld         $ra,16($sp)
.L000028b0:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1024
    b          .L00002864
    ld         $a1,40($s0)

glabel odsyDMAWakeup
    daddiu     $sp,$sp,-80
    sd         $s3,32($sp)
    sd         $s5,64($sp)
    sd         $s7,72($sp)
    li         $a1,-1
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s6,8($sp)
    daddiu     $s6,$a0,5800
    sd         $ra,16($sp)
    jal        ddi_mutex_lock
    move       $a0,$s6
    ld         $a3,6880($s0)
    daddiu     $s7,$s0,5816
    li         $s5,-2
    ld         $a2,6888($s0)
    sd         $s2,48($sp)
    move       $s2,$zero
    li         $a6,23040
    li         $a5,-1
    sltu       $at,$a2,$a3
    sd         $s4,40($sp)
    dsrl       $s3,$a5,0x3
    dsubu      $a2,$a2,$a3
    sd         $s1,56($sp)
    bne        $zero, $at, .L00002abc
    xori       $a0,$at,0x1
    beqz       $a2, .L00002ad0
    nop
    ld         $a3,5824($s0)
.L00002940:
    lhu        $a3,0($a3)
    andi       $a4,$a3,0xff00
    beq        $a4, $a6, .L00002af0
    nop
    lhu        $a3,5834($s0)
    andi       $a3,$a3,0xff
    addiu      $a3,$a3,1
    sra        $a4,$a3,0x1f
    xor        $a3,$a3,$a4
    subu       $a3,$a3,$a4
    andi       $a3,$a3,0x7f
    xor        $a3,$a3,$a4
    subu       $a3,$a3,$a4
    ori        $a3,$a3,0x5a00
.L00002978:
    andi       $t9,$a3,0xff
    addiu      $s4,$t9,1
    sra        $ra,$s4,0x1f
    xor        $s4,$s4,$ra
    subu       $s4,$s4,$ra
    andi       $s4,$s4,0x7f
    lw         $t8,5848($s0)
    xor        $s4,$s4,$ra
    subu       $s4,$s4,$ra
    sd         $s4,0($sp)
    subu       $s4,$s4,$t8
    addiu      $s4,$s4,128
    sra        $t8,$s4,0x1f
    xor        $s4,$s4,$t8
    subu       $s4,$s4,$t8
    andi       $s4,$s4,0x7f
    move       $a3,$a2
    xor        $s4,$s4,$t8
    sh         $t9,5836($s0)
    beqz       $a0, .L00002ae0
    subu       $s4,$s4,$t8
.L000029cc:
    sltu       $t8,$a3,$s4
    bnez       $t8, .L00002b74
    ld         $a1,-30720($gp)
    blez       $s4, .L00002a88
    nop
    b          .L00002a0c
    ld         $at,6880($s0)
.L000029e8:
    jal        odsyDMADone
    move       $a0,$s1
    jal        sv_broadcast
    move       $a0,$s7
.L000029f8:
    addiu      $s2,$s2,1
    slt        $t9,$s2,$s4
    beqz       $t9, .L00002a88
    nop
.L00002a08:
    ld         $at,6880($s0)
.L00002a0c:
    lw         $ra,5848($s0)
    daddiu     $at,$at,1
    dsll       $ra,$ra,0x3
    and        $at,$s3,$at
    sd         $at,6880($s0)
    daddu      $ra,$s0,$ra
    ld         $s1,5856($ra)
    beqz       $s1, .L00002af8
    sd         $zero,5856($ra)
    lw         $a1,5848($s0)
    addiu      $a1,$a1,1
    sra        $a2,$a1,0x1f
    xor        $a1,$a1,$a2
    subu       $a1,$a1,$a2
    andi       $a1,$a1,0x7f
    xor        $a1,$a1,$a2
    subu       $a1,$a1,$a2
    sw         $a1,5848($s0)
    lw         $a0,8($s1)
    and        $a0,$a0,$s5
    sw         $a0,8($s1)
    ld         $v1,888($s0)
    ld         $v0,72($s1)
    sd         $v0,8($v1)
    lw         $at,8($s1)
    beqz       $at, .L000029e8
    nop
    addiu      $s2,$s2,1
    slt        $a2,$s2,$s4
    bnez       $a2, .L00002a08
    nop
.L00002a88:
    jal        mutex_unlock
    move       $a0,$s6
    ld         $s6,8($sp)
.L00002a94:
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $s2,48($sp)
    ld         $s0,24($sp)
    ld         $ra,16($sp)
    ld         $s1,56($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00002abc:
    li         $a3,1
    dsll32     $a3,$a3,0x1d
    daddu      $a3,$a2,$a3
    bnezl      $a3, .L00002940
    ld         $a3,5824($s0)
.L00002ad0:
    jal        mutex_unlock
    move       $a0,$s6
    b          .L00002a94
    ld         $s6,8($sp)
.L00002ae0:
    li         $a3,1
    dsll32     $a3,$a3,0x1d
    b          .L000029cc
    daddu      $a3,$a2,$a3
.L00002af0:
    b          .L00002978
    sh         $a3,5834($s0)
.L00002af8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1096
    li         $a0,4
    ld         $a1,-30720($gp)
    move       $a2,$s4
    move       $a3,$s2
    ld         $a4,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1128
    lw         $a6,5848($s0)
    addiu      $a6,$a6,1
    sra        $a7,$a6,0x1f
    xor        $a6,$a6,$a7
    subu       $a6,$a6,$a7
    andi       $a6,$a6,0x7f
    xor        $a6,$a6,$a7
    subu       $a6,$a6,$a7
    sw         $a6,5848($s0)
    lw         $a5,8($s1)
    and        $a5,$a5,$s5
    sw         $a5,8($s1)
    ld         $a4,888($s0)
    ld         $a3,72($s1)
    sd         $a3,8($a4)
    lw         $a2,8($s1)
    bnez       $a2, .L000029f8
    nop
    b          .L000029e8
    nop
.L00002b74:
    lh         $a2,790($s0)
    li         $a0,4
    move       $a3,$s4
    ld         $a4,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1056
    jal        mutex_unlock
    move       $a0,$s6
    b          .L00002a94
    ld         $s6,8($sp)

glabel odsyDMAIrptWakeup
    daddiu     $sp,$sp,-32
    li         $a1,-1
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s8,16($sp)
    daddiu     $s8,$a0,5800
    sd         $ra,8($sp)
    jal        ddi_mutex_lock
    move       $a0,$s8
    ld         $a0,28448($s0)
    beqz       $a0, .L00002bec
    li         $a2,-3
    ld         $a5,0($a0)
    sd         $a5,28448($s0)
    lw         $a3,8($a0)
    andi       $a4,$a3,0x2
    beqz       $a4, .L00002bec
    and        $a3,$a3,$a2
    beqz       $a3, .L00002c08
    sw         $a3,8($a0)
.L00002bec:
    ld         $s0,0($sp)
.L00002bf0:
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002c08:
    jal        odsyDMADone
    nop
    jal        sv_broadcast
    daddiu     $a0,$s0,5816
    b          .L00002bf0
    ld         $s0,0($sp)

glabel odsyDMAFinish
    daddiu     $sp,$sp,-64
    sd         $s3,32($sp)
    li         $at,1
    move       $s3,$a0
    sd         $ra,24($sp)
    move       $a2,$at
    sd         $s1,8($sp)
    lui        $s1,0x1
    sd         $s0,16($sp)
    move       $s0,$a1
    daddu      $s1,$a0,$s1
    daddiu     $a3,$s0,248
    jal        odsyDMAWait
    sw         $at,-19300($s1)
    move       $a0,$s3
    move       $a1,$s0
    li         $a2,1
    jal        odsyDMAWait
    daddiu     $a3,$s0,256
    daddiu     $a0,$s3,5800
    sd         $a0,0($sp)
    sw         $zero,-19300($s1)
    li         $a1,-1
    jal        ddi_mutex_lock
    sd         $s2,48($sp)
    daddiu     $s2,$s0,416
    jal        OdsyInitCSetCursor
    move       $a0,$s2
    jal        OdsyNextCSetElem
    move       $a0,$s2
    li         $s1,151
    move       $s0,$v0
    beqz       $v0, .L00002d5c
    sd         $s4,40($sp)
    b          .L00002cc8
    li         $s4,-1
.L00002cb0:
    jal        OdsyDeallocCSetId
    move       $a0,$s2
.L00002cb8:
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00002d5c
    move       $s0,$v0
.L00002cc8:
    lw         $t8,8($s0)
    beqz       $t8, .L00002d34
    nop
    lw         $t9,816($s3)
    beqz       $t9, .L00002d90
    ld         $a1,-30720($gp)
    lw         $a1,24($s0)
.L00002ce4:
    blez       $a1, .L00002d2c
    move       $a3,$zero
.L00002cec:
    ld         $at,16($s0)
    daddu      $at,$a3,$at
    sb         $s1,0($at)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $ra,$a3,$a1
    beqz       $ra, .L00002d2c
    nop
    ld         $v1,16($s0)
    daddu      $v1,$a3,$v1
    sb         $s1,0($v1)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $v0,$a3,$a1
    bnez       $v0, .L00002cec
    nop
.L00002d2c:
    jal        kmem_free
    ld         $a0,16($s0)
.L00002d34:
    ld         $a1,64($s0)
    beqz       $a1, .L00002cb8
    li         $a2,272
    jal        unuseracc
    ld         $a0,56($s0)
    lw         $a1,48($s0)
    bne        $a1, $s4, .L00002cb0
    nop
    b          .L00002cb8
    nop
.L00002d5c:
    move       $a0,$s2
    jal        OdsyDestroyCSet
    move       $a1,$zero
    ld         $s2,48($sp)
    ld         $s4,40($sp)
    jal        mutex_unlock
    ld         $a0,0($sp)
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s3,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00002d90:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1152
    b          .L00002ce4
    lw         $a1,24($s0)

glabel gfP_OdsyMMwaitXfr
    daddiu     $sp,$sp,-64
    sd         $a0,40($sp)
    sw         $zero,0($a3)
    ld         $at,40($a0)
    sd         $at,8($sp)
    lw         $at,816($at)
    sd         $a2,32($sp)
    move       $v0,$a0
    move       $a6,$a2
    sd         $s0,24($sp)
    move       $s0,$a3
    bnez       $at, .L00002e34
    sd         $ra,48($sp)
.L00002dd8:
    ld         $v1,72($v0)
    ld         $v1,112($v1)
    ld         $a2,-30720($gp)
    beqz       $v1, .L00002e50
    sd         $v1,16($sp)
    move       $a0,$a6
    daddiu     $a1,$sp,0
    jal        copyin
    li         $a2,8
    bnez       $v0, .L00002e68
    ld         $a1,-30720($gp)
    ld         $a0,8($sp)
    li         $a2,1
    ld         $a1,16($sp)
    jal        odsyDMAWait
    daddiu     $a3,$sp,0
    move       $a0,$v0
    sw         $v0,0($s0)
.L00002e20:
    ld         $ra,48($sp)
    move       $v0,$a0
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00002e34:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1200
    ld         $v0,40($sp)
    b          .L00002dd8
    ld         $a6,32($sp)
.L00002e50:
    daddiu     $a1,$a2,1248
    jal        cmn_err
    li         $a0,4
    li         $a0,1
    b          .L00002e20
    sw         $a0,0($s0)
.L00002e68:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1304
    li         $a0,14
    b          .L00002e20
    sw         $a0,0($s0)

glabel ConstructTftchWarList
    daddiu     $sp,$sp,-64
    sd         $s3,32($sp)
    sd         $ra,40($sp)
    sd         $s0,24($sp)
    sd         $s6,8($sp)
    lui        $t9,0xf
    lui        $v0,0x2
    sd         $s2,0($sp)
    move       $s6,$a0
    lw         $s2,28($a1)
    ori        $v0,$v0,0x4000
    move       $s0,$a1
    sd         $s4,16($sp)
    sltu       $at,$v0,$a4
    move       $s4,$a3
    sd         $s1,48($sp)
    srl        $s2,$s2,0x18
    sd         $s5,56($sp)
    beqz       $at, .L000030a0
    andi       $s2,$s2,0x40
    ori        $t9,$t9,0xffff
    lw         $t8,24($a1)
    lw         $s5,20($a1)
    and        $t8,$t8,$t9
    addu       $s5,$s5,$t8
    sltu       $v1,$v0,$s5
    bnez       $v1, .L000030f4
    nop
    div        $zero,$v0,$s5
    lw         $at,12($a1)
    srl        $at,$at,0x10
    mflo       $s1
    divu       $zero,$at,$s1
    mflo       $s3
    mult       $s1,$s3
    mflo       $ra
    sltu       $ra,$ra,$at
    teq        $s5,$zero,0x7
    beqz       $ra, .L00002f34
    teq        $s1,$zero,0x7
    addiu      $s3,$s3,1
.L00002f34:
    dsll       $a0,$s3,0x2
    sw         $s3,0($s6)
    sll        $a1,$s3,0x7
    dsubu      $a0,$a0,$s3
    sw         $a1,0($a2)
    move       $a1,$zero
    dsll       $a0,$a0,0x4
    jal        kmem_alloc
    daddiu     $a0,$a0,-48
    beqz       $v0, .L0000310c
    addiu      $t1,$s3,-1
    blez       $s3, .L00003074
    sd         $v0,8($s6)
    move       $a4,$zero
    mult       $s1,$s5
    move       $a7,$s1
    move       $t0,$zero
    mflo       $t2
    b          .L00003124
    move       $a1,$zero
.L00002f84:
    beq        $t1, $a4, .L00003060
.L00002f88:
    dsll       $a3,$a4,0x2
    dsubu      $a3,$a3,$a4
    dsll       $a3,$a3,0x4
    daddu      $a3,$v0,$a3
    sd         $a3,8($a2)
.L00002f9c:
    addu       $a1,$a1,$t2
    lw         $t8,4($s0)
    andi       $t8,$t8,0xffff
    sw         $t8,24($a2)
    lw         $t3,4($s0)
    beqz       $s2, .L00003068
    srl        $t3,$t3,0x10
    lw         $t9,12($s0)
    srl        $t9,$t9,0x10
    addu       $t9,$t3,$t9
    subu       $t9,$t9,$a7
    sw         $t9,28($a2)
.L00002fcc:
    lw         $ra,12($s0)
    sd         $t2,40($a2)
    sd         $at,32($a2)
    sw         $s1,20($a2)
    addu       $a7,$s1,$a7
    andi       $ra,$ra,0xffff
    bne        $t1, $a4, .L0000302c
    sw         $ra,16($a2)
    lw         $a3,12($s0)
    srl        $a3,$a3,0x10
    subu       $a3,$a3,$t0
    sw         $a3,20($a2)
    beqz       $s2, .L00003014
    mult       $a3,$s5
    sll        $zero,$zero,0x2
    lw         $a5,4($s0)
    srl        $a5,$a5,0x10
    sw         $a5,28($a2)
.L00003014:
    lw         $t3,20($s0)
    mflo       $a6
    subu       $a6,$a6,$t3
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    sd         $a6,40($a2)
.L0000302c:
    addiu      $a4,$a4,1
    slt        $t8,$a4,$s3
    addu       $t0,$s1,$t0
    beqz       $t8, .L00003074
    dsll       $t3,$a4,0x2
    move       $a2,$s6
.L00003044:
    daddu      $at,$a1,$s4
    beqz       $a4, .L00002f84
    dsubu      $t3,$t3,$a4
    dsll       $a2,$t3,0x4
    daddu      $a2,$v0,$a2
    bne        $t1, $a4, .L00002f88
    daddiu     $a2,$a2,-48
.L00003060:
    b          .L00002f9c
    sd         $zero,8($a2)
.L00003068:
    addu       $a3,$t0,$t3
    b          .L00002fcc
    sw         $a3,28($a2)
.L00003074:
    move       $v0,$zero
.L00003078:
    ld         $s2,0($sp)
    ld         $s3,32($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,40($sp)
    ld         $s0,24($sp)
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000030a0:
    li         $t2,1
    sw         $t2,0($a0)
    sd         $zero,8($a0)
    lw         $t1,4($a1)
    andi       $t1,$t1,0xffff
    sw         $t1,24($a0)
    lw         $t0,4($a1)
    srl        $t0,$t0,0x10
    sw         $t0,28($a0)
    lw         $a7,12($a1)
    andi       $a7,$a7,0xffff
    sw         $a7,16($a0)
    lw         $a6,12($a1)
    sd         $a4,40($a0)
    sd         $a3,32($a0)
    move       $v0,$zero
    srl        $a6,$a6,0x10
    sw         $a6,20($a0)
    li         $a5,128
    b          .L00003078
    sw         $a5,0($a2)
.L000030f4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1344
    b          .L00003078
    li         $v0,1
.L0000310c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1408
    b          .L00003078
    li         $v0,1
.L00003124:
    dsll       $t3,$a4,0x2
    b          .L00003044
    move       $a2,$s6

glabel ReleaseTftchWarList
    lw         $a5,0($a0)
    li         $a4,155
    daddiu     $sp,$sp,-16
    slti       $at,$a5,2
    sd         $s0,0($sp)
    move       $s0,$a0
    dsll       $a3,$a5,0x2
    sd         $ra,8($sp)
    bnez       $at, .L000031a0
    dsubu      $a3,$a3,$a5
    dsll       $a1,$a3,0x4
    daddiu     $a1,$a1,-48
    beqz       $a1, .L00003198
    move       $a3,$zero
    ld         $a5,8($s0)
.L0000316c:
    daddu      $a5,$a3,$a5
    sb         $a4,0($a5)
    lw         $a2,0($s0)
    dsll       $a1,$a2,0x2
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x4
    addiu      $a3,$a3,1
    daddiu     $a1,$a1,-48
    sltu       $a2,$a3,$a1
    bnezl      $a2, .L0000316c
    ld         $a5,8($s0)
.L00003198:
    jal        kmem_free
    ld         $a0,8($s0)
.L000031a0:
    ld         $ra,8($sp)
    sd         $zero,8($s0)
    sw         $zero,0($s0)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
