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
    dsll32     $t2,$a0,0x8
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
    daddiu     $sp,$sp,-480
    sd         $a4,328($sp)
    sd         $ra,384($sp)
    sd         $s8,376($sp)
    sd         $s0,392($sp)
    sd         $s2,360($sp)
    sw         $zero,32($sp)
    sd         $s6,368($sp)
    lw         $s6,24($a3)
    sd         $s5,352($sp)
    move       $s2,$a2
    ld         $at,176($a2)
    li         $a2,272
    move       $s0,$a3
    ld         $s5,16($a3)
    move       $a3,$zero
    move       $s8,$a0
    ld         $v0,824($a0)
    sd         $v0,288($sp)
    move       $a1,$s6
    move       $a0,$s5
    daddiu     $at,$at,6988
    jal        useracc
    sd         $at,408($sp)
    sd         $s3,432($sp)
    sd         $s4,440($sp)
    sd         $s7,448($sp)
    move       $a1,$v0
    beqz       $v0, .L00000be4
    sd         $s1,456($sp)
    li         $a0,12
.L00000bb0:
    ld         $s5,352($sp)
    ld         $s2,360($sp)
    ld         $s6,368($sp)
    ld         $s3,432($sp)
    ld         $s8,376($sp)
    ld         $s4,440($sp)
    ld         $ra,384($sp)
    ld         $s7,448($sp)
    move       $v0,$a0
    ld         $s1,456($sp)
    ld         $s0,392($sp)
    jr         $ra
    daddiu     $sp,$sp,480
.L00000be4:
    ld         $a2,288($sp)
    lui        $a4,0x11
    lui        $a3,0x1
    daddu      $a2,$a2,$a4
    ori        $a3,$a3,0x658
    sw         $a3,0($a2)
    lui        $a0,0x12
    sync
    sw         $a0,0($a2)
    sync
    lw         $v1,56($s0)
    srl        $v1,$v1,0x18
    andi       $v1,$v1,0x8
    sd         $a2,416($sp)
    li         $a0,-1
    beqz       $v1, .L00001984
    sd         $a0,72($s0)
    lw         $v0,60($s0)
    andi       $a5,$v0,0x10
    beqz       $a5, .L00000c5c
    andi       $a7,$v0,0x8
    sd         $a0,40($sp)
    sd         $a0,72($s0)
    ld         $a6,224($s2)
    ld         $a6,120($a6)
    lw         $a6,144($a6)
    beqz       $a6, .L00001484
    nop
.L00000c54:
    lw         $v0,60($s0)
    andi       $a7,$v0,0x8
.L00000c5c:
    beqz       $a7, .L0000187c
    ld         $t1,416($sp)
    ld         $t2,176($s2)
    lw         $s1,40($s0)
    lw         $t1,56($s0)
    sd         $a0,144($sp)
    sd         $a0,72($s0)
    srl        $t1,$t1,0x10
    ld         $t0,-30696($gp)
    andi       $t1,$t1,0x7
    lw         $v0,280($s8)
    dsll       $t1,$t1,0x2
    sd         $t2,256($sp)
    daddu      $t0,$t0,$t1
    li         $s7,1
    lw         $t0,0($t0)
    andi       $s1,$s1,0xffff
    beqz       $v0, .L00001420
    sd         $t0,336($sp)
    beq        $s7, $v0, .L000015c4
    li         $t8,128
    lw         $t3,152($sp)
    beqz       $s2, .L0000142c
    sd         $t3,400($sp)
.L00000cbc:
    lw         $t8,0($s2)
    move       $a3,$zero
    beqz       $t8, .L00001848
    move       $a0,$zero
    lw         $t9,28($s0)
    sll        $t9,$t9,0x2
    bltz       $t9, .L00001850
    move       $a0,$zero
    move       $a3,$zero
.L00000ce0:
    lw         $t2,32($s0)
.L00000ce4:
    andi       $t2,$t2,0xffff
    andi       $ra,$t2,0x8000
    beqz       $ra, .L00000d00
    ld         $a4,328($sp)
    lui        $t3,0xffff
    or         $t2,$t2,$t3
    ld         $a4,328($sp)
.L00000d00:
    lw         $a1,20($a4)
    addu       $s4,$t2,$a3
    lw         $a4,32($a4)
    addu       $a2,$s4,$s1
    bltz       $s4, .L00001448
    addu       $a1,$a1,$a4
    slt        $a5,$a1,$a2
    beqz       $a5, .L00001440
    move       $v0,$zero
.L00000d24:
    subu       $s1,$a1,$s4
.L00000d28:
    ld         $a1,408($sp)
    lw         $a1,20($a1)
    beqz       $a1, .L00001464
    lui        $s3,0x8000
    lui        $a2,0x7f
    and        $a5,$s3,$a1
    ori        $a2,$a2,0xffff
    and        $a2,$a1,$a2
    lui        $a4,0x80
    or         $a2,$a2,$a4
    srl        $a6,$a1,0x17
    li         $a4,150
    andi       $a6,$a6,0xff
    subu       $a4,$a4,$a6
    beqz       $a5, .L00000d70
    srlv       $a2,$a2,$a4
    nor        $a2,$a2,$zero
    addiu      $a2,$a2,1
.L00000d70:
    ld         $a7,408($sp)
    lw         $a7,32($a7)
    beqz       $a7, .L0000146c
    lui        $a1,0x7f
    and        $a5,$s3,$a7
    ori        $a1,$a1,0xffff
    and        $a1,$a7,$a1
    lui        $a4,0x80
    or         $a1,$a1,$a4
    srl        $a6,$a7,0x17
    li         $a4,150
    andi       $a6,$a6,0xff
    subu       $a4,$a4,$a6
    beqz       $a5, .L00000db4
    srlv       $a1,$a1,$a4
    nor        $a1,$a1,$zero
    addiu      $a1,$a1,1
.L00000db4:
    ld         $t3,328($sp)
    lw         $t0,24($t3)
    addu       $t1,$a2,$a0
    lw         $t3,36($t3)
    move       $a7,$t1
    slti       $a5,$t1,0
    movn       $a7,$zero,$a5
    addu       $t0,$t0,$t3
    sltu       $a4,$t0,$a7
    beqz       $a4, .L00000de8
    addu       $a2,$a1,$a0
    move       $a7,$t0
    addu       $a2,$a1,$a0
.L00000de8:
    move       $t3,$a2
    slti       $t9,$a2,0
    movn       $t3,$zero,$t9
    sltu       $t8,$t0,$t3
    beqz       $t8, .L00000e04
    nop
    move       $t3,$t0
.L00000e04:
    beq        $t1, $a7, .L00000e20
    subu       $a1,$a7,$t1
    bgez       $a1, .L00000e24
    sd         $a1,296($sp)
    negu       $at,$a1
    b          .L00000e24
    sd         $at,296($sp)
.L00000e20:
    sd         $zero,296($sp)
.L00000e24:
    beq        $a2, $t3, .L00000e3c
    move       $ra,$zero
    subu       $a1,$a2,$t3
    bgez       $a1, .L00000e3c
    move       $ra,$a1
    negu       $ra,$a1
.L00000e3c:
    subu       $a1,$a7,$a0
    and        $v1,$a1,$s3
    sd         $v1,224($sp)
    beqz       $v1, .L00000e58
    move       $t0,$a1
    nor        $t0,$a1,$zero
    addiu      $t0,$t0,1
.L00000e58:
    li         $t1,-2
    and        $t1,$t0,$t1
    beqz       $t1, .L0000186c
    li         $a1,1
    b          .L00001b0c
    move       $a4,$zero
.L00000e70:
    and        $t8,$t0,$t8
    sll        $a1,$a1,0x1
    beqz       $t8, .L00000e90
    ori        $a1,$a1,0x1
    addiu      $a4,$a4,1
.L00000e84:
    slti       $a2,$a4,32
    bnez       $a2, .L00000e70
    nor        $t8,$a1,$zero
.L00000e90:
    beqz       $t0, .L00001474
    addiu      $a5,$a4,127
    sd         $a5,272($sp)
.L00000e9c:
    subu       $a1,$t3,$a0
    and        $a6,$a1,$s3
    sd         $a6,232($sp)
    beqz       $a6, .L00000eb8
    move       $t1,$a1
    nor        $t1,$a1,$zero
    addiu      $t1,$t1,1
.L00000eb8:
    li         $t8,-2
    and        $t8,$t1,$t8
    beqz       $t8, .L00001874
    li         $a0,1
    b          .L00001b1c
    move       $a2,$zero
