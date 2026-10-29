.section .text
.set noat
.set noreorder


glabel odsy_usdelay
    li         $at,0xb468
    daddu      $at,$at,$a0
    lw         $at,0($at)
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    move       $s0,$a1
    bnez       $at, .L00000030
    sd         $ra,24($sp)
    jal        in_panic_mode
    nop
    beqz       $v0, .L00000048
    lui        $a1,0xf
.L00000030:
    jal        us_delay
    move       $a0,$s0
    ld         $ra,24($sp)
.L0000003c:
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000048:
    ori        $a1,$a1,0x4240
    div        $zero,$s0,$a1
    mflo       $v1
    mult       $v1,$a1
    mflo       $a0
    subu       $a0,$s0,$a0
    sll        $v0,$a0,0x5
    subu       $v0,$v0,$a0
    sll        $v0,$v0,0x2
    addu       $v0,$v0,$a0
    sw         $v1,0($sp)
    sll        $v0,$v0,0x3
    daddiu     $a0,$sp,0
    jal        nano_delay
    sd         $v0,8($sp)
    b          .L0000003c
    ld         $ra,24($sp)

glabel odsyPipeNrFromBase
    ld         $a3,0($gp)
    lw         $a4,0($gp)
    beqz       $a3, .L000000dc
    li         $v0,-1
    blez       $a4, .L000000d8
    move       $v0,$zero
    dsll       $at,$v0,0x3
    daddu      $at,$a3,$at
.L000000b4:
    ld         $at,0($at)
    ld         $at,824($at)
    beq        $at, $a0, .L000000dc
    nop
    addiu      $v0,$v0,1
    slt        $v1,$v0,$a4
    dsll       $at,$v0,0x3
    bnez       $v1, .L000000b4
    daddu      $at,$a3,$at
.L000000d8:
    li         $v0,-1
.L000000dc:
    jr         $ra
    nop

glabel odsyCheckBoardPointers
    ld         $at,0($gp)
    daddiu     $sp,$sp,-16
    beqz       $at, .L000000fc
    sd         $ra,0($sp)
.L000000f4:
    jr         $ra
    daddiu     $sp,$sp,16
.L000000fc:
    lw         $a0,0($gp)
    jal        kern_malloc
    dsll       $a0,$a0,0x3
    lw         $a1,0($gp)
    move       $a0,$v0
    sd         $v0,0($gp)
    jal        bzero
    dsll       $a1,$a1,0x3
    b          .L000000f4
    ld         $ra,0($sp)