.L00000ed0:
    and        $t9,$t1,$t9
    sll        $a0,$a0,0x1
    beqz       $t9, .L00000ef0
    ori        $a0,$a0,0x1
    addiu      $a2,$a2,1
.L00000ee4:
    slti       $a1,$a2,32
    bnez       $a1, .L00000ed0
    nor        $t9,$a0,$zero
.L00000ef0:
    beqz       $t1, .L0000147c
    addiu      $a5,$a2,127
    sd         $a5,280($sp)
.L00000efc:
    li         $a1,8
    move       $a0,$zero
    daddiu     $t9,$sp,160
    daddiu     $t8,$s0,28
.L00000f0c:
    addiu      $a1,$a1,-1
    daddu      $a6,$a0,$t8
    daddu      $at,$a0,$t9
    lw         $a6,0($a6)
    addiu      $a0,$a0,4
    bgtz       $a1, .L00000f0c
    sw         $a6,0($at)
    lw         $v1,184($sp)
    lui        $at,0xf
    lw         $t9,180($sp)
    ori        $at,$at,0xffff
    ld         $t8,296($sp)
    and        $at,$at,$v1
    addu       $t9,$t9,$at
    multu      $t8,$t9
    ld         $t9,400($sp)
    mflo       $s7
    div        $zero,$s1,$t9
    lw         $a5,172($sp)
    srl        $a6,$a5,0x10
    addu       $t8,$ra,$t8
    subu       $a6,$a6,$t8
    sll        $a6,$a6,0x10
    andi       $a5,$a5,0xffff
    teq        $t9,$zero,0x7
    or         $a5,$a5,$a6
    dsll32     $s7,$s7,0x0
    dsrl32     $s7,$s7,0x0
    mflo       $a1
    sw         $a5,172($sp)
    blez       $s1, .L00001830
    addiu      $a1,$a1,2
    beq        $a7, $t3, .L00001834
    move       $a0,$s5
    bltz       $a3, .L00001548
    ld         $t3,256($sp)
    sd         $zero,264($sp)
.L00000fa8:
    daddiu     $t3,$s0,72
    sd         $t3,344($sp)
    ld         $t3,280($sp)
    move       $a3,$zero
    move       $a0,$a1
    andi       $t3,$t3,0xff
    li         $v1,32
    sll        $t3,$t3,0x17
    subu       $a7,$v1,$a2
    subu       $v1,$v1,$a4
    sllv       $a7,$t1,$a7
    ld         $a5,272($sp)
    lui        $a6,0x7f
    sllv       $v1,$t0,$v1
    ori        $a6,$a6,0xffff
    sra        $v1,$v1,0x9
    ld         $t8,232($sp)
    andi       $a5,$a5,0xff
    sra        $a7,$a7,0x9
    and        $a7,$a7,$a6
    and        $v1,$v1,$a6
    ld         $a6,224($sp)
    sll        $a5,$a5,0x17
    or         $t3,$t3,$t8
    or         $a7,$a7,$t3
    sd         $a7,320($sp)
    or         $a5,$a5,$a6
    or         $v1,$v1,$a5
    b          .L000011f4
    sd         $v1,312($sp)
.L00001020:
    nor        $at,$v0,$zero
    and        $at,$t3,$at
    sll        $v0,$v0,0x1
    beqz       $at, .L00001040
    ori        $v0,$v0,0x1
    addiu      $t0,$t0,1
.L00001038:
    slti       $v1,$t0,32
    bnez       $v1, .L00001020
.L00001040:
    lui        $a5,0xcf80
.L00001044:
    move       $v0,$zero
    ld         $a6,416($sp)
    ld         $at,408($sp)
    beqz       $t3, .L0000105c
    subu       $t9,$t9,$t0
    addiu      $v0,$t0,127
.L0000105c:
    ori        $a5,$a5,0xa92f
    sw         $a5,0($a6)
    sync
    lw         $v1,0($at)
    sw         $v1,0($a6)
    sync
    lw         $a5,4($at)
    sw         $a5,0($a6)
    sync
    lw         $v1,8($at)
    sw         $v1,0($a6)
    sync
    lw         $a5,12($at)
    sw         $a5,0($a6)
    andi       $a6,$t8,0xff
    li         $v1,32
    sll        $a6,$a6,0x17
    subu       $v1,$v1,$t1
    lui        $a5,0x7f
    sllv       $v1,$t2,$v1
    ori        $a5,$a5,0xffff
    sra        $v1,$v1,0x9
    or         $a6,$a7,$a6
    and        $v1,$a5,$v1
    or         $v1,$v1,$a6
    ld         $a6,416($sp)
    sync
    sw         $v1,0($a6)
    sync
    ld         $v1,312($sp)
    sw         $v1,0($a6)
    sllv       $v1,$t3,$t9
    sra        $v1,$v1,0x9
    sync
    and        $a5,$a5,$v1
    lw         $v1,24($at)
    sw         $v1,0($a6)
    andi       $v1,$v0,0xff
    sll        $v1,$v1,0x17
    or         $v1,$ra,$v1
    sync
    or         $a5,$a5,$v1
    sw         $a5,0($a6)
    ld         $v1,320($sp)
    sync
    sw         $v1,0($a6)
    lui        $a5,0x1
    sync
    lw         $at,36($at)
    li         $v1,10
    sw         $at,0($a6)
    sync
    ori        $a5,$a5,0x4400
    sw         $a5,0($a6)
    sync
    sw         $v1,0($a6)
    sync
    lui        $at,0x8080
    ori        $at,$at,0xc800
    sw         $at,0($a6)
    sync
    sw         $zero,0($a6)
    sync
    sw         $zero,0($a6)
    sync
    blez       $s1, .L00001388
    move       $v0,$a0
    sd         $a0,472($sp)
    sd         $a3,464($sp)
    sd         $a2,248($sp)
    sd         $a1,240($sp)
.L00001178:
    daddiu     $a6,$sp,160
    daddiu     $a5,$sp,32
    ld         $a7,344($sp)
    daddu      $a3,$s5,$s7
    move       $a2,$zero
    sw         $v0,28($sp)
    move       $t2,$s6
    slti       $t1,$s1,1
    sd         $s5,8($sp)
    li         $t0,2
    movz       $t2,$zero,$t1
    move       $a1,$s8
    sd         $t2,16($sp)
    movz       $t0,$zero,$t1
    move       $a0,$s2
    jal        odsyDMAOp
    sw         $t0,4($sp)
    ld         $a0,472($sp)
    ld         $a3,464($sp)
    move       $a1,$v0
    sd         $v0,304($sp)
    bnez       $v0, .L000019ec
    addiu      $a0,$a0,-1
    ld         $t3,248($sp)
    ld         $t2,240($sp)
    addiu      $a3,$a3,1
    ld         $t1,72($s0)
    addu       $s4,$t3,$s4
    sd         $t1,144($sp)
    blez       $s1, .L000013ac
    move       $v0,$t3
.L000011f4:
    ld         $a7,400($sp)
    div        $zero,$s4,$a7
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
    ld         $t0,336($sp)
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
    and        $a7,$t2,$s3
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
    beqz       $a7, .L00001318
    daddu      $s7,$s7,$t8
    addiu      $t2,$a1,1
.L00001318:
    and        $a5,$t2,$t9
    beqz       $a5, .L0000134c
    addu       $a1,$t0,$a2
    b          .L00001b3c
    move       $t1,$zero
.L0000132c:
    and        $a6,$t2,$a6
    sll        $v0,$v0,0x1
    beqz       $a6, .L0000134c
    ori        $v0,$v0,0x1
    addiu      $t1,$t1,1
.L00001340:
    slti       $v1,$t1,32
    bnez       $v1, .L0000132c
    nor        $a6,$v0,$zero
.L0000134c:
    beqz       $t2, .L000013a0
    move       $t0,$zero
    addiu      $t8,$t1,127
.L00001358:
    and        $ra,$a1,$s3
    move       $t3,$a1
    nor        $v0,$a1,$zero
    beqz       $ra, .L00001374
    and        $a5,$t3,$t9
    addiu      $t3,$v0,1
    and        $a5,$t3,$t9
.L00001374:
    li         $t9,32
    beqz       $a5, .L00001438
    li         $v0,1
    b          .L00001b2c
    move       $t0,$zero
.L00001388:
    sd         $a3,464($sp)
    sd         $a2,248($sp)
    sd         $a1,240($sp)
    move       $v0,$zero
    b          .L00001178
    sd         $a0,472($sp)
.L000013a0:
    move       $t8,$zero
    b          .L00001358
    nop
.L000013ac:
    ld         $a6,264($sp)
    beqz       $a6, .L00001418
    ld         $t0,416($sp)
    lui        $ra,0x1
    move       $t8,$ra
    ori        $ra,$ra,0x443
    sw         $ra,0($t0)
    li         $t9,250
    sync
    sw         $t9,0($t0)
    sync
    ori        $t8,$t8,0x46
    sw         $t8,0($t0)
    sync
    sw         $t8,0($t0)
    li         $t3,-1
    sync
    lwu        $t1,108($s2)
    ld         $t2,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t1,$t1,$t3
    or         $t1,$t1,$t2
    sd         $t1,0($t0)
    sync
    lw         $a7,112($s2)
    sw         $a7,0($t0)
    sync
.L00001418:
    b          .L00000bb0
    move       $a0,$a1
.L00001420:
    li         $at,64
    sd         $at,400($sp)
.L00001428:
    bnez       $s2, .L00000cbc
.L0000142c:
    move       $a0,$zero
    b          .L00000ce0
    move       $a3,$zero
.L00001438:
    b          .L00001044
    lui        $a5,0xcf80
.L00001440:
    b          .L00000d28
    move       $v0,$zero
.L00001448:
    slt        $v1,$a1,$a2
    move       $s1,$a2
    negu       $v0,$s4
    beqz       $v1, .L00001864
    subu       $t2,$t2,$s4
    b          .L00000d24
    move       $s4,$zero
.L00001464:
    b          .L00000d70
    move       $a2,$zero
.L0000146c:
    b          .L00000db4
    move       $a1,$zero
.L00001474:
    b          .L00000e9c
    sd         $zero,272($sp)
.L0000147c:
    b          .L00000efc
    sd         $zero,280($sp)
.L00001484:
    lw         $a2,40($s2)
    beqz       $a2, .L00000c54
    lui        $a2,0xffff
    lw         $a0,56($s0)
    lui        $a4,0xff
    srl        $a5,$a0,0x18
    lw         $a3,32($s0)
    ori        $a4,$a4,0xffff
    andi       $a5,$a5,0xf7
    and        $a0,$a0,$a4
    sll        $a5,$a5,0x18
    andi       $a4,$a3,0x8000
    or         $a0,$a0,$a5
    andi       $v0,$a3,0xffff
    sw         $a0,56($s0)
    srl        $a5,$a0,0x18
    andi       $a5,$a5,0x40
    beqz       $a4, .L000019c4
    sd         $a5,208($sp)
    addu       $s4,$v0,$a2
.L000014d4:
    srl        $v0,$a3,0x10
    andi       $a5,$v0,0x8000
    beqz       $a5, .L000019cc
    lui        $s7,0xffff
    addu       $s7,$v0,$s7
.L000014e8:
    lw         $a3,48($s0)
    lw         $a7,40($s2)
    lw         $a6,52($s0)
    srl        $t9,$a0,0x10
    lui        $a5,0xf
    ld         $t8,-30696($gp)
    andi       $t9,$t9,0x7
    lw         $a4,40($s0)
    ori        $a5,$a5,0xffff
    dsll       $t9,$t9,0x2
    and        $a5,$a5,$a6
    daddu      $t8,$t8,$t9
    srl        $a2,$a4,0x10
    addu       $a3,$a3,$a5
    lw         $t8,0($t8)
    addu       $a2,$s7,$a2
    blez       $a7, .L000019d4
    sd         $t8,216($sp)
    daddiu     $t9,$sp,64
    move       $v0,$zero
    addiu      $a0,$a7,-1
    andi       $t2,$a4,0xffff
    b          .L000015d0
    addu       $t2,$s4,$t2
.L00001548:
    lw         $t3,7352($t3)
    beqz       $t3, .L00001590
    ld         $a6,-30720($gp)
    lui        $t8,0x1
    ld         $t9,416($sp)
    move       $at,$t8
    ori        $at,$t8,0x443
    sw         $at,0($t9)
    sync
    li         $ra,250
    sw         $ra,0($t9)
    sync
    ori        $t8,$t8,0x46
    sw         $t8,0($t9)
    sync
    sw         $t8,0($t9)
    sync
    ld         $a6,-30720($gp)
.L00001590:
    ld         $t3,256($sp)
    ld         $a0,416($sp)
    li         $a7,1
    sw         $a7,7352($t3)
    sd         $a6,0($a0)
    sync
    lw         $v1,112($s2)
    addu       $t2,$t2,$a3
    sw         $v1,0($a0)
    sync
    move       $a5,$a7
    b          .L00000fa8
    sd         $a5,264($sp)
.L000015c4:
    b          .L00001428
    sd         $t8,400($sp)
.L000015cc:
    bltz       $a0, .L00001654
.L000015d0:
    dsll       $a4,$a0,0x2
    daddu      $a4,$s2,$a4
    lw         $t1,44($a4)
    lw         $t0,76($a4)
    dsll       $t8,$v0,0x2
    slt        $a5,$t1,$s4
    lw         $a7,92($a4)
    movn       $t1,$s4,$a5
    slt        $a5,$t0,$t2
    addiu      $a0,$a0,-1
    movz       $t0,$t2,$a5
    lw         $a4,60($a4)
    slt        $v1,$a7,$a2
    slt        $at,$t1,$t0
    daddu      $t3,$t8,$t9
    movz       $a7,$a2,$v1
    slt        $ra,$a4,$s7
    beqz       $at, .L000015cc
    movn       $a4,$s7,$ra
    slt        $a5,$a4,$a7
    daddiu     $ra,$sp,96
    beqz       $a5, .L000015cc
    daddiu     $at,$sp,80
    daddiu     $a6,$sp,48
    sw         $t1,0($t3)
    daddu      $ra,$t8,$ra
    daddu      $at,$t8,$at
    sw         $t0,0($ra)
    daddu      $a6,$t8,$a6
    sw         $a7,0($at)
    addiu      $v0,$v0,1
    b          .L000015cc
    sw         $a4,0($a6)
.L00001654:
    beqz       $v0, .L000019d8
    move       $a0,$s5
    blez       $v0, .L00001828
    addiu      $s3,$v0,-1
    daddiu     $s1,$s0,72
    b          .L00001b4c
    sd         $a2,192($sp)
.L00001670:
    mult       $a3,$a1
    mflo       $v0
    sd         $a3,424($sp)
    addu       $v0,$a0,$v0
.L00001680:
    srl        $t3,$t3,0x10
    multu      $t8,$t3
    addiu      $t3,$t3,-1
    mflo       $a4
    multu      $t2,$t3
    move       $a7,$s1
    daddiu     $a6,$sp,112
    daddiu     $a5,$sp,32
    daddu      $a3,$s5,$v0
    move       $a2,$zero
    move       $a1,$s8
    sw         $s3,28($sp)
    move       $a0,$s2
    li         $t1,2
    sd         $s5,8($sp)
    movn       $t1,$zero,$s3
    move       $t2,$s6
    sw         $t1,4($sp)
    movn       $t2,$zero,$s3
    mflo       $t0
    sd         $t2,16($sp)
    jal        odsyDMAOp
    addu       $a4,$a4,$t0
    ld         $a3,424($sp)
    daddiu     $t9,$sp,64
    move       $a1,$v0
    bnez       $v0, .L00001a7c
    sd         $v0,200($sp)
    addiu      $s3,$s3,-1
    li         $a0,8
    ld         $t8,72($s0)
    move       $v0,$zero
    bltz       $s3, .L00001828
    sd         $t8,40($sp)
    dsll       $a4,$s3,0x2
.L00001714:
    daddu      $a7,$a4,$t9
    daddiu     $a2,$sp,112
    daddiu     $a1,$s0,28
    lw         $a7,0($a7)