glabel odsyCheckBoardPointer
    ld         $a3,0($gp)
    dsll       $a4,$a0,0x3
    daddu      $a3,$a3,$a4
    daddiu     $sp,$sp,-32
    ld         $a3,0($a3)
    sd         $a4,0($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $a3, .L0000016c
    sd         $ra,24($sp)
.L0000014c:
    sw         $s0,240($a3)
    li         $a6,0xb468
    ld         $s0,8($sp)
    daddiu     $sp,$sp,32
    daddu      $a6,$a6,$a3
    li         $a5,1
    jr         $ra
    sw         $a5,0($a6)
.L0000016c:
    li         $a0,0xb4e0
    jal        kmem_zalloc
    move       $a1,$zero
    ld         $t0,0($sp)
    ld         $a7,0($gp)
    sd         $v0,16($sp)
    daddu      $a7,$a7,$t0
    beqz       $v0, .L000001ac
    sd         $v0,0($a7)
.L00000190:
    ld         $a4,0($sp)
    sh         $s0,790($v0)
    ld         $a3,0($gp)
    ld         $ra,24($sp)
    daddu      $a3,$a3,$a4
    b          .L0000014c
    ld         $a3,0($a3)
.L000001ac:
    ld         $a0,-30720($gp)
    li         $a2,238
    move       $a1,$a0
    jal        assfail
    daddiu     $a0,$a0,32
    b          .L00000190
    ld         $v0,16($sp)

glabel odsy_earlyinit
    ld         $a1,-30720($gp)
    daddiu     $a0,$gp,0
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    jal        spinlock_init
    daddiu     $a1,$a1,40
    ld         $a2,-30720($gp)
    li         $a3,-1
    move       $a1,$zero
    ld         $a0,-30712($gp)
    jal        init_mutex
    daddiu     $a2,$a2,64
    jal        odsy_hpipe_sema_init
    nop
    ld         $a0,-30720($gp)
    jal        kopt_find
    daddiu     $a0,$a0,184
    lbu        $a1,0($v0)
    li         $a2,100
    lw         $a4,-30684($gp)
    beq        $a1, $a2, .L0000033c
    li         $a0,68
    beq        $a1, $a0, .L0000033c
    nop
    bnez       $a4, .L0000036c
    sw         $zero,-30712($gp)
    li         $a3,1
    sw         $a3,-30684($gp)
    jal        odsyFindBoardAddr
    move       $a0,$zero
    beqz       $v0, .L00000334
    sd         $s0,24($sp)
    lw         $a4,-30688($gp)
    ld         $s0,0($gp)
    sd         $s1,16($sp)
    lui        $v0,0x1
    beqz       $a4, .L00000344
    ld         $s0,0($s0)
    daddu      $s1,$v0,$s0
.L00000264:
    li         $t8,1
.L00000268:
    sw         $t8,-19352($s1)
    li         $t9,0xb458
.L00000270:
    daddu      $t9,$s0,$t9
    sd         $t9,0($sp)
    lw         $ra,-30688($gp)
.L0000027c:
    bnez       $ra, .L000002f4
    nop
    jal        in_panic_mode
    nop
    bnez       $v0, .L000002f4
    nop
    lw         $at,-19352($s1)
    bnez       $at, .L000002f4
    nop
    lw         $v0,28480($s0)
    slti       $v0,$v0,2
    bnez       $v0, .L000002f4
    move       $a1,$zero
    move       $a2,$zero
    ld         $a0,0($sp)
    jal        init_sema
    li         $a3,-1
    ld         $a0,-30704($gp)
    ld         $a1,0($sp)
    jal        timeout
    li         $a2,200
    ld         $a0,0($sp)
    jal        psema
    li         $a1,25
    lw         $v1,28480($s0)
    slti       $v1,$v1,2
    bnez       $v1, .L0000027c
    lw         $ra,-30688($gp)
    b          .L00000384
    ld         $a1,-30720($gp)
.L000002f4:
    jal        odsyReset
    move       $a0,$zero
    jal        odsy_tport_lock_init
    ld         $s1,16($sp)
    lhu        $a3,234($s0)
    lhu        $a2,232($s0)
    ld         $a1,-30696($gp)
    jal        htp_register_board
    ld         $a0,824($s0)
    ld         $s0,24($sp)
    sw         $zero,-30688($gp)
    li         $v0,1
    sw         $zero,-30684($gp)
.L00000328:
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000334:
    b          .L00000328
    move       $v0,$zero
.L0000033c:
    b          .L00000328
    move       $v0,$zero
.L00000344:
    jal        in_panic_mode
    sd         $s1,16($sp)
    lui        $s1,0x1
    bnez       $v0, .L00000264
    daddu      $s1,$s1,$s0
    lw         $t8,-19352($s1)
    bnez       $t8, .L00000268
    li         $t8,1
    b          .L00000270
    li         $t9,0xb458
.L0000036c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,88
    b          .L00000328
    move       $v0,$zero
.L00000384:
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,144
    b          .L0000027c
    lw         $ra,-30688($gp)

glabel odsy_init
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        odsyCheckBoardPointers
    nop
    li         $a0,0xc013
    ld         $a2,-30720($gp)
    li         $a1,35
    move       $a3,$zero
    sw         $zero,0($gp)
    jal        xwidget_driver_register
    daddiu     $a2,$a2,192
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_set_gfx_mfg_nic_name
    daddiu     $sp,$sp,-1088
    lui        $a2,0x1
    daddu      $a2,$a2,$a0
    sd         $a2,1040($sp)
    lw         $a1,-19400($a2)
    sd         $ra,1056($sp)
    li         $v0,1
    sd         $s2,1048($sp)
    move       $s2,$a0
    beqz       $a1, .L000004fc
    sd         $s0,1064($sp)
    jal        nic_vertex_info_get
    move       $a0,$a1
    beqz       $v0, .L00000504
    move       $s0,$v0
    jal        strlen
    move       $a0,$v0
    move       $a1,$s0
    sll        $a4,$v0,0x0
    li         $a2,1023
    slti       $a3,$a4,1023
    addiu      $a4,$a4,1
    xori       $a3,$a3,0x1
    daddiu     $a0,$sp,0
    sd         $s1,1072($sp)
    movz       $a2,$a4,$a3
    sd         $a2,1032($sp)
    jal        strncpy
    addiu      $a2,$a2,-1
    ld         $t8,1032($sp)
    ld         $s1,-30720($gp)
    sd         $zero,1024($sp)
    daddu      $t8,$t8,$sp
    daddiu     $s0,$sp,0
    daddiu     $s1,$s1,248
    sb         $zero,0($t8)
.L00000460:
    ld         $a1,-30720($gp)
    move       $a0,$s0
    daddiu     $a2,$sp,1024
    jal        strtok_r
    daddiu     $a1,$a1,252
    sltu       $a2,$zero,$s0
    beqz       $v0, .L000004b0
    movn       $s0,$zero,$a2
    ld         $a1,-30720($gp)
    move       $a0,$v0
    jal        strcmp
    daddiu     $a1,$a1,256
    bnez       $v0, .L00000460
    ld         $a1,-30720($gp)
    move       $a0,$s0
    daddiu     $a2,$sp,1024
    jal        strtok_r
    daddiu     $a1,$a1,252
    bnez       $v0, .L00000460
    move       $s1,$v0
.L000004b0:
    jal        strlen
    move       $a0,$s1
    move       $a1,$s1
    li         $a0,0xb4b8
    sll        $s0,$v0,0x0
    daddu      $a0,$s2,$a0
    jal        strncpy
    move       $a2,$s0
    daddu      $a2,$s0,$s2
    lui        $a1,0x1
    ld         $s1,1072($sp)
    daddu      $a1,$a1,$a2
    move       $v0,$zero
    sb         $zero,-19271($a1)
.L000004e8:
    ld         $ra,1056($sp)
    ld         $s2,1048($sp)
    ld         $s0,1064($sp)
    jr         $ra
    daddiu     $sp,$sp,1088
.L000004fc:
    b          .L000004e8
    sb         $zero,-19272($a2)
.L00000504:
    ld         $a1,-30720($gp)
    ld         $a2,1040($sp)
    li         $a0,1
    sb         $zero,-19272($a2)
    jal        cmn_err
    daddiu     $a1,$a1,200
    b          .L000004e8
    li         $v0,1

glabel odsy_attach
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    move       $s0,$a0
    ld         $a0,-30688($gp)
    sd         $ra,8($sp)
    li         $a1,25
    jal        psema
    sd         $s1,40($sp)
    lw         $s1,0($gp)
    ld         $a0,-30688($gp)
    addiu      $at,$s1,1
    jal        vsema
    sw         $at,0($gp)
    ld         $a2,-30720($gp)
    move       $a0,$s0
    daddiu     $a3,$sp,0
    daddiu     $a1,$a2,312
    jal        hwgraph_char_device_add
    daddiu     $a2,$a2,192
    move       $a0,$s0
    move       $a1,$zero
    move       $a2,$zero
    move       $a4,$zero
    lui        $a3,0x40
    sd         $s2,32($sp)
    jal        xtalk_piotrans_addr
    ori        $a3,$a3,0x1000
    move       $s2,$v0
    move       $a0,$s1
    jal        odsyCheckBoardPointer
    sd         $s3,24($sp)
    ld         $s3,0($gp)
    dsll       $t8,$s1,0x3
    daddu      $s3,$s3,$t8
    ld         $s3,0($s3)
    li         $a5,0xb438
    sd         $s2,824($s3)
    daddu      $a5,$a5,$s3
    move       $a0,$s0
    sw         $s0,0($a5)
    li         $a4,2
    jal        xwidget_info_get
    sh         $a4,788($s3)
    jal        xwidget_info_id_get
    move       $a0,$v0
    sb         $v0,793($s3)
    jal        xwidget_info_get
    move       $a0,$s0
    jal        xwidget_info_masterid_get
    move       $a0,$v0
    sb         $v0,792($s3)
    lw         $t9,4($s2)
    srl        $t9,$t9,0x1c
    sltiu      $t9,$t9,2
    beqz       $t9, .L00000640
    lw         $ra,-30712($gp)
.L00000604:
    bne        $ra, $s1, .L00000668
    ld         $s3,24($sp)
.L0000060c:
    ld         $s2,32($sp)
    jal        odsyInitBoardGfx
    move       $a0,$s1
    move       $a0,$s1
    move       $a1,$s0
    jal        odsyInitIntr
    move       $a2,$s0
    ld         $ra,8($sp)
    move       $v0,$zero
    ld         $s0,16($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000640:
    daddiu     $a1,$s2,4316
    ld         $a0,-30680($gp)
    jal        nic_vertex_info_set
    move       $a2,$s0
    jal        odsy_set_gfx_mfg_nic_name
    move       $a0,$s3
    beqz       $v0, .L00000604
    lw         $ra,-30712($gp)
    b          .L00000678
    ld         $a1,-30720($gp)
.L00000668:
    jal        odsyReset
    move       $a0,$s1
    b          .L0000060c
    ld         $s3,24($sp)
.L00000678:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,264
    b          .L00000604
    lw         $ra,-30712($gp)

glabel odsyInitIntr
    daddiu     $sp,$sp,-48
    sd         $s0,32($sp)
    sd         $s2,40($sp)
    sd         $ra,8($sp)
    sd         $s1,24($sp)
    ld         $s1,0($gp)
    dsll       $t8,$a0,0x3
    move       $a0,$a2
    sd         $s3,0($sp)
    move       $s3,$a1
    sd         $s4,16($sp)
    daddu      $s1,$s1,$t8
    move       $s4,$a2
    jal        device_desc_dup
    ld         $s1,0($s1)
    move       $s2,$v0
    move       $a0,$s3
    move       $a1,$v0
    jal        xtalk_intr_alloc
    move       $a2,$s4
    move       $a0,$s3
    lui        $s0,0x1
    move       $a1,$s2
    daddu      $s0,$s1,$s0
    move       $a2,$s4
    jal        xtalk_intr_alloc
    sd         $v0,-19744($s0)
    move       $a0,$s3
    move       $a1,$s2
    sd         $v0,-19736($s0)
    jal        xtalk_intr_alloc
    move       $a2,$s4
    move       $a0,$s3
    move       $a1,$s2
    sd         $v0,-19728($s0)
    jal        xtalk_intr_alloc
    move       $a2,$s4
    move       $a0,$s3
    move       $a1,$s2
    sd         $v0,-19720($s0)
    jal        xtalk_intr_alloc
    move       $a2,$s4
    ld         $s3,0($sp)
    ld         $s4,16($sp)
    sd         $v0,-19712($s0)
    jal        device_desc_free
    move       $a0,$s2
    ld         $s2,40($sp)
    jal        xtalk_intr_vector_get
    ld         $a0,-19744($s0)
    ld         $a0,-19736($s0)
    jal        xtalk_intr_vector_get
    sh         $v0,-19704($s0)
    ld         $a0,-19728($s0)
    jal        xtalk_intr_vector_get
    sh         $v0,-19702($s0)
    ld         $a0,-19720($s0)
    jal        xtalk_intr_vector_get
    sh         $v0,-19700($s0)
    ld         $a0,-19712($s0)
    jal        xtalk_intr_vector_get
    sh         $v0,-19698($s0)
    sh         $v0,-19696($s0)
    move       $a2,$s1
    ld         $a0,-19744($s0)
    move       $a3,$zero
    move       $a4,$zero
    ld         $a1,-30672($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    move       $a2,$s1
    ld         $a0,-19736($s0)
    move       $a3,$zero
    move       $a4,$zero
    ld         $a1,-30664($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    move       $a2,$s1
    ld         $a0,-19728($s0)
    move       $a3,$zero
    move       $a4,$zero
    ld         $a1,-30656($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    move       $a2,$s1
    ld         $a0,-19720($s0)
    move       $a3,$zero
    move       $a4,$zero
    ld         $a1,-30648($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    move       $a2,$s1
    ld         $a0,-19712($s0)
    move       $a3,$zero
    move       $a4,$zero
    ld         $a1,-30640($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    ld         $s1,24($sp)
    jal        xtalk_intr_addr_get
    ld         $a0,-19744($s0)
    ld         $a0,-19736($s0)
    jal        xtalk_intr_addr_get
    sd         $v0,-19688($s0)
    ld         $ra,8($sp)
    sd         $v0,-19680($s0)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel odsyFindBoardAddr
    daddiu     $sp,$sp,-48
    sd         $s0,24($sp)
    sd         $ra,32($sp)
    jal        odsyCheckBoardPointers
    move       $s0,$a0
    ld         $a0,0($gp)
    dsll       $a1,$s0,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    beqz       $a0, .L00000880
    sd         $a1,16($sp)
    ld         $v0,824($a0)
.L00000870:
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000880:
    move       $a3,$zero
    move       $a2,$s0
    li         $a0,0xc013
    li         $a1,35
    move       $a5,$zero
    lui        $a4,0x40
    jal        xtalk_early_piotrans_addr
    ori        $a4,$a4,0x1000
    move       $a0,$v0
    beqz       $v0, .L000008fc
    sd         $v0,8($sp)
    lw         $a5,36($v0)
    move       $a0,$s0
    jal        odsyCheckBoardPointer
    sd         $a5,0($sp)
    ld         $a7,16($sp)
    ld         $t2,0($gp)
    ld         $t1,0($sp)
    daddu      $t2,$t2,$a7
    ld         $t2,0($t2)
    andi       $t1,$t1,0xf
    sb         $t1,793($t2)
    ld         $t0,0($gp)
    daddu      $t0,$t0,$a7
    ld         $t0,0($t0)
    ld         $a0,8($sp)
    sd         $a0,824($t0)
    ld         $a6,0($gp)
    daddu      $a6,$a6,$a7
    ld         $a6,0($a6)
    sh         $s0,790($a6)
.L000008fc:
    b          .L00000870
    move       $v0,$a0

glabel odsyInitBoardGfx
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    ld         $s0,0($gp)
    dsll       $t8,$a0,0x3
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    li         $a1,200
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $ra,16($sp)
    jal        bzero
    move       $a0,$s0
    li         $a3,-1
    move       $a2,$zero
    li         $a1,1
    jal        init_sema
    daddiu     $a0,$s0,29872
    daddiu     $a0,$s0,29952
    jal        OdsyInit32kSlotMask
    move       $a1,$zero
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    jal        init_mutex
    daddiu     $a0,$s0,5800
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s0,5816
    jal        init_sv
    sd         $s2,32($sp)
    sw         $zero,5844($s0)
    sw         $zero,6908($s0)
    sw         $zero,5848($s0)
    li         $a3,-1
    sw         $zero,6912($s0)
    li         $a1,1
    sw         $zero,28440($s0)
    li         $t9,496
    li         $a0,0x8530
    ld         $s2,-30720($gp)
    lui        $at,0x1
    daddu      $a0,$s0,$a0
    daddu      $at,$s0,$at
    sd         $at,24($sp)
    daddiu     $a2,$s2,320
    jal        init_sema
    sw         $t9,-19500($at)
    daddiu     $a1,$s2,336
    li         $a0,0x8540
    jal        spinlock_init
    daddu      $a0,$s0,$a0
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    li         $a0,0x8520
    jal        init_mutex
    daddu      $a0,$s0,$a0
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    li         $a0,0x8510
    jal        init_mutex
    daddu      $a0,$s0,$a0
    li         $a3,-1
    move       $a2,$zero
    li         $a1,1
    jal        init_sema
    daddiu     $a0,$s0,28488
    jal        odsyInitDDRNs
    move       $a0,$s0
    jal        odsyInitHwWrRgn
    move       $a0,$s1
    li         $a1,0x8800
    jal        kmem_zalloc
    li         $a0,0xc000
    ld         $a3,24($sp)
    sd         $v0,888($s0)
    daddiu     $a2,$v0,32
    sd         $a2,-31400($a3)
    lw         $a0,252($s0)
    lui        $a4,0x1
    li         $a1,32
    li         $a5,1
    li         $a3,128
    beq        $a0, $a1, .L00000a74
    li         $a1,64
    beq        $a0, $a1, .L00000b58
    lui        $a4,0x2
    beq        $a0, $a3, .L00000b60
    lui        $a4,0x3
    move       $a4,$zero
.L00000a74:
    lw         $a0,280($s0)
.L00000a78:
    beqz       $a0, .L00000b44
    lui        $a1,0x100
    beq        $a5, $a0, .L00000b4c
.L00000a84:
    li         $a0,7
    li         $a1,21
    move       $a2,$zero
    jal        add_to_inventory
    move       $a3,$s1
    lhu        $a6,296($s0)
    beqz       $a6, .L00000ab4
    nop
    lhu        $a7,298($s0)
    li         $t0,3
    beq        $a7, $t0, .L00000b68
    li         $a0,17
.L00000ab4:
    ld         $s1,0($sp)
.L00000ab8:
    li         $a3,-1
    daddiu     $a2,$s2,360
    move       $a1,$zero
    li         $a4,1
    sw         $a4,176($s0)
    li         $a5,40
    sw         $a5,88($s0)
    li         $a0,0xb338
    sw         $a4,20($s0)
    li         $t1,0x86c8
    daddu      $a0,$s0,$a0
    daddu      $t1,$s0,$t1
    jal        init_mutex
    sd         $t1,96($s0)
    li         $a3,-1
    daddiu     $a2,$s2,376
    move       $a1,$zero
    li         $a0,0xb370
    jal        init_mutex
    daddu      $a0,$s0,$a0
    li         $a3,-1
    daddiu     $a2,$s2,392
    move       $a1,$zero
    li         $a0,0x8580
    jal        init_mutex
    daddu      $a0,$s0,$a0
    ld         $s2,32($sp)
    daddiu     $a2,$s0,200
    move       $a1,$s0
    jal        GfxRegisterBoard
    ld         $a0,-30632($gp)
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000b44:
    b          .L00000a84
    or         $a4,$a4,$a1
.L00000b4c:
    lui        $a1,0x200
    b          .L00000a84
    or         $a4,$a4,$a1
.L00000b58:
    b          .L00000a78
    lw         $a0,280($s0)
.L00000b60:
    b          .L00000a78
    lw         $a0,280($s0)
.L00000b68:
    li         $a1,3
    move       $a2,$zero
    move       $a3,$s1
    jal        add_to_inventory
    move       $a4,$zero
    b          .L00000ab8
    ld         $s1,0($sp)

glabel odsyGatherInfo
    daddiu     $sp,$sp,-96
    sd         $s0,32($sp)
    ld         $s0,0($gp)
    sd         $s2,24($sp)
    dsll       $s2,$a0,0x3
    sd         $ra,64($sp)
    daddu      $s0,$s0,$s2
    ld         $s0,0($s0)
    move       $a2,$a0
    sd         $s1,72($sp)
    move       $v0,$a1
    beqz       $a1, .L00000c5c
    ld         $s2,824($s0)
.L00000bb8:
    li         $a0,1
    beq        $v0, $a0, .L00000bdc
.L00000bc0:
    move       $v0,$zero
.L00000bc4:
    ld         $ra,64($sp)
    ld         $s2,24($sp)
    ld         $s1,72($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000bdc:
    lw         $s1,4204($s2)
    srl        $v0,$s1,0x1e
    srl        $t8,$s1,0x18
    andi       $v0,$v0,0xffff
    andi       $t8,$t8,0xf
    andi       $t8,$t8,0xffff
    beqz       $v0, .L00000c98
    sw         $t8,292($s0)
    beq        $a0, $v0, .L00000cbc
    li         $t1,64
    li         $v1,2
    beq        $v0, $v1, .L00000cb4
    li         $t0,128
    li         $a1,33
    sw         $a1,252($s0)
.L00000c18:
    srl        $v0,$s1,0x1c
    andi       $v0,$v0,0x1
    andi       $v0,$v0,0xffff
    beq        $a0, $v0, .L00000ca4
    li         $a6,2
    bnez       $v0, .L000010dc
    li         $v1,3
    sw         $v1,256($s0)
.L00000c38:
    srl        $v0,$s1,0x1d
    andi       $v0,$v0,0x1
    andi       $v0,$v0,0xffff
    beqz       $v0, .L00000cac
    li         $a7,2
    bne        $a0, $v0, .L000010f4
    li         $v1,4
    b          .L00000bc0
    sw         $v1,260($s0)
.L00000c5c:
    lw         $a3,4($s2)
    srl        $a3,$a3,0x1c
    dsll32     $a4,$a3,0x0
    ld         $a0,-30720($gp)
    dsrl32     $a1,$a4,0x0
    sltiu      $a1,$a1,16
    sd         $v0,56($sp)
    daddiu     $a0,$a0,568
    dsrl       $a4,$a4,0x1d
    sw         $a3,264($s0)
    beqz       $a1, .L0000110c
    daddu      $a0,$a0,$a4
    ld         $a4,0($a0)
    jr         $a4
    sd         $v0,56($sp)
.L00000c98:
    li         $a5,32
    b          .L00000c18
    sw         $a5,252($s0)
.L00000ca4:
    b          .L00000c38
    sw         $a6,256($s0)
.L00000cac:
    b          .L00000bc0
    sw         $a7,260($s0)
.L00000cb4:
    b          .L00000c18
    sw         $t0,252($s0)
.L00000cbc:
    b          .L00000c18
    sw         $t1,252($s0)
.L00000cc4:
    b          .L00000cdc
    sw         $zero,280($s0)
.L00000ccc:
    li         $t3,5
    sw         $t3,264($s0)
    li         $t2,1
    sw         $t2,280($s0)
.L00000cdc:
    lui        $s1,0x1
.L00000ce0:
    daddu      $s1,$s0,$s1
    lw         $t8,-19352($s1)
    beqz       $t8, .L00000e04
    move       $a0,$s2
.L00000cf0:
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    beqz       $v0, .L00000d10
    lw         $a0,-19352($s1)
    beqz       $a0, .L00000db0
    li         $s2,0x8540
.L00000d08:
    b          .L00000bc4
    li         $v0,-1
.L00000d10:
    lui        $t8,0x23
    ori        $t8,$t8,0x380c
    daddu      $t8,$t8,$s2
    lw         $t8,0($t8)
    beqz       $a0, .L00000f54
    sd         $t8,40($sp)
    ld         $t9,40($sp)
.L00000d2c:
    ld         $v0,56($sp)
    andi       $t9,$t9,0x7
    b          .L00000bb8
    sw         $t9,268($s0)
.L00000d3c:
    li         $at,7
    sw         $at,264($s0)
    li         $ra,1
    b          .L00000cdc
    sw         $ra,280($s0)
.L00000d50:
    li         $v1,6
    sw         $v1,264($s0)
    li         $v0,1
    b          .L00000cdc
    sw         $v0,280($s0)
.L00000d64:
    li         $a1,4
    sw         $a1,264($s0)
    li         $a0,1
    b          .L00000cdc
    sw         $a0,280($s0)
.L00000d78:
    li         $a3,3
    sw         $a3,264($s0)
    li         $a2,1
    b          .L00000cdc
    sw         $a2,280($s0)
.L00000d8c:
    li         $a5,2
    sw         $a5,264($s0)
    li         $a4,1
    b          .L00000cdc
    sw         $a4,280($s0)
.L00000da0:
    li         $a6,1
    sw         $a6,264($s0)
    b          .L00000cdc
    sw         $a6,280($s0)
.L00000db0:
    daddu      $s2,$s0,$s2
    sd         $s3,80($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s3,0x8530
    sd         $v0,48($sp)
    beqz       $t8, .L00000e1c
    daddu      $s3,$s0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000e40
    nop
.L00000df4:
    jal        vsema
    move       $a0,$s3
    b          .L00000d08
    ld         $s3,80($sp)
.L00000e04:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00000cf0
    move       $a0,$s2
.L00000e1c:
    ld         $s0,48($sp)
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    ld         $s3,80($sp)
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L00000d08
    nop
.L00000e40:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a3,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a3,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    move       $a1,$v0
    beqz       $a0, .L00000ee4
    lui        $a2,0x40
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a3,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a4,-30720($gp)
    dsrl32     $t1,$t1,0x0
    and        $t1,$a6,$t1
    daddu      $t2,$a2,$t2
    or         $t1,$a4,$t1
    sd         $t1,0($t2)
    sync
    lhu        $t0,-31408($s1)
    lw         $a7,-19664($s1)
    li         $t1,-33
    andi       $t0,$t0,0x1
    and        $a7,$a7,$t1
    sll        $t0,$t0,0x5
    or         $a7,$a7,$t0
    sw         $a7,-19664($s1)
    dsll32     $a7,$a7,0x0
    ld         $a5,824($s0)
    dsrl32     $a7,$a7,0x0
    and        $a6,$a6,$a7
    daddu      $a5,$a2,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
.L00000ee4:
    ld         $t0,824($s0)
    daddu      $t0,$a2,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00000f30
    li         $a3,-2
    lw         $t1,-19664($s1)
    and        $t1,$a3,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30720($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$a2,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00000f30:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a3,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00000df4
    nop
.L00000f54:
    li         $a0,0x8540
    daddu      $a0,$s0,$a0
    jal        mutex_spinlock
    sd         $a0,16($sp)
    ld         $a1,-31416($s1)
    sd         $v0,0($sp)
    li         $a0,0x8530
    daddu      $a0,$s0,$a0
    beqz       $a1, .L00000fac
    sd         $a0,8($sp)
    ld         $a0,16($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000fc8
    nop
.L00000f9c:
    jal        vsema
    ld         $a0,8($sp)
    b          .L00000d2c
    ld         $t9,40($sp)
.L00000fac:
    jal        vsema
    ld         $s1,16($sp)
    move       $a0,$s1
    jal        mutex_spinunlock
    ld         $a1,0($sp)
    b          .L00000d2c
    ld         $t9,40($sp)
.L00000fc8:
    jal        mutex_spinlock
    ld         $a0,16($sp)
    lw         $a3,-19664($s1)
    lhu        $a6,-31408($s1)
    srl        $a7,$a3,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    ld         $a0,16($sp)
    beqz       $a6, .L00001070
    lui        $a2,0x40
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a3,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    ld         $t0,-30720($gp)
    dsrl32     $t9,$t9,0x0
    and        $t9,$t2,$t9
    daddu      $ra,$a2,$ra
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
    daddu      $t1,$a2,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
.L00001070:
    ld         $t8,824($s0)
    daddu      $t8,$a2,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L000010bc
    li         $a3,-2
    lw         $t9,-19664($s1)
    and        $t9,$a3,$t9
    sw         $t9,-19664($s1)
    li         $v0,-1
    ld         $ra,824($s0)
    dsrl32     $v0,$v0,0x0
    ld         $at,-30720($gp)
    and        $t9,$t9,$v0
    daddu      $ra,$a2,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L000010bc:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    and        $ra,$a3,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    sd         $zero,-31416($s1)
    b          .L00000f9c
    nop
.L000010dc:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,472
    b          .L00000c38
    li         $a0,1
.L000010f4:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,520
    b          .L00000bc4
    move       $v0,$zero
.L0000110c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,408
    b          .L00000ce0
    lui        $s1,0x1

glabel odsy_init_ddrncount_timeout
    daddiu     $sp,$sp,-16
    ld         $a1,-30720($gp)
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,4
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,696
    jal        vsema
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_earlyinit_timeout
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        vsema
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyZeroOut
    li         $a4,576
    move       $a3,$zero
    li         $a7,561
    li         $t1,1857
    ld         $a2,824($a0)
    li         $t0,16193
    lui        $a5,0x11
    li         $at,448
    daddu      $a2,$a2,$a5
    li         $v0,1856
    sw         $v0,0($a2)
    sync
    lui        $t3,0xcf80
    sw         $at,0($a2)
    sync
    b          .L00001278
    ori        $t2,$t3,0x9014
.L000011bc:
    sw         $t0,0($a2)
    sync
.L000011c4:
    addiu      $a1,$a5,-1
.L000011c8:
    addiu      $a1,$a1,-1
.L000011cc:
    sw         $zero,0($a2)
    sync
    bltz       $a1, .L000011ec
    addiu      $a1,$a1,-1
    sw         $zero,0($a2)
    sync
    bgez       $a1, .L000011cc
    addiu      $a1,$a1,-1
.L000011ec:
    addiu      $a3,$a3,16
.L000011f0:
    slti       $a6,$a3,576
    addiu      $a4,$a4,-16
    beqz       $a6, .L00001248
    slti       $t8,$a3,561
    li         $a5,16
.L00001204:
    sll        $a6,$a4,0xa
    bnez       $t8, .L000011bc
    ori        $a1,$a6,0x341
    beq        $a3, $a7, .L00001234
    li         $a5,1
    move       $a5,$a4
    sw         $a1,0($a2)
    sync
    bgtz       $a4, .L000011c8
    addiu      $a1,$a5,-1
    b          .L000011f0
    addiu      $a3,$a3,16
.L00001234:
    addiu      $a4,$a4,15
    sw         $t1,0($a2)
    sync
    b          .L000011c4
    addiu      $a3,$a3,-15
.L00001248:
    sw         $t2,0($a2)
    sync
    sw         $zero,0($a2)
    sync
    sw         $zero,0($a2)
    sync
    sw         $zero,0($a2)
    sync
    sw         $zero,0($a2)
    sync
    jr         $ra
    move       $v0,$zero
.L00001278:
    slti       $t8,$a3,561
    b          .L00001204
    li         $a5,16

glabel gf_OdsyInitialize
    daddiu     $sp,$sp,-96
    sd         $s7,88($sp)
    sd         $s5,80($sp)
    sd         $ra,72($sp)
    sd         $s0,24($sp)
    ld         $s0,40($a0)
    sd         $s1,16($sp)
    lui        $s1,0x1
    sd         $s8,64($sp)
    daddu      $s1,$s0,$s1
    sw         $zero,-19352($s1)
    lw         $a3,28480($s0)
    sd         $s6,56($sp)
    sd         $s4,32($sp)
    move       $s4,$a0
    bnez       $a3, .L000016b8
    sd         $s2,48($sp)
.L000012c8:
    ld         $v0,40($s4)
    ld         $t8,72($v0)
    bne        $t8, $s4, .L00001628
    li         $a1,537
    move       $a0,$zero
.L000012dc:
    lw         $ra,80($v0)
    move       $a1,$zero
    move       $a2,$zero
    lui        $t9,0xaff0
    addiu      $ra,$ra,1
    sw         $ra,80($v0)
    move       $a3,$zero
    jal        htp_register_board
    ld         $t9,128($t9)
    lw         $s2,4($s4)
    andi       $s2,$s2,0x3
    beqz       $s2, .L0000137c
    nop
    jal        splhi
    nop
    lw         $t8,4($s4)
    nor        $t9,$s2,$zero
    and        $t8,$t8,$t9
    sw         $t8,4($s4)
    ld         $a0,808($s0)
    beqz       $a0, .L0000136c
    move       $s5,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000136c
    li         $at,1
    sw         $at,-31288($s1)
    ld         $v0,824($s0)
    sw         $at,4220($v0)
    sync
    ld         $ra,824($s0)
    lw         $ra,4204($ra)
    sw         $ra,0($sp)
    move       $a1,$s4
    jal        gfx_flow_detach_me
    ld         $a0,808($s0)
.L0000136c:
    jal        splx
    move       $a0,$s5
    b          .L00001380
    ld         $a0,808($s0)
.L0000137c:
    ld         $a0,808($s0)
.L00001380:
    beqz       $a0, .L00001394
    lui        $s7,0x80
    jal        gfx_flow_dealloc
    nop
    lui        $s7,0x80
.L00001394:
    lui        $s6,0x10
    move       $s8,$zero
    daddiu     $t8,$s0,840
    sd         $t8,40($sp)
    lui        $s5,0x1
    sd         $s3,8($sp)
    b          .L00001468
    ori        $s5,$s5,0xffff
.L000013b4:
    jal        us_delay
    li         $a0,5
.L000013bc:
    ld         $v0,824($s0)
    lw         $t9,4204($v0)
    srl        $t9,$t9,0x7
    andi       $t9,$t9,0x1ff
    bnez       $t9, .L000013b4
    nop
    sw         $zero,4228($v0)
    sync
    ld         $at,824($s0)
    sw         $s3,4228($at)
    sync
    ld         $ra,824($s0)
    sw         $zero,4228($ra)
    sync
    jal        xtalk_intr_target_get
    ld         $a0,-19744($s1)
    move       $s3,$v0
    jal        gfx_flow_credit_tnum_get
    ld         $a0,808($s0)
    sll        $v1,$s3,0x11
    sll        $v0,$v0,0xc
    or         $v1,$v1,$s7
    or         $v0,$v0,$v1
    ori        $v0,$v0,0xc8
    sw         $v0,-31292($s1)
    ld         $v1,824($s0)
    sw         $v0,4212($v1)
    sync
    li         $a1,1
    jal        odsyInitCfifo
    lh         $a0,790($s0)
    beqz       $v0, .L00001464
    move       $s3,$v0
    jal        gfx_flow_dealloc
    ld         $a0,808($s0)
    move       $a0,$s0
    jal        odsy_usdelay
    li         $a1,10000
    addiu      $s8,$s8,1
    slti       $s2,$s8,6
    beqz       $s2, .L00001620
    nop
.L00001464:
    beqz       $s2, .L000014c4
.L00001468:
    move       $s2,$zero
    jal        odsyReset
    lh         $a0,790($s0)
    li         $a7,1
    move       $a6,$s0
    ld         $s3,-30616($gp)
    li         $a4,10000
    li         $a3,2048
    ld         $a1,824($s0)
    move       $a2,$s5
    move       $a5,$s3
    lw         $a0,-19400($s1)
    jal        gfx_flow_alloc
    or         $a1,$s6,$a1
    bnez       $v0, .L000014b0
    sd         $v0,808($s0)
.L000014a8:
    b          .L000013bc
    li         $s3,1
.L000014b0:
    move       $a0,$v0
    jal        gfx_flow_wg_info_get
    ld         $a1,40($sp)
    b          .L000014a8
    nop
.L000014c4:
    move       $a1,$zero
    daddiu     $s2,$s0,29952
    jal        OdsyInit32kSlotMask
    move       $a0,$s2
    jal        OdsyAlloc32kSlot
    move       $a0,$s2
    jal        OdsyAlloc32kSlot
    move       $a0,$s2
    sw         $v0,-19380($s1)
    ld         $a2,880($s0)
    daddu      $a3,$v0,$v0
    daddu      $a2,$a2,$a3
    sd         $a2,-19376($s1)
    move       $a0,$s0
    jal        odsyInitMM
    sh         $zero,0($a2)
    jal        odsyInitDMA
    lh         $a0,790($s0)
    sd         $zero,-19584($s1)
    sd         $zero,-19608($s1)
    sh         $zero,794($s0)
    jal        odsyInitRetrace
    move       $a0,$s0
    jal        odsyInitInterrupts
    lh         $a0,790($s0)
    jal        splhi
    nop
    lw         $a4,4($s4)
    ori        $a4,$a4,0x2
    sw         $a4,4($s4)
    ld         $a0,808($s0)
    beqz       $a0, .L00001558
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00001668
    nop
.L00001558:
    jal        splx
    move       $a0,$s2
    jal        odsyZeroOut
    move       $a0,$s0
    jal        splhi
    nop
    lw         $a5,4($s4)
    li         $a6,-3
    and        $a5,$a5,$a6
    sw         $a5,4($s4)
    ld         $a0,808($s0)
    beqz       $a0, .L000015c4
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000015c4
    li         $t0,1
    sw         $t0,-31288($s1)
    ld         $t1,824($s0)
    sw         $t0,4220($t1)
    sync
    ld         $a7,824($s0)
    ld         $a0,808($s0)
    lw         $a7,4204($a7)
    move       $a1,$s4
    jal        gfx_flow_detach_me
    sw         $a7,4($sp)
.L000015c4:
    jal        splx
    move       $a0,$s2
    sw         $zero,-19352($s1)
    ld         $t3,40($s4)
    lui        $t8,0xaff0
    ori        $t8,$t8,0x80
    lw         $t2,80($t3)
    ld         $t8,0($t8)
    addiu      $t2,$t2,-1
    sw         $t2,80($t3)
.L000015ec:
    ld         $s7,88($sp)
    ld         $s5,80($sp)
    ld         $s8,64($sp)
    ld         $s6,56($sp)
    ld         $s2,48($sp)
    ld         $s0,24($sp)
    ld         $ra,72($sp)
    ld         $s1,16($sp)
    move       $v0,$s3
    ld         $s3,8($sp)
    ld         $s4,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00001620:
    b          .L000015ec
    li         $s3,-1
.L00001628:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $ra,40($s4)
    sd         $s4,72($ra)
    ld         $v0,40($s4)
    lw         $t9,104($v0)
    beqz       $t9, .L000012dc
    move       $a0,$zero
.L00001648:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s4)
    lw         $at,104($v0)
    bnez       $at, .L00001648
    nop
    b          .L000012dc
    move       $a0,$zero
.L00001668:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s4
    ld         $a0,808($s0)
    jal        gfx_flow_credit_tnum_get
    lw         $s5,-31292($s1)
    ld         $v1,-30712($gp)
    sll        $a0,$v0,0xc
    and        $v1,$s5,$v1
    or         $v1,$v1,$a0
    sw         $v1,-31292($s1)
    ld         $a0,824($s0)
    sw         $v1,4212($a0)
    sync
    sw         $zero,-31288($s1)
    ld         $v0,824($s0)
    sw         $zero,4220($v0)
    sync
    b          .L00001558
    nop
.L000016b8:
    ld         $s6,-30624($gp)
    ld         $s7,-30720($gp)
    move       $s5,$zero
    daddiu     $s2,$s0,28464
    daddiu     $a1,$s7,728
.L000016cc:
    lh         $a2,790($s0)
    jal        cmn_err
    li         $a0,4
    move       $a0,$s2
    move       $a1,$zero
    move       $a2,$zero
    jal        init_sema
    li         $a3,-1
    move       $a0,$s6
    move       $a1,$s2
    jal        timeout
    li         $a2,500
    move       $a0,$s2
    jal        psema
    li         $a1,25
    slti       $a0,$s5,11
    beqz       $a0, .L00001728
    sd         $s3,8($sp)
    lw         $a3,28480($s0)
    beqz       $a3, .L000012c8
    addiu      $s5,$s5,1
    b          .L000016cc
    daddiu     $a1,$s7,728
.L00001728:
    b          .L000015ec
    li         $s3,-1

glabel gf_OdsyStart
    daddiu     $sp,$sp,-16
    sd         $s0,8($sp)
    ld         $s0,40($a0)
    sd         $ra,0($sp)
    sd         $zero,8($s0)
    sw         $zero,16($s0)
    sw         $zero,104($s0)
    sw         $zero,120($s0)
    sw         $zero,84($s0)
    sw         $zero,816($s0)
    li         $at,127
    li         $v0,1
    sh         $v0,794($s0)
    sw         $at,820($s0)
    jal        odsyInitDrawables
    move       $a0,$s0
    jal        kvtophys
    ld         $a0,880($s0)
    lui        $v1,0x1
    daddu      $v1,$s0,$v1
    dsrl32     $a0,$v0,0x0
    sw         $v0,-31244($v1)
    andi       $a0,$a0,0xffff
    sw         $a0,-31248($v1)
    ld         $a1,824($s0)
    ld         $ra,0($sp)
    sw         $a0,16436($a1)
    sync
    ld         $a0,824($s0)
    lw         $v1,-31244($v1)
    move       $v0,$zero
    sw         $v1,16444($a0)
    sync
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyLLPReset
    li         $a2,0xb438
    lbu        $a3,793($a0)
    daddu      $a2,$a2,$a0
    lw         $a2,0($a2)
    daddiu     $sp,$sp,-32
    ld         $at,824($a0)
    sd         $ra,16($sp)
    beqz       $a2, .L000017f8
    lw         $at,36($at)
    jal        xwidget_reset
    move       $a0,$a2
.L000017ec:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000017f8:
    ld         $a4,-30704($gp)
    andi       $a3,$a3,0x7
    dsll       $a3,$a3,0x6
    daddu      $a3,$a3,$a4
    sd         $a3,0($sp)
    lw         $a4,268($a3)
    sw         $zero,308($a3)
    li         $a1,10000
    jal        odsy_usdelay
    sd         $a4,8($sp)
    ld         $a5,0($sp)
    ld         $a4,8($sp)
    b          .L000017ec
    sw         $a4,268($a5)

glabel odsyLowLevelReset
    daddiu     $sp,$sp,-96
    sd         $ra,80($sp)
    ld         $a7,-30696($gp)
    sd         $s5,72($sp)
    lw         $at,0($a7)
    sd         $s0,32($sp)
    lui        $s0,0x1
    sd         $s2,48($sp)
    daddu      $s0,$a0,$s0
    srl        $at,$at,0xc
    li         $v0,0xd100
    lw         $a4,-31340($s0)
    andi       $at,$at,0xffff
    sd         $s1,40($sp)
    move       $s1,$a0
    sd         $s4,64($sp)
    beq        $at, $v0, .L00001bb0
    andi       $a4,$a4,0xf
.L00001878:
    move       $a0,$zero
    li         $a3,132
.L00001880:
    li         $ra,9
    lw         $t8,0($a7)
    addiu      $a6,$a4,-8
    li         $s2,1
    ld         $s4,-30680($gp)
    li         $s5,4
    srl        $t8,$t8,0x1c
    ld         $t0,-30688($gp)
    sllv       $t3,$s2,$a6
    sltu       $s5,$s5,$t8
    sd         $s3,56($sp)
    lui        $s3,0x8000
    nor        $t3,$t3,$zero
    ld         $a5,-30704($gp)
    beqz       $s5, .L00001ba8
    li         $t8,8
    ld         $a5,-30704($gp)
    lw         $at,0($t0)
    lw         $t9,188($a5)
    move       $a1,$t8
    and        $at,$t3,$at
    sw         $at,0($t0)
    sd         $t9,16($sp)
    b          .L00001904
    and        $t9,$t3,$t9
.L000018e4:
    daddu      $v0,$a6,$a5
.L000018e8:
    lw         $at,0($v0)
    and        $at,$t3,$at
    sw         $at,0($v0)
.L000018f4:
    addiu      $a1,$a1,1
    slti       $v0,$a1,16
    beqz       $v0, .L00001978
    addiu      $a3,$a3,8
.L00001904:
    beq        $a4, $a1, .L000018f4
    andi       $a6,$a1,0x7
    beqz       $a0, .L0000192c
    slti       $t2,$a1,16
    beq        $a1, $t8, .L000018f4
    nop
    beq        $a1, $ra, .L000018f4
    li         $v1,14
    beq        $a1, $v1, .L000018f4
    slti       $t2,$a1,16
.L0000192c:
    dsll       $t0,$a6,0x6
    daddu      $t0,$a5,$t0
    lw         $a2,276($t0)
    and        $a2,$s3,$a2
    li         $a6,124
    sltiu      $t1,$a1,1
    beqz       $a2, .L000018f4
    movz       $a6,$zero,$t1
    lw         $at,316($t0)
    andi       $at,$at,0x20
    beqz       $at, .L000018f4
    slti       $v0,$a1,8
    bnez       $v0, .L000018e4
    nop
    beqz       $t2, .L000018e4
    nop
    move       $a6,$a3
    b          .L000018e8
    daddu      $v0,$a6,$a5
.L00001978:
    beqz       $a0, .L00001998
    nop
    lw         $v1,0($a7)
    srl        $v1,$v1,0x1c
    sllv       $v1,$s2,$v1
    beqz       $v1, .L00001998
    nop
    sw         $t9,188($a5)
.L00001998:
    lw         $v0,0($s4)
    sw         $v0,0($sp)
    sw         $v0,4($sp)
    lw         $at,4($sp)
    li         $v0,-33
    and        $at,$v0,$at
    sw         $at,4($sp)
    lw         $t9,4($sp)
    li         $ra,-5
    and        $t9,$t9,$ra
    sw         $t9,4($sp)
    lw         $t8,4($sp)
    li         $a6,-3
    and        $t8,$a6,$t8
    sw         $t8,4($sp)
    andi       $s2,$a4,0x7
    lw         $t8,4($sp)
    dsll       $s2,$s2,0x6
    sw         $t8,0($s4)
    daddu      $s2,$a5,$s2
    lw         $t1,0($s4)
    lw         $t0,268($s2)
    sw         $t0,8($sp)
    sw         $t0,12($sp)
    lw         $a7,12($sp)
    and        $a6,$a6,$a7
    sw         $a6,12($sp)
    lw         $a2,12($sp)
    li         $a3,-9
    and        $a2,$a2,$a3
    sw         $a2,12($sp)
    lw         $a0,12($sp)
    li         $a1,-17
    and        $a0,$a0,$a1
    sw         $a0,12($sp)
    lw         $v1,12($sp)
    and        $v0,$v0,$v1
    sw         $v0,12($sp)
    lw         $ra,12($sp)
    li         $at,-65
    and        $ra,$ra,$at
    sw         $ra,12($sp)
    lw         $t8,12($sp)
    li         $t9,-129
    and        $t8,$t8,$t9
    sw         $t8,12($sp)
    lw         $t2,12($sp)
    li         $t3,-257
    and        $t2,$t2,$t3
    sw         $t2,12($sp)
    lui        $t1,0x1
    lw         $t0,12($sp)
    nor        $t1,$t1,$zero
    and        $t0,$t0,$t1
    sw         $t0,12($sp)
    lui        $a7,0x2
    lw         $a6,12($sp)
    nor        $a7,$a7,$zero
    and        $a6,$a6,$a7
    sw         $a6,12($sp)
    lui        $a3,0x7fff
    lw         $a2,12($sp)
    sd         $zero,24($sp)
    ori        $a3,$a3,0xffff
    and        $a2,$a2,$a3
    sw         $a2,12($sp)
    lw         $a1,12($sp)
    sw         $a1,268($s2)
    lw         $a0,268($s2)
    move       $a3,$zero
    beqz       $s5, .L00001ae8
    sw         $zero,-31320($s0)
    ori        $a3,$a3,0x200
.L00001abc:
    sw         $a3,-31320($s0)
    ld         $a4,824($s1)
    move       $a0,$s1
    lui        $a1,0xf
    sw         $a3,4108($a4)
    sync
    ori        $a1,$a1,0x4240
    jal        odsy_usdelay
    lw         $a2,268($s2)
    b          .L00001b40
    sw         $zero,-31320($s0)
.L00001ae8:
    ori        $a1,$a3,0x100
    ori        $a1,$a1,0x40
    ori        $a1,$a1,0x20
    ori        $a1,$a1,0x8
    ori        $a1,$a1,0x4
    ori        $a1,$a1,0x1
    sw         $a1,-31320($s0)
    ld         $a2,824($s1)
    lui        $a0,0x3
    sw         $a1,4108($a2)
    sync
    jal        us_delay
    ori        $a0,$a0,0xd40
    sw         $zero,-31320($s0)
    ld         $a2,824($s1)
    sw         $zero,4108($a2)
    sync
    jal        odsyLLPReset
    move       $a0,$s1
    move       $a0,$s1
    jal        odsy_usdelay
    li         $a1,1000
.L00001b40:
    lw         $a3,276($s2)
    and        $a3,$s3,$a3
    beqz       $a3, .L00001bd0
    ld         $a1,-30720($gp)
    lw         $a4,316($s2)
    andi       $a4,$a4,0x20
    beqz       $a4, .L00001bd0
    ld         $a1,-30720($gp)
    lw         $a3,8($sp)
    sw         $a3,268($s2)
    lw         $a2,0($sp)
    move       $a0,$s1
    lui        $a1,0x1
    sw         $a2,0($s4)
    ori        $a1,$a1,0x86a0
    jal        odsy_usdelay
    lw         $a5,268($s2)
.L00001b84:
    ld         $s2,48($sp)
    ld         $s3,56($sp)
    ld         $s4,64($sp)
    ld         $ra,80($sp)
    ld         $s5,72($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00001ba8:
    b          .L00001998
    lui        $s3,0x8000
.L00001bb0:
    lw         $a5,0($a7)
    srl        $a5,$a5,0x1
    andi       $a5,$a5,0x7ff
    bnez       $a5, .L00001878
    li         $a0,1
    b          .L00001880
    li         $a3,132
    ld         $a1,-30720($gp)
.L00001bd0:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,792
    ld         $a2,24($sp)
    addiu      $a2,$a2,2
    sd         $a2,24($sp)
    slti       $a2,$a2,7
    beqz       $a2, .L00001b84
    nop
    beqz       $s5, .L00001ae8
    lw         $a3,-31320($s0)
    b          .L00001abc
    ori        $a3,$a3,0x200

glabel odsyReset
    daddiu     $sp,$sp,-64
    sd         $s0,48($sp)
    sd         $s1,32($sp)
    ld         $s1,0($gp)
    sd         $s2,16($sp)
    dsll       $s2,$a0,0x3
    sd         $s3,8($sp)
    daddu      $s1,$s1,$s2
    ld         $s1,0($s1)
    move       $a1,$zero
    move       $s3,$a0
    sd         $ra,24($sp)
    ld         $s2,824($s1)
    jal        odsyFifoTimer
    move       $a0,$s1
    li         $v0,1
    sw         $v0,816($s1)
    lui        $s0,0x1
    sh         $zero,794($s1)
    daddu      $s0,$s0,$s1
    lw         $t8,-19352($s0)
    beqz       $t8, .L00002268
    sd         $s4,40($sp)
    jal        mutex_spinlock
    daddiu     $a0,$gp,0
    sw         $v0,0($sp)
    li         $a1,588
.L00001c70:
    lui        $t8,0xaff0
    daddiu     $s4,$s1,200
    move       $a0,$s4
    jal        bzero
    ld         $t8,128($t8)
    ld         $a1,-30720($gp)
    li         $a2,16
    move       $a0,$s4
    lh         $a3,790($s1)
    sw         $a3,240($s1)
    jal        strncpy
    daddiu     $a1,$a1,952
    li         $s4,-1
    sw         $s4,248($s1)
    sw         $s4,288($s1)
    sw         $s4,284($s1)
    li         $a5,588
    sw         $a5,236($s1)
    li         $a6,1024
    sh         $a6,234($s1)
    li         $a7,1280
    sh         $a7,232($s1)
    lw         $a4,36($s2)
    move       $a0,$s1
    jal        odsyLowLevelReset
    sw         $a4,-31340($s0)
    lw         $a5,-31340($s0)
    lbu        $a4,793($s1)
    li         $a3,-16
    andi       $a4,$a4,0xf
    and        $a3,$a3,$a5
    or         $a3,$a3,$a4
    sw         $a3,-31340($s0)
    lbu        $a2,793($s1)
    move       $a0,$s1
    lui        $a1,0x1
    ori        $a2,$a2,0x4200
    sw         $a2,36($s2)
    sync
    jal        odsy_usdelay
    ori        $a1,$a1,0x86a0
    lw         $a7,36($s2)
    sw         $a7,-31340($s0)
    sw         $zero,-31324($s0)
    lbu        $a6,792($s1)
    andi       $a6,$a6,0xf
    sll        $a6,$a6,0x13
    sw         $a6,-31324($s0)
    ld         $a7,824($s1)
    li         $a1,1
    sw         $a6,4100($a7)
    sync
    jal        odsyGatherInfo
    move       $a0,$s3
    lw         $t0,36($s2)
    sw         $t0,-31340($s0)
    daddiu     $a1,$s1,872
    jal        odsyMMinit
    ld         $a0,824($s1)
    lw         $t1,36($s2)
    li         $a2,1
    sw         $t1,-31340($s0)
    move       $a0,$s1
    jal        odsyInitDBE
    ld         $a1,0($gp)
    move       $a0,$s3
    lw         $t2,36($s2)
    move       $a1,$zero
    jal        odsyGatherInfo
    sw         $t2,-31340($s0)
    ld         $a1,-30608($gp)
    lw         $a2,36($s2)
    ld         $a0,-30720($gp)
    sw         $a2,-31340($s0)
    sd         $a1,0($gp)
    jal        kopt_find
    daddiu     $a0,$a0,960
    bnez       $v0, .L00002208
    move       $s3,$v0
.L00001dac:
    lw         $a3,-19352($s0)
    beqz       $a3, .L0000227c
    lw         $a1,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$gp,0
    sw         $zero,-31312($s0)
.L00001dc4:
    ld         $a3,824($s1)
    sw         $s4,4156($a3)
    sync
    sw         $zero,-31316($s0)
    ld         $a2,824($s1)
    sw         $s4,4124($a2)
    sync
    sw         $zero,-31308($s0)
    ld         $a1,824($s1)
    sw         $zero,4164($a1)
    sync
    sw         $zero,-31304($s0)
    ld         $a0,824($s1)
    sw         $zero,4172($a0)
    sync
    sw         $zero,-31300($s0)
    ld         $v1,824($s1)
    sw         $zero,4180($v1)
    sync
    sw         $zero,-31296($s0)
    ld         $v0,824($s1)
    sw         $zero,4188($v0)
    sync
    sw         $zero,-31292($s0)
    ld         $at,824($s1)
    sw         $zero,4212($at)
    sync
    sw         $zero,-31288($s0)
    ld         $ra,824($s1)
    sw         $zero,4220($ra)
    sync
    lw         $t9,36($s2)
    sw         $zero,-31276($s0)
    sw         $t9,-31340($s0)
    ld         $t8,824($s1)
    sw         $zero,4236($t8)
    sync
    sw         $zero,-31272($s0)
    ld         $t3,824($s1)
    sw         $zero,4252($t3)
    sync
    sw         $zero,-31268($s0)
    ld         $t2,824($s1)
    sw         $zero,4260($t2)
    sync
    sw         $zero,-31264($s0)
    ld         $t1,824($s1)
    sw         $zero,4268($t1)
    sync
    sw         $zero,-31260($s0)
    ld         $t0,824($s1)
    sw         $zero,16412($t0)
    sync
    sw         $zero,-31256($s0)
    ld         $a7,824($s1)
    sw         $zero,16420($a7)
    sync
    sw         $zero,-31252($s0)
    ld         $a6,824($s1)
    sw         $zero,16428($a6)
    sync
    sw         $zero,-31248($s0)
    ld         $a5,824($s1)
    sw         $zero,16436($a5)
    sync
    sw         $zero,-31244($s0)
    ld         $a4,824($s1)
    sw         $zero,16444($a4)
    sync
    lw         $a2,-31240($s0)
    li         $a1,-16
    lw         $a3,36($s2)
    sw         $a3,-31340($s0)
    and        $a1,$a1,$a2
    lui        $a0,0x1
    ori        $a1,$a1,0xc
    sw         $a1,-31240($s0)
    or         $a0,$a0,$a1
    sw         $a0,-31240($s0)
    lbu        $a1,792($s1)
    li         $v0,0xff00
    li         $a2,-241
    andi       $a1,$a1,0xf
    and        $a0,$a0,$a2
    sll        $a1,$a1,0x4
    nor        $v0,$v0,$zero
    or         $a0,$a0,$a1
    lui        $v1,0x1
    sw         $a0,-31240($s0)
    and        $v0,$a0,$v0
    ori        $v1,$v1,0xffff
    ori        $v0,$v0,0xc000
    sw         $v0,-31240($s0)
    and        $v0,$v0,$v1
    sw         $v0,-31240($s0)
    ld         $v1,824($s1)
    sw         $v0,16452($v1)
    sync
    lw         $ra,-31224($s0)
    lui        $at,0xffff
    lui        $t3,0xf
    and        $ra,$ra,$at
    nor        $t3,$t3,$zero
    ori        $ra,$ra,0x12
    lui        $t9,0x4
    sw         $ra,-31224($s0)
    and        $t3,$ra,$t3
    lui        $t8,0x100
    or         $t3,$t3,$t9
    sw         $t3,-31224($s0)
    or         $t3,$t3,$t8
    sw         $t3,-31224($s0)
    lbu        $t8,792($s1)
    lui        $t9,0xf0
    nor        $t9,$t9,$zero
    andi       $t8,$t8,0xf
    and        $t3,$t3,$t9
    sll        $t8,$t8,0x14
    or         $t3,$t3,$t8
    sw         $t3,-31224($s0)
    ld         $t8,824($s1)
    sw         $t3,16404($t8)
    sync
    lw         $t2,36($s2)
    sw         $zero,-31236($s0)
    sw         $t2,-31340($s0)
    ld         $t1,824($s1)
    sw         $zero,16460($t1)
    sync
    sw         $zero,-31232($s0)
    ld         $t0,824($s1)
    sw         $zero,16468($t0)
    sync
    sw         $zero,-31228($s0)
    ld         $a7,824($s1)
    sw         $zero,16476($a7)
    sync
    lw         $a6,36($s2)
    sw         $a6,-31340($s0)
    sw         $zero,4284($s2)
    sync
    sw         $s4,4300($s2)
    sync
    lw         $a5,36($s2)
    sw         $a5,-31340($s0)
    lw         $a1,260($s1)
    li         $a4,2
    beq        $a1, $a4, .L0000228c
    li         $a6,-5
    li         $a4,4
    beq        $a1, $a4, .L000021e8
    ld         $a0,-30720($gp)
    jal        printf
    daddiu     $a0,$a0,832
.L0000202c:
    lw         $a1,256($s1)
    li         $a2,2
    beq        $a1, $a2, .L0000229c
    ld         $s3,-30720($gp)
    li         $a3,3
    beq        $a1, $a3, .L000021f8
    li         $t3,-3
    jal        printf
    daddiu     $a0,$s3,872
.L00002050:
    lw         $a1,252($s1)
    li         $a0,32
    beq        $a1, $a0, .L000022ac
    li         $v0,128
    li         $a4,33
    beq        $a1, $a4, .L000022c0
    li         $a5,64
    beq        $a1, $a5, .L000022dc
    nop
    beq        $a1, $v0, .L00002254
    li         $a4,-25
    jal        printf
    daddiu     $a0,$s3,912
.L00002084:
    move       $a0,$s1
    jal        odsy_usdelay
    li         $a1,400
    lw         $a7,-31324($s0)
    li         $a6,-33
    and        $a6,$a6,$a7
    sw         $a6,-31324($s0)
    ld         $a7,824($s1)
    ld         $s3,8($sp)
    li         $a1,400
    sw         $a6,4100($a7)
    sync
    ld         $s4,40($sp)
    jal        odsy_usdelay
    move       $a0,$s1
    lw         $t0,-31324($s0)
    ori        $t0,$t0,0x20
    sw         $t0,-31324($s0)
    ld         $t1,824($s1)
    li         $a1,400
    sw         $t0,4100($t1)
    sync
    jal        odsy_usdelay
    move       $a0,$s1
    ld         $t8,824($s1)
    lw         $t3,-31324($s0)
    sw         $t3,4100($t8)
    sync
    lw         $t2,-31324($s0)
    li         $t1,-33
    and        $t1,$t1,$t2
    sw         $t1,-31324($s0)
    ld         $t2,824($s1)
    li         $a1,400
    sw         $t1,4100($t2)
    sync
    jal        odsy_usdelay
    move       $a0,$s1
    lw         $t9,-31324($s0)
    ori        $t9,$t9,0x100
    sw         $t9,-31324($s0)
    ld         $ra,824($s1)
    li         $a1,400
    sw         $t9,4100($ra)
    sync
    jal        odsy_usdelay
    move       $a0,$s1
    lw         $t0,36($s2)
    sw         $t0,-31340($s0)
    ld         $a7,824($s1)
    sw         $zero,52($a7)
    sync
    ld         $a6,824($s1)
    sw         $zero,4164($a6)
    sync
    ld         $a5,824($s1)
    li         $v0,-1
    sw         $v0,4156($a5)
    sync
    ld         $a4,824($s1)
    sw         $zero,4212($a4)
    sync
    ld         $a3,824($s1)
    sw         $zero,4228($a3)
    sync
    ld         $a2,824($s1)
    li         $a1,1
    sw         $a1,4228($a2)
    sync
    ld         $a0,824($s1)
    sw         $zero,4228($a0)
    sync
    ld         $v1,824($s1)
    sw         $v0,4124($v1)
    sync
    ld         $at,824($s1)
    sw         $zero,92($at)
    sync
    lw         $ra,36($s2)
    sw         $ra,-31340($s0)
    jal        odsy_hpipe_invalidate
    move       $a0,$s1
    ld         $s2,16($sp)
    ld         $ra,24($sp)
    ld         $s0,48($sp)
    sw         $zero,816($s1)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000021e8:
    lw         $t1,-31324($s0)
    ori        $t1,$t1,0x4
    b          .L0000202c
    sw         $t1,-31324($s0)
.L000021f8:
    lw         $t2,-31324($s0)
    and        $t2,$t2,$t3
    b          .L00002050
    sw         $t2,-31324($s0)
.L00002208:
    jal        strlen
    move       $a0,$v0
    sltiu      $t8,$v0,9
    beqz       $t8, .L00001dac
    ld         $a1,-30720($gp)
    move       $a0,$s3
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,968
    beqz       $v0, .L000022f4
.L00002230:
    ld         $a1,-30720($gp)
    move       $a0,$s3
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,976
    bnez       $v0, .L00001dac
    ld         $a2,-30608($gp)
    b          .L00001dac
    sd         $a2,0($gp)
.L00002254:
    lw         $a3,-31324($s0)
    and        $a3,$a3,$a4
    ori        $a3,$a3,0x10
    b          .L00002084
    sw         $a3,-31324($s0)
.L00002268:
    ld         $a0,-30712($gp)
    jal        mutex_lock
    li         $a1,25
    b          .L00001c70
    li         $a1,588
.L0000227c:
    jal        mutex_unlock
    ld         $a0,-30712($gp)
    b          .L00001dc4
    sw         $zero,-31312($s0)
.L0000228c:
    lw         $a5,-31324($s0)
    and        $a5,$a5,$a6
    b          .L0000202c
    sw         $a5,-31324($s0)
.L0000229c:
    lw         $a7,-31324($s0)
    ori        $a7,$a7,0x2
    b          .L00002050
    sw         $a7,-31324($s0)
.L000022ac:
    lw         $t0,-31324($s0)
    li         $t1,-25
    and        $t0,$t0,$t1
    b          .L00002084
    sw         $t0,-31324($s0)
.L000022c0:
    lw         $t2,-31324($s0)
    li         $t3,-25
    and        $t2,$t2,$t3
    ori        $t2,$t2,0x10
    sw         $t2,-31324($s0)
    b          .L00002084
    sw         $a0,252($s1)
.L000022dc:
    lw         $t8,-31324($s0)
    li         $t9,-25
    and        $t8,$t8,$t9
    ori        $t8,$t8,0x8
    b          .L00002084
    sw         $t8,-31324($s0)
.L000022f4:
    lw         $at,280($s1)
    li         $ra,1
    bne        $ra, $at, .L00002230
    ld         $v0,-30600($gp)
    b          .L00002230
    sd         $v0,0($gp)

glabel odsyInitCfifo
    daddiu     $sp,$sp,-80
    sd         $ra,56($sp)
    sd         $s1,32($sp)
    ld         $s1,0($gp)
    sd         $s2,40($sp)
    dsll       $s2,$a0,0x3
    sd         $s0,64($sp)
    daddu      $s1,$s1,$s2
    ld         $s1,0($s1)
    sd         $s3,24($sp)
    ld         $s2,72($s1)
    ld         $at,824($s1)
    move       $s3,$a1
    beqz       $a1, .L00002380
    sd         $at,48($sp)
    jal        splhi
    nop
    lw         $t8,4($s2)
    ori        $t8,$t8,0x2
    sw         $t8,4($s2)
    ld         $a0,808($s1)
    beqz       $a0, .L00002378
    move       $s0,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00002600
    nop
.L00002378:
    jal        splx
    move       $a0,$s0
.L00002380:
    ld         $at,-30648($gp)
    ld         $v0,-30656($gp)
    lui        $a2,0x1
    ld         $t8,48($sp)
    ld         $ra,-30664($gp)
    li         $a0,107
    lui        $s0,0x11
    ld         $v1,-30672($gp)
    dsll32     $a0,$a0,0x4
    daddu      $s0,$s0,$t8
    ori        $a2,$a2,0x854
    sw         $a2,0($s0)
    sync
    lui        $a1,0xfff
    sw         $zero,0($s0)
    sync
    ori        $a1,$a1,0xffff
    sw         $a1,0($s0)
    sync
    sd         $a0,0($s0)
    sync
    lui        $t9,0xaff0
    sd         $v1,0($s0)
    sync
    ori        $t9,$t9,0x80
    sd         $ra,0($s0)
    sync
    li         $a1,2000
    sd         $v0,0($s0)
    sync
    sd         $at,0($s0)
    sync
    lui        $ra,0x1
    ori        $ra,$ra,0x46
    sw         $ra,0($s0)
    sync
    move       $a0,$s1
    jal        odsy_usdelay
    ld         $t9,0($t9)
    ld         $a2,824($s1)
    lui        $a1,0x20
    ori        $a1,$a1,0x1594
    daddu      $a1,$a1,$a2
    lui        $a2,0x3d
    lw         $a1,0($a1)
    ori        $a2,$a2,0x46
    lui        $a0,0x11
    bne        $a1, $a2, .L00002584
    lui        $v0,0x2700
    li         $t0,5
    move       $a7,$zero
    ori        $t1,$v0,0x8000
    lui        $a5,0x4000
    ld         $a6,-30592($gp)
    lui        $t2,0x2600
    lui        $t3,0x2e00
    ori        $t3,$t3,0x8380
    sw         $t3,0($s0)
    sync
    ori        $t2,$t2,0x807f
    sw         $t2,0($s0)
    sync
    sw         $t1,0($s0)
    sync
    ori        $a5,$a5,0x8000
    addiu      $a7,$a7,1
.L00002488:
    li         $v0,5
    move       $a4,$t0
    daddu      $t3,$a4,$a4
.L00002494:
    daddu      $t3,$a6,$t3
    lhu        $t3,2000($t3)
    addiu      $a4,$a4,-1
    sra        $t8,$t3,0xa
    andi       $t3,$t3,0x3ff
    sll        $t8,$t8,0x17
    addiu      $v0,$v0,-1
    or         $t3,$t3,$t8
    or         $t3,$a5,$t3
    sw         $t3,0($s0)
    sync
    bgez       $v0, .L00002494
    daddu      $t3,$a4,$a4
    addiu      $t0,$t0,6
    slti       $t8,$a7,2048
    bnez       $t8, .L00002488
    addiu      $a7,$a7,1
    ld         $ra,824($s1)
    ld         $t9,-30640($gp)
    daddu      $ra,$a0,$ra
    sd         $t9,0($ra)
    sync
    beqz       $s3, .L00002568
    move       $v0,$zero
    jal        splhi
    nop
    lw         $at,4($s2)
    move       $s0,$v0
    li         $v0,-3
    and        $at,$at,$v0
    sw         $at,4($s2)
    ld         $a0,808($s1)
    beqz       $a0, .L0000255c
    nop
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000255c
    li         $a2,0x85c8
    daddu      $a2,$a2,$s1
    li         $a0,1
    sw         $a0,0($a2)
    ld         $a1,824($s1)
    sw         $a0,4220($a1)
    sync
    ld         $v1,824($s1)
    ld         $a0,808($s1)
    lw         $v1,4204($v1)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $v1,4($sp)
.L0000255c:
    jal        splx
    move       $a0,$s0
    move       $v0,$zero
.L00002568:
    ld         $s3,24($sp)
    ld         $ra,56($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00002584:
    beqz       $s3, .L000025f8
    nop
    jal        splhi
    nop
    lw         $a3,4($s2)
    li         $a4,-3
    and        $a3,$a3,$a4
    sw         $a3,4($s2)
    ld         $a0,808($s1)
    beqz       $a0, .L000025f0
    move       $s0,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000025f0
    li         $t0,0x85c8
    daddu      $t0,$t0,$s1
    li         $a6,1
    sw         $a6,0($t0)
    ld         $a7,824($s1)
    sw         $a6,4220($a7)
    sync
    ld         $a5,824($s1)
    ld         $a0,808($s1)
    lw         $a5,4204($a5)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $a5,0($sp)
.L000025f0:
    jal        splx
    move       $a0,$s0
.L000025f8:
    b          .L00002568
    li         $v0,1
.L00002600:
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s2
    ld         $a0,808($s1)
    lui        $t1,0x1
    daddu      $t1,$s1,$t1
    sd         $t1,8($sp)
    lw         $t1,-31292($t1)
    jal        gfx_flow_credit_tnum_get
    sd         $t1,16($sp)
    ld         $t9,-30712($gp)
    ld         $t8,16($sp)
    ld         $t3,8($sp)
    and        $t8,$t8,$t9
    sll        $t9,$v0,0xc
    or         $t8,$t8,$t9
    sw         $t8,-31292($t3)
    ld         $t9,824($s1)
    sw         $t8,4212($t9)
    sync
    sw         $zero,-31288($t3)
    ld         $t2,824($s1)
    sw         $zero,4220($t2)
    sync
    b          .L00002378
    nop

glabel odsyInitDMA
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    ld         $s0,0($gp)
    dsll       $t8,$a0,0x3
    daddu      $s0,$s0,$t8
    move       $a1,$zero
    ld         $s0,0($s0)
    move       $a2,$zero
    li         $a3,-1
    sd         $ra,0($sp)
    jal        init_mutex
    daddiu     $a0,$s0,5800
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s0,5816
    jal        init_sv
    sd         $s3,16($sp)
    ld         $v0,888($s0)
    sd         $zero,0($v0)
    ld         $at,888($s0)
    sd         $zero,8($at)
    ld         $ra,888($s0)
    sd         $zero,16($ra)
    ld         $t9,888($s0)
    daddiu     $s3,$s0,29952
    move       $a0,$s3
    jal        OdsyAlloc32kSlot
    sd         $zero,24($t9)
    ld         $a0,880($s0)
    sw         $v0,5840($s0)
    daddu      $a1,$v0,$v0
    daddu      $a0,$a0,$a1
    sd         $a0,5824($s0)
    li         $v1,0xffff
    sh         $v1,0($a0)
    sh         $v1,5836($s0)
    sh         $zero,5834($s0)
    jal        OdsyAlloc32kSlot
    move       $a0,$s3
    ld         $s3,16($sp)
    ld         $a3,880($s0)
    sw         $v0,6904($s0)
    daddu      $a4,$v0,$v0
    daddu      $a3,$a3,$a4
    sd         $a3,6896($s0)
    ld         $ra,0($sp)
    li         $a2,0xffff
    sh         $a2,0($a3)
    sd         $zero,7952($s0)
    sd         $zero,7944($s0)
    sd         $zero,6888($s0)
    sd         $zero,6880($s0)
    sw         $zero,6912($s0)
    sw         $zero,5848($s0)
    sw         $zero,6908($s0)
    sw         $zero,5844($s0)
    sd         $zero,28448($s0)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyInitInterrupts
    daddiu     $sp,$sp,-32
    sd         $s3,16($sp)
    ld         $s3,0($gp)
    dsll       $t8,$a0,0x3
    daddu      $s3,$s3,$t8
    ld         $s3,0($s3)
    lui        $v0,0x1
    daddu      $v0,$v0,$s3
    ld         $a3,-19688($v0)
    sw         $a3,-31332($v0)
    ld         $a4,824($s3)
    sd         $ra,0($sp)
    sw         $a3,60($a4)
    sync
    lw         $a4,-31336($v0)
    lui        $a2,0xff
    lh         $a3,-19704($v0)
    ori        $a2,$a2,0xffff
    sd         $v0,8($sp)
    ld         $a0,-19744($v0)
    sll        $a3,$a3,0x18
    and        $a2,$a2,$a4
    lui        $a1,0x80
    or         $a2,$a2,$a3
    sw         $a2,-31336($v0)
    lui        $v1,0x40
    or         $a1,$a1,$a2
    sw         $a1,-31336($v0)
    lui        $at,0x20
    or         $v1,$v1,$a1
    sw         $v1,-31336($v0)
    or         $at,$at,$v1
    jal        xtalk_intr_target_get
    sw         $at,-31336($v0)
    ld         $v1,8($sp)
    lui        $a5,0xffff
    lui        $a2,0xfff0
    lw         $t2,-31336($v1)
    andi       $t8,$v0,0xf
    ori        $a2,$a2,0xffff
    ld         $t3,-19688($v1)
    sll        $t8,$t8,0x10
    and        $t2,$a2,$t2
    dsrl32     $t3,$t3,0x0
    or         $t2,$t2,$t8
    andi       $t3,$t3,0xffff
    and        $t2,$a5,$t2
    or         $t2,$t2,$t3
    sw         $t2,-31336($v1)
    ld         $t3,824($s3)
    sw         $t2,52($t3)
    sync
    lw         $t1,-31328($v1)
    li         $t0,-7937
    ori        $t1,$t1,0x2000
    sw         $t1,-31328($v1)
    and        $t0,$t1,$t0
    ori        $t0,$t0,0x1c00
    sw         $t0,-31328($v1)
    ori        $t0,$t0,0xff
    sw         $t0,-31328($v1)
    ld         $t1,824($s3)
    li         $a7,0xff00
    sw         $t0,92($t1)
    nor        $a7,$a7,$zero
    sync
    lw         $t9,-31300($v1)
    lui        $t2,0xff
    lui        $t0,0xff
    lh         $t8,-19696($v1)
    ori        $t2,$t2,0xffff
    nor        $t0,$t0,$zero
    lh         $t3,-19698($v1)
    sll        $t8,$t8,0x18
    and        $t2,$t2,$t9
    lh         $t1,-19700($v1)
    andi       $t3,$t3,0xff
    or         $t2,$t2,$t8
    sll        $t3,$t3,0x10
    and        $t0,$t2,$t0
    lh         $a4,-19702($v1)
    andi       $t1,$t1,0xff
    or         $t0,$t0,$t3
    sll        $t1,$t1,0x8
    sw         $t2,-31300($v1)
    and        $a7,$t0,$a7
    li         $a6,-256
    sw         $t0,-31300($v1)
    or         $a7,$a7,$t1
    andi       $a4,$a4,0xff
    sw         $a7,-31300($v1)
    and        $a6,$a7,$a6
    or         $a4,$a4,$a6
    sw         $a4,-31300($v1)
    ld         $a6,824($s3)
    sw         $a4,4180($a6)
    sync
    ld         $a1,-19680($v1)
    sw         $a1,-31304($v1)
    ld         $a3,824($s3)
    sw         $a1,4172($a3)
    sync
    lw         $a0,-31336($v1)
    lui        $at,0x3c00
    lw         $a1,-31296($v1)
    srl        $a0,$a0,0x10
    li         $a3,-961
    andi       $a0,$a0,0xf
    and        $a1,$a1,$a3
    sll        $a3,$a0,0x6
    nor        $at,$at,$zero
    or         $a1,$a1,$a3
    and        $v0,$a2,$a1
    sll        $a2,$a0,0x10
    lui        $t9,0x3e0
    or         $v0,$v0,$a2
    sll        $a0,$a0,0x1a
    and        $at,$v0,$at
    nor        $t9,$t9,$zero
    or         $at,$at,$a0
    sw         $a1,-31296($v1)
    lui        $a0,0x380
    and        $t9,$at,$t9
    li         $t8,-63
    sw         $v0,-31296($v1)
    or         $t9,$t9,$a0
    li         $t3,0xf800
    sw         $at,-31296($v1)
    and        $t8,$t9,$t8
    nor        $t3,$t3,$zero
    sw         $t9,-31296($v1)
    ori        $t8,$t8,0x38
    sw         $t8,-31296($v1)
    and        $t3,$t8,$t3
    ori        $t3,$t3,0xe000
    sw         $t3,-31296($v1)
    ori        $t3,$t3,0x1
    sw         $t3,-31296($v1)
    lui        $t8,0x10
    ori        $t3,$t3,0x400
    sw         $t3,-31296($v1)
    or         $t3,$t3,$t8
    sw         $t3,-31296($v1)
    ld         $t8,824($s3)
    sw         $t3,4188($t8)
    lui        $t2,0x1e00
    sync
    lw         $t3,-31336($v1)
    nor        $t2,$t2,$zero
    lui        $t0,0x1f0
    lw         $t8,-31308($v1)
    lui        $a2,0x2000
    srl        $t3,$t3,0x10
    or         $t8,$a2,$t8
    andi       $t3,$t3,0xf
    and        $t2,$t8,$t2
    sll        $t3,$t3,0x19
    nor        $t0,$t0,$zero
    ld         $a6,-19680($v1)
    or         $t2,$t2,$t3
    sw         $t8,-31308($v1)
    lui        $t3,0x1c0
    and        $t0,$t2,$t0
    lui        $t1,0x8
    sw         $t2,-31308($v1)
    or         $t0,$t0,$t3
    lui        $a7,0x1
    sw         $t0,-31308($v1)
    or         $t1,$t0,$t1
    lui        $t0,0x2
    sw         $t1,-31308($v1)
    or         $a7,$a7,$t1
    lui        $t9,0x4
    sw         $a7,-31308($v1)
    or         $t0,$a7,$t0
    dsrl32     $a6,$a6,0x0
    sw         $t0,-31308($v1)
    or         $a7,$t9,$t0
    andi       $a6,$a6,0xffff
    sw         $a7,-31308($v1)
    and        $a5,$a5,$a7
    or         $a5,$a5,$a6
    sw         $a5,-31308($v1)
    ld         $a6,824($s3)
    ld         $ra,0($sp)
    sw         $a5,4164($a6)
    lui        $a4,0x7fff
    sync
    lw         $a3,-31312($v1)
    ori        $a4,$a4,0xffff
    ld         $at,-30632($gp)
    lui        $a5,0x4000
    and        $a3,$a3,$a4
    sw         $a3,-31312($v1)
    lui        $a4,0x200
    or         $a3,$a3,$a5
    sw         $a3,-31312($v1)
    lui        $a5,0x1000
    or         $a2,$a2,$a3
    sw         $a2,-31312($v1)
    lui        $a3,0x800
    or         $a2,$a2,$a5
    sw         $a2,-31312($v1)
    nor        $a4,$a4,$zero
    or         $a2,$a2,$a3
    sw         $a2,-31312($v1)
    lui        $a3,0x100
    and        $a2,$a2,$a4
    sw         $a2,-31312($v1)
    lui        $a1,0x80
    or         $a2,$a2,$a3
    sw         $a2,-31312($v1)
    lui        $a0,0x40
    or         $a1,$a1,$a2
    sw         $a1,-31312($v1)
    lui        $v0,0x20
    or         $a0,$a0,$a1
    sw         $a0,-31312($v1)
    or         $v0,$v0,$a0
    sw         $v0,-31312($v1)
    or         $t9,$t9,$v0
    sw         $t9,-31312($v1)
    and        $t9,$t9,$at
    sw         $t9,-31312($v1)
    li         $v0,-4097
    ori        $t9,$t9,0x2000
    sw         $t9,-31312($v1)
    li         $at,-2049
    and        $t9,$t9,$v0
    sw         $t9,-31312($v1)
    and        $t9,$t9,$at
    sw         $t9,-31312($v1)
    li         $at,-513
    ori        $t9,$t9,0x400
    sw         $t9,-31312($v1)
    and        $t9,$t9,$at
    sw         $t9,-31312($v1)
    ori        $t9,$t9,0x100
    sw         $t9,-31312($v1)
    ori        $t9,$t9,0x80
    sw         $t9,-31312($v1)
    ori        $t9,$t9,0x10
    sw         $t9,-31312($v1)
    ori        $t9,$t9,0x8
    sw         $t9,-31312($v1)
    ori        $t9,$t9,0x4
    sw         $t9,-31312($v1)
    li         $at,-2
    ori        $t9,$t9,0x2
    sw         $t9,-31312($v1)
    and        $t9,$t9,$at
    sw         $t9,-31312($v1)
    ld         $at,824($s3)
    sw         $t9,4148($at)
    sync
    ld         $s3,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyDisableInterrupts
    lui        $a2,0x1
    daddu      $a2,$a0,$a2
    lui        $a6,0x20
    lw         $a5,-31336($a2)
    nor        $a6,$a6,$zero
    and        $a5,$a5,$a6
    sw         $a5,-31336($a2)
    ld         $a6,824($a0)
    lui        $a1,0x4
    sw         $a5,52($a6)
    lui        $a4,0x1
    sync
    lw         $v1,-31308($a2)
    lui        $a3,0x2
    nor        $a4,$a4,$zero
    nor        $a3,$a3,$zero
    and        $v1,$v1,$a4
    sw         $v1,-31308($a2)
    nor        $a1,$a1,$zero
    and        $v1,$v1,$a3
    sw         $v1,-31308($a2)
    and        $v1,$v1,$a1
    sw         $v1,-31308($a2)
    ld         $a1,824($a0)
    sw         $v1,4164($a1)
    sync
    ld         $v0,824($a0)
    li         $at,-1
    sw         $at,4156($v0)
    sync
    jr         $ra
    nop

glabel odsy_DCDResetDone
    li         $at,31
    sb         $at,32($a0)
    daddiu     $sp,$sp,-32
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    move       $s1,$zero
    sd         $ra,24($sp)
    move       $a0,$s0
.L00002c08:
    li         $a1,3
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,0
    li         $a1,1000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    lbu        $v0,0($sp)
    andi       $v0,$v0,0x2
    addiu      $s1,$s1,1
    beqz       $v0, .L00002c4c
    slti       $v0,$s1,5000
    li         $v0,1
.L00002c38:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002c4c:
    bnez       $v0, .L00002c08
    move       $a0,$s0
    b          .L00002c38
    move       $v0,$zero

glabel odsyInitDBE
    daddiu     $sp,$sp,-240
    sd         $a1,88($sp)
    sd         $a2,96($sp)
    sd         $s2,192($sp)
    sd         $s3,200($sp)
    sd         $s6,208($sp)
    sd         $ra,216($sp)
    sd         $s5,120($sp)
    ld         $s5,824($a0)
    sd         $s1,112($sp)
    lui        $s1,0x1
    sb         $zero,0($sp)
    daddu      $s1,$a0,$s1
    lw         $at,-19352($s1)
    sd         $s7,224($sp)
    sd         $s0,104($sp)
    move       $s0,$a0
    beqz       $at, .L00003078
    sd         $s4,232($sp)
    move       $a0,$s5
.L00002cac:
    jal        odsy_poll_dfifo_level
    li         $a1,10
    bnez       $v0, .L00002ff0
    lui        $s3,0x40
    ld         $a0,-30624($gp)
    daddu      $s7,$s3,$s5
    move       $v0,$zero
    sd         $a0,0($s7)
    sync
.L00002cd0:
    addiu      $v0,$v0,1
    slti       $t8,$v0,4
    sd         $a0,0($s7)
    sync
    bnez       $t8, .L00002cd0
    ld         $t9,-30616($gp)
    sd         $t9,0($s7)
    sync
    move       $a1,$zero
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    bnez       $v0, .L00002ff4
    lw         $a5,-19352($s1)
    lui        $ra,0x23
    daddu      $ra,$ra,$s5
    lw         $at,9244($ra)
    sw         $at,-19496($s1)
    lw         $ra,9236($ra)
    beqz       $a5, .L000031c0
    sw         $ra,-19492($s1)
    move       $a1,$s0
.L00002d24:
    li         $s2,0xb3e0
    move       $a2,$zero
    daddu      $s2,$s0,$s2
    jal        odsy_i2c_init_port_handle
    move       $a0,$s2
    bnez       $v0, .L00003ccc
    sd         $s2,72($sp)
    li         $a2,1
.L00002d44:
    li         $s6,0xb408
    move       $a1,$s0
    daddu      $s6,$s0,$s6
    ld         $s2,-30720($gp)
    jal        odsy_i2c_init_port_handle
    move       $a0,$s6
    bnez       $v0, .L00003ce4
    daddiu     $a1,$s2,1032
    lw         $t8,-19352($s1)
.L00002d68:
    beqz       $t8, .L00003214
    li         $a1,15
.L00002d70:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    bnez       $v0, .L00002ff4
    lw         $a5,-19352($s1)
    ld         $ra,824($s0)
    lui        $t9,0x23
    daddu      $t9,$t9,$ra
    lw         $t9,14348($t9)
    beqz       $a5, .L0000336c
    sd         $t9,160($sp)
    ld         $at,160($sp)
.L00002d9c:
    sll        $at,$at,0x15
    bltz       $at, .L0000322c
    nop
    lhu        $v1,296($s0)
    beqz       $v1, .L000034cc
    li         $v0,3
.L00002db4:
    lhu        $a0,298($s0)
    li         $s2,1024
    sw         $zero,700($s0)
    li         $s4,1280
    beq        $v0, $a0, .L000033c0
    sw         $zero,704($s0)
    lhu        $a1,308($s0)
    beqz       $a1, .L0000325c
.L00002dd4:
    move       $a0,$s0
.L00002dd8:
    jal        odsy_ProbeCompositor
    daddiu     $a1,$s0,700
    beqz       $v0, .L00003278
.L00002de4:
    move       $a0,$s0
.L00002de8:
    jal        odsy_ProbeRainier
    daddiu     $a1,$s0,708
    sw         $s2,12($sp)
    sw         $s4,8($sp)
.L00002df8:
    sw         $s2,12($sp)
    sw         $s4,8($sp)
    lw         $a2,704($s0)
    beqz       $a2, .L0000345c
    move       $a0,$s0
    sw         $zero,24($sp)
.L00002e10:
    daddiu     $a1,$sp,8
    move       $a0,$s0
    sw         $zero,20($sp)
    li         $a3,8
    jal        odsyConfigFb
    sw         $a3,16($sp)
    ld         $a4,96($sp)
    beqz       $a4, .L00003234
    lw         $a5,-19352($s1)
    beqz       $a5, .L000034b4
    move       $a0,$s5
.L00002e3c:
    jal        odsy_poll_dfifo_level
    li         $a1,14
    beqz       $v0, .L000032c8
    sltu       $a1,$zero,$v0
    lw         $a5,-19352($s1)
.L00002e50:
    bnez       $a1, .L00002ff4
    nop
.L00002e58:
    beqz       $a5, .L00003728
    li         $s4,-1
.L00002e60:
    lw         $a2,64($sp)
    move       $s2,$zero
    dsll32     $s4,$s4,0x0
    ld         $a4,-30592($gp)
    li         $s6,-1
    lui        $a3,0x4b
    and        $a2,$a2,$a4
    ori        $a3,$a3,0x5e00
    or         $a2,$a2,$a3
    li         $a3,-512
    dsrl32     $s6,$s6,0x0
    and        $a2,$a2,$a3
    li         $a1,10496
    dsll32     $a2,$a2,0x0
    lui        $a0,0x3000
    dsrl32     $a2,$a2,0x0
    ori        $a0,$a0,0x1
    and        $a2,$s6,$a2
.L00002ea8:
    sra        $t9,$s2,0x1f
    xor        $t8,$s2,$t9
    subu       $t8,$t8,$t9
    andi       $t8,$t8,0xf
    xor        $t8,$t8,$t9
    subu       $t8,$t8,$t9
    sd         $a2,144($sp)
    beqz       $t8, .L00003344
    sd         $a1,184($sp)
.L00002ecc:
    sll        $ra,$a1,0xe
    or         $ra,$a0,$ra
    addiu      $s2,$s2,1
    dsll32     $ra,$ra,0x0
    slti       $t9,$s2,32
    and        $ra,$s4,$ra
    or         $ra,$a2,$ra
    sd         $ra,0($s7)
    sync
    bnez       $t9, .L00002ea8
    addiu      $a1,$a1,1
    lw         $a2,68($sp)
    li         $a3,-256
    and        $a2,$a2,$a3
    dsll32     $a2,$a2,0x0
    move       $s2,$zero
    dsrl32     $a2,$a2,0x0
    li         $a1,10528
    and        $a2,$s6,$a2
.L00002f18:
    sra        $a5,$s2,0x1f
    xor        $a4,$s2,$a5
    subu       $a4,$a4,$a5
    andi       $a4,$a4,0xf
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    sd         $a2,136($sp)
    beqz       $a4, .L0000348c
    sd         $a1,176($sp)
.L00002f3c:
    sll        $a6,$a1,0xe
    or         $a6,$a0,$a6
    addiu      $s2,$s2,1
    dsll32     $a6,$a6,0x0
    slti       $a5,$s2,8
    and        $a6,$s4,$a6
    or         $a6,$a2,$a6
    sd         $a6,0($s7)
    sync
    bnez       $a5, .L00002f18
    addiu      $a1,$a1,1
    move       $a0,$s5
    jal        odsy_poll_dfifo_level
    li         $a1,11
    ld         $t2,-30560($gp)
    ld         $t3,-30568($gp)
    ld         $t8,-30576($gp)
    ld         $t9,-30584($gp)
    sd         $t9,0($s7)
    sync
    sd         $t8,0($s7)
    sync
    sd         $t3,0($s7)
    sync
    sd         $t2,0($s7)
    sync
    sw         $zero,-19664($s1)
    ld         $t1,824($s0)
    ld         $t0,-30552($gp)
    daddu      $t1,$s3,$t1
    sd         $t0,0($t1)
    sync
    lw         $a7,-19352($s1)
    beqz       $a7, .L000036a0
    li         $a3,-1
.L00002fc8:
    move       $a2,$zero
    li         $a1,1
    li         $a0,0xb470
    jal        init_sema
    daddu      $a0,$s0,$a0
    move       $a0,$s0
    jal        odsyBlankScreen
    move       $a1,$zero
    b          .L00002ffc
    ld         $s2,192($sp)
.L00002ff0:
    lw         $a5,-19352($s1)
.L00002ff4:
    beqz       $a5, .L00003024
    ld         $s2,192($sp)
.L00002ffc:
    ld         $s3,200($sp)
    ld         $s6,208($sp)
    ld         $s7,224($sp)
    ld         $s0,104($sp)
    ld         $ra,216($sp)
    ld         $s1,112($sp)
    ld         $s5,120($sp)
    ld         $s4,232($sp)
    jr         $ra
    daddiu     $sp,$sp,240
.L00003024:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s3,$v0
    li         $s4,0x8530
    beqz       $t8, .L000031a4
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00003090
    nop
.L00003068:
    jal        vsema
    move       $a0,$s4
    b          .L00002ffc
    ld         $s2,192($sp)
.L00003078:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00002cac
    move       $a0,$s5
.L00003090:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    move       $a1,$v0
    beqz       $a0, .L00003134
    lui        $s3,0x40
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a3,-30720($gp)
    dsrl32     $t1,$t1,0x0
    and        $t1,$a6,$t1
    daddu      $t2,$s3,$t2
    or         $t1,$a3,$t1
    sd         $t1,0($t2)
    sync
    lhu        $t0,-31408($s1)
    lw         $a7,-19664($s1)
    li         $t1,-33
    andi       $t0,$t0,0x1
    and        $a7,$a7,$t1
    sll        $t0,$t0,0x5
    or         $a7,$a7,$t0
    sw         $a7,-19664($s1)
    dsll32     $a7,$a7,0x0
    ld         $a4,824($s0)
    dsrl32     $a7,$a7,0x0
    and        $a6,$a6,$a7
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a6
    sd         $a3,0($a4)
    sync
.L00003134:
    ld         $t0,824($s0)
    daddu      $t0,$s3,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00003180
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30720($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00003180:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00003068
    nop
.L000031a4:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00002ffc
    ld         $s2,192($sp)
.L000031c0:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s6,$v0
    li         $s4,0x8530
    beqz       $t8, .L00003470
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00003590
    nop
.L00003204:
    jal        vsema
    move       $a0,$s4
    b          .L00002d24
    move       $a1,$s0
.L00003214:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00002d70
    li         $a1,15
.L0000322c:
    b          .L00002db4
    li         $v0,3
.L00003234:
    beqz       $a5, .L000036f4
    move       $a0,$s5
.L0000323c:
    jal        odsy_poll_dfifo_level
    li         $a1,14
    beqz       $v0, .L00003538
    sltu       $a0,$zero,$v0
.L0000324c:
    beqz       $a0, .L00003530
    nop
    b          .L00002ff4
    lw         $a5,-19352($s1)
.L0000325c:
    lw         $a1,292($s0)
    blez       $a1, .L00002dd4
    ld         $a0,72($sp)
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s0,308
    b          .L00002dd8
    move       $a0,$s0
.L00003278:
    lw         $v0,700($s0)
    lui        $a0,0xf000
    and        $a0,$v0,$a0
    lui        $a2,0x1000
    beq        $a0, $a2, .L00002de4
    nop
    bnez       $a0, .L00002de8
    move       $a0,$s0
    srl        $a1,$v0,0x1
    andi       $a1,$a1,0x3
    bnez       $a1, .L00002de4
    move       $a0,$s0
    daddiu     $a1,$s0,712
    srl        $a2,$v0,0x3
    jal        odsy_ReadCompositorNic
    andi       $a2,$a2,0x1
    beqz       $v0, .L00002de8
    move       $a0,$s0
    b          .L00002de4
    sw         $zero,700($s0)
.L000032c8:
    ld         $a3,-30600($gp)
    ld         $a4,-30608($gp)
    sd         $a4,0($s7)
    sync
    sd         $a3,0($s7)
    sync
    lw         $a5,-19352($s1)
    bnez       $a5, .L00002e50
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    sd         $a1,152($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s6,$v0
    li         $s4,0x8530
    beqz       $t8, .L00003a78
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00003a94
    nop
.L00003330:
    jal        vsema
    move       $a0,$s4
    ld         $a1,152($sp)
.L0000333c:
    b          .L00002e50
    lw         $a5,-19352($s1)
.L00003344:
    move       $a0,$s5
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    ld         $a1,184($sp)
    lui        $a0,0x3000
    ld         $a2,144($sp)
    beqz       $v0, .L00002ecc
    ori        $a0,$a0,0x1
    b          .L00002ff4
    lw         $a5,-19352($s1)
.L0000336c:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s4,0x8530
    sd         $v0,80($sp)
    beqz       $t8, .L0000370c
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L0000378c
    nop
.L000033b0:
    jal        vsema
    move       $a0,$s4
    b          .L00002d9c
    ld         $at,160($sp)
.L000033c0:
    jal        odsy_DCDResetDone
    move       $a0,$s6
    beqz       $v0, .L00003450
    li         $a2,16
    move       $a1,$zero
    move       $a0,$s6
    li         $t9,31
    jal        odsy_i2cPLLRegWrite
    sb         $t9,-19416($s1)
    move       $a0,$s6
    daddiu     $a2,$sp,0
    jal        odsy_i2cDDCRegRead
    li         $a1,5
    lhu        $ra,438($s0)
    beqz       $ra, .L000038b8
    move       $a0,$s6
.L00003400:
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lhu        $at,568($s0)
    beqz       $at, .L000038ec
    move       $a0,$s6
.L00003418:
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,48
    move       $a0,$s0
    li         $a2,1
    jal        odsy_ProbeDenali
    daddiu     $a1,$s0,704
    move       $a0,$s0
    jal        odsy_ProbeCompositor
    daddiu     $a1,$s0,700
    beqz       $v0, .L00003740
.L00003444:
    move       $a0,$s0
.L00003448:
    jal        odsy_ProbeRainier
    daddiu     $a1,$s0,708
.L00003450:
    sw         $s2,12($sp)
    b          .L00002df8
    sw         $s4,8($sp)
.L0000345c:
    daddiu     $a1,$s0,704
    jal        odsy_ProbeDenali
    move       $a2,$zero
    b          .L00002e10
    sw         $zero,24($sp)
.L00003470:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s6
    b          .L00002d24
    move       $a1,$s0
.L0000348c:
    move       $a0,$s5
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    ld         $a1,176($sp)
    lui        $a0,0x3000
    ld         $a2,136($sp)
    beqz       $v0, .L00002f3c
    ori        $a0,$a0,0x1
    b          .L00002ff4
    lw         $a5,-19352($s1)
.L000034b4:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00002e3c
    move       $a0,$s5
.L000034cc:
    sb         $zero,1($sp)
    daddiu     $a2,$sp,2
    move       $a1,$zero
    sb         $zero,2($sp)
    move       $a0,$s6
    li         $a4,1
    sh         $a4,296($s0)
    li         $a3,31
    jal        odsy_i2cDDCRegRead
    sb         $a3,-19416($s1)
    lbu        $a5,2($sp)
    andi       $a5,$a5,0xf
    li         $v0,3
    andi       $a5,$a5,0xff
    bne        $v0, $a5, .L00002db4
    sb         $a5,2($sp)
    daddiu     $a2,$sp,1
    li         $a1,7
    move       $a0,$s6
    jal        odsy_i2cDDCRegRead
    sh         $a5,298($s0)
    lbu        $a6,1($sp)
    li         $v0,3
    b          .L00002db4
    sh         $a6,300($s0)
.L00003530:
    b          .L00002e58
    lw         $a5,-19352($s1)
.L00003538:
    lwu        $t1,8($sp)
    li         $s6,-1
    ld         $t2,-30608($gp)
    dsrl32     $s6,$s6,0x0
    and        $t1,$s6,$t1
    or         $t1,$t1,$t2
    sd         $t1,0($s7)
    sync
    lwu        $t0,12($sp)
    ld         $t1,-30600($gp)
    and        $t0,$s6,$t0
    or         $t0,$t0,$t1
    sd         $t0,0($s7)
    sync
    lw         $a7,-19352($s1)
    beqz       $a7, .L00003a24
    sd         $a0,128($sp)
    move       $a0,$s0
.L00003580:
    jal        odsyLoadTimingTable
    ld         $a1,88($sp)
    b          .L0000324c
    ld         $a0,128($sp)
.L00003590:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00003630
    move       $a1,$v0
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a3,-30720($gp)
    dsrl32     $t1,$t1,0x0
    and        $t1,$a6,$t1
    daddu      $t2,$s3,$t2
    or         $t1,$a3,$t1
    sd         $t1,0($t2)
    sync
    lhu        $t0,-31408($s1)
    lw         $a7,-19664($s1)
    li         $t1,-33
    andi       $t0,$t0,0x1
    and        $a7,$a7,$t1
    sll        $t0,$t0,0x5
    or         $a7,$a7,$t0
    sw         $a7,-19664($s1)
    dsll32     $a7,$a7,0x0
    ld         $a4,824($s0)
    dsrl32     $a7,$a7,0x0
    and        $a6,$a6,$a7
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a6
    sd         $a3,0($a4)
    sync
.L00003630:
    ld         $t0,824($s0)
    daddu      $t0,$s3,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L0000367c
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30720($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L0000367c:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00003204
    nop
.L000036a0:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s5,$v0
    li         $s4,0x8530
    beqz       $t8, .L0000389c
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L0000391c
    nop
.L000036e4:
    jal        vsema
    move       $a0,$s4
    b          .L00002fc8
    li         $a3,-1
.L000036f4:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L0000323c
    move       $a0,$s5
.L0000370c:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    ld         $a1,80($sp)
    b          .L00002d9c
    ld         $at,160($sp)
.L00003728:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00002e60
    li         $s4,-1
.L00003740:
    lw         $v0,700($s0)
    lui        $a0,0xf000
    and        $a0,$v0,$a0
    lui        $a1,0x1000
    beq        $a0, $a1, .L00003444
    nop
    bnez       $a0, .L00003444
    srl        $a1,$v0,0x1
    andi       $a1,$a1,0x3
    bnez       $a1, .L00003444
    move       $a0,$s0
    daddiu     $a1,$s0,712
    srl        $a2,$v0,0x3
    jal        odsy_ReadCompositorNic
    andi       $a2,$a2,0x1
    beqz       $v0, .L00003448
    move       $a0,$s0
    b          .L00003444
    sw         $zero,700($s0)
.L0000378c:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a6,-31408($s1)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L0000382c
    move       $a1,$v0
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    ld         $t0,-30720($gp)
    dsrl32     $t9,$t9,0x0
    and        $t9,$t2,$t9
    daddu      $ra,$s3,$ra
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
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
.L0000382c:
    ld         $t8,824($s0)
    daddu      $t8,$s3,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L00003878
    li         $a5,-2
    lw         $t9,-19664($s1)
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    li         $v0,-1
    ld         $ra,824($s0)
    dsrl32     $v0,$v0,0x0
    ld         $at,-30720($gp)
    and        $t9,$t9,$v0
    daddu      $ra,$s3,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L00003878:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s1)
    and        $ra,$a5,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L000033b0
    nop
.L0000389c:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s5
    b          .L00002fc8
    li         $a3,-1
.L000038b8:
    lbu        $a2,0($sp)
    li         $a1,5
    li         $a3,-33
    move       $a0,$s6
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    move       $a0,$s6
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s0,438
    b          .L00003400
    move       $a0,$s6
.L000038ec:
    lbu        $a2,0($sp)
    li         $a1,5
    move       $a0,$s6
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    move       $a0,$s6
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s0,568
    b          .L00003418
    move       $a0,$s6
.L0000391c:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L000039b4
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a5,$t0
    sw         $t0,-19664($s1)
    dsll32     $t0,$t0,0x0
    ld         $t1,824($s0)
    ld         $a3,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t0,$s6,$t0
    daddu      $t1,$s3,$t1
    or         $t0,$a3,$t0
    sd         $t0,0($t1)
    sync
    lhu        $a7,-31408($s1)
    lw         $a6,-19664($s1)
    li         $t0,-33
    andi       $a7,$a7,0x1
    and        $a6,$a6,$t0
    sll        $a7,$a7,0x5
    or         $a6,$a6,$a7
    sw         $a6,-19664($s1)
    dsll32     $a6,$a6,0x0
    ld         $a4,824($s0)
    dsrl32     $a6,$a6,0x0
    and        $a6,$s6,$a6
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a6
    sd         $a3,0($a4)
    sync
.L000039b4:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a0, .L00003a00
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30720($gp)
    and        $t3,$s6,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00003a00:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L000036e4
    nop
.L00003a24:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s4,0x8530
    sd         $v0,168($sp)
    beqz       $t8, .L00003ba4
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00003bc4
    nop
.L00003a68:
    jal        vsema
    move       $a0,$s4
    b          .L00003580
    move       $a0,$s0
.L00003a78:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s6
    b          .L0000333c
    ld         $a1,152($sp)
.L00003a94:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00003b34
    move       $a1,$v0
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a3,-30720($gp)
    dsrl32     $t1,$t1,0x0
    and        $t1,$a6,$t1
    daddu      $t2,$s3,$t2
    or         $t1,$a3,$t1
    sd         $t1,0($t2)
    sync
    lhu        $t0,-31408($s1)
    lw         $a7,-19664($s1)
    li         $t1,-33
    andi       $t0,$t0,0x1
    and        $a7,$a7,$t1
    sll        $t0,$t0,0x5
    or         $a7,$a7,$t0
    sw         $a7,-19664($s1)
    dsll32     $a7,$a7,0x0
    ld         $a4,824($s0)
    dsrl32     $a7,$a7,0x0
    and        $a6,$a6,$a7
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a6
    sd         $a3,0($a4)
    sync
.L00003b34:
    ld         $t0,824($s0)
    daddu      $t0,$s3,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00003b80
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30720($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00003b80:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00003330
    nop
.L00003ba4:
    ld         $s6,168($sp)
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s6
    b          .L00003580
    move       $a0,$s0
.L00003bc4:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00003c5c
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a5,$t0
    sw         $t0,-19664($s1)
    dsll32     $t0,$t0,0x0
    ld         $t1,824($s0)
    ld         $a3,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t0,$s6,$t0
    daddu      $t1,$s3,$t1
    or         $t0,$a3,$t0
    sd         $t0,0($t1)
    sync
    lhu        $a7,-31408($s1)
    lw         $a6,-19664($s1)
    li         $t0,-33
    andi       $a7,$a7,0x1
    and        $a6,$a6,$t0
    sll        $a7,$a7,0x5
    or         $a6,$a6,$a7
    sw         $a6,-19664($s1)
    dsll32     $a6,$a6,0x0
    ld         $a4,824($s0)
    dsrl32     $a6,$a6,0x0
    and        $a6,$s6,$a6
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a6
    sd         $a3,0($a4)
    sync
.L00003c5c:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a0, .L00003ca8
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30720($gp)
    and        $t3,$s6,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00003ca8:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L00003a68
    nop
.L00003ccc:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,984
    b          .L00002d44
    li         $a2,1
.L00003ce4:
    jal        cmn_err
    li         $a0,1
    b          .L00002d68
    lw         $t8,-19352($s1)

glabel odsyInitHwWrRgn
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    ld         $s0,0($gp)
    dsll       $t8,$a0,0x3
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    ld         $at,880($s0)
    sd         $a0,0($sp)
    bnez       $at, .L00003de8
    sd         $ra,16($sp)
    li         $a1,0x8800
    jal        kmem_zalloc
    lui        $a0,0x2
    beqz       $v0, .L00003e04
    lui        $a4,0x1
    move       $a0,$zero
    andi       $a1,$v0,0xffff
.L00003d38:
    dsll       $ra,$a0,0x3
    dsll       $v1,$a0,0x2
    addiu      $a0,$a0,1
    daddu      $v1,$s0,$v1
    sltiu      $at,$a0,4
    daddu      $ra,$s0,$ra
    sw         $zero,29920($v1)
    bnez       $at, .L00003d38
    sd         $zero,29888($ra)
    beqz       $a1, .L00003df8
    move       $a0,$zero
.L00003d64:
    addiu      $a0,$a0,1
    dsll       $a2,$a0,0x3
    daddu      $a2,$s0,$a2
    sd         $v0,29880($a2)
    daddiu     $v0,$v0,16384
    andi       $a1,$v0,0xffff
    beqz       $a1, .L00003da4
    sltiu      $a6,$a0,4
    addiu      $a0,$a0,1
    dsll       $a5,$a0,0x3
    daddu      $a5,$s0,$a5
    sd         $v0,29880($a5)
    daddiu     $v0,$v0,16384
    andi       $a3,$v0,0xffff
    bnez       $a3, .L00003d64
    sltiu      $a6,$a0,4
.L00003da4:
    beqz       $a6, .L00003de8
    sd         $v0,880($s0)
.L00003dac:
    daddu      $a1,$v0,$a4
.L00003db0:
    dsll       $t0,$a0,0x3
    addiu      $a0,$a0,1
    sltiu      $a7,$a0,4
    daddu      $t0,$s0,$t0
    sd         $a1,29888($t0)
    daddiu     $a1,$a1,16384
    beqz       $a7, .L00003de8
    dsll       $t2,$a0,0x3
    addiu      $a0,$a0,1
    sltiu      $t1,$a0,4
    daddu      $t2,$s0,$t2
    sd         $a1,29888($t2)
    bnez       $t1, .L00003db0
    daddiu     $a1,$a1,16384
.L00003de8:
    ld         $ra,16($sp)
.L00003dec:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003df8:
    sd         $v0,880($s0)
    b          .L00003dac
    move       $a0,$zero
.L00003e04:
    ld         $a0,-30720($gp)
    ld         $a1,0($sp)
    jal        printf
    daddiu     $a0,$a0,1080
    b          .L00003dec
    ld         $ra,16($sp)

glabel odsy_teardown
    daddiu     $sp,$sp,-64
    li         $a1,25
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s1,32($sp)
    daddiu     $s1,$a0,28488
    sd         $ra,40($sp)
    jal        psema
    move       $a0,$s1
    lw         $at,816($s0)
    li         $v0,1
    addiu      $at,$at,1
    beq        $at, $v0, .L00003e70
    sw         $at,816($s0)
    jal        vsema
    move       $a0,$s1
    ld         $ra,40($sp)
.L00003e60:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00003e70:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1160
    lui        $a0,0x1
    daddu      $a0,$s0,$a0
    lw         $a3,-19328($a0)
    bnez       $a3, .L00003ed8
    sd         $a0,48($sp)
.L00003e98:
    lw         $a3,-19324($a0)
    bnez       $a3, .L00003ef4
    ld         $a1,-30720($gp)
.L00003ea4:
    jal        odsyPrintRegs
    ld         $a0,824($s0)
    ld         $a0,-30584($gp)
    sd         $zero,16($sp)
    daddiu     $a1,$sp,0
    sd         $s0,8($sp)
    li         $a2,9
    jal        gthread_scan
    sw         $a2,0($sp)
    jal        vsema
    move       $a0,$s1
    b          .L00003e60
    ld         $ra,40($sp)
.L00003ed8:
    ld         $a1,-30720($gp)
    li         $a0,5
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1192
    b          .L00003e98
    ld         $a0,48($sp)
.L00003ef4:
    li         $a0,5
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1232
    b          .L00003ea4
    nop

glabel odsyPrintRegs
    ld         $a3,-30592($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    lw         $s0,4196($a0)
    ld         $a1,-30720($gp)
    lw         $a2,4116($a0)
    li         $a0,7
    sd         $ra,8($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1272
    ld         $a3,-30592($gp)
    move       $a2,$s0
    ld         $a1,-30720($gp)
    li         $a0,7
    daddiu     $a3,$a3,1120
    jal        cmn_err
    daddiu     $a1,$a1,1288
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