.L00001724:
    addiu      $a0,$a0,-1
    daddu      $ra,$v0,$a1
    daddu      $at,$v0,$a2
    lw         $ra,0($ra)
    addiu      $v0,$v0,4
    bgtz       $a0, .L00001724
    sw         $ra,0($at)
    daddiu     $t8,$sp,96
    lw         $t3,124($sp)
    daddiu     $a2,$sp,48
    daddu      $t8,$a4,$t8
    daddiu     $a5,$sp,80
    daddu      $a2,$a4,$a2
    lw         $t8,0($t8)
    daddu      $a5,$a4,$a5
    lw         $a2,0($a2)
    lui        $a6,0xffff
    lw         $a5,0($a5)
    subu       $t8,$t8,$a7
    and        $t3,$a6,$t3
    andi       $t8,$t8,0xffff
    or         $t3,$t3,$t8
    subu       $t8,$a5,$a2
    sll        $t8,$t8,0x10
    andi       $t3,$t3,0xffff
    ld         $a1,216($sp)
    or         $t3,$t3,$t8
    andi       $t1,$t3,0xffff
    multu      $a1,$t1
    lw         $t0,116($sp)
    andi       $a0,$a7,0xffff
    and        $a6,$a6,$t0
    or         $a0,$a0,$a6
    lui        $v1,0xfff0
    andi       $a0,$a0,0xffff
    lw         $a6,136($sp)
    subu       $a7,$a7,$s4
    lui        $t8,0xf
    mflo       $v0
    mult       $a1,$a7
    ld         $at,208($sp)
    and        $v1,$v1,$a6
    ori        $t8,$t8,0xffff
    sw         $t3,124($sp)
    sll        $a1,$a2,0x10
    and        $v0,$t8,$v0
    or         $a0,$a0,$a1
    ld         $a1,192($sp)
    or         $v0,$v0,$v1
    sw         $a0,116($sp)
    and        $t8,$t8,$v0
    sw         $v0,136($sp)
    subu       $a1,$a1,$a5
    subu       $t2,$a3,$t8
    mflo       $a0
    bnez       $at, .L00001670
    sw         $t2,132($sp)
    subu       $v1,$a2,$s7
    mult       $a3,$v1
    mflo       $v0
    sd         $a3,424($sp)
    b          .L00001680
    addu       $v0,$a0,$v0
.L00001828:
    b          .L00000bb0
    move       $a0,$a1
.L00001830:
    move       $a0,$s5
.L00001834:
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000bb0
    move       $a0,$zero
.L00001848:
    b          .L00000ce4
    lw         $t2,32($s0)
.L00001850:
    ld         $a3,224($s2)
    ld         $a3,128($a3)
    lw         $a0,108($a3)
    b          .L00000ce0
    lw         $a3,104($a3)
.L00001864:
    b          .L00000d28
    move       $s4,$zero
.L0000186c:
    b          .L00000e90
    move       $a4,$zero
.L00001874:
    b          .L00000ef0
    move       $a2,$zero
.L0000187c:
    lui        $a5,0xcf80
    ld         $t9,408($sp)
    ori        $a5,$a5,0xa92f
    sw         $a5,0($t1)
    sync
    lw         $a4,0($t9)
    sw         $a4,0($t1)
    sync
    lw         $a3,4($t9)
    sw         $a3,0($t1)
    sync
    lw         $a2,8($t9)
    sw         $a2,0($t1)
    sync
    lw         $a1,12($t9)
    sw         $a1,0($t1)
    sync
    lw         $a0,16($t9)
    sw         $a0,0($t1)
    sync
    lw         $v1,20($t9)
    sw         $v1,0($t1)
    sync
    lw         $v0,24($t9)
    sw         $v0,0($t1)
    sync
    lw         $at,28($t9)
    sw         $at,0($t1)
    sync
    lw         $ra,32($t9)
    sw         $ra,0($t1)
    daddiu     $a7,$s0,72
    sync
    lw         $t9,36($t9)
    li         $t3,10
    lui        $t8,0x1
    sw         $t9,0($t1)
    ori        $t8,$t8,0x4400
    sync
    sw         $t8,0($t1)
    lui        $t2,0x8080
    sync
    sw         $t3,0($t1)
    ori        $t2,$t2,0xc800
    sync
    sw         $t2,0($t1)
    daddiu     $a6,$s0,28
    sync
    sw         $zero,0($t1)
    li         $t0,2
    sync
    sw         $zero,0($t1)
    daddiu     $a5,$sp,32
    sync
    sw         $zero,28($sp)
    move       $a4,$s6
    move       $a3,$s5
    sd         $s6,16($sp)
    move       $a2,$zero
    move       $a1,$s8
    sd         $s5,8($sp)
    move       $a0,$s2
    jal        odsyDMAOp
    sw         $t0,4($sp)
    b          .L00001418
    move       $a1,$v0
.L00001984:
    move       $a0,$s2
    move       $a1,$s8
    move       $a2,$zero
    move       $a3,$s5
    sw         $zero,28($sp)
    move       $a4,$s6
    sd         $s6,16($sp)
    daddiu     $a7,$s0,72
    sd         $s5,8($sp)
    daddiu     $a6,$s0,28
    li         $t0,2
    sw         $t0,4($sp)
    jal        odsyDMAOp
    daddiu     $a5,$sp,32
    b          .L00000bb0
    move       $a0,$v0
.L000019c4:
    b          .L000014d4
    move       $s4,$v0
.L000019cc:
    b          .L000014e8
    move       $s7,$v0
.L000019d4:
    move       $a0,$s5
.L000019d8:
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000bb0
    move       $a0,$zero
.L000019ec:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$a3
    jal        cmn_err
    daddiu     $a1,$a1,512
    ld         $a5,416($sp)
    lui        $t0,0x1
    lui        $a7,0x1
    ori        $a7,$a7,0xa5a
    ori        $t0,$t0,0x444
    sw         $t0,0($a5)
    li         $a6,0xb44c
    sync
    sw         $zero,0($a5)
    daddu      $a6,$a6,$s8
    sync
    sw         $a7,0($a5)
    daddiu     $a3,$sp,144
    sync
    lw         $a6,0($a6)
    li         $a2,1
    move       $a1,$s2
    ori        $a6,$a6,0x8000
    sw         $a6,0($a5)
    sync
    li         $a4,3338
    sw         $a4,0($a5)
    sync
    jal        odsyDMAWait
    move       $a0,$s8
    move       $a0,$s5
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000bb0
    ld         $a0,304($sp)
.L00001a7c:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$s3
    jal        cmn_err
    daddiu     $a1,$a1,512
    ld         $a5,416($sp)
    lui        $t0,0x1
    lui        $a7,0x1
    ori        $a7,$a7,0xa5a
    ori        $t0,$t0,0x444
    sw         $t0,0($a5)
    li         $a6,0xb44c
    sync
    sw         $zero,0($a5)
    daddu      $a6,$a6,$s8
    sync
    sw         $a7,0($a5)
    daddiu     $a3,$sp,40
    sync
    lw         $a6,0($a6)
    li         $a2,1
    move       $a1,$s2
    ori        $a6,$a6,0x8000
    sw         $a6,0($a5)
    sync
    li         $a4,3338
    sw         $a4,0($a5)
    sync
    jal        odsyDMAWait
    move       $a0,$s8
    move       $a0,$s5
    move       $a1,$s6
    jal        unuseracc
    li         $a2,272
    b          .L00000bb0
    ld         $a0,200($sp)
.L00001b0c:
    sll        $a1,$a1,0x1
    ori        $a1,$a1,0x1
    b          .L00000e84
    addiu      $a4,$a4,1
.L00001b1c:
    sll        $a0,$a0,0x1
    ori        $a0,$a0,0x1
    b          .L00000ee4
    addiu      $a2,$a2,1
.L00001b2c:
    sll        $v0,$v0,0x1
    ori        $v0,$v0,0x1
    b          .L00001038
    addiu      $t0,$t0,1
.L00001b3c:
    sll        $v0,$v0,0x1
    ori        $v0,$v0,0x1
    b          .L00001340
    addiu      $t1,$t1,1
.L00001b4c:
    li         $a0,8
    move       $v0,$zero
    b          .L00001714
    dsll       $a4,$s3,0x2

glabel odsyDMAOp
    daddiu     $sp,$sp,-272
    sd         $a2,88($sp)
    sd         $a3,120($sp)
    sd         $a4,128($sp)
    sd         $a5,112($sp)
    sd         $a7,104($sp)
    sd         $s7,176($sp)
    ld         $s7,824($a1)
    sw         $zero,0($a5)
    sd         $s0,192($sp)
    sd         $s4,152($sp)
    move       $s4,$a6
    sd         $s1,136($sp)
    move       $s1,$a1
    sd         $s2,160($sp)
    daddiu     $s2,$a1,5800
    li         $a1,-1
    sd         $s3,144($sp)
    move       $s3,$a0
    sd         $ra,168($sp)
    jal        ddi_mutex_lock
    move       $a0,$s2
    lw         $t8,28440($s1)
    li         $a1,80
    dsll       $s0,$t8,0x2
    addiu      $v0,$t8,1
    daddu      $s0,$s0,$t8
    sra        $v1,$v0,0x1f
    dsll       $s0,$s0,0x4
    xor        $v0,$v0,$v1
    daddu      $s0,$s1,$s0
    subu       $v0,$v0,$v1
    daddiu     $s0,$s0,7960
    andi       $v0,$v0,0xff
    move       $a0,$s0
    xor        $v0,$v0,$v1
    subu       $v0,$v0,$v1
    jal        bzero
    sw         $v0,28440($s1)
    move       $a0,$s2
    jal        mutex_unlock
    sd         $s6,184($sp)
    lw         $s6,276($sp)
    andi       $s6,$s6,0x2
    beqz       $s6, .L00001c28
    li         $a3,-1
    ld         $a2,-30720($gp)
    move       $a1,$zero
    daddiu     $a0,$s0,32
    jal        init_sv
    daddiu     $a2,$a2,680
.L00001c28:
    li         $a0,1
    sw         $a0,8($s0)
    sw         $zero,24($s0)
    sd         $zero,16($s0)
    sd         $s3,40($s0)
    li         $v0,-1
    beqz       $s3, .L00001c7c
    sd         $s5,200($sp)
    ld         $s5,288($sp)
    beqz       $s5, .L00001de0
    nop
    daddiu     $a0,$s3,416
    jal        OdsyAllocCSetId
    move       $a1,$s0
    li         $a3,-1
    beq        $v0, $a3, .L00002334
    sw         $v0,48($s0)
    sd         $s5,64($s0)
    ld         $a4,280($sp)
    b          .L00001c80
    sd         $a4,56($s0)
.L00001c7c:
    sw         $v0,48($s0)
.L00001c80:
    daddiu     $a2,$sp,48
    move       $a1,$s4
    ld         $a3,120($sp)
    daddiu     $a0,$sp,0
    jal        ConstructTftchWarList
    ld         $a4,128($sp)
    beqz       $v0, .L00001df0
    li         $a1,0x8801
    lw         $s5,52($sp)
.L00001ca4:
    beqz       $s0, .L00001d98
    ld         $a5,288($sp)
    beqz       $a5, .L00001cd8
    li         $s1,-1
    ld         $a1,64($s0)
    li         $a2,272
    jal        unuseracc
    ld         $a0,56($s0)
    lw         $a1,48($s0)
    beq        $a1, $s1, .L00001cd8
    nop
    jal        OdsyDeallocCSetId
    daddiu     $a0,$s3,416
.L00001cd8:
    ld         $a0,16($s0)
    beqz       $a0, .L00001d44
    move       $a2,$zero
    lw         $a1,24($s0)
    blez       $a1, .L00001d38
    move       $a2,$zero
    li         $a0,139
.L00001cf4:
    ld         $a7,16($s0)
    daddu      $a7,$a2,$a7
    sb         $a0,0($a7)
    lw         $a1,24($s0)
    addiu      $a2,$a2,1
    slt        $a6,$a2,$a1
    beqz       $a6, .L00001d34
    nop
    ld         $t1,16($s0)
    daddu      $t1,$a2,$t1
    sb         $a0,0($t1)
    lw         $a1,24($s0)
    addiu      $a2,$a2,1
    slt        $t0,$a2,$a1
    bnez       $t0, .L00001cf4
    nop
.L00001d34:
    ld         $a0,16($s0)
.L00001d38:
    jal        kmem_free
    nop
    move       $a2,$zero
.L00001d44:
    li         $a1,141
.L00001d48:
    daddu      $t3,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $t2,$a2,88
    sb         $a1,0($t3)
    beqz       $t2, .L00001d90
    move       $a0,$s0
    daddu      $t9,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $t8,$a2,88
    sb         $a1,0($t9)
    beqz       $t8, .L00001d90
    move       $a0,$s0
    daddu      $ra,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $at,$a2,88
    bnez       $at, .L00001d48
    sb         $a1,0($ra)
    move       $a0,$s0
.L00001d90:
    jal        kmem_free
    li         $a1,88
.L00001d98:
    jal        mutex_mine
    move       $a0,$s2
    beqz       $v0, .L00001db4
    move       $v0,$s5
    jal        mutex_unlock
    move       $a0,$s2
    move       $v0,$s5
.L00001db4:
    ld         $s1,136($sp)
    ld         $s6,184($sp)
    ld         $s0,192($sp)
    ld         $s3,144($sp)
    ld         $s4,152($sp)
    ld         $ra,168($sp)
    ld         $s2,160($sp)
    ld         $s5,200($sp)
    ld         $s7,176($sp)
    jr         $ra
    daddiu     $sp,$sp,272
.L00001de0:
    sd         $zero,64($s0)
    sd         $a0,56($s0)
    b          .L00001c80
    sw         $v0,48($s0)
.L00001df0:
    jal        kmem_alloc
    lw         $a0,48($sp)
    beqz       $v0, .L0000234c
    sd         $v0,16($s0)
    sd         $zero,80($sp)
    sd         $sp,96($sp)
    lw         $v0,48($sp)
    sw         $v0,24($s0)
.L00001e10:
    ld         $t8,80($sp)
    ld         $s5,16($s0)
    li         $a2,32
    dsll       $t8,$t8,0x7
    move       $a0,$s4
    daddu      $s5,$s5,$t8
    jal        bcopy
    move       $a1,$s5
    ld         $a2,96($sp)
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
    ld         $a4,88($sp)
    ld         $a0,80($sp)
    move       $s5,$v0
    ld         $t0,96($sp)
    bnez       $v0, .L00001ca4
    addiu      $a0,$a0,1
    ld         $t0,8($t0)
    sd         $a0,80($sp)
    bnez       $t0, .L00001e10
    sd         $t0,96($sp)
    move       $a0,$s2
    jal        ddi_mutex_lock
    li         $a1,-1
    ld         $a1,6888($s1)
    ld         $a0,6880($s1)
    sltu       $a2,$a1,$a0
    bnez       $a2, .L00001f3c
    dsubu      $a0,$a1,$a0
    b          .L00001f48
    move       $v0,$a0
.L00001f3c:
    li         $v0,1
    dsll32     $v0,$v0,0x1d
    daddu      $v0,$a0,$v0
.L00001f48:
    lw         $t8,300($sp)
    li         $s5,128
    daddiu     $v1,$v0,2
    subu       $s5,$s5,$t8
    sltu       $v1,$v1,$s5
    beqz       $v1, .L00002288
    nop
.L00001f64:
    ld         $a2,888($s1)
    ld         $a0,104($sp)
    sd         $a1,0($a2)
    sd         $a1,72($s0)
    sd         $a1,0($a0)
    ld         $v1,6888($s1)
    li         $a2,-1
    lw         $a0,5844($s1)
    dsrl       $a2,$a2,0x3
    daddiu     $v1,$v1,1
    dsll       $v0,$a0,0x3
    and        $v1,$v1,$a2
    sd         $v1,6888($s1)
    daddu      $v0,$s1,$v0
    sd         $s0,5856($v0)
    lw         $at,5844($s1)
    addiu      $at,$at,1
    sra        $v1,$at,0x1f
    xor        $at,$at,$v1
    li         $ra,2048
    subu       $at,$at,$v1
    andi       $a0,$a0,0xff
    lw         $t9,276($sp)
    andi       $at,$at,0x7f
    ori        $a0,$a0,0x5a00
    xor        $at,$at,$v1
    andi       $t9,$t9,0x1
    subu       $at,$at,$v1
    sw         $at,5844($s1)
    lui        $v0,0x11
    sw         $ra,4124($s7)
    sync
    beqz       $t9, .L00002300
    andi       $a0,$a0,0xffff
    lw         $a3,28($s4)
    srl        $a3,$a3,0x18
    andi       $a3,$a3,0x8
    beqz       $a3, .L00002308
    daddu      $s5,$v0,$s7
.L00002000:
    sd         $sp,64($sp)
.L00002004:
    move       $s7,$zero
    b          .L00002080
    sd         $a0,56($sp)
.L00002010:
    ld         $a2,0($t2)
    beqz       $a2, .L0000202c
    nop
.L0000201c:
    move       $t2,$a2
    ld         $a2,0($a2)
    bnez       $a2, .L0000201c
    nop
.L0000202c:
    sd         $s0,0($t2)
.L00002030:
    ld         $a5,112($sp)
.L00002034:
    or         $t2,$a6,$a4
    dsll       $t0,$a3,0x6
    lw         $a5,0($a5)
    li         $a3,3587
    and        $a2,$a1,$t3
    dsll32     $a3,$a3,0x0
    or         $a2,$a2,$t0
    beqz       $a5, .L00002138
    and        $a2,$t9,$a2
    or         $a3,$a3,$a2
.L0000205c:
    sd         $a3,0($s5)
    dsll32     $a5,$t2,0x0
    sync
    and        $a5,$t8,$a5
    sd         $a5,0($s5)
    sync
    ld         $a0,8($a0)
    beqz       $a0, .L00002148
    sd         $a0,64($sp)
.L00002080:
    ld         $a0,16($s0)
    dsll       $a1,$s7,0x7
    daddu      $a0,$a0,$a1
    jal        kvtophys
    sd         $a0,72($sp)
    addiu      $s7,$s7,1
    dsrl       $t3,$v0,0x18
    li         $t9,-1
    li         $t8,-1
    dsll32     $t8,$t8,0x0
    lui        $ra,0xfe
    lw         $a2,28($s4)
    dsrl32     $t9,$t9,0x0
    and        $a3,$ra,$t3
    lui        $a1,0x1
    sll        $a2,$a2,0x7
    and        $a7,$ra,$v0
    ori        $a1,$a1,0xffff
    ld         $a0,64($sp)
    and        $a6,$a1,$v0
    bgez       $a2, .L00002030
    dsll       $a4,$a7,0x6
    beqz       $s6, .L00002034
    ld         $a5,112($sp)
    ld         $at,8($a0)
    bnez       $at, .L00002034
    ld         $a5,112($sp)
    ld         $a5,72($sp)
    lw         $t1,28($a5)
    lui        $a2,0xff
    srl        $t0,$t1,0x18
    ori        $a2,$a2,0xffff
    ori        $t0,$t0,0x80
    and        $a2,$a2,$t1
    sll        $t0,$t0,0x18
    or         $a2,$a2,$t0
    sw         $a2,28($a5)
    lw         $v1,8($s0)
    sd         $zero,0($s0)
    ori        $v1,$v1,0x2
    sw         $v1,8($s0)
    ld         $t2,28448($s1)
    bnez       $t2, .L00002010
    nop
    b          .L00002030
    sd         $s0,28448($s1)
.L00002138:
    li         $a3,3585
    dsll32     $a3,$a3,0x0
    b          .L0000205c
    or         $a3,$a3,$a2
.L00002148:
    jal        ReleaseTftchWarList
    daddiu     $a0,$sp,0
    lw         $a4,28($s4)
    srl        $a4,$a4,0x18
    andi       $a4,$a4,0x8
    beqz       $a4, .L000022d4
    lui        $a5,0x1
    move       $a7,$a5
    move       $t0,$a5
    ori        $t0,$a5,0x4001
    sw         $t0,0($s5)
    sync
    ori        $a7,$a5,0x443
    sw         $a7,0($s5)
    sync
    li         $a6,250
    sw         $a6,0($s5)
    sync
    ori        $a5,$a5,0x46
    sw         $a5,0($s5)
    sync
    lui        $t1,0x1
    sw         $a5,0($s5)
    sync
    ori        $t1,$t1,0x19
    sw         $t1,0($s5)
    sync
    sw         $a7,0($s5)
    sync
    li         $t0,150
    sw         $t0,0($s5)
    sync
    sw         $a5,0($s5)
    sync
    sw         $a5,0($s5)
    sync
    sw         $a5,0($s5)
    sync
    sw         $a5,0($s5)
    sync
    sw         $a7,0($s5)
    sync
    sw         $a6,0($s5)
    sync
    sw         $a5,0($s5)
    sync
    sw         $a5,0($s5)
    sync
    beqz       $s6, .L000022dc
    ld         $t1,56($sp)
.L00002210:
    lui        $t3,0x1
    sh         $t1,5832($s1)
    ori        $t3,$t3,0xa5a
    sw         $t3,0($s5)
    sync
    lw         $t2,5840($s1)
    ori        $t2,$t2,0x8000
    sw         $t2,0($s5)
    sync
    sw         $t1,0($s5)
    sync
.L0000223c:
    beqz       $s3, .L00002268
    lui        $a0,0xaff0
    beqz       $s6, .L00002268
    lui        $a0,0xaff0
    ld         $v1,112($sp)
    lw         $v1,0($v1)
    ld         $v0,104($sp)
    beqz       $v1, .L0000232c
    ld         $v0,0($v0)
    sd         $v0,256($s3)
.L00002264:
    lui        $a0,0xaff0
.L00002268:
    move       $s5,$zero
    b          .L00001d98
    ld         $a0,128($a0)
.L00002274:
    move       $v0,$a0
.L00002278:
    daddiu     $a2,$v0,2
    sltu       $a2,$a2,$s5
    bnez       $a2, .L00001f64
    nop
.L00002288:
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
    beqz       $a2, .L00002274
    dsubu      $a0,$a1,$a0
    li         $v0,1
    dsll32     $v0,$v0,0x1d
    b          .L00002278
    daddu      $v0,$v0,$a0
.L000022d4:
    bnez       $s6, .L00002210
    ld         $t1,56($sp)
.L000022dc:
    lui        $a0,0x1
    ori        $a0,$a0,0x658
    sw         $a0,0($s5)
    sync
    lui        $v1,0x12
    sw         $v1,0($s5)
    sync
    b          .L0000223c
    nop
.L00002300:
    b          .L00002000
    daddu      $s5,$v0,$s7
.L00002308:
    lui        $a2,0x1
    ori        $a2,$a2,0x658
    sw         $a2,0($s5)
    sync
    lui        $a1,0x12
    sw         $a1,0($s5)
    sync
    b          .L00002004
    sd         $sp,64($sp)
.L0000232c:
    b          .L00002264
    sd         $v0,248($s3)
.L00002334:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,568
    b          .L00001db4
    li         $v0,12
.L0000234c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,632
    b          .L00001ca4
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
    bnez       $a5, .L000023b4
    dsubu      $a3,$a3,$a4
    beqz       $a3, .L000023c0
    nop
    b          .L000023dc
    nop
.L000023b4:
    daddu      $a1,$a3,$a0
    bnez       $a1, .L000023dc
    nop
.L000023c0:
    jal        mutex_unlock
    move       $a0,$s1
    ld         $ra,16($sp)
.L000023cc:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000023dc:
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
    bnez       $a5, .L00002448
    dsubu      $a3,$a3,$a4
    b          .L00002454
    move       $a2,$a3
.L00002448:
    li         $a2,1
    dsll32     $a2,$a2,0x1d
    daddu      $a2,$a3,$a2
.L00002454:
    daddiu     $a1,$s1,800
    jal        cmn_err
    li         $a0,5
    jal        odsy_teardown
    move       $a0,$s0
    b          .L000023cc
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
    beqz       $at, .L000024f8
    sd         $s1,112($sp)
    li         $v0,9
.L000024e0:
    ld         $ra,104($sp)
    ld         $s0,88($sp)
    ld         $s1,112($sp)
    ld         $s2,96($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000024f8:
    li         $a1,-1
    daddiu     $s1,$a0,5800
    jal        ddi_mutex_lock
    move       $a0,$s1
    ld         $v0,40($sp)
    beqz       $v0, .L0000274c
    li         $a2,1500
    ld         $a3,0($s2)
    li         $a2,-1
    beq        $a2, $a3, .L000027dc
    nop
    ld         $v0,6880($s0)
    ld         $a0,6888($s0)
    sltu       $v1,$a0,$v0
    bnez       $v1, .L000025a8
    sltu       $a1,$a0,$a3
    sltu       $a1,$a3,$v0
    bnez       $a1, .L00002550
    sd         $v0,32($sp)
    sltu       $a2,$a0,$a3
    beqz       $a2, .L00002564
    ld         $a4,72($sp)
.L00002550:
    jal        mutex_unlock
    move       $a0,$s1
    li         $a3,1
    sd         $a3,72($sp)
    ld         $a4,72($sp)
.L00002564:
    beqz       $a4, .L000025c4
    ld         $v0,32($sp)
.L0000256c:
    ld         $a5,80($sp)
.L00002570:
    beqz       $a5, .L000025e4
    move       $a0,$s1
    jal        ddi_mutex_lock
    li         $a1,-1
    ld         $a0,80($sp)
    daddiu     $a0,$a0,416
    jal        OdsyInitCSetCursor
    sd         $a0,48($sp)
    jal        OdsyNextCSetElem
    ld         $a0,48($sp)
    beqz       $v0, .L000025dc
    move       $s0,$v0
    b          .L00002618
    lw         $a1,8($s0)
.L000025a8:
    beqz       $a1, .L000025b8
    sd         $v0,32($sp)
    sltu       $a2,$a3,$v0
    bnez       $a2, .L00002738
.L000025b8:
    ld         $a3,64($sp)
    bnez       $a3, .L0000256c
    ld         $v0,32($sp)
.L000025c4:
    ld         $a3,0($s2)
    sltu       $v1,$a3,$v0
    bnez       $v1, .L0000264c
    dsubu      $v0,$a3,$v0
    b          .L00002658
    move       $a2,$v0
.L000025dc:
    jal        mutex_unlock
    move       $a0,$s1
.L000025e4:
    li         $a0,-1
    sd         $a0,0($s2)
    b          .L000024e0
    move       $v0,$zero
.L000025f4:
    jal        OdsyDeallocCSetId
    ld         $a0,48($sp)
.L000025fc:
    jal        sv_destroy
    daddiu     $a0,$s0,32
.L00002604:
    jal        OdsyNextCSetElem
    ld         $a0,48($sp)
    beqz       $v0, .L000025dc
    move       $s0,$v0
    lw         $a1,8($s0)
.L00002618:
    bnez       $a1, .L00002604
    nop
    ld         $a1,64($s0)
    beqz       $a1, .L000025fc
    li         $a2,272
    jal        unuseracc
    ld         $a0,56($s0)
    lw         $a1,48($s0)
    li         $a2,-1
    bne        $a1, $a2, .L000025f4
    nop
    b          .L000025fc
    nop
.L0000264c:
    li         $a2,1
    dsll32     $a2,$a2,0x1d
    daddu      $a2,$v0,$a2
.L00002658:
    sltiu      $a4,$a2,128
    beqz       $a4, .L000027f4
    ld         $a1,-30720($gp)
    lw         $v0,5848($s0)
    dsll       $a7,$v0,0x3
    daddu      $a7,$s0,$a7
    ld         $a7,5856($a7)
    ld         $a6,6880($s0)
    ld         $a7,72($a7)
    bne        $a6, $a7, .L00002810
    li         $a0,4
    daddu      $a6,$v0,$a2
    andi       $a6,$a6,0x7f
    dsll       $a6,$a6,0x3
    daddu      $a6,$s0,$a6
    ld         $a6,5856($a6)
    sd         $a6,24($sp)
    ld         $a6,72($a6)
    bne        $a3, $a6, .L00002834
    ld         $a1,-30720($gp)
    li         $a2,1500
    ld         $a0,-30680($gp)
    lui        $t0,0x1
    move       $a1,$s0
    daddu      $t0,$s0,$t0
    sd         $t0,56($sp)
    li         $a7,1
    jal        timeout
    sw         $a7,-19328($t0)
    ld         $t1,24($sp)
    lw         $t1,8($t1)
    beqz       $t1, .L000027bc
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
    beqz       $a2, .L00002728
    sw         $zero,-19328($a1)
    lw         $a3,816($s0)
    beqz       $a3, .L00002570
    ld         $a5,80($sp)
.L00002728:
    li         $v0,22
    li         $a4,-1
    b          .L000024e0
    sd         $a4,0($s2)
.L00002738:
    jal        mutex_unlock
    move       $a0,$s1
    li         $a5,1
    b          .L000025b8
    sd         $a5,64($sp)
.L0000274c:
    ld         $a0,-30688($gp)
    lui        $a7,0x1
    move       $a1,$s0
    daddu      $a7,$s0,$a7
    sd         $a7,56($sp)
    li         $a6,3
    jal        timeout
    sw         $a6,-19328($a7)
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
    beqz       $s1, .L000027b4
    sw         $zero,-19328($t0)
    lw         $t1,816($s0)
    beqz       $t1, .L000027ec
    nop
.L000027b4:
    b          .L000024e0
    li         $v0,22
.L000027bc:
    jal        untimeout_wait
    move       $a0,$v0
    ld         $t2,56($sp)
    move       $a0,$s1
    jal        mutex_unlock
    sw         $zero,-19328($t2)
    b          .L00002570
    ld         $a5,80($sp)
.L000027dc:
    jal        mutex_unlock
    move       $a0,$s1
    b          .L000024e0
    move       $v0,$zero
.L000027ec:
    b          .L000024e0
    move       $v0,$zero
.L000027f4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,864
    jal        mutex_unlock
    move       $a0,$s1
    b          .L000024e0
    li         $v0,22
.L00002810:
    ld         $a1,-30720($gp)
    move       $a2,$a6
    move       $a3,$a7
    jal        cmn_err
    daddiu     $a1,$a1,912
    jal        mutex_unlock
    move       $a0,$s1
    b          .L000024e0
    li         $v0,22
.L00002834:
    li         $a0,4
    move       $a2,$a6
    jal        cmn_err
    daddiu     $a1,$a1,968
    jal        mutex_unlock
    move       $a0,$s1
    b          .L000024e0
    li         $v0,22

glabel odsyDMADone
    ld         $a3,16($a0)
    daddiu     $sp,$sp,-32
    li         $a4,145
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $a3, .L0000291c
    sd         $ra,16($sp)
    lw         $a1,24($a0)
    blez       $a1, .L000028c4
    nop
    move       $a3,$zero
.L00002880:
    ld         $v0,16($s0)
    daddu      $v0,$a3,$v0
    sb         $a4,0($v0)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $at,$a3,$a1
    beqz       $at, .L000028c0
    nop
    ld         $a0,16($s0)
    daddu      $a0,$a3,$a0
    sb         $a4,0($a0)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $v1,$a3,$a1
    bnez       $v1, .L00002880
    nop
.L000028c0:
    ld         $a3,16($s0)
.L000028c4:
    jal        kmem_free
    move       $a0,$a3
    ld         $a1,40($s0)
.L000028d0:
    sw         $zero,24($s0)
    beqz       $a1, .L00002900
    sd         $zero,16($s0)
    ld         $a2,64($s0)
    beqz       $a2, .L000028f4
    ld         $ra,16($sp)
    jal        sv_broadcast
    daddiu     $a0,$s0,32
    ld         $ra,16($sp)
.L000028f4:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002900:
    daddiu     $a0,$s0,32
    jal        sv_broadcast
    sd         $a0,0($sp)
    jal        sv_destroy
    ld         $a0,0($sp)
    b          .L000028f4
    ld         $ra,16($sp)
.L0000291c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1024
    b          .L000028d0
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
    bne        $zero, $at, .L00002b28
    xori       $a0,$at,0x1
    beqz       $a2, .L00002b3c
    nop
    ld         $a3,5824($s0)
.L000029ac:
    lhu        $a3,0($a3)
    andi       $a4,$a3,0xff00
    beq        $a4, $a6, .L00002b5c
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
.L000029e4:
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
    beqz       $a0, .L00002b4c
    subu       $s4,$s4,$t8
.L00002a38:
    sltu       $t8,$a3,$s4
    bnez       $t8, .L00002be0
    ld         $a1,-30720($gp)
    blez       $s4, .L00002af4
    nop
    b          .L00002a78
    ld         $at,6880($s0)
.L00002a54:
    jal        odsyDMADone
    move       $a0,$s1
    jal        sv_broadcast
    move       $a0,$s7
.L00002a64:
    addiu      $s2,$s2,1
    slt        $t9,$s2,$s4
    beqz       $t9, .L00002af4
    nop
.L00002a74:
    ld         $at,6880($s0)
.L00002a78:
    lw         $ra,5848($s0)
    daddiu     $at,$at,1
    dsll       $ra,$ra,0x3
    and        $at,$s3,$at
    sd         $at,6880($s0)
    daddu      $ra,$s0,$ra
    ld         $s1,5856($ra)
    beqz       $s1, .L00002b64
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
    beqz       $at, .L00002a54
    nop
    addiu      $s2,$s2,1
    slt        $a2,$s2,$s4
    bnez       $a2, .L00002a74
    nop
.L00002af4:
    jal        mutex_unlock
    move       $a0,$s6
    ld         $s6,8($sp)
.L00002b00:
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
.L00002b28:
    li         $a3,1
    dsll32     $a3,$a3,0x1d
    daddu      $a3,$a2,$a3
    bnezl      $a3, .L000029ac
    ld         $a3,5824($s0)
.L00002b3c:
    jal        mutex_unlock
    move       $a0,$s6
    b          .L00002b00
    ld         $s6,8($sp)
.L00002b4c:
    li         $a3,1
    dsll32     $a3,$a3,0x1d
    b          .L00002a38
    daddu      $a3,$a2,$a3
.L00002b5c:
    b          .L000029e4
    sh         $a3,5834($s0)
.L00002b64:
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
    bnez       $a2, .L00002a64
    nop
    b          .L00002a54
    nop
.L00002be0:
    lh         $a2,790($s0)
    li         $a0,4
    move       $a3,$s4
    ld         $a4,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1056
    jal        mutex_unlock
    move       $a0,$s6
    b          .L00002b00
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
    beqz       $a0, .L00002c58
    li         $a2,-3
    ld         $a5,0($a0)
    sd         $a5,28448($s0)
    lw         $a3,8($a0)
    andi       $a4,$a3,0x2
    beqz       $a4, .L00002c58
    and        $a3,$a3,$a2
    beqz       $a3, .L00002c74
    sw         $a3,8($a0)
.L00002c58:
    ld         $s0,0($sp)
.L00002c5c:
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002c74:
    jal        odsyDMADone
    nop
    jal        sv_broadcast
    daddiu     $a0,$s0,5816
    b          .L00002c5c
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
    sw         $at,-19324($s1)
    move       $a0,$s3
    move       $a1,$s0
    li         $a2,1
    jal        odsyDMAWait
    daddiu     $a3,$s0,256
    daddiu     $a0,$s3,5800
    sd         $a0,0($sp)
    sw         $zero,-19324($s1)
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
    beqz       $v0, .L00002dc8
    sd         $s4,40($sp)
    b          .L00002d34
    li         $s4,-1
.L00002d1c:
    jal        OdsyDeallocCSetId
    move       $a0,$s2
.L00002d24:
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00002dc8
    move       $s0,$v0
.L00002d34:
    lw         $t8,8($s0)
    beqz       $t8, .L00002da0
    nop
    lw         $t9,816($s3)
    beqz       $t9, .L00002dfc
    ld         $a1,-30720($gp)
    lw         $a1,24($s0)
.L00002d50:
    blez       $a1, .L00002d98
    move       $a3,$zero
.L00002d58:
    ld         $at,16($s0)
    daddu      $at,$a3,$at
    sb         $s1,0($at)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $ra,$a3,$a1
    beqz       $ra, .L00002d98
    nop
    ld         $v1,16($s0)
    daddu      $v1,$a3,$v1
    sb         $s1,0($v1)
    lw         $a1,24($s0)
    addiu      $a3,$a3,1
    slt        $v0,$a3,$a1
    bnez       $v0, .L00002d58
    nop
.L00002d98:
    jal        kmem_free
    ld         $a0,16($s0)
.L00002da0:
    ld         $a1,64($s0)
    beqz       $a1, .L00002d24
    li         $a2,272
    jal        unuseracc
    ld         $a0,56($s0)
    lw         $a1,48($s0)
    bne        $a1, $s4, .L00002d1c
    nop
    b          .L00002d24
    nop
.L00002dc8:
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
.L00002dfc:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1152
    b          .L00002d50
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
    bnez       $at, .L00002e9c
    sd         $ra,48($sp)
.L00002e44:
    ld         $v1,72($v0)
    ld         $v1,112($v1)
    ld         $a2,-30720($gp)
    beqz       $v1, .L00002eb8
    sd         $v1,16($sp)
    move       $a0,$a6
    daddiu     $a1,$sp,0
    jal        copyin
    li         $a2,8
    bnez       $v0, .L00002ed0
    ld         $a0,8($sp)
    li         $a2,1
    ld         $a1,16($sp)
    jal        odsyDMAWait
    daddiu     $a3,$sp,0
    move       $a0,$v0
    sw         $v0,0($s0)
.L00002e88:
    ld         $ra,48($sp)
    move       $v0,$a0
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00002e9c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1200
    ld         $v0,40($sp)
    b          .L00002e44
    ld         $a6,32($sp)
.L00002eb8:
    daddiu     $a1,$a2,1248
    jal        cmn_err
    li         $a0,4
    li         $a0,1
    b          .L00002e88
    sw         $a0,0($s0)
.L00002ed0:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1304
    li         $a0,14
    b          .L00002e88
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
    beqz       $at, .L0000310c
    andi       $s2,$s2,0x40
    ori        $t9,$t9,0xffff
    lw         $t8,24($a1)
    lw         $s5,20($a1)
    and        $t8,$t8,$t9
    addu       $s5,$s5,$t8
    sltu       $v1,$v0,$s5
    bnez       $v1, .L00003160
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
    beqz       $ra, .L00002fa0
    teq        $s1,$zero,0x7
    addiu      $s3,$s3,1
.L00002fa0:
    dsll       $a0,$s3,0x2
    sw         $s3,0($s6)
    sll        $a1,$s3,0x7
    dsubu      $a0,$a0,$s3
    sw         $a1,0($a2)
    move       $a1,$zero
    dsll       $a0,$a0,0x4
    jal        kmem_alloc
    daddiu     $a0,$a0,-48
    beqz       $v0, .L00003178
    addiu      $t1,$s3,-1
    blez       $s3, .L000030e0
    sd         $v0,8($s6)
    move       $a4,$zero
    mult       $s1,$s5
    move       $a7,$s1
    move       $t0,$zero
    mflo       $t2
    b          .L00003190
    move       $a1,$zero
.L00002ff0:
    beq        $t1, $a4, .L000030cc
.L00002ff4:
    dsll       $a3,$a4,0x2
    dsubu      $a3,$a3,$a4
    dsll       $a3,$a3,0x4
    daddu      $a3,$v0,$a3
    sd         $a3,8($a2)
.L00003008:
    addu       $a1,$a1,$t2
    lw         $t8,4($s0)
    andi       $t8,$t8,0xffff
    sw         $t8,24($a2)
    lw         $t3,4($s0)
    beqz       $s2, .L000030d4
    srl        $t3,$t3,0x10
    lw         $t9,12($s0)
    srl        $t9,$t9,0x10
    addu       $t9,$t3,$t9
    subu       $t9,$t9,$a7
    sw         $t9,28($a2)
.L00003038:
    lw         $ra,12($s0)
    sd         $t2,40($a2)
    sd         $at,32($a2)
    sw         $s1,20($a2)
    addu       $a7,$s1,$a7
    andi       $ra,$ra,0xffff
    bne        $t1, $a4, .L00003098
    sw         $ra,16($a2)
    lw         $a3,12($s0)
    srl        $a3,$a3,0x10
    subu       $a3,$a3,$t0
    sw         $a3,20($a2)
    beqz       $s2, .L00003080
    mult       $a3,$s5
    sll        $zero,$zero,0x2
    lw         $a5,4($s0)
    srl        $a5,$a5,0x10
    sw         $a5,28($a2)
.L00003080:
    lw         $t3,20($s0)
    mflo       $a6
    subu       $a6,$a6,$t3
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    sd         $a6,40($a2)
.L00003098:
    addiu      $a4,$a4,1
    slt        $t8,$a4,$s3
    addu       $t0,$s1,$t0
    beqz       $t8, .L000030e0
    dsll       $t3,$a4,0x2
    move       $a2,$s6
.L000030b0:
    daddu      $at,$a1,$s4
    beqz       $a4, .L00002ff0
    dsubu      $t3,$t3,$a4
    dsll       $a2,$t3,0x4
    daddu      $a2,$v0,$a2
    bne        $t1, $a4, .L00002ff4
    daddiu     $a2,$a2,-48
.L000030cc:
    b          .L00003008
    sd         $zero,8($a2)
.L000030d4:
    addu       $a3,$t0,$t3
    b          .L00003038
    sw         $a3,28($a2)
.L000030e0:
    move       $v0,$zero
.L000030e4:
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
.L0000310c:
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
    b          .L000030e4
    sw         $a5,0($a2)
.L00003160:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1344
    b          .L000030e4
    li         $v0,1
.L00003178:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1408
    b          .L000030e4
    li         $v0,1
.L00003190:
    dsll       $t3,$a4,0x2
    b          .L000030b0
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
    bnez       $at, .L0000320c
    dsubu      $a3,$a3,$a5
    dsll       $a1,$a3,0x4
    daddiu     $a1,$a1,-48
    beqz       $a1, .L00003204
    move       $a3,$zero
    ld         $a5,8($s0)
.L000031d8:
    daddu      $a5,$a3,$a5
    sb         $a4,0($a5)
    lw         $a2,0($s0)
    dsll       $a1,$a2,0x2
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x4
    addiu      $a3,$a3,1
    daddiu     $a1,$a1,-48
    sltu       $a2,$a3,$a1
    bnezl      $a2, .L000031d8
    ld         $a5,8($s0)
.L00003204:
    jal        kmem_free
    ld         $a0,8($s0)
.L0000320c:
    ld         $ra,8($sp)
    sd         $zero,8($s0)
    sw         $zero,0($s0)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
